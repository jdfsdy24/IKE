#!/bin/bash
# IKE - BUILD SCRIPT

# Release path: compiled, minified
IKE_RELEASE_PATH="./release"
IKE_RELEASE_NAME="ike_min.lua"
# Debug path: compiled, unminified
IKE_DEBUG_PATH="./debug"
IKE_DEBUG_NAME="ike_debug.lua"

# The path to the source files
IKE_SRC_PATH="./src"

# The path to the localization CSVs
IKE_LOCALE_PATH="./locale"

# Edit these lines to add new source files to the build.
# Files are added in the order that they are listed.
IKE_LOADER_INCLUDE=("localize.lua" "md5.lua" "util.lua" "editor.lua" "pbem_preferences.lua" "pbem_specactions.lua" "pbem_apioverride.lua" "pbem_time.lua" "pbem_msgs.lua" "pbem_limited.lua" "pbem_checks.lua" "pbem_main.lua")
IKE_WIZARD_INCLUDE=("pbem_wizard.lua")

# Edit this line to enable new locales. 
# A corresponding CSV should be present in the locales path.
IKE_LOCALES=("English" "French" "Spanish" "Chinese (Simplified)")

# -------DO NOT EDIT BELOW THIS LINE--------
IKE_STARTTURN="xx_startturn.lua"
IKE_LOADERINIT="xx_loader.lua"
IKE_COMMENTS="xx_comments.lua"
IKE_FINALINIT="xx_finalinit.lua"
IKE_LOCALE_HEADER="xx_locale_header.lua"

if [ "$1" = "debug" ]; then
    IKE_BUILD_PATH="$IKE_DEBUG_PATH"
    IKE_FINAL_PATH="$IKE_DEBUG_PATH/$IKE_DEBUG_NAME"
else
    IKE_BUILD_PATH="$IKE_RELEASE_PATH"
    IKE_FINAL_PATH="$IKE_RELEASE_PATH/$IKE_RELEASE_NAME"
fi

mkdir tmp
if [ -d $IKE_BUILD_PATH ]; then
    if [ -f $IKE_FINAL_PATH ]; then
        rm $IKE_FINAL_PATH
    fi
else
    mkdir $IKE_BUILD_PATH
fi

# build IKE locales
cat $IKE_SRC_PATH/$IKE_LOCALE_HEADER >> tmp/header.lua
for f in "${IKE_LOCALES[@]}"; do
    python3 csv2locale.py "$IKE_LOCALE_PATH"/"$f"_locale.csv "$f"
    cat "$IKE_LOCALE_PATH"/"$f"_locale.lua >> tmp/header.lua
    printf "\n" >> tmp/header.lua
done
printf "\n}\n\n" >> tmp/header.lua # close up the locale table

# build IKE loader
for f in ${IKE_LOADER_INCLUDE[@]}; do
    cat $IKE_SRC_PATH/$f >> tmp/header.lua
    printf "\n\n" >> tmp/header.lua
done
cat tmp/header.lua > tmp/loader.lua
cat $IKE_SRC_PATH/$IKE_STARTTURN >> tmp/loader.lua
if [ "$1" = "debug" ]; then
    cat tmp/loader.lua > tmp/loader_min.lua
else
    luamin -f tmp/loader.lua > tmp/loader_min.lua
fi

# build the escape string for loading
python3 escape.py tmp/loader_min.lua tmp/loader_escaped.txt

# build IKE wizard
for f in ${IKE_WIZARD_INCLUDE[@]}; do
    cat $IKE_SRC_PATH/$f >> tmp/header.lua
    printf "\n\n" >> tmp/header.lua
done
cat $IKE_SRC_PATH/$IKE_LOADERINIT >> tmp/header.lua
cat tmp/loader_escaped.txt >> tmp/header.lua
cat $IKE_SRC_PATH/$IKE_FINALINIT >> tmp/header.lua

# combine into final compiled minified lua
if [ "$1" = "debug" ]; then
    cat tmp/header.lua > tmp/final_min.lua
else
    luamin -f tmp/header.lua > tmp/final_min.lua
fi

cat $IKE_SRC_PATH/$IKE_COMMENTS > $IKE_FINAL_PATH
printf "\n\n" >> $IKE_FINAL_PATH
cat tmp/final_min.lua >> $IKE_FINAL_PATH

echo "Success! IKE has been compiled to $IKE_FINAL_PATH."

# clear the temporary directory
rm -rf tmp


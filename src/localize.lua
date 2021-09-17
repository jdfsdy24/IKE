--[[
----------------------------------------------
IKE
localize.lua
----------------------------------------------

Localization library. Detects the language for
the current locale and returns text strings in 
that language. Falls back to English if the
language isn't yet supported.

----------------------------------------------
]]--

IKE_LOCALIZATIONS = {
    ["English"] = {
		["CHANGE_POSTURE"] = "Change posture toward which side?\n\nOptions: %1",
		["CHAT_ALREADY_SCHEDULED"] = "You've already scheduled a message to be delivered!",
		["CHAT_CANCELLED"] = "Message cancelled.",
		["CHAT_MSG_FORM"] = "Message from %1:<br/><br/>%2",
		["CHAT_SENT"] = "Message sent.",
		["CHAT_TRY_AGAIN"] = "Try again?",
		["CHECK_CHAT_DATE"] = "Your message will be delivered at\n%1.\nIs that correct?",
		["CHOOSE_PASSWORD"] = "%1, please choose a password:",
		["CONFIRM_PASSWORD"] = "Enter password again to confirm:",
		["CONFIRM_SETTINGS"] = "The settings for %1 have been changed.\n\nClick OK to start the game as %2.",
		["CONTACT_MARKER"] = "%1 at %2",
		["CONTACTS_REPORTED"] = "New contacts:",
		["DETECTED_MARKER"] = "%1 detected by %2",
		["EIGHTH"] = "EIGHTH",
		["END_OF_SCENARIO_HEADER"] = "End of Scenario",
		["END_OF_SCENARIO_MESSAGE"] = "Go to <b>File -> Save As...</b>, save this game, and send the save file to the other players via email or another transfer service.<br/><br/>",
		["END_OF_SCENARIO_SUMMARY"] = "End of Scenario (Turn %1)",
		["END_OF_SETUP_HEADER"] = "End of %1 Setup Phase",
		["END_OF_TURN_HEADER"] = "End of %1 Turn %2",
		["END_OF_TURN_MESSAGE"] = "Go to <b>File -> Save As...</b>, save this game, and send the save file to the <b>%1</b> player via email or another transfer service.<br/><br/><u>IMPORTANT:</u> Do <b>NOT</b> close this window or resume the game before saving, or you will have to replay your turn.",
		["ENTER_CHAT"] = "Enter message to %1 (max 280 characters):",
		["ENTER_PASSWORD"] = "%1, enter your password to start turn %2:",
		["FIFTH"] = "FIFTH",
		["FINAL_ORDER_HEADER"] = "%1 Turn %2<br/><br/>Order Phase %4",
		["FINAL_ORDER_MESSAGE"] = "Your turn is almost over. Give any last orders to your units as needed. When you're ready, <b>start the clock</b> to end your turn.",
		["FIRST"] = "FIRST",
		["FORMAT_INCORRECT"] = "Time formatting incorrect. Try again?",
		["FOURTH"] = "FOURTH",
		["GAME_START"] = "You are starting a PBEM game of %1.\n\nDo you want to use the recommended settings?",
		["KILL_LISTING"] = "with %1",
		["KILL_MARKER"] = "%1 killed",
		["KILLS_REPORTED"] = "Kills:",
		["LOSS_LISTING"] = "to %1",
		["LOSS_MARKER"] = "Loss of %1",
		["LOSSES_REPORTED"] = "Losses:",
		["MESSAGES_RECEIVED"] = "Messages received:",
		["MIN_INCORRECT"] = "The minute must be a number between 00 and 59. Try again?",
		["NEXT_ORDER_HEADER"] = "%1 Turn %2<br/>(%3 minutes left)<br/><br/>Order Phase %4",
		["NINTH"] = "NINTH",
		["NO"] = "No",
		["NO_EDITOR_MODE"] = "You can't open a PBEM game in Editor mode until the scenario has ended.\n\nPlay this scenario using Start New Game or Load Saved Game from the main menu.",
		["NO_POSTURE_FOUND"] = "%1 isn't a posture!",
		["NO_SIDE_FOUND"] = "%1 isn't a side!",
		["ORDER_PHASE_DIVIDER"] = "%1 of %2",
		["PASSWORDS_DIDNT_MATCH"] = "Passwords didn't match! Please enter your password again:",
		["POSTURE_IS_SET"] = "Your posture toward %1 is now %2.",
		["RECOMMENDED"] = "Recommended: %1",
		["RESUME_ORDER_MESSAGE"] = "You've already given orders for this phase. <b>Start the clock</b> to continue executing them.",
		["SCHEDULE_CHAT"] = "How long from now should the message be delivered?\nFORMAT: hh:mm:ss",
		["SEC_INCORRECT"] = "The second must be a number between 00 and 59. Try again?",
		["SECOND"] = "SECOND",
		["SEND_CHAT"] = "Send message to which side?\n\nOptions: %1",
		["SET_POSTURE"] = "Your posture toward %1 is %2. What is your new posture?nnOptions: FRIENDLY, NEUTRAL, UNFRIENDLY, HOSTILE",
		["SETUP_PHASE_INTRO"] = "This is the %1 setup phase.nnLeave the game paused until you've finished setting up your loadouts and missions.nnWhen you're done, click Play to end your turn.",
		["SEVENTH"] = "SEVENTH",
		["SHOW_REMAINING_SETUP"] = "This is the setup phase.",
		["SHOW_REMAINING_TIME"] = "Time remaining in your turn: %1:%2:%3.",
		["SIXTH"] = "SIXTH",
		["SPEC_CHANGEPOST_DESC"] = "Changes your posture toward a side. Useful if you've accidentally attacked some civilians and don't want them to be hostile anymore.",
		["SPEC_CHANGEPOST_NAME"] = "(PBEM) Change posture towards a side",
		["SPEC_SCHEDMSG_DESC"] = "Sends a message to another player, to be delivered at a time you schedule. Note that the maximum message length is 280 characters, HTML tags will be removed, and that you can only schedule one message for delivery at a time.",
		["SPEC_SCHEDMSG_NAME"] = "(PBEM) Schedule message for other player",
		["SPEC_SENDMSG_DESC"] = "Sends a message to another player, to be delivered at the start of their next turn. Note that the maximum message length is 280 characters, and that HTML tags will be removed.",
		["SPEC_SENDMSG_NAME"] = "(PBEM) Send message to other player",
		["SPEC_SHOWTIME_DESC"] = "Display the remaining time before your PBEM turn ends.",
		["SPEC_SHOWTIME_NAME"] = "(PBEM) Show remaining time in turn",
		["START_OF_TURN_HEADER"] = "%1 Turn %2<br/>(%3 minutes)",
		["START_ORDER_HEADER"] = "%1 Turn %2<br/>(%3 minutes)<br/><br/>Order Phase %4",
		["START_ORDER_MESSAGE"] = "Give orders to your units as needed. When you're ready, <b>start the clock</b> to execute them.",
		["THIRD"] = "THIRD",
		["VERSION_MISMATCH"] = "ERROR: You're using CMO build %1, but this PBEM game was created with %2. All players must use the same build.",
		["VERSION_TOO_OLD"] = "Your version of CMO (%1) is outdated. Please upgrade to build %2 or later to play this PBEM scenario.",
		["WIZARD_BACKUP"] = "Please save a backup first, then RUN this tool again.",
		["WIZARD_CLEAR_MISSIONS"] = "Clear any existing missions for the %1 side?",
		["WIZARD_FIXED_TURNLENGTH"] = "Do you want to use a FIXED turn length?\n(Click No for VARIABLE turn lengths by side.)",
		["WIZARD_GO_ORDER"] = "Should the %1 side go %2?",
		["WIZARD_INTRO_MESSAGE"] = "Welcome to IKE v%1! This tool adds PBEM/hotseat play to any Command: Modern Operations scenario.\n\nRunning this tool cannot be undone. Have you saved a backup of this scenario?",
		["WIZARD_ORDER_NUMBER"] = "HOW MANY order phases will the %1 side have per turn? (Minimum: 2)",
		["WIZARD_PLAYABLE_SIDE"] = "Should the %1 side be PLAYABLE?",
		["WIZARD_PREVENT_EDITOR"] = "Do you want to PREVENT players from opening the game in EDITOR MODE until it's over?",
		["WIZARD_SETUP_PHASE"] = "Should the game start with a SETUP PHASE?",
		["WIZARD_SUCCESS"] = "Success! Your PBEM/hotseat scenario has been initialized. Go to FILE -> SAVE AS... to save it under a new name. It will be ready to play when next loaded.nn(If you're planning to publish it to the Steam Workshop, you should do it now, before you close this scenario.)nnThanks for using IKE!",
		["WIZARD_TURN_LENGTH"] = "Enter the TURN LENGTH in minutes:",
		["WIZARD_UNLIMITED_ORDERS"] = "Should players be able to give UNLIMITED orders during a turn?\n(Click No for a LIMITED number of order phases per turn.)",
		["WIZARD_ZERO_LENGTH"] = "ERROR: The turn length must be greater than 0!",
		["WRONG_PASSWORD"] = "The password was incorrect.",
		["YES"] = "Yes",
		["FRIENDLY"] = "FRIENDLY",
		["NEUTRAL"] = "NEUTRAL",
		["UNFRIENDLY"] = "UNFRIENDLY",
		["HOSTILE"] = "HOSTILE"
	},
    ["French"] = {
		["CHANGE_POSTURE"] = "Changez votre posture vis-à-vis de quel camp ?\n\nOptions: %1",
		["CHAT_ALREADY_SCHEDULED"] = "Vous avez déjà préparé un message à envoyer!",
		["CHAT_CANCELLED"] = "Message annulé.",
		["CHAT_MSG_FORM"] = "Message de %1:<br/><br/>%2",
		["CHAT_SENT"] = "Message envoyé.",
		["CHAT_TRY_AGAIN"] = "Essayer à nouveau?",
		["CHECK_CHAT_DATE"] = "Votre message sera envoyé à\n%1.\nIs Est-ce correct?",
		["CHOOSE_PASSWORD"] = "%1, merci de choisir un mot de passe:",
		["CONFIRM_PASSWORD"] = "Confirmez votre mot de passe:",
		["CONFIRM_SETTINGS"] = "La configuration pour %1 a été changée.\n\nCliquez sur OK pour démarrer le jeu en tant que %2.",
		["CONTACT_MARKER"] = "%1 à %2",
		["CONTACTS_REPORTED"] = "Nouveaux contacts:",
		["DETECTED_MARKER"] = "%1 détecté par %2",
		["EIGHTH"] = "HUITIÈME",
		["END_OF_SCENARIO_HEADER"] = "Fin du scénario",
		["END_OF_SCENARIO_MESSAGE"] = "Faites <b>File -> Save As...</b>, sauvegardez le jeu, et envoyez le fichier à l'autre joueur par email ou par tout autre service de transfert de fichier.<br/><br/>",
		["END_OF_SCENARIO_SUMMARY"] = "Fin du scenario (Tour %1)",
		["END_OF_SETUP_HEADER"] = "Fin de la phase de setup pour %1",
		["END_OF_TURN_HEADER"] = "Fin du tour %2 pour %1",
		["END_OF_TURN_MESSAGE"] = "Allez dans <b>File -> Save As…</b>, sauvegardez ce jeu et envoyez le fichier au joueur <b>%1</b> par email ou par tout autre service de transfert de fichier.<br/><br/><u>IMPORTANT:</u> Ne <b>PAS</b> fermer cette fenêtre ni relancer le jeu avant d’avoir sauvegardé ou vous serez obligé de rejouer votre tour !",
		["ENTER_CHAT"] = "Entrez un message pour %1 (max 280 caractères):",
		["ENTER_PASSWORD"] = "%1, entrez votre mot de passe pour démarrer le tour %2:",
		["FIFTH"] = "CINQUIÈME",
		["FINAL_ORDER_HEADER"] = "%1 tour %2<br/><br/>Phase d'ordres %4",
		["FINAL_ORDER_MESSAGE"] = "Votre tour est presque terminé. Donnez les derniers ordres à vos unités. Quand vous êtes prêt <b>lancez le jeu</b> pour terminer votre tour.",
		["FIRST"] = "PREMIER",
		["FORMAT_INCORRECT"] = "Format de temps incorrect. Ré-essayer ?",
		["FOURTH"] = "QUATRIÈME",
		["GAME_START"] = "Vous démarrez un jeu en PBEM avec %1.\n\nVoulez-vous utiliser les réglages recommandés?",
		["KILL_LISTING"] = "avec %1",
		["KILL_MARKER"] = "%1 détruit",
		["KILLS_REPORTED"] = "Unités détruites:",
		["LOSS_LISTING"] = "par %1",
		["LOSS_MARKER"] = "Perte de %1",
		["LOSSES_REPORTED"] = "Pertes:",
		["MESSAGES_RECEIVED"] = "Messages reçus:",
		["MIN_INCORRECT"] = "Les minutes doivent être un nombre entre 00 et 59. Réessayer ?",
		["NEXT_ORDER_HEADER"] = "%1 tour %2<br/>(%3 minutes restantes)<br/><br/>Phase d'ordres %4",
		["NINTH"] = "NEUVIÈME",
		["NO"] = "Non",
		["NO_EDITOR_MODE"] = "Vous ne pouvez pas ouvrir une partie PBEM en mode éditeur avant la fin du scénario.\n\nJouez ce scenario avec le boutton « Start New Game » ou « Load Saved Game » dans le menu principal.",
		["NO_POSTURE_FOUND"] = "%1 n'est pas une posture!",
		["NO_SIDE_FOUND"] = "%1 n'est pas un camp!",
		["ORDER_PHASE_DIVIDER"] = "%1 sur %2",
		["PASSWORDS_DIDNT_MATCH"] = "Le mot de passe ne correspond pas! Entrez à nouveau votre mot de passe:",
		["POSTURE_IS_SET"] = "Votre posture vis-à-vis de %1 est maintenant %2.",
		["RECOMMENDED"] = "Recommandé: %1",
		["RESUME_ORDER_MESSAGE"] = "Vous avez déjà donné vos ordres pour cette phase. <b>Lancez le jeu</b> pour en continuer l'execution.",
		["SCHEDULE_CHAT"] = "Dans combien de temps le message devra-t-il être envoyé?\nFORMAT: hh:mm:ss",
		["SEC_INCORRECT"] = "Les secondes doivent être un nombre entre 00 and 59. Ré-essayer?",
		["SECOND"] = "DEUXIÈME",
		["SEND_CHAT"] = "Envoyer le message à quel camp?\n\nOptions: %1",
		["SET_POSTURE"] = "Votre posture vis-à-vis de %1 est %2. Quelle sera votre nouvelle posture?\n\nOptions: AMICAL, NEUTRE, INAMICAL, HOSTILE",
		["SETUP_PHASE_INTRO"] = "Ceci est la phase de setup de %1.\n\nLaissez le jeu en pause jusqu'à ce que vous ayez terminé de choisir votre armement (loadouts) et configuré vos missions.\n\nQuand vous aurez terminé, cliquez sur « Play » pour finir votre tour.",
		["SEVENTH"] = "SEPTIÈME",
		["SHOW_REMAINING_SETUP"] = "Ceci est la phase de setup.",
		["SHOW_REMAINING_TIME"] = "Temps restant dans votre tour: %1:%2:%3.",
		["SIXTH"] = "SIXIÈME",
		["SPEC_CHANGEPOST_DESC"] = "Changez votre posture vis-à-vis d'un camp. Ceci est utile si vous avez accidentellement attaqué des civils et ne voulez plus qu'ils soient déclarés comme hostile.",
		["SPEC_CHANGEPOST_NAME"] = "(PBEM) Changer de posture vis-à-vis d'un camp",
		["SPEC_SCHEDMSG_DESC"] = "Envoie un message à un autre joueur qui sera délivreré à une heure pré-établie. Notez que la longueur maximale du message est de 280 caractères, que les tags HTML seront supprimés, et que vous ne pouvez préparer qu'un seul message à envoyer à la fois.",
		["SPEC_SCHEDMSG_NAME"] = "(PBEM) Préparer un message pour un autre joueur",
		["SPEC_SENDMSG_DESC"] = "Envoie un message à un autre joueur. Il sera délivré au début du prochain tour. Notez que la longueur maximale du message est de 280 caractères et que les tags HTML seront supprimés.",
		["SPEC_SENDMSG_NAME"] = "(PBEM) Envoyer un message à un autre joueur",
		["SPEC_SHOWTIME_DESC"] = "Affiche le temps restant avant la fin de votre tour de PBEM.",
		["SPEC_SHOWTIME_NAME"] = "(PBEM) Affiche le temps restant dans le tour",
		["START_OF_TURN_HEADER"] = "%1 tour %2<br/>(%3 minutes)",
		["START_ORDER_HEADER"] = "%1 tour %2<br/>(%3 minutes)<br/><br/>Phase d'ordres %4",
		["START_ORDER_MESSAGE"] = "Donnez vos ordres à vos unités. Quand vous aurez terminé, <b>lancez le jeu</b> pour les exécuter.",
		["THIRD"] = "TROISIÈME",
		["VERSION_MISMATCH"] = "ERREUR: Vous utilisez CMO build %1, mais ce scénario PBEM à été créé avec %2. Tous les joueurs doivent avoir la même version",
		["VERSION_TOO_OLD"] = "Votre version de CMO (%1) est ancienne. Merci d'installer la version %2 ou une version plus récente pour jouer ce scénario en PBEM.",
		["WIZARD_BACKUP"] = "Sauvegardez une copie, puis RELANCEZ cet outil.",
		["WIZARD_CLEAR_MISSIONS"] = "Effacez toutes les missions existantes pour le camp %1 ?",
		["WIZARD_FIXED_TURNLENGTH"] = "Voulez-vous utiliser une durée de tour FIXÉE ?\n(Cliquez sur « No » pour une longueur de tours VARIABLE par camp.)",
		["WIZARD_GO_ORDER"] = "Le camp %1 doit-il jouer en %2?",
		["WIZARD_INTRO_MESSAGE"] = "Bienvenue dans IKE v%1! Cet outil ajoute le PBEM/hotseat à tout scénario de Command: Modern Operations.\n\nL'exécution de l'appli n'est PAS reversible. Avez-vous sauvegardé une copie de ce scénario?",
		["WIZARD_ORDER_NUMBER"] = "COMBIEN de phases d'ordres le camp %1 aura-t-il à chaque tour? (Minimum 2)",
		["WIZARD_PLAYABLE_SIDE"] = "Le camp %1 doit-il être JOUABLE?",
		["WIZARD_PREVENT_EDITOR"] = "Voulez-vous empêcher les joueurs d'ouvrir le jeu en MODE ÉDITEUR avant la fin de la partie?",
		["WIZARD_SETUP_PHASE"] = "Le jeu doit-il commencer par une PHASE DE SETUP?",
		["WIZARD_SUCCESS"] = "Succès ! Votre scénario PBEM/hotseat a bien été initialisé. Allez dans FILE -> SAVE AS…pour le sauvegarder sous un nouveau nom. Il sera prêt à être joué la prochaine fois que vous le chargerez.\n\n(si vous envisagez de le publier dans le Workshop de Steam, faites le maintenant, avant de refermer le scénario.)\n\nMerci d’avoir utilisé IKE !",
		["WIZARD_TURN_LENGTH"] = "Entrez la DURÉE D'UN TOUR en minutes:",
		["WIZARD_UNLIMITED_ORDERS"] = "Les joueurs doivent-ils pouvoir donner un nombre ILLIMITÉ d'ordes pendant un tour ?\n(Cliquez « No » pour un nombre limité de phases par tour.)",
		["WIZARD_ZERO_LENGTH"] = "ERREUR: La durée d'un tour doit être supérieure à 0!",
		["WRONG_PASSWORD"] = "Le mot de passe est incorrect.",
		["YES"] = "Oui",
		["FRIENDLY"] = "AMICAL",
		["NEUTRAL"] = "NEUTRE",
		["UNFRIENDLY"] = "INAMICAL",
		["HOSTILE"] = "HOSTILE"
	}
}

function Localize(msg_code)
    local language = os.setlocale("")
    local index = string.find(language, "_")
    if index > 2 then
        language = string.sub(language, 1, index-1)
    else
        language = "English"
    end
    local basis = IKE_LOCALIZATIONS[language]
    if basis == nil then
        basis = IKE_LOCALIZATIONS["English"]
    end
    local message = basis[msg_code]
    if not message then
        return "[String "..msg_code.." not found]"
    end
    return message
end

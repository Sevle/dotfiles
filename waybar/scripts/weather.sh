{"payload":{"allShortcutsEnabled":false,"fileTree":{"waybar/scripts":{"items":[{"name":"PBPbattery.sh","path":"waybar/scripts/PBPbattery.sh","contentType":"file"},{"name":"keyhint.sh","path":"waybar/scripts/keyhint.sh","contentType":"file"},{"name":"mediaplayer.py","path":"waybar/scripts/mediaplayer.py","contentType":"file"},{"name":"power-menu.sh","path":"waybar/scripts/power-menu.sh","contentType":"file"},{"name":"weather.sh","path":"waybar/scripts/weather.sh","contentType":"file"}],"totalCount":5},"waybar":{"items":[{"name":"scripts","path":"waybar/scripts","contentType":"directory"},{"name":"config","path":"waybar/config","contentType":"file"},{"name":"style.css","path":"waybar/style.css","contentType":"file"}],"totalCount":3},"":{"items":[{"name":".tmux","path":".tmux","contentType":"directory"},{"name":"Backgrounds","path":"Backgrounds","contentType":"directory"},{"name":"catppuccin-tmux","path":"catppuccin-tmux","contentType":"directory"},{"name":"cava","path":"cava","contentType":"directory"},{"name":"friendly-snippets","path":"friendly-snippets","contentType":"directory"},{"name":"hypr","path":"hypr","contentType":"directory"},{"name":"kitty","path":"kitty","contentType":"directory"},{"name":"lvim","path":"lvim","contentType":"directory"},{"name":"neofetch","path":"neofetch","contentType":"directory"},{"name":"nvim","path":"nvim","contentType":"directory"},{"name":"sway","path":"sway","contentType":"directory"},{"name":"swaylock","path":"swaylock","contentType":"directory"},{"name":"waybar","path":"waybar","contentType":"directory"},{"name":"wofi","path":"wofi","contentType":"directory"},{"name":"youtubemusic","path":"youtubemusic","contentType":"directory"},{"name":"zathura","path":"zathura","contentType":"directory"},{"name":".tmux.conf","path":".tmux.conf","contentType":"file"},{"name":"README.md","path":"README.md","contentType":"file"},{"name":"hyprland_desktop.png","path":"hyprland_desktop.png","contentType":"file"},{"name":"hyprland_music.png","path":"hyprland_music.png","contentType":"file"},{"name":"hyprland_showcase.png","path":"hyprland_showcase.png","contentType":"file"},{"name":"hyprland_vim.png","path":"hyprland_vim.png","contentType":"file"},{"name":"mad-dog-jones-nightfall.jpg","path":"mad-dog-jones-nightfall.jpg","contentType":"file"},{"name":"starship.toml","path":"starship.toml","contentType":"file"},{"name":"zshrc","path":"zshrc","contentType":"file"}],"totalCount":25}},"fileTreeProcessingTime":6.09184,"foldersToFetch":[],"reducedMotionEnabled":null,"repo":{"id":537567731,"defaultBranch":"main","name":"dotfiles","ownerLogin":"JoshM-Yoru","currentUserCanPush":false,"isFork":false,"isEmpty":false,"createdAt":"2022-09-16T18:01:23.000Z","ownerAvatar":"https://avatars.githubusercontent.com/u/33980541?v=4","public":true,"private":false,"isOrgOwned":false},"symbolsExpanded":false,"treeExpanded":true,"refInfo":{"name":"main","listCacheKey":"v0:1702760522.0","canEdit":false,"refType":"branch","currentOid":"f6a849ece81ebdec455714f28d1960278a983503"},"path":"waybar/scripts/weather.sh","currentUser":null,"blob":{"rawLines":["#!/bin/bash","","LOC=\"$1\"","# HTML encode string as %20","LOCATION=$(sed -e \"s/ /%20/g\" <<<\"$LOC\")","content=$(curl -sS \"https://thisdavej.azurewebsites.net/api/weather/current?loc=$LOCATION&deg=C\")","ICON=$(curl -s 'https://wttr.in/?format=1' | sed 's/[+0-9a-cA-Z°-]//g' )","# echo $ICON","TEMP=$(echo $content | jq -r '. | \"\\(.temperature)°\\(.degType)\"' | sed 's/\"//g')","TOOLTIP=$(echo $content | jq -r '. | \"\\(.temperature)°\\(.degType)\\n\\(.skytext)\"' | sed 's/\"//g')","CLASS=$(echo $content | jq .skytext)","echo '{\"text\": \"'$TEMP'\", \"tooltip\": \"'$ICON $TOOLTIP $LOC'\", \"class\": '$CLASS' }'"],"stylingDirectives":[[{"start":0,"end":11,"cssClass":"pl-c"},{"start":0,"end":2,"cssClass":"pl-c"}],[],[{"start":4,"end":8,"cssClass":"pl-s"},{"start":4,"end":5,"cssClass":"pl-pds"},{"start":5,"end":7,"cssClass":"pl-smi"},{"start":7,"end":8,"cssClass":"pl-pds"}],[{"start":0,"end":27,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":9,"end":40,"cssClass":"pl-s"},{"start":9,"end":11,"cssClass":"pl-pds"},{"start":18,"end":29,"cssClass":"pl-s"},{"start":18,"end":19,"cssClass":"pl-pds"},{"start":28,"end":29,"cssClass":"pl-pds"},{"start":30,"end":33,"cssClass":"pl-k"},{"start":33,"end":39,"cssClass":"pl-s"},{"start":33,"end":34,"cssClass":"pl-pds"},{"start":38,"end":39,"cssClass":"pl-pds"},{"start":39,"end":40,"cssClass":"pl-pds"}],[{"start":8,"end":97,"cssClass":"pl-s"},{"start":8,"end":10,"cssClass":"pl-pds"},{"start":19,"end":96,"cssClass":"pl-s"},{"start":19,"end":20,"cssClass":"pl-pds"},{"start":80,"end":89,"cssClass":"pl-smi"},{"start":95,"end":96,"cssClass":"pl-pds"},{"start":96,"end":97,"cssClass":"pl-pds"}],[{"start":5,"end":72,"cssClass":"pl-s"},{"start":5,"end":7,"cssClass":"pl-pds"},{"start":15,"end":42,"cssClass":"pl-s"},{"start":15,"end":16,"cssClass":"pl-pds"},{"start":41,"end":42,"cssClass":"pl-pds"},{"start":43,"end":44,"cssClass":"pl-k"},{"start":49,"end":70,"cssClass":"pl-s"},{"start":49,"end":50,"cssClass":"pl-pds"},{"start":69,"end":70,"cssClass":"pl-pds"},{"start":71,"end":72,"cssClass":"pl-pds"}],[{"start":0,"end":12,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":5,"end":80,"cssClass":"pl-s"},{"start":5,"end":7,"cssClass":"pl-pds"},{"start":12,"end":20,"cssClass":"pl-smi"},{"start":21,"end":22,"cssClass":"pl-k"},{"start":29,"end":64,"cssClass":"pl-s"},{"start":29,"end":30,"cssClass":"pl-pds"},{"start":63,"end":64,"cssClass":"pl-pds"},{"start":65,"end":66,"cssClass":"pl-k"},{"start":71,"end":79,"cssClass":"pl-s"},{"start":71,"end":72,"cssClass":"pl-pds"},{"start":78,"end":79,"cssClass":"pl-pds"},{"start":79,"end":80,"cssClass":"pl-pds"}],[{"start":8,"end":96,"cssClass":"pl-s"},{"start":8,"end":10,"cssClass":"pl-pds"},{"start":15,"end":23,"cssClass":"pl-smi"},{"start":24,"end":25,"cssClass":"pl-k"},{"start":32,"end":80,"cssClass":"pl-s"},{"start":32,"end":33,"cssClass":"pl-pds"},{"start":79,"end":80,"cssClass":"pl-pds"},{"start":81,"end":82,"cssClass":"pl-k"},{"start":87,"end":95,"cssClass":"pl-s"},{"start":87,"end":88,"cssClass":"pl-pds"},{"start":94,"end":95,"cssClass":"pl-pds"},{"start":95,"end":96,"cssClass":"pl-pds"}],[{"start":6,"end":36,"cssClass":"pl-s"},{"start":6,"end":8,"cssClass":"pl-pds"},{"start":13,"end":21,"cssClass":"pl-smi"},{"start":22,"end":23,"cssClass":"pl-k"},{"start":35,"end":36,"cssClass":"pl-pds"}],[{"start":0,"end":4,"cssClass":"pl-c1"},{"start":5,"end":17,"cssClass":"pl-s"},{"start":5,"end":6,"cssClass":"pl-pds"},{"start":16,"end":17,"cssClass":"pl-pds"},{"start":17,"end":22,"cssClass":"pl-smi"},{"start":22,"end":39,"cssClass":"pl-s"},{"start":22,"end":23,"cssClass":"pl-pds"},{"start":38,"end":39,"cssClass":"pl-pds"},{"start":39,"end":44,"cssClass":"pl-smi"},{"start":45,"end":53,"cssClass":"pl-smi"},{"start":54,"end":58,"cssClass":"pl-smi"},{"start":58,"end":72,"cssClass":"pl-s"},{"start":58,"end":59,"cssClass":"pl-pds"},{"start":71,"end":72,"cssClass":"pl-pds"},{"start":72,"end":78,"cssClass":"pl-smi"},{"start":78,"end":82,"cssClass":"pl-s"},{"start":78,"end":79,"cssClass":"pl-pds"},{"start":81,"end":82,"cssClass":"pl-pds"}],[]],"csv":null,"csvError":null,"dependabotInfo":{"showConfigurationBanner":false,"configFilePath":null,"networkDependabotPath":"/JoshM-Yoru/dotfiles/network/updates","dismissConfigurationNoticePath":"/settings/dismiss-notice/dependabot_configuration_notice","configurationNoticeDismissed":null,"repoAlertsPath":"/JoshM-Yoru/dotfiles/security/dependabot","repoSecurityAndAnalysisPath":"/JoshM-Yoru/dotfiles/settings/security_analysis","repoOwnerIsOrg":false,"currentUserCanAdminRepo":false},"displayName":"weather.sh","displayUrl":"https://github.com/JoshM-Yoru/dotfiles/blob/main/waybar/scripts/weather.sh?raw=true","headerInfo":{"blobSize":"577 Bytes","deleteInfo":{"deleteTooltip":"You must be signed in to make or propose changes"},"editInfo":{"editTooltip":"You must be signed in to make or propose changes"},"ghDesktopPath":"https://desktop.github.com","gitLfsPath":null,"onBranch":true,"shortPath":"b03cd1c","siteNavLoginPath":"/login?return_to=https%3A%2F%2Fgithub.com%2FJoshM-Yoru%2Fdotfiles%2Fblob%2Fmain%2Fwaybar%2Fscripts%2Fweather.sh","isCSV":false,"isRichtext":false,"toc":null,"lineInfo":{"truncatedLoc":"13","truncatedSloc":"11"},"mode":"executable file"},"image":false,"isCodeownersFile":null,"isPlain":false,"isValidLegacyIssueTemplate":false,"issueTemplateHelpUrl":"https://docs.github.com/articles/about-issue-and-pull-request-templates","issueTemplate":null,"discussionTemplate":null,"language":"Shell","languageID":346,"large":false,"loggedIn":false,"newDiscussionPath":"/JoshM-Yoru/dotfiles/discussions/new","newIssuePath":"/JoshM-Yoru/dotfiles/issues/new","planSupportInfo":{"repoIsFork":null,"repoOwnedByCurrentUser":null,"requestFullPath":"/JoshM-Yoru/dotfiles/blob/main/waybar/scripts/weather.sh","showFreeOrgGatedFeatureMessage":null,"showPlanSupportBanner":null,"upgradeDataAttributes":null,"upgradePath":null},"publishBannersInfo":{"dismissActionNoticePath":"/settings/dismiss-notice/publish_action_from_dockerfile","dismissStackNoticePath":"/settings/dismiss-notice/publish_stack_from_file","releasePath":"/JoshM-Yoru/dotfiles/releases/new?marketplace=true","showPublishActionBanner":false,"showPublishStackBanner":false},"rawBlobUrl":"https://github.com/JoshM-Yoru/dotfiles/raw/main/waybar/scripts/weather.sh","renderImageOrRaw":false,"richText":null,"renderedFileInfo":null,"shortPath":null,"symbolsEnabled":true,"tabSize":8,"topBannersInfo":{"overridingGlobalFundingFile":false,"globalPreferredFundingPath":null,"repoOwner":"JoshM-Yoru","repoName":"dotfiles","showInvalidCitationWarning":false,"citationHelpUrl":"https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-citation-files","showDependabotConfigurationBanner":false,"actionsOnboardingTip":null},"truncated":false,"viewable":true,"workflowRedirectUrl":null,"symbols":{"timed_out":false,"not_analyzed":false,"symbols":[]}},"copilotInfo":null,"copilotAccessAllowed":false,"csrf_tokens":{"/JoshM-Yoru/dotfiles/branches":{"post":"r5OEuTtBxE3WDNLEbj0-Gk7CRmjzUzlfI-VaMM00o_PAGwLum9-YAIRt_ztG39I-GwOpLTX74jaY83VpId6HlA"},"/repos/preferences":{"post":"XKNcRIAekAcsF2MAqvtu24cM_URrFKLPWtr6UnzVQ1U6zAF5tsGlqBCIBL2SkDIhaAr9k9O3PMfsqgjrHtDYIg"}}},"title":"dotfiles/waybar/scripts/weather.sh at main · JoshM-Yoru/dotfiles"}
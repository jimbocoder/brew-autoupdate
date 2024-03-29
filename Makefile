

LAUNCH_AGENTS_DIR := $(shell echo $$HOME)/Library/LaunchAgents
PLIST := jimbocoder.brew-update.plist
PLIST_DEST := $(LAUNCH_AGENTS_DIR)/$(PLIST)


install:
	cp -i "$(PLIST)" "$(PLIST_DEST)"
	$(MAKE) load

update:
	cp "$(PLIST)" "$(PLIST_DEST)"
	$(MAKE) load

load:
	launchctl list "$(PLIST)" && launchctl unload -w "$(PLIST_DEST)" || true
	launchctl load -w "$(PLIST_DEST)"



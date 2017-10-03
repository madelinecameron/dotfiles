LN ?= ln -sf
CWD := $(shell pwd)
CMDS := note
PREFIX ?= /usr/local

.PHONY: install
install: uninstall $(CMDS)
	install -b $(CMDS) $(PREFIX)/bin

.PHONY: uninstall
uninstall:
	$(foreach C, $(CMDS), $(RM) $(PREFIX)/bin/$(C);)

.PHONY: dev
dev:
	$(foreach C, $(CMDS), $(LN) $(CWD)/$(C) $(PREFIX)/bin/$(C);)

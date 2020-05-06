.POSIX:

REPO = ./fonts

APACHE_LICENSE = Apache-2.0
APACHE_SHLICENSE = apache
APACHE_FONTS = $(shell ./tools/getfonts $(REPO)/apache)

OFL_LICENSE = OFL-1.1
OFL_SHLICENSE = ofl
OFL_FONTS = $(shell ./tools/getfonts $(REPO)/ofl)

all: $(APACHE_FONTS) $(OFL_FONTS)

update:
	cd $(REPO) && git pull origin master
	git add fonts
	git commit -m 'Update google-fonts submodule to latest revision.'

$(APACHE_FONTS):
	mkdir -p $@
	cp metadata.skel $@/metadata.xml
	sed \
		-e "s,@PRETTYNAME@,$(shell ./tools/prettyname $(REPO)/apache/$(shell basename $@) | tr '+' ' ')," \
		-e "s,@PRETTYNAMEURL@,$(shell ./tools/prettyname $(REPO)/apache/$(shell basename $@))," \
		-e "s,@LICENSE@,$(APACHE_LICENSE)," \
		-e "s,@SHLICENSE@,$(APACHE_SHLICENSE)," \
		-e "s,@FONT@,$(shell basename $@)," \
		< ebuild.skel > $@/$(shell basename $@)-9999.ebuild

$(OFL_FONTS):
	mkdir -p $@
	cp metadata.skel $@/metadata.xml
	sed \
		-e "s,@PRETTYNAME@,$(shell ./tools/prettyname $(REPO)/ofl/$(shell basename $@) | tr '+' ' ')," \
		-e "s,@PRETTYNAMEURL@,$(shell ./tools/prettyname $(REPO)/ofl/$(shell basename $@))," \
		-e "s,@LICENSE@,$(OFL_LICENSE)," \
		-e "s,@SHLICENSE@,$(OFL_SHLICENSE)," \
		-e "s,@FONT@,$(shell basename $@)," \
		< ebuild.skel > $@/$(shell basename $@)-9999.ebuild

.PHONY: all update

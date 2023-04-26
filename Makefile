##
# mangkoran-vita
#
# @file
# @version 0.1

.PHONY: all clean publish

OUTPUTS = build/mangkoran-vita/mangkoran-vita.pdf build/mangkoran-resume/mangkoran-resume.pdf

all:
	tectonic -X build

view: all
	open $(OUTPUTS)

watch:
	tectonic -X watch -x 'build --open'

clean:
	rm -f $(OUTPUTS)

######################################################################
# Web publishing

WEBDEST = $(HOME)/Personal/websites/zzamboni.org
# Where to put the files for web page
VITADEST = $(WEBDEST)/static/files/vita
# File in which to update the date
VITAPAGE = $(WEBDEST)/content/vita.md

# publish:
# 	cp zamboni-vita.pdf zamboni-vita.html zamboni-vita.txt zamboni-resume.pdf $(VITADEST)
# 	sed -i '' 's/Last updated .*/Last updated on **'"$$(date +'%B %e, %Y')"'**/' $(VITAPAGE)
# 	cd $(WEBDEST); git add $(VITADEST) $(VITAPAGE); git commit -a -m 'Updated CV'; git push

# end

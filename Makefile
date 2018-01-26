
# This Makefile produces a printable songbook from the HTML-embedded ABC-noted
# songs in this repository. It uses Chrome in headless mode to render HTML to
# PDF and pdfjoin to merge the results. It inserts blank pages where necessary
# to ensure that each two-page tune falls across facing pages.
#
# Chrome's margin handling is finicky, so pdfjoin scaling is used to pad its
# output. The individual PDFs generated should not be considered useful.

CHROME=/opt/google/chrome/chrome --headless

PDFS= \
	Blank.pdf \
	Big-Rock-Candy-Mountain.pdf \
	Do-Re-Mi.pdf \
	Hold-the-Line.pdf \
	Little-Boxes.pdf \
	Blank.pdf \
	My-Favorite-Things.pdf \
	Old-Time-Religion.pdf \
	Blank.pdf \
	The-Alphabet-Song.pdf \
	Blank.pdf \
	The-Digwell-Carol.pdf \
	The-Elements.pdf \
	The-Flood-and-the-Storm.pdf \
	The-Great-Dust-Storm.pdf \
	Blank.pdf \
	This-Land-is-Your-Land.pdf \
	Blank.pdf \
	Twinkle-Twinkle-Little-Star.pdf \
	Blank.pdf \
	Wabash-Cannonball.pdf \
	Blank.pdf \
	What-Did-You-Learn-in-School-Today.pdf \
	Blank.pdf \
	Wont-You-Be-My-Neighbor.pdf \
	Blank.pdf \
	You-Are-My-Sunshine.pdf

%.pdf : %.html etc/abc.css
	$(CHROME) --print-to-pdf=$@ $<

book : $(PDFS)
	pdfjoin -q --scale 0.9 -o book.pdf $(PDFS)

clean :
	rm -f $(PDFS)

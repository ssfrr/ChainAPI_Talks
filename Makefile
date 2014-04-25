default: slides.html workshop_slides.html

%.html: %.md reveal.js Makefile custom.css template.html
	pandoc -trevealjs -Vtheme=sky -Vtransition=none --template=template.html --css=custom.css --standalone -o$@ $<

reveal.js:
	git clone https://github.com/hakimel/reveal.js.git
	cd reveal.js && git checkout 2.6.2

serve:
	python -mSimpleHTTPServer 8001

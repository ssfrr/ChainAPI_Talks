default: iot_workshop.html chain_tutorial.html

%.html: %.md reveal.js Makefile custom.css template.html
	pandoc -trevealjs -Vtheme=sky -Vtransition=none --template=template.html --css=custom.css --standalone -o$@ $<

reveal.js:
	git submodule init
	git submodule update

serve:
	python -mSimpleHTTPServer 8001

watch:
	while true; do make; sleep 1; done

# requires compiling native extensions with electron support
NPARAMS=--runtime=electron --target=1.7.12 --disturl=https://atom.io/download/electron

deps:
	npm install node-gyp -g
	npm install $(NPARAMS)
	(cd node_modules/deasync && rm -rf bin && node-gyp rebuild $(NPARAMS))	

package:
	#npm install vsce -g
	vsce package
	
publish:
	#npm install vsce -g
	vsce publish -p ${VSCE_TOKEN}

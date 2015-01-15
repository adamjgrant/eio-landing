build:
	@echo "Installing Jekyll"
	@gem install jekyll
	@echo "Updating Kickstart Submodule"
	@git submodule update
	@bundle
	# @echo "Installing kickstart dependencies"
	# @cd kickstart;make setup

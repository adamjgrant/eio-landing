build:
	@echo "Installing Jekyll"
	@gem install jekyll
	@echo "Updating Kickstart Submodule"
	@git submodule update --init --recursive
	@bundle

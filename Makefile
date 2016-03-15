# Site information
PUBLIC_HTML = public_html
SSH_TARGET=cloud:/home/andrew/sites/ingodata.org

# Server variables
PORT = 8001

# Targets
server:
	cd $(PUBLIC_HTML); python3 -m http.server $(PORT)

upload:
	rsync -P -crzv --exclude-from='rsync_exclude.txt' \
		--delete $(CURDIR)/ $(SSH_TARGET)

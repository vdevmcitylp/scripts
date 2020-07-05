#!/bin/sh

# Fill in the placeholders denoted by <> before running.
source_root="/media/<your-username>/<your-source-folder-root>"
destination_root="/media/<your-username>/<your-external-drive-name>/<your-destination-folder-root>"

for folder in "<Folder 1>" "<Folder 2>" "<Folder N>"
do
	source_folder=$source_root/$folder/
	destination_folder=$destination_root/$folder/
	
	# Create the folder if it doesn't exist in the External Drive
	mkdir -p "$destination_folder"

	echo Syncing $folder ...

	rsync -rtu --delete "$source_folder" "$destination_folder"
done
#! /bin/bash
rsync -aP --delete iCloud/jpeg/Frame/ nolan@$1:/home/nolan/converted_photos

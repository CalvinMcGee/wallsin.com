BUCKET=s3://wallsin.com/
DIR=public/

all: clean build sync
	@ echo "Deploy complete"

clean:
	@ rm -rf $(DIR)*
	@ echo "Cleaning public"

build:
	@ hugo
	@ echo "Generating content with Hugo"

sync_gzip: gzip
	@ aws s3 sync --exclude '*.*' --include '*.css' --content-type 'text/css' --cache-control 'max-age=604800' --content-encoding 'gzip' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --exclude '*.*' --include '*.js' --content-type 'application/javascript' --cache-control 'max-age=604800' --content-encoding 'gzip' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --exclude '*.*' --include '*.png' --include '*.jpg' --include '*.ico' --expires 'Sat, 20 Nov 2020 18:46:39 GMT' --cache-control 'max-age=604800' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --exclude '*.*' --include '*.html' --content-type 'text/html' --cache-control 'max-age=7200, must-revalidate' --content-encoding 'gzip' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --delete --size-only $(DIR) $(BUCKET)

gzip:
	@ find $(DIR) \( -iname '*.html' -o -iname '*.css' -o -iname '*.js' \) -exec gzip {} \; -exec mv {}.gz {} \;
	@ echo "Gzipping"

sync:
	@ aws s3 sync --exclude '*.*' --include '*.css' --content-type 'text/css' --cache-control 'max-age=604800' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --exclude '*.*' --include '*.js' --content-type 'application/javascript' --cache-control 'max-age=604800' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --exclude '*.*' --include '*.png' --include '*.jpg' --include '*.ico' --expires 'Sat, 20 Nov 2020 18:46:39 GMT' --cache-control 'max-age=604800' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --exclude '*.*' --include '*.html' --content-type 'text/html' --cache-control 'max-age=7200, must-revalidate' --size-only $(DIR) $(BUCKET)
	@ aws s3 sync --delete --size-only $(DIR) $(BUCKET)

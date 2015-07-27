FROM wordpress:latest

# upstream install of Capsule as a theme
RUN curl -o capsule.zip -SL http://downloads.sourceforge.net/project/wp-capsule/1.1.1/capsule-1.1.1.zip \
	&& unzip capsule.zip -d /usr/src/wordpress/wp-content/themes \
	&& rm capsule.zip \
	&& chown -R www-data:www-data /usr/src/wordpress/wp-content/themes/capsule

# upstream install of WordPress SEO
RUN curl -o wordpress-seo.tar.gz -SL https://github.com/Yoast/wordpress-seo/archive/2.3.2.tar.gz \
	&& tar -xzf wordpress-seo.tar.gz -C /usr/src/wordpress/wp-content/plugins \
	&& rm wordpress-seo.tar.gz \
	&& chown -R www-data:www-data /usr/src/wordpress/wp-content/plugins/wordpress-seo-2.3.2

# upstream install of S3-Uploads
RUN curl -o s3-uploads.tar.gz -SL https://github.com/humanmade/S3-Uploads/archive/v0.9.0.tar.gz \
	&& tar -xzf s3-uploads.tar.gz -C /usr/src/wordpress/wp-content/plugins \
	&& rm s3-uploads.tar.gz \
	&& chown -R www-data:www-data /usr/src/wordpress/wp-content/plugins/S3-Uploads-0.9.0
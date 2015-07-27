FROM wordpress:4.2.3-fpm

# upstream install of Capsule as a theme
RUN curl -o capsule.tar.gz -SL https://github.com/crowdfavorite/wp-capsule/archive/1.1.1.tar.gz \
	&& tar -xzf capsule.tar.gz -C /usr/src/wordpress/wp-content/themes \
	&& rm capsule.tar.gz \
	&& chown -R www-data:www-data /usr/src/wordpress/wp-content/themes/capsule

# upstream install of WordPress SEO
RUN curl -o wordpress-seo.tar.gz -SL https://github.com/Yoast/wordpress-seo/archive/2.3.2.tar.gz \
	&& tar -xzf wordpress-seo.tar.gz -C /usr/src/wordpress/wp-content/plugins \
	&& rm wordpress-seo.tar.gz \
	&& chown -R www-data:www-data /usr/src/wordpress/wp-content/plugins/wordpress-seo
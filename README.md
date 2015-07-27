CapsuleDock
===========

Docker container for WordPress and Crowd Favorite's Capsule.

What You Get
------------

By default, this Docker container will present an application comprised of:

- WordPress (4.2.3)
- Capsule (1.1.1)
- WordPress SEO by Yoast (2.3.2)
- S3 Uploads by Humanmade (0.9.0)

Configuration
-------------

Out of the box, you'll have access to WordPress itself and will need to enable the various plugins/theme bundled with the application itself.

**First**, make sure you have a MySQL-compatible container linked to the application container as `mysql`. This will enable the activation and use of a default `wordpress` database.

**Second**, make sure you enable the appropriate environment variables for the S3 container:

- `S3_UPLOADS_BUCKET`
- `S3_UPLOADS_KEY`
- `S3_UPLOADS_SECRET`

Now, when everything is activated, any content will be persisted in the MySQL database container and any uploaded media will be pushed off to Amazon's S3 service.
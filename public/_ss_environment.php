<?php
/* What kind of environment is this: development, test, or live (ie, production)? */
define('SS_ENVIRONMENT_TYPE', 'dev');


/* Database connection */
define('SS_DATABASE_SERVER',	 'db');
define('SS_DATABASE_USERNAME', 	'silver');
define('SS_DATABASE_PASSWORD', 	'password');

/* Configure a default username and password to access the CMS on all sites in this environment. */
define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
define('SS_DEFAULT_ADMIN_PASSWORD', 'password');
define('SS_DATABASE_CLASS', 		'MySQLDatabase');

$_FILE_TO_URL_MAPPING['/var/www/silverstripe'] = 'http://localhost:8080';
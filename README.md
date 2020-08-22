## Installation

* Git pull this branch branch 
* Run `composer install` from project directory
* Import database either from `testApi.sql` or through migration (use bellow commands)
   ```sh
   php artisan migrate
   php artisan db:seed
   ```

### Authorized users

* If `testAPi.sql` has been used, you can use following user for API access.
	* username - test@example.com
	* password - testadmin123

* Else generate a user. 
	```sh
   php artisan passport:install
   ```
## Installation

* Get this repo.
 ```sh
   git clone https://github.com/sush-dissanayake/testAPI.git
   ```
* Go to project directory
  ```sh
   cd testAPI
   ```  
* Run `composer install`


##### Setup Database

Database can be setp either from .sql file or through migrations and seeders.

* ###### Import database from sql file
    
    * Import database using `testApi.sql` in project directory root.

* ###### Use migration files
	* Create a database named `testAPI`
	* Create tables using migration files.

       ```sh
       php artisan migrate
       ```
   * Feed fake data to tables.
		```sh
       php artisan db:seed
       ```		

##### Setup Authorization

* If `testAPi.sql` has been used, you can use following user for API access.
	* username - test@example.com
	* password - testadmin123
	* client id - 2
    * cliend secret - cp3thrYh0gOJZidhcUlpMttfSs0O84BnhAFxc5PB

* Else register a user and create oauth clients. 
	* Go to http://localhost:8000/home and register a user
    * Create oauth clients by running `php artisan passport:install`

 

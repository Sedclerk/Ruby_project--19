Last login: Fri Jan 10 11:47:03 on ttys002
Rubis:) mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7
Server version: 5.6.11 MySQL Community Server (GPL)

Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database nine_development;
Query OK, 1 row affected (0.00 sec)

mysql> use nine_development;
Database changed
mysql> GRANT ALL PRIVILEGES ON nine_development.*
    -> TO 'nine'@'localhost'
    -> IDENTIFIED BY 'Sedclerk13';
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW GRANTS FOR 'nine'@'localhost';
+-------------------------------------------------------------------------------------------------------------+
| Grants for nine@localhost                                                                                   |
+-------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'nine'@'localhost' IDENTIFIED BY PASSWORD '*25602F012AABA5ADD2AB0969627DCE8438A01E05' |
| GRANT ALL PRIVILEGES ON `nine_development`.* TO 'nine'@'localhost'                                          |
+-------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye
Rubis:) mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 5.6.11 MySQL Community Server (GPL)

Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.


mysql> drop database company_development;
Query OK, 4 rows affected (0.02 sec)

mysql> create database company_development;
Query OK, 1 row affected (0.00 sec)

mysql> GRANT ALL PRIVILEGES ON company_development.*
    -> TO 'company'@'localhost'
    ->  IDENTIFIED BY 'Sedclerk13';
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW GRANTS FOR 'company'@'localhost';
+----------------------------------------------------------------------------------------------------------------+
| Grants for company@localhost                                                                                   |
+----------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'company'@'localhost' IDENTIFIED BY PASSWORD '*25602F012AABA5ADD2AB0969627DCE8438A01E05' |
| GRANT ALL PRIVILEGES ON `company_development`.* TO 'company'@'localhost'                                       |
+----------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye
Rubis:) rails generate model Info car_name:string distance:text type:text colour:string  steering:text  fuel:string seats:integer  year:integer  price$:integer 
      invoke  active_record
      create    db/migrate/20140110090218_create_infos.rb
      create    app/models/info.rb
      invoke    test_unit
      create      test/models/info_test.rb
      create      test/fixtures/infos.yml
Rubis:) rake db:migrate
rake aborted!
You have already activated rake 10.1.1, but your Gemfile requires rake 10.1.0. Prepending `bundle exec` to your command may solve this.
/Users/Sedclerk/Desktop/company/config/boot.rb:4:in `<top (required)>'
/Users/Sedclerk/Desktop/company/config/application.rb:1:in `<top (required)>'
/Users/Sedclerk/Desktop/company/Rakefile:4:in `<top (required)>'
(See full trace by running task with --trace)
Rubis:) bundle install
Using rake (10.1.0)
Using i18n (0.6.5)
Using minitest (4.7.5)
Using multi_json (1.8.2)
Using atomic (1.1.14)
Using thread_safe (0.1.3)
Using tzinfo (0.3.38)
Using activesupport (4.0.1)
Using builder (3.1.4)
Using erubis (2.7.0)
Using rack (1.5.2)
Using rack-test (0.6.2)
Using actionpack (4.0.1)
Using mime-types (1.25)
Using polyglot (0.3.3)
Using treetop (1.4.15)
Using mail (2.5.4)
Using actionmailer (4.0.1)
Using activemodel (4.0.1)
Using activerecord-deprecated_finders (1.0.3)
Using arel (4.0.1)
Using activerecord (4.0.1)
Using coffee-script-source (1.6.3)
Using execjs (2.0.2)
Using coffee-script (2.2.0)
Using thor (0.18.1)
Using railties (4.0.1)
Using coffee-rails (4.0.1)
Using hike (1.2.3)
Using jbuilder (1.5.2)
Using jquery-rails (3.0.4)
Using json (1.8.1)
Using mysql2 (0.3.13)
Using bundler (1.5.1)
Using tilt (1.4.1)
Using sprockets (2.10.0)
Using sprockets-rails (2.0.1)
Using rails (4.0.1)
Using rdoc (3.12.2)
Using sass (3.2.12)
Using sass-rails (4.0.1)
Using sdoc (0.3.20)
Using turbolinks (1.3.0)
Using uglifier (2.3.0)
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.
Rubis:) bundle update
Fetching gem metadata from https://rubygems.org/...........
Fetching additional metadata from https://rubygems.org/..
Resolving dependencies...
Using rake (10.1.1)
Using i18n (0.6.9)
Using minitest (4.7.5)
Using multi_json (1.8.4)
Using atomic (1.1.14)
Using thread_safe (0.1.3)
Using tzinfo (0.3.38)
Using activesupport (4.0.1)
Using builder (3.1.4)
Using erubis (2.7.0)
Using rack (1.5.2)
Using rack-test (0.6.2)
Using actionpack (4.0.1)
Using mime-types (1.25.1)
Using polyglot (0.3.3)
Using treetop (1.4.15)
Using mail (2.5.4)
Using actionmailer (4.0.1)
Using activemodel (4.0.1)
Using activerecord-deprecated_finders (1.0.3)
Using arel (4.0.1)
Using activerecord (4.0.1)
Using bundler (1.5.1)
Using coffee-script-source (1.6.3)
Using execjs (2.0.2)
Using coffee-script (2.2.0)
Using thor (0.18.1)
Using railties (4.0.1)
Using coffee-rails (4.0.1)
Using hike (1.2.3)
Using jbuilder (1.5.3)
Using jquery-rails (3.0.4)
Using json (1.8.1)
Using mysql2 (0.3.14)
Using tilt (1.4.1)
Using sprockets (2.10.1)
Using sprockets-rails (2.0.1)
Using rails (4.0.1)
Using rdoc (3.12.2)
Using sass (3.2.13)
Using sass-rails (4.0.1)
Using sdoc (0.3.20)
Using turbolinks (2.1.0)
Using uglifier (2.4.0)
Your bundle is updated!
Rubis:) bundle update rake
Fetching gem metadata from https://rubygems.org/...........
Fetching additional metadata from https://rubygems.org/..
Resolving dependencies...
Using rake (10.1.1)
Using i18n (0.6.9)
Using minitest (4.7.5)
Using multi_json (1.8.4)
Using atomic (1.1.14)
Using thread_safe (0.1.3)
Using tzinfo (0.3.38)
Using activesupport (4.0.1)
Using builder (3.1.4)
Using erubis (2.7.0)
Using rack (1.5.2)
Using rack-test (0.6.2)
Using actionpack (4.0.1)
Using mime-types (1.25.1)
Using polyglot (0.3.3)
Using treetop (1.4.15)
Using mail (2.5.4)
Using actionmailer (4.0.1)
Using activemodel (4.0.1)
Using activerecord-deprecated_finders (1.0.3)
Using arel (4.0.1)
Using activerecord (4.0.1)
Using bundler (1.5.1)
Using coffee-script-source (1.6.3)
Using execjs (2.0.2)
Using coffee-script (2.2.0)
Using thor (0.18.1)
Using railties (4.0.1)
Using coffee-rails (4.0.1)
Using hike (1.2.3)
Using jbuilder (1.5.3)
Using jquery-rails (3.0.4)
Using json (1.8.1)
Using mysql2 (0.3.14)
Using tilt (1.4.1)
Using sprockets (2.10.1)
Using sprockets-rails (2.0.1)
Using rails (4.0.1)
Using rdoc (3.12.2)
Using sass (3.2.13)
Using sass-rails (4.0.1)
Using sdoc (0.3.20)
Using turbolinks (2.1.0)
Using uglifier (2.4.0)
Your bundle is updated!
Rubis:) rake db:migrate
==  CreateMessages: migrating =================================================
-- create_table(:messages)
   -> 0.0192s
==  CreateMessages: migrated (0.0193s) ========================================

rake aborted!
/Users/Sedclerk/Desktop/company/db/migrate/20140110090218_create_infos.rb:12: syntax error, unexpected $undefined, expecting keyword_end

Tasks: TOP => db:migrate
(See full trace by running task with --trace)
Rubis:) rake db:migrate
==  CreateInfos: migrating ====================================================
-- create_table(:infos)
   -> 0.0470s
==  CreateInfos: migrated (0.0471s) ===========================================

Rubis:) rails console
Loading development environment (Rails 4.0.1)
irb(main):001:0> i = Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>
irb(main):002:0> i.save
   (0.3ms)  BEGIN
  SQL (0.4ms)  INSERT INTO `infos` (`created_at`, `updated_at`) VALUES ('2014-01-10 10:18:22', '2014-01-10 10:18:22')
   (0.7ms)  COMMIT
=> true
irb(main):003:0> i = Info.find(1)
  Info Load (2.5ms)  SELECT `infos`.* FROM `infos` WHERE `infos`.`id` = 1 LIMIT 1
=> #<Info id: 1, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: "2014-01-10 10:18:22", updated_at: "2014-01-10 10:18:22">
irb(main):004:0> i = Info.delete(1)
  SQL (1.4ms)  DELETE FROM `infos` WHERE `infos`.`id` = 1
=> 1
irb(main):005:0> Info.create
   (44.3ms)  BEGIN
  SQL (34.1ms)  INSERT INTO `infos` (`created_at`, `updated_at`) VALUES ('2014-01-10 17:02:47', '2014-01-10 17:02:47')
   (3.4ms)  COMMIT
=> #<Info id: 2, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: "2014-01-10 17:02:47", updated_at: "2014-01-10 17:02:47">
irb(main):006:0> i = Info.delete(2)
  SQL (11.4ms)  DELETE FROM `infos` WHERE `infos`.`id` = 2
=> 1

irb(main):012:0> i = Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>
irb(main):013:0> i = Info.create
   (0.3ms)  BEGIN
  SQL (2.6ms)  INSERT INTO `infos` (`created_at`, `updated_at`) VALUES ('2014-01-10 17:13:57', '2014-01-10 17:13:57')
   (0.3ms)  COMMIT
=> #<Info id: 3, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: "2014-01-10 17:13:57", updated_at: "2014-01-10 17:13:57">
irb(main):014:0> i = Info.find(3)
  Info Load (2.4ms)  SELECT `infos`.* FROM `infos` WHERE `infos`.`id` = 3 LIMIT 1
=> #<Info id: 3, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: "2014-01-10 17:13:57", updated_at: "2014-01-10 17:13:57">

irb(main):016:0> i=Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>
irb(main):017:0> i.car_name="NISSAN NAVARA"
=> "NISSAN NAVARA"
irb(main):018:0> i.distance
=> nil
irb(main):019:0> i.distance="190000km"
=> "190000km"
irb(main):020:0> i.type="Utility Van"
=> "Utility Van"
irb(main):021:0> i.colour="Silver"
=> "Silver"
irb(main):022:0> i.steering="Right Hand drive"
=> "Right Hand drive"
irb(main):023:0> i.fuel="Diesel"
=> "Diesel"
irb(main):024:0> i.seats="6"
=> "6"

irb(main):026:0> i.price="1000$"
=> "1000$"
irb(main):027:0> i.year="2001"
=> "2001"
irb(main):028:0> i.save
   (0.3ms)  BEGIN
  SQL (1.0ms)  INSERT INTO `infos` (`car_name`, `colour`, `created_at`, `distance`, `fuel`, `price`, `seats`, `steering`, `type`, `updated_at`, `year`) VALUES ('NISSAN NAVARA', 'Silver', '2014-01-10 17:27:39', '190000km', 'Diesel', 1000, 6, 'Right Hand drive', 'Utility Van', '2014-01-10 17:27:39', 2001)
   (0.3ms)  COMMIT
=> true
irb(main):029:0> i=Info.delete(3)
  SQL (2.7ms)  DELETE FROM `infos` WHERE `infos`.`id` = 3
=> 1
irb(main):030:0> i=Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>
irb(main):031:0> i.save
   (0.3ms)  BEGIN
  SQL (3.0ms)  INSERT INTO `infos` (`created_at`, `updated_at`) VALUES ('2014-01-10 17:52:32', '2014-01-10 17:52:32')
   (0.3ms)  COMMIT
=> true
irb(main):032:0> i=Info.delete(5)
  SQL (2.3ms)  DELETE FROM `infos` WHERE `infos`.`id` = 5
=> 1
irb(main):033:0> i=Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>
irb(main):034:0> i.car_name= "NISSAN CARAVAN (URVAN)"
=> "NISSAN CARAVAN (URVAN)"
irb(main):035:0> i.distance="190000km"
=> "190000km"
irb(main):036:0> i.type= "Utility Van"
=> "Utility Van"
irb(main):037:0> i.colour="Silver"
=> "Silver"
irb(main):038:0> i.steering="Right Hand drive"
=> "Right Hand drive"
irb(main):039:0> i.fuel="Diesel"
=> "Diesel"
irb(main):040:0> i.seats="6"
=> "6"
irb(main):041:0> i.year="2001"
=> "2001"
irb(main):042:0> i.price="1000$"
=> "1000$"
irb(main):043:0> i.save
   (0.3ms)  BEGIN
  SQL (2.5ms)  INSERT INTO `infos` (`car_name`, `colour`, `created_at`, `distance`, `fuel`, `price`, `seats`, `steering`, `type`, `updated_at`, `year`) VALUES ('NISSAN CARAVAN (URVAN)', 'Silver', '2014-01-10 18:02:01', '190000km', 'Diesel', 1000, 6, 'Right Hand drive', 'Utility Van', '2014-01-10 18:02:01', 2001)
   (0.5ms)  COMMIT
=> true
irb(main):044:0> i=Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>
irb(main):045:0> i.car_name= "NISSAN TERRANO (PATHFINDER)"
=> "NISSAN TERRANO (PATHFINDER)"
irb(main):046:0> i.distance="144000km",
irb(main):047:0* 
irb(main):048:0* ;

irb(main):050:0> i.distance="144000km"
=> "144000km"
irb(main):051:0> i.type="SUV/ 4WD"
=> "SUV/ 4WD"
irb(main):052:0> i.colour="Grey"
=> "Grey"
irb(main):053:0> i.steering="Right Hand drive"
=> "Right Hand drive"
irb(main):054:0> i.fuel="Diesel"
=> "Diesel"
irb(main):055:0> i.seats="7"
=> "7"
irb(main):056:0> i.price="1600$"
=> "1600$"
irb(main):057:0> i.year="2001"
=> "2001"
irb(main):058:0> i.save
   (0.3ms)  BEGIN
  SQL (0.6ms)  INSERT INTO `infos` (`car_name`, `colour`, `created_at`, `distance`, `fuel`, `price`, `seats`, `steering`, `type`, `updated_at`, `year`) VALUES ('NISSAN TERRANO (PATHFINDER)', 'Grey', '2014-01-10 18:08:17', '144000km', 'Diesel', 1600, 7, 'Right Hand drive', 'SUV/ 4WD', '2014-01-10 18:08:17', 2001)
   (1.7ms)  COMMIT
=> true
irb(main):059:0> i=Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>

irb(main):061:0> i.car_name="NISSAN SAFARI (PATROL)"
=> "NISSAN SAFARI (PATROL)"
irb(main):062:0> i.distance="178000km"
=> "178000km"
irb(main):063:0> i.type="SUV/ 4WD"
=> "SUV/ 4WD"
irb(main):064:0> i.colour="Wine/Red/Beige"
=> "Wine/Red/Beige"
irb(main):065:0> i.steering="Right Hand drive"
=> "Right Hand drive"
irb(main):066:0> i.fuel="Diesel"
=> "Diesel"
irb(main):067:0> i.seats="7"
=> "7"
irb(main):068:0> i.price="1700$"
=> "1700$"
irb(main):069:0> i.year="2004"
=> "2004"
irb(main):070:0> i.save
   (0.3ms)  BEGIN
  SQL (0.6ms)  INSERT INTO `infos` (`car_name`, `colour`, `created_at`, `distance`, `fuel`, `price`, `seats`, `steering`, `type`, `updated_at`, `year`) VALUES ('NISSAN SAFARI (PATROL)', 'Wine/Red/Beige', '2014-01-10 18:12:14', '178000km', 'Diesel', 1700, 7, 'Right Hand drive', 'SUV/ 4WD', '2014-01-10 18:12:14', 2004)
   (1.3ms)  COMMIT
=> true
irb(main):071:0> i=Info.new
=> #<Info id: nil, car_name: nil, distance: nil, type: nil, colour: nil, steering: nil, fuel: nil, seats: nil, year: nil, price: nil, created_at: nil, updated_at: nil>
irb(main):072:0> i.car_name="NISSAN X-TRAIL"
=> "NISSAN X-TRAIL"
irb(main):073:0> i.distance="97 000km"
=> "97 000km"
irb(main):074:0> i.type="SUV/ 4WD"
=> "SUV/ 4WD"
irb(main):075:0> i.colour="Grey"
=> "Grey"
irb(main):076:0> i.fuel="Diesel"
=> "Diesel"
irb(main):077:0> i.steering="Right Hand drive"
=> "Right Hand drive"
irb(main):078:0> i.seats="5"
=> "5"
irb(main):079:0> i.price="1150$"
=> "1150$"
irb(main):080:0> i.year="2008"
=> "2008"
irb(main):081:0> i.save
   (0.3ms)  BEGIN
  SQL (3.6ms)  INSERT INTO `infos` (`car_name`, `colour`, `created_at`, `distance`, `fuel`, `price`, `seats`, `steering`, `type`, `updated_at`, `year`) VALUES ('NISSAN X-TRAIL', 'Grey', '2014-01-10 18:15:48', '97 000km', 'Diesel', 1150, 5, 'Right Hand drive', 'SUV/ 4WD', '2014-01-10 18:15:48', 2008)
   (0.3ms)  COMMIT
=> true
irb(main):082:0> 








mysql> select * from infos;
+----+-----------------------------+----------+-------------+----------------+------------------+--------+-------+------+-------+---------------------+---------------------+
| id | car_name                    | distance | type        | colour         | steering         | fuel   | seats | year | price | created_at          | updated_at          |
+----+-----------------------------+----------+-------------+----------------+------------------+--------+-------+------+-------+---------------------+---------------------+
|  4 | NISSAN NAVARA               | 190000km | Utility Van | Silver         | Right Hand drive | Diesel |     6 | 2001 |  1000 | 2014-01-10 17:27:39 | 2014-01-10 17:27:39 |
|  6 | NISSAN CARAVAN (URVAN)      | 190000km | Utility Van | Silver         | Right Hand drive | Diesel |     6 | 2001 |  1000 | 2014-01-10 18:02:01 | 2014-01-10 18:02:01 |
|  7 | NISSAN TERRANO (PATHFINDER) | 144000km | SUV/ 4WD    | Grey           | Right Hand drive | Diesel |     7 | 2001 |  1600 | 2014-01-10 18:08:17 | 2014-01-10 18:08:17 |
|  8 | NISSAN SAFARI (PATROL)      | 178000km | SUV/ 4WD    | Wine/Red/Beige | Right Hand drive | Diesel |     7 | 2004 |  1700 | 2014-01-10 18:12:14 | 2014-01-10 18:12:14 |
|  9 | NISSAN X-TRAIL              | 97 000km | SUV/ 4WD    | Grey           | Right Hand drive | Diesel |     5 | 2008 |  1150 | 2014-01-10 18:15:48 | 2014-01-10 18:15:48 |
+----+-----------------------------+----------+-------------+----------------+------------------+--------+-------+------+-------+---------------------+---------------------+
5 rows in set (0.00 sec)
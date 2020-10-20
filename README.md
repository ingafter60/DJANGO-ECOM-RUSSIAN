# BUILDING AN ECOMMERCE 'E-SHOP' USING DJANGO V3
https://github.com/ingafter60/DJANGO-ECOM-RUSSIAN


## Video 01. - Installation and setup

	> 01.1.1. Initial commit
	> 01.2.2. Creating django project 'mysite' 
	> 01.3.3. Creating django app 'home' 
	> 01.4.4. Register home app to settings

## Video 02. - Templeter

	> 02.1.5. Added and loaded html template to home app

## Video 03. - Database model admin relation category and product image upload

	> 03.1.6. Create django app 'product' and register it to settings 
	> 03.2.7. Setting up MySQL database and createsuperuser
	> 03.3.8. Create product Category model as PARENT AND CHILDREN and register it to product admin
	> 03.4.9. Run migrations to create category table in the db 
	> 03.5.10. Setting up media files in project's settings.py and urls.py
	> 03.6.11. Add category + image, child category + image
	> 03.7.12. Setting up the display for categories and their children in admin panel
	> 03.8.13. Create Product model and migration
	> 03.9.14. Register Produc model in product admin
	> 03.10.15. Add OneToMany relationship between Category model and Product model
	> 03.11.16. Add some items to products
	> 03.12.17. Install django-ckeditor for product descrition field
	> 03.13.18. Register Product model to admin and add fake image field in products table to show image in admin panel

## Video 04. - Gihub

	> 04.1.19. Add git repo to github

## Video 05. - Product Image Gallery

	> 05.1.20. Create table Images and OneTOMany relationship between Product and Images + run migrations
	> 05.2.21. Register Images table to product app admin 
	> 05.3.22. Create a new product with some images
	> 05.4.23. In product admin, create class of ProductImageInline to make a product can have more then one image

## Video 06. - CKeditor

	> 06.1.24. Implemet Richtext Editor Ckeditor

## Video 07. - Setting About and Contact pages

	> 07.1.25. In home app, create Setting model and run migration
	> 07.2.26. Register Setting model to home admin.py and fill in the setting form in admn panel
	> 07.3.27. In navbar, create About us and Contact and create routes and display views using HttpResponse
	> 07.4.28. Load setting information from db to homepage 
	> 07.5.29. Load setting information from db to about page
	> 07.6.30. Load setting information from db to contact page
	> 07.7.31. Modified contact page without loading information from db

	> Modified README.md file

## Video 08. - Contact Us Form and Messages

	> 08.1.32. Create ContactMessage model/table and run migration
		modified:   README.md
        modified:   home/__pycache__/models.cpython-38.pyc
        new file:   home/migrations/0002_contactmessage.py
        new file:   home/migrations/__pycache__/0002_contactmessage.cpython-38.pyc
        modified:   home/models.py
        mysql> desc home_contactmessage;
		+-----------+--------------+------+-----+---------+----------------+
		| Field     | Type         | Null | Key | Default | Extra          |
		+-----------+--------------+------+-----+---------+----------------+
		| id        | int(11)      | NO   | PRI | NULL    | auto_increment |
		| name      | varchar(20)  | NO   |     | NULL    |                |
		| email     | varchar(50)  | NO   |     | NULL    |                |
		| subject   | varchar(50)  | NO   |     | NULL    |                |
		| message   | longtext     | NO   |     | NULL    |                |
		| status    | varchar(10)  | NO   |     | NULL    |                |
		| ip        | varchar(20)  | NO   |     | NULL    |                |
		| note      | varchar(100) | NO   |     | NULL    |                |
		| create_at | datetime(6)  | NO   |     | NULL    |                |
		| update_at | datetime(6)  | NO   |     | NULL    |                |
		+-----------+--------------+------+-----+---------+----------------+
































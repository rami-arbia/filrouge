Sub Create_Tables()

"CREATE TABLE customers(" & _
   "cus_id COUNTER," & _
   "cus_firstname VARCHAR(50) NOT NULL," & _
   "cus_lastname VARCHAR(50) NOT NULL," & _
   "cus_mail VARCHAR(70) NOT NULL," & _
   "cus_address VARCHAR(50) NOT NULL," & _
   "cus_phone_number INT NOT NULL," & _
   "cus_city VARCHAR(50) NOT NULL," & _
   "cus_password VARCHAR(50)," & _
   "cus_add_date DATE NOT NULL," & _
   "cus_update_date DATE NOT NULL," & _
   "PRIMARY KEY(cus_id)," & _
   "UNIQUE(cus_mail)," & _
   "UNIQUE(cus_password)" & _
");"   

"CREATE TABLE suppliers(" & _
   "sup_id COUNTER," & _
   "sup_name VARCHAR(50) NOT NULL," & _
   "sup_phone_number VARCHAR(15) NOT NULL," & _
   "sup_mail VARCHAR(50) NOT NULL," & _
   "sup_address DOUBLE NOT NULL," & _
   "PRIMARY KEY(sup_id)" & _
");"   

"CREATE TABLE categories(" & _
   "cat_id COUNTER," & _
   "cat_name VARCHAR(50) NOT NULL," & _
   "PRIMARY KEY(cat_id)" & _
");"   

"CREATE TABLE orders(" & _
   "ode_id COUNTER," & _
   "ode_payment DECIMAL(7,2) NOT NULL," & _
   "ode_delivery_date DATETIME NOT NULL," & _
   "ode_ship_date DATE NOT NULL," & _
   "cus_id INT NOT NULL," & _
   "PRIMARY KEY(ode_id)," & _
   "FOREIGN KEY(cus_id) REFERENCES customers(cus_id)" & _
");"   

"CREATE TABLE post(" & _
   "post_id COUNTER," & _
   "post_label VARCHAR(50) NOT NULL," & _
   "PRIMARY KEY(post_id)" & _
");"   

  "CREATE TABLE shop(" & _
   "shop_id COUNTER," & _
   "shop_name VARCHAR(50) NOT NULL," & _
   "PRIMARY KEY(shop_id)" & _
");"   

  "CREATE TABLE department(" & _
   "dep_id COUNTER," & _
   "dep_name VARCHAR(50) NOT NULL," & _
   "PRIMARY KEY(dep_id)" & _
");"   

"CREATE TABLE products(" & _
   "pro_id COUNTER," & _
   "pro_price DECIMAL(7,2) NOT NULL," & _
   "pro_internal_reference CHAR(6)," & _
   "pro_bar_code VARCHAR(13)," & _
   "pro_physical_stock INT NOT NULL," & _
   "pro_alert_stock INT NOT NULL," & _
   "pro_label VARCHAR(50) NOT NULL," & _
   "pro_description TEXT NOT NULL," & _
   "pro_add_dates DATE NOT NULL," & _
   "pro_update_date DATE NOT NULL," & _
   "pro_photo VARCHAR(255) NOT NULL," & _
   "pro_is_sale LOGICAL NOT NULL," & _
   "cat_id INT NOT NULL," & _
   "sup_id INT NOT NULL," & _
   "PRIMARY KEY(pro_id)," & _
   "UNIQUE(pro_internal_reference)," & _
   "UNIQUE(pro_bar_code)," & _
   "FOREIGN KEY(cat_id) REFERENCES categories(cat_id)," & _
   "FOREIGN KEY(sup_id) REFERENCES suppliers(sup_id)" & _
");"   

"CREATE TABLE employees(" & _
   "emp_id COUNTER," & _
   "emp_city VARCHAR(50) NOT NULL," & _
   "emp_firstname VARCHAR(50) NOT NULL," & _
   "emp_lastname VARCHAR(50) NOT NULL," & _
   "emp_mail VARCHAR(50) NOT NULL," & _
   "emp_address VARCHAR(50) NOT NULL," & _
   "emp_phone_number VARCHAR(15) NOT NULL," & _
   "emp_gender CHAR(1) NOT NULL," & _
   "emp_children BYTE NOT NULL," & _
   "emp_salary CURRENCY NOT NULL," & _
   "dep_id INT NOT NULL," & _
   "shop_id INT NOT NULL," & _
   "post_id INT NOT NULL," & _
   "PRIMARY KEY(emp_id)," & _
   "UNIQUE(emp_mail)," & _
   "FOREIGN KEY(dep_id) REFERENCES department(dep_id)," & _
   "FOREIGN KEY(shop_id) REFERENCES shop(shop_id)," & _
   "FOREIGN KEY(post_id) REFERENCES post(post_id)" & _
");"   

"CREATE TABLE orders_details(" & _
   "ord_id COUNTER," & _
   "ord_discount DECIMAL(5,2)," & _
   "ord_quantity INT NOT NULL," & _
   "ord_unit_price DECIMAL(7,2) NOT NULL," & _
   "ode_id INT NOT NULL," & _
   "pro_id INT NOT NULL," & _
   "PRIMARY KEY(ord_id)," & _
   "FOREIGN KEY(ode_id) REFERENCES orders(ode_id)," & _
   "FOREIGN KEY(pro_id) REFERENCES products(pro_id)" & _
");"   

End Sub
FROM php:8.1-apache

# ติดตั้ง mysqli extension
RUN docker-php-ext-install mysqli

# เปิด mod_rewrite ถ้าต้องใช้
RUN a2enmod rewrite

# คัดลอกไฟล์เว็บไปยัง Apache DocumentRoot
COPY ./www/ /var/www/html/

# กำหนดโฟลเดอร์ทำงาน
WORKDIR /var/www/html

# เปิดพอร์ต 80
EXPOSE 80

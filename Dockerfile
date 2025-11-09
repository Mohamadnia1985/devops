# استفاده از nginx به عنوان وب‌سرور
FROM nginx:alpine

# حذف فایل‌های پیش‌فرض nginx
RUN rm -rf /usr/share/nginx/html/*

# کپی فایل index.html داخل کانتینر
COPY index.html /usr/share/nginx/html/

# پورت 80 را باز می‌کنیم
EXPOSE 80

# اجرای nginx در foreground
CMD ["nginx", "-g", "daemon off;"]

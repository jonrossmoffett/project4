server {
        listen 80;
	    server_name _;
        root /public_html;

        location / {
            index index.php index.html;
        }

        location ~* \.php$ {
            fastcgi_pass    php:9000;
            fastcgi_index   index.php;
            include         fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
            fastcgi_param PATH_INFO $fastcgi_path_info;
            }
}
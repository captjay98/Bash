<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot <%= @doc_root %>

    <Directory <%= @doc_root %>>
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

file { "/etc/apache2/sites-available/000-default.conf":
    ensure => "present",
    content => template("apache/vhost.erb") 
}

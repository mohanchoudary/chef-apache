package 'httpd' do
 action :install
end
service 'httpd' do
 action [:enable, :start] 
end
template 'var/www/html/index.html' do
 source 'index.erb'
 action :create 
 variables(
  :name => 'Mohanarao Gutta'
 )
end
cookbook_file 'var/www/html/indexfromdefaultfile.html' do
source 'index.html'
end


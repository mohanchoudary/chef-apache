package 'httpd' do
 action :install
end
service 'httpd' do
 action [:enable, :start] 
end
file '/var/www/html/index.html' do
 content ' <html> <h1>Mohan</h1> 
           </html>'
end

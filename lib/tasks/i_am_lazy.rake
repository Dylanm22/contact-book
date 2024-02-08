task(:howdy)do 
pp "Hello!"
end


task(:sample_contacts => :environment)do 
if Rails.env.development?
  Contact.destroy_all
end

200.times do 
x = Contact.new
x.first_name = Faker:: Name.first_name
x.last_name = "Mouse"
x.date_of_birth = "November 18, 1928"
x.save
end
end

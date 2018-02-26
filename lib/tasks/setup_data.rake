task :setup_data => :environment do 
  10.times do 
    Instructor.create(name: Faker::Name.name,email:Faker::Internet.free_email,bio: Faker::Lorem.sentence(1))
  end

  10.times do 
    Course.create(name:Faker::Commerce.department,instructor_id: Instructor.all.sample.id,description: Faker::Lorem.paragraph)
  end

   20.times do 
      s1=Student.create(name:Faker::Name.first_name,email:Faker::Internet.free_email,major: ["CS","IS","EC","mech","EEE","Civil"].sample,dob: Faker::Date.birthday(18,30))
      arr=Course.all.pluck(:id).sample(2)
      arr.each do |courseid|
              Registration.create(student_id: s1.id,course_id: courseid)end
  end
  
   20.times do 
     Publication.create(instructor_id: Instructor.all.sample.id,title: Faker::Name.title,link:Faker::Crypto.sha1)
   end
end
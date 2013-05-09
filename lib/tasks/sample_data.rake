namespace :db do
    desc "Fill db with sampl data"
    task populate: :environment do
        User.create!(name:"Example user",
                    email: "example@rails.org",
                    password: "foobar",
                    password_confirmation: "foobar")

        99.times do |n|
            name = Faker::Name.name
            email = "Example-#{n+1}@rails.org"
            password = "password"
            User.create!(name: name,
                        email: email,
                        password: password,
                        password_confirmation: password)
        end
    end
end

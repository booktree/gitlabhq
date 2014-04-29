demo = User.create(
  email: "demo@mail.com",
  name: "Demo",
  username: 'demo',
  password: "12345678",
  password_confirmation:  "12345678",
  theme_id: Gitlab::Theme::MARS

)

demo.projects_limit = 10000
demo.admin = false
demo.save!
demo.confirm!

if demo.valid?
  puts %q[
Demo account created:

login.........demo@mail.com
password......12345678
]
end

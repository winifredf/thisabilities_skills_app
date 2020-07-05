1.times do
    User.create(name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 52), email: Faker::Internet.email)
    Skill.create(title: "Greeting", body: "I am an extremely happy person who loves to make others happy by saying hello, goodbye, welcome, enjoy your day!", user_id:1)
    Skill.create(title: "Playing Games", body: "I enjoy playing board games. I can sit with the elderly and engage with them via board games, card games, and other games.", user_id:1)
    Skill.create(title: "Outdoor Activities", body: "Outdoor activities such as jump rope, hopscotch, sack race, and more are skills that I posses. Summer camps are my strong suit.", user_id:1)
end

1.times do
    User.create(name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 52), email: Faker::Internet.email)
    Skill.create(title: "Repetition", body: "Once I learn the proper process of doing something, I am really great at repeating things verbally as well as physically.", user_id:2)
    Skill.create(title: "Organizing", body: "I can put things in order in many different ways. Some of those ways include numerical order, alphabetical order, color coding, and by date.", user_id:2)
    Skill.create(title: "Memorization", body: "I have a really great memory. I can recall names, dates, cars, famous persons, and so much more!", user_id:2)
end

1.times do
    User.create(name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 52), email: Faker::Internet.email)    
    Skill.create(title: "Dancing", body: "I love to dance and express myself through the art of dancing!", user_id:3)
    Skill.create(title: "Drawing", body: "I am really great at drawing! I can sketch buildings to scale, faces with details, characters, and more.", user_id:3)
    Skill.create(title: "Animating", body: "I enjoy animating my drawings using software I teach myself.", user_id:3)
end
    
1.times do
    User.create(name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 52), email: Faker::Internet.email) 
    Skill.create(title: "Singing", body: "I absolutely adore singing! I sing all of the time. Singing not only makes me happy, but it makes others happy as well.", user_id:4)
    Skill.create(title: "Twirling", body: "I have the ability to twirl as many times and however long I desire without getting dizzy.", user_id:4)
    Skill.create(title: "Helping", body: "I find great pleasure in helping others. I enjoy being an assistant, or helping where I am needed.", user_id:4)
end
    
1.times do
    User.create(name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 52), email: Faker::Internet.email)    
    Skill.create(title: "Typing" , body: "Typing is a skill I am really great at. I focus a lot on typing the correct letters to make words and sentences. Typing also provides much needed sensory input that keeps me grounded and able to focus on the task at hand.", user_id:5)
    Skill.create(title: "Alphabetical Order" , body: "Putting things in alphabetical order is one of my many skills and ways to organize things.", user_id:5)
    Skill.create(title: "Color Coding" , body: "I am capable of organizing things by their color. I look forward to learning additional ways of organizing.", user_id:5)
end    
    
1.times do
    User.create(name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 52), email: Faker::Internet.email)
    Skill.create(title: "Table Tennis", body: "I am really great at table tennis. I love table tennis. It's a great source of sensory input. I love to focus and keep my eyes on the ball. I love competing in table tennis tournaments!", user_id:6)
    Skill.create(title: "Electronics", body: "I can repair and build electronics such as computers, laptops, IPads, tablets, gaming systems, and more!", user_id:6)
    Skill.create(title: "Creating Clay Masterpieces", body: "I love working with my hands to create clay sculptures, vases, cups, plates, etc!", user_id:6)
end
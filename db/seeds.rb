def getID
  1_000_000 + rand(10_000_000 - 1_000_000)
end

def getNum
  ((10000.0 - 200.0) * rand() + 200).round(2)
end

def getCategory
  categories = ["Savings", "Credit", "Debt", "Income"]
  categories.sample
end

def getStatus
  status = ["active", "queued", "completed"]
  status.sample
end

def getDate
  Date.today+(10000*rand())
end

User.destroy_all
Client.destroy_all
Goal.destroy_all

stephen = User.create({ name: "Stephen Watkins", email: "stephen@meda.org", password: "mission94110", password_confirmation: "mission94110" })

users = [stephen]
10.times do
  users << User.create({name: CoolFaker::Character.name, email: Faker::Internet.email, password: 'helloworld', password_confirmation: 'helloworld'})
end

clients = []
users.each do |user|
  15.times do
    clients << Client.create({name: CoolFaker::Character.name, phone: Faker::Number.number(10), salesforce_id: getID, user: user})
  end
end
joe = Client.create({ name: "Joe Ortega", phone: "1234567890", salesforce_id: 1234567, user: stephen })
clients << joe

goals = []
clients.each do |client|
  3.times do
    goals << Goal.create({content: CoolFaker::Team.slogan, category: getCategory, num_value: getNum, client: client})
  end
end
college = Goal.create({ content: "Save $2000 for college.", category: "Savings", client: joe })

steps = []
goals.each do |goal|
  5.times do
    steps << Step.create({content: CoolFaker::Team.slogan, status: getStatus, by_when: getDate, goal: goal})
  end
end
step_one = Step.create({ content: "Open a bank account.", status: "active", by_when: Date.today, goal: college })
step_two = Step.create({ content: "Save $500 in July.", status: "queued", by_when: Date.today+(40), goal: college })

steps.each do |step|
  2.times do
    Message.create({content: CoolFaker::Team.name, date: getDate, send_attempted: false, send_successful: false, step:step, client_id: step.goal.client_id})
  end
end


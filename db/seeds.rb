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


users = []
10.times do
  users << User.create({name: CoolFaker::Character.name, email: Faker::Internet.email, password: 'helloworld', password_confirmation: 'helloworld'})
end

clients = []

users.each do |user|
  150.times do
    clients << Client.create({name: CoolFaker::Character.name, phone: Faker::Number.number(10), salesforce_id: getID, user: user})
  end
end

goals = []
clients.each do |client|
  3.times do
    goals << Goal.create({content: CoolFaker::Team.slogan, category: getCategory, num_value: getNum, client: client})
  end
end

goals.each do |goal|
  Step.create({content: CoolFaker::Team.slogan, status: getStatus, by_when: getDate, goal: goal})
end




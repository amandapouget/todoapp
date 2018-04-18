require('rails_helper')

RSpec.describe Todo, type: :model do
  let(:later) { 4.days.from_now }
  let(:todo) { create(:todo, title: 'Swim', deadline: later, completed: true) }

  it "has a title" do
    expect(todo.title).to eql 'Swim'
  end

  it "has a deadline" do
    expect(todo.deadline).to eql later
  end

  it "can be completed" do
    expect(todo.completed).to be true
  end
end

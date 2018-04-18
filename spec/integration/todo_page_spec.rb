require('rails_helper')

RSpec.describe "Todo Page", type: :feature, js: true do
  let(:later) { 4.days.from_now }
  let!(:todo) { create(:todo, title: 'Swim', deadline: later, completed: true) }

  it "shows the todo on the page" do
    visit '/'
    expect(page).to have_text todo.title
  end
end

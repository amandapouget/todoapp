require('rails_helper')

RSpec.describe "Todo Page", type: :feature, js: true do
  let(:later) { 4.days.from_now }
  let!(:todo) { create(:todo, title: 'Swim', deadline: later, completed: true) }

  it "shows the todo on the page" do
    visit '/'
    save_and_open_screenshot
    expect(page).to have_text todo.title
  end

  # it "shows the todo deadline" do
  #   visit '/'
  #   expect(page).to have_text todo.deadline
  # end
  #
  # it "shows the todo completedness" do
  #   visit '/'
  #   expect(page).to have_text todo.completed
  # end
end

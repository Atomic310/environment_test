# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'JK Rowling'
	fill_in 'Price', with: 12
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter', 'JK Rowling', 12)
	#visit edit_book_path('harry potter')
	#fill_in 'Title', with: 'the cay'
	#click_on 'Update Book'
	#visit books_path
    #expect(page).to have_content('the cay')
  end
end
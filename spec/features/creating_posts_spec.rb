require 'rails_helper.rb'

feature 'Creating posts' do 
    scenario 'can create a post' do 
        visit '/'
        click_link 'New Post'
        attach file('Image', "spec/files/images/puppy.jpg")
        fill_in 'Caption', with: 'ohhh #puppytime'
        click_button 'Create Post'
        expect(page).to have_content('#puppytime')
        expect(page).to have_css("img[src*='puppy.jpg']")
    end 
end
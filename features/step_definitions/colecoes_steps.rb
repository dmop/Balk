  Given(/^I m in my admin page on nobalk$/) do
    
     visit'https://bigboss-dmop.c9users.io/login'
    @user = User.create!(
             :name => "danilo",
             :email =>"danilo@danilo.com",
             :password => "danilo"	,	 
             
)
@user.activated = true

@user.save!

    fill_in 'username', :with => 'danilo@danilo.com'  

    fill_in 'password', :with => 'danilo'  

      click_button("Entrar")
  visit'https://bigboss-dmop.c9users.io/admin'
      #assert_current_path('https://nobalk-imlbf.c9.io/pedidos')
end

  
  When(/^I press the button collections$/) do
click_link("Coleções") 
end
  
  Then(/^I should see my collections list$/) do
    visit'https://nobalk-imlbf.c9.io/collections'
  end



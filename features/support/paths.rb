# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    p page_name
    case page_name
    when /^new\s?page$/
  #    '/petinfos'
      new_house_path
    when /^new\s?page$/
  #    '/petinfos'
      new_dealers_path  
    when /^the home\s?page$/
      '/petinfos'
    when /^the Petnanny welcome page$/
      '/'
    when /^the Login page$/
      login_path
    when /^the details page for "(.*)"$/
      '/petinfos/1'
    when /^the Edit Petinfo Listings page$/
      '/petinfos/1/edit'

    when /^the Sign Up page$/
      new_user_path
    when /^the History page$/
      petinfos_path 
    when /^the Edit Petinfo Listings page$/
      petinfos_path
    when /^the My Account page$/
      '/petinfos/myaccount'
    when /^Privacy Setting page$/
      '/privacy'
    when /^Edit Profile page$/
      '/editprofile'
      
      
    when /^the My Account page for "(.*)"$/
      user = User.find_by_name($1)
      '/users/2'

    when /^the My Account page for "(.*)"$ $/
      user = User.find_by_name($1)
      '/users/editprofile'
    when /^the (edit|details) page for "(.*)"$/
      petinfo = Petinfo.find_by_title($2)
      $1 == "details" ? house_path(petinfo) : edit_house_path(petinfo)
    when /^the Similar Petinfos page for "(.*)"$/
      petinfo = Petinfo.find_by_title($1)
      same_director_path(petinfo)
    
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
  
  #def login
  
    #fill_in('User name', with: user.name)
    #fill_in('Password', with: user.password)
    #click_button('Log in')
  #end
end

World(NavigationHelpers)
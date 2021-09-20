# TravelPhotoRepo

Winter 2022 - Shopify
Developer Intern Challenge Question

TASK: Build an image repository.

You can tackle this challenge using any technology you want. This is an open-ended task.

Please provide brief instructions on how to use your application. We are a test driven environment, so ensure your challenge includes tests. Provide brief instructions on how to use your application, so that someone could use your application and understand how it works. 

Extra Information: You can, if you wish, use frameworks, libraries and external dependencies to help you get faster to the parts you are interested in building, if this helps you; or start from scratch. When building, consider how more features could be added in the future. 

Please focus on what interests you the most. If you need inspiration, here are examples of what you can work on. IF you work on these ideas, we recommend choosing only one or two.

Ideas:
SEARCH function
from characteristics of the images
from text
from an image (search for similar images)
ADD image(s) to the repository
one / bulk / enormous amount of images
private or public (permissions)
secure uploading ad stored images
DELETE image(s)
one / bulk / selected / all images
Prevent a user deleting images from another user (access control)
secure deletion of images
SELL/BUY images
ability to manage inventory
set price
discounts
handle money

* Save your work to your GitHub and link the specific challenge to your application. 


# Description 
Influenced by my love of travel, this is an app to store and organize your travel photos. After creating a user account, you may create trips and add photos to the corresponding trip. You can view other users profiles and see any of their trips and photos that they have made public.

Users are able to signup / login. Browse through the exhibits, species and animals. They can make a donation to help the conservation of a species.

# Usage
To use this app:
1. clone
2. run 'bundle install'
3. run 'rails db:migrate' 
4. run 'rails db:seed'
5. run 'rails s'

# Stretch Goals

There are many features I would like to add to this app .
1. Ability to bulk add photos for quicker trip gallery creation (Didn't implement yet because I wanted the ability to add a category for each photo)
2. Filtering feature to search photos by category
3. A friends model and association to give users the ability to add friends and see a feed of their friends trips. 
4. Allow to save to the cloud, for example, Google or Amazon A3
5. OmniAuth for easier signup and signin
6. Styling!
7. Not a stretch goal, but next time I will implement TDD rather than adding tests at the end  

# Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/jdn7d/TravelPhotoRepo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.

# License
The app is available as open source under the terms of the MIT License. https://opensource.org/licenses/MIT

Ruby version: 2.6.1
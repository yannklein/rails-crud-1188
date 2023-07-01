# Our first fullstack webapp

## Building steps

### Data layer
1. Create rails app with `rails new appname`
2. Generate the model `rails g model Restaurant name address rating:integer`
   Add validations
3. Migrate `rails db:migrate`
4. Optional: add a category to restaurant, later on: `rails g migration AddCategoryToRestaurants category`
             Migrate `rails db:migrate`
5. Seeding with `rails db:seed`
6. Test your data with `rails c`




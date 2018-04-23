# HOMEWORK: Straight CURDin'

![image](https://media.giphy.com/media/332SpoiZo7ToI/giphy.gif)

You all already know how to CRUD. Tonight, you learn to *CURD* (takes off sunglasses).

## Completion

Please finish through __Part 8__. As always: more is cheddar; gourmet is betta.

## Part 1: Setup

- Create a rails app named straight_curdin EX:
```bash
rails new straight_curdin -G --database=postgresql
```
- Make your initial commit! (This way every commit after will include only the code that you write.)
- You'll have one table: cheeses 
- You'll have one model: Cheese
   - Refer to the [cheese object](./straight_curdin_seeds.rb) to see what columns need to be in your tables
    > Use that file to populate your seed.rb file
- Run through the rest of the neccessary steps for migrations
- Use the [cheese object](./straight_curdin_seeds.rb) to set up your seed file!
- Now in your `config/routes.rb` file, call the `resource` method to auto generate all of your cheese resource routes. You're now ready to start CURD'in.

## Part 2: The Great Hall of Cheeses

Fulfill the following specification:

- GET requests to '/' should forward to `/cheeses`, and should have a heading that says, "The Great Hall of Cheeses", followed by an unordered list of links to cheeses, i.e. `/cheeses/1`, `/cheeses/2`, `/cheeses/3`, and so on.

## Part 3: "One Cheese at a Time, Bruh!"

- GET requests to `/cheeses/1` should display the `name`, `milk_type`, `description`, and image (via `image_url`) of the cheese with the id of 1, while GET requests to `/cheeses/7` should display the information of the cheese with the id of 7.

## Part 4: Putting the C in "CURD"

Fulfill the following specification:

- GET requests to `/cheeses/new` should take the visitor to a form for creating a new cheese.
- When the user submits the form, a new cheese is created in the database, and the user is redirected to The Great Hall of Cheeses. If all has gone according to plan, the newly created cheese should will show up in the list.
- Use form helpers to generate your forms

## Part 5: Eat the Cheese, You Fool

Head back to the template for The Great Hall of Cheeses. Update it using form helpers so that each cheese has a button beside it that says "Eat This Cheese", and clicking on that button removes the appropriate cheese from the database. The user should then be redirected to The Great Hall of Cheeses. If all has gone according to plan, the cheese you chose to destroy will not show up on the list.

## Part 6: If Rocky Can Change, So Can Cheese

Head back to the cheese's "show" template, and add a link to `/cheeses/THE_ID_OF_THE_CHEESE_IN_QUESTION/edit`. Clicking this link should take you to a `form_for` editing the information for a particular cheese. The form's fields should be pre-populated with the values of the cheese. When the user submits this form, the changes to the cheese should be persisted to the database, and the user should be redirected to that cheese's "show" page. If all has gone according to plan, the changes you made to the cheese will be reflected on the cheese's show page.

## Part 7: Welcome to the Limburger Zone

We want to add a column for `stank_level` to our `cheeses` table. It should be an integer with a default value of 0. Generate and run the migration to make this happen. What happened to the original cheese data? Update your routes to reflect this change.

## Part 8: Countries of Origin

We have all of these cheeses, but haven't been keeping track of their Countries!
Write a new migration & model to store `Country` and use the Rails console to seed some countries into the database.

Given the notion that all countries have many cheeses, and that all cheeses belong to a country, write the rails migration to update the `cheeses` table to include the `country_id`. Update your cheese views to show each cheese's country of origin. If they don't have any your edit route should allow you to change their values.

## Part 9: Enforcing the Golden Roule

Visiting the `/countries` route should give me a view of the entire list of countries in the database. And visiting each individual country's page should yield a list of that country's cheeses.

## Part 10: Doublet Down

From the `/countries/cheeses/CHEESE_IN_QUESTION` route, one should be able to get the description of that particular cheese, ONLY if it actually originates from that country.

## SUPER Bonus

Fulfill the following specification:

### Cheesemonger's Choice

GET requests to `/cheesemongers_choice` should display the information of a randomly selected cheese.

### Moldin' it Down

Update the cheese's "show" page with a "Mold!" button. when the user clicks the button, it should increment the cheese's `stank_level` in the database and redirect to the cheese's show page.

### Add a Vignotte

Style the pages!

### Wait just a Minute

Add the following methods to the `Cheese` model:

- .cow? - returns true if the cheese is from cow milk, false otherwise
- .goat? - returns true if the cheese is from goat milk, false otherwise
- .stanky? - returns true if stank_level is above 4, false otherwise

## 🚀 Completion looks like:

- You have a Rails app in this repo
    - **REMEMBER**: Initialize your rails app using `rails new straight_curdin -G --database=postgresql`.
- Your rails app has all the requirements up to and including Part 8

## 🚀 Your homework submission should include:

- A pull request created on _this repo_.
- Completion, comfort, wins, losses, questions... you know the drill.

## This homework is due 🚨 11PM ON MONDAY NIGHT 🚨

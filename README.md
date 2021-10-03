#### Gesture based feature mapping on handheld devices

##### Tech Stack

1. `ruby-3.0.0`
2. `Rails 6.1.4.1`
3. `postgres`

##### How to `Run` it

Clone this repository,
1. Use one of `ruby` version managers, like `rvm` or `rbenv`
2. Create and use a new `gemset` it possible
3. Run `bundle install` once you are in the project `directory`
4. See `database_example.yml`, copy it `database.yml` can connect to your `database` with right credentials like `username` and `password`
5. Run `rails db:create` & `rails db:migrate` (check for any error on the way!)
7. Finally run, `rails s`
8. Hurray!
9. Your backend is up here,
    * API (hello world): http://localhost:3000/api/v1/hello
    * Landing: http://localhost:3000/

##### Goals & Scope

- A page/screen where users can draw patterns to launch a particular functionality of a smartphone.
- Allow users to map their preferred functionality to pattern/alphabets 
  through the app.
- Provide the backend models for the application
- Enable the `Human Computer Interaction` experiment

##### Learning Pointers

- `User behavior in the uses of drawing gestures`

##### TODO

1. Build the API backend for the pattern-trigger application and research
2. Write basic test codes

###### Notes:
* Make sure your default `3000` port is free, if not you can free it, or config app-server `puma` to run on another port.

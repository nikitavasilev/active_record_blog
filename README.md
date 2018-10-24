# Database with Rails - Active Record - Blog Project

This work was done as a project for [The Hacking Project Bootcamp](https://www.thehackingproject.org/).
The goal was to learn the basics of the Database with Rails and build an SQL database of a blog app with the main functionalities of a blog database, like posting, liking posts, comments etc.

There is the database schema of our app:
```ruby
ActiveRecord::Schema.define(version: 2018_10_24_143534) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "article_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_likes_on_article_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
``` 

## Requirements

You need at least ruby 2.5.1 (maybe under but not tested) and bundler installed on your computer.

1. First of all `git clone the repo`
2. Run `$ cd active_record_blog`
3. Run `$ bundle install`
4. Run `$ rake db:reset` which gonna clean all the cells of our database, and create brand new tables along with our `seeds.rb` file
5. To play with the database run `$ rails console`
6. To check the content of each table, run `sqlite3 db/development.sqlite3` and then run:
..* `.mode column` for better readability
..* `.headers on` to show headers cells in our tables
..* `.tables` to see the list of all tables
..* `SELECT * FROM replace_it_with_the_name_of_a_table;` this command actually shows you the table that you select (don't forget the semicolon at the end!)
..* `.width` if you want to change the width of the columns for better readability. For example, if you wand to set the width of the first column to 20px and the 2nd column to 50px, run `.width 20 50`

## Contributions

This project was build with the help of:
* [Nikita Vasilev](https://github.com/nikitavasilev)
* [Arthur Mansuy](https://github.com/tutus06)
* [Nathaniel Debache](https://github.com/Natdenice)
* [Thomas Charvet](https://github.com/TomacTh)
* [Ysaline Macé](https://github.com/Ysalien)

## Contact

Problems or questions? File an issue at [GitHub](https://github.com/nikitavasilev/active_record_blog/issues).
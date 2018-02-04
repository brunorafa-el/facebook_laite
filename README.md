# Facebook Laite

The idea of this project is create a app in rails alike Facebook to teach myself. The app will have user login, the
user can post photos with captions make comments and leave a like in another posts. Of course the user will have his
profiles with all his posts.

## Ruby and Rails versions

> Ruby 2.4.1
> Rails 5.1.4

## Gems used

- [Paperclip](https://github.com/thoughtbot/paperclip)
- [Devise](https://github.com/plataformatec/devise)
- [JQuery-rails](https://github.com/rails/jquery-rails)
- [Record_tag_helper](https://github.com/rails/record_tag_helper)
- [Gravtastic](https://github.com/chrislloyd/gravtastic)
- [Bootstrap-sass](https://github.com/twbs/bootstrap-sass)
- [RSpec](https://github.com/rspec/rspec-rails)

## Requirements

#### Paperclip - Image Processor

[ImageMagiki](http://www.imagemagick.org/script/index.php) must be installed and Paperclip must have access to it. To
ensure that it does, on your command line, run `which convert` (one of the ImageMagick utilities). This will give you
the path where that utility is installed. For example, it might return `/usr/local/bin/convert`. To learn more about
Paperclip and his dependencies click [here](https://github.com/thoughtbot/paperclip).

- If you're using Mac OS X, you can install with the following command:
```
brew install imagemagick
```
- If you're using Ubuntu (or any Debian base linux distribution) you can install with the following command:
```
sudo apt-get install imagemagick -y
```
- If you're using Windows check the documentation of [Paperclip](https://github.com/thoughtbot/paperclip) where will
show you how to setup Paperclip in your system.

## Setup Project

To run this project make sure you have ruby and rails installed in your machine. After you've cloned the repository by typing,
```
git clone https://github.com/brunorafa-el/facebook_laite.git
```
just run the following commands below inside project folder:
```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rails s
```

## Running Tests

To run all the tests just follow the command below inside the project folder.

`bundle exec rake`

## Feedback

Leave your feedback and suggestions and let me know what you're thinking about this project.

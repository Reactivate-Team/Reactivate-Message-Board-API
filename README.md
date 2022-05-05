## Message Board
If you'd like to share your ideas with like minded individuals across the world, this application was designed for just that!

Users are able to create an account, share their thoughts and ideas, get the latest updates on trends happening around the globe!

## Deployed Application

Please visit the following link to the deployed application: git hub pages link to production

Link to deployed Heroku remote server: deployed heroku link

Link to Client repository: https://github.com/Reactivate-Team/Reactivate-Message-Board-Client

## User Stories
* As an unregistered user, I would like to sign up with email and password.
* As a registered user, I would like to sign in with email and password.
* As a signed in user, I would like to change password.
* As a signed in user, I would like to sign out.
* As a signed in user, I would like to add a post to the message board.
* As a signed in user, I would like to update my post on the message board.
* As a signed in user, I would like to delete my post on the message board.
* As a signed in user, I would like to see all my posts on the message board.
* As a signed in user, I would like to view all other users' posts on the message board.
* As a signed in user, I would like to comment on other users' posts on the message board.
* As a signed in user, I would like to edit my comment on other users' posts on the message board.
* As a signed in user, I would like to delete my comment on other users' posts on the message board.

## Technologies Used

Utilized MERN Stack to build a full-stack application:
* MongoDb/Mongoose
* Express.js
* React.js/JSX
* Node.js

Other technologies used:
* Trello
* Boostrap
* Sass
* HTML/CSS
* Javascript
* Axios
* Heroku for deployment of API

## ERD

To view a first draft ERD of the app, [click here](/public/Message%20Board%20ERD%20.jpeg).

## API Routes

| HTTP Method   | URL Path     | Action           | CRUD     |
|:--------------|:-------------|:-----------------|----------|
| GET           | /posts       | index or list    | `R`ead   |
| GET           | /posts/`:id` | show or retrieve | `R`ead   |
| POST          | /posts       | create           | `C`reate |
| PATCH         | /posts/`:id` | update           | `U`pdate |
| DELETE        | /posts/`:id` | destroy          | `D`elete |


| HTTP Method   | URL Path        | Action           | CRUD     |
|:--------------|:----------------|:-----------------|----------|
| POST          | /comments       | create           | `C`reate |
| PATCH         | /comments/`:id` | update           | `U`pdate |
| DELETE        | /comments/`:id` | destroy          | `D`elete |

## Planning

* Daily sprints
* Utilize kanban board in Trello to track features and their progress
* Created new feature branches, made frequent commits to GitHub for each stage of the development process

## Improvements
* Allow users to comment on comments.
* Allow users to create categories or topics and add posts to specific category or topic message boards
* Allow users to add tags to a post
* Add additional styling
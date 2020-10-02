# Thinking through our app
​
1.) What are we building?
	A platform for helping golfers improve their game, and track their statistics
​
2.) Who are we building it for?
​
​	Golfer's of all ages
​
3.) What features does it need?
​
1. authentication/authorization
​
 	2. Users CRUD
 	3. Scores CRUD
​
## User stories
​
as a user, I want to be able to login to my account so that I can access my profile/dashboard easily
​
as a user, I want to be able to view golf courses so that I can start a round and record my statistics
​
as a user, I want to be able to record my score for each hole, so that I can keep track of improvements easily
​
## Models
​
```javascript
type User {
  id: Int
	username: String
	email: String
  firstName: String
  lastName: String
  handicap: Int
	password: String
}
```
​
```javascript
type Course {
	id: Int
  name: String
  city: String
  state: String
  address: String
  rating: Int
}
```
​
```javascript
type Hole {
	id: Int
  courseId: Int
  number: Int
  yards: Int
  par: Int
  handicap: Int
  teeCoordsId: Int
  midCoordsId: Int
  greenCoordsId: Int
}
```
​
```javascript
type Coords {
	id: Int
	lat: Float
	long: Float
	type: Tee | Midpoint | Green
}
```
​
```javascript
type Score {
	id: Int
  strokes: Int
  chips: Int
  putts: Int
  userId: Int
  holeId: Int
}
```
​
## Pages
​
1. Landing
2. Login
3. Register
4. Dashboard (profile)
5. Courses
6. Hole
7. Scorecard ?
​
## Stretch Goals
​
- Geo Shot recording
- Create courses
- Create holes
- Hypno Toad
- Unique email or username
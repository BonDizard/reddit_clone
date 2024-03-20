# Reddit Clone

**Responsive Full Stack Reddit Clone - Works on Android, iOS & Web!**

## Features

- Google/Guest Authentication
- Create, Join community
- Community Profile (Avatar, Banner, Members)
- Edit Description and Avatar of community
- Post (link only, photo, text only)
- Displaying posts from communities user is part of
- Upvote, Downvote
- Comment
- Award the Post
- Update Karma
- Add Moderators
- Moderator - remove post
- Delete post
- User Profile (Avatar, Banner)
- Theme Switch
- Cross Platform
- Responsive UI
- Latest posts (instead of home, display this to guest users)

## Installation

After cloning this repository, migrate to the `flutter-reddit-clone` folder. Then, follow the following steps:

1. Create Firebase Project
2. Enable Authentication (Google Sign In, Guest Sign In)
3. Make Firestore Rules
4. Create Android, iOS & Web Apps
5. Use FlutterFire CLI to add the Firebase Project to this app. Then run the following commands to run your app:
    - `flutter pub get`
    - `open -a simulator` (to get iOS Simulator)
    - `flutter run`
    - `flutter run -d chrome --web-renderer html` (to see the best output)

## Tech Used

- Server: Firebase Auth, Firebase Storage, Firebase Firestore
- Client: Flutter, Riverpod 2.0, Routemaster

## Feedback

If you have any feedback, please reach out to me at bharathkumar.kuro@gmail.com.

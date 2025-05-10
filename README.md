# Prework - Colorlandia

Submitted by: David Medina

Colorlandia is an app tha allows the user full control of adjusting the colors of various screen elements such as the background, text, and containers. The goal our app is to provide a completely customizable experience for our users. 

Time spent: 2 hours spent in total

## Required Features

The following **required** functionality is completed:

- [X] Users are see a screen with three labels and a button
- [X] Tapping the button changes the screen color to a random color
- [X] Tapping the background color button initiates a Color Picker component that lets the user choose the background color of the View.
- [X] Tapping the text color button initiates a Color Picker component that lets the user choose the text color of the View.
- [X] Tapping the container color button initiates a Color Picker component that lets the user choose the background color of the container where the text is embedded in.
 
## Video Walkthrough

Here is a reminder on how to embed Loom videos on GitHub. Feel free to remove this reminder once you upload your README. 

<div>
    <a href="https://www.loom.com/share/30b19d7315a244fe99c7b250186588ec">
    </a>
    <a href="https://www.loom.com/share/30b19d7315a244fe99c7b250186588ec">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/30b19d7315a244fe99c7b250186588ec-9621a225832f4b27-full-play.gif">
    </a>
  </div>

## App Brainstorming (Step 4)

Youtube
- The loading states of the components
- Watch later feature
- Ability to create video playlists

Instagram
- Finally added the ability to filter through saved videos by date
- Great control over soft-blocking/filtering out unwanted messages
- Appealing UI

Spotify
- The loading states of the components
- The presentation of the spotify wrapped
- Group jams to listen to the same music simultaneously with friends

I've begun my first app called Schedulr. It's a twist on the traditional schedule application, but now with the ability to create and send event invites to other friends. These events would then be added to your friends schedules. And on any event within your schedule, you can create a post while you're at said event or even later on. Say you're at a coffee shop studying with your friend; you can take a picture there and create a post which will show on your other friends feeds. The difference between this app and say Instagram is that user profiles are not public and only your friends can view your profile in it's entirety. 

## Notes

A major challenge I encountered was being unable to dynamically modify the background color of a UIView container created in storyboard. While I could set the initial color through Interface Builder, programmatic color changes weren't taking effect. After troubleshooting and researching for over an hour without finding a solution, I decided to implement a programmatic solution. I defined the container view within the View Controller, using the text labels as layout anchors to maintain proper positioning. This alternative implementation successfully allowed the custom background color modifications adhering to Colorlandia's core principles.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

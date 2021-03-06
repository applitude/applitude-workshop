#Oppgaver <img align="right" src="http://www.applitude.no/static/img/banner.svg" height="45"></div>

[Norwegian version](https://github.com/applitude/applitude-workshop/blob/master/Oppgaver.md)

###### Disclaimer
You would most likely have to be googeling a bit to solve many of these tasks. In fact, we encourage you to. We'll be strolling around, happy to answer any questions you may have! :)

We decided to have the set of tasks written in English, since we know some of you are international students.

### Oppgave 1a

Change the application so that it generates a new svada sentence when the application launches

Hint for iOS: change the viewDidLoad method in the ViewController class

Hint for Android: move code into new method

### Oppgave 1b

Change the text color and text size of the svada generator

Hint for iOS: Take a look at the storyboard file and do it graphically, or look up UIColor and UIFont and the properties of a label in Swift

Hint for Android: activity_main.xml

### Oppgave 1c

Replace the button with an image. We have some images you could use in our resource folder

Hint for iOS: look at the dropdown in the attributes inspector

Hint for Android: 

### Oppgave 2a 

Change the background color of the application

Hint for iOS: This can be done graphically or in code. But more fun to do in code.
Look up the properties of UIView.

Hint for Android: Change the color of the relativelayout or edit the file activity_main.xml


### Oppgave 2b

Change the app from the previous state of Oppgave 2a so that the background changes to a random color each time the button is clicked.

Hint for iOS: Take a look at the UIColor class, arrays and the arc4random function

Hint for Android: (import java.util.Random). Color.argb() can be useful.

### Oppgave 3

Choose an app icon for the application. We have some app icons generated already in our resurs folder that you can choose from. Go to the xcassets file and add an app icon. If you don't want to experiment yourself, see the solution page.

### Oppgave 4 (could be difficult for complete beginners)

Change the application so that when the user exits and enter the app again, a new svada sentence is generated

Hint for iOS: Have a variable in your AppDelegate class that refers to the ViewController instance

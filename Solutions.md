#Løsningsforslag <img align="right" src="http://www.applitude.no/static/img/banner.svg" height="45"></div>

###### Disclaimer
You would most likely have to be googeling a bit to solve many of these tasks. In fact, we encourage you to. We'll be strolling around, happy to answer any questions you may have! :)

We decided to have the set of tasks written in English, since we know some of you are international students.

### Oppgave 1a

Here we have two different solutions. We could do this graphically in XCode which would probably be the easiest solution. In the right corner you have this navigation bar with some options to play with when you have selected the label in the storyboard file

![alt tag](https://github.com/applitude/applitude-workshop/blob/solution/Annet/Oppgave1a.png)

You could also do this manually in your code. You could for instance add these lines of code to your viewDidLoad method in your viewcontroller. The first line sets the property called «font» of the label to a new text size. The second line sets the property «textColor» of the label equal to the UIColor object property «green», indicating the textColor should be green.

![alt tag](https://github.com/applitude/applitude-workshop/blob/solution/Annet/Oppgave%201a%20..png)

### Oppgave 2a

This only involves one line of code which you could add to you viewDidLoad method in the ViewController class. View has the property «backgroundColor» which we set to be the color blue. Many often wonder why we have the keyword «self» that precedes view. It's close to the same reason we have the «this» keyword in java. It's used to refer to the current instance, in this case the viewcontroller instance since we are in viewDidLoad which are situated in the ViewController class. But why do we need that here anyway, in java that would be superflous as long as we don't have any name collision. The answer is convention. You don't always need the self keyword, it would run just as fine without it in this case. It's mostly used for readability, where we could easily distinguate between properties and variables.

![alt tag](https://github.com/applitude/applitude-workshop/blob/solution/Annet/Oppgave%202a.png)

### Oppgave 2b

In this case we unfortunately ahve to use a somewhat nasty function that swift has inherited from it's Objective-C legacy. It's called arc4random_uniform. We basically have an array called colors of all our possible colors, and we select a random color from the array each time the button is clicked by using arc4random and assign it as a background color. Notice that the array is of type UIColor which is not explicitly declared in this example, but we could've done it if we wanted to. The arc4random function takes some weird types due to it's Objective-C nature, so we have to use some type casting. It generates a value between 0 and colors.count, which is the length of the array of colors which is then used as an index to access the elements in the array.

![alt tag](https://github.com/applitude/applitude-workshop/blob/solution/Annet/Oppgave%202b.png)

### Oppgave 4

In our AppDelegate file, we have many different methods for different situations related to how the os would handle things. You can read all about them in the file itself, in fact. One of the functions, called applicationWillEnterForeground is executed when the app is going from an inactive state (i.e running in the background) to an active state (i.e opening the app again). This is the function where we would have to update our view from. The problem is that we have to reference what's in our ViewController in order to update the view, that's where our core functionality is. We do that by declaring a reference like this, in the top of the AppDelegate class

![alt tag](https://github.com/applitude/applitude-workshop/blob/solution/Annet/Oppgave%204.png)

We basically declare a variable with the type ViewController. The exclamation mark is related to something called Optionals, which is an ingenious way of making our code safe. You can ask us, or read more about it online if you're interested. 

The problem now is that we have to initialize this variable with the instance of the ViewController that our application is running. We do that by heading over to our ViewController class and edit our viewDidLoad method. So, to reference our variable referenceToVC declared in AppDelegate, we have to get a reference to our AppDelegate. We initialize the variable «appDelegateRef» with these mystic properties that are basically getting a reference to our AppDelegate. The essence is that we get our UIApplication shared delegate, but we don't know in the code if that delegate is the AppDelegate class, so we have to force cast it. Delegates are a powerful and somewhat advanced concept, we'd recommend everyone to take a look at it sometime. Lastly we set our referenceToVC to be self (self is explained in an earlier example). 

![alt tag](https://github.com/applitude/applitude-workshop/blob/solution/Annet/Oppgave%204%20...png)

We also have to move the code central to updating the view into it's own function instead of having it in the method that is triggered by the button. This makes it easier for us to call it from AppDelegate. So in our ViewController we make this function. 

Finally we have to call the function from AppDelegate. We use our reference and call it as a method on the ViewController object. And that's it!
 
![alt tag](https://github.com/applitude/applitude-workshop/blob/solution/Annet/Oppgave%204%20..png)

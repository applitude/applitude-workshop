#Løsningsforslag <img align="right" src="http://www.applitude.no/static/img/banner.svg" height="45"></div>

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

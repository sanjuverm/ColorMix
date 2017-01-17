This iOS application is built using only 3 swiches and a viewBox that changes color based on whether or not the 3 switches (corresponding to RGB) is on or not.

Biggest problem that I ran into: I was not able to associate multiple UISwitches with a single IBAction. Still don't know why but the workaround was to write 

<code>
greenSwitch.addTarget(self, action: #selector(switchesAndBitches), for: .valueChanged)
</code> 

for both the red and green switches. It's the manual/programmatic workaround and written in the viewDidLoad() method

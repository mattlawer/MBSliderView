MBSliderView
========

MBSliderView is an iOS control that looks like 'Slide to unlock' slider.<br />
It's really easy to implement and fully customizable.<br />
It can be loaded from a nib file (You can use Interface Builder).
The slider thumb is drawn with CoreGraphics so you could change the color as you like.<br />
You also can set the label color :P<br />

<img width=320 src="http://img204.imageshack.us/img204/2815/capturedcran20120728204.png"/>


Usage
-----

### Use it with Interface Builder : ###

1. Add a MBSliderView variable and the delegate protocol to your controller  :
	
		@interface ViewController : UIViewController <MBSliderViewDelegate>{
			// IBOutlet is just for Interface Builder
			IBOutlet MBSliderView *slider;
		}
	
2. Create an UIView in Interface Builder and change the class to MBSliderView,<br />
	then link it to the IBOutlet you just created at step 1 and the delegate to the controller :

<img width=320 src="http://img820.imageshack.us/img820/1002/slideviewib1.png"/>&nbsp;<img width=320 src="http://img39.imageshack.us/img39/720/slideviewib2.png"/>

3. Implement the delegate method in the controller :
	
		// MBSliderViewDelegate
		- (void) sliderDidSlide:(MBSliderView *)slideView {
			// Customization example
			// Just do whatever you want
			[slideView setThumbColor:[self randomColor]];
			[slideView setLabelColor:[self randomColor]];
		}


### Use it without Interface Builder : ###

1. Add the delegate protocol to your controller :
	
		@interface ViewController : UIViewController <MBSliderViewDelegate>
	
2. Create the MBSliderView and add it to the conroller view :

		MBSliderView *slider = [[MBSliderView alloc] initWithFrame:CGRectMake(20.0, 20.0, self.view.frame.size.width-40.0, 44.0)];
		[slider setText:@"Slide to something"]; // set the label text
		//[s1 setThumbColor:[UIColor blueColor]; // set custom thumb color
		//[s1 setLabelColor:[UIColor yellowColor]]; // set custom label color
		[slider setDelegate:self]; // set the MBSliderView delegate
		[self.view addSubview:slider];
		[slider release];
    
3. Implement the delegate method in the controller :
	
		// MBSliderViewDelegate
		- (void) sliderDidSlide:(MBSliderView *)slideView {
			// Customization example
			// Just do whatever you want
			[slideView setThumbColor:[self randomColor]];
			[slideView setLabelColor:[self randomColor]];
		}
    
    
Example
-------

With some randoms colors

<img width=316 src="http://img607.imageshack.us/img607/2592/capturedcran20120728203.png"/>

    
License
-------

Copyright (c) 2012, Mathieu Bolard
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 
* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

* Neither the name of Mathieu Bolard, mattlawer nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Mathieu Bolard BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Contact
-------

mattlawer08@gmail.com<br />
http://mathieubolard.com<br />
http://twitter.com/mattlawer

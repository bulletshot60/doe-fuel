#DOE Fuel Wrapper#

##What is this?##

Currently, DOE fuel updates are provided by the EIA as an RSS feed, "facepalm here", and they don't even perform the RSS correctly.  So, in an effort to right this wrong, which the government obviously isn't going to do anytime soon, I have created a wrapper application that does all of the scraping for you and then returns the data in a web friendly format.  Current supported formats are JSON and XML, and I am not opposed to adding more.

##When does the API update?##

The application checks for updates each Tuesday @ 12:00 AM (EST).  For the rare occasion when the DOE releases updates on Tuesday, the API will update Wednesday @ 12:00 AM (EST).

##Is this application live?##

Yes.  It can be found @ http://doefuel.herokuapp.com, with the fuel price API located @ http://doefuel.herokuapp.com/prices/get.json | http://doefuel.herokuapp.com/prices/get.xml.

##Running##

To run the application, you will need ruby 2, rails 3 and postgres installed on your local machine.  Clone the repository then run

    bundle install

followed by

    rails s

##Contributing##

To contribute, fork the application into your local Github account.  Make your changes then submit a pull request.  

##License##
The MIT License (MIT)

Copyright (c) 2013 Ethan McGee

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

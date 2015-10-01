WAT Selenium tests
------------------

QVD WAT application is tested using Selenium components. In this document we will explain how to install, build and run these tests.


Server
------

Selenium server standalone has been used in server side.

Download it from here: 

    http://www.seleniumhq.org/download/

It's a .java file, so we will need to have java installed.

    apt-get install default-jre

This server need to run the browser, so we will install firefox:

    apt-get install firefox

And if we need to install it in a server, we will install a virtual buffer enviroment for X

    apt-get install xvfb
    
To launch selenium server standalone just execute:

    java -jar selenium-server-standalone.jar
    
Additionaly you can add launching line to /etc/rc.local to start selenium server any time you start your machine.
    

Building tests
--------------

To build the tests we use a firefox addon named "Selenium IDE".

Know more about it here: 

    http://www.seleniumhq.org/projects/ide/

We use PERL to build the tests but it's not available by default in Selenium IDE addon 2.9.0 (if you have later version of Selenium IDE check availability). 

If it's not available, we need to install another firefox addon: 

    Selenium IDE: Perl Formatter
    
We will need to configure our Perl Formatter (Options->Options->Formats->Perl) to set our Selenium server URL (localhost:4444 is setted by default)

When we build a test in Selenium IDE, we export it in two formats.

* Addon format: When Save a test (File->Save Test Case) in the addon of firefox, it can be opened later to be modified, runned or exported again in other format.

    We store these files at /tests/selenium/firefox-IDE 
    
* Perl format: When Export a test to Perl format (File->Export Test Case as->Perl), it export executable perl script.  
    
    We store these files at /tests/selenium/
    
    We will talk about the perl scripts dependencies in Running tests section.


Running tests in command line
-----------------------------

To run exported tests we need to have installed some packages:

* Perl (obiously)

    apt-get install perl
    
* WWW::Selenium library

    apt-get install cpanminus
    cpanm WWW::Selenium
    
After solve these dependencies and any other (if were necessary), we can execute a test like any other perl script:

    perl test.pl
    
And we will obtain an output similar to the following:

    ok 1 - open, /wat/
    ok 2
    ok 3 - type, name=admin_tenant, tenant1
    ok 4 - type, name=admin_user, username
    ok 5 - type, name=admin_password, password
    ok 6 - click, link=Log-in
    ok 7
    1..7

Or this kind of output in case of fail:

    ok 1 - open, /wat/
    ok 2
    ok 3 - type, name=admin_tenant, tenant1
    ok 4 - type, name=admin_user, username
    ok 5 - type, name=admin_password, password
    ok 6 - click, link=Log-in
    not ok 7 - timeout
    #   Failed test 'timeout'
    #   at testwrong.pl line 30.
    1..7
    # Looks like you failed 1 test of 7.

Running tests in Jenkins
------------------------

The Perl tests format is generated by the library Test::More wich supports TAP (Test Anything Protocol)

Learn more about TAP here:

    http://c2.com/cgi/wiki?PerlTap
    
So the way to integrate the tests with Jenkins is installing and using TAP plugin

    https://wiki.jenkins-ci.org/display/JENKINS/TAP+Plugin
    

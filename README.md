# grails-sample
grails 3.3.9 sample project


grails setting
---
mac os

## references

https://www.baeldung.com/grails-mvc-application

https://www.jetbrains.com/help/idea/getting-started-with-grails3.html

```
http://grails.org/download.html

This tool makes installing Grails on any Unix based platform (Mac OSX, Linux, Cygwin, Solaris, or FreeBSD) easy.

Simply open a new terminal and enter:

$ curl -s https://get.sdkman.io | bash

Follow the on-screen instructions to complete installation.

Open a new terminal or type the command:

$ source "$HOME/.sdkman/bin/sdkman-init.sh"

Then install the latest stable Grails:

$ sdk install grails

If prompted, make this your default version. After installation is complete it can be tested with:

$ grails -version

That's all there is to it!
```

how to start
---
grails -Dgrails.env=development -port=8888 run-app --stacktrace



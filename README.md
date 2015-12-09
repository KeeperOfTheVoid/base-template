# One Project to Rule Them All

This is a template project built by Matthew Lalmansingh. It has some standard configurations built in to make it easier to start writing useful code.

# Open in an IDE

If you are using IntelliJ IDEA < 13.1, skip to the instructions below.

1 Open command prompt/terminal and navigate to root folder of the project
2 Run the command 'gradlew idea' or 'gradlew eclipse', depending on your IDE
3 After you see 'BUILD SUCCESSFUL' you can open the project in your IDE

IntelliJ IDEA is the only IDE I use.  Therefore, I don't use Eclipse or any other IDE.  As such, I don't include any plugins for other IDEs.

## IntelliJ 13.1

More recent versions of IntelliJ IDEA have better support for importing Gradle projects. Simply use the `Import Project` menu option in IntelliJ and you will be good to go.

## The Gradle Wrapper

The [Gradle wrapper](gradle.org/docs/current/userguide/gradle_wrapper.html) is the recommended method for running a Gradle build. A Gradle wrapper script (`gradlew.bat/sh`) is already included in your project. See the docs for info about upgrading the Gradle version that your project uses.

You can also install [Gradle](gradle.org) on your machine for use outside of your project.

## Run Instructions in IntelliJ

You can always run the project with `gradlew bootRun` from the command line.

To run it inside IntelliJ IDEA:

1 Edit your Run Configurations
2 Add a `Groovy` (or `Gradle` if you have at least Gradle 2.1 installed) run configuration
3 Supply a name, like `Run`
4 Point the `Script path` to your project or the `build.gradle` file
5 Add `bootRun` and any other Gradle task (like `clean`) that you want to run, in `Script parameters`
6 Remove the `Make` step if a task exist
7 Run it!

You can view your new application at [localhost:8080](localhost:8080) once you execute the Run Instruction.

# Other things to know

There are a few other things to be aware of...

## Java Config

The template is written in Java Config. That means no more XML! (except in special cases like Spring Integration).

You will find these configuration classes at the root of the example package.

## Spring Boot

The template is running on Spring Boot. Many of the configurations have been delegated to Spring Boot but you can customize these by adding your beans/configurations.

## Spring profiles

Currently, there isn't a need to set up multiple profiles.  If I did, I would have identified 4 profiles pertaining to environments. You can customize this further to suit your needs (such as separating your data sources by platform).

# Maintainers

Matthew Lalmansingh is the primary maintainer for this project. Please contact him if you have any feedback or questions.  You probably wouldn't because this will be on a private repo.

## Technologies

- Spring (http://spring.io)
  - Spring Boot
  - Spring Web
  - Spring Security
  - Spring Data
- AngularJs 1.2.27 (http://angularjs.org)
  - UI-Router 0.2.13 (https://angular-ui.github.io/ui-router)
  - UI-Bootstrap 0.12.0 (https://angular-ui.github.io/bootstrap)
  - ng-elif 0.1.0 (https://github.com/zachsnow/ng-elif)
- Bootstrap 3.3.1 (http://getbootstrap.com)
- jQuery 1.11.1 (https://jquery.com)
  - jQuery Base64 (http://github.com/carlo/jquery-base64)
- UnderscoreJs 1.7.0 (http://underscorejs.org)
- HTML5 Shiv 3.7.2 (https://github.com/aFarkas/html5shiv)
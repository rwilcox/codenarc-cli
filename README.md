This is a (third party!) complete CLI wrapper for [CodeNarc](https://codenarc.github.io/CodeNarc/)

Why
=======================================

The CodeNarc project doesn't provide a runnable jar for its work, and recommends people using it via the command line manually point their classpath to Groovy, slf4j etc.

Instead, they recommend using [plugins for Gradle or Maven](https://codenarc.github.io/CodeNarc/codenarc-other-tools-frameworks.html) to check for violations during the build process.

Except the [codenarc maven project is archived](https://github.com/gleclaire/codenarc-maven-plugin), so as a Maven user that leaves my build more precarious than I'd like. (I'm also one of those people that prefers to _not_ shove the kitchen-sink into Maven).

There's also [npm-groovy-lint](https://www.npmjs.com/package/npm-groovy-lint) which uses CodeNarc under the covers. Except this requires Node 12, which we haven't upgraded to at work. (And, Windows, so nvm or Docker containers are also useless).

What
======================================

So: This is a CLI runnable version of CodeNarc. It has everything (Groovy, slf4j) in the runnable jar


"But.... what about the enhanced classpath rules?"
=====================================

Codenarc has some [rules that require the application classes themselves on the classpath](https://codenarc.github.io/CodeNarc/codenarc-rules-enhanced.html). I suspect they won't work with this runnable jar.

That's a tradeoff I'm personally willing to make for this tool. If you can't make that tradeoff, then I'm sorry.

Usage
====================================

Use the default CodeNarc rulset:

    java -jar codenarc-wrapper.jar 
	
Use a ruleset defined in your project:	
	
	java -jar codenarc-wrapper.jar -rulesetfiles=file:config%2Fruleset.groovy
	
	
Downloading it
==================================

I've used the [Github Releases](https://github.com/rwilcox/codenarc-cli/releases) page to not only keep a copy of the source, but also the generated .jar file. Download it from there and try it out!!

License
===================================

Licensed with the same license as CodeNarc itself, as this project only configures a pom.xml file

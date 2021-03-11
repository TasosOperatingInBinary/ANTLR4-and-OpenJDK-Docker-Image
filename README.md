# Docker image for ANTLR4 and OpenJDK 11

"ANTLR (ANother Tool for Language Recognition) is a powerful parser generator for reading, processing, executing, or translating structured text or binary files. It's widely used to build languages, tools, and frameworks. From a grammar, ANTLR generates a parser that can build and walk parse trees."

www.antlr.org

"OpenJDK (Open Java Development Kit) is a free and open-source implementation of the Java Platform, Standard Edition (Java SE). It is the result of an effort Sun Microsystems began in 2006. The implementation is licensed under the GNU General Public License (GNU GPL) version 2 with a linking exception. Were it not for the GPL linking exception, components that linked to the Java class library would be subject to the terms of the GPL license. OpenJDK is the official reference implementation of Java SE since version 7."

https://openjdk.java.net/

## Setup

The image installs Java, ANTLR4 and adds the necessary aliases. You can clone this repo or just copy
the content of the Dockerfile. Put your .g4 files under a **src** folder. **Data persistance is NOT supported.** 

## Usage 

```sh
$ docker build -t <image-name> .
$ docker run -it <image-name>
```

e.g. if your .g4 file is *Grammar.g4*
```sh
$ antlr4 Grammar.g4
$ javac Grammar*.java
```
This directory contains the examples from the Software Foundations series 
available at: https://softwarefoundations.cis.upenn.edu

You can use Stainless to verify the safety properties of all the programs:

    stainless-scalac sf1-logical-foundations/*.scala

To check for termination of all of your programs:

    stainless-scalac sf1-logical-foundations/*.scala --termination

To compile a particular file with scalac (e.g. for Basics.scala)

    scalac sf1-logical-foundations/Basics.scala -d /anyfolder/for/classfiles $(find /path/to/stainless/frontends/library/ -name "*.scala")

After compilation, you can run a particular file with:

    scala -cp /anyfolder/for/classfile sf1.Basics

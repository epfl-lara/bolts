name := "VerifiedLexer"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.7.2" 

run / fork := true

stainlessEnabled := false

enablePlugins(StainlessPlugin, JmhPlugin)

name := "VerifiedLexer"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.3.3" 

run / fork := true

stainlessEnabled := false

enablePlugins(StainlessPlugin, JmhPlugin)

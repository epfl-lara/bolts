name := "VerifiedLexer"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.7.2" 

run / fork := true

stainlessEnabled := false

Compile / mainClass := Some("ch.epfl.lexer.Main")
assembly / mainClass := Some("ch.epfl.lexer.Main")

assembly / assemblyMergeStrategy := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x => MergeStrategy.first
}

enablePlugins(StainlessPlugin, JmhPlugin)

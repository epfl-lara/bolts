name := "ZipLex"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.7.2" 

run / fork := true

stainlessEnabled := false
// stainlessGhostEliminationEnabled := true

Compile / mainClass := Some("com.ziplex.lexer.Main")
assembly / mainClass := Some("com.ziplex.lexer.Main")

assembly / assemblyMergeStrategy := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x => MergeStrategy.first
}

resolvers += "Local Stainless" at "file://" + baseDirectory.value + "/stainless"

libraryDependencies ++= Seq(
  "org.scalatest" %% "scalatest" % "3.2.19" % Test,
  "ch.epfl.lara" %% "stainless-library" % "0.9.9.2-4-g2ff974d"
)

enablePlugins(StainlessPlugin, JmhPlugin)

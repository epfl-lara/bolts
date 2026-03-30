name := "ZipLex"
version := "0.1.0-SNAPSHOT"
scalaOrganization := "ch.epfl.lara"
scalaVersion := "3.8.3-RC1-bin-20260218-bb6fc60-NIGHTLY"

run / fork := true

stainlessEnabled := false

Compile / mainClass := Some("com.ziplex.lexer.Main")
assembly / mainClass := Some("com.ziplex.lexer.Main")

assembly / assemblyMergeStrategy := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x => MergeStrategy.first
}

excludeDependencies ++= Seq(
      ExclusionRule("org.scala-lang", "scala-library"),
      ExclusionRule("org.scala-lang", "scala3-library_3"),
      ExclusionRule("org.scala-lang", "scala3-compiler_3"),
    )
enablePlugins(StainlessPlugin, JmhPlugin)

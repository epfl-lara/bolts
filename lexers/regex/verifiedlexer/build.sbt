import scala.scalanative.build._

organization := "com.ziplex"
name := "ZipLex"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.7.2" 

run / fork := true

stainlessEnabled := false

Compile / mainClass := Some("com.ziplex.lexer.Main")

// JVM assembly settings.
// These are only useful for JVM builds, not Scala Native.
assembly / mainClass := Some("com.ziplex.lexer.Main")

assembly / assemblyMergeStrategy := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case _ => MergeStrategy.first
}

// Enable Scala Native in addition to your existing plugins.
enablePlugins(ScalaNativePlugin, StainlessPlugin, JmhPlugin)

// Optional but recommended while developing:
nativeConfig ~= { config =>
  config
    .withMode(Mode.debug)
    .withLTO(LTO.none)
}
// =======================================
// Terverak -> StringUtils.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.utils

import stainless.collection.*
import stainless.lang.*
import stainless.annotation.*

/**
  * Object containing methods to add plurals and split text in multiple lines.
  */
object StringUtils {
  
  /**
    * Returns the word with the good plural.
    * @param word the word
    * @param number the number
    * @return the word with the good plural
    */
  def getWordWithGoodPlural(word: String, number: BigInt): String = {   
    if (number <= 1 && number >= -1) word
    else word + "s"
  } ensuring(res => res == word || res == word + "s")

  /** Returns a string with the text split in multiple lines if it is too long.
    * @param text the text to split
    * @param width the width of the text box
    * @param fontWidth the width of the font
    * @return the string split in multiple lines and the number of lines
    */
  @extern
  def getMultilinesText(text: String, width: BigInt, fontWidth: BigInt): (String, BigInt) = {
    require(width > 0)
    require(fontWidth > 0)

    def rec(words: List[String]): List[String] = {
      val lists = words.foldLeft((List[List[String]](), List[String]())) {
        (acc, word) =>
          if acc._2.isEmpty then (acc._1, List(word))
          else if word == "\n" then (acc._1 ++ List(acc._2), List.empty)	
          else if (acc._2.foldLeft(BigInt(0))((count, string) => count + StrOps.bigLength(string) + 1) + StrOps.bigLength(word)) * fontWidth > width then (acc._1 ++ List(acc._2), List(word))
          else (acc._1, acc._2 ++ List(word))
      }

      val finalList = 
        if lists._2.isEmpty then lists._1
        else lists._1 ++ List(lists._2)

      finalList.map(fl => stainlessMkString(fl, " "))
    }
    
    val lines = rec(arrayToStainlessList(text.split(' ')))
    (stainlessMkString(lines, "\n"), lines.length)
  }

  def stainlessMkString(strings: List[String], sep: String): String = {
    strings match {
      case Nil() => ""
      case Cons(x, Nil()) => x
      case Cons(x, xs) => x + sep + stainlessMkString(xs, sep)
    }
  }

  @extern
  def arrayToStainlessList[A](array: Array[A]): List[A] = {
    array.foldRight(Nil(): List[A])((a, acc) => Cons(a, acc))
  }
}

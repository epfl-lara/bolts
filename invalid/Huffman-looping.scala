/* Copyright 2017- LARA, EPFL, Lausanne.
   Author: Dragana Milovancevic. */
package patmat

import stainless.lang._
import stainless.collection._
import stainless.annotation._
import stainless.proof._

/**
 * Assignment 4: Huffman coding
 *
 */
object Huffman {
  /**
   * A huffman code is represented by a binary tree.
   *
   * Every `Leaf` node of the tree represents one character of the alphabet that the tree can encode.
   * The weight of a `Leaf` is the frequency of appearance of the character.
   * The branches of the huffman tree, the `Fork` nodes, represent a set containing all the characters
   * present in the leaves below it. The weight of a `Fork` node is the sum of the weights of these
   * leaves.
   */
    sealed abstract class CodeTree(){
      lazy val chars: Set[Char] = {
        decreases(this)
        this match {
          case Fork(left, right) => left.chars ++ right.chars
          case Leaf(char, weight) => Set(char)
        }
      } ensuring(res => res != Set.empty[Char])
    }
    case class Fork(left: CodeTree, right: CodeTree) extends CodeTree
    case class Leaf(char: Char, weight: BigInt) extends CodeTree


    sealed abstract class OptChar
    case class Some(value: Char) extends OptChar
    case object None extends OptChar

  // Part 3: Decoding

  /**
   * This function decodes the bit sequence `bits` using the code tree `tree` and returns
   * the resulting list of characters.
   */
    def decode(tree: CodeTree, bits: List[Boolean]): List[Char] = {
      decreases(bits)
      if (bits.isEmpty) List()
      else {
        decodeChar(tree, bits) match {
          case Some(c) => c :: decode(tree, bits.drop(encodeChar(tree, c).size))
          case None => List()
        }
      }
    }

    def decodeChar(tree: CodeTree, bits: List[Boolean]): OptChar = {
      decreases(bits)
      tree match  {
        case Fork(left, right) => {
          if (bits.isEmpty) None
          else if (!bits.head) decodeChar(left, bits.tail)
          else decodeChar(right, bits.tail)
        }
        case Leaf(char, weight) => Some(char)
      }
    }

  // Part 4a: Encoding using Huffman tree

  /**
   * This function encodes `text` using the code tree `tree`
   * into a sequence of bits.
   */
    def encode(tree: CodeTree)(text: List[Char]): List[Boolean] = {
      if (!text.forall(elem => tree.chars.contains(elem))) List()
      else text.flatMap(elem => encodeChar(tree, elem))
    }

    def encodeChar(tree: CodeTree, cx: Char): List[Boolean] = {
      decreases(tree)
      tree match  {
        case Fork(left, right) => {
          if (!tree.chars.contains(cx)) List()
          else if (left.chars.contains(cx)) false::encodeChar(left, cx)
          else true::encodeChar(right, cx)
        }
        case Leaf(chars, weight) => List()
      }
    }
}

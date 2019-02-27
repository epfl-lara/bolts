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


    // Part 1: Basics
    def weight(tree: CodeTree): BigInt = {
      tree match {
        case Fork(left, right) => weight(left) + weight(right)
        case Leaf(char, weight) => weight
      }
    }

    def chars(trees: List[CodeTree]): Set[Char] = {
      if (trees.isEmpty) Set[Char]()
      else trees.head.chars ++ chars(trees.tail)
    } ensuring(res => trees.isEmpty || res != Set.empty[Char])

    def makeCodeTree(left: CodeTree, right: CodeTree) = {
      Fork(left, right)
    } ensuring(res => res.chars == chars(List[CodeTree](left, right)))

    def makeCodeTree(left: Leaf, right: Leaf) = {
      require(left.char != right.char && consistent(List[CodeTree](left,right)))
      Fork(left, right)
    } ensuring(res => consistent(res) && res.chars == chars(List[CodeTree](left, right)))

    def isLeaf(tree: CodeTree): Boolean = {
      tree match {
        case Leaf(c, w) => true
        case _ => false
      }
    }

  // Part 2: Generating Huffman trees

  /**
   * This function computes for each unique character in the list `chars` the number of
   * times it occurs.
   */
    def times(chars: List[Char]): List[(Char, BigInt)] = {
      require(!chars.isEmpty)
      val distinctList = distinct(chars, List())
      distinctList zip distinctList.map(elem => chars.count(e => e == elem))
    } ensuring(res => listEqu(distinct(chars, List()), distinct(chars, List()).map(elem => chars.count(e => e == elem)))
                     && distinct(chars, List()).content == chars.content)

    def distinct(chars: List[Char], acc: List[Char]): List[Char] = {
      require(isDistinctList(acc) && chars.size+acc.size>0)
      chars match {
        case y::ys => {
          if (isDistinctList(y::acc)) distinct(ys, y::acc)
          else distinct(ys, acc)
        }
        case _ => acc
      }
    } ensuring(res => isDistinctList(res) && res.content == acc.content ++ chars.content)

    def listEqu(list: List[Char], zipWith: List[BigInt]): Boolean = {
      require(list.size == zipWith.size)
      (list zip zipWith).map(elem => elem._1) == list because {
        if (list.isEmpty) true
        else listEqu(list.tail, zipWith.tail)
      }
    }.holds

    def isDistinctList(list: List[Char]): Boolean = {
      list match {
        case x::xs => !(xs.contains(x)) && isDistinctList(xs)
        case _ => true
      }
    }

    def isDistinctList(list: List[CodeTree]): Boolean = {
      list match {
        case x::xs => xs.forall(elem => (elem.chars & x.chars) == Set.empty[Char]) && isDistinctList(xs)
        case _ => true
      }
    }

    def sortedByWeight(list: List[CodeTree]): Boolean = ListOps.isSorted(list.map(weight))

    def insert(l:CodeTree, list: List[CodeTree]): List[CodeTree] = {
      require(sortedByWeight(list))
      list match {
        case y::ys => if (weight(l) < weight(y)) l::list
                      else y::insert(l, ys)
        case _ => List(l)
      }
    } ensuring(res => res.size == list.size+1 && sortedByWeight(res) &&
                     (l::list).content == res.content && chars(res) == chars(list) ++ l.chars)


    def sortLeafList(list: List[CodeTree]): List[CodeTree] = {
      list match {
        case l::ls => insert(l, sortLeafList(list.tail))
        case _ => List[CodeTree]()
      }
    } ensuring(res => chars(res) == chars(list) && sortedByWeight(res)
                     && res.content == list.content && res.size == list.size)


  /**
   * Returns a list of `Leaf` nodes for a given frequency table `freqs`.
   *
   * The returned list should be ordered by ascending weights (i.e. the
   * head of the list should have the smallest weight), where the weight
   * of a leaf is the frequency of the character.
   */
    def makeOrderedLeafList(freqs: List[(Char, BigInt)]): List[CodeTree] = {
      require(!freqs.isEmpty && isDistinctList(freqs.map(elem => elem._1)))
      def foreach(freqs: List[(Char, BigInt)]): List[CodeTree] = {
        require(isDistinctList(freqs.map(elem => elem._1)))
        if (freqs.isEmpty) List[CodeTree]()
        else new Leaf(freqs.head._1, freqs.head._2) ::foreach(freqs.tail)
      } ensuring(res => chars(res) == freqs.map(elem => elem._1).content && res.size == freqs.size)
      sortLeafList(foreach(freqs))
    } ensuring(res => sortedByWeight(res) &&
                     chars(res) == freqs.map(elem => elem._1).content && res.size == freqs.size)



  /**
   * Checks whether the list `trees` contains only one single code tree.
   */
    def singleton(trees: List[CodeTree]): Boolean = {
      trees.size == 1
    } ensuring(res => (res && trees.size == 1) || (!res && trees.size != 1))


  /**
   * The parameter `trees` of this function is a list of code trees ordered
   * by ascending weights.
   *
   * This function takes the first two elements of the list `trees` and combines
   * them into a single `Fork` node. This node is then added back into the
   * remaining elements of `trees` at a position such that the ordering by weights
   * is preserved.
   *
   * If `trees` is a list of less than two elements, that list should be returned
   * unchanged.
   */
    def combine(trees: List[CodeTree]): List[CodeTree] = {
      require(sortedByWeight(trees))
      if (trees.size < 2) trees
      else insert(makeCodeTree(trees.head, trees.tail.head), trees.tail.tail)
    } ensuring(res => sortedByWeight(res) &&
                     chars(res) == chars(trees) && (trees.size<2 || res.size == trees.size-1))


  /**
   * This function will be called in the following way:
   *
   *   until(trees)
   *
   * where `trees` is of type `List[CodeTree]`.
   *
   * In such an invocation, `until` calls the functions `singleton` and `combine` until the list of
   * code trees contains only one single tree, and then return that singleton list.
   *
   */
    def until(trees: List[CodeTree]): List[CodeTree] = {
      require(!trees.isEmpty && sortedByWeight(trees))
      if (singleton(trees)) trees
      else until(combine(trees))
    } ensuring(res => res.size <= trees.size && singleton(res) && !res.isEmpty && chars(trees) == chars(res))


  /**
   * This function creates a code tree which is optimal to encode the text `chars`.
   *
   * The parameter `charsList` is an arbitrary text. This function extracts the character
   * frequencies from that text and creates a code tree based on them.
   */
    def createCodeTree(charsList: List[Char]): CodeTree = {
      require(!charsList.isEmpty && sortedByWeight(makeOrderedLeafList(times(charsList))))
      until(makeOrderedLeafList(times(charsList))).head
    } ensuring(res => res.chars == charsList.content)


  // Part 3: Decoding

  /**
   * This function decodes the bit sequence `bits` using the code tree `tree` and returns
   * the resulting list of characters.
   */
    def decode(tree: CodeTree, bits: List[Boolean]): List[Char] = {
      if (bits.isEmpty) List()
      else {
        decodeChar(tree, bits) match {
          case Some(c) => c :: decode(tree, bits.drop(encodeChar(tree, c).size))
          case None => List()
        }
      }
    }

    def decodeChar(tree: CodeTree, bits: List[Boolean]): OptChar = {
      tree match  {
        case Fork(left, right) => {
          if (bits.isEmpty) None
          else if (!bits.head) decodeChar(left, bits.tail)
          else decodeChar(right, bits.tail)
        }
        case Leaf(char, weight) => Some(char)
      }
    }


  /**
   * A Huffman coding tree for the French language.
   * Generated from the data given at
   *   http://fr.wikipedia.org/wiki/Fr%C3%A9quence_d%27apparition_des_lettres_en_fran%C3%A7ais
   */
    val frenchCode: CodeTree = {
    Fork(Fork(Fork(Leaf('s',121895),Fork(Leaf('d',56269),Fork(Fork(Fork(Leaf('x',5928),Leaf('j',8351)),Leaf('f',16351)),Fork(Fork(Fork(Fork(Leaf('z',2093),Fork(Leaf('k',745),Leaf('w',1747))),Leaf('y',4725)),Leaf('h',11298)),Leaf('q',20889))))),Fork(Fork(Leaf('o',82762),Leaf('l',83668)),Fork(Fork(Leaf('m',45521),Leaf('p',46335)),Leaf('u',96785)))),Fork(Fork(Fork(Leaf('r',100500),Fork(Leaf('c',50003),Fork(Leaf('v',24975),Fork(Leaf('g',13288),Leaf('b',13822))))),Fork(Leaf('n',108812),Leaf('t',111103))),Fork(Leaf('e',225947),Fork(Leaf('i',115465),Leaf('a',117110)))))
  }

  /**
   * What does the secret message say? Can you decode it?
   * For the decoding use the `frenchCode' Huffman tree defined above.
   */
  //val secret: List[BigInt] = List(0,0,1,1,1,0,1,0,1,1,1,0,0,1,1,0,1,0,0,1,1,0,1,0,1,1,0,0,1,1,1,1,1,0,1,0,1,1,0,0,0,0,1,0,1,1,1,0,0,1,0,0,1,0,0,0,1,0,0,0,1,0,1)
    val secret: List[Boolean] = List(false,false,true,true,true,false,true,false,true,true,true,false,false,true,true,false,true,false,false,true,true,false,true,false,true,true,false,false,true,true,true,true,true,false,true,           false,true,true,false,false,false,false,true,false,true,true,true,false,false,true,false,false,true,false,false,false,true,false,false,false,true,false,true)


  /**
   * Write a function that returns the decoded secret
   */
    def decodedSecret: List[Char] = {
      decode(frenchCode, secret)
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
      tree match  {
        case Fork(left, right) => {
          if (!tree.chars.contains(cx)) List()
          else if (left.chars.contains(cx)) false::encodeChar(left, cx)
          else true::encodeChar(right, cx)
        }
        case Leaf(chars, weight) => List()
      }
    }


  // Encoding/decoding proof

    def proof(text: List[Char]): Boolean = {
      require(!text.isEmpty && !isLeaf(createCodeTree(text)))
      val tree = createCodeTree(text)
      decode(tree, encode(tree)(text)) == text because checkAlphabet(text) && checkContent(text, tree) && proof(tree, text)
    }.holds

    def checkChar(char: Char, tree: CodeTree): Boolean = {
      (isLeaf(tree) || !tree.chars.contains(char) ||
      (decodeChar(tree,encodeChar(tree, char)) match {
        case Some(c) => c == char
        case _ => false
      })) because {
        tree match {
          case Leaf(c, w) => true
          case Fork(left, right) => {
            if (left.chars.contains(char)) checkChar(char, left)
            else if (right.chars.contains(char)) checkChar(char, right)
            else true
          }
        }
      }
    }.holds

    def notEmpty(tree: CodeTree, text: List[Char]): Boolean = {
      require(!text.isEmpty && !isLeaf(tree) && text.forall(char => tree.chars.contains(char)))
      checkChar(text.head, tree) && checkHead(tree, text) && decodeChar(tree, encode(tree)(text)) != None
    }.holds

    def checkHead(tree:CodeTree, text: List[Char]): Boolean = {
      require(!text.isEmpty && !isLeaf(tree) && text.forall(char => tree.chars.contains(char)))
      checkChar(text.head, tree) && checkLen(tree, encodeChar(tree, text.head), encode(tree)(text.tail)) &&
      ((decodeChar(tree, encodeChar(tree, text.head)), decodeChar(tree, encode(tree)(text))) match {
        case (Some(c1), Some(c2)) => c1 == c2
        case (_) => false
      })
    }.holds

    def proveHead(tree:CodeTree, text: List[Char]): Boolean = {
      require(!text.isEmpty && !isLeaf(tree) && text.forall(char => tree.chars.contains(char)))
      notEmpty(tree, text) && checkHead(tree,text) && checkChar(text.head, tree) &&
      (decodeChar(tree, encode(tree)(text)) match {
        case Some(char) => char == text.head
        case None => false
      })
    }.holds

    def checkLen(tree: CodeTree, bits: List[Boolean], list: List[Boolean]): Boolean = {
      isLeaf(tree) || bits.isEmpty ||
      ((decodeChar(tree, bits), decodeChar(tree, bits++list)) match {
        case (Some(c1), Some(c2)) => c1 == c2
        case (None, _) => true
        case (_) => false
      }) because {
        tree match {
          case Fork(left, right) => {
            if (bits.isEmpty) true
            else if (!bits.head) checkLen(left, bits.tail, list)
            else checkLen(right, bits.tail, list)
          }
          case Leaf(char, weight) => true
        }
      }
    }.holds

    def checkDrop(list1:List[Boolean], list2:List[Boolean]): Boolean = {
      (list1++list2).drop(list1.size) == list2 because {
        if (list1.isEmpty) true
        else checkDrop(list1.tail, list2)
      }
    }.holds

    def checkEncodeTail(tree: CodeTree, text: List[Char]): Boolean = {
      require(!isLeaf(tree) && text.forall(char => tree.chars.contains(char)) && !text.isEmpty)
      notEmpty(tree, text) && (decodeChar(tree, encode(tree)(text)) match {
        case Some(char) => checkDrop(encodeChar(tree, char), encode(tree)(text.tail))
        case None => false
      }) && decode(tree, encode(tree)(text).drop(encodeChar(tree, text.head).size)) == decode(tree, encode(tree)(text.tail))
    }.holds

    def helperProof(tree: CodeTree, text: List[Char]): Boolean = {
      require(!isLeaf(tree) && text.forall(char => tree.chars.contains(char)) && !text.isEmpty)
      val bits = encode(tree)(text)
      proveHead(tree, text) && checkEncodeTail(tree, text) &&
      decode(tree, bits) == text.head :: decode(tree, encode(tree)(text.tail)) //&&
      //(text.size == 1 || helperProof(tree, text.tail))
    }.holds

    def proof(tree: CodeTree, text: List[Char]): Boolean = {
      require(!isLeaf(tree) && text.forall(char => tree.chars.contains(char)) && !text.isEmpty)
      decode(tree, encode(tree)(text)) == text because {
        if (text.size>1) helperProof(tree, text) && proof(tree, text.tail)
        else checkChar(text.head, tree)
      }
    }.holds

    def checkContent(text: List[Char], tree: CodeTree): Boolean = {
      require(text.filter(elem => !tree.chars.contains(elem)).isEmpty)
      text.forall(char => tree.chars.contains(char)) because {
        if (text.isEmpty) true
        else checkContent(text.tail, tree)
      }
    }.holds




 // CodeTree verification

    def checkAlphabet(list: List[Char]): Boolean = {
      require(!list.isEmpty)
      createCodeTree(list).chars == list.content
    }.holds

    def consistent(tree: CodeTree): Boolean = {
      tree match{
        case Fork(left, right) => consistent(left) && consistent(right) && isDistinctList(List(left, right))
        case Leaf(char, weight) => true
      }
    }

    def consistent(trees: List[CodeTree]): Boolean = {
      if (trees.size == 0) true
      else consistent(trees.head) && consistent(trees.tail) && isDistinctList(trees)
    }

    def depth(tree: CodeTree, char: Char): BigInt = {
      tree match{
        case Fork(left, right) => {
          if (left.chars.contains(char))
            depth(left,char) + 1
          else if (right.chars.contains(char))
            depth(right, char) + 1
          else
            0
        }
        case Leaf(char, weight) => 0
      }
    }

    def height(tree: CodeTree): BigInt = {
      tree match {
        case Fork(left, right) => {
          if (height(left) > height(right)) height(left) + 1
          else height(right) + 1
        }
        case Leaf(char, weight) => 0
      }
    }

    def height(trees: List[CodeTree]): BigInt = {
      if (trees.isEmpty) 0
      else if (height(trees.head) > height(trees.tail)) height(trees.head)
      else height(trees.tail)
    }



    def checkCharEqu(char1: Char, char2: Char, tree: CodeTree): Boolean = {
      require(char1 == char2)
      isLeaf(tree) || encodeChar(tree, char1) == encodeChar(tree, char2)
    }.holds

    def checkTextEqu(text1: List[Char], text2: List[Char], tree: CodeTree): Boolean = {
      require(text1 == text2)
      isLeaf(tree) || encode(tree)(text1) == encode(tree)(text2)
    }.holds

    def checkBitsEqu(bits1: List[Boolean], bits2: List[Boolean], tree: CodeTree): Boolean = {
      require(bits1 == bits2)
      isLeaf(tree) || decode(tree, bits1) == decode(tree, bits2)
    }.holds

    def checkCharDiff(char1: Char, char2: Char, tree: CodeTree): Boolean = {
      require(char1 != char2)
      (isLeaf(tree) || encodeChar(tree, char1).isEmpty || encodeChar(tree, char1) != encodeChar(tree, char2)) because {
        tree match {
          case Leaf(c, w) => true
          case Fork(left, right) => checkCharDiff(char1, char2, left) && checkCharDiff(char1, char2, right)
        }
      }
    }.holds

    def checkEncodeChar(char: Char, tree: CodeTree): Boolean = {
      tree match{
        case Leaf(c, w) => encodeChar(tree, char).isEmpty
        case Fork(left, right) => {
          if (left.chars.contains(char)) encodeChar(tree, char).head == false && checkEncodeChar(char, left) && checkEncodeChar(char, right)
          else if (right.chars.contains(char)) encodeChar(tree, char).head == true && checkEncodeChar(char, left) && checkEncodeChar(char, right)
          else encodeChar(tree, char).isEmpty
        }
      }
    }.holds

    def checkConcatEncode(tree: CodeTree, char: Char, text: List[Char]): Boolean = {
      require(!isLeaf(tree) && text.forall(char => tree.chars.contains(char)) && tree.chars.contains(char))
      encode(tree)(List(char)) ++ encode(tree)(text) == encode(tree)(char::text) because {
        if (text.isEmpty) true
        else checkConcatEncode(tree, char, text.tail)
      }
    }.holds

    def checkContainsEncode(tree: CodeTree, char: Char): Boolean = {
      tree.chars.contains(char) && !encodeChar(tree, char).isEmpty || encodeChar(tree, char).isEmpty
    }.holds

    def checkContainsDecode(tree: CodeTree, bits: List[Boolean]): Boolean = {
      (decodeChar(tree, bits) match {
        case Some(char) => tree.chars.contains(char)
        case None => true
       }) because {
         tree match {
           case Leaf(c, w) => true
           case Fork(left, right) => bits.isEmpty || checkContainsDecode(left, bits.tail) && checkContainsDecode(right, bits.tail)
         }
       }
    }.holds


    def checkChar(char: Char, text: List[Char]): Boolean = {
      require(!text.isEmpty)
      checkChar(char, createCodeTree(text))
    }.holds

    def checkDecodeChar(tree: CodeTree, char: Char) = {
      require(!isLeaf(tree) && tree.chars.contains(char))
      decode(tree,encode(tree)(List(char))) == List(char) because checkChar(char, tree)
    }.holds

    def proofLen1(tree: CodeTree, text: List[Char]): Boolean = {
      require(text.size == 1 && !isLeaf(tree) && text.forall(char => tree.chars.contains(char)))
      decode(tree, encode(tree)(text)) == text because checkChar(text.head, tree)
    }.holds

    def checkDecodeText(tree: CodeTree, bits: List[Boolean]): Boolean = {
      require(!isLeaf(tree) && !decode(tree, bits).isEmpty)
      decodeChar(tree, bits) match {
        case Some(char) => decode(tree, bits) == char :: decode(tree, bits.drop(encodeChar(tree, char).size))
        case _ => false
      }
    }.holds

/*
    def checkFrenchCodeTree(): Boolean = {
      val char = 's'
      val tree = frenchCode
      decode(tree,encodeChar(tree, char)).head == char && decode(tree,encode(tree)(List(char))).head == char
    }.holds
*/



 // Part 4b: Encoding using code table


  /**
   * This function returns the bit sequence that represents the character `char` in
   * the code table `table`.
   */
    def codeBits(table: Map[Char, List[Boolean]])(char: Char): List[Boolean] = {
      table.getOrElse(char, List())
    }

  /**
   * Given a code tree, create a code table which contains, for every character in the
   * code tree, the sequence of bits representing that character.
   *
   */
    def convert(tree: CodeTree): Map[Char, List[Boolean]] = {
      def chars(tree: CodeTree): List[Char] = {
        tree match  {
          case Fork(left, right) => chars(left) ++ chars(right)
          case Leaf(char, weight) => List(char)
        }
      } ensuring(res => !res.isEmpty)

      val text = chars(tree)

      def convertHelp(tree: CodeTree, acc: List[Boolean]): Map[Char, List[Boolean]] = {
        val text = chars(tree)
        tree match  {
          case Fork(left, right) => mergeCodeTables(convertHelp(left, (acc++List(false))),convertHelp(right, (acc++List(true))), text)
          case Leaf(char, weight) => Map((char, acc))
        }
      }

      tree match  {
        case Fork(left, right) => mergeCodeTables(convertHelp(left, List(false)), convertHelp(right, List(true)), text)
        case Leaf(char, weight) => Map((char, List(false)))
      }
    }

  /**
   * This function takes two code tables and merges them into one. Depending on how you
   * use it in the `convert` method above, this merge method might also do some transformations
   * on the two parameter code tables.
   */
    def mergeCodeTables(a: Map[Char, List[Boolean]], b: Map[Char, List[Boolean]], text: List[Char]): Map[Char, List[Boolean]] = {
   //   a++b

      if (text.isEmpty) Map[Char, List[Boolean]]()
      else {
        val c = text.head
        val tab = mergeCodeTables(a, b, text.tail)
        if (a.contains(c)) tab + (c, a(c))
        else if (b.contains(c)) tab + (c, b(c))
        else tab
      }

    }

  /**
   * This function encodes `text` according to the code tree `tree`.
   *
   * To speed up the encoding process, it first converts the code tree to a code table
   * and then uses it to perform the actual encoding.
   */
    def quickEncode(tree: CodeTree)(text: List[Char]): List[Boolean] = {
      encodeTable(convert(tree), text)
    }

    def encodeTable(table: Map[Char, List[Boolean]], text: List[Char]): List[Boolean] = {
      if (text.isEmpty) List[Boolean]()
      else codeBits(table)(text.head) ++ encodeTable(table, text.tail)
    }
}

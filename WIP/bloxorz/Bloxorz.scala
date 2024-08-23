/* Copyright 2017- LARA, EPFL, Lausanne.
   Author: Dragana Milovancevic. */
import stainless.lang._
import stainless.collection._
import stainless.annotation._

object Bloxorz {

    val numOfNeighbors: BigInt = 4


    case class Pos(row: BigInt, col: BigInt) {
      def deltaRow(d: BigInt): Pos = Pos(row+d, col)
      def deltaCol(d: BigInt): Pos = Pos(row, col+d)
    }


    case class Block(b1: Pos, b2: Pos, terrain: Pos => Boolean) {
      require(b1.row <= b2.row && b1.col <= b2.col && b2.col-b1.col<=1 && b2.row-b1.row<=1)

      def deltaRow(d1: BigInt, d2: BigInt): Block = {
        require(b1.deltaRow(d1).row <= b2.deltaRow(d2).row && b1.col <= b2.col && b2.deltaRow(d2).row-b1.deltaRow(d1).row <= 1)
        Block(b1.deltaRow(d1), b2.deltaRow(d2), terrain)
      }

      def deltaCol(d1: BigInt, d2: BigInt): Block = {
        require(b1.row <= b2.row && b1.deltaCol(d1).col <= b2.deltaCol(d2).col && b2.deltaCol(d2).col-b1.deltaCol(d1).col <= 1)
        Block(b1.deltaCol(d1), b2.deltaCol(d2), terrain)
      }


      /** The block obtained by moving left */
      def left = if (isStanding)             deltaCol(-2, -1)
                 else if (b1.row == b2.row)  deltaCol(-1, -2)
                 else                        deltaCol(-1, -1)

      /** The block obtained by moving right */
      def right = if (isStanding)            deltaCol(1, 2)
                  else if (b1.row == b2.row) deltaCol(2, 1)
                  else                       deltaCol(1, 1)

      /** The block obtained by moving up */
      def up = if (isStanding)               deltaRow(-2, -1)
               else if (b1.row == b2.row)    deltaRow(-1, -1)
               else                          deltaRow(-1, -2)

      /** The block obtained by moving down */
      def down = if (isStanding)             deltaRow(1, 2)
                 else if (b1.row == b2.row)  deltaRow(1, 1)
                 else                        deltaRow(2, 1)


      def neighbors: List[(Block, Move)] = {
        List((left, new Move('l')),(right, new Move('r')),(up, new Move('u')),(down, new Move('d')))
      }ensuring(res => res.size == numOfNeighbors)
      
      def legalNeighbors: List[(Block, Move)] = {
        neighbors.filter(e => e._1.isLegal)
      }ensuring(res => res.size <= numOfNeighbors)


      def isStanding: Boolean = b1.row == b2.row && b1.col == b2.col
      def isLegal: Boolean = terrain(b1) && terrain(b2)
    }

    case class Move(c: Char)

    sealed abstract class GameDef {
      val startPos: Pos
      val goal: Pos
      val terrain: Pos => Boolean
      def startBlock: Block
    }

    /**
     * This component implements the solver for the Bloxorz game
     */
    sealed abstract class Solver extends GameDef {

      def done(b: Block): Boolean = b.b1 == goal && b.b2 == goal

      // FIXME: prove the postcondition
      def neighborsWithHistory(b: Block, history: List[Move]): List[(Block, List[Move])] = {
        b.legalNeighbors.map(elem => (elem._1, elem._2::history))
      }ensuring(res => res.size <= numOfNeighbors)
      // && !res.exists( e1 => res.exists( e2 => e1._1 == e2._1 && res.indexOf(e1) != res.indexOf(e2) ) ) )

      // FIXME: prove the postcondition
      def newNeighborsOnly(neighbors: List[(Block, List[Move])], explored: Set[Block]): List[(Block, List[Move])] = {
        require(neighbors.size <= numOfNeighbors)
        neighbors filterNot (elem => explored contains elem._1)
      }ensuring(res => res.size <= numOfNeighbors)
      //  && !res.exists(elem => !neighbors.contains(elem)) 
      //  && !res.exists(elem => explored.contains(elem._1))
      //  && neighbors.forall(elem => explored.contains(elem._1) || res.contains(elem)))

      def from(initial: List[(Block, List[Move])], explored: Set[Block]): List[(Block, List[Move])] = {
        if(initial.isEmpty) List[(Block, List[Move])]()
        else{ 
          val more = initial.flatMap(path => newNeighborsOnly(neighborsWithHistory(path._1, path._2), explored))
          initial ++ from(more, explored ++ more.map(elem => elem._1).toSet)
        }
      }ensuring(res => res.size >= initial.size)

      lazy val pathsFromStart: List[(Block, List[Move])] = {
        val initial = List((startBlock, List[Move]()))
        from(initial, Set(startBlock))
      }

      lazy val pathsToGoal: List[(Block, List[Move])] = {
        pathsFromStart.filter(elem => done(elem._1))
      }ensuring(res => res.forall(elem => done(elem._1)))


      lazy val solution: List[Move] = {
        val paths = pathsToGoal
        if(!paths.isEmpty) paths.head._2.reverse 
        else List()
      }

    }

    sealed trait StringParserTerrain extends GameDef {
      
      def terrainFunction(levelVector: Map[BigInt, Map[BigInt, Char]]): Pos => Boolean =  {
        def f(pos: Pos): Boolean = levelVector.contains(pos.row) && levelVector(pos.row).contains(pos.col) && levelVector(pos.row)(pos.col) != '-'
        f
      }

      val terrain: Pos => Boolean = terrainFunction(terrainVector)

      val startPos: Pos = findChar('S', terrainVector)
      val goal: Pos = findChar('T', terrainVector)

      val startBlock: Block = Block(startPos, startPos, terrain)

      def terrainList: List[Char] 
      def terrainVector: Map[BigInt, Map[BigInt, Char]] = charListToTerrainVector(terrainList)
      

      def charListToTerrainVector(chars: List[Char]): Map[BigInt, Map[BigInt, Char]] = {
        def newRow(chars: List[Char], num: BigInt): Map[BigInt, Map[BigInt, Char]] = {
          if(chars.isEmpty) Map()
          else {
            val newline = chars.dropWhile(elem => elem != '\n') 
            if (newline.isEmpty) Map()
            else newRow(newline.tail, num+1) + (num, newCol(chars, 0))
          }
        }

        def newCol(chars: List[Char], num: BigInt): Map[BigInt, Char] = {
          if(chars.isEmpty || chars.head == '\n') Map()
          else newCol(chars.tail, num+1) + (num, chars.head)
        }

        newRow(terrainList, BigInt(0))
      }


      def findChar(c: Char, levelVector: Map[BigInt, Map[BigInt, Char]]): Pos = {  
        def findCharInRow(c: Char, levelVector: Map[BigInt, Map[BigInt, Char]], row: BigInt): Pos = {
          if(levelVector.contains(row))  
            findCharInCol(c, levelVector, row, 0)
          else Pos(-1, -1)
        }ensuring(res => res.row== -1 && res.col== -1 || levelVector(res.row)(res.col) == c)

        def findCharInCol(c: Char, levelVector: Map[BigInt, Map[BigInt, Char]], row: BigInt, col: BigInt): Pos = {
          require(levelVector.contains(row))
          if(levelVector(row).contains(col)){
            if(levelVector(row)(col) == c) Pos(row, col)
            else findCharInCol(c, levelVector, row, col+1)
          }
          else findCharInRow(c, levelVector, row+1)
        }ensuring(res => res.row == -1 && res.col == -1 || levelVector(res.row)(res.col) == c)
         
        findCharInRow(c, levelVector, 0)   
      }ensuring(res => res.row == -1 && res.col == -1 || levelVector(res.row)(res.col) == c)  
    }
 

    // FIXME: with StringParserTerrain should be uncommented when multiple inheritance is supported
    case class Level() extends Solver /* with StringParserTerrain */ {

      def terrainList: List[Char] = List( 'o', 'o', 'o', '-', '-', '-', '-', '-', '-', '-', '\n', 
                                          'o', 'S', 'o', 'o', 'o', 'o', '-', '-', '-', '-', '\n',
                                          'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', '-', '\n',
                                          '-', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', '\n',
                                          '-', '-', '-', '-', '-', 'o', 'o', 'T', 'o', 'o', '\n',
                                          '-', '-', '-', '-', '-', '-', 'o', 'o', 'o', '-', '\n')

                                  /*
                                        '-' :: '-' :: 'S' :: 'T' :: '-' :: '-' :: '\n' ::
                                        '-' :: '-' :: 'o' :: 'o' :: '-' :: '-' :: '\n' ::
                                        '-' :: '-' :: 'o' :: 'o' :: '-' :: '-' :: '\n' ::
                                        '-' :: '-' :: 'o' :: 'o' :: '-' :: '-' :: '\n' :: Nil()
                                  */

      // def checkStart(): Boolean = (terrainList.contains('S'))..holds // FIXME: re-enable when we have the simplifier
      // def checkGoal(): Boolean = (terrainList.contains('T'))..holds // FIXME: ren-enable when we have the simplifier
    }

    def solve(lvl: Level): List[Move] = lvl.solution
}

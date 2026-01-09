package com.ziplex.lexer.example

import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.LexerInterface
import com.ziplex.lexer.TokenValueInjection
import com.ziplex.lexer.Rule
import com.ziplex.lexer.Token
import com.ziplex.lexer.TokenValue
import com.ziplex.lexer.VerifiedRegex.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil

import stainless.annotation.extern
import stainless.annotation.pure
import stainless.lang.decreases

import com.ziplex.lexer.example.RegexUtils.*
import com.ziplex.lexer.example.RegexUtils.digits
import stainless.lang.Quantifiers.*

import stainless.lang.Exception

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList
import com.ziplex.lexer.semiInverseBodyModEq
import com.ziplex.lexer.semiInverseModEq
import com.ziplex.lexer.equivClassesBody
import com.ziplex.lexer.equivClasses

import scala.annotation.tailrec
// BEGIN uncomment for verification ------------------------------------------
// import stainless.lang.StaticChecks._
// import stainless.lang.{ghost => ghostExpr}
// import stainless.lang.unfold
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
import com.ziplex.lexer.OptimisedChecks.*
import Predef.{assert => _, Ensuring => _, require => _, _}

@tailrec
def dummyAAStarBLexerExample(x: BigInt): BigInt = {
  if (x == BigInt(0)) then x
  else dummyAAStarBLexerExample(x - BigInt(1))
}.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

object ExampleAAStarBLexer:
    object Types:
        
        case class AsValue(text: List[Char]) extends TokenValue
        case class AsBValue(value: List[Char]) extends TokenValue

        // Injection definition + proofs

        case object AsValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = AsValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case AsValue(value) => seqFromList(value)
                case _ => emptySeq()
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end AsValueInjection

        case object AsBValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = AsBValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = 
                t match
                    case AsBValue(value) => seqFromList(value)
                    case _ => emptySeq()
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end AsBValueInjection
    end Types

    case object AAStarBLexer:
        import Types.*


        // Regex definitions
        val aRe = ElementMatch('a')
        val aStarBRe = Concat(Star(aRe), ElementMatch('b'))
        
        val aStarBRule: Rule[Char] = Rule(
            regex = aStarBRe,
            tag = "A_STAR_B",
            isSeparator = false,
            transformation = AsValueInjection.injection
        )

        val aRule : Rule[Char] = Rule(
            regex = aRe,
            tag = "A",
            isSeparator = false,
            transformation = AsBValueInjection.injection
        )


        val rules = List(
            aStarBRule,
            aRule
        )
    end AAStarBLexer


    object Demo:
        import com.ziplex.lexer.example.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = AAStarBLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)
        }
    end Demo

end ExampleAAStarBLexer
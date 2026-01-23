; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132712 () Bool)

(assert start!132712)

(declare-fun b!1433470 () Bool)

(declare-fun e!915060 () Bool)

(declare-fun e!915057 () Bool)

(assert (=> b!1433470 (= e!915060 (not e!915057))))

(declare-fun res!649069 () Bool)

(assert (=> b!1433470 (=> res!649069 e!915057)))

(declare-datatypes ((C!8032 0))(
  ( (C!8033 (val!4586 Int)) )
))
(declare-datatypes ((List!14954 0))(
  ( (Nil!14888) (Cons!14888 (h!20289 C!8032) (t!127189 List!14954)) )
))
(declare-datatypes ((IArray!10109 0))(
  ( (IArray!10110 (innerList!5112 List!14954)) )
))
(declare-datatypes ((Conc!5052 0))(
  ( (Node!5052 (left!12689 Conc!5052) (right!13019 Conc!5052) (csize!10334 Int) (cheight!5263 Int)) (Leaf!7560 (xs!7785 IArray!10109) (csize!10335 Int)) (Empty!5052) )
))
(declare-datatypes ((BalanceConc!10044 0))(
  ( (BalanceConc!10045 (c!235576 Conc!5052)) )
))
(declare-datatypes ((List!14955 0))(
  ( (Nil!14889) (Cons!14889 (h!20290 (_ BitVec 16)) (t!127190 List!14955)) )
))
(declare-datatypes ((TokenValue!2703 0))(
  ( (FloatLiteralValue!5406 (text!19366 List!14955)) (TokenValueExt!2702 (__x!9204 Int)) (Broken!13515 (value!84092 List!14955)) (Object!2768) (End!2703) (Def!2703) (Underscore!2703) (Match!2703) (Else!2703) (Error!2703) (Case!2703) (If!2703) (Extends!2703) (Abstract!2703) (Class!2703) (Val!2703) (DelimiterValue!5406 (del!2763 List!14955)) (KeywordValue!2709 (value!84093 List!14955)) (CommentValue!5406 (value!84094 List!14955)) (WhitespaceValue!5406 (value!84095 List!14955)) (IndentationValue!2703 (value!84096 List!14955)) (String!17770) (Int32!2703) (Broken!13516 (value!84097 List!14955)) (Boolean!2704) (Unit!22638) (OperatorValue!2706 (op!2763 List!14955)) (IdentifierValue!5406 (value!84098 List!14955)) (IdentifierValue!5407 (value!84099 List!14955)) (WhitespaceValue!5407 (value!84100 List!14955)) (True!5406) (False!5406) (Broken!13517 (value!84101 List!14955)) (Broken!13518 (value!84102 List!14955)) (True!5407) (RightBrace!2703) (RightBracket!2703) (Colon!2703) (Null!2703) (Comma!2703) (LeftBracket!2703) (False!5407) (LeftBrace!2703) (ImaginaryLiteralValue!2703 (text!19367 List!14955)) (StringLiteralValue!8109 (value!84103 List!14955)) (EOFValue!2703 (value!84104 List!14955)) (IdentValue!2703 (value!84105 List!14955)) (DelimiterValue!5407 (value!84106 List!14955)) (DedentValue!2703 (value!84107 List!14955)) (NewLineValue!2703 (value!84108 List!14955)) (IntegerValue!8109 (value!84109 (_ BitVec 32)) (text!19368 List!14955)) (IntegerValue!8110 (value!84110 Int) (text!19369 List!14955)) (Times!2703) (Or!2703) (Equal!2703) (Minus!2703) (Broken!13519 (value!84111 List!14955)) (And!2703) (Div!2703) (LessEqual!2703) (Mod!2703) (Concat!6630) (Not!2703) (Plus!2703) (SpaceValue!2703 (value!84112 List!14955)) (IntegerValue!8111 (value!84113 Int) (text!19370 List!14955)) (StringLiteralValue!8110 (text!19371 List!14955)) (FloatLiteralValue!5407 (text!19372 List!14955)) (BytesLiteralValue!2703 (value!84114 List!14955)) (CommentValue!5407 (value!84115 List!14955)) (StringLiteralValue!8111 (value!84116 List!14955)) (ErrorTokenValue!2703 (msg!2764 List!14955)) )
))
(declare-datatypes ((Regex!3927 0))(
  ( (ElementMatch!3927 (c!235577 C!8032)) (Concat!6631 (regOne!8366 Regex!3927) (regTwo!8366 Regex!3927)) (EmptyExpr!3927) (Star!3927 (reg!4256 Regex!3927)) (EmptyLang!3927) (Union!3927 (regOne!8367 Regex!3927) (regTwo!8367 Regex!3927)) )
))
(declare-datatypes ((String!17771 0))(
  ( (String!17772 (value!84117 String)) )
))
(declare-datatypes ((TokenValueInjection!5066 0))(
  ( (TokenValueInjection!5067 (toValue!3916 Int) (toChars!3775 Int)) )
))
(declare-datatypes ((Rule!5026 0))(
  ( (Rule!5027 (regex!2613 Regex!3927) (tag!2875 String!17771) (isSeparator!2613 Bool) (transformation!2613 TokenValueInjection!5066)) )
))
(declare-datatypes ((Token!4888 0))(
  ( (Token!4889 (value!84118 TokenValue!2703) (rule!4376 Rule!5026) (size!12217 Int) (originalCharacters!3475 List!14954)) )
))
(declare-datatypes ((List!14956 0))(
  ( (Nil!14890) (Cons!14890 (h!20291 Token!4888) (t!127191 List!14956)) )
))
(declare-datatypes ((IArray!10111 0))(
  ( (IArray!10112 (innerList!5113 List!14956)) )
))
(declare-datatypes ((Conc!5053 0))(
  ( (Node!5053 (left!12690 Conc!5053) (right!13020 Conc!5053) (csize!10336 Int) (cheight!5264 Int)) (Leaf!7561 (xs!7786 IArray!10111) (csize!10337 Int)) (Empty!5053) )
))
(declare-datatypes ((BalanceConc!10046 0))(
  ( (BalanceConc!10047 (c!235578 Conc!5053)) )
))
(declare-datatypes ((List!14957 0))(
  ( (Nil!14891) (Cons!14891 (h!20292 Rule!5026) (t!127192 List!14957)) )
))
(declare-datatypes ((PrintableTokens!1008 0))(
  ( (PrintableTokens!1009 (rules!11378 List!14957) (tokens!1970 BalanceConc!10046)) )
))
(declare-fun thiss!10022 () PrintableTokens!1008)

(declare-fun lt!488305 () Token!4888)

(declare-fun lt!488319 () Token!4888)

(declare-datatypes ((LexerInterface!2277 0))(
  ( (LexerInterfaceExt!2274 (__x!9205 Int)) (Lexer!2275) )
))
(declare-fun separableTokensPredicate!512 (LexerInterface!2277 Token!4888 Token!4888 List!14957) Bool)

(assert (=> b!1433470 (= res!649069 (not (separableTokensPredicate!512 Lexer!2275 lt!488319 lt!488305 (rules!11378 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1210 (LexerInterface!2277 List!14957 Token!4888) Bool)

(assert (=> b!1433470 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488305)))

(declare-fun lt!488311 () List!14956)

(declare-datatypes ((Unit!22639 0))(
  ( (Unit!22640) )
))
(declare-fun lt!488317 () Unit!22639)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 (LexerInterface!2277 List!14957 List!14956 Token!4888) Unit!22639)

(assert (=> b!1433470 (= lt!488317 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488311 lt!488305))))

(declare-fun other!32 () PrintableTokens!1008)

(declare-fun head!2889 (BalanceConc!10046) Token!4888)

(assert (=> b!1433470 (= lt!488305 (head!2889 (tokens!1970 other!32)))))

(declare-fun list!5918 (BalanceConc!10046) List!14956)

(assert (=> b!1433470 (= lt!488311 (list!5918 (tokens!1970 other!32)))))

(assert (=> b!1433470 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488319)))

(declare-fun lt!488309 () List!14956)

(declare-fun lt!488315 () Unit!22639)

(assert (=> b!1433470 (= lt!488315 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488309 lt!488319))))

(declare-fun last!163 (BalanceConc!10046) Token!4888)

(assert (=> b!1433470 (= lt!488319 (last!163 (tokens!1970 thiss!10022)))))

(assert (=> b!1433470 (= lt!488309 (list!5918 (tokens!1970 thiss!10022)))))

(declare-fun b!1433471 () Bool)

(declare-fun e!915054 () Bool)

(declare-fun e!915058 () Bool)

(assert (=> b!1433471 (= e!915054 e!915058)))

(declare-fun res!649070 () Bool)

(assert (=> b!1433471 (=> res!649070 e!915058)))

(declare-datatypes ((Option!2841 0))(
  ( (None!2840) (Some!2840 (v!22334 PrintableTokens!1008)) )
))
(declare-fun lt!488312 () Option!2841)

(declare-fun isEmpty!9248 (Option!2841) Bool)

(assert (=> b!1433471 (= res!649070 (isEmpty!9248 lt!488312))))

(declare-fun lt!488306 () PrintableTokens!1008)

(assert (=> b!1433471 (= lt!488312 (Some!2840 lt!488306))))

(declare-fun lt!488314 () BalanceConc!10046)

(declare-fun print!1060 (PrintableTokens!1008) BalanceConc!10044)

(declare-fun print!1061 (LexerInterface!2277 BalanceConc!10046) BalanceConc!10044)

(assert (=> b!1433471 (= (print!1060 lt!488306) (print!1061 Lexer!2275 lt!488314))))

(declare-fun lt!488320 () Unit!22639)

(declare-fun theoremInvertabilityWhenTokenListSeparable!67 (LexerInterface!2277 List!14957 List!14956) Unit!22639)

(assert (=> b!1433471 (= lt!488320 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 thiss!10022) (list!5918 lt!488314)))))

(assert (=> b!1433471 (= lt!488306 (PrintableTokens!1009 (rules!11378 thiss!10022) lt!488314))))

(assert (=> b!1433471 (= (print!1060 other!32) (print!1061 Lexer!2275 (tokens!1970 other!32)))))

(declare-fun lt!488313 () Unit!22639)

(assert (=> b!1433471 (= lt!488313 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 other!32) lt!488311))))

(assert (=> b!1433471 (= (print!1060 thiss!10022) (print!1061 Lexer!2275 (tokens!1970 thiss!10022)))))

(declare-fun lt!488316 () Unit!22639)

(assert (=> b!1433471 (= lt!488316 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 thiss!10022) lt!488309))))

(declare-fun lt!488318 () List!14956)

(declare-fun printList!705 (LexerInterface!2277 List!14956) List!14954)

(declare-fun ++!3990 (List!14954 List!14954) List!14954)

(assert (=> b!1433471 (= (printList!705 Lexer!2275 lt!488318) (++!3990 (printList!705 Lexer!2275 lt!488309) (printList!705 Lexer!2275 lt!488311)))))

(declare-fun lt!488322 () Unit!22639)

(declare-fun lemmaPrintConcatSameAsConcatPrint!66 (LexerInterface!2277 List!14956 List!14956) Unit!22639)

(assert (=> b!1433471 (= lt!488322 (lemmaPrintConcatSameAsConcatPrint!66 Lexer!2275 lt!488309 lt!488311))))

(declare-fun b!1433472 () Bool)

(assert (=> b!1433472 (= e!915057 e!915054)))

(declare-fun res!649071 () Bool)

(assert (=> b!1433472 (=> res!649071 e!915054)))

(declare-fun tokensListTwoByTwoPredicateSeparable!112 (LexerInterface!2277 BalanceConc!10046 Int List!14957) Bool)

(assert (=> b!1433472 (= res!649071 (not (tokensListTwoByTwoPredicateSeparable!112 Lexer!2275 lt!488314 0 (rules!11378 thiss!10022))))))

(declare-fun ++!3991 (BalanceConc!10046 BalanceConc!10046) BalanceConc!10046)

(assert (=> b!1433472 (= lt!488314 (++!3991 (tokens!1970 thiss!10022) (tokens!1970 other!32)))))

(declare-fun e!915061 () Bool)

(assert (=> b!1433472 e!915061))

(declare-fun res!649075 () Bool)

(assert (=> b!1433472 (=> (not res!649075) (not e!915061))))

(declare-fun rulesProduceEachTokenIndividuallyList!720 (LexerInterface!2277 List!14957 List!14956) Bool)

(assert (=> b!1433472 (= res!649075 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) lt!488318))))

(declare-fun ++!3992 (List!14956 List!14956) List!14956)

(assert (=> b!1433472 (= lt!488318 (++!3992 lt!488309 lt!488311))))

(declare-fun lt!488304 () Unit!22639)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!50 (LexerInterface!2277 List!14957 List!14956 List!14956) Unit!22639)

(assert (=> b!1433472 (= lt!488304 (lemmaRulesProduceEachTokenIndividuallyConcat!50 Lexer!2275 (rules!11378 thiss!10022) lt!488309 lt!488311))))

(declare-fun lt!488308 () Unit!22639)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!50 (LexerInterface!2277 List!14956 List!14956 List!14957) Unit!22639)

(assert (=> b!1433472 (= lt!488308 (tokensListTwoByTwoPredicateConcatSeparableTokensList!50 Lexer!2275 lt!488309 lt!488311 (rules!11378 thiss!10022)))))

(declare-fun b!1433473 () Bool)

(declare-fun e!915059 () Bool)

(declare-fun e!915062 () Bool)

(declare-fun tp!406214 () Bool)

(declare-fun inv!19775 (BalanceConc!10046) Bool)

(assert (=> b!1433473 (= e!915059 (and tp!406214 (inv!19775 (tokens!1970 other!32)) e!915062))))

(declare-fun b!1433474 () Bool)

(declare-fun e!915063 () Bool)

(assert (=> b!1433474 (= e!915058 e!915063)))

(declare-fun res!649067 () Bool)

(assert (=> b!1433474 (=> res!649067 e!915063)))

(declare-fun lt!488321 () PrintableTokens!1008)

(assert (=> b!1433474 (= res!649067 (not (= (rules!11378 lt!488321) (rules!11378 thiss!10022))))))

(declare-fun get!4556 (Option!2841) PrintableTokens!1008)

(assert (=> b!1433474 (= lt!488321 (get!4556 lt!488312))))

(declare-fun e!915053 () Bool)

(declare-fun tp!406216 () Bool)

(declare-fun e!915056 () Bool)

(declare-fun b!1433475 () Bool)

(assert (=> b!1433475 (= e!915053 (and tp!406216 (inv!19775 (tokens!1970 thiss!10022)) e!915056))))

(declare-fun b!1433476 () Bool)

(declare-fun e!915055 () Bool)

(assert (=> b!1433476 (= e!915055 e!915060)))

(declare-fun res!649073 () Bool)

(assert (=> b!1433476 (=> (not res!649073) (not e!915060))))

(declare-fun isEmpty!9249 (BalanceConc!10046) Bool)

(assert (=> b!1433476 (= res!649073 (not (isEmpty!9249 (tokens!1970 other!32))))))

(declare-fun lt!488310 () Unit!22639)

(declare-fun lemmaInvariant!309 (PrintableTokens!1008) Unit!22639)

(assert (=> b!1433476 (= lt!488310 (lemmaInvariant!309 thiss!10022))))

(declare-fun lt!488307 () Unit!22639)

(assert (=> b!1433476 (= lt!488307 (lemmaInvariant!309 other!32))))

(declare-fun b!1433477 () Bool)

(declare-fun isDefined!2302 (Option!2841) Bool)

(assert (=> b!1433477 (= e!915063 (isDefined!2302 lt!488312))))

(declare-fun b!1433478 () Bool)

(declare-fun res!649072 () Bool)

(assert (=> b!1433478 (=> (not res!649072) (not e!915060))))

(assert (=> b!1433478 (= res!649072 (not (isEmpty!9249 (tokens!1970 thiss!10022))))))

(declare-fun res!649068 () Bool)

(assert (=> start!132712 (=> (not res!649068) (not e!915055))))

(assert (=> start!132712 (= res!649068 (= (rules!11378 thiss!10022) (rules!11378 other!32)))))

(assert (=> start!132712 e!915055))

(declare-fun inv!19776 (PrintableTokens!1008) Bool)

(assert (=> start!132712 (and (inv!19776 thiss!10022) e!915053)))

(assert (=> start!132712 (and (inv!19776 other!32) e!915059)))

(declare-fun b!1433479 () Bool)

(declare-fun tp!406213 () Bool)

(declare-fun inv!19777 (Conc!5053) Bool)

(assert (=> b!1433479 (= e!915056 (and (inv!19777 (c!235578 (tokens!1970 thiss!10022))) tp!406213))))

(declare-fun b!1433480 () Bool)

(declare-fun res!649074 () Bool)

(assert (=> b!1433480 (=> res!649074 e!915063)))

(assert (=> b!1433480 (= res!649074 (not (= (list!5918 (tokens!1970 lt!488321)) lt!488318)))))

(declare-fun b!1433481 () Bool)

(declare-fun tp!406215 () Bool)

(assert (=> b!1433481 (= e!915062 (and (inv!19777 (c!235578 (tokens!1970 other!32))) tp!406215))))

(declare-fun b!1433482 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!235 (LexerInterface!2277 List!14956 List!14957) Bool)

(assert (=> b!1433482 (= e!915061 (tokensListTwoByTwoPredicateSeparableList!235 Lexer!2275 lt!488318 (rules!11378 thiss!10022)))))

(assert (= (and start!132712 res!649068) b!1433476))

(assert (= (and b!1433476 res!649073) b!1433478))

(assert (= (and b!1433478 res!649072) b!1433470))

(assert (= (and b!1433470 (not res!649069)) b!1433472))

(assert (= (and b!1433472 res!649075) b!1433482))

(assert (= (and b!1433472 (not res!649071)) b!1433471))

(assert (= (and b!1433471 (not res!649070)) b!1433474))

(assert (= (and b!1433474 (not res!649067)) b!1433480))

(assert (= (and b!1433480 (not res!649074)) b!1433477))

(assert (= b!1433475 b!1433479))

(assert (= start!132712 b!1433475))

(assert (= b!1433473 b!1433481))

(assert (= start!132712 b!1433473))

(declare-fun m!1635399 () Bool)

(assert (=> b!1433472 m!1635399))

(declare-fun m!1635401 () Bool)

(assert (=> b!1433472 m!1635401))

(declare-fun m!1635403 () Bool)

(assert (=> b!1433472 m!1635403))

(declare-fun m!1635405 () Bool)

(assert (=> b!1433472 m!1635405))

(declare-fun m!1635407 () Bool)

(assert (=> b!1433472 m!1635407))

(declare-fun m!1635409 () Bool)

(assert (=> b!1433472 m!1635409))

(declare-fun m!1635411 () Bool)

(assert (=> start!132712 m!1635411))

(declare-fun m!1635413 () Bool)

(assert (=> start!132712 m!1635413))

(declare-fun m!1635415 () Bool)

(assert (=> b!1433473 m!1635415))

(declare-fun m!1635417 () Bool)

(assert (=> b!1433481 m!1635417))

(declare-fun m!1635419 () Bool)

(assert (=> b!1433476 m!1635419))

(declare-fun m!1635421 () Bool)

(assert (=> b!1433476 m!1635421))

(declare-fun m!1635423 () Bool)

(assert (=> b!1433476 m!1635423))

(declare-fun m!1635425 () Bool)

(assert (=> b!1433470 m!1635425))

(declare-fun m!1635427 () Bool)

(assert (=> b!1433470 m!1635427))

(declare-fun m!1635429 () Bool)

(assert (=> b!1433470 m!1635429))

(declare-fun m!1635431 () Bool)

(assert (=> b!1433470 m!1635431))

(declare-fun m!1635433 () Bool)

(assert (=> b!1433470 m!1635433))

(declare-fun m!1635435 () Bool)

(assert (=> b!1433470 m!1635435))

(declare-fun m!1635437 () Bool)

(assert (=> b!1433470 m!1635437))

(declare-fun m!1635439 () Bool)

(assert (=> b!1433470 m!1635439))

(declare-fun m!1635441 () Bool)

(assert (=> b!1433470 m!1635441))

(declare-fun m!1635443 () Bool)

(assert (=> b!1433475 m!1635443))

(declare-fun m!1635445 () Bool)

(assert (=> b!1433478 m!1635445))

(declare-fun m!1635447 () Bool)

(assert (=> b!1433477 m!1635447))

(declare-fun m!1635449 () Bool)

(assert (=> b!1433479 m!1635449))

(declare-fun m!1635451 () Bool)

(assert (=> b!1433482 m!1635451))

(declare-fun m!1635453 () Bool)

(assert (=> b!1433480 m!1635453))

(declare-fun m!1635455 () Bool)

(assert (=> b!1433474 m!1635455))

(declare-fun m!1635457 () Bool)

(assert (=> b!1433471 m!1635457))

(declare-fun m!1635459 () Bool)

(assert (=> b!1433471 m!1635459))

(declare-fun m!1635461 () Bool)

(assert (=> b!1433471 m!1635461))

(declare-fun m!1635463 () Bool)

(assert (=> b!1433471 m!1635463))

(declare-fun m!1635465 () Bool)

(assert (=> b!1433471 m!1635465))

(declare-fun m!1635467 () Bool)

(assert (=> b!1433471 m!1635467))

(declare-fun m!1635469 () Bool)

(assert (=> b!1433471 m!1635469))

(assert (=> b!1433471 m!1635469))

(declare-fun m!1635471 () Bool)

(assert (=> b!1433471 m!1635471))

(declare-fun m!1635473 () Bool)

(assert (=> b!1433471 m!1635473))

(declare-fun m!1635475 () Bool)

(assert (=> b!1433471 m!1635475))

(declare-fun m!1635477 () Bool)

(assert (=> b!1433471 m!1635477))

(declare-fun m!1635479 () Bool)

(assert (=> b!1433471 m!1635479))

(declare-fun m!1635481 () Bool)

(assert (=> b!1433471 m!1635481))

(declare-fun m!1635483 () Bool)

(assert (=> b!1433471 m!1635483))

(declare-fun m!1635485 () Bool)

(assert (=> b!1433471 m!1635485))

(declare-fun m!1635487 () Bool)

(assert (=> b!1433471 m!1635487))

(assert (=> b!1433471 m!1635461))

(assert (=> b!1433471 m!1635471))

(check-sat (not start!132712) (not b!1433470) (not b!1433471) (not b!1433480) (not b!1433477) (not b!1433473) (not b!1433481) (not b!1433475) (not b!1433474) (not b!1433479) (not b!1433476) (not b!1433482) (not b!1433472) (not b!1433478))
(check-sat)
(get-model)

(declare-fun d!412580 () Bool)

(assert (=> d!412580 (= (get!4556 lt!488312) (v!22334 lt!488312))))

(assert (=> b!1433474 d!412580))

(declare-fun d!412582 () Bool)

(declare-fun res!649107 () Bool)

(declare-fun e!915082 () Bool)

(assert (=> d!412582 (=> (not res!649107) (not e!915082))))

(declare-fun isEmpty!9251 (List!14957) Bool)

(assert (=> d!412582 (= res!649107 (not (isEmpty!9251 (rules!11378 thiss!10022))))))

(assert (=> d!412582 (= (inv!19776 thiss!10022) e!915082)))

(declare-fun b!1433516 () Bool)

(declare-fun res!649108 () Bool)

(assert (=> b!1433516 (=> (not res!649108) (not e!915082))))

(declare-fun rulesInvariant!2121 (LexerInterface!2277 List!14957) Bool)

(assert (=> b!1433516 (= res!649108 (rulesInvariant!2121 Lexer!2275 (rules!11378 thiss!10022)))))

(declare-fun b!1433517 () Bool)

(declare-fun res!649109 () Bool)

(assert (=> b!1433517 (=> (not res!649109) (not e!915082))))

(declare-fun rulesProduceEachTokenIndividually!839 (LexerInterface!2277 List!14957 BalanceConc!10046) Bool)

(assert (=> b!1433517 (= res!649109 (rulesProduceEachTokenIndividually!839 Lexer!2275 (rules!11378 thiss!10022) (tokens!1970 thiss!10022)))))

(declare-fun b!1433518 () Bool)

(declare-fun separableTokens!223 (LexerInterface!2277 BalanceConc!10046 List!14957) Bool)

(assert (=> b!1433518 (= e!915082 (separableTokens!223 Lexer!2275 (tokens!1970 thiss!10022) (rules!11378 thiss!10022)))))

(assert (= (and d!412582 res!649107) b!1433516))

(assert (= (and b!1433516 res!649108) b!1433517))

(assert (= (and b!1433517 res!649109) b!1433518))

(declare-fun m!1635527 () Bool)

(assert (=> d!412582 m!1635527))

(declare-fun m!1635529 () Bool)

(assert (=> b!1433516 m!1635529))

(declare-fun m!1635531 () Bool)

(assert (=> b!1433517 m!1635531))

(declare-fun m!1635533 () Bool)

(assert (=> b!1433518 m!1635533))

(assert (=> start!132712 d!412582))

(declare-fun d!412598 () Bool)

(declare-fun res!649110 () Bool)

(declare-fun e!915083 () Bool)

(assert (=> d!412598 (=> (not res!649110) (not e!915083))))

(assert (=> d!412598 (= res!649110 (not (isEmpty!9251 (rules!11378 other!32))))))

(assert (=> d!412598 (= (inv!19776 other!32) e!915083)))

(declare-fun b!1433519 () Bool)

(declare-fun res!649111 () Bool)

(assert (=> b!1433519 (=> (not res!649111) (not e!915083))))

(assert (=> b!1433519 (= res!649111 (rulesInvariant!2121 Lexer!2275 (rules!11378 other!32)))))

(declare-fun b!1433520 () Bool)

(declare-fun res!649112 () Bool)

(assert (=> b!1433520 (=> (not res!649112) (not e!915083))))

(assert (=> b!1433520 (= res!649112 (rulesProduceEachTokenIndividually!839 Lexer!2275 (rules!11378 other!32) (tokens!1970 other!32)))))

(declare-fun b!1433521 () Bool)

(assert (=> b!1433521 (= e!915083 (separableTokens!223 Lexer!2275 (tokens!1970 other!32) (rules!11378 other!32)))))

(assert (= (and d!412598 res!649110) b!1433519))

(assert (= (and b!1433519 res!649111) b!1433520))

(assert (= (and b!1433520 res!649112) b!1433521))

(declare-fun m!1635535 () Bool)

(assert (=> d!412598 m!1635535))

(declare-fun m!1635537 () Bool)

(assert (=> b!1433519 m!1635537))

(declare-fun m!1635539 () Bool)

(assert (=> b!1433520 m!1635539))

(declare-fun m!1635541 () Bool)

(assert (=> b!1433521 m!1635541))

(assert (=> start!132712 d!412598))

(declare-fun d!412600 () Bool)

(declare-fun isBalanced!1501 (Conc!5053) Bool)

(assert (=> d!412600 (= (inv!19775 (tokens!1970 other!32)) (isBalanced!1501 (c!235578 (tokens!1970 other!32))))))

(declare-fun bs!340937 () Bool)

(assert (= bs!340937 d!412600))

(declare-fun m!1635543 () Bool)

(assert (=> bs!340937 m!1635543))

(assert (=> b!1433473 d!412600))

(declare-fun b!1433578 () Bool)

(declare-fun e!915114 () Bool)

(assert (=> b!1433578 (= e!915114 true)))

(declare-fun b!1433577 () Bool)

(declare-fun e!915113 () Bool)

(assert (=> b!1433577 (= e!915113 e!915114)))

(declare-fun b!1433576 () Bool)

(declare-fun e!915112 () Bool)

(assert (=> b!1433576 (= e!915112 e!915113)))

(declare-fun d!412602 () Bool)

(assert (=> d!412602 e!915112))

(assert (= b!1433577 b!1433578))

(assert (= b!1433576 b!1433577))

(get-info :version)

(assert (= (and d!412602 ((_ is Cons!14891) (rules!11378 thiss!10022))) b!1433576))

(declare-fun lambda!62812 () Int)

(declare-fun order!8957 () Int)

(declare-fun order!8955 () Int)

(declare-fun dynLambda!6797 (Int Int) Int)

(declare-fun dynLambda!6798 (Int Int) Int)

(assert (=> b!1433578 (< (dynLambda!6797 order!8955 (toValue!3916 (transformation!2613 (h!20292 (rules!11378 thiss!10022))))) (dynLambda!6798 order!8957 lambda!62812))))

(declare-fun order!8959 () Int)

(declare-fun dynLambda!6799 (Int Int) Int)

(assert (=> b!1433578 (< (dynLambda!6799 order!8959 (toChars!3775 (transformation!2613 (h!20292 (rules!11378 thiss!10022))))) (dynLambda!6798 order!8957 lambda!62812))))

(assert (=> d!412602 true))

(declare-fun lt!488366 () Bool)

(declare-fun forall!3666 (List!14956 Int) Bool)

(assert (=> d!412602 (= lt!488366 (forall!3666 lt!488318 lambda!62812))))

(declare-fun e!915105 () Bool)

(assert (=> d!412602 (= lt!488366 e!915105)))

(declare-fun res!649151 () Bool)

(assert (=> d!412602 (=> res!649151 e!915105)))

(assert (=> d!412602 (= res!649151 (not ((_ is Cons!14890) lt!488318)))))

(assert (=> d!412602 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412602 (= (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) lt!488318) lt!488366)))

(declare-fun b!1433566 () Bool)

(declare-fun e!915104 () Bool)

(assert (=> b!1433566 (= e!915105 e!915104)))

(declare-fun res!649152 () Bool)

(assert (=> b!1433566 (=> (not res!649152) (not e!915104))))

(assert (=> b!1433566 (= res!649152 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) (h!20291 lt!488318)))))

(declare-fun b!1433567 () Bool)

(assert (=> b!1433567 (= e!915104 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) (t!127191 lt!488318)))))

(assert (= (and d!412602 (not res!649151)) b!1433566))

(assert (= (and b!1433566 res!649152) b!1433567))

(declare-fun m!1635589 () Bool)

(assert (=> d!412602 m!1635589))

(assert (=> d!412602 m!1635527))

(declare-fun m!1635591 () Bool)

(assert (=> b!1433566 m!1635591))

(declare-fun m!1635593 () Bool)

(assert (=> b!1433567 m!1635593))

(assert (=> b!1433472 d!412602))

(declare-fun lt!488369 () List!14956)

(declare-fun b!1433592 () Bool)

(declare-fun e!915120 () Bool)

(assert (=> b!1433592 (= e!915120 (or (not (= lt!488311 Nil!14890)) (= lt!488369 lt!488309)))))

(declare-fun b!1433589 () Bool)

(declare-fun e!915119 () List!14956)

(assert (=> b!1433589 (= e!915119 lt!488311)))

(declare-fun b!1433590 () Bool)

(assert (=> b!1433590 (= e!915119 (Cons!14890 (h!20291 lt!488309) (++!3992 (t!127191 lt!488309) lt!488311)))))

(declare-fun d!412612 () Bool)

(assert (=> d!412612 e!915120))

(declare-fun res!649158 () Bool)

(assert (=> d!412612 (=> (not res!649158) (not e!915120))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2199 (List!14956) (InoxSet Token!4888))

(assert (=> d!412612 (= res!649158 (= (content!2199 lt!488369) ((_ map or) (content!2199 lt!488309) (content!2199 lt!488311))))))

(assert (=> d!412612 (= lt!488369 e!915119)))

(declare-fun c!235590 () Bool)

(assert (=> d!412612 (= c!235590 ((_ is Nil!14890) lt!488309))))

(assert (=> d!412612 (= (++!3992 lt!488309 lt!488311) lt!488369)))

(declare-fun b!1433591 () Bool)

(declare-fun res!649157 () Bool)

(assert (=> b!1433591 (=> (not res!649157) (not e!915120))))

(declare-fun size!12221 (List!14956) Int)

(assert (=> b!1433591 (= res!649157 (= (size!12221 lt!488369) (+ (size!12221 lt!488309) (size!12221 lt!488311))))))

(assert (= (and d!412612 c!235590) b!1433589))

(assert (= (and d!412612 (not c!235590)) b!1433590))

(assert (= (and d!412612 res!649158) b!1433591))

(assert (= (and b!1433591 res!649157) b!1433592))

(declare-fun m!1635595 () Bool)

(assert (=> b!1433590 m!1635595))

(declare-fun m!1635597 () Bool)

(assert (=> d!412612 m!1635597))

(declare-fun m!1635599 () Bool)

(assert (=> d!412612 m!1635599))

(declare-fun m!1635601 () Bool)

(assert (=> d!412612 m!1635601))

(declare-fun m!1635603 () Bool)

(assert (=> b!1433591 m!1635603))

(declare-fun m!1635605 () Bool)

(assert (=> b!1433591 m!1635605))

(declare-fun m!1635607 () Bool)

(assert (=> b!1433591 m!1635607))

(assert (=> b!1433472 d!412612))

(declare-fun b!1433624 () Bool)

(declare-fun e!915143 () Bool)

(declare-fun e!915142 () Bool)

(assert (=> b!1433624 (= e!915143 e!915142)))

(declare-fun res!649183 () Bool)

(assert (=> b!1433624 (=> (not res!649183) (not e!915142))))

(declare-fun apply!3812 (BalanceConc!10046 Int) Token!4888)

(assert (=> b!1433624 (= res!649183 (separableTokensPredicate!512 Lexer!2275 (apply!3812 lt!488314 0) (apply!3812 lt!488314 (+ 0 1)) (rules!11378 thiss!10022)))))

(declare-fun lt!488443 () Unit!22639)

(declare-fun Unit!22647 () Unit!22639)

(assert (=> b!1433624 (= lt!488443 Unit!22647)))

(declare-fun size!12222 (BalanceConc!10044) Int)

(declare-fun charsOf!1513 (Token!4888) BalanceConc!10044)

(assert (=> b!1433624 (> (size!12222 (charsOf!1513 (apply!3812 lt!488314 (+ 0 1)))) 0)))

(declare-fun lt!488466 () Unit!22639)

(declare-fun Unit!22648 () Unit!22639)

(assert (=> b!1433624 (= lt!488466 Unit!22648)))

(assert (=> b!1433624 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) (apply!3812 lt!488314 (+ 0 1)))))

(declare-fun lt!488458 () Unit!22639)

(declare-fun Unit!22650 () Unit!22639)

(assert (=> b!1433624 (= lt!488458 Unit!22650)))

(assert (=> b!1433624 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) (apply!3812 lt!488314 0))))

(declare-fun lt!488452 () Unit!22639)

(declare-fun lt!488441 () Unit!22639)

(assert (=> b!1433624 (= lt!488452 lt!488441)))

(declare-fun lt!488455 () Token!4888)

(assert (=> b!1433624 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488455)))

(declare-fun lt!488446 () List!14956)

(assert (=> b!1433624 (= lt!488441 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488446 lt!488455))))

(assert (=> b!1433624 (= lt!488455 (apply!3812 lt!488314 (+ 0 1)))))

(assert (=> b!1433624 (= lt!488446 (list!5918 lt!488314))))

(declare-fun lt!488463 () Unit!22639)

(declare-fun lt!488453 () Unit!22639)

(assert (=> b!1433624 (= lt!488463 lt!488453)))

(declare-fun lt!488449 () Token!4888)

(assert (=> b!1433624 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488449)))

(declare-fun lt!488438 () List!14956)

(assert (=> b!1433624 (= lt!488453 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488438 lt!488449))))

(assert (=> b!1433624 (= lt!488449 (apply!3812 lt!488314 0))))

(assert (=> b!1433624 (= lt!488438 (list!5918 lt!488314))))

(declare-fun lt!488447 () Unit!22639)

(declare-fun lt!488444 () Unit!22639)

(assert (=> b!1433624 (= lt!488447 lt!488444)))

(declare-fun lt!488459 () List!14956)

(declare-fun lt!488445 () Int)

(declare-fun tail!2150 (List!14956) List!14956)

(declare-fun drop!728 (List!14956 Int) List!14956)

(assert (=> b!1433624 (= (tail!2150 (drop!728 lt!488459 lt!488445)) (drop!728 lt!488459 (+ lt!488445 1)))))

(declare-fun lemmaDropTail!460 (List!14956 Int) Unit!22639)

(assert (=> b!1433624 (= lt!488444 (lemmaDropTail!460 lt!488459 lt!488445))))

(assert (=> b!1433624 (= lt!488445 (+ 0 1))))

(assert (=> b!1433624 (= lt!488459 (list!5918 lt!488314))))

(declare-fun lt!488468 () Unit!22639)

(declare-fun lt!488469 () Unit!22639)

(assert (=> b!1433624 (= lt!488468 lt!488469)))

(declare-fun lt!488464 () List!14956)

(assert (=> b!1433624 (= (tail!2150 (drop!728 lt!488464 0)) (drop!728 lt!488464 (+ 0 1)))))

(assert (=> b!1433624 (= lt!488469 (lemmaDropTail!460 lt!488464 0))))

(assert (=> b!1433624 (= lt!488464 (list!5918 lt!488314))))

(declare-fun lt!488465 () Unit!22639)

(declare-fun lt!488442 () Unit!22639)

(assert (=> b!1433624 (= lt!488465 lt!488442)))

(declare-fun lt!488460 () List!14956)

(declare-fun lt!488448 () Int)

(declare-fun head!2892 (List!14956) Token!4888)

(declare-fun apply!3813 (List!14956 Int) Token!4888)

(assert (=> b!1433624 (= (head!2892 (drop!728 lt!488460 lt!488448)) (apply!3813 lt!488460 lt!488448))))

(declare-fun lemmaDropApply!480 (List!14956 Int) Unit!22639)

(assert (=> b!1433624 (= lt!488442 (lemmaDropApply!480 lt!488460 lt!488448))))

(assert (=> b!1433624 (= lt!488448 (+ 0 1))))

(assert (=> b!1433624 (= lt!488460 (list!5918 lt!488314))))

(declare-fun lt!488456 () Unit!22639)

(declare-fun lt!488457 () Unit!22639)

(assert (=> b!1433624 (= lt!488456 lt!488457)))

(declare-fun lt!488437 () List!14956)

(assert (=> b!1433624 (= (head!2892 (drop!728 lt!488437 0)) (apply!3813 lt!488437 0))))

(assert (=> b!1433624 (= lt!488457 (lemmaDropApply!480 lt!488437 0))))

(assert (=> b!1433624 (= lt!488437 (list!5918 lt!488314))))

(declare-fun b!1433625 () Bool)

(declare-fun res!649177 () Bool)

(declare-fun e!915146 () Bool)

(assert (=> b!1433625 (=> (not res!649177) (not e!915146))))

(assert (=> b!1433625 (= res!649177 (not (isEmpty!9251 (rules!11378 thiss!10022))))))

(declare-fun b!1433626 () Bool)

(declare-fun lt!488439 () List!14956)

(assert (=> b!1433626 (= e!915146 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) lt!488439))))

(declare-fun d!412614 () Bool)

(declare-fun lt!488462 () Bool)

(declare-fun dropList!460 (BalanceConc!10046 Int) List!14956)

(assert (=> d!412614 (= lt!488462 (tokensListTwoByTwoPredicateSeparableList!235 Lexer!2275 (dropList!460 lt!488314 0) (rules!11378 thiss!10022)))))

(declare-fun lt!488450 () Unit!22639)

(declare-fun lt!488467 () Unit!22639)

(assert (=> d!412614 (= lt!488450 lt!488467)))

(declare-fun lt!488440 () List!14956)

(assert (=> d!412614 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) lt!488440)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!54 (LexerInterface!2277 List!14957 List!14956 List!14956) Unit!22639)

(assert (=> d!412614 (= lt!488467 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!54 Lexer!2275 (rules!11378 thiss!10022) lt!488439 lt!488440))))

(assert (=> d!412614 e!915146))

(declare-fun res!649179 () Bool)

(assert (=> d!412614 (=> (not res!649179) (not e!915146))))

(assert (=> d!412614 (= res!649179 ((_ is Lexer!2275) Lexer!2275))))

(assert (=> d!412614 (= lt!488440 (dropList!460 lt!488314 0))))

(assert (=> d!412614 (= lt!488439 (list!5918 lt!488314))))

(declare-fun lt!488451 () Unit!22639)

(declare-fun lt!488454 () Unit!22639)

(assert (=> d!412614 (= lt!488451 lt!488454)))

(declare-fun lt!488461 () List!14956)

(declare-fun subseq!359 (List!14956 List!14956) Bool)

(assert (=> d!412614 (subseq!359 (drop!728 lt!488461 0) lt!488461)))

(declare-fun lemmaDropSubSeq!54 (List!14956 Int) Unit!22639)

(assert (=> d!412614 (= lt!488454 (lemmaDropSubSeq!54 lt!488461 0))))

(declare-fun e!915145 () Bool)

(assert (=> d!412614 e!915145))

(declare-fun res!649184 () Bool)

(assert (=> d!412614 (=> (not res!649184) (not e!915145))))

(assert (=> d!412614 (= res!649184 (>= 0 0))))

(assert (=> d!412614 (= lt!488461 (list!5918 lt!488314))))

(assert (=> d!412614 (= lt!488462 e!915143)))

(declare-fun res!649180 () Bool)

(assert (=> d!412614 (=> res!649180 e!915143)))

(declare-fun size!12223 (BalanceConc!10046) Int)

(assert (=> d!412614 (= res!649180 (not (< 0 (- (size!12223 lt!488314) 1))))))

(declare-fun e!915144 () Bool)

(assert (=> d!412614 e!915144))

(declare-fun res!649182 () Bool)

(assert (=> d!412614 (=> (not res!649182) (not e!915144))))

(assert (=> d!412614 (= res!649182 (>= 0 0))))

(assert (=> d!412614 (= (tokensListTwoByTwoPredicateSeparable!112 Lexer!2275 lt!488314 0 (rules!11378 thiss!10022)) lt!488462)))

(declare-fun b!1433627 () Bool)

(declare-fun res!649181 () Bool)

(assert (=> b!1433627 (=> (not res!649181) (not e!915146))))

(assert (=> b!1433627 (= res!649181 (rulesInvariant!2121 Lexer!2275 (rules!11378 thiss!10022)))))

(declare-fun b!1433628 () Bool)

(assert (=> b!1433628 (= e!915142 (tokensListTwoByTwoPredicateSeparable!112 Lexer!2275 lt!488314 (+ 0 1) (rules!11378 thiss!10022)))))

(declare-fun b!1433629 () Bool)

(assert (=> b!1433629 (= e!915144 (<= 0 (size!12223 lt!488314)))))

(declare-fun b!1433630 () Bool)

(assert (=> b!1433630 (= e!915145 (<= 0 (size!12221 lt!488461)))))

(declare-fun b!1433631 () Bool)

(declare-fun res!649178 () Bool)

(assert (=> b!1433631 (=> (not res!649178) (not e!915146))))

(assert (=> b!1433631 (= res!649178 (subseq!359 lt!488440 lt!488439))))

(assert (= (and d!412614 res!649182) b!1433629))

(assert (= (and d!412614 (not res!649180)) b!1433624))

(assert (= (and b!1433624 res!649183) b!1433628))

(assert (= (and d!412614 res!649184) b!1433630))

(assert (= (and d!412614 res!649179) b!1433625))

(assert (= (and b!1433625 res!649177) b!1433627))

(assert (= (and b!1433627 res!649181) b!1433631))

(assert (= (and b!1433631 res!649178) b!1433626))

(declare-fun m!1635613 () Bool)

(assert (=> d!412614 m!1635613))

(declare-fun m!1635615 () Bool)

(assert (=> d!412614 m!1635615))

(declare-fun m!1635617 () Bool)

(assert (=> d!412614 m!1635617))

(assert (=> d!412614 m!1635613))

(declare-fun m!1635619 () Bool)

(assert (=> d!412614 m!1635619))

(declare-fun m!1635621 () Bool)

(assert (=> d!412614 m!1635621))

(declare-fun m!1635623 () Bool)

(assert (=> d!412614 m!1635623))

(declare-fun m!1635625 () Bool)

(assert (=> d!412614 m!1635625))

(assert (=> d!412614 m!1635461))

(declare-fun m!1635627 () Bool)

(assert (=> d!412614 m!1635627))

(assert (=> d!412614 m!1635623))

(declare-fun m!1635629 () Bool)

(assert (=> b!1433628 m!1635629))

(declare-fun m!1635631 () Bool)

(assert (=> b!1433626 m!1635631))

(declare-fun m!1635633 () Bool)

(assert (=> b!1433631 m!1635633))

(declare-fun m!1635635 () Bool)

(assert (=> b!1433624 m!1635635))

(declare-fun m!1635637 () Bool)

(assert (=> b!1433624 m!1635637))

(declare-fun m!1635639 () Bool)

(assert (=> b!1433624 m!1635639))

(declare-fun m!1635641 () Bool)

(assert (=> b!1433624 m!1635641))

(declare-fun m!1635643 () Bool)

(assert (=> b!1433624 m!1635643))

(declare-fun m!1635645 () Bool)

(assert (=> b!1433624 m!1635645))

(declare-fun m!1635647 () Bool)

(assert (=> b!1433624 m!1635647))

(declare-fun m!1635649 () Bool)

(assert (=> b!1433624 m!1635649))

(declare-fun m!1635651 () Bool)

(assert (=> b!1433624 m!1635651))

(declare-fun m!1635653 () Bool)

(assert (=> b!1433624 m!1635653))

(declare-fun m!1635655 () Bool)

(assert (=> b!1433624 m!1635655))

(declare-fun m!1635657 () Bool)

(assert (=> b!1433624 m!1635657))

(assert (=> b!1433624 m!1635461))

(declare-fun m!1635659 () Bool)

(assert (=> b!1433624 m!1635659))

(declare-fun m!1635661 () Bool)

(assert (=> b!1433624 m!1635661))

(declare-fun m!1635663 () Bool)

(assert (=> b!1433624 m!1635663))

(assert (=> b!1433624 m!1635653))

(declare-fun m!1635665 () Bool)

(assert (=> b!1433624 m!1635665))

(declare-fun m!1635667 () Bool)

(assert (=> b!1433624 m!1635667))

(declare-fun m!1635669 () Bool)

(assert (=> b!1433624 m!1635669))

(declare-fun m!1635671 () Bool)

(assert (=> b!1433624 m!1635671))

(assert (=> b!1433624 m!1635649))

(declare-fun m!1635673 () Bool)

(assert (=> b!1433624 m!1635673))

(assert (=> b!1433624 m!1635651))

(assert (=> b!1433624 m!1635661))

(declare-fun m!1635675 () Bool)

(assert (=> b!1433624 m!1635675))

(declare-fun m!1635677 () Bool)

(assert (=> b!1433624 m!1635677))

(assert (=> b!1433624 m!1635651))

(declare-fun m!1635679 () Bool)

(assert (=> b!1433624 m!1635679))

(assert (=> b!1433624 m!1635667))

(assert (=> b!1433624 m!1635651))

(declare-fun m!1635681 () Bool)

(assert (=> b!1433624 m!1635681))

(declare-fun m!1635683 () Bool)

(assert (=> b!1433624 m!1635683))

(declare-fun m!1635685 () Bool)

(assert (=> b!1433624 m!1635685))

(assert (=> b!1433624 m!1635677))

(declare-fun m!1635687 () Bool)

(assert (=> b!1433624 m!1635687))

(assert (=> b!1433624 m!1635677))

(assert (=> b!1433624 m!1635643))

(assert (=> b!1433625 m!1635527))

(declare-fun m!1635689 () Bool)

(assert (=> b!1433630 m!1635689))

(assert (=> b!1433629 m!1635615))

(assert (=> b!1433627 m!1635529))

(assert (=> b!1433472 d!412614))

(declare-fun d!412618 () Bool)

(assert (=> d!412618 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) (++!3992 lt!488309 lt!488311))))

(declare-fun lt!488472 () Unit!22639)

(declare-fun choose!8833 (LexerInterface!2277 List!14957 List!14956 List!14956) Unit!22639)

(assert (=> d!412618 (= lt!488472 (choose!8833 Lexer!2275 (rules!11378 thiss!10022) lt!488309 lt!488311))))

(assert (=> d!412618 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412618 (= (lemmaRulesProduceEachTokenIndividuallyConcat!50 Lexer!2275 (rules!11378 thiss!10022) lt!488309 lt!488311) lt!488472)))

(declare-fun bs!340939 () Bool)

(assert (= bs!340939 d!412618))

(assert (=> bs!340939 m!1635399))

(assert (=> bs!340939 m!1635399))

(declare-fun m!1635691 () Bool)

(assert (=> bs!340939 m!1635691))

(declare-fun m!1635693 () Bool)

(assert (=> bs!340939 m!1635693))

(assert (=> bs!340939 m!1635527))

(assert (=> b!1433472 d!412618))

(declare-fun d!412620 () Bool)

(declare-fun e!915149 () Bool)

(assert (=> d!412620 e!915149))

(declare-fun res!649194 () Bool)

(assert (=> d!412620 (=> (not res!649194) (not e!915149))))

(declare-fun appendAssocInst!317 (Conc!5053 Conc!5053) Bool)

(assert (=> d!412620 (= res!649194 (appendAssocInst!317 (c!235578 (tokens!1970 thiss!10022)) (c!235578 (tokens!1970 other!32))))))

(declare-fun lt!488475 () BalanceConc!10046)

(declare-fun ++!3995 (Conc!5053 Conc!5053) Conc!5053)

(assert (=> d!412620 (= lt!488475 (BalanceConc!10047 (++!3995 (c!235578 (tokens!1970 thiss!10022)) (c!235578 (tokens!1970 other!32)))))))

(assert (=> d!412620 (= (++!3991 (tokens!1970 thiss!10022) (tokens!1970 other!32)) lt!488475)))

(declare-fun b!1433640 () Bool)

(declare-fun res!649195 () Bool)

(assert (=> b!1433640 (=> (not res!649195) (not e!915149))))

(assert (=> b!1433640 (= res!649195 (isBalanced!1501 (++!3995 (c!235578 (tokens!1970 thiss!10022)) (c!235578 (tokens!1970 other!32)))))))

(declare-fun b!1433643 () Bool)

(assert (=> b!1433643 (= e!915149 (= (list!5918 lt!488475) (++!3992 (list!5918 (tokens!1970 thiss!10022)) (list!5918 (tokens!1970 other!32)))))))

(declare-fun b!1433642 () Bool)

(declare-fun res!649193 () Bool)

(assert (=> b!1433642 (=> (not res!649193) (not e!915149))))

(declare-fun height!738 (Conc!5053) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1433642 (= res!649193 (>= (height!738 (++!3995 (c!235578 (tokens!1970 thiss!10022)) (c!235578 (tokens!1970 other!32)))) (max!0 (height!738 (c!235578 (tokens!1970 thiss!10022))) (height!738 (c!235578 (tokens!1970 other!32))))))))

(declare-fun b!1433641 () Bool)

(declare-fun res!649196 () Bool)

(assert (=> b!1433641 (=> (not res!649196) (not e!915149))))

(assert (=> b!1433641 (= res!649196 (<= (height!738 (++!3995 (c!235578 (tokens!1970 thiss!10022)) (c!235578 (tokens!1970 other!32)))) (+ (max!0 (height!738 (c!235578 (tokens!1970 thiss!10022))) (height!738 (c!235578 (tokens!1970 other!32)))) 1)))))

(assert (= (and d!412620 res!649194) b!1433640))

(assert (= (and b!1433640 res!649195) b!1433641))

(assert (= (and b!1433641 res!649196) b!1433642))

(assert (= (and b!1433642 res!649193) b!1433643))

(declare-fun m!1635695 () Bool)

(assert (=> b!1433642 m!1635695))

(declare-fun m!1635697 () Bool)

(assert (=> b!1433642 m!1635697))

(declare-fun m!1635699 () Bool)

(assert (=> b!1433642 m!1635699))

(assert (=> b!1433642 m!1635697))

(assert (=> b!1433642 m!1635695))

(declare-fun m!1635701 () Bool)

(assert (=> b!1433642 m!1635701))

(declare-fun m!1635703 () Bool)

(assert (=> b!1433642 m!1635703))

(assert (=> b!1433642 m!1635701))

(declare-fun m!1635705 () Bool)

(assert (=> b!1433643 m!1635705))

(assert (=> b!1433643 m!1635431))

(assert (=> b!1433643 m!1635439))

(assert (=> b!1433643 m!1635431))

(assert (=> b!1433643 m!1635439))

(declare-fun m!1635707 () Bool)

(assert (=> b!1433643 m!1635707))

(assert (=> b!1433641 m!1635695))

(assert (=> b!1433641 m!1635697))

(assert (=> b!1433641 m!1635699))

(assert (=> b!1433641 m!1635697))

(assert (=> b!1433641 m!1635695))

(assert (=> b!1433641 m!1635701))

(assert (=> b!1433641 m!1635703))

(assert (=> b!1433641 m!1635701))

(declare-fun m!1635709 () Bool)

(assert (=> d!412620 m!1635709))

(assert (=> d!412620 m!1635697))

(assert (=> b!1433640 m!1635697))

(assert (=> b!1433640 m!1635697))

(declare-fun m!1635711 () Bool)

(assert (=> b!1433640 m!1635711))

(assert (=> b!1433472 d!412620))

(declare-fun b!1433677 () Bool)

(declare-fun res!649229 () Bool)

(declare-fun e!915167 () Bool)

(assert (=> b!1433677 (=> (not res!649229) (not e!915167))))

(assert (=> b!1433677 (= res!649229 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) lt!488309))))

(declare-fun b!1433679 () Bool)

(assert (=> b!1433679 (= e!915167 (tokensListTwoByTwoPredicateSeparableList!235 Lexer!2275 (++!3992 lt!488309 lt!488311) (rules!11378 thiss!10022)))))

(declare-fun lt!488582 () Unit!22639)

(declare-fun lt!488583 () Unit!22639)

(assert (=> b!1433679 (= lt!488582 lt!488583)))

(assert (=> b!1433679 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) (++!3992 lt!488309 lt!488311))))

(assert (=> b!1433679 (= lt!488583 (lemmaRulesProduceEachTokenIndividuallyConcat!50 Lexer!2275 (rules!11378 thiss!10022) lt!488309 lt!488311))))

(declare-fun d!412622 () Bool)

(assert (=> d!412622 e!915167))

(declare-fun res!649230 () Bool)

(assert (=> d!412622 (=> (not res!649230) (not e!915167))))

(assert (=> d!412622 (= res!649230 ((_ is Lexer!2275) Lexer!2275))))

(declare-fun lt!488581 () Unit!22639)

(declare-fun choose!8834 (LexerInterface!2277 List!14956 List!14956 List!14957) Unit!22639)

(assert (=> d!412622 (= lt!488581 (choose!8834 Lexer!2275 lt!488309 lt!488311 (rules!11378 thiss!10022)))))

(assert (=> d!412622 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412622 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!50 Lexer!2275 lt!488309 lt!488311 (rules!11378 thiss!10022)) lt!488581)))

(declare-fun b!1433676 () Bool)

(declare-fun res!649232 () Bool)

(assert (=> b!1433676 (=> (not res!649232) (not e!915167))))

(assert (=> b!1433676 (= res!649232 (rulesInvariant!2121 Lexer!2275 (rules!11378 thiss!10022)))))

(declare-fun b!1433678 () Bool)

(declare-fun res!649231 () Bool)

(assert (=> b!1433678 (=> (not res!649231) (not e!915167))))

(assert (=> b!1433678 (= res!649231 (rulesProduceEachTokenIndividuallyList!720 Lexer!2275 (rules!11378 thiss!10022) lt!488311))))

(assert (= (and d!412622 res!649230) b!1433676))

(assert (= (and b!1433676 res!649232) b!1433677))

(assert (= (and b!1433677 res!649229) b!1433678))

(assert (= (and b!1433678 res!649231) b!1433679))

(declare-fun m!1635791 () Bool)

(assert (=> b!1433678 m!1635791))

(assert (=> b!1433676 m!1635529))

(declare-fun m!1635793 () Bool)

(assert (=> b!1433677 m!1635793))

(declare-fun m!1635795 () Bool)

(assert (=> d!412622 m!1635795))

(assert (=> d!412622 m!1635527))

(assert (=> b!1433679 m!1635399))

(assert (=> b!1433679 m!1635399))

(declare-fun m!1635797 () Bool)

(assert (=> b!1433679 m!1635797))

(assert (=> b!1433679 m!1635399))

(assert (=> b!1433679 m!1635691))

(assert (=> b!1433679 m!1635403))

(assert (=> b!1433472 d!412622))

(declare-fun d!412626 () Bool)

(assert (=> d!412626 (= (isDefined!2302 lt!488312) (not (isEmpty!9248 lt!488312)))))

(declare-fun bs!340940 () Bool)

(assert (= bs!340940 d!412626))

(assert (=> bs!340940 m!1635465))

(assert (=> b!1433477 d!412626))

(declare-fun d!412628 () Bool)

(declare-fun lt!488586 () Bool)

(declare-fun isEmpty!9256 (List!14956) Bool)

(assert (=> d!412628 (= lt!488586 (isEmpty!9256 (list!5918 (tokens!1970 other!32))))))

(declare-fun isEmpty!9257 (Conc!5053) Bool)

(assert (=> d!412628 (= lt!488586 (isEmpty!9257 (c!235578 (tokens!1970 other!32))))))

(assert (=> d!412628 (= (isEmpty!9249 (tokens!1970 other!32)) lt!488586)))

(declare-fun bs!340941 () Bool)

(assert (= bs!340941 d!412628))

(assert (=> bs!340941 m!1635439))

(assert (=> bs!340941 m!1635439))

(declare-fun m!1635799 () Bool)

(assert (=> bs!340941 m!1635799))

(declare-fun m!1635801 () Bool)

(assert (=> bs!340941 m!1635801))

(assert (=> b!1433476 d!412628))

(declare-fun d!412630 () Bool)

(declare-fun e!915170 () Bool)

(assert (=> d!412630 e!915170))

(declare-fun res!649237 () Bool)

(assert (=> d!412630 (=> (not res!649237) (not e!915170))))

(assert (=> d!412630 (= res!649237 (rulesInvariant!2121 Lexer!2275 (rules!11378 thiss!10022)))))

(declare-fun Unit!22666 () Unit!22639)

(assert (=> d!412630 (= (lemmaInvariant!309 thiss!10022) Unit!22666)))

(declare-fun b!1433684 () Bool)

(declare-fun res!649238 () Bool)

(assert (=> b!1433684 (=> (not res!649238) (not e!915170))))

(assert (=> b!1433684 (= res!649238 (rulesProduceEachTokenIndividually!839 Lexer!2275 (rules!11378 thiss!10022) (tokens!1970 thiss!10022)))))

(declare-fun b!1433685 () Bool)

(assert (=> b!1433685 (= e!915170 (separableTokens!223 Lexer!2275 (tokens!1970 thiss!10022) (rules!11378 thiss!10022)))))

(assert (= (and d!412630 res!649237) b!1433684))

(assert (= (and b!1433684 res!649238) b!1433685))

(assert (=> d!412630 m!1635529))

(assert (=> b!1433684 m!1635531))

(assert (=> b!1433685 m!1635533))

(assert (=> b!1433476 d!412630))

(declare-fun d!412644 () Bool)

(declare-fun e!915171 () Bool)

(assert (=> d!412644 e!915171))

(declare-fun res!649239 () Bool)

(assert (=> d!412644 (=> (not res!649239) (not e!915171))))

(assert (=> d!412644 (= res!649239 (rulesInvariant!2121 Lexer!2275 (rules!11378 other!32)))))

(declare-fun Unit!22669 () Unit!22639)

(assert (=> d!412644 (= (lemmaInvariant!309 other!32) Unit!22669)))

(declare-fun b!1433686 () Bool)

(declare-fun res!649240 () Bool)

(assert (=> b!1433686 (=> (not res!649240) (not e!915171))))

(assert (=> b!1433686 (= res!649240 (rulesProduceEachTokenIndividually!839 Lexer!2275 (rules!11378 other!32) (tokens!1970 other!32)))))

(declare-fun b!1433687 () Bool)

(assert (=> b!1433687 (= e!915171 (separableTokens!223 Lexer!2275 (tokens!1970 other!32) (rules!11378 other!32)))))

(assert (= (and d!412644 res!649239) b!1433686))

(assert (= (and b!1433686 res!649240) b!1433687))

(assert (=> d!412644 m!1635537))

(assert (=> b!1433686 m!1635539))

(assert (=> b!1433687 m!1635541))

(assert (=> b!1433476 d!412644))

(declare-fun d!412646 () Bool)

(assert (=> d!412646 (= (inv!19775 (tokens!1970 thiss!10022)) (isBalanced!1501 (c!235578 (tokens!1970 thiss!10022))))))

(declare-fun bs!340948 () Bool)

(assert (= bs!340948 d!412646))

(declare-fun m!1635831 () Bool)

(assert (=> bs!340948 m!1635831))

(assert (=> b!1433475 d!412646))

(declare-fun d!412648 () Bool)

(declare-fun c!235596 () Bool)

(assert (=> d!412648 (= c!235596 ((_ is Node!5053) (c!235578 (tokens!1970 thiss!10022))))))

(declare-fun e!915176 () Bool)

(assert (=> d!412648 (= (inv!19777 (c!235578 (tokens!1970 thiss!10022))) e!915176)))

(declare-fun b!1433694 () Bool)

(declare-fun inv!19780 (Conc!5053) Bool)

(assert (=> b!1433694 (= e!915176 (inv!19780 (c!235578 (tokens!1970 thiss!10022))))))

(declare-fun b!1433695 () Bool)

(declare-fun e!915177 () Bool)

(assert (=> b!1433695 (= e!915176 e!915177)))

(declare-fun res!649243 () Bool)

(assert (=> b!1433695 (= res!649243 (not ((_ is Leaf!7561) (c!235578 (tokens!1970 thiss!10022)))))))

(assert (=> b!1433695 (=> res!649243 e!915177)))

(declare-fun b!1433696 () Bool)

(declare-fun inv!19781 (Conc!5053) Bool)

(assert (=> b!1433696 (= e!915177 (inv!19781 (c!235578 (tokens!1970 thiss!10022))))))

(assert (= (and d!412648 c!235596) b!1433694))

(assert (= (and d!412648 (not c!235596)) b!1433695))

(assert (= (and b!1433695 (not res!649243)) b!1433696))

(declare-fun m!1635833 () Bool)

(assert (=> b!1433694 m!1635833))

(declare-fun m!1635835 () Bool)

(assert (=> b!1433696 m!1635835))

(assert (=> b!1433479 d!412648))

(declare-fun d!412650 () Bool)

(declare-fun lt!488596 () Bool)

(assert (=> d!412650 (= lt!488596 (isEmpty!9256 (list!5918 (tokens!1970 thiss!10022))))))

(assert (=> d!412650 (= lt!488596 (isEmpty!9257 (c!235578 (tokens!1970 thiss!10022))))))

(assert (=> d!412650 (= (isEmpty!9249 (tokens!1970 thiss!10022)) lt!488596)))

(declare-fun bs!340949 () Bool)

(assert (= bs!340949 d!412650))

(assert (=> bs!340949 m!1635431))

(assert (=> bs!340949 m!1635431))

(declare-fun m!1635837 () Bool)

(assert (=> bs!340949 m!1635837))

(declare-fun m!1635839 () Bool)

(assert (=> bs!340949 m!1635839))

(assert (=> b!1433478 d!412650))

(declare-fun d!412652 () Bool)

(declare-fun res!649261 () Bool)

(declare-fun e!915190 () Bool)

(assert (=> d!412652 (=> res!649261 e!915190)))

(assert (=> d!412652 (= res!649261 (or (not ((_ is Cons!14890) lt!488318)) (not ((_ is Cons!14890) (t!127191 lt!488318)))))))

(assert (=> d!412652 (= (tokensListTwoByTwoPredicateSeparableList!235 Lexer!2275 lt!488318 (rules!11378 thiss!10022)) e!915190)))

(declare-fun b!1433713 () Bool)

(declare-fun e!915191 () Bool)

(assert (=> b!1433713 (= e!915190 e!915191)))

(declare-fun res!649260 () Bool)

(assert (=> b!1433713 (=> (not res!649260) (not e!915191))))

(assert (=> b!1433713 (= res!649260 (separableTokensPredicate!512 Lexer!2275 (h!20291 lt!488318) (h!20291 (t!127191 lt!488318)) (rules!11378 thiss!10022)))))

(declare-fun lt!488627 () Unit!22639)

(declare-fun Unit!22678 () Unit!22639)

(assert (=> b!1433713 (= lt!488627 Unit!22678)))

(assert (=> b!1433713 (> (size!12222 (charsOf!1513 (h!20291 (t!127191 lt!488318)))) 0)))

(declare-fun lt!488626 () Unit!22639)

(declare-fun Unit!22680 () Unit!22639)

(assert (=> b!1433713 (= lt!488626 Unit!22680)))

(assert (=> b!1433713 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) (h!20291 (t!127191 lt!488318)))))

(declare-fun lt!488629 () Unit!22639)

(declare-fun Unit!22681 () Unit!22639)

(assert (=> b!1433713 (= lt!488629 Unit!22681)))

(assert (=> b!1433713 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) (h!20291 lt!488318))))

(declare-fun lt!488624 () Unit!22639)

(declare-fun lt!488625 () Unit!22639)

(assert (=> b!1433713 (= lt!488624 lt!488625)))

(assert (=> b!1433713 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) (h!20291 (t!127191 lt!488318)))))

(assert (=> b!1433713 (= lt!488625 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488318 (h!20291 (t!127191 lt!488318))))))

(declare-fun lt!488623 () Unit!22639)

(declare-fun lt!488628 () Unit!22639)

(assert (=> b!1433713 (= lt!488623 lt!488628)))

(assert (=> b!1433713 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) (h!20291 lt!488318))))

(assert (=> b!1433713 (= lt!488628 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488318 (h!20291 lt!488318)))))

(declare-fun b!1433714 () Bool)

(assert (=> b!1433714 (= e!915191 (tokensListTwoByTwoPredicateSeparableList!235 Lexer!2275 (Cons!14890 (h!20291 (t!127191 lt!488318)) (t!127191 (t!127191 lt!488318))) (rules!11378 thiss!10022)))))

(assert (= (and d!412652 (not res!649261)) b!1433713))

(assert (= (and b!1433713 res!649260) b!1433714))

(declare-fun m!1635883 () Bool)

(assert (=> b!1433713 m!1635883))

(declare-fun m!1635885 () Bool)

(assert (=> b!1433713 m!1635885))

(declare-fun m!1635887 () Bool)

(assert (=> b!1433713 m!1635887))

(declare-fun m!1635889 () Bool)

(assert (=> b!1433713 m!1635889))

(declare-fun m!1635891 () Bool)

(assert (=> b!1433713 m!1635891))

(assert (=> b!1433713 m!1635885))

(declare-fun m!1635893 () Bool)

(assert (=> b!1433713 m!1635893))

(assert (=> b!1433713 m!1635591))

(declare-fun m!1635895 () Bool)

(assert (=> b!1433714 m!1635895))

(assert (=> b!1433482 d!412652))

(declare-fun b!1433725 () Bool)

(declare-fun res!649267 () Bool)

(declare-fun e!915197 () Bool)

(assert (=> b!1433725 (=> (not res!649267) (not e!915197))))

(declare-fun lt!488632 () List!14954)

(declare-fun size!12224 (List!14954) Int)

(assert (=> b!1433725 (= res!649267 (= (size!12224 lt!488632) (+ (size!12224 (printList!705 Lexer!2275 lt!488309)) (size!12224 (printList!705 Lexer!2275 lt!488311)))))))

(declare-fun b!1433723 () Bool)

(declare-fun e!915196 () List!14954)

(assert (=> b!1433723 (= e!915196 (printList!705 Lexer!2275 lt!488311))))

(declare-fun b!1433724 () Bool)

(assert (=> b!1433724 (= e!915196 (Cons!14888 (h!20289 (printList!705 Lexer!2275 lt!488309)) (++!3990 (t!127189 (printList!705 Lexer!2275 lt!488309)) (printList!705 Lexer!2275 lt!488311))))))

(declare-fun b!1433726 () Bool)

(assert (=> b!1433726 (= e!915197 (or (not (= (printList!705 Lexer!2275 lt!488311) Nil!14888)) (= lt!488632 (printList!705 Lexer!2275 lt!488309))))))

(declare-fun d!412662 () Bool)

(assert (=> d!412662 e!915197))

(declare-fun res!649266 () Bool)

(assert (=> d!412662 (=> (not res!649266) (not e!915197))))

(declare-fun content!2200 (List!14954) (InoxSet C!8032))

(assert (=> d!412662 (= res!649266 (= (content!2200 lt!488632) ((_ map or) (content!2200 (printList!705 Lexer!2275 lt!488309)) (content!2200 (printList!705 Lexer!2275 lt!488311)))))))

(assert (=> d!412662 (= lt!488632 e!915196)))

(declare-fun c!235599 () Bool)

(assert (=> d!412662 (= c!235599 ((_ is Nil!14888) (printList!705 Lexer!2275 lt!488309)))))

(assert (=> d!412662 (= (++!3990 (printList!705 Lexer!2275 lt!488309) (printList!705 Lexer!2275 lt!488311)) lt!488632)))

(assert (= (and d!412662 c!235599) b!1433723))

(assert (= (and d!412662 (not c!235599)) b!1433724))

(assert (= (and d!412662 res!649266) b!1433725))

(assert (= (and b!1433725 res!649267) b!1433726))

(declare-fun m!1635897 () Bool)

(assert (=> b!1433725 m!1635897))

(assert (=> b!1433725 m!1635469))

(declare-fun m!1635899 () Bool)

(assert (=> b!1433725 m!1635899))

(assert (=> b!1433725 m!1635471))

(declare-fun m!1635901 () Bool)

(assert (=> b!1433725 m!1635901))

(assert (=> b!1433724 m!1635471))

(declare-fun m!1635903 () Bool)

(assert (=> b!1433724 m!1635903))

(declare-fun m!1635905 () Bool)

(assert (=> d!412662 m!1635905))

(assert (=> d!412662 m!1635469))

(declare-fun m!1635907 () Bool)

(assert (=> d!412662 m!1635907))

(assert (=> d!412662 m!1635471))

(declare-fun m!1635909 () Bool)

(assert (=> d!412662 m!1635909))

(assert (=> b!1433471 d!412662))

(declare-fun d!412664 () Bool)

(declare-fun e!915207 () Bool)

(assert (=> d!412664 e!915207))

(declare-fun res!649278 () Bool)

(assert (=> d!412664 (=> (not res!649278) (not e!915207))))

(declare-datatypes ((tuple2!14112 0))(
  ( (tuple2!14113 (_1!7942 BalanceConc!10046) (_2!7942 BalanceConc!10044)) )
))
(declare-fun lex!1042 (LexerInterface!2277 List!14957 BalanceConc!10044) tuple2!14112)

(declare-fun seqFromList!1694 (List!14956) BalanceConc!10046)

(assert (=> d!412664 (= res!649278 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (seqFromList!1694 (list!5918 lt!488314)))))) (list!5918 lt!488314)))))

(declare-fun lt!488692 () Unit!22639)

(declare-fun e!915206 () Unit!22639)

(assert (=> d!412664 (= lt!488692 e!915206)))

(declare-fun c!235602 () Bool)

(assert (=> d!412664 (= c!235602 (or ((_ is Nil!14890) (list!5918 lt!488314)) ((_ is Nil!14890) (t!127191 (list!5918 lt!488314)))))))

(assert (=> d!412664 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412664 (= (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 thiss!10022) (list!5918 lt!488314)) lt!488692)))

(declare-fun b!1433741 () Bool)

(declare-fun Unit!22685 () Unit!22639)

(assert (=> b!1433741 (= e!915206 Unit!22685)))

(declare-fun b!1433742 () Bool)

(declare-fun Unit!22686 () Unit!22639)

(assert (=> b!1433742 (= e!915206 Unit!22686)))

(declare-fun lt!488691 () BalanceConc!10044)

(assert (=> b!1433742 (= lt!488691 (print!1061 Lexer!2275 (seqFromList!1694 (list!5918 lt!488314))))))

(declare-fun lt!488702 () BalanceConc!10044)

(assert (=> b!1433742 (= lt!488702 (print!1061 Lexer!2275 (seqFromList!1694 (t!127191 (list!5918 lt!488314)))))))

(declare-fun lt!488704 () tuple2!14112)

(assert (=> b!1433742 (= lt!488704 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) lt!488702))))

(declare-fun lt!488708 () List!14954)

(declare-fun list!5921 (BalanceConc!10044) List!14954)

(assert (=> b!1433742 (= lt!488708 (list!5921 (charsOf!1513 (h!20291 (list!5918 lt!488314)))))))

(declare-fun lt!488707 () List!14954)

(assert (=> b!1433742 (= lt!488707 (list!5921 lt!488702))))

(declare-fun lt!488689 () Unit!22639)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!756 (List!14954 List!14954) Unit!22639)

(assert (=> b!1433742 (= lt!488689 (lemmaConcatTwoListThenFirstIsPrefix!756 lt!488708 lt!488707))))

(declare-fun isPrefix!1191 (List!14954 List!14954) Bool)

(assert (=> b!1433742 (isPrefix!1191 lt!488708 (++!3990 lt!488708 lt!488707))))

(declare-fun lt!488695 () Unit!22639)

(assert (=> b!1433742 (= lt!488695 lt!488689)))

(declare-fun lt!488696 () Unit!22639)

(assert (=> b!1433742 (= lt!488696 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 thiss!10022) (t!127191 (list!5918 lt!488314))))))

(declare-fun lt!488693 () Unit!22639)

(declare-fun seqFromListBHdTlConstructive!85 (Token!4888 List!14956 BalanceConc!10046) Unit!22639)

(assert (=> b!1433742 (= lt!488693 (seqFromListBHdTlConstructive!85 (h!20291 (t!127191 (list!5918 lt!488314))) (t!127191 (t!127191 (list!5918 lt!488314))) (_1!7942 lt!488704)))))

(declare-fun prepend!405 (BalanceConc!10046 Token!4888) BalanceConc!10046)

(assert (=> b!1433742 (= (list!5918 (_1!7942 lt!488704)) (list!5918 (prepend!405 (seqFromList!1694 (t!127191 (t!127191 (list!5918 lt!488314)))) (h!20291 (t!127191 (list!5918 lt!488314))))))))

(declare-fun lt!488698 () Unit!22639)

(assert (=> b!1433742 (= lt!488698 lt!488693)))

(declare-datatypes ((tuple2!14114 0))(
  ( (tuple2!14115 (_1!7943 Token!4888) (_2!7943 List!14954)) )
))
(declare-datatypes ((Option!2843 0))(
  ( (None!2842) (Some!2842 (v!22344 tuple2!14114)) )
))
(declare-fun lt!488706 () Option!2843)

(declare-fun maxPrefix!1181 (LexerInterface!2277 List!14957 List!14954) Option!2843)

(assert (=> b!1433742 (= lt!488706 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 lt!488691)))))

(declare-fun singletonSeq!1222 (Token!4888) BalanceConc!10046)

(declare-fun printTailRec!677 (LexerInterface!2277 BalanceConc!10046 Int BalanceConc!10044) BalanceConc!10044)

(assert (=> b!1433742 (= (print!1061 Lexer!2275 (singletonSeq!1222 (h!20291 (list!5918 lt!488314)))) (printTailRec!677 Lexer!2275 (singletonSeq!1222 (h!20291 (list!5918 lt!488314))) 0 (BalanceConc!10045 Empty!5052)))))

(declare-fun lt!488703 () Unit!22639)

(declare-fun Unit!22687 () Unit!22639)

(assert (=> b!1433742 (= lt!488703 Unit!22687)))

(declare-fun lt!488686 () Unit!22639)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!229 (LexerInterface!2277 List!14957 List!14954 List!14954) Unit!22639)

(assert (=> b!1433742 (= lt!488686 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!229 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 (list!5918 lt!488314)))) (list!5921 lt!488702)))))

(assert (=> b!1433742 (= (list!5921 (charsOf!1513 (h!20291 (list!5918 lt!488314)))) (originalCharacters!3475 (h!20291 (list!5918 lt!488314))))))

(declare-fun lt!488688 () Unit!22639)

(declare-fun Unit!22688 () Unit!22639)

(assert (=> b!1433742 (= lt!488688 Unit!22688)))

(declare-fun singletonSeq!1223 (C!8032) BalanceConc!10044)

(declare-fun apply!3814 (BalanceConc!10044 Int) C!8032)

(declare-fun head!2895 (List!14954) C!8032)

(assert (=> b!1433742 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 (list!5918 lt!488314)))) 0))) (Cons!14888 (head!2895 (originalCharacters!3475 (h!20291 (t!127191 (list!5918 lt!488314))))) Nil!14888))))

(declare-fun lt!488690 () Unit!22639)

(declare-fun Unit!22689 () Unit!22639)

(assert (=> b!1433742 (= lt!488690 Unit!22689)))

(assert (=> b!1433742 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 (list!5918 lt!488314)))) 0))) (Cons!14888 (head!2895 (list!5921 lt!488702)) Nil!14888))))

(declare-fun lt!488700 () Unit!22639)

(declare-fun Unit!22690 () Unit!22639)

(assert (=> b!1433742 (= lt!488700 Unit!22690)))

(declare-fun head!2896 (BalanceConc!10044) C!8032)

(assert (=> b!1433742 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 (list!5918 lt!488314)))) 0))) (Cons!14888 (head!2896 lt!488702) Nil!14888))))

(declare-fun lt!488705 () Unit!22639)

(declare-fun Unit!22691 () Unit!22639)

(assert (=> b!1433742 (= lt!488705 Unit!22691)))

(declare-fun isDefined!2304 (Option!2843) Bool)

(assert (=> b!1433742 (isDefined!2304 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (originalCharacters!3475 (h!20291 (list!5918 lt!488314)))))))

(declare-fun lt!488699 () Unit!22639)

(declare-fun Unit!22692 () Unit!22639)

(assert (=> b!1433742 (= lt!488699 Unit!22692)))

(assert (=> b!1433742 (isDefined!2304 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 (list!5918 lt!488314))))))))

(declare-fun lt!488710 () Unit!22639)

(declare-fun Unit!22693 () Unit!22639)

(assert (=> b!1433742 (= lt!488710 Unit!22693)))

(declare-fun lt!488701 () Unit!22639)

(declare-fun Unit!22694 () Unit!22639)

(assert (=> b!1433742 (= lt!488701 Unit!22694)))

(declare-fun get!4558 (Option!2843) tuple2!14114)

(assert (=> b!1433742 (= (_1!7943 (get!4558 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 (list!5918 lt!488314))))))) (h!20291 (list!5918 lt!488314)))))

(declare-fun lt!488709 () Unit!22639)

(declare-fun Unit!22695 () Unit!22639)

(assert (=> b!1433742 (= lt!488709 Unit!22695)))

(declare-fun isEmpty!9258 (List!14954) Bool)

(assert (=> b!1433742 (isEmpty!9258 (_2!7943 (get!4558 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 (list!5918 lt!488314))))))))))

(declare-fun lt!488711 () Unit!22639)

(declare-fun Unit!22696 () Unit!22639)

(assert (=> b!1433742 (= lt!488711 Unit!22696)))

(declare-fun matchR!1817 (Regex!3927 List!14954) Bool)

(assert (=> b!1433742 (matchR!1817 (regex!2613 (rule!4376 (h!20291 (list!5918 lt!488314)))) (list!5921 (charsOf!1513 (h!20291 (list!5918 lt!488314)))))))

(declare-fun lt!488697 () Unit!22639)

(declare-fun Unit!22697 () Unit!22639)

(assert (=> b!1433742 (= lt!488697 Unit!22697)))

(assert (=> b!1433742 (= (rule!4376 (h!20291 (list!5918 lt!488314))) (rule!4376 (h!20291 (list!5918 lt!488314))))))

(declare-fun lt!488694 () Unit!22639)

(declare-fun Unit!22698 () Unit!22639)

(assert (=> b!1433742 (= lt!488694 Unit!22698)))

(declare-fun lt!488687 () Unit!22639)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!27 (LexerInterface!2277 List!14957 Token!4888 Rule!5026 List!14954) Unit!22639)

(assert (=> b!1433742 (= lt!488687 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!27 Lexer!2275 (rules!11378 thiss!10022) (h!20291 (list!5918 lt!488314)) (rule!4376 (h!20291 (list!5918 lt!488314))) (list!5921 lt!488702)))))

(declare-fun b!1433743 () Bool)

(declare-fun isEmpty!9259 (BalanceConc!10044) Bool)

(assert (=> b!1433743 (= e!915207 (isEmpty!9259 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (seqFromList!1694 (list!5918 lt!488314)))))))))

(assert (= (and d!412664 c!235602) b!1433741))

(assert (= (and d!412664 (not c!235602)) b!1433742))

(assert (= (and d!412664 res!649278) b!1433743))

(assert (=> d!412664 m!1635527))

(declare-fun m!1635917 () Bool)

(assert (=> d!412664 m!1635917))

(declare-fun m!1635919 () Bool)

(assert (=> d!412664 m!1635919))

(declare-fun m!1635921 () Bool)

(assert (=> d!412664 m!1635921))

(assert (=> d!412664 m!1635461))

(declare-fun m!1635923 () Bool)

(assert (=> d!412664 m!1635923))

(assert (=> d!412664 m!1635923))

(assert (=> d!412664 m!1635919))

(declare-fun m!1635925 () Bool)

(assert (=> b!1433742 m!1635925))

(declare-fun m!1635927 () Bool)

(assert (=> b!1433742 m!1635927))

(declare-fun m!1635929 () Bool)

(assert (=> b!1433742 m!1635929))

(declare-fun m!1635931 () Bool)

(assert (=> b!1433742 m!1635931))

(declare-fun m!1635933 () Bool)

(assert (=> b!1433742 m!1635933))

(declare-fun m!1635935 () Bool)

(assert (=> b!1433742 m!1635935))

(declare-fun m!1635937 () Bool)

(assert (=> b!1433742 m!1635937))

(declare-fun m!1635939 () Bool)

(assert (=> b!1433742 m!1635939))

(declare-fun m!1635941 () Bool)

(assert (=> b!1433742 m!1635941))

(assert (=> b!1433742 m!1635461))

(assert (=> b!1433742 m!1635923))

(assert (=> b!1433742 m!1635923))

(assert (=> b!1433742 m!1635919))

(declare-fun m!1635943 () Bool)

(assert (=> b!1433742 m!1635943))

(declare-fun m!1635945 () Bool)

(assert (=> b!1433742 m!1635945))

(declare-fun m!1635947 () Bool)

(assert (=> b!1433742 m!1635947))

(declare-fun m!1635949 () Bool)

(assert (=> b!1433742 m!1635949))

(declare-fun m!1635951 () Bool)

(assert (=> b!1433742 m!1635951))

(declare-fun m!1635953 () Bool)

(assert (=> b!1433742 m!1635953))

(declare-fun m!1635955 () Bool)

(assert (=> b!1433742 m!1635955))

(declare-fun m!1635957 () Bool)

(assert (=> b!1433742 m!1635957))

(declare-fun m!1635959 () Bool)

(assert (=> b!1433742 m!1635959))

(assert (=> b!1433742 m!1635953))

(declare-fun m!1635961 () Bool)

(assert (=> b!1433742 m!1635961))

(declare-fun m!1635963 () Bool)

(assert (=> b!1433742 m!1635963))

(declare-fun m!1635965 () Bool)

(assert (=> b!1433742 m!1635965))

(declare-fun m!1635967 () Bool)

(assert (=> b!1433742 m!1635967))

(declare-fun m!1635969 () Bool)

(assert (=> b!1433742 m!1635969))

(assert (=> b!1433742 m!1635933))

(declare-fun m!1635971 () Bool)

(assert (=> b!1433742 m!1635971))

(assert (=> b!1433742 m!1635939))

(declare-fun m!1635973 () Bool)

(assert (=> b!1433742 m!1635973))

(declare-fun m!1635975 () Bool)

(assert (=> b!1433742 m!1635975))

(assert (=> b!1433742 m!1635929))

(assert (=> b!1433742 m!1635953))

(declare-fun m!1635977 () Bool)

(assert (=> b!1433742 m!1635977))

(assert (=> b!1433742 m!1635947))

(assert (=> b!1433742 m!1635929))

(assert (=> b!1433742 m!1635953))

(assert (=> b!1433742 m!1635957))

(declare-fun m!1635979 () Bool)

(assert (=> b!1433742 m!1635979))

(assert (=> b!1433742 m!1635979))

(declare-fun m!1635981 () Bool)

(assert (=> b!1433742 m!1635981))

(declare-fun m!1635983 () Bool)

(assert (=> b!1433742 m!1635983))

(declare-fun m!1635985 () Bool)

(assert (=> b!1433742 m!1635985))

(assert (=> b!1433742 m!1635957))

(declare-fun m!1635987 () Bool)

(assert (=> b!1433742 m!1635987))

(assert (=> b!1433742 m!1635981))

(declare-fun m!1635989 () Bool)

(assert (=> b!1433742 m!1635989))

(declare-fun m!1635991 () Bool)

(assert (=> b!1433742 m!1635991))

(declare-fun m!1635993 () Bool)

(assert (=> b!1433742 m!1635993))

(assert (=> b!1433742 m!1635943))

(declare-fun m!1635995 () Bool)

(assert (=> b!1433742 m!1635995))

(assert (=> b!1433742 m!1635983))

(assert (=> b!1433742 m!1635929))

(assert (=> b!1433742 m!1635943))

(assert (=> b!1433742 m!1635935))

(assert (=> b!1433742 m!1635973))

(assert (=> b!1433742 m!1635967))

(assert (=> b!1433742 m!1635963))

(assert (=> b!1433743 m!1635461))

(assert (=> b!1433743 m!1635923))

(assert (=> b!1433743 m!1635923))

(assert (=> b!1433743 m!1635919))

(assert (=> b!1433743 m!1635919))

(assert (=> b!1433743 m!1635921))

(declare-fun m!1635997 () Bool)

(assert (=> b!1433743 m!1635997))

(assert (=> b!1433471 d!412664))

(declare-fun d!412674 () Bool)

(declare-fun c!235605 () Bool)

(assert (=> d!412674 (= c!235605 ((_ is Cons!14890) lt!488318))))

(declare-fun e!915210 () List!14954)

(assert (=> d!412674 (= (printList!705 Lexer!2275 lt!488318) e!915210)))

(declare-fun b!1433748 () Bool)

(assert (=> b!1433748 (= e!915210 (++!3990 (list!5921 (charsOf!1513 (h!20291 lt!488318))) (printList!705 Lexer!2275 (t!127191 lt!488318))))))

(declare-fun b!1433749 () Bool)

(assert (=> b!1433749 (= e!915210 Nil!14888)))

(assert (= (and d!412674 c!235605) b!1433748))

(assert (= (and d!412674 (not c!235605)) b!1433749))

(declare-fun m!1635999 () Bool)

(assert (=> b!1433748 m!1635999))

(assert (=> b!1433748 m!1635999))

(declare-fun m!1636001 () Bool)

(assert (=> b!1433748 m!1636001))

(declare-fun m!1636003 () Bool)

(assert (=> b!1433748 m!1636003))

(assert (=> b!1433748 m!1636001))

(assert (=> b!1433748 m!1636003))

(declare-fun m!1636005 () Bool)

(assert (=> b!1433748 m!1636005))

(assert (=> b!1433471 d!412674))

(declare-fun d!412676 () Bool)

(assert (=> d!412676 (= (printList!705 Lexer!2275 (++!3992 lt!488309 lt!488311)) (++!3990 (printList!705 Lexer!2275 lt!488309) (printList!705 Lexer!2275 lt!488311)))))

(declare-fun lt!488714 () Unit!22639)

(declare-fun choose!8836 (LexerInterface!2277 List!14956 List!14956) Unit!22639)

(assert (=> d!412676 (= lt!488714 (choose!8836 Lexer!2275 lt!488309 lt!488311))))

(assert (=> d!412676 (= (lemmaPrintConcatSameAsConcatPrint!66 Lexer!2275 lt!488309 lt!488311) lt!488714)))

(declare-fun bs!340954 () Bool)

(assert (= bs!340954 d!412676))

(declare-fun m!1636007 () Bool)

(assert (=> bs!340954 m!1636007))

(assert (=> bs!340954 m!1635471))

(assert (=> bs!340954 m!1635469))

(assert (=> bs!340954 m!1635469))

(assert (=> bs!340954 m!1635471))

(assert (=> bs!340954 m!1635473))

(assert (=> bs!340954 m!1635399))

(assert (=> bs!340954 m!1635399))

(declare-fun m!1636009 () Bool)

(assert (=> bs!340954 m!1636009))

(assert (=> b!1433471 d!412676))

(declare-fun d!412678 () Bool)

(declare-fun e!915212 () Bool)

(assert (=> d!412678 e!915212))

(declare-fun res!649279 () Bool)

(assert (=> d!412678 (=> (not res!649279) (not e!915212))))

(assert (=> d!412678 (= res!649279 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (seqFromList!1694 lt!488309))))) lt!488309))))

(declare-fun lt!488721 () Unit!22639)

(declare-fun e!915211 () Unit!22639)

(assert (=> d!412678 (= lt!488721 e!915211)))

(declare-fun c!235606 () Bool)

(assert (=> d!412678 (= c!235606 (or ((_ is Nil!14890) lt!488309) ((_ is Nil!14890) (t!127191 lt!488309))))))

(assert (=> d!412678 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412678 (= (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 thiss!10022) lt!488309) lt!488721)))

(declare-fun b!1433750 () Bool)

(declare-fun Unit!22704 () Unit!22639)

(assert (=> b!1433750 (= e!915211 Unit!22704)))

(declare-fun b!1433751 () Bool)

(declare-fun Unit!22705 () Unit!22639)

(assert (=> b!1433751 (= e!915211 Unit!22705)))

(declare-fun lt!488720 () BalanceConc!10044)

(assert (=> b!1433751 (= lt!488720 (print!1061 Lexer!2275 (seqFromList!1694 lt!488309)))))

(declare-fun lt!488731 () BalanceConc!10044)

(assert (=> b!1433751 (= lt!488731 (print!1061 Lexer!2275 (seqFromList!1694 (t!127191 lt!488309))))))

(declare-fun lt!488733 () tuple2!14112)

(assert (=> b!1433751 (= lt!488733 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) lt!488731))))

(declare-fun lt!488737 () List!14954)

(assert (=> b!1433751 (= lt!488737 (list!5921 (charsOf!1513 (h!20291 lt!488309))))))

(declare-fun lt!488736 () List!14954)

(assert (=> b!1433751 (= lt!488736 (list!5921 lt!488731))))

(declare-fun lt!488718 () Unit!22639)

(assert (=> b!1433751 (= lt!488718 (lemmaConcatTwoListThenFirstIsPrefix!756 lt!488737 lt!488736))))

(assert (=> b!1433751 (isPrefix!1191 lt!488737 (++!3990 lt!488737 lt!488736))))

(declare-fun lt!488724 () Unit!22639)

(assert (=> b!1433751 (= lt!488724 lt!488718)))

(declare-fun lt!488725 () Unit!22639)

(assert (=> b!1433751 (= lt!488725 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 thiss!10022) (t!127191 lt!488309)))))

(declare-fun lt!488722 () Unit!22639)

(assert (=> b!1433751 (= lt!488722 (seqFromListBHdTlConstructive!85 (h!20291 (t!127191 lt!488309)) (t!127191 (t!127191 lt!488309)) (_1!7942 lt!488733)))))

(assert (=> b!1433751 (= (list!5918 (_1!7942 lt!488733)) (list!5918 (prepend!405 (seqFromList!1694 (t!127191 (t!127191 lt!488309))) (h!20291 (t!127191 lt!488309)))))))

(declare-fun lt!488727 () Unit!22639)

(assert (=> b!1433751 (= lt!488727 lt!488722)))

(declare-fun lt!488735 () Option!2843)

(assert (=> b!1433751 (= lt!488735 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 lt!488720)))))

(assert (=> b!1433751 (= (print!1061 Lexer!2275 (singletonSeq!1222 (h!20291 lt!488309))) (printTailRec!677 Lexer!2275 (singletonSeq!1222 (h!20291 lt!488309)) 0 (BalanceConc!10045 Empty!5052)))))

(declare-fun lt!488732 () Unit!22639)

(declare-fun Unit!22713 () Unit!22639)

(assert (=> b!1433751 (= lt!488732 Unit!22713)))

(declare-fun lt!488715 () Unit!22639)

(assert (=> b!1433751 (= lt!488715 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!229 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 lt!488309))) (list!5921 lt!488731)))))

(assert (=> b!1433751 (= (list!5921 (charsOf!1513 (h!20291 lt!488309))) (originalCharacters!3475 (h!20291 lt!488309)))))

(declare-fun lt!488717 () Unit!22639)

(declare-fun Unit!22714 () Unit!22639)

(assert (=> b!1433751 (= lt!488717 Unit!22714)))

(assert (=> b!1433751 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 lt!488309))) 0))) (Cons!14888 (head!2895 (originalCharacters!3475 (h!20291 (t!127191 lt!488309)))) Nil!14888))))

(declare-fun lt!488719 () Unit!22639)

(declare-fun Unit!22717 () Unit!22639)

(assert (=> b!1433751 (= lt!488719 Unit!22717)))

(assert (=> b!1433751 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 lt!488309))) 0))) (Cons!14888 (head!2895 (list!5921 lt!488731)) Nil!14888))))

(declare-fun lt!488729 () Unit!22639)

(declare-fun Unit!22718 () Unit!22639)

(assert (=> b!1433751 (= lt!488729 Unit!22718)))

(assert (=> b!1433751 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 lt!488309))) 0))) (Cons!14888 (head!2896 lt!488731) Nil!14888))))

(declare-fun lt!488734 () Unit!22639)

(declare-fun Unit!22719 () Unit!22639)

(assert (=> b!1433751 (= lt!488734 Unit!22719)))

(assert (=> b!1433751 (isDefined!2304 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (originalCharacters!3475 (h!20291 lt!488309))))))

(declare-fun lt!488728 () Unit!22639)

(declare-fun Unit!22720 () Unit!22639)

(assert (=> b!1433751 (= lt!488728 Unit!22720)))

(assert (=> b!1433751 (isDefined!2304 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 lt!488309)))))))

(declare-fun lt!488739 () Unit!22639)

(declare-fun Unit!22721 () Unit!22639)

(assert (=> b!1433751 (= lt!488739 Unit!22721)))

(declare-fun lt!488730 () Unit!22639)

(declare-fun Unit!22722 () Unit!22639)

(assert (=> b!1433751 (= lt!488730 Unit!22722)))

(assert (=> b!1433751 (= (_1!7943 (get!4558 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 lt!488309)))))) (h!20291 lt!488309))))

(declare-fun lt!488738 () Unit!22639)

(declare-fun Unit!22723 () Unit!22639)

(assert (=> b!1433751 (= lt!488738 Unit!22723)))

(assert (=> b!1433751 (isEmpty!9258 (_2!7943 (get!4558 (maxPrefix!1181 Lexer!2275 (rules!11378 thiss!10022) (list!5921 (charsOf!1513 (h!20291 lt!488309)))))))))

(declare-fun lt!488740 () Unit!22639)

(declare-fun Unit!22724 () Unit!22639)

(assert (=> b!1433751 (= lt!488740 Unit!22724)))

(assert (=> b!1433751 (matchR!1817 (regex!2613 (rule!4376 (h!20291 lt!488309))) (list!5921 (charsOf!1513 (h!20291 lt!488309))))))

(declare-fun lt!488726 () Unit!22639)

(declare-fun Unit!22725 () Unit!22639)

(assert (=> b!1433751 (= lt!488726 Unit!22725)))

(assert (=> b!1433751 (= (rule!4376 (h!20291 lt!488309)) (rule!4376 (h!20291 lt!488309)))))

(declare-fun lt!488723 () Unit!22639)

(declare-fun Unit!22726 () Unit!22639)

(assert (=> b!1433751 (= lt!488723 Unit!22726)))

(declare-fun lt!488716 () Unit!22639)

(assert (=> b!1433751 (= lt!488716 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!27 Lexer!2275 (rules!11378 thiss!10022) (h!20291 lt!488309) (rule!4376 (h!20291 lt!488309)) (list!5921 lt!488731)))))

(declare-fun b!1433752 () Bool)

(assert (=> b!1433752 (= e!915212 (isEmpty!9259 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (seqFromList!1694 lt!488309))))))))

(assert (= (and d!412678 c!235606) b!1433750))

(assert (= (and d!412678 (not c!235606)) b!1433751))

(assert (= (and d!412678 res!649279) b!1433752))

(assert (=> d!412678 m!1635527))

(declare-fun m!1636011 () Bool)

(assert (=> d!412678 m!1636011))

(declare-fun m!1636013 () Bool)

(assert (=> d!412678 m!1636013))

(declare-fun m!1636015 () Bool)

(assert (=> d!412678 m!1636015))

(declare-fun m!1636017 () Bool)

(assert (=> d!412678 m!1636017))

(assert (=> d!412678 m!1636017))

(assert (=> d!412678 m!1636013))

(declare-fun m!1636019 () Bool)

(assert (=> b!1433751 m!1636019))

(declare-fun m!1636021 () Bool)

(assert (=> b!1433751 m!1636021))

(declare-fun m!1636023 () Bool)

(assert (=> b!1433751 m!1636023))

(declare-fun m!1636025 () Bool)

(assert (=> b!1433751 m!1636025))

(declare-fun m!1636027 () Bool)

(assert (=> b!1433751 m!1636027))

(declare-fun m!1636029 () Bool)

(assert (=> b!1433751 m!1636029))

(declare-fun m!1636031 () Bool)

(assert (=> b!1433751 m!1636031))

(declare-fun m!1636033 () Bool)

(assert (=> b!1433751 m!1636033))

(declare-fun m!1636035 () Bool)

(assert (=> b!1433751 m!1636035))

(assert (=> b!1433751 m!1636017))

(assert (=> b!1433751 m!1636017))

(assert (=> b!1433751 m!1636013))

(declare-fun m!1636037 () Bool)

(assert (=> b!1433751 m!1636037))

(declare-fun m!1636039 () Bool)

(assert (=> b!1433751 m!1636039))

(declare-fun m!1636041 () Bool)

(assert (=> b!1433751 m!1636041))

(declare-fun m!1636043 () Bool)

(assert (=> b!1433751 m!1636043))

(declare-fun m!1636045 () Bool)

(assert (=> b!1433751 m!1636045))

(declare-fun m!1636047 () Bool)

(assert (=> b!1433751 m!1636047))

(declare-fun m!1636049 () Bool)

(assert (=> b!1433751 m!1636049))

(declare-fun m!1636051 () Bool)

(assert (=> b!1433751 m!1636051))

(declare-fun m!1636053 () Bool)

(assert (=> b!1433751 m!1636053))

(assert (=> b!1433751 m!1636047))

(declare-fun m!1636055 () Bool)

(assert (=> b!1433751 m!1636055))

(declare-fun m!1636057 () Bool)

(assert (=> b!1433751 m!1636057))

(declare-fun m!1636059 () Bool)

(assert (=> b!1433751 m!1636059))

(declare-fun m!1636061 () Bool)

(assert (=> b!1433751 m!1636061))

(declare-fun m!1636063 () Bool)

(assert (=> b!1433751 m!1636063))

(assert (=> b!1433751 m!1636027))

(declare-fun m!1636065 () Bool)

(assert (=> b!1433751 m!1636065))

(assert (=> b!1433751 m!1636033))

(declare-fun m!1636067 () Bool)

(assert (=> b!1433751 m!1636067))

(declare-fun m!1636069 () Bool)

(assert (=> b!1433751 m!1636069))

(assert (=> b!1433751 m!1636023))

(assert (=> b!1433751 m!1636047))

(declare-fun m!1636071 () Bool)

(assert (=> b!1433751 m!1636071))

(assert (=> b!1433751 m!1636041))

(assert (=> b!1433751 m!1636023))

(assert (=> b!1433751 m!1636047))

(assert (=> b!1433751 m!1636051))

(declare-fun m!1636073 () Bool)

(assert (=> b!1433751 m!1636073))

(assert (=> b!1433751 m!1636073))

(declare-fun m!1636075 () Bool)

(assert (=> b!1433751 m!1636075))

(declare-fun m!1636077 () Bool)

(assert (=> b!1433751 m!1636077))

(declare-fun m!1636079 () Bool)

(assert (=> b!1433751 m!1636079))

(assert (=> b!1433751 m!1636051))

(declare-fun m!1636081 () Bool)

(assert (=> b!1433751 m!1636081))

(assert (=> b!1433751 m!1636075))

(declare-fun m!1636083 () Bool)

(assert (=> b!1433751 m!1636083))

(declare-fun m!1636085 () Bool)

(assert (=> b!1433751 m!1636085))

(declare-fun m!1636087 () Bool)

(assert (=> b!1433751 m!1636087))

(assert (=> b!1433751 m!1636037))

(declare-fun m!1636089 () Bool)

(assert (=> b!1433751 m!1636089))

(assert (=> b!1433751 m!1636077))

(assert (=> b!1433751 m!1636023))

(assert (=> b!1433751 m!1636037))

(assert (=> b!1433751 m!1636029))

(assert (=> b!1433751 m!1636067))

(assert (=> b!1433751 m!1636061))

(assert (=> b!1433751 m!1636057))

(assert (=> b!1433752 m!1636017))

(assert (=> b!1433752 m!1636017))

(assert (=> b!1433752 m!1636013))

(assert (=> b!1433752 m!1636013))

(assert (=> b!1433752 m!1636015))

(declare-fun m!1636091 () Bool)

(assert (=> b!1433752 m!1636091))

(assert (=> b!1433471 d!412678))

(declare-fun d!412680 () Bool)

(declare-fun c!235607 () Bool)

(assert (=> d!412680 (= c!235607 ((_ is Cons!14890) lt!488311))))

(declare-fun e!915213 () List!14954)

(assert (=> d!412680 (= (printList!705 Lexer!2275 lt!488311) e!915213)))

(declare-fun b!1433753 () Bool)

(assert (=> b!1433753 (= e!915213 (++!3990 (list!5921 (charsOf!1513 (h!20291 lt!488311))) (printList!705 Lexer!2275 (t!127191 lt!488311))))))

(declare-fun b!1433754 () Bool)

(assert (=> b!1433754 (= e!915213 Nil!14888)))

(assert (= (and d!412680 c!235607) b!1433753))

(assert (= (and d!412680 (not c!235607)) b!1433754))

(declare-fun m!1636093 () Bool)

(assert (=> b!1433753 m!1636093))

(assert (=> b!1433753 m!1636093))

(declare-fun m!1636095 () Bool)

(assert (=> b!1433753 m!1636095))

(declare-fun m!1636097 () Bool)

(assert (=> b!1433753 m!1636097))

(assert (=> b!1433753 m!1636095))

(assert (=> b!1433753 m!1636097))

(declare-fun m!1636099 () Bool)

(assert (=> b!1433753 m!1636099))

(assert (=> b!1433471 d!412680))

(declare-fun d!412682 () Bool)

(declare-fun c!235608 () Bool)

(assert (=> d!412682 (= c!235608 ((_ is Cons!14890) lt!488309))))

(declare-fun e!915214 () List!14954)

(assert (=> d!412682 (= (printList!705 Lexer!2275 lt!488309) e!915214)))

(declare-fun b!1433755 () Bool)

(assert (=> b!1433755 (= e!915214 (++!3990 (list!5921 (charsOf!1513 (h!20291 lt!488309))) (printList!705 Lexer!2275 (t!127191 lt!488309))))))

(declare-fun b!1433756 () Bool)

(assert (=> b!1433756 (= e!915214 Nil!14888)))

(assert (= (and d!412682 c!235608) b!1433755))

(assert (= (and d!412682 (not c!235608)) b!1433756))

(assert (=> b!1433755 m!1636041))

(assert (=> b!1433755 m!1636041))

(assert (=> b!1433755 m!1636023))

(declare-fun m!1636101 () Bool)

(assert (=> b!1433755 m!1636101))

(assert (=> b!1433755 m!1636023))

(assert (=> b!1433755 m!1636101))

(declare-fun m!1636103 () Bool)

(assert (=> b!1433755 m!1636103))

(assert (=> b!1433471 d!412682))

(declare-fun d!412684 () Bool)

(declare-fun e!915216 () Bool)

(assert (=> d!412684 e!915216))

(declare-fun res!649280 () Bool)

(assert (=> d!412684 (=> (not res!649280) (not e!915216))))

(assert (=> d!412684 (= res!649280 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 other!32) (print!1061 Lexer!2275 (seqFromList!1694 lt!488311))))) lt!488311))))

(declare-fun lt!488747 () Unit!22639)

(declare-fun e!915215 () Unit!22639)

(assert (=> d!412684 (= lt!488747 e!915215)))

(declare-fun c!235609 () Bool)

(assert (=> d!412684 (= c!235609 (or ((_ is Nil!14890) lt!488311) ((_ is Nil!14890) (t!127191 lt!488311))))))

(assert (=> d!412684 (not (isEmpty!9251 (rules!11378 other!32)))))

(assert (=> d!412684 (= (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 other!32) lt!488311) lt!488747)))

(declare-fun b!1433757 () Bool)

(declare-fun Unit!22727 () Unit!22639)

(assert (=> b!1433757 (= e!915215 Unit!22727)))

(declare-fun b!1433758 () Bool)

(declare-fun Unit!22728 () Unit!22639)

(assert (=> b!1433758 (= e!915215 Unit!22728)))

(declare-fun lt!488746 () BalanceConc!10044)

(assert (=> b!1433758 (= lt!488746 (print!1061 Lexer!2275 (seqFromList!1694 lt!488311)))))

(declare-fun lt!488757 () BalanceConc!10044)

(assert (=> b!1433758 (= lt!488757 (print!1061 Lexer!2275 (seqFromList!1694 (t!127191 lt!488311))))))

(declare-fun lt!488759 () tuple2!14112)

(assert (=> b!1433758 (= lt!488759 (lex!1042 Lexer!2275 (rules!11378 other!32) lt!488757))))

(declare-fun lt!488763 () List!14954)

(assert (=> b!1433758 (= lt!488763 (list!5921 (charsOf!1513 (h!20291 lt!488311))))))

(declare-fun lt!488762 () List!14954)

(assert (=> b!1433758 (= lt!488762 (list!5921 lt!488757))))

(declare-fun lt!488744 () Unit!22639)

(assert (=> b!1433758 (= lt!488744 (lemmaConcatTwoListThenFirstIsPrefix!756 lt!488763 lt!488762))))

(assert (=> b!1433758 (isPrefix!1191 lt!488763 (++!3990 lt!488763 lt!488762))))

(declare-fun lt!488750 () Unit!22639)

(assert (=> b!1433758 (= lt!488750 lt!488744)))

(declare-fun lt!488751 () Unit!22639)

(assert (=> b!1433758 (= lt!488751 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 other!32) (t!127191 lt!488311)))))

(declare-fun lt!488748 () Unit!22639)

(assert (=> b!1433758 (= lt!488748 (seqFromListBHdTlConstructive!85 (h!20291 (t!127191 lt!488311)) (t!127191 (t!127191 lt!488311)) (_1!7942 lt!488759)))))

(assert (=> b!1433758 (= (list!5918 (_1!7942 lt!488759)) (list!5918 (prepend!405 (seqFromList!1694 (t!127191 (t!127191 lt!488311))) (h!20291 (t!127191 lt!488311)))))))

(declare-fun lt!488753 () Unit!22639)

(assert (=> b!1433758 (= lt!488753 lt!488748)))

(declare-fun lt!488761 () Option!2843)

(assert (=> b!1433758 (= lt!488761 (maxPrefix!1181 Lexer!2275 (rules!11378 other!32) (list!5921 lt!488746)))))

(assert (=> b!1433758 (= (print!1061 Lexer!2275 (singletonSeq!1222 (h!20291 lt!488311))) (printTailRec!677 Lexer!2275 (singletonSeq!1222 (h!20291 lt!488311)) 0 (BalanceConc!10045 Empty!5052)))))

(declare-fun lt!488758 () Unit!22639)

(declare-fun Unit!22729 () Unit!22639)

(assert (=> b!1433758 (= lt!488758 Unit!22729)))

(declare-fun lt!488741 () Unit!22639)

(assert (=> b!1433758 (= lt!488741 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!229 Lexer!2275 (rules!11378 other!32) (list!5921 (charsOf!1513 (h!20291 lt!488311))) (list!5921 lt!488757)))))

(assert (=> b!1433758 (= (list!5921 (charsOf!1513 (h!20291 lt!488311))) (originalCharacters!3475 (h!20291 lt!488311)))))

(declare-fun lt!488743 () Unit!22639)

(declare-fun Unit!22730 () Unit!22639)

(assert (=> b!1433758 (= lt!488743 Unit!22730)))

(assert (=> b!1433758 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 lt!488311))) 0))) (Cons!14888 (head!2895 (originalCharacters!3475 (h!20291 (t!127191 lt!488311)))) Nil!14888))))

(declare-fun lt!488745 () Unit!22639)

(declare-fun Unit!22731 () Unit!22639)

(assert (=> b!1433758 (= lt!488745 Unit!22731)))

(assert (=> b!1433758 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 lt!488311))) 0))) (Cons!14888 (head!2895 (list!5921 lt!488757)) Nil!14888))))

(declare-fun lt!488755 () Unit!22639)

(declare-fun Unit!22732 () Unit!22639)

(assert (=> b!1433758 (= lt!488755 Unit!22732)))

(assert (=> b!1433758 (= (list!5921 (singletonSeq!1223 (apply!3814 (charsOf!1513 (h!20291 (t!127191 lt!488311))) 0))) (Cons!14888 (head!2896 lt!488757) Nil!14888))))

(declare-fun lt!488760 () Unit!22639)

(declare-fun Unit!22733 () Unit!22639)

(assert (=> b!1433758 (= lt!488760 Unit!22733)))

(assert (=> b!1433758 (isDefined!2304 (maxPrefix!1181 Lexer!2275 (rules!11378 other!32) (originalCharacters!3475 (h!20291 lt!488311))))))

(declare-fun lt!488754 () Unit!22639)

(declare-fun Unit!22734 () Unit!22639)

(assert (=> b!1433758 (= lt!488754 Unit!22734)))

(assert (=> b!1433758 (isDefined!2304 (maxPrefix!1181 Lexer!2275 (rules!11378 other!32) (list!5921 (charsOf!1513 (h!20291 lt!488311)))))))

(declare-fun lt!488765 () Unit!22639)

(declare-fun Unit!22735 () Unit!22639)

(assert (=> b!1433758 (= lt!488765 Unit!22735)))

(declare-fun lt!488756 () Unit!22639)

(declare-fun Unit!22736 () Unit!22639)

(assert (=> b!1433758 (= lt!488756 Unit!22736)))

(assert (=> b!1433758 (= (_1!7943 (get!4558 (maxPrefix!1181 Lexer!2275 (rules!11378 other!32) (list!5921 (charsOf!1513 (h!20291 lt!488311)))))) (h!20291 lt!488311))))

(declare-fun lt!488764 () Unit!22639)

(declare-fun Unit!22737 () Unit!22639)

(assert (=> b!1433758 (= lt!488764 Unit!22737)))

(assert (=> b!1433758 (isEmpty!9258 (_2!7943 (get!4558 (maxPrefix!1181 Lexer!2275 (rules!11378 other!32) (list!5921 (charsOf!1513 (h!20291 lt!488311)))))))))

(declare-fun lt!488766 () Unit!22639)

(declare-fun Unit!22738 () Unit!22639)

(assert (=> b!1433758 (= lt!488766 Unit!22738)))

(assert (=> b!1433758 (matchR!1817 (regex!2613 (rule!4376 (h!20291 lt!488311))) (list!5921 (charsOf!1513 (h!20291 lt!488311))))))

(declare-fun lt!488752 () Unit!22639)

(declare-fun Unit!22739 () Unit!22639)

(assert (=> b!1433758 (= lt!488752 Unit!22739)))

(assert (=> b!1433758 (= (rule!4376 (h!20291 lt!488311)) (rule!4376 (h!20291 lt!488311)))))

(declare-fun lt!488749 () Unit!22639)

(declare-fun Unit!22740 () Unit!22639)

(assert (=> b!1433758 (= lt!488749 Unit!22740)))

(declare-fun lt!488742 () Unit!22639)

(assert (=> b!1433758 (= lt!488742 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!27 Lexer!2275 (rules!11378 other!32) (h!20291 lt!488311) (rule!4376 (h!20291 lt!488311)) (list!5921 lt!488757)))))

(declare-fun b!1433759 () Bool)

(assert (=> b!1433759 (= e!915216 (isEmpty!9259 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 other!32) (print!1061 Lexer!2275 (seqFromList!1694 lt!488311))))))))

(assert (= (and d!412684 c!235609) b!1433757))

(assert (= (and d!412684 (not c!235609)) b!1433758))

(assert (= (and d!412684 res!649280) b!1433759))

(assert (=> d!412684 m!1635535))

(declare-fun m!1636105 () Bool)

(assert (=> d!412684 m!1636105))

(declare-fun m!1636107 () Bool)

(assert (=> d!412684 m!1636107))

(declare-fun m!1636109 () Bool)

(assert (=> d!412684 m!1636109))

(declare-fun m!1636111 () Bool)

(assert (=> d!412684 m!1636111))

(assert (=> d!412684 m!1636111))

(assert (=> d!412684 m!1636107))

(declare-fun m!1636113 () Bool)

(assert (=> b!1433758 m!1636113))

(declare-fun m!1636115 () Bool)

(assert (=> b!1433758 m!1636115))

(assert (=> b!1433758 m!1636095))

(declare-fun m!1636117 () Bool)

(assert (=> b!1433758 m!1636117))

(declare-fun m!1636119 () Bool)

(assert (=> b!1433758 m!1636119))

(declare-fun m!1636121 () Bool)

(assert (=> b!1433758 m!1636121))

(declare-fun m!1636123 () Bool)

(assert (=> b!1433758 m!1636123))

(declare-fun m!1636125 () Bool)

(assert (=> b!1433758 m!1636125))

(declare-fun m!1636127 () Bool)

(assert (=> b!1433758 m!1636127))

(assert (=> b!1433758 m!1636111))

(assert (=> b!1433758 m!1636111))

(assert (=> b!1433758 m!1636107))

(declare-fun m!1636129 () Bool)

(assert (=> b!1433758 m!1636129))

(declare-fun m!1636131 () Bool)

(assert (=> b!1433758 m!1636131))

(assert (=> b!1433758 m!1636093))

(declare-fun m!1636133 () Bool)

(assert (=> b!1433758 m!1636133))

(declare-fun m!1636135 () Bool)

(assert (=> b!1433758 m!1636135))

(declare-fun m!1636137 () Bool)

(assert (=> b!1433758 m!1636137))

(declare-fun m!1636139 () Bool)

(assert (=> b!1433758 m!1636139))

(declare-fun m!1636141 () Bool)

(assert (=> b!1433758 m!1636141))

(declare-fun m!1636143 () Bool)

(assert (=> b!1433758 m!1636143))

(assert (=> b!1433758 m!1636137))

(declare-fun m!1636145 () Bool)

(assert (=> b!1433758 m!1636145))

(declare-fun m!1636147 () Bool)

(assert (=> b!1433758 m!1636147))

(declare-fun m!1636149 () Bool)

(assert (=> b!1433758 m!1636149))

(declare-fun m!1636151 () Bool)

(assert (=> b!1433758 m!1636151))

(declare-fun m!1636153 () Bool)

(assert (=> b!1433758 m!1636153))

(assert (=> b!1433758 m!1636119))

(declare-fun m!1636155 () Bool)

(assert (=> b!1433758 m!1636155))

(assert (=> b!1433758 m!1636125))

(declare-fun m!1636157 () Bool)

(assert (=> b!1433758 m!1636157))

(declare-fun m!1636159 () Bool)

(assert (=> b!1433758 m!1636159))

(assert (=> b!1433758 m!1636095))

(assert (=> b!1433758 m!1636137))

(declare-fun m!1636161 () Bool)

(assert (=> b!1433758 m!1636161))

(assert (=> b!1433758 m!1636093))

(assert (=> b!1433758 m!1636095))

(assert (=> b!1433758 m!1636137))

(assert (=> b!1433758 m!1636141))

(declare-fun m!1636163 () Bool)

(assert (=> b!1433758 m!1636163))

(assert (=> b!1433758 m!1636163))

(declare-fun m!1636165 () Bool)

(assert (=> b!1433758 m!1636165))

(declare-fun m!1636167 () Bool)

(assert (=> b!1433758 m!1636167))

(declare-fun m!1636169 () Bool)

(assert (=> b!1433758 m!1636169))

(assert (=> b!1433758 m!1636141))

(declare-fun m!1636171 () Bool)

(assert (=> b!1433758 m!1636171))

(assert (=> b!1433758 m!1636165))

(declare-fun m!1636173 () Bool)

(assert (=> b!1433758 m!1636173))

(declare-fun m!1636175 () Bool)

(assert (=> b!1433758 m!1636175))

(declare-fun m!1636177 () Bool)

(assert (=> b!1433758 m!1636177))

(assert (=> b!1433758 m!1636129))

(declare-fun m!1636179 () Bool)

(assert (=> b!1433758 m!1636179))

(assert (=> b!1433758 m!1636167))

(assert (=> b!1433758 m!1636095))

(assert (=> b!1433758 m!1636129))

(assert (=> b!1433758 m!1636121))

(assert (=> b!1433758 m!1636157))

(assert (=> b!1433758 m!1636151))

(assert (=> b!1433758 m!1636147))

(assert (=> b!1433759 m!1636111))

(assert (=> b!1433759 m!1636111))

(assert (=> b!1433759 m!1636107))

(assert (=> b!1433759 m!1636107))

(assert (=> b!1433759 m!1636109))

(declare-fun m!1636181 () Bool)

(assert (=> b!1433759 m!1636181))

(assert (=> b!1433471 d!412684))

(declare-fun d!412686 () Bool)

(declare-fun lt!488769 () BalanceConc!10044)

(assert (=> d!412686 (= (list!5921 lt!488769) (printList!705 Lexer!2275 (list!5918 (tokens!1970 other!32))))))

(assert (=> d!412686 (= lt!488769 (printTailRec!677 Lexer!2275 (tokens!1970 other!32) 0 (BalanceConc!10045 Empty!5052)))))

(assert (=> d!412686 (= (print!1061 Lexer!2275 (tokens!1970 other!32)) lt!488769)))

(declare-fun bs!340955 () Bool)

(assert (= bs!340955 d!412686))

(declare-fun m!1636183 () Bool)

(assert (=> bs!340955 m!1636183))

(assert (=> bs!340955 m!1635439))

(assert (=> bs!340955 m!1635439))

(declare-fun m!1636185 () Bool)

(assert (=> bs!340955 m!1636185))

(declare-fun m!1636187 () Bool)

(assert (=> bs!340955 m!1636187))

(assert (=> b!1433471 d!412686))

(declare-fun d!412688 () Bool)

(declare-fun e!915225 () Bool)

(assert (=> d!412688 e!915225))

(declare-fun res!649286 () Bool)

(assert (=> d!412688 (=> (not res!649286) (not e!915225))))

(declare-fun lt!488855 () BalanceConc!10044)

(assert (=> d!412688 (= res!649286 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 lt!488306) lt!488855))) (list!5918 (tokens!1970 lt!488306))))))

(assert (=> d!412688 (= lt!488855 (print!1061 Lexer!2275 (tokens!1970 lt!488306)))))

(declare-fun lt!488856 () Unit!22639)

(assert (=> d!412688 (= lt!488856 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 lt!488306) (list!5918 (tokens!1970 lt!488306))))))

(assert (=> d!412688 (= (print!1060 lt!488306) lt!488855)))

(declare-fun b!1433771 () Bool)

(assert (=> b!1433771 (= e!915225 (isEmpty!9258 (list!5921 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 lt!488306) lt!488855)))))))

(assert (= (and d!412688 res!649286) b!1433771))

(declare-fun m!1636275 () Bool)

(assert (=> d!412688 m!1636275))

(declare-fun m!1636277 () Bool)

(assert (=> d!412688 m!1636277))

(declare-fun m!1636279 () Bool)

(assert (=> d!412688 m!1636279))

(declare-fun m!1636281 () Bool)

(assert (=> d!412688 m!1636281))

(assert (=> d!412688 m!1636275))

(declare-fun m!1636283 () Bool)

(assert (=> d!412688 m!1636283))

(assert (=> b!1433771 m!1636283))

(declare-fun m!1636285 () Bool)

(assert (=> b!1433771 m!1636285))

(assert (=> b!1433771 m!1636285))

(declare-fun m!1636287 () Bool)

(assert (=> b!1433771 m!1636287))

(assert (=> b!1433471 d!412688))

(declare-fun d!412696 () Bool)

(declare-fun lt!488857 () BalanceConc!10044)

(assert (=> d!412696 (= (list!5921 lt!488857) (printList!705 Lexer!2275 (list!5918 (tokens!1970 thiss!10022))))))

(assert (=> d!412696 (= lt!488857 (printTailRec!677 Lexer!2275 (tokens!1970 thiss!10022) 0 (BalanceConc!10045 Empty!5052)))))

(assert (=> d!412696 (= (print!1061 Lexer!2275 (tokens!1970 thiss!10022)) lt!488857)))

(declare-fun bs!340957 () Bool)

(assert (= bs!340957 d!412696))

(declare-fun m!1636289 () Bool)

(assert (=> bs!340957 m!1636289))

(assert (=> bs!340957 m!1635431))

(assert (=> bs!340957 m!1635431))

(declare-fun m!1636291 () Bool)

(assert (=> bs!340957 m!1636291))

(declare-fun m!1636293 () Bool)

(assert (=> bs!340957 m!1636293))

(assert (=> b!1433471 d!412696))

(declare-fun d!412698 () Bool)

(declare-fun e!915226 () Bool)

(assert (=> d!412698 e!915226))

(declare-fun res!649287 () Bool)

(assert (=> d!412698 (=> (not res!649287) (not e!915226))))

(declare-fun lt!488858 () BalanceConc!10044)

(assert (=> d!412698 (= res!649287 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) lt!488858))) (list!5918 (tokens!1970 thiss!10022))))))

(assert (=> d!412698 (= lt!488858 (print!1061 Lexer!2275 (tokens!1970 thiss!10022)))))

(declare-fun lt!488859 () Unit!22639)

(assert (=> d!412698 (= lt!488859 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 thiss!10022) (list!5918 (tokens!1970 thiss!10022))))))

(assert (=> d!412698 (= (print!1060 thiss!10022) lt!488858)))

(declare-fun b!1433772 () Bool)

(assert (=> b!1433772 (= e!915226 (isEmpty!9258 (list!5921 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) lt!488858)))))))

(assert (= (and d!412698 res!649287) b!1433772))

(assert (=> d!412698 m!1635431))

(declare-fun m!1636295 () Bool)

(assert (=> d!412698 m!1636295))

(declare-fun m!1636297 () Bool)

(assert (=> d!412698 m!1636297))

(assert (=> d!412698 m!1635459))

(assert (=> d!412698 m!1635431))

(declare-fun m!1636299 () Bool)

(assert (=> d!412698 m!1636299))

(assert (=> b!1433772 m!1636299))

(declare-fun m!1636301 () Bool)

(assert (=> b!1433772 m!1636301))

(assert (=> b!1433772 m!1636301))

(declare-fun m!1636303 () Bool)

(assert (=> b!1433772 m!1636303))

(assert (=> b!1433471 d!412698))

(declare-fun d!412700 () Bool)

(assert (=> d!412700 (= (isEmpty!9248 lt!488312) (not ((_ is Some!2840) lt!488312)))))

(assert (=> b!1433471 d!412700))

(declare-fun d!412702 () Bool)

(declare-fun e!915227 () Bool)

(assert (=> d!412702 e!915227))

(declare-fun res!649288 () Bool)

(assert (=> d!412702 (=> (not res!649288) (not e!915227))))

(declare-fun lt!488860 () BalanceConc!10044)

(assert (=> d!412702 (= res!649288 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 other!32) lt!488860))) (list!5918 (tokens!1970 other!32))))))

(assert (=> d!412702 (= lt!488860 (print!1061 Lexer!2275 (tokens!1970 other!32)))))

(declare-fun lt!488861 () Unit!22639)

(assert (=> d!412702 (= lt!488861 (theoremInvertabilityWhenTokenListSeparable!67 Lexer!2275 (rules!11378 other!32) (list!5918 (tokens!1970 other!32))))))

(assert (=> d!412702 (= (print!1060 other!32) lt!488860)))

(declare-fun b!1433773 () Bool)

(assert (=> b!1433773 (= e!915227 (isEmpty!9258 (list!5921 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 other!32) lt!488860)))))))

(assert (= (and d!412702 res!649288) b!1433773))

(assert (=> d!412702 m!1635439))

(declare-fun m!1636305 () Bool)

(assert (=> d!412702 m!1636305))

(declare-fun m!1636307 () Bool)

(assert (=> d!412702 m!1636307))

(assert (=> d!412702 m!1635467))

(assert (=> d!412702 m!1635439))

(declare-fun m!1636309 () Bool)

(assert (=> d!412702 m!1636309))

(assert (=> b!1433773 m!1636309))

(declare-fun m!1636311 () Bool)

(assert (=> b!1433773 m!1636311))

(assert (=> b!1433773 m!1636311))

(declare-fun m!1636313 () Bool)

(assert (=> b!1433773 m!1636313))

(assert (=> b!1433471 d!412702))

(declare-fun d!412704 () Bool)

(declare-fun lt!488862 () BalanceConc!10044)

(assert (=> d!412704 (= (list!5921 lt!488862) (printList!705 Lexer!2275 (list!5918 lt!488314)))))

(assert (=> d!412704 (= lt!488862 (printTailRec!677 Lexer!2275 lt!488314 0 (BalanceConc!10045 Empty!5052)))))

(assert (=> d!412704 (= (print!1061 Lexer!2275 lt!488314) lt!488862)))

(declare-fun bs!340958 () Bool)

(assert (= bs!340958 d!412704))

(declare-fun m!1636315 () Bool)

(assert (=> bs!340958 m!1636315))

(assert (=> bs!340958 m!1635461))

(assert (=> bs!340958 m!1635461))

(declare-fun m!1636317 () Bool)

(assert (=> bs!340958 m!1636317))

(declare-fun m!1636319 () Bool)

(assert (=> bs!340958 m!1636319))

(assert (=> b!1433471 d!412704))

(declare-fun d!412706 () Bool)

(declare-fun list!5922 (Conc!5053) List!14956)

(assert (=> d!412706 (= (list!5918 lt!488314) (list!5922 (c!235578 lt!488314)))))

(declare-fun bs!340959 () Bool)

(assert (= bs!340959 d!412706))

(declare-fun m!1636321 () Bool)

(assert (=> bs!340959 m!1636321))

(assert (=> b!1433471 d!412706))

(declare-fun d!412708 () Bool)

(declare-fun c!235613 () Bool)

(assert (=> d!412708 (= c!235613 ((_ is Node!5053) (c!235578 (tokens!1970 other!32))))))

(declare-fun e!915228 () Bool)

(assert (=> d!412708 (= (inv!19777 (c!235578 (tokens!1970 other!32))) e!915228)))

(declare-fun b!1433774 () Bool)

(assert (=> b!1433774 (= e!915228 (inv!19780 (c!235578 (tokens!1970 other!32))))))

(declare-fun b!1433775 () Bool)

(declare-fun e!915229 () Bool)

(assert (=> b!1433775 (= e!915228 e!915229)))

(declare-fun res!649289 () Bool)

(assert (=> b!1433775 (= res!649289 (not ((_ is Leaf!7561) (c!235578 (tokens!1970 other!32)))))))

(assert (=> b!1433775 (=> res!649289 e!915229)))

(declare-fun b!1433776 () Bool)

(assert (=> b!1433776 (= e!915229 (inv!19781 (c!235578 (tokens!1970 other!32))))))

(assert (= (and d!412708 c!235613) b!1433774))

(assert (= (and d!412708 (not c!235613)) b!1433775))

(assert (= (and b!1433775 (not res!649289)) b!1433776))

(declare-fun m!1636323 () Bool)

(assert (=> b!1433774 m!1636323))

(declare-fun m!1636325 () Bool)

(assert (=> b!1433776 m!1636325))

(assert (=> b!1433481 d!412708))

(declare-fun d!412710 () Bool)

(declare-fun lt!488937 () Bool)

(declare-fun e!915280 () Bool)

(assert (=> d!412710 (= lt!488937 e!915280)))

(declare-fun res!649312 () Bool)

(assert (=> d!412710 (=> (not res!649312) (not e!915280))))

(assert (=> d!412710 (= res!649312 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (singletonSeq!1222 lt!488305))))) (list!5918 (singletonSeq!1222 lt!488305))))))

(declare-fun e!915281 () Bool)

(assert (=> d!412710 (= lt!488937 e!915281)))

(declare-fun res!649310 () Bool)

(assert (=> d!412710 (=> (not res!649310) (not e!915281))))

(declare-fun lt!488938 () tuple2!14112)

(assert (=> d!412710 (= res!649310 (= (size!12223 (_1!7942 lt!488938)) 1))))

(assert (=> d!412710 (= lt!488938 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (singletonSeq!1222 lt!488305))))))

(assert (=> d!412710 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412710 (= (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488305) lt!488937)))

(declare-fun b!1433847 () Bool)

(declare-fun res!649311 () Bool)

(assert (=> b!1433847 (=> (not res!649311) (not e!915281))))

(assert (=> b!1433847 (= res!649311 (= (apply!3812 (_1!7942 lt!488938) 0) lt!488305))))

(declare-fun b!1433848 () Bool)

(assert (=> b!1433848 (= e!915281 (isEmpty!9259 (_2!7942 lt!488938)))))

(declare-fun b!1433849 () Bool)

(assert (=> b!1433849 (= e!915280 (isEmpty!9259 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (singletonSeq!1222 lt!488305))))))))

(assert (= (and d!412710 res!649310) b!1433847))

(assert (= (and b!1433847 res!649311) b!1433848))

(assert (= (and d!412710 res!649312) b!1433849))

(declare-fun m!1636601 () Bool)

(assert (=> d!412710 m!1636601))

(declare-fun m!1636603 () Bool)

(assert (=> d!412710 m!1636603))

(declare-fun m!1636605 () Bool)

(assert (=> d!412710 m!1636605))

(declare-fun m!1636607 () Bool)

(assert (=> d!412710 m!1636607))

(assert (=> d!412710 m!1636605))

(assert (=> d!412710 m!1636605))

(declare-fun m!1636609 () Bool)

(assert (=> d!412710 m!1636609))

(assert (=> d!412710 m!1636609))

(declare-fun m!1636611 () Bool)

(assert (=> d!412710 m!1636611))

(assert (=> d!412710 m!1635527))

(declare-fun m!1636613 () Bool)

(assert (=> b!1433847 m!1636613))

(declare-fun m!1636615 () Bool)

(assert (=> b!1433848 m!1636615))

(assert (=> b!1433849 m!1636605))

(assert (=> b!1433849 m!1636605))

(assert (=> b!1433849 m!1636609))

(assert (=> b!1433849 m!1636609))

(assert (=> b!1433849 m!1636611))

(declare-fun m!1636617 () Bool)

(assert (=> b!1433849 m!1636617))

(assert (=> b!1433470 d!412710))

(declare-fun d!412740 () Bool)

(assert (=> d!412740 (= (list!5918 (tokens!1970 other!32)) (list!5922 (c!235578 (tokens!1970 other!32))))))

(declare-fun bs!340965 () Bool)

(assert (= bs!340965 d!412740))

(declare-fun m!1636619 () Bool)

(assert (=> bs!340965 m!1636619))

(assert (=> b!1433470 d!412740))

(declare-fun d!412742 () Bool)

(declare-fun lt!488941 () Token!4888)

(assert (=> d!412742 (= lt!488941 (head!2892 (list!5918 (tokens!1970 other!32))))))

(declare-fun head!2897 (Conc!5053) Token!4888)

(assert (=> d!412742 (= lt!488941 (head!2897 (c!235578 (tokens!1970 other!32))))))

(assert (=> d!412742 (not (isEmpty!9249 (tokens!1970 other!32)))))

(assert (=> d!412742 (= (head!2889 (tokens!1970 other!32)) lt!488941)))

(declare-fun bs!340966 () Bool)

(assert (= bs!340966 d!412742))

(assert (=> bs!340966 m!1635439))

(assert (=> bs!340966 m!1635439))

(declare-fun m!1636621 () Bool)

(assert (=> bs!340966 m!1636621))

(declare-fun m!1636623 () Bool)

(assert (=> bs!340966 m!1636623))

(assert (=> bs!340966 m!1635419))

(assert (=> b!1433470 d!412742))

(declare-fun d!412744 () Bool)

(declare-fun lt!488942 () Bool)

(declare-fun e!915282 () Bool)

(assert (=> d!412744 (= lt!488942 e!915282)))

(declare-fun res!649315 () Bool)

(assert (=> d!412744 (=> (not res!649315) (not e!915282))))

(assert (=> d!412744 (= res!649315 (= (list!5918 (_1!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (singletonSeq!1222 lt!488319))))) (list!5918 (singletonSeq!1222 lt!488319))))))

(declare-fun e!915283 () Bool)

(assert (=> d!412744 (= lt!488942 e!915283)))

(declare-fun res!649313 () Bool)

(assert (=> d!412744 (=> (not res!649313) (not e!915283))))

(declare-fun lt!488943 () tuple2!14112)

(assert (=> d!412744 (= res!649313 (= (size!12223 (_1!7942 lt!488943)) 1))))

(assert (=> d!412744 (= lt!488943 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (singletonSeq!1222 lt!488319))))))

(assert (=> d!412744 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412744 (= (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488319) lt!488942)))

(declare-fun b!1433850 () Bool)

(declare-fun res!649314 () Bool)

(assert (=> b!1433850 (=> (not res!649314) (not e!915283))))

(assert (=> b!1433850 (= res!649314 (= (apply!3812 (_1!7942 lt!488943) 0) lt!488319))))

(declare-fun b!1433851 () Bool)

(assert (=> b!1433851 (= e!915283 (isEmpty!9259 (_2!7942 lt!488943)))))

(declare-fun b!1433852 () Bool)

(assert (=> b!1433852 (= e!915282 (isEmpty!9259 (_2!7942 (lex!1042 Lexer!2275 (rules!11378 thiss!10022) (print!1061 Lexer!2275 (singletonSeq!1222 lt!488319))))))))

(assert (= (and d!412744 res!649313) b!1433850))

(assert (= (and b!1433850 res!649314) b!1433851))

(assert (= (and d!412744 res!649315) b!1433852))

(declare-fun m!1636625 () Bool)

(assert (=> d!412744 m!1636625))

(declare-fun m!1636627 () Bool)

(assert (=> d!412744 m!1636627))

(declare-fun m!1636629 () Bool)

(assert (=> d!412744 m!1636629))

(declare-fun m!1636631 () Bool)

(assert (=> d!412744 m!1636631))

(assert (=> d!412744 m!1636629))

(assert (=> d!412744 m!1636629))

(declare-fun m!1636633 () Bool)

(assert (=> d!412744 m!1636633))

(assert (=> d!412744 m!1636633))

(declare-fun m!1636635 () Bool)

(assert (=> d!412744 m!1636635))

(assert (=> d!412744 m!1635527))

(declare-fun m!1636637 () Bool)

(assert (=> b!1433850 m!1636637))

(declare-fun m!1636639 () Bool)

(assert (=> b!1433851 m!1636639))

(assert (=> b!1433852 m!1636629))

(assert (=> b!1433852 m!1636629))

(assert (=> b!1433852 m!1636633))

(assert (=> b!1433852 m!1636633))

(assert (=> b!1433852 m!1636635))

(declare-fun m!1636641 () Bool)

(assert (=> b!1433852 m!1636641))

(assert (=> b!1433470 d!412744))

(declare-fun d!412746 () Bool)

(declare-fun prefixMatchZipperSequence!331 (Regex!3927 BalanceConc!10044) Bool)

(declare-fun rulesRegex!389 (LexerInterface!2277 List!14957) Regex!3927)

(declare-fun ++!3996 (BalanceConc!10044 BalanceConc!10044) BalanceConc!10044)

(assert (=> d!412746 (= (separableTokensPredicate!512 Lexer!2275 lt!488319 lt!488305 (rules!11378 thiss!10022)) (not (prefixMatchZipperSequence!331 (rulesRegex!389 Lexer!2275 (rules!11378 thiss!10022)) (++!3996 (charsOf!1513 lt!488319) (singletonSeq!1223 (apply!3814 (charsOf!1513 lt!488305) 0))))))))

(declare-fun bs!340967 () Bool)

(assert (= bs!340967 d!412746))

(declare-fun m!1636643 () Bool)

(assert (=> bs!340967 m!1636643))

(declare-fun m!1636645 () Bool)

(assert (=> bs!340967 m!1636645))

(declare-fun m!1636647 () Bool)

(assert (=> bs!340967 m!1636647))

(declare-fun m!1636649 () Bool)

(assert (=> bs!340967 m!1636649))

(declare-fun m!1636651 () Bool)

(assert (=> bs!340967 m!1636651))

(assert (=> bs!340967 m!1636651))

(declare-fun m!1636653 () Bool)

(assert (=> bs!340967 m!1636653))

(assert (=> bs!340967 m!1636643))

(declare-fun m!1636655 () Bool)

(assert (=> bs!340967 m!1636655))

(assert (=> bs!340967 m!1636653))

(assert (=> bs!340967 m!1636645))

(assert (=> bs!340967 m!1636649))

(assert (=> bs!340967 m!1636655))

(assert (=> b!1433470 d!412746))

(declare-fun d!412748 () Bool)

(declare-fun lt!488946 () Token!4888)

(declare-fun last!166 (List!14956) Token!4888)

(assert (=> d!412748 (= lt!488946 (last!166 (list!5918 (tokens!1970 thiss!10022))))))

(declare-fun last!167 (Conc!5053) Token!4888)

(assert (=> d!412748 (= lt!488946 (last!167 (c!235578 (tokens!1970 thiss!10022))))))

(assert (=> d!412748 (not (isEmpty!9249 (tokens!1970 thiss!10022)))))

(assert (=> d!412748 (= (last!163 (tokens!1970 thiss!10022)) lt!488946)))

(declare-fun bs!340968 () Bool)

(assert (= bs!340968 d!412748))

(assert (=> bs!340968 m!1635431))

(assert (=> bs!340968 m!1635431))

(declare-fun m!1636657 () Bool)

(assert (=> bs!340968 m!1636657))

(declare-fun m!1636659 () Bool)

(assert (=> bs!340968 m!1636659))

(assert (=> bs!340968 m!1635445))

(assert (=> b!1433470 d!412748))

(declare-fun d!412750 () Bool)

(assert (=> d!412750 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488319)))

(declare-fun lt!488949 () Unit!22639)

(declare-fun choose!8837 (LexerInterface!2277 List!14957 List!14956 Token!4888) Unit!22639)

(assert (=> d!412750 (= lt!488949 (choose!8837 Lexer!2275 (rules!11378 thiss!10022) lt!488309 lt!488319))))

(assert (=> d!412750 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412750 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488309 lt!488319) lt!488949)))

(declare-fun bs!340969 () Bool)

(assert (= bs!340969 d!412750))

(assert (=> bs!340969 m!1635437))

(declare-fun m!1636661 () Bool)

(assert (=> bs!340969 m!1636661))

(assert (=> bs!340969 m!1635527))

(assert (=> b!1433470 d!412750))

(declare-fun d!412752 () Bool)

(assert (=> d!412752 (= (list!5918 (tokens!1970 thiss!10022)) (list!5922 (c!235578 (tokens!1970 thiss!10022))))))

(declare-fun bs!340970 () Bool)

(assert (= bs!340970 d!412752))

(declare-fun m!1636663 () Bool)

(assert (=> bs!340970 m!1636663))

(assert (=> b!1433470 d!412752))

(declare-fun d!412754 () Bool)

(assert (=> d!412754 (rulesProduceIndividualToken!1210 Lexer!2275 (rules!11378 thiss!10022) lt!488305)))

(declare-fun lt!488950 () Unit!22639)

(assert (=> d!412754 (= lt!488950 (choose!8837 Lexer!2275 (rules!11378 thiss!10022) lt!488311 lt!488305))))

(assert (=> d!412754 (not (isEmpty!9251 (rules!11378 thiss!10022)))))

(assert (=> d!412754 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!395 Lexer!2275 (rules!11378 thiss!10022) lt!488311 lt!488305) lt!488950)))

(declare-fun bs!340971 () Bool)

(assert (= bs!340971 d!412754))

(assert (=> bs!340971 m!1635425))

(declare-fun m!1636665 () Bool)

(assert (=> bs!340971 m!1636665))

(assert (=> bs!340971 m!1635527))

(assert (=> b!1433470 d!412754))

(declare-fun d!412756 () Bool)

(assert (=> d!412756 (= (list!5918 (tokens!1970 lt!488321)) (list!5922 (c!235578 (tokens!1970 lt!488321))))))

(declare-fun bs!340972 () Bool)

(assert (= bs!340972 d!412756))

(declare-fun m!1636667 () Bool)

(assert (=> bs!340972 m!1636667))

(assert (=> b!1433480 d!412756))

(declare-fun b!1433861 () Bool)

(declare-fun tp!406253 () Bool)

(declare-fun e!915288 () Bool)

(declare-fun tp!406252 () Bool)

(assert (=> b!1433861 (= e!915288 (and (inv!19777 (left!12690 (c!235578 (tokens!1970 thiss!10022)))) tp!406252 (inv!19777 (right!13020 (c!235578 (tokens!1970 thiss!10022)))) tp!406253))))

(declare-fun b!1433863 () Bool)

(declare-fun e!915289 () Bool)

(declare-fun tp!406251 () Bool)

(assert (=> b!1433863 (= e!915289 tp!406251)))

(declare-fun b!1433862 () Bool)

(declare-fun inv!19784 (IArray!10111) Bool)

(assert (=> b!1433862 (= e!915288 (and (inv!19784 (xs!7786 (c!235578 (tokens!1970 thiss!10022)))) e!915289))))

(assert (=> b!1433479 (= tp!406213 (and (inv!19777 (c!235578 (tokens!1970 thiss!10022))) e!915288))))

(assert (= (and b!1433479 ((_ is Node!5053) (c!235578 (tokens!1970 thiss!10022)))) b!1433861))

(assert (= b!1433862 b!1433863))

(assert (= (and b!1433479 ((_ is Leaf!7561) (c!235578 (tokens!1970 thiss!10022)))) b!1433862))

(declare-fun m!1636669 () Bool)

(assert (=> b!1433861 m!1636669))

(declare-fun m!1636671 () Bool)

(assert (=> b!1433861 m!1636671))

(declare-fun m!1636673 () Bool)

(assert (=> b!1433862 m!1636673))

(assert (=> b!1433479 m!1635449))

(declare-fun b!1433874 () Bool)

(declare-fun b_free!35527 () Bool)

(declare-fun b_next!36231 () Bool)

(assert (=> b!1433874 (= b_free!35527 (not b_next!36231))))

(declare-fun tp!406265 () Bool)

(declare-fun b_and!96455 () Bool)

(assert (=> b!1433874 (= tp!406265 b_and!96455)))

(declare-fun b_free!35529 () Bool)

(declare-fun b_next!36233 () Bool)

(assert (=> b!1433874 (= b_free!35529 (not b_next!36233))))

(declare-fun tp!406264 () Bool)

(declare-fun b_and!96457 () Bool)

(assert (=> b!1433874 (= tp!406264 b_and!96457)))

(declare-fun e!915301 () Bool)

(assert (=> b!1433874 (= e!915301 (and tp!406265 tp!406264))))

(declare-fun e!915300 () Bool)

(declare-fun b!1433873 () Bool)

(declare-fun tp!406262 () Bool)

(declare-fun inv!19771 (String!17771) Bool)

(declare-fun inv!19785 (TokenValueInjection!5066) Bool)

(assert (=> b!1433873 (= e!915300 (and tp!406262 (inv!19771 (tag!2875 (h!20292 (rules!11378 other!32)))) (inv!19785 (transformation!2613 (h!20292 (rules!11378 other!32)))) e!915301))))

(declare-fun b!1433872 () Bool)

(declare-fun e!915298 () Bool)

(declare-fun tp!406263 () Bool)

(assert (=> b!1433872 (= e!915298 (and e!915300 tp!406263))))

(assert (=> b!1433473 (= tp!406214 e!915298)))

(assert (= b!1433873 b!1433874))

(assert (= b!1433872 b!1433873))

(assert (= (and b!1433473 ((_ is Cons!14891) (rules!11378 other!32))) b!1433872))

(declare-fun m!1636675 () Bool)

(assert (=> b!1433873 m!1636675))

(declare-fun m!1636677 () Bool)

(assert (=> b!1433873 m!1636677))

(declare-fun e!915302 () Bool)

(declare-fun b!1433875 () Bool)

(declare-fun tp!406267 () Bool)

(declare-fun tp!406268 () Bool)

(assert (=> b!1433875 (= e!915302 (and (inv!19777 (left!12690 (c!235578 (tokens!1970 other!32)))) tp!406267 (inv!19777 (right!13020 (c!235578 (tokens!1970 other!32)))) tp!406268))))

(declare-fun b!1433877 () Bool)

(declare-fun e!915303 () Bool)

(declare-fun tp!406266 () Bool)

(assert (=> b!1433877 (= e!915303 tp!406266)))

(declare-fun b!1433876 () Bool)

(assert (=> b!1433876 (= e!915302 (and (inv!19784 (xs!7786 (c!235578 (tokens!1970 other!32)))) e!915303))))

(assert (=> b!1433481 (= tp!406215 (and (inv!19777 (c!235578 (tokens!1970 other!32))) e!915302))))

(assert (= (and b!1433481 ((_ is Node!5053) (c!235578 (tokens!1970 other!32)))) b!1433875))

(assert (= b!1433876 b!1433877))

(assert (= (and b!1433481 ((_ is Leaf!7561) (c!235578 (tokens!1970 other!32)))) b!1433876))

(declare-fun m!1636679 () Bool)

(assert (=> b!1433875 m!1636679))

(declare-fun m!1636681 () Bool)

(assert (=> b!1433875 m!1636681))

(declare-fun m!1636683 () Bool)

(assert (=> b!1433876 m!1636683))

(assert (=> b!1433481 m!1635417))

(declare-fun b!1433880 () Bool)

(declare-fun b_free!35531 () Bool)

(declare-fun b_next!36235 () Bool)

(assert (=> b!1433880 (= b_free!35531 (not b_next!36235))))

(declare-fun tp!406272 () Bool)

(declare-fun b_and!96459 () Bool)

(assert (=> b!1433880 (= tp!406272 b_and!96459)))

(declare-fun b_free!35533 () Bool)

(declare-fun b_next!36237 () Bool)

(assert (=> b!1433880 (= b_free!35533 (not b_next!36237))))

(declare-fun tp!406271 () Bool)

(declare-fun b_and!96461 () Bool)

(assert (=> b!1433880 (= tp!406271 b_and!96461)))

(declare-fun e!915307 () Bool)

(assert (=> b!1433880 (= e!915307 (and tp!406272 tp!406271))))

(declare-fun e!915306 () Bool)

(declare-fun tp!406269 () Bool)

(declare-fun b!1433879 () Bool)

(assert (=> b!1433879 (= e!915306 (and tp!406269 (inv!19771 (tag!2875 (h!20292 (rules!11378 thiss!10022)))) (inv!19785 (transformation!2613 (h!20292 (rules!11378 thiss!10022)))) e!915307))))

(declare-fun b!1433878 () Bool)

(declare-fun e!915304 () Bool)

(declare-fun tp!406270 () Bool)

(assert (=> b!1433878 (= e!915304 (and e!915306 tp!406270))))

(assert (=> b!1433475 (= tp!406216 e!915304)))

(assert (= b!1433879 b!1433880))

(assert (= b!1433878 b!1433879))

(assert (= (and b!1433475 ((_ is Cons!14891) (rules!11378 thiss!10022))) b!1433878))

(declare-fun m!1636685 () Bool)

(assert (=> b!1433879 m!1636685))

(declare-fun m!1636687 () Bool)

(assert (=> b!1433879 m!1636687))

(check-sat (not b!1433685) (not b!1433876) (not d!412756) (not d!412686) (not d!412598) (not d!412630) (not b!1433626) (not b!1433861) (not d!412662) (not b!1433851) (not d!412646) (not b!1433518) (not b!1433755) (not b_next!36231) (not b!1433743) (not b!1433625) (not b!1433752) (not b!1433774) (not b!1433566) (not b!1433627) (not b_next!36235) (not d!412628) (not b!1433591) (not d!412600) (not d!412676) (not d!412688) (not b!1433519) (not b!1433628) (not b!1433878) b_and!96461 (not b!1433714) (not b!1433771) (not b!1433877) (not b!1433713) (not d!412602) (not b!1433576) (not d!412626) b_and!96455 (not d!412748) (not d!412704) (not b!1433640) (not b!1433677) (not d!412620) (not b!1433772) (not b!1433873) (not d!412702) (not d!412740) (not b!1433642) (not d!412678) (not b!1433696) (not b!1433686) (not d!412614) (not b!1433776) (not b!1433725) (not b_next!36233) (not b!1433879) (not d!412618) (not b!1433759) b_and!96457 (not b!1433852) (not b!1433641) (not d!412698) (not b!1433773) (not b!1433676) (not b_next!36237) (not b!1433481) (not b!1433848) (not b!1433850) (not b!1433590) (not d!412696) (not b!1433521) (not b!1433872) (not b!1433624) (not d!412664) b_and!96459 (not d!412644) (not d!412754) (not b!1433862) (not d!412746) (not d!412684) (not b!1433742) (not d!412622) (not b!1433516) (not b!1433630) (not d!412612) (not b!1433751) (not b!1433687) (not b!1433753) (not d!412752) (not b!1433520) (not d!412744) (not b!1433517) (not b!1433748) (not b!1433567) (not b!1433629) (not d!412742) (not b!1433724) (not b!1433678) (not d!412706) (not b!1433684) (not b!1433643) (not b!1433849) (not d!412650) (not b!1433863) (not b!1433679) (not b!1433694) (not b!1433479) (not b!1433758) (not d!412710) (not b!1433875) (not d!412582) (not b!1433847) (not d!412750) (not b!1433631))
(check-sat (not b_next!36231) (not b_next!36235) b_and!96461 b_and!96455 (not b_next!36233) b_and!96457 (not b_next!36237) b_and!96459)

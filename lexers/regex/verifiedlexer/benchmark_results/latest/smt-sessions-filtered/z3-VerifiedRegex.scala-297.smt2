; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7270 () Bool)

(assert start!7270)

(declare-fun b!82370 () Bool)

(declare-fun b_free!2673 () Bool)

(declare-fun b_next!2673 () Bool)

(assert (=> b!82370 (= b_free!2673 (not b_next!2673))))

(declare-fun tp!50982 () Bool)

(declare-fun b_and!3819 () Bool)

(assert (=> b!82370 (= tp!50982 b_and!3819)))

(declare-fun b_free!2675 () Bool)

(declare-fun b_next!2675 () Bool)

(assert (=> b!82370 (= b_free!2675 (not b_next!2675))))

(declare-fun tp!50984 () Bool)

(declare-fun b_and!3821 () Bool)

(assert (=> b!82370 (= tp!50984 b_and!3821)))

(declare-fun b!82368 () Bool)

(declare-fun e!46288 () Bool)

(declare-fun tp!50986 () Bool)

(declare-datatypes ((C!1708 0))(
  ( (C!1709 (val!461 Int)) )
))
(declare-datatypes ((List!1490 0))(
  ( (Nil!1484) (Cons!1484 (h!6881 C!1708) (t!20473 List!1490)) )
))
(declare-datatypes ((IArray!905 0))(
  ( (IArray!906 (innerList!510 List!1490)) )
))
(declare-datatypes ((Conc!452 0))(
  ( (Node!452 (left!1127 Conc!452) (right!1457 Conc!452) (csize!1134 Int) (cheight!663 Int)) (Leaf!750 (xs!3031 IArray!905) (csize!1135 Int)) (Empty!452) )
))
(declare-datatypes ((BalanceConc!908 0))(
  ( (BalanceConc!909 (c!20772 Conc!452)) )
))
(declare-datatypes ((Regex!393 0))(
  ( (ElementMatch!393 (c!20773 C!1708)) (Concat!708 (regOne!1298 Regex!393) (regTwo!1298 Regex!393)) (EmptyExpr!393) (Star!393 (reg!722 Regex!393)) (EmptyLang!393) (Union!393 (regOne!1299 Regex!393) (regTwo!1299 Regex!393)) )
))
(declare-datatypes ((String!1966 0))(
  ( (String!1967 (value!12132 String)) )
))
(declare-datatypes ((List!1491 0))(
  ( (Nil!1485) (Cons!1485 (h!6882 (_ BitVec 16)) (t!20474 List!1491)) )
))
(declare-datatypes ((TokenValue!315 0))(
  ( (FloatLiteralValue!630 (text!2650 List!1491)) (TokenValueExt!314 (__x!1725 Int)) (Broken!1575 (value!12133 List!1491)) (Object!320) (End!315) (Def!315) (Underscore!315) (Match!315) (Else!315) (Error!315) (Case!315) (If!315) (Extends!315) (Abstract!315) (Class!315) (Val!315) (DelimiterValue!630 (del!375 List!1491)) (KeywordValue!321 (value!12134 List!1491)) (CommentValue!630 (value!12135 List!1491)) (WhitespaceValue!630 (value!12136 List!1491)) (IndentationValue!315 (value!12137 List!1491)) (String!1968) (Int32!315) (Broken!1576 (value!12138 List!1491)) (Boolean!316) (Unit!931) (OperatorValue!318 (op!375 List!1491)) (IdentifierValue!630 (value!12139 List!1491)) (IdentifierValue!631 (value!12140 List!1491)) (WhitespaceValue!631 (value!12141 List!1491)) (True!630) (False!630) (Broken!1577 (value!12142 List!1491)) (Broken!1578 (value!12143 List!1491)) (True!631) (RightBrace!315) (RightBracket!315) (Colon!315) (Null!315) (Comma!315) (LeftBracket!315) (False!631) (LeftBrace!315) (ImaginaryLiteralValue!315 (text!2651 List!1491)) (StringLiteralValue!945 (value!12144 List!1491)) (EOFValue!315 (value!12145 List!1491)) (IdentValue!315 (value!12146 List!1491)) (DelimiterValue!631 (value!12147 List!1491)) (DedentValue!315 (value!12148 List!1491)) (NewLineValue!315 (value!12149 List!1491)) (IntegerValue!945 (value!12150 (_ BitVec 32)) (text!2652 List!1491)) (IntegerValue!946 (value!12151 Int) (text!2653 List!1491)) (Times!315) (Or!315) (Equal!315) (Minus!315) (Broken!1579 (value!12152 List!1491)) (And!315) (Div!315) (LessEqual!315) (Mod!315) (Concat!709) (Not!315) (Plus!315) (SpaceValue!315 (value!12153 List!1491)) (IntegerValue!947 (value!12154 Int) (text!2654 List!1491)) (StringLiteralValue!946 (text!2655 List!1491)) (FloatLiteralValue!631 (text!2656 List!1491)) (BytesLiteralValue!315 (value!12155 List!1491)) (CommentValue!631 (value!12156 List!1491)) (StringLiteralValue!947 (value!12157 List!1491)) (ErrorTokenValue!315 (msg!376 List!1491)) )
))
(declare-datatypes ((TokenValueInjection!454 0))(
  ( (TokenValueInjection!455 (toValue!848 Int) (toChars!707 Int)) )
))
(declare-datatypes ((Rule!450 0))(
  ( (Rule!451 (regex!325 Regex!393) (tag!503 String!1966) (isSeparator!325 Bool) (transformation!325 TokenValueInjection!454)) )
))
(declare-datatypes ((List!1492 0))(
  ( (Nil!1486) (Cons!1486 (h!6883 Rule!450) (t!20475 List!1492)) )
))
(declare-fun rules!2471 () List!1492)

(declare-fun e!46285 () Bool)

(declare-fun inv!1832 (String!1966) Bool)

(declare-fun inv!1834 (TokenValueInjection!454) Bool)

(assert (=> b!82368 (= e!46288 (and tp!50986 (inv!1832 (tag!503 (h!6883 rules!2471))) (inv!1834 (transformation!325 (h!6883 rules!2471))) e!46285))))

(declare-fun b!82369 () Bool)

(declare-fun res!42757 () Bool)

(declare-fun e!46287 () Bool)

(assert (=> b!82369 (=> (not res!42757) (not e!46287))))

(declare-datatypes ((LexerInterface!217 0))(
  ( (LexerInterfaceExt!214 (__x!1726 Int)) (Lexer!215) )
))
(declare-fun thiss!19403 () LexerInterface!217)

(declare-fun rulesInvariant!211 (LexerInterface!217 List!1492) Bool)

(assert (=> b!82369 (= res!42757 (rulesInvariant!211 thiss!19403 rules!2471))))

(assert (=> b!82370 (= e!46285 (and tp!50982 tp!50984))))

(declare-fun b!82371 () Bool)

(declare-fun e!46283 () Bool)

(assert (=> b!82371 (= e!46283 false)))

(declare-fun lt!19360 () List!1490)

(declare-datatypes ((Token!410 0))(
  ( (Token!411 (value!12158 TokenValue!315) (rule!810 Rule!450) (size!1277 Int) (originalCharacters!376 List!1490)) )
))
(declare-datatypes ((List!1493 0))(
  ( (Nil!1487) (Cons!1487 (h!6884 Token!410) (t!20476 List!1493)) )
))
(declare-datatypes ((IArray!907 0))(
  ( (IArray!908 (innerList!511 List!1493)) )
))
(declare-datatypes ((Conc!453 0))(
  ( (Node!453 (left!1128 Conc!453) (right!1458 Conc!453) (csize!1136 Int) (cheight!664 Int)) (Leaf!751 (xs!3032 IArray!907) (csize!1137 Int)) (Empty!453) )
))
(declare-datatypes ((BalanceConc!910 0))(
  ( (BalanceConc!911 (c!20774 Conc!453)) )
))
(declare-datatypes ((tuple2!1542 0))(
  ( (tuple2!1543 (_1!978 BalanceConc!910) (_2!978 BalanceConc!908)) )
))
(declare-fun lt!19361 () tuple2!1542)

(declare-fun ++!168 (List!1490 List!1490) List!1490)

(declare-fun list!525 (BalanceConc!908) List!1490)

(declare-fun print!56 (LexerInterface!217 BalanceConc!910) BalanceConc!908)

(assert (=> b!82371 (= lt!19360 (++!168 (list!525 (print!56 thiss!19403 (_1!978 lt!19361))) (list!525 (_2!978 lt!19361))))))

(declare-fun res!42756 () Bool)

(assert (=> start!7270 (=> (not res!42756) (not e!46287))))

(get-info :version)

(assert (=> start!7270 (= res!42756 ((_ is Lexer!215) thiss!19403))))

(assert (=> start!7270 e!46287))

(assert (=> start!7270 true))

(declare-fun e!46281 () Bool)

(assert (=> start!7270 e!46281))

(declare-fun e!46282 () Bool)

(assert (=> start!7270 e!46282))

(declare-fun b!82372 () Bool)

(declare-fun e!46284 () Bool)

(assert (=> b!82372 (= e!46287 e!46284)))

(declare-fun res!42755 () Bool)

(assert (=> b!82372 (=> (not res!42755) (not e!46284))))

(declare-fun isEmpty!535 (BalanceConc!908) Bool)

(assert (=> b!82372 (= res!42755 (not (isEmpty!535 (_2!978 lt!19361))))))

(declare-fun input!2238 () List!1490)

(declare-fun lex!125 (LexerInterface!217 List!1492 BalanceConc!908) tuple2!1542)

(declare-fun seqFromList!161 (List!1490) BalanceConc!908)

(assert (=> b!82372 (= lt!19361 (lex!125 thiss!19403 rules!2471 (seqFromList!161 input!2238)))))

(declare-fun b!82373 () Bool)

(declare-fun res!42754 () Bool)

(assert (=> b!82373 (=> (not res!42754) (not e!46287))))

(declare-fun isEmpty!536 (List!1492) Bool)

(assert (=> b!82373 (= res!42754 (not (isEmpty!536 rules!2471)))))

(declare-fun b!82374 () Bool)

(assert (=> b!82374 (= e!46284 e!46283)))

(declare-fun res!42758 () Bool)

(assert (=> b!82374 (=> (not res!42758) (not e!46283))))

(declare-fun lt!19362 () List!1493)

(assert (=> b!82374 (= res!42758 (and (or (not ((_ is Cons!1487) lt!19362)) (not ((_ is Nil!1487) (t!20476 lt!19362)))) (not ((_ is Cons!1487) lt!19362))))))

(declare-fun list!526 (BalanceConc!910) List!1493)

(assert (=> b!82374 (= lt!19362 (list!526 (_1!978 lt!19361)))))

(declare-fun b!82375 () Bool)

(declare-fun tp!50983 () Bool)

(assert (=> b!82375 (= e!46281 (and e!46288 tp!50983))))

(declare-fun b!82376 () Bool)

(declare-fun tp_is_empty!709 () Bool)

(declare-fun tp!50985 () Bool)

(assert (=> b!82376 (= e!46282 (and tp_is_empty!709 tp!50985))))

(assert (= (and start!7270 res!42756) b!82373))

(assert (= (and b!82373 res!42754) b!82369))

(assert (= (and b!82369 res!42757) b!82372))

(assert (= (and b!82372 res!42755) b!82374))

(assert (= (and b!82374 res!42758) b!82371))

(assert (= b!82368 b!82370))

(assert (= b!82375 b!82368))

(assert (= (and start!7270 ((_ is Cons!1486) rules!2471)) b!82375))

(assert (= (and start!7270 ((_ is Cons!1484) input!2238)) b!82376))

(declare-fun m!59234 () Bool)

(assert (=> b!82372 m!59234))

(declare-fun m!59236 () Bool)

(assert (=> b!82372 m!59236))

(assert (=> b!82372 m!59236))

(declare-fun m!59238 () Bool)

(assert (=> b!82372 m!59238))

(declare-fun m!59240 () Bool)

(assert (=> b!82374 m!59240))

(declare-fun m!59242 () Bool)

(assert (=> b!82371 m!59242))

(assert (=> b!82371 m!59242))

(declare-fun m!59244 () Bool)

(assert (=> b!82371 m!59244))

(declare-fun m!59246 () Bool)

(assert (=> b!82371 m!59246))

(assert (=> b!82371 m!59244))

(assert (=> b!82371 m!59246))

(declare-fun m!59248 () Bool)

(assert (=> b!82371 m!59248))

(declare-fun m!59250 () Bool)

(assert (=> b!82373 m!59250))

(declare-fun m!59252 () Bool)

(assert (=> b!82368 m!59252))

(declare-fun m!59254 () Bool)

(assert (=> b!82368 m!59254))

(declare-fun m!59256 () Bool)

(assert (=> b!82369 m!59256))

(check-sat (not b!82375) (not b!82369) (not b!82376) (not b!82373) b_and!3821 (not b!82371) (not b!82374) (not b_next!2673) (not b!82372) (not b_next!2675) tp_is_empty!709 b_and!3819 (not b!82368))
(check-sat b_and!3821 b_and!3819 (not b_next!2675) (not b_next!2673))

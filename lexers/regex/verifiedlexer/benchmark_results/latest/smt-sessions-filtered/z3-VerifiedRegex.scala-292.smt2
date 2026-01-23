; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6942 () Bool)

(assert start!6942)

(declare-fun b!80773 () Bool)

(declare-fun b_free!2609 () Bool)

(declare-fun b_next!2609 () Bool)

(assert (=> b!80773 (= b_free!2609 (not b_next!2609))))

(declare-fun tp!50614 () Bool)

(declare-fun b_and!3731 () Bool)

(assert (=> b!80773 (= tp!50614 b_and!3731)))

(declare-fun b_free!2611 () Bool)

(declare-fun b_next!2611 () Bool)

(assert (=> b!80773 (= b_free!2611 (not b_next!2611))))

(declare-fun tp!50612 () Bool)

(declare-fun b_and!3733 () Bool)

(assert (=> b!80773 (= tp!50612 b_and!3733)))

(declare-fun e!45318 () Bool)

(assert (=> b!80773 (= e!45318 (and tp!50614 tp!50612))))

(declare-fun b!80774 () Bool)

(declare-fun e!45313 () Bool)

(declare-fun e!45315 () Bool)

(assert (=> b!80774 (= e!45313 e!45315)))

(declare-fun res!42020 () Bool)

(assert (=> b!80774 (=> (not res!42020) (not e!45315))))

(declare-datatypes ((C!1688 0))(
  ( (C!1689 (val!451 Int)) )
))
(declare-datatypes ((List!1446 0))(
  ( (Nil!1440) (Cons!1440 (h!6837 C!1688) (t!20373 List!1446)) )
))
(declare-datatypes ((IArray!865 0))(
  ( (IArray!866 (innerList!490 List!1446)) )
))
(declare-datatypes ((Conc!432 0))(
  ( (Node!432 (left!1094 Conc!432) (right!1424 Conc!432) (csize!1094 Int) (cheight!643 Int)) (Leaf!725 (xs!3011 IArray!865) (csize!1095 Int)) (Empty!432) )
))
(declare-datatypes ((BalanceConc!868 0))(
  ( (BalanceConc!869 (c!20466 Conc!432)) )
))
(declare-datatypes ((Regex!383 0))(
  ( (ElementMatch!383 (c!20467 C!1688)) (Concat!688 (regOne!1278 Regex!383) (regTwo!1278 Regex!383)) (EmptyExpr!383) (Star!383 (reg!712 Regex!383)) (EmptyLang!383) (Union!383 (regOne!1279 Regex!383) (regTwo!1279 Regex!383)) )
))
(declare-datatypes ((String!1916 0))(
  ( (String!1917 (value!11847 String)) )
))
(declare-datatypes ((List!1447 0))(
  ( (Nil!1441) (Cons!1441 (h!6838 (_ BitVec 16)) (t!20374 List!1447)) )
))
(declare-datatypes ((TokenValue!305 0))(
  ( (FloatLiteralValue!610 (text!2580 List!1447)) (TokenValueExt!304 (__x!1705 Int)) (Broken!1525 (value!11848 List!1447)) (Object!310) (End!305) (Def!305) (Underscore!305) (Match!305) (Else!305) (Error!305) (Case!305) (If!305) (Extends!305) (Abstract!305) (Class!305) (Val!305) (DelimiterValue!610 (del!365 List!1447)) (KeywordValue!311 (value!11849 List!1447)) (CommentValue!610 (value!11850 List!1447)) (WhitespaceValue!610 (value!11851 List!1447)) (IndentationValue!305 (value!11852 List!1447)) (String!1918) (Int32!305) (Broken!1526 (value!11853 List!1447)) (Boolean!306) (Unit!895) (OperatorValue!308 (op!365 List!1447)) (IdentifierValue!610 (value!11854 List!1447)) (IdentifierValue!611 (value!11855 List!1447)) (WhitespaceValue!611 (value!11856 List!1447)) (True!610) (False!610) (Broken!1527 (value!11857 List!1447)) (Broken!1528 (value!11858 List!1447)) (True!611) (RightBrace!305) (RightBracket!305) (Colon!305) (Null!305) (Comma!305) (LeftBracket!305) (False!611) (LeftBrace!305) (ImaginaryLiteralValue!305 (text!2581 List!1447)) (StringLiteralValue!915 (value!11859 List!1447)) (EOFValue!305 (value!11860 List!1447)) (IdentValue!305 (value!11861 List!1447)) (DelimiterValue!611 (value!11862 List!1447)) (DedentValue!305 (value!11863 List!1447)) (NewLineValue!305 (value!11864 List!1447)) (IntegerValue!915 (value!11865 (_ BitVec 32)) (text!2582 List!1447)) (IntegerValue!916 (value!11866 Int) (text!2583 List!1447)) (Times!305) (Or!305) (Equal!305) (Minus!305) (Broken!1529 (value!11867 List!1447)) (And!305) (Div!305) (LessEqual!305) (Mod!305) (Concat!689) (Not!305) (Plus!305) (SpaceValue!305 (value!11868 List!1447)) (IntegerValue!917 (value!11869 Int) (text!2584 List!1447)) (StringLiteralValue!916 (text!2585 List!1447)) (FloatLiteralValue!611 (text!2586 List!1447)) (BytesLiteralValue!305 (value!11870 List!1447)) (CommentValue!611 (value!11871 List!1447)) (StringLiteralValue!917 (value!11872 List!1447)) (ErrorTokenValue!305 (msg!366 List!1447)) )
))
(declare-datatypes ((TokenValueInjection!434 0))(
  ( (TokenValueInjection!435 (toValue!834 Int) (toChars!693 Int)) )
))
(declare-datatypes ((Rule!430 0))(
  ( (Rule!431 (regex!315 Regex!383) (tag!493 String!1916) (isSeparator!315 Bool) (transformation!315 TokenValueInjection!434)) )
))
(declare-datatypes ((Token!390 0))(
  ( (Token!391 (value!11873 TokenValue!305) (rule!798 Rule!430) (size!1249 Int) (originalCharacters!366 List!1446)) )
))
(declare-datatypes ((List!1448 0))(
  ( (Nil!1442) (Cons!1442 (h!6839 Token!390) (t!20375 List!1448)) )
))
(declare-datatypes ((IArray!867 0))(
  ( (IArray!868 (innerList!491 List!1448)) )
))
(declare-datatypes ((Conc!433 0))(
  ( (Node!433 (left!1095 Conc!433) (right!1425 Conc!433) (csize!1096 Int) (cheight!644 Int)) (Leaf!726 (xs!3012 IArray!867) (csize!1097 Int)) (Empty!433) )
))
(declare-datatypes ((BalanceConc!870 0))(
  ( (BalanceConc!871 (c!20468 Conc!433)) )
))
(declare-datatypes ((tuple2!1478 0))(
  ( (tuple2!1479 (_1!946 BalanceConc!870) (_2!946 BalanceConc!868)) )
))
(declare-fun lt!18237 () tuple2!1478)

(declare-fun isEmpty!495 (BalanceConc!868) Bool)

(assert (=> b!80774 (= res!42020 (not (isEmpty!495 (_2!946 lt!18237))))))

(declare-datatypes ((LexerInterface!207 0))(
  ( (LexerInterfaceExt!204 (__x!1706 Int)) (Lexer!205) )
))
(declare-fun thiss!19403 () LexerInterface!207)

(declare-datatypes ((List!1449 0))(
  ( (Nil!1443) (Cons!1443 (h!6840 Rule!430) (t!20376 List!1449)) )
))
(declare-fun rules!2471 () List!1449)

(declare-fun input!2238 () List!1446)

(declare-fun lex!115 (LexerInterface!207 List!1449 BalanceConc!868) tuple2!1478)

(declare-fun seqFromList!142 (List!1446) BalanceConc!868)

(assert (=> b!80774 (= lt!18237 (lex!115 thiss!19403 rules!2471 (seqFromList!142 input!2238)))))

(declare-fun res!42018 () Bool)

(assert (=> start!6942 (=> (not res!42018) (not e!45313))))

(get-info :version)

(assert (=> start!6942 (= res!42018 ((_ is Lexer!205) thiss!19403))))

(assert (=> start!6942 e!45313))

(assert (=> start!6942 true))

(declare-fun e!45319 () Bool)

(assert (=> start!6942 e!45319))

(declare-fun e!45314 () Bool)

(assert (=> start!6942 e!45314))

(declare-fun b!80775 () Bool)

(declare-fun res!42016 () Bool)

(assert (=> b!80775 (=> (not res!42016) (not e!45313))))

(declare-fun rulesInvariant!201 (LexerInterface!207 List!1449) Bool)

(assert (=> b!80775 (= res!42016 (rulesInvariant!201 thiss!19403 rules!2471))))

(declare-fun b!80776 () Bool)

(declare-fun res!42017 () Bool)

(assert (=> b!80776 (=> (not res!42017) (not e!45313))))

(declare-fun isEmpty!496 (List!1449) Bool)

(assert (=> b!80776 (= res!42017 (not (isEmpty!496 rules!2471)))))

(declare-fun b!80777 () Bool)

(declare-fun e!45320 () Bool)

(declare-fun tp!50610 () Bool)

(assert (=> b!80777 (= e!45319 (and e!45320 tp!50610))))

(declare-fun b!80778 () Bool)

(declare-fun tp_is_empty!689 () Bool)

(declare-fun tp!50613 () Bool)

(assert (=> b!80778 (= e!45314 (and tp_is_empty!689 tp!50613))))

(declare-fun b!80779 () Bool)

(declare-fun e!45312 () Bool)

(declare-fun e!45316 () Bool)

(assert (=> b!80779 (= e!45312 (not e!45316))))

(declare-fun res!42015 () Bool)

(assert (=> b!80779 (=> res!42015 e!45316)))

(declare-fun lt!18232 () List!1446)

(declare-datatypes ((tuple2!1480 0))(
  ( (tuple2!1481 (_1!947 Token!390) (_2!947 List!1446)) )
))
(declare-fun lt!18229 () tuple2!1480)

(declare-fun ++!152 (List!1446 List!1446) List!1446)

(assert (=> b!80779 (= res!42015 (not (= input!2238 (++!152 lt!18232 (_2!947 lt!18229)))))))

(declare-fun list!493 (BalanceConc!868) List!1446)

(declare-fun charsOf!52 (Token!390) BalanceConc!868)

(assert (=> b!80779 (= lt!18232 (list!493 (charsOf!52 (_1!947 lt!18229))))))

(declare-fun lt!18233 () tuple2!1478)

(declare-fun lt!18231 () List!1446)

(declare-fun lt!18234 () List!1448)

(declare-fun lt!18235 () List!1446)

(declare-datatypes ((tuple2!1482 0))(
  ( (tuple2!1483 (_1!948 List!1448) (_2!948 List!1446)) )
))
(declare-fun list!494 (BalanceConc!870) List!1448)

(declare-fun tail!128 (List!1448) List!1448)

(assert (=> b!80779 (= (tuple2!1483 (list!494 (_1!946 lt!18233)) lt!18231) (tuple2!1483 (tail!128 lt!18234) lt!18235))))

(declare-datatypes ((Unit!896 0))(
  ( (Unit!897) )
))
(declare-fun lt!18228 () Unit!896)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!26 (LexerInterface!207 List!1449 List!1446 List!1448 List!1446) Unit!896)

(assert (=> b!80779 (= lt!18228 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!26 thiss!19403 rules!2471 input!2238 lt!18234 lt!18235))))

(assert (=> b!80779 (= lt!18235 (list!493 (_2!946 lt!18237)))))

(declare-fun lt!18230 () List!1446)

(assert (=> b!80779 (= (++!152 lt!18230 lt!18231) (_2!947 lt!18229))))

(assert (=> b!80779 (= lt!18231 (list!493 (_2!946 lt!18233)))))

(declare-fun print!46 (LexerInterface!207 BalanceConc!870) BalanceConc!868)

(assert (=> b!80779 (= lt!18230 (list!493 (print!46 thiss!19403 (_1!946 lt!18233))))))

(assert (=> b!80779 (= lt!18233 (lex!115 thiss!19403 rules!2471 (seqFromList!142 (_2!947 lt!18229))))))

(declare-fun lt!18239 () Unit!896)

(declare-fun theoremInvertFromString!30 (LexerInterface!207 List!1449 List!1446) Unit!896)

(assert (=> b!80779 (= lt!18239 (theoremInvertFromString!30 thiss!19403 rules!2471 (_2!947 lt!18229)))))

(declare-datatypes ((Option!124 0))(
  ( (None!123) (Some!123 (v!12816 tuple2!1480)) )
))
(declare-fun get!361 (Option!124) tuple2!1480)

(declare-fun maxPrefix!51 (LexerInterface!207 List!1449 List!1446) Option!124)

(assert (=> b!80779 (= lt!18229 (get!361 (maxPrefix!51 thiss!19403 rules!2471 input!2238)))))

(declare-fun lt!18236 () BalanceConc!870)

(declare-fun prepend!75 (BalanceConc!870 Token!390) BalanceConc!870)

(assert (=> b!80779 (= lt!18234 (list!494 (prepend!75 lt!18236 (h!6839 lt!18234))))))

(declare-fun seqFromList!143 (List!1448) BalanceConc!870)

(assert (=> b!80779 (= lt!18236 (seqFromList!143 (t!20375 lt!18234)))))

(declare-fun lt!18240 () Unit!896)

(declare-fun seqFromListBHdTlConstructive!38 (Token!390 List!1448 BalanceConc!870) Unit!896)

(assert (=> b!80779 (= lt!18240 (seqFromListBHdTlConstructive!38 (h!6839 lt!18234) (t!20375 lt!18234) (_1!946 lt!18237)))))

(declare-fun b!80780 () Bool)

(assert (=> b!80780 (= e!45315 e!45312)))

(declare-fun res!42019 () Bool)

(assert (=> b!80780 (=> (not res!42019) (not e!45312))))

(declare-fun lt!18238 () Bool)

(assert (=> b!80780 (= res!42019 (and (or lt!18238 (not ((_ is Nil!1442) (t!20375 lt!18234)))) (not lt!18238)))))

(assert (=> b!80780 (= lt!18238 (not ((_ is Cons!1442) lt!18234)))))

(assert (=> b!80780 (= lt!18234 (list!494 (_1!946 lt!18237)))))

(declare-fun b!80781 () Bool)

(assert (=> b!80781 (= e!45316 true)))

(declare-fun lt!18227 () List!1446)

(assert (=> b!80781 (= lt!18227 (++!152 lt!18232 (++!152 (list!493 (print!46 thiss!19403 lt!18236)) lt!18235)))))

(declare-fun tp!50611 () Bool)

(declare-fun b!80782 () Bool)

(declare-fun inv!1793 (String!1916) Bool)

(declare-fun inv!1795 (TokenValueInjection!434) Bool)

(assert (=> b!80782 (= e!45320 (and tp!50611 (inv!1793 (tag!493 (h!6840 rules!2471))) (inv!1795 (transformation!315 (h!6840 rules!2471))) e!45318))))

(assert (= (and start!6942 res!42018) b!80776))

(assert (= (and b!80776 res!42017) b!80775))

(assert (= (and b!80775 res!42016) b!80774))

(assert (= (and b!80774 res!42020) b!80780))

(assert (= (and b!80780 res!42019) b!80779))

(assert (= (and b!80779 (not res!42015)) b!80781))

(assert (= b!80782 b!80773))

(assert (= b!80777 b!80782))

(assert (= (and start!6942 ((_ is Cons!1443) rules!2471)) b!80777))

(assert (= (and start!6942 ((_ is Cons!1440) input!2238)) b!80778))

(declare-fun m!56174 () Bool)

(assert (=> b!80779 m!56174))

(declare-fun m!56176 () Bool)

(assert (=> b!80779 m!56176))

(assert (=> b!80779 m!56176))

(declare-fun m!56178 () Bool)

(assert (=> b!80779 m!56178))

(declare-fun m!56180 () Bool)

(assert (=> b!80779 m!56180))

(declare-fun m!56182 () Bool)

(assert (=> b!80779 m!56182))

(declare-fun m!56184 () Bool)

(assert (=> b!80779 m!56184))

(declare-fun m!56186 () Bool)

(assert (=> b!80779 m!56186))

(assert (=> b!80779 m!56180))

(declare-fun m!56188 () Bool)

(assert (=> b!80779 m!56188))

(declare-fun m!56190 () Bool)

(assert (=> b!80779 m!56190))

(declare-fun m!56192 () Bool)

(assert (=> b!80779 m!56192))

(declare-fun m!56194 () Bool)

(assert (=> b!80779 m!56194))

(declare-fun m!56196 () Bool)

(assert (=> b!80779 m!56196))

(assert (=> b!80779 m!56174))

(declare-fun m!56198 () Bool)

(assert (=> b!80779 m!56198))

(assert (=> b!80779 m!56194))

(declare-fun m!56200 () Bool)

(assert (=> b!80779 m!56200))

(assert (=> b!80779 m!56182))

(declare-fun m!56202 () Bool)

(assert (=> b!80779 m!56202))

(declare-fun m!56204 () Bool)

(assert (=> b!80779 m!56204))

(declare-fun m!56206 () Bool)

(assert (=> b!80779 m!56206))

(declare-fun m!56208 () Bool)

(assert (=> b!80779 m!56208))

(declare-fun m!56210 () Bool)

(assert (=> b!80779 m!56210))

(declare-fun m!56212 () Bool)

(assert (=> b!80779 m!56212))

(declare-fun m!56214 () Bool)

(assert (=> b!80781 m!56214))

(assert (=> b!80781 m!56214))

(declare-fun m!56216 () Bool)

(assert (=> b!80781 m!56216))

(assert (=> b!80781 m!56216))

(declare-fun m!56218 () Bool)

(assert (=> b!80781 m!56218))

(assert (=> b!80781 m!56218))

(declare-fun m!56220 () Bool)

(assert (=> b!80781 m!56220))

(declare-fun m!56222 () Bool)

(assert (=> b!80776 m!56222))

(declare-fun m!56224 () Bool)

(assert (=> b!80774 m!56224))

(declare-fun m!56226 () Bool)

(assert (=> b!80774 m!56226))

(assert (=> b!80774 m!56226))

(declare-fun m!56228 () Bool)

(assert (=> b!80774 m!56228))

(declare-fun m!56230 () Bool)

(assert (=> b!80780 m!56230))

(declare-fun m!56232 () Bool)

(assert (=> b!80775 m!56232))

(declare-fun m!56234 () Bool)

(assert (=> b!80782 m!56234))

(declare-fun m!56236 () Bool)

(assert (=> b!80782 m!56236))

(check-sat (not b!80779) (not b_next!2609) (not b!80781) (not b!80780) (not b!80775) b_and!3733 (not b!80782) (not b!80777) (not b!80776) (not b_next!2611) b_and!3731 tp_is_empty!689 (not b!80778) (not b!80774))
(check-sat b_and!3733 b_and!3731 (not b_next!2611) (not b_next!2609))

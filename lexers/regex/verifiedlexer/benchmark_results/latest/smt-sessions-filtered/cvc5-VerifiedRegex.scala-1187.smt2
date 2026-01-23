; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61952 () Bool)

(assert start!61952)

(declare-fun b!632235 () Bool)

(declare-fun e!383832 () Bool)

(assert (=> b!632235 (= e!383832 (not true))))

(declare-datatypes ((List!6606 0))(
  ( (Nil!6592) (Cons!6592 (h!11993 (_ BitVec 16)) (t!83380 List!6606)) )
))
(declare-datatypes ((TokenValue!1378 0))(
  ( (FloatLiteralValue!2756 (text!10091 List!6606)) (TokenValueExt!1377 (__x!4644 Int)) (Broken!6890 (value!43430 List!6606)) (Object!1391) (End!1378) (Def!1378) (Underscore!1378) (Match!1378) (Else!1378) (Error!1378) (Case!1378) (If!1378) (Extends!1378) (Abstract!1378) (Class!1378) (Val!1378) (DelimiterValue!2756 (del!1438 List!6606)) (KeywordValue!1384 (value!43431 List!6606)) (CommentValue!2756 (value!43432 List!6606)) (WhitespaceValue!2756 (value!43433 List!6606)) (IndentationValue!1378 (value!43434 List!6606)) (String!8627) (Int32!1378) (Broken!6891 (value!43435 List!6606)) (Boolean!1379) (Unit!11682) (OperatorValue!1381 (op!1438 List!6606)) (IdentifierValue!2756 (value!43436 List!6606)) (IdentifierValue!2757 (value!43437 List!6606)) (WhitespaceValue!2757 (value!43438 List!6606)) (True!2756) (False!2756) (Broken!6892 (value!43439 List!6606)) (Broken!6893 (value!43440 List!6606)) (True!2757) (RightBrace!1378) (RightBracket!1378) (Colon!1378) (Null!1378) (Comma!1378) (LeftBracket!1378) (False!2757) (LeftBrace!1378) (ImaginaryLiteralValue!1378 (text!10092 List!6606)) (StringLiteralValue!4134 (value!43441 List!6606)) (EOFValue!1378 (value!43442 List!6606)) (IdentValue!1378 (value!43443 List!6606)) (DelimiterValue!2757 (value!43444 List!6606)) (DedentValue!1378 (value!43445 List!6606)) (NewLineValue!1378 (value!43446 List!6606)) (IntegerValue!4134 (value!43447 (_ BitVec 32)) (text!10093 List!6606)) (IntegerValue!4135 (value!43448 Int) (text!10094 List!6606)) (Times!1378) (Or!1378) (Equal!1378) (Minus!1378) (Broken!6894 (value!43449 List!6606)) (And!1378) (Div!1378) (LessEqual!1378) (Mod!1378) (Concat!3056) (Not!1378) (Plus!1378) (SpaceValue!1378 (value!43450 List!6606)) (IntegerValue!4136 (value!43451 Int) (text!10095 List!6606)) (StringLiteralValue!4135 (text!10096 List!6606)) (FloatLiteralValue!2757 (text!10097 List!6606)) (BytesLiteralValue!1378 (value!43452 List!6606)) (CommentValue!2757 (value!43453 List!6606)) (StringLiteralValue!4136 (value!43454 List!6606)) (ErrorTokenValue!1378 (msg!1439 List!6606)) )
))
(declare-datatypes ((Regex!1678 0))(
  ( (ElementMatch!1678 (c!116140 (_ BitVec 16))) (Concat!3057 (regOne!3868 Regex!1678) (regTwo!3868 Regex!1678)) (EmptyExpr!1678) (Star!1678 (reg!2007 Regex!1678)) (EmptyLang!1678) (Union!1678 (regOne!3869 Regex!1678) (regTwo!3869 Regex!1678)) )
))
(declare-datatypes ((String!8628 0))(
  ( (String!8629 (value!43455 String)) )
))
(declare-datatypes ((IArray!4363 0))(
  ( (IArray!4364 (innerList!2239 List!6606)) )
))
(declare-datatypes ((Conc!2181 0))(
  ( (Node!2181 (left!5298 Conc!2181) (right!5628 Conc!2181) (csize!4592 Int) (cheight!2392 Int)) (Leaf!3369 (xs!4822 IArray!4363) (csize!4593 Int)) (Empty!2181) )
))
(declare-datatypes ((BalanceConc!4374 0))(
  ( (BalanceConc!4375 (c!116141 Conc!2181)) )
))
(declare-datatypes ((TokenValueInjection!2508 0))(
  ( (TokenValueInjection!2509 (toValue!2285 Int) (toChars!2144 Int)) )
))
(declare-datatypes ((Rule!2488 0))(
  ( (Rule!2489 (regex!1344 Regex!1678) (tag!1606 String!8628) (isSeparator!1344 Bool) (transformation!1344 TokenValueInjection!2508)) )
))
(declare-datatypes ((Token!2412 0))(
  ( (Token!2413 (value!43456 TokenValue!1378) (rule!2140 Rule!2488) (size!5196 Int) (originalCharacters!1377 List!6606)) )
))
(declare-datatypes ((List!6607 0))(
  ( (Nil!6593) (Cons!6593 (h!11994 Token!2412) (t!83381 List!6607)) )
))
(declare-datatypes ((IArray!4365 0))(
  ( (IArray!4366 (innerList!2240 List!6607)) )
))
(declare-datatypes ((Conc!2182 0))(
  ( (Node!2182 (left!5299 Conc!2182) (right!5629 Conc!2182) (csize!4594 Int) (cheight!2393 Int)) (Leaf!3370 (xs!4823 IArray!4365) (csize!4595 Int)) (Empty!2182) )
))
(declare-datatypes ((List!6608 0))(
  ( (Nil!6594) (Cons!6594 (h!11995 Rule!2488) (t!83382 List!6608)) )
))
(declare-datatypes ((BalanceConc!4376 0))(
  ( (BalanceConc!4377 (c!116142 Conc!2182)) )
))
(declare-datatypes ((PrintableTokens!70 0))(
  ( (PrintableTokens!71 (rules!8154 List!6608) (tokens!1167 BalanceConc!4376)) )
))
(declare-datatypes ((tuple2!7186 0))(
  ( (tuple2!7187 (_1!3857 Int) (_2!3857 PrintableTokens!70)) )
))
(declare-datatypes ((List!6609 0))(
  ( (Nil!6595) (Cons!6595 (h!11996 tuple2!7186) (t!83383 List!6609)) )
))
(declare-datatypes ((IArray!4367 0))(
  ( (IArray!4368 (innerList!2241 List!6609)) )
))
(declare-datatypes ((Conc!2183 0))(
  ( (Node!2183 (left!5300 Conc!2183) (right!5630 Conc!2183) (csize!4596 Int) (cheight!2394 Int)) (Leaf!3371 (xs!4824 IArray!4367) (csize!4597 Int)) (Empty!2183) )
))
(declare-datatypes ((BalanceConc!4378 0))(
  ( (BalanceConc!4379 (c!116143 Conc!2183)) )
))
(declare-fun lt!269688 () BalanceConc!4378)

(declare-fun lambda!17311 () Int)

(declare-fun lambda!17312 () Int)

(declare-datatypes ((List!6610 0))(
  ( (Nil!6596) (Cons!6596 (h!11997 PrintableTokens!70) (t!83384 List!6610)) )
))
(declare-datatypes ((IArray!4369 0))(
  ( (IArray!4370 (innerList!2242 List!6610)) )
))
(declare-datatypes ((Conc!2184 0))(
  ( (Node!2184 (left!5301 Conc!2184) (right!5631 Conc!2184) (csize!4598 Int) (cheight!2395 Int)) (Leaf!3372 (xs!4825 IArray!4369) (csize!4599 Int)) (Empty!2184) )
))
(declare-datatypes ((BalanceConc!4380 0))(
  ( (BalanceConc!4381 (c!116144 Conc!2184)) )
))
(declare-fun forall!1674 (BalanceConc!4380 Int) Bool)

(declare-fun map!1401 (BalanceConc!4378 Int) BalanceConc!4380)

(assert (=> b!632235 (forall!1674 (map!1401 lt!269688 lambda!17311) lambda!17312)))

(declare-fun lt!269691 () List!6609)

(declare-datatypes ((Unit!11683 0))(
  ( (Unit!11684) )
))
(declare-fun lt!269685 () Unit!11683)

(declare-fun mapPred!7 (List!6609 Int Int) Unit!11683)

(assert (=> b!632235 (= lt!269685 (mapPred!7 lt!269691 lambda!17311 lambda!17312))))

(declare-fun lt!269689 () Unit!11683)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6609) Unit!11683)

(assert (=> b!632235 (= lt!269689 (lemmaRemoveIdsPreservesRules!0 lt!269691))))

(declare-fun list!2819 (BalanceConc!4378) List!6609)

(assert (=> b!632235 (= lt!269691 (list!2819 lt!269688))))

(declare-fun lt!269684 () BalanceConc!4380)

(declare-fun lambda!17309 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4378) BalanceConc!4378)

(declare-fun map!1402 (BalanceConc!4380 Int) BalanceConc!4378)

(assert (=> b!632235 (= lt!269688 (sortObjectsByID!0 (map!1402 lt!269684 lambda!17309)))))

(declare-fun lambda!17310 () Int)

(declare-fun lt!269690 () List!6610)

(declare-fun lt!269687 () Unit!11683)

(declare-fun mapPred!8 (List!6610 Int Int) Unit!11683)

(assert (=> b!632235 (= lt!269687 (mapPred!8 lt!269690 lambda!17309 lambda!17310))))

(declare-fun lt!269692 () Unit!11683)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6610) Unit!11683)

(assert (=> b!632235 (= lt!269692 (lemmaAddIdsPreservesRules!0 lt!269690))))

(declare-fun list!2820 (BalanceConc!4380) List!6610)

(assert (=> b!632235 (= lt!269690 (list!2820 lt!269684))))

(declare-fun printableTokens!2 () PrintableTokens!70)

(declare-fun lt!269686 () Int)

(declare-datatypes ((List!6611 0))(
  ( (Nil!6597) (Cons!6597 (h!11998 Int) (t!83385 List!6611)) )
))
(declare-datatypes ((IArray!4371 0))(
  ( (IArray!4372 (innerList!2243 List!6611)) )
))
(declare-datatypes ((Conc!2185 0))(
  ( (Node!2185 (left!5302 Conc!2185) (right!5632 Conc!2185) (csize!4600 Int) (cheight!2396 Int)) (Leaf!3373 (xs!4826 IArray!4371) (csize!4601 Int)) (Empty!2185) )
))
(declare-datatypes ((BalanceConc!4382 0))(
  ( (BalanceConc!4383 (c!116145 Conc!2185)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!70 Int BalanceConc!4382 BalanceConc!4380) BalanceConc!4380)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4376 Int Int BalanceConc!4382) BalanceConc!4382)

(assert (=> b!632235 (= lt!269684 (slicesMulti!0 printableTokens!2 lt!269686 (indicesOfOpenBraces!0 (tokens!1167 printableTokens!2) lt!269686 0 (BalanceConc!4383 Empty!2185)) (BalanceConc!4381 Empty!2184)))))

(declare-fun res!274238 () Bool)

(declare-fun e!383829 () Bool)

(assert (=> start!61952 (=> (not res!274238) (not e!383829))))

(assert (=> start!61952 (= res!274238 (> lt!269686 0))))

(declare-fun size!5197 (PrintableTokens!70) Int)

(assert (=> start!61952 (= lt!269686 (size!5197 printableTokens!2))))

(assert (=> start!61952 e!383829))

(declare-fun e!383831 () Bool)

(declare-fun inv!8496 (PrintableTokens!70) Bool)

(assert (=> start!61952 (and (inv!8496 printableTokens!2) e!383831)))

(declare-fun b!632236 () Bool)

(declare-fun e!383830 () Bool)

(declare-fun tp!196794 () Bool)

(declare-fun inv!8497 (Conc!2182) Bool)

(assert (=> b!632236 (= e!383830 (and (inv!8497 (c!116142 (tokens!1167 printableTokens!2))) tp!196794))))

(declare-fun b!632237 () Bool)

(declare-fun res!274237 () Bool)

(assert (=> b!632237 (=> (not res!274237) (not e!383832))))

(declare-fun lt!269683 () List!6608)

(declare-datatypes ((LexerInterface!1230 0))(
  ( (LexerInterfaceExt!1227 (__x!4645 Int)) (Lexer!1228) )
))
(declare-fun rulesInvariant!1165 (LexerInterface!1230 List!6608) Bool)

(assert (=> b!632237 (= res!274237 (rulesInvariant!1165 Lexer!1228 lt!269683))))

(declare-fun b!632238 () Bool)

(assert (=> b!632238 (= e!383829 e!383832)))

(declare-fun res!274239 () Bool)

(assert (=> b!632238 (=> (not res!274239) (not e!383832))))

(declare-fun isEmpty!4632 (List!6608) Bool)

(assert (=> b!632238 (= res!274239 (not (isEmpty!4632 lt!269683)))))

(declare-datatypes ((JsonLexer!144 0))(
  ( (JsonLexer!145) )
))
(declare-fun rules!109 (JsonLexer!144) List!6608)

(assert (=> b!632238 (= lt!269683 (rules!109 JsonLexer!145))))

(declare-fun b!632239 () Bool)

(declare-fun res!274236 () Bool)

(assert (=> b!632239 (=> (not res!274236) (not e!383832))))

(declare-fun usesJsonRules!0 (PrintableTokens!70) Bool)

(assert (=> b!632239 (= res!274236 (usesJsonRules!0 printableTokens!2))))

(declare-fun tp!196795 () Bool)

(declare-fun b!632240 () Bool)

(declare-fun inv!8498 (BalanceConc!4376) Bool)

(assert (=> b!632240 (= e!383831 (and tp!196795 (inv!8498 (tokens!1167 printableTokens!2)) e!383830))))

(assert (= (and start!61952 res!274238) b!632238))

(assert (= (and b!632238 res!274239) b!632237))

(assert (= (and b!632237 res!274237) b!632239))

(assert (= (and b!632239 res!274236) b!632235))

(assert (= b!632240 b!632236))

(assert (= start!61952 b!632240))

(declare-fun m!902907 () Bool)

(assert (=> b!632238 m!902907))

(declare-fun m!902909 () Bool)

(assert (=> b!632238 m!902909))

(declare-fun m!902911 () Bool)

(assert (=> start!61952 m!902911))

(declare-fun m!902913 () Bool)

(assert (=> start!61952 m!902913))

(declare-fun m!902915 () Bool)

(assert (=> b!632236 m!902915))

(declare-fun m!902917 () Bool)

(assert (=> b!632240 m!902917))

(declare-fun m!902919 () Bool)

(assert (=> b!632237 m!902919))

(declare-fun m!902921 () Bool)

(assert (=> b!632239 m!902921))

(declare-fun m!902923 () Bool)

(assert (=> b!632235 m!902923))

(declare-fun m!902925 () Bool)

(assert (=> b!632235 m!902925))

(declare-fun m!902927 () Bool)

(assert (=> b!632235 m!902927))

(declare-fun m!902929 () Bool)

(assert (=> b!632235 m!902929))

(declare-fun m!902931 () Bool)

(assert (=> b!632235 m!902931))

(declare-fun m!902933 () Bool)

(assert (=> b!632235 m!902933))

(declare-fun m!902935 () Bool)

(assert (=> b!632235 m!902935))

(assert (=> b!632235 m!902925))

(assert (=> b!632235 m!902933))

(declare-fun m!902937 () Bool)

(assert (=> b!632235 m!902937))

(declare-fun m!902939 () Bool)

(assert (=> b!632235 m!902939))

(declare-fun m!902941 () Bool)

(assert (=> b!632235 m!902941))

(declare-fun m!902943 () Bool)

(assert (=> b!632235 m!902943))

(assert (=> b!632235 m!902941))

(declare-fun m!902945 () Bool)

(assert (=> b!632235 m!902945))

(push 1)

(assert (not b!632238))

(assert (not start!61952))

(assert (not b!632240))

(assert (not b!632237))

(assert (not b!632239))

(assert (not b!632236))

(assert (not b!632235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


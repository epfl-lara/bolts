; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16302 () Bool)

(assert start!16302)

(declare-fun b!152357 () Bool)

(declare-fun b_free!5545 () Bool)

(declare-fun b_next!5545 () Bool)

(assert (=> b!152357 (= b_free!5545 (not b_next!5545))))

(declare-fun tp!79096 () Bool)

(declare-fun b_and!8841 () Bool)

(assert (=> b!152357 (= tp!79096 b_and!8841)))

(declare-fun b_free!5547 () Bool)

(declare-fun b_next!5547 () Bool)

(assert (=> b!152357 (= b_free!5547 (not b_next!5547))))

(declare-fun tp!79091 () Bool)

(declare-fun b_and!8843 () Bool)

(assert (=> b!152357 (= tp!79091 b_and!8843)))

(declare-fun b!152359 () Bool)

(declare-fun b_free!5549 () Bool)

(declare-fun b_next!5549 () Bool)

(assert (=> b!152359 (= b_free!5549 (not b_next!5549))))

(declare-fun tp!79100 () Bool)

(declare-fun b_and!8845 () Bool)

(assert (=> b!152359 (= tp!79100 b_and!8845)))

(declare-fun b_free!5551 () Bool)

(declare-fun b_next!5551 () Bool)

(assert (=> b!152359 (= b_free!5551 (not b_next!5551))))

(declare-fun tp!79098 () Bool)

(declare-fun b_and!8847 () Bool)

(assert (=> b!152359 (= tp!79098 b_and!8847)))

(declare-fun b!152358 () Bool)

(declare-fun b_free!5553 () Bool)

(declare-fun b_next!5553 () Bool)

(assert (=> b!152358 (= b_free!5553 (not b_next!5553))))

(declare-fun tp!79095 () Bool)

(declare-fun b_and!8849 () Bool)

(assert (=> b!152358 (= tp!79095 b_and!8849)))

(declare-fun b_free!5555 () Bool)

(declare-fun b_next!5555 () Bool)

(assert (=> b!152358 (= b_free!5555 (not b_next!5555))))

(declare-fun tp!79094 () Bool)

(declare-fun b_and!8851 () Bool)

(assert (=> b!152358 (= tp!79094 b_and!8851)))

(declare-fun b!152346 () Bool)

(declare-fun e!91051 () Bool)

(declare-datatypes ((List!2641 0))(
  ( (Nil!2631) (Cons!2631 (h!8028 (_ BitVec 16)) (t!24975 List!2641)) )
))
(declare-datatypes ((TokenValue!479 0))(
  ( (FloatLiteralValue!958 (text!3798 List!2641)) (TokenValueExt!478 (__x!2445 Int)) (Broken!2395 (value!17314 List!2641)) (Object!488) (End!479) (Def!479) (Underscore!479) (Match!479) (Else!479) (Error!479) (Case!479) (If!479) (Extends!479) (Abstract!479) (Class!479) (Val!479) (DelimiterValue!958 (del!539 List!2641)) (KeywordValue!485 (value!17315 List!2641)) (CommentValue!958 (value!17316 List!2641)) (WhitespaceValue!958 (value!17317 List!2641)) (IndentationValue!479 (value!17318 List!2641)) (String!3474) (Int32!479) (Broken!2396 (value!17319 List!2641)) (Boolean!480) (Unit!2027) (OperatorValue!482 (op!539 List!2641)) (IdentifierValue!958 (value!17320 List!2641)) (IdentifierValue!959 (value!17321 List!2641)) (WhitespaceValue!959 (value!17322 List!2641)) (True!958) (False!958) (Broken!2397 (value!17323 List!2641)) (Broken!2398 (value!17324 List!2641)) (True!959) (RightBrace!479) (RightBracket!479) (Colon!479) (Null!479) (Comma!479) (LeftBracket!479) (False!959) (LeftBrace!479) (ImaginaryLiteralValue!479 (text!3799 List!2641)) (StringLiteralValue!1437 (value!17325 List!2641)) (EOFValue!479 (value!17326 List!2641)) (IdentValue!479 (value!17327 List!2641)) (DelimiterValue!959 (value!17328 List!2641)) (DedentValue!479 (value!17329 List!2641)) (NewLineValue!479 (value!17330 List!2641)) (IntegerValue!1437 (value!17331 (_ BitVec 32)) (text!3800 List!2641)) (IntegerValue!1438 (value!17332 Int) (text!3801 List!2641)) (Times!479) (Or!479) (Equal!479) (Minus!479) (Broken!2399 (value!17333 List!2641)) (And!479) (Div!479) (LessEqual!479) (Mod!479) (Concat!1160) (Not!479) (Plus!479) (SpaceValue!479 (value!17334 List!2641)) (IntegerValue!1439 (value!17335 Int) (text!3802 List!2641)) (StringLiteralValue!1438 (text!3803 List!2641)) (FloatLiteralValue!959 (text!3804 List!2641)) (BytesLiteralValue!479 (value!17336 List!2641)) (CommentValue!959 (value!17337 List!2641)) (StringLiteralValue!1439 (value!17338 List!2641)) (ErrorTokenValue!479 (msg!540 List!2641)) )
))
(declare-datatypes ((C!2284 0))(
  ( (C!2285 (val!1028 Int)) )
))
(declare-datatypes ((List!2642 0))(
  ( (Nil!2632) (Cons!2632 (h!8029 C!2284) (t!24976 List!2642)) )
))
(declare-datatypes ((IArray!1473 0))(
  ( (IArray!1474 (innerList!794 List!2642)) )
))
(declare-datatypes ((Conc!736 0))(
  ( (Node!736 (left!1987 Conc!736) (right!2317 Conc!736) (csize!1702 Int) (cheight!947 Int)) (Leaf!1304 (xs!3331 IArray!1473) (csize!1703 Int)) (Empty!736) )
))
(declare-datatypes ((BalanceConc!1480 0))(
  ( (BalanceConc!1481 (c!30781 Conc!736)) )
))
(declare-datatypes ((TokenValueInjection!730 0))(
  ( (TokenValueInjection!731 (toValue!1096 Int) (toChars!955 Int)) )
))
(declare-datatypes ((Regex!681 0))(
  ( (ElementMatch!681 (c!30782 C!2284)) (Concat!1161 (regOne!1874 Regex!681) (regTwo!1874 Regex!681)) (EmptyExpr!681) (Star!681 (reg!1010 Regex!681)) (EmptyLang!681) (Union!681 (regOne!1875 Regex!681) (regTwo!1875 Regex!681)) )
))
(declare-datatypes ((String!3475 0))(
  ( (String!3476 (value!17339 String)) )
))
(declare-datatypes ((Rule!714 0))(
  ( (Rule!715 (regex!457 Regex!681) (tag!635 String!3475) (isSeparator!457 Bool) (transformation!457 TokenValueInjection!730)) )
))
(declare-datatypes ((Token!658 0))(
  ( (Token!659 (value!17340 TokenValue!479) (rule!964 Rule!714) (size!2249 Int) (originalCharacters!500 List!2642)) )
))
(declare-fun separatorToken!170 () Token!658)

(declare-fun tp!79092 () Bool)

(declare-fun e!91050 () Bool)

(declare-fun inv!3429 (String!3475) Bool)

(declare-fun inv!3432 (TokenValueInjection!730) Bool)

(assert (=> b!152346 (= e!91050 (and tp!79092 (inv!3429 (tag!635 (rule!964 separatorToken!170))) (inv!3432 (transformation!457 (rule!964 separatorToken!170))) e!91051))))

(declare-fun res!69718 () Bool)

(declare-fun e!91040 () Bool)

(assert (=> start!16302 (=> (not res!69718) (not e!91040))))

(declare-datatypes ((LexerInterface!343 0))(
  ( (LexerInterfaceExt!340 (__x!2446 Int)) (Lexer!341) )
))
(declare-fun thiss!17480 () LexerInterface!343)

(get-info :version)

(assert (=> start!16302 (= res!69718 ((_ is Lexer!341) thiss!17480))))

(assert (=> start!16302 e!91040))

(assert (=> start!16302 true))

(declare-fun e!91046 () Bool)

(assert (=> start!16302 e!91046))

(declare-fun e!91034 () Bool)

(declare-fun inv!3433 (Token!658) Bool)

(assert (=> start!16302 (and (inv!3433 separatorToken!170) e!91034)))

(declare-fun e!91038 () Bool)

(assert (=> start!16302 e!91038))

(declare-fun e!91043 () Bool)

(declare-fun b!152347 () Bool)

(declare-datatypes ((List!2643 0))(
  ( (Nil!2633) (Cons!2633 (h!8030 Token!658) (t!24977 List!2643)) )
))
(declare-fun tokens!465 () List!2643)

(declare-fun tp!79102 () Bool)

(declare-fun e!91036 () Bool)

(declare-fun inv!21 (TokenValue!479) Bool)

(assert (=> b!152347 (= e!91036 (and (inv!21 (value!17340 (h!8030 tokens!465))) e!91043 tp!79102))))

(declare-fun b!152348 () Bool)

(declare-fun res!69715 () Bool)

(declare-fun e!91037 () Bool)

(assert (=> b!152348 (=> (not res!69715) (not e!91037))))

(declare-fun lt!44673 () List!2642)

(declare-fun lt!44676 () List!2642)

(declare-fun list!927 (BalanceConc!1480) List!2642)

(declare-fun seqFromList!291 (List!2642) BalanceConc!1480)

(assert (=> b!152348 (= res!69715 (= (list!927 (seqFromList!291 lt!44673)) lt!44676))))

(declare-fun b!152349 () Bool)

(declare-fun res!69712 () Bool)

(declare-fun e!91039 () Bool)

(assert (=> b!152349 (=> (not res!69712) (not e!91039))))

(assert (=> b!152349 (= res!69712 (isSeparator!457 (rule!964 separatorToken!170)))))

(declare-fun tp!79099 () Bool)

(declare-fun b!152350 () Bool)

(assert (=> b!152350 (= e!91038 (and (inv!3433 (h!8030 tokens!465)) e!91036 tp!79099))))

(declare-fun b!152351 () Bool)

(declare-fun res!69714 () Bool)

(assert (=> b!152351 (=> (not res!69714) (not e!91039))))

(declare-datatypes ((List!2644 0))(
  ( (Nil!2634) (Cons!2634 (h!8031 Rule!714) (t!24978 List!2644)) )
))
(declare-fun rules!1920 () List!2644)

(declare-fun rulesProduceIndividualToken!92 (LexerInterface!343 List!2644 Token!658) Bool)

(assert (=> b!152351 (= res!69714 (rulesProduceIndividualToken!92 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!152352 () Bool)

(declare-fun e!91045 () Bool)

(declare-fun tp!79097 () Bool)

(assert (=> b!152352 (= e!91046 (and e!91045 tp!79097))))

(declare-fun b!152353 () Bool)

(declare-fun res!69717 () Bool)

(assert (=> b!152353 (=> (not res!69717) (not e!91039))))

(assert (=> b!152353 (= res!69717 ((_ is Cons!2633) tokens!465))))

(declare-fun b!152354 () Bool)

(declare-fun res!69721 () Bool)

(assert (=> b!152354 (=> (not res!69721) (not e!91040))))

(declare-fun isEmpty!1044 (List!2644) Bool)

(assert (=> b!152354 (= res!69721 (not (isEmpty!1044 rules!1920)))))

(declare-fun b!152355 () Bool)

(assert (=> b!152355 (= e!91040 e!91039)))

(declare-fun res!69713 () Bool)

(assert (=> b!152355 (=> (not res!69713) (not e!91039))))

(declare-datatypes ((IArray!1475 0))(
  ( (IArray!1476 (innerList!795 List!2643)) )
))
(declare-datatypes ((Conc!737 0))(
  ( (Node!737 (left!1988 Conc!737) (right!2318 Conc!737) (csize!1704 Int) (cheight!948 Int)) (Leaf!1305 (xs!3332 IArray!1475) (csize!1705 Int)) (Empty!737) )
))
(declare-datatypes ((BalanceConc!1482 0))(
  ( (BalanceConc!1483 (c!30783 Conc!737)) )
))
(declare-fun lt!44674 () BalanceConc!1482)

(declare-fun rulesProduceEachTokenIndividually!135 (LexerInterface!343 List!2644 BalanceConc!1482) Bool)

(assert (=> b!152355 (= res!69713 (rulesProduceEachTokenIndividually!135 thiss!17480 rules!1920 lt!44674))))

(declare-fun seqFromList!292 (List!2643) BalanceConc!1482)

(assert (=> b!152355 (= lt!44674 (seqFromList!292 tokens!465))))

(declare-fun b!152356 () Bool)

(declare-fun res!69719 () Bool)

(assert (=> b!152356 (=> (not res!69719) (not e!91039))))

(declare-fun sepAndNonSepRulesDisjointChars!46 (List!2644 List!2644) Bool)

(assert (=> b!152356 (= res!69719 (sepAndNonSepRulesDisjointChars!46 rules!1920 rules!1920))))

(declare-fun e!91048 () Bool)

(assert (=> b!152357 (= e!91048 (and tp!79096 tp!79091))))

(assert (=> b!152358 (= e!91051 (and tp!79095 tp!79094))))

(declare-fun e!91044 () Bool)

(assert (=> b!152359 (= e!91044 (and tp!79100 tp!79098))))

(declare-fun b!152360 () Bool)

(declare-fun tp!79101 () Bool)

(assert (=> b!152360 (= e!91045 (and tp!79101 (inv!3429 (tag!635 (h!8031 rules!1920))) (inv!3432 (transformation!457 (h!8031 rules!1920))) e!91048))))

(declare-fun b!152361 () Bool)

(assert (=> b!152361 (= e!91039 e!91037)))

(declare-fun res!69720 () Bool)

(assert (=> b!152361 (=> (not res!69720) (not e!91037))))

(assert (=> b!152361 (= res!69720 (= lt!44673 lt!44676))))

(declare-fun printWithSeparatorTokenWhenNeededRec!26 (LexerInterface!343 List!2644 BalanceConc!1482 Token!658 Int) BalanceConc!1480)

(assert (=> b!152361 (= lt!44676 (list!927 (printWithSeparatorTokenWhenNeededRec!26 thiss!17480 rules!1920 lt!44674 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!36 (LexerInterface!343 List!2644 List!2643 Token!658) List!2642)

(assert (=> b!152361 (= lt!44673 (printWithSeparatorTokenWhenNeededList!36 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!152362 () Bool)

(assert (=> b!152362 (= e!91037 false)))

(declare-fun lt!44675 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!83 (LexerInterface!343 List!2644 List!2643) Bool)

(assert (=> b!152362 (= lt!44675 (rulesProduceEachTokenIndividuallyList!83 thiss!17480 rules!1920 (t!24977 tokens!465)))))

(declare-fun lt!44678 () List!2642)

(declare-fun charsOf!112 (Token!658) BalanceConc!1480)

(assert (=> b!152362 (= lt!44678 (list!927 (charsOf!112 (h!8030 tokens!465))))))

(declare-fun lt!44677 () List!2642)

(declare-fun ++!566 (List!2642 List!2642) List!2642)

(assert (=> b!152362 (= lt!44677 (++!566 (list!927 (charsOf!112 separatorToken!170)) (printWithSeparatorTokenWhenNeededList!36 thiss!17480 rules!1920 (t!24977 tokens!465) separatorToken!170)))))

(declare-fun b!152363 () Bool)

(declare-fun res!69711 () Bool)

(assert (=> b!152363 (=> (not res!69711) (not e!91039))))

(declare-fun lambda!3942 () Int)

(declare-fun forall!451 (List!2643 Int) Bool)

(assert (=> b!152363 (= res!69711 (forall!451 tokens!465 lambda!3942))))

(declare-fun tp!79103 () Bool)

(declare-fun b!152364 () Bool)

(assert (=> b!152364 (= e!91043 (and tp!79103 (inv!3429 (tag!635 (rule!964 (h!8030 tokens!465)))) (inv!3432 (transformation!457 (rule!964 (h!8030 tokens!465)))) e!91044))))

(declare-fun b!152365 () Bool)

(declare-fun res!69716 () Bool)

(assert (=> b!152365 (=> (not res!69716) (not e!91040))))

(declare-fun rulesInvariant!309 (LexerInterface!343 List!2644) Bool)

(assert (=> b!152365 (= res!69716 (rulesInvariant!309 thiss!17480 rules!1920))))

(declare-fun tp!79093 () Bool)

(declare-fun b!152366 () Bool)

(assert (=> b!152366 (= e!91034 (and (inv!21 (value!17340 separatorToken!170)) e!91050 tp!79093))))

(assert (= (and start!16302 res!69718) b!152354))

(assert (= (and b!152354 res!69721) b!152365))

(assert (= (and b!152365 res!69716) b!152355))

(assert (= (and b!152355 res!69713) b!152351))

(assert (= (and b!152351 res!69714) b!152349))

(assert (= (and b!152349 res!69712) b!152363))

(assert (= (and b!152363 res!69711) b!152356))

(assert (= (and b!152356 res!69719) b!152353))

(assert (= (and b!152353 res!69717) b!152361))

(assert (= (and b!152361 res!69720) b!152348))

(assert (= (and b!152348 res!69715) b!152362))

(assert (= b!152360 b!152357))

(assert (= b!152352 b!152360))

(assert (= (and start!16302 ((_ is Cons!2634) rules!1920)) b!152352))

(assert (= b!152346 b!152358))

(assert (= b!152366 b!152346))

(assert (= start!16302 b!152366))

(assert (= b!152364 b!152359))

(assert (= b!152347 b!152364))

(assert (= b!152350 b!152347))

(assert (= (and start!16302 ((_ is Cons!2633) tokens!465)) b!152350))

(declare-fun m!137277 () Bool)

(assert (=> b!152364 m!137277))

(declare-fun m!137279 () Bool)

(assert (=> b!152364 m!137279))

(declare-fun m!137281 () Bool)

(assert (=> b!152355 m!137281))

(declare-fun m!137283 () Bool)

(assert (=> b!152355 m!137283))

(declare-fun m!137285 () Bool)

(assert (=> b!152351 m!137285))

(declare-fun m!137287 () Bool)

(assert (=> start!16302 m!137287))

(declare-fun m!137289 () Bool)

(assert (=> b!152350 m!137289))

(declare-fun m!137291 () Bool)

(assert (=> b!152362 m!137291))

(declare-fun m!137293 () Bool)

(assert (=> b!152362 m!137293))

(declare-fun m!137295 () Bool)

(assert (=> b!152362 m!137295))

(declare-fun m!137297 () Bool)

(assert (=> b!152362 m!137297))

(assert (=> b!152362 m!137295))

(assert (=> b!152362 m!137297))

(assert (=> b!152362 m!137291))

(declare-fun m!137299 () Bool)

(assert (=> b!152362 m!137299))

(declare-fun m!137301 () Bool)

(assert (=> b!152362 m!137301))

(declare-fun m!137303 () Bool)

(assert (=> b!152362 m!137303))

(assert (=> b!152362 m!137301))

(declare-fun m!137305 () Bool)

(assert (=> b!152361 m!137305))

(assert (=> b!152361 m!137305))

(declare-fun m!137307 () Bool)

(assert (=> b!152361 m!137307))

(declare-fun m!137309 () Bool)

(assert (=> b!152361 m!137309))

(declare-fun m!137311 () Bool)

(assert (=> b!152354 m!137311))

(declare-fun m!137313 () Bool)

(assert (=> b!152348 m!137313))

(assert (=> b!152348 m!137313))

(declare-fun m!137315 () Bool)

(assert (=> b!152348 m!137315))

(declare-fun m!137317 () Bool)

(assert (=> b!152356 m!137317))

(declare-fun m!137319 () Bool)

(assert (=> b!152366 m!137319))

(declare-fun m!137321 () Bool)

(assert (=> b!152363 m!137321))

(declare-fun m!137323 () Bool)

(assert (=> b!152346 m!137323))

(declare-fun m!137325 () Bool)

(assert (=> b!152346 m!137325))

(declare-fun m!137327 () Bool)

(assert (=> b!152360 m!137327))

(declare-fun m!137329 () Bool)

(assert (=> b!152360 m!137329))

(declare-fun m!137331 () Bool)

(assert (=> b!152365 m!137331))

(declare-fun m!137333 () Bool)

(assert (=> b!152347 m!137333))

(check-sat b_and!8841 (not b!152354) (not b!152352) b_and!8851 (not b!152346) (not b!152356) (not b_next!5549) (not b!152347) (not b_next!5547) (not b!152348) (not b!152360) (not b!152363) (not b_next!5545) b_and!8847 (not start!16302) (not b_next!5555) (not b!152366) (not b!152362) b_and!8843 (not b_next!5551) (not b!152351) (not b!152361) (not b!152355) (not b!152364) b_and!8845 (not b!152350) (not b_next!5553) b_and!8849 (not b!152365))
(check-sat b_and!8841 (not b_next!5545) b_and!8847 (not b_next!5555) b_and!8843 b_and!8851 (not b_next!5551) (not b_next!5549) b_and!8845 (not b_next!5553) b_and!8849 (not b_next!5547))

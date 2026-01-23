; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378968 () Bool)

(assert start!378968)

(declare-fun b!4024403 () Bool)

(declare-fun b_free!112025 () Bool)

(declare-fun b_next!112729 () Bool)

(assert (=> b!4024403 (= b_free!112025 (not b_next!112729))))

(declare-fun tp!1223160 () Bool)

(declare-fun b_and!309191 () Bool)

(assert (=> b!4024403 (= tp!1223160 b_and!309191)))

(declare-fun b_free!112027 () Bool)

(declare-fun b_next!112731 () Bool)

(assert (=> b!4024403 (= b_free!112027 (not b_next!112731))))

(declare-fun tp!1223162 () Bool)

(declare-fun b_and!309193 () Bool)

(assert (=> b!4024403 (= tp!1223162 b_and!309193)))

(declare-fun b!4024394 () Bool)

(declare-fun b_free!112029 () Bool)

(declare-fun b_next!112733 () Bool)

(assert (=> b!4024394 (= b_free!112029 (not b_next!112733))))

(declare-fun tp!1223161 () Bool)

(declare-fun b_and!309195 () Bool)

(assert (=> b!4024394 (= tp!1223161 b_and!309195)))

(declare-fun b_free!112031 () Bool)

(declare-fun b_next!112735 () Bool)

(assert (=> b!4024394 (= b_free!112031 (not b_next!112735))))

(declare-fun tp!1223164 () Bool)

(declare-fun b_and!309197 () Bool)

(assert (=> b!4024394 (= tp!1223164 b_and!309197)))

(declare-fun b!4024384 () Bool)

(declare-fun e!2496565 () Bool)

(declare-fun tp_is_empty!20533 () Bool)

(declare-fun tp!1223165 () Bool)

(assert (=> b!4024384 (= e!2496565 (and tp_is_empty!20533 tp!1223165))))

(declare-fun b!4024385 () Bool)

(declare-fun e!2496578 () Bool)

(declare-fun e!2496574 () Bool)

(assert (=> b!4024385 (= e!2496578 e!2496574)))

(declare-fun res!1637635 () Bool)

(assert (=> b!4024385 (=> (not res!1637635) (not e!2496574))))

(declare-datatypes ((C!23748 0))(
  ( (C!23749 (val!13968 Int)) )
))
(declare-datatypes ((List!43207 0))(
  ( (Nil!43083) (Cons!43083 (h!48503 C!23748) (t!333860 List!43207)) )
))
(declare-fun prefix!494 () List!43207)

(declare-fun lt!1429615 () List!43207)

(declare-fun size!32209 (List!43207) Int)

(assert (=> b!4024385 (= res!1637635 (>= (size!32209 prefix!494) (size!32209 lt!1429615)))))

(declare-datatypes ((IArray!26179 0))(
  ( (IArray!26180 (innerList!13147 List!43207)) )
))
(declare-datatypes ((Conc!13087 0))(
  ( (Node!13087 (left!32471 Conc!13087) (right!32801 Conc!13087) (csize!26404 Int) (cheight!13298 Int)) (Leaf!20232 (xs!16393 IArray!26179) (csize!26405 Int)) (Empty!13087) )
))
(declare-datatypes ((BalanceConc!25768 0))(
  ( (BalanceConc!25769 (c!695402 Conc!13087)) )
))
(declare-datatypes ((List!43208 0))(
  ( (Nil!43084) (Cons!43084 (h!48504 (_ BitVec 16)) (t!333861 List!43208)) )
))
(declare-datatypes ((TokenValue!7106 0))(
  ( (FloatLiteralValue!14212 (text!50187 List!43208)) (TokenValueExt!7105 (__x!26429 Int)) (Broken!35530 (value!216574 List!43208)) (Object!7229) (End!7106) (Def!7106) (Underscore!7106) (Match!7106) (Else!7106) (Error!7106) (Case!7106) (If!7106) (Extends!7106) (Abstract!7106) (Class!7106) (Val!7106) (DelimiterValue!14212 (del!7166 List!43208)) (KeywordValue!7112 (value!216575 List!43208)) (CommentValue!14212 (value!216576 List!43208)) (WhitespaceValue!14212 (value!216577 List!43208)) (IndentationValue!7106 (value!216578 List!43208)) (String!49247) (Int32!7106) (Broken!35531 (value!216579 List!43208)) (Boolean!7107) (Unit!62245) (OperatorValue!7109 (op!7166 List!43208)) (IdentifierValue!14212 (value!216580 List!43208)) (IdentifierValue!14213 (value!216581 List!43208)) (WhitespaceValue!14213 (value!216582 List!43208)) (True!14212) (False!14212) (Broken!35532 (value!216583 List!43208)) (Broken!35533 (value!216584 List!43208)) (True!14213) (RightBrace!7106) (RightBracket!7106) (Colon!7106) (Null!7106) (Comma!7106) (LeftBracket!7106) (False!14213) (LeftBrace!7106) (ImaginaryLiteralValue!7106 (text!50188 List!43208)) (StringLiteralValue!21318 (value!216585 List!43208)) (EOFValue!7106 (value!216586 List!43208)) (IdentValue!7106 (value!216587 List!43208)) (DelimiterValue!14213 (value!216588 List!43208)) (DedentValue!7106 (value!216589 List!43208)) (NewLineValue!7106 (value!216590 List!43208)) (IntegerValue!21318 (value!216591 (_ BitVec 32)) (text!50189 List!43208)) (IntegerValue!21319 (value!216592 Int) (text!50190 List!43208)) (Times!7106) (Or!7106) (Equal!7106) (Minus!7106) (Broken!35534 (value!216593 List!43208)) (And!7106) (Div!7106) (LessEqual!7106) (Mod!7106) (Concat!18887) (Not!7106) (Plus!7106) (SpaceValue!7106 (value!216594 List!43208)) (IntegerValue!21320 (value!216595 Int) (text!50191 List!43208)) (StringLiteralValue!21319 (text!50192 List!43208)) (FloatLiteralValue!14213 (text!50193 List!43208)) (BytesLiteralValue!7106 (value!216596 List!43208)) (CommentValue!14213 (value!216597 List!43208)) (StringLiteralValue!21320 (value!216598 List!43208)) (ErrorTokenValue!7106 (msg!7167 List!43208)) )
))
(declare-datatypes ((Regex!11781 0))(
  ( (ElementMatch!11781 (c!695403 C!23748)) (Concat!18888 (regOne!24074 Regex!11781) (regTwo!24074 Regex!11781)) (EmptyExpr!11781) (Star!11781 (reg!12110 Regex!11781)) (EmptyLang!11781) (Union!11781 (regOne!24075 Regex!11781) (regTwo!24075 Regex!11781)) )
))
(declare-datatypes ((String!49248 0))(
  ( (String!49249 (value!216599 String)) )
))
(declare-datatypes ((TokenValueInjection!13640 0))(
  ( (TokenValueInjection!13641 (toValue!9392 Int) (toChars!9251 Int)) )
))
(declare-datatypes ((Rule!13552 0))(
  ( (Rule!13553 (regex!6876 Regex!11781) (tag!7736 String!49248) (isSeparator!6876 Bool) (transformation!6876 TokenValueInjection!13640)) )
))
(declare-datatypes ((Token!12890 0))(
  ( (Token!12891 (value!216600 TokenValue!7106) (rule!9932 Rule!13552) (size!32210 Int) (originalCharacters!7476 List!43207)) )
))
(declare-fun token!484 () Token!12890)

(declare-fun list!16022 (BalanceConc!25768) List!43207)

(declare-fun charsOf!4692 (Token!12890) BalanceConc!25768)

(assert (=> b!4024385 (= lt!1429615 (list!16022 (charsOf!4692 token!484)))))

(declare-fun b!4024386 () Bool)

(declare-fun e!2496564 () Bool)

(declare-fun lt!1429601 () List!43207)

(declare-fun lt!1429605 () List!43207)

(assert (=> b!4024386 (= e!2496564 (= lt!1429601 lt!1429605))))

(declare-fun isPrefix!3963 (List!43207 List!43207) Bool)

(assert (=> b!4024386 (isPrefix!3963 lt!1429615 lt!1429601)))

(declare-datatypes ((Unit!62246 0))(
  ( (Unit!62247) )
))
(declare-fun lt!1429614 () Unit!62246)

(declare-fun lt!1429612 () List!43207)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2798 (List!43207 List!43207) Unit!62246)

(assert (=> b!4024386 (= lt!1429614 (lemmaConcatTwoListThenFirstIsPrefix!2798 lt!1429615 lt!1429612))))

(declare-fun b!4024387 () Bool)

(declare-fun e!2496573 () Bool)

(declare-fun tp!1223158 () Bool)

(assert (=> b!4024387 (= e!2496573 (and tp_is_empty!20533 tp!1223158))))

(declare-fun b!4024388 () Bool)

(declare-fun e!2496579 () Bool)

(declare-fun e!2496576 () Bool)

(assert (=> b!4024388 (= e!2496579 (not e!2496576))))

(declare-fun res!1637636 () Bool)

(assert (=> b!4024388 (=> res!1637636 e!2496576)))

(declare-fun lt!1429613 () List!43207)

(assert (=> b!4024388 (= res!1637636 (not (= lt!1429613 lt!1429605)))))

(declare-fun suffixResult!105 () List!43207)

(declare-fun ++!11278 (List!43207 List!43207) List!43207)

(assert (=> b!4024388 (= lt!1429613 (++!11278 lt!1429615 suffixResult!105))))

(declare-fun lt!1429607 () Unit!62246)

(declare-fun lemmaInv!1085 (TokenValueInjection!13640) Unit!62246)

(assert (=> b!4024388 (= lt!1429607 (lemmaInv!1085 (transformation!6876 (rule!9932 token!484))))))

(declare-datatypes ((LexerInterface!6465 0))(
  ( (LexerInterfaceExt!6462 (__x!26430 Int)) (Lexer!6463) )
))
(declare-fun thiss!21717 () LexerInterface!6465)

(declare-fun ruleValid!2806 (LexerInterface!6465 Rule!13552) Bool)

(assert (=> b!4024388 (ruleValid!2806 thiss!21717 (rule!9932 token!484))))

(declare-datatypes ((List!43209 0))(
  ( (Nil!43085) (Cons!43085 (h!48505 Rule!13552) (t!333862 List!43209)) )
))
(declare-fun rules!2999 () List!43209)

(declare-fun lt!1429603 () Unit!62246)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1876 (LexerInterface!6465 Rule!13552 List!43209) Unit!62246)

(assert (=> b!4024388 (= lt!1429603 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1876 thiss!21717 (rule!9932 token!484) rules!2999))))

(declare-fun b!4024389 () Bool)

(declare-fun res!1637640 () Bool)

(assert (=> b!4024389 (=> (not res!1637640) (not e!2496578))))

(declare-fun rulesInvariant!5808 (LexerInterface!6465 List!43209) Bool)

(assert (=> b!4024389 (= res!1637640 (rulesInvariant!5808 thiss!21717 rules!2999))))

(declare-fun b!4024390 () Bool)

(assert (=> b!4024390 (= e!2496574 e!2496579)))

(declare-fun res!1637641 () Bool)

(assert (=> b!4024390 (=> (not res!1637641) (not e!2496579))))

(declare-datatypes ((tuple2!42198 0))(
  ( (tuple2!42199 (_1!24233 Token!12890) (_2!24233 List!43207)) )
))
(declare-datatypes ((Option!9290 0))(
  ( (None!9289) (Some!9289 (v!39669 tuple2!42198)) )
))
(declare-fun maxPrefix!3763 (LexerInterface!6465 List!43209 List!43207) Option!9290)

(assert (=> b!4024390 (= res!1637641 (= (maxPrefix!3763 thiss!21717 rules!2999 lt!1429605) (Some!9289 (tuple2!42199 token!484 suffixResult!105))))))

(declare-fun suffix!1299 () List!43207)

(assert (=> b!4024390 (= lt!1429605 (++!11278 prefix!494 suffix!1299))))

(declare-fun e!2496570 () Bool)

(declare-fun b!4024391 () Bool)

(declare-fun tp!1223170 () Bool)

(declare-fun e!2496572 () Bool)

(declare-fun inv!21 (TokenValue!7106) Bool)

(assert (=> b!4024391 (= e!2496572 (and (inv!21 (value!216600 token!484)) e!2496570 tp!1223170))))

(declare-fun b!4024392 () Bool)

(declare-fun res!1637638 () Bool)

(assert (=> b!4024392 (=> (not res!1637638) (not e!2496578))))

(declare-fun isEmpty!25721 (List!43209) Bool)

(assert (=> b!4024392 (= res!1637638 (not (isEmpty!25721 rules!2999)))))

(declare-fun res!1637639 () Bool)

(assert (=> start!378968 (=> (not res!1637639) (not e!2496578))))

(get-info :version)

(assert (=> start!378968 (= res!1637639 ((_ is Lexer!6463) thiss!21717))))

(assert (=> start!378968 e!2496578))

(declare-fun e!2496568 () Bool)

(assert (=> start!378968 e!2496568))

(declare-fun inv!57552 (Token!12890) Bool)

(assert (=> start!378968 (and (inv!57552 token!484) e!2496572)))

(assert (=> start!378968 e!2496573))

(assert (=> start!378968 e!2496565))

(declare-fun e!2496563 () Bool)

(assert (=> start!378968 e!2496563))

(assert (=> start!378968 true))

(declare-fun e!2496561 () Bool)

(assert (=> start!378968 e!2496561))

(declare-fun e!2496571 () Bool)

(assert (=> start!378968 e!2496571))

(declare-fun b!4024393 () Bool)

(declare-fun tp!1223168 () Bool)

(assert (=> b!4024393 (= e!2496563 (and tp_is_empty!20533 tp!1223168))))

(declare-fun e!2496560 () Bool)

(assert (=> b!4024394 (= e!2496560 (and tp!1223161 tp!1223164))))

(declare-fun b!4024395 () Bool)

(declare-fun e!2496567 () Bool)

(assert (=> b!4024395 (= e!2496567 e!2496564)))

(declare-fun res!1637637 () Bool)

(assert (=> b!4024395 (=> res!1637637 e!2496564)))

(declare-fun lt!1429610 () List!43207)

(assert (=> b!4024395 (= res!1637637 (or (not (= lt!1429605 lt!1429610)) (not (= lt!1429605 lt!1429601))))))

(assert (=> b!4024395 (= lt!1429610 lt!1429601)))

(assert (=> b!4024395 (= lt!1429601 (++!11278 lt!1429615 lt!1429612))))

(declare-fun lt!1429602 () List!43207)

(assert (=> b!4024395 (= lt!1429610 (++!11278 lt!1429602 suffix!1299))))

(declare-fun lt!1429608 () List!43207)

(assert (=> b!4024395 (= lt!1429612 (++!11278 lt!1429608 suffix!1299))))

(declare-fun lt!1429609 () Unit!62246)

(declare-fun lemmaConcatAssociativity!2580 (List!43207 List!43207 List!43207) Unit!62246)

(assert (=> b!4024395 (= lt!1429609 (lemmaConcatAssociativity!2580 lt!1429615 lt!1429608 suffix!1299))))

(declare-fun tp!1223167 () Bool)

(declare-fun b!4024396 () Bool)

(declare-fun e!2496577 () Bool)

(declare-fun inv!57549 (String!49248) Bool)

(declare-fun inv!57553 (TokenValueInjection!13640) Bool)

(assert (=> b!4024396 (= e!2496570 (and tp!1223167 (inv!57549 (tag!7736 (rule!9932 token!484))) (inv!57553 (transformation!6876 (rule!9932 token!484))) e!2496577))))

(declare-fun b!4024397 () Bool)

(declare-fun e!2496580 () Bool)

(assert (=> b!4024397 (= e!2496576 e!2496580)))

(declare-fun res!1637634 () Bool)

(assert (=> b!4024397 (=> res!1637634 e!2496580)))

(assert (=> b!4024397 (= res!1637634 (not (isPrefix!3963 lt!1429615 lt!1429605)))))

(assert (=> b!4024397 (isPrefix!3963 prefix!494 lt!1429605)))

(declare-fun lt!1429604 () Unit!62246)

(assert (=> b!4024397 (= lt!1429604 (lemmaConcatTwoListThenFirstIsPrefix!2798 prefix!494 suffix!1299))))

(assert (=> b!4024397 (isPrefix!3963 lt!1429615 lt!1429613)))

(declare-fun lt!1429606 () Unit!62246)

(assert (=> b!4024397 (= lt!1429606 (lemmaConcatTwoListThenFirstIsPrefix!2798 lt!1429615 suffixResult!105))))

(declare-fun e!2496566 () Bool)

(declare-fun b!4024398 () Bool)

(declare-fun tp!1223169 () Bool)

(assert (=> b!4024398 (= e!2496566 (and tp!1223169 (inv!57549 (tag!7736 (h!48505 rules!2999))) (inv!57553 (transformation!6876 (h!48505 rules!2999))) e!2496560))))

(declare-fun b!4024399 () Bool)

(declare-fun tp!1223159 () Bool)

(assert (=> b!4024399 (= e!2496561 (and e!2496566 tp!1223159))))

(declare-fun b!4024400 () Bool)

(declare-fun tp!1223163 () Bool)

(assert (=> b!4024400 (= e!2496568 (and tp_is_empty!20533 tp!1223163))))

(declare-fun b!4024401 () Bool)

(assert (=> b!4024401 (= e!2496580 e!2496567)))

(declare-fun res!1637643 () Bool)

(assert (=> b!4024401 (=> res!1637643 e!2496567)))

(assert (=> b!4024401 (= res!1637643 (not (= lt!1429602 prefix!494)))))

(assert (=> b!4024401 (= lt!1429602 (++!11278 lt!1429615 lt!1429608))))

(declare-fun getSuffix!2380 (List!43207 List!43207) List!43207)

(assert (=> b!4024401 (= lt!1429608 (getSuffix!2380 prefix!494 lt!1429615))))

(assert (=> b!4024401 (isPrefix!3963 lt!1429615 prefix!494)))

(declare-fun lt!1429611 () Unit!62246)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!527 (List!43207 List!43207 List!43207) Unit!62246)

(assert (=> b!4024401 (= lt!1429611 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!527 prefix!494 lt!1429615 lt!1429605))))

(declare-fun b!4024402 () Bool)

(declare-fun res!1637633 () Bool)

(assert (=> b!4024402 (=> (not res!1637633) (not e!2496578))))

(declare-fun newSuffix!27 () List!43207)

(assert (=> b!4024402 (= res!1637633 (isPrefix!3963 newSuffix!27 suffix!1299))))

(assert (=> b!4024403 (= e!2496577 (and tp!1223160 tp!1223162))))

(declare-fun b!4024404 () Bool)

(declare-fun tp!1223166 () Bool)

(assert (=> b!4024404 (= e!2496571 (and tp_is_empty!20533 tp!1223166))))

(declare-fun b!4024405 () Bool)

(declare-fun res!1637632 () Bool)

(assert (=> b!4024405 (=> (not res!1637632) (not e!2496578))))

(assert (=> b!4024405 (= res!1637632 (>= (size!32209 suffix!1299) (size!32209 newSuffix!27)))))

(declare-fun b!4024406 () Bool)

(declare-fun res!1637642 () Bool)

(assert (=> b!4024406 (=> (not res!1637642) (not e!2496574))))

(declare-fun newSuffixResult!27 () List!43207)

(assert (=> b!4024406 (= res!1637642 (= (++!11278 lt!1429615 newSuffixResult!27) (++!11278 prefix!494 newSuffix!27)))))

(assert (= (and start!378968 res!1637639) b!4024392))

(assert (= (and b!4024392 res!1637638) b!4024389))

(assert (= (and b!4024389 res!1637640) b!4024405))

(assert (= (and b!4024405 res!1637632) b!4024402))

(assert (= (and b!4024402 res!1637633) b!4024385))

(assert (= (and b!4024385 res!1637635) b!4024406))

(assert (= (and b!4024406 res!1637642) b!4024390))

(assert (= (and b!4024390 res!1637641) b!4024388))

(assert (= (and b!4024388 (not res!1637636)) b!4024397))

(assert (= (and b!4024397 (not res!1637634)) b!4024401))

(assert (= (and b!4024401 (not res!1637643)) b!4024395))

(assert (= (and b!4024395 (not res!1637637)) b!4024386))

(assert (= (and start!378968 ((_ is Cons!43083) prefix!494)) b!4024400))

(assert (= b!4024396 b!4024403))

(assert (= b!4024391 b!4024396))

(assert (= start!378968 b!4024391))

(assert (= (and start!378968 ((_ is Cons!43083) suffixResult!105)) b!4024387))

(assert (= (and start!378968 ((_ is Cons!43083) suffix!1299)) b!4024384))

(assert (= (and start!378968 ((_ is Cons!43083) newSuffix!27)) b!4024393))

(assert (= b!4024398 b!4024394))

(assert (= b!4024399 b!4024398))

(assert (= (and start!378968 ((_ is Cons!43085) rules!2999)) b!4024399))

(assert (= (and start!378968 ((_ is Cons!43083) newSuffixResult!27)) b!4024404))

(declare-fun m!4615353 () Bool)

(assert (=> b!4024396 m!4615353))

(declare-fun m!4615355 () Bool)

(assert (=> b!4024396 m!4615355))

(declare-fun m!4615357 () Bool)

(assert (=> b!4024401 m!4615357))

(declare-fun m!4615359 () Bool)

(assert (=> b!4024401 m!4615359))

(declare-fun m!4615361 () Bool)

(assert (=> b!4024401 m!4615361))

(declare-fun m!4615363 () Bool)

(assert (=> b!4024401 m!4615363))

(declare-fun m!4615365 () Bool)

(assert (=> b!4024390 m!4615365))

(declare-fun m!4615367 () Bool)

(assert (=> b!4024390 m!4615367))

(declare-fun m!4615369 () Bool)

(assert (=> start!378968 m!4615369))

(declare-fun m!4615371 () Bool)

(assert (=> b!4024392 m!4615371))

(declare-fun m!4615373 () Bool)

(assert (=> b!4024406 m!4615373))

(declare-fun m!4615375 () Bool)

(assert (=> b!4024406 m!4615375))

(declare-fun m!4615377 () Bool)

(assert (=> b!4024397 m!4615377))

(declare-fun m!4615379 () Bool)

(assert (=> b!4024397 m!4615379))

(declare-fun m!4615381 () Bool)

(assert (=> b!4024397 m!4615381))

(declare-fun m!4615383 () Bool)

(assert (=> b!4024397 m!4615383))

(declare-fun m!4615385 () Bool)

(assert (=> b!4024397 m!4615385))

(declare-fun m!4615387 () Bool)

(assert (=> b!4024405 m!4615387))

(declare-fun m!4615389 () Bool)

(assert (=> b!4024405 m!4615389))

(declare-fun m!4615391 () Bool)

(assert (=> b!4024402 m!4615391))

(declare-fun m!4615393 () Bool)

(assert (=> b!4024395 m!4615393))

(declare-fun m!4615395 () Bool)

(assert (=> b!4024395 m!4615395))

(declare-fun m!4615397 () Bool)

(assert (=> b!4024395 m!4615397))

(declare-fun m!4615399 () Bool)

(assert (=> b!4024395 m!4615399))

(declare-fun m!4615401 () Bool)

(assert (=> b!4024385 m!4615401))

(declare-fun m!4615403 () Bool)

(assert (=> b!4024385 m!4615403))

(declare-fun m!4615405 () Bool)

(assert (=> b!4024385 m!4615405))

(assert (=> b!4024385 m!4615405))

(declare-fun m!4615407 () Bool)

(assert (=> b!4024385 m!4615407))

(declare-fun m!4615409 () Bool)

(assert (=> b!4024391 m!4615409))

(declare-fun m!4615411 () Bool)

(assert (=> b!4024398 m!4615411))

(declare-fun m!4615413 () Bool)

(assert (=> b!4024398 m!4615413))

(declare-fun m!4615415 () Bool)

(assert (=> b!4024388 m!4615415))

(declare-fun m!4615417 () Bool)

(assert (=> b!4024388 m!4615417))

(declare-fun m!4615419 () Bool)

(assert (=> b!4024388 m!4615419))

(declare-fun m!4615421 () Bool)

(assert (=> b!4024388 m!4615421))

(declare-fun m!4615423 () Bool)

(assert (=> b!4024386 m!4615423))

(declare-fun m!4615425 () Bool)

(assert (=> b!4024386 m!4615425))

(declare-fun m!4615427 () Bool)

(assert (=> b!4024389 m!4615427))

(check-sat (not b!4024392) b_and!309191 (not b!4024401) (not b!4024384) (not b!4024406) b_and!309197 (not b_next!112735) (not b!4024390) (not b_next!112731) (not start!378968) (not b!4024399) (not b!4024404) (not b!4024388) (not b!4024386) (not b!4024402) (not b!4024391) (not b!4024398) (not b!4024400) (not b!4024396) (not b!4024397) (not b_next!112733) tp_is_empty!20533 (not b!4024389) (not b!4024395) (not b!4024387) b_and!309193 (not b!4024385) (not b!4024405) (not b!4024393) b_and!309195 (not b_next!112729))
(check-sat b_and!309191 (not b_next!112733) b_and!309197 (not b_next!112735) b_and!309193 (not b_next!112731) b_and!309195 (not b_next!112729))

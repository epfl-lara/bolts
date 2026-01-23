; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384768 () Bool)

(assert start!384768)

(declare-fun b!4075351 () Bool)

(declare-fun b_free!113577 () Bool)

(declare-fun b_next!114281 () Bool)

(assert (=> b!4075351 (= b_free!113577 (not b_next!114281))))

(declare-fun tp!1233659 () Bool)

(declare-fun b_and!313299 () Bool)

(assert (=> b!4075351 (= tp!1233659 b_and!313299)))

(declare-fun b_free!113579 () Bool)

(declare-fun b_next!114283 () Bool)

(assert (=> b!4075351 (= b_free!113579 (not b_next!114283))))

(declare-fun tp!1233653 () Bool)

(declare-fun b_and!313301 () Bool)

(assert (=> b!4075351 (= tp!1233653 b_and!313301)))

(declare-fun b!4075355 () Bool)

(declare-fun b_free!113581 () Bool)

(declare-fun b_next!114285 () Bool)

(assert (=> b!4075355 (= b_free!113581 (not b_next!114285))))

(declare-fun tp!1233661 () Bool)

(declare-fun b_and!313303 () Bool)

(assert (=> b!4075355 (= tp!1233661 b_and!313303)))

(declare-fun b_free!113583 () Bool)

(declare-fun b_next!114287 () Bool)

(assert (=> b!4075355 (= b_free!113583 (not b_next!114287))))

(declare-fun tp!1233660 () Bool)

(declare-fun b_and!313305 () Bool)

(assert (=> b!4075355 (= tp!1233660 b_and!313305)))

(declare-fun b!4075350 () Bool)

(declare-fun e!2529478 () Bool)

(declare-fun tp_is_empty!20861 () Bool)

(declare-fun tp!1233655 () Bool)

(assert (=> b!4075350 (= e!2529478 (and tp_is_empty!20861 tp!1233655))))

(declare-fun e!2529487 () Bool)

(assert (=> b!4075351 (= e!2529487 (and tp!1233659 tp!1233653))))

(declare-fun b!4075352 () Bool)

(declare-fun res!1664467 () Bool)

(declare-fun e!2529482 () Bool)

(assert (=> b!4075352 (=> (not res!1664467) (not e!2529482))))

(declare-datatypes ((List!43735 0))(
  ( (Nil!43611) (Cons!43611 (h!49031 (_ BitVec 16)) (t!337310 List!43735)) )
))
(declare-datatypes ((TokenValue!7254 0))(
  ( (FloatLiteralValue!14508 (text!51223 List!43735)) (TokenValueExt!7253 (__x!26725 Int)) (Broken!36270 (value!220810 List!43735)) (Object!7377) (End!7254) (Def!7254) (Underscore!7254) (Match!7254) (Else!7254) (Error!7254) (Case!7254) (If!7254) (Extends!7254) (Abstract!7254) (Class!7254) (Val!7254) (DelimiterValue!14508 (del!7314 List!43735)) (KeywordValue!7260 (value!220811 List!43735)) (CommentValue!14508 (value!220812 List!43735)) (WhitespaceValue!14508 (value!220813 List!43735)) (IndentationValue!7254 (value!220814 List!43735)) (String!50019) (Int32!7254) (Broken!36271 (value!220815 List!43735)) (Boolean!7255) (Unit!63156) (OperatorValue!7257 (op!7314 List!43735)) (IdentifierValue!14508 (value!220816 List!43735)) (IdentifierValue!14509 (value!220817 List!43735)) (WhitespaceValue!14509 (value!220818 List!43735)) (True!14508) (False!14508) (Broken!36272 (value!220819 List!43735)) (Broken!36273 (value!220820 List!43735)) (True!14509) (RightBrace!7254) (RightBracket!7254) (Colon!7254) (Null!7254) (Comma!7254) (LeftBracket!7254) (False!14509) (LeftBrace!7254) (ImaginaryLiteralValue!7254 (text!51224 List!43735)) (StringLiteralValue!21762 (value!220821 List!43735)) (EOFValue!7254 (value!220822 List!43735)) (IdentValue!7254 (value!220823 List!43735)) (DelimiterValue!14509 (value!220824 List!43735)) (DedentValue!7254 (value!220825 List!43735)) (NewLineValue!7254 (value!220826 List!43735)) (IntegerValue!21762 (value!220827 (_ BitVec 32)) (text!51225 List!43735)) (IntegerValue!21763 (value!220828 Int) (text!51226 List!43735)) (Times!7254) (Or!7254) (Equal!7254) (Minus!7254) (Broken!36274 (value!220829 List!43735)) (And!7254) (Div!7254) (LessEqual!7254) (Mod!7254) (Concat!19183) (Not!7254) (Plus!7254) (SpaceValue!7254 (value!220830 List!43735)) (IntegerValue!21764 (value!220831 Int) (text!51227 List!43735)) (StringLiteralValue!21763 (text!51228 List!43735)) (FloatLiteralValue!14509 (text!51229 List!43735)) (BytesLiteralValue!7254 (value!220832 List!43735)) (CommentValue!14509 (value!220833 List!43735)) (StringLiteralValue!21764 (value!220834 List!43735)) (ErrorTokenValue!7254 (msg!7315 List!43735)) )
))
(declare-datatypes ((C!24044 0))(
  ( (C!24045 (val!14132 Int)) )
))
(declare-datatypes ((Regex!11929 0))(
  ( (ElementMatch!11929 (c!703084 C!24044)) (Concat!19184 (regOne!24370 Regex!11929) (regTwo!24370 Regex!11929)) (EmptyExpr!11929) (Star!11929 (reg!12258 Regex!11929)) (EmptyLang!11929) (Union!11929 (regOne!24371 Regex!11929) (regTwo!24371 Regex!11929)) )
))
(declare-datatypes ((String!50020 0))(
  ( (String!50021 (value!220835 String)) )
))
(declare-datatypes ((List!43736 0))(
  ( (Nil!43612) (Cons!43612 (h!49032 C!24044) (t!337311 List!43736)) )
))
(declare-datatypes ((IArray!26475 0))(
  ( (IArray!26476 (innerList!13295 List!43736)) )
))
(declare-datatypes ((Conc!13235 0))(
  ( (Node!13235 (left!32781 Conc!13235) (right!33111 Conc!13235) (csize!26700 Int) (cheight!13446 Int)) (Leaf!20462 (xs!16541 IArray!26475) (csize!26701 Int)) (Empty!13235) )
))
(declare-datatypes ((BalanceConc!26064 0))(
  ( (BalanceConc!26065 (c!703085 Conc!13235)) )
))
(declare-datatypes ((TokenValueInjection!13936 0))(
  ( (TokenValueInjection!13937 (toValue!9588 Int) (toChars!9447 Int)) )
))
(declare-datatypes ((Rule!13848 0))(
  ( (Rule!13849 (regex!7024 Regex!11929) (tag!7884 String!50020) (isSeparator!7024 Bool) (transformation!7024 TokenValueInjection!13936)) )
))
(declare-datatypes ((List!43737 0))(
  ( (Nil!43613) (Cons!43613 (h!49033 Rule!13848) (t!337312 List!43737)) )
))
(declare-fun rules!3870 () List!43737)

(declare-fun isEmpty!26040 (List!43737) Bool)

(assert (=> b!4075352 (= res!1664467 (not (isEmpty!26040 rules!3870)))))

(declare-fun b!4075353 () Bool)

(declare-fun e!2529481 () Bool)

(declare-fun e!2529490 () Bool)

(declare-fun tp!1233662 () Bool)

(assert (=> b!4075353 (= e!2529481 (and e!2529490 tp!1233662))))

(declare-fun b!4075354 () Bool)

(declare-fun tp!1233654 () Bool)

(declare-fun r!4213 () Rule!13848)

(declare-fun e!2529483 () Bool)

(declare-fun inv!58260 (String!50020) Bool)

(declare-fun inv!58262 (TokenValueInjection!13936) Bool)

(assert (=> b!4075354 (= e!2529483 (and tp!1233654 (inv!58260 (tag!7884 r!4213)) (inv!58262 (transformation!7024 r!4213)) e!2529487))))

(declare-fun e!2529484 () Bool)

(assert (=> b!4075355 (= e!2529484 (and tp!1233661 tp!1233660))))

(declare-fun b!4075356 () Bool)

(declare-fun res!1664465 () Bool)

(declare-fun e!2529489 () Bool)

(assert (=> b!4075356 (=> res!1664465 e!2529489)))

(get-info :version)

(assert (=> b!4075356 (= res!1664465 (or (and ((_ is Cons!43613) rules!3870) (= (h!49033 rules!3870) r!4213)) (not ((_ is Cons!43613) rules!3870)) (= (h!49033 rules!3870) r!4213)))))

(declare-fun b!4075357 () Bool)

(declare-fun e!2529488 () Bool)

(assert (=> b!4075357 (= e!2529488 (not e!2529489))))

(declare-fun res!1664464 () Bool)

(assert (=> b!4075357 (=> res!1664464 e!2529489)))

(declare-fun p!2988 () List!43736)

(declare-fun matchR!5874 (Regex!11929 List!43736) Bool)

(assert (=> b!4075357 (= res!1664464 (not (matchR!5874 (regex!7024 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6613 0))(
  ( (LexerInterfaceExt!6610 (__x!26726 Int)) (Lexer!6611) )
))
(declare-fun thiss!26199 () LexerInterface!6613)

(declare-fun ruleValid!2948 (LexerInterface!6613 Rule!13848) Bool)

(assert (=> b!4075357 (ruleValid!2948 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63157 0))(
  ( (Unit!63158) )
))
(declare-fun lt!1458467 () Unit!63157)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2016 (LexerInterface!6613 Rule!13848 List!43737) Unit!63157)

(assert (=> b!4075357 (= lt!1458467 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2016 thiss!26199 r!4213 rules!3870))))

(declare-fun res!1664463 () Bool)

(assert (=> start!384768 (=> (not res!1664463) (not e!2529482))))

(assert (=> start!384768 (= res!1664463 ((_ is Lexer!6611) thiss!26199))))

(assert (=> start!384768 e!2529482))

(assert (=> start!384768 true))

(declare-fun e!2529479 () Bool)

(assert (=> start!384768 e!2529479))

(assert (=> start!384768 e!2529481))

(declare-fun e!2529486 () Bool)

(assert (=> start!384768 e!2529486))

(assert (=> start!384768 e!2529478))

(assert (=> start!384768 e!2529483))

(declare-fun b!4075358 () Bool)

(declare-fun tp!1233657 () Bool)

(assert (=> b!4075358 (= e!2529479 (and tp_is_empty!20861 tp!1233657))))

(declare-fun b!4075359 () Bool)

(declare-fun res!1664466 () Bool)

(assert (=> b!4075359 (=> (not res!1664466) (not e!2529482))))

(declare-fun rulesInvariant!5956 (LexerInterface!6613 List!43737) Bool)

(assert (=> b!4075359 (= res!1664466 (rulesInvariant!5956 thiss!26199 rules!3870))))

(declare-fun b!4075360 () Bool)

(declare-fun tp!1233658 () Bool)

(assert (=> b!4075360 (= e!2529490 (and tp!1233658 (inv!58260 (tag!7884 (h!49033 rules!3870))) (inv!58262 (transformation!7024 (h!49033 rules!3870))) e!2529484))))

(declare-fun b!4075361 () Bool)

(assert (=> b!4075361 (= e!2529489 true)))

(assert (=> b!4075361 (rulesInvariant!5956 thiss!26199 (t!337312 rules!3870))))

(declare-fun lt!1458466 () Unit!63157)

(declare-fun lemmaInvariantOnRulesThenOnTail!742 (LexerInterface!6613 Rule!13848 List!43737) Unit!63157)

(assert (=> b!4075361 (= lt!1458466 (lemmaInvariantOnRulesThenOnTail!742 thiss!26199 (h!49033 rules!3870) (t!337312 rules!3870)))))

(declare-fun b!4075362 () Bool)

(declare-fun res!1664460 () Bool)

(assert (=> b!4075362 (=> (not res!1664460) (not e!2529482))))

(declare-fun isEmpty!26041 (List!43736) Bool)

(assert (=> b!4075362 (= res!1664460 (not (isEmpty!26041 p!2988)))))

(declare-fun b!4075363 () Bool)

(declare-fun tp!1233656 () Bool)

(assert (=> b!4075363 (= e!2529486 (and tp_is_empty!20861 tp!1233656))))

(declare-fun b!4075364 () Bool)

(assert (=> b!4075364 (= e!2529482 e!2529488)))

(declare-fun res!1664461 () Bool)

(assert (=> b!4075364 (=> (not res!1664461) (not e!2529488))))

(declare-fun suffix!1518 () List!43736)

(declare-fun input!3411 () List!43736)

(declare-fun lt!1458469 () BalanceConc!26064)

(declare-datatypes ((Token!13174 0))(
  ( (Token!13175 (value!220836 TokenValue!7254) (rule!10128 Rule!13848) (size!32579 Int) (originalCharacters!7618 List!43736)) )
))
(declare-datatypes ((tuple2!42590 0))(
  ( (tuple2!42591 (_1!24429 Token!13174) (_2!24429 List!43736)) )
))
(declare-datatypes ((Option!9432 0))(
  ( (None!9431) (Some!9431 (v!39875 tuple2!42590)) )
))
(declare-fun maxPrefix!3905 (LexerInterface!6613 List!43737 List!43736) Option!9432)

(declare-fun apply!10207 (TokenValueInjection!13936 BalanceConc!26064) TokenValue!7254)

(declare-fun size!32580 (List!43736) Int)

(assert (=> b!4075364 (= res!1664461 (= (maxPrefix!3905 thiss!26199 rules!3870 input!3411) (Some!9431 (tuple2!42591 (Token!13175 (apply!10207 (transformation!7024 r!4213) lt!1458469) r!4213 (size!32580 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458468 () Unit!63157)

(declare-fun lemmaSemiInverse!1991 (TokenValueInjection!13936 BalanceConc!26064) Unit!63157)

(assert (=> b!4075364 (= lt!1458468 (lemmaSemiInverse!1991 (transformation!7024 r!4213) lt!1458469))))

(declare-fun seqFromList!5241 (List!43736) BalanceConc!26064)

(assert (=> b!4075364 (= lt!1458469 (seqFromList!5241 p!2988))))

(declare-fun b!4075365 () Bool)

(declare-fun res!1664462 () Bool)

(assert (=> b!4075365 (=> (not res!1664462) (not e!2529482))))

(declare-fun contains!8691 (List!43737 Rule!13848) Bool)

(assert (=> b!4075365 (= res!1664462 (contains!8691 rules!3870 r!4213))))

(declare-fun b!4075366 () Bool)

(declare-fun res!1664468 () Bool)

(assert (=> b!4075366 (=> (not res!1664468) (not e!2529482))))

(declare-fun ++!11430 (List!43736 List!43736) List!43736)

(assert (=> b!4075366 (= res!1664468 (= input!3411 (++!11430 p!2988 suffix!1518)))))

(assert (= (and start!384768 res!1664463) b!4075352))

(assert (= (and b!4075352 res!1664467) b!4075359))

(assert (= (and b!4075359 res!1664466) b!4075365))

(assert (= (and b!4075365 res!1664462) b!4075366))

(assert (= (and b!4075366 res!1664468) b!4075362))

(assert (= (and b!4075362 res!1664460) b!4075364))

(assert (= (and b!4075364 res!1664461) b!4075357))

(assert (= (and b!4075357 (not res!1664464)) b!4075356))

(assert (= (and b!4075356 (not res!1664465)) b!4075361))

(assert (= (and start!384768 ((_ is Cons!43612) suffix!1518)) b!4075358))

(assert (= b!4075360 b!4075355))

(assert (= b!4075353 b!4075360))

(assert (= (and start!384768 ((_ is Cons!43613) rules!3870)) b!4075353))

(assert (= (and start!384768 ((_ is Cons!43612) p!2988)) b!4075363))

(assert (= (and start!384768 ((_ is Cons!43612) input!3411)) b!4075350))

(assert (= b!4075354 b!4075351))

(assert (= start!384768 b!4075354))

(declare-fun m!4683815 () Bool)

(assert (=> b!4075354 m!4683815))

(declare-fun m!4683817 () Bool)

(assert (=> b!4075354 m!4683817))

(declare-fun m!4683819 () Bool)

(assert (=> b!4075364 m!4683819))

(declare-fun m!4683821 () Bool)

(assert (=> b!4075364 m!4683821))

(declare-fun m!4683823 () Bool)

(assert (=> b!4075364 m!4683823))

(declare-fun m!4683825 () Bool)

(assert (=> b!4075364 m!4683825))

(declare-fun m!4683827 () Bool)

(assert (=> b!4075364 m!4683827))

(declare-fun m!4683829 () Bool)

(assert (=> b!4075361 m!4683829))

(declare-fun m!4683831 () Bool)

(assert (=> b!4075361 m!4683831))

(declare-fun m!4683833 () Bool)

(assert (=> b!4075360 m!4683833))

(declare-fun m!4683835 () Bool)

(assert (=> b!4075360 m!4683835))

(declare-fun m!4683837 () Bool)

(assert (=> b!4075366 m!4683837))

(declare-fun m!4683839 () Bool)

(assert (=> b!4075362 m!4683839))

(declare-fun m!4683841 () Bool)

(assert (=> b!4075359 m!4683841))

(declare-fun m!4683843 () Bool)

(assert (=> b!4075352 m!4683843))

(declare-fun m!4683845 () Bool)

(assert (=> b!4075365 m!4683845))

(declare-fun m!4683847 () Bool)

(assert (=> b!4075357 m!4683847))

(declare-fun m!4683849 () Bool)

(assert (=> b!4075357 m!4683849))

(declare-fun m!4683851 () Bool)

(assert (=> b!4075357 m!4683851))

(check-sat (not b!4075353) b_and!313303 (not b!4075360) b_and!313299 (not b!4075358) (not b!4075364) (not b!4075350) (not b!4075365) (not b!4075361) (not b!4075354) (not b_next!114287) (not b!4075357) b_and!313305 (not b!4075363) (not b!4075362) tp_is_empty!20861 (not b_next!114281) (not b!4075359) (not b_next!114283) (not b_next!114285) (not b!4075352) (not b!4075366) b_and!313301)
(check-sat (not b_next!114281) b_and!313303 b_and!313299 (not b_next!114287) b_and!313305 b_and!313301 (not b_next!114283) (not b_next!114285))

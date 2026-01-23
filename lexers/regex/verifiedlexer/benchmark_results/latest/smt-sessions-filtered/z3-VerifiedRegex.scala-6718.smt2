; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351678 () Bool)

(assert start!351678)

(declare-fun b!3746111 () Bool)

(declare-fun b_free!99713 () Bool)

(declare-fun b_next!100417 () Bool)

(assert (=> b!3746111 (= b_free!99713 (not b_next!100417))))

(declare-fun tp!1142682 () Bool)

(declare-fun b_and!277947 () Bool)

(assert (=> b!3746111 (= tp!1142682 b_and!277947)))

(declare-fun b_free!99715 () Bool)

(declare-fun b_next!100419 () Bool)

(assert (=> b!3746111 (= b_free!99715 (not b_next!100419))))

(declare-fun tp!1142681 () Bool)

(declare-fun b_and!277949 () Bool)

(assert (=> b!3746111 (= tp!1142681 b_and!277949)))

(declare-fun b!3746104 () Bool)

(declare-fun b_free!99717 () Bool)

(declare-fun b_next!100421 () Bool)

(assert (=> b!3746104 (= b_free!99717 (not b_next!100421))))

(declare-fun tp!1142685 () Bool)

(declare-fun b_and!277951 () Bool)

(assert (=> b!3746104 (= tp!1142685 b_and!277951)))

(declare-fun b_free!99719 () Bool)

(declare-fun b_next!100423 () Bool)

(assert (=> b!3746104 (= b_free!99719 (not b_next!100423))))

(declare-fun tp!1142677 () Bool)

(declare-fun b_and!277953 () Bool)

(assert (=> b!3746104 (= tp!1142677 b_and!277953)))

(declare-fun b!3746116 () Bool)

(declare-fun b_free!99721 () Bool)

(declare-fun b_next!100425 () Bool)

(assert (=> b!3746116 (= b_free!99721 (not b_next!100425))))

(declare-fun tp!1142679 () Bool)

(declare-fun b_and!277955 () Bool)

(assert (=> b!3746116 (= tp!1142679 b_and!277955)))

(declare-fun b_free!99723 () Bool)

(declare-fun b_next!100427 () Bool)

(assert (=> b!3746116 (= b_free!99723 (not b_next!100427))))

(declare-fun tp!1142683 () Bool)

(declare-fun b_and!277957 () Bool)

(assert (=> b!3746116 (= tp!1142683 b_and!277957)))

(declare-fun e!2316394 () Bool)

(assert (=> b!3746104 (= e!2316394 (and tp!1142685 tp!1142677))))

(declare-fun res!1518443 () Bool)

(declare-fun e!2316385 () Bool)

(assert (=> start!351678 (=> (not res!1518443) (not e!2316385))))

(declare-datatypes ((LexerInterface!5659 0))(
  ( (LexerInterfaceExt!5656 (__x!24817 Int)) (Lexer!5657) )
))
(declare-fun thiss!27193 () LexerInterface!5659)

(get-info :version)

(assert (=> start!351678 (= res!1518443 ((_ is Lexer!5657) thiss!27193))))

(assert (=> start!351678 e!2316385))

(declare-fun e!2316389 () Bool)

(assert (=> start!351678 e!2316389))

(declare-fun e!2316384 () Bool)

(assert (=> start!351678 e!2316384))

(assert (=> start!351678 true))

(declare-fun tp_is_empty!18965 () Bool)

(assert (=> start!351678 tp_is_empty!18965))

(declare-fun e!2316393 () Bool)

(assert (=> start!351678 e!2316393))

(declare-fun b!3746105 () Bool)

(declare-fun res!1518450 () Bool)

(assert (=> b!3746105 (=> (not res!1518450) (not e!2316385))))

(declare-datatypes ((List!39928 0))(
  ( (Nil!39804) (Cons!39804 (h!45224 (_ BitVec 16)) (t!302611 List!39928)) )
))
(declare-datatypes ((TokenValue!6300 0))(
  ( (FloatLiteralValue!12600 (text!44545 List!39928)) (TokenValueExt!6299 (__x!24818 Int)) (Broken!31500 (value!193557 List!39928)) (Object!6423) (End!6300) (Def!6300) (Underscore!6300) (Match!6300) (Else!6300) (Error!6300) (Case!6300) (If!6300) (Extends!6300) (Abstract!6300) (Class!6300) (Val!6300) (DelimiterValue!12600 (del!6360 List!39928)) (KeywordValue!6306 (value!193558 List!39928)) (CommentValue!12600 (value!193559 List!39928)) (WhitespaceValue!12600 (value!193560 List!39928)) (IndentationValue!6300 (value!193561 List!39928)) (String!45125) (Int32!6300) (Broken!31501 (value!193562 List!39928)) (Boolean!6301) (Unit!57645) (OperatorValue!6303 (op!6360 List!39928)) (IdentifierValue!12600 (value!193563 List!39928)) (IdentifierValue!12601 (value!193564 List!39928)) (WhitespaceValue!12601 (value!193565 List!39928)) (True!12600) (False!12600) (Broken!31502 (value!193566 List!39928)) (Broken!31503 (value!193567 List!39928)) (True!12601) (RightBrace!6300) (RightBracket!6300) (Colon!6300) (Null!6300) (Comma!6300) (LeftBracket!6300) (False!12601) (LeftBrace!6300) (ImaginaryLiteralValue!6300 (text!44546 List!39928)) (StringLiteralValue!18900 (value!193568 List!39928)) (EOFValue!6300 (value!193569 List!39928)) (IdentValue!6300 (value!193570 List!39928)) (DelimiterValue!12601 (value!193571 List!39928)) (DedentValue!6300 (value!193572 List!39928)) (NewLineValue!6300 (value!193573 List!39928)) (IntegerValue!18900 (value!193574 (_ BitVec 32)) (text!44547 List!39928)) (IntegerValue!18901 (value!193575 Int) (text!44548 List!39928)) (Times!6300) (Or!6300) (Equal!6300) (Minus!6300) (Broken!31504 (value!193576 List!39928)) (And!6300) (Div!6300) (LessEqual!6300) (Mod!6300) (Concat!17275) (Not!6300) (Plus!6300) (SpaceValue!6300 (value!193577 List!39928)) (IntegerValue!18902 (value!193578 Int) (text!44549 List!39928)) (StringLiteralValue!18901 (text!44550 List!39928)) (FloatLiteralValue!12601 (text!44551 List!39928)) (BytesLiteralValue!6300 (value!193579 List!39928)) (CommentValue!12601 (value!193580 List!39928)) (StringLiteralValue!18902 (value!193581 List!39928)) (ErrorTokenValue!6300 (msg!6361 List!39928)) )
))
(declare-datatypes ((C!22136 0))(
  ( (C!22137 (val!13116 Int)) )
))
(declare-datatypes ((List!39929 0))(
  ( (Nil!39805) (Cons!39805 (h!45225 C!22136) (t!302612 List!39929)) )
))
(declare-datatypes ((IArray!24339 0))(
  ( (IArray!24340 (innerList!12227 List!39929)) )
))
(declare-datatypes ((Conc!12167 0))(
  ( (Node!12167 (left!30837 Conc!12167) (right!31167 Conc!12167) (csize!24564 Int) (cheight!12378 Int)) (Leaf!18886 (xs!15369 IArray!24339) (csize!24565 Int)) (Empty!12167) )
))
(declare-datatypes ((BalanceConc!23948 0))(
  ( (BalanceConc!23949 (c!648784 Conc!12167)) )
))
(declare-datatypes ((TokenValueInjection!12028 0))(
  ( (TokenValueInjection!12029 (toValue!8418 Int) (toChars!8277 Int)) )
))
(declare-datatypes ((Regex!10975 0))(
  ( (ElementMatch!10975 (c!648785 C!22136)) (Concat!17276 (regOne!22462 Regex!10975) (regTwo!22462 Regex!10975)) (EmptyExpr!10975) (Star!10975 (reg!11304 Regex!10975)) (EmptyLang!10975) (Union!10975 (regOne!22463 Regex!10975) (regTwo!22463 Regex!10975)) )
))
(declare-datatypes ((String!45126 0))(
  ( (String!45127 (value!193582 String)) )
))
(declare-datatypes ((Rule!11940 0))(
  ( (Rule!11941 (regex!6070 Regex!10975) (tag!6930 String!45126) (isSeparator!6070 Bool) (transformation!6070 TokenValueInjection!12028)) )
))
(declare-datatypes ((List!39930 0))(
  ( (Nil!39806) (Cons!39806 (h!45226 Rule!11940) (t!302613 List!39930)) )
))
(declare-fun rules!4213 () List!39930)

(declare-fun rulesInvariant!5056 (LexerInterface!5659 List!39930) Bool)

(assert (=> b!3746105 (= res!1518450 (rulesInvariant!5056 thiss!27193 rules!4213))))

(declare-fun rNSep!170 () Rule!11940)

(declare-fun e!2316387 () Bool)

(declare-fun b!3746106 () Bool)

(declare-fun tp!1142686 () Bool)

(declare-fun inv!53332 (String!45126) Bool)

(declare-fun inv!53334 (TokenValueInjection!12028) Bool)

(assert (=> b!3746106 (= e!2316389 (and tp!1142686 (inv!53332 (tag!6930 rNSep!170)) (inv!53334 (transformation!6070 rNSep!170)) e!2316387))))

(declare-fun b!3746107 () Bool)

(declare-fun res!1518449 () Bool)

(assert (=> b!3746107 (=> (not res!1518449) (not e!2316385))))

(declare-fun rSep!170 () Rule!11940)

(assert (=> b!3746107 (= res!1518449 (and (or (not ((_ is Cons!39806) rules!4213)) (not (= (h!45226 rules!4213) rSep!170))) ((_ is Cons!39806) rules!4213)))))

(declare-fun b!3746108 () Bool)

(declare-fun res!1518446 () Bool)

(assert (=> b!3746108 (=> (not res!1518446) (not e!2316385))))

(declare-fun c!6920 () C!22136)

(declare-fun contains!8099 (List!39929 C!22136) Bool)

(declare-fun usedCharacters!1238 (Regex!10975) List!39929)

(assert (=> b!3746108 (= res!1518446 (contains!8099 (usedCharacters!1238 (regex!6070 rNSep!170)) c!6920))))

(declare-fun b!3746109 () Bool)

(declare-fun e!2316390 () Bool)

(assert (=> b!3746109 (= e!2316385 (not e!2316390))))

(declare-fun res!1518448 () Bool)

(assert (=> b!3746109 (=> res!1518448 e!2316390)))

(declare-fun contains!8100 (List!39930 Rule!11940) Bool)

(assert (=> b!3746109 (= res!1518448 (not (contains!8100 (t!302613 rules!4213) rSep!170)))))

(assert (=> b!3746109 (rulesInvariant!5056 thiss!27193 (t!302613 rules!4213))))

(declare-datatypes ((Unit!57646 0))(
  ( (Unit!57647) )
))
(declare-fun lt!1299477 () Unit!57646)

(declare-fun lemmaInvariantOnRulesThenOnTail!708 (LexerInterface!5659 Rule!11940 List!39930) Unit!57646)

(assert (=> b!3746109 (= lt!1299477 (lemmaInvariantOnRulesThenOnTail!708 thiss!27193 (h!45226 rules!4213) (t!302613 rules!4213)))))

(declare-fun b!3746110 () Bool)

(declare-fun e!2316386 () Bool)

(declare-fun tp!1142678 () Bool)

(assert (=> b!3746110 (= e!2316384 (and e!2316386 tp!1142678))))

(assert (=> b!3746111 (= e!2316387 (and tp!1142682 tp!1142681))))

(declare-fun b!3746112 () Bool)

(declare-fun res!1518447 () Bool)

(assert (=> b!3746112 (=> (not res!1518447) (not e!2316385))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!943 (Rule!11940 List!39930) Bool)

(assert (=> b!3746112 (= res!1518447 (ruleDisjointCharsFromAllFromOtherType!943 rNSep!170 rules!4213))))

(declare-fun tp!1142680 () Bool)

(declare-fun b!3746113 () Bool)

(assert (=> b!3746113 (= e!2316386 (and tp!1142680 (inv!53332 (tag!6930 (h!45226 rules!4213))) (inv!53334 (transformation!6070 (h!45226 rules!4213))) e!2316394))))

(declare-fun e!2316388 () Bool)

(declare-fun tp!1142684 () Bool)

(declare-fun b!3746114 () Bool)

(assert (=> b!3746114 (= e!2316393 (and tp!1142684 (inv!53332 (tag!6930 rSep!170)) (inv!53334 (transformation!6070 rSep!170)) e!2316388))))

(declare-fun b!3746115 () Bool)

(declare-fun res!1518445 () Bool)

(assert (=> b!3746115 (=> (not res!1518445) (not e!2316385))))

(assert (=> b!3746115 (= res!1518445 (contains!8100 rules!4213 rSep!170))))

(assert (=> b!3746116 (= e!2316388 (and tp!1142679 tp!1142683))))

(declare-fun b!3746117 () Bool)

(assert (=> b!3746117 (= e!2316390 true)))

(declare-fun lt!1299478 () Bool)

(assert (=> b!3746117 (= lt!1299478 (ruleDisjointCharsFromAllFromOtherType!943 rNSep!170 (t!302613 rules!4213)))))

(declare-fun b!3746118 () Bool)

(declare-fun res!1518444 () Bool)

(assert (=> b!3746118 (=> (not res!1518444) (not e!2316385))))

(assert (=> b!3746118 (= res!1518444 (and (not (isSeparator!6070 rNSep!170)) (isSeparator!6070 rSep!170)))))

(assert (= (and start!351678 res!1518443) b!3746105))

(assert (= (and b!3746105 res!1518450) b!3746115))

(assert (= (and b!3746115 res!1518445) b!3746108))

(assert (= (and b!3746108 res!1518446) b!3746118))

(assert (= (and b!3746118 res!1518444) b!3746112))

(assert (= (and b!3746112 res!1518447) b!3746107))

(assert (= (and b!3746107 res!1518449) b!3746109))

(assert (= (and b!3746109 (not res!1518448)) b!3746117))

(assert (= b!3746106 b!3746111))

(assert (= start!351678 b!3746106))

(assert (= b!3746113 b!3746104))

(assert (= b!3746110 b!3746113))

(assert (= (and start!351678 ((_ is Cons!39806) rules!4213)) b!3746110))

(assert (= b!3746114 b!3746116))

(assert (= start!351678 b!3746114))

(declare-fun m!4238807 () Bool)

(assert (=> b!3746105 m!4238807))

(declare-fun m!4238809 () Bool)

(assert (=> b!3746114 m!4238809))

(declare-fun m!4238811 () Bool)

(assert (=> b!3746114 m!4238811))

(declare-fun m!4238813 () Bool)

(assert (=> b!3746117 m!4238813))

(declare-fun m!4238815 () Bool)

(assert (=> b!3746108 m!4238815))

(assert (=> b!3746108 m!4238815))

(declare-fun m!4238817 () Bool)

(assert (=> b!3746108 m!4238817))

(declare-fun m!4238819 () Bool)

(assert (=> b!3746113 m!4238819))

(declare-fun m!4238821 () Bool)

(assert (=> b!3746113 m!4238821))

(declare-fun m!4238823 () Bool)

(assert (=> b!3746112 m!4238823))

(declare-fun m!4238825 () Bool)

(assert (=> b!3746106 m!4238825))

(declare-fun m!4238827 () Bool)

(assert (=> b!3746106 m!4238827))

(declare-fun m!4238829 () Bool)

(assert (=> b!3746109 m!4238829))

(declare-fun m!4238831 () Bool)

(assert (=> b!3746109 m!4238831))

(declare-fun m!4238833 () Bool)

(assert (=> b!3746109 m!4238833))

(declare-fun m!4238835 () Bool)

(assert (=> b!3746115 m!4238835))

(check-sat tp_is_empty!18965 (not b_next!100427) (not b!3746105) b_and!277947 (not b!3746106) (not b_next!100423) b_and!277955 (not b_next!100417) b_and!277949 (not b!3746110) (not b!3746112) (not b!3746117) (not b!3746108) b_and!277953 (not b!3746114) (not b!3746109) (not b_next!100425) b_and!277951 (not b_next!100419) (not b!3746113) (not b_next!100421) (not b!3746115) b_and!277957)
(check-sat b_and!277949 b_and!277953 (not b_next!100427) b_and!277947 (not b_next!100423) b_and!277955 (not b_next!100417) b_and!277957 (not b_next!100425) b_and!277951 (not b_next!100419) (not b_next!100421))

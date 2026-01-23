; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!390528 () Bool)

(assert start!390528)

(declare-fun b!4119530 () Bool)

(declare-fun b_free!116391 () Bool)

(declare-fun b_next!117095 () Bool)

(assert (=> b!4119530 (= b_free!116391 (not b_next!117095))))

(declare-fun tp!1255302 () Bool)

(declare-fun b_and!318545 () Bool)

(assert (=> b!4119530 (= tp!1255302 b_and!318545)))

(declare-fun b_free!116393 () Bool)

(declare-fun b_next!117097 () Bool)

(assert (=> b!4119530 (= b_free!116393 (not b_next!117097))))

(declare-fun tp!1255305 () Bool)

(declare-fun b_and!318547 () Bool)

(assert (=> b!4119530 (= tp!1255305 b_and!318547)))

(declare-fun b!4119521 () Bool)

(declare-fun b_free!116395 () Bool)

(declare-fun b_next!117099 () Bool)

(assert (=> b!4119521 (= b_free!116395 (not b_next!117099))))

(declare-fun tp!1255308 () Bool)

(declare-fun b_and!318549 () Bool)

(assert (=> b!4119521 (= tp!1255308 b_and!318549)))

(declare-fun b_free!116397 () Bool)

(declare-fun b_next!117101 () Bool)

(assert (=> b!4119521 (= b_free!116397 (not b_next!117101))))

(declare-fun tp!1255312 () Bool)

(declare-fun b_and!318551 () Bool)

(assert (=> b!4119521 (= tp!1255312 b_and!318551)))

(declare-fun b!4119524 () Bool)

(declare-fun b_free!116399 () Bool)

(declare-fun b_next!117103 () Bool)

(assert (=> b!4119524 (= b_free!116399 (not b_next!117103))))

(declare-fun tp!1255311 () Bool)

(declare-fun b_and!318553 () Bool)

(assert (=> b!4119524 (= tp!1255311 b_and!318553)))

(declare-fun b_free!116401 () Bool)

(declare-fun b_next!117105 () Bool)

(assert (=> b!4119524 (= b_free!116401 (not b_next!117105))))

(declare-fun tp!1255301 () Bool)

(declare-fun b_and!318555 () Bool)

(assert (=> b!4119524 (= tp!1255301 b_and!318555)))

(declare-fun b!4119515 () Bool)

(declare-fun res!1682854 () Bool)

(declare-fun e!2556145 () Bool)

(assert (=> b!4119515 (=> (not res!1682854) (not e!2556145))))

(declare-datatypes ((C!24534 0))(
  ( (C!24535 (val!14377 Int)) )
))
(declare-datatypes ((List!44654 0))(
  ( (Nil!44530) (Cons!44530 (h!49950 C!24534) (t!340621 List!44654)) )
))
(declare-fun p!2912 () List!44654)

(declare-fun isEmpty!26481 (List!44654) Bool)

(assert (=> b!4119515 (= res!1682854 (not (isEmpty!26481 p!2912)))))

(declare-fun b!4119516 () Bool)

(declare-fun res!1682855 () Bool)

(declare-fun e!2556143 () Bool)

(assert (=> b!4119516 (=> (not res!1682855) (not e!2556143))))

(declare-datatypes ((LexerInterface!6858 0))(
  ( (LexerInterfaceExt!6855 (__x!27215 Int)) (Lexer!6856) )
))
(declare-fun thiss!25645 () LexerInterface!6858)

(declare-datatypes ((List!44655 0))(
  ( (Nil!44531) (Cons!44531 (h!49951 (_ BitVec 16)) (t!340622 List!44655)) )
))
(declare-datatypes ((TokenValue!7499 0))(
  ( (FloatLiteralValue!14998 (text!52938 List!44655)) (TokenValueExt!7498 (__x!27216 Int)) (Broken!37495 (value!227696 List!44655)) (Object!7622) (End!7499) (Def!7499) (Underscore!7499) (Match!7499) (Else!7499) (Error!7499) (Case!7499) (If!7499) (Extends!7499) (Abstract!7499) (Class!7499) (Val!7499) (DelimiterValue!14998 (del!7559 List!44655)) (KeywordValue!7505 (value!227697 List!44655)) (CommentValue!14998 (value!227698 List!44655)) (WhitespaceValue!14998 (value!227699 List!44655)) (IndentationValue!7499 (value!227700 List!44655)) (String!51246) (Int32!7499) (Broken!37496 (value!227701 List!44655)) (Boolean!7500) (Unit!63883) (OperatorValue!7502 (op!7559 List!44655)) (IdentifierValue!14998 (value!227702 List!44655)) (IdentifierValue!14999 (value!227703 List!44655)) (WhitespaceValue!14999 (value!227704 List!44655)) (True!14998) (False!14998) (Broken!37497 (value!227705 List!44655)) (Broken!37498 (value!227706 List!44655)) (True!14999) (RightBrace!7499) (RightBracket!7499) (Colon!7499) (Null!7499) (Comma!7499) (LeftBracket!7499) (False!14999) (LeftBrace!7499) (ImaginaryLiteralValue!7499 (text!52939 List!44655)) (StringLiteralValue!22497 (value!227707 List!44655)) (EOFValue!7499 (value!227708 List!44655)) (IdentValue!7499 (value!227709 List!44655)) (DelimiterValue!14999 (value!227710 List!44655)) (DedentValue!7499 (value!227711 List!44655)) (NewLineValue!7499 (value!227712 List!44655)) (IntegerValue!22497 (value!227713 (_ BitVec 32)) (text!52940 List!44655)) (IntegerValue!22498 (value!227714 Int) (text!52941 List!44655)) (Times!7499) (Or!7499) (Equal!7499) (Minus!7499) (Broken!37499 (value!227715 List!44655)) (And!7499) (Div!7499) (LessEqual!7499) (Mod!7499) (Concat!19673) (Not!7499) (Plus!7499) (SpaceValue!7499 (value!227716 List!44655)) (IntegerValue!22499 (value!227717 Int) (text!52942 List!44655)) (StringLiteralValue!22498 (text!52943 List!44655)) (FloatLiteralValue!14999 (text!52944 List!44655)) (BytesLiteralValue!7499 (value!227718 List!44655)) (CommentValue!14999 (value!227719 List!44655)) (StringLiteralValue!22499 (value!227720 List!44655)) (ErrorTokenValue!7499 (msg!7560 List!44655)) )
))
(declare-datatypes ((IArray!26965 0))(
  ( (IArray!26966 (innerList!13540 List!44654)) )
))
(declare-datatypes ((Conc!13480 0))(
  ( (Node!13480 (left!33357 Conc!13480) (right!33687 Conc!13480) (csize!27190 Int) (cheight!13691 Int)) (Leaf!20830 (xs!16786 IArray!26965) (csize!27191 Int)) (Empty!13480) )
))
(declare-datatypes ((BalanceConc!26554 0))(
  ( (BalanceConc!26555 (c!707455 Conc!13480)) )
))
(declare-datatypes ((Regex!12174 0))(
  ( (ElementMatch!12174 (c!707456 C!24534)) (Concat!19674 (regOne!24860 Regex!12174) (regTwo!24860 Regex!12174)) (EmptyExpr!12174) (Star!12174 (reg!12503 Regex!12174)) (EmptyLang!12174) (Union!12174 (regOne!24861 Regex!12174) (regTwo!24861 Regex!12174)) )
))
(declare-datatypes ((String!51247 0))(
  ( (String!51248 (value!227721 String)) )
))
(declare-datatypes ((TokenValueInjection!14426 0))(
  ( (TokenValueInjection!14427 (toValue!9921 Int) (toChars!9780 Int)) )
))
(declare-datatypes ((Rule!14338 0))(
  ( (Rule!14339 (regex!7269 Regex!12174) (tag!8129 String!51247) (isSeparator!7269 Bool) (transformation!7269 TokenValueInjection!14426)) )
))
(declare-fun r!4008 () Rule!14338)

(declare-fun ruleValid!3077 (LexerInterface!6858 Rule!14338) Bool)

(assert (=> b!4119516 (= res!1682855 (ruleValid!3077 thiss!25645 r!4008))))

(declare-fun b!4119517 () Bool)

(declare-fun res!1682861 () Bool)

(assert (=> b!4119517 (=> (not res!1682861) (not e!2556145))))

(declare-datatypes ((List!44656 0))(
  ( (Nil!44532) (Cons!44532 (h!49952 Rule!14338) (t!340623 List!44656)) )
))
(declare-fun rules!3756 () List!44656)

(declare-fun contains!8941 (List!44656 Rule!14338) Bool)

(assert (=> b!4119517 (= res!1682861 (contains!8941 rules!3756 r!4008))))

(declare-fun e!2556148 () Bool)

(declare-fun tp!1255310 () Bool)

(declare-fun e!2556141 () Bool)

(declare-fun b!4119518 () Bool)

(declare-fun inv!59114 (String!51247) Bool)

(declare-fun inv!59117 (TokenValueInjection!14426) Bool)

(assert (=> b!4119518 (= e!2556148 (and tp!1255310 (inv!59114 (tag!8129 (h!49952 rules!3756))) (inv!59117 (transformation!7269 (h!49952 rules!3756))) e!2556141))))

(declare-fun b!4119519 () Bool)

(declare-fun res!1682860 () Bool)

(assert (=> b!4119519 (=> (not res!1682860) (not e!2556145))))

(declare-fun rulesInvariant!6155 (LexerInterface!6858 List!44656) Bool)

(assert (=> b!4119519 (= res!1682860 (rulesInvariant!6155 thiss!25645 rules!3756))))

(declare-fun b!4119520 () Bool)

(declare-fun e!2556142 () Bool)

(declare-fun e!2556149 () Bool)

(assert (=> b!4119520 (= e!2556142 e!2556149)))

(declare-fun res!1682864 () Bool)

(assert (=> b!4119520 (=> res!1682864 e!2556149)))

(declare-datatypes ((Token!13468 0))(
  ( (Token!13469 (value!227722 TokenValue!7499) (rule!10339 Rule!14338) (size!32951 Int) (originalCharacters!7765 List!44654)) )
))
(declare-datatypes ((tuple2!43004 0))(
  ( (tuple2!43005 (_1!24636 Token!13468) (_2!24636 List!44654)) )
))
(declare-datatypes ((Option!9577 0))(
  ( (None!9576) (Some!9576 (v!40158 tuple2!43004)) )
))
(declare-fun lt!1469600 () Option!9577)

(declare-fun isEmpty!26482 (Option!9577) Bool)

(assert (=> b!4119520 (= res!1682864 (isEmpty!26482 lt!1469600))))

(declare-fun input!3238 () List!44654)

(declare-fun rBis!149 () Rule!14338)

(declare-fun maxPrefixOneRule!3000 (LexerInterface!6858 Rule!14338 List!44654) Option!9577)

(assert (=> b!4119520 (= lt!1469600 (maxPrefixOneRule!3000 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4119520 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!63884 0))(
  ( (Unit!63885) )
))
(declare-fun lt!1469599 () Unit!63884)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!9 (LexerInterface!6858 List!44656 Rule!14338 Rule!14338) Unit!63884)

(assert (=> b!4119520 (= lt!1469599 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!9 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6422 (List!44656) List!44656)

(assert (=> b!4119520 (contains!8941 (tail!6422 rules!3756) r!4008)))

(declare-fun lt!1469595 () Unit!63884)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!11 (List!44656 Rule!14338 Rule!14338) Unit!63884)

(assert (=> b!4119520 (= lt!1469595 (lemmaGetIndexBiggerAndHeadEqThenTailContains!11 rules!3756 rBis!149 r!4008))))

(assert (=> b!4119521 (= e!2556141 (and tp!1255308 tp!1255312))))

(declare-fun b!4119522 () Bool)

(declare-fun res!1682858 () Bool)

(assert (=> b!4119522 (=> (not res!1682858) (not e!2556145))))

(assert (=> b!4119522 (= res!1682858 (contains!8941 rules!3756 rBis!149))))

(declare-fun e!2556144 () Bool)

(declare-fun tp!1255304 () Bool)

(declare-fun e!2556135 () Bool)

(declare-fun b!4119523 () Bool)

(assert (=> b!4119523 (= e!2556144 (and tp!1255304 (inv!59114 (tag!8129 rBis!149)) (inv!59117 (transformation!7269 rBis!149)) e!2556135))))

(assert (=> b!4119524 (= e!2556135 (and tp!1255311 tp!1255301))))

(declare-fun b!4119525 () Bool)

(declare-fun e!2556147 () Bool)

(declare-fun tp!1255307 () Bool)

(declare-fun e!2556137 () Bool)

(assert (=> b!4119525 (= e!2556137 (and tp!1255307 (inv!59114 (tag!8129 r!4008)) (inv!59117 (transformation!7269 r!4008)) e!2556147))))

(declare-fun b!4119526 () Bool)

(declare-fun res!1682852 () Bool)

(assert (=> b!4119526 (=> (not res!1682852) (not e!2556143))))

(declare-fun matchR!6005 (Regex!12174 List!44654) Bool)

(assert (=> b!4119526 (= res!1682852 (matchR!6005 (regex!7269 r!4008) p!2912))))

(declare-fun b!4119527 () Bool)

(assert (=> b!4119527 (= e!2556145 e!2556143)))

(declare-fun res!1682859 () Bool)

(assert (=> b!4119527 (=> (not res!1682859) (not e!2556143))))

(declare-fun lt!1469601 () Int)

(declare-fun lt!1469596 () TokenValue!7499)

(declare-fun maxPrefix!4050 (LexerInterface!6858 List!44656 List!44654) Option!9577)

(declare-fun getSuffix!2533 (List!44654 List!44654) List!44654)

(assert (=> b!4119527 (= res!1682859 (= (maxPrefix!4050 thiss!25645 rules!3756 input!3238) (Some!9576 (tuple2!43005 (Token!13469 lt!1469596 r!4008 lt!1469601 p!2912) (getSuffix!2533 input!3238 p!2912)))))))

(declare-fun size!32952 (List!44654) Int)

(assert (=> b!4119527 (= lt!1469601 (size!32952 p!2912))))

(declare-fun lt!1469593 () BalanceConc!26554)

(declare-fun apply!10342 (TokenValueInjection!14426 BalanceConc!26554) TokenValue!7499)

(assert (=> b!4119527 (= lt!1469596 (apply!10342 (transformation!7269 r!4008) lt!1469593))))

(declare-fun lt!1469594 () Unit!63884)

(declare-fun lemmaSemiInverse!2127 (TokenValueInjection!14426 BalanceConc!26554) Unit!63884)

(assert (=> b!4119527 (= lt!1469594 (lemmaSemiInverse!2127 (transformation!7269 r!4008) lt!1469593))))

(declare-fun seqFromList!5386 (List!44654) BalanceConc!26554)

(assert (=> b!4119527 (= lt!1469593 (seqFromList!5386 p!2912))))

(declare-fun b!4119528 () Bool)

(declare-fun res!1682856 () Bool)

(assert (=> b!4119528 (=> (not res!1682856) (not e!2556145))))

(declare-fun isEmpty!26483 (List!44656) Bool)

(assert (=> b!4119528 (= res!1682856 (not (isEmpty!26483 rules!3756)))))

(declare-fun res!1682865 () Bool)

(assert (=> start!390528 (=> (not res!1682865) (not e!2556145))))

(assert (=> start!390528 (= res!1682865 (is-Lexer!6856 thiss!25645))))

(assert (=> start!390528 e!2556145))

(declare-fun e!2556139 () Bool)

(assert (=> start!390528 e!2556139))

(declare-fun e!2556138 () Bool)

(assert (=> start!390528 e!2556138))

(assert (=> start!390528 true))

(assert (=> start!390528 e!2556137))

(declare-fun e!2556136 () Bool)

(assert (=> start!390528 e!2556136))

(assert (=> start!390528 e!2556144))

(declare-fun b!4119529 () Bool)

(assert (=> b!4119529 (= e!2556149 (>= (size!32952 input!3238) lt!1469601))))

(assert (=> b!4119530 (= e!2556147 (and tp!1255302 tp!1255305))))

(declare-fun b!4119531 () Bool)

(assert (=> b!4119531 (= e!2556143 (not e!2556142))))

(declare-fun res!1682862 () Bool)

(assert (=> b!4119531 (=> res!1682862 e!2556142)))

(assert (=> b!4119531 (= res!1682862 (or (not (is-Cons!44532 rules!3756)) (not (= (h!49952 rules!3756) rBis!149))))))

(declare-fun lt!1469597 () Unit!63884)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2121 (LexerInterface!6858 Rule!14338 List!44656) Unit!63884)

(assert (=> b!4119531 (= lt!1469597 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2121 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4119531 (ruleValid!3077 thiss!25645 rBis!149)))

(declare-fun lt!1469598 () Unit!63884)

(assert (=> b!4119531 (= lt!1469598 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2121 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4119532 () Bool)

(declare-fun res!1682853 () Bool)

(assert (=> b!4119532 (=> (not res!1682853) (not e!2556145))))

(declare-fun isPrefix!4204 (List!44654 List!44654) Bool)

(assert (=> b!4119532 (= res!1682853 (isPrefix!4204 p!2912 input!3238))))

(declare-fun b!4119533 () Bool)

(declare-fun tp_is_empty!21271 () Bool)

(declare-fun tp!1255309 () Bool)

(assert (=> b!4119533 (= e!2556136 (and tp_is_empty!21271 tp!1255309))))

(declare-fun b!4119534 () Bool)

(declare-fun tp!1255303 () Bool)

(assert (=> b!4119534 (= e!2556139 (and e!2556148 tp!1255303))))

(declare-fun b!4119535 () Bool)

(declare-fun res!1682863 () Bool)

(assert (=> b!4119535 (=> res!1682863 e!2556149)))

(declare-fun size!32953 (BalanceConc!26554) Int)

(declare-fun charsOf!4891 (Token!13468) BalanceConc!26554)

(declare-fun get!14522 (Option!9577) tuple2!43004)

(assert (=> b!4119535 (= res!1682863 (<= (size!32953 (charsOf!4891 (_1!24636 (get!14522 lt!1469600)))) lt!1469601))))

(declare-fun b!4119536 () Bool)

(declare-fun tp!1255306 () Bool)

(assert (=> b!4119536 (= e!2556138 (and tp_is_empty!21271 tp!1255306))))

(declare-fun b!4119537 () Bool)

(declare-fun res!1682857 () Bool)

(assert (=> b!4119537 (=> (not res!1682857) (not e!2556143))))

(declare-fun getIndex!617 (List!44656 Rule!14338) Int)

(assert (=> b!4119537 (= res!1682857 (< (getIndex!617 rules!3756 rBis!149) (getIndex!617 rules!3756 r!4008)))))

(assert (= (and start!390528 res!1682865) b!4119532))

(assert (= (and b!4119532 res!1682853) b!4119528))

(assert (= (and b!4119528 res!1682856) b!4119519))

(assert (= (and b!4119519 res!1682860) b!4119517))

(assert (= (and b!4119517 res!1682861) b!4119522))

(assert (= (and b!4119522 res!1682858) b!4119515))

(assert (= (and b!4119515 res!1682854) b!4119527))

(assert (= (and b!4119527 res!1682859) b!4119526))

(assert (= (and b!4119526 res!1682852) b!4119537))

(assert (= (and b!4119537 res!1682857) b!4119516))

(assert (= (and b!4119516 res!1682855) b!4119531))

(assert (= (and b!4119531 (not res!1682862)) b!4119520))

(assert (= (and b!4119520 (not res!1682864)) b!4119535))

(assert (= (and b!4119535 (not res!1682863)) b!4119529))

(assert (= b!4119518 b!4119521))

(assert (= b!4119534 b!4119518))

(assert (= (and start!390528 (is-Cons!44532 rules!3756)) b!4119534))

(assert (= (and start!390528 (is-Cons!44530 p!2912)) b!4119536))

(assert (= b!4119525 b!4119530))

(assert (= start!390528 b!4119525))

(assert (= (and start!390528 (is-Cons!44530 input!3238)) b!4119533))

(assert (= b!4119523 b!4119524))

(assert (= start!390528 b!4119523))

(declare-fun m!4718769 () Bool)

(assert (=> b!4119522 m!4718769))

(declare-fun m!4718771 () Bool)

(assert (=> b!4119531 m!4718771))

(declare-fun m!4718773 () Bool)

(assert (=> b!4119531 m!4718773))

(declare-fun m!4718775 () Bool)

(assert (=> b!4119531 m!4718775))

(declare-fun m!4718777 () Bool)

(assert (=> b!4119526 m!4718777))

(declare-fun m!4718779 () Bool)

(assert (=> b!4119519 m!4718779))

(declare-fun m!4718781 () Bool)

(assert (=> b!4119529 m!4718781))

(declare-fun m!4718783 () Bool)

(assert (=> b!4119516 m!4718783))

(declare-fun m!4718785 () Bool)

(assert (=> b!4119518 m!4718785))

(declare-fun m!4718787 () Bool)

(assert (=> b!4119518 m!4718787))

(declare-fun m!4718789 () Bool)

(assert (=> b!4119523 m!4718789))

(declare-fun m!4718791 () Bool)

(assert (=> b!4119523 m!4718791))

(declare-fun m!4718793 () Bool)

(assert (=> b!4119527 m!4718793))

(declare-fun m!4718795 () Bool)

(assert (=> b!4119527 m!4718795))

(declare-fun m!4718797 () Bool)

(assert (=> b!4119527 m!4718797))

(declare-fun m!4718799 () Bool)

(assert (=> b!4119527 m!4718799))

(declare-fun m!4718801 () Bool)

(assert (=> b!4119527 m!4718801))

(declare-fun m!4718803 () Bool)

(assert (=> b!4119527 m!4718803))

(declare-fun m!4718805 () Bool)

(assert (=> b!4119535 m!4718805))

(declare-fun m!4718807 () Bool)

(assert (=> b!4119535 m!4718807))

(assert (=> b!4119535 m!4718807))

(declare-fun m!4718809 () Bool)

(assert (=> b!4119535 m!4718809))

(declare-fun m!4718811 () Bool)

(assert (=> b!4119515 m!4718811))

(declare-fun m!4718813 () Bool)

(assert (=> b!4119532 m!4718813))

(declare-fun m!4718815 () Bool)

(assert (=> b!4119517 m!4718815))

(declare-fun m!4718817 () Bool)

(assert (=> b!4119528 m!4718817))

(declare-fun m!4718819 () Bool)

(assert (=> b!4119520 m!4718819))

(declare-fun m!4718821 () Bool)

(assert (=> b!4119520 m!4718821))

(declare-fun m!4718823 () Bool)

(assert (=> b!4119520 m!4718823))

(declare-fun m!4718825 () Bool)

(assert (=> b!4119520 m!4718825))

(declare-fun m!4718827 () Bool)

(assert (=> b!4119520 m!4718827))

(assert (=> b!4119520 m!4718821))

(declare-fun m!4718829 () Bool)

(assert (=> b!4119520 m!4718829))

(declare-fun m!4718831 () Bool)

(assert (=> b!4119525 m!4718831))

(declare-fun m!4718833 () Bool)

(assert (=> b!4119525 m!4718833))

(declare-fun m!4718835 () Bool)

(assert (=> b!4119537 m!4718835))

(declare-fun m!4718837 () Bool)

(assert (=> b!4119537 m!4718837))

(push 1)

(assert (not b!4119529))

(assert b_and!318547)

(assert (not b!4119525))

(assert (not b!4119532))

(assert (not b!4119528))

(assert (not b_next!117095))

(assert b_and!318549)

(assert (not b!4119517))

(assert (not b!4119531))

(assert (not b!4119534))

(assert b_and!318555)

(assert (not b!4119520))

(assert (not b!4119526))

(assert (not b!4119533))

(assert (not b_next!117105))

(assert (not b!4119516))

(assert (not b_next!117101))

(assert b_and!318553)

(assert (not b!4119537))

(assert b_and!318545)

(assert (not b!4119536))

(assert (not b_next!117103))

(assert (not b!4119523))

(assert (not b_next!117097))

(assert (not b!4119518))

(assert (not b!4119535))

(assert (not b!4119522))

(assert (not b_next!117099))

(assert (not b!4119515))

(assert tp_is_empty!21271)

(assert b_and!318551)

(assert (not b!4119527))

(assert (not b!4119519))

(check-sat)

(pop 1)

(push 1)

(assert b_and!318555)

(assert (not b_next!117105))

(assert b_and!318545)

(assert b_and!318547)

(assert (not b_next!117103))

(assert (not b_next!117095))

(assert (not b_next!117097))

(assert b_and!318549)

(assert (not b_next!117099))

(assert b_and!318551)

(assert (not b_next!117101))

(assert b_and!318553)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1221416 () Bool)

(declare-fun lt!1469631 () Bool)

(declare-fun content!6865 (List!44656) (Set Rule!14338))

(assert (=> d!1221416 (= lt!1469631 (set.member r!4008 (content!6865 rules!3756)))))

(declare-fun e!2556207 () Bool)

(assert (=> d!1221416 (= lt!1469631 e!2556207)))

(declare-fun res!1682922 () Bool)

(assert (=> d!1221416 (=> (not res!1682922) (not e!2556207))))

(assert (=> d!1221416 (= res!1682922 (is-Cons!44532 rules!3756))))

(assert (=> d!1221416 (= (contains!8941 rules!3756 r!4008) lt!1469631)))

(declare-fun b!4119614 () Bool)

(declare-fun e!2556206 () Bool)

(assert (=> b!4119614 (= e!2556207 e!2556206)))

(declare-fun res!1682923 () Bool)

(assert (=> b!4119614 (=> res!1682923 e!2556206)))

(assert (=> b!4119614 (= res!1682923 (= (h!49952 rules!3756) r!4008))))

(declare-fun b!4119615 () Bool)

(assert (=> b!4119615 (= e!2556206 (contains!8941 (t!340623 rules!3756) r!4008))))

(assert (= (and d!1221416 res!1682922) b!4119614))

(assert (= (and b!4119614 (not res!1682923)) b!4119615))

(declare-fun m!4718913 () Bool)

(assert (=> d!1221416 m!4718913))

(declare-fun m!4718915 () Bool)

(assert (=> d!1221416 m!4718915))

(declare-fun m!4718917 () Bool)

(assert (=> b!4119615 m!4718917))

(assert (=> b!4119517 d!1221416))

(declare-fun d!1221420 () Bool)

(assert (=> d!1221420 (= (isEmpty!26483 rules!3756) (is-Nil!44532 rules!3756))))

(assert (=> b!4119528 d!1221420))

(declare-fun d!1221422 () Bool)

(assert (=> d!1221422 (= (inv!59114 (tag!8129 (h!49952 rules!3756))) (= (mod (str.len (value!227721 (tag!8129 (h!49952 rules!3756)))) 2) 0))))

(assert (=> b!4119518 d!1221422))

(declare-fun d!1221424 () Bool)

(declare-fun res!1682926 () Bool)

(declare-fun e!2556210 () Bool)

(assert (=> d!1221424 (=> (not res!1682926) (not e!2556210))))

(declare-fun semiInverseModEq!3131 (Int Int) Bool)

(assert (=> d!1221424 (= res!1682926 (semiInverseModEq!3131 (toChars!9780 (transformation!7269 (h!49952 rules!3756))) (toValue!9921 (transformation!7269 (h!49952 rules!3756)))))))

(assert (=> d!1221424 (= (inv!59117 (transformation!7269 (h!49952 rules!3756))) e!2556210)))

(declare-fun b!4119618 () Bool)

(declare-fun equivClasses!3030 (Int Int) Bool)

(assert (=> b!4119618 (= e!2556210 (equivClasses!3030 (toChars!9780 (transformation!7269 (h!49952 rules!3756))) (toValue!9921 (transformation!7269 (h!49952 rules!3756)))))))

(assert (= (and d!1221424 res!1682926) b!4119618))

(declare-fun m!4718925 () Bool)

(assert (=> d!1221424 m!4718925))

(declare-fun m!4718927 () Bool)

(assert (=> b!4119618 m!4718927))

(assert (=> b!4119518 d!1221424))

(declare-fun d!1221428 () Bool)

(declare-fun lt!1469637 () Int)

(assert (=> d!1221428 (>= lt!1469637 0)))

(declare-fun e!2556213 () Int)

(assert (=> d!1221428 (= lt!1469637 e!2556213)))

(declare-fun c!707462 () Bool)

(assert (=> d!1221428 (= c!707462 (is-Nil!44530 input!3238))))

(assert (=> d!1221428 (= (size!32952 input!3238) lt!1469637)))

(declare-fun b!4119623 () Bool)

(assert (=> b!4119623 (= e!2556213 0)))

(declare-fun b!4119624 () Bool)

(assert (=> b!4119624 (= e!2556213 (+ 1 (size!32952 (t!340621 input!3238))))))

(assert (= (and d!1221428 c!707462) b!4119623))

(assert (= (and d!1221428 (not c!707462)) b!4119624))

(declare-fun m!4718929 () Bool)

(assert (=> b!4119624 m!4718929))

(assert (=> b!4119529 d!1221428))

(declare-fun d!1221430 () Bool)

(declare-fun res!1682929 () Bool)

(declare-fun e!2556216 () Bool)

(assert (=> d!1221430 (=> (not res!1682929) (not e!2556216))))

(declare-fun rulesValid!2845 (LexerInterface!6858 List!44656) Bool)

(assert (=> d!1221430 (= res!1682929 (rulesValid!2845 thiss!25645 rules!3756))))

(assert (=> d!1221430 (= (rulesInvariant!6155 thiss!25645 rules!3756) e!2556216)))

(declare-fun b!4119627 () Bool)

(declare-datatypes ((List!44660 0))(
  ( (Nil!44536) (Cons!44536 (h!49956 String!51247) (t!340663 List!44660)) )
))
(declare-fun noDuplicateTag!2924 (LexerInterface!6858 List!44656 List!44660) Bool)

(assert (=> b!4119627 (= e!2556216 (noDuplicateTag!2924 thiss!25645 rules!3756 Nil!44536))))

(assert (= (and d!1221430 res!1682929) b!4119627))

(declare-fun m!4718931 () Bool)

(assert (=> d!1221430 m!4718931))

(declare-fun m!4718933 () Bool)

(assert (=> b!4119627 m!4718933))

(assert (=> b!4119519 d!1221430))

(declare-fun d!1221432 () Bool)

(assert (=> d!1221432 (= (tail!6422 rules!3756) (t!340623 rules!3756))))

(assert (=> b!4119520 d!1221432))

(declare-fun d!1221434 () Bool)

(assert (=> d!1221434 (contains!8941 (tail!6422 rules!3756) r!4008)))

(declare-fun lt!1469643 () Unit!63884)

(declare-fun choose!25172 (List!44656 Rule!14338 Rule!14338) Unit!63884)

(assert (=> d!1221434 (= lt!1469643 (choose!25172 rules!3756 rBis!149 r!4008))))

(declare-fun e!2556222 () Bool)

(assert (=> d!1221434 e!2556222))

(declare-fun res!1682932 () Bool)

(assert (=> d!1221434 (=> (not res!1682932) (not e!2556222))))

(assert (=> d!1221434 (= res!1682932 (contains!8941 rules!3756 rBis!149))))

(assert (=> d!1221434 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!11 rules!3756 rBis!149 r!4008) lt!1469643)))

(declare-fun b!4119635 () Bool)

(assert (=> b!4119635 (= e!2556222 (contains!8941 rules!3756 r!4008))))

(assert (= (and d!1221434 res!1682932) b!4119635))

(assert (=> d!1221434 m!4718821))

(assert (=> d!1221434 m!4718821))

(assert (=> d!1221434 m!4718829))

(declare-fun m!4718943 () Bool)

(assert (=> d!1221434 m!4718943))

(assert (=> d!1221434 m!4718769))

(assert (=> b!4119635 m!4718815))

(assert (=> b!4119520 d!1221434))

(declare-fun b!4119704 () Bool)

(declare-fun e!2556260 () Bool)

(declare-fun lt!1469663 () Option!9577)

(assert (=> b!4119704 (= e!2556260 (= (size!32951 (_1!24636 (get!14522 lt!1469663))) (size!32952 (originalCharacters!7765 (_1!24636 (get!14522 lt!1469663))))))))

(declare-fun b!4119705 () Bool)

(declare-fun e!2556258 () Option!9577)

(declare-datatypes ((tuple2!43008 0))(
  ( (tuple2!43009 (_1!24638 List!44654) (_2!24638 List!44654)) )
))
(declare-fun lt!1469662 () tuple2!43008)

(assert (=> b!4119705 (= e!2556258 (Some!9576 (tuple2!43005 (Token!13469 (apply!10342 (transformation!7269 rBis!149) (seqFromList!5386 (_1!24638 lt!1469662))) rBis!149 (size!32953 (seqFromList!5386 (_1!24638 lt!1469662))) (_1!24638 lt!1469662)) (_2!24638 lt!1469662))))))

(declare-fun lt!1469661 () Unit!63884)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1459 (Regex!12174 List!44654) Unit!63884)

(assert (=> b!4119705 (= lt!1469661 (longestMatchIsAcceptedByMatchOrIsEmpty!1459 (regex!7269 rBis!149) input!3238))))

(declare-fun res!1682974 () Bool)

(declare-fun findLongestMatchInner!1486 (Regex!12174 List!44654 Int List!44654 List!44654 Int) tuple2!43008)

(assert (=> b!4119705 (= res!1682974 (isEmpty!26481 (_1!24638 (findLongestMatchInner!1486 (regex!7269 rBis!149) Nil!44530 (size!32952 Nil!44530) input!3238 input!3238 (size!32952 input!3238)))))))

(declare-fun e!2556261 () Bool)

(assert (=> b!4119705 (=> res!1682974 e!2556261)))

(assert (=> b!4119705 e!2556261))

(declare-fun lt!1469664 () Unit!63884)

(assert (=> b!4119705 (= lt!1469664 lt!1469661)))

(declare-fun lt!1469660 () Unit!63884)

(assert (=> b!4119705 (= lt!1469660 (lemmaSemiInverse!2127 (transformation!7269 rBis!149) (seqFromList!5386 (_1!24638 lt!1469662))))))

(declare-fun b!4119706 () Bool)

(declare-fun res!1682973 () Bool)

(assert (=> b!4119706 (=> (not res!1682973) (not e!2556260))))

(assert (=> b!4119706 (= res!1682973 (= (value!227722 (_1!24636 (get!14522 lt!1469663))) (apply!10342 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469663)))) (seqFromList!5386 (originalCharacters!7765 (_1!24636 (get!14522 lt!1469663)))))))))

(declare-fun b!4119707 () Bool)

(declare-fun res!1682976 () Bool)

(assert (=> b!4119707 (=> (not res!1682976) (not e!2556260))))

(assert (=> b!4119707 (= res!1682976 (< (size!32952 (_2!24636 (get!14522 lt!1469663))) (size!32952 input!3238)))))

(declare-fun b!4119708 () Bool)

(assert (=> b!4119708 (= e!2556261 (matchR!6005 (regex!7269 rBis!149) (_1!24638 (findLongestMatchInner!1486 (regex!7269 rBis!149) Nil!44530 (size!32952 Nil!44530) input!3238 input!3238 (size!32952 input!3238)))))))

(declare-fun b!4119709 () Bool)

(declare-fun res!1682972 () Bool)

(assert (=> b!4119709 (=> (not res!1682972) (not e!2556260))))

(declare-fun ++!11547 (List!44654 List!44654) List!44654)

(declare-fun list!16342 (BalanceConc!26554) List!44654)

(assert (=> b!4119709 (= res!1682972 (= (++!11547 (list!16342 (charsOf!4891 (_1!24636 (get!14522 lt!1469663)))) (_2!24636 (get!14522 lt!1469663))) input!3238))))

(declare-fun b!4119710 () Bool)

(assert (=> b!4119710 (= e!2556258 None!9576)))

(declare-fun b!4119711 () Bool)

(declare-fun res!1682975 () Bool)

(assert (=> b!4119711 (=> (not res!1682975) (not e!2556260))))

(assert (=> b!4119711 (= res!1682975 (= (rule!10339 (_1!24636 (get!14522 lt!1469663))) rBis!149))))

(declare-fun d!1221438 () Bool)

(declare-fun e!2556259 () Bool)

(assert (=> d!1221438 e!2556259))

(declare-fun res!1682971 () Bool)

(assert (=> d!1221438 (=> res!1682971 e!2556259)))

(assert (=> d!1221438 (= res!1682971 (isEmpty!26482 lt!1469663))))

(assert (=> d!1221438 (= lt!1469663 e!2556258)))

(declare-fun c!707477 () Bool)

(assert (=> d!1221438 (= c!707477 (isEmpty!26481 (_1!24638 lt!1469662)))))

(declare-fun findLongestMatch!1399 (Regex!12174 List!44654) tuple2!43008)

(assert (=> d!1221438 (= lt!1469662 (findLongestMatch!1399 (regex!7269 rBis!149) input!3238))))

(assert (=> d!1221438 (ruleValid!3077 thiss!25645 rBis!149)))

(assert (=> d!1221438 (= (maxPrefixOneRule!3000 thiss!25645 rBis!149 input!3238) lt!1469663)))

(declare-fun b!4119712 () Bool)

(assert (=> b!4119712 (= e!2556259 e!2556260)))

(declare-fun res!1682977 () Bool)

(assert (=> b!4119712 (=> (not res!1682977) (not e!2556260))))

(assert (=> b!4119712 (= res!1682977 (matchR!6005 (regex!7269 rBis!149) (list!16342 (charsOf!4891 (_1!24636 (get!14522 lt!1469663))))))))

(assert (= (and d!1221438 c!707477) b!4119710))

(assert (= (and d!1221438 (not c!707477)) b!4119705))

(assert (= (and b!4119705 (not res!1682974)) b!4119708))

(assert (= (and d!1221438 (not res!1682971)) b!4119712))

(assert (= (and b!4119712 res!1682977) b!4119709))

(assert (= (and b!4119709 res!1682972) b!4119707))

(assert (= (and b!4119707 res!1682976) b!4119711))

(assert (= (and b!4119711 res!1682975) b!4119706))

(assert (= (and b!4119706 res!1682973) b!4119704))

(declare-fun m!4718969 () Bool)

(assert (=> b!4119704 m!4718969))

(declare-fun m!4718971 () Bool)

(assert (=> b!4119704 m!4718971))

(assert (=> b!4119711 m!4718969))

(assert (=> b!4119707 m!4718969))

(declare-fun m!4718973 () Bool)

(assert (=> b!4119707 m!4718973))

(assert (=> b!4119707 m!4718781))

(declare-fun m!4718975 () Bool)

(assert (=> b!4119708 m!4718975))

(assert (=> b!4119708 m!4718781))

(assert (=> b!4119708 m!4718975))

(assert (=> b!4119708 m!4718781))

(declare-fun m!4718977 () Bool)

(assert (=> b!4119708 m!4718977))

(declare-fun m!4718979 () Bool)

(assert (=> b!4119708 m!4718979))

(assert (=> b!4119709 m!4718969))

(declare-fun m!4718981 () Bool)

(assert (=> b!4119709 m!4718981))

(assert (=> b!4119709 m!4718981))

(declare-fun m!4718983 () Bool)

(assert (=> b!4119709 m!4718983))

(assert (=> b!4119709 m!4718983))

(declare-fun m!4718985 () Bool)

(assert (=> b!4119709 m!4718985))

(declare-fun m!4718987 () Bool)

(assert (=> d!1221438 m!4718987))

(declare-fun m!4718989 () Bool)

(assert (=> d!1221438 m!4718989))

(declare-fun m!4718991 () Bool)

(assert (=> d!1221438 m!4718991))

(assert (=> d!1221438 m!4718773))

(assert (=> b!4119706 m!4718969))

(declare-fun m!4718993 () Bool)

(assert (=> b!4119706 m!4718993))

(assert (=> b!4119706 m!4718993))

(declare-fun m!4718995 () Bool)

(assert (=> b!4119706 m!4718995))

(declare-fun m!4718997 () Bool)

(assert (=> b!4119705 m!4718997))

(declare-fun m!4718999 () Bool)

(assert (=> b!4119705 m!4718999))

(assert (=> b!4119705 m!4718997))

(declare-fun m!4719001 () Bool)

(assert (=> b!4119705 m!4719001))

(assert (=> b!4119705 m!4718975))

(assert (=> b!4119705 m!4718781))

(assert (=> b!4119705 m!4718997))

(assert (=> b!4119705 m!4718975))

(assert (=> b!4119705 m!4718781))

(assert (=> b!4119705 m!4718977))

(declare-fun m!4719003 () Bool)

(assert (=> b!4119705 m!4719003))

(declare-fun m!4719005 () Bool)

(assert (=> b!4119705 m!4719005))

(assert (=> b!4119705 m!4718997))

(declare-fun m!4719007 () Bool)

(assert (=> b!4119705 m!4719007))

(assert (=> b!4119712 m!4718969))

(assert (=> b!4119712 m!4718981))

(assert (=> b!4119712 m!4718981))

(assert (=> b!4119712 m!4718983))

(assert (=> b!4119712 m!4718983))

(declare-fun m!4719009 () Bool)

(assert (=> b!4119712 m!4719009))

(assert (=> b!4119520 d!1221438))

(declare-fun d!1221448 () Bool)

(assert (=> d!1221448 (not (= rBis!149 r!4008))))

(declare-fun lt!1469667 () Unit!63884)

(declare-fun choose!25173 (LexerInterface!6858 List!44656 Rule!14338 Rule!14338) Unit!63884)

(assert (=> d!1221448 (= lt!1469667 (choose!25173 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1221448 (contains!8941 rules!3756 rBis!149)))

(assert (=> d!1221448 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!9 thiss!25645 rules!3756 rBis!149 r!4008) lt!1469667)))

(declare-fun bs!594667 () Bool)

(assert (= bs!594667 d!1221448))

(declare-fun m!4719011 () Bool)

(assert (=> bs!594667 m!4719011))

(assert (=> bs!594667 m!4718769))

(assert (=> b!4119520 d!1221448))

(declare-fun d!1221450 () Bool)

(assert (=> d!1221450 (= (isEmpty!26482 lt!1469600) (not (is-Some!9576 lt!1469600)))))

(assert (=> b!4119520 d!1221450))

(declare-fun d!1221452 () Bool)

(declare-fun lt!1469668 () Bool)

(assert (=> d!1221452 (= lt!1469668 (set.member r!4008 (content!6865 (tail!6422 rules!3756))))))

(declare-fun e!2556263 () Bool)

(assert (=> d!1221452 (= lt!1469668 e!2556263)))

(declare-fun res!1682978 () Bool)

(assert (=> d!1221452 (=> (not res!1682978) (not e!2556263))))

(assert (=> d!1221452 (= res!1682978 (is-Cons!44532 (tail!6422 rules!3756)))))

(assert (=> d!1221452 (= (contains!8941 (tail!6422 rules!3756) r!4008) lt!1469668)))

(declare-fun b!4119713 () Bool)

(declare-fun e!2556262 () Bool)

(assert (=> b!4119713 (= e!2556263 e!2556262)))

(declare-fun res!1682979 () Bool)

(assert (=> b!4119713 (=> res!1682979 e!2556262)))

(assert (=> b!4119713 (= res!1682979 (= (h!49952 (tail!6422 rules!3756)) r!4008))))

(declare-fun b!4119714 () Bool)

(assert (=> b!4119714 (= e!2556262 (contains!8941 (t!340623 (tail!6422 rules!3756)) r!4008))))

(assert (= (and d!1221452 res!1682978) b!4119713))

(assert (= (and b!4119713 (not res!1682979)) b!4119714))

(assert (=> d!1221452 m!4718821))

(declare-fun m!4719013 () Bool)

(assert (=> d!1221452 m!4719013))

(declare-fun m!4719015 () Bool)

(assert (=> d!1221452 m!4719015))

(declare-fun m!4719017 () Bool)

(assert (=> b!4119714 m!4719017))

(assert (=> b!4119520 d!1221452))

(declare-fun d!1221454 () Bool)

(assert (=> d!1221454 (ruleValid!3077 thiss!25645 r!4008)))

(declare-fun lt!1469671 () Unit!63884)

(declare-fun choose!25174 (LexerInterface!6858 Rule!14338 List!44656) Unit!63884)

(assert (=> d!1221454 (= lt!1469671 (choose!25174 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1221454 (contains!8941 rules!3756 r!4008)))

(assert (=> d!1221454 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2121 thiss!25645 r!4008 rules!3756) lt!1469671)))

(declare-fun bs!594668 () Bool)

(assert (= bs!594668 d!1221454))

(assert (=> bs!594668 m!4718783))

(declare-fun m!4719019 () Bool)

(assert (=> bs!594668 m!4719019))

(assert (=> bs!594668 m!4718815))

(assert (=> b!4119531 d!1221454))

(declare-fun d!1221456 () Bool)

(declare-fun res!1682984 () Bool)

(declare-fun e!2556266 () Bool)

(assert (=> d!1221456 (=> (not res!1682984) (not e!2556266))))

(declare-fun validRegex!5469 (Regex!12174) Bool)

(assert (=> d!1221456 (= res!1682984 (validRegex!5469 (regex!7269 rBis!149)))))

(assert (=> d!1221456 (= (ruleValid!3077 thiss!25645 rBis!149) e!2556266)))

(declare-fun b!4119719 () Bool)

(declare-fun res!1682985 () Bool)

(assert (=> b!4119719 (=> (not res!1682985) (not e!2556266))))

(declare-fun nullable!4269 (Regex!12174) Bool)

(assert (=> b!4119719 (= res!1682985 (not (nullable!4269 (regex!7269 rBis!149))))))

(declare-fun b!4119720 () Bool)

(assert (=> b!4119720 (= e!2556266 (not (= (tag!8129 rBis!149) (String!51248 ""))))))

(assert (= (and d!1221456 res!1682984) b!4119719))

(assert (= (and b!4119719 res!1682985) b!4119720))

(declare-fun m!4719021 () Bool)

(assert (=> d!1221456 m!4719021))

(declare-fun m!4719023 () Bool)

(assert (=> b!4119719 m!4719023))

(assert (=> b!4119531 d!1221456))

(declare-fun d!1221458 () Bool)

(assert (=> d!1221458 (ruleValid!3077 thiss!25645 rBis!149)))

(declare-fun lt!1469672 () Unit!63884)

(assert (=> d!1221458 (= lt!1469672 (choose!25174 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1221458 (contains!8941 rules!3756 rBis!149)))

(assert (=> d!1221458 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2121 thiss!25645 rBis!149 rules!3756) lt!1469672)))

(declare-fun bs!594669 () Bool)

(assert (= bs!594669 d!1221458))

(assert (=> bs!594669 m!4718773))

(declare-fun m!4719025 () Bool)

(assert (=> bs!594669 m!4719025))

(assert (=> bs!594669 m!4718769))

(assert (=> b!4119531 d!1221458))

(declare-fun b!4119732 () Bool)

(declare-fun e!2556275 () Bool)

(assert (=> b!4119732 (= e!2556275 (>= (size!32952 input!3238) (size!32952 p!2912)))))

(declare-fun b!4119731 () Bool)

(declare-fun e!2556274 () Bool)

(declare-fun tail!6424 (List!44654) List!44654)

(assert (=> b!4119731 (= e!2556274 (isPrefix!4204 (tail!6424 p!2912) (tail!6424 input!3238)))))

(declare-fun b!4119730 () Bool)

(declare-fun res!1682995 () Bool)

(assert (=> b!4119730 (=> (not res!1682995) (not e!2556274))))

(declare-fun head!8677 (List!44654) C!24534)

(assert (=> b!4119730 (= res!1682995 (= (head!8677 p!2912) (head!8677 input!3238)))))

(declare-fun b!4119729 () Bool)

(declare-fun e!2556273 () Bool)

(assert (=> b!4119729 (= e!2556273 e!2556274)))

(declare-fun res!1682996 () Bool)

(assert (=> b!4119729 (=> (not res!1682996) (not e!2556274))))

(assert (=> b!4119729 (= res!1682996 (not (is-Nil!44530 input!3238)))))

(declare-fun d!1221460 () Bool)

(assert (=> d!1221460 e!2556275))

(declare-fun res!1682997 () Bool)

(assert (=> d!1221460 (=> res!1682997 e!2556275)))

(declare-fun lt!1469675 () Bool)

(assert (=> d!1221460 (= res!1682997 (not lt!1469675))))

(assert (=> d!1221460 (= lt!1469675 e!2556273)))

(declare-fun res!1682994 () Bool)

(assert (=> d!1221460 (=> res!1682994 e!2556273)))

(assert (=> d!1221460 (= res!1682994 (is-Nil!44530 p!2912))))

(assert (=> d!1221460 (= (isPrefix!4204 p!2912 input!3238) lt!1469675)))

(assert (= (and d!1221460 (not res!1682994)) b!4119729))

(assert (= (and b!4119729 res!1682996) b!4119730))

(assert (= (and b!4119730 res!1682995) b!4119731))

(assert (= (and d!1221460 (not res!1682997)) b!4119732))

(assert (=> b!4119732 m!4718781))

(assert (=> b!4119732 m!4718793))

(declare-fun m!4719027 () Bool)

(assert (=> b!4119731 m!4719027))

(declare-fun m!4719029 () Bool)

(assert (=> b!4119731 m!4719029))

(assert (=> b!4119731 m!4719027))

(assert (=> b!4119731 m!4719029))

(declare-fun m!4719031 () Bool)

(assert (=> b!4119731 m!4719031))

(declare-fun m!4719033 () Bool)

(assert (=> b!4119730 m!4719033))

(declare-fun m!4719035 () Bool)

(assert (=> b!4119730 m!4719035))

(assert (=> b!4119532 d!1221460))

(declare-fun d!1221462 () Bool)

(declare-fun lt!1469676 () Bool)

(assert (=> d!1221462 (= lt!1469676 (set.member rBis!149 (content!6865 rules!3756)))))

(declare-fun e!2556277 () Bool)

(assert (=> d!1221462 (= lt!1469676 e!2556277)))

(declare-fun res!1682998 () Bool)

(assert (=> d!1221462 (=> (not res!1682998) (not e!2556277))))

(assert (=> d!1221462 (= res!1682998 (is-Cons!44532 rules!3756))))

(assert (=> d!1221462 (= (contains!8941 rules!3756 rBis!149) lt!1469676)))

(declare-fun b!4119733 () Bool)

(declare-fun e!2556276 () Bool)

(assert (=> b!4119733 (= e!2556277 e!2556276)))

(declare-fun res!1682999 () Bool)

(assert (=> b!4119733 (=> res!1682999 e!2556276)))

(assert (=> b!4119733 (= res!1682999 (= (h!49952 rules!3756) rBis!149))))

(declare-fun b!4119734 () Bool)

(assert (=> b!4119734 (= e!2556276 (contains!8941 (t!340623 rules!3756) rBis!149))))

(assert (= (and d!1221462 res!1682998) b!4119733))

(assert (= (and b!4119733 (not res!1682999)) b!4119734))

(assert (=> d!1221462 m!4718913))

(declare-fun m!4719037 () Bool)

(assert (=> d!1221462 m!4719037))

(declare-fun m!4719039 () Bool)

(assert (=> b!4119734 m!4719039))

(assert (=> b!4119522 d!1221462))

(declare-fun d!1221464 () Bool)

(assert (=> d!1221464 (= (inv!59114 (tag!8129 rBis!149)) (= (mod (str.len (value!227721 (tag!8129 rBis!149))) 2) 0))))

(assert (=> b!4119523 d!1221464))

(declare-fun d!1221466 () Bool)

(declare-fun res!1683000 () Bool)

(declare-fun e!2556278 () Bool)

(assert (=> d!1221466 (=> (not res!1683000) (not e!2556278))))

(assert (=> d!1221466 (= res!1683000 (semiInverseModEq!3131 (toChars!9780 (transformation!7269 rBis!149)) (toValue!9921 (transformation!7269 rBis!149))))))

(assert (=> d!1221466 (= (inv!59117 (transformation!7269 rBis!149)) e!2556278)))

(declare-fun b!4119735 () Bool)

(assert (=> b!4119735 (= e!2556278 (equivClasses!3030 (toChars!9780 (transformation!7269 rBis!149)) (toValue!9921 (transformation!7269 rBis!149))))))

(assert (= (and d!1221466 res!1683000) b!4119735))

(declare-fun m!4719041 () Bool)

(assert (=> d!1221466 m!4719041))

(declare-fun m!4719043 () Bool)

(assert (=> b!4119735 m!4719043))

(assert (=> b!4119523 d!1221466))

(declare-fun d!1221468 () Bool)

(declare-fun lt!1469679 () Int)

(assert (=> d!1221468 (= lt!1469679 (size!32952 (list!16342 (charsOf!4891 (_1!24636 (get!14522 lt!1469600))))))))

(declare-fun size!32957 (Conc!13480) Int)

(assert (=> d!1221468 (= lt!1469679 (size!32957 (c!707455 (charsOf!4891 (_1!24636 (get!14522 lt!1469600))))))))

(assert (=> d!1221468 (= (size!32953 (charsOf!4891 (_1!24636 (get!14522 lt!1469600)))) lt!1469679)))

(declare-fun bs!594670 () Bool)

(assert (= bs!594670 d!1221468))

(assert (=> bs!594670 m!4718807))

(declare-fun m!4719045 () Bool)

(assert (=> bs!594670 m!4719045))

(assert (=> bs!594670 m!4719045))

(declare-fun m!4719047 () Bool)

(assert (=> bs!594670 m!4719047))

(declare-fun m!4719049 () Bool)

(assert (=> bs!594670 m!4719049))

(assert (=> b!4119535 d!1221468))

(declare-fun d!1221470 () Bool)

(declare-fun lt!1469682 () BalanceConc!26554)

(assert (=> d!1221470 (= (list!16342 lt!1469682) (originalCharacters!7765 (_1!24636 (get!14522 lt!1469600))))))

(declare-fun dynLambda!19018 (Int TokenValue!7499) BalanceConc!26554)

(assert (=> d!1221470 (= lt!1469682 (dynLambda!19018 (toChars!9780 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469600))))) (value!227722 (_1!24636 (get!14522 lt!1469600)))))))

(assert (=> d!1221470 (= (charsOf!4891 (_1!24636 (get!14522 lt!1469600))) lt!1469682)))

(declare-fun b_lambda!120867 () Bool)

(assert (=> (not b_lambda!120867) (not d!1221470)))

(declare-fun tb!247203 () Bool)

(declare-fun t!340640 () Bool)

(assert (=> (and b!4119530 (= (toChars!9780 (transformation!7269 r!4008)) (toChars!9780 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469600)))))) t!340640) tb!247203))

(declare-fun b!4119740 () Bool)

(declare-fun e!2556281 () Bool)

(declare-fun tp!1255354 () Bool)

(declare-fun inv!59119 (Conc!13480) Bool)

(assert (=> b!4119740 (= e!2556281 (and (inv!59119 (c!707455 (dynLambda!19018 (toChars!9780 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469600))))) (value!227722 (_1!24636 (get!14522 lt!1469600)))))) tp!1255354))))

(declare-fun result!300312 () Bool)

(declare-fun inv!59120 (BalanceConc!26554) Bool)

(assert (=> tb!247203 (= result!300312 (and (inv!59120 (dynLambda!19018 (toChars!9780 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469600))))) (value!227722 (_1!24636 (get!14522 lt!1469600))))) e!2556281))))

(assert (= tb!247203 b!4119740))

(declare-fun m!4719051 () Bool)

(assert (=> b!4119740 m!4719051))

(declare-fun m!4719053 () Bool)

(assert (=> tb!247203 m!4719053))

(assert (=> d!1221470 t!340640))

(declare-fun b_and!318581 () Bool)

(assert (= b_and!318547 (and (=> t!340640 result!300312) b_and!318581)))

(declare-fun t!340642 () Bool)

(declare-fun tb!247205 () Bool)

(assert (=> (and b!4119521 (= (toChars!9780 (transformation!7269 (h!49952 rules!3756))) (toChars!9780 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469600)))))) t!340642) tb!247205))

(declare-fun result!300316 () Bool)

(assert (= result!300316 result!300312))

(assert (=> d!1221470 t!340642))

(declare-fun b_and!318583 () Bool)

(assert (= b_and!318551 (and (=> t!340642 result!300316) b_and!318583)))

(declare-fun t!340644 () Bool)

(declare-fun tb!247207 () Bool)

(assert (=> (and b!4119524 (= (toChars!9780 (transformation!7269 rBis!149)) (toChars!9780 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469600)))))) t!340644) tb!247207))

(declare-fun result!300318 () Bool)

(assert (= result!300318 result!300312))

(assert (=> d!1221470 t!340644))

(declare-fun b_and!318585 () Bool)

(assert (= b_and!318555 (and (=> t!340644 result!300318) b_and!318585)))

(declare-fun m!4719055 () Bool)

(assert (=> d!1221470 m!4719055))

(declare-fun m!4719057 () Bool)

(assert (=> d!1221470 m!4719057))

(assert (=> b!4119535 d!1221470))

(declare-fun d!1221472 () Bool)

(assert (=> d!1221472 (= (get!14522 lt!1469600) (v!40158 lt!1469600))))

(assert (=> b!4119535 d!1221472))

(declare-fun d!1221474 () Bool)

(assert (=> d!1221474 (= (inv!59114 (tag!8129 r!4008)) (= (mod (str.len (value!227721 (tag!8129 r!4008))) 2) 0))))

(assert (=> b!4119525 d!1221474))

(declare-fun d!1221476 () Bool)

(declare-fun res!1683001 () Bool)

(declare-fun e!2556282 () Bool)

(assert (=> d!1221476 (=> (not res!1683001) (not e!2556282))))

(assert (=> d!1221476 (= res!1683001 (semiInverseModEq!3131 (toChars!9780 (transformation!7269 r!4008)) (toValue!9921 (transformation!7269 r!4008))))))

(assert (=> d!1221476 (= (inv!59117 (transformation!7269 r!4008)) e!2556282)))

(declare-fun b!4119741 () Bool)

(assert (=> b!4119741 (= e!2556282 (equivClasses!3030 (toChars!9780 (transformation!7269 r!4008)) (toValue!9921 (transformation!7269 r!4008))))))

(assert (= (and d!1221476 res!1683001) b!4119741))

(declare-fun m!4719059 () Bool)

(assert (=> d!1221476 m!4719059))

(declare-fun m!4719061 () Bool)

(assert (=> b!4119741 m!4719061))

(assert (=> b!4119525 d!1221476))

(declare-fun d!1221478 () Bool)

(assert (=> d!1221478 (= (isEmpty!26481 p!2912) (is-Nil!44530 p!2912))))

(assert (=> b!4119515 d!1221478))

(declare-fun b!4119771 () Bool)

(declare-fun e!2556297 () Bool)

(declare-fun e!2556300 () Bool)

(assert (=> b!4119771 (= e!2556297 e!2556300)))

(declare-fun res!1683024 () Bool)

(assert (=> b!4119771 (=> res!1683024 e!2556300)))

(declare-fun call!289936 () Bool)

(assert (=> b!4119771 (= res!1683024 call!289936)))

(declare-fun b!4119772 () Bool)

(assert (=> b!4119772 (= e!2556300 (not (= (head!8677 p!2912) (c!707456 (regex!7269 r!4008)))))))

(declare-fun b!4119773 () Bool)

(declare-fun res!1683020 () Bool)

(declare-fun e!2556302 () Bool)

(assert (=> b!4119773 (=> (not res!1683020) (not e!2556302))))

(assert (=> b!4119773 (= res!1683020 (not call!289936))))

(declare-fun b!4119774 () Bool)

(declare-fun e!2556301 () Bool)

(declare-fun e!2556298 () Bool)

(assert (=> b!4119774 (= e!2556301 e!2556298)))

(declare-fun c!707485 () Bool)

(assert (=> b!4119774 (= c!707485 (is-EmptyLang!12174 (regex!7269 r!4008)))))

(declare-fun b!4119775 () Bool)

(declare-fun lt!1469685 () Bool)

(assert (=> b!4119775 (= e!2556301 (= lt!1469685 call!289936))))

(declare-fun b!4119776 () Bool)

(assert (=> b!4119776 (= e!2556298 (not lt!1469685))))

(declare-fun b!4119777 () Bool)

(declare-fun e!2556303 () Bool)

(declare-fun derivativeStep!3664 (Regex!12174 C!24534) Regex!12174)

(assert (=> b!4119777 (= e!2556303 (matchR!6005 (derivativeStep!3664 (regex!7269 r!4008) (head!8677 p!2912)) (tail!6424 p!2912)))))

(declare-fun b!4119778 () Bool)

(declare-fun e!2556299 () Bool)

(assert (=> b!4119778 (= e!2556299 e!2556297)))

(declare-fun res!1683022 () Bool)

(assert (=> b!4119778 (=> (not res!1683022) (not e!2556297))))

(assert (=> b!4119778 (= res!1683022 (not lt!1469685))))

(declare-fun b!4119779 () Bool)

(assert (=> b!4119779 (= e!2556302 (= (head!8677 p!2912) (c!707456 (regex!7269 r!4008))))))

(declare-fun bm!289931 () Bool)

(assert (=> bm!289931 (= call!289936 (isEmpty!26481 p!2912))))

(declare-fun b!4119780 () Bool)

(declare-fun res!1683021 () Bool)

(assert (=> b!4119780 (=> res!1683021 e!2556299)))

(assert (=> b!4119780 (= res!1683021 e!2556302)))

(declare-fun res!1683025 () Bool)

(assert (=> b!4119780 (=> (not res!1683025) (not e!2556302))))

(assert (=> b!4119780 (= res!1683025 lt!1469685)))

(declare-fun b!4119781 () Bool)

(declare-fun res!1683023 () Bool)

(assert (=> b!4119781 (=> res!1683023 e!2556300)))

(assert (=> b!4119781 (= res!1683023 (not (isEmpty!26481 (tail!6424 p!2912))))))

(declare-fun b!4119770 () Bool)

(assert (=> b!4119770 (= e!2556303 (nullable!4269 (regex!7269 r!4008)))))

(declare-fun d!1221480 () Bool)

(assert (=> d!1221480 e!2556301))

(declare-fun c!707484 () Bool)

(assert (=> d!1221480 (= c!707484 (is-EmptyExpr!12174 (regex!7269 r!4008)))))

(assert (=> d!1221480 (= lt!1469685 e!2556303)))

(declare-fun c!707486 () Bool)

(assert (=> d!1221480 (= c!707486 (isEmpty!26481 p!2912))))

(assert (=> d!1221480 (validRegex!5469 (regex!7269 r!4008))))

(assert (=> d!1221480 (= (matchR!6005 (regex!7269 r!4008) p!2912) lt!1469685)))

(declare-fun b!4119782 () Bool)

(declare-fun res!1683018 () Bool)

(assert (=> b!4119782 (=> res!1683018 e!2556299)))

(assert (=> b!4119782 (= res!1683018 (not (is-ElementMatch!12174 (regex!7269 r!4008))))))

(assert (=> b!4119782 (= e!2556298 e!2556299)))

(declare-fun b!4119783 () Bool)

(declare-fun res!1683019 () Bool)

(assert (=> b!4119783 (=> (not res!1683019) (not e!2556302))))

(assert (=> b!4119783 (= res!1683019 (isEmpty!26481 (tail!6424 p!2912)))))

(assert (= (and d!1221480 c!707486) b!4119770))

(assert (= (and d!1221480 (not c!707486)) b!4119777))

(assert (= (and d!1221480 c!707484) b!4119775))

(assert (= (and d!1221480 (not c!707484)) b!4119774))

(assert (= (and b!4119774 c!707485) b!4119776))

(assert (= (and b!4119774 (not c!707485)) b!4119782))

(assert (= (and b!4119782 (not res!1683018)) b!4119780))

(assert (= (and b!4119780 res!1683025) b!4119773))

(assert (= (and b!4119773 res!1683020) b!4119783))

(assert (= (and b!4119783 res!1683019) b!4119779))

(assert (= (and b!4119780 (not res!1683021)) b!4119778))

(assert (= (and b!4119778 res!1683022) b!4119771))

(assert (= (and b!4119771 (not res!1683024)) b!4119781))

(assert (= (and b!4119781 (not res!1683023)) b!4119772))

(assert (= (or b!4119775 b!4119771 b!4119773) bm!289931))

(assert (=> d!1221480 m!4718811))

(declare-fun m!4719063 () Bool)

(assert (=> d!1221480 m!4719063))

(assert (=> b!4119781 m!4719027))

(assert (=> b!4119781 m!4719027))

(declare-fun m!4719065 () Bool)

(assert (=> b!4119781 m!4719065))

(assert (=> b!4119777 m!4719033))

(assert (=> b!4119777 m!4719033))

(declare-fun m!4719067 () Bool)

(assert (=> b!4119777 m!4719067))

(assert (=> b!4119777 m!4719027))

(assert (=> b!4119777 m!4719067))

(assert (=> b!4119777 m!4719027))

(declare-fun m!4719069 () Bool)

(assert (=> b!4119777 m!4719069))

(assert (=> b!4119772 m!4719033))

(declare-fun m!4719071 () Bool)

(assert (=> b!4119770 m!4719071))

(assert (=> bm!289931 m!4718811))

(assert (=> b!4119779 m!4719033))

(assert (=> b!4119783 m!4719027))

(assert (=> b!4119783 m!4719027))

(assert (=> b!4119783 m!4719065))

(assert (=> b!4119526 d!1221480))

(declare-fun b!4119794 () Bool)

(declare-fun e!2556310 () Int)

(assert (=> b!4119794 (= e!2556310 (+ 1 (getIndex!617 (t!340623 rules!3756) rBis!149)))))

(declare-fun b!4119792 () Bool)

(declare-fun e!2556309 () Int)

(assert (=> b!4119792 (= e!2556309 0)))

(declare-fun b!4119795 () Bool)

(assert (=> b!4119795 (= e!2556310 (- 1))))

(declare-fun d!1221482 () Bool)

(declare-fun lt!1469688 () Int)

(assert (=> d!1221482 (>= lt!1469688 0)))

(assert (=> d!1221482 (= lt!1469688 e!2556309)))

(declare-fun c!707491 () Bool)

(assert (=> d!1221482 (= c!707491 (and (is-Cons!44532 rules!3756) (= (h!49952 rules!3756) rBis!149)))))

(assert (=> d!1221482 (contains!8941 rules!3756 rBis!149)))

(assert (=> d!1221482 (= (getIndex!617 rules!3756 rBis!149) lt!1469688)))

(declare-fun b!4119793 () Bool)

(assert (=> b!4119793 (= e!2556309 e!2556310)))

(declare-fun c!707492 () Bool)

(assert (=> b!4119793 (= c!707492 (and (is-Cons!44532 rules!3756) (not (= (h!49952 rules!3756) rBis!149))))))

(assert (= (and d!1221482 c!707491) b!4119792))

(assert (= (and d!1221482 (not c!707491)) b!4119793))

(assert (= (and b!4119793 c!707492) b!4119794))

(assert (= (and b!4119793 (not c!707492)) b!4119795))

(declare-fun m!4719073 () Bool)

(assert (=> b!4119794 m!4719073))

(assert (=> d!1221482 m!4718769))

(assert (=> b!4119537 d!1221482))

(declare-fun b!4119798 () Bool)

(declare-fun e!2556312 () Int)

(assert (=> b!4119798 (= e!2556312 (+ 1 (getIndex!617 (t!340623 rules!3756) r!4008)))))

(declare-fun b!4119796 () Bool)

(declare-fun e!2556311 () Int)

(assert (=> b!4119796 (= e!2556311 0)))

(declare-fun b!4119799 () Bool)

(assert (=> b!4119799 (= e!2556312 (- 1))))

(declare-fun d!1221484 () Bool)

(declare-fun lt!1469689 () Int)

(assert (=> d!1221484 (>= lt!1469689 0)))

(assert (=> d!1221484 (= lt!1469689 e!2556311)))

(declare-fun c!707493 () Bool)

(assert (=> d!1221484 (= c!707493 (and (is-Cons!44532 rules!3756) (= (h!49952 rules!3756) r!4008)))))

(assert (=> d!1221484 (contains!8941 rules!3756 r!4008)))

(assert (=> d!1221484 (= (getIndex!617 rules!3756 r!4008) lt!1469689)))

(declare-fun b!4119797 () Bool)

(assert (=> b!4119797 (= e!2556311 e!2556312)))

(declare-fun c!707494 () Bool)

(assert (=> b!4119797 (= c!707494 (and (is-Cons!44532 rules!3756) (not (= (h!49952 rules!3756) r!4008))))))

(assert (= (and d!1221484 c!707493) b!4119796))

(assert (= (and d!1221484 (not c!707493)) b!4119797))

(assert (= (and b!4119797 c!707494) b!4119798))

(assert (= (and b!4119797 (not c!707494)) b!4119799))

(declare-fun m!4719075 () Bool)

(assert (=> b!4119798 m!4719075))

(assert (=> d!1221484 m!4718815))

(assert (=> b!4119537 d!1221484))

(declare-fun d!1221486 () Bool)

(declare-fun res!1683026 () Bool)

(declare-fun e!2556313 () Bool)

(assert (=> d!1221486 (=> (not res!1683026) (not e!2556313))))

(assert (=> d!1221486 (= res!1683026 (validRegex!5469 (regex!7269 r!4008)))))

(assert (=> d!1221486 (= (ruleValid!3077 thiss!25645 r!4008) e!2556313)))

(declare-fun b!4119800 () Bool)

(declare-fun res!1683027 () Bool)

(assert (=> b!4119800 (=> (not res!1683027) (not e!2556313))))

(assert (=> b!4119800 (= res!1683027 (not (nullable!4269 (regex!7269 r!4008))))))

(declare-fun b!4119801 () Bool)

(assert (=> b!4119801 (= e!2556313 (not (= (tag!8129 r!4008) (String!51248 ""))))))

(assert (= (and d!1221486 res!1683026) b!4119800))

(assert (= (and b!4119800 res!1683027) b!4119801))

(assert (=> d!1221486 m!4719063))

(assert (=> b!4119800 m!4719071))

(assert (=> b!4119516 d!1221486))

(declare-fun d!1221488 () Bool)

(declare-fun dynLambda!19019 (Int BalanceConc!26554) TokenValue!7499)

(assert (=> d!1221488 (= (apply!10342 (transformation!7269 r!4008) lt!1469593) (dynLambda!19019 (toValue!9921 (transformation!7269 r!4008)) lt!1469593))))

(declare-fun b_lambda!120869 () Bool)

(assert (=> (not b_lambda!120869) (not d!1221488)))

(declare-fun t!340646 () Bool)

(declare-fun tb!247209 () Bool)

(assert (=> (and b!4119530 (= (toValue!9921 (transformation!7269 r!4008)) (toValue!9921 (transformation!7269 r!4008))) t!340646) tb!247209))

(declare-fun result!300320 () Bool)

(declare-fun inv!21 (TokenValue!7499) Bool)

(assert (=> tb!247209 (= result!300320 (inv!21 (dynLambda!19019 (toValue!9921 (transformation!7269 r!4008)) lt!1469593)))))

(declare-fun m!4719077 () Bool)

(assert (=> tb!247209 m!4719077))

(assert (=> d!1221488 t!340646))

(declare-fun b_and!318587 () Bool)

(assert (= b_and!318545 (and (=> t!340646 result!300320) b_and!318587)))

(declare-fun t!340648 () Bool)

(declare-fun tb!247211 () Bool)

(assert (=> (and b!4119521 (= (toValue!9921 (transformation!7269 (h!49952 rules!3756))) (toValue!9921 (transformation!7269 r!4008))) t!340648) tb!247211))

(declare-fun result!300324 () Bool)

(assert (= result!300324 result!300320))

(assert (=> d!1221488 t!340648))

(declare-fun b_and!318589 () Bool)

(assert (= b_and!318549 (and (=> t!340648 result!300324) b_and!318589)))

(declare-fun tb!247213 () Bool)

(declare-fun t!340650 () Bool)

(assert (=> (and b!4119524 (= (toValue!9921 (transformation!7269 rBis!149)) (toValue!9921 (transformation!7269 r!4008))) t!340650) tb!247213))

(declare-fun result!300326 () Bool)

(assert (= result!300326 result!300320))

(assert (=> d!1221488 t!340650))

(declare-fun b_and!318591 () Bool)

(assert (= b_and!318553 (and (=> t!340650 result!300326) b_and!318591)))

(declare-fun m!4719079 () Bool)

(assert (=> d!1221488 m!4719079))

(assert (=> b!4119527 d!1221488))

(declare-fun d!1221490 () Bool)

(declare-fun lt!1469692 () List!44654)

(assert (=> d!1221490 (= (++!11547 p!2912 lt!1469692) input!3238)))

(declare-fun e!2556319 () List!44654)

(assert (=> d!1221490 (= lt!1469692 e!2556319)))

(declare-fun c!707497 () Bool)

(assert (=> d!1221490 (= c!707497 (is-Cons!44530 p!2912))))

(assert (=> d!1221490 (>= (size!32952 input!3238) (size!32952 p!2912))))

(assert (=> d!1221490 (= (getSuffix!2533 input!3238 p!2912) lt!1469692)))

(declare-fun b!4119808 () Bool)

(assert (=> b!4119808 (= e!2556319 (getSuffix!2533 (tail!6424 input!3238) (t!340621 p!2912)))))

(declare-fun b!4119809 () Bool)

(assert (=> b!4119809 (= e!2556319 input!3238)))

(assert (= (and d!1221490 c!707497) b!4119808))

(assert (= (and d!1221490 (not c!707497)) b!4119809))

(declare-fun m!4719081 () Bool)

(assert (=> d!1221490 m!4719081))

(assert (=> d!1221490 m!4718781))

(assert (=> d!1221490 m!4718793))

(assert (=> b!4119808 m!4719029))

(assert (=> b!4119808 m!4719029))

(declare-fun m!4719083 () Bool)

(assert (=> b!4119808 m!4719083))

(assert (=> b!4119527 d!1221490))

(declare-fun b!4119859 () Bool)

(declare-fun res!1683064 () Bool)

(declare-fun e!2556339 () Bool)

(assert (=> b!4119859 (=> (not res!1683064) (not e!2556339))))

(declare-fun lt!1469724 () Option!9577)

(assert (=> b!4119859 (= res!1683064 (< (size!32952 (_2!24636 (get!14522 lt!1469724))) (size!32952 input!3238)))))

(declare-fun b!4119860 () Bool)

(assert (=> b!4119860 (= e!2556339 (contains!8941 rules!3756 (rule!10339 (_1!24636 (get!14522 lt!1469724)))))))

(declare-fun b!4119861 () Bool)

(declare-fun res!1683067 () Bool)

(assert (=> b!4119861 (=> (not res!1683067) (not e!2556339))))

(assert (=> b!4119861 (= res!1683067 (matchR!6005 (regex!7269 (rule!10339 (_1!24636 (get!14522 lt!1469724)))) (list!16342 (charsOf!4891 (_1!24636 (get!14522 lt!1469724))))))))

(declare-fun d!1221492 () Bool)

(declare-fun e!2556338 () Bool)

(assert (=> d!1221492 e!2556338))

(declare-fun res!1683065 () Bool)

(assert (=> d!1221492 (=> res!1683065 e!2556338)))

(assert (=> d!1221492 (= res!1683065 (isEmpty!26482 lt!1469724))))

(declare-fun e!2556337 () Option!9577)

(assert (=> d!1221492 (= lt!1469724 e!2556337)))

(declare-fun c!707505 () Bool)

(assert (=> d!1221492 (= c!707505 (and (is-Cons!44532 rules!3756) (is-Nil!44532 (t!340623 rules!3756))))))

(declare-fun lt!1469722 () Unit!63884)

(declare-fun lt!1469723 () Unit!63884)

(assert (=> d!1221492 (= lt!1469722 lt!1469723)))

(assert (=> d!1221492 (isPrefix!4204 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2727 (List!44654 List!44654) Unit!63884)

(assert (=> d!1221492 (= lt!1469723 (lemmaIsPrefixRefl!2727 input!3238 input!3238))))

(declare-fun rulesValidInductive!2682 (LexerInterface!6858 List!44656) Bool)

(assert (=> d!1221492 (rulesValidInductive!2682 thiss!25645 rules!3756)))

(assert (=> d!1221492 (= (maxPrefix!4050 thiss!25645 rules!3756 input!3238) lt!1469724)))

(declare-fun b!4119862 () Bool)

(declare-fun res!1683069 () Bool)

(assert (=> b!4119862 (=> (not res!1683069) (not e!2556339))))

(assert (=> b!4119862 (= res!1683069 (= (++!11547 (list!16342 (charsOf!4891 (_1!24636 (get!14522 lt!1469724)))) (_2!24636 (get!14522 lt!1469724))) input!3238))))

(declare-fun b!4119863 () Bool)

(assert (=> b!4119863 (= e!2556338 e!2556339)))

(declare-fun res!1683068 () Bool)

(assert (=> b!4119863 (=> (not res!1683068) (not e!2556339))))

(declare-fun isDefined!7225 (Option!9577) Bool)

(assert (=> b!4119863 (= res!1683068 (isDefined!7225 lt!1469724))))

(declare-fun bm!289937 () Bool)

(declare-fun call!289942 () Option!9577)

(assert (=> bm!289937 (= call!289942 (maxPrefixOneRule!3000 thiss!25645 (h!49952 rules!3756) input!3238))))

(declare-fun b!4119864 () Bool)

(assert (=> b!4119864 (= e!2556337 call!289942)))

(declare-fun b!4119865 () Bool)

(declare-fun res!1683066 () Bool)

(assert (=> b!4119865 (=> (not res!1683066) (not e!2556339))))

(assert (=> b!4119865 (= res!1683066 (= (list!16342 (charsOf!4891 (_1!24636 (get!14522 lt!1469724)))) (originalCharacters!7765 (_1!24636 (get!14522 lt!1469724)))))))

(declare-fun b!4119866 () Bool)

(declare-fun lt!1469720 () Option!9577)

(declare-fun lt!1469721 () Option!9577)

(assert (=> b!4119866 (= e!2556337 (ite (and (is-None!9576 lt!1469720) (is-None!9576 lt!1469721)) None!9576 (ite (is-None!9576 lt!1469721) lt!1469720 (ite (is-None!9576 lt!1469720) lt!1469721 (ite (>= (size!32951 (_1!24636 (v!40158 lt!1469720))) (size!32951 (_1!24636 (v!40158 lt!1469721)))) lt!1469720 lt!1469721)))))))

(assert (=> b!4119866 (= lt!1469720 call!289942)))

(assert (=> b!4119866 (= lt!1469721 (maxPrefix!4050 thiss!25645 (t!340623 rules!3756) input!3238))))

(declare-fun b!4119867 () Bool)

(declare-fun res!1683063 () Bool)

(assert (=> b!4119867 (=> (not res!1683063) (not e!2556339))))

(assert (=> b!4119867 (= res!1683063 (= (value!227722 (_1!24636 (get!14522 lt!1469724))) (apply!10342 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469724)))) (seqFromList!5386 (originalCharacters!7765 (_1!24636 (get!14522 lt!1469724)))))))))

(assert (= (and d!1221492 c!707505) b!4119864))

(assert (= (and d!1221492 (not c!707505)) b!4119866))

(assert (= (or b!4119864 b!4119866) bm!289937))

(assert (= (and d!1221492 (not res!1683065)) b!4119863))

(assert (= (and b!4119863 res!1683068) b!4119865))

(assert (= (and b!4119865 res!1683066) b!4119859))

(assert (= (and b!4119859 res!1683064) b!4119862))

(assert (= (and b!4119862 res!1683069) b!4119867))

(assert (= (and b!4119867 res!1683063) b!4119861))

(assert (= (and b!4119861 res!1683067) b!4119860))

(declare-fun m!4719121 () Bool)

(assert (=> b!4119867 m!4719121))

(declare-fun m!4719123 () Bool)

(assert (=> b!4119867 m!4719123))

(assert (=> b!4119867 m!4719123))

(declare-fun m!4719125 () Bool)

(assert (=> b!4119867 m!4719125))

(assert (=> b!4119859 m!4719121))

(declare-fun m!4719127 () Bool)

(assert (=> b!4119859 m!4719127))

(assert (=> b!4119859 m!4718781))

(assert (=> b!4119861 m!4719121))

(declare-fun m!4719129 () Bool)

(assert (=> b!4119861 m!4719129))

(assert (=> b!4119861 m!4719129))

(declare-fun m!4719131 () Bool)

(assert (=> b!4119861 m!4719131))

(assert (=> b!4119861 m!4719131))

(declare-fun m!4719133 () Bool)

(assert (=> b!4119861 m!4719133))

(assert (=> b!4119865 m!4719121))

(assert (=> b!4119865 m!4719129))

(assert (=> b!4119865 m!4719129))

(assert (=> b!4119865 m!4719131))

(declare-fun m!4719135 () Bool)

(assert (=> d!1221492 m!4719135))

(declare-fun m!4719137 () Bool)

(assert (=> d!1221492 m!4719137))

(declare-fun m!4719139 () Bool)

(assert (=> d!1221492 m!4719139))

(declare-fun m!4719141 () Bool)

(assert (=> d!1221492 m!4719141))

(declare-fun m!4719143 () Bool)

(assert (=> bm!289937 m!4719143))

(assert (=> b!4119862 m!4719121))

(assert (=> b!4119862 m!4719129))

(assert (=> b!4119862 m!4719129))

(assert (=> b!4119862 m!4719131))

(assert (=> b!4119862 m!4719131))

(declare-fun m!4719145 () Bool)

(assert (=> b!4119862 m!4719145))

(declare-fun m!4719147 () Bool)

(assert (=> b!4119866 m!4719147))

(declare-fun m!4719149 () Bool)

(assert (=> b!4119863 m!4719149))

(assert (=> b!4119860 m!4719121))

(declare-fun m!4719151 () Bool)

(assert (=> b!4119860 m!4719151))

(assert (=> b!4119527 d!1221492))

(declare-fun b!4119874 () Bool)

(declare-fun e!2556343 () Bool)

(assert (=> b!4119874 (= e!2556343 true)))

(declare-fun d!1221500 () Bool)

(assert (=> d!1221500 e!2556343))

(assert (= d!1221500 b!4119874))

(declare-fun order!23411 () Int)

(declare-fun lambda!128664 () Int)

(declare-fun order!23413 () Int)

(declare-fun dynLambda!19021 (Int Int) Int)

(declare-fun dynLambda!19022 (Int Int) Int)

(assert (=> b!4119874 (< (dynLambda!19021 order!23411 (toValue!9921 (transformation!7269 r!4008))) (dynLambda!19022 order!23413 lambda!128664))))

(declare-fun order!23415 () Int)

(declare-fun dynLambda!19023 (Int Int) Int)

(assert (=> b!4119874 (< (dynLambda!19023 order!23415 (toChars!9780 (transformation!7269 r!4008))) (dynLambda!19022 order!23413 lambda!128664))))

(assert (=> d!1221500 (= (list!16342 (dynLambda!19018 (toChars!9780 (transformation!7269 r!4008)) (dynLambda!19019 (toValue!9921 (transformation!7269 r!4008)) lt!1469593))) (list!16342 lt!1469593))))

(declare-fun lt!1469730 () Unit!63884)

(declare-fun ForallOf!914 (Int BalanceConc!26554) Unit!63884)

(assert (=> d!1221500 (= lt!1469730 (ForallOf!914 lambda!128664 lt!1469593))))

(assert (=> d!1221500 (= (lemmaSemiInverse!2127 (transformation!7269 r!4008) lt!1469593) lt!1469730)))

(declare-fun b_lambda!120871 () Bool)

(assert (=> (not b_lambda!120871) (not d!1221500)))

(declare-fun t!340652 () Bool)

(declare-fun tb!247215 () Bool)

(assert (=> (and b!4119530 (= (toChars!9780 (transformation!7269 r!4008)) (toChars!9780 (transformation!7269 r!4008))) t!340652) tb!247215))

(declare-fun e!2556344 () Bool)

(declare-fun tp!1255355 () Bool)

(declare-fun b!4119875 () Bool)

(assert (=> b!4119875 (= e!2556344 (and (inv!59119 (c!707455 (dynLambda!19018 (toChars!9780 (transformation!7269 r!4008)) (dynLambda!19019 (toValue!9921 (transformation!7269 r!4008)) lt!1469593)))) tp!1255355))))

(declare-fun result!300328 () Bool)

(assert (=> tb!247215 (= result!300328 (and (inv!59120 (dynLambda!19018 (toChars!9780 (transformation!7269 r!4008)) (dynLambda!19019 (toValue!9921 (transformation!7269 r!4008)) lt!1469593))) e!2556344))))

(assert (= tb!247215 b!4119875))

(declare-fun m!4719153 () Bool)

(assert (=> b!4119875 m!4719153))

(declare-fun m!4719155 () Bool)

(assert (=> tb!247215 m!4719155))

(assert (=> d!1221500 t!340652))

(declare-fun b_and!318593 () Bool)

(assert (= b_and!318581 (and (=> t!340652 result!300328) b_and!318593)))

(declare-fun tb!247217 () Bool)

(declare-fun t!340654 () Bool)

(assert (=> (and b!4119521 (= (toChars!9780 (transformation!7269 (h!49952 rules!3756))) (toChars!9780 (transformation!7269 r!4008))) t!340654) tb!247217))

(declare-fun result!300330 () Bool)

(assert (= result!300330 result!300328))

(assert (=> d!1221500 t!340654))

(declare-fun b_and!318595 () Bool)

(assert (= b_and!318583 (and (=> t!340654 result!300330) b_and!318595)))

(declare-fun tb!247219 () Bool)

(declare-fun t!340656 () Bool)

(assert (=> (and b!4119524 (= (toChars!9780 (transformation!7269 rBis!149)) (toChars!9780 (transformation!7269 r!4008))) t!340656) tb!247219))

(declare-fun result!300332 () Bool)

(assert (= result!300332 result!300328))

(assert (=> d!1221500 t!340656))

(declare-fun b_and!318597 () Bool)

(assert (= b_and!318585 (and (=> t!340656 result!300332) b_and!318597)))

(declare-fun b_lambda!120873 () Bool)

(assert (=> (not b_lambda!120873) (not d!1221500)))

(assert (=> d!1221500 t!340646))

(declare-fun b_and!318599 () Bool)

(assert (= b_and!318587 (and (=> t!340646 result!300320) b_and!318599)))

(assert (=> d!1221500 t!340648))

(declare-fun b_and!318601 () Bool)

(assert (= b_and!318589 (and (=> t!340648 result!300324) b_and!318601)))

(assert (=> d!1221500 t!340650))

(declare-fun b_and!318603 () Bool)

(assert (= b_and!318591 (and (=> t!340650 result!300326) b_and!318603)))

(declare-fun m!4719157 () Bool)

(assert (=> d!1221500 m!4719157))

(declare-fun m!4719159 () Bool)

(assert (=> d!1221500 m!4719159))

(assert (=> d!1221500 m!4719079))

(assert (=> d!1221500 m!4719157))

(declare-fun m!4719161 () Bool)

(assert (=> d!1221500 m!4719161))

(declare-fun m!4719163 () Bool)

(assert (=> d!1221500 m!4719163))

(assert (=> d!1221500 m!4719079))

(assert (=> b!4119527 d!1221500))

(declare-fun d!1221502 () Bool)

(declare-fun fromListB!2464 (List!44654) BalanceConc!26554)

(assert (=> d!1221502 (= (seqFromList!5386 p!2912) (fromListB!2464 p!2912))))

(declare-fun bs!594672 () Bool)

(assert (= bs!594672 d!1221502))

(declare-fun m!4719165 () Bool)

(assert (=> bs!594672 m!4719165))

(assert (=> b!4119527 d!1221502))

(declare-fun d!1221504 () Bool)

(declare-fun lt!1469731 () Int)

(assert (=> d!1221504 (>= lt!1469731 0)))

(declare-fun e!2556345 () Int)

(assert (=> d!1221504 (= lt!1469731 e!2556345)))

(declare-fun c!707509 () Bool)

(assert (=> d!1221504 (= c!707509 (is-Nil!44530 p!2912))))

(assert (=> d!1221504 (= (size!32952 p!2912) lt!1469731)))

(declare-fun b!4119876 () Bool)

(assert (=> b!4119876 (= e!2556345 0)))

(declare-fun b!4119877 () Bool)

(assert (=> b!4119877 (= e!2556345 (+ 1 (size!32952 (t!340621 p!2912))))))

(assert (= (and d!1221504 c!707509) b!4119876))

(assert (= (and d!1221504 (not c!707509)) b!4119877))

(declare-fun m!4719167 () Bool)

(assert (=> b!4119877 m!4719167))

(assert (=> b!4119527 d!1221504))

(declare-fun b!4119882 () Bool)

(declare-fun e!2556348 () Bool)

(declare-fun tp!1255358 () Bool)

(assert (=> b!4119882 (= e!2556348 (and tp_is_empty!21271 tp!1255358))))

(assert (=> b!4119533 (= tp!1255309 e!2556348)))

(assert (= (and b!4119533 (is-Cons!44530 (t!340621 input!3238))) b!4119882))

(declare-fun b!4119895 () Bool)

(declare-fun e!2556351 () Bool)

(declare-fun tp!1255372 () Bool)

(assert (=> b!4119895 (= e!2556351 tp!1255372)))

(declare-fun b!4119893 () Bool)

(assert (=> b!4119893 (= e!2556351 tp_is_empty!21271)))

(assert (=> b!4119523 (= tp!1255304 e!2556351)))

(declare-fun b!4119894 () Bool)

(declare-fun tp!1255373 () Bool)

(declare-fun tp!1255369 () Bool)

(assert (=> b!4119894 (= e!2556351 (and tp!1255373 tp!1255369))))

(declare-fun b!4119896 () Bool)

(declare-fun tp!1255370 () Bool)

(declare-fun tp!1255371 () Bool)

(assert (=> b!4119896 (= e!2556351 (and tp!1255370 tp!1255371))))

(assert (= (and b!4119523 (is-ElementMatch!12174 (regex!7269 rBis!149))) b!4119893))

(assert (= (and b!4119523 (is-Concat!19674 (regex!7269 rBis!149))) b!4119894))

(assert (= (and b!4119523 (is-Star!12174 (regex!7269 rBis!149))) b!4119895))

(assert (= (and b!4119523 (is-Union!12174 (regex!7269 rBis!149))) b!4119896))

(declare-fun b!4119899 () Bool)

(declare-fun e!2556352 () Bool)

(declare-fun tp!1255377 () Bool)

(assert (=> b!4119899 (= e!2556352 tp!1255377)))

(declare-fun b!4119897 () Bool)

(assert (=> b!4119897 (= e!2556352 tp_is_empty!21271)))

(assert (=> b!4119518 (= tp!1255310 e!2556352)))

(declare-fun b!4119898 () Bool)

(declare-fun tp!1255378 () Bool)

(declare-fun tp!1255374 () Bool)

(assert (=> b!4119898 (= e!2556352 (and tp!1255378 tp!1255374))))

(declare-fun b!4119900 () Bool)

(declare-fun tp!1255375 () Bool)

(declare-fun tp!1255376 () Bool)

(assert (=> b!4119900 (= e!2556352 (and tp!1255375 tp!1255376))))

(assert (= (and b!4119518 (is-ElementMatch!12174 (regex!7269 (h!49952 rules!3756)))) b!4119897))

(assert (= (and b!4119518 (is-Concat!19674 (regex!7269 (h!49952 rules!3756)))) b!4119898))

(assert (= (and b!4119518 (is-Star!12174 (regex!7269 (h!49952 rules!3756)))) b!4119899))

(assert (= (and b!4119518 (is-Union!12174 (regex!7269 (h!49952 rules!3756)))) b!4119900))

(declare-fun b!4119911 () Bool)

(declare-fun b_free!116415 () Bool)

(declare-fun b_next!117119 () Bool)

(assert (=> b!4119911 (= b_free!116415 (not b_next!117119))))

(declare-fun tb!247221 () Bool)

(declare-fun t!340658 () Bool)

(assert (=> (and b!4119911 (= (toValue!9921 (transformation!7269 (h!49952 (t!340623 rules!3756)))) (toValue!9921 (transformation!7269 r!4008))) t!340658) tb!247221))

(declare-fun result!300340 () Bool)

(assert (= result!300340 result!300320))

(assert (=> d!1221488 t!340658))

(assert (=> d!1221500 t!340658))

(declare-fun b_and!318605 () Bool)

(declare-fun tp!1255390 () Bool)

(assert (=> b!4119911 (= tp!1255390 (and (=> t!340658 result!300340) b_and!318605))))

(declare-fun b_free!116417 () Bool)

(declare-fun b_next!117121 () Bool)

(assert (=> b!4119911 (= b_free!116417 (not b_next!117121))))

(declare-fun t!340660 () Bool)

(declare-fun tb!247223 () Bool)

(assert (=> (and b!4119911 (= (toChars!9780 (transformation!7269 (h!49952 (t!340623 rules!3756)))) (toChars!9780 (transformation!7269 (rule!10339 (_1!24636 (get!14522 lt!1469600)))))) t!340660) tb!247223))

(declare-fun result!300342 () Bool)

(assert (= result!300342 result!300312))

(assert (=> d!1221470 t!340660))

(declare-fun tb!247225 () Bool)

(declare-fun t!340662 () Bool)

(assert (=> (and b!4119911 (= (toChars!9780 (transformation!7269 (h!49952 (t!340623 rules!3756)))) (toChars!9780 (transformation!7269 r!4008))) t!340662) tb!247225))

(declare-fun result!300344 () Bool)

(assert (= result!300344 result!300328))

(assert (=> d!1221500 t!340662))

(declare-fun b_and!318607 () Bool)

(declare-fun tp!1255387 () Bool)

(assert (=> b!4119911 (= tp!1255387 (and (=> t!340660 result!300342) (=> t!340662 result!300344) b_and!318607))))

(declare-fun e!2556363 () Bool)

(assert (=> b!4119911 (= e!2556363 (and tp!1255390 tp!1255387))))

(declare-fun b!4119910 () Bool)

(declare-fun e!2556364 () Bool)

(declare-fun tp!1255388 () Bool)

(assert (=> b!4119910 (= e!2556364 (and tp!1255388 (inv!59114 (tag!8129 (h!49952 (t!340623 rules!3756)))) (inv!59117 (transformation!7269 (h!49952 (t!340623 rules!3756)))) e!2556363))))

(declare-fun b!4119909 () Bool)

(declare-fun e!2556361 () Bool)

(declare-fun tp!1255389 () Bool)

(assert (=> b!4119909 (= e!2556361 (and e!2556364 tp!1255389))))

(assert (=> b!4119534 (= tp!1255303 e!2556361)))

(assert (= b!4119910 b!4119911))

(assert (= b!4119909 b!4119910))

(assert (= (and b!4119534 (is-Cons!44532 (t!340623 rules!3756))) b!4119909))

(declare-fun m!4719169 () Bool)

(assert (=> b!4119910 m!4719169))

(declare-fun m!4719171 () Bool)

(assert (=> b!4119910 m!4719171))

(declare-fun b!4119914 () Bool)

(declare-fun e!2556365 () Bool)

(declare-fun tp!1255394 () Bool)

(assert (=> b!4119914 (= e!2556365 tp!1255394)))

(declare-fun b!4119912 () Bool)

(assert (=> b!4119912 (= e!2556365 tp_is_empty!21271)))

(assert (=> b!4119525 (= tp!1255307 e!2556365)))

(declare-fun b!4119913 () Bool)

(declare-fun tp!1255395 () Bool)

(declare-fun tp!1255391 () Bool)

(assert (=> b!4119913 (= e!2556365 (and tp!1255395 tp!1255391))))

(declare-fun b!4119915 () Bool)

(declare-fun tp!1255392 () Bool)

(declare-fun tp!1255393 () Bool)

(assert (=> b!4119915 (= e!2556365 (and tp!1255392 tp!1255393))))

(assert (= (and b!4119525 (is-ElementMatch!12174 (regex!7269 r!4008))) b!4119912))

(assert (= (and b!4119525 (is-Concat!19674 (regex!7269 r!4008))) b!4119913))

(assert (= (and b!4119525 (is-Star!12174 (regex!7269 r!4008))) b!4119914))

(assert (= (and b!4119525 (is-Union!12174 (regex!7269 r!4008))) b!4119915))

(declare-fun b!4119916 () Bool)

(declare-fun e!2556366 () Bool)

(declare-fun tp!1255396 () Bool)

(assert (=> b!4119916 (= e!2556366 (and tp_is_empty!21271 tp!1255396))))

(assert (=> b!4119536 (= tp!1255306 e!2556366)))

(assert (= (and b!4119536 (is-Cons!44530 (t!340621 p!2912))) b!4119916))

(declare-fun b_lambda!120875 () Bool)

(assert (= b_lambda!120873 (or (and b!4119530 b_free!116391) (and b!4119521 b_free!116395 (= (toValue!9921 (transformation!7269 (h!49952 rules!3756))) (toValue!9921 (transformation!7269 r!4008)))) (and b!4119524 b_free!116399 (= (toValue!9921 (transformation!7269 rBis!149)) (toValue!9921 (transformation!7269 r!4008)))) (and b!4119911 b_free!116415 (= (toValue!9921 (transformation!7269 (h!49952 (t!340623 rules!3756)))) (toValue!9921 (transformation!7269 r!4008)))) b_lambda!120875)))

(declare-fun b_lambda!120877 () Bool)

(assert (= b_lambda!120869 (or (and b!4119530 b_free!116391) (and b!4119521 b_free!116395 (= (toValue!9921 (transformation!7269 (h!49952 rules!3756))) (toValue!9921 (transformation!7269 r!4008)))) (and b!4119524 b_free!116399 (= (toValue!9921 (transformation!7269 rBis!149)) (toValue!9921 (transformation!7269 r!4008)))) (and b!4119911 b_free!116415 (= (toValue!9921 (transformation!7269 (h!49952 (t!340623 rules!3756)))) (toValue!9921 (transformation!7269 r!4008)))) b_lambda!120877)))

(declare-fun b_lambda!120879 () Bool)

(assert (= b_lambda!120871 (or (and b!4119530 b_free!116393) (and b!4119521 b_free!116397 (= (toChars!9780 (transformation!7269 (h!49952 rules!3756))) (toChars!9780 (transformation!7269 r!4008)))) (and b!4119524 b_free!116401 (= (toChars!9780 (transformation!7269 rBis!149)) (toChars!9780 (transformation!7269 r!4008)))) (and b!4119911 b_free!116417 (= (toChars!9780 (transformation!7269 (h!49952 (t!340623 rules!3756)))) (toChars!9780 (transformation!7269 r!4008)))) b_lambda!120879)))

(push 1)

(assert (not b!4119624))

(assert (not b!4119627))

(assert (not b!4119800))

(assert (not b!4119863))

(assert (not b!4119913))

(assert (not b!4119772))

(assert (not b!4119895))

(assert (not tb!247203))

(assert (not b!4119916))

(assert (not b!4119909))

(assert (not b!4119896))

(assert (not b!4119882))

(assert (not b!4119777))

(assert (not b!4119798))

(assert b_and!318603)

(assert (not b!4119708))

(assert (not b!4119894))

(assert (not d!1221452))

(assert (not d!1221416))

(assert (not d!1221476))

(assert b_and!318605)

(assert (not b!4119741))

(assert (not b!4119808))

(assert (not b_lambda!120879))

(assert (not bm!289937))

(assert (not b!4119862))

(assert (not b!4119709))

(assert (not b!4119615))

(assert (not d!1221502))

(assert (not b!4119783))

(assert (not b!4119706))

(assert (not d!1221458))

(assert (not d!1221448))

(assert (not b_next!117105))

(assert b_and!318607)

(assert (not b!4119867))

(assert (not b!4119866))

(assert (not b_next!117101))

(assert (not b!4119732))

(assert (not tb!247209))

(assert (not d!1221462))

(assert (not d!1221456))

(assert (not b!4119861))

(assert (not d!1221468))

(assert (not d!1221454))

(assert (not b_lambda!120877))

(assert (not d!1221490))

(assert b_and!318599)

(assert (not d!1221486))

(assert (not d!1221424))

(assert (not b!4119898))

(assert b_and!318593)

(assert (not b!4119781))

(assert b_and!318595)

(assert (not b!4119734))

(assert (not b!4119910))

(assert (not b_next!117103))

(assert (not d!1221430))

(assert (not b!4119635))

(assert (not b_next!117121))

(assert (not b_next!117119))

(assert (not bm!289931))

(assert (not b!4119704))

(assert (not b!4119730))

(assert (not d!1221500))

(assert (not b_next!117095))

(assert (not tb!247215))

(assert (not b!4119712))

(assert b_and!318597)

(assert (not b!4119899))

(assert (not b!4119900))

(assert (not b_next!117097))

(assert (not d!1221480))

(assert (not b!4119735))

(assert (not d!1221434))

(assert (not b!4119731))

(assert (not b!4119779))

(assert (not d!1221470))

(assert (not d!1221466))

(assert (not b!4119770))

(assert (not b!4119740))

(assert (not d!1221438))

(assert (not d!1221484))

(assert (not b!4119875))

(assert b_and!318601)

(assert (not b!4119794))

(assert (not b!4119719))

(assert (not b_next!117099))

(assert (not b_lambda!120867))

(assert (not b!4119865))

(assert (not d!1221492))

(assert (not b!4119714))

(assert (not b!4119618))

(assert (not b!4119914))

(assert (not b!4119705))

(assert (not b_lambda!120875))

(assert (not b!4119859))

(assert tp_is_empty!21271)

(assert (not b!4119707))

(assert (not d!1221482))

(assert (not b!4119860))

(assert (not b!4119915))

(assert (not b!4119877))

(assert (not b!4119711))

(check-sat)

(pop 1)

(push 1)

(assert b_and!318603)

(assert b_and!318605)

(assert (not b_next!117101))

(assert b_and!318599)

(assert (not b_next!117121))

(assert (not b_next!117119))

(assert (not b_next!117095))

(assert b_and!318601)

(assert (not b_next!117099))

(assert (not b_next!117105))

(assert b_and!318607)

(assert b_and!318593)

(assert b_and!318595)

(assert (not b_next!117103))

(assert b_and!318597)

(assert (not b_next!117097))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!401060 () Bool)

(assert start!401060)

(declare-fun b!4198559 () Bool)

(declare-fun b_free!122371 () Bool)

(declare-fun b_next!123075 () Bool)

(assert (=> b!4198559 (= b_free!122371 (not b_next!123075))))

(declare-fun tp!1282470 () Bool)

(declare-fun b_and!329377 () Bool)

(assert (=> b!4198559 (= tp!1282470 b_and!329377)))

(declare-fun b_free!122373 () Bool)

(declare-fun b_next!123077 () Bool)

(assert (=> b!4198559 (= b_free!122373 (not b_next!123077))))

(declare-fun tp!1282476 () Bool)

(declare-fun b_and!329379 () Bool)

(assert (=> b!4198559 (= tp!1282476 b_and!329379)))

(declare-fun b!4198562 () Bool)

(declare-fun b_free!122375 () Bool)

(declare-fun b_next!123079 () Bool)

(assert (=> b!4198562 (= b_free!122375 (not b_next!123079))))

(declare-fun tp!1282465 () Bool)

(declare-fun b_and!329381 () Bool)

(assert (=> b!4198562 (= tp!1282465 b_and!329381)))

(declare-fun b_free!122377 () Bool)

(declare-fun b_next!123081 () Bool)

(assert (=> b!4198562 (= b_free!122377 (not b_next!123081))))

(declare-fun tp!1282473 () Bool)

(declare-fun b_and!329383 () Bool)

(assert (=> b!4198562 (= tp!1282473 b_and!329383)))

(declare-fun b!4198558 () Bool)

(declare-fun b_free!122379 () Bool)

(declare-fun b_next!123083 () Bool)

(assert (=> b!4198558 (= b_free!122379 (not b_next!123083))))

(declare-fun tp!1282477 () Bool)

(declare-fun b_and!329385 () Bool)

(assert (=> b!4198558 (= tp!1282477 b_and!329385)))

(declare-fun b_free!122381 () Bool)

(declare-fun b_next!123085 () Bool)

(assert (=> b!4198558 (= b_free!122381 (not b_next!123085))))

(declare-fun tp!1282468 () Bool)

(declare-fun b_and!329387 () Bool)

(assert (=> b!4198558 (= tp!1282468 b_and!329387)))

(declare-fun b!4198547 () Bool)

(declare-fun res!1724071 () Bool)

(declare-fun e!2606170 () Bool)

(assert (=> b!4198547 (=> (not res!1724071) (not e!2606170))))

(declare-datatypes ((LexerInterface!7288 0))(
  ( (LexerInterfaceExt!7285 (__x!28071 Int)) (Lexer!7286) )
))
(declare-fun thiss!25986 () LexerInterface!7288)

(declare-datatypes ((List!46236 0))(
  ( (Nil!46112) (Cons!46112 (h!51532 (_ BitVec 16)) (t!346691 List!46236)) )
))
(declare-datatypes ((TokenValue!7925 0))(
  ( (FloatLiteralValue!15850 (text!55920 List!46236)) (TokenValueExt!7924 (__x!28072 Int)) (Broken!39625 (value!239815 List!46236)) (Object!8048) (End!7925) (Def!7925) (Underscore!7925) (Match!7925) (Else!7925) (Error!7925) (Case!7925) (If!7925) (Extends!7925) (Abstract!7925) (Class!7925) (Val!7925) (DelimiterValue!15850 (del!7985 List!46236)) (KeywordValue!7931 (value!239816 List!46236)) (CommentValue!15850 (value!239817 List!46236)) (WhitespaceValue!15850 (value!239818 List!46236)) (IndentationValue!7925 (value!239819 List!46236)) (String!53492) (Int32!7925) (Broken!39626 (value!239820 List!46236)) (Boolean!7926) (Unit!65215) (OperatorValue!7928 (op!7985 List!46236)) (IdentifierValue!15850 (value!239821 List!46236)) (IdentifierValue!15851 (value!239822 List!46236)) (WhitespaceValue!15851 (value!239823 List!46236)) (True!15850) (False!15850) (Broken!39627 (value!239824 List!46236)) (Broken!39628 (value!239825 List!46236)) (True!15851) (RightBrace!7925) (RightBracket!7925) (Colon!7925) (Null!7925) (Comma!7925) (LeftBracket!7925) (False!15851) (LeftBrace!7925) (ImaginaryLiteralValue!7925 (text!55921 List!46236)) (StringLiteralValue!23775 (value!239826 List!46236)) (EOFValue!7925 (value!239827 List!46236)) (IdentValue!7925 (value!239828 List!46236)) (DelimiterValue!15851 (value!239829 List!46236)) (DedentValue!7925 (value!239830 List!46236)) (NewLineValue!7925 (value!239831 List!46236)) (IntegerValue!23775 (value!239832 (_ BitVec 32)) (text!55922 List!46236)) (IntegerValue!23776 (value!239833 Int) (text!55923 List!46236)) (Times!7925) (Or!7925) (Equal!7925) (Minus!7925) (Broken!39629 (value!239834 List!46236)) (And!7925) (Div!7925) (LessEqual!7925) (Mod!7925) (Concat!20525) (Not!7925) (Plus!7925) (SpaceValue!7925 (value!239835 List!46236)) (IntegerValue!23777 (value!239836 Int) (text!55924 List!46236)) (StringLiteralValue!23776 (text!55925 List!46236)) (FloatLiteralValue!15851 (text!55926 List!46236)) (BytesLiteralValue!7925 (value!239837 List!46236)) (CommentValue!15851 (value!239838 List!46236)) (StringLiteralValue!23777 (value!239839 List!46236)) (ErrorTokenValue!7925 (msg!7986 List!46236)) )
))
(declare-datatypes ((C!25390 0))(
  ( (C!25391 (val!14857 Int)) )
))
(declare-datatypes ((List!46237 0))(
  ( (Nil!46113) (Cons!46113 (h!51533 C!25390) (t!346692 List!46237)) )
))
(declare-datatypes ((IArray!27817 0))(
  ( (IArray!27818 (innerList!13966 List!46237)) )
))
(declare-datatypes ((Conc!13906 0))(
  ( (Node!13906 (left!34356 Conc!13906) (right!34686 Conc!13906) (csize!28042 Int) (cheight!14117 Int)) (Leaf!21497 (xs!17212 IArray!27817) (csize!28043 Int)) (Empty!13906) )
))
(declare-datatypes ((BalanceConc!27406 0))(
  ( (BalanceConc!27407 (c!716048 Conc!13906)) )
))
(declare-datatypes ((Regex!12600 0))(
  ( (ElementMatch!12600 (c!716049 C!25390)) (Concat!20526 (regOne!25712 Regex!12600) (regTwo!25712 Regex!12600)) (EmptyExpr!12600) (Star!12600 (reg!12929 Regex!12600)) (EmptyLang!12600) (Union!12600 (regOne!25713 Regex!12600) (regTwo!25713 Regex!12600)) )
))
(declare-datatypes ((String!53493 0))(
  ( (String!53494 (value!239840 String)) )
))
(declare-datatypes ((TokenValueInjection!15278 0))(
  ( (TokenValueInjection!15279 (toValue!10395 Int) (toChars!10254 Int)) )
))
(declare-datatypes ((Rule!15190 0))(
  ( (Rule!15191 (regex!7695 Regex!12600) (tag!8559 String!53493) (isSeparator!7695 Bool) (transformation!7695 TokenValueInjection!15278)) )
))
(declare-fun r!4142 () Rule!15190)

(declare-fun ruleValid!3413 (LexerInterface!7288 Rule!15190) Bool)

(assert (=> b!4198547 (= res!1724071 (ruleValid!3413 thiss!25986 r!4142))))

(declare-fun b!4198548 () Bool)

(declare-fun e!2606178 () Bool)

(declare-fun e!2606184 () Bool)

(assert (=> b!4198548 (= e!2606178 e!2606184)))

(declare-fun res!1724064 () Bool)

(assert (=> b!4198548 (=> res!1724064 e!2606184)))

(declare-fun lt!1495720 () List!46237)

(declare-fun pBis!107 () List!46237)

(assert (=> b!4198548 (= res!1724064 (= lt!1495720 pBis!107))))

(declare-datatypes ((Token!14104 0))(
  ( (Token!14105 (value!239841 TokenValue!7925) (rule!10795 Rule!15190) (size!33900 Int) (originalCharacters!8083 List!46237)) )
))
(declare-datatypes ((tuple2!43904 0))(
  ( (tuple2!43905 (_1!25086 Token!14104) (_2!25086 List!46237)) )
))
(declare-fun lt!1495733 () tuple2!43904)

(declare-fun isPrefix!4552 (List!46237 List!46237) Bool)

(declare-fun ++!11767 (List!46237 List!46237) List!46237)

(assert (=> b!4198548 (isPrefix!4552 lt!1495720 (++!11767 lt!1495720 (_2!25086 lt!1495733)))))

(declare-datatypes ((Unit!65216 0))(
  ( (Unit!65217) )
))
(declare-fun lt!1495730 () Unit!65216)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3049 (List!46237 List!46237) Unit!65216)

(assert (=> b!4198548 (= lt!1495730 (lemmaConcatTwoListThenFirstIsPrefix!3049 lt!1495720 (_2!25086 lt!1495733)))))

(declare-fun lt!1495725 () BalanceConc!27406)

(declare-fun list!16673 (BalanceConc!27406) List!46237)

(assert (=> b!4198548 (= lt!1495720 (list!16673 lt!1495725))))

(declare-fun charsOf!5130 (Token!14104) BalanceConc!27406)

(assert (=> b!4198548 (= lt!1495725 (charsOf!5130 (_1!25086 lt!1495733)))))

(declare-datatypes ((Option!9889 0))(
  ( (None!9888) (Some!9888 (v!40736 tuple2!43904)) )
))
(declare-fun lt!1495737 () Option!9889)

(declare-fun get!15002 (Option!9889) tuple2!43904)

(assert (=> b!4198548 (= lt!1495733 (get!15002 lt!1495737))))

(declare-fun b!4198549 () Bool)

(declare-fun res!1724069 () Bool)

(assert (=> b!4198549 (=> (not res!1724069) (not e!2606170))))

(declare-datatypes ((List!46238 0))(
  ( (Nil!46114) (Cons!46114 (h!51534 Rule!15190) (t!346693 List!46238)) )
))
(declare-fun rules!3843 () List!46238)

(declare-fun rulesInvariant!6501 (LexerInterface!7288 List!46238) Bool)

(assert (=> b!4198549 (= res!1724069 (rulesInvariant!6501 thiss!25986 rules!3843))))

(declare-fun b!4198550 () Bool)

(declare-fun res!1724067 () Bool)

(assert (=> b!4198550 (=> (not res!1724067) (not e!2606170))))

(declare-fun validRegex!5717 (Regex!12600) Bool)

(assert (=> b!4198550 (= res!1724067 (validRegex!5717 (regex!7695 r!4142)))))

(declare-fun b!4198551 () Bool)

(declare-fun e!2606177 () Unit!65216)

(declare-fun Unit!65218 () Unit!65216)

(assert (=> b!4198551 (= e!2606177 Unit!65218)))

(declare-fun lt!1495723 () Unit!65216)

(declare-fun input!3342 () List!46237)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1016 (List!46237 List!46237 List!46237) Unit!65216)

(assert (=> b!4198551 (= lt!1495723 (lemmaIsPrefixSameLengthThenSameList!1016 pBis!107 lt!1495720 input!3342))))

(assert (=> b!4198551 false))

(declare-fun b!4198552 () Bool)

(declare-fun Unit!65219 () Unit!65216)

(assert (=> b!4198552 (= e!2606177 Unit!65219)))

(declare-fun b!4198553 () Bool)

(declare-fun res!1724075 () Bool)

(assert (=> b!4198553 (=> (not res!1724075) (not e!2606170))))

(declare-fun p!2959 () List!46237)

(assert (=> b!4198553 (= res!1724075 (isPrefix!4552 p!2959 input!3342))))

(declare-fun b!4198554 () Bool)

(declare-fun e!2606175 () Bool)

(declare-fun tp_is_empty!22163 () Bool)

(declare-fun tp!1282467 () Bool)

(assert (=> b!4198554 (= e!2606175 (and tp_is_empty!22163 tp!1282467))))

(declare-fun b!4198555 () Bool)

(declare-fun e!2606176 () Bool)

(assert (=> b!4198555 (= e!2606176 e!2606178)))

(declare-fun res!1724079 () Bool)

(assert (=> b!4198555 (=> res!1724079 e!2606178)))

(declare-fun isEmpty!27312 (Option!9889) Bool)

(assert (=> b!4198555 (= res!1724079 (isEmpty!27312 lt!1495737))))

(declare-fun rBis!167 () Rule!15190)

(declare-fun maxPrefixOneRule!3297 (LexerInterface!7288 Rule!15190 List!46237) Option!9889)

(assert (=> b!4198555 (= lt!1495737 (maxPrefixOneRule!3297 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1495726 () Unit!65216)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2419 (LexerInterface!7288 Rule!15190 List!46238) Unit!65216)

(assert (=> b!4198555 (= lt!1495726 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2419 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1495732 () Int)

(declare-fun size!33901 (List!46237) Int)

(assert (=> b!4198555 (<= lt!1495732 (size!33901 input!3342))))

(declare-fun lt!1495718 () Unit!65216)

(declare-fun lemmaIsPrefixThenSmallerEqSize!582 (List!46237 List!46237) Unit!65216)

(assert (=> b!4198555 (= lt!1495718 (lemmaIsPrefixThenSmallerEqSize!582 pBis!107 input!3342))))

(declare-fun b!4198556 () Bool)

(declare-fun res!1724072 () Bool)

(assert (=> b!4198556 (=> (not res!1724072) (not e!2606170))))

(declare-fun contains!9506 (List!46238 Rule!15190) Bool)

(assert (=> b!4198556 (= res!1724072 (contains!9506 rules!3843 r!4142))))

(declare-fun res!1724065 () Bool)

(assert (=> start!401060 (=> (not res!1724065) (not e!2606170))))

(assert (=> start!401060 (= res!1724065 (is-Lexer!7286 thiss!25986))))

(assert (=> start!401060 e!2606170))

(assert (=> start!401060 true))

(declare-fun e!2606173 () Bool)

(assert (=> start!401060 e!2606173))

(declare-fun e!2606185 () Bool)

(assert (=> start!401060 e!2606185))

(declare-fun e!2606167 () Bool)

(assert (=> start!401060 e!2606167))

(declare-fun e!2606169 () Bool)

(assert (=> start!401060 e!2606169))

(declare-fun e!2606168 () Bool)

(assert (=> start!401060 e!2606168))

(assert (=> start!401060 e!2606175))

(declare-fun b!4198557 () Bool)

(declare-fun tp!1282466 () Bool)

(assert (=> b!4198557 (= e!2606168 (and tp_is_empty!22163 tp!1282466))))

(declare-fun e!2606166 () Bool)

(assert (=> b!4198558 (= e!2606166 (and tp!1282477 tp!1282468))))

(declare-fun e!2606182 () Bool)

(assert (=> b!4198559 (= e!2606182 (and tp!1282470 tp!1282476))))

(declare-fun b!4198560 () Bool)

(declare-fun res!1724077 () Bool)

(assert (=> b!4198560 (=> res!1724077 e!2606176)))

(assert (=> b!4198560 (= res!1724077 (not (ruleValid!3413 thiss!25986 rBis!167)))))

(declare-fun b!4198561 () Bool)

(declare-fun e!2606180 () Bool)

(declare-fun e!2606165 () Bool)

(assert (=> b!4198561 (= e!2606180 e!2606165)))

(declare-fun res!1724063 () Bool)

(assert (=> b!4198561 (=> res!1724063 e!2606165)))

(declare-fun lt!1495728 () Int)

(assert (=> b!4198561 (= res!1724063 (>= lt!1495732 lt!1495728))))

(declare-fun lt!1495724 () Unit!65216)

(assert (=> b!4198561 (= lt!1495724 e!2606177)))

(declare-fun c!716047 () Bool)

(declare-fun lt!1495731 () Int)

(assert (=> b!4198561 (= c!716047 (= lt!1495732 lt!1495731))))

(assert (=> b!4198561 (= lt!1495731 (size!33901 lt!1495720))))

(declare-fun e!2606179 () Bool)

(assert (=> b!4198562 (= e!2606179 (and tp!1282465 tp!1282473))))

(declare-fun b!4198563 () Bool)

(declare-fun res!1724068 () Bool)

(assert (=> b!4198563 (=> (not res!1724068) (not e!2606170))))

(declare-fun matchR!6339 (Regex!12600 List!46237) Bool)

(assert (=> b!4198563 (= res!1724068 (matchR!6339 (regex!7695 r!4142) p!2959))))

(declare-fun e!2606172 () Bool)

(declare-fun b!4198564 () Bool)

(declare-fun tp!1282471 () Bool)

(declare-fun inv!60674 (String!53493) Bool)

(declare-fun inv!60677 (TokenValueInjection!15278) Bool)

(assert (=> b!4198564 (= e!2606172 (and tp!1282471 (inv!60674 (tag!8559 (h!51534 rules!3843))) (inv!60677 (transformation!7695 (h!51534 rules!3843))) e!2606182))))

(declare-fun b!4198565 () Bool)

(declare-fun res!1724066 () Bool)

(assert (=> b!4198565 (=> (not res!1724066) (not e!2606170))))

(assert (=> b!4198565 (= res!1724066 (isPrefix!4552 pBis!107 input!3342))))

(declare-fun b!4198566 () Bool)

(declare-fun e!2606171 () Bool)

(assert (=> b!4198566 (= e!2606171 e!2606176)))

(declare-fun res!1724070 () Bool)

(assert (=> b!4198566 (=> res!1724070 e!2606176)))

(declare-fun lt!1495717 () Int)

(assert (=> b!4198566 (= res!1724070 (<= lt!1495732 lt!1495717))))

(assert (=> b!4198566 (= lt!1495732 (size!33901 pBis!107))))

(declare-fun b!4198567 () Bool)

(declare-fun tp!1282469 () Bool)

(assert (=> b!4198567 (= e!2606169 (and tp_is_empty!22163 tp!1282469))))

(declare-fun b!4198568 () Bool)

(declare-fun res!1724073 () Bool)

(assert (=> b!4198568 (=> (not res!1724073) (not e!2606170))))

(declare-fun isEmpty!27313 (List!46238) Bool)

(assert (=> b!4198568 (= res!1724073 (not (isEmpty!27313 rules!3843)))))

(declare-fun b!4198569 () Bool)

(assert (=> b!4198569 (= e!2606184 e!2606180)))

(declare-fun res!1724076 () Bool)

(assert (=> b!4198569 (=> res!1724076 e!2606180)))

(assert (=> b!4198569 (= res!1724076 (< lt!1495728 lt!1495732))))

(declare-fun size!33902 (BalanceConc!27406) Int)

(assert (=> b!4198569 (= lt!1495728 (size!33902 lt!1495725))))

(declare-fun b!4198570 () Bool)

(assert (=> b!4198570 (= e!2606165 false)))

(assert (=> b!4198570 (<= lt!1495731 lt!1495717)))

(declare-fun lt!1495735 () Unit!65216)

(declare-fun lt!1495736 () Token!14104)

(declare-fun lt!1495727 () List!46237)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!25 (LexerInterface!7288 List!46238 List!46237 Token!14104 List!46237 List!46237 List!46237 List!46237 Rule!15190 Token!14104) Unit!65216)

(assert (=> b!4198570 (= lt!1495735 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!25 thiss!25986 rules!3843 p!2959 lt!1495736 input!3342 lt!1495727 lt!1495720 (_2!25086 lt!1495733) rBis!167 (_1!25086 lt!1495733)))))

(declare-fun b!4198571 () Bool)

(declare-fun res!1724080 () Bool)

(assert (=> b!4198571 (=> (not res!1724080) (not e!2606170))))

(assert (=> b!4198571 (= res!1724080 (contains!9506 rules!3843 rBis!167))))

(declare-fun b!4198572 () Bool)

(declare-fun tp!1282472 () Bool)

(assert (=> b!4198572 (= e!2606167 (and e!2606172 tp!1282472))))

(declare-fun b!4198573 () Bool)

(assert (=> b!4198573 (= e!2606170 (not e!2606171))))

(declare-fun res!1724074 () Bool)

(assert (=> b!4198573 (=> res!1724074 e!2606171)))

(declare-fun lt!1495719 () Option!9889)

(assert (=> b!4198573 (= res!1724074 (not (= (maxPrefixOneRule!3297 thiss!25986 r!4142 input!3342) lt!1495719)))))

(assert (=> b!4198573 (= lt!1495719 (Some!9888 (tuple2!43905 lt!1495736 lt!1495727)))))

(declare-fun getSuffix!2845 (List!46237 List!46237) List!46237)

(assert (=> b!4198573 (= lt!1495727 (getSuffix!2845 input!3342 p!2959))))

(declare-fun lt!1495734 () TokenValue!7925)

(assert (=> b!4198573 (= lt!1495736 (Token!14105 lt!1495734 r!4142 lt!1495717 p!2959))))

(assert (=> b!4198573 (= lt!1495717 (size!33901 p!2959))))

(declare-fun lt!1495721 () BalanceConc!27406)

(declare-fun apply!10660 (TokenValueInjection!15278 BalanceConc!27406) TokenValue!7925)

(assert (=> b!4198573 (= lt!1495734 (apply!10660 (transformation!7695 r!4142) lt!1495721))))

(assert (=> b!4198573 (isPrefix!4552 input!3342 input!3342)))

(declare-fun lt!1495722 () Unit!65216)

(declare-fun lemmaIsPrefixRefl!2981 (List!46237 List!46237) Unit!65216)

(assert (=> b!4198573 (= lt!1495722 (lemmaIsPrefixRefl!2981 input!3342 input!3342))))

(declare-fun lt!1495729 () Unit!65216)

(declare-fun lemmaSemiInverse!2461 (TokenValueInjection!15278 BalanceConc!27406) Unit!65216)

(assert (=> b!4198573 (= lt!1495729 (lemmaSemiInverse!2461 (transformation!7695 r!4142) lt!1495721))))

(declare-fun seqFromList!5720 (List!46237) BalanceConc!27406)

(assert (=> b!4198573 (= lt!1495721 (seqFromList!5720 p!2959))))

(declare-fun b!4198574 () Bool)

(declare-fun tp!1282475 () Bool)

(assert (=> b!4198574 (= e!2606185 (and tp!1282475 (inv!60674 (tag!8559 r!4142)) (inv!60677 (transformation!7695 r!4142)) e!2606179))))

(declare-fun b!4198575 () Bool)

(declare-fun tp!1282474 () Bool)

(assert (=> b!4198575 (= e!2606173 (and tp!1282474 (inv!60674 (tag!8559 rBis!167)) (inv!60677 (transformation!7695 rBis!167)) e!2606166))))

(declare-fun b!4198576 () Bool)

(declare-fun res!1724078 () Bool)

(assert (=> b!4198576 (=> res!1724078 e!2606176)))

(declare-fun maxPrefix!4336 (LexerInterface!7288 List!46238 List!46237) Option!9889)

(assert (=> b!4198576 (= res!1724078 (not (= (maxPrefix!4336 thiss!25986 rules!3843 input!3342) lt!1495719)))))

(assert (= (and start!401060 res!1724065) b!4198553))

(assert (= (and b!4198553 res!1724075) b!4198565))

(assert (= (and b!4198565 res!1724066) b!4198568))

(assert (= (and b!4198568 res!1724073) b!4198549))

(assert (= (and b!4198549 res!1724069) b!4198556))

(assert (= (and b!4198556 res!1724072) b!4198571))

(assert (= (and b!4198571 res!1724080) b!4198550))

(assert (= (and b!4198550 res!1724067) b!4198563))

(assert (= (and b!4198563 res!1724068) b!4198547))

(assert (= (and b!4198547 res!1724071) b!4198573))

(assert (= (and b!4198573 (not res!1724074)) b!4198566))

(assert (= (and b!4198566 (not res!1724070)) b!4198560))

(assert (= (and b!4198560 (not res!1724077)) b!4198576))

(assert (= (and b!4198576 (not res!1724078)) b!4198555))

(assert (= (and b!4198555 (not res!1724079)) b!4198548))

(assert (= (and b!4198548 (not res!1724064)) b!4198569))

(assert (= (and b!4198569 (not res!1724076)) b!4198561))

(assert (= (and b!4198561 c!716047) b!4198551))

(assert (= (and b!4198561 (not c!716047)) b!4198552))

(assert (= (and b!4198561 (not res!1724063)) b!4198570))

(assert (= b!4198575 b!4198558))

(assert (= start!401060 b!4198575))

(assert (= b!4198574 b!4198562))

(assert (= start!401060 b!4198574))

(assert (= b!4198564 b!4198559))

(assert (= b!4198572 b!4198564))

(assert (= (and start!401060 (is-Cons!46114 rules!3843)) b!4198572))

(assert (= (and start!401060 (is-Cons!46113 input!3342)) b!4198567))

(assert (= (and start!401060 (is-Cons!46113 pBis!107)) b!4198557))

(assert (= (and start!401060 (is-Cons!46113 p!2959)) b!4198554))

(declare-fun m!4787327 () Bool)

(assert (=> b!4198560 m!4787327))

(declare-fun m!4787329 () Bool)

(assert (=> b!4198574 m!4787329))

(declare-fun m!4787331 () Bool)

(assert (=> b!4198574 m!4787331))

(declare-fun m!4787333 () Bool)

(assert (=> b!4198565 m!4787333))

(declare-fun m!4787335 () Bool)

(assert (=> b!4198549 m!4787335))

(declare-fun m!4787337 () Bool)

(assert (=> b!4198566 m!4787337))

(declare-fun m!4787339 () Bool)

(assert (=> b!4198556 m!4787339))

(declare-fun m!4787341 () Bool)

(assert (=> b!4198575 m!4787341))

(declare-fun m!4787343 () Bool)

(assert (=> b!4198575 m!4787343))

(declare-fun m!4787345 () Bool)

(assert (=> b!4198551 m!4787345))

(declare-fun m!4787347 () Bool)

(assert (=> b!4198569 m!4787347))

(declare-fun m!4787349 () Bool)

(assert (=> b!4198553 m!4787349))

(declare-fun m!4787351 () Bool)

(assert (=> b!4198570 m!4787351))

(declare-fun m!4787353 () Bool)

(assert (=> b!4198548 m!4787353))

(declare-fun m!4787355 () Bool)

(assert (=> b!4198548 m!4787355))

(declare-fun m!4787357 () Bool)

(assert (=> b!4198548 m!4787357))

(declare-fun m!4787359 () Bool)

(assert (=> b!4198548 m!4787359))

(declare-fun m!4787361 () Bool)

(assert (=> b!4198548 m!4787361))

(assert (=> b!4198548 m!4787361))

(declare-fun m!4787363 () Bool)

(assert (=> b!4198548 m!4787363))

(declare-fun m!4787365 () Bool)

(assert (=> b!4198555 m!4787365))

(declare-fun m!4787367 () Bool)

(assert (=> b!4198555 m!4787367))

(declare-fun m!4787369 () Bool)

(assert (=> b!4198555 m!4787369))

(declare-fun m!4787371 () Bool)

(assert (=> b!4198555 m!4787371))

(declare-fun m!4787373 () Bool)

(assert (=> b!4198555 m!4787373))

(declare-fun m!4787375 () Bool)

(assert (=> b!4198563 m!4787375))

(declare-fun m!4787377 () Bool)

(assert (=> b!4198564 m!4787377))

(declare-fun m!4787379 () Bool)

(assert (=> b!4198564 m!4787379))

(declare-fun m!4787381 () Bool)

(assert (=> b!4198550 m!4787381))

(declare-fun m!4787383 () Bool)

(assert (=> b!4198576 m!4787383))

(declare-fun m!4787385 () Bool)

(assert (=> b!4198561 m!4787385))

(declare-fun m!4787387 () Bool)

(assert (=> b!4198571 m!4787387))

(declare-fun m!4787389 () Bool)

(assert (=> b!4198547 m!4787389))

(declare-fun m!4787391 () Bool)

(assert (=> b!4198568 m!4787391))

(declare-fun m!4787393 () Bool)

(assert (=> b!4198573 m!4787393))

(declare-fun m!4787395 () Bool)

(assert (=> b!4198573 m!4787395))

(declare-fun m!4787397 () Bool)

(assert (=> b!4198573 m!4787397))

(declare-fun m!4787399 () Bool)

(assert (=> b!4198573 m!4787399))

(declare-fun m!4787401 () Bool)

(assert (=> b!4198573 m!4787401))

(declare-fun m!4787403 () Bool)

(assert (=> b!4198573 m!4787403))

(declare-fun m!4787405 () Bool)

(assert (=> b!4198573 m!4787405))

(declare-fun m!4787407 () Bool)

(assert (=> b!4198573 m!4787407))

(push 1)

(assert (not b!4198572))

(assert (not b!4198576))

(assert (not b!4198549))

(assert (not b!4198557))

(assert (not b!4198574))

(assert (not b_next!123085))

(assert (not b!4198573))

(assert (not b!4198548))

(assert b_and!329383)

(assert (not b!4198560))

(assert (not b!4198561))

(assert (not b!4198553))

(assert (not b!4198567))

(assert (not b!4198551))

(assert (not b!4198568))

(assert b_and!329377)

(assert tp_is_empty!22163)

(assert (not b!4198556))

(assert (not b!4198550))

(assert (not b!4198571))

(assert (not b!4198555))

(assert (not b!4198554))

(assert (not b!4198547))

(assert (not b!4198569))

(assert (not b_next!123075))

(assert b_and!329381)

(assert (not b!4198575))

(assert (not b!4198566))

(assert (not b!4198564))

(assert b_and!329385)

(assert (not b!4198565))

(assert (not b_next!123083))

(assert (not b!4198563))

(assert (not b_next!123081))

(assert (not b_next!123077))

(assert b_and!329379)

(assert b_and!329387)

(assert (not b_next!123079))

(assert (not b!4198570))

(check-sat)

(pop 1)

(push 1)

(assert b_and!329377)

(assert (not b_next!123085))

(assert b_and!329383)

(assert b_and!329385)

(assert (not b_next!123083))

(assert (not b_next!123075))

(assert b_and!329381)

(assert (not b_next!123081))

(assert (not b_next!123077))

(assert b_and!329379)

(assert b_and!329387)

(assert (not b_next!123079))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4198685 () Bool)

(declare-fun e!2606256 () Option!9889)

(declare-fun lt!1495814 () Option!9889)

(declare-fun lt!1495813 () Option!9889)

(assert (=> b!4198685 (= e!2606256 (ite (and (is-None!9888 lt!1495814) (is-None!9888 lt!1495813)) None!9888 (ite (is-None!9888 lt!1495813) lt!1495814 (ite (is-None!9888 lt!1495814) lt!1495813 (ite (>= (size!33900 (_1!25086 (v!40736 lt!1495814))) (size!33900 (_1!25086 (v!40736 lt!1495813)))) lt!1495814 lt!1495813)))))))

(declare-fun call!292541 () Option!9889)

(assert (=> b!4198685 (= lt!1495814 call!292541)))

(assert (=> b!4198685 (= lt!1495813 (maxPrefix!4336 thiss!25986 (t!346693 rules!3843) input!3342))))

(declare-fun d!1238095 () Bool)

(declare-fun e!2606257 () Bool)

(assert (=> d!1238095 e!2606257))

(declare-fun res!1724165 () Bool)

(assert (=> d!1238095 (=> res!1724165 e!2606257)))

(declare-fun lt!1495815 () Option!9889)

(assert (=> d!1238095 (= res!1724165 (isEmpty!27312 lt!1495815))))

(assert (=> d!1238095 (= lt!1495815 e!2606256)))

(declare-fun c!716058 () Bool)

(assert (=> d!1238095 (= c!716058 (and (is-Cons!46114 rules!3843) (is-Nil!46114 (t!346693 rules!3843))))))

(declare-fun lt!1495812 () Unit!65216)

(declare-fun lt!1495811 () Unit!65216)

(assert (=> d!1238095 (= lt!1495812 lt!1495811)))

(assert (=> d!1238095 (isPrefix!4552 input!3342 input!3342)))

(assert (=> d!1238095 (= lt!1495811 (lemmaIsPrefixRefl!2981 input!3342 input!3342))))

(declare-fun rulesValidInductive!2849 (LexerInterface!7288 List!46238) Bool)

(assert (=> d!1238095 (rulesValidInductive!2849 thiss!25986 rules!3843)))

(assert (=> d!1238095 (= (maxPrefix!4336 thiss!25986 rules!3843 input!3342) lt!1495815)))

(declare-fun b!4198686 () Bool)

(declare-fun res!1724159 () Bool)

(declare-fun e!2606255 () Bool)

(assert (=> b!4198686 (=> (not res!1724159) (not e!2606255))))

(assert (=> b!4198686 (= res!1724159 (= (value!239841 (_1!25086 (get!15002 lt!1495815))) (apply!10660 (transformation!7695 (rule!10795 (_1!25086 (get!15002 lt!1495815)))) (seqFromList!5720 (originalCharacters!8083 (_1!25086 (get!15002 lt!1495815)))))))))

(declare-fun b!4198687 () Bool)

(declare-fun res!1724163 () Bool)

(assert (=> b!4198687 (=> (not res!1724163) (not e!2606255))))

(assert (=> b!4198687 (= res!1724163 (matchR!6339 (regex!7695 (rule!10795 (_1!25086 (get!15002 lt!1495815)))) (list!16673 (charsOf!5130 (_1!25086 (get!15002 lt!1495815))))))))

(declare-fun bm!292536 () Bool)

(assert (=> bm!292536 (= call!292541 (maxPrefixOneRule!3297 thiss!25986 (h!51534 rules!3843) input!3342))))

(declare-fun b!4198688 () Bool)

(declare-fun res!1724162 () Bool)

(assert (=> b!4198688 (=> (not res!1724162) (not e!2606255))))

(assert (=> b!4198688 (= res!1724162 (= (list!16673 (charsOf!5130 (_1!25086 (get!15002 lt!1495815)))) (originalCharacters!8083 (_1!25086 (get!15002 lt!1495815)))))))

(declare-fun b!4198689 () Bool)

(declare-fun res!1724161 () Bool)

(assert (=> b!4198689 (=> (not res!1724161) (not e!2606255))))

(assert (=> b!4198689 (= res!1724161 (= (++!11767 (list!16673 (charsOf!5130 (_1!25086 (get!15002 lt!1495815)))) (_2!25086 (get!15002 lt!1495815))) input!3342))))

(declare-fun b!4198690 () Bool)

(assert (=> b!4198690 (= e!2606257 e!2606255)))

(declare-fun res!1724164 () Bool)

(assert (=> b!4198690 (=> (not res!1724164) (not e!2606255))))

(declare-fun isDefined!7365 (Option!9889) Bool)

(assert (=> b!4198690 (= res!1724164 (isDefined!7365 lt!1495815))))

(declare-fun b!4198691 () Bool)

(assert (=> b!4198691 (= e!2606256 call!292541)))

(declare-fun b!4198692 () Bool)

(assert (=> b!4198692 (= e!2606255 (contains!9506 rules!3843 (rule!10795 (_1!25086 (get!15002 lt!1495815)))))))

(declare-fun b!4198693 () Bool)

(declare-fun res!1724160 () Bool)

(assert (=> b!4198693 (=> (not res!1724160) (not e!2606255))))

(assert (=> b!4198693 (= res!1724160 (< (size!33901 (_2!25086 (get!15002 lt!1495815))) (size!33901 input!3342)))))

(assert (= (and d!1238095 c!716058) b!4198691))

(assert (= (and d!1238095 (not c!716058)) b!4198685))

(assert (= (or b!4198691 b!4198685) bm!292536))

(assert (= (and d!1238095 (not res!1724165)) b!4198690))

(assert (= (and b!4198690 res!1724164) b!4198688))

(assert (= (and b!4198688 res!1724162) b!4198693))

(assert (= (and b!4198693 res!1724160) b!4198689))

(assert (= (and b!4198689 res!1724161) b!4198686))

(assert (= (and b!4198686 res!1724159) b!4198687))

(assert (= (and b!4198687 res!1724163) b!4198692))

(declare-fun m!4787491 () Bool)

(assert (=> b!4198686 m!4787491))

(declare-fun m!4787493 () Bool)

(assert (=> b!4198686 m!4787493))

(assert (=> b!4198686 m!4787493))

(declare-fun m!4787495 () Bool)

(assert (=> b!4198686 m!4787495))

(declare-fun m!4787497 () Bool)

(assert (=> b!4198690 m!4787497))

(declare-fun m!4787499 () Bool)

(assert (=> b!4198685 m!4787499))

(assert (=> b!4198692 m!4787491))

(declare-fun m!4787501 () Bool)

(assert (=> b!4198692 m!4787501))

(assert (=> b!4198693 m!4787491))

(declare-fun m!4787503 () Bool)

(assert (=> b!4198693 m!4787503))

(assert (=> b!4198693 m!4787367))

(assert (=> b!4198688 m!4787491))

(declare-fun m!4787505 () Bool)

(assert (=> b!4198688 m!4787505))

(assert (=> b!4198688 m!4787505))

(declare-fun m!4787507 () Bool)

(assert (=> b!4198688 m!4787507))

(assert (=> b!4198687 m!4787491))

(assert (=> b!4198687 m!4787505))

(assert (=> b!4198687 m!4787505))

(assert (=> b!4198687 m!4787507))

(assert (=> b!4198687 m!4787507))

(declare-fun m!4787509 () Bool)

(assert (=> b!4198687 m!4787509))

(declare-fun m!4787511 () Bool)

(assert (=> d!1238095 m!4787511))

(assert (=> d!1238095 m!4787397))

(assert (=> d!1238095 m!4787401))

(declare-fun m!4787513 () Bool)

(assert (=> d!1238095 m!4787513))

(assert (=> b!4198689 m!4787491))

(assert (=> b!4198689 m!4787505))

(assert (=> b!4198689 m!4787505))

(assert (=> b!4198689 m!4787507))

(assert (=> b!4198689 m!4787507))

(declare-fun m!4787515 () Bool)

(assert (=> b!4198689 m!4787515))

(declare-fun m!4787517 () Bool)

(assert (=> bm!292536 m!4787517))

(assert (=> b!4198576 d!1238095))

(declare-fun b!4198711 () Bool)

(declare-fun res!1724185 () Bool)

(declare-fun e!2606271 () Bool)

(assert (=> b!4198711 (=> (not res!1724185) (not e!2606271))))

(declare-fun head!8911 (List!46237) C!25390)

(assert (=> b!4198711 (= res!1724185 (= (head!8911 pBis!107) (head!8911 input!3342)))))

(declare-fun b!4198712 () Bool)

(declare-fun tail!6758 (List!46237) List!46237)

(assert (=> b!4198712 (= e!2606271 (isPrefix!4552 (tail!6758 pBis!107) (tail!6758 input!3342)))))

(declare-fun b!4198713 () Bool)

(declare-fun e!2606272 () Bool)

(assert (=> b!4198713 (= e!2606272 (>= (size!33901 input!3342) (size!33901 pBis!107)))))

(declare-fun d!1238099 () Bool)

(assert (=> d!1238099 e!2606272))

(declare-fun res!1724182 () Bool)

(assert (=> d!1238099 (=> res!1724182 e!2606272)))

(declare-fun lt!1495820 () Bool)

(assert (=> d!1238099 (= res!1724182 (not lt!1495820))))

(declare-fun e!2606270 () Bool)

(assert (=> d!1238099 (= lt!1495820 e!2606270)))

(declare-fun res!1724184 () Bool)

(assert (=> d!1238099 (=> res!1724184 e!2606270)))

(assert (=> d!1238099 (= res!1724184 (is-Nil!46113 pBis!107))))

(assert (=> d!1238099 (= (isPrefix!4552 pBis!107 input!3342) lt!1495820)))

(declare-fun b!4198710 () Bool)

(assert (=> b!4198710 (= e!2606270 e!2606271)))

(declare-fun res!1724183 () Bool)

(assert (=> b!4198710 (=> (not res!1724183) (not e!2606271))))

(assert (=> b!4198710 (= res!1724183 (not (is-Nil!46113 input!3342)))))

(assert (= (and d!1238099 (not res!1724184)) b!4198710))

(assert (= (and b!4198710 res!1724183) b!4198711))

(assert (= (and b!4198711 res!1724185) b!4198712))

(assert (= (and d!1238099 (not res!1724182)) b!4198713))

(declare-fun m!4787519 () Bool)

(assert (=> b!4198711 m!4787519))

(declare-fun m!4787521 () Bool)

(assert (=> b!4198711 m!4787521))

(declare-fun m!4787523 () Bool)

(assert (=> b!4198712 m!4787523))

(declare-fun m!4787525 () Bool)

(assert (=> b!4198712 m!4787525))

(assert (=> b!4198712 m!4787523))

(assert (=> b!4198712 m!4787525))

(declare-fun m!4787527 () Bool)

(assert (=> b!4198712 m!4787527))

(assert (=> b!4198713 m!4787367))

(assert (=> b!4198713 m!4787337))

(assert (=> b!4198565 d!1238099))

(declare-fun d!1238101 () Bool)

(declare-fun lt!1495824 () Int)

(assert (=> d!1238101 (>= lt!1495824 0)))

(declare-fun e!2606278 () Int)

(assert (=> d!1238101 (= lt!1495824 e!2606278)))

(declare-fun c!716061 () Bool)

(assert (=> d!1238101 (= c!716061 (is-Nil!46113 pBis!107))))

(assert (=> d!1238101 (= (size!33901 pBis!107) lt!1495824)))

(declare-fun b!4198722 () Bool)

(assert (=> b!4198722 (= e!2606278 0)))

(declare-fun b!4198723 () Bool)

(assert (=> b!4198723 (= e!2606278 (+ 1 (size!33901 (t!346692 pBis!107))))))

(assert (= (and d!1238101 c!716061) b!4198722))

(assert (= (and d!1238101 (not c!716061)) b!4198723))

(declare-fun m!4787539 () Bool)

(assert (=> b!4198723 m!4787539))

(assert (=> b!4198566 d!1238101))

(declare-fun d!1238105 () Bool)

(assert (=> d!1238105 (= (isEmpty!27312 lt!1495737) (not (is-Some!9888 lt!1495737)))))

(assert (=> b!4198555 d!1238105))

(declare-fun d!1238107 () Bool)

(assert (=> d!1238107 (ruleValid!3413 thiss!25986 rBis!167)))

(declare-fun lt!1495827 () Unit!65216)

(declare-fun choose!25756 (LexerInterface!7288 Rule!15190 List!46238) Unit!65216)

(assert (=> d!1238107 (= lt!1495827 (choose!25756 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1238107 (contains!9506 rules!3843 rBis!167)))

(assert (=> d!1238107 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2419 thiss!25986 rBis!167 rules!3843) lt!1495827)))

(declare-fun bs!596888 () Bool)

(assert (= bs!596888 d!1238107))

(assert (=> bs!596888 m!4787327))

(declare-fun m!4787541 () Bool)

(assert (=> bs!596888 m!4787541))

(assert (=> bs!596888 m!4787387))

(assert (=> b!4198555 d!1238107))

(declare-fun b!4198742 () Bool)

(declare-fun e!2606287 () Bool)

(declare-fun e!2606288 () Bool)

(assert (=> b!4198742 (= e!2606287 e!2606288)))

(declare-fun res!1724204 () Bool)

(assert (=> b!4198742 (=> (not res!1724204) (not e!2606288))))

(declare-fun lt!1495840 () Option!9889)

(assert (=> b!4198742 (= res!1724204 (matchR!6339 (regex!7695 rBis!167) (list!16673 (charsOf!5130 (_1!25086 (get!15002 lt!1495840))))))))

(declare-fun b!4198743 () Bool)

(declare-fun res!1724206 () Bool)

(assert (=> b!4198743 (=> (not res!1724206) (not e!2606288))))

(assert (=> b!4198743 (= res!1724206 (= (++!11767 (list!16673 (charsOf!5130 (_1!25086 (get!15002 lt!1495840)))) (_2!25086 (get!15002 lt!1495840))) input!3342))))

(declare-fun b!4198744 () Bool)

(declare-fun res!1724210 () Bool)

(assert (=> b!4198744 (=> (not res!1724210) (not e!2606288))))

(assert (=> b!4198744 (= res!1724210 (< (size!33901 (_2!25086 (get!15002 lt!1495840))) (size!33901 input!3342)))))

(declare-fun b!4198745 () Bool)

(declare-fun e!2606289 () Bool)

(declare-datatypes ((tuple2!43908 0))(
  ( (tuple2!43909 (_1!25088 List!46237) (_2!25088 List!46237)) )
))
(declare-fun findLongestMatchInner!1624 (Regex!12600 List!46237 Int List!46237 List!46237 Int) tuple2!43908)

(assert (=> b!4198745 (= e!2606289 (matchR!6339 (regex!7695 rBis!167) (_1!25088 (findLongestMatchInner!1624 (regex!7695 rBis!167) Nil!46113 (size!33901 Nil!46113) input!3342 input!3342 (size!33901 input!3342)))))))

(declare-fun b!4198747 () Bool)

(assert (=> b!4198747 (= e!2606288 (= (size!33900 (_1!25086 (get!15002 lt!1495840))) (size!33901 (originalCharacters!8083 (_1!25086 (get!15002 lt!1495840))))))))

(declare-fun b!4198748 () Bool)

(declare-fun res!1724205 () Bool)

(assert (=> b!4198748 (=> (not res!1724205) (not e!2606288))))

(assert (=> b!4198748 (= res!1724205 (= (rule!10795 (_1!25086 (get!15002 lt!1495840))) rBis!167))))

(declare-fun b!4198749 () Bool)

(declare-fun e!2606290 () Option!9889)

(declare-fun lt!1495839 () tuple2!43908)

(assert (=> b!4198749 (= e!2606290 (Some!9888 (tuple2!43905 (Token!14105 (apply!10660 (transformation!7695 rBis!167) (seqFromList!5720 (_1!25088 lt!1495839))) rBis!167 (size!33902 (seqFromList!5720 (_1!25088 lt!1495839))) (_1!25088 lt!1495839)) (_2!25088 lt!1495839))))))

(declare-fun lt!1495841 () Unit!65216)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1597 (Regex!12600 List!46237) Unit!65216)

(assert (=> b!4198749 (= lt!1495841 (longestMatchIsAcceptedByMatchOrIsEmpty!1597 (regex!7695 rBis!167) input!3342))))

(declare-fun res!1724208 () Bool)

(declare-fun isEmpty!27316 (List!46237) Bool)

(assert (=> b!4198749 (= res!1724208 (isEmpty!27316 (_1!25088 (findLongestMatchInner!1624 (regex!7695 rBis!167) Nil!46113 (size!33901 Nil!46113) input!3342 input!3342 (size!33901 input!3342)))))))

(assert (=> b!4198749 (=> res!1724208 e!2606289)))

(assert (=> b!4198749 e!2606289))

(declare-fun lt!1495838 () Unit!65216)

(assert (=> b!4198749 (= lt!1495838 lt!1495841)))

(declare-fun lt!1495842 () Unit!65216)

(assert (=> b!4198749 (= lt!1495842 (lemmaSemiInverse!2461 (transformation!7695 rBis!167) (seqFromList!5720 (_1!25088 lt!1495839))))))

(declare-fun b!4198750 () Bool)

(assert (=> b!4198750 (= e!2606290 None!9888)))

(declare-fun b!4198746 () Bool)

(declare-fun res!1724209 () Bool)

(assert (=> b!4198746 (=> (not res!1724209) (not e!2606288))))

(assert (=> b!4198746 (= res!1724209 (= (value!239841 (_1!25086 (get!15002 lt!1495840))) (apply!10660 (transformation!7695 (rule!10795 (_1!25086 (get!15002 lt!1495840)))) (seqFromList!5720 (originalCharacters!8083 (_1!25086 (get!15002 lt!1495840)))))))))

(declare-fun d!1238109 () Bool)

(assert (=> d!1238109 e!2606287))

(declare-fun res!1724207 () Bool)

(assert (=> d!1238109 (=> res!1724207 e!2606287)))

(assert (=> d!1238109 (= res!1724207 (isEmpty!27312 lt!1495840))))

(assert (=> d!1238109 (= lt!1495840 e!2606290)))

(declare-fun c!716064 () Bool)

(assert (=> d!1238109 (= c!716064 (isEmpty!27316 (_1!25088 lt!1495839)))))

(declare-fun findLongestMatch!1537 (Regex!12600 List!46237) tuple2!43908)

(assert (=> d!1238109 (= lt!1495839 (findLongestMatch!1537 (regex!7695 rBis!167) input!3342))))

(assert (=> d!1238109 (ruleValid!3413 thiss!25986 rBis!167)))

(assert (=> d!1238109 (= (maxPrefixOneRule!3297 thiss!25986 rBis!167 input!3342) lt!1495840)))

(assert (= (and d!1238109 c!716064) b!4198750))

(assert (= (and d!1238109 (not c!716064)) b!4198749))

(assert (= (and b!4198749 (not res!1724208)) b!4198745))

(assert (= (and d!1238109 (not res!1724207)) b!4198742))

(assert (= (and b!4198742 res!1724204) b!4198743))

(assert (= (and b!4198743 res!1724206) b!4198744))

(assert (= (and b!4198744 res!1724210) b!4198748))

(assert (= (and b!4198748 res!1724205) b!4198746))

(assert (= (and b!4198746 res!1724209) b!4198747))

(declare-fun m!4787543 () Bool)

(assert (=> d!1238109 m!4787543))

(declare-fun m!4787545 () Bool)

(assert (=> d!1238109 m!4787545))

(declare-fun m!4787547 () Bool)

(assert (=> d!1238109 m!4787547))

(assert (=> d!1238109 m!4787327))

(declare-fun m!4787549 () Bool)

(assert (=> b!4198744 m!4787549))

(declare-fun m!4787551 () Bool)

(assert (=> b!4198744 m!4787551))

(assert (=> b!4198744 m!4787367))

(assert (=> b!4198742 m!4787549))

(declare-fun m!4787553 () Bool)

(assert (=> b!4198742 m!4787553))

(assert (=> b!4198742 m!4787553))

(declare-fun m!4787555 () Bool)

(assert (=> b!4198742 m!4787555))

(assert (=> b!4198742 m!4787555))

(declare-fun m!4787557 () Bool)

(assert (=> b!4198742 m!4787557))

(declare-fun m!4787559 () Bool)

(assert (=> b!4198745 m!4787559))

(assert (=> b!4198745 m!4787367))

(assert (=> b!4198745 m!4787559))

(assert (=> b!4198745 m!4787367))

(declare-fun m!4787561 () Bool)

(assert (=> b!4198745 m!4787561))

(declare-fun m!4787563 () Bool)

(assert (=> b!4198745 m!4787563))

(assert (=> b!4198746 m!4787549))

(declare-fun m!4787565 () Bool)

(assert (=> b!4198746 m!4787565))

(assert (=> b!4198746 m!4787565))

(declare-fun m!4787567 () Bool)

(assert (=> b!4198746 m!4787567))

(assert (=> b!4198747 m!4787549))

(declare-fun m!4787569 () Bool)

(assert (=> b!4198747 m!4787569))

(declare-fun m!4787571 () Bool)

(assert (=> b!4198749 m!4787571))

(assert (=> b!4198749 m!4787571))

(declare-fun m!4787573 () Bool)

(assert (=> b!4198749 m!4787573))

(assert (=> b!4198749 m!4787367))

(assert (=> b!4198749 m!4787571))

(declare-fun m!4787575 () Bool)

(assert (=> b!4198749 m!4787575))

(assert (=> b!4198749 m!4787571))

(declare-fun m!4787577 () Bool)

(assert (=> b!4198749 m!4787577))

(declare-fun m!4787579 () Bool)

(assert (=> b!4198749 m!4787579))

(declare-fun m!4787581 () Bool)

(assert (=> b!4198749 m!4787581))

(assert (=> b!4198749 m!4787559))

(assert (=> b!4198749 m!4787367))

(assert (=> b!4198749 m!4787561))

(assert (=> b!4198749 m!4787559))

(assert (=> b!4198748 m!4787549))

(assert (=> b!4198743 m!4787549))

(assert (=> b!4198743 m!4787553))

(assert (=> b!4198743 m!4787553))

(assert (=> b!4198743 m!4787555))

(assert (=> b!4198743 m!4787555))

(declare-fun m!4787583 () Bool)

(assert (=> b!4198743 m!4787583))

(assert (=> b!4198555 d!1238109))

(declare-fun d!1238111 () Bool)

(assert (=> d!1238111 (<= (size!33901 pBis!107) (size!33901 input!3342))))

(declare-fun lt!1495845 () Unit!65216)

(declare-fun choose!25757 (List!46237 List!46237) Unit!65216)

(assert (=> d!1238111 (= lt!1495845 (choose!25757 pBis!107 input!3342))))

(assert (=> d!1238111 (isPrefix!4552 pBis!107 input!3342)))

(assert (=> d!1238111 (= (lemmaIsPrefixThenSmallerEqSize!582 pBis!107 input!3342) lt!1495845)))

(declare-fun bs!596889 () Bool)

(assert (= bs!596889 d!1238111))

(assert (=> bs!596889 m!4787337))

(assert (=> bs!596889 m!4787367))

(declare-fun m!4787585 () Bool)

(assert (=> bs!596889 m!4787585))

(assert (=> bs!596889 m!4787333))

(assert (=> b!4198555 d!1238111))

(declare-fun d!1238113 () Bool)

(declare-fun lt!1495846 () Int)

(assert (=> d!1238113 (>= lt!1495846 0)))

(declare-fun e!2606291 () Int)

(assert (=> d!1238113 (= lt!1495846 e!2606291)))

(declare-fun c!716065 () Bool)

(assert (=> d!1238113 (= c!716065 (is-Nil!46113 input!3342))))

(assert (=> d!1238113 (= (size!33901 input!3342) lt!1495846)))

(declare-fun b!4198751 () Bool)

(assert (=> b!4198751 (= e!2606291 0)))

(declare-fun b!4198752 () Bool)

(assert (=> b!4198752 (= e!2606291 (+ 1 (size!33901 (t!346692 input!3342))))))

(assert (= (and d!1238113 c!716065) b!4198751))

(assert (= (and d!1238113 (not c!716065)) b!4198752))

(declare-fun m!4787587 () Bool)

(assert (=> b!4198752 m!4787587))

(assert (=> b!4198555 d!1238113))

(declare-fun d!1238115 () Bool)

(assert (=> d!1238115 (= (inv!60674 (tag!8559 (h!51534 rules!3843))) (= (mod (str.len (value!239840 (tag!8559 (h!51534 rules!3843)))) 2) 0))))

(assert (=> b!4198564 d!1238115))

(declare-fun d!1238117 () Bool)

(declare-fun res!1724215 () Bool)

(declare-fun e!2606298 () Bool)

(assert (=> d!1238117 (=> (not res!1724215) (not e!2606298))))

(declare-fun semiInverseModEq!3343 (Int Int) Bool)

(assert (=> d!1238117 (= res!1724215 (semiInverseModEq!3343 (toChars!10254 (transformation!7695 (h!51534 rules!3843))) (toValue!10395 (transformation!7695 (h!51534 rules!3843)))))))

(assert (=> d!1238117 (= (inv!60677 (transformation!7695 (h!51534 rules!3843))) e!2606298)))

(declare-fun b!4198761 () Bool)

(declare-fun equivClasses!3242 (Int Int) Bool)

(assert (=> b!4198761 (= e!2606298 (equivClasses!3242 (toChars!10254 (transformation!7695 (h!51534 rules!3843))) (toValue!10395 (transformation!7695 (h!51534 rules!3843)))))))

(assert (= (and d!1238117 res!1724215) b!4198761))

(declare-fun m!4787589 () Bool)

(assert (=> d!1238117 m!4787589))

(declare-fun m!4787591 () Bool)

(assert (=> b!4198761 m!4787591))

(assert (=> b!4198564 d!1238117))

(declare-fun b!4198765 () Bool)

(declare-fun res!1724223 () Bool)

(declare-fun e!2606302 () Bool)

(assert (=> b!4198765 (=> (not res!1724223) (not e!2606302))))

(assert (=> b!4198765 (= res!1724223 (= (head!8911 p!2959) (head!8911 input!3342)))))

(declare-fun b!4198766 () Bool)

(assert (=> b!4198766 (= e!2606302 (isPrefix!4552 (tail!6758 p!2959) (tail!6758 input!3342)))))

(declare-fun b!4198767 () Bool)

(declare-fun e!2606303 () Bool)

(assert (=> b!4198767 (= e!2606303 (>= (size!33901 input!3342) (size!33901 p!2959)))))

(declare-fun d!1238119 () Bool)

(assert (=> d!1238119 e!2606303))

(declare-fun res!1724220 () Bool)

(assert (=> d!1238119 (=> res!1724220 e!2606303)))

(declare-fun lt!1495857 () Bool)

(assert (=> d!1238119 (= res!1724220 (not lt!1495857))))

(declare-fun e!2606301 () Bool)

(assert (=> d!1238119 (= lt!1495857 e!2606301)))

(declare-fun res!1724222 () Bool)

(assert (=> d!1238119 (=> res!1724222 e!2606301)))

(assert (=> d!1238119 (= res!1724222 (is-Nil!46113 p!2959))))

(assert (=> d!1238119 (= (isPrefix!4552 p!2959 input!3342) lt!1495857)))

(declare-fun b!4198764 () Bool)

(assert (=> b!4198764 (= e!2606301 e!2606302)))

(declare-fun res!1724221 () Bool)

(assert (=> b!4198764 (=> (not res!1724221) (not e!2606302))))

(assert (=> b!4198764 (= res!1724221 (not (is-Nil!46113 input!3342)))))

(assert (= (and d!1238119 (not res!1724222)) b!4198764))

(assert (= (and b!4198764 res!1724221) b!4198765))

(assert (= (and b!4198765 res!1724223) b!4198766))

(assert (= (and d!1238119 (not res!1724220)) b!4198767))

(declare-fun m!4787593 () Bool)

(assert (=> b!4198765 m!4787593))

(assert (=> b!4198765 m!4787521))

(declare-fun m!4787595 () Bool)

(assert (=> b!4198766 m!4787595))

(assert (=> b!4198766 m!4787525))

(assert (=> b!4198766 m!4787595))

(assert (=> b!4198766 m!4787525))

(declare-fun m!4787597 () Bool)

(assert (=> b!4198766 m!4787597))

(assert (=> b!4198767 m!4787367))

(assert (=> b!4198767 m!4787405))

(assert (=> b!4198553 d!1238119))

(declare-fun d!1238121 () Bool)

(assert (=> d!1238121 (= (inv!60674 (tag!8559 rBis!167)) (= (mod (str.len (value!239840 (tag!8559 rBis!167))) 2) 0))))

(assert (=> b!4198575 d!1238121))

(declare-fun d!1238123 () Bool)

(declare-fun res!1724232 () Bool)

(declare-fun e!2606304 () Bool)

(assert (=> d!1238123 (=> (not res!1724232) (not e!2606304))))

(assert (=> d!1238123 (= res!1724232 (semiInverseModEq!3343 (toChars!10254 (transformation!7695 rBis!167)) (toValue!10395 (transformation!7695 rBis!167))))))

(assert (=> d!1238123 (= (inv!60677 (transformation!7695 rBis!167)) e!2606304)))

(declare-fun b!4198776 () Bool)

(assert (=> b!4198776 (= e!2606304 (equivClasses!3242 (toChars!10254 (transformation!7695 rBis!167)) (toValue!10395 (transformation!7695 rBis!167))))))

(assert (= (and d!1238123 res!1724232) b!4198776))

(declare-fun m!4787599 () Bool)

(assert (=> d!1238123 m!4787599))

(declare-fun m!4787601 () Bool)

(assert (=> b!4198776 m!4787601))

(assert (=> b!4198575 d!1238123))

(declare-fun d!1238125 () Bool)

(declare-fun lt!1495860 () List!46237)

(assert (=> d!1238125 (= (++!11767 p!2959 lt!1495860) input!3342)))

(declare-fun e!2606307 () List!46237)

(assert (=> d!1238125 (= lt!1495860 e!2606307)))

(declare-fun c!716070 () Bool)

(assert (=> d!1238125 (= c!716070 (is-Cons!46113 p!2959))))

(assert (=> d!1238125 (>= (size!33901 input!3342) (size!33901 p!2959))))

(assert (=> d!1238125 (= (getSuffix!2845 input!3342 p!2959) lt!1495860)))

(declare-fun b!4198783 () Bool)

(assert (=> b!4198783 (= e!2606307 (getSuffix!2845 (tail!6758 input!3342) (t!346692 p!2959)))))

(declare-fun b!4198784 () Bool)

(assert (=> b!4198784 (= e!2606307 input!3342)))

(assert (= (and d!1238125 c!716070) b!4198783))

(assert (= (and d!1238125 (not c!716070)) b!4198784))

(declare-fun m!4787603 () Bool)

(assert (=> d!1238125 m!4787603))

(assert (=> d!1238125 m!4787367))

(assert (=> d!1238125 m!4787405))

(assert (=> b!4198783 m!4787525))

(assert (=> b!4198783 m!4787525))

(declare-fun m!4787605 () Bool)

(assert (=> b!4198783 m!4787605))

(assert (=> b!4198573 d!1238125))

(declare-fun b!4198786 () Bool)

(declare-fun res!1724236 () Bool)

(declare-fun e!2606309 () Bool)

(assert (=> b!4198786 (=> (not res!1724236) (not e!2606309))))

(assert (=> b!4198786 (= res!1724236 (= (head!8911 input!3342) (head!8911 input!3342)))))

(declare-fun b!4198787 () Bool)

(assert (=> b!4198787 (= e!2606309 (isPrefix!4552 (tail!6758 input!3342) (tail!6758 input!3342)))))

(declare-fun b!4198788 () Bool)

(declare-fun e!2606310 () Bool)

(assert (=> b!4198788 (= e!2606310 (>= (size!33901 input!3342) (size!33901 input!3342)))))

(declare-fun d!1238127 () Bool)

(assert (=> d!1238127 e!2606310))

(declare-fun res!1724233 () Bool)

(assert (=> d!1238127 (=> res!1724233 e!2606310)))

(declare-fun lt!1495861 () Bool)

(assert (=> d!1238127 (= res!1724233 (not lt!1495861))))

(declare-fun e!2606308 () Bool)

(assert (=> d!1238127 (= lt!1495861 e!2606308)))

(declare-fun res!1724235 () Bool)

(assert (=> d!1238127 (=> res!1724235 e!2606308)))

(assert (=> d!1238127 (= res!1724235 (is-Nil!46113 input!3342))))

(assert (=> d!1238127 (= (isPrefix!4552 input!3342 input!3342) lt!1495861)))

(declare-fun b!4198785 () Bool)

(assert (=> b!4198785 (= e!2606308 e!2606309)))

(declare-fun res!1724234 () Bool)

(assert (=> b!4198785 (=> (not res!1724234) (not e!2606309))))

(assert (=> b!4198785 (= res!1724234 (not (is-Nil!46113 input!3342)))))

(assert (= (and d!1238127 (not res!1724235)) b!4198785))

(assert (= (and b!4198785 res!1724234) b!4198786))

(assert (= (and b!4198786 res!1724236) b!4198787))

(assert (= (and d!1238127 (not res!1724233)) b!4198788))

(assert (=> b!4198786 m!4787521))

(assert (=> b!4198786 m!4787521))

(assert (=> b!4198787 m!4787525))

(assert (=> b!4198787 m!4787525))

(assert (=> b!4198787 m!4787525))

(assert (=> b!4198787 m!4787525))

(declare-fun m!4787607 () Bool)

(assert (=> b!4198787 m!4787607))

(assert (=> b!4198788 m!4787367))

(assert (=> b!4198788 m!4787367))

(assert (=> b!4198573 d!1238127))

(declare-fun d!1238129 () Bool)

(declare-fun fromListB!2626 (List!46237) BalanceConc!27406)

(assert (=> d!1238129 (= (seqFromList!5720 p!2959) (fromListB!2626 p!2959))))

(declare-fun bs!596890 () Bool)

(assert (= bs!596890 d!1238129))

(declare-fun m!4787609 () Bool)

(assert (=> bs!596890 m!4787609))

(assert (=> b!4198573 d!1238129))

(declare-fun d!1238131 () Bool)

(assert (=> d!1238131 (isPrefix!4552 input!3342 input!3342)))

(declare-fun lt!1495864 () Unit!65216)

(declare-fun choose!25758 (List!46237 List!46237) Unit!65216)

(assert (=> d!1238131 (= lt!1495864 (choose!25758 input!3342 input!3342))))

(assert (=> d!1238131 (= (lemmaIsPrefixRefl!2981 input!3342 input!3342) lt!1495864)))

(declare-fun bs!596891 () Bool)

(assert (= bs!596891 d!1238131))

(assert (=> bs!596891 m!4787397))

(declare-fun m!4787611 () Bool)

(assert (=> bs!596891 m!4787611))

(assert (=> b!4198573 d!1238131))

(declare-fun b!4198789 () Bool)

(declare-fun e!2606311 () Bool)

(declare-fun e!2606312 () Bool)

(assert (=> b!4198789 (= e!2606311 e!2606312)))

(declare-fun res!1724237 () Bool)

(assert (=> b!4198789 (=> (not res!1724237) (not e!2606312))))

(declare-fun lt!1495867 () Option!9889)

(assert (=> b!4198789 (= res!1724237 (matchR!6339 (regex!7695 r!4142) (list!16673 (charsOf!5130 (_1!25086 (get!15002 lt!1495867))))))))

(declare-fun b!4198790 () Bool)

(declare-fun res!1724239 () Bool)

(assert (=> b!4198790 (=> (not res!1724239) (not e!2606312))))

(assert (=> b!4198790 (= res!1724239 (= (++!11767 (list!16673 (charsOf!5130 (_1!25086 (get!15002 lt!1495867)))) (_2!25086 (get!15002 lt!1495867))) input!3342))))

(declare-fun b!4198791 () Bool)

(declare-fun res!1724243 () Bool)

(assert (=> b!4198791 (=> (not res!1724243) (not e!2606312))))

(assert (=> b!4198791 (= res!1724243 (< (size!33901 (_2!25086 (get!15002 lt!1495867))) (size!33901 input!3342)))))

(declare-fun b!4198792 () Bool)

(declare-fun e!2606313 () Bool)

(assert (=> b!4198792 (= e!2606313 (matchR!6339 (regex!7695 r!4142) (_1!25088 (findLongestMatchInner!1624 (regex!7695 r!4142) Nil!46113 (size!33901 Nil!46113) input!3342 input!3342 (size!33901 input!3342)))))))

(declare-fun b!4198794 () Bool)

(assert (=> b!4198794 (= e!2606312 (= (size!33900 (_1!25086 (get!15002 lt!1495867))) (size!33901 (originalCharacters!8083 (_1!25086 (get!15002 lt!1495867))))))))

(declare-fun b!4198795 () Bool)

(declare-fun res!1724238 () Bool)

(assert (=> b!4198795 (=> (not res!1724238) (not e!2606312))))

(assert (=> b!4198795 (= res!1724238 (= (rule!10795 (_1!25086 (get!15002 lt!1495867))) r!4142))))

(declare-fun b!4198796 () Bool)

(declare-fun e!2606314 () Option!9889)

(declare-fun lt!1495866 () tuple2!43908)

(assert (=> b!4198796 (= e!2606314 (Some!9888 (tuple2!43905 (Token!14105 (apply!10660 (transformation!7695 r!4142) (seqFromList!5720 (_1!25088 lt!1495866))) r!4142 (size!33902 (seqFromList!5720 (_1!25088 lt!1495866))) (_1!25088 lt!1495866)) (_2!25088 lt!1495866))))))

(declare-fun lt!1495868 () Unit!65216)

(assert (=> b!4198796 (= lt!1495868 (longestMatchIsAcceptedByMatchOrIsEmpty!1597 (regex!7695 r!4142) input!3342))))

(declare-fun res!1724241 () Bool)

(assert (=> b!4198796 (= res!1724241 (isEmpty!27316 (_1!25088 (findLongestMatchInner!1624 (regex!7695 r!4142) Nil!46113 (size!33901 Nil!46113) input!3342 input!3342 (size!33901 input!3342)))))))

(assert (=> b!4198796 (=> res!1724241 e!2606313)))

(assert (=> b!4198796 e!2606313))

(declare-fun lt!1495865 () Unit!65216)

(assert (=> b!4198796 (= lt!1495865 lt!1495868)))

(declare-fun lt!1495869 () Unit!65216)

(assert (=> b!4198796 (= lt!1495869 (lemmaSemiInverse!2461 (transformation!7695 r!4142) (seqFromList!5720 (_1!25088 lt!1495866))))))

(declare-fun b!4198797 () Bool)

(assert (=> b!4198797 (= e!2606314 None!9888)))

(declare-fun b!4198793 () Bool)

(declare-fun res!1724242 () Bool)

(assert (=> b!4198793 (=> (not res!1724242) (not e!2606312))))

(assert (=> b!4198793 (= res!1724242 (= (value!239841 (_1!25086 (get!15002 lt!1495867))) (apply!10660 (transformation!7695 (rule!10795 (_1!25086 (get!15002 lt!1495867)))) (seqFromList!5720 (originalCharacters!8083 (_1!25086 (get!15002 lt!1495867)))))))))

(declare-fun d!1238133 () Bool)

(assert (=> d!1238133 e!2606311))

(declare-fun res!1724240 () Bool)

(assert (=> d!1238133 (=> res!1724240 e!2606311)))

(assert (=> d!1238133 (= res!1724240 (isEmpty!27312 lt!1495867))))

(assert (=> d!1238133 (= lt!1495867 e!2606314)))

(declare-fun c!716071 () Bool)

(assert (=> d!1238133 (= c!716071 (isEmpty!27316 (_1!25088 lt!1495866)))))

(assert (=> d!1238133 (= lt!1495866 (findLongestMatch!1537 (regex!7695 r!4142) input!3342))))

(assert (=> d!1238133 (ruleValid!3413 thiss!25986 r!4142)))

(assert (=> d!1238133 (= (maxPrefixOneRule!3297 thiss!25986 r!4142 input!3342) lt!1495867)))

(assert (= (and d!1238133 c!716071) b!4198797))

(assert (= (and d!1238133 (not c!716071)) b!4198796))

(assert (= (and b!4198796 (not res!1724241)) b!4198792))

(assert (= (and d!1238133 (not res!1724240)) b!4198789))

(assert (= (and b!4198789 res!1724237) b!4198790))

(assert (= (and b!4198790 res!1724239) b!4198791))

(assert (= (and b!4198791 res!1724243) b!4198795))

(assert (= (and b!4198795 res!1724238) b!4198793))

(assert (= (and b!4198793 res!1724242) b!4198794))

(declare-fun m!4787613 () Bool)

(assert (=> d!1238133 m!4787613))

(declare-fun m!4787615 () Bool)

(assert (=> d!1238133 m!4787615))

(declare-fun m!4787617 () Bool)

(assert (=> d!1238133 m!4787617))

(assert (=> d!1238133 m!4787389))

(declare-fun m!4787619 () Bool)

(assert (=> b!4198791 m!4787619))

(declare-fun m!4787621 () Bool)

(assert (=> b!4198791 m!4787621))

(assert (=> b!4198791 m!4787367))

(assert (=> b!4198789 m!4787619))

(declare-fun m!4787623 () Bool)

(assert (=> b!4198789 m!4787623))

(assert (=> b!4198789 m!4787623))

(declare-fun m!4787625 () Bool)

(assert (=> b!4198789 m!4787625))

(assert (=> b!4198789 m!4787625))

(declare-fun m!4787627 () Bool)

(assert (=> b!4198789 m!4787627))

(assert (=> b!4198792 m!4787559))

(assert (=> b!4198792 m!4787367))

(assert (=> b!4198792 m!4787559))

(assert (=> b!4198792 m!4787367))

(declare-fun m!4787629 () Bool)

(assert (=> b!4198792 m!4787629))

(declare-fun m!4787631 () Bool)

(assert (=> b!4198792 m!4787631))

(assert (=> b!4198793 m!4787619))

(declare-fun m!4787633 () Bool)

(assert (=> b!4198793 m!4787633))

(assert (=> b!4198793 m!4787633))

(declare-fun m!4787635 () Bool)

(assert (=> b!4198793 m!4787635))

(assert (=> b!4198794 m!4787619))

(declare-fun m!4787637 () Bool)

(assert (=> b!4198794 m!4787637))

(declare-fun m!4787639 () Bool)

(assert (=> b!4198796 m!4787639))

(assert (=> b!4198796 m!4787639))

(declare-fun m!4787641 () Bool)

(assert (=> b!4198796 m!4787641))

(assert (=> b!4198796 m!4787367))

(assert (=> b!4198796 m!4787639))

(declare-fun m!4787643 () Bool)

(assert (=> b!4198796 m!4787643))

(assert (=> b!4198796 m!4787639))

(declare-fun m!4787645 () Bool)

(assert (=> b!4198796 m!4787645))

(declare-fun m!4787647 () Bool)

(assert (=> b!4198796 m!4787647))

(declare-fun m!4787649 () Bool)

(assert (=> b!4198796 m!4787649))

(assert (=> b!4198796 m!4787559))

(assert (=> b!4198796 m!4787367))

(assert (=> b!4198796 m!4787629))

(assert (=> b!4198796 m!4787559))

(assert (=> b!4198795 m!4787619))

(assert (=> b!4198790 m!4787619))

(assert (=> b!4198790 m!4787623))

(assert (=> b!4198790 m!4787623))

(assert (=> b!4198790 m!4787625))

(assert (=> b!4198790 m!4787625))

(declare-fun m!4787651 () Bool)

(assert (=> b!4198790 m!4787651))

(assert (=> b!4198573 d!1238133))

(declare-fun d!1238135 () Bool)

(declare-fun dynLambda!19894 (Int BalanceConc!27406) TokenValue!7925)

(assert (=> d!1238135 (= (apply!10660 (transformation!7695 r!4142) lt!1495721) (dynLambda!19894 (toValue!10395 (transformation!7695 r!4142)) lt!1495721))))

(declare-fun b_lambda!123591 () Bool)

(assert (=> (not b_lambda!123591) (not d!1238135)))

(declare-fun tb!251667 () Bool)

(declare-fun t!346698 () Bool)

(assert (=> (and b!4198559 (= (toValue!10395 (transformation!7695 (h!51534 rules!3843))) (toValue!10395 (transformation!7695 r!4142))) t!346698) tb!251667))

(declare-fun result!306756 () Bool)

(declare-fun inv!21 (TokenValue!7925) Bool)

(assert (=> tb!251667 (= result!306756 (inv!21 (dynLambda!19894 (toValue!10395 (transformation!7695 r!4142)) lt!1495721)))))

(declare-fun m!4787653 () Bool)

(assert (=> tb!251667 m!4787653))

(assert (=> d!1238135 t!346698))

(declare-fun b_and!329401 () Bool)

(assert (= b_and!329377 (and (=> t!346698 result!306756) b_and!329401)))

(declare-fun t!346700 () Bool)

(declare-fun tb!251669 () Bool)

(assert (=> (and b!4198562 (= (toValue!10395 (transformation!7695 r!4142)) (toValue!10395 (transformation!7695 r!4142))) t!346700) tb!251669))

(declare-fun result!306760 () Bool)

(assert (= result!306760 result!306756))

(assert (=> d!1238135 t!346700))

(declare-fun b_and!329403 () Bool)

(assert (= b_and!329381 (and (=> t!346700 result!306760) b_and!329403)))

(declare-fun t!346702 () Bool)

(declare-fun tb!251671 () Bool)

(assert (=> (and b!4198558 (= (toValue!10395 (transformation!7695 rBis!167)) (toValue!10395 (transformation!7695 r!4142))) t!346702) tb!251671))

(declare-fun result!306762 () Bool)

(assert (= result!306762 result!306756))

(assert (=> d!1238135 t!346702))

(declare-fun b_and!329405 () Bool)

(assert (= b_and!329385 (and (=> t!346702 result!306762) b_and!329405)))

(declare-fun m!4787655 () Bool)

(assert (=> d!1238135 m!4787655))

(assert (=> b!4198573 d!1238135))

(declare-fun d!1238137 () Bool)

(declare-fun lt!1495870 () Int)

(assert (=> d!1238137 (>= lt!1495870 0)))

(declare-fun e!2606318 () Int)

(assert (=> d!1238137 (= lt!1495870 e!2606318)))

(declare-fun c!716072 () Bool)

(assert (=> d!1238137 (= c!716072 (is-Nil!46113 p!2959))))

(assert (=> d!1238137 (= (size!33901 p!2959) lt!1495870)))

(declare-fun b!4198800 () Bool)

(assert (=> b!4198800 (= e!2606318 0)))

(declare-fun b!4198801 () Bool)

(assert (=> b!4198801 (= e!2606318 (+ 1 (size!33901 (t!346692 p!2959))))))

(assert (= (and d!1238137 c!716072) b!4198800))

(assert (= (and d!1238137 (not c!716072)) b!4198801))

(declare-fun m!4787657 () Bool)

(assert (=> b!4198801 m!4787657))

(assert (=> b!4198573 d!1238137))

(declare-fun b!4198951 () Bool)

(declare-fun e!2606405 () Bool)

(assert (=> b!4198951 (= e!2606405 true)))

(declare-fun d!1238139 () Bool)

(assert (=> d!1238139 e!2606405))

(assert (= d!1238139 b!4198951))

(declare-fun lambda!129568 () Int)

(declare-fun order!24457 () Int)

(declare-fun order!24455 () Int)

(declare-fun dynLambda!19895 (Int Int) Int)

(declare-fun dynLambda!19896 (Int Int) Int)

(assert (=> b!4198951 (< (dynLambda!19895 order!24455 (toValue!10395 (transformation!7695 r!4142))) (dynLambda!19896 order!24457 lambda!129568))))

(declare-fun order!24459 () Int)

(declare-fun dynLambda!19897 (Int Int) Int)

(assert (=> b!4198951 (< (dynLambda!19897 order!24459 (toChars!10254 (transformation!7695 r!4142))) (dynLambda!19896 order!24457 lambda!129568))))

(declare-fun dynLambda!19898 (Int TokenValue!7925) BalanceConc!27406)

(assert (=> d!1238139 (= (list!16673 (dynLambda!19898 (toChars!10254 (transformation!7695 r!4142)) (dynLambda!19894 (toValue!10395 (transformation!7695 r!4142)) lt!1495721))) (list!16673 lt!1495721))))

(declare-fun lt!1495925 () Unit!65216)

(declare-fun ForallOf!1077 (Int BalanceConc!27406) Unit!65216)

(assert (=> d!1238139 (= lt!1495925 (ForallOf!1077 lambda!129568 lt!1495721))))

(assert (=> d!1238139 (= (lemmaSemiInverse!2461 (transformation!7695 r!4142) lt!1495721) lt!1495925)))

(declare-fun b_lambda!123593 () Bool)

(assert (=> (not b_lambda!123593) (not d!1238139)))

(declare-fun tb!251673 () Bool)

(declare-fun t!346705 () Bool)

(assert (=> (and b!4198559 (= (toChars!10254 (transformation!7695 (h!51534 rules!3843))) (toChars!10254 (transformation!7695 r!4142))) t!346705) tb!251673))

(declare-fun b!4198956 () Bool)

(declare-fun e!2606408 () Bool)

(declare-fun tp!1282519 () Bool)

(declare-fun inv!60679 (Conc!13906) Bool)

(assert (=> b!4198956 (= e!2606408 (and (inv!60679 (c!716048 (dynLambda!19898 (toChars!10254 (transformation!7695 r!4142)) (dynLambda!19894 (toValue!10395 (transformation!7695 r!4142)) lt!1495721)))) tp!1282519))))

(declare-fun result!306764 () Bool)

(declare-fun inv!60680 (BalanceConc!27406) Bool)

(assert (=> tb!251673 (= result!306764 (and (inv!60680 (dynLambda!19898 (toChars!10254 (transformation!7695 r!4142)) (dynLambda!19894 (toValue!10395 (transformation!7695 r!4142)) lt!1495721))) e!2606408))))

(assert (= tb!251673 b!4198956))

(declare-fun m!4787789 () Bool)

(assert (=> b!4198956 m!4787789))

(declare-fun m!4787791 () Bool)

(assert (=> tb!251673 m!4787791))

(assert (=> d!1238139 t!346705))

(declare-fun b_and!329407 () Bool)

(assert (= b_and!329379 (and (=> t!346705 result!306764) b_and!329407)))

(declare-fun t!346707 () Bool)

(declare-fun tb!251675 () Bool)

(assert (=> (and b!4198562 (= (toChars!10254 (transformation!7695 r!4142)) (toChars!10254 (transformation!7695 r!4142))) t!346707) tb!251675))

(declare-fun result!306768 () Bool)

(assert (= result!306768 result!306764))

(assert (=> d!1238139 t!346707))

(declare-fun b_and!329409 () Bool)

(assert (= b_and!329383 (and (=> t!346707 result!306768) b_and!329409)))

(declare-fun tb!251677 () Bool)

(declare-fun t!346709 () Bool)

(assert (=> (and b!4198558 (= (toChars!10254 (transformation!7695 rBis!167)) (toChars!10254 (transformation!7695 r!4142))) t!346709) tb!251677))

(declare-fun result!306770 () Bool)

(assert (= result!306770 result!306764))

(assert (=> d!1238139 t!346709))

(declare-fun b_and!329411 () Bool)

(assert (= b_and!329387 (and (=> t!346709 result!306770) b_and!329411)))

(declare-fun b_lambda!123595 () Bool)

(assert (=> (not b_lambda!123595) (not d!1238139)))

(assert (=> d!1238139 t!346698))

(declare-fun b_and!329413 () Bool)

(assert (= b_and!329401 (and (=> t!346698 result!306756) b_and!329413)))

(assert (=> d!1238139 t!346700))

(declare-fun b_and!329415 () Bool)

(assert (= b_and!329403 (and (=> t!346700 result!306760) b_and!329415)))

(assert (=> d!1238139 t!346702))

(declare-fun b_and!329417 () Bool)

(assert (= b_and!329405 (and (=> t!346702 result!306762) b_and!329417)))

(declare-fun m!4787793 () Bool)

(assert (=> d!1238139 m!4787793))

(assert (=> d!1238139 m!4787655))

(declare-fun m!4787795 () Bool)

(assert (=> d!1238139 m!4787795))

(assert (=> d!1238139 m!4787655))

(declare-fun m!4787797 () Bool)

(assert (=> d!1238139 m!4787797))

(assert (=> d!1238139 m!4787797))

(declare-fun m!4787799 () Bool)

(assert (=> d!1238139 m!4787799))

(assert (=> b!4198573 d!1238139))

(declare-fun d!1238185 () Bool)

(assert (=> d!1238185 (= (inv!60674 (tag!8559 r!4142)) (= (mod (str.len (value!239840 (tag!8559 r!4142))) 2) 0))))

(assert (=> b!4198574 d!1238185))

(declare-fun d!1238187 () Bool)

(declare-fun res!1724335 () Bool)

(declare-fun e!2606409 () Bool)

(assert (=> d!1238187 (=> (not res!1724335) (not e!2606409))))

(assert (=> d!1238187 (= res!1724335 (semiInverseModEq!3343 (toChars!10254 (transformation!7695 r!4142)) (toValue!10395 (transformation!7695 r!4142))))))

(assert (=> d!1238187 (= (inv!60677 (transformation!7695 r!4142)) e!2606409)))

(declare-fun b!4198957 () Bool)

(assert (=> b!4198957 (= e!2606409 (equivClasses!3242 (toChars!10254 (transformation!7695 r!4142)) (toValue!10395 (transformation!7695 r!4142))))))

(assert (= (and d!1238187 res!1724335) b!4198957))

(declare-fun m!4787801 () Bool)

(assert (=> d!1238187 m!4787801))

(declare-fun m!4787803 () Bool)

(assert (=> b!4198957 m!4787803))

(assert (=> b!4198574 d!1238187))

(declare-fun b!4198986 () Bool)

(declare-fun res!1724354 () Bool)

(declare-fun e!2606424 () Bool)

(assert (=> b!4198986 (=> res!1724354 e!2606424)))

(declare-fun e!2606425 () Bool)

(assert (=> b!4198986 (= res!1724354 e!2606425)))

(declare-fun res!1724357 () Bool)

(assert (=> b!4198986 (=> (not res!1724357) (not e!2606425))))

(declare-fun lt!1495928 () Bool)

(assert (=> b!4198986 (= res!1724357 lt!1495928)))

(declare-fun b!4198987 () Bool)

(declare-fun res!1724352 () Bool)

(assert (=> b!4198987 (=> res!1724352 e!2606424)))

(assert (=> b!4198987 (= res!1724352 (not (is-ElementMatch!12600 (regex!7695 r!4142))))))

(declare-fun e!2606429 () Bool)

(assert (=> b!4198987 (= e!2606429 e!2606424)))

(declare-fun b!4198988 () Bool)

(declare-fun e!2606427 () Bool)

(assert (=> b!4198988 (= e!2606427 e!2606429)))

(declare-fun c!716108 () Bool)

(assert (=> b!4198988 (= c!716108 (is-EmptyLang!12600 (regex!7695 r!4142)))))

(declare-fun b!4198989 () Bool)

(declare-fun e!2606426 () Bool)

(assert (=> b!4198989 (= e!2606426 (not (= (head!8911 p!2959) (c!716049 (regex!7695 r!4142)))))))

(declare-fun b!4198990 () Bool)

(assert (=> b!4198990 (= e!2606429 (not lt!1495928))))

(declare-fun b!4198991 () Bool)

(declare-fun e!2606430 () Bool)

(declare-fun derivativeStep!3824 (Regex!12600 C!25390) Regex!12600)

(assert (=> b!4198991 (= e!2606430 (matchR!6339 (derivativeStep!3824 (regex!7695 r!4142) (head!8911 p!2959)) (tail!6758 p!2959)))))

(declare-fun d!1238189 () Bool)

(assert (=> d!1238189 e!2606427))

(declare-fun c!716110 () Bool)

(assert (=> d!1238189 (= c!716110 (is-EmptyExpr!12600 (regex!7695 r!4142)))))

(assert (=> d!1238189 (= lt!1495928 e!2606430)))

(declare-fun c!716109 () Bool)

(assert (=> d!1238189 (= c!716109 (isEmpty!27316 p!2959))))

(assert (=> d!1238189 (validRegex!5717 (regex!7695 r!4142))))

(assert (=> d!1238189 (= (matchR!6339 (regex!7695 r!4142) p!2959) lt!1495928)))

(declare-fun b!4198992 () Bool)

(declare-fun e!2606428 () Bool)

(assert (=> b!4198992 (= e!2606428 e!2606426)))

(declare-fun res!1724355 () Bool)

(assert (=> b!4198992 (=> res!1724355 e!2606426)))

(declare-fun call!292559 () Bool)

(assert (=> b!4198992 (= res!1724355 call!292559)))

(declare-fun b!4198993 () Bool)

(declare-fun res!1724353 () Bool)

(assert (=> b!4198993 (=> (not res!1724353) (not e!2606425))))

(assert (=> b!4198993 (= res!1724353 (not call!292559))))

(declare-fun b!4198994 () Bool)

(assert (=> b!4198994 (= e!2606427 (= lt!1495928 call!292559))))

(declare-fun b!4198995 () Bool)

(declare-fun res!1724358 () Bool)

(assert (=> b!4198995 (=> (not res!1724358) (not e!2606425))))

(assert (=> b!4198995 (= res!1724358 (isEmpty!27316 (tail!6758 p!2959)))))

(declare-fun b!4198996 () Bool)

(declare-fun res!1724356 () Bool)

(assert (=> b!4198996 (=> res!1724356 e!2606426)))

(assert (=> b!4198996 (= res!1724356 (not (isEmpty!27316 (tail!6758 p!2959))))))

(declare-fun b!4198997 () Bool)

(declare-fun nullable!4434 (Regex!12600) Bool)

(assert (=> b!4198997 (= e!2606430 (nullable!4434 (regex!7695 r!4142)))))

(declare-fun b!4198998 () Bool)

(assert (=> b!4198998 (= e!2606425 (= (head!8911 p!2959) (c!716049 (regex!7695 r!4142))))))

(declare-fun bm!292554 () Bool)

(assert (=> bm!292554 (= call!292559 (isEmpty!27316 p!2959))))

(declare-fun b!4198999 () Bool)

(assert (=> b!4198999 (= e!2606424 e!2606428)))

(declare-fun res!1724359 () Bool)

(assert (=> b!4198999 (=> (not res!1724359) (not e!2606428))))

(assert (=> b!4198999 (= res!1724359 (not lt!1495928))))

(assert (= (and d!1238189 c!716109) b!4198997))

(assert (= (and d!1238189 (not c!716109)) b!4198991))

(assert (= (and d!1238189 c!716110) b!4198994))

(assert (= (and d!1238189 (not c!716110)) b!4198988))

(assert (= (and b!4198988 c!716108) b!4198990))

(assert (= (and b!4198988 (not c!716108)) b!4198987))

(assert (= (and b!4198987 (not res!1724352)) b!4198986))

(assert (= (and b!4198986 res!1724357) b!4198993))

(assert (= (and b!4198993 res!1724353) b!4198995))

(assert (= (and b!4198995 res!1724358) b!4198998))

(assert (= (and b!4198986 (not res!1724354)) b!4198999))

(assert (= (and b!4198999 res!1724359) b!4198992))

(assert (= (and b!4198992 (not res!1724355)) b!4198996))

(assert (= (and b!4198996 (not res!1724356)) b!4198989))

(assert (= (or b!4198994 b!4198992 b!4198993) bm!292554))

(assert (=> b!4198998 m!4787593))

(assert (=> b!4198989 m!4787593))

(assert (=> b!4198996 m!4787595))

(assert (=> b!4198996 m!4787595))

(declare-fun m!4787805 () Bool)

(assert (=> b!4198996 m!4787805))

(declare-fun m!4787807 () Bool)

(assert (=> bm!292554 m!4787807))

(assert (=> b!4198995 m!4787595))

(assert (=> b!4198995 m!4787595))

(assert (=> b!4198995 m!4787805))

(declare-fun m!4787809 () Bool)

(assert (=> b!4198997 m!4787809))

(assert (=> d!1238189 m!4787807))

(assert (=> d!1238189 m!4787381))

(assert (=> b!4198991 m!4787593))

(assert (=> b!4198991 m!4787593))

(declare-fun m!4787811 () Bool)

(assert (=> b!4198991 m!4787811))

(assert (=> b!4198991 m!4787595))

(assert (=> b!4198991 m!4787811))

(assert (=> b!4198991 m!4787595))

(declare-fun m!4787813 () Bool)

(assert (=> b!4198991 m!4787813))

(assert (=> b!4198563 d!1238189))

(declare-fun d!1238191 () Bool)

(declare-fun lt!1495929 () Int)

(assert (=> d!1238191 (>= lt!1495929 0)))

(declare-fun e!2606431 () Int)

(assert (=> d!1238191 (= lt!1495929 e!2606431)))

(declare-fun c!716111 () Bool)

(assert (=> d!1238191 (= c!716111 (is-Nil!46113 lt!1495720))))

(assert (=> d!1238191 (= (size!33901 lt!1495720) lt!1495929)))

(declare-fun b!4199000 () Bool)

(assert (=> b!4199000 (= e!2606431 0)))

(declare-fun b!4199001 () Bool)

(assert (=> b!4199001 (= e!2606431 (+ 1 (size!33901 (t!346692 lt!1495720))))))

(assert (= (and d!1238191 c!716111) b!4199000))

(assert (= (and d!1238191 (not c!716111)) b!4199001))

(declare-fun m!4787815 () Bool)

(assert (=> b!4199001 m!4787815))

(assert (=> b!4198561 d!1238191))

(declare-fun d!1238193 () Bool)

(assert (=> d!1238193 (= pBis!107 lt!1495720)))

(declare-fun lt!1495932 () Unit!65216)

(declare-fun choose!25759 (List!46237 List!46237 List!46237) Unit!65216)

(assert (=> d!1238193 (= lt!1495932 (choose!25759 pBis!107 lt!1495720 input!3342))))

(assert (=> d!1238193 (isPrefix!4552 pBis!107 input!3342)))

(assert (=> d!1238193 (= (lemmaIsPrefixSameLengthThenSameList!1016 pBis!107 lt!1495720 input!3342) lt!1495932)))

(declare-fun bs!596898 () Bool)

(assert (= bs!596898 d!1238193))

(declare-fun m!4787817 () Bool)

(assert (=> bs!596898 m!4787817))

(assert (=> bs!596898 m!4787333))

(assert (=> b!4198551 d!1238193))

(declare-fun d!1238195 () Bool)

(declare-fun res!1724364 () Bool)

(declare-fun e!2606434 () Bool)

(assert (=> d!1238195 (=> (not res!1724364) (not e!2606434))))

(assert (=> d!1238195 (= res!1724364 (validRegex!5717 (regex!7695 rBis!167)))))

(assert (=> d!1238195 (= (ruleValid!3413 thiss!25986 rBis!167) e!2606434)))

(declare-fun b!4199006 () Bool)

(declare-fun res!1724365 () Bool)

(assert (=> b!4199006 (=> (not res!1724365) (not e!2606434))))

(assert (=> b!4199006 (= res!1724365 (not (nullable!4434 (regex!7695 rBis!167))))))

(declare-fun b!4199007 () Bool)

(assert (=> b!4199007 (= e!2606434 (not (= (tag!8559 rBis!167) (String!53494 ""))))))

(assert (= (and d!1238195 res!1724364) b!4199006))

(assert (= (and b!4199006 res!1724365) b!4199007))

(declare-fun m!4787819 () Bool)

(assert (=> d!1238195 m!4787819))

(declare-fun m!4787821 () Bool)

(assert (=> b!4199006 m!4787821))

(assert (=> b!4198560 d!1238195))

(declare-fun d!1238197 () Bool)

(declare-fun res!1724368 () Bool)

(declare-fun e!2606437 () Bool)

(assert (=> d!1238197 (=> (not res!1724368) (not e!2606437))))

(declare-fun rulesValid!3011 (LexerInterface!7288 List!46238) Bool)

(assert (=> d!1238197 (= res!1724368 (rulesValid!3011 thiss!25986 rules!3843))))

(assert (=> d!1238197 (= (rulesInvariant!6501 thiss!25986 rules!3843) e!2606437)))

(declare-fun b!4199010 () Bool)

(declare-datatypes ((List!46242 0))(
  ( (Nil!46118) (Cons!46118 (h!51538 String!53493) (t!346735 List!46242)) )
))
(declare-fun noDuplicateTag!3172 (LexerInterface!7288 List!46238 List!46242) Bool)

(assert (=> b!4199010 (= e!2606437 (noDuplicateTag!3172 thiss!25986 rules!3843 Nil!46118))))

(assert (= (and d!1238197 res!1724368) b!4199010))

(declare-fun m!4787823 () Bool)

(assert (=> d!1238197 m!4787823))

(declare-fun m!4787825 () Bool)

(assert (=> b!4199010 m!4787825))

(assert (=> b!4198549 d!1238197))

(declare-fun bm!292561 () Bool)

(declare-fun c!716116 () Bool)

(declare-fun call!292567 () Bool)

(declare-fun c!716117 () Bool)

(assert (=> bm!292561 (= call!292567 (validRegex!5717 (ite c!716116 (reg!12929 (regex!7695 r!4142)) (ite c!716117 (regOne!25713 (regex!7695 r!4142)) (regOne!25712 (regex!7695 r!4142))))))))

(declare-fun bm!292562 () Bool)

(declare-fun call!292566 () Bool)

(assert (=> bm!292562 (= call!292566 (validRegex!5717 (ite c!716117 (regTwo!25713 (regex!7695 r!4142)) (regTwo!25712 (regex!7695 r!4142)))))))

(declare-fun b!4199029 () Bool)

(declare-fun res!1724382 () Bool)

(declare-fun e!2606453 () Bool)

(assert (=> b!4199029 (=> (not res!1724382) (not e!2606453))))

(declare-fun call!292568 () Bool)

(assert (=> b!4199029 (= res!1724382 call!292568)))

(declare-fun e!2606458 () Bool)

(assert (=> b!4199029 (= e!2606458 e!2606453)))

(declare-fun b!4199030 () Bool)

(declare-fun e!2606455 () Bool)

(assert (=> b!4199030 (= e!2606455 e!2606458)))

(assert (=> b!4199030 (= c!716117 (is-Union!12600 (regex!7695 r!4142)))))

(declare-fun b!4199031 () Bool)

(declare-fun e!2606456 () Bool)

(assert (=> b!4199031 (= e!2606455 e!2606456)))

(declare-fun res!1724379 () Bool)

(assert (=> b!4199031 (= res!1724379 (not (nullable!4434 (reg!12929 (regex!7695 r!4142)))))))

(assert (=> b!4199031 (=> (not res!1724379) (not e!2606456))))

(declare-fun b!4199032 () Bool)

(declare-fun e!2606457 () Bool)

(declare-fun e!2606454 () Bool)

(assert (=> b!4199032 (= e!2606457 e!2606454)))

(declare-fun res!1724383 () Bool)

(assert (=> b!4199032 (=> (not res!1724383) (not e!2606454))))

(assert (=> b!4199032 (= res!1724383 call!292568)))

(declare-fun b!4199033 () Bool)

(assert (=> b!4199033 (= e!2606453 call!292566)))

(declare-fun d!1238199 () Bool)

(declare-fun res!1724380 () Bool)

(declare-fun e!2606452 () Bool)

(assert (=> d!1238199 (=> res!1724380 e!2606452)))

(assert (=> d!1238199 (= res!1724380 (is-ElementMatch!12600 (regex!7695 r!4142)))))

(assert (=> d!1238199 (= (validRegex!5717 (regex!7695 r!4142)) e!2606452)))

(declare-fun b!4199034 () Bool)

(assert (=> b!4199034 (= e!2606454 call!292566)))

(declare-fun b!4199035 () Bool)

(assert (=> b!4199035 (= e!2606456 call!292567)))

(declare-fun b!4199036 () Bool)

(declare-fun res!1724381 () Bool)

(assert (=> b!4199036 (=> res!1724381 e!2606457)))

(assert (=> b!4199036 (= res!1724381 (not (is-Concat!20526 (regex!7695 r!4142))))))

(assert (=> b!4199036 (= e!2606458 e!2606457)))

(declare-fun b!4199037 () Bool)

(assert (=> b!4199037 (= e!2606452 e!2606455)))

(assert (=> b!4199037 (= c!716116 (is-Star!12600 (regex!7695 r!4142)))))

(declare-fun bm!292563 () Bool)

(assert (=> bm!292563 (= call!292568 call!292567)))

(assert (= (and d!1238199 (not res!1724380)) b!4199037))

(assert (= (and b!4199037 c!716116) b!4199031))

(assert (= (and b!4199037 (not c!716116)) b!4199030))

(assert (= (and b!4199031 res!1724379) b!4199035))

(assert (= (and b!4199030 c!716117) b!4199029))

(assert (= (and b!4199030 (not c!716117)) b!4199036))

(assert (= (and b!4199029 res!1724382) b!4199033))

(assert (= (and b!4199036 (not res!1724381)) b!4199032))

(assert (= (and b!4199032 res!1724383) b!4199034))

(assert (= (or b!4199033 b!4199034) bm!292562))

(assert (= (or b!4199029 b!4199032) bm!292563))

(assert (= (or b!4199035 bm!292563) bm!292561))

(declare-fun m!4787827 () Bool)

(assert (=> bm!292561 m!4787827))

(declare-fun m!4787829 () Bool)

(assert (=> bm!292562 m!4787829))

(declare-fun m!4787831 () Bool)

(assert (=> b!4199031 m!4787831))

(assert (=> b!4198550 d!1238199))

(declare-fun d!1238201 () Bool)

(declare-fun lt!1495935 () Bool)

(declare-fun content!7203 (List!46238) (Set Rule!15190))

(assert (=> d!1238201 (= lt!1495935 (set.member rBis!167 (content!7203 rules!3843)))))

(declare-fun e!2606463 () Bool)

(assert (=> d!1238201 (= lt!1495935 e!2606463)))

(declare-fun res!1724388 () Bool)

(assert (=> d!1238201 (=> (not res!1724388) (not e!2606463))))

(assert (=> d!1238201 (= res!1724388 (is-Cons!46114 rules!3843))))

(assert (=> d!1238201 (= (contains!9506 rules!3843 rBis!167) lt!1495935)))

(declare-fun b!4199042 () Bool)

(declare-fun e!2606464 () Bool)

(assert (=> b!4199042 (= e!2606463 e!2606464)))

(declare-fun res!1724389 () Bool)

(assert (=> b!4199042 (=> res!1724389 e!2606464)))

(assert (=> b!4199042 (= res!1724389 (= (h!51534 rules!3843) rBis!167))))

(declare-fun b!4199043 () Bool)

(assert (=> b!4199043 (= e!2606464 (contains!9506 (t!346693 rules!3843) rBis!167))))

(assert (= (and d!1238201 res!1724388) b!4199042))

(assert (= (and b!4199042 (not res!1724389)) b!4199043))

(declare-fun m!4787833 () Bool)

(assert (=> d!1238201 m!4787833))

(declare-fun m!4787835 () Bool)

(assert (=> d!1238201 m!4787835))

(declare-fun m!4787837 () Bool)

(assert (=> b!4199043 m!4787837))

(assert (=> b!4198571 d!1238201))

(declare-fun d!1238203 () Bool)

(declare-fun lt!1495938 () BalanceConc!27406)

(assert (=> d!1238203 (= (list!16673 lt!1495938) (originalCharacters!8083 (_1!25086 lt!1495733)))))

(assert (=> d!1238203 (= lt!1495938 (dynLambda!19898 (toChars!10254 (transformation!7695 (rule!10795 (_1!25086 lt!1495733)))) (value!239841 (_1!25086 lt!1495733))))))

(assert (=> d!1238203 (= (charsOf!5130 (_1!25086 lt!1495733)) lt!1495938)))

(declare-fun b_lambda!123597 () Bool)

(assert (=> (not b_lambda!123597) (not d!1238203)))

(declare-fun t!346711 () Bool)

(declare-fun tb!251679 () Bool)

(assert (=> (and b!4198559 (= (toChars!10254 (transformation!7695 (h!51534 rules!3843))) (toChars!10254 (transformation!7695 (rule!10795 (_1!25086 lt!1495733))))) t!346711) tb!251679))

(declare-fun b!4199044 () Bool)

(declare-fun e!2606465 () Bool)

(declare-fun tp!1282520 () Bool)

(assert (=> b!4199044 (= e!2606465 (and (inv!60679 (c!716048 (dynLambda!19898 (toChars!10254 (transformation!7695 (rule!10795 (_1!25086 lt!1495733)))) (value!239841 (_1!25086 lt!1495733))))) tp!1282520))))

(declare-fun result!306772 () Bool)

(assert (=> tb!251679 (= result!306772 (and (inv!60680 (dynLambda!19898 (toChars!10254 (transformation!7695 (rule!10795 (_1!25086 lt!1495733)))) (value!239841 (_1!25086 lt!1495733)))) e!2606465))))

(assert (= tb!251679 b!4199044))

(declare-fun m!4787839 () Bool)

(assert (=> b!4199044 m!4787839))

(declare-fun m!4787841 () Bool)

(assert (=> tb!251679 m!4787841))

(assert (=> d!1238203 t!346711))

(declare-fun b_and!329419 () Bool)

(assert (= b_and!329407 (and (=> t!346711 result!306772) b_and!329419)))

(declare-fun tb!251681 () Bool)

(declare-fun t!346713 () Bool)

(assert (=> (and b!4198562 (= (toChars!10254 (transformation!7695 r!4142)) (toChars!10254 (transformation!7695 (rule!10795 (_1!25086 lt!1495733))))) t!346713) tb!251681))

(declare-fun result!306774 () Bool)

(assert (= result!306774 result!306772))

(assert (=> d!1238203 t!346713))

(declare-fun b_and!329421 () Bool)

(assert (= b_and!329409 (and (=> t!346713 result!306774) b_and!329421)))

(declare-fun tb!251683 () Bool)

(declare-fun t!346715 () Bool)

(assert (=> (and b!4198558 (= (toChars!10254 (transformation!7695 rBis!167)) (toChars!10254 (transformation!7695 (rule!10795 (_1!25086 lt!1495733))))) t!346715) tb!251683))

(declare-fun result!306776 () Bool)

(assert (= result!306776 result!306772))

(assert (=> d!1238203 t!346715))

(declare-fun b_and!329423 () Bool)

(assert (= b_and!329411 (and (=> t!346715 result!306776) b_and!329423)))

(declare-fun m!4787843 () Bool)

(assert (=> d!1238203 m!4787843))

(declare-fun m!4787845 () Bool)

(assert (=> d!1238203 m!4787845))

(assert (=> b!4198548 d!1238203))

(declare-fun d!1238205 () Bool)

(assert (=> d!1238205 (= (get!15002 lt!1495737) (v!40736 lt!1495737))))

(assert (=> b!4198548 d!1238205))

(declare-fun d!1238207 () Bool)

(declare-fun list!16675 (Conc!13906) List!46237)

(assert (=> d!1238207 (= (list!16673 lt!1495725) (list!16675 (c!716048 lt!1495725)))))

(declare-fun bs!596899 () Bool)

(assert (= bs!596899 d!1238207))

(declare-fun m!4787847 () Bool)

(assert (=> bs!596899 m!4787847))

(assert (=> b!4198548 d!1238207))

(declare-fun b!4199055 () Bool)

(declare-fun res!1724395 () Bool)

(declare-fun e!2606470 () Bool)

(assert (=> b!4199055 (=> (not res!1724395) (not e!2606470))))

(declare-fun lt!1495941 () List!46237)

(assert (=> b!4199055 (= res!1724395 (= (size!33901 lt!1495941) (+ (size!33901 lt!1495720) (size!33901 (_2!25086 lt!1495733)))))))

(declare-fun b!4199056 () Bool)

(assert (=> b!4199056 (= e!2606470 (or (not (= (_2!25086 lt!1495733) Nil!46113)) (= lt!1495941 lt!1495720)))))

(declare-fun b!4199054 () Bool)

(declare-fun e!2606471 () List!46237)

(assert (=> b!4199054 (= e!2606471 (Cons!46113 (h!51533 lt!1495720) (++!11767 (t!346692 lt!1495720) (_2!25086 lt!1495733))))))

(declare-fun b!4199053 () Bool)

(assert (=> b!4199053 (= e!2606471 (_2!25086 lt!1495733))))

(declare-fun d!1238209 () Bool)

(assert (=> d!1238209 e!2606470))

(declare-fun res!1724394 () Bool)

(assert (=> d!1238209 (=> (not res!1724394) (not e!2606470))))

(declare-fun content!7204 (List!46237) (Set C!25390))

(assert (=> d!1238209 (= res!1724394 (= (content!7204 lt!1495941) (set.union (content!7204 lt!1495720) (content!7204 (_2!25086 lt!1495733)))))))

(assert (=> d!1238209 (= lt!1495941 e!2606471)))

(declare-fun c!716120 () Bool)

(assert (=> d!1238209 (= c!716120 (is-Nil!46113 lt!1495720))))

(assert (=> d!1238209 (= (++!11767 lt!1495720 (_2!25086 lt!1495733)) lt!1495941)))

(assert (= (and d!1238209 c!716120) b!4199053))

(assert (= (and d!1238209 (not c!716120)) b!4199054))

(assert (= (and d!1238209 res!1724394) b!4199055))

(assert (= (and b!4199055 res!1724395) b!4199056))

(declare-fun m!4787849 () Bool)

(assert (=> b!4199055 m!4787849))

(assert (=> b!4199055 m!4787385))

(declare-fun m!4787851 () Bool)

(assert (=> b!4199055 m!4787851))

(declare-fun m!4787853 () Bool)

(assert (=> b!4199054 m!4787853))

(declare-fun m!4787855 () Bool)

(assert (=> d!1238209 m!4787855))

(declare-fun m!4787857 () Bool)

(assert (=> d!1238209 m!4787857))

(declare-fun m!4787859 () Bool)

(assert (=> d!1238209 m!4787859))

(assert (=> b!4198548 d!1238209))

(declare-fun b!4199058 () Bool)

(declare-fun res!1724399 () Bool)

(declare-fun e!2606473 () Bool)

(assert (=> b!4199058 (=> (not res!1724399) (not e!2606473))))

(assert (=> b!4199058 (= res!1724399 (= (head!8911 lt!1495720) (head!8911 (++!11767 lt!1495720 (_2!25086 lt!1495733)))))))

(declare-fun b!4199059 () Bool)

(assert (=> b!4199059 (= e!2606473 (isPrefix!4552 (tail!6758 lt!1495720) (tail!6758 (++!11767 lt!1495720 (_2!25086 lt!1495733)))))))

(declare-fun b!4199060 () Bool)

(declare-fun e!2606474 () Bool)

(assert (=> b!4199060 (= e!2606474 (>= (size!33901 (++!11767 lt!1495720 (_2!25086 lt!1495733))) (size!33901 lt!1495720)))))

(declare-fun d!1238211 () Bool)

(assert (=> d!1238211 e!2606474))

(declare-fun res!1724396 () Bool)

(assert (=> d!1238211 (=> res!1724396 e!2606474)))

(declare-fun lt!1495942 () Bool)

(assert (=> d!1238211 (= res!1724396 (not lt!1495942))))

(declare-fun e!2606472 () Bool)

(assert (=> d!1238211 (= lt!1495942 e!2606472)))

(declare-fun res!1724398 () Bool)

(assert (=> d!1238211 (=> res!1724398 e!2606472)))

(assert (=> d!1238211 (= res!1724398 (is-Nil!46113 lt!1495720))))

(assert (=> d!1238211 (= (isPrefix!4552 lt!1495720 (++!11767 lt!1495720 (_2!25086 lt!1495733))) lt!1495942)))

(declare-fun b!4199057 () Bool)

(assert (=> b!4199057 (= e!2606472 e!2606473)))

(declare-fun res!1724397 () Bool)

(assert (=> b!4199057 (=> (not res!1724397) (not e!2606473))))

(assert (=> b!4199057 (= res!1724397 (not (is-Nil!46113 (++!11767 lt!1495720 (_2!25086 lt!1495733)))))))

(assert (= (and d!1238211 (not res!1724398)) b!4199057))

(assert (= (and b!4199057 res!1724397) b!4199058))

(assert (= (and b!4199058 res!1724399) b!4199059))

(assert (= (and d!1238211 (not res!1724396)) b!4199060))

(declare-fun m!4787861 () Bool)

(assert (=> b!4199058 m!4787861))

(assert (=> b!4199058 m!4787361))

(declare-fun m!4787863 () Bool)

(assert (=> b!4199058 m!4787863))

(declare-fun m!4787865 () Bool)

(assert (=> b!4199059 m!4787865))

(assert (=> b!4199059 m!4787361))

(declare-fun m!4787867 () Bool)

(assert (=> b!4199059 m!4787867))

(assert (=> b!4199059 m!4787865))

(assert (=> b!4199059 m!4787867))

(declare-fun m!4787869 () Bool)

(assert (=> b!4199059 m!4787869))

(assert (=> b!4199060 m!4787361))

(declare-fun m!4787871 () Bool)

(assert (=> b!4199060 m!4787871))

(assert (=> b!4199060 m!4787385))

(assert (=> b!4198548 d!1238211))

(declare-fun d!1238213 () Bool)

(assert (=> d!1238213 (isPrefix!4552 lt!1495720 (++!11767 lt!1495720 (_2!25086 lt!1495733)))))

(declare-fun lt!1495945 () Unit!65216)

(declare-fun choose!25760 (List!46237 List!46237) Unit!65216)

(assert (=> d!1238213 (= lt!1495945 (choose!25760 lt!1495720 (_2!25086 lt!1495733)))))

(assert (=> d!1238213 (= (lemmaConcatTwoListThenFirstIsPrefix!3049 lt!1495720 (_2!25086 lt!1495733)) lt!1495945)))

(declare-fun bs!596900 () Bool)

(assert (= bs!596900 d!1238213))

(assert (=> bs!596900 m!4787361))

(assert (=> bs!596900 m!4787361))

(assert (=> bs!596900 m!4787363))

(declare-fun m!4787873 () Bool)

(assert (=> bs!596900 m!4787873))

(assert (=> b!4198548 d!1238213))

(declare-fun d!1238215 () Bool)

(declare-fun lt!1495948 () Int)

(assert (=> d!1238215 (= lt!1495948 (size!33901 (list!16673 lt!1495725)))))

(declare-fun size!33906 (Conc!13906) Int)

(assert (=> d!1238215 (= lt!1495948 (size!33906 (c!716048 lt!1495725)))))

(assert (=> d!1238215 (= (size!33902 lt!1495725) lt!1495948)))

(declare-fun bs!596901 () Bool)

(assert (= bs!596901 d!1238215))

(assert (=> bs!596901 m!4787353))

(assert (=> bs!596901 m!4787353))

(declare-fun m!4787875 () Bool)

(assert (=> bs!596901 m!4787875))

(declare-fun m!4787877 () Bool)

(assert (=> bs!596901 m!4787877))

(assert (=> b!4198569 d!1238215))

(declare-fun d!1238217 () Bool)

(assert (=> d!1238217 (<= (size!33901 lt!1495720) (size!33901 p!2959))))

(declare-fun lt!1495951 () Unit!65216)

(declare-fun choose!25761 (LexerInterface!7288 List!46238 List!46237 Token!14104 List!46237 List!46237 List!46237 List!46237 Rule!15190 Token!14104) Unit!65216)

(assert (=> d!1238217 (= lt!1495951 (choose!25761 thiss!25986 rules!3843 p!2959 lt!1495736 input!3342 lt!1495727 lt!1495720 (_2!25086 lt!1495733) rBis!167 (_1!25086 lt!1495733)))))

(assert (=> d!1238217 (= (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!25 thiss!25986 rules!3843 p!2959 lt!1495736 input!3342 lt!1495727 lt!1495720 (_2!25086 lt!1495733) rBis!167 (_1!25086 lt!1495733)) lt!1495951)))

(declare-fun bs!596902 () Bool)

(assert (= bs!596902 d!1238217))

(assert (=> bs!596902 m!4787385))

(assert (=> bs!596902 m!4787405))

(declare-fun m!4787879 () Bool)

(assert (=> bs!596902 m!4787879))

(assert (=> b!4198570 d!1238217))

(declare-fun d!1238219 () Bool)

(assert (=> d!1238219 (= (isEmpty!27313 rules!3843) (is-Nil!46114 rules!3843))))

(assert (=> b!4198568 d!1238219))

(declare-fun d!1238221 () Bool)

(declare-fun res!1724400 () Bool)

(declare-fun e!2606475 () Bool)

(assert (=> d!1238221 (=> (not res!1724400) (not e!2606475))))

(assert (=> d!1238221 (= res!1724400 (validRegex!5717 (regex!7695 r!4142)))))

(assert (=> d!1238221 (= (ruleValid!3413 thiss!25986 r!4142) e!2606475)))

(declare-fun b!4199061 () Bool)

(declare-fun res!1724401 () Bool)

(assert (=> b!4199061 (=> (not res!1724401) (not e!2606475))))

(assert (=> b!4199061 (= res!1724401 (not (nullable!4434 (regex!7695 r!4142))))))

(declare-fun b!4199062 () Bool)

(assert (=> b!4199062 (= e!2606475 (not (= (tag!8559 r!4142) (String!53494 ""))))))

(assert (= (and d!1238221 res!1724400) b!4199061))

(assert (= (and b!4199061 res!1724401) b!4199062))

(assert (=> d!1238221 m!4787381))

(assert (=> b!4199061 m!4787809))

(assert (=> b!4198547 d!1238221))

(declare-fun d!1238223 () Bool)

(declare-fun lt!1495952 () Bool)

(assert (=> d!1238223 (= lt!1495952 (set.member r!4142 (content!7203 rules!3843)))))

(declare-fun e!2606476 () Bool)

(assert (=> d!1238223 (= lt!1495952 e!2606476)))

(declare-fun res!1724402 () Bool)

(assert (=> d!1238223 (=> (not res!1724402) (not e!2606476))))

(assert (=> d!1238223 (= res!1724402 (is-Cons!46114 rules!3843))))

(assert (=> d!1238223 (= (contains!9506 rules!3843 r!4142) lt!1495952)))

(declare-fun b!4199063 () Bool)

(declare-fun e!2606477 () Bool)

(assert (=> b!4199063 (= e!2606476 e!2606477)))

(declare-fun res!1724403 () Bool)

(assert (=> b!4199063 (=> res!1724403 e!2606477)))

(assert (=> b!4199063 (= res!1724403 (= (h!51534 rules!3843) r!4142))))

(declare-fun b!4199064 () Bool)

(assert (=> b!4199064 (= e!2606477 (contains!9506 (t!346693 rules!3843) r!4142))))

(assert (= (and d!1238223 res!1724402) b!4199063))

(assert (= (and b!4199063 (not res!1724403)) b!4199064))

(assert (=> d!1238223 m!4787833))

(declare-fun m!4787881 () Bool)

(assert (=> d!1238223 m!4787881))

(declare-fun m!4787883 () Bool)

(assert (=> b!4199064 m!4787883))

(assert (=> b!4198556 d!1238223))

(declare-fun b!4199075 () Bool)

(declare-fun e!2606480 () Bool)

(assert (=> b!4199075 (= e!2606480 tp_is_empty!22163)))

(declare-fun b!4199078 () Bool)

(declare-fun tp!1282531 () Bool)

(declare-fun tp!1282533 () Bool)

(assert (=> b!4199078 (= e!2606480 (and tp!1282531 tp!1282533))))

(declare-fun b!4199077 () Bool)

(declare-fun tp!1282534 () Bool)

(assert (=> b!4199077 (= e!2606480 tp!1282534)))

(assert (=> b!4198564 (= tp!1282471 e!2606480)))

(declare-fun b!4199076 () Bool)

(declare-fun tp!1282532 () Bool)

(declare-fun tp!1282535 () Bool)

(assert (=> b!4199076 (= e!2606480 (and tp!1282532 tp!1282535))))

(assert (= (and b!4198564 (is-ElementMatch!12600 (regex!7695 (h!51534 rules!3843)))) b!4199075))

(assert (= (and b!4198564 (is-Concat!20526 (regex!7695 (h!51534 rules!3843)))) b!4199076))

(assert (= (and b!4198564 (is-Star!12600 (regex!7695 (h!51534 rules!3843)))) b!4199077))

(assert (= (and b!4198564 (is-Union!12600 (regex!7695 (h!51534 rules!3843)))) b!4199078))

(declare-fun b!4199083 () Bool)

(declare-fun e!2606483 () Bool)

(declare-fun tp!1282538 () Bool)

(assert (=> b!4199083 (= e!2606483 (and tp_is_empty!22163 tp!1282538))))

(assert (=> b!4198554 (= tp!1282467 e!2606483)))

(assert (= (and b!4198554 (is-Cons!46113 (t!346692 p!2959))) b!4199083))

(declare-fun b!4199084 () Bool)

(declare-fun e!2606484 () Bool)

(assert (=> b!4199084 (= e!2606484 tp_is_empty!22163)))

(declare-fun b!4199087 () Bool)

(declare-fun tp!1282539 () Bool)

(declare-fun tp!1282541 () Bool)

(assert (=> b!4199087 (= e!2606484 (and tp!1282539 tp!1282541))))

(declare-fun b!4199086 () Bool)

(declare-fun tp!1282542 () Bool)

(assert (=> b!4199086 (= e!2606484 tp!1282542)))

(assert (=> b!4198575 (= tp!1282474 e!2606484)))

(declare-fun b!4199085 () Bool)

(declare-fun tp!1282540 () Bool)

(declare-fun tp!1282543 () Bool)

(assert (=> b!4199085 (= e!2606484 (and tp!1282540 tp!1282543))))

(assert (= (and b!4198575 (is-ElementMatch!12600 (regex!7695 rBis!167))) b!4199084))

(assert (= (and b!4198575 (is-Concat!20526 (regex!7695 rBis!167))) b!4199085))

(assert (= (and b!4198575 (is-Star!12600 (regex!7695 rBis!167))) b!4199086))

(assert (= (and b!4198575 (is-Union!12600 (regex!7695 rBis!167))) b!4199087))

(declare-fun b!4199088 () Bool)

(declare-fun e!2606485 () Bool)

(declare-fun tp!1282544 () Bool)

(assert (=> b!4199088 (= e!2606485 (and tp_is_empty!22163 tp!1282544))))

(assert (=> b!4198557 (= tp!1282466 e!2606485)))

(assert (= (and b!4198557 (is-Cons!46113 (t!346692 pBis!107))) b!4199088))

(declare-fun b!4199089 () Bool)

(declare-fun e!2606486 () Bool)

(assert (=> b!4199089 (= e!2606486 tp_is_empty!22163)))

(declare-fun b!4199092 () Bool)

(declare-fun tp!1282545 () Bool)

(declare-fun tp!1282547 () Bool)

(assert (=> b!4199092 (= e!2606486 (and tp!1282545 tp!1282547))))

(declare-fun b!4199091 () Bool)

(declare-fun tp!1282548 () Bool)

(assert (=> b!4199091 (= e!2606486 tp!1282548)))

(assert (=> b!4198574 (= tp!1282475 e!2606486)))

(declare-fun b!4199090 () Bool)

(declare-fun tp!1282546 () Bool)

(declare-fun tp!1282549 () Bool)

(assert (=> b!4199090 (= e!2606486 (and tp!1282546 tp!1282549))))

(assert (= (and b!4198574 (is-ElementMatch!12600 (regex!7695 r!4142))) b!4199089))

(assert (= (and b!4198574 (is-Concat!20526 (regex!7695 r!4142))) b!4199090))

(assert (= (and b!4198574 (is-Star!12600 (regex!7695 r!4142))) b!4199091))

(assert (= (and b!4198574 (is-Union!12600 (regex!7695 r!4142))) b!4199092))

(declare-fun b!4199103 () Bool)

(declare-fun b_free!122395 () Bool)

(declare-fun b_next!123099 () Bool)

(assert (=> b!4199103 (= b_free!122395 (not b_next!123099))))

(declare-fun t!346718 () Bool)

(declare-fun tb!251685 () Bool)

(assert (=> (and b!4199103 (= (toValue!10395 (transformation!7695 (h!51534 (t!346693 rules!3843)))) (toValue!10395 (transformation!7695 r!4142))) t!346718) tb!251685))

(declare-fun result!306784 () Bool)

(assert (= result!306784 result!306756))

(assert (=> d!1238135 t!346718))

(assert (=> d!1238139 t!346718))

(declare-fun tp!1282560 () Bool)

(declare-fun b_and!329425 () Bool)

(assert (=> b!4199103 (= tp!1282560 (and (=> t!346718 result!306784) b_and!329425))))

(declare-fun b_free!122397 () Bool)

(declare-fun b_next!123101 () Bool)

(assert (=> b!4199103 (= b_free!122397 (not b_next!123101))))

(declare-fun t!346720 () Bool)

(declare-fun tb!251687 () Bool)

(assert (=> (and b!4199103 (= (toChars!10254 (transformation!7695 (h!51534 (t!346693 rules!3843)))) (toChars!10254 (transformation!7695 r!4142))) t!346720) tb!251687))

(declare-fun result!306786 () Bool)

(assert (= result!306786 result!306764))

(assert (=> d!1238139 t!346720))

(declare-fun tb!251689 () Bool)

(declare-fun t!346722 () Bool)

(assert (=> (and b!4199103 (= (toChars!10254 (transformation!7695 (h!51534 (t!346693 rules!3843)))) (toChars!10254 (transformation!7695 (rule!10795 (_1!25086 lt!1495733))))) t!346722) tb!251689))

(declare-fun result!306788 () Bool)

(assert (= result!306788 result!306772))

(assert (=> d!1238203 t!346722))

(declare-fun tp!1282561 () Bool)

(declare-fun b_and!329427 () Bool)

(assert (=> b!4199103 (= tp!1282561 (and (=> t!346720 result!306786) (=> t!346722 result!306788) b_and!329427))))

(declare-fun e!2606497 () Bool)

(assert (=> b!4199103 (= e!2606497 (and tp!1282560 tp!1282561))))

(declare-fun b!4199102 () Bool)

(declare-fun tp!1282558 () Bool)

(declare-fun e!2606495 () Bool)

(assert (=> b!4199102 (= e!2606495 (and tp!1282558 (inv!60674 (tag!8559 (h!51534 (t!346693 rules!3843)))) (inv!60677 (transformation!7695 (h!51534 (t!346693 rules!3843)))) e!2606497))))

(declare-fun b!4199101 () Bool)

(declare-fun e!2606498 () Bool)

(declare-fun tp!1282559 () Bool)

(assert (=> b!4199101 (= e!2606498 (and e!2606495 tp!1282559))))

(assert (=> b!4198572 (= tp!1282472 e!2606498)))

(assert (= b!4199102 b!4199103))

(assert (= b!4199101 b!4199102))

(assert (= (and b!4198572 (is-Cons!46114 (t!346693 rules!3843))) b!4199101))

(declare-fun m!4787885 () Bool)

(assert (=> b!4199102 m!4787885))

(declare-fun m!4787887 () Bool)

(assert (=> b!4199102 m!4787887))

(declare-fun b!4199104 () Bool)

(declare-fun e!2606499 () Bool)

(declare-fun tp!1282562 () Bool)

(assert (=> b!4199104 (= e!2606499 (and tp_is_empty!22163 tp!1282562))))

(assert (=> b!4198567 (= tp!1282469 e!2606499)))

(assert (= (and b!4198567 (is-Cons!46113 (t!346692 input!3342))) b!4199104))

(declare-fun b_lambda!123599 () Bool)

(assert (= b_lambda!123593 (or (and b!4198559 b_free!122373 (= (toChars!10254 (transformation!7695 (h!51534 rules!3843))) (toChars!10254 (transformation!7695 r!4142)))) (and b!4198562 b_free!122377) (and b!4198558 b_free!122381 (= (toChars!10254 (transformation!7695 rBis!167)) (toChars!10254 (transformation!7695 r!4142)))) (and b!4199103 b_free!122397 (= (toChars!10254 (transformation!7695 (h!51534 (t!346693 rules!3843)))) (toChars!10254 (transformation!7695 r!4142)))) b_lambda!123599)))

(declare-fun b_lambda!123601 () Bool)

(assert (= b_lambda!123591 (or (and b!4198559 b_free!122371 (= (toValue!10395 (transformation!7695 (h!51534 rules!3843))) (toValue!10395 (transformation!7695 r!4142)))) (and b!4198562 b_free!122375) (and b!4198558 b_free!122379 (= (toValue!10395 (transformation!7695 rBis!167)) (toValue!10395 (transformation!7695 r!4142)))) (and b!4199103 b_free!122395 (= (toValue!10395 (transformation!7695 (h!51534 (t!346693 rules!3843)))) (toValue!10395 (transformation!7695 r!4142)))) b_lambda!123601)))

(declare-fun b_lambda!123603 () Bool)

(assert (= b_lambda!123595 (or (and b!4198559 b_free!122371 (= (toValue!10395 (transformation!7695 (h!51534 rules!3843))) (toValue!10395 (transformation!7695 r!4142)))) (and b!4198562 b_free!122375) (and b!4198558 b_free!122379 (= (toValue!10395 (transformation!7695 rBis!167)) (toValue!10395 (transformation!7695 r!4142)))) (and b!4199103 b_free!122395 (= (toValue!10395 (transformation!7695 (h!51534 (t!346693 rules!3843)))) (toValue!10395 (transformation!7695 r!4142)))) b_lambda!123603)))

(push 1)

(assert (not b!4199060))

(assert (not bm!292561))

(assert (not b!4199055))

(assert (not b!4199088))

(assert (not d!1238221))

(assert (not b!4198989))

(assert (not b!4198995))

(assert (not d!1238107))

(assert (not b!4198690))

(assert (not b!4199010))

(assert (not b!4199085))

(assert (not d!1238207))

(assert b_and!329421)

(assert (not b!4198786))

(assert (not b!4199086))

(assert (not b!4199001))

(assert (not b!4199043))

(assert (not b!4198795))

(assert (not b!4198745))

(assert (not b!4198685))

(assert (not b!4199092))

(assert b_and!329419)

(assert (not d!1238203))

(assert tp_is_empty!22163)

(assert (not b!4198693))

(assert (not b!4199102))

(assert (not d!1238197))

(assert (not d!1238129))

(assert (not b!4199090))

(assert (not d!1238193))

(assert (not b!4199064))

(assert (not b!4198711))

(assert (not b!4198956))

(assert (not d!1238189))

(assert b_and!329413)

(assert (not b!4198801))

(assert (not b!4198793))

(assert (not d!1238209))

(assert (not bm!292554))

(assert (not b!4199101))

(assert (not b_lambda!123597))

(assert (not b_next!123099))

(assert (not b_lambda!123601))

(assert (not b!4199061))

(assert (not b!4198749))

(assert (not d!1238133))

(assert (not d!1238131))

(assert (not b!4198776))

(assert b_and!329417)

(assert (not b!4199054))

(assert b_and!329423)

(assert (not b_next!123075))

(assert (not d!1238195))

(assert (not d!1238213))

(assert (not b!4199104))

(assert (not tb!251673))

(assert (not b!4198991))

(assert (not b_next!123085))

(assert (not b!4199076))

(assert (not d!1238139))

(assert (not b!4199059))

(assert (not b!4198748))

(assert (not b!4199078))

(assert (not b!4198957))

(assert (not b!4198686))

(assert (not d!1238109))

(assert (not b!4198997))

(assert (not b!4198794))

(assert (not b!4198692))

(assert (not b!4198788))

(assert (not d!1238201))

(assert (not b!4198689))

(assert (not b!4198765))

(assert (not b!4198687))

(assert (not d!1238125))

(assert (not d!1238187))

(assert (not b!4198791))

(assert (not d!1238223))

(assert (not b!4198789))

(assert (not b!4198787))

(assert (not b!4198792))

(assert (not b!4198713))

(assert (not b!4199006))

(assert (not b!4199091))

(assert (not b_next!123101))

(assert (not d!1238117))

(assert (not tb!251667))

(assert (not b!4198688))

(assert (not b!4198712))

(assert (not d!1238123))

(assert (not b!4198747))

(assert (not b!4198742))

(assert (not b!4198766))

(assert (not b!4199058))

(assert b_and!329427)

(assert (not b!4198796))

(assert (not b_next!123083))

(assert (not b!4198790))

(assert (not b_lambda!123603))

(assert (not b!4198743))

(assert (not b!4199031))

(assert (not b!4198767))

(assert (not b!4198723))

(assert (not b!4198761))

(assert (not b!4198998))

(assert (not b!4199087))

(assert (not b_next!123081))

(assert (not b!4198996))

(assert (not b_next!123077))

(assert (not b!4199077))

(assert b_and!329425)

(assert b_and!329415)

(assert (not b!4198783))

(assert (not d!1238095))

(assert (not d!1238217))

(assert (not bm!292562))

(assert (not b!4199083))

(assert (not bm!292536))

(assert (not d!1238215))

(assert (not d!1238111))

(assert (not b_next!123079))

(assert (not b_lambda!123599))

(assert (not b!4198752))

(assert (not b!4198746))

(assert (not tb!251679))

(assert (not b!4198744))

(assert (not b!4199044))

(check-sat)

(pop 1)

(push 1)

(assert b_and!329421)

(assert b_and!329419)

(assert b_and!329413)

(assert (not b_next!123099))

(assert b_and!329417)

(assert (not b_next!123085))

(assert (not b_next!123101))

(assert b_and!329415)

(assert (not b_next!123079))

(assert b_and!329423)

(assert (not b_next!123075))

(assert b_and!329427)

(assert (not b_next!123083))

(assert (not b_next!123081))

(assert (not b_next!123077))

(assert b_and!329425)

(check-sat)

(pop 1)


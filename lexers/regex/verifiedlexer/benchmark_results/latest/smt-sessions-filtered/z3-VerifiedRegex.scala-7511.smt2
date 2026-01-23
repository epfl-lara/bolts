; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396918 () Bool)

(assert start!396918)

(declare-fun b!4164558 () Bool)

(declare-fun b_free!120143 () Bool)

(declare-fun b_next!120847 () Bool)

(assert (=> b!4164558 (= b_free!120143 (not b_next!120847))))

(declare-fun tp!1271557 () Bool)

(declare-fun b_and!324721 () Bool)

(assert (=> b!4164558 (= tp!1271557 b_and!324721)))

(declare-fun b_free!120145 () Bool)

(declare-fun b_next!120849 () Bool)

(assert (=> b!4164558 (= b_free!120145 (not b_next!120849))))

(declare-fun tp!1271550 () Bool)

(declare-fun b_and!324723 () Bool)

(assert (=> b!4164558 (= tp!1271550 b_and!324723)))

(declare-fun b!4164543 () Bool)

(declare-fun b_free!120147 () Bool)

(declare-fun b_next!120851 () Bool)

(assert (=> b!4164543 (= b_free!120147 (not b_next!120851))))

(declare-fun tp!1271552 () Bool)

(declare-fun b_and!324725 () Bool)

(assert (=> b!4164543 (= tp!1271552 b_and!324725)))

(declare-fun b_free!120149 () Bool)

(declare-fun b_next!120853 () Bool)

(assert (=> b!4164543 (= b_free!120149 (not b_next!120853))))

(declare-fun tp!1271558 () Bool)

(declare-fun b_and!324727 () Bool)

(assert (=> b!4164543 (= tp!1271558 b_and!324727)))

(declare-fun b!4164544 () Bool)

(declare-fun b_free!120151 () Bool)

(declare-fun b_next!120855 () Bool)

(assert (=> b!4164544 (= b_free!120151 (not b_next!120855))))

(declare-fun tp!1271553 () Bool)

(declare-fun b_and!324729 () Bool)

(assert (=> b!4164544 (= tp!1271553 b_and!324729)))

(declare-fun b_free!120153 () Bool)

(declare-fun b_next!120857 () Bool)

(assert (=> b!4164544 (= b_free!120153 (not b_next!120857))))

(declare-fun tp!1271555 () Bool)

(declare-fun b_and!324731 () Bool)

(assert (=> b!4164544 (= tp!1271555 b_and!324731)))

(declare-fun tp!1271549 () Bool)

(declare-fun e!2585268 () Bool)

(declare-fun b!4164539 () Bool)

(declare-fun e!2585272 () Bool)

(declare-datatypes ((C!25076 0))(
  ( (C!25077 (val!14700 Int)) )
))
(declare-datatypes ((List!45695 0))(
  ( (Nil!45571) (Cons!45571 (h!50991 C!25076) (t!343910 List!45695)) )
))
(declare-datatypes ((IArray!27503 0))(
  ( (IArray!27504 (innerList!13809 List!45695)) )
))
(declare-datatypes ((Conc!13749 0))(
  ( (Node!13749 (left!33980 Conc!13749) (right!34310 Conc!13749) (csize!27728 Int) (cheight!13960 Int)) (Leaf!21261 (xs!17055 IArray!27503) (csize!27729 Int)) (Empty!13749) )
))
(declare-datatypes ((List!45696 0))(
  ( (Nil!45572) (Cons!45572 (h!50992 (_ BitVec 16)) (t!343911 List!45696)) )
))
(declare-datatypes ((BalanceConc!27092 0))(
  ( (BalanceConc!27093 (c!712264 Conc!13749)) )
))
(declare-datatypes ((TokenValue!7768 0))(
  ( (FloatLiteralValue!15536 (text!54821 List!45696)) (TokenValueExt!7767 (__x!27757 Int)) (Broken!38840 (value!235355 List!45696)) (Object!7891) (End!7768) (Def!7768) (Underscore!7768) (Match!7768) (Else!7768) (Error!7768) (Case!7768) (If!7768) (Extends!7768) (Abstract!7768) (Class!7768) (Val!7768) (DelimiterValue!15536 (del!7828 List!45696)) (KeywordValue!7774 (value!235356 List!45696)) (CommentValue!15536 (value!235357 List!45696)) (WhitespaceValue!15536 (value!235358 List!45696)) (IndentationValue!7768 (value!235359 List!45696)) (String!52705) (Int32!7768) (Broken!38841 (value!235360 List!45696)) (Boolean!7769) (Unit!64662) (OperatorValue!7771 (op!7828 List!45696)) (IdentifierValue!15536 (value!235361 List!45696)) (IdentifierValue!15537 (value!235362 List!45696)) (WhitespaceValue!15537 (value!235363 List!45696)) (True!15536) (False!15536) (Broken!38842 (value!235364 List!45696)) (Broken!38843 (value!235365 List!45696)) (True!15537) (RightBrace!7768) (RightBracket!7768) (Colon!7768) (Null!7768) (Comma!7768) (LeftBracket!7768) (False!15537) (LeftBrace!7768) (ImaginaryLiteralValue!7768 (text!54822 List!45696)) (StringLiteralValue!23304 (value!235366 List!45696)) (EOFValue!7768 (value!235367 List!45696)) (IdentValue!7768 (value!235368 List!45696)) (DelimiterValue!15537 (value!235369 List!45696)) (DedentValue!7768 (value!235370 List!45696)) (NewLineValue!7768 (value!235371 List!45696)) (IntegerValue!23304 (value!235372 (_ BitVec 32)) (text!54823 List!45696)) (IntegerValue!23305 (value!235373 Int) (text!54824 List!45696)) (Times!7768) (Or!7768) (Equal!7768) (Minus!7768) (Broken!38844 (value!235374 List!45696)) (And!7768) (Div!7768) (LessEqual!7768) (Mod!7768) (Concat!20211) (Not!7768) (Plus!7768) (SpaceValue!7768 (value!235375 List!45696)) (IntegerValue!23306 (value!235376 Int) (text!54825 List!45696)) (StringLiteralValue!23305 (text!54826 List!45696)) (FloatLiteralValue!15537 (text!54827 List!45696)) (BytesLiteralValue!7768 (value!235377 List!45696)) (CommentValue!15537 (value!235378 List!45696)) (StringLiteralValue!23306 (value!235379 List!45696)) (ErrorTokenValue!7768 (msg!7829 List!45696)) )
))
(declare-datatypes ((TokenValueInjection!14964 0))(
  ( (TokenValueInjection!14965 (toValue!10206 Int) (toChars!10065 Int)) )
))
(declare-datatypes ((Regex!12443 0))(
  ( (ElementMatch!12443 (c!712265 C!25076)) (Concat!20212 (regOne!25398 Regex!12443) (regTwo!25398 Regex!12443)) (EmptyExpr!12443) (Star!12443 (reg!12772 Regex!12443)) (EmptyLang!12443) (Union!12443 (regOne!25399 Regex!12443) (regTwo!25399 Regex!12443)) )
))
(declare-datatypes ((String!52706 0))(
  ( (String!52707 (value!235380 String)) )
))
(declare-datatypes ((Rule!14876 0))(
  ( (Rule!14877 (regex!7538 Regex!12443) (tag!8402 String!52706) (isSeparator!7538 Bool) (transformation!7538 TokenValueInjection!14964)) )
))
(declare-fun r!4097 () Rule!14876)

(declare-fun inv!60092 (String!52706) Bool)

(declare-fun inv!60094 (TokenValueInjection!14964) Bool)

(assert (=> b!4164539 (= e!2585268 (and tp!1271549 (inv!60092 (tag!8402 r!4097)) (inv!60094 (transformation!7538 r!4097)) e!2585272))))

(declare-fun b!4164540 () Bool)

(declare-fun res!1706095 () Bool)

(declare-fun e!2585276 () Bool)

(assert (=> b!4164540 (=> (not res!1706095) (not e!2585276))))

(declare-datatypes ((LexerInterface!7131 0))(
  ( (LexerInterfaceExt!7128 (__x!27758 Int)) (Lexer!7129) )
))
(declare-fun thiss!25889 () LexerInterface!7131)

(declare-datatypes ((List!45697 0))(
  ( (Nil!45573) (Cons!45573 (h!50993 Rule!14876) (t!343912 List!45697)) )
))
(declare-fun rules!3820 () List!45697)

(declare-fun rulesInvariant!6344 (LexerInterface!7131 List!45697) Bool)

(assert (=> b!4164540 (= res!1706095 (rulesInvariant!6344 thiss!25889 rules!3820))))

(declare-fun b!4164541 () Bool)

(declare-fun res!1706091 () Bool)

(declare-fun e!2585273 () Bool)

(assert (=> b!4164541 (=> res!1706091 e!2585273)))

(declare-fun pBis!100 () List!45695)

(declare-fun lt!1483755 () Int)

(declare-fun size!33485 (List!45695) Int)

(assert (=> b!4164541 (= res!1706091 (<= (size!33485 pBis!100) lt!1483755))))

(declare-fun b!4164542 () Bool)

(declare-fun e!2585277 () Bool)

(assert (=> b!4164542 (= e!2585277 e!2585273)))

(declare-fun res!1706094 () Bool)

(assert (=> b!4164542 (=> res!1706094 e!2585273)))

(declare-fun p!2942 () List!45695)

(declare-fun input!3316 () List!45695)

(declare-fun lt!1483753 () TokenValue!7768)

(declare-datatypes ((Token!13822 0))(
  ( (Token!13823 (value!235381 TokenValue!7768) (rule!10592 Rule!14876) (size!33486 Int) (originalCharacters!7942 List!45695)) )
))
(declare-datatypes ((tuple2!43506 0))(
  ( (tuple2!43507 (_1!24887 Token!13822) (_2!24887 List!45695)) )
))
(declare-datatypes ((Option!9752 0))(
  ( (None!9751) (Some!9751 (v!40529 tuple2!43506)) )
))
(declare-fun maxPrefixOneRule!3160 (LexerInterface!7131 Rule!14876 List!45695) Option!9752)

(declare-fun getSuffix!2708 (List!45695 List!45695) List!45695)

(assert (=> b!4164542 (= res!1706094 (not (= (maxPrefixOneRule!3160 thiss!25889 r!4097 input!3316) (Some!9751 (tuple2!43507 (Token!13823 lt!1483753 r!4097 lt!1483755 p!2942) (getSuffix!2708 input!3316 p!2942))))))))

(assert (=> b!4164542 (= lt!1483755 (size!33485 p!2942))))

(declare-fun lt!1483754 () BalanceConc!27092)

(declare-fun apply!10519 (TokenValueInjection!14964 BalanceConc!27092) TokenValue!7768)

(assert (=> b!4164542 (= lt!1483753 (apply!10519 (transformation!7538 r!4097) lt!1483754))))

(declare-fun isPrefix!4395 (List!45695 List!45695) Bool)

(assert (=> b!4164542 (isPrefix!4395 input!3316 input!3316)))

(declare-datatypes ((Unit!64663 0))(
  ( (Unit!64664) )
))
(declare-fun lt!1483752 () Unit!64663)

(declare-fun lemmaIsPrefixRefl!2834 (List!45695 List!45695) Unit!64663)

(assert (=> b!4164542 (= lt!1483752 (lemmaIsPrefixRefl!2834 input!3316 input!3316))))

(declare-fun lt!1483750 () Unit!64663)

(declare-fun lemmaSemiInverse!2312 (TokenValueInjection!14964 BalanceConc!27092) Unit!64663)

(assert (=> b!4164542 (= lt!1483750 (lemmaSemiInverse!2312 (transformation!7538 r!4097) lt!1483754))))

(declare-fun seqFromList!5571 (List!45695) BalanceConc!27092)

(assert (=> b!4164542 (= lt!1483754 (seqFromList!5571 p!2942))))

(declare-fun e!2585266 () Bool)

(assert (=> b!4164543 (= e!2585266 (and tp!1271552 tp!1271558))))

(declare-fun e!2585269 () Bool)

(assert (=> b!4164544 (= e!2585269 (and tp!1271553 tp!1271555))))

(declare-fun res!1706092 () Bool)

(assert (=> start!396918 (=> (not res!1706092) (not e!2585276))))

(get-info :version)

(assert (=> start!396918 (= res!1706092 ((_ is Lexer!7129) thiss!25889))))

(assert (=> start!396918 e!2585276))

(declare-fun e!2585275 () Bool)

(assert (=> start!396918 e!2585275))

(declare-fun e!2585274 () Bool)

(assert (=> start!396918 e!2585274))

(declare-fun e!2585280 () Bool)

(assert (=> start!396918 e!2585280))

(declare-fun e!2585270 () Bool)

(assert (=> start!396918 e!2585270))

(assert (=> start!396918 true))

(declare-fun e!2585279 () Bool)

(assert (=> start!396918 e!2585279))

(assert (=> start!396918 e!2585268))

(declare-fun b!4164545 () Bool)

(declare-fun res!1706090 () Bool)

(assert (=> b!4164545 (=> (not res!1706090) (not e!2585276))))

(declare-fun rBis!161 () Rule!14876)

(declare-fun contains!9333 (List!45697 Rule!14876) Bool)

(assert (=> b!4164545 (= res!1706090 (contains!9333 rules!3820 rBis!161))))

(declare-fun b!4164546 () Bool)

(declare-fun tp_is_empty!21849 () Bool)

(declare-fun tp!1271554 () Bool)

(assert (=> b!4164546 (= e!2585270 (and tp_is_empty!21849 tp!1271554))))

(declare-fun tp!1271556 () Bool)

(declare-fun b!4164547 () Bool)

(assert (=> b!4164547 (= e!2585279 (and tp!1271556 (inv!60092 (tag!8402 rBis!161)) (inv!60094 (transformation!7538 rBis!161)) e!2585266))))

(declare-fun e!2585278 () Bool)

(declare-fun b!4164548 () Bool)

(declare-fun tp!1271548 () Bool)

(assert (=> b!4164548 (= e!2585278 (and tp!1271548 (inv!60092 (tag!8402 (h!50993 rules!3820))) (inv!60094 (transformation!7538 (h!50993 rules!3820))) e!2585269))))

(declare-fun b!4164549 () Bool)

(declare-fun res!1706093 () Bool)

(assert (=> b!4164549 (=> (not res!1706093) (not e!2585276))))

(assert (=> b!4164549 (= res!1706093 (contains!9333 rules!3820 r!4097))))

(declare-fun b!4164550 () Bool)

(declare-fun res!1706097 () Bool)

(assert (=> b!4164550 (=> (not res!1706097) (not e!2585276))))

(assert (=> b!4164550 (= res!1706097 (isPrefix!4395 pBis!100 input!3316))))

(declare-fun b!4164551 () Bool)

(declare-fun tp!1271559 () Bool)

(assert (=> b!4164551 (= e!2585275 (and tp_is_empty!21849 tp!1271559))))

(declare-fun b!4164552 () Bool)

(declare-fun tp!1271551 () Bool)

(assert (=> b!4164552 (= e!2585274 (and e!2585278 tp!1271551))))

(declare-fun b!4164553 () Bool)

(assert (=> b!4164553 (= e!2585276 (not e!2585277))))

(declare-fun res!1706098 () Bool)

(assert (=> b!4164553 (=> res!1706098 e!2585277)))

(declare-fun matchR!6188 (Regex!12443 List!45695) Bool)

(assert (=> b!4164553 (= res!1706098 (not (matchR!6188 (regex!7538 r!4097) p!2942)))))

(declare-fun ruleValid!3262 (LexerInterface!7131 Rule!14876) Bool)

(assert (=> b!4164553 (ruleValid!3262 thiss!25889 r!4097)))

(declare-fun lt!1483751 () Unit!64663)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2302 (LexerInterface!7131 Rule!14876 List!45697) Unit!64663)

(assert (=> b!4164553 (= lt!1483751 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2302 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4164554 () Bool)

(assert (=> b!4164554 (= e!2585273 true)))

(declare-fun lt!1483756 () Int)

(assert (=> b!4164554 (= lt!1483756 (size!33485 input!3316))))

(declare-fun b!4164555 () Bool)

(declare-fun tp!1271560 () Bool)

(assert (=> b!4164555 (= e!2585280 (and tp_is_empty!21849 tp!1271560))))

(declare-fun b!4164556 () Bool)

(declare-fun res!1706096 () Bool)

(assert (=> b!4164556 (=> (not res!1706096) (not e!2585276))))

(assert (=> b!4164556 (= res!1706096 (isPrefix!4395 p!2942 input!3316))))

(declare-fun b!4164557 () Bool)

(declare-fun res!1706089 () Bool)

(assert (=> b!4164557 (=> (not res!1706089) (not e!2585276))))

(declare-fun isEmpty!26979 (List!45697) Bool)

(assert (=> b!4164557 (= res!1706089 (not (isEmpty!26979 rules!3820)))))

(assert (=> b!4164558 (= e!2585272 (and tp!1271557 tp!1271550))))

(assert (= (and start!396918 res!1706092) b!4164556))

(assert (= (and b!4164556 res!1706096) b!4164550))

(assert (= (and b!4164550 res!1706097) b!4164557))

(assert (= (and b!4164557 res!1706089) b!4164540))

(assert (= (and b!4164540 res!1706095) b!4164549))

(assert (= (and b!4164549 res!1706093) b!4164545))

(assert (= (and b!4164545 res!1706090) b!4164553))

(assert (= (and b!4164553 (not res!1706098)) b!4164542))

(assert (= (and b!4164542 (not res!1706094)) b!4164541))

(assert (= (and b!4164541 (not res!1706091)) b!4164554))

(assert (= (and start!396918 ((_ is Cons!45571) pBis!100)) b!4164551))

(assert (= b!4164548 b!4164544))

(assert (= b!4164552 b!4164548))

(assert (= (and start!396918 ((_ is Cons!45573) rules!3820)) b!4164552))

(assert (= (and start!396918 ((_ is Cons!45571) p!2942)) b!4164555))

(assert (= (and start!396918 ((_ is Cons!45571) input!3316)) b!4164546))

(assert (= b!4164547 b!4164543))

(assert (= start!396918 b!4164547))

(assert (= b!4164539 b!4164558))

(assert (= start!396918 b!4164539))

(declare-fun m!4756709 () Bool)

(assert (=> b!4164553 m!4756709))

(declare-fun m!4756711 () Bool)

(assert (=> b!4164553 m!4756711))

(declare-fun m!4756713 () Bool)

(assert (=> b!4164553 m!4756713))

(declare-fun m!4756715 () Bool)

(assert (=> b!4164549 m!4756715))

(declare-fun m!4756717 () Bool)

(assert (=> b!4164554 m!4756717))

(declare-fun m!4756719 () Bool)

(assert (=> b!4164556 m!4756719))

(declare-fun m!4756721 () Bool)

(assert (=> b!4164548 m!4756721))

(declare-fun m!4756723 () Bool)

(assert (=> b!4164548 m!4756723))

(declare-fun m!4756725 () Bool)

(assert (=> b!4164550 m!4756725))

(declare-fun m!4756727 () Bool)

(assert (=> b!4164557 m!4756727))

(declare-fun m!4756729 () Bool)

(assert (=> b!4164545 m!4756729))

(declare-fun m!4756731 () Bool)

(assert (=> b!4164539 m!4756731))

(declare-fun m!4756733 () Bool)

(assert (=> b!4164539 m!4756733))

(declare-fun m!4756735 () Bool)

(assert (=> b!4164542 m!4756735))

(declare-fun m!4756737 () Bool)

(assert (=> b!4164542 m!4756737))

(declare-fun m!4756739 () Bool)

(assert (=> b!4164542 m!4756739))

(declare-fun m!4756741 () Bool)

(assert (=> b!4164542 m!4756741))

(declare-fun m!4756743 () Bool)

(assert (=> b!4164542 m!4756743))

(declare-fun m!4756745 () Bool)

(assert (=> b!4164542 m!4756745))

(declare-fun m!4756747 () Bool)

(assert (=> b!4164542 m!4756747))

(declare-fun m!4756749 () Bool)

(assert (=> b!4164542 m!4756749))

(declare-fun m!4756751 () Bool)

(assert (=> b!4164540 m!4756751))

(declare-fun m!4756753 () Bool)

(assert (=> b!4164547 m!4756753))

(declare-fun m!4756755 () Bool)

(assert (=> b!4164547 m!4756755))

(declare-fun m!4756757 () Bool)

(assert (=> b!4164541 m!4756757))

(check-sat (not b!4164539) (not b!4164547) (not b_next!120857) (not b!4164550) (not b_next!120853) (not b_next!120849) (not b!4164553) b_and!324721 (not b!4164540) (not b!4164546) (not b_next!120855) (not b!4164548) (not b!4164542) b_and!324729 (not b!4164541) (not b!4164556) b_and!324727 (not b_next!120847) b_and!324731 (not b!4164551) (not b!4164557) tp_is_empty!21849 (not b_next!120851) (not b!4164549) b_and!324725 (not b!4164554) b_and!324723 (not b!4164555) (not b!4164545) (not b!4164552))
(check-sat (not b_next!120857) (not b_next!120853) (not b_next!120849) b_and!324721 (not b_next!120855) (not b_next!120851) b_and!324729 b_and!324727 (not b_next!120847) b_and!324731 b_and!324725 b_and!324723)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3646 () Bool)

(assert start!3646)

(declare-fun b!50776 () Bool)

(declare-fun b_free!1573 () Bool)

(declare-fun b_next!1573 () Bool)

(assert (=> b!50776 (= b_free!1573 (not b_next!1573))))

(declare-fun tp!33530 () Bool)

(declare-fun b_and!1615 () Bool)

(assert (=> b!50776 (= tp!33530 b_and!1615)))

(declare-fun b_free!1575 () Bool)

(declare-fun b_next!1575 () Bool)

(assert (=> b!50776 (= b_free!1575 (not b_next!1575))))

(declare-fun tp!33526 () Bool)

(declare-fun b_and!1617 () Bool)

(assert (=> b!50776 (= tp!33526 b_and!1617)))

(declare-fun e!29771 () Bool)

(assert (=> b!50776 (= e!29771 (and tp!33530 tp!33526))))

(declare-fun res!33390 () Bool)

(declare-fun e!29777 () Bool)

(assert (=> start!3646 (=> (not res!33390) (not e!29777))))

(declare-datatypes ((LexerInterface!107 0))(
  ( (LexerInterfaceExt!104 (__x!1505 Int)) (Lexer!105) )
))
(declare-fun thiss!11059 () LexerInterface!107)

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3646 (= res!33390 (and ((_ is Lexer!105) thiss!11059) (>= from!821 0)))))

(assert (=> start!3646 e!29777))

(assert (=> start!3646 true))

(declare-datatypes ((List!1006 0))(
  ( (Nil!1000) (Cons!1000 (h!6397 (_ BitVec 16)) (t!17209 List!1006)) )
))
(declare-datatypes ((TokenValue!205 0))(
  ( (FloatLiteralValue!410 (text!1880 List!1006)) (TokenValueExt!204 (__x!1506 Int)) (Broken!1025 (value!8999 List!1006)) (Object!210) (End!205) (Def!205) (Underscore!205) (Match!205) (Else!205) (Error!205) (Case!205) (If!205) (Extends!205) (Abstract!205) (Class!205) (Val!205) (DelimiterValue!410 (del!265 List!1006)) (KeywordValue!211 (value!9000 List!1006)) (CommentValue!410 (value!9001 List!1006)) (WhitespaceValue!410 (value!9002 List!1006)) (IndentationValue!205 (value!9003 List!1006)) (String!1416) (Int32!205) (Broken!1026 (value!9004 List!1006)) (Boolean!206) (Unit!565) (OperatorValue!208 (op!265 List!1006)) (IdentifierValue!410 (value!9005 List!1006)) (IdentifierValue!411 (value!9006 List!1006)) (WhitespaceValue!411 (value!9007 List!1006)) (True!410) (False!410) (Broken!1027 (value!9008 List!1006)) (Broken!1028 (value!9009 List!1006)) (True!411) (RightBrace!205) (RightBracket!205) (Colon!205) (Null!205) (Comma!205) (LeftBracket!205) (False!411) (LeftBrace!205) (ImaginaryLiteralValue!205 (text!1881 List!1006)) (StringLiteralValue!615 (value!9010 List!1006)) (EOFValue!205 (value!9011 List!1006)) (IdentValue!205 (value!9012 List!1006)) (DelimiterValue!411 (value!9013 List!1006)) (DedentValue!205 (value!9014 List!1006)) (NewLineValue!205 (value!9015 List!1006)) (IntegerValue!615 (value!9016 (_ BitVec 32)) (text!1882 List!1006)) (IntegerValue!616 (value!9017 Int) (text!1883 List!1006)) (Times!205) (Or!205) (Equal!205) (Minus!205) (Broken!1029 (value!9018 List!1006)) (And!205) (Div!205) (LessEqual!205) (Mod!205) (Concat!488) (Not!205) (Plus!205) (SpaceValue!205 (value!9019 List!1006)) (IntegerValue!617 (value!9020 Int) (text!1884 List!1006)) (StringLiteralValue!616 (text!1885 List!1006)) (FloatLiteralValue!411 (text!1886 List!1006)) (BytesLiteralValue!205 (value!9021 List!1006)) (CommentValue!411 (value!9022 List!1006)) (StringLiteralValue!617 (value!9023 List!1006)) (ErrorTokenValue!205 (msg!266 List!1006)) )
))
(declare-datatypes ((C!1488 0))(
  ( (C!1489 (val!351 Int)) )
))
(declare-datatypes ((Regex!283 0))(
  ( (ElementMatch!283 (c!16633 C!1488)) (Concat!489 (regOne!1078 Regex!283) (regTwo!1078 Regex!283)) (EmptyExpr!283) (Star!283 (reg!612 Regex!283)) (EmptyLang!283) (Union!283 (regOne!1079 Regex!283) (regTwo!1079 Regex!283)) )
))
(declare-datatypes ((String!1417 0))(
  ( (String!1418 (value!9024 String)) )
))
(declare-datatypes ((List!1007 0))(
  ( (Nil!1001) (Cons!1001 (h!6398 C!1488) (t!17210 List!1007)) )
))
(declare-datatypes ((IArray!469 0))(
  ( (IArray!470 (innerList!292 List!1007)) )
))
(declare-datatypes ((Conc!234 0))(
  ( (Node!234 (left!754 Conc!234) (right!1084 Conc!234) (csize!698 Int) (cheight!445 Int)) (Leaf!477 (xs!2813 IArray!469) (csize!699 Int)) (Empty!234) )
))
(declare-datatypes ((BalanceConc!472 0))(
  ( (BalanceConc!473 (c!16634 Conc!234)) )
))
(declare-datatypes ((TokenValueInjection!234 0))(
  ( (TokenValueInjection!235 (toValue!694 Int) (toChars!553 Int)) )
))
(declare-datatypes ((Rule!230 0))(
  ( (Rule!231 (regex!215 Regex!283) (tag!393 String!1417) (isSeparator!215 Bool) (transformation!215 TokenValueInjection!234)) )
))
(declare-datatypes ((Token!194 0))(
  ( (Token!195 (value!9025 TokenValue!205) (rule!690 Rule!230) (size!932 Int) (originalCharacters!268 List!1007)) )
))
(declare-datatypes ((List!1008 0))(
  ( (Nil!1002) (Cons!1002 (h!6399 Token!194) (t!17211 List!1008)) )
))
(declare-datatypes ((IArray!471 0))(
  ( (IArray!472 (innerList!293 List!1008)) )
))
(declare-datatypes ((Conc!235 0))(
  ( (Node!235 (left!755 Conc!235) (right!1085 Conc!235) (csize!700 Int) (cheight!446 Int)) (Leaf!478 (xs!2814 IArray!471) (csize!701 Int)) (Empty!235) )
))
(declare-datatypes ((BalanceConc!474 0))(
  ( (BalanceConc!475 (c!16635 Conc!235)) )
))
(declare-fun v!6227 () BalanceConc!474)

(declare-fun e!29775 () Bool)

(declare-fun inv!1323 (BalanceConc!474) Bool)

(assert (=> start!3646 (and (inv!1323 v!6227) e!29775)))

(declare-fun e!29776 () Bool)

(assert (=> start!3646 e!29776))

(declare-fun b!50777 () Bool)

(declare-fun res!33392 () Bool)

(declare-fun e!29772 () Bool)

(assert (=> b!50777 (=> (not res!33392) (not e!29772))))

(declare-datatypes ((List!1009 0))(
  ( (Nil!1003) (Cons!1003 (h!6400 Rule!230) (t!17212 List!1009)) )
))
(declare-fun rules!1069 () List!1009)

(declare-fun isEmpty!201 (List!1009) Bool)

(assert (=> b!50777 (= res!33392 (not (isEmpty!201 rules!1069)))))

(declare-fun b!50778 () Bool)

(declare-fun e!29778 () Bool)

(assert (=> b!50778 (= e!29772 (not e!29778))))

(declare-fun res!33383 () Bool)

(assert (=> b!50778 (=> res!33383 e!29778)))

(declare-fun lt!8709 () Token!194)

(declare-fun contains!96 (BalanceConc!474 Token!194) Bool)

(assert (=> b!50778 (= res!33383 (not (contains!96 v!6227 lt!8709)))))

(declare-fun apply!80 (BalanceConc!474 Int) Token!194)

(assert (=> b!50778 (= lt!8709 (apply!80 v!6227 from!821))))

(declare-fun lt!8711 () List!1008)

(declare-fun lt!8718 () List!1008)

(declare-fun tail!57 (List!1008) List!1008)

(declare-fun drop!32 (List!1008 Int) List!1008)

(assert (=> b!50778 (= (tail!57 lt!8711) (drop!32 lt!8718 (+ 2 from!821)))))

(declare-datatypes ((Unit!566 0))(
  ( (Unit!567) )
))
(declare-fun lt!8719 () Unit!566)

(declare-fun lemmaDropTail!28 (List!1008 Int) Unit!566)

(assert (=> b!50778 (= lt!8719 (lemmaDropTail!28 lt!8718 (+ 1 from!821)))))

(declare-fun lt!8710 () List!1008)

(assert (=> b!50778 (= (tail!57 lt!8710) lt!8711)))

(declare-fun lt!8713 () Unit!566)

(assert (=> b!50778 (= lt!8713 (lemmaDropTail!28 lt!8718 from!821))))

(declare-fun head!372 (List!1008) Token!194)

(declare-fun apply!81 (List!1008 Int) Token!194)

(assert (=> b!50778 (= (head!372 lt!8711) (apply!81 lt!8718 (+ 1 from!821)))))

(assert (=> b!50778 (= lt!8711 (drop!32 lt!8718 (+ 1 from!821)))))

(declare-fun lt!8720 () Unit!566)

(declare-fun lemmaDropApply!32 (List!1008 Int) Unit!566)

(assert (=> b!50778 (= lt!8720 (lemmaDropApply!32 lt!8718 (+ 1 from!821)))))

(assert (=> b!50778 (= (head!372 lt!8710) (apply!81 lt!8718 from!821))))

(assert (=> b!50778 (= lt!8710 (drop!32 lt!8718 from!821))))

(declare-fun lt!8715 () Unit!566)

(assert (=> b!50778 (= lt!8715 (lemmaDropApply!32 lt!8718 from!821))))

(declare-fun list!256 (BalanceConc!474) List!1008)

(assert (=> b!50778 (= lt!8718 (list!256 v!6227))))

(declare-fun b!50779 () Bool)

(declare-fun res!33384 () Bool)

(assert (=> b!50779 (=> (not res!33384) (not e!29772))))

(declare-fun rulesProduceEachTokenIndividually!45 (LexerInterface!107 List!1009 BalanceConc!474) Bool)

(assert (=> b!50779 (= res!33384 (rulesProduceEachTokenIndividually!45 thiss!11059 rules!1069 v!6227))))

(declare-fun b!50780 () Bool)

(declare-fun e!29770 () Bool)

(declare-fun lt!8712 () Token!194)

(declare-fun size!933 (BalanceConc!472) Int)

(declare-fun charsOf!8 (Token!194) BalanceConc!472)

(assert (=> b!50780 (= e!29770 (> (size!933 (charsOf!8 lt!8712)) 0))))

(declare-fun b!50781 () Bool)

(declare-fun tp!33529 () Bool)

(declare-fun inv!1324 (Conc!235) Bool)

(assert (=> b!50781 (= e!29775 (and (inv!1324 (c!16635 v!6227)) tp!33529))))

(declare-fun b!50782 () Bool)

(declare-fun res!33391 () Bool)

(assert (=> b!50782 (=> res!33391 e!29778)))

(declare-fun contains!97 (List!1008 Token!194) Bool)

(assert (=> b!50782 (= res!33391 (not (contains!97 lt!8718 lt!8709)))))

(declare-fun b!50783 () Bool)

(declare-fun e!29779 () Bool)

(declare-fun tp!33528 () Bool)

(assert (=> b!50783 (= e!29776 (and e!29779 tp!33528))))

(declare-fun b!50784 () Bool)

(declare-fun res!33389 () Bool)

(assert (=> b!50784 (=> (not res!33389) (not e!29772))))

(declare-fun lt!8717 () Int)

(assert (=> b!50784 (= res!33389 (< from!821 (- lt!8717 1)))))

(declare-fun b!50785 () Bool)

(declare-fun tp!33527 () Bool)

(declare-fun inv!1319 (String!1417) Bool)

(declare-fun inv!1325 (TokenValueInjection!234) Bool)

(assert (=> b!50785 (= e!29779 (and tp!33527 (inv!1319 (tag!393 (h!6400 rules!1069))) (inv!1325 (transformation!215 (h!6400 rules!1069))) e!29771))))

(declare-fun b!50786 () Bool)

(declare-fun e!29773 () Bool)

(assert (=> b!50786 (= e!29773 (and (<= 0 (+ 1 from!821)) (< (+ 1 from!821) lt!8717)))))

(assert (=> b!50786 e!29770))

(declare-fun res!33387 () Bool)

(assert (=> b!50786 (=> (not res!33387) (not e!29770))))

(declare-fun rulesProduceIndividualToken!26 (LexerInterface!107 List!1009 Token!194) Bool)

(assert (=> b!50786 (= res!33387 (rulesProduceIndividualToken!26 thiss!11059 rules!1069 lt!8712))))

(declare-fun lt!8714 () Unit!566)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!14 (LexerInterface!107 List!1009 List!1008 Token!194) Unit!566)

(assert (=> b!50786 (= lt!8714 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!14 thiss!11059 rules!1069 lt!8718 lt!8712))))

(assert (=> b!50786 (rulesProduceIndividualToken!26 thiss!11059 rules!1069 lt!8709)))

(declare-fun lt!8716 () Unit!566)

(assert (=> b!50786 (= lt!8716 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!14 thiss!11059 rules!1069 lt!8718 lt!8709))))

(declare-fun b!50787 () Bool)

(assert (=> b!50787 (= e!29777 e!29772)))

(declare-fun res!33385 () Bool)

(assert (=> b!50787 (=> (not res!33385) (not e!29772))))

(assert (=> b!50787 (= res!33385 (<= from!821 lt!8717))))

(declare-fun size!934 (BalanceConc!474) Int)

(assert (=> b!50787 (= lt!8717 (size!934 v!6227))))

(declare-fun b!50788 () Bool)

(assert (=> b!50788 (= e!29778 e!29773)))

(declare-fun res!33382 () Bool)

(assert (=> b!50788 (=> res!33382 e!29773)))

(assert (=> b!50788 (= res!33382 (not (contains!96 v!6227 lt!8712)))))

(assert (=> b!50788 (= lt!8712 (apply!80 v!6227 (+ 1 from!821)))))

(declare-fun b!50789 () Bool)

(declare-fun res!33388 () Bool)

(assert (=> b!50789 (=> res!33388 e!29773)))

(assert (=> b!50789 (= res!33388 (not (contains!97 lt!8718 lt!8712)))))

(declare-fun b!50790 () Bool)

(declare-fun res!33386 () Bool)

(assert (=> b!50790 (=> (not res!33386) (not e!29772))))

(declare-fun rulesInvariant!101 (LexerInterface!107 List!1009) Bool)

(assert (=> b!50790 (= res!33386 (rulesInvariant!101 thiss!11059 rules!1069))))

(assert (= (and start!3646 res!33390) b!50787))

(assert (= (and b!50787 res!33385) b!50777))

(assert (= (and b!50777 res!33392) b!50790))

(assert (= (and b!50790 res!33386) b!50779))

(assert (= (and b!50779 res!33384) b!50784))

(assert (= (and b!50784 res!33389) b!50778))

(assert (= (and b!50778 (not res!33383)) b!50782))

(assert (= (and b!50782 (not res!33391)) b!50788))

(assert (= (and b!50788 (not res!33382)) b!50789))

(assert (= (and b!50789 (not res!33388)) b!50786))

(assert (= (and b!50786 res!33387) b!50780))

(assert (= start!3646 b!50781))

(assert (= b!50785 b!50776))

(assert (= b!50783 b!50785))

(assert (= (and start!3646 ((_ is Cons!1003) rules!1069)) b!50783))

(declare-fun m!25038 () Bool)

(assert (=> b!50780 m!25038))

(assert (=> b!50780 m!25038))

(declare-fun m!25040 () Bool)

(assert (=> b!50780 m!25040))

(declare-fun m!25042 () Bool)

(assert (=> b!50777 m!25042))

(declare-fun m!25044 () Bool)

(assert (=> b!50789 m!25044))

(declare-fun m!25046 () Bool)

(assert (=> b!50782 m!25046))

(declare-fun m!25048 () Bool)

(assert (=> b!50785 m!25048))

(declare-fun m!25050 () Bool)

(assert (=> b!50785 m!25050))

(declare-fun m!25052 () Bool)

(assert (=> b!50786 m!25052))

(declare-fun m!25054 () Bool)

(assert (=> b!50786 m!25054))

(declare-fun m!25056 () Bool)

(assert (=> b!50786 m!25056))

(declare-fun m!25058 () Bool)

(assert (=> b!50786 m!25058))

(declare-fun m!25060 () Bool)

(assert (=> b!50788 m!25060))

(declare-fun m!25062 () Bool)

(assert (=> b!50788 m!25062))

(declare-fun m!25064 () Bool)

(assert (=> b!50787 m!25064))

(declare-fun m!25066 () Bool)

(assert (=> start!3646 m!25066))

(declare-fun m!25068 () Bool)

(assert (=> b!50790 m!25068))

(declare-fun m!25070 () Bool)

(assert (=> b!50779 m!25070))

(declare-fun m!25072 () Bool)

(assert (=> b!50778 m!25072))

(declare-fun m!25074 () Bool)

(assert (=> b!50778 m!25074))

(declare-fun m!25076 () Bool)

(assert (=> b!50778 m!25076))

(declare-fun m!25078 () Bool)

(assert (=> b!50778 m!25078))

(declare-fun m!25080 () Bool)

(assert (=> b!50778 m!25080))

(declare-fun m!25082 () Bool)

(assert (=> b!50778 m!25082))

(declare-fun m!25084 () Bool)

(assert (=> b!50778 m!25084))

(declare-fun m!25086 () Bool)

(assert (=> b!50778 m!25086))

(declare-fun m!25088 () Bool)

(assert (=> b!50778 m!25088))

(declare-fun m!25090 () Bool)

(assert (=> b!50778 m!25090))

(declare-fun m!25092 () Bool)

(assert (=> b!50778 m!25092))

(declare-fun m!25094 () Bool)

(assert (=> b!50778 m!25094))

(declare-fun m!25096 () Bool)

(assert (=> b!50778 m!25096))

(declare-fun m!25098 () Bool)

(assert (=> b!50778 m!25098))

(declare-fun m!25100 () Bool)

(assert (=> b!50778 m!25100))

(declare-fun m!25102 () Bool)

(assert (=> b!50778 m!25102))

(declare-fun m!25104 () Bool)

(assert (=> b!50781 m!25104))

(check-sat (not b!50779) (not b!50786) b_and!1617 (not b!50780) (not b!50783) (not b!50789) (not b_next!1573) (not b_next!1575) (not b!50777) (not b!50778) (not b!50790) b_and!1615 (not start!3646) (not b!50788) (not b!50782) (not b!50787) (not b!50785) (not b!50781))
(check-sat b_and!1617 b_and!1615 (not b_next!1573) (not b_next!1575))

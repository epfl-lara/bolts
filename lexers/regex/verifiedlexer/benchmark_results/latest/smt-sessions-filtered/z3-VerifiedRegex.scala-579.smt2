; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17210 () Bool)

(assert start!17210)

(declare-fun b!159552 () Bool)

(declare-fun b_free!5961 () Bool)

(declare-fun b_next!5961 () Bool)

(assert (=> b!159552 (= b_free!5961 (not b_next!5961))))

(declare-fun tp!81311 () Bool)

(declare-fun b_and!9797 () Bool)

(assert (=> b!159552 (= tp!81311 b_and!9797)))

(declare-fun b_free!5963 () Bool)

(declare-fun b_next!5963 () Bool)

(assert (=> b!159552 (= b_free!5963 (not b_next!5963))))

(declare-fun tp!81307 () Bool)

(declare-fun b_and!9799 () Bool)

(assert (=> b!159552 (= tp!81307 b_and!9799)))

(declare-fun b!159557 () Bool)

(declare-fun b_free!5965 () Bool)

(declare-fun b_next!5965 () Bool)

(assert (=> b!159557 (= b_free!5965 (not b_next!5965))))

(declare-fun tp!81305 () Bool)

(declare-fun b_and!9801 () Bool)

(assert (=> b!159557 (= tp!81305 b_and!9801)))

(declare-fun b_free!5967 () Bool)

(declare-fun b_next!5967 () Bool)

(assert (=> b!159557 (= b_free!5967 (not b_next!5967))))

(declare-fun tp!81308 () Bool)

(declare-fun b_and!9803 () Bool)

(assert (=> b!159557 (= tp!81308 b_and!9803)))

(declare-fun b!159549 () Bool)

(declare-fun b_free!5969 () Bool)

(declare-fun b_next!5969 () Bool)

(assert (=> b!159549 (= b_free!5969 (not b_next!5969))))

(declare-fun tp!81313 () Bool)

(declare-fun b_and!9805 () Bool)

(assert (=> b!159549 (= tp!81313 b_and!9805)))

(declare-fun b_free!5971 () Bool)

(declare-fun b_next!5971 () Bool)

(assert (=> b!159549 (= b_free!5971 (not b_next!5971))))

(declare-fun tp!81316 () Bool)

(declare-fun b_and!9807 () Bool)

(assert (=> b!159549 (= tp!81316 b_and!9807)))

(declare-fun b!159543 () Bool)

(declare-fun e!95866 () Bool)

(assert (=> b!159543 (= e!95866 true)))

(declare-fun lt!47883 () Bool)

(declare-datatypes ((List!2747 0))(
  ( (Nil!2737) (Cons!2737 (h!8134 (_ BitVec 16)) (t!25811 List!2747)) )
))
(declare-datatypes ((TokenValue!503 0))(
  ( (FloatLiteralValue!1006 (text!3966 List!2747)) (TokenValueExt!502 (__x!2493 Int)) (Broken!2515 (value!17998 List!2747)) (Object!512) (End!503) (Def!503) (Underscore!503) (Match!503) (Else!503) (Error!503) (Case!503) (If!503) (Extends!503) (Abstract!503) (Class!503) (Val!503) (DelimiterValue!1006 (del!563 List!2747)) (KeywordValue!509 (value!17999 List!2747)) (CommentValue!1006 (value!18000 List!2747)) (WhitespaceValue!1006 (value!18001 List!2747)) (IndentationValue!503 (value!18002 List!2747)) (String!3594) (Int32!503) (Broken!2516 (value!18003 List!2747)) (Boolean!504) (Unit!2225) (OperatorValue!506 (op!563 List!2747)) (IdentifierValue!1006 (value!18004 List!2747)) (IdentifierValue!1007 (value!18005 List!2747)) (WhitespaceValue!1007 (value!18006 List!2747)) (True!1006) (False!1006) (Broken!2517 (value!18007 List!2747)) (Broken!2518 (value!18008 List!2747)) (True!1007) (RightBrace!503) (RightBracket!503) (Colon!503) (Null!503) (Comma!503) (LeftBracket!503) (False!1007) (LeftBrace!503) (ImaginaryLiteralValue!503 (text!3967 List!2747)) (StringLiteralValue!1509 (value!18009 List!2747)) (EOFValue!503 (value!18010 List!2747)) (IdentValue!503 (value!18011 List!2747)) (DelimiterValue!1007 (value!18012 List!2747)) (DedentValue!503 (value!18013 List!2747)) (NewLineValue!503 (value!18014 List!2747)) (IntegerValue!1509 (value!18015 (_ BitVec 32)) (text!3968 List!2747)) (IntegerValue!1510 (value!18016 Int) (text!3969 List!2747)) (Times!503) (Or!503) (Equal!503) (Minus!503) (Broken!2519 (value!18017 List!2747)) (And!503) (Div!503) (LessEqual!503) (Mod!503) (Concat!1208) (Not!503) (Plus!503) (SpaceValue!503 (value!18018 List!2747)) (IntegerValue!1511 (value!18019 Int) (text!3970 List!2747)) (StringLiteralValue!1510 (text!3971 List!2747)) (FloatLiteralValue!1007 (text!3972 List!2747)) (BytesLiteralValue!503 (value!18020 List!2747)) (CommentValue!1007 (value!18021 List!2747)) (StringLiteralValue!1511 (value!18022 List!2747)) (ErrorTokenValue!503 (msg!564 List!2747)) )
))
(declare-datatypes ((C!2332 0))(
  ( (C!2333 (val!1052 Int)) )
))
(declare-datatypes ((List!2748 0))(
  ( (Nil!2738) (Cons!2738 (h!8135 C!2332) (t!25812 List!2748)) )
))
(declare-datatypes ((IArray!1569 0))(
  ( (IArray!1570 (innerList!842 List!2748)) )
))
(declare-datatypes ((Conc!784 0))(
  ( (Node!784 (left!2067 Conc!784) (right!2397 Conc!784) (csize!1798 Int) (cheight!995 Int)) (Leaf!1364 (xs!3379 IArray!1569) (csize!1799 Int)) (Empty!784) )
))
(declare-datatypes ((BalanceConc!1576 0))(
  ( (BalanceConc!1577 (c!32013 Conc!784)) )
))
(declare-datatypes ((Regex!705 0))(
  ( (ElementMatch!705 (c!32014 C!2332)) (Concat!1209 (regOne!1922 Regex!705) (regTwo!1922 Regex!705)) (EmptyExpr!705) (Star!705 (reg!1034 Regex!705)) (EmptyLang!705) (Union!705 (regOne!1923 Regex!705) (regTwo!1923 Regex!705)) )
))
(declare-datatypes ((String!3595 0))(
  ( (String!3596 (value!18023 String)) )
))
(declare-datatypes ((TokenValueInjection!778 0))(
  ( (TokenValueInjection!779 (toValue!1132 Int) (toChars!991 Int)) )
))
(declare-datatypes ((Rule!762 0))(
  ( (Rule!763 (regex!481 Regex!705) (tag!659 String!3595) (isSeparator!481 Bool) (transformation!481 TokenValueInjection!778)) )
))
(declare-datatypes ((Token!706 0))(
  ( (Token!707 (value!18024 TokenValue!503) (rule!988 Rule!762) (size!2314 Int) (originalCharacters!524 List!2748)) )
))
(declare-datatypes ((List!2749 0))(
  ( (Nil!2739) (Cons!2739 (h!8136 Token!706) (t!25813 List!2749)) )
))
(declare-datatypes ((IArray!1571 0))(
  ( (IArray!1572 (innerList!843 List!2749)) )
))
(declare-datatypes ((Conc!785 0))(
  ( (Node!785 (left!2068 Conc!785) (right!2398 Conc!785) (csize!1800 Int) (cheight!996 Int)) (Leaf!1365 (xs!3380 IArray!1571) (csize!1801 Int)) (Empty!785) )
))
(declare-datatypes ((BalanceConc!1578 0))(
  ( (BalanceConc!1579 (c!32015 Conc!785)) )
))
(declare-fun lt!47875 () BalanceConc!1578)

(declare-datatypes ((List!2750 0))(
  ( (Nil!2740) (Cons!2740 (h!8137 Rule!762) (t!25814 List!2750)) )
))
(declare-fun rules!1920 () List!2750)

(declare-datatypes ((LexerInterface!367 0))(
  ( (LexerInterfaceExt!364 (__x!2494 Int)) (Lexer!365) )
))
(declare-fun thiss!17480 () LexerInterface!367)

(declare-fun rulesProduceEachTokenIndividually!159 (LexerInterface!367 List!2750 BalanceConc!1578) Bool)

(assert (=> b!159543 (= lt!47883 (rulesProduceEachTokenIndividually!159 thiss!17480 rules!1920 lt!47875))))

(declare-fun b!159544 () Bool)

(declare-fun e!95876 () Bool)

(declare-fun e!95880 () Bool)

(assert (=> b!159544 (= e!95876 e!95880)))

(declare-fun res!72413 () Bool)

(assert (=> b!159544 (=> (not res!72413) (not e!95880))))

(declare-fun lt!47884 () List!2748)

(declare-fun lt!47876 () List!2748)

(assert (=> b!159544 (= res!72413 (= lt!47884 lt!47876))))

(declare-fun separatorToken!170 () Token!706)

(declare-fun lt!47882 () BalanceConc!1578)

(declare-fun list!983 (BalanceConc!1576) List!2748)

(declare-fun printWithSeparatorTokenWhenNeededRec!50 (LexerInterface!367 List!2750 BalanceConc!1578 Token!706 Int) BalanceConc!1576)

(assert (=> b!159544 (= lt!47876 (list!983 (printWithSeparatorTokenWhenNeededRec!50 thiss!17480 rules!1920 lt!47882 separatorToken!170 0)))))

(declare-fun tokens!465 () List!2749)

(declare-fun printWithSeparatorTokenWhenNeededList!60 (LexerInterface!367 List!2750 List!2749 Token!706) List!2748)

(assert (=> b!159544 (= lt!47884 (printWithSeparatorTokenWhenNeededList!60 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!159545 () Bool)

(declare-fun res!72421 () Bool)

(assert (=> b!159545 (=> (not res!72421) (not e!95876))))

(declare-fun sepAndNonSepRulesDisjointChars!70 (List!2750 List!2750) Bool)

(assert (=> b!159545 (= res!72421 (sepAndNonSepRulesDisjointChars!70 rules!1920 rules!1920))))

(declare-fun e!95881 () Bool)

(declare-fun e!95867 () Bool)

(declare-fun tp!81315 () Bool)

(declare-fun b!159546 () Bool)

(declare-fun inv!3551 (String!3595) Bool)

(declare-fun inv!3554 (TokenValueInjection!778) Bool)

(assert (=> b!159546 (= e!95867 (and tp!81315 (inv!3551 (tag!659 (rule!988 (h!8136 tokens!465)))) (inv!3554 (transformation!481 (rule!988 (h!8136 tokens!465)))) e!95881))))

(declare-fun tp!81317 () Bool)

(declare-fun b!159547 () Bool)

(declare-fun e!95877 () Bool)

(declare-fun e!95868 () Bool)

(assert (=> b!159547 (= e!95868 (and tp!81317 (inv!3551 (tag!659 (h!8137 rules!1920))) (inv!3554 (transformation!481 (h!8137 rules!1920))) e!95877))))

(declare-fun b!159548 () Bool)

(declare-fun res!72419 () Bool)

(assert (=> b!159548 (=> (not res!72419) (not e!95876))))

(declare-fun lambda!4312 () Int)

(declare-fun forall!497 (List!2749 Int) Bool)

(assert (=> b!159548 (= res!72419 (forall!497 tokens!465 lambda!4312))))

(assert (=> b!159549 (= e!95881 (and tp!81313 tp!81316))))

(declare-fun b!159550 () Bool)

(declare-fun res!72415 () Bool)

(assert (=> b!159550 (=> (not res!72415) (not e!95876))))

(assert (=> b!159550 (= res!72415 (isSeparator!481 (rule!988 separatorToken!170)))))

(declare-fun b!159551 () Bool)

(declare-fun res!72422 () Bool)

(assert (=> b!159551 (=> (not res!72422) (not e!95880))))

(declare-fun seqFromList!339 (List!2748) BalanceConc!1576)

(assert (=> b!159551 (= res!72422 (= (list!983 (seqFromList!339 lt!47884)) lt!47876))))

(declare-fun e!95871 () Bool)

(assert (=> b!159552 (= e!95871 (and tp!81311 tp!81307))))

(declare-fun b!159553 () Bool)

(assert (=> b!159553 (= e!95880 (not e!95866))))

(declare-fun res!72414 () Bool)

(assert (=> b!159553 (=> res!72414 e!95866)))

(declare-fun size!2315 (BalanceConc!1578) Int)

(assert (=> b!159553 (= res!72414 (> 0 (size!2315 lt!47875)))))

(declare-fun seqFromList!340 (List!2749) BalanceConc!1578)

(assert (=> b!159553 (= lt!47875 (seqFromList!340 (t!25813 tokens!465)))))

(declare-fun lt!47881 () List!2748)

(declare-fun lt!47879 () List!2748)

(declare-fun lt!47878 () List!2748)

(declare-fun lt!47877 () List!2748)

(declare-fun ++!606 (List!2748 List!2748) List!2748)

(assert (=> b!159553 (= (++!606 (++!606 lt!47877 lt!47881) lt!47878) (++!606 lt!47877 lt!47879))))

(declare-datatypes ((Unit!2226 0))(
  ( (Unit!2227) )
))
(declare-fun lt!47880 () Unit!2226)

(declare-fun lemmaConcatAssociativity!162 (List!2748 List!2748 List!2748) Unit!2226)

(assert (=> b!159553 (= lt!47880 (lemmaConcatAssociativity!162 lt!47877 lt!47881 lt!47878))))

(declare-fun charsOf!136 (Token!706) BalanceConc!1576)

(assert (=> b!159553 (= lt!47877 (list!983 (charsOf!136 (h!8136 tokens!465))))))

(assert (=> b!159553 (= lt!47879 (++!606 lt!47881 lt!47878))))

(assert (=> b!159553 (= lt!47878 (printWithSeparatorTokenWhenNeededList!60 thiss!17480 rules!1920 (t!25813 tokens!465) separatorToken!170))))

(assert (=> b!159553 (= lt!47881 (list!983 (charsOf!136 separatorToken!170)))))

(declare-fun b!159554 () Bool)

(declare-fun res!72420 () Bool)

(assert (=> b!159554 (=> (not res!72420) (not e!95876))))

(declare-fun rulesProduceIndividualToken!116 (LexerInterface!367 List!2750 Token!706) Bool)

(assert (=> b!159554 (= res!72420 (rulesProduceIndividualToken!116 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!72424 () Bool)

(declare-fun e!95863 () Bool)

(assert (=> start!17210 (=> (not res!72424) (not e!95863))))

(get-info :version)

(assert (=> start!17210 (= res!72424 ((_ is Lexer!365) thiss!17480))))

(assert (=> start!17210 e!95863))

(assert (=> start!17210 true))

(declare-fun e!95865 () Bool)

(assert (=> start!17210 e!95865))

(declare-fun e!95872 () Bool)

(declare-fun inv!3555 (Token!706) Bool)

(assert (=> start!17210 (and (inv!3555 separatorToken!170) e!95872)))

(declare-fun e!95879 () Bool)

(assert (=> start!17210 e!95879))

(declare-fun tp!81312 () Bool)

(declare-fun e!95864 () Bool)

(declare-fun b!159555 () Bool)

(declare-fun inv!21 (TokenValue!503) Bool)

(assert (=> b!159555 (= e!95864 (and (inv!21 (value!18024 (h!8136 tokens!465))) e!95867 tp!81312))))

(declare-fun b!159556 () Bool)

(declare-fun e!95873 () Bool)

(declare-fun tp!81314 () Bool)

(assert (=> b!159556 (= e!95873 (and tp!81314 (inv!3551 (tag!659 (rule!988 separatorToken!170))) (inv!3554 (transformation!481 (rule!988 separatorToken!170))) e!95871))))

(assert (=> b!159557 (= e!95877 (and tp!81305 tp!81308))))

(declare-fun b!159558 () Bool)

(declare-fun res!72417 () Bool)

(assert (=> b!159558 (=> (not res!72417) (not e!95863))))

(declare-fun rulesInvariant!333 (LexerInterface!367 List!2750) Bool)

(assert (=> b!159558 (= res!72417 (rulesInvariant!333 thiss!17480 rules!1920))))

(declare-fun b!159559 () Bool)

(assert (=> b!159559 (= e!95863 e!95876)))

(declare-fun res!72423 () Bool)

(assert (=> b!159559 (=> (not res!72423) (not e!95876))))

(assert (=> b!159559 (= res!72423 (rulesProduceEachTokenIndividually!159 thiss!17480 rules!1920 lt!47882))))

(assert (=> b!159559 (= lt!47882 (seqFromList!340 tokens!465))))

(declare-fun b!159560 () Bool)

(declare-fun tp!81306 () Bool)

(assert (=> b!159560 (= e!95865 (and e!95868 tp!81306))))

(declare-fun b!159561 () Bool)

(declare-fun tp!81309 () Bool)

(assert (=> b!159561 (= e!95879 (and (inv!3555 (h!8136 tokens!465)) e!95864 tp!81309))))

(declare-fun b!159562 () Bool)

(declare-fun tp!81310 () Bool)

(assert (=> b!159562 (= e!95872 (and (inv!21 (value!18024 separatorToken!170)) e!95873 tp!81310))))

(declare-fun b!159563 () Bool)

(declare-fun res!72416 () Bool)

(assert (=> b!159563 (=> (not res!72416) (not e!95876))))

(assert (=> b!159563 (= res!72416 ((_ is Cons!2739) tokens!465))))

(declare-fun b!159564 () Bool)

(declare-fun res!72418 () Bool)

(assert (=> b!159564 (=> (not res!72418) (not e!95863))))

(declare-fun isEmpty!1106 (List!2750) Bool)

(assert (=> b!159564 (= res!72418 (not (isEmpty!1106 rules!1920)))))

(assert (= (and start!17210 res!72424) b!159564))

(assert (= (and b!159564 res!72418) b!159558))

(assert (= (and b!159558 res!72417) b!159559))

(assert (= (and b!159559 res!72423) b!159554))

(assert (= (and b!159554 res!72420) b!159550))

(assert (= (and b!159550 res!72415) b!159548))

(assert (= (and b!159548 res!72419) b!159545))

(assert (= (and b!159545 res!72421) b!159563))

(assert (= (and b!159563 res!72416) b!159544))

(assert (= (and b!159544 res!72413) b!159551))

(assert (= (and b!159551 res!72422) b!159553))

(assert (= (and b!159553 (not res!72414)) b!159543))

(assert (= b!159547 b!159557))

(assert (= b!159560 b!159547))

(assert (= (and start!17210 ((_ is Cons!2740) rules!1920)) b!159560))

(assert (= b!159556 b!159552))

(assert (= b!159562 b!159556))

(assert (= start!17210 b!159562))

(assert (= b!159546 b!159549))

(assert (= b!159555 b!159546))

(assert (= b!159561 b!159555))

(assert (= (and start!17210 ((_ is Cons!2739) tokens!465)) b!159561))

(declare-fun m!148157 () Bool)

(assert (=> b!159561 m!148157))

(declare-fun m!148159 () Bool)

(assert (=> b!159546 m!148159))

(declare-fun m!148161 () Bool)

(assert (=> b!159546 m!148161))

(declare-fun m!148163 () Bool)

(assert (=> b!159558 m!148163))

(declare-fun m!148165 () Bool)

(assert (=> start!17210 m!148165))

(declare-fun m!148167 () Bool)

(assert (=> b!159547 m!148167))

(declare-fun m!148169 () Bool)

(assert (=> b!159547 m!148169))

(declare-fun m!148171 () Bool)

(assert (=> b!159554 m!148171))

(declare-fun m!148173 () Bool)

(assert (=> b!159556 m!148173))

(declare-fun m!148175 () Bool)

(assert (=> b!159556 m!148175))

(declare-fun m!148177 () Bool)

(assert (=> b!159562 m!148177))

(declare-fun m!148179 () Bool)

(assert (=> b!159545 m!148179))

(declare-fun m!148181 () Bool)

(assert (=> b!159544 m!148181))

(assert (=> b!159544 m!148181))

(declare-fun m!148183 () Bool)

(assert (=> b!159544 m!148183))

(declare-fun m!148185 () Bool)

(assert (=> b!159544 m!148185))

(declare-fun m!148187 () Bool)

(assert (=> b!159559 m!148187))

(declare-fun m!148189 () Bool)

(assert (=> b!159559 m!148189))

(declare-fun m!148191 () Bool)

(assert (=> b!159553 m!148191))

(declare-fun m!148193 () Bool)

(assert (=> b!159553 m!148193))

(assert (=> b!159553 m!148191))

(declare-fun m!148195 () Bool)

(assert (=> b!159553 m!148195))

(declare-fun m!148197 () Bool)

(assert (=> b!159553 m!148197))

(assert (=> b!159553 m!148195))

(declare-fun m!148199 () Bool)

(assert (=> b!159553 m!148199))

(declare-fun m!148201 () Bool)

(assert (=> b!159553 m!148201))

(declare-fun m!148203 () Bool)

(assert (=> b!159553 m!148203))

(declare-fun m!148205 () Bool)

(assert (=> b!159553 m!148205))

(assert (=> b!159553 m!148203))

(declare-fun m!148207 () Bool)

(assert (=> b!159553 m!148207))

(declare-fun m!148209 () Bool)

(assert (=> b!159553 m!148209))

(declare-fun m!148211 () Bool)

(assert (=> b!159553 m!148211))

(declare-fun m!148213 () Bool)

(assert (=> b!159553 m!148213))

(declare-fun m!148215 () Bool)

(assert (=> b!159564 m!148215))

(declare-fun m!148217 () Bool)

(assert (=> b!159543 m!148217))

(declare-fun m!148219 () Bool)

(assert (=> b!159555 m!148219))

(declare-fun m!148221 () Bool)

(assert (=> b!159548 m!148221))

(declare-fun m!148223 () Bool)

(assert (=> b!159551 m!148223))

(assert (=> b!159551 m!148223))

(declare-fun m!148225 () Bool)

(assert (=> b!159551 m!148225))

(check-sat (not b_next!5967) (not b_next!5965) (not b!159555) (not b!159559) (not b!159562) (not b!159545) (not b!159553) (not b!159558) b_and!9807 (not b!159554) (not b!159564) (not b_next!5971) (not start!17210) b_and!9805 b_and!9803 (not b!159543) b_and!9801 (not b!159544) (not b_next!5963) (not b_next!5961) (not b_next!5969) b_and!9797 (not b!159556) b_and!9799 (not b!159548) (not b!159560) (not b!159551) (not b!159546) (not b!159561) (not b!159547))
(check-sat b_and!9801 (not b_next!5967) (not b_next!5965) b_and!9797 b_and!9799 b_and!9807 (not b_next!5971) b_and!9805 b_and!9803 (not b_next!5963) (not b_next!5961) (not b_next!5969))

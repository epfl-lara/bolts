; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275958 () Bool)

(assert start!275958)

(declare-fun b!2837069 () Bool)

(declare-fun b_free!81853 () Bool)

(declare-fun b_next!82557 () Bool)

(assert (=> b!2837069 (= b_free!81853 (not b_next!82557))))

(declare-fun tp!907851 () Bool)

(declare-fun b_and!207723 () Bool)

(assert (=> b!2837069 (= tp!907851 b_and!207723)))

(declare-fun b_free!81855 () Bool)

(declare-fun b_next!82559 () Bool)

(assert (=> b!2837069 (= b_free!81855 (not b_next!82559))))

(declare-fun tp!907856 () Bool)

(declare-fun b_and!207725 () Bool)

(assert (=> b!2837069 (= tp!907856 b_and!207725)))

(declare-fun b!2837055 () Bool)

(declare-fun b_free!81857 () Bool)

(declare-fun b_next!82561 () Bool)

(assert (=> b!2837055 (= b_free!81857 (not b_next!82561))))

(declare-fun tp!907859 () Bool)

(declare-fun b_and!207727 () Bool)

(assert (=> b!2837055 (= tp!907859 b_and!207727)))

(declare-fun b_free!81859 () Bool)

(declare-fun b_next!82563 () Bool)

(assert (=> b!2837055 (= b_free!81859 (not b_next!82563))))

(declare-fun tp!907853 () Bool)

(declare-fun b_and!207729 () Bool)

(assert (=> b!2837055 (= tp!907853 b_and!207729)))

(declare-fun b!2837068 () Bool)

(declare-fun b_free!81861 () Bool)

(declare-fun b_next!82565 () Bool)

(assert (=> b!2837068 (= b_free!81861 (not b_next!82565))))

(declare-fun tp!907850 () Bool)

(declare-fun b_and!207731 () Bool)

(assert (=> b!2837068 (= tp!907850 b_and!207731)))

(declare-fun b_free!81863 () Bool)

(declare-fun b_next!82567 () Bool)

(assert (=> b!2837068 (= b_free!81863 (not b_next!82567))))

(declare-fun tp!907852 () Bool)

(declare-fun b_and!207733 () Bool)

(assert (=> b!2837068 (= tp!907852 b_and!207733)))

(declare-fun e!1796535 () Bool)

(assert (=> b!2837055 (= e!1796535 (and tp!907859 tp!907853))))

(declare-fun b!2837056 () Bool)

(declare-fun e!1796544 () Bool)

(declare-fun e!1796533 () Bool)

(declare-fun tp!907847 () Bool)

(assert (=> b!2837056 (= e!1796544 (and e!1796533 tp!907847))))

(declare-fun tp!907854 () Bool)

(declare-fun e!1796531 () Bool)

(declare-fun e!1796538 () Bool)

(declare-datatypes ((String!36828 0))(
  ( (String!36829 (value!161728 String)) )
))
(declare-datatypes ((C!17026 0))(
  ( (C!17027 (val!10525 Int)) )
))
(declare-datatypes ((List!33630 0))(
  ( (Nil!33506) (Cons!33506 (h!38926 C!17026) (t!232007 List!33630)) )
))
(declare-datatypes ((IArray!20827 0))(
  ( (IArray!20828 (innerList!10471 List!33630)) )
))
(declare-datatypes ((Conc!10411 0))(
  ( (Node!10411 (left!25278 Conc!10411) (right!25608 Conc!10411) (csize!21052 Int) (cheight!10622 Int)) (Leaf!15835 (xs!13523 IArray!20827) (csize!21053 Int)) (Empty!10411) )
))
(declare-datatypes ((BalanceConc!20460 0))(
  ( (BalanceConc!20461 (c!458402 Conc!10411)) )
))
(declare-datatypes ((List!33631 0))(
  ( (Nil!33507) (Cons!33507 (h!38927 (_ BitVec 16)) (t!232008 List!33631)) )
))
(declare-datatypes ((Regex!8422 0))(
  ( (ElementMatch!8422 (c!458403 C!17026)) (Concat!13683 (regOne!17356 Regex!8422) (regTwo!17356 Regex!8422)) (EmptyExpr!8422) (Star!8422 (reg!8751 Regex!8422)) (EmptyLang!8422) (Union!8422 (regOne!17357 Regex!8422) (regTwo!17357 Regex!8422)) )
))
(declare-datatypes ((TokenValue!5261 0))(
  ( (FloatLiteralValue!10522 (text!37272 List!33631)) (TokenValueExt!5260 (__x!22260 Int)) (Broken!26305 (value!161729 List!33631)) (Object!5384) (End!5261) (Def!5261) (Underscore!5261) (Match!5261) (Else!5261) (Error!5261) (Case!5261) (If!5261) (Extends!5261) (Abstract!5261) (Class!5261) (Val!5261) (DelimiterValue!10522 (del!5321 List!33631)) (KeywordValue!5267 (value!161730 List!33631)) (CommentValue!10522 (value!161731 List!33631)) (WhitespaceValue!10522 (value!161732 List!33631)) (IndentationValue!5261 (value!161733 List!33631)) (String!36830) (Int32!5261) (Broken!26306 (value!161734 List!33631)) (Boolean!5262) (Unit!47433) (OperatorValue!5264 (op!5321 List!33631)) (IdentifierValue!10522 (value!161735 List!33631)) (IdentifierValue!10523 (value!161736 List!33631)) (WhitespaceValue!10523 (value!161737 List!33631)) (True!10522) (False!10522) (Broken!26307 (value!161738 List!33631)) (Broken!26308 (value!161739 List!33631)) (True!10523) (RightBrace!5261) (RightBracket!5261) (Colon!5261) (Null!5261) (Comma!5261) (LeftBracket!5261) (False!10523) (LeftBrace!5261) (ImaginaryLiteralValue!5261 (text!37273 List!33631)) (StringLiteralValue!15783 (value!161740 List!33631)) (EOFValue!5261 (value!161741 List!33631)) (IdentValue!5261 (value!161742 List!33631)) (DelimiterValue!10523 (value!161743 List!33631)) (DedentValue!5261 (value!161744 List!33631)) (NewLineValue!5261 (value!161745 List!33631)) (IntegerValue!15783 (value!161746 (_ BitVec 32)) (text!37274 List!33631)) (IntegerValue!15784 (value!161747 Int) (text!37275 List!33631)) (Times!5261) (Or!5261) (Equal!5261) (Minus!5261) (Broken!26309 (value!161748 List!33631)) (And!5261) (Div!5261) (LessEqual!5261) (Mod!5261) (Concat!13684) (Not!5261) (Plus!5261) (SpaceValue!5261 (value!161749 List!33631)) (IntegerValue!15785 (value!161750 Int) (text!37276 List!33631)) (StringLiteralValue!15784 (text!37277 List!33631)) (FloatLiteralValue!10523 (text!37278 List!33631)) (BytesLiteralValue!5261 (value!161751 List!33631)) (CommentValue!10523 (value!161752 List!33631)) (StringLiteralValue!15785 (value!161753 List!33631)) (ErrorTokenValue!5261 (msg!5322 List!33631)) )
))
(declare-datatypes ((TokenValueInjection!9950 0))(
  ( (TokenValueInjection!9951 (toValue!7073 Int) (toChars!6932 Int)) )
))
(declare-datatypes ((Rule!9862 0))(
  ( (Rule!9863 (regex!5031 Regex!8422) (tag!5535 String!36828) (isSeparator!5031 Bool) (transformation!5031 TokenValueInjection!9950)) )
))
(declare-datatypes ((Token!9464 0))(
  ( (Token!9465 (value!161754 TokenValue!5261) (rule!7459 Rule!9862) (size!26064 Int) (originalCharacters!5763 List!33630)) )
))
(declare-datatypes ((List!33632 0))(
  ( (Nil!33508) (Cons!33508 (h!38928 Token!9464) (t!232009 List!33632)) )
))
(declare-fun tokensBis!14 () List!33632)

(declare-fun b!2837057 () Bool)

(declare-fun inv!45477 (String!36828) Bool)

(declare-fun inv!45480 (TokenValueInjection!9950) Bool)

(assert (=> b!2837057 (= e!1796531 (and tp!907854 (inv!45477 (tag!5535 (rule!7459 (h!38928 tokensBis!14)))) (inv!45480 (transformation!5031 (rule!7459 (h!38928 tokensBis!14)))) e!1796538))))

(declare-fun b!2837058 () Bool)

(declare-fun tokens!612 () List!33632)

(declare-fun e!1796534 () Bool)

(declare-fun e!1796539 () Bool)

(declare-fun tp!907855 () Bool)

(declare-fun inv!45481 (Token!9464) Bool)

(assert (=> b!2837058 (= e!1796534 (and (inv!45481 (h!38928 tokens!612)) e!1796539 tp!907855))))

(declare-datatypes ((List!33633 0))(
  ( (Nil!33509) (Cons!33509 (h!38929 Rule!9862) (t!232010 List!33633)) )
))
(declare-fun rules!4246 () List!33633)

(declare-fun tp!907857 () Bool)

(declare-fun e!1796536 () Bool)

(declare-fun b!2837059 () Bool)

(assert (=> b!2837059 (= e!1796533 (and tp!907857 (inv!45477 (tag!5535 (h!38929 rules!4246))) (inv!45480 (transformation!5031 (h!38929 rules!4246))) e!1796536))))

(declare-fun b!2837060 () Bool)

(declare-fun tp!907848 () Bool)

(declare-fun e!1796543 () Bool)

(assert (=> b!2837060 (= e!1796543 (and tp!907848 (inv!45477 (tag!5535 (rule!7459 (h!38928 tokens!612)))) (inv!45480 (transformation!5031 (rule!7459 (h!38928 tokens!612)))) e!1796535))))

(declare-fun b!2837061 () Bool)

(declare-fun res!1180545 () Bool)

(declare-fun e!1796537 () Bool)

(assert (=> b!2837061 (=> (not res!1180545) (not e!1796537))))

(declare-fun subseq!497 (List!33632 List!33632) Bool)

(assert (=> b!2837061 (= res!1180545 (subseq!497 (t!232009 tokensBis!14) (t!232009 tokens!612)))))

(declare-fun res!1180542 () Bool)

(assert (=> start!275958 (=> (not res!1180542) (not e!1796537))))

(declare-datatypes ((LexerInterface!4621 0))(
  ( (LexerInterfaceExt!4618 (__x!22261 Int)) (Lexer!4619) )
))
(declare-fun thiss!27264 () LexerInterface!4621)

(assert (=> start!275958 (= res!1180542 (is-Lexer!4619 thiss!27264))))

(assert (=> start!275958 e!1796537))

(assert (=> start!275958 true))

(assert (=> start!275958 e!1796544))

(declare-fun e!1796545 () Bool)

(assert (=> start!275958 e!1796545))

(assert (=> start!275958 e!1796534))

(declare-fun b!2837062 () Bool)

(declare-fun res!1180544 () Bool)

(assert (=> b!2837062 (=> (not res!1180544) (not e!1796537))))

(assert (=> b!2837062 (= res!1180544 (and (not (is-Nil!33508 tokensBis!14)) (is-Cons!33508 tokens!612) (= (h!38928 tokensBis!14) (h!38928 tokens!612))))))

(declare-fun b!2837063 () Bool)

(declare-fun res!1180541 () Bool)

(assert (=> b!2837063 (=> (not res!1180541) (not e!1796537))))

(declare-fun rulesInvariant!4037 (LexerInterface!4621 List!33633) Bool)

(assert (=> b!2837063 (= res!1180541 (rulesInvariant!4037 thiss!27264 rules!4246))))

(declare-fun b!2837064 () Bool)

(assert (=> b!2837064 (= e!1796537 (not true))))

(declare-fun rulesProduceEachTokenIndividuallyList!1662 (LexerInterface!4621 List!33633 List!33632) Bool)

(assert (=> b!2837064 (rulesProduceEachTokenIndividuallyList!1662 thiss!27264 rules!4246 (t!232009 tokensBis!14))))

(declare-datatypes ((Unit!47434 0))(
  ( (Unit!47435) )
))
(declare-fun lt!1011464 () Unit!47434)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!78 (LexerInterface!4621 List!33633 List!33632 List!33632) Unit!47434)

(assert (=> b!2837064 (= lt!1011464 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!78 thiss!27264 rules!4246 (t!232009 tokens!612) (t!232009 tokensBis!14)))))

(declare-fun b!2837065 () Bool)

(declare-fun res!1180538 () Bool)

(assert (=> b!2837065 (=> (not res!1180538) (not e!1796537))))

(assert (=> b!2837065 (= res!1180538 (rulesProduceEachTokenIndividuallyList!1662 thiss!27264 rules!4246 (t!232009 tokens!612)))))

(declare-fun b!2837066 () Bool)

(declare-fun res!1180543 () Bool)

(assert (=> b!2837066 (=> (not res!1180543) (not e!1796537))))

(declare-fun isEmpty!18476 (List!33633) Bool)

(assert (=> b!2837066 (= res!1180543 (not (isEmpty!18476 rules!4246)))))

(declare-fun b!2837067 () Bool)

(declare-fun res!1180539 () Bool)

(assert (=> b!2837067 (=> (not res!1180539) (not e!1796537))))

(assert (=> b!2837067 (= res!1180539 (rulesProduceEachTokenIndividuallyList!1662 thiss!27264 rules!4246 tokens!612))))

(assert (=> b!2837068 (= e!1796536 (and tp!907850 tp!907852))))

(assert (=> b!2837069 (= e!1796538 (and tp!907851 tp!907856))))

(declare-fun b!2837070 () Bool)

(declare-fun tp!907858 () Bool)

(declare-fun e!1796541 () Bool)

(assert (=> b!2837070 (= e!1796545 (and (inv!45481 (h!38928 tokensBis!14)) e!1796541 tp!907858))))

(declare-fun b!2837071 () Bool)

(declare-fun tp!907860 () Bool)

(declare-fun inv!21 (TokenValue!5261) Bool)

(assert (=> b!2837071 (= e!1796541 (and (inv!21 (value!161754 (h!38928 tokensBis!14))) e!1796531 tp!907860))))

(declare-fun b!2837072 () Bool)

(declare-fun res!1180540 () Bool)

(assert (=> b!2837072 (=> (not res!1180540) (not e!1796537))))

(assert (=> b!2837072 (= res!1180540 (subseq!497 tokensBis!14 tokens!612))))

(declare-fun b!2837073 () Bool)

(declare-fun tp!907849 () Bool)

(assert (=> b!2837073 (= e!1796539 (and (inv!21 (value!161754 (h!38928 tokens!612))) e!1796543 tp!907849))))

(assert (= (and start!275958 res!1180542) b!2837066))

(assert (= (and b!2837066 res!1180543) b!2837063))

(assert (= (and b!2837063 res!1180541) b!2837072))

(assert (= (and b!2837072 res!1180540) b!2837067))

(assert (= (and b!2837067 res!1180539) b!2837062))

(assert (= (and b!2837062 res!1180544) b!2837061))

(assert (= (and b!2837061 res!1180545) b!2837065))

(assert (= (and b!2837065 res!1180538) b!2837064))

(assert (= b!2837059 b!2837068))

(assert (= b!2837056 b!2837059))

(assert (= (and start!275958 (is-Cons!33509 rules!4246)) b!2837056))

(assert (= b!2837057 b!2837069))

(assert (= b!2837071 b!2837057))

(assert (= b!2837070 b!2837071))

(assert (= (and start!275958 (is-Cons!33508 tokensBis!14)) b!2837070))

(assert (= b!2837060 b!2837055))

(assert (= b!2837073 b!2837060))

(assert (= b!2837058 b!2837073))

(assert (= (and start!275958 (is-Cons!33508 tokens!612)) b!2837058))

(declare-fun m!3266767 () Bool)

(assert (=> b!2837065 m!3266767))

(declare-fun m!3266769 () Bool)

(assert (=> b!2837058 m!3266769))

(declare-fun m!3266771 () Bool)

(assert (=> b!2837073 m!3266771))

(declare-fun m!3266773 () Bool)

(assert (=> b!2837060 m!3266773))

(declare-fun m!3266775 () Bool)

(assert (=> b!2837060 m!3266775))

(declare-fun m!3266777 () Bool)

(assert (=> b!2837059 m!3266777))

(declare-fun m!3266779 () Bool)

(assert (=> b!2837059 m!3266779))

(declare-fun m!3266781 () Bool)

(assert (=> b!2837070 m!3266781))

(declare-fun m!3266783 () Bool)

(assert (=> b!2837061 m!3266783))

(declare-fun m!3266785 () Bool)

(assert (=> b!2837072 m!3266785))

(declare-fun m!3266787 () Bool)

(assert (=> b!2837064 m!3266787))

(declare-fun m!3266789 () Bool)

(assert (=> b!2837064 m!3266789))

(declare-fun m!3266791 () Bool)

(assert (=> b!2837066 m!3266791))

(declare-fun m!3266793 () Bool)

(assert (=> b!2837071 m!3266793))

(declare-fun m!3266795 () Bool)

(assert (=> b!2837067 m!3266795))

(declare-fun m!3266797 () Bool)

(assert (=> b!2837063 m!3266797))

(declare-fun m!3266799 () Bool)

(assert (=> b!2837057 m!3266799))

(declare-fun m!3266801 () Bool)

(assert (=> b!2837057 m!3266801))

(push 1)

(assert (not b!2837063))

(assert (not b!2837059))

(assert (not b_next!82561))

(assert (not b!2837057))

(assert (not b!2837058))

(assert b_and!207725)

(assert b_and!207727)

(assert (not b!2837073))

(assert (not b_next!82565))

(assert b_and!207723)

(assert (not b!2837056))

(assert (not b_next!82563))

(assert (not b_next!82567))

(assert (not b!2837061))

(assert (not b!2837064))

(assert (not b!2837072))

(assert (not b!2837066))

(assert (not b!2837060))

(assert (not b!2837070))

(assert b_and!207733)

(assert (not b!2837067))

(assert (not b!2837071))

(assert (not b!2837065))

(assert (not b_next!82557))

(assert b_and!207729)

(assert (not b_next!82559))

(assert b_and!207731)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82561))

(assert b_and!207733)

(assert b_and!207725)

(assert b_and!207727)

(assert (not b_next!82565))

(assert b_and!207723)

(assert (not b_next!82563))

(assert (not b_next!82567))

(assert (not b_next!82557))

(assert b_and!207729)

(assert (not b_next!82559))

(assert b_and!207731)

(check-sat)

(pop 1)


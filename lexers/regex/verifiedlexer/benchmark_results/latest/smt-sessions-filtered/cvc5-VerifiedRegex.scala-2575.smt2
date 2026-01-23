; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137888 () Bool)

(assert start!137888)

(declare-fun b!1472019 () Bool)

(declare-fun b_free!37299 () Bool)

(declare-fun b_next!38003 () Bool)

(assert (=> b!1472019 (= b_free!37299 (not b_next!38003))))

(declare-fun tp!415782 () Bool)

(declare-fun b_and!101093 () Bool)

(assert (=> b!1472019 (= tp!415782 b_and!101093)))

(declare-fun b_free!37301 () Bool)

(declare-fun b_next!38005 () Bool)

(assert (=> b!1472019 (= b_free!37301 (not b_next!38005))))

(declare-fun tp!415780 () Bool)

(declare-fun b_and!101095 () Bool)

(assert (=> b!1472019 (= tp!415780 b_and!101095)))

(declare-fun b!1472009 () Bool)

(declare-fun b_free!37303 () Bool)

(declare-fun b_next!38007 () Bool)

(assert (=> b!1472009 (= b_free!37303 (not b_next!38007))))

(declare-fun tp!415779 () Bool)

(declare-fun b_and!101097 () Bool)

(assert (=> b!1472009 (= tp!415779 b_and!101097)))

(declare-fun b_free!37305 () Bool)

(declare-fun b_next!38009 () Bool)

(assert (=> b!1472009 (= b_free!37305 (not b_next!38009))))

(declare-fun tp!415777 () Bool)

(declare-fun b_and!101099 () Bool)

(assert (=> b!1472009 (= tp!415777 b_and!101099)))

(declare-fun b!1472002 () Bool)

(declare-fun b_free!37307 () Bool)

(declare-fun b_next!38011 () Bool)

(assert (=> b!1472002 (= b_free!37307 (not b_next!38011))))

(declare-fun tp!415788 () Bool)

(declare-fun b_and!101101 () Bool)

(assert (=> b!1472002 (= tp!415788 b_and!101101)))

(declare-fun b_free!37309 () Bool)

(declare-fun b_next!38013 () Bool)

(assert (=> b!1472002 (= b_free!37309 (not b_next!38013))))

(declare-fun tp!415786 () Bool)

(declare-fun b_and!101103 () Bool)

(assert (=> b!1472002 (= tp!415786 b_and!101103)))

(declare-fun e!940111 () Bool)

(assert (=> b!1472002 (= e!940111 (and tp!415788 tp!415786))))

(declare-fun b!1472003 () Bool)

(declare-fun res!665357 () Bool)

(declare-fun e!940112 () Bool)

(assert (=> b!1472003 (=> (not res!665357) (not e!940112))))

(declare-datatypes ((List!15517 0))(
  ( (Nil!15451) (Cons!15451 (h!20852 (_ BitVec 16)) (t!135826 List!15517)) )
))
(declare-datatypes ((C!8302 0))(
  ( (C!8303 (val!4721 Int)) )
))
(declare-datatypes ((List!15518 0))(
  ( (Nil!15452) (Cons!15452 (h!20853 C!8302) (t!135827 List!15518)) )
))
(declare-datatypes ((Regex!4062 0))(
  ( (ElementMatch!4062 (c!242318 C!8302)) (Concat!6900 (regOne!8636 Regex!4062) (regTwo!8636 Regex!4062)) (EmptyExpr!4062) (Star!4062 (reg!4391 Regex!4062)) (EmptyLang!4062) (Union!4062 (regOne!8637 Regex!4062) (regTwo!8637 Regex!4062)) )
))
(declare-datatypes ((TokenValue!2838 0))(
  ( (FloatLiteralValue!5676 (text!20311 List!15517)) (TokenValueExt!2837 (__x!9466 Int)) (Broken!14190 (value!87941 List!15517)) (Object!2903) (End!2838) (Def!2838) (Underscore!2838) (Match!2838) (Else!2838) (Error!2838) (Case!2838) (If!2838) (Extends!2838) (Abstract!2838) (Class!2838) (Val!2838) (DelimiterValue!5676 (del!2898 List!15517)) (KeywordValue!2844 (value!87942 List!15517)) (CommentValue!5676 (value!87943 List!15517)) (WhitespaceValue!5676 (value!87944 List!15517)) (IndentationValue!2838 (value!87945 List!15517)) (String!18447) (Int32!2838) (Broken!14191 (value!87946 List!15517)) (Boolean!2839) (Unit!25145) (OperatorValue!2841 (op!2898 List!15517)) (IdentifierValue!5676 (value!87947 List!15517)) (IdentifierValue!5677 (value!87948 List!15517)) (WhitespaceValue!5677 (value!87949 List!15517)) (True!5676) (False!5676) (Broken!14192 (value!87950 List!15517)) (Broken!14193 (value!87951 List!15517)) (True!5677) (RightBrace!2838) (RightBracket!2838) (Colon!2838) (Null!2838) (Comma!2838) (LeftBracket!2838) (False!5677) (LeftBrace!2838) (ImaginaryLiteralValue!2838 (text!20312 List!15517)) (StringLiteralValue!8514 (value!87952 List!15517)) (EOFValue!2838 (value!87953 List!15517)) (IdentValue!2838 (value!87954 List!15517)) (DelimiterValue!5677 (value!87955 List!15517)) (DedentValue!2838 (value!87956 List!15517)) (NewLineValue!2838 (value!87957 List!15517)) (IntegerValue!8514 (value!87958 (_ BitVec 32)) (text!20313 List!15517)) (IntegerValue!8515 (value!87959 Int) (text!20314 List!15517)) (Times!2838) (Or!2838) (Equal!2838) (Minus!2838) (Broken!14194 (value!87960 List!15517)) (And!2838) (Div!2838) (LessEqual!2838) (Mod!2838) (Concat!6901) (Not!2838) (Plus!2838) (SpaceValue!2838 (value!87961 List!15517)) (IntegerValue!8516 (value!87962 Int) (text!20315 List!15517)) (StringLiteralValue!8515 (text!20316 List!15517)) (FloatLiteralValue!5677 (text!20317 List!15517)) (BytesLiteralValue!2838 (value!87963 List!15517)) (CommentValue!5677 (value!87964 List!15517)) (StringLiteralValue!8516 (value!87965 List!15517)) (ErrorTokenValue!2838 (msg!2899 List!15517)) )
))
(declare-datatypes ((IArray!10545 0))(
  ( (IArray!10546 (innerList!5330 List!15518)) )
))
(declare-datatypes ((Conc!5270 0))(
  ( (Node!5270 (left!13071 Conc!5270) (right!13401 Conc!5270) (csize!10770 Int) (cheight!5481 Int)) (Leaf!7846 (xs!8025 IArray!10545) (csize!10771 Int)) (Empty!5270) )
))
(declare-datatypes ((BalanceConc!10480 0))(
  ( (BalanceConc!10481 (c!242319 Conc!5270)) )
))
(declare-datatypes ((TokenValueInjection!5336 0))(
  ( (TokenValueInjection!5337 (toValue!4075 Int) (toChars!3934 Int)) )
))
(declare-datatypes ((String!18448 0))(
  ( (String!18449 (value!87966 String)) )
))
(declare-datatypes ((Rule!5296 0))(
  ( (Rule!5297 (regex!2748 Regex!4062) (tag!3012 String!18448) (isSeparator!2748 Bool) (transformation!2748 TokenValueInjection!5336)) )
))
(declare-datatypes ((List!15519 0))(
  ( (Nil!15453) (Cons!15453 (h!20854 Rule!5296) (t!135828 List!15519)) )
))
(declare-fun rules!4290 () List!15519)

(declare-datatypes ((LexerInterface!2404 0))(
  ( (LexerInterfaceExt!2401 (__x!9467 Int)) (Lexer!2402) )
))
(declare-fun thiss!27374 () LexerInterface!2404)

(declare-datatypes ((Token!5158 0))(
  ( (Token!5159 (value!87967 TokenValue!2838) (rule!4525 Rule!5296) (size!12549 Int) (originalCharacters!3610 List!15518)) )
))
(declare-datatypes ((List!15520 0))(
  ( (Nil!15454) (Cons!15454 (h!20855 Token!5158) (t!135829 List!15520)) )
))
(declare-fun l1!3136 () List!15520)

(declare-fun rulesProduceEachTokenIndividuallyList!771 (LexerInterface!2404 List!15519 List!15520) Bool)

(assert (=> b!1472003 (= res!665357 (rulesProduceEachTokenIndividuallyList!771 thiss!27374 rules!4290 l1!3136))))

(declare-fun res!665361 () Bool)

(assert (=> start!137888 (=> (not res!665361) (not e!940112))))

(assert (=> start!137888 (= res!665361 (is-Lexer!2402 thiss!27374))))

(assert (=> start!137888 e!940112))

(assert (=> start!137888 true))

(declare-fun e!940114 () Bool)

(assert (=> start!137888 e!940114))

(declare-fun e!940110 () Bool)

(assert (=> start!137888 e!940110))

(declare-fun e!940115 () Bool)

(assert (=> start!137888 e!940115))

(declare-fun tp!415789 () Bool)

(declare-fun e!940117 () Bool)

(declare-fun l2!3105 () List!15520)

(declare-fun b!1472004 () Bool)

(declare-fun inv!20662 (Token!5158) Bool)

(assert (=> b!1472004 (= e!940115 (and (inv!20662 (h!20855 l2!3105)) e!940117 tp!415789))))

(declare-fun e!940118 () Bool)

(declare-fun e!940104 () Bool)

(declare-fun tp!415790 () Bool)

(declare-fun b!1472005 () Bool)

(declare-fun inv!20659 (String!18448) Bool)

(declare-fun inv!20663 (TokenValueInjection!5336) Bool)

(assert (=> b!1472005 (= e!940118 (and tp!415790 (inv!20659 (tag!3012 (rule!4525 (h!20855 l1!3136)))) (inv!20663 (transformation!2748 (rule!4525 (h!20855 l1!3136)))) e!940104))))

(declare-fun b!1472006 () Bool)

(declare-fun res!665356 () Bool)

(assert (=> b!1472006 (=> (not res!665356) (not e!940112))))

(declare-fun rulesInvariant!2193 (LexerInterface!2404 List!15519) Bool)

(assert (=> b!1472006 (= res!665356 (rulesInvariant!2193 thiss!27374 rules!4290))))

(declare-fun tp!415785 () Bool)

(declare-fun b!1472007 () Bool)

(declare-fun e!940105 () Bool)

(declare-fun inv!21 (TokenValue!2838) Bool)

(assert (=> b!1472007 (= e!940117 (and (inv!21 (value!87967 (h!20855 l2!3105))) e!940105 tp!415785))))

(declare-fun e!940116 () Bool)

(declare-fun tp!415783 () Bool)

(declare-fun b!1472008 () Bool)

(assert (=> b!1472008 (= e!940116 (and tp!415783 (inv!20659 (tag!3012 (h!20854 rules!4290))) (inv!20663 (transformation!2748 (h!20854 rules!4290))) e!940111))))

(assert (=> b!1472009 (= e!940104 (and tp!415779 tp!415777))))

(declare-fun e!940113 () Bool)

(declare-fun tp!415778 () Bool)

(declare-fun b!1472010 () Bool)

(assert (=> b!1472010 (= e!940110 (and (inv!20662 (h!20855 l1!3136)) e!940113 tp!415778))))

(declare-fun b!1472011 () Bool)

(declare-fun res!665358 () Bool)

(assert (=> b!1472011 (=> (not res!665358) (not e!940112))))

(declare-fun isEmpty!9650 (List!15520) Bool)

(assert (=> b!1472011 (= res!665358 (not (isEmpty!9650 l1!3136)))))

(declare-fun b!1472012 () Bool)

(declare-fun res!665362 () Bool)

(assert (=> b!1472012 (=> (not res!665362) (not e!940112))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!264 (LexerInterface!2404 List!15520 List!15519) Bool)

(assert (=> b!1472012 (= res!665362 (tokensListTwoByTwoPredicateSeparableList!264 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1472013 () Bool)

(declare-fun tp!415787 () Bool)

(assert (=> b!1472013 (= e!940113 (and (inv!21 (value!87967 (h!20855 l1!3136))) e!940118 tp!415787))))

(declare-fun b!1472014 () Bool)

(declare-fun res!665359 () Bool)

(assert (=> b!1472014 (=> (not res!665359) (not e!940112))))

(assert (=> b!1472014 (= res!665359 (not (isEmpty!9650 l2!3105)))))

(declare-fun b!1472015 () Bool)

(assert (=> b!1472015 (= e!940112 (not true))))

(declare-fun lt!511594 () Token!5158)

(declare-fun rulesProduceIndividualToken!1263 (LexerInterface!2404 List!15519 Token!5158) Bool)

(assert (=> b!1472015 (rulesProduceIndividualToken!1263 thiss!27374 rules!4290 lt!511594)))

(declare-datatypes ((Unit!25146 0))(
  ( (Unit!25147) )
))
(declare-fun lt!511597 () Unit!25146)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!444 (LexerInterface!2404 List!15519 List!15520 Token!5158) Unit!25146)

(assert (=> b!1472015 (= lt!511597 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!444 thiss!27374 rules!4290 l2!3105 lt!511594))))

(declare-fun head!3042 (List!15520) Token!5158)

(assert (=> b!1472015 (= lt!511594 (head!3042 l2!3105))))

(declare-fun lt!511595 () Token!5158)

(assert (=> b!1472015 (rulesProduceIndividualToken!1263 thiss!27374 rules!4290 lt!511595)))

(declare-fun lt!511596 () Unit!25146)

(assert (=> b!1472015 (= lt!511596 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!444 thiss!27374 rules!4290 l1!3136 lt!511595))))

(declare-fun last!306 (List!15520) Token!5158)

(assert (=> b!1472015 (= lt!511595 (last!306 l1!3136))))

(declare-fun b!1472016 () Bool)

(declare-fun tp!415784 () Bool)

(assert (=> b!1472016 (= e!940114 (and e!940116 tp!415784))))

(declare-fun b!1472017 () Bool)

(declare-fun res!665360 () Bool)

(assert (=> b!1472017 (=> (not res!665360) (not e!940112))))

(assert (=> b!1472017 (= res!665360 (tokensListTwoByTwoPredicateSeparableList!264 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1472018 () Bool)

(declare-fun e!940107 () Bool)

(declare-fun tp!415781 () Bool)

(assert (=> b!1472018 (= e!940105 (and tp!415781 (inv!20659 (tag!3012 (rule!4525 (h!20855 l2!3105)))) (inv!20663 (transformation!2748 (rule!4525 (h!20855 l2!3105)))) e!940107))))

(assert (=> b!1472019 (= e!940107 (and tp!415782 tp!415780))))

(declare-fun b!1472020 () Bool)

(declare-fun res!665363 () Bool)

(assert (=> b!1472020 (=> (not res!665363) (not e!940112))))

(assert (=> b!1472020 (= res!665363 (rulesProduceEachTokenIndividuallyList!771 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1472021 () Bool)

(declare-fun res!665364 () Bool)

(assert (=> b!1472021 (=> (not res!665364) (not e!940112))))

(declare-fun isEmpty!9651 (List!15519) Bool)

(assert (=> b!1472021 (= res!665364 (not (isEmpty!9651 rules!4290)))))

(assert (= (and start!137888 res!665361) b!1472021))

(assert (= (and b!1472021 res!665364) b!1472006))

(assert (= (and b!1472006 res!665356) b!1472003))

(assert (= (and b!1472003 res!665357) b!1472020))

(assert (= (and b!1472020 res!665363) b!1472012))

(assert (= (and b!1472012 res!665362) b!1472017))

(assert (= (and b!1472017 res!665360) b!1472011))

(assert (= (and b!1472011 res!665358) b!1472014))

(assert (= (and b!1472014 res!665359) b!1472015))

(assert (= b!1472008 b!1472002))

(assert (= b!1472016 b!1472008))

(assert (= (and start!137888 (is-Cons!15453 rules!4290)) b!1472016))

(assert (= b!1472005 b!1472009))

(assert (= b!1472013 b!1472005))

(assert (= b!1472010 b!1472013))

(assert (= (and start!137888 (is-Cons!15454 l1!3136)) b!1472010))

(assert (= b!1472018 b!1472019))

(assert (= b!1472007 b!1472018))

(assert (= b!1472004 b!1472007))

(assert (= (and start!137888 (is-Cons!15454 l2!3105)) b!1472004))

(declare-fun m!1716049 () Bool)

(assert (=> b!1472020 m!1716049))

(declare-fun m!1716051 () Bool)

(assert (=> b!1472007 m!1716051))

(declare-fun m!1716053 () Bool)

(assert (=> b!1472008 m!1716053))

(declare-fun m!1716055 () Bool)

(assert (=> b!1472008 m!1716055))

(declare-fun m!1716057 () Bool)

(assert (=> b!1472003 m!1716057))

(declare-fun m!1716059 () Bool)

(assert (=> b!1472012 m!1716059))

(declare-fun m!1716061 () Bool)

(assert (=> b!1472011 m!1716061))

(declare-fun m!1716063 () Bool)

(assert (=> b!1472017 m!1716063))

(declare-fun m!1716065 () Bool)

(assert (=> b!1472021 m!1716065))

(declare-fun m!1716067 () Bool)

(assert (=> b!1472006 m!1716067))

(declare-fun m!1716069 () Bool)

(assert (=> b!1472014 m!1716069))

(declare-fun m!1716071 () Bool)

(assert (=> b!1472013 m!1716071))

(declare-fun m!1716073 () Bool)

(assert (=> b!1472018 m!1716073))

(declare-fun m!1716075 () Bool)

(assert (=> b!1472018 m!1716075))

(declare-fun m!1716077 () Bool)

(assert (=> b!1472005 m!1716077))

(declare-fun m!1716079 () Bool)

(assert (=> b!1472005 m!1716079))

(declare-fun m!1716081 () Bool)

(assert (=> b!1472010 m!1716081))

(declare-fun m!1716083 () Bool)

(assert (=> b!1472015 m!1716083))

(declare-fun m!1716085 () Bool)

(assert (=> b!1472015 m!1716085))

(declare-fun m!1716087 () Bool)

(assert (=> b!1472015 m!1716087))

(declare-fun m!1716089 () Bool)

(assert (=> b!1472015 m!1716089))

(declare-fun m!1716091 () Bool)

(assert (=> b!1472015 m!1716091))

(declare-fun m!1716093 () Bool)

(assert (=> b!1472015 m!1716093))

(declare-fun m!1716095 () Bool)

(assert (=> b!1472004 m!1716095))

(push 1)

(assert (not b!1472011))

(assert (not b!1472015))

(assert b_and!101097)

(assert (not b!1472005))

(assert (not b!1472014))

(assert (not b_next!38005))

(assert (not b!1472017))

(assert b_and!101095)

(assert (not b!1472004))

(assert (not b_next!38013))

(assert (not b!1472006))

(assert b_and!101103)

(assert b_and!101101)

(assert (not b!1472021))

(assert (not b!1472018))

(assert (not b!1472020))

(assert (not b_next!38011))

(assert (not b!1472010))

(assert (not b!1472007))

(assert b_and!101093)

(assert (not b_next!38003))

(assert (not b!1472016))

(assert (not b!1472012))

(assert (not b!1472008))

(assert (not b_next!38007))

(assert (not b!1472003))

(assert (not b_next!38009))

(assert (not b!1472013))

(assert b_and!101099)

(check-sat)

(pop 1)

(push 1)

(assert b_and!101097)

(assert (not b_next!38011))

(assert (not b_next!38005))

(assert b_and!101095)

(assert (not b_next!38007))

(assert (not b_next!38009))

(assert (not b_next!38013))

(assert b_and!101099)

(assert b_and!101103)

(assert b_and!101101)

(assert b_and!101093)

(assert (not b_next!38003))

(check-sat)

(pop 1)


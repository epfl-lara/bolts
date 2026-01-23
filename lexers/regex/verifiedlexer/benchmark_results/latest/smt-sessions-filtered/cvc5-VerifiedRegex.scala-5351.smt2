; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273164 () Bool)

(assert start!273164)

(declare-fun b!2816816 () Bool)

(declare-fun b_free!80301 () Bool)

(declare-fun b_next!81005 () Bool)

(assert (=> b!2816816 (= b_free!80301 (not b_next!81005))))

(declare-fun tp!899185 () Bool)

(declare-fun b_and!205591 () Bool)

(assert (=> b!2816816 (= tp!899185 b_and!205591)))

(declare-fun b_free!80303 () Bool)

(declare-fun b_next!81007 () Bool)

(assert (=> b!2816816 (= b_free!80303 (not b_next!81007))))

(declare-fun tp!899187 () Bool)

(declare-fun b_and!205593 () Bool)

(assert (=> b!2816816 (= tp!899187 b_and!205593)))

(declare-fun b!2816802 () Bool)

(declare-fun b_free!80305 () Bool)

(declare-fun b_next!81009 () Bool)

(assert (=> b!2816802 (= b_free!80305 (not b_next!81009))))

(declare-fun tp!899179 () Bool)

(declare-fun b_and!205595 () Bool)

(assert (=> b!2816802 (= tp!899179 b_and!205595)))

(declare-fun b_free!80307 () Bool)

(declare-fun b_next!81011 () Bool)

(assert (=> b!2816802 (= b_free!80307 (not b_next!81011))))

(declare-fun tp!899184 () Bool)

(declare-fun b_and!205597 () Bool)

(assert (=> b!2816802 (= tp!899184 b_and!205597)))

(declare-fun e!1781312 () Bool)

(assert (=> b!2816802 (= e!1781312 (and tp!899179 tp!899184))))

(declare-fun b!2816803 () Bool)

(declare-fun res!1172196 () Bool)

(declare-fun e!1781314 () Bool)

(assert (=> b!2816803 (=> (not res!1172196) (not e!1781314))))

(declare-datatypes ((LexerInterface!4511 0))(
  ( (LexerInterfaceExt!4508 (__x!21973 Int)) (Lexer!4509) )
))
(declare-fun thiss!27755 () LexerInterface!4511)

(declare-datatypes ((C!16802 0))(
  ( (C!16803 (val!10381 Int)) )
))
(declare-datatypes ((List!33066 0))(
  ( (Nil!32942) (Cons!32942 (h!38362 (_ BitVec 16)) (t!230115 List!33066)) )
))
(declare-datatypes ((TokenValue!5150 0))(
  ( (FloatLiteralValue!10300 (text!36495 List!33066)) (TokenValueExt!5149 (__x!21974 Int)) (Broken!25750 (value!158515 List!33066)) (Object!5273) (End!5150) (Def!5150) (Underscore!5150) (Match!5150) (Else!5150) (Error!5150) (Case!5150) (If!5150) (Extends!5150) (Abstract!5150) (Class!5150) (Val!5150) (DelimiterValue!10300 (del!5210 List!33066)) (KeywordValue!5156 (value!158516 List!33066)) (CommentValue!10300 (value!158517 List!33066)) (WhitespaceValue!10300 (value!158518 List!33066)) (IndentationValue!5150 (value!158519 List!33066)) (String!36207) (Int32!5150) (Broken!25751 (value!158520 List!33066)) (Boolean!5151) (Unit!46924) (OperatorValue!5153 (op!5210 List!33066)) (IdentifierValue!10300 (value!158521 List!33066)) (IdentifierValue!10301 (value!158522 List!33066)) (WhitespaceValue!10301 (value!158523 List!33066)) (True!10300) (False!10300) (Broken!25752 (value!158524 List!33066)) (Broken!25753 (value!158525 List!33066)) (True!10301) (RightBrace!5150) (RightBracket!5150) (Colon!5150) (Null!5150) (Comma!5150) (LeftBracket!5150) (False!10301) (LeftBrace!5150) (ImaginaryLiteralValue!5150 (text!36496 List!33066)) (StringLiteralValue!15450 (value!158526 List!33066)) (EOFValue!5150 (value!158527 List!33066)) (IdentValue!5150 (value!158528 List!33066)) (DelimiterValue!10301 (value!158529 List!33066)) (DedentValue!5150 (value!158530 List!33066)) (NewLineValue!5150 (value!158531 List!33066)) (IntegerValue!15450 (value!158532 (_ BitVec 32)) (text!36497 List!33066)) (IntegerValue!15451 (value!158533 Int) (text!36498 List!33066)) (Times!5150) (Or!5150) (Equal!5150) (Minus!5150) (Broken!25754 (value!158534 List!33066)) (And!5150) (Div!5150) (LessEqual!5150) (Mod!5150) (Concat!13460) (Not!5150) (Plus!5150) (SpaceValue!5150 (value!158535 List!33066)) (IntegerValue!15452 (value!158536 Int) (text!36499 List!33066)) (StringLiteralValue!15451 (text!36500 List!33066)) (FloatLiteralValue!10301 (text!36501 List!33066)) (BytesLiteralValue!5150 (value!158537 List!33066)) (CommentValue!10301 (value!158538 List!33066)) (StringLiteralValue!15452 (value!158539 List!33066)) (ErrorTokenValue!5150 (msg!5211 List!33066)) )
))
(declare-datatypes ((List!33067 0))(
  ( (Nil!32943) (Cons!32943 (h!38363 C!16802) (t!230116 List!33067)) )
))
(declare-datatypes ((IArray!20451 0))(
  ( (IArray!20452 (innerList!10283 List!33067)) )
))
(declare-datatypes ((Conc!10223 0))(
  ( (Node!10223 (left!24886 Conc!10223) (right!25216 Conc!10223) (csize!20676 Int) (cheight!10434 Int)) (Leaf!15575 (xs!13335 IArray!20451) (csize!20677 Int)) (Empty!10223) )
))
(declare-datatypes ((BalanceConc!20084 0))(
  ( (BalanceConc!20085 (c!456738 Conc!10223)) )
))
(declare-datatypes ((TokenValueInjection!9728 0))(
  ( (TokenValueInjection!9729 (toValue!6930 Int) (toChars!6789 Int)) )
))
(declare-datatypes ((String!36208 0))(
  ( (String!36209 (value!158540 String)) )
))
(declare-datatypes ((Regex!8310 0))(
  ( (ElementMatch!8310 (c!456739 C!16802)) (Concat!13461 (regOne!17132 Regex!8310) (regTwo!17132 Regex!8310)) (EmptyExpr!8310) (Star!8310 (reg!8639 Regex!8310)) (EmptyLang!8310) (Union!8310 (regOne!17133 Regex!8310) (regTwo!17133 Regex!8310)) )
))
(declare-datatypes ((Rule!9640 0))(
  ( (Rule!9641 (regex!4920 Regex!8310) (tag!5424 String!36208) (isSeparator!4920 Bool) (transformation!4920 TokenValueInjection!9728)) )
))
(declare-datatypes ((List!33068 0))(
  ( (Nil!32944) (Cons!32944 (h!38364 Rule!9640) (t!230117 List!33068)) )
))
(declare-fun rules!4424 () List!33068)

(declare-fun rulesInvariant!3929 (LexerInterface!4511 List!33068) Bool)

(assert (=> b!2816803 (= res!1172196 (rulesInvariant!3929 thiss!27755 rules!4424))))

(declare-fun b!2816804 () Bool)

(declare-fun e!1781308 () Bool)

(declare-datatypes ((Token!9242 0))(
  ( (Token!9243 (value!158541 TokenValue!5150) (rule!7348 Rule!9640) (size!25680 Int) (originalCharacters!5652 List!33067)) )
))
(declare-datatypes ((List!33069 0))(
  ( (Nil!32945) (Cons!32945 (h!38365 Token!9242) (t!230118 List!33069)) )
))
(declare-fun lt!1005998 () List!33069)

(declare-fun rulesProduceEachTokenIndividuallyList!1563 (LexerInterface!4511 List!33068 List!33069) Bool)

(assert (=> b!2816804 (= e!1781308 (rulesProduceEachTokenIndividuallyList!1563 thiss!27755 rules!4424 (t!230118 lt!1005998)))))

(declare-fun e!1781310 () Bool)

(declare-fun tp!899183 () Bool)

(declare-fun b!2816805 () Bool)

(declare-fun e!1781305 () Bool)

(declare-fun inv!44861 (String!36208) Bool)

(declare-fun inv!44864 (TokenValueInjection!9728) Bool)

(assert (=> b!2816805 (= e!1781305 (and tp!899183 (inv!44861 (tag!5424 (h!38364 rules!4424))) (inv!44864 (transformation!4920 (h!38364 rules!4424))) e!1781310))))

(declare-fun e!1781306 () Bool)

(declare-fun tp!899182 () Bool)

(declare-fun b!2816806 () Bool)

(declare-fun l!6581 () List!33069)

(declare-fun e!1781307 () Bool)

(declare-fun inv!21 (TokenValue!5150) Bool)

(assert (=> b!2816806 (= e!1781306 (and (inv!21 (value!158541 (h!38365 l!6581))) e!1781307 tp!899182))))

(declare-fun b!2816807 () Bool)

(assert (=> b!2816807 (= e!1781314 (not true))))

(declare-fun e!1781313 () Bool)

(assert (=> b!2816807 (= (rulesProduceEachTokenIndividuallyList!1563 thiss!27755 rules!4424 lt!1005998) e!1781313)))

(declare-fun res!1172197 () Bool)

(assert (=> b!2816807 (=> res!1172197 e!1781313)))

(assert (=> b!2816807 (= res!1172197 (not (is-Cons!32945 lt!1005998)))))

(declare-fun i!1730 () Int)

(declare-fun take!514 (List!33069 Int) List!33069)

(assert (=> b!2816807 (= lt!1005998 (take!514 l!6581 i!1730))))

(declare-fun b!2816808 () Bool)

(declare-fun res!1172200 () Bool)

(assert (=> b!2816808 (=> (not res!1172200) (not e!1781314))))

(assert (=> b!2816808 (= res!1172200 (is-Nil!32945 l!6581))))

(declare-fun b!2816809 () Bool)

(assert (=> b!2816809 (= e!1781313 e!1781308)))

(declare-fun res!1172199 () Bool)

(assert (=> b!2816809 (=> (not res!1172199) (not e!1781308))))

(declare-fun rulesProduceIndividualToken!2051 (LexerInterface!4511 List!33068 Token!9242) Bool)

(assert (=> b!2816809 (= res!1172199 (rulesProduceIndividualToken!2051 thiss!27755 rules!4424 (h!38365 lt!1005998)))))

(declare-fun b!2816810 () Bool)

(declare-fun res!1172202 () Bool)

(assert (=> b!2816810 (=> (not res!1172202) (not e!1781314))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!648 (LexerInterface!4511 List!33069 List!33068) Bool)

(assert (=> b!2816810 (= res!1172202 (tokensListTwoByTwoPredicateSeparableList!648 thiss!27755 l!6581 rules!4424))))

(declare-fun res!1172195 () Bool)

(assert (=> start!273164 (=> (not res!1172195) (not e!1781314))))

(assert (=> start!273164 (= res!1172195 (is-Lexer!4509 thiss!27755))))

(assert (=> start!273164 e!1781314))

(assert (=> start!273164 true))

(declare-fun e!1781311 () Bool)

(assert (=> start!273164 e!1781311))

(declare-fun e!1781304 () Bool)

(assert (=> start!273164 e!1781304))

(declare-fun b!2816811 () Bool)

(declare-fun res!1172201 () Bool)

(assert (=> b!2816811 (=> (not res!1172201) (not e!1781314))))

(assert (=> b!2816811 (= res!1172201 (rulesProduceEachTokenIndividuallyList!1563 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2816812 () Bool)

(declare-fun res!1172198 () Bool)

(assert (=> b!2816812 (=> (not res!1172198) (not e!1781314))))

(declare-fun isEmpty!18237 (List!33068) Bool)

(assert (=> b!2816812 (= res!1172198 (not (isEmpty!18237 rules!4424)))))

(declare-fun tp!899186 () Bool)

(declare-fun b!2816813 () Bool)

(assert (=> b!2816813 (= e!1781307 (and tp!899186 (inv!44861 (tag!5424 (rule!7348 (h!38365 l!6581)))) (inv!44864 (transformation!4920 (rule!7348 (h!38365 l!6581)))) e!1781312))))

(declare-fun tp!899181 () Bool)

(declare-fun b!2816814 () Bool)

(declare-fun inv!44865 (Token!9242) Bool)

(assert (=> b!2816814 (= e!1781304 (and (inv!44865 (h!38365 l!6581)) e!1781306 tp!899181))))

(declare-fun b!2816815 () Bool)

(declare-fun tp!899180 () Bool)

(assert (=> b!2816815 (= e!1781311 (and e!1781305 tp!899180))))

(assert (=> b!2816816 (= e!1781310 (and tp!899185 tp!899187))))

(assert (= (and start!273164 res!1172195) b!2816812))

(assert (= (and b!2816812 res!1172198) b!2816803))

(assert (= (and b!2816803 res!1172196) b!2816811))

(assert (= (and b!2816811 res!1172201) b!2816810))

(assert (= (and b!2816810 res!1172202) b!2816808))

(assert (= (and b!2816808 res!1172200) b!2816807))

(assert (= (and b!2816807 (not res!1172197)) b!2816809))

(assert (= (and b!2816809 res!1172199) b!2816804))

(assert (= b!2816805 b!2816816))

(assert (= b!2816815 b!2816805))

(assert (= (and start!273164 (is-Cons!32944 rules!4424)) b!2816815))

(assert (= b!2816813 b!2816802))

(assert (= b!2816806 b!2816813))

(assert (= b!2816814 b!2816806))

(assert (= (and start!273164 (is-Cons!32945 l!6581)) b!2816814))

(declare-fun m!3247875 () Bool)

(assert (=> b!2816814 m!3247875))

(declare-fun m!3247877 () Bool)

(assert (=> b!2816811 m!3247877))

(declare-fun m!3247879 () Bool)

(assert (=> b!2816812 m!3247879))

(declare-fun m!3247881 () Bool)

(assert (=> b!2816806 m!3247881))

(declare-fun m!3247883 () Bool)

(assert (=> b!2816809 m!3247883))

(declare-fun m!3247885 () Bool)

(assert (=> b!2816813 m!3247885))

(declare-fun m!3247887 () Bool)

(assert (=> b!2816813 m!3247887))

(declare-fun m!3247889 () Bool)

(assert (=> b!2816805 m!3247889))

(declare-fun m!3247891 () Bool)

(assert (=> b!2816805 m!3247891))

(declare-fun m!3247893 () Bool)

(assert (=> b!2816804 m!3247893))

(declare-fun m!3247895 () Bool)

(assert (=> b!2816807 m!3247895))

(declare-fun m!3247897 () Bool)

(assert (=> b!2816807 m!3247897))

(declare-fun m!3247899 () Bool)

(assert (=> b!2816810 m!3247899))

(declare-fun m!3247901 () Bool)

(assert (=> b!2816803 m!3247901))

(push 1)

(assert (not b_next!81009))

(assert (not b!2816811))

(assert (not b_next!81011))

(assert (not b!2816813))

(assert (not b!2816810))

(assert (not b_next!81005))

(assert b_and!205597)

(assert (not b!2816812))

(assert (not b!2816806))

(assert (not b!2816804))

(assert (not b!2816807))

(assert (not b!2816814))

(assert (not b_next!81007))

(assert b_and!205595)

(assert (not b!2816803))

(assert (not b!2816815))

(assert b_and!205593)

(assert b_and!205591)

(assert (not b!2816805))

(assert (not b!2816809))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81009))

(assert (not b_next!81011))

(assert (not b_next!81005))

(assert b_and!205597)

(assert (not b_next!81007))

(assert b_and!205595)

(assert b_and!205593)

(assert b_and!205591)

(check-sat)

(pop 1)


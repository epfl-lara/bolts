; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273648 () Bool)

(assert start!273648)

(declare-fun b!2820163 () Bool)

(declare-fun b_free!80605 () Bool)

(declare-fun b_next!81309 () Bool)

(assert (=> b!2820163 (= b_free!80605 (not b_next!81309))))

(declare-fun tp!900636 () Bool)

(declare-fun b_and!205991 () Bool)

(assert (=> b!2820163 (= tp!900636 b_and!205991)))

(declare-fun b_free!80607 () Bool)

(declare-fun b_next!81311 () Bool)

(assert (=> b!2820163 (= b_free!80607 (not b_next!81311))))

(declare-fun tp!900634 () Bool)

(declare-fun b_and!205993 () Bool)

(assert (=> b!2820163 (= tp!900634 b_and!205993)))

(declare-fun b!2820161 () Bool)

(declare-fun b_free!80609 () Bool)

(declare-fun b_next!81313 () Bool)

(assert (=> b!2820161 (= b_free!80609 (not b_next!81313))))

(declare-fun tp!900633 () Bool)

(declare-fun b_and!205995 () Bool)

(assert (=> b!2820161 (= tp!900633 b_and!205995)))

(declare-fun b_free!80611 () Bool)

(declare-fun b_next!81315 () Bool)

(assert (=> b!2820161 (= b_free!80611 (not b_next!81315))))

(declare-fun tp!900631 () Bool)

(declare-fun b_and!205997 () Bool)

(assert (=> b!2820161 (= tp!900631 b_and!205997)))

(declare-fun b!2820186 () Bool)

(declare-fun e!1783905 () Bool)

(assert (=> b!2820186 (= e!1783905 true)))

(declare-fun b!2820185 () Bool)

(declare-fun e!1783904 () Bool)

(assert (=> b!2820185 (= e!1783904 e!1783905)))

(declare-fun b!2820184 () Bool)

(declare-fun e!1783903 () Bool)

(assert (=> b!2820184 (= e!1783903 e!1783904)))

(declare-fun b!2820170 () Bool)

(assert (=> b!2820170 e!1783903))

(assert (= b!2820185 b!2820186))

(assert (= b!2820184 b!2820185))

(declare-datatypes ((List!33178 0))(
  ( (Nil!33054) (Cons!33054 (h!38474 (_ BitVec 16)) (t!230429 List!33178)) )
))
(declare-datatypes ((TokenValue!5176 0))(
  ( (FloatLiteralValue!10352 (text!36677 List!33178)) (TokenValueExt!5175 (__x!22025 Int)) (Broken!25880 (value!159256 List!33178)) (Object!5299) (End!5176) (Def!5176) (Underscore!5176) (Match!5176) (Else!5176) (Error!5176) (Case!5176) (If!5176) (Extends!5176) (Abstract!5176) (Class!5176) (Val!5176) (DelimiterValue!10352 (del!5236 List!33178)) (KeywordValue!5182 (value!159257 List!33178)) (CommentValue!10352 (value!159258 List!33178)) (WhitespaceValue!10352 (value!159259 List!33178)) (IndentationValue!5176 (value!159260 List!33178)) (String!36337) (Int32!5176) (Broken!25881 (value!159261 List!33178)) (Boolean!5177) (Unit!47007) (OperatorValue!5179 (op!5236 List!33178)) (IdentifierValue!10352 (value!159262 List!33178)) (IdentifierValue!10353 (value!159263 List!33178)) (WhitespaceValue!10353 (value!159264 List!33178)) (True!10352) (False!10352) (Broken!25882 (value!159265 List!33178)) (Broken!25883 (value!159266 List!33178)) (True!10353) (RightBrace!5176) (RightBracket!5176) (Colon!5176) (Null!5176) (Comma!5176) (LeftBracket!5176) (False!10353) (LeftBrace!5176) (ImaginaryLiteralValue!5176 (text!36678 List!33178)) (StringLiteralValue!15528 (value!159267 List!33178)) (EOFValue!5176 (value!159268 List!33178)) (IdentValue!5176 (value!159269 List!33178)) (DelimiterValue!10353 (value!159270 List!33178)) (DedentValue!5176 (value!159271 List!33178)) (NewLineValue!5176 (value!159272 List!33178)) (IntegerValue!15528 (value!159273 (_ BitVec 32)) (text!36679 List!33178)) (IntegerValue!15529 (value!159274 Int) (text!36680 List!33178)) (Times!5176) (Or!5176) (Equal!5176) (Minus!5176) (Broken!25884 (value!159275 List!33178)) (And!5176) (Div!5176) (LessEqual!5176) (Mod!5176) (Concat!13512) (Not!5176) (Plus!5176) (SpaceValue!5176 (value!159276 List!33178)) (IntegerValue!15530 (value!159277 Int) (text!36681 List!33178)) (StringLiteralValue!15529 (text!36682 List!33178)) (FloatLiteralValue!10353 (text!36683 List!33178)) (BytesLiteralValue!5176 (value!159278 List!33178)) (CommentValue!10353 (value!159279 List!33178)) (StringLiteralValue!15530 (value!159280 List!33178)) (ErrorTokenValue!5176 (msg!5237 List!33178)) )
))
(declare-datatypes ((C!16854 0))(
  ( (C!16855 (val!10407 Int)) )
))
(declare-datatypes ((List!33179 0))(
  ( (Nil!33055) (Cons!33055 (h!38475 C!16854) (t!230430 List!33179)) )
))
(declare-datatypes ((IArray!20519 0))(
  ( (IArray!20520 (innerList!10317 List!33179)) )
))
(declare-datatypes ((Conc!10257 0))(
  ( (Node!10257 (left!24959 Conc!10257) (right!25289 Conc!10257) (csize!20744 Int) (cheight!10468 Int)) (Leaf!15622 (xs!13369 IArray!20519) (csize!20745 Int)) (Empty!10257) )
))
(declare-datatypes ((BalanceConc!20152 0))(
  ( (BalanceConc!20153 (c!457014 Conc!10257)) )
))
(declare-datatypes ((TokenValueInjection!9780 0))(
  ( (TokenValueInjection!9781 (toValue!6964 Int) (toChars!6823 Int)) )
))
(declare-datatypes ((Regex!8336 0))(
  ( (ElementMatch!8336 (c!457015 C!16854)) (Concat!13513 (regOne!17184 Regex!8336) (regTwo!17184 Regex!8336)) (EmptyExpr!8336) (Star!8336 (reg!8665 Regex!8336)) (EmptyLang!8336) (Union!8336 (regOne!17185 Regex!8336) (regTwo!17185 Regex!8336)) )
))
(declare-datatypes ((String!36338 0))(
  ( (String!36339 (value!159281 String)) )
))
(declare-datatypes ((Rule!9692 0))(
  ( (Rule!9693 (regex!4946 Regex!8336) (tag!5450 String!36338) (isSeparator!4946 Bool) (transformation!4946 TokenValueInjection!9780)) )
))
(declare-datatypes ((List!33180 0))(
  ( (Nil!33056) (Cons!33056 (h!38476 Rule!9692) (t!230431 List!33180)) )
))
(declare-fun rules!4424 () List!33180)

(assert (= (and b!2820170 (is-Cons!33056 rules!4424)) b!2820184))

(declare-fun order!17521 () Int)

(declare-fun order!17523 () Int)

(declare-fun lambda!103520 () Int)

(declare-fun dynLambda!13811 (Int Int) Int)

(declare-fun dynLambda!13812 (Int Int) Int)

(assert (=> b!2820186 (< (dynLambda!13811 order!17521 (toValue!6964 (transformation!4946 (h!38476 rules!4424)))) (dynLambda!13812 order!17523 lambda!103520))))

(declare-fun order!17525 () Int)

(declare-fun dynLambda!13813 (Int Int) Int)

(assert (=> b!2820186 (< (dynLambda!13813 order!17525 (toChars!6823 (transformation!4946 (h!38476 rules!4424)))) (dynLambda!13812 order!17523 lambda!103520))))

(declare-fun e!1783883 () Bool)

(declare-datatypes ((Token!9294 0))(
  ( (Token!9295 (value!159282 TokenValue!5176) (rule!7374 Rule!9692) (size!25744 Int) (originalCharacters!5678 List!33179)) )
))
(declare-datatypes ((List!33181 0))(
  ( (Nil!33057) (Cons!33057 (h!38477 Token!9294) (t!230432 List!33181)) )
))
(declare-fun l!6581 () List!33181)

(declare-fun tp!900630 () Bool)

(declare-fun b!2820158 () Bool)

(declare-fun e!1783891 () Bool)

(declare-fun inv!21 (TokenValue!5176) Bool)

(assert (=> b!2820158 (= e!1783891 (and (inv!21 (value!159282 (h!38477 l!6581))) e!1783883 tp!900630))))

(declare-fun b!2820159 () Bool)

(declare-fun res!1173535 () Bool)

(declare-fun e!1783890 () Bool)

(assert (=> b!2820159 (=> (not res!1173535) (not e!1783890))))

(declare-datatypes ((LexerInterface!4537 0))(
  ( (LexerInterfaceExt!4534 (__x!22026 Int)) (Lexer!4535) )
))
(declare-fun thiss!27755 () LexerInterface!4537)

(declare-fun tokensListTwoByTwoPredicateSeparableList!674 (LexerInterface!4537 List!33181 List!33180) Bool)

(assert (=> b!2820159 (= res!1173535 (tokensListTwoByTwoPredicateSeparableList!674 thiss!27755 (t!230432 l!6581) rules!4424))))

(declare-fun res!1173529 () Bool)

(assert (=> start!273648 (=> (not res!1173529) (not e!1783890))))

(assert (=> start!273648 (= res!1173529 (is-Lexer!4535 thiss!27755))))

(assert (=> start!273648 e!1783890))

(assert (=> start!273648 true))

(declare-fun e!1783889 () Bool)

(assert (=> start!273648 e!1783889))

(declare-fun e!1783887 () Bool)

(assert (=> start!273648 e!1783887))

(declare-fun lt!1006717 () List!33181)

(declare-fun e!1783888 () Bool)

(declare-fun b!2820160 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1589 (LexerInterface!4537 List!33180 List!33181) Bool)

(assert (=> b!2820160 (= e!1783888 (rulesProduceEachTokenIndividuallyList!1589 thiss!27755 rules!4424 (t!230432 lt!1006717)))))

(declare-fun e!1783885 () Bool)

(assert (=> b!2820161 (= e!1783885 (and tp!900633 tp!900631))))

(declare-fun b!2820162 () Bool)

(declare-fun tp!900637 () Bool)

(declare-fun inv!44982 (Token!9294) Bool)

(assert (=> b!2820162 (= e!1783887 (and (inv!44982 (h!38477 l!6581)) e!1783891 tp!900637))))

(declare-fun e!1783884 () Bool)

(assert (=> b!2820163 (= e!1783884 (and tp!900636 tp!900634))))

(declare-fun b!2820164 () Bool)

(declare-fun res!1173532 () Bool)

(assert (=> b!2820164 (=> (not res!1173532) (not e!1783890))))

(assert (=> b!2820164 (= res!1173532 (tokensListTwoByTwoPredicateSeparableList!674 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2820165 () Bool)

(declare-fun res!1173530 () Bool)

(assert (=> b!2820165 (=> (not res!1173530) (not e!1783890))))

(declare-fun rulesInvariant!3955 (LexerInterface!4537 List!33180) Bool)

(assert (=> b!2820165 (= res!1173530 (rulesInvariant!3955 thiss!27755 rules!4424))))

(declare-fun b!2820166 () Bool)

(declare-fun res!1173534 () Bool)

(assert (=> b!2820166 (=> (not res!1173534) (not e!1783890))))

(assert (=> b!2820166 (= res!1173534 (rulesProduceEachTokenIndividuallyList!1589 thiss!27755 rules!4424 (t!230432 l!6581)))))

(declare-fun b!2820167 () Bool)

(declare-fun res!1173531 () Bool)

(assert (=> b!2820167 (=> (not res!1173531) (not e!1783890))))

(declare-fun isEmpty!18287 (List!33180) Bool)

(assert (=> b!2820167 (= res!1173531 (not (isEmpty!18287 rules!4424)))))

(declare-fun b!2820168 () Bool)

(declare-fun e!1783895 () Bool)

(declare-fun tp!900632 () Bool)

(declare-fun inv!44979 (String!36338) Bool)

(declare-fun inv!44983 (TokenValueInjection!9780) Bool)

(assert (=> b!2820168 (= e!1783895 (and tp!900632 (inv!44979 (tag!5450 (h!38476 rules!4424))) (inv!44983 (transformation!4946 (h!38476 rules!4424))) e!1783884))))

(declare-fun b!2820169 () Bool)

(declare-fun res!1173537 () Bool)

(assert (=> b!2820169 (=> (not res!1173537) (not e!1783890))))

(assert (=> b!2820169 (= res!1173537 (rulesProduceEachTokenIndividuallyList!1589 thiss!27755 rules!4424 l!6581))))

(assert (=> b!2820170 (= e!1783890 (not true))))

(declare-fun lt!1006714 () List!33181)

(declare-fun i!1730 () Int)

(declare-fun take!540 (List!33181 Int) List!33181)

(assert (=> b!2820170 (= lt!1006714 (take!540 l!6581 i!1730))))

(declare-fun e!1783893 () Bool)

(assert (=> b!2820170 e!1783893))

(declare-fun res!1173536 () Bool)

(assert (=> b!2820170 (=> (not res!1173536) (not e!1783893))))

(declare-fun forall!6770 (List!33181 Int) Bool)

(assert (=> b!2820170 (= res!1173536 (forall!6770 lt!1006717 lambda!103520))))

(declare-datatypes ((Unit!47008 0))(
  ( (Unit!47009) )
))
(declare-fun lt!1006715 () Unit!47008)

(declare-fun lemmaForallSubseq!214 (List!33181 List!33181 Int) Unit!47008)

(assert (=> b!2820170 (= lt!1006715 (lemmaForallSubseq!214 lt!1006717 (t!230432 l!6581) lambda!103520))))

(declare-fun e!1783892 () Bool)

(assert (=> b!2820170 (= (rulesProduceEachTokenIndividuallyList!1589 thiss!27755 rules!4424 lt!1006717) e!1783892)))

(declare-fun res!1173539 () Bool)

(assert (=> b!2820170 (=> res!1173539 e!1783892)))

(assert (=> b!2820170 (= res!1173539 (not (is-Cons!33057 lt!1006717)))))

(assert (=> b!2820170 (= lt!1006717 (take!540 (t!230432 l!6581) (- i!1730 1)))))

(declare-fun lt!1006716 () Unit!47008)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!41 (LexerInterface!4537 List!33181 Int List!33180) Unit!47008)

(assert (=> b!2820170 (= lt!1006716 (tokensListTwoByTwoPredicateSeparableTokensTakeList!41 thiss!27755 (t!230432 l!6581) (- i!1730 1) rules!4424))))

(declare-fun b!2820171 () Bool)

(assert (=> b!2820171 (= e!1783893 (tokensListTwoByTwoPredicateSeparableList!674 thiss!27755 lt!1006717 rules!4424))))

(declare-fun b!2820172 () Bool)

(declare-fun tp!900629 () Bool)

(assert (=> b!2820172 (= e!1783889 (and e!1783895 tp!900629))))

(declare-fun tp!900635 () Bool)

(declare-fun b!2820173 () Bool)

(assert (=> b!2820173 (= e!1783883 (and tp!900635 (inv!44979 (tag!5450 (rule!7374 (h!38477 l!6581)))) (inv!44983 (transformation!4946 (rule!7374 (h!38477 l!6581)))) e!1783885))))

(declare-fun b!2820174 () Bool)

(declare-fun res!1173533 () Bool)

(assert (=> b!2820174 (=> (not res!1173533) (not e!1783890))))

(assert (=> b!2820174 (= res!1173533 (and (not (is-Nil!33057 l!6581)) (> i!1730 0)))))

(declare-fun b!2820175 () Bool)

(assert (=> b!2820175 (= e!1783892 e!1783888)))

(declare-fun res!1173538 () Bool)

(assert (=> b!2820175 (=> (not res!1173538) (not e!1783888))))

(declare-fun rulesProduceIndividualToken!2075 (LexerInterface!4537 List!33180 Token!9294) Bool)

(assert (=> b!2820175 (= res!1173538 (rulesProduceIndividualToken!2075 thiss!27755 rules!4424 (h!38477 lt!1006717)))))

(assert (= (and start!273648 res!1173529) b!2820167))

(assert (= (and b!2820167 res!1173531) b!2820165))

(assert (= (and b!2820165 res!1173530) b!2820169))

(assert (= (and b!2820169 res!1173537) b!2820164))

(assert (= (and b!2820164 res!1173532) b!2820174))

(assert (= (and b!2820174 res!1173533) b!2820166))

(assert (= (and b!2820166 res!1173534) b!2820159))

(assert (= (and b!2820159 res!1173535) b!2820170))

(assert (= (and b!2820170 (not res!1173539)) b!2820175))

(assert (= (and b!2820175 res!1173538) b!2820160))

(assert (= (and b!2820170 res!1173536) b!2820171))

(assert (= b!2820168 b!2820163))

(assert (= b!2820172 b!2820168))

(assert (= (and start!273648 (is-Cons!33056 rules!4424)) b!2820172))

(assert (= b!2820173 b!2820161))

(assert (= b!2820158 b!2820173))

(assert (= b!2820162 b!2820158))

(assert (= (and start!273648 (is-Cons!33057 l!6581)) b!2820162))

(declare-fun m!3250815 () Bool)

(assert (=> b!2820169 m!3250815))

(declare-fun m!3250817 () Bool)

(assert (=> b!2820158 m!3250817))

(declare-fun m!3250819 () Bool)

(assert (=> b!2820166 m!3250819))

(declare-fun m!3250821 () Bool)

(assert (=> b!2820168 m!3250821))

(declare-fun m!3250823 () Bool)

(assert (=> b!2820168 m!3250823))

(declare-fun m!3250825 () Bool)

(assert (=> b!2820170 m!3250825))

(declare-fun m!3250827 () Bool)

(assert (=> b!2820170 m!3250827))

(declare-fun m!3250829 () Bool)

(assert (=> b!2820170 m!3250829))

(declare-fun m!3250831 () Bool)

(assert (=> b!2820170 m!3250831))

(declare-fun m!3250833 () Bool)

(assert (=> b!2820170 m!3250833))

(declare-fun m!3250835 () Bool)

(assert (=> b!2820170 m!3250835))

(declare-fun m!3250837 () Bool)

(assert (=> b!2820164 m!3250837))

(declare-fun m!3250839 () Bool)

(assert (=> b!2820165 m!3250839))

(declare-fun m!3250841 () Bool)

(assert (=> b!2820171 m!3250841))

(declare-fun m!3250843 () Bool)

(assert (=> b!2820160 m!3250843))

(declare-fun m!3250845 () Bool)

(assert (=> b!2820175 m!3250845))

(declare-fun m!3250847 () Bool)

(assert (=> b!2820159 m!3250847))

(declare-fun m!3250849 () Bool)

(assert (=> b!2820167 m!3250849))

(declare-fun m!3250851 () Bool)

(assert (=> b!2820173 m!3250851))

(declare-fun m!3250853 () Bool)

(assert (=> b!2820173 m!3250853))

(declare-fun m!3250855 () Bool)

(assert (=> b!2820162 m!3250855))

(push 1)

(assert (not b!2820173))

(assert (not b_next!81309))

(assert b_and!205991)

(assert (not b!2820184))

(assert (not b!2820165))

(assert (not b!2820172))

(assert (not b!2820162))

(assert (not b_next!81315))

(assert (not b_next!81313))

(assert (not b!2820170))

(assert b_and!205993)

(assert (not b!2820168))

(assert (not b!2820159))

(assert (not b!2820166))

(assert (not b_next!81311))

(assert (not b!2820171))

(assert (not b!2820169))

(assert b_and!205997)

(assert b_and!205995)

(assert (not b!2820158))

(assert (not b!2820167))

(assert (not b!2820175))

(assert (not b!2820160))

(assert (not b!2820164))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81309))

(assert b_and!205991)

(assert (not b_next!81311))

(assert (not b_next!81315))

(assert (not b_next!81313))

(assert b_and!205993)

(assert b_and!205997)

(assert b_and!205995)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105336 () Bool)

(assert start!105336)

(declare-fun b!1186954 () Bool)

(declare-fun b_free!28565 () Bool)

(declare-fun b_next!29269 () Bool)

(assert (=> b!1186954 (= b_free!28565 (not b_next!29269))))

(declare-fun tp!338531 () Bool)

(declare-fun b_and!81709 () Bool)

(assert (=> b!1186954 (= tp!338531 b_and!81709)))

(declare-fun b_free!28567 () Bool)

(declare-fun b_next!29271 () Bool)

(assert (=> b!1186954 (= b_free!28567 (not b_next!29271))))

(declare-fun tp!338534 () Bool)

(declare-fun b_and!81711 () Bool)

(assert (=> b!1186954 (= tp!338534 b_and!81711)))

(declare-fun b!1186964 () Bool)

(declare-fun b_free!28569 () Bool)

(declare-fun b_next!29273 () Bool)

(assert (=> b!1186964 (= b_free!28569 (not b_next!29273))))

(declare-fun tp!338530 () Bool)

(declare-fun b_and!81713 () Bool)

(assert (=> b!1186964 (= tp!338530 b_and!81713)))

(declare-fun b_free!28571 () Bool)

(declare-fun b_next!29275 () Bool)

(assert (=> b!1186964 (= b_free!28571 (not b_next!29275))))

(declare-fun tp!338533 () Bool)

(declare-fun b_and!81715 () Bool)

(assert (=> b!1186964 (= tp!338533 b_and!81715)))

(declare-fun b!1186975 () Bool)

(declare-fun e!762673 () Bool)

(assert (=> b!1186975 (= e!762673 true)))

(declare-fun b!1186974 () Bool)

(declare-fun e!762672 () Bool)

(assert (=> b!1186974 (= e!762672 e!762673)))

(declare-fun b!1186973 () Bool)

(declare-fun e!762671 () Bool)

(assert (=> b!1186973 (= e!762671 e!762672)))

(declare-fun b!1186963 () Bool)

(assert (=> b!1186963 e!762671))

(assert (= b!1186974 b!1186975))

(assert (= b!1186973 b!1186974))

(declare-datatypes ((C!7026 0))(
  ( (C!7027 (val!3809 Int)) )
))
(declare-datatypes ((List!11937 0))(
  ( (Nil!11913) (Cons!11913 (h!17314 C!7026) (t!111969 List!11937)) )
))
(declare-datatypes ((IArray!7807 0))(
  ( (IArray!7808 (innerList!3961 List!11937)) )
))
(declare-datatypes ((Conc!3901 0))(
  ( (Node!3901 (left!10371 Conc!3901) (right!10701 Conc!3901) (csize!8032 Int) (cheight!4112 Int)) (Leaf!5974 (xs!6606 IArray!7807) (csize!8033 Int)) (Empty!3901) )
))
(declare-datatypes ((BalanceConc!7824 0))(
  ( (BalanceConc!7825 (c!197237 Conc!3901)) )
))
(declare-datatypes ((List!11938 0))(
  ( (Nil!11914) (Cons!11914 (h!17315 (_ BitVec 16)) (t!111970 List!11938)) )
))
(declare-datatypes ((TokenValue!2150 0))(
  ( (FloatLiteralValue!4300 (text!15495 List!11938)) (TokenValueExt!2149 (__x!8011 Int)) (Broken!10750 (value!67426 List!11938)) (Object!2173) (End!2150) (Def!2150) (Underscore!2150) (Match!2150) (Else!2150) (Error!2150) (Case!2150) (If!2150) (Extends!2150) (Abstract!2150) (Class!2150) (Val!2150) (DelimiterValue!4300 (del!2210 List!11938)) (KeywordValue!2156 (value!67427 List!11938)) (CommentValue!4300 (value!67428 List!11938)) (WhitespaceValue!4300 (value!67429 List!11938)) (IndentationValue!2150 (value!67430 List!11938)) (String!14419) (Int32!2150) (Broken!10751 (value!67431 List!11938)) (Boolean!2151) (Unit!18281) (OperatorValue!2153 (op!2210 List!11938)) (IdentifierValue!4300 (value!67432 List!11938)) (IdentifierValue!4301 (value!67433 List!11938)) (WhitespaceValue!4301 (value!67434 List!11938)) (True!4300) (False!4300) (Broken!10752 (value!67435 List!11938)) (Broken!10753 (value!67436 List!11938)) (True!4301) (RightBrace!2150) (RightBracket!2150) (Colon!2150) (Null!2150) (Comma!2150) (LeftBracket!2150) (False!4301) (LeftBrace!2150) (ImaginaryLiteralValue!2150 (text!15496 List!11938)) (StringLiteralValue!6450 (value!67437 List!11938)) (EOFValue!2150 (value!67438 List!11938)) (IdentValue!2150 (value!67439 List!11938)) (DelimiterValue!4301 (value!67440 List!11938)) (DedentValue!2150 (value!67441 List!11938)) (NewLineValue!2150 (value!67442 List!11938)) (IntegerValue!6450 (value!67443 (_ BitVec 32)) (text!15497 List!11938)) (IntegerValue!6451 (value!67444 Int) (text!15498 List!11938)) (Times!2150) (Or!2150) (Equal!2150) (Minus!2150) (Broken!10754 (value!67445 List!11938)) (And!2150) (Div!2150) (LessEqual!2150) (Mod!2150) (Concat!5504) (Not!2150) (Plus!2150) (SpaceValue!2150 (value!67446 List!11938)) (IntegerValue!6452 (value!67447 Int) (text!15499 List!11938)) (StringLiteralValue!6451 (text!15500 List!11938)) (FloatLiteralValue!4301 (text!15501 List!11938)) (BytesLiteralValue!2150 (value!67448 List!11938)) (CommentValue!4301 (value!67449 List!11938)) (StringLiteralValue!6452 (value!67450 List!11938)) (ErrorTokenValue!2150 (msg!2211 List!11938)) )
))
(declare-datatypes ((Regex!3354 0))(
  ( (ElementMatch!3354 (c!197238 C!7026)) (Concat!5505 (regOne!7220 Regex!3354) (regTwo!7220 Regex!3354)) (EmptyExpr!3354) (Star!3354 (reg!3683 Regex!3354)) (EmptyLang!3354) (Union!3354 (regOne!7221 Regex!3354) (regTwo!7221 Regex!3354)) )
))
(declare-datatypes ((String!14420 0))(
  ( (String!14421 (value!67451 String)) )
))
(declare-datatypes ((TokenValueInjection!4000 0))(
  ( (TokenValueInjection!4001 (toValue!3201 Int) (toChars!3060 Int)) )
))
(declare-datatypes ((Rule!3968 0))(
  ( (Rule!3969 (regex!2084 Regex!3354) (tag!2346 String!14420) (isSeparator!2084 Bool) (transformation!2084 TokenValueInjection!4000)) )
))
(declare-datatypes ((List!11939 0))(
  ( (Nil!11915) (Cons!11915 (h!17316 Rule!3968) (t!111971 List!11939)) )
))
(declare-fun rules!4386 () List!11939)

(assert (= (and b!1186963 (is-Cons!11915 rules!4386)) b!1186973))

(declare-fun order!7417 () Int)

(declare-fun lambda!48928 () Int)

(declare-fun order!7415 () Int)

(declare-fun dynLambda!5321 (Int Int) Int)

(declare-fun dynLambda!5322 (Int Int) Int)

(assert (=> b!1186975 (< (dynLambda!5321 order!7415 (toValue!3201 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48928))))

(declare-fun order!7419 () Int)

(declare-fun dynLambda!5323 (Int Int) Int)

(assert (=> b!1186975 (< (dynLambda!5323 order!7419 (toChars!3060 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48928))))

(declare-fun b!1186950 () Bool)

(declare-fun res!536380 () Bool)

(declare-fun e!762655 () Bool)

(assert (=> b!1186950 (=> (not res!536380) (not e!762655))))

(declare-datatypes ((Token!3830 0))(
  ( (Token!3831 (value!67452 TokenValue!2150) (rule!3505 Rule!3968) (size!9392 Int) (originalCharacters!2638 List!11937)) )
))
(declare-datatypes ((List!11940 0))(
  ( (Nil!11916) (Cons!11916 (h!17317 Token!3830) (t!111972 List!11940)) )
))
(declare-fun l!6534 () List!11940)

(declare-fun i!1621 () Int)

(assert (=> b!1186950 (= res!536380 (and (not (is-Nil!11916 l!6534)) (<= i!1621 0)))))

(declare-fun b!1186951 () Bool)

(declare-fun res!536377 () Bool)

(assert (=> b!1186951 (=> (not res!536377) (not e!762655))))

(declare-datatypes ((LexerInterface!1779 0))(
  ( (LexerInterfaceExt!1776 (__x!8012 Int)) (Lexer!1777) )
))
(declare-fun thiss!27592 () LexerInterface!1779)

(declare-fun rulesInvariant!1653 (LexerInterface!1779 List!11939) Bool)

(assert (=> b!1186951 (= res!536377 (rulesInvariant!1653 thiss!27592 rules!4386))))

(declare-fun b!1186952 () Bool)

(declare-fun res!536376 () Bool)

(assert (=> b!1186952 (=> (not res!536376) (not e!762655))))

(declare-fun rulesProduceEachTokenIndividuallyList!645 (LexerInterface!1779 List!11939 List!11940) Bool)

(assert (=> b!1186952 (= res!536376 (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1186953 () Bool)

(declare-fun res!536379 () Bool)

(assert (=> b!1186953 (=> (not res!536379) (not e!762655))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!173 (LexerInterface!1779 List!11940 List!11939) Bool)

(assert (=> b!1186953 (= res!536379 (tokensListTwoByTwoPredicateSeparableList!173 thiss!27592 l!6534 rules!4386))))

(declare-fun e!762653 () Bool)

(assert (=> b!1186954 (= e!762653 (and tp!338531 tp!338534))))

(declare-fun e!762661 () Bool)

(declare-fun tp!338529 () Bool)

(declare-fun e!762652 () Bool)

(declare-fun b!1186955 () Bool)

(declare-fun inv!15743 (String!14420) Bool)

(declare-fun inv!15746 (TokenValueInjection!4000) Bool)

(assert (=> b!1186955 (= e!762652 (and tp!338529 (inv!15743 (tag!2346 (rule!3505 (h!17317 l!6534)))) (inv!15746 (transformation!2084 (rule!3505 (h!17317 l!6534)))) e!762661))))

(declare-fun b!1186956 () Bool)

(declare-fun res!536375 () Bool)

(assert (=> b!1186956 (=> (not res!536375) (not e!762655))))

(declare-fun isEmpty!7169 (List!11939) Bool)

(assert (=> b!1186956 (= res!536375 (not (isEmpty!7169 rules!4386)))))

(declare-fun b!1186957 () Bool)

(declare-fun e!762662 () Bool)

(declare-fun e!762654 () Bool)

(declare-fun tp!338535 () Bool)

(assert (=> b!1186957 (= e!762662 (and e!762654 tp!338535))))

(declare-fun tp!338532 () Bool)

(declare-fun b!1186958 () Bool)

(assert (=> b!1186958 (= e!762654 (and tp!338532 (inv!15743 (tag!2346 (h!17316 rules!4386))) (inv!15746 (transformation!2084 (h!17316 rules!4386))) e!762653))))

(declare-fun e!762660 () Bool)

(declare-fun b!1186959 () Bool)

(declare-fun lt!408313 () List!11940)

(assert (=> b!1186959 (= e!762660 (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 (t!111972 lt!408313)))))

(declare-fun res!536378 () Bool)

(assert (=> start!105336 (=> (not res!536378) (not e!762655))))

(assert (=> start!105336 (= res!536378 (is-Lexer!1777 thiss!27592))))

(assert (=> start!105336 e!762655))

(assert (=> start!105336 true))

(assert (=> start!105336 e!762662))

(declare-fun e!762663 () Bool)

(assert (=> start!105336 e!762663))

(declare-fun tp!338527 () Bool)

(declare-fun b!1186960 () Bool)

(declare-fun e!762659 () Bool)

(declare-fun inv!21 (TokenValue!2150) Bool)

(assert (=> b!1186960 (= e!762659 (and (inv!21 (value!67452 (h!17317 l!6534))) e!762652 tp!338527))))

(declare-fun b!1186961 () Bool)

(declare-fun e!762657 () Bool)

(assert (=> b!1186961 (= e!762657 e!762660)))

(declare-fun res!536373 () Bool)

(assert (=> b!1186961 (=> (not res!536373) (not e!762660))))

(declare-fun rulesProduceIndividualToken!806 (LexerInterface!1779 List!11939 Token!3830) Bool)

(assert (=> b!1186961 (= res!536373 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 lt!408313)))))

(declare-fun b!1186962 () Bool)

(declare-fun tp!338528 () Bool)

(declare-fun inv!15747 (Token!3830) Bool)

(assert (=> b!1186962 (= e!762663 (and (inv!15747 (h!17317 l!6534)) e!762659 tp!338528))))

(declare-fun forall!3155 (List!11940 Int) Bool)

(assert (=> b!1186963 (= e!762655 (not (forall!3155 l!6534 lambda!48928)))))

(declare-fun subseq!334 (List!11940 List!11940) Bool)

(assert (=> b!1186963 (subseq!334 lt!408313 l!6534)))

(declare-datatypes ((Unit!18282 0))(
  ( (Unit!18283) )
))
(declare-fun lt!408314 () Unit!18282)

(declare-fun lemmaDropSubseq!97 (List!11940 Int) Unit!18282)

(assert (=> b!1186963 (= lt!408314 (lemmaDropSubseq!97 l!6534 i!1621))))

(assert (=> b!1186963 (= (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 lt!408313) e!762657)))

(declare-fun res!536374 () Bool)

(assert (=> b!1186963 (=> res!536374 e!762657)))

(assert (=> b!1186963 (= res!536374 (not (is-Cons!11916 lt!408313)))))

(declare-fun drop!558 (List!11940 Int) List!11940)

(assert (=> b!1186963 (= lt!408313 (drop!558 l!6534 i!1621))))

(assert (=> b!1186964 (= e!762661 (and tp!338530 tp!338533))))

(assert (= (and start!105336 res!536378) b!1186956))

(assert (= (and b!1186956 res!536375) b!1186951))

(assert (= (and b!1186951 res!536377) b!1186952))

(assert (= (and b!1186952 res!536376) b!1186953))

(assert (= (and b!1186953 res!536379) b!1186950))

(assert (= (and b!1186950 res!536380) b!1186963))

(assert (= (and b!1186963 (not res!536374)) b!1186961))

(assert (= (and b!1186961 res!536373) b!1186959))

(assert (= b!1186958 b!1186954))

(assert (= b!1186957 b!1186958))

(assert (= (and start!105336 (is-Cons!11915 rules!4386)) b!1186957))

(assert (= b!1186955 b!1186964))

(assert (= b!1186960 b!1186955))

(assert (= b!1186962 b!1186960))

(assert (= (and start!105336 (is-Cons!11916 l!6534)) b!1186962))

(declare-fun m!1362883 () Bool)

(assert (=> b!1186956 m!1362883))

(declare-fun m!1362885 () Bool)

(assert (=> b!1186953 m!1362885))

(declare-fun m!1362887 () Bool)

(assert (=> b!1186951 m!1362887))

(declare-fun m!1362889 () Bool)

(assert (=> b!1186952 m!1362889))

(declare-fun m!1362891 () Bool)

(assert (=> b!1186958 m!1362891))

(declare-fun m!1362893 () Bool)

(assert (=> b!1186958 m!1362893))

(declare-fun m!1362895 () Bool)

(assert (=> b!1186960 m!1362895))

(declare-fun m!1362897 () Bool)

(assert (=> b!1186962 m!1362897))

(declare-fun m!1362899 () Bool)

(assert (=> b!1186955 m!1362899))

(declare-fun m!1362901 () Bool)

(assert (=> b!1186955 m!1362901))

(declare-fun m!1362903 () Bool)

(assert (=> b!1186963 m!1362903))

(declare-fun m!1362905 () Bool)

(assert (=> b!1186963 m!1362905))

(declare-fun m!1362907 () Bool)

(assert (=> b!1186963 m!1362907))

(declare-fun m!1362909 () Bool)

(assert (=> b!1186963 m!1362909))

(declare-fun m!1362911 () Bool)

(assert (=> b!1186963 m!1362911))

(declare-fun m!1362913 () Bool)

(assert (=> b!1186961 m!1362913))

(declare-fun m!1362915 () Bool)

(assert (=> b!1186959 m!1362915))

(push 1)

(assert (not b!1186960))

(assert (not b!1186959))

(assert (not b!1186957))

(assert (not b!1186952))

(assert (not b!1186962))

(assert b_and!81709)

(assert (not b_next!29269))

(assert b_and!81713)

(assert (not b!1186973))

(assert b_and!81711)

(assert (not b!1186963))

(assert (not b!1186951))

(assert b_and!81715)

(assert (not b!1186956))

(assert (not b_next!29275))

(assert (not b!1186955))

(assert (not b!1186953))

(assert (not b!1186961))

(assert (not b_next!29273))

(assert (not b!1186958))

(assert (not b_next!29271))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29275))

(assert b_and!81709)

(assert (not b_next!29269))

(assert b_and!81713)

(assert b_and!81711)

(assert (not b_next!29273))

(assert b_and!81715)

(assert (not b_next!29271))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!287650 () Bool)

(declare-fun d!339553 () Bool)

(assert (= bs!287650 (and d!339553 b!1186963)))

(declare-fun lambda!48934 () Int)

(assert (=> bs!287650 (= (= thiss!27592 Lexer!1777) (= lambda!48934 lambda!48928))))

(declare-fun b!1187058 () Bool)

(declare-fun e!762748 () Bool)

(assert (=> b!1187058 (= e!762748 true)))

(declare-fun b!1187057 () Bool)

(declare-fun e!762747 () Bool)

(assert (=> b!1187057 (= e!762747 e!762748)))

(declare-fun b!1187056 () Bool)

(declare-fun e!762746 () Bool)

(assert (=> b!1187056 (= e!762746 e!762747)))

(assert (=> d!339553 e!762746))

(assert (= b!1187057 b!1187058))

(assert (= b!1187056 b!1187057))

(assert (= (and d!339553 (is-Cons!11915 rules!4386)) b!1187056))

(assert (=> b!1187058 (< (dynLambda!5321 order!7415 (toValue!3201 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48934))))

(assert (=> b!1187058 (< (dynLambda!5323 order!7419 (toChars!3060 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48934))))

(assert (=> d!339553 true))

(declare-fun lt!408326 () Bool)

(assert (=> d!339553 (= lt!408326 (forall!3155 l!6534 lambda!48934))))

(declare-fun e!762744 () Bool)

(assert (=> d!339553 (= lt!408326 e!762744)))

(declare-fun res!536432 () Bool)

(assert (=> d!339553 (=> res!536432 e!762744)))

(assert (=> d!339553 (= res!536432 (not (is-Cons!11916 l!6534)))))

(assert (=> d!339553 (not (isEmpty!7169 rules!4386))))

(assert (=> d!339553 (= (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 l!6534) lt!408326)))

(declare-fun b!1187054 () Bool)

(declare-fun e!762745 () Bool)

(assert (=> b!1187054 (= e!762744 e!762745)))

(declare-fun res!536433 () Bool)

(assert (=> b!1187054 (=> (not res!536433) (not e!762745))))

(assert (=> b!1187054 (= res!536433 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 l!6534)))))

(declare-fun b!1187055 () Bool)

(assert (=> b!1187055 (= e!762745 (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 (t!111972 l!6534)))))

(assert (= (and d!339553 (not res!536432)) b!1187054))

(assert (= (and b!1187054 res!536433) b!1187055))

(declare-fun m!1362963 () Bool)

(assert (=> d!339553 m!1362963))

(assert (=> d!339553 m!1362883))

(declare-fun m!1362965 () Bool)

(assert (=> b!1187054 m!1362965))

(declare-fun m!1362967 () Bool)

(assert (=> b!1187055 m!1362967))

(assert (=> b!1186952 d!339553))

(declare-fun d!339563 () Bool)

(assert (=> d!339563 (subseq!334 (drop!558 l!6534 i!1621) l!6534)))

(declare-fun lt!408329 () Unit!18282)

(declare-fun choose!7675 (List!11940 Int) Unit!18282)

(assert (=> d!339563 (= lt!408329 (choose!7675 l!6534 i!1621))))

(assert (=> d!339563 (= (lemmaDropSubseq!97 l!6534 i!1621) lt!408329)))

(declare-fun bs!287651 () Bool)

(assert (= bs!287651 d!339563))

(assert (=> bs!287651 m!1362903))

(assert (=> bs!287651 m!1362903))

(declare-fun m!1362969 () Bool)

(assert (=> bs!287651 m!1362969))

(declare-fun m!1362971 () Bool)

(assert (=> bs!287651 m!1362971))

(assert (=> b!1186963 d!339563))

(declare-fun bs!287652 () Bool)

(declare-fun d!339565 () Bool)

(assert (= bs!287652 (and d!339565 b!1186963)))

(declare-fun lambda!48935 () Int)

(assert (=> bs!287652 (= (= thiss!27592 Lexer!1777) (= lambda!48935 lambda!48928))))

(declare-fun bs!287653 () Bool)

(assert (= bs!287653 (and d!339565 d!339553)))

(assert (=> bs!287653 (= lambda!48935 lambda!48934)))

(declare-fun b!1187065 () Bool)

(declare-fun e!762753 () Bool)

(assert (=> b!1187065 (= e!762753 true)))

(declare-fun b!1187064 () Bool)

(declare-fun e!762752 () Bool)

(assert (=> b!1187064 (= e!762752 e!762753)))

(declare-fun b!1187063 () Bool)

(declare-fun e!762751 () Bool)

(assert (=> b!1187063 (= e!762751 e!762752)))

(assert (=> d!339565 e!762751))

(assert (= b!1187064 b!1187065))

(assert (= b!1187063 b!1187064))

(assert (= (and d!339565 (is-Cons!11915 rules!4386)) b!1187063))

(assert (=> b!1187065 (< (dynLambda!5321 order!7415 (toValue!3201 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48935))))

(assert (=> b!1187065 (< (dynLambda!5323 order!7419 (toChars!3060 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48935))))

(assert (=> d!339565 true))

(declare-fun lt!408330 () Bool)

(assert (=> d!339565 (= lt!408330 (forall!3155 lt!408313 lambda!48935))))

(declare-fun e!762749 () Bool)

(assert (=> d!339565 (= lt!408330 e!762749)))

(declare-fun res!536434 () Bool)

(assert (=> d!339565 (=> res!536434 e!762749)))

(assert (=> d!339565 (= res!536434 (not (is-Cons!11916 lt!408313)))))

(assert (=> d!339565 (not (isEmpty!7169 rules!4386))))

(assert (=> d!339565 (= (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 lt!408313) lt!408330)))

(declare-fun b!1187061 () Bool)

(declare-fun e!762750 () Bool)

(assert (=> b!1187061 (= e!762749 e!762750)))

(declare-fun res!536435 () Bool)

(assert (=> b!1187061 (=> (not res!536435) (not e!762750))))

(assert (=> b!1187061 (= res!536435 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 lt!408313)))))

(declare-fun b!1187062 () Bool)

(assert (=> b!1187062 (= e!762750 (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 (t!111972 lt!408313)))))

(assert (= (and d!339565 (not res!536434)) b!1187061))

(assert (= (and b!1187061 res!536435) b!1187062))

(declare-fun m!1362973 () Bool)

(assert (=> d!339565 m!1362973))

(assert (=> d!339565 m!1362883))

(assert (=> b!1187061 m!1362913))

(assert (=> b!1187062 m!1362915))

(assert (=> b!1186963 d!339565))

(declare-fun b!1187077 () Bool)

(declare-fun e!762764 () Bool)

(assert (=> b!1187077 (= e!762764 (subseq!334 lt!408313 (t!111972 l!6534)))))

(declare-fun b!1187074 () Bool)

(declare-fun e!762763 () Bool)

(declare-fun e!762762 () Bool)

(assert (=> b!1187074 (= e!762763 e!762762)))

(declare-fun res!536446 () Bool)

(assert (=> b!1187074 (=> (not res!536446) (not e!762762))))

(assert (=> b!1187074 (= res!536446 (is-Cons!11916 l!6534))))

(declare-fun b!1187075 () Bool)

(assert (=> b!1187075 (= e!762762 e!762764)))

(declare-fun res!536445 () Bool)

(assert (=> b!1187075 (=> res!536445 e!762764)))

(declare-fun e!762765 () Bool)

(assert (=> b!1187075 (= res!536445 e!762765)))

(declare-fun res!536447 () Bool)

(assert (=> b!1187075 (=> (not res!536447) (not e!762765))))

(assert (=> b!1187075 (= res!536447 (= (h!17317 lt!408313) (h!17317 l!6534)))))

(declare-fun b!1187076 () Bool)

(assert (=> b!1187076 (= e!762765 (subseq!334 (t!111972 lt!408313) (t!111972 l!6534)))))

(declare-fun d!339567 () Bool)

(declare-fun res!536444 () Bool)

(assert (=> d!339567 (=> res!536444 e!762763)))

(assert (=> d!339567 (= res!536444 (is-Nil!11916 lt!408313))))

(assert (=> d!339567 (= (subseq!334 lt!408313 l!6534) e!762763)))

(assert (= (and d!339567 (not res!536444)) b!1187074))

(assert (= (and b!1187074 res!536446) b!1187075))

(assert (= (and b!1187075 res!536447) b!1187076))

(assert (= (and b!1187075 (not res!536445)) b!1187077))

(declare-fun m!1362975 () Bool)

(assert (=> b!1187077 m!1362975))

(declare-fun m!1362977 () Bool)

(assert (=> b!1187076 m!1362977))

(assert (=> b!1186963 d!339567))

(declare-fun b!1187097 () Bool)

(declare-fun e!762778 () Int)

(declare-fun call!82637 () Int)

(assert (=> b!1187097 (= e!762778 (- call!82637 i!1621))))

(declare-fun b!1187098 () Bool)

(declare-fun e!762777 () Int)

(assert (=> b!1187098 (= e!762777 call!82637)))

(declare-fun b!1187099 () Bool)

(declare-fun e!762779 () List!11940)

(assert (=> b!1187099 (= e!762779 (drop!558 (t!111972 l!6534) (- i!1621 1)))))

(declare-fun bm!82632 () Bool)

(declare-fun size!9394 (List!11940) Int)

(assert (=> bm!82632 (= call!82637 (size!9394 l!6534))))

(declare-fun b!1187100 () Bool)

(declare-fun e!762780 () Bool)

(declare-fun lt!408333 () List!11940)

(assert (=> b!1187100 (= e!762780 (= (size!9394 lt!408333) e!762777))))

(declare-fun c!197249 () Bool)

(assert (=> b!1187100 (= c!197249 (<= i!1621 0))))

(declare-fun b!1187096 () Bool)

(assert (=> b!1187096 (= e!762779 l!6534)))

(declare-fun d!339569 () Bool)

(assert (=> d!339569 e!762780))

(declare-fun res!536450 () Bool)

(assert (=> d!339569 (=> (not res!536450) (not e!762780))))

(declare-fun content!1646 (List!11940) (Set Token!3830))

(assert (=> d!339569 (= res!536450 (set.subset (content!1646 lt!408333) (content!1646 l!6534)))))

(declare-fun e!762776 () List!11940)

(assert (=> d!339569 (= lt!408333 e!762776)))

(declare-fun c!197250 () Bool)

(assert (=> d!339569 (= c!197250 (is-Nil!11916 l!6534))))

(assert (=> d!339569 (= (drop!558 l!6534 i!1621) lt!408333)))

(declare-fun b!1187101 () Bool)

(assert (=> b!1187101 (= e!762778 0)))

(declare-fun b!1187102 () Bool)

(assert (=> b!1187102 (= e!762777 e!762778)))

(declare-fun c!197251 () Bool)

(assert (=> b!1187102 (= c!197251 (>= i!1621 call!82637))))

(declare-fun b!1187103 () Bool)

(assert (=> b!1187103 (= e!762776 Nil!11916)))

(declare-fun b!1187104 () Bool)

(assert (=> b!1187104 (= e!762776 e!762779)))

(declare-fun c!197252 () Bool)

(assert (=> b!1187104 (= c!197252 (<= i!1621 0))))

(assert (= (and d!339569 c!197250) b!1187103))

(assert (= (and d!339569 (not c!197250)) b!1187104))

(assert (= (and b!1187104 c!197252) b!1187096))

(assert (= (and b!1187104 (not c!197252)) b!1187099))

(assert (= (and d!339569 res!536450) b!1187100))

(assert (= (and b!1187100 c!197249) b!1187098))

(assert (= (and b!1187100 (not c!197249)) b!1187102))

(assert (= (and b!1187102 c!197251) b!1187101))

(assert (= (and b!1187102 (not c!197251)) b!1187097))

(assert (= (or b!1187098 b!1187102 b!1187097) bm!82632))

(declare-fun m!1362979 () Bool)

(assert (=> b!1187099 m!1362979))

(declare-fun m!1362981 () Bool)

(assert (=> bm!82632 m!1362981))

(declare-fun m!1362983 () Bool)

(assert (=> b!1187100 m!1362983))

(declare-fun m!1362985 () Bool)

(assert (=> d!339569 m!1362985))

(declare-fun m!1362987 () Bool)

(assert (=> d!339569 m!1362987))

(assert (=> b!1186963 d!339569))

(declare-fun d!339571 () Bool)

(declare-fun res!536455 () Bool)

(declare-fun e!762785 () Bool)

(assert (=> d!339571 (=> res!536455 e!762785)))

(assert (=> d!339571 (= res!536455 (is-Nil!11916 l!6534))))

(assert (=> d!339571 (= (forall!3155 l!6534 lambda!48928) e!762785)))

(declare-fun b!1187109 () Bool)

(declare-fun e!762786 () Bool)

(assert (=> b!1187109 (= e!762785 e!762786)))

(declare-fun res!536456 () Bool)

(assert (=> b!1187109 (=> (not res!536456) (not e!762786))))

(declare-fun dynLambda!5327 (Int Token!3830) Bool)

(assert (=> b!1187109 (= res!536456 (dynLambda!5327 lambda!48928 (h!17317 l!6534)))))

(declare-fun b!1187110 () Bool)

(assert (=> b!1187110 (= e!762786 (forall!3155 (t!111972 l!6534) lambda!48928))))

(assert (= (and d!339571 (not res!536455)) b!1187109))

(assert (= (and b!1187109 res!536456) b!1187110))

(declare-fun b_lambda!35641 () Bool)

(assert (=> (not b_lambda!35641) (not b!1187109)))

(declare-fun m!1362989 () Bool)

(assert (=> b!1187109 m!1362989))

(declare-fun m!1362991 () Bool)

(assert (=> b!1187110 m!1362991))

(assert (=> b!1186963 d!339571))

(declare-fun d!339573 () Bool)

(declare-fun res!536461 () Bool)

(declare-fun e!762789 () Bool)

(assert (=> d!339573 (=> (not res!536461) (not e!762789))))

(declare-fun isEmpty!7171 (List!11937) Bool)

(assert (=> d!339573 (= res!536461 (not (isEmpty!7171 (originalCharacters!2638 (h!17317 l!6534)))))))

(assert (=> d!339573 (= (inv!15747 (h!17317 l!6534)) e!762789)))

(declare-fun b!1187115 () Bool)

(declare-fun res!536462 () Bool)

(assert (=> b!1187115 (=> (not res!536462) (not e!762789))))

(declare-fun list!4375 (BalanceConc!7824) List!11937)

(declare-fun dynLambda!5328 (Int TokenValue!2150) BalanceConc!7824)

(assert (=> b!1187115 (= res!536462 (= (originalCharacters!2638 (h!17317 l!6534)) (list!4375 (dynLambda!5328 (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))) (value!67452 (h!17317 l!6534))))))))

(declare-fun b!1187116 () Bool)

(declare-fun size!9395 (List!11937) Int)

(assert (=> b!1187116 (= e!762789 (= (size!9392 (h!17317 l!6534)) (size!9395 (originalCharacters!2638 (h!17317 l!6534)))))))

(assert (= (and d!339573 res!536461) b!1187115))

(assert (= (and b!1187115 res!536462) b!1187116))

(declare-fun b_lambda!35643 () Bool)

(assert (=> (not b_lambda!35643) (not b!1187115)))

(declare-fun tb!66365 () Bool)

(declare-fun t!111982 () Bool)

(assert (=> (and b!1186954 (= (toChars!3060 (transformation!2084 (h!17316 rules!4386))) (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534))))) t!111982) tb!66365))

(declare-fun b!1187121 () Bool)

(declare-fun e!762792 () Bool)

(declare-fun tp!338565 () Bool)

(declare-fun inv!15750 (Conc!3901) Bool)

(assert (=> b!1187121 (= e!762792 (and (inv!15750 (c!197237 (dynLambda!5328 (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))) (value!67452 (h!17317 l!6534))))) tp!338565))))

(declare-fun result!79730 () Bool)

(declare-fun inv!15751 (BalanceConc!7824) Bool)

(assert (=> tb!66365 (= result!79730 (and (inv!15751 (dynLambda!5328 (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))) (value!67452 (h!17317 l!6534)))) e!762792))))

(assert (= tb!66365 b!1187121))

(declare-fun m!1362993 () Bool)

(assert (=> b!1187121 m!1362993))

(declare-fun m!1362995 () Bool)

(assert (=> tb!66365 m!1362995))

(assert (=> b!1187115 t!111982))

(declare-fun b_and!81725 () Bool)

(assert (= b_and!81711 (and (=> t!111982 result!79730) b_and!81725)))

(declare-fun t!111984 () Bool)

(declare-fun tb!66367 () Bool)

(assert (=> (and b!1186964 (= (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))) (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534))))) t!111984) tb!66367))

(declare-fun result!79734 () Bool)

(assert (= result!79734 result!79730))

(assert (=> b!1187115 t!111984))

(declare-fun b_and!81727 () Bool)

(assert (= b_and!81715 (and (=> t!111984 result!79734) b_and!81727)))

(declare-fun m!1362997 () Bool)

(assert (=> d!339573 m!1362997))

(declare-fun m!1362999 () Bool)

(assert (=> b!1187115 m!1362999))

(assert (=> b!1187115 m!1362999))

(declare-fun m!1363001 () Bool)

(assert (=> b!1187115 m!1363001))

(declare-fun m!1363003 () Bool)

(assert (=> b!1187116 m!1363003))

(assert (=> b!1186962 d!339573))

(declare-fun bs!287654 () Bool)

(declare-fun d!339575 () Bool)

(assert (= bs!287654 (and d!339575 b!1186963)))

(declare-fun lambda!48936 () Int)

(assert (=> bs!287654 (= (= thiss!27592 Lexer!1777) (= lambda!48936 lambda!48928))))

(declare-fun bs!287655 () Bool)

(assert (= bs!287655 (and d!339575 d!339553)))

(assert (=> bs!287655 (= lambda!48936 lambda!48934)))

(declare-fun bs!287656 () Bool)

(assert (= bs!287656 (and d!339575 d!339565)))

(assert (=> bs!287656 (= lambda!48936 lambda!48935)))

(declare-fun b!1187126 () Bool)

(declare-fun e!762797 () Bool)

(assert (=> b!1187126 (= e!762797 true)))

(declare-fun b!1187125 () Bool)

(declare-fun e!762796 () Bool)

(assert (=> b!1187125 (= e!762796 e!762797)))

(declare-fun b!1187124 () Bool)

(declare-fun e!762795 () Bool)

(assert (=> b!1187124 (= e!762795 e!762796)))

(assert (=> d!339575 e!762795))

(assert (= b!1187125 b!1187126))

(assert (= b!1187124 b!1187125))

(assert (= (and d!339575 (is-Cons!11915 rules!4386)) b!1187124))

(assert (=> b!1187126 (< (dynLambda!5321 order!7415 (toValue!3201 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48936))))

(assert (=> b!1187126 (< (dynLambda!5323 order!7419 (toChars!3060 (transformation!2084 (h!17316 rules!4386)))) (dynLambda!5322 order!7417 lambda!48936))))

(assert (=> d!339575 true))

(declare-fun lt!408334 () Bool)

(assert (=> d!339575 (= lt!408334 (forall!3155 (t!111972 lt!408313) lambda!48936))))

(declare-fun e!762793 () Bool)

(assert (=> d!339575 (= lt!408334 e!762793)))

(declare-fun res!536463 () Bool)

(assert (=> d!339575 (=> res!536463 e!762793)))

(assert (=> d!339575 (= res!536463 (not (is-Cons!11916 (t!111972 lt!408313))))))

(assert (=> d!339575 (not (isEmpty!7169 rules!4386))))

(assert (=> d!339575 (= (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 (t!111972 lt!408313)) lt!408334)))

(declare-fun b!1187122 () Bool)

(declare-fun e!762794 () Bool)

(assert (=> b!1187122 (= e!762793 e!762794)))

(declare-fun res!536464 () Bool)

(assert (=> b!1187122 (=> (not res!536464) (not e!762794))))

(assert (=> b!1187122 (= res!536464 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 (t!111972 lt!408313))))))

(declare-fun b!1187123 () Bool)

(assert (=> b!1187123 (= e!762794 (rulesProduceEachTokenIndividuallyList!645 thiss!27592 rules!4386 (t!111972 (t!111972 lt!408313))))))

(assert (= (and d!339575 (not res!536463)) b!1187122))

(assert (= (and b!1187122 res!536464) b!1187123))

(declare-fun m!1363005 () Bool)

(assert (=> d!339575 m!1363005))

(assert (=> d!339575 m!1362883))

(declare-fun m!1363007 () Bool)

(assert (=> b!1187122 m!1363007))

(declare-fun m!1363009 () Bool)

(assert (=> b!1187123 m!1363009))

(assert (=> b!1186959 d!339575))

(declare-fun d!339577 () Bool)

(assert (=> d!339577 (= (inv!15743 (tag!2346 (h!17316 rules!4386))) (= (mod (str.len (value!67451 (tag!2346 (h!17316 rules!4386)))) 2) 0))))

(assert (=> b!1186958 d!339577))

(declare-fun d!339579 () Bool)

(declare-fun res!536467 () Bool)

(declare-fun e!762800 () Bool)

(assert (=> d!339579 (=> (not res!536467) (not e!762800))))

(declare-fun semiInverseModEq!753 (Int Int) Bool)

(assert (=> d!339579 (= res!536467 (semiInverseModEq!753 (toChars!3060 (transformation!2084 (h!17316 rules!4386))) (toValue!3201 (transformation!2084 (h!17316 rules!4386)))))))

(assert (=> d!339579 (= (inv!15746 (transformation!2084 (h!17316 rules!4386))) e!762800)))

(declare-fun b!1187129 () Bool)

(declare-fun equivClasses!720 (Int Int) Bool)

(assert (=> b!1187129 (= e!762800 (equivClasses!720 (toChars!3060 (transformation!2084 (h!17316 rules!4386))) (toValue!3201 (transformation!2084 (h!17316 rules!4386)))))))

(assert (= (and d!339579 res!536467) b!1187129))

(declare-fun m!1363011 () Bool)

(assert (=> d!339579 m!1363011))

(declare-fun m!1363013 () Bool)

(assert (=> b!1187129 m!1363013))

(assert (=> b!1186958 d!339579))

(declare-fun d!339581 () Bool)

(declare-fun res!536473 () Bool)

(declare-fun e!762806 () Bool)

(assert (=> d!339581 (=> res!536473 e!762806)))

(assert (=> d!339581 (= res!536473 (or (not (is-Cons!11916 l!6534)) (not (is-Cons!11916 (t!111972 l!6534)))))))

(assert (=> d!339581 (= (tokensListTwoByTwoPredicateSeparableList!173 thiss!27592 l!6534 rules!4386) e!762806)))

(declare-fun b!1187134 () Bool)

(declare-fun e!762805 () Bool)

(assert (=> b!1187134 (= e!762806 e!762805)))

(declare-fun res!536472 () Bool)

(assert (=> b!1187134 (=> (not res!536472) (not e!762805))))

(declare-fun separableTokensPredicate!164 (LexerInterface!1779 Token!3830 Token!3830 List!11939) Bool)

(assert (=> b!1187134 (= res!536472 (separableTokensPredicate!164 thiss!27592 (h!17317 l!6534) (h!17317 (t!111972 l!6534)) rules!4386))))

(declare-fun lt!408354 () Unit!18282)

(declare-fun Unit!18287 () Unit!18282)

(assert (=> b!1187134 (= lt!408354 Unit!18287)))

(declare-fun size!9396 (BalanceConc!7824) Int)

(declare-fun charsOf!1102 (Token!3830) BalanceConc!7824)

(assert (=> b!1187134 (> (size!9396 (charsOf!1102 (h!17317 (t!111972 l!6534)))) 0)))

(declare-fun lt!408355 () Unit!18282)

(declare-fun Unit!18288 () Unit!18282)

(assert (=> b!1187134 (= lt!408355 Unit!18288)))

(assert (=> b!1187134 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 (t!111972 l!6534)))))

(declare-fun lt!408351 () Unit!18282)

(declare-fun Unit!18289 () Unit!18282)

(assert (=> b!1187134 (= lt!408351 Unit!18289)))

(assert (=> b!1187134 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 l!6534))))

(declare-fun lt!408350 () Unit!18282)

(declare-fun lt!408349 () Unit!18282)

(assert (=> b!1187134 (= lt!408350 lt!408349)))

(assert (=> b!1187134 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 (t!111972 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!323 (LexerInterface!1779 List!11939 List!11940 Token!3830) Unit!18282)

(assert (=> b!1187134 (= lt!408349 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!323 thiss!27592 rules!4386 l!6534 (h!17317 (t!111972 l!6534))))))

(declare-fun lt!408353 () Unit!18282)

(declare-fun lt!408352 () Unit!18282)

(assert (=> b!1187134 (= lt!408353 lt!408352)))

(assert (=> b!1187134 (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 l!6534))))

(assert (=> b!1187134 (= lt!408352 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!323 thiss!27592 rules!4386 l!6534 (h!17317 l!6534)))))

(declare-fun b!1187135 () Bool)

(assert (=> b!1187135 (= e!762805 (tokensListTwoByTwoPredicateSeparableList!173 thiss!27592 (Cons!11916 (h!17317 (t!111972 l!6534)) (t!111972 (t!111972 l!6534))) rules!4386))))

(assert (= (and d!339581 (not res!536473)) b!1187134))

(assert (= (and b!1187134 res!536472) b!1187135))

(declare-fun m!1363015 () Bool)

(assert (=> b!1187134 m!1363015))

(assert (=> b!1187134 m!1363015))

(declare-fun m!1363017 () Bool)

(assert (=> b!1187134 m!1363017))

(declare-fun m!1363019 () Bool)

(assert (=> b!1187134 m!1363019))

(declare-fun m!1363021 () Bool)

(assert (=> b!1187134 m!1363021))

(assert (=> b!1187134 m!1362965))

(declare-fun m!1363023 () Bool)

(assert (=> b!1187134 m!1363023))

(declare-fun m!1363025 () Bool)

(assert (=> b!1187134 m!1363025))

(declare-fun m!1363027 () Bool)

(assert (=> b!1187135 m!1363027))

(assert (=> b!1186953 d!339581))

(declare-fun b!1187150 () Bool)

(declare-fun res!536480 () Bool)

(declare-fun e!762818 () Bool)

(assert (=> b!1187150 (=> res!536480 e!762818)))

(assert (=> b!1187150 (= res!536480 (not (is-IntegerValue!6452 (value!67452 (h!17317 l!6534)))))))

(declare-fun e!762819 () Bool)

(assert (=> b!1187150 (= e!762819 e!762818)))

(declare-fun d!339583 () Bool)

(declare-fun c!197258 () Bool)

(assert (=> d!339583 (= c!197258 (is-IntegerValue!6450 (value!67452 (h!17317 l!6534))))))

(declare-fun e!762817 () Bool)

(assert (=> d!339583 (= (inv!21 (value!67452 (h!17317 l!6534))) e!762817)))

(declare-fun b!1187151 () Bool)

(declare-fun inv!17 (TokenValue!2150) Bool)

(assert (=> b!1187151 (= e!762819 (inv!17 (value!67452 (h!17317 l!6534))))))

(declare-fun b!1187152 () Bool)

(declare-fun inv!16 (TokenValue!2150) Bool)

(assert (=> b!1187152 (= e!762817 (inv!16 (value!67452 (h!17317 l!6534))))))

(declare-fun b!1187153 () Bool)

(declare-fun inv!15 (TokenValue!2150) Bool)

(assert (=> b!1187153 (= e!762818 (inv!15 (value!67452 (h!17317 l!6534))))))

(declare-fun b!1187154 () Bool)

(assert (=> b!1187154 (= e!762817 e!762819)))

(declare-fun c!197257 () Bool)

(assert (=> b!1187154 (= c!197257 (is-IntegerValue!6451 (value!67452 (h!17317 l!6534))))))

(assert (= (and d!339583 c!197258) b!1187152))

(assert (= (and d!339583 (not c!197258)) b!1187154))

(assert (= (and b!1187154 c!197257) b!1187151))

(assert (= (and b!1187154 (not c!197257)) b!1187150))

(assert (= (and b!1187150 (not res!536480)) b!1187153))

(declare-fun m!1363029 () Bool)

(assert (=> b!1187151 m!1363029))

(declare-fun m!1363031 () Bool)

(assert (=> b!1187152 m!1363031))

(declare-fun m!1363033 () Bool)

(assert (=> b!1187153 m!1363033))

(assert (=> b!1186960 d!339583))

(declare-fun d!339585 () Bool)

(assert (=> d!339585 (= (inv!15743 (tag!2346 (rule!3505 (h!17317 l!6534)))) (= (mod (str.len (value!67451 (tag!2346 (rule!3505 (h!17317 l!6534))))) 2) 0))))

(assert (=> b!1186955 d!339585))

(declare-fun d!339587 () Bool)

(declare-fun res!536481 () Bool)

(declare-fun e!762820 () Bool)

(assert (=> d!339587 (=> (not res!536481) (not e!762820))))

(assert (=> d!339587 (= res!536481 (semiInverseModEq!753 (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))) (toValue!3201 (transformation!2084 (rule!3505 (h!17317 l!6534))))))))

(assert (=> d!339587 (= (inv!15746 (transformation!2084 (rule!3505 (h!17317 l!6534)))) e!762820)))

(declare-fun b!1187155 () Bool)

(assert (=> b!1187155 (= e!762820 (equivClasses!720 (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))) (toValue!3201 (transformation!2084 (rule!3505 (h!17317 l!6534))))))))

(assert (= (and d!339587 res!536481) b!1187155))

(declare-fun m!1363035 () Bool)

(assert (=> d!339587 m!1363035))

(declare-fun m!1363037 () Bool)

(assert (=> b!1187155 m!1363037))

(assert (=> b!1186955 d!339587))

(declare-fun d!339589 () Bool)

(assert (=> d!339589 (= (isEmpty!7169 rules!4386) (is-Nil!11915 rules!4386))))

(assert (=> b!1186956 d!339589))

(declare-fun d!339591 () Bool)

(declare-fun res!536486 () Bool)

(declare-fun e!762828 () Bool)

(assert (=> d!339591 (=> (not res!536486) (not e!762828))))

(declare-fun rulesValid!741 (LexerInterface!1779 List!11939) Bool)

(assert (=> d!339591 (= res!536486 (rulesValid!741 thiss!27592 rules!4386))))

(assert (=> d!339591 (= (rulesInvariant!1653 thiss!27592 rules!4386) e!762828)))

(declare-fun b!1187165 () Bool)

(declare-datatypes ((List!11945 0))(
  ( (Nil!11921) (Cons!11921 (h!17322 String!14420) (t!111997 List!11945)) )
))
(declare-fun noDuplicateTag!741 (LexerInterface!1779 List!11939 List!11945) Bool)

(assert (=> b!1187165 (= e!762828 (noDuplicateTag!741 thiss!27592 rules!4386 Nil!11921))))

(assert (= (and d!339591 res!536486) b!1187165))

(declare-fun m!1363039 () Bool)

(assert (=> d!339591 m!1363039))

(declare-fun m!1363041 () Bool)

(assert (=> b!1187165 m!1363041))

(assert (=> b!1186951 d!339591))

(declare-fun d!339593 () Bool)

(declare-fun lt!408367 () Bool)

(declare-fun e!762849 () Bool)

(assert (=> d!339593 (= lt!408367 e!762849)))

(declare-fun res!536497 () Bool)

(assert (=> d!339593 (=> (not res!536497) (not e!762849))))

(declare-datatypes ((IArray!7811 0))(
  ( (IArray!7812 (innerList!3963 List!11940)) )
))
(declare-datatypes ((Conc!3903 0))(
  ( (Node!3903 (left!10375 Conc!3903) (right!10705 Conc!3903) (csize!8036 Int) (cheight!4114 Int)) (Leaf!5976 (xs!6608 IArray!7811) (csize!8037 Int)) (Empty!3903) )
))
(declare-datatypes ((BalanceConc!7828 0))(
  ( (BalanceConc!7829 (c!197277 Conc!3903)) )
))
(declare-fun list!4376 (BalanceConc!7828) List!11940)

(declare-datatypes ((tuple2!12116 0))(
  ( (tuple2!12117 (_1!6905 BalanceConc!7828) (_2!6905 BalanceConc!7824)) )
))
(declare-fun lex!740 (LexerInterface!1779 List!11939 BalanceConc!7824) tuple2!12116)

(declare-fun print!677 (LexerInterface!1779 BalanceConc!7828) BalanceConc!7824)

(declare-fun singletonSeq!725 (Token!3830) BalanceConc!7828)

(assert (=> d!339593 (= res!536497 (= (list!4376 (_1!6905 (lex!740 thiss!27592 rules!4386 (print!677 thiss!27592 (singletonSeq!725 (h!17317 lt!408313)))))) (list!4376 (singletonSeq!725 (h!17317 lt!408313)))))))

(declare-fun e!762848 () Bool)

(assert (=> d!339593 (= lt!408367 e!762848)))

(declare-fun res!536498 () Bool)

(assert (=> d!339593 (=> (not res!536498) (not e!762848))))

(declare-fun lt!408366 () tuple2!12116)

(declare-fun size!9397 (BalanceConc!7828) Int)

(assert (=> d!339593 (= res!536498 (= (size!9397 (_1!6905 lt!408366)) 1))))

(assert (=> d!339593 (= lt!408366 (lex!740 thiss!27592 rules!4386 (print!677 thiss!27592 (singletonSeq!725 (h!17317 lt!408313)))))))

(assert (=> d!339593 (not (isEmpty!7169 rules!4386))))

(assert (=> d!339593 (= (rulesProduceIndividualToken!806 thiss!27592 rules!4386 (h!17317 lt!408313)) lt!408367)))

(declare-fun b!1187199 () Bool)

(declare-fun res!536496 () Bool)

(assert (=> b!1187199 (=> (not res!536496) (not e!762848))))

(declare-fun apply!2596 (BalanceConc!7828 Int) Token!3830)

(assert (=> b!1187199 (= res!536496 (= (apply!2596 (_1!6905 lt!408366) 0) (h!17317 lt!408313)))))

(declare-fun b!1187200 () Bool)

(declare-fun isEmpty!7172 (BalanceConc!7824) Bool)

(assert (=> b!1187200 (= e!762848 (isEmpty!7172 (_2!6905 lt!408366)))))

(declare-fun b!1187201 () Bool)

(assert (=> b!1187201 (= e!762849 (isEmpty!7172 (_2!6905 (lex!740 thiss!27592 rules!4386 (print!677 thiss!27592 (singletonSeq!725 (h!17317 lt!408313)))))))))

(assert (= (and d!339593 res!536498) b!1187199))

(assert (= (and b!1187199 res!536496) b!1187200))

(assert (= (and d!339593 res!536497) b!1187201))

(declare-fun m!1363055 () Bool)

(assert (=> d!339593 m!1363055))

(declare-fun m!1363057 () Bool)

(assert (=> d!339593 m!1363057))

(declare-fun m!1363059 () Bool)

(assert (=> d!339593 m!1363059))

(assert (=> d!339593 m!1363059))

(declare-fun m!1363061 () Bool)

(assert (=> d!339593 m!1363061))

(assert (=> d!339593 m!1362883))

(assert (=> d!339593 m!1363057))

(declare-fun m!1363063 () Bool)

(assert (=> d!339593 m!1363063))

(declare-fun m!1363065 () Bool)

(assert (=> d!339593 m!1363065))

(assert (=> d!339593 m!1363057))

(declare-fun m!1363067 () Bool)

(assert (=> b!1187199 m!1363067))

(declare-fun m!1363069 () Bool)

(assert (=> b!1187200 m!1363069))

(assert (=> b!1187201 m!1363057))

(assert (=> b!1187201 m!1363057))

(assert (=> b!1187201 m!1363059))

(assert (=> b!1187201 m!1363059))

(assert (=> b!1187201 m!1363061))

(declare-fun m!1363071 () Bool)

(assert (=> b!1187201 m!1363071))

(assert (=> b!1186961 d!339593))

(declare-fun b!1187204 () Bool)

(declare-fun e!762852 () Bool)

(assert (=> b!1187204 (= e!762852 true)))

(declare-fun b!1187203 () Bool)

(declare-fun e!762851 () Bool)

(assert (=> b!1187203 (= e!762851 e!762852)))

(declare-fun b!1187202 () Bool)

(declare-fun e!762850 () Bool)

(assert (=> b!1187202 (= e!762850 e!762851)))

(assert (=> b!1186973 e!762850))

(assert (= b!1187203 b!1187204))

(assert (= b!1187202 b!1187203))

(assert (= (and b!1186973 (is-Cons!11915 (t!111971 rules!4386))) b!1187202))

(assert (=> b!1187204 (< (dynLambda!5321 order!7415 (toValue!3201 (transformation!2084 (h!17316 (t!111971 rules!4386))))) (dynLambda!5322 order!7417 lambda!48928))))

(assert (=> b!1187204 (< (dynLambda!5323 order!7419 (toChars!3060 (transformation!2084 (h!17316 (t!111971 rules!4386))))) (dynLambda!5322 order!7417 lambda!48928))))

(declare-fun b!1187218 () Bool)

(declare-fun b_free!28581 () Bool)

(declare-fun b_next!29285 () Bool)

(assert (=> b!1187218 (= b_free!28581 (not b_next!29285))))

(declare-fun tp!338577 () Bool)

(declare-fun b_and!81729 () Bool)

(assert (=> b!1187218 (= tp!338577 b_and!81729)))

(declare-fun b_free!28583 () Bool)

(declare-fun b_next!29287 () Bool)

(assert (=> b!1187218 (= b_free!28583 (not b_next!29287))))

(declare-fun t!111989 () Bool)

(declare-fun tb!66369 () Bool)

(assert (=> (and b!1187218 (= (toChars!3060 (transformation!2084 (rule!3505 (h!17317 (t!111972 l!6534))))) (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534))))) t!111989) tb!66369))

(declare-fun result!79738 () Bool)

(assert (= result!79738 result!79730))

(assert (=> b!1187115 t!111989))

(declare-fun tp!338578 () Bool)

(declare-fun b_and!81731 () Bool)

(assert (=> b!1187218 (= tp!338578 (and (=> t!111989 result!79738) b_and!81731))))

(declare-fun e!762870 () Bool)

(assert (=> b!1186962 (= tp!338528 e!762870)))

(declare-fun e!762865 () Bool)

(assert (=> b!1187218 (= e!762865 (and tp!338577 tp!338578))))

(declare-fun e!762867 () Bool)

(declare-fun tp!338576 () Bool)

(declare-fun b!1187215 () Bool)

(assert (=> b!1187215 (= e!762870 (and (inv!15747 (h!17317 (t!111972 l!6534))) e!762867 tp!338576))))

(declare-fun e!762868 () Bool)

(declare-fun b!1187216 () Bool)

(declare-fun tp!338580 () Bool)

(assert (=> b!1187216 (= e!762867 (and (inv!21 (value!67452 (h!17317 (t!111972 l!6534)))) e!762868 tp!338580))))

(declare-fun tp!338579 () Bool)

(declare-fun b!1187217 () Bool)

(assert (=> b!1187217 (= e!762868 (and tp!338579 (inv!15743 (tag!2346 (rule!3505 (h!17317 (t!111972 l!6534))))) (inv!15746 (transformation!2084 (rule!3505 (h!17317 (t!111972 l!6534))))) e!762865))))

(assert (= b!1187217 b!1187218))

(assert (= b!1187216 b!1187217))

(assert (= b!1187215 b!1187216))

(assert (= (and b!1186962 (is-Cons!11916 (t!111972 l!6534))) b!1187215))

(declare-fun m!1363073 () Bool)

(assert (=> b!1187215 m!1363073))

(declare-fun m!1363075 () Bool)

(assert (=> b!1187216 m!1363075))

(declare-fun m!1363077 () Bool)

(assert (=> b!1187217 m!1363077))

(declare-fun m!1363079 () Bool)

(assert (=> b!1187217 m!1363079))

(declare-fun b!1187229 () Bool)

(declare-fun b_free!28585 () Bool)

(declare-fun b_next!29289 () Bool)

(assert (=> b!1187229 (= b_free!28585 (not b_next!29289))))

(declare-fun tp!338591 () Bool)

(declare-fun b_and!81733 () Bool)

(assert (=> b!1187229 (= tp!338591 b_and!81733)))

(declare-fun b_free!28587 () Bool)

(declare-fun b_next!29291 () Bool)

(assert (=> b!1187229 (= b_free!28587 (not b_next!29291))))

(declare-fun t!111991 () Bool)

(declare-fun tb!66371 () Bool)

(assert (=> (and b!1187229 (= (toChars!3060 (transformation!2084 (h!17316 (t!111971 rules!4386)))) (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534))))) t!111991) tb!66371))

(declare-fun result!79742 () Bool)

(assert (= result!79742 result!79730))

(assert (=> b!1187115 t!111991))

(declare-fun tp!338589 () Bool)

(declare-fun b_and!81735 () Bool)

(assert (=> b!1187229 (= tp!338589 (and (=> t!111991 result!79742) b_and!81735))))

(declare-fun e!762879 () Bool)

(assert (=> b!1187229 (= e!762879 (and tp!338591 tp!338589))))

(declare-fun e!762880 () Bool)

(declare-fun tp!338590 () Bool)

(declare-fun b!1187228 () Bool)

(assert (=> b!1187228 (= e!762880 (and tp!338590 (inv!15743 (tag!2346 (h!17316 (t!111971 rules!4386)))) (inv!15746 (transformation!2084 (h!17316 (t!111971 rules!4386)))) e!762879))))

(declare-fun b!1187227 () Bool)

(declare-fun e!762882 () Bool)

(declare-fun tp!338592 () Bool)

(assert (=> b!1187227 (= e!762882 (and e!762880 tp!338592))))

(assert (=> b!1186957 (= tp!338535 e!762882)))

(assert (= b!1187228 b!1187229))

(assert (= b!1187227 b!1187228))

(assert (= (and b!1186957 (is-Cons!11915 (t!111971 rules!4386))) b!1187227))

(declare-fun m!1363081 () Bool)

(assert (=> b!1187228 m!1363081))

(declare-fun m!1363083 () Bool)

(assert (=> b!1187228 m!1363083))

(declare-fun b!1187247 () Bool)

(declare-fun e!762889 () Bool)

(declare-fun tp!338607 () Bool)

(declare-fun tp!338604 () Bool)

(assert (=> b!1187247 (= e!762889 (and tp!338607 tp!338604))))

(declare-fun b!1187248 () Bool)

(declare-fun tp!338603 () Bool)

(assert (=> b!1187248 (= e!762889 tp!338603)))

(declare-fun b!1187249 () Bool)

(declare-fun tp!338606 () Bool)

(declare-fun tp!338605 () Bool)

(assert (=> b!1187249 (= e!762889 (and tp!338606 tp!338605))))

(assert (=> b!1186958 (= tp!338532 e!762889)))

(declare-fun b!1187246 () Bool)

(declare-fun tp_is_empty!5837 () Bool)

(assert (=> b!1187246 (= e!762889 tp_is_empty!5837)))

(assert (= (and b!1186958 (is-ElementMatch!3354 (regex!2084 (h!17316 rules!4386)))) b!1187246))

(assert (= (and b!1186958 (is-Concat!5505 (regex!2084 (h!17316 rules!4386)))) b!1187247))

(assert (= (and b!1186958 (is-Star!3354 (regex!2084 (h!17316 rules!4386)))) b!1187248))

(assert (= (and b!1186958 (is-Union!3354 (regex!2084 (h!17316 rules!4386)))) b!1187249))

(declare-fun b!1187254 () Bool)

(declare-fun e!762892 () Bool)

(declare-fun tp!338610 () Bool)

(assert (=> b!1187254 (= e!762892 (and tp_is_empty!5837 tp!338610))))

(assert (=> b!1186960 (= tp!338527 e!762892)))

(assert (= (and b!1186960 (is-Cons!11913 (originalCharacters!2638 (h!17317 l!6534)))) b!1187254))

(declare-fun b!1187256 () Bool)

(declare-fun e!762893 () Bool)

(declare-fun tp!338615 () Bool)

(declare-fun tp!338612 () Bool)

(assert (=> b!1187256 (= e!762893 (and tp!338615 tp!338612))))

(declare-fun b!1187257 () Bool)

(declare-fun tp!338611 () Bool)

(assert (=> b!1187257 (= e!762893 tp!338611)))

(declare-fun b!1187258 () Bool)

(declare-fun tp!338614 () Bool)

(declare-fun tp!338613 () Bool)

(assert (=> b!1187258 (= e!762893 (and tp!338614 tp!338613))))

(assert (=> b!1186955 (= tp!338529 e!762893)))

(declare-fun b!1187255 () Bool)

(assert (=> b!1187255 (= e!762893 tp_is_empty!5837)))

(assert (= (and b!1186955 (is-ElementMatch!3354 (regex!2084 (rule!3505 (h!17317 l!6534))))) b!1187255))

(assert (= (and b!1186955 (is-Concat!5505 (regex!2084 (rule!3505 (h!17317 l!6534))))) b!1187256))

(assert (= (and b!1186955 (is-Star!3354 (regex!2084 (rule!3505 (h!17317 l!6534))))) b!1187257))

(assert (= (and b!1186955 (is-Union!3354 (regex!2084 (rule!3505 (h!17317 l!6534))))) b!1187258))

(declare-fun b_lambda!35645 () Bool)

(assert (= b_lambda!35641 (or b!1186963 b_lambda!35645)))

(declare-fun bs!287658 () Bool)

(declare-fun d!339599 () Bool)

(assert (= bs!287658 (and d!339599 b!1186963)))

(assert (=> bs!287658 (= (dynLambda!5327 lambda!48928 (h!17317 l!6534)) (rulesProduceIndividualToken!806 Lexer!1777 rules!4386 (h!17317 l!6534)))))

(declare-fun m!1363085 () Bool)

(assert (=> bs!287658 m!1363085))

(assert (=> b!1187109 d!339599))

(declare-fun b_lambda!35647 () Bool)

(assert (= b_lambda!35643 (or (and b!1186954 b_free!28567 (= (toChars!3060 (transformation!2084 (h!17316 rules!4386))) (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))))) (and b!1186964 b_free!28571) (and b!1187218 b_free!28583 (= (toChars!3060 (transformation!2084 (rule!3505 (h!17317 (t!111972 l!6534))))) (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))))) (and b!1187229 b_free!28587 (= (toChars!3060 (transformation!2084 (h!17316 (t!111971 rules!4386)))) (toChars!3060 (transformation!2084 (rule!3505 (h!17317 l!6534)))))) b_lambda!35647)))

(push 1)

(assert (not d!339587))

(assert (not b!1187202))

(assert (not b_next!29269))

(assert b_and!81731)

(assert (not d!339593))

(assert (not b!1187217))

(assert (not tb!66365))

(assert (not b!1187256))

(assert (not b!1187201))

(assert (not b!1187124))

(assert b_and!81725)

(assert (not b!1187249))

(assert (not d!339553))

(assert (not b!1187134))

(assert (not b!1187227))

(assert (not d!339591))

(assert (not b_next!29287))

(assert (not b!1187055))

(assert (not d!339575))

(assert (not b!1187153))

(assert (not b!1187115))

(assert (not b!1187062))

(assert (not b!1187056))

(assert (not b_next!29289))

(assert (not d!339569))

(assert (not b!1187116))

(assert (not b_next!29275))

(assert (not bm!82632))

(assert (not b!1187099))

(assert (not b!1187122))

(assert (not b!1187254))

(assert (not b!1187258))

(assert (not b!1187155))

(assert (not b_next!29291))

(assert (not b!1187121))

(assert (not b!1187152))

(assert tp_is_empty!5837)

(assert b_and!81727)

(assert (not b!1187110))

(assert (not d!339565))

(assert b_and!81709)

(assert (not b!1187063))

(assert (not b!1187199))

(assert b_and!81735)

(assert (not b!1187129))

(assert (not d!339579))

(assert (not b!1187123))

(assert (not b!1187247))

(assert (not b!1187076))

(assert (not d!339563))

(assert (not b!1187151))

(assert (not b!1187257))

(assert (not b!1187248))

(assert b_and!81713)

(assert (not b_lambda!35647))

(assert (not b!1187061))

(assert (not b!1187135))

(assert (not b!1187077))

(assert (not b_next!29285))

(assert (not b_lambda!35645))

(assert (not b!1187100))

(assert (not bs!287658))

(assert (not b!1187200))

(assert b_and!81729)

(assert (not b!1187216))

(assert (not b!1187054))

(assert (not b!1187165))

(assert (not b_next!29273))

(assert (not b!1187215))

(assert (not b!1187228))

(assert (not d!339573))

(assert b_and!81733)

(assert (not b_next!29271))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81725)

(assert (not b_next!29287))

(assert (not b_next!29289))

(assert (not b_next!29275))

(assert (not b_next!29291))

(assert b_and!81727)

(assert b_and!81709)

(assert b_and!81735)

(assert (not b_next!29269))

(assert b_and!81713)

(assert b_and!81731)

(assert (not b_next!29285))

(assert b_and!81729)

(assert (not b_next!29273))

(assert b_and!81733)

(assert (not b_next!29271))

(check-sat)

(pop 1)


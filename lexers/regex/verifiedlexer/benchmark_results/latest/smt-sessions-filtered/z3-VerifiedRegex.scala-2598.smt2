; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139046 () Bool)

(assert start!139046)

(declare-fun b!1480939 () Bool)

(declare-fun b_free!38223 () Bool)

(declare-fun b_next!38927 () Bool)

(assert (=> b!1480939 (= b_free!38223 (not b_next!38927))))

(declare-fun tp!419950 () Bool)

(declare-fun b_and!102701 () Bool)

(assert (=> b!1480939 (= tp!419950 b_and!102701)))

(declare-fun b_free!38225 () Bool)

(declare-fun b_next!38929 () Bool)

(assert (=> b!1480939 (= b_free!38225 (not b_next!38929))))

(declare-fun tp!419945 () Bool)

(declare-fun b_and!102703 () Bool)

(assert (=> b!1480939 (= tp!419945 b_and!102703)))

(declare-fun b!1480955 () Bool)

(declare-fun b_free!38227 () Bool)

(declare-fun b_next!38931 () Bool)

(assert (=> b!1480955 (= b_free!38227 (not b_next!38931))))

(declare-fun tp!419957 () Bool)

(declare-fun b_and!102705 () Bool)

(assert (=> b!1480955 (= tp!419957 b_and!102705)))

(declare-fun b_free!38229 () Bool)

(declare-fun b_next!38933 () Bool)

(assert (=> b!1480955 (= b_free!38229 (not b_next!38933))))

(declare-fun tp!419954 () Bool)

(declare-fun b_and!102707 () Bool)

(assert (=> b!1480955 (= tp!419954 b_and!102707)))

(declare-fun b!1480954 () Bool)

(declare-fun b_free!38231 () Bool)

(declare-fun b_next!38935 () Bool)

(assert (=> b!1480954 (= b_free!38231 (not b_next!38935))))

(declare-fun tp!419958 () Bool)

(declare-fun b_and!102709 () Bool)

(assert (=> b!1480954 (= tp!419958 b_and!102709)))

(declare-fun b_free!38233 () Bool)

(declare-fun b_next!38937 () Bool)

(assert (=> b!1480954 (= b_free!38233 (not b_next!38937))))

(declare-fun tp!419948 () Bool)

(declare-fun b_and!102711 () Bool)

(assert (=> b!1480954 (= tp!419948 b_and!102711)))

(declare-fun e!946791 () Bool)

(declare-fun b!1480935 () Bool)

(declare-datatypes ((List!15736 0))(
  ( (Nil!15670) (Cons!15670 (h!21071 (_ BitVec 16)) (t!137273 List!15736)) )
))
(declare-datatypes ((TokenValue!2885 0))(
  ( (FloatLiteralValue!5770 (text!20640 List!15736)) (TokenValueExt!2884 (__x!9560 Int)) (Broken!14425 (value!89279 List!15736)) (Object!2950) (End!2885) (Def!2885) (Underscore!2885) (Match!2885) (Else!2885) (Error!2885) (Case!2885) (If!2885) (Extends!2885) (Abstract!2885) (Class!2885) (Val!2885) (DelimiterValue!5770 (del!2945 List!15736)) (KeywordValue!2891 (value!89280 List!15736)) (CommentValue!5770 (value!89281 List!15736)) (WhitespaceValue!5770 (value!89282 List!15736)) (IndentationValue!2885 (value!89283 List!15736)) (String!18680) (Int32!2885) (Broken!14426 (value!89284 List!15736)) (Boolean!2886) (Unit!25519) (OperatorValue!2888 (op!2945 List!15736)) (IdentifierValue!5770 (value!89285 List!15736)) (IdentifierValue!5771 (value!89286 List!15736)) (WhitespaceValue!5771 (value!89287 List!15736)) (True!5770) (False!5770) (Broken!14427 (value!89288 List!15736)) (Broken!14428 (value!89289 List!15736)) (True!5771) (RightBrace!2885) (RightBracket!2885) (Colon!2885) (Null!2885) (Comma!2885) (LeftBracket!2885) (False!5771) (LeftBrace!2885) (ImaginaryLiteralValue!2885 (text!20641 List!15736)) (StringLiteralValue!8655 (value!89290 List!15736)) (EOFValue!2885 (value!89291 List!15736)) (IdentValue!2885 (value!89292 List!15736)) (DelimiterValue!5771 (value!89293 List!15736)) (DedentValue!2885 (value!89294 List!15736)) (NewLineValue!2885 (value!89295 List!15736)) (IntegerValue!8655 (value!89296 (_ BitVec 32)) (text!20642 List!15736)) (IntegerValue!8656 (value!89297 Int) (text!20643 List!15736)) (Times!2885) (Or!2885) (Equal!2885) (Minus!2885) (Broken!14429 (value!89298 List!15736)) (And!2885) (Div!2885) (LessEqual!2885) (Mod!2885) (Concat!6994) (Not!2885) (Plus!2885) (SpaceValue!2885 (value!89299 List!15736)) (IntegerValue!8657 (value!89300 Int) (text!20644 List!15736)) (StringLiteralValue!8656 (text!20645 List!15736)) (FloatLiteralValue!5771 (text!20646 List!15736)) (BytesLiteralValue!2885 (value!89301 List!15736)) (CommentValue!5771 (value!89302 List!15736)) (StringLiteralValue!8657 (value!89303 List!15736)) (ErrorTokenValue!2885 (msg!2946 List!15736)) )
))
(declare-datatypes ((C!8396 0))(
  ( (C!8397 (val!4768 Int)) )
))
(declare-datatypes ((Regex!4109 0))(
  ( (ElementMatch!4109 (c!242914 C!8396)) (Concat!6995 (regOne!8730 Regex!4109) (regTwo!8730 Regex!4109)) (EmptyExpr!4109) (Star!4109 (reg!4438 Regex!4109)) (EmptyLang!4109) (Union!4109 (regOne!8731 Regex!4109) (regTwo!8731 Regex!4109)) )
))
(declare-datatypes ((String!18681 0))(
  ( (String!18682 (value!89304 String)) )
))
(declare-datatypes ((List!15737 0))(
  ( (Nil!15671) (Cons!15671 (h!21072 C!8396) (t!137274 List!15737)) )
))
(declare-datatypes ((IArray!10683 0))(
  ( (IArray!10684 (innerList!5399 List!15737)) )
))
(declare-datatypes ((Conc!5339 0))(
  ( (Node!5339 (left!13215 Conc!5339) (right!13545 Conc!5339) (csize!10908 Int) (cheight!5550 Int)) (Leaf!7938 (xs!8094 IArray!10683) (csize!10909 Int)) (Empty!5339) )
))
(declare-datatypes ((BalanceConc!10618 0))(
  ( (BalanceConc!10619 (c!242915 Conc!5339)) )
))
(declare-datatypes ((TokenValueInjection!5430 0))(
  ( (TokenValueInjection!5431 (toValue!4130 Int) (toChars!3989 Int)) )
))
(declare-datatypes ((Rule!5390 0))(
  ( (Rule!5391 (regex!2795 Regex!4109) (tag!3059 String!18681) (isSeparator!2795 Bool) (transformation!2795 TokenValueInjection!5430)) )
))
(declare-datatypes ((Token!5252 0))(
  ( (Token!5253 (value!89305 TokenValue!2885) (rule!4572 Rule!5390) (size!12689 Int) (originalCharacters!3657 List!15737)) )
))
(declare-datatypes ((List!15738 0))(
  ( (Nil!15672) (Cons!15672 (h!21073 Token!5252) (t!137275 List!15738)) )
))
(declare-fun l1!3136 () List!15738)

(declare-fun e!946782 () Bool)

(declare-fun tp!419956 () Bool)

(declare-fun inv!20886 (String!18681) Bool)

(declare-fun inv!20889 (TokenValueInjection!5430) Bool)

(assert (=> b!1480935 (= e!946791 (and tp!419956 (inv!20886 (tag!3059 (rule!4572 (h!21073 l1!3136)))) (inv!20889 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) e!946782))))

(declare-fun b!1480937 () Bool)

(declare-fun e!946787 () Bool)

(declare-fun e!946785 () Bool)

(declare-fun tp!419947 () Bool)

(assert (=> b!1480937 (= e!946787 (and e!946785 tp!419947))))

(declare-fun e!946780 () Bool)

(declare-fun e!946790 () Bool)

(declare-fun tp!419952 () Bool)

(declare-fun b!1480938 () Bool)

(declare-fun l2!3105 () List!15738)

(declare-fun inv!20890 (Token!5252) Bool)

(assert (=> b!1480938 (= e!946780 (and (inv!20890 (h!21073 l2!3105)) e!946790 tp!419952))))

(assert (=> b!1480939 (= e!946782 (and tp!419950 tp!419945))))

(declare-fun b!1480940 () Bool)

(declare-fun res!669180 () Bool)

(declare-fun e!946788 () Bool)

(assert (=> b!1480940 (=> (not res!669180) (not e!946788))))

(declare-datatypes ((List!15739 0))(
  ( (Nil!15673) (Cons!15673 (h!21074 Rule!5390) (t!137276 List!15739)) )
))
(declare-fun rules!4290 () List!15739)

(declare-datatypes ((LexerInterface!2451 0))(
  ( (LexerInterfaceExt!2448 (__x!9561 Int)) (Lexer!2449) )
))
(declare-fun thiss!27374 () LexerInterface!2451)

(declare-fun rulesProduceEachTokenIndividuallyList!818 (LexerInterface!2451 List!15739 List!15738) Bool)

(assert (=> b!1480940 (= res!669180 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1480941 () Bool)

(declare-fun res!669171 () Bool)

(assert (=> b!1480941 (=> (not res!669171) (not e!946788))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!311 (LexerInterface!2451 List!15738 List!15739) Bool)

(assert (=> b!1480941 (= res!669171 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1480942 () Bool)

(declare-fun res!669172 () Bool)

(assert (=> b!1480942 (=> (not res!669172) (not e!946788))))

(declare-fun isEmpty!9802 (List!15738) Bool)

(assert (=> b!1480942 (= res!669172 (not (isEmpty!9802 l2!3105)))))

(declare-fun b!1480943 () Bool)

(declare-fun tp!419951 () Bool)

(declare-fun e!946776 () Bool)

(declare-fun inv!21 (TokenValue!2885) Bool)

(assert (=> b!1480943 (= e!946776 (and (inv!21 (value!89305 (h!21073 l1!3136))) e!946791 tp!419951))))

(declare-fun tp!419949 () Bool)

(declare-fun b!1480944 () Bool)

(declare-fun e!946793 () Bool)

(assert (=> b!1480944 (= e!946793 (and (inv!20890 (h!21073 l1!3136)) e!946776 tp!419949))))

(declare-fun b!1480945 () Bool)

(declare-fun res!669168 () Bool)

(assert (=> b!1480945 (=> (not res!669168) (not e!946788))))

(assert (=> b!1480945 (= res!669168 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1480946 () Bool)

(declare-fun res!669179 () Bool)

(assert (=> b!1480946 (=> (not res!669179) (not e!946788))))

(declare-fun isEmpty!9803 (List!15739) Bool)

(assert (=> b!1480946 (= res!669179 (not (isEmpty!9803 rules!4290)))))

(declare-fun b!1480947 () Bool)

(declare-fun e!946778 () Bool)

(assert (=> b!1480947 (= e!946778 (not (isEmpty!9802 (t!137275 l1!3136))))))

(declare-fun e!946789 () Bool)

(declare-fun tp!419955 () Bool)

(declare-fun b!1480948 () Bool)

(declare-fun e!946779 () Bool)

(assert (=> b!1480948 (= e!946779 (and tp!419955 (inv!20886 (tag!3059 (rule!4572 (h!21073 l2!3105)))) (inv!20889 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) e!946789))))

(declare-fun e!946777 () Bool)

(declare-fun b!1480949 () Bool)

(declare-fun lt!514518 () List!15738)

(assert (=> b!1480949 (= e!946777 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 lt!514518 rules!4290))))

(assert (=> b!1480949 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 lt!514518)))

(declare-fun ++!4224 (List!15738 List!15738) List!15738)

(assert (=> b!1480949 (= lt!514518 (++!4224 l1!3136 l2!3105))))

(declare-datatypes ((Unit!25520 0))(
  ( (Unit!25521) )
))
(declare-fun lt!514519 () Unit!25520)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!76 (LexerInterface!2451 List!15739 List!15738 List!15738) Unit!25520)

(assert (=> b!1480949 (= lt!514519 (lemmaRulesProduceEachTokenIndividuallyConcat!76 thiss!27374 rules!4290 l1!3136 l2!3105))))

(declare-fun b!1480950 () Bool)

(declare-fun res!669176 () Bool)

(assert (=> b!1480950 (=> (not res!669176) (not e!946788))))

(assert (=> b!1480950 (= res!669176 (not (isEmpty!9802 l1!3136)))))

(declare-fun tp!419946 () Bool)

(declare-fun b!1480936 () Bool)

(assert (=> b!1480936 (= e!946790 (and (inv!21 (value!89305 (h!21073 l2!3105))) e!946779 tp!419946))))

(declare-fun res!669177 () Bool)

(assert (=> start!139046 (=> (not res!669177) (not e!946788))))

(get-info :version)

(assert (=> start!139046 (= res!669177 ((_ is Lexer!2449) thiss!27374))))

(assert (=> start!139046 e!946788))

(assert (=> start!139046 true))

(assert (=> start!139046 e!946787))

(assert (=> start!139046 e!946793))

(assert (=> start!139046 e!946780))

(declare-fun b!1480951 () Bool)

(declare-fun res!669174 () Bool)

(assert (=> b!1480951 (=> res!669174 e!946777)))

(assert (=> b!1480951 (= res!669174 (not ((_ is Cons!15672) l1!3136)))))

(declare-fun b!1480952 () Bool)

(declare-fun res!669178 () Bool)

(assert (=> b!1480952 (=> (not res!669178) (not e!946788))))

(assert (=> b!1480952 (= res!669178 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1480953 () Bool)

(assert (=> b!1480953 (= e!946788 (not e!946777))))

(declare-fun res!669181 () Bool)

(assert (=> b!1480953 (=> res!669181 e!946777)))

(declare-fun lt!514521 () Token!5252)

(declare-fun lt!514520 () Token!5252)

(declare-fun separableTokensPredicate!590 (LexerInterface!2451 Token!5252 Token!5252 List!15739) Bool)

(assert (=> b!1480953 (= res!669181 (not (separableTokensPredicate!590 thiss!27374 lt!514520 lt!514521 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1308 (LexerInterface!2451 List!15739 Token!5252) Bool)

(assert (=> b!1480953 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514521)))

(declare-fun lt!514516 () Unit!25520)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 (LexerInterface!2451 List!15739 List!15738 Token!5252) Unit!25520)

(assert (=> b!1480953 (= lt!514516 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l2!3105 lt!514521))))

(declare-fun head!3083 (List!15738) Token!5252)

(assert (=> b!1480953 (= lt!514521 (head!3083 l2!3105))))

(assert (=> b!1480953 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514520)))

(declare-fun lt!514517 () Unit!25520)

(assert (=> b!1480953 (= lt!514517 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l1!3136 lt!514520))))

(declare-fun last!353 (List!15738) Token!5252)

(assert (=> b!1480953 (= lt!514520 (last!353 l1!3136))))

(declare-fun e!946784 () Bool)

(assert (=> b!1480954 (= e!946784 (and tp!419958 tp!419948))))

(assert (=> b!1480955 (= e!946789 (and tp!419957 tp!419954))))

(declare-fun b!1480956 () Bool)

(declare-fun tp!419953 () Bool)

(assert (=> b!1480956 (= e!946785 (and tp!419953 (inv!20886 (tag!3059 (h!21074 rules!4290))) (inv!20889 (transformation!2795 (h!21074 rules!4290))) e!946784))))

(declare-fun b!1480957 () Bool)

(declare-fun res!669173 () Bool)

(assert (=> b!1480957 (=> res!669173 e!946777)))

(assert (=> b!1480957 (= res!669173 (not (isEmpty!9802 (t!137275 l1!3136))))))

(declare-fun b!1480958 () Bool)

(declare-fun res!669170 () Bool)

(assert (=> b!1480958 (=> res!669170 e!946777)))

(assert (=> b!1480958 (= res!669170 e!946778)))

(declare-fun res!669169 () Bool)

(assert (=> b!1480958 (=> (not res!669169) (not e!946778))))

(assert (=> b!1480958 (= res!669169 ((_ is Cons!15672) l1!3136))))

(declare-fun b!1480959 () Bool)

(declare-fun res!669175 () Bool)

(assert (=> b!1480959 (=> (not res!669175) (not e!946788))))

(declare-fun rulesInvariant!2240 (LexerInterface!2451 List!15739) Bool)

(assert (=> b!1480959 (= res!669175 (rulesInvariant!2240 thiss!27374 rules!4290))))

(assert (= (and start!139046 res!669177) b!1480946))

(assert (= (and b!1480946 res!669179) b!1480959))

(assert (= (and b!1480959 res!669175) b!1480952))

(assert (= (and b!1480952 res!669178) b!1480940))

(assert (= (and b!1480940 res!669180) b!1480945))

(assert (= (and b!1480945 res!669168) b!1480941))

(assert (= (and b!1480941 res!669171) b!1480950))

(assert (= (and b!1480950 res!669176) b!1480942))

(assert (= (and b!1480942 res!669172) b!1480953))

(assert (= (and b!1480953 (not res!669181)) b!1480958))

(assert (= (and b!1480958 res!669169) b!1480947))

(assert (= (and b!1480958 (not res!669170)) b!1480951))

(assert (= (and b!1480951 (not res!669174)) b!1480957))

(assert (= (and b!1480957 (not res!669173)) b!1480949))

(assert (= b!1480956 b!1480954))

(assert (= b!1480937 b!1480956))

(assert (= (and start!139046 ((_ is Cons!15673) rules!4290)) b!1480937))

(assert (= b!1480935 b!1480939))

(assert (= b!1480943 b!1480935))

(assert (= b!1480944 b!1480943))

(assert (= (and start!139046 ((_ is Cons!15672) l1!3136)) b!1480944))

(assert (= b!1480948 b!1480955))

(assert (= b!1480936 b!1480948))

(assert (= b!1480938 b!1480936))

(assert (= (and start!139046 ((_ is Cons!15672) l2!3105)) b!1480938))

(declare-fun m!1726733 () Bool)

(assert (=> b!1480947 m!1726733))

(declare-fun m!1726735 () Bool)

(assert (=> b!1480956 m!1726735))

(declare-fun m!1726737 () Bool)

(assert (=> b!1480956 m!1726737))

(declare-fun m!1726739 () Bool)

(assert (=> b!1480944 m!1726739))

(declare-fun m!1726741 () Bool)

(assert (=> b!1480949 m!1726741))

(declare-fun m!1726743 () Bool)

(assert (=> b!1480949 m!1726743))

(declare-fun m!1726745 () Bool)

(assert (=> b!1480949 m!1726745))

(declare-fun m!1726747 () Bool)

(assert (=> b!1480949 m!1726747))

(declare-fun m!1726749 () Bool)

(assert (=> b!1480938 m!1726749))

(declare-fun m!1726751 () Bool)

(assert (=> b!1480943 m!1726751))

(declare-fun m!1726753 () Bool)

(assert (=> b!1480940 m!1726753))

(declare-fun m!1726755 () Bool)

(assert (=> b!1480941 m!1726755))

(declare-fun m!1726757 () Bool)

(assert (=> b!1480950 m!1726757))

(declare-fun m!1726759 () Bool)

(assert (=> b!1480942 m!1726759))

(declare-fun m!1726761 () Bool)

(assert (=> b!1480946 m!1726761))

(declare-fun m!1726763 () Bool)

(assert (=> b!1480953 m!1726763))

(declare-fun m!1726765 () Bool)

(assert (=> b!1480953 m!1726765))

(declare-fun m!1726767 () Bool)

(assert (=> b!1480953 m!1726767))

(declare-fun m!1726769 () Bool)

(assert (=> b!1480953 m!1726769))

(declare-fun m!1726771 () Bool)

(assert (=> b!1480953 m!1726771))

(declare-fun m!1726773 () Bool)

(assert (=> b!1480953 m!1726773))

(declare-fun m!1726775 () Bool)

(assert (=> b!1480953 m!1726775))

(declare-fun m!1726777 () Bool)

(assert (=> b!1480935 m!1726777))

(declare-fun m!1726779 () Bool)

(assert (=> b!1480935 m!1726779))

(declare-fun m!1726781 () Bool)

(assert (=> b!1480936 m!1726781))

(assert (=> b!1480957 m!1726733))

(declare-fun m!1726783 () Bool)

(assert (=> b!1480952 m!1726783))

(declare-fun m!1726785 () Bool)

(assert (=> b!1480959 m!1726785))

(declare-fun m!1726787 () Bool)

(assert (=> b!1480945 m!1726787))

(declare-fun m!1726789 () Bool)

(assert (=> b!1480948 m!1726789))

(declare-fun m!1726791 () Bool)

(assert (=> b!1480948 m!1726791))

(check-sat (not b!1480937) (not b!1480941) b_and!102707 (not b!1480936) (not b!1480944) (not b_next!38929) (not b!1480943) (not b!1480935) (not b!1480947) (not b!1480940) (not b!1480942) (not b!1480959) (not b!1480949) (not b_next!38933) b_and!102705 (not b_next!38927) b_and!102711 (not b!1480952) (not b!1480938) (not b!1480945) (not b_next!38931) (not b!1480956) (not b_next!38937) (not b!1480957) b_and!102709 (not b!1480953) (not b!1480950) (not b!1480946) (not b_next!38935) (not b!1480948) b_and!102701 b_and!102703)
(check-sat b_and!102707 (not b_next!38929) b_and!102709 (not b_next!38933) b_and!102705 (not b_next!38927) b_and!102711 (not b_next!38931) (not b_next!38937) (not b_next!38935) b_and!102701 b_and!102703)
(get-model)

(declare-fun d!434187 () Bool)

(assert (=> d!434187 (= (isEmpty!9802 (t!137275 l1!3136)) ((_ is Nil!15672) (t!137275 l1!3136)))))

(assert (=> b!1480947 d!434187))

(declare-fun d!434189 () Bool)

(assert (=> d!434189 (= (inv!20886 (tag!3059 (rule!4572 (h!21073 l2!3105)))) (= (mod (str.len (value!89304 (tag!3059 (rule!4572 (h!21073 l2!3105))))) 2) 0))))

(assert (=> b!1480948 d!434189))

(declare-fun d!434191 () Bool)

(declare-fun res!669194 () Bool)

(declare-fun e!946806 () Bool)

(assert (=> d!434191 (=> (not res!669194) (not e!946806))))

(declare-fun semiInverseModEq!1055 (Int Int) Bool)

(assert (=> d!434191 (= res!669194 (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105))))))))

(assert (=> d!434191 (= (inv!20889 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) e!946806)))

(declare-fun b!1480977 () Bool)

(declare-fun equivClasses!1014 (Int Int) Bool)

(assert (=> b!1480977 (= e!946806 (equivClasses!1014 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105))))))))

(assert (= (and d!434191 res!669194) b!1480977))

(declare-fun m!1726799 () Bool)

(assert (=> d!434191 m!1726799))

(declare-fun m!1726801 () Bool)

(assert (=> b!1480977 m!1726801))

(assert (=> b!1480948 d!434191))

(declare-fun d!434193 () Bool)

(declare-fun res!669197 () Bool)

(declare-fun e!946809 () Bool)

(assert (=> d!434193 (=> (not res!669197) (not e!946809))))

(declare-fun rulesValid!1026 (LexerInterface!2451 List!15739) Bool)

(assert (=> d!434193 (= res!669197 (rulesValid!1026 thiss!27374 rules!4290))))

(assert (=> d!434193 (= (rulesInvariant!2240 thiss!27374 rules!4290) e!946809)))

(declare-fun b!1480980 () Bool)

(declare-datatypes ((List!15741 0))(
  ( (Nil!15675) (Cons!15675 (h!21076 String!18681) (t!137334 List!15741)) )
))
(declare-fun noDuplicateTag!1026 (LexerInterface!2451 List!15739 List!15741) Bool)

(assert (=> b!1480980 (= e!946809 (noDuplicateTag!1026 thiss!27374 rules!4290 Nil!15675))))

(assert (= (and d!434193 res!669197) b!1480980))

(declare-fun m!1726803 () Bool)

(assert (=> d!434193 m!1726803))

(declare-fun m!1726805 () Bool)

(assert (=> b!1480980 m!1726805))

(assert (=> b!1480959 d!434193))

(declare-fun d!434195 () Bool)

(declare-fun res!669202 () Bool)

(declare-fun e!946812 () Bool)

(assert (=> d!434195 (=> (not res!669202) (not e!946812))))

(declare-fun isEmpty!9806 (List!15737) Bool)

(assert (=> d!434195 (= res!669202 (not (isEmpty!9806 (originalCharacters!3657 (h!21073 l2!3105)))))))

(assert (=> d!434195 (= (inv!20890 (h!21073 l2!3105)) e!946812)))

(declare-fun b!1480985 () Bool)

(declare-fun res!669203 () Bool)

(assert (=> b!1480985 (=> (not res!669203) (not e!946812))))

(declare-fun list!6229 (BalanceConc!10618) List!15737)

(declare-fun dynLambda!7135 (Int TokenValue!2885) BalanceConc!10618)

(assert (=> b!1480985 (= res!669203 (= (originalCharacters!3657 (h!21073 l2!3105)) (list!6229 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))))))

(declare-fun b!1480986 () Bool)

(declare-fun size!12694 (List!15737) Int)

(assert (=> b!1480986 (= e!946812 (= (size!12689 (h!21073 l2!3105)) (size!12694 (originalCharacters!3657 (h!21073 l2!3105)))))))

(assert (= (and d!434195 res!669202) b!1480985))

(assert (= (and b!1480985 res!669203) b!1480986))

(declare-fun b_lambda!46355 () Bool)

(assert (=> (not b_lambda!46355) (not b!1480985)))

(declare-fun tb!84557 () Bool)

(declare-fun t!137278 () Bool)

(assert (=> (and b!1480939 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137278) tb!84557))

(declare-fun b!1480991 () Bool)

(declare-fun e!946815 () Bool)

(declare-fun tp!419961 () Bool)

(declare-fun inv!20893 (Conc!5339) Bool)

(assert (=> b!1480991 (= e!946815 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))) tp!419961))))

(declare-fun result!101690 () Bool)

(declare-fun inv!20894 (BalanceConc!10618) Bool)

(assert (=> tb!84557 (= result!101690 (and (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))) e!946815))))

(assert (= tb!84557 b!1480991))

(declare-fun m!1726807 () Bool)

(assert (=> b!1480991 m!1726807))

(declare-fun m!1726809 () Bool)

(assert (=> tb!84557 m!1726809))

(assert (=> b!1480985 t!137278))

(declare-fun b_and!102713 () Bool)

(assert (= b_and!102703 (and (=> t!137278 result!101690) b_and!102713)))

(declare-fun t!137280 () Bool)

(declare-fun tb!84559 () Bool)

(assert (=> (and b!1480955 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137280) tb!84559))

(declare-fun result!101694 () Bool)

(assert (= result!101694 result!101690))

(assert (=> b!1480985 t!137280))

(declare-fun b_and!102715 () Bool)

(assert (= b_and!102707 (and (=> t!137280 result!101694) b_and!102715)))

(declare-fun t!137282 () Bool)

(declare-fun tb!84561 () Bool)

(assert (=> (and b!1480954 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137282) tb!84561))

(declare-fun result!101696 () Bool)

(assert (= result!101696 result!101690))

(assert (=> b!1480985 t!137282))

(declare-fun b_and!102717 () Bool)

(assert (= b_and!102711 (and (=> t!137282 result!101696) b_and!102717)))

(declare-fun m!1726811 () Bool)

(assert (=> d!434195 m!1726811))

(declare-fun m!1726813 () Bool)

(assert (=> b!1480985 m!1726813))

(assert (=> b!1480985 m!1726813))

(declare-fun m!1726815 () Bool)

(assert (=> b!1480985 m!1726815))

(declare-fun m!1726817 () Bool)

(assert (=> b!1480986 m!1726817))

(assert (=> b!1480938 d!434195))

(declare-fun d!434197 () Bool)

(declare-fun res!669213 () Bool)

(declare-fun e!946824 () Bool)

(assert (=> d!434197 (=> res!669213 e!946824)))

(assert (=> d!434197 (= res!669213 (or (not ((_ is Cons!15672) lt!514518)) (not ((_ is Cons!15672) (t!137275 lt!514518)))))))

(assert (=> d!434197 (= (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 lt!514518 rules!4290) e!946824)))

(declare-fun b!1481000 () Bool)

(declare-fun e!946825 () Bool)

(assert (=> b!1481000 (= e!946824 e!946825)))

(declare-fun res!669212 () Bool)

(assert (=> b!1481000 (=> (not res!669212) (not e!946825))))

(assert (=> b!1481000 (= res!669212 (separableTokensPredicate!590 thiss!27374 (h!21073 lt!514518) (h!21073 (t!137275 lt!514518)) rules!4290))))

(declare-fun lt!514542 () Unit!25520)

(declare-fun Unit!25531 () Unit!25520)

(assert (=> b!1481000 (= lt!514542 Unit!25531)))

(declare-fun size!12695 (BalanceConc!10618) Int)

(declare-fun charsOf!1603 (Token!5252) BalanceConc!10618)

(assert (=> b!1481000 (> (size!12695 (charsOf!1603 (h!21073 (t!137275 lt!514518)))) 0)))

(declare-fun lt!514544 () Unit!25520)

(declare-fun Unit!25532 () Unit!25520)

(assert (=> b!1481000 (= lt!514544 Unit!25532)))

(assert (=> b!1481000 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 lt!514518)))))

(declare-fun lt!514541 () Unit!25520)

(declare-fun Unit!25533 () Unit!25520)

(assert (=> b!1481000 (= lt!514541 Unit!25533)))

(assert (=> b!1481000 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 lt!514518))))

(declare-fun lt!514540 () Unit!25520)

(declare-fun lt!514543 () Unit!25520)

(assert (=> b!1481000 (= lt!514540 lt!514543)))

(assert (=> b!1481000 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 lt!514518)))))

(assert (=> b!1481000 (= lt!514543 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 lt!514518 (h!21073 (t!137275 lt!514518))))))

(declare-fun lt!514539 () Unit!25520)

(declare-fun lt!514538 () Unit!25520)

(assert (=> b!1481000 (= lt!514539 lt!514538)))

(assert (=> b!1481000 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 lt!514518))))

(assert (=> b!1481000 (= lt!514538 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 lt!514518 (h!21073 lt!514518)))))

(declare-fun b!1481001 () Bool)

(assert (=> b!1481001 (= e!946825 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))) rules!4290))))

(assert (= (and d!434197 (not res!669213)) b!1481000))

(assert (= (and b!1481000 res!669212) b!1481001))

(declare-fun m!1726819 () Bool)

(assert (=> b!1481000 m!1726819))

(declare-fun m!1726821 () Bool)

(assert (=> b!1481000 m!1726821))

(declare-fun m!1726823 () Bool)

(assert (=> b!1481000 m!1726823))

(assert (=> b!1481000 m!1726819))

(declare-fun m!1726825 () Bool)

(assert (=> b!1481000 m!1726825))

(declare-fun m!1726827 () Bool)

(assert (=> b!1481000 m!1726827))

(declare-fun m!1726829 () Bool)

(assert (=> b!1481000 m!1726829))

(declare-fun m!1726831 () Bool)

(assert (=> b!1481000 m!1726831))

(declare-fun m!1726833 () Bool)

(assert (=> b!1481001 m!1726833))

(assert (=> b!1480949 d!434197))

(declare-fun b!1481069 () Bool)

(declare-fun e!946875 () Bool)

(assert (=> b!1481069 (= e!946875 true)))

(declare-fun b!1481068 () Bool)

(declare-fun e!946874 () Bool)

(assert (=> b!1481068 (= e!946874 e!946875)))

(declare-fun b!1481067 () Bool)

(declare-fun e!946873 () Bool)

(assert (=> b!1481067 (= e!946873 e!946874)))

(declare-fun d!434199 () Bool)

(assert (=> d!434199 e!946873))

(assert (= b!1481068 b!1481069))

(assert (= b!1481067 b!1481068))

(assert (= (and d!434199 ((_ is Cons!15673) rules!4290)) b!1481067))

(declare-fun order!9461 () Int)

(declare-fun lambda!63775 () Int)

(declare-fun order!9463 () Int)

(declare-fun dynLambda!7136 (Int Int) Int)

(declare-fun dynLambda!7137 (Int Int) Int)

(assert (=> b!1481069 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63775))))

(declare-fun order!9465 () Int)

(declare-fun dynLambda!7138 (Int Int) Int)

(assert (=> b!1481069 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63775))))

(assert (=> d!434199 true))

(declare-fun lt!514563 () Bool)

(declare-fun forall!3812 (List!15738 Int) Bool)

(assert (=> d!434199 (= lt!514563 (forall!3812 lt!514518 lambda!63775))))

(declare-fun e!946866 () Bool)

(assert (=> d!434199 (= lt!514563 e!946866)))

(declare-fun res!669246 () Bool)

(assert (=> d!434199 (=> res!669246 e!946866)))

(assert (=> d!434199 (= res!669246 (not ((_ is Cons!15672) lt!514518)))))

(assert (=> d!434199 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434199 (= (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 lt!514518) lt!514563)))

(declare-fun b!1481057 () Bool)

(declare-fun e!946865 () Bool)

(assert (=> b!1481057 (= e!946866 e!946865)))

(declare-fun res!669245 () Bool)

(assert (=> b!1481057 (=> (not res!669245) (not e!946865))))

(assert (=> b!1481057 (= res!669245 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 lt!514518)))))

(declare-fun b!1481058 () Bool)

(assert (=> b!1481058 (= e!946865 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 lt!514518)))))

(assert (= (and d!434199 (not res!669246)) b!1481057))

(assert (= (and b!1481057 res!669245) b!1481058))

(declare-fun m!1726923 () Bool)

(assert (=> d!434199 m!1726923))

(assert (=> d!434199 m!1726761))

(assert (=> b!1481057 m!1726823))

(declare-fun m!1726925 () Bool)

(assert (=> b!1481058 m!1726925))

(assert (=> b!1480949 d!434199))

(declare-fun b!1481080 () Bool)

(declare-fun e!946880 () List!15738)

(assert (=> b!1481080 (= e!946880 l2!3105)))

(declare-fun b!1481081 () Bool)

(assert (=> b!1481081 (= e!946880 (Cons!15672 (h!21073 l1!3136) (++!4224 (t!137275 l1!3136) l2!3105)))))

(declare-fun b!1481082 () Bool)

(declare-fun res!669252 () Bool)

(declare-fun e!946881 () Bool)

(assert (=> b!1481082 (=> (not res!669252) (not e!946881))))

(declare-fun lt!514566 () List!15738)

(declare-fun size!12696 (List!15738) Int)

(assert (=> b!1481082 (= res!669252 (= (size!12696 lt!514566) (+ (size!12696 l1!3136) (size!12696 l2!3105))))))

(declare-fun b!1481083 () Bool)

(assert (=> b!1481083 (= e!946881 (or (not (= l2!3105 Nil!15672)) (= lt!514566 l1!3136)))))

(declare-fun d!434237 () Bool)

(assert (=> d!434237 e!946881))

(declare-fun res!669251 () Bool)

(assert (=> d!434237 (=> (not res!669251) (not e!946881))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2279 (List!15738) (InoxSet Token!5252))

(assert (=> d!434237 (= res!669251 (= (content!2279 lt!514566) ((_ map or) (content!2279 l1!3136) (content!2279 l2!3105))))))

(assert (=> d!434237 (= lt!514566 e!946880)))

(declare-fun c!242927 () Bool)

(assert (=> d!434237 (= c!242927 ((_ is Nil!15672) l1!3136))))

(assert (=> d!434237 (= (++!4224 l1!3136 l2!3105) lt!514566)))

(assert (= (and d!434237 c!242927) b!1481080))

(assert (= (and d!434237 (not c!242927)) b!1481081))

(assert (= (and d!434237 res!669251) b!1481082))

(assert (= (and b!1481082 res!669252) b!1481083))

(declare-fun m!1726927 () Bool)

(assert (=> b!1481081 m!1726927))

(declare-fun m!1726929 () Bool)

(assert (=> b!1481082 m!1726929))

(declare-fun m!1726931 () Bool)

(assert (=> b!1481082 m!1726931))

(declare-fun m!1726933 () Bool)

(assert (=> b!1481082 m!1726933))

(declare-fun m!1726935 () Bool)

(assert (=> d!434237 m!1726935))

(declare-fun m!1726937 () Bool)

(assert (=> d!434237 m!1726937))

(declare-fun m!1726939 () Bool)

(assert (=> d!434237 m!1726939))

(assert (=> b!1480949 d!434237))

(declare-fun d!434239 () Bool)

(assert (=> d!434239 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (++!4224 l1!3136 l2!3105))))

(declare-fun lt!514601 () Unit!25520)

(declare-fun choose!9067 (LexerInterface!2451 List!15739 List!15738 List!15738) Unit!25520)

(assert (=> d!434239 (= lt!514601 (choose!9067 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> d!434239 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434239 (= (lemmaRulesProduceEachTokenIndividuallyConcat!76 thiss!27374 rules!4290 l1!3136 l2!3105) lt!514601)))

(declare-fun bs!345857 () Bool)

(assert (= bs!345857 d!434239))

(assert (=> bs!345857 m!1726745))

(assert (=> bs!345857 m!1726745))

(declare-fun m!1726991 () Bool)

(assert (=> bs!345857 m!1726991))

(declare-fun m!1726993 () Bool)

(assert (=> bs!345857 m!1726993))

(assert (=> bs!345857 m!1726761))

(assert (=> b!1480949 d!434239))

(declare-fun d!434249 () Bool)

(assert (=> d!434249 (= (isEmpty!9802 l1!3136) ((_ is Nil!15672) l1!3136))))

(assert (=> b!1480950 d!434249))

(declare-fun bs!345858 () Bool)

(declare-fun d!434251 () Bool)

(assert (= bs!345858 (and d!434251 d!434199)))

(declare-fun lambda!63777 () Int)

(assert (=> bs!345858 (= lambda!63777 lambda!63775)))

(declare-fun b!1481113 () Bool)

(declare-fun e!946905 () Bool)

(assert (=> b!1481113 (= e!946905 true)))

(declare-fun b!1481112 () Bool)

(declare-fun e!946904 () Bool)

(assert (=> b!1481112 (= e!946904 e!946905)))

(declare-fun b!1481111 () Bool)

(declare-fun e!946903 () Bool)

(assert (=> b!1481111 (= e!946903 e!946904)))

(assert (=> d!434251 e!946903))

(assert (= b!1481112 b!1481113))

(assert (= b!1481111 b!1481112))

(assert (= (and d!434251 ((_ is Cons!15673) rules!4290)) b!1481111))

(assert (=> b!1481113 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63777))))

(assert (=> b!1481113 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63777))))

(assert (=> d!434251 true))

(declare-fun lt!514602 () Bool)

(assert (=> d!434251 (= lt!514602 (forall!3812 l2!3105 lambda!63777))))

(declare-fun e!946902 () Bool)

(assert (=> d!434251 (= lt!514602 e!946902)))

(declare-fun res!669270 () Bool)

(assert (=> d!434251 (=> res!669270 e!946902)))

(assert (=> d!434251 (= res!669270 (not ((_ is Cons!15672) l2!3105)))))

(assert (=> d!434251 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434251 (= (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 l2!3105) lt!514602)))

(declare-fun b!1481109 () Bool)

(declare-fun e!946901 () Bool)

(assert (=> b!1481109 (= e!946902 e!946901)))

(declare-fun res!669269 () Bool)

(assert (=> b!1481109 (=> (not res!669269) (not e!946901))))

(assert (=> b!1481109 (= res!669269 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l2!3105)))))

(declare-fun b!1481110 () Bool)

(assert (=> b!1481110 (= e!946901 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 l2!3105)))))

(assert (= (and d!434251 (not res!669270)) b!1481109))

(assert (= (and b!1481109 res!669269) b!1481110))

(declare-fun m!1726995 () Bool)

(assert (=> d!434251 m!1726995))

(assert (=> d!434251 m!1726761))

(declare-fun m!1726997 () Bool)

(assert (=> b!1481109 m!1726997))

(declare-fun m!1726999 () Bool)

(assert (=> b!1481110 m!1726999))

(assert (=> b!1480940 d!434251))

(declare-fun d!434253 () Bool)

(declare-fun res!669272 () Bool)

(declare-fun e!946906 () Bool)

(assert (=> d!434253 (=> res!669272 e!946906)))

(assert (=> d!434253 (= res!669272 (or (not ((_ is Cons!15672) l2!3105)) (not ((_ is Cons!15672) (t!137275 l2!3105)))))))

(assert (=> d!434253 (= (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 l2!3105 rules!4290) e!946906)))

(declare-fun b!1481114 () Bool)

(declare-fun e!946907 () Bool)

(assert (=> b!1481114 (= e!946906 e!946907)))

(declare-fun res!669271 () Bool)

(assert (=> b!1481114 (=> (not res!669271) (not e!946907))))

(assert (=> b!1481114 (= res!669271 (separableTokensPredicate!590 thiss!27374 (h!21073 l2!3105) (h!21073 (t!137275 l2!3105)) rules!4290))))

(declare-fun lt!514607 () Unit!25520)

(declare-fun Unit!25534 () Unit!25520)

(assert (=> b!1481114 (= lt!514607 Unit!25534)))

(assert (=> b!1481114 (> (size!12695 (charsOf!1603 (h!21073 (t!137275 l2!3105)))) 0)))

(declare-fun lt!514609 () Unit!25520)

(declare-fun Unit!25535 () Unit!25520)

(assert (=> b!1481114 (= lt!514609 Unit!25535)))

(assert (=> b!1481114 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l2!3105)))))

(declare-fun lt!514606 () Unit!25520)

(declare-fun Unit!25536 () Unit!25520)

(assert (=> b!1481114 (= lt!514606 Unit!25536)))

(assert (=> b!1481114 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l2!3105))))

(declare-fun lt!514605 () Unit!25520)

(declare-fun lt!514608 () Unit!25520)

(assert (=> b!1481114 (= lt!514605 lt!514608)))

(assert (=> b!1481114 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l2!3105)))))

(assert (=> b!1481114 (= lt!514608 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l2!3105 (h!21073 (t!137275 l2!3105))))))

(declare-fun lt!514604 () Unit!25520)

(declare-fun lt!514603 () Unit!25520)

(assert (=> b!1481114 (= lt!514604 lt!514603)))

(assert (=> b!1481114 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l2!3105))))

(assert (=> b!1481114 (= lt!514603 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l2!3105 (h!21073 l2!3105)))))

(declare-fun b!1481115 () Bool)

(assert (=> b!1481115 (= e!946907 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))) rules!4290))))

(assert (= (and d!434253 (not res!669272)) b!1481114))

(assert (= (and b!1481114 res!669271) b!1481115))

(declare-fun m!1727001 () Bool)

(assert (=> b!1481114 m!1727001))

(declare-fun m!1727003 () Bool)

(assert (=> b!1481114 m!1727003))

(assert (=> b!1481114 m!1726997))

(assert (=> b!1481114 m!1727001))

(declare-fun m!1727005 () Bool)

(assert (=> b!1481114 m!1727005))

(declare-fun m!1727007 () Bool)

(assert (=> b!1481114 m!1727007))

(declare-fun m!1727009 () Bool)

(assert (=> b!1481114 m!1727009))

(declare-fun m!1727011 () Bool)

(assert (=> b!1481114 m!1727011))

(declare-fun m!1727013 () Bool)

(assert (=> b!1481115 m!1727013))

(assert (=> b!1480941 d!434253))

(declare-fun bs!345859 () Bool)

(declare-fun d!434255 () Bool)

(assert (= bs!345859 (and d!434255 d!434199)))

(declare-fun lambda!63778 () Int)

(assert (=> bs!345859 (= lambda!63778 lambda!63775)))

(declare-fun bs!345860 () Bool)

(assert (= bs!345860 (and d!434255 d!434251)))

(assert (=> bs!345860 (= lambda!63778 lambda!63777)))

(declare-fun b!1481120 () Bool)

(declare-fun e!946912 () Bool)

(assert (=> b!1481120 (= e!946912 true)))

(declare-fun b!1481119 () Bool)

(declare-fun e!946911 () Bool)

(assert (=> b!1481119 (= e!946911 e!946912)))

(declare-fun b!1481118 () Bool)

(declare-fun e!946910 () Bool)

(assert (=> b!1481118 (= e!946910 e!946911)))

(assert (=> d!434255 e!946910))

(assert (= b!1481119 b!1481120))

(assert (= b!1481118 b!1481119))

(assert (= (and d!434255 ((_ is Cons!15673) rules!4290)) b!1481118))

(assert (=> b!1481120 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63778))))

(assert (=> b!1481120 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63778))))

(assert (=> d!434255 true))

(declare-fun lt!514610 () Bool)

(assert (=> d!434255 (= lt!514610 (forall!3812 l1!3136 lambda!63778))))

(declare-fun e!946909 () Bool)

(assert (=> d!434255 (= lt!514610 e!946909)))

(declare-fun res!669274 () Bool)

(assert (=> d!434255 (=> res!669274 e!946909)))

(assert (=> d!434255 (= res!669274 (not ((_ is Cons!15672) l1!3136)))))

(assert (=> d!434255 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434255 (= (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 l1!3136) lt!514610)))

(declare-fun b!1481116 () Bool)

(declare-fun e!946908 () Bool)

(assert (=> b!1481116 (= e!946909 e!946908)))

(declare-fun res!669273 () Bool)

(assert (=> b!1481116 (=> (not res!669273) (not e!946908))))

(assert (=> b!1481116 (= res!669273 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l1!3136)))))

(declare-fun b!1481117 () Bool)

(assert (=> b!1481117 (= e!946908 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 l1!3136)))))

(assert (= (and d!434255 (not res!669274)) b!1481116))

(assert (= (and b!1481116 res!669273) b!1481117))

(declare-fun m!1727015 () Bool)

(assert (=> d!434255 m!1727015))

(assert (=> d!434255 m!1726761))

(declare-fun m!1727017 () Bool)

(assert (=> b!1481116 m!1727017))

(declare-fun m!1727019 () Bool)

(assert (=> b!1481117 m!1727019))

(assert (=> b!1480952 d!434255))

(declare-fun d!434257 () Bool)

(assert (=> d!434257 (= (isEmpty!9802 l2!3105) ((_ is Nil!15672) l2!3105))))

(assert (=> b!1480942 d!434257))

(declare-fun d!434259 () Bool)

(assert (=> d!434259 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514520)))

(declare-fun lt!514624 () Unit!25520)

(declare-fun choose!9068 (LexerInterface!2451 List!15739 List!15738 Token!5252) Unit!25520)

(assert (=> d!434259 (= lt!514624 (choose!9068 thiss!27374 rules!4290 l1!3136 lt!514520))))

(assert (=> d!434259 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434259 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l1!3136 lt!514520) lt!514624)))

(declare-fun bs!345864 () Bool)

(assert (= bs!345864 d!434259))

(assert (=> bs!345864 m!1726775))

(declare-fun m!1727085 () Bool)

(assert (=> bs!345864 m!1727085))

(assert (=> bs!345864 m!1726761))

(assert (=> b!1480953 d!434259))

(declare-fun d!434273 () Bool)

(assert (=> d!434273 (= (head!3083 l2!3105) (h!21073 l2!3105))))

(assert (=> b!1480953 d!434273))

(declare-fun d!434275 () Bool)

(declare-fun lt!514627 () Token!5252)

(declare-fun contains!2953 (List!15738 Token!5252) Bool)

(assert (=> d!434275 (contains!2953 l1!3136 lt!514627)))

(declare-fun e!946973 () Token!5252)

(assert (=> d!434275 (= lt!514627 e!946973)))

(declare-fun c!242935 () Bool)

(assert (=> d!434275 (= c!242935 (and ((_ is Cons!15672) l1!3136) ((_ is Nil!15672) (t!137275 l1!3136))))))

(assert (=> d!434275 (not (isEmpty!9802 l1!3136))))

(assert (=> d!434275 (= (last!353 l1!3136) lt!514627)))

(declare-fun b!1481198 () Bool)

(assert (=> b!1481198 (= e!946973 (h!21073 l1!3136))))

(declare-fun b!1481199 () Bool)

(assert (=> b!1481199 (= e!946973 (last!353 (t!137275 l1!3136)))))

(assert (= (and d!434275 c!242935) b!1481198))

(assert (= (and d!434275 (not c!242935)) b!1481199))

(declare-fun m!1727087 () Bool)

(assert (=> d!434275 m!1727087))

(assert (=> d!434275 m!1726757))

(declare-fun m!1727089 () Bool)

(assert (=> b!1481199 m!1727089))

(assert (=> b!1480953 d!434275))

(declare-fun d!434277 () Bool)

(declare-fun prefixMatchZipperSequence!385 (Regex!4109 BalanceConc!10618) Bool)

(declare-fun rulesRegex!435 (LexerInterface!2451 List!15739) Regex!4109)

(declare-fun ++!4226 (BalanceConc!10618 BalanceConc!10618) BalanceConc!10618)

(declare-fun singletonSeq!1336 (C!8396) BalanceConc!10618)

(declare-fun apply!4051 (BalanceConc!10618 Int) C!8396)

(assert (=> d!434277 (= (separableTokensPredicate!590 thiss!27374 lt!514520 lt!514521 rules!4290) (not (prefixMatchZipperSequence!385 (rulesRegex!435 thiss!27374 rules!4290) (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))))))

(declare-fun bs!345865 () Bool)

(assert (= bs!345865 d!434277))

(declare-fun m!1727091 () Bool)

(assert (=> bs!345865 m!1727091))

(declare-fun m!1727093 () Bool)

(assert (=> bs!345865 m!1727093))

(declare-fun m!1727095 () Bool)

(assert (=> bs!345865 m!1727095))

(declare-fun m!1727097 () Bool)

(assert (=> bs!345865 m!1727097))

(declare-fun m!1727099 () Bool)

(assert (=> bs!345865 m!1727099))

(declare-fun m!1727101 () Bool)

(assert (=> bs!345865 m!1727101))

(assert (=> bs!345865 m!1727093))

(assert (=> bs!345865 m!1727097))

(assert (=> bs!345865 m!1727095))

(declare-fun m!1727103 () Bool)

(assert (=> bs!345865 m!1727103))

(assert (=> bs!345865 m!1727103))

(assert (=> bs!345865 m!1727091))

(assert (=> bs!345865 m!1727101))

(assert (=> b!1480953 d!434277))

(declare-fun d!434279 () Bool)

(declare-fun lt!514633 () Bool)

(declare-fun e!946978 () Bool)

(assert (=> d!434279 (= lt!514633 e!946978)))

(declare-fun res!669291 () Bool)

(assert (=> d!434279 (=> (not res!669291) (not e!946978))))

(declare-datatypes ((IArray!10687 0))(
  ( (IArray!10688 (innerList!5401 List!15738)) )
))
(declare-datatypes ((Conc!5341 0))(
  ( (Node!5341 (left!13221 Conc!5341) (right!13551 Conc!5341) (csize!10912 Int) (cheight!5552 Int)) (Leaf!7940 (xs!8096 IArray!10687) (csize!10913 Int)) (Empty!5341) )
))
(declare-datatypes ((BalanceConc!10622 0))(
  ( (BalanceConc!10623 (c!242945 Conc!5341)) )
))
(declare-fun list!6230 (BalanceConc!10622) List!15738)

(declare-datatypes ((tuple2!14338 0))(
  ( (tuple2!14339 (_1!8055 BalanceConc!10622) (_2!8055 BalanceConc!10618)) )
))
(declare-fun lex!1108 (LexerInterface!2451 List!15739 BalanceConc!10618) tuple2!14338)

(declare-fun print!1143 (LexerInterface!2451 BalanceConc!10622) BalanceConc!10618)

(declare-fun singletonSeq!1337 (Token!5252) BalanceConc!10622)

(assert (=> d!434279 (= res!669291 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521))))) (list!6230 (singletonSeq!1337 lt!514521))))))

(declare-fun e!946979 () Bool)

(assert (=> d!434279 (= lt!514633 e!946979)))

(declare-fun res!669290 () Bool)

(assert (=> d!434279 (=> (not res!669290) (not e!946979))))

(declare-fun lt!514632 () tuple2!14338)

(declare-fun size!12697 (BalanceConc!10622) Int)

(assert (=> d!434279 (= res!669290 (= (size!12697 (_1!8055 lt!514632)) 1))))

(assert (=> d!434279 (= lt!514632 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521))))))

(assert (=> d!434279 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434279 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514521) lt!514633)))

(declare-fun b!1481206 () Bool)

(declare-fun res!669289 () Bool)

(assert (=> b!1481206 (=> (not res!669289) (not e!946979))))

(declare-fun apply!4052 (BalanceConc!10622 Int) Token!5252)

(assert (=> b!1481206 (= res!669289 (= (apply!4052 (_1!8055 lt!514632) 0) lt!514521))))

(declare-fun b!1481207 () Bool)

(declare-fun isEmpty!9807 (BalanceConc!10618) Bool)

(assert (=> b!1481207 (= e!946979 (isEmpty!9807 (_2!8055 lt!514632)))))

(declare-fun b!1481208 () Bool)

(assert (=> b!1481208 (= e!946978 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521))))))))

(assert (= (and d!434279 res!669290) b!1481206))

(assert (= (and b!1481206 res!669289) b!1481207))

(assert (= (and d!434279 res!669291) b!1481208))

(declare-fun m!1727105 () Bool)

(assert (=> d!434279 m!1727105))

(declare-fun m!1727107 () Bool)

(assert (=> d!434279 m!1727107))

(assert (=> d!434279 m!1727105))

(declare-fun m!1727109 () Bool)

(assert (=> d!434279 m!1727109))

(assert (=> d!434279 m!1726761))

(assert (=> d!434279 m!1727105))

(declare-fun m!1727111 () Bool)

(assert (=> d!434279 m!1727111))

(assert (=> d!434279 m!1727111))

(declare-fun m!1727113 () Bool)

(assert (=> d!434279 m!1727113))

(declare-fun m!1727115 () Bool)

(assert (=> d!434279 m!1727115))

(declare-fun m!1727117 () Bool)

(assert (=> b!1481206 m!1727117))

(declare-fun m!1727119 () Bool)

(assert (=> b!1481207 m!1727119))

(assert (=> b!1481208 m!1727105))

(assert (=> b!1481208 m!1727105))

(assert (=> b!1481208 m!1727111))

(assert (=> b!1481208 m!1727111))

(assert (=> b!1481208 m!1727113))

(declare-fun m!1727121 () Bool)

(assert (=> b!1481208 m!1727121))

(assert (=> b!1480953 d!434279))

(declare-fun d!434281 () Bool)

(assert (=> d!434281 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514521)))

(declare-fun lt!514634 () Unit!25520)

(assert (=> d!434281 (= lt!514634 (choose!9068 thiss!27374 rules!4290 l2!3105 lt!514521))))

(assert (=> d!434281 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434281 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l2!3105 lt!514521) lt!514634)))

(declare-fun bs!345866 () Bool)

(assert (= bs!345866 d!434281))

(assert (=> bs!345866 m!1726773))

(declare-fun m!1727123 () Bool)

(assert (=> bs!345866 m!1727123))

(assert (=> bs!345866 m!1726761))

(assert (=> b!1480953 d!434281))

(declare-fun d!434283 () Bool)

(declare-fun lt!514636 () Bool)

(declare-fun e!946980 () Bool)

(assert (=> d!434283 (= lt!514636 e!946980)))

(declare-fun res!669294 () Bool)

(assert (=> d!434283 (=> (not res!669294) (not e!946980))))

(assert (=> d!434283 (= res!669294 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520))))) (list!6230 (singletonSeq!1337 lt!514520))))))

(declare-fun e!946981 () Bool)

(assert (=> d!434283 (= lt!514636 e!946981)))

(declare-fun res!669293 () Bool)

(assert (=> d!434283 (=> (not res!669293) (not e!946981))))

(declare-fun lt!514635 () tuple2!14338)

(assert (=> d!434283 (= res!669293 (= (size!12697 (_1!8055 lt!514635)) 1))))

(assert (=> d!434283 (= lt!514635 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520))))))

(assert (=> d!434283 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434283 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514520) lt!514636)))

(declare-fun b!1481209 () Bool)

(declare-fun res!669292 () Bool)

(assert (=> b!1481209 (=> (not res!669292) (not e!946981))))

(assert (=> b!1481209 (= res!669292 (= (apply!4052 (_1!8055 lt!514635) 0) lt!514520))))

(declare-fun b!1481210 () Bool)

(assert (=> b!1481210 (= e!946981 (isEmpty!9807 (_2!8055 lt!514635)))))

(declare-fun b!1481211 () Bool)

(assert (=> b!1481211 (= e!946980 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520))))))))

(assert (= (and d!434283 res!669293) b!1481209))

(assert (= (and b!1481209 res!669292) b!1481210))

(assert (= (and d!434283 res!669294) b!1481211))

(declare-fun m!1727125 () Bool)

(assert (=> d!434283 m!1727125))

(declare-fun m!1727127 () Bool)

(assert (=> d!434283 m!1727127))

(assert (=> d!434283 m!1727125))

(declare-fun m!1727129 () Bool)

(assert (=> d!434283 m!1727129))

(assert (=> d!434283 m!1726761))

(assert (=> d!434283 m!1727125))

(declare-fun m!1727131 () Bool)

(assert (=> d!434283 m!1727131))

(assert (=> d!434283 m!1727131))

(declare-fun m!1727133 () Bool)

(assert (=> d!434283 m!1727133))

(declare-fun m!1727135 () Bool)

(assert (=> d!434283 m!1727135))

(declare-fun m!1727137 () Bool)

(assert (=> b!1481209 m!1727137))

(declare-fun m!1727139 () Bool)

(assert (=> b!1481210 m!1727139))

(assert (=> b!1481211 m!1727125))

(assert (=> b!1481211 m!1727125))

(assert (=> b!1481211 m!1727131))

(assert (=> b!1481211 m!1727131))

(assert (=> b!1481211 m!1727133))

(declare-fun m!1727141 () Bool)

(assert (=> b!1481211 m!1727141))

(assert (=> b!1480953 d!434283))

(declare-fun b!1481222 () Bool)

(declare-fun e!946988 () Bool)

(declare-fun e!946989 () Bool)

(assert (=> b!1481222 (= e!946988 e!946989)))

(declare-fun c!242942 () Bool)

(assert (=> b!1481222 (= c!242942 ((_ is IntegerValue!8656) (value!89305 (h!21073 l1!3136))))))

(declare-fun b!1481223 () Bool)

(declare-fun inv!16 (TokenValue!2885) Bool)

(assert (=> b!1481223 (= e!946988 (inv!16 (value!89305 (h!21073 l1!3136))))))

(declare-fun b!1481224 () Bool)

(declare-fun res!669297 () Bool)

(declare-fun e!946990 () Bool)

(assert (=> b!1481224 (=> res!669297 e!946990)))

(assert (=> b!1481224 (= res!669297 (not ((_ is IntegerValue!8657) (value!89305 (h!21073 l1!3136)))))))

(assert (=> b!1481224 (= e!946989 e!946990)))

(declare-fun b!1481225 () Bool)

(declare-fun inv!15 (TokenValue!2885) Bool)

(assert (=> b!1481225 (= e!946990 (inv!15 (value!89305 (h!21073 l1!3136))))))

(declare-fun b!1481226 () Bool)

(declare-fun inv!17 (TokenValue!2885) Bool)

(assert (=> b!1481226 (= e!946989 (inv!17 (value!89305 (h!21073 l1!3136))))))

(declare-fun d!434285 () Bool)

(declare-fun c!242941 () Bool)

(assert (=> d!434285 (= c!242941 ((_ is IntegerValue!8655) (value!89305 (h!21073 l1!3136))))))

(assert (=> d!434285 (= (inv!21 (value!89305 (h!21073 l1!3136))) e!946988)))

(assert (= (and d!434285 c!242941) b!1481223))

(assert (= (and d!434285 (not c!242941)) b!1481222))

(assert (= (and b!1481222 c!242942) b!1481226))

(assert (= (and b!1481222 (not c!242942)) b!1481224))

(assert (= (and b!1481224 (not res!669297)) b!1481225))

(declare-fun m!1727143 () Bool)

(assert (=> b!1481223 m!1727143))

(declare-fun m!1727145 () Bool)

(assert (=> b!1481225 m!1727145))

(declare-fun m!1727147 () Bool)

(assert (=> b!1481226 m!1727147))

(assert (=> b!1480943 d!434285))

(declare-fun d!434287 () Bool)

(declare-fun res!669298 () Bool)

(declare-fun e!946991 () Bool)

(assert (=> d!434287 (=> (not res!669298) (not e!946991))))

(assert (=> d!434287 (= res!669298 (not (isEmpty!9806 (originalCharacters!3657 (h!21073 l1!3136)))))))

(assert (=> d!434287 (= (inv!20890 (h!21073 l1!3136)) e!946991)))

(declare-fun b!1481227 () Bool)

(declare-fun res!669299 () Bool)

(assert (=> b!1481227 (=> (not res!669299) (not e!946991))))

(assert (=> b!1481227 (= res!669299 (= (originalCharacters!3657 (h!21073 l1!3136)) (list!6229 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))))))

(declare-fun b!1481228 () Bool)

(assert (=> b!1481228 (= e!946991 (= (size!12689 (h!21073 l1!3136)) (size!12694 (originalCharacters!3657 (h!21073 l1!3136)))))))

(assert (= (and d!434287 res!669298) b!1481227))

(assert (= (and b!1481227 res!669299) b!1481228))

(declare-fun b_lambda!46365 () Bool)

(assert (=> (not b_lambda!46365) (not b!1481227)))

(declare-fun t!137317 () Bool)

(declare-fun tb!84587 () Bool)

(assert (=> (and b!1480939 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137317) tb!84587))

(declare-fun b!1481229 () Bool)

(declare-fun e!946992 () Bool)

(declare-fun tp!420027 () Bool)

(assert (=> b!1481229 (= e!946992 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))) tp!420027))))

(declare-fun result!101732 () Bool)

(assert (=> tb!84587 (= result!101732 (and (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))) e!946992))))

(assert (= tb!84587 b!1481229))

(declare-fun m!1727149 () Bool)

(assert (=> b!1481229 m!1727149))

(declare-fun m!1727151 () Bool)

(assert (=> tb!84587 m!1727151))

(assert (=> b!1481227 t!137317))

(declare-fun b_and!102743 () Bool)

(assert (= b_and!102713 (and (=> t!137317 result!101732) b_and!102743)))

(declare-fun t!137319 () Bool)

(declare-fun tb!84589 () Bool)

(assert (=> (and b!1480955 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137319) tb!84589))

(declare-fun result!101734 () Bool)

(assert (= result!101734 result!101732))

(assert (=> b!1481227 t!137319))

(declare-fun b_and!102745 () Bool)

(assert (= b_and!102715 (and (=> t!137319 result!101734) b_and!102745)))

(declare-fun t!137321 () Bool)

(declare-fun tb!84591 () Bool)

(assert (=> (and b!1480954 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137321) tb!84591))

(declare-fun result!101736 () Bool)

(assert (= result!101736 result!101732))

(assert (=> b!1481227 t!137321))

(declare-fun b_and!102747 () Bool)

(assert (= b_and!102717 (and (=> t!137321 result!101736) b_and!102747)))

(declare-fun m!1727153 () Bool)

(assert (=> d!434287 m!1727153))

(declare-fun m!1727155 () Bool)

(assert (=> b!1481227 m!1727155))

(assert (=> b!1481227 m!1727155))

(declare-fun m!1727157 () Bool)

(assert (=> b!1481227 m!1727157))

(declare-fun m!1727159 () Bool)

(assert (=> b!1481228 m!1727159))

(assert (=> b!1480944 d!434287))

(declare-fun d!434289 () Bool)

(declare-fun res!669301 () Bool)

(declare-fun e!946993 () Bool)

(assert (=> d!434289 (=> res!669301 e!946993)))

(assert (=> d!434289 (= res!669301 (or (not ((_ is Cons!15672) l1!3136)) (not ((_ is Cons!15672) (t!137275 l1!3136)))))))

(assert (=> d!434289 (= (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 l1!3136 rules!4290) e!946993)))

(declare-fun b!1481230 () Bool)

(declare-fun e!946994 () Bool)

(assert (=> b!1481230 (= e!946993 e!946994)))

(declare-fun res!669300 () Bool)

(assert (=> b!1481230 (=> (not res!669300) (not e!946994))))

(assert (=> b!1481230 (= res!669300 (separableTokensPredicate!590 thiss!27374 (h!21073 l1!3136) (h!21073 (t!137275 l1!3136)) rules!4290))))

(declare-fun lt!514641 () Unit!25520)

(declare-fun Unit!25537 () Unit!25520)

(assert (=> b!1481230 (= lt!514641 Unit!25537)))

(assert (=> b!1481230 (> (size!12695 (charsOf!1603 (h!21073 (t!137275 l1!3136)))) 0)))

(declare-fun lt!514643 () Unit!25520)

(declare-fun Unit!25538 () Unit!25520)

(assert (=> b!1481230 (= lt!514643 Unit!25538)))

(assert (=> b!1481230 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l1!3136)))))

(declare-fun lt!514640 () Unit!25520)

(declare-fun Unit!25539 () Unit!25520)

(assert (=> b!1481230 (= lt!514640 Unit!25539)))

(assert (=> b!1481230 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l1!3136))))

(declare-fun lt!514639 () Unit!25520)

(declare-fun lt!514642 () Unit!25520)

(assert (=> b!1481230 (= lt!514639 lt!514642)))

(assert (=> b!1481230 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l1!3136)))))

(assert (=> b!1481230 (= lt!514642 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l1!3136 (h!21073 (t!137275 l1!3136))))))

(declare-fun lt!514638 () Unit!25520)

(declare-fun lt!514637 () Unit!25520)

(assert (=> b!1481230 (= lt!514638 lt!514637)))

(assert (=> b!1481230 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l1!3136))))

(assert (=> b!1481230 (= lt!514637 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l1!3136 (h!21073 l1!3136)))))

(declare-fun b!1481231 () Bool)

(assert (=> b!1481231 (= e!946994 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))) rules!4290))))

(assert (= (and d!434289 (not res!669301)) b!1481230))

(assert (= (and b!1481230 res!669300) b!1481231))

(declare-fun m!1727161 () Bool)

(assert (=> b!1481230 m!1727161))

(declare-fun m!1727163 () Bool)

(assert (=> b!1481230 m!1727163))

(assert (=> b!1481230 m!1727017))

(assert (=> b!1481230 m!1727161))

(declare-fun m!1727165 () Bool)

(assert (=> b!1481230 m!1727165))

(declare-fun m!1727167 () Bool)

(assert (=> b!1481230 m!1727167))

(declare-fun m!1727169 () Bool)

(assert (=> b!1481230 m!1727169))

(declare-fun m!1727171 () Bool)

(assert (=> b!1481230 m!1727171))

(declare-fun m!1727173 () Bool)

(assert (=> b!1481231 m!1727173))

(assert (=> b!1480945 d!434289))

(declare-fun d!434291 () Bool)

(assert (=> d!434291 (= (inv!20886 (tag!3059 (h!21074 rules!4290))) (= (mod (str.len (value!89304 (tag!3059 (h!21074 rules!4290)))) 2) 0))))

(assert (=> b!1480956 d!434291))

(declare-fun d!434293 () Bool)

(declare-fun res!669302 () Bool)

(declare-fun e!946995 () Bool)

(assert (=> d!434293 (=> (not res!669302) (not e!946995))))

(assert (=> d!434293 (= res!669302 (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toValue!4130 (transformation!2795 (h!21074 rules!4290)))))))

(assert (=> d!434293 (= (inv!20889 (transformation!2795 (h!21074 rules!4290))) e!946995)))

(declare-fun b!1481232 () Bool)

(assert (=> b!1481232 (= e!946995 (equivClasses!1014 (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toValue!4130 (transformation!2795 (h!21074 rules!4290)))))))

(assert (= (and d!434293 res!669302) b!1481232))

(declare-fun m!1727175 () Bool)

(assert (=> d!434293 m!1727175))

(declare-fun m!1727177 () Bool)

(assert (=> b!1481232 m!1727177))

(assert (=> b!1480956 d!434293))

(declare-fun d!434295 () Bool)

(assert (=> d!434295 (= (inv!20886 (tag!3059 (rule!4572 (h!21073 l1!3136)))) (= (mod (str.len (value!89304 (tag!3059 (rule!4572 (h!21073 l1!3136))))) 2) 0))))

(assert (=> b!1480935 d!434295))

(declare-fun d!434297 () Bool)

(declare-fun res!669303 () Bool)

(declare-fun e!946996 () Bool)

(assert (=> d!434297 (=> (not res!669303) (not e!946996))))

(assert (=> d!434297 (= res!669303 (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))))))

(assert (=> d!434297 (= (inv!20889 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) e!946996)))

(declare-fun b!1481233 () Bool)

(assert (=> b!1481233 (= e!946996 (equivClasses!1014 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))))))

(assert (= (and d!434297 res!669303) b!1481233))

(declare-fun m!1727179 () Bool)

(assert (=> d!434297 m!1727179))

(declare-fun m!1727181 () Bool)

(assert (=> b!1481233 m!1727181))

(assert (=> b!1480935 d!434297))

(declare-fun d!434299 () Bool)

(assert (=> d!434299 (= (isEmpty!9803 rules!4290) ((_ is Nil!15673) rules!4290))))

(assert (=> b!1480946 d!434299))

(assert (=> b!1480957 d!434187))

(declare-fun b!1481234 () Bool)

(declare-fun e!946997 () Bool)

(declare-fun e!946998 () Bool)

(assert (=> b!1481234 (= e!946997 e!946998)))

(declare-fun c!242944 () Bool)

(assert (=> b!1481234 (= c!242944 ((_ is IntegerValue!8656) (value!89305 (h!21073 l2!3105))))))

(declare-fun b!1481235 () Bool)

(assert (=> b!1481235 (= e!946997 (inv!16 (value!89305 (h!21073 l2!3105))))))

(declare-fun b!1481236 () Bool)

(declare-fun res!669304 () Bool)

(declare-fun e!946999 () Bool)

(assert (=> b!1481236 (=> res!669304 e!946999)))

(assert (=> b!1481236 (= res!669304 (not ((_ is IntegerValue!8657) (value!89305 (h!21073 l2!3105)))))))

(assert (=> b!1481236 (= e!946998 e!946999)))

(declare-fun b!1481237 () Bool)

(assert (=> b!1481237 (= e!946999 (inv!15 (value!89305 (h!21073 l2!3105))))))

(declare-fun b!1481238 () Bool)

(assert (=> b!1481238 (= e!946998 (inv!17 (value!89305 (h!21073 l2!3105))))))

(declare-fun d!434301 () Bool)

(declare-fun c!242943 () Bool)

(assert (=> d!434301 (= c!242943 ((_ is IntegerValue!8655) (value!89305 (h!21073 l2!3105))))))

(assert (=> d!434301 (= (inv!21 (value!89305 (h!21073 l2!3105))) e!946997)))

(assert (= (and d!434301 c!242943) b!1481235))

(assert (= (and d!434301 (not c!242943)) b!1481234))

(assert (= (and b!1481234 c!242944) b!1481238))

(assert (= (and b!1481234 (not c!242944)) b!1481236))

(assert (= (and b!1481236 (not res!669304)) b!1481237))

(declare-fun m!1727183 () Bool)

(assert (=> b!1481235 m!1727183))

(declare-fun m!1727185 () Bool)

(assert (=> b!1481237 m!1727185))

(declare-fun m!1727187 () Bool)

(assert (=> b!1481238 m!1727187))

(assert (=> b!1480936 d!434301))

(declare-fun b!1481249 () Bool)

(declare-fun b_free!38247 () Bool)

(declare-fun b_next!38951 () Bool)

(assert (=> b!1481249 (= b_free!38247 (not b_next!38951))))

(declare-fun tp!420039 () Bool)

(declare-fun b_and!102749 () Bool)

(assert (=> b!1481249 (= tp!420039 b_and!102749)))

(declare-fun b_free!38249 () Bool)

(declare-fun b_next!38953 () Bool)

(assert (=> b!1481249 (= b_free!38249 (not b_next!38953))))

(declare-fun t!137323 () Bool)

(declare-fun tb!84593 () Bool)

(assert (=> (and b!1481249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137323) tb!84593))

(declare-fun result!101740 () Bool)

(assert (= result!101740 result!101690))

(assert (=> b!1480985 t!137323))

(declare-fun tb!84595 () Bool)

(declare-fun t!137325 () Bool)

(assert (=> (and b!1481249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137325) tb!84595))

(declare-fun result!101742 () Bool)

(assert (= result!101742 result!101732))

(assert (=> b!1481227 t!137325))

(declare-fun tp!420038 () Bool)

(declare-fun b_and!102751 () Bool)

(assert (=> b!1481249 (= tp!420038 (and (=> t!137323 result!101740) (=> t!137325 result!101742) b_and!102751))))

(declare-fun e!947010 () Bool)

(assert (=> b!1481249 (= e!947010 (and tp!420039 tp!420038))))

(declare-fun e!947011 () Bool)

(declare-fun tp!420036 () Bool)

(declare-fun b!1481248 () Bool)

(assert (=> b!1481248 (= e!947011 (and tp!420036 (inv!20886 (tag!3059 (h!21074 (t!137276 rules!4290)))) (inv!20889 (transformation!2795 (h!21074 (t!137276 rules!4290)))) e!947010))))

(declare-fun b!1481247 () Bool)

(declare-fun e!947008 () Bool)

(declare-fun tp!420037 () Bool)

(assert (=> b!1481247 (= e!947008 (and e!947011 tp!420037))))

(assert (=> b!1480937 (= tp!419947 e!947008)))

(assert (= b!1481248 b!1481249))

(assert (= b!1481247 b!1481248))

(assert (= (and b!1480937 ((_ is Cons!15673) (t!137276 rules!4290))) b!1481247))

(declare-fun m!1727189 () Bool)

(assert (=> b!1481248 m!1727189))

(declare-fun m!1727191 () Bool)

(assert (=> b!1481248 m!1727191))

(declare-fun b!1481261 () Bool)

(declare-fun e!947014 () Bool)

(declare-fun tp!420050 () Bool)

(declare-fun tp!420051 () Bool)

(assert (=> b!1481261 (= e!947014 (and tp!420050 tp!420051))))

(declare-fun b!1481263 () Bool)

(declare-fun tp!420052 () Bool)

(declare-fun tp!420054 () Bool)

(assert (=> b!1481263 (= e!947014 (and tp!420052 tp!420054))))

(assert (=> b!1480948 (= tp!419955 e!947014)))

(declare-fun b!1481262 () Bool)

(declare-fun tp!420053 () Bool)

(assert (=> b!1481262 (= e!947014 tp!420053)))

(declare-fun b!1481260 () Bool)

(declare-fun tp_is_empty!6979 () Bool)

(assert (=> b!1481260 (= e!947014 tp_is_empty!6979)))

(assert (= (and b!1480948 ((_ is ElementMatch!4109) (regex!2795 (rule!4572 (h!21073 l2!3105))))) b!1481260))

(assert (= (and b!1480948 ((_ is Concat!6995) (regex!2795 (rule!4572 (h!21073 l2!3105))))) b!1481261))

(assert (= (and b!1480948 ((_ is Star!4109) (regex!2795 (rule!4572 (h!21073 l2!3105))))) b!1481262))

(assert (= (and b!1480948 ((_ is Union!4109) (regex!2795 (rule!4572 (h!21073 l2!3105))))) b!1481263))

(declare-fun b!1481277 () Bool)

(declare-fun b_free!38251 () Bool)

(declare-fun b_next!38955 () Bool)

(assert (=> b!1481277 (= b_free!38251 (not b_next!38955))))

(declare-fun tp!420066 () Bool)

(declare-fun b_and!102753 () Bool)

(assert (=> b!1481277 (= tp!420066 b_and!102753)))

(declare-fun b_free!38253 () Bool)

(declare-fun b_next!38957 () Bool)

(assert (=> b!1481277 (= b_free!38253 (not b_next!38957))))

(declare-fun t!137327 () Bool)

(declare-fun tb!84597 () Bool)

(assert (=> (and b!1481277 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137327) tb!84597))

(declare-fun result!101748 () Bool)

(assert (= result!101748 result!101690))

(assert (=> b!1480985 t!137327))

(declare-fun t!137329 () Bool)

(declare-fun tb!84599 () Bool)

(assert (=> (and b!1481277 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137329) tb!84599))

(declare-fun result!101750 () Bool)

(assert (= result!101750 result!101732))

(assert (=> b!1481227 t!137329))

(declare-fun tp!420065 () Bool)

(declare-fun b_and!102755 () Bool)

(assert (=> b!1481277 (= tp!420065 (and (=> t!137327 result!101748) (=> t!137329 result!101750) b_and!102755))))

(declare-fun e!947028 () Bool)

(assert (=> b!1481277 (= e!947028 (and tp!420066 tp!420065))))

(declare-fun e!947027 () Bool)

(assert (=> b!1480938 (= tp!419952 e!947027)))

(declare-fun b!1481274 () Bool)

(declare-fun tp!420069 () Bool)

(declare-fun e!947030 () Bool)

(assert (=> b!1481274 (= e!947027 (and (inv!20890 (h!21073 (t!137275 l2!3105))) e!947030 tp!420069))))

(declare-fun tp!420067 () Bool)

(declare-fun b!1481275 () Bool)

(declare-fun e!947029 () Bool)

(assert (=> b!1481275 (= e!947030 (and (inv!21 (value!89305 (h!21073 (t!137275 l2!3105)))) e!947029 tp!420067))))

(declare-fun b!1481276 () Bool)

(declare-fun tp!420068 () Bool)

(assert (=> b!1481276 (= e!947029 (and tp!420068 (inv!20886 (tag!3059 (rule!4572 (h!21073 (t!137275 l2!3105))))) (inv!20889 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) e!947028))))

(assert (= b!1481276 b!1481277))

(assert (= b!1481275 b!1481276))

(assert (= b!1481274 b!1481275))

(assert (= (and b!1480938 ((_ is Cons!15672) (t!137275 l2!3105))) b!1481274))

(declare-fun m!1727193 () Bool)

(assert (=> b!1481274 m!1727193))

(declare-fun m!1727195 () Bool)

(assert (=> b!1481275 m!1727195))

(declare-fun m!1727197 () Bool)

(assert (=> b!1481276 m!1727197))

(declare-fun m!1727199 () Bool)

(assert (=> b!1481276 m!1727199))

(declare-fun b!1481282 () Bool)

(declare-fun e!947035 () Bool)

(declare-fun tp!420072 () Bool)

(assert (=> b!1481282 (= e!947035 (and tp_is_empty!6979 tp!420072))))

(assert (=> b!1480943 (= tp!419951 e!947035)))

(assert (= (and b!1480943 ((_ is Cons!15671) (originalCharacters!3657 (h!21073 l1!3136)))) b!1481282))

(declare-fun b!1481286 () Bool)

(declare-fun b_free!38255 () Bool)

(declare-fun b_next!38959 () Bool)

(assert (=> b!1481286 (= b_free!38255 (not b_next!38959))))

(declare-fun tp!420074 () Bool)

(declare-fun b_and!102757 () Bool)

(assert (=> b!1481286 (= tp!420074 b_and!102757)))

(declare-fun b_free!38257 () Bool)

(declare-fun b_next!38961 () Bool)

(assert (=> b!1481286 (= b_free!38257 (not b_next!38961))))

(declare-fun t!137331 () Bool)

(declare-fun tb!84601 () Bool)

(assert (=> (and b!1481286 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137331) tb!84601))

(declare-fun result!101754 () Bool)

(assert (= result!101754 result!101690))

(assert (=> b!1480985 t!137331))

(declare-fun t!137333 () Bool)

(declare-fun tb!84603 () Bool)

(assert (=> (and b!1481286 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137333) tb!84603))

(declare-fun result!101756 () Bool)

(assert (= result!101756 result!101732))

(assert (=> b!1481227 t!137333))

(declare-fun tp!420073 () Bool)

(declare-fun b_and!102759 () Bool)

(assert (=> b!1481286 (= tp!420073 (and (=> t!137331 result!101754) (=> t!137333 result!101756) b_and!102759))))

(declare-fun e!947037 () Bool)

(assert (=> b!1481286 (= e!947037 (and tp!420074 tp!420073))))

(declare-fun e!947036 () Bool)

(assert (=> b!1480944 (= tp!419949 e!947036)))

(declare-fun b!1481283 () Bool)

(declare-fun e!947039 () Bool)

(declare-fun tp!420077 () Bool)

(assert (=> b!1481283 (= e!947036 (and (inv!20890 (h!21073 (t!137275 l1!3136))) e!947039 tp!420077))))

(declare-fun e!947038 () Bool)

(declare-fun tp!420075 () Bool)

(declare-fun b!1481284 () Bool)

(assert (=> b!1481284 (= e!947039 (and (inv!21 (value!89305 (h!21073 (t!137275 l1!3136)))) e!947038 tp!420075))))

(declare-fun b!1481285 () Bool)

(declare-fun tp!420076 () Bool)

(assert (=> b!1481285 (= e!947038 (and tp!420076 (inv!20886 (tag!3059 (rule!4572 (h!21073 (t!137275 l1!3136))))) (inv!20889 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) e!947037))))

(assert (= b!1481285 b!1481286))

(assert (= b!1481284 b!1481285))

(assert (= b!1481283 b!1481284))

(assert (= (and b!1480944 ((_ is Cons!15672) (t!137275 l1!3136))) b!1481283))

(declare-fun m!1727201 () Bool)

(assert (=> b!1481283 m!1727201))

(declare-fun m!1727203 () Bool)

(assert (=> b!1481284 m!1727203))

(declare-fun m!1727205 () Bool)

(assert (=> b!1481285 m!1727205))

(declare-fun m!1727207 () Bool)

(assert (=> b!1481285 m!1727207))

(declare-fun b!1481288 () Bool)

(declare-fun e!947042 () Bool)

(declare-fun tp!420078 () Bool)

(declare-fun tp!420079 () Bool)

(assert (=> b!1481288 (= e!947042 (and tp!420078 tp!420079))))

(declare-fun b!1481290 () Bool)

(declare-fun tp!420080 () Bool)

(declare-fun tp!420082 () Bool)

(assert (=> b!1481290 (= e!947042 (and tp!420080 tp!420082))))

(assert (=> b!1480956 (= tp!419953 e!947042)))

(declare-fun b!1481289 () Bool)

(declare-fun tp!420081 () Bool)

(assert (=> b!1481289 (= e!947042 tp!420081)))

(declare-fun b!1481287 () Bool)

(assert (=> b!1481287 (= e!947042 tp_is_empty!6979)))

(assert (= (and b!1480956 ((_ is ElementMatch!4109) (regex!2795 (h!21074 rules!4290)))) b!1481287))

(assert (= (and b!1480956 ((_ is Concat!6995) (regex!2795 (h!21074 rules!4290)))) b!1481288))

(assert (= (and b!1480956 ((_ is Star!4109) (regex!2795 (h!21074 rules!4290)))) b!1481289))

(assert (= (and b!1480956 ((_ is Union!4109) (regex!2795 (h!21074 rules!4290)))) b!1481290))

(declare-fun b!1481292 () Bool)

(declare-fun e!947043 () Bool)

(declare-fun tp!420083 () Bool)

(declare-fun tp!420084 () Bool)

(assert (=> b!1481292 (= e!947043 (and tp!420083 tp!420084))))

(declare-fun b!1481294 () Bool)

(declare-fun tp!420085 () Bool)

(declare-fun tp!420087 () Bool)

(assert (=> b!1481294 (= e!947043 (and tp!420085 tp!420087))))

(assert (=> b!1480935 (= tp!419956 e!947043)))

(declare-fun b!1481293 () Bool)

(declare-fun tp!420086 () Bool)

(assert (=> b!1481293 (= e!947043 tp!420086)))

(declare-fun b!1481291 () Bool)

(assert (=> b!1481291 (= e!947043 tp_is_empty!6979)))

(assert (= (and b!1480935 ((_ is ElementMatch!4109) (regex!2795 (rule!4572 (h!21073 l1!3136))))) b!1481291))

(assert (= (and b!1480935 ((_ is Concat!6995) (regex!2795 (rule!4572 (h!21073 l1!3136))))) b!1481292))

(assert (= (and b!1480935 ((_ is Star!4109) (regex!2795 (rule!4572 (h!21073 l1!3136))))) b!1481293))

(assert (= (and b!1480935 ((_ is Union!4109) (regex!2795 (rule!4572 (h!21073 l1!3136))))) b!1481294))

(declare-fun b!1481295 () Bool)

(declare-fun e!947044 () Bool)

(declare-fun tp!420088 () Bool)

(assert (=> b!1481295 (= e!947044 (and tp_is_empty!6979 tp!420088))))

(assert (=> b!1480936 (= tp!419946 e!947044)))

(assert (= (and b!1480936 ((_ is Cons!15671) (originalCharacters!3657 (h!21073 l2!3105)))) b!1481295))

(declare-fun b_lambda!46367 () Bool)

(assert (= b_lambda!46355 (or (and b!1480955 b_free!38229) (and b!1480954 b_free!38233 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))))) (and b!1481286 b_free!38257 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))))) (and b!1481277 b_free!38253 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))))) (and b!1480939 b_free!38225 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))))) (and b!1481249 b_free!38249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))))) b_lambda!46367)))

(declare-fun b_lambda!46369 () Bool)

(assert (= b_lambda!46365 (or (and b!1481277 b_free!38253 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))))) (and b!1481286 b_free!38257 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))))) (and b!1480939 b_free!38225) (and b!1480955 b_free!38229 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))))) (and b!1481249 b_free!38249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))))) (and b!1480954 b_free!38233 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))))) b_lambda!46369)))

(check-sat b_and!102745 (not b!1481227) (not b!1480986) (not b!1481288) (not b!1481058) (not b!1481117) (not b!1481116) (not tb!84557) b_and!102757 (not d!434297) (not b_lambda!46367) (not b!1481211) (not b!1481225) (not d!434277) (not b!1481235) (not b!1481082) b_and!102755 (not b!1480980) (not d!434281) (not b!1481231) (not d!434283) (not b!1480991) (not b!1481262) (not b_next!38951) (not b!1481247) b_and!102759 (not b!1480985) (not b!1481274) b_and!102747 (not b!1480977) (not b!1481276) (not d!434255) (not d!434199) (not d!434191) (not b!1481232) (not d!434275) b_and!102751 (not b_next!38929) (not b_next!38959) (not d!434237) (not b_next!38961) b_and!102749 (not b!1481263) (not b!1481110) (not b!1481114) (not b_next!38927) (not b!1481228) (not b!1481001) (not b!1481207) (not b_next!38955) (not b!1481282) (not b!1481199) (not b!1481284) (not b!1481289) b_and!102753 (not d!434195) (not b!1481067) (not b!1481000) (not b!1481285) (not b!1481248) (not d!434193) (not b_next!38931) (not b_next!38937) (not b!1481210) (not b!1481290) tp_is_empty!6979 (not b!1481223) (not b!1481238) b_and!102709 (not b!1481208) (not d!434251) (not b!1481294) (not b!1481283) (not b!1481261) (not b!1481081) (not b!1481118) (not b_next!38933) (not b!1481229) (not b!1481057) (not b!1481292) (not d!434293) (not b!1481109) (not b!1481233) (not b!1481295) (not b_next!38953) (not b!1481275) (not b!1481293) (not d!434239) (not b!1481115) (not b!1481206) b_and!102705 (not b!1481209) (not tb!84587) (not b_next!38957) (not b!1481237) (not b!1481226) b_and!102743 (not b_next!38935) (not b_lambda!46369) (not d!434259) b_and!102701 (not d!434287) (not b!1481111) (not b!1481230) (not d!434279))
(check-sat b_and!102757 b_and!102755 b_and!102747 (not b_next!38961) b_and!102749 b_and!102753 b_and!102745 b_and!102709 (not b_next!38933) (not b_next!38953) b_and!102705 (not b_next!38957) (not b_next!38951) b_and!102759 b_and!102751 (not b_next!38929) (not b_next!38959) (not b_next!38927) (not b_next!38955) (not b_next!38931) (not b_next!38937) b_and!102743 (not b_next!38935) b_and!102701)
(get-model)

(declare-fun d!434313 () Bool)

(declare-fun lt!514656 () Int)

(assert (=> d!434313 (>= lt!514656 0)))

(declare-fun e!947049 () Int)

(assert (=> d!434313 (= lt!514656 e!947049)))

(declare-fun c!242948 () Bool)

(assert (=> d!434313 (= c!242948 ((_ is Nil!15672) lt!514566))))

(assert (=> d!434313 (= (size!12696 lt!514566) lt!514656)))

(declare-fun b!1481306 () Bool)

(assert (=> b!1481306 (= e!947049 0)))

(declare-fun b!1481307 () Bool)

(assert (=> b!1481307 (= e!947049 (+ 1 (size!12696 (t!137275 lt!514566))))))

(assert (= (and d!434313 c!242948) b!1481306))

(assert (= (and d!434313 (not c!242948)) b!1481307))

(declare-fun m!1727235 () Bool)

(assert (=> b!1481307 m!1727235))

(assert (=> b!1481082 d!434313))

(declare-fun d!434315 () Bool)

(declare-fun lt!514657 () Int)

(assert (=> d!434315 (>= lt!514657 0)))

(declare-fun e!947050 () Int)

(assert (=> d!434315 (= lt!514657 e!947050)))

(declare-fun c!242949 () Bool)

(assert (=> d!434315 (= c!242949 ((_ is Nil!15672) l1!3136))))

(assert (=> d!434315 (= (size!12696 l1!3136) lt!514657)))

(declare-fun b!1481308 () Bool)

(assert (=> b!1481308 (= e!947050 0)))

(declare-fun b!1481309 () Bool)

(assert (=> b!1481309 (= e!947050 (+ 1 (size!12696 (t!137275 l1!3136))))))

(assert (= (and d!434315 c!242949) b!1481308))

(assert (= (and d!434315 (not c!242949)) b!1481309))

(declare-fun m!1727237 () Bool)

(assert (=> b!1481309 m!1727237))

(assert (=> b!1481082 d!434315))

(declare-fun d!434317 () Bool)

(declare-fun lt!514658 () Int)

(assert (=> d!434317 (>= lt!514658 0)))

(declare-fun e!947051 () Int)

(assert (=> d!434317 (= lt!514658 e!947051)))

(declare-fun c!242950 () Bool)

(assert (=> d!434317 (= c!242950 ((_ is Nil!15672) l2!3105))))

(assert (=> d!434317 (= (size!12696 l2!3105) lt!514658)))

(declare-fun b!1481310 () Bool)

(assert (=> b!1481310 (= e!947051 0)))

(declare-fun b!1481311 () Bool)

(assert (=> b!1481311 (= e!947051 (+ 1 (size!12696 (t!137275 l2!3105))))))

(assert (= (and d!434317 c!242950) b!1481310))

(assert (= (and d!434317 (not c!242950)) b!1481311))

(declare-fun m!1727239 () Bool)

(assert (=> b!1481311 m!1727239))

(assert (=> b!1481082 d!434317))

(declare-fun d!434319 () Bool)

(declare-fun lt!514661 () Token!5252)

(declare-fun apply!4053 (List!15738 Int) Token!5252)

(assert (=> d!434319 (= lt!514661 (apply!4053 (list!6230 (_1!8055 lt!514635)) 0))))

(declare-fun apply!4054 (Conc!5341 Int) Token!5252)

(assert (=> d!434319 (= lt!514661 (apply!4054 (c!242945 (_1!8055 lt!514635)) 0))))

(declare-fun e!947054 () Bool)

(assert (=> d!434319 e!947054))

(declare-fun res!669318 () Bool)

(assert (=> d!434319 (=> (not res!669318) (not e!947054))))

(assert (=> d!434319 (= res!669318 (<= 0 0))))

(assert (=> d!434319 (= (apply!4052 (_1!8055 lt!514635) 0) lt!514661)))

(declare-fun b!1481314 () Bool)

(assert (=> b!1481314 (= e!947054 (< 0 (size!12697 (_1!8055 lt!514635))))))

(assert (= (and d!434319 res!669318) b!1481314))

(declare-fun m!1727241 () Bool)

(assert (=> d!434319 m!1727241))

(assert (=> d!434319 m!1727241))

(declare-fun m!1727243 () Bool)

(assert (=> d!434319 m!1727243))

(declare-fun m!1727245 () Bool)

(assert (=> d!434319 m!1727245))

(assert (=> b!1481314 m!1727129))

(assert (=> b!1481209 d!434319))

(declare-fun d!434321 () Bool)

(declare-fun res!669319 () Bool)

(declare-fun e!947055 () Bool)

(assert (=> d!434321 (=> (not res!669319) (not e!947055))))

(assert (=> d!434321 (= res!669319 (not (isEmpty!9806 (originalCharacters!3657 (h!21073 (t!137275 l1!3136))))))))

(assert (=> d!434321 (= (inv!20890 (h!21073 (t!137275 l1!3136))) e!947055)))

(declare-fun b!1481315 () Bool)

(declare-fun res!669320 () Bool)

(assert (=> b!1481315 (=> (not res!669320) (not e!947055))))

(assert (=> b!1481315 (= res!669320 (= (originalCharacters!3657 (h!21073 (t!137275 l1!3136))) (list!6229 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (value!89305 (h!21073 (t!137275 l1!3136)))))))))

(declare-fun b!1481316 () Bool)

(assert (=> b!1481316 (= e!947055 (= (size!12689 (h!21073 (t!137275 l1!3136))) (size!12694 (originalCharacters!3657 (h!21073 (t!137275 l1!3136))))))))

(assert (= (and d!434321 res!669319) b!1481315))

(assert (= (and b!1481315 res!669320) b!1481316))

(declare-fun b_lambda!46371 () Bool)

(assert (=> (not b_lambda!46371) (not b!1481315)))

(declare-fun t!137336 () Bool)

(declare-fun tb!84605 () Bool)

(assert (=> (and b!1481286 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137336) tb!84605))

(declare-fun b!1481317 () Bool)

(declare-fun e!947056 () Bool)

(declare-fun tp!420089 () Bool)

(assert (=> b!1481317 (= e!947056 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (value!89305 (h!21073 (t!137275 l1!3136)))))) tp!420089))))

(declare-fun result!101758 () Bool)

(assert (=> tb!84605 (= result!101758 (and (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (value!89305 (h!21073 (t!137275 l1!3136))))) e!947056))))

(assert (= tb!84605 b!1481317))

(declare-fun m!1727247 () Bool)

(assert (=> b!1481317 m!1727247))

(declare-fun m!1727249 () Bool)

(assert (=> tb!84605 m!1727249))

(assert (=> b!1481315 t!137336))

(declare-fun b_and!102761 () Bool)

(assert (= b_and!102759 (and (=> t!137336 result!101758) b_and!102761)))

(declare-fun t!137338 () Bool)

(declare-fun tb!84607 () Bool)

(assert (=> (and b!1480939 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137338) tb!84607))

(declare-fun result!101760 () Bool)

(assert (= result!101760 result!101758))

(assert (=> b!1481315 t!137338))

(declare-fun b_and!102763 () Bool)

(assert (= b_and!102743 (and (=> t!137338 result!101760) b_and!102763)))

(declare-fun t!137340 () Bool)

(declare-fun tb!84609 () Bool)

(assert (=> (and b!1481249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137340) tb!84609))

(declare-fun result!101762 () Bool)

(assert (= result!101762 result!101758))

(assert (=> b!1481315 t!137340))

(declare-fun b_and!102765 () Bool)

(assert (= b_and!102751 (and (=> t!137340 result!101762) b_and!102765)))

(declare-fun tb!84611 () Bool)

(declare-fun t!137342 () Bool)

(assert (=> (and b!1480955 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137342) tb!84611))

(declare-fun result!101764 () Bool)

(assert (= result!101764 result!101758))

(assert (=> b!1481315 t!137342))

(declare-fun b_and!102767 () Bool)

(assert (= b_and!102745 (and (=> t!137342 result!101764) b_and!102767)))

(declare-fun tb!84613 () Bool)

(declare-fun t!137344 () Bool)

(assert (=> (and b!1481277 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137344) tb!84613))

(declare-fun result!101766 () Bool)

(assert (= result!101766 result!101758))

(assert (=> b!1481315 t!137344))

(declare-fun b_and!102769 () Bool)

(assert (= b_and!102755 (and (=> t!137344 result!101766) b_and!102769)))

(declare-fun tb!84615 () Bool)

(declare-fun t!137346 () Bool)

(assert (=> (and b!1480954 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137346) tb!84615))

(declare-fun result!101768 () Bool)

(assert (= result!101768 result!101758))

(assert (=> b!1481315 t!137346))

(declare-fun b_and!102771 () Bool)

(assert (= b_and!102747 (and (=> t!137346 result!101768) b_and!102771)))

(declare-fun m!1727251 () Bool)

(assert (=> d!434321 m!1727251))

(declare-fun m!1727253 () Bool)

(assert (=> b!1481315 m!1727253))

(assert (=> b!1481315 m!1727253))

(declare-fun m!1727255 () Bool)

(assert (=> b!1481315 m!1727255))

(declare-fun m!1727257 () Bool)

(assert (=> b!1481316 m!1727257))

(assert (=> b!1481283 d!434321))

(declare-fun d!434323 () Bool)

(declare-fun res!669322 () Bool)

(declare-fun e!947057 () Bool)

(assert (=> d!434323 (=> res!669322 e!947057)))

(assert (=> d!434323 (= res!669322 (or (not ((_ is Cons!15672) (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))) (not ((_ is Cons!15672) (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))))))))

(assert (=> d!434323 (= (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))) rules!4290) e!947057)))

(declare-fun b!1481318 () Bool)

(declare-fun e!947058 () Bool)

(assert (=> b!1481318 (= e!947057 e!947058)))

(declare-fun res!669321 () Bool)

(assert (=> b!1481318 (=> (not res!669321) (not e!947058))))

(assert (=> b!1481318 (= res!669321 (separableTokensPredicate!590 thiss!27374 (h!21073 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105)))) (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))) rules!4290))))

(declare-fun lt!514666 () Unit!25520)

(declare-fun Unit!25543 () Unit!25520)

(assert (=> b!1481318 (= lt!514666 Unit!25543)))

(assert (=> b!1481318 (> (size!12695 (charsOf!1603 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))))) 0)))

(declare-fun lt!514668 () Unit!25520)

(declare-fun Unit!25544 () Unit!25520)

(assert (=> b!1481318 (= lt!514668 Unit!25544)))

(assert (=> b!1481318 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))))))

(declare-fun lt!514665 () Unit!25520)

(declare-fun Unit!25545 () Unit!25520)

(assert (=> b!1481318 (= lt!514665 Unit!25545)))

(assert (=> b!1481318 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105)))))))

(declare-fun lt!514664 () Unit!25520)

(declare-fun lt!514667 () Unit!25520)

(assert (=> b!1481318 (= lt!514664 lt!514667)))

(assert (=> b!1481318 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))))))

(assert (=> b!1481318 (= lt!514667 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))) (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105)))))))))

(declare-fun lt!514663 () Unit!25520)

(declare-fun lt!514662 () Unit!25520)

(assert (=> b!1481318 (= lt!514663 lt!514662)))

(assert (=> b!1481318 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105)))))))

(assert (=> b!1481318 (= lt!514662 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))) (h!21073 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))))))

(declare-fun b!1481319 () Bool)

(assert (=> b!1481319 (= e!947058 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105))))) (t!137275 (t!137275 (Cons!15672 (h!21073 (t!137275 l2!3105)) (t!137275 (t!137275 l2!3105)))))) rules!4290))))

(assert (= (and d!434323 (not res!669322)) b!1481318))

(assert (= (and b!1481318 res!669321) b!1481319))

(declare-fun m!1727259 () Bool)

(assert (=> b!1481318 m!1727259))

(declare-fun m!1727261 () Bool)

(assert (=> b!1481318 m!1727261))

(declare-fun m!1727263 () Bool)

(assert (=> b!1481318 m!1727263))

(assert (=> b!1481318 m!1727259))

(declare-fun m!1727265 () Bool)

(assert (=> b!1481318 m!1727265))

(declare-fun m!1727267 () Bool)

(assert (=> b!1481318 m!1727267))

(declare-fun m!1727269 () Bool)

(assert (=> b!1481318 m!1727269))

(declare-fun m!1727271 () Bool)

(assert (=> b!1481318 m!1727271))

(declare-fun m!1727273 () Bool)

(assert (=> b!1481319 m!1727273))

(assert (=> b!1481115 d!434323))

(declare-fun bs!345870 () Bool)

(declare-fun d!434325 () Bool)

(assert (= bs!345870 (and d!434325 d!434199)))

(declare-fun lambda!63783 () Int)

(assert (=> bs!345870 (= lambda!63783 lambda!63775)))

(declare-fun bs!345871 () Bool)

(assert (= bs!345871 (and d!434325 d!434251)))

(assert (=> bs!345871 (= lambda!63783 lambda!63777)))

(declare-fun bs!345872 () Bool)

(assert (= bs!345872 (and d!434325 d!434255)))

(assert (=> bs!345872 (= lambda!63783 lambda!63778)))

(declare-fun b!1481324 () Bool)

(declare-fun e!947063 () Bool)

(assert (=> b!1481324 (= e!947063 true)))

(declare-fun b!1481323 () Bool)

(declare-fun e!947062 () Bool)

(assert (=> b!1481323 (= e!947062 e!947063)))

(declare-fun b!1481322 () Bool)

(declare-fun e!947061 () Bool)

(assert (=> b!1481322 (= e!947061 e!947062)))

(assert (=> d!434325 e!947061))

(assert (= b!1481323 b!1481324))

(assert (= b!1481322 b!1481323))

(assert (= (and d!434325 ((_ is Cons!15673) rules!4290)) b!1481322))

(assert (=> b!1481324 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63783))))

(assert (=> b!1481324 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63783))))

(assert (=> d!434325 true))

(declare-fun lt!514669 () Bool)

(assert (=> d!434325 (= lt!514669 (forall!3812 (t!137275 lt!514518) lambda!63783))))

(declare-fun e!947060 () Bool)

(assert (=> d!434325 (= lt!514669 e!947060)))

(declare-fun res!669324 () Bool)

(assert (=> d!434325 (=> res!669324 e!947060)))

(assert (=> d!434325 (= res!669324 (not ((_ is Cons!15672) (t!137275 lt!514518))))))

(assert (=> d!434325 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434325 (= (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 lt!514518)) lt!514669)))

(declare-fun b!1481320 () Bool)

(declare-fun e!947059 () Bool)

(assert (=> b!1481320 (= e!947060 e!947059)))

(declare-fun res!669323 () Bool)

(assert (=> b!1481320 (=> (not res!669323) (not e!947059))))

(assert (=> b!1481320 (= res!669323 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 lt!514518))))))

(declare-fun b!1481321 () Bool)

(assert (=> b!1481321 (= e!947059 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 (t!137275 lt!514518))))))

(assert (= (and d!434325 (not res!669324)) b!1481320))

(assert (= (and b!1481320 res!669323) b!1481321))

(declare-fun m!1727275 () Bool)

(assert (=> d!434325 m!1727275))

(assert (=> d!434325 m!1726761))

(assert (=> b!1481320 m!1726829))

(declare-fun m!1727277 () Bool)

(assert (=> b!1481321 m!1727277))

(assert (=> b!1481058 d!434325))

(assert (=> d!434259 d!434283))

(declare-fun d!434327 () Bool)

(assert (=> d!434327 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514520)))

(assert (=> d!434327 true))

(declare-fun _$77!651 () Unit!25520)

(assert (=> d!434327 (= (choose!9068 thiss!27374 rules!4290 l1!3136 lt!514520) _$77!651)))

(declare-fun bs!345873 () Bool)

(assert (= bs!345873 d!434327))

(assert (=> bs!345873 m!1726775))

(assert (=> d!434259 d!434327))

(assert (=> d!434259 d!434299))

(declare-fun d!434331 () Bool)

(declare-fun isBalanced!1584 (Conc!5339) Bool)

(assert (=> d!434331 (= (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))) (isBalanced!1584 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))))))

(declare-fun bs!345874 () Bool)

(assert (= bs!345874 d!434331))

(declare-fun m!1727297 () Bool)

(assert (=> bs!345874 m!1727297))

(assert (=> tb!84557 d!434331))

(declare-fun bs!345875 () Bool)

(declare-fun d!434333 () Bool)

(assert (= bs!345875 (and d!434333 d!434199)))

(declare-fun lambda!63784 () Int)

(assert (=> bs!345875 (= lambda!63784 lambda!63775)))

(declare-fun bs!345876 () Bool)

(assert (= bs!345876 (and d!434333 d!434251)))

(assert (=> bs!345876 (= lambda!63784 lambda!63777)))

(declare-fun bs!345877 () Bool)

(assert (= bs!345877 (and d!434333 d!434255)))

(assert (=> bs!345877 (= lambda!63784 lambda!63778)))

(declare-fun bs!345878 () Bool)

(assert (= bs!345878 (and d!434333 d!434325)))

(assert (=> bs!345878 (= lambda!63784 lambda!63783)))

(declare-fun b!1481344 () Bool)

(declare-fun e!947077 () Bool)

(assert (=> b!1481344 (= e!947077 true)))

(declare-fun b!1481343 () Bool)

(declare-fun e!947076 () Bool)

(assert (=> b!1481343 (= e!947076 e!947077)))

(declare-fun b!1481342 () Bool)

(declare-fun e!947075 () Bool)

(assert (=> b!1481342 (= e!947075 e!947076)))

(assert (=> d!434333 e!947075))

(assert (= b!1481343 b!1481344))

(assert (= b!1481342 b!1481343))

(assert (= (and d!434333 ((_ is Cons!15673) rules!4290)) b!1481342))

(assert (=> b!1481344 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63784))))

(assert (=> b!1481344 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63784))))

(assert (=> d!434333 true))

(declare-fun lt!514673 () Bool)

(assert (=> d!434333 (= lt!514673 (forall!3812 (++!4224 l1!3136 l2!3105) lambda!63784))))

(declare-fun e!947074 () Bool)

(assert (=> d!434333 (= lt!514673 e!947074)))

(declare-fun res!669335 () Bool)

(assert (=> d!434333 (=> res!669335 e!947074)))

(assert (=> d!434333 (= res!669335 (not ((_ is Cons!15672) (++!4224 l1!3136 l2!3105))))))

(assert (=> d!434333 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434333 (= (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (++!4224 l1!3136 l2!3105)) lt!514673)))

(declare-fun b!1481340 () Bool)

(declare-fun e!947073 () Bool)

(assert (=> b!1481340 (= e!947074 e!947073)))

(declare-fun res!669334 () Bool)

(assert (=> b!1481340 (=> (not res!669334) (not e!947073))))

(assert (=> b!1481340 (= res!669334 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (++!4224 l1!3136 l2!3105))))))

(declare-fun b!1481341 () Bool)

(assert (=> b!1481341 (= e!947073 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 (++!4224 l1!3136 l2!3105))))))

(assert (= (and d!434333 (not res!669335)) b!1481340))

(assert (= (and b!1481340 res!669334) b!1481341))

(assert (=> d!434333 m!1726745))

(declare-fun m!1727299 () Bool)

(assert (=> d!434333 m!1727299))

(assert (=> d!434333 m!1726761))

(declare-fun m!1727301 () Bool)

(assert (=> b!1481340 m!1727301))

(declare-fun m!1727303 () Bool)

(assert (=> b!1481341 m!1727303))

(assert (=> d!434239 d!434333))

(assert (=> d!434239 d!434237))

(declare-fun d!434335 () Bool)

(assert (=> d!434335 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (++!4224 l1!3136 l2!3105))))

(assert (=> d!434335 true))

(declare-fun _$79!126 () Unit!25520)

(assert (=> d!434335 (= (choose!9067 thiss!27374 rules!4290 l1!3136 l2!3105) _$79!126)))

(declare-fun bs!345889 () Bool)

(assert (= bs!345889 d!434335))

(assert (=> bs!345889 m!1726745))

(assert (=> bs!345889 m!1726745))

(assert (=> bs!345889 m!1726991))

(assert (=> d!434239 d!434335))

(assert (=> d!434239 d!434299))

(declare-fun d!434365 () Bool)

(declare-fun lt!514694 () Bool)

(assert (=> d!434365 (= lt!514694 (select (content!2279 l1!3136) lt!514627))))

(declare-fun e!947119 () Bool)

(assert (=> d!434365 (= lt!514694 e!947119)))

(declare-fun res!669364 () Bool)

(assert (=> d!434365 (=> (not res!669364) (not e!947119))))

(assert (=> d!434365 (= res!669364 ((_ is Cons!15672) l1!3136))))

(assert (=> d!434365 (= (contains!2953 l1!3136 lt!514627) lt!514694)))

(declare-fun b!1481397 () Bool)

(declare-fun e!947120 () Bool)

(assert (=> b!1481397 (= e!947119 e!947120)))

(declare-fun res!669365 () Bool)

(assert (=> b!1481397 (=> res!669365 e!947120)))

(assert (=> b!1481397 (= res!669365 (= (h!21073 l1!3136) lt!514627))))

(declare-fun b!1481398 () Bool)

(assert (=> b!1481398 (= e!947120 (contains!2953 (t!137275 l1!3136) lt!514627))))

(assert (= (and d!434365 res!669364) b!1481397))

(assert (= (and b!1481397 (not res!669365)) b!1481398))

(assert (=> d!434365 m!1726937))

(declare-fun m!1727369 () Bool)

(assert (=> d!434365 m!1727369))

(declare-fun m!1727371 () Bool)

(assert (=> b!1481398 m!1727371))

(assert (=> d!434275 d!434365))

(assert (=> d!434275 d!434249))

(declare-fun d!434367 () Bool)

(assert (=> d!434367 (= (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))) (isBalanced!1584 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))))))

(declare-fun bs!345890 () Bool)

(assert (= bs!345890 d!434367))

(declare-fun m!1727373 () Bool)

(assert (=> bs!345890 m!1727373))

(assert (=> tb!84587 d!434367))

(declare-fun d!434369 () Bool)

(declare-fun charsToBigInt!0 (List!15736 Int) Int)

(assert (=> d!434369 (= (inv!15 (value!89305 (h!21073 l1!3136))) (= (charsToBigInt!0 (text!20644 (value!89305 (h!21073 l1!3136))) 0) (value!89300 (value!89305 (h!21073 l1!3136)))))))

(declare-fun bs!345891 () Bool)

(assert (= bs!345891 d!434369))

(declare-fun m!1727375 () Bool)

(assert (=> bs!345891 m!1727375))

(assert (=> b!1481225 d!434369))

(declare-fun d!434371 () Bool)

(declare-fun c!242965 () Bool)

(assert (=> d!434371 (= c!242965 ((_ is Node!5339) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))))))

(declare-fun e!947125 () Bool)

(assert (=> d!434371 (= (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))) e!947125)))

(declare-fun b!1481405 () Bool)

(declare-fun inv!20897 (Conc!5339) Bool)

(assert (=> b!1481405 (= e!947125 (inv!20897 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))))))

(declare-fun b!1481406 () Bool)

(declare-fun e!947126 () Bool)

(assert (=> b!1481406 (= e!947125 e!947126)))

(declare-fun res!669368 () Bool)

(assert (=> b!1481406 (= res!669368 (not ((_ is Leaf!7938) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))))))))

(assert (=> b!1481406 (=> res!669368 e!947126)))

(declare-fun b!1481407 () Bool)

(declare-fun inv!20898 (Conc!5339) Bool)

(assert (=> b!1481407 (= e!947126 (inv!20898 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))))))

(assert (= (and d!434371 c!242965) b!1481405))

(assert (= (and d!434371 (not c!242965)) b!1481406))

(assert (= (and b!1481406 (not res!669368)) b!1481407))

(declare-fun m!1727377 () Bool)

(assert (=> b!1481405 m!1727377))

(declare-fun m!1727379 () Bool)

(assert (=> b!1481407 m!1727379))

(assert (=> b!1480991 d!434371))

(declare-fun bs!345892 () Bool)

(declare-fun d!434373 () Bool)

(assert (= bs!345892 (and d!434373 d!434333)))

(declare-fun lambda!63790 () Int)

(assert (=> bs!345892 (= lambda!63790 lambda!63784)))

(declare-fun bs!345893 () Bool)

(assert (= bs!345893 (and d!434373 d!434251)))

(assert (=> bs!345893 (= lambda!63790 lambda!63777)))

(declare-fun bs!345894 () Bool)

(assert (= bs!345894 (and d!434373 d!434325)))

(assert (=> bs!345894 (= lambda!63790 lambda!63783)))

(declare-fun bs!345895 () Bool)

(assert (= bs!345895 (and d!434373 d!434199)))

(assert (=> bs!345895 (= lambda!63790 lambda!63775)))

(declare-fun bs!345896 () Bool)

(assert (= bs!345896 (and d!434373 d!434255)))

(assert (=> bs!345896 (= lambda!63790 lambda!63778)))

(declare-fun b!1481412 () Bool)

(declare-fun e!947131 () Bool)

(assert (=> b!1481412 (= e!947131 true)))

(declare-fun b!1481411 () Bool)

(declare-fun e!947130 () Bool)

(assert (=> b!1481411 (= e!947130 e!947131)))

(declare-fun b!1481410 () Bool)

(declare-fun e!947129 () Bool)

(assert (=> b!1481410 (= e!947129 e!947130)))

(assert (=> d!434373 e!947129))

(assert (= b!1481411 b!1481412))

(assert (= b!1481410 b!1481411))

(assert (= (and d!434373 ((_ is Cons!15673) rules!4290)) b!1481410))

(assert (=> b!1481412 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63790))))

(assert (=> b!1481412 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63790))))

(assert (=> d!434373 true))

(declare-fun lt!514695 () Bool)

(assert (=> d!434373 (= lt!514695 (forall!3812 (t!137275 l2!3105) lambda!63790))))

(declare-fun e!947128 () Bool)

(assert (=> d!434373 (= lt!514695 e!947128)))

(declare-fun res!669370 () Bool)

(assert (=> d!434373 (=> res!669370 e!947128)))

(assert (=> d!434373 (= res!669370 (not ((_ is Cons!15672) (t!137275 l2!3105))))))

(assert (=> d!434373 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434373 (= (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 l2!3105)) lt!514695)))

(declare-fun b!1481408 () Bool)

(declare-fun e!947127 () Bool)

(assert (=> b!1481408 (= e!947128 e!947127)))

(declare-fun res!669369 () Bool)

(assert (=> b!1481408 (=> (not res!669369) (not e!947127))))

(assert (=> b!1481408 (= res!669369 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l2!3105))))))

(declare-fun b!1481409 () Bool)

(assert (=> b!1481409 (= e!947127 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 (t!137275 l2!3105))))))

(assert (= (and d!434373 (not res!669370)) b!1481408))

(assert (= (and b!1481408 res!669369) b!1481409))

(declare-fun m!1727381 () Bool)

(assert (=> d!434373 m!1727381))

(assert (=> d!434373 m!1726761))

(assert (=> b!1481408 m!1727009))

(declare-fun m!1727383 () Bool)

(assert (=> b!1481409 m!1727383))

(assert (=> b!1481110 d!434373))

(declare-fun d!434375 () Bool)

(declare-fun charsToInt!0 (List!15736) (_ BitVec 32))

(assert (=> d!434375 (= (inv!16 (value!89305 (h!21073 l1!3136))) (= (charsToInt!0 (text!20642 (value!89305 (h!21073 l1!3136)))) (value!89296 (value!89305 (h!21073 l1!3136)))))))

(declare-fun bs!345897 () Bool)

(assert (= bs!345897 d!434375))

(declare-fun m!1727385 () Bool)

(assert (=> bs!345897 m!1727385))

(assert (=> b!1481223 d!434375))

(declare-fun d!434377 () Bool)

(declare-fun e!947134 () Bool)

(assert (=> d!434377 e!947134))

(declare-fun res!669373 () Bool)

(assert (=> d!434377 (=> (not res!669373) (not e!947134))))

(declare-fun lt!514698 () BalanceConc!10622)

(assert (=> d!434377 (= res!669373 (= (list!6230 lt!514698) (Cons!15672 lt!514520 Nil!15672)))))

(declare-fun singleton!552 (Token!5252) BalanceConc!10622)

(assert (=> d!434377 (= lt!514698 (singleton!552 lt!514520))))

(assert (=> d!434377 (= (singletonSeq!1337 lt!514520) lt!514698)))

(declare-fun b!1481415 () Bool)

(declare-fun isBalanced!1585 (Conc!5341) Bool)

(assert (=> b!1481415 (= e!947134 (isBalanced!1585 (c!242945 lt!514698)))))

(assert (= (and d!434377 res!669373) b!1481415))

(declare-fun m!1727387 () Bool)

(assert (=> d!434377 m!1727387))

(declare-fun m!1727389 () Bool)

(assert (=> d!434377 m!1727389))

(declare-fun m!1727391 () Bool)

(assert (=> b!1481415 m!1727391))

(assert (=> d!434283 d!434377))

(declare-fun d!434379 () Bool)

(declare-fun lt!514701 () Int)

(assert (=> d!434379 (= lt!514701 (size!12696 (list!6230 (_1!8055 lt!514635))))))

(declare-fun size!12698 (Conc!5341) Int)

(assert (=> d!434379 (= lt!514701 (size!12698 (c!242945 (_1!8055 lt!514635))))))

(assert (=> d!434379 (= (size!12697 (_1!8055 lt!514635)) lt!514701)))

(declare-fun bs!345898 () Bool)

(assert (= bs!345898 d!434379))

(assert (=> bs!345898 m!1727241))

(assert (=> bs!345898 m!1727241))

(declare-fun m!1727393 () Bool)

(assert (=> bs!345898 m!1727393))

(declare-fun m!1727395 () Bool)

(assert (=> bs!345898 m!1727395))

(assert (=> d!434283 d!434379))

(declare-fun d!434381 () Bool)

(declare-fun lt!514704 () BalanceConc!10618)

(declare-fun printList!771 (LexerInterface!2451 List!15738) List!15737)

(assert (=> d!434381 (= (list!6229 lt!514704) (printList!771 thiss!27374 (list!6230 (singletonSeq!1337 lt!514520))))))

(declare-fun printTailRec!707 (LexerInterface!2451 BalanceConc!10622 Int BalanceConc!10618) BalanceConc!10618)

(assert (=> d!434381 (= lt!514704 (printTailRec!707 thiss!27374 (singletonSeq!1337 lt!514520) 0 (BalanceConc!10619 Empty!5339)))))

(assert (=> d!434381 (= (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)) lt!514704)))

(declare-fun bs!345899 () Bool)

(assert (= bs!345899 d!434381))

(declare-fun m!1727397 () Bool)

(assert (=> bs!345899 m!1727397))

(assert (=> bs!345899 m!1727125))

(assert (=> bs!345899 m!1727127))

(assert (=> bs!345899 m!1727127))

(declare-fun m!1727399 () Bool)

(assert (=> bs!345899 m!1727399))

(assert (=> bs!345899 m!1727125))

(declare-fun m!1727401 () Bool)

(assert (=> bs!345899 m!1727401))

(assert (=> d!434283 d!434381))

(declare-fun lt!514746 () tuple2!14338)

(declare-fun e!947178 () Bool)

(declare-fun b!1481480 () Bool)

(assert (=> b!1481480 (= e!947178 (= (_2!8055 lt!514746) (print!1143 thiss!27374 (singletonSeq!1337 lt!514520))))))

(declare-fun b!1481482 () Bool)

(declare-fun e!947177 () Bool)

(declare-fun isEmpty!9810 (BalanceConc!10622) Bool)

(assert (=> b!1481482 (= e!947177 (not (isEmpty!9810 (_1!8055 lt!514746))))))

(declare-fun e!947176 () Bool)

(declare-fun b!1481483 () Bool)

(declare-datatypes ((tuple2!14342 0))(
  ( (tuple2!14343 (_1!8057 List!15738) (_2!8057 List!15737)) )
))
(declare-fun lexList!724 (LexerInterface!2451 List!15739 List!15737) tuple2!14342)

(assert (=> b!1481483 (= e!947176 (= (list!6229 (_2!8055 lt!514746)) (_2!8057 (lexList!724 thiss!27374 rules!4290 (list!6229 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)))))))))

(declare-fun b!1481484 () Bool)

(assert (=> b!1481484 (= e!947178 e!947177)))

(declare-fun res!669409 () Bool)

(assert (=> b!1481484 (= res!669409 (< (size!12695 (_2!8055 lt!514746)) (size!12695 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)))))))

(assert (=> b!1481484 (=> (not res!669409) (not e!947177))))

(declare-fun d!434383 () Bool)

(assert (=> d!434383 e!947176))

(declare-fun res!669408 () Bool)

(assert (=> d!434383 (=> (not res!669408) (not e!947176))))

(assert (=> d!434383 (= res!669408 e!947178)))

(declare-fun c!242980 () Bool)

(assert (=> d!434383 (= c!242980 (> (size!12697 (_1!8055 lt!514746)) 0))))

(declare-fun lexTailRecV2!479 (LexerInterface!2451 List!15739 BalanceConc!10618 BalanceConc!10618 BalanceConc!10618 BalanceConc!10622) tuple2!14338)

(assert (=> d!434383 (= lt!514746 (lexTailRecV2!479 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)) (BalanceConc!10619 Empty!5339) (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)) (BalanceConc!10623 Empty!5341)))))

(assert (=> d!434383 (= (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520))) lt!514746)))

(declare-fun b!1481481 () Bool)

(declare-fun res!669407 () Bool)

(assert (=> b!1481481 (=> (not res!669407) (not e!947176))))

(assert (=> b!1481481 (= res!669407 (= (list!6230 (_1!8055 lt!514746)) (_1!8057 (lexList!724 thiss!27374 rules!4290 (list!6229 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)))))))))

(assert (= (and d!434383 c!242980) b!1481484))

(assert (= (and d!434383 (not c!242980)) b!1481480))

(assert (= (and b!1481484 res!669409) b!1481482))

(assert (= (and d!434383 res!669408) b!1481481))

(assert (= (and b!1481481 res!669407) b!1481483))

(declare-fun m!1727687 () Bool)

(assert (=> d!434383 m!1727687))

(assert (=> d!434383 m!1727131))

(assert (=> d!434383 m!1727131))

(declare-fun m!1727689 () Bool)

(assert (=> d!434383 m!1727689))

(declare-fun m!1727691 () Bool)

(assert (=> b!1481482 m!1727691))

(declare-fun m!1727693 () Bool)

(assert (=> b!1481481 m!1727693))

(assert (=> b!1481481 m!1727131))

(declare-fun m!1727695 () Bool)

(assert (=> b!1481481 m!1727695))

(assert (=> b!1481481 m!1727695))

(declare-fun m!1727697 () Bool)

(assert (=> b!1481481 m!1727697))

(declare-fun m!1727699 () Bool)

(assert (=> b!1481484 m!1727699))

(assert (=> b!1481484 m!1727131))

(declare-fun m!1727701 () Bool)

(assert (=> b!1481484 m!1727701))

(declare-fun m!1727703 () Bool)

(assert (=> b!1481483 m!1727703))

(assert (=> b!1481483 m!1727131))

(assert (=> b!1481483 m!1727695))

(assert (=> b!1481483 m!1727695))

(assert (=> b!1481483 m!1727697))

(assert (=> d!434283 d!434383))

(declare-fun d!434479 () Bool)

(declare-fun list!6233 (Conc!5341) List!15738)

(assert (=> d!434479 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520))))) (list!6233 (c!242945 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)))))))))

(declare-fun bs!345926 () Bool)

(assert (= bs!345926 d!434479))

(declare-fun m!1727705 () Bool)

(assert (=> bs!345926 m!1727705))

(assert (=> d!434283 d!434479))

(assert (=> d!434283 d!434299))

(declare-fun d!434481 () Bool)

(assert (=> d!434481 (= (list!6230 (singletonSeq!1337 lt!514520)) (list!6233 (c!242945 (singletonSeq!1337 lt!514520))))))

(declare-fun bs!345927 () Bool)

(assert (= bs!345927 d!434481))

(declare-fun m!1727707 () Bool)

(assert (=> bs!345927 m!1727707))

(assert (=> d!434283 d!434481))

(declare-fun d!434483 () Bool)

(assert (=> d!434483 true))

(declare-fun lambda!63797 () Int)

(declare-fun order!9471 () Int)

(declare-fun dynLambda!7142 (Int Int) Int)

(assert (=> d!434483 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (dynLambda!7142 order!9471 lambda!63797))))

(declare-fun Forall2!475 (Int) Bool)

(assert (=> d!434483 (= (equivClasses!1014 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (Forall2!475 lambda!63797))))

(declare-fun bs!345928 () Bool)

(assert (= bs!345928 d!434483))

(declare-fun m!1727709 () Bool)

(assert (=> bs!345928 m!1727709))

(assert (=> b!1481233 d!434483))

(declare-fun d!434485 () Bool)

(declare-fun lt!514749 () Int)

(assert (=> d!434485 (>= lt!514749 0)))

(declare-fun e!947183 () Int)

(assert (=> d!434485 (= lt!514749 e!947183)))

(declare-fun c!242983 () Bool)

(assert (=> d!434485 (= c!242983 ((_ is Nil!15671) (originalCharacters!3657 (h!21073 l2!3105))))))

(assert (=> d!434485 (= (size!12694 (originalCharacters!3657 (h!21073 l2!3105))) lt!514749)))

(declare-fun b!1481493 () Bool)

(assert (=> b!1481493 (= e!947183 0)))

(declare-fun b!1481494 () Bool)

(assert (=> b!1481494 (= e!947183 (+ 1 (size!12694 (t!137274 (originalCharacters!3657 (h!21073 l2!3105))))))))

(assert (= (and d!434485 c!242983) b!1481493))

(assert (= (and d!434485 (not c!242983)) b!1481494))

(declare-fun m!1727711 () Bool)

(assert (=> b!1481494 m!1727711))

(assert (=> b!1480986 d!434485))

(declare-fun d!434487 () Bool)

(assert (=> d!434487 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521))))) (list!6233 (c!242945 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)))))))))

(declare-fun bs!345929 () Bool)

(assert (= bs!345929 d!434487))

(declare-fun m!1727713 () Bool)

(assert (=> bs!345929 m!1727713))

(assert (=> d!434279 d!434487))

(declare-fun b!1481495 () Bool)

(declare-fun lt!514750 () tuple2!14338)

(declare-fun e!947186 () Bool)

(assert (=> b!1481495 (= e!947186 (= (_2!8055 lt!514750) (print!1143 thiss!27374 (singletonSeq!1337 lt!514521))))))

(declare-fun b!1481497 () Bool)

(declare-fun e!947185 () Bool)

(assert (=> b!1481497 (= e!947185 (not (isEmpty!9810 (_1!8055 lt!514750))))))

(declare-fun b!1481498 () Bool)

(declare-fun e!947184 () Bool)

(assert (=> b!1481498 (= e!947184 (= (list!6229 (_2!8055 lt!514750)) (_2!8057 (lexList!724 thiss!27374 rules!4290 (list!6229 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)))))))))

(declare-fun b!1481499 () Bool)

(assert (=> b!1481499 (= e!947186 e!947185)))

(declare-fun res!669414 () Bool)

(assert (=> b!1481499 (= res!669414 (< (size!12695 (_2!8055 lt!514750)) (size!12695 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)))))))

(assert (=> b!1481499 (=> (not res!669414) (not e!947185))))

(declare-fun d!434489 () Bool)

(assert (=> d!434489 e!947184))

(declare-fun res!669413 () Bool)

(assert (=> d!434489 (=> (not res!669413) (not e!947184))))

(assert (=> d!434489 (= res!669413 e!947186)))

(declare-fun c!242984 () Bool)

(assert (=> d!434489 (= c!242984 (> (size!12697 (_1!8055 lt!514750)) 0))))

(assert (=> d!434489 (= lt!514750 (lexTailRecV2!479 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)) (BalanceConc!10619 Empty!5339) (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)) (BalanceConc!10623 Empty!5341)))))

(assert (=> d!434489 (= (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521))) lt!514750)))

(declare-fun b!1481496 () Bool)

(declare-fun res!669412 () Bool)

(assert (=> b!1481496 (=> (not res!669412) (not e!947184))))

(assert (=> b!1481496 (= res!669412 (= (list!6230 (_1!8055 lt!514750)) (_1!8057 (lexList!724 thiss!27374 rules!4290 (list!6229 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)))))))))

(assert (= (and d!434489 c!242984) b!1481499))

(assert (= (and d!434489 (not c!242984)) b!1481495))

(assert (= (and b!1481499 res!669414) b!1481497))

(assert (= (and d!434489 res!669413) b!1481496))

(assert (= (and b!1481496 res!669412) b!1481498))

(declare-fun m!1727715 () Bool)

(assert (=> d!434489 m!1727715))

(assert (=> d!434489 m!1727111))

(assert (=> d!434489 m!1727111))

(declare-fun m!1727717 () Bool)

(assert (=> d!434489 m!1727717))

(declare-fun m!1727719 () Bool)

(assert (=> b!1481497 m!1727719))

(declare-fun m!1727721 () Bool)

(assert (=> b!1481496 m!1727721))

(assert (=> b!1481496 m!1727111))

(declare-fun m!1727723 () Bool)

(assert (=> b!1481496 m!1727723))

(assert (=> b!1481496 m!1727723))

(declare-fun m!1727725 () Bool)

(assert (=> b!1481496 m!1727725))

(declare-fun m!1727727 () Bool)

(assert (=> b!1481499 m!1727727))

(assert (=> b!1481499 m!1727111))

(declare-fun m!1727729 () Bool)

(assert (=> b!1481499 m!1727729))

(declare-fun m!1727731 () Bool)

(assert (=> b!1481498 m!1727731))

(assert (=> b!1481498 m!1727111))

(assert (=> b!1481498 m!1727723))

(assert (=> b!1481498 m!1727723))

(assert (=> b!1481498 m!1727725))

(assert (=> d!434279 d!434489))

(declare-fun d!434491 () Bool)

(declare-fun lt!514751 () BalanceConc!10618)

(assert (=> d!434491 (= (list!6229 lt!514751) (printList!771 thiss!27374 (list!6230 (singletonSeq!1337 lt!514521))))))

(assert (=> d!434491 (= lt!514751 (printTailRec!707 thiss!27374 (singletonSeq!1337 lt!514521) 0 (BalanceConc!10619 Empty!5339)))))

(assert (=> d!434491 (= (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)) lt!514751)))

(declare-fun bs!345930 () Bool)

(assert (= bs!345930 d!434491))

(declare-fun m!1727733 () Bool)

(assert (=> bs!345930 m!1727733))

(assert (=> bs!345930 m!1727105))

(assert (=> bs!345930 m!1727107))

(assert (=> bs!345930 m!1727107))

(declare-fun m!1727735 () Bool)

(assert (=> bs!345930 m!1727735))

(assert (=> bs!345930 m!1727105))

(declare-fun m!1727737 () Bool)

(assert (=> bs!345930 m!1727737))

(assert (=> d!434279 d!434491))

(assert (=> d!434279 d!434299))

(declare-fun d!434493 () Bool)

(assert (=> d!434493 (= (list!6230 (singletonSeq!1337 lt!514521)) (list!6233 (c!242945 (singletonSeq!1337 lt!514521))))))

(declare-fun bs!345931 () Bool)

(assert (= bs!345931 d!434493))

(declare-fun m!1727739 () Bool)

(assert (=> bs!345931 m!1727739))

(assert (=> d!434279 d!434493))

(declare-fun d!434495 () Bool)

(declare-fun lt!514752 () Int)

(assert (=> d!434495 (= lt!514752 (size!12696 (list!6230 (_1!8055 lt!514632))))))

(assert (=> d!434495 (= lt!514752 (size!12698 (c!242945 (_1!8055 lt!514632))))))

(assert (=> d!434495 (= (size!12697 (_1!8055 lt!514632)) lt!514752)))

(declare-fun bs!345932 () Bool)

(assert (= bs!345932 d!434495))

(declare-fun m!1727741 () Bool)

(assert (=> bs!345932 m!1727741))

(assert (=> bs!345932 m!1727741))

(declare-fun m!1727743 () Bool)

(assert (=> bs!345932 m!1727743))

(declare-fun m!1727745 () Bool)

(assert (=> bs!345932 m!1727745))

(assert (=> d!434279 d!434495))

(declare-fun d!434497 () Bool)

(declare-fun e!947187 () Bool)

(assert (=> d!434497 e!947187))

(declare-fun res!669415 () Bool)

(assert (=> d!434497 (=> (not res!669415) (not e!947187))))

(declare-fun lt!514753 () BalanceConc!10622)

(assert (=> d!434497 (= res!669415 (= (list!6230 lt!514753) (Cons!15672 lt!514521 Nil!15672)))))

(assert (=> d!434497 (= lt!514753 (singleton!552 lt!514521))))

(assert (=> d!434497 (= (singletonSeq!1337 lt!514521) lt!514753)))

(declare-fun b!1481500 () Bool)

(assert (=> b!1481500 (= e!947187 (isBalanced!1585 (c!242945 lt!514753)))))

(assert (= (and d!434497 res!669415) b!1481500))

(declare-fun m!1727747 () Bool)

(assert (=> d!434497 m!1727747))

(declare-fun m!1727749 () Bool)

(assert (=> d!434497 m!1727749))

(declare-fun m!1727751 () Bool)

(assert (=> b!1481500 m!1727751))

(assert (=> d!434279 d!434497))

(declare-fun d!434499 () Bool)

(assert (=> d!434499 (= (inv!15 (value!89305 (h!21073 l2!3105))) (= (charsToBigInt!0 (text!20644 (value!89305 (h!21073 l2!3105))) 0) (value!89300 (value!89305 (h!21073 l2!3105)))))))

(declare-fun bs!345933 () Bool)

(assert (= bs!345933 d!434499))

(declare-fun m!1727753 () Bool)

(assert (=> bs!345933 m!1727753))

(assert (=> b!1481237 d!434499))

(declare-fun d!434501 () Bool)

(assert (=> d!434501 (= (inv!16 (value!89305 (h!21073 l2!3105))) (= (charsToInt!0 (text!20642 (value!89305 (h!21073 l2!3105)))) (value!89296 (value!89305 (h!21073 l2!3105)))))))

(declare-fun bs!345934 () Bool)

(assert (= bs!345934 d!434501))

(declare-fun m!1727755 () Bool)

(assert (=> bs!345934 m!1727755))

(assert (=> b!1481235 d!434501))

(declare-fun d!434503 () Bool)

(declare-fun lt!514754 () Int)

(assert (=> d!434503 (>= lt!514754 0)))

(declare-fun e!947188 () Int)

(assert (=> d!434503 (= lt!514754 e!947188)))

(declare-fun c!242985 () Bool)

(assert (=> d!434503 (= c!242985 ((_ is Nil!15671) (originalCharacters!3657 (h!21073 l1!3136))))))

(assert (=> d!434503 (= (size!12694 (originalCharacters!3657 (h!21073 l1!3136))) lt!514754)))

(declare-fun b!1481501 () Bool)

(assert (=> b!1481501 (= e!947188 0)))

(declare-fun b!1481502 () Bool)

(assert (=> b!1481502 (= e!947188 (+ 1 (size!12694 (t!137274 (originalCharacters!3657 (h!21073 l1!3136))))))))

(assert (= (and d!434503 c!242985) b!1481501))

(assert (= (and d!434503 (not c!242985)) b!1481502))

(declare-fun m!1727757 () Bool)

(assert (=> b!1481502 m!1727757))

(assert (=> b!1481228 d!434503))

(declare-fun d!434505 () Bool)

(declare-fun c!242988 () Bool)

(assert (=> d!434505 (= c!242988 ((_ is Nil!15672) lt!514566))))

(declare-fun e!947191 () (InoxSet Token!5252))

(assert (=> d!434505 (= (content!2279 lt!514566) e!947191)))

(declare-fun b!1481507 () Bool)

(assert (=> b!1481507 (= e!947191 ((as const (Array Token!5252 Bool)) false))))

(declare-fun b!1481508 () Bool)

(assert (=> b!1481508 (= e!947191 ((_ map or) (store ((as const (Array Token!5252 Bool)) false) (h!21073 lt!514566) true) (content!2279 (t!137275 lt!514566))))))

(assert (= (and d!434505 c!242988) b!1481507))

(assert (= (and d!434505 (not c!242988)) b!1481508))

(declare-fun m!1727759 () Bool)

(assert (=> b!1481508 m!1727759))

(declare-fun m!1727761 () Bool)

(assert (=> b!1481508 m!1727761))

(assert (=> d!434237 d!434505))

(declare-fun d!434507 () Bool)

(declare-fun c!242989 () Bool)

(assert (=> d!434507 (= c!242989 ((_ is Nil!15672) l1!3136))))

(declare-fun e!947192 () (InoxSet Token!5252))

(assert (=> d!434507 (= (content!2279 l1!3136) e!947192)))

(declare-fun b!1481509 () Bool)

(assert (=> b!1481509 (= e!947192 ((as const (Array Token!5252 Bool)) false))))

(declare-fun b!1481510 () Bool)

(assert (=> b!1481510 (= e!947192 ((_ map or) (store ((as const (Array Token!5252 Bool)) false) (h!21073 l1!3136) true) (content!2279 (t!137275 l1!3136))))))

(assert (= (and d!434507 c!242989) b!1481509))

(assert (= (and d!434507 (not c!242989)) b!1481510))

(declare-fun m!1727763 () Bool)

(assert (=> b!1481510 m!1727763))

(declare-fun m!1727765 () Bool)

(assert (=> b!1481510 m!1727765))

(assert (=> d!434237 d!434507))

(declare-fun d!434509 () Bool)

(declare-fun c!242990 () Bool)

(assert (=> d!434509 (= c!242990 ((_ is Nil!15672) l2!3105))))

(declare-fun e!947193 () (InoxSet Token!5252))

(assert (=> d!434509 (= (content!2279 l2!3105) e!947193)))

(declare-fun b!1481511 () Bool)

(assert (=> b!1481511 (= e!947193 ((as const (Array Token!5252 Bool)) false))))

(declare-fun b!1481512 () Bool)

(assert (=> b!1481512 (= e!947193 ((_ map or) (store ((as const (Array Token!5252 Bool)) false) (h!21073 l2!3105) true) (content!2279 (t!137275 l2!3105))))))

(assert (= (and d!434509 c!242990) b!1481511))

(assert (= (and d!434509 (not c!242990)) b!1481512))

(declare-fun m!1727767 () Bool)

(assert (=> b!1481512 m!1727767))

(declare-fun m!1727769 () Bool)

(assert (=> b!1481512 m!1727769))

(assert (=> d!434237 d!434509))

(assert (=> d!434281 d!434279))

(declare-fun d!434511 () Bool)

(assert (=> d!434511 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 lt!514521)))

(assert (=> d!434511 true))

(declare-fun _$77!652 () Unit!25520)

(assert (=> d!434511 (= (choose!9068 thiss!27374 rules!4290 l2!3105 lt!514521) _$77!652)))

(declare-fun bs!345935 () Bool)

(assert (= bs!345935 d!434511))

(assert (=> bs!345935 m!1726773))

(assert (=> d!434281 d!434511))

(assert (=> d!434281 d!434299))

(declare-fun d!434513 () Bool)

(declare-fun lt!514757 () Bool)

(assert (=> d!434513 (= lt!514757 (isEmpty!9806 (list!6229 (_2!8055 lt!514632))))))

(declare-fun isEmpty!9811 (Conc!5339) Bool)

(assert (=> d!434513 (= lt!514757 (isEmpty!9811 (c!242915 (_2!8055 lt!514632))))))

(assert (=> d!434513 (= (isEmpty!9807 (_2!8055 lt!514632)) lt!514757)))

(declare-fun bs!345936 () Bool)

(assert (= bs!345936 d!434513))

(declare-fun m!1727771 () Bool)

(assert (=> bs!345936 m!1727771))

(assert (=> bs!345936 m!1727771))

(declare-fun m!1727773 () Bool)

(assert (=> bs!345936 m!1727773))

(declare-fun m!1727775 () Bool)

(assert (=> bs!345936 m!1727775))

(assert (=> b!1481207 d!434513))

(declare-fun d!434515 () Bool)

(declare-fun res!669417 () Bool)

(declare-fun e!947194 () Bool)

(assert (=> d!434515 (=> res!669417 e!947194)))

(assert (=> d!434515 (= res!669417 (or (not ((_ is Cons!15672) (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))) (not ((_ is Cons!15672) (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))))))))

(assert (=> d!434515 (= (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))) rules!4290) e!947194)))

(declare-fun b!1481513 () Bool)

(declare-fun e!947195 () Bool)

(assert (=> b!1481513 (= e!947194 e!947195)))

(declare-fun res!669416 () Bool)

(assert (=> b!1481513 (=> (not res!669416) (not e!947195))))

(assert (=> b!1481513 (= res!669416 (separableTokensPredicate!590 thiss!27374 (h!21073 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518)))) (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))) rules!4290))))

(declare-fun lt!514762 () Unit!25520)

(declare-fun Unit!25546 () Unit!25520)

(assert (=> b!1481513 (= lt!514762 Unit!25546)))

(assert (=> b!1481513 (> (size!12695 (charsOf!1603 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))))) 0)))

(declare-fun lt!514764 () Unit!25520)

(declare-fun Unit!25547 () Unit!25520)

(assert (=> b!1481513 (= lt!514764 Unit!25547)))

(assert (=> b!1481513 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))))))

(declare-fun lt!514761 () Unit!25520)

(declare-fun Unit!25548 () Unit!25520)

(assert (=> b!1481513 (= lt!514761 Unit!25548)))

(assert (=> b!1481513 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518)))))))

(declare-fun lt!514760 () Unit!25520)

(declare-fun lt!514763 () Unit!25520)

(assert (=> b!1481513 (= lt!514760 lt!514763)))

(assert (=> b!1481513 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))))))

(assert (=> b!1481513 (= lt!514763 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))) (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518)))))))))

(declare-fun lt!514759 () Unit!25520)

(declare-fun lt!514758 () Unit!25520)

(assert (=> b!1481513 (= lt!514759 lt!514758)))

(assert (=> b!1481513 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518)))))))

(assert (=> b!1481513 (= lt!514758 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))) (h!21073 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))))))

(declare-fun b!1481514 () Bool)

(assert (=> b!1481514 (= e!947195 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518))))) (t!137275 (t!137275 (Cons!15672 (h!21073 (t!137275 lt!514518)) (t!137275 (t!137275 lt!514518)))))) rules!4290))))

(assert (= (and d!434515 (not res!669417)) b!1481513))

(assert (= (and b!1481513 res!669416) b!1481514))

(declare-fun m!1727777 () Bool)

(assert (=> b!1481513 m!1727777))

(declare-fun m!1727779 () Bool)

(assert (=> b!1481513 m!1727779))

(declare-fun m!1727781 () Bool)

(assert (=> b!1481513 m!1727781))

(assert (=> b!1481513 m!1727777))

(declare-fun m!1727783 () Bool)

(assert (=> b!1481513 m!1727783))

(declare-fun m!1727785 () Bool)

(assert (=> b!1481513 m!1727785))

(declare-fun m!1727787 () Bool)

(assert (=> b!1481513 m!1727787))

(declare-fun m!1727789 () Bool)

(assert (=> b!1481513 m!1727789))

(declare-fun m!1727791 () Bool)

(assert (=> b!1481514 m!1727791))

(assert (=> b!1481001 d!434515))

(declare-fun d!434517 () Bool)

(assert (=> d!434517 (= (inv!20886 (tag!3059 (rule!4572 (h!21073 (t!137275 l2!3105))))) (= (mod (str.len (value!89304 (tag!3059 (rule!4572 (h!21073 (t!137275 l2!3105)))))) 2) 0))))

(assert (=> b!1481276 d!434517))

(declare-fun d!434519 () Bool)

(declare-fun res!669418 () Bool)

(declare-fun e!947196 () Bool)

(assert (=> d!434519 (=> (not res!669418) (not e!947196))))

(assert (=> d!434519 (= res!669418 (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))))))

(assert (=> d!434519 (= (inv!20889 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) e!947196)))

(declare-fun b!1481515 () Bool)

(assert (=> b!1481515 (= e!947196 (equivClasses!1014 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))))))

(assert (= (and d!434519 res!669418) b!1481515))

(declare-fun m!1727793 () Bool)

(assert (=> d!434519 m!1727793))

(declare-fun m!1727795 () Bool)

(assert (=> b!1481515 m!1727795))

(assert (=> b!1481276 d!434519))

(declare-fun b!1481516 () Bool)

(declare-fun e!947197 () Bool)

(declare-fun e!947198 () Bool)

(assert (=> b!1481516 (= e!947197 e!947198)))

(declare-fun c!242992 () Bool)

(assert (=> b!1481516 (= c!242992 ((_ is IntegerValue!8656) (value!89305 (h!21073 (t!137275 l1!3136)))))))

(declare-fun b!1481517 () Bool)

(assert (=> b!1481517 (= e!947197 (inv!16 (value!89305 (h!21073 (t!137275 l1!3136)))))))

(declare-fun b!1481518 () Bool)

(declare-fun res!669419 () Bool)

(declare-fun e!947199 () Bool)

(assert (=> b!1481518 (=> res!669419 e!947199)))

(assert (=> b!1481518 (= res!669419 (not ((_ is IntegerValue!8657) (value!89305 (h!21073 (t!137275 l1!3136))))))))

(assert (=> b!1481518 (= e!947198 e!947199)))

(declare-fun b!1481519 () Bool)

(assert (=> b!1481519 (= e!947199 (inv!15 (value!89305 (h!21073 (t!137275 l1!3136)))))))

(declare-fun b!1481520 () Bool)

(assert (=> b!1481520 (= e!947198 (inv!17 (value!89305 (h!21073 (t!137275 l1!3136)))))))

(declare-fun d!434521 () Bool)

(declare-fun c!242991 () Bool)

(assert (=> d!434521 (= c!242991 ((_ is IntegerValue!8655) (value!89305 (h!21073 (t!137275 l1!3136)))))))

(assert (=> d!434521 (= (inv!21 (value!89305 (h!21073 (t!137275 l1!3136)))) e!947197)))

(assert (= (and d!434521 c!242991) b!1481517))

(assert (= (and d!434521 (not c!242991)) b!1481516))

(assert (= (and b!1481516 c!242992) b!1481520))

(assert (= (and b!1481516 (not c!242992)) b!1481518))

(assert (= (and b!1481518 (not res!669419)) b!1481519))

(declare-fun m!1727797 () Bool)

(assert (=> b!1481517 m!1727797))

(declare-fun m!1727799 () Bool)

(assert (=> b!1481519 m!1727799))

(declare-fun m!1727801 () Bool)

(assert (=> b!1481520 m!1727801))

(assert (=> b!1481284 d!434521))

(declare-fun d!434523 () Bool)

(declare-fun res!669420 () Bool)

(declare-fun e!947200 () Bool)

(assert (=> d!434523 (=> (not res!669420) (not e!947200))))

(assert (=> d!434523 (= res!669420 (not (isEmpty!9806 (originalCharacters!3657 (h!21073 (t!137275 l2!3105))))))))

(assert (=> d!434523 (= (inv!20890 (h!21073 (t!137275 l2!3105))) e!947200)))

(declare-fun b!1481521 () Bool)

(declare-fun res!669421 () Bool)

(assert (=> b!1481521 (=> (not res!669421) (not e!947200))))

(assert (=> b!1481521 (= res!669421 (= (originalCharacters!3657 (h!21073 (t!137275 l2!3105))) (list!6229 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (value!89305 (h!21073 (t!137275 l2!3105)))))))))

(declare-fun b!1481522 () Bool)

(assert (=> b!1481522 (= e!947200 (= (size!12689 (h!21073 (t!137275 l2!3105))) (size!12694 (originalCharacters!3657 (h!21073 (t!137275 l2!3105))))))))

(assert (= (and d!434523 res!669420) b!1481521))

(assert (= (and b!1481521 res!669421) b!1481522))

(declare-fun b_lambda!46385 () Bool)

(assert (=> (not b_lambda!46385) (not b!1481521)))

(declare-fun tb!84653 () Bool)

(declare-fun t!137387 () Bool)

(assert (=> (and b!1481249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137387) tb!84653))

(declare-fun b!1481523 () Bool)

(declare-fun e!947201 () Bool)

(declare-fun tp!420093 () Bool)

(assert (=> b!1481523 (= e!947201 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (value!89305 (h!21073 (t!137275 l2!3105)))))) tp!420093))))

(declare-fun result!101806 () Bool)

(assert (=> tb!84653 (= result!101806 (and (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (value!89305 (h!21073 (t!137275 l2!3105))))) e!947201))))

(assert (= tb!84653 b!1481523))

(declare-fun m!1727803 () Bool)

(assert (=> b!1481523 m!1727803))

(declare-fun m!1727805 () Bool)

(assert (=> tb!84653 m!1727805))

(assert (=> b!1481521 t!137387))

(declare-fun b_and!102809 () Bool)

(assert (= b_and!102765 (and (=> t!137387 result!101806) b_and!102809)))

(declare-fun tb!84655 () Bool)

(declare-fun t!137389 () Bool)

(assert (=> (and b!1480954 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137389) tb!84655))

(declare-fun result!101808 () Bool)

(assert (= result!101808 result!101806))

(assert (=> b!1481521 t!137389))

(declare-fun b_and!102811 () Bool)

(assert (= b_and!102771 (and (=> t!137389 result!101808) b_and!102811)))

(declare-fun t!137391 () Bool)

(declare-fun tb!84657 () Bool)

(assert (=> (and b!1481277 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137391) tb!84657))

(declare-fun result!101810 () Bool)

(assert (= result!101810 result!101806))

(assert (=> b!1481521 t!137391))

(declare-fun b_and!102813 () Bool)

(assert (= b_and!102769 (and (=> t!137391 result!101810) b_and!102813)))

(declare-fun t!137393 () Bool)

(declare-fun tb!84659 () Bool)

(assert (=> (and b!1480955 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137393) tb!84659))

(declare-fun result!101812 () Bool)

(assert (= result!101812 result!101806))

(assert (=> b!1481521 t!137393))

(declare-fun b_and!102815 () Bool)

(assert (= b_and!102767 (and (=> t!137393 result!101812) b_and!102815)))

(declare-fun tb!84661 () Bool)

(declare-fun t!137395 () Bool)

(assert (=> (and b!1480939 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137395) tb!84661))

(declare-fun result!101814 () Bool)

(assert (= result!101814 result!101806))

(assert (=> b!1481521 t!137395))

(declare-fun b_and!102817 () Bool)

(assert (= b_and!102763 (and (=> t!137395 result!101814) b_and!102817)))

(declare-fun tb!84663 () Bool)

(declare-fun t!137397 () Bool)

(assert (=> (and b!1481286 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137397) tb!84663))

(declare-fun result!101816 () Bool)

(assert (= result!101816 result!101806))

(assert (=> b!1481521 t!137397))

(declare-fun b_and!102819 () Bool)

(assert (= b_and!102761 (and (=> t!137397 result!101816) b_and!102819)))

(declare-fun m!1727807 () Bool)

(assert (=> d!434523 m!1727807))

(declare-fun m!1727809 () Bool)

(assert (=> b!1481521 m!1727809))

(assert (=> b!1481521 m!1727809))

(declare-fun m!1727811 () Bool)

(assert (=> b!1481521 m!1727811))

(declare-fun m!1727813 () Bool)

(assert (=> b!1481522 m!1727813))

(assert (=> b!1481274 d!434523))

(declare-fun d!434525 () Bool)

(declare-fun lt!514766 () Bool)

(declare-fun e!947202 () Bool)

(assert (=> d!434525 (= lt!514766 e!947202)))

(declare-fun res!669424 () Bool)

(assert (=> d!434525 (=> (not res!669424) (not e!947202))))

(assert (=> d!434525 (= res!669424 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 l1!3136)))))) (list!6230 (singletonSeq!1337 (h!21073 l1!3136)))))))

(declare-fun e!947203 () Bool)

(assert (=> d!434525 (= lt!514766 e!947203)))

(declare-fun res!669423 () Bool)

(assert (=> d!434525 (=> (not res!669423) (not e!947203))))

(declare-fun lt!514765 () tuple2!14338)

(assert (=> d!434525 (= res!669423 (= (size!12697 (_1!8055 lt!514765)) 1))))

(assert (=> d!434525 (= lt!514765 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 l1!3136)))))))

(assert (=> d!434525 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434525 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l1!3136)) lt!514766)))

(declare-fun b!1481524 () Bool)

(declare-fun res!669422 () Bool)

(assert (=> b!1481524 (=> (not res!669422) (not e!947203))))

(assert (=> b!1481524 (= res!669422 (= (apply!4052 (_1!8055 lt!514765) 0) (h!21073 l1!3136)))))

(declare-fun b!1481525 () Bool)

(assert (=> b!1481525 (= e!947203 (isEmpty!9807 (_2!8055 lt!514765)))))

(declare-fun b!1481526 () Bool)

(assert (=> b!1481526 (= e!947202 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 l1!3136)))))))))

(assert (= (and d!434525 res!669423) b!1481524))

(assert (= (and b!1481524 res!669422) b!1481525))

(assert (= (and d!434525 res!669424) b!1481526))

(declare-fun m!1727815 () Bool)

(assert (=> d!434525 m!1727815))

(declare-fun m!1727817 () Bool)

(assert (=> d!434525 m!1727817))

(assert (=> d!434525 m!1727815))

(declare-fun m!1727819 () Bool)

(assert (=> d!434525 m!1727819))

(assert (=> d!434525 m!1726761))

(assert (=> d!434525 m!1727815))

(declare-fun m!1727821 () Bool)

(assert (=> d!434525 m!1727821))

(assert (=> d!434525 m!1727821))

(declare-fun m!1727823 () Bool)

(assert (=> d!434525 m!1727823))

(declare-fun m!1727825 () Bool)

(assert (=> d!434525 m!1727825))

(declare-fun m!1727827 () Bool)

(assert (=> b!1481524 m!1727827))

(declare-fun m!1727829 () Bool)

(assert (=> b!1481525 m!1727829))

(assert (=> b!1481526 m!1727815))

(assert (=> b!1481526 m!1727815))

(assert (=> b!1481526 m!1727821))

(assert (=> b!1481526 m!1727821))

(assert (=> b!1481526 m!1727823))

(declare-fun m!1727831 () Bool)

(assert (=> b!1481526 m!1727831))

(assert (=> b!1481116 d!434525))

(declare-fun d!434527 () Bool)

(declare-fun lt!514767 () Bool)

(assert (=> d!434527 (= lt!514767 (isEmpty!9806 (list!6229 (_2!8055 lt!514635))))))

(assert (=> d!434527 (= lt!514767 (isEmpty!9811 (c!242915 (_2!8055 lt!514635))))))

(assert (=> d!434527 (= (isEmpty!9807 (_2!8055 lt!514635)) lt!514767)))

(declare-fun bs!345937 () Bool)

(assert (= bs!345937 d!434527))

(declare-fun m!1727833 () Bool)

(assert (=> bs!345937 m!1727833))

(assert (=> bs!345937 m!1727833))

(declare-fun m!1727835 () Bool)

(assert (=> bs!345937 m!1727835))

(declare-fun m!1727837 () Bool)

(assert (=> bs!345937 m!1727837))

(assert (=> b!1481210 d!434527))

(declare-fun d!434529 () Bool)

(assert (=> d!434529 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l1!3136))))

(declare-fun lt!514768 () Unit!25520)

(assert (=> d!434529 (= lt!514768 (choose!9068 thiss!27374 rules!4290 l1!3136 (h!21073 l1!3136)))))

(assert (=> d!434529 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434529 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l1!3136 (h!21073 l1!3136)) lt!514768)))

(declare-fun bs!345938 () Bool)

(assert (= bs!345938 d!434529))

(assert (=> bs!345938 m!1727017))

(declare-fun m!1727839 () Bool)

(assert (=> bs!345938 m!1727839))

(assert (=> bs!345938 m!1726761))

(assert (=> b!1481230 d!434529))

(declare-fun d!434531 () Bool)

(assert (=> d!434531 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l1!3136)))))

(declare-fun lt!514769 () Unit!25520)

(assert (=> d!434531 (= lt!514769 (choose!9068 thiss!27374 rules!4290 l1!3136 (h!21073 (t!137275 l1!3136))))))

(assert (=> d!434531 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434531 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l1!3136 (h!21073 (t!137275 l1!3136))) lt!514769)))

(declare-fun bs!345939 () Bool)

(assert (= bs!345939 d!434531))

(assert (=> bs!345939 m!1727169))

(declare-fun m!1727841 () Bool)

(assert (=> bs!345939 m!1727841))

(assert (=> bs!345939 m!1726761))

(assert (=> b!1481230 d!434531))

(declare-fun d!434533 () Bool)

(declare-fun lt!514772 () Int)

(assert (=> d!434533 (= lt!514772 (size!12694 (list!6229 (charsOf!1603 (h!21073 (t!137275 l1!3136))))))))

(declare-fun size!12701 (Conc!5339) Int)

(assert (=> d!434533 (= lt!514772 (size!12701 (c!242915 (charsOf!1603 (h!21073 (t!137275 l1!3136))))))))

(assert (=> d!434533 (= (size!12695 (charsOf!1603 (h!21073 (t!137275 l1!3136)))) lt!514772)))

(declare-fun bs!345940 () Bool)

(assert (= bs!345940 d!434533))

(assert (=> bs!345940 m!1727161))

(declare-fun m!1727843 () Bool)

(assert (=> bs!345940 m!1727843))

(assert (=> bs!345940 m!1727843))

(declare-fun m!1727845 () Bool)

(assert (=> bs!345940 m!1727845))

(declare-fun m!1727847 () Bool)

(assert (=> bs!345940 m!1727847))

(assert (=> b!1481230 d!434533))

(assert (=> b!1481230 d!434525))

(declare-fun d!434535 () Bool)

(declare-fun lt!514774 () Bool)

(declare-fun e!947204 () Bool)

(assert (=> d!434535 (= lt!514774 e!947204)))

(declare-fun res!669427 () Bool)

(assert (=> d!434535 (=> (not res!669427) (not e!947204))))

(assert (=> d!434535 (= res!669427 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 l1!3136))))))) (list!6230 (singletonSeq!1337 (h!21073 (t!137275 l1!3136))))))))

(declare-fun e!947205 () Bool)

(assert (=> d!434535 (= lt!514774 e!947205)))

(declare-fun res!669426 () Bool)

(assert (=> d!434535 (=> (not res!669426) (not e!947205))))

(declare-fun lt!514773 () tuple2!14338)

(assert (=> d!434535 (= res!669426 (= (size!12697 (_1!8055 lt!514773)) 1))))

(assert (=> d!434535 (= lt!514773 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 l1!3136))))))))

(assert (=> d!434535 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434535 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l1!3136))) lt!514774)))

(declare-fun b!1481527 () Bool)

(declare-fun res!669425 () Bool)

(assert (=> b!1481527 (=> (not res!669425) (not e!947205))))

(assert (=> b!1481527 (= res!669425 (= (apply!4052 (_1!8055 lt!514773) 0) (h!21073 (t!137275 l1!3136))))))

(declare-fun b!1481528 () Bool)

(assert (=> b!1481528 (= e!947205 (isEmpty!9807 (_2!8055 lt!514773)))))

(declare-fun b!1481529 () Bool)

(assert (=> b!1481529 (= e!947204 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 l1!3136))))))))))

(assert (= (and d!434535 res!669426) b!1481527))

(assert (= (and b!1481527 res!669425) b!1481528))

(assert (= (and d!434535 res!669427) b!1481529))

(declare-fun m!1727849 () Bool)

(assert (=> d!434535 m!1727849))

(declare-fun m!1727851 () Bool)

(assert (=> d!434535 m!1727851))

(assert (=> d!434535 m!1727849))

(declare-fun m!1727853 () Bool)

(assert (=> d!434535 m!1727853))

(assert (=> d!434535 m!1726761))

(assert (=> d!434535 m!1727849))

(declare-fun m!1727855 () Bool)

(assert (=> d!434535 m!1727855))

(assert (=> d!434535 m!1727855))

(declare-fun m!1727857 () Bool)

(assert (=> d!434535 m!1727857))

(declare-fun m!1727859 () Bool)

(assert (=> d!434535 m!1727859))

(declare-fun m!1727861 () Bool)

(assert (=> b!1481527 m!1727861))

(declare-fun m!1727863 () Bool)

(assert (=> b!1481528 m!1727863))

(assert (=> b!1481529 m!1727849))

(assert (=> b!1481529 m!1727849))

(assert (=> b!1481529 m!1727855))

(assert (=> b!1481529 m!1727855))

(assert (=> b!1481529 m!1727857))

(declare-fun m!1727865 () Bool)

(assert (=> b!1481529 m!1727865))

(assert (=> b!1481230 d!434535))

(declare-fun d!434537 () Bool)

(assert (=> d!434537 (= (separableTokensPredicate!590 thiss!27374 (h!21073 l1!3136) (h!21073 (t!137275 l1!3136)) rules!4290) (not (prefixMatchZipperSequence!385 (rulesRegex!435 thiss!27374 rules!4290) (++!4226 (charsOf!1603 (h!21073 l1!3136)) (singletonSeq!1336 (apply!4051 (charsOf!1603 (h!21073 (t!137275 l1!3136))) 0))))))))

(declare-fun bs!345941 () Bool)

(assert (= bs!345941 d!434537))

(declare-fun m!1727867 () Bool)

(assert (=> bs!345941 m!1727867))

(declare-fun m!1727869 () Bool)

(assert (=> bs!345941 m!1727869))

(assert (=> bs!345941 m!1727095))

(declare-fun m!1727871 () Bool)

(assert (=> bs!345941 m!1727871))

(declare-fun m!1727873 () Bool)

(assert (=> bs!345941 m!1727873))

(declare-fun m!1727875 () Bool)

(assert (=> bs!345941 m!1727875))

(assert (=> bs!345941 m!1727869))

(assert (=> bs!345941 m!1727871))

(assert (=> bs!345941 m!1727095))

(assert (=> bs!345941 m!1727161))

(assert (=> bs!345941 m!1727161))

(assert (=> bs!345941 m!1727867))

(assert (=> bs!345941 m!1727875))

(assert (=> b!1481230 d!434537))

(declare-fun d!434539 () Bool)

(declare-fun lt!514777 () BalanceConc!10618)

(assert (=> d!434539 (= (list!6229 lt!514777) (originalCharacters!3657 (h!21073 (t!137275 l1!3136))))))

(assert (=> d!434539 (= lt!514777 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (value!89305 (h!21073 (t!137275 l1!3136)))))))

(assert (=> d!434539 (= (charsOf!1603 (h!21073 (t!137275 l1!3136))) lt!514777)))

(declare-fun b_lambda!46387 () Bool)

(assert (=> (not b_lambda!46387) (not d!434539)))

(assert (=> d!434539 t!137344))

(declare-fun b_and!102821 () Bool)

(assert (= b_and!102813 (and (=> t!137344 result!101766) b_and!102821)))

(assert (=> d!434539 t!137336))

(declare-fun b_and!102823 () Bool)

(assert (= b_and!102819 (and (=> t!137336 result!101758) b_and!102823)))

(assert (=> d!434539 t!137340))

(declare-fun b_and!102825 () Bool)

(assert (= b_and!102809 (and (=> t!137340 result!101762) b_and!102825)))

(assert (=> d!434539 t!137342))

(declare-fun b_and!102827 () Bool)

(assert (= b_and!102815 (and (=> t!137342 result!101764) b_and!102827)))

(assert (=> d!434539 t!137338))

(declare-fun b_and!102829 () Bool)

(assert (= b_and!102817 (and (=> t!137338 result!101760) b_and!102829)))

(assert (=> d!434539 t!137346))

(declare-fun b_and!102831 () Bool)

(assert (= b_and!102811 (and (=> t!137346 result!101768) b_and!102831)))

(declare-fun m!1727877 () Bool)

(assert (=> d!434539 m!1727877))

(assert (=> d!434539 m!1727253))

(assert (=> b!1481230 d!434539))

(declare-fun d!434541 () Bool)

(declare-fun lt!514779 () Bool)

(declare-fun e!947206 () Bool)

(assert (=> d!434541 (= lt!514779 e!947206)))

(declare-fun res!669430 () Bool)

(assert (=> d!434541 (=> (not res!669430) (not e!947206))))

(assert (=> d!434541 (= res!669430 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 l2!3105))))))) (list!6230 (singletonSeq!1337 (h!21073 (t!137275 l2!3105))))))))

(declare-fun e!947207 () Bool)

(assert (=> d!434541 (= lt!514779 e!947207)))

(declare-fun res!669429 () Bool)

(assert (=> d!434541 (=> (not res!669429) (not e!947207))))

(declare-fun lt!514778 () tuple2!14338)

(assert (=> d!434541 (= res!669429 (= (size!12697 (_1!8055 lt!514778)) 1))))

(assert (=> d!434541 (= lt!514778 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 l2!3105))))))))

(assert (=> d!434541 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434541 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l2!3105))) lt!514779)))

(declare-fun b!1481530 () Bool)

(declare-fun res!669428 () Bool)

(assert (=> b!1481530 (=> (not res!669428) (not e!947207))))

(assert (=> b!1481530 (= res!669428 (= (apply!4052 (_1!8055 lt!514778) 0) (h!21073 (t!137275 l2!3105))))))

(declare-fun b!1481531 () Bool)

(assert (=> b!1481531 (= e!947207 (isEmpty!9807 (_2!8055 lt!514778)))))

(declare-fun b!1481532 () Bool)

(assert (=> b!1481532 (= e!947206 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 l2!3105))))))))))

(assert (= (and d!434541 res!669429) b!1481530))

(assert (= (and b!1481530 res!669428) b!1481531))

(assert (= (and d!434541 res!669430) b!1481532))

(declare-fun m!1727879 () Bool)

(assert (=> d!434541 m!1727879))

(declare-fun m!1727881 () Bool)

(assert (=> d!434541 m!1727881))

(assert (=> d!434541 m!1727879))

(declare-fun m!1727883 () Bool)

(assert (=> d!434541 m!1727883))

(assert (=> d!434541 m!1726761))

(assert (=> d!434541 m!1727879))

(declare-fun m!1727885 () Bool)

(assert (=> d!434541 m!1727885))

(assert (=> d!434541 m!1727885))

(declare-fun m!1727887 () Bool)

(assert (=> d!434541 m!1727887))

(declare-fun m!1727889 () Bool)

(assert (=> d!434541 m!1727889))

(declare-fun m!1727891 () Bool)

(assert (=> b!1481530 m!1727891))

(declare-fun m!1727893 () Bool)

(assert (=> b!1481531 m!1727893))

(assert (=> b!1481532 m!1727879))

(assert (=> b!1481532 m!1727879))

(assert (=> b!1481532 m!1727885))

(assert (=> b!1481532 m!1727885))

(assert (=> b!1481532 m!1727887))

(declare-fun m!1727895 () Bool)

(assert (=> b!1481532 m!1727895))

(assert (=> b!1481114 d!434541))

(declare-fun d!434545 () Bool)

(declare-fun lt!514780 () BalanceConc!10618)

(assert (=> d!434545 (= (list!6229 lt!514780) (originalCharacters!3657 (h!21073 (t!137275 l2!3105))))))

(assert (=> d!434545 (= lt!514780 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (value!89305 (h!21073 (t!137275 l2!3105)))))))

(assert (=> d!434545 (= (charsOf!1603 (h!21073 (t!137275 l2!3105))) lt!514780)))

(declare-fun b_lambda!46389 () Bool)

(assert (=> (not b_lambda!46389) (not d!434545)))

(assert (=> d!434545 t!137395))

(declare-fun b_and!102833 () Bool)

(assert (= b_and!102829 (and (=> t!137395 result!101814) b_and!102833)))

(assert (=> d!434545 t!137389))

(declare-fun b_and!102835 () Bool)

(assert (= b_and!102831 (and (=> t!137389 result!101808) b_and!102835)))

(assert (=> d!434545 t!137391))

(declare-fun b_and!102837 () Bool)

(assert (= b_and!102821 (and (=> t!137391 result!101810) b_and!102837)))

(assert (=> d!434545 t!137397))

(declare-fun b_and!102839 () Bool)

(assert (= b_and!102823 (and (=> t!137397 result!101816) b_and!102839)))

(assert (=> d!434545 t!137387))

(declare-fun b_and!102841 () Bool)

(assert (= b_and!102825 (and (=> t!137387 result!101806) b_and!102841)))

(assert (=> d!434545 t!137393))

(declare-fun b_and!102843 () Bool)

(assert (= b_and!102827 (and (=> t!137393 result!101812) b_and!102843)))

(declare-fun m!1727897 () Bool)

(assert (=> d!434545 m!1727897))

(assert (=> d!434545 m!1727809))

(assert (=> b!1481114 d!434545))

(declare-fun d!434547 () Bool)

(declare-fun lt!514782 () Bool)

(declare-fun e!947210 () Bool)

(assert (=> d!434547 (= lt!514782 e!947210)))

(declare-fun res!669435 () Bool)

(assert (=> d!434547 (=> (not res!669435) (not e!947210))))

(assert (=> d!434547 (= res!669435 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 l2!3105)))))) (list!6230 (singletonSeq!1337 (h!21073 l2!3105)))))))

(declare-fun e!947211 () Bool)

(assert (=> d!434547 (= lt!514782 e!947211)))

(declare-fun res!669434 () Bool)

(assert (=> d!434547 (=> (not res!669434) (not e!947211))))

(declare-fun lt!514781 () tuple2!14338)

(assert (=> d!434547 (= res!669434 (= (size!12697 (_1!8055 lt!514781)) 1))))

(assert (=> d!434547 (= lt!514781 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 l2!3105)))))))

(assert (=> d!434547 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434547 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l2!3105)) lt!514782)))

(declare-fun b!1481535 () Bool)

(declare-fun res!669433 () Bool)

(assert (=> b!1481535 (=> (not res!669433) (not e!947211))))

(assert (=> b!1481535 (= res!669433 (= (apply!4052 (_1!8055 lt!514781) 0) (h!21073 l2!3105)))))

(declare-fun b!1481536 () Bool)

(assert (=> b!1481536 (= e!947211 (isEmpty!9807 (_2!8055 lt!514781)))))

(declare-fun b!1481537 () Bool)

(assert (=> b!1481537 (= e!947210 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 l2!3105)))))))))

(assert (= (and d!434547 res!669434) b!1481535))

(assert (= (and b!1481535 res!669433) b!1481536))

(assert (= (and d!434547 res!669435) b!1481537))

(declare-fun m!1727899 () Bool)

(assert (=> d!434547 m!1727899))

(declare-fun m!1727901 () Bool)

(assert (=> d!434547 m!1727901))

(assert (=> d!434547 m!1727899))

(declare-fun m!1727903 () Bool)

(assert (=> d!434547 m!1727903))

(assert (=> d!434547 m!1726761))

(assert (=> d!434547 m!1727899))

(declare-fun m!1727905 () Bool)

(assert (=> d!434547 m!1727905))

(assert (=> d!434547 m!1727905))

(declare-fun m!1727907 () Bool)

(assert (=> d!434547 m!1727907))

(declare-fun m!1727909 () Bool)

(assert (=> d!434547 m!1727909))

(declare-fun m!1727911 () Bool)

(assert (=> b!1481535 m!1727911))

(declare-fun m!1727913 () Bool)

(assert (=> b!1481536 m!1727913))

(assert (=> b!1481537 m!1727899))

(assert (=> b!1481537 m!1727899))

(assert (=> b!1481537 m!1727905))

(assert (=> b!1481537 m!1727905))

(assert (=> b!1481537 m!1727907))

(declare-fun m!1727915 () Bool)

(assert (=> b!1481537 m!1727915))

(assert (=> b!1481114 d!434547))

(declare-fun d!434549 () Bool)

(assert (=> d!434549 (= (separableTokensPredicate!590 thiss!27374 (h!21073 l2!3105) (h!21073 (t!137275 l2!3105)) rules!4290) (not (prefixMatchZipperSequence!385 (rulesRegex!435 thiss!27374 rules!4290) (++!4226 (charsOf!1603 (h!21073 l2!3105)) (singletonSeq!1336 (apply!4051 (charsOf!1603 (h!21073 (t!137275 l2!3105))) 0))))))))

(declare-fun bs!345943 () Bool)

(assert (= bs!345943 d!434549))

(declare-fun m!1727917 () Bool)

(assert (=> bs!345943 m!1727917))

(declare-fun m!1727921 () Bool)

(assert (=> bs!345943 m!1727921))

(assert (=> bs!345943 m!1727095))

(declare-fun m!1727925 () Bool)

(assert (=> bs!345943 m!1727925))

(declare-fun m!1727927 () Bool)

(assert (=> bs!345943 m!1727927))

(declare-fun m!1727929 () Bool)

(assert (=> bs!345943 m!1727929))

(assert (=> bs!345943 m!1727921))

(assert (=> bs!345943 m!1727925))

(assert (=> bs!345943 m!1727095))

(assert (=> bs!345943 m!1727001))

(assert (=> bs!345943 m!1727001))

(assert (=> bs!345943 m!1727917))

(assert (=> bs!345943 m!1727929))

(assert (=> b!1481114 d!434549))

(declare-fun d!434555 () Bool)

(declare-fun lt!514783 () Int)

(assert (=> d!434555 (= lt!514783 (size!12694 (list!6229 (charsOf!1603 (h!21073 (t!137275 l2!3105))))))))

(assert (=> d!434555 (= lt!514783 (size!12701 (c!242915 (charsOf!1603 (h!21073 (t!137275 l2!3105))))))))

(assert (=> d!434555 (= (size!12695 (charsOf!1603 (h!21073 (t!137275 l2!3105)))) lt!514783)))

(declare-fun bs!345946 () Bool)

(assert (= bs!345946 d!434555))

(assert (=> bs!345946 m!1727001))

(declare-fun m!1727935 () Bool)

(assert (=> bs!345946 m!1727935))

(assert (=> bs!345946 m!1727935))

(declare-fun m!1727937 () Bool)

(assert (=> bs!345946 m!1727937))

(declare-fun m!1727939 () Bool)

(assert (=> bs!345946 m!1727939))

(assert (=> b!1481114 d!434555))

(declare-fun d!434559 () Bool)

(assert (=> d!434559 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l2!3105))))

(declare-fun lt!514785 () Unit!25520)

(assert (=> d!434559 (= lt!514785 (choose!9068 thiss!27374 rules!4290 l2!3105 (h!21073 l2!3105)))))

(assert (=> d!434559 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434559 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l2!3105 (h!21073 l2!3105)) lt!514785)))

(declare-fun bs!345948 () Bool)

(assert (= bs!345948 d!434559))

(assert (=> bs!345948 m!1726997))

(declare-fun m!1727945 () Bool)

(assert (=> bs!345948 m!1727945))

(assert (=> bs!345948 m!1726761))

(assert (=> b!1481114 d!434559))

(declare-fun d!434563 () Bool)

(assert (=> d!434563 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l2!3105)))))

(declare-fun lt!514786 () Unit!25520)

(assert (=> d!434563 (= lt!514786 (choose!9068 thiss!27374 rules!4290 l2!3105 (h!21073 (t!137275 l2!3105))))))

(assert (=> d!434563 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434563 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 l2!3105 (h!21073 (t!137275 l2!3105))) lt!514786)))

(declare-fun bs!345949 () Bool)

(assert (= bs!345949 d!434563))

(assert (=> bs!345949 m!1727009))

(declare-fun m!1727951 () Bool)

(assert (=> bs!345949 m!1727951))

(assert (=> bs!345949 m!1726761))

(assert (=> b!1481114 d!434563))

(declare-fun d!434567 () Bool)

(declare-fun c!242995 () Bool)

(assert (=> d!434567 (= c!242995 ((_ is Node!5339) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))))))

(declare-fun e!947220 () Bool)

(assert (=> d!434567 (= (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))) e!947220)))

(declare-fun b!1481549 () Bool)

(assert (=> b!1481549 (= e!947220 (inv!20897 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))))))

(declare-fun b!1481550 () Bool)

(declare-fun e!947221 () Bool)

(assert (=> b!1481550 (= e!947220 e!947221)))

(declare-fun res!669443 () Bool)

(assert (=> b!1481550 (= res!669443 (not ((_ is Leaf!7938) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))))))))

(assert (=> b!1481550 (=> res!669443 e!947221)))

(declare-fun b!1481551 () Bool)

(assert (=> b!1481551 (= e!947221 (inv!20898 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))))))

(assert (= (and d!434567 c!242995) b!1481549))

(assert (= (and d!434567 (not c!242995)) b!1481550))

(assert (= (and b!1481550 (not res!669443)) b!1481551))

(declare-fun m!1727953 () Bool)

(assert (=> b!1481549 m!1727953))

(declare-fun m!1727955 () Bool)

(assert (=> b!1481551 m!1727955))

(assert (=> b!1481229 d!434567))

(declare-fun b!1481552 () Bool)

(declare-fun e!947222 () List!15738)

(assert (=> b!1481552 (= e!947222 l2!3105)))

(declare-fun b!1481553 () Bool)

(assert (=> b!1481553 (= e!947222 (Cons!15672 (h!21073 (t!137275 l1!3136)) (++!4224 (t!137275 (t!137275 l1!3136)) l2!3105)))))

(declare-fun b!1481554 () Bool)

(declare-fun res!669445 () Bool)

(declare-fun e!947223 () Bool)

(assert (=> b!1481554 (=> (not res!669445) (not e!947223))))

(declare-fun lt!514788 () List!15738)

(assert (=> b!1481554 (= res!669445 (= (size!12696 lt!514788) (+ (size!12696 (t!137275 l1!3136)) (size!12696 l2!3105))))))

(declare-fun b!1481555 () Bool)

(assert (=> b!1481555 (= e!947223 (or (not (= l2!3105 Nil!15672)) (= lt!514788 (t!137275 l1!3136))))))

(declare-fun d!434569 () Bool)

(assert (=> d!434569 e!947223))

(declare-fun res!669444 () Bool)

(assert (=> d!434569 (=> (not res!669444) (not e!947223))))

(assert (=> d!434569 (= res!669444 (= (content!2279 lt!514788) ((_ map or) (content!2279 (t!137275 l1!3136)) (content!2279 l2!3105))))))

(assert (=> d!434569 (= lt!514788 e!947222)))

(declare-fun c!242996 () Bool)

(assert (=> d!434569 (= c!242996 ((_ is Nil!15672) (t!137275 l1!3136)))))

(assert (=> d!434569 (= (++!4224 (t!137275 l1!3136) l2!3105) lt!514788)))

(assert (= (and d!434569 c!242996) b!1481552))

(assert (= (and d!434569 (not c!242996)) b!1481553))

(assert (= (and d!434569 res!669444) b!1481554))

(assert (= (and b!1481554 res!669445) b!1481555))

(declare-fun m!1727963 () Bool)

(assert (=> b!1481553 m!1727963))

(declare-fun m!1727965 () Bool)

(assert (=> b!1481554 m!1727965))

(assert (=> b!1481554 m!1727237))

(assert (=> b!1481554 m!1726933))

(declare-fun m!1727967 () Bool)

(assert (=> d!434569 m!1727967))

(assert (=> d!434569 m!1727765))

(assert (=> d!434569 m!1726939))

(assert (=> b!1481081 d!434569))

(declare-fun d!434573 () Bool)

(declare-fun lt!514790 () Bool)

(declare-fun e!947224 () Bool)

(assert (=> d!434573 (= lt!514790 e!947224)))

(declare-fun res!669448 () Bool)

(assert (=> d!434573 (=> (not res!669448) (not e!947224))))

(assert (=> d!434573 (= res!669448 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 lt!514518)))))) (list!6230 (singletonSeq!1337 (h!21073 lt!514518)))))))

(declare-fun e!947225 () Bool)

(assert (=> d!434573 (= lt!514790 e!947225)))

(declare-fun res!669447 () Bool)

(assert (=> d!434573 (=> (not res!669447) (not e!947225))))

(declare-fun lt!514789 () tuple2!14338)

(assert (=> d!434573 (= res!669447 (= (size!12697 (_1!8055 lt!514789)) 1))))

(assert (=> d!434573 (= lt!514789 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 lt!514518)))))))

(assert (=> d!434573 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434573 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 lt!514518)) lt!514790)))

(declare-fun b!1481556 () Bool)

(declare-fun res!669446 () Bool)

(assert (=> b!1481556 (=> (not res!669446) (not e!947225))))

(assert (=> b!1481556 (= res!669446 (= (apply!4052 (_1!8055 lt!514789) 0) (h!21073 lt!514518)))))

(declare-fun b!1481557 () Bool)

(assert (=> b!1481557 (= e!947225 (isEmpty!9807 (_2!8055 lt!514789)))))

(declare-fun b!1481558 () Bool)

(assert (=> b!1481558 (= e!947224 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 lt!514518)))))))))

(assert (= (and d!434573 res!669447) b!1481556))

(assert (= (and b!1481556 res!669446) b!1481557))

(assert (= (and d!434573 res!669448) b!1481558))

(declare-fun m!1727969 () Bool)

(assert (=> d!434573 m!1727969))

(declare-fun m!1727971 () Bool)

(assert (=> d!434573 m!1727971))

(assert (=> d!434573 m!1727969))

(declare-fun m!1727973 () Bool)

(assert (=> d!434573 m!1727973))

(assert (=> d!434573 m!1726761))

(assert (=> d!434573 m!1727969))

(declare-fun m!1727975 () Bool)

(assert (=> d!434573 m!1727975))

(assert (=> d!434573 m!1727975))

(declare-fun m!1727977 () Bool)

(assert (=> d!434573 m!1727977))

(declare-fun m!1727979 () Bool)

(assert (=> d!434573 m!1727979))

(declare-fun m!1727981 () Bool)

(assert (=> b!1481556 m!1727981))

(declare-fun m!1727983 () Bool)

(assert (=> b!1481557 m!1727983))

(assert (=> b!1481558 m!1727969))

(assert (=> b!1481558 m!1727969))

(assert (=> b!1481558 m!1727975))

(assert (=> b!1481558 m!1727975))

(assert (=> b!1481558 m!1727977))

(declare-fun m!1727985 () Bool)

(assert (=> b!1481558 m!1727985))

(assert (=> b!1481057 d!434573))

(declare-fun d!434575 () Bool)

(assert (=> d!434575 true))

(declare-fun lambda!63801 () Int)

(declare-fun order!9473 () Int)

(declare-fun dynLambda!7143 (Int Int) Int)

(assert (=> d!434575 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7143 order!9473 lambda!63801))))

(assert (=> d!434575 true))

(assert (=> d!434575 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7143 order!9473 lambda!63801))))

(declare-fun Forall!573 (Int) Bool)

(assert (=> d!434575 (= (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (Forall!573 lambda!63801))))

(declare-fun bs!345960 () Bool)

(assert (= bs!345960 d!434575))

(declare-fun m!1727999 () Bool)

(assert (=> bs!345960 m!1727999))

(assert (=> d!434293 d!434575))

(declare-fun d!434587 () Bool)

(declare-fun e!947247 () Bool)

(assert (=> d!434587 e!947247))

(declare-fun res!669471 () Bool)

(assert (=> d!434587 (=> (not res!669471) (not e!947247))))

(declare-fun appendAssocInst!346 (Conc!5339 Conc!5339) Bool)

(assert (=> d!434587 (= res!669471 (appendAssocInst!346 (c!242915 (charsOf!1603 lt!514520)) (c!242915 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0)))))))

(declare-fun lt!514808 () BalanceConc!10618)

(declare-fun ++!4227 (Conc!5339 Conc!5339) Conc!5339)

(assert (=> d!434587 (= lt!514808 (BalanceConc!10619 (++!4227 (c!242915 (charsOf!1603 lt!514520)) (c!242915 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))))))

(assert (=> d!434587 (= (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))) lt!514808)))

(declare-fun b!1481595 () Bool)

(declare-fun res!669468 () Bool)

(assert (=> b!1481595 (=> (not res!669468) (not e!947247))))

(declare-fun height!787 (Conc!5339) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1481595 (= res!669468 (<= (height!787 (++!4227 (c!242915 (charsOf!1603 lt!514520)) (c!242915 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))) (+ (max!0 (height!787 (c!242915 (charsOf!1603 lt!514520))) (height!787 (c!242915 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))) 1)))))

(declare-fun b!1481597 () Bool)

(declare-fun ++!4228 (List!15737 List!15737) List!15737)

(assert (=> b!1481597 (= e!947247 (= (list!6229 lt!514808) (++!4228 (list!6229 (charsOf!1603 lt!514520)) (list!6229 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))))))

(declare-fun b!1481594 () Bool)

(declare-fun res!669469 () Bool)

(assert (=> b!1481594 (=> (not res!669469) (not e!947247))))

(assert (=> b!1481594 (= res!669469 (isBalanced!1584 (++!4227 (c!242915 (charsOf!1603 lt!514520)) (c!242915 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))))))

(declare-fun b!1481596 () Bool)

(declare-fun res!669470 () Bool)

(assert (=> b!1481596 (=> (not res!669470) (not e!947247))))

(assert (=> b!1481596 (= res!669470 (>= (height!787 (++!4227 (c!242915 (charsOf!1603 lt!514520)) (c!242915 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))) (max!0 (height!787 (c!242915 (charsOf!1603 lt!514520))) (height!787 (c!242915 (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0)))))))))

(assert (= (and d!434587 res!669471) b!1481594))

(assert (= (and b!1481594 res!669469) b!1481595))

(assert (= (and b!1481595 res!669468) b!1481596))

(assert (= (and b!1481596 res!669470) b!1481597))

(declare-fun m!1728045 () Bool)

(assert (=> b!1481596 m!1728045))

(declare-fun m!1728047 () Bool)

(assert (=> b!1481596 m!1728047))

(declare-fun m!1728049 () Bool)

(assert (=> b!1481596 m!1728049))

(declare-fun m!1728051 () Bool)

(assert (=> b!1481596 m!1728051))

(declare-fun m!1728053 () Bool)

(assert (=> b!1481596 m!1728053))

(assert (=> b!1481596 m!1728045))

(assert (=> b!1481596 m!1728049))

(assert (=> b!1481596 m!1728051))

(assert (=> b!1481595 m!1728045))

(assert (=> b!1481595 m!1728047))

(assert (=> b!1481595 m!1728049))

(assert (=> b!1481595 m!1728051))

(assert (=> b!1481595 m!1728053))

(assert (=> b!1481595 m!1728045))

(assert (=> b!1481595 m!1728049))

(assert (=> b!1481595 m!1728051))

(assert (=> b!1481594 m!1728045))

(assert (=> b!1481594 m!1728045))

(declare-fun m!1728055 () Bool)

(assert (=> b!1481594 m!1728055))

(declare-fun m!1728057 () Bool)

(assert (=> b!1481597 m!1728057))

(assert (=> b!1481597 m!1727101))

(declare-fun m!1728059 () Bool)

(assert (=> b!1481597 m!1728059))

(assert (=> b!1481597 m!1727093))

(declare-fun m!1728061 () Bool)

(assert (=> b!1481597 m!1728061))

(assert (=> b!1481597 m!1728059))

(assert (=> b!1481597 m!1728061))

(declare-fun m!1728063 () Bool)

(assert (=> b!1481597 m!1728063))

(declare-fun m!1728065 () Bool)

(assert (=> d!434587 m!1728065))

(assert (=> d!434587 m!1728045))

(assert (=> d!434277 d!434587))

(declare-fun d!434607 () Bool)

(declare-fun lt!514810 () BalanceConc!10618)

(assert (=> d!434607 (= (list!6229 lt!514810) (originalCharacters!3657 lt!514520))))

(assert (=> d!434607 (= lt!514810 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 lt!514520))) (value!89305 lt!514520)))))

(assert (=> d!434607 (= (charsOf!1603 lt!514520) lt!514810)))

(declare-fun b_lambda!46393 () Bool)

(assert (=> (not b_lambda!46393) (not d!434607)))

(declare-fun tb!84665 () Bool)

(declare-fun t!137401 () Bool)

(assert (=> (and b!1480954 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137401) tb!84665))

(declare-fun b!1481599 () Bool)

(declare-fun e!947249 () Bool)

(declare-fun tp!420094 () Bool)

(assert (=> b!1481599 (= e!947249 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 lt!514520))) (value!89305 lt!514520)))) tp!420094))))

(declare-fun result!101818 () Bool)

(assert (=> tb!84665 (= result!101818 (and (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 lt!514520))) (value!89305 lt!514520))) e!947249))))

(assert (= tb!84665 b!1481599))

(declare-fun m!1728067 () Bool)

(assert (=> b!1481599 m!1728067))

(declare-fun m!1728069 () Bool)

(assert (=> tb!84665 m!1728069))

(assert (=> d!434607 t!137401))

(declare-fun b_and!102857 () Bool)

(assert (= b_and!102835 (and (=> t!137401 result!101818) b_and!102857)))

(declare-fun tb!84667 () Bool)

(declare-fun t!137403 () Bool)

(assert (=> (and b!1480939 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137403) tb!84667))

(declare-fun result!101820 () Bool)

(assert (= result!101820 result!101818))

(assert (=> d!434607 t!137403))

(declare-fun b_and!102859 () Bool)

(assert (= b_and!102833 (and (=> t!137403 result!101820) b_and!102859)))

(declare-fun t!137405 () Bool)

(declare-fun tb!84669 () Bool)

(assert (=> (and b!1481277 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137405) tb!84669))

(declare-fun result!101822 () Bool)

(assert (= result!101822 result!101818))

(assert (=> d!434607 t!137405))

(declare-fun b_and!102861 () Bool)

(assert (= b_and!102837 (and (=> t!137405 result!101822) b_and!102861)))

(declare-fun tb!84671 () Bool)

(declare-fun t!137407 () Bool)

(assert (=> (and b!1481249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137407) tb!84671))

(declare-fun result!101824 () Bool)

(assert (= result!101824 result!101818))

(assert (=> d!434607 t!137407))

(declare-fun b_and!102863 () Bool)

(assert (= b_and!102841 (and (=> t!137407 result!101824) b_and!102863)))

(declare-fun t!137409 () Bool)

(declare-fun tb!84673 () Bool)

(assert (=> (and b!1480955 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137409) tb!84673))

(declare-fun result!101826 () Bool)

(assert (= result!101826 result!101818))

(assert (=> d!434607 t!137409))

(declare-fun b_and!102865 () Bool)

(assert (= b_and!102843 (and (=> t!137409 result!101826) b_and!102865)))

(declare-fun tb!84675 () Bool)

(declare-fun t!137411 () Bool)

(assert (=> (and b!1481286 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137411) tb!84675))

(declare-fun result!101828 () Bool)

(assert (= result!101828 result!101818))

(assert (=> d!434607 t!137411))

(declare-fun b_and!102867 () Bool)

(assert (= b_and!102839 (and (=> t!137411 result!101828) b_and!102867)))

(declare-fun m!1728071 () Bool)

(assert (=> d!434607 m!1728071))

(declare-fun m!1728073 () Bool)

(assert (=> d!434607 m!1728073))

(assert (=> d!434277 d!434607))

(declare-fun d!434609 () Bool)

(declare-fun e!947252 () Bool)

(assert (=> d!434609 e!947252))

(declare-fun res!669475 () Bool)

(assert (=> d!434609 (=> (not res!669475) (not e!947252))))

(declare-fun lt!514813 () BalanceConc!10618)

(assert (=> d!434609 (= res!669475 (= (list!6229 lt!514813) (Cons!15671 (apply!4051 (charsOf!1603 lt!514521) 0) Nil!15671)))))

(declare-fun singleton!553 (C!8396) BalanceConc!10618)

(assert (=> d!434609 (= lt!514813 (singleton!553 (apply!4051 (charsOf!1603 lt!514521) 0)))))

(assert (=> d!434609 (= (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0)) lt!514813)))

(declare-fun b!1481602 () Bool)

(assert (=> b!1481602 (= e!947252 (isBalanced!1584 (c!242915 lt!514813)))))

(assert (= (and d!434609 res!669475) b!1481602))

(declare-fun m!1728075 () Bool)

(assert (=> d!434609 m!1728075))

(assert (=> d!434609 m!1727091))

(declare-fun m!1728077 () Bool)

(assert (=> d!434609 m!1728077))

(declare-fun m!1728079 () Bool)

(assert (=> b!1481602 m!1728079))

(assert (=> d!434277 d!434609))

(declare-fun d!434611 () Bool)

(declare-fun lt!514869 () Bool)

(declare-fun prefixMatch!325 (Regex!4109 List!15737) Bool)

(assert (=> d!434611 (= lt!514869 (prefixMatch!325 (rulesRegex!435 thiss!27374 rules!4290) (list!6229 (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))))))))

(declare-datatypes ((List!15742 0))(
  ( (Nil!15676) (Cons!15676 (h!21077 Regex!4109) (t!137545 List!15742)) )
))
(declare-datatypes ((Context!1260 0))(
  ( (Context!1261 (exprs!1130 List!15742)) )
))
(declare-fun prefixMatchZipperSequence!386 ((InoxSet Context!1260) BalanceConc!10618 Int) Bool)

(declare-fun focus!121 (Regex!4109) (InoxSet Context!1260))

(assert (=> d!434611 (= lt!514869 (prefixMatchZipperSequence!386 (focus!121 (rulesRegex!435 thiss!27374 rules!4290)) (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))) 0))))

(declare-fun lt!514871 () Unit!25520)

(declare-fun lt!514874 () Unit!25520)

(assert (=> d!434611 (= lt!514871 lt!514874)))

(declare-fun lt!514877 () List!15737)

(declare-fun lt!514873 () (InoxSet Context!1260))

(declare-fun prefixMatchZipper!101 ((InoxSet Context!1260) List!15737) Bool)

(assert (=> d!434611 (= (prefixMatch!325 (rulesRegex!435 thiss!27374 rules!4290) lt!514877) (prefixMatchZipper!101 lt!514873 lt!514877))))

(declare-datatypes ((List!15743 0))(
  ( (Nil!15677) (Cons!15677 (h!21078 Context!1260) (t!137546 List!15743)) )
))
(declare-fun lt!514870 () List!15743)

(declare-fun prefixMatchZipperRegexEquiv!101 ((InoxSet Context!1260) List!15743 Regex!4109 List!15737) Unit!25520)

(assert (=> d!434611 (= lt!514874 (prefixMatchZipperRegexEquiv!101 lt!514873 lt!514870 (rulesRegex!435 thiss!27374 rules!4290) lt!514877))))

(assert (=> d!434611 (= lt!514877 (list!6229 (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0)))))))

(declare-fun toList!785 ((InoxSet Context!1260)) List!15743)

(assert (=> d!434611 (= lt!514870 (toList!785 (focus!121 (rulesRegex!435 thiss!27374 rules!4290))))))

(assert (=> d!434611 (= lt!514873 (focus!121 (rulesRegex!435 thiss!27374 rules!4290)))))

(declare-fun lt!514868 () Unit!25520)

(declare-fun lt!514875 () Unit!25520)

(assert (=> d!434611 (= lt!514868 lt!514875)))

(declare-fun lt!514876 () (InoxSet Context!1260))

(declare-fun lt!514872 () Int)

(declare-fun dropList!493 (BalanceConc!10618 Int) List!15737)

(assert (=> d!434611 (= (prefixMatchZipper!101 lt!514876 (dropList!493 (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))) lt!514872)) (prefixMatchZipperSequence!386 lt!514876 (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))) lt!514872))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!101 ((InoxSet Context!1260) BalanceConc!10618 Int) Unit!25520)

(assert (=> d!434611 (= lt!514875 (lemmaprefixMatchZipperSequenceEquivalent!101 lt!514876 (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0))) lt!514872))))

(assert (=> d!434611 (= lt!514872 0)))

(assert (=> d!434611 (= lt!514876 (focus!121 (rulesRegex!435 thiss!27374 rules!4290)))))

(declare-fun validRegex!1690 (Regex!4109) Bool)

(assert (=> d!434611 (validRegex!1690 (rulesRegex!435 thiss!27374 rules!4290))))

(assert (=> d!434611 (= (prefixMatchZipperSequence!385 (rulesRegex!435 thiss!27374 rules!4290) (++!4226 (charsOf!1603 lt!514520) (singletonSeq!1336 (apply!4051 (charsOf!1603 lt!514521) 0)))) lt!514869)))

(declare-fun bs!345973 () Bool)

(assert (= bs!345973 d!434611))

(assert (=> bs!345973 m!1727095))

(declare-fun m!1728117 () Bool)

(assert (=> bs!345973 m!1728117))

(declare-fun m!1728121 () Bool)

(assert (=> bs!345973 m!1728121))

(declare-fun m!1728125 () Bool)

(assert (=> bs!345973 m!1728125))

(assert (=> bs!345973 m!1727095))

(declare-fun m!1728127 () Bool)

(assert (=> bs!345973 m!1728127))

(declare-fun m!1728129 () Bool)

(assert (=> bs!345973 m!1728129))

(assert (=> bs!345973 m!1727095))

(declare-fun m!1728131 () Bool)

(assert (=> bs!345973 m!1728131))

(declare-fun m!1728133 () Bool)

(assert (=> bs!345973 m!1728133))

(assert (=> bs!345973 m!1727097))

(declare-fun m!1728135 () Bool)

(assert (=> bs!345973 m!1728135))

(assert (=> bs!345973 m!1727095))

(declare-fun m!1728137 () Bool)

(assert (=> bs!345973 m!1728137))

(declare-fun m!1728139 () Bool)

(assert (=> bs!345973 m!1728139))

(assert (=> bs!345973 m!1727097))

(assert (=> bs!345973 m!1728121))

(assert (=> bs!345973 m!1727097))

(assert (=> bs!345973 m!1728137))

(assert (=> bs!345973 m!1727097))

(declare-fun m!1728141 () Bool)

(assert (=> bs!345973 m!1728141))

(assert (=> bs!345973 m!1728133))

(declare-fun m!1728143 () Bool)

(assert (=> bs!345973 m!1728143))

(assert (=> bs!345973 m!1727095))

(assert (=> bs!345973 m!1728133))

(assert (=> bs!345973 m!1727097))

(declare-fun m!1728145 () Bool)

(assert (=> bs!345973 m!1728145))

(assert (=> d!434277 d!434611))

(declare-fun d!434619 () Bool)

(declare-fun lt!514882 () Unit!25520)

(declare-fun lemma!184 (List!15739 LexerInterface!2451 List!15739) Unit!25520)

(assert (=> d!434619 (= lt!514882 (lemma!184 rules!4290 thiss!27374 rules!4290))))

(declare-fun lambda!63810 () Int)

(declare-fun generalisedUnion!192 (List!15742) Regex!4109)

(declare-fun map!3367 (List!15739 Int) List!15742)

(assert (=> d!434619 (= (rulesRegex!435 thiss!27374 rules!4290) (generalisedUnion!192 (map!3367 rules!4290 lambda!63810)))))

(declare-fun bs!345974 () Bool)

(assert (= bs!345974 d!434619))

(declare-fun m!1728147 () Bool)

(assert (=> bs!345974 m!1728147))

(declare-fun m!1728149 () Bool)

(assert (=> bs!345974 m!1728149))

(assert (=> bs!345974 m!1728149))

(declare-fun m!1728151 () Bool)

(assert (=> bs!345974 m!1728151))

(assert (=> d!434277 d!434619))

(declare-fun d!434621 () Bool)

(declare-fun lt!514886 () C!8396)

(declare-fun apply!4057 (List!15737 Int) C!8396)

(assert (=> d!434621 (= lt!514886 (apply!4057 (list!6229 (charsOf!1603 lt!514521)) 0))))

(declare-fun apply!4058 (Conc!5339 Int) C!8396)

(assert (=> d!434621 (= lt!514886 (apply!4058 (c!242915 (charsOf!1603 lt!514521)) 0))))

(declare-fun e!947259 () Bool)

(assert (=> d!434621 e!947259))

(declare-fun res!669481 () Bool)

(assert (=> d!434621 (=> (not res!669481) (not e!947259))))

(assert (=> d!434621 (= res!669481 (<= 0 0))))

(assert (=> d!434621 (= (apply!4051 (charsOf!1603 lt!514521) 0) lt!514886)))

(declare-fun b!1481609 () Bool)

(assert (=> b!1481609 (= e!947259 (< 0 (size!12695 (charsOf!1603 lt!514521))))))

(assert (= (and d!434621 res!669481) b!1481609))

(assert (=> d!434621 m!1727103))

(declare-fun m!1728161 () Bool)

(assert (=> d!434621 m!1728161))

(assert (=> d!434621 m!1728161))

(declare-fun m!1728163 () Bool)

(assert (=> d!434621 m!1728163))

(declare-fun m!1728165 () Bool)

(assert (=> d!434621 m!1728165))

(assert (=> b!1481609 m!1727103))

(declare-fun m!1728167 () Bool)

(assert (=> b!1481609 m!1728167))

(assert (=> d!434277 d!434621))

(declare-fun d!434625 () Bool)

(declare-fun lt!514887 () BalanceConc!10618)

(assert (=> d!434625 (= (list!6229 lt!514887) (originalCharacters!3657 lt!514521))))

(assert (=> d!434625 (= lt!514887 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 lt!514521))) (value!89305 lt!514521)))))

(assert (=> d!434625 (= (charsOf!1603 lt!514521) lt!514887)))

(declare-fun b_lambda!46397 () Bool)

(assert (=> (not b_lambda!46397) (not d!434625)))

(declare-fun t!137426 () Bool)

(declare-fun tb!84689 () Bool)

(assert (=> (and b!1481286 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137426) tb!84689))

(declare-fun b!1481610 () Bool)

(declare-fun e!947260 () Bool)

(declare-fun tp!420096 () Bool)

(assert (=> b!1481610 (= e!947260 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 lt!514521))) (value!89305 lt!514521)))) tp!420096))))

(declare-fun result!101842 () Bool)

(assert (=> tb!84689 (= result!101842 (and (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 lt!514521))) (value!89305 lt!514521))) e!947260))))

(assert (= tb!84689 b!1481610))

(declare-fun m!1728169 () Bool)

(assert (=> b!1481610 m!1728169))

(declare-fun m!1728171 () Bool)

(assert (=> tb!84689 m!1728171))

(assert (=> d!434625 t!137426))

(declare-fun b_and!102881 () Bool)

(assert (= b_and!102867 (and (=> t!137426 result!101842) b_and!102881)))

(declare-fun t!137428 () Bool)

(declare-fun tb!84691 () Bool)

(assert (=> (and b!1480954 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137428) tb!84691))

(declare-fun result!101844 () Bool)

(assert (= result!101844 result!101842))

(assert (=> d!434625 t!137428))

(declare-fun b_and!102883 () Bool)

(assert (= b_and!102857 (and (=> t!137428 result!101844) b_and!102883)))

(declare-fun tb!84693 () Bool)

(declare-fun t!137430 () Bool)

(assert (=> (and b!1481249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137430) tb!84693))

(declare-fun result!101846 () Bool)

(assert (= result!101846 result!101842))

(assert (=> d!434625 t!137430))

(declare-fun b_and!102885 () Bool)

(assert (= b_and!102863 (and (=> t!137430 result!101846) b_and!102885)))

(declare-fun tb!84695 () Bool)

(declare-fun t!137432 () Bool)

(assert (=> (and b!1480939 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137432) tb!84695))

(declare-fun result!101848 () Bool)

(assert (= result!101848 result!101842))

(assert (=> d!434625 t!137432))

(declare-fun b_and!102887 () Bool)

(assert (= b_and!102859 (and (=> t!137432 result!101848) b_and!102887)))

(declare-fun t!137434 () Bool)

(declare-fun tb!84697 () Bool)

(assert (=> (and b!1480955 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137434) tb!84697))

(declare-fun result!101850 () Bool)

(assert (= result!101850 result!101842))

(assert (=> d!434625 t!137434))

(declare-fun b_and!102889 () Bool)

(assert (= b_and!102865 (and (=> t!137434 result!101850) b_and!102889)))

(declare-fun t!137436 () Bool)

(declare-fun tb!84699 () Bool)

(assert (=> (and b!1481277 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137436) tb!84699))

(declare-fun result!101852 () Bool)

(assert (= result!101852 result!101842))

(assert (=> d!434625 t!137436))

(declare-fun b_and!102891 () Bool)

(assert (= b_and!102861 (and (=> t!137436 result!101852) b_and!102891)))

(declare-fun m!1728173 () Bool)

(assert (=> d!434625 m!1728173))

(declare-fun m!1728175 () Bool)

(assert (=> d!434625 m!1728175))

(assert (=> d!434277 d!434625))

(declare-fun d!434627 () Bool)

(assert (=> d!434627 true))

(declare-fun lt!514892 () Bool)

(declare-fun rulesValidInductive!844 (LexerInterface!2451 List!15739) Bool)

(assert (=> d!434627 (= lt!514892 (rulesValidInductive!844 thiss!27374 rules!4290))))

(declare-fun lambda!63813 () Int)

(declare-fun forall!3814 (List!15739 Int) Bool)

(assert (=> d!434627 (= lt!514892 (forall!3814 rules!4290 lambda!63813))))

(assert (=> d!434627 (= (rulesValid!1026 thiss!27374 rules!4290) lt!514892)))

(declare-fun bs!345975 () Bool)

(assert (= bs!345975 d!434627))

(declare-fun m!1728177 () Bool)

(assert (=> bs!345975 m!1728177))

(declare-fun m!1728179 () Bool)

(assert (=> bs!345975 m!1728179))

(assert (=> d!434193 d!434627))

(declare-fun d!434629 () Bool)

(declare-fun charsToBigInt!1 (List!15736) Int)

(assert (=> d!434629 (= (inv!17 (value!89305 (h!21073 l1!3136))) (= (charsToBigInt!1 (text!20643 (value!89305 (h!21073 l1!3136)))) (value!89297 (value!89305 (h!21073 l1!3136)))))))

(declare-fun bs!345976 () Bool)

(assert (= bs!345976 d!434629))

(declare-fun m!1728181 () Bool)

(assert (=> bs!345976 m!1728181))

(assert (=> b!1481226 d!434629))

(declare-fun d!434631 () Bool)

(assert (=> d!434631 (= (isEmpty!9806 (originalCharacters!3657 (h!21073 l2!3105))) ((_ is Nil!15671) (originalCharacters!3657 (h!21073 l2!3105))))))

(assert (=> d!434195 d!434631))

(declare-fun d!434633 () Bool)

(declare-fun res!669498 () Bool)

(declare-fun e!947268 () Bool)

(assert (=> d!434633 (=> res!669498 e!947268)))

(assert (=> d!434633 (= res!669498 ((_ is Nil!15672) l1!3136))))

(assert (=> d!434633 (= (forall!3812 l1!3136 lambda!63778) e!947268)))

(declare-fun b!1481629 () Bool)

(declare-fun e!947269 () Bool)

(assert (=> b!1481629 (= e!947268 e!947269)))

(declare-fun res!669499 () Bool)

(assert (=> b!1481629 (=> (not res!669499) (not e!947269))))

(declare-fun dynLambda!7144 (Int Token!5252) Bool)

(assert (=> b!1481629 (= res!669499 (dynLambda!7144 lambda!63778 (h!21073 l1!3136)))))

(declare-fun b!1481630 () Bool)

(assert (=> b!1481630 (= e!947269 (forall!3812 (t!137275 l1!3136) lambda!63778))))

(assert (= (and d!434633 (not res!669498)) b!1481629))

(assert (= (and b!1481629 res!669499) b!1481630))

(declare-fun b_lambda!46401 () Bool)

(assert (=> (not b_lambda!46401) (not b!1481629)))

(declare-fun m!1728205 () Bool)

(assert (=> b!1481629 m!1728205))

(declare-fun m!1728207 () Bool)

(assert (=> b!1481630 m!1728207))

(assert (=> d!434255 d!434633))

(assert (=> d!434255 d!434299))

(declare-fun d!434637 () Bool)

(assert (=> d!434637 (= (inv!20886 (tag!3059 (h!21074 (t!137276 rules!4290)))) (= (mod (str.len (value!89304 (tag!3059 (h!21074 (t!137276 rules!4290))))) 2) 0))))

(assert (=> b!1481248 d!434637))

(declare-fun d!434639 () Bool)

(declare-fun res!669500 () Bool)

(declare-fun e!947271 () Bool)

(assert (=> d!434639 (=> (not res!669500) (not e!947271))))

(assert (=> d!434639 (= res!669500 (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toValue!4130 (transformation!2795 (h!21074 (t!137276 rules!4290))))))))

(assert (=> d!434639 (= (inv!20889 (transformation!2795 (h!21074 (t!137276 rules!4290)))) e!947271)))

(declare-fun b!1481632 () Bool)

(assert (=> b!1481632 (= e!947271 (equivClasses!1014 (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toValue!4130 (transformation!2795 (h!21074 (t!137276 rules!4290))))))))

(assert (= (and d!434639 res!669500) b!1481632))

(declare-fun m!1728213 () Bool)

(assert (=> d!434639 m!1728213))

(declare-fun m!1728215 () Bool)

(assert (=> b!1481632 m!1728215))

(assert (=> b!1481248 d!434639))

(declare-fun d!434641 () Bool)

(declare-fun lt!514895 () Token!5252)

(assert (=> d!434641 (contains!2953 (t!137275 l1!3136) lt!514895)))

(declare-fun e!947272 () Token!5252)

(assert (=> d!434641 (= lt!514895 e!947272)))

(declare-fun c!243006 () Bool)

(assert (=> d!434641 (= c!243006 (and ((_ is Cons!15672) (t!137275 l1!3136)) ((_ is Nil!15672) (t!137275 (t!137275 l1!3136)))))))

(assert (=> d!434641 (not (isEmpty!9802 (t!137275 l1!3136)))))

(assert (=> d!434641 (= (last!353 (t!137275 l1!3136)) lt!514895)))

(declare-fun b!1481633 () Bool)

(assert (=> b!1481633 (= e!947272 (h!21073 (t!137275 l1!3136)))))

(declare-fun b!1481634 () Bool)

(assert (=> b!1481634 (= e!947272 (last!353 (t!137275 (t!137275 l1!3136))))))

(assert (= (and d!434641 c!243006) b!1481633))

(assert (= (and d!434641 (not c!243006)) b!1481634))

(declare-fun m!1728221 () Bool)

(assert (=> d!434641 m!1728221))

(assert (=> d!434641 m!1726733))

(declare-fun m!1728223 () Bool)

(assert (=> b!1481634 m!1728223))

(assert (=> b!1481199 d!434641))

(declare-fun bs!345979 () Bool)

(declare-fun d!434645 () Bool)

(assert (= bs!345979 (and d!434645 d!434483)))

(declare-fun lambda!63815 () Int)

(assert (=> bs!345979 (= (= (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (= lambda!63815 lambda!63797))))

(assert (=> d!434645 true))

(assert (=> d!434645 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) (dynLambda!7142 order!9471 lambda!63815))))

(assert (=> d!434645 (= (equivClasses!1014 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) (Forall2!475 lambda!63815))))

(declare-fun bs!345981 () Bool)

(assert (= bs!345981 d!434645))

(declare-fun m!1728227 () Bool)

(assert (=> bs!345981 m!1728227))

(assert (=> b!1480977 d!434645))

(assert (=> b!1481109 d!434547))

(declare-fun d!434649 () Bool)

(assert (=> d!434649 (= (inv!17 (value!89305 (h!21073 l2!3105))) (= (charsToBigInt!1 (text!20643 (value!89305 (h!21073 l2!3105)))) (value!89297 (value!89305 (h!21073 l2!3105)))))))

(declare-fun bs!345982 () Bool)

(assert (= bs!345982 d!434649))

(declare-fun m!1728229 () Bool)

(assert (=> bs!345982 m!1728229))

(assert (=> b!1481238 d!434649))

(declare-fun d!434651 () Bool)

(declare-fun list!6234 (Conc!5339) List!15737)

(assert (=> d!434651 (= (list!6229 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))) (list!6234 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))))))

(declare-fun bs!345983 () Bool)

(assert (= bs!345983 d!434651))

(declare-fun m!1728241 () Bool)

(assert (=> bs!345983 m!1728241))

(assert (=> b!1480985 d!434651))

(declare-fun d!434655 () Bool)

(declare-fun res!669511 () Bool)

(declare-fun e!947284 () Bool)

(assert (=> d!434655 (=> res!669511 e!947284)))

(assert (=> d!434655 (= res!669511 ((_ is Nil!15673) rules!4290))))

(assert (=> d!434655 (= (noDuplicateTag!1026 thiss!27374 rules!4290 Nil!15675) e!947284)))

(declare-fun b!1481647 () Bool)

(declare-fun e!947285 () Bool)

(assert (=> b!1481647 (= e!947284 e!947285)))

(declare-fun res!669512 () Bool)

(assert (=> b!1481647 (=> (not res!669512) (not e!947285))))

(declare-fun contains!2955 (List!15741 String!18681) Bool)

(assert (=> b!1481647 (= res!669512 (not (contains!2955 Nil!15675 (tag!3059 (h!21074 rules!4290)))))))

(declare-fun b!1481648 () Bool)

(assert (=> b!1481648 (= e!947285 (noDuplicateTag!1026 thiss!27374 (t!137276 rules!4290) (Cons!15675 (tag!3059 (h!21074 rules!4290)) Nil!15675)))))

(assert (= (and d!434655 (not res!669511)) b!1481647))

(assert (= (and b!1481647 res!669512) b!1481648))

(declare-fun m!1728251 () Bool)

(assert (=> b!1481647 m!1728251))

(declare-fun m!1728253 () Bool)

(assert (=> b!1481648 m!1728253))

(assert (=> b!1480980 d!434655))

(declare-fun lt!514907 () Bool)

(declare-fun d!434659 () Bool)

(assert (=> d!434659 (= lt!514907 (isEmpty!9806 (list!6229 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)))))))))

(assert (=> d!434659 (= lt!514907 (isEmpty!9811 (c!242915 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521)))))))))

(assert (=> d!434659 (= (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514521))))) lt!514907)))

(declare-fun bs!345984 () Bool)

(assert (= bs!345984 d!434659))

(declare-fun m!1728259 () Bool)

(assert (=> bs!345984 m!1728259))

(assert (=> bs!345984 m!1728259))

(declare-fun m!1728261 () Bool)

(assert (=> bs!345984 m!1728261))

(declare-fun m!1728263 () Bool)

(assert (=> bs!345984 m!1728263))

(assert (=> b!1481208 d!434659))

(assert (=> b!1481208 d!434489))

(assert (=> b!1481208 d!434491))

(assert (=> b!1481208 d!434497))

(declare-fun bs!345987 () Bool)

(declare-fun d!434663 () Bool)

(assert (= bs!345987 (and d!434663 d!434575)))

(declare-fun lambda!63816 () Int)

(assert (=> bs!345987 (= (and (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (= (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toValue!4130 (transformation!2795 (h!21074 rules!4290))))) (= lambda!63816 lambda!63801))))

(assert (=> d!434663 true))

(assert (=> d!434663 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (dynLambda!7143 order!9473 lambda!63816))))

(assert (=> d!434663 true))

(assert (=> d!434663 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (dynLambda!7143 order!9473 lambda!63816))))

(assert (=> d!434663 (= (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (Forall!573 lambda!63816))))

(declare-fun bs!345988 () Bool)

(assert (= bs!345988 d!434663))

(declare-fun m!1728273 () Bool)

(assert (=> bs!345988 m!1728273))

(assert (=> d!434297 d!434663))

(declare-fun d!434673 () Bool)

(assert (=> d!434673 (= (list!6229 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))) (list!6234 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))))))

(declare-fun bs!345989 () Bool)

(assert (= bs!345989 d!434673))

(declare-fun m!1728275 () Bool)

(assert (=> bs!345989 m!1728275))

(assert (=> b!1481227 d!434673))

(declare-fun d!434675 () Bool)

(declare-fun lt!514908 () Token!5252)

(assert (=> d!434675 (= lt!514908 (apply!4053 (list!6230 (_1!8055 lt!514632)) 0))))

(assert (=> d!434675 (= lt!514908 (apply!4054 (c!242945 (_1!8055 lt!514632)) 0))))

(declare-fun e!947290 () Bool)

(assert (=> d!434675 e!947290))

(declare-fun res!669518 () Bool)

(assert (=> d!434675 (=> (not res!669518) (not e!947290))))

(assert (=> d!434675 (= res!669518 (<= 0 0))))

(assert (=> d!434675 (= (apply!4052 (_1!8055 lt!514632) 0) lt!514908)))

(declare-fun b!1481654 () Bool)

(assert (=> b!1481654 (= e!947290 (< 0 (size!12697 (_1!8055 lt!514632))))))

(assert (= (and d!434675 res!669518) b!1481654))

(assert (=> d!434675 m!1727741))

(assert (=> d!434675 m!1727741))

(declare-fun m!1728283 () Bool)

(assert (=> d!434675 m!1728283))

(declare-fun m!1728285 () Bool)

(assert (=> d!434675 m!1728285))

(assert (=> b!1481654 m!1727109))

(assert (=> b!1481206 d!434675))

(declare-fun d!434677 () Bool)

(declare-fun res!669519 () Bool)

(declare-fun e!947291 () Bool)

(assert (=> d!434677 (=> res!669519 e!947291)))

(assert (=> d!434677 (= res!669519 ((_ is Nil!15672) l2!3105))))

(assert (=> d!434677 (= (forall!3812 l2!3105 lambda!63777) e!947291)))

(declare-fun b!1481655 () Bool)

(declare-fun e!947292 () Bool)

(assert (=> b!1481655 (= e!947291 e!947292)))

(declare-fun res!669520 () Bool)

(assert (=> b!1481655 (=> (not res!669520) (not e!947292))))

(assert (=> b!1481655 (= res!669520 (dynLambda!7144 lambda!63777 (h!21073 l2!3105)))))

(declare-fun b!1481656 () Bool)

(assert (=> b!1481656 (= e!947292 (forall!3812 (t!137275 l2!3105) lambda!63777))))

(assert (= (and d!434677 (not res!669519)) b!1481655))

(assert (= (and b!1481655 res!669520) b!1481656))

(declare-fun b_lambda!46405 () Bool)

(assert (=> (not b_lambda!46405) (not b!1481655)))

(declare-fun m!1728287 () Bool)

(assert (=> b!1481655 m!1728287))

(declare-fun m!1728289 () Bool)

(assert (=> b!1481656 m!1728289))

(assert (=> d!434251 d!434677))

(assert (=> d!434251 d!434299))

(declare-fun d!434679 () Bool)

(assert (=> d!434679 (= (isEmpty!9806 (originalCharacters!3657 (h!21073 l1!3136))) ((_ is Nil!15671) (originalCharacters!3657 (h!21073 l1!3136))))))

(assert (=> d!434287 d!434679))

(declare-fun d!434681 () Bool)

(assert (=> d!434681 (= (separableTokensPredicate!590 thiss!27374 (h!21073 lt!514518) (h!21073 (t!137275 lt!514518)) rules!4290) (not (prefixMatchZipperSequence!385 (rulesRegex!435 thiss!27374 rules!4290) (++!4226 (charsOf!1603 (h!21073 lt!514518)) (singletonSeq!1336 (apply!4051 (charsOf!1603 (h!21073 (t!137275 lt!514518))) 0))))))))

(declare-fun bs!345990 () Bool)

(assert (= bs!345990 d!434681))

(declare-fun m!1728291 () Bool)

(assert (=> bs!345990 m!1728291))

(declare-fun m!1728293 () Bool)

(assert (=> bs!345990 m!1728293))

(assert (=> bs!345990 m!1727095))

(declare-fun m!1728295 () Bool)

(assert (=> bs!345990 m!1728295))

(declare-fun m!1728297 () Bool)

(assert (=> bs!345990 m!1728297))

(declare-fun m!1728299 () Bool)

(assert (=> bs!345990 m!1728299))

(assert (=> bs!345990 m!1728293))

(assert (=> bs!345990 m!1728295))

(assert (=> bs!345990 m!1727095))

(assert (=> bs!345990 m!1726819))

(assert (=> bs!345990 m!1726819))

(assert (=> bs!345990 m!1728291))

(assert (=> bs!345990 m!1728299))

(assert (=> b!1481000 d!434681))

(declare-fun d!434683 () Bool)

(assert (=> d!434683 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 lt!514518))))

(declare-fun lt!514909 () Unit!25520)

(assert (=> d!434683 (= lt!514909 (choose!9068 thiss!27374 rules!4290 lt!514518 (h!21073 lt!514518)))))

(assert (=> d!434683 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434683 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 lt!514518 (h!21073 lt!514518)) lt!514909)))

(declare-fun bs!345991 () Bool)

(assert (= bs!345991 d!434683))

(assert (=> bs!345991 m!1726823))

(declare-fun m!1728301 () Bool)

(assert (=> bs!345991 m!1728301))

(assert (=> bs!345991 m!1726761))

(assert (=> b!1481000 d!434683))

(assert (=> b!1481000 d!434573))

(declare-fun d!434685 () Bool)

(declare-fun lt!514911 () Bool)

(declare-fun e!947306 () Bool)

(assert (=> d!434685 (= lt!514911 e!947306)))

(declare-fun res!669523 () Bool)

(assert (=> d!434685 (=> (not res!669523) (not e!947306))))

(assert (=> d!434685 (= res!669523 (= (list!6230 (_1!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 lt!514518))))))) (list!6230 (singletonSeq!1337 (h!21073 (t!137275 lt!514518))))))))

(declare-fun e!947307 () Bool)

(assert (=> d!434685 (= lt!514911 e!947307)))

(declare-fun res!669522 () Bool)

(assert (=> d!434685 (=> (not res!669522) (not e!947307))))

(declare-fun lt!514910 () tuple2!14338)

(assert (=> d!434685 (= res!669522 (= (size!12697 (_1!8055 lt!514910)) 1))))

(assert (=> d!434685 (= lt!514910 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 lt!514518))))))))

(assert (=> d!434685 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434685 (= (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 lt!514518))) lt!514911)))

(declare-fun b!1481680 () Bool)

(declare-fun res!669521 () Bool)

(assert (=> b!1481680 (=> (not res!669521) (not e!947307))))

(assert (=> b!1481680 (= res!669521 (= (apply!4052 (_1!8055 lt!514910) 0) (h!21073 (t!137275 lt!514518))))))

(declare-fun b!1481681 () Bool)

(assert (=> b!1481681 (= e!947307 (isEmpty!9807 (_2!8055 lt!514910)))))

(declare-fun b!1481682 () Bool)

(assert (=> b!1481682 (= e!947306 (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 (h!21073 (t!137275 lt!514518))))))))))

(assert (= (and d!434685 res!669522) b!1481680))

(assert (= (and b!1481680 res!669521) b!1481681))

(assert (= (and d!434685 res!669523) b!1481682))

(declare-fun m!1728303 () Bool)

(assert (=> d!434685 m!1728303))

(declare-fun m!1728305 () Bool)

(assert (=> d!434685 m!1728305))

(assert (=> d!434685 m!1728303))

(declare-fun m!1728307 () Bool)

(assert (=> d!434685 m!1728307))

(assert (=> d!434685 m!1726761))

(assert (=> d!434685 m!1728303))

(declare-fun m!1728309 () Bool)

(assert (=> d!434685 m!1728309))

(assert (=> d!434685 m!1728309))

(declare-fun m!1728311 () Bool)

(assert (=> d!434685 m!1728311))

(declare-fun m!1728313 () Bool)

(assert (=> d!434685 m!1728313))

(declare-fun m!1728315 () Bool)

(assert (=> b!1481680 m!1728315))

(declare-fun m!1728317 () Bool)

(assert (=> b!1481681 m!1728317))

(assert (=> b!1481682 m!1728303))

(assert (=> b!1481682 m!1728303))

(assert (=> b!1481682 m!1728309))

(assert (=> b!1481682 m!1728309))

(assert (=> b!1481682 m!1728311))

(declare-fun m!1728319 () Bool)

(assert (=> b!1481682 m!1728319))

(assert (=> b!1481000 d!434685))

(declare-fun d!434687 () Bool)

(assert (=> d!434687 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 lt!514518)))))

(declare-fun lt!514912 () Unit!25520)

(assert (=> d!434687 (= lt!514912 (choose!9068 thiss!27374 rules!4290 lt!514518 (h!21073 (t!137275 lt!514518))))))

(assert (=> d!434687 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434687 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 lt!514518 (h!21073 (t!137275 lt!514518))) lt!514912)))

(declare-fun bs!345992 () Bool)

(assert (= bs!345992 d!434687))

(assert (=> bs!345992 m!1726829))

(declare-fun m!1728327 () Bool)

(assert (=> bs!345992 m!1728327))

(assert (=> bs!345992 m!1726761))

(assert (=> b!1481000 d!434687))

(declare-fun d!434689 () Bool)

(declare-fun lt!514913 () BalanceConc!10618)

(assert (=> d!434689 (= (list!6229 lt!514913) (originalCharacters!3657 (h!21073 (t!137275 lt!514518))))))

(assert (=> d!434689 (= lt!514913 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518))))) (value!89305 (h!21073 (t!137275 lt!514518)))))))

(assert (=> d!434689 (= (charsOf!1603 (h!21073 (t!137275 lt!514518))) lt!514913)))

(declare-fun b_lambda!46407 () Bool)

(assert (=> (not b_lambda!46407) (not d!434689)))

(declare-fun tb!84713 () Bool)

(declare-fun t!137450 () Bool)

(assert (=> (and b!1481286 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137450) tb!84713))

(declare-fun b!1481694 () Bool)

(declare-fun e!947312 () Bool)

(declare-fun tp!420128 () Bool)

(assert (=> b!1481694 (= e!947312 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518))))) (value!89305 (h!21073 (t!137275 lt!514518)))))) tp!420128))))

(declare-fun result!101868 () Bool)

(assert (=> tb!84713 (= result!101868 (and (inv!20894 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518))))) (value!89305 (h!21073 (t!137275 lt!514518))))) e!947312))))

(assert (= tb!84713 b!1481694))

(declare-fun m!1728329 () Bool)

(assert (=> b!1481694 m!1728329))

(declare-fun m!1728331 () Bool)

(assert (=> tb!84713 m!1728331))

(assert (=> d!434689 t!137450))

(declare-fun b_and!102917 () Bool)

(assert (= b_and!102881 (and (=> t!137450 result!101868) b_and!102917)))

(declare-fun t!137452 () Bool)

(declare-fun tb!84715 () Bool)

(assert (=> (and b!1480955 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137452) tb!84715))

(declare-fun result!101870 () Bool)

(assert (= result!101870 result!101868))

(assert (=> d!434689 t!137452))

(declare-fun b_and!102919 () Bool)

(assert (= b_and!102889 (and (=> t!137452 result!101870) b_and!102919)))

(declare-fun tb!84717 () Bool)

(declare-fun t!137454 () Bool)

(assert (=> (and b!1481249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137454) tb!84717))

(declare-fun result!101872 () Bool)

(assert (= result!101872 result!101868))

(assert (=> d!434689 t!137454))

(declare-fun b_and!102921 () Bool)

(assert (= b_and!102885 (and (=> t!137454 result!101872) b_and!102921)))

(declare-fun tb!84719 () Bool)

(declare-fun t!137456 () Bool)

(assert (=> (and b!1481277 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137456) tb!84719))

(declare-fun result!101874 () Bool)

(assert (= result!101874 result!101868))

(assert (=> d!434689 t!137456))

(declare-fun b_and!102923 () Bool)

(assert (= b_and!102891 (and (=> t!137456 result!101874) b_and!102923)))

(declare-fun tb!84721 () Bool)

(declare-fun t!137458 () Bool)

(assert (=> (and b!1480954 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137458) tb!84721))

(declare-fun result!101876 () Bool)

(assert (= result!101876 result!101868))

(assert (=> d!434689 t!137458))

(declare-fun b_and!102925 () Bool)

(assert (= b_and!102883 (and (=> t!137458 result!101876) b_and!102925)))

(declare-fun t!137460 () Bool)

(declare-fun tb!84723 () Bool)

(assert (=> (and b!1480939 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137460) tb!84723))

(declare-fun result!101878 () Bool)

(assert (= result!101878 result!101868))

(assert (=> d!434689 t!137460))

(declare-fun b_and!102927 () Bool)

(assert (= b_and!102887 (and (=> t!137460 result!101878) b_and!102927)))

(declare-fun m!1728339 () Bool)

(assert (=> d!434689 m!1728339))

(declare-fun m!1728341 () Bool)

(assert (=> d!434689 m!1728341))

(assert (=> b!1481000 d!434689))

(declare-fun d!434691 () Bool)

(declare-fun lt!514914 () Int)

(assert (=> d!434691 (= lt!514914 (size!12694 (list!6229 (charsOf!1603 (h!21073 (t!137275 lt!514518))))))))

(assert (=> d!434691 (= lt!514914 (size!12701 (c!242915 (charsOf!1603 (h!21073 (t!137275 lt!514518))))))))

(assert (=> d!434691 (= (size!12695 (charsOf!1603 (h!21073 (t!137275 lt!514518)))) lt!514914)))

(declare-fun bs!345993 () Bool)

(assert (= bs!345993 d!434691))

(assert (=> bs!345993 m!1726819))

(declare-fun m!1728343 () Bool)

(assert (=> bs!345993 m!1728343))

(assert (=> bs!345993 m!1728343))

(declare-fun m!1728345 () Bool)

(assert (=> bs!345993 m!1728345))

(declare-fun m!1728347 () Bool)

(assert (=> bs!345993 m!1728347))

(assert (=> b!1481000 d!434691))

(declare-fun bs!345994 () Bool)

(declare-fun d!434693 () Bool)

(assert (= bs!345994 (and d!434693 d!434333)))

(declare-fun lambda!63817 () Int)

(assert (=> bs!345994 (= lambda!63817 lambda!63784)))

(declare-fun bs!345995 () Bool)

(assert (= bs!345995 (and d!434693 d!434251)))

(assert (=> bs!345995 (= lambda!63817 lambda!63777)))

(declare-fun bs!345996 () Bool)

(assert (= bs!345996 (and d!434693 d!434373)))

(assert (=> bs!345996 (= lambda!63817 lambda!63790)))

(declare-fun bs!345997 () Bool)

(assert (= bs!345997 (and d!434693 d!434325)))

(assert (=> bs!345997 (= lambda!63817 lambda!63783)))

(declare-fun bs!345998 () Bool)

(assert (= bs!345998 (and d!434693 d!434199)))

(assert (=> bs!345998 (= lambda!63817 lambda!63775)))

(declare-fun bs!345999 () Bool)

(assert (= bs!345999 (and d!434693 d!434255)))

(assert (=> bs!345999 (= lambda!63817 lambda!63778)))

(declare-fun b!1481718 () Bool)

(declare-fun e!947326 () Bool)

(assert (=> b!1481718 (= e!947326 true)))

(declare-fun b!1481717 () Bool)

(declare-fun e!947325 () Bool)

(assert (=> b!1481717 (= e!947325 e!947326)))

(declare-fun b!1481716 () Bool)

(declare-fun e!947324 () Bool)

(assert (=> b!1481716 (= e!947324 e!947325)))

(assert (=> d!434693 e!947324))

(assert (= b!1481717 b!1481718))

(assert (= b!1481716 b!1481717))

(assert (= (and d!434693 ((_ is Cons!15673) rules!4290)) b!1481716))

(assert (=> b!1481718 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63817))))

(assert (=> b!1481718 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7137 order!9463 lambda!63817))))

(assert (=> d!434693 true))

(declare-fun lt!514915 () Bool)

(assert (=> d!434693 (= lt!514915 (forall!3812 (t!137275 l1!3136) lambda!63817))))

(declare-fun e!947321 () Bool)

(assert (=> d!434693 (= lt!514915 e!947321)))

(declare-fun res!669525 () Bool)

(assert (=> d!434693 (=> res!669525 e!947321)))

(assert (=> d!434693 (= res!669525 (not ((_ is Cons!15672) (t!137275 l1!3136))))))

(assert (=> d!434693 (not (isEmpty!9803 rules!4290))))

(assert (=> d!434693 (= (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 l1!3136)) lt!514915)))

(declare-fun b!1481709 () Bool)

(declare-fun e!947320 () Bool)

(assert (=> b!1481709 (= e!947321 e!947320)))

(declare-fun res!669524 () Bool)

(assert (=> b!1481709 (=> (not res!669524) (not e!947320))))

(assert (=> b!1481709 (= res!669524 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 l1!3136))))))

(declare-fun b!1481710 () Bool)

(assert (=> b!1481710 (= e!947320 (rulesProduceEachTokenIndividuallyList!818 thiss!27374 rules!4290 (t!137275 (t!137275 l1!3136))))))

(assert (= (and d!434693 (not res!669525)) b!1481709))

(assert (= (and b!1481709 res!669524) b!1481710))

(declare-fun m!1728349 () Bool)

(assert (=> d!434693 m!1728349))

(assert (=> d!434693 m!1726761))

(assert (=> b!1481709 m!1727169))

(declare-fun m!1728351 () Bool)

(assert (=> b!1481710 m!1728351))

(assert (=> b!1481117 d!434693))

(declare-fun d!434695 () Bool)

(declare-fun lt!514916 () Bool)

(assert (=> d!434695 (= lt!514916 (isEmpty!9806 (list!6229 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)))))))))

(assert (=> d!434695 (= lt!514916 (isEmpty!9811 (c!242915 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520)))))))))

(assert (=> d!434695 (= (isEmpty!9807 (_2!8055 (lex!1108 thiss!27374 rules!4290 (print!1143 thiss!27374 (singletonSeq!1337 lt!514520))))) lt!514916)))

(declare-fun bs!346000 () Bool)

(assert (= bs!346000 d!434695))

(declare-fun m!1728353 () Bool)

(assert (=> bs!346000 m!1728353))

(assert (=> bs!346000 m!1728353))

(declare-fun m!1728355 () Bool)

(assert (=> bs!346000 m!1728355))

(declare-fun m!1728357 () Bool)

(assert (=> bs!346000 m!1728357))

(assert (=> b!1481211 d!434695))

(assert (=> b!1481211 d!434383))

(assert (=> b!1481211 d!434381))

(assert (=> b!1481211 d!434377))

(declare-fun d!434697 () Bool)

(declare-fun res!669527 () Bool)

(declare-fun e!947336 () Bool)

(assert (=> d!434697 (=> res!669527 e!947336)))

(assert (=> d!434697 (= res!669527 (or (not ((_ is Cons!15672) (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))) (not ((_ is Cons!15672) (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))))))))

(assert (=> d!434697 (= (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))) rules!4290) e!947336)))

(declare-fun b!1481732 () Bool)

(declare-fun e!947337 () Bool)

(assert (=> b!1481732 (= e!947336 e!947337)))

(declare-fun res!669526 () Bool)

(assert (=> b!1481732 (=> (not res!669526) (not e!947337))))

(assert (=> b!1481732 (= res!669526 (separableTokensPredicate!590 thiss!27374 (h!21073 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136)))) (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))) rules!4290))))

(declare-fun lt!514921 () Unit!25520)

(declare-fun Unit!25552 () Unit!25520)

(assert (=> b!1481732 (= lt!514921 Unit!25552)))

(assert (=> b!1481732 (> (size!12695 (charsOf!1603 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))))) 0)))

(declare-fun lt!514923 () Unit!25520)

(declare-fun Unit!25553 () Unit!25520)

(assert (=> b!1481732 (= lt!514923 Unit!25553)))

(assert (=> b!1481732 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))))))

(declare-fun lt!514920 () Unit!25520)

(declare-fun Unit!25554 () Unit!25520)

(assert (=> b!1481732 (= lt!514920 Unit!25554)))

(assert (=> b!1481732 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136)))))))

(declare-fun lt!514919 () Unit!25520)

(declare-fun lt!514922 () Unit!25520)

(assert (=> b!1481732 (= lt!514919 lt!514922)))

(assert (=> b!1481732 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))))))

(assert (=> b!1481732 (= lt!514922 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))) (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136)))))))))

(declare-fun lt!514918 () Unit!25520)

(declare-fun lt!514917 () Unit!25520)

(assert (=> b!1481732 (= lt!514918 lt!514917)))

(assert (=> b!1481732 (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136)))))))

(assert (=> b!1481732 (= lt!514917 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!489 thiss!27374 rules!4290 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))) (h!21073 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))))))

(declare-fun b!1481733 () Bool)

(assert (=> b!1481733 (= e!947337 (tokensListTwoByTwoPredicateSeparableList!311 thiss!27374 (Cons!15672 (h!21073 (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136))))) (t!137275 (t!137275 (Cons!15672 (h!21073 (t!137275 l1!3136)) (t!137275 (t!137275 l1!3136)))))) rules!4290))))

(assert (= (and d!434697 (not res!669527)) b!1481732))

(assert (= (and b!1481732 res!669526) b!1481733))

(declare-fun m!1728367 () Bool)

(assert (=> b!1481732 m!1728367))

(declare-fun m!1728369 () Bool)

(assert (=> b!1481732 m!1728369))

(declare-fun m!1728371 () Bool)

(assert (=> b!1481732 m!1728371))

(assert (=> b!1481732 m!1728367))

(declare-fun m!1728373 () Bool)

(assert (=> b!1481732 m!1728373))

(declare-fun m!1728375 () Bool)

(assert (=> b!1481732 m!1728375))

(declare-fun m!1728377 () Bool)

(assert (=> b!1481732 m!1728377))

(declare-fun m!1728379 () Bool)

(assert (=> b!1481732 m!1728379))

(declare-fun m!1728381 () Bool)

(assert (=> b!1481733 m!1728381))

(assert (=> b!1481231 d!434697))

(declare-fun b!1481754 () Bool)

(declare-fun e!947343 () Bool)

(declare-fun e!947344 () Bool)

(assert (=> b!1481754 (= e!947343 e!947344)))

(declare-fun c!243009 () Bool)

(assert (=> b!1481754 (= c!243009 ((_ is IntegerValue!8656) (value!89305 (h!21073 (t!137275 l2!3105)))))))

(declare-fun b!1481755 () Bool)

(assert (=> b!1481755 (= e!947343 (inv!16 (value!89305 (h!21073 (t!137275 l2!3105)))))))

(declare-fun b!1481756 () Bool)

(declare-fun res!669528 () Bool)

(declare-fun e!947345 () Bool)

(assert (=> b!1481756 (=> res!669528 e!947345)))

(assert (=> b!1481756 (= res!669528 (not ((_ is IntegerValue!8657) (value!89305 (h!21073 (t!137275 l2!3105))))))))

(assert (=> b!1481756 (= e!947344 e!947345)))

(declare-fun b!1481757 () Bool)

(assert (=> b!1481757 (= e!947345 (inv!15 (value!89305 (h!21073 (t!137275 l2!3105)))))))

(declare-fun b!1481759 () Bool)

(assert (=> b!1481759 (= e!947344 (inv!17 (value!89305 (h!21073 (t!137275 l2!3105)))))))

(declare-fun d!434699 () Bool)

(declare-fun c!243008 () Bool)

(assert (=> d!434699 (= c!243008 ((_ is IntegerValue!8655) (value!89305 (h!21073 (t!137275 l2!3105)))))))

(assert (=> d!434699 (= (inv!21 (value!89305 (h!21073 (t!137275 l2!3105)))) e!947343)))

(assert (= (and d!434699 c!243008) b!1481755))

(assert (= (and d!434699 (not c!243008)) b!1481754))

(assert (= (and b!1481754 c!243009) b!1481759))

(assert (= (and b!1481754 (not c!243009)) b!1481756))

(assert (= (and b!1481756 (not res!669528)) b!1481757))

(declare-fun m!1728383 () Bool)

(assert (=> b!1481755 m!1728383))

(declare-fun m!1728385 () Bool)

(assert (=> b!1481757 m!1728385))

(declare-fun m!1728387 () Bool)

(assert (=> b!1481759 m!1728387))

(assert (=> b!1481275 d!434699))

(declare-fun d!434701 () Bool)

(declare-fun res!669529 () Bool)

(declare-fun e!947351 () Bool)

(assert (=> d!434701 (=> res!669529 e!947351)))

(assert (=> d!434701 (= res!669529 ((_ is Nil!15672) lt!514518))))

(assert (=> d!434701 (= (forall!3812 lt!514518 lambda!63775) e!947351)))

(declare-fun b!1481766 () Bool)

(declare-fun e!947352 () Bool)

(assert (=> b!1481766 (= e!947351 e!947352)))

(declare-fun res!669530 () Bool)

(assert (=> b!1481766 (=> (not res!669530) (not e!947352))))

(assert (=> b!1481766 (= res!669530 (dynLambda!7144 lambda!63775 (h!21073 lt!514518)))))

(declare-fun b!1481767 () Bool)

(assert (=> b!1481767 (= e!947352 (forall!3812 (t!137275 lt!514518) lambda!63775))))

(assert (= (and d!434701 (not res!669529)) b!1481766))

(assert (= (and b!1481766 res!669530) b!1481767))

(declare-fun b_lambda!46409 () Bool)

(assert (=> (not b_lambda!46409) (not b!1481766)))

(declare-fun m!1728389 () Bool)

(assert (=> b!1481766 m!1728389))

(declare-fun m!1728391 () Bool)

(assert (=> b!1481767 m!1728391))

(assert (=> d!434199 d!434701))

(assert (=> d!434199 d!434299))

(declare-fun bs!346001 () Bool)

(declare-fun d!434703 () Bool)

(assert (= bs!346001 (and d!434703 d!434483)))

(declare-fun lambda!63818 () Int)

(assert (=> bs!346001 (= (= (toValue!4130 (transformation!2795 (h!21074 rules!4290))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (= lambda!63818 lambda!63797))))

(declare-fun bs!346002 () Bool)

(assert (= bs!346002 (and d!434703 d!434645)))

(assert (=> bs!346002 (= (= (toValue!4130 (transformation!2795 (h!21074 rules!4290))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) (= lambda!63818 lambda!63815))))

(assert (=> d!434703 true))

(assert (=> d!434703 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (dynLambda!7142 order!9471 lambda!63818))))

(assert (=> d!434703 (= (equivClasses!1014 (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toValue!4130 (transformation!2795 (h!21074 rules!4290)))) (Forall2!475 lambda!63818))))

(declare-fun bs!346003 () Bool)

(assert (= bs!346003 d!434703))

(declare-fun m!1728397 () Bool)

(assert (=> bs!346003 m!1728397))

(assert (=> b!1481232 d!434703))

(declare-fun d!434705 () Bool)

(assert (=> d!434705 (= (inv!20886 (tag!3059 (rule!4572 (h!21073 (t!137275 l1!3136))))) (= (mod (str.len (value!89304 (tag!3059 (rule!4572 (h!21073 (t!137275 l1!3136)))))) 2) 0))))

(assert (=> b!1481285 d!434705))

(declare-fun d!434707 () Bool)

(declare-fun res!669531 () Bool)

(declare-fun e!947356 () Bool)

(assert (=> d!434707 (=> (not res!669531) (not e!947356))))

(assert (=> d!434707 (= res!669531 (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))))))

(assert (=> d!434707 (= (inv!20889 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) e!947356)))

(declare-fun b!1481780 () Bool)

(assert (=> b!1481780 (= e!947356 (equivClasses!1014 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))))))

(assert (= (and d!434707 res!669531) b!1481780))

(declare-fun m!1728399 () Bool)

(assert (=> d!434707 m!1728399))

(declare-fun m!1728401 () Bool)

(assert (=> b!1481780 m!1728401))

(assert (=> b!1481285 d!434707))

(declare-fun bs!346004 () Bool)

(declare-fun d!434709 () Bool)

(assert (= bs!346004 (and d!434709 d!434575)))

(declare-fun lambda!63819 () Int)

(assert (=> bs!346004 (= (and (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (h!21074 rules!4290)))) (= (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toValue!4130 (transformation!2795 (h!21074 rules!4290))))) (= lambda!63819 lambda!63801))))

(declare-fun bs!346005 () Bool)

(assert (= bs!346005 (and d!434709 d!434663)))

(assert (=> bs!346005 (= (and (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) (= (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l1!3136)))))) (= lambda!63819 lambda!63816))))

(assert (=> d!434709 true))

(assert (=> d!434709 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) (dynLambda!7143 order!9473 lambda!63819))))

(assert (=> d!434709 true))

(assert (=> d!434709 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) (dynLambda!7143 order!9473 lambda!63819))))

(assert (=> d!434709 (= (semiInverseModEq!1055 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toValue!4130 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) (Forall!573 lambda!63819))))

(declare-fun bs!346006 () Bool)

(assert (= bs!346006 d!434709))

(declare-fun m!1728403 () Bool)

(assert (=> bs!346006 m!1728403))

(assert (=> d!434191 d!434709))

(declare-fun b!1481789 () Bool)

(declare-fun b_free!38271 () Bool)

(declare-fun b_next!38975 () Bool)

(assert (=> b!1481789 (= b_free!38271 (not b_next!38975))))

(declare-fun tp!420220 () Bool)

(declare-fun b_and!102941 () Bool)

(assert (=> b!1481789 (= tp!420220 b_and!102941)))

(declare-fun b_free!38273 () Bool)

(declare-fun b_next!38977 () Bool)

(assert (=> b!1481789 (= b_free!38273 (not b_next!38977))))

(declare-fun tb!84767 () Bool)

(declare-fun t!137504 () Bool)

(assert (=> (and b!1481789 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137504) tb!84767))

(declare-fun result!101922 () Bool)

(assert (= result!101922 result!101818))

(assert (=> d!434607 t!137504))

(declare-fun tb!84769 () Bool)

(declare-fun t!137506 () Bool)

(assert (=> (and b!1481789 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137506) tb!84769))

(declare-fun result!101924 () Bool)

(assert (= result!101924 result!101690))

(assert (=> b!1480985 t!137506))

(declare-fun t!137508 () Bool)

(declare-fun tb!84771 () Bool)

(assert (=> (and b!1481789 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137508) tb!84771))

(declare-fun result!101926 () Bool)

(assert (= result!101926 result!101806))

(assert (=> d!434545 t!137508))

(assert (=> b!1481521 t!137508))

(declare-fun t!137510 () Bool)

(declare-fun tb!84773 () Bool)

(assert (=> (and b!1481789 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137510) tb!84773))

(declare-fun result!101928 () Bool)

(assert (= result!101928 result!101758))

(assert (=> d!434539 t!137510))

(declare-fun t!137512 () Bool)

(declare-fun tb!84775 () Bool)

(assert (=> (and b!1481789 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137512) tb!84775))

(declare-fun result!101930 () Bool)

(assert (= result!101930 result!101868))

(assert (=> d!434689 t!137512))

(declare-fun t!137514 () Bool)

(declare-fun tb!84777 () Bool)

(assert (=> (and b!1481789 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137514) tb!84777))

(declare-fun result!101932 () Bool)

(assert (= result!101932 result!101842))

(assert (=> d!434625 t!137514))

(assert (=> b!1481315 t!137510))

(declare-fun t!137516 () Bool)

(declare-fun tb!84779 () Bool)

(assert (=> (and b!1481789 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137516) tb!84779))

(declare-fun result!101934 () Bool)

(assert (= result!101934 result!101732))

(assert (=> b!1481227 t!137516))

(declare-fun tp!420219 () Bool)

(declare-fun b_and!102943 () Bool)

(assert (=> b!1481789 (= tp!420219 (and (=> t!137508 result!101926) (=> t!137506 result!101924) (=> t!137516 result!101934) (=> t!137512 result!101930) (=> t!137510 result!101928) (=> t!137514 result!101932) (=> t!137504 result!101922) b_and!102943))))

(declare-fun e!947365 () Bool)

(assert (=> b!1481789 (= e!947365 (and tp!420220 tp!420219))))

(declare-fun e!947364 () Bool)

(assert (=> b!1481283 (= tp!420077 e!947364)))

(declare-fun b!1481786 () Bool)

(declare-fun tp!420223 () Bool)

(declare-fun e!947367 () Bool)

(assert (=> b!1481786 (= e!947364 (and (inv!20890 (h!21073 (t!137275 (t!137275 l1!3136)))) e!947367 tp!420223))))

(declare-fun tp!420221 () Bool)

(declare-fun b!1481787 () Bool)

(declare-fun e!947366 () Bool)

(assert (=> b!1481787 (= e!947367 (and (inv!21 (value!89305 (h!21073 (t!137275 (t!137275 l1!3136))))) e!947366 tp!420221))))

(declare-fun b!1481788 () Bool)

(declare-fun tp!420222 () Bool)

(assert (=> b!1481788 (= e!947366 (and tp!420222 (inv!20886 (tag!3059 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (inv!20889 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) e!947365))))

(assert (= b!1481788 b!1481789))

(assert (= b!1481787 b!1481788))

(assert (= b!1481786 b!1481787))

(assert (= (and b!1481283 ((_ is Cons!15672) (t!137275 (t!137275 l1!3136)))) b!1481786))

(declare-fun m!1728413 () Bool)

(assert (=> b!1481786 m!1728413))

(declare-fun m!1728415 () Bool)

(assert (=> b!1481787 m!1728415))

(declare-fun m!1728417 () Bool)

(assert (=> b!1481788 m!1728417))

(declare-fun m!1728419 () Bool)

(assert (=> b!1481788 m!1728419))

(declare-fun e!947375 () Bool)

(declare-fun b!1481798 () Bool)

(declare-fun tp!420231 () Bool)

(declare-fun tp!420230 () Bool)

(assert (=> b!1481798 (= e!947375 (and (inv!20893 (left!13215 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))))) tp!420230 (inv!20893 (right!13545 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))))) tp!420231))))

(declare-fun b!1481800 () Bool)

(declare-fun e!947374 () Bool)

(declare-fun tp!420232 () Bool)

(assert (=> b!1481800 (= e!947374 tp!420232)))

(declare-fun b!1481799 () Bool)

(declare-fun inv!20899 (IArray!10683) Bool)

(assert (=> b!1481799 (= e!947375 (and (inv!20899 (xs!8094 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))))) e!947374))))

(assert (=> b!1481229 (= tp!420027 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136))))) e!947375))))

(assert (= (and b!1481229 ((_ is Node!5339) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))))) b!1481798))

(assert (= b!1481799 b!1481800))

(assert (= (and b!1481229 ((_ is Leaf!7938) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (value!89305 (h!21073 l1!3136)))))) b!1481799))

(declare-fun m!1728421 () Bool)

(assert (=> b!1481798 m!1728421))

(declare-fun m!1728423 () Bool)

(assert (=> b!1481798 m!1728423))

(declare-fun m!1728425 () Bool)

(assert (=> b!1481799 m!1728425))

(assert (=> b!1481229 m!1727149))

(declare-fun b!1481802 () Bool)

(declare-fun e!947376 () Bool)

(declare-fun tp!420233 () Bool)

(declare-fun tp!420234 () Bool)

(assert (=> b!1481802 (= e!947376 (and tp!420233 tp!420234))))

(declare-fun b!1481804 () Bool)

(declare-fun tp!420235 () Bool)

(declare-fun tp!420237 () Bool)

(assert (=> b!1481804 (= e!947376 (and tp!420235 tp!420237))))

(assert (=> b!1481288 (= tp!420078 e!947376)))

(declare-fun b!1481803 () Bool)

(declare-fun tp!420236 () Bool)

(assert (=> b!1481803 (= e!947376 tp!420236)))

(declare-fun b!1481801 () Bool)

(assert (=> b!1481801 (= e!947376 tp_is_empty!6979)))

(assert (= (and b!1481288 ((_ is ElementMatch!4109) (regOne!8730 (regex!2795 (h!21074 rules!4290))))) b!1481801))

(assert (= (and b!1481288 ((_ is Concat!6995) (regOne!8730 (regex!2795 (h!21074 rules!4290))))) b!1481802))

(assert (= (and b!1481288 ((_ is Star!4109) (regOne!8730 (regex!2795 (h!21074 rules!4290))))) b!1481803))

(assert (= (and b!1481288 ((_ is Union!4109) (regOne!8730 (regex!2795 (h!21074 rules!4290))))) b!1481804))

(declare-fun b!1481806 () Bool)

(declare-fun e!947377 () Bool)

(declare-fun tp!420238 () Bool)

(declare-fun tp!420239 () Bool)

(assert (=> b!1481806 (= e!947377 (and tp!420238 tp!420239))))

(declare-fun b!1481808 () Bool)

(declare-fun tp!420240 () Bool)

(declare-fun tp!420242 () Bool)

(assert (=> b!1481808 (= e!947377 (and tp!420240 tp!420242))))

(assert (=> b!1481288 (= tp!420079 e!947377)))

(declare-fun b!1481807 () Bool)

(declare-fun tp!420241 () Bool)

(assert (=> b!1481807 (= e!947377 tp!420241)))

(declare-fun b!1481805 () Bool)

(assert (=> b!1481805 (= e!947377 tp_is_empty!6979)))

(assert (= (and b!1481288 ((_ is ElementMatch!4109) (regTwo!8730 (regex!2795 (h!21074 rules!4290))))) b!1481805))

(assert (= (and b!1481288 ((_ is Concat!6995) (regTwo!8730 (regex!2795 (h!21074 rules!4290))))) b!1481806))

(assert (= (and b!1481288 ((_ is Star!4109) (regTwo!8730 (regex!2795 (h!21074 rules!4290))))) b!1481807))

(assert (= (and b!1481288 ((_ is Union!4109) (regTwo!8730 (regex!2795 (h!21074 rules!4290))))) b!1481808))

(declare-fun b!1481811 () Bool)

(declare-fun e!947380 () Bool)

(assert (=> b!1481811 (= e!947380 true)))

(declare-fun b!1481810 () Bool)

(declare-fun e!947379 () Bool)

(assert (=> b!1481810 (= e!947379 e!947380)))

(declare-fun b!1481809 () Bool)

(declare-fun e!947378 () Bool)

(assert (=> b!1481809 (= e!947378 e!947379)))

(assert (=> b!1481111 e!947378))

(assert (= b!1481810 b!1481811))

(assert (= b!1481809 b!1481810))

(assert (= (and b!1481111 ((_ is Cons!15673) (t!137276 rules!4290))) b!1481809))

(assert (=> b!1481811 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 (t!137276 rules!4290))))) (dynLambda!7137 order!9463 lambda!63777))))

(assert (=> b!1481811 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290))))) (dynLambda!7137 order!9463 lambda!63777))))

(declare-fun b!1481813 () Bool)

(declare-fun e!947381 () Bool)

(declare-fun tp!420243 () Bool)

(declare-fun tp!420244 () Bool)

(assert (=> b!1481813 (= e!947381 (and tp!420243 tp!420244))))

(declare-fun b!1481815 () Bool)

(declare-fun tp!420245 () Bool)

(declare-fun tp!420247 () Bool)

(assert (=> b!1481815 (= e!947381 (and tp!420245 tp!420247))))

(assert (=> b!1481262 (= tp!420053 e!947381)))

(declare-fun b!1481814 () Bool)

(declare-fun tp!420246 () Bool)

(assert (=> b!1481814 (= e!947381 tp!420246)))

(declare-fun b!1481812 () Bool)

(assert (=> b!1481812 (= e!947381 tp_is_empty!6979)))

(assert (= (and b!1481262 ((_ is ElementMatch!4109) (reg!4438 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481812))

(assert (= (and b!1481262 ((_ is Concat!6995) (reg!4438 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481813))

(assert (= (and b!1481262 ((_ is Star!4109) (reg!4438 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481814))

(assert (= (and b!1481262 ((_ is Union!4109) (reg!4438 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481815))

(declare-fun b!1481818 () Bool)

(declare-fun e!947384 () Bool)

(assert (=> b!1481818 (= e!947384 true)))

(declare-fun b!1481817 () Bool)

(declare-fun e!947383 () Bool)

(assert (=> b!1481817 (= e!947383 e!947384)))

(declare-fun b!1481816 () Bool)

(declare-fun e!947382 () Bool)

(assert (=> b!1481816 (= e!947382 e!947383)))

(assert (=> b!1481067 e!947382))

(assert (= b!1481817 b!1481818))

(assert (= b!1481816 b!1481817))

(assert (= (and b!1481067 ((_ is Cons!15673) (t!137276 rules!4290))) b!1481816))

(assert (=> b!1481818 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 (t!137276 rules!4290))))) (dynLambda!7137 order!9463 lambda!63775))))

(assert (=> b!1481818 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290))))) (dynLambda!7137 order!9463 lambda!63775))))

(declare-fun b!1481820 () Bool)

(declare-fun e!947385 () Bool)

(declare-fun tp!420248 () Bool)

(declare-fun tp!420249 () Bool)

(assert (=> b!1481820 (= e!947385 (and tp!420248 tp!420249))))

(declare-fun b!1481822 () Bool)

(declare-fun tp!420250 () Bool)

(declare-fun tp!420252 () Bool)

(assert (=> b!1481822 (= e!947385 (and tp!420250 tp!420252))))

(assert (=> b!1481263 (= tp!420052 e!947385)))

(declare-fun b!1481821 () Bool)

(declare-fun tp!420251 () Bool)

(assert (=> b!1481821 (= e!947385 tp!420251)))

(declare-fun b!1481819 () Bool)

(assert (=> b!1481819 (= e!947385 tp_is_empty!6979)))

(assert (= (and b!1481263 ((_ is ElementMatch!4109) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481819))

(assert (= (and b!1481263 ((_ is Concat!6995) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481820))

(assert (= (and b!1481263 ((_ is Star!4109) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481821))

(assert (= (and b!1481263 ((_ is Union!4109) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481822))

(declare-fun b!1481824 () Bool)

(declare-fun e!947386 () Bool)

(declare-fun tp!420253 () Bool)

(declare-fun tp!420254 () Bool)

(assert (=> b!1481824 (= e!947386 (and tp!420253 tp!420254))))

(declare-fun b!1481826 () Bool)

(declare-fun tp!420255 () Bool)

(declare-fun tp!420257 () Bool)

(assert (=> b!1481826 (= e!947386 (and tp!420255 tp!420257))))

(assert (=> b!1481263 (= tp!420054 e!947386)))

(declare-fun b!1481825 () Bool)

(declare-fun tp!420256 () Bool)

(assert (=> b!1481825 (= e!947386 tp!420256)))

(declare-fun b!1481823 () Bool)

(assert (=> b!1481823 (= e!947386 tp_is_empty!6979)))

(assert (= (and b!1481263 ((_ is ElementMatch!4109) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481823))

(assert (= (and b!1481263 ((_ is Concat!6995) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481824))

(assert (= (and b!1481263 ((_ is Star!4109) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481825))

(assert (= (and b!1481263 ((_ is Union!4109) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481826))

(declare-fun b!1481828 () Bool)

(declare-fun e!947387 () Bool)

(declare-fun tp!420258 () Bool)

(declare-fun tp!420259 () Bool)

(assert (=> b!1481828 (= e!947387 (and tp!420258 tp!420259))))

(declare-fun b!1481830 () Bool)

(declare-fun tp!420260 () Bool)

(declare-fun tp!420262 () Bool)

(assert (=> b!1481830 (= e!947387 (and tp!420260 tp!420262))))

(assert (=> b!1481261 (= tp!420050 e!947387)))

(declare-fun b!1481829 () Bool)

(declare-fun tp!420261 () Bool)

(assert (=> b!1481829 (= e!947387 tp!420261)))

(declare-fun b!1481827 () Bool)

(assert (=> b!1481827 (= e!947387 tp_is_empty!6979)))

(assert (= (and b!1481261 ((_ is ElementMatch!4109) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481827))

(assert (= (and b!1481261 ((_ is Concat!6995) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481828))

(assert (= (and b!1481261 ((_ is Star!4109) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481829))

(assert (= (and b!1481261 ((_ is Union!4109) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481830))

(declare-fun b!1481832 () Bool)

(declare-fun e!947388 () Bool)

(declare-fun tp!420263 () Bool)

(declare-fun tp!420264 () Bool)

(assert (=> b!1481832 (= e!947388 (and tp!420263 tp!420264))))

(declare-fun b!1481834 () Bool)

(declare-fun tp!420265 () Bool)

(declare-fun tp!420267 () Bool)

(assert (=> b!1481834 (= e!947388 (and tp!420265 tp!420267))))

(assert (=> b!1481261 (= tp!420051 e!947388)))

(declare-fun b!1481833 () Bool)

(declare-fun tp!420266 () Bool)

(assert (=> b!1481833 (= e!947388 tp!420266)))

(declare-fun b!1481831 () Bool)

(assert (=> b!1481831 (= e!947388 tp_is_empty!6979)))

(assert (= (and b!1481261 ((_ is ElementMatch!4109) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481831))

(assert (= (and b!1481261 ((_ is Concat!6995) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481832))

(assert (= (and b!1481261 ((_ is Star!4109) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481833))

(assert (= (and b!1481261 ((_ is Union!4109) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l2!3105)))))) b!1481834))

(declare-fun b!1481835 () Bool)

(declare-fun tp!420268 () Bool)

(declare-fun e!947390 () Bool)

(declare-fun tp!420269 () Bool)

(assert (=> b!1481835 (= e!947390 (and (inv!20893 (left!13215 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))))) tp!420268 (inv!20893 (right!13545 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))))) tp!420269))))

(declare-fun b!1481837 () Bool)

(declare-fun e!947389 () Bool)

(declare-fun tp!420270 () Bool)

(assert (=> b!1481837 (= e!947389 tp!420270)))

(declare-fun b!1481836 () Bool)

(assert (=> b!1481836 (= e!947390 (and (inv!20899 (xs!8094 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))))) e!947389))))

(assert (=> b!1480991 (= tp!419961 (and (inv!20893 (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105))))) e!947390))))

(assert (= (and b!1480991 ((_ is Node!5339) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))))) b!1481835))

(assert (= b!1481836 b!1481837))

(assert (= (and b!1480991 ((_ is Leaf!7938) (c!242915 (dynLambda!7135 (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (value!89305 (h!21073 l2!3105)))))) b!1481836))

(declare-fun m!1728427 () Bool)

(assert (=> b!1481835 m!1728427))

(declare-fun m!1728429 () Bool)

(assert (=> b!1481835 m!1728429))

(declare-fun m!1728431 () Bool)

(assert (=> b!1481836 m!1728431))

(assert (=> b!1480991 m!1726807))

(declare-fun b!1481838 () Bool)

(declare-fun e!947391 () Bool)

(declare-fun tp!420271 () Bool)

(assert (=> b!1481838 (= e!947391 (and tp_is_empty!6979 tp!420271))))

(assert (=> b!1481295 (= tp!420088 e!947391)))

(assert (= (and b!1481295 ((_ is Cons!15671) (t!137274 (originalCharacters!3657 (h!21073 l2!3105))))) b!1481838))

(declare-fun b!1481840 () Bool)

(declare-fun e!947392 () Bool)

(declare-fun tp!420272 () Bool)

(declare-fun tp!420273 () Bool)

(assert (=> b!1481840 (= e!947392 (and tp!420272 tp!420273))))

(declare-fun b!1481842 () Bool)

(declare-fun tp!420274 () Bool)

(declare-fun tp!420276 () Bool)

(assert (=> b!1481842 (= e!947392 (and tp!420274 tp!420276))))

(assert (=> b!1481248 (= tp!420036 e!947392)))

(declare-fun b!1481841 () Bool)

(declare-fun tp!420275 () Bool)

(assert (=> b!1481841 (= e!947392 tp!420275)))

(declare-fun b!1481839 () Bool)

(assert (=> b!1481839 (= e!947392 tp_is_empty!6979)))

(assert (= (and b!1481248 ((_ is ElementMatch!4109) (regex!2795 (h!21074 (t!137276 rules!4290))))) b!1481839))

(assert (= (and b!1481248 ((_ is Concat!6995) (regex!2795 (h!21074 (t!137276 rules!4290))))) b!1481840))

(assert (= (and b!1481248 ((_ is Star!4109) (regex!2795 (h!21074 (t!137276 rules!4290))))) b!1481841))

(assert (= (and b!1481248 ((_ is Union!4109) (regex!2795 (h!21074 (t!137276 rules!4290))))) b!1481842))

(declare-fun b!1481845 () Bool)

(declare-fun b_free!38275 () Bool)

(declare-fun b_next!38979 () Bool)

(assert (=> b!1481845 (= b_free!38275 (not b_next!38979))))

(declare-fun tp!420280 () Bool)

(declare-fun b_and!102945 () Bool)

(assert (=> b!1481845 (= tp!420280 b_and!102945)))

(declare-fun b_free!38277 () Bool)

(declare-fun b_next!38981 () Bool)

(assert (=> b!1481845 (= b_free!38277 (not b_next!38981))))

(declare-fun tb!84781 () Bool)

(declare-fun t!137518 () Bool)

(assert (=> (and b!1481845 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137518) tb!84781))

(declare-fun result!101938 () Bool)

(assert (= result!101938 result!101818))

(assert (=> d!434607 t!137518))

(declare-fun t!137520 () Bool)

(declare-fun tb!84783 () Bool)

(assert (=> (and b!1481845 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137520) tb!84783))

(declare-fun result!101940 () Bool)

(assert (= result!101940 result!101690))

(assert (=> b!1480985 t!137520))

(declare-fun t!137522 () Bool)

(declare-fun tb!84785 () Bool)

(assert (=> (and b!1481845 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137522) tb!84785))

(declare-fun result!101942 () Bool)

(assert (= result!101942 result!101806))

(assert (=> d!434545 t!137522))

(assert (=> b!1481521 t!137522))

(declare-fun t!137524 () Bool)

(declare-fun tb!84787 () Bool)

(assert (=> (and b!1481845 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137524) tb!84787))

(declare-fun result!101944 () Bool)

(assert (= result!101944 result!101758))

(assert (=> d!434539 t!137524))

(declare-fun t!137526 () Bool)

(declare-fun tb!84789 () Bool)

(assert (=> (and b!1481845 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137526) tb!84789))

(declare-fun result!101946 () Bool)

(assert (= result!101946 result!101868))

(assert (=> d!434689 t!137526))

(declare-fun t!137528 () Bool)

(declare-fun tb!84791 () Bool)

(assert (=> (and b!1481845 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137528) tb!84791))

(declare-fun result!101948 () Bool)

(assert (= result!101948 result!101842))

(assert (=> d!434625 t!137528))

(assert (=> b!1481315 t!137524))

(declare-fun tb!84793 () Bool)

(declare-fun t!137530 () Bool)

(assert (=> (and b!1481845 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137530) tb!84793))

(declare-fun result!101950 () Bool)

(assert (= result!101950 result!101732))

(assert (=> b!1481227 t!137530))

(declare-fun tp!420279 () Bool)

(declare-fun b_and!102947 () Bool)

(assert (=> b!1481845 (= tp!420279 (and (=> t!137518 result!101938) (=> t!137524 result!101944) (=> t!137526 result!101946) (=> t!137530 result!101950) (=> t!137520 result!101940) (=> t!137528 result!101948) (=> t!137522 result!101942) b_and!102947))))

(declare-fun e!947395 () Bool)

(assert (=> b!1481845 (= e!947395 (and tp!420280 tp!420279))))

(declare-fun e!947396 () Bool)

(declare-fun b!1481844 () Bool)

(declare-fun tp!420277 () Bool)

(assert (=> b!1481844 (= e!947396 (and tp!420277 (inv!20886 (tag!3059 (h!21074 (t!137276 (t!137276 rules!4290))))) (inv!20889 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) e!947395))))

(declare-fun b!1481843 () Bool)

(declare-fun e!947393 () Bool)

(declare-fun tp!420278 () Bool)

(assert (=> b!1481843 (= e!947393 (and e!947396 tp!420278))))

(assert (=> b!1481247 (= tp!420037 e!947393)))

(assert (= b!1481844 b!1481845))

(assert (= b!1481843 b!1481844))

(assert (= (and b!1481247 ((_ is Cons!15673) (t!137276 (t!137276 rules!4290)))) b!1481843))

(declare-fun m!1728433 () Bool)

(assert (=> b!1481844 m!1728433))

(declare-fun m!1728435 () Bool)

(assert (=> b!1481844 m!1728435))

(declare-fun b!1481847 () Bool)

(declare-fun e!947397 () Bool)

(declare-fun tp!420281 () Bool)

(declare-fun tp!420282 () Bool)

(assert (=> b!1481847 (= e!947397 (and tp!420281 tp!420282))))

(declare-fun b!1481849 () Bool)

(declare-fun tp!420283 () Bool)

(declare-fun tp!420285 () Bool)

(assert (=> b!1481849 (= e!947397 (and tp!420283 tp!420285))))

(assert (=> b!1481294 (= tp!420085 e!947397)))

(declare-fun b!1481848 () Bool)

(declare-fun tp!420284 () Bool)

(assert (=> b!1481848 (= e!947397 tp!420284)))

(declare-fun b!1481846 () Bool)

(assert (=> b!1481846 (= e!947397 tp_is_empty!6979)))

(assert (= (and b!1481294 ((_ is ElementMatch!4109) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481846))

(assert (= (and b!1481294 ((_ is Concat!6995) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481847))

(assert (= (and b!1481294 ((_ is Star!4109) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481848))

(assert (= (and b!1481294 ((_ is Union!4109) (regOne!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481849))

(declare-fun b!1481851 () Bool)

(declare-fun e!947398 () Bool)

(declare-fun tp!420286 () Bool)

(declare-fun tp!420287 () Bool)

(assert (=> b!1481851 (= e!947398 (and tp!420286 tp!420287))))

(declare-fun b!1481853 () Bool)

(declare-fun tp!420288 () Bool)

(declare-fun tp!420290 () Bool)

(assert (=> b!1481853 (= e!947398 (and tp!420288 tp!420290))))

(assert (=> b!1481294 (= tp!420087 e!947398)))

(declare-fun b!1481852 () Bool)

(declare-fun tp!420289 () Bool)

(assert (=> b!1481852 (= e!947398 tp!420289)))

(declare-fun b!1481850 () Bool)

(assert (=> b!1481850 (= e!947398 tp_is_empty!6979)))

(assert (= (and b!1481294 ((_ is ElementMatch!4109) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481850))

(assert (= (and b!1481294 ((_ is Concat!6995) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481851))

(assert (= (and b!1481294 ((_ is Star!4109) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481852))

(assert (= (and b!1481294 ((_ is Union!4109) (regTwo!8731 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481853))

(declare-fun b!1481855 () Bool)

(declare-fun e!947399 () Bool)

(declare-fun tp!420291 () Bool)

(declare-fun tp!420292 () Bool)

(assert (=> b!1481855 (= e!947399 (and tp!420291 tp!420292))))

(declare-fun b!1481857 () Bool)

(declare-fun tp!420293 () Bool)

(declare-fun tp!420295 () Bool)

(assert (=> b!1481857 (= e!947399 (and tp!420293 tp!420295))))

(assert (=> b!1481292 (= tp!420083 e!947399)))

(declare-fun b!1481856 () Bool)

(declare-fun tp!420294 () Bool)

(assert (=> b!1481856 (= e!947399 tp!420294)))

(declare-fun b!1481854 () Bool)

(assert (=> b!1481854 (= e!947399 tp_is_empty!6979)))

(assert (= (and b!1481292 ((_ is ElementMatch!4109) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481854))

(assert (= (and b!1481292 ((_ is Concat!6995) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481855))

(assert (= (and b!1481292 ((_ is Star!4109) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481856))

(assert (= (and b!1481292 ((_ is Union!4109) (regOne!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481857))

(declare-fun b!1481859 () Bool)

(declare-fun e!947400 () Bool)

(declare-fun tp!420296 () Bool)

(declare-fun tp!420297 () Bool)

(assert (=> b!1481859 (= e!947400 (and tp!420296 tp!420297))))

(declare-fun b!1481861 () Bool)

(declare-fun tp!420298 () Bool)

(declare-fun tp!420300 () Bool)

(assert (=> b!1481861 (= e!947400 (and tp!420298 tp!420300))))

(assert (=> b!1481292 (= tp!420084 e!947400)))

(declare-fun b!1481860 () Bool)

(declare-fun tp!420299 () Bool)

(assert (=> b!1481860 (= e!947400 tp!420299)))

(declare-fun b!1481858 () Bool)

(assert (=> b!1481858 (= e!947400 tp_is_empty!6979)))

(assert (= (and b!1481292 ((_ is ElementMatch!4109) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481858))

(assert (= (and b!1481292 ((_ is Concat!6995) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481859))

(assert (= (and b!1481292 ((_ is Star!4109) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481860))

(assert (= (and b!1481292 ((_ is Union!4109) (regTwo!8730 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481861))

(declare-fun b!1481863 () Bool)

(declare-fun e!947401 () Bool)

(declare-fun tp!420301 () Bool)

(declare-fun tp!420302 () Bool)

(assert (=> b!1481863 (= e!947401 (and tp!420301 tp!420302))))

(declare-fun b!1481865 () Bool)

(declare-fun tp!420303 () Bool)

(declare-fun tp!420305 () Bool)

(assert (=> b!1481865 (= e!947401 (and tp!420303 tp!420305))))

(assert (=> b!1481293 (= tp!420086 e!947401)))

(declare-fun b!1481864 () Bool)

(declare-fun tp!420304 () Bool)

(assert (=> b!1481864 (= e!947401 tp!420304)))

(declare-fun b!1481862 () Bool)

(assert (=> b!1481862 (= e!947401 tp_is_empty!6979)))

(assert (= (and b!1481293 ((_ is ElementMatch!4109) (reg!4438 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481862))

(assert (= (and b!1481293 ((_ is Concat!6995) (reg!4438 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481863))

(assert (= (and b!1481293 ((_ is Star!4109) (reg!4438 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481864))

(assert (= (and b!1481293 ((_ is Union!4109) (reg!4438 (regex!2795 (rule!4572 (h!21073 l1!3136)))))) b!1481865))

(declare-fun b!1481866 () Bool)

(declare-fun e!947402 () Bool)

(declare-fun tp!420306 () Bool)

(assert (=> b!1481866 (= e!947402 (and tp_is_empty!6979 tp!420306))))

(assert (=> b!1481282 (= tp!420072 e!947402)))

(assert (= (and b!1481282 ((_ is Cons!15671) (t!137274 (originalCharacters!3657 (h!21073 l1!3136))))) b!1481866))

(declare-fun b!1481869 () Bool)

(declare-fun e!947405 () Bool)

(assert (=> b!1481869 (= e!947405 true)))

(declare-fun b!1481868 () Bool)

(declare-fun e!947404 () Bool)

(assert (=> b!1481868 (= e!947404 e!947405)))

(declare-fun b!1481867 () Bool)

(declare-fun e!947403 () Bool)

(assert (=> b!1481867 (= e!947403 e!947404)))

(assert (=> b!1481118 e!947403))

(assert (= b!1481868 b!1481869))

(assert (= b!1481867 b!1481868))

(assert (= (and b!1481118 ((_ is Cons!15673) (t!137276 rules!4290))) b!1481867))

(assert (=> b!1481869 (< (dynLambda!7136 order!9461 (toValue!4130 (transformation!2795 (h!21074 (t!137276 rules!4290))))) (dynLambda!7137 order!9463 lambda!63778))))

(assert (=> b!1481869 (< (dynLambda!7138 order!9465 (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290))))) (dynLambda!7137 order!9463 lambda!63778))))

(declare-fun b!1481871 () Bool)

(declare-fun e!947406 () Bool)

(declare-fun tp!420307 () Bool)

(declare-fun tp!420308 () Bool)

(assert (=> b!1481871 (= e!947406 (and tp!420307 tp!420308))))

(declare-fun b!1481873 () Bool)

(declare-fun tp!420309 () Bool)

(declare-fun tp!420311 () Bool)

(assert (=> b!1481873 (= e!947406 (and tp!420309 tp!420311))))

(assert (=> b!1481276 (= tp!420068 e!947406)))

(declare-fun b!1481872 () Bool)

(declare-fun tp!420310 () Bool)

(assert (=> b!1481872 (= e!947406 tp!420310)))

(declare-fun b!1481870 () Bool)

(assert (=> b!1481870 (= e!947406 tp_is_empty!6979)))

(assert (= (and b!1481276 ((_ is ElementMatch!4109) (regex!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) b!1481870))

(assert (= (and b!1481276 ((_ is Concat!6995) (regex!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) b!1481871))

(assert (= (and b!1481276 ((_ is Star!4109) (regex!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) b!1481872))

(assert (= (and b!1481276 ((_ is Union!4109) (regex!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) b!1481873))

(declare-fun b!1481875 () Bool)

(declare-fun e!947407 () Bool)

(declare-fun tp!420312 () Bool)

(declare-fun tp!420313 () Bool)

(assert (=> b!1481875 (= e!947407 (and tp!420312 tp!420313))))

(declare-fun b!1481877 () Bool)

(declare-fun tp!420314 () Bool)

(declare-fun tp!420316 () Bool)

(assert (=> b!1481877 (= e!947407 (and tp!420314 tp!420316))))

(assert (=> b!1481290 (= tp!420080 e!947407)))

(declare-fun b!1481876 () Bool)

(declare-fun tp!420315 () Bool)

(assert (=> b!1481876 (= e!947407 tp!420315)))

(declare-fun b!1481874 () Bool)

(assert (=> b!1481874 (= e!947407 tp_is_empty!6979)))

(assert (= (and b!1481290 ((_ is ElementMatch!4109) (regOne!8731 (regex!2795 (h!21074 rules!4290))))) b!1481874))

(assert (= (and b!1481290 ((_ is Concat!6995) (regOne!8731 (regex!2795 (h!21074 rules!4290))))) b!1481875))

(assert (= (and b!1481290 ((_ is Star!4109) (regOne!8731 (regex!2795 (h!21074 rules!4290))))) b!1481876))

(assert (= (and b!1481290 ((_ is Union!4109) (regOne!8731 (regex!2795 (h!21074 rules!4290))))) b!1481877))

(declare-fun b!1481879 () Bool)

(declare-fun e!947408 () Bool)

(declare-fun tp!420317 () Bool)

(declare-fun tp!420318 () Bool)

(assert (=> b!1481879 (= e!947408 (and tp!420317 tp!420318))))

(declare-fun b!1481881 () Bool)

(declare-fun tp!420319 () Bool)

(declare-fun tp!420321 () Bool)

(assert (=> b!1481881 (= e!947408 (and tp!420319 tp!420321))))

(assert (=> b!1481290 (= tp!420082 e!947408)))

(declare-fun b!1481880 () Bool)

(declare-fun tp!420320 () Bool)

(assert (=> b!1481880 (= e!947408 tp!420320)))

(declare-fun b!1481878 () Bool)

(assert (=> b!1481878 (= e!947408 tp_is_empty!6979)))

(assert (= (and b!1481290 ((_ is ElementMatch!4109) (regTwo!8731 (regex!2795 (h!21074 rules!4290))))) b!1481878))

(assert (= (and b!1481290 ((_ is Concat!6995) (regTwo!8731 (regex!2795 (h!21074 rules!4290))))) b!1481879))

(assert (= (and b!1481290 ((_ is Star!4109) (regTwo!8731 (regex!2795 (h!21074 rules!4290))))) b!1481880))

(assert (= (and b!1481290 ((_ is Union!4109) (regTwo!8731 (regex!2795 (h!21074 rules!4290))))) b!1481881))

(declare-fun b!1481882 () Bool)

(declare-fun e!947409 () Bool)

(declare-fun tp!420322 () Bool)

(assert (=> b!1481882 (= e!947409 (and tp_is_empty!6979 tp!420322))))

(assert (=> b!1481275 (= tp!420067 e!947409)))

(assert (= (and b!1481275 ((_ is Cons!15671) (originalCharacters!3657 (h!21073 (t!137275 l2!3105))))) b!1481882))

(declare-fun b!1481884 () Bool)

(declare-fun e!947410 () Bool)

(declare-fun tp!420323 () Bool)

(declare-fun tp!420324 () Bool)

(assert (=> b!1481884 (= e!947410 (and tp!420323 tp!420324))))

(declare-fun b!1481886 () Bool)

(declare-fun tp!420325 () Bool)

(declare-fun tp!420327 () Bool)

(assert (=> b!1481886 (= e!947410 (and tp!420325 tp!420327))))

(assert (=> b!1481289 (= tp!420081 e!947410)))

(declare-fun b!1481885 () Bool)

(declare-fun tp!420326 () Bool)

(assert (=> b!1481885 (= e!947410 tp!420326)))

(declare-fun b!1481883 () Bool)

(assert (=> b!1481883 (= e!947410 tp_is_empty!6979)))

(assert (= (and b!1481289 ((_ is ElementMatch!4109) (reg!4438 (regex!2795 (h!21074 rules!4290))))) b!1481883))

(assert (= (and b!1481289 ((_ is Concat!6995) (reg!4438 (regex!2795 (h!21074 rules!4290))))) b!1481884))

(assert (= (and b!1481289 ((_ is Star!4109) (reg!4438 (regex!2795 (h!21074 rules!4290))))) b!1481885))

(assert (= (and b!1481289 ((_ is Union!4109) (reg!4438 (regex!2795 (h!21074 rules!4290))))) b!1481886))

(declare-fun b!1481887 () Bool)

(declare-fun e!947411 () Bool)

(declare-fun tp!420328 () Bool)

(assert (=> b!1481887 (= e!947411 (and tp_is_empty!6979 tp!420328))))

(assert (=> b!1481284 (= tp!420075 e!947411)))

(assert (= (and b!1481284 ((_ is Cons!15671) (originalCharacters!3657 (h!21073 (t!137275 l1!3136))))) b!1481887))

(declare-fun b!1481889 () Bool)

(declare-fun e!947412 () Bool)

(declare-fun tp!420329 () Bool)

(declare-fun tp!420330 () Bool)

(assert (=> b!1481889 (= e!947412 (and tp!420329 tp!420330))))

(declare-fun b!1481891 () Bool)

(declare-fun tp!420331 () Bool)

(declare-fun tp!420333 () Bool)

(assert (=> b!1481891 (= e!947412 (and tp!420331 tp!420333))))

(assert (=> b!1481285 (= tp!420076 e!947412)))

(declare-fun b!1481890 () Bool)

(declare-fun tp!420332 () Bool)

(assert (=> b!1481890 (= e!947412 tp!420332)))

(declare-fun b!1481888 () Bool)

(assert (=> b!1481888 (= e!947412 tp_is_empty!6979)))

(assert (= (and b!1481285 ((_ is ElementMatch!4109) (regex!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) b!1481888))

(assert (= (and b!1481285 ((_ is Concat!6995) (regex!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) b!1481889))

(assert (= (and b!1481285 ((_ is Star!4109) (regex!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) b!1481890))

(assert (= (and b!1481285 ((_ is Union!4109) (regex!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) b!1481891))

(declare-fun b!1481895 () Bool)

(declare-fun b_free!38279 () Bool)

(declare-fun b_next!38983 () Bool)

(assert (=> b!1481895 (= b_free!38279 (not b_next!38983))))

(declare-fun tp!420335 () Bool)

(declare-fun b_and!102949 () Bool)

(assert (=> b!1481895 (= tp!420335 b_and!102949)))

(declare-fun b_free!38281 () Bool)

(declare-fun b_next!38985 () Bool)

(assert (=> b!1481895 (= b_free!38281 (not b_next!38985))))

(declare-fun t!137532 () Bool)

(declare-fun tb!84795 () Bool)

(assert (=> (and b!1481895 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514520)))) t!137532) tb!84795))

(declare-fun result!101952 () Bool)

(assert (= result!101952 result!101818))

(assert (=> d!434607 t!137532))

(declare-fun t!137534 () Bool)

(declare-fun tb!84797 () Bool)

(assert (=> (and b!1481895 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105))))) t!137534) tb!84797))

(declare-fun result!101954 () Bool)

(assert (= result!101954 result!101690))

(assert (=> b!1480985 t!137534))

(declare-fun t!137536 () Bool)

(declare-fun tb!84799 () Bool)

(assert (=> (and b!1481895 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105)))))) t!137536) tb!84799))

(declare-fun result!101956 () Bool)

(assert (= result!101956 result!101806))

(assert (=> d!434545 t!137536))

(assert (=> b!1481521 t!137536))

(declare-fun tb!84801 () Bool)

(declare-fun t!137538 () Bool)

(assert (=> (and b!1481895 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136)))))) t!137538) tb!84801))

(declare-fun result!101958 () Bool)

(assert (= result!101958 result!101758))

(assert (=> d!434539 t!137538))

(declare-fun t!137540 () Bool)

(declare-fun tb!84803 () Bool)

(assert (=> (and b!1481895 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 lt!514518)))))) t!137540) tb!84803))

(declare-fun result!101960 () Bool)

(assert (= result!101960 result!101868))

(assert (=> d!434689 t!137540))

(declare-fun t!137542 () Bool)

(declare-fun tb!84805 () Bool)

(assert (=> (and b!1481895 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 lt!514521)))) t!137542) tb!84805))

(declare-fun result!101962 () Bool)

(assert (= result!101962 result!101842))

(assert (=> d!434625 t!137542))

(assert (=> b!1481315 t!137538))

(declare-fun tb!84807 () Bool)

(declare-fun t!137544 () Bool)

(assert (=> (and b!1481895 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136))))) t!137544) tb!84807))

(declare-fun result!101964 () Bool)

(assert (= result!101964 result!101732))

(assert (=> b!1481227 t!137544))

(declare-fun tp!420334 () Bool)

(declare-fun b_and!102951 () Bool)

(assert (=> b!1481895 (= tp!420334 (and (=> t!137544 result!101964) (=> t!137536 result!101956) (=> t!137540 result!101960) (=> t!137542 result!101962) (=> t!137538 result!101958) (=> t!137532 result!101952) (=> t!137534 result!101954) b_and!102951))))

(declare-fun e!947414 () Bool)

(assert (=> b!1481895 (= e!947414 (and tp!420335 tp!420334))))

(declare-fun e!947413 () Bool)

(assert (=> b!1481274 (= tp!420069 e!947413)))

(declare-fun tp!420338 () Bool)

(declare-fun b!1481892 () Bool)

(declare-fun e!947416 () Bool)

(assert (=> b!1481892 (= e!947413 (and (inv!20890 (h!21073 (t!137275 (t!137275 l2!3105)))) e!947416 tp!420338))))

(declare-fun b!1481893 () Bool)

(declare-fun e!947415 () Bool)

(declare-fun tp!420336 () Bool)

(assert (=> b!1481893 (= e!947416 (and (inv!21 (value!89305 (h!21073 (t!137275 (t!137275 l2!3105))))) e!947415 tp!420336))))

(declare-fun b!1481894 () Bool)

(declare-fun tp!420337 () Bool)

(assert (=> b!1481894 (= e!947415 (and tp!420337 (inv!20886 (tag!3059 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (inv!20889 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) e!947414))))

(assert (= b!1481894 b!1481895))

(assert (= b!1481893 b!1481894))

(assert (= b!1481892 b!1481893))

(assert (= (and b!1481274 ((_ is Cons!15672) (t!137275 (t!137275 l2!3105)))) b!1481892))

(declare-fun m!1728437 () Bool)

(assert (=> b!1481892 m!1728437))

(declare-fun m!1728439 () Bool)

(assert (=> b!1481893 m!1728439))

(declare-fun m!1728441 () Bool)

(assert (=> b!1481894 m!1728441))

(declare-fun m!1728443 () Bool)

(assert (=> b!1481894 m!1728443))

(declare-fun b_lambda!46425 () Bool)

(assert (= b_lambda!46385 (or (and b!1481249 b_free!38249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481845 b_free!38277 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481277 b_free!38253) (and b!1480939 b_free!38225 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481286 b_free!38257 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481895 b_free!38281 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1480954 b_free!38233 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481789 b_free!38273 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1480955 b_free!38229 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) b_lambda!46425)))

(declare-fun b_lambda!46427 () Bool)

(assert (= b_lambda!46409 (or d!434199 b_lambda!46427)))

(declare-fun bs!346010 () Bool)

(declare-fun d!434717 () Bool)

(assert (= bs!346010 (and d!434717 d!434199)))

(assert (=> bs!346010 (= (dynLambda!7144 lambda!63775 (h!21073 lt!514518)) (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 lt!514518)))))

(assert (=> bs!346010 m!1726823))

(assert (=> b!1481766 d!434717))

(declare-fun b_lambda!46429 () Bool)

(assert (= b_lambda!46387 (or (and b!1481789 b_free!38273 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1480939 b_free!38225 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1480955 b_free!38229 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1480954 b_free!38233 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481895 b_free!38281 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481277 b_free!38253 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481845 b_free!38277 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481249 b_free!38249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481286 b_free!38257) b_lambda!46429)))

(declare-fun b_lambda!46431 () Bool)

(assert (= b_lambda!46389 (or (and b!1481249 b_free!38249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481845 b_free!38277 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481277 b_free!38253) (and b!1480939 b_free!38225 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481286 b_free!38257 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481895 b_free!38281 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1480954 b_free!38233 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1481789 b_free!38273 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) (and b!1480955 b_free!38229 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))))) b_lambda!46431)))

(declare-fun b_lambda!46433 () Bool)

(assert (= b_lambda!46405 (or d!434251 b_lambda!46433)))

(declare-fun bs!346011 () Bool)

(declare-fun d!434719 () Bool)

(assert (= bs!346011 (and d!434719 d!434251)))

(assert (=> bs!346011 (= (dynLambda!7144 lambda!63777 (h!21073 l2!3105)) (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l2!3105)))))

(assert (=> bs!346011 m!1726997))

(assert (=> b!1481655 d!434719))

(declare-fun b_lambda!46435 () Bool)

(assert (= b_lambda!46401 (or d!434255 b_lambda!46435)))

(declare-fun bs!346012 () Bool)

(declare-fun d!434721 () Bool)

(assert (= bs!346012 (and d!434721 d!434255)))

(assert (=> bs!346012 (= (dynLambda!7144 lambda!63778 (h!21073 l1!3136)) (rulesProduceIndividualToken!1308 thiss!27374 rules!4290 (h!21073 l1!3136)))))

(assert (=> bs!346012 m!1727017))

(assert (=> b!1481629 d!434721))

(declare-fun b_lambda!46437 () Bool)

(assert (= b_lambda!46371 (or (and b!1481789 b_free!38273 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l1!3136)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1480939 b_free!38225 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l1!3136)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1480955 b_free!38229 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 l2!3105)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1480954 b_free!38233 (= (toChars!3989 (transformation!2795 (h!21074 rules!4290))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481895 b_free!38281 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 (t!137275 l2!3105)))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481277 b_free!38253 (= (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l2!3105))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481845 b_free!38277 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 (t!137276 rules!4290))))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481249 b_free!38249 (= (toChars!3989 (transformation!2795 (h!21074 (t!137276 rules!4290)))) (toChars!3989 (transformation!2795 (rule!4572 (h!21073 (t!137275 l1!3136))))))) (and b!1481286 b_free!38257) b_lambda!46437)))

(check-sat (not b!1481834) (not d!434649) (not b!1481398) (not b!1481521) (not b!1481531) (not b!1481788) (not b!1481680) (not b!1481556) (not tb!84665) (not b!1481597) (not b!1481757) (not b_next!38983) (not b!1481415) (not d!434625) (not b!1481859) (not b!1481836) b_and!102757 (not b!1481877) (not b!1481808) (not b!1481595) (not b!1481755) (not b_lambda!46407) (not d!434689) (not d!434681) (not b!1481822) (not d!434379) (not b_lambda!46367) (not b!1481821) (not b!1481496) (not b!1481733) (not b!1481867) (not b!1481787) (not b!1481322) (not d!434377) (not b!1481889) (not b!1481609) (not b!1481596) (not b!1481856) (not b!1481890) (not b_lambda!46397) (not b!1481654) (not d!434479) (not d!434539) (not d!434549) (not d!434481) (not b!1481610) (not b_next!38985) b_and!102925 (not b!1481802) (not d!434559) (not b!1480991) (not b!1481887) (not d!434493) (not d!434651) (not b!1481681) (not d!434683) (not b!1481342) (not b!1481536) (not d!434527) (not b!1481315) (not b_next!38951) (not d!434555) (not d!434675) (not b!1481840) (not tb!84605) (not b!1481500) (not b!1481481) (not b!1481528) (not d!434537) (not b!1481512) (not b!1481525) (not b!1481849) (not bs!346012) (not b!1481558) b_and!102917 (not d!434511) (not b!1481515) (not b!1481529) (not b!1481855) (not b!1481871) (not b!1481873) (not b!1481857) (not b!1481860) (not b!1481535) (not d!434645) (not b!1481317) (not b!1481554) b_and!102949 (not d!434575) (not d!434483) (not d!434687) (not b!1481886) (not d!434685) (not b!1481656) (not d!434523) (not b!1481309) (not d!434627) (not b!1481549) b_and!102941 (not b!1481864) (not d!434535) (not b_next!38929) (not b_next!38959) (not b!1481483) (not b!1481594) (not d!434545) (not d!434659) (not b!1481311) (not b!1481780) b_and!102943 (not b_next!38961) (not d!434533) (not b!1481800) (not b!1481881) (not d!434663) (not d!434573) (not b_lambda!46393) (not d!434629) (not d!434319) b_and!102921 (not b!1481682) (not b!1481502) (not b!1481498) (not b!1481876) (not d!434375) b_and!102749 (not b_next!38981) (not d!434499) (not bs!346010) (not b_lambda!46433) (not b!1481405) (not b!1481879) (not b!1481865) (not d!434531) (not b_next!38955) (not b!1481826) (not b_lambda!46425) (not b_next!38927) (not b!1481732) (not d!434381) (not b!1481520) (not d!434611) (not d!434365) (not b!1481648) (not b!1481866) (not d!434609) b_and!102753 (not b_next!38977) (not b_next!38979) (not bs!346011) (not b!1481340) (not d!434513) (not b_lambda!46435) (not b!1481806) (not b!1481709) (not b!1481523) (not b!1481710) (not d!434369) (not d!434639) (not b!1481694) (not b!1481815) (not d!434709) (not b!1481885) (not d!434693) (not d!434691) (not d!434529) (not d!434547) (not b!1481813) (not b!1481410) (not b!1481599) (not b!1481891) (not b!1481553) (not d!434569) (not b!1481804) (not b!1481316) (not b!1481882) (not b_next!38931) (not b!1481716) (not b!1481825) (not d!434333) (not b_next!38937) (not b!1481843) b_and!102951 (not b!1481786) (not d!434383) (not tb!84653) (not b!1481634) (not b!1481816) (not d!434501) (not b!1481513) (not b!1481532) (not b!1481807) (not d!434587) (not d!434707) (not b!1481409) (not b!1481484) (not b!1481838) (not tb!84713) (not b!1481828) (not d!434519) tp_is_empty!6979 (not b!1481759) (not b_lambda!46431) (not b!1481832) (not d!434525) (not d!434367) b_and!102709 (not b!1481527) (not b!1481508) (not b!1481524) (not b!1481853) (not b!1481841) (not d!434489) b_and!102927 (not b_next!38975) (not b!1481837) (not b!1481851) (not b!1481894) (not d!434619) (not b!1481863) (not b!1481830) (not b!1481494) (not b!1481510) (not b!1481848) (not d!434541) (not d!434703) (not b!1481530) (not b!1481557) (not b!1481847) (not b!1481514) (not b!1481814) (not b!1481537) (not b!1481820) b_and!102947 (not b!1481341) (not d!434335) (not b!1481647) (not b!1481824) (not tb!84689) (not b!1481809) (not b!1481630) (not d!434321) (not d!434491) (not b!1481875) (not b_next!38933) (not b!1481229) (not d!434497) (not d!434495) b_and!102923 (not d!434695) (not b!1481799) (not b!1481852) (not d!434641) (not b!1481893) (not b!1481892) (not b!1481880) (not d!434331) (not d!434325) (not d!434621) b_and!102945 (not d!434327) (not b_next!38953) (not b!1481318) (not b!1481408) (not b_lambda!46429) (not b!1481497) b_and!102919 (not d!434673) (not b!1481861) (not b!1481307) (not b_lambda!46427) (not b!1481844) (not b!1481835) b_and!102705 (not b!1481842) (not d!434373) (not b!1481482) (not b!1481833) (not b!1481319) (not b!1481602) (not b!1481632) (not b!1481522) (not b!1481872) (not b!1481798) (not b!1481767) (not b_next!38957) (not d!434563) (not b!1481321) (not d!434487) (not b_lambda!46437) (not b!1481551) (not b!1481884) (not b!1481407) (not b!1481517) (not b!1481320) (not b!1481314) (not b!1481803) (not b_next!38935) (not b_lambda!46369) (not b!1481829) (not b!1481519) (not b!1481526) b_and!102701 (not b!1481499) (not d!434607))
(check-sat (not b_next!38983) b_and!102757 (not b_next!38951) b_and!102917 b_and!102949 b_and!102753 b_and!102709 b_and!102947 b_and!102945 b_and!102705 (not b_next!38957) (not b_next!38985) b_and!102925 b_and!102941 (not b_next!38929) (not b_next!38959) b_and!102943 (not b_next!38961) b_and!102921 b_and!102749 (not b_next!38981) (not b_next!38927) (not b_next!38955) (not b_next!38977) (not b_next!38979) (not b_next!38931) b_and!102951 (not b_next!38937) b_and!102927 (not b_next!38975) (not b_next!38933) b_and!102923 (not b_next!38953) b_and!102919 (not b_next!38935) b_and!102701)

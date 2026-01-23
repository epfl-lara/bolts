; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138786 () Bool)

(assert start!138786)

(declare-fun b!1478796 () Bool)

(declare-fun b_free!38007 () Bool)

(declare-fun b_next!38711 () Bool)

(assert (=> b!1478796 (= b_free!38007 (not b_next!38711))))

(declare-fun tp!419017 () Bool)

(declare-fun b_and!102389 () Bool)

(assert (=> b!1478796 (= tp!419017 b_and!102389)))

(declare-fun b_free!38009 () Bool)

(declare-fun b_next!38713 () Bool)

(assert (=> b!1478796 (= b_free!38009 (not b_next!38713))))

(declare-fun tp!419010 () Bool)

(declare-fun b_and!102391 () Bool)

(assert (=> b!1478796 (= tp!419010 b_and!102391)))

(declare-fun b!1478806 () Bool)

(declare-fun b_free!38011 () Bool)

(declare-fun b_next!38715 () Bool)

(assert (=> b!1478806 (= b_free!38011 (not b_next!38715))))

(declare-fun tp!419011 () Bool)

(declare-fun b_and!102393 () Bool)

(assert (=> b!1478806 (= tp!419011 b_and!102393)))

(declare-fun b_free!38013 () Bool)

(declare-fun b_next!38717 () Bool)

(assert (=> b!1478806 (= b_free!38013 (not b_next!38717))))

(declare-fun tp!419013 () Bool)

(declare-fun b_and!102395 () Bool)

(assert (=> b!1478806 (= tp!419013 b_and!102395)))

(declare-fun b!1478797 () Bool)

(declare-fun b_free!38015 () Bool)

(declare-fun b_next!38719 () Bool)

(assert (=> b!1478797 (= b_free!38015 (not b_next!38719))))

(declare-fun tp!419008 () Bool)

(declare-fun b_and!102397 () Bool)

(assert (=> b!1478797 (= tp!419008 b_and!102397)))

(declare-fun b_free!38017 () Bool)

(declare-fun b_next!38721 () Bool)

(assert (=> b!1478797 (= b_free!38017 (not b_next!38721))))

(declare-fun tp!419009 () Bool)

(declare-fun b_and!102399 () Bool)

(assert (=> b!1478797 (= tp!419009 b_and!102399)))

(declare-fun e!945199 () Bool)

(assert (=> b!1478796 (= e!945199 (and tp!419017 tp!419010))))

(declare-fun e!945191 () Bool)

(assert (=> b!1478797 (= e!945191 (and tp!419008 tp!419009))))

(declare-fun b!1478798 () Bool)

(declare-fun res!668225 () Bool)

(declare-fun e!945187 () Bool)

(assert (=> b!1478798 (=> (not res!668225) (not e!945187))))

(declare-datatypes ((String!18630 0))(
  ( (String!18631 (value!88994 String)) )
))
(declare-datatypes ((List!15689 0))(
  ( (Nil!15623) (Cons!15623 (h!21024 (_ BitVec 16)) (t!137002 List!15689)) )
))
(declare-datatypes ((C!8376 0))(
  ( (C!8377 (val!4758 Int)) )
))
(declare-datatypes ((List!15690 0))(
  ( (Nil!15624) (Cons!15624 (h!21025 C!8376) (t!137003 List!15690)) )
))
(declare-datatypes ((Regex!4099 0))(
  ( (ElementMatch!4099 (c!242776 C!8376)) (Concat!6974 (regOne!8710 Regex!4099) (regTwo!8710 Regex!4099)) (EmptyExpr!4099) (Star!4099 (reg!4428 Regex!4099)) (EmptyLang!4099) (Union!4099 (regOne!8711 Regex!4099) (regTwo!8711 Regex!4099)) )
))
(declare-datatypes ((TokenValue!2875 0))(
  ( (FloatLiteralValue!5750 (text!20570 List!15689)) (TokenValueExt!2874 (__x!9540 Int)) (Broken!14375 (value!88995 List!15689)) (Object!2940) (End!2875) (Def!2875) (Underscore!2875) (Match!2875) (Else!2875) (Error!2875) (Case!2875) (If!2875) (Extends!2875) (Abstract!2875) (Class!2875) (Val!2875) (DelimiterValue!5750 (del!2935 List!15689)) (KeywordValue!2881 (value!88996 List!15689)) (CommentValue!5750 (value!88997 List!15689)) (WhitespaceValue!5750 (value!88998 List!15689)) (IndentationValue!2875 (value!88999 List!15689)) (String!18632) (Int32!2875) (Broken!14376 (value!89000 List!15689)) (Boolean!2876) (Unit!25408) (OperatorValue!2878 (op!2935 List!15689)) (IdentifierValue!5750 (value!89001 List!15689)) (IdentifierValue!5751 (value!89002 List!15689)) (WhitespaceValue!5751 (value!89003 List!15689)) (True!5750) (False!5750) (Broken!14377 (value!89004 List!15689)) (Broken!14378 (value!89005 List!15689)) (True!5751) (RightBrace!2875) (RightBracket!2875) (Colon!2875) (Null!2875) (Comma!2875) (LeftBracket!2875) (False!5751) (LeftBrace!2875) (ImaginaryLiteralValue!2875 (text!20571 List!15689)) (StringLiteralValue!8625 (value!89006 List!15689)) (EOFValue!2875 (value!89007 List!15689)) (IdentValue!2875 (value!89008 List!15689)) (DelimiterValue!5751 (value!89009 List!15689)) (DedentValue!2875 (value!89010 List!15689)) (NewLineValue!2875 (value!89011 List!15689)) (IntegerValue!8625 (value!89012 (_ BitVec 32)) (text!20572 List!15689)) (IntegerValue!8626 (value!89013 Int) (text!20573 List!15689)) (Times!2875) (Or!2875) (Equal!2875) (Minus!2875) (Broken!14379 (value!89014 List!15689)) (And!2875) (Div!2875) (LessEqual!2875) (Mod!2875) (Concat!6975) (Not!2875) (Plus!2875) (SpaceValue!2875 (value!89015 List!15689)) (IntegerValue!8627 (value!89016 Int) (text!20574 List!15689)) (StringLiteralValue!8626 (text!20575 List!15689)) (FloatLiteralValue!5751 (text!20576 List!15689)) (BytesLiteralValue!2875 (value!89017 List!15689)) (CommentValue!5751 (value!89018 List!15689)) (StringLiteralValue!8627 (value!89019 List!15689)) (ErrorTokenValue!2875 (msg!2936 List!15689)) )
))
(declare-datatypes ((IArray!10647 0))(
  ( (IArray!10648 (innerList!5381 List!15690)) )
))
(declare-datatypes ((Conc!5321 0))(
  ( (Node!5321 (left!13176 Conc!5321) (right!13506 Conc!5321) (csize!10872 Int) (cheight!5532 Int)) (Leaf!7915 (xs!8076 IArray!10647) (csize!10873 Int)) (Empty!5321) )
))
(declare-datatypes ((BalanceConc!10582 0))(
  ( (BalanceConc!10583 (c!242777 Conc!5321)) )
))
(declare-datatypes ((TokenValueInjection!5410 0))(
  ( (TokenValueInjection!5411 (toValue!4120 Int) (toChars!3979 Int)) )
))
(declare-datatypes ((Rule!5370 0))(
  ( (Rule!5371 (regex!2785 Regex!4099) (tag!3049 String!18630) (isSeparator!2785 Bool) (transformation!2785 TokenValueInjection!5410)) )
))
(declare-datatypes ((List!15691 0))(
  ( (Nil!15625) (Cons!15625 (h!21026 Rule!5370) (t!137004 List!15691)) )
))
(declare-fun rules!4290 () List!15691)

(declare-datatypes ((Token!5232 0))(
  ( (Token!5233 (value!89020 TokenValue!2875) (rule!4562 Rule!5370) (size!12651 Int) (originalCharacters!3647 List!15690)) )
))
(declare-datatypes ((List!15692 0))(
  ( (Nil!15626) (Cons!15626 (h!21027 Token!5232) (t!137005 List!15692)) )
))
(declare-fun l2!3105 () List!15692)

(declare-datatypes ((LexerInterface!2441 0))(
  ( (LexerInterfaceExt!2438 (__x!9541 Int)) (Lexer!2439) )
))
(declare-fun thiss!27374 () LexerInterface!2441)

(declare-fun tokensListTwoByTwoPredicateSeparableList!301 (LexerInterface!2441 List!15692 List!15691) Bool)

(assert (=> b!1478798 (= res!668225 (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 l2!3105 rules!4290))))

(declare-fun e!945189 () Bool)

(declare-fun b!1478799 () Bool)

(declare-fun e!945196 () Bool)

(declare-fun tp!419016 () Bool)

(declare-fun inv!20838 (Token!5232) Bool)

(assert (=> b!1478799 (= e!945196 (and (inv!20838 (h!21027 l2!3105)) e!945189 tp!419016))))

(declare-fun e!945200 () Bool)

(declare-fun b!1478801 () Bool)

(declare-fun l1!3136 () List!15692)

(assert (=> b!1478801 (= e!945200 (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 (t!137005 l1!3136) rules!4290))))

(declare-fun tp!419005 () Bool)

(declare-fun e!945193 () Bool)

(declare-fun e!945192 () Bool)

(declare-fun b!1478802 () Bool)

(assert (=> b!1478802 (= e!945193 (and (inv!20838 (h!21027 l1!3136)) e!945192 tp!419005))))

(declare-fun e!945198 () Bool)

(declare-fun b!1478803 () Bool)

(declare-fun tp!419006 () Bool)

(declare-fun inv!20835 (String!18630) Bool)

(declare-fun inv!20839 (TokenValueInjection!5410) Bool)

(assert (=> b!1478803 (= e!945198 (and tp!419006 (inv!20835 (tag!3049 (rule!4562 (h!21027 l1!3136)))) (inv!20839 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) e!945199))))

(declare-fun tp!419018 () Bool)

(declare-fun b!1478804 () Bool)

(declare-fun e!945185 () Bool)

(declare-fun e!945188 () Bool)

(assert (=> b!1478804 (= e!945188 (and tp!419018 (inv!20835 (tag!3049 (rule!4562 (h!21027 l2!3105)))) (inv!20839 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) e!945185))))

(declare-fun b!1478805 () Bool)

(declare-fun res!668227 () Bool)

(assert (=> b!1478805 (=> res!668227 e!945200)))

(get-info :version)

(assert (=> b!1478805 (= res!668227 (not ((_ is Cons!15626) l1!3136)))))

(assert (=> b!1478806 (= e!945185 (and tp!419011 tp!419013))))

(declare-fun b!1478807 () Bool)

(declare-fun res!668231 () Bool)

(assert (=> b!1478807 (=> (not res!668231) (not e!945187))))

(declare-fun rulesProduceEachTokenIndividuallyList!808 (LexerInterface!2441 List!15691 List!15692) Bool)

(assert (=> b!1478807 (= res!668231 (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1478808 () Bool)

(declare-fun res!668236 () Bool)

(assert (=> b!1478808 (=> (not res!668236) (not e!945187))))

(declare-fun isEmpty!9766 (List!15692) Bool)

(assert (=> b!1478808 (= res!668236 (not (isEmpty!9766 l1!3136)))))

(declare-fun b!1478809 () Bool)

(declare-fun tp!419007 () Bool)

(declare-fun inv!21 (TokenValue!2875) Bool)

(assert (=> b!1478809 (= e!945192 (and (inv!21 (value!89020 (h!21027 l1!3136))) e!945198 tp!419007))))

(declare-fun b!1478810 () Bool)

(declare-fun res!668230 () Bool)

(assert (=> b!1478810 (=> res!668230 e!945200)))

(assert (=> b!1478810 (= res!668230 (not (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 (t!137005 l1!3136))))))

(declare-fun b!1478811 () Bool)

(declare-fun res!668234 () Bool)

(assert (=> b!1478811 (=> (not res!668234) (not e!945187))))

(assert (=> b!1478811 (= res!668234 (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1478812 () Bool)

(declare-fun e!945194 () Bool)

(declare-fun e!945195 () Bool)

(declare-fun tp!419012 () Bool)

(assert (=> b!1478812 (= e!945194 (and e!945195 tp!419012))))

(declare-fun b!1478813 () Bool)

(declare-fun res!668226 () Bool)

(assert (=> b!1478813 (=> (not res!668226) (not e!945187))))

(assert (=> b!1478813 (= res!668226 (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1478814 () Bool)

(assert (=> b!1478814 (= e!945187 (not e!945200))))

(declare-fun res!668232 () Bool)

(assert (=> b!1478814 (=> res!668232 e!945200)))

(declare-fun lt!513779 () Token!5232)

(declare-fun lt!513777 () Token!5232)

(declare-fun separableTokensPredicate!580 (LexerInterface!2441 Token!5232 Token!5232 List!15691) Bool)

(assert (=> b!1478814 (= res!668232 (not (separableTokensPredicate!580 thiss!27374 lt!513779 lt!513777 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1298 (LexerInterface!2441 List!15691 Token!5232) Bool)

(assert (=> b!1478814 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 lt!513777)))

(declare-datatypes ((Unit!25409 0))(
  ( (Unit!25410) )
))
(declare-fun lt!513778 () Unit!25409)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 (LexerInterface!2441 List!15691 List!15692 Token!5232) Unit!25409)

(assert (=> b!1478814 (= lt!513778 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l2!3105 lt!513777))))

(declare-fun head!3073 (List!15692) Token!5232)

(assert (=> b!1478814 (= lt!513777 (head!3073 l2!3105))))

(assert (=> b!1478814 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 lt!513779)))

(declare-fun lt!513776 () Unit!25409)

(assert (=> b!1478814 (= lt!513776 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l1!3136 lt!513779))))

(declare-fun last!343 (List!15692) Token!5232)

(assert (=> b!1478814 (= lt!513779 (last!343 l1!3136))))

(declare-fun b!1478815 () Bool)

(declare-fun tp!419015 () Bool)

(assert (=> b!1478815 (= e!945189 (and (inv!21 (value!89020 (h!21027 l2!3105))) e!945188 tp!419015))))

(declare-fun b!1478800 () Bool)

(declare-fun res!668235 () Bool)

(assert (=> b!1478800 (=> res!668235 e!945200)))

(assert (=> b!1478800 (= res!668235 (isEmpty!9766 (t!137005 l1!3136)))))

(declare-fun res!668228 () Bool)

(assert (=> start!138786 (=> (not res!668228) (not e!945187))))

(assert (=> start!138786 (= res!668228 ((_ is Lexer!2439) thiss!27374))))

(assert (=> start!138786 e!945187))

(assert (=> start!138786 true))

(assert (=> start!138786 e!945194))

(assert (=> start!138786 e!945193))

(assert (=> start!138786 e!945196))

(declare-fun b!1478816 () Bool)

(declare-fun res!668229 () Bool)

(assert (=> b!1478816 (=> (not res!668229) (not e!945187))))

(declare-fun isEmpty!9767 (List!15691) Bool)

(assert (=> b!1478816 (= res!668229 (not (isEmpty!9767 rules!4290)))))

(declare-fun tp!419014 () Bool)

(declare-fun b!1478817 () Bool)

(assert (=> b!1478817 (= e!945195 (and tp!419014 (inv!20835 (tag!3049 (h!21026 rules!4290))) (inv!20839 (transformation!2785 (h!21026 rules!4290))) e!945191))))

(declare-fun b!1478818 () Bool)

(declare-fun res!668233 () Bool)

(assert (=> b!1478818 (=> (not res!668233) (not e!945187))))

(declare-fun rulesInvariant!2230 (LexerInterface!2441 List!15691) Bool)

(assert (=> b!1478818 (= res!668233 (rulesInvariant!2230 thiss!27374 rules!4290))))

(declare-fun b!1478819 () Bool)

(declare-fun res!668237 () Bool)

(assert (=> b!1478819 (=> (not res!668237) (not e!945187))))

(assert (=> b!1478819 (= res!668237 (not (isEmpty!9766 l2!3105)))))

(assert (= (and start!138786 res!668228) b!1478816))

(assert (= (and b!1478816 res!668229) b!1478818))

(assert (= (and b!1478818 res!668233) b!1478811))

(assert (= (and b!1478811 res!668234) b!1478807))

(assert (= (and b!1478807 res!668231) b!1478813))

(assert (= (and b!1478813 res!668226) b!1478798))

(assert (= (and b!1478798 res!668225) b!1478808))

(assert (= (and b!1478808 res!668236) b!1478819))

(assert (= (and b!1478819 res!668237) b!1478814))

(assert (= (and b!1478814 (not res!668232)) b!1478805))

(assert (= (and b!1478805 (not res!668227)) b!1478800))

(assert (= (and b!1478800 (not res!668235)) b!1478810))

(assert (= (and b!1478810 (not res!668230)) b!1478801))

(assert (= b!1478817 b!1478797))

(assert (= b!1478812 b!1478817))

(assert (= (and start!138786 ((_ is Cons!15625) rules!4290)) b!1478812))

(assert (= b!1478803 b!1478796))

(assert (= b!1478809 b!1478803))

(assert (= b!1478802 b!1478809))

(assert (= (and start!138786 ((_ is Cons!15626) l1!3136)) b!1478802))

(assert (= b!1478804 b!1478806))

(assert (= b!1478815 b!1478804))

(assert (= b!1478799 b!1478815))

(assert (= (and start!138786 ((_ is Cons!15626) l2!3105)) b!1478799))

(declare-fun m!1724269 () Bool)

(assert (=> b!1478810 m!1724269))

(declare-fun m!1724271 () Bool)

(assert (=> b!1478798 m!1724271))

(declare-fun m!1724273 () Bool)

(assert (=> b!1478817 m!1724273))

(declare-fun m!1724275 () Bool)

(assert (=> b!1478817 m!1724275))

(declare-fun m!1724277 () Bool)

(assert (=> b!1478807 m!1724277))

(declare-fun m!1724279 () Bool)

(assert (=> b!1478813 m!1724279))

(declare-fun m!1724281 () Bool)

(assert (=> b!1478808 m!1724281))

(declare-fun m!1724283 () Bool)

(assert (=> b!1478800 m!1724283))

(declare-fun m!1724285 () Bool)

(assert (=> b!1478799 m!1724285))

(declare-fun m!1724287 () Bool)

(assert (=> b!1478809 m!1724287))

(declare-fun m!1724289 () Bool)

(assert (=> b!1478804 m!1724289))

(declare-fun m!1724291 () Bool)

(assert (=> b!1478804 m!1724291))

(declare-fun m!1724293 () Bool)

(assert (=> b!1478803 m!1724293))

(declare-fun m!1724295 () Bool)

(assert (=> b!1478803 m!1724295))

(declare-fun m!1724297 () Bool)

(assert (=> b!1478819 m!1724297))

(declare-fun m!1724299 () Bool)

(assert (=> b!1478815 m!1724299))

(declare-fun m!1724301 () Bool)

(assert (=> b!1478811 m!1724301))

(declare-fun m!1724303 () Bool)

(assert (=> b!1478801 m!1724303))

(declare-fun m!1724305 () Bool)

(assert (=> b!1478816 m!1724305))

(declare-fun m!1724307 () Bool)

(assert (=> b!1478802 m!1724307))

(declare-fun m!1724309 () Bool)

(assert (=> b!1478818 m!1724309))

(declare-fun m!1724311 () Bool)

(assert (=> b!1478814 m!1724311))

(declare-fun m!1724313 () Bool)

(assert (=> b!1478814 m!1724313))

(declare-fun m!1724315 () Bool)

(assert (=> b!1478814 m!1724315))

(declare-fun m!1724317 () Bool)

(assert (=> b!1478814 m!1724317))

(declare-fun m!1724319 () Bool)

(assert (=> b!1478814 m!1724319))

(declare-fun m!1724321 () Bool)

(assert (=> b!1478814 m!1724321))

(declare-fun m!1724323 () Bool)

(assert (=> b!1478814 m!1724323))

(check-sat (not b!1478798) (not b!1478812) (not b_next!38713) (not b_next!38717) (not b!1478799) (not b!1478817) (not b!1478800) b_and!102391 (not b!1478809) (not b!1478816) (not b!1478802) (not b!1478818) (not b_next!38711) b_and!102393 (not b!1478810) (not b!1478815) (not b!1478813) (not b!1478801) (not b!1478808) (not b!1478814) (not b!1478803) (not b_next!38721) (not b!1478804) (not b!1478811) (not b_next!38719) b_and!102395 (not b!1478819) (not b_next!38715) b_and!102397 (not b!1478807) b_and!102399 b_and!102389)
(check-sat (not b_next!38711) (not b_next!38713) b_and!102393 (not b_next!38717) (not b_next!38721) b_and!102391 (not b_next!38715) b_and!102397 (not b_next!38719) b_and!102395 b_and!102399 b_and!102389)
(get-model)

(declare-fun b!1478882 () Bool)

(declare-fun e!945250 () Bool)

(assert (=> b!1478882 (= e!945250 true)))

(declare-fun b!1478881 () Bool)

(declare-fun e!945249 () Bool)

(assert (=> b!1478881 (= e!945249 e!945250)))

(declare-fun b!1478880 () Bool)

(declare-fun e!945248 () Bool)

(assert (=> b!1478880 (= e!945248 e!945249)))

(declare-fun d!433638 () Bool)

(assert (=> d!433638 e!945248))

(assert (= b!1478881 b!1478882))

(assert (= b!1478880 b!1478881))

(assert (= (and d!433638 ((_ is Cons!15625) rules!4290)) b!1478880))

(declare-fun order!9407 () Int)

(declare-fun order!9409 () Int)

(declare-fun lambda!63728 () Int)

(declare-fun dynLambda!7099 (Int Int) Int)

(declare-fun dynLambda!7100 (Int Int) Int)

(assert (=> b!1478882 (< (dynLambda!7099 order!9407 (toValue!4120 (transformation!2785 (h!21026 rules!4290)))) (dynLambda!7100 order!9409 lambda!63728))))

(declare-fun order!9411 () Int)

(declare-fun dynLambda!7101 (Int Int) Int)

(assert (=> b!1478882 (< (dynLambda!7101 order!9411 (toChars!3979 (transformation!2785 (h!21026 rules!4290)))) (dynLambda!7100 order!9409 lambda!63728))))

(assert (=> d!433638 true))

(declare-fun lt!513812 () Bool)

(declare-fun forall!3803 (List!15692 Int) Bool)

(assert (=> d!433638 (= lt!513812 (forall!3803 l1!3136 lambda!63728))))

(declare-fun e!945240 () Bool)

(assert (=> d!433638 (= lt!513812 e!945240)))

(declare-fun res!668275 () Bool)

(assert (=> d!433638 (=> res!668275 e!945240)))

(assert (=> d!433638 (= res!668275 (not ((_ is Cons!15626) l1!3136)))))

(assert (=> d!433638 (not (isEmpty!9767 rules!4290))))

(assert (=> d!433638 (= (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 l1!3136) lt!513812)))

(declare-fun b!1478870 () Bool)

(declare-fun e!945241 () Bool)

(assert (=> b!1478870 (= e!945240 e!945241)))

(declare-fun res!668274 () Bool)

(assert (=> b!1478870 (=> (not res!668274) (not e!945241))))

(assert (=> b!1478870 (= res!668274 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 l1!3136)))))

(declare-fun b!1478871 () Bool)

(assert (=> b!1478871 (= e!945241 (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 (t!137005 l1!3136)))))

(assert (= (and d!433638 (not res!668275)) b!1478870))

(assert (= (and b!1478870 res!668274) b!1478871))

(declare-fun m!1724385 () Bool)

(assert (=> d!433638 m!1724385))

(assert (=> d!433638 m!1724305))

(declare-fun m!1724387 () Bool)

(assert (=> b!1478870 m!1724387))

(assert (=> b!1478871 m!1724269))

(assert (=> b!1478811 d!433638))

(declare-fun d!433656 () Bool)

(assert (=> d!433656 (= (isEmpty!9766 (t!137005 l1!3136)) ((_ is Nil!15626) (t!137005 l1!3136)))))

(assert (=> b!1478800 d!433656))

(declare-fun d!433658 () Bool)

(declare-fun res!668280 () Bool)

(declare-fun e!945253 () Bool)

(assert (=> d!433658 (=> (not res!668280) (not e!945253))))

(declare-fun isEmpty!9768 (List!15690) Bool)

(assert (=> d!433658 (= res!668280 (not (isEmpty!9768 (originalCharacters!3647 (h!21027 l2!3105)))))))

(assert (=> d!433658 (= (inv!20838 (h!21027 l2!3105)) e!945253)))

(declare-fun b!1478889 () Bool)

(declare-fun res!668281 () Bool)

(assert (=> b!1478889 (=> (not res!668281) (not e!945253))))

(declare-fun list!6211 (BalanceConc!10582) List!15690)

(declare-fun dynLambda!7102 (Int TokenValue!2875) BalanceConc!10582)

(assert (=> b!1478889 (= res!668281 (= (originalCharacters!3647 (h!21027 l2!3105)) (list!6211 (dynLambda!7102 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (value!89020 (h!21027 l2!3105))))))))

(declare-fun b!1478890 () Bool)

(declare-fun size!12652 (List!15690) Int)

(assert (=> b!1478890 (= e!945253 (= (size!12651 (h!21027 l2!3105)) (size!12652 (originalCharacters!3647 (h!21027 l2!3105)))))))

(assert (= (and d!433658 res!668280) b!1478889))

(assert (= (and b!1478889 res!668281) b!1478890))

(declare-fun b_lambda!46293 () Bool)

(assert (=> (not b_lambda!46293) (not b!1478889)))

(declare-fun t!137017 () Bool)

(declare-fun tb!84371 () Bool)

(assert (=> (and b!1478796 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105))))) t!137017) tb!84371))

(declare-fun b!1478895 () Bool)

(declare-fun e!945256 () Bool)

(declare-fun tp!419024 () Bool)

(declare-fun inv!20840 (Conc!5321) Bool)

(assert (=> b!1478895 (= e!945256 (and (inv!20840 (c!242777 (dynLambda!7102 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (value!89020 (h!21027 l2!3105))))) tp!419024))))

(declare-fun result!101426 () Bool)

(declare-fun inv!20841 (BalanceConc!10582) Bool)

(assert (=> tb!84371 (= result!101426 (and (inv!20841 (dynLambda!7102 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (value!89020 (h!21027 l2!3105)))) e!945256))))

(assert (= tb!84371 b!1478895))

(declare-fun m!1724389 () Bool)

(assert (=> b!1478895 m!1724389))

(declare-fun m!1724391 () Bool)

(assert (=> tb!84371 m!1724391))

(assert (=> b!1478889 t!137017))

(declare-fun b_and!102407 () Bool)

(assert (= b_and!102391 (and (=> t!137017 result!101426) b_and!102407)))

(declare-fun t!137019 () Bool)

(declare-fun tb!84373 () Bool)

(assert (=> (and b!1478806 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105))))) t!137019) tb!84373))

(declare-fun result!101430 () Bool)

(assert (= result!101430 result!101426))

(assert (=> b!1478889 t!137019))

(declare-fun b_and!102409 () Bool)

(assert (= b_and!102395 (and (=> t!137019 result!101430) b_and!102409)))

(declare-fun t!137021 () Bool)

(declare-fun tb!84375 () Bool)

(assert (=> (and b!1478797 (= (toChars!3979 (transformation!2785 (h!21026 rules!4290))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105))))) t!137021) tb!84375))

(declare-fun result!101432 () Bool)

(assert (= result!101432 result!101426))

(assert (=> b!1478889 t!137021))

(declare-fun b_and!102411 () Bool)

(assert (= b_and!102399 (and (=> t!137021 result!101432) b_and!102411)))

(declare-fun m!1724393 () Bool)

(assert (=> d!433658 m!1724393))

(declare-fun m!1724395 () Bool)

(assert (=> b!1478889 m!1724395))

(assert (=> b!1478889 m!1724395))

(declare-fun m!1724397 () Bool)

(assert (=> b!1478889 m!1724397))

(declare-fun m!1724399 () Bool)

(assert (=> b!1478890 m!1724399))

(assert (=> b!1478799 d!433658))

(declare-fun bs!345765 () Bool)

(declare-fun d!433660 () Bool)

(assert (= bs!345765 (and d!433660 d!433638)))

(declare-fun lambda!63729 () Int)

(assert (=> bs!345765 (= lambda!63729 lambda!63728)))

(declare-fun b!1478900 () Bool)

(declare-fun e!945261 () Bool)

(assert (=> b!1478900 (= e!945261 true)))

(declare-fun b!1478899 () Bool)

(declare-fun e!945260 () Bool)

(assert (=> b!1478899 (= e!945260 e!945261)))

(declare-fun b!1478898 () Bool)

(declare-fun e!945259 () Bool)

(assert (=> b!1478898 (= e!945259 e!945260)))

(assert (=> d!433660 e!945259))

(assert (= b!1478899 b!1478900))

(assert (= b!1478898 b!1478899))

(assert (= (and d!433660 ((_ is Cons!15625) rules!4290)) b!1478898))

(assert (=> b!1478900 (< (dynLambda!7099 order!9407 (toValue!4120 (transformation!2785 (h!21026 rules!4290)))) (dynLambda!7100 order!9409 lambda!63729))))

(assert (=> b!1478900 (< (dynLambda!7101 order!9411 (toChars!3979 (transformation!2785 (h!21026 rules!4290)))) (dynLambda!7100 order!9409 lambda!63729))))

(assert (=> d!433660 true))

(declare-fun lt!513813 () Bool)

(assert (=> d!433660 (= lt!513813 (forall!3803 (t!137005 l1!3136) lambda!63729))))

(declare-fun e!945257 () Bool)

(assert (=> d!433660 (= lt!513813 e!945257)))

(declare-fun res!668283 () Bool)

(assert (=> d!433660 (=> res!668283 e!945257)))

(assert (=> d!433660 (= res!668283 (not ((_ is Cons!15626) (t!137005 l1!3136))))))

(assert (=> d!433660 (not (isEmpty!9767 rules!4290))))

(assert (=> d!433660 (= (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 (t!137005 l1!3136)) lt!513813)))

(declare-fun b!1478896 () Bool)

(declare-fun e!945258 () Bool)

(assert (=> b!1478896 (= e!945257 e!945258)))

(declare-fun res!668282 () Bool)

(assert (=> b!1478896 (=> (not res!668282) (not e!945258))))

(assert (=> b!1478896 (= res!668282 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 l1!3136))))))

(declare-fun b!1478897 () Bool)

(assert (=> b!1478897 (= e!945258 (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 (t!137005 (t!137005 l1!3136))))))

(assert (= (and d!433660 (not res!668283)) b!1478896))

(assert (= (and b!1478896 res!668282) b!1478897))

(declare-fun m!1724401 () Bool)

(assert (=> d!433660 m!1724401))

(assert (=> d!433660 m!1724305))

(declare-fun m!1724403 () Bool)

(assert (=> b!1478896 m!1724403))

(declare-fun m!1724405 () Bool)

(assert (=> b!1478897 m!1724405))

(assert (=> b!1478810 d!433660))

(declare-fun b!1478911 () Bool)

(declare-fun res!668286 () Bool)

(declare-fun e!945269 () Bool)

(assert (=> b!1478911 (=> res!668286 e!945269)))

(assert (=> b!1478911 (= res!668286 (not ((_ is IntegerValue!8627) (value!89020 (h!21027 l1!3136)))))))

(declare-fun e!945268 () Bool)

(assert (=> b!1478911 (= e!945268 e!945269)))

(declare-fun b!1478912 () Bool)

(declare-fun inv!15 (TokenValue!2875) Bool)

(assert (=> b!1478912 (= e!945269 (inv!15 (value!89020 (h!21027 l1!3136))))))

(declare-fun b!1478913 () Bool)

(declare-fun inv!17 (TokenValue!2875) Bool)

(assert (=> b!1478913 (= e!945268 (inv!17 (value!89020 (h!21027 l1!3136))))))

(declare-fun b!1478914 () Bool)

(declare-fun e!945270 () Bool)

(declare-fun inv!16 (TokenValue!2875) Bool)

(assert (=> b!1478914 (= e!945270 (inv!16 (value!89020 (h!21027 l1!3136))))))

(declare-fun d!433662 () Bool)

(declare-fun c!242791 () Bool)

(assert (=> d!433662 (= c!242791 ((_ is IntegerValue!8625) (value!89020 (h!21027 l1!3136))))))

(assert (=> d!433662 (= (inv!21 (value!89020 (h!21027 l1!3136))) e!945270)))

(declare-fun b!1478915 () Bool)

(assert (=> b!1478915 (= e!945270 e!945268)))

(declare-fun c!242790 () Bool)

(assert (=> b!1478915 (= c!242790 ((_ is IntegerValue!8626) (value!89020 (h!21027 l1!3136))))))

(assert (= (and d!433662 c!242791) b!1478914))

(assert (= (and d!433662 (not c!242791)) b!1478915))

(assert (= (and b!1478915 c!242790) b!1478913))

(assert (= (and b!1478915 (not c!242790)) b!1478911))

(assert (= (and b!1478911 (not res!668286)) b!1478912))

(declare-fun m!1724407 () Bool)

(assert (=> b!1478912 m!1724407))

(declare-fun m!1724409 () Bool)

(assert (=> b!1478913 m!1724409))

(declare-fun m!1724411 () Bool)

(assert (=> b!1478914 m!1724411))

(assert (=> b!1478809 d!433662))

(declare-fun d!433664 () Bool)

(assert (=> d!433664 (= (isEmpty!9766 l2!3105) ((_ is Nil!15626) l2!3105))))

(assert (=> b!1478819 d!433664))

(declare-fun d!433666 () Bool)

(declare-fun res!668291 () Bool)

(declare-fun e!945276 () Bool)

(assert (=> d!433666 (=> res!668291 e!945276)))

(assert (=> d!433666 (= res!668291 (or (not ((_ is Cons!15626) l2!3105)) (not ((_ is Cons!15626) (t!137005 l2!3105)))))))

(assert (=> d!433666 (= (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 l2!3105 rules!4290) e!945276)))

(declare-fun b!1478920 () Bool)

(declare-fun e!945275 () Bool)

(assert (=> b!1478920 (= e!945276 e!945275)))

(declare-fun res!668292 () Bool)

(assert (=> b!1478920 (=> (not res!668292) (not e!945275))))

(assert (=> b!1478920 (= res!668292 (separableTokensPredicate!580 thiss!27374 (h!21027 l2!3105) (h!21027 (t!137005 l2!3105)) rules!4290))))

(declare-fun lt!513830 () Unit!25409)

(declare-fun Unit!25411 () Unit!25409)

(assert (=> b!1478920 (= lt!513830 Unit!25411)))

(declare-fun size!12653 (BalanceConc!10582) Int)

(declare-fun charsOf!1594 (Token!5232) BalanceConc!10582)

(assert (=> b!1478920 (> (size!12653 (charsOf!1594 (h!21027 (t!137005 l2!3105)))) 0)))

(declare-fun lt!513831 () Unit!25409)

(declare-fun Unit!25412 () Unit!25409)

(assert (=> b!1478920 (= lt!513831 Unit!25412)))

(assert (=> b!1478920 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 l2!3105)))))

(declare-fun lt!513829 () Unit!25409)

(declare-fun Unit!25413 () Unit!25409)

(assert (=> b!1478920 (= lt!513829 Unit!25413)))

(assert (=> b!1478920 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 l2!3105))))

(declare-fun lt!513834 () Unit!25409)

(declare-fun lt!513828 () Unit!25409)

(assert (=> b!1478920 (= lt!513834 lt!513828)))

(assert (=> b!1478920 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 l2!3105)))))

(assert (=> b!1478920 (= lt!513828 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l2!3105 (h!21027 (t!137005 l2!3105))))))

(declare-fun lt!513832 () Unit!25409)

(declare-fun lt!513833 () Unit!25409)

(assert (=> b!1478920 (= lt!513832 lt!513833)))

(assert (=> b!1478920 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 l2!3105))))

(assert (=> b!1478920 (= lt!513833 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l2!3105 (h!21027 l2!3105)))))

(declare-fun b!1478921 () Bool)

(assert (=> b!1478921 (= e!945275 (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 (Cons!15626 (h!21027 (t!137005 l2!3105)) (t!137005 (t!137005 l2!3105))) rules!4290))))

(assert (= (and d!433666 (not res!668291)) b!1478920))

(assert (= (and b!1478920 res!668292) b!1478921))

(declare-fun m!1724413 () Bool)

(assert (=> b!1478920 m!1724413))

(declare-fun m!1724415 () Bool)

(assert (=> b!1478920 m!1724415))

(declare-fun m!1724417 () Bool)

(assert (=> b!1478920 m!1724417))

(declare-fun m!1724419 () Bool)

(assert (=> b!1478920 m!1724419))

(declare-fun m!1724421 () Bool)

(assert (=> b!1478920 m!1724421))

(assert (=> b!1478920 m!1724421))

(declare-fun m!1724423 () Bool)

(assert (=> b!1478920 m!1724423))

(declare-fun m!1724425 () Bool)

(assert (=> b!1478920 m!1724425))

(declare-fun m!1724427 () Bool)

(assert (=> b!1478921 m!1724427))

(assert (=> b!1478798 d!433666))

(declare-fun d!433668 () Bool)

(assert (=> d!433668 (= (isEmpty!9766 l1!3136) ((_ is Nil!15626) l1!3136))))

(assert (=> b!1478808 d!433668))

(declare-fun bs!345766 () Bool)

(declare-fun d!433670 () Bool)

(assert (= bs!345766 (and d!433670 d!433638)))

(declare-fun lambda!63730 () Int)

(assert (=> bs!345766 (= lambda!63730 lambda!63728)))

(declare-fun bs!345767 () Bool)

(assert (= bs!345767 (and d!433670 d!433660)))

(assert (=> bs!345767 (= lambda!63730 lambda!63729)))

(declare-fun b!1478926 () Bool)

(declare-fun e!945281 () Bool)

(assert (=> b!1478926 (= e!945281 true)))

(declare-fun b!1478925 () Bool)

(declare-fun e!945280 () Bool)

(assert (=> b!1478925 (= e!945280 e!945281)))

(declare-fun b!1478924 () Bool)

(declare-fun e!945279 () Bool)

(assert (=> b!1478924 (= e!945279 e!945280)))

(assert (=> d!433670 e!945279))

(assert (= b!1478925 b!1478926))

(assert (= b!1478924 b!1478925))

(assert (= (and d!433670 ((_ is Cons!15625) rules!4290)) b!1478924))

(assert (=> b!1478926 (< (dynLambda!7099 order!9407 (toValue!4120 (transformation!2785 (h!21026 rules!4290)))) (dynLambda!7100 order!9409 lambda!63730))))

(assert (=> b!1478926 (< (dynLambda!7101 order!9411 (toChars!3979 (transformation!2785 (h!21026 rules!4290)))) (dynLambda!7100 order!9409 lambda!63730))))

(assert (=> d!433670 true))

(declare-fun lt!513835 () Bool)

(assert (=> d!433670 (= lt!513835 (forall!3803 l2!3105 lambda!63730))))

(declare-fun e!945277 () Bool)

(assert (=> d!433670 (= lt!513835 e!945277)))

(declare-fun res!668294 () Bool)

(assert (=> d!433670 (=> res!668294 e!945277)))

(assert (=> d!433670 (= res!668294 (not ((_ is Cons!15626) l2!3105)))))

(assert (=> d!433670 (not (isEmpty!9767 rules!4290))))

(assert (=> d!433670 (= (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 l2!3105) lt!513835)))

(declare-fun b!1478922 () Bool)

(declare-fun e!945278 () Bool)

(assert (=> b!1478922 (= e!945277 e!945278)))

(declare-fun res!668293 () Bool)

(assert (=> b!1478922 (=> (not res!668293) (not e!945278))))

(assert (=> b!1478922 (= res!668293 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 l2!3105)))))

(declare-fun b!1478923 () Bool)

(assert (=> b!1478923 (= e!945278 (rulesProduceEachTokenIndividuallyList!808 thiss!27374 rules!4290 (t!137005 l2!3105)))))

(assert (= (and d!433670 (not res!668294)) b!1478922))

(assert (= (and b!1478922 res!668293) b!1478923))

(declare-fun m!1724429 () Bool)

(assert (=> d!433670 m!1724429))

(assert (=> d!433670 m!1724305))

(assert (=> b!1478922 m!1724425))

(declare-fun m!1724431 () Bool)

(assert (=> b!1478923 m!1724431))

(assert (=> b!1478807 d!433670))

(declare-fun d!433672 () Bool)

(declare-fun res!668297 () Bool)

(declare-fun e!945284 () Bool)

(assert (=> d!433672 (=> (not res!668297) (not e!945284))))

(declare-fun rulesValid!1018 (LexerInterface!2441 List!15691) Bool)

(assert (=> d!433672 (= res!668297 (rulesValid!1018 thiss!27374 rules!4290))))

(assert (=> d!433672 (= (rulesInvariant!2230 thiss!27374 rules!4290) e!945284)))

(declare-fun b!1478929 () Bool)

(declare-datatypes ((List!15693 0))(
  ( (Nil!15627) (Cons!15627 (h!21028 String!18630) (t!137062 List!15693)) )
))
(declare-fun noDuplicateTag!1018 (LexerInterface!2441 List!15691 List!15693) Bool)

(assert (=> b!1478929 (= e!945284 (noDuplicateTag!1018 thiss!27374 rules!4290 Nil!15627))))

(assert (= (and d!433672 res!668297) b!1478929))

(declare-fun m!1724433 () Bool)

(assert (=> d!433672 m!1724433))

(declare-fun m!1724435 () Bool)

(assert (=> b!1478929 m!1724435))

(assert (=> b!1478818 d!433672))

(declare-fun d!433674 () Bool)

(assert (=> d!433674 (= (inv!20835 (tag!3049 (h!21026 rules!4290))) (= (mod (str.len (value!88994 (tag!3049 (h!21026 rules!4290)))) 2) 0))))

(assert (=> b!1478817 d!433674))

(declare-fun d!433676 () Bool)

(declare-fun res!668300 () Bool)

(declare-fun e!945287 () Bool)

(assert (=> d!433676 (=> (not res!668300) (not e!945287))))

(declare-fun semiInverseModEq!1047 (Int Int) Bool)

(assert (=> d!433676 (= res!668300 (semiInverseModEq!1047 (toChars!3979 (transformation!2785 (h!21026 rules!4290))) (toValue!4120 (transformation!2785 (h!21026 rules!4290)))))))

(assert (=> d!433676 (= (inv!20839 (transformation!2785 (h!21026 rules!4290))) e!945287)))

(declare-fun b!1478932 () Bool)

(declare-fun equivClasses!1006 (Int Int) Bool)

(assert (=> b!1478932 (= e!945287 (equivClasses!1006 (toChars!3979 (transformation!2785 (h!21026 rules!4290))) (toValue!4120 (transformation!2785 (h!21026 rules!4290)))))))

(assert (= (and d!433676 res!668300) b!1478932))

(declare-fun m!1724437 () Bool)

(assert (=> d!433676 m!1724437))

(declare-fun m!1724439 () Bool)

(assert (=> b!1478932 m!1724439))

(assert (=> b!1478817 d!433676))

(declare-fun d!433678 () Bool)

(assert (=> d!433678 (= (isEmpty!9767 rules!4290) ((_ is Nil!15625) rules!4290))))

(assert (=> b!1478816 d!433678))

(declare-fun b!1478933 () Bool)

(declare-fun res!668301 () Bool)

(declare-fun e!945289 () Bool)

(assert (=> b!1478933 (=> res!668301 e!945289)))

(assert (=> b!1478933 (= res!668301 (not ((_ is IntegerValue!8627) (value!89020 (h!21027 l2!3105)))))))

(declare-fun e!945288 () Bool)

(assert (=> b!1478933 (= e!945288 e!945289)))

(declare-fun b!1478934 () Bool)

(assert (=> b!1478934 (= e!945289 (inv!15 (value!89020 (h!21027 l2!3105))))))

(declare-fun b!1478935 () Bool)

(assert (=> b!1478935 (= e!945288 (inv!17 (value!89020 (h!21027 l2!3105))))))

(declare-fun b!1478936 () Bool)

(declare-fun e!945290 () Bool)

(assert (=> b!1478936 (= e!945290 (inv!16 (value!89020 (h!21027 l2!3105))))))

(declare-fun d!433680 () Bool)

(declare-fun c!242793 () Bool)

(assert (=> d!433680 (= c!242793 ((_ is IntegerValue!8625) (value!89020 (h!21027 l2!3105))))))

(assert (=> d!433680 (= (inv!21 (value!89020 (h!21027 l2!3105))) e!945290)))

(declare-fun b!1478937 () Bool)

(assert (=> b!1478937 (= e!945290 e!945288)))

(declare-fun c!242792 () Bool)

(assert (=> b!1478937 (= c!242792 ((_ is IntegerValue!8626) (value!89020 (h!21027 l2!3105))))))

(assert (= (and d!433680 c!242793) b!1478936))

(assert (= (and d!433680 (not c!242793)) b!1478937))

(assert (= (and b!1478937 c!242792) b!1478935))

(assert (= (and b!1478937 (not c!242792)) b!1478933))

(assert (= (and b!1478933 (not res!668301)) b!1478934))

(declare-fun m!1724441 () Bool)

(assert (=> b!1478934 m!1724441))

(declare-fun m!1724443 () Bool)

(assert (=> b!1478935 m!1724443))

(declare-fun m!1724445 () Bool)

(assert (=> b!1478936 m!1724445))

(assert (=> b!1478815 d!433680))

(declare-fun d!433682 () Bool)

(assert (=> d!433682 (= (inv!20835 (tag!3049 (rule!4562 (h!21027 l2!3105)))) (= (mod (str.len (value!88994 (tag!3049 (rule!4562 (h!21027 l2!3105))))) 2) 0))))

(assert (=> b!1478804 d!433682))

(declare-fun d!433684 () Bool)

(declare-fun res!668302 () Bool)

(declare-fun e!945291 () Bool)

(assert (=> d!433684 (=> (not res!668302) (not e!945291))))

(assert (=> d!433684 (= res!668302 (semiInverseModEq!1047 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (toValue!4120 (transformation!2785 (rule!4562 (h!21027 l2!3105))))))))

(assert (=> d!433684 (= (inv!20839 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) e!945291)))

(declare-fun b!1478938 () Bool)

(assert (=> b!1478938 (= e!945291 (equivClasses!1006 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (toValue!4120 (transformation!2785 (rule!4562 (h!21027 l2!3105))))))))

(assert (= (and d!433684 res!668302) b!1478938))

(declare-fun m!1724447 () Bool)

(assert (=> d!433684 m!1724447))

(declare-fun m!1724449 () Bool)

(assert (=> b!1478938 m!1724449))

(assert (=> b!1478804 d!433684))

(declare-fun d!433686 () Bool)

(assert (=> d!433686 (= (inv!20835 (tag!3049 (rule!4562 (h!21027 l1!3136)))) (= (mod (str.len (value!88994 (tag!3049 (rule!4562 (h!21027 l1!3136))))) 2) 0))))

(assert (=> b!1478803 d!433686))

(declare-fun d!433688 () Bool)

(declare-fun res!668303 () Bool)

(declare-fun e!945292 () Bool)

(assert (=> d!433688 (=> (not res!668303) (not e!945292))))

(assert (=> d!433688 (= res!668303 (semiInverseModEq!1047 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (toValue!4120 (transformation!2785 (rule!4562 (h!21027 l1!3136))))))))

(assert (=> d!433688 (= (inv!20839 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) e!945292)))

(declare-fun b!1478939 () Bool)

(assert (=> b!1478939 (= e!945292 (equivClasses!1006 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (toValue!4120 (transformation!2785 (rule!4562 (h!21027 l1!3136))))))))

(assert (= (and d!433688 res!668303) b!1478939))

(declare-fun m!1724451 () Bool)

(assert (=> d!433688 m!1724451))

(declare-fun m!1724453 () Bool)

(assert (=> b!1478939 m!1724453))

(assert (=> b!1478803 d!433688))

(declare-fun d!433690 () Bool)

(declare-fun lt!513844 () Bool)

(declare-fun e!945311 () Bool)

(assert (=> d!433690 (= lt!513844 e!945311)))

(declare-fun res!668312 () Bool)

(assert (=> d!433690 (=> (not res!668312) (not e!945311))))

(declare-datatypes ((IArray!10649 0))(
  ( (IArray!10650 (innerList!5382 List!15692)) )
))
(declare-datatypes ((Conc!5322 0))(
  ( (Node!5322 (left!13181 Conc!5322) (right!13511 Conc!5322) (csize!10874 Int) (cheight!5533 Int)) (Leaf!7916 (xs!8077 IArray!10649) (csize!10875 Int)) (Empty!5322) )
))
(declare-datatypes ((BalanceConc!10584 0))(
  ( (BalanceConc!10585 (c!242800 Conc!5322)) )
))
(declare-fun list!6212 (BalanceConc!10584) List!15692)

(declare-datatypes ((tuple2!14320 0))(
  ( (tuple2!14321 (_1!8046 BalanceConc!10584) (_2!8046 BalanceConc!10582)) )
))
(declare-fun lex!1099 (LexerInterface!2441 List!15691 BalanceConc!10582) tuple2!14320)

(declare-fun print!1134 (LexerInterface!2441 BalanceConc!10584) BalanceConc!10582)

(declare-fun singletonSeq!1318 (Token!5232) BalanceConc!10584)

(assert (=> d!433690 (= res!668312 (= (list!6212 (_1!8046 (lex!1099 thiss!27374 rules!4290 (print!1134 thiss!27374 (singletonSeq!1318 lt!513779))))) (list!6212 (singletonSeq!1318 lt!513779))))))

(declare-fun e!945312 () Bool)

(assert (=> d!433690 (= lt!513844 e!945312)))

(declare-fun res!668313 () Bool)

(assert (=> d!433690 (=> (not res!668313) (not e!945312))))

(declare-fun lt!513845 () tuple2!14320)

(declare-fun size!12656 (BalanceConc!10584) Int)

(assert (=> d!433690 (= res!668313 (= (size!12656 (_1!8046 lt!513845)) 1))))

(assert (=> d!433690 (= lt!513845 (lex!1099 thiss!27374 rules!4290 (print!1134 thiss!27374 (singletonSeq!1318 lt!513779))))))

(assert (=> d!433690 (not (isEmpty!9767 rules!4290))))

(assert (=> d!433690 (= (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 lt!513779) lt!513844)))

(declare-fun b!1478967 () Bool)

(declare-fun res!668314 () Bool)

(assert (=> b!1478967 (=> (not res!668314) (not e!945312))))

(declare-fun apply!4033 (BalanceConc!10584 Int) Token!5232)

(assert (=> b!1478967 (= res!668314 (= (apply!4033 (_1!8046 lt!513845) 0) lt!513779))))

(declare-fun b!1478968 () Bool)

(declare-fun isEmpty!9770 (BalanceConc!10582) Bool)

(assert (=> b!1478968 (= e!945312 (isEmpty!9770 (_2!8046 lt!513845)))))

(declare-fun b!1478969 () Bool)

(assert (=> b!1478969 (= e!945311 (isEmpty!9770 (_2!8046 (lex!1099 thiss!27374 rules!4290 (print!1134 thiss!27374 (singletonSeq!1318 lt!513779))))))))

(assert (= (and d!433690 res!668313) b!1478967))

(assert (= (and b!1478967 res!668314) b!1478968))

(assert (= (and d!433690 res!668312) b!1478969))

(assert (=> d!433690 m!1724305))

(declare-fun m!1724475 () Bool)

(assert (=> d!433690 m!1724475))

(declare-fun m!1724477 () Bool)

(assert (=> d!433690 m!1724477))

(declare-fun m!1724479 () Bool)

(assert (=> d!433690 m!1724479))

(assert (=> d!433690 m!1724475))

(declare-fun m!1724481 () Bool)

(assert (=> d!433690 m!1724481))

(assert (=> d!433690 m!1724479))

(declare-fun m!1724483 () Bool)

(assert (=> d!433690 m!1724483))

(declare-fun m!1724485 () Bool)

(assert (=> d!433690 m!1724485))

(assert (=> d!433690 m!1724479))

(declare-fun m!1724487 () Bool)

(assert (=> b!1478967 m!1724487))

(declare-fun m!1724489 () Bool)

(assert (=> b!1478968 m!1724489))

(assert (=> b!1478969 m!1724479))

(assert (=> b!1478969 m!1724479))

(assert (=> b!1478969 m!1724475))

(assert (=> b!1478969 m!1724475))

(assert (=> b!1478969 m!1724477))

(declare-fun m!1724491 () Bool)

(assert (=> b!1478969 m!1724491))

(assert (=> b!1478814 d!433690))

(declare-fun d!433702 () Bool)

(assert (=> d!433702 (= (head!3073 l2!3105) (h!21027 l2!3105))))

(assert (=> b!1478814 d!433702))

(declare-fun d!433704 () Bool)

(declare-fun lt!513848 () Token!5232)

(declare-fun contains!2944 (List!15692 Token!5232) Bool)

(assert (=> d!433704 (contains!2944 l1!3136 lt!513848)))

(declare-fun e!945315 () Token!5232)

(assert (=> d!433704 (= lt!513848 e!945315)))

(declare-fun c!242799 () Bool)

(assert (=> d!433704 (= c!242799 (and ((_ is Cons!15626) l1!3136) ((_ is Nil!15626) (t!137005 l1!3136))))))

(assert (=> d!433704 (not (isEmpty!9766 l1!3136))))

(assert (=> d!433704 (= (last!343 l1!3136) lt!513848)))

(declare-fun b!1478974 () Bool)

(assert (=> b!1478974 (= e!945315 (h!21027 l1!3136))))

(declare-fun b!1478975 () Bool)

(assert (=> b!1478975 (= e!945315 (last!343 (t!137005 l1!3136)))))

(assert (= (and d!433704 c!242799) b!1478974))

(assert (= (and d!433704 (not c!242799)) b!1478975))

(declare-fun m!1724493 () Bool)

(assert (=> d!433704 m!1724493))

(assert (=> d!433704 m!1724281))

(declare-fun m!1724495 () Bool)

(assert (=> b!1478975 m!1724495))

(assert (=> b!1478814 d!433704))

(declare-fun d!433706 () Bool)

(declare-fun prefixMatchZipperSequence!376 (Regex!4099 BalanceConc!10582) Bool)

(declare-fun rulesRegex!426 (LexerInterface!2441 List!15691) Regex!4099)

(declare-fun ++!4213 (BalanceConc!10582 BalanceConc!10582) BalanceConc!10582)

(declare-fun singletonSeq!1319 (C!8376) BalanceConc!10582)

(declare-fun apply!4034 (BalanceConc!10582 Int) C!8376)

(assert (=> d!433706 (= (separableTokensPredicate!580 thiss!27374 lt!513779 lt!513777 rules!4290) (not (prefixMatchZipperSequence!376 (rulesRegex!426 thiss!27374 rules!4290) (++!4213 (charsOf!1594 lt!513779) (singletonSeq!1319 (apply!4034 (charsOf!1594 lt!513777) 0))))))))

(declare-fun bs!345769 () Bool)

(assert (= bs!345769 d!433706))

(declare-fun m!1724497 () Bool)

(assert (=> bs!345769 m!1724497))

(declare-fun m!1724499 () Bool)

(assert (=> bs!345769 m!1724499))

(declare-fun m!1724501 () Bool)

(assert (=> bs!345769 m!1724501))

(declare-fun m!1724503 () Bool)

(assert (=> bs!345769 m!1724503))

(assert (=> bs!345769 m!1724499))

(assert (=> bs!345769 m!1724503))

(declare-fun m!1724505 () Bool)

(assert (=> bs!345769 m!1724505))

(assert (=> bs!345769 m!1724505))

(declare-fun m!1724507 () Bool)

(assert (=> bs!345769 m!1724507))

(declare-fun m!1724509 () Bool)

(assert (=> bs!345769 m!1724509))

(assert (=> bs!345769 m!1724497))

(assert (=> bs!345769 m!1724501))

(assert (=> bs!345769 m!1724507))

(assert (=> b!1478814 d!433706))

(declare-fun d!433708 () Bool)

(declare-fun lt!513849 () Bool)

(declare-fun e!945316 () Bool)

(assert (=> d!433708 (= lt!513849 e!945316)))

(declare-fun res!668315 () Bool)

(assert (=> d!433708 (=> (not res!668315) (not e!945316))))

(assert (=> d!433708 (= res!668315 (= (list!6212 (_1!8046 (lex!1099 thiss!27374 rules!4290 (print!1134 thiss!27374 (singletonSeq!1318 lt!513777))))) (list!6212 (singletonSeq!1318 lt!513777))))))

(declare-fun e!945317 () Bool)

(assert (=> d!433708 (= lt!513849 e!945317)))

(declare-fun res!668316 () Bool)

(assert (=> d!433708 (=> (not res!668316) (not e!945317))))

(declare-fun lt!513850 () tuple2!14320)

(assert (=> d!433708 (= res!668316 (= (size!12656 (_1!8046 lt!513850)) 1))))

(assert (=> d!433708 (= lt!513850 (lex!1099 thiss!27374 rules!4290 (print!1134 thiss!27374 (singletonSeq!1318 lt!513777))))))

(assert (=> d!433708 (not (isEmpty!9767 rules!4290))))

(assert (=> d!433708 (= (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 lt!513777) lt!513849)))

(declare-fun b!1478976 () Bool)

(declare-fun res!668317 () Bool)

(assert (=> b!1478976 (=> (not res!668317) (not e!945317))))

(assert (=> b!1478976 (= res!668317 (= (apply!4033 (_1!8046 lt!513850) 0) lt!513777))))

(declare-fun b!1478977 () Bool)

(assert (=> b!1478977 (= e!945317 (isEmpty!9770 (_2!8046 lt!513850)))))

(declare-fun b!1478978 () Bool)

(assert (=> b!1478978 (= e!945316 (isEmpty!9770 (_2!8046 (lex!1099 thiss!27374 rules!4290 (print!1134 thiss!27374 (singletonSeq!1318 lt!513777))))))))

(assert (= (and d!433708 res!668316) b!1478976))

(assert (= (and b!1478976 res!668317) b!1478977))

(assert (= (and d!433708 res!668315) b!1478978))

(assert (=> d!433708 m!1724305))

(declare-fun m!1724511 () Bool)

(assert (=> d!433708 m!1724511))

(declare-fun m!1724513 () Bool)

(assert (=> d!433708 m!1724513))

(declare-fun m!1724515 () Bool)

(assert (=> d!433708 m!1724515))

(assert (=> d!433708 m!1724511))

(declare-fun m!1724517 () Bool)

(assert (=> d!433708 m!1724517))

(assert (=> d!433708 m!1724515))

(declare-fun m!1724519 () Bool)

(assert (=> d!433708 m!1724519))

(declare-fun m!1724521 () Bool)

(assert (=> d!433708 m!1724521))

(assert (=> d!433708 m!1724515))

(declare-fun m!1724523 () Bool)

(assert (=> b!1478976 m!1724523))

(declare-fun m!1724525 () Bool)

(assert (=> b!1478977 m!1724525))

(assert (=> b!1478978 m!1724515))

(assert (=> b!1478978 m!1724515))

(assert (=> b!1478978 m!1724511))

(assert (=> b!1478978 m!1724511))

(assert (=> b!1478978 m!1724513))

(declare-fun m!1724527 () Bool)

(assert (=> b!1478978 m!1724527))

(assert (=> b!1478814 d!433708))

(declare-fun d!433710 () Bool)

(assert (=> d!433710 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 lt!513777)))

(declare-fun lt!513859 () Unit!25409)

(declare-fun choose!9053 (LexerInterface!2441 List!15691 List!15692 Token!5232) Unit!25409)

(assert (=> d!433710 (= lt!513859 (choose!9053 thiss!27374 rules!4290 l2!3105 lt!513777))))

(assert (=> d!433710 (not (isEmpty!9767 rules!4290))))

(assert (=> d!433710 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l2!3105 lt!513777) lt!513859)))

(declare-fun bs!345770 () Bool)

(assert (= bs!345770 d!433710))

(assert (=> bs!345770 m!1724323))

(declare-fun m!1724547 () Bool)

(assert (=> bs!345770 m!1724547))

(assert (=> bs!345770 m!1724305))

(assert (=> b!1478814 d!433710))

(declare-fun d!433714 () Bool)

(assert (=> d!433714 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 lt!513779)))

(declare-fun lt!513860 () Unit!25409)

(assert (=> d!433714 (= lt!513860 (choose!9053 thiss!27374 rules!4290 l1!3136 lt!513779))))

(assert (=> d!433714 (not (isEmpty!9767 rules!4290))))

(assert (=> d!433714 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l1!3136 lt!513779) lt!513860)))

(declare-fun bs!345771 () Bool)

(assert (= bs!345771 d!433714))

(assert (=> bs!345771 m!1724315))

(declare-fun m!1724549 () Bool)

(assert (=> bs!345771 m!1724549))

(assert (=> bs!345771 m!1724305))

(assert (=> b!1478814 d!433714))

(declare-fun d!433716 () Bool)

(declare-fun res!668327 () Bool)

(declare-fun e!945325 () Bool)

(assert (=> d!433716 (=> res!668327 e!945325)))

(assert (=> d!433716 (= res!668327 (or (not ((_ is Cons!15626) l1!3136)) (not ((_ is Cons!15626) (t!137005 l1!3136)))))))

(assert (=> d!433716 (= (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 l1!3136 rules!4290) e!945325)))

(declare-fun b!1478988 () Bool)

(declare-fun e!945324 () Bool)

(assert (=> b!1478988 (= e!945325 e!945324)))

(declare-fun res!668328 () Bool)

(assert (=> b!1478988 (=> (not res!668328) (not e!945324))))

(assert (=> b!1478988 (= res!668328 (separableTokensPredicate!580 thiss!27374 (h!21027 l1!3136) (h!21027 (t!137005 l1!3136)) rules!4290))))

(declare-fun lt!513863 () Unit!25409)

(declare-fun Unit!25420 () Unit!25409)

(assert (=> b!1478988 (= lt!513863 Unit!25420)))

(assert (=> b!1478988 (> (size!12653 (charsOf!1594 (h!21027 (t!137005 l1!3136)))) 0)))

(declare-fun lt!513864 () Unit!25409)

(declare-fun Unit!25421 () Unit!25409)

(assert (=> b!1478988 (= lt!513864 Unit!25421)))

(assert (=> b!1478988 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 l1!3136)))))

(declare-fun lt!513862 () Unit!25409)

(declare-fun Unit!25422 () Unit!25409)

(assert (=> b!1478988 (= lt!513862 Unit!25422)))

(assert (=> b!1478988 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 l1!3136))))

(declare-fun lt!513867 () Unit!25409)

(declare-fun lt!513861 () Unit!25409)

(assert (=> b!1478988 (= lt!513867 lt!513861)))

(assert (=> b!1478988 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 l1!3136)))))

(assert (=> b!1478988 (= lt!513861 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l1!3136 (h!21027 (t!137005 l1!3136))))))

(declare-fun lt!513865 () Unit!25409)

(declare-fun lt!513866 () Unit!25409)

(assert (=> b!1478988 (= lt!513865 lt!513866)))

(assert (=> b!1478988 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 l1!3136))))

(assert (=> b!1478988 (= lt!513866 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 l1!3136 (h!21027 l1!3136)))))

(declare-fun b!1478989 () Bool)

(assert (=> b!1478989 (= e!945324 (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 (Cons!15626 (h!21027 (t!137005 l1!3136)) (t!137005 (t!137005 l1!3136))) rules!4290))))

(assert (= (and d!433716 (not res!668327)) b!1478988))

(assert (= (and b!1478988 res!668328) b!1478989))

(declare-fun m!1724551 () Bool)

(assert (=> b!1478988 m!1724551))

(declare-fun m!1724553 () Bool)

(assert (=> b!1478988 m!1724553))

(assert (=> b!1478988 m!1724403))

(declare-fun m!1724555 () Bool)

(assert (=> b!1478988 m!1724555))

(declare-fun m!1724557 () Bool)

(assert (=> b!1478988 m!1724557))

(assert (=> b!1478988 m!1724557))

(declare-fun m!1724559 () Bool)

(assert (=> b!1478988 m!1724559))

(assert (=> b!1478988 m!1724387))

(declare-fun m!1724561 () Bool)

(assert (=> b!1478989 m!1724561))

(assert (=> b!1478813 d!433716))

(declare-fun d!433718 () Bool)

(declare-fun res!668329 () Bool)

(declare-fun e!945326 () Bool)

(assert (=> d!433718 (=> (not res!668329) (not e!945326))))

(assert (=> d!433718 (= res!668329 (not (isEmpty!9768 (originalCharacters!3647 (h!21027 l1!3136)))))))

(assert (=> d!433718 (= (inv!20838 (h!21027 l1!3136)) e!945326)))

(declare-fun b!1478990 () Bool)

(declare-fun res!668330 () Bool)

(assert (=> b!1478990 (=> (not res!668330) (not e!945326))))

(assert (=> b!1478990 (= res!668330 (= (originalCharacters!3647 (h!21027 l1!3136)) (list!6211 (dynLambda!7102 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (value!89020 (h!21027 l1!3136))))))))

(declare-fun b!1478991 () Bool)

(assert (=> b!1478991 (= e!945326 (= (size!12651 (h!21027 l1!3136)) (size!12652 (originalCharacters!3647 (h!21027 l1!3136)))))))

(assert (= (and d!433718 res!668329) b!1478990))

(assert (= (and b!1478990 res!668330) b!1478991))

(declare-fun b_lambda!46295 () Bool)

(assert (=> (not b_lambda!46295) (not b!1478990)))

(declare-fun t!137026 () Bool)

(declare-fun tb!84377 () Bool)

(assert (=> (and b!1478796 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136))))) t!137026) tb!84377))

(declare-fun b!1478992 () Bool)

(declare-fun e!945327 () Bool)

(declare-fun tp!419025 () Bool)

(assert (=> b!1478992 (= e!945327 (and (inv!20840 (c!242777 (dynLambda!7102 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (value!89020 (h!21027 l1!3136))))) tp!419025))))

(declare-fun result!101434 () Bool)

(assert (=> tb!84377 (= result!101434 (and (inv!20841 (dynLambda!7102 (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (value!89020 (h!21027 l1!3136)))) e!945327))))

(assert (= tb!84377 b!1478992))

(declare-fun m!1724563 () Bool)

(assert (=> b!1478992 m!1724563))

(declare-fun m!1724565 () Bool)

(assert (=> tb!84377 m!1724565))

(assert (=> b!1478990 t!137026))

(declare-fun b_and!102413 () Bool)

(assert (= b_and!102407 (and (=> t!137026 result!101434) b_and!102413)))

(declare-fun tb!84379 () Bool)

(declare-fun t!137028 () Bool)

(assert (=> (and b!1478806 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136))))) t!137028) tb!84379))

(declare-fun result!101436 () Bool)

(assert (= result!101436 result!101434))

(assert (=> b!1478990 t!137028))

(declare-fun b_and!102415 () Bool)

(assert (= b_and!102409 (and (=> t!137028 result!101436) b_and!102415)))

(declare-fun t!137030 () Bool)

(declare-fun tb!84381 () Bool)

(assert (=> (and b!1478797 (= (toChars!3979 (transformation!2785 (h!21026 rules!4290))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136))))) t!137030) tb!84381))

(declare-fun result!101438 () Bool)

(assert (= result!101438 result!101434))

(assert (=> b!1478990 t!137030))

(declare-fun b_and!102417 () Bool)

(assert (= b_and!102411 (and (=> t!137030 result!101438) b_and!102417)))

(declare-fun m!1724567 () Bool)

(assert (=> d!433718 m!1724567))

(declare-fun m!1724569 () Bool)

(assert (=> b!1478990 m!1724569))

(assert (=> b!1478990 m!1724569))

(declare-fun m!1724571 () Bool)

(assert (=> b!1478990 m!1724571))

(declare-fun m!1724573 () Bool)

(assert (=> b!1478991 m!1724573))

(assert (=> b!1478802 d!433718))

(declare-fun d!433720 () Bool)

(declare-fun res!668331 () Bool)

(declare-fun e!945329 () Bool)

(assert (=> d!433720 (=> res!668331 e!945329)))

(assert (=> d!433720 (= res!668331 (or (not ((_ is Cons!15626) (t!137005 l1!3136))) (not ((_ is Cons!15626) (t!137005 (t!137005 l1!3136))))))))

(assert (=> d!433720 (= (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 (t!137005 l1!3136) rules!4290) e!945329)))

(declare-fun b!1478993 () Bool)

(declare-fun e!945328 () Bool)

(assert (=> b!1478993 (= e!945329 e!945328)))

(declare-fun res!668332 () Bool)

(assert (=> b!1478993 (=> (not res!668332) (not e!945328))))

(assert (=> b!1478993 (= res!668332 (separableTokensPredicate!580 thiss!27374 (h!21027 (t!137005 l1!3136)) (h!21027 (t!137005 (t!137005 l1!3136))) rules!4290))))

(declare-fun lt!513870 () Unit!25409)

(declare-fun Unit!25423 () Unit!25409)

(assert (=> b!1478993 (= lt!513870 Unit!25423)))

(assert (=> b!1478993 (> (size!12653 (charsOf!1594 (h!21027 (t!137005 (t!137005 l1!3136))))) 0)))

(declare-fun lt!513871 () Unit!25409)

(declare-fun Unit!25424 () Unit!25409)

(assert (=> b!1478993 (= lt!513871 Unit!25424)))

(assert (=> b!1478993 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 (t!137005 l1!3136))))))

(declare-fun lt!513869 () Unit!25409)

(declare-fun Unit!25425 () Unit!25409)

(assert (=> b!1478993 (= lt!513869 Unit!25425)))

(assert (=> b!1478993 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 l1!3136)))))

(declare-fun lt!513874 () Unit!25409)

(declare-fun lt!513868 () Unit!25409)

(assert (=> b!1478993 (= lt!513874 lt!513868)))

(assert (=> b!1478993 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 (t!137005 l1!3136))))))

(assert (=> b!1478993 (= lt!513868 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 (t!137005 l1!3136) (h!21027 (t!137005 (t!137005 l1!3136)))))))

(declare-fun lt!513872 () Unit!25409)

(declare-fun lt!513873 () Unit!25409)

(assert (=> b!1478993 (= lt!513872 lt!513873)))

(assert (=> b!1478993 (rulesProduceIndividualToken!1298 thiss!27374 rules!4290 (h!21027 (t!137005 l1!3136)))))

(assert (=> b!1478993 (= lt!513873 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!479 thiss!27374 rules!4290 (t!137005 l1!3136) (h!21027 (t!137005 l1!3136))))))

(declare-fun b!1478994 () Bool)

(assert (=> b!1478994 (= e!945328 (tokensListTwoByTwoPredicateSeparableList!301 thiss!27374 (Cons!15626 (h!21027 (t!137005 (t!137005 l1!3136))) (t!137005 (t!137005 (t!137005 l1!3136)))) rules!4290))))

(assert (= (and d!433720 (not res!668331)) b!1478993))

(assert (= (and b!1478993 res!668332) b!1478994))

(declare-fun m!1724575 () Bool)

(assert (=> b!1478993 m!1724575))

(declare-fun m!1724577 () Bool)

(assert (=> b!1478993 m!1724577))

(declare-fun m!1724579 () Bool)

(assert (=> b!1478993 m!1724579))

(declare-fun m!1724581 () Bool)

(assert (=> b!1478993 m!1724581))

(declare-fun m!1724583 () Bool)

(assert (=> b!1478993 m!1724583))

(assert (=> b!1478993 m!1724583))

(declare-fun m!1724585 () Bool)

(assert (=> b!1478993 m!1724585))

(assert (=> b!1478993 m!1724403))

(declare-fun m!1724587 () Bool)

(assert (=> b!1478994 m!1724587))

(assert (=> b!1478801 d!433720))

(declare-fun b!1479008 () Bool)

(declare-fun b_free!38019 () Bool)

(declare-fun b_next!38723 () Bool)

(assert (=> b!1479008 (= b_free!38019 (not b_next!38723))))

(declare-fun tp!419039 () Bool)

(declare-fun b_and!102419 () Bool)

(assert (=> b!1479008 (= tp!419039 b_and!102419)))

(declare-fun b_free!38021 () Bool)

(declare-fun b_next!38725 () Bool)

(assert (=> b!1479008 (= b_free!38021 (not b_next!38725))))

(declare-fun t!137032 () Bool)

(declare-fun tb!84383 () Bool)

(assert (=> (and b!1479008 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l2!3105))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105))))) t!137032) tb!84383))

(declare-fun result!101442 () Bool)

(assert (= result!101442 result!101426))

(assert (=> b!1478889 t!137032))

(declare-fun t!137034 () Bool)

(declare-fun tb!84385 () Bool)

(assert (=> (and b!1479008 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l2!3105))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136))))) t!137034) tb!84385))

(declare-fun result!101444 () Bool)

(assert (= result!101444 result!101434))

(assert (=> b!1478990 t!137034))

(declare-fun tp!419036 () Bool)

(declare-fun b_and!102421 () Bool)

(assert (=> b!1479008 (= tp!419036 (and (=> t!137032 result!101442) (=> t!137034 result!101444) b_and!102421))))

(declare-fun e!945343 () Bool)

(assert (=> b!1478799 (= tp!419016 e!945343)))

(declare-fun e!945342 () Bool)

(declare-fun b!1479006 () Bool)

(declare-fun e!945346 () Bool)

(declare-fun tp!419038 () Bool)

(assert (=> b!1479006 (= e!945346 (and (inv!21 (value!89020 (h!21027 (t!137005 l2!3105)))) e!945342 tp!419038))))

(declare-fun b!1479005 () Bool)

(declare-fun tp!419037 () Bool)

(assert (=> b!1479005 (= e!945343 (and (inv!20838 (h!21027 (t!137005 l2!3105))) e!945346 tp!419037))))

(declare-fun b!1479007 () Bool)

(declare-fun tp!419040 () Bool)

(declare-fun e!945344 () Bool)

(assert (=> b!1479007 (= e!945342 (and tp!419040 (inv!20835 (tag!3049 (rule!4562 (h!21027 (t!137005 l2!3105))))) (inv!20839 (transformation!2785 (rule!4562 (h!21027 (t!137005 l2!3105))))) e!945344))))

(assert (=> b!1479008 (= e!945344 (and tp!419039 tp!419036))))

(assert (= b!1479007 b!1479008))

(assert (= b!1479006 b!1479007))

(assert (= b!1479005 b!1479006))

(assert (= (and b!1478799 ((_ is Cons!15626) (t!137005 l2!3105))) b!1479005))

(declare-fun m!1724589 () Bool)

(assert (=> b!1479006 m!1724589))

(declare-fun m!1724591 () Bool)

(assert (=> b!1479005 m!1724591))

(declare-fun m!1724593 () Bool)

(assert (=> b!1479007 m!1724593))

(declare-fun m!1724595 () Bool)

(assert (=> b!1479007 m!1724595))

(declare-fun b!1479013 () Bool)

(declare-fun e!945350 () Bool)

(declare-fun tp_is_empty!6961 () Bool)

(declare-fun tp!419043 () Bool)

(assert (=> b!1479013 (= e!945350 (and tp_is_empty!6961 tp!419043))))

(assert (=> b!1478809 (= tp!419007 e!945350)))

(assert (= (and b!1478809 ((_ is Cons!15624) (originalCharacters!3647 (h!21027 l1!3136)))) b!1479013))

(declare-fun b!1479024 () Bool)

(declare-fun e!945353 () Bool)

(assert (=> b!1479024 (= e!945353 tp_is_empty!6961)))

(declare-fun b!1479026 () Bool)

(declare-fun tp!419056 () Bool)

(assert (=> b!1479026 (= e!945353 tp!419056)))

(declare-fun b!1479027 () Bool)

(declare-fun tp!419055 () Bool)

(declare-fun tp!419057 () Bool)

(assert (=> b!1479027 (= e!945353 (and tp!419055 tp!419057))))

(declare-fun b!1479025 () Bool)

(declare-fun tp!419054 () Bool)

(declare-fun tp!419058 () Bool)

(assert (=> b!1479025 (= e!945353 (and tp!419054 tp!419058))))

(assert (=> b!1478817 (= tp!419014 e!945353)))

(assert (= (and b!1478817 ((_ is ElementMatch!4099) (regex!2785 (h!21026 rules!4290)))) b!1479024))

(assert (= (and b!1478817 ((_ is Concat!6974) (regex!2785 (h!21026 rules!4290)))) b!1479025))

(assert (= (and b!1478817 ((_ is Star!4099) (regex!2785 (h!21026 rules!4290)))) b!1479026))

(assert (= (and b!1478817 ((_ is Union!4099) (regex!2785 (h!21026 rules!4290)))) b!1479027))

(declare-fun b!1479028 () Bool)

(declare-fun e!945354 () Bool)

(declare-fun tp!419059 () Bool)

(assert (=> b!1479028 (= e!945354 (and tp_is_empty!6961 tp!419059))))

(assert (=> b!1478815 (= tp!419015 e!945354)))

(assert (= (and b!1478815 ((_ is Cons!15624) (originalCharacters!3647 (h!21027 l2!3105)))) b!1479028))

(declare-fun b!1479029 () Bool)

(declare-fun e!945355 () Bool)

(assert (=> b!1479029 (= e!945355 tp_is_empty!6961)))

(declare-fun b!1479031 () Bool)

(declare-fun tp!419062 () Bool)

(assert (=> b!1479031 (= e!945355 tp!419062)))

(declare-fun b!1479032 () Bool)

(declare-fun tp!419061 () Bool)

(declare-fun tp!419063 () Bool)

(assert (=> b!1479032 (= e!945355 (and tp!419061 tp!419063))))

(declare-fun b!1479030 () Bool)

(declare-fun tp!419060 () Bool)

(declare-fun tp!419064 () Bool)

(assert (=> b!1479030 (= e!945355 (and tp!419060 tp!419064))))

(assert (=> b!1478804 (= tp!419018 e!945355)))

(assert (= (and b!1478804 ((_ is ElementMatch!4099) (regex!2785 (rule!4562 (h!21027 l2!3105))))) b!1479029))

(assert (= (and b!1478804 ((_ is Concat!6974) (regex!2785 (rule!4562 (h!21027 l2!3105))))) b!1479030))

(assert (= (and b!1478804 ((_ is Star!4099) (regex!2785 (rule!4562 (h!21027 l2!3105))))) b!1479031))

(assert (= (and b!1478804 ((_ is Union!4099) (regex!2785 (rule!4562 (h!21027 l2!3105))))) b!1479032))

(declare-fun b!1479035 () Bool)

(declare-fun e!945358 () Bool)

(assert (=> b!1479035 (= e!945358 tp_is_empty!6961)))

(declare-fun b!1479038 () Bool)

(declare-fun tp!419067 () Bool)

(assert (=> b!1479038 (= e!945358 tp!419067)))

(declare-fun b!1479039 () Bool)

(declare-fun tp!419066 () Bool)

(declare-fun tp!419068 () Bool)

(assert (=> b!1479039 (= e!945358 (and tp!419066 tp!419068))))

(declare-fun b!1479037 () Bool)

(declare-fun tp!419065 () Bool)

(declare-fun tp!419069 () Bool)

(assert (=> b!1479037 (= e!945358 (and tp!419065 tp!419069))))

(assert (=> b!1478803 (= tp!419006 e!945358)))

(assert (= (and b!1478803 ((_ is ElementMatch!4099) (regex!2785 (rule!4562 (h!21027 l1!3136))))) b!1479035))

(assert (= (and b!1478803 ((_ is Concat!6974) (regex!2785 (rule!4562 (h!21027 l1!3136))))) b!1479037))

(assert (= (and b!1478803 ((_ is Star!4099) (regex!2785 (rule!4562 (h!21027 l1!3136))))) b!1479038))

(assert (= (and b!1478803 ((_ is Union!4099) (regex!2785 (rule!4562 (h!21027 l1!3136))))) b!1479039))

(declare-fun b!1479043 () Bool)

(declare-fun b_free!38023 () Bool)

(declare-fun b_next!38727 () Bool)

(assert (=> b!1479043 (= b_free!38023 (not b_next!38727))))

(declare-fun tp!419073 () Bool)

(declare-fun b_and!102423 () Bool)

(assert (=> b!1479043 (= tp!419073 b_and!102423)))

(declare-fun b_free!38025 () Bool)

(declare-fun b_next!38729 () Bool)

(assert (=> b!1479043 (= b_free!38025 (not b_next!38729))))

(declare-fun t!137037 () Bool)

(declare-fun tb!84387 () Bool)

(assert (=> (and b!1479043 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l1!3136))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105))))) t!137037) tb!84387))

(declare-fun result!101450 () Bool)

(assert (= result!101450 result!101426))

(assert (=> b!1478889 t!137037))

(declare-fun t!137039 () Bool)

(declare-fun tb!84389 () Bool)

(assert (=> (and b!1479043 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l1!3136))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136))))) t!137039) tb!84389))

(declare-fun result!101452 () Bool)

(assert (= result!101452 result!101434))

(assert (=> b!1478990 t!137039))

(declare-fun b_and!102425 () Bool)

(declare-fun tp!419070 () Bool)

(assert (=> b!1479043 (= tp!419070 (and (=> t!137037 result!101450) (=> t!137039 result!101452) b_and!102425))))

(declare-fun e!945360 () Bool)

(assert (=> b!1478802 (= tp!419005 e!945360)))

(declare-fun b!1479041 () Bool)

(declare-fun tp!419072 () Bool)

(declare-fun e!945359 () Bool)

(declare-fun e!945363 () Bool)

(assert (=> b!1479041 (= e!945363 (and (inv!21 (value!89020 (h!21027 (t!137005 l1!3136)))) e!945359 tp!419072))))

(declare-fun tp!419071 () Bool)

(declare-fun b!1479040 () Bool)

(assert (=> b!1479040 (= e!945360 (and (inv!20838 (h!21027 (t!137005 l1!3136))) e!945363 tp!419071))))

(declare-fun tp!419074 () Bool)

(declare-fun e!945361 () Bool)

(declare-fun b!1479042 () Bool)

(assert (=> b!1479042 (= e!945359 (and tp!419074 (inv!20835 (tag!3049 (rule!4562 (h!21027 (t!137005 l1!3136))))) (inv!20839 (transformation!2785 (rule!4562 (h!21027 (t!137005 l1!3136))))) e!945361))))

(assert (=> b!1479043 (= e!945361 (and tp!419073 tp!419070))))

(assert (= b!1479042 b!1479043))

(assert (= b!1479041 b!1479042))

(assert (= b!1479040 b!1479041))

(assert (= (and b!1478802 ((_ is Cons!15626) (t!137005 l1!3136))) b!1479040))

(declare-fun m!1724613 () Bool)

(assert (=> b!1479041 m!1724613))

(declare-fun m!1724617 () Bool)

(assert (=> b!1479040 m!1724617))

(declare-fun m!1724619 () Bool)

(assert (=> b!1479042 m!1724619))

(declare-fun m!1724621 () Bool)

(assert (=> b!1479042 m!1724621))

(declare-fun b!1479061 () Bool)

(declare-fun b_free!38027 () Bool)

(declare-fun b_next!38731 () Bool)

(assert (=> b!1479061 (= b_free!38027 (not b_next!38731))))

(declare-fun tp!419084 () Bool)

(declare-fun b_and!102427 () Bool)

(assert (=> b!1479061 (= tp!419084 b_and!102427)))

(declare-fun b_free!38029 () Bool)

(declare-fun b_next!38733 () Bool)

(assert (=> b!1479061 (= b_free!38029 (not b_next!38733))))

(declare-fun tb!84391 () Bool)

(declare-fun t!137041 () Bool)

(assert (=> (and b!1479061 (= (toChars!3979 (transformation!2785 (h!21026 (t!137004 rules!4290)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105))))) t!137041) tb!84391))

(declare-fun result!101456 () Bool)

(assert (= result!101456 result!101426))

(assert (=> b!1478889 t!137041))

(declare-fun t!137043 () Bool)

(declare-fun tb!84393 () Bool)

(assert (=> (and b!1479061 (= (toChars!3979 (transformation!2785 (h!21026 (t!137004 rules!4290)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136))))) t!137043) tb!84393))

(declare-fun result!101458 () Bool)

(assert (= result!101458 result!101434))

(assert (=> b!1478990 t!137043))

(declare-fun tp!419085 () Bool)

(declare-fun b_and!102429 () Bool)

(assert (=> b!1479061 (= tp!419085 (and (=> t!137041 result!101456) (=> t!137043 result!101458) b_and!102429))))

(declare-fun e!945382 () Bool)

(assert (=> b!1479061 (= e!945382 (and tp!419084 tp!419085))))

(declare-fun e!945383 () Bool)

(declare-fun b!1479060 () Bool)

(declare-fun tp!419086 () Bool)

(assert (=> b!1479060 (= e!945383 (and tp!419086 (inv!20835 (tag!3049 (h!21026 (t!137004 rules!4290)))) (inv!20839 (transformation!2785 (h!21026 (t!137004 rules!4290)))) e!945382))))

(declare-fun b!1479059 () Bool)

(declare-fun e!945381 () Bool)

(declare-fun tp!419083 () Bool)

(assert (=> b!1479059 (= e!945381 (and e!945383 tp!419083))))

(assert (=> b!1478812 (= tp!419012 e!945381)))

(assert (= b!1479060 b!1479061))

(assert (= b!1479059 b!1479060))

(assert (= (and b!1478812 ((_ is Cons!15625) (t!137004 rules!4290))) b!1479059))

(declare-fun m!1724635 () Bool)

(assert (=> b!1479060 m!1724635))

(declare-fun m!1724637 () Bool)

(assert (=> b!1479060 m!1724637))

(declare-fun b_lambda!46297 () Bool)

(assert (= b_lambda!46295 (or (and b!1478796 b_free!38009) (and b!1478797 b_free!38017 (= (toChars!3979 (transformation!2785 (h!21026 rules!4290))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))))) (and b!1479061 b_free!38029 (= (toChars!3979 (transformation!2785 (h!21026 (t!137004 rules!4290)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))))) (and b!1478806 b_free!38013 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))))) (and b!1479043 b_free!38025 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l1!3136))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))))) (and b!1479008 b_free!38021 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l2!3105))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))))) b_lambda!46297)))

(declare-fun b_lambda!46299 () Bool)

(assert (= b_lambda!46293 (or (and b!1479043 b_free!38025 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l1!3136))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))))) (and b!1478797 b_free!38017 (= (toChars!3979 (transformation!2785 (h!21026 rules!4290))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))))) (and b!1478806 b_free!38013) (and b!1478796 b_free!38009 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l1!3136)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))))) (and b!1479061 b_free!38029 (= (toChars!3979 (transformation!2785 (h!21026 (t!137004 rules!4290)))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))))) (and b!1479008 b_free!38021 (= (toChars!3979 (transformation!2785 (rule!4562 (h!21027 (t!137005 l2!3105))))) (toChars!3979 (transformation!2785 (rule!4562 (h!21027 l2!3105)))))) b_lambda!46299)))

(check-sat (not b!1478932) (not b!1478934) (not b!1478977) (not b!1478990) (not b!1479040) (not b!1479038) (not b!1479042) (not b!1478870) (not d!433660) (not b!1478975) (not b!1478991) (not b!1478889) (not b!1478880) b_and!102415 (not b!1478993) (not b!1478912) (not b_next!38711) (not d!433710) (not b!1478923) (not b!1478896) (not b_next!38713) (not b!1478939) (not b!1478920) (not d!433688) b_and!102393 (not b!1479007) b_and!102417 (not b!1478969) (not b!1478989) (not b!1479059) (not b!1478978) (not b_next!38733) (not b_next!38731) b_and!102421 (not b!1478988) (not b!1478922) (not d!433676) (not b!1479039) b_and!102419 (not b_next!38717) (not d!433718) (not b!1478898) (not d!433706) (not tb!84377) b_and!102425 (not b!1479031) (not b!1478914) (not b!1478921) (not b!1479013) (not b_next!38725) (not tb!84371) (not b!1479041) (not b!1478895) (not b_next!38723) b_and!102429 (not d!433708) (not b!1479005) (not d!433672) (not b_lambda!46299) (not b!1479006) (not b!1478938) b_and!102427 (not b!1478968) (not b!1479060) b_and!102413 (not d!433658) (not d!433714) (not b!1478936) (not b_next!38721) (not b!1478935) (not b!1479028) (not d!433690) (not b_next!38727) (not b!1478967) (not b!1479025) (not b!1478992) (not b!1478976) (not d!433638) (not b_next!38719) (not b!1479030) (not b!1478871) (not b_next!38715) (not b!1479027) (not d!433704) b_and!102397 (not b!1479037) (not b_next!38729) (not d!433670) (not d!433684) (not b!1478897) (not b!1479032) (not b!1478929) tp_is_empty!6961 b_and!102389 (not b!1478913) (not b!1479026) (not b_lambda!46297) (not b!1478994) (not b!1478890) (not b!1478924) b_and!102423)
(check-sat b_and!102415 (not b_next!38711) (not b_next!38713) (not b_next!38733) b_and!102425 (not b_next!38725) b_and!102427 b_and!102413 (not b_next!38721) (not b_next!38727) (not b_next!38719) (not b_next!38715) b_and!102389 b_and!102423 b_and!102393 b_and!102417 (not b_next!38731) b_and!102421 b_and!102419 (not b_next!38717) (not b_next!38723) b_and!102429 b_and!102397 (not b_next!38729))

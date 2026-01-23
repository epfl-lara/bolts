; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271728 () Bool)

(assert start!271728)

(declare-fun b!2808881 () Bool)

(declare-fun b_free!80133 () Bool)

(declare-fun b_next!80837 () Bool)

(assert (=> b!2808881 (= b_free!80133 (not b_next!80837))))

(declare-fun tp!896763 () Bool)

(declare-fun b_and!205231 () Bool)

(assert (=> b!2808881 (= tp!896763 b_and!205231)))

(declare-fun b_free!80135 () Bool)

(declare-fun b_next!80839 () Bool)

(assert (=> b!2808881 (= b_free!80135 (not b_next!80839))))

(declare-fun tp!896764 () Bool)

(declare-fun b_and!205233 () Bool)

(assert (=> b!2808881 (= tp!896764 b_and!205233)))

(declare-fun b!2808884 () Bool)

(declare-fun b_free!80137 () Bool)

(declare-fun b_next!80841 () Bool)

(assert (=> b!2808884 (= b_free!80137 (not b_next!80841))))

(declare-fun tp!896760 () Bool)

(declare-fun b_and!205235 () Bool)

(assert (=> b!2808884 (= tp!896760 b_and!205235)))

(declare-fun b_free!80139 () Bool)

(declare-fun b_next!80843 () Bool)

(assert (=> b!2808884 (= b_free!80139 (not b_next!80843))))

(declare-fun tp!896758 () Bool)

(declare-fun b_and!205237 () Bool)

(assert (=> b!2808884 (= tp!896758 b_and!205237)))

(declare-fun b!2808877 () Bool)

(declare-fun e!1776251 () Bool)

(declare-datatypes ((List!32883 0))(
  ( (Nil!32783) (Cons!32783 (h!38203 (_ BitVec 16)) (t!229611 List!32883)) )
))
(declare-datatypes ((TokenValue!5131 0))(
  ( (FloatLiteralValue!10262 (text!36362 List!32883)) (TokenValueExt!5130 (__x!21919 Int)) (Broken!25655 (value!157790 List!32883)) (Object!5230) (End!5131) (Def!5131) (Underscore!5131) (Match!5131) (Else!5131) (Error!5131) (Case!5131) (If!5131) (Extends!5131) (Abstract!5131) (Class!5131) (Val!5131) (DelimiterValue!10262 (del!5191 List!32883)) (KeywordValue!5137 (value!157791 List!32883)) (CommentValue!10262 (value!157792 List!32883)) (WhitespaceValue!10262 (value!157793 List!32883)) (IndentationValue!5131 (value!157794 List!32883)) (String!35990) (Int32!5131) (Broken!25656 (value!157795 List!32883)) (Boolean!5132) (Unit!46809) (OperatorValue!5134 (op!5191 List!32883)) (IdentifierValue!10262 (value!157796 List!32883)) (IdentifierValue!10263 (value!157797 List!32883)) (WhitespaceValue!10263 (value!157798 List!32883)) (True!10262) (False!10262) (Broken!25657 (value!157799 List!32883)) (Broken!25658 (value!157800 List!32883)) (True!10263) (RightBrace!5131) (RightBracket!5131) (Colon!5131) (Null!5131) (Comma!5131) (LeftBracket!5131) (False!10263) (LeftBrace!5131) (ImaginaryLiteralValue!5131 (text!36363 List!32883)) (StringLiteralValue!15393 (value!157801 List!32883)) (EOFValue!5131 (value!157802 List!32883)) (IdentValue!5131 (value!157803 List!32883)) (DelimiterValue!10263 (value!157804 List!32883)) (DedentValue!5131 (value!157805 List!32883)) (NewLineValue!5131 (value!157806 List!32883)) (IntegerValue!15393 (value!157807 (_ BitVec 32)) (text!36364 List!32883)) (IntegerValue!15394 (value!157808 Int) (text!36365 List!32883)) (Times!5131) (Or!5131) (Equal!5131) (Minus!5131) (Broken!25659 (value!157809 List!32883)) (And!5131) (Div!5131) (LessEqual!5131) (Mod!5131) (Concat!13410) (Not!5131) (Plus!5131) (SpaceValue!5131 (value!157810 List!32883)) (IntegerValue!15395 (value!157811 Int) (text!36366 List!32883)) (StringLiteralValue!15394 (text!36367 List!32883)) (FloatLiteralValue!10263 (text!36368 List!32883)) (BytesLiteralValue!5131 (value!157812 List!32883)) (CommentValue!10263 (value!157813 List!32883)) (StringLiteralValue!15395 (value!157814 List!32883)) (ErrorTokenValue!5131 (msg!5192 List!32883)) )
))
(declare-datatypes ((String!35991 0))(
  ( (String!35992 (value!157815 String)) )
))
(declare-datatypes ((C!16716 0))(
  ( (C!16717 (val!10292 Int)) )
))
(declare-datatypes ((List!32884 0))(
  ( (Nil!32784) (Cons!32784 (h!38204 C!16716) (t!229612 List!32884)) )
))
(declare-datatypes ((IArray!20301 0))(
  ( (IArray!20302 (innerList!10208 List!32884)) )
))
(declare-datatypes ((Conc!10148 0))(
  ( (Node!10148 (left!24737 Conc!10148) (right!25067 Conc!10148) (csize!20526 Int) (cheight!10359 Int)) (Leaf!15456 (xs!13260 IArray!20301) (csize!20527 Int)) (Empty!10148) )
))
(declare-datatypes ((BalanceConc!19910 0))(
  ( (BalanceConc!19911 (c!454984 Conc!10148)) )
))
(declare-datatypes ((TokenValueInjection!9702 0))(
  ( (TokenValueInjection!9703 (toValue!6911 Int) (toChars!6770 Int)) )
))
(declare-datatypes ((Regex!8279 0))(
  ( (ElementMatch!8279 (c!454985 C!16716)) (Concat!13411 (regOne!17070 Regex!8279) (regTwo!17070 Regex!8279)) (EmptyExpr!8279) (Star!8279 (reg!8608 Regex!8279)) (EmptyLang!8279) (Union!8279 (regOne!17071 Regex!8279) (regTwo!17071 Regex!8279)) )
))
(declare-datatypes ((Rule!9618 0))(
  ( (Rule!9619 (regex!4909 Regex!8279) (tag!5413 String!35991) (isSeparator!4909 Bool) (transformation!4909 TokenValueInjection!9702)) )
))
(declare-datatypes ((Token!9220 0))(
  ( (Token!9221 (value!157816 TokenValue!5131) (rule!7337 Rule!9618) (size!25556 Int) (originalCharacters!5641 List!32884)) )
))
(declare-datatypes ((List!32885 0))(
  ( (Nil!32785) (Cons!32785 (h!38205 Token!9220) (t!229613 List!32885)) )
))
(declare-fun l!4240 () List!32885)

(declare-fun ListPrimitiveSize!209 (List!32885) Int)

(assert (=> b!2808877 (= e!1776251 (not (< (ListPrimitiveSize!209 (t!229613 l!4240)) (ListPrimitiveSize!209 l!4240))))))

(declare-fun e!1776246 () Bool)

(assert (=> b!2808877 e!1776246))

(declare-fun c!454983 () Bool)

(declare-fun lt!1003577 () List!32885)

(get-info :version)

(assert (=> b!2808877 (= c!454983 ((_ is Cons!32785) lt!1003577))))

(declare-fun lt!1003578 () List!32884)

(declare-datatypes ((LexerInterface!4500 0))(
  ( (LexerInterfaceExt!4497 (__x!21920 Int)) (Lexer!4498) )
))
(declare-fun thiss!13843 () LexerInterface!4500)

(declare-fun printList!1208 (LexerInterface!4500 List!32885) List!32884)

(assert (=> b!2808877 (= lt!1003578 (printList!1208 thiss!13843 lt!1003577))))

(declare-fun separatorToken!99 () Token!9220)

(declare-fun $colon$colon!556 (List!32885 Token!9220) List!32885)

(declare-fun withSeparatorTokenList!144 (LexerInterface!4500 List!32885 Token!9220) List!32885)

(assert (=> b!2808877 (= lt!1003577 ($colon$colon!556 ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 l!4240) separatorToken!99) separatorToken!99) (h!38205 l!4240)))))

(declare-fun b!2808878 () Bool)

(declare-fun ++!8049 (List!32884 List!32884) List!32884)

(declare-fun list!12273 (BalanceConc!19910) List!32884)

(declare-fun charsOf!3048 (Token!9220) BalanceConc!19910)

(assert (=> b!2808878 (= e!1776246 (= lt!1003578 (++!8049 (list!12273 (charsOf!3048 (h!38205 lt!1003577))) (printList!1208 thiss!13843 (t!229613 lt!1003577)))))))

(declare-fun tp!896762 () Bool)

(declare-fun b!2808879 () Bool)

(declare-fun e!1776241 () Bool)

(declare-fun e!1776240 () Bool)

(declare-fun inv!21 (TokenValue!5131) Bool)

(assert (=> b!2808879 (= e!1776240 (and (inv!21 (value!157816 separatorToken!99)) e!1776241 tp!896762))))

(declare-fun e!1776244 () Bool)

(declare-fun b!2808880 () Bool)

(declare-fun tp!896765 () Bool)

(declare-fun inv!44480 (String!35991) Bool)

(declare-fun inv!44483 (TokenValueInjection!9702) Bool)

(assert (=> b!2808880 (= e!1776241 (and tp!896765 (inv!44480 (tag!5413 (rule!7337 separatorToken!99))) (inv!44483 (transformation!4909 (rule!7337 separatorToken!99))) e!1776244))))

(assert (=> b!2808881 (= e!1776244 (and tp!896763 tp!896764))))

(declare-fun b!2808882 () Bool)

(assert (=> b!2808882 (= e!1776246 (= lt!1003578 Nil!32784))))

(declare-fun res!1169808 () Bool)

(assert (=> start!271728 (=> (not res!1169808) (not e!1776251))))

(assert (=> start!271728 (= res!1169808 (and ((_ is Lexer!4498) thiss!13843) (isSeparator!4909 (rule!7337 separatorToken!99)) ((_ is Cons!32785) l!4240)))))

(assert (=> start!271728 e!1776251))

(assert (=> start!271728 true))

(declare-fun inv!44484 (Token!9220) Bool)

(assert (=> start!271728 (and (inv!44484 separatorToken!99) e!1776240)))

(declare-fun e!1776243 () Bool)

(assert (=> start!271728 e!1776243))

(declare-fun e!1776248 () Bool)

(declare-fun b!2808883 () Bool)

(declare-fun e!1776242 () Bool)

(declare-fun tp!896759 () Bool)

(assert (=> b!2808883 (= e!1776248 (and (inv!21 (value!157816 (h!38205 l!4240))) e!1776242 tp!896759))))

(declare-fun e!1776247 () Bool)

(assert (=> b!2808884 (= e!1776247 (and tp!896760 tp!896758))))

(declare-fun b!2808885 () Bool)

(declare-fun tp!896761 () Bool)

(assert (=> b!2808885 (= e!1776243 (and (inv!44484 (h!38205 l!4240)) e!1776248 tp!896761))))

(declare-fun b!2808886 () Bool)

(declare-fun tp!896766 () Bool)

(assert (=> b!2808886 (= e!1776242 (and tp!896766 (inv!44480 (tag!5413 (rule!7337 (h!38205 l!4240)))) (inv!44483 (transformation!4909 (rule!7337 (h!38205 l!4240)))) e!1776247))))

(assert (= (and start!271728 res!1169808) b!2808877))

(assert (= (and b!2808877 c!454983) b!2808878))

(assert (= (and b!2808877 (not c!454983)) b!2808882))

(assert (= b!2808880 b!2808881))

(assert (= b!2808879 b!2808880))

(assert (= start!271728 b!2808879))

(assert (= b!2808886 b!2808884))

(assert (= b!2808883 b!2808886))

(assert (= b!2808885 b!2808883))

(assert (= (and start!271728 ((_ is Cons!32785) l!4240)) b!2808885))

(declare-fun m!3238325 () Bool)

(assert (=> b!2808883 m!3238325))

(declare-fun m!3238327 () Bool)

(assert (=> b!2808879 m!3238327))

(declare-fun m!3238329 () Bool)

(assert (=> start!271728 m!3238329))

(declare-fun m!3238331 () Bool)

(assert (=> b!2808877 m!3238331))

(declare-fun m!3238333 () Bool)

(assert (=> b!2808877 m!3238333))

(declare-fun m!3238335 () Bool)

(assert (=> b!2808877 m!3238335))

(declare-fun m!3238337 () Bool)

(assert (=> b!2808877 m!3238337))

(declare-fun m!3238339 () Bool)

(assert (=> b!2808877 m!3238339))

(declare-fun m!3238341 () Bool)

(assert (=> b!2808877 m!3238341))

(assert (=> b!2808877 m!3238333))

(assert (=> b!2808877 m!3238337))

(declare-fun m!3238343 () Bool)

(assert (=> b!2808885 m!3238343))

(declare-fun m!3238345 () Bool)

(assert (=> b!2808886 m!3238345))

(declare-fun m!3238347 () Bool)

(assert (=> b!2808886 m!3238347))

(declare-fun m!3238349 () Bool)

(assert (=> b!2808878 m!3238349))

(assert (=> b!2808878 m!3238349))

(declare-fun m!3238351 () Bool)

(assert (=> b!2808878 m!3238351))

(declare-fun m!3238353 () Bool)

(assert (=> b!2808878 m!3238353))

(assert (=> b!2808878 m!3238351))

(assert (=> b!2808878 m!3238353))

(declare-fun m!3238355 () Bool)

(assert (=> b!2808878 m!3238355))

(declare-fun m!3238357 () Bool)

(assert (=> b!2808880 m!3238357))

(declare-fun m!3238359 () Bool)

(assert (=> b!2808880 m!3238359))

(check-sat (not b!2808877) (not b!2808886) b_and!205231 (not b!2808878) (not b!2808879) (not b!2808885) (not b_next!80841) (not b_next!80837) (not start!271728) (not b!2808883) b_and!205237 b_and!205233 (not b_next!80839) (not b_next!80843) b_and!205235 (not b!2808880))
(check-sat b_and!205231 (not b_next!80841) (not b_next!80837) b_and!205237 b_and!205233 (not b_next!80839) (not b_next!80843) b_and!205235)
(get-model)

(declare-fun b!2808901 () Bool)

(declare-fun res!1169822 () Bool)

(declare-fun e!1776263 () Bool)

(assert (=> b!2808901 (=> res!1169822 e!1776263)))

(assert (=> b!2808901 (= res!1169822 (not ((_ is IntegerValue!15395) (value!157816 separatorToken!99))))))

(declare-fun e!1776262 () Bool)

(assert (=> b!2808901 (= e!1776262 e!1776263)))

(declare-fun b!2808902 () Bool)

(declare-fun inv!15 (TokenValue!5131) Bool)

(assert (=> b!2808902 (= e!1776263 (inv!15 (value!157816 separatorToken!99)))))

(declare-fun d!815332 () Bool)

(declare-fun c!454991 () Bool)

(assert (=> d!815332 (= c!454991 ((_ is IntegerValue!15393) (value!157816 separatorToken!99)))))

(declare-fun e!1776261 () Bool)

(assert (=> d!815332 (= (inv!21 (value!157816 separatorToken!99)) e!1776261)))

(declare-fun b!2808903 () Bool)

(assert (=> b!2808903 (= e!1776261 e!1776262)))

(declare-fun c!454990 () Bool)

(assert (=> b!2808903 (= c!454990 ((_ is IntegerValue!15394) (value!157816 separatorToken!99)))))

(declare-fun b!2808904 () Bool)

(declare-fun inv!17 (TokenValue!5131) Bool)

(assert (=> b!2808904 (= e!1776262 (inv!17 (value!157816 separatorToken!99)))))

(declare-fun b!2808905 () Bool)

(declare-fun inv!16 (TokenValue!5131) Bool)

(assert (=> b!2808905 (= e!1776261 (inv!16 (value!157816 separatorToken!99)))))

(assert (= (and d!815332 c!454991) b!2808905))

(assert (= (and d!815332 (not c!454991)) b!2808903))

(assert (= (and b!2808903 c!454990) b!2808904))

(assert (= (and b!2808903 (not c!454990)) b!2808901))

(assert (= (and b!2808901 (not res!1169822)) b!2808902))

(declare-fun m!3238361 () Bool)

(assert (=> b!2808902 m!3238361))

(declare-fun m!3238363 () Bool)

(assert (=> b!2808904 m!3238363))

(declare-fun m!3238365 () Bool)

(assert (=> b!2808905 m!3238365))

(assert (=> b!2808879 d!815332))

(declare-fun b!2808938 () Bool)

(declare-fun res!1169833 () Bool)

(declare-fun e!1776282 () Bool)

(assert (=> b!2808938 (=> (not res!1169833) (not e!1776282))))

(declare-fun lt!1003581 () List!32884)

(declare-fun size!25558 (List!32884) Int)

(assert (=> b!2808938 (= res!1169833 (= (size!25558 lt!1003581) (+ (size!25558 (list!12273 (charsOf!3048 (h!38205 lt!1003577)))) (size!25558 (printList!1208 thiss!13843 (t!229613 lt!1003577))))))))

(declare-fun b!2808939 () Bool)

(assert (=> b!2808939 (= e!1776282 (or (not (= (printList!1208 thiss!13843 (t!229613 lt!1003577)) Nil!32784)) (= lt!1003581 (list!12273 (charsOf!3048 (h!38205 lt!1003577))))))))

(declare-fun b!2808937 () Bool)

(declare-fun e!1776281 () List!32884)

(assert (=> b!2808937 (= e!1776281 (Cons!32784 (h!38204 (list!12273 (charsOf!3048 (h!38205 lt!1003577)))) (++!8049 (t!229612 (list!12273 (charsOf!3048 (h!38205 lt!1003577)))) (printList!1208 thiss!13843 (t!229613 lt!1003577)))))))

(declare-fun b!2808936 () Bool)

(assert (=> b!2808936 (= e!1776281 (printList!1208 thiss!13843 (t!229613 lt!1003577)))))

(declare-fun d!815336 () Bool)

(assert (=> d!815336 e!1776282))

(declare-fun res!1169832 () Bool)

(assert (=> d!815336 (=> (not res!1169832) (not e!1776282))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4561 (List!32884) (InoxSet C!16716))

(assert (=> d!815336 (= res!1169832 (= (content!4561 lt!1003581) ((_ map or) (content!4561 (list!12273 (charsOf!3048 (h!38205 lt!1003577)))) (content!4561 (printList!1208 thiss!13843 (t!229613 lt!1003577))))))))

(assert (=> d!815336 (= lt!1003581 e!1776281)))

(declare-fun c!455000 () Bool)

(assert (=> d!815336 (= c!455000 ((_ is Nil!32784) (list!12273 (charsOf!3048 (h!38205 lt!1003577)))))))

(assert (=> d!815336 (= (++!8049 (list!12273 (charsOf!3048 (h!38205 lt!1003577))) (printList!1208 thiss!13843 (t!229613 lt!1003577))) lt!1003581)))

(assert (= (and d!815336 c!455000) b!2808936))

(assert (= (and d!815336 (not c!455000)) b!2808937))

(assert (= (and d!815336 res!1169832) b!2808938))

(assert (= (and b!2808938 res!1169833) b!2808939))

(declare-fun m!3238385 () Bool)

(assert (=> b!2808938 m!3238385))

(assert (=> b!2808938 m!3238351))

(declare-fun m!3238387 () Bool)

(assert (=> b!2808938 m!3238387))

(assert (=> b!2808938 m!3238353))

(declare-fun m!3238389 () Bool)

(assert (=> b!2808938 m!3238389))

(assert (=> b!2808937 m!3238353))

(declare-fun m!3238391 () Bool)

(assert (=> b!2808937 m!3238391))

(declare-fun m!3238393 () Bool)

(assert (=> d!815336 m!3238393))

(assert (=> d!815336 m!3238351))

(declare-fun m!3238395 () Bool)

(assert (=> d!815336 m!3238395))

(assert (=> d!815336 m!3238353))

(declare-fun m!3238397 () Bool)

(assert (=> d!815336 m!3238397))

(assert (=> b!2808878 d!815336))

(declare-fun d!815342 () Bool)

(declare-fun list!12275 (Conc!10148) List!32884)

(assert (=> d!815342 (= (list!12273 (charsOf!3048 (h!38205 lt!1003577))) (list!12275 (c!454984 (charsOf!3048 (h!38205 lt!1003577)))))))

(declare-fun bs!516309 () Bool)

(assert (= bs!516309 d!815342))

(declare-fun m!3238399 () Bool)

(assert (=> bs!516309 m!3238399))

(assert (=> b!2808878 d!815342))

(declare-fun d!815344 () Bool)

(declare-fun lt!1003586 () BalanceConc!19910)

(assert (=> d!815344 (= (list!12273 lt!1003586) (originalCharacters!5641 (h!38205 lt!1003577)))))

(declare-fun dynLambda!13725 (Int TokenValue!5131) BalanceConc!19910)

(assert (=> d!815344 (= lt!1003586 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 lt!1003577)))) (value!157816 (h!38205 lt!1003577))))))

(assert (=> d!815344 (= (charsOf!3048 (h!38205 lt!1003577)) lt!1003586)))

(declare-fun b_lambda!84029 () Bool)

(assert (=> (not b_lambda!84029) (not d!815344)))

(declare-fun tb!153461 () Bool)

(declare-fun t!229619 () Bool)

(assert (=> (and b!2808881 (= (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 lt!1003577))))) t!229619) tb!153461))

(declare-fun b!2808956 () Bool)

(declare-fun e!1776291 () Bool)

(declare-fun tp!896772 () Bool)

(declare-fun inv!44487 (Conc!10148) Bool)

(assert (=> b!2808956 (= e!1776291 (and (inv!44487 (c!454984 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 lt!1003577)))) (value!157816 (h!38205 lt!1003577))))) tp!896772))))

(declare-fun result!190734 () Bool)

(declare-fun inv!44488 (BalanceConc!19910) Bool)

(assert (=> tb!153461 (= result!190734 (and (inv!44488 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 lt!1003577)))) (value!157816 (h!38205 lt!1003577)))) e!1776291))))

(assert (= tb!153461 b!2808956))

(declare-fun m!3238415 () Bool)

(assert (=> b!2808956 m!3238415))

(declare-fun m!3238417 () Bool)

(assert (=> tb!153461 m!3238417))

(assert (=> d!815344 t!229619))

(declare-fun b_and!205243 () Bool)

(assert (= b_and!205233 (and (=> t!229619 result!190734) b_and!205243)))

(declare-fun tb!153463 () Bool)

(declare-fun t!229621 () Bool)

(assert (=> (and b!2808884 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 lt!1003577))))) t!229621) tb!153463))

(declare-fun result!190738 () Bool)

(assert (= result!190738 result!190734))

(assert (=> d!815344 t!229621))

(declare-fun b_and!205245 () Bool)

(assert (= b_and!205237 (and (=> t!229621 result!190738) b_and!205245)))

(declare-fun m!3238419 () Bool)

(assert (=> d!815344 m!3238419))

(declare-fun m!3238421 () Bool)

(assert (=> d!815344 m!3238421))

(assert (=> b!2808878 d!815344))

(declare-fun d!815348 () Bool)

(declare-fun c!455006 () Bool)

(assert (=> d!815348 (= c!455006 ((_ is Cons!32785) (t!229613 lt!1003577)))))

(declare-fun e!1776295 () List!32884)

(assert (=> d!815348 (= (printList!1208 thiss!13843 (t!229613 lt!1003577)) e!1776295)))

(declare-fun b!2808962 () Bool)

(assert (=> b!2808962 (= e!1776295 (++!8049 (list!12273 (charsOf!3048 (h!38205 (t!229613 lt!1003577)))) (printList!1208 thiss!13843 (t!229613 (t!229613 lt!1003577)))))))

(declare-fun b!2808963 () Bool)

(assert (=> b!2808963 (= e!1776295 Nil!32784)))

(assert (= (and d!815348 c!455006) b!2808962))

(assert (= (and d!815348 (not c!455006)) b!2808963))

(declare-fun m!3238433 () Bool)

(assert (=> b!2808962 m!3238433))

(assert (=> b!2808962 m!3238433))

(declare-fun m!3238435 () Bool)

(assert (=> b!2808962 m!3238435))

(declare-fun m!3238437 () Bool)

(assert (=> b!2808962 m!3238437))

(assert (=> b!2808962 m!3238435))

(assert (=> b!2808962 m!3238437))

(declare-fun m!3238439 () Bool)

(assert (=> b!2808962 m!3238439))

(assert (=> b!2808878 d!815348))

(declare-fun b!2808964 () Bool)

(declare-fun res!1169840 () Bool)

(declare-fun e!1776298 () Bool)

(assert (=> b!2808964 (=> res!1169840 e!1776298)))

(assert (=> b!2808964 (= res!1169840 (not ((_ is IntegerValue!15395) (value!157816 (h!38205 l!4240)))))))

(declare-fun e!1776297 () Bool)

(assert (=> b!2808964 (= e!1776297 e!1776298)))

(declare-fun b!2808965 () Bool)

(assert (=> b!2808965 (= e!1776298 (inv!15 (value!157816 (h!38205 l!4240))))))

(declare-fun d!815354 () Bool)

(declare-fun c!455008 () Bool)

(assert (=> d!815354 (= c!455008 ((_ is IntegerValue!15393) (value!157816 (h!38205 l!4240))))))

(declare-fun e!1776296 () Bool)

(assert (=> d!815354 (= (inv!21 (value!157816 (h!38205 l!4240))) e!1776296)))

(declare-fun b!2808966 () Bool)

(assert (=> b!2808966 (= e!1776296 e!1776297)))

(declare-fun c!455007 () Bool)

(assert (=> b!2808966 (= c!455007 ((_ is IntegerValue!15394) (value!157816 (h!38205 l!4240))))))

(declare-fun b!2808967 () Bool)

(assert (=> b!2808967 (= e!1776297 (inv!17 (value!157816 (h!38205 l!4240))))))

(declare-fun b!2808968 () Bool)

(assert (=> b!2808968 (= e!1776296 (inv!16 (value!157816 (h!38205 l!4240))))))

(assert (= (and d!815354 c!455008) b!2808968))

(assert (= (and d!815354 (not c!455008)) b!2808966))

(assert (= (and b!2808966 c!455007) b!2808967))

(assert (= (and b!2808966 (not c!455007)) b!2808964))

(assert (= (and b!2808964 (not res!1169840)) b!2808965))

(declare-fun m!3238441 () Bool)

(assert (=> b!2808965 m!3238441))

(declare-fun m!3238443 () Bool)

(assert (=> b!2808967 m!3238443))

(declare-fun m!3238445 () Bool)

(assert (=> b!2808968 m!3238445))

(assert (=> b!2808883 d!815354))

(declare-fun d!815356 () Bool)

(assert (=> d!815356 (= ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 l!4240) separatorToken!99) separatorToken!99) (Cons!32785 separatorToken!99 (withSeparatorTokenList!144 thiss!13843 (t!229613 l!4240) separatorToken!99)))))

(assert (=> b!2808877 d!815356))

(declare-fun d!815358 () Bool)

(declare-fun c!455011 () Bool)

(assert (=> d!815358 (= c!455011 ((_ is Cons!32785) lt!1003577))))

(declare-fun e!1776301 () List!32884)

(assert (=> d!815358 (= (printList!1208 thiss!13843 lt!1003577) e!1776301)))

(declare-fun b!2808973 () Bool)

(assert (=> b!2808973 (= e!1776301 (++!8049 (list!12273 (charsOf!3048 (h!38205 lt!1003577))) (printList!1208 thiss!13843 (t!229613 lt!1003577))))))

(declare-fun b!2808974 () Bool)

(assert (=> b!2808974 (= e!1776301 Nil!32784)))

(assert (= (and d!815358 c!455011) b!2808973))

(assert (= (and d!815358 (not c!455011)) b!2808974))

(assert (=> b!2808973 m!3238349))

(assert (=> b!2808973 m!3238349))

(assert (=> b!2808973 m!3238351))

(assert (=> b!2808973 m!3238353))

(assert (=> b!2808973 m!3238351))

(assert (=> b!2808973 m!3238353))

(assert (=> b!2808973 m!3238355))

(assert (=> b!2808877 d!815358))

(declare-fun d!815360 () Bool)

(declare-fun lt!1003593 () Int)

(assert (=> d!815360 (>= lt!1003593 0)))

(declare-fun e!1776307 () Int)

(assert (=> d!815360 (= lt!1003593 e!1776307)))

(declare-fun c!455015 () Bool)

(assert (=> d!815360 (= c!455015 ((_ is Nil!32785) l!4240))))

(assert (=> d!815360 (= (ListPrimitiveSize!209 l!4240) lt!1003593)))

(declare-fun b!2808984 () Bool)

(assert (=> b!2808984 (= e!1776307 0)))

(declare-fun b!2808985 () Bool)

(assert (=> b!2808985 (= e!1776307 (+ 1 (ListPrimitiveSize!209 (t!229613 l!4240))))))

(assert (= (and d!815360 c!455015) b!2808984))

(assert (= (and d!815360 (not c!455015)) b!2808985))

(assert (=> b!2808985 m!3238341))

(assert (=> b!2808877 d!815360))

(declare-fun d!815366 () Bool)

(declare-fun lt!1003594 () Int)

(assert (=> d!815366 (>= lt!1003594 0)))

(declare-fun e!1776308 () Int)

(assert (=> d!815366 (= lt!1003594 e!1776308)))

(declare-fun c!455016 () Bool)

(assert (=> d!815366 (= c!455016 ((_ is Nil!32785) (t!229613 l!4240)))))

(assert (=> d!815366 (= (ListPrimitiveSize!209 (t!229613 l!4240)) lt!1003594)))

(declare-fun b!2808986 () Bool)

(assert (=> b!2808986 (= e!1776308 0)))

(declare-fun b!2808987 () Bool)

(assert (=> b!2808987 (= e!1776308 (+ 1 (ListPrimitiveSize!209 (t!229613 (t!229613 l!4240)))))))

(assert (= (and d!815366 c!455016) b!2808986))

(assert (= (and d!815366 (not c!455016)) b!2808987))

(declare-fun m!3238467 () Bool)

(assert (=> b!2808987 m!3238467))

(assert (=> b!2808877 d!815366))

(declare-fun d!815370 () Bool)

(assert (=> d!815370 (= ($colon$colon!556 ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 l!4240) separatorToken!99) separatorToken!99) (h!38205 l!4240)) (Cons!32785 (h!38205 l!4240) ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 l!4240) separatorToken!99) separatorToken!99)))))

(assert (=> b!2808877 d!815370))

(declare-fun b!2809055 () Bool)

(declare-fun e!1776353 () List!32884)

(assert (=> b!2809055 (= e!1776353 Nil!32784)))

(declare-fun b!2809056 () Bool)

(declare-fun e!1776351 () List!32884)

(assert (=> b!2809056 (= e!1776351 Nil!32784)))

(declare-fun b!2809057 () Bool)

(declare-fun lt!1003642 () List!32885)

(assert (=> b!2809057 (= e!1776351 (++!8049 (list!12273 (charsOf!3048 (h!38205 lt!1003642))) (printList!1208 thiss!13843 (t!229613 lt!1003642))))))

(declare-fun b!2809058 () Bool)

(declare-fun res!1169871 () Bool)

(declare-fun e!1776352 () Bool)

(assert (=> b!2809058 (=> (not res!1169871) (not e!1776352))))

(declare-fun e!1776350 () Bool)

(assert (=> b!2809058 (= res!1169871 e!1776350)))

(declare-fun res!1169868 () Bool)

(assert (=> b!2809058 (=> res!1169868 e!1776350)))

(assert (=> b!2809058 (= res!1169868 (not ((_ is Cons!32785) (t!229613 l!4240))))))

(declare-fun b!2809059 () Bool)

(assert (=> b!2809059 (= e!1776350 (= (printList!1208 thiss!13843 ($colon$colon!556 ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 (t!229613 l!4240)) separatorToken!99) separatorToken!99) (h!38205 (t!229613 l!4240)))) e!1776351))))

(declare-fun c!455040 () Bool)

(assert (=> b!2809059 (= c!455040 ((_ is Cons!32785) lt!1003642))))

(assert (=> b!2809059 (= lt!1003642 ($colon$colon!556 ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 (t!229613 l!4240)) separatorToken!99) separatorToken!99) (h!38205 (t!229613 l!4240))))))

(declare-fun e!1776355 () Bool)

(declare-fun b!2809060 () Bool)

(assert (=> b!2809060 (= e!1776355 (= (printList!1208 thiss!13843 ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 (t!229613 l!4240)) separatorToken!99) separatorToken!99)) e!1776353))))

(declare-fun c!455038 () Bool)

(declare-fun lt!1003640 () List!32885)

(assert (=> b!2809060 (= c!455038 ((_ is Cons!32785) lt!1003640))))

(assert (=> b!2809060 (= lt!1003640 ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 (t!229613 l!4240)) separatorToken!99) separatorToken!99))))

(declare-fun b!2809061 () Bool)

(assert (=> b!2809061 (= e!1776353 (++!8049 (list!12273 (charsOf!3048 (h!38205 lt!1003640))) (printList!1208 thiss!13843 (t!229613 lt!1003640))))))

(declare-fun b!2809062 () Bool)

(declare-fun e!1776354 () List!32885)

(assert (=> b!2809062 (= e!1776354 ($colon$colon!556 ($colon$colon!556 (withSeparatorTokenList!144 thiss!13843 (t!229613 (t!229613 l!4240)) separatorToken!99) separatorToken!99) (h!38205 (t!229613 l!4240))))))

(declare-fun lt!1003644 () List!32884)

(assert (=> b!2809062 (= lt!1003644 (list!12273 (charsOf!3048 (h!38205 (t!229613 l!4240)))))))

(declare-fun lt!1003639 () List!32884)

(assert (=> b!2809062 (= lt!1003639 (list!12273 (charsOf!3048 separatorToken!99)))))

(declare-fun lt!1003645 () List!32884)

(assert (=> b!2809062 (= lt!1003645 (printList!1208 thiss!13843 (withSeparatorTokenList!144 thiss!13843 (t!229613 (t!229613 l!4240)) separatorToken!99)))))

(declare-datatypes ((Unit!46810 0))(
  ( (Unit!46811) )
))
(declare-fun lt!1003643 () Unit!46810)

(declare-fun lemmaConcatAssociativity!1659 (List!32884 List!32884 List!32884) Unit!46810)

(assert (=> b!2809062 (= lt!1003643 (lemmaConcatAssociativity!1659 lt!1003644 lt!1003639 lt!1003645))))

(assert (=> b!2809062 (= (++!8049 (++!8049 lt!1003644 lt!1003639) lt!1003645) (++!8049 lt!1003644 (++!8049 lt!1003639 lt!1003645)))))

(declare-fun lt!1003646 () Unit!46810)

(assert (=> b!2809062 (= lt!1003646 lt!1003643)))

(declare-fun b!2809064 () Bool)

(assert (=> b!2809064 (= e!1776352 e!1776355)))

(declare-fun res!1169870 () Bool)

(assert (=> b!2809064 (=> res!1169870 e!1776355)))

(assert (=> b!2809064 (= res!1169870 (not ((_ is Cons!32785) (t!229613 l!4240))))))

(declare-fun b!2809063 () Bool)

(assert (=> b!2809063 (= e!1776354 Nil!32785)))

(declare-fun d!815372 () Bool)

(declare-fun lt!1003641 () List!32885)

(declare-fun printWithSeparatorTokenList!77 (LexerInterface!4500 List!32885 Token!9220) List!32884)

(assert (=> d!815372 (= (printList!1208 thiss!13843 lt!1003641) (printWithSeparatorTokenList!77 thiss!13843 (t!229613 l!4240) separatorToken!99))))

(assert (=> d!815372 (= lt!1003641 e!1776354)))

(declare-fun c!455039 () Bool)

(assert (=> d!815372 (= c!455039 ((_ is Cons!32785) (t!229613 l!4240)))))

(assert (=> d!815372 e!1776352))

(declare-fun res!1169869 () Bool)

(assert (=> d!815372 (=> (not res!1169869) (not e!1776352))))

(assert (=> d!815372 (= res!1169869 (isSeparator!4909 (rule!7337 separatorToken!99)))))

(assert (=> d!815372 (= (withSeparatorTokenList!144 thiss!13843 (t!229613 l!4240) separatorToken!99) lt!1003641)))

(assert (= (and d!815372 res!1169869) b!2809058))

(assert (= (and b!2809058 (not res!1169868)) b!2809059))

(assert (= (and b!2809059 c!455040) b!2809057))

(assert (= (and b!2809059 (not c!455040)) b!2809056))

(assert (= (and b!2809058 res!1169871) b!2809064))

(assert (= (and b!2809064 (not res!1169870)) b!2809060))

(assert (= (and b!2809060 c!455038) b!2809061))

(assert (= (and b!2809060 (not c!455038)) b!2809055))

(assert (= (and d!815372 c!455039) b!2809062))

(assert (= (and d!815372 (not c!455039)) b!2809063))

(declare-fun m!3238535 () Bool)

(assert (=> b!2809060 m!3238535))

(assert (=> b!2809060 m!3238535))

(declare-fun m!3238537 () Bool)

(assert (=> b!2809060 m!3238537))

(assert (=> b!2809060 m!3238537))

(declare-fun m!3238539 () Bool)

(assert (=> b!2809060 m!3238539))

(assert (=> b!2809062 m!3238535))

(declare-fun m!3238541 () Bool)

(assert (=> b!2809062 m!3238541))

(declare-fun m!3238543 () Bool)

(assert (=> b!2809062 m!3238543))

(declare-fun m!3238545 () Bool)

(assert (=> b!2809062 m!3238545))

(declare-fun m!3238547 () Bool)

(assert (=> b!2809062 m!3238547))

(declare-fun m!3238549 () Bool)

(assert (=> b!2809062 m!3238549))

(declare-fun m!3238551 () Bool)

(assert (=> b!2809062 m!3238551))

(assert (=> b!2809062 m!3238543))

(declare-fun m!3238553 () Bool)

(assert (=> b!2809062 m!3238553))

(assert (=> b!2809062 m!3238535))

(assert (=> b!2809062 m!3238547))

(declare-fun m!3238555 () Bool)

(assert (=> b!2809062 m!3238555))

(declare-fun m!3238557 () Bool)

(assert (=> b!2809062 m!3238557))

(declare-fun m!3238559 () Bool)

(assert (=> b!2809062 m!3238559))

(assert (=> b!2809062 m!3238549))

(assert (=> b!2809062 m!3238535))

(assert (=> b!2809062 m!3238537))

(assert (=> b!2809062 m!3238537))

(declare-fun m!3238561 () Bool)

(assert (=> b!2809062 m!3238561))

(assert (=> b!2809062 m!3238557))

(declare-fun m!3238563 () Bool)

(assert (=> b!2809061 m!3238563))

(assert (=> b!2809061 m!3238563))

(declare-fun m!3238565 () Bool)

(assert (=> b!2809061 m!3238565))

(declare-fun m!3238567 () Bool)

(assert (=> b!2809061 m!3238567))

(assert (=> b!2809061 m!3238565))

(assert (=> b!2809061 m!3238567))

(declare-fun m!3238569 () Bool)

(assert (=> b!2809061 m!3238569))

(declare-fun m!3238571 () Bool)

(assert (=> d!815372 m!3238571))

(declare-fun m!3238573 () Bool)

(assert (=> d!815372 m!3238573))

(assert (=> b!2809059 m!3238535))

(assert (=> b!2809059 m!3238535))

(assert (=> b!2809059 m!3238537))

(assert (=> b!2809059 m!3238537))

(assert (=> b!2809059 m!3238561))

(assert (=> b!2809059 m!3238561))

(declare-fun m!3238575 () Bool)

(assert (=> b!2809059 m!3238575))

(declare-fun m!3238577 () Bool)

(assert (=> b!2809057 m!3238577))

(assert (=> b!2809057 m!3238577))

(declare-fun m!3238579 () Bool)

(assert (=> b!2809057 m!3238579))

(declare-fun m!3238581 () Bool)

(assert (=> b!2809057 m!3238581))

(assert (=> b!2809057 m!3238579))

(assert (=> b!2809057 m!3238581))

(declare-fun m!3238583 () Bool)

(assert (=> b!2809057 m!3238583))

(assert (=> b!2808877 d!815372))

(declare-fun d!815392 () Bool)

(assert (=> d!815392 (= (inv!44480 (tag!5413 (rule!7337 (h!38205 l!4240)))) (= (mod (str.len (value!157815 (tag!5413 (rule!7337 (h!38205 l!4240))))) 2) 0))))

(assert (=> b!2808886 d!815392))

(declare-fun d!815394 () Bool)

(declare-fun res!1169874 () Bool)

(declare-fun e!1776385 () Bool)

(assert (=> d!815394 (=> (not res!1169874) (not e!1776385))))

(declare-fun semiInverseModEq!2028 (Int Int) Bool)

(assert (=> d!815394 (= res!1169874 (semiInverseModEq!2028 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (toValue!6911 (transformation!4909 (rule!7337 (h!38205 l!4240))))))))

(assert (=> d!815394 (= (inv!44483 (transformation!4909 (rule!7337 (h!38205 l!4240)))) e!1776385)))

(declare-fun b!2809107 () Bool)

(declare-fun equivClasses!1929 (Int Int) Bool)

(assert (=> b!2809107 (= e!1776385 (equivClasses!1929 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (toValue!6911 (transformation!4909 (rule!7337 (h!38205 l!4240))))))))

(assert (= (and d!815394 res!1169874) b!2809107))

(declare-fun m!3238593 () Bool)

(assert (=> d!815394 m!3238593))

(declare-fun m!3238595 () Bool)

(assert (=> b!2809107 m!3238595))

(assert (=> b!2808886 d!815394))

(declare-fun d!815396 () Bool)

(assert (=> d!815396 (= (inv!44480 (tag!5413 (rule!7337 separatorToken!99))) (= (mod (str.len (value!157815 (tag!5413 (rule!7337 separatorToken!99)))) 2) 0))))

(assert (=> b!2808880 d!815396))

(declare-fun d!815398 () Bool)

(declare-fun res!1169875 () Bool)

(declare-fun e!1776386 () Bool)

(assert (=> d!815398 (=> (not res!1169875) (not e!1776386))))

(assert (=> d!815398 (= res!1169875 (semiInverseModEq!2028 (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (toValue!6911 (transformation!4909 (rule!7337 separatorToken!99)))))))

(assert (=> d!815398 (= (inv!44483 (transformation!4909 (rule!7337 separatorToken!99))) e!1776386)))

(declare-fun b!2809108 () Bool)

(assert (=> b!2809108 (= e!1776386 (equivClasses!1929 (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (toValue!6911 (transformation!4909 (rule!7337 separatorToken!99)))))))

(assert (= (and d!815398 res!1169875) b!2809108))

(declare-fun m!3238597 () Bool)

(assert (=> d!815398 m!3238597))

(declare-fun m!3238599 () Bool)

(assert (=> b!2809108 m!3238599))

(assert (=> b!2808880 d!815398))

(declare-fun d!815400 () Bool)

(declare-fun res!1169880 () Bool)

(declare-fun e!1776389 () Bool)

(assert (=> d!815400 (=> (not res!1169880) (not e!1776389))))

(declare-fun isEmpty!18208 (List!32884) Bool)

(assert (=> d!815400 (= res!1169880 (not (isEmpty!18208 (originalCharacters!5641 separatorToken!99))))))

(assert (=> d!815400 (= (inv!44484 separatorToken!99) e!1776389)))

(declare-fun b!2809113 () Bool)

(declare-fun res!1169881 () Bool)

(assert (=> b!2809113 (=> (not res!1169881) (not e!1776389))))

(assert (=> b!2809113 (= res!1169881 (= (originalCharacters!5641 separatorToken!99) (list!12273 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (value!157816 separatorToken!99)))))))

(declare-fun b!2809114 () Bool)

(assert (=> b!2809114 (= e!1776389 (= (size!25556 separatorToken!99) (size!25558 (originalCharacters!5641 separatorToken!99))))))

(assert (= (and d!815400 res!1169880) b!2809113))

(assert (= (and b!2809113 res!1169881) b!2809114))

(declare-fun b_lambda!84039 () Bool)

(assert (=> (not b_lambda!84039) (not b!2809113)))

(declare-fun t!229639 () Bool)

(declare-fun tb!153479 () Bool)

(assert (=> (and b!2808881 (= (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99)))) t!229639) tb!153479))

(declare-fun b!2809115 () Bool)

(declare-fun e!1776390 () Bool)

(declare-fun tp!896814 () Bool)

(assert (=> b!2809115 (= e!1776390 (and (inv!44487 (c!454984 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (value!157816 separatorToken!99)))) tp!896814))))

(declare-fun result!190760 () Bool)

(assert (=> tb!153479 (= result!190760 (and (inv!44488 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (value!157816 separatorToken!99))) e!1776390))))

(assert (= tb!153479 b!2809115))

(declare-fun m!3238601 () Bool)

(assert (=> b!2809115 m!3238601))

(declare-fun m!3238603 () Bool)

(assert (=> tb!153479 m!3238603))

(assert (=> b!2809113 t!229639))

(declare-fun b_and!205259 () Bool)

(assert (= b_and!205243 (and (=> t!229639 result!190760) b_and!205259)))

(declare-fun t!229641 () Bool)

(declare-fun tb!153481 () Bool)

(assert (=> (and b!2808884 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99)))) t!229641) tb!153481))

(declare-fun result!190762 () Bool)

(assert (= result!190762 result!190760))

(assert (=> b!2809113 t!229641))

(declare-fun b_and!205261 () Bool)

(assert (= b_and!205245 (and (=> t!229641 result!190762) b_and!205261)))

(declare-fun m!3238605 () Bool)

(assert (=> d!815400 m!3238605))

(declare-fun m!3238607 () Bool)

(assert (=> b!2809113 m!3238607))

(assert (=> b!2809113 m!3238607))

(declare-fun m!3238609 () Bool)

(assert (=> b!2809113 m!3238609))

(declare-fun m!3238611 () Bool)

(assert (=> b!2809114 m!3238611))

(assert (=> start!271728 d!815400))

(declare-fun d!815402 () Bool)

(declare-fun res!1169882 () Bool)

(declare-fun e!1776391 () Bool)

(assert (=> d!815402 (=> (not res!1169882) (not e!1776391))))

(assert (=> d!815402 (= res!1169882 (not (isEmpty!18208 (originalCharacters!5641 (h!38205 l!4240)))))))

(assert (=> d!815402 (= (inv!44484 (h!38205 l!4240)) e!1776391)))

(declare-fun b!2809116 () Bool)

(declare-fun res!1169883 () Bool)

(assert (=> b!2809116 (=> (not res!1169883) (not e!1776391))))

(assert (=> b!2809116 (= res!1169883 (= (originalCharacters!5641 (h!38205 l!4240)) (list!12273 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (value!157816 (h!38205 l!4240))))))))

(declare-fun b!2809117 () Bool)

(assert (=> b!2809117 (= e!1776391 (= (size!25556 (h!38205 l!4240)) (size!25558 (originalCharacters!5641 (h!38205 l!4240)))))))

(assert (= (and d!815402 res!1169882) b!2809116))

(assert (= (and b!2809116 res!1169883) b!2809117))

(declare-fun b_lambda!84041 () Bool)

(assert (=> (not b_lambda!84041) (not b!2809116)))

(declare-fun t!229643 () Bool)

(declare-fun tb!153483 () Bool)

(assert (=> (and b!2808881 (= (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240))))) t!229643) tb!153483))

(declare-fun b!2809118 () Bool)

(declare-fun e!1776392 () Bool)

(declare-fun tp!896815 () Bool)

(assert (=> b!2809118 (= e!1776392 (and (inv!44487 (c!454984 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (value!157816 (h!38205 l!4240))))) tp!896815))))

(declare-fun result!190764 () Bool)

(assert (=> tb!153483 (= result!190764 (and (inv!44488 (dynLambda!13725 (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (value!157816 (h!38205 l!4240)))) e!1776392))))

(assert (= tb!153483 b!2809118))

(declare-fun m!3238613 () Bool)

(assert (=> b!2809118 m!3238613))

(declare-fun m!3238615 () Bool)

(assert (=> tb!153483 m!3238615))

(assert (=> b!2809116 t!229643))

(declare-fun b_and!205263 () Bool)

(assert (= b_and!205259 (and (=> t!229643 result!190764) b_and!205263)))

(declare-fun t!229645 () Bool)

(declare-fun tb!153485 () Bool)

(assert (=> (and b!2808884 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240))))) t!229645) tb!153485))

(declare-fun result!190766 () Bool)

(assert (= result!190766 result!190764))

(assert (=> b!2809116 t!229645))

(declare-fun b_and!205265 () Bool)

(assert (= b_and!205261 (and (=> t!229645 result!190766) b_and!205265)))

(declare-fun m!3238617 () Bool)

(assert (=> d!815402 m!3238617))

(declare-fun m!3238619 () Bool)

(assert (=> b!2809116 m!3238619))

(assert (=> b!2809116 m!3238619))

(declare-fun m!3238621 () Bool)

(assert (=> b!2809116 m!3238621))

(declare-fun m!3238623 () Bool)

(assert (=> b!2809117 m!3238623))

(assert (=> b!2808885 d!815402))

(declare-fun b!2809123 () Bool)

(declare-fun e!1776395 () Bool)

(declare-fun tp_is_empty!14323 () Bool)

(declare-fun tp!896818 () Bool)

(assert (=> b!2809123 (= e!1776395 (and tp_is_empty!14323 tp!896818))))

(assert (=> b!2808879 (= tp!896762 e!1776395)))

(assert (= (and b!2808879 ((_ is Cons!32784) (originalCharacters!5641 separatorToken!99))) b!2809123))

(declare-fun b!2809124 () Bool)

(declare-fun e!1776396 () Bool)

(declare-fun tp!896819 () Bool)

(assert (=> b!2809124 (= e!1776396 (and tp_is_empty!14323 tp!896819))))

(assert (=> b!2808883 (= tp!896759 e!1776396)))

(assert (= (and b!2808883 ((_ is Cons!32784) (originalCharacters!5641 (h!38205 l!4240)))) b!2809124))

(declare-fun e!1776399 () Bool)

(assert (=> b!2808886 (= tp!896766 e!1776399)))

(declare-fun b!2809138 () Bool)

(declare-fun tp!896832 () Bool)

(declare-fun tp!896831 () Bool)

(assert (=> b!2809138 (= e!1776399 (and tp!896832 tp!896831))))

(declare-fun b!2809135 () Bool)

(assert (=> b!2809135 (= e!1776399 tp_is_empty!14323)))

(declare-fun b!2809136 () Bool)

(declare-fun tp!896834 () Bool)

(declare-fun tp!896833 () Bool)

(assert (=> b!2809136 (= e!1776399 (and tp!896834 tp!896833))))

(declare-fun b!2809137 () Bool)

(declare-fun tp!896830 () Bool)

(assert (=> b!2809137 (= e!1776399 tp!896830)))

(assert (= (and b!2808886 ((_ is ElementMatch!8279) (regex!4909 (rule!7337 (h!38205 l!4240))))) b!2809135))

(assert (= (and b!2808886 ((_ is Concat!13411) (regex!4909 (rule!7337 (h!38205 l!4240))))) b!2809136))

(assert (= (and b!2808886 ((_ is Star!8279) (regex!4909 (rule!7337 (h!38205 l!4240))))) b!2809137))

(assert (= (and b!2808886 ((_ is Union!8279) (regex!4909 (rule!7337 (h!38205 l!4240))))) b!2809138))

(declare-fun e!1776400 () Bool)

(assert (=> b!2808880 (= tp!896765 e!1776400)))

(declare-fun b!2809142 () Bool)

(declare-fun tp!896837 () Bool)

(declare-fun tp!896836 () Bool)

(assert (=> b!2809142 (= e!1776400 (and tp!896837 tp!896836))))

(declare-fun b!2809139 () Bool)

(assert (=> b!2809139 (= e!1776400 tp_is_empty!14323)))

(declare-fun b!2809140 () Bool)

(declare-fun tp!896839 () Bool)

(declare-fun tp!896838 () Bool)

(assert (=> b!2809140 (= e!1776400 (and tp!896839 tp!896838))))

(declare-fun b!2809141 () Bool)

(declare-fun tp!896835 () Bool)

(assert (=> b!2809141 (= e!1776400 tp!896835)))

(assert (= (and b!2808880 ((_ is ElementMatch!8279) (regex!4909 (rule!7337 separatorToken!99)))) b!2809139))

(assert (= (and b!2808880 ((_ is Concat!13411) (regex!4909 (rule!7337 separatorToken!99)))) b!2809140))

(assert (= (and b!2808880 ((_ is Star!8279) (regex!4909 (rule!7337 separatorToken!99)))) b!2809141))

(assert (= (and b!2808880 ((_ is Union!8279) (regex!4909 (rule!7337 separatorToken!99)))) b!2809142))

(declare-fun b!2809156 () Bool)

(declare-fun b_free!80145 () Bool)

(declare-fun b_next!80849 () Bool)

(assert (=> b!2809156 (= b_free!80145 (not b_next!80849))))

(declare-fun tp!896853 () Bool)

(declare-fun b_and!205267 () Bool)

(assert (=> b!2809156 (= tp!896853 b_and!205267)))

(declare-fun b_free!80147 () Bool)

(declare-fun b_next!80851 () Bool)

(assert (=> b!2809156 (= b_free!80147 (not b_next!80851))))

(declare-fun t!229647 () Bool)

(declare-fun tb!153487 () Bool)

(assert (=> (and b!2809156 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 (t!229613 l!4240))))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 lt!1003577))))) t!229647) tb!153487))

(declare-fun result!190774 () Bool)

(assert (= result!190774 result!190734))

(assert (=> d!815344 t!229647))

(declare-fun t!229649 () Bool)

(declare-fun tb!153489 () Bool)

(assert (=> (and b!2809156 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 (t!229613 l!4240))))) (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99)))) t!229649) tb!153489))

(declare-fun result!190776 () Bool)

(assert (= result!190776 result!190760))

(assert (=> b!2809113 t!229649))

(declare-fun t!229651 () Bool)

(declare-fun tb!153491 () Bool)

(assert (=> (and b!2809156 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 (t!229613 l!4240))))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240))))) t!229651) tb!153491))

(declare-fun result!190778 () Bool)

(assert (= result!190778 result!190764))

(assert (=> b!2809116 t!229651))

(declare-fun b_and!205269 () Bool)

(declare-fun tp!896854 () Bool)

(assert (=> b!2809156 (= tp!896854 (and (=> t!229647 result!190774) (=> t!229649 result!190776) (=> t!229651 result!190778) b_and!205269))))

(declare-fun e!1776413 () Bool)

(assert (=> b!2809156 (= e!1776413 (and tp!896853 tp!896854))))

(declare-fun tp!896850 () Bool)

(declare-fun e!1776418 () Bool)

(declare-fun b!2809153 () Bool)

(declare-fun e!1776417 () Bool)

(assert (=> b!2809153 (= e!1776417 (and (inv!44484 (h!38205 (t!229613 l!4240))) e!1776418 tp!896850))))

(assert (=> b!2808885 (= tp!896761 e!1776417)))

(declare-fun e!1776414 () Bool)

(declare-fun tp!896852 () Bool)

(declare-fun b!2809154 () Bool)

(assert (=> b!2809154 (= e!1776418 (and (inv!21 (value!157816 (h!38205 (t!229613 l!4240)))) e!1776414 tp!896852))))

(declare-fun tp!896851 () Bool)

(declare-fun b!2809155 () Bool)

(assert (=> b!2809155 (= e!1776414 (and tp!896851 (inv!44480 (tag!5413 (rule!7337 (h!38205 (t!229613 l!4240))))) (inv!44483 (transformation!4909 (rule!7337 (h!38205 (t!229613 l!4240))))) e!1776413))))

(assert (= b!2809155 b!2809156))

(assert (= b!2809154 b!2809155))

(assert (= b!2809153 b!2809154))

(assert (= (and b!2808885 ((_ is Cons!32785) (t!229613 l!4240))) b!2809153))

(declare-fun m!3238625 () Bool)

(assert (=> b!2809153 m!3238625))

(declare-fun m!3238627 () Bool)

(assert (=> b!2809154 m!3238627))

(declare-fun m!3238629 () Bool)

(assert (=> b!2809155 m!3238629))

(declare-fun m!3238631 () Bool)

(assert (=> b!2809155 m!3238631))

(declare-fun b_lambda!84043 () Bool)

(assert (= b_lambda!84039 (or (and b!2808881 b_free!80135) (and b!2808884 b_free!80139 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))) (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))))) (and b!2809156 b_free!80147 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 (t!229613 l!4240))))) (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))))) b_lambda!84043)))

(declare-fun b_lambda!84045 () Bool)

(assert (= b_lambda!84041 (or (and b!2808881 b_free!80135 (= (toChars!6770 (transformation!4909 (rule!7337 separatorToken!99))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))))) (and b!2808884 b_free!80139) (and b!2809156 b_free!80147 (= (toChars!6770 (transformation!4909 (rule!7337 (h!38205 (t!229613 l!4240))))) (toChars!6770 (transformation!4909 (rule!7337 (h!38205 l!4240)))))) b_lambda!84045)))

(check-sat b_and!205267 (not d!815344) (not b_lambda!84029) (not b!2809116) (not b_lambda!84043) (not b!2809137) (not b!2809117) (not d!815398) (not d!815394) (not b!2809107) b_and!205265 (not b!2808956) (not tb!153483) (not b!2809118) (not b_lambda!84045) (not b!2809155) (not b!2809062) (not b!2809060) b_and!205263 (not b!2809114) (not b!2809154) (not b!2809059) (not b!2809113) b_and!205231 (not b!2809123) (not b!2809136) (not b!2808965) (not b!2809061) (not b!2809153) (not b!2809140) (not d!815336) (not b!2808962) (not b!2808987) (not b!2809142) (not d!815402) (not b!2808973) (not b!2808985) (not b!2809138) tp_is_empty!14323 (not b!2808904) (not b!2808905) (not b!2808938) (not d!815372) (not b_next!80841) (not b!2808967) (not b_next!80851) (not b!2809108) (not b_next!80837) (not d!815400) (not b!2809115) (not tb!153461) (not d!815342) (not b!2809057) (not b_next!80839) (not b_next!80843) b_and!205235 (not b!2808902) (not b!2809141) (not b_next!80849) (not b!2808968) (not b!2808937) (not b!2809124) (not tb!153479) b_and!205269)
(check-sat b_and!205265 b_and!205263 b_and!205267 b_and!205231 (not b_next!80841) (not b_next!80851) (not b_next!80837) (not b_next!80849) b_and!205269 (not b_next!80839) (not b_next!80843) b_and!205235)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25470 () Bool)

(assert start!25470)

(declare-fun b!238704 () Bool)

(declare-fun b_free!8841 () Bool)

(declare-fun b_next!8841 () Bool)

(assert (=> b!238704 (= b_free!8841 (not b_next!8841))))

(declare-fun tp!95045 () Bool)

(declare-fun b_and!17793 () Bool)

(assert (=> b!238704 (= tp!95045 b_and!17793)))

(declare-fun b_free!8843 () Bool)

(declare-fun b_next!8843 () Bool)

(assert (=> b!238704 (= b_free!8843 (not b_next!8843))))

(declare-fun tp!95042 () Bool)

(declare-fun b_and!17795 () Bool)

(assert (=> b!238704 (= tp!95042 b_and!17795)))

(declare-fun b!238700 () Bool)

(declare-fun b_free!8845 () Bool)

(declare-fun b_next!8845 () Bool)

(assert (=> b!238700 (= b_free!8845 (not b_next!8845))))

(declare-fun tp!95052 () Bool)

(declare-fun b_and!17797 () Bool)

(assert (=> b!238700 (= tp!95052 b_and!17797)))

(declare-fun b_free!8847 () Bool)

(declare-fun b_next!8847 () Bool)

(assert (=> b!238700 (= b_free!8847 (not b_next!8847))))

(declare-fun tp!95043 () Bool)

(declare-fun b_and!17799 () Bool)

(assert (=> b!238700 (= tp!95043 b_and!17799)))

(declare-fun b!238691 () Bool)

(declare-fun b_free!8849 () Bool)

(declare-fun b_next!8849 () Bool)

(assert (=> b!238691 (= b_free!8849 (not b_next!8849))))

(declare-fun tp!95053 () Bool)

(declare-fun b_and!17801 () Bool)

(assert (=> b!238691 (= tp!95053 b_and!17801)))

(declare-fun b_free!8851 () Bool)

(declare-fun b_next!8851 () Bool)

(assert (=> b!238691 (= b_free!8851 (not b_next!8851))))

(declare-fun tp!95041 () Bool)

(declare-fun b_and!17803 () Bool)

(assert (=> b!238691 (= tp!95041 b_and!17803)))

(declare-fun bs!25502 () Bool)

(declare-fun b!238707 () Bool)

(declare-fun b!238726 () Bool)

(assert (= bs!25502 (and b!238707 b!238726)))

(declare-fun lambda!7736 () Int)

(declare-fun lambda!7735 () Int)

(assert (=> bs!25502 (not (= lambda!7736 lambda!7735))))

(declare-fun b!238742 () Bool)

(declare-fun e!147823 () Bool)

(assert (=> b!238742 (= e!147823 true)))

(declare-fun b!238741 () Bool)

(declare-fun e!147822 () Bool)

(assert (=> b!238741 (= e!147822 e!147823)))

(declare-fun b!238740 () Bool)

(declare-fun e!147821 () Bool)

(assert (=> b!238740 (= e!147821 e!147822)))

(assert (=> b!238707 e!147821))

(assert (= b!238741 b!238742))

(assert (= b!238740 b!238741))

(declare-datatypes ((List!3543 0))(
  ( (Nil!3533) (Cons!3533 (h!8930 (_ BitVec 16)) (t!34369 List!3543)) )
))
(declare-datatypes ((TokenValue!687 0))(
  ( (FloatLiteralValue!1374 (text!5254 List!3543)) (TokenValueExt!686 (__x!2861 Int)) (Broken!3435 (value!23242 List!3543)) (Object!696) (End!687) (Def!687) (Underscore!687) (Match!687) (Else!687) (Error!687) (Case!687) (If!687) (Extends!687) (Abstract!687) (Class!687) (Val!687) (DelimiterValue!1374 (del!747 List!3543)) (KeywordValue!693 (value!23243 List!3543)) (CommentValue!1374 (value!23244 List!3543)) (WhitespaceValue!1374 (value!23245 List!3543)) (IndentationValue!687 (value!23246 List!3543)) (String!4514) (Int32!687) (Broken!3436 (value!23247 List!3543)) (Boolean!688) (Unit!4219) (OperatorValue!690 (op!747 List!3543)) (IdentifierValue!1374 (value!23248 List!3543)) (IdentifierValue!1375 (value!23249 List!3543)) (WhitespaceValue!1375 (value!23250 List!3543)) (True!1374) (False!1374) (Broken!3437 (value!23251 List!3543)) (Broken!3438 (value!23252 List!3543)) (True!1375) (RightBrace!687) (RightBracket!687) (Colon!687) (Null!687) (Comma!687) (LeftBracket!687) (False!1375) (LeftBrace!687) (ImaginaryLiteralValue!687 (text!5255 List!3543)) (StringLiteralValue!2061 (value!23253 List!3543)) (EOFValue!687 (value!23254 List!3543)) (IdentValue!687 (value!23255 List!3543)) (DelimiterValue!1375 (value!23256 List!3543)) (DedentValue!687 (value!23257 List!3543)) (NewLineValue!687 (value!23258 List!3543)) (IntegerValue!2061 (value!23259 (_ BitVec 32)) (text!5256 List!3543)) (IntegerValue!2062 (value!23260 Int) (text!5257 List!3543)) (Times!687) (Or!687) (Equal!687) (Minus!687) (Broken!3439 (value!23261 List!3543)) (And!687) (Div!687) (LessEqual!687) (Mod!687) (Concat!1576) (Not!687) (Plus!687) (SpaceValue!687 (value!23262 List!3543)) (IntegerValue!2063 (value!23263 Int) (text!5258 List!3543)) (StringLiteralValue!2062 (text!5259 List!3543)) (FloatLiteralValue!1375 (text!5260 List!3543)) (BytesLiteralValue!687 (value!23264 List!3543)) (CommentValue!1375 (value!23265 List!3543)) (StringLiteralValue!2063 (value!23266 List!3543)) (ErrorTokenValue!687 (msg!748 List!3543)) )
))
(declare-datatypes ((C!2700 0))(
  ( (C!2701 (val!1236 Int)) )
))
(declare-datatypes ((List!3544 0))(
  ( (Nil!3534) (Cons!3534 (h!8931 C!2700) (t!34370 List!3544)) )
))
(declare-datatypes ((IArray!2305 0))(
  ( (IArray!2306 (innerList!1210 List!3544)) )
))
(declare-datatypes ((Conc!1152 0))(
  ( (Node!1152 (left!2871 Conc!1152) (right!3201 Conc!1152) (csize!2534 Int) (cheight!1363 Int)) (Leaf!1824 (xs!3747 IArray!2305) (csize!2535 Int)) (Empty!1152) )
))
(declare-datatypes ((BalanceConc!2312 0))(
  ( (BalanceConc!2313 (c!45689 Conc!1152)) )
))
(declare-datatypes ((String!4515 0))(
  ( (String!4516 (value!23267 String)) )
))
(declare-datatypes ((TokenValueInjection!1146 0))(
  ( (TokenValueInjection!1147 (toValue!1364 Int) (toChars!1223 Int)) )
))
(declare-datatypes ((Regex!889 0))(
  ( (ElementMatch!889 (c!45690 C!2700)) (Concat!1577 (regOne!2290 Regex!889) (regTwo!2290 Regex!889)) (EmptyExpr!889) (Star!889 (reg!1218 Regex!889)) (EmptyLang!889) (Union!889 (regOne!2291 Regex!889) (regTwo!2291 Regex!889)) )
))
(declare-datatypes ((Rule!1130 0))(
  ( (Rule!1131 (regex!665 Regex!889) (tag!871 String!4515) (isSeparator!665 Bool) (transformation!665 TokenValueInjection!1146)) )
))
(declare-datatypes ((List!3545 0))(
  ( (Nil!3535) (Cons!3535 (h!8932 Rule!1130) (t!34371 List!3545)) )
))
(declare-fun rules!1920 () List!3545)

(get-info :version)

(assert (= (and b!238707 ((_ is Cons!3535) rules!1920)) b!238740))

(declare-fun order!2523 () Int)

(declare-fun order!2521 () Int)

(declare-fun dynLambda!1683 (Int Int) Int)

(declare-fun dynLambda!1684 (Int Int) Int)

(assert (=> b!238742 (< (dynLambda!1683 order!2521 (toValue!1364 (transformation!665 (h!8932 rules!1920)))) (dynLambda!1684 order!2523 lambda!7736))))

(declare-fun order!2525 () Int)

(declare-fun dynLambda!1685 (Int Int) Int)

(assert (=> b!238742 (< (dynLambda!1685 order!2525 (toChars!1223 (transformation!665 (h!8932 rules!1920)))) (dynLambda!1684 order!2523 lambda!7736))))

(assert (=> b!238707 true))

(declare-fun b!238681 () Bool)

(declare-fun res!110256 () Bool)

(declare-fun e!147814 () Bool)

(assert (=> b!238681 (=> (not res!110256) (not e!147814))))

(declare-datatypes ((Token!1074 0))(
  ( (Token!1075 (value!23268 TokenValue!687) (rule!1234 Rule!1130) (size!2832 Int) (originalCharacters!708 List!3544)) )
))
(declare-datatypes ((tuple2!3880 0))(
  ( (tuple2!3881 (_1!2156 Token!1074) (_2!2156 List!3544)) )
))
(declare-fun lt!95520 () tuple2!3880)

(declare-fun isEmpty!2108 (List!3544) Bool)

(assert (=> b!238681 (= res!110256 (isEmpty!2108 (_2!2156 lt!95520)))))

(declare-fun b!238682 () Bool)

(declare-datatypes ((Unit!4220 0))(
  ( (Unit!4221) )
))
(declare-fun e!147809 () Unit!4220)

(declare-fun Unit!4222 () Unit!4220)

(assert (=> b!238682 (= e!147809 Unit!4222)))

(assert (=> b!238682 false))

(declare-fun b!238683 () Bool)

(declare-fun res!110262 () Bool)

(declare-fun e!147797 () Bool)

(assert (=> b!238683 (=> (not res!110262) (not e!147797))))

(declare-datatypes ((List!3546 0))(
  ( (Nil!3536) (Cons!3536 (h!8933 Token!1074) (t!34372 List!3546)) )
))
(declare-datatypes ((IArray!2307 0))(
  ( (IArray!2308 (innerList!1211 List!3546)) )
))
(declare-datatypes ((Conc!1153 0))(
  ( (Node!1153 (left!2872 Conc!1153) (right!3202 Conc!1153) (csize!2536 Int) (cheight!1364 Int)) (Leaf!1825 (xs!3748 IArray!2307) (csize!2537 Int)) (Empty!1153) )
))
(declare-datatypes ((BalanceConc!2314 0))(
  ( (BalanceConc!2315 (c!45691 Conc!1153)) )
))
(declare-datatypes ((tuple2!3882 0))(
  ( (tuple2!3883 (_1!2157 BalanceConc!2314) (_2!2157 BalanceConc!2312)) )
))
(declare-fun lt!95524 () tuple2!3882)

(declare-fun separatorToken!170 () Token!1074)

(declare-fun apply!662 (BalanceConc!2314 Int) Token!1074)

(assert (=> b!238683 (= res!110262 (= (apply!662 (_1!2157 lt!95524) 0) separatorToken!170))))

(declare-fun b!238684 () Bool)

(declare-fun tokens!465 () List!3546)

(declare-fun lt!95497 () List!3544)

(declare-fun matchR!227 (Regex!889 List!3544) Bool)

(assert (=> b!238684 (= e!147814 (matchR!227 (regex!665 (rule!1234 (h!8933 tokens!465))) lt!95497))))

(declare-fun b!238685 () Bool)

(declare-fun isEmpty!2109 (BalanceConc!2312) Bool)

(assert (=> b!238685 (= e!147797 (isEmpty!2109 (_2!2157 lt!95524)))))

(declare-fun b!238686 () Bool)

(declare-fun res!110268 () Bool)

(declare-fun e!147790 () Bool)

(assert (=> b!238686 (=> (not res!110268) (not e!147790))))

(declare-fun isEmpty!2110 (List!3545) Bool)

(assert (=> b!238686 (= res!110268 (not (isEmpty!2110 rules!1920)))))

(declare-fun b!238687 () Bool)

(declare-fun e!147781 () Bool)

(declare-fun e!147779 () Bool)

(assert (=> b!238687 (= e!147781 (not e!147779))))

(declare-fun res!110269 () Bool)

(assert (=> b!238687 (=> res!110269 e!147779)))

(declare-fun lt!95493 () List!3544)

(declare-fun lt!95528 () BalanceConc!2312)

(declare-fun list!1384 (BalanceConc!2312) List!3544)

(assert (=> b!238687 (= res!110269 (not (= lt!95493 (list!1384 lt!95528))))))

(declare-datatypes ((LexerInterface!551 0))(
  ( (LexerInterfaceExt!548 (__x!2862 Int)) (Lexer!549) )
))
(declare-fun thiss!17480 () LexerInterface!551)

(declare-fun printWithSeparatorTokenWhenNeededRec!234 (LexerInterface!551 List!3545 BalanceConc!2314 Token!1074 Int) BalanceConc!2312)

(declare-fun seqFromList!707 (List!3546) BalanceConc!2314)

(assert (=> b!238687 (= lt!95528 (printWithSeparatorTokenWhenNeededRec!234 thiss!17480 rules!1920 (seqFromList!707 (t!34372 tokens!465)) separatorToken!170 0))))

(declare-fun lt!95480 () List!3544)

(declare-fun lt!95500 () List!3544)

(assert (=> b!238687 (= lt!95480 lt!95500)))

(declare-fun lt!95531 () List!3544)

(declare-fun ++!896 (List!3544 List!3544) List!3544)

(assert (=> b!238687 (= lt!95500 (++!896 lt!95497 lt!95531))))

(declare-fun lt!95525 () List!3544)

(assert (=> b!238687 (= lt!95480 (++!896 (++!896 lt!95497 lt!95525) lt!95493))))

(declare-fun lt!95507 () Unit!4220)

(declare-fun lemmaConcatAssociativity!368 (List!3544 List!3544 List!3544) Unit!4220)

(assert (=> b!238687 (= lt!95507 (lemmaConcatAssociativity!368 lt!95497 lt!95525 lt!95493))))

(declare-fun charsOf!320 (Token!1074) BalanceConc!2312)

(assert (=> b!238687 (= lt!95497 (list!1384 (charsOf!320 (h!8933 tokens!465))))))

(assert (=> b!238687 (= lt!95531 (++!896 lt!95525 lt!95493))))

(declare-fun printWithSeparatorTokenWhenNeededList!244 (LexerInterface!551 List!3545 List!3546 Token!1074) List!3544)

(assert (=> b!238687 (= lt!95493 (printWithSeparatorTokenWhenNeededList!244 thiss!17480 rules!1920 (t!34372 tokens!465) separatorToken!170))))

(assert (=> b!238687 (= lt!95525 (list!1384 (charsOf!320 separatorToken!170)))))

(declare-fun b!238688 () Bool)

(declare-fun res!110261 () Bool)

(declare-fun e!147778 () Bool)

(assert (=> b!238688 (=> res!110261 e!147778)))

(declare-fun isEmpty!2111 (BalanceConc!2314) Bool)

(declare-fun lex!351 (LexerInterface!551 List!3545 BalanceConc!2312) tuple2!3882)

(declare-fun seqFromList!708 (List!3544) BalanceConc!2312)

(assert (=> b!238688 (= res!110261 (isEmpty!2111 (_1!2157 (lex!351 thiss!17480 rules!1920 (seqFromList!708 lt!95497)))))))

(declare-fun b!238689 () Bool)

(declare-fun res!110274 () Bool)

(declare-fun e!147803 () Bool)

(assert (=> b!238689 (=> (not res!110274) (not e!147803))))

(assert (=> b!238689 (= res!110274 (isSeparator!665 (rule!1234 separatorToken!170)))))

(declare-fun b!238680 () Bool)

(declare-fun e!147777 () Bool)

(assert (=> b!238680 (= e!147777 true)))

(declare-fun lt!95503 () Int)

(declare-fun lt!95485 () BalanceConc!2314)

(declare-fun size!2833 (BalanceConc!2314) Int)

(assert (=> b!238680 (= lt!95503 (size!2833 lt!95485))))

(declare-fun res!110271 () Bool)

(assert (=> start!25470 (=> (not res!110271) (not e!147790))))

(assert (=> start!25470 (= res!110271 ((_ is Lexer!549) thiss!17480))))

(assert (=> start!25470 e!147790))

(assert (=> start!25470 true))

(declare-fun e!147791 () Bool)

(assert (=> start!25470 e!147791))

(declare-fun e!147789 () Bool)

(declare-fun inv!4390 (Token!1074) Bool)

(assert (=> start!25470 (and (inv!4390 separatorToken!170) e!147789)))

(declare-fun e!147795 () Bool)

(assert (=> start!25470 e!147795))

(declare-fun b!238690 () Bool)

(declare-fun e!147799 () Bool)

(declare-fun e!147812 () Bool)

(assert (=> b!238690 (= e!147799 e!147812)))

(declare-fun res!110257 () Bool)

(assert (=> b!238690 (=> (not res!110257) (not e!147812))))

(declare-datatypes ((Option!687 0))(
  ( (None!686) (Some!686 (v!14429 tuple2!3880)) )
))
(declare-fun lt!95483 () Option!687)

(declare-fun isDefined!538 (Option!687) Bool)

(assert (=> b!238690 (= res!110257 (isDefined!538 lt!95483))))

(declare-fun lt!95521 () List!3544)

(declare-fun maxPrefix!281 (LexerInterface!551 List!3545 List!3544) Option!687)

(assert (=> b!238690 (= lt!95483 (maxPrefix!281 thiss!17480 rules!1920 lt!95521))))

(declare-fun e!147801 () Bool)

(assert (=> b!238691 (= e!147801 (and tp!95053 tp!95041))))

(declare-fun b!238692 () Bool)

(declare-fun res!110266 () Bool)

(declare-fun e!147787 () Bool)

(assert (=> b!238692 (=> (not res!110266) (not e!147787))))

(declare-fun lt!95508 () tuple2!3882)

(declare-fun lt!95501 () Token!1074)

(assert (=> b!238692 (= res!110266 (= (apply!662 (_1!2157 lt!95508) 0) lt!95501))))

(declare-fun b!238693 () Bool)

(declare-fun res!110258 () Bool)

(assert (=> b!238693 (=> res!110258 e!147778)))

(declare-fun rulesProduceIndividualToken!300 (LexerInterface!551 List!3545 Token!1074) Bool)

(assert (=> b!238693 (= res!110258 (not (rulesProduceIndividualToken!300 thiss!17480 rules!1920 (h!8933 tokens!465))))))

(declare-fun b!238694 () Bool)

(declare-fun e!147785 () Bool)

(declare-fun e!147792 () Bool)

(assert (=> b!238694 (= e!147785 e!147792)))

(declare-fun res!110280 () Bool)

(assert (=> b!238694 (=> (not res!110280) (not e!147792))))

(declare-fun lt!95529 () Rule!1130)

(declare-fun lt!95487 () List!3544)

(assert (=> b!238694 (= res!110280 (matchR!227 (regex!665 lt!95529) lt!95487))))

(declare-datatypes ((Option!688 0))(
  ( (None!687) (Some!687 (v!14430 Rule!1130)) )
))
(declare-fun lt!95532 () Option!688)

(declare-fun get!1145 (Option!688) Rule!1130)

(assert (=> b!238694 (= lt!95529 (get!1145 lt!95532))))

(declare-fun b!238695 () Bool)

(declare-fun e!147794 () Bool)

(declare-fun lt!95496 () Rule!1130)

(assert (=> b!238695 (= e!147794 (= (rule!1234 separatorToken!170) lt!95496))))

(declare-fun b!238696 () Bool)

(assert (=> b!238696 (= e!147790 e!147803)))

(declare-fun res!110259 () Bool)

(assert (=> b!238696 (=> (not res!110259) (not e!147803))))

(declare-fun rulesProduceEachTokenIndividually!343 (LexerInterface!551 List!3545 BalanceConc!2314) Bool)

(assert (=> b!238696 (= res!110259 (rulesProduceEachTokenIndividually!343 thiss!17480 rules!1920 lt!95485))))

(assert (=> b!238696 (= lt!95485 (seqFromList!707 tokens!465))))

(declare-fun b!238697 () Bool)

(declare-fun res!110249 () Bool)

(assert (=> b!238697 (=> (not res!110249) (not e!147803))))

(assert (=> b!238697 (= res!110249 ((_ is Cons!3536) tokens!465))))

(declare-fun b!238698 () Bool)

(declare-fun res!110272 () Bool)

(assert (=> b!238698 (=> (not res!110272) (not e!147803))))

(assert (=> b!238698 (= res!110272 (rulesProduceIndividualToken!300 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!238699 () Bool)

(declare-fun e!147800 () Unit!4220)

(declare-fun Unit!4223 () Unit!4220)

(assert (=> b!238699 (= e!147800 Unit!4223)))

(declare-fun e!147810 () Bool)

(assert (=> b!238700 (= e!147810 (and tp!95052 tp!95043))))

(declare-fun b!238701 () Bool)

(declare-fun Unit!4224 () Unit!4220)

(assert (=> b!238701 (= e!147800 Unit!4224)))

(declare-fun lt!95514 () C!2700)

(declare-fun lt!95518 () Unit!4220)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!58 (LexerInterface!551 List!3545 List!3545 Rule!1130 Rule!1130 C!2700) Unit!4220)

(assert (=> b!238701 (= lt!95518 (lemmaSepRuleNotContainsCharContainedInANonSepRule!58 thiss!17480 rules!1920 rules!1920 (rule!1234 lt!95501) (rule!1234 separatorToken!170) lt!95514))))

(assert (=> b!238701 false))

(declare-fun b!238702 () Bool)

(declare-fun e!147802 () Unit!4220)

(declare-fun Unit!4225 () Unit!4220)

(assert (=> b!238702 (= e!147802 Unit!4225)))

(declare-fun b!238703 () Bool)

(assert (=> b!238703 (= e!147803 e!147781)))

(declare-fun res!110273 () Bool)

(assert (=> b!238703 (=> (not res!110273) (not e!147781))))

(declare-fun lt!95490 () List!3544)

(assert (=> b!238703 (= res!110273 (= lt!95521 lt!95490))))

(declare-fun lt!95511 () BalanceConc!2312)

(assert (=> b!238703 (= lt!95490 (list!1384 lt!95511))))

(assert (=> b!238703 (= lt!95511 (printWithSeparatorTokenWhenNeededRec!234 thiss!17480 rules!1920 lt!95485 separatorToken!170 0))))

(assert (=> b!238703 (= lt!95521 (printWithSeparatorTokenWhenNeededList!244 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!147798 () Bool)

(assert (=> b!238704 (= e!147798 (and tp!95045 tp!95042))))

(declare-fun b!238705 () Bool)

(declare-fun res!110246 () Bool)

(assert (=> b!238705 (=> res!110246 e!147777)))

(declare-fun filter!59 (List!3546 Int) List!3546)

(declare-datatypes ((tuple2!3884 0))(
  ( (tuple2!3885 (_1!2158 List!3546) (_2!2158 List!3544)) )
))
(declare-fun lexList!179 (LexerInterface!551 List!3545 List!3544) tuple2!3884)

(assert (=> b!238705 (= res!110246 (not (= (filter!59 (_1!2158 (lexList!179 thiss!17480 rules!1920 lt!95521)) lambda!7735) tokens!465)))))

(declare-fun b!238706 () Bool)

(declare-fun e!147793 () Bool)

(assert (=> b!238706 (= e!147793 e!147778)))

(declare-fun res!110254 () Bool)

(assert (=> b!238706 (=> res!110254 e!147778)))

(declare-fun lt!95486 () List!3544)

(declare-fun lt!95516 () List!3544)

(assert (=> b!238706 (= res!110254 (or (not (= lt!95516 lt!95486)) (not (= lt!95486 lt!95497)) (not (= lt!95516 lt!95497))))))

(declare-fun printList!235 (LexerInterface!551 List!3546) List!3544)

(assert (=> b!238706 (= lt!95486 (printList!235 thiss!17480 (Cons!3536 (h!8933 tokens!465) Nil!3536)))))

(declare-fun lt!95489 () BalanceConc!2312)

(assert (=> b!238706 (= lt!95516 (list!1384 lt!95489))))

(declare-fun lt!95517 () BalanceConc!2314)

(declare-fun printTailRec!245 (LexerInterface!551 BalanceConc!2314 Int BalanceConc!2312) BalanceConc!2312)

(assert (=> b!238706 (= lt!95489 (printTailRec!245 thiss!17480 lt!95517 0 (BalanceConc!2313 Empty!1152)))))

(declare-fun print!282 (LexerInterface!551 BalanceConc!2314) BalanceConc!2312)

(assert (=> b!238706 (= lt!95489 (print!282 thiss!17480 lt!95517))))

(declare-fun singletonSeq!217 (Token!1074) BalanceConc!2314)

(assert (=> b!238706 (= lt!95517 (singletonSeq!217 (h!8933 tokens!465)))))

(declare-fun e!147804 () Bool)

(assert (=> b!238707 (= e!147778 e!147804)))

(declare-fun res!110260 () Bool)

(assert (=> b!238707 (=> res!110260 e!147804)))

(declare-datatypes ((tuple2!3886 0))(
  ( (tuple2!3887 (_1!2159 Token!1074) (_2!2159 BalanceConc!2312)) )
))
(declare-datatypes ((Option!689 0))(
  ( (None!688) (Some!688 (v!14431 tuple2!3886)) )
))
(declare-fun isDefined!539 (Option!689) Bool)

(declare-fun maxPrefixZipperSequence!244 (LexerInterface!551 List!3545 BalanceConc!2312) Option!689)

(assert (=> b!238707 (= res!110260 (not (isDefined!539 (maxPrefixZipperSequence!244 thiss!17480 rules!1920 (seqFromList!708 (originalCharacters!708 (h!8933 tokens!465)))))))))

(declare-fun lt!95523 () Unit!4220)

(declare-fun forallContained!232 (List!3546 Int Token!1074) Unit!4220)

(assert (=> b!238707 (= lt!95523 (forallContained!232 tokens!465 lambda!7736 (h!8933 tokens!465)))))

(assert (=> b!238707 (= lt!95497 (originalCharacters!708 (h!8933 tokens!465)))))

(declare-fun b!238708 () Bool)

(assert (=> b!238708 (= e!147792 (= (rule!1234 lt!95501) lt!95529))))

(declare-fun b!238709 () Bool)

(declare-fun get!1146 (Option!687) tuple2!3880)

(declare-fun head!825 (List!3546) Token!1074)

(assert (=> b!238709 (= e!147812 (= (_1!2156 (get!1146 lt!95483)) (head!825 tokens!465)))))

(declare-fun b!238710 () Bool)

(declare-fun res!110270 () Bool)

(assert (=> b!238710 (=> (not res!110270) (not e!147803))))

(declare-fun sepAndNonSepRulesDisjointChars!254 (List!3545 List!3545) Bool)

(assert (=> b!238710 (= res!110270 (sepAndNonSepRulesDisjointChars!254 rules!1920 rules!1920))))

(declare-fun b!238711 () Bool)

(assert (=> b!238711 (= e!147779 e!147793)))

(declare-fun res!110247 () Bool)

(assert (=> b!238711 (=> res!110247 e!147793)))

(declare-fun e!147796 () Bool)

(assert (=> b!238711 (= res!110247 e!147796)))

(declare-fun res!110278 () Bool)

(assert (=> b!238711 (=> (not res!110278) (not e!147796))))

(declare-fun lt!95506 () Bool)

(assert (=> b!238711 (= res!110278 (not lt!95506))))

(assert (=> b!238711 (= lt!95506 (= lt!95521 lt!95500))))

(declare-fun b!238712 () Bool)

(declare-fun Unit!4226 () Unit!4220)

(assert (=> b!238712 (= e!147802 Unit!4226)))

(declare-fun lt!95522 () C!2700)

(declare-fun lt!95491 () Unit!4220)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!64 (Regex!889 List!3544 C!2700) Unit!4220)

(assert (=> b!238712 (= lt!95491 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!64 (regex!665 (rule!1234 lt!95501)) lt!95487 lt!95522))))

(declare-fun res!110248 () Bool)

(assert (=> b!238712 (= res!110248 (not (matchR!227 (regex!665 (rule!1234 lt!95501)) lt!95487)))))

(declare-fun e!147805 () Bool)

(assert (=> b!238712 (=> (not res!110248) (not e!147805))))

(assert (=> b!238712 e!147805))

(declare-fun e!147782 () Bool)

(declare-fun tp!95044 () Bool)

(declare-fun b!238713 () Bool)

(declare-fun inv!21 (TokenValue!687) Bool)

(assert (=> b!238713 (= e!147789 (and (inv!21 (value!23268 separatorToken!170)) e!147782 tp!95044))))

(declare-fun b!238714 () Bool)

(declare-fun tp!95046 () Bool)

(declare-fun inv!4387 (String!4515) Bool)

(declare-fun inv!4391 (TokenValueInjection!1146) Bool)

(assert (=> b!238714 (= e!147782 (and tp!95046 (inv!4387 (tag!871 (rule!1234 separatorToken!170))) (inv!4391 (transformation!665 (rule!1234 separatorToken!170))) e!147810))))

(declare-fun b!238715 () Bool)

(declare-fun res!110264 () Bool)

(assert (=> b!238715 (=> (not res!110264) (not e!147790))))

(declare-fun rulesInvariant!517 (LexerInterface!551 List!3545) Bool)

(assert (=> b!238715 (= res!110264 (rulesInvariant!517 thiss!17480 rules!1920))))

(declare-fun tp!95051 () Bool)

(declare-fun b!238716 () Bool)

(declare-fun e!147788 () Bool)

(assert (=> b!238716 (= e!147788 (and tp!95051 (inv!4387 (tag!871 (h!8932 rules!1920))) (inv!4391 (transformation!665 (h!8932 rules!1920))) e!147798))))

(declare-fun b!238717 () Bool)

(declare-fun res!110267 () Bool)

(assert (=> b!238717 (=> res!110267 e!147777)))

(declare-fun list!1385 (BalanceConc!2314) List!3546)

(assert (=> b!238717 (= res!110267 (not (= (filter!59 (list!1385 (_1!2157 (lex!351 thiss!17480 rules!1920 lt!95511))) lambda!7735) tokens!465)))))

(declare-fun b!238718 () Bool)

(declare-fun e!147786 () Bool)

(assert (=> b!238718 (= e!147786 e!147794)))

(declare-fun res!110250 () Bool)

(assert (=> b!238718 (=> (not res!110250) (not e!147794))))

(assert (=> b!238718 (= res!110250 (matchR!227 (regex!665 lt!95496) lt!95525))))

(declare-fun lt!95515 () Option!688)

(assert (=> b!238718 (= lt!95496 (get!1145 lt!95515))))

(declare-fun tp!95049 () Bool)

(declare-fun e!147811 () Bool)

(declare-fun b!238719 () Bool)

(assert (=> b!238719 (= e!147811 (and tp!95049 (inv!4387 (tag!871 (rule!1234 (h!8933 tokens!465)))) (inv!4391 (transformation!665 (rule!1234 (h!8933 tokens!465)))) e!147801))))

(declare-fun b!238720 () Bool)

(assert (=> b!238720 (= e!147787 (isEmpty!2109 (_2!2157 lt!95508)))))

(declare-fun b!238721 () Bool)

(declare-fun e!147780 () Bool)

(assert (=> b!238721 (= e!147804 e!147780)))

(declare-fun res!110265 () Bool)

(assert (=> b!238721 (=> res!110265 e!147780)))

(assert (=> b!238721 (= res!110265 (not lt!95506))))

(assert (=> b!238721 e!147814))

(declare-fun res!110279 () Bool)

(assert (=> b!238721 (=> (not res!110279) (not e!147814))))

(assert (=> b!238721 (= res!110279 (= (_1!2156 lt!95520) (h!8933 tokens!465)))))

(declare-fun lt!95513 () Option!687)

(assert (=> b!238721 (= lt!95520 (get!1146 lt!95513))))

(assert (=> b!238721 (isDefined!538 lt!95513)))

(assert (=> b!238721 (= lt!95513 (maxPrefix!281 thiss!17480 rules!1920 lt!95497))))

(declare-fun b!238722 () Bool)

(declare-fun tp!95050 () Bool)

(assert (=> b!238722 (= e!147791 (and e!147788 tp!95050))))

(declare-fun b!238723 () Bool)

(declare-fun res!110251 () Bool)

(assert (=> b!238723 (=> res!110251 e!147777)))

(assert (=> b!238723 (= res!110251 (not (= (filter!59 (_1!2158 (lexList!179 thiss!17480 rules!1920 lt!95493)) lambda!7735) (t!34372 tokens!465))))))

(declare-fun b!238724 () Bool)

(declare-fun Unit!4227 () Unit!4220)

(assert (=> b!238724 (= e!147809 Unit!4227)))

(declare-fun b!238725 () Bool)

(declare-fun res!110255 () Bool)

(assert (=> b!238725 (=> (not res!110255) (not e!147781))))

(assert (=> b!238725 (= res!110255 (= (list!1384 (seqFromList!708 lt!95521)) lt!95490))))

(declare-fun res!110276 () Bool)

(assert (=> b!238726 (=> (not res!110276) (not e!147803))))

(declare-fun forall!811 (List!3546 Int) Bool)

(assert (=> b!238726 (= res!110276 (forall!811 tokens!465 lambda!7735))))

(declare-fun e!147783 () Bool)

(declare-fun b!238727 () Bool)

(declare-fun tp!95047 () Bool)

(assert (=> b!238727 (= e!147783 (and (inv!21 (value!23268 (h!8933 tokens!465))) e!147811 tp!95047))))

(declare-fun b!238728 () Bool)

(declare-fun tp!95048 () Bool)

(assert (=> b!238728 (= e!147795 (and (inv!4390 (h!8933 tokens!465)) e!147783 tp!95048))))

(declare-fun b!238729 () Bool)

(assert (=> b!238729 (= e!147805 false)))

(declare-fun b!238730 () Bool)

(assert (=> b!238730 (= e!147796 (not (= lt!95521 (++!896 lt!95497 lt!95493))))))

(declare-fun b!238731 () Bool)

(assert (=> b!238731 (= e!147780 e!147777)))

(declare-fun res!110253 () Bool)

(assert (=> b!238731 (=> res!110253 e!147777)))

(declare-fun lt!95482 () List!3546)

(assert (=> b!238731 (= res!110253 (not (= (filter!59 lt!95482 lambda!7735) (t!34372 tokens!465))))))

(assert (=> b!238731 (= (filter!59 lt!95482 lambda!7735) (t!34372 tokens!465))))

(assert (=> b!238731 (= lt!95482 (list!1385 (_1!2157 (lex!351 thiss!17480 rules!1920 lt!95528))))))

(declare-fun lt!95502 () Unit!4220)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!50 (LexerInterface!551 List!3545 List!3546 Token!1074) Unit!4220)

(assert (=> b!238731 (= lt!95502 (theoremInvertabilityFromTokensSepTokenWhenNeeded!50 thiss!17480 rules!1920 (t!34372 tokens!465) separatorToken!170))))

(declare-fun lt!95519 () Option!687)

(assert (=> b!238731 (= lt!95519 (Some!686 (tuple2!3881 separatorToken!170 lt!95493)))))

(declare-fun lt!95494 () Unit!4220)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!56 (LexerInterface!551 List!3545 Token!1074 Rule!1130 List!3544 Rule!1130) Unit!4220)

(assert (=> b!238731 (= lt!95494 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!56 thiss!17480 rules!1920 separatorToken!170 (rule!1234 separatorToken!170) lt!95493 (rule!1234 lt!95501)))))

(declare-fun lt!95499 () Unit!4220)

(assert (=> b!238731 (= lt!95499 e!147800)))

(declare-fun c!45686 () Bool)

(declare-fun contains!654 (List!3544 C!2700) Bool)

(declare-fun usedCharacters!70 (Regex!889) List!3544)

(assert (=> b!238731 (= c!45686 (contains!654 (usedCharacters!70 (regex!665 (rule!1234 separatorToken!170))) lt!95514))))

(declare-fun head!826 (List!3544) C!2700)

(assert (=> b!238731 (= lt!95514 (head!826 lt!95493))))

(declare-fun lt!95527 () Unit!4220)

(assert (=> b!238731 (= lt!95527 e!147802)))

(declare-fun c!45687 () Bool)

(assert (=> b!238731 (= c!45687 (not (contains!654 (usedCharacters!70 (regex!665 (rule!1234 lt!95501))) lt!95522)))))

(assert (=> b!238731 (= lt!95522 (head!826 lt!95487))))

(assert (=> b!238731 e!147785))

(declare-fun res!110277 () Bool)

(assert (=> b!238731 (=> (not res!110277) (not e!147785))))

(declare-fun isDefined!540 (Option!688) Bool)

(assert (=> b!238731 (= res!110277 (isDefined!540 lt!95532))))

(declare-fun getRuleFromTag!106 (LexerInterface!551 List!3545 String!4515) Option!688)

(assert (=> b!238731 (= lt!95532 (getRuleFromTag!106 thiss!17480 rules!1920 (tag!871 (rule!1234 lt!95501))))))

(declare-fun lt!95509 () Unit!4220)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!106 (LexerInterface!551 List!3545 List!3544 Token!1074) Unit!4220)

(assert (=> b!238731 (= lt!95509 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!106 thiss!17480 rules!1920 lt!95487 lt!95501))))

(assert (=> b!238731 (= lt!95487 (list!1384 (charsOf!320 lt!95501)))))

(declare-fun lt!95488 () Unit!4220)

(assert (=> b!238731 (= lt!95488 (forallContained!232 tokens!465 lambda!7736 lt!95501))))

(assert (=> b!238731 e!147787))

(declare-fun res!110245 () Bool)

(assert (=> b!238731 (=> (not res!110245) (not e!147787))))

(assert (=> b!238731 (= res!110245 (= (size!2833 (_1!2157 lt!95508)) 1))))

(declare-fun lt!95495 () BalanceConc!2312)

(assert (=> b!238731 (= lt!95508 (lex!351 thiss!17480 rules!1920 lt!95495))))

(declare-fun lt!95526 () BalanceConc!2314)

(assert (=> b!238731 (= lt!95495 (printTailRec!245 thiss!17480 lt!95526 0 (BalanceConc!2313 Empty!1152)))))

(assert (=> b!238731 (= lt!95495 (print!282 thiss!17480 lt!95526))))

(assert (=> b!238731 (= lt!95526 (singletonSeq!217 lt!95501))))

(assert (=> b!238731 e!147786))

(declare-fun res!110252 () Bool)

(assert (=> b!238731 (=> (not res!110252) (not e!147786))))

(assert (=> b!238731 (= res!110252 (isDefined!540 lt!95515))))

(assert (=> b!238731 (= lt!95515 (getRuleFromTag!106 thiss!17480 rules!1920 (tag!871 (rule!1234 separatorToken!170))))))

(declare-fun lt!95481 () Unit!4220)

(assert (=> b!238731 (= lt!95481 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!106 thiss!17480 rules!1920 lt!95525 separatorToken!170))))

(assert (=> b!238731 e!147797))

(declare-fun res!110275 () Bool)

(assert (=> b!238731 (=> (not res!110275) (not e!147797))))

(assert (=> b!238731 (= res!110275 (= (size!2833 (_1!2157 lt!95524)) 1))))

(declare-fun lt!95484 () BalanceConc!2312)

(assert (=> b!238731 (= lt!95524 (lex!351 thiss!17480 rules!1920 lt!95484))))

(declare-fun lt!95504 () BalanceConc!2314)

(assert (=> b!238731 (= lt!95484 (printTailRec!245 thiss!17480 lt!95504 0 (BalanceConc!2313 Empty!1152)))))

(assert (=> b!238731 (= lt!95484 (print!282 thiss!17480 lt!95504))))

(assert (=> b!238731 (= lt!95504 (singletonSeq!217 separatorToken!170))))

(assert (=> b!238731 (rulesProduceIndividualToken!300 thiss!17480 rules!1920 lt!95501)))

(declare-fun lt!95498 () Unit!4220)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!118 (LexerInterface!551 List!3545 List!3546 Token!1074) Unit!4220)

(assert (=> b!238731 (= lt!95498 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!118 thiss!17480 rules!1920 tokens!465 lt!95501))))

(assert (=> b!238731 (= lt!95501 (head!825 (t!34372 tokens!465)))))

(declare-fun lt!95510 () Unit!4220)

(assert (=> b!238731 (= lt!95510 e!147809)))

(declare-fun c!45688 () Bool)

(declare-fun isEmpty!2112 (List!3546) Bool)

(assert (=> b!238731 (= c!45688 (isEmpty!2112 (t!34372 tokens!465)))))

(assert (=> b!238731 (= lt!95519 (maxPrefix!281 thiss!17480 rules!1920 lt!95531))))

(declare-fun lt!95512 () tuple2!3880)

(assert (=> b!238731 (= lt!95531 (_2!2156 lt!95512))))

(declare-fun lt!95530 () Unit!4220)

(declare-fun lemmaSamePrefixThenSameSuffix!186 (List!3544 List!3544 List!3544 List!3544 List!3544) Unit!4220)

(assert (=> b!238731 (= lt!95530 (lemmaSamePrefixThenSameSuffix!186 lt!95497 lt!95531 lt!95497 (_2!2156 lt!95512) lt!95521))))

(assert (=> b!238731 (= lt!95512 (get!1146 (maxPrefix!281 thiss!17480 rules!1920 lt!95521)))))

(declare-fun isPrefix!361 (List!3544 List!3544) Bool)

(assert (=> b!238731 (isPrefix!361 lt!95497 lt!95500)))

(declare-fun lt!95492 () Unit!4220)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!256 (List!3544 List!3544) Unit!4220)

(assert (=> b!238731 (= lt!95492 (lemmaConcatTwoListThenFirstIsPrefix!256 lt!95497 lt!95531))))

(assert (=> b!238731 e!147799))

(declare-fun res!110263 () Bool)

(assert (=> b!238731 (=> res!110263 e!147799)))

(assert (=> b!238731 (= res!110263 (isEmpty!2112 tokens!465))))

(declare-fun lt!95505 () Unit!4220)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!126 (LexerInterface!551 List!3545 List!3546 Token!1074) Unit!4220)

(assert (=> b!238731 (= lt!95505 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!126 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (= (and start!25470 res!110271) b!238686))

(assert (= (and b!238686 res!110268) b!238715))

(assert (= (and b!238715 res!110264) b!238696))

(assert (= (and b!238696 res!110259) b!238698))

(assert (= (and b!238698 res!110272) b!238689))

(assert (= (and b!238689 res!110274) b!238726))

(assert (= (and b!238726 res!110276) b!238710))

(assert (= (and b!238710 res!110270) b!238697))

(assert (= (and b!238697 res!110249) b!238703))

(assert (= (and b!238703 res!110273) b!238725))

(assert (= (and b!238725 res!110255) b!238687))

(assert (= (and b!238687 (not res!110269)) b!238711))

(assert (= (and b!238711 res!110278) b!238730))

(assert (= (and b!238711 (not res!110247)) b!238706))

(assert (= (and b!238706 (not res!110254)) b!238693))

(assert (= (and b!238693 (not res!110258)) b!238688))

(assert (= (and b!238688 (not res!110261)) b!238707))

(assert (= (and b!238707 (not res!110260)) b!238721))

(assert (= (and b!238721 res!110279) b!238681))

(assert (= (and b!238681 res!110256) b!238684))

(assert (= (and b!238721 (not res!110265)) b!238731))

(assert (= (and b!238731 (not res!110263)) b!238690))

(assert (= (and b!238690 res!110257) b!238709))

(assert (= (and b!238731 c!45688) b!238682))

(assert (= (and b!238731 (not c!45688)) b!238724))

(assert (= (and b!238731 res!110275) b!238683))

(assert (= (and b!238683 res!110262) b!238685))

(assert (= (and b!238731 res!110252) b!238718))

(assert (= (and b!238718 res!110250) b!238695))

(assert (= (and b!238731 res!110245) b!238692))

(assert (= (and b!238692 res!110266) b!238720))

(assert (= (and b!238731 res!110277) b!238694))

(assert (= (and b!238694 res!110280) b!238708))

(assert (= (and b!238731 c!45687) b!238712))

(assert (= (and b!238731 (not c!45687)) b!238702))

(assert (= (and b!238712 res!110248) b!238729))

(assert (= (and b!238731 c!45686) b!238701))

(assert (= (and b!238731 (not c!45686)) b!238699))

(assert (= (and b!238731 (not res!110253)) b!238723))

(assert (= (and b!238723 (not res!110251)) b!238705))

(assert (= (and b!238705 (not res!110246)) b!238717))

(assert (= (and b!238717 (not res!110267)) b!238680))

(assert (= b!238716 b!238704))

(assert (= b!238722 b!238716))

(assert (= (and start!25470 ((_ is Cons!3535) rules!1920)) b!238722))

(assert (= b!238714 b!238700))

(assert (= b!238713 b!238714))

(assert (= start!25470 b!238713))

(assert (= b!238719 b!238691))

(assert (= b!238727 b!238719))

(assert (= b!238728 b!238727))

(assert (= (and start!25470 ((_ is Cons!3536) tokens!465)) b!238728))

(declare-fun m!287547 () Bool)

(assert (=> b!238681 m!287547))

(declare-fun m!287549 () Bool)

(assert (=> b!238698 m!287549))

(declare-fun m!287551 () Bool)

(assert (=> b!238721 m!287551))

(declare-fun m!287553 () Bool)

(assert (=> b!238721 m!287553))

(declare-fun m!287555 () Bool)

(assert (=> b!238721 m!287555))

(declare-fun m!287557 () Bool)

(assert (=> b!238693 m!287557))

(declare-fun m!287559 () Bool)

(assert (=> b!238727 m!287559))

(declare-fun m!287561 () Bool)

(assert (=> b!238726 m!287561))

(declare-fun m!287563 () Bool)

(assert (=> b!238728 m!287563))

(declare-fun m!287565 () Bool)

(assert (=> b!238696 m!287565))

(declare-fun m!287567 () Bool)

(assert (=> b!238696 m!287567))

(declare-fun m!287569 () Bool)

(assert (=> b!238692 m!287569))

(declare-fun m!287571 () Bool)

(assert (=> b!238684 m!287571))

(declare-fun m!287573 () Bool)

(assert (=> b!238719 m!287573))

(declare-fun m!287575 () Bool)

(assert (=> b!238719 m!287575))

(declare-fun m!287577 () Bool)

(assert (=> b!238720 m!287577))

(declare-fun m!287579 () Bool)

(assert (=> b!238701 m!287579))

(declare-fun m!287581 () Bool)

(assert (=> b!238714 m!287581))

(declare-fun m!287583 () Bool)

(assert (=> b!238714 m!287583))

(declare-fun m!287585 () Bool)

(assert (=> b!238688 m!287585))

(assert (=> b!238688 m!287585))

(declare-fun m!287587 () Bool)

(assert (=> b!238688 m!287587))

(declare-fun m!287589 () Bool)

(assert (=> b!238688 m!287589))

(declare-fun m!287591 () Bool)

(assert (=> b!238715 m!287591))

(declare-fun m!287593 () Bool)

(assert (=> b!238683 m!287593))

(declare-fun m!287595 () Bool)

(assert (=> b!238725 m!287595))

(assert (=> b!238725 m!287595))

(declare-fun m!287597 () Bool)

(assert (=> b!238725 m!287597))

(declare-fun m!287599 () Bool)

(assert (=> b!238694 m!287599))

(declare-fun m!287601 () Bool)

(assert (=> b!238694 m!287601))

(declare-fun m!287603 () Bool)

(assert (=> b!238705 m!287603))

(declare-fun m!287605 () Bool)

(assert (=> b!238705 m!287605))

(declare-fun m!287607 () Bool)

(assert (=> b!238709 m!287607))

(declare-fun m!287609 () Bool)

(assert (=> b!238709 m!287609))

(declare-fun m!287611 () Bool)

(assert (=> b!238717 m!287611))

(declare-fun m!287613 () Bool)

(assert (=> b!238717 m!287613))

(assert (=> b!238717 m!287613))

(declare-fun m!287615 () Bool)

(assert (=> b!238717 m!287615))

(declare-fun m!287617 () Bool)

(assert (=> b!238716 m!287617))

(declare-fun m!287619 () Bool)

(assert (=> b!238716 m!287619))

(declare-fun m!287621 () Bool)

(assert (=> b!238707 m!287621))

(assert (=> b!238707 m!287621))

(declare-fun m!287623 () Bool)

(assert (=> b!238707 m!287623))

(assert (=> b!238707 m!287623))

(declare-fun m!287625 () Bool)

(assert (=> b!238707 m!287625))

(declare-fun m!287627 () Bool)

(assert (=> b!238707 m!287627))

(declare-fun m!287629 () Bool)

(assert (=> b!238723 m!287629))

(declare-fun m!287631 () Bool)

(assert (=> b!238723 m!287631))

(declare-fun m!287633 () Bool)

(assert (=> b!238680 m!287633))

(declare-fun m!287635 () Bool)

(assert (=> b!238685 m!287635))

(declare-fun m!287637 () Bool)

(assert (=> start!25470 m!287637))

(declare-fun m!287639 () Bool)

(assert (=> b!238718 m!287639))

(declare-fun m!287641 () Bool)

(assert (=> b!238718 m!287641))

(declare-fun m!287643 () Bool)

(assert (=> b!238706 m!287643))

(declare-fun m!287645 () Bool)

(assert (=> b!238706 m!287645))

(declare-fun m!287647 () Bool)

(assert (=> b!238706 m!287647))

(declare-fun m!287649 () Bool)

(assert (=> b!238706 m!287649))

(declare-fun m!287651 () Bool)

(assert (=> b!238706 m!287651))

(declare-fun m!287653 () Bool)

(assert (=> b!238690 m!287653))

(declare-fun m!287655 () Bool)

(assert (=> b!238690 m!287655))

(declare-fun m!287657 () Bool)

(assert (=> b!238731 m!287657))

(declare-fun m!287659 () Bool)

(assert (=> b!238731 m!287659))

(declare-fun m!287661 () Bool)

(assert (=> b!238731 m!287661))

(declare-fun m!287663 () Bool)

(assert (=> b!238731 m!287663))

(declare-fun m!287665 () Bool)

(assert (=> b!238731 m!287665))

(declare-fun m!287667 () Bool)

(assert (=> b!238731 m!287667))

(declare-fun m!287669 () Bool)

(assert (=> b!238731 m!287669))

(declare-fun m!287671 () Bool)

(assert (=> b!238731 m!287671))

(declare-fun m!287673 () Bool)

(assert (=> b!238731 m!287673))

(declare-fun m!287675 () Bool)

(assert (=> b!238731 m!287675))

(declare-fun m!287677 () Bool)

(assert (=> b!238731 m!287677))

(declare-fun m!287679 () Bool)

(assert (=> b!238731 m!287679))

(declare-fun m!287681 () Bool)

(assert (=> b!238731 m!287681))

(declare-fun m!287683 () Bool)

(assert (=> b!238731 m!287683))

(declare-fun m!287685 () Bool)

(assert (=> b!238731 m!287685))

(declare-fun m!287687 () Bool)

(assert (=> b!238731 m!287687))

(assert (=> b!238731 m!287655))

(declare-fun m!287689 () Bool)

(assert (=> b!238731 m!287689))

(declare-fun m!287691 () Bool)

(assert (=> b!238731 m!287691))

(declare-fun m!287693 () Bool)

(assert (=> b!238731 m!287693))

(declare-fun m!287695 () Bool)

(assert (=> b!238731 m!287695))

(declare-fun m!287697 () Bool)

(assert (=> b!238731 m!287697))

(declare-fun m!287699 () Bool)

(assert (=> b!238731 m!287699))

(declare-fun m!287701 () Bool)

(assert (=> b!238731 m!287701))

(declare-fun m!287703 () Bool)

(assert (=> b!238731 m!287703))

(declare-fun m!287705 () Bool)

(assert (=> b!238731 m!287705))

(declare-fun m!287707 () Bool)

(assert (=> b!238731 m!287707))

(assert (=> b!238731 m!287669))

(declare-fun m!287709 () Bool)

(assert (=> b!238731 m!287709))

(declare-fun m!287711 () Bool)

(assert (=> b!238731 m!287711))

(assert (=> b!238731 m!287655))

(declare-fun m!287713 () Bool)

(assert (=> b!238731 m!287713))

(declare-fun m!287715 () Bool)

(assert (=> b!238731 m!287715))

(declare-fun m!287717 () Bool)

(assert (=> b!238731 m!287717))

(assert (=> b!238731 m!287659))

(declare-fun m!287719 () Bool)

(assert (=> b!238731 m!287719))

(declare-fun m!287721 () Bool)

(assert (=> b!238731 m!287721))

(assert (=> b!238731 m!287695))

(declare-fun m!287723 () Bool)

(assert (=> b!238731 m!287723))

(declare-fun m!287725 () Bool)

(assert (=> b!238731 m!287725))

(declare-fun m!287727 () Bool)

(assert (=> b!238731 m!287727))

(assert (=> b!238731 m!287725))

(declare-fun m!287729 () Bool)

(assert (=> b!238731 m!287729))

(declare-fun m!287731 () Bool)

(assert (=> b!238731 m!287731))

(declare-fun m!287733 () Bool)

(assert (=> b!238731 m!287733))

(declare-fun m!287735 () Bool)

(assert (=> b!238731 m!287735))

(declare-fun m!287737 () Bool)

(assert (=> b!238731 m!287737))

(declare-fun m!287739 () Bool)

(assert (=> b!238703 m!287739))

(declare-fun m!287741 () Bool)

(assert (=> b!238703 m!287741))

(declare-fun m!287743 () Bool)

(assert (=> b!238703 m!287743))

(declare-fun m!287745 () Bool)

(assert (=> b!238713 m!287745))

(declare-fun m!287747 () Bool)

(assert (=> b!238712 m!287747))

(declare-fun m!287749 () Bool)

(assert (=> b!238712 m!287749))

(declare-fun m!287751 () Bool)

(assert (=> b!238710 m!287751))

(declare-fun m!287753 () Bool)

(assert (=> b!238730 m!287753))

(declare-fun m!287755 () Bool)

(assert (=> b!238686 m!287755))

(declare-fun m!287757 () Bool)

(assert (=> b!238687 m!287757))

(declare-fun m!287759 () Bool)

(assert (=> b!238687 m!287759))

(declare-fun m!287761 () Bool)

(assert (=> b!238687 m!287761))

(declare-fun m!287763 () Bool)

(assert (=> b!238687 m!287763))

(declare-fun m!287765 () Bool)

(assert (=> b!238687 m!287765))

(declare-fun m!287767 () Bool)

(assert (=> b!238687 m!287767))

(declare-fun m!287769 () Bool)

(assert (=> b!238687 m!287769))

(assert (=> b!238687 m!287763))

(declare-fun m!287771 () Bool)

(assert (=> b!238687 m!287771))

(assert (=> b!238687 m!287767))

(declare-fun m!287773 () Bool)

(assert (=> b!238687 m!287773))

(declare-fun m!287775 () Bool)

(assert (=> b!238687 m!287775))

(declare-fun m!287777 () Bool)

(assert (=> b!238687 m!287777))

(declare-fun m!287779 () Bool)

(assert (=> b!238687 m!287779))

(assert (=> b!238687 m!287775))

(declare-fun m!287781 () Bool)

(assert (=> b!238687 m!287781))

(assert (=> b!238687 m!287757))

(check-sat (not b!238714) (not b_next!8849) (not b!238740) (not b!238718) (not b!238709) (not b!238694) (not b!238692) (not b_next!8843) (not b!238684) (not b!238701) (not b!238703) (not b!238727) (not b!238707) (not b!238715) (not b!238685) (not b!238713) (not b!238717) (not b!238716) (not b!238698) (not b!238710) b_and!17801 (not b!238681) (not b_next!8841) b_and!17799 (not b!238731) (not b!238690) (not b!238722) (not b!238688) (not b!238683) (not b!238680) (not b!238730) (not b_next!8847) (not b!238686) (not b!238706) (not b!238696) (not b_next!8845) (not b!238705) (not start!25470) (not b!238712) (not b!238720) (not b!238728) (not b!238721) b_and!17797 (not b_next!8851) (not b!238725) b_and!17803 b_and!17795 (not b!238719) (not b!238687) (not b!238693) (not b!238726) (not b!238723) b_and!17793)
(check-sat (not b_next!8849) b_and!17799 (not b_next!8847) (not b_next!8845) b_and!17797 (not b_next!8843) b_and!17793 b_and!17801 (not b_next!8841) (not b_next!8851) b_and!17803 b_and!17795)

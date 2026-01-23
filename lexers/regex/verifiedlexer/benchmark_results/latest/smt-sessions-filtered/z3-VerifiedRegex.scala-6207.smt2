; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300422 () Bool)

(assert start!300422)

(declare-fun b!3199890 () Bool)

(declare-fun b_free!84977 () Bool)

(declare-fun b_next!85681 () Bool)

(assert (=> b!3199890 (= b_free!84977 (not b_next!85681))))

(declare-fun tp!1011354 () Bool)

(declare-fun b_and!212663 () Bool)

(assert (=> b!3199890 (= tp!1011354 b_and!212663)))

(declare-fun b_free!84979 () Bool)

(declare-fun b_next!85683 () Bool)

(assert (=> b!3199890 (= b_free!84979 (not b_next!85683))))

(declare-fun tp!1011356 () Bool)

(declare-fun b_and!212665 () Bool)

(assert (=> b!3199890 (= tp!1011356 b_and!212665)))

(declare-fun b!3199892 () Bool)

(declare-fun b_free!84981 () Bool)

(declare-fun b_next!85685 () Bool)

(assert (=> b!3199892 (= b_free!84981 (not b_next!85685))))

(declare-fun tp!1011355 () Bool)

(declare-fun b_and!212667 () Bool)

(assert (=> b!3199892 (= tp!1011355 b_and!212667)))

(declare-fun b_free!84983 () Bool)

(declare-fun b_next!85687 () Bool)

(assert (=> b!3199892 (= b_free!84983 (not b_next!85687))))

(declare-fun tp!1011350 () Bool)

(declare-fun b_and!212669 () Bool)

(assert (=> b!3199892 (= tp!1011350 b_and!212669)))

(declare-fun b!3199864 () Bool)

(declare-fun b_free!84985 () Bool)

(declare-fun b_next!85689 () Bool)

(assert (=> b!3199864 (= b_free!84985 (not b_next!85689))))

(declare-fun tp!1011351 () Bool)

(declare-fun b_and!212671 () Bool)

(assert (=> b!3199864 (= tp!1011351 b_and!212671)))

(declare-fun b_free!84987 () Bool)

(declare-fun b_next!85691 () Bool)

(assert (=> b!3199864 (= b_free!84987 (not b_next!85691))))

(declare-fun tp!1011353 () Bool)

(declare-fun b_and!212673 () Bool)

(assert (=> b!3199864 (= tp!1011353 b_and!212673)))

(declare-fun res!1301877 () Bool)

(declare-fun e!1994811 () Bool)

(assert (=> start!300422 (=> (not res!1301877) (not e!1994811))))

(declare-datatypes ((LexerInterface!4783 0))(
  ( (LexerInterfaceExt!4780 (__x!23065 Int)) (Lexer!4781) )
))
(declare-fun thiss!18206 () LexerInterface!4783)

(get-info :version)

(assert (=> start!300422 (= res!1301877 ((_ is Lexer!4781) thiss!18206))))

(assert (=> start!300422 e!1994811))

(assert (=> start!300422 true))

(declare-fun e!1994824 () Bool)

(assert (=> start!300422 e!1994824))

(declare-fun e!1994805 () Bool)

(assert (=> start!300422 e!1994805))

(declare-datatypes ((C!20092 0))(
  ( (C!20093 (val!12094 Int)) )
))
(declare-datatypes ((Regex!9953 0))(
  ( (ElementMatch!9953 (c!537302 C!20092)) (Concat!15377 (regOne!20418 Regex!9953) (regTwo!20418 Regex!9953)) (EmptyExpr!9953) (Star!9953 (reg!10282 Regex!9953)) (EmptyLang!9953) (Union!9953 (regOne!20419 Regex!9953) (regTwo!20419 Regex!9953)) )
))
(declare-datatypes ((List!36176 0))(
  ( (Nil!36052) (Cons!36052 (h!41472 (_ BitVec 16)) (t!237375 List!36176)) )
))
(declare-datatypes ((TokenValue!5424 0))(
  ( (FloatLiteralValue!10848 (text!38413 List!36176)) (TokenValueExt!5423 (__x!23066 Int)) (Broken!27120 (value!168463 List!36176)) (Object!5547) (End!5424) (Def!5424) (Underscore!5424) (Match!5424) (Else!5424) (Error!5424) (Case!5424) (If!5424) (Extends!5424) (Abstract!5424) (Class!5424) (Val!5424) (DelimiterValue!10848 (del!5484 List!36176)) (KeywordValue!5430 (value!168464 List!36176)) (CommentValue!10848 (value!168465 List!36176)) (WhitespaceValue!10848 (value!168466 List!36176)) (IndentationValue!5424 (value!168467 List!36176)) (String!40453) (Int32!5424) (Broken!27121 (value!168468 List!36176)) (Boolean!5425) (Unit!50457) (OperatorValue!5427 (op!5484 List!36176)) (IdentifierValue!10848 (value!168469 List!36176)) (IdentifierValue!10849 (value!168470 List!36176)) (WhitespaceValue!10849 (value!168471 List!36176)) (True!10848) (False!10848) (Broken!27122 (value!168472 List!36176)) (Broken!27123 (value!168473 List!36176)) (True!10849) (RightBrace!5424) (RightBracket!5424) (Colon!5424) (Null!5424) (Comma!5424) (LeftBracket!5424) (False!10849) (LeftBrace!5424) (ImaginaryLiteralValue!5424 (text!38414 List!36176)) (StringLiteralValue!16272 (value!168474 List!36176)) (EOFValue!5424 (value!168475 List!36176)) (IdentValue!5424 (value!168476 List!36176)) (DelimiterValue!10849 (value!168477 List!36176)) (DedentValue!5424 (value!168478 List!36176)) (NewLineValue!5424 (value!168479 List!36176)) (IntegerValue!16272 (value!168480 (_ BitVec 32)) (text!38415 List!36176)) (IntegerValue!16273 (value!168481 Int) (text!38416 List!36176)) (Times!5424) (Or!5424) (Equal!5424) (Minus!5424) (Broken!27124 (value!168482 List!36176)) (And!5424) (Div!5424) (LessEqual!5424) (Mod!5424) (Concat!15378) (Not!5424) (Plus!5424) (SpaceValue!5424 (value!168483 List!36176)) (IntegerValue!16274 (value!168484 Int) (text!38417 List!36176)) (StringLiteralValue!16273 (text!38418 List!36176)) (FloatLiteralValue!10849 (text!38419 List!36176)) (BytesLiteralValue!5424 (value!168485 List!36176)) (CommentValue!10849 (value!168486 List!36176)) (StringLiteralValue!16274 (value!168487 List!36176)) (ErrorTokenValue!5424 (msg!5485 List!36176)) )
))
(declare-datatypes ((List!36177 0))(
  ( (Nil!36053) (Cons!36053 (h!41473 C!20092) (t!237376 List!36177)) )
))
(declare-datatypes ((IArray!21531 0))(
  ( (IArray!21532 (innerList!10823 List!36177)) )
))
(declare-datatypes ((Conc!10763 0))(
  ( (Node!10763 (left!28018 Conc!10763) (right!28348 Conc!10763) (csize!21756 Int) (cheight!10974 Int)) (Leaf!16971 (xs!13881 IArray!21531) (csize!21757 Int)) (Empty!10763) )
))
(declare-datatypes ((BalanceConc!21140 0))(
  ( (BalanceConc!21141 (c!537303 Conc!10763)) )
))
(declare-datatypes ((String!40454 0))(
  ( (String!40455 (value!168488 String)) )
))
(declare-datatypes ((TokenValueInjection!10276 0))(
  ( (TokenValueInjection!10277 (toValue!7270 Int) (toChars!7129 Int)) )
))
(declare-datatypes ((Rule!10188 0))(
  ( (Rule!10189 (regex!5194 Regex!9953) (tag!5716 String!40454) (isSeparator!5194 Bool) (transformation!5194 TokenValueInjection!10276)) )
))
(declare-datatypes ((Token!9754 0))(
  ( (Token!9755 (value!168489 TokenValue!5424) (rule!7630 Rule!10188) (size!27158 Int) (originalCharacters!5908 List!36177)) )
))
(declare-fun separatorToken!241 () Token!9754)

(declare-fun e!1994806 () Bool)

(declare-fun inv!48910 (Token!9754) Bool)

(assert (=> start!300422 (and (inv!48910 separatorToken!241) e!1994806)))

(declare-fun e!1994807 () Bool)

(declare-fun b!3199862 () Bool)

(declare-fun tp!1011361 () Bool)

(declare-fun inv!21 (TokenValue!5424) Bool)

(assert (=> b!3199862 (= e!1994806 (and (inv!21 (value!168489 separatorToken!241)) e!1994807 tp!1011361))))

(declare-fun b!3199863 () Bool)

(declare-fun e!1994816 () Bool)

(declare-fun e!1994813 () Bool)

(assert (=> b!3199863 (= e!1994816 e!1994813)))

(declare-fun res!1301862 () Bool)

(assert (=> b!3199863 (=> res!1301862 e!1994813)))

(declare-fun lt!1078824 () List!36177)

(declare-fun lt!1078832 () List!36177)

(assert (=> b!3199863 (= res!1301862 (not (= lt!1078824 lt!1078832)))))

(declare-fun lt!1078837 () List!36177)

(declare-fun lt!1078834 () List!36177)

(declare-fun lt!1078822 () List!36177)

(declare-fun ++!8638 (List!36177 List!36177) List!36177)

(assert (=> b!3199863 (= lt!1078832 (++!8638 (++!8638 lt!1078834 lt!1078837) lt!1078822))))

(declare-fun e!1994812 () Bool)

(assert (=> b!3199864 (= e!1994812 (and tp!1011351 tp!1011353))))

(declare-fun b!3199865 () Bool)

(declare-fun res!1301871 () Bool)

(assert (=> b!3199865 (=> (not res!1301871) (not e!1994811))))

(declare-datatypes ((List!36178 0))(
  ( (Nil!36054) (Cons!36054 (h!41474 Rule!10188) (t!237377 List!36178)) )
))
(declare-fun rules!2135 () List!36178)

(declare-fun isEmpty!20148 (List!36178) Bool)

(assert (=> b!3199865 (= res!1301871 (not (isEmpty!20148 rules!2135)))))

(declare-fun b!3199866 () Bool)

(declare-fun e!1994820 () Bool)

(declare-fun e!1994823 () Bool)

(assert (=> b!3199866 (= e!1994820 e!1994823)))

(declare-fun res!1301875 () Bool)

(assert (=> b!3199866 (=> res!1301875 e!1994823)))

(declare-fun lt!1078817 () BalanceConc!21140)

(declare-datatypes ((List!36179 0))(
  ( (Nil!36055) (Cons!36055 (h!41475 Token!9754) (t!237378 List!36179)) )
))
(declare-datatypes ((IArray!21533 0))(
  ( (IArray!21534 (innerList!10824 List!36179)) )
))
(declare-datatypes ((Conc!10764 0))(
  ( (Node!10764 (left!28019 Conc!10764) (right!28349 Conc!10764) (csize!21758 Int) (cheight!10975 Int)) (Leaf!16972 (xs!13882 IArray!21533) (csize!21759 Int)) (Empty!10764) )
))
(declare-datatypes ((BalanceConc!21142 0))(
  ( (BalanceConc!21143 (c!537304 Conc!10764)) )
))
(declare-fun isEmpty!20149 (BalanceConc!21142) Bool)

(declare-datatypes ((tuple2!35430 0))(
  ( (tuple2!35431 (_1!20849 BalanceConc!21142) (_2!20849 BalanceConc!21140)) )
))
(declare-fun lex!2113 (LexerInterface!4783 List!36178 BalanceConc!21140) tuple2!35430)

(assert (=> b!3199866 (= res!1301875 (isEmpty!20149 (_1!20849 (lex!2113 thiss!18206 rules!2135 lt!1078817))))))

(declare-fun seqFromList!3459 (List!36177) BalanceConc!21140)

(assert (=> b!3199866 (= lt!1078817 (seqFromList!3459 lt!1078834))))

(declare-fun e!1994825 () Bool)

(declare-fun tokens!494 () List!36179)

(declare-fun tp!1011358 () Bool)

(declare-fun e!1994819 () Bool)

(declare-fun b!3199867 () Bool)

(assert (=> b!3199867 (= e!1994825 (and (inv!21 (value!168489 (h!41475 tokens!494))) e!1994819 tp!1011358))))

(declare-fun b!3199868 () Bool)

(declare-fun e!1994803 () Bool)

(assert (=> b!3199868 (= e!1994813 e!1994803)))

(declare-fun res!1301866 () Bool)

(assert (=> b!3199868 (=> res!1301866 e!1994803)))

(declare-fun lt!1078815 () List!36177)

(assert (=> b!3199868 (= res!1301866 (not (= lt!1078824 lt!1078815)))))

(assert (=> b!3199868 (= lt!1078832 lt!1078815)))

(declare-fun lt!1078825 () List!36177)

(assert (=> b!3199868 (= lt!1078815 (++!8638 lt!1078834 lt!1078825))))

(declare-datatypes ((Unit!50458 0))(
  ( (Unit!50459) )
))
(declare-fun lt!1078823 () Unit!50458)

(declare-fun lemmaConcatAssociativity!1712 (List!36177 List!36177 List!36177) Unit!50458)

(assert (=> b!3199868 (= lt!1078823 (lemmaConcatAssociativity!1712 lt!1078834 lt!1078837 lt!1078822))))

(declare-fun b!3199869 () Bool)

(declare-fun res!1301876 () Bool)

(assert (=> b!3199869 (=> (not res!1301876) (not e!1994811))))

(declare-fun rulesProduceEachTokenIndividually!1234 (LexerInterface!4783 List!36178 BalanceConc!21142) Bool)

(declare-fun seqFromList!3460 (List!36179) BalanceConc!21142)

(assert (=> b!3199869 (= res!1301876 (rulesProduceEachTokenIndividually!1234 thiss!18206 rules!2135 (seqFromList!3460 tokens!494)))))

(declare-fun b!3199870 () Bool)

(declare-fun tp!1011352 () Bool)

(assert (=> b!3199870 (= e!1994805 (and (inv!48910 (h!41475 tokens!494)) e!1994825 tp!1011352))))

(declare-fun b!3199871 () Bool)

(declare-fun res!1301864 () Bool)

(declare-fun e!1994826 () Bool)

(assert (=> b!3199871 (=> res!1301864 e!1994826)))

(declare-fun validRegex!4546 (Regex!9953) Bool)

(assert (=> b!3199871 (= res!1301864 (not (validRegex!4546 (regex!5194 (rule!7630 separatorToken!241)))))))

(declare-fun b!3199872 () Bool)

(declare-fun e!1994808 () Bool)

(declare-fun lt!1078814 () Rule!10188)

(assert (=> b!3199872 (= e!1994808 (= (rule!7630 separatorToken!241) lt!1078814))))

(declare-fun e!1994822 () Bool)

(declare-fun tp!1011357 () Bool)

(declare-fun b!3199873 () Bool)

(declare-fun inv!48907 (String!40454) Bool)

(declare-fun inv!48911 (TokenValueInjection!10276) Bool)

(assert (=> b!3199873 (= e!1994819 (and tp!1011357 (inv!48907 (tag!5716 (rule!7630 (h!41475 tokens!494)))) (inv!48911 (transformation!5194 (rule!7630 (h!41475 tokens!494)))) e!1994822))))

(declare-fun b!3199874 () Bool)

(declare-fun e!1994815 () Bool)

(assert (=> b!3199874 (= e!1994823 e!1994815)))

(declare-fun res!1301869 () Bool)

(assert (=> b!3199874 (=> res!1301869 e!1994815)))

(assert (=> b!3199874 (= res!1301869 (or (isSeparator!5194 (rule!7630 (h!41475 tokens!494))) (isSeparator!5194 (rule!7630 (h!41475 (t!237378 tokens!494))))))))

(declare-fun lt!1078835 () Unit!50458)

(declare-fun lambda!117113 () Int)

(declare-fun forallContained!1165 (List!36179 Int Token!9754) Unit!50458)

(assert (=> b!3199874 (= lt!1078835 (forallContained!1165 tokens!494 lambda!117113 (h!41475 (t!237378 tokens!494))))))

(declare-fun lt!1078828 () Unit!50458)

(assert (=> b!3199874 (= lt!1078828 (forallContained!1165 tokens!494 lambda!117113 (h!41475 tokens!494)))))

(declare-fun b!3199875 () Bool)

(assert (=> b!3199875 (= e!1994826 true)))

(declare-fun lt!1078827 () Bool)

(declare-fun lt!1078836 () C!20092)

(declare-fun contains!6411 (List!36177 C!20092) Bool)

(assert (=> b!3199875 (= lt!1078827 (contains!6411 lt!1078837 lt!1078836))))

(declare-fun b!3199876 () Bool)

(declare-fun e!1994830 () Bool)

(assert (=> b!3199876 (= e!1994830 e!1994808)))

(declare-fun res!1301873 () Bool)

(assert (=> b!3199876 (=> (not res!1301873) (not e!1994808))))

(declare-fun matchR!4587 (Regex!9953 List!36177) Bool)

(assert (=> b!3199876 (= res!1301873 (matchR!4587 (regex!5194 lt!1078814) lt!1078837))))

(declare-datatypes ((Option!7083 0))(
  ( (None!7082) (Some!7082 (v!35612 Rule!10188)) )
))
(declare-fun lt!1078831 () Option!7083)

(declare-fun get!11468 (Option!7083) Rule!10188)

(assert (=> b!3199876 (= lt!1078814 (get!11468 lt!1078831))))

(declare-fun b!3199877 () Bool)

(declare-fun res!1301874 () Bool)

(assert (=> b!3199877 (=> (not res!1301874) (not e!1994811))))

(assert (=> b!3199877 (= res!1301874 (isSeparator!5194 (rule!7630 separatorToken!241)))))

(declare-fun b!3199878 () Bool)

(declare-fun res!1301878 () Bool)

(assert (=> b!3199878 (=> (not res!1301878) (not e!1994811))))

(declare-fun sepAndNonSepRulesDisjointChars!1388 (List!36178 List!36178) Bool)

(assert (=> b!3199878 (= res!1301878 (sepAndNonSepRulesDisjointChars!1388 rules!2135 rules!2135))))

(declare-fun b!3199879 () Bool)

(declare-fun res!1301868 () Bool)

(assert (=> b!3199879 (=> res!1301868 e!1994820)))

(declare-fun rulesProduceIndividualToken!2275 (LexerInterface!4783 List!36178 Token!9754) Bool)

(assert (=> b!3199879 (= res!1301868 (not (rulesProduceIndividualToken!2275 thiss!18206 rules!2135 (h!41475 tokens!494))))))

(declare-fun b!3199880 () Bool)

(declare-fun e!1994804 () Bool)

(declare-fun lt!1078820 () Rule!10188)

(assert (=> b!3199880 (= e!1994804 (= (rule!7630 (h!41475 tokens!494)) lt!1078820))))

(declare-fun b!3199881 () Bool)

(declare-fun e!1994818 () Bool)

(assert (=> b!3199881 (= e!1994811 (not e!1994818))))

(declare-fun res!1301865 () Bool)

(assert (=> b!3199881 (=> res!1301865 e!1994818)))

(declare-fun lt!1078821 () List!36177)

(declare-fun lt!1078826 () List!36177)

(assert (=> b!3199881 (= res!1301865 (not (= lt!1078821 lt!1078826)))))

(declare-fun printList!1333 (LexerInterface!4783 List!36179) List!36177)

(assert (=> b!3199881 (= lt!1078826 (printList!1333 thiss!18206 (Cons!36055 (h!41475 tokens!494) Nil!36055)))))

(declare-fun lt!1078833 () BalanceConc!21140)

(declare-fun list!12819 (BalanceConc!21140) List!36177)

(assert (=> b!3199881 (= lt!1078821 (list!12819 lt!1078833))))

(declare-fun lt!1078830 () BalanceConc!21142)

(declare-fun printTailRec!1280 (LexerInterface!4783 BalanceConc!21142 Int BalanceConc!21140) BalanceConc!21140)

(assert (=> b!3199881 (= lt!1078833 (printTailRec!1280 thiss!18206 lt!1078830 0 (BalanceConc!21141 Empty!10763)))))

(declare-fun print!1848 (LexerInterface!4783 BalanceConc!21142) BalanceConc!21140)

(assert (=> b!3199881 (= lt!1078833 (print!1848 thiss!18206 lt!1078830))))

(declare-fun singletonSeq!2290 (Token!9754) BalanceConc!21142)

(assert (=> b!3199881 (= lt!1078830 (singletonSeq!2290 (h!41475 tokens!494)))))

(declare-fun b!3199882 () Bool)

(declare-fun res!1301867 () Bool)

(assert (=> b!3199882 (=> (not res!1301867) (not e!1994811))))

(declare-fun forall!7346 (List!36179 Int) Bool)

(assert (=> b!3199882 (= res!1301867 (forall!7346 tokens!494 lambda!117113))))

(declare-fun b!3199883 () Bool)

(assert (=> b!3199883 (= e!1994818 e!1994820)))

(declare-fun res!1301870 () Bool)

(assert (=> b!3199883 (=> res!1301870 e!1994820)))

(assert (=> b!3199883 (= res!1301870 (or (not (= lt!1078826 lt!1078834)) (not (= lt!1078821 lt!1078834))))))

(declare-fun charsOf!3210 (Token!9754) BalanceConc!21140)

(assert (=> b!3199883 (= lt!1078834 (list!12819 (charsOf!3210 (h!41475 tokens!494))))))

(declare-fun b!3199884 () Bool)

(declare-fun res!1301858 () Bool)

(assert (=> b!3199884 (=> (not res!1301858) (not e!1994811))))

(assert (=> b!3199884 (= res!1301858 (rulesProduceIndividualToken!2275 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3199885 () Bool)

(assert (=> b!3199885 (= e!1994803 e!1994826)))

(declare-fun res!1301861 () Bool)

(assert (=> b!3199885 (=> res!1301861 e!1994826)))

(declare-fun usedCharacters!510 (Regex!9953) List!36177)

(assert (=> b!3199885 (= res!1301861 (contains!6411 (usedCharacters!510 (regex!5194 (rule!7630 separatorToken!241))) lt!1078836))))

(declare-fun head!7009 (List!36177) C!20092)

(assert (=> b!3199885 (= lt!1078836 (head!7009 lt!1078837))))

(assert (=> b!3199885 e!1994830))

(declare-fun res!1301863 () Bool)

(assert (=> b!3199885 (=> (not res!1301863) (not e!1994830))))

(declare-fun isDefined!5522 (Option!7083) Bool)

(assert (=> b!3199885 (= res!1301863 (isDefined!5522 lt!1078831))))

(declare-fun getRuleFromTag!899 (LexerInterface!4783 List!36178 String!40454) Option!7083)

(assert (=> b!3199885 (= lt!1078831 (getRuleFromTag!899 thiss!18206 rules!2135 (tag!5716 (rule!7630 separatorToken!241))))))

(declare-fun lt!1078816 () Unit!50458)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!899 (LexerInterface!4783 List!36178 List!36177 Token!9754) Unit!50458)

(assert (=> b!3199885 (= lt!1078816 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!899 thiss!18206 rules!2135 lt!1078837 separatorToken!241))))

(declare-datatypes ((tuple2!35432 0))(
  ( (tuple2!35433 (_1!20850 Token!9754) (_2!20850 List!36177)) )
))
(declare-datatypes ((Option!7084 0))(
  ( (None!7083) (Some!7083 (v!35613 tuple2!35432)) )
))
(declare-fun maxPrefixOneRule!1562 (LexerInterface!4783 Rule!10188 List!36177) Option!7084)

(declare-fun apply!8130 (TokenValueInjection!10276 BalanceConc!21140) TokenValue!5424)

(declare-fun size!27159 (List!36177) Int)

(assert (=> b!3199885 (= (maxPrefixOneRule!1562 thiss!18206 (rule!7630 (h!41475 tokens!494)) lt!1078834) (Some!7083 (tuple2!35433 (Token!9755 (apply!8130 (transformation!5194 (rule!7630 (h!41475 tokens!494))) lt!1078817) (rule!7630 (h!41475 tokens!494)) (size!27159 lt!1078834) lt!1078834) Nil!36053)))))

(declare-fun lt!1078818 () Unit!50458)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!675 (LexerInterface!4783 List!36178 List!36177 List!36177 List!36177 Rule!10188) Unit!50458)

(assert (=> b!3199885 (= lt!1078818 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!675 thiss!18206 rules!2135 lt!1078834 lt!1078834 Nil!36053 (rule!7630 (h!41475 tokens!494))))))

(declare-fun e!1994821 () Bool)

(assert (=> b!3199885 e!1994821))

(declare-fun res!1301860 () Bool)

(assert (=> b!3199885 (=> (not res!1301860) (not e!1994821))))

(declare-fun lt!1078819 () Option!7083)

(assert (=> b!3199885 (= res!1301860 (isDefined!5522 lt!1078819))))

(assert (=> b!3199885 (= lt!1078819 (getRuleFromTag!899 thiss!18206 rules!2135 (tag!5716 (rule!7630 (h!41475 tokens!494)))))))

(declare-fun lt!1078829 () Unit!50458)

(assert (=> b!3199885 (= lt!1078829 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!899 thiss!18206 rules!2135 lt!1078834 (h!41475 tokens!494)))))

(declare-fun lt!1078838 () Unit!50458)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!822 (LexerInterface!4783 List!36178 List!36179 Token!9754) Unit!50458)

(assert (=> b!3199885 (= lt!1078838 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!822 thiss!18206 rules!2135 tokens!494 (h!41475 tokens!494)))))

(declare-fun b!3199886 () Bool)

(declare-fun e!1994817 () Bool)

(declare-fun tp!1011360 () Bool)

(assert (=> b!3199886 (= e!1994817 (and tp!1011360 (inv!48907 (tag!5716 (h!41474 rules!2135))) (inv!48911 (transformation!5194 (h!41474 rules!2135))) e!1994812))))

(declare-fun b!3199887 () Bool)

(assert (=> b!3199887 (= e!1994821 e!1994804)))

(declare-fun res!1301859 () Bool)

(assert (=> b!3199887 (=> (not res!1301859) (not e!1994804))))

(assert (=> b!3199887 (= res!1301859 (matchR!4587 (regex!5194 lt!1078820) lt!1078834))))

(assert (=> b!3199887 (= lt!1078820 (get!11468 lt!1078819))))

(declare-fun b!3199888 () Bool)

(assert (=> b!3199888 (= e!1994815 e!1994816)))

(declare-fun res!1301872 () Bool)

(assert (=> b!3199888 (=> res!1301872 e!1994816)))

(declare-fun printWithSeparatorTokenList!128 (LexerInterface!4783 List!36179 Token!9754) List!36177)

(assert (=> b!3199888 (= res!1301872 (not (= lt!1078822 (++!8638 (++!8638 (list!12819 (charsOf!3210 (h!41475 (t!237378 tokens!494)))) lt!1078837) (printWithSeparatorTokenList!128 thiss!18206 (t!237378 (t!237378 tokens!494)) separatorToken!241)))))))

(assert (=> b!3199888 (= lt!1078825 (++!8638 lt!1078837 lt!1078822))))

(assert (=> b!3199888 (= lt!1078837 (list!12819 (charsOf!3210 separatorToken!241)))))

(assert (=> b!3199888 (= lt!1078822 (printWithSeparatorTokenList!128 thiss!18206 (t!237378 tokens!494) separatorToken!241))))

(assert (=> b!3199888 (= lt!1078824 (printWithSeparatorTokenList!128 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3199889 () Bool)

(declare-fun res!1301880 () Bool)

(assert (=> b!3199889 (=> (not res!1301880) (not e!1994811))))

(declare-fun rulesInvariant!4180 (LexerInterface!4783 List!36178) Bool)

(assert (=> b!3199889 (= res!1301880 (rulesInvariant!4180 thiss!18206 rules!2135))))

(declare-fun e!1994827 () Bool)

(assert (=> b!3199890 (= e!1994827 (and tp!1011354 tp!1011356))))

(declare-fun b!3199891 () Bool)

(declare-fun tp!1011362 () Bool)

(assert (=> b!3199891 (= e!1994807 (and tp!1011362 (inv!48907 (tag!5716 (rule!7630 separatorToken!241))) (inv!48911 (transformation!5194 (rule!7630 separatorToken!241))) e!1994827))))

(assert (=> b!3199892 (= e!1994822 (and tp!1011355 tp!1011350))))

(declare-fun b!3199893 () Bool)

(declare-fun res!1301879 () Bool)

(assert (=> b!3199893 (=> (not res!1301879) (not e!1994811))))

(assert (=> b!3199893 (= res!1301879 (and (not ((_ is Nil!36055) tokens!494)) (not ((_ is Nil!36055) (t!237378 tokens!494)))))))

(declare-fun b!3199894 () Bool)

(declare-fun tp!1011359 () Bool)

(assert (=> b!3199894 (= e!1994824 (and e!1994817 tp!1011359))))

(assert (= (and start!300422 res!1301877) b!3199865))

(assert (= (and b!3199865 res!1301871) b!3199889))

(assert (= (and b!3199889 res!1301880) b!3199869))

(assert (= (and b!3199869 res!1301876) b!3199884))

(assert (= (and b!3199884 res!1301858) b!3199877))

(assert (= (and b!3199877 res!1301874) b!3199882))

(assert (= (and b!3199882 res!1301867) b!3199878))

(assert (= (and b!3199878 res!1301878) b!3199893))

(assert (= (and b!3199893 res!1301879) b!3199881))

(assert (= (and b!3199881 (not res!1301865)) b!3199883))

(assert (= (and b!3199883 (not res!1301870)) b!3199879))

(assert (= (and b!3199879 (not res!1301868)) b!3199866))

(assert (= (and b!3199866 (not res!1301875)) b!3199874))

(assert (= (and b!3199874 (not res!1301869)) b!3199888))

(assert (= (and b!3199888 (not res!1301872)) b!3199863))

(assert (= (and b!3199863 (not res!1301862)) b!3199868))

(assert (= (and b!3199868 (not res!1301866)) b!3199885))

(assert (= (and b!3199885 res!1301860) b!3199887))

(assert (= (and b!3199887 res!1301859) b!3199880))

(assert (= (and b!3199885 res!1301863) b!3199876))

(assert (= (and b!3199876 res!1301873) b!3199872))

(assert (= (and b!3199885 (not res!1301861)) b!3199871))

(assert (= (and b!3199871 (not res!1301864)) b!3199875))

(assert (= b!3199886 b!3199864))

(assert (= b!3199894 b!3199886))

(assert (= (and start!300422 ((_ is Cons!36054) rules!2135)) b!3199894))

(assert (= b!3199873 b!3199892))

(assert (= b!3199867 b!3199873))

(assert (= b!3199870 b!3199867))

(assert (= (and start!300422 ((_ is Cons!36055) tokens!494)) b!3199870))

(assert (= b!3199891 b!3199890))

(assert (= b!3199862 b!3199891))

(assert (= start!300422 b!3199862))

(declare-fun m!3461755 () Bool)

(assert (=> b!3199866 m!3461755))

(declare-fun m!3461757 () Bool)

(assert (=> b!3199866 m!3461757))

(declare-fun m!3461759 () Bool)

(assert (=> b!3199866 m!3461759))

(declare-fun m!3461761 () Bool)

(assert (=> b!3199875 m!3461761))

(declare-fun m!3461763 () Bool)

(assert (=> b!3199884 m!3461763))

(declare-fun m!3461765 () Bool)

(assert (=> b!3199862 m!3461765))

(declare-fun m!3461767 () Bool)

(assert (=> b!3199876 m!3461767))

(declare-fun m!3461769 () Bool)

(assert (=> b!3199876 m!3461769))

(declare-fun m!3461771 () Bool)

(assert (=> b!3199888 m!3461771))

(declare-fun m!3461773 () Bool)

(assert (=> b!3199888 m!3461773))

(declare-fun m!3461775 () Bool)

(assert (=> b!3199888 m!3461775))

(declare-fun m!3461777 () Bool)

(assert (=> b!3199888 m!3461777))

(declare-fun m!3461779 () Bool)

(assert (=> b!3199888 m!3461779))

(declare-fun m!3461781 () Bool)

(assert (=> b!3199888 m!3461781))

(assert (=> b!3199888 m!3461771))

(assert (=> b!3199888 m!3461779))

(declare-fun m!3461783 () Bool)

(assert (=> b!3199888 m!3461783))

(assert (=> b!3199888 m!3461773))

(declare-fun m!3461785 () Bool)

(assert (=> b!3199888 m!3461785))

(assert (=> b!3199888 m!3461781))

(assert (=> b!3199888 m!3461783))

(declare-fun m!3461787 () Bool)

(assert (=> b!3199888 m!3461787))

(declare-fun m!3461789 () Bool)

(assert (=> b!3199888 m!3461789))

(declare-fun m!3461791 () Bool)

(assert (=> b!3199871 m!3461791))

(declare-fun m!3461793 () Bool)

(assert (=> b!3199868 m!3461793))

(declare-fun m!3461795 () Bool)

(assert (=> b!3199868 m!3461795))

(declare-fun m!3461797 () Bool)

(assert (=> b!3199863 m!3461797))

(assert (=> b!3199863 m!3461797))

(declare-fun m!3461799 () Bool)

(assert (=> b!3199863 m!3461799))

(declare-fun m!3461801 () Bool)

(assert (=> b!3199883 m!3461801))

(assert (=> b!3199883 m!3461801))

(declare-fun m!3461803 () Bool)

(assert (=> b!3199883 m!3461803))

(declare-fun m!3461805 () Bool)

(assert (=> b!3199874 m!3461805))

(declare-fun m!3461807 () Bool)

(assert (=> b!3199874 m!3461807))

(declare-fun m!3461809 () Bool)

(assert (=> b!3199886 m!3461809))

(declare-fun m!3461811 () Bool)

(assert (=> b!3199886 m!3461811))

(declare-fun m!3461813 () Bool)

(assert (=> b!3199885 m!3461813))

(declare-fun m!3461815 () Bool)

(assert (=> b!3199885 m!3461815))

(declare-fun m!3461817 () Bool)

(assert (=> b!3199885 m!3461817))

(declare-fun m!3461819 () Bool)

(assert (=> b!3199885 m!3461819))

(declare-fun m!3461821 () Bool)

(assert (=> b!3199885 m!3461821))

(declare-fun m!3461823 () Bool)

(assert (=> b!3199885 m!3461823))

(declare-fun m!3461825 () Bool)

(assert (=> b!3199885 m!3461825))

(declare-fun m!3461827 () Bool)

(assert (=> b!3199885 m!3461827))

(declare-fun m!3461829 () Bool)

(assert (=> b!3199885 m!3461829))

(declare-fun m!3461831 () Bool)

(assert (=> b!3199885 m!3461831))

(assert (=> b!3199885 m!3461815))

(declare-fun m!3461833 () Bool)

(assert (=> b!3199885 m!3461833))

(declare-fun m!3461835 () Bool)

(assert (=> b!3199885 m!3461835))

(declare-fun m!3461837 () Bool)

(assert (=> b!3199885 m!3461837))

(declare-fun m!3461839 () Bool)

(assert (=> b!3199885 m!3461839))

(declare-fun m!3461841 () Bool)

(assert (=> b!3199889 m!3461841))

(declare-fun m!3461843 () Bool)

(assert (=> b!3199873 m!3461843))

(declare-fun m!3461845 () Bool)

(assert (=> b!3199873 m!3461845))

(declare-fun m!3461847 () Bool)

(assert (=> b!3199878 m!3461847))

(declare-fun m!3461849 () Bool)

(assert (=> b!3199867 m!3461849))

(declare-fun m!3461851 () Bool)

(assert (=> b!3199870 m!3461851))

(declare-fun m!3461853 () Bool)

(assert (=> start!300422 m!3461853))

(declare-fun m!3461855 () Bool)

(assert (=> b!3199887 m!3461855))

(declare-fun m!3461857 () Bool)

(assert (=> b!3199887 m!3461857))

(declare-fun m!3461859 () Bool)

(assert (=> b!3199865 m!3461859))

(declare-fun m!3461861 () Bool)

(assert (=> b!3199879 m!3461861))

(declare-fun m!3461863 () Bool)

(assert (=> b!3199869 m!3461863))

(assert (=> b!3199869 m!3461863))

(declare-fun m!3461865 () Bool)

(assert (=> b!3199869 m!3461865))

(declare-fun m!3461867 () Bool)

(assert (=> b!3199882 m!3461867))

(declare-fun m!3461869 () Bool)

(assert (=> b!3199891 m!3461869))

(declare-fun m!3461871 () Bool)

(assert (=> b!3199891 m!3461871))

(declare-fun m!3461873 () Bool)

(assert (=> b!3199881 m!3461873))

(declare-fun m!3461875 () Bool)

(assert (=> b!3199881 m!3461875))

(declare-fun m!3461877 () Bool)

(assert (=> b!3199881 m!3461877))

(declare-fun m!3461879 () Bool)

(assert (=> b!3199881 m!3461879))

(declare-fun m!3461881 () Bool)

(assert (=> b!3199881 m!3461881))

(check-sat b_and!212671 b_and!212665 (not b!3199869) (not b!3199879) (not b!3199873) (not b!3199883) (not b!3199875) (not b_next!85687) (not b!3199889) (not b!3199876) b_and!212669 (not b!3199868) (not b_next!85683) (not b!3199862) (not b!3199866) (not b!3199884) b_and!212663 (not b!3199894) b_and!212673 (not b!3199888) (not b!3199867) (not b!3199865) (not b!3199871) (not b!3199891) (not b!3199870) (not b_next!85681) (not start!300422) (not b!3199881) (not b_next!85691) (not b_next!85689) (not b!3199878) (not b!3199885) (not b!3199874) (not b!3199882) (not b_next!85685) (not b!3199886) (not b!3199863) b_and!212667 (not b!3199887))
(check-sat b_and!212671 b_and!212665 (not b_next!85681) (not b_next!85685) (not b_next!85687) b_and!212669 b_and!212667 (not b_next!85683) b_and!212663 b_and!212673 (not b_next!85691) (not b_next!85689))

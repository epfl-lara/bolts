; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397582 () Bool)

(assert start!397582)

(declare-fun b!4170053 () Bool)

(declare-fun b_free!120599 () Bool)

(declare-fun b_next!121303 () Bool)

(assert (=> b!4170053 (= b_free!120599 (not b_next!121303))))

(declare-fun tp!1273910 () Bool)

(declare-fun b_and!325541 () Bool)

(assert (=> b!4170053 (= tp!1273910 b_and!325541)))

(declare-fun b_free!120601 () Bool)

(declare-fun b_next!121305 () Bool)

(assert (=> b!4170053 (= b_free!120601 (not b_next!121305))))

(declare-fun tp!1273908 () Bool)

(declare-fun b_and!325543 () Bool)

(assert (=> b!4170053 (= tp!1273908 b_and!325543)))

(declare-fun b!4170052 () Bool)

(declare-fun b_free!120603 () Bool)

(declare-fun b_next!121307 () Bool)

(assert (=> b!4170052 (= b_free!120603 (not b_next!121307))))

(declare-fun tp!1273911 () Bool)

(declare-fun b_and!325545 () Bool)

(assert (=> b!4170052 (= tp!1273911 b_and!325545)))

(declare-fun b_free!120605 () Bool)

(declare-fun b_next!121309 () Bool)

(assert (=> b!4170052 (= b_free!120605 (not b_next!121309))))

(declare-fun tp!1273916 () Bool)

(declare-fun b_and!325547 () Bool)

(assert (=> b!4170052 (= tp!1273916 b_and!325547)))

(declare-fun b!4170050 () Bool)

(declare-fun b_free!120607 () Bool)

(declare-fun b_next!121311 () Bool)

(assert (=> b!4170050 (= b_free!120607 (not b_next!121311))))

(declare-fun tp!1273918 () Bool)

(declare-fun b_and!325549 () Bool)

(assert (=> b!4170050 (= tp!1273918 b_and!325549)))

(declare-fun b_free!120609 () Bool)

(declare-fun b_next!121313 () Bool)

(assert (=> b!4170050 (= b_free!120609 (not b_next!121313))))

(declare-fun tp!1273913 () Bool)

(declare-fun b_and!325551 () Bool)

(assert (=> b!4170050 (= tp!1273913 b_and!325551)))

(declare-fun b!4170039 () Bool)

(declare-fun e!2588801 () Bool)

(assert (=> b!4170039 (= e!2588801 (not true))))

(declare-datatypes ((C!25140 0))(
  ( (C!25141 (val!14732 Int)) )
))
(declare-datatypes ((List!45803 0))(
  ( (Nil!45679) (Cons!45679 (h!51099 C!25140) (t!344314 List!45803)) )
))
(declare-fun input!3342 () List!45803)

(declare-fun isPrefix!4427 (List!45803 List!45803) Bool)

(assert (=> b!4170039 (isPrefix!4427 input!3342 input!3342)))

(declare-datatypes ((Unit!64748 0))(
  ( (Unit!64749) )
))
(declare-fun lt!1485128 () Unit!64748)

(declare-fun lemmaIsPrefixRefl!2856 (List!45803 List!45803) Unit!64748)

(assert (=> b!4170039 (= lt!1485128 (lemmaIsPrefixRefl!2856 input!3342 input!3342))))

(declare-fun lt!1485127 () Unit!64748)

(declare-datatypes ((List!45804 0))(
  ( (Nil!45680) (Cons!45680 (h!51100 (_ BitVec 16)) (t!344315 List!45804)) )
))
(declare-datatypes ((TokenValue!7800 0))(
  ( (FloatLiteralValue!15600 (text!55045 List!45804)) (TokenValueExt!7799 (__x!27821 Int)) (Broken!39000 (value!236256 List!45804)) (Object!7923) (End!7800) (Def!7800) (Underscore!7800) (Match!7800) (Else!7800) (Error!7800) (Case!7800) (If!7800) (Extends!7800) (Abstract!7800) (Class!7800) (Val!7800) (DelimiterValue!15600 (del!7860 List!45804)) (KeywordValue!7806 (value!236257 List!45804)) (CommentValue!15600 (value!236258 List!45804)) (WhitespaceValue!15600 (value!236259 List!45804)) (IndentationValue!7800 (value!236260 List!45804)) (String!52865) (Int32!7800) (Broken!39001 (value!236261 List!45804)) (Boolean!7801) (Unit!64750) (OperatorValue!7803 (op!7860 List!45804)) (IdentifierValue!15600 (value!236262 List!45804)) (IdentifierValue!15601 (value!236263 List!45804)) (WhitespaceValue!15601 (value!236264 List!45804)) (True!15600) (False!15600) (Broken!39002 (value!236265 List!45804)) (Broken!39003 (value!236266 List!45804)) (True!15601) (RightBrace!7800) (RightBracket!7800) (Colon!7800) (Null!7800) (Comma!7800) (LeftBracket!7800) (False!15601) (LeftBrace!7800) (ImaginaryLiteralValue!7800 (text!55046 List!45804)) (StringLiteralValue!23400 (value!236267 List!45804)) (EOFValue!7800 (value!236268 List!45804)) (IdentValue!7800 (value!236269 List!45804)) (DelimiterValue!15601 (value!236270 List!45804)) (DedentValue!7800 (value!236271 List!45804)) (NewLineValue!7800 (value!236272 List!45804)) (IntegerValue!23400 (value!236273 (_ BitVec 32)) (text!55047 List!45804)) (IntegerValue!23401 (value!236274 Int) (text!55048 List!45804)) (Times!7800) (Or!7800) (Equal!7800) (Minus!7800) (Broken!39004 (value!236275 List!45804)) (And!7800) (Div!7800) (LessEqual!7800) (Mod!7800) (Concat!20275) (Not!7800) (Plus!7800) (SpaceValue!7800 (value!236276 List!45804)) (IntegerValue!23402 (value!236277 Int) (text!55049 List!45804)) (StringLiteralValue!23401 (text!55050 List!45804)) (FloatLiteralValue!15601 (text!55051 List!45804)) (BytesLiteralValue!7800 (value!236278 List!45804)) (CommentValue!15601 (value!236279 List!45804)) (StringLiteralValue!23402 (value!236280 List!45804)) (ErrorTokenValue!7800 (msg!7861 List!45804)) )
))
(declare-datatypes ((String!52866 0))(
  ( (String!52867 (value!236281 String)) )
))
(declare-datatypes ((IArray!27567 0))(
  ( (IArray!27568 (innerList!13841 List!45803)) )
))
(declare-datatypes ((Conc!13781 0))(
  ( (Node!13781 (left!34052 Conc!13781) (right!34382 Conc!13781) (csize!27792 Int) (cheight!13992 Int)) (Leaf!21309 (xs!17087 IArray!27567) (csize!27793 Int)) (Empty!13781) )
))
(declare-datatypes ((BalanceConc!27156 0))(
  ( (BalanceConc!27157 (c!712838 Conc!13781)) )
))
(declare-datatypes ((Regex!12475 0))(
  ( (ElementMatch!12475 (c!712839 C!25140)) (Concat!20276 (regOne!25462 Regex!12475) (regTwo!25462 Regex!12475)) (EmptyExpr!12475) (Star!12475 (reg!12804 Regex!12475)) (EmptyLang!12475) (Union!12475 (regOne!25463 Regex!12475) (regTwo!25463 Regex!12475)) )
))
(declare-datatypes ((TokenValueInjection!15028 0))(
  ( (TokenValueInjection!15029 (toValue!10250 Int) (toChars!10109 Int)) )
))
(declare-datatypes ((Rule!14940 0))(
  ( (Rule!14941 (regex!7570 Regex!12475) (tag!8434 String!52866) (isSeparator!7570 Bool) (transformation!7570 TokenValueInjection!15028)) )
))
(declare-fun r!4142 () Rule!14940)

(declare-fun p!2959 () List!45803)

(declare-fun lemmaSemiInverse!2336 (TokenValueInjection!15028 BalanceConc!27156) Unit!64748)

(declare-fun seqFromList!5595 (List!45803) BalanceConc!27156)

(assert (=> b!4170039 (= lt!1485127 (lemmaSemiInverse!2336 (transformation!7570 r!4142) (seqFromList!5595 p!2959)))))

(declare-fun b!4170040 () Bool)

(declare-fun e!2588796 () Bool)

(declare-fun tp_is_empty!21913 () Bool)

(declare-fun tp!1273920 () Bool)

(assert (=> b!4170040 (= e!2588796 (and tp_is_empty!21913 tp!1273920))))

(declare-fun b!4170041 () Bool)

(declare-fun e!2588804 () Bool)

(declare-fun tp!1273919 () Bool)

(assert (=> b!4170041 (= e!2588804 (and tp_is_empty!21913 tp!1273919))))

(declare-fun tp!1273912 () Bool)

(declare-fun e!2588806 () Bool)

(declare-fun e!2588799 () Bool)

(declare-fun rBis!167 () Rule!14940)

(declare-fun b!4170042 () Bool)

(declare-fun inv!60208 (String!52866) Bool)

(declare-fun inv!60210 (TokenValueInjection!15028) Bool)

(assert (=> b!4170042 (= e!2588806 (and tp!1273912 (inv!60208 (tag!8434 rBis!167)) (inv!60210 (transformation!7570 rBis!167)) e!2588799))))

(declare-fun b!4170043 () Bool)

(declare-fun res!1708610 () Bool)

(assert (=> b!4170043 (=> (not res!1708610) (not e!2588801))))

(declare-datatypes ((List!45805 0))(
  ( (Nil!45681) (Cons!45681 (h!51101 Rule!14940) (t!344316 List!45805)) )
))
(declare-fun rules!3843 () List!45805)

(declare-fun contains!9371 (List!45805 Rule!14940) Bool)

(assert (=> b!4170043 (= res!1708610 (contains!9371 rules!3843 r!4142))))

(declare-fun b!4170044 () Bool)

(declare-fun res!1708604 () Bool)

(assert (=> b!4170044 (=> (not res!1708604) (not e!2588801))))

(declare-fun pBis!107 () List!45803)

(assert (=> b!4170044 (= res!1708604 (isPrefix!4427 pBis!107 input!3342))))

(declare-fun b!4170045 () Bool)

(declare-fun res!1708605 () Bool)

(assert (=> b!4170045 (=> (not res!1708605) (not e!2588801))))

(declare-datatypes ((LexerInterface!7163 0))(
  ( (LexerInterfaceExt!7160 (__x!27822 Int)) (Lexer!7161) )
))
(declare-fun thiss!25986 () LexerInterface!7163)

(declare-fun rulesInvariant!6376 (LexerInterface!7163 List!45805) Bool)

(assert (=> b!4170045 (= res!1708605 (rulesInvariant!6376 thiss!25986 rules!3843))))

(declare-fun b!4170046 () Bool)

(declare-fun res!1708606 () Bool)

(assert (=> b!4170046 (=> (not res!1708606) (not e!2588801))))

(declare-fun isEmpty!27029 (List!45805) Bool)

(assert (=> b!4170046 (= res!1708606 (not (isEmpty!27029 rules!3843)))))

(declare-fun e!2588795 () Bool)

(declare-fun b!4170047 () Bool)

(declare-fun tp!1273914 () Bool)

(declare-fun e!2588808 () Bool)

(assert (=> b!4170047 (= e!2588795 (and tp!1273914 (inv!60208 (tag!8434 r!4142)) (inv!60210 (transformation!7570 r!4142)) e!2588808))))

(declare-fun b!4170048 () Bool)

(declare-fun res!1708609 () Bool)

(assert (=> b!4170048 (=> (not res!1708609) (not e!2588801))))

(assert (=> b!4170048 (= res!1708609 (isPrefix!4427 p!2959 input!3342))))

(declare-fun b!4170049 () Bool)

(declare-fun e!2588807 () Bool)

(declare-fun tp!1273917 () Bool)

(assert (=> b!4170049 (= e!2588807 (and tp_is_empty!21913 tp!1273917))))

(assert (=> b!4170050 (= e!2588808 (and tp!1273918 tp!1273913))))

(declare-fun b!4170051 () Bool)

(declare-fun e!2588802 () Bool)

(declare-fun e!2588803 () Bool)

(declare-fun tp!1273915 () Bool)

(assert (=> b!4170051 (= e!2588802 (and e!2588803 tp!1273915))))

(declare-fun e!2588800 () Bool)

(assert (=> b!4170052 (= e!2588800 (and tp!1273911 tp!1273916))))

(assert (=> b!4170053 (= e!2588799 (and tp!1273910 tp!1273908))))

(declare-fun b!4170054 () Bool)

(declare-fun res!1708603 () Bool)

(assert (=> b!4170054 (=> (not res!1708603) (not e!2588801))))

(declare-fun validRegex!5592 (Regex!12475) Bool)

(assert (=> b!4170054 (= res!1708603 (validRegex!5592 (regex!7570 r!4142)))))

(declare-fun b!4170055 () Bool)

(declare-fun res!1708608 () Bool)

(assert (=> b!4170055 (=> (not res!1708608) (not e!2588801))))

(declare-fun ruleValid!3288 (LexerInterface!7163 Rule!14940) Bool)

(assert (=> b!4170055 (= res!1708608 (ruleValid!3288 thiss!25986 r!4142))))

(declare-fun b!4170056 () Bool)

(declare-fun res!1708611 () Bool)

(assert (=> b!4170056 (=> (not res!1708611) (not e!2588801))))

(assert (=> b!4170056 (= res!1708611 (contains!9371 rules!3843 rBis!167))))

(declare-fun res!1708612 () Bool)

(assert (=> start!397582 (=> (not res!1708612) (not e!2588801))))

(get-info :version)

(assert (=> start!397582 (= res!1708612 ((_ is Lexer!7161) thiss!25986))))

(assert (=> start!397582 e!2588801))

(assert (=> start!397582 true))

(assert (=> start!397582 e!2588806))

(assert (=> start!397582 e!2588795))

(assert (=> start!397582 e!2588802))

(assert (=> start!397582 e!2588804))

(assert (=> start!397582 e!2588807))

(assert (=> start!397582 e!2588796))

(declare-fun tp!1273909 () Bool)

(declare-fun b!4170057 () Bool)

(assert (=> b!4170057 (= e!2588803 (and tp!1273909 (inv!60208 (tag!8434 (h!51101 rules!3843))) (inv!60210 (transformation!7570 (h!51101 rules!3843))) e!2588800))))

(declare-fun b!4170058 () Bool)

(declare-fun res!1708607 () Bool)

(assert (=> b!4170058 (=> (not res!1708607) (not e!2588801))))

(declare-fun matchR!6214 (Regex!12475 List!45803) Bool)

(assert (=> b!4170058 (= res!1708607 (matchR!6214 (regex!7570 r!4142) p!2959))))

(assert (= (and start!397582 res!1708612) b!4170048))

(assert (= (and b!4170048 res!1708609) b!4170044))

(assert (= (and b!4170044 res!1708604) b!4170046))

(assert (= (and b!4170046 res!1708606) b!4170045))

(assert (= (and b!4170045 res!1708605) b!4170043))

(assert (= (and b!4170043 res!1708610) b!4170056))

(assert (= (and b!4170056 res!1708611) b!4170054))

(assert (= (and b!4170054 res!1708603) b!4170058))

(assert (= (and b!4170058 res!1708607) b!4170055))

(assert (= (and b!4170055 res!1708608) b!4170039))

(assert (= b!4170042 b!4170053))

(assert (= start!397582 b!4170042))

(assert (= b!4170047 b!4170050))

(assert (= start!397582 b!4170047))

(assert (= b!4170057 b!4170052))

(assert (= b!4170051 b!4170057))

(assert (= (and start!397582 ((_ is Cons!45681) rules!3843)) b!4170051))

(assert (= (and start!397582 ((_ is Cons!45679) input!3342)) b!4170041))

(assert (= (and start!397582 ((_ is Cons!45679) pBis!107)) b!4170049))

(assert (= (and start!397582 ((_ is Cons!45679) p!2959)) b!4170040))

(declare-fun m!4760849 () Bool)

(assert (=> b!4170057 m!4760849))

(declare-fun m!4760851 () Bool)

(assert (=> b!4170057 m!4760851))

(declare-fun m!4760853 () Bool)

(assert (=> b!4170055 m!4760853))

(declare-fun m!4760855 () Bool)

(assert (=> b!4170046 m!4760855))

(declare-fun m!4760857 () Bool)

(assert (=> b!4170056 m!4760857))

(declare-fun m!4760859 () Bool)

(assert (=> b!4170043 m!4760859))

(declare-fun m!4760861 () Bool)

(assert (=> b!4170042 m!4760861))

(declare-fun m!4760863 () Bool)

(assert (=> b!4170042 m!4760863))

(declare-fun m!4760865 () Bool)

(assert (=> b!4170039 m!4760865))

(declare-fun m!4760867 () Bool)

(assert (=> b!4170039 m!4760867))

(declare-fun m!4760869 () Bool)

(assert (=> b!4170039 m!4760869))

(assert (=> b!4170039 m!4760869))

(declare-fun m!4760871 () Bool)

(assert (=> b!4170039 m!4760871))

(declare-fun m!4760873 () Bool)

(assert (=> b!4170048 m!4760873))

(declare-fun m!4760875 () Bool)

(assert (=> b!4170045 m!4760875))

(declare-fun m!4760877 () Bool)

(assert (=> b!4170047 m!4760877))

(declare-fun m!4760879 () Bool)

(assert (=> b!4170047 m!4760879))

(declare-fun m!4760881 () Bool)

(assert (=> b!4170054 m!4760881))

(declare-fun m!4760883 () Bool)

(assert (=> b!4170058 m!4760883))

(declare-fun m!4760885 () Bool)

(assert (=> b!4170044 m!4760885))

(check-sat b_and!325545 (not b!4170041) b_and!325547 (not b!4170054) (not b!4170047) (not b_next!121311) (not b_next!121309) (not b!4170039) (not b!4170045) (not b!4170043) (not b_next!121313) (not b_next!121307) (not b!4170048) b_and!325543 (not b!4170044) (not b_next!121305) b_and!325551 tp_is_empty!21913 (not b!4170057) b_and!325541 (not b!4170042) (not b!4170049) (not b!4170056) (not b!4170058) b_and!325549 (not b!4170040) (not b!4170046) (not b!4170055) (not b_next!121303) (not b!4170051))
(check-sat b_and!325545 b_and!325543 b_and!325547 b_and!325541 (not b_next!121311) b_and!325549 (not b_next!121309) (not b_next!121313) (not b_next!121307) (not b_next!121303) (not b_next!121305) b_and!325551)

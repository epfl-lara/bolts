; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402782 () Bool)

(assert start!402782)

(declare-fun b!4214871 () Bool)

(declare-fun b_free!123595 () Bool)

(declare-fun b_next!124299 () Bool)

(assert (=> b!4214871 (= b_free!123595 (not b_next!124299))))

(declare-fun tp!1289273 () Bool)

(declare-fun b_and!331965 () Bool)

(assert (=> b!4214871 (= tp!1289273 b_and!331965)))

(declare-fun b_free!123597 () Bool)

(declare-fun b_next!124301 () Bool)

(assert (=> b!4214871 (= b_free!123597 (not b_next!124301))))

(declare-fun tp!1289261 () Bool)

(declare-fun b_and!331967 () Bool)

(assert (=> b!4214871 (= tp!1289261 b_and!331967)))

(declare-fun b!4214884 () Bool)

(declare-fun b_free!123599 () Bool)

(declare-fun b_next!124303 () Bool)

(assert (=> b!4214884 (= b_free!123599 (not b_next!124303))))

(declare-fun tp!1289264 () Bool)

(declare-fun b_and!331969 () Bool)

(assert (=> b!4214884 (= tp!1289264 b_and!331969)))

(declare-fun b_free!123601 () Bool)

(declare-fun b_next!124305 () Bool)

(assert (=> b!4214884 (= b_free!123601 (not b_next!124305))))

(declare-fun tp!1289272 () Bool)

(declare-fun b_and!331971 () Bool)

(assert (=> b!4214884 (= tp!1289272 b_and!331971)))

(declare-fun b!4214852 () Bool)

(declare-fun b_free!123603 () Bool)

(declare-fun b_next!124307 () Bool)

(assert (=> b!4214852 (= b_free!123603 (not b_next!124307))))

(declare-fun tp!1289265 () Bool)

(declare-fun b_and!331973 () Bool)

(assert (=> b!4214852 (= tp!1289265 b_and!331973)))

(declare-fun b_free!123605 () Bool)

(declare-fun b_next!124309 () Bool)

(assert (=> b!4214852 (= b_free!123605 (not b_next!124309))))

(declare-fun tp!1289274 () Bool)

(declare-fun b_and!331975 () Bool)

(assert (=> b!4214852 (= tp!1289274 b_and!331975)))

(declare-fun b!4214879 () Bool)

(declare-fun b_free!123607 () Bool)

(declare-fun b_next!124311 () Bool)

(assert (=> b!4214879 (= b_free!123607 (not b_next!124311))))

(declare-fun tp!1289266 () Bool)

(declare-fun b_and!331977 () Bool)

(assert (=> b!4214879 (= tp!1289266 b_and!331977)))

(declare-fun b_free!123609 () Bool)

(declare-fun b_next!124313 () Bool)

(assert (=> b!4214879 (= b_free!123609 (not b_next!124313))))

(declare-fun tp!1289279 () Bool)

(declare-fun b_and!331979 () Bool)

(assert (=> b!4214879 (= tp!1289279 b_and!331979)))

(declare-fun e!2616693 () Bool)

(assert (=> b!4214852 (= e!2616693 (and tp!1289265 tp!1289274))))

(declare-fun b!4214853 () Bool)

(declare-fun e!2616685 () Bool)

(declare-fun e!2616688 () Bool)

(assert (=> b!4214853 (= e!2616685 (not e!2616688))))

(declare-fun res!1731833 () Bool)

(assert (=> b!4214853 (=> res!1731833 e!2616688)))

(declare-datatypes ((List!46487 0))(
  ( (Nil!46363) (Cons!46363 (h!51783 (_ BitVec 16)) (t!348266 List!46487)) )
))
(declare-datatypes ((TokenValue!7998 0))(
  ( (FloatLiteralValue!15996 (text!56431 List!46487)) (TokenValueExt!7997 (__x!28219 Int)) (Broken!39990 (value!241891 List!46487)) (Object!8121) (End!7998) (Def!7998) (Underscore!7998) (Match!7998) (Else!7998) (Error!7998) (Case!7998) (If!7998) (Extends!7998) (Abstract!7998) (Class!7998) (Val!7998) (DelimiterValue!15996 (del!8058 List!46487)) (KeywordValue!8004 (value!241892 List!46487)) (CommentValue!15996 (value!241893 List!46487)) (WhitespaceValue!15996 (value!241894 List!46487)) (IndentationValue!7998 (value!241895 List!46487)) (String!53859) (Int32!7998) (Broken!39991 (value!241896 List!46487)) (Boolean!7999) (Unit!65502) (OperatorValue!8001 (op!8058 List!46487)) (IdentifierValue!15996 (value!241897 List!46487)) (IdentifierValue!15997 (value!241898 List!46487)) (WhitespaceValue!15997 (value!241899 List!46487)) (True!15996) (False!15996) (Broken!39992 (value!241900 List!46487)) (Broken!39993 (value!241901 List!46487)) (True!15997) (RightBrace!7998) (RightBracket!7998) (Colon!7998) (Null!7998) (Comma!7998) (LeftBracket!7998) (False!15997) (LeftBrace!7998) (ImaginaryLiteralValue!7998 (text!56432 List!46487)) (StringLiteralValue!23994 (value!241902 List!46487)) (EOFValue!7998 (value!241903 List!46487)) (IdentValue!7998 (value!241904 List!46487)) (DelimiterValue!15997 (value!241905 List!46487)) (DedentValue!7998 (value!241906 List!46487)) (NewLineValue!7998 (value!241907 List!46487)) (IntegerValue!23994 (value!241908 (_ BitVec 32)) (text!56433 List!46487)) (IntegerValue!23995 (value!241909 Int) (text!56434 List!46487)) (Times!7998) (Or!7998) (Equal!7998) (Minus!7998) (Broken!39994 (value!241910 List!46487)) (And!7998) (Div!7998) (LessEqual!7998) (Mod!7998) (Concat!20671) (Not!7998) (Plus!7998) (SpaceValue!7998 (value!241911 List!46487)) (IntegerValue!23996 (value!241912 Int) (text!56435 List!46487)) (StringLiteralValue!23995 (text!56436 List!46487)) (FloatLiteralValue!15997 (text!56437 List!46487)) (BytesLiteralValue!7998 (value!241913 List!46487)) (CommentValue!15997 (value!241914 List!46487)) (StringLiteralValue!23996 (value!241915 List!46487)) (ErrorTokenValue!7998 (msg!8059 List!46487)) )
))
(declare-datatypes ((C!25540 0))(
  ( (C!25541 (val!14932 Int)) )
))
(declare-datatypes ((List!46488 0))(
  ( (Nil!46364) (Cons!46364 (h!51784 C!25540) (t!348267 List!46488)) )
))
(declare-datatypes ((IArray!27963 0))(
  ( (IArray!27964 (innerList!14039 List!46488)) )
))
(declare-datatypes ((Regex!12673 0))(
  ( (ElementMatch!12673 (c!717664 C!25540)) (Concat!20672 (regOne!25858 Regex!12673) (regTwo!25858 Regex!12673)) (EmptyExpr!12673) (Star!12673 (reg!13002 Regex!12673)) (EmptyLang!12673) (Union!12673 (regOne!25859 Regex!12673) (regTwo!25859 Regex!12673)) )
))
(declare-datatypes ((Conc!13979 0))(
  ( (Node!13979 (left!34502 Conc!13979) (right!34832 Conc!13979) (csize!28188 Int) (cheight!14190 Int)) (Leaf!21607 (xs!17285 IArray!27963) (csize!28189 Int)) (Empty!13979) )
))
(declare-datatypes ((BalanceConc!27552 0))(
  ( (BalanceConc!27553 (c!717665 Conc!13979)) )
))
(declare-datatypes ((String!53860 0))(
  ( (String!53861 (value!241916 String)) )
))
(declare-datatypes ((TokenValueInjection!15424 0))(
  ( (TokenValueInjection!15425 (toValue!10488 Int) (toChars!10347 Int)) )
))
(declare-datatypes ((Rule!15336 0))(
  ( (Rule!15337 (regex!7768 Regex!12673) (tag!8632 String!53860) (isSeparator!7768 Bool) (transformation!7768 TokenValueInjection!15424)) )
))
(declare-datatypes ((Token!14238 0))(
  ( (Token!14239 (value!241917 TokenValue!7998) (rule!10890 Rule!15336) (size!34045 Int) (originalCharacters!8150 List!46488)) )
))
(declare-fun tBis!41 () Token!14238)

(declare-datatypes ((LexerInterface!7363 0))(
  ( (LexerInterfaceExt!7360 (__x!28220 Int)) (Lexer!7361) )
))
(declare-fun thiss!26544 () LexerInterface!7363)

(declare-fun rBis!178 () Rule!15336)

(declare-fun input!3517 () List!46488)

(declare-fun suffixBis!41 () List!46488)

(declare-datatypes ((tuple2!44094 0))(
  ( (tuple2!44095 (_1!25181 Token!14238) (_2!25181 List!46488)) )
))
(declare-datatypes ((Option!9956 0))(
  ( (None!9955) (Some!9955 (v!40833 tuple2!44094)) )
))
(declare-fun maxPrefixOneRule!3358 (LexerInterface!7363 Rule!15336 List!46488) Option!9956)

(assert (=> b!4214853 (= res!1731833 (not (= (maxPrefixOneRule!3358 thiss!26544 rBis!178 input!3517) (Some!9955 (tuple2!44095 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4627 (List!46488 List!46488) Bool)

(assert (=> b!4214853 (isPrefix!4627 input!3517 input!3517)))

(declare-datatypes ((Unit!65503 0))(
  ( (Unit!65504) )
))
(declare-fun lt!1500064 () Unit!65503)

(declare-fun lemmaIsPrefixRefl!3044 (List!46488 List!46488) Unit!65503)

(assert (=> b!4214853 (= lt!1500064 (lemmaIsPrefixRefl!3044 input!3517 input!3517))))

(declare-fun b!4214854 () Bool)

(declare-fun res!1731838 () Bool)

(declare-fun e!2616679 () Bool)

(assert (=> b!4214854 (=> (not res!1731838) (not e!2616679))))

(declare-datatypes ((List!46489 0))(
  ( (Nil!46365) (Cons!46365 (h!51785 Rule!15336) (t!348268 List!46489)) )
))
(declare-fun rules!3967 () List!46489)

(declare-fun isEmpty!27462 (List!46489) Bool)

(assert (=> b!4214854 (= res!1731838 (not (isEmpty!27462 rules!3967)))))

(declare-fun b!4214855 () Bool)

(declare-fun res!1731839 () Bool)

(assert (=> b!4214855 (=> res!1731839 e!2616688)))

(assert (=> b!4214855 (= res!1731839 (not (= (rule!10890 tBis!41) rBis!178)))))

(declare-fun res!1731845 () Bool)

(assert (=> start!402782 (=> (not res!1731845) (not e!2616679))))

(get-info :version)

(assert (=> start!402782 (= res!1731845 ((_ is Lexer!7361) thiss!26544))))

(assert (=> start!402782 e!2616679))

(declare-fun e!2616683 () Bool)

(declare-fun inv!60998 (Token!14238) Bool)

(assert (=> start!402782 (and (inv!60998 tBis!41) e!2616683)))

(assert (=> start!402782 true))

(declare-fun e!2616686 () Bool)

(assert (=> start!402782 e!2616686))

(declare-fun e!2616676 () Bool)

(assert (=> start!402782 e!2616676))

(declare-fun e!2616675 () Bool)

(assert (=> start!402782 e!2616675))

(declare-fun e!2616682 () Bool)

(assert (=> start!402782 e!2616682))

(declare-fun t!8364 () Token!14238)

(declare-fun e!2616677 () Bool)

(assert (=> start!402782 (and (inv!60998 t!8364) e!2616677)))

(declare-fun e!2616684 () Bool)

(assert (=> start!402782 e!2616684))

(declare-fun e!2616674 () Bool)

(assert (=> start!402782 e!2616674))

(declare-fun e!2616691 () Bool)

(assert (=> start!402782 e!2616691))

(declare-fun b!4214856 () Bool)

(declare-fun res!1731834 () Bool)

(assert (=> b!4214856 (=> res!1731834 e!2616688)))

(declare-fun pBis!121 () List!46488)

(declare-fun ++!11842 (List!46488 List!46488) List!46488)

(assert (=> b!4214856 (= res!1731834 (not (= (++!11842 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4214857 () Bool)

(declare-fun tp_is_empty!22313 () Bool)

(declare-fun tp!1289262 () Bool)

(assert (=> b!4214857 (= e!2616691 (and tp_is_empty!22313 tp!1289262))))

(declare-fun e!2616692 () Bool)

(declare-fun e!2616689 () Bool)

(declare-fun tp!1289269 () Bool)

(declare-fun b!4214858 () Bool)

(declare-fun inv!60995 (String!53860) Bool)

(declare-fun inv!60999 (TokenValueInjection!15424) Bool)

(assert (=> b!4214858 (= e!2616692 (and tp!1289269 (inv!60995 (tag!8632 (rule!10890 t!8364))) (inv!60999 (transformation!7768 (rule!10890 t!8364))) e!2616689))))

(declare-fun b!4214859 () Bool)

(declare-fun tp!1289280 () Bool)

(assert (=> b!4214859 (= e!2616684 (and tp_is_empty!22313 tp!1289280))))

(declare-fun b!4214860 () Bool)

(declare-fun res!1731841 () Bool)

(assert (=> b!4214860 (=> (not res!1731841) (not e!2616679))))

(declare-fun contains!9589 (List!46489 Rule!15336) Bool)

(assert (=> b!4214860 (= res!1731841 (contains!9589 rules!3967 rBis!178))))

(declare-fun e!2616673 () Bool)

(declare-fun tp!1289263 () Bool)

(declare-fun b!4214861 () Bool)

(assert (=> b!4214861 (= e!2616686 (and tp!1289263 (inv!60995 (tag!8632 rBis!178)) (inv!60999 (transformation!7768 rBis!178)) e!2616673))))

(declare-fun b!4214862 () Bool)

(declare-fun res!1731842 () Bool)

(assert (=> b!4214862 (=> (not res!1731842) (not e!2616685))))

(declare-fun ruleValid!3480 (LexerInterface!7363 Rule!15336) Bool)

(assert (=> b!4214862 (= res!1731842 (ruleValid!3480 thiss!26544 rBis!178))))

(declare-fun b!4214863 () Bool)

(declare-fun tp!1289268 () Bool)

(declare-fun e!2616694 () Bool)

(declare-fun inv!21 (TokenValue!7998) Bool)

(assert (=> b!4214863 (= e!2616683 (and (inv!21 (value!241917 tBis!41)) e!2616694 tp!1289268))))

(declare-fun b!4214864 () Bool)

(declare-fun res!1731840 () Bool)

(assert (=> b!4214864 (=> res!1731840 e!2616688)))

(declare-fun list!16769 (BalanceConc!27552) List!46488)

(declare-fun charsOf!5191 (Token!14238) BalanceConc!27552)

(assert (=> b!4214864 (= res!1731840 (not (= (list!16769 (charsOf!5191 tBis!41)) pBis!121)))))

(declare-fun b!4214865 () Bool)

(declare-fun res!1731837 () Bool)

(assert (=> b!4214865 (=> res!1731837 e!2616688)))

(assert (=> b!4214865 (= res!1731837 (or (and ((_ is Cons!46365) rules!3967) ((_ is Nil!46365) (t!348268 rules!3967))) (not ((_ is Cons!46365) rules!3967)) (= (h!51785 rules!3967) rBis!178)))))

(declare-fun b!4214866 () Bool)

(declare-fun res!1731843 () Bool)

(declare-fun e!2616678 () Bool)

(assert (=> b!4214866 (=> res!1731843 e!2616678)))

(declare-fun lt!1500065 () List!46488)

(assert (=> b!4214866 (= res!1731843 (not (isPrefix!4627 lt!1500065 input!3517)))))

(declare-fun b!4214867 () Bool)

(declare-fun tp!1289276 () Bool)

(assert (=> b!4214867 (= e!2616682 (and tp_is_empty!22313 tp!1289276))))

(declare-fun b!4214868 () Bool)

(declare-fun e!2616680 () Unit!65503)

(declare-fun Unit!65505 () Unit!65503)

(assert (=> b!4214868 (= e!2616680 Unit!65505)))

(declare-fun lt!1500069 () Unit!65503)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!626 (LexerInterface!7363 Rule!15336 List!46489 List!46488) Unit!65503)

(assert (=> b!4214868 (= lt!1500069 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!626 thiss!26544 rBis!178 (t!348268 rules!3967) input!3517))))

(assert (=> b!4214868 false))

(declare-fun b!4214869 () Bool)

(declare-fun res!1731836 () Bool)

(assert (=> b!4214869 (=> (not res!1731836) (not e!2616679))))

(declare-fun rulesInvariant!6574 (LexerInterface!7363 List!46489) Bool)

(assert (=> b!4214869 (= res!1731836 (rulesInvariant!6574 thiss!26544 rules!3967))))

(declare-fun b!4214870 () Bool)

(declare-fun Unit!65506 () Unit!65503)

(assert (=> b!4214870 (= e!2616680 Unit!65506)))

(assert (=> b!4214871 (= e!2616689 (and tp!1289273 tp!1289261))))

(declare-fun b!4214872 () Bool)

(assert (=> b!4214872 (= e!2616678 (not (isEmpty!27462 (t!348268 rules!3967))))))

(declare-fun tp!1289267 () Bool)

(declare-fun b!4214873 () Bool)

(assert (=> b!4214873 (= e!2616694 (and tp!1289267 (inv!60995 (tag!8632 (rule!10890 tBis!41))) (inv!60999 (transformation!7768 (rule!10890 tBis!41))) e!2616693))))

(declare-fun tp!1289277 () Bool)

(declare-fun b!4214874 () Bool)

(assert (=> b!4214874 (= e!2616677 (and (inv!21 (value!241917 t!8364)) e!2616692 tp!1289277))))

(declare-fun b!4214875 () Bool)

(declare-fun res!1731829 () Bool)

(assert (=> b!4214875 (=> (not res!1731829) (not e!2616679))))

(declare-fun p!3001 () List!46488)

(assert (=> b!4214875 (= res!1731829 (isPrefix!4627 p!3001 input!3517))))

(declare-fun e!2616687 () Bool)

(declare-fun e!2616681 () Bool)

(declare-fun b!4214876 () Bool)

(declare-fun tp!1289275 () Bool)

(assert (=> b!4214876 (= e!2616687 (and tp!1289275 (inv!60995 (tag!8632 (h!51785 rules!3967))) (inv!60999 (transformation!7768 (h!51785 rules!3967))) e!2616681))))

(declare-fun b!4214877 () Bool)

(declare-fun res!1731830 () Bool)

(assert (=> b!4214877 (=> res!1731830 e!2616688)))

(declare-fun lt!1500061 () Option!9956)

(assert (=> b!4214877 (= res!1731830 (not (= (maxPrefixOneRule!3358 thiss!26544 (h!51785 rules!3967) input!3517) lt!1500061)))))

(declare-fun b!4214878 () Bool)

(declare-fun tp!1289271 () Bool)

(assert (=> b!4214878 (= e!2616674 (and tp_is_empty!22313 tp!1289271))))

(assert (=> b!4214879 (= e!2616681 (and tp!1289266 tp!1289279))))

(declare-fun b!4214880 () Bool)

(assert (=> b!4214880 (= e!2616679 e!2616685)))

(declare-fun res!1731831 () Bool)

(assert (=> b!4214880 (=> (not res!1731831) (not e!2616685))))

(declare-fun maxPrefix!4403 (LexerInterface!7363 List!46489 List!46488) Option!9956)

(assert (=> b!4214880 (= res!1731831 (= (maxPrefix!4403 thiss!26544 rules!3967 input!3517) lt!1500061))))

(declare-fun suffix!1557 () List!46488)

(assert (=> b!4214880 (= lt!1500061 (Some!9955 (tuple2!44095 t!8364 suffix!1557)))))

(declare-fun b!4214881 () Bool)

(declare-fun res!1731832 () Bool)

(assert (=> b!4214881 (=> (not res!1731832) (not e!2616679))))

(assert (=> b!4214881 (= res!1731832 (= (++!11842 p!3001 suffix!1557) input!3517))))

(declare-fun b!4214882 () Bool)

(declare-fun tp!1289278 () Bool)

(assert (=> b!4214882 (= e!2616675 (and e!2616687 tp!1289278))))

(declare-fun b!4214883 () Bool)

(assert (=> b!4214883 (= e!2616688 e!2616678)))

(declare-fun res!1731835 () Bool)

(assert (=> b!4214883 (=> res!1731835 e!2616678)))

(declare-fun lt!1500066 () List!46488)

(assert (=> b!4214883 (= res!1731835 (not (= lt!1500066 input!3517)))))

(assert (=> b!4214883 (rulesInvariant!6574 thiss!26544 (t!348268 rules!3967))))

(declare-fun lt!1500062 () Unit!65503)

(declare-fun lemmaInvariantOnRulesThenOnTail!858 (LexerInterface!7363 Rule!15336 List!46489) Unit!65503)

(assert (=> b!4214883 (= lt!1500062 (lemmaInvariantOnRulesThenOnTail!858 thiss!26544 (h!51785 rules!3967) (t!348268 rules!3967)))))

(assert (=> b!4214883 (isPrefix!4627 lt!1500065 lt!1500066)))

(declare-fun lt!1500070 () tuple2!44094)

(assert (=> b!4214883 (= lt!1500066 (++!11842 lt!1500065 (_2!25181 lt!1500070)))))

(declare-fun lt!1500063 () Unit!65503)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3082 (List!46488 List!46488) Unit!65503)

(assert (=> b!4214883 (= lt!1500063 (lemmaConcatTwoListThenFirstIsPrefix!3082 lt!1500065 (_2!25181 lt!1500070)))))

(assert (=> b!4214883 (= lt!1500065 (list!16769 (charsOf!5191 (_1!25181 lt!1500070))))))

(declare-fun lt!1500068 () Option!9956)

(declare-fun get!15086 (Option!9956) tuple2!44094)

(assert (=> b!4214883 (= lt!1500070 (get!15086 lt!1500068))))

(declare-fun lt!1500067 () Unit!65503)

(assert (=> b!4214883 (= lt!1500067 e!2616680)))

(declare-fun c!717663 () Bool)

(declare-fun isEmpty!27463 (Option!9956) Bool)

(assert (=> b!4214883 (= c!717663 (isEmpty!27463 lt!1500068))))

(assert (=> b!4214883 (= lt!1500068 (maxPrefix!4403 thiss!26544 (t!348268 rules!3967) input!3517))))

(assert (=> b!4214884 (= e!2616673 (and tp!1289264 tp!1289272))))

(declare-fun b!4214885 () Bool)

(declare-fun tp!1289270 () Bool)

(assert (=> b!4214885 (= e!2616676 (and tp_is_empty!22313 tp!1289270))))

(declare-fun b!4214886 () Bool)

(declare-fun res!1731844 () Bool)

(assert (=> b!4214886 (=> (not res!1731844) (not e!2616679))))

(assert (=> b!4214886 (= res!1731844 (isPrefix!4627 pBis!121 input!3517))))

(assert (= (and start!402782 res!1731845) b!4214881))

(assert (= (and b!4214881 res!1731832) b!4214875))

(assert (= (and b!4214875 res!1731829) b!4214886))

(assert (= (and b!4214886 res!1731844) b!4214854))

(assert (= (and b!4214854 res!1731838) b!4214869))

(assert (= (and b!4214869 res!1731836) b!4214860))

(assert (= (and b!4214860 res!1731841) b!4214880))

(assert (= (and b!4214880 res!1731831) b!4214862))

(assert (= (and b!4214862 res!1731842) b!4214853))

(assert (= (and b!4214853 (not res!1731833)) b!4214855))

(assert (= (and b!4214855 (not res!1731839)) b!4214864))

(assert (= (and b!4214864 (not res!1731840)) b!4214856))

(assert (= (and b!4214856 (not res!1731834)) b!4214865))

(assert (= (and b!4214865 (not res!1731837)) b!4214877))

(assert (= (and b!4214877 (not res!1731830)) b!4214883))

(assert (= (and b!4214883 c!717663) b!4214868))

(assert (= (and b!4214883 (not c!717663)) b!4214870))

(assert (= (and b!4214883 (not res!1731835)) b!4214866))

(assert (= (and b!4214866 (not res!1731843)) b!4214872))

(assert (= b!4214873 b!4214852))

(assert (= b!4214863 b!4214873))

(assert (= start!402782 b!4214863))

(assert (= b!4214861 b!4214884))

(assert (= start!402782 b!4214861))

(assert (= (and start!402782 ((_ is Cons!46364) p!3001)) b!4214885))

(assert (= b!4214876 b!4214879))

(assert (= b!4214882 b!4214876))

(assert (= (and start!402782 ((_ is Cons!46365) rules!3967)) b!4214882))

(assert (= (and start!402782 ((_ is Cons!46364) input!3517)) b!4214867))

(assert (= b!4214858 b!4214871))

(assert (= b!4214874 b!4214858))

(assert (= start!402782 b!4214874))

(assert (= (and start!402782 ((_ is Cons!46364) pBis!121)) b!4214859))

(assert (= (and start!402782 ((_ is Cons!46364) suffix!1557)) b!4214878))

(assert (= (and start!402782 ((_ is Cons!46364) suffixBis!41)) b!4214857))

(declare-fun m!4802647 () Bool)

(assert (=> b!4214861 m!4802647))

(declare-fun m!4802649 () Bool)

(assert (=> b!4214861 m!4802649))

(declare-fun m!4802651 () Bool)

(assert (=> b!4214880 m!4802651))

(declare-fun m!4802653 () Bool)

(assert (=> b!4214858 m!4802653))

(declare-fun m!4802655 () Bool)

(assert (=> b!4214858 m!4802655))

(declare-fun m!4802657 () Bool)

(assert (=> start!402782 m!4802657))

(declare-fun m!4802659 () Bool)

(assert (=> start!402782 m!4802659))

(declare-fun m!4802661 () Bool)

(assert (=> b!4214864 m!4802661))

(assert (=> b!4214864 m!4802661))

(declare-fun m!4802663 () Bool)

(assert (=> b!4214864 m!4802663))

(declare-fun m!4802665 () Bool)

(assert (=> b!4214854 m!4802665))

(declare-fun m!4802667 () Bool)

(assert (=> b!4214868 m!4802667))

(declare-fun m!4802669 () Bool)

(assert (=> b!4214886 m!4802669))

(declare-fun m!4802671 () Bool)

(assert (=> b!4214866 m!4802671))

(declare-fun m!4802673 () Bool)

(assert (=> b!4214883 m!4802673))

(declare-fun m!4802675 () Bool)

(assert (=> b!4214883 m!4802675))

(declare-fun m!4802677 () Bool)

(assert (=> b!4214883 m!4802677))

(declare-fun m!4802679 () Bool)

(assert (=> b!4214883 m!4802679))

(assert (=> b!4214883 m!4802677))

(declare-fun m!4802681 () Bool)

(assert (=> b!4214883 m!4802681))

(declare-fun m!4802683 () Bool)

(assert (=> b!4214883 m!4802683))

(declare-fun m!4802685 () Bool)

(assert (=> b!4214883 m!4802685))

(declare-fun m!4802687 () Bool)

(assert (=> b!4214883 m!4802687))

(declare-fun m!4802689 () Bool)

(assert (=> b!4214883 m!4802689))

(declare-fun m!4802691 () Bool)

(assert (=> b!4214883 m!4802691))

(declare-fun m!4802693 () Bool)

(assert (=> b!4214853 m!4802693))

(declare-fun m!4802695 () Bool)

(assert (=> b!4214853 m!4802695))

(declare-fun m!4802697 () Bool)

(assert (=> b!4214853 m!4802697))

(declare-fun m!4802699 () Bool)

(assert (=> b!4214860 m!4802699))

(declare-fun m!4802701 () Bool)

(assert (=> b!4214872 m!4802701))

(declare-fun m!4802703 () Bool)

(assert (=> b!4214877 m!4802703))

(declare-fun m!4802705 () Bool)

(assert (=> b!4214856 m!4802705))

(declare-fun m!4802707 () Bool)

(assert (=> b!4214863 m!4802707))

(declare-fun m!4802709 () Bool)

(assert (=> b!4214876 m!4802709))

(declare-fun m!4802711 () Bool)

(assert (=> b!4214876 m!4802711))

(declare-fun m!4802713 () Bool)

(assert (=> b!4214869 m!4802713))

(declare-fun m!4802715 () Bool)

(assert (=> b!4214875 m!4802715))

(declare-fun m!4802717 () Bool)

(assert (=> b!4214862 m!4802717))

(declare-fun m!4802719 () Bool)

(assert (=> b!4214873 m!4802719))

(declare-fun m!4802721 () Bool)

(assert (=> b!4214873 m!4802721))

(declare-fun m!4802723 () Bool)

(assert (=> b!4214881 m!4802723))

(declare-fun m!4802725 () Bool)

(assert (=> b!4214874 m!4802725))

(check-sat (not b_next!124311) (not b!4214864) (not b!4214886) (not b_next!124313) (not b!4214873) b_and!331967 (not b!4214853) (not b!4214854) (not b!4214858) (not b!4214875) (not b_next!124309) (not b!4214860) b_and!331971 tp_is_empty!22313 (not b!4214866) (not b!4214862) (not b_next!124303) (not b!4214883) (not b!4214861) (not b!4214869) (not b!4214872) b_and!331975 (not b_next!124299) b_and!331969 (not b!4214857) (not b_next!124301) (not b!4214856) b_and!331965 (not b!4214874) (not b!4214863) (not b!4214881) (not b!4214877) (not b!4214885) (not b!4214867) (not b!4214868) (not b!4214880) (not b!4214878) (not b!4214882) b_and!331977 (not b_next!124305) b_and!331979 (not b_next!124307) b_and!331973 (not b!4214859) (not start!402782) (not b!4214876))
(check-sat (not b_next!124311) b_and!331971 (not b_next!124303) (not b_next!124313) b_and!331967 b_and!331969 (not b_next!124301) b_and!331965 (not b_next!124309) b_and!331977 b_and!331975 (not b_next!124299) (not b_next!124305) b_and!331979 (not b_next!124307) b_and!331973)
(get-model)

(declare-fun b!4214942 () Bool)

(declare-fun e!2616734 () Bool)

(declare-fun inv!16 (TokenValue!7998) Bool)

(assert (=> b!4214942 (= e!2616734 (inv!16 (value!241917 t!8364)))))

(declare-fun b!4214943 () Bool)

(declare-fun res!1731889 () Bool)

(declare-fun e!2616733 () Bool)

(assert (=> b!4214943 (=> res!1731889 e!2616733)))

(assert (=> b!4214943 (= res!1731889 (not ((_ is IntegerValue!23996) (value!241917 t!8364))))))

(declare-fun e!2616735 () Bool)

(assert (=> b!4214943 (= e!2616735 e!2616733)))

(declare-fun b!4214941 () Bool)

(declare-fun inv!17 (TokenValue!7998) Bool)

(assert (=> b!4214941 (= e!2616735 (inv!17 (value!241917 t!8364)))))

(declare-fun d!1241694 () Bool)

(declare-fun c!717676 () Bool)

(assert (=> d!1241694 (= c!717676 ((_ is IntegerValue!23994) (value!241917 t!8364)))))

(assert (=> d!1241694 (= (inv!21 (value!241917 t!8364)) e!2616734)))

(declare-fun b!4214944 () Bool)

(assert (=> b!4214944 (= e!2616734 e!2616735)))

(declare-fun c!717677 () Bool)

(assert (=> b!4214944 (= c!717677 ((_ is IntegerValue!23995) (value!241917 t!8364)))))

(declare-fun b!4214945 () Bool)

(declare-fun inv!15 (TokenValue!7998) Bool)

(assert (=> b!4214945 (= e!2616733 (inv!15 (value!241917 t!8364)))))

(assert (= (and d!1241694 c!717676) b!4214942))

(assert (= (and d!1241694 (not c!717676)) b!4214944))

(assert (= (and b!4214944 c!717677) b!4214941))

(assert (= (and b!4214944 (not c!717677)) b!4214943))

(assert (= (and b!4214943 (not res!1731889)) b!4214945))

(declare-fun m!4802761 () Bool)

(assert (=> b!4214942 m!4802761))

(declare-fun m!4802765 () Bool)

(assert (=> b!4214941 m!4802765))

(declare-fun m!4802769 () Bool)

(assert (=> b!4214945 m!4802769))

(assert (=> b!4214874 d!1241694))

(declare-fun b!4214949 () Bool)

(declare-fun e!2616738 () Bool)

(assert (=> b!4214949 (= e!2616738 (inv!16 (value!241917 tBis!41)))))

(declare-fun b!4214950 () Bool)

(declare-fun res!1731892 () Bool)

(declare-fun e!2616737 () Bool)

(assert (=> b!4214950 (=> res!1731892 e!2616737)))

(assert (=> b!4214950 (= res!1731892 (not ((_ is IntegerValue!23996) (value!241917 tBis!41))))))

(declare-fun e!2616739 () Bool)

(assert (=> b!4214950 (= e!2616739 e!2616737)))

(declare-fun b!4214948 () Bool)

(assert (=> b!4214948 (= e!2616739 (inv!17 (value!241917 tBis!41)))))

(declare-fun d!1241700 () Bool)

(declare-fun c!717678 () Bool)

(assert (=> d!1241700 (= c!717678 ((_ is IntegerValue!23994) (value!241917 tBis!41)))))

(assert (=> d!1241700 (= (inv!21 (value!241917 tBis!41)) e!2616738)))

(declare-fun b!4214951 () Bool)

(assert (=> b!4214951 (= e!2616738 e!2616739)))

(declare-fun c!717679 () Bool)

(assert (=> b!4214951 (= c!717679 ((_ is IntegerValue!23995) (value!241917 tBis!41)))))

(declare-fun b!4214952 () Bool)

(assert (=> b!4214952 (= e!2616737 (inv!15 (value!241917 tBis!41)))))

(assert (= (and d!1241700 c!717678) b!4214949))

(assert (= (and d!1241700 (not c!717678)) b!4214951))

(assert (= (and b!4214951 c!717679) b!4214948))

(assert (= (and b!4214951 (not c!717679)) b!4214950))

(assert (= (and b!4214950 (not res!1731892)) b!4214952))

(declare-fun m!4802771 () Bool)

(assert (=> b!4214949 m!4802771))

(declare-fun m!4802773 () Bool)

(assert (=> b!4214948 m!4802773))

(declare-fun m!4802775 () Bool)

(assert (=> b!4214952 m!4802775))

(assert (=> b!4214863 d!1241700))

(declare-fun d!1241702 () Bool)

(declare-fun list!16770 (Conc!13979) List!46488)

(assert (=> d!1241702 (= (list!16769 (charsOf!5191 tBis!41)) (list!16770 (c!717665 (charsOf!5191 tBis!41))))))

(declare-fun bs!597494 () Bool)

(assert (= bs!597494 d!1241702))

(declare-fun m!4802789 () Bool)

(assert (=> bs!597494 m!4802789))

(assert (=> b!4214864 d!1241702))

(declare-fun d!1241708 () Bool)

(declare-fun lt!1500079 () BalanceConc!27552)

(assert (=> d!1241708 (= (list!16769 lt!1500079) (originalCharacters!8150 tBis!41))))

(declare-fun dynLambda!19978 (Int TokenValue!7998) BalanceConc!27552)

(assert (=> d!1241708 (= lt!1500079 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (value!241917 tBis!41)))))

(assert (=> d!1241708 (= (charsOf!5191 tBis!41) lt!1500079)))

(declare-fun b_lambda!124151 () Bool)

(assert (=> (not b_lambda!124151) (not d!1241708)))

(declare-fun tb!252995 () Bool)

(declare-fun t!348286 () Bool)

(assert (=> (and b!4214871 (= (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41)))) t!348286) tb!252995))

(declare-fun b!4214958 () Bool)

(declare-fun e!2616743 () Bool)

(declare-fun tp!1289287 () Bool)

(declare-fun inv!61002 (Conc!13979) Bool)

(assert (=> b!4214958 (= e!2616743 (and (inv!61002 (c!717665 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (value!241917 tBis!41)))) tp!1289287))))

(declare-fun result!308358 () Bool)

(declare-fun inv!61003 (BalanceConc!27552) Bool)

(assert (=> tb!252995 (= result!308358 (and (inv!61003 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (value!241917 tBis!41))) e!2616743))))

(assert (= tb!252995 b!4214958))

(declare-fun m!4802791 () Bool)

(assert (=> b!4214958 m!4802791))

(declare-fun m!4802793 () Bool)

(assert (=> tb!252995 m!4802793))

(assert (=> d!1241708 t!348286))

(declare-fun b_and!331997 () Bool)

(assert (= b_and!331967 (and (=> t!348286 result!308358) b_and!331997)))

(declare-fun tb!252997 () Bool)

(declare-fun t!348288 () Bool)

(assert (=> (and b!4214884 (= (toChars!10347 (transformation!7768 rBis!178)) (toChars!10347 (transformation!7768 (rule!10890 tBis!41)))) t!348288) tb!252997))

(declare-fun result!308362 () Bool)

(assert (= result!308362 result!308358))

(assert (=> d!1241708 t!348288))

(declare-fun b_and!331999 () Bool)

(assert (= b_and!331971 (and (=> t!348288 result!308362) b_and!331999)))

(declare-fun t!348290 () Bool)

(declare-fun tb!252999 () Bool)

(assert (=> (and b!4214852 (= (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41)))) t!348290) tb!252999))

(declare-fun result!308364 () Bool)

(assert (= result!308364 result!308358))

(assert (=> d!1241708 t!348290))

(declare-fun b_and!332001 () Bool)

(assert (= b_and!331975 (and (=> t!348290 result!308364) b_and!332001)))

(declare-fun t!348292 () Bool)

(declare-fun tb!253001 () Bool)

(assert (=> (and b!4214879 (= (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41)))) t!348292) tb!253001))

(declare-fun result!308366 () Bool)

(assert (= result!308366 result!308358))

(assert (=> d!1241708 t!348292))

(declare-fun b_and!332003 () Bool)

(assert (= b_and!331979 (and (=> t!348292 result!308366) b_and!332003)))

(declare-fun m!4802795 () Bool)

(assert (=> d!1241708 m!4802795))

(declare-fun m!4802797 () Bool)

(assert (=> d!1241708 m!4802797))

(assert (=> b!4214864 d!1241708))

(declare-fun d!1241710 () Bool)

(declare-fun e!2616791 () Bool)

(assert (=> d!1241710 e!2616791))

(declare-fun res!1731968 () Bool)

(assert (=> d!1241710 (=> res!1731968 e!2616791)))

(declare-fun lt!1500141 () Option!9956)

(assert (=> d!1241710 (= res!1731968 (isEmpty!27463 lt!1500141))))

(declare-fun e!2616792 () Option!9956)

(assert (=> d!1241710 (= lt!1500141 e!2616792)))

(declare-fun c!717691 () Bool)

(declare-datatypes ((tuple2!44098 0))(
  ( (tuple2!44099 (_1!25183 List!46488) (_2!25183 List!46488)) )
))
(declare-fun lt!1500139 () tuple2!44098)

(declare-fun isEmpty!27465 (List!46488) Bool)

(assert (=> d!1241710 (= c!717691 (isEmpty!27465 (_1!25183 lt!1500139)))))

(declare-fun findLongestMatch!1566 (Regex!12673 List!46488) tuple2!44098)

(assert (=> d!1241710 (= lt!1500139 (findLongestMatch!1566 (regex!7768 rBis!178) input!3517))))

(assert (=> d!1241710 (ruleValid!3480 thiss!26544 rBis!178)))

(assert (=> d!1241710 (= (maxPrefixOneRule!3358 thiss!26544 rBis!178 input!3517) lt!1500141)))

(declare-fun b!4215055 () Bool)

(declare-fun e!2616790 () Bool)

(declare-fun size!34048 (List!46488) Int)

(assert (=> b!4215055 (= e!2616790 (= (size!34045 (_1!25181 (get!15086 lt!1500141))) (size!34048 (originalCharacters!8150 (_1!25181 (get!15086 lt!1500141))))))))

(declare-fun b!4215056 () Bool)

(declare-fun e!2616789 () Bool)

(declare-fun matchR!6372 (Regex!12673 List!46488) Bool)

(declare-fun findLongestMatchInner!1653 (Regex!12673 List!46488 Int List!46488 List!46488 Int) tuple2!44098)

(assert (=> b!4215056 (= e!2616789 (matchR!6372 (regex!7768 rBis!178) (_1!25183 (findLongestMatchInner!1653 (regex!7768 rBis!178) Nil!46364 (size!34048 Nil!46364) input!3517 input!3517 (size!34048 input!3517)))))))

(declare-fun b!4215057 () Bool)

(assert (=> b!4215057 (= e!2616792 None!9955)))

(declare-fun b!4215058 () Bool)

(declare-fun res!1731967 () Bool)

(assert (=> b!4215058 (=> (not res!1731967) (not e!2616790))))

(assert (=> b!4215058 (= res!1731967 (= (rule!10890 (_1!25181 (get!15086 lt!1500141))) rBis!178))))

(declare-fun b!4215059 () Bool)

(declare-fun res!1731966 () Bool)

(assert (=> b!4215059 (=> (not res!1731966) (not e!2616790))))

(declare-fun apply!10693 (TokenValueInjection!15424 BalanceConc!27552) TokenValue!7998)

(declare-fun seqFromList!5753 (List!46488) BalanceConc!27552)

(assert (=> b!4215059 (= res!1731966 (= (value!241917 (_1!25181 (get!15086 lt!1500141))) (apply!10693 (transformation!7768 (rule!10890 (_1!25181 (get!15086 lt!1500141)))) (seqFromList!5753 (originalCharacters!8150 (_1!25181 (get!15086 lt!1500141)))))))))

(declare-fun b!4215060 () Bool)

(assert (=> b!4215060 (= e!2616791 e!2616790)))

(declare-fun res!1731972 () Bool)

(assert (=> b!4215060 (=> (not res!1731972) (not e!2616790))))

(assert (=> b!4215060 (= res!1731972 (matchR!6372 (regex!7768 rBis!178) (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500141))))))))

(declare-fun b!4215061 () Bool)

(declare-fun res!1731969 () Bool)

(assert (=> b!4215061 (=> (not res!1731969) (not e!2616790))))

(assert (=> b!4215061 (= res!1731969 (< (size!34048 (_2!25181 (get!15086 lt!1500141))) (size!34048 input!3517)))))

(declare-fun b!4215062 () Bool)

(declare-fun res!1731970 () Bool)

(assert (=> b!4215062 (=> (not res!1731970) (not e!2616790))))

(assert (=> b!4215062 (= res!1731970 (= (++!11842 (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500141)))) (_2!25181 (get!15086 lt!1500141))) input!3517))))

(declare-fun b!4215063 () Bool)

(declare-fun size!34049 (BalanceConc!27552) Int)

(assert (=> b!4215063 (= e!2616792 (Some!9955 (tuple2!44095 (Token!14239 (apply!10693 (transformation!7768 rBis!178) (seqFromList!5753 (_1!25183 lt!1500139))) rBis!178 (size!34049 (seqFromList!5753 (_1!25183 lt!1500139))) (_1!25183 lt!1500139)) (_2!25183 lt!1500139))))))

(declare-fun lt!1500140 () Unit!65503)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1626 (Regex!12673 List!46488) Unit!65503)

(assert (=> b!4215063 (= lt!1500140 (longestMatchIsAcceptedByMatchOrIsEmpty!1626 (regex!7768 rBis!178) input!3517))))

(declare-fun res!1731971 () Bool)

(assert (=> b!4215063 (= res!1731971 (isEmpty!27465 (_1!25183 (findLongestMatchInner!1653 (regex!7768 rBis!178) Nil!46364 (size!34048 Nil!46364) input!3517 input!3517 (size!34048 input!3517)))))))

(assert (=> b!4215063 (=> res!1731971 e!2616789)))

(assert (=> b!4215063 e!2616789))

(declare-fun lt!1500138 () Unit!65503)

(assert (=> b!4215063 (= lt!1500138 lt!1500140)))

(declare-fun lt!1500137 () Unit!65503)

(declare-fun lemmaSemiInverse!2494 (TokenValueInjection!15424 BalanceConc!27552) Unit!65503)

(assert (=> b!4215063 (= lt!1500137 (lemmaSemiInverse!2494 (transformation!7768 rBis!178) (seqFromList!5753 (_1!25183 lt!1500139))))))

(assert (= (and d!1241710 c!717691) b!4215057))

(assert (= (and d!1241710 (not c!717691)) b!4215063))

(assert (= (and b!4215063 (not res!1731971)) b!4215056))

(assert (= (and d!1241710 (not res!1731968)) b!4215060))

(assert (= (and b!4215060 res!1731972) b!4215062))

(assert (= (and b!4215062 res!1731970) b!4215061))

(assert (= (and b!4215061 res!1731969) b!4215058))

(assert (= (and b!4215058 res!1731967) b!4215059))

(assert (= (and b!4215059 res!1731966) b!4215055))

(declare-fun m!4802947 () Bool)

(assert (=> b!4215056 m!4802947))

(declare-fun m!4802949 () Bool)

(assert (=> b!4215056 m!4802949))

(assert (=> b!4215056 m!4802947))

(assert (=> b!4215056 m!4802949))

(declare-fun m!4802951 () Bool)

(assert (=> b!4215056 m!4802951))

(declare-fun m!4802953 () Bool)

(assert (=> b!4215056 m!4802953))

(declare-fun m!4802955 () Bool)

(assert (=> b!4215058 m!4802955))

(assert (=> b!4215055 m!4802955))

(declare-fun m!4802961 () Bool)

(assert (=> b!4215055 m!4802961))

(declare-fun m!4802965 () Bool)

(assert (=> b!4215063 m!4802965))

(declare-fun m!4802967 () Bool)

(assert (=> b!4215063 m!4802967))

(declare-fun m!4802969 () Bool)

(assert (=> b!4215063 m!4802969))

(assert (=> b!4215063 m!4802947))

(assert (=> b!4215063 m!4802949))

(assert (=> b!4215063 m!4802951))

(assert (=> b!4215063 m!4802965))

(declare-fun m!4802971 () Bool)

(assert (=> b!4215063 m!4802971))

(assert (=> b!4215063 m!4802949))

(assert (=> b!4215063 m!4802947))

(assert (=> b!4215063 m!4802965))

(declare-fun m!4802973 () Bool)

(assert (=> b!4215063 m!4802973))

(declare-fun m!4802975 () Bool)

(assert (=> b!4215063 m!4802975))

(assert (=> b!4215063 m!4802965))

(assert (=> b!4215061 m!4802955))

(declare-fun m!4802977 () Bool)

(assert (=> b!4215061 m!4802977))

(assert (=> b!4215061 m!4802949))

(assert (=> b!4215059 m!4802955))

(declare-fun m!4802979 () Bool)

(assert (=> b!4215059 m!4802979))

(assert (=> b!4215059 m!4802979))

(declare-fun m!4802981 () Bool)

(assert (=> b!4215059 m!4802981))

(assert (=> b!4215060 m!4802955))

(declare-fun m!4802983 () Bool)

(assert (=> b!4215060 m!4802983))

(assert (=> b!4215060 m!4802983))

(declare-fun m!4802985 () Bool)

(assert (=> b!4215060 m!4802985))

(assert (=> b!4215060 m!4802985))

(declare-fun m!4802987 () Bool)

(assert (=> b!4215060 m!4802987))

(declare-fun m!4802989 () Bool)

(assert (=> d!1241710 m!4802989))

(declare-fun m!4802991 () Bool)

(assert (=> d!1241710 m!4802991))

(declare-fun m!4802993 () Bool)

(assert (=> d!1241710 m!4802993))

(assert (=> d!1241710 m!4802717))

(assert (=> b!4215062 m!4802955))

(assert (=> b!4215062 m!4802983))

(assert (=> b!4215062 m!4802983))

(assert (=> b!4215062 m!4802985))

(assert (=> b!4215062 m!4802985))

(declare-fun m!4802995 () Bool)

(assert (=> b!4215062 m!4802995))

(assert (=> b!4214853 d!1241710))

(declare-fun d!1241756 () Bool)

(declare-fun e!2616820 () Bool)

(assert (=> d!1241756 e!2616820))

(declare-fun res!1732003 () Bool)

(assert (=> d!1241756 (=> res!1732003 e!2616820)))

(declare-fun lt!1500148 () Bool)

(assert (=> d!1241756 (= res!1732003 (not lt!1500148))))

(declare-fun e!2616819 () Bool)

(assert (=> d!1241756 (= lt!1500148 e!2616819)))

(declare-fun res!1732004 () Bool)

(assert (=> d!1241756 (=> res!1732004 e!2616819)))

(assert (=> d!1241756 (= res!1732004 ((_ is Nil!46364) input!3517))))

(assert (=> d!1241756 (= (isPrefix!4627 input!3517 input!3517) lt!1500148)))

(declare-fun b!4215101 () Bool)

(declare-fun res!1732005 () Bool)

(declare-fun e!2616818 () Bool)

(assert (=> b!4215101 (=> (not res!1732005) (not e!2616818))))

(declare-fun head!8942 (List!46488) C!25540)

(assert (=> b!4215101 (= res!1732005 (= (head!8942 input!3517) (head!8942 input!3517)))))

(declare-fun b!4215100 () Bool)

(assert (=> b!4215100 (= e!2616819 e!2616818)))

(declare-fun res!1732006 () Bool)

(assert (=> b!4215100 (=> (not res!1732006) (not e!2616818))))

(assert (=> b!4215100 (= res!1732006 (not ((_ is Nil!46364) input!3517)))))

(declare-fun b!4215103 () Bool)

(assert (=> b!4215103 (= e!2616820 (>= (size!34048 input!3517) (size!34048 input!3517)))))

(declare-fun b!4215102 () Bool)

(declare-fun tail!6789 (List!46488) List!46488)

(assert (=> b!4215102 (= e!2616818 (isPrefix!4627 (tail!6789 input!3517) (tail!6789 input!3517)))))

(assert (= (and d!1241756 (not res!1732004)) b!4215100))

(assert (= (and b!4215100 res!1732006) b!4215101))

(assert (= (and b!4215101 res!1732005) b!4215102))

(assert (= (and d!1241756 (not res!1732003)) b!4215103))

(declare-fun m!4803013 () Bool)

(assert (=> b!4215101 m!4803013))

(assert (=> b!4215101 m!4803013))

(assert (=> b!4215103 m!4802949))

(assert (=> b!4215103 m!4802949))

(declare-fun m!4803015 () Bool)

(assert (=> b!4215102 m!4803015))

(assert (=> b!4215102 m!4803015))

(assert (=> b!4215102 m!4803015))

(assert (=> b!4215102 m!4803015))

(declare-fun m!4803017 () Bool)

(assert (=> b!4215102 m!4803017))

(assert (=> b!4214853 d!1241756))

(declare-fun d!1241764 () Bool)

(assert (=> d!1241764 (isPrefix!4627 input!3517 input!3517)))

(declare-fun lt!1500151 () Unit!65503)

(declare-fun choose!25820 (List!46488 List!46488) Unit!65503)

(assert (=> d!1241764 (= lt!1500151 (choose!25820 input!3517 input!3517))))

(assert (=> d!1241764 (= (lemmaIsPrefixRefl!3044 input!3517 input!3517) lt!1500151)))

(declare-fun bs!597500 () Bool)

(assert (= bs!597500 d!1241764))

(assert (=> bs!597500 m!4802695))

(declare-fun m!4803019 () Bool)

(assert (=> bs!597500 m!4803019))

(assert (=> b!4214853 d!1241764))

(declare-fun d!1241766 () Bool)

(declare-fun res!1732011 () Bool)

(declare-fun e!2616823 () Bool)

(assert (=> d!1241766 (=> (not res!1732011) (not e!2616823))))

(declare-fun validRegex!5750 (Regex!12673) Bool)

(assert (=> d!1241766 (= res!1732011 (validRegex!5750 (regex!7768 rBis!178)))))

(assert (=> d!1241766 (= (ruleValid!3480 thiss!26544 rBis!178) e!2616823)))

(declare-fun b!4215108 () Bool)

(declare-fun res!1732012 () Bool)

(assert (=> b!4215108 (=> (not res!1732012) (not e!2616823))))

(declare-fun nullable!4463 (Regex!12673) Bool)

(assert (=> b!4215108 (= res!1732012 (not (nullable!4463 (regex!7768 rBis!178))))))

(declare-fun b!4215109 () Bool)

(assert (=> b!4215109 (= e!2616823 (not (= (tag!8632 rBis!178) (String!53861 ""))))))

(assert (= (and d!1241766 res!1732011) b!4215108))

(assert (= (and b!4215108 res!1732012) b!4215109))

(declare-fun m!4803021 () Bool)

(assert (=> d!1241766 m!4803021))

(declare-fun m!4803023 () Bool)

(assert (=> b!4215108 m!4803023))

(assert (=> b!4214862 d!1241766))

(declare-fun d!1241768 () Bool)

(assert (=> d!1241768 (= (list!16769 (charsOf!5191 (_1!25181 lt!1500070))) (list!16770 (c!717665 (charsOf!5191 (_1!25181 lt!1500070)))))))

(declare-fun bs!597502 () Bool)

(assert (= bs!597502 d!1241768))

(declare-fun m!4803027 () Bool)

(assert (=> bs!597502 m!4803027))

(assert (=> b!4214883 d!1241768))

(declare-fun d!1241770 () Bool)

(assert (=> d!1241770 (= (isEmpty!27463 lt!1500068) (not ((_ is Some!9955) lt!1500068)))))

(assert (=> b!4214883 d!1241770))

(declare-fun b!4215200 () Bool)

(declare-fun res!1732049 () Bool)

(declare-fun e!2616869 () Bool)

(assert (=> b!4215200 (=> (not res!1732049) (not e!2616869))))

(declare-fun lt!1500180 () Option!9956)

(assert (=> b!4215200 (= res!1732049 (= (value!241917 (_1!25181 (get!15086 lt!1500180))) (apply!10693 (transformation!7768 (rule!10890 (_1!25181 (get!15086 lt!1500180)))) (seqFromList!5753 (originalCharacters!8150 (_1!25181 (get!15086 lt!1500180)))))))))

(declare-fun d!1241774 () Bool)

(declare-fun e!2616868 () Bool)

(assert (=> d!1241774 e!2616868))

(declare-fun res!1732045 () Bool)

(assert (=> d!1241774 (=> res!1732045 e!2616868)))

(assert (=> d!1241774 (= res!1732045 (isEmpty!27463 lt!1500180))))

(declare-fun e!2616870 () Option!9956)

(assert (=> d!1241774 (= lt!1500180 e!2616870)))

(declare-fun c!717700 () Bool)

(assert (=> d!1241774 (= c!717700 (and ((_ is Cons!46365) (t!348268 rules!3967)) ((_ is Nil!46365) (t!348268 (t!348268 rules!3967)))))))

(declare-fun lt!1500178 () Unit!65503)

(declare-fun lt!1500177 () Unit!65503)

(assert (=> d!1241774 (= lt!1500178 lt!1500177)))

(assert (=> d!1241774 (isPrefix!4627 input!3517 input!3517)))

(assert (=> d!1241774 (= lt!1500177 (lemmaIsPrefixRefl!3044 input!3517 input!3517))))

(declare-fun rulesValidInductive!2884 (LexerInterface!7363 List!46489) Bool)

(assert (=> d!1241774 (rulesValidInductive!2884 thiss!26544 (t!348268 rules!3967))))

(assert (=> d!1241774 (= (maxPrefix!4403 thiss!26544 (t!348268 rules!3967) input!3517) lt!1500180)))

(declare-fun b!4215201 () Bool)

(declare-fun res!1732047 () Bool)

(assert (=> b!4215201 (=> (not res!1732047) (not e!2616869))))

(assert (=> b!4215201 (= res!1732047 (< (size!34048 (_2!25181 (get!15086 lt!1500180))) (size!34048 input!3517)))))

(declare-fun b!4215202 () Bool)

(declare-fun res!1732046 () Bool)

(assert (=> b!4215202 (=> (not res!1732046) (not e!2616869))))

(assert (=> b!4215202 (= res!1732046 (= (++!11842 (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500180)))) (_2!25181 (get!15086 lt!1500180))) input!3517))))

(declare-fun b!4215203 () Bool)

(declare-fun lt!1500179 () Option!9956)

(declare-fun lt!1500176 () Option!9956)

(assert (=> b!4215203 (= e!2616870 (ite (and ((_ is None!9955) lt!1500179) ((_ is None!9955) lt!1500176)) None!9955 (ite ((_ is None!9955) lt!1500176) lt!1500179 (ite ((_ is None!9955) lt!1500179) lt!1500176 (ite (>= (size!34045 (_1!25181 (v!40833 lt!1500179))) (size!34045 (_1!25181 (v!40833 lt!1500176)))) lt!1500179 lt!1500176)))))))

(declare-fun call!293005 () Option!9956)

(assert (=> b!4215203 (= lt!1500179 call!293005)))

(assert (=> b!4215203 (= lt!1500176 (maxPrefix!4403 thiss!26544 (t!348268 (t!348268 rules!3967)) input!3517))))

(declare-fun b!4215204 () Bool)

(assert (=> b!4215204 (= e!2616868 e!2616869)))

(declare-fun res!1732050 () Bool)

(assert (=> b!4215204 (=> (not res!1732050) (not e!2616869))))

(declare-fun isDefined!7394 (Option!9956) Bool)

(assert (=> b!4215204 (= res!1732050 (isDefined!7394 lt!1500180))))

(declare-fun b!4215205 () Bool)

(declare-fun res!1732051 () Bool)

(assert (=> b!4215205 (=> (not res!1732051) (not e!2616869))))

(assert (=> b!4215205 (= res!1732051 (= (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500180)))) (originalCharacters!8150 (_1!25181 (get!15086 lt!1500180)))))))

(declare-fun b!4215206 () Bool)

(declare-fun res!1732048 () Bool)

(assert (=> b!4215206 (=> (not res!1732048) (not e!2616869))))

(assert (=> b!4215206 (= res!1732048 (matchR!6372 (regex!7768 (rule!10890 (_1!25181 (get!15086 lt!1500180)))) (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500180))))))))

(declare-fun bm!293000 () Bool)

(assert (=> bm!293000 (= call!293005 (maxPrefixOneRule!3358 thiss!26544 (h!51785 (t!348268 rules!3967)) input!3517))))

(declare-fun b!4215207 () Bool)

(assert (=> b!4215207 (= e!2616869 (contains!9589 (t!348268 rules!3967) (rule!10890 (_1!25181 (get!15086 lt!1500180)))))))

(declare-fun b!4215208 () Bool)

(assert (=> b!4215208 (= e!2616870 call!293005)))

(assert (= (and d!1241774 c!717700) b!4215208))

(assert (= (and d!1241774 (not c!717700)) b!4215203))

(assert (= (or b!4215208 b!4215203) bm!293000))

(assert (= (and d!1241774 (not res!1732045)) b!4215204))

(assert (= (and b!4215204 res!1732050) b!4215205))

(assert (= (and b!4215205 res!1732051) b!4215201))

(assert (= (and b!4215201 res!1732047) b!4215202))

(assert (= (and b!4215202 res!1732046) b!4215200))

(assert (= (and b!4215200 res!1732049) b!4215206))

(assert (= (and b!4215206 res!1732048) b!4215207))

(declare-fun m!4803121 () Bool)

(assert (=> b!4215200 m!4803121))

(declare-fun m!4803123 () Bool)

(assert (=> b!4215200 m!4803123))

(assert (=> b!4215200 m!4803123))

(declare-fun m!4803125 () Bool)

(assert (=> b!4215200 m!4803125))

(declare-fun m!4803127 () Bool)

(assert (=> b!4215204 m!4803127))

(declare-fun m!4803129 () Bool)

(assert (=> bm!293000 m!4803129))

(assert (=> b!4215202 m!4803121))

(declare-fun m!4803131 () Bool)

(assert (=> b!4215202 m!4803131))

(assert (=> b!4215202 m!4803131))

(declare-fun m!4803133 () Bool)

(assert (=> b!4215202 m!4803133))

(assert (=> b!4215202 m!4803133))

(declare-fun m!4803135 () Bool)

(assert (=> b!4215202 m!4803135))

(assert (=> b!4215206 m!4803121))

(assert (=> b!4215206 m!4803131))

(assert (=> b!4215206 m!4803131))

(assert (=> b!4215206 m!4803133))

(assert (=> b!4215206 m!4803133))

(declare-fun m!4803137 () Bool)

(assert (=> b!4215206 m!4803137))

(declare-fun m!4803139 () Bool)

(assert (=> d!1241774 m!4803139))

(assert (=> d!1241774 m!4802695))

(assert (=> d!1241774 m!4802697))

(declare-fun m!4803141 () Bool)

(assert (=> d!1241774 m!4803141))

(declare-fun m!4803143 () Bool)

(assert (=> b!4215203 m!4803143))

(assert (=> b!4215207 m!4803121))

(declare-fun m!4803145 () Bool)

(assert (=> b!4215207 m!4803145))

(assert (=> b!4215205 m!4803121))

(assert (=> b!4215205 m!4803131))

(assert (=> b!4215205 m!4803131))

(assert (=> b!4215205 m!4803133))

(assert (=> b!4215201 m!4803121))

(declare-fun m!4803147 () Bool)

(assert (=> b!4215201 m!4803147))

(assert (=> b!4215201 m!4802949))

(assert (=> b!4214883 d!1241774))

(declare-fun d!1241790 () Bool)

(assert (=> d!1241790 (rulesInvariant!6574 thiss!26544 (t!348268 rules!3967))))

(declare-fun lt!1500183 () Unit!65503)

(declare-fun choose!25821 (LexerInterface!7363 Rule!15336 List!46489) Unit!65503)

(assert (=> d!1241790 (= lt!1500183 (choose!25821 thiss!26544 (h!51785 rules!3967) (t!348268 rules!3967)))))

(assert (=> d!1241790 (rulesInvariant!6574 thiss!26544 (Cons!46365 (h!51785 rules!3967) (t!348268 rules!3967)))))

(assert (=> d!1241790 (= (lemmaInvariantOnRulesThenOnTail!858 thiss!26544 (h!51785 rules!3967) (t!348268 rules!3967)) lt!1500183)))

(declare-fun bs!597503 () Bool)

(assert (= bs!597503 d!1241790))

(assert (=> bs!597503 m!4802689))

(declare-fun m!4803149 () Bool)

(assert (=> bs!597503 m!4803149))

(declare-fun m!4803151 () Bool)

(assert (=> bs!597503 m!4803151))

(assert (=> b!4214883 d!1241790))

(declare-fun d!1241792 () Bool)

(declare-fun lt!1500184 () BalanceConc!27552)

(assert (=> d!1241792 (= (list!16769 lt!1500184) (originalCharacters!8150 (_1!25181 lt!1500070)))))

(assert (=> d!1241792 (= lt!1500184 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070)))) (value!241917 (_1!25181 lt!1500070))))))

(assert (=> d!1241792 (= (charsOf!5191 (_1!25181 lt!1500070)) lt!1500184)))

(declare-fun b_lambda!124163 () Bool)

(assert (=> (not b_lambda!124163) (not d!1241792)))

(declare-fun t!348308 () Bool)

(declare-fun tb!253017 () Bool)

(assert (=> (and b!4214871 (= (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070))))) t!348308) tb!253017))

(declare-fun b!4215209 () Bool)

(declare-fun e!2616871 () Bool)

(declare-fun tp!1289340 () Bool)

(assert (=> b!4215209 (= e!2616871 (and (inv!61002 (c!717665 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070)))) (value!241917 (_1!25181 lt!1500070))))) tp!1289340))))

(declare-fun result!308388 () Bool)

(assert (=> tb!253017 (= result!308388 (and (inv!61003 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070)))) (value!241917 (_1!25181 lt!1500070)))) e!2616871))))

(assert (= tb!253017 b!4215209))

(declare-fun m!4803153 () Bool)

(assert (=> b!4215209 m!4803153))

(declare-fun m!4803155 () Bool)

(assert (=> tb!253017 m!4803155))

(assert (=> d!1241792 t!348308))

(declare-fun b_and!332025 () Bool)

(assert (= b_and!331997 (and (=> t!348308 result!308388) b_and!332025)))

(declare-fun tb!253019 () Bool)

(declare-fun t!348310 () Bool)

(assert (=> (and b!4214884 (= (toChars!10347 (transformation!7768 rBis!178)) (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070))))) t!348310) tb!253019))

(declare-fun result!308390 () Bool)

(assert (= result!308390 result!308388))

(assert (=> d!1241792 t!348310))

(declare-fun b_and!332027 () Bool)

(assert (= b_and!331999 (and (=> t!348310 result!308390) b_and!332027)))

(declare-fun tb!253021 () Bool)

(declare-fun t!348312 () Bool)

(assert (=> (and b!4214852 (= (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070))))) t!348312) tb!253021))

(declare-fun result!308392 () Bool)

(assert (= result!308392 result!308388))

(assert (=> d!1241792 t!348312))

(declare-fun b_and!332029 () Bool)

(assert (= b_and!332001 (and (=> t!348312 result!308392) b_and!332029)))

(declare-fun t!348314 () Bool)

(declare-fun tb!253023 () Bool)

(assert (=> (and b!4214879 (= (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070))))) t!348314) tb!253023))

(declare-fun result!308394 () Bool)

(assert (= result!308394 result!308388))

(assert (=> d!1241792 t!348314))

(declare-fun b_and!332031 () Bool)

(assert (= b_and!332003 (and (=> t!348314 result!308394) b_and!332031)))

(declare-fun m!4803157 () Bool)

(assert (=> d!1241792 m!4803157))

(declare-fun m!4803159 () Bool)

(assert (=> d!1241792 m!4803159))

(assert (=> b!4214883 d!1241792))

(declare-fun d!1241794 () Bool)

(declare-fun e!2616876 () Bool)

(assert (=> d!1241794 e!2616876))

(declare-fun res!1732056 () Bool)

(assert (=> d!1241794 (=> (not res!1732056) (not e!2616876))))

(declare-fun lt!1500187 () List!46488)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7264 (List!46488) (InoxSet C!25540))

(assert (=> d!1241794 (= res!1732056 (= (content!7264 lt!1500187) ((_ map or) (content!7264 lt!1500065) (content!7264 (_2!25181 lt!1500070)))))))

(declare-fun e!2616877 () List!46488)

(assert (=> d!1241794 (= lt!1500187 e!2616877)))

(declare-fun c!717703 () Bool)

(assert (=> d!1241794 (= c!717703 ((_ is Nil!46364) lt!1500065))))

(assert (=> d!1241794 (= (++!11842 lt!1500065 (_2!25181 lt!1500070)) lt!1500187)))

(declare-fun b!4215218 () Bool)

(assert (=> b!4215218 (= e!2616877 (_2!25181 lt!1500070))))

(declare-fun b!4215219 () Bool)

(assert (=> b!4215219 (= e!2616877 (Cons!46364 (h!51784 lt!1500065) (++!11842 (t!348267 lt!1500065) (_2!25181 lt!1500070))))))

(declare-fun b!4215220 () Bool)

(declare-fun res!1732057 () Bool)

(assert (=> b!4215220 (=> (not res!1732057) (not e!2616876))))

(assert (=> b!4215220 (= res!1732057 (= (size!34048 lt!1500187) (+ (size!34048 lt!1500065) (size!34048 (_2!25181 lt!1500070)))))))

(declare-fun b!4215221 () Bool)

(assert (=> b!4215221 (= e!2616876 (or (not (= (_2!25181 lt!1500070) Nil!46364)) (= lt!1500187 lt!1500065)))))

(assert (= (and d!1241794 c!717703) b!4215218))

(assert (= (and d!1241794 (not c!717703)) b!4215219))

(assert (= (and d!1241794 res!1732056) b!4215220))

(assert (= (and b!4215220 res!1732057) b!4215221))

(declare-fun m!4803161 () Bool)

(assert (=> d!1241794 m!4803161))

(declare-fun m!4803163 () Bool)

(assert (=> d!1241794 m!4803163))

(declare-fun m!4803165 () Bool)

(assert (=> d!1241794 m!4803165))

(declare-fun m!4803167 () Bool)

(assert (=> b!4215219 m!4803167))

(declare-fun m!4803169 () Bool)

(assert (=> b!4215220 m!4803169))

(declare-fun m!4803171 () Bool)

(assert (=> b!4215220 m!4803171))

(declare-fun m!4803173 () Bool)

(assert (=> b!4215220 m!4803173))

(assert (=> b!4214883 d!1241794))

(declare-fun d!1241796 () Bool)

(assert (=> d!1241796 (isPrefix!4627 lt!1500065 (++!11842 lt!1500065 (_2!25181 lt!1500070)))))

(declare-fun lt!1500190 () Unit!65503)

(declare-fun choose!25823 (List!46488 List!46488) Unit!65503)

(assert (=> d!1241796 (= lt!1500190 (choose!25823 lt!1500065 (_2!25181 lt!1500070)))))

(assert (=> d!1241796 (= (lemmaConcatTwoListThenFirstIsPrefix!3082 lt!1500065 (_2!25181 lt!1500070)) lt!1500190)))

(declare-fun bs!597504 () Bool)

(assert (= bs!597504 d!1241796))

(assert (=> bs!597504 m!4802691))

(assert (=> bs!597504 m!4802691))

(declare-fun m!4803175 () Bool)

(assert (=> bs!597504 m!4803175))

(declare-fun m!4803177 () Bool)

(assert (=> bs!597504 m!4803177))

(assert (=> b!4214883 d!1241796))

(declare-fun d!1241798 () Bool)

(declare-fun res!1732060 () Bool)

(declare-fun e!2616880 () Bool)

(assert (=> d!1241798 (=> (not res!1732060) (not e!2616880))))

(declare-fun rulesValid!3042 (LexerInterface!7363 List!46489) Bool)

(assert (=> d!1241798 (= res!1732060 (rulesValid!3042 thiss!26544 (t!348268 rules!3967)))))

(assert (=> d!1241798 (= (rulesInvariant!6574 thiss!26544 (t!348268 rules!3967)) e!2616880)))

(declare-fun b!4215224 () Bool)

(declare-datatypes ((List!46491 0))(
  ( (Nil!46367) (Cons!46367 (h!51787 String!53860) (t!348330 List!46491)) )
))
(declare-fun noDuplicateTag!3203 (LexerInterface!7363 List!46489 List!46491) Bool)

(assert (=> b!4215224 (= e!2616880 (noDuplicateTag!3203 thiss!26544 (t!348268 rules!3967) Nil!46367))))

(assert (= (and d!1241798 res!1732060) b!4215224))

(declare-fun m!4803179 () Bool)

(assert (=> d!1241798 m!4803179))

(declare-fun m!4803181 () Bool)

(assert (=> b!4215224 m!4803181))

(assert (=> b!4214883 d!1241798))

(declare-fun d!1241800 () Bool)

(assert (=> d!1241800 (= (get!15086 lt!1500068) (v!40833 lt!1500068))))

(assert (=> b!4214883 d!1241800))

(declare-fun d!1241802 () Bool)

(declare-fun e!2616883 () Bool)

(assert (=> d!1241802 e!2616883))

(declare-fun res!1732061 () Bool)

(assert (=> d!1241802 (=> res!1732061 e!2616883)))

(declare-fun lt!1500191 () Bool)

(assert (=> d!1241802 (= res!1732061 (not lt!1500191))))

(declare-fun e!2616882 () Bool)

(assert (=> d!1241802 (= lt!1500191 e!2616882)))

(declare-fun res!1732062 () Bool)

(assert (=> d!1241802 (=> res!1732062 e!2616882)))

(assert (=> d!1241802 (= res!1732062 ((_ is Nil!46364) lt!1500065))))

(assert (=> d!1241802 (= (isPrefix!4627 lt!1500065 lt!1500066) lt!1500191)))

(declare-fun b!4215226 () Bool)

(declare-fun res!1732063 () Bool)

(declare-fun e!2616881 () Bool)

(assert (=> b!4215226 (=> (not res!1732063) (not e!2616881))))

(assert (=> b!4215226 (= res!1732063 (= (head!8942 lt!1500065) (head!8942 lt!1500066)))))

(declare-fun b!4215225 () Bool)

(assert (=> b!4215225 (= e!2616882 e!2616881)))

(declare-fun res!1732064 () Bool)

(assert (=> b!4215225 (=> (not res!1732064) (not e!2616881))))

(assert (=> b!4215225 (= res!1732064 (not ((_ is Nil!46364) lt!1500066)))))

(declare-fun b!4215228 () Bool)

(assert (=> b!4215228 (= e!2616883 (>= (size!34048 lt!1500066) (size!34048 lt!1500065)))))

(declare-fun b!4215227 () Bool)

(assert (=> b!4215227 (= e!2616881 (isPrefix!4627 (tail!6789 lt!1500065) (tail!6789 lt!1500066)))))

(assert (= (and d!1241802 (not res!1732062)) b!4215225))

(assert (= (and b!4215225 res!1732064) b!4215226))

(assert (= (and b!4215226 res!1732063) b!4215227))

(assert (= (and d!1241802 (not res!1732061)) b!4215228))

(declare-fun m!4803183 () Bool)

(assert (=> b!4215226 m!4803183))

(declare-fun m!4803185 () Bool)

(assert (=> b!4215226 m!4803185))

(declare-fun m!4803187 () Bool)

(assert (=> b!4215228 m!4803187))

(assert (=> b!4215228 m!4803171))

(declare-fun m!4803189 () Bool)

(assert (=> b!4215227 m!4803189))

(declare-fun m!4803191 () Bool)

(assert (=> b!4215227 m!4803191))

(assert (=> b!4215227 m!4803189))

(assert (=> b!4215227 m!4803191))

(declare-fun m!4803193 () Bool)

(assert (=> b!4215227 m!4803193))

(assert (=> b!4214883 d!1241802))

(declare-fun d!1241804 () Bool)

(assert (=> d!1241804 (= (inv!60995 (tag!8632 (rule!10890 tBis!41))) (= (mod (str.len (value!241916 (tag!8632 (rule!10890 tBis!41)))) 2) 0))))

(assert (=> b!4214873 d!1241804))

(declare-fun d!1241806 () Bool)

(declare-fun res!1732067 () Bool)

(declare-fun e!2616886 () Bool)

(assert (=> d!1241806 (=> (not res!1732067) (not e!2616886))))

(declare-fun semiInverseModEq!3374 (Int Int) Bool)

(assert (=> d!1241806 (= res!1732067 (semiInverseModEq!3374 (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (toValue!10488 (transformation!7768 (rule!10890 tBis!41)))))))

(assert (=> d!1241806 (= (inv!60999 (transformation!7768 (rule!10890 tBis!41))) e!2616886)))

(declare-fun b!4215231 () Bool)

(declare-fun equivClasses!3273 (Int Int) Bool)

(assert (=> b!4215231 (= e!2616886 (equivClasses!3273 (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (toValue!10488 (transformation!7768 (rule!10890 tBis!41)))))))

(assert (= (and d!1241806 res!1732067) b!4215231))

(declare-fun m!4803195 () Bool)

(assert (=> d!1241806 m!4803195))

(declare-fun m!4803197 () Bool)

(assert (=> b!4215231 m!4803197))

(assert (=> b!4214873 d!1241806))

(declare-fun d!1241808 () Bool)

(declare-fun res!1732072 () Bool)

(declare-fun e!2616889 () Bool)

(assert (=> d!1241808 (=> (not res!1732072) (not e!2616889))))

(assert (=> d!1241808 (= res!1732072 (not (isEmpty!27465 (originalCharacters!8150 tBis!41))))))

(assert (=> d!1241808 (= (inv!60998 tBis!41) e!2616889)))

(declare-fun b!4215236 () Bool)

(declare-fun res!1732073 () Bool)

(assert (=> b!4215236 (=> (not res!1732073) (not e!2616889))))

(assert (=> b!4215236 (= res!1732073 (= (originalCharacters!8150 tBis!41) (list!16769 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (value!241917 tBis!41)))))))

(declare-fun b!4215237 () Bool)

(assert (=> b!4215237 (= e!2616889 (= (size!34045 tBis!41) (size!34048 (originalCharacters!8150 tBis!41))))))

(assert (= (and d!1241808 res!1732072) b!4215236))

(assert (= (and b!4215236 res!1732073) b!4215237))

(declare-fun b_lambda!124165 () Bool)

(assert (=> (not b_lambda!124165) (not b!4215236)))

(assert (=> b!4215236 t!348286))

(declare-fun b_and!332033 () Bool)

(assert (= b_and!332025 (and (=> t!348286 result!308358) b_and!332033)))

(assert (=> b!4215236 t!348288))

(declare-fun b_and!332035 () Bool)

(assert (= b_and!332027 (and (=> t!348288 result!308362) b_and!332035)))

(assert (=> b!4215236 t!348290))

(declare-fun b_and!332037 () Bool)

(assert (= b_and!332029 (and (=> t!348290 result!308364) b_and!332037)))

(assert (=> b!4215236 t!348292))

(declare-fun b_and!332039 () Bool)

(assert (= b_and!332031 (and (=> t!348292 result!308366) b_and!332039)))

(declare-fun m!4803199 () Bool)

(assert (=> d!1241808 m!4803199))

(assert (=> b!4215236 m!4802797))

(assert (=> b!4215236 m!4802797))

(declare-fun m!4803201 () Bool)

(assert (=> b!4215236 m!4803201))

(declare-fun m!4803203 () Bool)

(assert (=> b!4215237 m!4803203))

(assert (=> start!402782 d!1241808))

(declare-fun d!1241810 () Bool)

(declare-fun res!1732074 () Bool)

(declare-fun e!2616890 () Bool)

(assert (=> d!1241810 (=> (not res!1732074) (not e!2616890))))

(assert (=> d!1241810 (= res!1732074 (not (isEmpty!27465 (originalCharacters!8150 t!8364))))))

(assert (=> d!1241810 (= (inv!60998 t!8364) e!2616890)))

(declare-fun b!4215238 () Bool)

(declare-fun res!1732075 () Bool)

(assert (=> b!4215238 (=> (not res!1732075) (not e!2616890))))

(assert (=> b!4215238 (= res!1732075 (= (originalCharacters!8150 t!8364) (list!16769 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (value!241917 t!8364)))))))

(declare-fun b!4215239 () Bool)

(assert (=> b!4215239 (= e!2616890 (= (size!34045 t!8364) (size!34048 (originalCharacters!8150 t!8364))))))

(assert (= (and d!1241810 res!1732074) b!4215238))

(assert (= (and b!4215238 res!1732075) b!4215239))

(declare-fun b_lambda!124167 () Bool)

(assert (=> (not b_lambda!124167) (not b!4215238)))

(declare-fun t!348316 () Bool)

(declare-fun tb!253025 () Bool)

(assert (=> (and b!4214871 (= (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (toChars!10347 (transformation!7768 (rule!10890 t!8364)))) t!348316) tb!253025))

(declare-fun b!4215240 () Bool)

(declare-fun e!2616891 () Bool)

(declare-fun tp!1289341 () Bool)

(assert (=> b!4215240 (= e!2616891 (and (inv!61002 (c!717665 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (value!241917 t!8364)))) tp!1289341))))

(declare-fun result!308396 () Bool)

(assert (=> tb!253025 (= result!308396 (and (inv!61003 (dynLambda!19978 (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (value!241917 t!8364))) e!2616891))))

(assert (= tb!253025 b!4215240))

(declare-fun m!4803205 () Bool)

(assert (=> b!4215240 m!4803205))

(declare-fun m!4803207 () Bool)

(assert (=> tb!253025 m!4803207))

(assert (=> b!4215238 t!348316))

(declare-fun b_and!332041 () Bool)

(assert (= b_and!332033 (and (=> t!348316 result!308396) b_and!332041)))

(declare-fun tb!253027 () Bool)

(declare-fun t!348318 () Bool)

(assert (=> (and b!4214884 (= (toChars!10347 (transformation!7768 rBis!178)) (toChars!10347 (transformation!7768 (rule!10890 t!8364)))) t!348318) tb!253027))

(declare-fun result!308398 () Bool)

(assert (= result!308398 result!308396))

(assert (=> b!4215238 t!348318))

(declare-fun b_and!332043 () Bool)

(assert (= b_and!332035 (and (=> t!348318 result!308398) b_and!332043)))

(declare-fun t!348320 () Bool)

(declare-fun tb!253029 () Bool)

(assert (=> (and b!4214852 (= (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (toChars!10347 (transformation!7768 (rule!10890 t!8364)))) t!348320) tb!253029))

(declare-fun result!308400 () Bool)

(assert (= result!308400 result!308396))

(assert (=> b!4215238 t!348320))

(declare-fun b_and!332045 () Bool)

(assert (= b_and!332037 (and (=> t!348320 result!308400) b_and!332045)))

(declare-fun tb!253031 () Bool)

(declare-fun t!348322 () Bool)

(assert (=> (and b!4214879 (= (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toChars!10347 (transformation!7768 (rule!10890 t!8364)))) t!348322) tb!253031))

(declare-fun result!308402 () Bool)

(assert (= result!308402 result!308396))

(assert (=> b!4215238 t!348322))

(declare-fun b_and!332047 () Bool)

(assert (= b_and!332039 (and (=> t!348322 result!308402) b_and!332047)))

(declare-fun m!4803209 () Bool)

(assert (=> d!1241810 m!4803209))

(declare-fun m!4803211 () Bool)

(assert (=> b!4215238 m!4803211))

(assert (=> b!4215238 m!4803211))

(declare-fun m!4803213 () Bool)

(assert (=> b!4215238 m!4803213))

(declare-fun m!4803215 () Bool)

(assert (=> b!4215239 m!4803215))

(assert (=> start!402782 d!1241810))

(declare-fun d!1241812 () Bool)

(assert (=> d!1241812 (= (isEmpty!27462 (t!348268 rules!3967)) ((_ is Nil!46365) (t!348268 rules!3967)))))

(assert (=> b!4214872 d!1241812))

(declare-fun d!1241814 () Bool)

(assert (=> d!1241814 (= (inv!60995 (tag!8632 rBis!178)) (= (mod (str.len (value!241916 (tag!8632 rBis!178))) 2) 0))))

(assert (=> b!4214861 d!1241814))

(declare-fun d!1241816 () Bool)

(declare-fun res!1732076 () Bool)

(declare-fun e!2616892 () Bool)

(assert (=> d!1241816 (=> (not res!1732076) (not e!2616892))))

(assert (=> d!1241816 (= res!1732076 (semiInverseModEq!3374 (toChars!10347 (transformation!7768 rBis!178)) (toValue!10488 (transformation!7768 rBis!178))))))

(assert (=> d!1241816 (= (inv!60999 (transformation!7768 rBis!178)) e!2616892)))

(declare-fun b!4215241 () Bool)

(assert (=> b!4215241 (= e!2616892 (equivClasses!3273 (toChars!10347 (transformation!7768 rBis!178)) (toValue!10488 (transformation!7768 rBis!178))))))

(assert (= (and d!1241816 res!1732076) b!4215241))

(declare-fun m!4803217 () Bool)

(assert (=> d!1241816 m!4803217))

(declare-fun m!4803219 () Bool)

(assert (=> b!4215241 m!4803219))

(assert (=> b!4214861 d!1241816))

(declare-fun d!1241818 () Bool)

(declare-fun lt!1500194 () Bool)

(declare-fun content!7265 (List!46489) (InoxSet Rule!15336))

(assert (=> d!1241818 (= lt!1500194 (select (content!7265 rules!3967) rBis!178))))

(declare-fun e!2616897 () Bool)

(assert (=> d!1241818 (= lt!1500194 e!2616897)))

(declare-fun res!1732081 () Bool)

(assert (=> d!1241818 (=> (not res!1732081) (not e!2616897))))

(assert (=> d!1241818 (= res!1732081 ((_ is Cons!46365) rules!3967))))

(assert (=> d!1241818 (= (contains!9589 rules!3967 rBis!178) lt!1500194)))

(declare-fun b!4215246 () Bool)

(declare-fun e!2616898 () Bool)

(assert (=> b!4215246 (= e!2616897 e!2616898)))

(declare-fun res!1732082 () Bool)

(assert (=> b!4215246 (=> res!1732082 e!2616898)))

(assert (=> b!4215246 (= res!1732082 (= (h!51785 rules!3967) rBis!178))))

(declare-fun b!4215247 () Bool)

(assert (=> b!4215247 (= e!2616898 (contains!9589 (t!348268 rules!3967) rBis!178))))

(assert (= (and d!1241818 res!1732081) b!4215246))

(assert (= (and b!4215246 (not res!1732082)) b!4215247))

(declare-fun m!4803221 () Bool)

(assert (=> d!1241818 m!4803221))

(declare-fun m!4803223 () Bool)

(assert (=> d!1241818 m!4803223))

(declare-fun m!4803225 () Bool)

(assert (=> b!4215247 m!4803225))

(assert (=> b!4214860 d!1241818))

(declare-fun d!1241820 () Bool)

(declare-fun e!2616899 () Bool)

(assert (=> d!1241820 e!2616899))

(declare-fun res!1732083 () Bool)

(assert (=> d!1241820 (=> (not res!1732083) (not e!2616899))))

(declare-fun lt!1500195 () List!46488)

(assert (=> d!1241820 (= res!1732083 (= (content!7264 lt!1500195) ((_ map or) (content!7264 p!3001) (content!7264 suffix!1557))))))

(declare-fun e!2616900 () List!46488)

(assert (=> d!1241820 (= lt!1500195 e!2616900)))

(declare-fun c!717704 () Bool)

(assert (=> d!1241820 (= c!717704 ((_ is Nil!46364) p!3001))))

(assert (=> d!1241820 (= (++!11842 p!3001 suffix!1557) lt!1500195)))

(declare-fun b!4215248 () Bool)

(assert (=> b!4215248 (= e!2616900 suffix!1557)))

(declare-fun b!4215249 () Bool)

(assert (=> b!4215249 (= e!2616900 (Cons!46364 (h!51784 p!3001) (++!11842 (t!348267 p!3001) suffix!1557)))))

(declare-fun b!4215250 () Bool)

(declare-fun res!1732084 () Bool)

(assert (=> b!4215250 (=> (not res!1732084) (not e!2616899))))

(assert (=> b!4215250 (= res!1732084 (= (size!34048 lt!1500195) (+ (size!34048 p!3001) (size!34048 suffix!1557))))))

(declare-fun b!4215251 () Bool)

(assert (=> b!4215251 (= e!2616899 (or (not (= suffix!1557 Nil!46364)) (= lt!1500195 p!3001)))))

(assert (= (and d!1241820 c!717704) b!4215248))

(assert (= (and d!1241820 (not c!717704)) b!4215249))

(assert (= (and d!1241820 res!1732083) b!4215250))

(assert (= (and b!4215250 res!1732084) b!4215251))

(declare-fun m!4803227 () Bool)

(assert (=> d!1241820 m!4803227))

(declare-fun m!4803229 () Bool)

(assert (=> d!1241820 m!4803229))

(declare-fun m!4803231 () Bool)

(assert (=> d!1241820 m!4803231))

(declare-fun m!4803233 () Bool)

(assert (=> b!4215249 m!4803233))

(declare-fun m!4803235 () Bool)

(assert (=> b!4215250 m!4803235))

(declare-fun m!4803237 () Bool)

(assert (=> b!4215250 m!4803237))

(declare-fun m!4803239 () Bool)

(assert (=> b!4215250 m!4803239))

(assert (=> b!4214881 d!1241820))

(declare-fun d!1241822 () Bool)

(assert (=> d!1241822 (= (inv!60995 (tag!8632 (rule!10890 t!8364))) (= (mod (str.len (value!241916 (tag!8632 (rule!10890 t!8364)))) 2) 0))))

(assert (=> b!4214858 d!1241822))

(declare-fun d!1241824 () Bool)

(declare-fun res!1732085 () Bool)

(declare-fun e!2616901 () Bool)

(assert (=> d!1241824 (=> (not res!1732085) (not e!2616901))))

(assert (=> d!1241824 (= res!1732085 (semiInverseModEq!3374 (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (toValue!10488 (transformation!7768 (rule!10890 t!8364)))))))

(assert (=> d!1241824 (= (inv!60999 (transformation!7768 (rule!10890 t!8364))) e!2616901)))

(declare-fun b!4215252 () Bool)

(assert (=> b!4215252 (= e!2616901 (equivClasses!3273 (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (toValue!10488 (transformation!7768 (rule!10890 t!8364)))))))

(assert (= (and d!1241824 res!1732085) b!4215252))

(declare-fun m!4803241 () Bool)

(assert (=> d!1241824 m!4803241))

(declare-fun m!4803243 () Bool)

(assert (=> b!4215252 m!4803243))

(assert (=> b!4214858 d!1241824))

(declare-fun b!4215253 () Bool)

(declare-fun res!1732090 () Bool)

(declare-fun e!2616903 () Bool)

(assert (=> b!4215253 (=> (not res!1732090) (not e!2616903))))

(declare-fun lt!1500200 () Option!9956)

(assert (=> b!4215253 (= res!1732090 (= (value!241917 (_1!25181 (get!15086 lt!1500200))) (apply!10693 (transformation!7768 (rule!10890 (_1!25181 (get!15086 lt!1500200)))) (seqFromList!5753 (originalCharacters!8150 (_1!25181 (get!15086 lt!1500200)))))))))

(declare-fun d!1241826 () Bool)

(declare-fun e!2616902 () Bool)

(assert (=> d!1241826 e!2616902))

(declare-fun res!1732086 () Bool)

(assert (=> d!1241826 (=> res!1732086 e!2616902)))

(assert (=> d!1241826 (= res!1732086 (isEmpty!27463 lt!1500200))))

(declare-fun e!2616904 () Option!9956)

(assert (=> d!1241826 (= lt!1500200 e!2616904)))

(declare-fun c!717705 () Bool)

(assert (=> d!1241826 (= c!717705 (and ((_ is Cons!46365) rules!3967) ((_ is Nil!46365) (t!348268 rules!3967))))))

(declare-fun lt!1500198 () Unit!65503)

(declare-fun lt!1500197 () Unit!65503)

(assert (=> d!1241826 (= lt!1500198 lt!1500197)))

(assert (=> d!1241826 (isPrefix!4627 input!3517 input!3517)))

(assert (=> d!1241826 (= lt!1500197 (lemmaIsPrefixRefl!3044 input!3517 input!3517))))

(assert (=> d!1241826 (rulesValidInductive!2884 thiss!26544 rules!3967)))

(assert (=> d!1241826 (= (maxPrefix!4403 thiss!26544 rules!3967 input!3517) lt!1500200)))

(declare-fun b!4215254 () Bool)

(declare-fun res!1732088 () Bool)

(assert (=> b!4215254 (=> (not res!1732088) (not e!2616903))))

(assert (=> b!4215254 (= res!1732088 (< (size!34048 (_2!25181 (get!15086 lt!1500200))) (size!34048 input!3517)))))

(declare-fun b!4215255 () Bool)

(declare-fun res!1732087 () Bool)

(assert (=> b!4215255 (=> (not res!1732087) (not e!2616903))))

(assert (=> b!4215255 (= res!1732087 (= (++!11842 (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500200)))) (_2!25181 (get!15086 lt!1500200))) input!3517))))

(declare-fun b!4215256 () Bool)

(declare-fun lt!1500199 () Option!9956)

(declare-fun lt!1500196 () Option!9956)

(assert (=> b!4215256 (= e!2616904 (ite (and ((_ is None!9955) lt!1500199) ((_ is None!9955) lt!1500196)) None!9955 (ite ((_ is None!9955) lt!1500196) lt!1500199 (ite ((_ is None!9955) lt!1500199) lt!1500196 (ite (>= (size!34045 (_1!25181 (v!40833 lt!1500199))) (size!34045 (_1!25181 (v!40833 lt!1500196)))) lt!1500199 lt!1500196)))))))

(declare-fun call!293006 () Option!9956)

(assert (=> b!4215256 (= lt!1500199 call!293006)))

(assert (=> b!4215256 (= lt!1500196 (maxPrefix!4403 thiss!26544 (t!348268 rules!3967) input!3517))))

(declare-fun b!4215257 () Bool)

(assert (=> b!4215257 (= e!2616902 e!2616903)))

(declare-fun res!1732091 () Bool)

(assert (=> b!4215257 (=> (not res!1732091) (not e!2616903))))

(assert (=> b!4215257 (= res!1732091 (isDefined!7394 lt!1500200))))

(declare-fun b!4215258 () Bool)

(declare-fun res!1732092 () Bool)

(assert (=> b!4215258 (=> (not res!1732092) (not e!2616903))))

(assert (=> b!4215258 (= res!1732092 (= (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500200)))) (originalCharacters!8150 (_1!25181 (get!15086 lt!1500200)))))))

(declare-fun b!4215259 () Bool)

(declare-fun res!1732089 () Bool)

(assert (=> b!4215259 (=> (not res!1732089) (not e!2616903))))

(assert (=> b!4215259 (= res!1732089 (matchR!6372 (regex!7768 (rule!10890 (_1!25181 (get!15086 lt!1500200)))) (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500200))))))))

(declare-fun bm!293001 () Bool)

(assert (=> bm!293001 (= call!293006 (maxPrefixOneRule!3358 thiss!26544 (h!51785 rules!3967) input!3517))))

(declare-fun b!4215260 () Bool)

(assert (=> b!4215260 (= e!2616903 (contains!9589 rules!3967 (rule!10890 (_1!25181 (get!15086 lt!1500200)))))))

(declare-fun b!4215261 () Bool)

(assert (=> b!4215261 (= e!2616904 call!293006)))

(assert (= (and d!1241826 c!717705) b!4215261))

(assert (= (and d!1241826 (not c!717705)) b!4215256))

(assert (= (or b!4215261 b!4215256) bm!293001))

(assert (= (and d!1241826 (not res!1732086)) b!4215257))

(assert (= (and b!4215257 res!1732091) b!4215258))

(assert (= (and b!4215258 res!1732092) b!4215254))

(assert (= (and b!4215254 res!1732088) b!4215255))

(assert (= (and b!4215255 res!1732087) b!4215253))

(assert (= (and b!4215253 res!1732090) b!4215259))

(assert (= (and b!4215259 res!1732089) b!4215260))

(declare-fun m!4803245 () Bool)

(assert (=> b!4215253 m!4803245))

(declare-fun m!4803247 () Bool)

(assert (=> b!4215253 m!4803247))

(assert (=> b!4215253 m!4803247))

(declare-fun m!4803249 () Bool)

(assert (=> b!4215253 m!4803249))

(declare-fun m!4803251 () Bool)

(assert (=> b!4215257 m!4803251))

(assert (=> bm!293001 m!4802703))

(assert (=> b!4215255 m!4803245))

(declare-fun m!4803253 () Bool)

(assert (=> b!4215255 m!4803253))

(assert (=> b!4215255 m!4803253))

(declare-fun m!4803255 () Bool)

(assert (=> b!4215255 m!4803255))

(assert (=> b!4215255 m!4803255))

(declare-fun m!4803257 () Bool)

(assert (=> b!4215255 m!4803257))

(assert (=> b!4215259 m!4803245))

(assert (=> b!4215259 m!4803253))

(assert (=> b!4215259 m!4803253))

(assert (=> b!4215259 m!4803255))

(assert (=> b!4215259 m!4803255))

(declare-fun m!4803259 () Bool)

(assert (=> b!4215259 m!4803259))

(declare-fun m!4803261 () Bool)

(assert (=> d!1241826 m!4803261))

(assert (=> d!1241826 m!4802695))

(assert (=> d!1241826 m!4802697))

(declare-fun m!4803263 () Bool)

(assert (=> d!1241826 m!4803263))

(assert (=> b!4215256 m!4802673))

(assert (=> b!4215260 m!4803245))

(declare-fun m!4803265 () Bool)

(assert (=> b!4215260 m!4803265))

(assert (=> b!4215258 m!4803245))

(assert (=> b!4215258 m!4803253))

(assert (=> b!4215258 m!4803253))

(assert (=> b!4215258 m!4803255))

(assert (=> b!4215254 m!4803245))

(declare-fun m!4803267 () Bool)

(assert (=> b!4215254 m!4803267))

(assert (=> b!4215254 m!4802949))

(assert (=> b!4214880 d!1241826))

(declare-fun d!1241828 () Bool)

(declare-fun res!1732093 () Bool)

(declare-fun e!2616905 () Bool)

(assert (=> d!1241828 (=> (not res!1732093) (not e!2616905))))

(assert (=> d!1241828 (= res!1732093 (rulesValid!3042 thiss!26544 rules!3967))))

(assert (=> d!1241828 (= (rulesInvariant!6574 thiss!26544 rules!3967) e!2616905)))

(declare-fun b!4215262 () Bool)

(assert (=> b!4215262 (= e!2616905 (noDuplicateTag!3203 thiss!26544 rules!3967 Nil!46367))))

(assert (= (and d!1241828 res!1732093) b!4215262))

(declare-fun m!4803269 () Bool)

(assert (=> d!1241828 m!4803269))

(declare-fun m!4803271 () Bool)

(assert (=> b!4215262 m!4803271))

(assert (=> b!4214869 d!1241828))

(declare-fun d!1241830 () Bool)

(assert (=> d!1241830 (isEmpty!27463 (maxPrefixOneRule!3358 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1500203 () Unit!65503)

(declare-fun choose!25824 (LexerInterface!7363 Rule!15336 List!46489 List!46488) Unit!65503)

(assert (=> d!1241830 (= lt!1500203 (choose!25824 thiss!26544 rBis!178 (t!348268 rules!3967) input!3517))))

(assert (=> d!1241830 (not (isEmpty!27462 (t!348268 rules!3967)))))

(assert (=> d!1241830 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!626 thiss!26544 rBis!178 (t!348268 rules!3967) input!3517) lt!1500203)))

(declare-fun bs!597505 () Bool)

(assert (= bs!597505 d!1241830))

(assert (=> bs!597505 m!4802693))

(assert (=> bs!597505 m!4802693))

(declare-fun m!4803273 () Bool)

(assert (=> bs!597505 m!4803273))

(declare-fun m!4803275 () Bool)

(assert (=> bs!597505 m!4803275))

(assert (=> bs!597505 m!4802701))

(assert (=> b!4214868 d!1241830))

(declare-fun d!1241832 () Bool)

(declare-fun e!2616908 () Bool)

(assert (=> d!1241832 e!2616908))

(declare-fun res!1732094 () Bool)

(assert (=> d!1241832 (=> res!1732094 e!2616908)))

(declare-fun lt!1500204 () Bool)

(assert (=> d!1241832 (= res!1732094 (not lt!1500204))))

(declare-fun e!2616907 () Bool)

(assert (=> d!1241832 (= lt!1500204 e!2616907)))

(declare-fun res!1732095 () Bool)

(assert (=> d!1241832 (=> res!1732095 e!2616907)))

(assert (=> d!1241832 (= res!1732095 ((_ is Nil!46364) lt!1500065))))

(assert (=> d!1241832 (= (isPrefix!4627 lt!1500065 input!3517) lt!1500204)))

(declare-fun b!4215264 () Bool)

(declare-fun res!1732096 () Bool)

(declare-fun e!2616906 () Bool)

(assert (=> b!4215264 (=> (not res!1732096) (not e!2616906))))

(assert (=> b!4215264 (= res!1732096 (= (head!8942 lt!1500065) (head!8942 input!3517)))))

(declare-fun b!4215263 () Bool)

(assert (=> b!4215263 (= e!2616907 e!2616906)))

(declare-fun res!1732097 () Bool)

(assert (=> b!4215263 (=> (not res!1732097) (not e!2616906))))

(assert (=> b!4215263 (= res!1732097 (not ((_ is Nil!46364) input!3517)))))

(declare-fun b!4215266 () Bool)

(assert (=> b!4215266 (= e!2616908 (>= (size!34048 input!3517) (size!34048 lt!1500065)))))

(declare-fun b!4215265 () Bool)

(assert (=> b!4215265 (= e!2616906 (isPrefix!4627 (tail!6789 lt!1500065) (tail!6789 input!3517)))))

(assert (= (and d!1241832 (not res!1732095)) b!4215263))

(assert (= (and b!4215263 res!1732097) b!4215264))

(assert (= (and b!4215264 res!1732096) b!4215265))

(assert (= (and d!1241832 (not res!1732094)) b!4215266))

(assert (=> b!4215264 m!4803183))

(assert (=> b!4215264 m!4803013))

(assert (=> b!4215266 m!4802949))

(assert (=> b!4215266 m!4803171))

(assert (=> b!4215265 m!4803189))

(assert (=> b!4215265 m!4803015))

(assert (=> b!4215265 m!4803189))

(assert (=> b!4215265 m!4803015))

(declare-fun m!4803277 () Bool)

(assert (=> b!4215265 m!4803277))

(assert (=> b!4214866 d!1241832))

(declare-fun d!1241834 () Bool)

(declare-fun e!2616909 () Bool)

(assert (=> d!1241834 e!2616909))

(declare-fun res!1732098 () Bool)

(assert (=> d!1241834 (=> (not res!1732098) (not e!2616909))))

(declare-fun lt!1500205 () List!46488)

(assert (=> d!1241834 (= res!1732098 (= (content!7264 lt!1500205) ((_ map or) (content!7264 pBis!121) (content!7264 suffixBis!41))))))

(declare-fun e!2616910 () List!46488)

(assert (=> d!1241834 (= lt!1500205 e!2616910)))

(declare-fun c!717706 () Bool)

(assert (=> d!1241834 (= c!717706 ((_ is Nil!46364) pBis!121))))

(assert (=> d!1241834 (= (++!11842 pBis!121 suffixBis!41) lt!1500205)))

(declare-fun b!4215267 () Bool)

(assert (=> b!4215267 (= e!2616910 suffixBis!41)))

(declare-fun b!4215268 () Bool)

(assert (=> b!4215268 (= e!2616910 (Cons!46364 (h!51784 pBis!121) (++!11842 (t!348267 pBis!121) suffixBis!41)))))

(declare-fun b!4215269 () Bool)

(declare-fun res!1732099 () Bool)

(assert (=> b!4215269 (=> (not res!1732099) (not e!2616909))))

(assert (=> b!4215269 (= res!1732099 (= (size!34048 lt!1500205) (+ (size!34048 pBis!121) (size!34048 suffixBis!41))))))

(declare-fun b!4215270 () Bool)

(assert (=> b!4215270 (= e!2616909 (or (not (= suffixBis!41 Nil!46364)) (= lt!1500205 pBis!121)))))

(assert (= (and d!1241834 c!717706) b!4215267))

(assert (= (and d!1241834 (not c!717706)) b!4215268))

(assert (= (and d!1241834 res!1732098) b!4215269))

(assert (= (and b!4215269 res!1732099) b!4215270))

(declare-fun m!4803279 () Bool)

(assert (=> d!1241834 m!4803279))

(declare-fun m!4803281 () Bool)

(assert (=> d!1241834 m!4803281))

(declare-fun m!4803283 () Bool)

(assert (=> d!1241834 m!4803283))

(declare-fun m!4803285 () Bool)

(assert (=> b!4215268 m!4803285))

(declare-fun m!4803287 () Bool)

(assert (=> b!4215269 m!4803287))

(declare-fun m!4803289 () Bool)

(assert (=> b!4215269 m!4803289))

(declare-fun m!4803291 () Bool)

(assert (=> b!4215269 m!4803291))

(assert (=> b!4214856 d!1241834))

(declare-fun d!1241836 () Bool)

(declare-fun e!2616913 () Bool)

(assert (=> d!1241836 e!2616913))

(declare-fun res!1732102 () Bool)

(assert (=> d!1241836 (=> res!1732102 e!2616913)))

(declare-fun lt!1500210 () Option!9956)

(assert (=> d!1241836 (= res!1732102 (isEmpty!27463 lt!1500210))))

(declare-fun e!2616914 () Option!9956)

(assert (=> d!1241836 (= lt!1500210 e!2616914)))

(declare-fun c!717707 () Bool)

(declare-fun lt!1500208 () tuple2!44098)

(assert (=> d!1241836 (= c!717707 (isEmpty!27465 (_1!25183 lt!1500208)))))

(assert (=> d!1241836 (= lt!1500208 (findLongestMatch!1566 (regex!7768 (h!51785 rules!3967)) input!3517))))

(assert (=> d!1241836 (ruleValid!3480 thiss!26544 (h!51785 rules!3967))))

(assert (=> d!1241836 (= (maxPrefixOneRule!3358 thiss!26544 (h!51785 rules!3967) input!3517) lt!1500210)))

(declare-fun b!4215271 () Bool)

(declare-fun e!2616912 () Bool)

(assert (=> b!4215271 (= e!2616912 (= (size!34045 (_1!25181 (get!15086 lt!1500210))) (size!34048 (originalCharacters!8150 (_1!25181 (get!15086 lt!1500210))))))))

(declare-fun b!4215272 () Bool)

(declare-fun e!2616911 () Bool)

(assert (=> b!4215272 (= e!2616911 (matchR!6372 (regex!7768 (h!51785 rules!3967)) (_1!25183 (findLongestMatchInner!1653 (regex!7768 (h!51785 rules!3967)) Nil!46364 (size!34048 Nil!46364) input!3517 input!3517 (size!34048 input!3517)))))))

(declare-fun b!4215273 () Bool)

(assert (=> b!4215273 (= e!2616914 None!9955)))

(declare-fun b!4215274 () Bool)

(declare-fun res!1732101 () Bool)

(assert (=> b!4215274 (=> (not res!1732101) (not e!2616912))))

(assert (=> b!4215274 (= res!1732101 (= (rule!10890 (_1!25181 (get!15086 lt!1500210))) (h!51785 rules!3967)))))

(declare-fun b!4215275 () Bool)

(declare-fun res!1732100 () Bool)

(assert (=> b!4215275 (=> (not res!1732100) (not e!2616912))))

(assert (=> b!4215275 (= res!1732100 (= (value!241917 (_1!25181 (get!15086 lt!1500210))) (apply!10693 (transformation!7768 (rule!10890 (_1!25181 (get!15086 lt!1500210)))) (seqFromList!5753 (originalCharacters!8150 (_1!25181 (get!15086 lt!1500210)))))))))

(declare-fun b!4215276 () Bool)

(assert (=> b!4215276 (= e!2616913 e!2616912)))

(declare-fun res!1732106 () Bool)

(assert (=> b!4215276 (=> (not res!1732106) (not e!2616912))))

(assert (=> b!4215276 (= res!1732106 (matchR!6372 (regex!7768 (h!51785 rules!3967)) (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500210))))))))

(declare-fun b!4215277 () Bool)

(declare-fun res!1732103 () Bool)

(assert (=> b!4215277 (=> (not res!1732103) (not e!2616912))))

(assert (=> b!4215277 (= res!1732103 (< (size!34048 (_2!25181 (get!15086 lt!1500210))) (size!34048 input!3517)))))

(declare-fun b!4215278 () Bool)

(declare-fun res!1732104 () Bool)

(assert (=> b!4215278 (=> (not res!1732104) (not e!2616912))))

(assert (=> b!4215278 (= res!1732104 (= (++!11842 (list!16769 (charsOf!5191 (_1!25181 (get!15086 lt!1500210)))) (_2!25181 (get!15086 lt!1500210))) input!3517))))

(declare-fun b!4215279 () Bool)

(assert (=> b!4215279 (= e!2616914 (Some!9955 (tuple2!44095 (Token!14239 (apply!10693 (transformation!7768 (h!51785 rules!3967)) (seqFromList!5753 (_1!25183 lt!1500208))) (h!51785 rules!3967) (size!34049 (seqFromList!5753 (_1!25183 lt!1500208))) (_1!25183 lt!1500208)) (_2!25183 lt!1500208))))))

(declare-fun lt!1500209 () Unit!65503)

(assert (=> b!4215279 (= lt!1500209 (longestMatchIsAcceptedByMatchOrIsEmpty!1626 (regex!7768 (h!51785 rules!3967)) input!3517))))

(declare-fun res!1732105 () Bool)

(assert (=> b!4215279 (= res!1732105 (isEmpty!27465 (_1!25183 (findLongestMatchInner!1653 (regex!7768 (h!51785 rules!3967)) Nil!46364 (size!34048 Nil!46364) input!3517 input!3517 (size!34048 input!3517)))))))

(assert (=> b!4215279 (=> res!1732105 e!2616911)))

(assert (=> b!4215279 e!2616911))

(declare-fun lt!1500207 () Unit!65503)

(assert (=> b!4215279 (= lt!1500207 lt!1500209)))

(declare-fun lt!1500206 () Unit!65503)

(assert (=> b!4215279 (= lt!1500206 (lemmaSemiInverse!2494 (transformation!7768 (h!51785 rules!3967)) (seqFromList!5753 (_1!25183 lt!1500208))))))

(assert (= (and d!1241836 c!717707) b!4215273))

(assert (= (and d!1241836 (not c!717707)) b!4215279))

(assert (= (and b!4215279 (not res!1732105)) b!4215272))

(assert (= (and d!1241836 (not res!1732102)) b!4215276))

(assert (= (and b!4215276 res!1732106) b!4215278))

(assert (= (and b!4215278 res!1732104) b!4215277))

(assert (= (and b!4215277 res!1732103) b!4215274))

(assert (= (and b!4215274 res!1732101) b!4215275))

(assert (= (and b!4215275 res!1732100) b!4215271))

(assert (=> b!4215272 m!4802947))

(assert (=> b!4215272 m!4802949))

(assert (=> b!4215272 m!4802947))

(assert (=> b!4215272 m!4802949))

(declare-fun m!4803293 () Bool)

(assert (=> b!4215272 m!4803293))

(declare-fun m!4803295 () Bool)

(assert (=> b!4215272 m!4803295))

(declare-fun m!4803297 () Bool)

(assert (=> b!4215274 m!4803297))

(assert (=> b!4215271 m!4803297))

(declare-fun m!4803299 () Bool)

(assert (=> b!4215271 m!4803299))

(declare-fun m!4803301 () Bool)

(assert (=> b!4215279 m!4803301))

(declare-fun m!4803303 () Bool)

(assert (=> b!4215279 m!4803303))

(declare-fun m!4803305 () Bool)

(assert (=> b!4215279 m!4803305))

(assert (=> b!4215279 m!4802947))

(assert (=> b!4215279 m!4802949))

(assert (=> b!4215279 m!4803293))

(assert (=> b!4215279 m!4803301))

(declare-fun m!4803307 () Bool)

(assert (=> b!4215279 m!4803307))

(assert (=> b!4215279 m!4802949))

(assert (=> b!4215279 m!4802947))

(assert (=> b!4215279 m!4803301))

(declare-fun m!4803309 () Bool)

(assert (=> b!4215279 m!4803309))

(declare-fun m!4803311 () Bool)

(assert (=> b!4215279 m!4803311))

(assert (=> b!4215279 m!4803301))

(assert (=> b!4215277 m!4803297))

(declare-fun m!4803313 () Bool)

(assert (=> b!4215277 m!4803313))

(assert (=> b!4215277 m!4802949))

(assert (=> b!4215275 m!4803297))

(declare-fun m!4803315 () Bool)

(assert (=> b!4215275 m!4803315))

(assert (=> b!4215275 m!4803315))

(declare-fun m!4803317 () Bool)

(assert (=> b!4215275 m!4803317))

(assert (=> b!4215276 m!4803297))

(declare-fun m!4803319 () Bool)

(assert (=> b!4215276 m!4803319))

(assert (=> b!4215276 m!4803319))

(declare-fun m!4803321 () Bool)

(assert (=> b!4215276 m!4803321))

(assert (=> b!4215276 m!4803321))

(declare-fun m!4803323 () Bool)

(assert (=> b!4215276 m!4803323))

(declare-fun m!4803325 () Bool)

(assert (=> d!1241836 m!4803325))

(declare-fun m!4803327 () Bool)

(assert (=> d!1241836 m!4803327))

(declare-fun m!4803329 () Bool)

(assert (=> d!1241836 m!4803329))

(declare-fun m!4803331 () Bool)

(assert (=> d!1241836 m!4803331))

(assert (=> b!4215278 m!4803297))

(assert (=> b!4215278 m!4803319))

(assert (=> b!4215278 m!4803319))

(assert (=> b!4215278 m!4803321))

(assert (=> b!4215278 m!4803321))

(declare-fun m!4803333 () Bool)

(assert (=> b!4215278 m!4803333))

(assert (=> b!4214877 d!1241836))

(declare-fun d!1241838 () Bool)

(assert (=> d!1241838 (= (isEmpty!27462 rules!3967) ((_ is Nil!46365) rules!3967))))

(assert (=> b!4214854 d!1241838))

(declare-fun d!1241840 () Bool)

(declare-fun e!2616917 () Bool)

(assert (=> d!1241840 e!2616917))

(declare-fun res!1732107 () Bool)

(assert (=> d!1241840 (=> res!1732107 e!2616917)))

(declare-fun lt!1500211 () Bool)

(assert (=> d!1241840 (= res!1732107 (not lt!1500211))))

(declare-fun e!2616916 () Bool)

(assert (=> d!1241840 (= lt!1500211 e!2616916)))

(declare-fun res!1732108 () Bool)

(assert (=> d!1241840 (=> res!1732108 e!2616916)))

(assert (=> d!1241840 (= res!1732108 ((_ is Nil!46364) pBis!121))))

(assert (=> d!1241840 (= (isPrefix!4627 pBis!121 input!3517) lt!1500211)))

(declare-fun b!4215281 () Bool)

(declare-fun res!1732109 () Bool)

(declare-fun e!2616915 () Bool)

(assert (=> b!4215281 (=> (not res!1732109) (not e!2616915))))

(assert (=> b!4215281 (= res!1732109 (= (head!8942 pBis!121) (head!8942 input!3517)))))

(declare-fun b!4215280 () Bool)

(assert (=> b!4215280 (= e!2616916 e!2616915)))

(declare-fun res!1732110 () Bool)

(assert (=> b!4215280 (=> (not res!1732110) (not e!2616915))))

(assert (=> b!4215280 (= res!1732110 (not ((_ is Nil!46364) input!3517)))))

(declare-fun b!4215283 () Bool)

(assert (=> b!4215283 (= e!2616917 (>= (size!34048 input!3517) (size!34048 pBis!121)))))

(declare-fun b!4215282 () Bool)

(assert (=> b!4215282 (= e!2616915 (isPrefix!4627 (tail!6789 pBis!121) (tail!6789 input!3517)))))

(assert (= (and d!1241840 (not res!1732108)) b!4215280))

(assert (= (and b!4215280 res!1732110) b!4215281))

(assert (= (and b!4215281 res!1732109) b!4215282))

(assert (= (and d!1241840 (not res!1732107)) b!4215283))

(declare-fun m!4803335 () Bool)

(assert (=> b!4215281 m!4803335))

(assert (=> b!4215281 m!4803013))

(assert (=> b!4215283 m!4802949))

(assert (=> b!4215283 m!4803289))

(declare-fun m!4803337 () Bool)

(assert (=> b!4215282 m!4803337))

(assert (=> b!4215282 m!4803015))

(assert (=> b!4215282 m!4803337))

(assert (=> b!4215282 m!4803015))

(declare-fun m!4803339 () Bool)

(assert (=> b!4215282 m!4803339))

(assert (=> b!4214886 d!1241840))

(declare-fun d!1241842 () Bool)

(declare-fun e!2616920 () Bool)

(assert (=> d!1241842 e!2616920))

(declare-fun res!1732111 () Bool)

(assert (=> d!1241842 (=> res!1732111 e!2616920)))

(declare-fun lt!1500212 () Bool)

(assert (=> d!1241842 (= res!1732111 (not lt!1500212))))

(declare-fun e!2616919 () Bool)

(assert (=> d!1241842 (= lt!1500212 e!2616919)))

(declare-fun res!1732112 () Bool)

(assert (=> d!1241842 (=> res!1732112 e!2616919)))

(assert (=> d!1241842 (= res!1732112 ((_ is Nil!46364) p!3001))))

(assert (=> d!1241842 (= (isPrefix!4627 p!3001 input!3517) lt!1500212)))

(declare-fun b!4215285 () Bool)

(declare-fun res!1732113 () Bool)

(declare-fun e!2616918 () Bool)

(assert (=> b!4215285 (=> (not res!1732113) (not e!2616918))))

(assert (=> b!4215285 (= res!1732113 (= (head!8942 p!3001) (head!8942 input!3517)))))

(declare-fun b!4215284 () Bool)

(assert (=> b!4215284 (= e!2616919 e!2616918)))

(declare-fun res!1732114 () Bool)

(assert (=> b!4215284 (=> (not res!1732114) (not e!2616918))))

(assert (=> b!4215284 (= res!1732114 (not ((_ is Nil!46364) input!3517)))))

(declare-fun b!4215287 () Bool)

(assert (=> b!4215287 (= e!2616920 (>= (size!34048 input!3517) (size!34048 p!3001)))))

(declare-fun b!4215286 () Bool)

(assert (=> b!4215286 (= e!2616918 (isPrefix!4627 (tail!6789 p!3001) (tail!6789 input!3517)))))

(assert (= (and d!1241842 (not res!1732112)) b!4215284))

(assert (= (and b!4215284 res!1732114) b!4215285))

(assert (= (and b!4215285 res!1732113) b!4215286))

(assert (= (and d!1241842 (not res!1732111)) b!4215287))

(declare-fun m!4803341 () Bool)

(assert (=> b!4215285 m!4803341))

(assert (=> b!4215285 m!4803013))

(assert (=> b!4215287 m!4802949))

(assert (=> b!4215287 m!4803237))

(declare-fun m!4803343 () Bool)

(assert (=> b!4215286 m!4803343))

(assert (=> b!4215286 m!4803015))

(assert (=> b!4215286 m!4803343))

(assert (=> b!4215286 m!4803015))

(declare-fun m!4803345 () Bool)

(assert (=> b!4215286 m!4803345))

(assert (=> b!4214875 d!1241842))

(declare-fun d!1241844 () Bool)

(assert (=> d!1241844 (= (inv!60995 (tag!8632 (h!51785 rules!3967))) (= (mod (str.len (value!241916 (tag!8632 (h!51785 rules!3967)))) 2) 0))))

(assert (=> b!4214876 d!1241844))

(declare-fun d!1241846 () Bool)

(declare-fun res!1732115 () Bool)

(declare-fun e!2616921 () Bool)

(assert (=> d!1241846 (=> (not res!1732115) (not e!2616921))))

(assert (=> d!1241846 (= res!1732115 (semiInverseModEq!3374 (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toValue!10488 (transformation!7768 (h!51785 rules!3967)))))))

(assert (=> d!1241846 (= (inv!60999 (transformation!7768 (h!51785 rules!3967))) e!2616921)))

(declare-fun b!4215288 () Bool)

(assert (=> b!4215288 (= e!2616921 (equivClasses!3273 (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toValue!10488 (transformation!7768 (h!51785 rules!3967)))))))

(assert (= (and d!1241846 res!1732115) b!4215288))

(declare-fun m!4803347 () Bool)

(assert (=> d!1241846 m!4803347))

(declare-fun m!4803349 () Bool)

(assert (=> b!4215288 m!4803349))

(assert (=> b!4214876 d!1241846))

(declare-fun b!4215293 () Bool)

(declare-fun e!2616924 () Bool)

(declare-fun tp!1289344 () Bool)

(assert (=> b!4215293 (= e!2616924 (and tp_is_empty!22313 tp!1289344))))

(assert (=> b!4214874 (= tp!1289277 e!2616924)))

(assert (= (and b!4214874 ((_ is Cons!46364) (originalCharacters!8150 t!8364))) b!4215293))

(declare-fun b!4215294 () Bool)

(declare-fun e!2616925 () Bool)

(declare-fun tp!1289345 () Bool)

(assert (=> b!4215294 (= e!2616925 (and tp_is_empty!22313 tp!1289345))))

(assert (=> b!4214863 (= tp!1289268 e!2616925)))

(assert (= (and b!4214863 ((_ is Cons!46364) (originalCharacters!8150 tBis!41))) b!4215294))

(declare-fun b!4215295 () Bool)

(declare-fun e!2616926 () Bool)

(declare-fun tp!1289346 () Bool)

(assert (=> b!4215295 (= e!2616926 (and tp_is_empty!22313 tp!1289346))))

(assert (=> b!4214885 (= tp!1289270 e!2616926)))

(assert (= (and b!4214885 ((_ is Cons!46364) (t!348267 p!3001))) b!4215295))

(declare-fun e!2616929 () Bool)

(assert (=> b!4214873 (= tp!1289267 e!2616929)))

(declare-fun b!4215307 () Bool)

(declare-fun tp!1289360 () Bool)

(declare-fun tp!1289357 () Bool)

(assert (=> b!4215307 (= e!2616929 (and tp!1289360 tp!1289357))))

(declare-fun b!4215308 () Bool)

(declare-fun tp!1289359 () Bool)

(assert (=> b!4215308 (= e!2616929 tp!1289359)))

(declare-fun b!4215306 () Bool)

(assert (=> b!4215306 (= e!2616929 tp_is_empty!22313)))

(declare-fun b!4215309 () Bool)

(declare-fun tp!1289358 () Bool)

(declare-fun tp!1289361 () Bool)

(assert (=> b!4215309 (= e!2616929 (and tp!1289358 tp!1289361))))

(assert (= (and b!4214873 ((_ is ElementMatch!12673) (regex!7768 (rule!10890 tBis!41)))) b!4215306))

(assert (= (and b!4214873 ((_ is Concat!20672) (regex!7768 (rule!10890 tBis!41)))) b!4215307))

(assert (= (and b!4214873 ((_ is Star!12673) (regex!7768 (rule!10890 tBis!41)))) b!4215308))

(assert (= (and b!4214873 ((_ is Union!12673) (regex!7768 (rule!10890 tBis!41)))) b!4215309))

(declare-fun b!4215320 () Bool)

(declare-fun b_free!123615 () Bool)

(declare-fun b_next!124319 () Bool)

(assert (=> b!4215320 (= b_free!123615 (not b_next!124319))))

(declare-fun tp!1289371 () Bool)

(declare-fun b_and!332049 () Bool)

(assert (=> b!4215320 (= tp!1289371 b_and!332049)))

(declare-fun b_free!123617 () Bool)

(declare-fun b_next!124321 () Bool)

(assert (=> b!4215320 (= b_free!123617 (not b_next!124321))))

(declare-fun tb!253033 () Bool)

(declare-fun t!348324 () Bool)

(assert (=> (and b!4215320 (= (toChars!10347 (transformation!7768 (h!51785 (t!348268 rules!3967)))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41)))) t!348324) tb!253033))

(declare-fun result!308410 () Bool)

(assert (= result!308410 result!308358))

(assert (=> d!1241708 t!348324))

(declare-fun t!348326 () Bool)

(declare-fun tb!253035 () Bool)

(assert (=> (and b!4215320 (= (toChars!10347 (transformation!7768 (h!51785 (t!348268 rules!3967)))) (toChars!10347 (transformation!7768 (rule!10890 (_1!25181 lt!1500070))))) t!348326) tb!253035))

(declare-fun result!308412 () Bool)

(assert (= result!308412 result!308388))

(assert (=> d!1241792 t!348326))

(assert (=> b!4215236 t!348324))

(declare-fun tb!253037 () Bool)

(declare-fun t!348328 () Bool)

(assert (=> (and b!4215320 (= (toChars!10347 (transformation!7768 (h!51785 (t!348268 rules!3967)))) (toChars!10347 (transformation!7768 (rule!10890 t!8364)))) t!348328) tb!253037))

(declare-fun result!308414 () Bool)

(assert (= result!308414 result!308396))

(assert (=> b!4215238 t!348328))

(declare-fun tp!1289372 () Bool)

(declare-fun b_and!332051 () Bool)

(assert (=> b!4215320 (= tp!1289372 (and (=> t!348324 result!308410) (=> t!348326 result!308412) (=> t!348328 result!308414) b_and!332051))))

(declare-fun e!2616938 () Bool)

(assert (=> b!4215320 (= e!2616938 (and tp!1289371 tp!1289372))))

(declare-fun b!4215319 () Bool)

(declare-fun tp!1289373 () Bool)

(declare-fun e!2616940 () Bool)

(assert (=> b!4215319 (= e!2616940 (and tp!1289373 (inv!60995 (tag!8632 (h!51785 (t!348268 rules!3967)))) (inv!60999 (transformation!7768 (h!51785 (t!348268 rules!3967)))) e!2616938))))

(declare-fun b!4215318 () Bool)

(declare-fun e!2616939 () Bool)

(declare-fun tp!1289370 () Bool)

(assert (=> b!4215318 (= e!2616939 (and e!2616940 tp!1289370))))

(assert (=> b!4214882 (= tp!1289278 e!2616939)))

(assert (= b!4215319 b!4215320))

(assert (= b!4215318 b!4215319))

(assert (= (and b!4214882 ((_ is Cons!46365) (t!348268 rules!3967))) b!4215318))

(declare-fun m!4803351 () Bool)

(assert (=> b!4215319 m!4803351))

(declare-fun m!4803353 () Bool)

(assert (=> b!4215319 m!4803353))

(declare-fun e!2616942 () Bool)

(assert (=> b!4214861 (= tp!1289263 e!2616942)))

(declare-fun b!4215322 () Bool)

(declare-fun tp!1289377 () Bool)

(declare-fun tp!1289374 () Bool)

(assert (=> b!4215322 (= e!2616942 (and tp!1289377 tp!1289374))))

(declare-fun b!4215323 () Bool)

(declare-fun tp!1289376 () Bool)

(assert (=> b!4215323 (= e!2616942 tp!1289376)))

(declare-fun b!4215321 () Bool)

(assert (=> b!4215321 (= e!2616942 tp_is_empty!22313)))

(declare-fun b!4215324 () Bool)

(declare-fun tp!1289375 () Bool)

(declare-fun tp!1289378 () Bool)

(assert (=> b!4215324 (= e!2616942 (and tp!1289375 tp!1289378))))

(assert (= (and b!4214861 ((_ is ElementMatch!12673) (regex!7768 rBis!178))) b!4215321))

(assert (= (and b!4214861 ((_ is Concat!20672) (regex!7768 rBis!178))) b!4215322))

(assert (= (and b!4214861 ((_ is Star!12673) (regex!7768 rBis!178))) b!4215323))

(assert (= (and b!4214861 ((_ is Union!12673) (regex!7768 rBis!178))) b!4215324))

(declare-fun b!4215325 () Bool)

(declare-fun e!2616943 () Bool)

(declare-fun tp!1289379 () Bool)

(assert (=> b!4215325 (= e!2616943 (and tp_is_empty!22313 tp!1289379))))

(assert (=> b!4214859 (= tp!1289280 e!2616943)))

(assert (= (and b!4214859 ((_ is Cons!46364) (t!348267 pBis!121))) b!4215325))

(declare-fun e!2616944 () Bool)

(assert (=> b!4214858 (= tp!1289269 e!2616944)))

(declare-fun b!4215327 () Bool)

(declare-fun tp!1289383 () Bool)

(declare-fun tp!1289380 () Bool)

(assert (=> b!4215327 (= e!2616944 (and tp!1289383 tp!1289380))))

(declare-fun b!4215328 () Bool)

(declare-fun tp!1289382 () Bool)

(assert (=> b!4215328 (= e!2616944 tp!1289382)))

(declare-fun b!4215326 () Bool)

(assert (=> b!4215326 (= e!2616944 tp_is_empty!22313)))

(declare-fun b!4215329 () Bool)

(declare-fun tp!1289381 () Bool)

(declare-fun tp!1289384 () Bool)

(assert (=> b!4215329 (= e!2616944 (and tp!1289381 tp!1289384))))

(assert (= (and b!4214858 ((_ is ElementMatch!12673) (regex!7768 (rule!10890 t!8364)))) b!4215326))

(assert (= (and b!4214858 ((_ is Concat!20672) (regex!7768 (rule!10890 t!8364)))) b!4215327))

(assert (= (and b!4214858 ((_ is Star!12673) (regex!7768 (rule!10890 t!8364)))) b!4215328))

(assert (= (and b!4214858 ((_ is Union!12673) (regex!7768 (rule!10890 t!8364)))) b!4215329))

(declare-fun b!4215330 () Bool)

(declare-fun e!2616945 () Bool)

(declare-fun tp!1289385 () Bool)

(assert (=> b!4215330 (= e!2616945 (and tp_is_empty!22313 tp!1289385))))

(assert (=> b!4214878 (= tp!1289271 e!2616945)))

(assert (= (and b!4214878 ((_ is Cons!46364) (t!348267 suffix!1557))) b!4215330))

(declare-fun b!4215331 () Bool)

(declare-fun e!2616946 () Bool)

(declare-fun tp!1289386 () Bool)

(assert (=> b!4215331 (= e!2616946 (and tp_is_empty!22313 tp!1289386))))

(assert (=> b!4214867 (= tp!1289276 e!2616946)))

(assert (= (and b!4214867 ((_ is Cons!46364) (t!348267 input!3517))) b!4215331))

(declare-fun b!4215332 () Bool)

(declare-fun e!2616947 () Bool)

(declare-fun tp!1289387 () Bool)

(assert (=> b!4215332 (= e!2616947 (and tp_is_empty!22313 tp!1289387))))

(assert (=> b!4214857 (= tp!1289262 e!2616947)))

(assert (= (and b!4214857 ((_ is Cons!46364) (t!348267 suffixBis!41))) b!4215332))

(declare-fun e!2616948 () Bool)

(assert (=> b!4214876 (= tp!1289275 e!2616948)))

(declare-fun b!4215334 () Bool)

(declare-fun tp!1289391 () Bool)

(declare-fun tp!1289388 () Bool)

(assert (=> b!4215334 (= e!2616948 (and tp!1289391 tp!1289388))))

(declare-fun b!4215335 () Bool)

(declare-fun tp!1289390 () Bool)

(assert (=> b!4215335 (= e!2616948 tp!1289390)))

(declare-fun b!4215333 () Bool)

(assert (=> b!4215333 (= e!2616948 tp_is_empty!22313)))

(declare-fun b!4215336 () Bool)

(declare-fun tp!1289389 () Bool)

(declare-fun tp!1289392 () Bool)

(assert (=> b!4215336 (= e!2616948 (and tp!1289389 tp!1289392))))

(assert (= (and b!4214876 ((_ is ElementMatch!12673) (regex!7768 (h!51785 rules!3967)))) b!4215333))

(assert (= (and b!4214876 ((_ is Concat!20672) (regex!7768 (h!51785 rules!3967)))) b!4215334))

(assert (= (and b!4214876 ((_ is Star!12673) (regex!7768 (h!51785 rules!3967)))) b!4215335))

(assert (= (and b!4214876 ((_ is Union!12673) (regex!7768 (h!51785 rules!3967)))) b!4215336))

(declare-fun b_lambda!124169 () Bool)

(assert (= b_lambda!124165 (or (and b!4214871 b_free!123597 (= (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4214879 b_free!123609 (= (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4214884 b_free!123601 (= (toChars!10347 (transformation!7768 rBis!178)) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4215320 b_free!123617 (= (toChars!10347 (transformation!7768 (h!51785 (t!348268 rules!3967)))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4214852 b_free!123605) b_lambda!124169)))

(declare-fun b_lambda!124171 () Bool)

(assert (= b_lambda!124151 (or (and b!4214871 b_free!123597 (= (toChars!10347 (transformation!7768 (rule!10890 t!8364))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4214879 b_free!123609 (= (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4214884 b_free!123601 (= (toChars!10347 (transformation!7768 rBis!178)) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4215320 b_free!123617 (= (toChars!10347 (transformation!7768 (h!51785 (t!348268 rules!3967)))) (toChars!10347 (transformation!7768 (rule!10890 tBis!41))))) (and b!4214852 b_free!123605) b_lambda!124171)))

(declare-fun b_lambda!124173 () Bool)

(assert (= b_lambda!124167 (or (and b!4214871 b_free!123597) (and b!4214852 b_free!123605 (= (toChars!10347 (transformation!7768 (rule!10890 tBis!41))) (toChars!10347 (transformation!7768 (rule!10890 t!8364))))) (and b!4215320 b_free!123617 (= (toChars!10347 (transformation!7768 (h!51785 (t!348268 rules!3967)))) (toChars!10347 (transformation!7768 (rule!10890 t!8364))))) (and b!4214884 b_free!123601 (= (toChars!10347 (transformation!7768 rBis!178)) (toChars!10347 (transformation!7768 (rule!10890 t!8364))))) (and b!4214879 b_free!123609 (= (toChars!10347 (transformation!7768 (h!51785 rules!3967))) (toChars!10347 (transformation!7768 (rule!10890 t!8364))))) b_lambda!124173)))

(check-sat (not b_lambda!124171) b_and!332045 (not b!4215101) (not b!4215249) (not b!4215259) (not d!1241708) (not b!4215319) (not b!4215286) (not b_next!124311) (not b!4215318) (not b!4215325) (not d!1241702) (not b!4214941) (not b!4215276) (not d!1241774) (not b!4214949) (not b!4215254) (not b!4215061) (not b!4215206) (not d!1241796) (not b!4215308) (not b!4215274) (not b!4215203) (not b!4215269) (not d!1241768) (not d!1241810) (not b!4215108) (not b!4215227) (not b!4215266) (not b!4215202) (not b!4214942) b_and!332051 (not d!1241830) (not b!4215238) (not b!4215329) (not d!1241820) (not b!4215293) (not b!4215323) tp_is_empty!22313 (not d!1241764) (not b!4215264) b_and!332041 (not b_next!124303) (not b!4215241) (not b!4215285) (not b!4215220) (not b!4215253) (not b!4215328) (not b!4215252) (not b!4215282) (not b_next!124313) (not b!4215219) (not b!4215063) (not b!4215258) (not d!1241794) (not b!4215262) (not b!4215255) (not b!4215237) (not b!4215331) (not b!4214952) (not b!4215256) (not d!1241836) (not b!4215226) (not b!4215060) (not b!4215228) (not b!4214945) (not d!1241808) (not b_next!124299) (not tb!253017) b_and!331969 (not d!1241710) (not b!4215324) (not b!4215257) (not bm!293000) (not b!4215327) b_and!332043 (not d!1241790) (not d!1241824) (not d!1241834) (not b!4215335) (not b!4215332) (not b_lambda!124169) (not d!1241816) (not b!4215102) (not d!1241766) (not d!1241818) (not b!4215279) (not d!1241806) (not b_next!124301) (not b!4215205) (not b!4215336) b_and!331965 (not d!1241792) (not b!4215287) (not b!4215247) (not b!4215204) (not b_lambda!124173) (not b!4215055) (not b!4215334) (not b!4215056) (not b!4215250) (not b!4215277) (not d!1241828) (not b!4215275) (not b!4215268) (not d!1241826) (not b!4215260) (not b!4215278) (not b!4215272) (not b!4215307) (not tb!253025) (not b!4215058) (not b!4215209) (not b!4215103) (not b!4215271) (not b!4215265) (not b!4214948) (not b!4215059) (not b!4214958) (not b!4215224) (not b!4215239) (not b!4215281) (not d!1241798) (not b!4215240) (not b_next!124309) (not b!4215322) (not b!4215288) b_and!332049 (not b_next!124319) b_and!332047 b_and!331977 (not b!4215200) (not b_next!124321) (not b_lambda!124163) (not b!4215283) (not b!4215201) (not bm!293001) (not b_next!124305) (not b!4215330) (not b!4215231) (not d!1241846) (not b!4215309) (not b!4215295) (not b_next!124307) (not b!4215207) b_and!331973 (not tb!252995) (not b!4215062) (not b!4215236) (not b!4215294))
(check-sat b_and!332045 (not b_next!124311) b_and!332051 (not b_next!124313) (not b_next!124299) b_and!331969 b_and!332043 (not b_next!124301) b_and!331965 (not b_next!124309) (not b_next!124305) b_and!332041 (not b_next!124303) b_and!332049 (not b_next!124319) b_and!332047 b_and!331977 (not b_next!124321) (not b_next!124307) b_and!331973)

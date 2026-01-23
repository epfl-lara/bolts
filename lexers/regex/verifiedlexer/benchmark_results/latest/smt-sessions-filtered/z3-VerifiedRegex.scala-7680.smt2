; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404378 () Bool)

(assert start!404378)

(declare-fun b!4228771 () Bool)

(declare-fun b_free!124875 () Bool)

(declare-fun b_next!125579 () Bool)

(assert (=> b!4228771 (= b_free!124875 (not b_next!125579))))

(declare-fun tp!1295403 () Bool)

(declare-fun b_and!334113 () Bool)

(assert (=> b!4228771 (= tp!1295403 b_and!334113)))

(declare-fun b_free!124877 () Bool)

(declare-fun b_next!125581 () Bool)

(assert (=> b!4228771 (= b_free!124877 (not b_next!125581))))

(declare-fun tp!1295396 () Bool)

(declare-fun b_and!334115 () Bool)

(assert (=> b!4228771 (= tp!1295396 b_and!334115)))

(declare-fun b!4228772 () Bool)

(declare-fun b_free!124879 () Bool)

(declare-fun b_next!125583 () Bool)

(assert (=> b!4228772 (= b_free!124879 (not b_next!125583))))

(declare-fun tp!1295399 () Bool)

(declare-fun b_and!334117 () Bool)

(assert (=> b!4228772 (= tp!1295399 b_and!334117)))

(declare-fun b_free!124881 () Bool)

(declare-fun b_next!125585 () Bool)

(assert (=> b!4228772 (= b_free!124881 (not b_next!125585))))

(declare-fun tp!1295404 () Bool)

(declare-fun b_and!334119 () Bool)

(assert (=> b!4228772 (= tp!1295404 b_and!334119)))

(declare-fun b!4228766 () Bool)

(declare-fun res!1738939 () Bool)

(declare-fun e!2625815 () Bool)

(assert (=> b!4228766 (=> (not res!1738939) (not e!2625815))))

(declare-datatypes ((C!25752 0))(
  ( (C!25753 (val!15038 Int)) )
))
(declare-datatypes ((List!46808 0))(
  ( (Nil!46684) (Cons!46684 (h!52104 C!25752) (t!349429 List!46808)) )
))
(declare-fun p!3014 () List!46808)

(declare-fun suffix!1590 () List!46808)

(declare-fun input!3586 () List!46808)

(declare-fun ++!11902 (List!46808 List!46808) List!46808)

(assert (=> b!4228766 (= res!1738939 (= (++!11902 p!3014 suffix!1590) input!3586))))

(declare-fun b!4228768 () Bool)

(declare-fun res!1738943 () Bool)

(declare-fun e!2625814 () Bool)

(assert (=> b!4228768 (=> res!1738943 e!2625814)))

(declare-fun lt!1503424 () Int)

(declare-fun lt!1503421 () Int)

(assert (=> b!4228768 (= res!1738943 (< lt!1503424 lt!1503421))))

(declare-fun b!4228769 () Bool)

(declare-fun e!2625804 () Bool)

(declare-fun tp_is_empty!22489 () Bool)

(declare-fun tp!1295394 () Bool)

(assert (=> b!4228769 (= e!2625804 (and tp_is_empty!22489 tp!1295394))))

(declare-fun b!4228770 () Bool)

(declare-fun res!1738941 () Bool)

(declare-fun e!2625807 () Bool)

(assert (=> b!4228770 (=> (not res!1738941) (not e!2625807))))

(declare-datatypes ((List!46809 0))(
  ( (Nil!46685) (Cons!46685 (h!52105 (_ BitVec 16)) (t!349430 List!46809)) )
))
(declare-datatypes ((TokenValue!8102 0))(
  ( (FloatLiteralValue!16204 (text!57159 List!46809)) (TokenValueExt!8101 (__x!28427 Int)) (Broken!40510 (value!244824 List!46809)) (Object!8225) (End!8102) (Def!8102) (Underscore!8102) (Match!8102) (Else!8102) (Error!8102) (Case!8102) (If!8102) (Extends!8102) (Abstract!8102) (Class!8102) (Val!8102) (DelimiterValue!16204 (del!8162 List!46809)) (KeywordValue!8108 (value!244825 List!46809)) (CommentValue!16204 (value!244826 List!46809)) (WhitespaceValue!16204 (value!244827 List!46809)) (IndentationValue!8102 (value!244828 List!46809)) (String!54383) (Int32!8102) (Broken!40511 (value!244829 List!46809)) (Boolean!8103) (Unit!65786) (OperatorValue!8105 (op!8162 List!46809)) (IdentifierValue!16204 (value!244830 List!46809)) (IdentifierValue!16205 (value!244831 List!46809)) (WhitespaceValue!16205 (value!244832 List!46809)) (True!16204) (False!16204) (Broken!40512 (value!244833 List!46809)) (Broken!40513 (value!244834 List!46809)) (True!16205) (RightBrace!8102) (RightBracket!8102) (Colon!8102) (Null!8102) (Comma!8102) (LeftBracket!8102) (False!16205) (LeftBrace!8102) (ImaginaryLiteralValue!8102 (text!57160 List!46809)) (StringLiteralValue!24306 (value!244835 List!46809)) (EOFValue!8102 (value!244836 List!46809)) (IdentValue!8102 (value!244837 List!46809)) (DelimiterValue!16205 (value!244838 List!46809)) (DedentValue!8102 (value!244839 List!46809)) (NewLineValue!8102 (value!244840 List!46809)) (IntegerValue!24306 (value!244841 (_ BitVec 32)) (text!57161 List!46809)) (IntegerValue!24307 (value!244842 Int) (text!57162 List!46809)) (Times!8102) (Or!8102) (Equal!8102) (Minus!8102) (Broken!40514 (value!244843 List!46809)) (And!8102) (Div!8102) (LessEqual!8102) (Mod!8102) (Concat!20879) (Not!8102) (Plus!8102) (SpaceValue!8102 (value!244844 List!46809)) (IntegerValue!24308 (value!244845 Int) (text!57163 List!46809)) (StringLiteralValue!24307 (text!57164 List!46809)) (FloatLiteralValue!16205 (text!57165 List!46809)) (BytesLiteralValue!8102 (value!244846 List!46809)) (CommentValue!16205 (value!244847 List!46809)) (StringLiteralValue!24308 (value!244848 List!46809)) (ErrorTokenValue!8102 (msg!8163 List!46809)) )
))
(declare-datatypes ((IArray!28171 0))(
  ( (IArray!28172 (innerList!14143 List!46808)) )
))
(declare-datatypes ((Conc!14083 0))(
  ( (Node!14083 (left!34723 Conc!14083) (right!35053 Conc!14083) (csize!28396 Int) (cheight!14294 Int)) (Leaf!21764 (xs!17389 IArray!28171) (csize!28397 Int)) (Empty!14083) )
))
(declare-datatypes ((String!54384 0))(
  ( (String!54385 (value!244849 String)) )
))
(declare-datatypes ((BalanceConc!27760 0))(
  ( (BalanceConc!27761 (c!718792 Conc!14083)) )
))
(declare-datatypes ((TokenValueInjection!15632 0))(
  ( (TokenValueInjection!15633 (toValue!10600 Int) (toChars!10459 Int)) )
))
(declare-datatypes ((Regex!12777 0))(
  ( (ElementMatch!12777 (c!718793 C!25752)) (Concat!20880 (regOne!26066 Regex!12777) (regTwo!26066 Regex!12777)) (EmptyExpr!12777) (Star!12777 (reg!13106 Regex!12777)) (EmptyLang!12777) (Union!12777 (regOne!26067 Regex!12777) (regTwo!26067 Regex!12777)) )
))
(declare-datatypes ((Rule!15544 0))(
  ( (Rule!15545 (regex!7872 Regex!12777) (tag!8736 String!54384) (isSeparator!7872 Bool) (transformation!7872 TokenValueInjection!15632)) )
))
(declare-fun r!4334 () Rule!15544)

(declare-fun validRegex!5795 (Regex!12777) Bool)

(assert (=> b!4228770 (= res!1738941 (validRegex!5795 (regex!7872 r!4334)))))

(declare-fun e!2625817 () Bool)

(assert (=> b!4228771 (= e!2625817 (and tp!1295403 tp!1295396))))

(declare-fun e!2625808 () Bool)

(assert (=> b!4228772 (= e!2625808 (and tp!1295399 tp!1295404))))

(declare-fun b!4228773 () Bool)

(declare-fun res!1738947 () Bool)

(assert (=> b!4228773 (=> (not res!1738947) (not e!2625807))))

(declare-fun matchR!6416 (Regex!12777 List!46808) Bool)

(assert (=> b!4228773 (= res!1738947 (matchR!6416 (regex!7872 r!4334) p!3014))))

(declare-fun b!4228774 () Bool)

(declare-fun e!2625820 () Bool)

(assert (=> b!4228774 (= e!2625820 e!2625807)))

(declare-fun res!1738945 () Bool)

(assert (=> b!4228774 (=> (not res!1738945) (not e!2625807))))

(assert (=> b!4228774 (= res!1738945 (> lt!1503424 lt!1503421))))

(declare-fun size!34202 (List!46808) Int)

(assert (=> b!4228774 (= lt!1503421 (size!34202 p!3014))))

(declare-fun b!4228775 () Bool)

(assert (=> b!4228775 (= e!2625814 true)))

(declare-fun e!2625805 () Bool)

(assert (=> b!4228775 e!2625805))

(declare-fun res!1738948 () Bool)

(assert (=> b!4228775 (=> res!1738948 e!2625805)))

(declare-fun pBis!134 () List!46808)

(assert (=> b!4228775 (= res!1738948 (= pBis!134 p!3014))))

(declare-datatypes ((Unit!65787 0))(
  ( (Unit!65788) )
))
(declare-fun lt!1503422 () Unit!65787)

(declare-fun longestMatchNoBiggerStringMatch!7 (Regex!12777 List!46808 List!46808 List!46808) Unit!65787)

(assert (=> b!4228775 (= lt!1503422 (longestMatchNoBiggerStringMatch!7 (regex!7872 r!4334) input!3586 p!3014 pBis!134))))

(declare-fun b!4228776 () Bool)

(assert (=> b!4228776 (= e!2625815 e!2625820)))

(declare-fun res!1738949 () Bool)

(assert (=> b!4228776 (=> (not res!1738949) (not e!2625820))))

(declare-fun lt!1503423 () Int)

(assert (=> b!4228776 (= res!1738949 (<= lt!1503424 lt!1503423))))

(assert (=> b!4228776 (= lt!1503423 (size!34202 input!3586))))

(assert (=> b!4228776 (= lt!1503424 (size!34202 pBis!134))))

(declare-fun b!4228777 () Bool)

(declare-fun res!1738952 () Bool)

(assert (=> b!4228777 (=> (not res!1738952) (not e!2625807))))

(declare-datatypes ((Token!14378 0))(
  ( (Token!14379 (value!244850 TokenValue!8102) (rule!10986 Rule!15544) (size!34203 Int) (originalCharacters!8220 List!46808)) )
))
(declare-fun t!8425 () Token!14378)

(declare-fun list!16850 (BalanceConc!27760) List!46808)

(declare-fun charsOf!5247 (Token!14378) BalanceConc!27760)

(assert (=> b!4228777 (= res!1738952 (= (list!16850 (charsOf!5247 t!8425)) p!3014))))

(declare-fun b!4228778 () Bool)

(declare-fun e!2625813 () Bool)

(declare-fun tp!1295395 () Bool)

(assert (=> b!4228778 (= e!2625813 (and tp_is_empty!22489 tp!1295395))))

(declare-fun b!4228779 () Bool)

(declare-fun e!2625816 () Bool)

(declare-fun tp!1295401 () Bool)

(assert (=> b!4228779 (= e!2625816 (and tp_is_empty!22489 tp!1295401))))

(declare-fun b!4228780 () Bool)

(declare-fun res!1738942 () Bool)

(assert (=> b!4228780 (=> res!1738942 e!2625814)))

(declare-datatypes ((tuple2!44280 0))(
  ( (tuple2!44281 (_1!25274 List!46808) (_2!25274 List!46808)) )
))
(declare-fun findLongestMatchInner!1681 (Regex!12777 List!46808 Int List!46808 List!46808 Int) tuple2!44280)

(assert (=> b!4228780 (= res!1738942 (not (= (_1!25274 (findLongestMatchInner!1681 (regex!7872 r!4334) Nil!46684 (size!34202 Nil!46684) input!3586 input!3586 lt!1503423)) p!3014)))))

(declare-fun b!4228767 () Bool)

(declare-fun res!1738950 () Bool)

(assert (=> b!4228767 (=> (not res!1738950) (not e!2625807))))

(declare-datatypes ((LexerInterface!7467 0))(
  ( (LexerInterfaceExt!7464 (__x!28428 Int)) (Lexer!7465) )
))
(declare-fun thiss!26785 () LexerInterface!7467)

(declare-fun ruleValid!3568 (LexerInterface!7467 Rule!15544) Bool)

(assert (=> b!4228767 (= res!1738950 (ruleValid!3568 thiss!26785 r!4334))))

(declare-fun res!1738944 () Bool)

(assert (=> start!404378 (=> (not res!1738944) (not e!2625815))))

(get-info :version)

(assert (=> start!404378 (= res!1738944 ((_ is Lexer!7465) thiss!26785))))

(assert (=> start!404378 e!2625815))

(assert (=> start!404378 true))

(assert (=> start!404378 e!2625804))

(declare-fun e!2625811 () Bool)

(declare-fun inv!61356 (Token!14378) Bool)

(assert (=> start!404378 (and (inv!61356 t!8425) e!2625811)))

(declare-fun e!2625818 () Bool)

(assert (=> start!404378 e!2625818))

(assert (=> start!404378 e!2625813))

(assert (=> start!404378 e!2625816))

(declare-fun e!2625819 () Bool)

(assert (=> start!404378 e!2625819))

(declare-fun b!4228781 () Bool)

(declare-fun tp!1295398 () Bool)

(declare-fun inv!61353 (String!54384) Bool)

(declare-fun inv!61357 (TokenValueInjection!15632) Bool)

(assert (=> b!4228781 (= e!2625818 (and tp!1295398 (inv!61353 (tag!8736 r!4334)) (inv!61357 (transformation!7872 r!4334)) e!2625808))))

(declare-fun b!4228782 () Bool)

(assert (=> b!4228782 (= e!2625807 (not e!2625814))))

(declare-fun res!1738946 () Bool)

(assert (=> b!4228782 (=> res!1738946 e!2625814)))

(declare-datatypes ((tuple2!44282 0))(
  ( (tuple2!44283 (_1!25275 Token!14378) (_2!25275 List!46808)) )
))
(declare-datatypes ((Option!10020 0))(
  ( (None!10019) (Some!10019 (v!40947 tuple2!44282)) )
))
(declare-fun maxPrefixOneRule!3414 (LexerInterface!7467 Rule!15544 List!46808) Option!10020)

(assert (=> b!4228782 (= res!1738946 (not (= (maxPrefixOneRule!3414 thiss!26785 r!4334 input!3586) (Some!10019 (tuple2!44283 t!8425 suffix!1590)))))))

(declare-fun isPrefix!4687 (List!46808 List!46808) Bool)

(assert (=> b!4228782 (isPrefix!4687 input!3586 input!3586)))

(declare-fun lt!1503420 () Unit!65787)

(declare-fun lemmaIsPrefixRefl!3098 (List!46808 List!46808) Unit!65787)

(assert (=> b!4228782 (= lt!1503420 (lemmaIsPrefixRefl!3098 input!3586 input!3586))))

(declare-fun b!4228783 () Bool)

(assert (=> b!4228783 (= e!2625805 (not (matchR!6416 (regex!7872 r!4334) pBis!134)))))

(declare-fun b!4228784 () Bool)

(declare-fun res!1738940 () Bool)

(assert (=> b!4228784 (=> (not res!1738940) (not e!2625815))))

(assert (=> b!4228784 (= res!1738940 (isPrefix!4687 pBis!134 input!3586))))

(declare-fun b!4228785 () Bool)

(declare-fun tp!1295400 () Bool)

(assert (=> b!4228785 (= e!2625819 (and tp_is_empty!22489 tp!1295400))))

(declare-fun b!4228786 () Bool)

(declare-fun res!1738951 () Bool)

(assert (=> b!4228786 (=> (not res!1738951) (not e!2625815))))

(assert (=> b!4228786 (= res!1738951 (isPrefix!4687 p!3014 input!3586))))

(declare-fun tp!1295397 () Bool)

(declare-fun b!4228787 () Bool)

(declare-fun e!2625812 () Bool)

(assert (=> b!4228787 (= e!2625812 (and tp!1295397 (inv!61353 (tag!8736 (rule!10986 t!8425))) (inv!61357 (transformation!7872 (rule!10986 t!8425))) e!2625817))))

(declare-fun tp!1295402 () Bool)

(declare-fun b!4228788 () Bool)

(declare-fun inv!21 (TokenValue!8102) Bool)

(assert (=> b!4228788 (= e!2625811 (and (inv!21 (value!244850 t!8425)) e!2625812 tp!1295402))))

(assert (= (and start!404378 res!1738944) b!4228766))

(assert (= (and b!4228766 res!1738939) b!4228786))

(assert (= (and b!4228786 res!1738951) b!4228784))

(assert (= (and b!4228784 res!1738940) b!4228776))

(assert (= (and b!4228776 res!1738949) b!4228774))

(assert (= (and b!4228774 res!1738945) b!4228767))

(assert (= (and b!4228767 res!1738950) b!4228770))

(assert (= (and b!4228770 res!1738941) b!4228773))

(assert (= (and b!4228773 res!1738947) b!4228777))

(assert (= (and b!4228777 res!1738952) b!4228782))

(assert (= (and b!4228782 (not res!1738946)) b!4228768))

(assert (= (and b!4228768 (not res!1738943)) b!4228780))

(assert (= (and b!4228780 (not res!1738942)) b!4228775))

(assert (= (and b!4228775 (not res!1738948)) b!4228783))

(assert (= (and start!404378 ((_ is Cons!46684) p!3014)) b!4228769))

(assert (= b!4228787 b!4228771))

(assert (= b!4228788 b!4228787))

(assert (= start!404378 b!4228788))

(assert (= b!4228781 b!4228772))

(assert (= start!404378 b!4228781))

(assert (= (and start!404378 ((_ is Cons!46684) input!3586)) b!4228778))

(assert (= (and start!404378 ((_ is Cons!46684) pBis!134)) b!4228779))

(assert (= (and start!404378 ((_ is Cons!46684) suffix!1590)) b!4228785))

(declare-fun m!4815655 () Bool)

(assert (=> b!4228784 m!4815655))

(declare-fun m!4815657 () Bool)

(assert (=> b!4228776 m!4815657))

(declare-fun m!4815659 () Bool)

(assert (=> b!4228776 m!4815659))

(declare-fun m!4815661 () Bool)

(assert (=> b!4228777 m!4815661))

(assert (=> b!4228777 m!4815661))

(declare-fun m!4815663 () Bool)

(assert (=> b!4228777 m!4815663))

(declare-fun m!4815665 () Bool)

(assert (=> b!4228766 m!4815665))

(declare-fun m!4815667 () Bool)

(assert (=> b!4228786 m!4815667))

(declare-fun m!4815669 () Bool)

(assert (=> b!4228781 m!4815669))

(declare-fun m!4815671 () Bool)

(assert (=> b!4228781 m!4815671))

(declare-fun m!4815673 () Bool)

(assert (=> b!4228775 m!4815673))

(declare-fun m!4815675 () Bool)

(assert (=> b!4228770 m!4815675))

(declare-fun m!4815677 () Bool)

(assert (=> b!4228774 m!4815677))

(declare-fun m!4815679 () Bool)

(assert (=> b!4228782 m!4815679))

(declare-fun m!4815681 () Bool)

(assert (=> b!4228782 m!4815681))

(declare-fun m!4815683 () Bool)

(assert (=> b!4228782 m!4815683))

(declare-fun m!4815685 () Bool)

(assert (=> start!404378 m!4815685))

(declare-fun m!4815687 () Bool)

(assert (=> b!4228780 m!4815687))

(assert (=> b!4228780 m!4815687))

(declare-fun m!4815689 () Bool)

(assert (=> b!4228780 m!4815689))

(declare-fun m!4815691 () Bool)

(assert (=> b!4228767 m!4815691))

(declare-fun m!4815693 () Bool)

(assert (=> b!4228783 m!4815693))

(declare-fun m!4815695 () Bool)

(assert (=> b!4228787 m!4815695))

(declare-fun m!4815697 () Bool)

(assert (=> b!4228787 m!4815697))

(declare-fun m!4815699 () Bool)

(assert (=> b!4228788 m!4815699))

(declare-fun m!4815701 () Bool)

(assert (=> b!4228773 m!4815701))

(check-sat (not b!4228767) (not b!4228776) (not b_next!125583) b_and!334115 (not b!4228780) (not b!4228782) (not start!404378) (not b!4228785) (not b!4228778) (not b!4228786) (not b!4228779) (not b!4228781) (not b!4228773) (not b_next!125579) tp_is_empty!22489 (not b!4228775) (not b!4228777) (not b!4228783) (not b!4228769) (not b!4228770) (not b!4228788) (not b_next!125585) (not b!4228787) (not b_next!125581) b_and!334113 b_and!334119 b_and!334117 (not b!4228766) (not b!4228774) (not b!4228784))
(check-sat (not b_next!125585) (not b_next!125583) b_and!334115 (not b_next!125579) (not b_next!125581) b_and!334113 b_and!334119 b_and!334117)

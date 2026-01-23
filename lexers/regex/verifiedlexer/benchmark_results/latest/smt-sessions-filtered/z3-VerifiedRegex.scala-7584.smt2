; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400498 () Bool)

(assert start!400498)

(declare-fun b!4194813 () Bool)

(declare-fun b_free!122199 () Bool)

(declare-fun b_next!122903 () Bool)

(assert (=> b!4194813 (= b_free!122199 (not b_next!122903))))

(declare-fun tp!1281578 () Bool)

(declare-fun b_and!328965 () Bool)

(assert (=> b!4194813 (= tp!1281578 b_and!328965)))

(declare-fun b_free!122201 () Bool)

(declare-fun b_next!122905 () Bool)

(assert (=> b!4194813 (= b_free!122201 (not b_next!122905))))

(declare-fun tp!1281587 () Bool)

(declare-fun b_and!328967 () Bool)

(assert (=> b!4194813 (= tp!1281587 b_and!328967)))

(declare-fun b!4194825 () Bool)

(declare-fun b_free!122203 () Bool)

(declare-fun b_next!122907 () Bool)

(assert (=> b!4194825 (= b_free!122203 (not b_next!122907))))

(declare-fun tp!1281576 () Bool)

(declare-fun b_and!328969 () Bool)

(assert (=> b!4194825 (= tp!1281576 b_and!328969)))

(declare-fun b_free!122205 () Bool)

(declare-fun b_next!122909 () Bool)

(assert (=> b!4194825 (= b_free!122205 (not b_next!122909))))

(declare-fun tp!1281586 () Bool)

(declare-fun b_and!328971 () Bool)

(assert (=> b!4194825 (= tp!1281586 b_and!328971)))

(declare-fun b!4194836 () Bool)

(declare-fun b_free!122207 () Bool)

(declare-fun b_next!122911 () Bool)

(assert (=> b!4194836 (= b_free!122207 (not b_next!122911))))

(declare-fun tp!1281582 () Bool)

(declare-fun b_and!328973 () Bool)

(assert (=> b!4194836 (= tp!1281582 b_and!328973)))

(declare-fun b_free!122209 () Bool)

(declare-fun b_next!122913 () Bool)

(assert (=> b!4194836 (= b_free!122209 (not b_next!122913))))

(declare-fun tp!1281581 () Bool)

(declare-fun b_and!328975 () Bool)

(assert (=> b!4194836 (= tp!1281581 b_and!328975)))

(declare-fun e!2603914 () Bool)

(assert (=> b!4194813 (= e!2603914 (and tp!1281578 tp!1281587))))

(declare-fun b!4194814 () Bool)

(declare-fun tp!1281585 () Bool)

(declare-datatypes ((List!46193 0))(
  ( (Nil!46069) (Cons!46069 (h!51489 (_ BitVec 16)) (t!346408 List!46193)) )
))
(declare-datatypes ((TokenValue!7914 0))(
  ( (FloatLiteralValue!15828 (text!55843 List!46193)) (TokenValueExt!7913 (__x!28049 Int)) (Broken!39570 (value!239500 List!46193)) (Object!8037) (End!7914) (Def!7914) (Underscore!7914) (Match!7914) (Else!7914) (Error!7914) (Case!7914) (If!7914) (Extends!7914) (Abstract!7914) (Class!7914) (Val!7914) (DelimiterValue!15828 (del!7974 List!46193)) (KeywordValue!7920 (value!239501 List!46193)) (CommentValue!15828 (value!239502 List!46193)) (WhitespaceValue!15828 (value!239503 List!46193)) (IndentationValue!7914 (value!239504 List!46193)) (String!53435) (Int32!7914) (Broken!39571 (value!239505 List!46193)) (Boolean!7915) (Unit!65160) (OperatorValue!7917 (op!7974 List!46193)) (IdentifierValue!15828 (value!239506 List!46193)) (IdentifierValue!15829 (value!239507 List!46193)) (WhitespaceValue!15829 (value!239508 List!46193)) (True!15828) (False!15828) (Broken!39572 (value!239509 List!46193)) (Broken!39573 (value!239510 List!46193)) (True!15829) (RightBrace!7914) (RightBracket!7914) (Colon!7914) (Null!7914) (Comma!7914) (LeftBracket!7914) (False!15829) (LeftBrace!7914) (ImaginaryLiteralValue!7914 (text!55844 List!46193)) (StringLiteralValue!23742 (value!239511 List!46193)) (EOFValue!7914 (value!239512 List!46193)) (IdentValue!7914 (value!239513 List!46193)) (DelimiterValue!15829 (value!239514 List!46193)) (DedentValue!7914 (value!239515 List!46193)) (NewLineValue!7914 (value!239516 List!46193)) (IntegerValue!23742 (value!239517 (_ BitVec 32)) (text!55845 List!46193)) (IntegerValue!23743 (value!239518 Int) (text!55846 List!46193)) (Times!7914) (Or!7914) (Equal!7914) (Minus!7914) (Broken!39574 (value!239519 List!46193)) (And!7914) (Div!7914) (LessEqual!7914) (Mod!7914) (Concat!20503) (Not!7914) (Plus!7914) (SpaceValue!7914 (value!239520 List!46193)) (IntegerValue!23744 (value!239521 Int) (text!55847 List!46193)) (StringLiteralValue!23743 (text!55848 List!46193)) (FloatLiteralValue!15829 (text!55849 List!46193)) (BytesLiteralValue!7914 (value!239522 List!46193)) (CommentValue!15829 (value!239523 List!46193)) (StringLiteralValue!23744 (value!239524 List!46193)) (ErrorTokenValue!7914 (msg!7975 List!46193)) )
))
(declare-datatypes ((C!25368 0))(
  ( (C!25369 (val!14846 Int)) )
))
(declare-datatypes ((List!46194 0))(
  ( (Nil!46070) (Cons!46070 (h!51490 C!25368) (t!346409 List!46194)) )
))
(declare-datatypes ((IArray!27795 0))(
  ( (IArray!27796 (innerList!13955 List!46194)) )
))
(declare-datatypes ((Conc!13895 0))(
  ( (Node!13895 (left!34319 Conc!13895) (right!34649 Conc!13895) (csize!28020 Int) (cheight!14106 Int)) (Leaf!21480 (xs!17201 IArray!27795) (csize!28021 Int)) (Empty!13895) )
))
(declare-datatypes ((BalanceConc!27384 0))(
  ( (BalanceConc!27385 (c!715622 Conc!13895)) )
))
(declare-datatypes ((String!53436 0))(
  ( (String!53437 (value!239525 String)) )
))
(declare-datatypes ((Regex!12589 0))(
  ( (ElementMatch!12589 (c!715623 C!25368)) (Concat!20504 (regOne!25690 Regex!12589) (regTwo!25690 Regex!12589)) (EmptyExpr!12589) (Star!12589 (reg!12918 Regex!12589)) (EmptyLang!12589) (Union!12589 (regOne!25691 Regex!12589) (regTwo!25691 Regex!12589)) )
))
(declare-datatypes ((TokenValueInjection!15256 0))(
  ( (TokenValueInjection!15257 (toValue!10384 Int) (toChars!10243 Int)) )
))
(declare-datatypes ((Rule!15168 0))(
  ( (Rule!15169 (regex!7684 Regex!12589) (tag!8548 String!53436) (isSeparator!7684 Bool) (transformation!7684 TokenValueInjection!15256)) )
))
(declare-fun r!4142 () Rule!15168)

(declare-fun e!2603926 () Bool)

(declare-fun inv!60626 (String!53436) Bool)

(declare-fun inv!60628 (TokenValueInjection!15256) Bool)

(assert (=> b!4194814 (= e!2603926 (and tp!1281585 (inv!60626 (tag!8548 r!4142)) (inv!60628 (transformation!7684 r!4142)) e!2603914))))

(declare-fun b!4194815 () Bool)

(declare-fun res!1721915 () Bool)

(declare-fun e!2603921 () Bool)

(assert (=> b!4194815 (=> (not res!1721915) (not e!2603921))))

(declare-datatypes ((List!46195 0))(
  ( (Nil!46071) (Cons!46071 (h!51491 Rule!15168) (t!346410 List!46195)) )
))
(declare-fun rules!3843 () List!46195)

(declare-fun rBis!167 () Rule!15168)

(declare-fun contains!9495 (List!46195 Rule!15168) Bool)

(assert (=> b!4194815 (= res!1721915 (contains!9495 rules!3843 rBis!167))))

(declare-fun b!4194816 () Bool)

(declare-fun e!2603912 () Bool)

(declare-fun e!2603927 () Bool)

(assert (=> b!4194816 (= e!2603912 e!2603927)))

(declare-fun res!1721922 () Bool)

(assert (=> b!4194816 (=> res!1721922 e!2603927)))

(declare-fun lt!1494262 () List!46194)

(declare-fun pBis!107 () List!46194)

(assert (=> b!4194816 (= res!1721922 (= lt!1494262 pBis!107))))

(declare-datatypes ((Token!14082 0))(
  ( (Token!14083 (value!239526 TokenValue!7914) (rule!10774 Rule!15168) (size!33857 Int) (originalCharacters!8072 List!46194)) )
))
(declare-datatypes ((tuple2!43862 0))(
  ( (tuple2!43863 (_1!25065 Token!14082) (_2!25065 List!46194)) )
))
(declare-fun lt!1494255 () tuple2!43862)

(declare-fun isPrefix!4541 (List!46194 List!46194) Bool)

(declare-fun ++!11756 (List!46194 List!46194) List!46194)

(assert (=> b!4194816 (isPrefix!4541 lt!1494262 (++!11756 lt!1494262 (_2!25065 lt!1494255)))))

(declare-datatypes ((Unit!65161 0))(
  ( (Unit!65162) )
))
(declare-fun lt!1494253 () Unit!65161)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3038 (List!46194 List!46194) Unit!65161)

(assert (=> b!4194816 (= lt!1494253 (lemmaConcatTwoListThenFirstIsPrefix!3038 lt!1494262 (_2!25065 lt!1494255)))))

(declare-fun lt!1494249 () BalanceConc!27384)

(declare-fun list!16652 (BalanceConc!27384) List!46194)

(assert (=> b!4194816 (= lt!1494262 (list!16652 lt!1494249))))

(declare-fun charsOf!5119 (Token!14082) BalanceConc!27384)

(assert (=> b!4194816 (= lt!1494249 (charsOf!5119 (_1!25065 lt!1494255)))))

(declare-datatypes ((Option!9878 0))(
  ( (None!9877) (Some!9877 (v!40715 tuple2!43862)) )
))
(declare-fun lt!1494256 () Option!9878)

(declare-fun get!14985 (Option!9878) tuple2!43862)

(assert (=> b!4194816 (= lt!1494255 (get!14985 lt!1494256))))

(declare-fun b!4194817 () Bool)

(declare-fun e!2603928 () Unit!65161)

(declare-fun Unit!65163 () Unit!65161)

(assert (=> b!4194817 (= e!2603928 Unit!65163)))

(declare-fun e!2603924 () Bool)

(declare-fun e!2603922 () Bool)

(declare-fun tp!1281583 () Bool)

(declare-fun b!4194818 () Bool)

(assert (=> b!4194818 (= e!2603924 (and tp!1281583 (inv!60626 (tag!8548 (h!51491 rules!3843))) (inv!60628 (transformation!7684 (h!51491 rules!3843))) e!2603922))))

(declare-fun b!4194819 () Bool)

(declare-fun e!2603909 () Bool)

(assert (=> b!4194819 (= e!2603927 e!2603909)))

(declare-fun res!1721908 () Bool)

(assert (=> b!4194819 (=> res!1721908 e!2603909)))

(declare-fun lt!1494251 () Int)

(declare-fun lt!1494257 () Int)

(assert (=> b!4194819 (= res!1721908 (< lt!1494251 lt!1494257))))

(declare-fun size!33858 (BalanceConc!27384) Int)

(assert (=> b!4194819 (= lt!1494251 (size!33858 lt!1494249))))

(declare-fun b!4194820 () Bool)

(declare-fun e!2603925 () Bool)

(declare-fun e!2603916 () Bool)

(assert (=> b!4194820 (= e!2603925 e!2603916)))

(declare-fun res!1721912 () Bool)

(assert (=> b!4194820 (=> res!1721912 e!2603916)))

(declare-fun lt!1494254 () Int)

(assert (=> b!4194820 (= res!1721912 (<= lt!1494257 lt!1494254))))

(declare-fun size!33859 (List!46194) Int)

(assert (=> b!4194820 (= lt!1494257 (size!33859 pBis!107))))

(declare-fun b!4194821 () Bool)

(declare-fun res!1721914 () Bool)

(assert (=> b!4194821 (=> (not res!1721914) (not e!2603921))))

(declare-datatypes ((LexerInterface!7277 0))(
  ( (LexerInterfaceExt!7274 (__x!28050 Int)) (Lexer!7275) )
))
(declare-fun thiss!25986 () LexerInterface!7277)

(declare-fun rulesInvariant!6490 (LexerInterface!7277 List!46195) Bool)

(assert (=> b!4194821 (= res!1721914 (rulesInvariant!6490 thiss!25986 rules!3843))))

(declare-fun b!4194822 () Bool)

(declare-fun res!1721911 () Bool)

(assert (=> b!4194822 (=> (not res!1721911) (not e!2603921))))

(declare-fun input!3342 () List!46194)

(assert (=> b!4194822 (= res!1721911 (isPrefix!4541 pBis!107 input!3342))))

(declare-fun b!4194823 () Bool)

(declare-fun res!1721907 () Bool)

(assert (=> b!4194823 (=> res!1721907 e!2603916)))

(declare-fun ruleValid!3402 (LexerInterface!7277 Rule!15168) Bool)

(assert (=> b!4194823 (= res!1721907 (not (ruleValid!3402 thiss!25986 rBis!167)))))

(declare-fun b!4194824 () Bool)

(declare-fun e!2603908 () Bool)

(declare-fun tp_is_empty!22141 () Bool)

(declare-fun tp!1281588 () Bool)

(assert (=> b!4194824 (= e!2603908 (and tp_is_empty!22141 tp!1281588))))

(assert (=> b!4194825 (= e!2603922 (and tp!1281576 tp!1281586))))

(declare-fun b!4194826 () Bool)

(declare-fun e!2603917 () Bool)

(declare-fun tp!1281584 () Bool)

(assert (=> b!4194826 (= e!2603917 (and tp_is_empty!22141 tp!1281584))))

(declare-fun b!4194827 () Bool)

(declare-fun res!1721913 () Bool)

(assert (=> b!4194827 (=> (not res!1721913) (not e!2603921))))

(assert (=> b!4194827 (= res!1721913 (contains!9495 rules!3843 r!4142))))

(declare-fun b!4194828 () Bool)

(declare-fun res!1721924 () Bool)

(assert (=> b!4194828 (=> (not res!1721924) (not e!2603921))))

(assert (=> b!4194828 (= res!1721924 (ruleValid!3402 thiss!25986 r!4142))))

(declare-fun res!1721918 () Bool)

(assert (=> start!400498 (=> (not res!1721918) (not e!2603921))))

(get-info :version)

(assert (=> start!400498 (= res!1721918 ((_ is Lexer!7275) thiss!25986))))

(assert (=> start!400498 e!2603921))

(assert (=> start!400498 true))

(declare-fun e!2603910 () Bool)

(assert (=> start!400498 e!2603910))

(assert (=> start!400498 e!2603926))

(declare-fun e!2603911 () Bool)

(assert (=> start!400498 e!2603911))

(assert (=> start!400498 e!2603908))

(declare-fun e!2603919 () Bool)

(assert (=> start!400498 e!2603919))

(assert (=> start!400498 e!2603917))

(declare-fun b!4194829 () Bool)

(declare-fun res!1721917 () Bool)

(assert (=> b!4194829 (=> res!1721917 e!2603916)))

(declare-fun lt!1494263 () Option!9878)

(declare-fun maxPrefix!4325 (LexerInterface!7277 List!46195 List!46194) Option!9878)

(assert (=> b!4194829 (= res!1721917 (not (= (maxPrefix!4325 thiss!25986 rules!3843 input!3342) lt!1494263)))))

(declare-fun b!4194830 () Bool)

(declare-fun res!1721910 () Bool)

(assert (=> b!4194830 (=> (not res!1721910) (not e!2603921))))

(declare-fun validRegex!5706 (Regex!12589) Bool)

(assert (=> b!4194830 (= res!1721910 (validRegex!5706 (regex!7684 r!4142)))))

(declare-fun p!2959 () List!46194)

(declare-fun b!4194831 () Bool)

(declare-fun e!2603918 () Bool)

(declare-fun lt!1494261 () List!46194)

(assert (=> b!4194831 (= e!2603918 (= (++!11756 p!2959 lt!1494261) input!3342))))

(declare-fun b!4194832 () Bool)

(declare-fun Unit!65164 () Unit!65161)

(assert (=> b!4194832 (= e!2603928 Unit!65164)))

(declare-fun lt!1494252 () Unit!65161)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1005 (List!46194 List!46194 List!46194) Unit!65161)

(assert (=> b!4194832 (= lt!1494252 (lemmaIsPrefixSameLengthThenSameList!1005 pBis!107 lt!1494262 input!3342))))

(assert (=> b!4194832 false))

(declare-fun b!4194833 () Bool)

(declare-fun res!1721919 () Bool)

(assert (=> b!4194833 (=> (not res!1721919) (not e!2603921))))

(declare-fun matchR!6328 (Regex!12589 List!46194) Bool)

(assert (=> b!4194833 (= res!1721919 (matchR!6328 (regex!7684 r!4142) p!2959))))

(declare-fun b!4194834 () Bool)

(declare-fun res!1721923 () Bool)

(assert (=> b!4194834 (=> (not res!1721923) (not e!2603921))))

(assert (=> b!4194834 (= res!1721923 (isPrefix!4541 p!2959 input!3342))))

(declare-fun b!4194835 () Bool)

(declare-fun tp!1281577 () Bool)

(assert (=> b!4194835 (= e!2603911 (and e!2603924 tp!1281577))))

(declare-fun e!2603913 () Bool)

(assert (=> b!4194836 (= e!2603913 (and tp!1281582 tp!1281581))))

(declare-fun b!4194837 () Bool)

(declare-fun tp!1281580 () Bool)

(assert (=> b!4194837 (= e!2603919 (and tp_is_empty!22141 tp!1281580))))

(declare-fun b!4194838 () Bool)

(assert (=> b!4194838 (= e!2603916 e!2603912)))

(declare-fun res!1721921 () Bool)

(assert (=> b!4194838 (=> res!1721921 e!2603912)))

(declare-fun isEmpty!27280 (Option!9878) Bool)

(assert (=> b!4194838 (= res!1721921 (isEmpty!27280 lt!1494256))))

(declare-fun maxPrefixOneRule!3286 (LexerInterface!7277 Rule!15168 List!46194) Option!9878)

(assert (=> b!4194838 (= lt!1494256 (maxPrefixOneRule!3286 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1494258 () Unit!65161)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2408 (LexerInterface!7277 Rule!15168 List!46195) Unit!65161)

(assert (=> b!4194838 (= lt!1494258 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2408 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4194838 (<= lt!1494257 (size!33859 input!3342))))

(declare-fun lt!1494250 () Unit!65161)

(declare-fun lemmaIsPrefixThenSmallerEqSize!571 (List!46194 List!46194) Unit!65161)

(assert (=> b!4194838 (= lt!1494250 (lemmaIsPrefixThenSmallerEqSize!571 pBis!107 input!3342))))

(declare-fun b!4194839 () Bool)

(declare-fun res!1721916 () Bool)

(assert (=> b!4194839 (=> (not res!1721916) (not e!2603921))))

(declare-fun isEmpty!27281 (List!46195) Bool)

(assert (=> b!4194839 (= res!1721916 (not (isEmpty!27281 rules!3843)))))

(declare-fun b!4194840 () Bool)

(assert (=> b!4194840 (= e!2603921 (not e!2603925))))

(declare-fun res!1721920 () Bool)

(assert (=> b!4194840 (=> res!1721920 e!2603925)))

(assert (=> b!4194840 (= res!1721920 (not (= (maxPrefixOneRule!3286 thiss!25986 r!4142 input!3342) lt!1494263)))))

(declare-fun lt!1494248 () TokenValue!7914)

(assert (=> b!4194840 (= lt!1494263 (Some!9877 (tuple2!43863 (Token!14083 lt!1494248 r!4142 lt!1494254 p!2959) lt!1494261)))))

(declare-fun getSuffix!2834 (List!46194 List!46194) List!46194)

(assert (=> b!4194840 (= lt!1494261 (getSuffix!2834 input!3342 p!2959))))

(assert (=> b!4194840 (= lt!1494254 (size!33859 p!2959))))

(declare-fun lt!1494260 () BalanceConc!27384)

(declare-fun apply!10649 (TokenValueInjection!15256 BalanceConc!27384) TokenValue!7914)

(assert (=> b!4194840 (= lt!1494248 (apply!10649 (transformation!7684 r!4142) lt!1494260))))

(assert (=> b!4194840 (isPrefix!4541 input!3342 input!3342)))

(declare-fun lt!1494264 () Unit!65161)

(declare-fun lemmaIsPrefixRefl!2970 (List!46194 List!46194) Unit!65161)

(assert (=> b!4194840 (= lt!1494264 (lemmaIsPrefixRefl!2970 input!3342 input!3342))))

(declare-fun lt!1494247 () Unit!65161)

(declare-fun lemmaSemiInverse!2450 (TokenValueInjection!15256 BalanceConc!27384) Unit!65161)

(assert (=> b!4194840 (= lt!1494247 (lemmaSemiInverse!2450 (transformation!7684 r!4142) lt!1494260))))

(declare-fun seqFromList!5709 (List!46194) BalanceConc!27384)

(assert (=> b!4194840 (= lt!1494260 (seqFromList!5709 p!2959))))

(declare-fun tp!1281579 () Bool)

(declare-fun b!4194841 () Bool)

(assert (=> b!4194841 (= e!2603910 (and tp!1281579 (inv!60626 (tag!8548 rBis!167)) (inv!60628 (transformation!7684 rBis!167)) e!2603913))))

(declare-fun b!4194842 () Bool)

(assert (=> b!4194842 (= e!2603909 e!2603918)))

(declare-fun res!1721909 () Bool)

(assert (=> b!4194842 (=> res!1721909 e!2603918)))

(assert (=> b!4194842 (= res!1721909 (>= lt!1494257 lt!1494251))))

(declare-fun lt!1494259 () Unit!65161)

(assert (=> b!4194842 (= lt!1494259 e!2603928)))

(declare-fun c!715621 () Bool)

(assert (=> b!4194842 (= c!715621 (= lt!1494257 (size!33859 lt!1494262)))))

(assert (= (and start!400498 res!1721918) b!4194834))

(assert (= (and b!4194834 res!1721923) b!4194822))

(assert (= (and b!4194822 res!1721911) b!4194839))

(assert (= (and b!4194839 res!1721916) b!4194821))

(assert (= (and b!4194821 res!1721914) b!4194827))

(assert (= (and b!4194827 res!1721913) b!4194815))

(assert (= (and b!4194815 res!1721915) b!4194830))

(assert (= (and b!4194830 res!1721910) b!4194833))

(assert (= (and b!4194833 res!1721919) b!4194828))

(assert (= (and b!4194828 res!1721924) b!4194840))

(assert (= (and b!4194840 (not res!1721920)) b!4194820))

(assert (= (and b!4194820 (not res!1721912)) b!4194823))

(assert (= (and b!4194823 (not res!1721907)) b!4194829))

(assert (= (and b!4194829 (not res!1721917)) b!4194838))

(assert (= (and b!4194838 (not res!1721921)) b!4194816))

(assert (= (and b!4194816 (not res!1721922)) b!4194819))

(assert (= (and b!4194819 (not res!1721908)) b!4194842))

(assert (= (and b!4194842 c!715621) b!4194832))

(assert (= (and b!4194842 (not c!715621)) b!4194817))

(assert (= (and b!4194842 (not res!1721909)) b!4194831))

(assert (= b!4194841 b!4194836))

(assert (= start!400498 b!4194841))

(assert (= b!4194814 b!4194813))

(assert (= start!400498 b!4194814))

(assert (= b!4194818 b!4194825))

(assert (= b!4194835 b!4194818))

(assert (= (and start!400498 ((_ is Cons!46071) rules!3843)) b!4194835))

(assert (= (and start!400498 ((_ is Cons!46070) input!3342)) b!4194824))

(assert (= (and start!400498 ((_ is Cons!46070) pBis!107)) b!4194837))

(assert (= (and start!400498 ((_ is Cons!46070) p!2959)) b!4194826))

(declare-fun m!4783709 () Bool)

(assert (=> b!4194828 m!4783709))

(declare-fun m!4783711 () Bool)

(assert (=> b!4194815 m!4783711))

(declare-fun m!4783713 () Bool)

(assert (=> b!4194830 m!4783713))

(declare-fun m!4783715 () Bool)

(assert (=> b!4194834 m!4783715))

(declare-fun m!4783717 () Bool)

(assert (=> b!4194839 m!4783717))

(declare-fun m!4783719 () Bool)

(assert (=> b!4194820 m!4783719))

(declare-fun m!4783721 () Bool)

(assert (=> b!4194816 m!4783721))

(declare-fun m!4783723 () Bool)

(assert (=> b!4194816 m!4783723))

(declare-fun m!4783725 () Bool)

(assert (=> b!4194816 m!4783725))

(declare-fun m!4783727 () Bool)

(assert (=> b!4194816 m!4783727))

(declare-fun m!4783729 () Bool)

(assert (=> b!4194816 m!4783729))

(assert (=> b!4194816 m!4783725))

(declare-fun m!4783731 () Bool)

(assert (=> b!4194816 m!4783731))

(declare-fun m!4783733 () Bool)

(assert (=> b!4194829 m!4783733))

(declare-fun m!4783735 () Bool)

(assert (=> b!4194840 m!4783735))

(declare-fun m!4783737 () Bool)

(assert (=> b!4194840 m!4783737))

(declare-fun m!4783739 () Bool)

(assert (=> b!4194840 m!4783739))

(declare-fun m!4783741 () Bool)

(assert (=> b!4194840 m!4783741))

(declare-fun m!4783743 () Bool)

(assert (=> b!4194840 m!4783743))

(declare-fun m!4783745 () Bool)

(assert (=> b!4194840 m!4783745))

(declare-fun m!4783747 () Bool)

(assert (=> b!4194840 m!4783747))

(declare-fun m!4783749 () Bool)

(assert (=> b!4194840 m!4783749))

(declare-fun m!4783751 () Bool)

(assert (=> b!4194827 m!4783751))

(declare-fun m!4783753 () Bool)

(assert (=> b!4194832 m!4783753))

(declare-fun m!4783755 () Bool)

(assert (=> b!4194822 m!4783755))

(declare-fun m!4783757 () Bool)

(assert (=> b!4194818 m!4783757))

(declare-fun m!4783759 () Bool)

(assert (=> b!4194818 m!4783759))

(declare-fun m!4783761 () Bool)

(assert (=> b!4194842 m!4783761))

(declare-fun m!4783763 () Bool)

(assert (=> b!4194833 m!4783763))

(declare-fun m!4783765 () Bool)

(assert (=> b!4194838 m!4783765))

(declare-fun m!4783767 () Bool)

(assert (=> b!4194838 m!4783767))

(declare-fun m!4783769 () Bool)

(assert (=> b!4194838 m!4783769))

(declare-fun m!4783771 () Bool)

(assert (=> b!4194838 m!4783771))

(declare-fun m!4783773 () Bool)

(assert (=> b!4194838 m!4783773))

(declare-fun m!4783775 () Bool)

(assert (=> b!4194814 m!4783775))

(declare-fun m!4783777 () Bool)

(assert (=> b!4194814 m!4783777))

(declare-fun m!4783779 () Bool)

(assert (=> b!4194831 m!4783779))

(declare-fun m!4783781 () Bool)

(assert (=> b!4194821 m!4783781))

(declare-fun m!4783783 () Bool)

(assert (=> b!4194823 m!4783783))

(declare-fun m!4783785 () Bool)

(assert (=> b!4194819 m!4783785))

(declare-fun m!4783787 () Bool)

(assert (=> b!4194841 m!4783787))

(declare-fun m!4783789 () Bool)

(assert (=> b!4194841 m!4783789))

(check-sat (not b!4194824) tp_is_empty!22141 (not b!4194839) (not b!4194838) (not b!4194821) (not b!4194819) (not b!4194837) (not b!4194829) (not b!4194827) (not b_next!122909) (not b!4194814) (not b!4194830) (not b_next!122913) b_and!328975 (not b!4194833) (not b!4194842) (not b_next!122911) (not b_next!122907) (not b!4194835) b_and!328969 (not b!4194834) (not b!4194826) (not b!4194840) (not b!4194820) b_and!328965 b_and!328973 (not b!4194818) (not b!4194831) (not b!4194832) b_and!328971 (not b!4194822) (not b!4194823) (not b!4194816) (not b!4194828) (not b!4194815) (not b!4194841) (not b_next!122905) (not b_next!122903) b_and!328967)
(check-sat b_and!328975 (not b_next!122911) (not b_next!122907) b_and!328969 b_and!328971 (not b_next!122909) (not b_next!122913) b_and!328965 b_and!328973 (not b_next!122905) (not b_next!122903) b_and!328967)
(get-model)

(declare-fun d!1237261 () Bool)

(declare-fun lt!1494270 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7184 (List!46195) (InoxSet Rule!15168))

(assert (=> d!1237261 (= lt!1494270 (select (content!7184 rules!3843) rBis!167))))

(declare-fun e!2603937 () Bool)

(assert (=> d!1237261 (= lt!1494270 e!2603937)))

(declare-fun res!1721942 () Bool)

(assert (=> d!1237261 (=> (not res!1721942) (not e!2603937))))

(assert (=> d!1237261 (= res!1721942 ((_ is Cons!46071) rules!3843))))

(assert (=> d!1237261 (= (contains!9495 rules!3843 rBis!167) lt!1494270)))

(declare-fun b!4194850 () Bool)

(declare-fun e!2603936 () Bool)

(assert (=> b!4194850 (= e!2603937 e!2603936)))

(declare-fun res!1721943 () Bool)

(assert (=> b!4194850 (=> res!1721943 e!2603936)))

(assert (=> b!4194850 (= res!1721943 (= (h!51491 rules!3843) rBis!167))))

(declare-fun b!4194851 () Bool)

(assert (=> b!4194851 (= e!2603936 (contains!9495 (t!346410 rules!3843) rBis!167))))

(assert (= (and d!1237261 res!1721942) b!4194850))

(assert (= (and b!4194850 (not res!1721943)) b!4194851))

(declare-fun m!4783797 () Bool)

(assert (=> d!1237261 m!4783797))

(declare-fun m!4783799 () Bool)

(assert (=> d!1237261 m!4783799))

(declare-fun m!4783801 () Bool)

(assert (=> b!4194851 m!4783801))

(assert (=> b!4194815 d!1237261))

(declare-fun d!1237265 () Bool)

(assert (=> d!1237265 (ruleValid!3402 thiss!25986 rBis!167)))

(declare-fun lt!1494273 () Unit!65161)

(declare-fun choose!25708 (LexerInterface!7277 Rule!15168 List!46195) Unit!65161)

(assert (=> d!1237265 (= lt!1494273 (choose!25708 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1237265 (contains!9495 rules!3843 rBis!167)))

(assert (=> d!1237265 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2408 thiss!25986 rBis!167 rules!3843) lt!1494273)))

(declare-fun bs!596797 () Bool)

(assert (= bs!596797 d!1237265))

(assert (=> bs!596797 m!4783783))

(declare-fun m!4783803 () Bool)

(assert (=> bs!596797 m!4783803))

(assert (=> bs!596797 m!4783711))

(assert (=> b!4194838 d!1237265))

(declare-fun d!1237267 () Bool)

(assert (=> d!1237267 (= (isEmpty!27280 lt!1494256) (not ((_ is Some!9877) lt!1494256)))))

(assert (=> b!4194838 d!1237267))

(declare-fun d!1237269 () Bool)

(declare-fun e!2604030 () Bool)

(assert (=> d!1237269 e!2604030))

(declare-fun res!1722047 () Bool)

(assert (=> d!1237269 (=> res!1722047 e!2604030)))

(declare-fun lt!1494339 () Option!9878)

(assert (=> d!1237269 (= res!1722047 (isEmpty!27280 lt!1494339))))

(declare-fun e!2604027 () Option!9878)

(assert (=> d!1237269 (= lt!1494339 e!2604027)))

(declare-fun c!715650 () Bool)

(declare-datatypes ((tuple2!43866 0))(
  ( (tuple2!43867 (_1!25067 List!46194) (_2!25067 List!46194)) )
))
(declare-fun lt!1494342 () tuple2!43866)

(declare-fun isEmpty!27283 (List!46194) Bool)

(assert (=> d!1237269 (= c!715650 (isEmpty!27283 (_1!25067 lt!1494342)))))

(declare-fun findLongestMatch!1528 (Regex!12589 List!46194) tuple2!43866)

(assert (=> d!1237269 (= lt!1494342 (findLongestMatch!1528 (regex!7684 rBis!167) input!3342))))

(assert (=> d!1237269 (ruleValid!3402 thiss!25986 rBis!167)))

(assert (=> d!1237269 (= (maxPrefixOneRule!3286 thiss!25986 rBis!167 input!3342) lt!1494339)))

(declare-fun b!4195011 () Bool)

(declare-fun res!1722049 () Bool)

(declare-fun e!2604028 () Bool)

(assert (=> b!4195011 (=> (not res!1722049) (not e!2604028))))

(assert (=> b!4195011 (= res!1722049 (= (value!239526 (_1!25065 (get!14985 lt!1494339))) (apply!10649 (transformation!7684 (rule!10774 (_1!25065 (get!14985 lt!1494339)))) (seqFromList!5709 (originalCharacters!8072 (_1!25065 (get!14985 lt!1494339)))))))))

(declare-fun b!4195012 () Bool)

(assert (=> b!4195012 (= e!2604027 None!9877)))

(declare-fun b!4195013 () Bool)

(declare-fun res!1722048 () Bool)

(assert (=> b!4195013 (=> (not res!1722048) (not e!2604028))))

(assert (=> b!4195013 (= res!1722048 (= (++!11756 (list!16652 (charsOf!5119 (_1!25065 (get!14985 lt!1494339)))) (_2!25065 (get!14985 lt!1494339))) input!3342))))

(declare-fun b!4195014 () Bool)

(declare-fun res!1722051 () Bool)

(assert (=> b!4195014 (=> (not res!1722051) (not e!2604028))))

(assert (=> b!4195014 (= res!1722051 (= (rule!10774 (_1!25065 (get!14985 lt!1494339))) rBis!167))))

(declare-fun b!4195015 () Bool)

(assert (=> b!4195015 (= e!2604027 (Some!9877 (tuple2!43863 (Token!14083 (apply!10649 (transformation!7684 rBis!167) (seqFromList!5709 (_1!25067 lt!1494342))) rBis!167 (size!33858 (seqFromList!5709 (_1!25067 lt!1494342))) (_1!25067 lt!1494342)) (_2!25067 lt!1494342))))))

(declare-fun lt!1494340 () Unit!65161)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1588 (Regex!12589 List!46194) Unit!65161)

(assert (=> b!4195015 (= lt!1494340 (longestMatchIsAcceptedByMatchOrIsEmpty!1588 (regex!7684 rBis!167) input!3342))))

(declare-fun res!1722052 () Bool)

(declare-fun findLongestMatchInner!1615 (Regex!12589 List!46194 Int List!46194 List!46194 Int) tuple2!43866)

(assert (=> b!4195015 (= res!1722052 (isEmpty!27283 (_1!25067 (findLongestMatchInner!1615 (regex!7684 rBis!167) Nil!46070 (size!33859 Nil!46070) input!3342 input!3342 (size!33859 input!3342)))))))

(declare-fun e!2604029 () Bool)

(assert (=> b!4195015 (=> res!1722052 e!2604029)))

(assert (=> b!4195015 e!2604029))

(declare-fun lt!1494343 () Unit!65161)

(assert (=> b!4195015 (= lt!1494343 lt!1494340)))

(declare-fun lt!1494341 () Unit!65161)

(assert (=> b!4195015 (= lt!1494341 (lemmaSemiInverse!2450 (transformation!7684 rBis!167) (seqFromList!5709 (_1!25067 lt!1494342))))))

(declare-fun b!4195016 () Bool)

(assert (=> b!4195016 (= e!2604030 e!2604028)))

(declare-fun res!1722046 () Bool)

(assert (=> b!4195016 (=> (not res!1722046) (not e!2604028))))

(assert (=> b!4195016 (= res!1722046 (matchR!6328 (regex!7684 rBis!167) (list!16652 (charsOf!5119 (_1!25065 (get!14985 lt!1494339))))))))

(declare-fun b!4195017 () Bool)

(assert (=> b!4195017 (= e!2604029 (matchR!6328 (regex!7684 rBis!167) (_1!25067 (findLongestMatchInner!1615 (regex!7684 rBis!167) Nil!46070 (size!33859 Nil!46070) input!3342 input!3342 (size!33859 input!3342)))))))

(declare-fun b!4195018 () Bool)

(assert (=> b!4195018 (= e!2604028 (= (size!33857 (_1!25065 (get!14985 lt!1494339))) (size!33859 (originalCharacters!8072 (_1!25065 (get!14985 lt!1494339))))))))

(declare-fun b!4195019 () Bool)

(declare-fun res!1722050 () Bool)

(assert (=> b!4195019 (=> (not res!1722050) (not e!2604028))))

(assert (=> b!4195019 (= res!1722050 (< (size!33859 (_2!25065 (get!14985 lt!1494339))) (size!33859 input!3342)))))

(assert (= (and d!1237269 c!715650) b!4195012))

(assert (= (and d!1237269 (not c!715650)) b!4195015))

(assert (= (and b!4195015 (not res!1722052)) b!4195017))

(assert (= (and d!1237269 (not res!1722047)) b!4195016))

(assert (= (and b!4195016 res!1722046) b!4195013))

(assert (= (and b!4195013 res!1722048) b!4195019))

(assert (= (and b!4195019 res!1722050) b!4195014))

(assert (= (and b!4195014 res!1722051) b!4195011))

(assert (= (and b!4195011 res!1722049) b!4195018))

(declare-fun m!4783949 () Bool)

(assert (=> b!4195016 m!4783949))

(declare-fun m!4783951 () Bool)

(assert (=> b!4195016 m!4783951))

(assert (=> b!4195016 m!4783951))

(declare-fun m!4783953 () Bool)

(assert (=> b!4195016 m!4783953))

(assert (=> b!4195016 m!4783953))

(declare-fun m!4783955 () Bool)

(assert (=> b!4195016 m!4783955))

(declare-fun m!4783957 () Bool)

(assert (=> b!4195017 m!4783957))

(assert (=> b!4195017 m!4783767))

(assert (=> b!4195017 m!4783957))

(assert (=> b!4195017 m!4783767))

(declare-fun m!4783959 () Bool)

(assert (=> b!4195017 m!4783959))

(declare-fun m!4783961 () Bool)

(assert (=> b!4195017 m!4783961))

(declare-fun m!4783963 () Bool)

(assert (=> b!4195015 m!4783963))

(declare-fun m!4783965 () Bool)

(assert (=> b!4195015 m!4783965))

(assert (=> b!4195015 m!4783767))

(declare-fun m!4783967 () Bool)

(assert (=> b!4195015 m!4783967))

(assert (=> b!4195015 m!4783963))

(declare-fun m!4783969 () Bool)

(assert (=> b!4195015 m!4783969))

(assert (=> b!4195015 m!4783957))

(assert (=> b!4195015 m!4783963))

(assert (=> b!4195015 m!4783963))

(declare-fun m!4783971 () Bool)

(assert (=> b!4195015 m!4783971))

(assert (=> b!4195015 m!4783957))

(assert (=> b!4195015 m!4783767))

(assert (=> b!4195015 m!4783959))

(declare-fun m!4783973 () Bool)

(assert (=> b!4195015 m!4783973))

(assert (=> b!4195018 m!4783949))

(declare-fun m!4783975 () Bool)

(assert (=> b!4195018 m!4783975))

(assert (=> b!4195011 m!4783949))

(declare-fun m!4783977 () Bool)

(assert (=> b!4195011 m!4783977))

(assert (=> b!4195011 m!4783977))

(declare-fun m!4783979 () Bool)

(assert (=> b!4195011 m!4783979))

(assert (=> b!4195019 m!4783949))

(declare-fun m!4783981 () Bool)

(assert (=> b!4195019 m!4783981))

(assert (=> b!4195019 m!4783767))

(assert (=> b!4195013 m!4783949))

(assert (=> b!4195013 m!4783951))

(assert (=> b!4195013 m!4783951))

(assert (=> b!4195013 m!4783953))

(assert (=> b!4195013 m!4783953))

(declare-fun m!4783983 () Bool)

(assert (=> b!4195013 m!4783983))

(assert (=> b!4195014 m!4783949))

(declare-fun m!4783985 () Bool)

(assert (=> d!1237269 m!4783985))

(declare-fun m!4783987 () Bool)

(assert (=> d!1237269 m!4783987))

(declare-fun m!4783989 () Bool)

(assert (=> d!1237269 m!4783989))

(assert (=> d!1237269 m!4783783))

(assert (=> b!4194838 d!1237269))

(declare-fun d!1237321 () Bool)

(assert (=> d!1237321 (<= (size!33859 pBis!107) (size!33859 input!3342))))

(declare-fun lt!1494346 () Unit!65161)

(declare-fun choose!25710 (List!46194 List!46194) Unit!65161)

(assert (=> d!1237321 (= lt!1494346 (choose!25710 pBis!107 input!3342))))

(assert (=> d!1237321 (isPrefix!4541 pBis!107 input!3342)))

(assert (=> d!1237321 (= (lemmaIsPrefixThenSmallerEqSize!571 pBis!107 input!3342) lt!1494346)))

(declare-fun bs!596804 () Bool)

(assert (= bs!596804 d!1237321))

(assert (=> bs!596804 m!4783719))

(assert (=> bs!596804 m!4783767))

(declare-fun m!4783991 () Bool)

(assert (=> bs!596804 m!4783991))

(assert (=> bs!596804 m!4783755))

(assert (=> b!4194838 d!1237321))

(declare-fun d!1237323 () Bool)

(declare-fun lt!1494349 () Int)

(assert (=> d!1237323 (>= lt!1494349 0)))

(declare-fun e!2604033 () Int)

(assert (=> d!1237323 (= lt!1494349 e!2604033)))

(declare-fun c!715653 () Bool)

(assert (=> d!1237323 (= c!715653 ((_ is Nil!46070) input!3342))))

(assert (=> d!1237323 (= (size!33859 input!3342) lt!1494349)))

(declare-fun b!4195024 () Bool)

(assert (=> b!4195024 (= e!2604033 0)))

(declare-fun b!4195025 () Bool)

(assert (=> b!4195025 (= e!2604033 (+ 1 (size!33859 (t!346409 input!3342))))))

(assert (= (and d!1237323 c!715653) b!4195024))

(assert (= (and d!1237323 (not c!715653)) b!4195025))

(declare-fun m!4783993 () Bool)

(assert (=> b!4195025 m!4783993))

(assert (=> b!4194838 d!1237323))

(declare-fun d!1237325 () Bool)

(declare-fun list!16654 (Conc!13895) List!46194)

(assert (=> d!1237325 (= (list!16652 lt!1494249) (list!16654 (c!715622 lt!1494249)))))

(declare-fun bs!596805 () Bool)

(assert (= bs!596805 d!1237325))

(declare-fun m!4783995 () Bool)

(assert (=> bs!596805 m!4783995))

(assert (=> b!4194816 d!1237325))

(declare-fun d!1237327 () Bool)

(assert (=> d!1237327 (= (get!14985 lt!1494256) (v!40715 lt!1494256))))

(assert (=> b!4194816 d!1237327))

(declare-fun b!4195036 () Bool)

(declare-fun e!2604041 () Bool)

(declare-fun tail!6749 (List!46194) List!46194)

(assert (=> b!4195036 (= e!2604041 (isPrefix!4541 (tail!6749 lt!1494262) (tail!6749 (++!11756 lt!1494262 (_2!25065 lt!1494255)))))))

(declare-fun b!4195035 () Bool)

(declare-fun res!1722063 () Bool)

(assert (=> b!4195035 (=> (not res!1722063) (not e!2604041))))

(declare-fun head!8902 (List!46194) C!25368)

(assert (=> b!4195035 (= res!1722063 (= (head!8902 lt!1494262) (head!8902 (++!11756 lt!1494262 (_2!25065 lt!1494255)))))))

(declare-fun d!1237329 () Bool)

(declare-fun e!2604040 () Bool)

(assert (=> d!1237329 e!2604040))

(declare-fun res!1722061 () Bool)

(assert (=> d!1237329 (=> res!1722061 e!2604040)))

(declare-fun lt!1494352 () Bool)

(assert (=> d!1237329 (= res!1722061 (not lt!1494352))))

(declare-fun e!2604042 () Bool)

(assert (=> d!1237329 (= lt!1494352 e!2604042)))

(declare-fun res!1722064 () Bool)

(assert (=> d!1237329 (=> res!1722064 e!2604042)))

(assert (=> d!1237329 (= res!1722064 ((_ is Nil!46070) lt!1494262))))

(assert (=> d!1237329 (= (isPrefix!4541 lt!1494262 (++!11756 lt!1494262 (_2!25065 lt!1494255))) lt!1494352)))

(declare-fun b!4195034 () Bool)

(assert (=> b!4195034 (= e!2604042 e!2604041)))

(declare-fun res!1722062 () Bool)

(assert (=> b!4195034 (=> (not res!1722062) (not e!2604041))))

(assert (=> b!4195034 (= res!1722062 (not ((_ is Nil!46070) (++!11756 lt!1494262 (_2!25065 lt!1494255)))))))

(declare-fun b!4195037 () Bool)

(assert (=> b!4195037 (= e!2604040 (>= (size!33859 (++!11756 lt!1494262 (_2!25065 lt!1494255))) (size!33859 lt!1494262)))))

(assert (= (and d!1237329 (not res!1722064)) b!4195034))

(assert (= (and b!4195034 res!1722062) b!4195035))

(assert (= (and b!4195035 res!1722063) b!4195036))

(assert (= (and d!1237329 (not res!1722061)) b!4195037))

(declare-fun m!4783997 () Bool)

(assert (=> b!4195036 m!4783997))

(assert (=> b!4195036 m!4783725))

(declare-fun m!4783999 () Bool)

(assert (=> b!4195036 m!4783999))

(assert (=> b!4195036 m!4783997))

(assert (=> b!4195036 m!4783999))

(declare-fun m!4784001 () Bool)

(assert (=> b!4195036 m!4784001))

(declare-fun m!4784003 () Bool)

(assert (=> b!4195035 m!4784003))

(assert (=> b!4195035 m!4783725))

(declare-fun m!4784005 () Bool)

(assert (=> b!4195035 m!4784005))

(assert (=> b!4195037 m!4783725))

(declare-fun m!4784007 () Bool)

(assert (=> b!4195037 m!4784007))

(assert (=> b!4195037 m!4783761))

(assert (=> b!4194816 d!1237329))

(declare-fun b!4195046 () Bool)

(declare-fun e!2604047 () List!46194)

(assert (=> b!4195046 (= e!2604047 (_2!25065 lt!1494255))))

(declare-fun b!4195049 () Bool)

(declare-fun e!2604048 () Bool)

(declare-fun lt!1494355 () List!46194)

(assert (=> b!4195049 (= e!2604048 (or (not (= (_2!25065 lt!1494255) Nil!46070)) (= lt!1494355 lt!1494262)))))

(declare-fun d!1237331 () Bool)

(assert (=> d!1237331 e!2604048))

(declare-fun res!1722069 () Bool)

(assert (=> d!1237331 (=> (not res!1722069) (not e!2604048))))

(declare-fun content!7186 (List!46194) (InoxSet C!25368))

(assert (=> d!1237331 (= res!1722069 (= (content!7186 lt!1494355) ((_ map or) (content!7186 lt!1494262) (content!7186 (_2!25065 lt!1494255)))))))

(assert (=> d!1237331 (= lt!1494355 e!2604047)))

(declare-fun c!715656 () Bool)

(assert (=> d!1237331 (= c!715656 ((_ is Nil!46070) lt!1494262))))

(assert (=> d!1237331 (= (++!11756 lt!1494262 (_2!25065 lt!1494255)) lt!1494355)))

(declare-fun b!4195047 () Bool)

(assert (=> b!4195047 (= e!2604047 (Cons!46070 (h!51490 lt!1494262) (++!11756 (t!346409 lt!1494262) (_2!25065 lt!1494255))))))

(declare-fun b!4195048 () Bool)

(declare-fun res!1722070 () Bool)

(assert (=> b!4195048 (=> (not res!1722070) (not e!2604048))))

(assert (=> b!4195048 (= res!1722070 (= (size!33859 lt!1494355) (+ (size!33859 lt!1494262) (size!33859 (_2!25065 lt!1494255)))))))

(assert (= (and d!1237331 c!715656) b!4195046))

(assert (= (and d!1237331 (not c!715656)) b!4195047))

(assert (= (and d!1237331 res!1722069) b!4195048))

(assert (= (and b!4195048 res!1722070) b!4195049))

(declare-fun m!4784009 () Bool)

(assert (=> d!1237331 m!4784009))

(declare-fun m!4784011 () Bool)

(assert (=> d!1237331 m!4784011))

(declare-fun m!4784013 () Bool)

(assert (=> d!1237331 m!4784013))

(declare-fun m!4784015 () Bool)

(assert (=> b!4195047 m!4784015))

(declare-fun m!4784017 () Bool)

(assert (=> b!4195048 m!4784017))

(assert (=> b!4195048 m!4783761))

(declare-fun m!4784019 () Bool)

(assert (=> b!4195048 m!4784019))

(assert (=> b!4194816 d!1237331))

(declare-fun d!1237333 () Bool)

(assert (=> d!1237333 (isPrefix!4541 lt!1494262 (++!11756 lt!1494262 (_2!25065 lt!1494255)))))

(declare-fun lt!1494358 () Unit!65161)

(declare-fun choose!25712 (List!46194 List!46194) Unit!65161)

(assert (=> d!1237333 (= lt!1494358 (choose!25712 lt!1494262 (_2!25065 lt!1494255)))))

(assert (=> d!1237333 (= (lemmaConcatTwoListThenFirstIsPrefix!3038 lt!1494262 (_2!25065 lt!1494255)) lt!1494358)))

(declare-fun bs!596806 () Bool)

(assert (= bs!596806 d!1237333))

(assert (=> bs!596806 m!4783725))

(assert (=> bs!596806 m!4783725))

(assert (=> bs!596806 m!4783727))

(declare-fun m!4784021 () Bool)

(assert (=> bs!596806 m!4784021))

(assert (=> b!4194816 d!1237333))

(declare-fun d!1237335 () Bool)

(declare-fun lt!1494361 () BalanceConc!27384)

(assert (=> d!1237335 (= (list!16652 lt!1494361) (originalCharacters!8072 (_1!25065 lt!1494255)))))

(declare-fun dynLambda!19849 (Int TokenValue!7914) BalanceConc!27384)

(assert (=> d!1237335 (= lt!1494361 (dynLambda!19849 (toChars!10243 (transformation!7684 (rule!10774 (_1!25065 lt!1494255)))) (value!239526 (_1!25065 lt!1494255))))))

(assert (=> d!1237335 (= (charsOf!5119 (_1!25065 lt!1494255)) lt!1494361)))

(declare-fun b_lambda!123455 () Bool)

(assert (=> (not b_lambda!123455) (not d!1237335)))

(declare-fun tb!251439 () Bool)

(declare-fun t!346424 () Bool)

(assert (=> (and b!4194813 (= (toChars!10243 (transformation!7684 r!4142)) (toChars!10243 (transformation!7684 (rule!10774 (_1!25065 lt!1494255))))) t!346424) tb!251439))

(declare-fun b!4195054 () Bool)

(declare-fun e!2604051 () Bool)

(declare-fun tp!1281594 () Bool)

(declare-fun inv!60631 (Conc!13895) Bool)

(assert (=> b!4195054 (= e!2604051 (and (inv!60631 (c!715622 (dynLambda!19849 (toChars!10243 (transformation!7684 (rule!10774 (_1!25065 lt!1494255)))) (value!239526 (_1!25065 lt!1494255))))) tp!1281594))))

(declare-fun result!306432 () Bool)

(declare-fun inv!60632 (BalanceConc!27384) Bool)

(assert (=> tb!251439 (= result!306432 (and (inv!60632 (dynLambda!19849 (toChars!10243 (transformation!7684 (rule!10774 (_1!25065 lt!1494255)))) (value!239526 (_1!25065 lt!1494255)))) e!2604051))))

(assert (= tb!251439 b!4195054))

(declare-fun m!4784023 () Bool)

(assert (=> b!4195054 m!4784023))

(declare-fun m!4784025 () Bool)

(assert (=> tb!251439 m!4784025))

(assert (=> d!1237335 t!346424))

(declare-fun b_and!328989 () Bool)

(assert (= b_and!328967 (and (=> t!346424 result!306432) b_and!328989)))

(declare-fun t!346426 () Bool)

(declare-fun tb!251441 () Bool)

(assert (=> (and b!4194825 (= (toChars!10243 (transformation!7684 (h!51491 rules!3843))) (toChars!10243 (transformation!7684 (rule!10774 (_1!25065 lt!1494255))))) t!346426) tb!251441))

(declare-fun result!306436 () Bool)

(assert (= result!306436 result!306432))

(assert (=> d!1237335 t!346426))

(declare-fun b_and!328991 () Bool)

(assert (= b_and!328971 (and (=> t!346426 result!306436) b_and!328991)))

(declare-fun t!346428 () Bool)

(declare-fun tb!251443 () Bool)

(assert (=> (and b!4194836 (= (toChars!10243 (transformation!7684 rBis!167)) (toChars!10243 (transformation!7684 (rule!10774 (_1!25065 lt!1494255))))) t!346428) tb!251443))

(declare-fun result!306438 () Bool)

(assert (= result!306438 result!306432))

(assert (=> d!1237335 t!346428))

(declare-fun b_and!328993 () Bool)

(assert (= b_and!328975 (and (=> t!346428 result!306438) b_and!328993)))

(declare-fun m!4784027 () Bool)

(assert (=> d!1237335 m!4784027))

(declare-fun m!4784029 () Bool)

(assert (=> d!1237335 m!4784029))

(assert (=> b!4194816 d!1237335))

(declare-fun d!1237337 () Bool)

(declare-fun lt!1494362 () Bool)

(assert (=> d!1237337 (= lt!1494362 (select (content!7184 rules!3843) r!4142))))

(declare-fun e!2604053 () Bool)

(assert (=> d!1237337 (= lt!1494362 e!2604053)))

(declare-fun res!1722071 () Bool)

(assert (=> d!1237337 (=> (not res!1722071) (not e!2604053))))

(assert (=> d!1237337 (= res!1722071 ((_ is Cons!46071) rules!3843))))

(assert (=> d!1237337 (= (contains!9495 rules!3843 r!4142) lt!1494362)))

(declare-fun b!4195055 () Bool)

(declare-fun e!2604052 () Bool)

(assert (=> b!4195055 (= e!2604053 e!2604052)))

(declare-fun res!1722072 () Bool)

(assert (=> b!4195055 (=> res!1722072 e!2604052)))

(assert (=> b!4195055 (= res!1722072 (= (h!51491 rules!3843) r!4142))))

(declare-fun b!4195056 () Bool)

(assert (=> b!4195056 (= e!2604052 (contains!9495 (t!346410 rules!3843) r!4142))))

(assert (= (and d!1237337 res!1722071) b!4195055))

(assert (= (and b!4195055 (not res!1722072)) b!4195056))

(assert (=> d!1237337 m!4783797))

(declare-fun m!4784031 () Bool)

(assert (=> d!1237337 m!4784031))

(declare-fun m!4784033 () Bool)

(assert (=> b!4195056 m!4784033))

(assert (=> b!4194827 d!1237337))

(declare-fun d!1237339 () Bool)

(assert (=> d!1237339 (= (inv!60626 (tag!8548 (h!51491 rules!3843))) (= (mod (str.len (value!239525 (tag!8548 (h!51491 rules!3843)))) 2) 0))))

(assert (=> b!4194818 d!1237339))

(declare-fun d!1237341 () Bool)

(declare-fun res!1722075 () Bool)

(declare-fun e!2604056 () Bool)

(assert (=> d!1237341 (=> (not res!1722075) (not e!2604056))))

(declare-fun semiInverseModEq!3334 (Int Int) Bool)

(assert (=> d!1237341 (= res!1722075 (semiInverseModEq!3334 (toChars!10243 (transformation!7684 (h!51491 rules!3843))) (toValue!10384 (transformation!7684 (h!51491 rules!3843)))))))

(assert (=> d!1237341 (= (inv!60628 (transformation!7684 (h!51491 rules!3843))) e!2604056)))

(declare-fun b!4195059 () Bool)

(declare-fun equivClasses!3233 (Int Int) Bool)

(assert (=> b!4195059 (= e!2604056 (equivClasses!3233 (toChars!10243 (transformation!7684 (h!51491 rules!3843))) (toValue!10384 (transformation!7684 (h!51491 rules!3843)))))))

(assert (= (and d!1237341 res!1722075) b!4195059))

(declare-fun m!4784035 () Bool)

(assert (=> d!1237341 m!4784035))

(declare-fun m!4784037 () Bool)

(assert (=> b!4195059 m!4784037))

(assert (=> b!4194818 d!1237341))

(declare-fun call!292394 () Option!9878)

(declare-fun bm!292389 () Bool)

(assert (=> bm!292389 (= call!292394 (maxPrefixOneRule!3286 thiss!25986 (h!51491 rules!3843) input!3342))))

(declare-fun b!4195079 () Bool)

(declare-fun res!1722091 () Bool)

(declare-fun e!2604065 () Bool)

(assert (=> b!4195079 (=> (not res!1722091) (not e!2604065))))

(declare-fun lt!1494377 () Option!9878)

(assert (=> b!4195079 (= res!1722091 (matchR!6328 (regex!7684 (rule!10774 (_1!25065 (get!14985 lt!1494377)))) (list!16652 (charsOf!5119 (_1!25065 (get!14985 lt!1494377))))))))

(declare-fun b!4195080 () Bool)

(declare-fun e!2604063 () Option!9878)

(assert (=> b!4195080 (= e!2604063 call!292394)))

(declare-fun b!4195081 () Bool)

(declare-fun res!1722094 () Bool)

(assert (=> b!4195081 (=> (not res!1722094) (not e!2604065))))

(assert (=> b!4195081 (= res!1722094 (= (list!16652 (charsOf!5119 (_1!25065 (get!14985 lt!1494377)))) (originalCharacters!8072 (_1!25065 (get!14985 lt!1494377)))))))

(declare-fun b!4195082 () Bool)

(assert (=> b!4195082 (= e!2604065 (contains!9495 rules!3843 (rule!10774 (_1!25065 (get!14985 lt!1494377)))))))

(declare-fun b!4195083 () Bool)

(declare-fun res!1722090 () Bool)

(assert (=> b!4195083 (=> (not res!1722090) (not e!2604065))))

(assert (=> b!4195083 (= res!1722090 (= (value!239526 (_1!25065 (get!14985 lt!1494377))) (apply!10649 (transformation!7684 (rule!10774 (_1!25065 (get!14985 lt!1494377)))) (seqFromList!5709 (originalCharacters!8072 (_1!25065 (get!14985 lt!1494377)))))))))

(declare-fun b!4195084 () Bool)

(declare-fun res!1722096 () Bool)

(assert (=> b!4195084 (=> (not res!1722096) (not e!2604065))))

(assert (=> b!4195084 (= res!1722096 (< (size!33859 (_2!25065 (get!14985 lt!1494377))) (size!33859 input!3342)))))

(declare-fun b!4195085 () Bool)

(declare-fun lt!1494376 () Option!9878)

(declare-fun lt!1494374 () Option!9878)

(assert (=> b!4195085 (= e!2604063 (ite (and ((_ is None!9877) lt!1494376) ((_ is None!9877) lt!1494374)) None!9877 (ite ((_ is None!9877) lt!1494374) lt!1494376 (ite ((_ is None!9877) lt!1494376) lt!1494374 (ite (>= (size!33857 (_1!25065 (v!40715 lt!1494376))) (size!33857 (_1!25065 (v!40715 lt!1494374)))) lt!1494376 lt!1494374)))))))

(assert (=> b!4195085 (= lt!1494376 call!292394)))

(assert (=> b!4195085 (= lt!1494374 (maxPrefix!4325 thiss!25986 (t!346410 rules!3843) input!3342))))

(declare-fun b!4195086 () Bool)

(declare-fun e!2604064 () Bool)

(assert (=> b!4195086 (= e!2604064 e!2604065)))

(declare-fun res!1722093 () Bool)

(assert (=> b!4195086 (=> (not res!1722093) (not e!2604065))))

(declare-fun isDefined!7355 (Option!9878) Bool)

(assert (=> b!4195086 (= res!1722093 (isDefined!7355 lt!1494377))))

(declare-fun b!4195078 () Bool)

(declare-fun res!1722095 () Bool)

(assert (=> b!4195078 (=> (not res!1722095) (not e!2604065))))

(assert (=> b!4195078 (= res!1722095 (= (++!11756 (list!16652 (charsOf!5119 (_1!25065 (get!14985 lt!1494377)))) (_2!25065 (get!14985 lt!1494377))) input!3342))))

(declare-fun d!1237343 () Bool)

(assert (=> d!1237343 e!2604064))

(declare-fun res!1722092 () Bool)

(assert (=> d!1237343 (=> res!1722092 e!2604064)))

(assert (=> d!1237343 (= res!1722092 (isEmpty!27280 lt!1494377))))

(assert (=> d!1237343 (= lt!1494377 e!2604063)))

(declare-fun c!715659 () Bool)

(assert (=> d!1237343 (= c!715659 (and ((_ is Cons!46071) rules!3843) ((_ is Nil!46071) (t!346410 rules!3843))))))

(declare-fun lt!1494373 () Unit!65161)

(declare-fun lt!1494375 () Unit!65161)

(assert (=> d!1237343 (= lt!1494373 lt!1494375)))

(assert (=> d!1237343 (isPrefix!4541 input!3342 input!3342)))

(assert (=> d!1237343 (= lt!1494375 (lemmaIsPrefixRefl!2970 input!3342 input!3342))))

(declare-fun rulesValidInductive!2839 (LexerInterface!7277 List!46195) Bool)

(assert (=> d!1237343 (rulesValidInductive!2839 thiss!25986 rules!3843)))

(assert (=> d!1237343 (= (maxPrefix!4325 thiss!25986 rules!3843 input!3342) lt!1494377)))

(assert (= (and d!1237343 c!715659) b!4195080))

(assert (= (and d!1237343 (not c!715659)) b!4195085))

(assert (= (or b!4195080 b!4195085) bm!292389))

(assert (= (and d!1237343 (not res!1722092)) b!4195086))

(assert (= (and b!4195086 res!1722093) b!4195081))

(assert (= (and b!4195081 res!1722094) b!4195084))

(assert (= (and b!4195084 res!1722096) b!4195078))

(assert (= (and b!4195078 res!1722095) b!4195083))

(assert (= (and b!4195083 res!1722090) b!4195079))

(assert (= (and b!4195079 res!1722091) b!4195082))

(declare-fun m!4784039 () Bool)

(assert (=> b!4195084 m!4784039))

(declare-fun m!4784041 () Bool)

(assert (=> b!4195084 m!4784041))

(assert (=> b!4195084 m!4783767))

(declare-fun m!4784043 () Bool)

(assert (=> bm!292389 m!4784043))

(declare-fun m!4784045 () Bool)

(assert (=> b!4195086 m!4784045))

(assert (=> b!4195081 m!4784039))

(declare-fun m!4784047 () Bool)

(assert (=> b!4195081 m!4784047))

(assert (=> b!4195081 m!4784047))

(declare-fun m!4784049 () Bool)

(assert (=> b!4195081 m!4784049))

(assert (=> b!4195079 m!4784039))

(assert (=> b!4195079 m!4784047))

(assert (=> b!4195079 m!4784047))

(assert (=> b!4195079 m!4784049))

(assert (=> b!4195079 m!4784049))

(declare-fun m!4784051 () Bool)

(assert (=> b!4195079 m!4784051))

(declare-fun m!4784053 () Bool)

(assert (=> b!4195085 m!4784053))

(assert (=> b!4195083 m!4784039))

(declare-fun m!4784055 () Bool)

(assert (=> b!4195083 m!4784055))

(assert (=> b!4195083 m!4784055))

(declare-fun m!4784057 () Bool)

(assert (=> b!4195083 m!4784057))

(declare-fun m!4784059 () Bool)

(assert (=> d!1237343 m!4784059))

(assert (=> d!1237343 m!4783737))

(assert (=> d!1237343 m!4783743))

(declare-fun m!4784061 () Bool)

(assert (=> d!1237343 m!4784061))

(assert (=> b!4195078 m!4784039))

(assert (=> b!4195078 m!4784047))

(assert (=> b!4195078 m!4784047))

(assert (=> b!4195078 m!4784049))

(assert (=> b!4195078 m!4784049))

(declare-fun m!4784063 () Bool)

(assert (=> b!4195078 m!4784063))

(assert (=> b!4195082 m!4784039))

(declare-fun m!4784065 () Bool)

(assert (=> b!4195082 m!4784065))

(assert (=> b!4194829 d!1237343))

(declare-fun d!1237345 () Bool)

(declare-fun res!1722101 () Bool)

(declare-fun e!2604068 () Bool)

(assert (=> d!1237345 (=> (not res!1722101) (not e!2604068))))

(assert (=> d!1237345 (= res!1722101 (validRegex!5706 (regex!7684 r!4142)))))

(assert (=> d!1237345 (= (ruleValid!3402 thiss!25986 r!4142) e!2604068)))

(declare-fun b!4195091 () Bool)

(declare-fun res!1722102 () Bool)

(assert (=> b!4195091 (=> (not res!1722102) (not e!2604068))))

(declare-fun nullable!4425 (Regex!12589) Bool)

(assert (=> b!4195091 (= res!1722102 (not (nullable!4425 (regex!7684 r!4142))))))

(declare-fun b!4195092 () Bool)

(assert (=> b!4195092 (= e!2604068 (not (= (tag!8548 r!4142) (String!53437 ""))))))

(assert (= (and d!1237345 res!1722101) b!4195091))

(assert (= (and b!4195091 res!1722102) b!4195092))

(assert (=> d!1237345 m!4783713))

(declare-fun m!4784067 () Bool)

(assert (=> b!4195091 m!4784067))

(assert (=> b!4194828 d!1237345))

(declare-fun d!1237347 () Bool)

(assert (=> d!1237347 (= (isEmpty!27281 rules!3843) ((_ is Nil!46071) rules!3843))))

(assert (=> b!4194839 d!1237347))

(declare-fun b!4195111 () Bool)

(declare-fun e!2604086 () Bool)

(declare-fun e!2604089 () Bool)

(assert (=> b!4195111 (= e!2604086 e!2604089)))

(declare-fun c!715664 () Bool)

(assert (=> b!4195111 (= c!715664 ((_ is Star!12589) (regex!7684 r!4142)))))

(declare-fun b!4195112 () Bool)

(declare-fun e!2604088 () Bool)

(declare-fun e!2604087 () Bool)

(assert (=> b!4195112 (= e!2604088 e!2604087)))

(declare-fun res!1722117 () Bool)

(assert (=> b!4195112 (=> (not res!1722117) (not e!2604087))))

(declare-fun call!292403 () Bool)

(assert (=> b!4195112 (= res!1722117 call!292403)))

(declare-fun bm!292396 () Bool)

(declare-fun c!715665 () Bool)

(declare-fun call!292401 () Bool)

(assert (=> bm!292396 (= call!292401 (validRegex!5706 (ite c!715664 (reg!12918 (regex!7684 r!4142)) (ite c!715665 (regOne!25691 (regex!7684 r!4142)) (regOne!25690 (regex!7684 r!4142))))))))

(declare-fun b!4195113 () Bool)

(declare-fun res!1722114 () Bool)

(declare-fun e!2604085 () Bool)

(assert (=> b!4195113 (=> (not res!1722114) (not e!2604085))))

(assert (=> b!4195113 (= res!1722114 call!292403)))

(declare-fun e!2604083 () Bool)

(assert (=> b!4195113 (= e!2604083 e!2604085)))

(declare-fun b!4195115 () Bool)

(declare-fun e!2604084 () Bool)

(assert (=> b!4195115 (= e!2604084 call!292401)))

(declare-fun b!4195116 () Bool)

(assert (=> b!4195116 (= e!2604089 e!2604084)))

(declare-fun res!1722113 () Bool)

(assert (=> b!4195116 (= res!1722113 (not (nullable!4425 (reg!12918 (regex!7684 r!4142)))))))

(assert (=> b!4195116 (=> (not res!1722113) (not e!2604084))))

(declare-fun b!4195117 () Bool)

(declare-fun call!292402 () Bool)

(assert (=> b!4195117 (= e!2604085 call!292402)))

(declare-fun b!4195118 () Bool)

(declare-fun res!1722115 () Bool)

(assert (=> b!4195118 (=> res!1722115 e!2604088)))

(assert (=> b!4195118 (= res!1722115 (not ((_ is Concat!20504) (regex!7684 r!4142))))))

(assert (=> b!4195118 (= e!2604083 e!2604088)))

(declare-fun b!4195119 () Bool)

(assert (=> b!4195119 (= e!2604087 call!292402)))

(declare-fun bm!292397 () Bool)

(assert (=> bm!292397 (= call!292403 call!292401)))

(declare-fun bm!292398 () Bool)

(assert (=> bm!292398 (= call!292402 (validRegex!5706 (ite c!715665 (regTwo!25691 (regex!7684 r!4142)) (regTwo!25690 (regex!7684 r!4142)))))))

(declare-fun d!1237349 () Bool)

(declare-fun res!1722116 () Bool)

(assert (=> d!1237349 (=> res!1722116 e!2604086)))

(assert (=> d!1237349 (= res!1722116 ((_ is ElementMatch!12589) (regex!7684 r!4142)))))

(assert (=> d!1237349 (= (validRegex!5706 (regex!7684 r!4142)) e!2604086)))

(declare-fun b!4195114 () Bool)

(assert (=> b!4195114 (= e!2604089 e!2604083)))

(assert (=> b!4195114 (= c!715665 ((_ is Union!12589) (regex!7684 r!4142)))))

(assert (= (and d!1237349 (not res!1722116)) b!4195111))

(assert (= (and b!4195111 c!715664) b!4195116))

(assert (= (and b!4195111 (not c!715664)) b!4195114))

(assert (= (and b!4195116 res!1722113) b!4195115))

(assert (= (and b!4195114 c!715665) b!4195113))

(assert (= (and b!4195114 (not c!715665)) b!4195118))

(assert (= (and b!4195113 res!1722114) b!4195117))

(assert (= (and b!4195118 (not res!1722115)) b!4195112))

(assert (= (and b!4195112 res!1722117) b!4195119))

(assert (= (or b!4195117 b!4195119) bm!292398))

(assert (= (or b!4195113 b!4195112) bm!292397))

(assert (= (or b!4195115 bm!292397) bm!292396))

(declare-fun m!4784069 () Bool)

(assert (=> bm!292396 m!4784069))

(declare-fun m!4784071 () Bool)

(assert (=> b!4195116 m!4784071))

(declare-fun m!4784073 () Bool)

(assert (=> bm!292398 m!4784073))

(assert (=> b!4194830 d!1237349))

(declare-fun d!1237351 () Bool)

(assert (=> d!1237351 (= (inv!60626 (tag!8548 rBis!167)) (= (mod (str.len (value!239525 (tag!8548 rBis!167))) 2) 0))))

(assert (=> b!4194841 d!1237351))

(declare-fun d!1237353 () Bool)

(declare-fun res!1722118 () Bool)

(declare-fun e!2604090 () Bool)

(assert (=> d!1237353 (=> (not res!1722118) (not e!2604090))))

(assert (=> d!1237353 (= res!1722118 (semiInverseModEq!3334 (toChars!10243 (transformation!7684 rBis!167)) (toValue!10384 (transformation!7684 rBis!167))))))

(assert (=> d!1237353 (= (inv!60628 (transformation!7684 rBis!167)) e!2604090)))

(declare-fun b!4195120 () Bool)

(assert (=> b!4195120 (= e!2604090 (equivClasses!3233 (toChars!10243 (transformation!7684 rBis!167)) (toValue!10384 (transformation!7684 rBis!167))))))

(assert (= (and d!1237353 res!1722118) b!4195120))

(declare-fun m!4784075 () Bool)

(assert (=> d!1237353 m!4784075))

(declare-fun m!4784077 () Bool)

(assert (=> b!4195120 m!4784077))

(assert (=> b!4194841 d!1237353))

(declare-fun d!1237355 () Bool)

(declare-fun lt!1494380 () List!46194)

(assert (=> d!1237355 (= (++!11756 p!2959 lt!1494380) input!3342)))

(declare-fun e!2604093 () List!46194)

(assert (=> d!1237355 (= lt!1494380 e!2604093)))

(declare-fun c!715668 () Bool)

(assert (=> d!1237355 (= c!715668 ((_ is Cons!46070) p!2959))))

(assert (=> d!1237355 (>= (size!33859 input!3342) (size!33859 p!2959))))

(assert (=> d!1237355 (= (getSuffix!2834 input!3342 p!2959) lt!1494380)))

(declare-fun b!4195125 () Bool)

(assert (=> b!4195125 (= e!2604093 (getSuffix!2834 (tail!6749 input!3342) (t!346409 p!2959)))))

(declare-fun b!4195126 () Bool)

(assert (=> b!4195126 (= e!2604093 input!3342)))

(assert (= (and d!1237355 c!715668) b!4195125))

(assert (= (and d!1237355 (not c!715668)) b!4195126))

(declare-fun m!4784079 () Bool)

(assert (=> d!1237355 m!4784079))

(assert (=> d!1237355 m!4783767))

(assert (=> d!1237355 m!4783745))

(declare-fun m!4784081 () Bool)

(assert (=> b!4195125 m!4784081))

(assert (=> b!4195125 m!4784081))

(declare-fun m!4784083 () Bool)

(assert (=> b!4195125 m!4784083))

(assert (=> b!4194840 d!1237355))

(declare-fun b!4195129 () Bool)

(declare-fun e!2604095 () Bool)

(assert (=> b!4195129 (= e!2604095 (isPrefix!4541 (tail!6749 input!3342) (tail!6749 input!3342)))))

(declare-fun b!4195128 () Bool)

(declare-fun res!1722121 () Bool)

(assert (=> b!4195128 (=> (not res!1722121) (not e!2604095))))

(assert (=> b!4195128 (= res!1722121 (= (head!8902 input!3342) (head!8902 input!3342)))))

(declare-fun d!1237357 () Bool)

(declare-fun e!2604094 () Bool)

(assert (=> d!1237357 e!2604094))

(declare-fun res!1722119 () Bool)

(assert (=> d!1237357 (=> res!1722119 e!2604094)))

(declare-fun lt!1494381 () Bool)

(assert (=> d!1237357 (= res!1722119 (not lt!1494381))))

(declare-fun e!2604096 () Bool)

(assert (=> d!1237357 (= lt!1494381 e!2604096)))

(declare-fun res!1722122 () Bool)

(assert (=> d!1237357 (=> res!1722122 e!2604096)))

(assert (=> d!1237357 (= res!1722122 ((_ is Nil!46070) input!3342))))

(assert (=> d!1237357 (= (isPrefix!4541 input!3342 input!3342) lt!1494381)))

(declare-fun b!4195127 () Bool)

(assert (=> b!4195127 (= e!2604096 e!2604095)))

(declare-fun res!1722120 () Bool)

(assert (=> b!4195127 (=> (not res!1722120) (not e!2604095))))

(assert (=> b!4195127 (= res!1722120 (not ((_ is Nil!46070) input!3342)))))

(declare-fun b!4195130 () Bool)

(assert (=> b!4195130 (= e!2604094 (>= (size!33859 input!3342) (size!33859 input!3342)))))

(assert (= (and d!1237357 (not res!1722122)) b!4195127))

(assert (= (and b!4195127 res!1722120) b!4195128))

(assert (= (and b!4195128 res!1722121) b!4195129))

(assert (= (and d!1237357 (not res!1722119)) b!4195130))

(assert (=> b!4195129 m!4784081))

(assert (=> b!4195129 m!4784081))

(assert (=> b!4195129 m!4784081))

(assert (=> b!4195129 m!4784081))

(declare-fun m!4784085 () Bool)

(assert (=> b!4195129 m!4784085))

(declare-fun m!4784087 () Bool)

(assert (=> b!4195128 m!4784087))

(assert (=> b!4195128 m!4784087))

(assert (=> b!4195130 m!4783767))

(assert (=> b!4195130 m!4783767))

(assert (=> b!4194840 d!1237357))

(declare-fun d!1237359 () Bool)

(declare-fun fromListB!2617 (List!46194) BalanceConc!27384)

(assert (=> d!1237359 (= (seqFromList!5709 p!2959) (fromListB!2617 p!2959))))

(declare-fun bs!596807 () Bool)

(assert (= bs!596807 d!1237359))

(declare-fun m!4784089 () Bool)

(assert (=> bs!596807 m!4784089))

(assert (=> b!4194840 d!1237359))

(declare-fun d!1237361 () Bool)

(assert (=> d!1237361 (isPrefix!4541 input!3342 input!3342)))

(declare-fun lt!1494384 () Unit!65161)

(declare-fun choose!25714 (List!46194 List!46194) Unit!65161)

(assert (=> d!1237361 (= lt!1494384 (choose!25714 input!3342 input!3342))))

(assert (=> d!1237361 (= (lemmaIsPrefixRefl!2970 input!3342 input!3342) lt!1494384)))

(declare-fun bs!596808 () Bool)

(assert (= bs!596808 d!1237361))

(assert (=> bs!596808 m!4783737))

(declare-fun m!4784091 () Bool)

(assert (=> bs!596808 m!4784091))

(assert (=> b!4194840 d!1237361))

(declare-fun d!1237363 () Bool)

(declare-fun dynLambda!19850 (Int BalanceConc!27384) TokenValue!7914)

(assert (=> d!1237363 (= (apply!10649 (transformation!7684 r!4142) lt!1494260) (dynLambda!19850 (toValue!10384 (transformation!7684 r!4142)) lt!1494260))))

(declare-fun b_lambda!123457 () Bool)

(assert (=> (not b_lambda!123457) (not d!1237363)))

(declare-fun t!346430 () Bool)

(declare-fun tb!251445 () Bool)

(assert (=> (and b!4194813 (= (toValue!10384 (transformation!7684 r!4142)) (toValue!10384 (transformation!7684 r!4142))) t!346430) tb!251445))

(declare-fun result!306440 () Bool)

(declare-fun inv!21 (TokenValue!7914) Bool)

(assert (=> tb!251445 (= result!306440 (inv!21 (dynLambda!19850 (toValue!10384 (transformation!7684 r!4142)) lt!1494260)))))

(declare-fun m!4784093 () Bool)

(assert (=> tb!251445 m!4784093))

(assert (=> d!1237363 t!346430))

(declare-fun b_and!328995 () Bool)

(assert (= b_and!328965 (and (=> t!346430 result!306440) b_and!328995)))

(declare-fun tb!251447 () Bool)

(declare-fun t!346432 () Bool)

(assert (=> (and b!4194825 (= (toValue!10384 (transformation!7684 (h!51491 rules!3843))) (toValue!10384 (transformation!7684 r!4142))) t!346432) tb!251447))

(declare-fun result!306444 () Bool)

(assert (= result!306444 result!306440))

(assert (=> d!1237363 t!346432))

(declare-fun b_and!328997 () Bool)

(assert (= b_and!328969 (and (=> t!346432 result!306444) b_and!328997)))

(declare-fun tb!251449 () Bool)

(declare-fun t!346434 () Bool)

(assert (=> (and b!4194836 (= (toValue!10384 (transformation!7684 rBis!167)) (toValue!10384 (transformation!7684 r!4142))) t!346434) tb!251449))

(declare-fun result!306446 () Bool)

(assert (= result!306446 result!306440))

(assert (=> d!1237363 t!346434))

(declare-fun b_and!328999 () Bool)

(assert (= b_and!328973 (and (=> t!346434 result!306446) b_and!328999)))

(declare-fun m!4784095 () Bool)

(assert (=> d!1237363 m!4784095))

(assert (=> b!4194840 d!1237363))

(declare-fun d!1237365 () Bool)

(declare-fun e!2604103 () Bool)

(assert (=> d!1237365 e!2604103))

(declare-fun res!1722124 () Bool)

(assert (=> d!1237365 (=> res!1722124 e!2604103)))

(declare-fun lt!1494385 () Option!9878)

(assert (=> d!1237365 (= res!1722124 (isEmpty!27280 lt!1494385))))

(declare-fun e!2604100 () Option!9878)

(assert (=> d!1237365 (= lt!1494385 e!2604100)))

(declare-fun c!715669 () Bool)

(declare-fun lt!1494388 () tuple2!43866)

(assert (=> d!1237365 (= c!715669 (isEmpty!27283 (_1!25067 lt!1494388)))))

(assert (=> d!1237365 (= lt!1494388 (findLongestMatch!1528 (regex!7684 r!4142) input!3342))))

(assert (=> d!1237365 (ruleValid!3402 thiss!25986 r!4142)))

(assert (=> d!1237365 (= (maxPrefixOneRule!3286 thiss!25986 r!4142 input!3342) lt!1494385)))

(declare-fun b!4195133 () Bool)

(declare-fun res!1722126 () Bool)

(declare-fun e!2604101 () Bool)

(assert (=> b!4195133 (=> (not res!1722126) (not e!2604101))))

(assert (=> b!4195133 (= res!1722126 (= (value!239526 (_1!25065 (get!14985 lt!1494385))) (apply!10649 (transformation!7684 (rule!10774 (_1!25065 (get!14985 lt!1494385)))) (seqFromList!5709 (originalCharacters!8072 (_1!25065 (get!14985 lt!1494385)))))))))

(declare-fun b!4195134 () Bool)

(assert (=> b!4195134 (= e!2604100 None!9877)))

(declare-fun b!4195135 () Bool)

(declare-fun res!1722125 () Bool)

(assert (=> b!4195135 (=> (not res!1722125) (not e!2604101))))

(assert (=> b!4195135 (= res!1722125 (= (++!11756 (list!16652 (charsOf!5119 (_1!25065 (get!14985 lt!1494385)))) (_2!25065 (get!14985 lt!1494385))) input!3342))))

(declare-fun b!4195136 () Bool)

(declare-fun res!1722128 () Bool)

(assert (=> b!4195136 (=> (not res!1722128) (not e!2604101))))

(assert (=> b!4195136 (= res!1722128 (= (rule!10774 (_1!25065 (get!14985 lt!1494385))) r!4142))))

(declare-fun b!4195137 () Bool)

(assert (=> b!4195137 (= e!2604100 (Some!9877 (tuple2!43863 (Token!14083 (apply!10649 (transformation!7684 r!4142) (seqFromList!5709 (_1!25067 lt!1494388))) r!4142 (size!33858 (seqFromList!5709 (_1!25067 lt!1494388))) (_1!25067 lt!1494388)) (_2!25067 lt!1494388))))))

(declare-fun lt!1494386 () Unit!65161)

(assert (=> b!4195137 (= lt!1494386 (longestMatchIsAcceptedByMatchOrIsEmpty!1588 (regex!7684 r!4142) input!3342))))

(declare-fun res!1722129 () Bool)

(assert (=> b!4195137 (= res!1722129 (isEmpty!27283 (_1!25067 (findLongestMatchInner!1615 (regex!7684 r!4142) Nil!46070 (size!33859 Nil!46070) input!3342 input!3342 (size!33859 input!3342)))))))

(declare-fun e!2604102 () Bool)

(assert (=> b!4195137 (=> res!1722129 e!2604102)))

(assert (=> b!4195137 e!2604102))

(declare-fun lt!1494389 () Unit!65161)

(assert (=> b!4195137 (= lt!1494389 lt!1494386)))

(declare-fun lt!1494387 () Unit!65161)

(assert (=> b!4195137 (= lt!1494387 (lemmaSemiInverse!2450 (transformation!7684 r!4142) (seqFromList!5709 (_1!25067 lt!1494388))))))

(declare-fun b!4195138 () Bool)

(assert (=> b!4195138 (= e!2604103 e!2604101)))

(declare-fun res!1722123 () Bool)

(assert (=> b!4195138 (=> (not res!1722123) (not e!2604101))))

(assert (=> b!4195138 (= res!1722123 (matchR!6328 (regex!7684 r!4142) (list!16652 (charsOf!5119 (_1!25065 (get!14985 lt!1494385))))))))

(declare-fun b!4195139 () Bool)

(assert (=> b!4195139 (= e!2604102 (matchR!6328 (regex!7684 r!4142) (_1!25067 (findLongestMatchInner!1615 (regex!7684 r!4142) Nil!46070 (size!33859 Nil!46070) input!3342 input!3342 (size!33859 input!3342)))))))

(declare-fun b!4195140 () Bool)

(assert (=> b!4195140 (= e!2604101 (= (size!33857 (_1!25065 (get!14985 lt!1494385))) (size!33859 (originalCharacters!8072 (_1!25065 (get!14985 lt!1494385))))))))

(declare-fun b!4195141 () Bool)

(declare-fun res!1722127 () Bool)

(assert (=> b!4195141 (=> (not res!1722127) (not e!2604101))))

(assert (=> b!4195141 (= res!1722127 (< (size!33859 (_2!25065 (get!14985 lt!1494385))) (size!33859 input!3342)))))

(assert (= (and d!1237365 c!715669) b!4195134))

(assert (= (and d!1237365 (not c!715669)) b!4195137))

(assert (= (and b!4195137 (not res!1722129)) b!4195139))

(assert (= (and d!1237365 (not res!1722124)) b!4195138))

(assert (= (and b!4195138 res!1722123) b!4195135))

(assert (= (and b!4195135 res!1722125) b!4195141))

(assert (= (and b!4195141 res!1722127) b!4195136))

(assert (= (and b!4195136 res!1722128) b!4195133))

(assert (= (and b!4195133 res!1722126) b!4195140))

(declare-fun m!4784097 () Bool)

(assert (=> b!4195138 m!4784097))

(declare-fun m!4784099 () Bool)

(assert (=> b!4195138 m!4784099))

(assert (=> b!4195138 m!4784099))

(declare-fun m!4784101 () Bool)

(assert (=> b!4195138 m!4784101))

(assert (=> b!4195138 m!4784101))

(declare-fun m!4784103 () Bool)

(assert (=> b!4195138 m!4784103))

(assert (=> b!4195139 m!4783957))

(assert (=> b!4195139 m!4783767))

(assert (=> b!4195139 m!4783957))

(assert (=> b!4195139 m!4783767))

(declare-fun m!4784105 () Bool)

(assert (=> b!4195139 m!4784105))

(declare-fun m!4784107 () Bool)

(assert (=> b!4195139 m!4784107))

(declare-fun m!4784109 () Bool)

(assert (=> b!4195137 m!4784109))

(declare-fun m!4784111 () Bool)

(assert (=> b!4195137 m!4784111))

(assert (=> b!4195137 m!4783767))

(declare-fun m!4784113 () Bool)

(assert (=> b!4195137 m!4784113))

(assert (=> b!4195137 m!4784109))

(declare-fun m!4784115 () Bool)

(assert (=> b!4195137 m!4784115))

(assert (=> b!4195137 m!4783957))

(assert (=> b!4195137 m!4784109))

(assert (=> b!4195137 m!4784109))

(declare-fun m!4784117 () Bool)

(assert (=> b!4195137 m!4784117))

(assert (=> b!4195137 m!4783957))

(assert (=> b!4195137 m!4783767))

(assert (=> b!4195137 m!4784105))

(declare-fun m!4784119 () Bool)

(assert (=> b!4195137 m!4784119))

(assert (=> b!4195140 m!4784097))

(declare-fun m!4784121 () Bool)

(assert (=> b!4195140 m!4784121))

(assert (=> b!4195133 m!4784097))

(declare-fun m!4784123 () Bool)

(assert (=> b!4195133 m!4784123))

(assert (=> b!4195133 m!4784123))

(declare-fun m!4784125 () Bool)

(assert (=> b!4195133 m!4784125))

(assert (=> b!4195141 m!4784097))

(declare-fun m!4784127 () Bool)

(assert (=> b!4195141 m!4784127))

(assert (=> b!4195141 m!4783767))

(assert (=> b!4195135 m!4784097))

(assert (=> b!4195135 m!4784099))

(assert (=> b!4195135 m!4784099))

(assert (=> b!4195135 m!4784101))

(assert (=> b!4195135 m!4784101))

(declare-fun m!4784129 () Bool)

(assert (=> b!4195135 m!4784129))

(assert (=> b!4195136 m!4784097))

(declare-fun m!4784131 () Bool)

(assert (=> d!1237365 m!4784131))

(declare-fun m!4784133 () Bool)

(assert (=> d!1237365 m!4784133))

(declare-fun m!4784135 () Bool)

(assert (=> d!1237365 m!4784135))

(assert (=> d!1237365 m!4783709))

(assert (=> b!4194840 d!1237365))

(declare-fun d!1237367 () Bool)

(declare-fun lt!1494390 () Int)

(assert (=> d!1237367 (>= lt!1494390 0)))

(declare-fun e!2604104 () Int)

(assert (=> d!1237367 (= lt!1494390 e!2604104)))

(declare-fun c!715670 () Bool)

(assert (=> d!1237367 (= c!715670 ((_ is Nil!46070) p!2959))))

(assert (=> d!1237367 (= (size!33859 p!2959) lt!1494390)))

(declare-fun b!4195142 () Bool)

(assert (=> b!4195142 (= e!2604104 0)))

(declare-fun b!4195143 () Bool)

(assert (=> b!4195143 (= e!2604104 (+ 1 (size!33859 (t!346409 p!2959))))))

(assert (= (and d!1237367 c!715670) b!4195142))

(assert (= (and d!1237367 (not c!715670)) b!4195143))

(declare-fun m!4784137 () Bool)

(assert (=> b!4195143 m!4784137))

(assert (=> b!4194840 d!1237367))

(declare-fun b!4195271 () Bool)

(declare-fun e!2604177 () Bool)

(assert (=> b!4195271 (= e!2604177 true)))

(declare-fun d!1237369 () Bool)

(assert (=> d!1237369 e!2604177))

(assert (= d!1237369 b!4195271))

(declare-fun lambda!129541 () Int)

(declare-fun order!24401 () Int)

(declare-fun order!24403 () Int)

(declare-fun dynLambda!19851 (Int Int) Int)

(declare-fun dynLambda!19852 (Int Int) Int)

(assert (=> b!4195271 (< (dynLambda!19851 order!24401 (toValue!10384 (transformation!7684 r!4142))) (dynLambda!19852 order!24403 lambda!129541))))

(declare-fun order!24405 () Int)

(declare-fun dynLambda!19853 (Int Int) Int)

(assert (=> b!4195271 (< (dynLambda!19853 order!24405 (toChars!10243 (transformation!7684 r!4142))) (dynLambda!19852 order!24403 lambda!129541))))

(assert (=> d!1237369 (= (list!16652 (dynLambda!19849 (toChars!10243 (transformation!7684 r!4142)) (dynLambda!19850 (toValue!10384 (transformation!7684 r!4142)) lt!1494260))) (list!16652 lt!1494260))))

(declare-fun lt!1494420 () Unit!65161)

(declare-fun ForallOf!1068 (Int BalanceConc!27384) Unit!65161)

(assert (=> d!1237369 (= lt!1494420 (ForallOf!1068 lambda!129541 lt!1494260))))

(assert (=> d!1237369 (= (lemmaSemiInverse!2450 (transformation!7684 r!4142) lt!1494260) lt!1494420)))

(declare-fun b_lambda!123469 () Bool)

(assert (=> (not b_lambda!123469) (not d!1237369)))

(declare-fun t!346448 () Bool)

(declare-fun tb!251463 () Bool)

(assert (=> (and b!4194813 (= (toChars!10243 (transformation!7684 r!4142)) (toChars!10243 (transformation!7684 r!4142))) t!346448) tb!251463))

(declare-fun e!2604178 () Bool)

(declare-fun tp!1281638 () Bool)

(declare-fun b!4195272 () Bool)

(assert (=> b!4195272 (= e!2604178 (and (inv!60631 (c!715622 (dynLambda!19849 (toChars!10243 (transformation!7684 r!4142)) (dynLambda!19850 (toValue!10384 (transformation!7684 r!4142)) lt!1494260)))) tp!1281638))))

(declare-fun result!306466 () Bool)

(assert (=> tb!251463 (= result!306466 (and (inv!60632 (dynLambda!19849 (toChars!10243 (transformation!7684 r!4142)) (dynLambda!19850 (toValue!10384 (transformation!7684 r!4142)) lt!1494260))) e!2604178))))

(assert (= tb!251463 b!4195272))

(declare-fun m!4784257 () Bool)

(assert (=> b!4195272 m!4784257))

(declare-fun m!4784259 () Bool)

(assert (=> tb!251463 m!4784259))

(assert (=> d!1237369 t!346448))

(declare-fun b_and!329017 () Bool)

(assert (= b_and!328989 (and (=> t!346448 result!306466) b_and!329017)))

(declare-fun tb!251465 () Bool)

(declare-fun t!346450 () Bool)

(assert (=> (and b!4194825 (= (toChars!10243 (transformation!7684 (h!51491 rules!3843))) (toChars!10243 (transformation!7684 r!4142))) t!346450) tb!251465))

(declare-fun result!306468 () Bool)

(assert (= result!306468 result!306466))

(assert (=> d!1237369 t!346450))

(declare-fun b_and!329019 () Bool)

(assert (= b_and!328991 (and (=> t!346450 result!306468) b_and!329019)))

(declare-fun t!346452 () Bool)

(declare-fun tb!251467 () Bool)

(assert (=> (and b!4194836 (= (toChars!10243 (transformation!7684 rBis!167)) (toChars!10243 (transformation!7684 r!4142))) t!346452) tb!251467))

(declare-fun result!306470 () Bool)

(assert (= result!306470 result!306466))

(assert (=> d!1237369 t!346452))

(declare-fun b_and!329021 () Bool)

(assert (= b_and!328993 (and (=> t!346452 result!306470) b_and!329021)))

(declare-fun b_lambda!123471 () Bool)

(assert (=> (not b_lambda!123471) (not d!1237369)))

(assert (=> d!1237369 t!346430))

(declare-fun b_and!329023 () Bool)

(assert (= b_and!328995 (and (=> t!346430 result!306440) b_and!329023)))

(assert (=> d!1237369 t!346432))

(declare-fun b_and!329025 () Bool)

(assert (= b_and!328997 (and (=> t!346432 result!306444) b_and!329025)))

(assert (=> d!1237369 t!346434))

(declare-fun b_and!329027 () Bool)

(assert (= b_and!328999 (and (=> t!346434 result!306446) b_and!329027)))

(declare-fun m!4784261 () Bool)

(assert (=> d!1237369 m!4784261))

(declare-fun m!4784263 () Bool)

(assert (=> d!1237369 m!4784263))

(declare-fun m!4784265 () Bool)

(assert (=> d!1237369 m!4784265))

(assert (=> d!1237369 m!4784095))

(assert (=> d!1237369 m!4784263))

(declare-fun m!4784267 () Bool)

(assert (=> d!1237369 m!4784267))

(assert (=> d!1237369 m!4784095))

(assert (=> b!4194840 d!1237369))

(declare-fun d!1237393 () Bool)

(declare-fun lt!1494423 () Int)

(assert (=> d!1237393 (= lt!1494423 (size!33859 (list!16652 lt!1494249)))))

(declare-fun size!33861 (Conc!13895) Int)

(assert (=> d!1237393 (= lt!1494423 (size!33861 (c!715622 lt!1494249)))))

(assert (=> d!1237393 (= (size!33858 lt!1494249) lt!1494423)))

(declare-fun bs!596810 () Bool)

(assert (= bs!596810 d!1237393))

(assert (=> bs!596810 m!4783723))

(assert (=> bs!596810 m!4783723))

(declare-fun m!4784269 () Bool)

(assert (=> bs!596810 m!4784269))

(declare-fun m!4784271 () Bool)

(assert (=> bs!596810 m!4784271))

(assert (=> b!4194819 d!1237393))

(declare-fun d!1237395 () Bool)

(declare-fun lt!1494424 () Int)

(assert (=> d!1237395 (>= lt!1494424 0)))

(declare-fun e!2604179 () Int)

(assert (=> d!1237395 (= lt!1494424 e!2604179)))

(declare-fun c!715684 () Bool)

(assert (=> d!1237395 (= c!715684 ((_ is Nil!46070) lt!1494262))))

(assert (=> d!1237395 (= (size!33859 lt!1494262) lt!1494424)))

(declare-fun b!4195273 () Bool)

(assert (=> b!4195273 (= e!2604179 0)))

(declare-fun b!4195274 () Bool)

(assert (=> b!4195274 (= e!2604179 (+ 1 (size!33859 (t!346409 lt!1494262))))))

(assert (= (and d!1237395 c!715684) b!4195273))

(assert (= (and d!1237395 (not c!715684)) b!4195274))

(declare-fun m!4784273 () Bool)

(assert (=> b!4195274 m!4784273))

(assert (=> b!4194842 d!1237395))

(declare-fun d!1237397 () Bool)

(declare-fun res!1722185 () Bool)

(declare-fun e!2604182 () Bool)

(assert (=> d!1237397 (=> (not res!1722185) (not e!2604182))))

(declare-fun rulesValid!3002 (LexerInterface!7277 List!46195) Bool)

(assert (=> d!1237397 (= res!1722185 (rulesValid!3002 thiss!25986 rules!3843))))

(assert (=> d!1237397 (= (rulesInvariant!6490 thiss!25986 rules!3843) e!2604182)))

(declare-fun b!4195277 () Bool)

(declare-datatypes ((List!46197 0))(
  ( (Nil!46073) (Cons!46073 (h!51493 String!53436) (t!346460 List!46197)) )
))
(declare-fun noDuplicateTag!3163 (LexerInterface!7277 List!46195 List!46197) Bool)

(assert (=> b!4195277 (= e!2604182 (noDuplicateTag!3163 thiss!25986 rules!3843 Nil!46073))))

(assert (= (and d!1237397 res!1722185) b!4195277))

(declare-fun m!4784275 () Bool)

(assert (=> d!1237397 m!4784275))

(declare-fun m!4784277 () Bool)

(assert (=> b!4195277 m!4784277))

(assert (=> b!4194821 d!1237397))

(declare-fun d!1237399 () Bool)

(declare-fun lt!1494425 () Int)

(assert (=> d!1237399 (>= lt!1494425 0)))

(declare-fun e!2604183 () Int)

(assert (=> d!1237399 (= lt!1494425 e!2604183)))

(declare-fun c!715685 () Bool)

(assert (=> d!1237399 (= c!715685 ((_ is Nil!46070) pBis!107))))

(assert (=> d!1237399 (= (size!33859 pBis!107) lt!1494425)))

(declare-fun b!4195278 () Bool)

(assert (=> b!4195278 (= e!2604183 0)))

(declare-fun b!4195279 () Bool)

(assert (=> b!4195279 (= e!2604183 (+ 1 (size!33859 (t!346409 pBis!107))))))

(assert (= (and d!1237399 c!715685) b!4195278))

(assert (= (and d!1237399 (not c!715685)) b!4195279))

(declare-fun m!4784279 () Bool)

(assert (=> b!4195279 m!4784279))

(assert (=> b!4194820 d!1237399))

(declare-fun b!4195280 () Bool)

(declare-fun e!2604184 () List!46194)

(assert (=> b!4195280 (= e!2604184 lt!1494261)))

(declare-fun e!2604185 () Bool)

(declare-fun b!4195283 () Bool)

(declare-fun lt!1494426 () List!46194)

(assert (=> b!4195283 (= e!2604185 (or (not (= lt!1494261 Nil!46070)) (= lt!1494426 p!2959)))))

(declare-fun d!1237401 () Bool)

(assert (=> d!1237401 e!2604185))

(declare-fun res!1722186 () Bool)

(assert (=> d!1237401 (=> (not res!1722186) (not e!2604185))))

(assert (=> d!1237401 (= res!1722186 (= (content!7186 lt!1494426) ((_ map or) (content!7186 p!2959) (content!7186 lt!1494261))))))

(assert (=> d!1237401 (= lt!1494426 e!2604184)))

(declare-fun c!715686 () Bool)

(assert (=> d!1237401 (= c!715686 ((_ is Nil!46070) p!2959))))

(assert (=> d!1237401 (= (++!11756 p!2959 lt!1494261) lt!1494426)))

(declare-fun b!4195281 () Bool)

(assert (=> b!4195281 (= e!2604184 (Cons!46070 (h!51490 p!2959) (++!11756 (t!346409 p!2959) lt!1494261)))))

(declare-fun b!4195282 () Bool)

(declare-fun res!1722187 () Bool)

(assert (=> b!4195282 (=> (not res!1722187) (not e!2604185))))

(assert (=> b!4195282 (= res!1722187 (= (size!33859 lt!1494426) (+ (size!33859 p!2959) (size!33859 lt!1494261))))))

(assert (= (and d!1237401 c!715686) b!4195280))

(assert (= (and d!1237401 (not c!715686)) b!4195281))

(assert (= (and d!1237401 res!1722186) b!4195282))

(assert (= (and b!4195282 res!1722187) b!4195283))

(declare-fun m!4784281 () Bool)

(assert (=> d!1237401 m!4784281))

(declare-fun m!4784283 () Bool)

(assert (=> d!1237401 m!4784283))

(declare-fun m!4784285 () Bool)

(assert (=> d!1237401 m!4784285))

(declare-fun m!4784287 () Bool)

(assert (=> b!4195281 m!4784287))

(declare-fun m!4784289 () Bool)

(assert (=> b!4195282 m!4784289))

(assert (=> b!4195282 m!4783745))

(declare-fun m!4784291 () Bool)

(assert (=> b!4195282 m!4784291))

(assert (=> b!4194831 d!1237401))

(declare-fun b!4195286 () Bool)

(declare-fun e!2604187 () Bool)

(assert (=> b!4195286 (= e!2604187 (isPrefix!4541 (tail!6749 pBis!107) (tail!6749 input!3342)))))

(declare-fun b!4195285 () Bool)

(declare-fun res!1722190 () Bool)

(assert (=> b!4195285 (=> (not res!1722190) (not e!2604187))))

(assert (=> b!4195285 (= res!1722190 (= (head!8902 pBis!107) (head!8902 input!3342)))))

(declare-fun d!1237403 () Bool)

(declare-fun e!2604186 () Bool)

(assert (=> d!1237403 e!2604186))

(declare-fun res!1722188 () Bool)

(assert (=> d!1237403 (=> res!1722188 e!2604186)))

(declare-fun lt!1494427 () Bool)

(assert (=> d!1237403 (= res!1722188 (not lt!1494427))))

(declare-fun e!2604188 () Bool)

(assert (=> d!1237403 (= lt!1494427 e!2604188)))

(declare-fun res!1722191 () Bool)

(assert (=> d!1237403 (=> res!1722191 e!2604188)))

(assert (=> d!1237403 (= res!1722191 ((_ is Nil!46070) pBis!107))))

(assert (=> d!1237403 (= (isPrefix!4541 pBis!107 input!3342) lt!1494427)))

(declare-fun b!4195284 () Bool)

(assert (=> b!4195284 (= e!2604188 e!2604187)))

(declare-fun res!1722189 () Bool)

(assert (=> b!4195284 (=> (not res!1722189) (not e!2604187))))

(assert (=> b!4195284 (= res!1722189 (not ((_ is Nil!46070) input!3342)))))

(declare-fun b!4195287 () Bool)

(assert (=> b!4195287 (= e!2604186 (>= (size!33859 input!3342) (size!33859 pBis!107)))))

(assert (= (and d!1237403 (not res!1722191)) b!4195284))

(assert (= (and b!4195284 res!1722189) b!4195285))

(assert (= (and b!4195285 res!1722190) b!4195286))

(assert (= (and d!1237403 (not res!1722188)) b!4195287))

(declare-fun m!4784293 () Bool)

(assert (=> b!4195286 m!4784293))

(assert (=> b!4195286 m!4784081))

(assert (=> b!4195286 m!4784293))

(assert (=> b!4195286 m!4784081))

(declare-fun m!4784295 () Bool)

(assert (=> b!4195286 m!4784295))

(declare-fun m!4784297 () Bool)

(assert (=> b!4195285 m!4784297))

(assert (=> b!4195285 m!4784087))

(assert (=> b!4195287 m!4783767))

(assert (=> b!4195287 m!4783719))

(assert (=> b!4194822 d!1237403))

(declare-fun b!4195316 () Bool)

(declare-fun res!1722208 () Bool)

(declare-fun e!2604205 () Bool)

(assert (=> b!4195316 (=> (not res!1722208) (not e!2604205))))

(declare-fun call!292418 () Bool)

(assert (=> b!4195316 (= res!1722208 (not call!292418))))

(declare-fun b!4195317 () Bool)

(declare-fun e!2604209 () Bool)

(assert (=> b!4195317 (= e!2604209 (not (= (head!8902 p!2959) (c!715623 (regex!7684 r!4142)))))))

(declare-fun bm!292413 () Bool)

(assert (=> bm!292413 (= call!292418 (isEmpty!27283 p!2959))))

(declare-fun b!4195318 () Bool)

(declare-fun res!1722213 () Bool)

(declare-fun e!2604204 () Bool)

(assert (=> b!4195318 (=> res!1722213 e!2604204)))

(assert (=> b!4195318 (= res!1722213 e!2604205)))

(declare-fun res!1722215 () Bool)

(assert (=> b!4195318 (=> (not res!1722215) (not e!2604205))))

(declare-fun lt!1494430 () Bool)

(assert (=> b!4195318 (= res!1722215 lt!1494430)))

(declare-fun b!4195319 () Bool)

(declare-fun e!2604207 () Bool)

(declare-fun derivativeStep!3815 (Regex!12589 C!25368) Regex!12589)

(assert (=> b!4195319 (= e!2604207 (matchR!6328 (derivativeStep!3815 (regex!7684 r!4142) (head!8902 p!2959)) (tail!6749 p!2959)))))

(declare-fun b!4195320 () Bool)

(declare-fun e!2604206 () Bool)

(assert (=> b!4195320 (= e!2604206 (= lt!1494430 call!292418))))

(declare-fun b!4195321 () Bool)

(declare-fun e!2604208 () Bool)

(assert (=> b!4195321 (= e!2604204 e!2604208)))

(declare-fun res!1722209 () Bool)

(assert (=> b!4195321 (=> (not res!1722209) (not e!2604208))))

(assert (=> b!4195321 (= res!1722209 (not lt!1494430))))

(declare-fun b!4195322 () Bool)

(declare-fun res!1722214 () Bool)

(assert (=> b!4195322 (=> res!1722214 e!2604209)))

(assert (=> b!4195322 (= res!1722214 (not (isEmpty!27283 (tail!6749 p!2959))))))

(declare-fun b!4195323 () Bool)

(declare-fun res!1722210 () Bool)

(assert (=> b!4195323 (=> (not res!1722210) (not e!2604205))))

(assert (=> b!4195323 (= res!1722210 (isEmpty!27283 (tail!6749 p!2959)))))

(declare-fun b!4195324 () Bool)

(declare-fun res!1722212 () Bool)

(assert (=> b!4195324 (=> res!1722212 e!2604204)))

(assert (=> b!4195324 (= res!1722212 (not ((_ is ElementMatch!12589) (regex!7684 r!4142))))))

(declare-fun e!2604203 () Bool)

(assert (=> b!4195324 (= e!2604203 e!2604204)))

(declare-fun d!1237405 () Bool)

(assert (=> d!1237405 e!2604206))

(declare-fun c!715695 () Bool)

(assert (=> d!1237405 (= c!715695 ((_ is EmptyExpr!12589) (regex!7684 r!4142)))))

(assert (=> d!1237405 (= lt!1494430 e!2604207)))

(declare-fun c!715694 () Bool)

(assert (=> d!1237405 (= c!715694 (isEmpty!27283 p!2959))))

(assert (=> d!1237405 (validRegex!5706 (regex!7684 r!4142))))

(assert (=> d!1237405 (= (matchR!6328 (regex!7684 r!4142) p!2959) lt!1494430)))

(declare-fun b!4195325 () Bool)

(assert (=> b!4195325 (= e!2604208 e!2604209)))

(declare-fun res!1722211 () Bool)

(assert (=> b!4195325 (=> res!1722211 e!2604209)))

(assert (=> b!4195325 (= res!1722211 call!292418)))

(declare-fun b!4195326 () Bool)

(assert (=> b!4195326 (= e!2604207 (nullable!4425 (regex!7684 r!4142)))))

(declare-fun b!4195327 () Bool)

(assert (=> b!4195327 (= e!2604205 (= (head!8902 p!2959) (c!715623 (regex!7684 r!4142))))))

(declare-fun b!4195328 () Bool)

(assert (=> b!4195328 (= e!2604206 e!2604203)))

(declare-fun c!715693 () Bool)

(assert (=> b!4195328 (= c!715693 ((_ is EmptyLang!12589) (regex!7684 r!4142)))))

(declare-fun b!4195329 () Bool)

(assert (=> b!4195329 (= e!2604203 (not lt!1494430))))

(assert (= (and d!1237405 c!715694) b!4195326))

(assert (= (and d!1237405 (not c!715694)) b!4195319))

(assert (= (and d!1237405 c!715695) b!4195320))

(assert (= (and d!1237405 (not c!715695)) b!4195328))

(assert (= (and b!4195328 c!715693) b!4195329))

(assert (= (and b!4195328 (not c!715693)) b!4195324))

(assert (= (and b!4195324 (not res!1722212)) b!4195318))

(assert (= (and b!4195318 res!1722215) b!4195316))

(assert (= (and b!4195316 res!1722208) b!4195323))

(assert (= (and b!4195323 res!1722210) b!4195327))

(assert (= (and b!4195318 (not res!1722213)) b!4195321))

(assert (= (and b!4195321 res!1722209) b!4195325))

(assert (= (and b!4195325 (not res!1722211)) b!4195322))

(assert (= (and b!4195322 (not res!1722214)) b!4195317))

(assert (= (or b!4195320 b!4195316 b!4195325) bm!292413))

(declare-fun m!4784299 () Bool)

(assert (=> b!4195319 m!4784299))

(assert (=> b!4195319 m!4784299))

(declare-fun m!4784301 () Bool)

(assert (=> b!4195319 m!4784301))

(declare-fun m!4784303 () Bool)

(assert (=> b!4195319 m!4784303))

(assert (=> b!4195319 m!4784301))

(assert (=> b!4195319 m!4784303))

(declare-fun m!4784305 () Bool)

(assert (=> b!4195319 m!4784305))

(assert (=> b!4195323 m!4784303))

(assert (=> b!4195323 m!4784303))

(declare-fun m!4784307 () Bool)

(assert (=> b!4195323 m!4784307))

(assert (=> b!4195327 m!4784299))

(declare-fun m!4784309 () Bool)

(assert (=> bm!292413 m!4784309))

(assert (=> d!1237405 m!4784309))

(assert (=> d!1237405 m!4783713))

(assert (=> b!4195317 m!4784299))

(assert (=> b!4195322 m!4784303))

(assert (=> b!4195322 m!4784303))

(assert (=> b!4195322 m!4784307))

(assert (=> b!4195326 m!4784067))

(assert (=> b!4194833 d!1237405))

(declare-fun d!1237407 () Bool)

(assert (=> d!1237407 (= pBis!107 lt!1494262)))

(declare-fun lt!1494433 () Unit!65161)

(declare-fun choose!25715 (List!46194 List!46194 List!46194) Unit!65161)

(assert (=> d!1237407 (= lt!1494433 (choose!25715 pBis!107 lt!1494262 input!3342))))

(assert (=> d!1237407 (isPrefix!4541 pBis!107 input!3342)))

(assert (=> d!1237407 (= (lemmaIsPrefixSameLengthThenSameList!1005 pBis!107 lt!1494262 input!3342) lt!1494433)))

(declare-fun bs!596811 () Bool)

(assert (= bs!596811 d!1237407))

(declare-fun m!4784311 () Bool)

(assert (=> bs!596811 m!4784311))

(assert (=> bs!596811 m!4783755))

(assert (=> b!4194832 d!1237407))

(declare-fun b!4195332 () Bool)

(declare-fun e!2604211 () Bool)

(assert (=> b!4195332 (= e!2604211 (isPrefix!4541 (tail!6749 p!2959) (tail!6749 input!3342)))))

(declare-fun b!4195331 () Bool)

(declare-fun res!1722218 () Bool)

(assert (=> b!4195331 (=> (not res!1722218) (not e!2604211))))

(assert (=> b!4195331 (= res!1722218 (= (head!8902 p!2959) (head!8902 input!3342)))))

(declare-fun d!1237409 () Bool)

(declare-fun e!2604210 () Bool)

(assert (=> d!1237409 e!2604210))

(declare-fun res!1722216 () Bool)

(assert (=> d!1237409 (=> res!1722216 e!2604210)))

(declare-fun lt!1494434 () Bool)

(assert (=> d!1237409 (= res!1722216 (not lt!1494434))))

(declare-fun e!2604212 () Bool)

(assert (=> d!1237409 (= lt!1494434 e!2604212)))

(declare-fun res!1722219 () Bool)

(assert (=> d!1237409 (=> res!1722219 e!2604212)))

(assert (=> d!1237409 (= res!1722219 ((_ is Nil!46070) p!2959))))

(assert (=> d!1237409 (= (isPrefix!4541 p!2959 input!3342) lt!1494434)))

(declare-fun b!4195330 () Bool)

(assert (=> b!4195330 (= e!2604212 e!2604211)))

(declare-fun res!1722217 () Bool)

(assert (=> b!4195330 (=> (not res!1722217) (not e!2604211))))

(assert (=> b!4195330 (= res!1722217 (not ((_ is Nil!46070) input!3342)))))

(declare-fun b!4195333 () Bool)

(assert (=> b!4195333 (= e!2604210 (>= (size!33859 input!3342) (size!33859 p!2959)))))

(assert (= (and d!1237409 (not res!1722219)) b!4195330))

(assert (= (and b!4195330 res!1722217) b!4195331))

(assert (= (and b!4195331 res!1722218) b!4195332))

(assert (= (and d!1237409 (not res!1722216)) b!4195333))

(assert (=> b!4195332 m!4784303))

(assert (=> b!4195332 m!4784081))

(assert (=> b!4195332 m!4784303))

(assert (=> b!4195332 m!4784081))

(declare-fun m!4784313 () Bool)

(assert (=> b!4195332 m!4784313))

(assert (=> b!4195331 m!4784299))

(assert (=> b!4195331 m!4784087))

(assert (=> b!4195333 m!4783767))

(assert (=> b!4195333 m!4783745))

(assert (=> b!4194834 d!1237409))

(declare-fun d!1237411 () Bool)

(declare-fun res!1722220 () Bool)

(declare-fun e!2604213 () Bool)

(assert (=> d!1237411 (=> (not res!1722220) (not e!2604213))))

(assert (=> d!1237411 (= res!1722220 (validRegex!5706 (regex!7684 rBis!167)))))

(assert (=> d!1237411 (= (ruleValid!3402 thiss!25986 rBis!167) e!2604213)))

(declare-fun b!4195334 () Bool)

(declare-fun res!1722221 () Bool)

(assert (=> b!4195334 (=> (not res!1722221) (not e!2604213))))

(assert (=> b!4195334 (= res!1722221 (not (nullable!4425 (regex!7684 rBis!167))))))

(declare-fun b!4195335 () Bool)

(assert (=> b!4195335 (= e!2604213 (not (= (tag!8548 rBis!167) (String!53437 ""))))))

(assert (= (and d!1237411 res!1722220) b!4195334))

(assert (= (and b!4195334 res!1722221) b!4195335))

(declare-fun m!4784315 () Bool)

(assert (=> d!1237411 m!4784315))

(declare-fun m!4784317 () Bool)

(assert (=> b!4195334 m!4784317))

(assert (=> b!4194823 d!1237411))

(declare-fun d!1237413 () Bool)

(assert (=> d!1237413 (= (inv!60626 (tag!8548 r!4142)) (= (mod (str.len (value!239525 (tag!8548 r!4142))) 2) 0))))

(assert (=> b!4194814 d!1237413))

(declare-fun d!1237415 () Bool)

(declare-fun res!1722222 () Bool)

(declare-fun e!2604214 () Bool)

(assert (=> d!1237415 (=> (not res!1722222) (not e!2604214))))

(assert (=> d!1237415 (= res!1722222 (semiInverseModEq!3334 (toChars!10243 (transformation!7684 r!4142)) (toValue!10384 (transformation!7684 r!4142))))))

(assert (=> d!1237415 (= (inv!60628 (transformation!7684 r!4142)) e!2604214)))

(declare-fun b!4195336 () Bool)

(assert (=> b!4195336 (= e!2604214 (equivClasses!3233 (toChars!10243 (transformation!7684 r!4142)) (toValue!10384 (transformation!7684 r!4142))))))

(assert (= (and d!1237415 res!1722222) b!4195336))

(declare-fun m!4784319 () Bool)

(assert (=> d!1237415 m!4784319))

(declare-fun m!4784321 () Bool)

(assert (=> b!4195336 m!4784321))

(assert (=> b!4194814 d!1237415))

(declare-fun b!4195341 () Bool)

(declare-fun e!2604217 () Bool)

(declare-fun tp!1281641 () Bool)

(assert (=> b!4195341 (= e!2604217 (and tp_is_empty!22141 tp!1281641))))

(assert (=> b!4194826 (= tp!1281584 e!2604217)))

(assert (= (and b!4194826 ((_ is Cons!46070) (t!346409 p!2959))) b!4195341))

(declare-fun b!4195342 () Bool)

(declare-fun e!2604218 () Bool)

(declare-fun tp!1281642 () Bool)

(assert (=> b!4195342 (= e!2604218 (and tp_is_empty!22141 tp!1281642))))

(assert (=> b!4194837 (= tp!1281580 e!2604218)))

(assert (= (and b!4194837 ((_ is Cons!46070) (t!346409 pBis!107))) b!4195342))

(declare-fun e!2604221 () Bool)

(assert (=> b!4194818 (= tp!1281583 e!2604221)))

(declare-fun b!4195355 () Bool)

(declare-fun tp!1281656 () Bool)

(assert (=> b!4195355 (= e!2604221 tp!1281656)))

(declare-fun b!4195353 () Bool)

(assert (=> b!4195353 (= e!2604221 tp_is_empty!22141)))

(declare-fun b!4195354 () Bool)

(declare-fun tp!1281654 () Bool)

(declare-fun tp!1281657 () Bool)

(assert (=> b!4195354 (= e!2604221 (and tp!1281654 tp!1281657))))

(declare-fun b!4195356 () Bool)

(declare-fun tp!1281655 () Bool)

(declare-fun tp!1281653 () Bool)

(assert (=> b!4195356 (= e!2604221 (and tp!1281655 tp!1281653))))

(assert (= (and b!4194818 ((_ is ElementMatch!12589) (regex!7684 (h!51491 rules!3843)))) b!4195353))

(assert (= (and b!4194818 ((_ is Concat!20504) (regex!7684 (h!51491 rules!3843)))) b!4195354))

(assert (= (and b!4194818 ((_ is Star!12589) (regex!7684 (h!51491 rules!3843)))) b!4195355))

(assert (= (and b!4194818 ((_ is Union!12589) (regex!7684 (h!51491 rules!3843)))) b!4195356))

(declare-fun e!2604222 () Bool)

(assert (=> b!4194814 (= tp!1281585 e!2604222)))

(declare-fun b!4195359 () Bool)

(declare-fun tp!1281661 () Bool)

(assert (=> b!4195359 (= e!2604222 tp!1281661)))

(declare-fun b!4195357 () Bool)

(assert (=> b!4195357 (= e!2604222 tp_is_empty!22141)))

(declare-fun b!4195358 () Bool)

(declare-fun tp!1281659 () Bool)

(declare-fun tp!1281662 () Bool)

(assert (=> b!4195358 (= e!2604222 (and tp!1281659 tp!1281662))))

(declare-fun b!4195360 () Bool)

(declare-fun tp!1281660 () Bool)

(declare-fun tp!1281658 () Bool)

(assert (=> b!4195360 (= e!2604222 (and tp!1281660 tp!1281658))))

(assert (= (and b!4194814 ((_ is ElementMatch!12589) (regex!7684 r!4142))) b!4195357))

(assert (= (and b!4194814 ((_ is Concat!20504) (regex!7684 r!4142))) b!4195358))

(assert (= (and b!4194814 ((_ is Star!12589) (regex!7684 r!4142))) b!4195359))

(assert (= (and b!4194814 ((_ is Union!12589) (regex!7684 r!4142))) b!4195360))

(declare-fun e!2604223 () Bool)

(assert (=> b!4194841 (= tp!1281579 e!2604223)))

(declare-fun b!4195363 () Bool)

(declare-fun tp!1281666 () Bool)

(assert (=> b!4195363 (= e!2604223 tp!1281666)))

(declare-fun b!4195361 () Bool)

(assert (=> b!4195361 (= e!2604223 tp_is_empty!22141)))

(declare-fun b!4195362 () Bool)

(declare-fun tp!1281664 () Bool)

(declare-fun tp!1281667 () Bool)

(assert (=> b!4195362 (= e!2604223 (and tp!1281664 tp!1281667))))

(declare-fun b!4195364 () Bool)

(declare-fun tp!1281665 () Bool)

(declare-fun tp!1281663 () Bool)

(assert (=> b!4195364 (= e!2604223 (and tp!1281665 tp!1281663))))

(assert (= (and b!4194841 ((_ is ElementMatch!12589) (regex!7684 rBis!167))) b!4195361))

(assert (= (and b!4194841 ((_ is Concat!20504) (regex!7684 rBis!167))) b!4195362))

(assert (= (and b!4194841 ((_ is Star!12589) (regex!7684 rBis!167))) b!4195363))

(assert (= (and b!4194841 ((_ is Union!12589) (regex!7684 rBis!167))) b!4195364))

(declare-fun b!4195365 () Bool)

(declare-fun e!2604224 () Bool)

(declare-fun tp!1281668 () Bool)

(assert (=> b!4195365 (= e!2604224 (and tp_is_empty!22141 tp!1281668))))

(assert (=> b!4194824 (= tp!1281588 e!2604224)))

(assert (= (and b!4194824 ((_ is Cons!46070) (t!346409 input!3342))) b!4195365))

(declare-fun b!4195376 () Bool)

(declare-fun b_free!122215 () Bool)

(declare-fun b_next!122919 () Bool)

(assert (=> b!4195376 (= b_free!122215 (not b_next!122919))))

(declare-fun t!346454 () Bool)

(declare-fun tb!251469 () Bool)

(assert (=> (and b!4195376 (= (toValue!10384 (transformation!7684 (h!51491 (t!346410 rules!3843)))) (toValue!10384 (transformation!7684 r!4142))) t!346454) tb!251469))

(declare-fun result!306478 () Bool)

(assert (= result!306478 result!306440))

(assert (=> d!1237363 t!346454))

(assert (=> d!1237369 t!346454))

(declare-fun b_and!329029 () Bool)

(declare-fun tp!1281680 () Bool)

(assert (=> b!4195376 (= tp!1281680 (and (=> t!346454 result!306478) b_and!329029))))

(declare-fun b_free!122217 () Bool)

(declare-fun b_next!122921 () Bool)

(assert (=> b!4195376 (= b_free!122217 (not b_next!122921))))

(declare-fun t!346456 () Bool)

(declare-fun tb!251471 () Bool)

(assert (=> (and b!4195376 (= (toChars!10243 (transformation!7684 (h!51491 (t!346410 rules!3843)))) (toChars!10243 (transformation!7684 (rule!10774 (_1!25065 lt!1494255))))) t!346456) tb!251471))

(declare-fun result!306480 () Bool)

(assert (= result!306480 result!306432))

(assert (=> d!1237335 t!346456))

(declare-fun tb!251473 () Bool)

(declare-fun t!346458 () Bool)

(assert (=> (and b!4195376 (= (toChars!10243 (transformation!7684 (h!51491 (t!346410 rules!3843)))) (toChars!10243 (transformation!7684 r!4142))) t!346458) tb!251473))

(declare-fun result!306482 () Bool)

(assert (= result!306482 result!306466))

(assert (=> d!1237369 t!346458))

(declare-fun b_and!329031 () Bool)

(declare-fun tp!1281678 () Bool)

(assert (=> b!4195376 (= tp!1281678 (and (=> t!346456 result!306480) (=> t!346458 result!306482) b_and!329031))))

(declare-fun e!2604234 () Bool)

(assert (=> b!4195376 (= e!2604234 (and tp!1281680 tp!1281678))))

(declare-fun tp!1281679 () Bool)

(declare-fun b!4195375 () Bool)

(declare-fun e!2604235 () Bool)

(assert (=> b!4195375 (= e!2604235 (and tp!1281679 (inv!60626 (tag!8548 (h!51491 (t!346410 rules!3843)))) (inv!60628 (transformation!7684 (h!51491 (t!346410 rules!3843)))) e!2604234))))

(declare-fun b!4195374 () Bool)

(declare-fun e!2604233 () Bool)

(declare-fun tp!1281677 () Bool)

(assert (=> b!4195374 (= e!2604233 (and e!2604235 tp!1281677))))

(assert (=> b!4194835 (= tp!1281577 e!2604233)))

(assert (= b!4195375 b!4195376))

(assert (= b!4195374 b!4195375))

(assert (= (and b!4194835 ((_ is Cons!46071) (t!346410 rules!3843))) b!4195374))

(declare-fun m!4784323 () Bool)

(assert (=> b!4195375 m!4784323))

(declare-fun m!4784325 () Bool)

(assert (=> b!4195375 m!4784325))

(declare-fun b_lambda!123473 () Bool)

(assert (= b_lambda!123469 (or (and b!4194813 b_free!122201) (and b!4194825 b_free!122205 (= (toChars!10243 (transformation!7684 (h!51491 rules!3843))) (toChars!10243 (transformation!7684 r!4142)))) (and b!4194836 b_free!122209 (= (toChars!10243 (transformation!7684 rBis!167)) (toChars!10243 (transformation!7684 r!4142)))) (and b!4195376 b_free!122217 (= (toChars!10243 (transformation!7684 (h!51491 (t!346410 rules!3843)))) (toChars!10243 (transformation!7684 r!4142)))) b_lambda!123473)))

(declare-fun b_lambda!123475 () Bool)

(assert (= b_lambda!123457 (or (and b!4194813 b_free!122199) (and b!4194825 b_free!122203 (= (toValue!10384 (transformation!7684 (h!51491 rules!3843))) (toValue!10384 (transformation!7684 r!4142)))) (and b!4194836 b_free!122207 (= (toValue!10384 (transformation!7684 rBis!167)) (toValue!10384 (transformation!7684 r!4142)))) (and b!4195376 b_free!122215 (= (toValue!10384 (transformation!7684 (h!51491 (t!346410 rules!3843)))) (toValue!10384 (transformation!7684 r!4142)))) b_lambda!123475)))

(declare-fun b_lambda!123477 () Bool)

(assert (= b_lambda!123471 (or (and b!4194813 b_free!122199) (and b!4194825 b_free!122203 (= (toValue!10384 (transformation!7684 (h!51491 rules!3843))) (toValue!10384 (transformation!7684 r!4142)))) (and b!4194836 b_free!122207 (= (toValue!10384 (transformation!7684 rBis!167)) (toValue!10384 (transformation!7684 r!4142)))) (and b!4195376 b_free!122215 (= (toValue!10384 (transformation!7684 (h!51491 (t!346410 rules!3843)))) (toValue!10384 (transformation!7684 r!4142)))) b_lambda!123477)))

(check-sat (not b!4195086) (not bm!292413) (not b!4195141) (not b!4195355) (not d!1237411) (not b!4195365) (not b!4195129) (not b!4195116) (not b!4195341) (not d!1237393) (not b!4195025) tp_is_empty!22141 (not tb!251439) (not d!1237405) (not b!4195133) (not b!4195139) (not b!4195317) (not b!4195287) (not b!4195135) (not d!1237261) (not b!4194851) (not b!4195084) (not b!4195358) (not b_lambda!123475) (not d!1237269) (not b!4195136) (not b!4195342) (not b!4195274) (not b!4195125) (not b!4195036) (not b!4195016) (not b!4195333) (not d!1237369) (not d!1237401) (not d!1237333) (not b!4195128) (not b!4195079) b_and!329025 (not b!4195375) (not b!4195085) (not d!1237415) (not d!1237325) (not b!4195327) b_and!329029 (not b_next!122911) b_and!329019 (not b_lambda!123477) (not b_next!122907) (not b!4195035) (not b!4195056) (not d!1237321) (not b!4195019) (not d!1237343) (not b!4195137) (not b!4195143) b_and!329021 (not b!4195140) (not d!1237331) (not b!4195354) (not tb!251463) (not b!4195054) (not d!1237397) (not b!4195014) (not bm!292398) (not b!4195336) (not b!4195331) (not b!4195130) (not bm!292396) (not b_lambda!123455) (not b!4195138) (not b!4195015) (not b!4195013) (not b!4195374) (not b!4195018) b_and!329031 (not b!4195326) (not d!1237265) b_and!329023 (not b!4195356) (not d!1237407) (not b!4195285) (not b!4195319) (not b!4195017) (not b!4195059) (not b!4195047) (not b!4195091) b_and!329027 (not d!1237361) (not b_next!122919) (not b!4195048) (not d!1237335) (not b!4195286) (not b!4195081) (not d!1237337) (not d!1237359) (not b!4195281) (not d!1237345) (not tb!251445) (not b!4195082) (not d!1237341) (not b!4195323) (not b!4195037) (not b!4195011) (not b!4195322) (not b_lambda!123473) (not b!4195362) (not b!4195332) (not b!4195277) (not b!4195083) (not b!4195078) (not b_next!122909) (not b!4195120) (not b!4195334) (not d!1237353) (not b!4195364) (not d!1237365) (not b!4195363) (not b!4195272) b_and!329017 (not b!4195282) (not b!4195360) (not b!4195359) (not b_next!122913) (not b_next!122905) (not b_next!122903) (not b!4195279) (not bm!292389) (not b_next!122921) (not d!1237355))
(check-sat b_and!329025 (not b_next!122907) b_and!329021 b_and!329031 b_and!329023 b_and!329027 (not b_next!122919) (not b_next!122909) b_and!329029 (not b_next!122911) b_and!329019 b_and!329017 (not b_next!122913) (not b_next!122905) (not b_next!122903) (not b_next!122921))

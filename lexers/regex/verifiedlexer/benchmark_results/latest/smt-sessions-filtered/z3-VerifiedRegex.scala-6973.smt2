; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369788 () Bool)

(assert start!369788)

(declare-fun b!3939052 () Bool)

(declare-fun b_free!107645 () Bool)

(declare-fun b_next!108349 () Bool)

(assert (=> b!3939052 (= b_free!107645 (not b_next!108349))))

(declare-fun tp!1198551 () Bool)

(declare-fun b_and!300863 () Bool)

(assert (=> b!3939052 (= tp!1198551 b_and!300863)))

(declare-fun b_free!107647 () Bool)

(declare-fun b_next!108351 () Bool)

(assert (=> b!3939052 (= b_free!107647 (not b_next!108351))))

(declare-fun tp!1198556 () Bool)

(declare-fun b_and!300865 () Bool)

(assert (=> b!3939052 (= tp!1198556 b_and!300865)))

(declare-fun b!3939056 () Bool)

(declare-fun b_free!107649 () Bool)

(declare-fun b_next!108353 () Bool)

(assert (=> b!3939056 (= b_free!107649 (not b_next!108353))))

(declare-fun tp!1198559 () Bool)

(declare-fun b_and!300867 () Bool)

(assert (=> b!3939056 (= tp!1198559 b_and!300867)))

(declare-fun b_free!107651 () Bool)

(declare-fun b_next!108355 () Bool)

(assert (=> b!3939056 (= b_free!107651 (not b_next!108355))))

(declare-fun tp!1198555 () Bool)

(declare-fun b_and!300869 () Bool)

(assert (=> b!3939056 (= tp!1198555 b_and!300869)))

(declare-fun b!3939084 () Bool)

(declare-fun b_free!107653 () Bool)

(declare-fun b_next!108357 () Bool)

(assert (=> b!3939084 (= b_free!107653 (not b_next!108357))))

(declare-fun tp!1198558 () Bool)

(declare-fun b_and!300871 () Bool)

(assert (=> b!3939084 (= tp!1198558 b_and!300871)))

(declare-fun b_free!107655 () Bool)

(declare-fun b_next!108359 () Bool)

(assert (=> b!3939084 (= b_free!107655 (not b_next!108359))))

(declare-fun tp!1198557 () Bool)

(declare-fun b_and!300873 () Bool)

(assert (=> b!3939084 (= tp!1198557 b_and!300873)))

(declare-fun b!3939031 () Bool)

(declare-fun res!1594157 () Bool)

(declare-fun e!2437136 () Bool)

(assert (=> b!3939031 (=> res!1594157 e!2437136)))

(declare-datatypes ((List!41943 0))(
  ( (Nil!41819) (Cons!41819 (h!47239 (_ BitVec 16)) (t!326618 List!41943)) )
))
(declare-datatypes ((TokenValue!6764 0))(
  ( (FloatLiteralValue!13528 (text!47793 List!41943)) (TokenValueExt!6763 (__x!25745 Int)) (Broken!33820 (value!206827 List!41943)) (Object!6887) (End!6764) (Def!6764) (Underscore!6764) (Match!6764) (Else!6764) (Error!6764) (Case!6764) (If!6764) (Extends!6764) (Abstract!6764) (Class!6764) (Val!6764) (DelimiterValue!13528 (del!6824 List!41943)) (KeywordValue!6770 (value!206828 List!41943)) (CommentValue!13528 (value!206829 List!41943)) (WhitespaceValue!13528 (value!206830 List!41943)) (IndentationValue!6764 (value!206831 List!41943)) (String!47537) (Int32!6764) (Broken!33821 (value!206832 List!41943)) (Boolean!6765) (Unit!60376) (OperatorValue!6767 (op!6824 List!41943)) (IdentifierValue!13528 (value!206833 List!41943)) (IdentifierValue!13529 (value!206834 List!41943)) (WhitespaceValue!13529 (value!206835 List!41943)) (True!13528) (False!13528) (Broken!33822 (value!206836 List!41943)) (Broken!33823 (value!206837 List!41943)) (True!13529) (RightBrace!6764) (RightBracket!6764) (Colon!6764) (Null!6764) (Comma!6764) (LeftBracket!6764) (False!13529) (LeftBrace!6764) (ImaginaryLiteralValue!6764 (text!47794 List!41943)) (StringLiteralValue!20292 (value!206838 List!41943)) (EOFValue!6764 (value!206839 List!41943)) (IdentValue!6764 (value!206840 List!41943)) (DelimiterValue!13529 (value!206841 List!41943)) (DedentValue!6764 (value!206842 List!41943)) (NewLineValue!6764 (value!206843 List!41943)) (IntegerValue!20292 (value!206844 (_ BitVec 32)) (text!47795 List!41943)) (IntegerValue!20293 (value!206845 Int) (text!47796 List!41943)) (Times!6764) (Or!6764) (Equal!6764) (Minus!6764) (Broken!33824 (value!206846 List!41943)) (And!6764) (Div!6764) (LessEqual!6764) (Mod!6764) (Concat!18203) (Not!6764) (Plus!6764) (SpaceValue!6764 (value!206847 List!41943)) (IntegerValue!20294 (value!206848 Int) (text!47797 List!41943)) (StringLiteralValue!20293 (text!47798 List!41943)) (FloatLiteralValue!13529 (text!47799 List!41943)) (BytesLiteralValue!6764 (value!206849 List!41943)) (CommentValue!13529 (value!206850 List!41943)) (StringLiteralValue!20294 (value!206851 List!41943)) (ErrorTokenValue!6764 (msg!6825 List!41943)) )
))
(declare-datatypes ((C!23064 0))(
  ( (C!23065 (val!13626 Int)) )
))
(declare-datatypes ((Regex!11439 0))(
  ( (ElementMatch!11439 (c!684402 C!23064)) (Concat!18204 (regOne!23390 Regex!11439) (regTwo!23390 Regex!11439)) (EmptyExpr!11439) (Star!11439 (reg!11768 Regex!11439)) (EmptyLang!11439) (Union!11439 (regOne!23391 Regex!11439) (regTwo!23391 Regex!11439)) )
))
(declare-datatypes ((String!47538 0))(
  ( (String!47539 (value!206852 String)) )
))
(declare-datatypes ((List!41944 0))(
  ( (Nil!41820) (Cons!41820 (h!47240 C!23064) (t!326619 List!41944)) )
))
(declare-datatypes ((IArray!25495 0))(
  ( (IArray!25496 (innerList!12805 List!41944)) )
))
(declare-datatypes ((Conc!12745 0))(
  ( (Node!12745 (left!31870 Conc!12745) (right!32200 Conc!12745) (csize!25720 Int) (cheight!12956 Int)) (Leaf!19719 (xs!16051 IArray!25495) (csize!25721 Int)) (Empty!12745) )
))
(declare-datatypes ((BalanceConc!25084 0))(
  ( (BalanceConc!25085 (c!684403 Conc!12745)) )
))
(declare-datatypes ((TokenValueInjection!12956 0))(
  ( (TokenValueInjection!12957 (toValue!8994 Int) (toChars!8853 Int)) )
))
(declare-datatypes ((Rule!12868 0))(
  ( (Rule!12869 (regex!6534 Regex!11439) (tag!7394 String!47538) (isSeparator!6534 Bool) (transformation!6534 TokenValueInjection!12956)) )
))
(declare-datatypes ((Token!12206 0))(
  ( (Token!12207 (value!206853 TokenValue!6764) (rule!9490 Rule!12868) (size!31372 Int) (originalCharacters!7134 List!41944)) )
))
(declare-datatypes ((List!41945 0))(
  ( (Nil!41821) (Cons!41821 (h!47241 Token!12206) (t!326620 List!41945)) )
))
(declare-datatypes ((tuple2!41106 0))(
  ( (tuple2!41107 (_1!23687 List!41945) (_2!23687 List!41944)) )
))
(declare-fun lt!1377927 () tuple2!41106)

(declare-datatypes ((tuple2!41108 0))(
  ( (tuple2!41109 (_1!23688 Token!12206) (_2!23688 List!41944)) )
))
(declare-datatypes ((Option!8954 0))(
  ( (None!8953) (Some!8953 (v!39283 tuple2!41108)) )
))
(declare-fun lt!1377909 () Option!8954)

(declare-fun suffix!1176 () List!41944)

(assert (=> b!3939031 (= res!1594157 (or (not (= lt!1377927 (tuple2!41107 (_1!23687 lt!1377927) (_2!23687 lt!1377927)))) (= (_2!23688 (v!39283 lt!1377909)) suffix!1176)))))

(declare-fun b!3939032 () Bool)

(declare-fun e!2437174 () Bool)

(declare-fun e!2437159 () Bool)

(assert (=> b!3939032 (= e!2437174 e!2437159)))

(declare-fun res!1594158 () Bool)

(assert (=> b!3939032 (=> res!1594158 e!2437159)))

(declare-fun lt!1377911 () List!41944)

(declare-fun lt!1377919 () List!41944)

(assert (=> b!3939032 (= res!1594158 (not (= lt!1377911 lt!1377919)))))

(declare-fun prefix!426 () List!41944)

(declare-fun ++!10825 (List!41944 List!41944) List!41944)

(assert (=> b!3939032 (= lt!1377919 (++!10825 prefix!426 Nil!41820))))

(declare-fun b!3939033 () Bool)

(declare-fun res!1594142 () Bool)

(declare-fun e!2437173 () Bool)

(assert (=> b!3939033 (=> res!1594142 e!2437173)))

(declare-fun prefixTokens!80 () List!41945)

(declare-fun head!8371 (List!41945) Token!12206)

(assert (=> b!3939033 (= res!1594142 (not (= (head!8371 prefixTokens!80) (_1!23688 (v!39283 lt!1377909)))))))

(declare-fun b!3939034 () Bool)

(declare-fun res!1594162 () Bool)

(declare-fun e!2437146 () Bool)

(assert (=> b!3939034 (=> (not res!1594162) (not e!2437146))))

(declare-datatypes ((LexerInterface!6123 0))(
  ( (LexerInterfaceExt!6120 (__x!25746 Int)) (Lexer!6121) )
))
(declare-fun thiss!20629 () LexerInterface!6123)

(declare-datatypes ((List!41946 0))(
  ( (Nil!41822) (Cons!41822 (h!47242 Rule!12868) (t!326621 List!41946)) )
))
(declare-fun rules!2768 () List!41946)

(declare-fun rulesInvariant!5466 (LexerInterface!6123 List!41946) Bool)

(assert (=> b!3939034 (= res!1594162 (rulesInvariant!5466 thiss!20629 rules!2768))))

(declare-fun b!3939035 () Bool)

(declare-fun res!1594147 () Bool)

(declare-fun e!2437147 () Bool)

(assert (=> b!3939035 (=> res!1594147 e!2437147)))

(declare-fun lt!1377942 () Int)

(declare-fun size!31373 (List!41944) Int)

(assert (=> b!3939035 (= res!1594147 (<= lt!1377942 (size!31373 Nil!41820)))))

(declare-fun tp!1198561 () Bool)

(declare-fun e!2437169 () Bool)

(declare-fun b!3939036 () Bool)

(declare-fun e!2437141 () Bool)

(declare-fun inv!56021 (Token!12206) Bool)

(assert (=> b!3939036 (= e!2437169 (and (inv!56021 (h!47241 prefixTokens!80)) e!2437141 tp!1198561))))

(declare-fun b!3939037 () Bool)

(declare-datatypes ((Unit!60377 0))(
  ( (Unit!60378) )
))
(declare-fun e!2437170 () Unit!60377)

(declare-fun Unit!60379 () Unit!60377)

(assert (=> b!3939037 (= e!2437170 Unit!60379)))

(declare-fun b!3939038 () Bool)

(declare-fun e!2437172 () Bool)

(assert (=> b!3939038 (= e!2437172 false)))

(declare-fun b!3939039 () Bool)

(declare-fun res!1594159 () Bool)

(assert (=> b!3939039 (=> (not res!1594159) (not e!2437146))))

(declare-fun isEmpty!24944 (List!41944) Bool)

(assert (=> b!3939039 (= res!1594159 (not (isEmpty!24944 prefix!426)))))

(declare-fun b!3939040 () Bool)

(declare-fun e!2437152 () Unit!60377)

(declare-fun Unit!60380 () Unit!60377)

(assert (=> b!3939040 (= e!2437152 Unit!60380)))

(declare-fun lt!1377923 () Int)

(declare-fun lt!1377932 () List!41944)

(assert (=> b!3939040 (= lt!1377923 (size!31373 lt!1377932))))

(declare-fun lt!1377938 () List!41944)

(declare-fun lt!1377910 () Unit!60377)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1365 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41944 Rule!12868) Unit!60377)

(assert (=> b!3939040 (= lt!1377910 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1365 thiss!20629 rules!2768 lt!1377938 lt!1377932 (_2!23688 (v!39283 lt!1377909)) (rule!9490 (_1!23688 (v!39283 lt!1377909)))))))

(declare-fun lt!1377928 () Int)

(declare-fun lt!1377957 () TokenValue!6764)

(declare-fun maxPrefixOneRule!2497 (LexerInterface!6123 Rule!12868 List!41944) Option!8954)

(assert (=> b!3939040 (= (maxPrefixOneRule!2497 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))) lt!1377932) (Some!8953 (tuple2!41109 (Token!12207 lt!1377957 (rule!9490 (_1!23688 (v!39283 lt!1377909))) lt!1377928 lt!1377938) (_2!23688 (v!39283 lt!1377909)))))))

(declare-fun lt!1377947 () tuple2!41108)

(declare-fun get!13821 (Option!8954) tuple2!41108)

(assert (=> b!3939040 (= lt!1377947 (get!13821 lt!1377909))))

(declare-fun c!684401 () Bool)

(assert (=> b!3939040 (= c!684401 (< (size!31373 (_2!23688 lt!1377947)) lt!1377942))))

(declare-fun lt!1377960 () Unit!60377)

(assert (=> b!3939040 (= lt!1377960 e!2437170)))

(assert (=> b!3939040 false))

(declare-fun b!3939041 () Bool)

(declare-fun res!1594163 () Bool)

(declare-fun e!2437145 () Bool)

(assert (=> b!3939041 (=> res!1594163 e!2437145)))

(declare-fun lt!1377961 () tuple2!41106)

(declare-fun lt!1377954 () List!41944)

(declare-fun lexList!1891 (LexerInterface!6123 List!41946 List!41944) tuple2!41106)

(assert (=> b!3939041 (= res!1594163 (not (= (lexList!1891 thiss!20629 rules!2768 lt!1377954) lt!1377961)))))

(declare-fun b!3939042 () Bool)

(declare-fun e!2437149 () Unit!60377)

(declare-fun Unit!60381 () Unit!60377)

(assert (=> b!3939042 (= e!2437149 Unit!60381)))

(declare-fun lt!1377925 () Unit!60377)

(declare-fun suffixTokens!72 () List!41945)

(declare-fun suffixResult!91 () List!41944)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!134 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41945 List!41944) Unit!60377)

(assert (=> b!3939042 (= lt!1377925 (lemmaLexWithSmallerInputCannotProduceSameResults!134 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1377909)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3939042 false))

(declare-fun b!3939043 () Bool)

(declare-fun res!1594143 () Bool)

(assert (=> b!3939043 (=> (not res!1594143) (not e!2437146))))

(declare-fun isEmpty!24945 (List!41946) Bool)

(assert (=> b!3939043 (= res!1594143 (not (isEmpty!24945 rules!2768)))))

(declare-fun b!3939044 () Bool)

(declare-fun res!1594155 () Bool)

(assert (=> b!3939044 (=> res!1594155 e!2437174)))

(declare-fun lt!1377926 () Int)

(assert (=> b!3939044 (= res!1594155 (<= lt!1377926 lt!1377928))))

(declare-fun e!2437156 () Bool)

(declare-fun b!3939045 () Bool)

(declare-fun e!2437164 () Bool)

(declare-fun tp!1198552 () Bool)

(declare-fun inv!21 (TokenValue!6764) Bool)

(assert (=> b!3939045 (= e!2437164 (and (inv!21 (value!206853 (h!47241 suffixTokens!72))) e!2437156 tp!1198552))))

(declare-fun b!3939046 () Bool)

(declare-fun e!2437143 () Bool)

(declare-fun e!2437154 () Bool)

(assert (=> b!3939046 (= e!2437143 e!2437154)))

(declare-fun res!1594151 () Bool)

(assert (=> b!3939046 (=> (not res!1594151) (not e!2437154))))

(get-info :version)

(assert (=> b!3939046 (= res!1594151 ((_ is Some!8953) lt!1377909))))

(declare-fun maxPrefix!3427 (LexerInterface!6123 List!41946 List!41944) Option!8954)

(assert (=> b!3939046 (= lt!1377909 (maxPrefix!3427 thiss!20629 rules!2768 lt!1377932))))

(declare-fun b!3939047 () Bool)

(declare-fun e!2437137 () Bool)

(declare-fun tp_is_empty!19849 () Bool)

(declare-fun tp!1198546 () Bool)

(assert (=> b!3939047 (= e!2437137 (and tp_is_empty!19849 tp!1198546))))

(declare-fun b!3939048 () Bool)

(declare-fun e!2437166 () Unit!60377)

(declare-fun Unit!60382 () Unit!60377)

(assert (=> b!3939048 (= e!2437166 Unit!60382)))

(declare-fun b!3939049 () Bool)

(declare-fun e!2437153 () Unit!60377)

(declare-fun Unit!60383 () Unit!60377)

(assert (=> b!3939049 (= e!2437153 Unit!60383)))

(declare-fun lt!1377939 () Unit!60377)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!582 (List!41944 List!41944 List!41944 List!41944) Unit!60377)

(assert (=> b!3939049 (= lt!1377939 (lemmaConcatSameAndSameSizesThenSameLists!582 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 (_2!23688 lt!1377947)))))

(assert (=> b!3939049 (= (_2!23688 (v!39283 lt!1377909)) (_2!23688 lt!1377947))))

(declare-fun lt!1377952 () Unit!60377)

(assert (=> b!3939049 (= lt!1377952 (lemmaLexWithSmallerInputCannotProduceSameResults!134 thiss!20629 rules!2768 suffix!1176 (_2!23688 lt!1377947) suffixTokens!72 suffixResult!91))))

(declare-fun res!1594169 () Bool)

(declare-fun call!285036 () tuple2!41106)

(declare-fun lt!1377946 () tuple2!41106)

(assert (=> b!3939049 (= res!1594169 (not (= call!285036 lt!1377946)))))

(declare-fun e!2437176 () Bool)

(assert (=> b!3939049 (=> (not res!1594169) (not e!2437176))))

(assert (=> b!3939049 e!2437176))

(declare-fun bm!285031 () Bool)

(assert (=> bm!285031 (= call!285036 (lexList!1891 thiss!20629 rules!2768 (_2!23688 lt!1377947)))))

(declare-fun e!2437150 () Bool)

(declare-fun b!3939050 () Bool)

(declare-fun tp!1198554 () Bool)

(assert (=> b!3939050 (= e!2437150 (and (inv!56021 (h!47241 suffixTokens!72)) e!2437164 tp!1198554))))

(declare-fun b!3939051 () Bool)

(declare-fun e!2437163 () Bool)

(assert (=> b!3939051 (= e!2437163 e!2437136)))

(declare-fun res!1594156 () Bool)

(assert (=> b!3939051 (=> res!1594156 e!2437136)))

(declare-fun lt!1377941 () tuple2!41106)

(declare-fun lt!1377924 () List!41945)

(declare-fun ++!10826 (List!41945 List!41945) List!41945)

(assert (=> b!3939051 (= res!1594156 (not (= lt!1377941 (tuple2!41107 (++!10826 lt!1377924 (_1!23687 lt!1377927)) (_2!23687 lt!1377927)))))))

(assert (=> b!3939051 (= lt!1377924 (Cons!41821 (_1!23688 (v!39283 lt!1377909)) Nil!41821))))

(declare-fun e!2437165 () Bool)

(assert (=> b!3939052 (= e!2437165 (and tp!1198551 tp!1198556))))

(declare-fun b!3939053 () Bool)

(declare-fun tp!1198562 () Bool)

(declare-fun inv!56018 (String!47538) Bool)

(declare-fun inv!56022 (TokenValueInjection!12956) Bool)

(assert (=> b!3939053 (= e!2437156 (and tp!1198562 (inv!56018 (tag!7394 (rule!9490 (h!47241 suffixTokens!72)))) (inv!56022 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) e!2437165))))

(declare-fun b!3939054 () Bool)

(assert (=> b!3939054 (= e!2437176 false)))

(declare-fun b!3939055 () Bool)

(declare-fun Unit!60384 () Unit!60377)

(assert (=> b!3939055 (= e!2437166 Unit!60384)))

(declare-fun lt!1377934 () Unit!60377)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2492 (List!41944 List!41944) Unit!60377)

(assert (=> b!3939055 (= lt!1377934 (lemmaConcatTwoListThenFirstIsPrefix!2492 prefix!426 suffix!1176))))

(declare-fun isPrefix!3629 (List!41944 List!41944) Bool)

(assert (=> b!3939055 (isPrefix!3629 prefix!426 lt!1377932)))

(declare-fun lt!1377936 () Unit!60377)

(declare-fun lemmaIsPrefixSameLengthThenSameList!825 (List!41944 List!41944 List!41944) Unit!60377)

(assert (=> b!3939055 (= lt!1377936 (lemmaIsPrefixSameLengthThenSameList!825 lt!1377938 prefix!426 lt!1377932))))

(assert (=> b!3939055 (= lt!1377938 prefix!426)))

(declare-fun lt!1377933 () Unit!60377)

(declare-fun lemmaSamePrefixThenSameSuffix!1850 (List!41944 List!41944 List!41944 List!41944 List!41944) Unit!60377)

(assert (=> b!3939055 (= lt!1377933 (lemmaSamePrefixThenSameSuffix!1850 lt!1377938 (_2!23688 (v!39283 lt!1377909)) prefix!426 suffix!1176 lt!1377932))))

(assert (=> b!3939055 false))

(declare-fun e!2437144 () Bool)

(assert (=> b!3939056 (= e!2437144 (and tp!1198559 tp!1198555))))

(declare-fun res!1594144 () Bool)

(assert (=> start!369788 (=> (not res!1594144) (not e!2437146))))

(assert (=> start!369788 (= res!1594144 ((_ is Lexer!6121) thiss!20629))))

(assert (=> start!369788 e!2437146))

(assert (=> start!369788 e!2437137))

(assert (=> start!369788 true))

(declare-fun e!2437134 () Bool)

(assert (=> start!369788 e!2437134))

(declare-fun e!2437140 () Bool)

(assert (=> start!369788 e!2437140))

(assert (=> start!369788 e!2437169))

(assert (=> start!369788 e!2437150))

(declare-fun e!2437133 () Bool)

(assert (=> start!369788 e!2437133))

(declare-fun b!3939057 () Bool)

(declare-fun e!2437162 () Bool)

(declare-fun tp!1198548 () Bool)

(assert (=> b!3939057 (= e!2437140 (and e!2437162 tp!1198548))))

(declare-fun b!3939058 () Bool)

(declare-fun Unit!60385 () Unit!60377)

(assert (=> b!3939058 (= e!2437153 Unit!60385)))

(declare-fun lt!1377944 () Unit!60377)

(declare-fun lt!1377953 () List!41945)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!134 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41945 List!41944 List!41945) Unit!60377)

(assert (=> b!3939058 (= lt!1377944 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!134 thiss!20629 rules!2768 suffix!1176 (_2!23688 lt!1377947) suffixTokens!72 suffixResult!91 lt!1377953))))

(declare-fun res!1594138 () Bool)

(assert (=> b!3939058 (= res!1594138 (not (= call!285036 (tuple2!41107 (++!10826 lt!1377953 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3939058 (=> (not res!1594138) (not e!2437172))))

(assert (=> b!3939058 e!2437172))

(declare-fun b!3939059 () Bool)

(assert (=> b!3939059 (= e!2437147 e!2437174)))

(declare-fun res!1594146 () Bool)

(assert (=> b!3939059 (=> res!1594146 e!2437174)))

(assert (=> b!3939059 (= res!1594146 (not (isPrefix!3629 Nil!41820 suffix!1176)))))

(assert (=> b!3939059 (isPrefix!3629 Nil!41820 (++!10825 Nil!41820 suffix!1176))))

(declare-fun lt!1377912 () Unit!60377)

(assert (=> b!3939059 (= lt!1377912 (lemmaConcatTwoListThenFirstIsPrefix!2492 Nil!41820 suffix!1176))))

(declare-fun b!3939060 () Bool)

(declare-fun e!2437175 () Bool)

(assert (=> b!3939060 (= e!2437175 e!2437145)))

(declare-fun res!1594165 () Bool)

(assert (=> b!3939060 (=> res!1594165 e!2437145)))

(declare-fun lt!1377948 () List!41945)

(declare-fun lt!1377951 () List!41945)

(assert (=> b!3939060 (= res!1594165 (not (= lt!1377948 lt!1377951)))))

(declare-fun lt!1377916 () List!41945)

(assert (=> b!3939060 (= lt!1377948 (++!10826 lt!1377924 lt!1377916))))

(declare-fun lt!1377915 () List!41945)

(assert (=> b!3939060 (= lt!1377948 (++!10826 (++!10826 lt!1377924 lt!1377915) suffixTokens!72))))

(declare-fun lt!1377959 () Unit!60377)

(declare-fun lemmaConcatAssociativity!2355 (List!41945 List!41945 List!41945) Unit!60377)

(assert (=> b!3939060 (= lt!1377959 (lemmaConcatAssociativity!2355 lt!1377924 lt!1377915 suffixTokens!72))))

(declare-fun lt!1377943 () Unit!60377)

(assert (=> b!3939060 (= lt!1377943 e!2437149)))

(declare-fun c!684400 () Bool)

(declare-fun isEmpty!24946 (List!41945) Bool)

(assert (=> b!3939060 (= c!684400 (isEmpty!24946 lt!1377915))))

(declare-fun b!3939061 () Bool)

(declare-fun res!1594167 () Bool)

(assert (=> b!3939061 (=> res!1594167 e!2437147)))

(assert (=> b!3939061 (= res!1594167 (isEmpty!24944 suffix!1176))))

(declare-fun b!3939062 () Bool)

(declare-fun res!1594139 () Bool)

(assert (=> b!3939062 (=> res!1594139 e!2437147)))

(declare-fun lt!1377940 () List!41944)

(assert (=> b!3939062 (= res!1594139 (not (isPrefix!3629 lt!1377940 (_2!23688 (v!39283 lt!1377909)))))))

(declare-fun b!3939063 () Bool)

(declare-fun res!1594161 () Bool)

(assert (=> b!3939063 (=> (not res!1594161) (not e!2437146))))

(assert (=> b!3939063 (= res!1594161 (not (isEmpty!24946 prefixTokens!80)))))

(declare-fun b!3939064 () Bool)

(declare-fun e!2437168 () Bool)

(assert (=> b!3939064 (= e!2437168 e!2437175)))

(declare-fun res!1594141 () Bool)

(assert (=> b!3939064 (=> res!1594141 e!2437175)))

(assert (=> b!3939064 (= res!1594141 (not (= lt!1377927 lt!1377961)))))

(assert (=> b!3939064 (= lt!1377961 (tuple2!41107 lt!1377916 suffixResult!91))))

(assert (=> b!3939064 (= lt!1377916 (++!10826 lt!1377915 suffixTokens!72))))

(declare-fun tail!6097 (List!41945) List!41945)

(assert (=> b!3939064 (= lt!1377915 (tail!6097 prefixTokens!80))))

(assert (=> b!3939064 (isPrefix!3629 lt!1377940 lt!1377954)))

(declare-fun lt!1377921 () Unit!60377)

(assert (=> b!3939064 (= lt!1377921 (lemmaConcatTwoListThenFirstIsPrefix!2492 lt!1377940 suffix!1176))))

(declare-fun b!3939065 () Bool)

(assert (=> b!3939065 (= e!2437154 (not e!2437163))))

(declare-fun res!1594160 () Bool)

(assert (=> b!3939065 (=> res!1594160 e!2437163)))

(declare-fun lt!1377963 () List!41944)

(assert (=> b!3939065 (= res!1594160 (not (= lt!1377963 lt!1377932)))))

(assert (=> b!3939065 (= lt!1377927 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1377909))))))

(declare-fun lt!1377930 () List!41944)

(assert (=> b!3939065 (and (= (size!31372 (_1!23688 (v!39283 lt!1377909))) lt!1377928) (= (originalCharacters!7134 (_1!23688 (v!39283 lt!1377909))) lt!1377938) (= (tuple2!41109 (_1!23688 (v!39283 lt!1377909)) (_2!23688 (v!39283 lt!1377909))) (tuple2!41109 (Token!12207 lt!1377957 (rule!9490 (_1!23688 (v!39283 lt!1377909))) lt!1377928 lt!1377938) lt!1377930)))))

(assert (=> b!3939065 (= lt!1377928 (size!31373 lt!1377938))))

(declare-fun e!2437138 () Bool)

(assert (=> b!3939065 e!2437138))

(declare-fun res!1594152 () Bool)

(assert (=> b!3939065 (=> (not res!1594152) (not e!2437138))))

(assert (=> b!3939065 (= res!1594152 (= (value!206853 (_1!23688 (v!39283 lt!1377909))) lt!1377957))))

(declare-fun apply!9773 (TokenValueInjection!12956 BalanceConc!25084) TokenValue!6764)

(declare-fun seqFromList!4801 (List!41944) BalanceConc!25084)

(assert (=> b!3939065 (= lt!1377957 (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (seqFromList!4801 lt!1377938)))))

(assert (=> b!3939065 (= (_2!23688 (v!39283 lt!1377909)) lt!1377930)))

(declare-fun lt!1377918 () Unit!60377)

(assert (=> b!3939065 (= lt!1377918 (lemmaSamePrefixThenSameSuffix!1850 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 lt!1377930 lt!1377932))))

(declare-fun getSuffix!2084 (List!41944 List!41944) List!41944)

(assert (=> b!3939065 (= lt!1377930 (getSuffix!2084 lt!1377932 lt!1377938))))

(assert (=> b!3939065 (isPrefix!3629 lt!1377938 lt!1377963)))

(assert (=> b!3939065 (= lt!1377963 (++!10825 lt!1377938 (_2!23688 (v!39283 lt!1377909))))))

(declare-fun lt!1377962 () Unit!60377)

(assert (=> b!3939065 (= lt!1377962 (lemmaConcatTwoListThenFirstIsPrefix!2492 lt!1377938 (_2!23688 (v!39283 lt!1377909))))))

(declare-fun list!15538 (BalanceConc!25084) List!41944)

(declare-fun charsOf!4358 (Token!12206) BalanceConc!25084)

(assert (=> b!3939065 (= lt!1377938 (list!15538 (charsOf!4358 (_1!23688 (v!39283 lt!1377909)))))))

(declare-fun ruleValid!2482 (LexerInterface!6123 Rule!12868) Bool)

(assert (=> b!3939065 (ruleValid!2482 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))))))

(declare-fun lt!1377955 () Unit!60377)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1562 (LexerInterface!6123 Rule!12868 List!41946) Unit!60377)

(assert (=> b!3939065 (= lt!1377955 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1562 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))) rules!2768))))

(declare-fun lt!1377956 () Unit!60377)

(declare-fun lemmaCharactersSize!1191 (Token!12206) Unit!60377)

(assert (=> b!3939065 (= lt!1377956 (lemmaCharactersSize!1191 (_1!23688 (v!39283 lt!1377909))))))

(declare-fun b!3939066 () Bool)

(declare-fun tp!1198547 () Bool)

(assert (=> b!3939066 (= e!2437133 (and tp_is_empty!19849 tp!1198547))))

(declare-fun e!2437167 () Bool)

(declare-fun b!3939067 () Bool)

(assert (=> b!3939067 (= e!2437167 (= (lexList!1891 thiss!20629 rules!2768 prefix!426) (tuple2!41107 prefixTokens!80 Nil!41820)))))

(declare-fun b!3939068 () Bool)

(declare-fun e!2437155 () Bool)

(declare-fun e!2437139 () Bool)

(assert (=> b!3939068 (= e!2437155 e!2437139)))

(declare-fun res!1594153 () Bool)

(assert (=> b!3939068 (=> res!1594153 e!2437139)))

(assert (=> b!3939068 (= res!1594153 (not (= lt!1377911 prefix!426)))))

(assert (=> b!3939068 (= lt!1377911 (++!10825 lt!1377938 lt!1377940))))

(assert (=> b!3939068 (= lt!1377940 (getSuffix!2084 prefix!426 lt!1377938))))

(declare-fun b!3939069 () Bool)

(assert (=> b!3939069 (= e!2437145 e!2437147)))

(declare-fun res!1594145 () Bool)

(assert (=> b!3939069 (=> res!1594145 e!2437147)))

(assert (=> b!3939069 (= res!1594145 (not (= lt!1377909 (Some!8953 (tuple2!41109 (_1!23688 (v!39283 lt!1377909)) (_2!23688 (v!39283 lt!1377909)))))))))

(assert (=> b!3939069 (= (lexList!1891 thiss!20629 rules!2768 lt!1377940) (tuple2!41107 lt!1377915 Nil!41820))))

(declare-fun lt!1377935 () Unit!60377)

(declare-fun lemmaLexThenLexPrefix!619 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41945 List!41945 List!41944) Unit!60377)

(assert (=> b!3939069 (= lt!1377935 (lemmaLexThenLexPrefix!619 thiss!20629 rules!2768 lt!1377940 suffix!1176 lt!1377915 suffixTokens!72 suffixResult!91))))

(declare-fun b!3939070 () Bool)

(declare-fun tp!1198553 () Bool)

(assert (=> b!3939070 (= e!2437134 (and tp_is_empty!19849 tp!1198553))))

(declare-fun b!3939071 () Bool)

(assert (=> b!3939071 (= e!2437159 e!2437167)))

(declare-fun res!1594164 () Bool)

(assert (=> b!3939071 (=> res!1594164 e!2437167)))

(declare-fun lt!1377929 () Option!8954)

(assert (=> b!3939071 (= res!1594164 (not (= (maxPrefix!3427 thiss!20629 rules!2768 prefix!426) lt!1377929)))))

(assert (=> b!3939071 (= (maxPrefix!3427 thiss!20629 rules!2768 lt!1377919) lt!1377929)))

(assert (=> b!3939071 (= lt!1377929 (Some!8953 (tuple2!41109 (_1!23688 (v!39283 lt!1377909)) lt!1377940)))))

(declare-fun lt!1377945 () Unit!60377)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!46 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41944 Token!12206 List!41944 List!41944) Unit!60377)

(assert (=> b!3939071 (= lt!1377945 (lemmaMaxPrefixThenWithShorterSuffix!46 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41820 (_1!23688 (v!39283 lt!1377909)) (_2!23688 (v!39283 lt!1377909)) lt!1377940))))

(declare-fun b!3939072 () Bool)

(assert (=> b!3939072 (= e!2437136 e!2437173)))

(declare-fun res!1594149 () Bool)

(assert (=> b!3939072 (=> res!1594149 e!2437173)))

(declare-fun lt!1377950 () Int)

(assert (=> b!3939072 (= res!1594149 (<= lt!1377950 lt!1377942))))

(declare-fun lt!1377937 () Unit!60377)

(assert (=> b!3939072 (= lt!1377937 e!2437166)))

(declare-fun c!684398 () Bool)

(assert (=> b!3939072 (= c!684398 (= lt!1377950 lt!1377942))))

(declare-fun lt!1377920 () Unit!60377)

(assert (=> b!3939072 (= lt!1377920 e!2437152)))

(declare-fun c!684397 () Bool)

(assert (=> b!3939072 (= c!684397 (< lt!1377950 lt!1377942))))

(assert (=> b!3939072 (= lt!1377942 (size!31373 suffix!1176))))

(assert (=> b!3939072 (= lt!1377950 (size!31373 (_2!23688 (v!39283 lt!1377909))))))

(declare-fun b!3939073 () Bool)

(declare-fun e!2437151 () Bool)

(assert (=> b!3939073 (= e!2437139 e!2437151)))

(declare-fun res!1594166 () Bool)

(assert (=> b!3939073 (=> res!1594166 e!2437151)))

(declare-fun lt!1377917 () List!41944)

(assert (=> b!3939073 (= res!1594166 (or (not (= lt!1377917 lt!1377932)) (not (= lt!1377917 lt!1377963))))))

(assert (=> b!3939073 (= lt!1377917 (++!10825 lt!1377911 suffix!1176))))

(declare-fun b!3939074 () Bool)

(declare-fun c!684399 () Bool)

(assert (=> b!3939074 (= c!684399 (isEmpty!24946 lt!1377953))))

(assert (=> b!3939074 (= lt!1377953 (tail!6097 prefixTokens!80))))

(assert (=> b!3939074 (= e!2437170 e!2437153)))

(declare-fun b!3939075 () Bool)

(declare-fun Unit!60386 () Unit!60377)

(assert (=> b!3939075 (= e!2437152 Unit!60386)))

(declare-fun tp!1198550 () Bool)

(declare-fun b!3939076 () Bool)

(declare-fun e!2437160 () Bool)

(assert (=> b!3939076 (= e!2437162 (and tp!1198550 (inv!56018 (tag!7394 (h!47242 rules!2768))) (inv!56022 (transformation!6534 (h!47242 rules!2768))) e!2437160))))

(declare-fun b!3939077 () Bool)

(declare-fun Unit!60387 () Unit!60377)

(assert (=> b!3939077 (= e!2437149 Unit!60387)))

(declare-fun b!3939078 () Bool)

(declare-fun tp!1198560 () Bool)

(declare-fun e!2437142 () Bool)

(assert (=> b!3939078 (= e!2437141 (and (inv!21 (value!206853 (h!47241 prefixTokens!80))) e!2437142 tp!1198560))))

(declare-fun b!3939079 () Bool)

(declare-fun e!2437132 () Bool)

(assert (=> b!3939079 (= e!2437151 e!2437132)))

(declare-fun res!1594148 () Bool)

(assert (=> b!3939079 (=> res!1594148 e!2437132)))

(declare-fun lt!1377922 () List!41944)

(assert (=> b!3939079 (= res!1594148 (or (not (= lt!1377932 lt!1377917)) (not (= lt!1377932 lt!1377922)) (not (= lt!1377963 lt!1377922))))))

(assert (=> b!3939079 (= lt!1377917 lt!1377922)))

(assert (=> b!3939079 (= lt!1377922 (++!10825 lt!1377938 lt!1377954))))

(assert (=> b!3939079 (= lt!1377954 (++!10825 lt!1377940 suffix!1176))))

(declare-fun lt!1377914 () Unit!60377)

(declare-fun lemmaConcatAssociativity!2356 (List!41944 List!41944 List!41944) Unit!60377)

(assert (=> b!3939079 (= lt!1377914 (lemmaConcatAssociativity!2356 lt!1377938 lt!1377940 suffix!1176))))

(declare-fun b!3939080 () Bool)

(assert (=> b!3939080 (= e!2437173 e!2437155)))

(declare-fun res!1594140 () Bool)

(assert (=> b!3939080 (=> res!1594140 e!2437155)))

(assert (=> b!3939080 (= res!1594140 (>= lt!1377928 lt!1377926))))

(assert (=> b!3939080 (= lt!1377926 (size!31373 prefix!426))))

(assert (=> b!3939080 (isPrefix!3629 lt!1377938 prefix!426)))

(declare-fun lt!1377958 () Unit!60377)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!307 (List!41944 List!41944 List!41944) Unit!60377)

(assert (=> b!3939080 (= lt!1377958 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!307 prefix!426 lt!1377938 lt!1377932))))

(assert (=> b!3939080 (isPrefix!3629 prefix!426 lt!1377932)))

(declare-fun lt!1377931 () Unit!60377)

(assert (=> b!3939080 (= lt!1377931 (lemmaConcatTwoListThenFirstIsPrefix!2492 prefix!426 suffix!1176))))

(declare-fun b!3939081 () Bool)

(declare-fun e!2437157 () Bool)

(assert (=> b!3939081 (= e!2437146 e!2437157)))

(declare-fun res!1594150 () Bool)

(assert (=> b!3939081 (=> (not res!1594150) (not e!2437157))))

(assert (=> b!3939081 (= res!1594150 (= lt!1377941 (tuple2!41107 lt!1377951 suffixResult!91)))))

(assert (=> b!3939081 (= lt!1377941 (lexList!1891 thiss!20629 rules!2768 lt!1377932))))

(assert (=> b!3939081 (= lt!1377951 (++!10826 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3939081 (= lt!1377932 (++!10825 prefix!426 suffix!1176))))

(declare-fun b!3939082 () Bool)

(declare-fun tp!1198549 () Bool)

(assert (=> b!3939082 (= e!2437142 (and tp!1198549 (inv!56018 (tag!7394 (rule!9490 (h!47241 prefixTokens!80)))) (inv!56022 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) e!2437144))))

(declare-fun b!3939083 () Bool)

(assert (=> b!3939083 (= e!2437138 (= (size!31372 (_1!23688 (v!39283 lt!1377909))) (size!31373 (originalCharacters!7134 (_1!23688 (v!39283 lt!1377909))))))))

(assert (=> b!3939084 (= e!2437160 (and tp!1198558 tp!1198557))))

(declare-fun b!3939085 () Bool)

(assert (=> b!3939085 (= e!2437132 e!2437168)))

(declare-fun res!1594154 () Bool)

(assert (=> b!3939085 (=> res!1594154 e!2437168)))

(assert (=> b!3939085 (= res!1594154 (not (= lt!1377954 (_2!23688 (v!39283 lt!1377909)))))))

(assert (=> b!3939085 (= (_2!23688 (v!39283 lt!1377909)) lt!1377954)))

(declare-fun lt!1377949 () Unit!60377)

(assert (=> b!3939085 (= lt!1377949 (lemmaSamePrefixThenSameSuffix!1850 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 lt!1377954 lt!1377932))))

(assert (=> b!3939085 (isPrefix!3629 lt!1377938 lt!1377922)))

(declare-fun lt!1377913 () Unit!60377)

(assert (=> b!3939085 (= lt!1377913 (lemmaConcatTwoListThenFirstIsPrefix!2492 lt!1377938 lt!1377954))))

(declare-fun b!3939086 () Bool)

(assert (=> b!3939086 (= e!2437157 e!2437143)))

(declare-fun res!1594168 () Bool)

(assert (=> b!3939086 (=> (not res!1594168) (not e!2437143))))

(assert (=> b!3939086 (= res!1594168 (= (lexList!1891 thiss!20629 rules!2768 suffix!1176) lt!1377946))))

(assert (=> b!3939086 (= lt!1377946 (tuple2!41107 suffixTokens!72 suffixResult!91))))

(assert (= (and start!369788 res!1594144) b!3939043))

(assert (= (and b!3939043 res!1594143) b!3939034))

(assert (= (and b!3939034 res!1594162) b!3939063))

(assert (= (and b!3939063 res!1594161) b!3939039))

(assert (= (and b!3939039 res!1594159) b!3939081))

(assert (= (and b!3939081 res!1594150) b!3939086))

(assert (= (and b!3939086 res!1594168) b!3939046))

(assert (= (and b!3939046 res!1594151) b!3939065))

(assert (= (and b!3939065 res!1594152) b!3939083))

(assert (= (and b!3939065 (not res!1594160)) b!3939051))

(assert (= (and b!3939051 (not res!1594156)) b!3939031))

(assert (= (and b!3939031 (not res!1594157)) b!3939072))

(assert (= (and b!3939072 c!684397) b!3939040))

(assert (= (and b!3939072 (not c!684397)) b!3939075))

(assert (= (and b!3939040 c!684401) b!3939074))

(assert (= (and b!3939040 (not c!684401)) b!3939037))

(assert (= (and b!3939074 c!684399) b!3939049))

(assert (= (and b!3939074 (not c!684399)) b!3939058))

(assert (= (and b!3939049 res!1594169) b!3939054))

(assert (= (and b!3939058 res!1594138) b!3939038))

(assert (= (or b!3939049 b!3939058) bm!285031))

(assert (= (and b!3939072 c!684398) b!3939055))

(assert (= (and b!3939072 (not c!684398)) b!3939048))

(assert (= (and b!3939072 (not res!1594149)) b!3939033))

(assert (= (and b!3939033 (not res!1594142)) b!3939080))

(assert (= (and b!3939080 (not res!1594140)) b!3939068))

(assert (= (and b!3939068 (not res!1594153)) b!3939073))

(assert (= (and b!3939073 (not res!1594166)) b!3939079))

(assert (= (and b!3939079 (not res!1594148)) b!3939085))

(assert (= (and b!3939085 (not res!1594154)) b!3939064))

(assert (= (and b!3939064 (not res!1594141)) b!3939060))

(assert (= (and b!3939060 c!684400) b!3939042))

(assert (= (and b!3939060 (not c!684400)) b!3939077))

(assert (= (and b!3939060 (not res!1594165)) b!3939041))

(assert (= (and b!3939041 (not res!1594163)) b!3939069))

(assert (= (and b!3939069 (not res!1594145)) b!3939061))

(assert (= (and b!3939061 (not res!1594167)) b!3939062))

(assert (= (and b!3939062 (not res!1594139)) b!3939035))

(assert (= (and b!3939035 (not res!1594147)) b!3939059))

(assert (= (and b!3939059 (not res!1594146)) b!3939044))

(assert (= (and b!3939044 (not res!1594155)) b!3939032))

(assert (= (and b!3939032 (not res!1594158)) b!3939071))

(assert (= (and b!3939071 (not res!1594164)) b!3939067))

(assert (= (and start!369788 ((_ is Cons!41820) suffixResult!91)) b!3939047))

(assert (= (and start!369788 ((_ is Cons!41820) suffix!1176)) b!3939070))

(assert (= b!3939076 b!3939084))

(assert (= b!3939057 b!3939076))

(assert (= (and start!369788 ((_ is Cons!41822) rules!2768)) b!3939057))

(assert (= b!3939082 b!3939056))

(assert (= b!3939078 b!3939082))

(assert (= b!3939036 b!3939078))

(assert (= (and start!369788 ((_ is Cons!41821) prefixTokens!80)) b!3939036))

(assert (= b!3939053 b!3939052))

(assert (= b!3939045 b!3939053))

(assert (= b!3939050 b!3939045))

(assert (= (and start!369788 ((_ is Cons!41821) suffixTokens!72)) b!3939050))

(assert (= (and start!369788 ((_ is Cons!41820) prefix!426)) b!3939066))

(declare-fun m!4507405 () Bool)

(assert (=> b!3939055 m!4507405))

(declare-fun m!4507407 () Bool)

(assert (=> b!3939055 m!4507407))

(declare-fun m!4507409 () Bool)

(assert (=> b!3939055 m!4507409))

(declare-fun m!4507411 () Bool)

(assert (=> b!3939055 m!4507411))

(declare-fun m!4507413 () Bool)

(assert (=> b!3939086 m!4507413))

(declare-fun m!4507415 () Bool)

(assert (=> b!3939068 m!4507415))

(declare-fun m!4507417 () Bool)

(assert (=> b!3939068 m!4507417))

(declare-fun m!4507419 () Bool)

(assert (=> b!3939034 m!4507419))

(declare-fun m!4507421 () Bool)

(assert (=> b!3939042 m!4507421))

(declare-fun m!4507423 () Bool)

(assert (=> b!3939072 m!4507423))

(declare-fun m!4507425 () Bool)

(assert (=> b!3939072 m!4507425))

(declare-fun m!4507427 () Bool)

(assert (=> b!3939071 m!4507427))

(declare-fun m!4507429 () Bool)

(assert (=> b!3939071 m!4507429))

(declare-fun m!4507431 () Bool)

(assert (=> b!3939071 m!4507431))

(declare-fun m!4507433 () Bool)

(assert (=> b!3939079 m!4507433))

(declare-fun m!4507435 () Bool)

(assert (=> b!3939079 m!4507435))

(declare-fun m!4507437 () Bool)

(assert (=> b!3939079 m!4507437))

(declare-fun m!4507439 () Bool)

(assert (=> b!3939074 m!4507439))

(declare-fun m!4507441 () Bool)

(assert (=> b!3939074 m!4507441))

(declare-fun m!4507443 () Bool)

(assert (=> b!3939032 m!4507443))

(declare-fun m!4507445 () Bool)

(assert (=> b!3939051 m!4507445))

(declare-fun m!4507447 () Bool)

(assert (=> b!3939041 m!4507447))

(declare-fun m!4507449 () Bool)

(assert (=> b!3939040 m!4507449))

(declare-fun m!4507451 () Bool)

(assert (=> b!3939040 m!4507451))

(declare-fun m!4507453 () Bool)

(assert (=> b!3939040 m!4507453))

(declare-fun m!4507455 () Bool)

(assert (=> b!3939040 m!4507455))

(declare-fun m!4507457 () Bool)

(assert (=> b!3939040 m!4507457))

(declare-fun m!4507459 () Bool)

(assert (=> b!3939053 m!4507459))

(declare-fun m!4507461 () Bool)

(assert (=> b!3939053 m!4507461))

(declare-fun m!4507463 () Bool)

(assert (=> bm!285031 m!4507463))

(declare-fun m!4507465 () Bool)

(assert (=> b!3939043 m!4507465))

(declare-fun m!4507467 () Bool)

(assert (=> b!3939049 m!4507467))

(declare-fun m!4507469 () Bool)

(assert (=> b!3939049 m!4507469))

(declare-fun m!4507471 () Bool)

(assert (=> b!3939058 m!4507471))

(declare-fun m!4507473 () Bool)

(assert (=> b!3939058 m!4507473))

(declare-fun m!4507475 () Bool)

(assert (=> b!3939033 m!4507475))

(declare-fun m!4507477 () Bool)

(assert (=> b!3939046 m!4507477))

(declare-fun m!4507479 () Bool)

(assert (=> b!3939085 m!4507479))

(declare-fun m!4507481 () Bool)

(assert (=> b!3939085 m!4507481))

(declare-fun m!4507483 () Bool)

(assert (=> b!3939085 m!4507483))

(declare-fun m!4507485 () Bool)

(assert (=> b!3939059 m!4507485))

(declare-fun m!4507487 () Bool)

(assert (=> b!3939059 m!4507487))

(assert (=> b!3939059 m!4507487))

(declare-fun m!4507489 () Bool)

(assert (=> b!3939059 m!4507489))

(declare-fun m!4507491 () Bool)

(assert (=> b!3939059 m!4507491))

(declare-fun m!4507493 () Bool)

(assert (=> b!3939064 m!4507493))

(assert (=> b!3939064 m!4507441))

(declare-fun m!4507495 () Bool)

(assert (=> b!3939064 m!4507495))

(declare-fun m!4507497 () Bool)

(assert (=> b!3939064 m!4507497))

(declare-fun m!4507499 () Bool)

(assert (=> b!3939083 m!4507499))

(declare-fun m!4507501 () Bool)

(assert (=> b!3939082 m!4507501))

(declare-fun m!4507503 () Bool)

(assert (=> b!3939082 m!4507503))

(declare-fun m!4507505 () Bool)

(assert (=> b!3939035 m!4507505))

(declare-fun m!4507507 () Bool)

(assert (=> b!3939060 m!4507507))

(declare-fun m!4507509 () Bool)

(assert (=> b!3939060 m!4507509))

(declare-fun m!4507511 () Bool)

(assert (=> b!3939060 m!4507511))

(declare-fun m!4507513 () Bool)

(assert (=> b!3939060 m!4507513))

(assert (=> b!3939060 m!4507513))

(declare-fun m!4507515 () Bool)

(assert (=> b!3939060 m!4507515))

(declare-fun m!4507517 () Bool)

(assert (=> b!3939050 m!4507517))

(declare-fun m!4507519 () Bool)

(assert (=> b!3939073 m!4507519))

(declare-fun m!4507521 () Bool)

(assert (=> b!3939078 m!4507521))

(declare-fun m!4507523 () Bool)

(assert (=> b!3939036 m!4507523))

(declare-fun m!4507525 () Bool)

(assert (=> b!3939062 m!4507525))

(declare-fun m!4507527 () Bool)

(assert (=> b!3939063 m!4507527))

(declare-fun m!4507529 () Bool)

(assert (=> b!3939069 m!4507529))

(declare-fun m!4507531 () Bool)

(assert (=> b!3939069 m!4507531))

(declare-fun m!4507533 () Bool)

(assert (=> b!3939065 m!4507533))

(declare-fun m!4507535 () Bool)

(assert (=> b!3939065 m!4507535))

(declare-fun m!4507537 () Bool)

(assert (=> b!3939065 m!4507537))

(declare-fun m!4507539 () Bool)

(assert (=> b!3939065 m!4507539))

(declare-fun m!4507541 () Bool)

(assert (=> b!3939065 m!4507541))

(declare-fun m!4507543 () Bool)

(assert (=> b!3939065 m!4507543))

(declare-fun m!4507545 () Bool)

(assert (=> b!3939065 m!4507545))

(assert (=> b!3939065 m!4507543))

(declare-fun m!4507547 () Bool)

(assert (=> b!3939065 m!4507547))

(declare-fun m!4507549 () Bool)

(assert (=> b!3939065 m!4507549))

(declare-fun m!4507551 () Bool)

(assert (=> b!3939065 m!4507551))

(declare-fun m!4507553 () Bool)

(assert (=> b!3939065 m!4507553))

(declare-fun m!4507555 () Bool)

(assert (=> b!3939065 m!4507555))

(declare-fun m!4507557 () Bool)

(assert (=> b!3939065 m!4507557))

(assert (=> b!3939065 m!4507545))

(declare-fun m!4507559 () Bool)

(assert (=> b!3939065 m!4507559))

(declare-fun m!4507561 () Bool)

(assert (=> b!3939039 m!4507561))

(declare-fun m!4507563 () Bool)

(assert (=> b!3939067 m!4507563))

(declare-fun m!4507565 () Bool)

(assert (=> b!3939061 m!4507565))

(declare-fun m!4507567 () Bool)

(assert (=> b!3939076 m!4507567))

(declare-fun m!4507569 () Bool)

(assert (=> b!3939076 m!4507569))

(declare-fun m!4507571 () Bool)

(assert (=> b!3939081 m!4507571))

(declare-fun m!4507573 () Bool)

(assert (=> b!3939081 m!4507573))

(declare-fun m!4507575 () Bool)

(assert (=> b!3939081 m!4507575))

(declare-fun m!4507577 () Bool)

(assert (=> b!3939080 m!4507577))

(assert (=> b!3939080 m!4507405))

(assert (=> b!3939080 m!4507407))

(declare-fun m!4507579 () Bool)

(assert (=> b!3939080 m!4507579))

(declare-fun m!4507581 () Bool)

(assert (=> b!3939080 m!4507581))

(declare-fun m!4507583 () Bool)

(assert (=> b!3939045 m!4507583))

(check-sat (not b!3939041) (not b!3939076) (not b!3939058) (not b!3939047) (not bm!285031) (not b!3939066) (not b!3939078) b_and!300865 (not b!3939082) b_and!300863 (not b!3939039) (not b!3939053) (not b!3939065) (not b!3939043) (not b!3939055) (not b!3939080) (not b!3939042) (not b!3939034) (not b!3939081) (not b!3939060) (not b_next!108355) (not b!3939049) (not b_next!108349) (not b!3939045) (not b!3939069) (not b!3939067) (not b!3939033) b_and!300871 (not b!3939070) (not b!3939072) (not b!3939051) (not b_next!108351) (not b!3939079) (not b_next!108357) (not b!3939061) tp_is_empty!19849 b_and!300873 (not b!3939036) (not b!3939057) (not b!3939086) (not b!3939068) (not b!3939035) (not b!3939040) (not b!3939032) (not b!3939062) (not b!3939085) (not b!3939073) (not b!3939071) (not b!3939046) (not b_next!108359) (not b!3939074) (not b!3939064) b_and!300867 (not b!3939050) (not b!3939063) (not b_next!108353) (not b!3939059) b_and!300869 (not b!3939083))
(check-sat (not b_next!108355) (not b_next!108349) b_and!300871 (not b_next!108351) (not b_next!108359) b_and!300867 (not b_next!108353) b_and!300869 b_and!300865 b_and!300863 (not b_next!108357) b_and!300873)
(get-model)

(declare-fun d!1168330 () Bool)

(declare-fun fromListB!2219 (List!41944) BalanceConc!25084)

(assert (=> d!1168330 (= (seqFromList!4801 lt!1377938) (fromListB!2219 lt!1377938))))

(declare-fun bs!586575 () Bool)

(assert (= bs!586575 d!1168330))

(declare-fun m!4507585 () Bool)

(assert (=> bs!586575 m!4507585))

(assert (=> b!3939065 d!1168330))

(declare-fun d!1168332 () Bool)

(declare-fun dynLambda!17911 (Int BalanceConc!25084) TokenValue!6764)

(assert (=> d!1168332 (= (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (seqFromList!4801 lt!1377938)) (dynLambda!17911 (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909))))) (seqFromList!4801 lt!1377938)))))

(declare-fun b_lambda!115191 () Bool)

(assert (=> (not b_lambda!115191) (not d!1168332)))

(declare-fun tb!235949 () Bool)

(declare-fun t!326623 () Bool)

(assert (=> (and b!3939052 (= (toValue!8994 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326623) tb!235949))

(declare-fun result!285822 () Bool)

(assert (=> tb!235949 (= result!285822 (inv!21 (dynLambda!17911 (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909))))) (seqFromList!4801 lt!1377938))))))

(declare-fun m!4507587 () Bool)

(assert (=> tb!235949 m!4507587))

(assert (=> d!1168332 t!326623))

(declare-fun b_and!300875 () Bool)

(assert (= b_and!300863 (and (=> t!326623 result!285822) b_and!300875)))

(declare-fun tb!235951 () Bool)

(declare-fun t!326625 () Bool)

(assert (=> (and b!3939056 (= (toValue!8994 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326625) tb!235951))

(declare-fun result!285826 () Bool)

(assert (= result!285826 result!285822))

(assert (=> d!1168332 t!326625))

(declare-fun b_and!300877 () Bool)

(assert (= b_and!300867 (and (=> t!326625 result!285826) b_and!300877)))

(declare-fun t!326627 () Bool)

(declare-fun tb!235953 () Bool)

(assert (=> (and b!3939084 (= (toValue!8994 (transformation!6534 (h!47242 rules!2768))) (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326627) tb!235953))

(declare-fun result!285828 () Bool)

(assert (= result!285828 result!285822))

(assert (=> d!1168332 t!326627))

(declare-fun b_and!300879 () Bool)

(assert (= b_and!300871 (and (=> t!326627 result!285828) b_and!300879)))

(assert (=> d!1168332 m!4507545))

(declare-fun m!4507589 () Bool)

(assert (=> d!1168332 m!4507589))

(assert (=> b!3939065 d!1168332))

(declare-fun d!1168334 () Bool)

(assert (=> d!1168334 (isPrefix!3629 lt!1377938 (++!10825 lt!1377938 (_2!23688 (v!39283 lt!1377909))))))

(declare-fun lt!1377966 () Unit!60377)

(declare-fun choose!23498 (List!41944 List!41944) Unit!60377)

(assert (=> d!1168334 (= lt!1377966 (choose!23498 lt!1377938 (_2!23688 (v!39283 lt!1377909))))))

(assert (=> d!1168334 (= (lemmaConcatTwoListThenFirstIsPrefix!2492 lt!1377938 (_2!23688 (v!39283 lt!1377909))) lt!1377966)))

(declare-fun bs!586576 () Bool)

(assert (= bs!586576 d!1168334))

(assert (=> bs!586576 m!4507537))

(assert (=> bs!586576 m!4507537))

(declare-fun m!4507591 () Bool)

(assert (=> bs!586576 m!4507591))

(declare-fun m!4507593 () Bool)

(assert (=> bs!586576 m!4507593))

(assert (=> b!3939065 d!1168334))

(declare-fun d!1168336 () Bool)

(declare-fun lt!1377969 () BalanceConc!25084)

(assert (=> d!1168336 (= (list!15538 lt!1377969) (originalCharacters!7134 (_1!23688 (v!39283 lt!1377909))))))

(declare-fun dynLambda!17912 (Int TokenValue!6764) BalanceConc!25084)

(assert (=> d!1168336 (= lt!1377969 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909))))) (value!206853 (_1!23688 (v!39283 lt!1377909)))))))

(assert (=> d!1168336 (= (charsOf!4358 (_1!23688 (v!39283 lt!1377909))) lt!1377969)))

(declare-fun b_lambda!115193 () Bool)

(assert (=> (not b_lambda!115193) (not d!1168336)))

(declare-fun t!326629 () Bool)

(declare-fun tb!235955 () Bool)

(assert (=> (and b!3939052 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326629) tb!235955))

(declare-fun b!3939093 () Bool)

(declare-fun e!2437182 () Bool)

(declare-fun tp!1198565 () Bool)

(declare-fun inv!56023 (Conc!12745) Bool)

(assert (=> b!3939093 (= e!2437182 (and (inv!56023 (c!684403 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909))))) (value!206853 (_1!23688 (v!39283 lt!1377909)))))) tp!1198565))))

(declare-fun result!285830 () Bool)

(declare-fun inv!56024 (BalanceConc!25084) Bool)

(assert (=> tb!235955 (= result!285830 (and (inv!56024 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909))))) (value!206853 (_1!23688 (v!39283 lt!1377909))))) e!2437182))))

(assert (= tb!235955 b!3939093))

(declare-fun m!4507595 () Bool)

(assert (=> b!3939093 m!4507595))

(declare-fun m!4507597 () Bool)

(assert (=> tb!235955 m!4507597))

(assert (=> d!1168336 t!326629))

(declare-fun b_and!300881 () Bool)

(assert (= b_and!300865 (and (=> t!326629 result!285830) b_and!300881)))

(declare-fun t!326631 () Bool)

(declare-fun tb!235957 () Bool)

(assert (=> (and b!3939056 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326631) tb!235957))

(declare-fun result!285834 () Bool)

(assert (= result!285834 result!285830))

(assert (=> d!1168336 t!326631))

(declare-fun b_and!300883 () Bool)

(assert (= b_and!300869 (and (=> t!326631 result!285834) b_and!300883)))

(declare-fun t!326633 () Bool)

(declare-fun tb!235959 () Bool)

(assert (=> (and b!3939084 (= (toChars!8853 (transformation!6534 (h!47242 rules!2768))) (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326633) tb!235959))

(declare-fun result!285836 () Bool)

(assert (= result!285836 result!285830))

(assert (=> d!1168336 t!326633))

(declare-fun b_and!300885 () Bool)

(assert (= b_and!300873 (and (=> t!326633 result!285836) b_and!300885)))

(declare-fun m!4507599 () Bool)

(assert (=> d!1168336 m!4507599))

(declare-fun m!4507601 () Bool)

(assert (=> d!1168336 m!4507601))

(assert (=> b!3939065 d!1168336))

(declare-fun d!1168338 () Bool)

(declare-fun lt!1377972 () Int)

(assert (=> d!1168338 (>= lt!1377972 0)))

(declare-fun e!2437185 () Int)

(assert (=> d!1168338 (= lt!1377972 e!2437185)))

(declare-fun c!684406 () Bool)

(assert (=> d!1168338 (= c!684406 ((_ is Nil!41820) lt!1377938))))

(assert (=> d!1168338 (= (size!31373 lt!1377938) lt!1377972)))

(declare-fun b!3939098 () Bool)

(assert (=> b!3939098 (= e!2437185 0)))

(declare-fun b!3939099 () Bool)

(assert (=> b!3939099 (= e!2437185 (+ 1 (size!31373 (t!326619 lt!1377938))))))

(assert (= (and d!1168338 c!684406) b!3939098))

(assert (= (and d!1168338 (not c!684406)) b!3939099))

(declare-fun m!4507603 () Bool)

(assert (=> b!3939099 m!4507603))

(assert (=> b!3939065 d!1168338))

(declare-fun b!3939110 () Bool)

(declare-fun e!2437194 () Bool)

(declare-fun lt!1377980 () tuple2!41106)

(assert (=> b!3939110 (= e!2437194 (= (_2!23687 lt!1377980) (_2!23688 (v!39283 lt!1377909))))))

(declare-fun b!3939111 () Bool)

(declare-fun e!2437192 () Bool)

(assert (=> b!3939111 (= e!2437192 (not (isEmpty!24946 (_1!23687 lt!1377980))))))

(declare-fun b!3939112 () Bool)

(declare-fun e!2437193 () tuple2!41106)

(assert (=> b!3939112 (= e!2437193 (tuple2!41107 Nil!41821 (_2!23688 (v!39283 lt!1377909))))))

(declare-fun b!3939113 () Bool)

(assert (=> b!3939113 (= e!2437194 e!2437192)))

(declare-fun res!1594182 () Bool)

(assert (=> b!3939113 (= res!1594182 (< (size!31373 (_2!23687 lt!1377980)) (size!31373 (_2!23688 (v!39283 lt!1377909)))))))

(assert (=> b!3939113 (=> (not res!1594182) (not e!2437192))))

(declare-fun b!3939114 () Bool)

(declare-fun lt!1377979 () Option!8954)

(declare-fun lt!1377981 () tuple2!41106)

(assert (=> b!3939114 (= e!2437193 (tuple2!41107 (Cons!41821 (_1!23688 (v!39283 lt!1377979)) (_1!23687 lt!1377981)) (_2!23687 lt!1377981)))))

(assert (=> b!3939114 (= lt!1377981 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1377979))))))

(declare-fun d!1168340 () Bool)

(assert (=> d!1168340 e!2437194))

(declare-fun c!684412 () Bool)

(declare-fun size!31375 (List!41945) Int)

(assert (=> d!1168340 (= c!684412 (> (size!31375 (_1!23687 lt!1377980)) 0))))

(assert (=> d!1168340 (= lt!1377980 e!2437193)))

(declare-fun c!684411 () Bool)

(assert (=> d!1168340 (= c!684411 ((_ is Some!8953) lt!1377979))))

(assert (=> d!1168340 (= lt!1377979 (maxPrefix!3427 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1377909))))))

(assert (=> d!1168340 (= (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1377909))) lt!1377980)))

(assert (= (and d!1168340 c!684411) b!3939114))

(assert (= (and d!1168340 (not c!684411)) b!3939112))

(assert (= (and d!1168340 c!684412) b!3939113))

(assert (= (and d!1168340 (not c!684412)) b!3939110))

(assert (= (and b!3939113 res!1594182) b!3939111))

(declare-fun m!4507605 () Bool)

(assert (=> b!3939111 m!4507605))

(declare-fun m!4507607 () Bool)

(assert (=> b!3939113 m!4507607))

(assert (=> b!3939113 m!4507425))

(declare-fun m!4507609 () Bool)

(assert (=> b!3939114 m!4507609))

(declare-fun m!4507611 () Bool)

(assert (=> d!1168340 m!4507611))

(declare-fun m!4507613 () Bool)

(assert (=> d!1168340 m!4507613))

(assert (=> b!3939065 d!1168340))

(declare-fun b!3939124 () Bool)

(declare-fun e!2437200 () List!41944)

(assert (=> b!3939124 (= e!2437200 (Cons!41820 (h!47240 lt!1377938) (++!10825 (t!326619 lt!1377938) (_2!23688 (v!39283 lt!1377909)))))))

(declare-fun b!3939123 () Bool)

(assert (=> b!3939123 (= e!2437200 (_2!23688 (v!39283 lt!1377909)))))

(declare-fun b!3939126 () Bool)

(declare-fun lt!1377984 () List!41944)

(declare-fun e!2437199 () Bool)

(assert (=> b!3939126 (= e!2437199 (or (not (= (_2!23688 (v!39283 lt!1377909)) Nil!41820)) (= lt!1377984 lt!1377938)))))

(declare-fun d!1168342 () Bool)

(assert (=> d!1168342 e!2437199))

(declare-fun res!1594187 () Bool)

(assert (=> d!1168342 (=> (not res!1594187) (not e!2437199))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6308 (List!41944) (InoxSet C!23064))

(assert (=> d!1168342 (= res!1594187 (= (content!6308 lt!1377984) ((_ map or) (content!6308 lt!1377938) (content!6308 (_2!23688 (v!39283 lt!1377909))))))))

(assert (=> d!1168342 (= lt!1377984 e!2437200)))

(declare-fun c!684415 () Bool)

(assert (=> d!1168342 (= c!684415 ((_ is Nil!41820) lt!1377938))))

(assert (=> d!1168342 (= (++!10825 lt!1377938 (_2!23688 (v!39283 lt!1377909))) lt!1377984)))

(declare-fun b!3939125 () Bool)

(declare-fun res!1594188 () Bool)

(assert (=> b!3939125 (=> (not res!1594188) (not e!2437199))))

(assert (=> b!3939125 (= res!1594188 (= (size!31373 lt!1377984) (+ (size!31373 lt!1377938) (size!31373 (_2!23688 (v!39283 lt!1377909))))))))

(assert (= (and d!1168342 c!684415) b!3939123))

(assert (= (and d!1168342 (not c!684415)) b!3939124))

(assert (= (and d!1168342 res!1594187) b!3939125))

(assert (= (and b!3939125 res!1594188) b!3939126))

(declare-fun m!4507615 () Bool)

(assert (=> b!3939124 m!4507615))

(declare-fun m!4507617 () Bool)

(assert (=> d!1168342 m!4507617))

(declare-fun m!4507619 () Bool)

(assert (=> d!1168342 m!4507619))

(declare-fun m!4507621 () Bool)

(assert (=> d!1168342 m!4507621))

(declare-fun m!4507623 () Bool)

(assert (=> b!3939125 m!4507623))

(assert (=> b!3939125 m!4507541))

(assert (=> b!3939125 m!4507425))

(assert (=> b!3939065 d!1168342))

(declare-fun d!1168346 () Bool)

(declare-fun lt!1377987 () List!41944)

(assert (=> d!1168346 (= (++!10825 lt!1377938 lt!1377987) lt!1377932)))

(declare-fun e!2437203 () List!41944)

(assert (=> d!1168346 (= lt!1377987 e!2437203)))

(declare-fun c!684418 () Bool)

(assert (=> d!1168346 (= c!684418 ((_ is Cons!41820) lt!1377938))))

(assert (=> d!1168346 (>= (size!31373 lt!1377932) (size!31373 lt!1377938))))

(assert (=> d!1168346 (= (getSuffix!2084 lt!1377932 lt!1377938) lt!1377987)))

(declare-fun b!3939131 () Bool)

(declare-fun tail!6099 (List!41944) List!41944)

(assert (=> b!3939131 (= e!2437203 (getSuffix!2084 (tail!6099 lt!1377932) (t!326619 lt!1377938)))))

(declare-fun b!3939132 () Bool)

(assert (=> b!3939132 (= e!2437203 lt!1377932)))

(assert (= (and d!1168346 c!684418) b!3939131))

(assert (= (and d!1168346 (not c!684418)) b!3939132))

(declare-fun m!4507625 () Bool)

(assert (=> d!1168346 m!4507625))

(assert (=> d!1168346 m!4507457))

(assert (=> d!1168346 m!4507541))

(declare-fun m!4507627 () Bool)

(assert (=> b!3939131 m!4507627))

(assert (=> b!3939131 m!4507627))

(declare-fun m!4507629 () Bool)

(assert (=> b!3939131 m!4507629))

(assert (=> b!3939065 d!1168346))

(declare-fun d!1168348 () Bool)

(declare-fun e!2437218 () Bool)

(assert (=> d!1168348 e!2437218))

(declare-fun res!1594202 () Bool)

(assert (=> d!1168348 (=> res!1594202 e!2437218)))

(declare-fun lt!1377996 () Bool)

(assert (=> d!1168348 (= res!1594202 (not lt!1377996))))

(declare-fun e!2437217 () Bool)

(assert (=> d!1168348 (= lt!1377996 e!2437217)))

(declare-fun res!1594201 () Bool)

(assert (=> d!1168348 (=> res!1594201 e!2437217)))

(assert (=> d!1168348 (= res!1594201 ((_ is Nil!41820) lt!1377938))))

(assert (=> d!1168348 (= (isPrefix!3629 lt!1377938 lt!1377963) lt!1377996)))

(declare-fun b!3939153 () Bool)

(declare-fun e!2437216 () Bool)

(assert (=> b!3939153 (= e!2437216 (isPrefix!3629 (tail!6099 lt!1377938) (tail!6099 lt!1377963)))))

(declare-fun b!3939151 () Bool)

(assert (=> b!3939151 (= e!2437217 e!2437216)))

(declare-fun res!1594199 () Bool)

(assert (=> b!3939151 (=> (not res!1594199) (not e!2437216))))

(assert (=> b!3939151 (= res!1594199 (not ((_ is Nil!41820) lt!1377963)))))

(declare-fun b!3939154 () Bool)

(assert (=> b!3939154 (= e!2437218 (>= (size!31373 lt!1377963) (size!31373 lt!1377938)))))

(declare-fun b!3939152 () Bool)

(declare-fun res!1594200 () Bool)

(assert (=> b!3939152 (=> (not res!1594200) (not e!2437216))))

(declare-fun head!8373 (List!41944) C!23064)

(assert (=> b!3939152 (= res!1594200 (= (head!8373 lt!1377938) (head!8373 lt!1377963)))))

(assert (= (and d!1168348 (not res!1594201)) b!3939151))

(assert (= (and b!3939151 res!1594199) b!3939152))

(assert (= (and b!3939152 res!1594200) b!3939153))

(assert (= (and d!1168348 (not res!1594202)) b!3939154))

(declare-fun m!4507631 () Bool)

(assert (=> b!3939153 m!4507631))

(declare-fun m!4507633 () Bool)

(assert (=> b!3939153 m!4507633))

(assert (=> b!3939153 m!4507631))

(assert (=> b!3939153 m!4507633))

(declare-fun m!4507635 () Bool)

(assert (=> b!3939153 m!4507635))

(declare-fun m!4507637 () Bool)

(assert (=> b!3939154 m!4507637))

(assert (=> b!3939154 m!4507541))

(declare-fun m!4507639 () Bool)

(assert (=> b!3939152 m!4507639))

(declare-fun m!4507641 () Bool)

(assert (=> b!3939152 m!4507641))

(assert (=> b!3939065 d!1168348))

(declare-fun d!1168350 () Bool)

(declare-fun list!15539 (Conc!12745) List!41944)

(assert (=> d!1168350 (= (list!15538 (charsOf!4358 (_1!23688 (v!39283 lt!1377909)))) (list!15539 (c!684403 (charsOf!4358 (_1!23688 (v!39283 lt!1377909))))))))

(declare-fun bs!586577 () Bool)

(assert (= bs!586577 d!1168350))

(declare-fun m!4507643 () Bool)

(assert (=> bs!586577 m!4507643))

(assert (=> b!3939065 d!1168350))

(declare-fun d!1168352 () Bool)

(assert (=> d!1168352 (ruleValid!2482 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))))))

(declare-fun lt!1378007 () Unit!60377)

(declare-fun choose!23501 (LexerInterface!6123 Rule!12868 List!41946) Unit!60377)

(assert (=> d!1168352 (= lt!1378007 (choose!23501 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))) rules!2768))))

(declare-fun contains!8376 (List!41946 Rule!12868) Bool)

(assert (=> d!1168352 (contains!8376 rules!2768 (rule!9490 (_1!23688 (v!39283 lt!1377909))))))

(assert (=> d!1168352 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1562 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))) rules!2768) lt!1378007)))

(declare-fun bs!586579 () Bool)

(assert (= bs!586579 d!1168352))

(assert (=> bs!586579 m!4507533))

(declare-fun m!4507655 () Bool)

(assert (=> bs!586579 m!4507655))

(declare-fun m!4507657 () Bool)

(assert (=> bs!586579 m!4507657))

(assert (=> b!3939065 d!1168352))

(declare-fun d!1168358 () Bool)

(assert (=> d!1168358 (= (_2!23688 (v!39283 lt!1377909)) lt!1377930)))

(declare-fun lt!1378013 () Unit!60377)

(declare-fun choose!23502 (List!41944 List!41944 List!41944 List!41944 List!41944) Unit!60377)

(assert (=> d!1168358 (= lt!1378013 (choose!23502 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 lt!1377930 lt!1377932))))

(assert (=> d!1168358 (isPrefix!3629 lt!1377938 lt!1377932)))

(assert (=> d!1168358 (= (lemmaSamePrefixThenSameSuffix!1850 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 lt!1377930 lt!1377932) lt!1378013)))

(declare-fun bs!586581 () Bool)

(assert (= bs!586581 d!1168358))

(declare-fun m!4507663 () Bool)

(assert (=> bs!586581 m!4507663))

(declare-fun m!4507665 () Bool)

(assert (=> bs!586581 m!4507665))

(assert (=> b!3939065 d!1168358))

(declare-fun d!1168362 () Bool)

(assert (=> d!1168362 (= (size!31372 (_1!23688 (v!39283 lt!1377909))) (size!31373 (originalCharacters!7134 (_1!23688 (v!39283 lt!1377909)))))))

(declare-fun Unit!60388 () Unit!60377)

(assert (=> d!1168362 (= (lemmaCharactersSize!1191 (_1!23688 (v!39283 lt!1377909))) Unit!60388)))

(declare-fun bs!586582 () Bool)

(assert (= bs!586582 d!1168362))

(assert (=> bs!586582 m!4507499))

(assert (=> b!3939065 d!1168362))

(declare-fun d!1168366 () Bool)

(declare-fun res!1594228 () Bool)

(declare-fun e!2437241 () Bool)

(assert (=> d!1168366 (=> (not res!1594228) (not e!2437241))))

(declare-fun validRegex!5209 (Regex!11439) Bool)

(assert (=> d!1168366 (= res!1594228 (validRegex!5209 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909))))))))

(assert (=> d!1168366 (= (ruleValid!2482 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) e!2437241)))

(declare-fun b!3939190 () Bool)

(declare-fun res!1594229 () Bool)

(assert (=> b!3939190 (=> (not res!1594229) (not e!2437241))))

(declare-fun nullable!4010 (Regex!11439) Bool)

(assert (=> b!3939190 (= res!1594229 (not (nullable!4010 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))))))

(declare-fun b!3939191 () Bool)

(assert (=> b!3939191 (= e!2437241 (not (= (tag!7394 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (String!47539 ""))))))

(assert (= (and d!1168366 res!1594228) b!3939190))

(assert (= (and b!3939190 res!1594229) b!3939191))

(declare-fun m!4507685 () Bool)

(assert (=> d!1168366 m!4507685))

(declare-fun m!4507687 () Bool)

(assert (=> b!3939190 m!4507687))

(assert (=> b!3939065 d!1168366))

(declare-fun b!3939217 () Bool)

(declare-fun e!2437257 () Bool)

(declare-fun inv!17 (TokenValue!6764) Bool)

(assert (=> b!3939217 (= e!2437257 (inv!17 (value!206853 (h!47241 suffixTokens!72))))))

(declare-fun b!3939219 () Bool)

(declare-fun e!2437256 () Bool)

(assert (=> b!3939219 (= e!2437256 e!2437257)))

(declare-fun c!684435 () Bool)

(assert (=> b!3939219 (= c!684435 ((_ is IntegerValue!20293) (value!206853 (h!47241 suffixTokens!72))))))

(declare-fun b!3939220 () Bool)

(declare-fun inv!16 (TokenValue!6764) Bool)

(assert (=> b!3939220 (= e!2437256 (inv!16 (value!206853 (h!47241 suffixTokens!72))))))

(declare-fun b!3939221 () Bool)

(declare-fun res!1594238 () Bool)

(declare-fun e!2437258 () Bool)

(assert (=> b!3939221 (=> res!1594238 e!2437258)))

(assert (=> b!3939221 (= res!1594238 (not ((_ is IntegerValue!20294) (value!206853 (h!47241 suffixTokens!72)))))))

(assert (=> b!3939221 (= e!2437257 e!2437258)))

(declare-fun d!1168372 () Bool)

(declare-fun c!684434 () Bool)

(assert (=> d!1168372 (= c!684434 ((_ is IntegerValue!20292) (value!206853 (h!47241 suffixTokens!72))))))

(assert (=> d!1168372 (= (inv!21 (value!206853 (h!47241 suffixTokens!72))) e!2437256)))

(declare-fun b!3939218 () Bool)

(declare-fun inv!15 (TokenValue!6764) Bool)

(assert (=> b!3939218 (= e!2437258 (inv!15 (value!206853 (h!47241 suffixTokens!72))))))

(assert (= (and d!1168372 c!684434) b!3939220))

(assert (= (and d!1168372 (not c!684434)) b!3939219))

(assert (= (and b!3939219 c!684435) b!3939217))

(assert (= (and b!3939219 (not c!684435)) b!3939221))

(assert (= (and b!3939221 (not res!1594238)) b!3939218))

(declare-fun m!4507701 () Bool)

(assert (=> b!3939217 m!4507701))

(declare-fun m!4507703 () Bool)

(assert (=> b!3939220 m!4507703))

(declare-fun m!4507705 () Bool)

(assert (=> b!3939218 m!4507705))

(assert (=> b!3939045 d!1168372))

(declare-fun b!3939308 () Bool)

(declare-fun res!1594301 () Bool)

(declare-fun e!2437301 () Bool)

(assert (=> b!3939308 (=> (not res!1594301) (not e!2437301))))

(declare-fun lt!1378061 () Option!8954)

(assert (=> b!3939308 (= res!1594301 (< (size!31373 (_2!23688 (get!13821 lt!1378061))) (size!31373 lt!1377932)))))

(declare-fun b!3939309 () Bool)

(assert (=> b!3939309 (= e!2437301 (contains!8376 rules!2768 (rule!9490 (_1!23688 (get!13821 lt!1378061)))))))

(declare-fun b!3939310 () Bool)

(declare-fun res!1594299 () Bool)

(assert (=> b!3939310 (=> (not res!1594299) (not e!2437301))))

(assert (=> b!3939310 (= res!1594299 (= (++!10825 (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378061)))) (_2!23688 (get!13821 lt!1378061))) lt!1377932))))

(declare-fun d!1168376 () Bool)

(declare-fun e!2437300 () Bool)

(assert (=> d!1168376 e!2437300))

(declare-fun res!1594295 () Bool)

(assert (=> d!1168376 (=> res!1594295 e!2437300)))

(declare-fun isEmpty!24947 (Option!8954) Bool)

(assert (=> d!1168376 (= res!1594295 (isEmpty!24947 lt!1378061))))

(declare-fun e!2437299 () Option!8954)

(assert (=> d!1168376 (= lt!1378061 e!2437299)))

(declare-fun c!684451 () Bool)

(assert (=> d!1168376 (= c!684451 (and ((_ is Cons!41822) rules!2768) ((_ is Nil!41822) (t!326621 rules!2768))))))

(declare-fun lt!1378062 () Unit!60377)

(declare-fun lt!1378060 () Unit!60377)

(assert (=> d!1168376 (= lt!1378062 lt!1378060)))

(assert (=> d!1168376 (isPrefix!3629 lt!1377932 lt!1377932)))

(declare-fun lemmaIsPrefixRefl!2289 (List!41944 List!41944) Unit!60377)

(assert (=> d!1168376 (= lt!1378060 (lemmaIsPrefixRefl!2289 lt!1377932 lt!1377932))))

(declare-fun rulesValidInductive!2359 (LexerInterface!6123 List!41946) Bool)

(assert (=> d!1168376 (rulesValidInductive!2359 thiss!20629 rules!2768)))

(assert (=> d!1168376 (= (maxPrefix!3427 thiss!20629 rules!2768 lt!1377932) lt!1378061)))

(declare-fun b!3939311 () Bool)

(declare-fun lt!1378063 () Option!8954)

(declare-fun lt!1378064 () Option!8954)

(assert (=> b!3939311 (= e!2437299 (ite (and ((_ is None!8953) lt!1378063) ((_ is None!8953) lt!1378064)) None!8953 (ite ((_ is None!8953) lt!1378064) lt!1378063 (ite ((_ is None!8953) lt!1378063) lt!1378064 (ite (>= (size!31372 (_1!23688 (v!39283 lt!1378063))) (size!31372 (_1!23688 (v!39283 lt!1378064)))) lt!1378063 lt!1378064)))))))

(declare-fun call!285041 () Option!8954)

(assert (=> b!3939311 (= lt!1378063 call!285041)))

(assert (=> b!3939311 (= lt!1378064 (maxPrefix!3427 thiss!20629 (t!326621 rules!2768) lt!1377932))))

(declare-fun bm!285036 () Bool)

(assert (=> bm!285036 (= call!285041 (maxPrefixOneRule!2497 thiss!20629 (h!47242 rules!2768) lt!1377932))))

(declare-fun b!3939312 () Bool)

(declare-fun res!1594298 () Bool)

(assert (=> b!3939312 (=> (not res!1594298) (not e!2437301))))

(assert (=> b!3939312 (= res!1594298 (= (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378061)))) (originalCharacters!7134 (_1!23688 (get!13821 lt!1378061)))))))

(declare-fun b!3939313 () Bool)

(assert (=> b!3939313 (= e!2437300 e!2437301)))

(declare-fun res!1594296 () Bool)

(assert (=> b!3939313 (=> (not res!1594296) (not e!2437301))))

(declare-fun isDefined!6958 (Option!8954) Bool)

(assert (=> b!3939313 (= res!1594296 (isDefined!6958 lt!1378061))))

(declare-fun b!3939314 () Bool)

(declare-fun res!1594300 () Bool)

(assert (=> b!3939314 (=> (not res!1594300) (not e!2437301))))

(declare-fun matchR!5491 (Regex!11439 List!41944) Bool)

(assert (=> b!3939314 (= res!1594300 (matchR!5491 (regex!6534 (rule!9490 (_1!23688 (get!13821 lt!1378061)))) (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378061))))))))

(declare-fun b!3939315 () Bool)

(assert (=> b!3939315 (= e!2437299 call!285041)))

(declare-fun b!3939316 () Bool)

(declare-fun res!1594297 () Bool)

(assert (=> b!3939316 (=> (not res!1594297) (not e!2437301))))

(assert (=> b!3939316 (= res!1594297 (= (value!206853 (_1!23688 (get!13821 lt!1378061))) (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (get!13821 lt!1378061)))) (seqFromList!4801 (originalCharacters!7134 (_1!23688 (get!13821 lt!1378061)))))))))

(assert (= (and d!1168376 c!684451) b!3939315))

(assert (= (and d!1168376 (not c!684451)) b!3939311))

(assert (= (or b!3939315 b!3939311) bm!285036))

(assert (= (and d!1168376 (not res!1594295)) b!3939313))

(assert (= (and b!3939313 res!1594296) b!3939312))

(assert (= (and b!3939312 res!1594298) b!3939308))

(assert (= (and b!3939308 res!1594301) b!3939310))

(assert (= (and b!3939310 res!1594299) b!3939316))

(assert (= (and b!3939316 res!1594297) b!3939314))

(assert (= (and b!3939314 res!1594300) b!3939309))

(declare-fun m!4507817 () Bool)

(assert (=> b!3939312 m!4507817))

(declare-fun m!4507819 () Bool)

(assert (=> b!3939312 m!4507819))

(assert (=> b!3939312 m!4507819))

(declare-fun m!4507821 () Bool)

(assert (=> b!3939312 m!4507821))

(assert (=> b!3939309 m!4507817))

(declare-fun m!4507823 () Bool)

(assert (=> b!3939309 m!4507823))

(declare-fun m!4507825 () Bool)

(assert (=> bm!285036 m!4507825))

(declare-fun m!4507827 () Bool)

(assert (=> b!3939313 m!4507827))

(assert (=> b!3939310 m!4507817))

(assert (=> b!3939310 m!4507819))

(assert (=> b!3939310 m!4507819))

(assert (=> b!3939310 m!4507821))

(assert (=> b!3939310 m!4507821))

(declare-fun m!4507829 () Bool)

(assert (=> b!3939310 m!4507829))

(assert (=> b!3939316 m!4507817))

(declare-fun m!4507831 () Bool)

(assert (=> b!3939316 m!4507831))

(assert (=> b!3939316 m!4507831))

(declare-fun m!4507833 () Bool)

(assert (=> b!3939316 m!4507833))

(assert (=> b!3939308 m!4507817))

(declare-fun m!4507835 () Bool)

(assert (=> b!3939308 m!4507835))

(assert (=> b!3939308 m!4507457))

(declare-fun m!4507837 () Bool)

(assert (=> d!1168376 m!4507837))

(declare-fun m!4507839 () Bool)

(assert (=> d!1168376 m!4507839))

(declare-fun m!4507841 () Bool)

(assert (=> d!1168376 m!4507841))

(declare-fun m!4507843 () Bool)

(assert (=> d!1168376 m!4507843))

(declare-fun m!4507845 () Bool)

(assert (=> b!3939311 m!4507845))

(assert (=> b!3939314 m!4507817))

(assert (=> b!3939314 m!4507819))

(assert (=> b!3939314 m!4507819))

(assert (=> b!3939314 m!4507821))

(assert (=> b!3939314 m!4507821))

(declare-fun m!4507847 () Bool)

(assert (=> b!3939314 m!4507847))

(assert (=> b!3939046 d!1168376))

(declare-fun b!3939317 () Bool)

(declare-fun e!2437304 () Bool)

(declare-fun lt!1378066 () tuple2!41106)

(assert (=> b!3939317 (= e!2437304 (= (_2!23687 lt!1378066) prefix!426))))

(declare-fun b!3939318 () Bool)

(declare-fun e!2437302 () Bool)

(assert (=> b!3939318 (= e!2437302 (not (isEmpty!24946 (_1!23687 lt!1378066))))))

(declare-fun b!3939319 () Bool)

(declare-fun e!2437303 () tuple2!41106)

(assert (=> b!3939319 (= e!2437303 (tuple2!41107 Nil!41821 prefix!426))))

(declare-fun b!3939320 () Bool)

(assert (=> b!3939320 (= e!2437304 e!2437302)))

(declare-fun res!1594302 () Bool)

(assert (=> b!3939320 (= res!1594302 (< (size!31373 (_2!23687 lt!1378066)) (size!31373 prefix!426)))))

(assert (=> b!3939320 (=> (not res!1594302) (not e!2437302))))

(declare-fun b!3939321 () Bool)

(declare-fun lt!1378065 () Option!8954)

(declare-fun lt!1378067 () tuple2!41106)

(assert (=> b!3939321 (= e!2437303 (tuple2!41107 (Cons!41821 (_1!23688 (v!39283 lt!1378065)) (_1!23687 lt!1378067)) (_2!23687 lt!1378067)))))

(assert (=> b!3939321 (= lt!1378067 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1378065))))))

(declare-fun d!1168408 () Bool)

(assert (=> d!1168408 e!2437304))

(declare-fun c!684453 () Bool)

(assert (=> d!1168408 (= c!684453 (> (size!31375 (_1!23687 lt!1378066)) 0))))

(assert (=> d!1168408 (= lt!1378066 e!2437303)))

(declare-fun c!684452 () Bool)

(assert (=> d!1168408 (= c!684452 ((_ is Some!8953) lt!1378065))))

(assert (=> d!1168408 (= lt!1378065 (maxPrefix!3427 thiss!20629 rules!2768 prefix!426))))

(assert (=> d!1168408 (= (lexList!1891 thiss!20629 rules!2768 prefix!426) lt!1378066)))

(assert (= (and d!1168408 c!684452) b!3939321))

(assert (= (and d!1168408 (not c!684452)) b!3939319))

(assert (= (and d!1168408 c!684453) b!3939320))

(assert (= (and d!1168408 (not c!684453)) b!3939317))

(assert (= (and b!3939320 res!1594302) b!3939318))

(declare-fun m!4507849 () Bool)

(assert (=> b!3939318 m!4507849))

(declare-fun m!4507851 () Bool)

(assert (=> b!3939320 m!4507851))

(assert (=> b!3939320 m!4507579))

(declare-fun m!4507853 () Bool)

(assert (=> b!3939321 m!4507853))

(declare-fun m!4507855 () Bool)

(assert (=> d!1168408 m!4507855))

(assert (=> d!1168408 m!4507427))

(assert (=> b!3939067 d!1168408))

(declare-fun d!1168410 () Bool)

(assert (=> d!1168410 (not (= (lexList!1891 thiss!20629 rules!2768 suffix!1176) (tuple2!41107 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1378080 () Unit!60377)

(declare-fun choose!23504 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41945 List!41944) Unit!60377)

(assert (=> d!1168410 (= lt!1378080 (choose!23504 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1377909)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1168410 (not (isEmpty!24945 rules!2768))))

(assert (=> d!1168410 (= (lemmaLexWithSmallerInputCannotProduceSameResults!134 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1377909)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1378080)))

(declare-fun bs!586586 () Bool)

(assert (= bs!586586 d!1168410))

(assert (=> bs!586586 m!4507413))

(declare-fun m!4507921 () Bool)

(assert (=> bs!586586 m!4507921))

(assert (=> bs!586586 m!4507465))

(assert (=> b!3939042 d!1168410))

(declare-fun d!1168416 () Bool)

(assert (=> d!1168416 (= (isEmpty!24946 prefixTokens!80) ((_ is Nil!41821) prefixTokens!80))))

(assert (=> b!3939063 d!1168416))

(declare-fun d!1168418 () Bool)

(assert (=> d!1168418 (= (isEmpty!24945 rules!2768) ((_ is Nil!41822) rules!2768))))

(assert (=> b!3939043 d!1168418))

(declare-fun d!1168420 () Bool)

(assert (=> d!1168420 (= (_2!23688 (v!39283 lt!1377909)) lt!1377954)))

(declare-fun lt!1378081 () Unit!60377)

(assert (=> d!1168420 (= lt!1378081 (choose!23502 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 lt!1377954 lt!1377932))))

(assert (=> d!1168420 (isPrefix!3629 lt!1377938 lt!1377932)))

(assert (=> d!1168420 (= (lemmaSamePrefixThenSameSuffix!1850 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 lt!1377954 lt!1377932) lt!1378081)))

(declare-fun bs!586587 () Bool)

(assert (= bs!586587 d!1168420))

(declare-fun m!4507923 () Bool)

(assert (=> bs!586587 m!4507923))

(assert (=> bs!586587 m!4507665))

(assert (=> b!3939085 d!1168420))

(declare-fun d!1168422 () Bool)

(declare-fun e!2437313 () Bool)

(assert (=> d!1168422 e!2437313))

(declare-fun res!1594320 () Bool)

(assert (=> d!1168422 (=> res!1594320 e!2437313)))

(declare-fun lt!1378082 () Bool)

(assert (=> d!1168422 (= res!1594320 (not lt!1378082))))

(declare-fun e!2437312 () Bool)

(assert (=> d!1168422 (= lt!1378082 e!2437312)))

(declare-fun res!1594319 () Bool)

(assert (=> d!1168422 (=> res!1594319 e!2437312)))

(assert (=> d!1168422 (= res!1594319 ((_ is Nil!41820) lt!1377938))))

(assert (=> d!1168422 (= (isPrefix!3629 lt!1377938 lt!1377922) lt!1378082)))

(declare-fun b!3939342 () Bool)

(declare-fun e!2437311 () Bool)

(assert (=> b!3939342 (= e!2437311 (isPrefix!3629 (tail!6099 lt!1377938) (tail!6099 lt!1377922)))))

(declare-fun b!3939340 () Bool)

(assert (=> b!3939340 (= e!2437312 e!2437311)))

(declare-fun res!1594317 () Bool)

(assert (=> b!3939340 (=> (not res!1594317) (not e!2437311))))

(assert (=> b!3939340 (= res!1594317 (not ((_ is Nil!41820) lt!1377922)))))

(declare-fun b!3939343 () Bool)

(assert (=> b!3939343 (= e!2437313 (>= (size!31373 lt!1377922) (size!31373 lt!1377938)))))

(declare-fun b!3939341 () Bool)

(declare-fun res!1594318 () Bool)

(assert (=> b!3939341 (=> (not res!1594318) (not e!2437311))))

(assert (=> b!3939341 (= res!1594318 (= (head!8373 lt!1377938) (head!8373 lt!1377922)))))

(assert (= (and d!1168422 (not res!1594319)) b!3939340))

(assert (= (and b!3939340 res!1594317) b!3939341))

(assert (= (and b!3939341 res!1594318) b!3939342))

(assert (= (and d!1168422 (not res!1594320)) b!3939343))

(assert (=> b!3939342 m!4507631))

(declare-fun m!4507925 () Bool)

(assert (=> b!3939342 m!4507925))

(assert (=> b!3939342 m!4507631))

(assert (=> b!3939342 m!4507925))

(declare-fun m!4507927 () Bool)

(assert (=> b!3939342 m!4507927))

(declare-fun m!4507929 () Bool)

(assert (=> b!3939343 m!4507929))

(assert (=> b!3939343 m!4507541))

(assert (=> b!3939341 m!4507639))

(declare-fun m!4507931 () Bool)

(assert (=> b!3939341 m!4507931))

(assert (=> b!3939085 d!1168422))

(declare-fun d!1168424 () Bool)

(assert (=> d!1168424 (isPrefix!3629 lt!1377938 (++!10825 lt!1377938 lt!1377954))))

(declare-fun lt!1378083 () Unit!60377)

(assert (=> d!1168424 (= lt!1378083 (choose!23498 lt!1377938 lt!1377954))))

(assert (=> d!1168424 (= (lemmaConcatTwoListThenFirstIsPrefix!2492 lt!1377938 lt!1377954) lt!1378083)))

(declare-fun bs!586588 () Bool)

(assert (= bs!586588 d!1168424))

(assert (=> bs!586588 m!4507433))

(assert (=> bs!586588 m!4507433))

(declare-fun m!4507933 () Bool)

(assert (=> bs!586588 m!4507933))

(declare-fun m!4507935 () Bool)

(assert (=> bs!586588 m!4507935))

(assert (=> b!3939085 d!1168424))

(declare-fun b!3939352 () Bool)

(declare-fun e!2437321 () List!41945)

(assert (=> b!3939352 (= e!2437321 suffixTokens!72)))

(declare-fun e!2437318 () Bool)

(declare-fun b!3939356 () Bool)

(declare-fun lt!1378090 () List!41945)

(assert (=> b!3939356 (= e!2437318 (or (not (= suffixTokens!72 Nil!41821)) (= lt!1378090 lt!1377915)))))

(declare-fun d!1168426 () Bool)

(assert (=> d!1168426 e!2437318))

(declare-fun res!1594328 () Bool)

(assert (=> d!1168426 (=> (not res!1594328) (not e!2437318))))

(declare-fun content!6311 (List!41945) (InoxSet Token!12206))

(assert (=> d!1168426 (= res!1594328 (= (content!6311 lt!1378090) ((_ map or) (content!6311 lt!1377915) (content!6311 suffixTokens!72))))))

(assert (=> d!1168426 (= lt!1378090 e!2437321)))

(declare-fun c!684458 () Bool)

(assert (=> d!1168426 (= c!684458 ((_ is Nil!41821) lt!1377915))))

(assert (=> d!1168426 (= (++!10826 lt!1377915 suffixTokens!72) lt!1378090)))

(declare-fun b!3939354 () Bool)

(declare-fun res!1594325 () Bool)

(assert (=> b!3939354 (=> (not res!1594325) (not e!2437318))))

(assert (=> b!3939354 (= res!1594325 (= (size!31375 lt!1378090) (+ (size!31375 lt!1377915) (size!31375 suffixTokens!72))))))

(declare-fun b!3939353 () Bool)

(assert (=> b!3939353 (= e!2437321 (Cons!41821 (h!47241 lt!1377915) (++!10826 (t!326620 lt!1377915) suffixTokens!72)))))

(assert (= (and d!1168426 c!684458) b!3939352))

(assert (= (and d!1168426 (not c!684458)) b!3939353))

(assert (= (and d!1168426 res!1594328) b!3939354))

(assert (= (and b!3939354 res!1594325) b!3939356))

(declare-fun m!4507943 () Bool)

(assert (=> d!1168426 m!4507943))

(declare-fun m!4507945 () Bool)

(assert (=> d!1168426 m!4507945))

(declare-fun m!4507947 () Bool)

(assert (=> d!1168426 m!4507947))

(declare-fun m!4507951 () Bool)

(assert (=> b!3939354 m!4507951))

(declare-fun m!4507953 () Bool)

(assert (=> b!3939354 m!4507953))

(declare-fun m!4507957 () Bool)

(assert (=> b!3939354 m!4507957))

(declare-fun m!4507959 () Bool)

(assert (=> b!3939353 m!4507959))

(assert (=> b!3939064 d!1168426))

(declare-fun d!1168432 () Bool)

(assert (=> d!1168432 (= (tail!6097 prefixTokens!80) (t!326620 prefixTokens!80))))

(assert (=> b!3939064 d!1168432))

(declare-fun d!1168434 () Bool)

(declare-fun e!2437327 () Bool)

(assert (=> d!1168434 e!2437327))

(declare-fun res!1594336 () Bool)

(assert (=> d!1168434 (=> res!1594336 e!2437327)))

(declare-fun lt!1378092 () Bool)

(assert (=> d!1168434 (= res!1594336 (not lt!1378092))))

(declare-fun e!2437326 () Bool)

(assert (=> d!1168434 (= lt!1378092 e!2437326)))

(declare-fun res!1594335 () Bool)

(assert (=> d!1168434 (=> res!1594335 e!2437326)))

(assert (=> d!1168434 (= res!1594335 ((_ is Nil!41820) lt!1377940))))

(assert (=> d!1168434 (= (isPrefix!3629 lt!1377940 lt!1377954) lt!1378092)))

(declare-fun b!3939366 () Bool)

(declare-fun e!2437325 () Bool)

(assert (=> b!3939366 (= e!2437325 (isPrefix!3629 (tail!6099 lt!1377940) (tail!6099 lt!1377954)))))

(declare-fun b!3939364 () Bool)

(assert (=> b!3939364 (= e!2437326 e!2437325)))

(declare-fun res!1594333 () Bool)

(assert (=> b!3939364 (=> (not res!1594333) (not e!2437325))))

(assert (=> b!3939364 (= res!1594333 (not ((_ is Nil!41820) lt!1377954)))))

(declare-fun b!3939367 () Bool)

(assert (=> b!3939367 (= e!2437327 (>= (size!31373 lt!1377954) (size!31373 lt!1377940)))))

(declare-fun b!3939365 () Bool)

(declare-fun res!1594334 () Bool)

(assert (=> b!3939365 (=> (not res!1594334) (not e!2437325))))

(assert (=> b!3939365 (= res!1594334 (= (head!8373 lt!1377940) (head!8373 lt!1377954)))))

(assert (= (and d!1168434 (not res!1594335)) b!3939364))

(assert (= (and b!3939364 res!1594333) b!3939365))

(assert (= (and b!3939365 res!1594334) b!3939366))

(assert (= (and d!1168434 (not res!1594336)) b!3939367))

(declare-fun m!4507971 () Bool)

(assert (=> b!3939366 m!4507971))

(declare-fun m!4507973 () Bool)

(assert (=> b!3939366 m!4507973))

(assert (=> b!3939366 m!4507971))

(assert (=> b!3939366 m!4507973))

(declare-fun m!4507975 () Bool)

(assert (=> b!3939366 m!4507975))

(declare-fun m!4507977 () Bool)

(assert (=> b!3939367 m!4507977))

(declare-fun m!4507979 () Bool)

(assert (=> b!3939367 m!4507979))

(declare-fun m!4507981 () Bool)

(assert (=> b!3939365 m!4507981))

(declare-fun m!4507983 () Bool)

(assert (=> b!3939365 m!4507983))

(assert (=> b!3939064 d!1168434))

(declare-fun d!1168438 () Bool)

(assert (=> d!1168438 (isPrefix!3629 lt!1377940 (++!10825 lt!1377940 suffix!1176))))

(declare-fun lt!1378093 () Unit!60377)

(assert (=> d!1168438 (= lt!1378093 (choose!23498 lt!1377940 suffix!1176))))

(assert (=> d!1168438 (= (lemmaConcatTwoListThenFirstIsPrefix!2492 lt!1377940 suffix!1176) lt!1378093)))

(declare-fun bs!586590 () Bool)

(assert (= bs!586590 d!1168438))

(assert (=> bs!586590 m!4507435))

(assert (=> bs!586590 m!4507435))

(declare-fun m!4507985 () Bool)

(assert (=> bs!586590 m!4507985))

(declare-fun m!4507987 () Bool)

(assert (=> bs!586590 m!4507987))

(assert (=> b!3939064 d!1168438))

(declare-fun b!3939368 () Bool)

(declare-fun e!2437330 () Bool)

(declare-fun lt!1378095 () tuple2!41106)

(assert (=> b!3939368 (= e!2437330 (= (_2!23687 lt!1378095) suffix!1176))))

(declare-fun b!3939369 () Bool)

(declare-fun e!2437328 () Bool)

(assert (=> b!3939369 (= e!2437328 (not (isEmpty!24946 (_1!23687 lt!1378095))))))

(declare-fun b!3939370 () Bool)

(declare-fun e!2437329 () tuple2!41106)

(assert (=> b!3939370 (= e!2437329 (tuple2!41107 Nil!41821 suffix!1176))))

(declare-fun b!3939371 () Bool)

(assert (=> b!3939371 (= e!2437330 e!2437328)))

(declare-fun res!1594337 () Bool)

(assert (=> b!3939371 (= res!1594337 (< (size!31373 (_2!23687 lt!1378095)) (size!31373 suffix!1176)))))

(assert (=> b!3939371 (=> (not res!1594337) (not e!2437328))))

(declare-fun b!3939372 () Bool)

(declare-fun lt!1378094 () Option!8954)

(declare-fun lt!1378096 () tuple2!41106)

(assert (=> b!3939372 (= e!2437329 (tuple2!41107 (Cons!41821 (_1!23688 (v!39283 lt!1378094)) (_1!23687 lt!1378096)) (_2!23687 lt!1378096)))))

(assert (=> b!3939372 (= lt!1378096 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1378094))))))

(declare-fun d!1168442 () Bool)

(assert (=> d!1168442 e!2437330))

(declare-fun c!684461 () Bool)

(assert (=> d!1168442 (= c!684461 (> (size!31375 (_1!23687 lt!1378095)) 0))))

(assert (=> d!1168442 (= lt!1378095 e!2437329)))

(declare-fun c!684460 () Bool)

(assert (=> d!1168442 (= c!684460 ((_ is Some!8953) lt!1378094))))

(assert (=> d!1168442 (= lt!1378094 (maxPrefix!3427 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1168442 (= (lexList!1891 thiss!20629 rules!2768 suffix!1176) lt!1378095)))

(assert (= (and d!1168442 c!684460) b!3939372))

(assert (= (and d!1168442 (not c!684460)) b!3939370))

(assert (= (and d!1168442 c!684461) b!3939371))

(assert (= (and d!1168442 (not c!684461)) b!3939368))

(assert (= (and b!3939371 res!1594337) b!3939369))

(declare-fun m!4507989 () Bool)

(assert (=> b!3939369 m!4507989))

(declare-fun m!4507991 () Bool)

(assert (=> b!3939371 m!4507991))

(assert (=> b!3939371 m!4507423))

(declare-fun m!4507993 () Bool)

(assert (=> b!3939372 m!4507993))

(declare-fun m!4507995 () Bool)

(assert (=> d!1168442 m!4507995))

(declare-fun m!4507997 () Bool)

(assert (=> d!1168442 m!4507997))

(assert (=> b!3939086 d!1168442))

(declare-fun b!3939373 () Bool)

(declare-fun e!2437333 () Bool)

(declare-fun lt!1378098 () tuple2!41106)

(assert (=> b!3939373 (= e!2437333 (= (_2!23687 lt!1378098) lt!1377932))))

(declare-fun b!3939374 () Bool)

(declare-fun e!2437331 () Bool)

(assert (=> b!3939374 (= e!2437331 (not (isEmpty!24946 (_1!23687 lt!1378098))))))

(declare-fun b!3939375 () Bool)

(declare-fun e!2437332 () tuple2!41106)

(assert (=> b!3939375 (= e!2437332 (tuple2!41107 Nil!41821 lt!1377932))))

(declare-fun b!3939376 () Bool)

(assert (=> b!3939376 (= e!2437333 e!2437331)))

(declare-fun res!1594338 () Bool)

(assert (=> b!3939376 (= res!1594338 (< (size!31373 (_2!23687 lt!1378098)) (size!31373 lt!1377932)))))

(assert (=> b!3939376 (=> (not res!1594338) (not e!2437331))))

(declare-fun b!3939377 () Bool)

(declare-fun lt!1378097 () Option!8954)

(declare-fun lt!1378099 () tuple2!41106)

(assert (=> b!3939377 (= e!2437332 (tuple2!41107 (Cons!41821 (_1!23688 (v!39283 lt!1378097)) (_1!23687 lt!1378099)) (_2!23687 lt!1378099)))))

(assert (=> b!3939377 (= lt!1378099 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1378097))))))

(declare-fun d!1168444 () Bool)

(assert (=> d!1168444 e!2437333))

(declare-fun c!684463 () Bool)

(assert (=> d!1168444 (= c!684463 (> (size!31375 (_1!23687 lt!1378098)) 0))))

(assert (=> d!1168444 (= lt!1378098 e!2437332)))

(declare-fun c!684462 () Bool)

(assert (=> d!1168444 (= c!684462 ((_ is Some!8953) lt!1378097))))

(assert (=> d!1168444 (= lt!1378097 (maxPrefix!3427 thiss!20629 rules!2768 lt!1377932))))

(assert (=> d!1168444 (= (lexList!1891 thiss!20629 rules!2768 lt!1377932) lt!1378098)))

(assert (= (and d!1168444 c!684462) b!3939377))

(assert (= (and d!1168444 (not c!684462)) b!3939375))

(assert (= (and d!1168444 c!684463) b!3939376))

(assert (= (and d!1168444 (not c!684463)) b!3939373))

(assert (= (and b!3939376 res!1594338) b!3939374))

(declare-fun m!4507999 () Bool)

(assert (=> b!3939374 m!4507999))

(declare-fun m!4508001 () Bool)

(assert (=> b!3939376 m!4508001))

(assert (=> b!3939376 m!4507457))

(declare-fun m!4508003 () Bool)

(assert (=> b!3939377 m!4508003))

(declare-fun m!4508005 () Bool)

(assert (=> d!1168444 m!4508005))

(assert (=> d!1168444 m!4507477))

(assert (=> b!3939081 d!1168444))

(declare-fun b!3939378 () Bool)

(declare-fun e!2437335 () List!41945)

(assert (=> b!3939378 (= e!2437335 suffixTokens!72)))

(declare-fun b!3939381 () Bool)

(declare-fun lt!1378100 () List!41945)

(declare-fun e!2437334 () Bool)

(assert (=> b!3939381 (= e!2437334 (or (not (= suffixTokens!72 Nil!41821)) (= lt!1378100 prefixTokens!80)))))

(declare-fun d!1168446 () Bool)

(assert (=> d!1168446 e!2437334))

(declare-fun res!1594340 () Bool)

(assert (=> d!1168446 (=> (not res!1594340) (not e!2437334))))

(assert (=> d!1168446 (= res!1594340 (= (content!6311 lt!1378100) ((_ map or) (content!6311 prefixTokens!80) (content!6311 suffixTokens!72))))))

(assert (=> d!1168446 (= lt!1378100 e!2437335)))

(declare-fun c!684464 () Bool)

(assert (=> d!1168446 (= c!684464 ((_ is Nil!41821) prefixTokens!80))))

(assert (=> d!1168446 (= (++!10826 prefixTokens!80 suffixTokens!72) lt!1378100)))

(declare-fun b!3939380 () Bool)

(declare-fun res!1594339 () Bool)

(assert (=> b!3939380 (=> (not res!1594339) (not e!2437334))))

(assert (=> b!3939380 (= res!1594339 (= (size!31375 lt!1378100) (+ (size!31375 prefixTokens!80) (size!31375 suffixTokens!72))))))

(declare-fun b!3939379 () Bool)

(assert (=> b!3939379 (= e!2437335 (Cons!41821 (h!47241 prefixTokens!80) (++!10826 (t!326620 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1168446 c!684464) b!3939378))

(assert (= (and d!1168446 (not c!684464)) b!3939379))

(assert (= (and d!1168446 res!1594340) b!3939380))

(assert (= (and b!3939380 res!1594339) b!3939381))

(declare-fun m!4508007 () Bool)

(assert (=> d!1168446 m!4508007))

(declare-fun m!4508009 () Bool)

(assert (=> d!1168446 m!4508009))

(assert (=> d!1168446 m!4507947))

(declare-fun m!4508011 () Bool)

(assert (=> b!3939380 m!4508011))

(declare-fun m!4508013 () Bool)

(assert (=> b!3939380 m!4508013))

(assert (=> b!3939380 m!4507957))

(declare-fun m!4508015 () Bool)

(assert (=> b!3939379 m!4508015))

(assert (=> b!3939081 d!1168446))

(declare-fun b!3939383 () Bool)

(declare-fun e!2437337 () List!41944)

(assert (=> b!3939383 (= e!2437337 (Cons!41820 (h!47240 prefix!426) (++!10825 (t!326619 prefix!426) suffix!1176)))))

(declare-fun b!3939382 () Bool)

(assert (=> b!3939382 (= e!2437337 suffix!1176)))

(declare-fun lt!1378101 () List!41944)

(declare-fun b!3939385 () Bool)

(declare-fun e!2437336 () Bool)

(assert (=> b!3939385 (= e!2437336 (or (not (= suffix!1176 Nil!41820)) (= lt!1378101 prefix!426)))))

(declare-fun d!1168448 () Bool)

(assert (=> d!1168448 e!2437336))

(declare-fun res!1594341 () Bool)

(assert (=> d!1168448 (=> (not res!1594341) (not e!2437336))))

(assert (=> d!1168448 (= res!1594341 (= (content!6308 lt!1378101) ((_ map or) (content!6308 prefix!426) (content!6308 suffix!1176))))))

(assert (=> d!1168448 (= lt!1378101 e!2437337)))

(declare-fun c!684465 () Bool)

(assert (=> d!1168448 (= c!684465 ((_ is Nil!41820) prefix!426))))

(assert (=> d!1168448 (= (++!10825 prefix!426 suffix!1176) lt!1378101)))

(declare-fun b!3939384 () Bool)

(declare-fun res!1594342 () Bool)

(assert (=> b!3939384 (=> (not res!1594342) (not e!2437336))))

(assert (=> b!3939384 (= res!1594342 (= (size!31373 lt!1378101) (+ (size!31373 prefix!426) (size!31373 suffix!1176))))))

(assert (= (and d!1168448 c!684465) b!3939382))

(assert (= (and d!1168448 (not c!684465)) b!3939383))

(assert (= (and d!1168448 res!1594341) b!3939384))

(assert (= (and b!3939384 res!1594342) b!3939385))

(declare-fun m!4508017 () Bool)

(assert (=> b!3939383 m!4508017))

(declare-fun m!4508019 () Bool)

(assert (=> d!1168448 m!4508019))

(declare-fun m!4508021 () Bool)

(assert (=> d!1168448 m!4508021))

(declare-fun m!4508023 () Bool)

(assert (=> d!1168448 m!4508023))

(declare-fun m!4508025 () Bool)

(assert (=> b!3939384 m!4508025))

(assert (=> b!3939384 m!4507579))

(assert (=> b!3939384 m!4507423))

(assert (=> b!3939081 d!1168448))

(declare-fun b!3939388 () Bool)

(declare-fun e!2437341 () List!41945)

(assert (=> b!3939388 (= e!2437341 suffixTokens!72)))

(declare-fun lt!1378102 () List!41945)

(declare-fun e!2437340 () Bool)

(declare-fun b!3939391 () Bool)

(assert (=> b!3939391 (= e!2437340 (or (not (= suffixTokens!72 Nil!41821)) (= lt!1378102 (++!10826 lt!1377924 lt!1377915))))))

(declare-fun d!1168450 () Bool)

(assert (=> d!1168450 e!2437340))

(declare-fun res!1594346 () Bool)

(assert (=> d!1168450 (=> (not res!1594346) (not e!2437340))))

(assert (=> d!1168450 (= res!1594346 (= (content!6311 lt!1378102) ((_ map or) (content!6311 (++!10826 lt!1377924 lt!1377915)) (content!6311 suffixTokens!72))))))

(assert (=> d!1168450 (= lt!1378102 e!2437341)))

(declare-fun c!684466 () Bool)

(assert (=> d!1168450 (= c!684466 ((_ is Nil!41821) (++!10826 lt!1377924 lt!1377915)))))

(assert (=> d!1168450 (= (++!10826 (++!10826 lt!1377924 lt!1377915) suffixTokens!72) lt!1378102)))

(declare-fun b!3939390 () Bool)

(declare-fun res!1594345 () Bool)

(assert (=> b!3939390 (=> (not res!1594345) (not e!2437340))))

(assert (=> b!3939390 (= res!1594345 (= (size!31375 lt!1378102) (+ (size!31375 (++!10826 lt!1377924 lt!1377915)) (size!31375 suffixTokens!72))))))

(declare-fun b!3939389 () Bool)

(assert (=> b!3939389 (= e!2437341 (Cons!41821 (h!47241 (++!10826 lt!1377924 lt!1377915)) (++!10826 (t!326620 (++!10826 lt!1377924 lt!1377915)) suffixTokens!72)))))

(assert (= (and d!1168450 c!684466) b!3939388))

(assert (= (and d!1168450 (not c!684466)) b!3939389))

(assert (= (and d!1168450 res!1594346) b!3939390))

(assert (= (and b!3939390 res!1594345) b!3939391))

(declare-fun m!4508027 () Bool)

(assert (=> d!1168450 m!4508027))

(assert (=> d!1168450 m!4507513))

(declare-fun m!4508029 () Bool)

(assert (=> d!1168450 m!4508029))

(assert (=> d!1168450 m!4507947))

(declare-fun m!4508031 () Bool)

(assert (=> b!3939390 m!4508031))

(assert (=> b!3939390 m!4507513))

(declare-fun m!4508033 () Bool)

(assert (=> b!3939390 m!4508033))

(assert (=> b!3939390 m!4507957))

(declare-fun m!4508037 () Bool)

(assert (=> b!3939389 m!4508037))

(assert (=> b!3939060 d!1168450))

(declare-fun b!3939393 () Bool)

(declare-fun e!2437344 () List!41945)

(assert (=> b!3939393 (= e!2437344 lt!1377916)))

(declare-fun b!3939396 () Bool)

(declare-fun e!2437343 () Bool)

(declare-fun lt!1378103 () List!41945)

(assert (=> b!3939396 (= e!2437343 (or (not (= lt!1377916 Nil!41821)) (= lt!1378103 lt!1377924)))))

(declare-fun d!1168452 () Bool)

(assert (=> d!1168452 e!2437343))

(declare-fun res!1594349 () Bool)

(assert (=> d!1168452 (=> (not res!1594349) (not e!2437343))))

(assert (=> d!1168452 (= res!1594349 (= (content!6311 lt!1378103) ((_ map or) (content!6311 lt!1377924) (content!6311 lt!1377916))))))

(assert (=> d!1168452 (= lt!1378103 e!2437344)))

(declare-fun c!684467 () Bool)

(assert (=> d!1168452 (= c!684467 ((_ is Nil!41821) lt!1377924))))

(assert (=> d!1168452 (= (++!10826 lt!1377924 lt!1377916) lt!1378103)))

(declare-fun b!3939395 () Bool)

(declare-fun res!1594348 () Bool)

(assert (=> b!3939395 (=> (not res!1594348) (not e!2437343))))

(assert (=> b!3939395 (= res!1594348 (= (size!31375 lt!1378103) (+ (size!31375 lt!1377924) (size!31375 lt!1377916))))))

(declare-fun b!3939394 () Bool)

(assert (=> b!3939394 (= e!2437344 (Cons!41821 (h!47241 lt!1377924) (++!10826 (t!326620 lt!1377924) lt!1377916)))))

(assert (= (and d!1168452 c!684467) b!3939393))

(assert (= (and d!1168452 (not c!684467)) b!3939394))

(assert (= (and d!1168452 res!1594349) b!3939395))

(assert (= (and b!3939395 res!1594348) b!3939396))

(declare-fun m!4508041 () Bool)

(assert (=> d!1168452 m!4508041))

(declare-fun m!4508043 () Bool)

(assert (=> d!1168452 m!4508043))

(declare-fun m!4508045 () Bool)

(assert (=> d!1168452 m!4508045))

(declare-fun m!4508047 () Bool)

(assert (=> b!3939395 m!4508047))

(declare-fun m!4508049 () Bool)

(assert (=> b!3939395 m!4508049))

(declare-fun m!4508051 () Bool)

(assert (=> b!3939395 m!4508051))

(declare-fun m!4508053 () Bool)

(assert (=> b!3939394 m!4508053))

(assert (=> b!3939060 d!1168452))

(declare-fun d!1168456 () Bool)

(assert (=> d!1168456 (= (++!10826 (++!10826 lt!1377924 lt!1377915) suffixTokens!72) (++!10826 lt!1377924 (++!10826 lt!1377915 suffixTokens!72)))))

(declare-fun lt!1378106 () Unit!60377)

(declare-fun choose!23505 (List!41945 List!41945 List!41945) Unit!60377)

(assert (=> d!1168456 (= lt!1378106 (choose!23505 lt!1377924 lt!1377915 suffixTokens!72))))

(assert (=> d!1168456 (= (lemmaConcatAssociativity!2355 lt!1377924 lt!1377915 suffixTokens!72) lt!1378106)))

(declare-fun bs!586591 () Bool)

(assert (= bs!586591 d!1168456))

(assert (=> bs!586591 m!4507493))

(assert (=> bs!586591 m!4507513))

(assert (=> bs!586591 m!4507493))

(declare-fun m!4508055 () Bool)

(assert (=> bs!586591 m!4508055))

(declare-fun m!4508057 () Bool)

(assert (=> bs!586591 m!4508057))

(assert (=> bs!586591 m!4507513))

(assert (=> bs!586591 m!4507515))

(assert (=> b!3939060 d!1168456))

(declare-fun b!3939397 () Bool)

(declare-fun e!2437346 () List!41945)

(assert (=> b!3939397 (= e!2437346 lt!1377915)))

(declare-fun e!2437345 () Bool)

(declare-fun b!3939400 () Bool)

(declare-fun lt!1378107 () List!41945)

(assert (=> b!3939400 (= e!2437345 (or (not (= lt!1377915 Nil!41821)) (= lt!1378107 lt!1377924)))))

(declare-fun d!1168458 () Bool)

(assert (=> d!1168458 e!2437345))

(declare-fun res!1594351 () Bool)

(assert (=> d!1168458 (=> (not res!1594351) (not e!2437345))))

(assert (=> d!1168458 (= res!1594351 (= (content!6311 lt!1378107) ((_ map or) (content!6311 lt!1377924) (content!6311 lt!1377915))))))

(assert (=> d!1168458 (= lt!1378107 e!2437346)))

(declare-fun c!684468 () Bool)

(assert (=> d!1168458 (= c!684468 ((_ is Nil!41821) lt!1377924))))

(assert (=> d!1168458 (= (++!10826 lt!1377924 lt!1377915) lt!1378107)))

(declare-fun b!3939399 () Bool)

(declare-fun res!1594350 () Bool)

(assert (=> b!3939399 (=> (not res!1594350) (not e!2437345))))

(assert (=> b!3939399 (= res!1594350 (= (size!31375 lt!1378107) (+ (size!31375 lt!1377924) (size!31375 lt!1377915))))))

(declare-fun b!3939398 () Bool)

(assert (=> b!3939398 (= e!2437346 (Cons!41821 (h!47241 lt!1377924) (++!10826 (t!326620 lt!1377924) lt!1377915)))))

(assert (= (and d!1168458 c!684468) b!3939397))

(assert (= (and d!1168458 (not c!684468)) b!3939398))

(assert (= (and d!1168458 res!1594351) b!3939399))

(assert (= (and b!3939399 res!1594350) b!3939400))

(declare-fun m!4508059 () Bool)

(assert (=> d!1168458 m!4508059))

(assert (=> d!1168458 m!4508043))

(assert (=> d!1168458 m!4507945))

(declare-fun m!4508061 () Bool)

(assert (=> b!3939399 m!4508061))

(assert (=> b!3939399 m!4508049))

(assert (=> b!3939399 m!4507953))

(declare-fun m!4508063 () Bool)

(assert (=> b!3939398 m!4508063))

(assert (=> b!3939060 d!1168458))

(declare-fun d!1168460 () Bool)

(assert (=> d!1168460 (= (isEmpty!24946 lt!1377915) ((_ is Nil!41821) lt!1377915))))

(assert (=> b!3939060 d!1168460))

(declare-fun d!1168462 () Bool)

(declare-fun lt!1378108 () Int)

(assert (=> d!1168462 (>= lt!1378108 0)))

(declare-fun e!2437347 () Int)

(assert (=> d!1168462 (= lt!1378108 e!2437347)))

(declare-fun c!684469 () Bool)

(assert (=> d!1168462 (= c!684469 ((_ is Nil!41820) (_2!23688 lt!1377947)))))

(assert (=> d!1168462 (= (size!31373 (_2!23688 lt!1377947)) lt!1378108)))

(declare-fun b!3939401 () Bool)

(assert (=> b!3939401 (= e!2437347 0)))

(declare-fun b!3939402 () Bool)

(assert (=> b!3939402 (= e!2437347 (+ 1 (size!31373 (t!326619 (_2!23688 lt!1377947)))))))

(assert (= (and d!1168462 c!684469) b!3939401))

(assert (= (and d!1168462 (not c!684469)) b!3939402))

(declare-fun m!4508065 () Bool)

(assert (=> b!3939402 m!4508065))

(assert (=> b!3939040 d!1168462))

(declare-fun b!3939452 () Bool)

(declare-fun e!2437370 () Bool)

(declare-datatypes ((tuple2!41110 0))(
  ( (tuple2!41111 (_1!23689 List!41944) (_2!23689 List!41944)) )
))
(declare-fun findLongestMatchInner!1271 (Regex!11439 List!41944 Int List!41944 List!41944 Int) tuple2!41110)

(assert (=> b!3939452 (= e!2437370 (matchR!5491 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (_1!23689 (findLongestMatchInner!1271 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) Nil!41820 (size!31373 Nil!41820) lt!1377932 lt!1377932 (size!31373 lt!1377932)))))))

(declare-fun b!3939453 () Bool)

(declare-fun e!2437371 () Option!8954)

(declare-fun lt!1378139 () tuple2!41110)

(declare-fun size!31376 (BalanceConc!25084) Int)

(assert (=> b!3939453 (= e!2437371 (Some!8953 (tuple2!41109 (Token!12207 (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (seqFromList!4801 (_1!23689 lt!1378139))) (rule!9490 (_1!23688 (v!39283 lt!1377909))) (size!31376 (seqFromList!4801 (_1!23689 lt!1378139))) (_1!23689 lt!1378139)) (_2!23689 lt!1378139))))))

(declare-fun lt!1378140 () Unit!60377)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1244 (Regex!11439 List!41944) Unit!60377)

(assert (=> b!3939453 (= lt!1378140 (longestMatchIsAcceptedByMatchOrIsEmpty!1244 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) lt!1377932))))

(declare-fun res!1594388 () Bool)

(assert (=> b!3939453 (= res!1594388 (isEmpty!24944 (_1!23689 (findLongestMatchInner!1271 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) Nil!41820 (size!31373 Nil!41820) lt!1377932 lt!1377932 (size!31373 lt!1377932)))))))

(assert (=> b!3939453 (=> res!1594388 e!2437370)))

(assert (=> b!3939453 e!2437370))

(declare-fun lt!1378137 () Unit!60377)

(assert (=> b!3939453 (= lt!1378137 lt!1378140)))

(declare-fun lt!1378136 () Unit!60377)

(declare-fun lemmaSemiInverse!1777 (TokenValueInjection!12956 BalanceConc!25084) Unit!60377)

(assert (=> b!3939453 (= lt!1378136 (lemmaSemiInverse!1777 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (seqFromList!4801 (_1!23689 lt!1378139))))))

(declare-fun b!3939454 () Bool)

(declare-fun e!2437372 () Bool)

(declare-fun lt!1378138 () Option!8954)

(assert (=> b!3939454 (= e!2437372 (= (size!31372 (_1!23688 (get!13821 lt!1378138))) (size!31373 (originalCharacters!7134 (_1!23688 (get!13821 lt!1378138))))))))

(declare-fun b!3939455 () Bool)

(assert (=> b!3939455 (= e!2437371 None!8953)))

(declare-fun b!3939457 () Bool)

(declare-fun res!1594393 () Bool)

(assert (=> b!3939457 (=> (not res!1594393) (not e!2437372))))

(assert (=> b!3939457 (= res!1594393 (= (++!10825 (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378138)))) (_2!23688 (get!13821 lt!1378138))) lt!1377932))))

(declare-fun b!3939458 () Bool)

(declare-fun res!1594392 () Bool)

(assert (=> b!3939458 (=> (not res!1594392) (not e!2437372))))

(assert (=> b!3939458 (= res!1594392 (< (size!31373 (_2!23688 (get!13821 lt!1378138))) (size!31373 lt!1377932)))))

(declare-fun d!1168464 () Bool)

(declare-fun e!2437373 () Bool)

(assert (=> d!1168464 e!2437373))

(declare-fun res!1594390 () Bool)

(assert (=> d!1168464 (=> res!1594390 e!2437373)))

(assert (=> d!1168464 (= res!1594390 (isEmpty!24947 lt!1378138))))

(assert (=> d!1168464 (= lt!1378138 e!2437371)))

(declare-fun c!684477 () Bool)

(assert (=> d!1168464 (= c!684477 (isEmpty!24944 (_1!23689 lt!1378139)))))

(declare-fun findLongestMatch!1184 (Regex!11439 List!41944) tuple2!41110)

(assert (=> d!1168464 (= lt!1378139 (findLongestMatch!1184 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) lt!1377932))))

(assert (=> d!1168464 (ruleValid!2482 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))))))

(assert (=> d!1168464 (= (maxPrefixOneRule!2497 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))) lt!1377932) lt!1378138)))

(declare-fun b!3939456 () Bool)

(declare-fun res!1594391 () Bool)

(assert (=> b!3939456 (=> (not res!1594391) (not e!2437372))))

(assert (=> b!3939456 (= res!1594391 (= (value!206853 (_1!23688 (get!13821 lt!1378138))) (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (get!13821 lt!1378138)))) (seqFromList!4801 (originalCharacters!7134 (_1!23688 (get!13821 lt!1378138)))))))))

(declare-fun b!3939459 () Bool)

(declare-fun res!1594387 () Bool)

(assert (=> b!3939459 (=> (not res!1594387) (not e!2437372))))

(assert (=> b!3939459 (= res!1594387 (= (rule!9490 (_1!23688 (get!13821 lt!1378138))) (rule!9490 (_1!23688 (v!39283 lt!1377909)))))))

(declare-fun b!3939460 () Bool)

(assert (=> b!3939460 (= e!2437373 e!2437372)))

(declare-fun res!1594389 () Bool)

(assert (=> b!3939460 (=> (not res!1594389) (not e!2437372))))

(assert (=> b!3939460 (= res!1594389 (matchR!5491 (regex!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378138))))))))

(assert (= (and d!1168464 c!684477) b!3939455))

(assert (= (and d!1168464 (not c!684477)) b!3939453))

(assert (= (and b!3939453 (not res!1594388)) b!3939452))

(assert (= (and d!1168464 (not res!1594390)) b!3939460))

(assert (= (and b!3939460 res!1594389) b!3939457))

(assert (= (and b!3939457 res!1594393) b!3939458))

(assert (= (and b!3939458 res!1594392) b!3939459))

(assert (= (and b!3939459 res!1594387) b!3939456))

(assert (= (and b!3939456 res!1594391) b!3939454))

(declare-fun m!4508111 () Bool)

(assert (=> b!3939456 m!4508111))

(declare-fun m!4508113 () Bool)

(assert (=> b!3939456 m!4508113))

(assert (=> b!3939456 m!4508113))

(declare-fun m!4508115 () Bool)

(assert (=> b!3939456 m!4508115))

(assert (=> b!3939452 m!4507505))

(assert (=> b!3939452 m!4507457))

(assert (=> b!3939452 m!4507505))

(assert (=> b!3939452 m!4507457))

(declare-fun m!4508117 () Bool)

(assert (=> b!3939452 m!4508117))

(declare-fun m!4508119 () Bool)

(assert (=> b!3939452 m!4508119))

(assert (=> b!3939459 m!4508111))

(assert (=> b!3939457 m!4508111))

(declare-fun m!4508121 () Bool)

(assert (=> b!3939457 m!4508121))

(assert (=> b!3939457 m!4508121))

(declare-fun m!4508123 () Bool)

(assert (=> b!3939457 m!4508123))

(assert (=> b!3939457 m!4508123))

(declare-fun m!4508125 () Bool)

(assert (=> b!3939457 m!4508125))

(declare-fun m!4508127 () Bool)

(assert (=> b!3939453 m!4508127))

(declare-fun m!4508129 () Bool)

(assert (=> b!3939453 m!4508129))

(assert (=> b!3939453 m!4508127))

(declare-fun m!4508131 () Bool)

(assert (=> b!3939453 m!4508131))

(assert (=> b!3939453 m!4508127))

(assert (=> b!3939453 m!4507505))

(assert (=> b!3939453 m!4507457))

(assert (=> b!3939453 m!4508127))

(declare-fun m!4508133 () Bool)

(assert (=> b!3939453 m!4508133))

(declare-fun m!4508135 () Bool)

(assert (=> b!3939453 m!4508135))

(declare-fun m!4508137 () Bool)

(assert (=> b!3939453 m!4508137))

(assert (=> b!3939453 m!4507505))

(assert (=> b!3939453 m!4507457))

(assert (=> b!3939453 m!4508117))

(assert (=> b!3939454 m!4508111))

(declare-fun m!4508139 () Bool)

(assert (=> b!3939454 m!4508139))

(declare-fun m!4508141 () Bool)

(assert (=> d!1168464 m!4508141))

(declare-fun m!4508143 () Bool)

(assert (=> d!1168464 m!4508143))

(declare-fun m!4508145 () Bool)

(assert (=> d!1168464 m!4508145))

(assert (=> d!1168464 m!4507533))

(assert (=> b!3939458 m!4508111))

(declare-fun m!4508147 () Bool)

(assert (=> b!3939458 m!4508147))

(assert (=> b!3939458 m!4507457))

(assert (=> b!3939460 m!4508111))

(assert (=> b!3939460 m!4508121))

(assert (=> b!3939460 m!4508121))

(assert (=> b!3939460 m!4508123))

(assert (=> b!3939460 m!4508123))

(declare-fun m!4508149 () Bool)

(assert (=> b!3939460 m!4508149))

(assert (=> b!3939040 d!1168464))

(declare-fun d!1168474 () Bool)

(assert (=> d!1168474 (= (maxPrefixOneRule!2497 thiss!20629 (rule!9490 (_1!23688 (v!39283 lt!1377909))) lt!1377932) (Some!8953 (tuple2!41109 (Token!12207 (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))) (seqFromList!4801 lt!1377938)) (rule!9490 (_1!23688 (v!39283 lt!1377909))) (size!31373 lt!1377938) lt!1377938) (_2!23688 (v!39283 lt!1377909)))))))

(declare-fun lt!1378151 () Unit!60377)

(declare-fun choose!23507 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41944 Rule!12868) Unit!60377)

(assert (=> d!1168474 (= lt!1378151 (choose!23507 thiss!20629 rules!2768 lt!1377938 lt!1377932 (_2!23688 (v!39283 lt!1377909)) (rule!9490 (_1!23688 (v!39283 lt!1377909)))))))

(assert (=> d!1168474 (not (isEmpty!24945 rules!2768))))

(assert (=> d!1168474 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1365 thiss!20629 rules!2768 lt!1377938 lt!1377932 (_2!23688 (v!39283 lt!1377909)) (rule!9490 (_1!23688 (v!39283 lt!1377909)))) lt!1378151)))

(declare-fun bs!586593 () Bool)

(assert (= bs!586593 d!1168474))

(declare-fun m!4508183 () Bool)

(assert (=> bs!586593 m!4508183))

(assert (=> bs!586593 m!4507541))

(assert (=> bs!586593 m!4507465))

(assert (=> bs!586593 m!4507455))

(assert (=> bs!586593 m!4507545))

(assert (=> bs!586593 m!4507559))

(assert (=> bs!586593 m!4507545))

(assert (=> b!3939040 d!1168474))

(declare-fun d!1168480 () Bool)

(assert (=> d!1168480 (= (get!13821 lt!1377909) (v!39283 lt!1377909))))

(assert (=> b!3939040 d!1168480))

(declare-fun d!1168482 () Bool)

(declare-fun lt!1378154 () Int)

(assert (=> d!1168482 (>= lt!1378154 0)))

(declare-fun e!2437377 () Int)

(assert (=> d!1168482 (= lt!1378154 e!2437377)))

(declare-fun c!684479 () Bool)

(assert (=> d!1168482 (= c!684479 ((_ is Nil!41820) lt!1377932))))

(assert (=> d!1168482 (= (size!31373 lt!1377932) lt!1378154)))

(declare-fun b!3939470 () Bool)

(assert (=> b!3939470 (= e!2437377 0)))

(declare-fun b!3939471 () Bool)

(assert (=> b!3939471 (= e!2437377 (+ 1 (size!31373 (t!326619 lt!1377932))))))

(assert (= (and d!1168482 c!684479) b!3939470))

(assert (= (and d!1168482 (not c!684479)) b!3939471))

(declare-fun m!4508185 () Bool)

(assert (=> b!3939471 m!4508185))

(assert (=> b!3939040 d!1168482))

(declare-fun d!1168484 () Bool)

(assert (=> d!1168484 (= (inv!56018 (tag!7394 (rule!9490 (h!47241 prefixTokens!80)))) (= (mod (str.len (value!206852 (tag!7394 (rule!9490 (h!47241 prefixTokens!80))))) 2) 0))))

(assert (=> b!3939082 d!1168484))

(declare-fun d!1168488 () Bool)

(declare-fun res!1594403 () Bool)

(declare-fun e!2437380 () Bool)

(assert (=> d!1168488 (=> (not res!1594403) (not e!2437380))))

(declare-fun semiInverseModEq!2811 (Int Int) Bool)

(assert (=> d!1168488 (= res!1594403 (semiInverseModEq!2811 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (toValue!8994 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))))))

(assert (=> d!1168488 (= (inv!56022 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) e!2437380)))

(declare-fun b!3939474 () Bool)

(declare-fun equivClasses!2710 (Int Int) Bool)

(assert (=> b!3939474 (= e!2437380 (equivClasses!2710 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (toValue!8994 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))))))

(assert (= (and d!1168488 res!1594403) b!3939474))

(declare-fun m!4508191 () Bool)

(assert (=> d!1168488 m!4508191))

(declare-fun m!4508193 () Bool)

(assert (=> b!3939474 m!4508193))

(assert (=> b!3939082 d!1168488))

(declare-fun d!1168490 () Bool)

(assert (=> d!1168490 (= (isEmpty!24944 suffix!1176) ((_ is Nil!41820) suffix!1176))))

(assert (=> b!3939061 d!1168490))

(declare-fun b!3939475 () Bool)

(declare-fun e!2437383 () Bool)

(declare-fun lt!1378157 () tuple2!41106)

(assert (=> b!3939475 (= e!2437383 (= (_2!23687 lt!1378157) lt!1377954))))

(declare-fun b!3939476 () Bool)

(declare-fun e!2437381 () Bool)

(assert (=> b!3939476 (= e!2437381 (not (isEmpty!24946 (_1!23687 lt!1378157))))))

(declare-fun b!3939477 () Bool)

(declare-fun e!2437382 () tuple2!41106)

(assert (=> b!3939477 (= e!2437382 (tuple2!41107 Nil!41821 lt!1377954))))

(declare-fun b!3939478 () Bool)

(assert (=> b!3939478 (= e!2437383 e!2437381)))

(declare-fun res!1594404 () Bool)

(assert (=> b!3939478 (= res!1594404 (< (size!31373 (_2!23687 lt!1378157)) (size!31373 lt!1377954)))))

(assert (=> b!3939478 (=> (not res!1594404) (not e!2437381))))

(declare-fun b!3939479 () Bool)

(declare-fun lt!1378156 () Option!8954)

(declare-fun lt!1378158 () tuple2!41106)

(assert (=> b!3939479 (= e!2437382 (tuple2!41107 (Cons!41821 (_1!23688 (v!39283 lt!1378156)) (_1!23687 lt!1378158)) (_2!23687 lt!1378158)))))

(assert (=> b!3939479 (= lt!1378158 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1378156))))))

(declare-fun d!1168492 () Bool)

(assert (=> d!1168492 e!2437383))

(declare-fun c!684481 () Bool)

(assert (=> d!1168492 (= c!684481 (> (size!31375 (_1!23687 lt!1378157)) 0))))

(assert (=> d!1168492 (= lt!1378157 e!2437382)))

(declare-fun c!684480 () Bool)

(assert (=> d!1168492 (= c!684480 ((_ is Some!8953) lt!1378156))))

(assert (=> d!1168492 (= lt!1378156 (maxPrefix!3427 thiss!20629 rules!2768 lt!1377954))))

(assert (=> d!1168492 (= (lexList!1891 thiss!20629 rules!2768 lt!1377954) lt!1378157)))

(assert (= (and d!1168492 c!684480) b!3939479))

(assert (= (and d!1168492 (not c!684480)) b!3939477))

(assert (= (and d!1168492 c!684481) b!3939478))

(assert (= (and d!1168492 (not c!684481)) b!3939475))

(assert (= (and b!3939478 res!1594404) b!3939476))

(declare-fun m!4508195 () Bool)

(assert (=> b!3939476 m!4508195))

(declare-fun m!4508197 () Bool)

(assert (=> b!3939478 m!4508197))

(assert (=> b!3939478 m!4507977))

(declare-fun m!4508199 () Bool)

(assert (=> b!3939479 m!4508199))

(declare-fun m!4508201 () Bool)

(assert (=> d!1168492 m!4508201))

(declare-fun m!4508203 () Bool)

(assert (=> d!1168492 m!4508203))

(assert (=> b!3939041 d!1168492))

(declare-fun d!1168494 () Bool)

(declare-fun lt!1378159 () Int)

(assert (=> d!1168494 (>= lt!1378159 0)))

(declare-fun e!2437384 () Int)

(assert (=> d!1168494 (= lt!1378159 e!2437384)))

(declare-fun c!684482 () Bool)

(assert (=> d!1168494 (= c!684482 ((_ is Nil!41820) (originalCharacters!7134 (_1!23688 (v!39283 lt!1377909)))))))

(assert (=> d!1168494 (= (size!31373 (originalCharacters!7134 (_1!23688 (v!39283 lt!1377909)))) lt!1378159)))

(declare-fun b!3939480 () Bool)

(assert (=> b!3939480 (= e!2437384 0)))

(declare-fun b!3939481 () Bool)

(assert (=> b!3939481 (= e!2437384 (+ 1 (size!31373 (t!326619 (originalCharacters!7134 (_1!23688 (v!39283 lt!1377909)))))))))

(assert (= (and d!1168494 c!684482) b!3939480))

(assert (= (and d!1168494 (not c!684482)) b!3939481))

(declare-fun m!4508205 () Bool)

(assert (=> b!3939481 m!4508205))

(assert (=> b!3939083 d!1168494))

(declare-fun d!1168496 () Bool)

(declare-fun e!2437387 () Bool)

(assert (=> d!1168496 e!2437387))

(declare-fun res!1594408 () Bool)

(assert (=> d!1168496 (=> res!1594408 e!2437387)))

(declare-fun lt!1378160 () Bool)

(assert (=> d!1168496 (= res!1594408 (not lt!1378160))))

(declare-fun e!2437386 () Bool)

(assert (=> d!1168496 (= lt!1378160 e!2437386)))

(declare-fun res!1594407 () Bool)

(assert (=> d!1168496 (=> res!1594407 e!2437386)))

(assert (=> d!1168496 (= res!1594407 ((_ is Nil!41820) lt!1377940))))

(assert (=> d!1168496 (= (isPrefix!3629 lt!1377940 (_2!23688 (v!39283 lt!1377909))) lt!1378160)))

(declare-fun b!3939484 () Bool)

(declare-fun e!2437385 () Bool)

(assert (=> b!3939484 (= e!2437385 (isPrefix!3629 (tail!6099 lt!1377940) (tail!6099 (_2!23688 (v!39283 lt!1377909)))))))

(declare-fun b!3939482 () Bool)

(assert (=> b!3939482 (= e!2437386 e!2437385)))

(declare-fun res!1594405 () Bool)

(assert (=> b!3939482 (=> (not res!1594405) (not e!2437385))))

(assert (=> b!3939482 (= res!1594405 (not ((_ is Nil!41820) (_2!23688 (v!39283 lt!1377909)))))))

(declare-fun b!3939485 () Bool)

(assert (=> b!3939485 (= e!2437387 (>= (size!31373 (_2!23688 (v!39283 lt!1377909))) (size!31373 lt!1377940)))))

(declare-fun b!3939483 () Bool)

(declare-fun res!1594406 () Bool)

(assert (=> b!3939483 (=> (not res!1594406) (not e!2437385))))

(assert (=> b!3939483 (= res!1594406 (= (head!8373 lt!1377940) (head!8373 (_2!23688 (v!39283 lt!1377909)))))))

(assert (= (and d!1168496 (not res!1594407)) b!3939482))

(assert (= (and b!3939482 res!1594405) b!3939483))

(assert (= (and b!3939483 res!1594406) b!3939484))

(assert (= (and d!1168496 (not res!1594408)) b!3939485))

(assert (=> b!3939484 m!4507971))

(declare-fun m!4508207 () Bool)

(assert (=> b!3939484 m!4508207))

(assert (=> b!3939484 m!4507971))

(assert (=> b!3939484 m!4508207))

(declare-fun m!4508209 () Bool)

(assert (=> b!3939484 m!4508209))

(assert (=> b!3939485 m!4507425))

(assert (=> b!3939485 m!4507979))

(assert (=> b!3939483 m!4507981))

(declare-fun m!4508211 () Bool)

(assert (=> b!3939483 m!4508211))

(assert (=> b!3939062 d!1168496))

(declare-fun b!3939487 () Bool)

(declare-fun e!2437389 () List!41944)

(assert (=> b!3939487 (= e!2437389 (Cons!41820 (h!47240 lt!1377938) (++!10825 (t!326619 lt!1377938) lt!1377954)))))

(declare-fun b!3939486 () Bool)

(assert (=> b!3939486 (= e!2437389 lt!1377954)))

(declare-fun lt!1378161 () List!41944)

(declare-fun b!3939489 () Bool)

(declare-fun e!2437388 () Bool)

(assert (=> b!3939489 (= e!2437388 (or (not (= lt!1377954 Nil!41820)) (= lt!1378161 lt!1377938)))))

(declare-fun d!1168498 () Bool)

(assert (=> d!1168498 e!2437388))

(declare-fun res!1594409 () Bool)

(assert (=> d!1168498 (=> (not res!1594409) (not e!2437388))))

(assert (=> d!1168498 (= res!1594409 (= (content!6308 lt!1378161) ((_ map or) (content!6308 lt!1377938) (content!6308 lt!1377954))))))

(assert (=> d!1168498 (= lt!1378161 e!2437389)))

(declare-fun c!684483 () Bool)

(assert (=> d!1168498 (= c!684483 ((_ is Nil!41820) lt!1377938))))

(assert (=> d!1168498 (= (++!10825 lt!1377938 lt!1377954) lt!1378161)))

(declare-fun b!3939488 () Bool)

(declare-fun res!1594410 () Bool)

(assert (=> b!3939488 (=> (not res!1594410) (not e!2437388))))

(assert (=> b!3939488 (= res!1594410 (= (size!31373 lt!1378161) (+ (size!31373 lt!1377938) (size!31373 lt!1377954))))))

(assert (= (and d!1168498 c!684483) b!3939486))

(assert (= (and d!1168498 (not c!684483)) b!3939487))

(assert (= (and d!1168498 res!1594409) b!3939488))

(assert (= (and b!3939488 res!1594410) b!3939489))

(declare-fun m!4508213 () Bool)

(assert (=> b!3939487 m!4508213))

(declare-fun m!4508215 () Bool)

(assert (=> d!1168498 m!4508215))

(assert (=> d!1168498 m!4507619))

(declare-fun m!4508217 () Bool)

(assert (=> d!1168498 m!4508217))

(declare-fun m!4508219 () Bool)

(assert (=> b!3939488 m!4508219))

(assert (=> b!3939488 m!4507541))

(assert (=> b!3939488 m!4507977))

(assert (=> b!3939079 d!1168498))

(declare-fun b!3939491 () Bool)

(declare-fun e!2437391 () List!41944)

(assert (=> b!3939491 (= e!2437391 (Cons!41820 (h!47240 lt!1377940) (++!10825 (t!326619 lt!1377940) suffix!1176)))))

(declare-fun b!3939490 () Bool)

(assert (=> b!3939490 (= e!2437391 suffix!1176)))

(declare-fun b!3939493 () Bool)

(declare-fun lt!1378162 () List!41944)

(declare-fun e!2437390 () Bool)

(assert (=> b!3939493 (= e!2437390 (or (not (= suffix!1176 Nil!41820)) (= lt!1378162 lt!1377940)))))

(declare-fun d!1168500 () Bool)

(assert (=> d!1168500 e!2437390))

(declare-fun res!1594411 () Bool)

(assert (=> d!1168500 (=> (not res!1594411) (not e!2437390))))

(assert (=> d!1168500 (= res!1594411 (= (content!6308 lt!1378162) ((_ map or) (content!6308 lt!1377940) (content!6308 suffix!1176))))))

(assert (=> d!1168500 (= lt!1378162 e!2437391)))

(declare-fun c!684484 () Bool)

(assert (=> d!1168500 (= c!684484 ((_ is Nil!41820) lt!1377940))))

(assert (=> d!1168500 (= (++!10825 lt!1377940 suffix!1176) lt!1378162)))

(declare-fun b!3939492 () Bool)

(declare-fun res!1594412 () Bool)

(assert (=> b!3939492 (=> (not res!1594412) (not e!2437390))))

(assert (=> b!3939492 (= res!1594412 (= (size!31373 lt!1378162) (+ (size!31373 lt!1377940) (size!31373 suffix!1176))))))

(assert (= (and d!1168500 c!684484) b!3939490))

(assert (= (and d!1168500 (not c!684484)) b!3939491))

(assert (= (and d!1168500 res!1594411) b!3939492))

(assert (= (and b!3939492 res!1594412) b!3939493))

(declare-fun m!4508221 () Bool)

(assert (=> b!3939491 m!4508221))

(declare-fun m!4508223 () Bool)

(assert (=> d!1168500 m!4508223))

(declare-fun m!4508225 () Bool)

(assert (=> d!1168500 m!4508225))

(assert (=> d!1168500 m!4508023))

(declare-fun m!4508227 () Bool)

(assert (=> b!3939492 m!4508227))

(assert (=> b!3939492 m!4507979))

(assert (=> b!3939492 m!4507423))

(assert (=> b!3939079 d!1168500))

(declare-fun d!1168502 () Bool)

(assert (=> d!1168502 (= (++!10825 (++!10825 lt!1377938 lt!1377940) suffix!1176) (++!10825 lt!1377938 (++!10825 lt!1377940 suffix!1176)))))

(declare-fun lt!1378165 () Unit!60377)

(declare-fun choose!23509 (List!41944 List!41944 List!41944) Unit!60377)

(assert (=> d!1168502 (= lt!1378165 (choose!23509 lt!1377938 lt!1377940 suffix!1176))))

(assert (=> d!1168502 (= (lemmaConcatAssociativity!2356 lt!1377938 lt!1377940 suffix!1176) lt!1378165)))

(declare-fun bs!586595 () Bool)

(assert (= bs!586595 d!1168502))

(declare-fun m!4508229 () Bool)

(assert (=> bs!586595 m!4508229))

(assert (=> bs!586595 m!4507415))

(assert (=> bs!586595 m!4507435))

(declare-fun m!4508231 () Bool)

(assert (=> bs!586595 m!4508231))

(assert (=> bs!586595 m!4507435))

(assert (=> bs!586595 m!4507415))

(declare-fun m!4508233 () Bool)

(assert (=> bs!586595 m!4508233))

(assert (=> b!3939079 d!1168502))

(declare-fun d!1168504 () Bool)

(assert (=> d!1168504 (not (= (lexList!1891 thiss!20629 rules!2768 (_2!23688 lt!1377947)) (tuple2!41107 (++!10826 lt!1377953 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1378181 () Unit!60377)

(declare-fun choose!23510 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41945 List!41944 List!41945) Unit!60377)

(assert (=> d!1168504 (= lt!1378181 (choose!23510 thiss!20629 rules!2768 suffix!1176 (_2!23688 lt!1377947) suffixTokens!72 suffixResult!91 lt!1377953))))

(assert (=> d!1168504 (not (isEmpty!24945 rules!2768))))

(assert (=> d!1168504 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!134 thiss!20629 rules!2768 suffix!1176 (_2!23688 lt!1377947) suffixTokens!72 suffixResult!91 lt!1377953) lt!1378181)))

(declare-fun bs!586597 () Bool)

(assert (= bs!586597 d!1168504))

(assert (=> bs!586597 m!4507463))

(assert (=> bs!586597 m!4507473))

(declare-fun m!4508283 () Bool)

(assert (=> bs!586597 m!4508283))

(assert (=> bs!586597 m!4507465))

(assert (=> b!3939058 d!1168504))

(declare-fun b!3939528 () Bool)

(declare-fun e!2437413 () List!41945)

(assert (=> b!3939528 (= e!2437413 suffixTokens!72)))

(declare-fun lt!1378182 () List!41945)

(declare-fun b!3939531 () Bool)

(declare-fun e!2437412 () Bool)

(assert (=> b!3939531 (= e!2437412 (or (not (= suffixTokens!72 Nil!41821)) (= lt!1378182 lt!1377953)))))

(declare-fun d!1168522 () Bool)

(assert (=> d!1168522 e!2437412))

(declare-fun res!1594422 () Bool)

(assert (=> d!1168522 (=> (not res!1594422) (not e!2437412))))

(assert (=> d!1168522 (= res!1594422 (= (content!6311 lt!1378182) ((_ map or) (content!6311 lt!1377953) (content!6311 suffixTokens!72))))))

(assert (=> d!1168522 (= lt!1378182 e!2437413)))

(declare-fun c!684498 () Bool)

(assert (=> d!1168522 (= c!684498 ((_ is Nil!41821) lt!1377953))))

(assert (=> d!1168522 (= (++!10826 lt!1377953 suffixTokens!72) lt!1378182)))

(declare-fun b!3939530 () Bool)

(declare-fun res!1594421 () Bool)

(assert (=> b!3939530 (=> (not res!1594421) (not e!2437412))))

(assert (=> b!3939530 (= res!1594421 (= (size!31375 lt!1378182) (+ (size!31375 lt!1377953) (size!31375 suffixTokens!72))))))

(declare-fun b!3939529 () Bool)

(assert (=> b!3939529 (= e!2437413 (Cons!41821 (h!47241 lt!1377953) (++!10826 (t!326620 lt!1377953) suffixTokens!72)))))

(assert (= (and d!1168522 c!684498) b!3939528))

(assert (= (and d!1168522 (not c!684498)) b!3939529))

(assert (= (and d!1168522 res!1594422) b!3939530))

(assert (= (and b!3939530 res!1594421) b!3939531))

(declare-fun m!4508285 () Bool)

(assert (=> d!1168522 m!4508285))

(declare-fun m!4508287 () Bool)

(assert (=> d!1168522 m!4508287))

(assert (=> d!1168522 m!4507947))

(declare-fun m!4508289 () Bool)

(assert (=> b!3939530 m!4508289))

(declare-fun m!4508291 () Bool)

(assert (=> b!3939530 m!4508291))

(assert (=> b!3939530 m!4507957))

(declare-fun m!4508293 () Bool)

(assert (=> b!3939529 m!4508293))

(assert (=> b!3939058 d!1168522))

(declare-fun d!1168524 () Bool)

(declare-fun e!2437416 () Bool)

(assert (=> d!1168524 e!2437416))

(declare-fun res!1594426 () Bool)

(assert (=> d!1168524 (=> res!1594426 e!2437416)))

(declare-fun lt!1378183 () Bool)

(assert (=> d!1168524 (= res!1594426 (not lt!1378183))))

(declare-fun e!2437415 () Bool)

(assert (=> d!1168524 (= lt!1378183 e!2437415)))

(declare-fun res!1594425 () Bool)

(assert (=> d!1168524 (=> res!1594425 e!2437415)))

(assert (=> d!1168524 (= res!1594425 ((_ is Nil!41820) prefix!426))))

(assert (=> d!1168524 (= (isPrefix!3629 prefix!426 lt!1377932) lt!1378183)))

(declare-fun b!3939534 () Bool)

(declare-fun e!2437414 () Bool)

(assert (=> b!3939534 (= e!2437414 (isPrefix!3629 (tail!6099 prefix!426) (tail!6099 lt!1377932)))))

(declare-fun b!3939532 () Bool)

(assert (=> b!3939532 (= e!2437415 e!2437414)))

(declare-fun res!1594423 () Bool)

(assert (=> b!3939532 (=> (not res!1594423) (not e!2437414))))

(assert (=> b!3939532 (= res!1594423 (not ((_ is Nil!41820) lt!1377932)))))

(declare-fun b!3939535 () Bool)

(assert (=> b!3939535 (= e!2437416 (>= (size!31373 lt!1377932) (size!31373 prefix!426)))))

(declare-fun b!3939533 () Bool)

(declare-fun res!1594424 () Bool)

(assert (=> b!3939533 (=> (not res!1594424) (not e!2437414))))

(assert (=> b!3939533 (= res!1594424 (= (head!8373 prefix!426) (head!8373 lt!1377932)))))

(assert (= (and d!1168524 (not res!1594425)) b!3939532))

(assert (= (and b!3939532 res!1594423) b!3939533))

(assert (= (and b!3939533 res!1594424) b!3939534))

(assert (= (and d!1168524 (not res!1594426)) b!3939535))

(declare-fun m!4508295 () Bool)

(assert (=> b!3939534 m!4508295))

(assert (=> b!3939534 m!4507627))

(assert (=> b!3939534 m!4508295))

(assert (=> b!3939534 m!4507627))

(declare-fun m!4508297 () Bool)

(assert (=> b!3939534 m!4508297))

(assert (=> b!3939535 m!4507457))

(assert (=> b!3939535 m!4507579))

(declare-fun m!4508299 () Bool)

(assert (=> b!3939533 m!4508299))

(declare-fun m!4508301 () Bool)

(assert (=> b!3939533 m!4508301))

(assert (=> b!3939080 d!1168524))

(declare-fun d!1168526 () Bool)

(assert (=> d!1168526 (isPrefix!3629 prefix!426 (++!10825 prefix!426 suffix!1176))))

(declare-fun lt!1378184 () Unit!60377)

(assert (=> d!1168526 (= lt!1378184 (choose!23498 prefix!426 suffix!1176))))

(assert (=> d!1168526 (= (lemmaConcatTwoListThenFirstIsPrefix!2492 prefix!426 suffix!1176) lt!1378184)))

(declare-fun bs!586598 () Bool)

(assert (= bs!586598 d!1168526))

(assert (=> bs!586598 m!4507575))

(assert (=> bs!586598 m!4507575))

(declare-fun m!4508303 () Bool)

(assert (=> bs!586598 m!4508303))

(declare-fun m!4508305 () Bool)

(assert (=> bs!586598 m!4508305))

(assert (=> b!3939080 d!1168526))

(declare-fun d!1168528 () Bool)

(declare-fun e!2437419 () Bool)

(assert (=> d!1168528 e!2437419))

(declare-fun res!1594430 () Bool)

(assert (=> d!1168528 (=> res!1594430 e!2437419)))

(declare-fun lt!1378185 () Bool)

(assert (=> d!1168528 (= res!1594430 (not lt!1378185))))

(declare-fun e!2437418 () Bool)

(assert (=> d!1168528 (= lt!1378185 e!2437418)))

(declare-fun res!1594429 () Bool)

(assert (=> d!1168528 (=> res!1594429 e!2437418)))

(assert (=> d!1168528 (= res!1594429 ((_ is Nil!41820) lt!1377938))))

(assert (=> d!1168528 (= (isPrefix!3629 lt!1377938 prefix!426) lt!1378185)))

(declare-fun b!3939538 () Bool)

(declare-fun e!2437417 () Bool)

(assert (=> b!3939538 (= e!2437417 (isPrefix!3629 (tail!6099 lt!1377938) (tail!6099 prefix!426)))))

(declare-fun b!3939536 () Bool)

(assert (=> b!3939536 (= e!2437418 e!2437417)))

(declare-fun res!1594427 () Bool)

(assert (=> b!3939536 (=> (not res!1594427) (not e!2437417))))

(assert (=> b!3939536 (= res!1594427 (not ((_ is Nil!41820) prefix!426)))))

(declare-fun b!3939539 () Bool)

(assert (=> b!3939539 (= e!2437419 (>= (size!31373 prefix!426) (size!31373 lt!1377938)))))

(declare-fun b!3939537 () Bool)

(declare-fun res!1594428 () Bool)

(assert (=> b!3939537 (=> (not res!1594428) (not e!2437417))))

(assert (=> b!3939537 (= res!1594428 (= (head!8373 lt!1377938) (head!8373 prefix!426)))))

(assert (= (and d!1168528 (not res!1594429)) b!3939536))

(assert (= (and b!3939536 res!1594427) b!3939537))

(assert (= (and b!3939537 res!1594428) b!3939538))

(assert (= (and d!1168528 (not res!1594430)) b!3939539))

(assert (=> b!3939538 m!4507631))

(assert (=> b!3939538 m!4508295))

(assert (=> b!3939538 m!4507631))

(assert (=> b!3939538 m!4508295))

(declare-fun m!4508307 () Bool)

(assert (=> b!3939538 m!4508307))

(assert (=> b!3939539 m!4507579))

(assert (=> b!3939539 m!4507541))

(assert (=> b!3939537 m!4507639))

(assert (=> b!3939537 m!4508299))

(assert (=> b!3939080 d!1168528))

(declare-fun d!1168530 () Bool)

(declare-fun lt!1378186 () Int)

(assert (=> d!1168530 (>= lt!1378186 0)))

(declare-fun e!2437420 () Int)

(assert (=> d!1168530 (= lt!1378186 e!2437420)))

(declare-fun c!684499 () Bool)

(assert (=> d!1168530 (= c!684499 ((_ is Nil!41820) prefix!426))))

(assert (=> d!1168530 (= (size!31373 prefix!426) lt!1378186)))

(declare-fun b!3939540 () Bool)

(assert (=> b!3939540 (= e!2437420 0)))

(declare-fun b!3939541 () Bool)

(assert (=> b!3939541 (= e!2437420 (+ 1 (size!31373 (t!326619 prefix!426))))))

(assert (= (and d!1168530 c!684499) b!3939540))

(assert (= (and d!1168530 (not c!684499)) b!3939541))

(declare-fun m!4508309 () Bool)

(assert (=> b!3939541 m!4508309))

(assert (=> b!3939080 d!1168530))

(declare-fun d!1168532 () Bool)

(assert (=> d!1168532 (isPrefix!3629 lt!1377938 prefix!426)))

(declare-fun lt!1378189 () Unit!60377)

(declare-fun choose!23513 (List!41944 List!41944 List!41944) Unit!60377)

(assert (=> d!1168532 (= lt!1378189 (choose!23513 prefix!426 lt!1377938 lt!1377932))))

(assert (=> d!1168532 (isPrefix!3629 prefix!426 lt!1377932)))

(assert (=> d!1168532 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!307 prefix!426 lt!1377938 lt!1377932) lt!1378189)))

(declare-fun bs!586599 () Bool)

(assert (= bs!586599 d!1168532))

(assert (=> bs!586599 m!4507577))

(declare-fun m!4508311 () Bool)

(assert (=> bs!586599 m!4508311))

(assert (=> bs!586599 m!4507407))

(assert (=> b!3939080 d!1168532))

(declare-fun d!1168534 () Bool)

(declare-fun e!2437423 () Bool)

(assert (=> d!1168534 e!2437423))

(declare-fun res!1594434 () Bool)

(assert (=> d!1168534 (=> res!1594434 e!2437423)))

(declare-fun lt!1378190 () Bool)

(assert (=> d!1168534 (= res!1594434 (not lt!1378190))))

(declare-fun e!2437422 () Bool)

(assert (=> d!1168534 (= lt!1378190 e!2437422)))

(declare-fun res!1594433 () Bool)

(assert (=> d!1168534 (=> res!1594433 e!2437422)))

(assert (=> d!1168534 (= res!1594433 ((_ is Nil!41820) Nil!41820))))

(assert (=> d!1168534 (= (isPrefix!3629 Nil!41820 suffix!1176) lt!1378190)))

(declare-fun b!3939544 () Bool)

(declare-fun e!2437421 () Bool)

(assert (=> b!3939544 (= e!2437421 (isPrefix!3629 (tail!6099 Nil!41820) (tail!6099 suffix!1176)))))

(declare-fun b!3939542 () Bool)

(assert (=> b!3939542 (= e!2437422 e!2437421)))

(declare-fun res!1594431 () Bool)

(assert (=> b!3939542 (=> (not res!1594431) (not e!2437421))))

(assert (=> b!3939542 (= res!1594431 (not ((_ is Nil!41820) suffix!1176)))))

(declare-fun b!3939545 () Bool)

(assert (=> b!3939545 (= e!2437423 (>= (size!31373 suffix!1176) (size!31373 Nil!41820)))))

(declare-fun b!3939543 () Bool)

(declare-fun res!1594432 () Bool)

(assert (=> b!3939543 (=> (not res!1594432) (not e!2437421))))

(assert (=> b!3939543 (= res!1594432 (= (head!8373 Nil!41820) (head!8373 suffix!1176)))))

(assert (= (and d!1168534 (not res!1594433)) b!3939542))

(assert (= (and b!3939542 res!1594431) b!3939543))

(assert (= (and b!3939543 res!1594432) b!3939544))

(assert (= (and d!1168534 (not res!1594434)) b!3939545))

(declare-fun m!4508313 () Bool)

(assert (=> b!3939544 m!4508313))

(declare-fun m!4508315 () Bool)

(assert (=> b!3939544 m!4508315))

(assert (=> b!3939544 m!4508313))

(assert (=> b!3939544 m!4508315))

(declare-fun m!4508317 () Bool)

(assert (=> b!3939544 m!4508317))

(assert (=> b!3939545 m!4507423))

(assert (=> b!3939545 m!4507505))

(declare-fun m!4508319 () Bool)

(assert (=> b!3939543 m!4508319))

(declare-fun m!4508321 () Bool)

(assert (=> b!3939543 m!4508321))

(assert (=> b!3939059 d!1168534))

(declare-fun d!1168536 () Bool)

(declare-fun e!2437426 () Bool)

(assert (=> d!1168536 e!2437426))

(declare-fun res!1594438 () Bool)

(assert (=> d!1168536 (=> res!1594438 e!2437426)))

(declare-fun lt!1378191 () Bool)

(assert (=> d!1168536 (= res!1594438 (not lt!1378191))))

(declare-fun e!2437425 () Bool)

(assert (=> d!1168536 (= lt!1378191 e!2437425)))

(declare-fun res!1594437 () Bool)

(assert (=> d!1168536 (=> res!1594437 e!2437425)))

(assert (=> d!1168536 (= res!1594437 ((_ is Nil!41820) Nil!41820))))

(assert (=> d!1168536 (= (isPrefix!3629 Nil!41820 (++!10825 Nil!41820 suffix!1176)) lt!1378191)))

(declare-fun b!3939548 () Bool)

(declare-fun e!2437424 () Bool)

(assert (=> b!3939548 (= e!2437424 (isPrefix!3629 (tail!6099 Nil!41820) (tail!6099 (++!10825 Nil!41820 suffix!1176))))))

(declare-fun b!3939546 () Bool)

(assert (=> b!3939546 (= e!2437425 e!2437424)))

(declare-fun res!1594435 () Bool)

(assert (=> b!3939546 (=> (not res!1594435) (not e!2437424))))

(assert (=> b!3939546 (= res!1594435 (not ((_ is Nil!41820) (++!10825 Nil!41820 suffix!1176))))))

(declare-fun b!3939549 () Bool)

(assert (=> b!3939549 (= e!2437426 (>= (size!31373 (++!10825 Nil!41820 suffix!1176)) (size!31373 Nil!41820)))))

(declare-fun b!3939547 () Bool)

(declare-fun res!1594436 () Bool)

(assert (=> b!3939547 (=> (not res!1594436) (not e!2437424))))

(assert (=> b!3939547 (= res!1594436 (= (head!8373 Nil!41820) (head!8373 (++!10825 Nil!41820 suffix!1176))))))

(assert (= (and d!1168536 (not res!1594437)) b!3939546))

(assert (= (and b!3939546 res!1594435) b!3939547))

(assert (= (and b!3939547 res!1594436) b!3939548))

(assert (= (and d!1168536 (not res!1594438)) b!3939549))

(assert (=> b!3939548 m!4508313))

(assert (=> b!3939548 m!4507487))

(declare-fun m!4508323 () Bool)

(assert (=> b!3939548 m!4508323))

(assert (=> b!3939548 m!4508313))

(assert (=> b!3939548 m!4508323))

(declare-fun m!4508325 () Bool)

(assert (=> b!3939548 m!4508325))

(assert (=> b!3939549 m!4507487))

(declare-fun m!4508327 () Bool)

(assert (=> b!3939549 m!4508327))

(assert (=> b!3939549 m!4507505))

(assert (=> b!3939547 m!4508319))

(assert (=> b!3939547 m!4507487))

(declare-fun m!4508329 () Bool)

(assert (=> b!3939547 m!4508329))

(assert (=> b!3939059 d!1168536))

(declare-fun b!3939551 () Bool)

(declare-fun e!2437428 () List!41944)

(assert (=> b!3939551 (= e!2437428 (Cons!41820 (h!47240 Nil!41820) (++!10825 (t!326619 Nil!41820) suffix!1176)))))

(declare-fun b!3939550 () Bool)

(assert (=> b!3939550 (= e!2437428 suffix!1176)))

(declare-fun b!3939553 () Bool)

(declare-fun e!2437427 () Bool)

(declare-fun lt!1378192 () List!41944)

(assert (=> b!3939553 (= e!2437427 (or (not (= suffix!1176 Nil!41820)) (= lt!1378192 Nil!41820)))))

(declare-fun d!1168538 () Bool)

(assert (=> d!1168538 e!2437427))

(declare-fun res!1594439 () Bool)

(assert (=> d!1168538 (=> (not res!1594439) (not e!2437427))))

(assert (=> d!1168538 (= res!1594439 (= (content!6308 lt!1378192) ((_ map or) (content!6308 Nil!41820) (content!6308 suffix!1176))))))

(assert (=> d!1168538 (= lt!1378192 e!2437428)))

(declare-fun c!684500 () Bool)

(assert (=> d!1168538 (= c!684500 ((_ is Nil!41820) Nil!41820))))

(assert (=> d!1168538 (= (++!10825 Nil!41820 suffix!1176) lt!1378192)))

(declare-fun b!3939552 () Bool)

(declare-fun res!1594440 () Bool)

(assert (=> b!3939552 (=> (not res!1594440) (not e!2437427))))

(assert (=> b!3939552 (= res!1594440 (= (size!31373 lt!1378192) (+ (size!31373 Nil!41820) (size!31373 suffix!1176))))))

(assert (= (and d!1168538 c!684500) b!3939550))

(assert (= (and d!1168538 (not c!684500)) b!3939551))

(assert (= (and d!1168538 res!1594439) b!3939552))

(assert (= (and b!3939552 res!1594440) b!3939553))

(declare-fun m!4508331 () Bool)

(assert (=> b!3939551 m!4508331))

(declare-fun m!4508333 () Bool)

(assert (=> d!1168538 m!4508333))

(declare-fun m!4508335 () Bool)

(assert (=> d!1168538 m!4508335))

(assert (=> d!1168538 m!4508023))

(declare-fun m!4508337 () Bool)

(assert (=> b!3939552 m!4508337))

(assert (=> b!3939552 m!4507505))

(assert (=> b!3939552 m!4507423))

(assert (=> b!3939059 d!1168538))

(declare-fun d!1168540 () Bool)

(assert (=> d!1168540 (isPrefix!3629 Nil!41820 (++!10825 Nil!41820 suffix!1176))))

(declare-fun lt!1378193 () Unit!60377)

(assert (=> d!1168540 (= lt!1378193 (choose!23498 Nil!41820 suffix!1176))))

(assert (=> d!1168540 (= (lemmaConcatTwoListThenFirstIsPrefix!2492 Nil!41820 suffix!1176) lt!1378193)))

(declare-fun bs!586600 () Bool)

(assert (= bs!586600 d!1168540))

(assert (=> bs!586600 m!4507487))

(assert (=> bs!586600 m!4507487))

(assert (=> bs!586600 m!4507489))

(declare-fun m!4508339 () Bool)

(assert (=> bs!586600 m!4508339))

(assert (=> b!3939059 d!1168540))

(declare-fun d!1168542 () Bool)

(assert (=> d!1168542 (= (isEmpty!24944 prefix!426) ((_ is Nil!41820) prefix!426))))

(assert (=> b!3939039 d!1168542))

(declare-fun d!1168544 () Bool)

(declare-fun res!1594443 () Bool)

(declare-fun e!2437431 () Bool)

(assert (=> d!1168544 (=> (not res!1594443) (not e!2437431))))

(declare-fun rulesValid!2545 (LexerInterface!6123 List!41946) Bool)

(assert (=> d!1168544 (= res!1594443 (rulesValid!2545 thiss!20629 rules!2768))))

(assert (=> d!1168544 (= (rulesInvariant!5466 thiss!20629 rules!2768) e!2437431)))

(declare-fun b!3939556 () Bool)

(declare-datatypes ((List!41948 0))(
  ( (Nil!41824) (Cons!41824 (h!47244 String!47538) (t!326719 List!41948)) )
))
(declare-fun noDuplicateTag!2546 (LexerInterface!6123 List!41946 List!41948) Bool)

(assert (=> b!3939556 (= e!2437431 (noDuplicateTag!2546 thiss!20629 rules!2768 Nil!41824))))

(assert (= (and d!1168544 res!1594443) b!3939556))

(declare-fun m!4508341 () Bool)

(assert (=> d!1168544 m!4508341))

(declare-fun m!4508343 () Bool)

(assert (=> b!3939556 m!4508343))

(assert (=> b!3939034 d!1168544))

(declare-fun d!1168546 () Bool)

(assert (=> d!1168546 (= (inv!56018 (tag!7394 (h!47242 rules!2768))) (= (mod (str.len (value!206852 (tag!7394 (h!47242 rules!2768)))) 2) 0))))

(assert (=> b!3939076 d!1168546))

(declare-fun d!1168548 () Bool)

(declare-fun res!1594444 () Bool)

(declare-fun e!2437432 () Bool)

(assert (=> d!1168548 (=> (not res!1594444) (not e!2437432))))

(assert (=> d!1168548 (= res!1594444 (semiInverseModEq!2811 (toChars!8853 (transformation!6534 (h!47242 rules!2768))) (toValue!8994 (transformation!6534 (h!47242 rules!2768)))))))

(assert (=> d!1168548 (= (inv!56022 (transformation!6534 (h!47242 rules!2768))) e!2437432)))

(declare-fun b!3939557 () Bool)

(assert (=> b!3939557 (= e!2437432 (equivClasses!2710 (toChars!8853 (transformation!6534 (h!47242 rules!2768))) (toValue!8994 (transformation!6534 (h!47242 rules!2768)))))))

(assert (= (and d!1168548 res!1594444) b!3939557))

(declare-fun m!4508345 () Bool)

(assert (=> d!1168548 m!4508345))

(declare-fun m!4508347 () Bool)

(assert (=> b!3939557 m!4508347))

(assert (=> b!3939076 d!1168548))

(assert (=> b!3939055 d!1168526))

(assert (=> b!3939055 d!1168524))

(declare-fun d!1168550 () Bool)

(assert (=> d!1168550 (= lt!1377938 prefix!426)))

(declare-fun lt!1378196 () Unit!60377)

(declare-fun choose!23516 (List!41944 List!41944 List!41944) Unit!60377)

(assert (=> d!1168550 (= lt!1378196 (choose!23516 lt!1377938 prefix!426 lt!1377932))))

(assert (=> d!1168550 (isPrefix!3629 lt!1377938 lt!1377932)))

(assert (=> d!1168550 (= (lemmaIsPrefixSameLengthThenSameList!825 lt!1377938 prefix!426 lt!1377932) lt!1378196)))

(declare-fun bs!586601 () Bool)

(assert (= bs!586601 d!1168550))

(declare-fun m!4508349 () Bool)

(assert (=> bs!586601 m!4508349))

(assert (=> bs!586601 m!4507665))

(assert (=> b!3939055 d!1168550))

(declare-fun d!1168552 () Bool)

(assert (=> d!1168552 (= (_2!23688 (v!39283 lt!1377909)) suffix!1176)))

(declare-fun lt!1378199 () Unit!60377)

(assert (=> d!1168552 (= lt!1378199 (choose!23502 lt!1377938 (_2!23688 (v!39283 lt!1377909)) prefix!426 suffix!1176 lt!1377932))))

(assert (=> d!1168552 (isPrefix!3629 lt!1377938 lt!1377932)))

(assert (=> d!1168552 (= (lemmaSamePrefixThenSameSuffix!1850 lt!1377938 (_2!23688 (v!39283 lt!1377909)) prefix!426 suffix!1176 lt!1377932) lt!1378199)))

(declare-fun bs!586602 () Bool)

(assert (= bs!586602 d!1168552))

(declare-fun m!4508351 () Bool)

(assert (=> bs!586602 m!4508351))

(assert (=> bs!586602 m!4507665))

(assert (=> b!3939055 d!1168552))

(declare-fun d!1168554 () Bool)

(declare-fun lt!1378200 () Int)

(assert (=> d!1168554 (>= lt!1378200 0)))

(declare-fun e!2437433 () Int)

(assert (=> d!1168554 (= lt!1378200 e!2437433)))

(declare-fun c!684501 () Bool)

(assert (=> d!1168554 (= c!684501 ((_ is Nil!41820) Nil!41820))))

(assert (=> d!1168554 (= (size!31373 Nil!41820) lt!1378200)))

(declare-fun b!3939558 () Bool)

(assert (=> b!3939558 (= e!2437433 0)))

(declare-fun b!3939559 () Bool)

(assert (=> b!3939559 (= e!2437433 (+ 1 (size!31373 (t!326619 Nil!41820))))))

(assert (= (and d!1168554 c!684501) b!3939558))

(assert (= (and d!1168554 (not c!684501)) b!3939559))

(declare-fun m!4508353 () Bool)

(assert (=> b!3939559 m!4508353))

(assert (=> b!3939035 d!1168554))

(declare-fun d!1168556 () Bool)

(declare-fun res!1594452 () Bool)

(declare-fun e!2437439 () Bool)

(assert (=> d!1168556 (=> (not res!1594452) (not e!2437439))))

(assert (=> d!1168556 (= res!1594452 (not (isEmpty!24944 (originalCharacters!7134 (h!47241 prefixTokens!80)))))))

(assert (=> d!1168556 (= (inv!56021 (h!47241 prefixTokens!80)) e!2437439)))

(declare-fun b!3939567 () Bool)

(declare-fun res!1594453 () Bool)

(assert (=> b!3939567 (=> (not res!1594453) (not e!2437439))))

(assert (=> b!3939567 (= res!1594453 (= (originalCharacters!7134 (h!47241 prefixTokens!80)) (list!15538 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (value!206853 (h!47241 prefixTokens!80))))))))

(declare-fun b!3939568 () Bool)

(assert (=> b!3939568 (= e!2437439 (= (size!31372 (h!47241 prefixTokens!80)) (size!31373 (originalCharacters!7134 (h!47241 prefixTokens!80)))))))

(assert (= (and d!1168556 res!1594452) b!3939567))

(assert (= (and b!3939567 res!1594453) b!3939568))

(declare-fun b_lambda!115197 () Bool)

(assert (=> (not b_lambda!115197) (not b!3939567)))

(declare-fun tb!235967 () Bool)

(declare-fun t!326641 () Bool)

(assert (=> (and b!3939052 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))) t!326641) tb!235967))

(declare-fun b!3939569 () Bool)

(declare-fun e!2437440 () Bool)

(declare-fun tp!1198569 () Bool)

(assert (=> b!3939569 (= e!2437440 (and (inv!56023 (c!684403 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (value!206853 (h!47241 prefixTokens!80))))) tp!1198569))))

(declare-fun result!285846 () Bool)

(assert (=> tb!235967 (= result!285846 (and (inv!56024 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (value!206853 (h!47241 prefixTokens!80)))) e!2437440))))

(assert (= tb!235967 b!3939569))

(declare-fun m!4508361 () Bool)

(assert (=> b!3939569 m!4508361))

(declare-fun m!4508363 () Bool)

(assert (=> tb!235967 m!4508363))

(assert (=> b!3939567 t!326641))

(declare-fun b_and!300893 () Bool)

(assert (= b_and!300881 (and (=> t!326641 result!285846) b_and!300893)))

(declare-fun t!326643 () Bool)

(declare-fun tb!235969 () Bool)

(assert (=> (and b!3939056 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))) t!326643) tb!235969))

(declare-fun result!285848 () Bool)

(assert (= result!285848 result!285846))

(assert (=> b!3939567 t!326643))

(declare-fun b_and!300895 () Bool)

(assert (= b_and!300883 (and (=> t!326643 result!285848) b_and!300895)))

(declare-fun t!326645 () Bool)

(declare-fun tb!235971 () Bool)

(assert (=> (and b!3939084 (= (toChars!8853 (transformation!6534 (h!47242 rules!2768))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))) t!326645) tb!235971))

(declare-fun result!285850 () Bool)

(assert (= result!285850 result!285846))

(assert (=> b!3939567 t!326645))

(declare-fun b_and!300897 () Bool)

(assert (= b_and!300885 (and (=> t!326645 result!285850) b_and!300897)))

(declare-fun m!4508367 () Bool)

(assert (=> d!1168556 m!4508367))

(declare-fun m!4508369 () Bool)

(assert (=> b!3939567 m!4508369))

(assert (=> b!3939567 m!4508369))

(declare-fun m!4508371 () Bool)

(assert (=> b!3939567 m!4508371))

(declare-fun m!4508373 () Bool)

(assert (=> b!3939568 m!4508373))

(assert (=> b!3939036 d!1168556))

(declare-fun b!3939572 () Bool)

(declare-fun e!2437443 () Bool)

(assert (=> b!3939572 (= e!2437443 (inv!17 (value!206853 (h!47241 prefixTokens!80))))))

(declare-fun b!3939574 () Bool)

(declare-fun e!2437442 () Bool)

(assert (=> b!3939574 (= e!2437442 e!2437443)))

(declare-fun c!684504 () Bool)

(assert (=> b!3939574 (= c!684504 ((_ is IntegerValue!20293) (value!206853 (h!47241 prefixTokens!80))))))

(declare-fun b!3939575 () Bool)

(assert (=> b!3939575 (= e!2437442 (inv!16 (value!206853 (h!47241 prefixTokens!80))))))

(declare-fun b!3939576 () Bool)

(declare-fun res!1594454 () Bool)

(declare-fun e!2437444 () Bool)

(assert (=> b!3939576 (=> res!1594454 e!2437444)))

(assert (=> b!3939576 (= res!1594454 (not ((_ is IntegerValue!20294) (value!206853 (h!47241 prefixTokens!80)))))))

(assert (=> b!3939576 (= e!2437443 e!2437444)))

(declare-fun d!1168566 () Bool)

(declare-fun c!684503 () Bool)

(assert (=> d!1168566 (= c!684503 ((_ is IntegerValue!20292) (value!206853 (h!47241 prefixTokens!80))))))

(assert (=> d!1168566 (= (inv!21 (value!206853 (h!47241 prefixTokens!80))) e!2437442)))

(declare-fun b!3939573 () Bool)

(assert (=> b!3939573 (= e!2437444 (inv!15 (value!206853 (h!47241 prefixTokens!80))))))

(assert (= (and d!1168566 c!684503) b!3939575))

(assert (= (and d!1168566 (not c!684503)) b!3939574))

(assert (= (and b!3939574 c!684504) b!3939572))

(assert (= (and b!3939574 (not c!684504)) b!3939576))

(assert (= (and b!3939576 (not res!1594454)) b!3939573))

(declare-fun m!4508375 () Bool)

(assert (=> b!3939572 m!4508375))

(declare-fun m!4508377 () Bool)

(assert (=> b!3939575 m!4508377))

(declare-fun m!4508379 () Bool)

(assert (=> b!3939573 m!4508379))

(assert (=> b!3939078 d!1168566))

(declare-fun b!3939578 () Bool)

(declare-fun e!2437446 () List!41944)

(assert (=> b!3939578 (= e!2437446 (Cons!41820 (h!47240 lt!1377911) (++!10825 (t!326619 lt!1377911) suffix!1176)))))

(declare-fun b!3939577 () Bool)

(assert (=> b!3939577 (= e!2437446 suffix!1176)))

(declare-fun e!2437445 () Bool)

(declare-fun b!3939580 () Bool)

(declare-fun lt!1378203 () List!41944)

(assert (=> b!3939580 (= e!2437445 (or (not (= suffix!1176 Nil!41820)) (= lt!1378203 lt!1377911)))))

(declare-fun d!1168568 () Bool)

(assert (=> d!1168568 e!2437445))

(declare-fun res!1594455 () Bool)

(assert (=> d!1168568 (=> (not res!1594455) (not e!2437445))))

(assert (=> d!1168568 (= res!1594455 (= (content!6308 lt!1378203) ((_ map or) (content!6308 lt!1377911) (content!6308 suffix!1176))))))

(assert (=> d!1168568 (= lt!1378203 e!2437446)))

(declare-fun c!684505 () Bool)

(assert (=> d!1168568 (= c!684505 ((_ is Nil!41820) lt!1377911))))

(assert (=> d!1168568 (= (++!10825 lt!1377911 suffix!1176) lt!1378203)))

(declare-fun b!3939579 () Bool)

(declare-fun res!1594456 () Bool)

(assert (=> b!3939579 (=> (not res!1594456) (not e!2437445))))

(assert (=> b!3939579 (= res!1594456 (= (size!31373 lt!1378203) (+ (size!31373 lt!1377911) (size!31373 suffix!1176))))))

(assert (= (and d!1168568 c!684505) b!3939577))

(assert (= (and d!1168568 (not c!684505)) b!3939578))

(assert (= (and d!1168568 res!1594455) b!3939579))

(assert (= (and b!3939579 res!1594456) b!3939580))

(declare-fun m!4508381 () Bool)

(assert (=> b!3939578 m!4508381))

(declare-fun m!4508383 () Bool)

(assert (=> d!1168568 m!4508383))

(declare-fun m!4508385 () Bool)

(assert (=> d!1168568 m!4508385))

(assert (=> d!1168568 m!4508023))

(declare-fun m!4508387 () Bool)

(assert (=> b!3939579 m!4508387))

(declare-fun m!4508389 () Bool)

(assert (=> b!3939579 m!4508389))

(assert (=> b!3939579 m!4507423))

(assert (=> b!3939073 d!1168568))

(declare-fun b!3939582 () Bool)

(declare-fun e!2437448 () List!41944)

(assert (=> b!3939582 (= e!2437448 (Cons!41820 (h!47240 prefix!426) (++!10825 (t!326619 prefix!426) Nil!41820)))))

(declare-fun b!3939581 () Bool)

(assert (=> b!3939581 (= e!2437448 Nil!41820)))

(declare-fun b!3939584 () Bool)

(declare-fun e!2437447 () Bool)

(declare-fun lt!1378204 () List!41944)

(assert (=> b!3939584 (= e!2437447 (or (not (= Nil!41820 Nil!41820)) (= lt!1378204 prefix!426)))))

(declare-fun d!1168570 () Bool)

(assert (=> d!1168570 e!2437447))

(declare-fun res!1594457 () Bool)

(assert (=> d!1168570 (=> (not res!1594457) (not e!2437447))))

(assert (=> d!1168570 (= res!1594457 (= (content!6308 lt!1378204) ((_ map or) (content!6308 prefix!426) (content!6308 Nil!41820))))))

(assert (=> d!1168570 (= lt!1378204 e!2437448)))

(declare-fun c!684506 () Bool)

(assert (=> d!1168570 (= c!684506 ((_ is Nil!41820) prefix!426))))

(assert (=> d!1168570 (= (++!10825 prefix!426 Nil!41820) lt!1378204)))

(declare-fun b!3939583 () Bool)

(declare-fun res!1594458 () Bool)

(assert (=> b!3939583 (=> (not res!1594458) (not e!2437447))))

(assert (=> b!3939583 (= res!1594458 (= (size!31373 lt!1378204) (+ (size!31373 prefix!426) (size!31373 Nil!41820))))))

(assert (= (and d!1168570 c!684506) b!3939581))

(assert (= (and d!1168570 (not c!684506)) b!3939582))

(assert (= (and d!1168570 res!1594457) b!3939583))

(assert (= (and b!3939583 res!1594458) b!3939584))

(declare-fun m!4508391 () Bool)

(assert (=> b!3939582 m!4508391))

(declare-fun m!4508393 () Bool)

(assert (=> d!1168570 m!4508393))

(assert (=> d!1168570 m!4508021))

(assert (=> d!1168570 m!4508335))

(declare-fun m!4508395 () Bool)

(assert (=> b!3939583 m!4508395))

(assert (=> b!3939583 m!4507579))

(assert (=> b!3939583 m!4507505))

(assert (=> b!3939032 d!1168570))

(declare-fun d!1168572 () Bool)

(assert (=> d!1168572 (= (isEmpty!24946 lt!1377953) ((_ is Nil!41821) lt!1377953))))

(assert (=> b!3939074 d!1168572))

(assert (=> b!3939074 d!1168432))

(declare-fun d!1168574 () Bool)

(assert (=> d!1168574 (= (inv!56018 (tag!7394 (rule!9490 (h!47241 suffixTokens!72)))) (= (mod (str.len (value!206852 (tag!7394 (rule!9490 (h!47241 suffixTokens!72))))) 2) 0))))

(assert (=> b!3939053 d!1168574))

(declare-fun d!1168576 () Bool)

(declare-fun res!1594459 () Bool)

(declare-fun e!2437449 () Bool)

(assert (=> d!1168576 (=> (not res!1594459) (not e!2437449))))

(assert (=> d!1168576 (= res!1594459 (semiInverseModEq!2811 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (toValue!8994 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))))))

(assert (=> d!1168576 (= (inv!56022 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) e!2437449)))

(declare-fun b!3939585 () Bool)

(assert (=> b!3939585 (= e!2437449 (equivClasses!2710 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (toValue!8994 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))))))

(assert (= (and d!1168576 res!1594459) b!3939585))

(declare-fun m!4508399 () Bool)

(assert (=> d!1168576 m!4508399))

(declare-fun m!4508403 () Bool)

(assert (=> b!3939585 m!4508403))

(assert (=> b!3939053 d!1168576))

(declare-fun d!1168580 () Bool)

(assert (=> d!1168580 (= (head!8371 prefixTokens!80) (h!47241 prefixTokens!80))))

(assert (=> b!3939033 d!1168580))

(declare-fun b!3939590 () Bool)

(declare-fun e!2437454 () Bool)

(declare-fun lt!1378211 () tuple2!41106)

(assert (=> b!3939590 (= e!2437454 (= (_2!23687 lt!1378211) (_2!23688 lt!1377947)))))

(declare-fun b!3939591 () Bool)

(declare-fun e!2437452 () Bool)

(assert (=> b!3939591 (= e!2437452 (not (isEmpty!24946 (_1!23687 lt!1378211))))))

(declare-fun b!3939592 () Bool)

(declare-fun e!2437453 () tuple2!41106)

(assert (=> b!3939592 (= e!2437453 (tuple2!41107 Nil!41821 (_2!23688 lt!1377947)))))

(declare-fun b!3939593 () Bool)

(assert (=> b!3939593 (= e!2437454 e!2437452)))

(declare-fun res!1594462 () Bool)

(assert (=> b!3939593 (= res!1594462 (< (size!31373 (_2!23687 lt!1378211)) (size!31373 (_2!23688 lt!1377947))))))

(assert (=> b!3939593 (=> (not res!1594462) (not e!2437452))))

(declare-fun b!3939594 () Bool)

(declare-fun lt!1378210 () Option!8954)

(declare-fun lt!1378212 () tuple2!41106)

(assert (=> b!3939594 (= e!2437453 (tuple2!41107 (Cons!41821 (_1!23688 (v!39283 lt!1378210)) (_1!23687 lt!1378212)) (_2!23687 lt!1378212)))))

(assert (=> b!3939594 (= lt!1378212 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1378210))))))

(declare-fun d!1168584 () Bool)

(assert (=> d!1168584 e!2437454))

(declare-fun c!684509 () Bool)

(assert (=> d!1168584 (= c!684509 (> (size!31375 (_1!23687 lt!1378211)) 0))))

(assert (=> d!1168584 (= lt!1378211 e!2437453)))

(declare-fun c!684508 () Bool)

(assert (=> d!1168584 (= c!684508 ((_ is Some!8953) lt!1378210))))

(assert (=> d!1168584 (= lt!1378210 (maxPrefix!3427 thiss!20629 rules!2768 (_2!23688 lt!1377947)))))

(assert (=> d!1168584 (= (lexList!1891 thiss!20629 rules!2768 (_2!23688 lt!1377947)) lt!1378211)))

(assert (= (and d!1168584 c!684508) b!3939594))

(assert (= (and d!1168584 (not c!684508)) b!3939592))

(assert (= (and d!1168584 c!684509) b!3939593))

(assert (= (and d!1168584 (not c!684509)) b!3939590))

(assert (= (and b!3939593 res!1594462) b!3939591))

(declare-fun m!4508417 () Bool)

(assert (=> b!3939591 m!4508417))

(declare-fun m!4508419 () Bool)

(assert (=> b!3939593 m!4508419))

(assert (=> b!3939593 m!4507449))

(declare-fun m!4508421 () Bool)

(assert (=> b!3939594 m!4508421))

(declare-fun m!4508423 () Bool)

(assert (=> d!1168584 m!4508423))

(declare-fun m!4508425 () Bool)

(assert (=> d!1168584 m!4508425))

(assert (=> bm!285031 d!1168584))

(declare-fun b!3939595 () Bool)

(declare-fun res!1594469 () Bool)

(declare-fun e!2437457 () Bool)

(assert (=> b!3939595 (=> (not res!1594469) (not e!2437457))))

(declare-fun lt!1378214 () Option!8954)

(assert (=> b!3939595 (= res!1594469 (< (size!31373 (_2!23688 (get!13821 lt!1378214))) (size!31373 prefix!426)))))

(declare-fun b!3939596 () Bool)

(assert (=> b!3939596 (= e!2437457 (contains!8376 rules!2768 (rule!9490 (_1!23688 (get!13821 lt!1378214)))))))

(declare-fun b!3939597 () Bool)

(declare-fun res!1594467 () Bool)

(assert (=> b!3939597 (=> (not res!1594467) (not e!2437457))))

(assert (=> b!3939597 (= res!1594467 (= (++!10825 (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378214)))) (_2!23688 (get!13821 lt!1378214))) prefix!426))))

(declare-fun d!1168588 () Bool)

(declare-fun e!2437456 () Bool)

(assert (=> d!1168588 e!2437456))

(declare-fun res!1594463 () Bool)

(assert (=> d!1168588 (=> res!1594463 e!2437456)))

(assert (=> d!1168588 (= res!1594463 (isEmpty!24947 lt!1378214))))

(declare-fun e!2437455 () Option!8954)

(assert (=> d!1168588 (= lt!1378214 e!2437455)))

(declare-fun c!684510 () Bool)

(assert (=> d!1168588 (= c!684510 (and ((_ is Cons!41822) rules!2768) ((_ is Nil!41822) (t!326621 rules!2768))))))

(declare-fun lt!1378215 () Unit!60377)

(declare-fun lt!1378213 () Unit!60377)

(assert (=> d!1168588 (= lt!1378215 lt!1378213)))

(assert (=> d!1168588 (isPrefix!3629 prefix!426 prefix!426)))

(assert (=> d!1168588 (= lt!1378213 (lemmaIsPrefixRefl!2289 prefix!426 prefix!426))))

(assert (=> d!1168588 (rulesValidInductive!2359 thiss!20629 rules!2768)))

(assert (=> d!1168588 (= (maxPrefix!3427 thiss!20629 rules!2768 prefix!426) lt!1378214)))

(declare-fun b!3939598 () Bool)

(declare-fun lt!1378216 () Option!8954)

(declare-fun lt!1378217 () Option!8954)

(assert (=> b!3939598 (= e!2437455 (ite (and ((_ is None!8953) lt!1378216) ((_ is None!8953) lt!1378217)) None!8953 (ite ((_ is None!8953) lt!1378217) lt!1378216 (ite ((_ is None!8953) lt!1378216) lt!1378217 (ite (>= (size!31372 (_1!23688 (v!39283 lt!1378216))) (size!31372 (_1!23688 (v!39283 lt!1378217)))) lt!1378216 lt!1378217)))))))

(declare-fun call!285045 () Option!8954)

(assert (=> b!3939598 (= lt!1378216 call!285045)))

(assert (=> b!3939598 (= lt!1378217 (maxPrefix!3427 thiss!20629 (t!326621 rules!2768) prefix!426))))

(declare-fun bm!285040 () Bool)

(assert (=> bm!285040 (= call!285045 (maxPrefixOneRule!2497 thiss!20629 (h!47242 rules!2768) prefix!426))))

(declare-fun b!3939599 () Bool)

(declare-fun res!1594466 () Bool)

(assert (=> b!3939599 (=> (not res!1594466) (not e!2437457))))

(assert (=> b!3939599 (= res!1594466 (= (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378214)))) (originalCharacters!7134 (_1!23688 (get!13821 lt!1378214)))))))

(declare-fun b!3939600 () Bool)

(assert (=> b!3939600 (= e!2437456 e!2437457)))

(declare-fun res!1594464 () Bool)

(assert (=> b!3939600 (=> (not res!1594464) (not e!2437457))))

(assert (=> b!3939600 (= res!1594464 (isDefined!6958 lt!1378214))))

(declare-fun b!3939601 () Bool)

(declare-fun res!1594468 () Bool)

(assert (=> b!3939601 (=> (not res!1594468) (not e!2437457))))

(assert (=> b!3939601 (= res!1594468 (matchR!5491 (regex!6534 (rule!9490 (_1!23688 (get!13821 lt!1378214)))) (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378214))))))))

(declare-fun b!3939602 () Bool)

(assert (=> b!3939602 (= e!2437455 call!285045)))

(declare-fun b!3939603 () Bool)

(declare-fun res!1594465 () Bool)

(assert (=> b!3939603 (=> (not res!1594465) (not e!2437457))))

(assert (=> b!3939603 (= res!1594465 (= (value!206853 (_1!23688 (get!13821 lt!1378214))) (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (get!13821 lt!1378214)))) (seqFromList!4801 (originalCharacters!7134 (_1!23688 (get!13821 lt!1378214)))))))))

(assert (= (and d!1168588 c!684510) b!3939602))

(assert (= (and d!1168588 (not c!684510)) b!3939598))

(assert (= (or b!3939602 b!3939598) bm!285040))

(assert (= (and d!1168588 (not res!1594463)) b!3939600))

(assert (= (and b!3939600 res!1594464) b!3939599))

(assert (= (and b!3939599 res!1594466) b!3939595))

(assert (= (and b!3939595 res!1594469) b!3939597))

(assert (= (and b!3939597 res!1594467) b!3939603))

(assert (= (and b!3939603 res!1594465) b!3939601))

(assert (= (and b!3939601 res!1594468) b!3939596))

(declare-fun m!4508429 () Bool)

(assert (=> b!3939599 m!4508429))

(declare-fun m!4508431 () Bool)

(assert (=> b!3939599 m!4508431))

(assert (=> b!3939599 m!4508431))

(declare-fun m!4508433 () Bool)

(assert (=> b!3939599 m!4508433))

(assert (=> b!3939596 m!4508429))

(declare-fun m!4508435 () Bool)

(assert (=> b!3939596 m!4508435))

(declare-fun m!4508437 () Bool)

(assert (=> bm!285040 m!4508437))

(declare-fun m!4508439 () Bool)

(assert (=> b!3939600 m!4508439))

(assert (=> b!3939597 m!4508429))

(assert (=> b!3939597 m!4508431))

(assert (=> b!3939597 m!4508431))

(assert (=> b!3939597 m!4508433))

(assert (=> b!3939597 m!4508433))

(declare-fun m!4508441 () Bool)

(assert (=> b!3939597 m!4508441))

(assert (=> b!3939603 m!4508429))

(declare-fun m!4508443 () Bool)

(assert (=> b!3939603 m!4508443))

(assert (=> b!3939603 m!4508443))

(declare-fun m!4508445 () Bool)

(assert (=> b!3939603 m!4508445))

(assert (=> b!3939595 m!4508429))

(declare-fun m!4508447 () Bool)

(assert (=> b!3939595 m!4508447))

(assert (=> b!3939595 m!4507579))

(declare-fun m!4508449 () Bool)

(assert (=> d!1168588 m!4508449))

(declare-fun m!4508451 () Bool)

(assert (=> d!1168588 m!4508451))

(declare-fun m!4508453 () Bool)

(assert (=> d!1168588 m!4508453))

(assert (=> d!1168588 m!4507843))

(declare-fun m!4508455 () Bool)

(assert (=> b!3939598 m!4508455))

(assert (=> b!3939601 m!4508429))

(assert (=> b!3939601 m!4508431))

(assert (=> b!3939601 m!4508431))

(assert (=> b!3939601 m!4508433))

(assert (=> b!3939601 m!4508433))

(declare-fun m!4508457 () Bool)

(assert (=> b!3939601 m!4508457))

(assert (=> b!3939071 d!1168588))

(declare-fun b!3939605 () Bool)

(declare-fun res!1594476 () Bool)

(declare-fun e!2437461 () Bool)

(assert (=> b!3939605 (=> (not res!1594476) (not e!2437461))))

(declare-fun lt!1378222 () Option!8954)

(assert (=> b!3939605 (= res!1594476 (< (size!31373 (_2!23688 (get!13821 lt!1378222))) (size!31373 lt!1377919)))))

(declare-fun b!3939606 () Bool)

(assert (=> b!3939606 (= e!2437461 (contains!8376 rules!2768 (rule!9490 (_1!23688 (get!13821 lt!1378222)))))))

(declare-fun b!3939607 () Bool)

(declare-fun res!1594474 () Bool)

(assert (=> b!3939607 (=> (not res!1594474) (not e!2437461))))

(assert (=> b!3939607 (= res!1594474 (= (++!10825 (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378222)))) (_2!23688 (get!13821 lt!1378222))) lt!1377919))))

(declare-fun d!1168592 () Bool)

(declare-fun e!2437460 () Bool)

(assert (=> d!1168592 e!2437460))

(declare-fun res!1594470 () Bool)

(assert (=> d!1168592 (=> res!1594470 e!2437460)))

(assert (=> d!1168592 (= res!1594470 (isEmpty!24947 lt!1378222))))

(declare-fun e!2437459 () Option!8954)

(assert (=> d!1168592 (= lt!1378222 e!2437459)))

(declare-fun c!684511 () Bool)

(assert (=> d!1168592 (= c!684511 (and ((_ is Cons!41822) rules!2768) ((_ is Nil!41822) (t!326621 rules!2768))))))

(declare-fun lt!1378223 () Unit!60377)

(declare-fun lt!1378221 () Unit!60377)

(assert (=> d!1168592 (= lt!1378223 lt!1378221)))

(assert (=> d!1168592 (isPrefix!3629 lt!1377919 lt!1377919)))

(assert (=> d!1168592 (= lt!1378221 (lemmaIsPrefixRefl!2289 lt!1377919 lt!1377919))))

(assert (=> d!1168592 (rulesValidInductive!2359 thiss!20629 rules!2768)))

(assert (=> d!1168592 (= (maxPrefix!3427 thiss!20629 rules!2768 lt!1377919) lt!1378222)))

(declare-fun b!3939608 () Bool)

(declare-fun lt!1378224 () Option!8954)

(declare-fun lt!1378225 () Option!8954)

(assert (=> b!3939608 (= e!2437459 (ite (and ((_ is None!8953) lt!1378224) ((_ is None!8953) lt!1378225)) None!8953 (ite ((_ is None!8953) lt!1378225) lt!1378224 (ite ((_ is None!8953) lt!1378224) lt!1378225 (ite (>= (size!31372 (_1!23688 (v!39283 lt!1378224))) (size!31372 (_1!23688 (v!39283 lt!1378225)))) lt!1378224 lt!1378225)))))))

(declare-fun call!285046 () Option!8954)

(assert (=> b!3939608 (= lt!1378224 call!285046)))

(assert (=> b!3939608 (= lt!1378225 (maxPrefix!3427 thiss!20629 (t!326621 rules!2768) lt!1377919))))

(declare-fun bm!285041 () Bool)

(assert (=> bm!285041 (= call!285046 (maxPrefixOneRule!2497 thiss!20629 (h!47242 rules!2768) lt!1377919))))

(declare-fun b!3939609 () Bool)

(declare-fun res!1594473 () Bool)

(assert (=> b!3939609 (=> (not res!1594473) (not e!2437461))))

(assert (=> b!3939609 (= res!1594473 (= (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378222)))) (originalCharacters!7134 (_1!23688 (get!13821 lt!1378222)))))))

(declare-fun b!3939610 () Bool)

(assert (=> b!3939610 (= e!2437460 e!2437461)))

(declare-fun res!1594471 () Bool)

(assert (=> b!3939610 (=> (not res!1594471) (not e!2437461))))

(assert (=> b!3939610 (= res!1594471 (isDefined!6958 lt!1378222))))

(declare-fun b!3939611 () Bool)

(declare-fun res!1594475 () Bool)

(assert (=> b!3939611 (=> (not res!1594475) (not e!2437461))))

(assert (=> b!3939611 (= res!1594475 (matchR!5491 (regex!6534 (rule!9490 (_1!23688 (get!13821 lt!1378222)))) (list!15538 (charsOf!4358 (_1!23688 (get!13821 lt!1378222))))))))

(declare-fun b!3939612 () Bool)

(assert (=> b!3939612 (= e!2437459 call!285046)))

(declare-fun b!3939613 () Bool)

(declare-fun res!1594472 () Bool)

(assert (=> b!3939613 (=> (not res!1594472) (not e!2437461))))

(assert (=> b!3939613 (= res!1594472 (= (value!206853 (_1!23688 (get!13821 lt!1378222))) (apply!9773 (transformation!6534 (rule!9490 (_1!23688 (get!13821 lt!1378222)))) (seqFromList!4801 (originalCharacters!7134 (_1!23688 (get!13821 lt!1378222)))))))))

(assert (= (and d!1168592 c!684511) b!3939612))

(assert (= (and d!1168592 (not c!684511)) b!3939608))

(assert (= (or b!3939612 b!3939608) bm!285041))

(assert (= (and d!1168592 (not res!1594470)) b!3939610))

(assert (= (and b!3939610 res!1594471) b!3939609))

(assert (= (and b!3939609 res!1594473) b!3939605))

(assert (= (and b!3939605 res!1594476) b!3939607))

(assert (= (and b!3939607 res!1594474) b!3939613))

(assert (= (and b!3939613 res!1594472) b!3939611))

(assert (= (and b!3939611 res!1594475) b!3939606))

(declare-fun m!4508471 () Bool)

(assert (=> b!3939609 m!4508471))

(declare-fun m!4508473 () Bool)

(assert (=> b!3939609 m!4508473))

(assert (=> b!3939609 m!4508473))

(declare-fun m!4508475 () Bool)

(assert (=> b!3939609 m!4508475))

(assert (=> b!3939606 m!4508471))

(declare-fun m!4508477 () Bool)

(assert (=> b!3939606 m!4508477))

(declare-fun m!4508479 () Bool)

(assert (=> bm!285041 m!4508479))

(declare-fun m!4508481 () Bool)

(assert (=> b!3939610 m!4508481))

(assert (=> b!3939607 m!4508471))

(assert (=> b!3939607 m!4508473))

(assert (=> b!3939607 m!4508473))

(assert (=> b!3939607 m!4508475))

(assert (=> b!3939607 m!4508475))

(declare-fun m!4508483 () Bool)

(assert (=> b!3939607 m!4508483))

(assert (=> b!3939613 m!4508471))

(declare-fun m!4508485 () Bool)

(assert (=> b!3939613 m!4508485))

(assert (=> b!3939613 m!4508485))

(declare-fun m!4508487 () Bool)

(assert (=> b!3939613 m!4508487))

(assert (=> b!3939605 m!4508471))

(declare-fun m!4508489 () Bool)

(assert (=> b!3939605 m!4508489))

(declare-fun m!4508491 () Bool)

(assert (=> b!3939605 m!4508491))

(declare-fun m!4508493 () Bool)

(assert (=> d!1168592 m!4508493))

(declare-fun m!4508495 () Bool)

(assert (=> d!1168592 m!4508495))

(declare-fun m!4508497 () Bool)

(assert (=> d!1168592 m!4508497))

(assert (=> d!1168592 m!4507843))

(declare-fun m!4508499 () Bool)

(assert (=> b!3939608 m!4508499))

(assert (=> b!3939611 m!4508471))

(assert (=> b!3939611 m!4508473))

(assert (=> b!3939611 m!4508473))

(assert (=> b!3939611 m!4508475))

(assert (=> b!3939611 m!4508475))

(declare-fun m!4508511 () Bool)

(assert (=> b!3939611 m!4508511))

(assert (=> b!3939071 d!1168592))

(declare-fun d!1168602 () Bool)

(assert (=> d!1168602 (= (maxPrefix!3427 thiss!20629 rules!2768 (++!10825 prefix!426 Nil!41820)) (Some!8953 (tuple2!41109 (_1!23688 (v!39283 lt!1377909)) lt!1377940)))))

(declare-fun lt!1378245 () Unit!60377)

(declare-fun choose!23518 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41944 Token!12206 List!41944 List!41944) Unit!60377)

(assert (=> d!1168602 (= lt!1378245 (choose!23518 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41820 (_1!23688 (v!39283 lt!1377909)) (_2!23688 (v!39283 lt!1377909)) lt!1377940))))

(assert (=> d!1168602 (not (isEmpty!24945 rules!2768))))

(assert (=> d!1168602 (= (lemmaMaxPrefixThenWithShorterSuffix!46 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41820 (_1!23688 (v!39283 lt!1377909)) (_2!23688 (v!39283 lt!1377909)) lt!1377940) lt!1378245)))

(declare-fun bs!586610 () Bool)

(assert (= bs!586610 d!1168602))

(assert (=> bs!586610 m!4507443))

(assert (=> bs!586610 m!4507443))

(declare-fun m!4508575 () Bool)

(assert (=> bs!586610 m!4508575))

(declare-fun m!4508577 () Bool)

(assert (=> bs!586610 m!4508577))

(assert (=> bs!586610 m!4507465))

(assert (=> b!3939071 d!1168602))

(declare-fun d!1168632 () Bool)

(declare-fun res!1594495 () Bool)

(declare-fun e!2437488 () Bool)

(assert (=> d!1168632 (=> (not res!1594495) (not e!2437488))))

(assert (=> d!1168632 (= res!1594495 (not (isEmpty!24944 (originalCharacters!7134 (h!47241 suffixTokens!72)))))))

(assert (=> d!1168632 (= (inv!56021 (h!47241 suffixTokens!72)) e!2437488)))

(declare-fun b!3939656 () Bool)

(declare-fun res!1594496 () Bool)

(assert (=> b!3939656 (=> (not res!1594496) (not e!2437488))))

(assert (=> b!3939656 (= res!1594496 (= (originalCharacters!7134 (h!47241 suffixTokens!72)) (list!15538 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (value!206853 (h!47241 suffixTokens!72))))))))

(declare-fun b!3939657 () Bool)

(assert (=> b!3939657 (= e!2437488 (= (size!31372 (h!47241 suffixTokens!72)) (size!31373 (originalCharacters!7134 (h!47241 suffixTokens!72)))))))

(assert (= (and d!1168632 res!1594495) b!3939656))

(assert (= (and b!3939656 res!1594496) b!3939657))

(declare-fun b_lambda!115203 () Bool)

(assert (=> (not b_lambda!115203) (not b!3939656)))

(declare-fun t!326659 () Bool)

(declare-fun tb!235985 () Bool)

(assert (=> (and b!3939052 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))) t!326659) tb!235985))

(declare-fun b!3939662 () Bool)

(declare-fun e!2437491 () Bool)

(declare-fun tp!1198571 () Bool)

(assert (=> b!3939662 (= e!2437491 (and (inv!56023 (c!684403 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (value!206853 (h!47241 suffixTokens!72))))) tp!1198571))))

(declare-fun result!285866 () Bool)

(assert (=> tb!235985 (= result!285866 (and (inv!56024 (dynLambda!17912 (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (value!206853 (h!47241 suffixTokens!72)))) e!2437491))))

(assert (= tb!235985 b!3939662))

(declare-fun m!4508583 () Bool)

(assert (=> b!3939662 m!4508583))

(declare-fun m!4508585 () Bool)

(assert (=> tb!235985 m!4508585))

(assert (=> b!3939656 t!326659))

(declare-fun b_and!300911 () Bool)

(assert (= b_and!300893 (and (=> t!326659 result!285866) b_and!300911)))

(declare-fun tb!235987 () Bool)

(declare-fun t!326661 () Bool)

(assert (=> (and b!3939056 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))) t!326661) tb!235987))

(declare-fun result!285868 () Bool)

(assert (= result!285868 result!285866))

(assert (=> b!3939656 t!326661))

(declare-fun b_and!300913 () Bool)

(assert (= b_and!300895 (and (=> t!326661 result!285868) b_and!300913)))

(declare-fun t!326663 () Bool)

(declare-fun tb!235989 () Bool)

(assert (=> (and b!3939084 (= (toChars!8853 (transformation!6534 (h!47242 rules!2768))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))) t!326663) tb!235989))

(declare-fun result!285870 () Bool)

(assert (= result!285870 result!285866))

(assert (=> b!3939656 t!326663))

(declare-fun b_and!300915 () Bool)

(assert (= b_and!300897 (and (=> t!326663 result!285870) b_and!300915)))

(declare-fun m!4508595 () Bool)

(assert (=> d!1168632 m!4508595))

(declare-fun m!4508597 () Bool)

(assert (=> b!3939656 m!4508597))

(assert (=> b!3939656 m!4508597))

(declare-fun m!4508599 () Bool)

(assert (=> b!3939656 m!4508599))

(declare-fun m!4508601 () Bool)

(assert (=> b!3939657 m!4508601))

(assert (=> b!3939050 d!1168632))

(declare-fun d!1168640 () Bool)

(declare-fun lt!1378250 () Int)

(assert (=> d!1168640 (>= lt!1378250 0)))

(declare-fun e!2437494 () Int)

(assert (=> d!1168640 (= lt!1378250 e!2437494)))

(declare-fun c!684525 () Bool)

(assert (=> d!1168640 (= c!684525 ((_ is Nil!41820) suffix!1176))))

(assert (=> d!1168640 (= (size!31373 suffix!1176) lt!1378250)))

(declare-fun b!3939667 () Bool)

(assert (=> b!3939667 (= e!2437494 0)))

(declare-fun b!3939668 () Bool)

(assert (=> b!3939668 (= e!2437494 (+ 1 (size!31373 (t!326619 suffix!1176))))))

(assert (= (and d!1168640 c!684525) b!3939667))

(assert (= (and d!1168640 (not c!684525)) b!3939668))

(declare-fun m!4508607 () Bool)

(assert (=> b!3939668 m!4508607))

(assert (=> b!3939072 d!1168640))

(declare-fun d!1168642 () Bool)

(declare-fun lt!1378251 () Int)

(assert (=> d!1168642 (>= lt!1378251 0)))

(declare-fun e!2437495 () Int)

(assert (=> d!1168642 (= lt!1378251 e!2437495)))

(declare-fun c!684526 () Bool)

(assert (=> d!1168642 (= c!684526 ((_ is Nil!41820) (_2!23688 (v!39283 lt!1377909))))))

(assert (=> d!1168642 (= (size!31373 (_2!23688 (v!39283 lt!1377909))) lt!1378251)))

(declare-fun b!3939669 () Bool)

(assert (=> b!3939669 (= e!2437495 0)))

(declare-fun b!3939670 () Bool)

(assert (=> b!3939670 (= e!2437495 (+ 1 (size!31373 (t!326619 (_2!23688 (v!39283 lt!1377909))))))))

(assert (= (and d!1168642 c!684526) b!3939669))

(assert (= (and d!1168642 (not c!684526)) b!3939670))

(declare-fun m!4508611 () Bool)

(assert (=> b!3939670 m!4508611))

(assert (=> b!3939072 d!1168642))

(declare-fun b!3939671 () Bool)

(declare-fun e!2437497 () List!41945)

(assert (=> b!3939671 (= e!2437497 (_1!23687 lt!1377927))))

(declare-fun e!2437496 () Bool)

(declare-fun lt!1378252 () List!41945)

(declare-fun b!3939674 () Bool)

(assert (=> b!3939674 (= e!2437496 (or (not (= (_1!23687 lt!1377927) Nil!41821)) (= lt!1378252 lt!1377924)))))

(declare-fun d!1168646 () Bool)

(assert (=> d!1168646 e!2437496))

(declare-fun res!1594502 () Bool)

(assert (=> d!1168646 (=> (not res!1594502) (not e!2437496))))

(assert (=> d!1168646 (= res!1594502 (= (content!6311 lt!1378252) ((_ map or) (content!6311 lt!1377924) (content!6311 (_1!23687 lt!1377927)))))))

(assert (=> d!1168646 (= lt!1378252 e!2437497)))

(declare-fun c!684527 () Bool)

(assert (=> d!1168646 (= c!684527 ((_ is Nil!41821) lt!1377924))))

(assert (=> d!1168646 (= (++!10826 lt!1377924 (_1!23687 lt!1377927)) lt!1378252)))

(declare-fun b!3939673 () Bool)

(declare-fun res!1594501 () Bool)

(assert (=> b!3939673 (=> (not res!1594501) (not e!2437496))))

(assert (=> b!3939673 (= res!1594501 (= (size!31375 lt!1378252) (+ (size!31375 lt!1377924) (size!31375 (_1!23687 lt!1377927)))))))

(declare-fun b!3939672 () Bool)

(assert (=> b!3939672 (= e!2437497 (Cons!41821 (h!47241 lt!1377924) (++!10826 (t!326620 lt!1377924) (_1!23687 lt!1377927))))))

(assert (= (and d!1168646 c!684527) b!3939671))

(assert (= (and d!1168646 (not c!684527)) b!3939672))

(assert (= (and d!1168646 res!1594502) b!3939673))

(assert (= (and b!3939673 res!1594501) b!3939674))

(declare-fun m!4508613 () Bool)

(assert (=> d!1168646 m!4508613))

(assert (=> d!1168646 m!4508043))

(declare-fun m!4508615 () Bool)

(assert (=> d!1168646 m!4508615))

(declare-fun m!4508617 () Bool)

(assert (=> b!3939673 m!4508617))

(assert (=> b!3939673 m!4508049))

(declare-fun m!4508619 () Bool)

(assert (=> b!3939673 m!4508619))

(declare-fun m!4508621 () Bool)

(assert (=> b!3939672 m!4508621))

(assert (=> b!3939051 d!1168646))

(declare-fun b!3939676 () Bool)

(declare-fun e!2437499 () List!41944)

(assert (=> b!3939676 (= e!2437499 (Cons!41820 (h!47240 lt!1377938) (++!10825 (t!326619 lt!1377938) lt!1377940)))))

(declare-fun b!3939675 () Bool)

(assert (=> b!3939675 (= e!2437499 lt!1377940)))

(declare-fun lt!1378253 () List!41944)

(declare-fun b!3939678 () Bool)

(declare-fun e!2437498 () Bool)

(assert (=> b!3939678 (= e!2437498 (or (not (= lt!1377940 Nil!41820)) (= lt!1378253 lt!1377938)))))

(declare-fun d!1168648 () Bool)

(assert (=> d!1168648 e!2437498))

(declare-fun res!1594503 () Bool)

(assert (=> d!1168648 (=> (not res!1594503) (not e!2437498))))

(assert (=> d!1168648 (= res!1594503 (= (content!6308 lt!1378253) ((_ map or) (content!6308 lt!1377938) (content!6308 lt!1377940))))))

(assert (=> d!1168648 (= lt!1378253 e!2437499)))

(declare-fun c!684528 () Bool)

(assert (=> d!1168648 (= c!684528 ((_ is Nil!41820) lt!1377938))))

(assert (=> d!1168648 (= (++!10825 lt!1377938 lt!1377940) lt!1378253)))

(declare-fun b!3939677 () Bool)

(declare-fun res!1594504 () Bool)

(assert (=> b!3939677 (=> (not res!1594504) (not e!2437498))))

(assert (=> b!3939677 (= res!1594504 (= (size!31373 lt!1378253) (+ (size!31373 lt!1377938) (size!31373 lt!1377940))))))

(assert (= (and d!1168648 c!684528) b!3939675))

(assert (= (and d!1168648 (not c!684528)) b!3939676))

(assert (= (and d!1168648 res!1594503) b!3939677))

(assert (= (and b!3939677 res!1594504) b!3939678))

(declare-fun m!4508623 () Bool)

(assert (=> b!3939676 m!4508623))

(declare-fun m!4508625 () Bool)

(assert (=> d!1168648 m!4508625))

(assert (=> d!1168648 m!4507619))

(assert (=> d!1168648 m!4508225))

(declare-fun m!4508627 () Bool)

(assert (=> b!3939677 m!4508627))

(assert (=> b!3939677 m!4507541))

(assert (=> b!3939677 m!4507979))

(assert (=> b!3939068 d!1168648))

(declare-fun d!1168650 () Bool)

(declare-fun lt!1378256 () List!41944)

(assert (=> d!1168650 (= (++!10825 lt!1377938 lt!1378256) prefix!426)))

(declare-fun e!2437500 () List!41944)

(assert (=> d!1168650 (= lt!1378256 e!2437500)))

(declare-fun c!684529 () Bool)

(assert (=> d!1168650 (= c!684529 ((_ is Cons!41820) lt!1377938))))

(assert (=> d!1168650 (>= (size!31373 prefix!426) (size!31373 lt!1377938))))

(assert (=> d!1168650 (= (getSuffix!2084 prefix!426 lt!1377938) lt!1378256)))

(declare-fun b!3939679 () Bool)

(assert (=> b!3939679 (= e!2437500 (getSuffix!2084 (tail!6099 prefix!426) (t!326619 lt!1377938)))))

(declare-fun b!3939680 () Bool)

(assert (=> b!3939680 (= e!2437500 prefix!426)))

(assert (= (and d!1168650 c!684529) b!3939679))

(assert (= (and d!1168650 (not c!684529)) b!3939680))

(declare-fun m!4508629 () Bool)

(assert (=> d!1168650 m!4508629))

(assert (=> d!1168650 m!4507579))

(assert (=> d!1168650 m!4507541))

(assert (=> b!3939679 m!4508295))

(assert (=> b!3939679 m!4508295))

(declare-fun m!4508631 () Bool)

(assert (=> b!3939679 m!4508631))

(assert (=> b!3939068 d!1168650))

(declare-fun b!3939681 () Bool)

(declare-fun e!2437503 () Bool)

(declare-fun lt!1378258 () tuple2!41106)

(assert (=> b!3939681 (= e!2437503 (= (_2!23687 lt!1378258) lt!1377940))))

(declare-fun b!3939682 () Bool)

(declare-fun e!2437501 () Bool)

(assert (=> b!3939682 (= e!2437501 (not (isEmpty!24946 (_1!23687 lt!1378258))))))

(declare-fun b!3939683 () Bool)

(declare-fun e!2437502 () tuple2!41106)

(assert (=> b!3939683 (= e!2437502 (tuple2!41107 Nil!41821 lt!1377940))))

(declare-fun b!3939684 () Bool)

(assert (=> b!3939684 (= e!2437503 e!2437501)))

(declare-fun res!1594505 () Bool)

(assert (=> b!3939684 (= res!1594505 (< (size!31373 (_2!23687 lt!1378258)) (size!31373 lt!1377940)))))

(assert (=> b!3939684 (=> (not res!1594505) (not e!2437501))))

(declare-fun b!3939685 () Bool)

(declare-fun lt!1378257 () Option!8954)

(declare-fun lt!1378259 () tuple2!41106)

(assert (=> b!3939685 (= e!2437502 (tuple2!41107 (Cons!41821 (_1!23688 (v!39283 lt!1378257)) (_1!23687 lt!1378259)) (_2!23687 lt!1378259)))))

(assert (=> b!3939685 (= lt!1378259 (lexList!1891 thiss!20629 rules!2768 (_2!23688 (v!39283 lt!1378257))))))

(declare-fun d!1168652 () Bool)

(assert (=> d!1168652 e!2437503))

(declare-fun c!684531 () Bool)

(assert (=> d!1168652 (= c!684531 (> (size!31375 (_1!23687 lt!1378258)) 0))))

(assert (=> d!1168652 (= lt!1378258 e!2437502)))

(declare-fun c!684530 () Bool)

(assert (=> d!1168652 (= c!684530 ((_ is Some!8953) lt!1378257))))

(assert (=> d!1168652 (= lt!1378257 (maxPrefix!3427 thiss!20629 rules!2768 lt!1377940))))

(assert (=> d!1168652 (= (lexList!1891 thiss!20629 rules!2768 lt!1377940) lt!1378258)))

(assert (= (and d!1168652 c!684530) b!3939685))

(assert (= (and d!1168652 (not c!684530)) b!3939683))

(assert (= (and d!1168652 c!684531) b!3939684))

(assert (= (and d!1168652 (not c!684531)) b!3939681))

(assert (= (and b!3939684 res!1594505) b!3939682))

(declare-fun m!4508637 () Bool)

(assert (=> b!3939682 m!4508637))

(declare-fun m!4508641 () Bool)

(assert (=> b!3939684 m!4508641))

(assert (=> b!3939684 m!4507979))

(declare-fun m!4508643 () Bool)

(assert (=> b!3939685 m!4508643))

(declare-fun m!4508645 () Bool)

(assert (=> d!1168652 m!4508645))

(declare-fun m!4508647 () Bool)

(assert (=> d!1168652 m!4508647))

(assert (=> b!3939069 d!1168652))

(declare-fun d!1168656 () Bool)

(assert (=> d!1168656 (= (lexList!1891 thiss!20629 rules!2768 lt!1377940) (tuple2!41107 lt!1377915 Nil!41820))))

(declare-fun lt!1378273 () Unit!60377)

(declare-fun choose!23521 (LexerInterface!6123 List!41946 List!41944 List!41944 List!41945 List!41945 List!41944) Unit!60377)

(assert (=> d!1168656 (= lt!1378273 (choose!23521 thiss!20629 rules!2768 lt!1377940 suffix!1176 lt!1377915 suffixTokens!72 suffixResult!91))))

(assert (=> d!1168656 (not (isEmpty!24945 rules!2768))))

(assert (=> d!1168656 (= (lemmaLexThenLexPrefix!619 thiss!20629 rules!2768 lt!1377940 suffix!1176 lt!1377915 suffixTokens!72 suffixResult!91) lt!1378273)))

(declare-fun bs!586617 () Bool)

(assert (= bs!586617 d!1168656))

(assert (=> bs!586617 m!4507529))

(declare-fun m!4508701 () Bool)

(assert (=> bs!586617 m!4508701))

(assert (=> bs!586617 m!4507465))

(assert (=> b!3939069 d!1168656))

(declare-fun d!1168682 () Bool)

(assert (=> d!1168682 (and (= lt!1377938 lt!1377938) (= (_2!23688 (v!39283 lt!1377909)) (_2!23688 lt!1377947)))))

(declare-fun lt!1378276 () Unit!60377)

(declare-fun choose!23522 (List!41944 List!41944 List!41944 List!41944) Unit!60377)

(assert (=> d!1168682 (= lt!1378276 (choose!23522 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 (_2!23688 lt!1377947)))))

(assert (=> d!1168682 (= (++!10825 lt!1377938 (_2!23688 (v!39283 lt!1377909))) (++!10825 lt!1377938 (_2!23688 lt!1377947)))))

(assert (=> d!1168682 (= (lemmaConcatSameAndSameSizesThenSameLists!582 lt!1377938 (_2!23688 (v!39283 lt!1377909)) lt!1377938 (_2!23688 lt!1377947)) lt!1378276)))

(declare-fun bs!586618 () Bool)

(assert (= bs!586618 d!1168682))

(declare-fun m!4508703 () Bool)

(assert (=> bs!586618 m!4508703))

(assert (=> bs!586618 m!4507537))

(declare-fun m!4508705 () Bool)

(assert (=> bs!586618 m!4508705))

(assert (=> b!3939049 d!1168682))

(declare-fun d!1168684 () Bool)

(assert (=> d!1168684 (not (= (lexList!1891 thiss!20629 rules!2768 (_2!23688 lt!1377947)) (tuple2!41107 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1378277 () Unit!60377)

(assert (=> d!1168684 (= lt!1378277 (choose!23504 thiss!20629 rules!2768 suffix!1176 (_2!23688 lt!1377947) suffixTokens!72 suffixResult!91))))

(assert (=> d!1168684 (not (isEmpty!24945 rules!2768))))

(assert (=> d!1168684 (= (lemmaLexWithSmallerInputCannotProduceSameResults!134 thiss!20629 rules!2768 suffix!1176 (_2!23688 lt!1377947) suffixTokens!72 suffixResult!91) lt!1378277)))

(declare-fun bs!586619 () Bool)

(assert (= bs!586619 d!1168684))

(assert (=> bs!586619 m!4507463))

(declare-fun m!4508707 () Bool)

(assert (=> bs!586619 m!4508707))

(assert (=> bs!586619 m!4507465))

(assert (=> b!3939049 d!1168684))

(declare-fun b!3939711 () Bool)

(declare-fun e!2437519 () Bool)

(declare-fun tp!1198575 () Bool)

(assert (=> b!3939711 (= e!2437519 (and tp_is_empty!19849 tp!1198575))))

(assert (=> b!3939045 (= tp!1198552 e!2437519)))

(assert (= (and b!3939045 ((_ is Cons!41820) (originalCharacters!7134 (h!47241 suffixTokens!72)))) b!3939711))

(declare-fun b!3939729 () Bool)

(declare-fun e!2437524 () Bool)

(declare-fun tp!1198588 () Bool)

(declare-fun tp!1198590 () Bool)

(assert (=> b!3939729 (= e!2437524 (and tp!1198588 tp!1198590))))

(declare-fun b!3939727 () Bool)

(declare-fun tp!1198586 () Bool)

(declare-fun tp!1198589 () Bool)

(assert (=> b!3939727 (= e!2437524 (and tp!1198586 tp!1198589))))

(declare-fun b!3939726 () Bool)

(assert (=> b!3939726 (= e!2437524 tp_is_empty!19849)))

(assert (=> b!3939076 (= tp!1198550 e!2437524)))

(declare-fun b!3939728 () Bool)

(declare-fun tp!1198587 () Bool)

(assert (=> b!3939728 (= e!2437524 tp!1198587)))

(assert (= (and b!3939076 ((_ is ElementMatch!11439) (regex!6534 (h!47242 rules!2768)))) b!3939726))

(assert (= (and b!3939076 ((_ is Concat!18204) (regex!6534 (h!47242 rules!2768)))) b!3939727))

(assert (= (and b!3939076 ((_ is Star!11439) (regex!6534 (h!47242 rules!2768)))) b!3939728))

(assert (= (and b!3939076 ((_ is Union!11439) (regex!6534 (h!47242 rules!2768)))) b!3939729))

(declare-fun b!3939730 () Bool)

(declare-fun e!2437525 () Bool)

(declare-fun tp!1198591 () Bool)

(assert (=> b!3939730 (= e!2437525 (and tp_is_empty!19849 tp!1198591))))

(assert (=> b!3939066 (= tp!1198547 e!2437525)))

(assert (= (and b!3939066 ((_ is Cons!41820) (t!326619 prefix!426))) b!3939730))

(declare-fun b!3939760 () Bool)

(declare-fun b_free!107657 () Bool)

(declare-fun b_next!108361 () Bool)

(assert (=> b!3939760 (= b_free!107657 (not b_next!108361))))

(declare-fun t!326671 () Bool)

(declare-fun tb!235997 () Bool)

(assert (=> (and b!3939760 (= (toValue!8994 (transformation!6534 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326671) tb!235997))

(declare-fun result!285888 () Bool)

(assert (= result!285888 result!285822))

(assert (=> d!1168332 t!326671))

(declare-fun tp!1198619 () Bool)

(declare-fun b_and!300923 () Bool)

(assert (=> b!3939760 (= tp!1198619 (and (=> t!326671 result!285888) b_and!300923))))

(declare-fun b_free!107659 () Bool)

(declare-fun b_next!108363 () Bool)

(assert (=> b!3939760 (= b_free!107659 (not b_next!108363))))

(declare-fun t!326673 () Bool)

(declare-fun tb!235999 () Bool)

(assert (=> (and b!3939760 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326673) tb!235999))

(declare-fun result!285890 () Bool)

(assert (= result!285890 result!285830))

(assert (=> d!1168336 t!326673))

(declare-fun t!326675 () Bool)

(declare-fun tb!236001 () Bool)

(assert (=> (and b!3939760 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))) t!326675) tb!236001))

(declare-fun result!285892 () Bool)

(assert (= result!285892 result!285846))

(assert (=> b!3939567 t!326675))

(declare-fun tb!236003 () Bool)

(declare-fun t!326677 () Bool)

(assert (=> (and b!3939760 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))) t!326677) tb!236003))

(declare-fun result!285894 () Bool)

(assert (= result!285894 result!285866))

(assert (=> b!3939656 t!326677))

(declare-fun b_and!300925 () Bool)

(declare-fun tp!1198616 () Bool)

(assert (=> b!3939760 (= tp!1198616 (and (=> t!326673 result!285890) (=> t!326675 result!285892) (=> t!326677 result!285894) b_and!300925))))

(declare-fun tp!1198617 () Bool)

(declare-fun b!3939758 () Bool)

(declare-fun e!2437556 () Bool)

(declare-fun e!2437558 () Bool)

(assert (=> b!3939758 (= e!2437558 (and (inv!21 (value!206853 (h!47241 (t!326620 prefixTokens!80)))) e!2437556 tp!1198617))))

(declare-fun e!2437555 () Bool)

(declare-fun tp!1198620 () Bool)

(declare-fun b!3939757 () Bool)

(assert (=> b!3939757 (= e!2437555 (and (inv!56021 (h!47241 (t!326620 prefixTokens!80))) e!2437558 tp!1198620))))

(assert (=> b!3939036 (= tp!1198561 e!2437555)))

(declare-fun tp!1198618 () Bool)

(declare-fun b!3939759 () Bool)

(declare-fun e!2437554 () Bool)

(assert (=> b!3939759 (= e!2437556 (and tp!1198618 (inv!56018 (tag!7394 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) (inv!56022 (transformation!6534 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) e!2437554))))

(assert (=> b!3939760 (= e!2437554 (and tp!1198619 tp!1198616))))

(assert (= b!3939759 b!3939760))

(assert (= b!3939758 b!3939759))

(assert (= b!3939757 b!3939758))

(assert (= (and b!3939036 ((_ is Cons!41821) (t!326620 prefixTokens!80))) b!3939757))

(declare-fun m!4508721 () Bool)

(assert (=> b!3939758 m!4508721))

(declare-fun m!4508723 () Bool)

(assert (=> b!3939757 m!4508723))

(declare-fun m!4508725 () Bool)

(assert (=> b!3939759 m!4508725))

(declare-fun m!4508727 () Bool)

(assert (=> b!3939759 m!4508727))

(declare-fun b!3939765 () Bool)

(declare-fun e!2437566 () Bool)

(declare-fun tp!1198626 () Bool)

(assert (=> b!3939765 (= e!2437566 (and tp_is_empty!19849 tp!1198626))))

(assert (=> b!3939047 (= tp!1198546 e!2437566)))

(assert (= (and b!3939047 ((_ is Cons!41820) (t!326619 suffixResult!91))) b!3939765))

(declare-fun b!3939766 () Bool)

(declare-fun e!2437567 () Bool)

(declare-fun tp!1198627 () Bool)

(assert (=> b!3939766 (= e!2437567 (and tp_is_empty!19849 tp!1198627))))

(assert (=> b!3939078 (= tp!1198560 e!2437567)))

(assert (= (and b!3939078 ((_ is Cons!41820) (originalCharacters!7134 (h!47241 prefixTokens!80)))) b!3939766))

(declare-fun b!3939770 () Bool)

(declare-fun e!2437568 () Bool)

(declare-fun tp!1198630 () Bool)

(declare-fun tp!1198632 () Bool)

(assert (=> b!3939770 (= e!2437568 (and tp!1198630 tp!1198632))))

(declare-fun b!3939768 () Bool)

(declare-fun tp!1198628 () Bool)

(declare-fun tp!1198631 () Bool)

(assert (=> b!3939768 (= e!2437568 (and tp!1198628 tp!1198631))))

(declare-fun b!3939767 () Bool)

(assert (=> b!3939767 (= e!2437568 tp_is_empty!19849)))

(assert (=> b!3939053 (= tp!1198562 e!2437568)))

(declare-fun b!3939769 () Bool)

(declare-fun tp!1198629 () Bool)

(assert (=> b!3939769 (= e!2437568 tp!1198629)))

(assert (= (and b!3939053 ((_ is ElementMatch!11439) (regex!6534 (rule!9490 (h!47241 suffixTokens!72))))) b!3939767))

(assert (= (and b!3939053 ((_ is Concat!18204) (regex!6534 (rule!9490 (h!47241 suffixTokens!72))))) b!3939768))

(assert (= (and b!3939053 ((_ is Star!11439) (regex!6534 (rule!9490 (h!47241 suffixTokens!72))))) b!3939769))

(assert (= (and b!3939053 ((_ is Union!11439) (regex!6534 (rule!9490 (h!47241 suffixTokens!72))))) b!3939770))

(declare-fun b!3939774 () Bool)

(declare-fun e!2437569 () Bool)

(declare-fun tp!1198635 () Bool)

(declare-fun tp!1198637 () Bool)

(assert (=> b!3939774 (= e!2437569 (and tp!1198635 tp!1198637))))

(declare-fun b!3939772 () Bool)

(declare-fun tp!1198633 () Bool)

(declare-fun tp!1198636 () Bool)

(assert (=> b!3939772 (= e!2437569 (and tp!1198633 tp!1198636))))

(declare-fun b!3939771 () Bool)

(assert (=> b!3939771 (= e!2437569 tp_is_empty!19849)))

(assert (=> b!3939082 (= tp!1198549 e!2437569)))

(declare-fun b!3939773 () Bool)

(declare-fun tp!1198634 () Bool)

(assert (=> b!3939773 (= e!2437569 tp!1198634)))

(assert (= (and b!3939082 ((_ is ElementMatch!11439) (regex!6534 (rule!9490 (h!47241 prefixTokens!80))))) b!3939771))

(assert (= (and b!3939082 ((_ is Concat!18204) (regex!6534 (rule!9490 (h!47241 prefixTokens!80))))) b!3939772))

(assert (= (and b!3939082 ((_ is Star!11439) (regex!6534 (rule!9490 (h!47241 prefixTokens!80))))) b!3939773))

(assert (= (and b!3939082 ((_ is Union!11439) (regex!6534 (rule!9490 (h!47241 prefixTokens!80))))) b!3939774))

(declare-fun b!3939778 () Bool)

(declare-fun b_free!107665 () Bool)

(declare-fun b_next!108369 () Bool)

(assert (=> b!3939778 (= b_free!107665 (not b_next!108369))))

(declare-fun t!326687 () Bool)

(declare-fun tb!236013 () Bool)

(assert (=> (and b!3939778 (= (toValue!8994 (transformation!6534 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326687) tb!236013))

(declare-fun result!285904 () Bool)

(assert (= result!285904 result!285822))

(assert (=> d!1168332 t!326687))

(declare-fun tp!1198641 () Bool)

(declare-fun b_and!300931 () Bool)

(assert (=> b!3939778 (= tp!1198641 (and (=> t!326687 result!285904) b_and!300931))))

(declare-fun b_free!107667 () Bool)

(declare-fun b_next!108371 () Bool)

(assert (=> b!3939778 (= b_free!107667 (not b_next!108371))))

(declare-fun t!326689 () Bool)

(declare-fun tb!236015 () Bool)

(assert (=> (and b!3939778 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326689) tb!236015))

(declare-fun result!285908 () Bool)

(assert (= result!285908 result!285830))

(assert (=> d!1168336 t!326689))

(declare-fun t!326691 () Bool)

(declare-fun tb!236017 () Bool)

(assert (=> (and b!3939778 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))) t!326691) tb!236017))

(declare-fun result!285910 () Bool)

(assert (= result!285910 result!285846))

(assert (=> b!3939567 t!326691))

(declare-fun t!326693 () Bool)

(declare-fun tb!236019 () Bool)

(assert (=> (and b!3939778 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))) t!326693) tb!236019))

(declare-fun result!285912 () Bool)

(assert (= result!285912 result!285866))

(assert (=> b!3939656 t!326693))

(declare-fun tp!1198638 () Bool)

(declare-fun b_and!300933 () Bool)

(assert (=> b!3939778 (= tp!1198638 (and (=> t!326689 result!285908) (=> t!326691 result!285910) (=> t!326693 result!285912) b_and!300933))))

(declare-fun e!2437572 () Bool)

(declare-fun tp!1198639 () Bool)

(declare-fun b!3939776 () Bool)

(declare-fun e!2437574 () Bool)

(assert (=> b!3939776 (= e!2437574 (and (inv!21 (value!206853 (h!47241 (t!326620 suffixTokens!72)))) e!2437572 tp!1198639))))

(declare-fun e!2437571 () Bool)

(declare-fun b!3939775 () Bool)

(declare-fun tp!1198642 () Bool)

(assert (=> b!3939775 (= e!2437571 (and (inv!56021 (h!47241 (t!326620 suffixTokens!72))) e!2437574 tp!1198642))))

(assert (=> b!3939050 (= tp!1198554 e!2437571)))

(declare-fun b!3939777 () Bool)

(declare-fun tp!1198640 () Bool)

(declare-fun e!2437570 () Bool)

(assert (=> b!3939777 (= e!2437572 (and tp!1198640 (inv!56018 (tag!7394 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) (inv!56022 (transformation!6534 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) e!2437570))))

(assert (=> b!3939778 (= e!2437570 (and tp!1198641 tp!1198638))))

(assert (= b!3939777 b!3939778))

(assert (= b!3939776 b!3939777))

(assert (= b!3939775 b!3939776))

(assert (= (and b!3939050 ((_ is Cons!41821) (t!326620 suffixTokens!72))) b!3939775))

(declare-fun m!4508737 () Bool)

(assert (=> b!3939776 m!4508737))

(declare-fun m!4508739 () Bool)

(assert (=> b!3939775 m!4508739))

(declare-fun m!4508741 () Bool)

(assert (=> b!3939777 m!4508741))

(declare-fun m!4508743 () Bool)

(assert (=> b!3939777 m!4508743))

(declare-fun b!3939813 () Bool)

(declare-fun b_free!107673 () Bool)

(declare-fun b_next!108377 () Bool)

(assert (=> b!3939813 (= b_free!107673 (not b_next!108377))))

(declare-fun t!326703 () Bool)

(declare-fun tb!236029 () Bool)

(assert (=> (and b!3939813 (= (toValue!8994 (transformation!6534 (h!47242 (t!326621 rules!2768)))) (toValue!8994 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326703) tb!236029))

(declare-fun result!285926 () Bool)

(assert (= result!285926 result!285822))

(assert (=> d!1168332 t!326703))

(declare-fun tp!1198680 () Bool)

(declare-fun b_and!300939 () Bool)

(assert (=> b!3939813 (= tp!1198680 (and (=> t!326703 result!285926) b_and!300939))))

(declare-fun b_free!107675 () Bool)

(declare-fun b_next!108379 () Bool)

(assert (=> b!3939813 (= b_free!107675 (not b_next!108379))))

(declare-fun tb!236031 () Bool)

(declare-fun t!326705 () Bool)

(assert (=> (and b!3939813 (= (toChars!8853 (transformation!6534 (h!47242 (t!326621 rules!2768)))) (toChars!8853 (transformation!6534 (rule!9490 (_1!23688 (v!39283 lt!1377909)))))) t!326705) tb!236031))

(declare-fun result!285928 () Bool)

(assert (= result!285928 result!285830))

(assert (=> d!1168336 t!326705))

(declare-fun tb!236033 () Bool)

(declare-fun t!326707 () Bool)

(assert (=> (and b!3939813 (= (toChars!8853 (transformation!6534 (h!47242 (t!326621 rules!2768)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80))))) t!326707) tb!236033))

(declare-fun result!285930 () Bool)

(assert (= result!285930 result!285846))

(assert (=> b!3939567 t!326707))

(declare-fun t!326709 () Bool)

(declare-fun tb!236035 () Bool)

(assert (=> (and b!3939813 (= (toChars!8853 (transformation!6534 (h!47242 (t!326621 rules!2768)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72))))) t!326709) tb!236035))

(declare-fun result!285932 () Bool)

(assert (= result!285932 result!285866))

(assert (=> b!3939656 t!326709))

(declare-fun b_and!300941 () Bool)

(declare-fun tp!1198679 () Bool)

(assert (=> b!3939813 (= tp!1198679 (and (=> t!326705 result!285928) (=> t!326707 result!285930) (=> t!326709 result!285932) b_and!300941))))

(declare-fun e!2437595 () Bool)

(assert (=> b!3939813 (= e!2437595 (and tp!1198680 tp!1198679))))

(declare-fun e!2437597 () Bool)

(declare-fun tp!1198678 () Bool)

(declare-fun b!3939811 () Bool)

(assert (=> b!3939811 (= e!2437597 (and tp!1198678 (inv!56018 (tag!7394 (h!47242 (t!326621 rules!2768)))) (inv!56022 (transformation!6534 (h!47242 (t!326621 rules!2768)))) e!2437595))))

(declare-fun b!3939810 () Bool)

(declare-fun e!2437596 () Bool)

(declare-fun tp!1198677 () Bool)

(assert (=> b!3939810 (= e!2437596 (and e!2437597 tp!1198677))))

(assert (=> b!3939057 (= tp!1198548 e!2437596)))

(assert (= b!3939811 b!3939813))

(assert (= b!3939810 b!3939811))

(assert (= (and b!3939057 ((_ is Cons!41822) (t!326621 rules!2768))) b!3939810))

(declare-fun m!4508753 () Bool)

(assert (=> b!3939811 m!4508753))

(declare-fun m!4508755 () Bool)

(assert (=> b!3939811 m!4508755))

(declare-fun b!3939822 () Bool)

(declare-fun e!2437608 () Bool)

(declare-fun tp!1198690 () Bool)

(assert (=> b!3939822 (= e!2437608 (and tp_is_empty!19849 tp!1198690))))

(assert (=> b!3939070 (= tp!1198553 e!2437608)))

(assert (= (and b!3939070 ((_ is Cons!41820) (t!326619 suffix!1176))) b!3939822))

(declare-fun b_lambda!115207 () Bool)

(assert (= b_lambda!115197 (or (and b!3939052 b_free!107647 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))))) (and b!3939778 b_free!107667 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))))) (and b!3939760 b_free!107659 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))))) (and b!3939084 b_free!107655 (= (toChars!8853 (transformation!6534 (h!47242 rules!2768))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))))) (and b!3939056 b_free!107651) (and b!3939813 b_free!107675 (= (toChars!8853 (transformation!6534 (h!47242 (t!326621 rules!2768)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))))) b_lambda!115207)))

(declare-fun b_lambda!115209 () Bool)

(assert (= b_lambda!115203 (or (and b!3939084 b_free!107655 (= (toChars!8853 (transformation!6534 (h!47242 rules!2768))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))))) (and b!3939813 b_free!107675 (= (toChars!8853 (transformation!6534 (h!47242 (t!326621 rules!2768)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))))) (and b!3939052 b_free!107647) (and b!3939778 b_free!107667 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 suffixTokens!72))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))))) (and b!3939056 b_free!107651 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 prefixTokens!80)))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))))) (and b!3939760 b_free!107659 (= (toChars!8853 (transformation!6534 (rule!9490 (h!47241 (t!326620 prefixTokens!80))))) (toChars!8853 (transformation!6534 (rule!9490 (h!47241 suffixTokens!72)))))) b_lambda!115209)))

(check-sat (not b!3939759) (not d!1168488) (not b!3939593) (not b_lambda!115191) (not b!3939529) (not d!1168548) (not b!3939478) (not d!1168592) (not b!3939682) (not d!1168538) (not d!1168474) (not b_lambda!115209) (not b!3939367) (not b!3939757) (not d!1168456) (not b!3939485) (not b!3939111) (not b!3939578) (not b!3939376) b_and!300925 (not b!3939538) (not b!3939811) (not d!1168522) (not b!3939353) (not tb!235985) (not b!3939774) (not b_next!108371) (not d!1168336) (not b!3939471) (not b!3939545) (not b!3939597) (not b!3939377) (not b!3939608) b_and!300877 (not d!1168526) (not b!3939379) (not b_next!108355) (not b!3939668) (not b!3939190) (not d!1168646) (not b!3939730) (not b!3939537) (not b!3939458) (not d!1168556) (not b_next!108349) (not b!3939093) (not b!3939573) (not d!1168442) (not d!1168446) (not d!1168650) (not b!3939769) (not b!3939366) (not b!3939552) (not b!3939568) (not b!3939457) (not b!3939341) (not d!1168568) (not b!3939389) (not b_next!108363) (not d!1168464) (not d!1168448) (not b!3939765) (not b!3939399) (not b!3939585) (not d!1168350) (not b!3939384) (not d!1168330) (not b!3939541) (not b!3939775) (not b!3939776) (not b!3939113) (not d!1168652) (not b!3939354) (not b!3939539) (not b!3939559) (not d!1168576) (not b!3939320) (not b_next!108351) (not b!3939402) (not b!3939395) b_and!300911 (not b!3939727) (not b!3939390) tp_is_empty!19849 (not b!3939488) (not b_next!108357) (not d!1168358) (not b!3939312) (not b!3939551) (not b!3939454) (not b!3939656) (not b!3939599) (not d!1168342) (not b!3939591) (not b!3939309) (not b!3939343) (not b!3939124) (not b!3939534) (not b!3939672) (not d!1168444) (not b!3939114) (not d!1168684) (not bm!285036) (not b!3939487) (not b!3939548) (not b!3939218) (not b!3939547) (not d!1168366) (not b!3939685) (not b!3939492) (not d!1168570) (not b!3939153) b_and!300941 (not b!3939557) (not b!3939676) (not b!3939572) (not b!3939728) (not b!3939582) (not b!3939371) (not b!3939543) (not bm!285040) (not b!3939556) (not d!1168376) (not d!1168408) (not d!1168500) (not b!3939822) b_and!300875 (not b!3939535) (not b!3939595) (not b!3939314) (not b!3939318) b_and!300939 (not b!3939310) (not d!1168584) (not tb!235949) (not b!3939596) (not b_next!108369) (not b!3939530) (not b!3939374) b_and!300915 (not b!3939479) b_and!300923 (not b!3939313) (not b!3939569) (not b!3939600) (not d!1168424) (not b!3939603) (not b!3939217) (not d!1168452) (not b!3939684) (not d!1168458) (not b!3939308) (not b!3939460) (not b!3939476) (not b!3939711) (not b!3939662) (not b!3939452) (not b_next!108361) (not d!1168426) (not b!3939099) (not d!1168492) (not b!3939679) (not d!1168352) (not tb!235967) (not b_next!108379) (not b!3939773) (not b!3939131) (not b!3939152) (not b!3939670) (not b_lambda!115207) (not d!1168550) (not b_lambda!115193) (not b_next!108359) b_and!300879 (not b!3939220) (not b!3939606) (not b!3939677) (not b!3939594) (not d!1168532) (not b!3939154) (not d!1168552) (not b!3939533) (not d!1168450) (not b!3939579) (not b!3939777) (not b!3939398) (not d!1168420) b_and!300933 (not b!3939321) (not b!3939369) (not d!1168504) b_and!300931 (not b!3939766) (not d!1168410) (not b!3939316) (not b!3939549) (not d!1168540) (not d!1168602) (not b!3939484) (not b!3939125) (not b!3939544) (not d!1168438) b_and!300913 (not b!3939583) (not b!3939575) (not b!3939601) (not b!3939605) (not b!3939673) (not d!1168334) (not b!3939342) (not b!3939383) (not b!3939567) (not b!3939607) (not b!3939474) (not b!3939456) (not d!1168632) (not b!3939772) (not tb!235955) (not b!3939483) (not b!3939491) (not d!1168648) (not b!3939770) (not b!3939810) (not b!3939609) (not b!3939372) (not d!1168682) (not b!3939657) (not d!1168362) (not d!1168346) (not b!3939459) (not b!3939768) (not b!3939729) (not b_next!108353) (not d!1168656) (not d!1168544) (not b!3939311) (not bm!285041) (not d!1168502) (not b!3939394) (not b!3939453) (not b!3939758) (not b!3939611) (not b!3939365) (not b!3939613) (not d!1168588) (not b!3939481) (not b_next!108377) (not d!1168498) (not b!3939610) (not d!1168340) (not b!3939380) (not b!3939598))
(check-sat b_and!300877 (not b_next!108355) (not b_next!108349) (not b_next!108363) (not b_next!108357) b_and!300941 b_and!300875 (not b_next!108361) b_and!300879 b_and!300913 (not b_next!108353) (not b_next!108377) b_and!300925 (not b_next!108371) (not b_next!108351) b_and!300911 b_and!300939 (not b_next!108369) b_and!300915 b_and!300923 (not b_next!108379) (not b_next!108359) b_and!300933 b_and!300931)

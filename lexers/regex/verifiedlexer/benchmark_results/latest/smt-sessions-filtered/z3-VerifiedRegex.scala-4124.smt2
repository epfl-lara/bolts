; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221228 () Bool)

(assert start!221228)

(declare-fun b!2264360 () Bool)

(declare-fun b_free!66973 () Bool)

(declare-fun b_next!67677 () Bool)

(assert (=> b!2264360 (= b_free!66973 (not b_next!67677))))

(declare-fun tp!716298 () Bool)

(declare-fun b_and!178057 () Bool)

(assert (=> b!2264360 (= tp!716298 b_and!178057)))

(declare-fun b_free!66975 () Bool)

(declare-fun b_next!67679 () Bool)

(assert (=> b!2264360 (= b_free!66975 (not b_next!67679))))

(declare-fun tp!716282 () Bool)

(declare-fun b_and!178059 () Bool)

(assert (=> b!2264360 (= tp!716282 b_and!178059)))

(declare-fun b!2264371 () Bool)

(declare-fun b_free!66977 () Bool)

(declare-fun b_next!67681 () Bool)

(assert (=> b!2264371 (= b_free!66977 (not b_next!67681))))

(declare-fun tp!716295 () Bool)

(declare-fun b_and!178061 () Bool)

(assert (=> b!2264371 (= tp!716295 b_and!178061)))

(declare-fun b_free!66979 () Bool)

(declare-fun b_next!67683 () Bool)

(assert (=> b!2264371 (= b_free!66979 (not b_next!67683))))

(declare-fun tp!716286 () Bool)

(declare-fun b_and!178063 () Bool)

(assert (=> b!2264371 (= tp!716286 b_and!178063)))

(declare-fun b!2264361 () Bool)

(declare-fun b_free!66981 () Bool)

(declare-fun b_next!67685 () Bool)

(assert (=> b!2264361 (= b_free!66981 (not b_next!67685))))

(declare-fun tp!716297 () Bool)

(declare-fun b_and!178065 () Bool)

(assert (=> b!2264361 (= tp!716297 b_and!178065)))

(declare-fun b_free!66983 () Bool)

(declare-fun b_next!67687 () Bool)

(assert (=> b!2264361 (= b_free!66983 (not b_next!67687))))

(declare-fun tp!716289 () Bool)

(declare-fun b_and!178067 () Bool)

(assert (=> b!2264361 (= tp!716289 b_and!178067)))

(declare-fun b!2264354 () Bool)

(declare-fun b_free!66985 () Bool)

(declare-fun b_next!67689 () Bool)

(assert (=> b!2264354 (= b_free!66985 (not b_next!67689))))

(declare-fun tp!716291 () Bool)

(declare-fun b_and!178069 () Bool)

(assert (=> b!2264354 (= tp!716291 b_and!178069)))

(declare-fun b_free!66987 () Bool)

(declare-fun b_next!67691 () Bool)

(assert (=> b!2264354 (= b_free!66987 (not b_next!67691))))

(declare-fun tp!716293 () Bool)

(declare-fun b_and!178071 () Bool)

(assert (=> b!2264354 (= tp!716293 b_and!178071)))

(declare-fun tp!716287 () Bool)

(declare-fun b!2264338 () Bool)

(declare-fun e!1449871 () Bool)

(declare-datatypes ((List!26983 0))(
  ( (Nil!26889) (Cons!26889 (h!32290 (_ BitVec 16)) (t!201981 List!26983)) )
))
(declare-datatypes ((TokenValue!4441 0))(
  ( (FloatLiteralValue!8882 (text!31532 List!26983)) (TokenValueExt!4440 (__x!17942 Int)) (Broken!22205 (value!135745 List!26983)) (Object!4534) (End!4441) (Def!4441) (Underscore!4441) (Match!4441) (Else!4441) (Error!4441) (Case!4441) (If!4441) (Extends!4441) (Abstract!4441) (Class!4441) (Val!4441) (DelimiterValue!8882 (del!4501 List!26983)) (KeywordValue!4447 (value!135746 List!26983)) (CommentValue!8882 (value!135747 List!26983)) (WhitespaceValue!8882 (value!135748 List!26983)) (IndentationValue!4441 (value!135749 List!26983)) (String!29308) (Int32!4441) (Broken!22206 (value!135750 List!26983)) (Boolean!4442) (Unit!39833) (OperatorValue!4444 (op!4501 List!26983)) (IdentifierValue!8882 (value!135751 List!26983)) (IdentifierValue!8883 (value!135752 List!26983)) (WhitespaceValue!8883 (value!135753 List!26983)) (True!8882) (False!8882) (Broken!22207 (value!135754 List!26983)) (Broken!22208 (value!135755 List!26983)) (True!8883) (RightBrace!4441) (RightBracket!4441) (Colon!4441) (Null!4441) (Comma!4441) (LeftBracket!4441) (False!8883) (LeftBrace!4441) (ImaginaryLiteralValue!4441 (text!31533 List!26983)) (StringLiteralValue!13323 (value!135756 List!26983)) (EOFValue!4441 (value!135757 List!26983)) (IdentValue!4441 (value!135758 List!26983)) (DelimiterValue!8883 (value!135759 List!26983)) (DedentValue!4441 (value!135760 List!26983)) (NewLineValue!4441 (value!135761 List!26983)) (IntegerValue!13323 (value!135762 (_ BitVec 32)) (text!31534 List!26983)) (IntegerValue!13324 (value!135763 Int) (text!31535 List!26983)) (Times!4441) (Or!4441) (Equal!4441) (Minus!4441) (Broken!22209 (value!135764 List!26983)) (And!4441) (Div!4441) (LessEqual!4441) (Mod!4441) (Concat!11068) (Not!4441) (Plus!4441) (SpaceValue!4441 (value!135765 List!26983)) (IntegerValue!13325 (value!135766 Int) (text!31536 List!26983)) (StringLiteralValue!13324 (text!31537 List!26983)) (FloatLiteralValue!8883 (text!31538 List!26983)) (BytesLiteralValue!4441 (value!135767 List!26983)) (CommentValue!8883 (value!135768 List!26983)) (StringLiteralValue!13325 (value!135769 List!26983)) (ErrorTokenValue!4441 (msg!4502 List!26983)) )
))
(declare-datatypes ((C!13400 0))(
  ( (C!13401 (val!7748 Int)) )
))
(declare-datatypes ((List!26984 0))(
  ( (Nil!26890) (Cons!26890 (h!32291 C!13400) (t!201982 List!26984)) )
))
(declare-datatypes ((IArray!17417 0))(
  ( (IArray!17418 (innerList!8766 List!26984)) )
))
(declare-datatypes ((Conc!8706 0))(
  ( (Node!8706 (left!20410 Conc!8706) (right!20740 Conc!8706) (csize!17642 Int) (cheight!8917 Int)) (Leaf!12831 (xs!11648 IArray!17417) (csize!17643 Int)) (Empty!8706) )
))
(declare-datatypes ((BalanceConc!17140 0))(
  ( (BalanceConc!17141 (c!359716 Conc!8706)) )
))
(declare-datatypes ((String!29309 0))(
  ( (String!29310 (value!135770 String)) )
))
(declare-datatypes ((Regex!6627 0))(
  ( (ElementMatch!6627 (c!359717 C!13400)) (Concat!11069 (regOne!13766 Regex!6627) (regTwo!13766 Regex!6627)) (EmptyExpr!6627) (Star!6627 (reg!6956 Regex!6627)) (EmptyLang!6627) (Union!6627 (regOne!13767 Regex!6627) (regTwo!13767 Regex!6627)) )
))
(declare-datatypes ((TokenValueInjection!8422 0))(
  ( (TokenValueInjection!8423 (toValue!6033 Int) (toChars!5892 Int)) )
))
(declare-datatypes ((Rule!8358 0))(
  ( (Rule!8359 (regex!4279 Regex!6627) (tag!4769 String!29309) (isSeparator!4279 Bool) (transformation!4279 TokenValueInjection!8422)) )
))
(declare-fun otherR!12 () Rule!8358)

(declare-fun e!1449864 () Bool)

(declare-fun inv!36435 (String!29309) Bool)

(declare-fun inv!36438 (TokenValueInjection!8422) Bool)

(assert (=> b!2264338 (= e!1449864 (and tp!716287 (inv!36435 (tag!4769 otherR!12)) (inv!36438 (transformation!4279 otherR!12)) e!1449871))))

(declare-fun b!2264339 () Bool)

(declare-fun res!967903 () Bool)

(declare-fun e!1449880 () Bool)

(assert (=> b!2264339 (=> (not res!967903) (not e!1449880))))

(declare-datatypes ((List!26985 0))(
  ( (Nil!26891) (Cons!26891 (h!32292 Rule!8358) (t!201983 List!26985)) )
))
(declare-fun rules!1750 () List!26985)

(declare-fun r!2363 () Rule!8358)

(declare-fun contains!4637 (List!26985 Rule!8358) Bool)

(assert (=> b!2264339 (= res!967903 (contains!4637 rules!1750 r!2363))))

(declare-fun b!2264340 () Bool)

(declare-fun e!1449859 () Bool)

(declare-fun e!1449885 () Bool)

(declare-fun tp!716290 () Bool)

(assert (=> b!2264340 (= e!1449859 (and tp!716290 (inv!36435 (tag!4769 (h!32292 rules!1750))) (inv!36438 (transformation!4279 (h!32292 rules!1750))) e!1449885))))

(declare-fun b!2264341 () Bool)

(declare-fun e!1449861 () Bool)

(declare-datatypes ((Token!8036 0))(
  ( (Token!8037 (value!135771 TokenValue!4441) (rule!6593 Rule!8358) (size!21082 Int) (originalCharacters!5049 List!26984)) )
))
(declare-datatypes ((List!26986 0))(
  ( (Nil!26892) (Cons!26892 (h!32293 Token!8036) (t!201984 List!26986)) )
))
(declare-fun tokens!456 () List!26986)

(declare-fun head!4864 (List!26986) Token!8036)

(assert (=> b!2264341 (= e!1449861 (= (rule!6593 (head!4864 tokens!456)) r!2363))))

(declare-fun b!2264342 () Bool)

(declare-fun e!1449875 () Bool)

(declare-fun e!1449873 () Bool)

(assert (=> b!2264342 (= e!1449875 e!1449873)))

(declare-fun res!967902 () Bool)

(assert (=> b!2264342 (=> res!967902 e!1449873)))

(declare-fun lt!841303 () Int)

(declare-fun lt!841302 () Int)

(assert (=> b!2264342 (= res!967902 (<= lt!841303 lt!841302))))

(declare-fun lt!841314 () List!26984)

(declare-fun size!21083 (List!26984) Int)

(assert (=> b!2264342 (= lt!841302 (size!21083 lt!841314))))

(declare-fun otherP!12 () List!26984)

(assert (=> b!2264342 (= lt!841303 (size!21083 otherP!12))))

(declare-datatypes ((tuple2!26506 0))(
  ( (tuple2!26507 (_1!15763 Token!8036) (_2!15763 List!26984)) )
))
(declare-fun lt!841304 () tuple2!26506)

(declare-fun lt!841319 () List!26984)

(assert (=> b!2264342 (= (_2!15763 lt!841304) lt!841319)))

(declare-fun input!1722 () List!26984)

(declare-datatypes ((Unit!39834 0))(
  ( (Unit!39835) )
))
(declare-fun lt!841317 () Unit!39834)

(declare-fun lemmaSamePrefixThenSameSuffix!998 (List!26984 List!26984 List!26984 List!26984 List!26984) Unit!39834)

(assert (=> b!2264342 (= lt!841317 (lemmaSamePrefixThenSameSuffix!998 lt!841314 (_2!15763 lt!841304) lt!841314 lt!841319 input!1722))))

(declare-fun getSuffix!1080 (List!26984 List!26984) List!26984)

(assert (=> b!2264342 (= lt!841319 (getSuffix!1080 input!1722 lt!841314))))

(declare-fun isPrefix!2269 (List!26984 List!26984) Bool)

(declare-fun ++!6551 (List!26984 List!26984) List!26984)

(assert (=> b!2264342 (isPrefix!2269 lt!841314 (++!6551 lt!841314 (_2!15763 lt!841304)))))

(declare-fun lt!841312 () Unit!39834)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1494 (List!26984 List!26984) Unit!39834)

(assert (=> b!2264342 (= lt!841312 (lemmaConcatTwoListThenFirstIsPrefix!1494 lt!841314 (_2!15763 lt!841304)))))

(declare-fun list!10389 (BalanceConc!17140) List!26984)

(declare-fun charsOf!2667 (Token!8036) BalanceConc!17140)

(assert (=> b!2264342 (= lt!841314 (list!10389 (charsOf!2667 (h!32293 tokens!456))))))

(declare-datatypes ((LexerInterface!3876 0))(
  ( (LexerInterfaceExt!3873 (__x!17943 Int)) (Lexer!3874) )
))
(declare-fun thiss!16613 () LexerInterface!3876)

(declare-datatypes ((Option!5257 0))(
  ( (None!5256) (Some!5256 (v!30294 tuple2!26506)) )
))
(declare-fun get!8112 (Option!5257) tuple2!26506)

(declare-fun maxPrefix!2150 (LexerInterface!3876 List!26985 List!26984) Option!5257)

(assert (=> b!2264342 (= lt!841304 (get!8112 (maxPrefix!2150 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2264343 () Bool)

(declare-fun e!1449863 () Bool)

(declare-fun e!1449860 () Bool)

(assert (=> b!2264343 (= e!1449863 (not e!1449860))))

(declare-fun res!967899 () Bool)

(assert (=> b!2264343 (=> res!967899 e!1449860)))

(declare-fun e!1449862 () Bool)

(assert (=> b!2264343 (= res!967899 e!1449862)))

(declare-fun res!967910 () Bool)

(assert (=> b!2264343 (=> (not res!967910) (not e!1449862))))

(declare-fun lt!841315 () Bool)

(assert (=> b!2264343 (= res!967910 (not lt!841315))))

(declare-fun ruleValid!1371 (LexerInterface!3876 Rule!8358) Bool)

(assert (=> b!2264343 (ruleValid!1371 thiss!16613 r!2363)))

(declare-fun lt!841308 () Unit!39834)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!778 (LexerInterface!3876 Rule!8358 List!26985) Unit!39834)

(assert (=> b!2264343 (= lt!841308 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!778 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2264344 () Bool)

(declare-fun e!1449889 () Bool)

(assert (=> b!2264344 (= e!1449889 e!1449875)))

(declare-fun res!967906 () Bool)

(assert (=> b!2264344 (=> res!967906 e!1449875)))

(get-info :version)

(assert (=> b!2264344 (= res!967906 ((_ is Nil!26892) tokens!456))))

(declare-fun lt!841306 () Unit!39834)

(declare-fun e!1449867 () Unit!39834)

(assert (=> b!2264344 (= lt!841306 e!1449867)))

(declare-fun c!359715 () Bool)

(declare-fun lt!841309 () Int)

(declare-fun lt!841316 () Int)

(assert (=> b!2264344 (= c!359715 (= lt!841309 lt!841316))))

(declare-fun b!2264345 () Bool)

(declare-fun e!1449868 () Bool)

(assert (=> b!2264345 (= e!1449868 true)))

(assert (=> b!2264345 (isPrefix!2269 input!1722 input!1722)))

(declare-fun lt!841320 () Unit!39834)

(declare-fun lemmaIsPrefixRefl!1453 (List!26984 List!26984) Unit!39834)

(assert (=> b!2264345 (= lt!841320 (lemmaIsPrefixRefl!1453 input!1722 input!1722))))

(declare-fun lt!841311 () Unit!39834)

(declare-fun lt!841307 () BalanceConc!17140)

(declare-fun lemmaSemiInverse!1026 (TokenValueInjection!8422 BalanceConc!17140) Unit!39834)

(assert (=> b!2264345 (= lt!841311 (lemmaSemiInverse!1026 (transformation!4279 r!2363) lt!841307))))

(declare-fun b!2264346 () Bool)

(declare-fun res!967901 () Bool)

(assert (=> b!2264346 (=> (not res!967901) (not e!1449863))))

(assert (=> b!2264346 (= res!967901 e!1449861)))

(declare-fun res!967896 () Bool)

(assert (=> b!2264346 (=> res!967896 e!1449861)))

(assert (=> b!2264346 (= res!967896 lt!841315)))

(declare-fun res!967898 () Bool)

(assert (=> start!221228 (=> (not res!967898) (not e!1449880))))

(assert (=> start!221228 (= res!967898 ((_ is Lexer!3874) thiss!16613))))

(assert (=> start!221228 e!1449880))

(assert (=> start!221228 true))

(declare-fun e!1449884 () Bool)

(assert (=> start!221228 e!1449884))

(assert (=> start!221228 e!1449864))

(declare-fun e!1449887 () Bool)

(assert (=> start!221228 e!1449887))

(declare-fun e!1449881 () Bool)

(assert (=> start!221228 e!1449881))

(declare-fun e!1449879 () Bool)

(assert (=> start!221228 e!1449879))

(declare-fun e!1449870 () Bool)

(assert (=> start!221228 e!1449870))

(declare-fun e!1449869 () Bool)

(assert (=> start!221228 e!1449869))

(declare-fun b!2264347 () Bool)

(declare-fun Unit!39836 () Unit!39834)

(assert (=> b!2264347 (= e!1449867 Unit!39836)))

(declare-fun lt!841310 () Unit!39834)

(declare-fun lemmaSameIndexThenSameElement!146 (List!26985 Rule!8358 Rule!8358) Unit!39834)

(assert (=> b!2264347 (= lt!841310 (lemmaSameIndexThenSameElement!146 rules!1750 r!2363 otherR!12))))

(assert (=> b!2264347 false))

(declare-fun b!2264348 () Bool)

(declare-fun res!967912 () Bool)

(assert (=> b!2264348 (=> res!967912 e!1449868)))

(declare-fun matchR!2888 (Regex!6627 List!26984) Bool)

(assert (=> b!2264348 (= res!967912 (not (matchR!2888 (regex!4279 r!2363) lt!841314)))))

(declare-fun e!1449888 () Bool)

(declare-fun b!2264349 () Bool)

(declare-fun tp!716285 () Bool)

(declare-fun e!1449866 () Bool)

(declare-fun inv!21 (TokenValue!4441) Bool)

(assert (=> b!2264349 (= e!1449866 (and (inv!21 (value!135771 (h!32293 tokens!456))) e!1449888 tp!716285))))

(declare-fun b!2264350 () Bool)

(declare-fun tp_is_empty!10475 () Bool)

(declare-fun tp!716299 () Bool)

(assert (=> b!2264350 (= e!1449884 (and tp_is_empty!10475 tp!716299))))

(declare-fun b!2264351 () Bool)

(assert (=> b!2264351 (= e!1449860 e!1449889)))

(declare-fun res!967905 () Bool)

(assert (=> b!2264351 (=> res!967905 e!1449889)))

(assert (=> b!2264351 (= res!967905 (> lt!841309 lt!841316))))

(declare-fun getIndex!300 (List!26985 Rule!8358) Int)

(assert (=> b!2264351 (= lt!841316 (getIndex!300 rules!1750 otherR!12))))

(assert (=> b!2264351 (= lt!841309 (getIndex!300 rules!1750 r!2363))))

(assert (=> b!2264351 (ruleValid!1371 thiss!16613 otherR!12)))

(declare-fun lt!841313 () Unit!39834)

(assert (=> b!2264351 (= lt!841313 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!778 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2264352 () Bool)

(declare-fun tp!716294 () Bool)

(assert (=> b!2264352 (= e!1449879 (and e!1449859 tp!716294))))

(declare-fun tp!716284 () Bool)

(declare-fun b!2264353 () Bool)

(declare-fun e!1449886 () Bool)

(assert (=> b!2264353 (= e!1449888 (and tp!716284 (inv!36435 (tag!4769 (rule!6593 (h!32293 tokens!456)))) (inv!36438 (transformation!4279 (rule!6593 (h!32293 tokens!456)))) e!1449886))))

(assert (=> b!2264354 (= e!1449885 (and tp!716291 tp!716293))))

(declare-fun b!2264355 () Bool)

(assert (=> b!2264355 (= e!1449862 (not (matchR!2888 (regex!4279 r!2363) (list!10389 (charsOf!2667 (head!4864 tokens!456))))))))

(declare-fun b!2264356 () Bool)

(declare-fun e!1449877 () Bool)

(assert (=> b!2264356 (= e!1449877 e!1449863)))

(declare-fun res!967914 () Bool)

(assert (=> b!2264356 (=> (not res!967914) (not e!1449863))))

(declare-fun e!1449878 () Bool)

(assert (=> b!2264356 (= res!967914 e!1449878)))

(declare-fun res!967908 () Bool)

(assert (=> b!2264356 (=> res!967908 e!1449878)))

(assert (=> b!2264356 (= res!967908 lt!841315)))

(declare-fun isEmpty!15213 (List!26986) Bool)

(assert (=> b!2264356 (= lt!841315 (isEmpty!15213 tokens!456))))

(declare-fun b!2264357 () Bool)

(declare-fun tp!716292 () Bool)

(assert (=> b!2264357 (= e!1449887 (and tp_is_empty!10475 tp!716292))))

(declare-fun b!2264358 () Bool)

(declare-fun Unit!39837 () Unit!39834)

(assert (=> b!2264358 (= e!1449867 Unit!39837)))

(declare-fun b!2264359 () Bool)

(assert (=> b!2264359 (= e!1449873 e!1449868)))

(declare-fun res!967909 () Bool)

(assert (=> b!2264359 (=> res!967909 e!1449868)))

(assert (=> b!2264359 (= res!967909 (not (isPrefix!2269 lt!841314 input!1722)))))

(declare-fun maxPrefixOneRule!1344 (LexerInterface!3876 Rule!8358 List!26984) Option!5257)

(declare-fun apply!6583 (TokenValueInjection!8422 BalanceConc!17140) TokenValue!4441)

(assert (=> b!2264359 (= (maxPrefixOneRule!1344 thiss!16613 r!2363 input!1722) (Some!5256 (tuple2!26507 (Token!8037 (apply!6583 (transformation!4279 r!2363) lt!841307) r!2363 lt!841302 lt!841314) (_2!15763 lt!841304))))))

(declare-fun seqFromList!2983 (List!26984) BalanceConc!17140)

(assert (=> b!2264359 (= lt!841307 (seqFromList!2983 lt!841314))))

(declare-fun lt!841305 () Unit!39834)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!569 (LexerInterface!3876 List!26985 List!26984 List!26984 List!26984 Rule!8358) Unit!39834)

(assert (=> b!2264359 (= lt!841305 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!569 thiss!16613 rules!1750 lt!841314 input!1722 (_2!15763 lt!841304) r!2363))))

(assert (=> b!2264360 (= e!1449886 (and tp!716298 tp!716282))))

(declare-fun e!1449882 () Bool)

(assert (=> b!2264361 (= e!1449882 (and tp!716297 tp!716289))))

(declare-fun b!2264362 () Bool)

(declare-fun res!967907 () Bool)

(assert (=> b!2264362 (=> (not res!967907) (not e!1449880))))

(declare-fun rulesInvariant!3378 (LexerInterface!3876 List!26985) Bool)

(assert (=> b!2264362 (= res!967907 (rulesInvariant!3378 thiss!16613 rules!1750))))

(declare-fun b!2264363 () Bool)

(declare-fun res!967897 () Bool)

(assert (=> b!2264363 (=> (not res!967897) (not e!1449863))))

(assert (=> b!2264363 (= res!967897 (isPrefix!2269 otherP!12 input!1722))))

(declare-fun b!2264364 () Bool)

(declare-fun res!967900 () Bool)

(assert (=> b!2264364 (=> (not res!967900) (not e!1449880))))

(declare-fun isEmpty!15214 (List!26985) Bool)

(assert (=> b!2264364 (= res!967900 (not (isEmpty!15214 rules!1750)))))

(declare-fun b!2264365 () Bool)

(declare-fun res!967911 () Bool)

(assert (=> b!2264365 (=> (not res!967911) (not e!1449863))))

(assert (=> b!2264365 (= res!967911 (not (= r!2363 otherR!12)))))

(declare-fun tp!716296 () Bool)

(declare-fun b!2264366 () Bool)

(declare-fun inv!36439 (Token!8036) Bool)

(assert (=> b!2264366 (= e!1449869 (and (inv!36439 (h!32293 tokens!456)) e!1449866 tp!716296))))

(declare-fun tp!716288 () Bool)

(declare-fun b!2264367 () Bool)

(assert (=> b!2264367 (= e!1449870 (and tp!716288 (inv!36435 (tag!4769 r!2363)) (inv!36438 (transformation!4279 r!2363)) e!1449882))))

(declare-fun b!2264368 () Bool)

(declare-fun size!21084 (BalanceConc!17140) Int)

(assert (=> b!2264368 (= e!1449878 (<= (size!21084 (charsOf!2667 (head!4864 tokens!456))) (size!21083 otherP!12)))))

(declare-fun b!2264369 () Bool)

(declare-fun tp!716283 () Bool)

(assert (=> b!2264369 (= e!1449881 (and tp_is_empty!10475 tp!716283))))

(declare-fun b!2264370 () Bool)

(assert (=> b!2264370 (= e!1449880 e!1449877)))

(declare-fun res!967913 () Bool)

(assert (=> b!2264370 (=> (not res!967913) (not e!1449877))))

(declare-fun suffix!886 () List!26984)

(declare-datatypes ((IArray!17419 0))(
  ( (IArray!17420 (innerList!8767 List!26986)) )
))
(declare-datatypes ((Conc!8707 0))(
  ( (Node!8707 (left!20411 Conc!8707) (right!20741 Conc!8707) (csize!17644 Int) (cheight!8918 Int)) (Leaf!12832 (xs!11649 IArray!17419) (csize!17645 Int)) (Empty!8707) )
))
(declare-datatypes ((BalanceConc!17142 0))(
  ( (BalanceConc!17143 (c!359718 Conc!8707)) )
))
(declare-datatypes ((tuple2!26508 0))(
  ( (tuple2!26509 (_1!15764 BalanceConc!17142) (_2!15764 BalanceConc!17140)) )
))
(declare-fun lt!841318 () tuple2!26508)

(declare-datatypes ((tuple2!26510 0))(
  ( (tuple2!26511 (_1!15765 List!26986) (_2!15765 List!26984)) )
))
(declare-fun list!10390 (BalanceConc!17142) List!26986)

(assert (=> b!2264370 (= res!967913 (= (tuple2!26511 (list!10390 (_1!15764 lt!841318)) (list!10389 (_2!15764 lt!841318))) (tuple2!26511 tokens!456 suffix!886)))))

(declare-fun lex!1715 (LexerInterface!3876 List!26985 BalanceConc!17140) tuple2!26508)

(assert (=> b!2264370 (= lt!841318 (lex!1715 thiss!16613 rules!1750 (seqFromList!2983 input!1722)))))

(assert (=> b!2264371 (= e!1449871 (and tp!716295 tp!716286))))

(declare-fun b!2264372 () Bool)

(declare-fun res!967904 () Bool)

(assert (=> b!2264372 (=> (not res!967904) (not e!1449880))))

(assert (=> b!2264372 (= res!967904 (contains!4637 rules!1750 otherR!12))))

(assert (= (and start!221228 res!967898) b!2264364))

(assert (= (and b!2264364 res!967900) b!2264362))

(assert (= (and b!2264362 res!967907) b!2264339))

(assert (= (and b!2264339 res!967903) b!2264372))

(assert (= (and b!2264372 res!967904) b!2264370))

(assert (= (and b!2264370 res!967913) b!2264356))

(assert (= (and b!2264356 (not res!967908)) b!2264368))

(assert (= (and b!2264356 res!967914) b!2264346))

(assert (= (and b!2264346 (not res!967896)) b!2264341))

(assert (= (and b!2264346 res!967901) b!2264363))

(assert (= (and b!2264363 res!967897) b!2264365))

(assert (= (and b!2264365 res!967911) b!2264343))

(assert (= (and b!2264343 res!967910) b!2264355))

(assert (= (and b!2264343 (not res!967899)) b!2264351))

(assert (= (and b!2264351 (not res!967905)) b!2264344))

(assert (= (and b!2264344 c!359715) b!2264347))

(assert (= (and b!2264344 (not c!359715)) b!2264358))

(assert (= (and b!2264344 (not res!967906)) b!2264342))

(assert (= (and b!2264342 (not res!967902)) b!2264359))

(assert (= (and b!2264359 (not res!967909)) b!2264348))

(assert (= (and b!2264348 (not res!967912)) b!2264345))

(assert (= (and start!221228 ((_ is Cons!26890) input!1722)) b!2264350))

(assert (= b!2264338 b!2264371))

(assert (= start!221228 b!2264338))

(assert (= (and start!221228 ((_ is Cons!26890) suffix!886)) b!2264357))

(assert (= (and start!221228 ((_ is Cons!26890) otherP!12)) b!2264369))

(assert (= b!2264340 b!2264354))

(assert (= b!2264352 b!2264340))

(assert (= (and start!221228 ((_ is Cons!26891) rules!1750)) b!2264352))

(assert (= b!2264367 b!2264361))

(assert (= start!221228 b!2264367))

(assert (= b!2264353 b!2264360))

(assert (= b!2264349 b!2264353))

(assert (= b!2264366 b!2264349))

(assert (= (and start!221228 ((_ is Cons!26892) tokens!456)) b!2264366))

(declare-fun m!2693755 () Bool)

(assert (=> b!2264342 m!2693755))

(declare-fun m!2693757 () Bool)

(assert (=> b!2264342 m!2693757))

(declare-fun m!2693759 () Bool)

(assert (=> b!2264342 m!2693759))

(declare-fun m!2693761 () Bool)

(assert (=> b!2264342 m!2693761))

(declare-fun m!2693763 () Bool)

(assert (=> b!2264342 m!2693763))

(assert (=> b!2264342 m!2693761))

(declare-fun m!2693765 () Bool)

(assert (=> b!2264342 m!2693765))

(declare-fun m!2693767 () Bool)

(assert (=> b!2264342 m!2693767))

(assert (=> b!2264342 m!2693765))

(declare-fun m!2693769 () Bool)

(assert (=> b!2264342 m!2693769))

(assert (=> b!2264342 m!2693759))

(declare-fun m!2693771 () Bool)

(assert (=> b!2264342 m!2693771))

(declare-fun m!2693773 () Bool)

(assert (=> b!2264342 m!2693773))

(declare-fun m!2693775 () Bool)

(assert (=> b!2264342 m!2693775))

(declare-fun m!2693777 () Bool)

(assert (=> b!2264343 m!2693777))

(declare-fun m!2693779 () Bool)

(assert (=> b!2264343 m!2693779))

(declare-fun m!2693781 () Bool)

(assert (=> b!2264364 m!2693781))

(declare-fun m!2693783 () Bool)

(assert (=> b!2264356 m!2693783))

(declare-fun m!2693785 () Bool)

(assert (=> b!2264366 m!2693785))

(declare-fun m!2693787 () Bool)

(assert (=> b!2264372 m!2693787))

(declare-fun m!2693789 () Bool)

(assert (=> b!2264368 m!2693789))

(assert (=> b!2264368 m!2693789))

(declare-fun m!2693791 () Bool)

(assert (=> b!2264368 m!2693791))

(assert (=> b!2264368 m!2693791))

(declare-fun m!2693793 () Bool)

(assert (=> b!2264368 m!2693793))

(assert (=> b!2264368 m!2693773))

(declare-fun m!2693795 () Bool)

(assert (=> b!2264367 m!2693795))

(declare-fun m!2693797 () Bool)

(assert (=> b!2264367 m!2693797))

(declare-fun m!2693799 () Bool)

(assert (=> b!2264349 m!2693799))

(assert (=> b!2264355 m!2693789))

(assert (=> b!2264355 m!2693789))

(assert (=> b!2264355 m!2693791))

(assert (=> b!2264355 m!2693791))

(declare-fun m!2693801 () Bool)

(assert (=> b!2264355 m!2693801))

(assert (=> b!2264355 m!2693801))

(declare-fun m!2693803 () Bool)

(assert (=> b!2264355 m!2693803))

(declare-fun m!2693805 () Bool)

(assert (=> b!2264347 m!2693805))

(declare-fun m!2693807 () Bool)

(assert (=> b!2264345 m!2693807))

(declare-fun m!2693809 () Bool)

(assert (=> b!2264345 m!2693809))

(declare-fun m!2693811 () Bool)

(assert (=> b!2264345 m!2693811))

(declare-fun m!2693813 () Bool)

(assert (=> b!2264348 m!2693813))

(declare-fun m!2693815 () Bool)

(assert (=> b!2264359 m!2693815))

(declare-fun m!2693817 () Bool)

(assert (=> b!2264359 m!2693817))

(declare-fun m!2693819 () Bool)

(assert (=> b!2264359 m!2693819))

(declare-fun m!2693821 () Bool)

(assert (=> b!2264359 m!2693821))

(declare-fun m!2693823 () Bool)

(assert (=> b!2264359 m!2693823))

(declare-fun m!2693825 () Bool)

(assert (=> b!2264370 m!2693825))

(declare-fun m!2693827 () Bool)

(assert (=> b!2264370 m!2693827))

(declare-fun m!2693829 () Bool)

(assert (=> b!2264370 m!2693829))

(assert (=> b!2264370 m!2693829))

(declare-fun m!2693831 () Bool)

(assert (=> b!2264370 m!2693831))

(declare-fun m!2693833 () Bool)

(assert (=> b!2264363 m!2693833))

(declare-fun m!2693835 () Bool)

(assert (=> b!2264353 m!2693835))

(declare-fun m!2693837 () Bool)

(assert (=> b!2264353 m!2693837))

(declare-fun m!2693839 () Bool)

(assert (=> b!2264351 m!2693839))

(declare-fun m!2693841 () Bool)

(assert (=> b!2264351 m!2693841))

(declare-fun m!2693843 () Bool)

(assert (=> b!2264351 m!2693843))

(declare-fun m!2693845 () Bool)

(assert (=> b!2264351 m!2693845))

(declare-fun m!2693847 () Bool)

(assert (=> b!2264339 m!2693847))

(declare-fun m!2693849 () Bool)

(assert (=> b!2264362 m!2693849))

(declare-fun m!2693851 () Bool)

(assert (=> b!2264338 m!2693851))

(declare-fun m!2693853 () Bool)

(assert (=> b!2264338 m!2693853))

(declare-fun m!2693855 () Bool)

(assert (=> b!2264340 m!2693855))

(declare-fun m!2693857 () Bool)

(assert (=> b!2264340 m!2693857))

(assert (=> b!2264341 m!2693789))

(check-sat (not b!2264364) (not b!2264366) b_and!178057 (not b!2264359) (not b!2264356) (not b_next!67685) (not b!2264367) (not b_next!67691) (not b_next!67683) b_and!178061 (not b!2264362) (not b_next!67687) (not b_next!67689) b_and!178059 (not b_next!67681) (not b!2264343) (not b!2264372) (not b_next!67677) (not b!2264338) (not b!2264363) (not b!2264339) tp_is_empty!10475 (not b!2264368) (not b!2264349) (not b!2264347) (not b!2264340) (not b!2264348) (not b!2264370) (not b!2264352) (not b!2264369) (not b_next!67679) b_and!178069 b_and!178071 (not b!2264351) (not b!2264350) (not b!2264341) b_and!178063 (not b!2264345) b_and!178065 (not b!2264353) (not b!2264357) (not b!2264355) (not b!2264342) b_and!178067)
(check-sat (not b_next!67681) (not b_next!67677) b_and!178057 (not b_next!67685) b_and!178071 b_and!178063 (not b_next!67691) (not b_next!67683) b_and!178061 b_and!178065 (not b_next!67687) (not b_next!67689) b_and!178059 b_and!178067 (not b_next!67679) b_and!178069)

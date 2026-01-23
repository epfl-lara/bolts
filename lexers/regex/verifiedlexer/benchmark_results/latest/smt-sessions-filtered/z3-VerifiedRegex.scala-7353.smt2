; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390854 () Bool)

(assert start!390854)

(declare-fun b!4121490 () Bool)

(declare-fun b_free!116523 () Bool)

(declare-fun b_next!117227 () Bool)

(assert (=> b!4121490 (= b_free!116523 (not b_next!117227))))

(declare-fun tp!1255903 () Bool)

(declare-fun b_and!318821 () Bool)

(assert (=> b!4121490 (= tp!1255903 b_and!318821)))

(declare-fun b_free!116525 () Bool)

(declare-fun b_next!117229 () Bool)

(assert (=> b!4121490 (= b_free!116525 (not b_next!117229))))

(declare-fun tp!1255897 () Bool)

(declare-fun b_and!318823 () Bool)

(assert (=> b!4121490 (= tp!1255897 b_and!318823)))

(declare-fun b!4121499 () Bool)

(declare-fun b_free!116527 () Bool)

(declare-fun b_next!117231 () Bool)

(assert (=> b!4121499 (= b_free!116527 (not b_next!117231))))

(declare-fun tp!1255902 () Bool)

(declare-fun b_and!318825 () Bool)

(assert (=> b!4121499 (= tp!1255902 b_and!318825)))

(declare-fun b_free!116529 () Bool)

(declare-fun b_next!117233 () Bool)

(assert (=> b!4121499 (= b_free!116529 (not b_next!117233))))

(declare-fun tp!1255901 () Bool)

(declare-fun b_and!318827 () Bool)

(assert (=> b!4121499 (= tp!1255901 b_and!318827)))

(declare-fun b!4121496 () Bool)

(declare-fun b_free!116531 () Bool)

(declare-fun b_next!117235 () Bool)

(assert (=> b!4121496 (= b_free!116531 (not b_next!117235))))

(declare-fun tp!1255900 () Bool)

(declare-fun b_and!318829 () Bool)

(assert (=> b!4121496 (= tp!1255900 b_and!318829)))

(declare-fun b_free!116533 () Bool)

(declare-fun b_next!117237 () Bool)

(assert (=> b!4121496 (= b_free!116533 (not b_next!117237))))

(declare-fun tp!1255898 () Bool)

(declare-fun b_and!318831 () Bool)

(assert (=> b!4121496 (= tp!1255898 b_and!318831)))

(declare-fun b!4121487 () Bool)

(declare-fun e!2557366 () Bool)

(declare-fun e!2557362 () Bool)

(assert (=> b!4121487 (= e!2557366 e!2557362)))

(declare-fun res!1683928 () Bool)

(assert (=> b!4121487 (=> res!1683928 e!2557362)))

(declare-datatypes ((C!24552 0))(
  ( (C!24553 (val!14386 Int)) )
))
(declare-datatypes ((List!44687 0))(
  ( (Nil!44563) (Cons!44563 (h!49983 C!24552) (t!340798 List!44687)) )
))
(declare-fun input!3238 () List!44687)

(declare-fun lt!1470332 () List!44687)

(declare-fun p!2912 () List!44687)

(declare-fun ++!11554 (List!44687 List!44687) List!44687)

(assert (=> b!4121487 (= res!1683928 (not (= (++!11554 p!2912 lt!1470332) input!3238)))))

(declare-fun lt!1470334 () List!44687)

(declare-fun lt!1470328 () List!44687)

(declare-fun getSuffix!2542 (List!44687 List!44687) List!44687)

(assert (=> b!4121487 (= lt!1470334 (getSuffix!2542 input!3238 lt!1470328))))

(declare-datatypes ((IArray!26983 0))(
  ( (IArray!26984 (innerList!13549 List!44687)) )
))
(declare-datatypes ((Conc!13489 0))(
  ( (Node!13489 (left!33382 Conc!13489) (right!33712 Conc!13489) (csize!27208 Int) (cheight!13700 Int)) (Leaf!20843 (xs!16795 IArray!26983) (csize!27209 Int)) (Empty!13489) )
))
(declare-datatypes ((BalanceConc!26572 0))(
  ( (BalanceConc!26573 (c!707672 Conc!13489)) )
))
(declare-fun lt!1470340 () BalanceConc!26572)

(declare-fun list!16353 (BalanceConc!26572) List!44687)

(assert (=> b!4121487 (= lt!1470328 (list!16353 lt!1470340))))

(declare-fun b!4121488 () Bool)

(declare-fun e!2557352 () Bool)

(declare-fun e!2557353 () Bool)

(assert (=> b!4121488 (= e!2557352 (not e!2557353))))

(declare-fun res!1683932 () Bool)

(assert (=> b!4121488 (=> res!1683932 e!2557353)))

(declare-datatypes ((List!44688 0))(
  ( (Nil!44564) (Cons!44564 (h!49984 (_ BitVec 16)) (t!340799 List!44688)) )
))
(declare-datatypes ((TokenValue!7508 0))(
  ( (FloatLiteralValue!15016 (text!53001 List!44688)) (TokenValueExt!7507 (__x!27233 Int)) (Broken!37540 (value!227951 List!44688)) (Object!7631) (End!7508) (Def!7508) (Underscore!7508) (Match!7508) (Else!7508) (Error!7508) (Case!7508) (If!7508) (Extends!7508) (Abstract!7508) (Class!7508) (Val!7508) (DelimiterValue!15016 (del!7568 List!44688)) (KeywordValue!7514 (value!227952 List!44688)) (CommentValue!15016 (value!227953 List!44688)) (WhitespaceValue!15016 (value!227954 List!44688)) (IndentationValue!7508 (value!227955 List!44688)) (String!51289) (Int32!7508) (Broken!37541 (value!227956 List!44688)) (Boolean!7509) (Unit!63910) (OperatorValue!7511 (op!7568 List!44688)) (IdentifierValue!15016 (value!227957 List!44688)) (IdentifierValue!15017 (value!227958 List!44688)) (WhitespaceValue!15017 (value!227959 List!44688)) (True!15016) (False!15016) (Broken!37542 (value!227960 List!44688)) (Broken!37543 (value!227961 List!44688)) (True!15017) (RightBrace!7508) (RightBracket!7508) (Colon!7508) (Null!7508) (Comma!7508) (LeftBracket!7508) (False!15017) (LeftBrace!7508) (ImaginaryLiteralValue!7508 (text!53002 List!44688)) (StringLiteralValue!22524 (value!227962 List!44688)) (EOFValue!7508 (value!227963 List!44688)) (IdentValue!7508 (value!227964 List!44688)) (DelimiterValue!15017 (value!227965 List!44688)) (DedentValue!7508 (value!227966 List!44688)) (NewLineValue!7508 (value!227967 List!44688)) (IntegerValue!22524 (value!227968 (_ BitVec 32)) (text!53003 List!44688)) (IntegerValue!22525 (value!227969 Int) (text!53004 List!44688)) (Times!7508) (Or!7508) (Equal!7508) (Minus!7508) (Broken!37544 (value!227970 List!44688)) (And!7508) (Div!7508) (LessEqual!7508) (Mod!7508) (Concat!19691) (Not!7508) (Plus!7508) (SpaceValue!7508 (value!227971 List!44688)) (IntegerValue!22526 (value!227972 Int) (text!53005 List!44688)) (StringLiteralValue!22525 (text!53006 List!44688)) (FloatLiteralValue!15017 (text!53007 List!44688)) (BytesLiteralValue!7508 (value!227973 List!44688)) (CommentValue!15017 (value!227974 List!44688)) (StringLiteralValue!22526 (value!227975 List!44688)) (ErrorTokenValue!7508 (msg!7569 List!44688)) )
))
(declare-datatypes ((Regex!12183 0))(
  ( (ElementMatch!12183 (c!707673 C!24552)) (Concat!19692 (regOne!24878 Regex!12183) (regTwo!24878 Regex!12183)) (EmptyExpr!12183) (Star!12183 (reg!12512 Regex!12183)) (EmptyLang!12183) (Union!12183 (regOne!24879 Regex!12183) (regTwo!24879 Regex!12183)) )
))
(declare-datatypes ((String!51290 0))(
  ( (String!51291 (value!227976 String)) )
))
(declare-datatypes ((TokenValueInjection!14444 0))(
  ( (TokenValueInjection!14445 (toValue!9930 Int) (toChars!9789 Int)) )
))
(declare-datatypes ((Rule!14356 0))(
  ( (Rule!14357 (regex!7278 Regex!12183) (tag!8138 String!51290) (isSeparator!7278 Bool) (transformation!7278 TokenValueInjection!14444)) )
))
(declare-datatypes ((List!44689 0))(
  ( (Nil!44565) (Cons!44565 (h!49985 Rule!14356) (t!340800 List!44689)) )
))
(declare-fun rules!3756 () List!44689)

(declare-fun rBis!149 () Rule!14356)

(get-info :version)

(assert (=> b!4121488 (= res!1683932 (or (not ((_ is Cons!44565) rules!3756)) (not (= (h!49985 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!63911 0))(
  ( (Unit!63912) )
))
(declare-fun lt!1470330 () Unit!63911)

(declare-datatypes ((LexerInterface!6867 0))(
  ( (LexerInterfaceExt!6864 (__x!27234 Int)) (Lexer!6865) )
))
(declare-fun thiss!25645 () LexerInterface!6867)

(declare-fun r!4008 () Rule!14356)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2130 (LexerInterface!6867 Rule!14356 List!44689) Unit!63911)

(assert (=> b!4121488 (= lt!1470330 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2130 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3086 (LexerInterface!6867 Rule!14356) Bool)

(assert (=> b!4121488 (ruleValid!3086 thiss!25645 rBis!149)))

(declare-fun lt!1470338 () Unit!63911)

(assert (=> b!4121488 (= lt!1470338 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2130 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4121489 () Bool)

(declare-fun res!1683926 () Bool)

(declare-fun e!2557356 () Bool)

(assert (=> b!4121489 (=> (not res!1683926) (not e!2557356))))

(declare-fun rulesInvariant!6164 (LexerInterface!6867 List!44689) Bool)

(assert (=> b!4121489 (= res!1683926 (rulesInvariant!6164 thiss!25645 rules!3756))))

(declare-fun e!2557361 () Bool)

(assert (=> b!4121490 (= e!2557361 (and tp!1255903 tp!1255897))))

(declare-fun b!4121491 () Bool)

(declare-fun e!2557365 () Bool)

(assert (=> b!4121491 (= e!2557365 true)))

(declare-fun lt!1470342 () List!44687)

(assert (=> b!4121491 (= lt!1470342 (++!11554 lt!1470328 lt!1470334))))

(declare-fun b!4121492 () Bool)

(declare-fun res!1683935 () Bool)

(assert (=> b!4121492 (=> (not res!1683935) (not e!2557352))))

(declare-fun getIndex!626 (List!44689 Rule!14356) Int)

(assert (=> b!4121492 (= res!1683935 (< (getIndex!626 rules!3756 rBis!149) (getIndex!626 rules!3756 r!4008)))))

(declare-fun e!2557364 () Bool)

(declare-fun tp!1255905 () Bool)

(declare-fun e!2557348 () Bool)

(declare-fun b!4121493 () Bool)

(declare-fun inv!59148 (String!51290) Bool)

(declare-fun inv!59150 (TokenValueInjection!14444) Bool)

(assert (=> b!4121493 (= e!2557364 (and tp!1255905 (inv!59148 (tag!8138 rBis!149)) (inv!59150 (transformation!7278 rBis!149)) e!2557348))))

(declare-fun b!4121494 () Bool)

(declare-fun e!2557355 () Bool)

(declare-fun tp_is_empty!21289 () Bool)

(declare-fun tp!1255899 () Bool)

(assert (=> b!4121494 (= e!2557355 (and tp_is_empty!21289 tp!1255899))))

(declare-fun b!4121495 () Bool)

(declare-fun e!2557350 () Bool)

(assert (=> b!4121495 (= e!2557353 e!2557350)))

(declare-fun res!1683934 () Bool)

(assert (=> b!4121495 (=> res!1683934 e!2557350)))

(declare-datatypes ((Token!13486 0))(
  ( (Token!13487 (value!227977 TokenValue!7508) (rule!10354 Rule!14356) (size!32984 Int) (originalCharacters!7774 List!44687)) )
))
(declare-datatypes ((tuple2!43034 0))(
  ( (tuple2!43035 (_1!24651 Token!13486) (_2!24651 List!44687)) )
))
(declare-datatypes ((Option!9586 0))(
  ( (None!9585) (Some!9585 (v!40173 tuple2!43034)) )
))
(declare-fun lt!1470327 () Option!9586)

(declare-fun isEmpty!26508 (Option!9586) Bool)

(assert (=> b!4121495 (= res!1683934 (isEmpty!26508 lt!1470327))))

(declare-fun maxPrefixOneRule!3009 (LexerInterface!6867 Rule!14356 List!44687) Option!9586)

(assert (=> b!4121495 (= lt!1470327 (maxPrefixOneRule!3009 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4121495 (not (= rBis!149 r!4008))))

(declare-fun lt!1470341 () Unit!63911)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!18 (LexerInterface!6867 List!44689 Rule!14356 Rule!14356) Unit!63911)

(assert (=> b!4121495 (= lt!1470341 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!18 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!8950 (List!44689 Rule!14356) Bool)

(declare-fun tail!6437 (List!44689) List!44689)

(assert (=> b!4121495 (contains!8950 (tail!6437 rules!3756) r!4008)))

(declare-fun lt!1470333 () Unit!63911)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!20 (List!44689 Rule!14356 Rule!14356) Unit!63911)

(assert (=> b!4121495 (= lt!1470333 (lemmaGetIndexBiggerAndHeadEqThenTailContains!20 rules!3756 rBis!149 r!4008))))

(assert (=> b!4121496 (= e!2557348 (and tp!1255900 tp!1255898))))

(declare-fun b!4121497 () Bool)

(declare-fun e!2557349 () Bool)

(declare-fun tp!1255896 () Bool)

(assert (=> b!4121497 (= e!2557349 (and tp_is_empty!21289 tp!1255896))))

(declare-fun tp!1255895 () Bool)

(declare-fun b!4121498 () Bool)

(declare-fun e!2557351 () Bool)

(assert (=> b!4121498 (= e!2557351 (and tp!1255895 (inv!59148 (tag!8138 (h!49985 rules!3756))) (inv!59150 (transformation!7278 (h!49985 rules!3756))) e!2557361))))

(declare-fun b!4121500 () Bool)

(declare-fun res!1683929 () Bool)

(assert (=> b!4121500 (=> res!1683929 e!2557362)))

(declare-fun isPrefix!4213 (List!44687 List!44687) Bool)

(assert (=> b!4121500 (= res!1683929 (not (isPrefix!4213 lt!1470328 input!3238)))))

(declare-fun b!4121501 () Bool)

(declare-fun res!1683927 () Bool)

(assert (=> b!4121501 (=> (not res!1683927) (not e!2557352))))

(declare-fun matchR!6014 (Regex!12183 List!44687) Bool)

(assert (=> b!4121501 (= res!1683927 (matchR!6014 (regex!7278 r!4008) p!2912))))

(declare-fun b!4121502 () Bool)

(declare-fun res!1683922 () Bool)

(assert (=> b!4121502 (=> (not res!1683922) (not e!2557356))))

(declare-fun isEmpty!26509 (List!44689) Bool)

(assert (=> b!4121502 (= res!1683922 (not (isEmpty!26509 rules!3756)))))

(declare-fun b!4121503 () Bool)

(assert (=> b!4121503 (= e!2557350 e!2557366)))

(declare-fun res!1683925 () Bool)

(assert (=> b!4121503 (=> res!1683925 e!2557366)))

(declare-fun lt!1470337 () Int)

(declare-fun size!32985 (BalanceConc!26572) Int)

(assert (=> b!4121503 (= res!1683925 (<= (size!32985 lt!1470340) lt!1470337))))

(declare-fun lt!1470331 () tuple2!43034)

(declare-fun charsOf!4900 (Token!13486) BalanceConc!26572)

(assert (=> b!4121503 (= lt!1470340 (charsOf!4900 (_1!24651 lt!1470331)))))

(declare-fun get!14535 (Option!9586) tuple2!43034)

(assert (=> b!4121503 (= lt!1470331 (get!14535 lt!1470327))))

(declare-fun b!4121504 () Bool)

(assert (=> b!4121504 (= e!2557362 e!2557365)))

(declare-fun res!1683938 () Bool)

(assert (=> b!4121504 (=> res!1683938 e!2557365)))

(assert (=> b!4121504 (= res!1683938 (or (not (= lt!1470327 (Some!9585 (tuple2!43035 (_1!24651 lt!1470331) lt!1470334)))) (not (= (rule!10354 (_1!24651 lt!1470331)) rBis!149))))))

(assert (=> b!4121504 (isPrefix!4213 input!3238 input!3238)))

(declare-fun lt!1470335 () Unit!63911)

(declare-fun lemmaIsPrefixRefl!2734 (List!44687 List!44687) Unit!63911)

(assert (=> b!4121504 (= lt!1470335 (lemmaIsPrefixRefl!2734 input!3238 input!3238))))

(declare-fun b!4121505 () Bool)

(declare-fun res!1683931 () Bool)

(assert (=> b!4121505 (=> (not res!1683931) (not e!2557356))))

(assert (=> b!4121505 (= res!1683931 (isPrefix!4213 p!2912 input!3238))))

(declare-fun b!4121506 () Bool)

(assert (=> b!4121506 (= e!2557356 e!2557352)))

(declare-fun res!1683933 () Bool)

(assert (=> b!4121506 (=> (not res!1683933) (not e!2557352))))

(declare-fun lt!1470339 () TokenValue!7508)

(declare-fun maxPrefix!4059 (LexerInterface!6867 List!44689 List!44687) Option!9586)

(assert (=> b!4121506 (= res!1683933 (= (maxPrefix!4059 thiss!25645 rules!3756 input!3238) (Some!9585 (tuple2!43035 (Token!13487 lt!1470339 r!4008 lt!1470337 p!2912) lt!1470332))))))

(assert (=> b!4121506 (= lt!1470332 (getSuffix!2542 input!3238 p!2912))))

(declare-fun size!32986 (List!44687) Int)

(assert (=> b!4121506 (= lt!1470337 (size!32986 p!2912))))

(declare-fun lt!1470329 () BalanceConc!26572)

(declare-fun apply!10351 (TokenValueInjection!14444 BalanceConc!26572) TokenValue!7508)

(assert (=> b!4121506 (= lt!1470339 (apply!10351 (transformation!7278 r!4008) lt!1470329))))

(declare-fun lt!1470336 () Unit!63911)

(declare-fun lemmaSemiInverse!2136 (TokenValueInjection!14444 BalanceConc!26572) Unit!63911)

(assert (=> b!4121506 (= lt!1470336 (lemmaSemiInverse!2136 (transformation!7278 r!4008) lt!1470329))))

(declare-fun seqFromList!5395 (List!44687) BalanceConc!26572)

(assert (=> b!4121506 (= lt!1470329 (seqFromList!5395 p!2912))))

(declare-fun b!4121507 () Bool)

(declare-fun res!1683937 () Bool)

(assert (=> b!4121507 (=> (not res!1683937) (not e!2557356))))

(assert (=> b!4121507 (= res!1683937 (contains!8950 rules!3756 r!4008))))

(declare-fun b!4121508 () Bool)

(declare-fun res!1683923 () Bool)

(assert (=> b!4121508 (=> (not res!1683923) (not e!2557356))))

(assert (=> b!4121508 (= res!1683923 (contains!8950 rules!3756 rBis!149))))

(declare-fun res!1683930 () Bool)

(assert (=> start!390854 (=> (not res!1683930) (not e!2557356))))

(assert (=> start!390854 (= res!1683930 ((_ is Lexer!6865) thiss!25645))))

(assert (=> start!390854 e!2557356))

(declare-fun e!2557363 () Bool)

(assert (=> start!390854 e!2557363))

(assert (=> start!390854 e!2557355))

(assert (=> start!390854 true))

(declare-fun e!2557358 () Bool)

(assert (=> start!390854 e!2557358))

(assert (=> start!390854 e!2557349))

(assert (=> start!390854 e!2557364))

(declare-fun e!2557357 () Bool)

(assert (=> b!4121499 (= e!2557357 (and tp!1255902 tp!1255901))))

(declare-fun b!4121509 () Bool)

(declare-fun tp!1255906 () Bool)

(assert (=> b!4121509 (= e!2557358 (and tp!1255906 (inv!59148 (tag!8138 r!4008)) (inv!59150 (transformation!7278 r!4008)) e!2557357))))

(declare-fun b!4121510 () Bool)

(declare-fun tp!1255904 () Bool)

(assert (=> b!4121510 (= e!2557363 (and e!2557351 tp!1255904))))

(declare-fun b!4121511 () Bool)

(declare-fun res!1683924 () Bool)

(assert (=> b!4121511 (=> (not res!1683924) (not e!2557356))))

(declare-fun isEmpty!26510 (List!44687) Bool)

(assert (=> b!4121511 (= res!1683924 (not (isEmpty!26510 p!2912)))))

(declare-fun b!4121512 () Bool)

(declare-fun res!1683936 () Bool)

(assert (=> b!4121512 (=> (not res!1683936) (not e!2557352))))

(assert (=> b!4121512 (= res!1683936 (ruleValid!3086 thiss!25645 r!4008))))

(assert (= (and start!390854 res!1683930) b!4121505))

(assert (= (and b!4121505 res!1683931) b!4121502))

(assert (= (and b!4121502 res!1683922) b!4121489))

(assert (= (and b!4121489 res!1683926) b!4121507))

(assert (= (and b!4121507 res!1683937) b!4121508))

(assert (= (and b!4121508 res!1683923) b!4121511))

(assert (= (and b!4121511 res!1683924) b!4121506))

(assert (= (and b!4121506 res!1683933) b!4121501))

(assert (= (and b!4121501 res!1683927) b!4121492))

(assert (= (and b!4121492 res!1683935) b!4121512))

(assert (= (and b!4121512 res!1683936) b!4121488))

(assert (= (and b!4121488 (not res!1683932)) b!4121495))

(assert (= (and b!4121495 (not res!1683934)) b!4121503))

(assert (= (and b!4121503 (not res!1683925)) b!4121487))

(assert (= (and b!4121487 (not res!1683928)) b!4121500))

(assert (= (and b!4121500 (not res!1683929)) b!4121504))

(assert (= (and b!4121504 (not res!1683938)) b!4121491))

(assert (= b!4121498 b!4121490))

(assert (= b!4121510 b!4121498))

(assert (= (and start!390854 ((_ is Cons!44565) rules!3756)) b!4121510))

(assert (= (and start!390854 ((_ is Cons!44563) p!2912)) b!4121494))

(assert (= b!4121509 b!4121499))

(assert (= start!390854 b!4121509))

(assert (= (and start!390854 ((_ is Cons!44563) input!3238)) b!4121497))

(assert (= b!4121493 b!4121496))

(assert (= start!390854 b!4121493))

(declare-fun m!4720563 () Bool)

(assert (=> b!4121511 m!4720563))

(declare-fun m!4720565 () Bool)

(assert (=> b!4121498 m!4720565))

(declare-fun m!4720567 () Bool)

(assert (=> b!4121498 m!4720567))

(declare-fun m!4720569 () Bool)

(assert (=> b!4121505 m!4720569))

(declare-fun m!4720571 () Bool)

(assert (=> b!4121503 m!4720571))

(declare-fun m!4720573 () Bool)

(assert (=> b!4121503 m!4720573))

(declare-fun m!4720575 () Bool)

(assert (=> b!4121503 m!4720575))

(declare-fun m!4720577 () Bool)

(assert (=> b!4121512 m!4720577))

(declare-fun m!4720579 () Bool)

(assert (=> b!4121491 m!4720579))

(declare-fun m!4720581 () Bool)

(assert (=> b!4121493 m!4720581))

(declare-fun m!4720583 () Bool)

(assert (=> b!4121493 m!4720583))

(declare-fun m!4720585 () Bool)

(assert (=> b!4121500 m!4720585))

(declare-fun m!4720587 () Bool)

(assert (=> b!4121487 m!4720587))

(declare-fun m!4720589 () Bool)

(assert (=> b!4121487 m!4720589))

(declare-fun m!4720591 () Bool)

(assert (=> b!4121487 m!4720591))

(declare-fun m!4720593 () Bool)

(assert (=> b!4121502 m!4720593))

(declare-fun m!4720595 () Bool)

(assert (=> b!4121504 m!4720595))

(declare-fun m!4720597 () Bool)

(assert (=> b!4121504 m!4720597))

(declare-fun m!4720599 () Bool)

(assert (=> b!4121492 m!4720599))

(declare-fun m!4720601 () Bool)

(assert (=> b!4121492 m!4720601))

(declare-fun m!4720603 () Bool)

(assert (=> b!4121506 m!4720603))

(declare-fun m!4720605 () Bool)

(assert (=> b!4121506 m!4720605))

(declare-fun m!4720607 () Bool)

(assert (=> b!4121506 m!4720607))

(declare-fun m!4720609 () Bool)

(assert (=> b!4121506 m!4720609))

(declare-fun m!4720611 () Bool)

(assert (=> b!4121506 m!4720611))

(declare-fun m!4720613 () Bool)

(assert (=> b!4121506 m!4720613))

(declare-fun m!4720615 () Bool)

(assert (=> b!4121508 m!4720615))

(declare-fun m!4720617 () Bool)

(assert (=> b!4121488 m!4720617))

(declare-fun m!4720619 () Bool)

(assert (=> b!4121488 m!4720619))

(declare-fun m!4720621 () Bool)

(assert (=> b!4121488 m!4720621))

(declare-fun m!4720623 () Bool)

(assert (=> b!4121495 m!4720623))

(declare-fun m!4720625 () Bool)

(assert (=> b!4121495 m!4720625))

(assert (=> b!4121495 m!4720623))

(declare-fun m!4720627 () Bool)

(assert (=> b!4121495 m!4720627))

(declare-fun m!4720629 () Bool)

(assert (=> b!4121495 m!4720629))

(declare-fun m!4720631 () Bool)

(assert (=> b!4121495 m!4720631))

(declare-fun m!4720633 () Bool)

(assert (=> b!4121495 m!4720633))

(declare-fun m!4720635 () Bool)

(assert (=> b!4121507 m!4720635))

(declare-fun m!4720637 () Bool)

(assert (=> b!4121501 m!4720637))

(declare-fun m!4720639 () Bool)

(assert (=> b!4121489 m!4720639))

(declare-fun m!4720641 () Bool)

(assert (=> b!4121509 m!4720641))

(declare-fun m!4720643 () Bool)

(assert (=> b!4121509 m!4720643))

(check-sat (not b!4121502) (not b!4121510) (not b!4121498) (not b_next!117229) (not b!4121489) (not b_next!117233) (not b_next!117235) b_and!318827 (not b!4121487) b_and!318829 b_and!318823 (not b!4121509) (not b_next!117227) (not b!4121493) b_and!318831 b_and!318825 (not b!4121501) (not b!4121507) (not b!4121505) (not b!4121491) (not b!4121504) (not b!4121488) (not b!4121500) tp_is_empty!21289 (not b!4121503) (not b!4121494) (not b!4121512) (not b!4121497) (not b_next!117231) (not b!4121511) (not b!4121492) (not b_next!117237) (not b!4121508) b_and!318821 (not b!4121495) (not b!4121506))
(check-sat (not b_next!117229) (not b_next!117233) (not b_next!117235) (not b_next!117231) b_and!318827 (not b_next!117237) b_and!318821 b_and!318829 b_and!318823 (not b_next!117227) b_and!318831 b_and!318825)

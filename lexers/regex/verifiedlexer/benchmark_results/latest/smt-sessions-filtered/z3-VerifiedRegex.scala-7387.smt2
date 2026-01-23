; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392742 () Bool)

(assert start!392742)

(declare-fun b!4135323 () Bool)

(declare-fun b_free!117507 () Bool)

(declare-fun b_next!118211 () Bool)

(assert (=> b!4135323 (= b_free!117507 (not b_next!118211))))

(declare-fun tp!1260535 () Bool)

(declare-fun b_and!320801 () Bool)

(assert (=> b!4135323 (= tp!1260535 b_and!320801)))

(declare-fun b_free!117509 () Bool)

(declare-fun b_next!118213 () Bool)

(assert (=> b!4135323 (= b_free!117509 (not b_next!118213))))

(declare-fun tp!1260529 () Bool)

(declare-fun b_and!320803 () Bool)

(assert (=> b!4135323 (= tp!1260529 b_and!320803)))

(declare-fun b!4135327 () Bool)

(declare-fun b_free!117511 () Bool)

(declare-fun b_next!118215 () Bool)

(assert (=> b!4135327 (= b_free!117511 (not b_next!118215))))

(declare-fun tp!1260533 () Bool)

(declare-fun b_and!320805 () Bool)

(assert (=> b!4135327 (= tp!1260533 b_and!320805)))

(declare-fun b_free!117513 () Bool)

(declare-fun b_next!118217 () Bool)

(assert (=> b!4135327 (= b_free!117513 (not b_next!118217))))

(declare-fun tp!1260532 () Bool)

(declare-fun b_and!320807 () Bool)

(assert (=> b!4135327 (= tp!1260532 b_and!320807)))

(declare-fun b!4135317 () Bool)

(declare-fun b_free!117515 () Bool)

(declare-fun b_next!118219 () Bool)

(assert (=> b!4135317 (= b_free!117515 (not b_next!118219))))

(declare-fun tp!1260530 () Bool)

(declare-fun b_and!320809 () Bool)

(assert (=> b!4135317 (= tp!1260530 b_and!320809)))

(declare-fun b_free!117517 () Bool)

(declare-fun b_next!118221 () Bool)

(assert (=> b!4135317 (= b_free!117517 (not b_next!118221))))

(declare-fun tp!1260534 () Bool)

(declare-fun b_and!320811 () Bool)

(assert (=> b!4135317 (= tp!1260534 b_and!320811)))

(declare-fun res!1690963 () Bool)

(declare-fun e!2565804 () Bool)

(assert (=> start!392742 (=> (not res!1690963) (not e!2565804))))

(declare-datatypes ((LexerInterface!6935 0))(
  ( (LexerInterfaceExt!6932 (__x!27369 Int)) (Lexer!6933) )
))
(declare-fun thiss!25645 () LexerInterface!6935)

(get-info :version)

(assert (=> start!392742 (= res!1690963 ((_ is Lexer!6933) thiss!25645))))

(assert (=> start!392742 e!2565804))

(declare-fun e!2565807 () Bool)

(assert (=> start!392742 e!2565807))

(declare-fun e!2565795 () Bool)

(assert (=> start!392742 e!2565795))

(assert (=> start!392742 true))

(declare-fun e!2565803 () Bool)

(assert (=> start!392742 e!2565803))

(declare-fun e!2565797 () Bool)

(assert (=> start!392742 e!2565797))

(declare-fun e!2565800 () Bool)

(assert (=> start!392742 e!2565800))

(declare-fun b!4135308 () Bool)

(declare-fun e!2565805 () Bool)

(declare-fun e!2565802 () Bool)

(assert (=> b!4135308 (= e!2565805 e!2565802)))

(declare-fun res!1690957 () Bool)

(assert (=> b!4135308 (=> res!1690957 e!2565802)))

(declare-datatypes ((C!24688 0))(
  ( (C!24689 (val!14454 Int)) )
))
(declare-datatypes ((List!44930 0))(
  ( (Nil!44806) (Cons!44806 (h!50226 C!24688) (t!341919 List!44930)) )
))
(declare-datatypes ((IArray!27119 0))(
  ( (IArray!27120 (innerList!13617 List!44930)) )
))
(declare-datatypes ((Conc!13557 0))(
  ( (Node!13557 (left!33556 Conc!13557) (right!33886 Conc!13557) (csize!27344 Int) (cheight!13768 Int)) (Leaf!20945 (xs!16863 IArray!27119) (csize!27345 Int)) (Empty!13557) )
))
(declare-datatypes ((BalanceConc!26708 0))(
  ( (BalanceConc!26709 (c!709270 Conc!13557)) )
))
(declare-fun lt!1474356 () BalanceConc!26708)

(declare-fun lt!1474351 () Int)

(declare-fun size!33164 (BalanceConc!26708) Int)

(assert (=> b!4135308 (= res!1690957 (<= (size!33164 lt!1474356) lt!1474351))))

(declare-datatypes ((List!44931 0))(
  ( (Nil!44807) (Cons!44807 (h!50227 (_ BitVec 16)) (t!341920 List!44931)) )
))
(declare-datatypes ((TokenValue!7576 0))(
  ( (FloatLiteralValue!15152 (text!53477 List!44931)) (TokenValueExt!7575 (__x!27370 Int)) (Broken!37880 (value!229889 List!44931)) (Object!7699) (End!7576) (Def!7576) (Underscore!7576) (Match!7576) (Else!7576) (Error!7576) (Case!7576) (If!7576) (Extends!7576) (Abstract!7576) (Class!7576) (Val!7576) (DelimiterValue!15152 (del!7636 List!44931)) (KeywordValue!7582 (value!229890 List!44931)) (CommentValue!15152 (value!229891 List!44931)) (WhitespaceValue!15152 (value!229892 List!44931)) (IndentationValue!7576 (value!229893 List!44931)) (String!51629) (Int32!7576) (Broken!37881 (value!229894 List!44931)) (Boolean!7577) (Unit!64120) (OperatorValue!7579 (op!7636 List!44931)) (IdentifierValue!15152 (value!229895 List!44931)) (IdentifierValue!15153 (value!229896 List!44931)) (WhitespaceValue!15153 (value!229897 List!44931)) (True!15152) (False!15152) (Broken!37882 (value!229898 List!44931)) (Broken!37883 (value!229899 List!44931)) (True!15153) (RightBrace!7576) (RightBracket!7576) (Colon!7576) (Null!7576) (Comma!7576) (LeftBracket!7576) (False!15153) (LeftBrace!7576) (ImaginaryLiteralValue!7576 (text!53478 List!44931)) (StringLiteralValue!22728 (value!229900 List!44931)) (EOFValue!7576 (value!229901 List!44931)) (IdentValue!7576 (value!229902 List!44931)) (DelimiterValue!15153 (value!229903 List!44931)) (DedentValue!7576 (value!229904 List!44931)) (NewLineValue!7576 (value!229905 List!44931)) (IntegerValue!22728 (value!229906 (_ BitVec 32)) (text!53479 List!44931)) (IntegerValue!22729 (value!229907 Int) (text!53480 List!44931)) (Times!7576) (Or!7576) (Equal!7576) (Minus!7576) (Broken!37884 (value!229908 List!44931)) (And!7576) (Div!7576) (LessEqual!7576) (Mod!7576) (Concat!19827) (Not!7576) (Plus!7576) (SpaceValue!7576 (value!229909 List!44931)) (IntegerValue!22730 (value!229910 Int) (text!53481 List!44931)) (StringLiteralValue!22729 (text!53482 List!44931)) (FloatLiteralValue!15153 (text!53483 List!44931)) (BytesLiteralValue!7576 (value!229911 List!44931)) (CommentValue!15153 (value!229912 List!44931)) (StringLiteralValue!22730 (value!229913 List!44931)) (ErrorTokenValue!7576 (msg!7637 List!44931)) )
))
(declare-datatypes ((Regex!12251 0))(
  ( (ElementMatch!12251 (c!709271 C!24688)) (Concat!19828 (regOne!25014 Regex!12251) (regTwo!25014 Regex!12251)) (EmptyExpr!12251) (Star!12251 (reg!12580 Regex!12251)) (EmptyLang!12251) (Union!12251 (regOne!25015 Regex!12251) (regTwo!25015 Regex!12251)) )
))
(declare-datatypes ((String!51630 0))(
  ( (String!51631 (value!229914 String)) )
))
(declare-datatypes ((TokenValueInjection!14580 0))(
  ( (TokenValueInjection!14581 (toValue!10010 Int) (toChars!9869 Int)) )
))
(declare-datatypes ((Rule!14492 0))(
  ( (Rule!14493 (regex!7346 Regex!12251) (tag!8206 String!51630) (isSeparator!7346 Bool) (transformation!7346 TokenValueInjection!14580)) )
))
(declare-datatypes ((Token!13622 0))(
  ( (Token!13623 (value!229915 TokenValue!7576) (rule!10442 Rule!14492) (size!33165 Int) (originalCharacters!7842 List!44930)) )
))
(declare-datatypes ((tuple2!43206 0))(
  ( (tuple2!43207 (_1!24737 Token!13622) (_2!24737 List!44930)) )
))
(declare-datatypes ((Option!9652 0))(
  ( (None!9651) (Some!9651 (v!40275 tuple2!43206)) )
))
(declare-fun lt!1474358 () Option!9652)

(declare-fun charsOf!4945 (Token!13622) BalanceConc!26708)

(declare-fun get!14614 (Option!9652) tuple2!43206)

(assert (=> b!4135308 (= lt!1474356 (charsOf!4945 (_1!24737 (get!14614 lt!1474358))))))

(declare-fun b!4135309 () Bool)

(declare-fun res!1690964 () Bool)

(assert (=> b!4135309 (=> (not res!1690964) (not e!2565804))))

(declare-datatypes ((List!44932 0))(
  ( (Nil!44808) (Cons!44808 (h!50228 Rule!14492) (t!341921 List!44932)) )
))
(declare-fun rules!3756 () List!44932)

(declare-fun r!4008 () Rule!14492)

(declare-fun contains!9026 (List!44932 Rule!14492) Bool)

(assert (=> b!4135309 (= res!1690964 (contains!9026 rules!3756 r!4008))))

(declare-fun b!4135310 () Bool)

(declare-fun e!2565794 () Bool)

(declare-fun e!2565809 () Bool)

(assert (=> b!4135310 (= e!2565794 (not e!2565809))))

(declare-fun res!1690960 () Bool)

(assert (=> b!4135310 (=> res!1690960 e!2565809)))

(declare-fun rBis!149 () Rule!14492)

(assert (=> b!4135310 (= res!1690960 (or (not ((_ is Cons!44808) rules!3756)) (not (= (h!50228 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64121 0))(
  ( (Unit!64122) )
))
(declare-fun lt!1474352 () Unit!64121)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2192 (LexerInterface!6935 Rule!14492 List!44932) Unit!64121)

(assert (=> b!4135310 (= lt!1474352 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2192 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3152 (LexerInterface!6935 Rule!14492) Bool)

(assert (=> b!4135310 (ruleValid!3152 thiss!25645 rBis!149)))

(declare-fun lt!1474354 () Unit!64121)

(assert (=> b!4135310 (= lt!1474354 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2192 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4135311 () Bool)

(declare-fun res!1690961 () Bool)

(assert (=> b!4135311 (=> (not res!1690961) (not e!2565794))))

(declare-fun p!2912 () List!44930)

(declare-fun matchR!6080 (Regex!12251 List!44930) Bool)

(assert (=> b!4135311 (= res!1690961 (matchR!6080 (regex!7346 r!4008) p!2912))))

(declare-fun b!4135312 () Bool)

(declare-fun e!2565808 () Bool)

(declare-fun tp!1260528 () Bool)

(assert (=> b!4135312 (= e!2565807 (and e!2565808 tp!1260528))))

(declare-fun b!4135313 () Bool)

(declare-fun tp!1260525 () Bool)

(declare-fun e!2565798 () Bool)

(declare-fun inv!59412 (String!51630) Bool)

(declare-fun inv!59414 (TokenValueInjection!14580) Bool)

(assert (=> b!4135313 (= e!2565803 (and tp!1260525 (inv!59412 (tag!8206 r!4008)) (inv!59414 (transformation!7346 r!4008)) e!2565798))))

(declare-fun b!4135314 () Bool)

(assert (=> b!4135314 (= e!2565804 e!2565794)))

(declare-fun res!1690956 () Bool)

(assert (=> b!4135314 (=> (not res!1690956) (not e!2565794))))

(declare-fun input!3238 () List!44930)

(declare-fun lt!1474357 () TokenValue!7576)

(declare-fun maxPrefix!4125 (LexerInterface!6935 List!44932 List!44930) Option!9652)

(declare-fun getSuffix!2608 (List!44930 List!44930) List!44930)

(assert (=> b!4135314 (= res!1690956 (= (maxPrefix!4125 thiss!25645 rules!3756 input!3238) (Some!9651 (tuple2!43207 (Token!13623 lt!1474357 r!4008 lt!1474351 p!2912) (getSuffix!2608 input!3238 p!2912)))))))

(declare-fun size!33166 (List!44930) Int)

(assert (=> b!4135314 (= lt!1474351 (size!33166 p!2912))))

(declare-fun lt!1474349 () BalanceConc!26708)

(declare-fun apply!10419 (TokenValueInjection!14580 BalanceConc!26708) TokenValue!7576)

(assert (=> b!4135314 (= lt!1474357 (apply!10419 (transformation!7346 r!4008) lt!1474349))))

(declare-fun lt!1474353 () Unit!64121)

(declare-fun lemmaSemiInverse!2204 (TokenValueInjection!14580 BalanceConc!26708) Unit!64121)

(assert (=> b!4135314 (= lt!1474353 (lemmaSemiInverse!2204 (transformation!7346 r!4008) lt!1474349))))

(declare-fun seqFromList!5463 (List!44930) BalanceConc!26708)

(assert (=> b!4135314 (= lt!1474349 (seqFromList!5463 p!2912))))

(declare-fun b!4135315 () Bool)

(declare-fun res!1690958 () Bool)

(assert (=> b!4135315 (=> (not res!1690958) (not e!2565804))))

(assert (=> b!4135315 (= res!1690958 (contains!9026 rules!3756 rBis!149))))

(declare-fun b!4135316 () Bool)

(declare-fun tp_is_empty!21425 () Bool)

(declare-fun tp!1260536 () Bool)

(assert (=> b!4135316 (= e!2565797 (and tp_is_empty!21425 tp!1260536))))

(assert (=> b!4135317 (= e!2565798 (and tp!1260530 tp!1260534))))

(declare-fun b!4135318 () Bool)

(declare-fun res!1690952 () Bool)

(assert (=> b!4135318 (=> (not res!1690952) (not e!2565804))))

(declare-fun isEmpty!26691 (List!44930) Bool)

(assert (=> b!4135318 (= res!1690952 (not (isEmpty!26691 p!2912)))))

(declare-fun b!4135319 () Bool)

(declare-fun res!1690951 () Bool)

(assert (=> b!4135319 (=> (not res!1690951) (not e!2565804))))

(declare-fun rulesInvariant!6232 (LexerInterface!6935 List!44932) Bool)

(assert (=> b!4135319 (= res!1690951 (rulesInvariant!6232 thiss!25645 rules!3756))))

(declare-fun b!4135320 () Bool)

(assert (=> b!4135320 (= e!2565809 e!2565805)))

(declare-fun res!1690962 () Bool)

(assert (=> b!4135320 (=> res!1690962 e!2565805)))

(declare-fun isEmpty!26692 (Option!9652) Bool)

(assert (=> b!4135320 (= res!1690962 (isEmpty!26692 lt!1474358))))

(declare-fun maxPrefixOneRule!3064 (LexerInterface!6935 Rule!14492 List!44930) Option!9652)

(assert (=> b!4135320 (= lt!1474358 (maxPrefixOneRule!3064 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4135320 (not (= rBis!149 r!4008))))

(declare-fun lt!1474350 () Unit!64121)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!44 (LexerInterface!6935 List!44932 Rule!14492 Rule!14492) Unit!64121)

(assert (=> b!4135320 (= lt!1474350 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!44 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6503 (List!44932) List!44932)

(assert (=> b!4135320 (contains!9026 (tail!6503 rules!3756) r!4008)))

(declare-fun lt!1474348 () Unit!64121)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!50 (List!44932 Rule!14492 Rule!14492) Unit!64121)

(assert (=> b!4135320 (= lt!1474348 (lemmaGetIndexBiggerAndHeadEqThenTailContains!50 rules!3756 rBis!149 r!4008))))

(declare-fun b!4135321 () Bool)

(declare-fun res!1690953 () Bool)

(assert (=> b!4135321 (=> (not res!1690953) (not e!2565794))))

(assert (=> b!4135321 (= res!1690953 (ruleValid!3152 thiss!25645 r!4008))))

(declare-fun b!4135322 () Bool)

(declare-fun res!1690959 () Bool)

(assert (=> b!4135322 (=> (not res!1690959) (not e!2565804))))

(declare-fun isEmpty!26693 (List!44932) Bool)

(assert (=> b!4135322 (= res!1690959 (not (isEmpty!26693 rules!3756)))))

(declare-fun e!2565806 () Bool)

(assert (=> b!4135323 (= e!2565806 (and tp!1260535 tp!1260529))))

(declare-fun b!4135324 () Bool)

(declare-fun tp!1260531 () Bool)

(assert (=> b!4135324 (= e!2565795 (and tp_is_empty!21425 tp!1260531))))

(declare-fun b!4135325 () Bool)

(declare-fun res!1690954 () Bool)

(assert (=> b!4135325 (=> (not res!1690954) (not e!2565804))))

(declare-fun isPrefix!4281 (List!44930 List!44930) Bool)

(assert (=> b!4135325 (= res!1690954 (isPrefix!4281 p!2912 input!3238))))

(declare-fun b!4135326 () Bool)

(declare-fun res!1690955 () Bool)

(assert (=> b!4135326 (=> (not res!1690955) (not e!2565794))))

(declare-fun getIndex!692 (List!44932 Rule!14492) Int)

(assert (=> b!4135326 (= res!1690955 (< (getIndex!692 rules!3756 rBis!149) (getIndex!692 rules!3756 r!4008)))))

(declare-fun e!2565810 () Bool)

(assert (=> b!4135327 (= e!2565810 (and tp!1260533 tp!1260532))))

(declare-fun b!4135328 () Bool)

(declare-fun tp!1260526 () Bool)

(assert (=> b!4135328 (= e!2565808 (and tp!1260526 (inv!59412 (tag!8206 (h!50228 rules!3756))) (inv!59414 (transformation!7346 (h!50228 rules!3756))) e!2565810))))

(declare-fun tp!1260527 () Bool)

(declare-fun b!4135329 () Bool)

(assert (=> b!4135329 (= e!2565800 (and tp!1260527 (inv!59412 (tag!8206 rBis!149)) (inv!59414 (transformation!7346 rBis!149)) e!2565806))))

(declare-fun b!4135330 () Bool)

(assert (=> b!4135330 (= e!2565802 true)))

(declare-fun lt!1474355 () List!44930)

(declare-fun list!16405 (BalanceConc!26708) List!44930)

(assert (=> b!4135330 (= lt!1474355 (getSuffix!2608 input!3238 (list!16405 lt!1474356)))))

(assert (= (and start!392742 res!1690963) b!4135325))

(assert (= (and b!4135325 res!1690954) b!4135322))

(assert (= (and b!4135322 res!1690959) b!4135319))

(assert (= (and b!4135319 res!1690951) b!4135309))

(assert (= (and b!4135309 res!1690964) b!4135315))

(assert (= (and b!4135315 res!1690958) b!4135318))

(assert (= (and b!4135318 res!1690952) b!4135314))

(assert (= (and b!4135314 res!1690956) b!4135311))

(assert (= (and b!4135311 res!1690961) b!4135326))

(assert (= (and b!4135326 res!1690955) b!4135321))

(assert (= (and b!4135321 res!1690953) b!4135310))

(assert (= (and b!4135310 (not res!1690960)) b!4135320))

(assert (= (and b!4135320 (not res!1690962)) b!4135308))

(assert (= (and b!4135308 (not res!1690957)) b!4135330))

(assert (= b!4135328 b!4135327))

(assert (= b!4135312 b!4135328))

(assert (= (and start!392742 ((_ is Cons!44808) rules!3756)) b!4135312))

(assert (= (and start!392742 ((_ is Cons!44806) p!2912)) b!4135324))

(assert (= b!4135313 b!4135317))

(assert (= start!392742 b!4135313))

(assert (= (and start!392742 ((_ is Cons!44806) input!3238)) b!4135316))

(assert (= b!4135329 b!4135323))

(assert (= start!392742 b!4135329))

(declare-fun m!4731949 () Bool)

(assert (=> b!4135325 m!4731949))

(declare-fun m!4731951 () Bool)

(assert (=> b!4135322 m!4731951))

(declare-fun m!4731953 () Bool)

(assert (=> b!4135329 m!4731953))

(declare-fun m!4731955 () Bool)

(assert (=> b!4135329 m!4731955))

(declare-fun m!4731957 () Bool)

(assert (=> b!4135308 m!4731957))

(declare-fun m!4731959 () Bool)

(assert (=> b!4135308 m!4731959))

(declare-fun m!4731961 () Bool)

(assert (=> b!4135308 m!4731961))

(declare-fun m!4731963 () Bool)

(assert (=> b!4135321 m!4731963))

(declare-fun m!4731965 () Bool)

(assert (=> b!4135328 m!4731965))

(declare-fun m!4731967 () Bool)

(assert (=> b!4135328 m!4731967))

(declare-fun m!4731969 () Bool)

(assert (=> b!4135330 m!4731969))

(assert (=> b!4135330 m!4731969))

(declare-fun m!4731971 () Bool)

(assert (=> b!4135330 m!4731971))

(declare-fun m!4731973 () Bool)

(assert (=> b!4135315 m!4731973))

(declare-fun m!4731975 () Bool)

(assert (=> b!4135318 m!4731975))

(declare-fun m!4731977 () Bool)

(assert (=> b!4135313 m!4731977))

(declare-fun m!4731979 () Bool)

(assert (=> b!4135313 m!4731979))

(declare-fun m!4731981 () Bool)

(assert (=> b!4135309 m!4731981))

(declare-fun m!4731983 () Bool)

(assert (=> b!4135326 m!4731983))

(declare-fun m!4731985 () Bool)

(assert (=> b!4135326 m!4731985))

(declare-fun m!4731987 () Bool)

(assert (=> b!4135310 m!4731987))

(declare-fun m!4731989 () Bool)

(assert (=> b!4135310 m!4731989))

(declare-fun m!4731991 () Bool)

(assert (=> b!4135310 m!4731991))

(declare-fun m!4731993 () Bool)

(assert (=> b!4135314 m!4731993))

(declare-fun m!4731995 () Bool)

(assert (=> b!4135314 m!4731995))

(declare-fun m!4731997 () Bool)

(assert (=> b!4135314 m!4731997))

(declare-fun m!4731999 () Bool)

(assert (=> b!4135314 m!4731999))

(declare-fun m!4732001 () Bool)

(assert (=> b!4135314 m!4732001))

(declare-fun m!4732003 () Bool)

(assert (=> b!4135314 m!4732003))

(declare-fun m!4732005 () Bool)

(assert (=> b!4135320 m!4732005))

(declare-fun m!4732007 () Bool)

(assert (=> b!4135320 m!4732007))

(declare-fun m!4732009 () Bool)

(assert (=> b!4135320 m!4732009))

(assert (=> b!4135320 m!4732005))

(declare-fun m!4732011 () Bool)

(assert (=> b!4135320 m!4732011))

(declare-fun m!4732013 () Bool)

(assert (=> b!4135320 m!4732013))

(declare-fun m!4732015 () Bool)

(assert (=> b!4135320 m!4732015))

(declare-fun m!4732017 () Bool)

(assert (=> b!4135311 m!4732017))

(declare-fun m!4732019 () Bool)

(assert (=> b!4135319 m!4732019))

(check-sat b_and!320811 (not b!4135325) (not b!4135312) (not b!4135308) (not b!4135329) (not b!4135318) (not b!4135316) (not b_next!118211) (not b!4135330) b_and!320807 (not b!4135322) (not b!4135313) tp_is_empty!21425 (not b!4135321) (not b!4135315) (not b!4135319) (not b_next!118213) (not b!4135311) (not b!4135328) (not b!4135314) (not b!4135326) b_and!320803 (not b!4135320) (not b_next!118217) b_and!320809 (not b!4135309) b_and!320801 (not b_next!118215) (not b!4135324) (not b_next!118219) (not b!4135310) (not b_next!118221) b_and!320805)
(check-sat b_and!320811 b_and!320803 (not b_next!118217) b_and!320809 (not b_next!118211) b_and!320807 (not b_next!118219) (not b_next!118213) b_and!320801 (not b_next!118215) (not b_next!118221) b_and!320805)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!307056 () Bool)

(assert start!307056)

(declare-fun b!3299965 () Bool)

(declare-fun b_free!86669 () Bool)

(declare-fun b_next!87373 () Bool)

(assert (=> b!3299965 (= b_free!86669 (not b_next!87373))))

(declare-fun tp!1033631 () Bool)

(declare-fun b_and!225811 () Bool)

(assert (=> b!3299965 (= tp!1033631 b_and!225811)))

(declare-fun b_free!86671 () Bool)

(declare-fun b_next!87375 () Bool)

(assert (=> b!3299965 (= b_free!86671 (not b_next!87375))))

(declare-fun tp!1033636 () Bool)

(declare-fun b_and!225813 () Bool)

(assert (=> b!3299965 (= tp!1033636 b_and!225813)))

(declare-fun b!3299937 () Bool)

(declare-fun b_free!86673 () Bool)

(declare-fun b_next!87377 () Bool)

(assert (=> b!3299937 (= b_free!86673 (not b_next!87377))))

(declare-fun tp!1033641 () Bool)

(declare-fun b_and!225815 () Bool)

(assert (=> b!3299937 (= tp!1033641 b_and!225815)))

(declare-fun b_free!86675 () Bool)

(declare-fun b_next!87379 () Bool)

(assert (=> b!3299937 (= b_free!86675 (not b_next!87379))))

(declare-fun tp!1033638 () Bool)

(declare-fun b_and!225817 () Bool)

(assert (=> b!3299937 (= tp!1033638 b_and!225817)))

(declare-fun b!3299943 () Bool)

(declare-fun b_free!86677 () Bool)

(declare-fun b_next!87381 () Bool)

(assert (=> b!3299943 (= b_free!86677 (not b_next!87381))))

(declare-fun tp!1033637 () Bool)

(declare-fun b_and!225819 () Bool)

(assert (=> b!3299943 (= tp!1033637 b_and!225819)))

(declare-fun b_free!86679 () Bool)

(declare-fun b_next!87383 () Bool)

(assert (=> b!3299943 (= b_free!86679 (not b_next!87383))))

(declare-fun tp!1033643 () Bool)

(declare-fun b_and!225821 () Bool)

(assert (=> b!3299943 (= tp!1033643 b_and!225821)))

(declare-fun e!2052246 () Bool)

(assert (=> b!3299937 (= e!2052246 (and tp!1033641 tp!1033638))))

(declare-datatypes ((C!20278 0))(
  ( (C!20279 (val!12187 Int)) )
))
(declare-datatypes ((Regex!10046 0))(
  ( (ElementMatch!10046 (c!559680 C!20278)) (Concat!15563 (regOne!20604 Regex!10046) (regTwo!20604 Regex!10046)) (EmptyExpr!10046) (Star!10046 (reg!10375 Regex!10046)) (EmptyLang!10046) (Union!10046 (regOne!20605 Regex!10046) (regTwo!20605 Regex!10046)) )
))
(declare-datatypes ((List!36582 0))(
  ( (Nil!36458) (Cons!36458 (h!41878 (_ BitVec 16)) (t!252747 List!36582)) )
))
(declare-datatypes ((TokenValue!5517 0))(
  ( (FloatLiteralValue!11034 (text!39064 List!36582)) (TokenValueExt!5516 (__x!23251 Int)) (Broken!27585 (value!171115 List!36582)) (Object!5640) (End!5517) (Def!5517) (Underscore!5517) (Match!5517) (Else!5517) (Error!5517) (Case!5517) (If!5517) (Extends!5517) (Abstract!5517) (Class!5517) (Val!5517) (DelimiterValue!11034 (del!5577 List!36582)) (KeywordValue!5523 (value!171116 List!36582)) (CommentValue!11034 (value!171117 List!36582)) (WhitespaceValue!11034 (value!171118 List!36582)) (IndentationValue!5517 (value!171119 List!36582)) (String!40920) (Int32!5517) (Broken!27586 (value!171120 List!36582)) (Boolean!5518) (Unit!51388) (OperatorValue!5520 (op!5577 List!36582)) (IdentifierValue!11034 (value!171121 List!36582)) (IdentifierValue!11035 (value!171122 List!36582)) (WhitespaceValue!11035 (value!171123 List!36582)) (True!11034) (False!11034) (Broken!27587 (value!171124 List!36582)) (Broken!27588 (value!171125 List!36582)) (True!11035) (RightBrace!5517) (RightBracket!5517) (Colon!5517) (Null!5517) (Comma!5517) (LeftBracket!5517) (False!11035) (LeftBrace!5517) (ImaginaryLiteralValue!5517 (text!39065 List!36582)) (StringLiteralValue!16551 (value!171126 List!36582)) (EOFValue!5517 (value!171127 List!36582)) (IdentValue!5517 (value!171128 List!36582)) (DelimiterValue!11035 (value!171129 List!36582)) (DedentValue!5517 (value!171130 List!36582)) (NewLineValue!5517 (value!171131 List!36582)) (IntegerValue!16551 (value!171132 (_ BitVec 32)) (text!39066 List!36582)) (IntegerValue!16552 (value!171133 Int) (text!39067 List!36582)) (Times!5517) (Or!5517) (Equal!5517) (Minus!5517) (Broken!27589 (value!171134 List!36582)) (And!5517) (Div!5517) (LessEqual!5517) (Mod!5517) (Concat!15564) (Not!5517) (Plus!5517) (SpaceValue!5517 (value!171135 List!36582)) (IntegerValue!16553 (value!171136 Int) (text!39068 List!36582)) (StringLiteralValue!16552 (text!39069 List!36582)) (FloatLiteralValue!11035 (text!39070 List!36582)) (BytesLiteralValue!5517 (value!171137 List!36582)) (CommentValue!11035 (value!171138 List!36582)) (StringLiteralValue!16553 (value!171139 List!36582)) (ErrorTokenValue!5517 (msg!5578 List!36582)) )
))
(declare-datatypes ((List!36583 0))(
  ( (Nil!36459) (Cons!36459 (h!41879 C!20278) (t!252748 List!36583)) )
))
(declare-datatypes ((IArray!21903 0))(
  ( (IArray!21904 (innerList!11009 List!36583)) )
))
(declare-datatypes ((Conc!10949 0))(
  ( (Node!10949 (left!28395 Conc!10949) (right!28725 Conc!10949) (csize!22128 Int) (cheight!11160 Int)) (Leaf!17204 (xs!14087 IArray!21903) (csize!22129 Int)) (Empty!10949) )
))
(declare-datatypes ((BalanceConc!21512 0))(
  ( (BalanceConc!21513 (c!559681 Conc!10949)) )
))
(declare-datatypes ((String!40921 0))(
  ( (String!40922 (value!171140 String)) )
))
(declare-datatypes ((TokenValueInjection!10462 0))(
  ( (TokenValueInjection!10463 (toValue!7415 Int) (toChars!7274 Int)) )
))
(declare-datatypes ((Rule!10374 0))(
  ( (Rule!10375 (regex!5287 Regex!10046) (tag!5831 String!40921) (isSeparator!5287 Bool) (transformation!5287 TokenValueInjection!10462)) )
))
(declare-datatypes ((Token!9940 0))(
  ( (Token!9941 (value!171141 TokenValue!5517) (rule!7785 Rule!10374) (size!27530 Int) (originalCharacters!6001 List!36583)) )
))
(declare-fun separatorToken!241 () Token!9940)

(declare-fun e!2052261 () Bool)

(declare-fun tp!1033635 () Bool)

(declare-fun b!3299938 () Bool)

(declare-fun e!2052266 () Bool)

(declare-fun inv!21 (TokenValue!5517) Bool)

(assert (=> b!3299938 (= e!2052266 (and (inv!21 (value!171141 separatorToken!241)) e!2052261 tp!1033635))))

(declare-fun b!3299939 () Bool)

(declare-fun e!2052253 () Bool)

(declare-fun e!2052262 () Bool)

(assert (=> b!3299939 (= e!2052253 e!2052262)))

(declare-fun res!1338442 () Bool)

(assert (=> b!3299939 (=> res!1338442 e!2052262)))

(declare-fun lt!1118274 () List!36583)

(declare-datatypes ((LexerInterface!4876 0))(
  ( (LexerInterfaceExt!4873 (__x!23252 Int)) (Lexer!4874) )
))
(declare-fun thiss!18206 () LexerInterface!4876)

(declare-datatypes ((List!36584 0))(
  ( (Nil!36460) (Cons!36460 (h!41880 Token!9940) (t!252749 List!36584)) )
))
(declare-datatypes ((tuple2!35954 0))(
  ( (tuple2!35955 (_1!21111 List!36584) (_2!21111 List!36583)) )
))
(declare-fun e!2052256 () tuple2!35954)

(declare-datatypes ((List!36585 0))(
  ( (Nil!36461) (Cons!36461 (h!41881 Rule!10374) (t!252750 List!36585)) )
))
(declare-fun rules!2135 () List!36585)

(declare-fun lexList!1350 (LexerInterface!4876 List!36585 List!36583) tuple2!35954)

(assert (=> b!3299939 (= res!1338442 (not (= e!2052256 (lexList!1350 thiss!18206 rules!2135 lt!1118274))))))

(declare-fun c!559678 () Bool)

(declare-datatypes ((tuple2!35956 0))(
  ( (tuple2!35957 (_1!21112 Token!9940) (_2!21112 List!36583)) )
))
(declare-datatypes ((Option!7269 0))(
  ( (None!7268) (Some!7268 (v!36014 tuple2!35956)) )
))
(declare-fun lt!1118267 () Option!7269)

(assert (=> b!3299939 (= c!559678 (is-Some!7268 lt!1118267))))

(declare-fun maxPrefix!2504 (LexerInterface!4876 List!36585 List!36583) Option!7269)

(assert (=> b!3299939 (= lt!1118267 (maxPrefix!2504 thiss!18206 rules!2135 lt!1118274))))

(declare-fun tokens!494 () List!36584)

(declare-fun lt!1118249 () List!36583)

(declare-fun lt!1118262 () List!36583)

(assert (=> b!3299939 (= (maxPrefix!2504 thiss!18206 rules!2135 lt!1118249) (Some!7268 (tuple2!35957 (h!41880 tokens!494) lt!1118262)))))

(declare-datatypes ((Unit!51389 0))(
  ( (Unit!51390) )
))
(declare-fun lt!1118259 () Unit!51389)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!193 (LexerInterface!4876 List!36585 Token!9940 Rule!10374 List!36583 Rule!10374) Unit!51389)

(assert (=> b!3299939 (= lt!1118259 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!193 thiss!18206 rules!2135 (h!41880 tokens!494) (rule!7785 (h!41880 tokens!494)) lt!1118262 (rule!7785 separatorToken!241)))))

(declare-fun lt!1118269 () C!20278)

(declare-fun contains!6582 (List!36583 C!20278) Bool)

(declare-fun usedCharacters!589 (Regex!10046) List!36583)

(assert (=> b!3299939 (not (contains!6582 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118269))))

(declare-fun lt!1118266 () Unit!51389)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!193 (LexerInterface!4876 List!36585 List!36585 Rule!10374 Rule!10374 C!20278) Unit!51389)

(assert (=> b!3299939 (= lt!1118266 (lemmaNonSepRuleNotContainsCharContainedInASepRule!193 thiss!18206 rules!2135 rules!2135 (rule!7785 (h!41880 tokens!494)) (rule!7785 separatorToken!241) lt!1118269))))

(declare-fun b!3299940 () Bool)

(declare-fun e!2052244 () Bool)

(declare-fun e!2052263 () Bool)

(assert (=> b!3299940 (= e!2052244 e!2052263)))

(declare-fun res!1338438 () Bool)

(assert (=> b!3299940 (=> (not res!1338438) (not e!2052263))))

(declare-datatypes ((IArray!21905 0))(
  ( (IArray!21906 (innerList!11010 List!36584)) )
))
(declare-datatypes ((Conc!10950 0))(
  ( (Node!10950 (left!28396 Conc!10950) (right!28726 Conc!10950) (csize!22130 Int) (cheight!11161 Int)) (Leaf!17205 (xs!14088 IArray!21905) (csize!22131 Int)) (Empty!10950) )
))
(declare-datatypes ((BalanceConc!21514 0))(
  ( (BalanceConc!21515 (c!559682 Conc!10950)) )
))
(declare-fun lt!1118251 () BalanceConc!21514)

(declare-fun rulesProduceEachTokenIndividually!1327 (LexerInterface!4876 List!36585 BalanceConc!21514) Bool)

(assert (=> b!3299940 (= res!1338438 (rulesProduceEachTokenIndividually!1327 thiss!18206 rules!2135 lt!1118251))))

(declare-fun seqFromList!3637 (List!36584) BalanceConc!21514)

(assert (=> b!3299940 (= lt!1118251 (seqFromList!3637 tokens!494))))

(declare-fun b!3299941 () Bool)

(declare-fun res!1338453 () Bool)

(assert (=> b!3299941 (=> (not res!1338453) (not e!2052244))))

(declare-fun isEmpty!20596 (List!36585) Bool)

(assert (=> b!3299941 (= res!1338453 (not (isEmpty!20596 rules!2135)))))

(declare-fun b!3299942 () Bool)

(declare-fun res!1338454 () Bool)

(assert (=> b!3299942 (=> (not res!1338454) (not e!2052244))))

(declare-fun rulesInvariant!4273 (LexerInterface!4876 List!36585) Bool)

(assert (=> b!3299942 (= res!1338454 (rulesInvariant!4273 thiss!18206 rules!2135))))

(declare-fun e!2052264 () Bool)

(assert (=> b!3299943 (= e!2052264 (and tp!1033637 tp!1033643))))

(declare-fun b!3299944 () Bool)

(declare-fun e!2052257 () Bool)

(declare-fun e!2052252 () Bool)

(declare-fun tp!1033640 () Bool)

(assert (=> b!3299944 (= e!2052257 (and e!2052252 tp!1033640))))

(declare-fun e!2052265 () Bool)

(declare-fun tp!1033639 () Bool)

(declare-fun b!3299945 () Bool)

(declare-fun e!2052254 () Bool)

(declare-fun inv!49410 (Token!9940) Bool)

(assert (=> b!3299945 (= e!2052265 (and (inv!49410 (h!41880 tokens!494)) e!2052254 tp!1033639))))

(declare-fun b!3299946 () Bool)

(declare-fun res!1338444 () Bool)

(declare-fun e!2052258 () Bool)

(assert (=> b!3299946 (=> res!1338444 e!2052258)))

(declare-fun rulesProduceIndividualToken!2368 (LexerInterface!4876 List!36585 Token!9940) Bool)

(assert (=> b!3299946 (= res!1338444 (not (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 (h!41880 tokens!494))))))

(declare-fun b!3299947 () Bool)

(declare-fun res!1338436 () Bool)

(assert (=> b!3299947 (=> (not res!1338436) (not e!2052263))))

(assert (=> b!3299947 (= res!1338436 (and (not (is-Nil!36460 tokens!494)) (is-Nil!36460 (t!252749 tokens!494))))))

(declare-fun res!1338441 () Bool)

(assert (=> start!307056 (=> (not res!1338441) (not e!2052244))))

(assert (=> start!307056 (= res!1338441 (is-Lexer!4874 thiss!18206))))

(assert (=> start!307056 e!2052244))

(assert (=> start!307056 true))

(assert (=> start!307056 e!2052257))

(assert (=> start!307056 (and (inv!49410 separatorToken!241) e!2052266)))

(assert (=> start!307056 e!2052265))

(declare-fun b!3299948 () Bool)

(declare-fun e!2052251 () Bool)

(assert (=> b!3299948 (= e!2052258 e!2052251)))

(declare-fun res!1338443 () Bool)

(assert (=> b!3299948 (=> res!1338443 e!2052251)))

(declare-fun lt!1118258 () BalanceConc!21512)

(declare-fun isEmpty!20597 (BalanceConc!21514) Bool)

(declare-datatypes ((tuple2!35958 0))(
  ( (tuple2!35959 (_1!21113 BalanceConc!21514) (_2!21113 BalanceConc!21512)) )
))
(declare-fun lex!2204 (LexerInterface!4876 List!36585 BalanceConc!21512) tuple2!35958)

(assert (=> b!3299948 (= res!1338443 (isEmpty!20597 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258))))))

(declare-fun lt!1118263 () List!36583)

(declare-fun seqFromList!3638 (List!36583) BalanceConc!21512)

(assert (=> b!3299948 (= lt!1118258 (seqFromList!3638 lt!1118263))))

(declare-fun b!3299949 () Bool)

(declare-fun e!2052271 () Bool)

(declare-fun tp!1033632 () Bool)

(assert (=> b!3299949 (= e!2052254 (and (inv!21 (value!171141 (h!41880 tokens!494))) e!2052271 tp!1033632))))

(declare-fun b!3299950 () Bool)

(assert (=> b!3299950 (= e!2052256 (tuple2!35955 Nil!36460 lt!1118274))))

(assert (=> b!3299950 false))

(declare-fun b!3299951 () Bool)

(declare-fun e!2052249 () Bool)

(assert (=> b!3299951 (= e!2052249 false)))

(declare-fun b!3299952 () Bool)

(declare-fun e!2052243 () Bool)

(assert (=> b!3299952 (= e!2052243 e!2052258)))

(declare-fun res!1338440 () Bool)

(assert (=> b!3299952 (=> res!1338440 e!2052258)))

(declare-fun lt!1118257 () List!36583)

(declare-fun lt!1118264 () List!36583)

(assert (=> b!3299952 (= res!1338440 (or (not (= lt!1118264 lt!1118263)) (not (= lt!1118257 lt!1118263))))))

(declare-fun list!13054 (BalanceConc!21512) List!36583)

(declare-fun charsOf!3303 (Token!9940) BalanceConc!21512)

(assert (=> b!3299952 (= lt!1118263 (list!13054 (charsOf!3303 (h!41880 tokens!494))))))

(declare-fun b!3299953 () Bool)

(declare-fun e!2052267 () Bool)

(declare-fun e!2052260 () Bool)

(assert (=> b!3299953 (= e!2052267 e!2052260)))

(declare-fun res!1338448 () Bool)

(assert (=> b!3299953 (=> (not res!1338448) (not e!2052260))))

(declare-fun lt!1118273 () Rule!10374)

(declare-fun matchR!4668 (Regex!10046 List!36583) Bool)

(assert (=> b!3299953 (= res!1338448 (matchR!4668 (regex!5287 lt!1118273) lt!1118263))))

(declare-datatypes ((Option!7270 0))(
  ( (None!7269) (Some!7269 (v!36015 Rule!10374)) )
))
(declare-fun lt!1118276 () Option!7270)

(declare-fun get!11634 (Option!7270) Rule!10374)

(assert (=> b!3299953 (= lt!1118273 (get!11634 lt!1118276))))

(declare-fun b!3299954 () Bool)

(declare-fun e!2052247 () Bool)

(assert (=> b!3299954 (= e!2052247 e!2052253)))

(declare-fun res!1338434 () Bool)

(assert (=> b!3299954 (=> res!1338434 e!2052253)))

(declare-fun lt!1118270 () Bool)

(assert (=> b!3299954 (= res!1338434 lt!1118270)))

(declare-fun lt!1118252 () Unit!51389)

(declare-fun e!2052272 () Unit!51389)

(assert (=> b!3299954 (= lt!1118252 e!2052272)))

(declare-fun c!559679 () Bool)

(assert (=> b!3299954 (= c!559679 lt!1118270)))

(assert (=> b!3299954 (= lt!1118270 (not (contains!6582 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241))) lt!1118269)))))

(declare-fun head!7120 (List!36583) C!20278)

(assert (=> b!3299954 (= lt!1118269 (head!7120 lt!1118262))))

(declare-fun maxPrefixOneRule!1641 (LexerInterface!4876 Rule!10374 List!36583) Option!7269)

(declare-fun apply!8365 (TokenValueInjection!10462 BalanceConc!21512) TokenValue!5517)

(declare-fun size!27531 (List!36583) Int)

(assert (=> b!3299954 (= (maxPrefixOneRule!1641 thiss!18206 (rule!7785 (h!41880 tokens!494)) lt!1118263) (Some!7268 (tuple2!35957 (Token!9941 (apply!8365 (transformation!5287 (rule!7785 (h!41880 tokens!494))) lt!1118258) (rule!7785 (h!41880 tokens!494)) (size!27531 lt!1118263) lt!1118263) Nil!36459)))))

(declare-fun lt!1118260 () Unit!51389)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!752 (LexerInterface!4876 List!36585 List!36583 List!36583 List!36583 Rule!10374) Unit!51389)

(assert (=> b!3299954 (= lt!1118260 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!752 thiss!18206 rules!2135 lt!1118263 lt!1118263 Nil!36459 (rule!7785 (h!41880 tokens!494))))))

(declare-fun e!2052259 () Bool)

(assert (=> b!3299954 e!2052259))

(declare-fun res!1338437 () Bool)

(assert (=> b!3299954 (=> (not res!1338437) (not e!2052259))))

(declare-fun lt!1118272 () Option!7270)

(declare-fun isDefined!5633 (Option!7270) Bool)

(assert (=> b!3299954 (= res!1338437 (isDefined!5633 lt!1118272))))

(declare-fun getRuleFromTag!978 (LexerInterface!4876 List!36585 String!40921) Option!7270)

(assert (=> b!3299954 (= lt!1118272 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))))

(declare-fun lt!1118265 () Unit!51389)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!978 (LexerInterface!4876 List!36585 List!36583 Token!9940) Unit!51389)

(assert (=> b!3299954 (= lt!1118265 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!978 thiss!18206 rules!2135 lt!1118262 separatorToken!241))))

(assert (=> b!3299954 e!2052267))

(declare-fun res!1338458 () Bool)

(assert (=> b!3299954 (=> (not res!1338458) (not e!2052267))))

(assert (=> b!3299954 (= res!1338458 (isDefined!5633 lt!1118276))))

(assert (=> b!3299954 (= lt!1118276 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun lt!1118256 () Unit!51389)

(assert (=> b!3299954 (= lt!1118256 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!978 thiss!18206 rules!2135 lt!1118263 (h!41880 tokens!494)))))

(declare-fun lt!1118250 () Unit!51389)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!901 (LexerInterface!4876 List!36585 List!36584 Token!9940) Unit!51389)

(assert (=> b!3299954 (= lt!1118250 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!901 thiss!18206 rules!2135 tokens!494 (h!41880 tokens!494)))))

(declare-fun isEmpty!20598 (List!36583) Bool)

(declare-fun getSuffix!1411 (List!36583 List!36583) List!36583)

(assert (=> b!3299954 (isEmpty!20598 (getSuffix!1411 lt!1118263 lt!1118263))))

(declare-fun lt!1118253 () Unit!51389)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!75 (List!36583) Unit!51389)

(assert (=> b!3299954 (= lt!1118253 (lemmaGetSuffixOnListWithItSelfIsEmpty!75 lt!1118263))))

(declare-fun b!3299955 () Bool)

(declare-fun e!2052250 () Bool)

(declare-fun lt!1118261 () Rule!10374)

(assert (=> b!3299955 (= e!2052250 (= (rule!7785 separatorToken!241) lt!1118261))))

(declare-fun b!3299956 () Bool)

(assert (=> b!3299956 (= e!2052263 (not e!2052243))))

(declare-fun res!1338455 () Bool)

(assert (=> b!3299956 (=> res!1338455 e!2052243)))

(assert (=> b!3299956 (= res!1338455 (not (= lt!1118257 lt!1118264)))))

(declare-fun printList!1426 (LexerInterface!4876 List!36584) List!36583)

(assert (=> b!3299956 (= lt!1118264 (printList!1426 thiss!18206 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))

(declare-fun lt!1118268 () BalanceConc!21512)

(assert (=> b!3299956 (= lt!1118257 (list!13054 lt!1118268))))

(declare-fun lt!1118277 () BalanceConc!21514)

(declare-fun printTailRec!1373 (LexerInterface!4876 BalanceConc!21514 Int BalanceConc!21512) BalanceConc!21512)

(assert (=> b!3299956 (= lt!1118268 (printTailRec!1373 thiss!18206 lt!1118277 0 (BalanceConc!21513 Empty!10949)))))

(declare-fun print!1941 (LexerInterface!4876 BalanceConc!21514) BalanceConc!21512)

(assert (=> b!3299956 (= lt!1118268 (print!1941 thiss!18206 lt!1118277))))

(declare-fun singletonSeq!2383 (Token!9940) BalanceConc!21514)

(assert (=> b!3299956 (= lt!1118277 (singletonSeq!2383 (h!41880 tokens!494)))))

(declare-fun tp!1033633 () Bool)

(declare-fun b!3299957 () Bool)

(declare-fun inv!49407 (String!40921) Bool)

(declare-fun inv!49411 (TokenValueInjection!10462) Bool)

(assert (=> b!3299957 (= e!2052271 (and tp!1033633 (inv!49407 (tag!5831 (rule!7785 (h!41880 tokens!494)))) (inv!49411 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) e!2052264))))

(declare-fun b!3299958 () Bool)

(assert (=> b!3299958 (= e!2052259 e!2052250)))

(declare-fun res!1338435 () Bool)

(assert (=> b!3299958 (=> (not res!1338435) (not e!2052250))))

(assert (=> b!3299958 (= res!1338435 (matchR!4668 (regex!5287 lt!1118261) lt!1118262))))

(assert (=> b!3299958 (= lt!1118261 (get!11634 lt!1118272))))

(declare-fun b!3299959 () Bool)

(declare-fun res!1338456 () Bool)

(assert (=> b!3299959 (=> (not res!1338456) (not e!2052263))))

(declare-fun sepAndNonSepRulesDisjointChars!1481 (List!36585 List!36585) Bool)

(assert (=> b!3299959 (= res!1338456 (sepAndNonSepRulesDisjointChars!1481 rules!2135 rules!2135))))

(declare-fun b!3299960 () Bool)

(declare-fun res!1338449 () Bool)

(assert (=> b!3299960 (=> res!1338449 e!2052262)))

(declare-fun lambda!118850 () Int)

(declare-fun isEmpty!20599 (List!36584) Bool)

(declare-fun filter!527 (List!36584 Int) List!36584)

(declare-fun printWithSeparatorTokenList!201 (LexerInterface!4876 List!36584 Token!9940) List!36583)

(assert (=> b!3299960 (= res!1338449 (not (isEmpty!20599 (filter!527 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))) lambda!118850))))))

(declare-fun b!3299961 () Bool)

(declare-fun res!1338445 () Bool)

(assert (=> b!3299961 (=> (not res!1338445) (not e!2052263))))

(assert (=> b!3299961 (= res!1338445 (isSeparator!5287 (rule!7785 separatorToken!241)))))

(declare-fun b!3299962 () Bool)

(declare-fun res!1338452 () Bool)

(assert (=> b!3299962 (=> res!1338452 e!2052262)))

(assert (=> b!3299962 (= res!1338452 (not (= (filter!527 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))) lambda!118850) tokens!494)))))

(declare-fun b!3299963 () Bool)

(declare-fun Unit!51391 () Unit!51389)

(assert (=> b!3299963 (= e!2052272 Unit!51391)))

(declare-fun lt!1118271 () Unit!51389)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!435 (Regex!10046 List!36583 C!20278) Unit!51389)

(assert (=> b!3299963 (= lt!1118271 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!435 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262 lt!1118269))))

(declare-fun res!1338439 () Bool)

(assert (=> b!3299963 (= res!1338439 (not (matchR!4668 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262)))))

(assert (=> b!3299963 (=> (not res!1338439) (not e!2052249))))

(assert (=> b!3299963 e!2052249))

(declare-fun b!3299964 () Bool)

(declare-fun res!1338457 () Bool)

(assert (=> b!3299964 (=> (not res!1338457) (not e!2052263))))

(assert (=> b!3299964 (= res!1338457 (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2052248 () Bool)

(assert (=> b!3299965 (= e!2052248 (and tp!1033631 tp!1033636))))

(declare-fun b!3299966 () Bool)

(declare-fun lt!1118254 () tuple2!35954)

(assert (=> b!3299966 (= e!2052256 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118267)) (_1!21111 lt!1118254)) (_2!21111 lt!1118254)))))

(assert (=> b!3299966 (= lt!1118254 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118267))))))

(declare-fun b!3299967 () Bool)

(declare-fun tp!1033634 () Bool)

(assert (=> b!3299967 (= e!2052261 (and tp!1033634 (inv!49407 (tag!5831 (rule!7785 separatorToken!241))) (inv!49411 (transformation!5287 (rule!7785 separatorToken!241))) e!2052246))))

(declare-fun b!3299968 () Bool)

(assert (=> b!3299968 (= e!2052260 (= (rule!7785 (h!41880 tokens!494)) lt!1118273))))

(declare-fun tp!1033642 () Bool)

(declare-fun b!3299969 () Bool)

(assert (=> b!3299969 (= e!2052252 (and tp!1033642 (inv!49407 (tag!5831 (h!41881 rules!2135))) (inv!49411 (transformation!5287 (h!41881 rules!2135))) e!2052248))))

(declare-fun b!3299970 () Bool)

(declare-fun e!2052269 () Bool)

(assert (=> b!3299970 (= e!2052269 e!2052247)))

(declare-fun res!1338446 () Bool)

(assert (=> b!3299970 (=> res!1338446 e!2052247)))

(assert (=> b!3299970 (= res!1338446 (not (= lt!1118274 lt!1118249)))))

(declare-fun ++!8815 (List!36583 List!36583) List!36583)

(assert (=> b!3299970 (= lt!1118249 (++!8815 lt!1118263 lt!1118262))))

(declare-fun lt!1118255 () BalanceConc!21512)

(assert (=> b!3299970 (= lt!1118274 (list!13054 lt!1118255))))

(assert (=> b!3299970 (= lt!1118262 (list!13054 (charsOf!3303 separatorToken!241)))))

(declare-fun printWithSeparatorToken!93 (LexerInterface!4876 BalanceConc!21514 Token!9940) BalanceConc!21512)

(assert (=> b!3299970 (= lt!1118255 (printWithSeparatorToken!93 thiss!18206 lt!1118251 separatorToken!241))))

(declare-fun b!3299971 () Bool)

(declare-fun res!1338451 () Bool)

(assert (=> b!3299971 (=> res!1338451 e!2052262)))

(declare-fun list!13055 (BalanceConc!21514) List!36584)

(assert (=> b!3299971 (= res!1338451 (not (isEmpty!20599 (filter!527 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))) lambda!118850))))))

(declare-fun b!3299972 () Bool)

(declare-fun Unit!51392 () Unit!51389)

(assert (=> b!3299972 (= e!2052272 Unit!51392)))

(declare-fun b!3299973 () Bool)

(assert (=> b!3299973 (= e!2052262 (= (filter!527 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))) lambda!118850) tokens!494))))

(declare-fun b!3299974 () Bool)

(assert (=> b!3299974 (= e!2052251 e!2052269)))

(declare-fun res!1338450 () Bool)

(assert (=> b!3299974 (=> res!1338450 e!2052269)))

(assert (=> b!3299974 (= res!1338450 (isSeparator!5287 (rule!7785 (h!41880 tokens!494))))))

(declare-fun lt!1118275 () Unit!51389)

(declare-fun forallContained!1248 (List!36584 Int Token!9940) Unit!51389)

(assert (=> b!3299974 (= lt!1118275 (forallContained!1248 tokens!494 lambda!118850 (h!41880 tokens!494)))))

(declare-fun b!3299975 () Bool)

(declare-fun res!1338447 () Bool)

(assert (=> b!3299975 (=> (not res!1338447) (not e!2052263))))

(declare-fun forall!7541 (List!36584 Int) Bool)

(assert (=> b!3299975 (= res!1338447 (forall!7541 tokens!494 lambda!118850))))

(assert (= (and start!307056 res!1338441) b!3299941))

(assert (= (and b!3299941 res!1338453) b!3299942))

(assert (= (and b!3299942 res!1338454) b!3299940))

(assert (= (and b!3299940 res!1338438) b!3299964))

(assert (= (and b!3299964 res!1338457) b!3299961))

(assert (= (and b!3299961 res!1338445) b!3299975))

(assert (= (and b!3299975 res!1338447) b!3299959))

(assert (= (and b!3299959 res!1338456) b!3299947))

(assert (= (and b!3299947 res!1338436) b!3299956))

(assert (= (and b!3299956 (not res!1338455)) b!3299952))

(assert (= (and b!3299952 (not res!1338440)) b!3299946))

(assert (= (and b!3299946 (not res!1338444)) b!3299948))

(assert (= (and b!3299948 (not res!1338443)) b!3299974))

(assert (= (and b!3299974 (not res!1338450)) b!3299970))

(assert (= (and b!3299970 (not res!1338446)) b!3299954))

(assert (= (and b!3299954 res!1338458) b!3299953))

(assert (= (and b!3299953 res!1338448) b!3299968))

(assert (= (and b!3299954 res!1338437) b!3299958))

(assert (= (and b!3299958 res!1338435) b!3299955))

(assert (= (and b!3299954 c!559679) b!3299963))

(assert (= (and b!3299954 (not c!559679)) b!3299972))

(assert (= (and b!3299963 res!1338439) b!3299951))

(assert (= (and b!3299954 (not res!1338434)) b!3299939))

(assert (= (and b!3299939 c!559678) b!3299966))

(assert (= (and b!3299939 (not c!559678)) b!3299950))

(assert (= (and b!3299939 (not res!1338442)) b!3299971))

(assert (= (and b!3299971 (not res!1338451)) b!3299960))

(assert (= (and b!3299960 (not res!1338449)) b!3299962))

(assert (= (and b!3299962 (not res!1338452)) b!3299973))

(assert (= b!3299969 b!3299965))

(assert (= b!3299944 b!3299969))

(assert (= (and start!307056 (is-Cons!36461 rules!2135)) b!3299944))

(assert (= b!3299967 b!3299937))

(assert (= b!3299938 b!3299967))

(assert (= start!307056 b!3299938))

(assert (= b!3299957 b!3299943))

(assert (= b!3299949 b!3299957))

(assert (= b!3299945 b!3299949))

(assert (= (and start!307056 (is-Cons!36460 tokens!494)) b!3299945))

(declare-fun m!3623511 () Bool)

(assert (=> b!3299938 m!3623511))

(declare-fun m!3623513 () Bool)

(assert (=> b!3299959 m!3623513))

(declare-fun m!3623515 () Bool)

(assert (=> b!3299941 m!3623515))

(declare-fun m!3623517 () Bool)

(assert (=> b!3299967 m!3623517))

(declare-fun m!3623519 () Bool)

(assert (=> b!3299967 m!3623519))

(declare-fun m!3623521 () Bool)

(assert (=> b!3299960 m!3623521))

(assert (=> b!3299960 m!3623521))

(declare-fun m!3623523 () Bool)

(assert (=> b!3299960 m!3623523))

(declare-fun m!3623525 () Bool)

(assert (=> b!3299960 m!3623525))

(assert (=> b!3299960 m!3623525))

(declare-fun m!3623527 () Bool)

(assert (=> b!3299960 m!3623527))

(declare-fun m!3623529 () Bool)

(assert (=> b!3299954 m!3623529))

(declare-fun m!3623531 () Bool)

(assert (=> b!3299954 m!3623531))

(declare-fun m!3623533 () Bool)

(assert (=> b!3299954 m!3623533))

(declare-fun m!3623535 () Bool)

(assert (=> b!3299954 m!3623535))

(declare-fun m!3623537 () Bool)

(assert (=> b!3299954 m!3623537))

(declare-fun m!3623539 () Bool)

(assert (=> b!3299954 m!3623539))

(declare-fun m!3623541 () Bool)

(assert (=> b!3299954 m!3623541))

(declare-fun m!3623543 () Bool)

(assert (=> b!3299954 m!3623543))

(assert (=> b!3299954 m!3623529))

(declare-fun m!3623545 () Bool)

(assert (=> b!3299954 m!3623545))

(declare-fun m!3623547 () Bool)

(assert (=> b!3299954 m!3623547))

(assert (=> b!3299954 m!3623533))

(declare-fun m!3623549 () Bool)

(assert (=> b!3299954 m!3623549))

(declare-fun m!3623551 () Bool)

(assert (=> b!3299954 m!3623551))

(declare-fun m!3623553 () Bool)

(assert (=> b!3299954 m!3623553))

(declare-fun m!3623555 () Bool)

(assert (=> b!3299954 m!3623555))

(declare-fun m!3623557 () Bool)

(assert (=> b!3299954 m!3623557))

(declare-fun m!3623559 () Bool)

(assert (=> b!3299954 m!3623559))

(declare-fun m!3623561 () Bool)

(assert (=> b!3299954 m!3623561))

(declare-fun m!3623563 () Bool)

(assert (=> b!3299952 m!3623563))

(assert (=> b!3299952 m!3623563))

(declare-fun m!3623565 () Bool)

(assert (=> b!3299952 m!3623565))

(declare-fun m!3623567 () Bool)

(assert (=> b!3299942 m!3623567))

(declare-fun m!3623569 () Bool)

(assert (=> b!3299939 m!3623569))

(declare-fun m!3623571 () Bool)

(assert (=> b!3299939 m!3623571))

(declare-fun m!3623573 () Bool)

(assert (=> b!3299939 m!3623573))

(declare-fun m!3623575 () Bool)

(assert (=> b!3299939 m!3623575))

(declare-fun m!3623577 () Bool)

(assert (=> b!3299939 m!3623577))

(declare-fun m!3623579 () Bool)

(assert (=> b!3299939 m!3623579))

(declare-fun m!3623581 () Bool)

(assert (=> b!3299939 m!3623581))

(assert (=> b!3299939 m!3623569))

(declare-fun m!3623583 () Bool)

(assert (=> b!3299940 m!3623583))

(declare-fun m!3623585 () Bool)

(assert (=> b!3299940 m!3623585))

(declare-fun m!3623587 () Bool)

(assert (=> b!3299949 m!3623587))

(declare-fun m!3623589 () Bool)

(assert (=> b!3299958 m!3623589))

(declare-fun m!3623591 () Bool)

(assert (=> b!3299958 m!3623591))

(declare-fun m!3623593 () Bool)

(assert (=> b!3299975 m!3623593))

(declare-fun m!3623595 () Bool)

(assert (=> b!3299973 m!3623595))

(declare-fun m!3623597 () Bool)

(assert (=> b!3299973 m!3623597))

(assert (=> b!3299973 m!3623597))

(declare-fun m!3623599 () Bool)

(assert (=> b!3299973 m!3623599))

(declare-fun m!3623601 () Bool)

(assert (=> b!3299971 m!3623601))

(declare-fun m!3623603 () Bool)

(assert (=> b!3299971 m!3623603))

(declare-fun m!3623605 () Bool)

(assert (=> b!3299971 m!3623605))

(assert (=> b!3299971 m!3623601))

(assert (=> b!3299971 m!3623605))

(declare-fun m!3623607 () Bool)

(assert (=> b!3299971 m!3623607))

(assert (=> b!3299971 m!3623603))

(declare-fun m!3623609 () Bool)

(assert (=> b!3299971 m!3623609))

(declare-fun m!3623611 () Bool)

(assert (=> b!3299962 m!3623611))

(assert (=> b!3299962 m!3623611))

(declare-fun m!3623613 () Bool)

(assert (=> b!3299962 m!3623613))

(declare-fun m!3623615 () Bool)

(assert (=> b!3299962 m!3623615))

(declare-fun m!3623617 () Bool)

(assert (=> b!3299970 m!3623617))

(declare-fun m!3623619 () Bool)

(assert (=> b!3299970 m!3623619))

(declare-fun m!3623621 () Bool)

(assert (=> b!3299970 m!3623621))

(assert (=> b!3299970 m!3623619))

(declare-fun m!3623623 () Bool)

(assert (=> b!3299970 m!3623623))

(declare-fun m!3623625 () Bool)

(assert (=> b!3299970 m!3623625))

(declare-fun m!3623627 () Bool)

(assert (=> b!3299966 m!3623627))

(declare-fun m!3623629 () Bool)

(assert (=> b!3299964 m!3623629))

(declare-fun m!3623631 () Bool)

(assert (=> start!307056 m!3623631))

(declare-fun m!3623633 () Bool)

(assert (=> b!3299953 m!3623633))

(declare-fun m!3623635 () Bool)

(assert (=> b!3299953 m!3623635))

(declare-fun m!3623637 () Bool)

(assert (=> b!3299945 m!3623637))

(declare-fun m!3623639 () Bool)

(assert (=> b!3299948 m!3623639))

(declare-fun m!3623641 () Bool)

(assert (=> b!3299948 m!3623641))

(declare-fun m!3623643 () Bool)

(assert (=> b!3299948 m!3623643))

(declare-fun m!3623645 () Bool)

(assert (=> b!3299969 m!3623645))

(declare-fun m!3623647 () Bool)

(assert (=> b!3299969 m!3623647))

(declare-fun m!3623649 () Bool)

(assert (=> b!3299974 m!3623649))

(declare-fun m!3623651 () Bool)

(assert (=> b!3299946 m!3623651))

(declare-fun m!3623653 () Bool)

(assert (=> b!3299957 m!3623653))

(declare-fun m!3623655 () Bool)

(assert (=> b!3299957 m!3623655))

(declare-fun m!3623657 () Bool)

(assert (=> b!3299956 m!3623657))

(declare-fun m!3623659 () Bool)

(assert (=> b!3299956 m!3623659))

(declare-fun m!3623661 () Bool)

(assert (=> b!3299956 m!3623661))

(declare-fun m!3623663 () Bool)

(assert (=> b!3299956 m!3623663))

(declare-fun m!3623665 () Bool)

(assert (=> b!3299956 m!3623665))

(declare-fun m!3623667 () Bool)

(assert (=> b!3299963 m!3623667))

(declare-fun m!3623669 () Bool)

(assert (=> b!3299963 m!3623669))

(push 1)

(assert (not b!3299962))

(assert (not b!3299944))

(assert (not b!3299949))

(assert (not b_next!87373))

(assert (not b!3299974))

(assert (not b!3299946))

(assert (not b!3299960))

(assert (not b!3299945))

(assert (not start!307056))

(assert b_and!225813)

(assert (not b!3299959))

(assert (not b!3299952))

(assert (not b!3299957))

(assert (not b!3299964))

(assert (not b!3299938))

(assert b_and!225811)

(assert (not b!3299956))

(assert (not b!3299973))

(assert (not b_next!87381))

(assert (not b!3299940))

(assert (not b!3299975))

(assert (not b!3299954))

(assert (not b!3299939))

(assert (not b!3299969))

(assert (not b!3299966))

(assert b_and!225821)

(assert (not b!3299958))

(assert (not b!3299971))

(assert (not b!3299948))

(assert (not b!3299953))

(assert (not b!3299967))

(assert b_and!225819)

(assert (not b_next!87379))

(assert (not b_next!87383))

(assert (not b!3299963))

(assert (not b_next!87377))

(assert (not b!3299941))

(assert (not b_next!87375))

(assert b_and!225815)

(assert (not b!3299942))

(assert (not b!3299970))

(assert b_and!225817)

(check-sat)

(pop 1)

(push 1)

(assert b_and!225813)

(assert b_and!225811)

(assert (not b_next!87381))

(assert (not b_next!87373))

(assert b_and!225821)

(assert b_and!225815)

(assert b_and!225817)

(assert b_and!225819)

(assert (not b_next!87379))

(assert (not b_next!87383))

(assert (not b_next!87377))

(assert (not b_next!87375))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3300133 () Bool)

(declare-fun e!2052389 () Bool)

(declare-fun nullable!3415 (Regex!10046) Bool)

(assert (=> b!3300133 (= e!2052389 (nullable!3415 (regex!5287 lt!1118273)))))

(declare-fun b!3300134 () Bool)

(declare-fun res!1338571 () Bool)

(declare-fun e!2052393 () Bool)

(assert (=> b!3300134 (=> (not res!1338571) (not e!2052393))))

(declare-fun call!239897 () Bool)

(assert (=> b!3300134 (= res!1338571 (not call!239897))))

(declare-fun b!3300135 () Bool)

(declare-fun derivativeStep!2968 (Regex!10046 C!20278) Regex!10046)

(declare-fun tail!5258 (List!36583) List!36583)

(assert (=> b!3300135 (= e!2052389 (matchR!4668 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263)) (tail!5258 lt!1118263)))))

(declare-fun b!3300136 () Bool)

(declare-fun e!2052391 () Bool)

(declare-fun e!2052394 () Bool)

(assert (=> b!3300136 (= e!2052391 e!2052394)))

(declare-fun c!559701 () Bool)

(assert (=> b!3300136 (= c!559701 (is-EmptyLang!10046 (regex!5287 lt!1118273)))))

(declare-fun d!923403 () Bool)

(assert (=> d!923403 e!2052391))

(declare-fun c!559700 () Bool)

(assert (=> d!923403 (= c!559700 (is-EmptyExpr!10046 (regex!5287 lt!1118273)))))

(declare-fun lt!1118373 () Bool)

(assert (=> d!923403 (= lt!1118373 e!2052389)))

(declare-fun c!559699 () Bool)

(assert (=> d!923403 (= c!559699 (isEmpty!20598 lt!1118263))))

(declare-fun validRegex!4571 (Regex!10046) Bool)

(assert (=> d!923403 (validRegex!4571 (regex!5287 lt!1118273))))

(assert (=> d!923403 (= (matchR!4668 (regex!5287 lt!1118273) lt!1118263) lt!1118373)))

(declare-fun b!3300137 () Bool)

(declare-fun e!2052388 () Bool)

(assert (=> b!3300137 (= e!2052388 (not (= (head!7120 lt!1118263) (c!559680 (regex!5287 lt!1118273)))))))

(declare-fun b!3300138 () Bool)

(declare-fun res!1338567 () Bool)

(declare-fun e!2052392 () Bool)

(assert (=> b!3300138 (=> res!1338567 e!2052392)))

(assert (=> b!3300138 (= res!1338567 (not (is-ElementMatch!10046 (regex!5287 lt!1118273))))))

(assert (=> b!3300138 (= e!2052394 e!2052392)))

(declare-fun b!3300139 () Bool)

(declare-fun res!1338565 () Bool)

(assert (=> b!3300139 (=> (not res!1338565) (not e!2052393))))

(assert (=> b!3300139 (= res!1338565 (isEmpty!20598 (tail!5258 lt!1118263)))))

(declare-fun b!3300140 () Bool)

(declare-fun res!1338566 () Bool)

(assert (=> b!3300140 (=> res!1338566 e!2052392)))

(assert (=> b!3300140 (= res!1338566 e!2052393)))

(declare-fun res!1338568 () Bool)

(assert (=> b!3300140 (=> (not res!1338568) (not e!2052393))))

(assert (=> b!3300140 (= res!1338568 lt!1118373)))

(declare-fun b!3300141 () Bool)

(assert (=> b!3300141 (= e!2052391 (= lt!1118373 call!239897))))

(declare-fun bm!239892 () Bool)

(assert (=> bm!239892 (= call!239897 (isEmpty!20598 lt!1118263))))

(declare-fun b!3300142 () Bool)

(assert (=> b!3300142 (= e!2052393 (= (head!7120 lt!1118263) (c!559680 (regex!5287 lt!1118273))))))

(declare-fun b!3300143 () Bool)

(declare-fun e!2052390 () Bool)

(assert (=> b!3300143 (= e!2052392 e!2052390)))

(declare-fun res!1338569 () Bool)

(assert (=> b!3300143 (=> (not res!1338569) (not e!2052390))))

(assert (=> b!3300143 (= res!1338569 (not lt!1118373))))

(declare-fun b!3300144 () Bool)

(declare-fun res!1338572 () Bool)

(assert (=> b!3300144 (=> res!1338572 e!2052388)))

(assert (=> b!3300144 (= res!1338572 (not (isEmpty!20598 (tail!5258 lt!1118263))))))

(declare-fun b!3300145 () Bool)

(assert (=> b!3300145 (= e!2052394 (not lt!1118373))))

(declare-fun b!3300146 () Bool)

(assert (=> b!3300146 (= e!2052390 e!2052388)))

(declare-fun res!1338570 () Bool)

(assert (=> b!3300146 (=> res!1338570 e!2052388)))

(assert (=> b!3300146 (= res!1338570 call!239897)))

(assert (= (and d!923403 c!559699) b!3300133))

(assert (= (and d!923403 (not c!559699)) b!3300135))

(assert (= (and d!923403 c!559700) b!3300141))

(assert (= (and d!923403 (not c!559700)) b!3300136))

(assert (= (and b!3300136 c!559701) b!3300145))

(assert (= (and b!3300136 (not c!559701)) b!3300138))

(assert (= (and b!3300138 (not res!1338567)) b!3300140))

(assert (= (and b!3300140 res!1338568) b!3300134))

(assert (= (and b!3300134 res!1338571) b!3300139))

(assert (= (and b!3300139 res!1338565) b!3300142))

(assert (= (and b!3300140 (not res!1338566)) b!3300143))

(assert (= (and b!3300143 res!1338569) b!3300146))

(assert (= (and b!3300146 (not res!1338570)) b!3300144))

(assert (= (and b!3300144 (not res!1338572)) b!3300137))

(assert (= (or b!3300141 b!3300134 b!3300146) bm!239892))

(declare-fun m!3623859 () Bool)

(assert (=> b!3300139 m!3623859))

(assert (=> b!3300139 m!3623859))

(declare-fun m!3623861 () Bool)

(assert (=> b!3300139 m!3623861))

(declare-fun m!3623863 () Bool)

(assert (=> b!3300133 m!3623863))

(declare-fun m!3623865 () Bool)

(assert (=> bm!239892 m!3623865))

(declare-fun m!3623867 () Bool)

(assert (=> b!3300135 m!3623867))

(assert (=> b!3300135 m!3623867))

(declare-fun m!3623869 () Bool)

(assert (=> b!3300135 m!3623869))

(assert (=> b!3300135 m!3623859))

(assert (=> b!3300135 m!3623869))

(assert (=> b!3300135 m!3623859))

(declare-fun m!3623871 () Bool)

(assert (=> b!3300135 m!3623871))

(assert (=> b!3300137 m!3623867))

(assert (=> b!3300142 m!3623867))

(assert (=> b!3300144 m!3623859))

(assert (=> b!3300144 m!3623859))

(assert (=> b!3300144 m!3623861))

(assert (=> d!923403 m!3623865))

(declare-fun m!3623873 () Bool)

(assert (=> d!923403 m!3623873))

(assert (=> b!3299953 d!923403))

(declare-fun d!923405 () Bool)

(assert (=> d!923405 (= (get!11634 lt!1118276) (v!36015 lt!1118276))))

(assert (=> b!3299953 d!923405))

(declare-fun d!923407 () Bool)

(declare-fun dynLambda!14914 (Int Token!9940) Bool)

(assert (=> d!923407 (dynLambda!14914 lambda!118850 (h!41880 tokens!494))))

(declare-fun lt!1118376 () Unit!51389)

(declare-fun choose!19103 (List!36584 Int Token!9940) Unit!51389)

(assert (=> d!923407 (= lt!1118376 (choose!19103 tokens!494 lambda!118850 (h!41880 tokens!494)))))

(declare-fun e!2052397 () Bool)

(assert (=> d!923407 e!2052397))

(declare-fun res!1338575 () Bool)

(assert (=> d!923407 (=> (not res!1338575) (not e!2052397))))

(assert (=> d!923407 (= res!1338575 (forall!7541 tokens!494 lambda!118850))))

(assert (=> d!923407 (= (forallContained!1248 tokens!494 lambda!118850 (h!41880 tokens!494)) lt!1118376)))

(declare-fun b!3300149 () Bool)

(declare-fun contains!6584 (List!36584 Token!9940) Bool)

(assert (=> b!3300149 (= e!2052397 (contains!6584 tokens!494 (h!41880 tokens!494)))))

(assert (= (and d!923407 res!1338575) b!3300149))

(declare-fun b_lambda!91963 () Bool)

(assert (=> (not b_lambda!91963) (not d!923407)))

(declare-fun m!3623875 () Bool)

(assert (=> d!923407 m!3623875))

(declare-fun m!3623877 () Bool)

(assert (=> d!923407 m!3623877))

(assert (=> d!923407 m!3623593))

(declare-fun m!3623879 () Bool)

(assert (=> b!3300149 m!3623879))

(assert (=> b!3299974 d!923407))

(declare-fun d!923409 () Bool)

(declare-fun e!2052400 () Bool)

(assert (=> d!923409 e!2052400))

(declare-fun res!1338580 () Bool)

(assert (=> d!923409 (=> (not res!1338580) (not e!2052400))))

(assert (=> d!923409 (= res!1338580 (isDefined!5633 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))))))

(declare-fun lt!1118379 () Unit!51389)

(declare-fun choose!19104 (LexerInterface!4876 List!36585 List!36583 Token!9940) Unit!51389)

(assert (=> d!923409 (= lt!1118379 (choose!19104 thiss!18206 rules!2135 lt!1118263 (h!41880 tokens!494)))))

(assert (=> d!923409 (rulesInvariant!4273 thiss!18206 rules!2135)))

(assert (=> d!923409 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!978 thiss!18206 rules!2135 lt!1118263 (h!41880 tokens!494)) lt!1118379)))

(declare-fun b!3300154 () Bool)

(declare-fun res!1338581 () Bool)

(assert (=> b!3300154 (=> (not res!1338581) (not e!2052400))))

(assert (=> b!3300154 (= res!1338581 (matchR!4668 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))) (list!13054 (charsOf!3303 (h!41880 tokens!494)))))))

(declare-fun b!3300155 () Bool)

(assert (=> b!3300155 (= e!2052400 (= (rule!7785 (h!41880 tokens!494)) (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))

(assert (= (and d!923409 res!1338580) b!3300154))

(assert (= (and b!3300154 res!1338581) b!3300155))

(assert (=> d!923409 m!3623535))

(assert (=> d!923409 m!3623535))

(declare-fun m!3623881 () Bool)

(assert (=> d!923409 m!3623881))

(declare-fun m!3623883 () Bool)

(assert (=> d!923409 m!3623883))

(assert (=> d!923409 m!3623567))

(assert (=> b!3300154 m!3623565))

(declare-fun m!3623885 () Bool)

(assert (=> b!3300154 m!3623885))

(assert (=> b!3300154 m!3623535))

(assert (=> b!3300154 m!3623535))

(declare-fun m!3623887 () Bool)

(assert (=> b!3300154 m!3623887))

(assert (=> b!3300154 m!3623563))

(assert (=> b!3300154 m!3623563))

(assert (=> b!3300154 m!3623565))

(assert (=> b!3300155 m!3623535))

(assert (=> b!3300155 m!3623535))

(assert (=> b!3300155 m!3623887))

(assert (=> b!3299954 d!923409))

(declare-fun d!923411 () Bool)

(declare-fun lt!1118382 () Bool)

(declare-fun content!4957 (List!36583) (Set C!20278))

(assert (=> d!923411 (= lt!1118382 (set.member lt!1118269 (content!4957 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241))))))))

(declare-fun e!2052406 () Bool)

(assert (=> d!923411 (= lt!1118382 e!2052406)))

(declare-fun res!1338586 () Bool)

(assert (=> d!923411 (=> (not res!1338586) (not e!2052406))))

(assert (=> d!923411 (= res!1338586 (is-Cons!36459 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))))))

(assert (=> d!923411 (= (contains!6582 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241))) lt!1118269) lt!1118382)))

(declare-fun b!3300160 () Bool)

(declare-fun e!2052405 () Bool)

(assert (=> b!3300160 (= e!2052406 e!2052405)))

(declare-fun res!1338587 () Bool)

(assert (=> b!3300160 (=> res!1338587 e!2052405)))

(assert (=> b!3300160 (= res!1338587 (= (h!41879 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))) lt!1118269))))

(declare-fun b!3300161 () Bool)

(assert (=> b!3300161 (= e!2052405 (contains!6582 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))) lt!1118269))))

(assert (= (and d!923411 res!1338586) b!3300160))

(assert (= (and b!3300160 (not res!1338587)) b!3300161))

(assert (=> d!923411 m!3623533))

(declare-fun m!3623889 () Bool)

(assert (=> d!923411 m!3623889))

(declare-fun m!3623891 () Bool)

(assert (=> d!923411 m!3623891))

(declare-fun m!3623893 () Bool)

(assert (=> b!3300161 m!3623893))

(assert (=> b!3299954 d!923411))

(declare-fun d!923413 () Bool)

(declare-fun lt!1118385 () Int)

(assert (=> d!923413 (>= lt!1118385 0)))

(declare-fun e!2052409 () Int)

(assert (=> d!923413 (= lt!1118385 e!2052409)))

(declare-fun c!559704 () Bool)

(assert (=> d!923413 (= c!559704 (is-Nil!36459 lt!1118263))))

(assert (=> d!923413 (= (size!27531 lt!1118263) lt!1118385)))

(declare-fun b!3300166 () Bool)

(assert (=> b!3300166 (= e!2052409 0)))

(declare-fun b!3300167 () Bool)

(assert (=> b!3300167 (= e!2052409 (+ 1 (size!27531 (t!252748 lt!1118263))))))

(assert (= (and d!923413 c!559704) b!3300166))

(assert (= (and d!923413 (not c!559704)) b!3300167))

(declare-fun m!3623895 () Bool)

(assert (=> b!3300167 m!3623895))

(assert (=> b!3299954 d!923413))

(declare-fun d!923415 () Bool)

(assert (=> d!923415 (= (maxPrefixOneRule!1641 thiss!18206 (rule!7785 (h!41880 tokens!494)) lt!1118263) (Some!7268 (tuple2!35957 (Token!9941 (apply!8365 (transformation!5287 (rule!7785 (h!41880 tokens!494))) (seqFromList!3638 lt!1118263)) (rule!7785 (h!41880 tokens!494)) (size!27531 lt!1118263) lt!1118263) Nil!36459)))))

(declare-fun lt!1118388 () Unit!51389)

(declare-fun choose!19105 (LexerInterface!4876 List!36585 List!36583 List!36583 List!36583 Rule!10374) Unit!51389)

(assert (=> d!923415 (= lt!1118388 (choose!19105 thiss!18206 rules!2135 lt!1118263 lt!1118263 Nil!36459 (rule!7785 (h!41880 tokens!494))))))

(assert (=> d!923415 (not (isEmpty!20596 rules!2135))))

(assert (=> d!923415 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!752 thiss!18206 rules!2135 lt!1118263 lt!1118263 Nil!36459 (rule!7785 (h!41880 tokens!494))) lt!1118388)))

(declare-fun bs!548554 () Bool)

(assert (= bs!548554 d!923415))

(assert (=> bs!548554 m!3623643))

(assert (=> bs!548554 m!3623643))

(declare-fun m!3623897 () Bool)

(assert (=> bs!548554 m!3623897))

(assert (=> bs!548554 m!3623539))

(declare-fun m!3623899 () Bool)

(assert (=> bs!548554 m!3623899))

(assert (=> bs!548554 m!3623543))

(assert (=> bs!548554 m!3623515))

(assert (=> b!3299954 d!923415))

(declare-fun d!923417 () Bool)

(declare-fun e!2052410 () Bool)

(assert (=> d!923417 e!2052410))

(declare-fun res!1338588 () Bool)

(assert (=> d!923417 (=> (not res!1338588) (not e!2052410))))

(assert (=> d!923417 (= res!1338588 (isDefined!5633 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))))))

(declare-fun lt!1118389 () Unit!51389)

(assert (=> d!923417 (= lt!1118389 (choose!19104 thiss!18206 rules!2135 lt!1118262 separatorToken!241))))

(assert (=> d!923417 (rulesInvariant!4273 thiss!18206 rules!2135)))

(assert (=> d!923417 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!978 thiss!18206 rules!2135 lt!1118262 separatorToken!241) lt!1118389)))

(declare-fun b!3300168 () Bool)

(declare-fun res!1338589 () Bool)

(assert (=> b!3300168 (=> (not res!1338589) (not e!2052410))))

(assert (=> b!3300168 (= res!1338589 (matchR!4668 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))) (list!13054 (charsOf!3303 separatorToken!241))))))

(declare-fun b!3300169 () Bool)

(assert (=> b!3300169 (= e!2052410 (= (rule!7785 separatorToken!241) (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))))))

(assert (= (and d!923417 res!1338588) b!3300168))

(assert (= (and b!3300168 res!1338589) b!3300169))

(assert (=> d!923417 m!3623555))

(assert (=> d!923417 m!3623555))

(declare-fun m!3623901 () Bool)

(assert (=> d!923417 m!3623901))

(declare-fun m!3623903 () Bool)

(assert (=> d!923417 m!3623903))

(assert (=> d!923417 m!3623567))

(assert (=> b!3300168 m!3623623))

(declare-fun m!3623905 () Bool)

(assert (=> b!3300168 m!3623905))

(assert (=> b!3300168 m!3623555))

(assert (=> b!3300168 m!3623555))

(declare-fun m!3623907 () Bool)

(assert (=> b!3300168 m!3623907))

(assert (=> b!3300168 m!3623619))

(assert (=> b!3300168 m!3623619))

(assert (=> b!3300168 m!3623623))

(assert (=> b!3300169 m!3623555))

(assert (=> b!3300169 m!3623555))

(assert (=> b!3300169 m!3623907))

(assert (=> b!3299954 d!923417))

(declare-fun d!923419 () Bool)

(declare-fun isEmpty!20604 (Option!7270) Bool)

(assert (=> d!923419 (= (isDefined!5633 lt!1118276) (not (isEmpty!20604 lt!1118276)))))

(declare-fun bs!548555 () Bool)

(assert (= bs!548555 d!923419))

(declare-fun m!3623909 () Bool)

(assert (=> bs!548555 m!3623909))

(assert (=> b!3299954 d!923419))

(declare-fun b!3300182 () Bool)

(declare-fun e!2052420 () Option!7270)

(assert (=> b!3300182 (= e!2052420 None!7269)))

(declare-fun b!3300183 () Bool)

(declare-fun e!2052422 () Option!7270)

(assert (=> b!3300183 (= e!2052422 e!2052420)))

(declare-fun c!559709 () Bool)

(assert (=> b!3300183 (= c!559709 (and (is-Cons!36461 rules!2135) (not (= (tag!5831 (h!41881 rules!2135)) (tag!5831 (rule!7785 separatorToken!241))))))))

(declare-fun b!3300184 () Bool)

(declare-fun e!2052419 () Bool)

(declare-fun e!2052421 () Bool)

(assert (=> b!3300184 (= e!2052419 e!2052421)))

(declare-fun res!1338595 () Bool)

(assert (=> b!3300184 (=> (not res!1338595) (not e!2052421))))

(declare-fun lt!1118397 () Option!7270)

(declare-fun contains!6585 (List!36585 Rule!10374) Bool)

(assert (=> b!3300184 (= res!1338595 (contains!6585 rules!2135 (get!11634 lt!1118397)))))

(declare-fun b!3300185 () Bool)

(assert (=> b!3300185 (= e!2052421 (= (tag!5831 (get!11634 lt!1118397)) (tag!5831 (rule!7785 separatorToken!241))))))

(declare-fun d!923421 () Bool)

(assert (=> d!923421 e!2052419))

(declare-fun res!1338594 () Bool)

(assert (=> d!923421 (=> res!1338594 e!2052419)))

(assert (=> d!923421 (= res!1338594 (isEmpty!20604 lt!1118397))))

(assert (=> d!923421 (= lt!1118397 e!2052422)))

(declare-fun c!559710 () Bool)

(assert (=> d!923421 (= c!559710 (and (is-Cons!36461 rules!2135) (= (tag!5831 (h!41881 rules!2135)) (tag!5831 (rule!7785 separatorToken!241)))))))

(assert (=> d!923421 (rulesInvariant!4273 thiss!18206 rules!2135)))

(assert (=> d!923421 (= (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))) lt!1118397)))

(declare-fun b!3300186 () Bool)

(declare-fun lt!1118396 () Unit!51389)

(declare-fun lt!1118398 () Unit!51389)

(assert (=> b!3300186 (= lt!1118396 lt!1118398)))

(assert (=> b!3300186 (rulesInvariant!4273 thiss!18206 (t!252750 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!367 (LexerInterface!4876 Rule!10374 List!36585) Unit!51389)

(assert (=> b!3300186 (= lt!1118398 (lemmaInvariantOnRulesThenOnTail!367 thiss!18206 (h!41881 rules!2135) (t!252750 rules!2135)))))

(assert (=> b!3300186 (= e!2052420 (getRuleFromTag!978 thiss!18206 (t!252750 rules!2135) (tag!5831 (rule!7785 separatorToken!241))))))

(declare-fun b!3300187 () Bool)

(assert (=> b!3300187 (= e!2052422 (Some!7269 (h!41881 rules!2135)))))

(assert (= (and d!923421 c!559710) b!3300187))

(assert (= (and d!923421 (not c!559710)) b!3300183))

(assert (= (and b!3300183 c!559709) b!3300186))

(assert (= (and b!3300183 (not c!559709)) b!3300182))

(assert (= (and d!923421 (not res!1338594)) b!3300184))

(assert (= (and b!3300184 res!1338595) b!3300185))

(declare-fun m!3623911 () Bool)

(assert (=> b!3300184 m!3623911))

(assert (=> b!3300184 m!3623911))

(declare-fun m!3623913 () Bool)

(assert (=> b!3300184 m!3623913))

(assert (=> b!3300185 m!3623911))

(declare-fun m!3623915 () Bool)

(assert (=> d!923421 m!3623915))

(assert (=> d!923421 m!3623567))

(declare-fun m!3623917 () Bool)

(assert (=> b!3300186 m!3623917))

(declare-fun m!3623919 () Bool)

(assert (=> b!3300186 m!3623919))

(declare-fun m!3623921 () Bool)

(assert (=> b!3300186 m!3623921))

(assert (=> b!3299954 d!923421))

(declare-fun d!923423 () Bool)

(assert (=> d!923423 (= (isDefined!5633 lt!1118272) (not (isEmpty!20604 lt!1118272)))))

(declare-fun bs!548556 () Bool)

(assert (= bs!548556 d!923423))

(declare-fun m!3623923 () Bool)

(assert (=> bs!548556 m!3623923))

(assert (=> b!3299954 d!923423))

(declare-fun d!923425 () Bool)

(assert (=> d!923425 (= (isEmpty!20598 (getSuffix!1411 lt!1118263 lt!1118263)) (is-Nil!36459 (getSuffix!1411 lt!1118263 lt!1118263)))))

(assert (=> b!3299954 d!923425))

(declare-fun d!923427 () Bool)

(declare-fun dynLambda!14915 (Int BalanceConc!21512) TokenValue!5517)

(assert (=> d!923427 (= (apply!8365 (transformation!5287 (rule!7785 (h!41880 tokens!494))) lt!1118258) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258))))

(declare-fun b_lambda!91965 () Bool)

(assert (=> (not b_lambda!91965) (not d!923427)))

(declare-fun t!252770 () Bool)

(declare-fun tb!170867 () Bool)

(assert (=> (and b!3299965 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252770) tb!170867))

(declare-fun result!213598 () Bool)

(assert (=> tb!170867 (= result!213598 (inv!21 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258)))))

(declare-fun m!3623925 () Bool)

(assert (=> tb!170867 m!3623925))

(assert (=> d!923427 t!252770))

(declare-fun b_and!225847 () Bool)

(assert (= b_and!225811 (and (=> t!252770 result!213598) b_and!225847)))

(declare-fun tb!170869 () Bool)

(declare-fun t!252772 () Bool)

(assert (=> (and b!3299937 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252772) tb!170869))

(declare-fun result!213602 () Bool)

(assert (= result!213602 result!213598))

(assert (=> d!923427 t!252772))

(declare-fun b_and!225849 () Bool)

(assert (= b_and!225815 (and (=> t!252772 result!213602) b_and!225849)))

(declare-fun t!252774 () Bool)

(declare-fun tb!170871 () Bool)

(assert (=> (and b!3299943 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252774) tb!170871))

(declare-fun result!213604 () Bool)

(assert (= result!213604 result!213598))

(assert (=> d!923427 t!252774))

(declare-fun b_and!225851 () Bool)

(assert (= b_and!225819 (and (=> t!252774 result!213604) b_and!225851)))

(declare-fun m!3623927 () Bool)

(assert (=> d!923427 m!3623927))

(assert (=> b!3299954 d!923427))

(declare-fun b!3300206 () Bool)

(declare-fun e!2052434 () List!36583)

(declare-fun call!239908 () List!36583)

(assert (=> b!3300206 (= e!2052434 call!239908)))

(declare-fun b!3300207 () Bool)

(declare-fun c!559721 () Bool)

(assert (=> b!3300207 (= c!559721 (is-Star!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun e!2052437 () List!36583)

(declare-fun e!2052436 () List!36583)

(assert (=> b!3300207 (= e!2052437 e!2052436)))

(declare-fun b!3300208 () Bool)

(assert (=> b!3300208 (= e!2052434 call!239908)))

(declare-fun b!3300209 () Bool)

(declare-fun call!239909 () List!36583)

(assert (=> b!3300209 (= e!2052436 call!239909)))

(declare-fun bm!239901 () Bool)

(declare-fun call!239907 () List!36583)

(assert (=> bm!239901 (= call!239907 call!239909)))

(declare-fun d!923429 () Bool)

(declare-fun c!559719 () Bool)

(assert (=> d!923429 (= c!559719 (or (is-EmptyExpr!10046 (regex!5287 (rule!7785 separatorToken!241))) (is-EmptyLang!10046 (regex!5287 (rule!7785 separatorToken!241)))))))

(declare-fun e!2052435 () List!36583)

(assert (=> d!923429 (= (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241))) e!2052435)))

(declare-fun b!3300210 () Bool)

(assert (=> b!3300210 (= e!2052436 e!2052434)))

(declare-fun c!559720 () Bool)

(assert (=> b!3300210 (= c!559720 (is-Union!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun bm!239902 () Bool)

(declare-fun call!239906 () List!36583)

(assert (=> bm!239902 (= call!239906 (usedCharacters!589 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))))))

(declare-fun b!3300211 () Bool)

(assert (=> b!3300211 (= e!2052437 (Cons!36459 (c!559680 (regex!5287 (rule!7785 separatorToken!241))) Nil!36459))))

(declare-fun bm!239903 () Bool)

(assert (=> bm!239903 (= call!239908 (++!8815 (ite c!559720 call!239907 call!239906) (ite c!559720 call!239906 call!239907)))))

(declare-fun bm!239904 () Bool)

(assert (=> bm!239904 (= call!239909 (usedCharacters!589 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))

(declare-fun b!3300212 () Bool)

(assert (=> b!3300212 (= e!2052435 e!2052437)))

(declare-fun c!559722 () Bool)

(assert (=> b!3300212 (= c!559722 (is-ElementMatch!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun b!3300213 () Bool)

(assert (=> b!3300213 (= e!2052435 Nil!36459)))

(assert (= (and d!923429 c!559719) b!3300213))

(assert (= (and d!923429 (not c!559719)) b!3300212))

(assert (= (and b!3300212 c!559722) b!3300211))

(assert (= (and b!3300212 (not c!559722)) b!3300207))

(assert (= (and b!3300207 c!559721) b!3300209))

(assert (= (and b!3300207 (not c!559721)) b!3300210))

(assert (= (and b!3300210 c!559720) b!3300208))

(assert (= (and b!3300210 (not c!559720)) b!3300206))

(assert (= (or b!3300208 b!3300206) bm!239902))

(assert (= (or b!3300208 b!3300206) bm!239901))

(assert (= (or b!3300208 b!3300206) bm!239903))

(assert (= (or b!3300209 bm!239901) bm!239904))

(declare-fun m!3623929 () Bool)

(assert (=> bm!239902 m!3623929))

(declare-fun m!3623931 () Bool)

(assert (=> bm!239903 m!3623931))

(declare-fun m!3623933 () Bool)

(assert (=> bm!239904 m!3623933))

(assert (=> b!3299954 d!923429))

(declare-fun d!923431 () Bool)

(declare-fun lt!1118401 () List!36583)

(assert (=> d!923431 (= (++!8815 lt!1118263 lt!1118401) lt!1118263)))

(declare-fun e!2052440 () List!36583)

(assert (=> d!923431 (= lt!1118401 e!2052440)))

(declare-fun c!559725 () Bool)

(assert (=> d!923431 (= c!559725 (is-Cons!36459 lt!1118263))))

(assert (=> d!923431 (>= (size!27531 lt!1118263) (size!27531 lt!1118263))))

(assert (=> d!923431 (= (getSuffix!1411 lt!1118263 lt!1118263) lt!1118401)))

(declare-fun b!3300218 () Bool)

(assert (=> b!3300218 (= e!2052440 (getSuffix!1411 (tail!5258 lt!1118263) (t!252748 lt!1118263)))))

(declare-fun b!3300219 () Bool)

(assert (=> b!3300219 (= e!2052440 lt!1118263)))

(assert (= (and d!923431 c!559725) b!3300218))

(assert (= (and d!923431 (not c!559725)) b!3300219))

(declare-fun m!3623935 () Bool)

(assert (=> d!923431 m!3623935))

(assert (=> d!923431 m!3623543))

(assert (=> d!923431 m!3623543))

(assert (=> b!3300218 m!3623859))

(assert (=> b!3300218 m!3623859))

(declare-fun m!3623937 () Bool)

(assert (=> b!3300218 m!3623937))

(assert (=> b!3299954 d!923431))

(declare-fun d!923433 () Bool)

(assert (=> d!923433 (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 (h!41880 tokens!494))))

(declare-fun lt!1118410 () Unit!51389)

(declare-fun choose!19106 (LexerInterface!4876 List!36585 List!36584 Token!9940) Unit!51389)

(assert (=> d!923433 (= lt!1118410 (choose!19106 thiss!18206 rules!2135 tokens!494 (h!41880 tokens!494)))))

(assert (=> d!923433 (not (isEmpty!20596 rules!2135))))

(assert (=> d!923433 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!901 thiss!18206 rules!2135 tokens!494 (h!41880 tokens!494)) lt!1118410)))

(declare-fun bs!548558 () Bool)

(assert (= bs!548558 d!923433))

(assert (=> bs!548558 m!3623651))

(declare-fun m!3623975 () Bool)

(assert (=> bs!548558 m!3623975))

(assert (=> bs!548558 m!3623515))

(assert (=> b!3299954 d!923433))

(declare-fun d!923445 () Bool)

(assert (=> d!923445 (isEmpty!20598 (getSuffix!1411 lt!1118263 lt!1118263))))

(declare-fun lt!1118416 () Unit!51389)

(declare-fun choose!19107 (List!36583) Unit!51389)

(assert (=> d!923445 (= lt!1118416 (choose!19107 lt!1118263))))

(assert (=> d!923445 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!75 lt!1118263) lt!1118416)))

(declare-fun bs!548560 () Bool)

(assert (= bs!548560 d!923445))

(assert (=> bs!548560 m!3623529))

(assert (=> bs!548560 m!3623529))

(assert (=> bs!548560 m!3623545))

(declare-fun m!3623979 () Bool)

(assert (=> bs!548560 m!3623979))

(assert (=> b!3299954 d!923445))

(declare-fun b!3300268 () Bool)

(declare-fun e!2052472 () Option!7270)

(assert (=> b!3300268 (= e!2052472 None!7269)))

(declare-fun b!3300269 () Bool)

(declare-fun e!2052474 () Option!7270)

(assert (=> b!3300269 (= e!2052474 e!2052472)))

(declare-fun c!559742 () Bool)

(assert (=> b!3300269 (= c!559742 (and (is-Cons!36461 rules!2135) (not (= (tag!5831 (h!41881 rules!2135)) (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun b!3300270 () Bool)

(declare-fun e!2052471 () Bool)

(declare-fun e!2052473 () Bool)

(assert (=> b!3300270 (= e!2052471 e!2052473)))

(declare-fun res!1338615 () Bool)

(assert (=> b!3300270 (=> (not res!1338615) (not e!2052473))))

(declare-fun lt!1118418 () Option!7270)

(assert (=> b!3300270 (= res!1338615 (contains!6585 rules!2135 (get!11634 lt!1118418)))))

(declare-fun b!3300271 () Bool)

(assert (=> b!3300271 (= e!2052473 (= (tag!5831 (get!11634 lt!1118418)) (tag!5831 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun d!923449 () Bool)

(assert (=> d!923449 e!2052471))

(declare-fun res!1338614 () Bool)

(assert (=> d!923449 (=> res!1338614 e!2052471)))

(assert (=> d!923449 (= res!1338614 (isEmpty!20604 lt!1118418))))

(assert (=> d!923449 (= lt!1118418 e!2052474)))

(declare-fun c!559743 () Bool)

(assert (=> d!923449 (= c!559743 (and (is-Cons!36461 rules!2135) (= (tag!5831 (h!41881 rules!2135)) (tag!5831 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> d!923449 (rulesInvariant!4273 thiss!18206 rules!2135)))

(assert (=> d!923449 (= (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))) lt!1118418)))

(declare-fun b!3300272 () Bool)

(declare-fun lt!1118417 () Unit!51389)

(declare-fun lt!1118419 () Unit!51389)

(assert (=> b!3300272 (= lt!1118417 lt!1118419)))

(assert (=> b!3300272 (rulesInvariant!4273 thiss!18206 (t!252750 rules!2135))))

(assert (=> b!3300272 (= lt!1118419 (lemmaInvariantOnRulesThenOnTail!367 thiss!18206 (h!41881 rules!2135) (t!252750 rules!2135)))))

(assert (=> b!3300272 (= e!2052472 (getRuleFromTag!978 thiss!18206 (t!252750 rules!2135) (tag!5831 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun b!3300273 () Bool)

(assert (=> b!3300273 (= e!2052474 (Some!7269 (h!41881 rules!2135)))))

(assert (= (and d!923449 c!559743) b!3300273))

(assert (= (and d!923449 (not c!559743)) b!3300269))

(assert (= (and b!3300269 c!559742) b!3300272))

(assert (= (and b!3300269 (not c!559742)) b!3300268))

(assert (= (and d!923449 (not res!1338614)) b!3300270))

(assert (= (and b!3300270 res!1338615) b!3300271))

(declare-fun m!3623981 () Bool)

(assert (=> b!3300270 m!3623981))

(assert (=> b!3300270 m!3623981))

(declare-fun m!3623983 () Bool)

(assert (=> b!3300270 m!3623983))

(assert (=> b!3300271 m!3623981))

(declare-fun m!3623985 () Bool)

(assert (=> d!923449 m!3623985))

(assert (=> d!923449 m!3623567))

(assert (=> b!3300272 m!3623917))

(assert (=> b!3300272 m!3623919))

(declare-fun m!3623987 () Bool)

(assert (=> b!3300272 m!3623987))

(assert (=> b!3299954 d!923449))

(declare-fun d!923451 () Bool)

(assert (=> d!923451 (= (head!7120 lt!1118262) (h!41879 lt!1118262))))

(assert (=> b!3299954 d!923451))

(declare-fun b!3300334 () Bool)

(declare-fun res!1338654 () Bool)

(declare-fun e!2052501 () Bool)

(assert (=> b!3300334 (=> (not res!1338654) (not e!2052501))))

(declare-fun lt!1118454 () Option!7269)

(declare-fun get!11636 (Option!7269) tuple2!35956)

(assert (=> b!3300334 (= res!1338654 (= (value!171141 (_1!21112 (get!11636 lt!1118454))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454)))))))))

(declare-fun b!3300335 () Bool)

(declare-fun e!2052502 () Bool)

(assert (=> b!3300335 (= e!2052502 e!2052501)))

(declare-fun res!1338656 () Bool)

(assert (=> b!3300335 (=> (not res!1338656) (not e!2052501))))

(assert (=> b!3300335 (= res!1338656 (matchR!4668 (regex!5287 (rule!7785 (h!41880 tokens!494))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))))))

(declare-fun b!3300336 () Bool)

(declare-fun res!1338659 () Bool)

(assert (=> b!3300336 (=> (not res!1338659) (not e!2052501))))

(assert (=> b!3300336 (= res!1338659 (< (size!27531 (_2!21112 (get!11636 lt!1118454))) (size!27531 lt!1118263)))))

(declare-fun b!3300337 () Bool)

(declare-fun e!2052503 () Bool)

(declare-datatypes ((tuple2!35966 0))(
  ( (tuple2!35967 (_1!21117 List!36583) (_2!21117 List!36583)) )
))
(declare-fun findLongestMatchInner!848 (Regex!10046 List!36583 Int List!36583 List!36583 Int) tuple2!35966)

(assert (=> b!3300337 (= e!2052503 (matchR!4668 (regex!5287 (rule!7785 (h!41880 tokens!494))) (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))

(declare-fun b!3300338 () Bool)

(declare-fun e!2052504 () Option!7269)

(assert (=> b!3300338 (= e!2052504 None!7268)))

(declare-fun b!3300339 () Bool)

(declare-fun res!1338655 () Bool)

(assert (=> b!3300339 (=> (not res!1338655) (not e!2052501))))

(assert (=> b!3300339 (= res!1338655 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454)))) (_2!21112 (get!11636 lt!1118454))) lt!1118263))))

(declare-fun b!3300340 () Bool)

(declare-fun lt!1118455 () tuple2!35966)

(declare-fun size!27536 (BalanceConc!21512) Int)

(assert (=> b!3300340 (= e!2052504 (Some!7268 (tuple2!35957 (Token!9941 (apply!8365 (transformation!5287 (rule!7785 (h!41880 tokens!494))) (seqFromList!3638 (_1!21117 lt!1118455))) (rule!7785 (h!41880 tokens!494)) (size!27536 (seqFromList!3638 (_1!21117 lt!1118455))) (_1!21117 lt!1118455)) (_2!21117 lt!1118455))))))

(declare-fun lt!1118457 () Unit!51389)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!821 (Regex!10046 List!36583) Unit!51389)

(assert (=> b!3300340 (= lt!1118457 (longestMatchIsAcceptedByMatchOrIsEmpty!821 (regex!5287 (rule!7785 (h!41880 tokens!494))) lt!1118263))))

(declare-fun res!1338658 () Bool)

(assert (=> b!3300340 (= res!1338658 (isEmpty!20598 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))

(assert (=> b!3300340 (=> res!1338658 e!2052503)))

(assert (=> b!3300340 e!2052503))

(declare-fun lt!1118456 () Unit!51389)

(assert (=> b!3300340 (= lt!1118456 lt!1118457)))

(declare-fun lt!1118458 () Unit!51389)

(declare-fun lemmaSemiInverse!1194 (TokenValueInjection!10462 BalanceConc!21512) Unit!51389)

(assert (=> b!3300340 (= lt!1118458 (lemmaSemiInverse!1194 (transformation!5287 (rule!7785 (h!41880 tokens!494))) (seqFromList!3638 (_1!21117 lt!1118455))))))

(declare-fun d!923453 () Bool)

(assert (=> d!923453 e!2052502))

(declare-fun res!1338657 () Bool)

(assert (=> d!923453 (=> res!1338657 e!2052502)))

(declare-fun isEmpty!20606 (Option!7269) Bool)

(assert (=> d!923453 (= res!1338657 (isEmpty!20606 lt!1118454))))

(assert (=> d!923453 (= lt!1118454 e!2052504)))

(declare-fun c!559755 () Bool)

(assert (=> d!923453 (= c!559755 (isEmpty!20598 (_1!21117 lt!1118455)))))

(declare-fun findLongestMatch!763 (Regex!10046 List!36583) tuple2!35966)

(assert (=> d!923453 (= lt!1118455 (findLongestMatch!763 (regex!5287 (rule!7785 (h!41880 tokens!494))) lt!1118263))))

(declare-fun ruleValid!1669 (LexerInterface!4876 Rule!10374) Bool)

(assert (=> d!923453 (ruleValid!1669 thiss!18206 (rule!7785 (h!41880 tokens!494)))))

(assert (=> d!923453 (= (maxPrefixOneRule!1641 thiss!18206 (rule!7785 (h!41880 tokens!494)) lt!1118263) lt!1118454)))

(declare-fun b!3300341 () Bool)

(assert (=> b!3300341 (= e!2052501 (= (size!27530 (_1!21112 (get!11636 lt!1118454))) (size!27531 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454))))))))

(declare-fun b!3300342 () Bool)

(declare-fun res!1338660 () Bool)

(assert (=> b!3300342 (=> (not res!1338660) (not e!2052501))))

(assert (=> b!3300342 (= res!1338660 (= (rule!7785 (_1!21112 (get!11636 lt!1118454))) (rule!7785 (h!41880 tokens!494))))))

(assert (= (and d!923453 c!559755) b!3300338))

(assert (= (and d!923453 (not c!559755)) b!3300340))

(assert (= (and b!3300340 (not res!1338658)) b!3300337))

(assert (= (and d!923453 (not res!1338657)) b!3300335))

(assert (= (and b!3300335 res!1338656) b!3300339))

(assert (= (and b!3300339 res!1338655) b!3300336))

(assert (= (and b!3300336 res!1338659) b!3300342))

(assert (= (and b!3300342 res!1338660) b!3300334))

(assert (= (and b!3300334 res!1338654) b!3300341))

(declare-fun m!3624033 () Bool)

(assert (=> d!923453 m!3624033))

(declare-fun m!3624035 () Bool)

(assert (=> d!923453 m!3624035))

(declare-fun m!3624037 () Bool)

(assert (=> d!923453 m!3624037))

(declare-fun m!3624039 () Bool)

(assert (=> d!923453 m!3624039))

(declare-fun m!3624041 () Bool)

(assert (=> b!3300335 m!3624041))

(declare-fun m!3624043 () Bool)

(assert (=> b!3300335 m!3624043))

(assert (=> b!3300335 m!3624043))

(declare-fun m!3624045 () Bool)

(assert (=> b!3300335 m!3624045))

(assert (=> b!3300335 m!3624045))

(declare-fun m!3624047 () Bool)

(assert (=> b!3300335 m!3624047))

(assert (=> b!3300341 m!3624041))

(declare-fun m!3624049 () Bool)

(assert (=> b!3300341 m!3624049))

(declare-fun m!3624051 () Bool)

(assert (=> b!3300337 m!3624051))

(assert (=> b!3300337 m!3623543))

(assert (=> b!3300337 m!3624051))

(assert (=> b!3300337 m!3623543))

(declare-fun m!3624053 () Bool)

(assert (=> b!3300337 m!3624053))

(declare-fun m!3624055 () Bool)

(assert (=> b!3300337 m!3624055))

(assert (=> b!3300339 m!3624041))

(assert (=> b!3300339 m!3624043))

(assert (=> b!3300339 m!3624043))

(assert (=> b!3300339 m!3624045))

(assert (=> b!3300339 m!3624045))

(declare-fun m!3624057 () Bool)

(assert (=> b!3300339 m!3624057))

(assert (=> b!3300336 m!3624041))

(declare-fun m!3624059 () Bool)

(assert (=> b!3300336 m!3624059))

(assert (=> b!3300336 m!3623543))

(declare-fun m!3624061 () Bool)

(assert (=> b!3300340 m!3624061))

(declare-fun m!3624063 () Bool)

(assert (=> b!3300340 m!3624063))

(declare-fun m!3624065 () Bool)

(assert (=> b!3300340 m!3624065))

(declare-fun m!3624067 () Bool)

(assert (=> b!3300340 m!3624067))

(assert (=> b!3300340 m!3624051))

(assert (=> b!3300340 m!3623543))

(assert (=> b!3300340 m!3624053))

(assert (=> b!3300340 m!3623543))

(assert (=> b!3300340 m!3624063))

(declare-fun m!3624069 () Bool)

(assert (=> b!3300340 m!3624069))

(assert (=> b!3300340 m!3624063))

(assert (=> b!3300340 m!3624063))

(declare-fun m!3624071 () Bool)

(assert (=> b!3300340 m!3624071))

(assert (=> b!3300340 m!3624051))

(assert (=> b!3300334 m!3624041))

(declare-fun m!3624073 () Bool)

(assert (=> b!3300334 m!3624073))

(assert (=> b!3300334 m!3624073))

(declare-fun m!3624075 () Bool)

(assert (=> b!3300334 m!3624075))

(assert (=> b!3300342 m!3624041))

(assert (=> b!3299954 d!923453))

(declare-fun d!923459 () Bool)

(declare-fun res!1338665 () Bool)

(declare-fun e!2052509 () Bool)

(assert (=> d!923459 (=> res!1338665 e!2052509)))

(assert (=> d!923459 (= res!1338665 (is-Nil!36460 tokens!494))))

(assert (=> d!923459 (= (forall!7541 tokens!494 lambda!118850) e!2052509)))

(declare-fun b!3300347 () Bool)

(declare-fun e!2052510 () Bool)

(assert (=> b!3300347 (= e!2052509 e!2052510)))

(declare-fun res!1338666 () Bool)

(assert (=> b!3300347 (=> (not res!1338666) (not e!2052510))))

(assert (=> b!3300347 (= res!1338666 (dynLambda!14914 lambda!118850 (h!41880 tokens!494)))))

(declare-fun b!3300348 () Bool)

(assert (=> b!3300348 (= e!2052510 (forall!7541 (t!252749 tokens!494) lambda!118850))))

(assert (= (and d!923459 (not res!1338665)) b!3300347))

(assert (= (and b!3300347 res!1338666) b!3300348))

(declare-fun b_lambda!91967 () Bool)

(assert (=> (not b_lambda!91967) (not b!3300347)))

(assert (=> b!3300347 m!3623875))

(declare-fun m!3624077 () Bool)

(assert (=> b!3300348 m!3624077))

(assert (=> b!3299975 d!923459))

(declare-fun d!923461 () Bool)

(declare-fun list!13059 (Conc!10949) List!36583)

(assert (=> d!923461 (= (list!13054 lt!1118268) (list!13059 (c!559681 lt!1118268)))))

(declare-fun bs!548561 () Bool)

(assert (= bs!548561 d!923461))

(declare-fun m!3624079 () Bool)

(assert (=> bs!548561 m!3624079))

(assert (=> b!3299956 d!923461))

(declare-fun d!923463 () Bool)

(declare-fun lt!1118469 () BalanceConc!21512)

(assert (=> d!923463 (= (list!13054 lt!1118469) (printList!1426 thiss!18206 (list!13055 lt!1118277)))))

(assert (=> d!923463 (= lt!1118469 (printTailRec!1373 thiss!18206 lt!1118277 0 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!923463 (= (print!1941 thiss!18206 lt!1118277) lt!1118469)))

(declare-fun bs!548563 () Bool)

(assert (= bs!548563 d!923463))

(declare-fun m!3624101 () Bool)

(assert (=> bs!548563 m!3624101))

(declare-fun m!3624107 () Bool)

(assert (=> bs!548563 m!3624107))

(assert (=> bs!548563 m!3624107))

(declare-fun m!3624111 () Bool)

(assert (=> bs!548563 m!3624111))

(assert (=> bs!548563 m!3623665))

(assert (=> b!3299956 d!923463))

(declare-fun d!923467 () Bool)

(declare-fun lt!1118484 () BalanceConc!21512)

(declare-fun printListTailRec!590 (LexerInterface!4876 List!36584 List!36583) List!36583)

(declare-fun dropList!1107 (BalanceConc!21514 Int) List!36584)

(assert (=> d!923467 (= (list!13054 lt!1118484) (printListTailRec!590 thiss!18206 (dropList!1107 lt!1118277 0) (list!13054 (BalanceConc!21513 Empty!10949))))))

(declare-fun e!2052522 () BalanceConc!21512)

(assert (=> d!923467 (= lt!1118484 e!2052522)))

(declare-fun c!559759 () Bool)

(declare-fun size!27538 (BalanceConc!21514) Int)

(assert (=> d!923467 (= c!559759 (>= 0 (size!27538 lt!1118277)))))

(declare-fun e!2052521 () Bool)

(assert (=> d!923467 e!2052521))

(declare-fun res!1338679 () Bool)

(assert (=> d!923467 (=> (not res!1338679) (not e!2052521))))

(assert (=> d!923467 (= res!1338679 (>= 0 0))))

(assert (=> d!923467 (= (printTailRec!1373 thiss!18206 lt!1118277 0 (BalanceConc!21513 Empty!10949)) lt!1118484)))

(declare-fun b!3300367 () Bool)

(assert (=> b!3300367 (= e!2052521 (<= 0 (size!27538 lt!1118277)))))

(declare-fun b!3300368 () Bool)

(assert (=> b!3300368 (= e!2052522 (BalanceConc!21513 Empty!10949))))

(declare-fun b!3300369 () Bool)

(declare-fun ++!8817 (BalanceConc!21512 BalanceConc!21512) BalanceConc!21512)

(declare-fun apply!8367 (BalanceConc!21514 Int) Token!9940)

(assert (=> b!3300369 (= e!2052522 (printTailRec!1373 thiss!18206 lt!1118277 (+ 0 1) (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 lt!1118277 0)))))))

(declare-fun lt!1118486 () List!36584)

(assert (=> b!3300369 (= lt!1118486 (list!13055 lt!1118277))))

(declare-fun lt!1118490 () Unit!51389)

(declare-fun lemmaDropApply!1066 (List!36584 Int) Unit!51389)

(assert (=> b!3300369 (= lt!1118490 (lemmaDropApply!1066 lt!1118486 0))))

(declare-fun head!7122 (List!36584) Token!9940)

(declare-fun drop!1898 (List!36584 Int) List!36584)

(declare-fun apply!8368 (List!36584 Int) Token!9940)

(assert (=> b!3300369 (= (head!7122 (drop!1898 lt!1118486 0)) (apply!8368 lt!1118486 0))))

(declare-fun lt!1118485 () Unit!51389)

(assert (=> b!3300369 (= lt!1118485 lt!1118490)))

(declare-fun lt!1118487 () List!36584)

(assert (=> b!3300369 (= lt!1118487 (list!13055 lt!1118277))))

(declare-fun lt!1118488 () Unit!51389)

(declare-fun lemmaDropTail!950 (List!36584 Int) Unit!51389)

(assert (=> b!3300369 (= lt!1118488 (lemmaDropTail!950 lt!1118487 0))))

(declare-fun tail!5259 (List!36584) List!36584)

(assert (=> b!3300369 (= (tail!5259 (drop!1898 lt!1118487 0)) (drop!1898 lt!1118487 (+ 0 1)))))

(declare-fun lt!1118489 () Unit!51389)

(assert (=> b!3300369 (= lt!1118489 lt!1118488)))

(assert (= (and d!923467 res!1338679) b!3300367))

(assert (= (and d!923467 c!559759) b!3300368))

(assert (= (and d!923467 (not c!559759)) b!3300369))

(declare-fun m!3624127 () Bool)

(assert (=> d!923467 m!3624127))

(declare-fun m!3624129 () Bool)

(assert (=> d!923467 m!3624129))

(declare-fun m!3624131 () Bool)

(assert (=> d!923467 m!3624131))

(declare-fun m!3624133 () Bool)

(assert (=> d!923467 m!3624133))

(declare-fun m!3624135 () Bool)

(assert (=> d!923467 m!3624135))

(assert (=> d!923467 m!3624131))

(assert (=> d!923467 m!3624129))

(assert (=> b!3300367 m!3624135))

(assert (=> b!3300369 m!3624107))

(declare-fun m!3624137 () Bool)

(assert (=> b!3300369 m!3624137))

(declare-fun m!3624139 () Bool)

(assert (=> b!3300369 m!3624139))

(declare-fun m!3624141 () Bool)

(assert (=> b!3300369 m!3624141))

(declare-fun m!3624143 () Bool)

(assert (=> b!3300369 m!3624143))

(declare-fun m!3624145 () Bool)

(assert (=> b!3300369 m!3624145))

(assert (=> b!3300369 m!3624139))

(declare-fun m!3624147 () Bool)

(assert (=> b!3300369 m!3624147))

(assert (=> b!3300369 m!3624147))

(assert (=> b!3300369 m!3624141))

(declare-fun m!3624149 () Bool)

(assert (=> b!3300369 m!3624149))

(declare-fun m!3624151 () Bool)

(assert (=> b!3300369 m!3624151))

(declare-fun m!3624153 () Bool)

(assert (=> b!3300369 m!3624153))

(assert (=> b!3300369 m!3624151))

(declare-fun m!3624155 () Bool)

(assert (=> b!3300369 m!3624155))

(assert (=> b!3300369 m!3624145))

(declare-fun m!3624157 () Bool)

(assert (=> b!3300369 m!3624157))

(declare-fun m!3624159 () Bool)

(assert (=> b!3300369 m!3624159))

(assert (=> b!3299956 d!923467))

(declare-fun d!923475 () Bool)

(declare-fun e!2052525 () Bool)

(assert (=> d!923475 e!2052525))

(declare-fun res!1338682 () Bool)

(assert (=> d!923475 (=> (not res!1338682) (not e!2052525))))

(declare-fun lt!1118493 () BalanceConc!21514)

(assert (=> d!923475 (= res!1338682 (= (list!13055 lt!1118493) (Cons!36460 (h!41880 tokens!494) Nil!36460)))))

(declare-fun singleton!1023 (Token!9940) BalanceConc!21514)

(assert (=> d!923475 (= lt!1118493 (singleton!1023 (h!41880 tokens!494)))))

(assert (=> d!923475 (= (singletonSeq!2383 (h!41880 tokens!494)) lt!1118493)))

(declare-fun b!3300372 () Bool)

(declare-fun isBalanced!3268 (Conc!10950) Bool)

(assert (=> b!3300372 (= e!2052525 (isBalanced!3268 (c!559682 lt!1118493)))))

(assert (= (and d!923475 res!1338682) b!3300372))

(declare-fun m!3624161 () Bool)

(assert (=> d!923475 m!3624161))

(declare-fun m!3624163 () Bool)

(assert (=> d!923475 m!3624163))

(declare-fun m!3624165 () Bool)

(assert (=> b!3300372 m!3624165))

(assert (=> b!3299956 d!923475))

(declare-fun d!923477 () Bool)

(declare-fun c!559762 () Bool)

(assert (=> d!923477 (= c!559762 (is-Cons!36460 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))

(declare-fun e!2052528 () List!36583)

(assert (=> d!923477 (= (printList!1426 thiss!18206 (Cons!36460 (h!41880 tokens!494) Nil!36460)) e!2052528)))

(declare-fun b!3300377 () Bool)

(assert (=> b!3300377 (= e!2052528 (++!8815 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))) (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))))

(declare-fun b!3300378 () Bool)

(assert (=> b!3300378 (= e!2052528 Nil!36459)))

(assert (= (and d!923477 c!559762) b!3300377))

(assert (= (and d!923477 (not c!559762)) b!3300378))

(declare-fun m!3624167 () Bool)

(assert (=> b!3300377 m!3624167))

(assert (=> b!3300377 m!3624167))

(declare-fun m!3624169 () Bool)

(assert (=> b!3300377 m!3624169))

(declare-fun m!3624171 () Bool)

(assert (=> b!3300377 m!3624171))

(assert (=> b!3300377 m!3624169))

(assert (=> b!3300377 m!3624171))

(declare-fun m!3624173 () Bool)

(assert (=> b!3300377 m!3624173))

(assert (=> b!3299956 d!923477))

(declare-fun d!923479 () Bool)

(assert (=> d!923479 (= (inv!49407 (tag!5831 (rule!7785 (h!41880 tokens!494)))) (= (mod (str.len (value!171140 (tag!5831 (rule!7785 (h!41880 tokens!494))))) 2) 0))))

(assert (=> b!3299957 d!923479))

(declare-fun d!923481 () Bool)

(declare-fun res!1338685 () Bool)

(declare-fun e!2052531 () Bool)

(assert (=> d!923481 (=> (not res!1338685) (not e!2052531))))

(declare-fun semiInverseModEq!2184 (Int Int) Bool)

(assert (=> d!923481 (= res!1338685 (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> d!923481 (= (inv!49411 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) e!2052531)))

(declare-fun b!3300381 () Bool)

(declare-fun equivClasses!2083 (Int Int) Bool)

(assert (=> b!3300381 (= e!2052531 (equivClasses!2083 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))))))

(assert (= (and d!923481 res!1338685) b!3300381))

(declare-fun m!3624175 () Bool)

(assert (=> d!923481 m!3624175))

(declare-fun m!3624177 () Bool)

(assert (=> b!3300381 m!3624177))

(assert (=> b!3299957 d!923481))

(declare-fun b!3300382 () Bool)

(declare-fun e!2052533 () Bool)

(assert (=> b!3300382 (= e!2052533 (nullable!3415 (regex!5287 lt!1118261)))))

(declare-fun b!3300383 () Bool)

(declare-fun res!1338692 () Bool)

(declare-fun e!2052537 () Bool)

(assert (=> b!3300383 (=> (not res!1338692) (not e!2052537))))

(declare-fun call!239926 () Bool)

(assert (=> b!3300383 (= res!1338692 (not call!239926))))

(declare-fun b!3300384 () Bool)

(assert (=> b!3300384 (= e!2052533 (matchR!4668 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262)) (tail!5258 lt!1118262)))))

(declare-fun b!3300385 () Bool)

(declare-fun e!2052535 () Bool)

(declare-fun e!2052538 () Bool)

(assert (=> b!3300385 (= e!2052535 e!2052538)))

(declare-fun c!559765 () Bool)

(assert (=> b!3300385 (= c!559765 (is-EmptyLang!10046 (regex!5287 lt!1118261)))))

(declare-fun d!923483 () Bool)

(assert (=> d!923483 e!2052535))

(declare-fun c!559764 () Bool)

(assert (=> d!923483 (= c!559764 (is-EmptyExpr!10046 (regex!5287 lt!1118261)))))

(declare-fun lt!1118494 () Bool)

(assert (=> d!923483 (= lt!1118494 e!2052533)))

(declare-fun c!559763 () Bool)

(assert (=> d!923483 (= c!559763 (isEmpty!20598 lt!1118262))))

(assert (=> d!923483 (validRegex!4571 (regex!5287 lt!1118261))))

(assert (=> d!923483 (= (matchR!4668 (regex!5287 lt!1118261) lt!1118262) lt!1118494)))

(declare-fun b!3300386 () Bool)

(declare-fun e!2052532 () Bool)

(assert (=> b!3300386 (= e!2052532 (not (= (head!7120 lt!1118262) (c!559680 (regex!5287 lt!1118261)))))))

(declare-fun b!3300387 () Bool)

(declare-fun res!1338688 () Bool)

(declare-fun e!2052536 () Bool)

(assert (=> b!3300387 (=> res!1338688 e!2052536)))

(assert (=> b!3300387 (= res!1338688 (not (is-ElementMatch!10046 (regex!5287 lt!1118261))))))

(assert (=> b!3300387 (= e!2052538 e!2052536)))

(declare-fun b!3300388 () Bool)

(declare-fun res!1338686 () Bool)

(assert (=> b!3300388 (=> (not res!1338686) (not e!2052537))))

(assert (=> b!3300388 (= res!1338686 (isEmpty!20598 (tail!5258 lt!1118262)))))

(declare-fun b!3300389 () Bool)

(declare-fun res!1338687 () Bool)

(assert (=> b!3300389 (=> res!1338687 e!2052536)))

(assert (=> b!3300389 (= res!1338687 e!2052537)))

(declare-fun res!1338689 () Bool)

(assert (=> b!3300389 (=> (not res!1338689) (not e!2052537))))

(assert (=> b!3300389 (= res!1338689 lt!1118494)))

(declare-fun b!3300390 () Bool)

(assert (=> b!3300390 (= e!2052535 (= lt!1118494 call!239926))))

(declare-fun bm!239921 () Bool)

(assert (=> bm!239921 (= call!239926 (isEmpty!20598 lt!1118262))))

(declare-fun b!3300391 () Bool)

(assert (=> b!3300391 (= e!2052537 (= (head!7120 lt!1118262) (c!559680 (regex!5287 lt!1118261))))))

(declare-fun b!3300392 () Bool)

(declare-fun e!2052534 () Bool)

(assert (=> b!3300392 (= e!2052536 e!2052534)))

(declare-fun res!1338690 () Bool)

(assert (=> b!3300392 (=> (not res!1338690) (not e!2052534))))

(assert (=> b!3300392 (= res!1338690 (not lt!1118494))))

(declare-fun b!3300393 () Bool)

(declare-fun res!1338693 () Bool)

(assert (=> b!3300393 (=> res!1338693 e!2052532)))

(assert (=> b!3300393 (= res!1338693 (not (isEmpty!20598 (tail!5258 lt!1118262))))))

(declare-fun b!3300394 () Bool)

(assert (=> b!3300394 (= e!2052538 (not lt!1118494))))

(declare-fun b!3300395 () Bool)

(assert (=> b!3300395 (= e!2052534 e!2052532)))

(declare-fun res!1338691 () Bool)

(assert (=> b!3300395 (=> res!1338691 e!2052532)))

(assert (=> b!3300395 (= res!1338691 call!239926)))

(assert (= (and d!923483 c!559763) b!3300382))

(assert (= (and d!923483 (not c!559763)) b!3300384))

(assert (= (and d!923483 c!559764) b!3300390))

(assert (= (and d!923483 (not c!559764)) b!3300385))

(assert (= (and b!3300385 c!559765) b!3300394))

(assert (= (and b!3300385 (not c!559765)) b!3300387))

(assert (= (and b!3300387 (not res!1338688)) b!3300389))

(assert (= (and b!3300389 res!1338689) b!3300383))

(assert (= (and b!3300383 res!1338692) b!3300388))

(assert (= (and b!3300388 res!1338686) b!3300391))

(assert (= (and b!3300389 (not res!1338687)) b!3300392))

(assert (= (and b!3300392 res!1338690) b!3300395))

(assert (= (and b!3300395 (not res!1338691)) b!3300393))

(assert (= (and b!3300393 (not res!1338693)) b!3300386))

(assert (= (or b!3300390 b!3300383 b!3300395) bm!239921))

(declare-fun m!3624179 () Bool)

(assert (=> b!3300388 m!3624179))

(assert (=> b!3300388 m!3624179))

(declare-fun m!3624181 () Bool)

(assert (=> b!3300388 m!3624181))

(declare-fun m!3624183 () Bool)

(assert (=> b!3300382 m!3624183))

(declare-fun m!3624185 () Bool)

(assert (=> bm!239921 m!3624185))

(assert (=> b!3300384 m!3623557))

(assert (=> b!3300384 m!3623557))

(declare-fun m!3624187 () Bool)

(assert (=> b!3300384 m!3624187))

(assert (=> b!3300384 m!3624179))

(assert (=> b!3300384 m!3624187))

(assert (=> b!3300384 m!3624179))

(declare-fun m!3624189 () Bool)

(assert (=> b!3300384 m!3624189))

(assert (=> b!3300386 m!3623557))

(assert (=> b!3300391 m!3623557))

(assert (=> b!3300393 m!3624179))

(assert (=> b!3300393 m!3624179))

(assert (=> b!3300393 m!3624181))

(assert (=> d!923483 m!3624185))

(declare-fun m!3624191 () Bool)

(assert (=> d!923483 m!3624191))

(assert (=> b!3299958 d!923483))

(declare-fun d!923485 () Bool)

(assert (=> d!923485 (= (get!11634 lt!1118272) (v!36015 lt!1118272))))

(assert (=> b!3299958 d!923485))

(declare-fun d!923487 () Bool)

(assert (=> d!923487 (= (isEmpty!20599 (filter!527 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))) lambda!118850)) (is-Nil!36460 (filter!527 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))) lambda!118850)))))

(assert (=> b!3299960 d!923487))

(declare-fun b!3300408 () Bool)

(declare-fun e!2052545 () List!36584)

(assert (=> b!3300408 (= e!2052545 Nil!36460)))

(declare-fun b!3300409 () Bool)

(declare-fun e!2052546 () Bool)

(declare-fun lt!1118497 () List!36584)

(assert (=> b!3300409 (= e!2052546 (forall!7541 lt!1118497 lambda!118850))))

(declare-fun b!3300410 () Bool)

(declare-fun e!2052547 () List!36584)

(declare-fun call!239929 () List!36584)

(assert (=> b!3300410 (= e!2052547 call!239929)))

(declare-fun b!3300411 () Bool)

(assert (=> b!3300411 (= e!2052545 e!2052547)))

(declare-fun c!559770 () Bool)

(assert (=> b!3300411 (= c!559770 (dynLambda!14914 lambda!118850 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))))))

(declare-fun b!3300412 () Bool)

(assert (=> b!3300412 (= e!2052547 (Cons!36460 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))) call!239929))))

(declare-fun d!923489 () Bool)

(assert (=> d!923489 e!2052546))

(declare-fun res!1338699 () Bool)

(assert (=> d!923489 (=> (not res!1338699) (not e!2052546))))

(declare-fun size!27539 (List!36584) Int)

(assert (=> d!923489 (= res!1338699 (<= (size!27539 lt!1118497) (size!27539 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))))))

(assert (=> d!923489 (= lt!1118497 e!2052545)))

(declare-fun c!559771 () Bool)

(assert (=> d!923489 (= c!559771 (is-Nil!36460 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))

(assert (=> d!923489 (= (filter!527 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))) lambda!118850) lt!1118497)))

(declare-fun bm!239924 () Bool)

(assert (=> bm!239924 (= call!239929 (filter!527 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))) lambda!118850))))

(declare-fun b!3300413 () Bool)

(declare-fun res!1338698 () Bool)

(assert (=> b!3300413 (=> (not res!1338698) (not e!2052546))))

(declare-fun content!4959 (List!36584) (Set Token!9940))

(assert (=> b!3300413 (= res!1338698 (set.subset (content!4959 lt!1118497) (content!4959 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))))))

(assert (= (and d!923489 c!559771) b!3300408))

(assert (= (and d!923489 (not c!559771)) b!3300411))

(assert (= (and b!3300411 c!559770) b!3300412))

(assert (= (and b!3300411 (not c!559770)) b!3300410))

(assert (= (or b!3300412 b!3300410) bm!239924))

(assert (= (and d!923489 res!1338699) b!3300413))

(assert (= (and b!3300413 res!1338698) b!3300409))

(declare-fun b_lambda!91969 () Bool)

(assert (=> (not b_lambda!91969) (not b!3300411)))

(declare-fun m!3624193 () Bool)

(assert (=> d!923489 m!3624193))

(declare-fun m!3624195 () Bool)

(assert (=> d!923489 m!3624195))

(declare-fun m!3624197 () Bool)

(assert (=> b!3300411 m!3624197))

(declare-fun m!3624199 () Bool)

(assert (=> bm!239924 m!3624199))

(declare-fun m!3624201 () Bool)

(assert (=> b!3300409 m!3624201))

(declare-fun m!3624203 () Bool)

(assert (=> b!3300413 m!3624203))

(declare-fun m!3624205 () Bool)

(assert (=> b!3300413 m!3624205))

(assert (=> b!3299960 d!923489))

(declare-fun b!3300424 () Bool)

(declare-fun e!2052556 () tuple2!35954)

(assert (=> b!3300424 (= e!2052556 (tuple2!35955 Nil!36460 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(declare-fun b!3300426 () Bool)

(declare-fun lt!1118504 () Option!7269)

(declare-fun lt!1118506 () tuple2!35954)

(assert (=> b!3300426 (= e!2052556 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118504)) (_1!21111 lt!1118506)) (_2!21111 lt!1118506)))))

(assert (=> b!3300426 (= lt!1118506 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118504))))))

(declare-fun lt!1118505 () tuple2!35954)

(declare-fun e!2052554 () Bool)

(declare-fun b!3300427 () Bool)

(assert (=> b!3300427 (= e!2052554 (= (_2!21111 lt!1118505) (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(declare-fun b!3300428 () Bool)

(declare-fun e!2052555 () Bool)

(assert (=> b!3300428 (= e!2052554 e!2052555)))

(declare-fun res!1338702 () Bool)

(assert (=> b!3300428 (= res!1338702 (< (size!27531 (_2!21111 lt!1118505)) (size!27531 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))))

(assert (=> b!3300428 (=> (not res!1338702) (not e!2052555))))

(declare-fun b!3300425 () Bool)

(assert (=> b!3300425 (= e!2052555 (not (isEmpty!20599 (_1!21111 lt!1118505))))))

(declare-fun d!923491 () Bool)

(assert (=> d!923491 e!2052554))

(declare-fun c!559776 () Bool)

(assert (=> d!923491 (= c!559776 (> (size!27539 (_1!21111 lt!1118505)) 0))))

(assert (=> d!923491 (= lt!1118505 e!2052556)))

(declare-fun c!559777 () Bool)

(assert (=> d!923491 (= c!559777 (is-Some!7268 lt!1118504))))

(assert (=> d!923491 (= lt!1118504 (maxPrefix!2504 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(assert (=> d!923491 (= (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)) lt!1118505)))

(assert (= (and d!923491 c!559777) b!3300426))

(assert (= (and d!923491 (not c!559777)) b!3300424))

(assert (= (and d!923491 c!559776) b!3300428))

(assert (= (and d!923491 (not c!559776)) b!3300427))

(assert (= (and b!3300428 res!1338702) b!3300425))

(declare-fun m!3624207 () Bool)

(assert (=> b!3300426 m!3624207))

(declare-fun m!3624209 () Bool)

(assert (=> b!3300428 m!3624209))

(assert (=> b!3300428 m!3623521))

(declare-fun m!3624211 () Bool)

(assert (=> b!3300428 m!3624211))

(declare-fun m!3624213 () Bool)

(assert (=> b!3300425 m!3624213))

(declare-fun m!3624215 () Bool)

(assert (=> d!923491 m!3624215))

(assert (=> d!923491 m!3623521))

(declare-fun m!3624217 () Bool)

(assert (=> d!923491 m!3624217))

(assert (=> b!3299960 d!923491))

(declare-fun d!923493 () Bool)

(declare-fun c!559780 () Bool)

(assert (=> d!923493 (= c!559780 (is-Cons!36460 Nil!36460))))

(declare-fun e!2052559 () List!36583)

(assert (=> d!923493 (= (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241) e!2052559)))

(declare-fun b!3300433 () Bool)

(assert (=> b!3300433 (= e!2052559 (++!8815 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 Nil!36460) separatorToken!241)))))

(declare-fun b!3300434 () Bool)

(assert (=> b!3300434 (= e!2052559 Nil!36459)))

(assert (= (and d!923493 c!559780) b!3300433))

(assert (= (and d!923493 (not c!559780)) b!3300434))

(declare-fun m!3624219 () Bool)

(assert (=> b!3300433 m!3624219))

(assert (=> b!3300433 m!3623619))

(assert (=> b!3300433 m!3623623))

(declare-fun m!3624221 () Bool)

(assert (=> b!3300433 m!3624221))

(declare-fun m!3624223 () Bool)

(assert (=> b!3300433 m!3624223))

(declare-fun m!3624225 () Bool)

(assert (=> b!3300433 m!3624225))

(assert (=> b!3300433 m!3624219))

(declare-fun m!3624227 () Bool)

(assert (=> b!3300433 m!3624227))

(assert (=> b!3300433 m!3624221))

(assert (=> b!3300433 m!3624223))

(assert (=> b!3300433 m!3623623))

(assert (=> b!3300433 m!3624225))

(assert (=> b!3300433 m!3623619))

(assert (=> b!3299960 d!923493))

(declare-fun b!3300445 () Bool)

(declare-fun e!2052568 () Bool)

(declare-fun e!2052567 () Bool)

(assert (=> b!3300445 (= e!2052568 e!2052567)))

(declare-fun c!559786 () Bool)

(assert (=> b!3300445 (= c!559786 (is-IntegerValue!16552 (value!171141 separatorToken!241)))))

(declare-fun b!3300446 () Bool)

(declare-fun inv!16 (TokenValue!5517) Bool)

(assert (=> b!3300446 (= e!2052568 (inv!16 (value!171141 separatorToken!241)))))

(declare-fun b!3300447 () Bool)

(declare-fun res!1338705 () Bool)

(declare-fun e!2052566 () Bool)

(assert (=> b!3300447 (=> res!1338705 e!2052566)))

(assert (=> b!3300447 (= res!1338705 (not (is-IntegerValue!16553 (value!171141 separatorToken!241))))))

(assert (=> b!3300447 (= e!2052567 e!2052566)))

(declare-fun d!923495 () Bool)

(declare-fun c!559785 () Bool)

(assert (=> d!923495 (= c!559785 (is-IntegerValue!16551 (value!171141 separatorToken!241)))))

(assert (=> d!923495 (= (inv!21 (value!171141 separatorToken!241)) e!2052568)))

(declare-fun b!3300448 () Bool)

(declare-fun inv!15 (TokenValue!5517) Bool)

(assert (=> b!3300448 (= e!2052566 (inv!15 (value!171141 separatorToken!241)))))

(declare-fun b!3300449 () Bool)

(declare-fun inv!17 (TokenValue!5517) Bool)

(assert (=> b!3300449 (= e!2052567 (inv!17 (value!171141 separatorToken!241)))))

(assert (= (and d!923495 c!559785) b!3300446))

(assert (= (and d!923495 (not c!559785)) b!3300445))

(assert (= (and b!3300445 c!559786) b!3300449))

(assert (= (and b!3300445 (not c!559786)) b!3300447))

(assert (= (and b!3300447 (not res!1338705)) b!3300448))

(declare-fun m!3624229 () Bool)

(assert (=> b!3300446 m!3624229))

(declare-fun m!3624231 () Bool)

(assert (=> b!3300448 m!3624231))

(declare-fun m!3624233 () Bool)

(assert (=> b!3300449 m!3624233))

(assert (=> b!3299938 d!923495))

(declare-fun d!923497 () Bool)

(declare-fun res!1338710 () Bool)

(declare-fun e!2052573 () Bool)

(assert (=> d!923497 (=> res!1338710 e!2052573)))

(assert (=> d!923497 (= res!1338710 (not (is-Cons!36461 rules!2135)))))

(assert (=> d!923497 (= (sepAndNonSepRulesDisjointChars!1481 rules!2135 rules!2135) e!2052573)))

(declare-fun b!3300454 () Bool)

(declare-fun e!2052574 () Bool)

(assert (=> b!3300454 (= e!2052573 e!2052574)))

(declare-fun res!1338711 () Bool)

(assert (=> b!3300454 (=> (not res!1338711) (not e!2052574))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!620 (Rule!10374 List!36585) Bool)

(assert (=> b!3300454 (= res!1338711 (ruleDisjointCharsFromAllFromOtherType!620 (h!41881 rules!2135) rules!2135))))

(declare-fun b!3300455 () Bool)

(assert (=> b!3300455 (= e!2052574 (sepAndNonSepRulesDisjointChars!1481 rules!2135 (t!252750 rules!2135)))))

(assert (= (and d!923497 (not res!1338710)) b!3300454))

(assert (= (and b!3300454 res!1338711) b!3300455))

(declare-fun m!3624235 () Bool)

(assert (=> b!3300454 m!3624235))

(declare-fun m!3624237 () Bool)

(assert (=> b!3300455 m!3624237))

(assert (=> b!3299959 d!923497))

(declare-fun bs!548568 () Bool)

(declare-fun d!923499 () Bool)

(assert (= bs!548568 (and d!923499 b!3299975)))

(declare-fun lambda!118873 () Int)

(assert (=> bs!548568 (not (= lambda!118873 lambda!118850))))

(declare-fun b!3300511 () Bool)

(declare-fun e!2052613 () Bool)

(assert (=> b!3300511 (= e!2052613 true)))

(declare-fun b!3300510 () Bool)

(declare-fun e!2052612 () Bool)

(assert (=> b!3300510 (= e!2052612 e!2052613)))

(declare-fun b!3300509 () Bool)

(declare-fun e!2052611 () Bool)

(assert (=> b!3300509 (= e!2052611 e!2052612)))

(assert (=> d!923499 e!2052611))

(assert (= b!3300510 b!3300511))

(assert (= b!3300509 b!3300510))

(assert (= (and d!923499 (is-Cons!36461 rules!2135)) b!3300509))

(declare-fun order!18901 () Int)

(declare-fun order!18903 () Int)

(declare-fun dynLambda!14921 (Int Int) Int)

(declare-fun dynLambda!14922 (Int Int) Int)

(assert (=> b!3300511 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (h!41881 rules!2135)))) (dynLambda!14922 order!18903 lambda!118873))))

(declare-fun order!18905 () Int)

(declare-fun dynLambda!14923 (Int Int) Int)

(assert (=> b!3300511 (< (dynLambda!14923 order!18905 (toChars!7274 (transformation!5287 (h!41881 rules!2135)))) (dynLambda!14922 order!18903 lambda!118873))))

(assert (=> d!923499 true))

(declare-fun e!2052604 () Bool)

(assert (=> d!923499 e!2052604))

(declare-fun res!1338729 () Bool)

(assert (=> d!923499 (=> (not res!1338729) (not e!2052604))))

(declare-fun lt!1118522 () Bool)

(assert (=> d!923499 (= res!1338729 (= lt!1118522 (forall!7541 (list!13055 lt!1118251) lambda!118873)))))

(declare-fun forall!7544 (BalanceConc!21514 Int) Bool)

(assert (=> d!923499 (= lt!1118522 (forall!7544 lt!1118251 lambda!118873))))

(assert (=> d!923499 (not (isEmpty!20596 rules!2135))))

(assert (=> d!923499 (= (rulesProduceEachTokenIndividually!1327 thiss!18206 rules!2135 lt!1118251) lt!1118522)))

(declare-fun b!3300500 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1757 (LexerInterface!4876 List!36585 List!36584) Bool)

(assert (=> b!3300500 (= e!2052604 (= lt!1118522 (rulesProduceEachTokenIndividuallyList!1757 thiss!18206 rules!2135 (list!13055 lt!1118251))))))

(assert (= (and d!923499 res!1338729) b!3300500))

(declare-fun m!3624297 () Bool)

(assert (=> d!923499 m!3624297))

(assert (=> d!923499 m!3624297))

(declare-fun m!3624299 () Bool)

(assert (=> d!923499 m!3624299))

(declare-fun m!3624301 () Bool)

(assert (=> d!923499 m!3624301))

(assert (=> d!923499 m!3623515))

(assert (=> b!3300500 m!3624297))

(assert (=> b!3300500 m!3624297))

(declare-fun m!3624303 () Bool)

(assert (=> b!3300500 m!3624303))

(assert (=> b!3299940 d!923499))

(declare-fun d!923517 () Bool)

(declare-fun fromListB!1595 (List!36584) BalanceConc!21514)

(assert (=> d!923517 (= (seqFromList!3637 tokens!494) (fromListB!1595 tokens!494))))

(declare-fun bs!548569 () Bool)

(assert (= bs!548569 d!923517))

(declare-fun m!3624305 () Bool)

(assert (=> bs!548569 m!3624305))

(assert (=> b!3299940 d!923517))

(declare-fun b!3300514 () Bool)

(declare-fun e!2052614 () List!36583)

(declare-fun call!239935 () List!36583)

(assert (=> b!3300514 (= e!2052614 call!239935)))

(declare-fun b!3300515 () Bool)

(declare-fun c!559796 () Bool)

(assert (=> b!3300515 (= c!559796 (is-Star!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun e!2052617 () List!36583)

(declare-fun e!2052616 () List!36583)

(assert (=> b!3300515 (= e!2052617 e!2052616)))

(declare-fun b!3300516 () Bool)

(assert (=> b!3300516 (= e!2052614 call!239935)))

(declare-fun b!3300517 () Bool)

(declare-fun call!239936 () List!36583)

(assert (=> b!3300517 (= e!2052616 call!239936)))

(declare-fun bm!239928 () Bool)

(declare-fun call!239934 () List!36583)

(assert (=> bm!239928 (= call!239934 call!239936)))

(declare-fun d!923519 () Bool)

(declare-fun c!559794 () Bool)

(assert (=> d!923519 (= c!559794 (or (is-EmptyExpr!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (is-EmptyLang!10046 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(declare-fun e!2052615 () List!36583)

(assert (=> d!923519 (= (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))) e!2052615)))

(declare-fun b!3300518 () Bool)

(assert (=> b!3300518 (= e!2052616 e!2052614)))

(declare-fun c!559795 () Bool)

(assert (=> b!3300518 (= c!559795 (is-Union!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun bm!239929 () Bool)

(declare-fun call!239933 () List!36583)

(assert (=> bm!239929 (= call!239933 (usedCharacters!589 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun b!3300519 () Bool)

(assert (=> b!3300519 (= e!2052617 (Cons!36459 (c!559680 (regex!5287 (rule!7785 (h!41880 tokens!494)))) Nil!36459))))

(declare-fun bm!239930 () Bool)

(assert (=> bm!239930 (= call!239935 (++!8815 (ite c!559795 call!239934 call!239933) (ite c!559795 call!239933 call!239934)))))

(declare-fun bm!239931 () Bool)

(assert (=> bm!239931 (= call!239936 (usedCharacters!589 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun b!3300520 () Bool)

(assert (=> b!3300520 (= e!2052615 e!2052617)))

(declare-fun c!559797 () Bool)

(assert (=> b!3300520 (= c!559797 (is-ElementMatch!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun b!3300521 () Bool)

(assert (=> b!3300521 (= e!2052615 Nil!36459)))

(assert (= (and d!923519 c!559794) b!3300521))

(assert (= (and d!923519 (not c!559794)) b!3300520))

(assert (= (and b!3300520 c!559797) b!3300519))

(assert (= (and b!3300520 (not c!559797)) b!3300515))

(assert (= (and b!3300515 c!559796) b!3300517))

(assert (= (and b!3300515 (not c!559796)) b!3300518))

(assert (= (and b!3300518 c!559795) b!3300516))

(assert (= (and b!3300518 (not c!559795)) b!3300514))

(assert (= (or b!3300516 b!3300514) bm!239929))

(assert (= (or b!3300516 b!3300514) bm!239928))

(assert (= (or b!3300516 b!3300514) bm!239930))

(assert (= (or b!3300517 bm!239928) bm!239931))

(declare-fun m!3624307 () Bool)

(assert (=> bm!239929 m!3624307))

(declare-fun m!3624309 () Bool)

(assert (=> bm!239930 m!3624309))

(declare-fun m!3624311 () Bool)

(assert (=> bm!239931 m!3624311))

(assert (=> b!3299939 d!923519))

(declare-fun b!3300540 () Bool)

(declare-fun res!1338749 () Bool)

(declare-fun e!2052625 () Bool)

(assert (=> b!3300540 (=> (not res!1338749) (not e!2052625))))

(declare-fun lt!1118535 () Option!7269)

(assert (=> b!3300540 (= res!1338749 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))) (_2!21112 (get!11636 lt!1118535))) lt!1118274))))

(declare-fun b!3300541 () Bool)

(declare-fun res!1338746 () Bool)

(assert (=> b!3300541 (=> (not res!1338746) (not e!2052625))))

(assert (=> b!3300541 (= res!1338746 (= (value!171141 (_1!21112 (get!11636 lt!1118535))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535)))))))))

(declare-fun d!923521 () Bool)

(declare-fun e!2052624 () Bool)

(assert (=> d!923521 e!2052624))

(declare-fun res!1338750 () Bool)

(assert (=> d!923521 (=> res!1338750 e!2052624)))

(assert (=> d!923521 (= res!1338750 (isEmpty!20606 lt!1118535))))

(declare-fun e!2052626 () Option!7269)

(assert (=> d!923521 (= lt!1118535 e!2052626)))

(declare-fun c!559800 () Bool)

(assert (=> d!923521 (= c!559800 (and (is-Cons!36461 rules!2135) (is-Nil!36461 (t!252750 rules!2135))))))

(declare-fun lt!1118534 () Unit!51389)

(declare-fun lt!1118536 () Unit!51389)

(assert (=> d!923521 (= lt!1118534 lt!1118536)))

(declare-fun isPrefix!2804 (List!36583 List!36583) Bool)

(assert (=> d!923521 (isPrefix!2804 lt!1118274 lt!1118274)))

(declare-fun lemmaIsPrefixRefl!1763 (List!36583 List!36583) Unit!51389)

(assert (=> d!923521 (= lt!1118536 (lemmaIsPrefixRefl!1763 lt!1118274 lt!1118274))))

(declare-fun rulesValidInductive!1803 (LexerInterface!4876 List!36585) Bool)

(assert (=> d!923521 (rulesValidInductive!1803 thiss!18206 rules!2135)))

(assert (=> d!923521 (= (maxPrefix!2504 thiss!18206 rules!2135 lt!1118274) lt!1118535)))

(declare-fun b!3300542 () Bool)

(assert (=> b!3300542 (= e!2052625 (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))))

(declare-fun bm!239934 () Bool)

(declare-fun call!239939 () Option!7269)

(assert (=> bm!239934 (= call!239939 (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) lt!1118274))))

(declare-fun b!3300543 () Bool)

(assert (=> b!3300543 (= e!2052624 e!2052625)))

(declare-fun res!1338744 () Bool)

(assert (=> b!3300543 (=> (not res!1338744) (not e!2052625))))

(declare-fun isDefined!5636 (Option!7269) Bool)

(assert (=> b!3300543 (= res!1338744 (isDefined!5636 lt!1118535))))

(declare-fun b!3300544 () Bool)

(declare-fun lt!1118533 () Option!7269)

(declare-fun lt!1118537 () Option!7269)

(assert (=> b!3300544 (= e!2052626 (ite (and (is-None!7268 lt!1118533) (is-None!7268 lt!1118537)) None!7268 (ite (is-None!7268 lt!1118537) lt!1118533 (ite (is-None!7268 lt!1118533) lt!1118537 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1118533))) (size!27530 (_1!21112 (v!36014 lt!1118537)))) lt!1118533 lt!1118537)))))))

(assert (=> b!3300544 (= lt!1118533 call!239939)))

(assert (=> b!3300544 (= lt!1118537 (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) lt!1118274))))

(declare-fun b!3300545 () Bool)

(declare-fun res!1338747 () Bool)

(assert (=> b!3300545 (=> (not res!1338747) (not e!2052625))))

(assert (=> b!3300545 (= res!1338747 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535)))))))

(declare-fun b!3300546 () Bool)

(declare-fun res!1338748 () Bool)

(assert (=> b!3300546 (=> (not res!1338748) (not e!2052625))))

(assert (=> b!3300546 (= res!1338748 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))))))

(declare-fun b!3300547 () Bool)

(assert (=> b!3300547 (= e!2052626 call!239939)))

(declare-fun b!3300548 () Bool)

(declare-fun res!1338745 () Bool)

(assert (=> b!3300548 (=> (not res!1338745) (not e!2052625))))

(assert (=> b!3300548 (= res!1338745 (< (size!27531 (_2!21112 (get!11636 lt!1118535))) (size!27531 lt!1118274)))))

(assert (= (and d!923521 c!559800) b!3300547))

(assert (= (and d!923521 (not c!559800)) b!3300544))

(assert (= (or b!3300547 b!3300544) bm!239934))

(assert (= (and d!923521 (not res!1338750)) b!3300543))

(assert (= (and b!3300543 res!1338744) b!3300545))

(assert (= (and b!3300545 res!1338747) b!3300548))

(assert (= (and b!3300548 res!1338745) b!3300540))

(assert (= (and b!3300540 res!1338749) b!3300541))

(assert (= (and b!3300541 res!1338746) b!3300546))

(assert (= (and b!3300546 res!1338748) b!3300542))

(declare-fun m!3624313 () Bool)

(assert (=> b!3300546 m!3624313))

(declare-fun m!3624315 () Bool)

(assert (=> b!3300546 m!3624315))

(assert (=> b!3300546 m!3624315))

(declare-fun m!3624317 () Bool)

(assert (=> b!3300546 m!3624317))

(assert (=> b!3300546 m!3624317))

(declare-fun m!3624319 () Bool)

(assert (=> b!3300546 m!3624319))

(assert (=> b!3300545 m!3624313))

(assert (=> b!3300545 m!3624315))

(assert (=> b!3300545 m!3624315))

(assert (=> b!3300545 m!3624317))

(declare-fun m!3624321 () Bool)

(assert (=> bm!239934 m!3624321))

(assert (=> b!3300541 m!3624313))

(declare-fun m!3624323 () Bool)

(assert (=> b!3300541 m!3624323))

(assert (=> b!3300541 m!3624323))

(declare-fun m!3624325 () Bool)

(assert (=> b!3300541 m!3624325))

(declare-fun m!3624327 () Bool)

(assert (=> b!3300543 m!3624327))

(declare-fun m!3624329 () Bool)

(assert (=> d!923521 m!3624329))

(declare-fun m!3624331 () Bool)

(assert (=> d!923521 m!3624331))

(declare-fun m!3624333 () Bool)

(assert (=> d!923521 m!3624333))

(declare-fun m!3624335 () Bool)

(assert (=> d!923521 m!3624335))

(assert (=> b!3300542 m!3624313))

(declare-fun m!3624337 () Bool)

(assert (=> b!3300542 m!3624337))

(declare-fun m!3624339 () Bool)

(assert (=> b!3300544 m!3624339))

(assert (=> b!3300548 m!3624313))

(declare-fun m!3624341 () Bool)

(assert (=> b!3300548 m!3624341))

(declare-fun m!3624343 () Bool)

(assert (=> b!3300548 m!3624343))

(assert (=> b!3300540 m!3624313))

(assert (=> b!3300540 m!3624315))

(assert (=> b!3300540 m!3624315))

(assert (=> b!3300540 m!3624317))

(assert (=> b!3300540 m!3624317))

(declare-fun m!3624345 () Bool)

(assert (=> b!3300540 m!3624345))

(assert (=> b!3299939 d!923521))

(declare-fun b!3300549 () Bool)

(declare-fun res!1338756 () Bool)

(declare-fun e!2052628 () Bool)

(assert (=> b!3300549 (=> (not res!1338756) (not e!2052628))))

(declare-fun lt!1118540 () Option!7269)

(assert (=> b!3300549 (= res!1338756 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))) (_2!21112 (get!11636 lt!1118540))) lt!1118249))))

(declare-fun b!3300550 () Bool)

(declare-fun res!1338753 () Bool)

(assert (=> b!3300550 (=> (not res!1338753) (not e!2052628))))

(assert (=> b!3300550 (= res!1338753 (= (value!171141 (_1!21112 (get!11636 lt!1118540))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540)))))))))

(declare-fun d!923523 () Bool)

(declare-fun e!2052627 () Bool)

(assert (=> d!923523 e!2052627))

(declare-fun res!1338757 () Bool)

(assert (=> d!923523 (=> res!1338757 e!2052627)))

(assert (=> d!923523 (= res!1338757 (isEmpty!20606 lt!1118540))))

(declare-fun e!2052629 () Option!7269)

(assert (=> d!923523 (= lt!1118540 e!2052629)))

(declare-fun c!559801 () Bool)

(assert (=> d!923523 (= c!559801 (and (is-Cons!36461 rules!2135) (is-Nil!36461 (t!252750 rules!2135))))))

(declare-fun lt!1118539 () Unit!51389)

(declare-fun lt!1118541 () Unit!51389)

(assert (=> d!923523 (= lt!1118539 lt!1118541)))

(assert (=> d!923523 (isPrefix!2804 lt!1118249 lt!1118249)))

(assert (=> d!923523 (= lt!1118541 (lemmaIsPrefixRefl!1763 lt!1118249 lt!1118249))))

(assert (=> d!923523 (rulesValidInductive!1803 thiss!18206 rules!2135)))

(assert (=> d!923523 (= (maxPrefix!2504 thiss!18206 rules!2135 lt!1118249) lt!1118540)))

(declare-fun b!3300551 () Bool)

(assert (=> b!3300551 (= e!2052628 (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))))

(declare-fun call!239940 () Option!7269)

(declare-fun bm!239935 () Bool)

(assert (=> bm!239935 (= call!239940 (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) lt!1118249))))

(declare-fun b!3300552 () Bool)

(assert (=> b!3300552 (= e!2052627 e!2052628)))

(declare-fun res!1338751 () Bool)

(assert (=> b!3300552 (=> (not res!1338751) (not e!2052628))))

(assert (=> b!3300552 (= res!1338751 (isDefined!5636 lt!1118540))))

(declare-fun b!3300553 () Bool)

(declare-fun lt!1118538 () Option!7269)

(declare-fun lt!1118542 () Option!7269)

(assert (=> b!3300553 (= e!2052629 (ite (and (is-None!7268 lt!1118538) (is-None!7268 lt!1118542)) None!7268 (ite (is-None!7268 lt!1118542) lt!1118538 (ite (is-None!7268 lt!1118538) lt!1118542 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1118538))) (size!27530 (_1!21112 (v!36014 lt!1118542)))) lt!1118538 lt!1118542)))))))

(assert (=> b!3300553 (= lt!1118538 call!239940)))

(assert (=> b!3300553 (= lt!1118542 (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) lt!1118249))))

(declare-fun b!3300554 () Bool)

(declare-fun res!1338754 () Bool)

(assert (=> b!3300554 (=> (not res!1338754) (not e!2052628))))

(assert (=> b!3300554 (= res!1338754 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540)))))))

(declare-fun b!3300555 () Bool)

(declare-fun res!1338755 () Bool)

(assert (=> b!3300555 (=> (not res!1338755) (not e!2052628))))

(assert (=> b!3300555 (= res!1338755 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))))))

(declare-fun b!3300556 () Bool)

(assert (=> b!3300556 (= e!2052629 call!239940)))

(declare-fun b!3300557 () Bool)

(declare-fun res!1338752 () Bool)

(assert (=> b!3300557 (=> (not res!1338752) (not e!2052628))))

(assert (=> b!3300557 (= res!1338752 (< (size!27531 (_2!21112 (get!11636 lt!1118540))) (size!27531 lt!1118249)))))

(assert (= (and d!923523 c!559801) b!3300556))

(assert (= (and d!923523 (not c!559801)) b!3300553))

(assert (= (or b!3300556 b!3300553) bm!239935))

(assert (= (and d!923523 (not res!1338757)) b!3300552))

(assert (= (and b!3300552 res!1338751) b!3300554))

(assert (= (and b!3300554 res!1338754) b!3300557))

(assert (= (and b!3300557 res!1338752) b!3300549))

(assert (= (and b!3300549 res!1338756) b!3300550))

(assert (= (and b!3300550 res!1338753) b!3300555))

(assert (= (and b!3300555 res!1338755) b!3300551))

(declare-fun m!3624347 () Bool)

(assert (=> b!3300555 m!3624347))

(declare-fun m!3624349 () Bool)

(assert (=> b!3300555 m!3624349))

(assert (=> b!3300555 m!3624349))

(declare-fun m!3624351 () Bool)

(assert (=> b!3300555 m!3624351))

(assert (=> b!3300555 m!3624351))

(declare-fun m!3624353 () Bool)

(assert (=> b!3300555 m!3624353))

(assert (=> b!3300554 m!3624347))

(assert (=> b!3300554 m!3624349))

(assert (=> b!3300554 m!3624349))

(assert (=> b!3300554 m!3624351))

(declare-fun m!3624355 () Bool)

(assert (=> bm!239935 m!3624355))

(assert (=> b!3300550 m!3624347))

(declare-fun m!3624357 () Bool)

(assert (=> b!3300550 m!3624357))

(assert (=> b!3300550 m!3624357))

(declare-fun m!3624359 () Bool)

(assert (=> b!3300550 m!3624359))

(declare-fun m!3624361 () Bool)

(assert (=> b!3300552 m!3624361))

(declare-fun m!3624363 () Bool)

(assert (=> d!923523 m!3624363))

(declare-fun m!3624365 () Bool)

(assert (=> d!923523 m!3624365))

(declare-fun m!3624367 () Bool)

(assert (=> d!923523 m!3624367))

(assert (=> d!923523 m!3624335))

(assert (=> b!3300551 m!3624347))

(declare-fun m!3624369 () Bool)

(assert (=> b!3300551 m!3624369))

(declare-fun m!3624371 () Bool)

(assert (=> b!3300553 m!3624371))

(assert (=> b!3300557 m!3624347))

(declare-fun m!3624373 () Bool)

(assert (=> b!3300557 m!3624373))

(declare-fun m!3624375 () Bool)

(assert (=> b!3300557 m!3624375))

(assert (=> b!3300549 m!3624347))

(assert (=> b!3300549 m!3624349))

(assert (=> b!3300549 m!3624349))

(assert (=> b!3300549 m!3624351))

(assert (=> b!3300549 m!3624351))

(declare-fun m!3624377 () Bool)

(assert (=> b!3300549 m!3624377))

(assert (=> b!3299939 d!923523))

(declare-fun b!3300558 () Bool)

(declare-fun e!2052632 () tuple2!35954)

(assert (=> b!3300558 (= e!2052632 (tuple2!35955 Nil!36460 lt!1118274))))

(declare-fun b!3300560 () Bool)

(declare-fun lt!1118543 () Option!7269)

(declare-fun lt!1118545 () tuple2!35954)

(assert (=> b!3300560 (= e!2052632 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118543)) (_1!21111 lt!1118545)) (_2!21111 lt!1118545)))))

(assert (=> b!3300560 (= lt!1118545 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118543))))))

(declare-fun b!3300561 () Bool)

(declare-fun e!2052630 () Bool)

(declare-fun lt!1118544 () tuple2!35954)

(assert (=> b!3300561 (= e!2052630 (= (_2!21111 lt!1118544) lt!1118274))))

(declare-fun b!3300562 () Bool)

(declare-fun e!2052631 () Bool)

(assert (=> b!3300562 (= e!2052630 e!2052631)))

(declare-fun res!1338758 () Bool)

(assert (=> b!3300562 (= res!1338758 (< (size!27531 (_2!21111 lt!1118544)) (size!27531 lt!1118274)))))

(assert (=> b!3300562 (=> (not res!1338758) (not e!2052631))))

(declare-fun b!3300559 () Bool)

(assert (=> b!3300559 (= e!2052631 (not (isEmpty!20599 (_1!21111 lt!1118544))))))

(declare-fun d!923525 () Bool)

(assert (=> d!923525 e!2052630))

(declare-fun c!559802 () Bool)

(assert (=> d!923525 (= c!559802 (> (size!27539 (_1!21111 lt!1118544)) 0))))

(assert (=> d!923525 (= lt!1118544 e!2052632)))

(declare-fun c!559803 () Bool)

(assert (=> d!923525 (= c!559803 (is-Some!7268 lt!1118543))))

(assert (=> d!923525 (= lt!1118543 (maxPrefix!2504 thiss!18206 rules!2135 lt!1118274))))

(assert (=> d!923525 (= (lexList!1350 thiss!18206 rules!2135 lt!1118274) lt!1118544)))

(assert (= (and d!923525 c!559803) b!3300560))

(assert (= (and d!923525 (not c!559803)) b!3300558))

(assert (= (and d!923525 c!559802) b!3300562))

(assert (= (and d!923525 (not c!559802)) b!3300561))

(assert (= (and b!3300562 res!1338758) b!3300559))

(declare-fun m!3624379 () Bool)

(assert (=> b!3300560 m!3624379))

(declare-fun m!3624381 () Bool)

(assert (=> b!3300562 m!3624381))

(assert (=> b!3300562 m!3624343))

(declare-fun m!3624383 () Bool)

(assert (=> b!3300559 m!3624383))

(declare-fun m!3624385 () Bool)

(assert (=> d!923525 m!3624385))

(assert (=> d!923525 m!3623577))

(assert (=> b!3299939 d!923525))

(declare-fun d!923527 () Bool)

(assert (=> d!923527 (not (contains!6582 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118269))))

(declare-fun lt!1118548 () Unit!51389)

(declare-fun choose!19111 (LexerInterface!4876 List!36585 List!36585 Rule!10374 Rule!10374 C!20278) Unit!51389)

(assert (=> d!923527 (= lt!1118548 (choose!19111 thiss!18206 rules!2135 rules!2135 (rule!7785 (h!41880 tokens!494)) (rule!7785 separatorToken!241) lt!1118269))))

(assert (=> d!923527 (rulesInvariant!4273 thiss!18206 rules!2135)))

(assert (=> d!923527 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!193 thiss!18206 rules!2135 rules!2135 (rule!7785 (h!41880 tokens!494)) (rule!7785 separatorToken!241) lt!1118269) lt!1118548)))

(declare-fun bs!548570 () Bool)

(assert (= bs!548570 d!923527))

(assert (=> bs!548570 m!3623569))

(assert (=> bs!548570 m!3623569))

(assert (=> bs!548570 m!3623571))

(declare-fun m!3624387 () Bool)

(assert (=> bs!548570 m!3624387))

(assert (=> bs!548570 m!3623567))

(assert (=> b!3299939 d!923527))

(declare-fun d!923529 () Bool)

(assert (=> d!923529 (= (maxPrefix!2504 thiss!18206 rules!2135 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262)) (Some!7268 (tuple2!35957 (h!41880 tokens!494) lt!1118262)))))

(declare-fun lt!1118559 () Unit!51389)

(declare-fun choose!19112 (LexerInterface!4876 List!36585 Token!9940 Rule!10374 List!36583 Rule!10374) Unit!51389)

(assert (=> d!923529 (= lt!1118559 (choose!19112 thiss!18206 rules!2135 (h!41880 tokens!494) (rule!7785 (h!41880 tokens!494)) lt!1118262 (rule!7785 separatorToken!241)))))

(assert (=> d!923529 (not (isEmpty!20596 rules!2135))))

(assert (=> d!923529 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!193 thiss!18206 rules!2135 (h!41880 tokens!494) (rule!7785 (h!41880 tokens!494)) lt!1118262 (rule!7785 separatorToken!241)) lt!1118559)))

(declare-fun bs!548571 () Bool)

(assert (= bs!548571 d!923529))

(assert (=> bs!548571 m!3623563))

(assert (=> bs!548571 m!3623565))

(assert (=> bs!548571 m!3623515))

(declare-fun m!3624407 () Bool)

(assert (=> bs!548571 m!3624407))

(assert (=> bs!548571 m!3623565))

(declare-fun m!3624409 () Bool)

(assert (=> bs!548571 m!3624409))

(assert (=> bs!548571 m!3623563))

(assert (=> bs!548571 m!3624409))

(declare-fun m!3624411 () Bool)

(assert (=> bs!548571 m!3624411))

(assert (=> b!3299939 d!923529))

(declare-fun d!923533 () Bool)

(declare-fun lt!1118560 () Bool)

(assert (=> d!923533 (= lt!1118560 (set.member lt!1118269 (content!4957 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun e!2052654 () Bool)

(assert (=> d!923533 (= lt!1118560 e!2052654)))

(declare-fun res!1338784 () Bool)

(assert (=> d!923533 (=> (not res!1338784) (not e!2052654))))

(assert (=> d!923533 (= res!1338784 (is-Cons!36459 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> d!923533 (= (contains!6582 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118269) lt!1118560)))

(declare-fun b!3300600 () Bool)

(declare-fun e!2052653 () Bool)

(assert (=> b!3300600 (= e!2052654 e!2052653)))

(declare-fun res!1338785 () Bool)

(assert (=> b!3300600 (=> res!1338785 e!2052653)))

(assert (=> b!3300600 (= res!1338785 (= (h!41879 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))) lt!1118269))))

(declare-fun b!3300601 () Bool)

(assert (=> b!3300601 (= e!2052653 (contains!6582 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))) lt!1118269))))

(assert (= (and d!923533 res!1338784) b!3300600))

(assert (= (and b!3300600 (not res!1338785)) b!3300601))

(assert (=> d!923533 m!3623569))

(declare-fun m!3624413 () Bool)

(assert (=> d!923533 m!3624413))

(declare-fun m!3624415 () Bool)

(assert (=> d!923533 m!3624415))

(declare-fun m!3624417 () Bool)

(assert (=> b!3300601 m!3624417))

(assert (=> b!3299939 d!923533))

(declare-fun d!923535 () Bool)

(assert (=> d!923535 (= (isEmpty!20596 rules!2135) (is-Nil!36461 rules!2135))))

(assert (=> b!3299941 d!923535))

(declare-fun b!3300602 () Bool)

(declare-fun e!2052655 () List!36584)

(assert (=> b!3300602 (= e!2052655 Nil!36460)))

(declare-fun b!3300603 () Bool)

(declare-fun e!2052656 () Bool)

(declare-fun lt!1118561 () List!36584)

(assert (=> b!3300603 (= e!2052656 (forall!7541 lt!1118561 lambda!118850))))

(declare-fun b!3300604 () Bool)

(declare-fun e!2052657 () List!36584)

(declare-fun call!239943 () List!36584)

(assert (=> b!3300604 (= e!2052657 call!239943)))

(declare-fun b!3300605 () Bool)

(assert (=> b!3300605 (= e!2052655 e!2052657)))

(declare-fun c!559811 () Bool)

(assert (=> b!3300605 (= c!559811 (dynLambda!14914 lambda!118850 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))))))

(declare-fun b!3300606 () Bool)

(assert (=> b!3300606 (= e!2052657 (Cons!36460 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))) call!239943))))

(declare-fun d!923537 () Bool)

(assert (=> d!923537 e!2052656))

(declare-fun res!1338787 () Bool)

(assert (=> d!923537 (=> (not res!1338787) (not e!2052656))))

(assert (=> d!923537 (= res!1338787 (<= (size!27539 lt!1118561) (size!27539 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))))))

(assert (=> d!923537 (= lt!1118561 e!2052655)))

(declare-fun c!559812 () Bool)

(assert (=> d!923537 (= c!559812 (is-Nil!36460 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))

(assert (=> d!923537 (= (filter!527 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))) lambda!118850) lt!1118561)))

(declare-fun bm!239938 () Bool)

(assert (=> bm!239938 (= call!239943 (filter!527 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))) lambda!118850))))

(declare-fun b!3300607 () Bool)

(declare-fun res!1338786 () Bool)

(assert (=> b!3300607 (=> (not res!1338786) (not e!2052656))))

(assert (=> b!3300607 (= res!1338786 (set.subset (content!4959 lt!1118561) (content!4959 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))))))

(assert (= (and d!923537 c!559812) b!3300602))

(assert (= (and d!923537 (not c!559812)) b!3300605))

(assert (= (and b!3300605 c!559811) b!3300606))

(assert (= (and b!3300605 (not c!559811)) b!3300604))

(assert (= (or b!3300606 b!3300604) bm!239938))

(assert (= (and d!923537 res!1338787) b!3300607))

(assert (= (and b!3300607 res!1338786) b!3300603))

(declare-fun b_lambda!91975 () Bool)

(assert (=> (not b_lambda!91975) (not b!3300605)))

(declare-fun m!3624419 () Bool)

(assert (=> d!923537 m!3624419))

(declare-fun m!3624421 () Bool)

(assert (=> d!923537 m!3624421))

(declare-fun m!3624423 () Bool)

(assert (=> b!3300605 m!3624423))

(declare-fun m!3624425 () Bool)

(assert (=> bm!239938 m!3624425))

(declare-fun m!3624427 () Bool)

(assert (=> b!3300603 m!3624427))

(declare-fun m!3624429 () Bool)

(assert (=> b!3300607 m!3624429))

(declare-fun m!3624431 () Bool)

(assert (=> b!3300607 m!3624431))

(assert (=> b!3299962 d!923537))

(declare-fun e!2052660 () tuple2!35954)

(declare-fun b!3300608 () Bool)

(assert (=> b!3300608 (= e!2052660 (tuple2!35955 Nil!36460 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(declare-fun b!3300610 () Bool)

(declare-fun lt!1118562 () Option!7269)

(declare-fun lt!1118564 () tuple2!35954)

(assert (=> b!3300610 (= e!2052660 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118562)) (_1!21111 lt!1118564)) (_2!21111 lt!1118564)))))

(assert (=> b!3300610 (= lt!1118564 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118562))))))

(declare-fun b!3300611 () Bool)

(declare-fun lt!1118563 () tuple2!35954)

(declare-fun e!2052658 () Bool)

(assert (=> b!3300611 (= e!2052658 (= (_2!21111 lt!1118563) (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(declare-fun b!3300612 () Bool)

(declare-fun e!2052659 () Bool)

(assert (=> b!3300612 (= e!2052658 e!2052659)))

(declare-fun res!1338788 () Bool)

(assert (=> b!3300612 (= res!1338788 (< (size!27531 (_2!21111 lt!1118563)) (size!27531 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))))

(assert (=> b!3300612 (=> (not res!1338788) (not e!2052659))))

(declare-fun b!3300609 () Bool)

(assert (=> b!3300609 (= e!2052659 (not (isEmpty!20599 (_1!21111 lt!1118563))))))

(declare-fun d!923539 () Bool)

(assert (=> d!923539 e!2052658))

(declare-fun c!559813 () Bool)

(assert (=> d!923539 (= c!559813 (> (size!27539 (_1!21111 lt!1118563)) 0))))

(assert (=> d!923539 (= lt!1118563 e!2052660)))

(declare-fun c!559814 () Bool)

(assert (=> d!923539 (= c!559814 (is-Some!7268 lt!1118562))))

(assert (=> d!923539 (= lt!1118562 (maxPrefix!2504 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(assert (=> d!923539 (= (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)) lt!1118563)))

(assert (= (and d!923539 c!559814) b!3300610))

(assert (= (and d!923539 (not c!559814)) b!3300608))

(assert (= (and d!923539 c!559813) b!3300612))

(assert (= (and d!923539 (not c!559813)) b!3300611))

(assert (= (and b!3300612 res!1338788) b!3300609))

(declare-fun m!3624433 () Bool)

(assert (=> b!3300610 m!3624433))

(declare-fun m!3624435 () Bool)

(assert (=> b!3300612 m!3624435))

(assert (=> b!3300612 m!3623611))

(declare-fun m!3624437 () Bool)

(assert (=> b!3300612 m!3624437))

(declare-fun m!3624439 () Bool)

(assert (=> b!3300609 m!3624439))

(declare-fun m!3624441 () Bool)

(assert (=> d!923539 m!3624441))

(assert (=> d!923539 m!3623611))

(declare-fun m!3624443 () Bool)

(assert (=> d!923539 m!3624443))

(assert (=> b!3299962 d!923539))

(declare-fun d!923541 () Bool)

(declare-fun c!559815 () Bool)

(assert (=> d!923541 (= c!559815 (is-Cons!36460 tokens!494))))

(declare-fun e!2052661 () List!36583)

(assert (=> d!923541 (= (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241) e!2052661)))

(declare-fun b!3300613 () Bool)

(assert (=> b!3300613 (= e!2052661 (++!8815 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241)))))

(declare-fun b!3300614 () Bool)

(assert (=> b!3300614 (= e!2052661 Nil!36459)))

(assert (= (and d!923541 c!559815) b!3300613))

(assert (= (and d!923541 (not c!559815)) b!3300614))

(declare-fun m!3624445 () Bool)

(assert (=> b!3300613 m!3624445))

(assert (=> b!3300613 m!3623619))

(assert (=> b!3300613 m!3623623))

(assert (=> b!3300613 m!3623563))

(assert (=> b!3300613 m!3623565))

(declare-fun m!3624447 () Bool)

(assert (=> b!3300613 m!3624447))

(assert (=> b!3300613 m!3624445))

(declare-fun m!3624449 () Bool)

(assert (=> b!3300613 m!3624449))

(assert (=> b!3300613 m!3623563))

(assert (=> b!3300613 m!3623565))

(assert (=> b!3300613 m!3623623))

(assert (=> b!3300613 m!3624447))

(assert (=> b!3300613 m!3623619))

(assert (=> b!3299962 d!923541))

(declare-fun d!923543 () Bool)

(declare-fun lt!1118593 () Bool)

(declare-fun e!2052741 () Bool)

(assert (=> d!923543 (= lt!1118593 e!2052741)))

(declare-fun res!1338856 () Bool)

(assert (=> d!923543 (=> (not res!1338856) (not e!2052741))))

(assert (=> d!923543 (= res!1338856 (= (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241))))) (list!13055 (singletonSeq!2383 separatorToken!241))))))

(declare-fun e!2052742 () Bool)

(assert (=> d!923543 (= lt!1118593 e!2052742)))

(declare-fun res!1338857 () Bool)

(assert (=> d!923543 (=> (not res!1338857) (not e!2052742))))

(declare-fun lt!1118594 () tuple2!35958)

(assert (=> d!923543 (= res!1338857 (= (size!27538 (_1!21113 lt!1118594)) 1))))

(assert (=> d!923543 (= lt!1118594 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241))))))

(assert (=> d!923543 (not (isEmpty!20596 rules!2135))))

(assert (=> d!923543 (= (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 separatorToken!241) lt!1118593)))

(declare-fun b!3300749 () Bool)

(declare-fun res!1338855 () Bool)

(assert (=> b!3300749 (=> (not res!1338855) (not e!2052742))))

(assert (=> b!3300749 (= res!1338855 (= (apply!8367 (_1!21113 lt!1118594) 0) separatorToken!241))))

(declare-fun b!3300750 () Bool)

(declare-fun isEmpty!20609 (BalanceConc!21512) Bool)

(assert (=> b!3300750 (= e!2052742 (isEmpty!20609 (_2!21113 lt!1118594)))))

(declare-fun b!3300751 () Bool)

(assert (=> b!3300751 (= e!2052741 (isEmpty!20609 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241))))))))

(assert (= (and d!923543 res!1338857) b!3300749))

(assert (= (and b!3300749 res!1338855) b!3300750))

(assert (= (and d!923543 res!1338856) b!3300751))

(declare-fun m!3624645 () Bool)

(assert (=> d!923543 m!3624645))

(declare-fun m!3624647 () Bool)

(assert (=> d!923543 m!3624647))

(declare-fun m!3624649 () Bool)

(assert (=> d!923543 m!3624649))

(assert (=> d!923543 m!3623515))

(declare-fun m!3624651 () Bool)

(assert (=> d!923543 m!3624651))

(declare-fun m!3624653 () Bool)

(assert (=> d!923543 m!3624653))

(assert (=> d!923543 m!3624645))

(declare-fun m!3624655 () Bool)

(assert (=> d!923543 m!3624655))

(assert (=> d!923543 m!3624645))

(assert (=> d!923543 m!3624651))

(declare-fun m!3624657 () Bool)

(assert (=> b!3300749 m!3624657))

(declare-fun m!3624659 () Bool)

(assert (=> b!3300750 m!3624659))

(assert (=> b!3300751 m!3624645))

(assert (=> b!3300751 m!3624645))

(assert (=> b!3300751 m!3624651))

(assert (=> b!3300751 m!3624651))

(assert (=> b!3300751 m!3624653))

(declare-fun m!3624661 () Bool)

(assert (=> b!3300751 m!3624661))

(assert (=> b!3299964 d!923543))

(declare-fun d!923607 () Bool)

(declare-fun res!1338860 () Bool)

(declare-fun e!2052745 () Bool)

(assert (=> d!923607 (=> (not res!1338860) (not e!2052745))))

(declare-fun rulesValid!1945 (LexerInterface!4876 List!36585) Bool)

(assert (=> d!923607 (= res!1338860 (rulesValid!1945 thiss!18206 rules!2135))))

(assert (=> d!923607 (= (rulesInvariant!4273 thiss!18206 rules!2135) e!2052745)))

(declare-fun b!3300754 () Bool)

(declare-datatypes ((List!36591 0))(
  ( (Nil!36467) (Cons!36467 (h!41887 String!40921) (t!252832 List!36591)) )
))
(declare-fun noDuplicateTag!1941 (LexerInterface!4876 List!36585 List!36591) Bool)

(assert (=> b!3300754 (= e!2052745 (noDuplicateTag!1941 thiss!18206 rules!2135 Nil!36467))))

(assert (= (and d!923607 res!1338860) b!3300754))

(declare-fun m!3624663 () Bool)

(assert (=> d!923607 m!3624663))

(declare-fun m!3624665 () Bool)

(assert (=> b!3300754 m!3624665))

(assert (=> b!3299942 d!923607))

(declare-fun d!923609 () Bool)

(assert (=> d!923609 (not (matchR!4668 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262))))

(declare-fun lt!1118607 () Unit!51389)

(declare-fun choose!19114 (Regex!10046 List!36583 C!20278) Unit!51389)

(assert (=> d!923609 (= lt!1118607 (choose!19114 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262 lt!1118269))))

(assert (=> d!923609 (validRegex!4571 (regex!5287 (rule!7785 separatorToken!241)))))

(assert (=> d!923609 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!435 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262 lt!1118269) lt!1118607)))

(declare-fun bs!548577 () Bool)

(assert (= bs!548577 d!923609))

(assert (=> bs!548577 m!3623669))

(declare-fun m!3624667 () Bool)

(assert (=> bs!548577 m!3624667))

(declare-fun m!3624669 () Bool)

(assert (=> bs!548577 m!3624669))

(assert (=> b!3299963 d!923609))

(declare-fun b!3300763 () Bool)

(declare-fun e!2052751 () Bool)

(assert (=> b!3300763 (= e!2052751 (nullable!3415 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun b!3300764 () Bool)

(declare-fun res!1338871 () Bool)

(declare-fun e!2052757 () Bool)

(assert (=> b!3300764 (=> (not res!1338871) (not e!2052757))))

(declare-fun call!239949 () Bool)

(assert (=> b!3300764 (= res!1338871 (not call!239949))))

(declare-fun b!3300765 () Bool)

(assert (=> b!3300765 (= e!2052751 (matchR!4668 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262)) (tail!5258 lt!1118262)))))

(declare-fun b!3300766 () Bool)

(declare-fun e!2052755 () Bool)

(declare-fun e!2052758 () Bool)

(assert (=> b!3300766 (= e!2052755 e!2052758)))

(declare-fun c!559856 () Bool)

(assert (=> b!3300766 (= c!559856 (is-EmptyLang!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun d!923611 () Bool)

(assert (=> d!923611 e!2052755))

(declare-fun c!559855 () Bool)

(assert (=> d!923611 (= c!559855 (is-EmptyExpr!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun lt!1118608 () Bool)

(assert (=> d!923611 (= lt!1118608 e!2052751)))

(declare-fun c!559854 () Bool)

(assert (=> d!923611 (= c!559854 (isEmpty!20598 lt!1118262))))

(assert (=> d!923611 (validRegex!4571 (regex!5287 (rule!7785 separatorToken!241)))))

(assert (=> d!923611 (= (matchR!4668 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262) lt!1118608)))

(declare-fun b!3300767 () Bool)

(declare-fun e!2052750 () Bool)

(assert (=> b!3300767 (= e!2052750 (not (= (head!7120 lt!1118262) (c!559680 (regex!5287 (rule!7785 separatorToken!241))))))))

(declare-fun b!3300768 () Bool)

(declare-fun res!1338865 () Bool)

(declare-fun e!2052756 () Bool)

(assert (=> b!3300768 (=> res!1338865 e!2052756)))

(assert (=> b!3300768 (= res!1338865 (not (is-ElementMatch!10046 (regex!5287 (rule!7785 separatorToken!241)))))))

(assert (=> b!3300768 (= e!2052758 e!2052756)))

(declare-fun b!3300769 () Bool)

(declare-fun res!1338863 () Bool)

(assert (=> b!3300769 (=> (not res!1338863) (not e!2052757))))

(assert (=> b!3300769 (= res!1338863 (isEmpty!20598 (tail!5258 lt!1118262)))))

(declare-fun b!3300770 () Bool)

(declare-fun res!1338864 () Bool)

(assert (=> b!3300770 (=> res!1338864 e!2052756)))

(assert (=> b!3300770 (= res!1338864 e!2052757)))

(declare-fun res!1338866 () Bool)

(assert (=> b!3300770 (=> (not res!1338866) (not e!2052757))))

(assert (=> b!3300770 (= res!1338866 lt!1118608)))

(declare-fun b!3300771 () Bool)

(assert (=> b!3300771 (= e!2052755 (= lt!1118608 call!239949))))

(declare-fun bm!239944 () Bool)

(assert (=> bm!239944 (= call!239949 (isEmpty!20598 lt!1118262))))

(declare-fun b!3300772 () Bool)

(assert (=> b!3300772 (= e!2052757 (= (head!7120 lt!1118262) (c!559680 (regex!5287 (rule!7785 separatorToken!241)))))))

(declare-fun b!3300773 () Bool)

(declare-fun e!2052754 () Bool)

(assert (=> b!3300773 (= e!2052756 e!2052754)))

(declare-fun res!1338867 () Bool)

(assert (=> b!3300773 (=> (not res!1338867) (not e!2052754))))

(assert (=> b!3300773 (= res!1338867 (not lt!1118608))))

(declare-fun b!3300774 () Bool)

(declare-fun res!1338872 () Bool)

(assert (=> b!3300774 (=> res!1338872 e!2052750)))

(assert (=> b!3300774 (= res!1338872 (not (isEmpty!20598 (tail!5258 lt!1118262))))))

(declare-fun b!3300775 () Bool)

(assert (=> b!3300775 (= e!2052758 (not lt!1118608))))

(declare-fun b!3300776 () Bool)

(assert (=> b!3300776 (= e!2052754 e!2052750)))

(declare-fun res!1338870 () Bool)

(assert (=> b!3300776 (=> res!1338870 e!2052750)))

(assert (=> b!3300776 (= res!1338870 call!239949)))

(assert (= (and d!923611 c!559854) b!3300763))

(assert (= (and d!923611 (not c!559854)) b!3300765))

(assert (= (and d!923611 c!559855) b!3300771))

(assert (= (and d!923611 (not c!559855)) b!3300766))

(assert (= (and b!3300766 c!559856) b!3300775))

(assert (= (and b!3300766 (not c!559856)) b!3300768))

(assert (= (and b!3300768 (not res!1338865)) b!3300770))

(assert (= (and b!3300770 res!1338866) b!3300764))

(assert (= (and b!3300764 res!1338871) b!3300769))

(assert (= (and b!3300769 res!1338863) b!3300772))

(assert (= (and b!3300770 (not res!1338864)) b!3300773))

(assert (= (and b!3300773 res!1338867) b!3300776))

(assert (= (and b!3300776 (not res!1338870)) b!3300774))

(assert (= (and b!3300774 (not res!1338872)) b!3300767))

(assert (= (or b!3300771 b!3300764 b!3300776) bm!239944))

(assert (=> b!3300769 m!3624179))

(assert (=> b!3300769 m!3624179))

(assert (=> b!3300769 m!3624181))

(declare-fun m!3624671 () Bool)

(assert (=> b!3300763 m!3624671))

(assert (=> bm!239944 m!3624185))

(assert (=> b!3300765 m!3623557))

(assert (=> b!3300765 m!3623557))

(declare-fun m!3624673 () Bool)

(assert (=> b!3300765 m!3624673))

(assert (=> b!3300765 m!3624179))

(assert (=> b!3300765 m!3624673))

(assert (=> b!3300765 m!3624179))

(declare-fun m!3624675 () Bool)

(assert (=> b!3300765 m!3624675))

(assert (=> b!3300767 m!3623557))

(assert (=> b!3300772 m!3623557))

(assert (=> b!3300774 m!3624179))

(assert (=> b!3300774 m!3624179))

(assert (=> b!3300774 m!3624181))

(assert (=> d!923611 m!3624185))

(assert (=> d!923611 m!3624669))

(assert (=> b!3299963 d!923611))

(declare-fun d!923613 () Bool)

(declare-fun res!1338887 () Bool)

(declare-fun e!2052763 () Bool)

(assert (=> d!923613 (=> (not res!1338887) (not e!2052763))))

(assert (=> d!923613 (= res!1338887 (not (isEmpty!20598 (originalCharacters!6001 (h!41880 tokens!494)))))))

(assert (=> d!923613 (= (inv!49410 (h!41880 tokens!494)) e!2052763)))

(declare-fun b!3300791 () Bool)

(declare-fun res!1338888 () Bool)

(assert (=> b!3300791 (=> (not res!1338888) (not e!2052763))))

(declare-fun dynLambda!14924 (Int TokenValue!5517) BalanceConc!21512)

(assert (=> b!3300791 (= res!1338888 (= (originalCharacters!6001 (h!41880 tokens!494)) (list!13054 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))))))

(declare-fun b!3300792 () Bool)

(assert (=> b!3300792 (= e!2052763 (= (size!27530 (h!41880 tokens!494)) (size!27531 (originalCharacters!6001 (h!41880 tokens!494)))))))

(assert (= (and d!923613 res!1338887) b!3300791))

(assert (= (and b!3300791 res!1338888) b!3300792))

(declare-fun b_lambda!91987 () Bool)

(assert (=> (not b_lambda!91987) (not b!3300791)))

(declare-fun t!252788 () Bool)

(declare-fun tb!170873 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252788) tb!170873))

(declare-fun b!3300797 () Bool)

(declare-fun e!2052766 () Bool)

(declare-fun tp!1033689 () Bool)

(declare-fun inv!49416 (Conc!10949) Bool)

(assert (=> b!3300797 (= e!2052766 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))) tp!1033689))))

(declare-fun result!213606 () Bool)

(declare-fun inv!49417 (BalanceConc!21512) Bool)

(assert (=> tb!170873 (= result!213606 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))) e!2052766))))

(assert (= tb!170873 b!3300797))

(declare-fun m!3624677 () Bool)

(assert (=> b!3300797 m!3624677))

(declare-fun m!3624679 () Bool)

(assert (=> tb!170873 m!3624679))

(assert (=> b!3300791 t!252788))

(declare-fun b_and!225865 () Bool)

(assert (= b_and!225813 (and (=> t!252788 result!213606) b_and!225865)))

(declare-fun tb!170875 () Bool)

(declare-fun t!252790 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252790) tb!170875))

(declare-fun result!213610 () Bool)

(assert (= result!213610 result!213606))

(assert (=> b!3300791 t!252790))

(declare-fun b_and!225867 () Bool)

(assert (= b_and!225817 (and (=> t!252790 result!213610) b_and!225867)))

(declare-fun t!252792 () Bool)

(declare-fun tb!170877 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252792) tb!170877))

(declare-fun result!213612 () Bool)

(assert (= result!213612 result!213606))

(assert (=> b!3300791 t!252792))

(declare-fun b_and!225869 () Bool)

(assert (= b_and!225821 (and (=> t!252792 result!213612) b_and!225869)))

(declare-fun m!3624681 () Bool)

(assert (=> d!923613 m!3624681))

(declare-fun m!3624683 () Bool)

(assert (=> b!3300791 m!3624683))

(assert (=> b!3300791 m!3624683))

(declare-fun m!3624685 () Bool)

(assert (=> b!3300791 m!3624685))

(declare-fun m!3624687 () Bool)

(assert (=> b!3300792 m!3624687))

(assert (=> b!3299945 d!923613))

(declare-fun b!3300798 () Bool)

(declare-fun e!2052769 () tuple2!35954)

(assert (=> b!3300798 (= e!2052769 (tuple2!35955 Nil!36460 (_2!21112 (v!36014 lt!1118267))))))

(declare-fun b!3300800 () Bool)

(declare-fun lt!1118609 () Option!7269)

(declare-fun lt!1118611 () tuple2!35954)

(assert (=> b!3300800 (= e!2052769 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118609)) (_1!21111 lt!1118611)) (_2!21111 lt!1118611)))))

(assert (=> b!3300800 (= lt!1118611 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118609))))))

(declare-fun b!3300801 () Bool)

(declare-fun e!2052767 () Bool)

(declare-fun lt!1118610 () tuple2!35954)

(assert (=> b!3300801 (= e!2052767 (= (_2!21111 lt!1118610) (_2!21112 (v!36014 lt!1118267))))))

(declare-fun b!3300802 () Bool)

(declare-fun e!2052768 () Bool)

(assert (=> b!3300802 (= e!2052767 e!2052768)))

(declare-fun res!1338889 () Bool)

(assert (=> b!3300802 (= res!1338889 (< (size!27531 (_2!21111 lt!1118610)) (size!27531 (_2!21112 (v!36014 lt!1118267)))))))

(assert (=> b!3300802 (=> (not res!1338889) (not e!2052768))))

(declare-fun b!3300799 () Bool)

(assert (=> b!3300799 (= e!2052768 (not (isEmpty!20599 (_1!21111 lt!1118610))))))

(declare-fun d!923615 () Bool)

(assert (=> d!923615 e!2052767))

(declare-fun c!559857 () Bool)

(assert (=> d!923615 (= c!559857 (> (size!27539 (_1!21111 lt!1118610)) 0))))

(assert (=> d!923615 (= lt!1118610 e!2052769)))

(declare-fun c!559858 () Bool)

(assert (=> d!923615 (= c!559858 (is-Some!7268 lt!1118609))))

(assert (=> d!923615 (= lt!1118609 (maxPrefix!2504 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118267))))))

(assert (=> d!923615 (= (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118267))) lt!1118610)))

(assert (= (and d!923615 c!559858) b!3300800))

(assert (= (and d!923615 (not c!559858)) b!3300798))

(assert (= (and d!923615 c!559857) b!3300802))

(assert (= (and d!923615 (not c!559857)) b!3300801))

(assert (= (and b!3300802 res!1338889) b!3300799))

(declare-fun m!3624689 () Bool)

(assert (=> b!3300800 m!3624689))

(declare-fun m!3624691 () Bool)

(assert (=> b!3300802 m!3624691))

(declare-fun m!3624693 () Bool)

(assert (=> b!3300802 m!3624693))

(declare-fun m!3624695 () Bool)

(assert (=> b!3300799 m!3624695))

(declare-fun m!3624697 () Bool)

(assert (=> d!923615 m!3624697))

(declare-fun m!3624699 () Bool)

(assert (=> d!923615 m!3624699))

(assert (=> b!3299966 d!923615))

(declare-fun d!923617 () Bool)

(declare-fun lt!1118617 () Bool)

(declare-fun e!2052774 () Bool)

(assert (=> d!923617 (= lt!1118617 e!2052774)))

(declare-fun res!1338898 () Bool)

(assert (=> d!923617 (=> (not res!1338898) (not e!2052774))))

(assert (=> d!923617 (= res!1338898 (= (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)))))) (list!13055 (singletonSeq!2383 (h!41880 tokens!494)))))))

(declare-fun e!2052775 () Bool)

(assert (=> d!923617 (= lt!1118617 e!2052775)))

(declare-fun res!1338899 () Bool)

(assert (=> d!923617 (=> (not res!1338899) (not e!2052775))))

(declare-fun lt!1118618 () tuple2!35958)

(assert (=> d!923617 (= res!1338899 (= (size!27538 (_1!21113 lt!1118618)) 1))))

(assert (=> d!923617 (= lt!1118618 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)))))))

(assert (=> d!923617 (not (isEmpty!20596 rules!2135))))

(assert (=> d!923617 (= (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 (h!41880 tokens!494)) lt!1118617)))

(declare-fun b!3300812 () Bool)

(declare-fun res!1338897 () Bool)

(assert (=> b!3300812 (=> (not res!1338897) (not e!2052775))))

(assert (=> b!3300812 (= res!1338897 (= (apply!8367 (_1!21113 lt!1118618) 0) (h!41880 tokens!494)))))

(declare-fun b!3300813 () Bool)

(assert (=> b!3300813 (= e!2052775 (isEmpty!20609 (_2!21113 lt!1118618)))))

(declare-fun b!3300814 () Bool)

(assert (=> b!3300814 (= e!2052774 (isEmpty!20609 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)))))))))

(assert (= (and d!923617 res!1338899) b!3300812))

(assert (= (and b!3300812 res!1338897) b!3300813))

(assert (= (and d!923617 res!1338898) b!3300814))

(assert (=> d!923617 m!3623659))

(declare-fun m!3624701 () Bool)

(assert (=> d!923617 m!3624701))

(declare-fun m!3624703 () Bool)

(assert (=> d!923617 m!3624703))

(assert (=> d!923617 m!3623515))

(declare-fun m!3624705 () Bool)

(assert (=> d!923617 m!3624705))

(declare-fun m!3624707 () Bool)

(assert (=> d!923617 m!3624707))

(assert (=> d!923617 m!3623659))

(declare-fun m!3624709 () Bool)

(assert (=> d!923617 m!3624709))

(assert (=> d!923617 m!3623659))

(assert (=> d!923617 m!3624705))

(declare-fun m!3624711 () Bool)

(assert (=> b!3300812 m!3624711))

(declare-fun m!3624713 () Bool)

(assert (=> b!3300813 m!3624713))

(assert (=> b!3300814 m!3623659))

(assert (=> b!3300814 m!3623659))

(assert (=> b!3300814 m!3624705))

(assert (=> b!3300814 m!3624705))

(assert (=> b!3300814 m!3624707))

(declare-fun m!3624715 () Bool)

(assert (=> b!3300814 m!3624715))

(assert (=> b!3299946 d!923617))

(declare-fun d!923619 () Bool)

(assert (=> d!923619 (= (inv!49407 (tag!5831 (rule!7785 separatorToken!241))) (= (mod (str.len (value!171140 (tag!5831 (rule!7785 separatorToken!241)))) 2) 0))))

(assert (=> b!3299967 d!923619))

(declare-fun d!923621 () Bool)

(declare-fun res!1338900 () Bool)

(declare-fun e!2052776 () Bool)

(assert (=> d!923621 (=> (not res!1338900) (not e!2052776))))

(assert (=> d!923621 (= res!1338900 (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241)))))))

(assert (=> d!923621 (= (inv!49411 (transformation!5287 (rule!7785 separatorToken!241))) e!2052776)))

(declare-fun b!3300815 () Bool)

(assert (=> b!3300815 (= e!2052776 (equivClasses!2083 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241)))))))

(assert (= (and d!923621 res!1338900) b!3300815))

(declare-fun m!3624717 () Bool)

(assert (=> d!923621 m!3624717))

(declare-fun m!3624719 () Bool)

(assert (=> b!3300815 m!3624719))

(assert (=> b!3299967 d!923621))

(declare-fun lt!1118621 () Bool)

(declare-fun d!923623 () Bool)

(assert (=> d!923623 (= lt!1118621 (isEmpty!20599 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258)))))))

(declare-fun isEmpty!20610 (Conc!10950) Bool)

(assert (=> d!923623 (= lt!1118621 (isEmpty!20610 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258)))))))

(assert (=> d!923623 (= (isEmpty!20597 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258))) lt!1118621)))

(declare-fun bs!548578 () Bool)

(assert (= bs!548578 d!923623))

(declare-fun m!3624765 () Bool)

(assert (=> bs!548578 m!3624765))

(assert (=> bs!548578 m!3624765))

(declare-fun m!3624767 () Bool)

(assert (=> bs!548578 m!3624767))

(declare-fun m!3624769 () Bool)

(assert (=> bs!548578 m!3624769))

(assert (=> b!3299948 d!923623))

(declare-fun b!3300826 () Bool)

(declare-fun e!2052784 () Bool)

(declare-fun lt!1118624 () tuple2!35958)

(assert (=> b!3300826 (= e!2052784 (not (isEmpty!20597 (_1!21113 lt!1118624))))))

(declare-fun d!923627 () Bool)

(declare-fun e!2052783 () Bool)

(assert (=> d!923627 e!2052783))

(declare-fun res!1338907 () Bool)

(assert (=> d!923627 (=> (not res!1338907) (not e!2052783))))

(declare-fun e!2052785 () Bool)

(assert (=> d!923627 (= res!1338907 e!2052785)))

(declare-fun c!559862 () Bool)

(assert (=> d!923627 (= c!559862 (> (size!27538 (_1!21113 lt!1118624)) 0))))

(declare-fun lexTailRecV2!961 (LexerInterface!4876 List!36585 BalanceConc!21512 BalanceConc!21512 BalanceConc!21512 BalanceConc!21514) tuple2!35958)

(assert (=> d!923627 (= lt!1118624 (lexTailRecV2!961 thiss!18206 rules!2135 lt!1118258 (BalanceConc!21513 Empty!10949) lt!1118258 (BalanceConc!21515 Empty!10950)))))

(assert (=> d!923627 (= (lex!2204 thiss!18206 rules!2135 lt!1118258) lt!1118624)))

(declare-fun b!3300827 () Bool)

(assert (=> b!3300827 (= e!2052785 (= (_2!21113 lt!1118624) lt!1118258))))

(declare-fun b!3300828 () Bool)

(assert (=> b!3300828 (= e!2052785 e!2052784)))

(declare-fun res!1338909 () Bool)

(assert (=> b!3300828 (= res!1338909 (< (size!27536 (_2!21113 lt!1118624)) (size!27536 lt!1118258)))))

(assert (=> b!3300828 (=> (not res!1338909) (not e!2052784))))

(declare-fun b!3300829 () Bool)

(assert (=> b!3300829 (= e!2052783 (= (list!13054 (_2!21113 lt!1118624)) (_2!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 lt!1118258)))))))

(declare-fun b!3300830 () Bool)

(declare-fun res!1338908 () Bool)

(assert (=> b!3300830 (=> (not res!1338908) (not e!2052783))))

(assert (=> b!3300830 (= res!1338908 (= (list!13055 (_1!21113 lt!1118624)) (_1!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 lt!1118258)))))))

(assert (= (and d!923627 c!559862) b!3300828))

(assert (= (and d!923627 (not c!559862)) b!3300827))

(assert (= (and b!3300828 res!1338909) b!3300826))

(assert (= (and d!923627 res!1338907) b!3300830))

(assert (= (and b!3300830 res!1338908) b!3300829))

(declare-fun m!3624771 () Bool)

(assert (=> b!3300828 m!3624771))

(declare-fun m!3624773 () Bool)

(assert (=> b!3300828 m!3624773))

(declare-fun m!3624775 () Bool)

(assert (=> d!923627 m!3624775))

(declare-fun m!3624777 () Bool)

(assert (=> d!923627 m!3624777))

(declare-fun m!3624779 () Bool)

(assert (=> b!3300826 m!3624779))

(declare-fun m!3624781 () Bool)

(assert (=> b!3300829 m!3624781))

(declare-fun m!3624783 () Bool)

(assert (=> b!3300829 m!3624783))

(assert (=> b!3300829 m!3624783))

(declare-fun m!3624785 () Bool)

(assert (=> b!3300829 m!3624785))

(declare-fun m!3624787 () Bool)

(assert (=> b!3300830 m!3624787))

(assert (=> b!3300830 m!3624783))

(assert (=> b!3300830 m!3624783))

(assert (=> b!3300830 m!3624785))

(assert (=> b!3299948 d!923627))

(declare-fun d!923629 () Bool)

(declare-fun fromListB!1596 (List!36583) BalanceConc!21512)

(assert (=> d!923629 (= (seqFromList!3638 lt!1118263) (fromListB!1596 lt!1118263))))

(declare-fun bs!548579 () Bool)

(assert (= bs!548579 d!923629))

(declare-fun m!3624789 () Bool)

(assert (=> bs!548579 m!3624789))

(assert (=> b!3299948 d!923629))

(declare-fun d!923631 () Bool)

(assert (=> d!923631 (= (inv!49407 (tag!5831 (h!41881 rules!2135))) (= (mod (str.len (value!171140 (tag!5831 (h!41881 rules!2135)))) 2) 0))))

(assert (=> b!3299969 d!923631))

(declare-fun d!923633 () Bool)

(declare-fun res!1338910 () Bool)

(declare-fun e!2052786 () Bool)

(assert (=> d!923633 (=> (not res!1338910) (not e!2052786))))

(assert (=> d!923633 (= res!1338910 (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (h!41881 rules!2135)))))))

(assert (=> d!923633 (= (inv!49411 (transformation!5287 (h!41881 rules!2135))) e!2052786)))

(declare-fun b!3300831 () Bool)

(assert (=> b!3300831 (= e!2052786 (equivClasses!2083 (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (h!41881 rules!2135)))))))

(assert (= (and d!923633 res!1338910) b!3300831))

(declare-fun m!3624791 () Bool)

(assert (=> d!923633 m!3624791))

(declare-fun m!3624793 () Bool)

(assert (=> b!3300831 m!3624793))

(assert (=> b!3299969 d!923633))

(declare-fun b!3300832 () Bool)

(declare-fun e!2052789 () Bool)

(declare-fun e!2052788 () Bool)

(assert (=> b!3300832 (= e!2052789 e!2052788)))

(declare-fun c!559864 () Bool)

(assert (=> b!3300832 (= c!559864 (is-IntegerValue!16552 (value!171141 (h!41880 tokens!494))))))

(declare-fun b!3300833 () Bool)

(assert (=> b!3300833 (= e!2052789 (inv!16 (value!171141 (h!41880 tokens!494))))))

(declare-fun b!3300834 () Bool)

(declare-fun res!1338911 () Bool)

(declare-fun e!2052787 () Bool)

(assert (=> b!3300834 (=> res!1338911 e!2052787)))

(assert (=> b!3300834 (= res!1338911 (not (is-IntegerValue!16553 (value!171141 (h!41880 tokens!494)))))))

(assert (=> b!3300834 (= e!2052788 e!2052787)))

(declare-fun d!923635 () Bool)

(declare-fun c!559863 () Bool)

(assert (=> d!923635 (= c!559863 (is-IntegerValue!16551 (value!171141 (h!41880 tokens!494))))))

(assert (=> d!923635 (= (inv!21 (value!171141 (h!41880 tokens!494))) e!2052789)))

(declare-fun b!3300835 () Bool)

(assert (=> b!3300835 (= e!2052787 (inv!15 (value!171141 (h!41880 tokens!494))))))

(declare-fun b!3300836 () Bool)

(assert (=> b!3300836 (= e!2052788 (inv!17 (value!171141 (h!41880 tokens!494))))))

(assert (= (and d!923635 c!559863) b!3300833))

(assert (= (and d!923635 (not c!559863)) b!3300832))

(assert (= (and b!3300832 c!559864) b!3300836))

(assert (= (and b!3300832 (not c!559864)) b!3300834))

(assert (= (and b!3300834 (not res!1338911)) b!3300835))

(declare-fun m!3624795 () Bool)

(assert (=> b!3300833 m!3624795))

(declare-fun m!3624797 () Bool)

(assert (=> b!3300835 m!3624797))

(declare-fun m!3624799 () Bool)

(assert (=> b!3300836 m!3624799))

(assert (=> b!3299949 d!923635))

(declare-fun b!3300846 () Bool)

(declare-fun e!2052795 () List!36583)

(assert (=> b!3300846 (= e!2052795 (Cons!36459 (h!41879 lt!1118263) (++!8815 (t!252748 lt!1118263) lt!1118262)))))

(declare-fun b!3300845 () Bool)

(assert (=> b!3300845 (= e!2052795 lt!1118262)))

(declare-fun b!3300847 () Bool)

(declare-fun res!1338916 () Bool)

(declare-fun e!2052794 () Bool)

(assert (=> b!3300847 (=> (not res!1338916) (not e!2052794))))

(declare-fun lt!1118630 () List!36583)

(assert (=> b!3300847 (= res!1338916 (= (size!27531 lt!1118630) (+ (size!27531 lt!1118263) (size!27531 lt!1118262))))))

(declare-fun d!923637 () Bool)

(assert (=> d!923637 e!2052794))

(declare-fun res!1338917 () Bool)

(assert (=> d!923637 (=> (not res!1338917) (not e!2052794))))

(assert (=> d!923637 (= res!1338917 (= (content!4957 lt!1118630) (set.union (content!4957 lt!1118263) (content!4957 lt!1118262))))))

(assert (=> d!923637 (= lt!1118630 e!2052795)))

(declare-fun c!559867 () Bool)

(assert (=> d!923637 (= c!559867 (is-Nil!36459 lt!1118263))))

(assert (=> d!923637 (= (++!8815 lt!1118263 lt!1118262) lt!1118630)))

(declare-fun b!3300848 () Bool)

(assert (=> b!3300848 (= e!2052794 (or (not (= lt!1118262 Nil!36459)) (= lt!1118630 lt!1118263)))))

(assert (= (and d!923637 c!559867) b!3300845))

(assert (= (and d!923637 (not c!559867)) b!3300846))

(assert (= (and d!923637 res!1338917) b!3300847))

(assert (= (and b!3300847 res!1338916) b!3300848))

(declare-fun m!3624803 () Bool)

(assert (=> b!3300846 m!3624803))

(declare-fun m!3624805 () Bool)

(assert (=> b!3300847 m!3624805))

(assert (=> b!3300847 m!3623543))

(declare-fun m!3624807 () Bool)

(assert (=> b!3300847 m!3624807))

(declare-fun m!3624809 () Bool)

(assert (=> d!923637 m!3624809))

(declare-fun m!3624811 () Bool)

(assert (=> d!923637 m!3624811))

(declare-fun m!3624813 () Bool)

(assert (=> d!923637 m!3624813))

(assert (=> b!3299970 d!923637))

(declare-fun d!923641 () Bool)

(assert (=> d!923641 (= (list!13054 lt!1118255) (list!13059 (c!559681 lt!1118255)))))

(declare-fun bs!548581 () Bool)

(assert (= bs!548581 d!923641))

(declare-fun m!3624815 () Bool)

(assert (=> bs!548581 m!3624815))

(assert (=> b!3299970 d!923641))

(declare-fun d!923643 () Bool)

(declare-fun lt!1118636 () BalanceConc!21512)

(assert (=> d!923643 (= (list!13054 lt!1118636) (originalCharacters!6001 separatorToken!241))))

(assert (=> d!923643 (= lt!1118636 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))))

(assert (=> d!923643 (= (charsOf!3303 separatorToken!241) lt!1118636)))

(declare-fun b_lambda!91989 () Bool)

(assert (=> (not b_lambda!91989) (not d!923643)))

(declare-fun t!252795 () Bool)

(declare-fun tb!170879 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) t!252795) tb!170879))

(declare-fun b!3300855 () Bool)

(declare-fun e!2052799 () Bool)

(declare-fun tp!1033690 () Bool)

(assert (=> b!3300855 (= e!2052799 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))) tp!1033690))))

(declare-fun result!213614 () Bool)

(assert (=> tb!170879 (= result!213614 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))) e!2052799))))

(assert (= tb!170879 b!3300855))

(declare-fun m!3624821 () Bool)

(assert (=> b!3300855 m!3624821))

(declare-fun m!3624823 () Bool)

(assert (=> tb!170879 m!3624823))

(assert (=> d!923643 t!252795))

(declare-fun b_and!225871 () Bool)

(assert (= b_and!225865 (and (=> t!252795 result!213614) b_and!225871)))

(declare-fun t!252797 () Bool)

(declare-fun tb!170881 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) t!252797) tb!170881))

(declare-fun result!213616 () Bool)

(assert (= result!213616 result!213614))

(assert (=> d!923643 t!252797))

(declare-fun b_and!225873 () Bool)

(assert (= b_and!225867 (and (=> t!252797 result!213616) b_and!225873)))

(declare-fun t!252799 () Bool)

(declare-fun tb!170883 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) t!252799) tb!170883))

(declare-fun result!213618 () Bool)

(assert (= result!213618 result!213614))

(assert (=> d!923643 t!252799))

(declare-fun b_and!225875 () Bool)

(assert (= b_and!225869 (and (=> t!252799 result!213618) b_and!225875)))

(declare-fun m!3624825 () Bool)

(assert (=> d!923643 m!3624825))

(declare-fun m!3624827 () Bool)

(assert (=> d!923643 m!3624827))

(assert (=> b!3299970 d!923643))

(declare-fun d!923647 () Bool)

(declare-fun lt!1118648 () BalanceConc!21512)

(assert (=> d!923647 (= (list!13054 lt!1118648) (printWithSeparatorTokenList!201 thiss!18206 (list!13055 lt!1118251) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!30 (LexerInterface!4876 BalanceConc!21514 Token!9940 Int BalanceConc!21512) BalanceConc!21512)

(assert (=> d!923647 (= lt!1118648 (printWithSeparatorTokenTailRec!30 thiss!18206 lt!1118251 separatorToken!241 0 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!923647 (isSeparator!5287 (rule!7785 separatorToken!241))))

(assert (=> d!923647 (= (printWithSeparatorToken!93 thiss!18206 lt!1118251 separatorToken!241) lt!1118648)))

(declare-fun bs!548582 () Bool)

(assert (= bs!548582 d!923647))

(declare-fun m!3624841 () Bool)

(assert (=> bs!548582 m!3624841))

(assert (=> bs!548582 m!3624297))

(assert (=> bs!548582 m!3624297))

(declare-fun m!3624843 () Bool)

(assert (=> bs!548582 m!3624843))

(declare-fun m!3624845 () Bool)

(assert (=> bs!548582 m!3624845))

(assert (=> b!3299970 d!923647))

(declare-fun d!923651 () Bool)

(assert (=> d!923651 (= (list!13054 (charsOf!3303 separatorToken!241)) (list!13059 (c!559681 (charsOf!3303 separatorToken!241))))))

(declare-fun bs!548583 () Bool)

(assert (= bs!548583 d!923651))

(declare-fun m!3624847 () Bool)

(assert (=> bs!548583 m!3624847))

(assert (=> b!3299970 d!923651))

(declare-fun d!923653 () Bool)

(assert (=> d!923653 (= (isEmpty!20599 (filter!527 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))) lambda!118850)) (is-Nil!36460 (filter!527 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))) lambda!118850)))))

(assert (=> b!3299971 d!923653))

(declare-fun d!923655 () Bool)

(declare-fun list!13061 (Conc!10950) List!36584)

(assert (=> d!923655 (= (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))) (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(declare-fun bs!548585 () Bool)

(assert (= bs!548585 d!923655))

(declare-fun m!3624859 () Bool)

(assert (=> bs!548585 m!3624859))

(assert (=> b!3299971 d!923655))

(declare-fun d!923661 () Bool)

(declare-fun lt!1118652 () BalanceConc!21512)

(assert (=> d!923661 (= (list!13054 lt!1118652) (printWithSeparatorTokenList!201 thiss!18206 (list!13055 (BalanceConc!21515 Empty!10950)) separatorToken!241))))

(assert (=> d!923661 (= lt!1118652 (printWithSeparatorTokenTailRec!30 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241 0 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!923661 (isSeparator!5287 (rule!7785 separatorToken!241))))

(assert (=> d!923661 (= (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241) lt!1118652)))

(declare-fun bs!548586 () Bool)

(assert (= bs!548586 d!923661))

(declare-fun m!3624861 () Bool)

(assert (=> bs!548586 m!3624861))

(declare-fun m!3624863 () Bool)

(assert (=> bs!548586 m!3624863))

(assert (=> bs!548586 m!3624863))

(declare-fun m!3624865 () Bool)

(assert (=> bs!548586 m!3624865))

(declare-fun m!3624867 () Bool)

(assert (=> bs!548586 m!3624867))

(assert (=> b!3299971 d!923661))

(declare-fun b!3300880 () Bool)

(declare-fun e!2052817 () Bool)

(declare-fun lt!1118653 () tuple2!35958)

(assert (=> b!3300880 (= e!2052817 (not (isEmpty!20597 (_1!21113 lt!1118653))))))

(declare-fun d!923663 () Bool)

(declare-fun e!2052816 () Bool)

(assert (=> d!923663 e!2052816))

(declare-fun res!1338926 () Bool)

(assert (=> d!923663 (=> (not res!1338926) (not e!2052816))))

(declare-fun e!2052818 () Bool)

(assert (=> d!923663 (= res!1338926 e!2052818)))

(declare-fun c!559879 () Bool)

(assert (=> d!923663 (= c!559879 (> (size!27538 (_1!21113 lt!1118653)) 0))))

(assert (=> d!923663 (= lt!1118653 (lexTailRecV2!961 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241) (BalanceConc!21513 Empty!10949) (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241) (BalanceConc!21515 Empty!10950)))))

(assert (=> d!923663 (= (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)) lt!1118653)))

(declare-fun b!3300881 () Bool)

(assert (=> b!3300881 (= e!2052818 (= (_2!21113 lt!1118653) (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))

(declare-fun b!3300882 () Bool)

(assert (=> b!3300882 (= e!2052818 e!2052817)))

(declare-fun res!1338928 () Bool)

(assert (=> b!3300882 (= res!1338928 (< (size!27536 (_2!21113 lt!1118653)) (size!27536 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))

(assert (=> b!3300882 (=> (not res!1338928) (not e!2052817))))

(declare-fun b!3300883 () Bool)

(assert (=> b!3300883 (= e!2052816 (= (list!13054 (_2!21113 lt!1118653)) (_2!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(declare-fun b!3300884 () Bool)

(declare-fun res!1338927 () Bool)

(assert (=> b!3300884 (=> (not res!1338927) (not e!2052816))))

(assert (=> b!3300884 (= res!1338927 (= (list!13055 (_1!21113 lt!1118653)) (_1!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(assert (= (and d!923663 c!559879) b!3300882))

(assert (= (and d!923663 (not c!559879)) b!3300881))

(assert (= (and b!3300882 res!1338928) b!3300880))

(assert (= (and d!923663 res!1338926) b!3300884))

(assert (= (and b!3300884 res!1338927) b!3300883))

(declare-fun m!3624869 () Bool)

(assert (=> b!3300882 m!3624869))

(assert (=> b!3300882 m!3623605))

(declare-fun m!3624871 () Bool)

(assert (=> b!3300882 m!3624871))

(declare-fun m!3624873 () Bool)

(assert (=> d!923663 m!3624873))

(assert (=> d!923663 m!3623605))

(assert (=> d!923663 m!3623605))

(declare-fun m!3624875 () Bool)

(assert (=> d!923663 m!3624875))

(declare-fun m!3624877 () Bool)

(assert (=> b!3300880 m!3624877))

(declare-fun m!3624879 () Bool)

(assert (=> b!3300883 m!3624879))

(assert (=> b!3300883 m!3623605))

(declare-fun m!3624881 () Bool)

(assert (=> b!3300883 m!3624881))

(assert (=> b!3300883 m!3624881))

(declare-fun m!3624883 () Bool)

(assert (=> b!3300883 m!3624883))

(declare-fun m!3624885 () Bool)

(assert (=> b!3300884 m!3624885))

(assert (=> b!3300884 m!3623605))

(assert (=> b!3300884 m!3624881))

(assert (=> b!3300884 m!3624881))

(assert (=> b!3300884 m!3624883))

(assert (=> b!3299971 d!923663))

(declare-fun b!3300885 () Bool)

(declare-fun e!2052819 () List!36584)

(assert (=> b!3300885 (= e!2052819 Nil!36460)))

(declare-fun b!3300886 () Bool)

(declare-fun e!2052820 () Bool)

(declare-fun lt!1118654 () List!36584)

(assert (=> b!3300886 (= e!2052820 (forall!7541 lt!1118654 lambda!118850))))

(declare-fun b!3300887 () Bool)

(declare-fun e!2052821 () List!36584)

(declare-fun call!239950 () List!36584)

(assert (=> b!3300887 (= e!2052821 call!239950)))

(declare-fun b!3300888 () Bool)

(assert (=> b!3300888 (= e!2052819 e!2052821)))

(declare-fun c!559880 () Bool)

(assert (=> b!3300888 (= c!559880 (dynLambda!14914 lambda!118850 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))))))

(declare-fun b!3300889 () Bool)

(assert (=> b!3300889 (= e!2052821 (Cons!36460 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))) call!239950))))

(declare-fun d!923665 () Bool)

(assert (=> d!923665 e!2052820))

(declare-fun res!1338930 () Bool)

(assert (=> d!923665 (=> (not res!1338930) (not e!2052820))))

(assert (=> d!923665 (= res!1338930 (<= (size!27539 lt!1118654) (size!27539 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))))))

(assert (=> d!923665 (= lt!1118654 e!2052819)))

(declare-fun c!559881 () Bool)

(assert (=> d!923665 (= c!559881 (is-Nil!36460 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(assert (=> d!923665 (= (filter!527 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))) lambda!118850) lt!1118654)))

(declare-fun bm!239945 () Bool)

(assert (=> bm!239945 (= call!239950 (filter!527 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))) lambda!118850))))

(declare-fun b!3300890 () Bool)

(declare-fun res!1338929 () Bool)

(assert (=> b!3300890 (=> (not res!1338929) (not e!2052820))))

(assert (=> b!3300890 (= res!1338929 (set.subset (content!4959 lt!1118654) (content!4959 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))))))

(assert (= (and d!923665 c!559881) b!3300885))

(assert (= (and d!923665 (not c!559881)) b!3300888))

(assert (= (and b!3300888 c!559880) b!3300889))

(assert (= (and b!3300888 (not c!559880)) b!3300887))

(assert (= (or b!3300889 b!3300887) bm!239945))

(assert (= (and d!923665 res!1338930) b!3300890))

(assert (= (and b!3300890 res!1338929) b!3300886))

(declare-fun b_lambda!91991 () Bool)

(assert (=> (not b_lambda!91991) (not b!3300888)))

(declare-fun m!3624887 () Bool)

(assert (=> d!923665 m!3624887))

(assert (=> d!923665 m!3623601))

(declare-fun m!3624889 () Bool)

(assert (=> d!923665 m!3624889))

(declare-fun m!3624891 () Bool)

(assert (=> b!3300888 m!3624891))

(declare-fun m!3624893 () Bool)

(assert (=> bm!239945 m!3624893))

(declare-fun m!3624895 () Bool)

(assert (=> b!3300886 m!3624895))

(declare-fun m!3624897 () Bool)

(assert (=> b!3300890 m!3624897))

(assert (=> b!3300890 m!3623601))

(declare-fun m!3624899 () Bool)

(assert (=> b!3300890 m!3624899))

(assert (=> b!3299971 d!923665))

(declare-fun d!923667 () Bool)

(assert (=> d!923667 (= (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13059 (c!559681 (charsOf!3303 (h!41880 tokens!494)))))))

(declare-fun bs!548587 () Bool)

(assert (= bs!548587 d!923667))

(declare-fun m!3624901 () Bool)

(assert (=> bs!548587 m!3624901))

(assert (=> b!3299952 d!923667))

(declare-fun d!923669 () Bool)

(declare-fun lt!1118655 () BalanceConc!21512)

(assert (=> d!923669 (= (list!13054 lt!1118655) (originalCharacters!6001 (h!41880 tokens!494)))))

(assert (=> d!923669 (= lt!1118655 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))))

(assert (=> d!923669 (= (charsOf!3303 (h!41880 tokens!494)) lt!1118655)))

(declare-fun b_lambda!91993 () Bool)

(assert (=> (not b_lambda!91993) (not d!923669)))

(assert (=> d!923669 t!252788))

(declare-fun b_and!225877 () Bool)

(assert (= b_and!225871 (and (=> t!252788 result!213606) b_and!225877)))

(assert (=> d!923669 t!252790))

(declare-fun b_and!225879 () Bool)

(assert (= b_and!225873 (and (=> t!252790 result!213610) b_and!225879)))

(assert (=> d!923669 t!252792))

(declare-fun b_and!225881 () Bool)

(assert (= b_and!225875 (and (=> t!252792 result!213612) b_and!225881)))

(declare-fun m!3624903 () Bool)

(assert (=> d!923669 m!3624903))

(assert (=> d!923669 m!3624683))

(assert (=> b!3299952 d!923669))

(declare-fun d!923671 () Bool)

(declare-fun res!1338931 () Bool)

(declare-fun e!2052822 () Bool)

(assert (=> d!923671 (=> (not res!1338931) (not e!2052822))))

(assert (=> d!923671 (= res!1338931 (not (isEmpty!20598 (originalCharacters!6001 separatorToken!241))))))

(assert (=> d!923671 (= (inv!49410 separatorToken!241) e!2052822)))

(declare-fun b!3300891 () Bool)

(declare-fun res!1338932 () Bool)

(assert (=> b!3300891 (=> (not res!1338932) (not e!2052822))))

(assert (=> b!3300891 (= res!1338932 (= (originalCharacters!6001 separatorToken!241) (list!13054 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))))))

(declare-fun b!3300892 () Bool)

(assert (=> b!3300892 (= e!2052822 (= (size!27530 separatorToken!241) (size!27531 (originalCharacters!6001 separatorToken!241))))))

(assert (= (and d!923671 res!1338931) b!3300891))

(assert (= (and b!3300891 res!1338932) b!3300892))

(declare-fun b_lambda!91995 () Bool)

(assert (=> (not b_lambda!91995) (not b!3300891)))

(assert (=> b!3300891 t!252795))

(declare-fun b_and!225883 () Bool)

(assert (= b_and!225877 (and (=> t!252795 result!213614) b_and!225883)))

(assert (=> b!3300891 t!252797))

(declare-fun b_and!225885 () Bool)

(assert (= b_and!225879 (and (=> t!252797 result!213616) b_and!225885)))

(assert (=> b!3300891 t!252799))

(declare-fun b_and!225887 () Bool)

(assert (= b_and!225881 (and (=> t!252799 result!213618) b_and!225887)))

(declare-fun m!3624905 () Bool)

(assert (=> d!923671 m!3624905))

(assert (=> b!3300891 m!3624827))

(assert (=> b!3300891 m!3624827))

(declare-fun m!3624907 () Bool)

(assert (=> b!3300891 m!3624907))

(declare-fun m!3624909 () Bool)

(assert (=> b!3300892 m!3624909))

(assert (=> start!307056 d!923671))

(declare-fun b!3300893 () Bool)

(declare-fun e!2052823 () List!36584)

(assert (=> b!3300893 (= e!2052823 Nil!36460)))

(declare-fun b!3300894 () Bool)

(declare-fun e!2052824 () Bool)

(declare-fun lt!1118656 () List!36584)

(assert (=> b!3300894 (= e!2052824 (forall!7541 lt!1118656 lambda!118850))))

(declare-fun b!3300895 () Bool)

(declare-fun e!2052825 () List!36584)

(declare-fun call!239951 () List!36584)

(assert (=> b!3300895 (= e!2052825 call!239951)))

(declare-fun b!3300896 () Bool)

(assert (=> b!3300896 (= e!2052823 e!2052825)))

(declare-fun c!559882 () Bool)

(assert (=> b!3300896 (= c!559882 (dynLambda!14914 lambda!118850 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))))))

(declare-fun b!3300897 () Bool)

(assert (=> b!3300897 (= e!2052825 (Cons!36460 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))) call!239951))))

(declare-fun d!923673 () Bool)

(assert (=> d!923673 e!2052824))

(declare-fun res!1338934 () Bool)

(assert (=> d!923673 (=> (not res!1338934) (not e!2052824))))

(assert (=> d!923673 (= res!1338934 (<= (size!27539 lt!1118656) (size!27539 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))))))

(assert (=> d!923673 (= lt!1118656 e!2052823)))

(declare-fun c!559883 () Bool)

(assert (=> d!923673 (= c!559883 (is-Nil!36460 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))

(assert (=> d!923673 (= (filter!527 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))) lambda!118850) lt!1118656)))

(declare-fun bm!239946 () Bool)

(assert (=> bm!239946 (= call!239951 (filter!527 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))) lambda!118850))))

(declare-fun b!3300898 () Bool)

(declare-fun res!1338933 () Bool)

(assert (=> b!3300898 (=> (not res!1338933) (not e!2052824))))

(assert (=> b!3300898 (= res!1338933 (set.subset (content!4959 lt!1118656) (content!4959 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))))))

(assert (= (and d!923673 c!559883) b!3300893))

(assert (= (and d!923673 (not c!559883)) b!3300896))

(assert (= (and b!3300896 c!559882) b!3300897))

(assert (= (and b!3300896 (not c!559882)) b!3300895))

(assert (= (or b!3300897 b!3300895) bm!239946))

(assert (= (and d!923673 res!1338934) b!3300898))

(assert (= (and b!3300898 res!1338933) b!3300894))

(declare-fun b_lambda!91997 () Bool)

(assert (=> (not b_lambda!91997) (not b!3300896)))

(declare-fun m!3624911 () Bool)

(assert (=> d!923673 m!3624911))

(assert (=> d!923673 m!3623597))

(declare-fun m!3624913 () Bool)

(assert (=> d!923673 m!3624913))

(declare-fun m!3624915 () Bool)

(assert (=> b!3300896 m!3624915))

(declare-fun m!3624917 () Bool)

(assert (=> bm!239946 m!3624917))

(declare-fun m!3624919 () Bool)

(assert (=> b!3300894 m!3624919))

(declare-fun m!3624921 () Bool)

(assert (=> b!3300898 m!3624921))

(assert (=> b!3300898 m!3623597))

(declare-fun m!3624923 () Bool)

(assert (=> b!3300898 m!3624923))

(assert (=> b!3299973 d!923673))

(declare-fun d!923675 () Bool)

(assert (=> d!923675 (= (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))) (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))

(declare-fun bs!548588 () Bool)

(assert (= bs!548588 d!923675))

(declare-fun m!3624925 () Bool)

(assert (=> bs!548588 m!3624925))

(assert (=> b!3299973 d!923675))

(declare-fun b!3300903 () Bool)

(declare-fun e!2052829 () Bool)

(declare-fun lt!1118659 () tuple2!35958)

(assert (=> b!3300903 (= e!2052829 (not (isEmpty!20597 (_1!21113 lt!1118659))))))

(declare-fun d!923677 () Bool)

(declare-fun e!2052828 () Bool)

(assert (=> d!923677 e!2052828))

(declare-fun res!1338939 () Bool)

(assert (=> d!923677 (=> (not res!1338939) (not e!2052828))))

(declare-fun e!2052830 () Bool)

(assert (=> d!923677 (= res!1338939 e!2052830)))

(declare-fun c!559884 () Bool)

(assert (=> d!923677 (= c!559884 (> (size!27538 (_1!21113 lt!1118659)) 0))))

(assert (=> d!923677 (= lt!1118659 (lexTailRecV2!961 thiss!18206 rules!2135 lt!1118255 (BalanceConc!21513 Empty!10949) lt!1118255 (BalanceConc!21515 Empty!10950)))))

(assert (=> d!923677 (= (lex!2204 thiss!18206 rules!2135 lt!1118255) lt!1118659)))

(declare-fun b!3300904 () Bool)

(assert (=> b!3300904 (= e!2052830 (= (_2!21113 lt!1118659) lt!1118255))))

(declare-fun b!3300905 () Bool)

(assert (=> b!3300905 (= e!2052830 e!2052829)))

(declare-fun res!1338941 () Bool)

(assert (=> b!3300905 (= res!1338941 (< (size!27536 (_2!21113 lt!1118659)) (size!27536 lt!1118255)))))

(assert (=> b!3300905 (=> (not res!1338941) (not e!2052829))))

(declare-fun b!3300906 () Bool)

(assert (=> b!3300906 (= e!2052828 (= (list!13054 (_2!21113 lt!1118659)) (_2!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 lt!1118255)))))))

(declare-fun b!3300907 () Bool)

(declare-fun res!1338940 () Bool)

(assert (=> b!3300907 (=> (not res!1338940) (not e!2052828))))

(assert (=> b!3300907 (= res!1338940 (= (list!13055 (_1!21113 lt!1118659)) (_1!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 lt!1118255)))))))

(assert (= (and d!923677 c!559884) b!3300905))

(assert (= (and d!923677 (not c!559884)) b!3300904))

(assert (= (and b!3300905 res!1338941) b!3300903))

(assert (= (and d!923677 res!1338939) b!3300907))

(assert (= (and b!3300907 res!1338940) b!3300906))

(declare-fun m!3624927 () Bool)

(assert (=> b!3300905 m!3624927))

(declare-fun m!3624929 () Bool)

(assert (=> b!3300905 m!3624929))

(declare-fun m!3624931 () Bool)

(assert (=> d!923677 m!3624931))

(declare-fun m!3624933 () Bool)

(assert (=> d!923677 m!3624933))

(declare-fun m!3624935 () Bool)

(assert (=> b!3300903 m!3624935))

(declare-fun m!3624937 () Bool)

(assert (=> b!3300906 m!3624937))

(assert (=> b!3300906 m!3623617))

(assert (=> b!3300906 m!3623617))

(declare-fun m!3624939 () Bool)

(assert (=> b!3300906 m!3624939))

(declare-fun m!3624941 () Bool)

(assert (=> b!3300907 m!3624941))

(assert (=> b!3300907 m!3623617))

(assert (=> b!3300907 m!3623617))

(assert (=> b!3300907 m!3624939))

(assert (=> b!3299973 d!923677))

(declare-fun b!3300920 () Bool)

(declare-fun e!2052834 () Bool)

(declare-fun tp_is_empty!17355 () Bool)

(assert (=> b!3300920 (= e!2052834 tp_is_empty!17355)))

(declare-fun b!3300923 () Bool)

(declare-fun tp!1033705 () Bool)

(declare-fun tp!1033704 () Bool)

(assert (=> b!3300923 (= e!2052834 (and tp!1033705 tp!1033704))))

(declare-fun b!3300921 () Bool)

(declare-fun tp!1033702 () Bool)

(declare-fun tp!1033703 () Bool)

(assert (=> b!3300921 (= e!2052834 (and tp!1033702 tp!1033703))))

(declare-fun b!3300922 () Bool)

(declare-fun tp!1033701 () Bool)

(assert (=> b!3300922 (= e!2052834 tp!1033701)))

(assert (=> b!3299969 (= tp!1033642 e!2052834)))

(assert (= (and b!3299969 (is-ElementMatch!10046 (regex!5287 (h!41881 rules!2135)))) b!3300920))

(assert (= (and b!3299969 (is-Concat!15563 (regex!5287 (h!41881 rules!2135)))) b!3300921))

(assert (= (and b!3299969 (is-Star!10046 (regex!5287 (h!41881 rules!2135)))) b!3300922))

(assert (= (and b!3299969 (is-Union!10046 (regex!5287 (h!41881 rules!2135)))) b!3300923))

(declare-fun b!3300934 () Bool)

(declare-fun b_free!86693 () Bool)

(declare-fun b_next!87397 () Bool)

(assert (=> b!3300934 (= b_free!86693 (not b_next!87397))))

(declare-fun t!252801 () Bool)

(declare-fun tb!170885 () Bool)

(assert (=> (and b!3300934 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252801) tb!170885))

(declare-fun result!213624 () Bool)

(assert (= result!213624 result!213598))

(assert (=> d!923427 t!252801))

(declare-fun tp!1033714 () Bool)

(declare-fun b_and!225889 () Bool)

(assert (=> b!3300934 (= tp!1033714 (and (=> t!252801 result!213624) b_and!225889))))

(declare-fun b_free!86695 () Bool)

(declare-fun b_next!87399 () Bool)

(assert (=> b!3300934 (= b_free!86695 (not b_next!87399))))

(declare-fun tb!170887 () Bool)

(declare-fun t!252803 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252803) tb!170887))

(declare-fun result!213626 () Bool)

(assert (= result!213626 result!213606))

(assert (=> b!3300791 t!252803))

(declare-fun t!252805 () Bool)

(declare-fun tb!170889 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) t!252805) tb!170889))

(declare-fun result!213628 () Bool)

(assert (= result!213628 result!213614))

(assert (=> d!923643 t!252805))

(assert (=> d!923669 t!252803))

(assert (=> b!3300891 t!252805))

(declare-fun tp!1033717 () Bool)

(declare-fun b_and!225891 () Bool)

(assert (=> b!3300934 (= tp!1033717 (and (=> t!252803 result!213626) (=> t!252805 result!213628) b_and!225891))))

(declare-fun e!2052843 () Bool)

(assert (=> b!3300934 (= e!2052843 (and tp!1033714 tp!1033717))))

(declare-fun b!3300933 () Bool)

(declare-fun e!2052844 () Bool)

(declare-fun tp!1033716 () Bool)

(assert (=> b!3300933 (= e!2052844 (and tp!1033716 (inv!49407 (tag!5831 (h!41881 (t!252750 rules!2135)))) (inv!49411 (transformation!5287 (h!41881 (t!252750 rules!2135)))) e!2052843))))

(declare-fun b!3300932 () Bool)

(declare-fun e!2052846 () Bool)

(declare-fun tp!1033715 () Bool)

(assert (=> b!3300932 (= e!2052846 (and e!2052844 tp!1033715))))

(assert (=> b!3299944 (= tp!1033640 e!2052846)))

(assert (= b!3300933 b!3300934))

(assert (= b!3300932 b!3300933))

(assert (= (and b!3299944 (is-Cons!36461 (t!252750 rules!2135))) b!3300932))

(declare-fun m!3624951 () Bool)

(assert (=> b!3300933 m!3624951))

(declare-fun m!3624953 () Bool)

(assert (=> b!3300933 m!3624953))

(declare-fun b!3300939 () Bool)

(declare-fun e!2052849 () Bool)

(declare-fun tp!1033720 () Bool)

(assert (=> b!3300939 (= e!2052849 (and tp_is_empty!17355 tp!1033720))))

(assert (=> b!3299949 (= tp!1033632 e!2052849)))

(assert (= (and b!3299949 (is-Cons!36459 (originalCharacters!6001 (h!41880 tokens!494)))) b!3300939))

(declare-fun b!3300940 () Bool)

(declare-fun e!2052850 () Bool)

(declare-fun tp!1033721 () Bool)

(assert (=> b!3300940 (= e!2052850 (and tp_is_empty!17355 tp!1033721))))

(assert (=> b!3299938 (= tp!1033635 e!2052850)))

(assert (= (and b!3299938 (is-Cons!36459 (originalCharacters!6001 separatorToken!241))) b!3300940))

(declare-fun b!3300954 () Bool)

(declare-fun b_free!86697 () Bool)

(declare-fun b_next!87401 () Bool)

(assert (=> b!3300954 (= b_free!86697 (not b_next!87401))))

(declare-fun t!252807 () Bool)

(declare-fun tb!170891 () Bool)

(assert (=> (and b!3300954 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252807) tb!170891))

(declare-fun result!213634 () Bool)

(assert (= result!213634 result!213598))

(assert (=> d!923427 t!252807))

(declare-fun tp!1033733 () Bool)

(declare-fun b_and!225893 () Bool)

(assert (=> b!3300954 (= tp!1033733 (and (=> t!252807 result!213634) b_and!225893))))

(declare-fun b_free!86699 () Bool)

(declare-fun b_next!87403 () Bool)

(assert (=> b!3300954 (= b_free!86699 (not b_next!87403))))

(declare-fun t!252809 () Bool)

(declare-fun tb!170893 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252809) tb!170893))

(declare-fun result!213636 () Bool)

(assert (= result!213636 result!213606))

(assert (=> b!3300791 t!252809))

(declare-fun t!252811 () Bool)

(declare-fun tb!170895 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) t!252811) tb!170895))

(declare-fun result!213638 () Bool)

(assert (= result!213638 result!213614))

(assert (=> d!923643 t!252811))

(assert (=> d!923669 t!252809))

(assert (=> b!3300891 t!252811))

(declare-fun b_and!225895 () Bool)

(declare-fun tp!1033732 () Bool)

(assert (=> b!3300954 (= tp!1033732 (and (=> t!252809 result!213636) (=> t!252811 result!213638) b_and!225895))))

(declare-fun b!3300952 () Bool)

(declare-fun e!2052864 () Bool)

(declare-fun e!2052863 () Bool)

(declare-fun tp!1033735 () Bool)

(assert (=> b!3300952 (= e!2052864 (and (inv!21 (value!171141 (h!41880 (t!252749 tokens!494)))) e!2052863 tp!1033735))))

(declare-fun b!3300951 () Bool)

(declare-fun e!2052868 () Bool)

(declare-fun tp!1033734 () Bool)

(assert (=> b!3300951 (= e!2052868 (and (inv!49410 (h!41880 (t!252749 tokens!494))) e!2052864 tp!1033734))))

(declare-fun e!2052866 () Bool)

(declare-fun tp!1033736 () Bool)

(declare-fun b!3300953 () Bool)

(assert (=> b!3300953 (= e!2052863 (and tp!1033736 (inv!49407 (tag!5831 (rule!7785 (h!41880 (t!252749 tokens!494))))) (inv!49411 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) e!2052866))))

(assert (=> b!3299945 (= tp!1033639 e!2052868)))

(assert (=> b!3300954 (= e!2052866 (and tp!1033733 tp!1033732))))

(assert (= b!3300953 b!3300954))

(assert (= b!3300952 b!3300953))

(assert (= b!3300951 b!3300952))

(assert (= (and b!3299945 (is-Cons!36460 (t!252749 tokens!494))) b!3300951))

(declare-fun m!3624955 () Bool)

(assert (=> b!3300952 m!3624955))

(declare-fun m!3624957 () Bool)

(assert (=> b!3300951 m!3624957))

(declare-fun m!3624959 () Bool)

(assert (=> b!3300953 m!3624959))

(declare-fun m!3624961 () Bool)

(assert (=> b!3300953 m!3624961))

(declare-fun b!3300955 () Bool)

(declare-fun e!2052869 () Bool)

(assert (=> b!3300955 (= e!2052869 tp_is_empty!17355)))

(declare-fun b!3300958 () Bool)

(declare-fun tp!1033741 () Bool)

(declare-fun tp!1033740 () Bool)

(assert (=> b!3300958 (= e!2052869 (and tp!1033741 tp!1033740))))

(declare-fun b!3300956 () Bool)

(declare-fun tp!1033738 () Bool)

(declare-fun tp!1033739 () Bool)

(assert (=> b!3300956 (= e!2052869 (and tp!1033738 tp!1033739))))

(declare-fun b!3300957 () Bool)

(declare-fun tp!1033737 () Bool)

(assert (=> b!3300957 (= e!2052869 tp!1033737)))

(assert (=> b!3299957 (= tp!1033633 e!2052869)))

(assert (= (and b!3299957 (is-ElementMatch!10046 (regex!5287 (rule!7785 (h!41880 tokens!494))))) b!3300955))

(assert (= (and b!3299957 (is-Concat!15563 (regex!5287 (rule!7785 (h!41880 tokens!494))))) b!3300956))

(assert (= (and b!3299957 (is-Star!10046 (regex!5287 (rule!7785 (h!41880 tokens!494))))) b!3300957))

(assert (= (and b!3299957 (is-Union!10046 (regex!5287 (rule!7785 (h!41880 tokens!494))))) b!3300958))

(declare-fun b!3300959 () Bool)

(declare-fun e!2052870 () Bool)

(assert (=> b!3300959 (= e!2052870 tp_is_empty!17355)))

(declare-fun b!3300962 () Bool)

(declare-fun tp!1033746 () Bool)

(declare-fun tp!1033745 () Bool)

(assert (=> b!3300962 (= e!2052870 (and tp!1033746 tp!1033745))))

(declare-fun b!3300960 () Bool)

(declare-fun tp!1033743 () Bool)

(declare-fun tp!1033744 () Bool)

(assert (=> b!3300960 (= e!2052870 (and tp!1033743 tp!1033744))))

(declare-fun b!3300961 () Bool)

(declare-fun tp!1033742 () Bool)

(assert (=> b!3300961 (= e!2052870 tp!1033742)))

(assert (=> b!3299967 (= tp!1033634 e!2052870)))

(assert (= (and b!3299967 (is-ElementMatch!10046 (regex!5287 (rule!7785 separatorToken!241)))) b!3300959))

(assert (= (and b!3299967 (is-Concat!15563 (regex!5287 (rule!7785 separatorToken!241)))) b!3300960))

(assert (= (and b!3299967 (is-Star!10046 (regex!5287 (rule!7785 separatorToken!241)))) b!3300961))

(assert (= (and b!3299967 (is-Union!10046 (regex!5287 (rule!7785 separatorToken!241)))) b!3300962))

(declare-fun b_lambda!91999 () Bool)

(assert (= b_lambda!91991 (or b!3299975 b_lambda!91999)))

(declare-fun bs!548589 () Bool)

(declare-fun d!923683 () Bool)

(assert (= bs!548589 (and d!923683 b!3299975)))

(assert (=> bs!548589 (= (dynLambda!14914 lambda!118850 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))) (not (isSeparator!5287 (rule!7785 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))))))))

(assert (=> b!3300888 d!923683))

(declare-fun b_lambda!92001 () Bool)

(assert (= b_lambda!91987 (or (and b!3300954 b_free!86699 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299965 b_free!86671 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300934 b_free!86695 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299937 b_free!86675 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299943 b_free!86679) b_lambda!92001)))

(declare-fun b_lambda!92003 () Bool)

(assert (= b_lambda!91969 (or b!3299975 b_lambda!92003)))

(declare-fun bs!548590 () Bool)

(declare-fun d!923685 () Bool)

(assert (= bs!548590 (and d!923685 b!3299975)))

(assert (=> bs!548590 (= (dynLambda!14914 lambda!118850 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))) (not (isSeparator!5287 (rule!7785 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))))))))

(assert (=> b!3300411 d!923685))

(declare-fun b_lambda!92005 () Bool)

(assert (= b_lambda!91989 (or (and b!3300934 b_free!86695 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3300954 b_free!86699 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3299965 b_free!86671 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3299943 b_free!86679 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3299937 b_free!86675) b_lambda!92005)))

(declare-fun b_lambda!92007 () Bool)

(assert (= b_lambda!91967 (or b!3299975 b_lambda!92007)))

(declare-fun bs!548591 () Bool)

(declare-fun d!923687 () Bool)

(assert (= bs!548591 (and d!923687 b!3299975)))

(assert (=> bs!548591 (= (dynLambda!14914 lambda!118850 (h!41880 tokens!494)) (not (isSeparator!5287 (rule!7785 (h!41880 tokens!494)))))))

(assert (=> b!3300347 d!923687))

(declare-fun b_lambda!92009 () Bool)

(assert (= b_lambda!91997 (or b!3299975 b_lambda!92009)))

(declare-fun bs!548592 () Bool)

(declare-fun d!923689 () Bool)

(assert (= bs!548592 (and d!923689 b!3299975)))

(assert (=> bs!548592 (= (dynLambda!14914 lambda!118850 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))) (not (isSeparator!5287 (rule!7785 (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))))))))

(assert (=> b!3300896 d!923689))

(declare-fun b_lambda!92011 () Bool)

(assert (= b_lambda!91995 (or (and b!3300934 b_free!86695 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3300954 b_free!86699 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3299965 b_free!86671 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3299943 b_free!86679 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))))) (and b!3299937 b_free!86675) b_lambda!92011)))

(declare-fun b_lambda!92013 () Bool)

(assert (= b_lambda!91975 (or b!3299975 b_lambda!92013)))

(declare-fun bs!548593 () Bool)

(declare-fun d!923691 () Bool)

(assert (= bs!548593 (and d!923691 b!3299975)))

(assert (=> bs!548593 (= (dynLambda!14914 lambda!118850 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))) (not (isSeparator!5287 (rule!7785 (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))))))))

(assert (=> b!3300605 d!923691))

(declare-fun b_lambda!92015 () Bool)

(assert (= b_lambda!91965 (or (and b!3299937 b_free!86673 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300954 b_free!86697 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300934 b_free!86693 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299965 b_free!86669 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299943 b_free!86677) b_lambda!92015)))

(declare-fun b_lambda!92017 () Bool)

(assert (= b_lambda!91993 (or (and b!3300954 b_free!86699 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299965 b_free!86671 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300934 b_free!86695 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299937 b_free!86675 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299943 b_free!86679) b_lambda!92017)))

(declare-fun b_lambda!92019 () Bool)

(assert (= b_lambda!91963 (or b!3299975 b_lambda!92019)))

(assert (=> d!923407 d!923687))

(push 1)

(assert (not d!923663))

(assert b_and!225891)

(assert b_and!225895)

(assert (not b!3300549))

(assert (not b!3300750))

(assert (not bm!239903))

(assert (not b!3300883))

(assert (not b!3300562))

(assert (not d!923407))

(assert (not b!3300367))

(assert (not b!3300341))

(assert (not d!923449))

(assert (not b!3300607))

(assert (not d!923617))

(assert (not tb!170879))

(assert b_and!225887)

(assert (not b!3300890))

(assert (not b!3300797))

(assert (not d!923527))

(assert (not b_next!87403))

(assert (not bm!239945))

(assert (not b!3300161))

(assert (not b_lambda!92013))

(assert (not b!3300455))

(assert (not b!3300792))

(assert (not b!3300922))

(assert (not d!923613))

(assert (not b_lambda!92001))

(assert (not d!923651))

(assert (not d!923445))

(assert (not b!3300956))

(assert (not b!3300544))

(assert (not b!3300185))

(assert (not b_lambda!92019))

(assert (not bm!239944))

(assert (not b!3300812))

(assert (not b!3300554))

(assert (not b!3300833))

(assert (not b!3300962))

(assert (not b!3300907))

(assert (not b!3300335))

(assert b_and!225893)

(assert (not d!923499))

(assert b_and!225849)

(assert (not d!923627))

(assert (not b!3300951))

(assert (not b!3300135))

(assert (not b!3300749))

(assert (not d!923417))

(assert (not d!923543))

(assert (not bm!239921))

(assert (not d!923489))

(assert (not b!3300454))

(assert (not b!3300828))

(assert (not b!3300393))

(assert (not d!923411))

(assert (not d!923667))

(assert (not b!3300813))

(assert (not b!3300542))

(assert (not b!3300409))

(assert (not b!3300814))

(assert (not b!3300339))

(assert (not b_next!87381))

(assert (not d!923491))

(assert (not b!3300413))

(assert (not b!3300433))

(assert (not d!923521))

(assert (not b!3300142))

(assert (not b!3300384))

(assert (not b!3300774))

(assert (not b!3300799))

(assert (not bm!239892))

(assert (not b!3300169))

(assert (not d!923415))

(assert (not b!3300149))

(assert (not b!3300334))

(assert (not d!923641))

(assert (not b!3300830))

(assert (not d!923461))

(assert (not b_lambda!92009))

(assert (not b!3300612))

(assert (not b!3300905))

(assert (not b!3300139))

(assert (not b!3300540))

(assert (not d!923675))

(assert (not d!923637))

(assert (not d!923529))

(assert (not d!923421))

(assert (not d!923533))

(assert (not b!3300546))

(assert (not b_lambda!92015))

(assert (not b!3300388))

(assert (not tb!170873))

(assert (not d!923661))

(assert (not b!3300601))

(assert (not b!3300541))

(assert (not d!923647))

(assert (not b_lambda!92007))

(assert (not b!3300186))

(assert (not b!3300560))

(assert (not b!3300543))

(assert (not b!3300382))

(assert (not d!923453))

(assert (not d!923409))

(assert (not b!3300769))

(assert (not d!923539))

(assert (not b!3300960))

(assert (not b_next!87373))

(assert (not b!3300835))

(assert (not b!3300958))

(assert (not b!3300921))

(assert (not b!3300372))

(assert (not d!923609))

(assert (not b!3300882))

(assert (not b!3300898))

(assert (not b!3300939))

(assert (not d!923525))

(assert (not b!3300369))

(assert (not d!923615))

(assert (not b!3300553))

(assert (not b!3300446))

(assert (not b!3300763))

(assert (not b!3300802))

(assert (not b!3300509))

(assert (not b!3300826))

(assert (not b!3300932))

(assert (not bm!239929))

(assert (not b_next!87399))

(assert (not bm!239935))

(assert (not bm!239924))

(assert (not b!3300957))

(assert (not b!3300137))

(assert (not b!3300557))

(assert (not b_lambda!91999))

(assert (not b!3300167))

(assert (not d!923665))

(assert (not b!3300552))

(assert (not d!923419))

(assert (not d!923677))

(assert (not b_lambda!92011))

(assert (not b!3300559))

(assert (not d!923475))

(assert (not b!3300609))

(assert (not b!3300847))

(assert (not d!923671))

(assert (not b!3300426))

(assert (not b_next!87397))

(assert b_and!225889)

(assert (not b!3300386))

(assert (not d!923633))

(assert (not bm!239934))

(assert (not b_lambda!92005))

(assert (not b!3300754))

(assert (not d!923629))

(assert (not d!923607))

(assert (not b!3300815))

(assert (not b!3300272))

(assert (not b!3300425))

(assert (not bm!239930))

(assert tp_is_empty!17355)

(assert (not b!3300555))

(assert (not d!923433))

(assert (not d!923673))

(assert (not b!3300772))

(assert b_and!225847)

(assert (not d!923517))

(assert (not b!3300751))

(assert (not b!3300880))

(assert (not b_lambda!92003))

(assert (not b!3300168))

(assert (not b!3300381))

(assert (not b!3300340))

(assert (not d!923655))

(assert (not b!3300550))

(assert (not b_lambda!92017))

(assert (not b!3300933))

(assert (not tb!170867))

(assert (not b!3300133))

(assert (not b!3300884))

(assert (not b!3300940))

(assert (not b!3300961))

(assert (not b!3300271))

(assert (not b_next!87379))

(assert (not b!3300767))

(assert (not b!3300428))

(assert (not b!3300836))

(assert (not b!3300791))

(assert (not b!3300155))

(assert (not b!3300894))

(assert (not b!3300886))

(assert (not b!3300548))

(assert (not b_next!87383))

(assert (not bm!239938))

(assert (not b!3300348))

(assert (not b!3300336))

(assert (not b_next!87377))

(assert (not b!3300953))

(assert (not b!3300377))

(assert (not d!923611))

(assert (not b_next!87375))

(assert (not d!923623))

(assert (not b!3300891))

(assert (not d!923467))

(assert (not b!3300765))

(assert (not d!923481))

(assert (not b!3300903))

(assert (not b!3300184))

(assert (not b!3300892))

(assert (not b!3300154))

(assert (not b!3300603))

(assert (not d!923483))

(assert (not b!3300846))

(assert b_and!225851)

(assert (not b!3300952))

(assert (not b!3300337))

(assert (not d!923523))

(assert (not bm!239902))

(assert (not b!3300610))

(assert (not d!923431))

(assert (not b!3300500))

(assert (not d!923403))

(assert (not bm!239946))

(assert (not b!3300342))

(assert (not bm!239904))

(assert (not d!923537))

(assert (not b!3300545))

(assert (not b!3300923))

(assert (not b!3300449))

(assert (not b!3300144))

(assert (not b!3300613))

(assert (not d!923463))

(assert (not b!3300448))

(assert (not b!3300270))

(assert (not b!3300391))

(assert (not d!923423))

(assert (not d!923621))

(assert (not b_next!87401))

(assert (not b!3300800))

(assert (not b!3300829))

(assert b_and!225885)

(assert (not b!3300855))

(assert (not bm!239931))

(assert (not b!3300551))

(assert (not b!3300831))

(assert (not b!3300218))

(assert (not d!923669))

(assert (not d!923643))

(assert b_and!225883)

(assert (not b!3300906))

(check-sat)

(pop 1)

(push 1)

(assert b_and!225887)

(assert (not b_next!87403))

(assert (not b_next!87381))

(assert (not b_next!87373))

(assert (not b_next!87399))

(assert (not b_next!87397))

(assert b_and!225889)

(assert b_and!225847)

(assert (not b_next!87379))

(assert b_and!225851)

(assert b_and!225883)

(assert b_and!225891)

(assert b_and!225895)

(assert b_and!225893)

(assert b_and!225849)

(assert (not b_next!87383))

(assert (not b_next!87377))

(assert (not b_next!87375))

(assert b_and!225885)

(assert (not b_next!87401))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!923733 () Bool)

(declare-fun lt!1118703 () Int)

(assert (=> d!923733 (>= lt!1118703 0)))

(declare-fun e!2052943 () Int)

(assert (=> d!923733 (= lt!1118703 e!2052943)))

(declare-fun c!559903 () Bool)

(assert (=> d!923733 (= c!559903 (is-Nil!36460 (_1!21111 lt!1118544)))))

(assert (=> d!923733 (= (size!27539 (_1!21111 lt!1118544)) lt!1118703)))

(declare-fun b!3301069 () Bool)

(assert (=> b!3301069 (= e!2052943 0)))

(declare-fun b!3301070 () Bool)

(assert (=> b!3301070 (= e!2052943 (+ 1 (size!27539 (t!252749 (_1!21111 lt!1118544)))))))

(assert (= (and d!923733 c!559903) b!3301069))

(assert (= (and d!923733 (not c!559903)) b!3301070))

(declare-fun m!3625095 () Bool)

(assert (=> b!3301070 m!3625095))

(assert (=> d!923525 d!923733))

(assert (=> d!923525 d!923521))

(declare-fun d!923735 () Bool)

(assert (=> d!923735 (= (isEmpty!20598 lt!1118262) (is-Nil!36459 lt!1118262))))

(assert (=> bm!239921 d!923735))

(declare-fun d!923737 () Bool)

(assert (=> d!923737 (= (inv!49407 (tag!5831 (rule!7785 (h!41880 (t!252749 tokens!494))))) (= (mod (str.len (value!171140 (tag!5831 (rule!7785 (h!41880 (t!252749 tokens!494)))))) 2) 0))))

(assert (=> b!3300953 d!923737))

(declare-fun d!923739 () Bool)

(declare-fun res!1338959 () Bool)

(declare-fun e!2052944 () Bool)

(assert (=> d!923739 (=> (not res!1338959) (not e!2052944))))

(assert (=> d!923739 (= res!1338959 (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))))))

(assert (=> d!923739 (= (inv!49411 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) e!2052944)))

(declare-fun b!3301071 () Bool)

(assert (=> b!3301071 (= e!2052944 (equivClasses!2083 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))))))

(assert (= (and d!923739 res!1338959) b!3301071))

(declare-fun m!3625097 () Bool)

(assert (=> d!923739 m!3625097))

(declare-fun m!3625099 () Bool)

(assert (=> b!3301071 m!3625099))

(assert (=> b!3300953 d!923739))

(declare-fun d!923741 () Bool)

(declare-fun res!1338964 () Bool)

(declare-fun e!2052949 () Bool)

(assert (=> d!923741 (=> res!1338964 e!2052949)))

(assert (=> d!923741 (= res!1338964 (is-Nil!36461 rules!2135))))

(assert (=> d!923741 (= (noDuplicateTag!1941 thiss!18206 rules!2135 Nil!36467) e!2052949)))

(declare-fun b!3301076 () Bool)

(declare-fun e!2052950 () Bool)

(assert (=> b!3301076 (= e!2052949 e!2052950)))

(declare-fun res!1338965 () Bool)

(assert (=> b!3301076 (=> (not res!1338965) (not e!2052950))))

(declare-fun contains!6588 (List!36591 String!40921) Bool)

(assert (=> b!3301076 (= res!1338965 (not (contains!6588 Nil!36467 (tag!5831 (h!41881 rules!2135)))))))

(declare-fun b!3301077 () Bool)

(assert (=> b!3301077 (= e!2052950 (noDuplicateTag!1941 thiss!18206 (t!252750 rules!2135) (Cons!36467 (tag!5831 (h!41881 rules!2135)) Nil!36467)))))

(assert (= (and d!923741 (not res!1338964)) b!3301076))

(assert (= (and b!3301076 res!1338965) b!3301077))

(declare-fun m!3625101 () Bool)

(assert (=> b!3301076 m!3625101))

(declare-fun m!3625103 () Bool)

(assert (=> b!3301077 m!3625103))

(assert (=> b!3300754 d!923741))

(declare-fun b!3301078 () Bool)

(declare-fun e!2052951 () List!36584)

(assert (=> b!3301078 (= e!2052951 Nil!36460)))

(declare-fun b!3301079 () Bool)

(declare-fun e!2052952 () Bool)

(declare-fun lt!1118704 () List!36584)

(assert (=> b!3301079 (= e!2052952 (forall!7541 lt!1118704 lambda!118850))))

(declare-fun b!3301080 () Bool)

(declare-fun e!2052953 () List!36584)

(declare-fun call!239957 () List!36584)

(assert (=> b!3301080 (= e!2052953 call!239957)))

(declare-fun b!3301081 () Bool)

(assert (=> b!3301081 (= e!2052951 e!2052953)))

(declare-fun c!559904 () Bool)

(assert (=> b!3301081 (= c!559904 (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))))

(declare-fun b!3301082 () Bool)

(assert (=> b!3301082 (= e!2052953 (Cons!36460 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))) call!239957))))

(declare-fun d!923743 () Bool)

(assert (=> d!923743 e!2052952))

(declare-fun res!1338967 () Bool)

(assert (=> d!923743 (=> (not res!1338967) (not e!2052952))))

(assert (=> d!923743 (= res!1338967 (<= (size!27539 lt!1118704) (size!27539 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))))

(assert (=> d!923743 (= lt!1118704 e!2052951)))

(declare-fun c!559905 () Bool)

(assert (=> d!923743 (= c!559905 (is-Nil!36460 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))))))

(assert (=> d!923743 (= (filter!527 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))) lambda!118850) lt!1118704)))

(declare-fun bm!239952 () Bool)

(assert (=> bm!239952 (= call!239957 (filter!527 (t!252749 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))) lambda!118850))))

(declare-fun b!3301083 () Bool)

(declare-fun res!1338966 () Bool)

(assert (=> b!3301083 (=> (not res!1338966) (not e!2052952))))

(assert (=> b!3301083 (= res!1338966 (set.subset (content!4959 lt!1118704) (content!4959 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))))

(assert (= (and d!923743 c!559905) b!3301078))

(assert (= (and d!923743 (not c!559905)) b!3301081))

(assert (= (and b!3301081 c!559904) b!3301082))

(assert (= (and b!3301081 (not c!559904)) b!3301080))

(assert (= (or b!3301082 b!3301080) bm!239952))

(assert (= (and d!923743 res!1338967) b!3301083))

(assert (= (and b!3301083 res!1338966) b!3301079))

(declare-fun b_lambda!92047 () Bool)

(assert (=> (not b_lambda!92047) (not b!3301081)))

(declare-fun m!3625105 () Bool)

(assert (=> d!923743 m!3625105))

(declare-fun m!3625107 () Bool)

(assert (=> d!923743 m!3625107))

(declare-fun m!3625109 () Bool)

(assert (=> b!3301081 m!3625109))

(declare-fun m!3625111 () Bool)

(assert (=> bm!239952 m!3625111))

(declare-fun m!3625113 () Bool)

(assert (=> b!3301079 m!3625113))

(declare-fun m!3625115 () Bool)

(assert (=> b!3301083 m!3625115))

(declare-fun m!3625117 () Bool)

(assert (=> b!3301083 m!3625117))

(assert (=> bm!239945 d!923743))

(declare-fun d!923745 () Bool)

(declare-fun res!1338968 () Bool)

(declare-fun e!2052954 () Bool)

(assert (=> d!923745 (=> res!1338968 e!2052954)))

(assert (=> d!923745 (= res!1338968 (is-Nil!36460 (list!13055 lt!1118251)))))

(assert (=> d!923745 (= (forall!7541 (list!13055 lt!1118251) lambda!118873) e!2052954)))

(declare-fun b!3301084 () Bool)

(declare-fun e!2052955 () Bool)

(assert (=> b!3301084 (= e!2052954 e!2052955)))

(declare-fun res!1338969 () Bool)

(assert (=> b!3301084 (=> (not res!1338969) (not e!2052955))))

(assert (=> b!3301084 (= res!1338969 (dynLambda!14914 lambda!118873 (h!41880 (list!13055 lt!1118251))))))

(declare-fun b!3301085 () Bool)

(assert (=> b!3301085 (= e!2052955 (forall!7541 (t!252749 (list!13055 lt!1118251)) lambda!118873))))

(assert (= (and d!923745 (not res!1338968)) b!3301084))

(assert (= (and b!3301084 res!1338969) b!3301085))

(declare-fun b_lambda!92049 () Bool)

(assert (=> (not b_lambda!92049) (not b!3301084)))

(declare-fun m!3625119 () Bool)

(assert (=> b!3301084 m!3625119))

(declare-fun m!3625121 () Bool)

(assert (=> b!3301085 m!3625121))

(assert (=> d!923499 d!923745))

(declare-fun d!923747 () Bool)

(assert (=> d!923747 (= (list!13055 lt!1118251) (list!13061 (c!559682 lt!1118251)))))

(declare-fun bs!548604 () Bool)

(assert (= bs!548604 d!923747))

(declare-fun m!3625123 () Bool)

(assert (=> bs!548604 m!3625123))

(assert (=> d!923499 d!923747))

(declare-fun d!923749 () Bool)

(declare-fun lt!1118707 () Bool)

(assert (=> d!923749 (= lt!1118707 (forall!7541 (list!13055 lt!1118251) lambda!118873))))

(declare-fun forall!7545 (Conc!10950 Int) Bool)

(assert (=> d!923749 (= lt!1118707 (forall!7545 (c!559682 lt!1118251) lambda!118873))))

(assert (=> d!923749 (= (forall!7544 lt!1118251 lambda!118873) lt!1118707)))

(declare-fun bs!548605 () Bool)

(assert (= bs!548605 d!923749))

(assert (=> bs!548605 m!3624297))

(assert (=> bs!548605 m!3624297))

(assert (=> bs!548605 m!3624299))

(declare-fun m!3625125 () Bool)

(assert (=> bs!548605 m!3625125))

(assert (=> d!923499 d!923749))

(assert (=> d!923499 d!923535))

(declare-fun d!923751 () Bool)

(declare-fun lt!1118708 () Int)

(assert (=> d!923751 (>= lt!1118708 0)))

(declare-fun e!2052956 () Int)

(assert (=> d!923751 (= lt!1118708 e!2052956)))

(declare-fun c!559906 () Bool)

(assert (=> d!923751 (= c!559906 (is-Nil!36459 (originalCharacters!6001 separatorToken!241)))))

(assert (=> d!923751 (= (size!27531 (originalCharacters!6001 separatorToken!241)) lt!1118708)))

(declare-fun b!3301086 () Bool)

(assert (=> b!3301086 (= e!2052956 0)))

(declare-fun b!3301087 () Bool)

(assert (=> b!3301087 (= e!2052956 (+ 1 (size!27531 (t!252748 (originalCharacters!6001 separatorToken!241)))))))

(assert (= (and d!923751 c!559906) b!3301086))

(assert (= (and d!923751 (not c!559906)) b!3301087))

(declare-fun m!3625127 () Bool)

(assert (=> b!3301087 m!3625127))

(assert (=> b!3300892 d!923751))

(declare-fun d!923753 () Bool)

(assert (=> d!923753 (= (isEmpty!20598 (tail!5258 lt!1118263)) (is-Nil!36459 (tail!5258 lt!1118263)))))

(assert (=> b!3300139 d!923753))

(declare-fun d!923755 () Bool)

(assert (=> d!923755 (= (tail!5258 lt!1118263) (t!252748 lt!1118263))))

(assert (=> b!3300139 d!923755))

(declare-fun d!923757 () Bool)

(declare-fun lt!1118711 () Int)

(assert (=> d!923757 (= lt!1118711 (size!27531 (list!13054 (_2!21113 lt!1118659))))))

(declare-fun size!27540 (Conc!10949) Int)

(assert (=> d!923757 (= lt!1118711 (size!27540 (c!559681 (_2!21113 lt!1118659))))))

(assert (=> d!923757 (= (size!27536 (_2!21113 lt!1118659)) lt!1118711)))

(declare-fun bs!548606 () Bool)

(assert (= bs!548606 d!923757))

(assert (=> bs!548606 m!3624937))

(assert (=> bs!548606 m!3624937))

(declare-fun m!3625129 () Bool)

(assert (=> bs!548606 m!3625129))

(declare-fun m!3625131 () Bool)

(assert (=> bs!548606 m!3625131))

(assert (=> b!3300905 d!923757))

(declare-fun d!923759 () Bool)

(declare-fun lt!1118712 () Int)

(assert (=> d!923759 (= lt!1118712 (size!27531 (list!13054 lt!1118255)))))

(assert (=> d!923759 (= lt!1118712 (size!27540 (c!559681 lt!1118255)))))

(assert (=> d!923759 (= (size!27536 lt!1118255) lt!1118712)))

(declare-fun bs!548607 () Bool)

(assert (= bs!548607 d!923759))

(assert (=> bs!548607 m!3623617))

(assert (=> bs!548607 m!3623617))

(declare-fun m!3625133 () Bool)

(assert (=> bs!548607 m!3625133))

(declare-fun m!3625135 () Bool)

(assert (=> bs!548607 m!3625135))

(assert (=> b!3300905 d!923759))

(declare-fun d!923761 () Bool)

(declare-fun c!559909 () Bool)

(assert (=> d!923761 (= c!559909 (is-Nil!36459 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(declare-fun e!2052959 () (Set C!20278))

(assert (=> d!923761 (= (content!4957 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))) e!2052959)))

(declare-fun b!3301092 () Bool)

(assert (=> b!3301092 (= e!2052959 (as set.empty (Set C!20278)))))

(declare-fun b!3301093 () Bool)

(assert (=> b!3301093 (= e!2052959 (set.union (set.insert (h!41879 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))) (as set.empty (Set C!20278))) (content!4957 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))

(assert (= (and d!923761 c!559909) b!3301092))

(assert (= (and d!923761 (not c!559909)) b!3301093))

(declare-fun m!3625137 () Bool)

(assert (=> b!3301093 m!3625137))

(declare-fun m!3625139 () Bool)

(assert (=> b!3301093 m!3625139))

(assert (=> d!923533 d!923761))

(declare-fun d!923763 () Bool)

(declare-fun charsToBigInt!0 (List!36582 Int) Int)

(assert (=> d!923763 (= (inv!15 (value!171141 (h!41880 tokens!494))) (= (charsToBigInt!0 (text!39068 (value!171141 (h!41880 tokens!494))) 0) (value!171136 (value!171141 (h!41880 tokens!494)))))))

(declare-fun bs!548608 () Bool)

(assert (= bs!548608 d!923763))

(declare-fun m!3625141 () Bool)

(assert (=> bs!548608 m!3625141))

(assert (=> b!3300835 d!923763))

(declare-fun e!2052961 () List!36583)

(declare-fun b!3301095 () Bool)

(assert (=> b!3301095 (= e!2052961 (Cons!36459 (h!41879 (ite c!559720 call!239907 call!239906)) (++!8815 (t!252748 (ite c!559720 call!239907 call!239906)) (ite c!559720 call!239906 call!239907))))))

(declare-fun b!3301094 () Bool)

(assert (=> b!3301094 (= e!2052961 (ite c!559720 call!239906 call!239907))))

(declare-fun b!3301096 () Bool)

(declare-fun res!1338970 () Bool)

(declare-fun e!2052960 () Bool)

(assert (=> b!3301096 (=> (not res!1338970) (not e!2052960))))

(declare-fun lt!1118713 () List!36583)

(assert (=> b!3301096 (= res!1338970 (= (size!27531 lt!1118713) (+ (size!27531 (ite c!559720 call!239907 call!239906)) (size!27531 (ite c!559720 call!239906 call!239907)))))))

(declare-fun d!923765 () Bool)

(assert (=> d!923765 e!2052960))

(declare-fun res!1338971 () Bool)

(assert (=> d!923765 (=> (not res!1338971) (not e!2052960))))

(assert (=> d!923765 (= res!1338971 (= (content!4957 lt!1118713) (set.union (content!4957 (ite c!559720 call!239907 call!239906)) (content!4957 (ite c!559720 call!239906 call!239907)))))))

(assert (=> d!923765 (= lt!1118713 e!2052961)))

(declare-fun c!559910 () Bool)

(assert (=> d!923765 (= c!559910 (is-Nil!36459 (ite c!559720 call!239907 call!239906)))))

(assert (=> d!923765 (= (++!8815 (ite c!559720 call!239907 call!239906) (ite c!559720 call!239906 call!239907)) lt!1118713)))

(declare-fun b!3301097 () Bool)

(assert (=> b!3301097 (= e!2052960 (or (not (= (ite c!559720 call!239906 call!239907) Nil!36459)) (= lt!1118713 (ite c!559720 call!239907 call!239906))))))

(assert (= (and d!923765 c!559910) b!3301094))

(assert (= (and d!923765 (not c!559910)) b!3301095))

(assert (= (and d!923765 res!1338971) b!3301096))

(assert (= (and b!3301096 res!1338970) b!3301097))

(declare-fun m!3625143 () Bool)

(assert (=> b!3301095 m!3625143))

(declare-fun m!3625145 () Bool)

(assert (=> b!3301096 m!3625145))

(declare-fun m!3625147 () Bool)

(assert (=> b!3301096 m!3625147))

(declare-fun m!3625149 () Bool)

(assert (=> b!3301096 m!3625149))

(declare-fun m!3625151 () Bool)

(assert (=> d!923765 m!3625151))

(declare-fun m!3625153 () Bool)

(assert (=> d!923765 m!3625153))

(declare-fun m!3625155 () Bool)

(assert (=> d!923765 m!3625155))

(assert (=> bm!239903 d!923765))

(declare-fun b!3301098 () Bool)

(declare-fun e!2052963 () Bool)

(assert (=> b!3301098 (= e!2052963 (nullable!3415 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun b!3301099 () Bool)

(declare-fun res!1338978 () Bool)

(declare-fun e!2052967 () Bool)

(assert (=> b!3301099 (=> (not res!1338978) (not e!2052967))))

(declare-fun call!239958 () Bool)

(assert (=> b!3301099 (= res!1338978 (not call!239958))))

(declare-fun b!3301100 () Bool)

(assert (=> b!3301100 (= e!2052963 (matchR!4668 (derivativeStep!2968 (regex!5287 (rule!7785 (h!41880 tokens!494))) (head!7120 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263))))) (tail!5258 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263))))))))

(declare-fun b!3301101 () Bool)

(declare-fun e!2052965 () Bool)

(declare-fun e!2052968 () Bool)

(assert (=> b!3301101 (= e!2052965 e!2052968)))

(declare-fun c!559913 () Bool)

(assert (=> b!3301101 (= c!559913 (is-EmptyLang!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun d!923767 () Bool)

(assert (=> d!923767 e!2052965))

(declare-fun c!559912 () Bool)

(assert (=> d!923767 (= c!559912 (is-EmptyExpr!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun lt!1118714 () Bool)

(assert (=> d!923767 (= lt!1118714 e!2052963)))

(declare-fun c!559911 () Bool)

(assert (=> d!923767 (= c!559911 (isEmpty!20598 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))

(assert (=> d!923767 (validRegex!4571 (regex!5287 (rule!7785 (h!41880 tokens!494))))))

(assert (=> d!923767 (= (matchR!4668 (regex!5287 (rule!7785 (h!41880 tokens!494))) (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))) lt!1118714)))

(declare-fun b!3301102 () Bool)

(declare-fun e!2052962 () Bool)

(assert (=> b!3301102 (= e!2052962 (not (= (head!7120 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))) (c!559680 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun b!3301103 () Bool)

(declare-fun res!1338974 () Bool)

(declare-fun e!2052966 () Bool)

(assert (=> b!3301103 (=> res!1338974 e!2052966)))

(assert (=> b!3301103 (= res!1338974 (not (is-ElementMatch!10046 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> b!3301103 (= e!2052968 e!2052966)))

(declare-fun b!3301104 () Bool)

(declare-fun res!1338972 () Bool)

(assert (=> b!3301104 (=> (not res!1338972) (not e!2052967))))

(assert (=> b!3301104 (= res!1338972 (isEmpty!20598 (tail!5258 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263))))))))

(declare-fun b!3301105 () Bool)

(declare-fun res!1338973 () Bool)

(assert (=> b!3301105 (=> res!1338973 e!2052966)))

(assert (=> b!3301105 (= res!1338973 e!2052967)))

(declare-fun res!1338975 () Bool)

(assert (=> b!3301105 (=> (not res!1338975) (not e!2052967))))

(assert (=> b!3301105 (= res!1338975 lt!1118714)))

(declare-fun b!3301106 () Bool)

(assert (=> b!3301106 (= e!2052965 (= lt!1118714 call!239958))))

(declare-fun bm!239953 () Bool)

(assert (=> bm!239953 (= call!239958 (isEmpty!20598 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))

(declare-fun b!3301107 () Bool)

(assert (=> b!3301107 (= e!2052967 (= (head!7120 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))) (c!559680 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(declare-fun b!3301108 () Bool)

(declare-fun e!2052964 () Bool)

(assert (=> b!3301108 (= e!2052966 e!2052964)))

(declare-fun res!1338976 () Bool)

(assert (=> b!3301108 (=> (not res!1338976) (not e!2052964))))

(assert (=> b!3301108 (= res!1338976 (not lt!1118714))))

(declare-fun b!3301109 () Bool)

(declare-fun res!1338979 () Bool)

(assert (=> b!3301109 (=> res!1338979 e!2052962)))

(assert (=> b!3301109 (= res!1338979 (not (isEmpty!20598 (tail!5258 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))))

(declare-fun b!3301110 () Bool)

(assert (=> b!3301110 (= e!2052968 (not lt!1118714))))

(declare-fun b!3301111 () Bool)

(assert (=> b!3301111 (= e!2052964 e!2052962)))

(declare-fun res!1338977 () Bool)

(assert (=> b!3301111 (=> res!1338977 e!2052962)))

(assert (=> b!3301111 (= res!1338977 call!239958)))

(assert (= (and d!923767 c!559911) b!3301098))

(assert (= (and d!923767 (not c!559911)) b!3301100))

(assert (= (and d!923767 c!559912) b!3301106))

(assert (= (and d!923767 (not c!559912)) b!3301101))

(assert (= (and b!3301101 c!559913) b!3301110))

(assert (= (and b!3301101 (not c!559913)) b!3301103))

(assert (= (and b!3301103 (not res!1338974)) b!3301105))

(assert (= (and b!3301105 res!1338975) b!3301099))

(assert (= (and b!3301099 res!1338978) b!3301104))

(assert (= (and b!3301104 res!1338972) b!3301107))

(assert (= (and b!3301105 (not res!1338973)) b!3301108))

(assert (= (and b!3301108 res!1338976) b!3301111))

(assert (= (and b!3301111 (not res!1338977)) b!3301109))

(assert (= (and b!3301109 (not res!1338979)) b!3301102))

(assert (= (or b!3301106 b!3301099 b!3301111) bm!239953))

(declare-fun m!3625157 () Bool)

(assert (=> b!3301104 m!3625157))

(assert (=> b!3301104 m!3625157))

(declare-fun m!3625159 () Bool)

(assert (=> b!3301104 m!3625159))

(declare-fun m!3625161 () Bool)

(assert (=> b!3301098 m!3625161))

(assert (=> bm!239953 m!3624067))

(declare-fun m!3625163 () Bool)

(assert (=> b!3301100 m!3625163))

(assert (=> b!3301100 m!3625163))

(declare-fun m!3625165 () Bool)

(assert (=> b!3301100 m!3625165))

(assert (=> b!3301100 m!3625157))

(assert (=> b!3301100 m!3625165))

(assert (=> b!3301100 m!3625157))

(declare-fun m!3625167 () Bool)

(assert (=> b!3301100 m!3625167))

(assert (=> b!3301102 m!3625163))

(assert (=> b!3301107 m!3625163))

(assert (=> b!3301109 m!3625157))

(assert (=> b!3301109 m!3625157))

(assert (=> b!3301109 m!3625159))

(assert (=> d!923767 m!3624067))

(declare-fun m!3625169 () Bool)

(assert (=> d!923767 m!3625169))

(assert (=> b!3300337 d!923767))

(declare-fun b!3301140 () Bool)

(declare-fun e!2052985 () tuple2!35966)

(assert (=> b!3301140 (= e!2052985 (tuple2!35967 Nil!36459 lt!1118263))))

(declare-fun call!239976 () Regex!10046)

(declare-fun call!239982 () List!36583)

(declare-fun call!239980 () tuple2!35966)

(declare-fun lt!1118776 () List!36583)

(declare-fun bm!239970 () Bool)

(assert (=> bm!239970 (= call!239980 (findLongestMatchInner!848 call!239976 lt!1118776 (+ (size!27531 Nil!36459) 1) call!239982 lt!1118263 (size!27531 lt!1118263)))))

(declare-fun bm!239971 () Bool)

(declare-fun call!239979 () C!20278)

(assert (=> bm!239971 (= call!239979 (head!7120 lt!1118263))))

(declare-fun b!3301141 () Bool)

(declare-fun e!2052992 () Unit!51389)

(declare-fun Unit!51398 () Unit!51389)

(assert (=> b!3301141 (= e!2052992 Unit!51398)))

(declare-fun d!923769 () Bool)

(declare-fun e!2052988 () Bool)

(assert (=> d!923769 e!2052988))

(declare-fun res!1338984 () Bool)

(assert (=> d!923769 (=> (not res!1338984) (not e!2052988))))

(declare-fun lt!1118784 () tuple2!35966)

(assert (=> d!923769 (= res!1338984 (= (++!8815 (_1!21117 lt!1118784) (_2!21117 lt!1118784)) lt!1118263))))

(declare-fun e!2052991 () tuple2!35966)

(assert (=> d!923769 (= lt!1118784 e!2052991)))

(declare-fun c!559931 () Bool)

(declare-fun lostCause!895 (Regex!10046) Bool)

(assert (=> d!923769 (= c!559931 (lostCause!895 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun lt!1118773 () Unit!51389)

(declare-fun Unit!51399 () Unit!51389)

(assert (=> d!923769 (= lt!1118773 Unit!51399)))

(assert (=> d!923769 (= (getSuffix!1411 lt!1118263 Nil!36459) lt!1118263)))

(declare-fun lt!1118783 () Unit!51389)

(declare-fun lt!1118797 () Unit!51389)

(assert (=> d!923769 (= lt!1118783 lt!1118797)))

(declare-fun lt!1118790 () List!36583)

(assert (=> d!923769 (= lt!1118263 lt!1118790)))

(declare-fun lemmaSamePrefixThenSameSuffix!1245 (List!36583 List!36583 List!36583 List!36583 List!36583) Unit!51389)

(assert (=> d!923769 (= lt!1118797 (lemmaSamePrefixThenSameSuffix!1245 Nil!36459 lt!1118263 Nil!36459 lt!1118790 lt!1118263))))

(assert (=> d!923769 (= lt!1118790 (getSuffix!1411 lt!1118263 Nil!36459))))

(declare-fun lt!1118785 () Unit!51389)

(declare-fun lt!1118775 () Unit!51389)

(assert (=> d!923769 (= lt!1118785 lt!1118775)))

(assert (=> d!923769 (isPrefix!2804 Nil!36459 (++!8815 Nil!36459 lt!1118263))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1779 (List!36583 List!36583) Unit!51389)

(assert (=> d!923769 (= lt!1118775 (lemmaConcatTwoListThenFirstIsPrefix!1779 Nil!36459 lt!1118263))))

(assert (=> d!923769 (validRegex!4571 (regex!5287 (rule!7785 (h!41880 tokens!494))))))

(assert (=> d!923769 (= (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)) lt!1118784)))

(declare-fun bm!239972 () Bool)

(declare-fun call!239977 () Bool)

(assert (=> bm!239972 (= call!239977 (nullable!3415 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun b!3301142 () Bool)

(declare-fun e!2052987 () tuple2!35966)

(declare-fun lt!1118787 () tuple2!35966)

(assert (=> b!3301142 (= e!2052987 lt!1118787)))

(declare-fun bm!239973 () Bool)

(assert (=> bm!239973 (= call!239976 (derivativeStep!2968 (regex!5287 (rule!7785 (h!41880 tokens!494))) call!239979))))

(declare-fun b!3301143 () Bool)

(assert (=> b!3301143 (= e!2052985 (tuple2!35967 Nil!36459 Nil!36459))))

(declare-fun b!3301144 () Bool)

(declare-fun e!2052986 () Bool)

(assert (=> b!3301144 (= e!2052988 e!2052986)))

(declare-fun res!1338985 () Bool)

(assert (=> b!3301144 (=> res!1338985 e!2052986)))

(assert (=> b!3301144 (= res!1338985 (isEmpty!20598 (_1!21117 lt!1118784)))))

(declare-fun b!3301145 () Bool)

(assert (=> b!3301145 (= e!2052991 (tuple2!35967 Nil!36459 lt!1118263))))

(declare-fun b!3301146 () Bool)

(declare-fun Unit!51400 () Unit!51389)

(assert (=> b!3301146 (= e!2052992 Unit!51400)))

(declare-fun lt!1118788 () Unit!51389)

(declare-fun call!239981 () Unit!51389)

(assert (=> b!3301146 (= lt!1118788 call!239981)))

(declare-fun call!239975 () Bool)

(assert (=> b!3301146 call!239975))

(declare-fun lt!1118778 () Unit!51389)

(assert (=> b!3301146 (= lt!1118778 lt!1118788)))

(declare-fun lt!1118772 () Unit!51389)

(declare-fun call!239978 () Unit!51389)

(assert (=> b!3301146 (= lt!1118772 call!239978)))

(assert (=> b!3301146 (= lt!1118263 Nil!36459)))

(declare-fun lt!1118791 () Unit!51389)

(assert (=> b!3301146 (= lt!1118791 lt!1118772)))

(assert (=> b!3301146 false))

(declare-fun b!3301147 () Bool)

(assert (=> b!3301147 (= e!2052987 (tuple2!35967 Nil!36459 lt!1118263))))

(declare-fun bm!239974 () Bool)

(assert (=> bm!239974 (= call!239975 (isPrefix!2804 lt!1118263 lt!1118263))))

(declare-fun bm!239975 () Bool)

(assert (=> bm!239975 (= call!239981 (lemmaIsPrefixRefl!1763 lt!1118263 lt!1118263))))

(declare-fun bm!239976 () Bool)

(assert (=> bm!239976 (= call!239982 (tail!5258 lt!1118263))))

(declare-fun b!3301148 () Bool)

(declare-fun c!559928 () Bool)

(assert (=> b!3301148 (= c!559928 call!239977)))

(declare-fun lt!1118789 () Unit!51389)

(declare-fun lt!1118782 () Unit!51389)

(assert (=> b!3301148 (= lt!1118789 lt!1118782)))

(assert (=> b!3301148 (= lt!1118263 Nil!36459)))

(assert (=> b!3301148 (= lt!1118782 call!239978)))

(declare-fun lt!1118777 () Unit!51389)

(declare-fun lt!1118792 () Unit!51389)

(assert (=> b!3301148 (= lt!1118777 lt!1118792)))

(assert (=> b!3301148 call!239975))

(assert (=> b!3301148 (= lt!1118792 call!239981)))

(declare-fun e!2052989 () tuple2!35966)

(assert (=> b!3301148 (= e!2052989 e!2052985)))

(declare-fun b!3301149 () Bool)

(assert (=> b!3301149 (= e!2052986 (>= (size!27531 (_1!21117 lt!1118784)) (size!27531 Nil!36459)))))

(declare-fun b!3301150 () Bool)

(assert (=> b!3301150 (= e!2052991 e!2052989)))

(declare-fun c!559926 () Bool)

(assert (=> b!3301150 (= c!559926 (= (size!27531 Nil!36459) (size!27531 lt!1118263)))))

(declare-fun b!3301151 () Bool)

(declare-fun e!2052990 () tuple2!35966)

(assert (=> b!3301151 (= e!2052990 e!2052987)))

(assert (=> b!3301151 (= lt!1118787 call!239980)))

(declare-fun c!559930 () Bool)

(assert (=> b!3301151 (= c!559930 (isEmpty!20598 (_1!21117 lt!1118787)))))

(declare-fun bm!239977 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!528 (List!36583 List!36583 List!36583) Unit!51389)

(assert (=> bm!239977 (= call!239978 (lemmaIsPrefixSameLengthThenSameList!528 lt!1118263 Nil!36459 lt!1118263))))

(declare-fun b!3301152 () Bool)

(declare-fun c!559927 () Bool)

(assert (=> b!3301152 (= c!559927 call!239977)))

(declare-fun lt!1118793 () Unit!51389)

(declare-fun lt!1118786 () Unit!51389)

(assert (=> b!3301152 (= lt!1118793 lt!1118786)))

(declare-fun lt!1118780 () C!20278)

(declare-fun lt!1118779 () List!36583)

(assert (=> b!3301152 (= (++!8815 (++!8815 Nil!36459 (Cons!36459 lt!1118780 Nil!36459)) lt!1118779) lt!1118263)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1133 (List!36583 C!20278 List!36583 List!36583) Unit!51389)

(assert (=> b!3301152 (= lt!1118786 (lemmaMoveElementToOtherListKeepsConcatEq!1133 Nil!36459 lt!1118780 lt!1118779 lt!1118263))))

(assert (=> b!3301152 (= lt!1118779 (tail!5258 lt!1118263))))

(assert (=> b!3301152 (= lt!1118780 (head!7120 lt!1118263))))

(declare-fun lt!1118794 () Unit!51389)

(declare-fun lt!1118781 () Unit!51389)

(assert (=> b!3301152 (= lt!1118794 lt!1118781)))

(assert (=> b!3301152 (isPrefix!2804 (++!8815 Nil!36459 (Cons!36459 (head!7120 (getSuffix!1411 lt!1118263 Nil!36459)) Nil!36459)) lt!1118263)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!521 (List!36583 List!36583) Unit!51389)

(assert (=> b!3301152 (= lt!1118781 (lemmaAddHeadSuffixToPrefixStillPrefix!521 Nil!36459 lt!1118263))))

(declare-fun lt!1118798 () Unit!51389)

(declare-fun lt!1118771 () Unit!51389)

(assert (=> b!3301152 (= lt!1118798 lt!1118771)))

(assert (=> b!3301152 (= lt!1118771 (lemmaAddHeadSuffixToPrefixStillPrefix!521 Nil!36459 lt!1118263))))

(assert (=> b!3301152 (= lt!1118776 (++!8815 Nil!36459 (Cons!36459 (head!7120 lt!1118263) Nil!36459)))))

(declare-fun lt!1118774 () Unit!51389)

(assert (=> b!3301152 (= lt!1118774 e!2052992)))

(declare-fun c!559929 () Bool)

(assert (=> b!3301152 (= c!559929 (= (size!27531 Nil!36459) (size!27531 lt!1118263)))))

(declare-fun lt!1118795 () Unit!51389)

(declare-fun lt!1118796 () Unit!51389)

(assert (=> b!3301152 (= lt!1118795 lt!1118796)))

(assert (=> b!3301152 (<= (size!27531 Nil!36459) (size!27531 lt!1118263))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!329 (List!36583 List!36583) Unit!51389)

(assert (=> b!3301152 (= lt!1118796 (lemmaIsPrefixThenSmallerEqSize!329 Nil!36459 lt!1118263))))

(assert (=> b!3301152 (= e!2052989 e!2052990)))

(declare-fun b!3301153 () Bool)

(assert (=> b!3301153 (= e!2052990 call!239980)))

(assert (= (and d!923769 c!559931) b!3301145))

(assert (= (and d!923769 (not c!559931)) b!3301150))

(assert (= (and b!3301150 c!559926) b!3301148))

(assert (= (and b!3301150 (not c!559926)) b!3301152))

(assert (= (and b!3301148 c!559928) b!3301143))

(assert (= (and b!3301148 (not c!559928)) b!3301140))

(assert (= (and b!3301152 c!559929) b!3301146))

(assert (= (and b!3301152 (not c!559929)) b!3301141))

(assert (= (and b!3301152 c!559927) b!3301151))

(assert (= (and b!3301152 (not c!559927)) b!3301153))

(assert (= (and b!3301151 c!559930) b!3301147))

(assert (= (and b!3301151 (not c!559930)) b!3301142))

(assert (= (or b!3301151 b!3301153) bm!239971))

(assert (= (or b!3301151 b!3301153) bm!239976))

(assert (= (or b!3301151 b!3301153) bm!239973))

(assert (= (or b!3301151 b!3301153) bm!239970))

(assert (= (or b!3301148 b!3301146) bm!239975))

(assert (= (or b!3301148 b!3301146) bm!239974))

(assert (= (or b!3301148 b!3301146) bm!239977))

(assert (= (or b!3301148 b!3301152) bm!239972))

(assert (= (and d!923769 res!1338984) b!3301144))

(assert (= (and b!3301144 (not res!1338985)) b!3301149))

(assert (=> bm!239972 m!3625161))

(declare-fun m!3625171 () Bool)

(assert (=> b!3301149 m!3625171))

(assert (=> b!3301149 m!3624051))

(declare-fun m!3625173 () Bool)

(assert (=> d!923769 m!3625173))

(declare-fun m!3625175 () Bool)

(assert (=> d!923769 m!3625175))

(assert (=> d!923769 m!3625169))

(declare-fun m!3625177 () Bool)

(assert (=> d!923769 m!3625177))

(assert (=> d!923769 m!3625173))

(declare-fun m!3625179 () Bool)

(assert (=> d!923769 m!3625179))

(declare-fun m!3625181 () Bool)

(assert (=> d!923769 m!3625181))

(declare-fun m!3625183 () Bool)

(assert (=> d!923769 m!3625183))

(declare-fun m!3625185 () Bool)

(assert (=> d!923769 m!3625185))

(assert (=> bm!239971 m!3623867))

(declare-fun m!3625187 () Bool)

(assert (=> b!3301151 m!3625187))

(declare-fun m!3625189 () Bool)

(assert (=> b!3301144 m!3625189))

(declare-fun m!3625191 () Bool)

(assert (=> bm!239977 m!3625191))

(assert (=> bm!239970 m!3623543))

(declare-fun m!3625193 () Bool)

(assert (=> bm!239970 m!3625193))

(declare-fun m!3625195 () Bool)

(assert (=> b!3301152 m!3625195))

(declare-fun m!3625197 () Bool)

(assert (=> b!3301152 m!3625197))

(assert (=> b!3301152 m!3623859))

(declare-fun m!3625199 () Bool)

(assert (=> b!3301152 m!3625199))

(assert (=> b!3301152 m!3625179))

(declare-fun m!3625201 () Bool)

(assert (=> b!3301152 m!3625201))

(declare-fun m!3625203 () Bool)

(assert (=> b!3301152 m!3625203))

(declare-fun m!3625205 () Bool)

(assert (=> b!3301152 m!3625205))

(assert (=> b!3301152 m!3623543))

(assert (=> b!3301152 m!3625179))

(declare-fun m!3625207 () Bool)

(assert (=> b!3301152 m!3625207))

(declare-fun m!3625209 () Bool)

(assert (=> b!3301152 m!3625209))

(assert (=> b!3301152 m!3625203))

(assert (=> b!3301152 m!3623867))

(declare-fun m!3625211 () Bool)

(assert (=> b!3301152 m!3625211))

(assert (=> b!3301152 m!3625207))

(assert (=> b!3301152 m!3624051))

(declare-fun m!3625213 () Bool)

(assert (=> bm!239974 m!3625213))

(assert (=> bm!239976 m!3623859))

(declare-fun m!3625215 () Bool)

(assert (=> bm!239975 m!3625215))

(declare-fun m!3625217 () Bool)

(assert (=> bm!239973 m!3625217))

(assert (=> b!3300337 d!923769))

(declare-fun d!923771 () Bool)

(declare-fun lt!1118799 () Int)

(assert (=> d!923771 (>= lt!1118799 0)))

(declare-fun e!2052993 () Int)

(assert (=> d!923771 (= lt!1118799 e!2052993)))

(declare-fun c!559932 () Bool)

(assert (=> d!923771 (= c!559932 (is-Nil!36459 Nil!36459))))

(assert (=> d!923771 (= (size!27531 Nil!36459) lt!1118799)))

(declare-fun b!3301154 () Bool)

(assert (=> b!3301154 (= e!2052993 0)))

(declare-fun b!3301155 () Bool)

(assert (=> b!3301155 (= e!2052993 (+ 1 (size!27531 (t!252748 Nil!36459))))))

(assert (= (and d!923771 c!559932) b!3301154))

(assert (= (and d!923771 (not c!559932)) b!3301155))

(declare-fun m!3625219 () Bool)

(assert (=> b!3301155 m!3625219))

(assert (=> b!3300337 d!923771))

(assert (=> b!3300337 d!923413))

(declare-fun b!3301166 () Bool)

(declare-fun e!2052999 () List!36583)

(declare-fun list!13062 (IArray!21903) List!36583)

(assert (=> b!3301166 (= e!2052999 (list!13062 (xs!14087 (c!559681 (charsOf!3303 separatorToken!241)))))))

(declare-fun b!3301165 () Bool)

(declare-fun e!2052998 () List!36583)

(assert (=> b!3301165 (= e!2052998 e!2052999)))

(declare-fun c!559938 () Bool)

(assert (=> b!3301165 (= c!559938 (is-Leaf!17204 (c!559681 (charsOf!3303 separatorToken!241))))))

(declare-fun d!923773 () Bool)

(declare-fun c!559937 () Bool)

(assert (=> d!923773 (= c!559937 (is-Empty!10949 (c!559681 (charsOf!3303 separatorToken!241))))))

(assert (=> d!923773 (= (list!13059 (c!559681 (charsOf!3303 separatorToken!241))) e!2052998)))

(declare-fun b!3301164 () Bool)

(assert (=> b!3301164 (= e!2052998 Nil!36459)))

(declare-fun b!3301167 () Bool)

(assert (=> b!3301167 (= e!2052999 (++!8815 (list!13059 (left!28395 (c!559681 (charsOf!3303 separatorToken!241)))) (list!13059 (right!28725 (c!559681 (charsOf!3303 separatorToken!241))))))))

(assert (= (and d!923773 c!559937) b!3301164))

(assert (= (and d!923773 (not c!559937)) b!3301165))

(assert (= (and b!3301165 c!559938) b!3301166))

(assert (= (and b!3301165 (not c!559938)) b!3301167))

(declare-fun m!3625221 () Bool)

(assert (=> b!3301166 m!3625221))

(declare-fun m!3625223 () Bool)

(assert (=> b!3301167 m!3625223))

(declare-fun m!3625225 () Bool)

(assert (=> b!3301167 m!3625225))

(assert (=> b!3301167 m!3625223))

(assert (=> b!3301167 m!3625225))

(declare-fun m!3625227 () Bool)

(assert (=> b!3301167 m!3625227))

(assert (=> d!923651 d!923773))

(declare-fun d!923775 () Bool)

(assert (=> d!923775 (= (isEmpty!20598 lt!1118263) (is-Nil!36459 lt!1118263))))

(assert (=> d!923403 d!923775))

(declare-fun call!239990 () Bool)

(declare-fun c!559944 () Bool)

(declare-fun c!559943 () Bool)

(declare-fun bm!239984 () Bool)

(assert (=> bm!239984 (= call!239990 (validRegex!4571 (ite c!559944 (reg!10375 (regex!5287 lt!1118273)) (ite c!559943 (regTwo!20605 (regex!5287 lt!1118273)) (regTwo!20604 (regex!5287 lt!1118273))))))))

(declare-fun b!3301186 () Bool)

(declare-fun res!1338996 () Bool)

(declare-fun e!2053014 () Bool)

(assert (=> b!3301186 (=> (not res!1338996) (not e!2053014))))

(declare-fun call!239991 () Bool)

(assert (=> b!3301186 (= res!1338996 call!239991)))

(declare-fun e!2053015 () Bool)

(assert (=> b!3301186 (= e!2053015 e!2053014)))

(declare-fun b!3301187 () Bool)

(declare-fun call!239989 () Bool)

(assert (=> b!3301187 (= e!2053014 call!239989)))

(declare-fun b!3301188 () Bool)

(declare-fun e!2053020 () Bool)

(assert (=> b!3301188 (= e!2053020 call!239989)))

(declare-fun b!3301189 () Bool)

(declare-fun res!1338997 () Bool)

(declare-fun e!2053018 () Bool)

(assert (=> b!3301189 (=> res!1338997 e!2053018)))

(assert (=> b!3301189 (= res!1338997 (not (is-Concat!15563 (regex!5287 lt!1118273))))))

(assert (=> b!3301189 (= e!2053015 e!2053018)))

(declare-fun bm!239985 () Bool)

(assert (=> bm!239985 (= call!239991 (validRegex!4571 (ite c!559943 (regOne!20605 (regex!5287 lt!1118273)) (regOne!20604 (regex!5287 lt!1118273)))))))

(declare-fun d!923777 () Bool)

(declare-fun res!1338999 () Bool)

(declare-fun e!2053016 () Bool)

(assert (=> d!923777 (=> res!1338999 e!2053016)))

(assert (=> d!923777 (= res!1338999 (is-ElementMatch!10046 (regex!5287 lt!1118273)))))

(assert (=> d!923777 (= (validRegex!4571 (regex!5287 lt!1118273)) e!2053016)))

(declare-fun bm!239986 () Bool)

(assert (=> bm!239986 (= call!239989 call!239990)))

(declare-fun b!3301190 () Bool)

(assert (=> b!3301190 (= e!2053018 e!2053020)))

(declare-fun res!1339000 () Bool)

(assert (=> b!3301190 (=> (not res!1339000) (not e!2053020))))

(assert (=> b!3301190 (= res!1339000 call!239991)))

(declare-fun b!3301191 () Bool)

(declare-fun e!2053017 () Bool)

(assert (=> b!3301191 (= e!2053017 call!239990)))

(declare-fun b!3301192 () Bool)

(declare-fun e!2053019 () Bool)

(assert (=> b!3301192 (= e!2053016 e!2053019)))

(assert (=> b!3301192 (= c!559944 (is-Star!10046 (regex!5287 lt!1118273)))))

(declare-fun b!3301193 () Bool)

(assert (=> b!3301193 (= e!2053019 e!2053015)))

(assert (=> b!3301193 (= c!559943 (is-Union!10046 (regex!5287 lt!1118273)))))

(declare-fun b!3301194 () Bool)

(assert (=> b!3301194 (= e!2053019 e!2053017)))

(declare-fun res!1338998 () Bool)

(assert (=> b!3301194 (= res!1338998 (not (nullable!3415 (reg!10375 (regex!5287 lt!1118273)))))))

(assert (=> b!3301194 (=> (not res!1338998) (not e!2053017))))

(assert (= (and d!923777 (not res!1338999)) b!3301192))

(assert (= (and b!3301192 c!559944) b!3301194))

(assert (= (and b!3301192 (not c!559944)) b!3301193))

(assert (= (and b!3301194 res!1338998) b!3301191))

(assert (= (and b!3301193 c!559943) b!3301186))

(assert (= (and b!3301193 (not c!559943)) b!3301189))

(assert (= (and b!3301186 res!1338996) b!3301187))

(assert (= (and b!3301189 (not res!1338997)) b!3301190))

(assert (= (and b!3301190 res!1339000) b!3301188))

(assert (= (or b!3301187 b!3301188) bm!239986))

(assert (= (or b!3301186 b!3301190) bm!239985))

(assert (= (or b!3301191 bm!239986) bm!239984))

(declare-fun m!3625229 () Bool)

(assert (=> bm!239984 m!3625229))

(declare-fun m!3625231 () Bool)

(assert (=> bm!239985 m!3625231))

(declare-fun m!3625233 () Bool)

(assert (=> b!3301194 m!3625233))

(assert (=> d!923403 d!923777))

(declare-fun d!923779 () Bool)

(declare-fun lt!1118802 () Bool)

(declare-fun content!4961 (List!36585) (Set Rule!10374))

(assert (=> d!923779 (= lt!1118802 (set.member (get!11634 lt!1118418) (content!4961 rules!2135)))))

(declare-fun e!2053026 () Bool)

(assert (=> d!923779 (= lt!1118802 e!2053026)))

(declare-fun res!1339006 () Bool)

(assert (=> d!923779 (=> (not res!1339006) (not e!2053026))))

(assert (=> d!923779 (= res!1339006 (is-Cons!36461 rules!2135))))

(assert (=> d!923779 (= (contains!6585 rules!2135 (get!11634 lt!1118418)) lt!1118802)))

(declare-fun b!3301199 () Bool)

(declare-fun e!2053025 () Bool)

(assert (=> b!3301199 (= e!2053026 e!2053025)))

(declare-fun res!1339005 () Bool)

(assert (=> b!3301199 (=> res!1339005 e!2053025)))

(assert (=> b!3301199 (= res!1339005 (= (h!41881 rules!2135) (get!11634 lt!1118418)))))

(declare-fun b!3301200 () Bool)

(assert (=> b!3301200 (= e!2053025 (contains!6585 (t!252750 rules!2135) (get!11634 lt!1118418)))))

(assert (= (and d!923779 res!1339006) b!3301199))

(assert (= (and b!3301199 (not res!1339005)) b!3301200))

(declare-fun m!3625235 () Bool)

(assert (=> d!923779 m!3625235))

(assert (=> d!923779 m!3623981))

(declare-fun m!3625237 () Bool)

(assert (=> d!923779 m!3625237))

(assert (=> b!3301200 m!3623981))

(declare-fun m!3625239 () Bool)

(assert (=> b!3301200 m!3625239))

(assert (=> b!3300270 d!923779))

(declare-fun d!923781 () Bool)

(assert (=> d!923781 (= (get!11634 lt!1118418) (v!36015 lt!1118418))))

(assert (=> b!3300270 d!923781))

(declare-fun d!923783 () Bool)

(declare-fun res!1339007 () Bool)

(declare-fun e!2053027 () Bool)

(assert (=> d!923783 (=> res!1339007 e!2053027)))

(assert (=> d!923783 (= res!1339007 (is-Nil!36460 lt!1118497))))

(assert (=> d!923783 (= (forall!7541 lt!1118497 lambda!118850) e!2053027)))

(declare-fun b!3301201 () Bool)

(declare-fun e!2053028 () Bool)

(assert (=> b!3301201 (= e!2053027 e!2053028)))

(declare-fun res!1339008 () Bool)

(assert (=> b!3301201 (=> (not res!1339008) (not e!2053028))))

(assert (=> b!3301201 (= res!1339008 (dynLambda!14914 lambda!118850 (h!41880 lt!1118497)))))

(declare-fun b!3301202 () Bool)

(assert (=> b!3301202 (= e!2053028 (forall!7541 (t!252749 lt!1118497) lambda!118850))))

(assert (= (and d!923783 (not res!1339007)) b!3301201))

(assert (= (and b!3301201 res!1339008) b!3301202))

(declare-fun b_lambda!92051 () Bool)

(assert (=> (not b_lambda!92051) (not b!3301201)))

(declare-fun m!3625241 () Bool)

(assert (=> b!3301201 m!3625241))

(declare-fun m!3625243 () Bool)

(assert (=> b!3301202 m!3625243))

(assert (=> b!3300409 d!923783))

(declare-fun d!923785 () Bool)

(declare-fun c!559945 () Bool)

(assert (=> d!923785 (= c!559945 (is-Nil!36459 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))))))

(declare-fun e!2053029 () (Set C!20278))

(assert (=> d!923785 (= (content!4957 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))) e!2053029)))

(declare-fun b!3301203 () Bool)

(assert (=> b!3301203 (= e!2053029 (as set.empty (Set C!20278)))))

(declare-fun b!3301204 () Bool)

(assert (=> b!3301204 (= e!2053029 (set.union (set.insert (h!41879 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))) (as set.empty (Set C!20278))) (content!4957 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))))))))

(assert (= (and d!923785 c!559945) b!3301203))

(assert (= (and d!923785 (not c!559945)) b!3301204))

(declare-fun m!3625245 () Bool)

(assert (=> b!3301204 m!3625245))

(declare-fun m!3625247 () Bool)

(assert (=> b!3301204 m!3625247))

(assert (=> d!923411 d!923785))

(declare-fun d!923787 () Bool)

(declare-fun nullableFct!981 (Regex!10046) Bool)

(assert (=> d!923787 (= (nullable!3415 (regex!5287 lt!1118261)) (nullableFct!981 (regex!5287 lt!1118261)))))

(declare-fun bs!548609 () Bool)

(assert (= bs!548609 d!923787))

(declare-fun m!3625249 () Bool)

(assert (=> bs!548609 m!3625249))

(assert (=> b!3300382 d!923787))

(declare-fun d!923789 () Bool)

(assert (=> d!923789 (= (get!11634 lt!1118397) (v!36015 lt!1118397))))

(assert (=> b!3300185 d!923789))

(declare-fun d!923791 () Bool)

(assert (=> d!923791 (= (list!13054 (_2!21113 lt!1118624)) (list!13059 (c!559681 (_2!21113 lt!1118624))))))

(declare-fun bs!548610 () Bool)

(assert (= bs!548610 d!923791))

(declare-fun m!3625251 () Bool)

(assert (=> bs!548610 m!3625251))

(assert (=> b!3300829 d!923791))

(declare-fun b!3301205 () Bool)

(declare-fun e!2053032 () tuple2!35954)

(assert (=> b!3301205 (= e!2053032 (tuple2!35955 Nil!36460 (list!13054 lt!1118258)))))

(declare-fun b!3301207 () Bool)

(declare-fun lt!1118803 () Option!7269)

(declare-fun lt!1118805 () tuple2!35954)

(assert (=> b!3301207 (= e!2053032 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118803)) (_1!21111 lt!1118805)) (_2!21111 lt!1118805)))))

(assert (=> b!3301207 (= lt!1118805 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118803))))))

(declare-fun b!3301208 () Bool)

(declare-fun e!2053030 () Bool)

(declare-fun lt!1118804 () tuple2!35954)

(assert (=> b!3301208 (= e!2053030 (= (_2!21111 lt!1118804) (list!13054 lt!1118258)))))

(declare-fun b!3301209 () Bool)

(declare-fun e!2053031 () Bool)

(assert (=> b!3301209 (= e!2053030 e!2053031)))

(declare-fun res!1339009 () Bool)

(assert (=> b!3301209 (= res!1339009 (< (size!27531 (_2!21111 lt!1118804)) (size!27531 (list!13054 lt!1118258))))))

(assert (=> b!3301209 (=> (not res!1339009) (not e!2053031))))

(declare-fun b!3301206 () Bool)

(assert (=> b!3301206 (= e!2053031 (not (isEmpty!20599 (_1!21111 lt!1118804))))))

(declare-fun d!923793 () Bool)

(assert (=> d!923793 e!2053030))

(declare-fun c!559946 () Bool)

(assert (=> d!923793 (= c!559946 (> (size!27539 (_1!21111 lt!1118804)) 0))))

(assert (=> d!923793 (= lt!1118804 e!2053032)))

(declare-fun c!559947 () Bool)

(assert (=> d!923793 (= c!559947 (is-Some!7268 lt!1118803))))

(assert (=> d!923793 (= lt!1118803 (maxPrefix!2504 thiss!18206 rules!2135 (list!13054 lt!1118258)))))

(assert (=> d!923793 (= (lexList!1350 thiss!18206 rules!2135 (list!13054 lt!1118258)) lt!1118804)))

(assert (= (and d!923793 c!559947) b!3301207))

(assert (= (and d!923793 (not c!559947)) b!3301205))

(assert (= (and d!923793 c!559946) b!3301209))

(assert (= (and d!923793 (not c!559946)) b!3301208))

(assert (= (and b!3301209 res!1339009) b!3301206))

(declare-fun m!3625253 () Bool)

(assert (=> b!3301207 m!3625253))

(declare-fun m!3625255 () Bool)

(assert (=> b!3301209 m!3625255))

(assert (=> b!3301209 m!3624783))

(declare-fun m!3625257 () Bool)

(assert (=> b!3301209 m!3625257))

(declare-fun m!3625259 () Bool)

(assert (=> b!3301206 m!3625259))

(declare-fun m!3625261 () Bool)

(assert (=> d!923793 m!3625261))

(assert (=> d!923793 m!3624783))

(declare-fun m!3625263 () Bool)

(assert (=> d!923793 m!3625263))

(assert (=> b!3300829 d!923793))

(declare-fun d!923795 () Bool)

(assert (=> d!923795 (= (list!13054 lt!1118258) (list!13059 (c!559681 lt!1118258)))))

(declare-fun bs!548611 () Bool)

(assert (= bs!548611 d!923795))

(declare-fun m!3625265 () Bool)

(assert (=> bs!548611 m!3625265))

(assert (=> b!3300829 d!923795))

(declare-fun d!923797 () Bool)

(assert (=> d!923797 (= (isEmpty!20599 (_1!21111 lt!1118505)) (is-Nil!36460 (_1!21111 lt!1118505)))))

(assert (=> b!3300425 d!923797))

(declare-fun d!923799 () Bool)

(assert (=> d!923799 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))) (list!13059 (c!559681 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))))))

(declare-fun bs!548612 () Bool)

(assert (= bs!548612 d!923799))

(declare-fun m!3625267 () Bool)

(assert (=> bs!548612 m!3625267))

(assert (=> b!3300545 d!923799))

(declare-fun d!923801 () Bool)

(declare-fun lt!1118806 () BalanceConc!21512)

(assert (=> d!923801 (= (list!13054 lt!1118806) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535))))))

(assert (=> d!923801 (= lt!1118806 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))) (value!171141 (_1!21112 (get!11636 lt!1118535)))))))

(assert (=> d!923801 (= (charsOf!3303 (_1!21112 (get!11636 lt!1118535))) lt!1118806)))

(declare-fun b_lambda!92053 () Bool)

(assert (=> (not b_lambda!92053) (not d!923801)))

(declare-fun tb!170915 () Bool)

(declare-fun t!252835 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252835) tb!170915))

(declare-fun b!3301210 () Bool)

(declare-fun e!2053033 () Bool)

(declare-fun tp!1033803 () Bool)

(assert (=> b!3301210 (= e!2053033 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))) (value!171141 (_1!21112 (get!11636 lt!1118535)))))) tp!1033803))))

(declare-fun result!213668 () Bool)

(assert (=> tb!170915 (= result!213668 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))) (value!171141 (_1!21112 (get!11636 lt!1118535))))) e!2053033))))

(assert (= tb!170915 b!3301210))

(declare-fun m!3625269 () Bool)

(assert (=> b!3301210 m!3625269))

(declare-fun m!3625271 () Bool)

(assert (=> tb!170915 m!3625271))

(assert (=> d!923801 t!252835))

(declare-fun b_and!225911 () Bool)

(assert (= b_and!225891 (and (=> t!252835 result!213668) b_and!225911)))

(declare-fun t!252837 () Bool)

(declare-fun tb!170917 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252837) tb!170917))

(declare-fun result!213670 () Bool)

(assert (= result!213670 result!213668))

(assert (=> d!923801 t!252837))

(declare-fun b_and!225913 () Bool)

(assert (= b_and!225887 (and (=> t!252837 result!213670) b_and!225913)))

(declare-fun t!252839 () Bool)

(declare-fun tb!170919 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252839) tb!170919))

(declare-fun result!213672 () Bool)

(assert (= result!213672 result!213668))

(assert (=> d!923801 t!252839))

(declare-fun b_and!225915 () Bool)

(assert (= b_and!225883 (and (=> t!252839 result!213672) b_and!225915)))

(declare-fun t!252841 () Bool)

(declare-fun tb!170921 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252841) tb!170921))

(declare-fun result!213674 () Bool)

(assert (= result!213674 result!213668))

(assert (=> d!923801 t!252841))

(declare-fun b_and!225917 () Bool)

(assert (= b_and!225895 (and (=> t!252841 result!213674) b_and!225917)))

(declare-fun tb!170923 () Bool)

(declare-fun t!252843 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252843) tb!170923))

(declare-fun result!213676 () Bool)

(assert (= result!213676 result!213668))

(assert (=> d!923801 t!252843))

(declare-fun b_and!225919 () Bool)

(assert (= b_and!225885 (and (=> t!252843 result!213676) b_and!225919)))

(declare-fun m!3625273 () Bool)

(assert (=> d!923801 m!3625273))

(declare-fun m!3625275 () Bool)

(assert (=> d!923801 m!3625275))

(assert (=> b!3300545 d!923801))

(declare-fun d!923803 () Bool)

(assert (=> d!923803 (= (get!11636 lt!1118535) (v!36014 lt!1118535))))

(assert (=> b!3300545 d!923803))

(declare-fun d!923805 () Bool)

(declare-fun lt!1118809 () Bool)

(assert (=> d!923805 (= lt!1118809 (isEmpty!20598 (list!13054 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)))))))))

(declare-fun isEmpty!20612 (Conc!10949) Bool)

(assert (=> d!923805 (= lt!1118809 (isEmpty!20612 (c!559681 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)))))))))

(assert (=> d!923805 (= (isEmpty!20609 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241))))) lt!1118809)))

(declare-fun bs!548613 () Bool)

(assert (= bs!548613 d!923805))

(declare-fun m!3625277 () Bool)

(assert (=> bs!548613 m!3625277))

(assert (=> bs!548613 m!3625277))

(declare-fun m!3625279 () Bool)

(assert (=> bs!548613 m!3625279))

(declare-fun m!3625281 () Bool)

(assert (=> bs!548613 m!3625281))

(assert (=> b!3300751 d!923805))

(declare-fun b!3301211 () Bool)

(declare-fun e!2053035 () Bool)

(declare-fun lt!1118810 () tuple2!35958)

(assert (=> b!3301211 (= e!2053035 (not (isEmpty!20597 (_1!21113 lt!1118810))))))

(declare-fun d!923807 () Bool)

(declare-fun e!2053034 () Bool)

(assert (=> d!923807 e!2053034))

(declare-fun res!1339010 () Bool)

(assert (=> d!923807 (=> (not res!1339010) (not e!2053034))))

(declare-fun e!2053036 () Bool)

(assert (=> d!923807 (= res!1339010 e!2053036)))

(declare-fun c!559948 () Bool)

(assert (=> d!923807 (= c!559948 (> (size!27538 (_1!21113 lt!1118810)) 0))))

(assert (=> d!923807 (= lt!1118810 (lexTailRecV2!961 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)) (BalanceConc!21513 Empty!10949) (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)) (BalanceConc!21515 Empty!10950)))))

(assert (=> d!923807 (= (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241))) lt!1118810)))

(declare-fun b!3301212 () Bool)

(assert (=> b!3301212 (= e!2053036 (= (_2!21113 lt!1118810) (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241))))))

(declare-fun b!3301213 () Bool)

(assert (=> b!3301213 (= e!2053036 e!2053035)))

(declare-fun res!1339012 () Bool)

(assert (=> b!3301213 (= res!1339012 (< (size!27536 (_2!21113 lt!1118810)) (size!27536 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)))))))

(assert (=> b!3301213 (=> (not res!1339012) (not e!2053035))))

(declare-fun b!3301214 () Bool)

(assert (=> b!3301214 (= e!2053034 (= (list!13054 (_2!21113 lt!1118810)) (_2!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)))))))))

(declare-fun b!3301215 () Bool)

(declare-fun res!1339011 () Bool)

(assert (=> b!3301215 (=> (not res!1339011) (not e!2053034))))

(assert (=> b!3301215 (= res!1339011 (= (list!13055 (_1!21113 lt!1118810)) (_1!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)))))))))

(assert (= (and d!923807 c!559948) b!3301213))

(assert (= (and d!923807 (not c!559948)) b!3301212))

(assert (= (and b!3301213 res!1339012) b!3301211))

(assert (= (and d!923807 res!1339010) b!3301215))

(assert (= (and b!3301215 res!1339011) b!3301214))

(declare-fun m!3625283 () Bool)

(assert (=> b!3301213 m!3625283))

(assert (=> b!3301213 m!3624651))

(declare-fun m!3625285 () Bool)

(assert (=> b!3301213 m!3625285))

(declare-fun m!3625287 () Bool)

(assert (=> d!923807 m!3625287))

(assert (=> d!923807 m!3624651))

(assert (=> d!923807 m!3624651))

(declare-fun m!3625289 () Bool)

(assert (=> d!923807 m!3625289))

(declare-fun m!3625291 () Bool)

(assert (=> b!3301211 m!3625291))

(declare-fun m!3625293 () Bool)

(assert (=> b!3301214 m!3625293))

(assert (=> b!3301214 m!3624651))

(declare-fun m!3625295 () Bool)

(assert (=> b!3301214 m!3625295))

(assert (=> b!3301214 m!3625295))

(declare-fun m!3625297 () Bool)

(assert (=> b!3301214 m!3625297))

(declare-fun m!3625299 () Bool)

(assert (=> b!3301215 m!3625299))

(assert (=> b!3301215 m!3624651))

(assert (=> b!3301215 m!3625295))

(assert (=> b!3301215 m!3625295))

(assert (=> b!3301215 m!3625297))

(assert (=> b!3300751 d!923807))

(declare-fun d!923809 () Bool)

(declare-fun lt!1118811 () BalanceConc!21512)

(assert (=> d!923809 (= (list!13054 lt!1118811) (printList!1426 thiss!18206 (list!13055 (singletonSeq!2383 separatorToken!241))))))

(assert (=> d!923809 (= lt!1118811 (printTailRec!1373 thiss!18206 (singletonSeq!2383 separatorToken!241) 0 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!923809 (= (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)) lt!1118811)))

(declare-fun bs!548614 () Bool)

(assert (= bs!548614 d!923809))

(declare-fun m!3625301 () Bool)

(assert (=> bs!548614 m!3625301))

(assert (=> bs!548614 m!3624645))

(assert (=> bs!548614 m!3624647))

(assert (=> bs!548614 m!3624647))

(declare-fun m!3625303 () Bool)

(assert (=> bs!548614 m!3625303))

(assert (=> bs!548614 m!3624645))

(declare-fun m!3625305 () Bool)

(assert (=> bs!548614 m!3625305))

(assert (=> b!3300751 d!923809))

(declare-fun d!923811 () Bool)

(declare-fun e!2053037 () Bool)

(assert (=> d!923811 e!2053037))

(declare-fun res!1339013 () Bool)

(assert (=> d!923811 (=> (not res!1339013) (not e!2053037))))

(declare-fun lt!1118812 () BalanceConc!21514)

(assert (=> d!923811 (= res!1339013 (= (list!13055 lt!1118812) (Cons!36460 separatorToken!241 Nil!36460)))))

(assert (=> d!923811 (= lt!1118812 (singleton!1023 separatorToken!241))))

(assert (=> d!923811 (= (singletonSeq!2383 separatorToken!241) lt!1118812)))

(declare-fun b!3301216 () Bool)

(assert (=> b!3301216 (= e!2053037 (isBalanced!3268 (c!559682 lt!1118812)))))

(assert (= (and d!923811 res!1339013) b!3301216))

(declare-fun m!3625307 () Bool)

(assert (=> d!923811 m!3625307))

(declare-fun m!3625309 () Bool)

(assert (=> d!923811 m!3625309))

(declare-fun m!3625311 () Bool)

(assert (=> b!3301216 m!3625311))

(assert (=> b!3300751 d!923811))

(declare-fun d!923813 () Bool)

(declare-fun lt!1118813 () Bool)

(assert (=> d!923813 (= lt!1118813 (set.member lt!1118269 (content!4957 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))))))))

(declare-fun e!2053039 () Bool)

(assert (=> d!923813 (= lt!1118813 e!2053039)))

(declare-fun res!1339014 () Bool)

(assert (=> d!923813 (=> (not res!1339014) (not e!2053039))))

(assert (=> d!923813 (= res!1339014 (is-Cons!36459 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241))))))))

(assert (=> d!923813 (= (contains!6582 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241)))) lt!1118269) lt!1118813)))

(declare-fun b!3301217 () Bool)

(declare-fun e!2053038 () Bool)

(assert (=> b!3301217 (= e!2053039 e!2053038)))

(declare-fun res!1339015 () Bool)

(assert (=> b!3301217 (=> res!1339015 e!2053038)))

(assert (=> b!3301217 (= res!1339015 (= (h!41879 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241))))) lt!1118269))))

(declare-fun b!3301218 () Bool)

(assert (=> b!3301218 (= e!2053038 (contains!6582 (t!252748 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 separatorToken!241))))) lt!1118269))))

(assert (= (and d!923813 res!1339014) b!3301217))

(assert (= (and b!3301217 (not res!1339015)) b!3301218))

(assert (=> d!923813 m!3625247))

(declare-fun m!3625313 () Bool)

(assert (=> d!923813 m!3625313))

(declare-fun m!3625315 () Bool)

(assert (=> b!3301218 m!3625315))

(assert (=> b!3300161 d!923813))

(declare-fun d!923815 () Bool)

(declare-fun lt!1118825 () List!36583)

(assert (=> d!923815 (= lt!1118825 (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) (printList!1426 thiss!18206 (dropList!1107 lt!1118277 0))))))

(declare-fun e!2053042 () List!36583)

(assert (=> d!923815 (= lt!1118825 e!2053042)))

(declare-fun c!559951 () Bool)

(assert (=> d!923815 (= c!559951 (is-Cons!36460 (dropList!1107 lt!1118277 0)))))

(assert (=> d!923815 (= (printListTailRec!590 thiss!18206 (dropList!1107 lt!1118277 0) (list!13054 (BalanceConc!21513 Empty!10949))) lt!1118825)))

(declare-fun b!3301223 () Bool)

(assert (=> b!3301223 (= e!2053042 (printListTailRec!590 thiss!18206 (t!252749 (dropList!1107 lt!1118277 0)) (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) (list!13054 (charsOf!3303 (h!41880 (dropList!1107 lt!1118277 0)))))))))

(declare-fun lt!1118824 () List!36583)

(assert (=> b!3301223 (= lt!1118824 (list!13054 (charsOf!3303 (h!41880 (dropList!1107 lt!1118277 0)))))))

(declare-fun lt!1118827 () List!36583)

(assert (=> b!3301223 (= lt!1118827 (printList!1426 thiss!18206 (t!252749 (dropList!1107 lt!1118277 0))))))

(declare-fun lt!1118828 () Unit!51389)

(declare-fun lemmaConcatAssociativity!1813 (List!36583 List!36583 List!36583) Unit!51389)

(assert (=> b!3301223 (= lt!1118828 (lemmaConcatAssociativity!1813 (list!13054 (BalanceConc!21513 Empty!10949)) lt!1118824 lt!1118827))))

(assert (=> b!3301223 (= (++!8815 (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) lt!1118824) lt!1118827) (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) (++!8815 lt!1118824 lt!1118827)))))

(declare-fun lt!1118826 () Unit!51389)

(assert (=> b!3301223 (= lt!1118826 lt!1118828)))

(declare-fun b!3301224 () Bool)

(assert (=> b!3301224 (= e!2053042 (list!13054 (BalanceConc!21513 Empty!10949)))))

(assert (= (and d!923815 c!559951) b!3301223))

(assert (= (and d!923815 (not c!559951)) b!3301224))

(assert (=> d!923815 m!3624129))

(declare-fun m!3625317 () Bool)

(assert (=> d!923815 m!3625317))

(assert (=> d!923815 m!3624131))

(assert (=> d!923815 m!3625317))

(declare-fun m!3625319 () Bool)

(assert (=> d!923815 m!3625319))

(assert (=> b!3301223 m!3624131))

(declare-fun m!3625321 () Bool)

(assert (=> b!3301223 m!3625321))

(declare-fun m!3625323 () Bool)

(assert (=> b!3301223 m!3625323))

(declare-fun m!3625325 () Bool)

(assert (=> b!3301223 m!3625325))

(declare-fun m!3625327 () Bool)

(assert (=> b!3301223 m!3625327))

(declare-fun m!3625329 () Bool)

(assert (=> b!3301223 m!3625329))

(declare-fun m!3625331 () Bool)

(assert (=> b!3301223 m!3625331))

(assert (=> b!3301223 m!3624131))

(declare-fun m!3625333 () Bool)

(assert (=> b!3301223 m!3625333))

(assert (=> b!3301223 m!3625325))

(assert (=> b!3301223 m!3624131))

(declare-fun m!3625335 () Bool)

(assert (=> b!3301223 m!3625335))

(assert (=> b!3301223 m!3625329))

(assert (=> b!3301223 m!3625333))

(assert (=> b!3301223 m!3624131))

(declare-fun m!3625337 () Bool)

(assert (=> b!3301223 m!3625337))

(assert (=> b!3301223 m!3625335))

(declare-fun m!3625339 () Bool)

(assert (=> b!3301223 m!3625339))

(assert (=> b!3301223 m!3625321))

(assert (=> d!923467 d!923815))

(declare-fun d!923817 () Bool)

(assert (=> d!923817 (= (dropList!1107 lt!1118277 0) (drop!1898 (list!13061 (c!559682 lt!1118277)) 0))))

(declare-fun bs!548615 () Bool)

(assert (= bs!548615 d!923817))

(declare-fun m!3625341 () Bool)

(assert (=> bs!548615 m!3625341))

(assert (=> bs!548615 m!3625341))

(declare-fun m!3625343 () Bool)

(assert (=> bs!548615 m!3625343))

(assert (=> d!923467 d!923817))

(declare-fun d!923819 () Bool)

(assert (=> d!923819 (= (list!13054 (BalanceConc!21513 Empty!10949)) (list!13059 (c!559681 (BalanceConc!21513 Empty!10949))))))

(declare-fun bs!548616 () Bool)

(assert (= bs!548616 d!923819))

(declare-fun m!3625345 () Bool)

(assert (=> bs!548616 m!3625345))

(assert (=> d!923467 d!923819))

(declare-fun d!923821 () Bool)

(declare-fun lt!1118831 () Int)

(assert (=> d!923821 (= lt!1118831 (size!27539 (list!13055 lt!1118277)))))

(declare-fun size!27541 (Conc!10950) Int)

(assert (=> d!923821 (= lt!1118831 (size!27541 (c!559682 lt!1118277)))))

(assert (=> d!923821 (= (size!27538 lt!1118277) lt!1118831)))

(declare-fun bs!548617 () Bool)

(assert (= bs!548617 d!923821))

(assert (=> bs!548617 m!3624107))

(assert (=> bs!548617 m!3624107))

(declare-fun m!3625347 () Bool)

(assert (=> bs!548617 m!3625347))

(declare-fun m!3625349 () Bool)

(assert (=> bs!548617 m!3625349))

(assert (=> d!923467 d!923821))

(declare-fun d!923823 () Bool)

(assert (=> d!923823 (= (list!13054 lt!1118484) (list!13059 (c!559681 lt!1118484)))))

(declare-fun bs!548618 () Bool)

(assert (= bs!548618 d!923823))

(declare-fun m!3625351 () Bool)

(assert (=> bs!548618 m!3625351))

(assert (=> d!923467 d!923823))

(declare-fun d!923825 () Bool)

(assert (=> d!923825 (= (list!13054 lt!1118636) (list!13059 (c!559681 lt!1118636)))))

(declare-fun bs!548619 () Bool)

(assert (= bs!548619 d!923825))

(declare-fun m!3625353 () Bool)

(assert (=> bs!548619 m!3625353))

(assert (=> d!923643 d!923825))

(declare-fun d!923827 () Bool)

(declare-fun c!559954 () Bool)

(assert (=> d!923827 (= c!559954 (is-Node!10949 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))))))

(declare-fun e!2053047 () Bool)

(assert (=> d!923827 (= (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))) e!2053047)))

(declare-fun b!3301231 () Bool)

(declare-fun inv!49418 (Conc!10949) Bool)

(assert (=> b!3301231 (= e!2053047 (inv!49418 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))))))

(declare-fun b!3301232 () Bool)

(declare-fun e!2053048 () Bool)

(assert (=> b!3301232 (= e!2053047 e!2053048)))

(declare-fun res!1339018 () Bool)

(assert (=> b!3301232 (= res!1339018 (not (is-Leaf!17204 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))))))))

(assert (=> b!3301232 (=> res!1339018 e!2053048)))

(declare-fun b!3301233 () Bool)

(declare-fun inv!49419 (Conc!10949) Bool)

(assert (=> b!3301233 (= e!2053048 (inv!49419 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))))))

(assert (= (and d!923827 c!559954) b!3301231))

(assert (= (and d!923827 (not c!559954)) b!3301232))

(assert (= (and b!3301232 (not res!1339018)) b!3301233))

(declare-fun m!3625355 () Bool)

(assert (=> b!3301231 m!3625355))

(declare-fun m!3625357 () Bool)

(assert (=> b!3301233 m!3625357))

(assert (=> b!3300855 d!923827))

(declare-fun d!923829 () Bool)

(declare-fun c!559955 () Bool)

(assert (=> d!923829 (= c!559955 (is-Nil!36459 lt!1118630))))

(declare-fun e!2053049 () (Set C!20278))

(assert (=> d!923829 (= (content!4957 lt!1118630) e!2053049)))

(declare-fun b!3301234 () Bool)

(assert (=> b!3301234 (= e!2053049 (as set.empty (Set C!20278)))))

(declare-fun b!3301235 () Bool)

(assert (=> b!3301235 (= e!2053049 (set.union (set.insert (h!41879 lt!1118630) (as set.empty (Set C!20278))) (content!4957 (t!252748 lt!1118630))))))

(assert (= (and d!923829 c!559955) b!3301234))

(assert (= (and d!923829 (not c!559955)) b!3301235))

(declare-fun m!3625359 () Bool)

(assert (=> b!3301235 m!3625359))

(declare-fun m!3625361 () Bool)

(assert (=> b!3301235 m!3625361))

(assert (=> d!923637 d!923829))

(declare-fun d!923831 () Bool)

(declare-fun c!559956 () Bool)

(assert (=> d!923831 (= c!559956 (is-Nil!36459 lt!1118263))))

(declare-fun e!2053050 () (Set C!20278))

(assert (=> d!923831 (= (content!4957 lt!1118263) e!2053050)))

(declare-fun b!3301236 () Bool)

(assert (=> b!3301236 (= e!2053050 (as set.empty (Set C!20278)))))

(declare-fun b!3301237 () Bool)

(assert (=> b!3301237 (= e!2053050 (set.union (set.insert (h!41879 lt!1118263) (as set.empty (Set C!20278))) (content!4957 (t!252748 lt!1118263))))))

(assert (= (and d!923831 c!559956) b!3301236))

(assert (= (and d!923831 (not c!559956)) b!3301237))

(declare-fun m!3625363 () Bool)

(assert (=> b!3301237 m!3625363))

(declare-fun m!3625365 () Bool)

(assert (=> b!3301237 m!3625365))

(assert (=> d!923637 d!923831))

(declare-fun d!923833 () Bool)

(declare-fun c!559957 () Bool)

(assert (=> d!923833 (= c!559957 (is-Nil!36459 lt!1118262))))

(declare-fun e!2053051 () (Set C!20278))

(assert (=> d!923833 (= (content!4957 lt!1118262) e!2053051)))

(declare-fun b!3301238 () Bool)

(assert (=> b!3301238 (= e!2053051 (as set.empty (Set C!20278)))))

(declare-fun b!3301239 () Bool)

(assert (=> b!3301239 (= e!2053051 (set.union (set.insert (h!41879 lt!1118262) (as set.empty (Set C!20278))) (content!4957 (t!252748 lt!1118262))))))

(assert (= (and d!923833 c!559957) b!3301238))

(assert (= (and d!923833 (not c!559957)) b!3301239))

(declare-fun m!3625367 () Bool)

(assert (=> b!3301239 m!3625367))

(declare-fun m!3625369 () Bool)

(assert (=> b!3301239 m!3625369))

(assert (=> d!923637 d!923833))

(declare-fun e!2053053 () List!36583)

(declare-fun b!3301241 () Bool)

(assert (=> b!3301241 (= e!2053053 (Cons!36459 (h!41879 (ite c!559795 call!239934 call!239933)) (++!8815 (t!252748 (ite c!559795 call!239934 call!239933)) (ite c!559795 call!239933 call!239934))))))

(declare-fun b!3301240 () Bool)

(assert (=> b!3301240 (= e!2053053 (ite c!559795 call!239933 call!239934))))

(declare-fun b!3301242 () Bool)

(declare-fun res!1339019 () Bool)

(declare-fun e!2053052 () Bool)

(assert (=> b!3301242 (=> (not res!1339019) (not e!2053052))))

(declare-fun lt!1118832 () List!36583)

(assert (=> b!3301242 (= res!1339019 (= (size!27531 lt!1118832) (+ (size!27531 (ite c!559795 call!239934 call!239933)) (size!27531 (ite c!559795 call!239933 call!239934)))))))

(declare-fun d!923835 () Bool)

(assert (=> d!923835 e!2053052))

(declare-fun res!1339020 () Bool)

(assert (=> d!923835 (=> (not res!1339020) (not e!2053052))))

(assert (=> d!923835 (= res!1339020 (= (content!4957 lt!1118832) (set.union (content!4957 (ite c!559795 call!239934 call!239933)) (content!4957 (ite c!559795 call!239933 call!239934)))))))

(assert (=> d!923835 (= lt!1118832 e!2053053)))

(declare-fun c!559958 () Bool)

(assert (=> d!923835 (= c!559958 (is-Nil!36459 (ite c!559795 call!239934 call!239933)))))

(assert (=> d!923835 (= (++!8815 (ite c!559795 call!239934 call!239933) (ite c!559795 call!239933 call!239934)) lt!1118832)))

(declare-fun b!3301243 () Bool)

(assert (=> b!3301243 (= e!2053052 (or (not (= (ite c!559795 call!239933 call!239934) Nil!36459)) (= lt!1118832 (ite c!559795 call!239934 call!239933))))))

(assert (= (and d!923835 c!559958) b!3301240))

(assert (= (and d!923835 (not c!559958)) b!3301241))

(assert (= (and d!923835 res!1339020) b!3301242))

(assert (= (and b!3301242 res!1339019) b!3301243))

(declare-fun m!3625371 () Bool)

(assert (=> b!3301241 m!3625371))

(declare-fun m!3625373 () Bool)

(assert (=> b!3301242 m!3625373))

(declare-fun m!3625375 () Bool)

(assert (=> b!3301242 m!3625375))

(declare-fun m!3625377 () Bool)

(assert (=> b!3301242 m!3625377))

(declare-fun m!3625379 () Bool)

(assert (=> d!923835 m!3625379))

(declare-fun m!3625381 () Bool)

(assert (=> d!923835 m!3625381))

(declare-fun m!3625383 () Bool)

(assert (=> d!923835 m!3625383))

(assert (=> bm!239930 d!923835))

(declare-fun d!923837 () Bool)

(declare-fun lt!1118833 () Bool)

(assert (=> d!923837 (= lt!1118833 (set.member lt!1118269 (content!4957 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun e!2053055 () Bool)

(assert (=> d!923837 (= lt!1118833 e!2053055)))

(declare-fun res!1339021 () Bool)

(assert (=> d!923837 (=> (not res!1339021) (not e!2053055))))

(assert (=> d!923837 (= res!1339021 (is-Cons!36459 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(assert (=> d!923837 (= (contains!6582 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494))))) lt!1118269) lt!1118833)))

(declare-fun b!3301244 () Bool)

(declare-fun e!2053054 () Bool)

(assert (=> b!3301244 (= e!2053055 e!2053054)))

(declare-fun res!1339022 () Bool)

(assert (=> b!3301244 (=> res!1339022 e!2053054)))

(assert (=> b!3301244 (= res!1339022 (= (h!41879 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) lt!1118269))))

(declare-fun b!3301245 () Bool)

(assert (=> b!3301245 (= e!2053054 (contains!6582 (t!252748 (t!252748 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) lt!1118269))))

(assert (= (and d!923837 res!1339021) b!3301244))

(assert (= (and b!3301244 (not res!1339022)) b!3301245))

(assert (=> d!923837 m!3625139))

(declare-fun m!3625385 () Bool)

(assert (=> d!923837 m!3625385))

(declare-fun m!3625387 () Bool)

(assert (=> b!3301245 m!3625387))

(assert (=> b!3300601 d!923837))

(declare-fun d!923839 () Bool)

(declare-fun lt!1118834 () Bool)

(assert (=> d!923839 (= lt!1118834 (set.member (rule!7785 (_1!21112 (get!11636 lt!1118540))) (content!4961 rules!2135)))))

(declare-fun e!2053057 () Bool)

(assert (=> d!923839 (= lt!1118834 e!2053057)))

(declare-fun res!1339024 () Bool)

(assert (=> d!923839 (=> (not res!1339024) (not e!2053057))))

(assert (=> d!923839 (= res!1339024 (is-Cons!36461 rules!2135))))

(assert (=> d!923839 (= (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1118540)))) lt!1118834)))

(declare-fun b!3301246 () Bool)

(declare-fun e!2053056 () Bool)

(assert (=> b!3301246 (= e!2053057 e!2053056)))

(declare-fun res!1339023 () Bool)

(assert (=> b!3301246 (=> res!1339023 e!2053056)))

(assert (=> b!3301246 (= res!1339023 (= (h!41881 rules!2135) (rule!7785 (_1!21112 (get!11636 lt!1118540)))))))

(declare-fun b!3301247 () Bool)

(assert (=> b!3301247 (= e!2053056 (contains!6585 (t!252750 rules!2135) (rule!7785 (_1!21112 (get!11636 lt!1118540)))))))

(assert (= (and d!923839 res!1339024) b!3301246))

(assert (= (and b!3301246 (not res!1339023)) b!3301247))

(assert (=> d!923839 m!3625235))

(declare-fun m!3625389 () Bool)

(assert (=> d!923839 m!3625389))

(declare-fun m!3625391 () Bool)

(assert (=> b!3301247 m!3625391))

(assert (=> b!3300551 d!923839))

(declare-fun d!923841 () Bool)

(assert (=> d!923841 (= (get!11636 lt!1118540) (v!36014 lt!1118540))))

(assert (=> b!3300551 d!923841))

(declare-fun b!3301249 () Bool)

(declare-fun e!2053059 () List!36583)

(assert (=> b!3301249 (= e!2053059 (Cons!36459 (h!41879 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))) (++!8815 (t!252748 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))) (_2!21112 (get!11636 lt!1118540)))))))

(declare-fun b!3301248 () Bool)

(assert (=> b!3301248 (= e!2053059 (_2!21112 (get!11636 lt!1118540)))))

(declare-fun b!3301250 () Bool)

(declare-fun res!1339025 () Bool)

(declare-fun e!2053058 () Bool)

(assert (=> b!3301250 (=> (not res!1339025) (not e!2053058))))

(declare-fun lt!1118835 () List!36583)

(assert (=> b!3301250 (= res!1339025 (= (size!27531 lt!1118835) (+ (size!27531 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))) (size!27531 (_2!21112 (get!11636 lt!1118540))))))))

(declare-fun d!923843 () Bool)

(assert (=> d!923843 e!2053058))

(declare-fun res!1339026 () Bool)

(assert (=> d!923843 (=> (not res!1339026) (not e!2053058))))

(assert (=> d!923843 (= res!1339026 (= (content!4957 lt!1118835) (set.union (content!4957 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))) (content!4957 (_2!21112 (get!11636 lt!1118540))))))))

(assert (=> d!923843 (= lt!1118835 e!2053059)))

(declare-fun c!559959 () Bool)

(assert (=> d!923843 (= c!559959 (is-Nil!36459 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))))))

(assert (=> d!923843 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))) (_2!21112 (get!11636 lt!1118540))) lt!1118835)))

(declare-fun b!3301251 () Bool)

(assert (=> b!3301251 (= e!2053058 (or (not (= (_2!21112 (get!11636 lt!1118540)) Nil!36459)) (= lt!1118835 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))))))))

(assert (= (and d!923843 c!559959) b!3301248))

(assert (= (and d!923843 (not c!559959)) b!3301249))

(assert (= (and d!923843 res!1339026) b!3301250))

(assert (= (and b!3301250 res!1339025) b!3301251))

(declare-fun m!3625393 () Bool)

(assert (=> b!3301249 m!3625393))

(declare-fun m!3625395 () Bool)

(assert (=> b!3301250 m!3625395))

(assert (=> b!3301250 m!3624351))

(declare-fun m!3625397 () Bool)

(assert (=> b!3301250 m!3625397))

(assert (=> b!3301250 m!3624373))

(declare-fun m!3625399 () Bool)

(assert (=> d!923843 m!3625399))

(assert (=> d!923843 m!3624351))

(declare-fun m!3625401 () Bool)

(assert (=> d!923843 m!3625401))

(declare-fun m!3625403 () Bool)

(assert (=> d!923843 m!3625403))

(assert (=> b!3300549 d!923843))

(declare-fun d!923845 () Bool)

(assert (=> d!923845 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))) (list!13059 (c!559681 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))))))

(declare-fun bs!548620 () Bool)

(assert (= bs!548620 d!923845))

(declare-fun m!3625405 () Bool)

(assert (=> bs!548620 m!3625405))

(assert (=> b!3300549 d!923845))

(declare-fun d!923847 () Bool)

(declare-fun lt!1118836 () BalanceConc!21512)

(assert (=> d!923847 (= (list!13054 lt!1118836) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540))))))

(assert (=> d!923847 (= lt!1118836 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))) (value!171141 (_1!21112 (get!11636 lt!1118540)))))))

(assert (=> d!923847 (= (charsOf!3303 (_1!21112 (get!11636 lt!1118540))) lt!1118836)))

(declare-fun b_lambda!92055 () Bool)

(assert (=> (not b_lambda!92055) (not d!923847)))

(declare-fun t!252845 () Bool)

(declare-fun tb!170925 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252845) tb!170925))

(declare-fun b!3301252 () Bool)

(declare-fun e!2053060 () Bool)

(declare-fun tp!1033804 () Bool)

(assert (=> b!3301252 (= e!2053060 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))) (value!171141 (_1!21112 (get!11636 lt!1118540)))))) tp!1033804))))

(declare-fun result!213678 () Bool)

(assert (=> tb!170925 (= result!213678 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))) (value!171141 (_1!21112 (get!11636 lt!1118540))))) e!2053060))))

(assert (= tb!170925 b!3301252))

(declare-fun m!3625407 () Bool)

(assert (=> b!3301252 m!3625407))

(declare-fun m!3625409 () Bool)

(assert (=> tb!170925 m!3625409))

(assert (=> d!923847 t!252845))

(declare-fun b_and!225921 () Bool)

(assert (= b_and!225913 (and (=> t!252845 result!213678) b_and!225921)))

(declare-fun t!252847 () Bool)

(declare-fun tb!170927 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252847) tb!170927))

(declare-fun result!213680 () Bool)

(assert (= result!213680 result!213678))

(assert (=> d!923847 t!252847))

(declare-fun b_and!225923 () Bool)

(assert (= b_and!225915 (and (=> t!252847 result!213680) b_and!225923)))

(declare-fun t!252849 () Bool)

(declare-fun tb!170929 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252849) tb!170929))

(declare-fun result!213682 () Bool)

(assert (= result!213682 result!213678))

(assert (=> d!923847 t!252849))

(declare-fun b_and!225925 () Bool)

(assert (= b_and!225911 (and (=> t!252849 result!213682) b_and!225925)))

(declare-fun tb!170931 () Bool)

(declare-fun t!252851 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252851) tb!170931))

(declare-fun result!213684 () Bool)

(assert (= result!213684 result!213678))

(assert (=> d!923847 t!252851))

(declare-fun b_and!225927 () Bool)

(assert (= b_and!225917 (and (=> t!252851 result!213684) b_and!225927)))

(declare-fun t!252853 () Bool)

(declare-fun tb!170933 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252853) tb!170933))

(declare-fun result!213686 () Bool)

(assert (= result!213686 result!213678))

(assert (=> d!923847 t!252853))

(declare-fun b_and!225929 () Bool)

(assert (= b_and!225919 (and (=> t!252853 result!213686) b_and!225929)))

(declare-fun m!3625411 () Bool)

(assert (=> d!923847 m!3625411))

(declare-fun m!3625413 () Bool)

(assert (=> d!923847 m!3625413))

(assert (=> b!3300549 d!923847))

(assert (=> b!3300549 d!923841))

(assert (=> b!3300391 d!923451))

(declare-fun d!923849 () Bool)

(assert (=> d!923849 (= (list!13054 lt!1118655) (list!13059 (c!559681 lt!1118655)))))

(declare-fun bs!548621 () Bool)

(assert (= bs!548621 d!923849))

(declare-fun m!3625415 () Bool)

(assert (=> bs!548621 m!3625415))

(assert (=> d!923669 d!923849))

(declare-fun b!3301253 () Bool)

(declare-fun e!2053063 () Bool)

(declare-fun e!2053062 () Bool)

(assert (=> b!3301253 (= e!2053063 e!2053062)))

(declare-fun c!559961 () Bool)

(assert (=> b!3301253 (= c!559961 (is-IntegerValue!16552 (value!171141 (h!41880 (t!252749 tokens!494)))))))

(declare-fun b!3301254 () Bool)

(assert (=> b!3301254 (= e!2053063 (inv!16 (value!171141 (h!41880 (t!252749 tokens!494)))))))

(declare-fun b!3301255 () Bool)

(declare-fun res!1339027 () Bool)

(declare-fun e!2053061 () Bool)

(assert (=> b!3301255 (=> res!1339027 e!2053061)))

(assert (=> b!3301255 (= res!1339027 (not (is-IntegerValue!16553 (value!171141 (h!41880 (t!252749 tokens!494))))))))

(assert (=> b!3301255 (= e!2053062 e!2053061)))

(declare-fun d!923851 () Bool)

(declare-fun c!559960 () Bool)

(assert (=> d!923851 (= c!559960 (is-IntegerValue!16551 (value!171141 (h!41880 (t!252749 tokens!494)))))))

(assert (=> d!923851 (= (inv!21 (value!171141 (h!41880 (t!252749 tokens!494)))) e!2053063)))

(declare-fun b!3301256 () Bool)

(assert (=> b!3301256 (= e!2053061 (inv!15 (value!171141 (h!41880 (t!252749 tokens!494)))))))

(declare-fun b!3301257 () Bool)

(assert (=> b!3301257 (= e!2053062 (inv!17 (value!171141 (h!41880 (t!252749 tokens!494)))))))

(assert (= (and d!923851 c!559960) b!3301254))

(assert (= (and d!923851 (not c!559960)) b!3301253))

(assert (= (and b!3301253 c!559961) b!3301257))

(assert (= (and b!3301253 (not c!559961)) b!3301255))

(assert (= (and b!3301255 (not res!1339027)) b!3301256))

(declare-fun m!3625417 () Bool)

(assert (=> b!3301254 m!3625417))

(declare-fun m!3625419 () Bool)

(assert (=> b!3301256 m!3625419))

(declare-fun m!3625421 () Bool)

(assert (=> b!3301257 m!3625421))

(assert (=> b!3300952 d!923851))

(declare-fun d!923853 () Bool)

(declare-fun lt!1118837 () Int)

(assert (=> d!923853 (>= lt!1118837 0)))

(declare-fun e!2053064 () Int)

(assert (=> d!923853 (= lt!1118837 e!2053064)))

(declare-fun c!559962 () Bool)

(assert (=> d!923853 (= c!559962 (is-Nil!36460 lt!1118561))))

(assert (=> d!923853 (= (size!27539 lt!1118561) lt!1118837)))

(declare-fun b!3301258 () Bool)

(assert (=> b!3301258 (= e!2053064 0)))

(declare-fun b!3301259 () Bool)

(assert (=> b!3301259 (= e!2053064 (+ 1 (size!27539 (t!252749 lt!1118561))))))

(assert (= (and d!923853 c!559962) b!3301258))

(assert (= (and d!923853 (not c!559962)) b!3301259))

(declare-fun m!3625423 () Bool)

(assert (=> b!3301259 m!3625423))

(assert (=> d!923537 d!923853))

(declare-fun d!923855 () Bool)

(declare-fun lt!1118838 () Int)

(assert (=> d!923855 (>= lt!1118838 0)))

(declare-fun e!2053065 () Int)

(assert (=> d!923855 (= lt!1118838 e!2053065)))

(declare-fun c!559963 () Bool)

(assert (=> d!923855 (= c!559963 (is-Nil!36460 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))

(assert (=> d!923855 (= (size!27539 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))) lt!1118838)))

(declare-fun b!3301260 () Bool)

(assert (=> b!3301260 (= e!2053065 0)))

(declare-fun b!3301261 () Bool)

(assert (=> b!3301261 (= e!2053065 (+ 1 (size!27539 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))))

(assert (= (and d!923855 c!559963) b!3301260))

(assert (= (and d!923855 (not c!559963)) b!3301261))

(declare-fun m!3625425 () Bool)

(assert (=> b!3301261 m!3625425))

(assert (=> d!923537 d!923855))

(declare-fun d!923857 () Bool)

(assert (=> d!923857 (= (list!13054 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))) (list!13059 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))))))

(declare-fun bs!548622 () Bool)

(assert (= bs!548622 d!923857))

(declare-fun m!3625427 () Bool)

(assert (=> bs!548622 m!3625427))

(assert (=> b!3300891 d!923857))

(declare-fun d!923859 () Bool)

(assert (=> d!923859 (= (isEmpty!20598 (tail!5258 lt!1118262)) (is-Nil!36459 (tail!5258 lt!1118262)))))

(assert (=> b!3300769 d!923859))

(declare-fun d!923861 () Bool)

(assert (=> d!923861 (= (tail!5258 lt!1118262) (t!252748 lt!1118262))))

(assert (=> b!3300769 d!923861))

(declare-fun d!923863 () Bool)

(assert (=> d!923863 (= (isEmpty!20606 lt!1118454) (not (is-Some!7268 lt!1118454)))))

(assert (=> d!923453 d!923863))

(declare-fun d!923865 () Bool)

(assert (=> d!923865 (= (isEmpty!20598 (_1!21117 lt!1118455)) (is-Nil!36459 (_1!21117 lt!1118455)))))

(assert (=> d!923453 d!923865))

(declare-fun d!923867 () Bool)

(declare-fun lt!1118861 () tuple2!35966)

(assert (=> d!923867 (= (++!8815 (_1!21117 lt!1118861) (_2!21117 lt!1118861)) lt!1118263)))

(declare-fun sizeTr!174 (List!36583 Int) Int)

(assert (=> d!923867 (= lt!1118861 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 0 lt!1118263 lt!1118263 (sizeTr!174 lt!1118263 0)))))

(declare-fun lt!1118859 () Unit!51389)

(declare-fun lt!1118860 () Unit!51389)

(assert (=> d!923867 (= lt!1118859 lt!1118860)))

(declare-fun lt!1118856 () List!36583)

(declare-fun lt!1118855 () Int)

(assert (=> d!923867 (= (sizeTr!174 lt!1118856 lt!1118855) (+ (size!27531 lt!1118856) lt!1118855))))

(declare-fun lemmaSizeTrEqualsSize!173 (List!36583 Int) Unit!51389)

(assert (=> d!923867 (= lt!1118860 (lemmaSizeTrEqualsSize!173 lt!1118856 lt!1118855))))

(assert (=> d!923867 (= lt!1118855 0)))

(assert (=> d!923867 (= lt!1118856 Nil!36459)))

(declare-fun lt!1118858 () Unit!51389)

(declare-fun lt!1118857 () Unit!51389)

(assert (=> d!923867 (= lt!1118858 lt!1118857)))

(declare-fun lt!1118862 () Int)

(assert (=> d!923867 (= (sizeTr!174 lt!1118263 lt!1118862) (+ (size!27531 lt!1118263) lt!1118862))))

(assert (=> d!923867 (= lt!1118857 (lemmaSizeTrEqualsSize!173 lt!1118263 lt!1118862))))

(assert (=> d!923867 (= lt!1118862 0)))

(assert (=> d!923867 (validRegex!4571 (regex!5287 (rule!7785 (h!41880 tokens!494))))))

(assert (=> d!923867 (= (findLongestMatch!763 (regex!5287 (rule!7785 (h!41880 tokens!494))) lt!1118263) lt!1118861)))

(declare-fun bs!548623 () Bool)

(assert (= bs!548623 d!923867))

(declare-fun m!3625429 () Bool)

(assert (=> bs!548623 m!3625429))

(declare-fun m!3625431 () Bool)

(assert (=> bs!548623 m!3625431))

(declare-fun m!3625433 () Bool)

(assert (=> bs!548623 m!3625433))

(assert (=> bs!548623 m!3623543))

(declare-fun m!3625435 () Bool)

(assert (=> bs!548623 m!3625435))

(assert (=> bs!548623 m!3625169))

(declare-fun m!3625437 () Bool)

(assert (=> bs!548623 m!3625437))

(assert (=> bs!548623 m!3625435))

(declare-fun m!3625439 () Bool)

(assert (=> bs!548623 m!3625439))

(declare-fun m!3625441 () Bool)

(assert (=> bs!548623 m!3625441))

(declare-fun m!3625443 () Bool)

(assert (=> bs!548623 m!3625443))

(assert (=> d!923453 d!923867))

(declare-fun d!923869 () Bool)

(declare-fun res!1339032 () Bool)

(declare-fun e!2053068 () Bool)

(assert (=> d!923869 (=> (not res!1339032) (not e!2053068))))

(assert (=> d!923869 (= res!1339032 (validRegex!4571 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(assert (=> d!923869 (= (ruleValid!1669 thiss!18206 (rule!7785 (h!41880 tokens!494))) e!2053068)))

(declare-fun b!3301266 () Bool)

(declare-fun res!1339033 () Bool)

(assert (=> b!3301266 (=> (not res!1339033) (not e!2053068))))

(assert (=> b!3301266 (= res!1339033 (not (nullable!3415 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(declare-fun b!3301267 () Bool)

(assert (=> b!3301267 (= e!2053068 (not (= (tag!5831 (rule!7785 (h!41880 tokens!494))) (String!40922 ""))))))

(assert (= (and d!923869 res!1339032) b!3301266))

(assert (= (and b!3301266 res!1339033) b!3301267))

(assert (=> d!923869 m!3625169))

(assert (=> b!3301266 m!3625161))

(assert (=> d!923453 d!923869))

(declare-fun b!3301268 () Bool)

(declare-fun e!2053069 () List!36583)

(declare-fun call!239994 () List!36583)

(assert (=> b!3301268 (= e!2053069 call!239994)))

(declare-fun c!559966 () Bool)

(declare-fun b!3301269 () Bool)

(assert (=> b!3301269 (= c!559966 (is-Star!10046 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))

(declare-fun e!2053072 () List!36583)

(declare-fun e!2053071 () List!36583)

(assert (=> b!3301269 (= e!2053072 e!2053071)))

(declare-fun b!3301270 () Bool)

(assert (=> b!3301270 (= e!2053069 call!239994)))

(declare-fun b!3301271 () Bool)

(declare-fun call!239995 () List!36583)

(assert (=> b!3301271 (= e!2053071 call!239995)))

(declare-fun bm!239987 () Bool)

(declare-fun call!239993 () List!36583)

(assert (=> bm!239987 (= call!239993 call!239995)))

(declare-fun c!559964 () Bool)

(declare-fun d!923871 () Bool)

(assert (=> d!923871 (= c!559964 (or (is-EmptyExpr!10046 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))) (is-EmptyLang!10046 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241))))))))))

(declare-fun e!2053070 () List!36583)

(assert (=> d!923871 (= (usedCharacters!589 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))) e!2053070)))

(declare-fun b!3301272 () Bool)

(assert (=> b!3301272 (= e!2053071 e!2053069)))

(declare-fun c!559965 () Bool)

(assert (=> b!3301272 (= c!559965 (is-Union!10046 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))

(declare-fun bm!239988 () Bool)

(declare-fun call!239992 () List!36583)

(assert (=> bm!239988 (= call!239992 (usedCharacters!589 (ite c!559965 (regTwo!20605 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))) (regOne!20604 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))))

(declare-fun b!3301273 () Bool)

(assert (=> b!3301273 (= e!2053072 (Cons!36459 (c!559680 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))) Nil!36459))))

(declare-fun bm!239989 () Bool)

(assert (=> bm!239989 (= call!239994 (++!8815 (ite c!559965 call!239993 call!239992) (ite c!559965 call!239992 call!239993)))))

(declare-fun bm!239990 () Bool)

(assert (=> bm!239990 (= call!239995 (usedCharacters!589 (ite c!559966 (reg!10375 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))) (ite c!559965 (regOne!20605 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))) (regTwo!20604 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241))))))))))))

(declare-fun b!3301274 () Bool)

(assert (=> b!3301274 (= e!2053070 e!2053072)))

(declare-fun c!559967 () Bool)

(assert (=> b!3301274 (= c!559967 (is-ElementMatch!10046 (ite c!559721 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559720 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))

(declare-fun b!3301275 () Bool)

(assert (=> b!3301275 (= e!2053070 Nil!36459)))

(assert (= (and d!923871 c!559964) b!3301275))

(assert (= (and d!923871 (not c!559964)) b!3301274))

(assert (= (and b!3301274 c!559967) b!3301273))

(assert (= (and b!3301274 (not c!559967)) b!3301269))

(assert (= (and b!3301269 c!559966) b!3301271))

(assert (= (and b!3301269 (not c!559966)) b!3301272))

(assert (= (and b!3301272 c!559965) b!3301270))

(assert (= (and b!3301272 (not c!559965)) b!3301268))

(assert (= (or b!3301270 b!3301268) bm!239988))

(assert (= (or b!3301270 b!3301268) bm!239987))

(assert (= (or b!3301270 b!3301268) bm!239989))

(assert (= (or b!3301271 bm!239987) bm!239990))

(declare-fun m!3625445 () Bool)

(assert (=> bm!239988 m!3625445))

(declare-fun m!3625447 () Bool)

(assert (=> bm!239989 m!3625447))

(declare-fun m!3625449 () Bool)

(assert (=> bm!239990 m!3625449))

(assert (=> bm!239904 d!923871))

(declare-fun d!923873 () Bool)

(declare-fun lt!1118863 () Int)

(assert (=> d!923873 (>= lt!1118863 0)))

(declare-fun e!2053073 () Int)

(assert (=> d!923873 (= lt!1118863 e!2053073)))

(declare-fun c!559968 () Bool)

(assert (=> d!923873 (= c!559968 (is-Nil!36460 lt!1118656))))

(assert (=> d!923873 (= (size!27539 lt!1118656) lt!1118863)))

(declare-fun b!3301276 () Bool)

(assert (=> b!3301276 (= e!2053073 0)))

(declare-fun b!3301277 () Bool)

(assert (=> b!3301277 (= e!2053073 (+ 1 (size!27539 (t!252749 lt!1118656))))))

(assert (= (and d!923873 c!559968) b!3301276))

(assert (= (and d!923873 (not c!559968)) b!3301277))

(declare-fun m!3625451 () Bool)

(assert (=> b!3301277 m!3625451))

(assert (=> d!923673 d!923873))

(declare-fun d!923875 () Bool)

(declare-fun lt!1118864 () Int)

(assert (=> d!923875 (>= lt!1118864 0)))

(declare-fun e!2053074 () Int)

(assert (=> d!923875 (= lt!1118864 e!2053074)))

(declare-fun c!559969 () Bool)

(assert (=> d!923875 (= c!559969 (is-Nil!36460 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))

(assert (=> d!923875 (= (size!27539 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))) lt!1118864)))

(declare-fun b!3301278 () Bool)

(assert (=> b!3301278 (= e!2053074 0)))

(declare-fun b!3301279 () Bool)

(assert (=> b!3301279 (= e!2053074 (+ 1 (size!27539 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))))

(assert (= (and d!923875 c!559969) b!3301278))

(assert (= (and d!923875 (not c!559969)) b!3301279))

(declare-fun m!3625453 () Bool)

(assert (=> b!3301279 m!3625453))

(assert (=> d!923673 d!923875))

(assert (=> b!3300271 d!923781))

(assert (=> d!923445 d!923425))

(assert (=> d!923445 d!923431))

(declare-fun d!923877 () Bool)

(assert (=> d!923877 (isEmpty!20598 (getSuffix!1411 lt!1118263 lt!1118263))))

(assert (=> d!923877 true))

(declare-fun _$66!387 () Unit!51389)

(assert (=> d!923877 (= (choose!19107 lt!1118263) _$66!387)))

(declare-fun bs!548624 () Bool)

(assert (= bs!548624 d!923877))

(assert (=> bs!548624 m!3623529))

(assert (=> bs!548624 m!3623529))

(assert (=> bs!548624 m!3623545))

(assert (=> d!923445 d!923877))

(declare-fun d!923879 () Bool)

(declare-fun lt!1118865 () Int)

(assert (=> d!923879 (>= lt!1118865 0)))

(declare-fun e!2053075 () Int)

(assert (=> d!923879 (= lt!1118865 e!2053075)))

(declare-fun c!559970 () Bool)

(assert (=> d!923879 (= c!559970 (is-Nil!36459 (_2!21112 (get!11636 lt!1118540))))))

(assert (=> d!923879 (= (size!27531 (_2!21112 (get!11636 lt!1118540))) lt!1118865)))

(declare-fun b!3301280 () Bool)

(assert (=> b!3301280 (= e!2053075 0)))

(declare-fun b!3301281 () Bool)

(assert (=> b!3301281 (= e!2053075 (+ 1 (size!27531 (t!252748 (_2!21112 (get!11636 lt!1118540))))))))

(assert (= (and d!923879 c!559970) b!3301280))

(assert (= (and d!923879 (not c!559970)) b!3301281))

(declare-fun m!3625455 () Bool)

(assert (=> b!3301281 m!3625455))

(assert (=> b!3300557 d!923879))

(assert (=> b!3300557 d!923841))

(declare-fun d!923881 () Bool)

(declare-fun lt!1118866 () Int)

(assert (=> d!923881 (>= lt!1118866 0)))

(declare-fun e!2053076 () Int)

(assert (=> d!923881 (= lt!1118866 e!2053076)))

(declare-fun c!559971 () Bool)

(assert (=> d!923881 (= c!559971 (is-Nil!36459 lt!1118249))))

(assert (=> d!923881 (= (size!27531 lt!1118249) lt!1118866)))

(declare-fun b!3301282 () Bool)

(assert (=> b!3301282 (= e!2053076 0)))

(declare-fun b!3301283 () Bool)

(assert (=> b!3301283 (= e!2053076 (+ 1 (size!27531 (t!252748 lt!1118249))))))

(assert (= (and d!923881 c!559971) b!3301282))

(assert (= (and d!923881 (not c!559971)) b!3301283))

(declare-fun m!3625457 () Bool)

(assert (=> b!3301283 m!3625457))

(assert (=> b!3300557 d!923881))

(declare-fun d!923883 () Bool)

(declare-fun lt!1118867 () Int)

(assert (=> d!923883 (>= lt!1118867 0)))

(declare-fun e!2053077 () Int)

(assert (=> d!923883 (= lt!1118867 e!2053077)))

(declare-fun c!559972 () Bool)

(assert (=> d!923883 (= c!559972 (is-Nil!36460 (_1!21111 lt!1118563)))))

(assert (=> d!923883 (= (size!27539 (_1!21111 lt!1118563)) lt!1118867)))

(declare-fun b!3301284 () Bool)

(assert (=> b!3301284 (= e!2053077 0)))

(declare-fun b!3301285 () Bool)

(assert (=> b!3301285 (= e!2053077 (+ 1 (size!27539 (t!252749 (_1!21111 lt!1118563)))))))

(assert (= (and d!923883 c!559972) b!3301284))

(assert (= (and d!923883 (not c!559972)) b!3301285))

(declare-fun m!3625459 () Bool)

(assert (=> b!3301285 m!3625459))

(assert (=> d!923539 d!923883))

(declare-fun b!3301286 () Bool)

(declare-fun res!1339039 () Bool)

(declare-fun e!2053079 () Bool)

(assert (=> b!3301286 (=> (not res!1339039) (not e!2053079))))

(declare-fun lt!1118870 () Option!7269)

(assert (=> b!3301286 (= res!1339039 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118870)))) (_2!21112 (get!11636 lt!1118870))) (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(declare-fun b!3301287 () Bool)

(declare-fun res!1339036 () Bool)

(assert (=> b!3301287 (=> (not res!1339036) (not e!2053079))))

(assert (=> b!3301287 (= res!1339036 (= (value!171141 (_1!21112 (get!11636 lt!1118870))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118870)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118870)))))))))

(declare-fun d!923885 () Bool)

(declare-fun e!2053078 () Bool)

(assert (=> d!923885 e!2053078))

(declare-fun res!1339040 () Bool)

(assert (=> d!923885 (=> res!1339040 e!2053078)))

(assert (=> d!923885 (= res!1339040 (isEmpty!20606 lt!1118870))))

(declare-fun e!2053080 () Option!7269)

(assert (=> d!923885 (= lt!1118870 e!2053080)))

(declare-fun c!559973 () Bool)

(assert (=> d!923885 (= c!559973 (and (is-Cons!36461 rules!2135) (is-Nil!36461 (t!252750 rules!2135))))))

(declare-fun lt!1118869 () Unit!51389)

(declare-fun lt!1118871 () Unit!51389)

(assert (=> d!923885 (= lt!1118869 lt!1118871)))

(assert (=> d!923885 (isPrefix!2804 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241) (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))

(assert (=> d!923885 (= lt!1118871 (lemmaIsPrefixRefl!1763 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241) (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(assert (=> d!923885 (rulesValidInductive!1803 thiss!18206 rules!2135)))

(assert (=> d!923885 (= (maxPrefix!2504 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)) lt!1118870)))

(declare-fun b!3301288 () Bool)

(assert (=> b!3301288 (= e!2053079 (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1118870)))))))

(declare-fun bm!239991 () Bool)

(declare-fun call!239996 () Option!7269)

(assert (=> bm!239991 (= call!239996 (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(declare-fun b!3301289 () Bool)

(assert (=> b!3301289 (= e!2053078 e!2053079)))

(declare-fun res!1339034 () Bool)

(assert (=> b!3301289 (=> (not res!1339034) (not e!2053079))))

(assert (=> b!3301289 (= res!1339034 (isDefined!5636 lt!1118870))))

(declare-fun b!3301290 () Bool)

(declare-fun lt!1118868 () Option!7269)

(declare-fun lt!1118872 () Option!7269)

(assert (=> b!3301290 (= e!2053080 (ite (and (is-None!7268 lt!1118868) (is-None!7268 lt!1118872)) None!7268 (ite (is-None!7268 lt!1118872) lt!1118868 (ite (is-None!7268 lt!1118868) lt!1118872 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1118868))) (size!27530 (_1!21112 (v!36014 lt!1118872)))) lt!1118868 lt!1118872)))))))

(assert (=> b!3301290 (= lt!1118868 call!239996)))

(assert (=> b!3301290 (= lt!1118872 (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(declare-fun b!3301291 () Bool)

(declare-fun res!1339037 () Bool)

(assert (=> b!3301291 (=> (not res!1339037) (not e!2053079))))

(assert (=> b!3301291 (= res!1339037 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118870)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118870)))))))

(declare-fun b!3301292 () Bool)

(declare-fun res!1339038 () Bool)

(assert (=> b!3301292 (=> (not res!1339038) (not e!2053079))))

(assert (=> b!3301292 (= res!1339038 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118870)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118870))))))))

(declare-fun b!3301293 () Bool)

(assert (=> b!3301293 (= e!2053080 call!239996)))

(declare-fun b!3301294 () Bool)

(declare-fun res!1339035 () Bool)

(assert (=> b!3301294 (=> (not res!1339035) (not e!2053079))))

(assert (=> b!3301294 (= res!1339035 (< (size!27531 (_2!21112 (get!11636 lt!1118870))) (size!27531 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))))

(assert (= (and d!923885 c!559973) b!3301293))

(assert (= (and d!923885 (not c!559973)) b!3301290))

(assert (= (or b!3301293 b!3301290) bm!239991))

(assert (= (and d!923885 (not res!1339040)) b!3301289))

(assert (= (and b!3301289 res!1339034) b!3301291))

(assert (= (and b!3301291 res!1339037) b!3301294))

(assert (= (and b!3301294 res!1339035) b!3301286))

(assert (= (and b!3301286 res!1339039) b!3301287))

(assert (= (and b!3301287 res!1339036) b!3301292))

(assert (= (and b!3301292 res!1339038) b!3301288))

(declare-fun m!3625461 () Bool)

(assert (=> b!3301292 m!3625461))

(declare-fun m!3625463 () Bool)

(assert (=> b!3301292 m!3625463))

(assert (=> b!3301292 m!3625463))

(declare-fun m!3625465 () Bool)

(assert (=> b!3301292 m!3625465))

(assert (=> b!3301292 m!3625465))

(declare-fun m!3625467 () Bool)

(assert (=> b!3301292 m!3625467))

(assert (=> b!3301291 m!3625461))

(assert (=> b!3301291 m!3625463))

(assert (=> b!3301291 m!3625463))

(assert (=> b!3301291 m!3625465))

(assert (=> bm!239991 m!3623611))

(declare-fun m!3625469 () Bool)

(assert (=> bm!239991 m!3625469))

(assert (=> b!3301287 m!3625461))

(declare-fun m!3625471 () Bool)

(assert (=> b!3301287 m!3625471))

(assert (=> b!3301287 m!3625471))

(declare-fun m!3625473 () Bool)

(assert (=> b!3301287 m!3625473))

(declare-fun m!3625475 () Bool)

(assert (=> b!3301289 m!3625475))

(declare-fun m!3625477 () Bool)

(assert (=> d!923885 m!3625477))

(assert (=> d!923885 m!3623611))

(assert (=> d!923885 m!3623611))

(declare-fun m!3625479 () Bool)

(assert (=> d!923885 m!3625479))

(assert (=> d!923885 m!3623611))

(assert (=> d!923885 m!3623611))

(declare-fun m!3625481 () Bool)

(assert (=> d!923885 m!3625481))

(assert (=> d!923885 m!3624335))

(assert (=> b!3301288 m!3625461))

(declare-fun m!3625483 () Bool)

(assert (=> b!3301288 m!3625483))

(assert (=> b!3301290 m!3623611))

(declare-fun m!3625485 () Bool)

(assert (=> b!3301290 m!3625485))

(assert (=> b!3301294 m!3625461))

(declare-fun m!3625487 () Bool)

(assert (=> b!3301294 m!3625487))

(assert (=> b!3301294 m!3623611))

(assert (=> b!3301294 m!3624437))

(assert (=> b!3301286 m!3625461))

(assert (=> b!3301286 m!3625463))

(assert (=> b!3301286 m!3625463))

(assert (=> b!3301286 m!3625465))

(assert (=> b!3301286 m!3625465))

(declare-fun m!3625489 () Bool)

(assert (=> b!3301286 m!3625489))

(assert (=> d!923539 d!923885))

(declare-fun d!923887 () Bool)

(declare-fun lt!1118873 () Int)

(assert (=> d!923887 (= lt!1118873 (size!27531 (list!13054 (_2!21113 lt!1118624))))))

(assert (=> d!923887 (= lt!1118873 (size!27540 (c!559681 (_2!21113 lt!1118624))))))

(assert (=> d!923887 (= (size!27536 (_2!21113 lt!1118624)) lt!1118873)))

(declare-fun bs!548625 () Bool)

(assert (= bs!548625 d!923887))

(assert (=> bs!548625 m!3624781))

(assert (=> bs!548625 m!3624781))

(declare-fun m!3625491 () Bool)

(assert (=> bs!548625 m!3625491))

(declare-fun m!3625493 () Bool)

(assert (=> bs!548625 m!3625493))

(assert (=> b!3300828 d!923887))

(declare-fun d!923889 () Bool)

(declare-fun lt!1118874 () Int)

(assert (=> d!923889 (= lt!1118874 (size!27531 (list!13054 lt!1118258)))))

(assert (=> d!923889 (= lt!1118874 (size!27540 (c!559681 lt!1118258)))))

(assert (=> d!923889 (= (size!27536 lt!1118258) lt!1118874)))

(declare-fun bs!548626 () Bool)

(assert (= bs!548626 d!923889))

(assert (=> bs!548626 m!3624783))

(assert (=> bs!548626 m!3624783))

(assert (=> bs!548626 m!3625257))

(declare-fun m!3625495 () Bool)

(assert (=> bs!548626 m!3625495))

(assert (=> b!3300828 d!923889))

(declare-fun d!923891 () Bool)

(declare-fun res!1339041 () Bool)

(declare-fun e!2053081 () Bool)

(assert (=> d!923891 (=> (not res!1339041) (not e!2053081))))

(assert (=> d!923891 (= res!1339041 (rulesValid!1945 thiss!18206 (t!252750 rules!2135)))))

(assert (=> d!923891 (= (rulesInvariant!4273 thiss!18206 (t!252750 rules!2135)) e!2053081)))

(declare-fun b!3301295 () Bool)

(assert (=> b!3301295 (= e!2053081 (noDuplicateTag!1941 thiss!18206 (t!252750 rules!2135) Nil!36467))))

(assert (= (and d!923891 res!1339041) b!3301295))

(declare-fun m!3625497 () Bool)

(assert (=> d!923891 m!3625497))

(declare-fun m!3625499 () Bool)

(assert (=> b!3301295 m!3625499))

(assert (=> b!3300186 d!923891))

(declare-fun d!923893 () Bool)

(assert (=> d!923893 (rulesInvariant!4273 thiss!18206 (t!252750 rules!2135))))

(declare-fun lt!1118877 () Unit!51389)

(declare-fun choose!19119 (LexerInterface!4876 Rule!10374 List!36585) Unit!51389)

(assert (=> d!923893 (= lt!1118877 (choose!19119 thiss!18206 (h!41881 rules!2135) (t!252750 rules!2135)))))

(assert (=> d!923893 (rulesInvariant!4273 thiss!18206 (Cons!36461 (h!41881 rules!2135) (t!252750 rules!2135)))))

(assert (=> d!923893 (= (lemmaInvariantOnRulesThenOnTail!367 thiss!18206 (h!41881 rules!2135) (t!252750 rules!2135)) lt!1118877)))

(declare-fun bs!548627 () Bool)

(assert (= bs!548627 d!923893))

(assert (=> bs!548627 m!3623917))

(declare-fun m!3625501 () Bool)

(assert (=> bs!548627 m!3625501))

(declare-fun m!3625503 () Bool)

(assert (=> bs!548627 m!3625503))

(assert (=> b!3300186 d!923893))

(declare-fun b!3301296 () Bool)

(declare-fun e!2053083 () Option!7270)

(assert (=> b!3301296 (= e!2053083 None!7269)))

(declare-fun b!3301297 () Bool)

(declare-fun e!2053085 () Option!7270)

(assert (=> b!3301297 (= e!2053085 e!2053083)))

(declare-fun c!559974 () Bool)

(assert (=> b!3301297 (= c!559974 (and (is-Cons!36461 (t!252750 rules!2135)) (not (= (tag!5831 (h!41881 (t!252750 rules!2135))) (tag!5831 (rule!7785 separatorToken!241))))))))

(declare-fun b!3301298 () Bool)

(declare-fun e!2053082 () Bool)

(declare-fun e!2053084 () Bool)

(assert (=> b!3301298 (= e!2053082 e!2053084)))

(declare-fun res!1339043 () Bool)

(assert (=> b!3301298 (=> (not res!1339043) (not e!2053084))))

(declare-fun lt!1118879 () Option!7270)

(assert (=> b!3301298 (= res!1339043 (contains!6585 (t!252750 rules!2135) (get!11634 lt!1118879)))))

(declare-fun b!3301299 () Bool)

(assert (=> b!3301299 (= e!2053084 (= (tag!5831 (get!11634 lt!1118879)) (tag!5831 (rule!7785 separatorToken!241))))))

(declare-fun d!923895 () Bool)

(assert (=> d!923895 e!2053082))

(declare-fun res!1339042 () Bool)

(assert (=> d!923895 (=> res!1339042 e!2053082)))

(assert (=> d!923895 (= res!1339042 (isEmpty!20604 lt!1118879))))

(assert (=> d!923895 (= lt!1118879 e!2053085)))

(declare-fun c!559975 () Bool)

(assert (=> d!923895 (= c!559975 (and (is-Cons!36461 (t!252750 rules!2135)) (= (tag!5831 (h!41881 (t!252750 rules!2135))) (tag!5831 (rule!7785 separatorToken!241)))))))

(assert (=> d!923895 (rulesInvariant!4273 thiss!18206 (t!252750 rules!2135))))

(assert (=> d!923895 (= (getRuleFromTag!978 thiss!18206 (t!252750 rules!2135) (tag!5831 (rule!7785 separatorToken!241))) lt!1118879)))

(declare-fun b!3301300 () Bool)

(declare-fun lt!1118878 () Unit!51389)

(declare-fun lt!1118880 () Unit!51389)

(assert (=> b!3301300 (= lt!1118878 lt!1118880)))

(assert (=> b!3301300 (rulesInvariant!4273 thiss!18206 (t!252750 (t!252750 rules!2135)))))

(assert (=> b!3301300 (= lt!1118880 (lemmaInvariantOnRulesThenOnTail!367 thiss!18206 (h!41881 (t!252750 rules!2135)) (t!252750 (t!252750 rules!2135))))))

(assert (=> b!3301300 (= e!2053083 (getRuleFromTag!978 thiss!18206 (t!252750 (t!252750 rules!2135)) (tag!5831 (rule!7785 separatorToken!241))))))

(declare-fun b!3301301 () Bool)

(assert (=> b!3301301 (= e!2053085 (Some!7269 (h!41881 (t!252750 rules!2135))))))

(assert (= (and d!923895 c!559975) b!3301301))

(assert (= (and d!923895 (not c!559975)) b!3301297))

(assert (= (and b!3301297 c!559974) b!3301300))

(assert (= (and b!3301297 (not c!559974)) b!3301296))

(assert (= (and d!923895 (not res!1339042)) b!3301298))

(assert (= (and b!3301298 res!1339043) b!3301299))

(declare-fun m!3625505 () Bool)

(assert (=> b!3301298 m!3625505))

(assert (=> b!3301298 m!3625505))

(declare-fun m!3625507 () Bool)

(assert (=> b!3301298 m!3625507))

(assert (=> b!3301299 m!3625505))

(declare-fun m!3625509 () Bool)

(assert (=> d!923895 m!3625509))

(assert (=> d!923895 m!3623917))

(declare-fun m!3625511 () Bool)

(assert (=> b!3301300 m!3625511))

(declare-fun m!3625513 () Bool)

(assert (=> b!3301300 m!3625513))

(declare-fun m!3625515 () Bool)

(assert (=> b!3301300 m!3625515))

(assert (=> b!3300186 d!923895))

(declare-fun b!3301302 () Bool)

(declare-fun e!2053088 () tuple2!35954)

(assert (=> b!3301302 (= e!2053088 (tuple2!35955 Nil!36460 (_2!21112 (v!36014 lt!1118504))))))

(declare-fun b!3301304 () Bool)

(declare-fun lt!1118881 () Option!7269)

(declare-fun lt!1118883 () tuple2!35954)

(assert (=> b!3301304 (= e!2053088 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118881)) (_1!21111 lt!1118883)) (_2!21111 lt!1118883)))))

(assert (=> b!3301304 (= lt!1118883 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118881))))))

(declare-fun b!3301305 () Bool)

(declare-fun e!2053086 () Bool)

(declare-fun lt!1118882 () tuple2!35954)

(assert (=> b!3301305 (= e!2053086 (= (_2!21111 lt!1118882) (_2!21112 (v!36014 lt!1118504))))))

(declare-fun b!3301306 () Bool)

(declare-fun e!2053087 () Bool)

(assert (=> b!3301306 (= e!2053086 e!2053087)))

(declare-fun res!1339044 () Bool)

(assert (=> b!3301306 (= res!1339044 (< (size!27531 (_2!21111 lt!1118882)) (size!27531 (_2!21112 (v!36014 lt!1118504)))))))

(assert (=> b!3301306 (=> (not res!1339044) (not e!2053087))))

(declare-fun b!3301303 () Bool)

(assert (=> b!3301303 (= e!2053087 (not (isEmpty!20599 (_1!21111 lt!1118882))))))

(declare-fun d!923897 () Bool)

(assert (=> d!923897 e!2053086))

(declare-fun c!559976 () Bool)

(assert (=> d!923897 (= c!559976 (> (size!27539 (_1!21111 lt!1118882)) 0))))

(assert (=> d!923897 (= lt!1118882 e!2053088)))

(declare-fun c!559977 () Bool)

(assert (=> d!923897 (= c!559977 (is-Some!7268 lt!1118881))))

(assert (=> d!923897 (= lt!1118881 (maxPrefix!2504 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118504))))))

(assert (=> d!923897 (= (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118504))) lt!1118882)))

(assert (= (and d!923897 c!559977) b!3301304))

(assert (= (and d!923897 (not c!559977)) b!3301302))

(assert (= (and d!923897 c!559976) b!3301306))

(assert (= (and d!923897 (not c!559976)) b!3301305))

(assert (= (and b!3301306 res!1339044) b!3301303))

(declare-fun m!3625517 () Bool)

(assert (=> b!3301304 m!3625517))

(declare-fun m!3625519 () Bool)

(assert (=> b!3301306 m!3625519))

(declare-fun m!3625521 () Bool)

(assert (=> b!3301306 m!3625521))

(declare-fun m!3625523 () Bool)

(assert (=> b!3301303 m!3625523))

(declare-fun m!3625525 () Bool)

(assert (=> d!923897 m!3625525))

(declare-fun m!3625527 () Bool)

(assert (=> d!923897 m!3625527))

(assert (=> b!3300426 d!923897))

(declare-fun b!3301307 () Bool)

(declare-fun res!1339050 () Bool)

(declare-fun e!2053090 () Bool)

(assert (=> b!3301307 (=> (not res!1339050) (not e!2053090))))

(declare-fun lt!1118886 () Option!7269)

(assert (=> b!3301307 (= res!1339050 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118886)))) (_2!21112 (get!11636 lt!1118886))) lt!1118274))))

(declare-fun b!3301308 () Bool)

(declare-fun res!1339047 () Bool)

(assert (=> b!3301308 (=> (not res!1339047) (not e!2053090))))

(assert (=> b!3301308 (= res!1339047 (= (value!171141 (_1!21112 (get!11636 lt!1118886))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118886)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118886)))))))))

(declare-fun d!923899 () Bool)

(declare-fun e!2053089 () Bool)

(assert (=> d!923899 e!2053089))

(declare-fun res!1339051 () Bool)

(assert (=> d!923899 (=> res!1339051 e!2053089)))

(assert (=> d!923899 (= res!1339051 (isEmpty!20606 lt!1118886))))

(declare-fun e!2053091 () Option!7269)

(assert (=> d!923899 (= lt!1118886 e!2053091)))

(declare-fun c!559978 () Bool)

(assert (=> d!923899 (= c!559978 (and (is-Cons!36461 (t!252750 rules!2135)) (is-Nil!36461 (t!252750 (t!252750 rules!2135)))))))

(declare-fun lt!1118885 () Unit!51389)

(declare-fun lt!1118887 () Unit!51389)

(assert (=> d!923899 (= lt!1118885 lt!1118887)))

(assert (=> d!923899 (isPrefix!2804 lt!1118274 lt!1118274)))

(assert (=> d!923899 (= lt!1118887 (lemmaIsPrefixRefl!1763 lt!1118274 lt!1118274))))

(assert (=> d!923899 (rulesValidInductive!1803 thiss!18206 (t!252750 rules!2135))))

(assert (=> d!923899 (= (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) lt!1118274) lt!1118886)))

(declare-fun b!3301309 () Bool)

(assert (=> b!3301309 (= e!2053090 (contains!6585 (t!252750 rules!2135) (rule!7785 (_1!21112 (get!11636 lt!1118886)))))))

(declare-fun call!239997 () Option!7269)

(declare-fun bm!239992 () Bool)

(assert (=> bm!239992 (= call!239997 (maxPrefixOneRule!1641 thiss!18206 (h!41881 (t!252750 rules!2135)) lt!1118274))))

(declare-fun b!3301310 () Bool)

(assert (=> b!3301310 (= e!2053089 e!2053090)))

(declare-fun res!1339045 () Bool)

(assert (=> b!3301310 (=> (not res!1339045) (not e!2053090))))

(assert (=> b!3301310 (= res!1339045 (isDefined!5636 lt!1118886))))

(declare-fun b!3301311 () Bool)

(declare-fun lt!1118884 () Option!7269)

(declare-fun lt!1118888 () Option!7269)

(assert (=> b!3301311 (= e!2053091 (ite (and (is-None!7268 lt!1118884) (is-None!7268 lt!1118888)) None!7268 (ite (is-None!7268 lt!1118888) lt!1118884 (ite (is-None!7268 lt!1118884) lt!1118888 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1118884))) (size!27530 (_1!21112 (v!36014 lt!1118888)))) lt!1118884 lt!1118888)))))))

(assert (=> b!3301311 (= lt!1118884 call!239997)))

(assert (=> b!3301311 (= lt!1118888 (maxPrefix!2504 thiss!18206 (t!252750 (t!252750 rules!2135)) lt!1118274))))

(declare-fun b!3301312 () Bool)

(declare-fun res!1339048 () Bool)

(assert (=> b!3301312 (=> (not res!1339048) (not e!2053090))))

(assert (=> b!3301312 (= res!1339048 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118886)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118886)))))))

(declare-fun b!3301313 () Bool)

(declare-fun res!1339049 () Bool)

(assert (=> b!3301313 (=> (not res!1339049) (not e!2053090))))

(assert (=> b!3301313 (= res!1339049 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118886)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118886))))))))

(declare-fun b!3301314 () Bool)

(assert (=> b!3301314 (= e!2053091 call!239997)))

(declare-fun b!3301315 () Bool)

(declare-fun res!1339046 () Bool)

(assert (=> b!3301315 (=> (not res!1339046) (not e!2053090))))

(assert (=> b!3301315 (= res!1339046 (< (size!27531 (_2!21112 (get!11636 lt!1118886))) (size!27531 lt!1118274)))))

(assert (= (and d!923899 c!559978) b!3301314))

(assert (= (and d!923899 (not c!559978)) b!3301311))

(assert (= (or b!3301314 b!3301311) bm!239992))

(assert (= (and d!923899 (not res!1339051)) b!3301310))

(assert (= (and b!3301310 res!1339045) b!3301312))

(assert (= (and b!3301312 res!1339048) b!3301315))

(assert (= (and b!3301315 res!1339046) b!3301307))

(assert (= (and b!3301307 res!1339050) b!3301308))

(assert (= (and b!3301308 res!1339047) b!3301313))

(assert (= (and b!3301313 res!1339049) b!3301309))

(declare-fun m!3625529 () Bool)

(assert (=> b!3301313 m!3625529))

(declare-fun m!3625531 () Bool)

(assert (=> b!3301313 m!3625531))

(assert (=> b!3301313 m!3625531))

(declare-fun m!3625533 () Bool)

(assert (=> b!3301313 m!3625533))

(assert (=> b!3301313 m!3625533))

(declare-fun m!3625535 () Bool)

(assert (=> b!3301313 m!3625535))

(assert (=> b!3301312 m!3625529))

(assert (=> b!3301312 m!3625531))

(assert (=> b!3301312 m!3625531))

(assert (=> b!3301312 m!3625533))

(declare-fun m!3625537 () Bool)

(assert (=> bm!239992 m!3625537))

(assert (=> b!3301308 m!3625529))

(declare-fun m!3625539 () Bool)

(assert (=> b!3301308 m!3625539))

(assert (=> b!3301308 m!3625539))

(declare-fun m!3625541 () Bool)

(assert (=> b!3301308 m!3625541))

(declare-fun m!3625543 () Bool)

(assert (=> b!3301310 m!3625543))

(declare-fun m!3625545 () Bool)

(assert (=> d!923899 m!3625545))

(assert (=> d!923899 m!3624331))

(assert (=> d!923899 m!3624333))

(declare-fun m!3625547 () Bool)

(assert (=> d!923899 m!3625547))

(assert (=> b!3301309 m!3625529))

(declare-fun m!3625549 () Bool)

(assert (=> b!3301309 m!3625549))

(declare-fun m!3625551 () Bool)

(assert (=> b!3301311 m!3625551))

(assert (=> b!3301315 m!3625529))

(declare-fun m!3625553 () Bool)

(assert (=> b!3301315 m!3625553))

(assert (=> b!3301315 m!3624343))

(assert (=> b!3301307 m!3625529))

(assert (=> b!3301307 m!3625531))

(assert (=> b!3301307 m!3625531))

(assert (=> b!3301307 m!3625533))

(assert (=> b!3301307 m!3625533))

(declare-fun m!3625555 () Bool)

(assert (=> b!3301307 m!3625555))

(assert (=> b!3300544 d!923899))

(declare-fun d!923901 () Bool)

(declare-fun lt!1118889 () Bool)

(assert (=> d!923901 (= lt!1118889 (isEmpty!20598 (list!13054 (_2!21113 lt!1118594))))))

(assert (=> d!923901 (= lt!1118889 (isEmpty!20612 (c!559681 (_2!21113 lt!1118594))))))

(assert (=> d!923901 (= (isEmpty!20609 (_2!21113 lt!1118594)) lt!1118889)))

(declare-fun bs!548628 () Bool)

(assert (= bs!548628 d!923901))

(declare-fun m!3625557 () Bool)

(assert (=> bs!548628 m!3625557))

(assert (=> bs!548628 m!3625557))

(declare-fun m!3625559 () Bool)

(assert (=> bs!548628 m!3625559))

(declare-fun m!3625561 () Bool)

(assert (=> bs!548628 m!3625561))

(assert (=> b!3300750 d!923901))

(assert (=> d!923611 d!923735))

(declare-fun call!239999 () Bool)

(declare-fun c!559980 () Bool)

(declare-fun bm!239993 () Bool)

(declare-fun c!559979 () Bool)

(assert (=> bm!239993 (= call!239999 (validRegex!4571 (ite c!559980 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (ite c!559979 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))

(declare-fun b!3301316 () Bool)

(declare-fun res!1339052 () Bool)

(declare-fun e!2053092 () Bool)

(assert (=> b!3301316 (=> (not res!1339052) (not e!2053092))))

(declare-fun call!240000 () Bool)

(assert (=> b!3301316 (= res!1339052 call!240000)))

(declare-fun e!2053093 () Bool)

(assert (=> b!3301316 (= e!2053093 e!2053092)))

(declare-fun b!3301317 () Bool)

(declare-fun call!239998 () Bool)

(assert (=> b!3301317 (= e!2053092 call!239998)))

(declare-fun b!3301318 () Bool)

(declare-fun e!2053098 () Bool)

(assert (=> b!3301318 (= e!2053098 call!239998)))

(declare-fun b!3301319 () Bool)

(declare-fun res!1339053 () Bool)

(declare-fun e!2053096 () Bool)

(assert (=> b!3301319 (=> res!1339053 e!2053096)))

(assert (=> b!3301319 (= res!1339053 (not (is-Concat!15563 (regex!5287 (rule!7785 separatorToken!241)))))))

(assert (=> b!3301319 (= e!2053093 e!2053096)))

(declare-fun bm!239994 () Bool)

(assert (=> bm!239994 (= call!240000 (validRegex!4571 (ite c!559979 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))))))

(declare-fun d!923903 () Bool)

(declare-fun res!1339055 () Bool)

(declare-fun e!2053094 () Bool)

(assert (=> d!923903 (=> res!1339055 e!2053094)))

(assert (=> d!923903 (= res!1339055 (is-ElementMatch!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(assert (=> d!923903 (= (validRegex!4571 (regex!5287 (rule!7785 separatorToken!241))) e!2053094)))

(declare-fun bm!239995 () Bool)

(assert (=> bm!239995 (= call!239998 call!239999)))

(declare-fun b!3301320 () Bool)

(assert (=> b!3301320 (= e!2053096 e!2053098)))

(declare-fun res!1339056 () Bool)

(assert (=> b!3301320 (=> (not res!1339056) (not e!2053098))))

(assert (=> b!3301320 (= res!1339056 call!240000)))

(declare-fun b!3301321 () Bool)

(declare-fun e!2053095 () Bool)

(assert (=> b!3301321 (= e!2053095 call!239999)))

(declare-fun b!3301322 () Bool)

(declare-fun e!2053097 () Bool)

(assert (=> b!3301322 (= e!2053094 e!2053097)))

(assert (=> b!3301322 (= c!559980 (is-Star!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun b!3301323 () Bool)

(assert (=> b!3301323 (= e!2053097 e!2053093)))

(assert (=> b!3301323 (= c!559979 (is-Union!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun b!3301324 () Bool)

(assert (=> b!3301324 (= e!2053097 e!2053095)))

(declare-fun res!1339054 () Bool)

(assert (=> b!3301324 (= res!1339054 (not (nullable!3415 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))))))))

(assert (=> b!3301324 (=> (not res!1339054) (not e!2053095))))

(assert (= (and d!923903 (not res!1339055)) b!3301322))

(assert (= (and b!3301322 c!559980) b!3301324))

(assert (= (and b!3301322 (not c!559980)) b!3301323))

(assert (= (and b!3301324 res!1339054) b!3301321))

(assert (= (and b!3301323 c!559979) b!3301316))

(assert (= (and b!3301323 (not c!559979)) b!3301319))

(assert (= (and b!3301316 res!1339052) b!3301317))

(assert (= (and b!3301319 (not res!1339053)) b!3301320))

(assert (= (and b!3301320 res!1339056) b!3301318))

(assert (= (or b!3301317 b!3301318) bm!239995))

(assert (= (or b!3301316 b!3301320) bm!239994))

(assert (= (or b!3301321 bm!239995) bm!239993))

(declare-fun m!3625563 () Bool)

(assert (=> bm!239993 m!3625563))

(declare-fun m!3625565 () Bool)

(assert (=> bm!239994 m!3625565))

(declare-fun m!3625567 () Bool)

(assert (=> b!3301324 m!3625567))

(assert (=> d!923611 d!923903))

(declare-fun b!3301325 () Bool)

(declare-fun e!2053099 () List!36583)

(declare-fun call!240003 () List!36583)

(assert (=> b!3301325 (= e!2053099 call!240003)))

(declare-fun c!559983 () Bool)

(declare-fun b!3301326 () Bool)

(assert (=> b!3301326 (= c!559983 (is-Star!10046 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun e!2053102 () List!36583)

(declare-fun e!2053101 () List!36583)

(assert (=> b!3301326 (= e!2053102 e!2053101)))

(declare-fun b!3301327 () Bool)

(assert (=> b!3301327 (= e!2053099 call!240003)))

(declare-fun b!3301328 () Bool)

(declare-fun call!240004 () List!36583)

(assert (=> b!3301328 (= e!2053101 call!240004)))

(declare-fun bm!239996 () Bool)

(declare-fun call!240002 () List!36583)

(assert (=> bm!239996 (= call!240002 call!240004)))

(declare-fun c!559981 () Bool)

(declare-fun d!923905 () Bool)

(assert (=> d!923905 (= c!559981 (or (is-EmptyExpr!10046 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))) (is-EmptyLang!10046 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))))

(declare-fun e!2053100 () List!36583)

(assert (=> d!923905 (= (usedCharacters!589 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))) e!2053100)))

(declare-fun b!3301329 () Bool)

(assert (=> b!3301329 (= e!2053101 e!2053099)))

(declare-fun c!559982 () Bool)

(assert (=> b!3301329 (= c!559982 (is-Union!10046 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun call!240001 () List!36583)

(declare-fun bm!239997 () Bool)

(assert (=> bm!239997 (= call!240001 (usedCharacters!589 (ite c!559982 (regTwo!20605 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))) (regOne!20604 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))))

(declare-fun b!3301330 () Bool)

(assert (=> b!3301330 (= e!2053102 (Cons!36459 (c!559680 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))) Nil!36459))))

(declare-fun bm!239998 () Bool)

(assert (=> bm!239998 (= call!240003 (++!8815 (ite c!559982 call!240002 call!240001) (ite c!559982 call!240001 call!240002)))))

(declare-fun bm!239999 () Bool)

(assert (=> bm!239999 (= call!240004 (usedCharacters!589 (ite c!559983 (reg!10375 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))) (ite c!559982 (regOne!20605 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))) (regTwo!20604 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))))))

(declare-fun b!3301331 () Bool)

(assert (=> b!3301331 (= e!2053100 e!2053102)))

(declare-fun c!559984 () Bool)

(assert (=> b!3301331 (= c!559984 (is-ElementMatch!10046 (ite c!559796 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (ite c!559795 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun b!3301332 () Bool)

(assert (=> b!3301332 (= e!2053100 Nil!36459)))

(assert (= (and d!923905 c!559981) b!3301332))

(assert (= (and d!923905 (not c!559981)) b!3301331))

(assert (= (and b!3301331 c!559984) b!3301330))

(assert (= (and b!3301331 (not c!559984)) b!3301326))

(assert (= (and b!3301326 c!559983) b!3301328))

(assert (= (and b!3301326 (not c!559983)) b!3301329))

(assert (= (and b!3301329 c!559982) b!3301327))

(assert (= (and b!3301329 (not c!559982)) b!3301325))

(assert (= (or b!3301327 b!3301325) bm!239997))

(assert (= (or b!3301327 b!3301325) bm!239996))

(assert (= (or b!3301327 b!3301325) bm!239998))

(assert (= (or b!3301328 bm!239996) bm!239999))

(declare-fun m!3625569 () Bool)

(assert (=> bm!239997 m!3625569))

(declare-fun m!3625571 () Bool)

(assert (=> bm!239998 m!3625571))

(declare-fun m!3625573 () Bool)

(assert (=> bm!239999 m!3625573))

(assert (=> bm!239931 d!923905))

(declare-fun d!923907 () Bool)

(declare-fun lt!1118890 () Int)

(assert (=> d!923907 (>= lt!1118890 0)))

(declare-fun e!2053103 () Int)

(assert (=> d!923907 (= lt!1118890 e!2053103)))

(declare-fun c!559985 () Bool)

(assert (=> d!923907 (= c!559985 (is-Nil!36459 (t!252748 lt!1118263)))))

(assert (=> d!923907 (= (size!27531 (t!252748 lt!1118263)) lt!1118890)))

(declare-fun b!3301333 () Bool)

(assert (=> b!3301333 (= e!2053103 0)))

(declare-fun b!3301334 () Bool)

(assert (=> b!3301334 (= e!2053103 (+ 1 (size!27531 (t!252748 (t!252748 lt!1118263)))))))

(assert (= (and d!923907 c!559985) b!3301333))

(assert (= (and d!923907 (not c!559985)) b!3301334))

(declare-fun m!3625575 () Bool)

(assert (=> b!3301334 m!3625575))

(assert (=> b!3300167 d!923907))

(assert (=> b!3300550 d!923841))

(declare-fun d!923909 () Bool)

(assert (=> d!923909 (= (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540))))) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540))))))))

(declare-fun b_lambda!92057 () Bool)

(assert (=> (not b_lambda!92057) (not d!923909)))

(declare-fun t!252855 () Bool)

(declare-fun tb!170935 () Bool)

(assert (=> (and b!3299965 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252855) tb!170935))

(declare-fun result!213688 () Bool)

(assert (=> tb!170935 (= result!213688 (inv!21 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540)))))))))

(declare-fun m!3625577 () Bool)

(assert (=> tb!170935 m!3625577))

(assert (=> d!923909 t!252855))

(declare-fun b_and!225931 () Bool)

(assert (= b_and!225847 (and (=> t!252855 result!213688) b_and!225931)))

(declare-fun tb!170937 () Bool)

(declare-fun t!252857 () Bool)

(assert (=> (and b!3300954 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252857) tb!170937))

(declare-fun result!213690 () Bool)

(assert (= result!213690 result!213688))

(assert (=> d!923909 t!252857))

(declare-fun b_and!225933 () Bool)

(assert (= b_and!225893 (and (=> t!252857 result!213690) b_and!225933)))

(declare-fun tb!170939 () Bool)

(declare-fun t!252859 () Bool)

(assert (=> (and b!3299943 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252859) tb!170939))

(declare-fun result!213692 () Bool)

(assert (= result!213692 result!213688))

(assert (=> d!923909 t!252859))

(declare-fun b_and!225935 () Bool)

(assert (= b_and!225851 (and (=> t!252859 result!213692) b_and!225935)))

(declare-fun t!252861 () Bool)

(declare-fun tb!170941 () Bool)

(assert (=> (and b!3299937 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252861) tb!170941))

(declare-fun result!213694 () Bool)

(assert (= result!213694 result!213688))

(assert (=> d!923909 t!252861))

(declare-fun b_and!225937 () Bool)

(assert (= b_and!225849 (and (=> t!252861 result!213694) b_and!225937)))

(declare-fun tb!170943 () Bool)

(declare-fun t!252863 () Bool)

(assert (=> (and b!3300934 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252863) tb!170943))

(declare-fun result!213696 () Bool)

(assert (= result!213696 result!213688))

(assert (=> d!923909 t!252863))

(declare-fun b_and!225939 () Bool)

(assert (= b_and!225889 (and (=> t!252863 result!213696) b_and!225939)))

(assert (=> d!923909 m!3624357))

(declare-fun m!3625579 () Bool)

(assert (=> d!923909 m!3625579))

(assert (=> b!3300550 d!923909))

(declare-fun d!923911 () Bool)

(assert (=> d!923911 (= (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540)))) (fromListB!1596 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118540)))))))

(declare-fun bs!548629 () Bool)

(assert (= bs!548629 d!923911))

(declare-fun m!3625581 () Bool)

(assert (=> bs!548629 m!3625581))

(assert (=> b!3300550 d!923911))

(declare-fun lt!1118891 () Bool)

(declare-fun d!923913 () Bool)

(assert (=> d!923913 (= lt!1118891 (isEmpty!20598 (list!13054 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))))))))))

(assert (=> d!923913 (= lt!1118891 (isEmpty!20612 (c!559681 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))))))))))

(assert (=> d!923913 (= (isEmpty!20609 (_2!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)))))) lt!1118891)))

(declare-fun bs!548630 () Bool)

(assert (= bs!548630 d!923913))

(declare-fun m!3625583 () Bool)

(assert (=> bs!548630 m!3625583))

(assert (=> bs!548630 m!3625583))

(declare-fun m!3625585 () Bool)

(assert (=> bs!548630 m!3625585))

(declare-fun m!3625587 () Bool)

(assert (=> bs!548630 m!3625587))

(assert (=> b!3300814 d!923913))

(declare-fun b!3301335 () Bool)

(declare-fun e!2053106 () Bool)

(declare-fun lt!1118892 () tuple2!35958)

(assert (=> b!3301335 (= e!2053106 (not (isEmpty!20597 (_1!21113 lt!1118892))))))

(declare-fun d!923915 () Bool)

(declare-fun e!2053105 () Bool)

(assert (=> d!923915 e!2053105))

(declare-fun res!1339057 () Bool)

(assert (=> d!923915 (=> (not res!1339057) (not e!2053105))))

(declare-fun e!2053107 () Bool)

(assert (=> d!923915 (= res!1339057 e!2053107)))

(declare-fun c!559986 () Bool)

(assert (=> d!923915 (= c!559986 (> (size!27538 (_1!21113 lt!1118892)) 0))))

(assert (=> d!923915 (= lt!1118892 (lexTailRecV2!961 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))) (BalanceConc!21513 Empty!10949) (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))) (BalanceConc!21515 Empty!10950)))))

(assert (=> d!923915 (= (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)))) lt!1118892)))

(declare-fun b!3301336 () Bool)

(assert (=> b!3301336 (= e!2053107 (= (_2!21113 lt!1118892) (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)))))))

(declare-fun b!3301337 () Bool)

(assert (=> b!3301337 (= e!2053107 e!2053106)))

(declare-fun res!1339059 () Bool)

(assert (=> b!3301337 (= res!1339059 (< (size!27536 (_2!21113 lt!1118892)) (size!27536 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))))))))

(assert (=> b!3301337 (=> (not res!1339059) (not e!2053106))))

(declare-fun b!3301338 () Bool)

(assert (=> b!3301338 (= e!2053105 (= (list!13054 (_2!21113 lt!1118892)) (_2!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))))))))))

(declare-fun b!3301339 () Bool)

(declare-fun res!1339058 () Bool)

(assert (=> b!3301339 (=> (not res!1339058) (not e!2053105))))

(assert (=> b!3301339 (= res!1339058 (= (list!13055 (_1!21113 lt!1118892)) (_1!21111 (lexList!1350 thiss!18206 rules!2135 (list!13054 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))))))))))

(assert (= (and d!923915 c!559986) b!3301337))

(assert (= (and d!923915 (not c!559986)) b!3301336))

(assert (= (and b!3301337 res!1339059) b!3301335))

(assert (= (and d!923915 res!1339057) b!3301339))

(assert (= (and b!3301339 res!1339058) b!3301338))

(declare-fun m!3625589 () Bool)

(assert (=> b!3301337 m!3625589))

(assert (=> b!3301337 m!3624705))

(declare-fun m!3625591 () Bool)

(assert (=> b!3301337 m!3625591))

(declare-fun m!3625593 () Bool)

(assert (=> d!923915 m!3625593))

(assert (=> d!923915 m!3624705))

(assert (=> d!923915 m!3624705))

(declare-fun m!3625595 () Bool)

(assert (=> d!923915 m!3625595))

(declare-fun m!3625597 () Bool)

(assert (=> b!3301335 m!3625597))

(declare-fun m!3625599 () Bool)

(assert (=> b!3301338 m!3625599))

(assert (=> b!3301338 m!3624705))

(declare-fun m!3625601 () Bool)

(assert (=> b!3301338 m!3625601))

(assert (=> b!3301338 m!3625601))

(declare-fun m!3625603 () Bool)

(assert (=> b!3301338 m!3625603))

(declare-fun m!3625605 () Bool)

(assert (=> b!3301339 m!3625605))

(assert (=> b!3301339 m!3624705))

(assert (=> b!3301339 m!3625601))

(assert (=> b!3301339 m!3625601))

(assert (=> b!3301339 m!3625603))

(assert (=> b!3300814 d!923915))

(declare-fun d!923917 () Bool)

(declare-fun lt!1118893 () BalanceConc!21512)

(assert (=> d!923917 (= (list!13054 lt!1118893) (printList!1426 thiss!18206 (list!13055 (singletonSeq!2383 (h!41880 tokens!494)))))))

(assert (=> d!923917 (= lt!1118893 (printTailRec!1373 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)) 0 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!923917 (= (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))) lt!1118893)))

(declare-fun bs!548631 () Bool)

(assert (= bs!548631 d!923917))

(declare-fun m!3625607 () Bool)

(assert (=> bs!548631 m!3625607))

(assert (=> bs!548631 m!3623659))

(assert (=> bs!548631 m!3624701))

(assert (=> bs!548631 m!3624701))

(declare-fun m!3625609 () Bool)

(assert (=> bs!548631 m!3625609))

(assert (=> bs!548631 m!3623659))

(declare-fun m!3625611 () Bool)

(assert (=> bs!548631 m!3625611))

(assert (=> b!3300814 d!923917))

(assert (=> b!3300814 d!923475))

(assert (=> d!923529 d!923669))

(declare-fun b!3301340 () Bool)

(declare-fun res!1339065 () Bool)

(declare-fun e!2053109 () Bool)

(assert (=> b!3301340 (=> (not res!1339065) (not e!2053109))))

(declare-fun lt!1118896 () Option!7269)

(assert (=> b!3301340 (= res!1339065 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118896)))) (_2!21112 (get!11636 lt!1118896))) (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262)))))

(declare-fun b!3301341 () Bool)

(declare-fun res!1339062 () Bool)

(assert (=> b!3301341 (=> (not res!1339062) (not e!2053109))))

(assert (=> b!3301341 (= res!1339062 (= (value!171141 (_1!21112 (get!11636 lt!1118896))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118896)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118896)))))))))

(declare-fun d!923919 () Bool)

(declare-fun e!2053108 () Bool)

(assert (=> d!923919 e!2053108))

(declare-fun res!1339066 () Bool)

(assert (=> d!923919 (=> res!1339066 e!2053108)))

(assert (=> d!923919 (= res!1339066 (isEmpty!20606 lt!1118896))))

(declare-fun e!2053110 () Option!7269)

(assert (=> d!923919 (= lt!1118896 e!2053110)))

(declare-fun c!559987 () Bool)

(assert (=> d!923919 (= c!559987 (and (is-Cons!36461 rules!2135) (is-Nil!36461 (t!252750 rules!2135))))))

(declare-fun lt!1118895 () Unit!51389)

(declare-fun lt!1118897 () Unit!51389)

(assert (=> d!923919 (= lt!1118895 lt!1118897)))

(assert (=> d!923919 (isPrefix!2804 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262) (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262))))

(assert (=> d!923919 (= lt!1118897 (lemmaIsPrefixRefl!1763 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262) (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262)))))

(assert (=> d!923919 (rulesValidInductive!1803 thiss!18206 rules!2135)))

(assert (=> d!923919 (= (maxPrefix!2504 thiss!18206 rules!2135 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262)) lt!1118896)))

(declare-fun b!3301342 () Bool)

(assert (=> b!3301342 (= e!2053109 (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1118896)))))))

(declare-fun call!240005 () Option!7269)

(declare-fun bm!240000 () Bool)

(assert (=> bm!240000 (= call!240005 (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262)))))

(declare-fun b!3301343 () Bool)

(assert (=> b!3301343 (= e!2053108 e!2053109)))

(declare-fun res!1339060 () Bool)

(assert (=> b!3301343 (=> (not res!1339060) (not e!2053109))))

(assert (=> b!3301343 (= res!1339060 (isDefined!5636 lt!1118896))))

(declare-fun b!3301344 () Bool)

(declare-fun lt!1118894 () Option!7269)

(declare-fun lt!1118898 () Option!7269)

(assert (=> b!3301344 (= e!2053110 (ite (and (is-None!7268 lt!1118894) (is-None!7268 lt!1118898)) None!7268 (ite (is-None!7268 lt!1118898) lt!1118894 (ite (is-None!7268 lt!1118894) lt!1118898 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1118894))) (size!27530 (_1!21112 (v!36014 lt!1118898)))) lt!1118894 lt!1118898)))))))

(assert (=> b!3301344 (= lt!1118894 call!240005)))

(assert (=> b!3301344 (= lt!1118898 (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262)))))

(declare-fun b!3301345 () Bool)

(declare-fun res!1339063 () Bool)

(assert (=> b!3301345 (=> (not res!1339063) (not e!2053109))))

(assert (=> b!3301345 (= res!1339063 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118896)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118896)))))))

(declare-fun b!3301346 () Bool)

(declare-fun res!1339064 () Bool)

(assert (=> b!3301346 (=> (not res!1339064) (not e!2053109))))

(assert (=> b!3301346 (= res!1339064 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118896)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118896))))))))

(declare-fun b!3301347 () Bool)

(assert (=> b!3301347 (= e!2053110 call!240005)))

(declare-fun b!3301348 () Bool)

(declare-fun res!1339061 () Bool)

(assert (=> b!3301348 (=> (not res!1339061) (not e!2053109))))

(assert (=> b!3301348 (= res!1339061 (< (size!27531 (_2!21112 (get!11636 lt!1118896))) (size!27531 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262))))))

(assert (= (and d!923919 c!559987) b!3301347))

(assert (= (and d!923919 (not c!559987)) b!3301344))

(assert (= (or b!3301347 b!3301344) bm!240000))

(assert (= (and d!923919 (not res!1339066)) b!3301343))

(assert (= (and b!3301343 res!1339060) b!3301345))

(assert (= (and b!3301345 res!1339063) b!3301348))

(assert (= (and b!3301348 res!1339061) b!3301340))

(assert (= (and b!3301340 res!1339065) b!3301341))

(assert (= (and b!3301341 res!1339062) b!3301346))

(assert (= (and b!3301346 res!1339064) b!3301342))

(declare-fun m!3625613 () Bool)

(assert (=> b!3301346 m!3625613))

(declare-fun m!3625615 () Bool)

(assert (=> b!3301346 m!3625615))

(assert (=> b!3301346 m!3625615))

(declare-fun m!3625617 () Bool)

(assert (=> b!3301346 m!3625617))

(assert (=> b!3301346 m!3625617))

(declare-fun m!3625619 () Bool)

(assert (=> b!3301346 m!3625619))

(assert (=> b!3301345 m!3625613))

(assert (=> b!3301345 m!3625615))

(assert (=> b!3301345 m!3625615))

(assert (=> b!3301345 m!3625617))

(assert (=> bm!240000 m!3624409))

(declare-fun m!3625621 () Bool)

(assert (=> bm!240000 m!3625621))

(assert (=> b!3301341 m!3625613))

(declare-fun m!3625623 () Bool)

(assert (=> b!3301341 m!3625623))

(assert (=> b!3301341 m!3625623))

(declare-fun m!3625625 () Bool)

(assert (=> b!3301341 m!3625625))

(declare-fun m!3625627 () Bool)

(assert (=> b!3301343 m!3625627))

(declare-fun m!3625629 () Bool)

(assert (=> d!923919 m!3625629))

(assert (=> d!923919 m!3624409))

(assert (=> d!923919 m!3624409))

(declare-fun m!3625631 () Bool)

(assert (=> d!923919 m!3625631))

(assert (=> d!923919 m!3624409))

(assert (=> d!923919 m!3624409))

(declare-fun m!3625633 () Bool)

(assert (=> d!923919 m!3625633))

(assert (=> d!923919 m!3624335))

(assert (=> b!3301342 m!3625613))

(declare-fun m!3625635 () Bool)

(assert (=> b!3301342 m!3625635))

(assert (=> b!3301344 m!3624409))

(declare-fun m!3625637 () Bool)

(assert (=> b!3301344 m!3625637))

(assert (=> b!3301348 m!3625613))

(declare-fun m!3625639 () Bool)

(assert (=> b!3301348 m!3625639))

(assert (=> b!3301348 m!3624409))

(declare-fun m!3625641 () Bool)

(assert (=> b!3301348 m!3625641))

(assert (=> b!3301340 m!3625613))

(assert (=> b!3301340 m!3625615))

(assert (=> b!3301340 m!3625615))

(assert (=> b!3301340 m!3625617))

(assert (=> b!3301340 m!3625617))

(declare-fun m!3625643 () Bool)

(assert (=> b!3301340 m!3625643))

(assert (=> d!923529 d!923919))

(assert (=> d!923529 d!923667))

(declare-fun b!3301350 () Bool)

(declare-fun e!2053112 () List!36583)

(assert (=> b!3301350 (= e!2053112 (Cons!36459 (h!41879 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (++!8815 (t!252748 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) lt!1118262)))))

(declare-fun b!3301349 () Bool)

(assert (=> b!3301349 (= e!2053112 lt!1118262)))

(declare-fun b!3301351 () Bool)

(declare-fun res!1339067 () Bool)

(declare-fun e!2053111 () Bool)

(assert (=> b!3301351 (=> (not res!1339067) (not e!2053111))))

(declare-fun lt!1118899 () List!36583)

(assert (=> b!3301351 (= res!1339067 (= (size!27531 lt!1118899) (+ (size!27531 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (size!27531 lt!1118262))))))

(declare-fun d!923921 () Bool)

(assert (=> d!923921 e!2053111))

(declare-fun res!1339068 () Bool)

(assert (=> d!923921 (=> (not res!1339068) (not e!2053111))))

(assert (=> d!923921 (= res!1339068 (= (content!4957 lt!1118899) (set.union (content!4957 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (content!4957 lt!1118262))))))

(assert (=> d!923921 (= lt!1118899 e!2053112)))

(declare-fun c!559988 () Bool)

(assert (=> d!923921 (= c!559988 (is-Nil!36459 (list!13054 (charsOf!3303 (h!41880 tokens!494)))))))

(assert (=> d!923921 (= (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262) lt!1118899)))

(declare-fun b!3301352 () Bool)

(assert (=> b!3301352 (= e!2053111 (or (not (= lt!1118262 Nil!36459)) (= lt!1118899 (list!13054 (charsOf!3303 (h!41880 tokens!494))))))))

(assert (= (and d!923921 c!559988) b!3301349))

(assert (= (and d!923921 (not c!559988)) b!3301350))

(assert (= (and d!923921 res!1339068) b!3301351))

(assert (= (and b!3301351 res!1339067) b!3301352))

(declare-fun m!3625645 () Bool)

(assert (=> b!3301350 m!3625645))

(declare-fun m!3625647 () Bool)

(assert (=> b!3301351 m!3625647))

(assert (=> b!3301351 m!3623565))

(declare-fun m!3625649 () Bool)

(assert (=> b!3301351 m!3625649))

(assert (=> b!3301351 m!3624807))

(declare-fun m!3625651 () Bool)

(assert (=> d!923921 m!3625651))

(assert (=> d!923921 m!3623565))

(declare-fun m!3625653 () Bool)

(assert (=> d!923921 m!3625653))

(assert (=> d!923921 m!3624813))

(assert (=> d!923529 d!923921))

(declare-fun d!923923 () Bool)

(assert (=> d!923923 (= (maxPrefix!2504 thiss!18206 rules!2135 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) lt!1118262)) (Some!7268 (tuple2!35957 (h!41880 tokens!494) lt!1118262)))))

(assert (=> d!923923 true))

(declare-fun _$49!235 () Unit!51389)

(assert (=> d!923923 (= (choose!19112 thiss!18206 rules!2135 (h!41880 tokens!494) (rule!7785 (h!41880 tokens!494)) lt!1118262 (rule!7785 separatorToken!241)) _$49!235)))

(declare-fun bs!548632 () Bool)

(assert (= bs!548632 d!923923))

(assert (=> bs!548632 m!3623563))

(assert (=> bs!548632 m!3623563))

(assert (=> bs!548632 m!3623565))

(assert (=> bs!548632 m!3623565))

(assert (=> bs!548632 m!3624409))

(assert (=> bs!548632 m!3624409))

(assert (=> bs!548632 m!3624411))

(assert (=> d!923529 d!923923))

(assert (=> d!923529 d!923535))

(declare-fun d!923925 () Bool)

(declare-fun res!1339069 () Bool)

(declare-fun e!2053113 () Bool)

(assert (=> d!923925 (=> (not res!1339069) (not e!2053113))))

(assert (=> d!923925 (= res!1339069 (not (isEmpty!20598 (originalCharacters!6001 (h!41880 (t!252749 tokens!494))))))))

(assert (=> d!923925 (= (inv!49410 (h!41880 (t!252749 tokens!494))) e!2053113)))

(declare-fun b!3301353 () Bool)

(declare-fun res!1339070 () Bool)

(assert (=> b!3301353 (=> (not res!1339070) (not e!2053113))))

(assert (=> b!3301353 (= res!1339070 (= (originalCharacters!6001 (h!41880 (t!252749 tokens!494))) (list!13054 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (value!171141 (h!41880 (t!252749 tokens!494)))))))))

(declare-fun b!3301354 () Bool)

(assert (=> b!3301354 (= e!2053113 (= (size!27530 (h!41880 (t!252749 tokens!494))) (size!27531 (originalCharacters!6001 (h!41880 (t!252749 tokens!494))))))))

(assert (= (and d!923925 res!1339069) b!3301353))

(assert (= (and b!3301353 res!1339070) b!3301354))

(declare-fun b_lambda!92059 () Bool)

(assert (=> (not b_lambda!92059) (not b!3301353)))

(declare-fun t!252865 () Bool)

(declare-fun tb!170945 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) t!252865) tb!170945))

(declare-fun b!3301355 () Bool)

(declare-fun e!2053114 () Bool)

(declare-fun tp!1033805 () Bool)

(assert (=> b!3301355 (= e!2053114 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (value!171141 (h!41880 (t!252749 tokens!494)))))) tp!1033805))))

(declare-fun result!213698 () Bool)

(assert (=> tb!170945 (= result!213698 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (value!171141 (h!41880 (t!252749 tokens!494))))) e!2053114))))

(assert (= tb!170945 b!3301355))

(declare-fun m!3625655 () Bool)

(assert (=> b!3301355 m!3625655))

(declare-fun m!3625657 () Bool)

(assert (=> tb!170945 m!3625657))

(assert (=> b!3301353 t!252865))

(declare-fun b_and!225941 () Bool)

(assert (= b_and!225927 (and (=> t!252865 result!213698) b_and!225941)))

(declare-fun t!252867 () Bool)

(declare-fun tb!170947 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) t!252867) tb!170947))

(declare-fun result!213700 () Bool)

(assert (= result!213700 result!213698))

(assert (=> b!3301353 t!252867))

(declare-fun b_and!225943 () Bool)

(assert (= b_and!225921 (and (=> t!252867 result!213700) b_and!225943)))

(declare-fun t!252869 () Bool)

(declare-fun tb!170949 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) t!252869) tb!170949))

(declare-fun result!213702 () Bool)

(assert (= result!213702 result!213698))

(assert (=> b!3301353 t!252869))

(declare-fun b_and!225945 () Bool)

(assert (= b_and!225923 (and (=> t!252869 result!213702) b_and!225945)))

(declare-fun tb!170951 () Bool)

(declare-fun t!252871 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) t!252871) tb!170951))

(declare-fun result!213704 () Bool)

(assert (= result!213704 result!213698))

(assert (=> b!3301353 t!252871))

(declare-fun b_and!225947 () Bool)

(assert (= b_and!225925 (and (=> t!252871 result!213704) b_and!225947)))

(declare-fun tb!170953 () Bool)

(declare-fun t!252873 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) t!252873) tb!170953))

(declare-fun result!213706 () Bool)

(assert (= result!213706 result!213698))

(assert (=> b!3301353 t!252873))

(declare-fun b_and!225949 () Bool)

(assert (= b_and!225929 (and (=> t!252873 result!213706) b_and!225949)))

(declare-fun m!3625659 () Bool)

(assert (=> d!923925 m!3625659))

(declare-fun m!3625661 () Bool)

(assert (=> b!3301353 m!3625661))

(assert (=> b!3301353 m!3625661))

(declare-fun m!3625663 () Bool)

(assert (=> b!3301353 m!3625663))

(declare-fun m!3625665 () Bool)

(assert (=> b!3301354 m!3625665))

(assert (=> b!3300951 d!923925))

(declare-fun d!923927 () Bool)

(assert (=> d!923927 (= (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))) (v!36015 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> b!3300155 d!923927))

(assert (=> b!3300155 d!923449))

(declare-fun d!923929 () Bool)

(assert (=> d!923929 true))

(declare-fun order!18907 () Int)

(declare-fun lambda!118876 () Int)

(declare-fun dynLambda!14926 (Int Int) Int)

(assert (=> d!923929 (< (dynLambda!14923 order!18905 (toChars!7274 (transformation!5287 (h!41881 rules!2135)))) (dynLambda!14926 order!18907 lambda!118876))))

(assert (=> d!923929 true))

(assert (=> d!923929 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (h!41881 rules!2135)))) (dynLambda!14926 order!18907 lambda!118876))))

(declare-fun Forall!1288 (Int) Bool)

(assert (=> d!923929 (= (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (h!41881 rules!2135)))) (Forall!1288 lambda!118876))))

(declare-fun bs!548633 () Bool)

(assert (= bs!548633 d!923929))

(declare-fun m!3625667 () Bool)

(assert (=> bs!548633 m!3625667))

(assert (=> d!923633 d!923929))

(declare-fun d!923931 () Bool)

(assert (=> d!923931 (= (head!7120 lt!1118263) (h!41879 lt!1118263))))

(assert (=> b!3300137 d!923931))

(declare-fun b!3301360 () Bool)

(declare-fun e!2053115 () List!36583)

(declare-fun call!240008 () List!36583)

(assert (=> b!3301360 (= e!2053115 call!240008)))

(declare-fun b!3301361 () Bool)

(declare-fun c!559991 () Bool)

(assert (=> b!3301361 (= c!559991 (is-Star!10046 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))))))

(declare-fun e!2053118 () List!36583)

(declare-fun e!2053117 () List!36583)

(assert (=> b!3301361 (= e!2053118 e!2053117)))

(declare-fun b!3301362 () Bool)

(assert (=> b!3301362 (= e!2053115 call!240008)))

(declare-fun b!3301363 () Bool)

(declare-fun call!240009 () List!36583)

(assert (=> b!3301363 (= e!2053117 call!240009)))

(declare-fun bm!240001 () Bool)

(declare-fun call!240007 () List!36583)

(assert (=> bm!240001 (= call!240007 call!240009)))

(declare-fun d!923933 () Bool)

(declare-fun c!559989 () Bool)

(assert (=> d!923933 (= c!559989 (or (is-EmptyExpr!10046 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) (is-EmptyLang!10046 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))

(declare-fun e!2053116 () List!36583)

(assert (=> d!923933 (= (usedCharacters!589 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) e!2053116)))

(declare-fun b!3301364 () Bool)

(assert (=> b!3301364 (= e!2053117 e!2053115)))

(declare-fun c!559990 () Bool)

(assert (=> b!3301364 (= c!559990 (is-Union!10046 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))))))

(declare-fun bm!240002 () Bool)

(declare-fun call!240006 () List!36583)

(assert (=> bm!240002 (= call!240006 (usedCharacters!589 (ite c!559990 (regTwo!20605 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) (regOne!20604 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))))))))

(declare-fun b!3301365 () Bool)

(assert (=> b!3301365 (= e!2053118 (Cons!36459 (c!559680 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) Nil!36459))))

(declare-fun bm!240003 () Bool)

(assert (=> bm!240003 (= call!240008 (++!8815 (ite c!559990 call!240007 call!240006) (ite c!559990 call!240006 call!240007)))))

(declare-fun bm!240004 () Bool)

(assert (=> bm!240004 (= call!240009 (usedCharacters!589 (ite c!559991 (reg!10375 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) (ite c!559990 (regOne!20605 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) (regTwo!20604 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241)))))))))))

(declare-fun b!3301366 () Bool)

(assert (=> b!3301366 (= e!2053116 e!2053118)))

(declare-fun c!559992 () Bool)

(assert (=> b!3301366 (= c!559992 (is-ElementMatch!10046 (ite c!559720 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))))))

(declare-fun b!3301367 () Bool)

(assert (=> b!3301367 (= e!2053116 Nil!36459)))

(assert (= (and d!923933 c!559989) b!3301367))

(assert (= (and d!923933 (not c!559989)) b!3301366))

(assert (= (and b!3301366 c!559992) b!3301365))

(assert (= (and b!3301366 (not c!559992)) b!3301361))

(assert (= (and b!3301361 c!559991) b!3301363))

(assert (= (and b!3301361 (not c!559991)) b!3301364))

(assert (= (and b!3301364 c!559990) b!3301362))

(assert (= (and b!3301364 (not c!559990)) b!3301360))

(assert (= (or b!3301362 b!3301360) bm!240002))

(assert (= (or b!3301362 b!3301360) bm!240001))

(assert (= (or b!3301362 b!3301360) bm!240003))

(assert (= (or b!3301363 bm!240001) bm!240004))

(declare-fun m!3625669 () Bool)

(assert (=> bm!240002 m!3625669))

(declare-fun m!3625671 () Bool)

(assert (=> bm!240003 m!3625671))

(declare-fun m!3625673 () Bool)

(assert (=> bm!240004 m!3625673))

(assert (=> bm!239902 d!923933))

(declare-fun d!923935 () Bool)

(assert (=> d!923935 true))

(declare-fun lambda!118879 () Int)

(declare-fun order!18909 () Int)

(declare-fun dynLambda!14927 (Int Int) Int)

(assert (=> d!923935 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (dynLambda!14927 order!18909 lambda!118879))))

(declare-fun Forall2!885 (Int) Bool)

(assert (=> d!923935 (= (equivClasses!2083 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (Forall2!885 lambda!118879))))

(declare-fun bs!548634 () Bool)

(assert (= bs!548634 d!923935))

(declare-fun m!3625675 () Bool)

(assert (=> bs!548634 m!3625675))

(assert (=> b!3300381 d!923935))

(declare-fun d!923937 () Bool)

(declare-fun lt!1118900 () Bool)

(assert (=> d!923937 (= lt!1118900 (isEmpty!20599 (list!13055 (_1!21113 lt!1118659))))))

(assert (=> d!923937 (= lt!1118900 (isEmpty!20610 (c!559682 (_1!21113 lt!1118659))))))

(assert (=> d!923937 (= (isEmpty!20597 (_1!21113 lt!1118659)) lt!1118900)))

(declare-fun bs!548635 () Bool)

(assert (= bs!548635 d!923937))

(assert (=> bs!548635 m!3624941))

(assert (=> bs!548635 m!3624941))

(declare-fun m!3625677 () Bool)

(assert (=> bs!548635 m!3625677))

(declare-fun m!3625679 () Bool)

(assert (=> bs!548635 m!3625679))

(assert (=> b!3300903 d!923937))

(declare-fun d!923939 () Bool)

(declare-fun lt!1118901 () Int)

(assert (=> d!923939 (>= lt!1118901 0)))

(declare-fun e!2053121 () Int)

(assert (=> d!923939 (= lt!1118901 e!2053121)))

(declare-fun c!559993 () Bool)

(assert (=> d!923939 (= c!559993 (is-Nil!36459 (_2!21111 lt!1118610)))))

(assert (=> d!923939 (= (size!27531 (_2!21111 lt!1118610)) lt!1118901)))

(declare-fun b!3301372 () Bool)

(assert (=> b!3301372 (= e!2053121 0)))

(declare-fun b!3301373 () Bool)

(assert (=> b!3301373 (= e!2053121 (+ 1 (size!27531 (t!252748 (_2!21111 lt!1118610)))))))

(assert (= (and d!923939 c!559993) b!3301372))

(assert (= (and d!923939 (not c!559993)) b!3301373))

(declare-fun m!3625681 () Bool)

(assert (=> b!3301373 m!3625681))

(assert (=> b!3300802 d!923939))

(declare-fun d!923941 () Bool)

(declare-fun lt!1118902 () Int)

(assert (=> d!923941 (>= lt!1118902 0)))

(declare-fun e!2053122 () Int)

(assert (=> d!923941 (= lt!1118902 e!2053122)))

(declare-fun c!559994 () Bool)

(assert (=> d!923941 (= c!559994 (is-Nil!36459 (_2!21112 (v!36014 lt!1118267))))))

(assert (=> d!923941 (= (size!27531 (_2!21112 (v!36014 lt!1118267))) lt!1118902)))

(declare-fun b!3301374 () Bool)

(assert (=> b!3301374 (= e!2053122 0)))

(declare-fun b!3301375 () Bool)

(assert (=> b!3301375 (= e!2053122 (+ 1 (size!27531 (t!252748 (_2!21112 (v!36014 lt!1118267))))))))

(assert (= (and d!923941 c!559994) b!3301374))

(assert (= (and d!923941 (not c!559994)) b!3301375))

(declare-fun m!3625683 () Bool)

(assert (=> b!3301375 m!3625683))

(assert (=> b!3300802 d!923941))

(declare-fun b!3301376 () Bool)

(declare-fun e!2053124 () Bool)

(assert (=> b!3301376 (= e!2053124 (nullable!3415 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun b!3301377 () Bool)

(declare-fun res!1339079 () Bool)

(declare-fun e!2053128 () Bool)

(assert (=> b!3301377 (=> (not res!1339079) (not e!2053128))))

(declare-fun call!240010 () Bool)

(assert (=> b!3301377 (= res!1339079 (not call!240010))))

(declare-fun b!3301378 () Bool)

(assert (=> b!3301378 (= e!2053124 (matchR!4668 (derivativeStep!2968 (regex!5287 (rule!7785 (h!41880 tokens!494))) (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454)))))) (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454)))))))))

(declare-fun b!3301379 () Bool)

(declare-fun e!2053126 () Bool)

(declare-fun e!2053129 () Bool)

(assert (=> b!3301379 (= e!2053126 e!2053129)))

(declare-fun c!559997 () Bool)

(assert (=> b!3301379 (= c!559997 (is-EmptyLang!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun d!923943 () Bool)

(assert (=> d!923943 e!2053126))

(declare-fun c!559996 () Bool)

(assert (=> d!923943 (= c!559996 (is-EmptyExpr!10046 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun lt!1118903 () Bool)

(assert (=> d!923943 (= lt!1118903 e!2053124)))

(declare-fun c!559995 () Bool)

(assert (=> d!923943 (= c!559995 (isEmpty!20598 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))))))

(assert (=> d!923943 (validRegex!4571 (regex!5287 (rule!7785 (h!41880 tokens!494))))))

(assert (=> d!923943 (= (matchR!4668 (regex!5287 (rule!7785 (h!41880 tokens!494))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))) lt!1118903)))

(declare-fun b!3301380 () Bool)

(declare-fun e!2053123 () Bool)

(assert (=> b!3301380 (= e!2053123 (not (= (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))) (c!559680 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun b!3301381 () Bool)

(declare-fun res!1339075 () Bool)

(declare-fun e!2053127 () Bool)

(assert (=> b!3301381 (=> res!1339075 e!2053127)))

(assert (=> b!3301381 (= res!1339075 (not (is-ElementMatch!10046 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> b!3301381 (= e!2053129 e!2053127)))

(declare-fun b!3301382 () Bool)

(declare-fun res!1339073 () Bool)

(assert (=> b!3301382 (=> (not res!1339073) (not e!2053128))))

(assert (=> b!3301382 (= res!1339073 (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454)))))))))

(declare-fun b!3301383 () Bool)

(declare-fun res!1339074 () Bool)

(assert (=> b!3301383 (=> res!1339074 e!2053127)))

(assert (=> b!3301383 (= res!1339074 e!2053128)))

(declare-fun res!1339076 () Bool)

(assert (=> b!3301383 (=> (not res!1339076) (not e!2053128))))

(assert (=> b!3301383 (= res!1339076 lt!1118903)))

(declare-fun b!3301384 () Bool)

(assert (=> b!3301384 (= e!2053126 (= lt!1118903 call!240010))))

(declare-fun bm!240005 () Bool)

(assert (=> bm!240005 (= call!240010 (isEmpty!20598 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))))))

(declare-fun b!3301385 () Bool)

(assert (=> b!3301385 (= e!2053128 (= (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))) (c!559680 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))

(declare-fun b!3301386 () Bool)

(declare-fun e!2053125 () Bool)

(assert (=> b!3301386 (= e!2053127 e!2053125)))

(declare-fun res!1339077 () Bool)

(assert (=> b!3301386 (=> (not res!1339077) (not e!2053125))))

(assert (=> b!3301386 (= res!1339077 (not lt!1118903))))

(declare-fun b!3301387 () Bool)

(declare-fun res!1339080 () Bool)

(assert (=> b!3301387 (=> res!1339080 e!2053123)))

(assert (=> b!3301387 (= res!1339080 (not (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))))))))

(declare-fun b!3301388 () Bool)

(assert (=> b!3301388 (= e!2053129 (not lt!1118903))))

(declare-fun b!3301389 () Bool)

(assert (=> b!3301389 (= e!2053125 e!2053123)))

(declare-fun res!1339078 () Bool)

(assert (=> b!3301389 (=> res!1339078 e!2053123)))

(assert (=> b!3301389 (= res!1339078 call!240010)))

(assert (= (and d!923943 c!559995) b!3301376))

(assert (= (and d!923943 (not c!559995)) b!3301378))

(assert (= (and d!923943 c!559996) b!3301384))

(assert (= (and d!923943 (not c!559996)) b!3301379))

(assert (= (and b!3301379 c!559997) b!3301388))

(assert (= (and b!3301379 (not c!559997)) b!3301381))

(assert (= (and b!3301381 (not res!1339075)) b!3301383))

(assert (= (and b!3301383 res!1339076) b!3301377))

(assert (= (and b!3301377 res!1339079) b!3301382))

(assert (= (and b!3301382 res!1339073) b!3301385))

(assert (= (and b!3301383 (not res!1339074)) b!3301386))

(assert (= (and b!3301386 res!1339077) b!3301389))

(assert (= (and b!3301389 (not res!1339078)) b!3301387))

(assert (= (and b!3301387 (not res!1339080)) b!3301380))

(assert (= (or b!3301384 b!3301377 b!3301389) bm!240005))

(assert (=> b!3301382 m!3624045))

(declare-fun m!3625685 () Bool)

(assert (=> b!3301382 m!3625685))

(assert (=> b!3301382 m!3625685))

(declare-fun m!3625687 () Bool)

(assert (=> b!3301382 m!3625687))

(assert (=> b!3301376 m!3625161))

(assert (=> bm!240005 m!3624045))

(declare-fun m!3625689 () Bool)

(assert (=> bm!240005 m!3625689))

(assert (=> b!3301378 m!3624045))

(declare-fun m!3625691 () Bool)

(assert (=> b!3301378 m!3625691))

(assert (=> b!3301378 m!3625691))

(declare-fun m!3625693 () Bool)

(assert (=> b!3301378 m!3625693))

(assert (=> b!3301378 m!3624045))

(assert (=> b!3301378 m!3625685))

(assert (=> b!3301378 m!3625693))

(assert (=> b!3301378 m!3625685))

(declare-fun m!3625695 () Bool)

(assert (=> b!3301378 m!3625695))

(assert (=> b!3301380 m!3624045))

(assert (=> b!3301380 m!3625691))

(assert (=> b!3301385 m!3624045))

(assert (=> b!3301385 m!3625691))

(assert (=> b!3301387 m!3624045))

(assert (=> b!3301387 m!3625685))

(assert (=> b!3301387 m!3625685))

(assert (=> b!3301387 m!3625687))

(assert (=> d!923943 m!3624045))

(assert (=> d!923943 m!3625689))

(assert (=> d!923943 m!3625169))

(assert (=> b!3300335 d!923943))

(declare-fun d!923945 () Bool)

(assert (=> d!923945 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454)))) (list!13059 (c!559681 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))))))

(declare-fun bs!548636 () Bool)

(assert (= bs!548636 d!923945))

(declare-fun m!3625697 () Bool)

(assert (=> bs!548636 m!3625697))

(assert (=> b!3300335 d!923945))

(declare-fun d!923947 () Bool)

(declare-fun lt!1118904 () BalanceConc!21512)

(assert (=> d!923947 (= (list!13054 lt!1118904) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454))))))

(assert (=> d!923947 (= lt!1118904 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454))))) (value!171141 (_1!21112 (get!11636 lt!1118454)))))))

(assert (=> d!923947 (= (charsOf!3303 (_1!21112 (get!11636 lt!1118454))) lt!1118904)))

(declare-fun b_lambda!92061 () Bool)

(assert (=> (not b_lambda!92061) (not d!923947)))

(declare-fun t!252875 () Bool)

(declare-fun tb!170955 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252875) tb!170955))

(declare-fun b!3301390 () Bool)

(declare-fun e!2053130 () Bool)

(declare-fun tp!1033806 () Bool)

(assert (=> b!3301390 (= e!2053130 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454))))) (value!171141 (_1!21112 (get!11636 lt!1118454)))))) tp!1033806))))

(declare-fun result!213708 () Bool)

(assert (=> tb!170955 (= result!213708 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454))))) (value!171141 (_1!21112 (get!11636 lt!1118454))))) e!2053130))))

(assert (= tb!170955 b!3301390))

(declare-fun m!3625699 () Bool)

(assert (=> b!3301390 m!3625699))

(declare-fun m!3625701 () Bool)

(assert (=> tb!170955 m!3625701))

(assert (=> d!923947 t!252875))

(declare-fun b_and!225951 () Bool)

(assert (= b_and!225947 (and (=> t!252875 result!213708) b_and!225951)))

(declare-fun t!252877 () Bool)

(declare-fun tb!170957 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252877) tb!170957))

(declare-fun result!213710 () Bool)

(assert (= result!213710 result!213708))

(assert (=> d!923947 t!252877))

(declare-fun b_and!225953 () Bool)

(assert (= b_and!225949 (and (=> t!252877 result!213710) b_and!225953)))

(declare-fun t!252879 () Bool)

(declare-fun tb!170959 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252879) tb!170959))

(declare-fun result!213712 () Bool)

(assert (= result!213712 result!213708))

(assert (=> d!923947 t!252879))

(declare-fun b_and!225955 () Bool)

(assert (= b_and!225941 (and (=> t!252879 result!213712) b_and!225955)))

(declare-fun tb!170961 () Bool)

(declare-fun t!252881 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252881) tb!170961))

(declare-fun result!213714 () Bool)

(assert (= result!213714 result!213708))

(assert (=> d!923947 t!252881))

(declare-fun b_and!225957 () Bool)

(assert (= b_and!225945 (and (=> t!252881 result!213714) b_and!225957)))

(declare-fun t!252883 () Bool)

(declare-fun tb!170963 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252883) tb!170963))

(declare-fun result!213716 () Bool)

(assert (= result!213716 result!213708))

(assert (=> d!923947 t!252883))

(declare-fun b_and!225959 () Bool)

(assert (= b_and!225943 (and (=> t!252883 result!213716) b_and!225959)))

(declare-fun m!3625703 () Bool)

(assert (=> d!923947 m!3625703))

(declare-fun m!3625705 () Bool)

(assert (=> d!923947 m!3625705))

(assert (=> b!3300335 d!923947))

(declare-fun d!923949 () Bool)

(assert (=> d!923949 (= (get!11636 lt!1118454) (v!36014 lt!1118454))))

(assert (=> b!3300335 d!923949))

(declare-fun d!923951 () Bool)

(declare-fun charsToInt!0 (List!36582) (_ BitVec 32))

(assert (=> d!923951 (= (inv!16 (value!171141 (h!41880 tokens!494))) (= (charsToInt!0 (text!39066 (value!171141 (h!41880 tokens!494)))) (value!171132 (value!171141 (h!41880 tokens!494)))))))

(declare-fun bs!548637 () Bool)

(assert (= bs!548637 d!923951))

(declare-fun m!3625707 () Bool)

(assert (=> bs!548637 m!3625707))

(assert (=> b!3300833 d!923951))

(declare-fun d!923953 () Bool)

(declare-fun c!560000 () Bool)

(assert (=> d!923953 (= c!560000 (is-Nil!36460 lt!1118561))))

(declare-fun e!2053133 () (Set Token!9940))

(assert (=> d!923953 (= (content!4959 lt!1118561) e!2053133)))

(declare-fun b!3301395 () Bool)

(assert (=> b!3301395 (= e!2053133 (as set.empty (Set Token!9940)))))

(declare-fun b!3301396 () Bool)

(assert (=> b!3301396 (= e!2053133 (set.union (set.insert (h!41880 lt!1118561) (as set.empty (Set Token!9940))) (content!4959 (t!252749 lt!1118561))))))

(assert (= (and d!923953 c!560000) b!3301395))

(assert (= (and d!923953 (not c!560000)) b!3301396))

(declare-fun m!3625709 () Bool)

(assert (=> b!3301396 m!3625709))

(declare-fun m!3625711 () Bool)

(assert (=> b!3301396 m!3625711))

(assert (=> b!3300607 d!923953))

(declare-fun d!923955 () Bool)

(declare-fun c!560001 () Bool)

(assert (=> d!923955 (= c!560001 (is-Nil!36460 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))

(declare-fun e!2053134 () (Set Token!9940))

(assert (=> d!923955 (= (content!4959 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))) e!2053134)))

(declare-fun b!3301397 () Bool)

(assert (=> b!3301397 (= e!2053134 (as set.empty (Set Token!9940)))))

(declare-fun b!3301398 () Bool)

(assert (=> b!3301398 (= e!2053134 (set.union (set.insert (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))) (as set.empty (Set Token!9940))) (content!4959 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))))

(assert (= (and d!923955 c!560001) b!3301397))

(assert (= (and d!923955 (not c!560001)) b!3301398))

(declare-fun m!3625713 () Bool)

(assert (=> b!3301398 m!3625713))

(declare-fun m!3625715 () Bool)

(assert (=> b!3301398 m!3625715))

(assert (=> b!3300607 d!923955))

(declare-fun d!923957 () Bool)

(declare-fun charsToBigInt!1 (List!36582) Int)

(assert (=> d!923957 (= (inv!17 (value!171141 separatorToken!241)) (= (charsToBigInt!1 (text!39067 (value!171141 separatorToken!241))) (value!171133 (value!171141 separatorToken!241))))))

(declare-fun bs!548638 () Bool)

(assert (= bs!548638 d!923957))

(declare-fun m!3625717 () Bool)

(assert (=> bs!548638 m!3625717))

(assert (=> b!3300449 d!923957))

(declare-fun d!923959 () Bool)

(declare-fun lt!1118907 () Bool)

(assert (=> d!923959 (= lt!1118907 (set.member (h!41880 tokens!494) (content!4959 tokens!494)))))

(declare-fun e!2053139 () Bool)

(assert (=> d!923959 (= lt!1118907 e!2053139)))

(declare-fun res!1339086 () Bool)

(assert (=> d!923959 (=> (not res!1339086) (not e!2053139))))

(assert (=> d!923959 (= res!1339086 (is-Cons!36460 tokens!494))))

(assert (=> d!923959 (= (contains!6584 tokens!494 (h!41880 tokens!494)) lt!1118907)))

(declare-fun b!3301403 () Bool)

(declare-fun e!2053140 () Bool)

(assert (=> b!3301403 (= e!2053139 e!2053140)))

(declare-fun res!1339085 () Bool)

(assert (=> b!3301403 (=> res!1339085 e!2053140)))

(assert (=> b!3301403 (= res!1339085 (= (h!41880 tokens!494) (h!41880 tokens!494)))))

(declare-fun b!3301404 () Bool)

(assert (=> b!3301404 (= e!2053140 (contains!6584 (t!252749 tokens!494) (h!41880 tokens!494)))))

(assert (= (and d!923959 res!1339086) b!3301403))

(assert (= (and b!3301403 (not res!1339085)) b!3301404))

(declare-fun m!3625719 () Bool)

(assert (=> d!923959 m!3625719))

(declare-fun m!3625721 () Bool)

(assert (=> d!923959 m!3625721))

(declare-fun m!3625723 () Bool)

(assert (=> b!3301404 m!3625723))

(assert (=> b!3300149 d!923959))

(assert (=> b!3300144 d!923753))

(assert (=> b!3300144 d!923755))

(declare-fun d!923961 () Bool)

(declare-fun lt!1118908 () Int)

(assert (=> d!923961 (>= lt!1118908 0)))

(declare-fun e!2053141 () Int)

(assert (=> d!923961 (= lt!1118908 e!2053141)))

(declare-fun c!560002 () Bool)

(assert (=> d!923961 (= c!560002 (is-Nil!36460 (_1!21111 lt!1118505)))))

(assert (=> d!923961 (= (size!27539 (_1!21111 lt!1118505)) lt!1118908)))

(declare-fun b!3301405 () Bool)

(assert (=> b!3301405 (= e!2053141 0)))

(declare-fun b!3301406 () Bool)

(assert (=> b!3301406 (= e!2053141 (+ 1 (size!27539 (t!252749 (_1!21111 lt!1118505)))))))

(assert (= (and d!923961 c!560002) b!3301405))

(assert (= (and d!923961 (not c!560002)) b!3301406))

(declare-fun m!3625725 () Bool)

(assert (=> b!3301406 m!3625725))

(assert (=> d!923491 d!923961))

(declare-fun b!3301407 () Bool)

(declare-fun res!1339092 () Bool)

(declare-fun e!2053143 () Bool)

(assert (=> b!3301407 (=> (not res!1339092) (not e!2053143))))

(declare-fun lt!1118911 () Option!7269)

(assert (=> b!3301407 (= res!1339092 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118911)))) (_2!21112 (get!11636 lt!1118911))) (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(declare-fun b!3301408 () Bool)

(declare-fun res!1339089 () Bool)

(assert (=> b!3301408 (=> (not res!1339089) (not e!2053143))))

(assert (=> b!3301408 (= res!1339089 (= (value!171141 (_1!21112 (get!11636 lt!1118911))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118911)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118911)))))))))

(declare-fun d!923963 () Bool)

(declare-fun e!2053142 () Bool)

(assert (=> d!923963 e!2053142))

(declare-fun res!1339093 () Bool)

(assert (=> d!923963 (=> res!1339093 e!2053142)))

(assert (=> d!923963 (= res!1339093 (isEmpty!20606 lt!1118911))))

(declare-fun e!2053144 () Option!7269)

(assert (=> d!923963 (= lt!1118911 e!2053144)))

(declare-fun c!560003 () Bool)

(assert (=> d!923963 (= c!560003 (and (is-Cons!36461 rules!2135) (is-Nil!36461 (t!252750 rules!2135))))))

(declare-fun lt!1118910 () Unit!51389)

(declare-fun lt!1118912 () Unit!51389)

(assert (=> d!923963 (= lt!1118910 lt!1118912)))

(assert (=> d!923963 (isPrefix!2804 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241) (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))

(assert (=> d!923963 (= lt!1118912 (lemmaIsPrefixRefl!1763 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241) (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(assert (=> d!923963 (rulesValidInductive!1803 thiss!18206 rules!2135)))

(assert (=> d!923963 (= (maxPrefix!2504 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)) lt!1118911)))

(declare-fun b!3301409 () Bool)

(assert (=> b!3301409 (= e!2053143 (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1118911)))))))

(declare-fun bm!240006 () Bool)

(declare-fun call!240011 () Option!7269)

(assert (=> bm!240006 (= call!240011 (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(declare-fun b!3301410 () Bool)

(assert (=> b!3301410 (= e!2053142 e!2053143)))

(declare-fun res!1339087 () Bool)

(assert (=> b!3301410 (=> (not res!1339087) (not e!2053143))))

(assert (=> b!3301410 (= res!1339087 (isDefined!5636 lt!1118911))))

(declare-fun b!3301411 () Bool)

(declare-fun lt!1118909 () Option!7269)

(declare-fun lt!1118913 () Option!7269)

(assert (=> b!3301411 (= e!2053144 (ite (and (is-None!7268 lt!1118909) (is-None!7268 lt!1118913)) None!7268 (ite (is-None!7268 lt!1118913) lt!1118909 (ite (is-None!7268 lt!1118909) lt!1118913 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1118909))) (size!27530 (_1!21112 (v!36014 lt!1118913)))) lt!1118909 lt!1118913)))))))

(assert (=> b!3301411 (= lt!1118909 call!240011)))

(assert (=> b!3301411 (= lt!1118913 (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(declare-fun b!3301412 () Bool)

(declare-fun res!1339090 () Bool)

(assert (=> b!3301412 (=> (not res!1339090) (not e!2053143))))

(assert (=> b!3301412 (= res!1339090 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118911)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1118911)))))))

(declare-fun b!3301413 () Bool)

(declare-fun res!1339091 () Bool)

(assert (=> b!3301413 (=> (not res!1339091) (not e!2053143))))

(assert (=> b!3301413 (= res!1339091 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118911)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118911))))))))

(declare-fun b!3301414 () Bool)

(assert (=> b!3301414 (= e!2053144 call!240011)))

(declare-fun b!3301415 () Bool)

(declare-fun res!1339088 () Bool)

(assert (=> b!3301415 (=> (not res!1339088) (not e!2053143))))

(assert (=> b!3301415 (= res!1339088 (< (size!27531 (_2!21112 (get!11636 lt!1118911))) (size!27531 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))))

(assert (= (and d!923963 c!560003) b!3301414))

(assert (= (and d!923963 (not c!560003)) b!3301411))

(assert (= (or b!3301414 b!3301411) bm!240006))

(assert (= (and d!923963 (not res!1339093)) b!3301410))

(assert (= (and b!3301410 res!1339087) b!3301412))

(assert (= (and b!3301412 res!1339090) b!3301415))

(assert (= (and b!3301415 res!1339088) b!3301407))

(assert (= (and b!3301407 res!1339092) b!3301408))

(assert (= (and b!3301408 res!1339089) b!3301413))

(assert (= (and b!3301413 res!1339091) b!3301409))

(declare-fun m!3625727 () Bool)

(assert (=> b!3301413 m!3625727))

(declare-fun m!3625729 () Bool)

(assert (=> b!3301413 m!3625729))

(assert (=> b!3301413 m!3625729))

(declare-fun m!3625731 () Bool)

(assert (=> b!3301413 m!3625731))

(assert (=> b!3301413 m!3625731))

(declare-fun m!3625733 () Bool)

(assert (=> b!3301413 m!3625733))

(assert (=> b!3301412 m!3625727))

(assert (=> b!3301412 m!3625729))

(assert (=> b!3301412 m!3625729))

(assert (=> b!3301412 m!3625731))

(assert (=> bm!240006 m!3623521))

(declare-fun m!3625735 () Bool)

(assert (=> bm!240006 m!3625735))

(assert (=> b!3301408 m!3625727))

(declare-fun m!3625737 () Bool)

(assert (=> b!3301408 m!3625737))

(assert (=> b!3301408 m!3625737))

(declare-fun m!3625739 () Bool)

(assert (=> b!3301408 m!3625739))

(declare-fun m!3625741 () Bool)

(assert (=> b!3301410 m!3625741))

(declare-fun m!3625743 () Bool)

(assert (=> d!923963 m!3625743))

(assert (=> d!923963 m!3623521))

(assert (=> d!923963 m!3623521))

(declare-fun m!3625745 () Bool)

(assert (=> d!923963 m!3625745))

(assert (=> d!923963 m!3623521))

(assert (=> d!923963 m!3623521))

(declare-fun m!3625747 () Bool)

(assert (=> d!923963 m!3625747))

(assert (=> d!923963 m!3624335))

(assert (=> b!3301409 m!3625727))

(declare-fun m!3625749 () Bool)

(assert (=> b!3301409 m!3625749))

(assert (=> b!3301411 m!3623521))

(declare-fun m!3625751 () Bool)

(assert (=> b!3301411 m!3625751))

(assert (=> b!3301415 m!3625727))

(declare-fun m!3625753 () Bool)

(assert (=> b!3301415 m!3625753))

(assert (=> b!3301415 m!3623521))

(assert (=> b!3301415 m!3624211))

(assert (=> b!3301407 m!3625727))

(assert (=> b!3301407 m!3625729))

(assert (=> b!3301407 m!3625729))

(assert (=> b!3301407 m!3625731))

(assert (=> b!3301407 m!3625731))

(declare-fun m!3625755 () Bool)

(assert (=> b!3301407 m!3625755))

(assert (=> d!923491 d!923963))

(declare-fun d!923965 () Bool)

(assert (=> d!923965 (dynLambda!14914 lambda!118850 (h!41880 tokens!494))))

(assert (=> d!923965 true))

(declare-fun _$7!1146 () Unit!51389)

(assert (=> d!923965 (= (choose!19103 tokens!494 lambda!118850 (h!41880 tokens!494)) _$7!1146)))

(declare-fun b_lambda!92063 () Bool)

(assert (=> (not b_lambda!92063) (not d!923965)))

(declare-fun bs!548639 () Bool)

(assert (= bs!548639 d!923965))

(assert (=> bs!548639 m!3623875))

(assert (=> d!923407 d!923965))

(assert (=> d!923407 d!923459))

(declare-fun d!923967 () Bool)

(declare-fun c!560004 () Bool)

(assert (=> d!923967 (= c!560004 (is-Nil!36460 lt!1118656))))

(declare-fun e!2053145 () (Set Token!9940))

(assert (=> d!923967 (= (content!4959 lt!1118656) e!2053145)))

(declare-fun b!3301416 () Bool)

(assert (=> b!3301416 (= e!2053145 (as set.empty (Set Token!9940)))))

(declare-fun b!3301417 () Bool)

(assert (=> b!3301417 (= e!2053145 (set.union (set.insert (h!41880 lt!1118656) (as set.empty (Set Token!9940))) (content!4959 (t!252749 lt!1118656))))))

(assert (= (and d!923967 c!560004) b!3301416))

(assert (= (and d!923967 (not c!560004)) b!3301417))

(declare-fun m!3625757 () Bool)

(assert (=> b!3301417 m!3625757))

(declare-fun m!3625759 () Bool)

(assert (=> b!3301417 m!3625759))

(assert (=> b!3300898 d!923967))

(declare-fun c!560005 () Bool)

(declare-fun d!923969 () Bool)

(assert (=> d!923969 (= c!560005 (is-Nil!36460 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))

(declare-fun e!2053146 () (Set Token!9940))

(assert (=> d!923969 (= (content!4959 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))) e!2053146)))

(declare-fun b!3301418 () Bool)

(assert (=> b!3301418 (= e!2053146 (as set.empty (Set Token!9940)))))

(declare-fun b!3301419 () Bool)

(assert (=> b!3301419 (= e!2053146 (set.union (set.insert (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))) (as set.empty (Set Token!9940))) (content!4959 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))))

(assert (= (and d!923969 c!560005) b!3301418))

(assert (= (and d!923969 (not c!560005)) b!3301419))

(declare-fun m!3625761 () Bool)

(assert (=> b!3301419 m!3625761))

(declare-fun m!3625763 () Bool)

(assert (=> b!3301419 m!3625763))

(assert (=> b!3300898 d!923969))

(declare-fun d!923971 () Bool)

(assert (=> d!923971 (= (isDefined!5636 lt!1118535) (not (isEmpty!20606 lt!1118535)))))

(declare-fun bs!548640 () Bool)

(assert (= bs!548640 d!923971))

(assert (=> bs!548640 m!3624329))

(assert (=> b!3300543 d!923971))

(declare-fun b!3301420 () Bool)

(declare-fun e!2053147 () List!36583)

(declare-fun call!240014 () List!36583)

(assert (=> b!3301420 (= e!2053147 call!240014)))

(declare-fun b!3301421 () Bool)

(declare-fun c!560008 () Bool)

(assert (=> b!3301421 (= c!560008 (is-Star!10046 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun e!2053150 () List!36583)

(declare-fun e!2053149 () List!36583)

(assert (=> b!3301421 (= e!2053150 e!2053149)))

(declare-fun b!3301422 () Bool)

(assert (=> b!3301422 (= e!2053147 call!240014)))

(declare-fun b!3301423 () Bool)

(declare-fun call!240015 () List!36583)

(assert (=> b!3301423 (= e!2053149 call!240015)))

(declare-fun bm!240007 () Bool)

(declare-fun call!240013 () List!36583)

(assert (=> bm!240007 (= call!240013 call!240015)))

(declare-fun d!923973 () Bool)

(declare-fun c!560006 () Bool)

(assert (=> d!923973 (= c!560006 (or (is-EmptyExpr!10046 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) (is-EmptyLang!10046 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun e!2053148 () List!36583)

(assert (=> d!923973 (= (usedCharacters!589 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) e!2053148)))

(declare-fun b!3301424 () Bool)

(assert (=> b!3301424 (= e!2053149 e!2053147)))

(declare-fun c!560007 () Bool)

(assert (=> b!3301424 (= c!560007 (is-Union!10046 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun call!240012 () List!36583)

(declare-fun bm!240008 () Bool)

(assert (=> bm!240008 (= call!240012 (usedCharacters!589 (ite c!560007 (regTwo!20605 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) (regOne!20604 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))))

(declare-fun b!3301425 () Bool)

(assert (=> b!3301425 (= e!2053150 (Cons!36459 (c!559680 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) Nil!36459))))

(declare-fun bm!240009 () Bool)

(assert (=> bm!240009 (= call!240014 (++!8815 (ite c!560007 call!240013 call!240012) (ite c!560007 call!240012 call!240013)))))

(declare-fun bm!240010 () Bool)

(assert (=> bm!240010 (= call!240015 (usedCharacters!589 (ite c!560008 (reg!10375 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) (ite c!560007 (regOne!20605 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) (regTwo!20604 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494))))))))))))

(declare-fun b!3301426 () Bool)

(assert (=> b!3301426 (= e!2053148 e!2053150)))

(declare-fun c!560009 () Bool)

(assert (=> b!3301426 (= c!560009 (is-ElementMatch!10046 (ite c!559795 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))) (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun b!3301427 () Bool)

(assert (=> b!3301427 (= e!2053148 Nil!36459)))

(assert (= (and d!923973 c!560006) b!3301427))

(assert (= (and d!923973 (not c!560006)) b!3301426))

(assert (= (and b!3301426 c!560009) b!3301425))

(assert (= (and b!3301426 (not c!560009)) b!3301421))

(assert (= (and b!3301421 c!560008) b!3301423))

(assert (= (and b!3301421 (not c!560008)) b!3301424))

(assert (= (and b!3301424 c!560007) b!3301422))

(assert (= (and b!3301424 (not c!560007)) b!3301420))

(assert (= (or b!3301422 b!3301420) bm!240008))

(assert (= (or b!3301422 b!3301420) bm!240007))

(assert (= (or b!3301422 b!3301420) bm!240009))

(assert (= (or b!3301423 bm!240007) bm!240010))

(declare-fun m!3625765 () Bool)

(assert (=> bm!240008 m!3625765))

(declare-fun m!3625767 () Bool)

(assert (=> bm!240009 m!3625767))

(declare-fun m!3625769 () Bool)

(assert (=> bm!240010 m!3625769))

(assert (=> bm!239929 d!923973))

(declare-fun d!923975 () Bool)

(assert (=> d!923975 (= (list!13055 (_1!21113 lt!1118653)) (list!13061 (c!559682 (_1!21113 lt!1118653))))))

(declare-fun bs!548641 () Bool)

(assert (= bs!548641 d!923975))

(declare-fun m!3625771 () Bool)

(assert (=> bs!548641 m!3625771))

(assert (=> b!3300884 d!923975))

(declare-fun b!3301428 () Bool)

(declare-fun e!2053153 () tuple2!35954)

(assert (=> b!3301428 (= e!2053153 (tuple2!35955 Nil!36460 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))

(declare-fun b!3301430 () Bool)

(declare-fun lt!1118914 () Option!7269)

(declare-fun lt!1118916 () tuple2!35954)

(assert (=> b!3301430 (= e!2053153 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1118914)) (_1!21111 lt!1118916)) (_2!21111 lt!1118916)))))

(assert (=> b!3301430 (= lt!1118916 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118914))))))

(declare-fun lt!1118915 () tuple2!35954)

(declare-fun b!3301431 () Bool)

(declare-fun e!2053151 () Bool)

(assert (=> b!3301431 (= e!2053151 (= (_2!21111 lt!1118915) (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))

(declare-fun b!3301432 () Bool)

(declare-fun e!2053152 () Bool)

(assert (=> b!3301432 (= e!2053151 e!2053152)))

(declare-fun res!1339094 () Bool)

(assert (=> b!3301432 (= res!1339094 (< (size!27531 (_2!21111 lt!1118915)) (size!27531 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))))

(assert (=> b!3301432 (=> (not res!1339094) (not e!2053152))))

(declare-fun b!3301429 () Bool)

(assert (=> b!3301429 (= e!2053152 (not (isEmpty!20599 (_1!21111 lt!1118915))))))

(declare-fun d!923977 () Bool)

(assert (=> d!923977 e!2053151))

(declare-fun c!560010 () Bool)

(assert (=> d!923977 (= c!560010 (> (size!27539 (_1!21111 lt!1118915)) 0))))

(assert (=> d!923977 (= lt!1118915 e!2053153)))

(declare-fun c!560011 () Bool)

(assert (=> d!923977 (= c!560011 (is-Some!7268 lt!1118914))))

(assert (=> d!923977 (= lt!1118914 (maxPrefix!2504 thiss!18206 rules!2135 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))

(assert (=> d!923977 (= (lexList!1350 thiss!18206 rules!2135 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))) lt!1118915)))

(assert (= (and d!923977 c!560011) b!3301430))

(assert (= (and d!923977 (not c!560011)) b!3301428))

(assert (= (and d!923977 c!560010) b!3301432))

(assert (= (and d!923977 (not c!560010)) b!3301431))

(assert (= (and b!3301432 res!1339094) b!3301429))

(declare-fun m!3625773 () Bool)

(assert (=> b!3301430 m!3625773))

(declare-fun m!3625775 () Bool)

(assert (=> b!3301432 m!3625775))

(assert (=> b!3301432 m!3624881))

(declare-fun m!3625777 () Bool)

(assert (=> b!3301432 m!3625777))

(declare-fun m!3625779 () Bool)

(assert (=> b!3301429 m!3625779))

(declare-fun m!3625781 () Bool)

(assert (=> d!923977 m!3625781))

(assert (=> d!923977 m!3624881))

(declare-fun m!3625783 () Bool)

(assert (=> d!923977 m!3625783))

(assert (=> b!3300884 d!923977))

(declare-fun d!923979 () Bool)

(assert (=> d!923979 (= (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)) (list!13059 (c!559681 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))

(declare-fun bs!548642 () Bool)

(assert (= bs!548642 d!923979))

(declare-fun m!3625785 () Bool)

(assert (=> bs!548642 m!3625785))

(assert (=> b!3300884 d!923979))

(declare-fun d!923981 () Bool)

(declare-fun lt!1118919 () Token!9940)

(assert (=> d!923981 (= lt!1118919 (apply!8368 (list!13055 (_1!21113 lt!1118594)) 0))))

(declare-fun apply!8371 (Conc!10950 Int) Token!9940)

(assert (=> d!923981 (= lt!1118919 (apply!8371 (c!559682 (_1!21113 lt!1118594)) 0))))

(declare-fun e!2053156 () Bool)

(assert (=> d!923981 e!2053156))

(declare-fun res!1339097 () Bool)

(assert (=> d!923981 (=> (not res!1339097) (not e!2053156))))

(assert (=> d!923981 (= res!1339097 (<= 0 0))))

(assert (=> d!923981 (= (apply!8367 (_1!21113 lt!1118594) 0) lt!1118919)))

(declare-fun b!3301435 () Bool)

(assert (=> b!3301435 (= e!2053156 (< 0 (size!27538 (_1!21113 lt!1118594))))))

(assert (= (and d!923981 res!1339097) b!3301435))

(declare-fun m!3625787 () Bool)

(assert (=> d!923981 m!3625787))

(assert (=> d!923981 m!3625787))

(declare-fun m!3625789 () Bool)

(assert (=> d!923981 m!3625789))

(declare-fun m!3625791 () Bool)

(assert (=> d!923981 m!3625791))

(assert (=> b!3301435 m!3624655))

(assert (=> b!3300749 d!923981))

(assert (=> d!923527 d!923533))

(assert (=> d!923527 d!923519))

(declare-fun d!923983 () Bool)

(assert (=> d!923983 (not (contains!6582 (usedCharacters!589 (regex!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118269))))

(assert (=> d!923983 true))

(declare-fun _$73!211 () Unit!51389)

(assert (=> d!923983 (= (choose!19111 thiss!18206 rules!2135 rules!2135 (rule!7785 (h!41880 tokens!494)) (rule!7785 separatorToken!241) lt!1118269) _$73!211)))

(declare-fun bs!548643 () Bool)

(assert (= bs!548643 d!923983))

(assert (=> bs!548643 m!3623569))

(assert (=> bs!548643 m!3623569))

(assert (=> bs!548643 m!3623571))

(assert (=> d!923527 d!923983))

(assert (=> d!923527 d!923607))

(assert (=> b!3300388 d!923859))

(assert (=> b!3300388 d!923861))

(declare-fun d!923985 () Bool)

(declare-fun res!1339098 () Bool)

(declare-fun e!2053157 () Bool)

(assert (=> d!923985 (=> res!1339098 e!2053157)))

(assert (=> d!923985 (= res!1339098 (is-Nil!36460 (t!252749 tokens!494)))))

(assert (=> d!923985 (= (forall!7541 (t!252749 tokens!494) lambda!118850) e!2053157)))

(declare-fun b!3301436 () Bool)

(declare-fun e!2053158 () Bool)

(assert (=> b!3301436 (= e!2053157 e!2053158)))

(declare-fun res!1339099 () Bool)

(assert (=> b!3301436 (=> (not res!1339099) (not e!2053158))))

(assert (=> b!3301436 (= res!1339099 (dynLambda!14914 lambda!118850 (h!41880 (t!252749 tokens!494))))))

(declare-fun b!3301437 () Bool)

(assert (=> b!3301437 (= e!2053158 (forall!7541 (t!252749 (t!252749 tokens!494)) lambda!118850))))

(assert (= (and d!923985 (not res!1339098)) b!3301436))

(assert (= (and b!3301436 res!1339099) b!3301437))

(declare-fun b_lambda!92065 () Bool)

(assert (=> (not b_lambda!92065) (not b!3301436)))

(declare-fun m!3625793 () Bool)

(assert (=> b!3301436 m!3625793))

(declare-fun m!3625795 () Bool)

(assert (=> b!3301437 m!3625795))

(assert (=> b!3300348 d!923985))

(declare-fun b!3301450 () Bool)

(declare-fun res!1339117 () Bool)

(declare-fun e!2053164 () Bool)

(assert (=> b!3301450 (=> (not res!1339117) (not e!2053164))))

(declare-fun height!1597 (Conc!10950) Int)

(assert (=> b!3301450 (= res!1339117 (<= (- (height!1597 (left!28396 (c!559682 lt!1118493))) (height!1597 (right!28726 (c!559682 lt!1118493)))) 1))))

(declare-fun b!3301451 () Bool)

(assert (=> b!3301451 (= e!2053164 (not (isEmpty!20610 (right!28726 (c!559682 lt!1118493)))))))

(declare-fun b!3301452 () Bool)

(declare-fun e!2053163 () Bool)

(assert (=> b!3301452 (= e!2053163 e!2053164)))

(declare-fun res!1339113 () Bool)

(assert (=> b!3301452 (=> (not res!1339113) (not e!2053164))))

(assert (=> b!3301452 (= res!1339113 (<= (- 1) (- (height!1597 (left!28396 (c!559682 lt!1118493))) (height!1597 (right!28726 (c!559682 lt!1118493))))))))

(declare-fun b!3301453 () Bool)

(declare-fun res!1339115 () Bool)

(assert (=> b!3301453 (=> (not res!1339115) (not e!2053164))))

(assert (=> b!3301453 (= res!1339115 (isBalanced!3268 (left!28396 (c!559682 lt!1118493))))))

(declare-fun b!3301454 () Bool)

(declare-fun res!1339112 () Bool)

(assert (=> b!3301454 (=> (not res!1339112) (not e!2053164))))

(assert (=> b!3301454 (= res!1339112 (isBalanced!3268 (right!28726 (c!559682 lt!1118493))))))

(declare-fun b!3301455 () Bool)

(declare-fun res!1339116 () Bool)

(assert (=> b!3301455 (=> (not res!1339116) (not e!2053164))))

(assert (=> b!3301455 (= res!1339116 (not (isEmpty!20610 (left!28396 (c!559682 lt!1118493)))))))

(declare-fun d!923987 () Bool)

(declare-fun res!1339114 () Bool)

(assert (=> d!923987 (=> res!1339114 e!2053163)))

(assert (=> d!923987 (= res!1339114 (not (is-Node!10950 (c!559682 lt!1118493))))))

(assert (=> d!923987 (= (isBalanced!3268 (c!559682 lt!1118493)) e!2053163)))

(assert (= (and d!923987 (not res!1339114)) b!3301452))

(assert (= (and b!3301452 res!1339113) b!3301450))

(assert (= (and b!3301450 res!1339117) b!3301453))

(assert (= (and b!3301453 res!1339115) b!3301454))

(assert (= (and b!3301454 res!1339112) b!3301455))

(assert (= (and b!3301455 res!1339116) b!3301451))

(declare-fun m!3625797 () Bool)

(assert (=> b!3301453 m!3625797))

(declare-fun m!3625799 () Bool)

(assert (=> b!3301455 m!3625799))

(declare-fun m!3625801 () Bool)

(assert (=> b!3301450 m!3625801))

(declare-fun m!3625803 () Bool)

(assert (=> b!3301450 m!3625803))

(declare-fun m!3625805 () Bool)

(assert (=> b!3301451 m!3625805))

(assert (=> b!3301452 m!3625801))

(assert (=> b!3301452 m!3625803))

(declare-fun m!3625807 () Bool)

(assert (=> b!3301454 m!3625807))

(assert (=> b!3300372 d!923987))

(declare-fun d!923989 () Bool)

(assert (=> d!923989 (= (isDefined!5633 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))) (not (isEmpty!20604 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun bs!548644 () Bool)

(assert (= bs!548644 d!923989))

(assert (=> bs!548644 m!3623535))

(declare-fun m!3625809 () Bool)

(assert (=> bs!548644 m!3625809))

(assert (=> d!923409 d!923989))

(assert (=> d!923409 d!923449))

(declare-fun d!923991 () Bool)

(declare-fun e!2053167 () Bool)

(assert (=> d!923991 e!2053167))

(declare-fun res!1339122 () Bool)

(assert (=> d!923991 (=> (not res!1339122) (not e!2053167))))

(assert (=> d!923991 (= res!1339122 (isDefined!5633 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> d!923991 true))

(declare-fun _$52!1663 () Unit!51389)

(assert (=> d!923991 (= (choose!19104 thiss!18206 rules!2135 lt!1118263 (h!41880 tokens!494)) _$52!1663)))

(declare-fun b!3301460 () Bool)

(declare-fun res!1339123 () Bool)

(assert (=> b!3301460 (=> (not res!1339123) (not e!2053167))))

(assert (=> b!3301460 (= res!1339123 (matchR!4668 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))) (list!13054 (charsOf!3303 (h!41880 tokens!494)))))))

(declare-fun b!3301461 () Bool)

(assert (=> b!3301461 (= e!2053167 (= (rule!7785 (h!41880 tokens!494)) (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))

(assert (= (and d!923991 res!1339122) b!3301460))

(assert (= (and b!3301460 res!1339123) b!3301461))

(assert (=> d!923991 m!3623535))

(assert (=> d!923991 m!3623535))

(assert (=> d!923991 m!3623881))

(assert (=> b!3301460 m!3623563))

(assert (=> b!3301460 m!3623565))

(assert (=> b!3301460 m!3623563))

(assert (=> b!3301460 m!3623535))

(assert (=> b!3301460 m!3623565))

(assert (=> b!3301460 m!3623885))

(assert (=> b!3301460 m!3623535))

(assert (=> b!3301460 m!3623887))

(assert (=> b!3301461 m!3623535))

(assert (=> b!3301461 m!3623535))

(assert (=> b!3301461 m!3623887))

(assert (=> d!923409 d!923991))

(assert (=> d!923409 d!923607))

(assert (=> b!3300774 d!923859))

(assert (=> b!3300774 d!923861))

(declare-fun d!923993 () Bool)

(assert (=> d!923993 (= (list!13054 lt!1118652) (list!13059 (c!559681 lt!1118652)))))

(declare-fun bs!548645 () Bool)

(assert (= bs!548645 d!923993))

(declare-fun m!3625811 () Bool)

(assert (=> bs!548645 m!3625811))

(assert (=> d!923661 d!923993))

(declare-fun d!923995 () Bool)

(declare-fun c!560013 () Bool)

(assert (=> d!923995 (= c!560013 (is-Cons!36460 (list!13055 (BalanceConc!21515 Empty!10950))))))

(declare-fun e!2053168 () List!36583)

(assert (=> d!923995 (= (printWithSeparatorTokenList!201 thiss!18206 (list!13055 (BalanceConc!21515 Empty!10950)) separatorToken!241) e!2053168)))

(declare-fun b!3301462 () Bool)

(assert (=> b!3301462 (= e!2053168 (++!8815 (++!8815 (list!13054 (charsOf!3303 (h!41880 (list!13055 (BalanceConc!21515 Empty!10950))))) (list!13054 (charsOf!3303 separatorToken!241))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 (list!13055 (BalanceConc!21515 Empty!10950))) separatorToken!241)))))

(declare-fun b!3301463 () Bool)

(assert (=> b!3301463 (= e!2053168 Nil!36459)))

(assert (= (and d!923995 c!560013) b!3301462))

(assert (= (and d!923995 (not c!560013)) b!3301463))

(declare-fun m!3625813 () Bool)

(assert (=> b!3301462 m!3625813))

(assert (=> b!3301462 m!3623619))

(assert (=> b!3301462 m!3623623))

(declare-fun m!3625815 () Bool)

(assert (=> b!3301462 m!3625815))

(declare-fun m!3625817 () Bool)

(assert (=> b!3301462 m!3625817))

(declare-fun m!3625819 () Bool)

(assert (=> b!3301462 m!3625819))

(assert (=> b!3301462 m!3625813))

(declare-fun m!3625821 () Bool)

(assert (=> b!3301462 m!3625821))

(assert (=> b!3301462 m!3625815))

(assert (=> b!3301462 m!3625817))

(assert (=> b!3301462 m!3623623))

(assert (=> b!3301462 m!3625819))

(assert (=> b!3301462 m!3623619))

(assert (=> d!923661 d!923995))

(declare-fun d!923997 () Bool)

(assert (=> d!923997 (= (list!13055 (BalanceConc!21515 Empty!10950)) (list!13061 (c!559682 (BalanceConc!21515 Empty!10950))))))

(declare-fun bs!548646 () Bool)

(assert (= bs!548646 d!923997))

(declare-fun m!3625823 () Bool)

(assert (=> bs!548646 m!3625823))

(assert (=> d!923661 d!923997))

(declare-fun d!923999 () Bool)

(declare-fun lt!1118939 () BalanceConc!21512)

(declare-fun printWithSeparatorTokenListTailRec!13 (LexerInterface!4876 List!36584 Token!9940 List!36583) List!36583)

(assert (=> d!923999 (= (list!13054 lt!1118939) (printWithSeparatorTokenListTailRec!13 thiss!18206 (dropList!1107 (BalanceConc!21515 Empty!10950) 0) separatorToken!241 (list!13054 (BalanceConc!21513 Empty!10949))))))

(declare-fun e!2053173 () BalanceConc!21512)

(assert (=> d!923999 (= lt!1118939 e!2053173)))

(declare-fun c!560016 () Bool)

(assert (=> d!923999 (= c!560016 (>= 0 (size!27538 (BalanceConc!21515 Empty!10950))))))

(declare-fun e!2053174 () Bool)

(assert (=> d!923999 e!2053174))

(declare-fun res!1339126 () Bool)

(assert (=> d!923999 (=> (not res!1339126) (not e!2053174))))

(assert (=> d!923999 (= res!1339126 (>= 0 0))))

(assert (=> d!923999 (= (printWithSeparatorTokenTailRec!30 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241 0 (BalanceConc!21513 Empty!10949)) lt!1118939)))

(declare-fun b!3301470 () Bool)

(assert (=> b!3301470 (= e!2053174 (<= 0 (size!27538 (BalanceConc!21515 Empty!10950))))))

(declare-fun b!3301471 () Bool)

(assert (=> b!3301471 (= e!2053173 (BalanceConc!21513 Empty!10949))))

(declare-fun b!3301472 () Bool)

(assert (=> b!3301472 (= e!2053173 (printWithSeparatorTokenTailRec!30 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241 (+ 0 1) (++!8817 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 (BalanceConc!21515 Empty!10950) 0))) (charsOf!3303 separatorToken!241))))))

(declare-fun lt!1118937 () List!36584)

(assert (=> b!3301472 (= lt!1118937 (list!13055 (BalanceConc!21515 Empty!10950)))))

(declare-fun lt!1118935 () Unit!51389)

(assert (=> b!3301472 (= lt!1118935 (lemmaDropApply!1066 lt!1118937 0))))

(assert (=> b!3301472 (= (head!7122 (drop!1898 lt!1118937 0)) (apply!8368 lt!1118937 0))))

(declare-fun lt!1118936 () Unit!51389)

(assert (=> b!3301472 (= lt!1118936 lt!1118935)))

(declare-fun lt!1118938 () List!36584)

(assert (=> b!3301472 (= lt!1118938 (list!13055 (BalanceConc!21515 Empty!10950)))))

(declare-fun lt!1118940 () Unit!51389)

(assert (=> b!3301472 (= lt!1118940 (lemmaDropTail!950 lt!1118938 0))))

(assert (=> b!3301472 (= (tail!5259 (drop!1898 lt!1118938 0)) (drop!1898 lt!1118938 (+ 0 1)))))

(declare-fun lt!1118934 () Unit!51389)

(assert (=> b!3301472 (= lt!1118934 lt!1118940)))

(assert (= (and d!923999 res!1339126) b!3301470))

(assert (= (and d!923999 c!560016) b!3301471))

(assert (= (and d!923999 (not c!560016)) b!3301472))

(declare-fun m!3625825 () Bool)

(assert (=> d!923999 m!3625825))

(declare-fun m!3625827 () Bool)

(assert (=> d!923999 m!3625827))

(assert (=> d!923999 m!3624131))

(declare-fun m!3625829 () Bool)

(assert (=> d!923999 m!3625829))

(declare-fun m!3625831 () Bool)

(assert (=> d!923999 m!3625831))

(assert (=> d!923999 m!3624131))

(assert (=> d!923999 m!3625827))

(assert (=> b!3301470 m!3625825))

(declare-fun m!3625833 () Bool)

(assert (=> b!3301472 m!3625833))

(declare-fun m!3625835 () Bool)

(assert (=> b!3301472 m!3625835))

(assert (=> b!3301472 m!3624863))

(declare-fun m!3625837 () Bool)

(assert (=> b!3301472 m!3625837))

(declare-fun m!3625839 () Bool)

(assert (=> b!3301472 m!3625839))

(declare-fun m!3625841 () Bool)

(assert (=> b!3301472 m!3625841))

(declare-fun m!3625843 () Bool)

(assert (=> b!3301472 m!3625843))

(declare-fun m!3625845 () Bool)

(assert (=> b!3301472 m!3625845))

(declare-fun m!3625847 () Bool)

(assert (=> b!3301472 m!3625847))

(assert (=> b!3301472 m!3623619))

(assert (=> b!3301472 m!3625837))

(assert (=> b!3301472 m!3625835))

(assert (=> b!3301472 m!3625847))

(declare-fun m!3625849 () Bool)

(assert (=> b!3301472 m!3625849))

(declare-fun m!3625851 () Bool)

(assert (=> b!3301472 m!3625851))

(assert (=> b!3301472 m!3625833))

(assert (=> b!3301472 m!3623619))

(declare-fun m!3625853 () Bool)

(assert (=> b!3301472 m!3625853))

(declare-fun m!3625855 () Bool)

(assert (=> b!3301472 m!3625855))

(declare-fun m!3625857 () Bool)

(assert (=> b!3301472 m!3625857))

(assert (=> b!3301472 m!3625853))

(assert (=> b!3301472 m!3625843))

(assert (=> d!923661 d!923999))

(declare-fun d!924001 () Bool)

(declare-fun lt!1118941 () Bool)

(assert (=> d!924001 (= lt!1118941 (isEmpty!20598 (list!13054 (_2!21113 lt!1118618))))))

(assert (=> d!924001 (= lt!1118941 (isEmpty!20612 (c!559681 (_2!21113 lt!1118618))))))

(assert (=> d!924001 (= (isEmpty!20609 (_2!21113 lt!1118618)) lt!1118941)))

(declare-fun bs!548647 () Bool)

(assert (= bs!548647 d!924001))

(declare-fun m!3625859 () Bool)

(assert (=> bs!548647 m!3625859))

(assert (=> bs!548647 m!3625859))

(declare-fun m!3625861 () Bool)

(assert (=> bs!548647 m!3625861))

(declare-fun m!3625863 () Bool)

(assert (=> bs!548647 m!3625863))

(assert (=> b!3300813 d!924001))

(assert (=> b!3300613 d!923669))

(assert (=> b!3300613 d!923667))

(declare-fun e!2053176 () List!36583)

(declare-fun b!3301474 () Bool)

(assert (=> b!3301474 (= e!2053176 (Cons!36459 (h!41879 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241)))) (++!8815 (t!252748 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241)))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241))))))

(declare-fun b!3301473 () Bool)

(assert (=> b!3301473 (= e!2053176 (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241))))

(declare-fun b!3301475 () Bool)

(declare-fun res!1339127 () Bool)

(declare-fun e!2053175 () Bool)

(assert (=> b!3301475 (=> (not res!1339127) (not e!2053175))))

(declare-fun lt!1118942 () List!36583)

(assert (=> b!3301475 (= res!1339127 (= (size!27531 lt!1118942) (+ (size!27531 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241)))) (size!27531 (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241)))))))

(declare-fun d!924003 () Bool)

(assert (=> d!924003 e!2053175))

(declare-fun res!1339128 () Bool)

(assert (=> d!924003 (=> (not res!1339128) (not e!2053175))))

(assert (=> d!924003 (= res!1339128 (= (content!4957 lt!1118942) (set.union (content!4957 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241)))) (content!4957 (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241)))))))

(assert (=> d!924003 (= lt!1118942 e!2053176)))

(declare-fun c!560017 () Bool)

(assert (=> d!924003 (= c!560017 (is-Nil!36459 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241)))))))

(assert (=> d!924003 (= (++!8815 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241)) lt!1118942)))

(declare-fun b!3301476 () Bool)

(assert (=> b!3301476 (= e!2053175 (or (not (= (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241) Nil!36459)) (= lt!1118942 (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241))))))))

(assert (= (and d!924003 c!560017) b!3301473))

(assert (= (and d!924003 (not c!560017)) b!3301474))

(assert (= (and d!924003 res!1339128) b!3301475))

(assert (= (and b!3301475 res!1339127) b!3301476))

(assert (=> b!3301474 m!3624445))

(declare-fun m!3625865 () Bool)

(assert (=> b!3301474 m!3625865))

(declare-fun m!3625867 () Bool)

(assert (=> b!3301475 m!3625867))

(assert (=> b!3301475 m!3624447))

(declare-fun m!3625869 () Bool)

(assert (=> b!3301475 m!3625869))

(assert (=> b!3301475 m!3624445))

(declare-fun m!3625871 () Bool)

(assert (=> b!3301475 m!3625871))

(declare-fun m!3625873 () Bool)

(assert (=> d!924003 m!3625873))

(assert (=> d!924003 m!3624447))

(declare-fun m!3625875 () Bool)

(assert (=> d!924003 m!3625875))

(assert (=> d!924003 m!3624445))

(declare-fun m!3625877 () Bool)

(assert (=> d!924003 m!3625877))

(assert (=> b!3300613 d!924003))

(assert (=> b!3300613 d!923643))

(assert (=> b!3300613 d!923651))

(declare-fun b!3301478 () Bool)

(declare-fun e!2053178 () List!36583)

(assert (=> b!3301478 (= e!2053178 (Cons!36459 (h!41879 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (++!8815 (t!252748 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (list!13054 (charsOf!3303 separatorToken!241)))))))

(declare-fun b!3301477 () Bool)

(assert (=> b!3301477 (= e!2053178 (list!13054 (charsOf!3303 separatorToken!241)))))

(declare-fun b!3301479 () Bool)

(declare-fun res!1339129 () Bool)

(declare-fun e!2053177 () Bool)

(assert (=> b!3301479 (=> (not res!1339129) (not e!2053177))))

(declare-fun lt!1118943 () List!36583)

(assert (=> b!3301479 (= res!1339129 (= (size!27531 lt!1118943) (+ (size!27531 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (size!27531 (list!13054 (charsOf!3303 separatorToken!241))))))))

(declare-fun d!924005 () Bool)

(assert (=> d!924005 e!2053177))

(declare-fun res!1339130 () Bool)

(assert (=> d!924005 (=> (not res!1339130) (not e!2053177))))

(assert (=> d!924005 (= res!1339130 (= (content!4957 lt!1118943) (set.union (content!4957 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (content!4957 (list!13054 (charsOf!3303 separatorToken!241))))))))

(assert (=> d!924005 (= lt!1118943 e!2053178)))

(declare-fun c!560018 () Bool)

(assert (=> d!924005 (= c!560018 (is-Nil!36459 (list!13054 (charsOf!3303 (h!41880 tokens!494)))))))

(assert (=> d!924005 (= (++!8815 (list!13054 (charsOf!3303 (h!41880 tokens!494))) (list!13054 (charsOf!3303 separatorToken!241))) lt!1118943)))

(declare-fun b!3301480 () Bool)

(assert (=> b!3301480 (= e!2053177 (or (not (= (list!13054 (charsOf!3303 separatorToken!241)) Nil!36459)) (= lt!1118943 (list!13054 (charsOf!3303 (h!41880 tokens!494))))))))

(assert (= (and d!924005 c!560018) b!3301477))

(assert (= (and d!924005 (not c!560018)) b!3301478))

(assert (= (and d!924005 res!1339130) b!3301479))

(assert (= (and b!3301479 res!1339129) b!3301480))

(assert (=> b!3301478 m!3623623))

(declare-fun m!3625879 () Bool)

(assert (=> b!3301478 m!3625879))

(declare-fun m!3625881 () Bool)

(assert (=> b!3301479 m!3625881))

(assert (=> b!3301479 m!3623565))

(assert (=> b!3301479 m!3625649))

(assert (=> b!3301479 m!3623623))

(declare-fun m!3625883 () Bool)

(assert (=> b!3301479 m!3625883))

(declare-fun m!3625885 () Bool)

(assert (=> d!924005 m!3625885))

(assert (=> d!924005 m!3623565))

(assert (=> d!924005 m!3625653))

(assert (=> d!924005 m!3623623))

(declare-fun m!3625887 () Bool)

(assert (=> d!924005 m!3625887))

(assert (=> b!3300613 d!924005))

(declare-fun d!924007 () Bool)

(declare-fun c!560019 () Bool)

(assert (=> d!924007 (= c!560019 (is-Cons!36460 (t!252749 tokens!494)))))

(declare-fun e!2053179 () List!36583)

(assert (=> d!924007 (= (printWithSeparatorTokenList!201 thiss!18206 (t!252749 tokens!494) separatorToken!241) e!2053179)))

(declare-fun b!3301481 () Bool)

(assert (=> b!3301481 (= e!2053179 (++!8815 (++!8815 (list!13054 (charsOf!3303 (h!41880 (t!252749 tokens!494)))) (list!13054 (charsOf!3303 separatorToken!241))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 (t!252749 tokens!494)) separatorToken!241)))))

(declare-fun b!3301482 () Bool)

(assert (=> b!3301482 (= e!2053179 Nil!36459)))

(assert (= (and d!924007 c!560019) b!3301481))

(assert (= (and d!924007 (not c!560019)) b!3301482))

(declare-fun m!3625889 () Bool)

(assert (=> b!3301481 m!3625889))

(assert (=> b!3301481 m!3623619))

(assert (=> b!3301481 m!3623623))

(declare-fun m!3625891 () Bool)

(assert (=> b!3301481 m!3625891))

(declare-fun m!3625893 () Bool)

(assert (=> b!3301481 m!3625893))

(declare-fun m!3625895 () Bool)

(assert (=> b!3301481 m!3625895))

(assert (=> b!3301481 m!3625889))

(declare-fun m!3625897 () Bool)

(assert (=> b!3301481 m!3625897))

(assert (=> b!3301481 m!3625891))

(assert (=> b!3301481 m!3625893))

(assert (=> b!3301481 m!3623623))

(assert (=> b!3301481 m!3625895))

(assert (=> b!3301481 m!3623619))

(assert (=> b!3300613 d!924007))

(declare-fun d!924009 () Bool)

(assert (not d!924009))

(assert (=> b!3300433 d!924009))

(declare-fun d!924011 () Bool)

(assert (not d!924011))

(assert (=> b!3300433 d!924011))

(declare-fun b!3301484 () Bool)

(declare-fun e!2053181 () List!36583)

(assert (=> b!3301484 (= e!2053181 (Cons!36459 (h!41879 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241)))) (++!8815 (t!252748 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241)))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 Nil!36460) separatorToken!241))))))

(declare-fun b!3301483 () Bool)

(assert (=> b!3301483 (= e!2053181 (printWithSeparatorTokenList!201 thiss!18206 (t!252749 Nil!36460) separatorToken!241))))

(declare-fun b!3301485 () Bool)

(declare-fun res!1339131 () Bool)

(declare-fun e!2053180 () Bool)

(assert (=> b!3301485 (=> (not res!1339131) (not e!2053180))))

(declare-fun lt!1118944 () List!36583)

(assert (=> b!3301485 (= res!1339131 (= (size!27531 lt!1118944) (+ (size!27531 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241)))) (size!27531 (printWithSeparatorTokenList!201 thiss!18206 (t!252749 Nil!36460) separatorToken!241)))))))

(declare-fun d!924013 () Bool)

(assert (=> d!924013 e!2053180))

(declare-fun res!1339132 () Bool)

(assert (=> d!924013 (=> (not res!1339132) (not e!2053180))))

(assert (=> d!924013 (= res!1339132 (= (content!4957 lt!1118944) (set.union (content!4957 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241)))) (content!4957 (printWithSeparatorTokenList!201 thiss!18206 (t!252749 Nil!36460) separatorToken!241)))))))

(assert (=> d!924013 (= lt!1118944 e!2053181)))

(declare-fun c!560020 () Bool)

(assert (=> d!924013 (= c!560020 (is-Nil!36459 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241)))))))

(assert (=> d!924013 (= (++!8815 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 Nil!36460) separatorToken!241)) lt!1118944)))

(declare-fun b!3301486 () Bool)

(assert (=> b!3301486 (= e!2053180 (or (not (= (printWithSeparatorTokenList!201 thiss!18206 (t!252749 Nil!36460) separatorToken!241) Nil!36459)) (= lt!1118944 (++!8815 (list!13054 (charsOf!3303 (h!41880 Nil!36460))) (list!13054 (charsOf!3303 separatorToken!241))))))))

(assert (= (and d!924013 c!560020) b!3301483))

(assert (= (and d!924013 (not c!560020)) b!3301484))

(assert (= (and d!924013 res!1339132) b!3301485))

(assert (= (and b!3301485 res!1339131) b!3301486))

(assert (=> b!3301484 m!3624219))

(declare-fun m!3625899 () Bool)

(assert (=> b!3301484 m!3625899))

(declare-fun m!3625901 () Bool)

(assert (=> b!3301485 m!3625901))

(assert (=> b!3301485 m!3624225))

(declare-fun m!3625903 () Bool)

(assert (=> b!3301485 m!3625903))

(assert (=> b!3301485 m!3624219))

(declare-fun m!3625905 () Bool)

(assert (=> b!3301485 m!3625905))

(declare-fun m!3625907 () Bool)

(assert (=> d!924013 m!3625907))

(assert (=> d!924013 m!3624225))

(declare-fun m!3625909 () Bool)

(assert (=> d!924013 m!3625909))

(assert (=> d!924013 m!3624219))

(declare-fun m!3625911 () Bool)

(assert (=> d!924013 m!3625911))

(assert (=> b!3300433 d!924013))

(declare-fun d!924015 () Bool)

(assert (not d!924015))

(assert (=> b!3300433 d!924015))

(assert (=> b!3300433 d!923643))

(assert (=> b!3300433 d!923651))

(declare-fun d!924017 () Bool)

(assert (not d!924017))

(assert (=> b!3300433 d!924017))

(declare-fun d!924019 () Bool)

(assert (=> d!924019 (= (list!13055 lt!1118493) (list!13061 (c!559682 lt!1118493)))))

(declare-fun bs!548648 () Bool)

(assert (= bs!548648 d!924019))

(declare-fun m!3625913 () Bool)

(assert (=> bs!548648 m!3625913))

(assert (=> d!923475 d!924019))

(declare-fun d!924021 () Bool)

(declare-fun e!2053184 () Bool)

(assert (=> d!924021 e!2053184))

(declare-fun res!1339135 () Bool)

(assert (=> d!924021 (=> (not res!1339135) (not e!2053184))))

(declare-fun lt!1118947 () BalanceConc!21514)

(assert (=> d!924021 (= res!1339135 (= (list!13055 lt!1118947) (Cons!36460 (h!41880 tokens!494) Nil!36460)))))

(declare-fun choose!19120 (Token!9940) BalanceConc!21514)

(assert (=> d!924021 (= lt!1118947 (choose!19120 (h!41880 tokens!494)))))

(assert (=> d!924021 (= (singleton!1023 (h!41880 tokens!494)) lt!1118947)))

(declare-fun b!3301489 () Bool)

(assert (=> b!3301489 (= e!2053184 (isBalanced!3268 (c!559682 lt!1118947)))))

(assert (= (and d!924021 res!1339135) b!3301489))

(declare-fun m!3625915 () Bool)

(assert (=> d!924021 m!3625915))

(declare-fun m!3625917 () Bool)

(assert (=> d!924021 m!3625917))

(declare-fun m!3625919 () Bool)

(assert (=> b!3301489 m!3625919))

(assert (=> d!923475 d!924021))

(declare-fun d!924023 () Bool)

(declare-fun lt!1118948 () Int)

(assert (=> d!924023 (>= lt!1118948 0)))

(declare-fun e!2053185 () Int)

(assert (=> d!924023 (= lt!1118948 e!2053185)))

(declare-fun c!560021 () Bool)

(assert (=> d!924023 (= c!560021 (is-Nil!36459 (_2!21111 lt!1118544)))))

(assert (=> d!924023 (= (size!27531 (_2!21111 lt!1118544)) lt!1118948)))

(declare-fun b!3301490 () Bool)

(assert (=> b!3301490 (= e!2053185 0)))

(declare-fun b!3301491 () Bool)

(assert (=> b!3301491 (= e!2053185 (+ 1 (size!27531 (t!252748 (_2!21111 lt!1118544)))))))

(assert (= (and d!924023 c!560021) b!3301490))

(assert (= (and d!924023 (not c!560021)) b!3301491))

(declare-fun m!3625921 () Bool)

(assert (=> b!3301491 m!3625921))

(assert (=> b!3300562 d!924023))

(declare-fun d!924025 () Bool)

(declare-fun lt!1118949 () Int)

(assert (=> d!924025 (>= lt!1118949 0)))

(declare-fun e!2053186 () Int)

(assert (=> d!924025 (= lt!1118949 e!2053186)))

(declare-fun c!560022 () Bool)

(assert (=> d!924025 (= c!560022 (is-Nil!36459 lt!1118274))))

(assert (=> d!924025 (= (size!27531 lt!1118274) lt!1118949)))

(declare-fun b!3301492 () Bool)

(assert (=> b!3301492 (= e!2053186 0)))

(declare-fun b!3301493 () Bool)

(assert (=> b!3301493 (= e!2053186 (+ 1 (size!27531 (t!252748 lt!1118274))))))

(assert (= (and d!924025 c!560022) b!3301492))

(assert (= (and d!924025 (not c!560022)) b!3301493))

(declare-fun m!3625923 () Bool)

(assert (=> b!3301493 m!3625923))

(assert (=> b!3300562 d!924025))

(assert (=> b!3300767 d!923451))

(declare-fun d!924027 () Bool)

(assert (=> d!924027 (= (isEmpty!20604 lt!1118272) (not (is-Some!7269 lt!1118272)))))

(assert (=> d!923423 d!924027))

(declare-fun d!924029 () Bool)

(declare-fun lt!1118950 () Int)

(assert (=> d!924029 (>= lt!1118950 0)))

(declare-fun e!2053187 () Int)

(assert (=> d!924029 (= lt!1118950 e!2053187)))

(declare-fun c!560023 () Bool)

(assert (=> d!924029 (= c!560023 (is-Nil!36459 (_2!21112 (get!11636 lt!1118454))))))

(assert (=> d!924029 (= (size!27531 (_2!21112 (get!11636 lt!1118454))) lt!1118950)))

(declare-fun b!3301494 () Bool)

(assert (=> b!3301494 (= e!2053187 0)))

(declare-fun b!3301495 () Bool)

(assert (=> b!3301495 (= e!2053187 (+ 1 (size!27531 (t!252748 (_2!21112 (get!11636 lt!1118454))))))))

(assert (= (and d!924029 c!560023) b!3301494))

(assert (= (and d!924029 (not c!560023)) b!3301495))

(declare-fun m!3625925 () Bool)

(assert (=> b!3301495 m!3625925))

(assert (=> b!3300336 d!924029))

(assert (=> b!3300336 d!923949))

(assert (=> b!3300336 d!923413))

(declare-fun b!3301496 () Bool)

(declare-fun e!2053188 () List!36584)

(assert (=> b!3301496 (= e!2053188 Nil!36460)))

(declare-fun b!3301497 () Bool)

(declare-fun e!2053189 () Bool)

(declare-fun lt!1118951 () List!36584)

(assert (=> b!3301497 (= e!2053189 (forall!7541 lt!1118951 lambda!118850))))

(declare-fun b!3301498 () Bool)

(declare-fun e!2053190 () List!36584)

(declare-fun call!240016 () List!36584)

(assert (=> b!3301498 (= e!2053190 call!240016)))

(declare-fun b!3301499 () Bool)

(assert (=> b!3301499 (= e!2053188 e!2053190)))

(declare-fun c!560024 () Bool)

(assert (=> b!3301499 (= c!560024 (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))))

(declare-fun b!3301500 () Bool)

(assert (=> b!3301500 (= e!2053190 (Cons!36460 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))) call!240016))))

(declare-fun d!924031 () Bool)

(assert (=> d!924031 e!2053189))

(declare-fun res!1339137 () Bool)

(assert (=> d!924031 (=> (not res!1339137) (not e!2053189))))

(assert (=> d!924031 (= res!1339137 (<= (size!27539 lt!1118951) (size!27539 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))))

(assert (=> d!924031 (= lt!1118951 e!2053188)))

(declare-fun c!560025 () Bool)

(assert (=> d!924031 (= c!560025 (is-Nil!36460 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))))))

(assert (=> d!924031 (= (filter!527 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))) lambda!118850) lt!1118951)))

(declare-fun bm!240011 () Bool)

(assert (=> bm!240011 (= call!240016 (filter!527 (t!252749 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241))))) lambda!118850))))

(declare-fun b!3301501 () Bool)

(declare-fun res!1339136 () Bool)

(assert (=> b!3301501 (=> (not res!1339136) (not e!2053189))))

(assert (=> b!3301501 (= res!1339136 (set.subset (content!4959 lt!1118951) (content!4959 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))))

(assert (= (and d!924031 c!560025) b!3301496))

(assert (= (and d!924031 (not c!560025)) b!3301499))

(assert (= (and b!3301499 c!560024) b!3301500))

(assert (= (and b!3301499 (not c!560024)) b!3301498))

(assert (= (or b!3301500 b!3301498) bm!240011))

(assert (= (and d!924031 res!1339137) b!3301501))

(assert (= (and b!3301501 res!1339136) b!3301497))

(declare-fun b_lambda!92067 () Bool)

(assert (=> (not b_lambda!92067) (not b!3301499)))

(declare-fun m!3625927 () Bool)

(assert (=> d!924031 m!3625927))

(assert (=> d!924031 m!3625425))

(declare-fun m!3625929 () Bool)

(assert (=> b!3301499 m!3625929))

(declare-fun m!3625931 () Bool)

(assert (=> bm!240011 m!3625931))

(declare-fun m!3625933 () Bool)

(assert (=> b!3301497 m!3625933))

(declare-fun m!3625935 () Bool)

(assert (=> b!3301501 m!3625935))

(assert (=> b!3301501 m!3625715))

(assert (=> bm!239938 d!924031))

(declare-fun d!924033 () Bool)

(declare-fun lt!1118952 () Bool)

(assert (=> d!924033 (= lt!1118952 (set.member (get!11634 lt!1118397) (content!4961 rules!2135)))))

(declare-fun e!2053192 () Bool)

(assert (=> d!924033 (= lt!1118952 e!2053192)))

(declare-fun res!1339139 () Bool)

(assert (=> d!924033 (=> (not res!1339139) (not e!2053192))))

(assert (=> d!924033 (= res!1339139 (is-Cons!36461 rules!2135))))

(assert (=> d!924033 (= (contains!6585 rules!2135 (get!11634 lt!1118397)) lt!1118952)))

(declare-fun b!3301502 () Bool)

(declare-fun e!2053191 () Bool)

(assert (=> b!3301502 (= e!2053192 e!2053191)))

(declare-fun res!1339138 () Bool)

(assert (=> b!3301502 (=> res!1339138 e!2053191)))

(assert (=> b!3301502 (= res!1339138 (= (h!41881 rules!2135) (get!11634 lt!1118397)))))

(declare-fun b!3301503 () Bool)

(assert (=> b!3301503 (= e!2053191 (contains!6585 (t!252750 rules!2135) (get!11634 lt!1118397)))))

(assert (= (and d!924033 res!1339139) b!3301502))

(assert (= (and b!3301502 (not res!1339138)) b!3301503))

(assert (=> d!924033 m!3625235))

(assert (=> d!924033 m!3623911))

(declare-fun m!3625937 () Bool)

(assert (=> d!924033 m!3625937))

(assert (=> b!3301503 m!3623911))

(declare-fun m!3625939 () Bool)

(assert (=> b!3301503 m!3625939))

(assert (=> b!3300184 d!924033))

(assert (=> b!3300184 d!923789))

(declare-fun b!3301504 () Bool)

(declare-fun e!2053194 () Bool)

(assert (=> b!3301504 (= e!2053194 (nullable!3415 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))))))

(declare-fun b!3301505 () Bool)

(declare-fun res!1339146 () Bool)

(declare-fun e!2053198 () Bool)

(assert (=> b!3301505 (=> (not res!1339146) (not e!2053198))))

(declare-fun call!240017 () Bool)

(assert (=> b!3301505 (= res!1339146 (not call!240017))))

(declare-fun b!3301506 () Bool)

(assert (=> b!3301506 (= e!2053194 (matchR!4668 (derivativeStep!2968 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))) (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))))) (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))))))))

(declare-fun b!3301507 () Bool)

(declare-fun e!2053196 () Bool)

(declare-fun e!2053199 () Bool)

(assert (=> b!3301507 (= e!2053196 e!2053199)))

(declare-fun c!560028 () Bool)

(assert (=> b!3301507 (= c!560028 (is-EmptyLang!10046 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))))))

(declare-fun d!924035 () Bool)

(assert (=> d!924035 e!2053196))

(declare-fun c!560027 () Bool)

(assert (=> d!924035 (= c!560027 (is-EmptyExpr!10046 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))))))

(declare-fun lt!1118953 () Bool)

(assert (=> d!924035 (= lt!1118953 e!2053194)))

(declare-fun c!560026 () Bool)

(assert (=> d!924035 (= c!560026 (isEmpty!20598 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))))))

(assert (=> d!924035 (validRegex!4571 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))))

(assert (=> d!924035 (= (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))) lt!1118953)))

(declare-fun b!3301508 () Bool)

(declare-fun e!2053193 () Bool)

(assert (=> b!3301508 (= e!2053193 (not (= (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))) (c!559680 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540))))))))))

(declare-fun b!3301509 () Bool)

(declare-fun res!1339142 () Bool)

(declare-fun e!2053197 () Bool)

(assert (=> b!3301509 (=> res!1339142 e!2053197)))

(assert (=> b!3301509 (= res!1339142 (not (is-ElementMatch!10046 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))))))

(assert (=> b!3301509 (= e!2053199 e!2053197)))

(declare-fun b!3301510 () Bool)

(declare-fun res!1339140 () Bool)

(assert (=> b!3301510 (=> (not res!1339140) (not e!2053198))))

(assert (=> b!3301510 (= res!1339140 (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540)))))))))

(declare-fun b!3301511 () Bool)

(declare-fun res!1339141 () Bool)

(assert (=> b!3301511 (=> res!1339141 e!2053197)))

(assert (=> b!3301511 (= res!1339141 e!2053198)))

(declare-fun res!1339143 () Bool)

(assert (=> b!3301511 (=> (not res!1339143) (not e!2053198))))

(assert (=> b!3301511 (= res!1339143 lt!1118953)))

(declare-fun b!3301512 () Bool)

(assert (=> b!3301512 (= e!2053196 (= lt!1118953 call!240017))))

(declare-fun bm!240012 () Bool)

(assert (=> bm!240012 (= call!240017 (isEmpty!20598 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))))))

(declare-fun b!3301513 () Bool)

(assert (=> b!3301513 (= e!2053198 (= (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))) (c!559680 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))))))

(declare-fun b!3301514 () Bool)

(declare-fun e!2053195 () Bool)

(assert (=> b!3301514 (= e!2053197 e!2053195)))

(declare-fun res!1339144 () Bool)

(assert (=> b!3301514 (=> (not res!1339144) (not e!2053195))))

(assert (=> b!3301514 (= res!1339144 (not lt!1118953))))

(declare-fun b!3301515 () Bool)

(declare-fun res!1339147 () Bool)

(assert (=> b!3301515 (=> res!1339147 e!2053193)))

(assert (=> b!3301515 (= res!1339147 (not (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118540))))))))))

(declare-fun b!3301516 () Bool)

(assert (=> b!3301516 (= e!2053199 (not lt!1118953))))

(declare-fun b!3301517 () Bool)

(assert (=> b!3301517 (= e!2053195 e!2053193)))

(declare-fun res!1339145 () Bool)

(assert (=> b!3301517 (=> res!1339145 e!2053193)))

(assert (=> b!3301517 (= res!1339145 call!240017)))

(assert (= (and d!924035 c!560026) b!3301504))

(assert (= (and d!924035 (not c!560026)) b!3301506))

(assert (= (and d!924035 c!560027) b!3301512))

(assert (= (and d!924035 (not c!560027)) b!3301507))

(assert (= (and b!3301507 c!560028) b!3301516))

(assert (= (and b!3301507 (not c!560028)) b!3301509))

(assert (= (and b!3301509 (not res!1339142)) b!3301511))

(assert (= (and b!3301511 res!1339143) b!3301505))

(assert (= (and b!3301505 res!1339146) b!3301510))

(assert (= (and b!3301510 res!1339140) b!3301513))

(assert (= (and b!3301511 (not res!1339141)) b!3301514))

(assert (= (and b!3301514 res!1339144) b!3301517))

(assert (= (and b!3301517 (not res!1339145)) b!3301515))

(assert (= (and b!3301515 (not res!1339147)) b!3301508))

(assert (= (or b!3301512 b!3301505 b!3301517) bm!240012))

(assert (=> b!3301510 m!3624351))

(declare-fun m!3625941 () Bool)

(assert (=> b!3301510 m!3625941))

(assert (=> b!3301510 m!3625941))

(declare-fun m!3625943 () Bool)

(assert (=> b!3301510 m!3625943))

(declare-fun m!3625945 () Bool)

(assert (=> b!3301504 m!3625945))

(assert (=> bm!240012 m!3624351))

(declare-fun m!3625947 () Bool)

(assert (=> bm!240012 m!3625947))

(assert (=> b!3301506 m!3624351))

(declare-fun m!3625949 () Bool)

(assert (=> b!3301506 m!3625949))

(assert (=> b!3301506 m!3625949))

(declare-fun m!3625951 () Bool)

(assert (=> b!3301506 m!3625951))

(assert (=> b!3301506 m!3624351))

(assert (=> b!3301506 m!3625941))

(assert (=> b!3301506 m!3625951))

(assert (=> b!3301506 m!3625941))

(declare-fun m!3625953 () Bool)

(assert (=> b!3301506 m!3625953))

(assert (=> b!3301508 m!3624351))

(assert (=> b!3301508 m!3625949))

(assert (=> b!3301513 m!3624351))

(assert (=> b!3301513 m!3625949))

(assert (=> b!3301515 m!3624351))

(assert (=> b!3301515 m!3625941))

(assert (=> b!3301515 m!3625941))

(assert (=> b!3301515 m!3625943))

(assert (=> d!924035 m!3624351))

(assert (=> d!924035 m!3625947))

(declare-fun m!3625955 () Bool)

(assert (=> d!924035 m!3625955))

(assert (=> b!3300555 d!924035))

(assert (=> b!3300555 d!923841))

(assert (=> b!3300555 d!923845))

(assert (=> b!3300555 d!923847))

(declare-fun d!924037 () Bool)

(declare-fun lt!1118954 () Int)

(assert (=> d!924037 (>= lt!1118954 0)))

(declare-fun e!2053200 () Int)

(assert (=> d!924037 (= lt!1118954 e!2053200)))

(declare-fun c!560029 () Bool)

(assert (=> d!924037 (= c!560029 (is-Nil!36459 lt!1118630))))

(assert (=> d!924037 (= (size!27531 lt!1118630) lt!1118954)))

(declare-fun b!3301518 () Bool)

(assert (=> b!3301518 (= e!2053200 0)))

(declare-fun b!3301519 () Bool)

(assert (=> b!3301519 (= e!2053200 (+ 1 (size!27531 (t!252748 lt!1118630))))))

(assert (= (and d!924037 c!560029) b!3301518))

(assert (= (and d!924037 (not c!560029)) b!3301519))

(declare-fun m!3625957 () Bool)

(assert (=> b!3301519 m!3625957))

(assert (=> b!3300847 d!924037))

(assert (=> b!3300847 d!923413))

(declare-fun d!924039 () Bool)

(declare-fun lt!1118955 () Int)

(assert (=> d!924039 (>= lt!1118955 0)))

(declare-fun e!2053201 () Int)

(assert (=> d!924039 (= lt!1118955 e!2053201)))

(declare-fun c!560030 () Bool)

(assert (=> d!924039 (= c!560030 (is-Nil!36459 lt!1118262))))

(assert (=> d!924039 (= (size!27531 lt!1118262) lt!1118955)))

(declare-fun b!3301520 () Bool)

(assert (=> b!3301520 (= e!2053201 0)))

(declare-fun b!3301521 () Bool)

(assert (=> b!3301521 (= e!2053201 (+ 1 (size!27531 (t!252748 lt!1118262))))))

(assert (= (and d!924039 c!560030) b!3301520))

(assert (= (and d!924039 (not c!560030)) b!3301521))

(declare-fun m!3625959 () Bool)

(assert (=> b!3301521 m!3625959))

(assert (=> b!3300847 d!924039))

(declare-fun d!924041 () Bool)

(assert (=> d!924041 (= (list!13055 (singletonSeq!2383 separatorToken!241)) (list!13061 (c!559682 (singletonSeq!2383 separatorToken!241))))))

(declare-fun bs!548649 () Bool)

(assert (= bs!548649 d!924041))

(declare-fun m!3625961 () Bool)

(assert (=> bs!548649 m!3625961))

(assert (=> d!923543 d!924041))

(declare-fun d!924043 () Bool)

(assert (=> d!924043 (= (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241))))) (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 separatorToken!241)))))))))

(declare-fun bs!548650 () Bool)

(assert (= bs!548650 d!924043))

(declare-fun m!3625963 () Bool)

(assert (=> bs!548650 m!3625963))

(assert (=> d!923543 d!924043))

(assert (=> d!923543 d!923811))

(declare-fun d!924045 () Bool)

(declare-fun lt!1118956 () Int)

(assert (=> d!924045 (= lt!1118956 (size!27539 (list!13055 (_1!21113 lt!1118594))))))

(assert (=> d!924045 (= lt!1118956 (size!27541 (c!559682 (_1!21113 lt!1118594))))))

(assert (=> d!924045 (= (size!27538 (_1!21113 lt!1118594)) lt!1118956)))

(declare-fun bs!548651 () Bool)

(assert (= bs!548651 d!924045))

(assert (=> bs!548651 m!3625787))

(assert (=> bs!548651 m!3625787))

(declare-fun m!3625965 () Bool)

(assert (=> bs!548651 m!3625965))

(declare-fun m!3625967 () Bool)

(assert (=> bs!548651 m!3625967))

(assert (=> d!923543 d!924045))

(assert (=> d!923543 d!923809))

(assert (=> d!923543 d!923535))

(assert (=> d!923543 d!923807))

(declare-fun b!3301522 () Bool)

(declare-fun e!2053202 () List!36584)

(assert (=> b!3301522 (= e!2053202 Nil!36460)))

(declare-fun b!3301523 () Bool)

(declare-fun e!2053203 () Bool)

(declare-fun lt!1118957 () List!36584)

(assert (=> b!3301523 (= e!2053203 (forall!7541 lt!1118957 lambda!118850))))

(declare-fun b!3301524 () Bool)

(declare-fun e!2053204 () List!36584)

(declare-fun call!240018 () List!36584)

(assert (=> b!3301524 (= e!2053204 call!240018)))

(declare-fun b!3301525 () Bool)

(assert (=> b!3301525 (= e!2053202 e!2053204)))

(declare-fun c!560031 () Bool)

(assert (=> b!3301525 (= c!560031 (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))))

(declare-fun b!3301526 () Bool)

(assert (=> b!3301526 (= e!2053204 (Cons!36460 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))) call!240018))))

(declare-fun d!924047 () Bool)

(assert (=> d!924047 e!2053203))

(declare-fun res!1339149 () Bool)

(assert (=> d!924047 (=> (not res!1339149) (not e!2053203))))

(assert (=> d!924047 (= res!1339149 (<= (size!27539 lt!1118957) (size!27539 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))))

(assert (=> d!924047 (= lt!1118957 e!2053202)))

(declare-fun c!560032 () Bool)

(assert (=> d!924047 (= c!560032 (is-Nil!36460 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))))))

(assert (=> d!924047 (= (filter!527 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))) lambda!118850) lt!1118957)))

(declare-fun bm!240013 () Bool)

(assert (=> bm!240013 (= call!240018 (filter!527 (t!252749 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))) lambda!118850))))

(declare-fun b!3301527 () Bool)

(declare-fun res!1339148 () Bool)

(assert (=> b!3301527 (=> (not res!1339148) (not e!2053203))))

(assert (=> b!3301527 (= res!1339148 (set.subset (content!4959 lt!1118957) (content!4959 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))))

(assert (= (and d!924047 c!560032) b!3301522))

(assert (= (and d!924047 (not c!560032)) b!3301525))

(assert (= (and b!3301525 c!560031) b!3301526))

(assert (= (and b!3301525 (not c!560031)) b!3301524))

(assert (= (or b!3301526 b!3301524) bm!240013))

(assert (= (and d!924047 res!1339149) b!3301527))

(assert (= (and b!3301527 res!1339148) b!3301523))

(declare-fun b_lambda!92069 () Bool)

(assert (=> (not b_lambda!92069) (not b!3301525)))

(declare-fun m!3625969 () Bool)

(assert (=> d!924047 m!3625969))

(assert (=> d!924047 m!3625453))

(declare-fun m!3625971 () Bool)

(assert (=> b!3301525 m!3625971))

(declare-fun m!3625973 () Bool)

(assert (=> bm!240013 m!3625973))

(declare-fun m!3625975 () Bool)

(assert (=> b!3301523 m!3625975))

(declare-fun m!3625977 () Bool)

(assert (=> b!3301527 m!3625977))

(assert (=> b!3301527 m!3625763))

(assert (=> bm!239946 d!924047))

(declare-fun d!924049 () Bool)

(declare-fun lt!1118958 () Bool)

(assert (=> d!924049 (= lt!1118958 (isEmpty!20599 (list!13055 (_1!21113 lt!1118624))))))

(assert (=> d!924049 (= lt!1118958 (isEmpty!20610 (c!559682 (_1!21113 lt!1118624))))))

(assert (=> d!924049 (= (isEmpty!20597 (_1!21113 lt!1118624)) lt!1118958)))

(declare-fun bs!548652 () Bool)

(assert (= bs!548652 d!924049))

(assert (=> bs!548652 m!3624787))

(assert (=> bs!548652 m!3624787))

(declare-fun m!3625979 () Bool)

(assert (=> bs!548652 m!3625979))

(declare-fun m!3625981 () Bool)

(assert (=> bs!548652 m!3625981))

(assert (=> b!3300826 d!924049))

(declare-fun d!924051 () Bool)

(declare-fun lt!1118959 () Int)

(assert (=> d!924051 (= lt!1118959 (size!27539 (list!13055 (_1!21113 lt!1118659))))))

(assert (=> d!924051 (= lt!1118959 (size!27541 (c!559682 (_1!21113 lt!1118659))))))

(assert (=> d!924051 (= (size!27538 (_1!21113 lt!1118659)) lt!1118959)))

(declare-fun bs!548653 () Bool)

(assert (= bs!548653 d!924051))

(assert (=> bs!548653 m!3624941))

(assert (=> bs!548653 m!3624941))

(declare-fun m!3625983 () Bool)

(assert (=> bs!548653 m!3625983))

(declare-fun m!3625985 () Bool)

(assert (=> bs!548653 m!3625985))

(assert (=> d!923677 d!924051))

(declare-fun b!3301542 () Bool)

(declare-fun e!2053216 () tuple2!35958)

(assert (=> b!3301542 (= e!2053216 (tuple2!35959 (BalanceConc!21515 Empty!10950) lt!1118255))))

(declare-fun lt!1119034 () tuple2!35958)

(declare-datatypes ((tuple2!35970 0))(
  ( (tuple2!35971 (_1!21119 Token!9940) (_2!21119 BalanceConc!21512)) )
))
(declare-datatypes ((Option!7273 0))(
  ( (None!7272) (Some!7272 (v!36033 tuple2!35970)) )
))
(declare-fun lt!1119040 () Option!7273)

(declare-fun b!3301543 () Bool)

(declare-fun lexRec!704 (LexerInterface!4876 List!36585 BalanceConc!21512) tuple2!35958)

(assert (=> b!3301543 (= lt!1119034 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119040))))))

(declare-fun e!2053213 () tuple2!35958)

(declare-fun prepend!1200 (BalanceConc!21514 Token!9940) BalanceConc!21514)

(assert (=> b!3301543 (= e!2053213 (tuple2!35959 (prepend!1200 (_1!21113 lt!1119034) (_1!21119 (v!36033 lt!1119040))) (_2!21113 lt!1119034)))))

(declare-fun b!3301544 () Bool)

(declare-fun e!2053215 () tuple2!35958)

(assert (=> b!3301544 (= e!2053215 (tuple2!35959 (BalanceConc!21515 Empty!10950) lt!1118255))))

(declare-fun d!924053 () Bool)

(declare-fun e!2053214 () Bool)

(assert (=> d!924053 e!2053214))

(declare-fun res!1339152 () Bool)

(assert (=> d!924053 (=> (not res!1339152) (not e!2053214))))

(declare-fun lt!1119033 () tuple2!35958)

(assert (=> d!924053 (= res!1339152 (= (list!13055 (_1!21113 lt!1119033)) (list!13055 (_1!21113 (lexRec!704 thiss!18206 rules!2135 lt!1118255)))))))

(assert (=> d!924053 (= lt!1119033 e!2053216)))

(declare-fun c!560039 () Bool)

(declare-fun lt!1119052 () Option!7273)

(assert (=> d!924053 (= c!560039 (is-Some!7272 lt!1119052))))

(declare-fun maxPrefixZipperSequenceV2!491 (LexerInterface!4876 List!36585 BalanceConc!21512 BalanceConc!21512) Option!7273)

(assert (=> d!924053 (= lt!1119052 (maxPrefixZipperSequenceV2!491 thiss!18206 rules!2135 lt!1118255 lt!1118255))))

(declare-fun lt!1119032 () Unit!51389)

(declare-fun lt!1119041 () Unit!51389)

(assert (=> d!924053 (= lt!1119032 lt!1119041)))

(declare-fun lt!1119028 () List!36583)

(declare-fun lt!1119054 () List!36583)

(declare-fun isSuffix!866 (List!36583 List!36583) Bool)

(assert (=> d!924053 (isSuffix!866 lt!1119028 (++!8815 lt!1119054 lt!1119028))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!551 (List!36583 List!36583) Unit!51389)

(assert (=> d!924053 (= lt!1119041 (lemmaConcatTwoListThenFSndIsSuffix!551 lt!1119054 lt!1119028))))

(assert (=> d!924053 (= lt!1119028 (list!13054 lt!1118255))))

(assert (=> d!924053 (= lt!1119054 (list!13054 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!924053 (= (lexTailRecV2!961 thiss!18206 rules!2135 lt!1118255 (BalanceConc!21513 Empty!10949) lt!1118255 (BalanceConc!21515 Empty!10950)) lt!1119033)))

(declare-fun b!3301545 () Bool)

(assert (=> b!3301545 (= e!2053214 (= (list!13054 (_2!21113 lt!1119033)) (list!13054 (_2!21113 (lexRec!704 thiss!18206 rules!2135 lt!1118255)))))))

(declare-fun b!3301546 () Bool)

(declare-fun lt!1119029 () BalanceConc!21512)

(assert (=> b!3301546 (= e!2053213 (tuple2!35959 (BalanceConc!21515 Empty!10950) lt!1119029))))

(declare-fun b!3301547 () Bool)

(declare-fun lt!1119046 () BalanceConc!21512)

(declare-fun append!896 (BalanceConc!21514 Token!9940) BalanceConc!21514)

(assert (=> b!3301547 (= e!2053216 (lexTailRecV2!961 thiss!18206 rules!2135 lt!1118255 lt!1119046 (_2!21119 (v!36033 lt!1119052)) (append!896 (BalanceConc!21515 Empty!10950) (_1!21119 (v!36033 lt!1119052)))))))

(declare-fun lt!1119039 () tuple2!35958)

(assert (=> b!3301547 (= lt!1119039 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119052))))))

(declare-fun lt!1119058 () List!36583)

(assert (=> b!3301547 (= lt!1119058 (list!13054 (BalanceConc!21513 Empty!10949)))))

(declare-fun lt!1119038 () List!36583)

(assert (=> b!3301547 (= lt!1119038 (list!13054 (charsOf!3303 (_1!21119 (v!36033 lt!1119052)))))))

(declare-fun lt!1119045 () List!36583)

(assert (=> b!3301547 (= lt!1119045 (list!13054 (_2!21119 (v!36033 lt!1119052))))))

(declare-fun lt!1119030 () Unit!51389)

(assert (=> b!3301547 (= lt!1119030 (lemmaConcatAssociativity!1813 lt!1119058 lt!1119038 lt!1119045))))

(assert (=> b!3301547 (= (++!8815 (++!8815 lt!1119058 lt!1119038) lt!1119045) (++!8815 lt!1119058 (++!8815 lt!1119038 lt!1119045)))))

(declare-fun lt!1119055 () Unit!51389)

(assert (=> b!3301547 (= lt!1119055 lt!1119030)))

(declare-fun lt!1119037 () Option!7273)

(declare-fun maxPrefixZipperSequence!1097 (LexerInterface!4876 List!36585 BalanceConc!21512) Option!7273)

(assert (=> b!3301547 (= lt!1119037 (maxPrefixZipperSequence!1097 thiss!18206 rules!2135 lt!1118255))))

(declare-fun c!560040 () Bool)

(assert (=> b!3301547 (= c!560040 (is-Some!7272 lt!1119037))))

(assert (=> b!3301547 (= (lexRec!704 thiss!18206 rules!2135 lt!1118255) e!2053215)))

(declare-fun lt!1119049 () Unit!51389)

(declare-fun Unit!51401 () Unit!51389)

(assert (=> b!3301547 (= lt!1119049 Unit!51401)))

(declare-fun lt!1119047 () List!36584)

(assert (=> b!3301547 (= lt!1119047 (list!13055 (BalanceConc!21515 Empty!10950)))))

(declare-fun lt!1119043 () List!36584)

(assert (=> b!3301547 (= lt!1119043 (Cons!36460 (_1!21119 (v!36033 lt!1119052)) Nil!36460))))

(declare-fun lt!1119044 () List!36584)

(assert (=> b!3301547 (= lt!1119044 (list!13055 (_1!21113 lt!1119039)))))

(declare-fun lt!1119048 () Unit!51389)

(declare-fun lemmaConcatAssociativity!1814 (List!36584 List!36584 List!36584) Unit!51389)

(assert (=> b!3301547 (= lt!1119048 (lemmaConcatAssociativity!1814 lt!1119047 lt!1119043 lt!1119044))))

(declare-fun ++!8819 (List!36584 List!36584) List!36584)

(assert (=> b!3301547 (= (++!8819 (++!8819 lt!1119047 lt!1119043) lt!1119044) (++!8819 lt!1119047 (++!8819 lt!1119043 lt!1119044)))))

(declare-fun lt!1119053 () Unit!51389)

(assert (=> b!3301547 (= lt!1119053 lt!1119048)))

(declare-fun lt!1119031 () List!36583)

(assert (=> b!3301547 (= lt!1119031 (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) (list!13054 (charsOf!3303 (_1!21119 (v!36033 lt!1119052))))))))

(declare-fun lt!1119036 () List!36583)

(assert (=> b!3301547 (= lt!1119036 (list!13054 (_2!21119 (v!36033 lt!1119052))))))

(declare-fun lt!1119051 () List!36584)

(assert (=> b!3301547 (= lt!1119051 (list!13055 (append!896 (BalanceConc!21515 Empty!10950) (_1!21119 (v!36033 lt!1119052)))))))

(declare-fun lt!1119035 () Unit!51389)

(declare-fun lemmaLexThenLexPrefix!469 (LexerInterface!4876 List!36585 List!36583 List!36583 List!36584 List!36584 List!36583) Unit!51389)

(assert (=> b!3301547 (= lt!1119035 (lemmaLexThenLexPrefix!469 thiss!18206 rules!2135 lt!1119031 lt!1119036 lt!1119051 (list!13055 (_1!21113 lt!1119039)) (list!13054 (_2!21113 lt!1119039))))))

(assert (=> b!3301547 (= (lexList!1350 thiss!18206 rules!2135 lt!1119031) (tuple2!35955 lt!1119051 Nil!36459))))

(declare-fun lt!1119042 () Unit!51389)

(assert (=> b!3301547 (= lt!1119042 lt!1119035)))

(assert (=> b!3301547 (= lt!1119029 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119052)))))))

(assert (=> b!3301547 (= lt!1119040 (maxPrefixZipperSequence!1097 thiss!18206 rules!2135 lt!1119029))))

(declare-fun c!560041 () Bool)

(assert (=> b!3301547 (= c!560041 (is-Some!7272 lt!1119040))))

(assert (=> b!3301547 (= (lexRec!704 thiss!18206 rules!2135 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119052))))) e!2053213)))

(declare-fun lt!1119057 () Unit!51389)

(declare-fun Unit!51402 () Unit!51389)

(assert (=> b!3301547 (= lt!1119057 Unit!51402)))

(assert (=> b!3301547 (= lt!1119046 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119052)))))))

(declare-fun lt!1119059 () List!36583)

(assert (=> b!3301547 (= lt!1119059 (list!13054 lt!1119046))))

(declare-fun lt!1119056 () List!36583)

(assert (=> b!3301547 (= lt!1119056 (list!13054 (_2!21119 (v!36033 lt!1119052))))))

(declare-fun lt!1119050 () Unit!51389)

(assert (=> b!3301547 (= lt!1119050 (lemmaConcatTwoListThenFSndIsSuffix!551 lt!1119059 lt!1119056))))

(assert (=> b!3301547 (isSuffix!866 lt!1119056 (++!8815 lt!1119059 lt!1119056))))

(declare-fun lt!1119061 () Unit!51389)

(assert (=> b!3301547 (= lt!1119061 lt!1119050)))

(declare-fun b!3301548 () Bool)

(declare-fun lt!1119060 () tuple2!35958)

(assert (=> b!3301548 (= lt!1119060 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119037))))))

(assert (=> b!3301548 (= e!2053215 (tuple2!35959 (prepend!1200 (_1!21113 lt!1119060) (_1!21119 (v!36033 lt!1119037))) (_2!21113 lt!1119060)))))

(assert (= (and d!924053 c!560039) b!3301547))

(assert (= (and d!924053 (not c!560039)) b!3301542))

(assert (= (and b!3301547 c!560040) b!3301548))

(assert (= (and b!3301547 (not c!560040)) b!3301544))

(assert (= (and b!3301547 c!560041) b!3301543))

(assert (= (and b!3301547 (not c!560041)) b!3301546))

(assert (= (and d!924053 res!1339152) b!3301545))

(declare-fun m!3625987 () Bool)

(assert (=> d!924053 m!3625987))

(declare-fun m!3625989 () Bool)

(assert (=> d!924053 m!3625989))

(declare-fun m!3625991 () Bool)

(assert (=> d!924053 m!3625991))

(declare-fun m!3625993 () Bool)

(assert (=> d!924053 m!3625993))

(assert (=> d!924053 m!3623617))

(assert (=> d!924053 m!3624131))

(declare-fun m!3625995 () Bool)

(assert (=> d!924053 m!3625995))

(assert (=> d!924053 m!3625989))

(declare-fun m!3625997 () Bool)

(assert (=> d!924053 m!3625997))

(declare-fun m!3625999 () Bool)

(assert (=> d!924053 m!3625999))

(declare-fun m!3626001 () Bool)

(assert (=> b!3301547 m!3626001))

(declare-fun m!3626003 () Bool)

(assert (=> b!3301547 m!3626003))

(declare-fun m!3626005 () Bool)

(assert (=> b!3301547 m!3626005))

(declare-fun m!3626007 () Bool)

(assert (=> b!3301547 m!3626007))

(declare-fun m!3626009 () Bool)

(assert (=> b!3301547 m!3626009))

(declare-fun m!3626011 () Bool)

(assert (=> b!3301547 m!3626011))

(assert (=> b!3301547 m!3624863))

(declare-fun m!3626013 () Bool)

(assert (=> b!3301547 m!3626013))

(declare-fun m!3626015 () Bool)

(assert (=> b!3301547 m!3626015))

(declare-fun m!3626017 () Bool)

(assert (=> b!3301547 m!3626017))

(assert (=> b!3301547 m!3626011))

(assert (=> b!3301547 m!3626001))

(declare-fun m!3626019 () Bool)

(assert (=> b!3301547 m!3626019))

(declare-fun m!3626021 () Bool)

(assert (=> b!3301547 m!3626021))

(declare-fun m!3626023 () Bool)

(assert (=> b!3301547 m!3626023))

(declare-fun m!3626025 () Bool)

(assert (=> b!3301547 m!3626025))

(declare-fun m!3626027 () Bool)

(assert (=> b!3301547 m!3626027))

(declare-fun m!3626029 () Bool)

(assert (=> b!3301547 m!3626029))

(declare-fun m!3626031 () Bool)

(assert (=> b!3301547 m!3626031))

(assert (=> b!3301547 m!3626027))

(declare-fun m!3626033 () Bool)

(assert (=> b!3301547 m!3626033))

(assert (=> b!3301547 m!3626021))

(assert (=> b!3301547 m!3626013))

(declare-fun m!3626035 () Bool)

(assert (=> b!3301547 m!3626035))

(assert (=> b!3301547 m!3625999))

(declare-fun m!3626037 () Bool)

(assert (=> b!3301547 m!3626037))

(declare-fun m!3626039 () Bool)

(assert (=> b!3301547 m!3626039))

(declare-fun m!3626041 () Bool)

(assert (=> b!3301547 m!3626041))

(assert (=> b!3301547 m!3626027))

(declare-fun m!3626043 () Bool)

(assert (=> b!3301547 m!3626043))

(assert (=> b!3301547 m!3626021))

(declare-fun m!3626045 () Bool)

(assert (=> b!3301547 m!3626045))

(assert (=> b!3301547 m!3626007))

(assert (=> b!3301547 m!3626025))

(declare-fun m!3626047 () Bool)

(assert (=> b!3301547 m!3626047))

(assert (=> b!3301547 m!3626035))

(declare-fun m!3626049 () Bool)

(assert (=> b!3301547 m!3626049))

(declare-fun m!3626051 () Bool)

(assert (=> b!3301547 m!3626051))

(assert (=> b!3301547 m!3626043))

(declare-fun m!3626053 () Bool)

(assert (=> b!3301547 m!3626053))

(assert (=> b!3301547 m!3624131))

(assert (=> b!3301547 m!3624131))

(assert (=> b!3301547 m!3626033))

(declare-fun m!3626055 () Bool)

(assert (=> b!3301547 m!3626055))

(assert (=> b!3301547 m!3626041))

(declare-fun m!3626057 () Bool)

(assert (=> b!3301547 m!3626057))

(declare-fun m!3626059 () Bool)

(assert (=> b!3301547 m!3626059))

(declare-fun m!3626061 () Bool)

(assert (=> b!3301543 m!3626061))

(declare-fun m!3626063 () Bool)

(assert (=> b!3301543 m!3626063))

(declare-fun m!3626065 () Bool)

(assert (=> b!3301548 m!3626065))

(declare-fun m!3626067 () Bool)

(assert (=> b!3301548 m!3626067))

(declare-fun m!3626069 () Bool)

(assert (=> b!3301545 m!3626069))

(assert (=> b!3301545 m!3625999))

(declare-fun m!3626071 () Bool)

(assert (=> b!3301545 m!3626071))

(assert (=> d!923677 d!924053))

(declare-fun b!3301549 () Bool)

(declare-fun res!1339153 () Bool)

(declare-fun e!2053217 () Bool)

(assert (=> b!3301549 (=> (not res!1339153) (not e!2053217))))

(declare-fun lt!1119062 () Option!7269)

(assert (=> b!3301549 (= res!1339153 (= (value!171141 (_1!21112 (get!11636 lt!1119062))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1119062)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1119062)))))))))

(declare-fun b!3301550 () Bool)

(declare-fun e!2053218 () Bool)

(assert (=> b!3301550 (= e!2053218 e!2053217)))

(declare-fun res!1339155 () Bool)

(assert (=> b!3301550 (=> (not res!1339155) (not e!2053217))))

(assert (=> b!3301550 (= res!1339155 (matchR!4668 (regex!5287 (h!41881 rules!2135)) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119062))))))))

(declare-fun b!3301551 () Bool)

(declare-fun res!1339158 () Bool)

(assert (=> b!3301551 (=> (not res!1339158) (not e!2053217))))

(assert (=> b!3301551 (= res!1339158 (< (size!27531 (_2!21112 (get!11636 lt!1119062))) (size!27531 lt!1118274)))))

(declare-fun b!3301552 () Bool)

(declare-fun e!2053219 () Bool)

(assert (=> b!3301552 (= e!2053219 (matchR!4668 (regex!5287 (h!41881 rules!2135)) (_1!21117 (findLongestMatchInner!848 (regex!5287 (h!41881 rules!2135)) Nil!36459 (size!27531 Nil!36459) lt!1118274 lt!1118274 (size!27531 lt!1118274)))))))

(declare-fun b!3301553 () Bool)

(declare-fun e!2053220 () Option!7269)

(assert (=> b!3301553 (= e!2053220 None!7268)))

(declare-fun b!3301554 () Bool)

(declare-fun res!1339154 () Bool)

(assert (=> b!3301554 (=> (not res!1339154) (not e!2053217))))

(assert (=> b!3301554 (= res!1339154 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119062)))) (_2!21112 (get!11636 lt!1119062))) lt!1118274))))

(declare-fun b!3301555 () Bool)

(declare-fun lt!1119063 () tuple2!35966)

(assert (=> b!3301555 (= e!2053220 (Some!7268 (tuple2!35957 (Token!9941 (apply!8365 (transformation!5287 (h!41881 rules!2135)) (seqFromList!3638 (_1!21117 lt!1119063))) (h!41881 rules!2135) (size!27536 (seqFromList!3638 (_1!21117 lt!1119063))) (_1!21117 lt!1119063)) (_2!21117 lt!1119063))))))

(declare-fun lt!1119065 () Unit!51389)

(assert (=> b!3301555 (= lt!1119065 (longestMatchIsAcceptedByMatchOrIsEmpty!821 (regex!5287 (h!41881 rules!2135)) lt!1118274))))

(declare-fun res!1339157 () Bool)

(assert (=> b!3301555 (= res!1339157 (isEmpty!20598 (_1!21117 (findLongestMatchInner!848 (regex!5287 (h!41881 rules!2135)) Nil!36459 (size!27531 Nil!36459) lt!1118274 lt!1118274 (size!27531 lt!1118274)))))))

(assert (=> b!3301555 (=> res!1339157 e!2053219)))

(assert (=> b!3301555 e!2053219))

(declare-fun lt!1119064 () Unit!51389)

(assert (=> b!3301555 (= lt!1119064 lt!1119065)))

(declare-fun lt!1119066 () Unit!51389)

(assert (=> b!3301555 (= lt!1119066 (lemmaSemiInverse!1194 (transformation!5287 (h!41881 rules!2135)) (seqFromList!3638 (_1!21117 lt!1119063))))))

(declare-fun d!924055 () Bool)

(assert (=> d!924055 e!2053218))

(declare-fun res!1339156 () Bool)

(assert (=> d!924055 (=> res!1339156 e!2053218)))

(assert (=> d!924055 (= res!1339156 (isEmpty!20606 lt!1119062))))

(assert (=> d!924055 (= lt!1119062 e!2053220)))

(declare-fun c!560042 () Bool)

(assert (=> d!924055 (= c!560042 (isEmpty!20598 (_1!21117 lt!1119063)))))

(assert (=> d!924055 (= lt!1119063 (findLongestMatch!763 (regex!5287 (h!41881 rules!2135)) lt!1118274))))

(assert (=> d!924055 (ruleValid!1669 thiss!18206 (h!41881 rules!2135))))

(assert (=> d!924055 (= (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) lt!1118274) lt!1119062)))

(declare-fun b!3301556 () Bool)

(assert (=> b!3301556 (= e!2053217 (= (size!27530 (_1!21112 (get!11636 lt!1119062))) (size!27531 (originalCharacters!6001 (_1!21112 (get!11636 lt!1119062))))))))

(declare-fun b!3301557 () Bool)

(declare-fun res!1339159 () Bool)

(assert (=> b!3301557 (=> (not res!1339159) (not e!2053217))))

(assert (=> b!3301557 (= res!1339159 (= (rule!7785 (_1!21112 (get!11636 lt!1119062))) (h!41881 rules!2135)))))

(assert (= (and d!924055 c!560042) b!3301553))

(assert (= (and d!924055 (not c!560042)) b!3301555))

(assert (= (and b!3301555 (not res!1339157)) b!3301552))

(assert (= (and d!924055 (not res!1339156)) b!3301550))

(assert (= (and b!3301550 res!1339155) b!3301554))

(assert (= (and b!3301554 res!1339154) b!3301551))

(assert (= (and b!3301551 res!1339158) b!3301557))

(assert (= (and b!3301557 res!1339159) b!3301549))

(assert (= (and b!3301549 res!1339153) b!3301556))

(declare-fun m!3626073 () Bool)

(assert (=> d!924055 m!3626073))

(declare-fun m!3626075 () Bool)

(assert (=> d!924055 m!3626075))

(declare-fun m!3626077 () Bool)

(assert (=> d!924055 m!3626077))

(declare-fun m!3626079 () Bool)

(assert (=> d!924055 m!3626079))

(declare-fun m!3626081 () Bool)

(assert (=> b!3301550 m!3626081))

(declare-fun m!3626083 () Bool)

(assert (=> b!3301550 m!3626083))

(assert (=> b!3301550 m!3626083))

(declare-fun m!3626085 () Bool)

(assert (=> b!3301550 m!3626085))

(assert (=> b!3301550 m!3626085))

(declare-fun m!3626087 () Bool)

(assert (=> b!3301550 m!3626087))

(assert (=> b!3301556 m!3626081))

(declare-fun m!3626089 () Bool)

(assert (=> b!3301556 m!3626089))

(assert (=> b!3301552 m!3624051))

(assert (=> b!3301552 m!3624343))

(assert (=> b!3301552 m!3624051))

(assert (=> b!3301552 m!3624343))

(declare-fun m!3626091 () Bool)

(assert (=> b!3301552 m!3626091))

(declare-fun m!3626093 () Bool)

(assert (=> b!3301552 m!3626093))

(assert (=> b!3301554 m!3626081))

(assert (=> b!3301554 m!3626083))

(assert (=> b!3301554 m!3626083))

(assert (=> b!3301554 m!3626085))

(assert (=> b!3301554 m!3626085))

(declare-fun m!3626095 () Bool)

(assert (=> b!3301554 m!3626095))

(assert (=> b!3301551 m!3626081))

(declare-fun m!3626097 () Bool)

(assert (=> b!3301551 m!3626097))

(assert (=> b!3301551 m!3624343))

(declare-fun m!3626099 () Bool)

(assert (=> b!3301555 m!3626099))

(declare-fun m!3626101 () Bool)

(assert (=> b!3301555 m!3626101))

(declare-fun m!3626103 () Bool)

(assert (=> b!3301555 m!3626103))

(declare-fun m!3626105 () Bool)

(assert (=> b!3301555 m!3626105))

(assert (=> b!3301555 m!3624051))

(assert (=> b!3301555 m!3624343))

(assert (=> b!3301555 m!3626091))

(assert (=> b!3301555 m!3624343))

(assert (=> b!3301555 m!3626101))

(declare-fun m!3626107 () Bool)

(assert (=> b!3301555 m!3626107))

(assert (=> b!3301555 m!3626101))

(assert (=> b!3301555 m!3626101))

(declare-fun m!3626109 () Bool)

(assert (=> b!3301555 m!3626109))

(assert (=> b!3301555 m!3624051))

(assert (=> b!3301549 m!3626081))

(declare-fun m!3626111 () Bool)

(assert (=> b!3301549 m!3626111))

(assert (=> b!3301549 m!3626111))

(declare-fun m!3626113 () Bool)

(assert (=> b!3301549 m!3626113))

(assert (=> b!3301557 m!3626081))

(assert (=> bm!239934 d!924055))

(declare-fun d!924057 () Bool)

(assert (=> d!924057 (= (isEmpty!20606 lt!1118540) (not (is-Some!7268 lt!1118540)))))

(assert (=> d!923523 d!924057))

(declare-fun b!3301569 () Bool)

(declare-fun e!2053227 () Bool)

(assert (=> b!3301569 (= e!2053227 (>= (size!27531 lt!1118249) (size!27531 lt!1118249)))))

(declare-fun b!3301567 () Bool)

(declare-fun res!1339171 () Bool)

(declare-fun e!2053229 () Bool)

(assert (=> b!3301567 (=> (not res!1339171) (not e!2053229))))

(assert (=> b!3301567 (= res!1339171 (= (head!7120 lt!1118249) (head!7120 lt!1118249)))))

(declare-fun d!924059 () Bool)

(assert (=> d!924059 e!2053227))

(declare-fun res!1339170 () Bool)

(assert (=> d!924059 (=> res!1339170 e!2053227)))

(declare-fun lt!1119069 () Bool)

(assert (=> d!924059 (= res!1339170 (not lt!1119069))))

(declare-fun e!2053228 () Bool)

(assert (=> d!924059 (= lt!1119069 e!2053228)))

(declare-fun res!1339169 () Bool)

(assert (=> d!924059 (=> res!1339169 e!2053228)))

(assert (=> d!924059 (= res!1339169 (is-Nil!36459 lt!1118249))))

(assert (=> d!924059 (= (isPrefix!2804 lt!1118249 lt!1118249) lt!1119069)))

(declare-fun b!3301566 () Bool)

(assert (=> b!3301566 (= e!2053228 e!2053229)))

(declare-fun res!1339168 () Bool)

(assert (=> b!3301566 (=> (not res!1339168) (not e!2053229))))

(assert (=> b!3301566 (= res!1339168 (not (is-Nil!36459 lt!1118249)))))

(declare-fun b!3301568 () Bool)

(assert (=> b!3301568 (= e!2053229 (isPrefix!2804 (tail!5258 lt!1118249) (tail!5258 lt!1118249)))))

(assert (= (and d!924059 (not res!1339169)) b!3301566))

(assert (= (and b!3301566 res!1339168) b!3301567))

(assert (= (and b!3301567 res!1339171) b!3301568))

(assert (= (and d!924059 (not res!1339170)) b!3301569))

(assert (=> b!3301569 m!3624375))

(assert (=> b!3301569 m!3624375))

(declare-fun m!3626115 () Bool)

(assert (=> b!3301567 m!3626115))

(assert (=> b!3301567 m!3626115))

(declare-fun m!3626117 () Bool)

(assert (=> b!3301568 m!3626117))

(assert (=> b!3301568 m!3626117))

(assert (=> b!3301568 m!3626117))

(assert (=> b!3301568 m!3626117))

(declare-fun m!3626119 () Bool)

(assert (=> b!3301568 m!3626119))

(assert (=> d!923523 d!924059))

(declare-fun d!924061 () Bool)

(assert (=> d!924061 (isPrefix!2804 lt!1118249 lt!1118249)))

(declare-fun lt!1119072 () Unit!51389)

(declare-fun choose!19121 (List!36583 List!36583) Unit!51389)

(assert (=> d!924061 (= lt!1119072 (choose!19121 lt!1118249 lt!1118249))))

(assert (=> d!924061 (= (lemmaIsPrefixRefl!1763 lt!1118249 lt!1118249) lt!1119072)))

(declare-fun bs!548654 () Bool)

(assert (= bs!548654 d!924061))

(assert (=> bs!548654 m!3624365))

(declare-fun m!3626121 () Bool)

(assert (=> bs!548654 m!3626121))

(assert (=> d!923523 d!924061))

(declare-fun d!924063 () Bool)

(assert (=> d!924063 true))

(declare-fun lt!1119075 () Bool)

(declare-fun lambda!118882 () Int)

(declare-fun forall!7546 (List!36585 Int) Bool)

(assert (=> d!924063 (= lt!1119075 (forall!7546 rules!2135 lambda!118882))))

(declare-fun e!2053235 () Bool)

(assert (=> d!924063 (= lt!1119075 e!2053235)))

(declare-fun res!1339176 () Bool)

(assert (=> d!924063 (=> res!1339176 e!2053235)))

(assert (=> d!924063 (= res!1339176 (not (is-Cons!36461 rules!2135)))))

(assert (=> d!924063 (= (rulesValidInductive!1803 thiss!18206 rules!2135) lt!1119075)))

(declare-fun b!3301574 () Bool)

(declare-fun e!2053234 () Bool)

(assert (=> b!3301574 (= e!2053235 e!2053234)))

(declare-fun res!1339177 () Bool)

(assert (=> b!3301574 (=> (not res!1339177) (not e!2053234))))

(assert (=> b!3301574 (= res!1339177 (ruleValid!1669 thiss!18206 (h!41881 rules!2135)))))

(declare-fun b!3301575 () Bool)

(assert (=> b!3301575 (= e!2053234 (rulesValidInductive!1803 thiss!18206 (t!252750 rules!2135)))))

(assert (= (and d!924063 (not res!1339176)) b!3301574))

(assert (= (and b!3301574 res!1339177) b!3301575))

(declare-fun m!3626123 () Bool)

(assert (=> d!924063 m!3626123))

(assert (=> b!3301574 m!3626079))

(assert (=> b!3301575 m!3625547))

(assert (=> d!923523 d!924063))

(assert (=> d!923609 d!923611))

(declare-fun d!924065 () Bool)

(assert (=> d!924065 (not (matchR!4668 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262))))

(assert (=> d!924065 true))

(declare-fun _$127!305 () Unit!51389)

(assert (=> d!924065 (= (choose!19114 (regex!5287 (rule!7785 separatorToken!241)) lt!1118262 lt!1118269) _$127!305)))

(declare-fun bs!548655 () Bool)

(assert (= bs!548655 d!924065))

(assert (=> bs!548655 m!3623669))

(assert (=> d!923609 d!924065))

(assert (=> d!923609 d!923903))

(declare-fun d!924067 () Bool)

(assert (=> d!924067 (= (list!13054 (_2!21113 lt!1118653)) (list!13059 (c!559681 (_2!21113 lt!1118653))))))

(declare-fun bs!548656 () Bool)

(assert (= bs!548656 d!924067))

(declare-fun m!3626125 () Bool)

(assert (=> bs!548656 m!3626125))

(assert (=> b!3300883 d!924067))

(assert (=> b!3300883 d!923977))

(assert (=> b!3300883 d!923979))

(declare-fun d!924069 () Bool)

(assert (=> d!924069 (= (inv!49407 (tag!5831 (h!41881 (t!252750 rules!2135)))) (= (mod (str.len (value!171140 (tag!5831 (h!41881 (t!252750 rules!2135))))) 2) 0))))

(assert (=> b!3300933 d!924069))

(declare-fun d!924071 () Bool)

(declare-fun res!1339178 () Bool)

(declare-fun e!2053236 () Bool)

(assert (=> d!924071 (=> (not res!1339178) (not e!2053236))))

(assert (=> d!924071 (= res!1339178 (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135))))))))

(assert (=> d!924071 (= (inv!49411 (transformation!5287 (h!41881 (t!252750 rules!2135)))) e!2053236)))

(declare-fun b!3301578 () Bool)

(assert (=> b!3301578 (= e!2053236 (equivClasses!2083 (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135))))))))

(assert (= (and d!924071 res!1339178) b!3301578))

(declare-fun m!3626127 () Bool)

(assert (=> d!924071 m!3626127))

(declare-fun m!3626129 () Bool)

(assert (=> b!3301578 m!3626129))

(assert (=> b!3300933 d!924071))

(declare-fun d!924073 () Bool)

(declare-fun isBalanced!3270 (Conc!10949) Bool)

(assert (=> d!924073 (= (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))) (isBalanced!3270 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))))))

(declare-fun bs!548657 () Bool)

(assert (= bs!548657 d!924073))

(declare-fun m!3626131 () Bool)

(assert (=> bs!548657 m!3626131))

(assert (=> tb!170879 d!924073))

(declare-fun bs!548658 () Bool)

(declare-fun d!924075 () Bool)

(assert (= bs!548658 (and d!924075 d!923935)))

(declare-fun lambda!118883 () Int)

(assert (=> bs!548658 (= (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (= lambda!118883 lambda!118879))))

(assert (=> d!924075 true))

(assert (=> d!924075 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241)))) (dynLambda!14927 order!18909 lambda!118883))))

(assert (=> d!924075 (= (equivClasses!2083 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241)))) (Forall2!885 lambda!118883))))

(declare-fun bs!548659 () Bool)

(assert (= bs!548659 d!924075))

(declare-fun m!3626133 () Bool)

(assert (=> bs!548659 m!3626133))

(assert (=> b!3300815 d!924075))

(declare-fun b!3301579 () Bool)

(declare-fun e!2053238 () Bool)

(assert (=> b!3301579 (= e!2053238 (nullable!3415 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263))))))

(declare-fun b!3301580 () Bool)

(declare-fun res!1339185 () Bool)

(declare-fun e!2053242 () Bool)

(assert (=> b!3301580 (=> (not res!1339185) (not e!2053242))))

(declare-fun call!240019 () Bool)

(assert (=> b!3301580 (= res!1339185 (not call!240019))))

(declare-fun b!3301581 () Bool)

(assert (=> b!3301581 (= e!2053238 (matchR!4668 (derivativeStep!2968 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263)) (head!7120 (tail!5258 lt!1118263))) (tail!5258 (tail!5258 lt!1118263))))))

(declare-fun b!3301582 () Bool)

(declare-fun e!2053240 () Bool)

(declare-fun e!2053243 () Bool)

(assert (=> b!3301582 (= e!2053240 e!2053243)))

(declare-fun c!560046 () Bool)

(assert (=> b!3301582 (= c!560046 (is-EmptyLang!10046 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263))))))

(declare-fun d!924077 () Bool)

(assert (=> d!924077 e!2053240))

(declare-fun c!560045 () Bool)

(assert (=> d!924077 (= c!560045 (is-EmptyExpr!10046 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263))))))

(declare-fun lt!1119076 () Bool)

(assert (=> d!924077 (= lt!1119076 e!2053238)))

(declare-fun c!560044 () Bool)

(assert (=> d!924077 (= c!560044 (isEmpty!20598 (tail!5258 lt!1118263)))))

(assert (=> d!924077 (validRegex!4571 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263)))))

(assert (=> d!924077 (= (matchR!4668 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263)) (tail!5258 lt!1118263)) lt!1119076)))

(declare-fun b!3301583 () Bool)

(declare-fun e!2053237 () Bool)

(assert (=> b!3301583 (= e!2053237 (not (= (head!7120 (tail!5258 lt!1118263)) (c!559680 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263))))))))

(declare-fun b!3301584 () Bool)

(declare-fun res!1339181 () Bool)

(declare-fun e!2053241 () Bool)

(assert (=> b!3301584 (=> res!1339181 e!2053241)))

(assert (=> b!3301584 (= res!1339181 (not (is-ElementMatch!10046 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263)))))))

(assert (=> b!3301584 (= e!2053243 e!2053241)))

(declare-fun b!3301585 () Bool)

(declare-fun res!1339179 () Bool)

(assert (=> b!3301585 (=> (not res!1339179) (not e!2053242))))

(assert (=> b!3301585 (= res!1339179 (isEmpty!20598 (tail!5258 (tail!5258 lt!1118263))))))

(declare-fun b!3301586 () Bool)

(declare-fun res!1339180 () Bool)

(assert (=> b!3301586 (=> res!1339180 e!2053241)))

(assert (=> b!3301586 (= res!1339180 e!2053242)))

(declare-fun res!1339182 () Bool)

(assert (=> b!3301586 (=> (not res!1339182) (not e!2053242))))

(assert (=> b!3301586 (= res!1339182 lt!1119076)))

(declare-fun b!3301587 () Bool)

(assert (=> b!3301587 (= e!2053240 (= lt!1119076 call!240019))))

(declare-fun bm!240014 () Bool)

(assert (=> bm!240014 (= call!240019 (isEmpty!20598 (tail!5258 lt!1118263)))))

(declare-fun b!3301588 () Bool)

(assert (=> b!3301588 (= e!2053242 (= (head!7120 (tail!5258 lt!1118263)) (c!559680 (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263)))))))

(declare-fun b!3301589 () Bool)

(declare-fun e!2053239 () Bool)

(assert (=> b!3301589 (= e!2053241 e!2053239)))

(declare-fun res!1339183 () Bool)

(assert (=> b!3301589 (=> (not res!1339183) (not e!2053239))))

(assert (=> b!3301589 (= res!1339183 (not lt!1119076))))

(declare-fun b!3301590 () Bool)

(declare-fun res!1339186 () Bool)

(assert (=> b!3301590 (=> res!1339186 e!2053237)))

(assert (=> b!3301590 (= res!1339186 (not (isEmpty!20598 (tail!5258 (tail!5258 lt!1118263)))))))

(declare-fun b!3301591 () Bool)

(assert (=> b!3301591 (= e!2053243 (not lt!1119076))))

(declare-fun b!3301592 () Bool)

(assert (=> b!3301592 (= e!2053239 e!2053237)))

(declare-fun res!1339184 () Bool)

(assert (=> b!3301592 (=> res!1339184 e!2053237)))

(assert (=> b!3301592 (= res!1339184 call!240019)))

(assert (= (and d!924077 c!560044) b!3301579))

(assert (= (and d!924077 (not c!560044)) b!3301581))

(assert (= (and d!924077 c!560045) b!3301587))

(assert (= (and d!924077 (not c!560045)) b!3301582))

(assert (= (and b!3301582 c!560046) b!3301591))

(assert (= (and b!3301582 (not c!560046)) b!3301584))

(assert (= (and b!3301584 (not res!1339181)) b!3301586))

(assert (= (and b!3301586 res!1339182) b!3301580))

(assert (= (and b!3301580 res!1339185) b!3301585))

(assert (= (and b!3301585 res!1339179) b!3301588))

(assert (= (and b!3301586 (not res!1339180)) b!3301589))

(assert (= (and b!3301589 res!1339183) b!3301592))

(assert (= (and b!3301592 (not res!1339184)) b!3301590))

(assert (= (and b!3301590 (not res!1339186)) b!3301583))

(assert (= (or b!3301587 b!3301580 b!3301592) bm!240014))

(assert (=> b!3301585 m!3623859))

(declare-fun m!3626135 () Bool)

(assert (=> b!3301585 m!3626135))

(assert (=> b!3301585 m!3626135))

(declare-fun m!3626137 () Bool)

(assert (=> b!3301585 m!3626137))

(assert (=> b!3301579 m!3623869))

(declare-fun m!3626139 () Bool)

(assert (=> b!3301579 m!3626139))

(assert (=> bm!240014 m!3623859))

(assert (=> bm!240014 m!3623861))

(assert (=> b!3301581 m!3623859))

(declare-fun m!3626141 () Bool)

(assert (=> b!3301581 m!3626141))

(assert (=> b!3301581 m!3623869))

(assert (=> b!3301581 m!3626141))

(declare-fun m!3626143 () Bool)

(assert (=> b!3301581 m!3626143))

(assert (=> b!3301581 m!3623859))

(assert (=> b!3301581 m!3626135))

(assert (=> b!3301581 m!3626143))

(assert (=> b!3301581 m!3626135))

(declare-fun m!3626145 () Bool)

(assert (=> b!3301581 m!3626145))

(assert (=> b!3301583 m!3623859))

(assert (=> b!3301583 m!3626141))

(assert (=> b!3301588 m!3623859))

(assert (=> b!3301588 m!3626141))

(assert (=> b!3301590 m!3623859))

(assert (=> b!3301590 m!3626135))

(assert (=> b!3301590 m!3626135))

(assert (=> b!3301590 m!3626137))

(assert (=> d!924077 m!3623859))

(assert (=> d!924077 m!3623861))

(assert (=> d!924077 m!3623869))

(declare-fun m!3626147 () Bool)

(assert (=> d!924077 m!3626147))

(assert (=> b!3300135 d!924077))

(declare-fun b!3301613 () Bool)

(declare-fun e!2053258 () Regex!10046)

(declare-fun e!2053256 () Regex!10046)

(assert (=> b!3301613 (= e!2053258 e!2053256)))

(declare-fun c!560057 () Bool)

(assert (=> b!3301613 (= c!560057 (is-ElementMatch!10046 (regex!5287 lt!1118273)))))

(declare-fun call!240029 () Regex!10046)

(declare-fun bm!240024 () Bool)

(declare-fun c!560061 () Bool)

(assert (=> bm!240024 (= call!240029 (derivativeStep!2968 (ite c!560061 (regTwo!20605 (regex!5287 lt!1118273)) (regTwo!20604 (regex!5287 lt!1118273))) (head!7120 lt!1118263)))))

(declare-fun b!3301614 () Bool)

(assert (=> b!3301614 (= e!2053258 EmptyLang!10046)))

(declare-fun b!3301615 () Bool)

(declare-fun e!2053254 () Regex!10046)

(declare-fun call!240031 () Regex!10046)

(assert (=> b!3301615 (= e!2053254 (Union!10046 call!240031 call!240029))))

(declare-fun e!2053257 () Regex!10046)

(declare-fun call!240030 () Regex!10046)

(declare-fun b!3301616 () Bool)

(assert (=> b!3301616 (= e!2053257 (Union!10046 (Concat!15563 call!240030 (regTwo!20604 (regex!5287 lt!1118273))) call!240029))))

(declare-fun b!3301617 () Bool)

(declare-fun c!560060 () Bool)

(assert (=> b!3301617 (= c!560060 (nullable!3415 (regOne!20604 (regex!5287 lt!1118273))))))

(declare-fun e!2053255 () Regex!10046)

(assert (=> b!3301617 (= e!2053255 e!2053257)))

(declare-fun b!3301618 () Bool)

(assert (=> b!3301618 (= c!560061 (is-Union!10046 (regex!5287 lt!1118273)))))

(assert (=> b!3301618 (= e!2053256 e!2053254)))

(declare-fun b!3301619 () Bool)

(assert (=> b!3301619 (= e!2053256 (ite (= (head!7120 lt!1118263) (c!559680 (regex!5287 lt!1118273))) EmptyExpr!10046 EmptyLang!10046))))

(declare-fun bm!240025 () Bool)

(declare-fun call!240028 () Regex!10046)

(assert (=> bm!240025 (= call!240030 call!240028)))

(declare-fun b!3301620 () Bool)

(assert (=> b!3301620 (= e!2053257 (Union!10046 (Concat!15563 call!240030 (regTwo!20604 (regex!5287 lt!1118273))) EmptyLang!10046))))

(declare-fun bm!240026 () Bool)

(assert (=> bm!240026 (= call!240028 call!240031)))

(declare-fun bm!240023 () Bool)

(declare-fun c!560059 () Bool)

(assert (=> bm!240023 (= call!240031 (derivativeStep!2968 (ite c!560061 (regOne!20605 (regex!5287 lt!1118273)) (ite c!560059 (reg!10375 (regex!5287 lt!1118273)) (regOne!20604 (regex!5287 lt!1118273)))) (head!7120 lt!1118263)))))

(declare-fun d!924079 () Bool)

(declare-fun lt!1119079 () Regex!10046)

(assert (=> d!924079 (validRegex!4571 lt!1119079)))

(assert (=> d!924079 (= lt!1119079 e!2053258)))

(declare-fun c!560058 () Bool)

(assert (=> d!924079 (= c!560058 (or (is-EmptyExpr!10046 (regex!5287 lt!1118273)) (is-EmptyLang!10046 (regex!5287 lt!1118273))))))

(assert (=> d!924079 (validRegex!4571 (regex!5287 lt!1118273))))

(assert (=> d!924079 (= (derivativeStep!2968 (regex!5287 lt!1118273) (head!7120 lt!1118263)) lt!1119079)))

(declare-fun b!3301621 () Bool)

(assert (=> b!3301621 (= e!2053254 e!2053255)))

(assert (=> b!3301621 (= c!560059 (is-Star!10046 (regex!5287 lt!1118273)))))

(declare-fun b!3301622 () Bool)

(assert (=> b!3301622 (= e!2053255 (Concat!15563 call!240028 (regex!5287 lt!1118273)))))

(assert (= (and d!924079 c!560058) b!3301614))

(assert (= (and d!924079 (not c!560058)) b!3301613))

(assert (= (and b!3301613 c!560057) b!3301619))

(assert (= (and b!3301613 (not c!560057)) b!3301618))

(assert (= (and b!3301618 c!560061) b!3301615))

(assert (= (and b!3301618 (not c!560061)) b!3301621))

(assert (= (and b!3301621 c!560059) b!3301622))

(assert (= (and b!3301621 (not c!560059)) b!3301617))

(assert (= (and b!3301617 c!560060) b!3301616))

(assert (= (and b!3301617 (not c!560060)) b!3301620))

(assert (= (or b!3301616 b!3301620) bm!240025))

(assert (= (or b!3301622 bm!240025) bm!240026))

(assert (= (or b!3301615 bm!240026) bm!240023))

(assert (= (or b!3301615 b!3301616) bm!240024))

(assert (=> bm!240024 m!3623867))

(declare-fun m!3626149 () Bool)

(assert (=> bm!240024 m!3626149))

(declare-fun m!3626151 () Bool)

(assert (=> b!3301617 m!3626151))

(assert (=> bm!240023 m!3623867))

(declare-fun m!3626153 () Bool)

(assert (=> bm!240023 m!3626153))

(declare-fun m!3626155 () Bool)

(assert (=> d!924079 m!3626155))

(assert (=> d!924079 m!3623873))

(assert (=> b!3300135 d!924079))

(assert (=> b!3300135 d!923931))

(assert (=> b!3300135 d!923755))

(declare-fun d!924081 () Bool)

(assert (=> d!924081 (= (isEmpty!20604 lt!1118397) (not (is-Some!7269 lt!1118397)))))

(assert (=> d!923421 d!924081))

(assert (=> d!923421 d!923607))

(assert (=> d!923415 d!923413))

(declare-fun d!924083 () Bool)

(assert (=> d!924083 (= (maxPrefixOneRule!1641 thiss!18206 (rule!7785 (h!41880 tokens!494)) lt!1118263) (Some!7268 (tuple2!35957 (Token!9941 (apply!8365 (transformation!5287 (rule!7785 (h!41880 tokens!494))) (seqFromList!3638 lt!1118263)) (rule!7785 (h!41880 tokens!494)) (size!27531 lt!1118263) lt!1118263) Nil!36459)))))

(assert (=> d!924083 true))

(declare-fun _$59!430 () Unit!51389)

(assert (=> d!924083 (= (choose!19105 thiss!18206 rules!2135 lt!1118263 lt!1118263 Nil!36459 (rule!7785 (h!41880 tokens!494))) _$59!430)))

(declare-fun bs!548660 () Bool)

(assert (= bs!548660 d!924083))

(assert (=> bs!548660 m!3623539))

(assert (=> bs!548660 m!3623643))

(assert (=> bs!548660 m!3623643))

(assert (=> bs!548660 m!3623897))

(assert (=> bs!548660 m!3623543))

(assert (=> d!923415 d!924083))

(declare-fun d!924085 () Bool)

(assert (=> d!924085 (= (apply!8365 (transformation!5287 (rule!7785 (h!41880 tokens!494))) (seqFromList!3638 lt!1118263)) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (seqFromList!3638 lt!1118263)))))

(declare-fun b_lambda!92071 () Bool)

(assert (=> (not b_lambda!92071) (not d!924085)))

(declare-fun t!252887 () Bool)

(declare-fun tb!170965 () Bool)

(assert (=> (and b!3299943 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252887) tb!170965))

(declare-fun result!213718 () Bool)

(assert (=> tb!170965 (= result!213718 (inv!21 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (seqFromList!3638 lt!1118263))))))

(declare-fun m!3626157 () Bool)

(assert (=> tb!170965 m!3626157))

(assert (=> d!924085 t!252887))

(declare-fun b_and!225961 () Bool)

(assert (= b_and!225935 (and (=> t!252887 result!213718) b_and!225961)))

(declare-fun tb!170967 () Bool)

(declare-fun t!252889 () Bool)

(assert (=> (and b!3299937 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252889) tb!170967))

(declare-fun result!213720 () Bool)

(assert (= result!213720 result!213718))

(assert (=> d!924085 t!252889))

(declare-fun b_and!225963 () Bool)

(assert (= b_and!225937 (and (=> t!252889 result!213720) b_and!225963)))

(declare-fun tb!170969 () Bool)

(declare-fun t!252891 () Bool)

(assert (=> (and b!3299965 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252891) tb!170969))

(declare-fun result!213722 () Bool)

(assert (= result!213722 result!213718))

(assert (=> d!924085 t!252891))

(declare-fun b_and!225965 () Bool)

(assert (= b_and!225931 (and (=> t!252891 result!213722) b_and!225965)))

(declare-fun t!252893 () Bool)

(declare-fun tb!170971 () Bool)

(assert (=> (and b!3300954 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252893) tb!170971))

(declare-fun result!213724 () Bool)

(assert (= result!213724 result!213718))

(assert (=> d!924085 t!252893))

(declare-fun b_and!225967 () Bool)

(assert (= b_and!225933 (and (=> t!252893 result!213724) b_and!225967)))

(declare-fun tb!170973 () Bool)

(declare-fun t!252895 () Bool)

(assert (=> (and b!3300934 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252895) tb!170973))

(declare-fun result!213726 () Bool)

(assert (= result!213726 result!213718))

(assert (=> d!924085 t!252895))

(declare-fun b_and!225969 () Bool)

(assert (= b_and!225939 (and (=> t!252895 result!213726) b_and!225969)))

(assert (=> d!924085 m!3623643))

(declare-fun m!3626159 () Bool)

(assert (=> d!924085 m!3626159))

(assert (=> d!923415 d!924085))

(assert (=> d!923415 d!923629))

(assert (=> d!923415 d!923535))

(assert (=> d!923415 d!923453))

(declare-fun d!924087 () Bool)

(declare-fun lt!1119080 () Token!9940)

(assert (=> d!924087 (= lt!1119080 (apply!8368 (list!13055 (_1!21113 lt!1118618)) 0))))

(assert (=> d!924087 (= lt!1119080 (apply!8371 (c!559682 (_1!21113 lt!1118618)) 0))))

(declare-fun e!2053260 () Bool)

(assert (=> d!924087 e!2053260))

(declare-fun res!1339187 () Bool)

(assert (=> d!924087 (=> (not res!1339187) (not e!2053260))))

(assert (=> d!924087 (= res!1339187 (<= 0 0))))

(assert (=> d!924087 (= (apply!8367 (_1!21113 lt!1118618) 0) lt!1119080)))

(declare-fun b!3301623 () Bool)

(assert (=> b!3301623 (= e!2053260 (< 0 (size!27538 (_1!21113 lt!1118618))))))

(assert (= (and d!924087 res!1339187) b!3301623))

(declare-fun m!3626161 () Bool)

(assert (=> d!924087 m!3626161))

(assert (=> d!924087 m!3626161))

(declare-fun m!3626163 () Bool)

(assert (=> d!924087 m!3626163))

(declare-fun m!3626165 () Bool)

(assert (=> d!924087 m!3626165))

(assert (=> b!3301623 m!3624709))

(assert (=> b!3300812 d!924087))

(declare-fun d!924089 () Bool)

(declare-fun res!1339188 () Bool)

(declare-fun e!2053261 () Bool)

(assert (=> d!924089 (=> res!1339188 e!2053261)))

(assert (=> d!924089 (= res!1339188 (is-Nil!36460 lt!1118654))))

(assert (=> d!924089 (= (forall!7541 lt!1118654 lambda!118850) e!2053261)))

(declare-fun b!3301624 () Bool)

(declare-fun e!2053262 () Bool)

(assert (=> b!3301624 (= e!2053261 e!2053262)))

(declare-fun res!1339189 () Bool)

(assert (=> b!3301624 (=> (not res!1339189) (not e!2053262))))

(assert (=> b!3301624 (= res!1339189 (dynLambda!14914 lambda!118850 (h!41880 lt!1118654)))))

(declare-fun b!3301625 () Bool)

(assert (=> b!3301625 (= e!2053262 (forall!7541 (t!252749 lt!1118654) lambda!118850))))

(assert (= (and d!924089 (not res!1339188)) b!3301624))

(assert (= (and b!3301624 res!1339189) b!3301625))

(declare-fun b_lambda!92073 () Bool)

(assert (=> (not b_lambda!92073) (not b!3301624)))

(declare-fun m!3626167 () Bool)

(assert (=> b!3301624 m!3626167))

(declare-fun m!3626169 () Bool)

(assert (=> b!3301625 m!3626169))

(assert (=> b!3300886 d!924089))

(assert (=> b!3300142 d!923931))

(declare-fun b!3301626 () Bool)

(declare-fun e!2053265 () tuple2!35954)

(assert (=> b!3301626 (= e!2053265 (tuple2!35955 Nil!36460 (_2!21112 (v!36014 lt!1118609))))))

(declare-fun b!3301628 () Bool)

(declare-fun lt!1119081 () Option!7269)

(declare-fun lt!1119083 () tuple2!35954)

(assert (=> b!3301628 (= e!2053265 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1119081)) (_1!21111 lt!1119083)) (_2!21111 lt!1119083)))))

(assert (=> b!3301628 (= lt!1119083 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1119081))))))

(declare-fun b!3301629 () Bool)

(declare-fun e!2053263 () Bool)

(declare-fun lt!1119082 () tuple2!35954)

(assert (=> b!3301629 (= e!2053263 (= (_2!21111 lt!1119082) (_2!21112 (v!36014 lt!1118609))))))

(declare-fun b!3301630 () Bool)

(declare-fun e!2053264 () Bool)

(assert (=> b!3301630 (= e!2053263 e!2053264)))

(declare-fun res!1339190 () Bool)

(assert (=> b!3301630 (= res!1339190 (< (size!27531 (_2!21111 lt!1119082)) (size!27531 (_2!21112 (v!36014 lt!1118609)))))))

(assert (=> b!3301630 (=> (not res!1339190) (not e!2053264))))

(declare-fun b!3301627 () Bool)

(assert (=> b!3301627 (= e!2053264 (not (isEmpty!20599 (_1!21111 lt!1119082))))))

(declare-fun d!924091 () Bool)

(assert (=> d!924091 e!2053263))

(declare-fun c!560062 () Bool)

(assert (=> d!924091 (= c!560062 (> (size!27539 (_1!21111 lt!1119082)) 0))))

(assert (=> d!924091 (= lt!1119082 e!2053265)))

(declare-fun c!560063 () Bool)

(assert (=> d!924091 (= c!560063 (is-Some!7268 lt!1119081))))

(assert (=> d!924091 (= lt!1119081 (maxPrefix!2504 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118609))))))

(assert (=> d!924091 (= (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118609))) lt!1119082)))

(assert (= (and d!924091 c!560063) b!3301628))

(assert (= (and d!924091 (not c!560063)) b!3301626))

(assert (= (and d!924091 c!560062) b!3301630))

(assert (= (and d!924091 (not c!560062)) b!3301629))

(assert (= (and b!3301630 res!1339190) b!3301627))

(declare-fun m!3626171 () Bool)

(assert (=> b!3301628 m!3626171))

(declare-fun m!3626173 () Bool)

(assert (=> b!3301630 m!3626173))

(declare-fun m!3626175 () Bool)

(assert (=> b!3301630 m!3626175))

(declare-fun m!3626177 () Bool)

(assert (=> b!3301627 m!3626177))

(declare-fun m!3626179 () Bool)

(assert (=> d!924091 m!3626179))

(declare-fun m!3626181 () Bool)

(assert (=> d!924091 m!3626181))

(assert (=> b!3300800 d!924091))

(declare-fun d!924093 () Bool)

(declare-fun e!2053268 () Bool)

(assert (=> d!924093 e!2053268))

(declare-fun res!1339193 () Bool)

(assert (=> d!924093 (=> (not res!1339193) (not e!2053268))))

(declare-fun lt!1119086 () BalanceConc!21514)

(assert (=> d!924093 (= res!1339193 (= (list!13055 lt!1119086) tokens!494))))

(declare-fun fromList!652 (List!36584) Conc!10950)

(assert (=> d!924093 (= lt!1119086 (BalanceConc!21515 (fromList!652 tokens!494)))))

(assert (=> d!924093 (= (fromListB!1595 tokens!494) lt!1119086)))

(declare-fun b!3301633 () Bool)

(assert (=> b!3301633 (= e!2053268 (isBalanced!3268 (fromList!652 tokens!494)))))

(assert (= (and d!924093 res!1339193) b!3301633))

(declare-fun m!3626183 () Bool)

(assert (=> d!924093 m!3626183))

(declare-fun m!3626185 () Bool)

(assert (=> d!924093 m!3626185))

(assert (=> b!3301633 m!3626185))

(assert (=> b!3301633 m!3626185))

(declare-fun m!3626187 () Bool)

(assert (=> b!3301633 m!3626187))

(assert (=> d!923517 d!924093))

(declare-fun d!924095 () Bool)

(assert (=> d!924095 (= (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494)))))) (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (print!1941 thiss!18206 (singletonSeq!2383 (h!41880 tokens!494))))))))))

(declare-fun bs!548661 () Bool)

(assert (= bs!548661 d!924095))

(declare-fun m!3626189 () Bool)

(assert (=> bs!548661 m!3626189))

(assert (=> d!923617 d!924095))

(assert (=> d!923617 d!923915))

(assert (=> d!923617 d!923917))

(declare-fun d!924097 () Bool)

(declare-fun lt!1119087 () Int)

(assert (=> d!924097 (= lt!1119087 (size!27539 (list!13055 (_1!21113 lt!1118618))))))

(assert (=> d!924097 (= lt!1119087 (size!27541 (c!559682 (_1!21113 lt!1118618))))))

(assert (=> d!924097 (= (size!27538 (_1!21113 lt!1118618)) lt!1119087)))

(declare-fun bs!548662 () Bool)

(assert (= bs!548662 d!924097))

(assert (=> bs!548662 m!3626161))

(assert (=> bs!548662 m!3626161))

(declare-fun m!3626191 () Bool)

(assert (=> bs!548662 m!3626191))

(declare-fun m!3626193 () Bool)

(assert (=> bs!548662 m!3626193))

(assert (=> d!923617 d!924097))

(declare-fun d!924099 () Bool)

(assert (=> d!924099 (= (list!13055 (singletonSeq!2383 (h!41880 tokens!494))) (list!13061 (c!559682 (singletonSeq!2383 (h!41880 tokens!494)))))))

(declare-fun bs!548663 () Bool)

(assert (= bs!548663 d!924099))

(declare-fun m!3626195 () Bool)

(assert (=> bs!548663 m!3626195))

(assert (=> d!923617 d!924099))

(assert (=> d!923617 d!923475))

(assert (=> d!923617 d!923535))

(assert (=> d!923483 d!923735))

(declare-fun call!240033 () Bool)

(declare-fun c!560065 () Bool)

(declare-fun bm!240027 () Bool)

(declare-fun c!560066 () Bool)

(assert (=> bm!240027 (= call!240033 (validRegex!4571 (ite c!560066 (reg!10375 (regex!5287 lt!1118261)) (ite c!560065 (regTwo!20605 (regex!5287 lt!1118261)) (regTwo!20604 (regex!5287 lt!1118261))))))))

(declare-fun b!3301634 () Bool)

(declare-fun res!1339194 () Bool)

(declare-fun e!2053269 () Bool)

(assert (=> b!3301634 (=> (not res!1339194) (not e!2053269))))

(declare-fun call!240034 () Bool)

(assert (=> b!3301634 (= res!1339194 call!240034)))

(declare-fun e!2053270 () Bool)

(assert (=> b!3301634 (= e!2053270 e!2053269)))

(declare-fun b!3301635 () Bool)

(declare-fun call!240032 () Bool)

(assert (=> b!3301635 (= e!2053269 call!240032)))

(declare-fun b!3301636 () Bool)

(declare-fun e!2053275 () Bool)

(assert (=> b!3301636 (= e!2053275 call!240032)))

(declare-fun b!3301637 () Bool)

(declare-fun res!1339195 () Bool)

(declare-fun e!2053273 () Bool)

(assert (=> b!3301637 (=> res!1339195 e!2053273)))

(assert (=> b!3301637 (= res!1339195 (not (is-Concat!15563 (regex!5287 lt!1118261))))))

(assert (=> b!3301637 (= e!2053270 e!2053273)))

(declare-fun bm!240028 () Bool)

(assert (=> bm!240028 (= call!240034 (validRegex!4571 (ite c!560065 (regOne!20605 (regex!5287 lt!1118261)) (regOne!20604 (regex!5287 lt!1118261)))))))

(declare-fun d!924101 () Bool)

(declare-fun res!1339197 () Bool)

(declare-fun e!2053271 () Bool)

(assert (=> d!924101 (=> res!1339197 e!2053271)))

(assert (=> d!924101 (= res!1339197 (is-ElementMatch!10046 (regex!5287 lt!1118261)))))

(assert (=> d!924101 (= (validRegex!4571 (regex!5287 lt!1118261)) e!2053271)))

(declare-fun bm!240029 () Bool)

(assert (=> bm!240029 (= call!240032 call!240033)))

(declare-fun b!3301638 () Bool)

(assert (=> b!3301638 (= e!2053273 e!2053275)))

(declare-fun res!1339198 () Bool)

(assert (=> b!3301638 (=> (not res!1339198) (not e!2053275))))

(assert (=> b!3301638 (= res!1339198 call!240034)))

(declare-fun b!3301639 () Bool)

(declare-fun e!2053272 () Bool)

(assert (=> b!3301639 (= e!2053272 call!240033)))

(declare-fun b!3301640 () Bool)

(declare-fun e!2053274 () Bool)

(assert (=> b!3301640 (= e!2053271 e!2053274)))

(assert (=> b!3301640 (= c!560066 (is-Star!10046 (regex!5287 lt!1118261)))))

(declare-fun b!3301641 () Bool)

(assert (=> b!3301641 (= e!2053274 e!2053270)))

(assert (=> b!3301641 (= c!560065 (is-Union!10046 (regex!5287 lt!1118261)))))

(declare-fun b!3301642 () Bool)

(assert (=> b!3301642 (= e!2053274 e!2053272)))

(declare-fun res!1339196 () Bool)

(assert (=> b!3301642 (= res!1339196 (not (nullable!3415 (reg!10375 (regex!5287 lt!1118261)))))))

(assert (=> b!3301642 (=> (not res!1339196) (not e!2053272))))

(assert (= (and d!924101 (not res!1339197)) b!3301640))

(assert (= (and b!3301640 c!560066) b!3301642))

(assert (= (and b!3301640 (not c!560066)) b!3301641))

(assert (= (and b!3301642 res!1339196) b!3301639))

(assert (= (and b!3301641 c!560065) b!3301634))

(assert (= (and b!3301641 (not c!560065)) b!3301637))

(assert (= (and b!3301634 res!1339194) b!3301635))

(assert (= (and b!3301637 (not res!1339195)) b!3301638))

(assert (= (and b!3301638 res!1339198) b!3301636))

(assert (= (or b!3301635 b!3301636) bm!240029))

(assert (= (or b!3301634 b!3301638) bm!240028))

(assert (= (or b!3301639 bm!240029) bm!240027))

(declare-fun m!3626197 () Bool)

(assert (=> bm!240027 m!3626197))

(declare-fun m!3626199 () Bool)

(assert (=> bm!240028 m!3626199))

(declare-fun m!3626201 () Bool)

(assert (=> b!3301642 m!3626201))

(assert (=> d!923483 d!924101))

(declare-fun d!924103 () Bool)

(declare-fun e!2053278 () Bool)

(assert (=> d!924103 e!2053278))

(declare-fun res!1339201 () Bool)

(assert (=> d!924103 (=> (not res!1339201) (not e!2053278))))

(declare-fun lt!1119090 () BalanceConc!21512)

(assert (=> d!924103 (= res!1339201 (= (list!13054 lt!1119090) lt!1118263))))

(declare-fun fromList!653 (List!36583) Conc!10949)

(assert (=> d!924103 (= lt!1119090 (BalanceConc!21513 (fromList!653 lt!1118263)))))

(assert (=> d!924103 (= (fromListB!1596 lt!1118263) lt!1119090)))

(declare-fun b!3301645 () Bool)

(assert (=> b!3301645 (= e!2053278 (isBalanced!3270 (fromList!653 lt!1118263)))))

(assert (= (and d!924103 res!1339201) b!3301645))

(declare-fun m!3626203 () Bool)

(assert (=> d!924103 m!3626203))

(declare-fun m!3626205 () Bool)

(assert (=> d!924103 m!3626205))

(assert (=> b!3301645 m!3626205))

(assert (=> b!3301645 m!3626205))

(declare-fun m!3626207 () Bool)

(assert (=> b!3301645 m!3626207))

(assert (=> d!923629 d!924103))

(declare-fun d!924105 () Bool)

(declare-fun lt!1119091 () Int)

(assert (=> d!924105 (>= lt!1119091 0)))

(declare-fun e!2053279 () Int)

(assert (=> d!924105 (= lt!1119091 e!2053279)))

(declare-fun c!560068 () Bool)

(assert (=> d!924105 (= c!560068 (is-Nil!36459 (originalCharacters!6001 (h!41880 tokens!494))))))

(assert (=> d!924105 (= (size!27531 (originalCharacters!6001 (h!41880 tokens!494))) lt!1119091)))

(declare-fun b!3301646 () Bool)

(assert (=> b!3301646 (= e!2053279 0)))

(declare-fun b!3301647 () Bool)

(assert (=> b!3301647 (= e!2053279 (+ 1 (size!27531 (t!252748 (originalCharacters!6001 (h!41880 tokens!494))))))))

(assert (= (and d!924105 c!560068) b!3301646))

(assert (= (and d!924105 (not c!560068)) b!3301647))

(declare-fun m!3626209 () Bool)

(assert (=> b!3301647 m!3626209))

(assert (=> b!3300792 d!924105))

(assert (=> b!3300341 d!923949))

(declare-fun d!924107 () Bool)

(declare-fun lt!1119092 () Int)

(assert (=> d!924107 (>= lt!1119092 0)))

(declare-fun e!2053280 () Int)

(assert (=> d!924107 (= lt!1119092 e!2053280)))

(declare-fun c!560069 () Bool)

(assert (=> d!924107 (= c!560069 (is-Nil!36459 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454)))))))

(assert (=> d!924107 (= (size!27531 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454)))) lt!1119092)))

(declare-fun b!3301648 () Bool)

(assert (=> b!3301648 (= e!2053280 0)))

(declare-fun b!3301649 () Bool)

(assert (=> b!3301649 (= e!2053280 (+ 1 (size!27531 (t!252748 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454)))))))))

(assert (= (and d!924107 c!560069) b!3301648))

(assert (= (and d!924107 (not c!560069)) b!3301649))

(declare-fun m!3626211 () Bool)

(assert (=> b!3301649 m!3626211))

(assert (=> b!3300341 d!924107))

(declare-fun d!924109 () Bool)

(declare-fun lt!1119093 () List!36583)

(assert (=> d!924109 (= (++!8815 (t!252748 lt!1118263) lt!1119093) (tail!5258 lt!1118263))))

(declare-fun e!2053281 () List!36583)

(assert (=> d!924109 (= lt!1119093 e!2053281)))

(declare-fun c!560070 () Bool)

(assert (=> d!924109 (= c!560070 (is-Cons!36459 (t!252748 lt!1118263)))))

(assert (=> d!924109 (>= (size!27531 (tail!5258 lt!1118263)) (size!27531 (t!252748 lt!1118263)))))

(assert (=> d!924109 (= (getSuffix!1411 (tail!5258 lt!1118263) (t!252748 lt!1118263)) lt!1119093)))

(declare-fun b!3301650 () Bool)

(assert (=> b!3301650 (= e!2053281 (getSuffix!1411 (tail!5258 (tail!5258 lt!1118263)) (t!252748 (t!252748 lt!1118263))))))

(declare-fun b!3301651 () Bool)

(assert (=> b!3301651 (= e!2053281 (tail!5258 lt!1118263))))

(assert (= (and d!924109 c!560070) b!3301650))

(assert (= (and d!924109 (not c!560070)) b!3301651))

(declare-fun m!3626213 () Bool)

(assert (=> d!924109 m!3626213))

(assert (=> d!924109 m!3623859))

(declare-fun m!3626215 () Bool)

(assert (=> d!924109 m!3626215))

(assert (=> d!924109 m!3623895))

(assert (=> b!3301650 m!3623859))

(assert (=> b!3301650 m!3626135))

(assert (=> b!3301650 m!3626135))

(declare-fun m!3626217 () Bool)

(assert (=> b!3301650 m!3626217))

(assert (=> b!3300218 d!924109))

(assert (=> b!3300218 d!923755))

(declare-fun b!3301653 () Bool)

(declare-fun e!2053283 () List!36583)

(assert (=> b!3301653 (= e!2053283 (Cons!36459 (h!41879 (t!252748 lt!1118263)) (++!8815 (t!252748 (t!252748 lt!1118263)) lt!1118262)))))

(declare-fun b!3301652 () Bool)

(assert (=> b!3301652 (= e!2053283 lt!1118262)))

(declare-fun b!3301654 () Bool)

(declare-fun res!1339202 () Bool)

(declare-fun e!2053282 () Bool)

(assert (=> b!3301654 (=> (not res!1339202) (not e!2053282))))

(declare-fun lt!1119094 () List!36583)

(assert (=> b!3301654 (= res!1339202 (= (size!27531 lt!1119094) (+ (size!27531 (t!252748 lt!1118263)) (size!27531 lt!1118262))))))

(declare-fun d!924111 () Bool)

(assert (=> d!924111 e!2053282))

(declare-fun res!1339203 () Bool)

(assert (=> d!924111 (=> (not res!1339203) (not e!2053282))))

(assert (=> d!924111 (= res!1339203 (= (content!4957 lt!1119094) (set.union (content!4957 (t!252748 lt!1118263)) (content!4957 lt!1118262))))))

(assert (=> d!924111 (= lt!1119094 e!2053283)))

(declare-fun c!560071 () Bool)

(assert (=> d!924111 (= c!560071 (is-Nil!36459 (t!252748 lt!1118263)))))

(assert (=> d!924111 (= (++!8815 (t!252748 lt!1118263) lt!1118262) lt!1119094)))

(declare-fun b!3301655 () Bool)

(assert (=> b!3301655 (= e!2053282 (or (not (= lt!1118262 Nil!36459)) (= lt!1119094 (t!252748 lt!1118263))))))

(assert (= (and d!924111 c!560071) b!3301652))

(assert (= (and d!924111 (not c!560071)) b!3301653))

(assert (= (and d!924111 res!1339203) b!3301654))

(assert (= (and b!3301654 res!1339202) b!3301655))

(declare-fun m!3626219 () Bool)

(assert (=> b!3301653 m!3626219))

(declare-fun m!3626221 () Bool)

(assert (=> b!3301654 m!3626221))

(assert (=> b!3301654 m!3623895))

(assert (=> b!3301654 m!3624807))

(declare-fun m!3626223 () Bool)

(assert (=> d!924111 m!3626223))

(assert (=> d!924111 m!3625365))

(assert (=> d!924111 m!3624813))

(assert (=> b!3300846 d!924111))

(declare-fun b!3301656 () Bool)

(declare-fun e!2053284 () List!36584)

(assert (=> b!3301656 (= e!2053284 Nil!36460)))

(declare-fun b!3301657 () Bool)

(declare-fun e!2053285 () Bool)

(declare-fun lt!1119095 () List!36584)

(assert (=> b!3301657 (= e!2053285 (forall!7541 lt!1119095 lambda!118850))))

(declare-fun b!3301658 () Bool)

(declare-fun e!2053286 () List!36584)

(declare-fun call!240035 () List!36584)

(assert (=> b!3301658 (= e!2053286 call!240035)))

(declare-fun b!3301659 () Bool)

(assert (=> b!3301659 (= e!2053284 e!2053286)))

(declare-fun c!560072 () Bool)

(assert (=> b!3301659 (= c!560072 (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))))

(declare-fun b!3301660 () Bool)

(assert (=> b!3301660 (= e!2053286 (Cons!36460 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))) call!240035))))

(declare-fun d!924113 () Bool)

(assert (=> d!924113 e!2053285))

(declare-fun res!1339205 () Bool)

(assert (=> d!924113 (=> (not res!1339205) (not e!2053285))))

(assert (=> d!924113 (= res!1339205 (<= (size!27539 lt!1119095) (size!27539 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))))

(assert (=> d!924113 (= lt!1119095 e!2053284)))

(declare-fun c!560073 () Bool)

(assert (=> d!924113 (= c!560073 (is-Nil!36460 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))))))

(assert (=> d!924113 (= (filter!527 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))) lambda!118850) lt!1119095)))

(declare-fun bm!240030 () Bool)

(assert (=> bm!240030 (= call!240035 (filter!527 (t!252749 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241))))) lambda!118850))))

(declare-fun b!3301661 () Bool)

(declare-fun res!1339204 () Bool)

(assert (=> b!3301661 (=> (not res!1339204) (not e!2053285))))

(assert (=> b!3301661 (= res!1339204 (set.subset (content!4959 lt!1119095) (content!4959 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))))

(assert (= (and d!924113 c!560073) b!3301656))

(assert (= (and d!924113 (not c!560073)) b!3301659))

(assert (= (and b!3301659 c!560072) b!3301660))

(assert (= (and b!3301659 (not c!560072)) b!3301658))

(assert (= (or b!3301660 b!3301658) bm!240030))

(assert (= (and d!924113 res!1339205) b!3301661))

(assert (= (and b!3301661 res!1339204) b!3301657))

(declare-fun b_lambda!92075 () Bool)

(assert (=> (not b_lambda!92075) (not b!3301659)))

(declare-fun m!3626225 () Bool)

(assert (=> d!924113 m!3626225))

(declare-fun m!3626227 () Bool)

(assert (=> d!924113 m!3626227))

(declare-fun m!3626229 () Bool)

(assert (=> b!3301659 m!3626229))

(declare-fun m!3626231 () Bool)

(assert (=> bm!240030 m!3626231))

(declare-fun m!3626233 () Bool)

(assert (=> b!3301657 m!3626233))

(declare-fun m!3626235 () Bool)

(assert (=> b!3301661 m!3626235))

(declare-fun m!3626237 () Bool)

(assert (=> b!3301661 m!3626237))

(assert (=> bm!239924 d!924113))

(assert (=> b!3300554 d!923845))

(assert (=> b!3300554 d!923847))

(assert (=> b!3300554 d!923841))

(assert (=> b!3300386 d!923451))

(declare-fun d!924115 () Bool)

(declare-fun lt!1119096 () Bool)

(assert (=> d!924115 (= lt!1119096 (set.member (rule!7785 (_1!21112 (get!11636 lt!1118535))) (content!4961 rules!2135)))))

(declare-fun e!2053288 () Bool)

(assert (=> d!924115 (= lt!1119096 e!2053288)))

(declare-fun res!1339207 () Bool)

(assert (=> d!924115 (=> (not res!1339207) (not e!2053288))))

(assert (=> d!924115 (= res!1339207 (is-Cons!36461 rules!2135))))

(assert (=> d!924115 (= (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1118535)))) lt!1119096)))

(declare-fun b!3301662 () Bool)

(declare-fun e!2053287 () Bool)

(assert (=> b!3301662 (= e!2053288 e!2053287)))

(declare-fun res!1339206 () Bool)

(assert (=> b!3301662 (=> res!1339206 e!2053287)))

(assert (=> b!3301662 (= res!1339206 (= (h!41881 rules!2135) (rule!7785 (_1!21112 (get!11636 lt!1118535)))))))

(declare-fun b!3301663 () Bool)

(assert (=> b!3301663 (= e!2053287 (contains!6585 (t!252750 rules!2135) (rule!7785 (_1!21112 (get!11636 lt!1118535)))))))

(assert (= (and d!924115 res!1339207) b!3301662))

(assert (= (and b!3301662 (not res!1339206)) b!3301663))

(assert (=> d!924115 m!3625235))

(declare-fun m!3626239 () Bool)

(assert (=> d!924115 m!3626239))

(declare-fun m!3626241 () Bool)

(assert (=> b!3301663 m!3626241))

(assert (=> b!3300542 d!924115))

(assert (=> b!3300542 d!923803))

(declare-fun b!3301675 () Bool)

(declare-fun e!2053294 () List!36584)

(assert (=> b!3301675 (= e!2053294 (++!8819 (list!13061 (left!28396 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))) (list!13061 (right!28726 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))))

(declare-fun b!3301673 () Bool)

(declare-fun e!2053293 () List!36584)

(assert (=> b!3301673 (= e!2053293 e!2053294)))

(declare-fun c!560079 () Bool)

(assert (=> b!3301673 (= c!560079 (is-Leaf!17205 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(declare-fun b!3301672 () Bool)

(assert (=> b!3301672 (= e!2053293 Nil!36460)))

(declare-fun b!3301674 () Bool)

(declare-fun list!13063 (IArray!21905) List!36584)

(assert (=> b!3301674 (= e!2053294 (list!13063 (xs!14088 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))))))

(declare-fun c!560078 () Bool)

(declare-fun d!924117 () Bool)

(assert (=> d!924117 (= c!560078 (is-Empty!10950 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(assert (=> d!924117 (= (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))) e!2053293)))

(assert (= (and d!924117 c!560078) b!3301672))

(assert (= (and d!924117 (not c!560078)) b!3301673))

(assert (= (and b!3301673 c!560079) b!3301674))

(assert (= (and b!3301673 (not c!560079)) b!3301675))

(declare-fun m!3626243 () Bool)

(assert (=> b!3301675 m!3626243))

(declare-fun m!3626245 () Bool)

(assert (=> b!3301675 m!3626245))

(assert (=> b!3301675 m!3626243))

(assert (=> b!3301675 m!3626245))

(declare-fun m!3626247 () Bool)

(assert (=> b!3301675 m!3626247))

(declare-fun m!3626249 () Bool)

(assert (=> b!3301674 m!3626249))

(assert (=> d!923655 d!924117))

(declare-fun d!924119 () Bool)

(declare-fun lt!1119097 () Int)

(assert (=> d!924119 (= lt!1119097 (size!27531 (list!13054 (_2!21113 lt!1118653))))))

(assert (=> d!924119 (= lt!1119097 (size!27540 (c!559681 (_2!21113 lt!1118653))))))

(assert (=> d!924119 (= (size!27536 (_2!21113 lt!1118653)) lt!1119097)))

(declare-fun bs!548664 () Bool)

(assert (= bs!548664 d!924119))

(assert (=> bs!548664 m!3624879))

(assert (=> bs!548664 m!3624879))

(declare-fun m!3626251 () Bool)

(assert (=> bs!548664 m!3626251))

(declare-fun m!3626253 () Bool)

(assert (=> bs!548664 m!3626253))

(assert (=> b!3300882 d!924119))

(declare-fun d!924121 () Bool)

(declare-fun lt!1119098 () Int)

(assert (=> d!924121 (= lt!1119098 (size!27531 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))

(assert (=> d!924121 (= lt!1119098 (size!27540 (c!559681 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))

(assert (=> d!924121 (= (size!27536 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)) lt!1119098)))

(declare-fun bs!548665 () Bool)

(assert (= bs!548665 d!924121))

(assert (=> bs!548665 m!3623605))

(assert (=> bs!548665 m!3624881))

(assert (=> bs!548665 m!3624881))

(assert (=> bs!548665 m!3625777))

(declare-fun m!3626255 () Bool)

(assert (=> bs!548665 m!3626255))

(assert (=> b!3300882 d!924121))

(declare-fun d!924123 () Bool)

(declare-fun lt!1119099 () Int)

(assert (=> d!924123 (>= lt!1119099 0)))

(declare-fun e!2053295 () Int)

(assert (=> d!924123 (= lt!1119099 e!2053295)))

(declare-fun c!560080 () Bool)

(assert (=> d!924123 (= c!560080 (is-Nil!36459 (_2!21111 lt!1118563)))))

(assert (=> d!924123 (= (size!27531 (_2!21111 lt!1118563)) lt!1119099)))

(declare-fun b!3301676 () Bool)

(assert (=> b!3301676 (= e!2053295 0)))

(declare-fun b!3301677 () Bool)

(assert (=> b!3301677 (= e!2053295 (+ 1 (size!27531 (t!252748 (_2!21111 lt!1118563)))))))

(assert (= (and d!924123 c!560080) b!3301676))

(assert (= (and d!924123 (not c!560080)) b!3301677))

(declare-fun m!3626257 () Bool)

(assert (=> b!3301677 m!3626257))

(assert (=> b!3300612 d!924123))

(declare-fun d!924125 () Bool)

(declare-fun lt!1119100 () Int)

(assert (=> d!924125 (>= lt!1119100 0)))

(declare-fun e!2053296 () Int)

(assert (=> d!924125 (= lt!1119100 e!2053296)))

(declare-fun c!560081 () Bool)

(assert (=> d!924125 (= c!560081 (is-Nil!36459 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))

(assert (=> d!924125 (= (size!27531 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)) lt!1119100)))

(declare-fun b!3301678 () Bool)

(assert (=> b!3301678 (= e!2053296 0)))

(declare-fun b!3301679 () Bool)

(assert (=> b!3301679 (= e!2053296 (+ 1 (size!27531 (t!252748 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))

(assert (= (and d!924125 c!560081) b!3301678))

(assert (= (and d!924125 (not c!560081)) b!3301679))

(declare-fun m!3626259 () Bool)

(assert (=> b!3301679 m!3626259))

(assert (=> b!3300612 d!924125))

(declare-fun d!924127 () Bool)

(assert (=> d!924127 (= (isDefined!5633 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))) (not (isEmpty!20604 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))))))

(declare-fun bs!548666 () Bool)

(assert (= bs!548666 d!924127))

(assert (=> bs!548666 m!3623555))

(declare-fun m!3626261 () Bool)

(assert (=> bs!548666 m!3626261))

(assert (=> d!923417 d!924127))

(assert (=> d!923417 d!923421))

(declare-fun d!924129 () Bool)

(declare-fun e!2053297 () Bool)

(assert (=> d!924129 e!2053297))

(declare-fun res!1339208 () Bool)

(assert (=> d!924129 (=> (not res!1339208) (not e!2053297))))

(assert (=> d!924129 (= res!1339208 (isDefined!5633 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))))))

(assert (=> d!924129 true))

(declare-fun _$52!1664 () Unit!51389)

(assert (=> d!924129 (= (choose!19104 thiss!18206 rules!2135 lt!1118262 separatorToken!241) _$52!1664)))

(declare-fun b!3301680 () Bool)

(declare-fun res!1339209 () Bool)

(assert (=> b!3301680 (=> (not res!1339209) (not e!2053297))))

(assert (=> b!3301680 (= res!1339209 (matchR!4668 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))) (list!13054 (charsOf!3303 separatorToken!241))))))

(declare-fun b!3301681 () Bool)

(assert (=> b!3301681 (= e!2053297 (= (rule!7785 separatorToken!241) (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))))))

(assert (= (and d!924129 res!1339208) b!3301680))

(assert (= (and b!3301680 res!1339209) b!3301681))

(assert (=> d!924129 m!3623555))

(assert (=> d!924129 m!3623555))

(assert (=> d!924129 m!3623901))

(assert (=> b!3301680 m!3623619))

(assert (=> b!3301680 m!3623623))

(assert (=> b!3301680 m!3623619))

(assert (=> b!3301680 m!3623555))

(assert (=> b!3301680 m!3623623))

(assert (=> b!3301680 m!3623905))

(assert (=> b!3301680 m!3623555))

(assert (=> b!3301680 m!3623907))

(assert (=> b!3301681 m!3623555))

(assert (=> b!3301681 m!3623555))

(assert (=> b!3301681 m!3623907))

(assert (=> d!923417 d!924129))

(assert (=> d!923417 d!923607))

(declare-fun d!924131 () Bool)

(declare-fun lt!1119101 () Bool)

(assert (=> d!924131 (= lt!1119101 (isEmpty!20599 (list!13055 (_1!21113 lt!1118653))))))

(assert (=> d!924131 (= lt!1119101 (isEmpty!20610 (c!559682 (_1!21113 lt!1118653))))))

(assert (=> d!924131 (= (isEmpty!20597 (_1!21113 lt!1118653)) lt!1119101)))

(declare-fun bs!548667 () Bool)

(assert (= bs!548667 d!924131))

(assert (=> bs!548667 m!3624885))

(assert (=> bs!548667 m!3624885))

(declare-fun m!3626263 () Bool)

(assert (=> bs!548667 m!3626263))

(declare-fun m!3626265 () Bool)

(assert (=> bs!548667 m!3626265))

(assert (=> b!3300880 d!924131))

(declare-fun b!3301682 () Bool)

(declare-fun e!2053300 () tuple2!35954)

(assert (=> b!3301682 (= e!2053300 (tuple2!35955 Nil!36460 (_2!21112 (v!36014 lt!1118562))))))

(declare-fun b!3301684 () Bool)

(declare-fun lt!1119102 () Option!7269)

(declare-fun lt!1119104 () tuple2!35954)

(assert (=> b!3301684 (= e!2053300 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1119102)) (_1!21111 lt!1119104)) (_2!21111 lt!1119104)))))

(assert (=> b!3301684 (= lt!1119104 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1119102))))))

(declare-fun b!3301685 () Bool)

(declare-fun e!2053298 () Bool)

(declare-fun lt!1119103 () tuple2!35954)

(assert (=> b!3301685 (= e!2053298 (= (_2!21111 lt!1119103) (_2!21112 (v!36014 lt!1118562))))))

(declare-fun b!3301686 () Bool)

(declare-fun e!2053299 () Bool)

(assert (=> b!3301686 (= e!2053298 e!2053299)))

(declare-fun res!1339210 () Bool)

(assert (=> b!3301686 (= res!1339210 (< (size!27531 (_2!21111 lt!1119103)) (size!27531 (_2!21112 (v!36014 lt!1118562)))))))

(assert (=> b!3301686 (=> (not res!1339210) (not e!2053299))))

(declare-fun b!3301683 () Bool)

(assert (=> b!3301683 (= e!2053299 (not (isEmpty!20599 (_1!21111 lt!1119103))))))

(declare-fun d!924133 () Bool)

(assert (=> d!924133 e!2053298))

(declare-fun c!560082 () Bool)

(assert (=> d!924133 (= c!560082 (> (size!27539 (_1!21111 lt!1119103)) 0))))

(assert (=> d!924133 (= lt!1119103 e!2053300)))

(declare-fun c!560083 () Bool)

(assert (=> d!924133 (= c!560083 (is-Some!7268 lt!1119102))))

(assert (=> d!924133 (= lt!1119102 (maxPrefix!2504 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118562))))))

(assert (=> d!924133 (= (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118562))) lt!1119103)))

(assert (= (and d!924133 c!560083) b!3301684))

(assert (= (and d!924133 (not c!560083)) b!3301682))

(assert (= (and d!924133 c!560082) b!3301686))

(assert (= (and d!924133 (not c!560082)) b!3301685))

(assert (= (and b!3301686 res!1339210) b!3301683))

(declare-fun m!3626267 () Bool)

(assert (=> b!3301684 m!3626267))

(declare-fun m!3626269 () Bool)

(assert (=> b!3301686 m!3626269))

(declare-fun m!3626271 () Bool)

(assert (=> b!3301686 m!3626271))

(declare-fun m!3626273 () Bool)

(assert (=> b!3301683 m!3626273))

(declare-fun m!3626275 () Bool)

(assert (=> d!924133 m!3626275))

(declare-fun m!3626277 () Bool)

(assert (=> d!924133 m!3626277))

(assert (=> b!3300610 d!924133))

(assert (=> b!3300154 d!923669))

(declare-fun e!2053302 () Bool)

(declare-fun b!3301687 () Bool)

(assert (=> b!3301687 (= e!2053302 (nullable!3415 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun b!3301688 () Bool)

(declare-fun res!1339217 () Bool)

(declare-fun e!2053306 () Bool)

(assert (=> b!3301688 (=> (not res!1339217) (not e!2053306))))

(declare-fun call!240036 () Bool)

(assert (=> b!3301688 (= res!1339217 (not call!240036))))

(declare-fun b!3301689 () Bool)

(assert (=> b!3301689 (= e!2053302 (matchR!4668 (derivativeStep!2968 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))) (head!7120 (list!13054 (charsOf!3303 (h!41880 tokens!494))))) (tail!5258 (list!13054 (charsOf!3303 (h!41880 tokens!494))))))))

(declare-fun b!3301690 () Bool)

(declare-fun e!2053304 () Bool)

(declare-fun e!2053307 () Bool)

(assert (=> b!3301690 (= e!2053304 e!2053307)))

(declare-fun c!560086 () Bool)

(assert (=> b!3301690 (= c!560086 (is-EmptyLang!10046 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun d!924135 () Bool)

(assert (=> d!924135 e!2053304))

(declare-fun c!560085 () Bool)

(assert (=> d!924135 (= c!560085 (is-EmptyExpr!10046 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))))))))

(declare-fun lt!1119105 () Bool)

(assert (=> d!924135 (= lt!1119105 e!2053302)))

(declare-fun c!560084 () Bool)

(assert (=> d!924135 (= c!560084 (isEmpty!20598 (list!13054 (charsOf!3303 (h!41880 tokens!494)))))))

(assert (=> d!924135 (validRegex!4571 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))

(assert (=> d!924135 (= (matchR!4668 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))) (list!13054 (charsOf!3303 (h!41880 tokens!494)))) lt!1119105)))

(declare-fun e!2053301 () Bool)

(declare-fun b!3301691 () Bool)

(assert (=> b!3301691 (= e!2053301 (not (= (head!7120 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (c!559680 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494))))))))))))

(declare-fun b!3301692 () Bool)

(declare-fun res!1339213 () Bool)

(declare-fun e!2053305 () Bool)

(assert (=> b!3301692 (=> res!1339213 e!2053305)))

(assert (=> b!3301692 (= res!1339213 (not (is-ElementMatch!10046 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))))

(assert (=> b!3301692 (= e!2053307 e!2053305)))

(declare-fun b!3301693 () Bool)

(declare-fun res!1339211 () Bool)

(assert (=> b!3301693 (=> (not res!1339211) (not e!2053306))))

(assert (=> b!3301693 (= res!1339211 (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (h!41880 tokens!494))))))))

(declare-fun b!3301694 () Bool)

(declare-fun res!1339212 () Bool)

(assert (=> b!3301694 (=> res!1339212 e!2053305)))

(assert (=> b!3301694 (= res!1339212 e!2053306)))

(declare-fun res!1339214 () Bool)

(assert (=> b!3301694 (=> (not res!1339214) (not e!2053306))))

(assert (=> b!3301694 (= res!1339214 lt!1119105)))

(declare-fun b!3301695 () Bool)

(assert (=> b!3301695 (= e!2053304 (= lt!1119105 call!240036))))

(declare-fun bm!240031 () Bool)

(assert (=> bm!240031 (= call!240036 (isEmpty!20598 (list!13054 (charsOf!3303 (h!41880 tokens!494)))))))

(declare-fun b!3301696 () Bool)

(assert (=> b!3301696 (= e!2053306 (= (head!7120 (list!13054 (charsOf!3303 (h!41880 tokens!494)))) (c!559680 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))))

(declare-fun b!3301697 () Bool)

(declare-fun e!2053303 () Bool)

(assert (=> b!3301697 (= e!2053305 e!2053303)))

(declare-fun res!1339215 () Bool)

(assert (=> b!3301697 (=> (not res!1339215) (not e!2053303))))

(assert (=> b!3301697 (= res!1339215 (not lt!1119105))))

(declare-fun b!3301698 () Bool)

(declare-fun res!1339218 () Bool)

(assert (=> b!3301698 (=> res!1339218 e!2053301)))

(assert (=> b!3301698 (= res!1339218 (not (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (h!41880 tokens!494)))))))))

(declare-fun b!3301699 () Bool)

(assert (=> b!3301699 (= e!2053307 (not lt!1119105))))

(declare-fun b!3301700 () Bool)

(assert (=> b!3301700 (= e!2053303 e!2053301)))

(declare-fun res!1339216 () Bool)

(assert (=> b!3301700 (=> res!1339216 e!2053301)))

(assert (=> b!3301700 (= res!1339216 call!240036)))

(assert (= (and d!924135 c!560084) b!3301687))

(assert (= (and d!924135 (not c!560084)) b!3301689))

(assert (= (and d!924135 c!560085) b!3301695))

(assert (= (and d!924135 (not c!560085)) b!3301690))

(assert (= (and b!3301690 c!560086) b!3301699))

(assert (= (and b!3301690 (not c!560086)) b!3301692))

(assert (= (and b!3301692 (not res!1339213)) b!3301694))

(assert (= (and b!3301694 res!1339214) b!3301688))

(assert (= (and b!3301688 res!1339217) b!3301693))

(assert (= (and b!3301693 res!1339211) b!3301696))

(assert (= (and b!3301694 (not res!1339212)) b!3301697))

(assert (= (and b!3301697 res!1339215) b!3301700))

(assert (= (and b!3301700 (not res!1339216)) b!3301698))

(assert (= (and b!3301698 (not res!1339218)) b!3301691))

(assert (= (or b!3301695 b!3301688 b!3301700) bm!240031))

(assert (=> b!3301693 m!3623565))

(declare-fun m!3626279 () Bool)

(assert (=> b!3301693 m!3626279))

(assert (=> b!3301693 m!3626279))

(declare-fun m!3626281 () Bool)

(assert (=> b!3301693 m!3626281))

(declare-fun m!3626283 () Bool)

(assert (=> b!3301687 m!3626283))

(assert (=> bm!240031 m!3623565))

(declare-fun m!3626285 () Bool)

(assert (=> bm!240031 m!3626285))

(assert (=> b!3301689 m!3623565))

(declare-fun m!3626287 () Bool)

(assert (=> b!3301689 m!3626287))

(assert (=> b!3301689 m!3626287))

(declare-fun m!3626289 () Bool)

(assert (=> b!3301689 m!3626289))

(assert (=> b!3301689 m!3623565))

(assert (=> b!3301689 m!3626279))

(assert (=> b!3301689 m!3626289))

(assert (=> b!3301689 m!3626279))

(declare-fun m!3626291 () Bool)

(assert (=> b!3301689 m!3626291))

(assert (=> b!3301691 m!3623565))

(assert (=> b!3301691 m!3626287))

(assert (=> b!3301696 m!3623565))

(assert (=> b!3301696 m!3626287))

(assert (=> b!3301698 m!3623565))

(assert (=> b!3301698 m!3626279))

(assert (=> b!3301698 m!3626279))

(assert (=> b!3301698 m!3626281))

(assert (=> d!924135 m!3623565))

(assert (=> d!924135 m!3626285))

(declare-fun m!3626293 () Bool)

(assert (=> d!924135 m!3626293))

(assert (=> b!3300154 d!924135))

(assert (=> b!3300154 d!923449))

(assert (=> b!3300154 d!923927))

(assert (=> b!3300154 d!923667))

(assert (=> b!3300772 d!923451))

(assert (=> b!3300334 d!923949))

(declare-fun d!924137 () Bool)

(assert (=> d!924137 (= (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454))))) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454))))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454))))))))

(declare-fun b_lambda!92077 () Bool)

(assert (=> (not b_lambda!92077) (not d!924137)))

(declare-fun tb!170975 () Bool)

(declare-fun t!252898 () Bool)

(assert (=> (and b!3299937 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252898) tb!170975))

(declare-fun result!213728 () Bool)

(assert (=> tb!170975 (= result!213728 (inv!21 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454))))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454)))))))))

(declare-fun m!3626295 () Bool)

(assert (=> tb!170975 m!3626295))

(assert (=> d!924137 t!252898))

(declare-fun b_and!225971 () Bool)

(assert (= b_and!225963 (and (=> t!252898 result!213728) b_and!225971)))

(declare-fun tb!170977 () Bool)

(declare-fun t!252900 () Bool)

(assert (=> (and b!3300934 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252900) tb!170977))

(declare-fun result!213730 () Bool)

(assert (= result!213730 result!213728))

(assert (=> d!924137 t!252900))

(declare-fun b_and!225973 () Bool)

(assert (= b_and!225969 (and (=> t!252900 result!213730) b_and!225973)))

(declare-fun tb!170979 () Bool)

(declare-fun t!252902 () Bool)

(assert (=> (and b!3299965 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252902) tb!170979))

(declare-fun result!213732 () Bool)

(assert (= result!213732 result!213728))

(assert (=> d!924137 t!252902))

(declare-fun b_and!225975 () Bool)

(assert (= b_and!225965 (and (=> t!252902 result!213732) b_and!225975)))

(declare-fun tb!170981 () Bool)

(declare-fun t!252904 () Bool)

(assert (=> (and b!3299943 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252904) tb!170981))

(declare-fun result!213734 () Bool)

(assert (= result!213734 result!213728))

(assert (=> d!924137 t!252904))

(declare-fun b_and!225977 () Bool)

(assert (= b_and!225961 (and (=> t!252904 result!213734) b_and!225977)))

(declare-fun tb!170983 () Bool)

(declare-fun t!252906 () Bool)

(assert (=> (and b!3300954 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252906) tb!170983))

(declare-fun result!213736 () Bool)

(assert (= result!213736 result!213728))

(assert (=> d!924137 t!252906))

(declare-fun b_and!225979 () Bool)

(assert (= b_and!225967 (and (=> t!252906 result!213736) b_and!225979)))

(assert (=> d!924137 m!3624073))

(declare-fun m!3626297 () Bool)

(assert (=> d!924137 m!3626297))

(assert (=> b!3300334 d!924137))

(declare-fun d!924139 () Bool)

(assert (=> d!924139 (= (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454)))) (fromListB!1596 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118454)))))))

(declare-fun bs!548668 () Bool)

(assert (= bs!548668 d!924139))

(declare-fun m!3626299 () Bool)

(assert (=> bs!548668 m!3626299))

(assert (=> b!3300334 d!924139))

(declare-fun b!3301701 () Bool)

(declare-fun e!2053311 () tuple2!35954)

(assert (=> b!3301701 (= e!2053311 (tuple2!35955 Nil!36460 (_2!21112 (v!36014 lt!1118543))))))

(declare-fun b!3301703 () Bool)

(declare-fun lt!1119106 () Option!7269)

(declare-fun lt!1119108 () tuple2!35954)

(assert (=> b!3301703 (= e!2053311 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1119106)) (_1!21111 lt!1119108)) (_2!21111 lt!1119108)))))

(assert (=> b!3301703 (= lt!1119108 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1119106))))))

(declare-fun b!3301704 () Bool)

(declare-fun e!2053309 () Bool)

(declare-fun lt!1119107 () tuple2!35954)

(assert (=> b!3301704 (= e!2053309 (= (_2!21111 lt!1119107) (_2!21112 (v!36014 lt!1118543))))))

(declare-fun b!3301705 () Bool)

(declare-fun e!2053310 () Bool)

(assert (=> b!3301705 (= e!2053309 e!2053310)))

(declare-fun res!1339219 () Bool)

(assert (=> b!3301705 (= res!1339219 (< (size!27531 (_2!21111 lt!1119107)) (size!27531 (_2!21112 (v!36014 lt!1118543)))))))

(assert (=> b!3301705 (=> (not res!1339219) (not e!2053310))))

(declare-fun b!3301702 () Bool)

(assert (=> b!3301702 (= e!2053310 (not (isEmpty!20599 (_1!21111 lt!1119107))))))

(declare-fun d!924141 () Bool)

(assert (=> d!924141 e!2053309))

(declare-fun c!560087 () Bool)

(assert (=> d!924141 (= c!560087 (> (size!27539 (_1!21111 lt!1119107)) 0))))

(assert (=> d!924141 (= lt!1119107 e!2053311)))

(declare-fun c!560088 () Bool)

(assert (=> d!924141 (= c!560088 (is-Some!7268 lt!1119106))))

(assert (=> d!924141 (= lt!1119106 (maxPrefix!2504 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118543))))))

(assert (=> d!924141 (= (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118543))) lt!1119107)))

(assert (= (and d!924141 c!560088) b!3301703))

(assert (= (and d!924141 (not c!560088)) b!3301701))

(assert (= (and d!924141 c!560087) b!3301705))

(assert (= (and d!924141 (not c!560087)) b!3301704))

(assert (= (and b!3301705 res!1339219) b!3301702))

(declare-fun m!3626301 () Bool)

(assert (=> b!3301703 m!3626301))

(declare-fun m!3626303 () Bool)

(assert (=> b!3301705 m!3626303))

(declare-fun m!3626305 () Bool)

(assert (=> b!3301705 m!3626305))

(declare-fun m!3626307 () Bool)

(assert (=> b!3301702 m!3626307))

(declare-fun m!3626309 () Bool)

(assert (=> d!924141 m!3626309))

(declare-fun m!3626311 () Bool)

(assert (=> d!924141 m!3626311))

(assert (=> b!3300560 d!924141))

(declare-fun d!924143 () Bool)

(assert (=> d!924143 (= (isEmpty!20598 (originalCharacters!6001 separatorToken!241)) (is-Nil!36459 (originalCharacters!6001 separatorToken!241)))))

(assert (=> d!923671 d!924143))

(declare-fun d!924145 () Bool)

(assert (=> d!924145 (= (inv!15 (value!171141 separatorToken!241)) (= (charsToBigInt!0 (text!39068 (value!171141 separatorToken!241)) 0) (value!171136 (value!171141 separatorToken!241))))))

(declare-fun bs!548669 () Bool)

(assert (= bs!548669 d!924145))

(declare-fun m!3626313 () Bool)

(assert (=> bs!548669 m!3626313))

(assert (=> b!3300448 d!924145))

(declare-fun b!3301706 () Bool)

(declare-fun e!2053313 () Bool)

(assert (=> b!3301706 (= e!2053313 (nullable!3415 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262))))))

(declare-fun b!3301707 () Bool)

(declare-fun res!1339226 () Bool)

(declare-fun e!2053317 () Bool)

(assert (=> b!3301707 (=> (not res!1339226) (not e!2053317))))

(declare-fun call!240037 () Bool)

(assert (=> b!3301707 (= res!1339226 (not call!240037))))

(declare-fun b!3301708 () Bool)

(assert (=> b!3301708 (= e!2053313 (matchR!4668 (derivativeStep!2968 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262)) (head!7120 (tail!5258 lt!1118262))) (tail!5258 (tail!5258 lt!1118262))))))

(declare-fun b!3301709 () Bool)

(declare-fun e!2053315 () Bool)

(declare-fun e!2053318 () Bool)

(assert (=> b!3301709 (= e!2053315 e!2053318)))

(declare-fun c!560091 () Bool)

(assert (=> b!3301709 (= c!560091 (is-EmptyLang!10046 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262))))))

(declare-fun d!924147 () Bool)

(assert (=> d!924147 e!2053315))

(declare-fun c!560090 () Bool)

(assert (=> d!924147 (= c!560090 (is-EmptyExpr!10046 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262))))))

(declare-fun lt!1119109 () Bool)

(assert (=> d!924147 (= lt!1119109 e!2053313)))

(declare-fun c!560089 () Bool)

(assert (=> d!924147 (= c!560089 (isEmpty!20598 (tail!5258 lt!1118262)))))

(assert (=> d!924147 (validRegex!4571 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262)))))

(assert (=> d!924147 (= (matchR!4668 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262)) (tail!5258 lt!1118262)) lt!1119109)))

(declare-fun b!3301710 () Bool)

(declare-fun e!2053312 () Bool)

(assert (=> b!3301710 (= e!2053312 (not (= (head!7120 (tail!5258 lt!1118262)) (c!559680 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262))))))))

(declare-fun b!3301711 () Bool)

(declare-fun res!1339222 () Bool)

(declare-fun e!2053316 () Bool)

(assert (=> b!3301711 (=> res!1339222 e!2053316)))

(assert (=> b!3301711 (= res!1339222 (not (is-ElementMatch!10046 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262)))))))

(assert (=> b!3301711 (= e!2053318 e!2053316)))

(declare-fun b!3301712 () Bool)

(declare-fun res!1339220 () Bool)

(assert (=> b!3301712 (=> (not res!1339220) (not e!2053317))))

(assert (=> b!3301712 (= res!1339220 (isEmpty!20598 (tail!5258 (tail!5258 lt!1118262))))))

(declare-fun b!3301713 () Bool)

(declare-fun res!1339221 () Bool)

(assert (=> b!3301713 (=> res!1339221 e!2053316)))

(assert (=> b!3301713 (= res!1339221 e!2053317)))

(declare-fun res!1339223 () Bool)

(assert (=> b!3301713 (=> (not res!1339223) (not e!2053317))))

(assert (=> b!3301713 (= res!1339223 lt!1119109)))

(declare-fun b!3301714 () Bool)

(assert (=> b!3301714 (= e!2053315 (= lt!1119109 call!240037))))

(declare-fun bm!240032 () Bool)

(assert (=> bm!240032 (= call!240037 (isEmpty!20598 (tail!5258 lt!1118262)))))

(declare-fun b!3301715 () Bool)

(assert (=> b!3301715 (= e!2053317 (= (head!7120 (tail!5258 lt!1118262)) (c!559680 (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262)))))))

(declare-fun b!3301716 () Bool)

(declare-fun e!2053314 () Bool)

(assert (=> b!3301716 (= e!2053316 e!2053314)))

(declare-fun res!1339224 () Bool)

(assert (=> b!3301716 (=> (not res!1339224) (not e!2053314))))

(assert (=> b!3301716 (= res!1339224 (not lt!1119109))))

(declare-fun b!3301717 () Bool)

(declare-fun res!1339227 () Bool)

(assert (=> b!3301717 (=> res!1339227 e!2053312)))

(assert (=> b!3301717 (= res!1339227 (not (isEmpty!20598 (tail!5258 (tail!5258 lt!1118262)))))))

(declare-fun b!3301718 () Bool)

(assert (=> b!3301718 (= e!2053318 (not lt!1119109))))

(declare-fun b!3301719 () Bool)

(assert (=> b!3301719 (= e!2053314 e!2053312)))

(declare-fun res!1339225 () Bool)

(assert (=> b!3301719 (=> res!1339225 e!2053312)))

(assert (=> b!3301719 (= res!1339225 call!240037)))

(assert (= (and d!924147 c!560089) b!3301706))

(assert (= (and d!924147 (not c!560089)) b!3301708))

(assert (= (and d!924147 c!560090) b!3301714))

(assert (= (and d!924147 (not c!560090)) b!3301709))

(assert (= (and b!3301709 c!560091) b!3301718))

(assert (= (and b!3301709 (not c!560091)) b!3301711))

(assert (= (and b!3301711 (not res!1339222)) b!3301713))

(assert (= (and b!3301713 res!1339223) b!3301707))

(assert (= (and b!3301707 res!1339226) b!3301712))

(assert (= (and b!3301712 res!1339220) b!3301715))

(assert (= (and b!3301713 (not res!1339221)) b!3301716))

(assert (= (and b!3301716 res!1339224) b!3301719))

(assert (= (and b!3301719 (not res!1339225)) b!3301717))

(assert (= (and b!3301717 (not res!1339227)) b!3301710))

(assert (= (or b!3301714 b!3301707 b!3301719) bm!240032))

(assert (=> b!3301712 m!3624179))

(declare-fun m!3626315 () Bool)

(assert (=> b!3301712 m!3626315))

(assert (=> b!3301712 m!3626315))

(declare-fun m!3626317 () Bool)

(assert (=> b!3301712 m!3626317))

(assert (=> b!3301706 m!3624673))

(declare-fun m!3626319 () Bool)

(assert (=> b!3301706 m!3626319))

(assert (=> bm!240032 m!3624179))

(assert (=> bm!240032 m!3624181))

(assert (=> b!3301708 m!3624179))

(declare-fun m!3626321 () Bool)

(assert (=> b!3301708 m!3626321))

(assert (=> b!3301708 m!3624673))

(assert (=> b!3301708 m!3626321))

(declare-fun m!3626323 () Bool)

(assert (=> b!3301708 m!3626323))

(assert (=> b!3301708 m!3624179))

(assert (=> b!3301708 m!3626315))

(assert (=> b!3301708 m!3626323))

(assert (=> b!3301708 m!3626315))

(declare-fun m!3626325 () Bool)

(assert (=> b!3301708 m!3626325))

(assert (=> b!3301710 m!3624179))

(assert (=> b!3301710 m!3626321))

(assert (=> b!3301715 m!3624179))

(assert (=> b!3301715 m!3626321))

(assert (=> b!3301717 m!3624179))

(assert (=> b!3301717 m!3626315))

(assert (=> b!3301717 m!3626315))

(assert (=> b!3301717 m!3626317))

(assert (=> d!924147 m!3624179))

(assert (=> d!924147 m!3624181))

(assert (=> d!924147 m!3624673))

(declare-fun m!3626327 () Bool)

(assert (=> d!924147 m!3626327))

(assert (=> b!3300765 d!924147))

(declare-fun b!3301720 () Bool)

(declare-fun e!2053323 () Regex!10046)

(declare-fun e!2053321 () Regex!10046)

(assert (=> b!3301720 (= e!2053323 e!2053321)))

(declare-fun c!560092 () Bool)

(assert (=> b!3301720 (= c!560092 (is-ElementMatch!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun c!560096 () Bool)

(declare-fun call!240039 () Regex!10046)

(declare-fun bm!240034 () Bool)

(assert (=> bm!240034 (= call!240039 (derivativeStep!2968 (ite c!560096 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))) (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))) (head!7120 lt!1118262)))))

(declare-fun b!3301721 () Bool)

(assert (=> b!3301721 (= e!2053323 EmptyLang!10046)))

(declare-fun b!3301722 () Bool)

(declare-fun e!2053319 () Regex!10046)

(declare-fun call!240041 () Regex!10046)

(assert (=> b!3301722 (= e!2053319 (Union!10046 call!240041 call!240039))))

(declare-fun b!3301723 () Bool)

(declare-fun e!2053322 () Regex!10046)

(declare-fun call!240040 () Regex!10046)

(assert (=> b!3301723 (= e!2053322 (Union!10046 (Concat!15563 call!240040 (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))) call!240039))))

(declare-fun b!3301724 () Bool)

(declare-fun c!560095 () Bool)

(assert (=> b!3301724 (= c!560095 (nullable!3415 (regOne!20604 (regex!5287 (rule!7785 separatorToken!241)))))))

(declare-fun e!2053320 () Regex!10046)

(assert (=> b!3301724 (= e!2053320 e!2053322)))

(declare-fun b!3301725 () Bool)

(assert (=> b!3301725 (= c!560096 (is-Union!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(assert (=> b!3301725 (= e!2053321 e!2053319)))

(declare-fun b!3301726 () Bool)

(assert (=> b!3301726 (= e!2053321 (ite (= (head!7120 lt!1118262) (c!559680 (regex!5287 (rule!7785 separatorToken!241)))) EmptyExpr!10046 EmptyLang!10046))))

(declare-fun bm!240035 () Bool)

(declare-fun call!240038 () Regex!10046)

(assert (=> bm!240035 (= call!240040 call!240038)))

(declare-fun b!3301727 () Bool)

(assert (=> b!3301727 (= e!2053322 (Union!10046 (Concat!15563 call!240040 (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241)))) EmptyLang!10046))))

(declare-fun bm!240036 () Bool)

(assert (=> bm!240036 (= call!240038 call!240041)))

(declare-fun c!560094 () Bool)

(declare-fun bm!240033 () Bool)

(assert (=> bm!240033 (= call!240041 (derivativeStep!2968 (ite c!560096 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))) (ite c!560094 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))) (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) (head!7120 lt!1118262)))))

(declare-fun d!924149 () Bool)

(declare-fun lt!1119110 () Regex!10046)

(assert (=> d!924149 (validRegex!4571 lt!1119110)))

(assert (=> d!924149 (= lt!1119110 e!2053323)))

(declare-fun c!560093 () Bool)

(assert (=> d!924149 (= c!560093 (or (is-EmptyExpr!10046 (regex!5287 (rule!7785 separatorToken!241))) (is-EmptyLang!10046 (regex!5287 (rule!7785 separatorToken!241)))))))

(assert (=> d!924149 (validRegex!4571 (regex!5287 (rule!7785 separatorToken!241)))))

(assert (=> d!924149 (= (derivativeStep!2968 (regex!5287 (rule!7785 separatorToken!241)) (head!7120 lt!1118262)) lt!1119110)))

(declare-fun b!3301728 () Bool)

(assert (=> b!3301728 (= e!2053319 e!2053320)))

(assert (=> b!3301728 (= c!560094 (is-Star!10046 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun b!3301729 () Bool)

(assert (=> b!3301729 (= e!2053320 (Concat!15563 call!240038 (regex!5287 (rule!7785 separatorToken!241))))))

(assert (= (and d!924149 c!560093) b!3301721))

(assert (= (and d!924149 (not c!560093)) b!3301720))

(assert (= (and b!3301720 c!560092) b!3301726))

(assert (= (and b!3301720 (not c!560092)) b!3301725))

(assert (= (and b!3301725 c!560096) b!3301722))

(assert (= (and b!3301725 (not c!560096)) b!3301728))

(assert (= (and b!3301728 c!560094) b!3301729))

(assert (= (and b!3301728 (not c!560094)) b!3301724))

(assert (= (and b!3301724 c!560095) b!3301723))

(assert (= (and b!3301724 (not c!560095)) b!3301727))

(assert (= (or b!3301723 b!3301727) bm!240035))

(assert (= (or b!3301729 bm!240035) bm!240036))

(assert (= (or b!3301722 bm!240036) bm!240033))

(assert (= (or b!3301722 b!3301723) bm!240034))

(assert (=> bm!240034 m!3623557))

(declare-fun m!3626329 () Bool)

(assert (=> bm!240034 m!3626329))

(declare-fun m!3626331 () Bool)

(assert (=> b!3301724 m!3626331))

(assert (=> bm!240033 m!3623557))

(declare-fun m!3626333 () Bool)

(assert (=> bm!240033 m!3626333))

(declare-fun m!3626335 () Bool)

(assert (=> d!924149 m!3626335))

(assert (=> d!924149 m!3624669))

(assert (=> b!3300765 d!924149))

(assert (=> b!3300765 d!923451))

(assert (=> b!3300765 d!923861))

(declare-fun d!924151 () Bool)

(assert (=> d!924151 (= (list!13054 lt!1118648) (list!13059 (c!559681 lt!1118648)))))

(declare-fun bs!548670 () Bool)

(assert (= bs!548670 d!924151))

(declare-fun m!3626337 () Bool)

(assert (=> bs!548670 m!3626337))

(assert (=> d!923647 d!924151))

(declare-fun d!924153 () Bool)

(declare-fun c!560097 () Bool)

(assert (=> d!924153 (= c!560097 (is-Cons!36460 (list!13055 lt!1118251)))))

(declare-fun e!2053324 () List!36583)

(assert (=> d!924153 (= (printWithSeparatorTokenList!201 thiss!18206 (list!13055 lt!1118251) separatorToken!241) e!2053324)))

(declare-fun b!3301730 () Bool)

(assert (=> b!3301730 (= e!2053324 (++!8815 (++!8815 (list!13054 (charsOf!3303 (h!41880 (list!13055 lt!1118251)))) (list!13054 (charsOf!3303 separatorToken!241))) (printWithSeparatorTokenList!201 thiss!18206 (t!252749 (list!13055 lt!1118251)) separatorToken!241)))))

(declare-fun b!3301731 () Bool)

(assert (=> b!3301731 (= e!2053324 Nil!36459)))

(assert (= (and d!924153 c!560097) b!3301730))

(assert (= (and d!924153 (not c!560097)) b!3301731))

(declare-fun m!3626339 () Bool)

(assert (=> b!3301730 m!3626339))

(assert (=> b!3301730 m!3623619))

(assert (=> b!3301730 m!3623623))

(declare-fun m!3626341 () Bool)

(assert (=> b!3301730 m!3626341))

(declare-fun m!3626343 () Bool)

(assert (=> b!3301730 m!3626343))

(declare-fun m!3626345 () Bool)

(assert (=> b!3301730 m!3626345))

(assert (=> b!3301730 m!3626339))

(declare-fun m!3626347 () Bool)

(assert (=> b!3301730 m!3626347))

(assert (=> b!3301730 m!3626341))

(assert (=> b!3301730 m!3626343))

(assert (=> b!3301730 m!3623623))

(assert (=> b!3301730 m!3626345))

(assert (=> b!3301730 m!3623619))

(assert (=> d!923647 d!924153))

(assert (=> d!923647 d!923747))

(declare-fun d!924155 () Bool)

(declare-fun lt!1119116 () BalanceConc!21512)

(assert (=> d!924155 (= (list!13054 lt!1119116) (printWithSeparatorTokenListTailRec!13 thiss!18206 (dropList!1107 lt!1118251 0) separatorToken!241 (list!13054 (BalanceConc!21513 Empty!10949))))))

(declare-fun e!2053325 () BalanceConc!21512)

(assert (=> d!924155 (= lt!1119116 e!2053325)))

(declare-fun c!560098 () Bool)

(assert (=> d!924155 (= c!560098 (>= 0 (size!27538 lt!1118251)))))

(declare-fun e!2053326 () Bool)

(assert (=> d!924155 e!2053326))

(declare-fun res!1339228 () Bool)

(assert (=> d!924155 (=> (not res!1339228) (not e!2053326))))

(assert (=> d!924155 (= res!1339228 (>= 0 0))))

(assert (=> d!924155 (= (printWithSeparatorTokenTailRec!30 thiss!18206 lt!1118251 separatorToken!241 0 (BalanceConc!21513 Empty!10949)) lt!1119116)))

(declare-fun b!3301732 () Bool)

(assert (=> b!3301732 (= e!2053326 (<= 0 (size!27538 lt!1118251)))))

(declare-fun b!3301733 () Bool)

(assert (=> b!3301733 (= e!2053325 (BalanceConc!21513 Empty!10949))))

(declare-fun b!3301734 () Bool)

(assert (=> b!3301734 (= e!2053325 (printWithSeparatorTokenTailRec!30 thiss!18206 lt!1118251 separatorToken!241 (+ 0 1) (++!8817 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 lt!1118251 0))) (charsOf!3303 separatorToken!241))))))

(declare-fun lt!1119114 () List!36584)

(assert (=> b!3301734 (= lt!1119114 (list!13055 lt!1118251))))

(declare-fun lt!1119112 () Unit!51389)

(assert (=> b!3301734 (= lt!1119112 (lemmaDropApply!1066 lt!1119114 0))))

(assert (=> b!3301734 (= (head!7122 (drop!1898 lt!1119114 0)) (apply!8368 lt!1119114 0))))

(declare-fun lt!1119113 () Unit!51389)

(assert (=> b!3301734 (= lt!1119113 lt!1119112)))

(declare-fun lt!1119115 () List!36584)

(assert (=> b!3301734 (= lt!1119115 (list!13055 lt!1118251))))

(declare-fun lt!1119117 () Unit!51389)

(assert (=> b!3301734 (= lt!1119117 (lemmaDropTail!950 lt!1119115 0))))

(assert (=> b!3301734 (= (tail!5259 (drop!1898 lt!1119115 0)) (drop!1898 lt!1119115 (+ 0 1)))))

(declare-fun lt!1119111 () Unit!51389)

(assert (=> b!3301734 (= lt!1119111 lt!1119117)))

(assert (= (and d!924155 res!1339228) b!3301732))

(assert (= (and d!924155 c!560098) b!3301733))

(assert (= (and d!924155 (not c!560098)) b!3301734))

(declare-fun m!3626349 () Bool)

(assert (=> d!924155 m!3626349))

(declare-fun m!3626351 () Bool)

(assert (=> d!924155 m!3626351))

(assert (=> d!924155 m!3624131))

(declare-fun m!3626353 () Bool)

(assert (=> d!924155 m!3626353))

(declare-fun m!3626355 () Bool)

(assert (=> d!924155 m!3626355))

(assert (=> d!924155 m!3624131))

(assert (=> d!924155 m!3626351))

(assert (=> b!3301732 m!3626349))

(declare-fun m!3626357 () Bool)

(assert (=> b!3301734 m!3626357))

(declare-fun m!3626359 () Bool)

(assert (=> b!3301734 m!3626359))

(assert (=> b!3301734 m!3624297))

(declare-fun m!3626361 () Bool)

(assert (=> b!3301734 m!3626361))

(declare-fun m!3626363 () Bool)

(assert (=> b!3301734 m!3626363))

(declare-fun m!3626365 () Bool)

(assert (=> b!3301734 m!3626365))

(declare-fun m!3626367 () Bool)

(assert (=> b!3301734 m!3626367))

(declare-fun m!3626369 () Bool)

(assert (=> b!3301734 m!3626369))

(declare-fun m!3626371 () Bool)

(assert (=> b!3301734 m!3626371))

(assert (=> b!3301734 m!3623619))

(assert (=> b!3301734 m!3626361))

(assert (=> b!3301734 m!3626359))

(assert (=> b!3301734 m!3626371))

(declare-fun m!3626373 () Bool)

(assert (=> b!3301734 m!3626373))

(declare-fun m!3626375 () Bool)

(assert (=> b!3301734 m!3626375))

(assert (=> b!3301734 m!3626357))

(assert (=> b!3301734 m!3623619))

(declare-fun m!3626377 () Bool)

(assert (=> b!3301734 m!3626377))

(declare-fun m!3626379 () Bool)

(assert (=> b!3301734 m!3626379))

(declare-fun m!3626381 () Bool)

(assert (=> b!3301734 m!3626381))

(assert (=> b!3301734 m!3626377))

(assert (=> b!3301734 m!3626367))

(assert (=> d!923647 d!924155))

(declare-fun d!924157 () Bool)

(assert (=> d!924157 (= (isEmpty!20598 (originalCharacters!6001 (h!41880 tokens!494))) (is-Nil!36459 (originalCharacters!6001 (h!41880 tokens!494))))))

(assert (=> d!923613 d!924157))

(declare-fun d!924159 () Bool)

(declare-fun lt!1119118 () Int)

(assert (=> d!924159 (>= lt!1119118 0)))

(declare-fun e!2053327 () Int)

(assert (=> d!924159 (= lt!1119118 e!2053327)))

(declare-fun c!560099 () Bool)

(assert (=> d!924159 (= c!560099 (is-Nil!36459 (_2!21112 (get!11636 lt!1118535))))))

(assert (=> d!924159 (= (size!27531 (_2!21112 (get!11636 lt!1118535))) lt!1119118)))

(declare-fun b!3301735 () Bool)

(assert (=> b!3301735 (= e!2053327 0)))

(declare-fun b!3301736 () Bool)

(assert (=> b!3301736 (= e!2053327 (+ 1 (size!27531 (t!252748 (_2!21112 (get!11636 lt!1118535))))))))

(assert (= (and d!924159 c!560099) b!3301735))

(assert (= (and d!924159 (not c!560099)) b!3301736))

(declare-fun m!3626383 () Bool)

(assert (=> b!3301736 m!3626383))

(assert (=> b!3300548 d!924159))

(assert (=> b!3300548 d!923803))

(assert (=> b!3300548 d!924025))

(declare-fun b!3301755 () Bool)

(declare-fun e!2053338 () List!36584)

(assert (=> b!3301755 (= e!2053338 lt!1118487)))

(declare-fun b!3301756 () Bool)

(declare-fun e!2053340 () Int)

(declare-fun call!240044 () Int)

(assert (=> b!3301756 (= e!2053340 (- call!240044 0))))

(declare-fun b!3301757 () Bool)

(declare-fun e!2053341 () Int)

(assert (=> b!3301757 (= e!2053341 call!240044)))

(declare-fun b!3301758 () Bool)

(assert (=> b!3301758 (= e!2053341 e!2053340)))

(declare-fun c!560109 () Bool)

(assert (=> b!3301758 (= c!560109 (>= 0 call!240044))))

(declare-fun d!924161 () Bool)

(declare-fun e!2053339 () Bool)

(assert (=> d!924161 e!2053339))

(declare-fun res!1339231 () Bool)

(assert (=> d!924161 (=> (not res!1339231) (not e!2053339))))

(declare-fun lt!1119121 () List!36584)

(assert (=> d!924161 (= res!1339231 (set.subset (content!4959 lt!1119121) (content!4959 lt!1118487)))))

(declare-fun e!2053342 () List!36584)

(assert (=> d!924161 (= lt!1119121 e!2053342)))

(declare-fun c!560111 () Bool)

(assert (=> d!924161 (= c!560111 (is-Nil!36460 lt!1118487))))

(assert (=> d!924161 (= (drop!1898 lt!1118487 0) lt!1119121)))

(declare-fun bm!240039 () Bool)

(assert (=> bm!240039 (= call!240044 (size!27539 lt!1118487))))

(declare-fun b!3301759 () Bool)

(assert (=> b!3301759 (= e!2053338 (drop!1898 (t!252749 lt!1118487) (- 0 1)))))

(declare-fun b!3301760 () Bool)

(assert (=> b!3301760 (= e!2053340 0)))

(declare-fun b!3301761 () Bool)

(assert (=> b!3301761 (= e!2053339 (= (size!27539 lt!1119121) e!2053341))))

(declare-fun c!560110 () Bool)

(assert (=> b!3301761 (= c!560110 (<= 0 0))))

(declare-fun b!3301762 () Bool)

(assert (=> b!3301762 (= e!2053342 e!2053338)))

(declare-fun c!560108 () Bool)

(assert (=> b!3301762 (= c!560108 (<= 0 0))))

(declare-fun b!3301763 () Bool)

(assert (=> b!3301763 (= e!2053342 Nil!36460)))

(assert (= (and d!924161 c!560111) b!3301763))

(assert (= (and d!924161 (not c!560111)) b!3301762))

(assert (= (and b!3301762 c!560108) b!3301755))

(assert (= (and b!3301762 (not c!560108)) b!3301759))

(assert (= (and d!924161 res!1339231) b!3301761))

(assert (= (and b!3301761 c!560110) b!3301757))

(assert (= (and b!3301761 (not c!560110)) b!3301758))

(assert (= (and b!3301758 c!560109) b!3301760))

(assert (= (and b!3301758 (not c!560109)) b!3301756))

(assert (= (or b!3301757 b!3301758 b!3301756) bm!240039))

(declare-fun m!3626385 () Bool)

(assert (=> d!924161 m!3626385))

(declare-fun m!3626387 () Bool)

(assert (=> d!924161 m!3626387))

(declare-fun m!3626389 () Bool)

(assert (=> bm!240039 m!3626389))

(declare-fun m!3626391 () Bool)

(assert (=> b!3301759 m!3626391))

(declare-fun m!3626393 () Bool)

(assert (=> b!3301761 m!3626393))

(assert (=> b!3300369 d!924161))

(declare-fun d!924163 () Bool)

(assert (=> d!924163 (= (head!7122 (drop!1898 lt!1118486 0)) (apply!8368 lt!1118486 0))))

(declare-fun lt!1119124 () Unit!51389)

(declare-fun choose!19122 (List!36584 Int) Unit!51389)

(assert (=> d!924163 (= lt!1119124 (choose!19122 lt!1118486 0))))

(declare-fun e!2053345 () Bool)

(assert (=> d!924163 e!2053345))

(declare-fun res!1339234 () Bool)

(assert (=> d!924163 (=> (not res!1339234) (not e!2053345))))

(assert (=> d!924163 (= res!1339234 (>= 0 0))))

(assert (=> d!924163 (= (lemmaDropApply!1066 lt!1118486 0) lt!1119124)))

(declare-fun b!3301766 () Bool)

(assert (=> b!3301766 (= e!2053345 (< 0 (size!27539 lt!1118486)))))

(assert (= (and d!924163 res!1339234) b!3301766))

(assert (=> d!924163 m!3624145))

(assert (=> d!924163 m!3624145))

(assert (=> d!924163 m!3624157))

(assert (=> d!924163 m!3624149))

(declare-fun m!3626395 () Bool)

(assert (=> d!924163 m!3626395))

(declare-fun m!3626397 () Bool)

(assert (=> b!3301766 m!3626397))

(assert (=> b!3300369 d!924163))

(declare-fun d!924165 () Bool)

(declare-fun lt!1119127 () Token!9940)

(assert (=> d!924165 (contains!6584 lt!1118486 lt!1119127)))

(declare-fun e!2053351 () Token!9940)

(assert (=> d!924165 (= lt!1119127 e!2053351)))

(declare-fun c!560114 () Bool)

(assert (=> d!924165 (= c!560114 (= 0 0))))

(declare-fun e!2053350 () Bool)

(assert (=> d!924165 e!2053350))

(declare-fun res!1339237 () Bool)

(assert (=> d!924165 (=> (not res!1339237) (not e!2053350))))

(assert (=> d!924165 (= res!1339237 (<= 0 0))))

(assert (=> d!924165 (= (apply!8368 lt!1118486 0) lt!1119127)))

(declare-fun b!3301773 () Bool)

(assert (=> b!3301773 (= e!2053350 (< 0 (size!27539 lt!1118486)))))

(declare-fun b!3301774 () Bool)

(assert (=> b!3301774 (= e!2053351 (head!7122 lt!1118486))))

(declare-fun b!3301775 () Bool)

(assert (=> b!3301775 (= e!2053351 (apply!8368 (tail!5259 lt!1118486) (- 0 1)))))

(assert (= (and d!924165 res!1339237) b!3301773))

(assert (= (and d!924165 c!560114) b!3301774))

(assert (= (and d!924165 (not c!560114)) b!3301775))

(declare-fun m!3626399 () Bool)

(assert (=> d!924165 m!3626399))

(assert (=> b!3301773 m!3626397))

(declare-fun m!3626401 () Bool)

(assert (=> b!3301774 m!3626401))

(declare-fun m!3626403 () Bool)

(assert (=> b!3301775 m!3626403))

(assert (=> b!3301775 m!3626403))

(declare-fun m!3626405 () Bool)

(assert (=> b!3301775 m!3626405))

(assert (=> b!3300369 d!924165))

(declare-fun d!924167 () Bool)

(declare-fun lt!1119128 () BalanceConc!21512)

(assert (=> d!924167 (= (list!13054 lt!1119128) (printListTailRec!590 thiss!18206 (dropList!1107 lt!1118277 (+ 0 1)) (list!13054 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 lt!1118277 0))))))))

(declare-fun e!2053353 () BalanceConc!21512)

(assert (=> d!924167 (= lt!1119128 e!2053353)))

(declare-fun c!560115 () Bool)

(assert (=> d!924167 (= c!560115 (>= (+ 0 1) (size!27538 lt!1118277)))))

(declare-fun e!2053352 () Bool)

(assert (=> d!924167 e!2053352))

(declare-fun res!1339238 () Bool)

(assert (=> d!924167 (=> (not res!1339238) (not e!2053352))))

(assert (=> d!924167 (= res!1339238 (>= (+ 0 1) 0))))

(assert (=> d!924167 (= (printTailRec!1373 thiss!18206 lt!1118277 (+ 0 1) (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 lt!1118277 0)))) lt!1119128)))

(declare-fun b!3301776 () Bool)

(assert (=> b!3301776 (= e!2053352 (<= (+ 0 1) (size!27538 lt!1118277)))))

(declare-fun b!3301777 () Bool)

(assert (=> b!3301777 (= e!2053353 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 lt!1118277 0))))))

(declare-fun b!3301778 () Bool)

(assert (=> b!3301778 (= e!2053353 (printTailRec!1373 thiss!18206 lt!1118277 (+ 0 1 1) (++!8817 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 lt!1118277 0))) (charsOf!3303 (apply!8367 lt!1118277 (+ 0 1))))))))

(declare-fun lt!1119130 () List!36584)

(assert (=> b!3301778 (= lt!1119130 (list!13055 lt!1118277))))

(declare-fun lt!1119134 () Unit!51389)

(assert (=> b!3301778 (= lt!1119134 (lemmaDropApply!1066 lt!1119130 (+ 0 1)))))

(assert (=> b!3301778 (= (head!7122 (drop!1898 lt!1119130 (+ 0 1))) (apply!8368 lt!1119130 (+ 0 1)))))

(declare-fun lt!1119129 () Unit!51389)

(assert (=> b!3301778 (= lt!1119129 lt!1119134)))

(declare-fun lt!1119131 () List!36584)

(assert (=> b!3301778 (= lt!1119131 (list!13055 lt!1118277))))

(declare-fun lt!1119132 () Unit!51389)

(assert (=> b!3301778 (= lt!1119132 (lemmaDropTail!950 lt!1119131 (+ 0 1)))))

(assert (=> b!3301778 (= (tail!5259 (drop!1898 lt!1119131 (+ 0 1))) (drop!1898 lt!1119131 (+ 0 1 1)))))

(declare-fun lt!1119133 () Unit!51389)

(assert (=> b!3301778 (= lt!1119133 lt!1119132)))

(assert (= (and d!924167 res!1339238) b!3301776))

(assert (= (and d!924167 c!560115) b!3301777))

(assert (= (and d!924167 (not c!560115)) b!3301778))

(declare-fun m!3626407 () Bool)

(assert (=> d!924167 m!3626407))

(declare-fun m!3626409 () Bool)

(assert (=> d!924167 m!3626409))

(declare-fun m!3626411 () Bool)

(assert (=> d!924167 m!3626411))

(declare-fun m!3626413 () Bool)

(assert (=> d!924167 m!3626413))

(assert (=> d!924167 m!3624135))

(assert (=> d!924167 m!3624141))

(assert (=> d!924167 m!3626411))

(assert (=> d!924167 m!3626409))

(assert (=> b!3301776 m!3624135))

(assert (=> b!3301778 m!3624107))

(declare-fun m!3626415 () Bool)

(assert (=> b!3301778 m!3626415))

(declare-fun m!3626417 () Bool)

(assert (=> b!3301778 m!3626417))

(declare-fun m!3626419 () Bool)

(assert (=> b!3301778 m!3626419))

(declare-fun m!3626421 () Bool)

(assert (=> b!3301778 m!3626421))

(declare-fun m!3626423 () Bool)

(assert (=> b!3301778 m!3626423))

(assert (=> b!3301778 m!3626417))

(declare-fun m!3626425 () Bool)

(assert (=> b!3301778 m!3626425))

(assert (=> b!3301778 m!3624141))

(assert (=> b!3301778 m!3626425))

(assert (=> b!3301778 m!3626419))

(declare-fun m!3626427 () Bool)

(assert (=> b!3301778 m!3626427))

(declare-fun m!3626429 () Bool)

(assert (=> b!3301778 m!3626429))

(declare-fun m!3626431 () Bool)

(assert (=> b!3301778 m!3626431))

(assert (=> b!3301778 m!3626429))

(declare-fun m!3626433 () Bool)

(assert (=> b!3301778 m!3626433))

(assert (=> b!3301778 m!3626423))

(declare-fun m!3626435 () Bool)

(assert (=> b!3301778 m!3626435))

(declare-fun m!3626437 () Bool)

(assert (=> b!3301778 m!3626437))

(assert (=> b!3300369 d!924167))

(declare-fun b!3301779 () Bool)

(declare-fun e!2053354 () List!36584)

(assert (=> b!3301779 (= e!2053354 lt!1118486)))

(declare-fun b!3301780 () Bool)

(declare-fun e!2053356 () Int)

(declare-fun call!240045 () Int)

(assert (=> b!3301780 (= e!2053356 (- call!240045 0))))

(declare-fun b!3301781 () Bool)

(declare-fun e!2053357 () Int)

(assert (=> b!3301781 (= e!2053357 call!240045)))

(declare-fun b!3301782 () Bool)

(assert (=> b!3301782 (= e!2053357 e!2053356)))

(declare-fun c!560117 () Bool)

(assert (=> b!3301782 (= c!560117 (>= 0 call!240045))))

(declare-fun d!924169 () Bool)

(declare-fun e!2053355 () Bool)

(assert (=> d!924169 e!2053355))

(declare-fun res!1339239 () Bool)

(assert (=> d!924169 (=> (not res!1339239) (not e!2053355))))

(declare-fun lt!1119135 () List!36584)

(assert (=> d!924169 (= res!1339239 (set.subset (content!4959 lt!1119135) (content!4959 lt!1118486)))))

(declare-fun e!2053358 () List!36584)

(assert (=> d!924169 (= lt!1119135 e!2053358)))

(declare-fun c!560119 () Bool)

(assert (=> d!924169 (= c!560119 (is-Nil!36460 lt!1118486))))

(assert (=> d!924169 (= (drop!1898 lt!1118486 0) lt!1119135)))

(declare-fun bm!240040 () Bool)

(assert (=> bm!240040 (= call!240045 (size!27539 lt!1118486))))

(declare-fun b!3301783 () Bool)

(assert (=> b!3301783 (= e!2053354 (drop!1898 (t!252749 lt!1118486) (- 0 1)))))

(declare-fun b!3301784 () Bool)

(assert (=> b!3301784 (= e!2053356 0)))

(declare-fun b!3301785 () Bool)

(assert (=> b!3301785 (= e!2053355 (= (size!27539 lt!1119135) e!2053357))))

(declare-fun c!560118 () Bool)

(assert (=> b!3301785 (= c!560118 (<= 0 0))))

(declare-fun b!3301786 () Bool)

(assert (=> b!3301786 (= e!2053358 e!2053354)))

(declare-fun c!560116 () Bool)

(assert (=> b!3301786 (= c!560116 (<= 0 0))))

(declare-fun b!3301787 () Bool)

(assert (=> b!3301787 (= e!2053358 Nil!36460)))

(assert (= (and d!924169 c!560119) b!3301787))

(assert (= (and d!924169 (not c!560119)) b!3301786))

(assert (= (and b!3301786 c!560116) b!3301779))

(assert (= (and b!3301786 (not c!560116)) b!3301783))

(assert (= (and d!924169 res!1339239) b!3301785))

(assert (= (and b!3301785 c!560118) b!3301781))

(assert (= (and b!3301785 (not c!560118)) b!3301782))

(assert (= (and b!3301782 c!560117) b!3301784))

(assert (= (and b!3301782 (not c!560117)) b!3301780))

(assert (= (or b!3301781 b!3301782 b!3301780) bm!240040))

(declare-fun m!3626439 () Bool)

(assert (=> d!924169 m!3626439))

(declare-fun m!3626441 () Bool)

(assert (=> d!924169 m!3626441))

(assert (=> bm!240040 m!3626397))

(declare-fun m!3626443 () Bool)

(assert (=> b!3301783 m!3626443))

(declare-fun m!3626445 () Bool)

(assert (=> b!3301785 m!3626445))

(assert (=> b!3300369 d!924169))

(declare-fun d!924171 () Bool)

(declare-fun lt!1119136 () BalanceConc!21512)

(assert (=> d!924171 (= (list!13054 lt!1119136) (originalCharacters!6001 (apply!8367 lt!1118277 0)))))

(assert (=> d!924171 (= lt!1119136 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0)))) (value!171141 (apply!8367 lt!1118277 0))))))

(assert (=> d!924171 (= (charsOf!3303 (apply!8367 lt!1118277 0)) lt!1119136)))

(declare-fun b_lambda!92079 () Bool)

(assert (=> (not b_lambda!92079) (not d!924171)))

(declare-fun t!252908 () Bool)

(declare-fun tb!170985 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0))))) t!252908) tb!170985))

(declare-fun b!3301788 () Bool)

(declare-fun e!2053359 () Bool)

(declare-fun tp!1033807 () Bool)

(assert (=> b!3301788 (= e!2053359 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0)))) (value!171141 (apply!8367 lt!1118277 0))))) tp!1033807))))

(declare-fun result!213738 () Bool)

(assert (=> tb!170985 (= result!213738 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0)))) (value!171141 (apply!8367 lt!1118277 0)))) e!2053359))))

(assert (= tb!170985 b!3301788))

(declare-fun m!3626447 () Bool)

(assert (=> b!3301788 m!3626447))

(declare-fun m!3626449 () Bool)

(assert (=> tb!170985 m!3626449))

(assert (=> d!924171 t!252908))

(declare-fun b_and!225981 () Bool)

(assert (= b_and!225951 (and (=> t!252908 result!213738) b_and!225981)))

(declare-fun t!252910 () Bool)

(declare-fun tb!170987 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0))))) t!252910) tb!170987))

(declare-fun result!213740 () Bool)

(assert (= result!213740 result!213738))

(assert (=> d!924171 t!252910))

(declare-fun b_and!225983 () Bool)

(assert (= b_and!225953 (and (=> t!252910 result!213740) b_and!225983)))

(declare-fun tb!170989 () Bool)

(declare-fun t!252912 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0))))) t!252912) tb!170989))

(declare-fun result!213742 () Bool)

(assert (= result!213742 result!213738))

(assert (=> d!924171 t!252912))

(declare-fun b_and!225985 () Bool)

(assert (= b_and!225955 (and (=> t!252912 result!213742) b_and!225985)))

(declare-fun tb!170991 () Bool)

(declare-fun t!252914 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0))))) t!252914) tb!170991))

(declare-fun result!213744 () Bool)

(assert (= result!213744 result!213738))

(assert (=> d!924171 t!252914))

(declare-fun b_and!225987 () Bool)

(assert (= b_and!225957 (and (=> t!252914 result!213744) b_and!225987)))

(declare-fun t!252916 () Bool)

(declare-fun tb!170993 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0))))) t!252916) tb!170993))

(declare-fun result!213746 () Bool)

(assert (= result!213746 result!213738))

(assert (=> d!924171 t!252916))

(declare-fun b_and!225989 () Bool)

(assert (= b_and!225959 (and (=> t!252916 result!213746) b_and!225989)))

(declare-fun m!3626451 () Bool)

(assert (=> d!924171 m!3626451))

(declare-fun m!3626453 () Bool)

(assert (=> d!924171 m!3626453))

(assert (=> b!3300369 d!924171))

(declare-fun d!924173 () Bool)

(assert (=> d!924173 (= (tail!5259 (drop!1898 lt!1118487 0)) (t!252749 (drop!1898 lt!1118487 0)))))

(assert (=> b!3300369 d!924173))

(declare-fun b!3301798 () Bool)

(declare-fun res!1339250 () Bool)

(declare-fun e!2053362 () Bool)

(assert (=> b!3301798 (=> (not res!1339250) (not e!2053362))))

(declare-fun height!1598 (Conc!10949) Int)

(declare-fun ++!8820 (Conc!10949 Conc!10949) Conc!10949)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3301798 (= res!1339250 (<= (height!1598 (++!8820 (c!559681 (BalanceConc!21513 Empty!10949)) (c!559681 (charsOf!3303 (apply!8367 lt!1118277 0))))) (+ (max!0 (height!1598 (c!559681 (BalanceConc!21513 Empty!10949))) (height!1598 (c!559681 (charsOf!3303 (apply!8367 lt!1118277 0))))) 1)))))

(declare-fun b!3301799 () Bool)

(declare-fun res!1339249 () Bool)

(assert (=> b!3301799 (=> (not res!1339249) (not e!2053362))))

(assert (=> b!3301799 (= res!1339249 (>= (height!1598 (++!8820 (c!559681 (BalanceConc!21513 Empty!10949)) (c!559681 (charsOf!3303 (apply!8367 lt!1118277 0))))) (max!0 (height!1598 (c!559681 (BalanceConc!21513 Empty!10949))) (height!1598 (c!559681 (charsOf!3303 (apply!8367 lt!1118277 0)))))))))

(declare-fun b!3301800 () Bool)

(declare-fun lt!1119139 () BalanceConc!21512)

(assert (=> b!3301800 (= e!2053362 (= (list!13054 lt!1119139) (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) (list!13054 (charsOf!3303 (apply!8367 lt!1118277 0))))))))

(declare-fun b!3301797 () Bool)

(declare-fun res!1339251 () Bool)

(assert (=> b!3301797 (=> (not res!1339251) (not e!2053362))))

(assert (=> b!3301797 (= res!1339251 (isBalanced!3270 (++!8820 (c!559681 (BalanceConc!21513 Empty!10949)) (c!559681 (charsOf!3303 (apply!8367 lt!1118277 0))))))))

(declare-fun d!924175 () Bool)

(assert (=> d!924175 e!2053362))

(declare-fun res!1339248 () Bool)

(assert (=> d!924175 (=> (not res!1339248) (not e!2053362))))

(declare-fun appendAssocInst!754 (Conc!10949 Conc!10949) Bool)

(assert (=> d!924175 (= res!1339248 (appendAssocInst!754 (c!559681 (BalanceConc!21513 Empty!10949)) (c!559681 (charsOf!3303 (apply!8367 lt!1118277 0)))))))

(assert (=> d!924175 (= lt!1119139 (BalanceConc!21513 (++!8820 (c!559681 (BalanceConc!21513 Empty!10949)) (c!559681 (charsOf!3303 (apply!8367 lt!1118277 0))))))))

(assert (=> d!924175 (= (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (apply!8367 lt!1118277 0))) lt!1119139)))

(assert (= (and d!924175 res!1339248) b!3301797))

(assert (= (and b!3301797 res!1339251) b!3301798))

(assert (= (and b!3301798 res!1339250) b!3301799))

(assert (= (and b!3301799 res!1339249) b!3301800))

(declare-fun m!3626455 () Bool)

(assert (=> b!3301799 m!3626455))

(declare-fun m!3626457 () Bool)

(assert (=> b!3301799 m!3626457))

(assert (=> b!3301799 m!3626455))

(declare-fun m!3626459 () Bool)

(assert (=> b!3301799 m!3626459))

(declare-fun m!3626461 () Bool)

(assert (=> b!3301799 m!3626461))

(declare-fun m!3626463 () Bool)

(assert (=> b!3301799 m!3626463))

(assert (=> b!3301799 m!3626459))

(assert (=> b!3301799 m!3626461))

(assert (=> b!3301798 m!3626455))

(assert (=> b!3301798 m!3626457))

(assert (=> b!3301798 m!3626455))

(assert (=> b!3301798 m!3626459))

(assert (=> b!3301798 m!3626461))

(assert (=> b!3301798 m!3626463))

(assert (=> b!3301798 m!3626459))

(assert (=> b!3301798 m!3626461))

(assert (=> b!3301797 m!3626455))

(assert (=> b!3301797 m!3626455))

(declare-fun m!3626465 () Bool)

(assert (=> b!3301797 m!3626465))

(declare-fun m!3626467 () Bool)

(assert (=> d!924175 m!3626467))

(assert (=> d!924175 m!3626455))

(declare-fun m!3626469 () Bool)

(assert (=> b!3301800 m!3626469))

(assert (=> b!3301800 m!3624131))

(assert (=> b!3301800 m!3624147))

(declare-fun m!3626471 () Bool)

(assert (=> b!3301800 m!3626471))

(assert (=> b!3301800 m!3624131))

(assert (=> b!3301800 m!3626471))

(declare-fun m!3626473 () Bool)

(assert (=> b!3301800 m!3626473))

(assert (=> b!3300369 d!924175))

(declare-fun d!924177 () Bool)

(assert (=> d!924177 (= (list!13055 lt!1118277) (list!13061 (c!559682 lt!1118277)))))

(declare-fun bs!548671 () Bool)

(assert (= bs!548671 d!924177))

(assert (=> bs!548671 m!3625341))

(assert (=> b!3300369 d!924177))

(declare-fun d!924179 () Bool)

(assert (=> d!924179 (= (head!7122 (drop!1898 lt!1118486 0)) (h!41880 (drop!1898 lt!1118486 0)))))

(assert (=> b!3300369 d!924179))

(declare-fun d!924181 () Bool)

(declare-fun lt!1119140 () Token!9940)

(assert (=> d!924181 (= lt!1119140 (apply!8368 (list!13055 lt!1118277) 0))))

(assert (=> d!924181 (= lt!1119140 (apply!8371 (c!559682 lt!1118277) 0))))

(declare-fun e!2053363 () Bool)

(assert (=> d!924181 e!2053363))

(declare-fun res!1339252 () Bool)

(assert (=> d!924181 (=> (not res!1339252) (not e!2053363))))

(assert (=> d!924181 (= res!1339252 (<= 0 0))))

(assert (=> d!924181 (= (apply!8367 lt!1118277 0) lt!1119140)))

(declare-fun b!3301801 () Bool)

(assert (=> b!3301801 (= e!2053363 (< 0 (size!27538 lt!1118277)))))

(assert (= (and d!924181 res!1339252) b!3301801))

(assert (=> d!924181 m!3624107))

(assert (=> d!924181 m!3624107))

(declare-fun m!3626475 () Bool)

(assert (=> d!924181 m!3626475))

(declare-fun m!3626477 () Bool)

(assert (=> d!924181 m!3626477))

(assert (=> b!3301801 m!3624135))

(assert (=> b!3300369 d!924181))

(declare-fun b!3301802 () Bool)

(declare-fun e!2053364 () List!36584)

(assert (=> b!3301802 (= e!2053364 lt!1118487)))

(declare-fun b!3301803 () Bool)

(declare-fun e!2053366 () Int)

(declare-fun call!240046 () Int)

(assert (=> b!3301803 (= e!2053366 (- call!240046 (+ 0 1)))))

(declare-fun b!3301804 () Bool)

(declare-fun e!2053367 () Int)

(assert (=> b!3301804 (= e!2053367 call!240046)))

(declare-fun b!3301805 () Bool)

(assert (=> b!3301805 (= e!2053367 e!2053366)))

(declare-fun c!560124 () Bool)

(assert (=> b!3301805 (= c!560124 (>= (+ 0 1) call!240046))))

(declare-fun d!924183 () Bool)

(declare-fun e!2053365 () Bool)

(assert (=> d!924183 e!2053365))

(declare-fun res!1339253 () Bool)

(assert (=> d!924183 (=> (not res!1339253) (not e!2053365))))

(declare-fun lt!1119141 () List!36584)

(assert (=> d!924183 (= res!1339253 (set.subset (content!4959 lt!1119141) (content!4959 lt!1118487)))))

(declare-fun e!2053368 () List!36584)

(assert (=> d!924183 (= lt!1119141 e!2053368)))

(declare-fun c!560126 () Bool)

(assert (=> d!924183 (= c!560126 (is-Nil!36460 lt!1118487))))

(assert (=> d!924183 (= (drop!1898 lt!1118487 (+ 0 1)) lt!1119141)))

(declare-fun bm!240041 () Bool)

(assert (=> bm!240041 (= call!240046 (size!27539 lt!1118487))))

(declare-fun b!3301806 () Bool)

(assert (=> b!3301806 (= e!2053364 (drop!1898 (t!252749 lt!1118487) (- (+ 0 1) 1)))))

(declare-fun b!3301807 () Bool)

(assert (=> b!3301807 (= e!2053366 0)))

(declare-fun b!3301808 () Bool)

(assert (=> b!3301808 (= e!2053365 (= (size!27539 lt!1119141) e!2053367))))

(declare-fun c!560125 () Bool)

(assert (=> b!3301808 (= c!560125 (<= (+ 0 1) 0))))

(declare-fun b!3301809 () Bool)

(assert (=> b!3301809 (= e!2053368 e!2053364)))

(declare-fun c!560123 () Bool)

(assert (=> b!3301809 (= c!560123 (<= (+ 0 1) 0))))

(declare-fun b!3301810 () Bool)

(assert (=> b!3301810 (= e!2053368 Nil!36460)))

(assert (= (and d!924183 c!560126) b!3301810))

(assert (= (and d!924183 (not c!560126)) b!3301809))

(assert (= (and b!3301809 c!560123) b!3301802))

(assert (= (and b!3301809 (not c!560123)) b!3301806))

(assert (= (and d!924183 res!1339253) b!3301808))

(assert (= (and b!3301808 c!560125) b!3301804))

(assert (= (and b!3301808 (not c!560125)) b!3301805))

(assert (= (and b!3301805 c!560124) b!3301807))

(assert (= (and b!3301805 (not c!560124)) b!3301803))

(assert (= (or b!3301804 b!3301805 b!3301803) bm!240041))

(declare-fun m!3626479 () Bool)

(assert (=> d!924183 m!3626479))

(assert (=> d!924183 m!3626387))

(assert (=> bm!240041 m!3626389))

(declare-fun m!3626481 () Bool)

(assert (=> b!3301806 m!3626481))

(declare-fun m!3626483 () Bool)

(assert (=> b!3301808 m!3626483))

(assert (=> b!3300369 d!924183))

(declare-fun d!924185 () Bool)

(assert (=> d!924185 (= (tail!5259 (drop!1898 lt!1118487 0)) (drop!1898 lt!1118487 (+ 0 1)))))

(declare-fun lt!1119144 () Unit!51389)

(declare-fun choose!19123 (List!36584 Int) Unit!51389)

(assert (=> d!924185 (= lt!1119144 (choose!19123 lt!1118487 0))))

(declare-fun e!2053371 () Bool)

(assert (=> d!924185 e!2053371))

(declare-fun res!1339256 () Bool)

(assert (=> d!924185 (=> (not res!1339256) (not e!2053371))))

(assert (=> d!924185 (= res!1339256 (>= 0 0))))

(assert (=> d!924185 (= (lemmaDropTail!950 lt!1118487 0) lt!1119144)))

(declare-fun b!3301813 () Bool)

(assert (=> b!3301813 (= e!2053371 (< 0 (size!27539 lt!1118487)))))

(assert (= (and d!924185 res!1339256) b!3301813))

(assert (=> d!924185 m!3624151))

(assert (=> d!924185 m!3624151))

(assert (=> d!924185 m!3624155))

(assert (=> d!924185 m!3624159))

(declare-fun m!3626485 () Bool)

(assert (=> d!924185 m!3626485))

(assert (=> b!3301813 m!3626389))

(assert (=> b!3300369 d!924185))

(declare-fun d!924187 () Bool)

(assert (=> d!924187 (= (isEmpty!20599 (_1!21111 lt!1118610)) (is-Nil!36460 (_1!21111 lt!1118610)))))

(assert (=> b!3300799 d!924187))

(declare-fun d!924189 () Bool)

(assert (=> d!924189 (= (list!13054 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))) (list!13059 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))))))

(declare-fun bs!548672 () Bool)

(assert (= bs!548672 d!924189))

(declare-fun m!3626487 () Bool)

(assert (=> bs!548672 m!3626487))

(assert (=> b!3300791 d!924189))

(declare-fun d!924191 () Bool)

(assert (=> d!924191 (= (isEmpty!20604 lt!1118276) (not (is-Some!7269 lt!1118276)))))

(assert (=> d!923419 d!924191))

(assert (=> b!3300342 d!923949))

(declare-fun d!924193 () Bool)

(declare-fun c!560127 () Bool)

(assert (=> d!924193 (= c!560127 (is-Nil!36460 lt!1118497))))

(declare-fun e!2053372 () (Set Token!9940))

(assert (=> d!924193 (= (content!4959 lt!1118497) e!2053372)))

(declare-fun b!3301814 () Bool)

(assert (=> b!3301814 (= e!2053372 (as set.empty (Set Token!9940)))))

(declare-fun b!3301815 () Bool)

(assert (=> b!3301815 (= e!2053372 (set.union (set.insert (h!41880 lt!1118497) (as set.empty (Set Token!9940))) (content!4959 (t!252749 lt!1118497))))))

(assert (= (and d!924193 c!560127) b!3301814))

(assert (= (and d!924193 (not c!560127)) b!3301815))

(declare-fun m!3626489 () Bool)

(assert (=> b!3301815 m!3626489))

(declare-fun m!3626491 () Bool)

(assert (=> b!3301815 m!3626491))

(assert (=> b!3300413 d!924193))

(declare-fun d!924195 () Bool)

(declare-fun c!560128 () Bool)

(assert (=> d!924195 (= c!560128 (is-Nil!36460 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))

(declare-fun e!2053373 () (Set Token!9940))

(assert (=> d!924195 (= (content!4959 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))) e!2053373)))

(declare-fun b!3301816 () Bool)

(assert (=> b!3301816 (= e!2053373 (as set.empty (Set Token!9940)))))

(declare-fun b!3301817 () Bool)

(assert (=> b!3301817 (= e!2053373 (set.union (set.insert (h!41880 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))) (as set.empty (Set Token!9940))) (content!4959 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))))

(assert (= (and d!924195 c!560128) b!3301816))

(assert (= (and d!924195 (not c!560128)) b!3301817))

(declare-fun m!3626493 () Bool)

(assert (=> b!3301817 m!3626493))

(assert (=> b!3301817 m!3626237))

(assert (=> b!3300413 d!924195))

(declare-fun b!3301818 () Bool)

(declare-fun res!1339262 () Bool)

(declare-fun e!2053375 () Bool)

(assert (=> b!3301818 (=> (not res!1339262) (not e!2053375))))

(declare-fun lt!1119147 () Option!7269)

(assert (=> b!3301818 (= res!1339262 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119147)))) (_2!21112 (get!11636 lt!1119147))) lt!1118249))))

(declare-fun b!3301819 () Bool)

(declare-fun res!1339259 () Bool)

(assert (=> b!3301819 (=> (not res!1339259) (not e!2053375))))

(assert (=> b!3301819 (= res!1339259 (= (value!171141 (_1!21112 (get!11636 lt!1119147))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1119147)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1119147)))))))))

(declare-fun d!924197 () Bool)

(declare-fun e!2053374 () Bool)

(assert (=> d!924197 e!2053374))

(declare-fun res!1339263 () Bool)

(assert (=> d!924197 (=> res!1339263 e!2053374)))

(assert (=> d!924197 (= res!1339263 (isEmpty!20606 lt!1119147))))

(declare-fun e!2053376 () Option!7269)

(assert (=> d!924197 (= lt!1119147 e!2053376)))

(declare-fun c!560129 () Bool)

(assert (=> d!924197 (= c!560129 (and (is-Cons!36461 (t!252750 rules!2135)) (is-Nil!36461 (t!252750 (t!252750 rules!2135)))))))

(declare-fun lt!1119146 () Unit!51389)

(declare-fun lt!1119148 () Unit!51389)

(assert (=> d!924197 (= lt!1119146 lt!1119148)))

(assert (=> d!924197 (isPrefix!2804 lt!1118249 lt!1118249)))

(assert (=> d!924197 (= lt!1119148 (lemmaIsPrefixRefl!1763 lt!1118249 lt!1118249))))

(assert (=> d!924197 (rulesValidInductive!1803 thiss!18206 (t!252750 rules!2135))))

(assert (=> d!924197 (= (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) lt!1118249) lt!1119147)))

(declare-fun b!3301820 () Bool)

(assert (=> b!3301820 (= e!2053375 (contains!6585 (t!252750 rules!2135) (rule!7785 (_1!21112 (get!11636 lt!1119147)))))))

(declare-fun call!240047 () Option!7269)

(declare-fun bm!240042 () Bool)

(assert (=> bm!240042 (= call!240047 (maxPrefixOneRule!1641 thiss!18206 (h!41881 (t!252750 rules!2135)) lt!1118249))))

(declare-fun b!3301821 () Bool)

(assert (=> b!3301821 (= e!2053374 e!2053375)))

(declare-fun res!1339257 () Bool)

(assert (=> b!3301821 (=> (not res!1339257) (not e!2053375))))

(assert (=> b!3301821 (= res!1339257 (isDefined!5636 lt!1119147))))

(declare-fun b!3301822 () Bool)

(declare-fun lt!1119145 () Option!7269)

(declare-fun lt!1119149 () Option!7269)

(assert (=> b!3301822 (= e!2053376 (ite (and (is-None!7268 lt!1119145) (is-None!7268 lt!1119149)) None!7268 (ite (is-None!7268 lt!1119149) lt!1119145 (ite (is-None!7268 lt!1119145) lt!1119149 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1119145))) (size!27530 (_1!21112 (v!36014 lt!1119149)))) lt!1119145 lt!1119149)))))))

(assert (=> b!3301822 (= lt!1119145 call!240047)))

(assert (=> b!3301822 (= lt!1119149 (maxPrefix!2504 thiss!18206 (t!252750 (t!252750 rules!2135)) lt!1118249))))

(declare-fun b!3301823 () Bool)

(declare-fun res!1339260 () Bool)

(assert (=> b!3301823 (=> (not res!1339260) (not e!2053375))))

(assert (=> b!3301823 (= res!1339260 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119147)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1119147)))))))

(declare-fun b!3301824 () Bool)

(declare-fun res!1339261 () Bool)

(assert (=> b!3301824 (=> (not res!1339261) (not e!2053375))))

(assert (=> b!3301824 (= res!1339261 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1119147)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119147))))))))

(declare-fun b!3301825 () Bool)

(assert (=> b!3301825 (= e!2053376 call!240047)))

(declare-fun b!3301826 () Bool)

(declare-fun res!1339258 () Bool)

(assert (=> b!3301826 (=> (not res!1339258) (not e!2053375))))

(assert (=> b!3301826 (= res!1339258 (< (size!27531 (_2!21112 (get!11636 lt!1119147))) (size!27531 lt!1118249)))))

(assert (= (and d!924197 c!560129) b!3301825))

(assert (= (and d!924197 (not c!560129)) b!3301822))

(assert (= (or b!3301825 b!3301822) bm!240042))

(assert (= (and d!924197 (not res!1339263)) b!3301821))

(assert (= (and b!3301821 res!1339257) b!3301823))

(assert (= (and b!3301823 res!1339260) b!3301826))

(assert (= (and b!3301826 res!1339258) b!3301818))

(assert (= (and b!3301818 res!1339262) b!3301819))

(assert (= (and b!3301819 res!1339259) b!3301824))

(assert (= (and b!3301824 res!1339261) b!3301820))

(declare-fun m!3626495 () Bool)

(assert (=> b!3301824 m!3626495))

(declare-fun m!3626497 () Bool)

(assert (=> b!3301824 m!3626497))

(assert (=> b!3301824 m!3626497))

(declare-fun m!3626499 () Bool)

(assert (=> b!3301824 m!3626499))

(assert (=> b!3301824 m!3626499))

(declare-fun m!3626501 () Bool)

(assert (=> b!3301824 m!3626501))

(assert (=> b!3301823 m!3626495))

(assert (=> b!3301823 m!3626497))

(assert (=> b!3301823 m!3626497))

(assert (=> b!3301823 m!3626499))

(declare-fun m!3626503 () Bool)

(assert (=> bm!240042 m!3626503))

(assert (=> b!3301819 m!3626495))

(declare-fun m!3626505 () Bool)

(assert (=> b!3301819 m!3626505))

(assert (=> b!3301819 m!3626505))

(declare-fun m!3626507 () Bool)

(assert (=> b!3301819 m!3626507))

(declare-fun m!3626509 () Bool)

(assert (=> b!3301821 m!3626509))

(declare-fun m!3626511 () Bool)

(assert (=> d!924197 m!3626511))

(assert (=> d!924197 m!3624365))

(assert (=> d!924197 m!3624367))

(assert (=> d!924197 m!3625547))

(assert (=> b!3301820 m!3626495))

(declare-fun m!3626513 () Bool)

(assert (=> b!3301820 m!3626513))

(declare-fun m!3626515 () Bool)

(assert (=> b!3301822 m!3626515))

(assert (=> b!3301826 m!3626495))

(declare-fun m!3626517 () Bool)

(assert (=> b!3301826 m!3626517))

(assert (=> b!3301826 m!3624375))

(assert (=> b!3301818 m!3626495))

(assert (=> b!3301818 m!3626497))

(assert (=> b!3301818 m!3626497))

(assert (=> b!3301818 m!3626499))

(assert (=> b!3301818 m!3626499))

(declare-fun m!3626519 () Bool)

(assert (=> b!3301818 m!3626519))

(assert (=> b!3300553 d!924197))

(declare-fun bs!548673 () Bool)

(declare-fun d!924199 () Bool)

(assert (= bs!548673 (and d!924199 d!924063)))

(declare-fun lambda!118886 () Int)

(assert (=> bs!548673 (= lambda!118886 lambda!118882)))

(assert (=> d!924199 true))

(declare-fun lt!1119152 () Bool)

(assert (=> d!924199 (= lt!1119152 (rulesValidInductive!1803 thiss!18206 rules!2135))))

(assert (=> d!924199 (= lt!1119152 (forall!7546 rules!2135 lambda!118886))))

(assert (=> d!924199 (= (rulesValid!1945 thiss!18206 rules!2135) lt!1119152)))

(declare-fun bs!548674 () Bool)

(assert (= bs!548674 d!924199))

(assert (=> bs!548674 m!3624335))

(declare-fun m!3626521 () Bool)

(assert (=> bs!548674 m!3626521))

(assert (=> d!923607 d!924199))

(declare-fun bs!548675 () Bool)

(declare-fun d!924201 () Bool)

(assert (= bs!548675 (and d!924201 b!3299975)))

(declare-fun lambda!118889 () Int)

(assert (=> bs!548675 (not (= lambda!118889 lambda!118850))))

(declare-fun bs!548676 () Bool)

(assert (= bs!548676 (and d!924201 d!923499)))

(assert (=> bs!548676 (= lambda!118889 lambda!118873)))

(declare-fun b!3301835 () Bool)

(declare-fun e!2053385 () Bool)

(assert (=> b!3301835 (= e!2053385 true)))

(declare-fun b!3301834 () Bool)

(declare-fun e!2053384 () Bool)

(assert (=> b!3301834 (= e!2053384 e!2053385)))

(declare-fun b!3301833 () Bool)

(declare-fun e!2053383 () Bool)

(assert (=> b!3301833 (= e!2053383 e!2053384)))

(assert (=> d!924201 e!2053383))

(assert (= b!3301834 b!3301835))

(assert (= b!3301833 b!3301834))

(assert (= (and d!924201 (is-Cons!36461 rules!2135)) b!3301833))

(assert (=> b!3301835 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (h!41881 rules!2135)))) (dynLambda!14922 order!18903 lambda!118889))))

(assert (=> b!3301835 (< (dynLambda!14923 order!18905 (toChars!7274 (transformation!5287 (h!41881 rules!2135)))) (dynLambda!14922 order!18903 lambda!118889))))

(assert (=> d!924201 true))

(declare-fun lt!1119155 () Bool)

(assert (=> d!924201 (= lt!1119155 (forall!7541 (list!13055 lt!1118251) lambda!118889))))

(declare-fun e!2053381 () Bool)

(assert (=> d!924201 (= lt!1119155 e!2053381)))

(declare-fun res!1339269 () Bool)

(assert (=> d!924201 (=> res!1339269 e!2053381)))

(assert (=> d!924201 (= res!1339269 (not (is-Cons!36460 (list!13055 lt!1118251))))))

(assert (=> d!924201 (not (isEmpty!20596 rules!2135))))

(assert (=> d!924201 (= (rulesProduceEachTokenIndividuallyList!1757 thiss!18206 rules!2135 (list!13055 lt!1118251)) lt!1119155)))

(declare-fun b!3301831 () Bool)

(declare-fun e!2053382 () Bool)

(assert (=> b!3301831 (= e!2053381 e!2053382)))

(declare-fun res!1339268 () Bool)

(assert (=> b!3301831 (=> (not res!1339268) (not e!2053382))))

(assert (=> b!3301831 (= res!1339268 (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 (h!41880 (list!13055 lt!1118251))))))

(declare-fun b!3301832 () Bool)

(assert (=> b!3301832 (= e!2053382 (rulesProduceEachTokenIndividuallyList!1757 thiss!18206 rules!2135 (t!252749 (list!13055 lt!1118251))))))

(assert (= (and d!924201 (not res!1339269)) b!3301831))

(assert (= (and b!3301831 res!1339268) b!3301832))

(assert (=> d!924201 m!3624297))

(declare-fun m!3626523 () Bool)

(assert (=> d!924201 m!3626523))

(assert (=> d!924201 m!3623515))

(declare-fun m!3626525 () Bool)

(assert (=> b!3301831 m!3626525))

(declare-fun m!3626527 () Bool)

(assert (=> b!3301832 m!3626527))

(assert (=> b!3300500 d!924201))

(assert (=> b!3300500 d!923747))

(declare-fun d!924203 () Bool)

(declare-fun lt!1119156 () Int)

(assert (=> d!924203 (= lt!1119156 (size!27539 (list!13055 (_1!21113 lt!1118624))))))

(assert (=> d!924203 (= lt!1119156 (size!27541 (c!559682 (_1!21113 lt!1118624))))))

(assert (=> d!924203 (= (size!27538 (_1!21113 lt!1118624)) lt!1119156)))

(declare-fun bs!548677 () Bool)

(assert (= bs!548677 d!924203))

(assert (=> bs!548677 m!3624787))

(assert (=> bs!548677 m!3624787))

(declare-fun m!3626529 () Bool)

(assert (=> bs!548677 m!3626529))

(declare-fun m!3626531 () Bool)

(assert (=> bs!548677 m!3626531))

(assert (=> d!923627 d!924203))

(declare-fun b!3301836 () Bool)

(declare-fun e!2053389 () tuple2!35958)

(assert (=> b!3301836 (= e!2053389 (tuple2!35959 (BalanceConc!21515 Empty!10950) lt!1118258))))

(declare-fun lt!1119169 () Option!7273)

(declare-fun b!3301837 () Bool)

(declare-fun lt!1119163 () tuple2!35958)

(assert (=> b!3301837 (= lt!1119163 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119169))))))

(declare-fun e!2053386 () tuple2!35958)

(assert (=> b!3301837 (= e!2053386 (tuple2!35959 (prepend!1200 (_1!21113 lt!1119163) (_1!21119 (v!36033 lt!1119169))) (_2!21113 lt!1119163)))))

(declare-fun b!3301838 () Bool)

(declare-fun e!2053388 () tuple2!35958)

(assert (=> b!3301838 (= e!2053388 (tuple2!35959 (BalanceConc!21515 Empty!10950) lt!1118258))))

(declare-fun d!924205 () Bool)

(declare-fun e!2053387 () Bool)

(assert (=> d!924205 e!2053387))

(declare-fun res!1339270 () Bool)

(assert (=> d!924205 (=> (not res!1339270) (not e!2053387))))

(declare-fun lt!1119162 () tuple2!35958)

(assert (=> d!924205 (= res!1339270 (= (list!13055 (_1!21113 lt!1119162)) (list!13055 (_1!21113 (lexRec!704 thiss!18206 rules!2135 lt!1118258)))))))

(assert (=> d!924205 (= lt!1119162 e!2053389)))

(declare-fun c!560130 () Bool)

(declare-fun lt!1119181 () Option!7273)

(assert (=> d!924205 (= c!560130 (is-Some!7272 lt!1119181))))

(assert (=> d!924205 (= lt!1119181 (maxPrefixZipperSequenceV2!491 thiss!18206 rules!2135 lt!1118258 lt!1118258))))

(declare-fun lt!1119161 () Unit!51389)

(declare-fun lt!1119170 () Unit!51389)

(assert (=> d!924205 (= lt!1119161 lt!1119170)))

(declare-fun lt!1119157 () List!36583)

(declare-fun lt!1119183 () List!36583)

(assert (=> d!924205 (isSuffix!866 lt!1119157 (++!8815 lt!1119183 lt!1119157))))

(assert (=> d!924205 (= lt!1119170 (lemmaConcatTwoListThenFSndIsSuffix!551 lt!1119183 lt!1119157))))

(assert (=> d!924205 (= lt!1119157 (list!13054 lt!1118258))))

(assert (=> d!924205 (= lt!1119183 (list!13054 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!924205 (= (lexTailRecV2!961 thiss!18206 rules!2135 lt!1118258 (BalanceConc!21513 Empty!10949) lt!1118258 (BalanceConc!21515 Empty!10950)) lt!1119162)))

(declare-fun b!3301839 () Bool)

(assert (=> b!3301839 (= e!2053387 (= (list!13054 (_2!21113 lt!1119162)) (list!13054 (_2!21113 (lexRec!704 thiss!18206 rules!2135 lt!1118258)))))))

(declare-fun b!3301840 () Bool)

(declare-fun lt!1119158 () BalanceConc!21512)

(assert (=> b!3301840 (= e!2053386 (tuple2!35959 (BalanceConc!21515 Empty!10950) lt!1119158))))

(declare-fun b!3301841 () Bool)

(declare-fun lt!1119175 () BalanceConc!21512)

(assert (=> b!3301841 (= e!2053389 (lexTailRecV2!961 thiss!18206 rules!2135 lt!1118258 lt!1119175 (_2!21119 (v!36033 lt!1119181)) (append!896 (BalanceConc!21515 Empty!10950) (_1!21119 (v!36033 lt!1119181)))))))

(declare-fun lt!1119168 () tuple2!35958)

(assert (=> b!3301841 (= lt!1119168 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119181))))))

(declare-fun lt!1119187 () List!36583)

(assert (=> b!3301841 (= lt!1119187 (list!13054 (BalanceConc!21513 Empty!10949)))))

(declare-fun lt!1119167 () List!36583)

(assert (=> b!3301841 (= lt!1119167 (list!13054 (charsOf!3303 (_1!21119 (v!36033 lt!1119181)))))))

(declare-fun lt!1119174 () List!36583)

(assert (=> b!3301841 (= lt!1119174 (list!13054 (_2!21119 (v!36033 lt!1119181))))))

(declare-fun lt!1119159 () Unit!51389)

(assert (=> b!3301841 (= lt!1119159 (lemmaConcatAssociativity!1813 lt!1119187 lt!1119167 lt!1119174))))

(assert (=> b!3301841 (= (++!8815 (++!8815 lt!1119187 lt!1119167) lt!1119174) (++!8815 lt!1119187 (++!8815 lt!1119167 lt!1119174)))))

(declare-fun lt!1119184 () Unit!51389)

(assert (=> b!3301841 (= lt!1119184 lt!1119159)))

(declare-fun lt!1119166 () Option!7273)

(assert (=> b!3301841 (= lt!1119166 (maxPrefixZipperSequence!1097 thiss!18206 rules!2135 lt!1118258))))

(declare-fun c!560131 () Bool)

(assert (=> b!3301841 (= c!560131 (is-Some!7272 lt!1119166))))

(assert (=> b!3301841 (= (lexRec!704 thiss!18206 rules!2135 lt!1118258) e!2053388)))

(declare-fun lt!1119178 () Unit!51389)

(declare-fun Unit!51403 () Unit!51389)

(assert (=> b!3301841 (= lt!1119178 Unit!51403)))

(declare-fun lt!1119176 () List!36584)

(assert (=> b!3301841 (= lt!1119176 (list!13055 (BalanceConc!21515 Empty!10950)))))

(declare-fun lt!1119172 () List!36584)

(assert (=> b!3301841 (= lt!1119172 (Cons!36460 (_1!21119 (v!36033 lt!1119181)) Nil!36460))))

(declare-fun lt!1119173 () List!36584)

(assert (=> b!3301841 (= lt!1119173 (list!13055 (_1!21113 lt!1119168)))))

(declare-fun lt!1119177 () Unit!51389)

(assert (=> b!3301841 (= lt!1119177 (lemmaConcatAssociativity!1814 lt!1119176 lt!1119172 lt!1119173))))

(assert (=> b!3301841 (= (++!8819 (++!8819 lt!1119176 lt!1119172) lt!1119173) (++!8819 lt!1119176 (++!8819 lt!1119172 lt!1119173)))))

(declare-fun lt!1119182 () Unit!51389)

(assert (=> b!3301841 (= lt!1119182 lt!1119177)))

(declare-fun lt!1119160 () List!36583)

(assert (=> b!3301841 (= lt!1119160 (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) (list!13054 (charsOf!3303 (_1!21119 (v!36033 lt!1119181))))))))

(declare-fun lt!1119165 () List!36583)

(assert (=> b!3301841 (= lt!1119165 (list!13054 (_2!21119 (v!36033 lt!1119181))))))

(declare-fun lt!1119180 () List!36584)

(assert (=> b!3301841 (= lt!1119180 (list!13055 (append!896 (BalanceConc!21515 Empty!10950) (_1!21119 (v!36033 lt!1119181)))))))

(declare-fun lt!1119164 () Unit!51389)

(assert (=> b!3301841 (= lt!1119164 (lemmaLexThenLexPrefix!469 thiss!18206 rules!2135 lt!1119160 lt!1119165 lt!1119180 (list!13055 (_1!21113 lt!1119168)) (list!13054 (_2!21113 lt!1119168))))))

(assert (=> b!3301841 (= (lexList!1350 thiss!18206 rules!2135 lt!1119160) (tuple2!35955 lt!1119180 Nil!36459))))

(declare-fun lt!1119171 () Unit!51389)

(assert (=> b!3301841 (= lt!1119171 lt!1119164)))

(assert (=> b!3301841 (= lt!1119158 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119181)))))))

(assert (=> b!3301841 (= lt!1119169 (maxPrefixZipperSequence!1097 thiss!18206 rules!2135 lt!1119158))))

(declare-fun c!560132 () Bool)

(assert (=> b!3301841 (= c!560132 (is-Some!7272 lt!1119169))))

(assert (=> b!3301841 (= (lexRec!704 thiss!18206 rules!2135 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119181))))) e!2053386)))

(declare-fun lt!1119186 () Unit!51389)

(declare-fun Unit!51404 () Unit!51389)

(assert (=> b!3301841 (= lt!1119186 Unit!51404)))

(assert (=> b!3301841 (= lt!1119175 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119181)))))))

(declare-fun lt!1119188 () List!36583)

(assert (=> b!3301841 (= lt!1119188 (list!13054 lt!1119175))))

(declare-fun lt!1119185 () List!36583)

(assert (=> b!3301841 (= lt!1119185 (list!13054 (_2!21119 (v!36033 lt!1119181))))))

(declare-fun lt!1119179 () Unit!51389)

(assert (=> b!3301841 (= lt!1119179 (lemmaConcatTwoListThenFSndIsSuffix!551 lt!1119188 lt!1119185))))

(assert (=> b!3301841 (isSuffix!866 lt!1119185 (++!8815 lt!1119188 lt!1119185))))

(declare-fun lt!1119190 () Unit!51389)

(assert (=> b!3301841 (= lt!1119190 lt!1119179)))

(declare-fun b!3301842 () Bool)

(declare-fun lt!1119189 () tuple2!35958)

(assert (=> b!3301842 (= lt!1119189 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119166))))))

(assert (=> b!3301842 (= e!2053388 (tuple2!35959 (prepend!1200 (_1!21113 lt!1119189) (_1!21119 (v!36033 lt!1119166))) (_2!21113 lt!1119189)))))

(assert (= (and d!924205 c!560130) b!3301841))

(assert (= (and d!924205 (not c!560130)) b!3301836))

(assert (= (and b!3301841 c!560131) b!3301842))

(assert (= (and b!3301841 (not c!560131)) b!3301838))

(assert (= (and b!3301841 c!560132) b!3301837))

(assert (= (and b!3301841 (not c!560132)) b!3301840))

(assert (= (and d!924205 res!1339270) b!3301839))

(declare-fun m!3626533 () Bool)

(assert (=> d!924205 m!3626533))

(declare-fun m!3626535 () Bool)

(assert (=> d!924205 m!3626535))

(declare-fun m!3626537 () Bool)

(assert (=> d!924205 m!3626537))

(declare-fun m!3626539 () Bool)

(assert (=> d!924205 m!3626539))

(assert (=> d!924205 m!3624783))

(assert (=> d!924205 m!3624131))

(declare-fun m!3626541 () Bool)

(assert (=> d!924205 m!3626541))

(assert (=> d!924205 m!3626535))

(declare-fun m!3626543 () Bool)

(assert (=> d!924205 m!3626543))

(declare-fun m!3626545 () Bool)

(assert (=> d!924205 m!3626545))

(declare-fun m!3626547 () Bool)

(assert (=> b!3301841 m!3626547))

(declare-fun m!3626549 () Bool)

(assert (=> b!3301841 m!3626549))

(declare-fun m!3626551 () Bool)

(assert (=> b!3301841 m!3626551))

(declare-fun m!3626553 () Bool)

(assert (=> b!3301841 m!3626553))

(declare-fun m!3626555 () Bool)

(assert (=> b!3301841 m!3626555))

(declare-fun m!3626557 () Bool)

(assert (=> b!3301841 m!3626557))

(assert (=> b!3301841 m!3624863))

(declare-fun m!3626559 () Bool)

(assert (=> b!3301841 m!3626559))

(declare-fun m!3626561 () Bool)

(assert (=> b!3301841 m!3626561))

(declare-fun m!3626563 () Bool)

(assert (=> b!3301841 m!3626563))

(assert (=> b!3301841 m!3626557))

(assert (=> b!3301841 m!3626547))

(declare-fun m!3626565 () Bool)

(assert (=> b!3301841 m!3626565))

(declare-fun m!3626567 () Bool)

(assert (=> b!3301841 m!3626567))

(declare-fun m!3626569 () Bool)

(assert (=> b!3301841 m!3626569))

(declare-fun m!3626571 () Bool)

(assert (=> b!3301841 m!3626571))

(declare-fun m!3626573 () Bool)

(assert (=> b!3301841 m!3626573))

(declare-fun m!3626575 () Bool)

(assert (=> b!3301841 m!3626575))

(declare-fun m!3626577 () Bool)

(assert (=> b!3301841 m!3626577))

(assert (=> b!3301841 m!3626573))

(declare-fun m!3626579 () Bool)

(assert (=> b!3301841 m!3626579))

(assert (=> b!3301841 m!3626567))

(assert (=> b!3301841 m!3626559))

(declare-fun m!3626581 () Bool)

(assert (=> b!3301841 m!3626581))

(assert (=> b!3301841 m!3626545))

(declare-fun m!3626583 () Bool)

(assert (=> b!3301841 m!3626583))

(declare-fun m!3626585 () Bool)

(assert (=> b!3301841 m!3626585))

(declare-fun m!3626587 () Bool)

(assert (=> b!3301841 m!3626587))

(assert (=> b!3301841 m!3626573))

(declare-fun m!3626589 () Bool)

(assert (=> b!3301841 m!3626589))

(assert (=> b!3301841 m!3626567))

(declare-fun m!3626591 () Bool)

(assert (=> b!3301841 m!3626591))

(assert (=> b!3301841 m!3626553))

(assert (=> b!3301841 m!3626571))

(declare-fun m!3626593 () Bool)

(assert (=> b!3301841 m!3626593))

(assert (=> b!3301841 m!3626581))

(declare-fun m!3626595 () Bool)

(assert (=> b!3301841 m!3626595))

(declare-fun m!3626597 () Bool)

(assert (=> b!3301841 m!3626597))

(assert (=> b!3301841 m!3626589))

(declare-fun m!3626599 () Bool)

(assert (=> b!3301841 m!3626599))

(assert (=> b!3301841 m!3624131))

(assert (=> b!3301841 m!3624131))

(assert (=> b!3301841 m!3626579))

(declare-fun m!3626601 () Bool)

(assert (=> b!3301841 m!3626601))

(assert (=> b!3301841 m!3626587))

(declare-fun m!3626603 () Bool)

(assert (=> b!3301841 m!3626603))

(declare-fun m!3626605 () Bool)

(assert (=> b!3301841 m!3626605))

(declare-fun m!3626607 () Bool)

(assert (=> b!3301837 m!3626607))

(declare-fun m!3626609 () Bool)

(assert (=> b!3301837 m!3626609))

(declare-fun m!3626611 () Bool)

(assert (=> b!3301842 m!3626611))

(declare-fun m!3626613 () Bool)

(assert (=> b!3301842 m!3626613))

(declare-fun m!3626615 () Bool)

(assert (=> b!3301839 m!3626615))

(assert (=> b!3301839 m!3626545))

(declare-fun m!3626617 () Bool)

(assert (=> b!3301839 m!3626617))

(assert (=> d!923627 d!924205))

(assert (=> b!3300541 d!923803))

(declare-fun d!924207 () Bool)

(assert (=> d!924207 (= (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535))))) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535))))))))

(declare-fun b_lambda!92081 () Bool)

(assert (=> (not b_lambda!92081) (not d!924207)))

(declare-fun t!252920 () Bool)

(declare-fun tb!170995 () Bool)

(assert (=> (and b!3299943 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252920) tb!170995))

(declare-fun result!213748 () Bool)

(assert (=> tb!170995 (= result!213748 (inv!21 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535)))))))))

(declare-fun m!3626619 () Bool)

(assert (=> tb!170995 m!3626619))

(assert (=> d!924207 t!252920))

(declare-fun b_and!225991 () Bool)

(assert (= b_and!225977 (and (=> t!252920 result!213748) b_and!225991)))

(declare-fun tb!170997 () Bool)

(declare-fun t!252922 () Bool)

(assert (=> (and b!3299965 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252922) tb!170997))

(declare-fun result!213750 () Bool)

(assert (= result!213750 result!213748))

(assert (=> d!924207 t!252922))

(declare-fun b_and!225993 () Bool)

(assert (= b_and!225975 (and (=> t!252922 result!213750) b_and!225993)))

(declare-fun tb!170999 () Bool)

(declare-fun t!252924 () Bool)

(assert (=> (and b!3300934 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252924) tb!170999))

(declare-fun result!213752 () Bool)

(assert (= result!213752 result!213748))

(assert (=> d!924207 t!252924))

(declare-fun b_and!225995 () Bool)

(assert (= b_and!225973 (and (=> t!252924 result!213752) b_and!225995)))

(declare-fun t!252926 () Bool)

(declare-fun tb!171001 () Bool)

(assert (=> (and b!3300954 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252926) tb!171001))

(declare-fun result!213754 () Bool)

(assert (= result!213754 result!213748))

(assert (=> d!924207 t!252926))

(declare-fun b_and!225997 () Bool)

(assert (= b_and!225979 (and (=> t!252926 result!213754) b_and!225997)))

(declare-fun tb!171003 () Bool)

(declare-fun t!252928 () Bool)

(assert (=> (and b!3299937 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252928) tb!171003))

(declare-fun result!213756 () Bool)

(assert (= result!213756 result!213748))

(assert (=> d!924207 t!252928))

(declare-fun b_and!225999 () Bool)

(assert (= b_and!225971 (and (=> t!252928 result!213756) b_and!225999)))

(assert (=> d!924207 m!3624323))

(declare-fun m!3626621 () Bool)

(assert (=> d!924207 m!3626621))

(assert (=> b!3300541 d!924207))

(declare-fun d!924209 () Bool)

(assert (=> d!924209 (= (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535)))) (fromListB!1596 (originalCharacters!6001 (_1!21112 (get!11636 lt!1118535)))))))

(declare-fun bs!548678 () Bool)

(assert (= bs!548678 d!924209))

(declare-fun m!3626623 () Bool)

(assert (=> bs!548678 m!3626623))

(assert (=> b!3300541 d!924209))

(declare-fun b!3301845 () Bool)

(declare-fun e!2053392 () List!36583)

(assert (=> b!3301845 (= e!2053392 (list!13062 (xs!14087 (c!559681 lt!1118255))))))

(declare-fun b!3301844 () Bool)

(declare-fun e!2053391 () List!36583)

(assert (=> b!3301844 (= e!2053391 e!2053392)))

(declare-fun c!560134 () Bool)

(assert (=> b!3301844 (= c!560134 (is-Leaf!17204 (c!559681 lt!1118255)))))

(declare-fun d!924211 () Bool)

(declare-fun c!560133 () Bool)

(assert (=> d!924211 (= c!560133 (is-Empty!10949 (c!559681 lt!1118255)))))

(assert (=> d!924211 (= (list!13059 (c!559681 lt!1118255)) e!2053391)))

(declare-fun b!3301843 () Bool)

(assert (=> b!3301843 (= e!2053391 Nil!36459)))

(declare-fun b!3301846 () Bool)

(assert (=> b!3301846 (= e!2053392 (++!8815 (list!13059 (left!28395 (c!559681 lt!1118255))) (list!13059 (right!28725 (c!559681 lt!1118255)))))))

(assert (= (and d!924211 c!560133) b!3301843))

(assert (= (and d!924211 (not c!560133)) b!3301844))

(assert (= (and b!3301844 c!560134) b!3301845))

(assert (= (and b!3301844 (not c!560134)) b!3301846))

(declare-fun m!3626625 () Bool)

(assert (=> b!3301845 m!3626625))

(declare-fun m!3626627 () Bool)

(assert (=> b!3301846 m!3626627))

(declare-fun m!3626629 () Bool)

(assert (=> b!3301846 m!3626629))

(assert (=> b!3301846 m!3626627))

(assert (=> b!3301846 m!3626629))

(declare-fun m!3626631 () Bool)

(assert (=> b!3301846 m!3626631))

(assert (=> d!923641 d!924211))

(declare-fun d!924213 () Bool)

(assert (=> d!924213 (= (nullable!3415 (regex!5287 lt!1118273)) (nullableFct!981 (regex!5287 lt!1118273)))))

(declare-fun bs!548679 () Bool)

(assert (= bs!548679 d!924213))

(declare-fun m!3626633 () Bool)

(assert (=> bs!548679 m!3626633))

(assert (=> b!3300133 d!924213))

(assert (=> d!923433 d!923617))

(declare-fun d!924215 () Bool)

(assert (=> d!924215 (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 (h!41880 tokens!494))))

(assert (=> d!924215 true))

(declare-fun _$77!851 () Unit!51389)

(assert (=> d!924215 (= (choose!19106 thiss!18206 rules!2135 tokens!494 (h!41880 tokens!494)) _$77!851)))

(declare-fun bs!548680 () Bool)

(assert (= bs!548680 d!924215))

(assert (=> bs!548680 m!3623651))

(assert (=> d!923433 d!924215))

(assert (=> d!923433 d!923535))

(declare-fun d!924217 () Bool)

(assert (=> d!924217 (= (isEmpty!20599 (_1!21111 lt!1118563)) (is-Nil!36460 (_1!21111 lt!1118563)))))

(assert (=> b!3300609 d!924217))

(assert (=> bm!239944 d!923735))

(declare-fun d!924219 () Bool)

(assert (=> d!924219 (= (list!13055 (_1!21113 lt!1118659)) (list!13061 (c!559682 (_1!21113 lt!1118659))))))

(declare-fun bs!548681 () Bool)

(assert (= bs!548681 d!924219))

(declare-fun m!3626635 () Bool)

(assert (=> bs!548681 m!3626635))

(assert (=> b!3300907 d!924219))

(declare-fun b!3301847 () Bool)

(declare-fun e!2053395 () tuple2!35954)

(assert (=> b!3301847 (= e!2053395 (tuple2!35955 Nil!36460 (list!13054 lt!1118255)))))

(declare-fun b!3301849 () Bool)

(declare-fun lt!1119191 () Option!7269)

(declare-fun lt!1119193 () tuple2!35954)

(assert (=> b!3301849 (= e!2053395 (tuple2!35955 (Cons!36460 (_1!21112 (v!36014 lt!1119191)) (_1!21111 lt!1119193)) (_2!21111 lt!1119193)))))

(assert (=> b!3301849 (= lt!1119193 (lexList!1350 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1119191))))))

(declare-fun b!3301850 () Bool)

(declare-fun e!2053393 () Bool)

(declare-fun lt!1119192 () tuple2!35954)

(assert (=> b!3301850 (= e!2053393 (= (_2!21111 lt!1119192) (list!13054 lt!1118255)))))

(declare-fun b!3301851 () Bool)

(declare-fun e!2053394 () Bool)

(assert (=> b!3301851 (= e!2053393 e!2053394)))

(declare-fun res!1339271 () Bool)

(assert (=> b!3301851 (= res!1339271 (< (size!27531 (_2!21111 lt!1119192)) (size!27531 (list!13054 lt!1118255))))))

(assert (=> b!3301851 (=> (not res!1339271) (not e!2053394))))

(declare-fun b!3301848 () Bool)

(assert (=> b!3301848 (= e!2053394 (not (isEmpty!20599 (_1!21111 lt!1119192))))))

(declare-fun d!924221 () Bool)

(assert (=> d!924221 e!2053393))

(declare-fun c!560135 () Bool)

(assert (=> d!924221 (= c!560135 (> (size!27539 (_1!21111 lt!1119192)) 0))))

(assert (=> d!924221 (= lt!1119192 e!2053395)))

(declare-fun c!560136 () Bool)

(assert (=> d!924221 (= c!560136 (is-Some!7268 lt!1119191))))

(assert (=> d!924221 (= lt!1119191 (maxPrefix!2504 thiss!18206 rules!2135 (list!13054 lt!1118255)))))

(assert (=> d!924221 (= (lexList!1350 thiss!18206 rules!2135 (list!13054 lt!1118255)) lt!1119192)))

(assert (= (and d!924221 c!560136) b!3301849))

(assert (= (and d!924221 (not c!560136)) b!3301847))

(assert (= (and d!924221 c!560135) b!3301851))

(assert (= (and d!924221 (not c!560135)) b!3301850))

(assert (= (and b!3301851 res!1339271) b!3301848))

(declare-fun m!3626637 () Bool)

(assert (=> b!3301849 m!3626637))

(declare-fun m!3626639 () Bool)

(assert (=> b!3301851 m!3626639))

(assert (=> b!3301851 m!3623617))

(assert (=> b!3301851 m!3625133))

(declare-fun m!3626641 () Bool)

(assert (=> b!3301848 m!3626641))

(declare-fun m!3626643 () Bool)

(assert (=> d!924221 m!3626643))

(assert (=> d!924221 m!3623617))

(declare-fun m!3626645 () Bool)

(assert (=> d!924221 m!3626645))

(assert (=> b!3300907 d!924221))

(assert (=> b!3300907 d!923641))

(declare-fun d!924223 () Bool)

(assert (=> d!924223 (= (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))) (v!36015 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))))))

(assert (=> b!3300168 d!924223))

(assert (=> b!3300168 d!923421))

(declare-fun b!3301852 () Bool)

(declare-fun e!2053397 () Bool)

(assert (=> b!3301852 (= e!2053397 (nullable!3415 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))))))))

(declare-fun b!3301853 () Bool)

(declare-fun res!1339278 () Bool)

(declare-fun e!2053401 () Bool)

(assert (=> b!3301853 (=> (not res!1339278) (not e!2053401))))

(declare-fun call!240048 () Bool)

(assert (=> b!3301853 (= res!1339278 (not call!240048))))

(declare-fun b!3301854 () Bool)

(assert (=> b!3301854 (= e!2053397 (matchR!4668 (derivativeStep!2968 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))) (head!7120 (list!13054 (charsOf!3303 separatorToken!241)))) (tail!5258 (list!13054 (charsOf!3303 separatorToken!241)))))))

(declare-fun b!3301855 () Bool)

(declare-fun e!2053399 () Bool)

(declare-fun e!2053402 () Bool)

(assert (=> b!3301855 (= e!2053399 e!2053402)))

(declare-fun c!560139 () Bool)

(assert (=> b!3301855 (= c!560139 (is-EmptyLang!10046 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))))))))

(declare-fun d!924225 () Bool)

(assert (=> d!924225 e!2053399))

(declare-fun c!560138 () Bool)

(assert (=> d!924225 (= c!560138 (is-EmptyExpr!10046 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))))))))

(declare-fun lt!1119194 () Bool)

(assert (=> d!924225 (= lt!1119194 e!2053397)))

(declare-fun c!560137 () Bool)

(assert (=> d!924225 (= c!560137 (isEmpty!20598 (list!13054 (charsOf!3303 separatorToken!241))))))

(assert (=> d!924225 (validRegex!4571 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))))))

(assert (=> d!924225 (= (matchR!4668 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))) (list!13054 (charsOf!3303 separatorToken!241))) lt!1119194)))

(declare-fun b!3301856 () Bool)

(declare-fun e!2053396 () Bool)

(assert (=> b!3301856 (= e!2053396 (not (= (head!7120 (list!13054 (charsOf!3303 separatorToken!241))) (c!559680 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241)))))))))))

(declare-fun b!3301857 () Bool)

(declare-fun res!1339274 () Bool)

(declare-fun e!2053400 () Bool)

(assert (=> b!3301857 (=> res!1339274 e!2053400)))

(assert (=> b!3301857 (= res!1339274 (not (is-ElementMatch!10046 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))))))))

(assert (=> b!3301857 (= e!2053402 e!2053400)))

(declare-fun b!3301858 () Bool)

(declare-fun res!1339272 () Bool)

(assert (=> b!3301858 (=> (not res!1339272) (not e!2053401))))

(assert (=> b!3301858 (= res!1339272 (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 separatorToken!241)))))))

(declare-fun b!3301859 () Bool)

(declare-fun res!1339273 () Bool)

(assert (=> b!3301859 (=> res!1339273 e!2053400)))

(assert (=> b!3301859 (= res!1339273 e!2053401)))

(declare-fun res!1339275 () Bool)

(assert (=> b!3301859 (=> (not res!1339275) (not e!2053401))))

(assert (=> b!3301859 (= res!1339275 lt!1119194)))

(declare-fun b!3301860 () Bool)

(assert (=> b!3301860 (= e!2053399 (= lt!1119194 call!240048))))

(declare-fun bm!240043 () Bool)

(assert (=> bm!240043 (= call!240048 (isEmpty!20598 (list!13054 (charsOf!3303 separatorToken!241))))))

(declare-fun b!3301861 () Bool)

(assert (=> b!3301861 (= e!2053401 (= (head!7120 (list!13054 (charsOf!3303 separatorToken!241))) (c!559680 (regex!5287 (get!11634 (getRuleFromTag!978 thiss!18206 rules!2135 (tag!5831 (rule!7785 separatorToken!241))))))))))

(declare-fun b!3301862 () Bool)

(declare-fun e!2053398 () Bool)

(assert (=> b!3301862 (= e!2053400 e!2053398)))

(declare-fun res!1339276 () Bool)

(assert (=> b!3301862 (=> (not res!1339276) (not e!2053398))))

(assert (=> b!3301862 (= res!1339276 (not lt!1119194))))

(declare-fun b!3301863 () Bool)

(declare-fun res!1339279 () Bool)

(assert (=> b!3301863 (=> res!1339279 e!2053396)))

(assert (=> b!3301863 (= res!1339279 (not (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 separatorToken!241))))))))

(declare-fun b!3301864 () Bool)

(assert (=> b!3301864 (= e!2053402 (not lt!1119194))))

(declare-fun b!3301865 () Bool)

(assert (=> b!3301865 (= e!2053398 e!2053396)))

(declare-fun res!1339277 () Bool)

(assert (=> b!3301865 (=> res!1339277 e!2053396)))

(assert (=> b!3301865 (= res!1339277 call!240048)))

(assert (= (and d!924225 c!560137) b!3301852))

(assert (= (and d!924225 (not c!560137)) b!3301854))

(assert (= (and d!924225 c!560138) b!3301860))

(assert (= (and d!924225 (not c!560138)) b!3301855))

(assert (= (and b!3301855 c!560139) b!3301864))

(assert (= (and b!3301855 (not c!560139)) b!3301857))

(assert (= (and b!3301857 (not res!1339274)) b!3301859))

(assert (= (and b!3301859 res!1339275) b!3301853))

(assert (= (and b!3301853 res!1339278) b!3301858))

(assert (= (and b!3301858 res!1339272) b!3301861))

(assert (= (and b!3301859 (not res!1339273)) b!3301862))

(assert (= (and b!3301862 res!1339276) b!3301865))

(assert (= (and b!3301865 (not res!1339277)) b!3301863))

(assert (= (and b!3301863 (not res!1339279)) b!3301856))

(assert (= (or b!3301860 b!3301853 b!3301865) bm!240043))

(assert (=> b!3301858 m!3623623))

(declare-fun m!3626647 () Bool)

(assert (=> b!3301858 m!3626647))

(assert (=> b!3301858 m!3626647))

(declare-fun m!3626649 () Bool)

(assert (=> b!3301858 m!3626649))

(declare-fun m!3626651 () Bool)

(assert (=> b!3301852 m!3626651))

(assert (=> bm!240043 m!3623623))

(declare-fun m!3626653 () Bool)

(assert (=> bm!240043 m!3626653))

(assert (=> b!3301854 m!3623623))

(declare-fun m!3626655 () Bool)

(assert (=> b!3301854 m!3626655))

(assert (=> b!3301854 m!3626655))

(declare-fun m!3626657 () Bool)

(assert (=> b!3301854 m!3626657))

(assert (=> b!3301854 m!3623623))

(assert (=> b!3301854 m!3626647))

(assert (=> b!3301854 m!3626657))

(assert (=> b!3301854 m!3626647))

(declare-fun m!3626659 () Bool)

(assert (=> b!3301854 m!3626659))

(assert (=> b!3301856 m!3623623))

(assert (=> b!3301856 m!3626655))

(assert (=> b!3301861 m!3623623))

(assert (=> b!3301861 m!3626655))

(assert (=> b!3301863 m!3623623))

(assert (=> b!3301863 m!3626647))

(assert (=> b!3301863 m!3626647))

(assert (=> b!3301863 m!3626649))

(assert (=> d!924225 m!3623623))

(assert (=> d!924225 m!3626653))

(declare-fun m!3626661 () Bool)

(assert (=> d!924225 m!3626661))

(assert (=> b!3300168 d!924225))

(assert (=> b!3300168 d!923643))

(assert (=> b!3300168 d!923651))

(declare-fun b!3301868 () Bool)

(declare-fun e!2053404 () List!36583)

(assert (=> b!3301868 (= e!2053404 (list!13062 (xs!14087 (c!559681 (charsOf!3303 (h!41880 tokens!494))))))))

(declare-fun b!3301867 () Bool)

(declare-fun e!2053403 () List!36583)

(assert (=> b!3301867 (= e!2053403 e!2053404)))

(declare-fun c!560141 () Bool)

(assert (=> b!3301867 (= c!560141 (is-Leaf!17204 (c!559681 (charsOf!3303 (h!41880 tokens!494)))))))

(declare-fun d!924227 () Bool)

(declare-fun c!560140 () Bool)

(assert (=> d!924227 (= c!560140 (is-Empty!10949 (c!559681 (charsOf!3303 (h!41880 tokens!494)))))))

(assert (=> d!924227 (= (list!13059 (c!559681 (charsOf!3303 (h!41880 tokens!494)))) e!2053403)))

(declare-fun b!3301866 () Bool)

(assert (=> b!3301866 (= e!2053403 Nil!36459)))

(declare-fun b!3301869 () Bool)

(assert (=> b!3301869 (= e!2053404 (++!8815 (list!13059 (left!28395 (c!559681 (charsOf!3303 (h!41880 tokens!494))))) (list!13059 (right!28725 (c!559681 (charsOf!3303 (h!41880 tokens!494)))))))))

(assert (= (and d!924227 c!560140) b!3301866))

(assert (= (and d!924227 (not c!560140)) b!3301867))

(assert (= (and b!3301867 c!560141) b!3301868))

(assert (= (and b!3301867 (not c!560141)) b!3301869))

(declare-fun m!3626663 () Bool)

(assert (=> b!3301868 m!3626663))

(declare-fun m!3626665 () Bool)

(assert (=> b!3301869 m!3626665))

(declare-fun m!3626667 () Bool)

(assert (=> b!3301869 m!3626667))

(assert (=> b!3301869 m!3626665))

(assert (=> b!3301869 m!3626667))

(declare-fun m!3626669 () Bool)

(assert (=> b!3301869 m!3626669))

(assert (=> d!923667 d!924227))

(declare-fun b!3301870 () Bool)

(declare-fun e!2053407 () Bool)

(declare-fun e!2053406 () Bool)

(assert (=> b!3301870 (= e!2053407 e!2053406)))

(declare-fun c!560143 () Bool)

(assert (=> b!3301870 (= c!560143 (is-IntegerValue!16552 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258)))))

(declare-fun b!3301871 () Bool)

(assert (=> b!3301871 (= e!2053407 (inv!16 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258)))))

(declare-fun b!3301872 () Bool)

(declare-fun res!1339280 () Bool)

(declare-fun e!2053405 () Bool)

(assert (=> b!3301872 (=> res!1339280 e!2053405)))

(assert (=> b!3301872 (= res!1339280 (not (is-IntegerValue!16553 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258))))))

(assert (=> b!3301872 (= e!2053406 e!2053405)))

(declare-fun d!924229 () Bool)

(declare-fun c!560142 () Bool)

(assert (=> d!924229 (= c!560142 (is-IntegerValue!16551 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258)))))

(assert (=> d!924229 (= (inv!21 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258)) e!2053407)))

(declare-fun b!3301873 () Bool)

(assert (=> b!3301873 (= e!2053405 (inv!15 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258)))))

(declare-fun b!3301874 () Bool)

(assert (=> b!3301874 (= e!2053406 (inv!17 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) lt!1118258)))))

(assert (= (and d!924229 c!560142) b!3301871))

(assert (= (and d!924229 (not c!560142)) b!3301870))

(assert (= (and b!3301870 c!560143) b!3301874))

(assert (= (and b!3301870 (not c!560143)) b!3301872))

(assert (= (and b!3301872 (not res!1339280)) b!3301873))

(declare-fun m!3626671 () Bool)

(assert (=> b!3301871 m!3626671))

(declare-fun m!3626673 () Bool)

(assert (=> b!3301873 m!3626673))

(declare-fun m!3626675 () Bool)

(assert (=> b!3301874 m!3626675))

(assert (=> tb!170867 d!924229))

(declare-fun d!924231 () Bool)

(assert (=> d!924231 (= (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))) (isBalanced!3270 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))))))

(declare-fun bs!548682 () Bool)

(assert (= bs!548682 d!924231))

(declare-fun m!3626677 () Bool)

(assert (=> bs!548682 m!3626677))

(assert (=> tb!170873 d!924231))

(declare-fun d!924233 () Bool)

(assert (=> d!924233 (= (isEmpty!20606 lt!1118535) (not (is-Some!7268 lt!1118535)))))

(assert (=> d!923521 d!924233))

(declare-fun b!3301878 () Bool)

(declare-fun e!2053408 () Bool)

(assert (=> b!3301878 (= e!2053408 (>= (size!27531 lt!1118274) (size!27531 lt!1118274)))))

(declare-fun b!3301876 () Bool)

(declare-fun res!1339284 () Bool)

(declare-fun e!2053410 () Bool)

(assert (=> b!3301876 (=> (not res!1339284) (not e!2053410))))

(assert (=> b!3301876 (= res!1339284 (= (head!7120 lt!1118274) (head!7120 lt!1118274)))))

(declare-fun d!924235 () Bool)

(assert (=> d!924235 e!2053408))

(declare-fun res!1339283 () Bool)

(assert (=> d!924235 (=> res!1339283 e!2053408)))

(declare-fun lt!1119195 () Bool)

(assert (=> d!924235 (= res!1339283 (not lt!1119195))))

(declare-fun e!2053409 () Bool)

(assert (=> d!924235 (= lt!1119195 e!2053409)))

(declare-fun res!1339282 () Bool)

(assert (=> d!924235 (=> res!1339282 e!2053409)))

(assert (=> d!924235 (= res!1339282 (is-Nil!36459 lt!1118274))))

(assert (=> d!924235 (= (isPrefix!2804 lt!1118274 lt!1118274) lt!1119195)))

(declare-fun b!3301875 () Bool)

(assert (=> b!3301875 (= e!2053409 e!2053410)))

(declare-fun res!1339281 () Bool)

(assert (=> b!3301875 (=> (not res!1339281) (not e!2053410))))

(assert (=> b!3301875 (= res!1339281 (not (is-Nil!36459 lt!1118274)))))

(declare-fun b!3301877 () Bool)

(assert (=> b!3301877 (= e!2053410 (isPrefix!2804 (tail!5258 lt!1118274) (tail!5258 lt!1118274)))))

(assert (= (and d!924235 (not res!1339282)) b!3301875))

(assert (= (and b!3301875 res!1339281) b!3301876))

(assert (= (and b!3301876 res!1339284) b!3301877))

(assert (= (and d!924235 (not res!1339283)) b!3301878))

(assert (=> b!3301878 m!3624343))

(assert (=> b!3301878 m!3624343))

(declare-fun m!3626679 () Bool)

(assert (=> b!3301876 m!3626679))

(assert (=> b!3301876 m!3626679))

(declare-fun m!3626681 () Bool)

(assert (=> b!3301877 m!3626681))

(assert (=> b!3301877 m!3626681))

(assert (=> b!3301877 m!3626681))

(assert (=> b!3301877 m!3626681))

(declare-fun m!3626683 () Bool)

(assert (=> b!3301877 m!3626683))

(assert (=> d!923521 d!924235))

(declare-fun d!924237 () Bool)

(assert (=> d!924237 (isPrefix!2804 lt!1118274 lt!1118274)))

(declare-fun lt!1119196 () Unit!51389)

(assert (=> d!924237 (= lt!1119196 (choose!19121 lt!1118274 lt!1118274))))

(assert (=> d!924237 (= (lemmaIsPrefixRefl!1763 lt!1118274 lt!1118274) lt!1119196)))

(declare-fun bs!548683 () Bool)

(assert (= bs!548683 d!924237))

(assert (=> bs!548683 m!3624331))

(declare-fun m!3626685 () Bool)

(assert (=> bs!548683 m!3626685))

(assert (=> d!923521 d!924237))

(assert (=> d!923521 d!924063))

(declare-fun d!924239 () Bool)

(declare-fun lt!1119197 () Int)

(assert (=> d!924239 (= lt!1119197 (size!27539 (list!13055 (_1!21113 lt!1118653))))))

(assert (=> d!924239 (= lt!1119197 (size!27541 (c!559682 (_1!21113 lt!1118653))))))

(assert (=> d!924239 (= (size!27538 (_1!21113 lt!1118653)) lt!1119197)))

(declare-fun bs!548684 () Bool)

(assert (= bs!548684 d!924239))

(assert (=> bs!548684 m!3624885))

(assert (=> bs!548684 m!3624885))

(declare-fun m!3626687 () Bool)

(assert (=> bs!548684 m!3626687))

(declare-fun m!3626689 () Bool)

(assert (=> bs!548684 m!3626689))

(assert (=> d!923663 d!924239))

(declare-fun b!3301879 () Bool)

(declare-fun e!2053414 () tuple2!35958)

(assert (=> b!3301879 (= e!2053414 (tuple2!35959 (BalanceConc!21515 Empty!10950) (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))

(declare-fun b!3301880 () Bool)

(declare-fun lt!1119204 () tuple2!35958)

(declare-fun lt!1119210 () Option!7273)

(assert (=> b!3301880 (= lt!1119204 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119210))))))

(declare-fun e!2053411 () tuple2!35958)

(assert (=> b!3301880 (= e!2053411 (tuple2!35959 (prepend!1200 (_1!21113 lt!1119204) (_1!21119 (v!36033 lt!1119210))) (_2!21113 lt!1119204)))))

(declare-fun b!3301881 () Bool)

(declare-fun e!2053413 () tuple2!35958)

(assert (=> b!3301881 (= e!2053413 (tuple2!35959 (BalanceConc!21515 Empty!10950) (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))

(declare-fun d!924241 () Bool)

(declare-fun e!2053412 () Bool)

(assert (=> d!924241 e!2053412))

(declare-fun res!1339285 () Bool)

(assert (=> d!924241 (=> (not res!1339285) (not e!2053412))))

(declare-fun lt!1119203 () tuple2!35958)

(assert (=> d!924241 (= res!1339285 (= (list!13055 (_1!21113 lt!1119203)) (list!13055 (_1!21113 (lexRec!704 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(assert (=> d!924241 (= lt!1119203 e!2053414)))

(declare-fun c!560144 () Bool)

(declare-fun lt!1119222 () Option!7273)

(assert (=> d!924241 (= c!560144 (is-Some!7272 lt!1119222))))

(assert (=> d!924241 (= lt!1119222 (maxPrefixZipperSequenceV2!491 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241) (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))

(declare-fun lt!1119202 () Unit!51389)

(declare-fun lt!1119211 () Unit!51389)

(assert (=> d!924241 (= lt!1119202 lt!1119211)))

(declare-fun lt!1119198 () List!36583)

(declare-fun lt!1119224 () List!36583)

(assert (=> d!924241 (isSuffix!866 lt!1119198 (++!8815 lt!1119224 lt!1119198))))

(assert (=> d!924241 (= lt!1119211 (lemmaConcatTwoListThenFSndIsSuffix!551 lt!1119224 lt!1119198))))

(assert (=> d!924241 (= lt!1119198 (list!13054 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))

(assert (=> d!924241 (= lt!1119224 (list!13054 (BalanceConc!21513 Empty!10949)))))

(assert (=> d!924241 (= (lexTailRecV2!961 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241) (BalanceConc!21513 Empty!10949) (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241) (BalanceConc!21515 Empty!10950)) lt!1119203)))

(declare-fun b!3301882 () Bool)

(assert (=> b!3301882 (= e!2053412 (= (list!13054 (_2!21113 lt!1119203)) (list!13054 (_2!21113 (lexRec!704 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(declare-fun b!3301883 () Bool)

(declare-fun lt!1119199 () BalanceConc!21512)

(assert (=> b!3301883 (= e!2053411 (tuple2!35959 (BalanceConc!21515 Empty!10950) lt!1119199))))

(declare-fun b!3301884 () Bool)

(declare-fun lt!1119216 () BalanceConc!21512)

(assert (=> b!3301884 (= e!2053414 (lexTailRecV2!961 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241) lt!1119216 (_2!21119 (v!36033 lt!1119222)) (append!896 (BalanceConc!21515 Empty!10950) (_1!21119 (v!36033 lt!1119222)))))))

(declare-fun lt!1119209 () tuple2!35958)

(assert (=> b!3301884 (= lt!1119209 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119222))))))

(declare-fun lt!1119228 () List!36583)

(assert (=> b!3301884 (= lt!1119228 (list!13054 (BalanceConc!21513 Empty!10949)))))

(declare-fun lt!1119208 () List!36583)

(assert (=> b!3301884 (= lt!1119208 (list!13054 (charsOf!3303 (_1!21119 (v!36033 lt!1119222)))))))

(declare-fun lt!1119215 () List!36583)

(assert (=> b!3301884 (= lt!1119215 (list!13054 (_2!21119 (v!36033 lt!1119222))))))

(declare-fun lt!1119200 () Unit!51389)

(assert (=> b!3301884 (= lt!1119200 (lemmaConcatAssociativity!1813 lt!1119228 lt!1119208 lt!1119215))))

(assert (=> b!3301884 (= (++!8815 (++!8815 lt!1119228 lt!1119208) lt!1119215) (++!8815 lt!1119228 (++!8815 lt!1119208 lt!1119215)))))

(declare-fun lt!1119225 () Unit!51389)

(assert (=> b!3301884 (= lt!1119225 lt!1119200)))

(declare-fun lt!1119207 () Option!7273)

(assert (=> b!3301884 (= lt!1119207 (maxPrefixZipperSequence!1097 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)))))

(declare-fun c!560145 () Bool)

(assert (=> b!3301884 (= c!560145 (is-Some!7272 lt!1119207))))

(assert (=> b!3301884 (= (lexRec!704 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241)) e!2053413)))

(declare-fun lt!1119219 () Unit!51389)

(declare-fun Unit!51405 () Unit!51389)

(assert (=> b!3301884 (= lt!1119219 Unit!51405)))

(declare-fun lt!1119217 () List!36584)

(assert (=> b!3301884 (= lt!1119217 (list!13055 (BalanceConc!21515 Empty!10950)))))

(declare-fun lt!1119213 () List!36584)

(assert (=> b!3301884 (= lt!1119213 (Cons!36460 (_1!21119 (v!36033 lt!1119222)) Nil!36460))))

(declare-fun lt!1119214 () List!36584)

(assert (=> b!3301884 (= lt!1119214 (list!13055 (_1!21113 lt!1119209)))))

(declare-fun lt!1119218 () Unit!51389)

(assert (=> b!3301884 (= lt!1119218 (lemmaConcatAssociativity!1814 lt!1119217 lt!1119213 lt!1119214))))

(assert (=> b!3301884 (= (++!8819 (++!8819 lt!1119217 lt!1119213) lt!1119214) (++!8819 lt!1119217 (++!8819 lt!1119213 lt!1119214)))))

(declare-fun lt!1119223 () Unit!51389)

(assert (=> b!3301884 (= lt!1119223 lt!1119218)))

(declare-fun lt!1119201 () List!36583)

(assert (=> b!3301884 (= lt!1119201 (++!8815 (list!13054 (BalanceConc!21513 Empty!10949)) (list!13054 (charsOf!3303 (_1!21119 (v!36033 lt!1119222))))))))

(declare-fun lt!1119206 () List!36583)

(assert (=> b!3301884 (= lt!1119206 (list!13054 (_2!21119 (v!36033 lt!1119222))))))

(declare-fun lt!1119221 () List!36584)

(assert (=> b!3301884 (= lt!1119221 (list!13055 (append!896 (BalanceConc!21515 Empty!10950) (_1!21119 (v!36033 lt!1119222)))))))

(declare-fun lt!1119205 () Unit!51389)

(assert (=> b!3301884 (= lt!1119205 (lemmaLexThenLexPrefix!469 thiss!18206 rules!2135 lt!1119201 lt!1119206 lt!1119221 (list!13055 (_1!21113 lt!1119209)) (list!13054 (_2!21113 lt!1119209))))))

(assert (=> b!3301884 (= (lexList!1350 thiss!18206 rules!2135 lt!1119201) (tuple2!35955 lt!1119221 Nil!36459))))

(declare-fun lt!1119212 () Unit!51389)

(assert (=> b!3301884 (= lt!1119212 lt!1119205)))

(assert (=> b!3301884 (= lt!1119199 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119222)))))))

(assert (=> b!3301884 (= lt!1119210 (maxPrefixZipperSequence!1097 thiss!18206 rules!2135 lt!1119199))))

(declare-fun c!560146 () Bool)

(assert (=> b!3301884 (= c!560146 (is-Some!7272 lt!1119210))))

(assert (=> b!3301884 (= (lexRec!704 thiss!18206 rules!2135 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119222))))) e!2053411)))

(declare-fun lt!1119227 () Unit!51389)

(declare-fun Unit!51406 () Unit!51389)

(assert (=> b!3301884 (= lt!1119227 Unit!51406)))

(assert (=> b!3301884 (= lt!1119216 (++!8817 (BalanceConc!21513 Empty!10949) (charsOf!3303 (_1!21119 (v!36033 lt!1119222)))))))

(declare-fun lt!1119229 () List!36583)

(assert (=> b!3301884 (= lt!1119229 (list!13054 lt!1119216))))

(declare-fun lt!1119226 () List!36583)

(assert (=> b!3301884 (= lt!1119226 (list!13054 (_2!21119 (v!36033 lt!1119222))))))

(declare-fun lt!1119220 () Unit!51389)

(assert (=> b!3301884 (= lt!1119220 (lemmaConcatTwoListThenFSndIsSuffix!551 lt!1119229 lt!1119226))))

(assert (=> b!3301884 (isSuffix!866 lt!1119226 (++!8815 lt!1119229 lt!1119226))))

(declare-fun lt!1119231 () Unit!51389)

(assert (=> b!3301884 (= lt!1119231 lt!1119220)))

(declare-fun b!3301885 () Bool)

(declare-fun lt!1119230 () tuple2!35958)

(assert (=> b!3301885 (= lt!1119230 (lexRec!704 thiss!18206 rules!2135 (_2!21119 (v!36033 lt!1119207))))))

(assert (=> b!3301885 (= e!2053413 (tuple2!35959 (prepend!1200 (_1!21113 lt!1119230) (_1!21119 (v!36033 lt!1119207))) (_2!21113 lt!1119230)))))

(assert (= (and d!924241 c!560144) b!3301884))

(assert (= (and d!924241 (not c!560144)) b!3301879))

(assert (= (and b!3301884 c!560145) b!3301885))

(assert (= (and b!3301884 (not c!560145)) b!3301881))

(assert (= (and b!3301884 c!560146) b!3301880))

(assert (= (and b!3301884 (not c!560146)) b!3301883))

(assert (= (and d!924241 res!1339285) b!3301882))

(declare-fun m!3626691 () Bool)

(assert (=> d!924241 m!3626691))

(declare-fun m!3626693 () Bool)

(assert (=> d!924241 m!3626693))

(declare-fun m!3626695 () Bool)

(assert (=> d!924241 m!3626695))

(declare-fun m!3626697 () Bool)

(assert (=> d!924241 m!3626697))

(assert (=> d!924241 m!3623605))

(assert (=> d!924241 m!3624881))

(assert (=> d!924241 m!3624131))

(declare-fun m!3626699 () Bool)

(assert (=> d!924241 m!3626699))

(assert (=> d!924241 m!3626693))

(assert (=> d!924241 m!3623605))

(assert (=> d!924241 m!3623605))

(declare-fun m!3626701 () Bool)

(assert (=> d!924241 m!3626701))

(assert (=> d!924241 m!3623605))

(declare-fun m!3626703 () Bool)

(assert (=> d!924241 m!3626703))

(declare-fun m!3626705 () Bool)

(assert (=> b!3301884 m!3626705))

(declare-fun m!3626707 () Bool)

(assert (=> b!3301884 m!3626707))

(declare-fun m!3626709 () Bool)

(assert (=> b!3301884 m!3626709))

(declare-fun m!3626711 () Bool)

(assert (=> b!3301884 m!3626711))

(declare-fun m!3626713 () Bool)

(assert (=> b!3301884 m!3626713))

(declare-fun m!3626715 () Bool)

(assert (=> b!3301884 m!3626715))

(assert (=> b!3301884 m!3624863))

(declare-fun m!3626717 () Bool)

(assert (=> b!3301884 m!3626717))

(declare-fun m!3626719 () Bool)

(assert (=> b!3301884 m!3626719))

(declare-fun m!3626721 () Bool)

(assert (=> b!3301884 m!3626721))

(assert (=> b!3301884 m!3626715))

(assert (=> b!3301884 m!3626705))

(declare-fun m!3626723 () Bool)

(assert (=> b!3301884 m!3626723))

(declare-fun m!3626725 () Bool)

(assert (=> b!3301884 m!3626725))

(declare-fun m!3626727 () Bool)

(assert (=> b!3301884 m!3626727))

(declare-fun m!3626729 () Bool)

(assert (=> b!3301884 m!3626729))

(declare-fun m!3626731 () Bool)

(assert (=> b!3301884 m!3626731))

(declare-fun m!3626733 () Bool)

(assert (=> b!3301884 m!3626733))

(assert (=> b!3301884 m!3623605))

(declare-fun m!3626735 () Bool)

(assert (=> b!3301884 m!3626735))

(assert (=> b!3301884 m!3626731))

(declare-fun m!3626737 () Bool)

(assert (=> b!3301884 m!3626737))

(assert (=> b!3301884 m!3626725))

(assert (=> b!3301884 m!3626717))

(declare-fun m!3626739 () Bool)

(assert (=> b!3301884 m!3626739))

(assert (=> b!3301884 m!3623605))

(assert (=> b!3301884 m!3626703))

(declare-fun m!3626741 () Bool)

(assert (=> b!3301884 m!3626741))

(declare-fun m!3626743 () Bool)

(assert (=> b!3301884 m!3626743))

(declare-fun m!3626745 () Bool)

(assert (=> b!3301884 m!3626745))

(assert (=> b!3301884 m!3626731))

(declare-fun m!3626747 () Bool)

(assert (=> b!3301884 m!3626747))

(assert (=> b!3301884 m!3623605))

(assert (=> b!3301884 m!3626725))

(declare-fun m!3626749 () Bool)

(assert (=> b!3301884 m!3626749))

(assert (=> b!3301884 m!3626711))

(assert (=> b!3301884 m!3626729))

(declare-fun m!3626751 () Bool)

(assert (=> b!3301884 m!3626751))

(assert (=> b!3301884 m!3626739))

(declare-fun m!3626753 () Bool)

(assert (=> b!3301884 m!3626753))

(declare-fun m!3626755 () Bool)

(assert (=> b!3301884 m!3626755))

(assert (=> b!3301884 m!3626747))

(declare-fun m!3626757 () Bool)

(assert (=> b!3301884 m!3626757))

(assert (=> b!3301884 m!3624131))

(assert (=> b!3301884 m!3624131))

(assert (=> b!3301884 m!3626737))

(declare-fun m!3626759 () Bool)

(assert (=> b!3301884 m!3626759))

(assert (=> b!3301884 m!3626745))

(declare-fun m!3626761 () Bool)

(assert (=> b!3301884 m!3626761))

(declare-fun m!3626763 () Bool)

(assert (=> b!3301884 m!3626763))

(declare-fun m!3626765 () Bool)

(assert (=> b!3301880 m!3626765))

(declare-fun m!3626767 () Bool)

(assert (=> b!3301880 m!3626767))

(declare-fun m!3626769 () Bool)

(assert (=> b!3301885 m!3626769))

(declare-fun m!3626771 () Bool)

(assert (=> b!3301885 m!3626771))

(declare-fun m!3626773 () Bool)

(assert (=> b!3301882 m!3626773))

(assert (=> b!3301882 m!3623605))

(assert (=> b!3301882 m!3626703))

(declare-fun m!3626775 () Bool)

(assert (=> b!3301882 m!3626775))

(assert (=> d!923663 d!924241))

(declare-fun d!924243 () Bool)

(assert (=> d!924243 (= (isEmpty!20599 (_1!21111 lt!1118544)) (is-Nil!36460 (_1!21111 lt!1118544)))))

(assert (=> b!3300559 d!924243))

(declare-fun d!924245 () Bool)

(declare-fun c!560147 () Bool)

(assert (=> d!924245 (= c!560147 (is-Node!10949 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))))))

(declare-fun e!2053415 () Bool)

(assert (=> d!924245 (= (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))) e!2053415)))

(declare-fun b!3301886 () Bool)

(assert (=> b!3301886 (= e!2053415 (inv!49418 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))))))

(declare-fun b!3301887 () Bool)

(declare-fun e!2053416 () Bool)

(assert (=> b!3301887 (= e!2053415 e!2053416)))

(declare-fun res!1339286 () Bool)

(assert (=> b!3301887 (= res!1339286 (not (is-Leaf!17204 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))))))))

(assert (=> b!3301887 (=> res!1339286 e!2053416)))

(declare-fun b!3301888 () Bool)

(assert (=> b!3301888 (= e!2053416 (inv!49419 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))))))

(assert (= (and d!924245 c!560147) b!3301886))

(assert (= (and d!924245 (not c!560147)) b!3301887))

(assert (= (and b!3301887 (not res!1339286)) b!3301888))

(declare-fun m!3626777 () Bool)

(assert (=> b!3301886 m!3626777))

(declare-fun m!3626779 () Bool)

(assert (=> b!3301888 m!3626779))

(assert (=> b!3300797 d!924245))

(declare-fun b!3301890 () Bool)

(declare-fun e!2053418 () List!36583)

(assert (=> b!3301890 (= e!2053418 (Cons!36459 (h!41879 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))) (++!8815 (t!252748 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))) (_2!21112 (get!11636 lt!1118454)))))))

(declare-fun b!3301889 () Bool)

(assert (=> b!3301889 (= e!2053418 (_2!21112 (get!11636 lt!1118454)))))

(declare-fun b!3301891 () Bool)

(declare-fun res!1339287 () Bool)

(declare-fun e!2053417 () Bool)

(assert (=> b!3301891 (=> (not res!1339287) (not e!2053417))))

(declare-fun lt!1119232 () List!36583)

(assert (=> b!3301891 (= res!1339287 (= (size!27531 lt!1119232) (+ (size!27531 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))) (size!27531 (_2!21112 (get!11636 lt!1118454))))))))

(declare-fun d!924247 () Bool)

(assert (=> d!924247 e!2053417))

(declare-fun res!1339288 () Bool)

(assert (=> d!924247 (=> (not res!1339288) (not e!2053417))))

(assert (=> d!924247 (= res!1339288 (= (content!4957 lt!1119232) (set.union (content!4957 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))) (content!4957 (_2!21112 (get!11636 lt!1118454))))))))

(assert (=> d!924247 (= lt!1119232 e!2053418)))

(declare-fun c!560148 () Bool)

(assert (=> d!924247 (= c!560148 (is-Nil!36459 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454))))))))

(assert (=> d!924247 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454)))) (_2!21112 (get!11636 lt!1118454))) lt!1119232)))

(declare-fun b!3301892 () Bool)

(assert (=> b!3301892 (= e!2053417 (or (not (= (_2!21112 (get!11636 lt!1118454)) Nil!36459)) (= lt!1119232 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118454)))))))))

(assert (= (and d!924247 c!560148) b!3301889))

(assert (= (and d!924247 (not c!560148)) b!3301890))

(assert (= (and d!924247 res!1339288) b!3301891))

(assert (= (and b!3301891 res!1339287) b!3301892))

(declare-fun m!3626781 () Bool)

(assert (=> b!3301890 m!3626781))

(declare-fun m!3626783 () Bool)

(assert (=> b!3301891 m!3626783))

(assert (=> b!3301891 m!3624045))

(declare-fun m!3626785 () Bool)

(assert (=> b!3301891 m!3626785))

(assert (=> b!3301891 m!3624059))

(declare-fun m!3626787 () Bool)

(assert (=> d!924247 m!3626787))

(assert (=> d!924247 m!3624045))

(declare-fun m!3626789 () Bool)

(assert (=> d!924247 m!3626789))

(declare-fun m!3626791 () Bool)

(assert (=> d!924247 m!3626791))

(assert (=> b!3300339 d!924247))

(assert (=> b!3300339 d!923945))

(assert (=> b!3300339 d!923947))

(assert (=> b!3300339 d!923949))

(assert (=> b!3300272 d!923891))

(assert (=> b!3300272 d!923893))

(declare-fun b!3301893 () Bool)

(declare-fun e!2053420 () Option!7270)

(assert (=> b!3301893 (= e!2053420 None!7269)))

(declare-fun b!3301894 () Bool)

(declare-fun e!2053422 () Option!7270)

(assert (=> b!3301894 (= e!2053422 e!2053420)))

(declare-fun c!560149 () Bool)

(assert (=> b!3301894 (= c!560149 (and (is-Cons!36461 (t!252750 rules!2135)) (not (= (tag!5831 (h!41881 (t!252750 rules!2135))) (tag!5831 (rule!7785 (h!41880 tokens!494)))))))))

(declare-fun b!3301895 () Bool)

(declare-fun e!2053419 () Bool)

(declare-fun e!2053421 () Bool)

(assert (=> b!3301895 (= e!2053419 e!2053421)))

(declare-fun res!1339290 () Bool)

(assert (=> b!3301895 (=> (not res!1339290) (not e!2053421))))

(declare-fun lt!1119234 () Option!7270)

(assert (=> b!3301895 (= res!1339290 (contains!6585 (t!252750 rules!2135) (get!11634 lt!1119234)))))

(declare-fun b!3301896 () Bool)

(assert (=> b!3301896 (= e!2053421 (= (tag!5831 (get!11634 lt!1119234)) (tag!5831 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun d!924249 () Bool)

(assert (=> d!924249 e!2053419))

(declare-fun res!1339289 () Bool)

(assert (=> d!924249 (=> res!1339289 e!2053419)))

(assert (=> d!924249 (= res!1339289 (isEmpty!20604 lt!1119234))))

(assert (=> d!924249 (= lt!1119234 e!2053422)))

(declare-fun c!560150 () Bool)

(assert (=> d!924249 (= c!560150 (and (is-Cons!36461 (t!252750 rules!2135)) (= (tag!5831 (h!41881 (t!252750 rules!2135))) (tag!5831 (rule!7785 (h!41880 tokens!494))))))))

(assert (=> d!924249 (rulesInvariant!4273 thiss!18206 (t!252750 rules!2135))))

(assert (=> d!924249 (= (getRuleFromTag!978 thiss!18206 (t!252750 rules!2135) (tag!5831 (rule!7785 (h!41880 tokens!494)))) lt!1119234)))

(declare-fun b!3301897 () Bool)

(declare-fun lt!1119233 () Unit!51389)

(declare-fun lt!1119235 () Unit!51389)

(assert (=> b!3301897 (= lt!1119233 lt!1119235)))

(assert (=> b!3301897 (rulesInvariant!4273 thiss!18206 (t!252750 (t!252750 rules!2135)))))

(assert (=> b!3301897 (= lt!1119235 (lemmaInvariantOnRulesThenOnTail!367 thiss!18206 (h!41881 (t!252750 rules!2135)) (t!252750 (t!252750 rules!2135))))))

(assert (=> b!3301897 (= e!2053420 (getRuleFromTag!978 thiss!18206 (t!252750 (t!252750 rules!2135)) (tag!5831 (rule!7785 (h!41880 tokens!494)))))))

(declare-fun b!3301898 () Bool)

(assert (=> b!3301898 (= e!2053422 (Some!7269 (h!41881 (t!252750 rules!2135))))))

(assert (= (and d!924249 c!560150) b!3301898))

(assert (= (and d!924249 (not c!560150)) b!3301894))

(assert (= (and b!3301894 c!560149) b!3301897))

(assert (= (and b!3301894 (not c!560149)) b!3301893))

(assert (= (and d!924249 (not res!1339289)) b!3301895))

(assert (= (and b!3301895 res!1339290) b!3301896))

(declare-fun m!3626793 () Bool)

(assert (=> b!3301895 m!3626793))

(assert (=> b!3301895 m!3626793))

(declare-fun m!3626795 () Bool)

(assert (=> b!3301895 m!3626795))

(assert (=> b!3301896 m!3626793))

(declare-fun m!3626797 () Bool)

(assert (=> d!924249 m!3626797))

(assert (=> d!924249 m!3623917))

(assert (=> b!3301897 m!3625511))

(assert (=> b!3301897 m!3625513))

(declare-fun m!3626799 () Bool)

(assert (=> b!3301897 m!3626799))

(assert (=> b!3300272 d!924249))

(declare-fun b!3301899 () Bool)

(declare-fun e!2053424 () Bool)

(assert (=> b!3301899 (= e!2053424 (nullable!3415 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262))))))

(declare-fun b!3301900 () Bool)

(declare-fun res!1339297 () Bool)

(declare-fun e!2053428 () Bool)

(assert (=> b!3301900 (=> (not res!1339297) (not e!2053428))))

(declare-fun call!240049 () Bool)

(assert (=> b!3301900 (= res!1339297 (not call!240049))))

(declare-fun b!3301901 () Bool)

(assert (=> b!3301901 (= e!2053424 (matchR!4668 (derivativeStep!2968 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262)) (head!7120 (tail!5258 lt!1118262))) (tail!5258 (tail!5258 lt!1118262))))))

(declare-fun b!3301902 () Bool)

(declare-fun e!2053426 () Bool)

(declare-fun e!2053429 () Bool)

(assert (=> b!3301902 (= e!2053426 e!2053429)))

(declare-fun c!560153 () Bool)

(assert (=> b!3301902 (= c!560153 (is-EmptyLang!10046 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262))))))

(declare-fun d!924251 () Bool)

(assert (=> d!924251 e!2053426))

(declare-fun c!560152 () Bool)

(assert (=> d!924251 (= c!560152 (is-EmptyExpr!10046 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262))))))

(declare-fun lt!1119236 () Bool)

(assert (=> d!924251 (= lt!1119236 e!2053424)))

(declare-fun c!560151 () Bool)

(assert (=> d!924251 (= c!560151 (isEmpty!20598 (tail!5258 lt!1118262)))))

(assert (=> d!924251 (validRegex!4571 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262)))))

(assert (=> d!924251 (= (matchR!4668 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262)) (tail!5258 lt!1118262)) lt!1119236)))

(declare-fun b!3301903 () Bool)

(declare-fun e!2053423 () Bool)

(assert (=> b!3301903 (= e!2053423 (not (= (head!7120 (tail!5258 lt!1118262)) (c!559680 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262))))))))

(declare-fun b!3301904 () Bool)

(declare-fun res!1339293 () Bool)

(declare-fun e!2053427 () Bool)

(assert (=> b!3301904 (=> res!1339293 e!2053427)))

(assert (=> b!3301904 (= res!1339293 (not (is-ElementMatch!10046 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262)))))))

(assert (=> b!3301904 (= e!2053429 e!2053427)))

(declare-fun b!3301905 () Bool)

(declare-fun res!1339291 () Bool)

(assert (=> b!3301905 (=> (not res!1339291) (not e!2053428))))

(assert (=> b!3301905 (= res!1339291 (isEmpty!20598 (tail!5258 (tail!5258 lt!1118262))))))

(declare-fun b!3301906 () Bool)

(declare-fun res!1339292 () Bool)

(assert (=> b!3301906 (=> res!1339292 e!2053427)))

(assert (=> b!3301906 (= res!1339292 e!2053428)))

(declare-fun res!1339294 () Bool)

(assert (=> b!3301906 (=> (not res!1339294) (not e!2053428))))

(assert (=> b!3301906 (= res!1339294 lt!1119236)))

(declare-fun b!3301907 () Bool)

(assert (=> b!3301907 (= e!2053426 (= lt!1119236 call!240049))))

(declare-fun bm!240044 () Bool)

(assert (=> bm!240044 (= call!240049 (isEmpty!20598 (tail!5258 lt!1118262)))))

(declare-fun b!3301908 () Bool)

(assert (=> b!3301908 (= e!2053428 (= (head!7120 (tail!5258 lt!1118262)) (c!559680 (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262)))))))

(declare-fun b!3301909 () Bool)

(declare-fun e!2053425 () Bool)

(assert (=> b!3301909 (= e!2053427 e!2053425)))

(declare-fun res!1339295 () Bool)

(assert (=> b!3301909 (=> (not res!1339295) (not e!2053425))))

(assert (=> b!3301909 (= res!1339295 (not lt!1119236))))

(declare-fun b!3301910 () Bool)

(declare-fun res!1339298 () Bool)

(assert (=> b!3301910 (=> res!1339298 e!2053423)))

(assert (=> b!3301910 (= res!1339298 (not (isEmpty!20598 (tail!5258 (tail!5258 lt!1118262)))))))

(declare-fun b!3301911 () Bool)

(assert (=> b!3301911 (= e!2053429 (not lt!1119236))))

(declare-fun b!3301912 () Bool)

(assert (=> b!3301912 (= e!2053425 e!2053423)))

(declare-fun res!1339296 () Bool)

(assert (=> b!3301912 (=> res!1339296 e!2053423)))

(assert (=> b!3301912 (= res!1339296 call!240049)))

(assert (= (and d!924251 c!560151) b!3301899))

(assert (= (and d!924251 (not c!560151)) b!3301901))

(assert (= (and d!924251 c!560152) b!3301907))

(assert (= (and d!924251 (not c!560152)) b!3301902))

(assert (= (and b!3301902 c!560153) b!3301911))

(assert (= (and b!3301902 (not c!560153)) b!3301904))

(assert (= (and b!3301904 (not res!1339293)) b!3301906))

(assert (= (and b!3301906 res!1339294) b!3301900))

(assert (= (and b!3301900 res!1339297) b!3301905))

(assert (= (and b!3301905 res!1339291) b!3301908))

(assert (= (and b!3301906 (not res!1339292)) b!3301909))

(assert (= (and b!3301909 res!1339295) b!3301912))

(assert (= (and b!3301912 (not res!1339296)) b!3301910))

(assert (= (and b!3301910 (not res!1339298)) b!3301903))

(assert (= (or b!3301907 b!3301900 b!3301912) bm!240044))

(assert (=> b!3301905 m!3624179))

(assert (=> b!3301905 m!3626315))

(assert (=> b!3301905 m!3626315))

(assert (=> b!3301905 m!3626317))

(assert (=> b!3301899 m!3624187))

(declare-fun m!3626801 () Bool)

(assert (=> b!3301899 m!3626801))

(assert (=> bm!240044 m!3624179))

(assert (=> bm!240044 m!3624181))

(assert (=> b!3301901 m!3624179))

(assert (=> b!3301901 m!3626321))

(assert (=> b!3301901 m!3624187))

(assert (=> b!3301901 m!3626321))

(declare-fun m!3626803 () Bool)

(assert (=> b!3301901 m!3626803))

(assert (=> b!3301901 m!3624179))

(assert (=> b!3301901 m!3626315))

(assert (=> b!3301901 m!3626803))

(assert (=> b!3301901 m!3626315))

(declare-fun m!3626805 () Bool)

(assert (=> b!3301901 m!3626805))

(assert (=> b!3301903 m!3624179))

(assert (=> b!3301903 m!3626321))

(assert (=> b!3301908 m!3624179))

(assert (=> b!3301908 m!3626321))

(assert (=> b!3301910 m!3624179))

(assert (=> b!3301910 m!3626315))

(assert (=> b!3301910 m!3626315))

(assert (=> b!3301910 m!3626317))

(assert (=> d!924251 m!3624179))

(assert (=> d!924251 m!3624181))

(assert (=> d!924251 m!3624187))

(declare-fun m!3626807 () Bool)

(assert (=> d!924251 m!3626807))

(assert (=> b!3300384 d!924251))

(declare-fun b!3301913 () Bool)

(declare-fun e!2053434 () Regex!10046)

(declare-fun e!2053432 () Regex!10046)

(assert (=> b!3301913 (= e!2053434 e!2053432)))

(declare-fun c!560154 () Bool)

(assert (=> b!3301913 (= c!560154 (is-ElementMatch!10046 (regex!5287 lt!1118261)))))

(declare-fun call!240051 () Regex!10046)

(declare-fun bm!240046 () Bool)

(declare-fun c!560158 () Bool)

(assert (=> bm!240046 (= call!240051 (derivativeStep!2968 (ite c!560158 (regTwo!20605 (regex!5287 lt!1118261)) (regTwo!20604 (regex!5287 lt!1118261))) (head!7120 lt!1118262)))))

(declare-fun b!3301914 () Bool)

(assert (=> b!3301914 (= e!2053434 EmptyLang!10046)))

(declare-fun b!3301915 () Bool)

(declare-fun e!2053430 () Regex!10046)

(declare-fun call!240053 () Regex!10046)

(assert (=> b!3301915 (= e!2053430 (Union!10046 call!240053 call!240051))))

(declare-fun call!240052 () Regex!10046)

(declare-fun e!2053433 () Regex!10046)

(declare-fun b!3301916 () Bool)

(assert (=> b!3301916 (= e!2053433 (Union!10046 (Concat!15563 call!240052 (regTwo!20604 (regex!5287 lt!1118261))) call!240051))))

(declare-fun b!3301917 () Bool)

(declare-fun c!560157 () Bool)

(assert (=> b!3301917 (= c!560157 (nullable!3415 (regOne!20604 (regex!5287 lt!1118261))))))

(declare-fun e!2053431 () Regex!10046)

(assert (=> b!3301917 (= e!2053431 e!2053433)))

(declare-fun b!3301918 () Bool)

(assert (=> b!3301918 (= c!560158 (is-Union!10046 (regex!5287 lt!1118261)))))

(assert (=> b!3301918 (= e!2053432 e!2053430)))

(declare-fun b!3301919 () Bool)

(assert (=> b!3301919 (= e!2053432 (ite (= (head!7120 lt!1118262) (c!559680 (regex!5287 lt!1118261))) EmptyExpr!10046 EmptyLang!10046))))

(declare-fun bm!240047 () Bool)

(declare-fun call!240050 () Regex!10046)

(assert (=> bm!240047 (= call!240052 call!240050)))

(declare-fun b!3301920 () Bool)

(assert (=> b!3301920 (= e!2053433 (Union!10046 (Concat!15563 call!240052 (regTwo!20604 (regex!5287 lt!1118261))) EmptyLang!10046))))

(declare-fun bm!240048 () Bool)

(assert (=> bm!240048 (= call!240050 call!240053)))

(declare-fun bm!240045 () Bool)

(declare-fun c!560156 () Bool)

(assert (=> bm!240045 (= call!240053 (derivativeStep!2968 (ite c!560158 (regOne!20605 (regex!5287 lt!1118261)) (ite c!560156 (reg!10375 (regex!5287 lt!1118261)) (regOne!20604 (regex!5287 lt!1118261)))) (head!7120 lt!1118262)))))

(declare-fun d!924253 () Bool)

(declare-fun lt!1119237 () Regex!10046)

(assert (=> d!924253 (validRegex!4571 lt!1119237)))

(assert (=> d!924253 (= lt!1119237 e!2053434)))

(declare-fun c!560155 () Bool)

(assert (=> d!924253 (= c!560155 (or (is-EmptyExpr!10046 (regex!5287 lt!1118261)) (is-EmptyLang!10046 (regex!5287 lt!1118261))))))

(assert (=> d!924253 (validRegex!4571 (regex!5287 lt!1118261))))

(assert (=> d!924253 (= (derivativeStep!2968 (regex!5287 lt!1118261) (head!7120 lt!1118262)) lt!1119237)))

(declare-fun b!3301921 () Bool)

(assert (=> b!3301921 (= e!2053430 e!2053431)))

(assert (=> b!3301921 (= c!560156 (is-Star!10046 (regex!5287 lt!1118261)))))

(declare-fun b!3301922 () Bool)

(assert (=> b!3301922 (= e!2053431 (Concat!15563 call!240050 (regex!5287 lt!1118261)))))

(assert (= (and d!924253 c!560155) b!3301914))

(assert (= (and d!924253 (not c!560155)) b!3301913))

(assert (= (and b!3301913 c!560154) b!3301919))

(assert (= (and b!3301913 (not c!560154)) b!3301918))

(assert (= (and b!3301918 c!560158) b!3301915))

(assert (= (and b!3301918 (not c!560158)) b!3301921))

(assert (= (and b!3301921 c!560156) b!3301922))

(assert (= (and b!3301921 (not c!560156)) b!3301917))

(assert (= (and b!3301917 c!560157) b!3301916))

(assert (= (and b!3301917 (not c!560157)) b!3301920))

(assert (= (or b!3301916 b!3301920) bm!240047))

(assert (= (or b!3301922 bm!240047) bm!240048))

(assert (= (or b!3301915 bm!240048) bm!240045))

(assert (= (or b!3301915 b!3301916) bm!240046))

(assert (=> bm!240046 m!3623557))

(declare-fun m!3626809 () Bool)

(assert (=> bm!240046 m!3626809))

(declare-fun m!3626811 () Bool)

(assert (=> b!3301917 m!3626811))

(assert (=> bm!240045 m!3623557))

(declare-fun m!3626813 () Bool)

(assert (=> bm!240045 m!3626813))

(declare-fun m!3626815 () Bool)

(assert (=> d!924253 m!3626815))

(assert (=> d!924253 m!3624191))

(assert (=> b!3300384 d!924253))

(assert (=> b!3300384 d!923451))

(assert (=> b!3300384 d!923861))

(declare-fun d!924255 () Bool)

(assert (=> d!924255 (= (isDefined!5636 lt!1118540) (not (isEmpty!20606 lt!1118540)))))

(declare-fun bs!548685 () Bool)

(assert (= bs!548685 d!924255))

(assert (=> bs!548685 m!3624363))

(assert (=> b!3300552 d!924255))

(declare-fun b!3301931 () Bool)

(declare-fun e!2053443 () Bool)

(declare-fun call!240056 () Bool)

(assert (=> b!3301931 (= e!2053443 call!240056)))

(declare-fun bm!240051 () Bool)

(assert (=> bm!240051 (= call!240056 (ruleDisjointCharsFromAllFromOtherType!620 (h!41881 rules!2135) (t!252750 rules!2135)))))

(declare-fun b!3301932 () Bool)

(declare-fun e!2053441 () Bool)

(assert (=> b!3301932 (= e!2053441 e!2053443)))

(declare-fun res!1339304 () Bool)

(assert (=> b!3301932 (= res!1339304 (not (is-Cons!36461 rules!2135)))))

(assert (=> b!3301932 (=> res!1339304 e!2053443)))

(declare-fun d!924257 () Bool)

(declare-fun c!560161 () Bool)

(assert (=> d!924257 (= c!560161 (and (is-Cons!36461 rules!2135) (not (= (isSeparator!5287 (h!41881 rules!2135)) (isSeparator!5287 (h!41881 rules!2135))))))))

(assert (=> d!924257 (= (ruleDisjointCharsFromAllFromOtherType!620 (h!41881 rules!2135) rules!2135) e!2053441)))

(declare-fun b!3301933 () Bool)

(declare-fun e!2053442 () Bool)

(assert (=> b!3301933 (= e!2053441 e!2053442)))

(declare-fun res!1339303 () Bool)

(declare-fun rulesUseDisjointChars!293 (Rule!10374 Rule!10374) Bool)

(assert (=> b!3301933 (= res!1339303 (rulesUseDisjointChars!293 (h!41881 rules!2135) (h!41881 rules!2135)))))

(assert (=> b!3301933 (=> (not res!1339303) (not e!2053442))))

(declare-fun b!3301934 () Bool)

(assert (=> b!3301934 (= e!2053442 call!240056)))

(assert (= (and d!924257 c!560161) b!3301933))

(assert (= (and d!924257 (not c!560161)) b!3301932))

(assert (= (and b!3301933 res!1339303) b!3301934))

(assert (= (and b!3301932 (not res!1339304)) b!3301931))

(assert (= (or b!3301934 b!3301931) bm!240051))

(declare-fun m!3626817 () Bool)

(assert (=> bm!240051 m!3626817))

(declare-fun m!3626819 () Bool)

(assert (=> b!3301933 m!3626819))

(assert (=> b!3300454 d!924257))

(declare-fun b!3301936 () Bool)

(declare-fun e!2053445 () List!36583)

(assert (=> b!3301936 (= e!2053445 (Cons!36459 (h!41879 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))) (++!8815 (t!252748 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))) (_2!21112 (get!11636 lt!1118535)))))))

(declare-fun b!3301935 () Bool)

(assert (=> b!3301935 (= e!2053445 (_2!21112 (get!11636 lt!1118535)))))

(declare-fun b!3301937 () Bool)

(declare-fun res!1339305 () Bool)

(declare-fun e!2053444 () Bool)

(assert (=> b!3301937 (=> (not res!1339305) (not e!2053444))))

(declare-fun lt!1119238 () List!36583)

(assert (=> b!3301937 (= res!1339305 (= (size!27531 lt!1119238) (+ (size!27531 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))) (size!27531 (_2!21112 (get!11636 lt!1118535))))))))

(declare-fun d!924259 () Bool)

(assert (=> d!924259 e!2053444))

(declare-fun res!1339306 () Bool)

(assert (=> d!924259 (=> (not res!1339306) (not e!2053444))))

(assert (=> d!924259 (= res!1339306 (= (content!4957 lt!1119238) (set.union (content!4957 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))) (content!4957 (_2!21112 (get!11636 lt!1118535))))))))

(assert (=> d!924259 (= lt!1119238 e!2053445)))

(declare-fun c!560162 () Bool)

(assert (=> d!924259 (= c!560162 (is-Nil!36459 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))))))

(assert (=> d!924259 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))) (_2!21112 (get!11636 lt!1118535))) lt!1119238)))

(declare-fun b!3301938 () Bool)

(assert (=> b!3301938 (= e!2053444 (or (not (= (_2!21112 (get!11636 lt!1118535)) Nil!36459)) (= lt!1119238 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))))))))

(assert (= (and d!924259 c!560162) b!3301935))

(assert (= (and d!924259 (not c!560162)) b!3301936))

(assert (= (and d!924259 res!1339306) b!3301937))

(assert (= (and b!3301937 res!1339305) b!3301938))

(declare-fun m!3626821 () Bool)

(assert (=> b!3301936 m!3626821))

(declare-fun m!3626823 () Bool)

(assert (=> b!3301937 m!3626823))

(assert (=> b!3301937 m!3624317))

(declare-fun m!3626825 () Bool)

(assert (=> b!3301937 m!3626825))

(assert (=> b!3301937 m!3624341))

(declare-fun m!3626827 () Bool)

(assert (=> d!924259 m!3626827))

(assert (=> d!924259 m!3624317))

(declare-fun m!3626829 () Bool)

(assert (=> d!924259 m!3626829))

(declare-fun m!3626831 () Bool)

(assert (=> d!924259 m!3626831))

(assert (=> b!3300540 d!924259))

(assert (=> b!3300540 d!923799))

(assert (=> b!3300540 d!923801))

(assert (=> b!3300540 d!923803))

(declare-fun b!3301940 () Bool)

(declare-fun e!2053447 () List!36583)

(assert (=> b!3301940 (= e!2053447 (Cons!36459 (h!41879 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (++!8815 (t!252748 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460))))))))

(declare-fun b!3301939 () Bool)

(assert (=> b!3301939 (= e!2053447 (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460))))))

(declare-fun b!3301941 () Bool)

(declare-fun res!1339307 () Bool)

(declare-fun e!2053446 () Bool)

(assert (=> b!3301941 (=> (not res!1339307) (not e!2053446))))

(declare-fun lt!1119239 () List!36583)

(assert (=> b!3301941 (= res!1339307 (= (size!27531 lt!1119239) (+ (size!27531 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (size!27531 (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))))))

(declare-fun d!924261 () Bool)

(assert (=> d!924261 e!2053446))

(declare-fun res!1339308 () Bool)

(assert (=> d!924261 (=> (not res!1339308) (not e!2053446))))

(assert (=> d!924261 (= res!1339308 (= (content!4957 lt!1119239) (set.union (content!4957 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (content!4957 (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))))))

(assert (=> d!924261 (= lt!1119239 e!2053447)))

(declare-fun c!560163 () Bool)

(assert (=> d!924261 (= c!560163 (is-Nil!36459 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))))))

(assert (=> d!924261 (= (++!8815 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))) (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460)))) lt!1119239)))

(declare-fun b!3301942 () Bool)

(assert (=> b!3301942 (= e!2053446 (or (not (= (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460))) Nil!36459)) (= lt!1119239 (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))))))

(assert (= (and d!924261 c!560163) b!3301939))

(assert (= (and d!924261 (not c!560163)) b!3301940))

(assert (= (and d!924261 res!1339308) b!3301941))

(assert (= (and b!3301941 res!1339307) b!3301942))

(assert (=> b!3301940 m!3624171))

(declare-fun m!3626833 () Bool)

(assert (=> b!3301940 m!3626833))

(declare-fun m!3626835 () Bool)

(assert (=> b!3301941 m!3626835))

(assert (=> b!3301941 m!3624169))

(declare-fun m!3626837 () Bool)

(assert (=> b!3301941 m!3626837))

(assert (=> b!3301941 m!3624171))

(declare-fun m!3626839 () Bool)

(assert (=> b!3301941 m!3626839))

(declare-fun m!3626841 () Bool)

(assert (=> d!924261 m!3626841))

(assert (=> d!924261 m!3624169))

(declare-fun m!3626843 () Bool)

(assert (=> d!924261 m!3626843))

(assert (=> d!924261 m!3624171))

(declare-fun m!3626845 () Bool)

(assert (=> d!924261 m!3626845))

(assert (=> b!3300377 d!924261))

(declare-fun d!924263 () Bool)

(assert (=> d!924263 (= (list!13054 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))) (list!13059 (c!559681 (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))))))

(declare-fun bs!548686 () Bool)

(assert (= bs!548686 d!924263))

(declare-fun m!3626847 () Bool)

(assert (=> bs!548686 m!3626847))

(assert (=> b!3300377 d!924263))

(declare-fun d!924265 () Bool)

(declare-fun lt!1119240 () BalanceConc!21512)

(assert (=> d!924265 (= (list!13054 lt!1119240) (originalCharacters!6001 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))))

(assert (=> d!924265 (= lt!1119240 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (value!171141 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))))

(assert (=> d!924265 (= (charsOf!3303 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))) lt!1119240)))

(declare-fun b_lambda!92083 () Bool)

(assert (=> (not b_lambda!92083) (not d!924265)))

(declare-fun tb!171005 () Bool)

(declare-fun t!252931 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) t!252931) tb!171005))

(declare-fun b!3301943 () Bool)

(declare-fun e!2053448 () Bool)

(declare-fun tp!1033808 () Bool)

(assert (=> b!3301943 (= e!2053448 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (value!171141 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) tp!1033808))))

(declare-fun result!213758 () Bool)

(assert (=> tb!171005 (= result!213758 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (value!171141 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) e!2053448))))

(assert (= tb!171005 b!3301943))

(declare-fun m!3626849 () Bool)

(assert (=> b!3301943 m!3626849))

(declare-fun m!3626851 () Bool)

(assert (=> tb!171005 m!3626851))

(assert (=> d!924265 t!252931))

(declare-fun b_and!226001 () Bool)

(assert (= b_and!225987 (and (=> t!252931 result!213758) b_and!226001)))

(declare-fun t!252933 () Bool)

(declare-fun tb!171007 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) t!252933) tb!171007))

(declare-fun result!213760 () Bool)

(assert (= result!213760 result!213758))

(assert (=> d!924265 t!252933))

(declare-fun b_and!226003 () Bool)

(assert (= b_and!225985 (and (=> t!252933 result!213760) b_and!226003)))

(declare-fun t!252935 () Bool)

(declare-fun tb!171009 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) t!252935) tb!171009))

(declare-fun result!213762 () Bool)

(assert (= result!213762 result!213758))

(assert (=> d!924265 t!252935))

(declare-fun b_and!226005 () Bool)

(assert (= b_and!225989 (and (=> t!252935 result!213762) b_and!226005)))

(declare-fun t!252937 () Bool)

(declare-fun tb!171011 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) t!252937) tb!171011))

(declare-fun result!213764 () Bool)

(assert (= result!213764 result!213758))

(assert (=> d!924265 t!252937))

(declare-fun b_and!226007 () Bool)

(assert (= b_and!225981 (and (=> t!252937 result!213764) b_and!226007)))

(declare-fun t!252939 () Bool)

(declare-fun tb!171013 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) t!252939) tb!171013))

(declare-fun result!213766 () Bool)

(assert (= result!213766 result!213758))

(assert (=> d!924265 t!252939))

(declare-fun b_and!226009 () Bool)

(assert (= b_and!225983 (and (=> t!252939 result!213766) b_and!226009)))

(declare-fun m!3626853 () Bool)

(assert (=> d!924265 m!3626853))

(declare-fun m!3626855 () Bool)

(assert (=> d!924265 m!3626855))

(assert (=> b!3300377 d!924265))

(declare-fun d!924267 () Bool)

(declare-fun c!560164 () Bool)

(assert (=> d!924267 (= c!560164 (is-Cons!36460 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460))))))

(declare-fun e!2053449 () List!36583)

(assert (=> d!924267 (= (printList!1426 thiss!18206 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460))) e!2053449)))

(declare-fun b!3301944 () Bool)

(assert (=> b!3301944 (= e!2053449 (++!8815 (list!13054 (charsOf!3303 (h!41880 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460))))) (printList!1426 thiss!18206 (t!252749 (t!252749 (Cons!36460 (h!41880 tokens!494) Nil!36460))))))))

(declare-fun b!3301945 () Bool)

(assert (=> b!3301945 (= e!2053449 Nil!36459)))

(assert (= (and d!924267 c!560164) b!3301944))

(assert (= (and d!924267 (not c!560164)) b!3301945))

(declare-fun m!3626857 () Bool)

(assert (=> b!3301944 m!3626857))

(assert (=> b!3301944 m!3626857))

(declare-fun m!3626859 () Bool)

(assert (=> b!3301944 m!3626859))

(declare-fun m!3626861 () Bool)

(assert (=> b!3301944 m!3626861))

(assert (=> b!3301944 m!3626859))

(assert (=> b!3301944 m!3626861))

(declare-fun m!3626863 () Bool)

(assert (=> b!3301944 m!3626863))

(assert (=> b!3300377 d!924267))

(declare-fun e!2053451 () List!36584)

(declare-fun b!3301949 () Bool)

(assert (=> b!3301949 (= e!2053451 (++!8819 (list!13061 (left!28396 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))) (list!13061 (right!28726 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))))

(declare-fun b!3301947 () Bool)

(declare-fun e!2053450 () List!36584)

(assert (=> b!3301947 (= e!2053450 e!2053451)))

(declare-fun c!560166 () Bool)

(assert (=> b!3301947 (= c!560166 (is-Leaf!17205 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))

(declare-fun b!3301946 () Bool)

(assert (=> b!3301946 (= e!2053450 Nil!36460)))

(declare-fun b!3301948 () Bool)

(assert (=> b!3301948 (= e!2053451 (list!13063 (xs!14088 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255))))))))

(declare-fun d!924269 () Bool)

(declare-fun c!560165 () Bool)

(assert (=> d!924269 (= c!560165 (is-Empty!10950 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))

(assert (=> d!924269 (= (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))) e!2053450)))

(assert (= (and d!924269 c!560165) b!3301946))

(assert (= (and d!924269 (not c!560165)) b!3301947))

(assert (= (and b!3301947 c!560166) b!3301948))

(assert (= (and b!3301947 (not c!560166)) b!3301949))

(declare-fun m!3626865 () Bool)

(assert (=> b!3301949 m!3626865))

(declare-fun m!3626867 () Bool)

(assert (=> b!3301949 m!3626867))

(assert (=> b!3301949 m!3626865))

(assert (=> b!3301949 m!3626867))

(declare-fun m!3626869 () Bool)

(assert (=> b!3301949 m!3626869))

(declare-fun m!3626871 () Bool)

(assert (=> b!3301948 m!3626871))

(assert (=> d!923675 d!924269))

(declare-fun d!924271 () Bool)

(declare-fun lt!1119241 () Int)

(assert (=> d!924271 (>= lt!1119241 0)))

(declare-fun e!2053452 () Int)

(assert (=> d!924271 (= lt!1119241 e!2053452)))

(declare-fun c!560167 () Bool)

(assert (=> d!924271 (= c!560167 (is-Nil!36460 (_1!21111 lt!1118610)))))

(assert (=> d!924271 (= (size!27539 (_1!21111 lt!1118610)) lt!1119241)))

(declare-fun b!3301950 () Bool)

(assert (=> b!3301950 (= e!2053452 0)))

(declare-fun b!3301951 () Bool)

(assert (=> b!3301951 (= e!2053452 (+ 1 (size!27539 (t!252749 (_1!21111 lt!1118610)))))))

(assert (= (and d!924271 c!560167) b!3301950))

(assert (= (and d!924271 (not c!560167)) b!3301951))

(declare-fun m!3626873 () Bool)

(assert (=> b!3301951 m!3626873))

(assert (=> d!923615 d!924271))

(declare-fun b!3301952 () Bool)

(declare-fun res!1339314 () Bool)

(declare-fun e!2053454 () Bool)

(assert (=> b!3301952 (=> (not res!1339314) (not e!2053454))))

(declare-fun lt!1119244 () Option!7269)

(assert (=> b!3301952 (= res!1339314 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119244)))) (_2!21112 (get!11636 lt!1119244))) (_2!21112 (v!36014 lt!1118267))))))

(declare-fun b!3301953 () Bool)

(declare-fun res!1339311 () Bool)

(assert (=> b!3301953 (=> (not res!1339311) (not e!2053454))))

(assert (=> b!3301953 (= res!1339311 (= (value!171141 (_1!21112 (get!11636 lt!1119244))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1119244)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1119244)))))))))

(declare-fun d!924273 () Bool)

(declare-fun e!2053453 () Bool)

(assert (=> d!924273 e!2053453))

(declare-fun res!1339315 () Bool)

(assert (=> d!924273 (=> res!1339315 e!2053453)))

(assert (=> d!924273 (= res!1339315 (isEmpty!20606 lt!1119244))))

(declare-fun e!2053455 () Option!7269)

(assert (=> d!924273 (= lt!1119244 e!2053455)))

(declare-fun c!560168 () Bool)

(assert (=> d!924273 (= c!560168 (and (is-Cons!36461 rules!2135) (is-Nil!36461 (t!252750 rules!2135))))))

(declare-fun lt!1119243 () Unit!51389)

(declare-fun lt!1119245 () Unit!51389)

(assert (=> d!924273 (= lt!1119243 lt!1119245)))

(assert (=> d!924273 (isPrefix!2804 (_2!21112 (v!36014 lt!1118267)) (_2!21112 (v!36014 lt!1118267)))))

(assert (=> d!924273 (= lt!1119245 (lemmaIsPrefixRefl!1763 (_2!21112 (v!36014 lt!1118267)) (_2!21112 (v!36014 lt!1118267))))))

(assert (=> d!924273 (rulesValidInductive!1803 thiss!18206 rules!2135)))

(assert (=> d!924273 (= (maxPrefix!2504 thiss!18206 rules!2135 (_2!21112 (v!36014 lt!1118267))) lt!1119244)))

(declare-fun b!3301954 () Bool)

(assert (=> b!3301954 (= e!2053454 (contains!6585 rules!2135 (rule!7785 (_1!21112 (get!11636 lt!1119244)))))))

(declare-fun bm!240052 () Bool)

(declare-fun call!240057 () Option!7269)

(assert (=> bm!240052 (= call!240057 (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) (_2!21112 (v!36014 lt!1118267))))))

(declare-fun b!3301955 () Bool)

(assert (=> b!3301955 (= e!2053453 e!2053454)))

(declare-fun res!1339309 () Bool)

(assert (=> b!3301955 (=> (not res!1339309) (not e!2053454))))

(assert (=> b!3301955 (= res!1339309 (isDefined!5636 lt!1119244))))

(declare-fun b!3301956 () Bool)

(declare-fun lt!1119242 () Option!7269)

(declare-fun lt!1119246 () Option!7269)

(assert (=> b!3301956 (= e!2053455 (ite (and (is-None!7268 lt!1119242) (is-None!7268 lt!1119246)) None!7268 (ite (is-None!7268 lt!1119246) lt!1119242 (ite (is-None!7268 lt!1119242) lt!1119246 (ite (>= (size!27530 (_1!21112 (v!36014 lt!1119242))) (size!27530 (_1!21112 (v!36014 lt!1119246)))) lt!1119242 lt!1119246)))))))

(assert (=> b!3301956 (= lt!1119242 call!240057)))

(assert (=> b!3301956 (= lt!1119246 (maxPrefix!2504 thiss!18206 (t!252750 rules!2135) (_2!21112 (v!36014 lt!1118267))))))

(declare-fun b!3301957 () Bool)

(declare-fun res!1339312 () Bool)

(assert (=> b!3301957 (=> (not res!1339312) (not e!2053454))))

(assert (=> b!3301957 (= res!1339312 (= (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119244)))) (originalCharacters!6001 (_1!21112 (get!11636 lt!1119244)))))))

(declare-fun b!3301958 () Bool)

(declare-fun res!1339313 () Bool)

(assert (=> b!3301958 (=> (not res!1339313) (not e!2053454))))

(assert (=> b!3301958 (= res!1339313 (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1119244)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119244))))))))

(declare-fun b!3301959 () Bool)

(assert (=> b!3301959 (= e!2053455 call!240057)))

(declare-fun b!3301960 () Bool)

(declare-fun res!1339310 () Bool)

(assert (=> b!3301960 (=> (not res!1339310) (not e!2053454))))

(assert (=> b!3301960 (= res!1339310 (< (size!27531 (_2!21112 (get!11636 lt!1119244))) (size!27531 (_2!21112 (v!36014 lt!1118267)))))))

(assert (= (and d!924273 c!560168) b!3301959))

(assert (= (and d!924273 (not c!560168)) b!3301956))

(assert (= (or b!3301959 b!3301956) bm!240052))

(assert (= (and d!924273 (not res!1339315)) b!3301955))

(assert (= (and b!3301955 res!1339309) b!3301957))

(assert (= (and b!3301957 res!1339312) b!3301960))

(assert (= (and b!3301960 res!1339310) b!3301952))

(assert (= (and b!3301952 res!1339314) b!3301953))

(assert (= (and b!3301953 res!1339311) b!3301958))

(assert (= (and b!3301958 res!1339313) b!3301954))

(declare-fun m!3626875 () Bool)

(assert (=> b!3301958 m!3626875))

(declare-fun m!3626877 () Bool)

(assert (=> b!3301958 m!3626877))

(assert (=> b!3301958 m!3626877))

(declare-fun m!3626879 () Bool)

(assert (=> b!3301958 m!3626879))

(assert (=> b!3301958 m!3626879))

(declare-fun m!3626881 () Bool)

(assert (=> b!3301958 m!3626881))

(assert (=> b!3301957 m!3626875))

(assert (=> b!3301957 m!3626877))

(assert (=> b!3301957 m!3626877))

(assert (=> b!3301957 m!3626879))

(declare-fun m!3626883 () Bool)

(assert (=> bm!240052 m!3626883))

(assert (=> b!3301953 m!3626875))

(declare-fun m!3626885 () Bool)

(assert (=> b!3301953 m!3626885))

(assert (=> b!3301953 m!3626885))

(declare-fun m!3626887 () Bool)

(assert (=> b!3301953 m!3626887))

(declare-fun m!3626889 () Bool)

(assert (=> b!3301955 m!3626889))

(declare-fun m!3626891 () Bool)

(assert (=> d!924273 m!3626891))

(declare-fun m!3626893 () Bool)

(assert (=> d!924273 m!3626893))

(declare-fun m!3626895 () Bool)

(assert (=> d!924273 m!3626895))

(assert (=> d!924273 m!3624335))

(assert (=> b!3301954 m!3626875))

(declare-fun m!3626897 () Bool)

(assert (=> b!3301954 m!3626897))

(declare-fun m!3626899 () Bool)

(assert (=> b!3301956 m!3626899))

(assert (=> b!3301960 m!3626875))

(declare-fun m!3626901 () Bool)

(assert (=> b!3301960 m!3626901))

(assert (=> b!3301960 m!3624693))

(assert (=> b!3301952 m!3626875))

(assert (=> b!3301952 m!3626877))

(assert (=> b!3301952 m!3626877))

(assert (=> b!3301952 m!3626879))

(assert (=> b!3301952 m!3626879))

(declare-fun m!3626903 () Bool)

(assert (=> b!3301952 m!3626903))

(assert (=> d!923615 d!924273))

(declare-fun bs!548687 () Bool)

(declare-fun d!924275 () Bool)

(assert (= bs!548687 (and d!924275 d!923935)))

(declare-fun lambda!118890 () Int)

(assert (=> bs!548687 (= (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (= lambda!118890 lambda!118879))))

(declare-fun bs!548688 () Bool)

(assert (= bs!548688 (and d!924275 d!924075)))

(assert (=> bs!548688 (= (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241)))) (= lambda!118890 lambda!118883))))

(assert (=> d!924275 true))

(assert (=> d!924275 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (h!41881 rules!2135)))) (dynLambda!14927 order!18909 lambda!118890))))

(assert (=> d!924275 (= (equivClasses!2083 (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (h!41881 rules!2135)))) (Forall2!885 lambda!118890))))

(declare-fun bs!548689 () Bool)

(assert (= bs!548689 d!924275))

(declare-fun m!3626905 () Bool)

(assert (=> bs!548689 m!3626905))

(assert (=> b!3300831 d!924275))

(declare-fun bs!548690 () Bool)

(declare-fun d!924277 () Bool)

(assert (= bs!548690 (and d!924277 d!923929)))

(declare-fun lambda!118891 () Int)

(assert (=> bs!548690 (= (and (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (h!41881 rules!2135)))) (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (h!41881 rules!2135))))) (= lambda!118891 lambda!118876))))

(assert (=> d!924277 true))

(assert (=> d!924277 (< (dynLambda!14923 order!18905 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) (dynLambda!14926 order!18907 lambda!118891))))

(assert (=> d!924277 true))

(assert (=> d!924277 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241)))) (dynLambda!14926 order!18907 lambda!118891))))

(assert (=> d!924277 (= (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241)))) (Forall!1288 lambda!118891))))

(declare-fun bs!548691 () Bool)

(assert (= bs!548691 d!924277))

(declare-fun m!3626907 () Bool)

(assert (=> bs!548691 m!3626907))

(assert (=> d!923621 d!924277))

(declare-fun d!924279 () Bool)

(declare-fun c!560169 () Bool)

(assert (=> d!924279 (= c!560169 (is-Nil!36460 lt!1118654))))

(declare-fun e!2053456 () (Set Token!9940))

(assert (=> d!924279 (= (content!4959 lt!1118654) e!2053456)))

(declare-fun b!3301961 () Bool)

(assert (=> b!3301961 (= e!2053456 (as set.empty (Set Token!9940)))))

(declare-fun b!3301962 () Bool)

(assert (=> b!3301962 (= e!2053456 (set.union (set.insert (h!41880 lt!1118654) (as set.empty (Set Token!9940))) (content!4959 (t!252749 lt!1118654))))))

(assert (= (and d!924279 c!560169) b!3301961))

(assert (= (and d!924279 (not c!560169)) b!3301962))

(declare-fun m!3626909 () Bool)

(assert (=> b!3301962 m!3626909))

(declare-fun m!3626911 () Bool)

(assert (=> b!3301962 m!3626911))

(assert (=> b!3300890 d!924279))

(declare-fun c!560170 () Bool)

(declare-fun d!924281 () Bool)

(assert (=> d!924281 (= c!560170 (is-Nil!36460 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(declare-fun e!2053457 () (Set Token!9940))

(assert (=> d!924281 (= (content!4959 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))) e!2053457)))

(declare-fun b!3301963 () Bool)

(assert (=> b!3301963 (= e!2053457 (as set.empty (Set Token!9940)))))

(declare-fun b!3301964 () Bool)

(assert (=> b!3301964 (= e!2053457 (set.union (set.insert (h!41880 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))) (as set.empty (Set Token!9940))) (content!4959 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))))

(assert (= (and d!924281 c!560170) b!3301963))

(assert (= (and d!924281 (not c!560170)) b!3301964))

(declare-fun m!3626913 () Bool)

(assert (=> b!3301964 m!3626913))

(assert (=> b!3301964 m!3625117))

(assert (=> b!3300890 d!924281))

(assert (=> b!3300393 d!923859))

(assert (=> b!3300393 d!923861))

(declare-fun b!3301967 () Bool)

(declare-fun e!2053459 () List!36583)

(assert (=> b!3301967 (= e!2053459 (list!13062 (xs!14087 (c!559681 lt!1118268))))))

(declare-fun b!3301966 () Bool)

(declare-fun e!2053458 () List!36583)

(assert (=> b!3301966 (= e!2053458 e!2053459)))

(declare-fun c!560172 () Bool)

(assert (=> b!3301966 (= c!560172 (is-Leaf!17204 (c!559681 lt!1118268)))))

(declare-fun d!924283 () Bool)

(declare-fun c!560171 () Bool)

(assert (=> d!924283 (= c!560171 (is-Empty!10949 (c!559681 lt!1118268)))))

(assert (=> d!924283 (= (list!13059 (c!559681 lt!1118268)) e!2053458)))

(declare-fun b!3301965 () Bool)

(assert (=> b!3301965 (= e!2053458 Nil!36459)))

(declare-fun b!3301968 () Bool)

(assert (=> b!3301968 (= e!2053459 (++!8815 (list!13059 (left!28395 (c!559681 lt!1118268))) (list!13059 (right!28725 (c!559681 lt!1118268)))))))

(assert (= (and d!924283 c!560171) b!3301965))

(assert (= (and d!924283 (not c!560171)) b!3301966))

(assert (= (and b!3301966 c!560172) b!3301967))

(assert (= (and b!3301966 (not c!560172)) b!3301968))

(declare-fun m!3626915 () Bool)

(assert (=> b!3301967 m!3626915))

(declare-fun m!3626917 () Bool)

(assert (=> b!3301968 m!3626917))

(declare-fun m!3626919 () Bool)

(assert (=> b!3301968 m!3626919))

(assert (=> b!3301968 m!3626917))

(assert (=> b!3301968 m!3626919))

(declare-fun m!3626921 () Bool)

(assert (=> b!3301968 m!3626921))

(assert (=> d!923461 d!924283))

(declare-fun d!924285 () Bool)

(assert (=> d!924285 (= (list!13054 (_2!21113 lt!1118659)) (list!13059 (c!559681 (_2!21113 lt!1118659))))))

(declare-fun bs!548692 () Bool)

(assert (= bs!548692 d!924285))

(declare-fun m!3626923 () Bool)

(assert (=> bs!548692 m!3626923))

(assert (=> b!3300906 d!924285))

(assert (=> b!3300906 d!924221))

(assert (=> b!3300906 d!923641))

(declare-fun d!924287 () Bool)

(assert (=> d!924287 (= (inv!17 (value!171141 (h!41880 tokens!494))) (= (charsToBigInt!1 (text!39067 (value!171141 (h!41880 tokens!494)))) (value!171133 (value!171141 (h!41880 tokens!494)))))))

(declare-fun bs!548693 () Bool)

(assert (= bs!548693 d!924287))

(declare-fun m!3626925 () Bool)

(assert (=> bs!548693 m!3626925))

(assert (=> b!3300836 d!924287))

(assert (=> b!3300169 d!924223))

(assert (=> b!3300169 d!923421))

(declare-fun d!924289 () Bool)

(declare-fun lt!1119247 () Int)

(assert (=> d!924289 (>= lt!1119247 0)))

(declare-fun e!2053460 () Int)

(assert (=> d!924289 (= lt!1119247 e!2053460)))

(declare-fun c!560173 () Bool)

(assert (=> d!924289 (= c!560173 (is-Nil!36460 lt!1118497))))

(assert (=> d!924289 (= (size!27539 lt!1118497) lt!1119247)))

(declare-fun b!3301969 () Bool)

(assert (=> b!3301969 (= e!2053460 0)))

(declare-fun b!3301970 () Bool)

(assert (=> b!3301970 (= e!2053460 (+ 1 (size!27539 (t!252749 lt!1118497))))))

(assert (= (and d!924289 c!560173) b!3301969))

(assert (= (and d!924289 (not c!560173)) b!3301970))

(declare-fun m!3626927 () Bool)

(assert (=> b!3301970 m!3626927))

(assert (=> d!923489 d!924289))

(declare-fun d!924291 () Bool)

(declare-fun lt!1119248 () Int)

(assert (=> d!924291 (>= lt!1119248 0)))

(declare-fun e!2053461 () Int)

(assert (=> d!924291 (= lt!1119248 e!2053461)))

(declare-fun c!560174 () Bool)

(assert (=> d!924291 (= c!560174 (is-Nil!36460 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))

(assert (=> d!924291 (= (size!27539 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))) lt!1119248)))

(declare-fun b!3301971 () Bool)

(assert (=> b!3301971 (= e!2053461 0)))

(declare-fun b!3301972 () Bool)

(assert (=> b!3301972 (= e!2053461 (+ 1 (size!27539 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))))

(assert (= (and d!924291 c!560174) b!3301971))

(assert (= (and d!924291 (not c!560174)) b!3301972))

(assert (=> b!3301972 m!3626227))

(assert (=> d!923489 d!924291))

(declare-fun d!924293 () Bool)

(assert (=> d!924293 (= (inv!16 (value!171141 separatorToken!241)) (= (charsToInt!0 (text!39066 (value!171141 separatorToken!241))) (value!171132 (value!171141 separatorToken!241))))))

(declare-fun bs!548694 () Bool)

(assert (= bs!548694 d!924293))

(declare-fun m!3626929 () Bool)

(assert (=> bs!548694 m!3626929))

(assert (=> b!3300446 d!924293))

(assert (=> bm!239892 d!923775))

(assert (=> b!3300367 d!923821))

(declare-fun d!924295 () Bool)

(assert (=> d!924295 (= (nullable!3415 (regex!5287 (rule!7785 separatorToken!241))) (nullableFct!981 (regex!5287 (rule!7785 separatorToken!241))))))

(declare-fun bs!548695 () Bool)

(assert (= bs!548695 d!924295))

(declare-fun m!3626931 () Bool)

(assert (=> bs!548695 m!3626931))

(assert (=> b!3300763 d!924295))

(declare-fun d!924297 () Bool)

(assert (=> d!924297 (= (list!13054 lt!1118469) (list!13059 (c!559681 lt!1118469)))))

(declare-fun bs!548696 () Bool)

(assert (= bs!548696 d!924297))

(declare-fun m!3626933 () Bool)

(assert (=> bs!548696 m!3626933))

(assert (=> d!923463 d!924297))

(declare-fun d!924299 () Bool)

(declare-fun c!560175 () Bool)

(assert (=> d!924299 (= c!560175 (is-Cons!36460 (list!13055 lt!1118277)))))

(declare-fun e!2053462 () List!36583)

(assert (=> d!924299 (= (printList!1426 thiss!18206 (list!13055 lt!1118277)) e!2053462)))

(declare-fun b!3301973 () Bool)

(assert (=> b!3301973 (= e!2053462 (++!8815 (list!13054 (charsOf!3303 (h!41880 (list!13055 lt!1118277)))) (printList!1426 thiss!18206 (t!252749 (list!13055 lt!1118277)))))))

(declare-fun b!3301974 () Bool)

(assert (=> b!3301974 (= e!2053462 Nil!36459)))

(assert (= (and d!924299 c!560175) b!3301973))

(assert (= (and d!924299 (not c!560175)) b!3301974))

(declare-fun m!3626935 () Bool)

(assert (=> b!3301973 m!3626935))

(assert (=> b!3301973 m!3626935))

(declare-fun m!3626937 () Bool)

(assert (=> b!3301973 m!3626937))

(declare-fun m!3626939 () Bool)

(assert (=> b!3301973 m!3626939))

(assert (=> b!3301973 m!3626937))

(assert (=> b!3301973 m!3626939))

(declare-fun m!3626941 () Bool)

(assert (=> b!3301973 m!3626941))

(assert (=> d!923463 d!924299))

(assert (=> d!923463 d!924177))

(assert (=> d!923463 d!923467))

(declare-fun d!924301 () Bool)

(assert (=> d!924301 (= (list!13055 (_1!21113 lt!1118624)) (list!13061 (c!559682 (_1!21113 lt!1118624))))))

(declare-fun bs!548697 () Bool)

(assert (= bs!548697 d!924301))

(declare-fun m!3626943 () Bool)

(assert (=> bs!548697 m!3626943))

(assert (=> b!3300830 d!924301))

(assert (=> b!3300830 d!923793))

(assert (=> b!3300830 d!923795))

(declare-fun b!3301975 () Bool)

(declare-fun e!2053464 () Bool)

(assert (=> b!3301975 (= e!2053464 (nullable!3415 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))))))

(declare-fun b!3301976 () Bool)

(declare-fun res!1339322 () Bool)

(declare-fun e!2053468 () Bool)

(assert (=> b!3301976 (=> (not res!1339322) (not e!2053468))))

(declare-fun call!240058 () Bool)

(assert (=> b!3301976 (= res!1339322 (not call!240058))))

(declare-fun b!3301977 () Bool)

(assert (=> b!3301977 (= e!2053464 (matchR!4668 (derivativeStep!2968 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))) (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))))) (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))))))))

(declare-fun b!3301978 () Bool)

(declare-fun e!2053466 () Bool)

(declare-fun e!2053469 () Bool)

(assert (=> b!3301978 (= e!2053466 e!2053469)))

(declare-fun c!560178 () Bool)

(assert (=> b!3301978 (= c!560178 (is-EmptyLang!10046 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))))))

(declare-fun d!924303 () Bool)

(assert (=> d!924303 e!2053466))

(declare-fun c!560177 () Bool)

(assert (=> d!924303 (= c!560177 (is-EmptyExpr!10046 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))))))

(declare-fun lt!1119249 () Bool)

(assert (=> d!924303 (= lt!1119249 e!2053464)))

(declare-fun c!560176 () Bool)

(assert (=> d!924303 (= c!560176 (isEmpty!20598 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))))))

(assert (=> d!924303 (validRegex!4571 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))))

(assert (=> d!924303 (= (matchR!4668 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))) lt!1119249)))

(declare-fun b!3301979 () Bool)

(declare-fun e!2053463 () Bool)

(assert (=> b!3301979 (= e!2053463 (not (= (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))) (c!559680 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535))))))))))

(declare-fun b!3301980 () Bool)

(declare-fun res!1339318 () Bool)

(declare-fun e!2053467 () Bool)

(assert (=> b!3301980 (=> res!1339318 e!2053467)))

(assert (=> b!3301980 (= res!1339318 (not (is-ElementMatch!10046 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))))))

(assert (=> b!3301980 (= e!2053469 e!2053467)))

(declare-fun b!3301981 () Bool)

(declare-fun res!1339316 () Bool)

(assert (=> b!3301981 (=> (not res!1339316) (not e!2053468))))

(assert (=> b!3301981 (= res!1339316 (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535)))))))))

(declare-fun b!3301982 () Bool)

(declare-fun res!1339317 () Bool)

(assert (=> b!3301982 (=> res!1339317 e!2053467)))

(assert (=> b!3301982 (= res!1339317 e!2053468)))

(declare-fun res!1339319 () Bool)

(assert (=> b!3301982 (=> (not res!1339319) (not e!2053468))))

(assert (=> b!3301982 (= res!1339319 lt!1119249)))

(declare-fun b!3301983 () Bool)

(assert (=> b!3301983 (= e!2053466 (= lt!1119249 call!240058))))

(declare-fun bm!240053 () Bool)

(assert (=> bm!240053 (= call!240058 (isEmpty!20598 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))))))

(declare-fun b!3301984 () Bool)

(assert (=> b!3301984 (= e!2053468 (= (head!7120 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))) (c!559680 (regex!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))))))

(declare-fun b!3301985 () Bool)

(declare-fun e!2053465 () Bool)

(assert (=> b!3301985 (= e!2053467 e!2053465)))

(declare-fun res!1339320 () Bool)

(assert (=> b!3301985 (=> (not res!1339320) (not e!2053465))))

(assert (=> b!3301985 (= res!1339320 (not lt!1119249))))

(declare-fun b!3301986 () Bool)

(declare-fun res!1339323 () Bool)

(assert (=> b!3301986 (=> res!1339323 e!2053463)))

(assert (=> b!3301986 (= res!1339323 (not (isEmpty!20598 (tail!5258 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1118535))))))))))

(declare-fun b!3301987 () Bool)

(assert (=> b!3301987 (= e!2053469 (not lt!1119249))))

(declare-fun b!3301988 () Bool)

(assert (=> b!3301988 (= e!2053465 e!2053463)))

(declare-fun res!1339321 () Bool)

(assert (=> b!3301988 (=> res!1339321 e!2053463)))

(assert (=> b!3301988 (= res!1339321 call!240058)))

(assert (= (and d!924303 c!560176) b!3301975))

(assert (= (and d!924303 (not c!560176)) b!3301977))

(assert (= (and d!924303 c!560177) b!3301983))

(assert (= (and d!924303 (not c!560177)) b!3301978))

(assert (= (and b!3301978 c!560178) b!3301987))

(assert (= (and b!3301978 (not c!560178)) b!3301980))

(assert (= (and b!3301980 (not res!1339318)) b!3301982))

(assert (= (and b!3301982 res!1339319) b!3301976))

(assert (= (and b!3301976 res!1339322) b!3301981))

(assert (= (and b!3301981 res!1339316) b!3301984))

(assert (= (and b!3301982 (not res!1339317)) b!3301985))

(assert (= (and b!3301985 res!1339320) b!3301988))

(assert (= (and b!3301988 (not res!1339321)) b!3301986))

(assert (= (and b!3301986 (not res!1339323)) b!3301979))

(assert (= (or b!3301983 b!3301976 b!3301988) bm!240053))

(assert (=> b!3301981 m!3624317))

(declare-fun m!3626945 () Bool)

(assert (=> b!3301981 m!3626945))

(assert (=> b!3301981 m!3626945))

(declare-fun m!3626947 () Bool)

(assert (=> b!3301981 m!3626947))

(declare-fun m!3626949 () Bool)

(assert (=> b!3301975 m!3626949))

(assert (=> bm!240053 m!3624317))

(declare-fun m!3626951 () Bool)

(assert (=> bm!240053 m!3626951))

(assert (=> b!3301977 m!3624317))

(declare-fun m!3626953 () Bool)

(assert (=> b!3301977 m!3626953))

(assert (=> b!3301977 m!3626953))

(declare-fun m!3626955 () Bool)

(assert (=> b!3301977 m!3626955))

(assert (=> b!3301977 m!3624317))

(assert (=> b!3301977 m!3626945))

(assert (=> b!3301977 m!3626955))

(assert (=> b!3301977 m!3626945))

(declare-fun m!3626957 () Bool)

(assert (=> b!3301977 m!3626957))

(assert (=> b!3301979 m!3624317))

(assert (=> b!3301979 m!3626953))

(assert (=> b!3301984 m!3624317))

(assert (=> b!3301984 m!3626953))

(assert (=> b!3301986 m!3624317))

(assert (=> b!3301986 m!3626945))

(assert (=> b!3301986 m!3626945))

(assert (=> b!3301986 m!3626947))

(assert (=> d!924303 m!3624317))

(assert (=> d!924303 m!3626951))

(declare-fun m!3626959 () Bool)

(assert (=> d!924303 m!3626959))

(assert (=> b!3300546 d!924303))

(assert (=> b!3300546 d!923803))

(assert (=> b!3300546 d!923799))

(assert (=> b!3300546 d!923801))

(declare-fun d!924305 () Bool)

(declare-fun e!2053472 () Bool)

(assert (=> d!924305 e!2053472))

(declare-fun res!1339326 () Bool)

(assert (=> d!924305 (=> res!1339326 e!2053472)))

(assert (=> d!924305 (= res!1339326 (isEmpty!20598 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))

(declare-fun lt!1119252 () Unit!51389)

(declare-fun choose!19125 (Regex!10046 List!36583) Unit!51389)

(assert (=> d!924305 (= lt!1119252 (choose!19125 (regex!5287 (rule!7785 (h!41880 tokens!494))) lt!1118263))))

(assert (=> d!924305 (validRegex!4571 (regex!5287 (rule!7785 (h!41880 tokens!494))))))

(assert (=> d!924305 (= (longestMatchIsAcceptedByMatchOrIsEmpty!821 (regex!5287 (rule!7785 (h!41880 tokens!494))) lt!1118263) lt!1119252)))

(declare-fun b!3301991 () Bool)

(assert (=> b!3301991 (= e!2053472 (matchR!4668 (regex!5287 (rule!7785 (h!41880 tokens!494))) (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))

(assert (= (and d!924305 (not res!1339326)) b!3301991))

(assert (=> d!924305 m!3624067))

(assert (=> d!924305 m!3625169))

(assert (=> d!924305 m!3624051))

(assert (=> d!924305 m!3623543))

(assert (=> d!924305 m!3624053))

(assert (=> d!924305 m!3624051))

(assert (=> d!924305 m!3623543))

(declare-fun m!3626961 () Bool)

(assert (=> d!924305 m!3626961))

(assert (=> b!3301991 m!3624051))

(assert (=> b!3301991 m!3623543))

(assert (=> b!3301991 m!3624051))

(assert (=> b!3301991 m!3623543))

(assert (=> b!3301991 m!3624053))

(assert (=> b!3301991 m!3624055))

(assert (=> b!3300340 d!924305))

(assert (=> b!3300340 d!923413))

(declare-fun d!924307 () Bool)

(assert (=> d!924307 (= (seqFromList!3638 (_1!21117 lt!1118455)) (fromListB!1596 (_1!21117 lt!1118455)))))

(declare-fun bs!548698 () Bool)

(assert (= bs!548698 d!924307))

(declare-fun m!3626963 () Bool)

(assert (=> bs!548698 m!3626963))

(assert (=> b!3300340 d!924307))

(declare-fun bs!548699 () Bool)

(declare-fun d!924309 () Bool)

(assert (= bs!548699 (and d!924309 d!923929)))

(declare-fun lambda!118894 () Int)

(assert (=> bs!548699 (= (and (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (h!41881 rules!2135)))) (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (h!41881 rules!2135))))) (= lambda!118894 lambda!118876))))

(declare-fun bs!548700 () Bool)

(assert (= bs!548700 (and d!924309 d!924277)))

(assert (=> bs!548700 (= (and (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))))) (= lambda!118894 lambda!118891))))

(declare-fun b!3301996 () Bool)

(declare-fun e!2053475 () Bool)

(assert (=> b!3301996 (= e!2053475 true)))

(assert (=> d!924309 e!2053475))

(assert (= d!924309 b!3301996))

(assert (=> b!3301996 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (dynLambda!14926 order!18907 lambda!118894))))

(assert (=> b!3301996 (< (dynLambda!14923 order!18905 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (dynLambda!14926 order!18907 lambda!118894))))

(assert (=> d!924309 (= (list!13054 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (seqFromList!3638 (_1!21117 lt!1118455))))) (list!13054 (seqFromList!3638 (_1!21117 lt!1118455))))))

(declare-fun lt!1119255 () Unit!51389)

(declare-fun ForallOf!567 (Int BalanceConc!21512) Unit!51389)

(assert (=> d!924309 (= lt!1119255 (ForallOf!567 lambda!118894 (seqFromList!3638 (_1!21117 lt!1118455))))))

(assert (=> d!924309 (= (lemmaSemiInverse!1194 (transformation!5287 (rule!7785 (h!41880 tokens!494))) (seqFromList!3638 (_1!21117 lt!1118455))) lt!1119255)))

(declare-fun b_lambda!92085 () Bool)

(assert (=> (not b_lambda!92085) (not d!924309)))

(declare-fun tb!171015 () Bool)

(declare-fun t!252941 () Bool)

(assert (=> (and b!3300934 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252941) tb!171015))

(declare-fun tp!1033809 () Bool)

(declare-fun b!3301997 () Bool)

(declare-fun e!2053476 () Bool)

(assert (=> b!3301997 (= e!2053476 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (seqFromList!3638 (_1!21117 lt!1118455)))))) tp!1033809))))

(declare-fun result!213768 () Bool)

(assert (=> tb!171015 (= result!213768 (and (inv!49417 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (seqFromList!3638 (_1!21117 lt!1118455))))) e!2053476))))

(assert (= tb!171015 b!3301997))

(declare-fun m!3626965 () Bool)

(assert (=> b!3301997 m!3626965))

(declare-fun m!3626967 () Bool)

(assert (=> tb!171015 m!3626967))

(assert (=> d!924309 t!252941))

(declare-fun b_and!226011 () Bool)

(assert (= b_and!226007 (and (=> t!252941 result!213768) b_and!226011)))

(declare-fun t!252943 () Bool)

(declare-fun tb!171017 () Bool)

(assert (=> (and b!3300954 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252943) tb!171017))

(declare-fun result!213770 () Bool)

(assert (= result!213770 result!213768))

(assert (=> d!924309 t!252943))

(declare-fun b_and!226013 () Bool)

(assert (= b_and!226003 (and (=> t!252943 result!213770) b_and!226013)))

(declare-fun t!252945 () Bool)

(declare-fun tb!171019 () Bool)

(assert (=> (and b!3299943 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252945) tb!171019))

(declare-fun result!213772 () Bool)

(assert (= result!213772 result!213768))

(assert (=> d!924309 t!252945))

(declare-fun b_and!226015 () Bool)

(assert (= b_and!226005 (and (=> t!252945 result!213772) b_and!226015)))

(declare-fun t!252947 () Bool)

(declare-fun tb!171021 () Bool)

(assert (=> (and b!3299937 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252947) tb!171021))

(declare-fun result!213774 () Bool)

(assert (= result!213774 result!213768))

(assert (=> d!924309 t!252947))

(declare-fun b_and!226017 () Bool)

(assert (= b_and!226009 (and (=> t!252947 result!213774) b_and!226017)))

(declare-fun tb!171023 () Bool)

(declare-fun t!252949 () Bool)

(assert (=> (and b!3299965 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252949) tb!171023))

(declare-fun result!213776 () Bool)

(assert (= result!213776 result!213768))

(assert (=> d!924309 t!252949))

(declare-fun b_and!226019 () Bool)

(assert (= b_and!226001 (and (=> t!252949 result!213776) b_and!226019)))

(declare-fun b_lambda!92087 () Bool)

(assert (=> (not b_lambda!92087) (not d!924309)))

(declare-fun t!252951 () Bool)

(declare-fun tb!171025 () Bool)

(assert (=> (and b!3299965 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252951) tb!171025))

(declare-fun result!213778 () Bool)

(assert (=> tb!171025 (= result!213778 (inv!21 (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (seqFromList!3638 (_1!21117 lt!1118455)))))))

(declare-fun m!3626969 () Bool)

(assert (=> tb!171025 m!3626969))

(assert (=> d!924309 t!252951))

(declare-fun b_and!226021 () Bool)

(assert (= b_and!225993 (and (=> t!252951 result!213778) b_and!226021)))

(declare-fun t!252953 () Bool)

(declare-fun tb!171027 () Bool)

(assert (=> (and b!3299943 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252953) tb!171027))

(declare-fun result!213780 () Bool)

(assert (= result!213780 result!213778))

(assert (=> d!924309 t!252953))

(declare-fun b_and!226023 () Bool)

(assert (= b_and!225991 (and (=> t!252953 result!213780) b_and!226023)))

(declare-fun tb!171029 () Bool)

(declare-fun t!252955 () Bool)

(assert (=> (and b!3300934 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252955) tb!171029))

(declare-fun result!213782 () Bool)

(assert (= result!213782 result!213778))

(assert (=> d!924309 t!252955))

(declare-fun b_and!226025 () Bool)

(assert (= b_and!225995 (and (=> t!252955 result!213782) b_and!226025)))

(declare-fun t!252957 () Bool)

(declare-fun tb!171031 () Bool)

(assert (=> (and b!3299937 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252957) tb!171031))

(declare-fun result!213784 () Bool)

(assert (= result!213784 result!213778))

(assert (=> d!924309 t!252957))

(declare-fun b_and!226027 () Bool)

(assert (= b_and!225999 (and (=> t!252957 result!213784) b_and!226027)))

(declare-fun t!252959 () Bool)

(declare-fun tb!171033 () Bool)

(assert (=> (and b!3300954 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252959) tb!171033))

(declare-fun result!213786 () Bool)

(assert (= result!213786 result!213778))

(assert (=> d!924309 t!252959))

(declare-fun b_and!226029 () Bool)

(assert (= b_and!225997 (and (=> t!252959 result!213786) b_and!226029)))

(assert (=> d!924309 m!3624063))

(declare-fun m!3626971 () Bool)

(assert (=> d!924309 m!3626971))

(assert (=> d!924309 m!3626971))

(declare-fun m!3626973 () Bool)

(assert (=> d!924309 m!3626973))

(assert (=> d!924309 m!3624063))

(declare-fun m!3626975 () Bool)

(assert (=> d!924309 m!3626975))

(assert (=> d!924309 m!3624063))

(declare-fun m!3626977 () Bool)

(assert (=> d!924309 m!3626977))

(assert (=> d!924309 m!3626973))

(declare-fun m!3626979 () Bool)

(assert (=> d!924309 m!3626979))

(assert (=> b!3300340 d!924309))

(declare-fun d!924311 () Bool)

(assert (=> d!924311 (= (apply!8365 (transformation!5287 (rule!7785 (h!41880 tokens!494))) (seqFromList!3638 (_1!21117 lt!1118455))) (dynLambda!14915 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (seqFromList!3638 (_1!21117 lt!1118455))))))

(declare-fun b_lambda!92089 () Bool)

(assert (=> (not b_lambda!92089) (not d!924311)))

(assert (=> d!924311 t!252953))

(declare-fun b_and!226031 () Bool)

(assert (= b_and!226023 (and (=> t!252953 result!213780) b_and!226031)))

(assert (=> d!924311 t!252959))

(declare-fun b_and!226033 () Bool)

(assert (= b_and!226029 (and (=> t!252959 result!213786) b_and!226033)))

(assert (=> d!924311 t!252955))

(declare-fun b_and!226035 () Bool)

(assert (= b_and!226025 (and (=> t!252955 result!213782) b_and!226035)))

(assert (=> d!924311 t!252951))

(declare-fun b_and!226037 () Bool)

(assert (= b_and!226021 (and (=> t!252951 result!213778) b_and!226037)))

(assert (=> d!924311 t!252957))

(declare-fun b_and!226039 () Bool)

(assert (= b_and!226027 (and (=> t!252957 result!213784) b_and!226039)))

(assert (=> d!924311 m!3624063))

(assert (=> d!924311 m!3626971))

(assert (=> b!3300340 d!924311))

(assert (=> b!3300340 d!923769))

(declare-fun d!924313 () Bool)

(assert (=> d!924313 (= (isEmpty!20598 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))) (is-Nil!36459 (_1!21117 (findLongestMatchInner!848 (regex!5287 (rule!7785 (h!41880 tokens!494))) Nil!36459 (size!27531 Nil!36459) lt!1118263 lt!1118263 (size!27531 lt!1118263)))))))

(assert (=> b!3300340 d!924313))

(assert (=> b!3300340 d!923771))

(declare-fun d!924315 () Bool)

(declare-fun lt!1119256 () Int)

(assert (=> d!924315 (= lt!1119256 (size!27531 (list!13054 (seqFromList!3638 (_1!21117 lt!1118455)))))))

(assert (=> d!924315 (= lt!1119256 (size!27540 (c!559681 (seqFromList!3638 (_1!21117 lt!1118455)))))))

(assert (=> d!924315 (= (size!27536 (seqFromList!3638 (_1!21117 lt!1118455))) lt!1119256)))

(declare-fun bs!548701 () Bool)

(assert (= bs!548701 d!924315))

(assert (=> bs!548701 m!3624063))

(assert (=> bs!548701 m!3626975))

(assert (=> bs!548701 m!3626975))

(declare-fun m!3626981 () Bool)

(assert (=> bs!548701 m!3626981))

(declare-fun m!3626983 () Bool)

(assert (=> bs!548701 m!3626983))

(assert (=> b!3300340 d!924315))

(declare-fun d!924317 () Bool)

(declare-fun res!1339327 () Bool)

(declare-fun e!2053478 () Bool)

(assert (=> d!924317 (=> res!1339327 e!2053478)))

(assert (=> d!924317 (= res!1339327 (is-Nil!36460 lt!1118561))))

(assert (=> d!924317 (= (forall!7541 lt!1118561 lambda!118850) e!2053478)))

(declare-fun b!3301998 () Bool)

(declare-fun e!2053479 () Bool)

(assert (=> b!3301998 (= e!2053478 e!2053479)))

(declare-fun res!1339328 () Bool)

(assert (=> b!3301998 (=> (not res!1339328) (not e!2053479))))

(assert (=> b!3301998 (= res!1339328 (dynLambda!14914 lambda!118850 (h!41880 lt!1118561)))))

(declare-fun b!3301999 () Bool)

(assert (=> b!3301999 (= e!2053479 (forall!7541 (t!252749 lt!1118561) lambda!118850))))

(assert (= (and d!924317 (not res!1339327)) b!3301998))

(assert (= (and b!3301998 res!1339328) b!3301999))

(declare-fun b_lambda!92091 () Bool)

(assert (=> (not b_lambda!92091) (not b!3301998)))

(declare-fun m!3626985 () Bool)

(assert (=> b!3301998 m!3626985))

(declare-fun m!3626987 () Bool)

(assert (=> b!3301999 m!3626987))

(assert (=> b!3300603 d!924317))

(declare-fun d!924319 () Bool)

(assert (=> d!924319 (= (isEmpty!20599 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258)))) (is-Nil!36460 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258)))))))

(assert (=> d!923623 d!924319))

(declare-fun d!924321 () Bool)

(assert (=> d!924321 (= (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258))) (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258)))))))

(declare-fun bs!548702 () Bool)

(assert (= bs!548702 d!924321))

(declare-fun m!3626989 () Bool)

(assert (=> bs!548702 m!3626989))

(assert (=> d!923623 d!924321))

(declare-fun d!924323 () Bool)

(declare-fun lt!1119259 () Bool)

(assert (=> d!924323 (= lt!1119259 (isEmpty!20599 (list!13061 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258))))))))

(assert (=> d!924323 (= lt!1119259 (= (size!27541 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258)))) 0))))

(assert (=> d!924323 (= (isEmpty!20610 (c!559682 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118258)))) lt!1119259)))

(declare-fun bs!548703 () Bool)

(assert (= bs!548703 d!924323))

(assert (=> bs!548703 m!3626989))

(assert (=> bs!548703 m!3626989))

(declare-fun m!3626991 () Bool)

(assert (=> bs!548703 m!3626991))

(declare-fun m!3626993 () Bool)

(assert (=> bs!548703 m!3626993))

(assert (=> d!923623 d!924323))

(declare-fun bs!548704 () Bool)

(declare-fun d!924325 () Bool)

(assert (= bs!548704 (and d!924325 d!923929)))

(declare-fun lambda!118895 () Int)

(assert (=> bs!548704 (= (and (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (h!41881 rules!2135)))) (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (h!41881 rules!2135))))) (= lambda!118895 lambda!118876))))

(declare-fun bs!548705 () Bool)

(assert (= bs!548705 (and d!924325 d!924277)))

(assert (=> bs!548705 (= (and (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))))) (= lambda!118895 lambda!118891))))

(declare-fun bs!548706 () Bool)

(assert (= bs!548706 (and d!924325 d!924309)))

(assert (=> bs!548706 (= lambda!118895 lambda!118894)))

(assert (=> d!924325 true))

(assert (=> d!924325 (< (dynLambda!14923 order!18905 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (dynLambda!14926 order!18907 lambda!118895))))

(assert (=> d!924325 true))

(assert (=> d!924325 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (dynLambda!14926 order!18907 lambda!118895))))

(assert (=> d!924325 (= (semiInverseModEq!2184 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) (Forall!1288 lambda!118895))))

(declare-fun bs!548707 () Bool)

(assert (= bs!548707 d!924325))

(declare-fun m!3626995 () Bool)

(assert (=> bs!548707 m!3626995))

(assert (=> d!923481 d!924325))

(declare-fun d!924327 () Bool)

(declare-fun lt!1119260 () Int)

(assert (=> d!924327 (>= lt!1119260 0)))

(declare-fun e!2053480 () Int)

(assert (=> d!924327 (= lt!1119260 e!2053480)))

(declare-fun c!560180 () Bool)

(assert (=> d!924327 (= c!560180 (is-Nil!36459 (_2!21111 lt!1118505)))))

(assert (=> d!924327 (= (size!27531 (_2!21111 lt!1118505)) lt!1119260)))

(declare-fun b!3302000 () Bool)

(assert (=> b!3302000 (= e!2053480 0)))

(declare-fun b!3302001 () Bool)

(assert (=> b!3302001 (= e!2053480 (+ 1 (size!27531 (t!252748 (_2!21111 lt!1118505)))))))

(assert (= (and d!924327 c!560180) b!3302000))

(assert (= (and d!924327 (not c!560180)) b!3302001))

(declare-fun m!3626997 () Bool)

(assert (=> b!3302001 m!3626997))

(assert (=> b!3300428 d!924327))

(declare-fun d!924329 () Bool)

(declare-fun lt!1119261 () Int)

(assert (=> d!924329 (>= lt!1119261 0)))

(declare-fun e!2053481 () Int)

(assert (=> d!924329 (= lt!1119261 e!2053481)))

(declare-fun c!560181 () Bool)

(assert (=> d!924329 (= c!560181 (is-Nil!36459 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))

(assert (=> d!924329 (= (size!27531 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)) lt!1119261)))

(declare-fun b!3302002 () Bool)

(assert (=> b!3302002 (= e!2053481 0)))

(declare-fun b!3302003 () Bool)

(assert (=> b!3302003 (= e!2053481 (+ 1 (size!27531 (t!252748 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))

(assert (= (and d!924329 c!560181) b!3302002))

(assert (= (and d!924329 (not c!560181)) b!3302003))

(declare-fun m!3626999 () Bool)

(assert (=> b!3302003 m!3626999))

(assert (=> b!3300428 d!924329))

(declare-fun b!3302005 () Bool)

(declare-fun e!2053483 () List!36583)

(assert (=> b!3302005 (= e!2053483 (Cons!36459 (h!41879 lt!1118263) (++!8815 (t!252748 lt!1118263) lt!1118401)))))

(declare-fun b!3302004 () Bool)

(assert (=> b!3302004 (= e!2053483 lt!1118401)))

(declare-fun b!3302006 () Bool)

(declare-fun res!1339329 () Bool)

(declare-fun e!2053482 () Bool)

(assert (=> b!3302006 (=> (not res!1339329) (not e!2053482))))

(declare-fun lt!1119262 () List!36583)

(assert (=> b!3302006 (= res!1339329 (= (size!27531 lt!1119262) (+ (size!27531 lt!1118263) (size!27531 lt!1118401))))))

(declare-fun d!924331 () Bool)

(assert (=> d!924331 e!2053482))

(declare-fun res!1339330 () Bool)

(assert (=> d!924331 (=> (not res!1339330) (not e!2053482))))

(assert (=> d!924331 (= res!1339330 (= (content!4957 lt!1119262) (set.union (content!4957 lt!1118263) (content!4957 lt!1118401))))))

(assert (=> d!924331 (= lt!1119262 e!2053483)))

(declare-fun c!560182 () Bool)

(assert (=> d!924331 (= c!560182 (is-Nil!36459 lt!1118263))))

(assert (=> d!924331 (= (++!8815 lt!1118263 lt!1118401) lt!1119262)))

(declare-fun b!3302007 () Bool)

(assert (=> b!3302007 (= e!2053482 (or (not (= lt!1118401 Nil!36459)) (= lt!1119262 lt!1118263)))))

(assert (= (and d!924331 c!560182) b!3302004))

(assert (= (and d!924331 (not c!560182)) b!3302005))

(assert (= (and d!924331 res!1339330) b!3302006))

(assert (= (and b!3302006 res!1339329) b!3302007))

(declare-fun m!3627001 () Bool)

(assert (=> b!3302005 m!3627001))

(declare-fun m!3627003 () Bool)

(assert (=> b!3302006 m!3627003))

(assert (=> b!3302006 m!3623543))

(declare-fun m!3627005 () Bool)

(assert (=> b!3302006 m!3627005))

(declare-fun m!3627007 () Bool)

(assert (=> d!924331 m!3627007))

(assert (=> d!924331 m!3624811))

(declare-fun m!3627009 () Bool)

(assert (=> d!924331 m!3627009))

(assert (=> d!923431 d!924331))

(assert (=> d!923431 d!923413))

(declare-fun b!3302008 () Bool)

(declare-fun res!1339331 () Bool)

(declare-fun e!2053484 () Bool)

(assert (=> b!3302008 (=> (not res!1339331) (not e!2053484))))

(declare-fun lt!1119263 () Option!7269)

(assert (=> b!3302008 (= res!1339331 (= (value!171141 (_1!21112 (get!11636 lt!1119263))) (apply!8365 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1119263)))) (seqFromList!3638 (originalCharacters!6001 (_1!21112 (get!11636 lt!1119263)))))))))

(declare-fun b!3302009 () Bool)

(declare-fun e!2053485 () Bool)

(assert (=> b!3302009 (= e!2053485 e!2053484)))

(declare-fun res!1339333 () Bool)

(assert (=> b!3302009 (=> (not res!1339333) (not e!2053484))))

(assert (=> b!3302009 (= res!1339333 (matchR!4668 (regex!5287 (h!41881 rules!2135)) (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119263))))))))

(declare-fun b!3302010 () Bool)

(declare-fun res!1339336 () Bool)

(assert (=> b!3302010 (=> (not res!1339336) (not e!2053484))))

(assert (=> b!3302010 (= res!1339336 (< (size!27531 (_2!21112 (get!11636 lt!1119263))) (size!27531 lt!1118249)))))

(declare-fun b!3302011 () Bool)

(declare-fun e!2053486 () Bool)

(assert (=> b!3302011 (= e!2053486 (matchR!4668 (regex!5287 (h!41881 rules!2135)) (_1!21117 (findLongestMatchInner!848 (regex!5287 (h!41881 rules!2135)) Nil!36459 (size!27531 Nil!36459) lt!1118249 lt!1118249 (size!27531 lt!1118249)))))))

(declare-fun b!3302012 () Bool)

(declare-fun e!2053487 () Option!7269)

(assert (=> b!3302012 (= e!2053487 None!7268)))

(declare-fun b!3302013 () Bool)

(declare-fun res!1339332 () Bool)

(assert (=> b!3302013 (=> (not res!1339332) (not e!2053484))))

(assert (=> b!3302013 (= res!1339332 (= (++!8815 (list!13054 (charsOf!3303 (_1!21112 (get!11636 lt!1119263)))) (_2!21112 (get!11636 lt!1119263))) lt!1118249))))

(declare-fun b!3302014 () Bool)

(declare-fun lt!1119264 () tuple2!35966)

(assert (=> b!3302014 (= e!2053487 (Some!7268 (tuple2!35957 (Token!9941 (apply!8365 (transformation!5287 (h!41881 rules!2135)) (seqFromList!3638 (_1!21117 lt!1119264))) (h!41881 rules!2135) (size!27536 (seqFromList!3638 (_1!21117 lt!1119264))) (_1!21117 lt!1119264)) (_2!21117 lt!1119264))))))

(declare-fun lt!1119266 () Unit!51389)

(assert (=> b!3302014 (= lt!1119266 (longestMatchIsAcceptedByMatchOrIsEmpty!821 (regex!5287 (h!41881 rules!2135)) lt!1118249))))

(declare-fun res!1339335 () Bool)

(assert (=> b!3302014 (= res!1339335 (isEmpty!20598 (_1!21117 (findLongestMatchInner!848 (regex!5287 (h!41881 rules!2135)) Nil!36459 (size!27531 Nil!36459) lt!1118249 lt!1118249 (size!27531 lt!1118249)))))))

(assert (=> b!3302014 (=> res!1339335 e!2053486)))

(assert (=> b!3302014 e!2053486))

(declare-fun lt!1119265 () Unit!51389)

(assert (=> b!3302014 (= lt!1119265 lt!1119266)))

(declare-fun lt!1119267 () Unit!51389)

(assert (=> b!3302014 (= lt!1119267 (lemmaSemiInverse!1194 (transformation!5287 (h!41881 rules!2135)) (seqFromList!3638 (_1!21117 lt!1119264))))))

(declare-fun d!924333 () Bool)

(assert (=> d!924333 e!2053485))

(declare-fun res!1339334 () Bool)

(assert (=> d!924333 (=> res!1339334 e!2053485)))

(assert (=> d!924333 (= res!1339334 (isEmpty!20606 lt!1119263))))

(assert (=> d!924333 (= lt!1119263 e!2053487)))

(declare-fun c!560183 () Bool)

(assert (=> d!924333 (= c!560183 (isEmpty!20598 (_1!21117 lt!1119264)))))

(assert (=> d!924333 (= lt!1119264 (findLongestMatch!763 (regex!5287 (h!41881 rules!2135)) lt!1118249))))

(assert (=> d!924333 (ruleValid!1669 thiss!18206 (h!41881 rules!2135))))

(assert (=> d!924333 (= (maxPrefixOneRule!1641 thiss!18206 (h!41881 rules!2135) lt!1118249) lt!1119263)))

(declare-fun b!3302015 () Bool)

(assert (=> b!3302015 (= e!2053484 (= (size!27530 (_1!21112 (get!11636 lt!1119263))) (size!27531 (originalCharacters!6001 (_1!21112 (get!11636 lt!1119263))))))))

(declare-fun b!3302016 () Bool)

(declare-fun res!1339337 () Bool)

(assert (=> b!3302016 (=> (not res!1339337) (not e!2053484))))

(assert (=> b!3302016 (= res!1339337 (= (rule!7785 (_1!21112 (get!11636 lt!1119263))) (h!41881 rules!2135)))))

(assert (= (and d!924333 c!560183) b!3302012))

(assert (= (and d!924333 (not c!560183)) b!3302014))

(assert (= (and b!3302014 (not res!1339335)) b!3302011))

(assert (= (and d!924333 (not res!1339334)) b!3302009))

(assert (= (and b!3302009 res!1339333) b!3302013))

(assert (= (and b!3302013 res!1339332) b!3302010))

(assert (= (and b!3302010 res!1339336) b!3302016))

(assert (= (and b!3302016 res!1339337) b!3302008))

(assert (= (and b!3302008 res!1339331) b!3302015))

(declare-fun m!3627011 () Bool)

(assert (=> d!924333 m!3627011))

(declare-fun m!3627013 () Bool)

(assert (=> d!924333 m!3627013))

(declare-fun m!3627015 () Bool)

(assert (=> d!924333 m!3627015))

(assert (=> d!924333 m!3626079))

(declare-fun m!3627017 () Bool)

(assert (=> b!3302009 m!3627017))

(declare-fun m!3627019 () Bool)

(assert (=> b!3302009 m!3627019))

(assert (=> b!3302009 m!3627019))

(declare-fun m!3627021 () Bool)

(assert (=> b!3302009 m!3627021))

(assert (=> b!3302009 m!3627021))

(declare-fun m!3627023 () Bool)

(assert (=> b!3302009 m!3627023))

(assert (=> b!3302015 m!3627017))

(declare-fun m!3627025 () Bool)

(assert (=> b!3302015 m!3627025))

(assert (=> b!3302011 m!3624051))

(assert (=> b!3302011 m!3624375))

(assert (=> b!3302011 m!3624051))

(assert (=> b!3302011 m!3624375))

(declare-fun m!3627027 () Bool)

(assert (=> b!3302011 m!3627027))

(declare-fun m!3627029 () Bool)

(assert (=> b!3302011 m!3627029))

(assert (=> b!3302013 m!3627017))

(assert (=> b!3302013 m!3627019))

(assert (=> b!3302013 m!3627019))

(assert (=> b!3302013 m!3627021))

(assert (=> b!3302013 m!3627021))

(declare-fun m!3627031 () Bool)

(assert (=> b!3302013 m!3627031))

(assert (=> b!3302010 m!3627017))

(declare-fun m!3627033 () Bool)

(assert (=> b!3302010 m!3627033))

(assert (=> b!3302010 m!3624375))

(declare-fun m!3627035 () Bool)

(assert (=> b!3302014 m!3627035))

(declare-fun m!3627037 () Bool)

(assert (=> b!3302014 m!3627037))

(declare-fun m!3627039 () Bool)

(assert (=> b!3302014 m!3627039))

(declare-fun m!3627041 () Bool)

(assert (=> b!3302014 m!3627041))

(assert (=> b!3302014 m!3624051))

(assert (=> b!3302014 m!3624375))

(assert (=> b!3302014 m!3627027))

(assert (=> b!3302014 m!3624375))

(assert (=> b!3302014 m!3627037))

(declare-fun m!3627043 () Bool)

(assert (=> b!3302014 m!3627043))

(assert (=> b!3302014 m!3627037))

(assert (=> b!3302014 m!3627037))

(declare-fun m!3627045 () Bool)

(assert (=> b!3302014 m!3627045))

(assert (=> b!3302014 m!3624051))

(assert (=> b!3302008 m!3627017))

(declare-fun m!3627047 () Bool)

(assert (=> b!3302008 m!3627047))

(assert (=> b!3302008 m!3627047))

(declare-fun m!3627049 () Bool)

(assert (=> b!3302008 m!3627049))

(assert (=> b!3302016 m!3627017))

(assert (=> bm!239935 d!924333))

(declare-fun d!924335 () Bool)

(declare-fun lt!1119268 () Int)

(assert (=> d!924335 (>= lt!1119268 0)))

(declare-fun e!2053488 () Int)

(assert (=> d!924335 (= lt!1119268 e!2053488)))

(declare-fun c!560184 () Bool)

(assert (=> d!924335 (= c!560184 (is-Nil!36460 lt!1118654))))

(assert (=> d!924335 (= (size!27539 lt!1118654) lt!1119268)))

(declare-fun b!3302017 () Bool)

(assert (=> b!3302017 (= e!2053488 0)))

(declare-fun b!3302018 () Bool)

(assert (=> b!3302018 (= e!2053488 (+ 1 (size!27539 (t!252749 lt!1118654))))))

(assert (= (and d!924335 c!560184) b!3302017))

(assert (= (and d!924335 (not c!560184)) b!3302018))

(declare-fun m!3627051 () Bool)

(assert (=> b!3302018 m!3627051))

(assert (=> d!923665 d!924335))

(declare-fun d!924337 () Bool)

(declare-fun lt!1119269 () Int)

(assert (=> d!924337 (>= lt!1119269 0)))

(declare-fun e!2053489 () Int)

(assert (=> d!924337 (= lt!1119269 e!2053489)))

(declare-fun c!560185 () Bool)

(assert (=> d!924337 (= c!560185 (is-Nil!36460 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))

(assert (=> d!924337 (= (size!27539 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))) lt!1119269)))

(declare-fun b!3302019 () Bool)

(assert (=> b!3302019 (= e!2053489 0)))

(declare-fun b!3302020 () Bool)

(assert (=> b!3302020 (= e!2053489 (+ 1 (size!27539 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))))

(assert (= (and d!924337 c!560185) b!3302019))

(assert (= (and d!924337 (not c!560185)) b!3302020))

(assert (=> b!3302020 m!3625107))

(assert (=> d!923665 d!924337))

(declare-fun d!924339 () Bool)

(assert (=> d!924339 (= (isEmpty!20604 lt!1118418) (not (is-Some!7269 lt!1118418)))))

(assert (=> d!923449 d!924339))

(assert (=> d!923449 d!923607))

(declare-fun d!924341 () Bool)

(declare-fun res!1339338 () Bool)

(declare-fun e!2053490 () Bool)

(assert (=> d!924341 (=> res!1339338 e!2053490)))

(assert (=> d!924341 (= res!1339338 (not (is-Cons!36461 (t!252750 rules!2135))))))

(assert (=> d!924341 (= (sepAndNonSepRulesDisjointChars!1481 rules!2135 (t!252750 rules!2135)) e!2053490)))

(declare-fun b!3302021 () Bool)

(declare-fun e!2053491 () Bool)

(assert (=> b!3302021 (= e!2053490 e!2053491)))

(declare-fun res!1339339 () Bool)

(assert (=> b!3302021 (=> (not res!1339339) (not e!2053491))))

(assert (=> b!3302021 (= res!1339339 (ruleDisjointCharsFromAllFromOtherType!620 (h!41881 (t!252750 rules!2135)) rules!2135))))

(declare-fun b!3302022 () Bool)

(assert (=> b!3302022 (= e!2053491 (sepAndNonSepRulesDisjointChars!1481 rules!2135 (t!252750 (t!252750 rules!2135))))))

(assert (= (and d!924341 (not res!1339338)) b!3302021))

(assert (= (and b!3302021 res!1339339) b!3302022))

(declare-fun m!3627053 () Bool)

(assert (=> b!3302021 m!3627053))

(declare-fun m!3627055 () Bool)

(assert (=> b!3302022 m!3627055))

(assert (=> b!3300455 d!924341))

(declare-fun d!924343 () Bool)

(declare-fun res!1339340 () Bool)

(declare-fun e!2053492 () Bool)

(assert (=> d!924343 (=> res!1339340 e!2053492)))

(assert (=> d!924343 (= res!1339340 (is-Nil!36460 lt!1118656))))

(assert (=> d!924343 (= (forall!7541 lt!1118656 lambda!118850) e!2053492)))

(declare-fun b!3302023 () Bool)

(declare-fun e!2053493 () Bool)

(assert (=> b!3302023 (= e!2053492 e!2053493)))

(declare-fun res!1339341 () Bool)

(assert (=> b!3302023 (=> (not res!1339341) (not e!2053493))))

(assert (=> b!3302023 (= res!1339341 (dynLambda!14914 lambda!118850 (h!41880 lt!1118656)))))

(declare-fun b!3302024 () Bool)

(assert (=> b!3302024 (= e!2053493 (forall!7541 (t!252749 lt!1118656) lambda!118850))))

(assert (= (and d!924343 (not res!1339340)) b!3302023))

(assert (= (and b!3302023 res!1339341) b!3302024))

(declare-fun b_lambda!92093 () Bool)

(assert (=> (not b_lambda!92093) (not b!3302023)))

(declare-fun m!3627057 () Bool)

(assert (=> b!3302023 m!3627057))

(declare-fun m!3627059 () Bool)

(assert (=> b!3302024 m!3627059))

(assert (=> b!3300894 d!924343))

(declare-fun b!3302025 () Bool)

(declare-fun e!2053494 () Bool)

(assert (=> b!3302025 (= e!2053494 tp_is_empty!17355)))

(declare-fun b!3302028 () Bool)

(declare-fun tp!1033814 () Bool)

(declare-fun tp!1033813 () Bool)

(assert (=> b!3302028 (= e!2053494 (and tp!1033814 tp!1033813))))

(declare-fun b!3302026 () Bool)

(declare-fun tp!1033811 () Bool)

(declare-fun tp!1033812 () Bool)

(assert (=> b!3302026 (= e!2053494 (and tp!1033811 tp!1033812))))

(declare-fun b!3302027 () Bool)

(declare-fun tp!1033810 () Bool)

(assert (=> b!3302027 (= e!2053494 tp!1033810)))

(assert (=> b!3300923 (= tp!1033705 e!2053494)))

(assert (= (and b!3300923 (is-ElementMatch!10046 (regOne!20605 (regex!5287 (h!41881 rules!2135))))) b!3302025))

(assert (= (and b!3300923 (is-Concat!15563 (regOne!20605 (regex!5287 (h!41881 rules!2135))))) b!3302026))

(assert (= (and b!3300923 (is-Star!10046 (regOne!20605 (regex!5287 (h!41881 rules!2135))))) b!3302027))

(assert (= (and b!3300923 (is-Union!10046 (regOne!20605 (regex!5287 (h!41881 rules!2135))))) b!3302028))

(declare-fun b!3302029 () Bool)

(declare-fun e!2053495 () Bool)

(assert (=> b!3302029 (= e!2053495 tp_is_empty!17355)))

(declare-fun b!3302032 () Bool)

(declare-fun tp!1033819 () Bool)

(declare-fun tp!1033818 () Bool)

(assert (=> b!3302032 (= e!2053495 (and tp!1033819 tp!1033818))))

(declare-fun b!3302030 () Bool)

(declare-fun tp!1033816 () Bool)

(declare-fun tp!1033817 () Bool)

(assert (=> b!3302030 (= e!2053495 (and tp!1033816 tp!1033817))))

(declare-fun b!3302031 () Bool)

(declare-fun tp!1033815 () Bool)

(assert (=> b!3302031 (= e!2053495 tp!1033815)))

(assert (=> b!3300923 (= tp!1033704 e!2053495)))

(assert (= (and b!3300923 (is-ElementMatch!10046 (regTwo!20605 (regex!5287 (h!41881 rules!2135))))) b!3302029))

(assert (= (and b!3300923 (is-Concat!15563 (regTwo!20605 (regex!5287 (h!41881 rules!2135))))) b!3302030))

(assert (= (and b!3300923 (is-Star!10046 (regTwo!20605 (regex!5287 (h!41881 rules!2135))))) b!3302031))

(assert (= (and b!3300923 (is-Union!10046 (regTwo!20605 (regex!5287 (h!41881 rules!2135))))) b!3302032))

(declare-fun b!3302033 () Bool)

(declare-fun e!2053496 () Bool)

(declare-fun tp!1033820 () Bool)

(assert (=> b!3302033 (= e!2053496 (and tp_is_empty!17355 tp!1033820))))

(assert (=> b!3300952 (= tp!1033735 e!2053496)))

(assert (= (and b!3300952 (is-Cons!36459 (originalCharacters!6001 (h!41880 (t!252749 tokens!494))))) b!3302033))

(declare-fun b!3302034 () Bool)

(declare-fun e!2053497 () Bool)

(assert (=> b!3302034 (= e!2053497 tp_is_empty!17355)))

(declare-fun b!3302037 () Bool)

(declare-fun tp!1033825 () Bool)

(declare-fun tp!1033824 () Bool)

(assert (=> b!3302037 (= e!2053497 (and tp!1033825 tp!1033824))))

(declare-fun b!3302035 () Bool)

(declare-fun tp!1033822 () Bool)

(declare-fun tp!1033823 () Bool)

(assert (=> b!3302035 (= e!2053497 (and tp!1033822 tp!1033823))))

(declare-fun b!3302036 () Bool)

(declare-fun tp!1033821 () Bool)

(assert (=> b!3302036 (= e!2053497 tp!1033821)))

(assert (=> b!3300953 (= tp!1033736 e!2053497)))

(assert (= (and b!3300953 (is-ElementMatch!10046 (regex!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) b!3302034))

(assert (= (and b!3300953 (is-Concat!15563 (regex!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) b!3302035))

(assert (= (and b!3300953 (is-Star!10046 (regex!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) b!3302036))

(assert (= (and b!3300953 (is-Union!10046 (regex!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) b!3302037))

(declare-fun b!3302041 () Bool)

(declare-fun b_free!86709 () Bool)

(declare-fun b_next!87413 () Bool)

(assert (=> b!3302041 (= b_free!86709 (not b_next!87413))))

(declare-fun t!252962 () Bool)

(declare-fun tb!171035 () Bool)

(assert (=> (and b!3302041 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252962) tb!171035))

(declare-fun result!213788 () Bool)

(assert (= result!213788 result!213718))

(assert (=> d!924085 t!252962))

(declare-fun t!252964 () Bool)

(declare-fun tb!171037 () Bool)

(assert (=> (and b!3302041 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252964) tb!171037))

(declare-fun result!213790 () Bool)

(assert (= result!213790 result!213748))

(assert (=> d!924207 t!252964))

(declare-fun t!252966 () Bool)

(declare-fun tb!171039 () Bool)

(assert (=> (and b!3302041 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252966) tb!171039))

(declare-fun result!213792 () Bool)

(assert (= result!213792 result!213778))

(assert (=> d!924309 t!252966))

(declare-fun t!252968 () Bool)

(declare-fun tb!171041 () Bool)

(assert (=> (and b!3302041 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252968) tb!171041))

(declare-fun result!213794 () Bool)

(assert (= result!213794 result!213688))

(assert (=> d!923909 t!252968))

(assert (=> d!924311 t!252966))

(declare-fun t!252970 () Bool)

(declare-fun tb!171043 () Bool)

(assert (=> (and b!3302041 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252970) tb!171043))

(declare-fun result!213796 () Bool)

(assert (= result!213796 result!213598))

(assert (=> d!923427 t!252970))

(declare-fun tb!171045 () Bool)

(declare-fun t!252972 () Bool)

(assert (=> (and b!3302041 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252972) tb!171045))

(declare-fun result!213798 () Bool)

(assert (= result!213798 result!213728))

(assert (=> d!924137 t!252972))

(declare-fun tp!1033827 () Bool)

(declare-fun b_and!226041 () Bool)

(assert (=> b!3302041 (= tp!1033827 (and (=> t!252966 result!213792) (=> t!252970 result!213796) (=> t!252964 result!213790) (=> t!252962 result!213788) (=> t!252972 result!213798) (=> t!252968 result!213794) b_and!226041))))

(declare-fun b_free!86711 () Bool)

(declare-fun b_next!87415 () Bool)

(assert (=> b!3302041 (= b_free!86711 (not b_next!87415))))

(declare-fun t!252974 () Bool)

(declare-fun tb!171047 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252974) tb!171047))

(declare-fun result!213800 () Bool)

(assert (= result!213800 result!213606))

(assert (=> b!3300791 t!252974))

(declare-fun t!252976 () Bool)

(declare-fun tb!171049 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!252976) tb!171049))

(declare-fun result!213802 () Bool)

(assert (= result!213802 result!213708))

(assert (=> d!923947 t!252976))

(declare-fun t!252978 () Bool)

(declare-fun tb!171051 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252978) tb!171051))

(declare-fun result!213804 () Bool)

(assert (= result!213804 result!213678))

(assert (=> d!923847 t!252978))

(declare-fun tb!171053 () Bool)

(declare-fun t!252980 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) t!252980) tb!171053))

(declare-fun result!213806 () Bool)

(assert (= result!213806 result!213614))

(assert (=> d!923643 t!252980))

(assert (=> d!923669 t!252974))

(declare-fun tb!171055 () Bool)

(declare-fun t!252982 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252982) tb!171055))

(declare-fun result!213808 () Bool)

(assert (= result!213808 result!213668))

(assert (=> d!923801 t!252982))

(declare-fun t!252984 () Bool)

(declare-fun tb!171057 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) t!252984) tb!171057))

(declare-fun result!213810 () Bool)

(assert (= result!213810 result!213758))

(assert (=> d!924265 t!252984))

(declare-fun t!252986 () Bool)

(declare-fun tb!171059 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) t!252986) tb!171059))

(declare-fun result!213812 () Bool)

(assert (= result!213812 result!213698))

(assert (=> b!3301353 t!252986))

(declare-fun t!252988 () Bool)

(declare-fun tb!171061 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252988) tb!171061))

(declare-fun result!213814 () Bool)

(assert (= result!213814 result!213768))

(assert (=> d!924309 t!252988))

(declare-fun t!252990 () Bool)

(declare-fun tb!171063 () Bool)

(assert (=> (and b!3302041 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0))))) t!252990) tb!171063))

(declare-fun result!213816 () Bool)

(assert (= result!213816 result!213738))

(assert (=> d!924171 t!252990))

(assert (=> b!3300891 t!252980))

(declare-fun b_and!226043 () Bool)

(declare-fun tp!1033826 () Bool)

(assert (=> b!3302041 (= tp!1033826 (and (=> t!252982 result!213808) (=> t!252990 result!213816) (=> t!252976 result!213802) (=> t!252986 result!213812) (=> t!252980 result!213806) (=> t!252988 result!213814) (=> t!252974 result!213800) (=> t!252978 result!213804) (=> t!252984 result!213810) b_and!226043))))

(declare-fun tp!1033829 () Bool)

(declare-fun e!2053499 () Bool)

(declare-fun b!3302039 () Bool)

(declare-fun e!2053498 () Bool)

(assert (=> b!3302039 (= e!2053499 (and (inv!21 (value!171141 (h!41880 (t!252749 (t!252749 tokens!494))))) e!2053498 tp!1033829))))

(declare-fun e!2053503 () Bool)

(declare-fun tp!1033828 () Bool)

(declare-fun b!3302038 () Bool)

(assert (=> b!3302038 (= e!2053503 (and (inv!49410 (h!41880 (t!252749 (t!252749 tokens!494)))) e!2053499 tp!1033828))))

(declare-fun b!3302040 () Bool)

(declare-fun tp!1033830 () Bool)

(declare-fun e!2053501 () Bool)

(assert (=> b!3302040 (= e!2053498 (and tp!1033830 (inv!49407 (tag!5831 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (inv!49411 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) e!2053501))))

(assert (=> b!3300951 (= tp!1033734 e!2053503)))

(assert (=> b!3302041 (= e!2053501 (and tp!1033827 tp!1033826))))

(assert (= b!3302040 b!3302041))

(assert (= b!3302039 b!3302040))

(assert (= b!3302038 b!3302039))

(assert (= (and b!3300951 (is-Cons!36460 (t!252749 (t!252749 tokens!494)))) b!3302038))

(declare-fun m!3627061 () Bool)

(assert (=> b!3302039 m!3627061))

(declare-fun m!3627063 () Bool)

(assert (=> b!3302038 m!3627063))

(declare-fun m!3627065 () Bool)

(assert (=> b!3302040 m!3627065))

(declare-fun m!3627067 () Bool)

(assert (=> b!3302040 m!3627067))

(declare-fun b!3302042 () Bool)

(declare-fun e!2053504 () Bool)

(assert (=> b!3302042 (= e!2053504 tp_is_empty!17355)))

(declare-fun b!3302045 () Bool)

(declare-fun tp!1033835 () Bool)

(declare-fun tp!1033834 () Bool)

(assert (=> b!3302045 (= e!2053504 (and tp!1033835 tp!1033834))))

(declare-fun b!3302043 () Bool)

(declare-fun tp!1033832 () Bool)

(declare-fun tp!1033833 () Bool)

(assert (=> b!3302043 (= e!2053504 (and tp!1033832 tp!1033833))))

(declare-fun b!3302044 () Bool)

(declare-fun tp!1033831 () Bool)

(assert (=> b!3302044 (= e!2053504 tp!1033831)))

(assert (=> b!3300922 (= tp!1033701 e!2053504)))

(assert (= (and b!3300922 (is-ElementMatch!10046 (reg!10375 (regex!5287 (h!41881 rules!2135))))) b!3302042))

(assert (= (and b!3300922 (is-Concat!15563 (reg!10375 (regex!5287 (h!41881 rules!2135))))) b!3302043))

(assert (= (and b!3300922 (is-Star!10046 (reg!10375 (regex!5287 (h!41881 rules!2135))))) b!3302044))

(assert (= (and b!3300922 (is-Union!10046 (reg!10375 (regex!5287 (h!41881 rules!2135))))) b!3302045))

(declare-fun b!3302046 () Bool)

(declare-fun e!2053505 () Bool)

(assert (=> b!3302046 (= e!2053505 tp_is_empty!17355)))

(declare-fun b!3302049 () Bool)

(declare-fun tp!1033840 () Bool)

(declare-fun tp!1033839 () Bool)

(assert (=> b!3302049 (= e!2053505 (and tp!1033840 tp!1033839))))

(declare-fun b!3302047 () Bool)

(declare-fun tp!1033837 () Bool)

(declare-fun tp!1033838 () Bool)

(assert (=> b!3302047 (= e!2053505 (and tp!1033837 tp!1033838))))

(declare-fun b!3302048 () Bool)

(declare-fun tp!1033836 () Bool)

(assert (=> b!3302048 (= e!2053505 tp!1033836)))

(assert (=> b!3300921 (= tp!1033702 e!2053505)))

(assert (= (and b!3300921 (is-ElementMatch!10046 (regOne!20604 (regex!5287 (h!41881 rules!2135))))) b!3302046))

(assert (= (and b!3300921 (is-Concat!15563 (regOne!20604 (regex!5287 (h!41881 rules!2135))))) b!3302047))

(assert (= (and b!3300921 (is-Star!10046 (regOne!20604 (regex!5287 (h!41881 rules!2135))))) b!3302048))

(assert (= (and b!3300921 (is-Union!10046 (regOne!20604 (regex!5287 (h!41881 rules!2135))))) b!3302049))

(declare-fun b!3302050 () Bool)

(declare-fun e!2053506 () Bool)

(assert (=> b!3302050 (= e!2053506 tp_is_empty!17355)))

(declare-fun b!3302053 () Bool)

(declare-fun tp!1033845 () Bool)

(declare-fun tp!1033844 () Bool)

(assert (=> b!3302053 (= e!2053506 (and tp!1033845 tp!1033844))))

(declare-fun b!3302051 () Bool)

(declare-fun tp!1033842 () Bool)

(declare-fun tp!1033843 () Bool)

(assert (=> b!3302051 (= e!2053506 (and tp!1033842 tp!1033843))))

(declare-fun b!3302052 () Bool)

(declare-fun tp!1033841 () Bool)

(assert (=> b!3302052 (= e!2053506 tp!1033841)))

(assert (=> b!3300921 (= tp!1033703 e!2053506)))

(assert (= (and b!3300921 (is-ElementMatch!10046 (regTwo!20604 (regex!5287 (h!41881 rules!2135))))) b!3302050))

(assert (= (and b!3300921 (is-Concat!15563 (regTwo!20604 (regex!5287 (h!41881 rules!2135))))) b!3302051))

(assert (= (and b!3300921 (is-Star!10046 (regTwo!20604 (regex!5287 (h!41881 rules!2135))))) b!3302052))

(assert (= (and b!3300921 (is-Union!10046 (regTwo!20604 (regex!5287 (h!41881 rules!2135))))) b!3302053))

(declare-fun b!3302054 () Bool)

(declare-fun e!2053507 () Bool)

(assert (=> b!3302054 (= e!2053507 tp_is_empty!17355)))

(declare-fun b!3302057 () Bool)

(declare-fun tp!1033850 () Bool)

(declare-fun tp!1033849 () Bool)

(assert (=> b!3302057 (= e!2053507 (and tp!1033850 tp!1033849))))

(declare-fun b!3302055 () Bool)

(declare-fun tp!1033847 () Bool)

(declare-fun tp!1033848 () Bool)

(assert (=> b!3302055 (= e!2053507 (and tp!1033847 tp!1033848))))

(declare-fun b!3302056 () Bool)

(declare-fun tp!1033846 () Bool)

(assert (=> b!3302056 (= e!2053507 tp!1033846)))

(assert (=> b!3300962 (= tp!1033746 e!2053507)))

(assert (= (and b!3300962 (is-ElementMatch!10046 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302054))

(assert (= (and b!3300962 (is-Concat!15563 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302055))

(assert (= (and b!3300962 (is-Star!10046 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302056))

(assert (= (and b!3300962 (is-Union!10046 (regOne!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302057))

(declare-fun b!3302058 () Bool)

(declare-fun e!2053508 () Bool)

(assert (=> b!3302058 (= e!2053508 tp_is_empty!17355)))

(declare-fun b!3302061 () Bool)

(declare-fun tp!1033855 () Bool)

(declare-fun tp!1033854 () Bool)

(assert (=> b!3302061 (= e!2053508 (and tp!1033855 tp!1033854))))

(declare-fun b!3302059 () Bool)

(declare-fun tp!1033852 () Bool)

(declare-fun tp!1033853 () Bool)

(assert (=> b!3302059 (= e!2053508 (and tp!1033852 tp!1033853))))

(declare-fun b!3302060 () Bool)

(declare-fun tp!1033851 () Bool)

(assert (=> b!3302060 (= e!2053508 tp!1033851)))

(assert (=> b!3300962 (= tp!1033745 e!2053508)))

(assert (= (and b!3300962 (is-ElementMatch!10046 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302058))

(assert (= (and b!3300962 (is-Concat!15563 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302059))

(assert (= (and b!3300962 (is-Star!10046 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302060))

(assert (= (and b!3300962 (is-Union!10046 (regTwo!20605 (regex!5287 (rule!7785 separatorToken!241))))) b!3302061))

(declare-fun b!3302062 () Bool)

(declare-fun e!2053509 () Bool)

(assert (=> b!3302062 (= e!2053509 tp_is_empty!17355)))

(declare-fun b!3302065 () Bool)

(declare-fun tp!1033860 () Bool)

(declare-fun tp!1033859 () Bool)

(assert (=> b!3302065 (= e!2053509 (and tp!1033860 tp!1033859))))

(declare-fun b!3302063 () Bool)

(declare-fun tp!1033857 () Bool)

(declare-fun tp!1033858 () Bool)

(assert (=> b!3302063 (= e!2053509 (and tp!1033857 tp!1033858))))

(declare-fun b!3302064 () Bool)

(declare-fun tp!1033856 () Bool)

(assert (=> b!3302064 (= e!2053509 tp!1033856)))

(assert (=> b!3300961 (= tp!1033742 e!2053509)))

(assert (= (and b!3300961 (is-ElementMatch!10046 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))))) b!3302062))

(assert (= (and b!3300961 (is-Concat!15563 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))))) b!3302063))

(assert (= (and b!3300961 (is-Star!10046 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))))) b!3302064))

(assert (= (and b!3300961 (is-Union!10046 (reg!10375 (regex!5287 (rule!7785 separatorToken!241))))) b!3302065))

(declare-fun b!3302066 () Bool)

(declare-fun e!2053510 () Bool)

(declare-fun tp!1033861 () Bool)

(assert (=> b!3302066 (= e!2053510 (and tp_is_empty!17355 tp!1033861))))

(assert (=> b!3300940 (= tp!1033721 e!2053510)))

(assert (= (and b!3300940 (is-Cons!36459 (t!252748 (originalCharacters!6001 separatorToken!241)))) b!3302066))

(declare-fun b!3302067 () Bool)

(declare-fun e!2053511 () Bool)

(assert (=> b!3302067 (= e!2053511 tp_is_empty!17355)))

(declare-fun b!3302070 () Bool)

(declare-fun tp!1033866 () Bool)

(declare-fun tp!1033865 () Bool)

(assert (=> b!3302070 (= e!2053511 (and tp!1033866 tp!1033865))))

(declare-fun b!3302068 () Bool)

(declare-fun tp!1033863 () Bool)

(declare-fun tp!1033864 () Bool)

(assert (=> b!3302068 (= e!2053511 (and tp!1033863 tp!1033864))))

(declare-fun b!3302069 () Bool)

(declare-fun tp!1033862 () Bool)

(assert (=> b!3302069 (= e!2053511 tp!1033862)))

(assert (=> b!3300960 (= tp!1033743 e!2053511)))

(assert (= (and b!3300960 (is-ElementMatch!10046 (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302067))

(assert (= (and b!3300960 (is-Concat!15563 (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302068))

(assert (= (and b!3300960 (is-Star!10046 (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302069))

(assert (= (and b!3300960 (is-Union!10046 (regOne!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302070))

(declare-fun b!3302071 () Bool)

(declare-fun e!2053512 () Bool)

(assert (=> b!3302071 (= e!2053512 tp_is_empty!17355)))

(declare-fun b!3302074 () Bool)

(declare-fun tp!1033871 () Bool)

(declare-fun tp!1033870 () Bool)

(assert (=> b!3302074 (= e!2053512 (and tp!1033871 tp!1033870))))

(declare-fun b!3302072 () Bool)

(declare-fun tp!1033868 () Bool)

(declare-fun tp!1033869 () Bool)

(assert (=> b!3302072 (= e!2053512 (and tp!1033868 tp!1033869))))

(declare-fun b!3302073 () Bool)

(declare-fun tp!1033867 () Bool)

(assert (=> b!3302073 (= e!2053512 tp!1033867)))

(assert (=> b!3300960 (= tp!1033744 e!2053512)))

(assert (= (and b!3300960 (is-ElementMatch!10046 (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302071))

(assert (= (and b!3300960 (is-Concat!15563 (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302072))

(assert (= (and b!3300960 (is-Star!10046 (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302073))

(assert (= (and b!3300960 (is-Union!10046 (regTwo!20604 (regex!5287 (rule!7785 separatorToken!241))))) b!3302074))

(declare-fun b!3302075 () Bool)

(declare-fun e!2053513 () Bool)

(declare-fun tp!1033872 () Bool)

(assert (=> b!3302075 (= e!2053513 (and tp_is_empty!17355 tp!1033872))))

(assert (=> b!3300939 (= tp!1033720 e!2053513)))

(assert (= (and b!3300939 (is-Cons!36459 (t!252748 (originalCharacters!6001 (h!41880 tokens!494))))) b!3302075))

(declare-fun tp!1033881 () Bool)

(declare-fun b!3302084 () Bool)

(declare-fun tp!1033880 () Bool)

(declare-fun e!2053519 () Bool)

(assert (=> b!3302084 (= e!2053519 (and (inv!49416 (left!28395 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))))) tp!1033880 (inv!49416 (right!28725 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))))) tp!1033881))))

(declare-fun b!3302086 () Bool)

(declare-fun e!2053518 () Bool)

(declare-fun tp!1033879 () Bool)

(assert (=> b!3302086 (= e!2053518 tp!1033879)))

(declare-fun b!3302085 () Bool)

(declare-fun inv!49420 (IArray!21903) Bool)

(assert (=> b!3302085 (= e!2053519 (and (inv!49420 (xs!14087 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))))) e!2053518))))

(assert (=> b!3300797 (= tp!1033689 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494))))) e!2053519))))

(assert (= (and b!3300797 (is-Node!10949 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))))) b!3302084))

(assert (= b!3302085 b!3302086))

(assert (= (and b!3300797 (is-Leaf!17204 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (value!171141 (h!41880 tokens!494)))))) b!3302085))

(declare-fun m!3627069 () Bool)

(assert (=> b!3302084 m!3627069))

(declare-fun m!3627071 () Bool)

(assert (=> b!3302084 m!3627071))

(declare-fun m!3627073 () Bool)

(assert (=> b!3302085 m!3627073))

(assert (=> b!3300797 m!3624677))

(declare-fun b!3302089 () Bool)

(declare-fun e!2053522 () Bool)

(assert (=> b!3302089 (= e!2053522 true)))

(declare-fun b!3302088 () Bool)

(declare-fun e!2053521 () Bool)

(assert (=> b!3302088 (= e!2053521 e!2053522)))

(declare-fun b!3302087 () Bool)

(declare-fun e!2053520 () Bool)

(assert (=> b!3302087 (= e!2053520 e!2053521)))

(assert (=> b!3300509 e!2053520))

(assert (= b!3302088 b!3302089))

(assert (= b!3302087 b!3302088))

(assert (= (and b!3300509 (is-Cons!36461 (t!252750 rules!2135))) b!3302087))

(assert (=> b!3302089 (< (dynLambda!14921 order!18901 (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135))))) (dynLambda!14922 order!18903 lambda!118873))))

(assert (=> b!3302089 (< (dynLambda!14923 order!18905 (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135))))) (dynLambda!14922 order!18903 lambda!118873))))

(declare-fun e!2053524 () Bool)

(declare-fun tp!1033883 () Bool)

(declare-fun tp!1033884 () Bool)

(declare-fun b!3302090 () Bool)

(assert (=> b!3302090 (= e!2053524 (and (inv!49416 (left!28395 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))))) tp!1033883 (inv!49416 (right!28725 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))))) tp!1033884))))

(declare-fun b!3302092 () Bool)

(declare-fun e!2053523 () Bool)

(declare-fun tp!1033882 () Bool)

(assert (=> b!3302092 (= e!2053523 tp!1033882)))

(declare-fun b!3302091 () Bool)

(assert (=> b!3302091 (= e!2053524 (and (inv!49420 (xs!14087 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))))) e!2053523))))

(assert (=> b!3300855 (= tp!1033690 (and (inv!49416 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241)))) e!2053524))))

(assert (= (and b!3300855 (is-Node!10949 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))))) b!3302090))

(assert (= b!3302091 b!3302092))

(assert (= (and b!3300855 (is-Leaf!17204 (c!559681 (dynLambda!14924 (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (value!171141 separatorToken!241))))) b!3302091))

(declare-fun m!3627075 () Bool)

(assert (=> b!3302090 m!3627075))

(declare-fun m!3627077 () Bool)

(assert (=> b!3302090 m!3627077))

(declare-fun m!3627079 () Bool)

(assert (=> b!3302091 m!3627079))

(assert (=> b!3300855 m!3624821))

(declare-fun b!3302093 () Bool)

(declare-fun e!2053525 () Bool)

(assert (=> b!3302093 (= e!2053525 tp_is_empty!17355)))

(declare-fun b!3302096 () Bool)

(declare-fun tp!1033889 () Bool)

(declare-fun tp!1033888 () Bool)

(assert (=> b!3302096 (= e!2053525 (and tp!1033889 tp!1033888))))

(declare-fun b!3302094 () Bool)

(declare-fun tp!1033886 () Bool)

(declare-fun tp!1033887 () Bool)

(assert (=> b!3302094 (= e!2053525 (and tp!1033886 tp!1033887))))

(declare-fun b!3302095 () Bool)

(declare-fun tp!1033885 () Bool)

(assert (=> b!3302095 (= e!2053525 tp!1033885)))

(assert (=> b!3300958 (= tp!1033741 e!2053525)))

(assert (= (and b!3300958 (is-ElementMatch!10046 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302093))

(assert (= (and b!3300958 (is-Concat!15563 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302094))

(assert (= (and b!3300958 (is-Star!10046 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302095))

(assert (= (and b!3300958 (is-Union!10046 (regOne!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302096))

(declare-fun b!3302097 () Bool)

(declare-fun e!2053526 () Bool)

(assert (=> b!3302097 (= e!2053526 tp_is_empty!17355)))

(declare-fun b!3302100 () Bool)

(declare-fun tp!1033894 () Bool)

(declare-fun tp!1033893 () Bool)

(assert (=> b!3302100 (= e!2053526 (and tp!1033894 tp!1033893))))

(declare-fun b!3302098 () Bool)

(declare-fun tp!1033891 () Bool)

(declare-fun tp!1033892 () Bool)

(assert (=> b!3302098 (= e!2053526 (and tp!1033891 tp!1033892))))

(declare-fun b!3302099 () Bool)

(declare-fun tp!1033890 () Bool)

(assert (=> b!3302099 (= e!2053526 tp!1033890)))

(assert (=> b!3300958 (= tp!1033740 e!2053526)))

(assert (= (and b!3300958 (is-ElementMatch!10046 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302097))

(assert (= (and b!3300958 (is-Concat!15563 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302098))

(assert (= (and b!3300958 (is-Star!10046 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302099))

(assert (= (and b!3300958 (is-Union!10046 (regTwo!20605 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302100))

(declare-fun b!3302101 () Bool)

(declare-fun e!2053527 () Bool)

(assert (=> b!3302101 (= e!2053527 tp_is_empty!17355)))

(declare-fun b!3302104 () Bool)

(declare-fun tp!1033899 () Bool)

(declare-fun tp!1033898 () Bool)

(assert (=> b!3302104 (= e!2053527 (and tp!1033899 tp!1033898))))

(declare-fun b!3302102 () Bool)

(declare-fun tp!1033896 () Bool)

(declare-fun tp!1033897 () Bool)

(assert (=> b!3302102 (= e!2053527 (and tp!1033896 tp!1033897))))

(declare-fun b!3302103 () Bool)

(declare-fun tp!1033895 () Bool)

(assert (=> b!3302103 (= e!2053527 tp!1033895)))

(assert (=> b!3300956 (= tp!1033738 e!2053527)))

(assert (= (and b!3300956 (is-ElementMatch!10046 (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302101))

(assert (= (and b!3300956 (is-Concat!15563 (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302102))

(assert (= (and b!3300956 (is-Star!10046 (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302103))

(assert (= (and b!3300956 (is-Union!10046 (regOne!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302104))

(declare-fun b!3302105 () Bool)

(declare-fun e!2053528 () Bool)

(assert (=> b!3302105 (= e!2053528 tp_is_empty!17355)))

(declare-fun b!3302108 () Bool)

(declare-fun tp!1033904 () Bool)

(declare-fun tp!1033903 () Bool)

(assert (=> b!3302108 (= e!2053528 (and tp!1033904 tp!1033903))))

(declare-fun b!3302106 () Bool)

(declare-fun tp!1033901 () Bool)

(declare-fun tp!1033902 () Bool)

(assert (=> b!3302106 (= e!2053528 (and tp!1033901 tp!1033902))))

(declare-fun b!3302107 () Bool)

(declare-fun tp!1033900 () Bool)

(assert (=> b!3302107 (= e!2053528 tp!1033900)))

(assert (=> b!3300956 (= tp!1033739 e!2053528)))

(assert (= (and b!3300956 (is-ElementMatch!10046 (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302105))

(assert (= (and b!3300956 (is-Concat!15563 (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302106))

(assert (= (and b!3300956 (is-Star!10046 (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302107))

(assert (= (and b!3300956 (is-Union!10046 (regTwo!20604 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302108))

(declare-fun b!3302109 () Bool)

(declare-fun e!2053529 () Bool)

(assert (=> b!3302109 (= e!2053529 tp_is_empty!17355)))

(declare-fun b!3302112 () Bool)

(declare-fun tp!1033909 () Bool)

(declare-fun tp!1033908 () Bool)

(assert (=> b!3302112 (= e!2053529 (and tp!1033909 tp!1033908))))

(declare-fun b!3302110 () Bool)

(declare-fun tp!1033906 () Bool)

(declare-fun tp!1033907 () Bool)

(assert (=> b!3302110 (= e!2053529 (and tp!1033906 tp!1033907))))

(declare-fun b!3302111 () Bool)

(declare-fun tp!1033905 () Bool)

(assert (=> b!3302111 (= e!2053529 tp!1033905)))

(assert (=> b!3300957 (= tp!1033737 e!2053529)))

(assert (= (and b!3300957 (is-ElementMatch!10046 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302109))

(assert (= (and b!3300957 (is-Concat!15563 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302110))

(assert (= (and b!3300957 (is-Star!10046 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302111))

(assert (= (and b!3300957 (is-Union!10046 (reg!10375 (regex!5287 (rule!7785 (h!41880 tokens!494)))))) b!3302112))

(declare-fun b!3302113 () Bool)

(declare-fun e!2053530 () Bool)

(assert (=> b!3302113 (= e!2053530 tp_is_empty!17355)))

(declare-fun b!3302116 () Bool)

(declare-fun tp!1033914 () Bool)

(declare-fun tp!1033913 () Bool)

(assert (=> b!3302116 (= e!2053530 (and tp!1033914 tp!1033913))))

(declare-fun b!3302114 () Bool)

(declare-fun tp!1033911 () Bool)

(declare-fun tp!1033912 () Bool)

(assert (=> b!3302114 (= e!2053530 (and tp!1033911 tp!1033912))))

(declare-fun b!3302115 () Bool)

(declare-fun tp!1033910 () Bool)

(assert (=> b!3302115 (= e!2053530 tp!1033910)))

(assert (=> b!3300933 (= tp!1033716 e!2053530)))

(assert (= (and b!3300933 (is-ElementMatch!10046 (regex!5287 (h!41881 (t!252750 rules!2135))))) b!3302113))

(assert (= (and b!3300933 (is-Concat!15563 (regex!5287 (h!41881 (t!252750 rules!2135))))) b!3302114))

(assert (= (and b!3300933 (is-Star!10046 (regex!5287 (h!41881 (t!252750 rules!2135))))) b!3302115))

(assert (= (and b!3300933 (is-Union!10046 (regex!5287 (h!41881 (t!252750 rules!2135))))) b!3302116))

(declare-fun b!3302119 () Bool)

(declare-fun b_free!86713 () Bool)

(declare-fun b_next!87417 () Bool)

(assert (=> b!3302119 (= b_free!86713 (not b_next!87417))))

(declare-fun tb!171065 () Bool)

(declare-fun t!252992 () Bool)

(assert (=> (and b!3302119 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252992) tb!171065))

(declare-fun result!213820 () Bool)

(assert (= result!213820 result!213718))

(assert (=> d!924085 t!252992))

(declare-fun tb!171067 () Bool)

(declare-fun t!252994 () Bool)

(assert (=> (and b!3302119 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!252994) tb!171067))

(declare-fun result!213822 () Bool)

(assert (= result!213822 result!213748))

(assert (=> d!924207 t!252994))

(declare-fun tb!171069 () Bool)

(declare-fun t!252996 () Bool)

(assert (=> (and b!3302119 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!252996) tb!171069))

(declare-fun result!213824 () Bool)

(assert (= result!213824 result!213778))

(assert (=> d!924309 t!252996))

(declare-fun tb!171071 () Bool)

(declare-fun t!252998 () Bool)

(assert (=> (and b!3302119 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!252998) tb!171071))

(declare-fun result!213826 () Bool)

(assert (= result!213826 result!213688))

(assert (=> d!923909 t!252998))

(assert (=> d!924311 t!252996))

(declare-fun t!253000 () Bool)

(declare-fun tb!171073 () Bool)

(assert (=> (and b!3302119 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!253000) tb!171073))

(declare-fun result!213828 () Bool)

(assert (= result!213828 result!213598))

(assert (=> d!923427 t!253000))

(declare-fun t!253002 () Bool)

(declare-fun tb!171075 () Bool)

(assert (=> (and b!3302119 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!253002) tb!171075))

(declare-fun result!213830 () Bool)

(assert (= result!213830 result!213728))

(assert (=> d!924137 t!253002))

(declare-fun b_and!226045 () Bool)

(declare-fun tp!1033915 () Bool)

(assert (=> b!3302119 (= tp!1033915 (and (=> t!252996 result!213824) (=> t!253000 result!213828) (=> t!252992 result!213820) (=> t!252994 result!213822) (=> t!253002 result!213830) (=> t!252998 result!213826) b_and!226045))))

(declare-fun b_free!86715 () Bool)

(declare-fun b_next!87419 () Bool)

(assert (=> b!3302119 (= b_free!86715 (not b_next!87419))))

(declare-fun tb!171077 () Bool)

(declare-fun t!253004 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!253004) tb!171077))

(declare-fun result!213832 () Bool)

(assert (= result!213832 result!213606))

(assert (=> b!3300791 t!253004))

(declare-fun t!253006 () Bool)

(declare-fun tb!171079 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118454)))))) t!253006) tb!171079))

(declare-fun result!213834 () Bool)

(assert (= result!213834 result!213708))

(assert (=> d!923947 t!253006))

(declare-fun tb!171081 () Bool)

(declare-fun t!253008 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118540)))))) t!253008) tb!171081))

(declare-fun result!213836 () Bool)

(assert (= result!213836 result!213678))

(assert (=> d!923847 t!253008))

(declare-fun t!253010 () Bool)

(declare-fun tb!171083 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241)))) t!253010) tb!171083))

(declare-fun result!213838 () Bool)

(assert (= result!213838 result!213614))

(assert (=> d!923643 t!253010))

(assert (=> d!923669 t!253004))

(declare-fun t!253012 () Bool)

(declare-fun tb!171085 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (_1!21112 (get!11636 lt!1118535)))))) t!253012) tb!171085))

(declare-fun result!213840 () Bool)

(assert (= result!213840 result!213668))

(assert (=> d!923801 t!253012))

(declare-fun tb!171087 () Bool)

(declare-fun t!253014 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (Cons!36460 (h!41880 tokens!494) Nil!36460)))))) t!253014) tb!171087))

(declare-fun result!213842 () Bool)

(assert (= result!213842 result!213758))

(assert (=> d!924265 t!253014))

(declare-fun t!253016 () Bool)

(declare-fun tb!171089 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494)))))) t!253016) tb!171089))

(declare-fun result!213844 () Bool)

(assert (= result!213844 result!213698))

(assert (=> b!3301353 t!253016))

(declare-fun tb!171091 () Bool)

(declare-fun t!253018 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494))))) t!253018) tb!171091))

(declare-fun result!213846 () Bool)

(assert (= result!213846 result!213768))

(assert (=> d!924309 t!253018))

(declare-fun t!253020 () Bool)

(declare-fun tb!171093 () Bool)

(assert (=> (and b!3302119 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (apply!8367 lt!1118277 0))))) t!253020) tb!171093))

(declare-fun result!213848 () Bool)

(assert (= result!213848 result!213738))

(assert (=> d!924171 t!253020))

(assert (=> b!3300891 t!253010))

(declare-fun tp!1033918 () Bool)

(declare-fun b_and!226047 () Bool)

(assert (=> b!3302119 (= tp!1033918 (and (=> t!253012 result!213840) (=> t!253008 result!213836) (=> t!253020 result!213848) (=> t!253018 result!213846) (=> t!253014 result!213842) (=> t!253010 result!213838) (=> t!253006 result!213834) (=> t!253004 result!213832) (=> t!253016 result!213844) b_and!226047))))

(declare-fun e!2053531 () Bool)

(assert (=> b!3302119 (= e!2053531 (and tp!1033915 tp!1033918))))

(declare-fun e!2053532 () Bool)

(declare-fun tp!1033917 () Bool)

(declare-fun b!3302118 () Bool)

(assert (=> b!3302118 (= e!2053532 (and tp!1033917 (inv!49407 (tag!5831 (h!41881 (t!252750 (t!252750 rules!2135))))) (inv!49411 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) e!2053531))))

(declare-fun b!3302117 () Bool)

(declare-fun e!2053534 () Bool)

(declare-fun tp!1033916 () Bool)

(assert (=> b!3302117 (= e!2053534 (and e!2053532 tp!1033916))))

(assert (=> b!3300932 (= tp!1033715 e!2053534)))

(assert (= b!3302118 b!3302119))

(assert (= b!3302117 b!3302118))

(assert (= (and b!3300932 (is-Cons!36461 (t!252750 (t!252750 rules!2135)))) b!3302117))

(declare-fun m!3627081 () Bool)

(assert (=> b!3302118 m!3627081))

(declare-fun m!3627083 () Bool)

(assert (=> b!3302118 m!3627083))

(declare-fun b_lambda!92095 () Bool)

(assert (= b_lambda!92049 (or d!923499 b_lambda!92095)))

(declare-fun bs!548708 () Bool)

(declare-fun d!924345 () Bool)

(assert (= bs!548708 (and d!924345 d!923499)))

(assert (=> bs!548708 (= (dynLambda!14914 lambda!118873 (h!41880 (list!13055 lt!1118251))) (rulesProduceIndividualToken!2368 thiss!18206 rules!2135 (h!41880 (list!13055 lt!1118251))))))

(assert (=> bs!548708 m!3626525))

(assert (=> b!3301084 d!924345))

(declare-fun b_lambda!92097 () Bool)

(assert (= b_lambda!92085 (or (and b!3302119 b_free!86715 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299965 b_free!86671 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300934 b_free!86695 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299937 b_free!86675 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299943 b_free!86679) (and b!3302041 b_free!86711 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300954 b_free!86699 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) b_lambda!92097)))

(declare-fun b_lambda!92099 () Bool)

(assert (= b_lambda!92091 (or b!3299975 b_lambda!92099)))

(declare-fun bs!548709 () Bool)

(declare-fun d!924347 () Bool)

(assert (= bs!548709 (and d!924347 b!3299975)))

(assert (=> bs!548709 (= (dynLambda!14914 lambda!118850 (h!41880 lt!1118561)) (not (isSeparator!5287 (rule!7785 (h!41880 lt!1118561)))))))

(assert (=> b!3301998 d!924347))

(declare-fun b_lambda!92101 () Bool)

(assert (= b_lambda!92051 (or b!3299975 b_lambda!92101)))

(declare-fun bs!548710 () Bool)

(declare-fun d!924349 () Bool)

(assert (= bs!548710 (and d!924349 b!3299975)))

(assert (=> bs!548710 (= (dynLambda!14914 lambda!118850 (h!41880 lt!1118497)) (not (isSeparator!5287 (rule!7785 (h!41880 lt!1118497)))))))

(assert (=> b!3301201 d!924349))

(declare-fun b_lambda!92103 () Bool)

(assert (= b_lambda!92069 (or b!3299975 b_lambda!92103)))

(declare-fun bs!548711 () Bool)

(declare-fun d!924351 () Bool)

(assert (= bs!548711 (and d!924351 b!3299975)))

(assert (=> bs!548711 (= (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))) (not (isSeparator!5287 (rule!7785 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 lt!1118255)))))))))))

(assert (=> b!3301525 d!924351))

(declare-fun b_lambda!92105 () Bool)

(assert (= b_lambda!92063 (or b!3299975 b_lambda!92105)))

(assert (=> d!923965 d!923687))

(declare-fun b_lambda!92107 () Bool)

(assert (= b_lambda!92047 (or b!3299975 b_lambda!92107)))

(declare-fun bs!548712 () Bool)

(declare-fun d!924353 () Bool)

(assert (= bs!548712 (and d!924353 b!3299975)))

(assert (=> bs!548712 (= (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))) (not (isSeparator!5287 (rule!7785 (h!41880 (t!252749 (list!13055 (_1!21113 (lex!2204 thiss!18206 rules!2135 (printWithSeparatorToken!93 thiss!18206 (BalanceConc!21515 Empty!10950) separatorToken!241))))))))))))

(assert (=> b!3301081 d!924353))

(declare-fun b_lambda!92109 () Bool)

(assert (= b_lambda!92073 (or b!3299975 b_lambda!92109)))

(declare-fun bs!548713 () Bool)

(declare-fun d!924355 () Bool)

(assert (= bs!548713 (and d!924355 b!3299975)))

(assert (=> bs!548713 (= (dynLambda!14914 lambda!118850 (h!41880 lt!1118654)) (not (isSeparator!5287 (rule!7785 (h!41880 lt!1118654)))))))

(assert (=> b!3301624 d!924355))

(declare-fun b_lambda!92111 () Bool)

(assert (= b_lambda!92071 (or (and b!3299937 b_free!86673 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3302119 b_free!86713 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300954 b_free!86697 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3302041 b_free!86709 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300934 b_free!86693 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299965 b_free!86669 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299943 b_free!86677) b_lambda!92111)))

(declare-fun b_lambda!92113 () Bool)

(assert (= b_lambda!92075 (or b!3299975 b_lambda!92113)))

(declare-fun bs!548714 () Bool)

(declare-fun d!924357 () Bool)

(assert (= bs!548714 (and d!924357 b!3299975)))

(assert (=> bs!548714 (= (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))) (not (isSeparator!5287 (rule!7785 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 Nil!36460 separatorToken!241)))))))))))

(assert (=> b!3301659 d!924357))

(declare-fun b_lambda!92115 () Bool)

(assert (= b_lambda!92093 (or b!3299975 b_lambda!92115)))

(declare-fun bs!548715 () Bool)

(declare-fun d!924359 () Bool)

(assert (= bs!548715 (and d!924359 b!3299975)))

(assert (=> bs!548715 (= (dynLambda!14914 lambda!118850 (h!41880 lt!1118656)) (not (isSeparator!5287 (rule!7785 (h!41880 lt!1118656)))))))

(assert (=> b!3302023 d!924359))

(declare-fun b_lambda!92117 () Bool)

(assert (= b_lambda!92065 (or b!3299975 b_lambda!92117)))

(declare-fun bs!548716 () Bool)

(declare-fun d!924361 () Bool)

(assert (= bs!548716 (and d!924361 b!3299975)))

(assert (=> bs!548716 (= (dynLambda!14914 lambda!118850 (h!41880 (t!252749 tokens!494))) (not (isSeparator!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))))))

(assert (=> b!3301436 d!924361))

(declare-fun b_lambda!92119 () Bool)

(assert (= b_lambda!92059 (or (and b!3299943 b_free!86679 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 tokens!494)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))))) (and b!3299965 b_free!86671 (= (toChars!7274 (transformation!5287 (h!41881 rules!2135))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))))) (and b!3300954 b_free!86699) (and b!3302041 b_free!86711 (= (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))))) (and b!3299937 b_free!86675 (= (toChars!7274 (transformation!5287 (rule!7785 separatorToken!241))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))))) (and b!3302119 b_free!86715 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))))) (and b!3300934 b_free!86695 (= (toChars!7274 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toChars!7274 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))))) b_lambda!92119)))

(declare-fun b_lambda!92121 () Bool)

(assert (= b_lambda!92067 (or b!3299975 b_lambda!92121)))

(declare-fun bs!548717 () Bool)

(declare-fun d!924363 () Bool)

(assert (= bs!548717 (and d!924363 b!3299975)))

(assert (=> bs!548717 (= (dynLambda!14914 lambda!118850 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))) (not (isSeparator!5287 (rule!7785 (h!41880 (t!252749 (_1!21111 (lexList!1350 thiss!18206 rules!2135 (printWithSeparatorTokenList!201 thiss!18206 tokens!494 separatorToken!241)))))))))))

(assert (=> b!3301499 d!924363))

(declare-fun b_lambda!92123 () Bool)

(assert (= b_lambda!92087 (or (and b!3299937 b_free!86673 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3302119 b_free!86713 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300954 b_free!86697 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3302041 b_free!86709 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300934 b_free!86693 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299965 b_free!86669 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299943 b_free!86677) b_lambda!92123)))

(declare-fun b_lambda!92125 () Bool)

(assert (= b_lambda!92089 (or (and b!3299937 b_free!86673 (= (toValue!7415 (transformation!5287 (rule!7785 separatorToken!241))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3302119 b_free!86713 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 (t!252750 rules!2135))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300954 b_free!86697 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 tokens!494))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3302041 b_free!86709 (= (toValue!7415 (transformation!5287 (rule!7785 (h!41880 (t!252749 (t!252749 tokens!494)))))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3300934 b_free!86693 (= (toValue!7415 (transformation!5287 (h!41881 (t!252750 rules!2135)))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299965 b_free!86669 (= (toValue!7415 (transformation!5287 (h!41881 rules!2135))) (toValue!7415 (transformation!5287 (rule!7785 (h!41880 tokens!494)))))) (and b!3299943 b_free!86677) b_lambda!92125)))

(push 1)

(assert (not b!3302015))

(assert (not b!3301294))

(assert (not b!3301871))

(assert (not b!3301266))

(assert (not bm!239972))

(assert (not d!924205))

(assert (not b!3301087))

(assert (not b!3301588))

(assert (not b!3301774))

(assert (not b!3301944))

(assert (not b!3301194))

(assert (not d!924181))

(assert (not bm!240009))

(assert (not d!923925))

(assert (not d!923839))

(assert (not bs!548708))

(assert (not b!3301677))

(assert (not b!3301309))

(assert (not b!3301437))

(assert (not b!3301155))

(assert (not d!923825))

(assert (not bm!239973))

(assert (not b!3301943))

(assert (not b!3301822))

(assert (not b!3301839))

(assert (not b!3301290))

(assert (not b!3301952))

(assert (not b_next!87417))

(assert (not tb!171005))

(assert (not d!924151))

(assert (not b!3301337))

(assert (not d!924111))

(assert (not d!923993))

(assert (not d!924065))

(assert (not b!3301373))

(assert (not b_lambda!92099))

(assert (not b!3301880))

(assert (not d!924087))

(assert (not d!923935))

(assert (not b!3301675))

(assert (not b!3302087))

(assert (not d!924035))

(assert (not b!3301949))

(assert (not d!924133))

(assert (not b!3301451))

(assert (not b!3301288))

(assert (not b!3301510))

(assert (not b!3301413))

(assert (not b!3301387))

(assert (not b!3302095))

(assert (not b!3302115))

(assert (not b!3301167))

(assert (not b!3301454))

(assert (not d!923779))

(assert (not b!3301674))

(assert (not b!3301479))

(assert (not d!923971))

(assert (not b!3301410))

(assert (not d!924121))

(assert (not bm!240051))

(assert (not b!3301873))

(assert (not d!924033))

(assert (not bm!240003))

(assert (not b!3300797))

(assert b_and!226013)

(assert (not b!3301890))

(assert (not b!3301991))

(assert (not b!3301098))

(assert (not b!3301647))

(assert (not b!3301868))

(assert (not b_lambda!92095))

(assert (not d!923945))

(assert (not d!924331))

(assert (not b!3301936))

(assert (not b!3301252))

(assert (not b!3301152))

(assert (not bm!239953))

(assert (not b_next!87403))

(assert (not d!924045))

(assert (not d!924001))

(assert (not b!3302008))

(assert (not b!3301799))

(assert (not d!923819))

(assert (not b!3301999))

(assert (not b!3301702))

(assert (not b!3301256))

(assert (not b_lambda!92013))

(assert (not b!3301283))

(assert (not b!3301298))

(assert (not b!3301346))

(assert (not b!3301899))

(assert (not b!3301833))

(assert (not b!3301856))

(assert (not b!3301705))

(assert (not b!3301279))

(assert (not b!3302045))

(assert (not b_lambda!92001))

(assert (not bm!239984))

(assert (not d!923767))

(assert (not bm!240011))

(assert (not d!923937))

(assert (not d!923957))

(assert (not b_lambda!92105))

(assert (not d!923877))

(assert (not b!3301406))

(assert (not b!3301689))

(assert (not b!3302018))

(assert (not b!3302102))

(assert (not b_lambda!92115))

(assert (not b!3302035))

(assert (not d!923795))

(assert (not b!3301552))

(assert (not b!3302063))

(assert (not d!923983))

(assert (not b!3301382))

(assert (not b!3301661))

(assert (not b!3301485))

(assert (not b!3301817))

(assert (not bm!240014))

(assert (not b!3301385))

(assert (not b!3301585))

(assert (not bm!239988))

(assert (not d!924263))

(assert (not tb!170985))

(assert (not d!924277))

(assert (not b!3301896))

(assert (not d!924003))

(assert (not b!3301821))

(assert (not b_lambda!92019))

(assert (not d!923799))

(assert (not b!3301554))

(assert (not b!3301299))

(assert (not b!3302037))

(assert (not d!924253))

(assert (not d!923959))

(assert (not d!923815))

(assert (not d!924295))

(assert (not d!923817))

(assert (not b!3302047))

(assert (not b!3302024))

(assert (not b!3301396))

(assert (not b!3301241))

(assert (not d!924301))

(assert (not d!924241))

(assert (not d!924165))

(assert (not b!3302064))

(assert (not d!924323))

(assert (not b!3301306))

(assert (not b!3302021))

(assert (not b!3301344))

(assert (not d!924041))

(assert (not b!3301281))

(assert (not b!3301590))

(assert (not d!923981))

(assert (not b!3302084))

(assert (not b!3302033))

(assert (not b!3302059))

(assert (not bm!240000))

(assert (not b!3301519))

(assert (not b!3301630))

(assert (not d!924019))

(assert (not bm!240045))

(assert (not d!924155))

(assert (not d!924297))

(assert (not bm!240002))

(assert (not b!3301681))

(assert (not b!3301941))

(assert (not b!3301478))

(assert (not b!3301489))

(assert (not d!924287))

(assert (not b_lambda!92111))

(assert (not b!3302107))

(assert (not d!924265))

(assert (not bm!239985))

(assert (not b!3301295))

(assert (not b_lambda!92125))

(assert (not tb!170935))

(assert (not d!923921))

(assert (not b!3301557))

(assert (not d!924219))

(assert (not b!3301287))

(assert (not b!3301556))

(assert (not b!3302066))

(assert (not b!3301861))

(assert (not d!924213))

(assert (not b!3302026))

(assert (not tb!170955))

(assert (not d!923837))

(assert (not b!3301304))

(assert (not b!3301569))

(assert (not b!3301261))

(assert (not b!3301484))

(assert (not b!3301568))

(assert (not b!3302014))

(assert (not b!3301908))

(assert (not b!3301380))

(assert (not b!3301343))

(assert (not b!3301233))

(assert b_and!226017)

(assert (not b!3302048))

(assert (not b!3301257))

(assert (not b!3301104))

(assert (not b!3301523))

(assert (not b!3301824))

(assert (not d!923867))

(assert (not b!3301819))

(assert (not b!3301308))

(assert (not b!3301079))

(assert (not d!924093))

(assert (not d!924215))

(assert (not bm!240008))

(assert (not b!3301917))

(assert (not d!924333))

(assert b_and!226039)

(assert (not b_next!87413))

(assert (not d!924115))

(assert (not b!3302068))

(assert (not bm!240005))

(assert (not d!924163))

(assert (not d!924139))

(assert (not bm!240033))

(assert (not b!3301650))

(assert (not b!3301951))

(assert (not b_next!87381))

(assert (not d!924061))

(assert (not b!3301797))

(assert (not b!3301785))

(assert (not b!3301527))

(assert (not d!924221))

(assert (not b!3302022))

(assert (not d!924083))

(assert (not d!924119))

(assert (not d!923951))

(assert (not b!3301979))

(assert (not b!3301350))

(assert (not b_lambda!92009))

(assert (not b!3301940))

(assert b_and!226045)

(assert (not bm!239992))

(assert (not b!3301289))

(assert (not d!923791))

(assert (not d!923887))

(assert (not b!3301503))

(assert (not b!3301144))

(assert (not b!3302040))

(assert (not b!3302096))

(assert (not d!924167))

(assert (not d!924013))

(assert (not d!924199))

(assert (not d!924149))

(assert (not d!924321))

(assert (not b!3301717))

(assert (not b!3302061))

(assert (not b!3301642))

(assert (not b!3301376))

(assert (not b!3301953))

(assert (not b!3301151))

(assert (not d!923923))

(assert (not b!3301886))

(assert (not b!3302038))

(assert (not b!3301841))

(assert (not b!3302117))

(assert (not b!3301460))

(assert (not d!923843))

(assert (not b!3301351))

(assert (not bm!240041))

(assert (not b!3302001))

(assert (not b!3301933))

(assert (not d!924307))

(assert (not b!3301312))

(assert (not b!3301202))

(assert (not b!3301964))

(assert (not b!3301583))

(assert (not b!3301696))

(assert (not b!3301574))

(assert (not b!3301997))

(assert (not b!3301430))

(assert (not d!923895))

(assert (not b_lambda!92015))

(assert (not tb!170965))

(assert (not bm!240031))

(assert (not b!3301657))

(assert (not b!3302032))

(assert (not b!3301207))

(assert (not b!3302091))

(assert (not b!3301703))

(assert (not d!924147))

(assert (not d!924075))

(assert (not bm!239974))

(assert (not b!3301285))

(assert (not b!3301901))

(assert (not b!3301470))

(assert (not b!3301761))

(assert (not b!3301435))

(assert (not b!3301831))

(assert (not bm!240012))

(assert (not b!3302044))

(assert (not b_lambda!92007))

(assert (not b!3301852))

(assert (not d!924303))

(assert (not b!3301888))

(assert (not b!3301547))

(assert (not b!3302010))

(assert (not d!924209))

(assert (not b!3302005))

(assert (not bm!239993))

(assert (not bm!240010))

(assert (not b!3301801))

(assert (not b!3301967))

(assert (not d!924051))

(assert (not d!924127))

(assert (not b!3301706))

(assert (not b!3301957))

(assert (not b!3301419))

(assert (not bm!240044))

(assert (not bm!239952))

(assert (not bm!240053))

(assert (not b!3301878))

(assert (not b!3301813))

(assert (not b!3301783))

(assert (not d!924183))

(assert (not b!3301710))

(assert (not b!3302065))

(assert (not b!3302073))

(assert (not d!923901))

(assert (not b!3301708))

(assert (not b!3302072))

(assert (not b!3302111))

(assert (not b!3301223))

(assert (not b!3301693))

(assert (not b!3301495))

(assert (not d!924203))

(assert (not b!3301968))

(assert (not b!3301956))

(assert (not d!923929))

(assert (not b!3301242))

(assert (not b!3301687))

(assert (not b!3301958))

(assert (not d!923835))

(assert (not d!923975))

(assert (not b!3301166))

(assert (not b!3302086))

(assert (not b!3301315))

(assert (not b_next!87373))

(assert (not b!3301407))

(assert (not b!3302052))

(assert (not b!3301649))

(assert (not bm!239990))

(assert (not d!923857))

(assert (not b!3302006))

(assert (not d!924099))

(assert (not b!3301818))

(assert (not d!924293))

(assert (not b!3301204))

(assert (not b!3301077))

(assert (not b!3301291))

(assert (not b!3301300))

(assert (not d!923899))

(assert (not b!3301313))

(assert (not b!3302069))

(assert (not b!3301826))

(assert (not b!3302108))

(assert (not b!3301877))

(assert (not b!3301800))

(assert (not b!3301975))

(assert (not b!3301210))

(assert (not b!3301937))

(assert (not b!3301903))

(assert (not b!3301461))

(assert (not b!3301895))

(assert (not b!3301237))

(assert (not d!923847))

(assert (not d!923805))

(assert (not b!3301353))

(assert (not d!923743))

(assert (not d!924305))

(assert (not b!3301206))

(assert (not b!3301211))

(assert (not b!3301962))

(assert (not d!924043))

(assert (not b!3301575))

(assert (not b_next!87399))

(assert (not b!3301100))

(assert (not b!3301404))

(assert (not b!3301286))

(assert (not d!924109))

(assert (not d!923845))

(assert b_and!226031)

(assert (not b!3301581))

(assert (not b!3302110))

(assert (not b!3301083))

(assert (not d!923787))

(assert (not b!3302106))

(assert (not b!3301452))

(assert (not b_lambda!92117))

(assert (not b_lambda!92061))

(assert (not d!924315))

(assert (not b_lambda!91999))

(assert (not d!923917))

(assert (not b!3301310))

(assert (not b!3301409))

(assert (not d!923739))

(assert (not b!3301955))

(assert (not b_lambda!92113))

(assert b_and!226035)

(assert (not b!3301623))

(assert (not b!3301848))

(assert (not b!3301324))

(assert (not d!923889))

(assert (not d!923885))

(assert (not b!3301493))

(assert (not b!3301653))

(assert (not d!923963))

(assert (not b!3301698))

(assert (not b!3301910))

(assert (not d!924073))

(assert (not d!924095))

(assert (not d!924261))

(assert (not b!3301338))

(assert (not b_lambda!92123))

(assert (not d!924201))

(assert (not b!3301732))

(assert (not b!3301481))

(assert (not b!3301854))

(assert (not d!923849))

(assert (not d!924251))

(assert (not b!3302031))

(assert b_and!226033)

(assert (not b!3301348))

(assert (not b!3301508))

(assert (not b!3302030))

(assert (not b_lambda!92011))

(assert b_and!226043)

(assert (not b!3301247))

(assert (not b!3301378))

(assert (not d!923821))

(assert (not b!3301679))

(assert (not b!3301411))

(assert (not b!3301340))

(assert (not d!924063))

(assert (not b!3302098))

(assert (not tb!171025))

(assert (not d!923801))

(assert (not b!3301342))

(assert (not b!3301339))

(assert (not b!3302090))

(assert (not d!923997))

(assert (not b_next!87397))

(assert (not b!3301216))

(assert (not b!3301578))

(assert (not bm!240006))

(assert (not b_next!87415))

(assert (not d!923759))

(assert (not d!924197))

(assert (not d!923893))

(assert (not b!3301579))

(assert (not b!3301555))

(assert (not d!924169))

(assert (not d!923793))

(assert (not b!3301627))

(assert b_and!226015)

(assert (not d!923915))

(assert (not d!923911))

(assert (not b!3301884))

(assert (not d!923977))

(assert (not b!3301462))

(assert (not b!3301820))

(assert (not bm!239989))

(assert (not b!3301832))

(assert (not d!924079))

(assert (not bm!240039))

(assert (not b!3301070))

(assert (not bm!240027))

(assert (not b!3301759))

(assert (not d!924131))

(assert (not b_lambda!92121))

(assert (not b!3301734))

(assert (not b!3302118))

(assert (not b_lambda!92005))

(assert b_and!226019)

(assert (not d!924053))

(assert (not b!3301846))

(assert (not b!3302039))

(assert (not bm!240034))

(assert (not d!923999))

(assert (not b!3301085))

(assert (not d!924285))

(assert (not b!3301837))

(assert (not b!3301390))

(assert (not d!923749))

(assert (not b!3302003))

(assert (not b!3301506))

(assert (not b!3301250))

(assert (not bm!239991))

(assert (not b!3301107))

(assert (not b!3302103))

(assert (not d!924071))

(assert (not d!924225))

(assert (not b!3301214))

(assert (not b!3301654))

(assert (not b!3302013))

(assert (not b!3301475))

(assert (not b!3301355))

(assert (not bm!239975))

(assert (not b_lambda!92103))

(assert (not b!3301259))

(assert (not d!924097))

(assert (not b!3301071))

(assert (not b_lambda!92079))

(assert (not b!3301311))

(assert (not b!3302053))

(assert (not b!3301617))

(assert (not b!3301375))

(assert (not b!3301215))

(assert (not d!924091))

(assert (not b!3301545))

(assert (not b!3301417))

(assert (not b!3301254))

(assert tp_is_empty!17355)

(assert (not bm!240028))

(assert (not b!3301472))

(assert (not b!3301823))

(assert (not d!924273))

(assert (not d!924309))

(assert (not b!3301724))

(assert (not b!3301736))

(assert (not bm!239971))

(assert (not b!3301432))

(assert (not bm!240023))

(assert (not b!3301663))

(assert (not b!3302009))

(assert (not b!3301550))

(assert (not d!924141))

(assert (not b!3301712))

(assert (not b!3301218))

(assert b_and!226011)

(assert (not tb!170945))

(assert (not d!923809))

(assert (not b!3301513))

(assert (not d!924113))

(assert (not d!924259))

(assert (not d!924047))

(assert (not b_lambda!92003))

(assert (not d!923811))

(assert (not b_lambda!92109))

(assert (not bm!240013))

(assert (not tb!170915))

(assert (not b_lambda!92057))

(assert (not b!3301455))

(assert (not b!3301715))

(assert (not d!923919))

(assert (not b_lambda!92119))

(assert (not b!3301245))

(assert (not bm!240004))

(assert (not d!924049))

(assert (not b_next!87379))

(assert (not b!3301515))

(assert (not b_lambda!92017))

(assert (not b!3302011))

(assert (not b!3302100))

(assert (not b!3301474))

(assert (not b_lambda!92101))

(assert (not b!3301625))

(assert (not bm!239999))

(assert (not b!3301408))

(assert (not b!3301303))

(assert (not bm!239976))

(assert (not d!924231))

(assert (not bm!240046))

(assert (not b!3301849))

(assert (not b!3301567))

(assert (not bm!240052))

(assert (not d!924185))

(assert (not b_lambda!92097))

(assert (not b!3301341))

(assert (not b!3301808))

(assert (not bm!240030))

(assert (not d!924239))

(assert (not d!924171))

(assert (not bm!239970))

(assert (not b!3301730))

(assert (not b!3301628))

(assert (not d!923823))

(assert (not b!3301504))

(assert (not b!3301869))

(assert (not b_next!87383))

(assert (not b!3302074))

(assert (not b!3301412))

(assert (not b_next!87377))

(assert (not bm!239994))

(assert (not d!924055))

(assert (not b!3302036))

(assert (not b_lambda!92107))

(assert (not d!924103))

(assert (not d!924275))

(assert (not b!3301973))

(assert (not b!3301277))

(assert (not b_next!87375))

(assert (not d!923943))

(assert (not d!924249))

(assert (not b!3301095))

(assert (not b!3301858))

(assert (not b!3302056))

(assert (not b!3302051))

(assert (not b!3301453))

(assert (not d!924005))

(assert (not b!3301863))

(assert (not d!924325))

(assert (not b!3302070))

(assert (not d!924161))

(assert (not b!3301851))

(assert (not b!3302075))

(assert (not b!3302112))

(assert (not b!3302027))

(assert (not bm!239998))

(assert (not d!923747))

(assert (not b!3301093))

(assert (not b!3301450))

(assert (not d!924067))

(assert (not b!3301845))

(assert (not b!3301897))

(assert (not b!3301109))

(assert (not b!3301345))

(assert (not b_lambda!92081))

(assert (not b!3301815))

(assert (not b!3301986))

(assert (not d!924255))

(assert (not b!3301778))

(assert (not bm!239977))

(assert (not b!3301543))

(assert (not tb!171015))

(assert (not b!3301977))

(assert (not b!3301684))

(assert (not b!3301501))

(assert (not d!923807))

(assert (not b!3301415))

(assert (not bm!240032))

(assert (not d!924031))

(assert (not b!3301354))

(assert (not d!924177))

(assert (not d!923979))

(assert (not d!924237))

(assert (not b!3301798))

(assert (not b_lambda!92083))

(assert (not b!3301806))

(assert (not d!924129))

(assert (not b!3301683))

(assert (not d!923869))

(assert (not b!3301766))

(assert (not b!3301680))

(assert (not b!3301335))

(assert (not b!3301149))

(assert (not b!3301231))

(assert (not b!3301235))

(assert (not b!3301398))

(assert (not b!3302055))

(assert b_and!226037)

(assert (not b!3301691))

(assert (not d!923897))

(assert (not bm!240024))

(assert (not b_next!87419))

(assert (not bm!239997))

(assert (not b!3301882))

(assert (not tb!170925))

(assert (not b!3301775))

(assert (not b!3302028))

(assert (not b!3301213))

(assert (not b!3301960))

(assert (not d!923813))

(assert (not b!3301307))

(assert (not b!3302060))

(assert (not b!3301239))

(assert (not b!3301970))

(assert (not b!3301491))

(assert (not b!3302114))

(assert (not b!3301497))

(assert (not b!3301645))

(assert (not d!924175))

(assert (not d!924189))

(assert (not bm!240043))

(assert (not b!3301334))

(assert (not b!3301209))

(assert (not b!3301776))

(assert (not d!924247))

(assert (not b!3301429))

(assert (not d!923769))

(assert (not b!3301521))

(assert (not b!3301102))

(assert (not b!3301549))

(assert (not d!923947))

(assert (not d!923891))

(assert (not d!923763))

(assert (not b!3301948))

(assert (not b!3301249))

(assert (not b!3302099))

(assert (not d!923765))

(assert (not b!3302049))

(assert (not b!3302092))

(assert (not tb!170995))

(assert (not b!3301633))

(assert (not b!3301891))

(assert (not b!3301200))

(assert (not b!3301874))

(assert (not b!3302043))

(assert (not d!924021))

(assert (not bm!240040))

(assert (not d!923757))

(assert (not b!3301885))

(assert (not b_next!87401))

(assert (not d!924135))

(assert (not d!924145))

(assert (not b!3302104))

(assert (not b_lambda!92053))

(assert (not d!923913))

(assert (not b!3301096))

(assert (not b!3301981))

(assert (not bm!240042))

(assert (not b!3301551))

(assert (not b!3301876))

(assert (not d!923989))

(assert (not b!3301972))

(assert (not b!3301984))

(assert (not b!3301773))

(assert (not b!3301842))

(assert (not b!3302085))

(assert (not b!3302094))

(assert b_and!226041)

(assert (not b!3301788))

(assert (not b_lambda!92055))

(assert (not d!924077))

(assert (not b!3302016))

(assert (not b!3301954))

(assert b_and!226047)

(assert (not b!3301292))

(assert (not b!3301905))

(assert (not tb!170975))

(assert (not b!3300855))

(assert (not b!3301686))

(assert (not b!3302116))

(assert (not b!3301076))

(assert (not b!3302057))

(assert (not d!923991))

(assert (not b!3302020))

(assert (not b_lambda!92077))

(assert (not b!3301548))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!87417))

(assert b_and!226017)

(assert b_and!226045)

(assert (not b_next!87373))

(assert (not b_next!87399))

(assert b_and!226031)

(assert b_and!226019)

(assert b_and!226011)

(assert (not b_next!87379))

(assert b_and!226037)

(assert (not b_next!87419))

(assert (not b_next!87401))

(assert (not b_next!87403))

(assert b_and!226013)

(assert (not b_next!87413))

(assert (not b_next!87381))

(assert b_and!226039)

(assert b_and!226035)

(assert b_and!226033)

(assert b_and!226043)

(assert (not b_next!87415))

(assert b_and!226015)

(assert (not b_next!87397))

(assert (not b_next!87383))

(assert (not b_next!87377))

(assert (not b_next!87375))

(assert b_and!226041)

(assert b_and!226047)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50680 () Bool)

(assert start!50680)

(declare-fun b!548084 () Bool)

(declare-fun b_free!15257 () Bool)

(declare-fun b_next!15273 () Bool)

(assert (=> b!548084 (= b_free!15257 (not b_next!15273))))

(declare-fun tp!173774 () Bool)

(declare-fun b_and!53523 () Bool)

(assert (=> b!548084 (= tp!173774 b_and!53523)))

(declare-fun b_free!15259 () Bool)

(declare-fun b_next!15275 () Bool)

(assert (=> b!548084 (= b_free!15259 (not b_next!15275))))

(declare-fun tp!173770 () Bool)

(declare-fun b_and!53525 () Bool)

(assert (=> b!548084 (= tp!173770 b_and!53525)))

(declare-fun b!548102 () Bool)

(declare-fun b_free!15261 () Bool)

(declare-fun b_next!15277 () Bool)

(assert (=> b!548102 (= b_free!15261 (not b_next!15277))))

(declare-fun tp!173766 () Bool)

(declare-fun b_and!53527 () Bool)

(assert (=> b!548102 (= tp!173766 b_and!53527)))

(declare-fun b_free!15263 () Bool)

(declare-fun b_next!15279 () Bool)

(assert (=> b!548102 (= b_free!15263 (not b_next!15279))))

(declare-fun tp!173772 () Bool)

(declare-fun b_and!53529 () Bool)

(assert (=> b!548102 (= tp!173772 b_and!53529)))

(declare-fun b!548071 () Bool)

(declare-fun res!234490 () Bool)

(declare-fun e!331309 () Bool)

(assert (=> b!548071 (=> res!234490 e!331309)))

(declare-datatypes ((C!3632 0))(
  ( (C!3633 (val!2042 Int)) )
))
(declare-datatypes ((Regex!1355 0))(
  ( (ElementMatch!1355 (c!103204 C!3632)) (Concat!2400 (regOne!3222 Regex!1355) (regTwo!3222 Regex!1355)) (EmptyExpr!1355) (Star!1355 (reg!1684 Regex!1355)) (EmptyLang!1355) (Union!1355 (regOne!3223 Regex!1355) (regTwo!3223 Regex!1355)) )
))
(declare-datatypes ((String!6968 0))(
  ( (String!6969 (value!33939 String)) )
))
(declare-datatypes ((List!5415 0))(
  ( (Nil!5405) (Cons!5405 (h!10806 (_ BitVec 16)) (t!74872 List!5415)) )
))
(declare-datatypes ((TokenValue!1045 0))(
  ( (FloatLiteralValue!2090 (text!7760 List!5415)) (TokenValueExt!1044 (__x!3988 Int)) (Broken!5225 (value!33940 List!5415)) (Object!1054) (End!1045) (Def!1045) (Underscore!1045) (Match!1045) (Else!1045) (Error!1045) (Case!1045) (If!1045) (Extends!1045) (Abstract!1045) (Class!1045) (Val!1045) (DelimiterValue!2090 (del!1105 List!5415)) (KeywordValue!1051 (value!33941 List!5415)) (CommentValue!2090 (value!33942 List!5415)) (WhitespaceValue!2090 (value!33943 List!5415)) (IndentationValue!1045 (value!33944 List!5415)) (String!6970) (Int32!1045) (Broken!5226 (value!33945 List!5415)) (Boolean!1046) (Unit!9516) (OperatorValue!1048 (op!1105 List!5415)) (IdentifierValue!2090 (value!33946 List!5415)) (IdentifierValue!2091 (value!33947 List!5415)) (WhitespaceValue!2091 (value!33948 List!5415)) (True!2090) (False!2090) (Broken!5227 (value!33949 List!5415)) (Broken!5228 (value!33950 List!5415)) (True!2091) (RightBrace!1045) (RightBracket!1045) (Colon!1045) (Null!1045) (Comma!1045) (LeftBracket!1045) (False!2091) (LeftBrace!1045) (ImaginaryLiteralValue!1045 (text!7761 List!5415)) (StringLiteralValue!3135 (value!33951 List!5415)) (EOFValue!1045 (value!33952 List!5415)) (IdentValue!1045 (value!33953 List!5415)) (DelimiterValue!2091 (value!33954 List!5415)) (DedentValue!1045 (value!33955 List!5415)) (NewLineValue!1045 (value!33956 List!5415)) (IntegerValue!3135 (value!33957 (_ BitVec 32)) (text!7762 List!5415)) (IntegerValue!3136 (value!33958 Int) (text!7763 List!5415)) (Times!1045) (Or!1045) (Equal!1045) (Minus!1045) (Broken!5229 (value!33959 List!5415)) (And!1045) (Div!1045) (LessEqual!1045) (Mod!1045) (Concat!2401) (Not!1045) (Plus!1045) (SpaceValue!1045 (value!33960 List!5415)) (IntegerValue!3137 (value!33961 Int) (text!7764 List!5415)) (StringLiteralValue!3136 (text!7765 List!5415)) (FloatLiteralValue!2091 (text!7766 List!5415)) (BytesLiteralValue!1045 (value!33962 List!5415)) (CommentValue!2091 (value!33963 List!5415)) (StringLiteralValue!3137 (value!33964 List!5415)) (ErrorTokenValue!1045 (msg!1106 List!5415)) )
))
(declare-datatypes ((List!5416 0))(
  ( (Nil!5406) (Cons!5406 (h!10807 C!3632) (t!74873 List!5416)) )
))
(declare-datatypes ((IArray!3477 0))(
  ( (IArray!3478 (innerList!1796 List!5416)) )
))
(declare-datatypes ((Conc!1738 0))(
  ( (Node!1738 (left!4473 Conc!1738) (right!4803 Conc!1738) (csize!3706 Int) (cheight!1949 Int)) (Leaf!2756 (xs!4375 IArray!3477) (csize!3707 Int)) (Empty!1738) )
))
(declare-datatypes ((BalanceConc!3484 0))(
  ( (BalanceConc!3485 (c!103205 Conc!1738)) )
))
(declare-datatypes ((TokenValueInjection!1858 0))(
  ( (TokenValueInjection!1859 (toValue!1868 Int) (toChars!1727 Int)) )
))
(declare-datatypes ((Rule!1842 0))(
  ( (Rule!1843 (regex!1021 Regex!1355) (tag!1283 String!6968) (isSeparator!1021 Bool) (transformation!1021 TokenValueInjection!1858)) )
))
(declare-datatypes ((List!5417 0))(
  ( (Nil!5407) (Cons!5407 (h!10808 Rule!1842) (t!74874 List!5417)) )
))
(declare-fun rules!3103 () List!5417)

(declare-datatypes ((Token!1778 0))(
  ( (Token!1779 (value!33965 TokenValue!1045) (rule!1741 Rule!1842) (size!4330 Int) (originalCharacters!1060 List!5416)) )
))
(declare-datatypes ((tuple2!6436 0))(
  ( (tuple2!6437 (_1!3482 Token!1778) (_2!3482 List!5416)) )
))
(declare-datatypes ((Option!1371 0))(
  ( (None!1370) (Some!1370 (v!16191 tuple2!6436)) )
))
(declare-fun lt!230326 () Option!1371)

(declare-fun contains!1263 (List!5417 Rule!1842) Bool)

(assert (=> b!548071 (= res!234490 (not (contains!1263 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun b!548072 () Bool)

(declare-fun e!331324 () Bool)

(declare-fun e!331318 () Bool)

(assert (=> b!548072 (= e!331324 e!331318)))

(declare-fun res!234489 () Bool)

(assert (=> b!548072 (=> res!234489 e!331318)))

(declare-fun lt!230327 () Int)

(declare-fun lt!230291 () Int)

(assert (=> b!548072 (= res!234489 (>= lt!230327 lt!230291))))

(declare-fun b!548073 () Bool)

(declare-datatypes ((Unit!9517 0))(
  ( (Unit!9518) )
))
(declare-fun e!331301 () Unit!9517)

(declare-fun Unit!9519 () Unit!9517)

(assert (=> b!548073 (= e!331301 Unit!9519)))

(declare-fun lt!230303 () List!5416)

(declare-fun lt!230298 () Unit!9517)

(declare-fun token!491 () Token!1778)

(declare-datatypes ((LexerInterface!907 0))(
  ( (LexerInterfaceExt!904 (__x!3989 Int)) (Lexer!905) )
))
(declare-fun thiss!22590 () LexerInterface!907)

(declare-fun input!2705 () List!5416)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!4 (LexerInterface!907 List!5417 Rule!1842 List!5416 List!5416 Rule!1842) Unit!9517)

(assert (=> b!548073 (= lt!230298 (lemmaMaxPrefNoSmallerRuleMatches!4 thiss!22590 rules!3103 (rule!1741 token!491) input!2705 lt!230303 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun res!234480 () Bool)

(declare-fun matchR!514 (Regex!1355 List!5416) Bool)

(assert (=> b!548073 (= res!234480 (not (matchR!514 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) input!2705)))))

(declare-fun e!331314 () Bool)

(assert (=> b!548073 (=> (not res!234480) (not e!331314))))

(assert (=> b!548073 e!331314))

(declare-fun b!548074 () Bool)

(declare-fun e!331307 () Bool)

(assert (=> b!548074 (= e!331307 e!331309)))

(declare-fun res!234476 () Bool)

(assert (=> b!548074 (=> res!234476 e!331309)))

(declare-fun lt!230308 () List!5416)

(declare-fun lt!230331 () List!5416)

(assert (=> b!548074 (= res!234476 (or (not (= lt!230327 lt!230291)) (not (= lt!230308 input!2705)) (not (= lt!230308 lt!230331))))))

(declare-fun lt!230325 () Unit!9517)

(declare-fun lt!230296 () BalanceConc!3484)

(declare-fun lemmaSemiInverse!150 (TokenValueInjection!1858 BalanceConc!3484) Unit!9517)

(assert (=> b!548074 (= lt!230325 (lemmaSemiInverse!150 (transformation!1021 (rule!1741 token!491)) lt!230296))))

(declare-fun lt!230329 () Unit!9517)

(declare-fun lt!230312 () BalanceConc!3484)

(assert (=> b!548074 (= lt!230329 (lemmaSemiInverse!150 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230312))))

(declare-fun lt!230301 () Unit!9517)

(declare-fun e!331303 () Unit!9517)

(assert (=> b!548074 (= lt!230301 e!331303)))

(declare-fun c!103203 () Bool)

(assert (=> b!548074 (= c!103203 (< lt!230327 lt!230291))))

(assert (=> b!548074 e!331324))

(declare-fun res!234483 () Bool)

(assert (=> b!548074 (=> (not res!234483) (not e!331324))))

(declare-fun suffix!1342 () List!5416)

(declare-fun lt!230307 () TokenValue!1045)

(declare-fun maxPrefixOneRule!320 (LexerInterface!907 Rule!1842 List!5416) Option!1371)

(assert (=> b!548074 (= res!234483 (= (maxPrefixOneRule!320 thiss!22590 (rule!1741 token!491) lt!230303) (Some!1370 (tuple2!6437 (Token!1779 lt!230307 (rule!1741 token!491) lt!230291 lt!230331) suffix!1342))))))

(declare-fun lt!230294 () Unit!9517)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!72 (LexerInterface!907 List!5417 List!5416 List!5416 List!5416 Rule!1842) Unit!9517)

(assert (=> b!548074 (= lt!230294 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!72 thiss!22590 rules!3103 lt!230331 lt!230303 suffix!1342 (rule!1741 token!491)))))

(declare-fun lt!230324 () TokenValue!1045)

(declare-fun lt!230323 () List!5416)

(assert (=> b!548074 (= (maxPrefixOneRule!320 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))) input!2705) (Some!1370 (tuple2!6437 (Token!1779 lt!230324 (rule!1741 (_1!3482 (v!16191 lt!230326))) lt!230327 lt!230323) (_2!3482 (v!16191 lt!230326)))))))

(declare-fun lt!230319 () Unit!9517)

(assert (=> b!548074 (= lt!230319 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!72 thiss!22590 rules!3103 lt!230323 input!2705 (_2!3482 (v!16191 lt!230326)) (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun e!331310 () Bool)

(assert (=> b!548074 e!331310))

(declare-fun res!234481 () Bool)

(assert (=> b!548074 (=> (not res!234481) (not e!331310))))

(assert (=> b!548074 (= res!234481 (= (value!33965 token!491) lt!230307))))

(declare-fun apply!1296 (TokenValueInjection!1858 BalanceConc!3484) TokenValue!1045)

(assert (=> b!548074 (= lt!230307 (apply!1296 (transformation!1021 (rule!1741 token!491)) lt!230296))))

(declare-fun seqFromList!1219 (List!5416) BalanceConc!3484)

(assert (=> b!548074 (= lt!230296 (seqFromList!1219 lt!230331))))

(declare-fun lt!230304 () List!5416)

(assert (=> b!548074 (= suffix!1342 lt!230304)))

(declare-fun lt!230305 () Unit!9517)

(declare-fun lemmaSamePrefixThenSameSuffix!390 (List!5416 List!5416 List!5416 List!5416 List!5416) Unit!9517)

(assert (=> b!548074 (= lt!230305 (lemmaSamePrefixThenSameSuffix!390 lt!230331 suffix!1342 lt!230331 lt!230304 lt!230303))))

(declare-fun getSuffix!186 (List!5416 List!5416) List!5416)

(assert (=> b!548074 (= lt!230304 (getSuffix!186 lt!230303 lt!230331))))

(declare-fun b!548075 () Bool)

(declare-fun res!234478 () Bool)

(declare-fun e!331312 () Bool)

(assert (=> b!548075 (=> (not res!234478) (not e!331312))))

(declare-fun rulesInvariant!870 (LexerInterface!907 List!5417) Bool)

(assert (=> b!548075 (= res!234478 (rulesInvariant!870 thiss!22590 rules!3103))))

(declare-fun b!548076 () Bool)

(declare-fun res!234498 () Bool)

(assert (=> b!548076 (=> res!234498 e!331309)))

(assert (=> b!548076 (= res!234498 (= (rule!1741 (_1!3482 (v!16191 lt!230326))) (rule!1741 token!491)))))

(declare-fun b!548077 () Bool)

(declare-fun res!234485 () Bool)

(assert (=> b!548077 (=> res!234485 e!331309)))

(assert (=> b!548077 (= res!234485 (not (contains!1263 rules!3103 (rule!1741 token!491))))))

(declare-fun b!548078 () Bool)

(declare-fun res!234484 () Bool)

(assert (=> b!548078 (=> (not res!234484) (not e!331312))))

(declare-fun isEmpty!3902 (List!5416) Bool)

(assert (=> b!548078 (= res!234484 (not (isEmpty!3902 input!2705)))))

(declare-fun b!548079 () Bool)

(declare-fun res!234488 () Bool)

(assert (=> b!548079 (=> (not res!234488) (not e!331312))))

(declare-fun isEmpty!3903 (List!5417) Bool)

(assert (=> b!548079 (= res!234488 (not (isEmpty!3903 rules!3103)))))

(declare-fun b!548080 () Bool)

(declare-fun Unit!9520 () Unit!9517)

(assert (=> b!548080 (= e!331303 Unit!9520)))

(declare-fun b!548081 () Bool)

(declare-fun res!234482 () Bool)

(assert (=> b!548081 (=> (not res!234482) (not e!331310))))

(declare-fun size!4331 (List!5416) Int)

(assert (=> b!548081 (= res!234482 (= (size!4330 token!491) (size!4331 (originalCharacters!1060 token!491))))))

(declare-fun b!548082 () Bool)

(declare-fun e!331327 () Unit!9517)

(declare-fun Unit!9521 () Unit!9517)

(assert (=> b!548082 (= e!331327 Unit!9521)))

(assert (=> b!548082 false))

(declare-fun b!548083 () Bool)

(declare-fun res!234479 () Bool)

(declare-fun e!331321 () Bool)

(assert (=> b!548083 (=> (not res!234479) (not e!331321))))

(assert (=> b!548083 (= res!234479 (= (size!4330 (_1!3482 (v!16191 lt!230326))) (size!4331 (originalCharacters!1060 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun e!331328 () Bool)

(assert (=> b!548084 (= e!331328 (and tp!173774 tp!173770))))

(declare-fun b!548085 () Bool)

(declare-fun e!331326 () Bool)

(declare-fun e!331305 () Bool)

(assert (=> b!548085 (= e!331326 e!331305)))

(declare-fun res!234497 () Bool)

(assert (=> b!548085 (=> (not res!234497) (not e!331305))))

(declare-fun lt!230314 () Option!1371)

(declare-fun isDefined!1183 (Option!1371) Bool)

(assert (=> b!548085 (= res!234497 (isDefined!1183 lt!230314))))

(declare-fun maxPrefix!605 (LexerInterface!907 List!5417 List!5416) Option!1371)

(assert (=> b!548085 (= lt!230314 (maxPrefix!605 thiss!22590 rules!3103 lt!230303))))

(declare-fun ++!1509 (List!5416 List!5416) List!5416)

(assert (=> b!548085 (= lt!230303 (++!1509 input!2705 suffix!1342))))

(declare-fun b!548086 () Bool)

(declare-fun e!331306 () Bool)

(assert (=> b!548086 (= e!331306 (not e!331307))))

(declare-fun res!234491 () Bool)

(assert (=> b!548086 (=> res!234491 e!331307)))

(declare-fun lt!230297 () List!5416)

(declare-fun isPrefix!663 (List!5416 List!5416) Bool)

(assert (=> b!548086 (= res!234491 (not (isPrefix!663 input!2705 lt!230297)))))

(assert (=> b!548086 (isPrefix!663 lt!230331 lt!230297)))

(declare-fun lt!230320 () Unit!9517)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!514 (List!5416 List!5416) Unit!9517)

(assert (=> b!548086 (= lt!230320 (lemmaConcatTwoListThenFirstIsPrefix!514 lt!230331 suffix!1342))))

(assert (=> b!548086 (isPrefix!663 input!2705 lt!230303)))

(declare-fun lt!230318 () Unit!9517)

(assert (=> b!548086 (= lt!230318 (lemmaConcatTwoListThenFirstIsPrefix!514 input!2705 suffix!1342))))

(assert (=> b!548086 e!331321))

(declare-fun res!234495 () Bool)

(assert (=> b!548086 (=> (not res!234495) (not e!331321))))

(assert (=> b!548086 (= res!234495 (= (value!33965 (_1!3482 (v!16191 lt!230326))) lt!230324))))

(assert (=> b!548086 (= lt!230324 (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230312))))

(assert (=> b!548086 (= lt!230312 (seqFromList!1219 lt!230323))))

(declare-fun lt!230300 () Unit!9517)

(declare-fun lemmaInv!169 (TokenValueInjection!1858) Unit!9517)

(assert (=> b!548086 (= lt!230300 (lemmaInv!169 (transformation!1021 (rule!1741 token!491))))))

(declare-fun lt!230293 () Unit!9517)

(assert (=> b!548086 (= lt!230293 (lemmaInv!169 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun ruleValid!241 (LexerInterface!907 Rule!1842) Bool)

(assert (=> b!548086 (ruleValid!241 thiss!22590 (rule!1741 token!491))))

(declare-fun lt!230330 () Unit!9517)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!100 (LexerInterface!907 Rule!1842 List!5417) Unit!9517)

(assert (=> b!548086 (= lt!230330 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!100 thiss!22590 (rule!1741 token!491) rules!3103))))

(assert (=> b!548086 (ruleValid!241 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))))))

(declare-fun lt!230290 () Unit!9517)

(assert (=> b!548086 (= lt!230290 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!100 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))) rules!3103))))

(assert (=> b!548086 (isPrefix!663 input!2705 input!2705)))

(declare-fun lt!230310 () Unit!9517)

(declare-fun lemmaIsPrefixRefl!403 (List!5416 List!5416) Unit!9517)

(assert (=> b!548086 (= lt!230310 (lemmaIsPrefixRefl!403 input!2705 input!2705))))

(declare-fun lt!230309 () List!5416)

(assert (=> b!548086 (= (_2!3482 (v!16191 lt!230326)) lt!230309)))

(declare-fun lt!230321 () Unit!9517)

(assert (=> b!548086 (= lt!230321 (lemmaSamePrefixThenSameSuffix!390 lt!230323 (_2!3482 (v!16191 lt!230326)) lt!230323 lt!230309 input!2705))))

(assert (=> b!548086 (= lt!230309 (getSuffix!186 input!2705 lt!230323))))

(assert (=> b!548086 (isPrefix!663 lt!230323 lt!230308)))

(assert (=> b!548086 (= lt!230308 (++!1509 lt!230323 (_2!3482 (v!16191 lt!230326))))))

(declare-fun lt!230292 () Unit!9517)

(assert (=> b!548086 (= lt!230292 (lemmaConcatTwoListThenFirstIsPrefix!514 lt!230323 (_2!3482 (v!16191 lt!230326))))))

(declare-fun lt!230306 () Unit!9517)

(declare-fun lemmaCharactersSize!100 (Token!1778) Unit!9517)

(assert (=> b!548086 (= lt!230306 (lemmaCharactersSize!100 token!491))))

(declare-fun lt!230299 () Unit!9517)

(assert (=> b!548086 (= lt!230299 (lemmaCharactersSize!100 (_1!3482 (v!16191 lt!230326))))))

(declare-fun lt!230313 () Unit!9517)

(assert (=> b!548086 (= lt!230313 e!331327)))

(declare-fun c!103201 () Bool)

(assert (=> b!548086 (= c!103201 (> lt!230327 lt!230291))))

(assert (=> b!548086 (= lt!230291 (size!4331 lt!230331))))

(assert (=> b!548086 (= lt!230327 (size!4331 lt!230323))))

(declare-fun list!2241 (BalanceConc!3484) List!5416)

(declare-fun charsOf!650 (Token!1778) BalanceConc!3484)

(assert (=> b!548086 (= lt!230323 (list!2241 (charsOf!650 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun lt!230302 () tuple2!6436)

(assert (=> b!548086 (= lt!230326 (Some!1370 lt!230302))))

(assert (=> b!548086 (= lt!230302 (tuple2!6437 (_1!3482 (v!16191 lt!230326)) (_2!3482 (v!16191 lt!230326))))))

(declare-fun lt!230311 () Unit!9517)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!106 (List!5416 List!5416 List!5416 List!5416) Unit!9517)

(assert (=> b!548086 (= lt!230311 (lemmaConcatSameAndSameSizesThenSameLists!106 lt!230331 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!548087 () Bool)

(declare-fun e!331308 () Bool)

(declare-fun e!331311 () Bool)

(assert (=> b!548087 (= e!331308 e!331311)))

(declare-fun res!234501 () Bool)

(assert (=> b!548087 (=> (not res!234501) (not e!331311))))

(get-info :version)

(assert (=> b!548087 (= res!234501 ((_ is Some!1370) lt!230326))))

(assert (=> b!548087 (= lt!230326 (maxPrefix!605 thiss!22590 rules!3103 input!2705))))

(declare-fun b!548088 () Bool)

(declare-fun e!331299 () Bool)

(declare-fun validRegex!452 (Regex!1355) Bool)

(assert (=> b!548088 (= e!331299 (validRegex!452 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun b!548089 () Bool)

(declare-fun res!234477 () Bool)

(assert (=> b!548089 (=> res!234477 e!331309)))

(assert (=> b!548089 (= res!234477 (not (isEmpty!3902 (_2!3482 (v!16191 lt!230326)))))))

(declare-fun b!548090 () Bool)

(declare-fun e!331320 () Bool)

(declare-fun tp_is_empty!3065 () Bool)

(declare-fun tp!173768 () Bool)

(assert (=> b!548090 (= e!331320 (and tp_is_empty!3065 tp!173768))))

(declare-fun res!234499 () Bool)

(assert (=> start!50680 (=> (not res!234499) (not e!331312))))

(assert (=> start!50680 (= res!234499 ((_ is Lexer!905) thiss!22590))))

(assert (=> start!50680 e!331312))

(assert (=> start!50680 e!331320))

(declare-fun e!331313 () Bool)

(assert (=> start!50680 e!331313))

(declare-fun e!331304 () Bool)

(declare-fun inv!6781 (Token!1778) Bool)

(assert (=> start!50680 (and (inv!6781 token!491) e!331304)))

(assert (=> start!50680 true))

(declare-fun e!331316 () Bool)

(assert (=> start!50680 e!331316))

(declare-fun b!548091 () Bool)

(assert (=> b!548091 (= e!331309 e!331299)))

(declare-fun res!234496 () Bool)

(assert (=> b!548091 (=> res!234496 e!331299)))

(declare-fun lt!230328 () Int)

(declare-fun lt!230317 () Int)

(assert (=> b!548091 (= res!234496 (<= lt!230328 lt!230317))))

(declare-fun lt!230322 () Unit!9517)

(assert (=> b!548091 (= lt!230322 e!331301)))

(declare-fun c!103202 () Bool)

(assert (=> b!548091 (= c!103202 (< lt!230328 lt!230317))))

(declare-fun getIndex!22 (List!5417 Rule!1842) Int)

(assert (=> b!548091 (= lt!230317 (getIndex!22 rules!3103 (rule!1741 token!491)))))

(assert (=> b!548091 (= lt!230328 (getIndex!22 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun b!548092 () Bool)

(declare-fun e!331322 () Bool)

(assert (=> b!548092 (= e!331318 e!331322)))

(declare-fun res!234493 () Bool)

(assert (=> b!548092 (=> (not res!234493) (not e!331322))))

(assert (=> b!548092 (= res!234493 (isDefined!1183 lt!230326))))

(declare-fun b!548093 () Bool)

(declare-fun Unit!9522 () Unit!9517)

(assert (=> b!548093 (= e!331301 Unit!9522)))

(declare-fun b!548094 () Bool)

(assert (=> b!548094 (= e!331312 e!331326)))

(declare-fun res!234487 () Bool)

(assert (=> b!548094 (=> (not res!234487) (not e!331326))))

(assert (=> b!548094 (= res!234487 (= lt!230331 input!2705))))

(assert (=> b!548094 (= lt!230331 (list!2241 (charsOf!650 token!491)))))

(declare-fun b!548095 () Bool)

(declare-fun res!234500 () Bool)

(assert (=> b!548095 (=> res!234500 e!331309)))

(assert (=> b!548095 (= res!234500 (or (not (= lt!230323 lt!230331)) (not (= (originalCharacters!1060 (_1!3482 (v!16191 lt!230326))) (originalCharacters!1060 token!491)))))))

(declare-fun e!331319 () Bool)

(declare-fun tp!173767 () Bool)

(declare-fun b!548096 () Bool)

(declare-fun inv!6778 (String!6968) Bool)

(declare-fun inv!6782 (TokenValueInjection!1858) Bool)

(assert (=> b!548096 (= e!331319 (and tp!173767 (inv!6778 (tag!1283 (h!10808 rules!3103))) (inv!6782 (transformation!1021 (h!10808 rules!3103))) e!331328))))

(declare-fun b!548097 () Bool)

(declare-fun res!234494 () Bool)

(assert (=> b!548097 (=> (not res!234494) (not e!331322))))

(declare-fun get!2046 (Option!1371) tuple2!6436)

(assert (=> b!548097 (= res!234494 (= (_1!3482 (get!2046 lt!230326)) (_1!3482 (v!16191 lt!230326))))))

(declare-fun tp!173771 () Bool)

(declare-fun e!331302 () Bool)

(declare-fun e!331325 () Bool)

(declare-fun b!548098 () Bool)

(assert (=> b!548098 (= e!331325 (and tp!173771 (inv!6778 (tag!1283 (rule!1741 token!491))) (inv!6782 (transformation!1021 (rule!1741 token!491))) e!331302))))

(declare-fun b!548099 () Bool)

(declare-fun e!331323 () Bool)

(assert (=> b!548099 (= e!331323 false)))

(declare-fun b!548100 () Bool)

(assert (=> b!548100 (= e!331311 e!331306)))

(declare-fun res!234486 () Bool)

(assert (=> b!548100 (=> (not res!234486) (not e!331306))))

(assert (=> b!548100 (= res!234486 (= lt!230297 lt!230303))))

(assert (=> b!548100 (= lt!230297 (++!1509 lt!230331 suffix!1342))))

(declare-fun b!548101 () Bool)

(assert (=> b!548101 (= e!331305 e!331308)))

(declare-fun res!234502 () Bool)

(assert (=> b!548101 (=> (not res!234502) (not e!331308))))

(declare-fun lt!230295 () tuple2!6436)

(assert (=> b!548101 (= res!234502 (and (= (_1!3482 lt!230295) token!491) (= (_2!3482 lt!230295) suffix!1342)))))

(assert (=> b!548101 (= lt!230295 (get!2046 lt!230314))))

(assert (=> b!548102 (= e!331302 (and tp!173766 tp!173772))))

(declare-fun b!548103 () Bool)

(declare-fun tp!173769 () Bool)

(assert (=> b!548103 (= e!331313 (and e!331319 tp!173769))))

(declare-fun b!548104 () Bool)

(assert (=> b!548104 (= e!331310 (and (= (size!4330 token!491) lt!230291) (= (originalCharacters!1060 token!491) lt!230331) (= (tuple2!6437 token!491 suffix!1342) (tuple2!6437 (Token!1779 lt!230307 (rule!1741 token!491) lt!230291 lt!230331) lt!230304))))))

(declare-fun b!548105 () Bool)

(declare-fun tp!173773 () Bool)

(assert (=> b!548105 (= e!331316 (and tp_is_empty!3065 tp!173773))))

(declare-fun b!548106 () Bool)

(declare-fun Unit!9523 () Unit!9517)

(assert (=> b!548106 (= e!331327 Unit!9523)))

(declare-fun b!548107 () Bool)

(assert (=> b!548107 (= e!331314 false)))

(declare-fun b!548108 () Bool)

(assert (=> b!548108 (= e!331322 (= lt!230309 (_2!3482 (v!16191 lt!230326))))))

(declare-fun b!548109 () Bool)

(declare-fun tp!173765 () Bool)

(declare-fun inv!21 (TokenValue!1045) Bool)

(assert (=> b!548109 (= e!331304 (and (inv!21 (value!33965 token!491)) e!331325 tp!173765))))

(declare-fun b!548110 () Bool)

(assert (=> b!548110 (= e!331321 (and (= (size!4330 (_1!3482 (v!16191 lt!230326))) lt!230327) (= (originalCharacters!1060 (_1!3482 (v!16191 lt!230326))) lt!230323) (= lt!230302 (tuple2!6437 (Token!1779 lt!230324 (rule!1741 (_1!3482 (v!16191 lt!230326))) lt!230327 lt!230323) lt!230309))))))

(declare-fun b!548111 () Bool)

(declare-fun Unit!9524 () Unit!9517)

(assert (=> b!548111 (= e!331303 Unit!9524)))

(declare-fun lt!230316 () Unit!9517)

(assert (=> b!548111 (= lt!230316 (lemmaSemiInverse!150 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230312))))

(declare-fun lt!230315 () Unit!9517)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!26 (LexerInterface!907 List!5417 Rule!1842 List!5416 List!5416 List!5416 Rule!1842) Unit!9517)

(assert (=> b!548111 (= lt!230315 (lemmaMaxPrefixOutputsMaxPrefix!26 thiss!22590 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326))) lt!230323 input!2705 input!2705 (rule!1741 token!491)))))

(declare-fun res!234492 () Bool)

(assert (=> b!548111 (= res!234492 (not (matchR!514 (regex!1021 (rule!1741 token!491)) input!2705)))))

(assert (=> b!548111 (=> (not res!234492) (not e!331323))))

(assert (=> b!548111 e!331323))

(assert (= (and start!50680 res!234499) b!548079))

(assert (= (and b!548079 res!234488) b!548075))

(assert (= (and b!548075 res!234478) b!548078))

(assert (= (and b!548078 res!234484) b!548094))

(assert (= (and b!548094 res!234487) b!548085))

(assert (= (and b!548085 res!234497) b!548101))

(assert (= (and b!548101 res!234502) b!548087))

(assert (= (and b!548087 res!234501) b!548100))

(assert (= (and b!548100 res!234486) b!548086))

(assert (= (and b!548086 c!103201) b!548082))

(assert (= (and b!548086 (not c!103201)) b!548106))

(assert (= (and b!548086 res!234495) b!548083))

(assert (= (and b!548083 res!234479) b!548110))

(assert (= (and b!548086 (not res!234491)) b!548074))

(assert (= (and b!548074 res!234481) b!548081))

(assert (= (and b!548081 res!234482) b!548104))

(assert (= (and b!548074 res!234483) b!548072))

(assert (= (and b!548072 (not res!234489)) b!548092))

(assert (= (and b!548092 res!234493) b!548097))

(assert (= (and b!548097 res!234494) b!548108))

(assert (= (and b!548074 c!103203) b!548111))

(assert (= (and b!548074 (not c!103203)) b!548080))

(assert (= (and b!548111 res!234492) b!548099))

(assert (= (and b!548074 (not res!234476)) b!548089))

(assert (= (and b!548089 (not res!234477)) b!548095))

(assert (= (and b!548095 (not res!234500)) b!548071))

(assert (= (and b!548071 (not res!234490)) b!548077))

(assert (= (and b!548077 (not res!234485)) b!548076))

(assert (= (and b!548076 (not res!234498)) b!548091))

(assert (= (and b!548091 c!103202) b!548073))

(assert (= (and b!548091 (not c!103202)) b!548093))

(assert (= (and b!548073 res!234480) b!548107))

(assert (= (and b!548091 (not res!234496)) b!548088))

(assert (= (and start!50680 ((_ is Cons!5406) suffix!1342)) b!548090))

(assert (= b!548096 b!548084))

(assert (= b!548103 b!548096))

(assert (= (and start!50680 ((_ is Cons!5407) rules!3103)) b!548103))

(assert (= b!548098 b!548102))

(assert (= b!548109 b!548098))

(assert (= start!50680 b!548109))

(assert (= (and start!50680 ((_ is Cons!5406) input!2705)) b!548105))

(declare-fun m!797107 () Bool)

(assert (=> b!548071 m!797107))

(declare-fun m!797109 () Bool)

(assert (=> b!548087 m!797109))

(declare-fun m!797111 () Bool)

(assert (=> b!548097 m!797111))

(declare-fun m!797113 () Bool)

(assert (=> b!548111 m!797113))

(declare-fun m!797115 () Bool)

(assert (=> b!548111 m!797115))

(declare-fun m!797117 () Bool)

(assert (=> b!548111 m!797117))

(declare-fun m!797119 () Bool)

(assert (=> b!548086 m!797119))

(declare-fun m!797121 () Bool)

(assert (=> b!548086 m!797121))

(declare-fun m!797123 () Bool)

(assert (=> b!548086 m!797123))

(declare-fun m!797125 () Bool)

(assert (=> b!548086 m!797125))

(declare-fun m!797127 () Bool)

(assert (=> b!548086 m!797127))

(declare-fun m!797129 () Bool)

(assert (=> b!548086 m!797129))

(declare-fun m!797131 () Bool)

(assert (=> b!548086 m!797131))

(declare-fun m!797133 () Bool)

(assert (=> b!548086 m!797133))

(declare-fun m!797135 () Bool)

(assert (=> b!548086 m!797135))

(declare-fun m!797137 () Bool)

(assert (=> b!548086 m!797137))

(declare-fun m!797139 () Bool)

(assert (=> b!548086 m!797139))

(declare-fun m!797141 () Bool)

(assert (=> b!548086 m!797141))

(declare-fun m!797143 () Bool)

(assert (=> b!548086 m!797143))

(declare-fun m!797145 () Bool)

(assert (=> b!548086 m!797145))

(declare-fun m!797147 () Bool)

(assert (=> b!548086 m!797147))

(declare-fun m!797149 () Bool)

(assert (=> b!548086 m!797149))

(declare-fun m!797151 () Bool)

(assert (=> b!548086 m!797151))

(declare-fun m!797153 () Bool)

(assert (=> b!548086 m!797153))

(declare-fun m!797155 () Bool)

(assert (=> b!548086 m!797155))

(declare-fun m!797157 () Bool)

(assert (=> b!548086 m!797157))

(declare-fun m!797159 () Bool)

(assert (=> b!548086 m!797159))

(assert (=> b!548086 m!797123))

(declare-fun m!797161 () Bool)

(assert (=> b!548086 m!797161))

(declare-fun m!797163 () Bool)

(assert (=> b!548086 m!797163))

(declare-fun m!797165 () Bool)

(assert (=> b!548086 m!797165))

(declare-fun m!797167 () Bool)

(assert (=> b!548086 m!797167))

(declare-fun m!797169 () Bool)

(assert (=> b!548086 m!797169))

(declare-fun m!797171 () Bool)

(assert (=> b!548086 m!797171))

(declare-fun m!797173 () Bool)

(assert (=> b!548092 m!797173))

(declare-fun m!797175 () Bool)

(assert (=> b!548073 m!797175))

(declare-fun m!797177 () Bool)

(assert (=> b!548073 m!797177))

(declare-fun m!797179 () Bool)

(assert (=> b!548081 m!797179))

(declare-fun m!797181 () Bool)

(assert (=> b!548077 m!797181))

(declare-fun m!797183 () Bool)

(assert (=> b!548074 m!797183))

(assert (=> b!548074 m!797113))

(declare-fun m!797185 () Bool)

(assert (=> b!548074 m!797185))

(declare-fun m!797187 () Bool)

(assert (=> b!548074 m!797187))

(declare-fun m!797189 () Bool)

(assert (=> b!548074 m!797189))

(declare-fun m!797191 () Bool)

(assert (=> b!548074 m!797191))

(declare-fun m!797193 () Bool)

(assert (=> b!548074 m!797193))

(declare-fun m!797195 () Bool)

(assert (=> b!548074 m!797195))

(declare-fun m!797197 () Bool)

(assert (=> b!548074 m!797197))

(declare-fun m!797199 () Bool)

(assert (=> b!548074 m!797199))

(declare-fun m!797201 () Bool)

(assert (=> start!50680 m!797201))

(declare-fun m!797203 () Bool)

(assert (=> b!548089 m!797203))

(declare-fun m!797205 () Bool)

(assert (=> b!548091 m!797205))

(declare-fun m!797207 () Bool)

(assert (=> b!548091 m!797207))

(declare-fun m!797209 () Bool)

(assert (=> b!548098 m!797209))

(declare-fun m!797211 () Bool)

(assert (=> b!548098 m!797211))

(declare-fun m!797213 () Bool)

(assert (=> b!548083 m!797213))

(declare-fun m!797215 () Bool)

(assert (=> b!548075 m!797215))

(declare-fun m!797217 () Bool)

(assert (=> b!548085 m!797217))

(declare-fun m!797219 () Bool)

(assert (=> b!548085 m!797219))

(declare-fun m!797221 () Bool)

(assert (=> b!548085 m!797221))

(declare-fun m!797223 () Bool)

(assert (=> b!548100 m!797223))

(declare-fun m!797225 () Bool)

(assert (=> b!548079 m!797225))

(declare-fun m!797227 () Bool)

(assert (=> b!548101 m!797227))

(declare-fun m!797229 () Bool)

(assert (=> b!548078 m!797229))

(declare-fun m!797231 () Bool)

(assert (=> b!548109 m!797231))

(declare-fun m!797233 () Bool)

(assert (=> b!548096 m!797233))

(declare-fun m!797235 () Bool)

(assert (=> b!548096 m!797235))

(declare-fun m!797237 () Bool)

(assert (=> b!548094 m!797237))

(assert (=> b!548094 m!797237))

(declare-fun m!797239 () Bool)

(assert (=> b!548094 m!797239))

(declare-fun m!797241 () Bool)

(assert (=> b!548088 m!797241))

(check-sat (not b!548071) (not b!548074) (not b!548085) (not b!548097) (not b!548109) (not b!548094) tp_is_empty!3065 (not b!548096) (not b!548090) (not b!548087) (not b!548103) (not b!548083) (not b!548081) (not b!548075) (not start!50680) b_and!53527 (not b_next!15275) (not b_next!15273) (not b_next!15277) (not b!548079) b_and!53525 (not b!548078) (not b!548100) (not b!548101) (not b!548098) (not b!548111) (not b!548086) (not b!548088) (not b_next!15279) b_and!53523 (not b!548092) (not b!548089) (not b!548091) (not b!548105) (not b!548073) b_and!53529 (not b!548077))
(check-sat (not b_next!15277) b_and!53525 (not b_next!15279) b_and!53523 b_and!53529 b_and!53527 (not b_next!15275) (not b_next!15273))
(get-model)

(declare-fun d!191770 () Bool)

(assert (=> d!191770 (not (matchR!514 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) input!2705))))

(declare-fun lt!230354 () Unit!9517)

(declare-fun choose!3890 (LexerInterface!907 List!5417 Rule!1842 List!5416 List!5416 Rule!1842) Unit!9517)

(assert (=> d!191770 (= lt!230354 (choose!3890 thiss!22590 rules!3103 (rule!1741 token!491) input!2705 lt!230303 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(assert (=> d!191770 (isPrefix!663 input!2705 lt!230303)))

(assert (=> d!191770 (= (lemmaMaxPrefNoSmallerRuleMatches!4 thiss!22590 rules!3103 (rule!1741 token!491) input!2705 lt!230303 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230354)))

(declare-fun bs!67749 () Bool)

(assert (= bs!67749 d!191770))

(assert (=> bs!67749 m!797177))

(declare-fun m!797307 () Bool)

(assert (=> bs!67749 m!797307))

(assert (=> bs!67749 m!797151))

(assert (=> b!548073 d!191770))

(declare-fun bm!38380 () Bool)

(declare-fun call!38385 () Bool)

(assert (=> bm!38380 (= call!38385 (isEmpty!3902 input!2705))))

(declare-fun b!548298 () Bool)

(declare-fun e!331440 () Bool)

(declare-fun nullable!357 (Regex!1355) Bool)

(assert (=> b!548298 (= e!331440 (nullable!357 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun b!548299 () Bool)

(declare-fun e!331437 () Bool)

(declare-fun head!1194 (List!5416) C!3632)

(assert (=> b!548299 (= e!331437 (not (= (head!1194 input!2705) (c!103204 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))))

(declare-fun b!548300 () Bool)

(declare-fun e!331434 () Bool)

(declare-fun lt!230371 () Bool)

(assert (=> b!548300 (= e!331434 (not lt!230371))))

(declare-fun b!548301 () Bool)

(declare-fun res!234612 () Bool)

(declare-fun e!331436 () Bool)

(assert (=> b!548301 (=> (not res!234612) (not e!331436))))

(assert (=> b!548301 (= res!234612 (not call!38385))))

(declare-fun b!548302 () Bool)

(assert (=> b!548302 (= e!331436 (= (head!1194 input!2705) (c!103204 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))

(declare-fun b!548303 () Bool)

(declare-fun e!331435 () Bool)

(assert (=> b!548303 (= e!331435 (= lt!230371 call!38385))))

(declare-fun b!548305 () Bool)

(declare-fun res!234611 () Bool)

(assert (=> b!548305 (=> res!234611 e!331437)))

(declare-fun tail!723 (List!5416) List!5416)

(assert (=> b!548305 (= res!234611 (not (isEmpty!3902 (tail!723 input!2705))))))

(declare-fun b!548306 () Bool)

(declare-fun e!331438 () Bool)

(declare-fun e!331439 () Bool)

(assert (=> b!548306 (= e!331438 e!331439)))

(declare-fun res!234609 () Bool)

(assert (=> b!548306 (=> (not res!234609) (not e!331439))))

(assert (=> b!548306 (= res!234609 (not lt!230371))))

(declare-fun b!548307 () Bool)

(declare-fun res!234616 () Bool)

(assert (=> b!548307 (=> res!234616 e!331438)))

(assert (=> b!548307 (= res!234616 e!331436)))

(declare-fun res!234613 () Bool)

(assert (=> b!548307 (=> (not res!234613) (not e!331436))))

(assert (=> b!548307 (= res!234613 lt!230371)))

(declare-fun b!548308 () Bool)

(declare-fun res!234615 () Bool)

(assert (=> b!548308 (=> res!234615 e!331438)))

(assert (=> b!548308 (= res!234615 (not ((_ is ElementMatch!1355) (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))

(assert (=> b!548308 (= e!331434 e!331438)))

(declare-fun b!548309 () Bool)

(assert (=> b!548309 (= e!331435 e!331434)))

(declare-fun c!103252 () Bool)

(assert (=> b!548309 (= c!103252 ((_ is EmptyLang!1355) (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun b!548310 () Bool)

(assert (=> b!548310 (= e!331439 e!331437)))

(declare-fun res!234614 () Bool)

(assert (=> b!548310 (=> res!234614 e!331437)))

(assert (=> b!548310 (= res!234614 call!38385)))

(declare-fun b!548311 () Bool)

(declare-fun derivativeStep!273 (Regex!1355 C!3632) Regex!1355)

(assert (=> b!548311 (= e!331440 (matchR!514 (derivativeStep!273 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) (head!1194 input!2705)) (tail!723 input!2705)))))

(declare-fun b!548304 () Bool)

(declare-fun res!234610 () Bool)

(assert (=> b!548304 (=> (not res!234610) (not e!331436))))

(assert (=> b!548304 (= res!234610 (isEmpty!3902 (tail!723 input!2705)))))

(declare-fun d!191782 () Bool)

(assert (=> d!191782 e!331435))

(declare-fun c!103250 () Bool)

(assert (=> d!191782 (= c!103250 ((_ is EmptyExpr!1355) (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(assert (=> d!191782 (= lt!230371 e!331440)))

(declare-fun c!103251 () Bool)

(assert (=> d!191782 (= c!103251 (isEmpty!3902 input!2705))))

(assert (=> d!191782 (validRegex!452 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(assert (=> d!191782 (= (matchR!514 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) input!2705) lt!230371)))

(assert (= (and d!191782 c!103251) b!548298))

(assert (= (and d!191782 (not c!103251)) b!548311))

(assert (= (and d!191782 c!103250) b!548303))

(assert (= (and d!191782 (not c!103250)) b!548309))

(assert (= (and b!548309 c!103252) b!548300))

(assert (= (and b!548309 (not c!103252)) b!548308))

(assert (= (and b!548308 (not res!234615)) b!548307))

(assert (= (and b!548307 res!234613) b!548301))

(assert (= (and b!548301 res!234612) b!548304))

(assert (= (and b!548304 res!234610) b!548302))

(assert (= (and b!548307 (not res!234616)) b!548306))

(assert (= (and b!548306 res!234609) b!548310))

(assert (= (and b!548310 (not res!234614)) b!548305))

(assert (= (and b!548305 (not res!234611)) b!548299))

(assert (= (or b!548303 b!548301 b!548310) bm!38380))

(declare-fun m!797339 () Bool)

(assert (=> b!548311 m!797339))

(assert (=> b!548311 m!797339))

(declare-fun m!797341 () Bool)

(assert (=> b!548311 m!797341))

(declare-fun m!797343 () Bool)

(assert (=> b!548311 m!797343))

(assert (=> b!548311 m!797341))

(assert (=> b!548311 m!797343))

(declare-fun m!797345 () Bool)

(assert (=> b!548311 m!797345))

(assert (=> b!548304 m!797343))

(assert (=> b!548304 m!797343))

(declare-fun m!797347 () Bool)

(assert (=> b!548304 m!797347))

(assert (=> d!191782 m!797229))

(assert (=> d!191782 m!797241))

(assert (=> b!548302 m!797339))

(assert (=> bm!38380 m!797229))

(assert (=> b!548299 m!797339))

(declare-fun m!797349 () Bool)

(assert (=> b!548298 m!797349))

(assert (=> b!548305 m!797343))

(assert (=> b!548305 m!797343))

(assert (=> b!548305 m!797347))

(assert (=> b!548073 d!191782))

(declare-fun d!191798 () Bool)

(declare-fun list!2242 (Conc!1738) List!5416)

(assert (=> d!191798 (= (list!2241 (charsOf!650 token!491)) (list!2242 (c!103205 (charsOf!650 token!491))))))

(declare-fun bs!67752 () Bool)

(assert (= bs!67752 d!191798))

(declare-fun m!797367 () Bool)

(assert (=> bs!67752 m!797367))

(assert (=> b!548094 d!191798))

(declare-fun d!191806 () Bool)

(declare-fun lt!230383 () BalanceConc!3484)

(assert (=> d!191806 (= (list!2241 lt!230383) (originalCharacters!1060 token!491))))

(declare-fun dynLambda!3157 (Int TokenValue!1045) BalanceConc!3484)

(assert (=> d!191806 (= lt!230383 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (value!33965 token!491)))))

(assert (=> d!191806 (= (charsOf!650 token!491) lt!230383)))

(declare-fun b_lambda!21081 () Bool)

(assert (=> (not b_lambda!21081) (not d!191806)))

(declare-fun t!74880 () Bool)

(declare-fun tb!48031 () Bool)

(assert (=> (and b!548084 (= (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toChars!1727 (transformation!1021 (rule!1741 token!491)))) t!74880) tb!48031))

(declare-fun b!548342 () Bool)

(declare-fun e!331456 () Bool)

(declare-fun tp!173780 () Bool)

(declare-fun inv!6785 (Conc!1738) Bool)

(assert (=> b!548342 (= e!331456 (and (inv!6785 (c!103205 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (value!33965 token!491)))) tp!173780))))

(declare-fun result!53728 () Bool)

(declare-fun inv!6786 (BalanceConc!3484) Bool)

(assert (=> tb!48031 (= result!53728 (and (inv!6786 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (value!33965 token!491))) e!331456))))

(assert (= tb!48031 b!548342))

(declare-fun m!797409 () Bool)

(assert (=> b!548342 m!797409))

(declare-fun m!797411 () Bool)

(assert (=> tb!48031 m!797411))

(assert (=> d!191806 t!74880))

(declare-fun b_and!53535 () Bool)

(assert (= b_and!53525 (and (=> t!74880 result!53728) b_and!53535)))

(declare-fun t!74882 () Bool)

(declare-fun tb!48033 () Bool)

(assert (=> (and b!548102 (= (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toChars!1727 (transformation!1021 (rule!1741 token!491)))) t!74882) tb!48033))

(declare-fun result!53732 () Bool)

(assert (= result!53732 result!53728))

(assert (=> d!191806 t!74882))

(declare-fun b_and!53537 () Bool)

(assert (= b_and!53529 (and (=> t!74882 result!53732) b_and!53537)))

(declare-fun m!797413 () Bool)

(assert (=> d!191806 m!797413))

(declare-fun m!797415 () Bool)

(assert (=> d!191806 m!797415))

(assert (=> b!548094 d!191806))

(declare-fun d!191812 () Bool)

(declare-fun lt!230386 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!945 (List!5417) (InoxSet Rule!1842))

(assert (=> d!191812 (= lt!230386 (select (content!945 rules!3103) (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun e!331461 () Bool)

(assert (=> d!191812 (= lt!230386 e!331461)))

(declare-fun res!234639 () Bool)

(assert (=> d!191812 (=> (not res!234639) (not e!331461))))

(assert (=> d!191812 (= res!234639 ((_ is Cons!5407) rules!3103))))

(assert (=> d!191812 (= (contains!1263 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230386)))

(declare-fun b!548347 () Bool)

(declare-fun e!331462 () Bool)

(assert (=> b!548347 (= e!331461 e!331462)))

(declare-fun res!234638 () Bool)

(assert (=> b!548347 (=> res!234638 e!331462)))

(assert (=> b!548347 (= res!234638 (= (h!10808 rules!3103) (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun b!548348 () Bool)

(assert (=> b!548348 (= e!331462 (contains!1263 (t!74874 rules!3103) (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(assert (= (and d!191812 res!234639) b!548347))

(assert (= (and b!548347 (not res!234638)) b!548348))

(declare-fun m!797417 () Bool)

(assert (=> d!191812 m!797417))

(declare-fun m!797419 () Bool)

(assert (=> d!191812 m!797419))

(declare-fun m!797421 () Bool)

(assert (=> b!548348 m!797421))

(assert (=> b!548071 d!191812))

(declare-fun d!191814 () Bool)

(declare-fun isEmpty!3905 (Option!1371) Bool)

(assert (=> d!191814 (= (isDefined!1183 lt!230326) (not (isEmpty!3905 lt!230326)))))

(declare-fun bs!67753 () Bool)

(assert (= bs!67753 d!191814))

(declare-fun m!797423 () Bool)

(assert (=> bs!67753 m!797423))

(assert (=> b!548092 d!191814))

(declare-fun b!548360 () Bool)

(declare-fun e!331468 () Int)

(assert (=> b!548360 (= e!331468 (- 1))))

(declare-fun d!191816 () Bool)

(declare-fun lt!230389 () Int)

(assert (=> d!191816 (>= lt!230389 0)))

(declare-fun e!331469 () Int)

(assert (=> d!191816 (= lt!230389 e!331469)))

(declare-fun c!103260 () Bool)

(assert (=> d!191816 (= c!103260 (and ((_ is Cons!5407) rules!3103) (= (h!10808 rules!3103) (rule!1741 token!491))))))

(assert (=> d!191816 (contains!1263 rules!3103 (rule!1741 token!491))))

(assert (=> d!191816 (= (getIndex!22 rules!3103 (rule!1741 token!491)) lt!230389)))

(declare-fun b!548359 () Bool)

(assert (=> b!548359 (= e!331468 (+ 1 (getIndex!22 (t!74874 rules!3103) (rule!1741 token!491))))))

(declare-fun b!548358 () Bool)

(assert (=> b!548358 (= e!331469 e!331468)))

(declare-fun c!103261 () Bool)

(assert (=> b!548358 (= c!103261 (and ((_ is Cons!5407) rules!3103) (not (= (h!10808 rules!3103) (rule!1741 token!491)))))))

(declare-fun b!548357 () Bool)

(assert (=> b!548357 (= e!331469 0)))

(assert (= (and d!191816 c!103260) b!548357))

(assert (= (and d!191816 (not c!103260)) b!548358))

(assert (= (and b!548358 c!103261) b!548359))

(assert (= (and b!548358 (not c!103261)) b!548360))

(assert (=> d!191816 m!797181))

(declare-fun m!797425 () Bool)

(assert (=> b!548359 m!797425))

(assert (=> b!548091 d!191816))

(declare-fun b!548364 () Bool)

(declare-fun e!331470 () Int)

(assert (=> b!548364 (= e!331470 (- 1))))

(declare-fun d!191818 () Bool)

(declare-fun lt!230390 () Int)

(assert (=> d!191818 (>= lt!230390 0)))

(declare-fun e!331471 () Int)

(assert (=> d!191818 (= lt!230390 e!331471)))

(declare-fun c!103262 () Bool)

(assert (=> d!191818 (= c!103262 (and ((_ is Cons!5407) rules!3103) (= (h!10808 rules!3103) (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(assert (=> d!191818 (contains!1263 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326))))))

(assert (=> d!191818 (= (getIndex!22 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230390)))

(declare-fun b!548363 () Bool)

(assert (=> b!548363 (= e!331470 (+ 1 (getIndex!22 (t!74874 rules!3103) (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun b!548362 () Bool)

(assert (=> b!548362 (= e!331471 e!331470)))

(declare-fun c!103263 () Bool)

(assert (=> b!548362 (= c!103263 (and ((_ is Cons!5407) rules!3103) (not (= (h!10808 rules!3103) (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))

(declare-fun b!548361 () Bool)

(assert (=> b!548361 (= e!331471 0)))

(assert (= (and d!191818 c!103262) b!548361))

(assert (= (and d!191818 (not c!103262)) b!548362))

(assert (= (and b!548362 c!103263) b!548363))

(assert (= (and b!548362 (not c!103263)) b!548364))

(assert (=> d!191818 m!797107))

(declare-fun m!797427 () Bool)

(assert (=> b!548363 m!797427))

(assert (=> b!548091 d!191818))

(declare-fun d!191820 () Bool)

(assert (=> d!191820 (= (isEmpty!3902 input!2705) ((_ is Nil!5406) input!2705))))

(assert (=> b!548078 d!191820))

(declare-fun d!191822 () Bool)

(assert (=> d!191822 (= (isEmpty!3903 rules!3103) ((_ is Nil!5407) rules!3103))))

(assert (=> b!548079 d!191822))

(declare-fun b!548376 () Bool)

(declare-fun lt!230393 () List!5416)

(declare-fun e!331476 () Bool)

(assert (=> b!548376 (= e!331476 (or (not (= suffix!1342 Nil!5406)) (= lt!230393 lt!230331)))))

(declare-fun b!548374 () Bool)

(declare-fun e!331477 () List!5416)

(assert (=> b!548374 (= e!331477 (Cons!5406 (h!10807 lt!230331) (++!1509 (t!74873 lt!230331) suffix!1342)))))

(declare-fun d!191824 () Bool)

(assert (=> d!191824 e!331476))

(declare-fun res!234644 () Bool)

(assert (=> d!191824 (=> (not res!234644) (not e!331476))))

(declare-fun content!946 (List!5416) (InoxSet C!3632))

(assert (=> d!191824 (= res!234644 (= (content!946 lt!230393) ((_ map or) (content!946 lt!230331) (content!946 suffix!1342))))))

(assert (=> d!191824 (= lt!230393 e!331477)))

(declare-fun c!103266 () Bool)

(assert (=> d!191824 (= c!103266 ((_ is Nil!5406) lt!230331))))

(assert (=> d!191824 (= (++!1509 lt!230331 suffix!1342) lt!230393)))

(declare-fun b!548373 () Bool)

(assert (=> b!548373 (= e!331477 suffix!1342)))

(declare-fun b!548375 () Bool)

(declare-fun res!234645 () Bool)

(assert (=> b!548375 (=> (not res!234645) (not e!331476))))

(assert (=> b!548375 (= res!234645 (= (size!4331 lt!230393) (+ (size!4331 lt!230331) (size!4331 suffix!1342))))))

(assert (= (and d!191824 c!103266) b!548373))

(assert (= (and d!191824 (not c!103266)) b!548374))

(assert (= (and d!191824 res!234644) b!548375))

(assert (= (and b!548375 res!234645) b!548376))

(declare-fun m!797429 () Bool)

(assert (=> b!548374 m!797429))

(declare-fun m!797431 () Bool)

(assert (=> d!191824 m!797431))

(declare-fun m!797433 () Bool)

(assert (=> d!191824 m!797433))

(declare-fun m!797435 () Bool)

(assert (=> d!191824 m!797435))

(declare-fun m!797437 () Bool)

(assert (=> b!548375 m!797437))

(assert (=> b!548375 m!797155))

(declare-fun m!797439 () Bool)

(assert (=> b!548375 m!797439))

(assert (=> b!548100 d!191824))

(declare-fun d!191826 () Bool)

(declare-fun lt!230394 () Bool)

(assert (=> d!191826 (= lt!230394 (select (content!945 rules!3103) (rule!1741 token!491)))))

(declare-fun e!331478 () Bool)

(assert (=> d!191826 (= lt!230394 e!331478)))

(declare-fun res!234647 () Bool)

(assert (=> d!191826 (=> (not res!234647) (not e!331478))))

(assert (=> d!191826 (= res!234647 ((_ is Cons!5407) rules!3103))))

(assert (=> d!191826 (= (contains!1263 rules!3103 (rule!1741 token!491)) lt!230394)))

(declare-fun b!548377 () Bool)

(declare-fun e!331479 () Bool)

(assert (=> b!548377 (= e!331478 e!331479)))

(declare-fun res!234646 () Bool)

(assert (=> b!548377 (=> res!234646 e!331479)))

(assert (=> b!548377 (= res!234646 (= (h!10808 rules!3103) (rule!1741 token!491)))))

(declare-fun b!548378 () Bool)

(assert (=> b!548378 (= e!331479 (contains!1263 (t!74874 rules!3103) (rule!1741 token!491)))))

(assert (= (and d!191826 res!234647) b!548377))

(assert (= (and b!548377 (not res!234646)) b!548378))

(assert (=> d!191826 m!797417))

(declare-fun m!797441 () Bool)

(assert (=> d!191826 m!797441))

(declare-fun m!797443 () Bool)

(assert (=> b!548378 m!797443))

(assert (=> b!548077 d!191826))

(declare-fun d!191828 () Bool)

(assert (=> d!191828 (= (inv!6778 (tag!1283 (rule!1741 token!491))) (= (mod (str.len (value!33939 (tag!1283 (rule!1741 token!491)))) 2) 0))))

(assert (=> b!548098 d!191828))

(declare-fun d!191830 () Bool)

(declare-fun res!234650 () Bool)

(declare-fun e!331482 () Bool)

(assert (=> d!191830 (=> (not res!234650) (not e!331482))))

(declare-fun semiInverseModEq!395 (Int Int) Bool)

(assert (=> d!191830 (= res!234650 (semiInverseModEq!395 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toValue!1868 (transformation!1021 (rule!1741 token!491)))))))

(assert (=> d!191830 (= (inv!6782 (transformation!1021 (rule!1741 token!491))) e!331482)))

(declare-fun b!548381 () Bool)

(declare-fun equivClasses!378 (Int Int) Bool)

(assert (=> b!548381 (= e!331482 (equivClasses!378 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toValue!1868 (transformation!1021 (rule!1741 token!491)))))))

(assert (= (and d!191830 res!234650) b!548381))

(declare-fun m!797445 () Bool)

(assert (=> d!191830 m!797445))

(declare-fun m!797447 () Bool)

(assert (=> b!548381 m!797447))

(assert (=> b!548098 d!191830))

(declare-fun d!191832 () Bool)

(assert (=> d!191832 (= (get!2046 lt!230326) (v!16191 lt!230326))))

(assert (=> b!548097 d!191832))

(declare-fun d!191834 () Bool)

(declare-fun dynLambda!3158 (Int BalanceConc!3484) TokenValue!1045)

(assert (=> d!191834 (= (apply!1296 (transformation!1021 (rule!1741 token!491)) lt!230296) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 token!491))) lt!230296))))

(declare-fun b_lambda!21083 () Bool)

(assert (=> (not b_lambda!21083) (not d!191834)))

(declare-fun t!74884 () Bool)

(declare-fun tb!48035 () Bool)

(assert (=> (and b!548084 (= (toValue!1868 (transformation!1021 (h!10808 rules!3103))) (toValue!1868 (transformation!1021 (rule!1741 token!491)))) t!74884) tb!48035))

(declare-fun result!53734 () Bool)

(assert (=> tb!48035 (= result!53734 (inv!21 (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 token!491))) lt!230296)))))

(declare-fun m!797449 () Bool)

(assert (=> tb!48035 m!797449))

(assert (=> d!191834 t!74884))

(declare-fun b_and!53539 () Bool)

(assert (= b_and!53523 (and (=> t!74884 result!53734) b_and!53539)))

(declare-fun t!74886 () Bool)

(declare-fun tb!48037 () Bool)

(assert (=> (and b!548102 (= (toValue!1868 (transformation!1021 (rule!1741 token!491))) (toValue!1868 (transformation!1021 (rule!1741 token!491)))) t!74886) tb!48037))

(declare-fun result!53738 () Bool)

(assert (= result!53738 result!53734))

(assert (=> d!191834 t!74886))

(declare-fun b_and!53541 () Bool)

(assert (= b_and!53527 (and (=> t!74886 result!53738) b_and!53541)))

(declare-fun m!797451 () Bool)

(assert (=> d!191834 m!797451))

(assert (=> b!548074 d!191834))

(declare-fun b!548402 () Bool)

(declare-fun e!331495 () Bool)

(declare-fun lt!230405 () Option!1371)

(assert (=> b!548402 (= e!331495 (= (size!4330 (_1!3482 (get!2046 lt!230405))) (size!4331 (originalCharacters!1060 (_1!3482 (get!2046 lt!230405))))))))

(declare-fun b!548403 () Bool)

(declare-fun res!234666 () Bool)

(assert (=> b!548403 (=> (not res!234666) (not e!331495))))

(assert (=> b!548403 (= res!234666 (< (size!4331 (_2!3482 (get!2046 lt!230405))) (size!4331 input!2705)))))

(declare-fun b!548404 () Bool)

(declare-fun e!331497 () Bool)

(assert (=> b!548404 (= e!331497 e!331495)))

(declare-fun res!234665 () Bool)

(assert (=> b!548404 (=> (not res!234665) (not e!331495))))

(assert (=> b!548404 (= res!234665 (matchR!514 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230405))))))))

(declare-fun b!548405 () Bool)

(declare-fun e!331494 () Option!1371)

(assert (=> b!548405 (= e!331494 None!1370)))

(declare-fun b!548406 () Bool)

(declare-fun res!234668 () Bool)

(assert (=> b!548406 (=> (not res!234668) (not e!331495))))

(assert (=> b!548406 (= res!234668 (= (rule!1741 (_1!3482 (get!2046 lt!230405))) (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun d!191836 () Bool)

(assert (=> d!191836 e!331497))

(declare-fun res!234670 () Bool)

(assert (=> d!191836 (=> res!234670 e!331497)))

(assert (=> d!191836 (= res!234670 (isEmpty!3905 lt!230405))))

(assert (=> d!191836 (= lt!230405 e!331494)))

(declare-fun c!103269 () Bool)

(declare-datatypes ((tuple2!6438 0))(
  ( (tuple2!6439 (_1!3483 List!5416) (_2!3483 List!5416)) )
))
(declare-fun lt!230406 () tuple2!6438)

(assert (=> d!191836 (= c!103269 (isEmpty!3902 (_1!3483 lt!230406)))))

(declare-fun findLongestMatch!119 (Regex!1355 List!5416) tuple2!6438)

(assert (=> d!191836 (= lt!230406 (findLongestMatch!119 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) input!2705))))

(assert (=> d!191836 (ruleValid!241 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))))))

(assert (=> d!191836 (= (maxPrefixOneRule!320 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))) input!2705) lt!230405)))

(declare-fun b!548407 () Bool)

(declare-fun e!331496 () Bool)

(declare-fun findLongestMatchInner!140 (Regex!1355 List!5416 Int List!5416 List!5416 Int) tuple2!6438)

(assert (=> b!548407 (= e!331496 (matchR!514 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) (_1!3483 (findLongestMatchInner!140 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) Nil!5406 (size!4331 Nil!5406) input!2705 input!2705 (size!4331 input!2705)))))))

(declare-fun b!548408 () Bool)

(declare-fun res!234669 () Bool)

(assert (=> b!548408 (=> (not res!234669) (not e!331495))))

(assert (=> b!548408 (= res!234669 (= (++!1509 (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230405)))) (_2!3482 (get!2046 lt!230405))) input!2705))))

(declare-fun b!548409 () Bool)

(declare-fun res!234667 () Bool)

(assert (=> b!548409 (=> (not res!234667) (not e!331495))))

(assert (=> b!548409 (= res!234667 (= (value!33965 (_1!3482 (get!2046 lt!230405))) (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (get!2046 lt!230405)))) (seqFromList!1219 (originalCharacters!1060 (_1!3482 (get!2046 lt!230405)))))))))

(declare-fun b!548410 () Bool)

(declare-fun size!4332 (BalanceConc!3484) Int)

(assert (=> b!548410 (= e!331494 (Some!1370 (tuple2!6437 (Token!1779 (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) (seqFromList!1219 (_1!3483 lt!230406))) (rule!1741 (_1!3482 (v!16191 lt!230326))) (size!4332 (seqFromList!1219 (_1!3483 lt!230406))) (_1!3483 lt!230406)) (_2!3483 lt!230406))))))

(declare-fun lt!230409 () Unit!9517)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!124 (Regex!1355 List!5416) Unit!9517)

(assert (=> b!548410 (= lt!230409 (longestMatchIsAcceptedByMatchOrIsEmpty!124 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) input!2705))))

(declare-fun res!234671 () Bool)

(assert (=> b!548410 (= res!234671 (isEmpty!3902 (_1!3483 (findLongestMatchInner!140 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) Nil!5406 (size!4331 Nil!5406) input!2705 input!2705 (size!4331 input!2705)))))))

(assert (=> b!548410 (=> res!234671 e!331496)))

(assert (=> b!548410 e!331496))

(declare-fun lt!230408 () Unit!9517)

(assert (=> b!548410 (= lt!230408 lt!230409)))

(declare-fun lt!230407 () Unit!9517)

(assert (=> b!548410 (= lt!230407 (lemmaSemiInverse!150 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) (seqFromList!1219 (_1!3483 lt!230406))))))

(assert (= (and d!191836 c!103269) b!548405))

(assert (= (and d!191836 (not c!103269)) b!548410))

(assert (= (and b!548410 (not res!234671)) b!548407))

(assert (= (and d!191836 (not res!234670)) b!548404))

(assert (= (and b!548404 res!234665) b!548408))

(assert (= (and b!548408 res!234669) b!548403))

(assert (= (and b!548403 res!234666) b!548406))

(assert (= (and b!548406 res!234668) b!548409))

(assert (= (and b!548409 res!234667) b!548402))

(declare-fun m!797453 () Bool)

(assert (=> b!548403 m!797453))

(declare-fun m!797455 () Bool)

(assert (=> b!548403 m!797455))

(declare-fun m!797457 () Bool)

(assert (=> b!548403 m!797457))

(assert (=> b!548408 m!797453))

(declare-fun m!797459 () Bool)

(assert (=> b!548408 m!797459))

(assert (=> b!548408 m!797459))

(declare-fun m!797461 () Bool)

(assert (=> b!548408 m!797461))

(assert (=> b!548408 m!797461))

(declare-fun m!797463 () Bool)

(assert (=> b!548408 m!797463))

(declare-fun m!797465 () Bool)

(assert (=> b!548407 m!797465))

(assert (=> b!548407 m!797457))

(assert (=> b!548407 m!797465))

(assert (=> b!548407 m!797457))

(declare-fun m!797467 () Bool)

(assert (=> b!548407 m!797467))

(declare-fun m!797469 () Bool)

(assert (=> b!548407 m!797469))

(assert (=> b!548406 m!797453))

(declare-fun m!797471 () Bool)

(assert (=> d!191836 m!797471))

(declare-fun m!797473 () Bool)

(assert (=> d!191836 m!797473))

(declare-fun m!797475 () Bool)

(assert (=> d!191836 m!797475))

(assert (=> d!191836 m!797143))

(declare-fun m!797477 () Bool)

(assert (=> b!548410 m!797477))

(declare-fun m!797479 () Bool)

(assert (=> b!548410 m!797479))

(declare-fun m!797481 () Bool)

(assert (=> b!548410 m!797481))

(declare-fun m!797483 () Bool)

(assert (=> b!548410 m!797483))

(assert (=> b!548410 m!797477))

(declare-fun m!797485 () Bool)

(assert (=> b!548410 m!797485))

(assert (=> b!548410 m!797457))

(assert (=> b!548410 m!797465))

(assert (=> b!548410 m!797477))

(declare-fun m!797487 () Bool)

(assert (=> b!548410 m!797487))

(assert (=> b!548410 m!797465))

(assert (=> b!548410 m!797457))

(assert (=> b!548410 m!797467))

(assert (=> b!548410 m!797477))

(assert (=> b!548404 m!797453))

(assert (=> b!548404 m!797459))

(assert (=> b!548404 m!797459))

(assert (=> b!548404 m!797461))

(assert (=> b!548404 m!797461))

(declare-fun m!797489 () Bool)

(assert (=> b!548404 m!797489))

(assert (=> b!548409 m!797453))

(declare-fun m!797491 () Bool)

(assert (=> b!548409 m!797491))

(assert (=> b!548409 m!797491))

(declare-fun m!797493 () Bool)

(assert (=> b!548409 m!797493))

(assert (=> b!548402 m!797453))

(declare-fun m!797495 () Bool)

(assert (=> b!548402 m!797495))

(assert (=> b!548074 d!191836))

(declare-fun b!548570 () Bool)

(declare-fun e!331593 () Bool)

(assert (=> b!548570 (= e!331593 true)))

(declare-fun d!191838 () Bool)

(assert (=> d!191838 e!331593))

(assert (= d!191838 b!548570))

(declare-fun order!4495 () Int)

(declare-fun order!4493 () Int)

(declare-fun lambda!15508 () Int)

(declare-fun dynLambda!3159 (Int Int) Int)

(declare-fun dynLambda!3160 (Int Int) Int)

(assert (=> b!548570 (< (dynLambda!3159 order!4493 (toValue!1868 (transformation!1021 (rule!1741 token!491)))) (dynLambda!3160 order!4495 lambda!15508))))

(declare-fun order!4497 () Int)

(declare-fun dynLambda!3161 (Int Int) Int)

(assert (=> b!548570 (< (dynLambda!3161 order!4497 (toChars!1727 (transformation!1021 (rule!1741 token!491)))) (dynLambda!3160 order!4495 lambda!15508))))

(assert (=> d!191838 (= (list!2241 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 token!491))) lt!230296))) (list!2241 lt!230296))))

(declare-fun lt!230480 () Unit!9517)

(declare-fun ForallOf!90 (Int BalanceConc!3484) Unit!9517)

(assert (=> d!191838 (= lt!230480 (ForallOf!90 lambda!15508 lt!230296))))

(assert (=> d!191838 (= (lemmaSemiInverse!150 (transformation!1021 (rule!1741 token!491)) lt!230296) lt!230480)))

(declare-fun b_lambda!21111 () Bool)

(assert (=> (not b_lambda!21111) (not d!191838)))

(declare-fun tb!48071 () Bool)

(declare-fun t!74921 () Bool)

(assert (=> (and b!548084 (= (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toChars!1727 (transformation!1021 (rule!1741 token!491)))) t!74921) tb!48071))

(declare-fun e!331594 () Bool)

(declare-fun b!548571 () Bool)

(declare-fun tp!173821 () Bool)

(assert (=> b!548571 (= e!331594 (and (inv!6785 (c!103205 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 token!491))) lt!230296)))) tp!173821))))

(declare-fun result!53780 () Bool)

(assert (=> tb!48071 (= result!53780 (and (inv!6786 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 token!491))) lt!230296))) e!331594))))

(assert (= tb!48071 b!548571))

(declare-fun m!797743 () Bool)

(assert (=> b!548571 m!797743))

(declare-fun m!797745 () Bool)

(assert (=> tb!48071 m!797745))

(assert (=> d!191838 t!74921))

(declare-fun b_and!53579 () Bool)

(assert (= b_and!53535 (and (=> t!74921 result!53780) b_and!53579)))

(declare-fun t!74923 () Bool)

(declare-fun tb!48073 () Bool)

(assert (=> (and b!548102 (= (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toChars!1727 (transformation!1021 (rule!1741 token!491)))) t!74923) tb!48073))

(declare-fun result!53782 () Bool)

(assert (= result!53782 result!53780))

(assert (=> d!191838 t!74923))

(declare-fun b_and!53581 () Bool)

(assert (= b_and!53537 (and (=> t!74923 result!53782) b_and!53581)))

(declare-fun b_lambda!21113 () Bool)

(assert (=> (not b_lambda!21113) (not d!191838)))

(assert (=> d!191838 t!74884))

(declare-fun b_and!53583 () Bool)

(assert (= b_and!53539 (and (=> t!74884 result!53734) b_and!53583)))

(assert (=> d!191838 t!74886))

(declare-fun b_and!53585 () Bool)

(assert (= b_and!53541 (and (=> t!74886 result!53738) b_and!53585)))

(declare-fun m!797747 () Bool)

(assert (=> d!191838 m!797747))

(declare-fun m!797749 () Bool)

(assert (=> d!191838 m!797749))

(declare-fun m!797751 () Bool)

(assert (=> d!191838 m!797751))

(assert (=> d!191838 m!797451))

(declare-fun m!797753 () Bool)

(assert (=> d!191838 m!797753))

(assert (=> d!191838 m!797451))

(assert (=> d!191838 m!797747))

(assert (=> b!548074 d!191838))

(declare-fun b!548572 () Bool)

(declare-fun e!331596 () Bool)

(declare-fun lt!230481 () Option!1371)

(assert (=> b!548572 (= e!331596 (= (size!4330 (_1!3482 (get!2046 lt!230481))) (size!4331 (originalCharacters!1060 (_1!3482 (get!2046 lt!230481))))))))

(declare-fun b!548573 () Bool)

(declare-fun res!234751 () Bool)

(assert (=> b!548573 (=> (not res!234751) (not e!331596))))

(assert (=> b!548573 (= res!234751 (< (size!4331 (_2!3482 (get!2046 lt!230481))) (size!4331 lt!230303)))))

(declare-fun b!548574 () Bool)

(declare-fun e!331598 () Bool)

(assert (=> b!548574 (= e!331598 e!331596)))

(declare-fun res!234750 () Bool)

(assert (=> b!548574 (=> (not res!234750) (not e!331596))))

(assert (=> b!548574 (= res!234750 (matchR!514 (regex!1021 (rule!1741 token!491)) (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230481))))))))

(declare-fun b!548575 () Bool)

(declare-fun e!331595 () Option!1371)

(assert (=> b!548575 (= e!331595 None!1370)))

(declare-fun b!548576 () Bool)

(declare-fun res!234753 () Bool)

(assert (=> b!548576 (=> (not res!234753) (not e!331596))))

(assert (=> b!548576 (= res!234753 (= (rule!1741 (_1!3482 (get!2046 lt!230481))) (rule!1741 token!491)))))

(declare-fun d!191926 () Bool)

(assert (=> d!191926 e!331598))

(declare-fun res!234755 () Bool)

(assert (=> d!191926 (=> res!234755 e!331598)))

(assert (=> d!191926 (= res!234755 (isEmpty!3905 lt!230481))))

(assert (=> d!191926 (= lt!230481 e!331595)))

(declare-fun c!103286 () Bool)

(declare-fun lt!230482 () tuple2!6438)

(assert (=> d!191926 (= c!103286 (isEmpty!3902 (_1!3483 lt!230482)))))

(assert (=> d!191926 (= lt!230482 (findLongestMatch!119 (regex!1021 (rule!1741 token!491)) lt!230303))))

(assert (=> d!191926 (ruleValid!241 thiss!22590 (rule!1741 token!491))))

(assert (=> d!191926 (= (maxPrefixOneRule!320 thiss!22590 (rule!1741 token!491) lt!230303) lt!230481)))

(declare-fun b!548577 () Bool)

(declare-fun e!331597 () Bool)

(assert (=> b!548577 (= e!331597 (matchR!514 (regex!1021 (rule!1741 token!491)) (_1!3483 (findLongestMatchInner!140 (regex!1021 (rule!1741 token!491)) Nil!5406 (size!4331 Nil!5406) lt!230303 lt!230303 (size!4331 lt!230303)))))))

(declare-fun b!548578 () Bool)

(declare-fun res!234754 () Bool)

(assert (=> b!548578 (=> (not res!234754) (not e!331596))))

(assert (=> b!548578 (= res!234754 (= (++!1509 (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230481)))) (_2!3482 (get!2046 lt!230481))) lt!230303))))

(declare-fun b!548579 () Bool)

(declare-fun res!234752 () Bool)

(assert (=> b!548579 (=> (not res!234752) (not e!331596))))

(assert (=> b!548579 (= res!234752 (= (value!33965 (_1!3482 (get!2046 lt!230481))) (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (get!2046 lt!230481)))) (seqFromList!1219 (originalCharacters!1060 (_1!3482 (get!2046 lt!230481)))))))))

(declare-fun b!548580 () Bool)

(assert (=> b!548580 (= e!331595 (Some!1370 (tuple2!6437 (Token!1779 (apply!1296 (transformation!1021 (rule!1741 token!491)) (seqFromList!1219 (_1!3483 lt!230482))) (rule!1741 token!491) (size!4332 (seqFromList!1219 (_1!3483 lt!230482))) (_1!3483 lt!230482)) (_2!3483 lt!230482))))))

(declare-fun lt!230485 () Unit!9517)

(assert (=> b!548580 (= lt!230485 (longestMatchIsAcceptedByMatchOrIsEmpty!124 (regex!1021 (rule!1741 token!491)) lt!230303))))

(declare-fun res!234756 () Bool)

(assert (=> b!548580 (= res!234756 (isEmpty!3902 (_1!3483 (findLongestMatchInner!140 (regex!1021 (rule!1741 token!491)) Nil!5406 (size!4331 Nil!5406) lt!230303 lt!230303 (size!4331 lt!230303)))))))

(assert (=> b!548580 (=> res!234756 e!331597)))

(assert (=> b!548580 e!331597))

(declare-fun lt!230484 () Unit!9517)

(assert (=> b!548580 (= lt!230484 lt!230485)))

(declare-fun lt!230483 () Unit!9517)

(assert (=> b!548580 (= lt!230483 (lemmaSemiInverse!150 (transformation!1021 (rule!1741 token!491)) (seqFromList!1219 (_1!3483 lt!230482))))))

(assert (= (and d!191926 c!103286) b!548575))

(assert (= (and d!191926 (not c!103286)) b!548580))

(assert (= (and b!548580 (not res!234756)) b!548577))

(assert (= (and d!191926 (not res!234755)) b!548574))

(assert (= (and b!548574 res!234750) b!548578))

(assert (= (and b!548578 res!234754) b!548573))

(assert (= (and b!548573 res!234751) b!548576))

(assert (= (and b!548576 res!234753) b!548579))

(assert (= (and b!548579 res!234752) b!548572))

(declare-fun m!797755 () Bool)

(assert (=> b!548573 m!797755))

(declare-fun m!797757 () Bool)

(assert (=> b!548573 m!797757))

(declare-fun m!797759 () Bool)

(assert (=> b!548573 m!797759))

(assert (=> b!548578 m!797755))

(declare-fun m!797761 () Bool)

(assert (=> b!548578 m!797761))

(assert (=> b!548578 m!797761))

(declare-fun m!797763 () Bool)

(assert (=> b!548578 m!797763))

(assert (=> b!548578 m!797763))

(declare-fun m!797765 () Bool)

(assert (=> b!548578 m!797765))

(assert (=> b!548577 m!797465))

(assert (=> b!548577 m!797759))

(assert (=> b!548577 m!797465))

(assert (=> b!548577 m!797759))

(declare-fun m!797767 () Bool)

(assert (=> b!548577 m!797767))

(declare-fun m!797769 () Bool)

(assert (=> b!548577 m!797769))

(assert (=> b!548576 m!797755))

(declare-fun m!797771 () Bool)

(assert (=> d!191926 m!797771))

(declare-fun m!797773 () Bool)

(assert (=> d!191926 m!797773))

(declare-fun m!797775 () Bool)

(assert (=> d!191926 m!797775))

(assert (=> d!191926 m!797121))

(declare-fun m!797777 () Bool)

(assert (=> b!548580 m!797777))

(declare-fun m!797779 () Bool)

(assert (=> b!548580 m!797779))

(declare-fun m!797781 () Bool)

(assert (=> b!548580 m!797781))

(declare-fun m!797783 () Bool)

(assert (=> b!548580 m!797783))

(assert (=> b!548580 m!797777))

(declare-fun m!797785 () Bool)

(assert (=> b!548580 m!797785))

(assert (=> b!548580 m!797759))

(assert (=> b!548580 m!797465))

(assert (=> b!548580 m!797777))

(declare-fun m!797787 () Bool)

(assert (=> b!548580 m!797787))

(assert (=> b!548580 m!797465))

(assert (=> b!548580 m!797759))

(assert (=> b!548580 m!797767))

(assert (=> b!548580 m!797777))

(assert (=> b!548574 m!797755))

(assert (=> b!548574 m!797761))

(assert (=> b!548574 m!797761))

(assert (=> b!548574 m!797763))

(assert (=> b!548574 m!797763))

(declare-fun m!797789 () Bool)

(assert (=> b!548574 m!797789))

(assert (=> b!548579 m!797755))

(declare-fun m!797791 () Bool)

(assert (=> b!548579 m!797791))

(assert (=> b!548579 m!797791))

(declare-fun m!797793 () Bool)

(assert (=> b!548579 m!797793))

(assert (=> b!548572 m!797755))

(declare-fun m!797795 () Bool)

(assert (=> b!548572 m!797795))

(assert (=> b!548074 d!191926))

(declare-fun d!191928 () Bool)

(assert (=> d!191928 (= suffix!1342 lt!230304)))

(declare-fun lt!230488 () Unit!9517)

(declare-fun choose!3897 (List!5416 List!5416 List!5416 List!5416 List!5416) Unit!9517)

(assert (=> d!191928 (= lt!230488 (choose!3897 lt!230331 suffix!1342 lt!230331 lt!230304 lt!230303))))

(assert (=> d!191928 (isPrefix!663 lt!230331 lt!230303)))

(assert (=> d!191928 (= (lemmaSamePrefixThenSameSuffix!390 lt!230331 suffix!1342 lt!230331 lt!230304 lt!230303) lt!230488)))

(declare-fun bs!67773 () Bool)

(assert (= bs!67773 d!191928))

(declare-fun m!797797 () Bool)

(assert (=> bs!67773 m!797797))

(declare-fun m!797799 () Bool)

(assert (=> bs!67773 m!797799))

(assert (=> b!548074 d!191928))

(declare-fun bs!67774 () Bool)

(declare-fun d!191930 () Bool)

(assert (= bs!67774 (and d!191930 d!191838)))

(declare-fun lambda!15509 () Int)

(assert (=> bs!67774 (= (and (= (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (toChars!1727 (transformation!1021 (rule!1741 token!491)))) (= (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (toValue!1868 (transformation!1021 (rule!1741 token!491))))) (= lambda!15509 lambda!15508))))

(declare-fun b!548581 () Bool)

(declare-fun e!331599 () Bool)

(assert (=> b!548581 (= e!331599 true)))

(assert (=> d!191930 e!331599))

(assert (= d!191930 b!548581))

(assert (=> b!548581 (< (dynLambda!3159 order!4493 (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) (dynLambda!3160 order!4495 lambda!15509))))

(assert (=> b!548581 (< (dynLambda!3161 order!4497 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) (dynLambda!3160 order!4495 lambda!15509))))

(assert (=> d!191930 (= (list!2241 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) lt!230312))) (list!2241 lt!230312))))

(declare-fun lt!230489 () Unit!9517)

(assert (=> d!191930 (= lt!230489 (ForallOf!90 lambda!15509 lt!230312))))

(assert (=> d!191930 (= (lemmaSemiInverse!150 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230312) lt!230489)))

(declare-fun b_lambda!21115 () Bool)

(assert (=> (not b_lambda!21115) (not d!191930)))

(declare-fun t!74925 () Bool)

(declare-fun tb!48075 () Bool)

(assert (=> (and b!548084 (= (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74925) tb!48075))

(declare-fun b!548582 () Bool)

(declare-fun tp!173822 () Bool)

(declare-fun e!331600 () Bool)

(assert (=> b!548582 (= e!331600 (and (inv!6785 (c!103205 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) lt!230312)))) tp!173822))))

(declare-fun result!53784 () Bool)

(assert (=> tb!48075 (= result!53784 (and (inv!6786 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) lt!230312))) e!331600))))

(assert (= tb!48075 b!548582))

(declare-fun m!797801 () Bool)

(assert (=> b!548582 m!797801))

(declare-fun m!797803 () Bool)

(assert (=> tb!48075 m!797803))

(assert (=> d!191930 t!74925))

(declare-fun b_and!53587 () Bool)

(assert (= b_and!53579 (and (=> t!74925 result!53784) b_and!53587)))

(declare-fun tb!48077 () Bool)

(declare-fun t!74927 () Bool)

(assert (=> (and b!548102 (= (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74927) tb!48077))

(declare-fun result!53786 () Bool)

(assert (= result!53786 result!53784))

(assert (=> d!191930 t!74927))

(declare-fun b_and!53589 () Bool)

(assert (= b_and!53581 (and (=> t!74927 result!53786) b_and!53589)))

(declare-fun b_lambda!21117 () Bool)

(assert (=> (not b_lambda!21117) (not d!191930)))

(declare-fun tb!48079 () Bool)

(declare-fun t!74929 () Bool)

(assert (=> (and b!548084 (= (toValue!1868 (transformation!1021 (h!10808 rules!3103))) (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74929) tb!48079))

(declare-fun result!53788 () Bool)

(assert (=> tb!48079 (= result!53788 (inv!21 (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) lt!230312)))))

(declare-fun m!797805 () Bool)

(assert (=> tb!48079 m!797805))

(assert (=> d!191930 t!74929))

(declare-fun b_and!53591 () Bool)

(assert (= b_and!53583 (and (=> t!74929 result!53788) b_and!53591)))

(declare-fun t!74931 () Bool)

(declare-fun tb!48081 () Bool)

(assert (=> (and b!548102 (= (toValue!1868 (transformation!1021 (rule!1741 token!491))) (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74931) tb!48081))

(declare-fun result!53790 () Bool)

(assert (= result!53790 result!53788))

(assert (=> d!191930 t!74931))

(declare-fun b_and!53593 () Bool)

(assert (= b_and!53585 (and (=> t!74931 result!53790) b_and!53593)))

(declare-fun m!797807 () Bool)

(assert (=> d!191930 m!797807))

(declare-fun m!797809 () Bool)

(assert (=> d!191930 m!797809))

(declare-fun m!797811 () Bool)

(assert (=> d!191930 m!797811))

(declare-fun m!797813 () Bool)

(assert (=> d!191930 m!797813))

(declare-fun m!797815 () Bool)

(assert (=> d!191930 m!797815))

(assert (=> d!191930 m!797813))

(assert (=> d!191930 m!797807))

(assert (=> b!548074 d!191930))

(declare-fun d!191932 () Bool)

(declare-fun lt!230492 () List!5416)

(assert (=> d!191932 (= (++!1509 lt!230331 lt!230492) lt!230303)))

(declare-fun e!331604 () List!5416)

(assert (=> d!191932 (= lt!230492 e!331604)))

(declare-fun c!103289 () Bool)

(assert (=> d!191932 (= c!103289 ((_ is Cons!5406) lt!230331))))

(assert (=> d!191932 (>= (size!4331 lt!230303) (size!4331 lt!230331))))

(assert (=> d!191932 (= (getSuffix!186 lt!230303 lt!230331) lt!230492)))

(declare-fun b!548587 () Bool)

(assert (=> b!548587 (= e!331604 (getSuffix!186 (tail!723 lt!230303) (t!74873 lt!230331)))))

(declare-fun b!548588 () Bool)

(assert (=> b!548588 (= e!331604 lt!230303)))

(assert (= (and d!191932 c!103289) b!548587))

(assert (= (and d!191932 (not c!103289)) b!548588))

(declare-fun m!797817 () Bool)

(assert (=> d!191932 m!797817))

(assert (=> d!191932 m!797759))

(assert (=> d!191932 m!797155))

(declare-fun m!797819 () Bool)

(assert (=> b!548587 m!797819))

(assert (=> b!548587 m!797819))

(declare-fun m!797821 () Bool)

(assert (=> b!548587 m!797821))

(assert (=> b!548074 d!191932))

(declare-fun d!191934 () Bool)

(declare-fun fromListB!531 (List!5416) BalanceConc!3484)

(assert (=> d!191934 (= (seqFromList!1219 lt!230331) (fromListB!531 lt!230331))))

(declare-fun bs!67775 () Bool)

(assert (= bs!67775 d!191934))

(declare-fun m!797823 () Bool)

(assert (=> bs!67775 m!797823))

(assert (=> b!548074 d!191934))

(declare-fun d!191936 () Bool)

(assert (=> d!191936 (= (maxPrefixOneRule!320 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))) input!2705) (Some!1370 (tuple2!6437 (Token!1779 (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) (seqFromList!1219 lt!230323)) (rule!1741 (_1!3482 (v!16191 lt!230326))) (size!4331 lt!230323) lt!230323) (_2!3482 (v!16191 lt!230326)))))))

(declare-fun lt!230495 () Unit!9517)

(declare-fun choose!3898 (LexerInterface!907 List!5417 List!5416 List!5416 List!5416 Rule!1842) Unit!9517)

(assert (=> d!191936 (= lt!230495 (choose!3898 thiss!22590 rules!3103 lt!230323 input!2705 (_2!3482 (v!16191 lt!230326)) (rule!1741 (_1!3482 (v!16191 lt!230326)))))))

(assert (=> d!191936 (not (isEmpty!3903 rules!3103))))

(assert (=> d!191936 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!72 thiss!22590 rules!3103 lt!230323 input!2705 (_2!3482 (v!16191 lt!230326)) (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230495)))

(declare-fun bs!67776 () Bool)

(assert (= bs!67776 d!191936))

(assert (=> bs!67776 m!797225))

(assert (=> bs!67776 m!797127))

(assert (=> bs!67776 m!797119))

(declare-fun m!797825 () Bool)

(assert (=> bs!67776 m!797825))

(assert (=> bs!67776 m!797127))

(declare-fun m!797827 () Bool)

(assert (=> bs!67776 m!797827))

(assert (=> bs!67776 m!797183))

(assert (=> b!548074 d!191936))

(declare-fun d!191938 () Bool)

(assert (=> d!191938 (= (maxPrefixOneRule!320 thiss!22590 (rule!1741 token!491) lt!230303) (Some!1370 (tuple2!6437 (Token!1779 (apply!1296 (transformation!1021 (rule!1741 token!491)) (seqFromList!1219 lt!230331)) (rule!1741 token!491) (size!4331 lt!230331) lt!230331) suffix!1342)))))

(declare-fun lt!230496 () Unit!9517)

(assert (=> d!191938 (= lt!230496 (choose!3898 thiss!22590 rules!3103 lt!230331 lt!230303 suffix!1342 (rule!1741 token!491)))))

(assert (=> d!191938 (not (isEmpty!3903 rules!3103))))

(assert (=> d!191938 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!72 thiss!22590 rules!3103 lt!230331 lt!230303 suffix!1342 (rule!1741 token!491)) lt!230496)))

(declare-fun bs!67777 () Bool)

(assert (= bs!67777 d!191938))

(assert (=> bs!67777 m!797225))

(assert (=> bs!67777 m!797197))

(assert (=> bs!67777 m!797155))

(declare-fun m!797829 () Bool)

(assert (=> bs!67777 m!797829))

(assert (=> bs!67777 m!797197))

(declare-fun m!797831 () Bool)

(assert (=> bs!67777 m!797831))

(assert (=> bs!67777 m!797191))

(assert (=> b!548074 d!191938))

(declare-fun d!191940 () Bool)

(declare-fun res!234759 () Bool)

(declare-fun e!331607 () Bool)

(assert (=> d!191940 (=> (not res!234759) (not e!331607))))

(declare-fun rulesValid!360 (LexerInterface!907 List!5417) Bool)

(assert (=> d!191940 (= res!234759 (rulesValid!360 thiss!22590 rules!3103))))

(assert (=> d!191940 (= (rulesInvariant!870 thiss!22590 rules!3103) e!331607)))

(declare-fun b!548591 () Bool)

(declare-datatypes ((List!5419 0))(
  ( (Nil!5409) (Cons!5409 (h!10810 String!6968) (t!74948 List!5419)) )
))
(declare-fun noDuplicateTag!360 (LexerInterface!907 List!5417 List!5419) Bool)

(assert (=> b!548591 (= e!331607 (noDuplicateTag!360 thiss!22590 rules!3103 Nil!5409))))

(assert (= (and d!191940 res!234759) b!548591))

(declare-fun m!797833 () Bool)

(assert (=> d!191940 m!797833))

(declare-fun m!797835 () Bool)

(assert (=> b!548591 m!797835))

(assert (=> b!548075 d!191940))

(declare-fun d!191942 () Bool)

(assert (=> d!191942 (= (inv!6778 (tag!1283 (h!10808 rules!3103))) (= (mod (str.len (value!33939 (tag!1283 (h!10808 rules!3103)))) 2) 0))))

(assert (=> b!548096 d!191942))

(declare-fun d!191944 () Bool)

(declare-fun res!234760 () Bool)

(declare-fun e!331608 () Bool)

(assert (=> d!191944 (=> (not res!234760) (not e!331608))))

(assert (=> d!191944 (= res!234760 (semiInverseModEq!395 (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toValue!1868 (transformation!1021 (h!10808 rules!3103)))))))

(assert (=> d!191944 (= (inv!6782 (transformation!1021 (h!10808 rules!3103))) e!331608)))

(declare-fun b!548592 () Bool)

(assert (=> b!548592 (= e!331608 (equivClasses!378 (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toValue!1868 (transformation!1021 (h!10808 rules!3103)))))))

(assert (= (and d!191944 res!234760) b!548592))

(declare-fun m!797837 () Bool)

(assert (=> d!191944 m!797837))

(declare-fun m!797839 () Bool)

(assert (=> b!548592 m!797839))

(assert (=> b!548096 d!191944))

(declare-fun d!191946 () Bool)

(declare-fun lt!230499 () Int)

(assert (=> d!191946 (>= lt!230499 0)))

(declare-fun e!331611 () Int)

(assert (=> d!191946 (= lt!230499 e!331611)))

(declare-fun c!103292 () Bool)

(assert (=> d!191946 (= c!103292 ((_ is Nil!5406) (originalCharacters!1060 (_1!3482 (v!16191 lt!230326)))))))

(assert (=> d!191946 (= (size!4331 (originalCharacters!1060 (_1!3482 (v!16191 lt!230326)))) lt!230499)))

(declare-fun b!548597 () Bool)

(assert (=> b!548597 (= e!331611 0)))

(declare-fun b!548598 () Bool)

(assert (=> b!548598 (= e!331611 (+ 1 (size!4331 (t!74873 (originalCharacters!1060 (_1!3482 (v!16191 lt!230326)))))))))

(assert (= (and d!191946 c!103292) b!548597))

(assert (= (and d!191946 (not c!103292)) b!548598))

(declare-fun m!797841 () Bool)

(assert (=> b!548598 m!797841))

(assert (=> b!548083 d!191946))

(declare-fun d!191948 () Bool)

(declare-fun lt!230500 () Int)

(assert (=> d!191948 (>= lt!230500 0)))

(declare-fun e!331612 () Int)

(assert (=> d!191948 (= lt!230500 e!331612)))

(declare-fun c!103293 () Bool)

(assert (=> d!191948 (= c!103293 ((_ is Nil!5406) (originalCharacters!1060 token!491)))))

(assert (=> d!191948 (= (size!4331 (originalCharacters!1060 token!491)) lt!230500)))

(declare-fun b!548599 () Bool)

(assert (=> b!548599 (= e!331612 0)))

(declare-fun b!548600 () Bool)

(assert (=> b!548600 (= e!331612 (+ 1 (size!4331 (t!74873 (originalCharacters!1060 token!491)))))))

(assert (= (and d!191948 c!103293) b!548599))

(assert (= (and d!191948 (not c!103293)) b!548600))

(declare-fun m!797843 () Bool)

(assert (=> b!548600 m!797843))

(assert (=> b!548081 d!191948))

(declare-fun d!191950 () Bool)

(assert (=> d!191950 (= (get!2046 lt!230314) (v!16191 lt!230314))))

(assert (=> b!548101 d!191950))

(declare-fun d!191952 () Bool)

(assert (=> d!191952 (= (isEmpty!3902 (_2!3482 (v!16191 lt!230326))) ((_ is Nil!5406) (_2!3482 (v!16191 lt!230326))))))

(assert (=> b!548089 d!191952))

(assert (=> b!548111 d!191930))

(declare-fun d!191954 () Bool)

(assert (=> d!191954 (not (matchR!514 (regex!1021 (rule!1741 token!491)) input!2705))))

(declare-fun lt!230503 () Unit!9517)

(declare-fun choose!3899 (LexerInterface!907 List!5417 Rule!1842 List!5416 List!5416 List!5416 Rule!1842) Unit!9517)

(assert (=> d!191954 (= lt!230503 (choose!3899 thiss!22590 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326))) lt!230323 input!2705 input!2705 (rule!1741 token!491)))))

(assert (=> d!191954 (isPrefix!663 lt!230323 input!2705)))

(assert (=> d!191954 (= (lemmaMaxPrefixOutputsMaxPrefix!26 thiss!22590 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326))) lt!230323 input!2705 input!2705 (rule!1741 token!491)) lt!230503)))

(declare-fun bs!67778 () Bool)

(assert (= bs!67778 d!191954))

(assert (=> bs!67778 m!797117))

(declare-fun m!797845 () Bool)

(assert (=> bs!67778 m!797845))

(declare-fun m!797847 () Bool)

(assert (=> bs!67778 m!797847))

(assert (=> b!548111 d!191954))

(declare-fun bm!38383 () Bool)

(declare-fun call!38388 () Bool)

(assert (=> bm!38383 (= call!38388 (isEmpty!3902 input!2705))))

(declare-fun b!548601 () Bool)

(declare-fun e!331619 () Bool)

(assert (=> b!548601 (= e!331619 (nullable!357 (regex!1021 (rule!1741 token!491))))))

(declare-fun b!548602 () Bool)

(declare-fun e!331616 () Bool)

(assert (=> b!548602 (= e!331616 (not (= (head!1194 input!2705) (c!103204 (regex!1021 (rule!1741 token!491))))))))

(declare-fun b!548603 () Bool)

(declare-fun e!331613 () Bool)

(declare-fun lt!230504 () Bool)

(assert (=> b!548603 (= e!331613 (not lt!230504))))

(declare-fun b!548604 () Bool)

(declare-fun res!234764 () Bool)

(declare-fun e!331615 () Bool)

(assert (=> b!548604 (=> (not res!234764) (not e!331615))))

(assert (=> b!548604 (= res!234764 (not call!38388))))

(declare-fun b!548605 () Bool)

(assert (=> b!548605 (= e!331615 (= (head!1194 input!2705) (c!103204 (regex!1021 (rule!1741 token!491)))))))

(declare-fun b!548606 () Bool)

(declare-fun e!331614 () Bool)

(assert (=> b!548606 (= e!331614 (= lt!230504 call!38388))))

(declare-fun b!548608 () Bool)

(declare-fun res!234763 () Bool)

(assert (=> b!548608 (=> res!234763 e!331616)))

(assert (=> b!548608 (= res!234763 (not (isEmpty!3902 (tail!723 input!2705))))))

(declare-fun b!548609 () Bool)

(declare-fun e!331617 () Bool)

(declare-fun e!331618 () Bool)

(assert (=> b!548609 (= e!331617 e!331618)))

(declare-fun res!234761 () Bool)

(assert (=> b!548609 (=> (not res!234761) (not e!331618))))

(assert (=> b!548609 (= res!234761 (not lt!230504))))

(declare-fun b!548610 () Bool)

(declare-fun res!234768 () Bool)

(assert (=> b!548610 (=> res!234768 e!331617)))

(assert (=> b!548610 (= res!234768 e!331615)))

(declare-fun res!234765 () Bool)

(assert (=> b!548610 (=> (not res!234765) (not e!331615))))

(assert (=> b!548610 (= res!234765 lt!230504)))

(declare-fun b!548611 () Bool)

(declare-fun res!234767 () Bool)

(assert (=> b!548611 (=> res!234767 e!331617)))

(assert (=> b!548611 (= res!234767 (not ((_ is ElementMatch!1355) (regex!1021 (rule!1741 token!491)))))))

(assert (=> b!548611 (= e!331613 e!331617)))

(declare-fun b!548612 () Bool)

(assert (=> b!548612 (= e!331614 e!331613)))

(declare-fun c!103296 () Bool)

(assert (=> b!548612 (= c!103296 ((_ is EmptyLang!1355) (regex!1021 (rule!1741 token!491))))))

(declare-fun b!548613 () Bool)

(assert (=> b!548613 (= e!331618 e!331616)))

(declare-fun res!234766 () Bool)

(assert (=> b!548613 (=> res!234766 e!331616)))

(assert (=> b!548613 (= res!234766 call!38388)))

(declare-fun b!548614 () Bool)

(assert (=> b!548614 (= e!331619 (matchR!514 (derivativeStep!273 (regex!1021 (rule!1741 token!491)) (head!1194 input!2705)) (tail!723 input!2705)))))

(declare-fun b!548607 () Bool)

(declare-fun res!234762 () Bool)

(assert (=> b!548607 (=> (not res!234762) (not e!331615))))

(assert (=> b!548607 (= res!234762 (isEmpty!3902 (tail!723 input!2705)))))

(declare-fun d!191956 () Bool)

(assert (=> d!191956 e!331614))

(declare-fun c!103294 () Bool)

(assert (=> d!191956 (= c!103294 ((_ is EmptyExpr!1355) (regex!1021 (rule!1741 token!491))))))

(assert (=> d!191956 (= lt!230504 e!331619)))

(declare-fun c!103295 () Bool)

(assert (=> d!191956 (= c!103295 (isEmpty!3902 input!2705))))

(assert (=> d!191956 (validRegex!452 (regex!1021 (rule!1741 token!491)))))

(assert (=> d!191956 (= (matchR!514 (regex!1021 (rule!1741 token!491)) input!2705) lt!230504)))

(assert (= (and d!191956 c!103295) b!548601))

(assert (= (and d!191956 (not c!103295)) b!548614))

(assert (= (and d!191956 c!103294) b!548606))

(assert (= (and d!191956 (not c!103294)) b!548612))

(assert (= (and b!548612 c!103296) b!548603))

(assert (= (and b!548612 (not c!103296)) b!548611))

(assert (= (and b!548611 (not res!234767)) b!548610))

(assert (= (and b!548610 res!234765) b!548604))

(assert (= (and b!548604 res!234764) b!548607))

(assert (= (and b!548607 res!234762) b!548605))

(assert (= (and b!548610 (not res!234768)) b!548609))

(assert (= (and b!548609 res!234761) b!548613))

(assert (= (and b!548613 (not res!234766)) b!548608))

(assert (= (and b!548608 (not res!234763)) b!548602))

(assert (= (or b!548606 b!548604 b!548613) bm!38383))

(assert (=> b!548614 m!797339))

(assert (=> b!548614 m!797339))

(declare-fun m!797849 () Bool)

(assert (=> b!548614 m!797849))

(assert (=> b!548614 m!797343))

(assert (=> b!548614 m!797849))

(assert (=> b!548614 m!797343))

(declare-fun m!797851 () Bool)

(assert (=> b!548614 m!797851))

(assert (=> b!548607 m!797343))

(assert (=> b!548607 m!797343))

(assert (=> b!548607 m!797347))

(assert (=> d!191956 m!797229))

(declare-fun m!797853 () Bool)

(assert (=> d!191956 m!797853))

(assert (=> b!548605 m!797339))

(assert (=> bm!38383 m!797229))

(assert (=> b!548602 m!797339))

(declare-fun m!797855 () Bool)

(assert (=> b!548601 m!797855))

(assert (=> b!548608 m!797343))

(assert (=> b!548608 m!797343))

(assert (=> b!548608 m!797347))

(assert (=> b!548111 d!191956))

(declare-fun d!191958 () Bool)

(declare-fun res!234773 () Bool)

(declare-fun e!331622 () Bool)

(assert (=> d!191958 (=> (not res!234773) (not e!331622))))

(assert (=> d!191958 (= res!234773 (not (isEmpty!3902 (originalCharacters!1060 token!491))))))

(assert (=> d!191958 (= (inv!6781 token!491) e!331622)))

(declare-fun b!548619 () Bool)

(declare-fun res!234774 () Bool)

(assert (=> b!548619 (=> (not res!234774) (not e!331622))))

(assert (=> b!548619 (= res!234774 (= (originalCharacters!1060 token!491) (list!2241 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (value!33965 token!491)))))))

(declare-fun b!548620 () Bool)

(assert (=> b!548620 (= e!331622 (= (size!4330 token!491) (size!4331 (originalCharacters!1060 token!491))))))

(assert (= (and d!191958 res!234773) b!548619))

(assert (= (and b!548619 res!234774) b!548620))

(declare-fun b_lambda!21119 () Bool)

(assert (=> (not b_lambda!21119) (not b!548619)))

(assert (=> b!548619 t!74880))

(declare-fun b_and!53595 () Bool)

(assert (= b_and!53587 (and (=> t!74880 result!53728) b_and!53595)))

(assert (=> b!548619 t!74882))

(declare-fun b_and!53597 () Bool)

(assert (= b_and!53589 (and (=> t!74882 result!53732) b_and!53597)))

(declare-fun m!797857 () Bool)

(assert (=> d!191958 m!797857))

(assert (=> b!548619 m!797415))

(assert (=> b!548619 m!797415))

(declare-fun m!797859 () Bool)

(assert (=> b!548619 m!797859))

(assert (=> b!548620 m!797179))

(assert (=> start!50680 d!191958))

(declare-fun b!548631 () Bool)

(declare-fun e!331629 () Bool)

(declare-fun inv!15 (TokenValue!1045) Bool)

(assert (=> b!548631 (= e!331629 (inv!15 (value!33965 token!491)))))

(declare-fun b!548632 () Bool)

(declare-fun e!331631 () Bool)

(declare-fun e!331630 () Bool)

(assert (=> b!548632 (= e!331631 e!331630)))

(declare-fun c!103301 () Bool)

(assert (=> b!548632 (= c!103301 ((_ is IntegerValue!3136) (value!33965 token!491)))))

(declare-fun b!548633 () Bool)

(declare-fun res!234777 () Bool)

(assert (=> b!548633 (=> res!234777 e!331629)))

(assert (=> b!548633 (= res!234777 (not ((_ is IntegerValue!3137) (value!33965 token!491))))))

(assert (=> b!548633 (= e!331630 e!331629)))

(declare-fun b!548634 () Bool)

(declare-fun inv!17 (TokenValue!1045) Bool)

(assert (=> b!548634 (= e!331630 (inv!17 (value!33965 token!491)))))

(declare-fun d!191960 () Bool)

(declare-fun c!103302 () Bool)

(assert (=> d!191960 (= c!103302 ((_ is IntegerValue!3135) (value!33965 token!491)))))

(assert (=> d!191960 (= (inv!21 (value!33965 token!491)) e!331631)))

(declare-fun b!548635 () Bool)

(declare-fun inv!16 (TokenValue!1045) Bool)

(assert (=> b!548635 (= e!331631 (inv!16 (value!33965 token!491)))))

(assert (= (and d!191960 c!103302) b!548635))

(assert (= (and d!191960 (not c!103302)) b!548632))

(assert (= (and b!548632 c!103301) b!548634))

(assert (= (and b!548632 (not c!103301)) b!548633))

(assert (= (and b!548633 (not res!234777)) b!548631))

(declare-fun m!797861 () Bool)

(assert (=> b!548631 m!797861))

(declare-fun m!797863 () Bool)

(assert (=> b!548634 m!797863))

(declare-fun m!797865 () Bool)

(assert (=> b!548635 m!797865))

(assert (=> b!548109 d!191960))

(declare-fun b!548654 () Bool)

(declare-fun res!234791 () Bool)

(declare-fun e!331649 () Bool)

(assert (=> b!548654 (=> (not res!234791) (not e!331649))))

(declare-fun call!38395 () Bool)

(assert (=> b!548654 (= res!234791 call!38395)))

(declare-fun e!331648 () Bool)

(assert (=> b!548654 (= e!331648 e!331649)))

(declare-fun b!548655 () Bool)

(declare-fun e!331647 () Bool)

(declare-fun e!331646 () Bool)

(assert (=> b!548655 (= e!331647 e!331646)))

(declare-fun res!234790 () Bool)

(assert (=> b!548655 (=> (not res!234790) (not e!331646))))

(declare-fun call!38396 () Bool)

(assert (=> b!548655 (= res!234790 call!38396)))

(declare-fun b!548656 () Bool)

(declare-fun res!234788 () Bool)

(assert (=> b!548656 (=> res!234788 e!331647)))

(assert (=> b!548656 (= res!234788 (not ((_ is Concat!2400) (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))

(assert (=> b!548656 (= e!331648 e!331647)))

(declare-fun bm!38390 () Bool)

(declare-fun call!38397 () Bool)

(assert (=> bm!38390 (= call!38395 call!38397)))

(declare-fun b!548657 () Bool)

(declare-fun e!331652 () Bool)

(declare-fun e!331651 () Bool)

(assert (=> b!548657 (= e!331652 e!331651)))

(declare-fun c!103307 () Bool)

(assert (=> b!548657 (= c!103307 ((_ is Star!1355) (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun bm!38391 () Bool)

(declare-fun c!103308 () Bool)

(assert (=> bm!38391 (= call!38397 (validRegex!452 (ite c!103307 (reg!1684 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (ite c!103308 (regOne!3223 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (regTwo!3222 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))))

(declare-fun bm!38392 () Bool)

(assert (=> bm!38392 (= call!38396 (validRegex!452 (ite c!103308 (regTwo!3223 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (regOne!3222 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))))

(declare-fun b!548659 () Bool)

(declare-fun e!331650 () Bool)

(assert (=> b!548659 (= e!331651 e!331650)))

(declare-fun res!234789 () Bool)

(assert (=> b!548659 (= res!234789 (not (nullable!357 (reg!1684 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))))

(assert (=> b!548659 (=> (not res!234789) (not e!331650))))

(declare-fun b!548660 () Bool)

(assert (=> b!548660 (= e!331650 call!38397)))

(declare-fun b!548661 () Bool)

(assert (=> b!548661 (= e!331651 e!331648)))

(assert (=> b!548661 (= c!103308 ((_ is Union!1355) (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun b!548662 () Bool)

(assert (=> b!548662 (= e!331646 call!38395)))

(declare-fun b!548658 () Bool)

(assert (=> b!548658 (= e!331649 call!38396)))

(declare-fun d!191962 () Bool)

(declare-fun res!234792 () Bool)

(assert (=> d!191962 (=> res!234792 e!331652)))

(assert (=> d!191962 (= res!234792 ((_ is ElementMatch!1355) (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(assert (=> d!191962 (= (validRegex!452 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) e!331652)))

(assert (= (and d!191962 (not res!234792)) b!548657))

(assert (= (and b!548657 c!103307) b!548659))

(assert (= (and b!548657 (not c!103307)) b!548661))

(assert (= (and b!548659 res!234789) b!548660))

(assert (= (and b!548661 c!103308) b!548654))

(assert (= (and b!548661 (not c!103308)) b!548656))

(assert (= (and b!548654 res!234791) b!548658))

(assert (= (and b!548656 (not res!234788)) b!548655))

(assert (= (and b!548655 res!234790) b!548662))

(assert (= (or b!548654 b!548662) bm!38390))

(assert (= (or b!548658 b!548655) bm!38392))

(assert (= (or b!548660 bm!38390) bm!38391))

(declare-fun m!797867 () Bool)

(assert (=> bm!38391 m!797867))

(declare-fun m!797869 () Bool)

(assert (=> bm!38392 m!797869))

(declare-fun m!797871 () Bool)

(assert (=> b!548659 m!797871))

(assert (=> b!548088 d!191962))

(declare-fun d!191964 () Bool)

(assert (=> d!191964 (isPrefix!663 lt!230323 (++!1509 lt!230323 (_2!3482 (v!16191 lt!230326))))))

(declare-fun lt!230507 () Unit!9517)

(declare-fun choose!3901 (List!5416 List!5416) Unit!9517)

(assert (=> d!191964 (= lt!230507 (choose!3901 lt!230323 (_2!3482 (v!16191 lt!230326))))))

(assert (=> d!191964 (= (lemmaConcatTwoListThenFirstIsPrefix!514 lt!230323 (_2!3482 (v!16191 lt!230326))) lt!230507)))

(declare-fun bs!67779 () Bool)

(assert (= bs!67779 d!191964))

(assert (=> bs!67779 m!797167))

(assert (=> bs!67779 m!797167))

(declare-fun m!797873 () Bool)

(assert (=> bs!67779 m!797873))

(declare-fun m!797875 () Bool)

(assert (=> bs!67779 m!797875))

(assert (=> b!548086 d!191964))

(declare-fun d!191966 () Bool)

(assert (=> d!191966 (ruleValid!241 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))))))

(declare-fun lt!230510 () Unit!9517)

(declare-fun choose!3902 (LexerInterface!907 Rule!1842 List!5417) Unit!9517)

(assert (=> d!191966 (= lt!230510 (choose!3902 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))) rules!3103))))

(assert (=> d!191966 (contains!1263 rules!3103 (rule!1741 (_1!3482 (v!16191 lt!230326))))))

(assert (=> d!191966 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!100 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326))) rules!3103) lt!230510)))

(declare-fun bs!67780 () Bool)

(assert (= bs!67780 d!191966))

(assert (=> bs!67780 m!797143))

(declare-fun m!797877 () Bool)

(assert (=> bs!67780 m!797877))

(assert (=> bs!67780 m!797107))

(assert (=> b!548086 d!191966))

(declare-fun d!191968 () Bool)

(assert (=> d!191968 (isPrefix!663 lt!230331 (++!1509 lt!230331 suffix!1342))))

(declare-fun lt!230511 () Unit!9517)

(assert (=> d!191968 (= lt!230511 (choose!3901 lt!230331 suffix!1342))))

(assert (=> d!191968 (= (lemmaConcatTwoListThenFirstIsPrefix!514 lt!230331 suffix!1342) lt!230511)))

(declare-fun bs!67781 () Bool)

(assert (= bs!67781 d!191968))

(assert (=> bs!67781 m!797223))

(assert (=> bs!67781 m!797223))

(declare-fun m!797879 () Bool)

(assert (=> bs!67781 m!797879))

(declare-fun m!797881 () Bool)

(assert (=> bs!67781 m!797881))

(assert (=> b!548086 d!191968))

(declare-fun b!548674 () Bool)

(declare-fun e!331659 () Bool)

(assert (=> b!548674 (= e!331659 (>= (size!4331 lt!230308) (size!4331 lt!230323)))))

(declare-fun d!191970 () Bool)

(assert (=> d!191970 e!331659))

(declare-fun res!234801 () Bool)

(assert (=> d!191970 (=> res!234801 e!331659)))

(declare-fun lt!230514 () Bool)

(assert (=> d!191970 (= res!234801 (not lt!230514))))

(declare-fun e!331660 () Bool)

(assert (=> d!191970 (= lt!230514 e!331660)))

(declare-fun res!234804 () Bool)

(assert (=> d!191970 (=> res!234804 e!331660)))

(assert (=> d!191970 (= res!234804 ((_ is Nil!5406) lt!230323))))

(assert (=> d!191970 (= (isPrefix!663 lt!230323 lt!230308) lt!230514)))

(declare-fun b!548671 () Bool)

(declare-fun e!331661 () Bool)

(assert (=> b!548671 (= e!331660 e!331661)))

(declare-fun res!234803 () Bool)

(assert (=> b!548671 (=> (not res!234803) (not e!331661))))

(assert (=> b!548671 (= res!234803 (not ((_ is Nil!5406) lt!230308)))))

(declare-fun b!548673 () Bool)

(assert (=> b!548673 (= e!331661 (isPrefix!663 (tail!723 lt!230323) (tail!723 lt!230308)))))

(declare-fun b!548672 () Bool)

(declare-fun res!234802 () Bool)

(assert (=> b!548672 (=> (not res!234802) (not e!331661))))

(assert (=> b!548672 (= res!234802 (= (head!1194 lt!230323) (head!1194 lt!230308)))))

(assert (= (and d!191970 (not res!234804)) b!548671))

(assert (= (and b!548671 res!234803) b!548672))

(assert (= (and b!548672 res!234802) b!548673))

(assert (= (and d!191970 (not res!234801)) b!548674))

(declare-fun m!797883 () Bool)

(assert (=> b!548674 m!797883))

(assert (=> b!548674 m!797119))

(declare-fun m!797885 () Bool)

(assert (=> b!548673 m!797885))

(declare-fun m!797887 () Bool)

(assert (=> b!548673 m!797887))

(assert (=> b!548673 m!797885))

(assert (=> b!548673 m!797887))

(declare-fun m!797889 () Bool)

(assert (=> b!548673 m!797889))

(declare-fun m!797891 () Bool)

(assert (=> b!548672 m!797891))

(declare-fun m!797893 () Bool)

(assert (=> b!548672 m!797893))

(assert (=> b!548086 d!191970))

(declare-fun d!191972 () Bool)

(assert (=> d!191972 (= (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))) lt!230312) (dynLambda!3158 (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) lt!230312))))

(declare-fun b_lambda!21121 () Bool)

(assert (=> (not b_lambda!21121) (not d!191972)))

(assert (=> d!191972 t!74929))

(declare-fun b_and!53599 () Bool)

(assert (= b_and!53591 (and (=> t!74929 result!53788) b_and!53599)))

(assert (=> d!191972 t!74931))

(declare-fun b_and!53601 () Bool)

(assert (= b_and!53593 (and (=> t!74931 result!53790) b_and!53601)))

(assert (=> d!191972 m!797813))

(assert (=> b!548086 d!191972))

(declare-fun b!548678 () Bool)

(declare-fun e!331662 () Bool)

(assert (=> b!548678 (= e!331662 (>= (size!4331 lt!230297) (size!4331 lt!230331)))))

(declare-fun d!191974 () Bool)

(assert (=> d!191974 e!331662))

(declare-fun res!234805 () Bool)

(assert (=> d!191974 (=> res!234805 e!331662)))

(declare-fun lt!230515 () Bool)

(assert (=> d!191974 (= res!234805 (not lt!230515))))

(declare-fun e!331663 () Bool)

(assert (=> d!191974 (= lt!230515 e!331663)))

(declare-fun res!234808 () Bool)

(assert (=> d!191974 (=> res!234808 e!331663)))

(assert (=> d!191974 (= res!234808 ((_ is Nil!5406) lt!230331))))

(assert (=> d!191974 (= (isPrefix!663 lt!230331 lt!230297) lt!230515)))

(declare-fun b!548675 () Bool)

(declare-fun e!331664 () Bool)

(assert (=> b!548675 (= e!331663 e!331664)))

(declare-fun res!234807 () Bool)

(assert (=> b!548675 (=> (not res!234807) (not e!331664))))

(assert (=> b!548675 (= res!234807 (not ((_ is Nil!5406) lt!230297)))))

(declare-fun b!548677 () Bool)

(assert (=> b!548677 (= e!331664 (isPrefix!663 (tail!723 lt!230331) (tail!723 lt!230297)))))

(declare-fun b!548676 () Bool)

(declare-fun res!234806 () Bool)

(assert (=> b!548676 (=> (not res!234806) (not e!331664))))

(assert (=> b!548676 (= res!234806 (= (head!1194 lt!230331) (head!1194 lt!230297)))))

(assert (= (and d!191974 (not res!234808)) b!548675))

(assert (= (and b!548675 res!234807) b!548676))

(assert (= (and b!548676 res!234806) b!548677))

(assert (= (and d!191974 (not res!234805)) b!548678))

(declare-fun m!797895 () Bool)

(assert (=> b!548678 m!797895))

(assert (=> b!548678 m!797155))

(declare-fun m!797897 () Bool)

(assert (=> b!548677 m!797897))

(declare-fun m!797899 () Bool)

(assert (=> b!548677 m!797899))

(assert (=> b!548677 m!797897))

(assert (=> b!548677 m!797899))

(declare-fun m!797901 () Bool)

(assert (=> b!548677 m!797901))

(declare-fun m!797903 () Bool)

(assert (=> b!548676 m!797903))

(declare-fun m!797905 () Bool)

(assert (=> b!548676 m!797905))

(assert (=> b!548086 d!191974))

(declare-fun b!548682 () Bool)

(declare-fun e!331665 () Bool)

(assert (=> b!548682 (= e!331665 (>= (size!4331 input!2705) (size!4331 input!2705)))))

(declare-fun d!191976 () Bool)

(assert (=> d!191976 e!331665))

(declare-fun res!234809 () Bool)

(assert (=> d!191976 (=> res!234809 e!331665)))

(declare-fun lt!230516 () Bool)

(assert (=> d!191976 (= res!234809 (not lt!230516))))

(declare-fun e!331666 () Bool)

(assert (=> d!191976 (= lt!230516 e!331666)))

(declare-fun res!234812 () Bool)

(assert (=> d!191976 (=> res!234812 e!331666)))

(assert (=> d!191976 (= res!234812 ((_ is Nil!5406) input!2705))))

(assert (=> d!191976 (= (isPrefix!663 input!2705 input!2705) lt!230516)))

(declare-fun b!548679 () Bool)

(declare-fun e!331667 () Bool)

(assert (=> b!548679 (= e!331666 e!331667)))

(declare-fun res!234811 () Bool)

(assert (=> b!548679 (=> (not res!234811) (not e!331667))))

(assert (=> b!548679 (= res!234811 (not ((_ is Nil!5406) input!2705)))))

(declare-fun b!548681 () Bool)

(assert (=> b!548681 (= e!331667 (isPrefix!663 (tail!723 input!2705) (tail!723 input!2705)))))

(declare-fun b!548680 () Bool)

(declare-fun res!234810 () Bool)

(assert (=> b!548680 (=> (not res!234810) (not e!331667))))

(assert (=> b!548680 (= res!234810 (= (head!1194 input!2705) (head!1194 input!2705)))))

(assert (= (and d!191976 (not res!234812)) b!548679))

(assert (= (and b!548679 res!234811) b!548680))

(assert (= (and b!548680 res!234810) b!548681))

(assert (= (and d!191976 (not res!234809)) b!548682))

(assert (=> b!548682 m!797457))

(assert (=> b!548682 m!797457))

(assert (=> b!548681 m!797343))

(assert (=> b!548681 m!797343))

(assert (=> b!548681 m!797343))

(assert (=> b!548681 m!797343))

(declare-fun m!797907 () Bool)

(assert (=> b!548681 m!797907))

(assert (=> b!548680 m!797339))

(assert (=> b!548680 m!797339))

(assert (=> b!548086 d!191976))

(declare-fun d!191978 () Bool)

(declare-fun res!234817 () Bool)

(declare-fun e!331670 () Bool)

(assert (=> d!191978 (=> (not res!234817) (not e!331670))))

(assert (=> d!191978 (= res!234817 (validRegex!452 (regex!1021 (rule!1741 token!491))))))

(assert (=> d!191978 (= (ruleValid!241 thiss!22590 (rule!1741 token!491)) e!331670)))

(declare-fun b!548687 () Bool)

(declare-fun res!234818 () Bool)

(assert (=> b!548687 (=> (not res!234818) (not e!331670))))

(assert (=> b!548687 (= res!234818 (not (nullable!357 (regex!1021 (rule!1741 token!491)))))))

(declare-fun b!548688 () Bool)

(assert (=> b!548688 (= e!331670 (not (= (tag!1283 (rule!1741 token!491)) (String!6969 ""))))))

(assert (= (and d!191978 res!234817) b!548687))

(assert (= (and b!548687 res!234818) b!548688))

(assert (=> d!191978 m!797853))

(assert (=> b!548687 m!797855))

(assert (=> b!548086 d!191978))

(declare-fun b!548692 () Bool)

(declare-fun e!331671 () Bool)

(assert (=> b!548692 (= e!331671 (>= (size!4331 lt!230297) (size!4331 input!2705)))))

(declare-fun d!191980 () Bool)

(assert (=> d!191980 e!331671))

(declare-fun res!234819 () Bool)

(assert (=> d!191980 (=> res!234819 e!331671)))

(declare-fun lt!230517 () Bool)

(assert (=> d!191980 (= res!234819 (not lt!230517))))

(declare-fun e!331672 () Bool)

(assert (=> d!191980 (= lt!230517 e!331672)))

(declare-fun res!234822 () Bool)

(assert (=> d!191980 (=> res!234822 e!331672)))

(assert (=> d!191980 (= res!234822 ((_ is Nil!5406) input!2705))))

(assert (=> d!191980 (= (isPrefix!663 input!2705 lt!230297) lt!230517)))

(declare-fun b!548689 () Bool)

(declare-fun e!331673 () Bool)

(assert (=> b!548689 (= e!331672 e!331673)))

(declare-fun res!234821 () Bool)

(assert (=> b!548689 (=> (not res!234821) (not e!331673))))

(assert (=> b!548689 (= res!234821 (not ((_ is Nil!5406) lt!230297)))))

(declare-fun b!548691 () Bool)

(assert (=> b!548691 (= e!331673 (isPrefix!663 (tail!723 input!2705) (tail!723 lt!230297)))))

(declare-fun b!548690 () Bool)

(declare-fun res!234820 () Bool)

(assert (=> b!548690 (=> (not res!234820) (not e!331673))))

(assert (=> b!548690 (= res!234820 (= (head!1194 input!2705) (head!1194 lt!230297)))))

(assert (= (and d!191980 (not res!234822)) b!548689))

(assert (= (and b!548689 res!234821) b!548690))

(assert (= (and b!548690 res!234820) b!548691))

(assert (= (and d!191980 (not res!234819)) b!548692))

(assert (=> b!548692 m!797895))

(assert (=> b!548692 m!797457))

(assert (=> b!548691 m!797343))

(assert (=> b!548691 m!797899))

(assert (=> b!548691 m!797343))

(assert (=> b!548691 m!797899))

(declare-fun m!797909 () Bool)

(assert (=> b!548691 m!797909))

(assert (=> b!548690 m!797339))

(assert (=> b!548690 m!797905))

(assert (=> b!548086 d!191980))

(declare-fun d!191982 () Bool)

(declare-fun lt!230518 () BalanceConc!3484)

(assert (=> d!191982 (= (list!2241 lt!230518) (originalCharacters!1060 (_1!3482 (v!16191 lt!230326))))))

(assert (=> d!191982 (= lt!230518 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (value!33965 (_1!3482 (v!16191 lt!230326)))))))

(assert (=> d!191982 (= (charsOf!650 (_1!3482 (v!16191 lt!230326))) lt!230518)))

(declare-fun b_lambda!21123 () Bool)

(assert (=> (not b_lambda!21123) (not d!191982)))

(declare-fun tb!48083 () Bool)

(declare-fun t!74933 () Bool)

(assert (=> (and b!548084 (= (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74933) tb!48083))

(declare-fun b!548693 () Bool)

(declare-fun e!331674 () Bool)

(declare-fun tp!173823 () Bool)

(assert (=> b!548693 (= e!331674 (and (inv!6785 (c!103205 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (value!33965 (_1!3482 (v!16191 lt!230326)))))) tp!173823))))

(declare-fun result!53792 () Bool)

(assert (=> tb!48083 (= result!53792 (and (inv!6786 (dynLambda!3157 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (value!33965 (_1!3482 (v!16191 lt!230326))))) e!331674))))

(assert (= tb!48083 b!548693))

(declare-fun m!797911 () Bool)

(assert (=> b!548693 m!797911))

(declare-fun m!797913 () Bool)

(assert (=> tb!48083 m!797913))

(assert (=> d!191982 t!74933))

(declare-fun b_and!53603 () Bool)

(assert (= b_and!53595 (and (=> t!74933 result!53792) b_and!53603)))

(declare-fun t!74935 () Bool)

(declare-fun tb!48085 () Bool)

(assert (=> (and b!548102 (= (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74935) tb!48085))

(declare-fun result!53794 () Bool)

(assert (= result!53794 result!53792))

(assert (=> d!191982 t!74935))

(declare-fun b_and!53605 () Bool)

(assert (= b_and!53597 (and (=> t!74935 result!53794) b_and!53605)))

(declare-fun m!797915 () Bool)

(assert (=> d!191982 m!797915))

(declare-fun m!797917 () Bool)

(assert (=> d!191982 m!797917))

(assert (=> b!548086 d!191982))

(declare-fun d!191984 () Bool)

(assert (=> d!191984 (= (size!4330 token!491) (size!4331 (originalCharacters!1060 token!491)))))

(declare-fun Unit!9529 () Unit!9517)

(assert (=> d!191984 (= (lemmaCharactersSize!100 token!491) Unit!9529)))

(declare-fun bs!67782 () Bool)

(assert (= bs!67782 d!191984))

(assert (=> bs!67782 m!797179))

(assert (=> b!548086 d!191984))

(declare-fun d!191986 () Bool)

(declare-fun lt!230519 () Int)

(assert (=> d!191986 (>= lt!230519 0)))

(declare-fun e!331675 () Int)

(assert (=> d!191986 (= lt!230519 e!331675)))

(declare-fun c!103309 () Bool)

(assert (=> d!191986 (= c!103309 ((_ is Nil!5406) lt!230323))))

(assert (=> d!191986 (= (size!4331 lt!230323) lt!230519)))

(declare-fun b!548694 () Bool)

(assert (=> b!548694 (= e!331675 0)))

(declare-fun b!548695 () Bool)

(assert (=> b!548695 (= e!331675 (+ 1 (size!4331 (t!74873 lt!230323))))))

(assert (= (and d!191986 c!103309) b!548694))

(assert (= (and d!191986 (not c!103309)) b!548695))

(declare-fun m!797919 () Bool)

(assert (=> b!548695 m!797919))

(assert (=> b!548086 d!191986))

(declare-fun b!548699 () Bool)

(declare-fun e!331676 () Bool)

(assert (=> b!548699 (= e!331676 (>= (size!4331 lt!230303) (size!4331 input!2705)))))

(declare-fun d!191988 () Bool)

(assert (=> d!191988 e!331676))

(declare-fun res!234823 () Bool)

(assert (=> d!191988 (=> res!234823 e!331676)))

(declare-fun lt!230520 () Bool)

(assert (=> d!191988 (= res!234823 (not lt!230520))))

(declare-fun e!331677 () Bool)

(assert (=> d!191988 (= lt!230520 e!331677)))

(declare-fun res!234826 () Bool)

(assert (=> d!191988 (=> res!234826 e!331677)))

(assert (=> d!191988 (= res!234826 ((_ is Nil!5406) input!2705))))

(assert (=> d!191988 (= (isPrefix!663 input!2705 lt!230303) lt!230520)))

(declare-fun b!548696 () Bool)

(declare-fun e!331678 () Bool)

(assert (=> b!548696 (= e!331677 e!331678)))

(declare-fun res!234825 () Bool)

(assert (=> b!548696 (=> (not res!234825) (not e!331678))))

(assert (=> b!548696 (= res!234825 (not ((_ is Nil!5406) lt!230303)))))

(declare-fun b!548698 () Bool)

(assert (=> b!548698 (= e!331678 (isPrefix!663 (tail!723 input!2705) (tail!723 lt!230303)))))

(declare-fun b!548697 () Bool)

(declare-fun res!234824 () Bool)

(assert (=> b!548697 (=> (not res!234824) (not e!331678))))

(assert (=> b!548697 (= res!234824 (= (head!1194 input!2705) (head!1194 lt!230303)))))

(assert (= (and d!191988 (not res!234826)) b!548696))

(assert (= (and b!548696 res!234825) b!548697))

(assert (= (and b!548697 res!234824) b!548698))

(assert (= (and d!191988 (not res!234823)) b!548699))

(assert (=> b!548699 m!797759))

(assert (=> b!548699 m!797457))

(assert (=> b!548698 m!797343))

(assert (=> b!548698 m!797819))

(assert (=> b!548698 m!797343))

(assert (=> b!548698 m!797819))

(declare-fun m!797921 () Bool)

(assert (=> b!548698 m!797921))

(assert (=> b!548697 m!797339))

(declare-fun m!797923 () Bool)

(assert (=> b!548697 m!797923))

(assert (=> b!548086 d!191988))

(declare-fun d!191990 () Bool)

(assert (=> d!191990 (ruleValid!241 thiss!22590 (rule!1741 token!491))))

(declare-fun lt!230521 () Unit!9517)

(assert (=> d!191990 (= lt!230521 (choose!3902 thiss!22590 (rule!1741 token!491) rules!3103))))

(assert (=> d!191990 (contains!1263 rules!3103 (rule!1741 token!491))))

(assert (=> d!191990 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!100 thiss!22590 (rule!1741 token!491) rules!3103) lt!230521)))

(declare-fun bs!67783 () Bool)

(assert (= bs!67783 d!191990))

(assert (=> bs!67783 m!797121))

(declare-fun m!797925 () Bool)

(assert (=> bs!67783 m!797925))

(assert (=> bs!67783 m!797181))

(assert (=> b!548086 d!191990))

(declare-fun d!191992 () Bool)

(assert (=> d!191992 (isPrefix!663 input!2705 (++!1509 input!2705 suffix!1342))))

(declare-fun lt!230522 () Unit!9517)

(assert (=> d!191992 (= lt!230522 (choose!3901 input!2705 suffix!1342))))

(assert (=> d!191992 (= (lemmaConcatTwoListThenFirstIsPrefix!514 input!2705 suffix!1342) lt!230522)))

(declare-fun bs!67784 () Bool)

(assert (= bs!67784 d!191992))

(assert (=> bs!67784 m!797221))

(assert (=> bs!67784 m!797221))

(declare-fun m!797927 () Bool)

(assert (=> bs!67784 m!797927))

(declare-fun m!797929 () Bool)

(assert (=> bs!67784 m!797929))

(assert (=> b!548086 d!191992))

(declare-fun d!191994 () Bool)

(declare-fun res!234827 () Bool)

(declare-fun e!331679 () Bool)

(assert (=> d!191994 (=> (not res!234827) (not e!331679))))

(assert (=> d!191994 (= res!234827 (validRegex!452 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))))))

(assert (=> d!191994 (= (ruleValid!241 thiss!22590 (rule!1741 (_1!3482 (v!16191 lt!230326)))) e!331679)))

(declare-fun b!548700 () Bool)

(declare-fun res!234828 () Bool)

(assert (=> b!548700 (=> (not res!234828) (not e!331679))))

(assert (=> b!548700 (= res!234828 (not (nullable!357 (regex!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))

(declare-fun b!548701 () Bool)

(assert (=> b!548701 (= e!331679 (not (= (tag!1283 (rule!1741 (_1!3482 (v!16191 lt!230326)))) (String!6969 ""))))))

(assert (= (and d!191994 res!234827) b!548700))

(assert (= (and b!548700 res!234828) b!548701))

(assert (=> d!191994 m!797241))

(assert (=> b!548700 m!797349))

(assert (=> b!548086 d!191994))

(declare-fun d!191996 () Bool)

(declare-fun lt!230523 () List!5416)

(assert (=> d!191996 (= (++!1509 lt!230323 lt!230523) input!2705)))

(declare-fun e!331680 () List!5416)

(assert (=> d!191996 (= lt!230523 e!331680)))

(declare-fun c!103310 () Bool)

(assert (=> d!191996 (= c!103310 ((_ is Cons!5406) lt!230323))))

(assert (=> d!191996 (>= (size!4331 input!2705) (size!4331 lt!230323))))

(assert (=> d!191996 (= (getSuffix!186 input!2705 lt!230323) lt!230523)))

(declare-fun b!548702 () Bool)

(assert (=> b!548702 (= e!331680 (getSuffix!186 (tail!723 input!2705) (t!74873 lt!230323)))))

(declare-fun b!548703 () Bool)

(assert (=> b!548703 (= e!331680 input!2705)))

(assert (= (and d!191996 c!103310) b!548702))

(assert (= (and d!191996 (not c!103310)) b!548703))

(declare-fun m!797931 () Bool)

(assert (=> d!191996 m!797931))

(assert (=> d!191996 m!797457))

(assert (=> d!191996 m!797119))

(assert (=> b!548702 m!797343))

(assert (=> b!548702 m!797343))

(declare-fun m!797933 () Bool)

(assert (=> b!548702 m!797933))

(assert (=> b!548086 d!191996))

(declare-fun d!191998 () Bool)

(assert (=> d!191998 (= (_2!3482 (v!16191 lt!230326)) lt!230309)))

(declare-fun lt!230524 () Unit!9517)

(assert (=> d!191998 (= lt!230524 (choose!3897 lt!230323 (_2!3482 (v!16191 lt!230326)) lt!230323 lt!230309 input!2705))))

(assert (=> d!191998 (isPrefix!663 lt!230323 input!2705)))

(assert (=> d!191998 (= (lemmaSamePrefixThenSameSuffix!390 lt!230323 (_2!3482 (v!16191 lt!230326)) lt!230323 lt!230309 input!2705) lt!230524)))

(declare-fun bs!67785 () Bool)

(assert (= bs!67785 d!191998))

(declare-fun m!797935 () Bool)

(assert (=> bs!67785 m!797935))

(assert (=> bs!67785 m!797847))

(assert (=> b!548086 d!191998))

(declare-fun d!192000 () Bool)

(assert (=> d!192000 (isPrefix!663 input!2705 input!2705)))

(declare-fun lt!230527 () Unit!9517)

(declare-fun choose!3903 (List!5416 List!5416) Unit!9517)

(assert (=> d!192000 (= lt!230527 (choose!3903 input!2705 input!2705))))

(assert (=> d!192000 (= (lemmaIsPrefixRefl!403 input!2705 input!2705) lt!230527)))

(declare-fun bs!67786 () Bool)

(assert (= bs!67786 d!192000))

(assert (=> bs!67786 m!797141))

(declare-fun m!797937 () Bool)

(assert (=> bs!67786 m!797937))

(assert (=> b!548086 d!192000))

(declare-fun d!192002 () Bool)

(declare-fun e!331683 () Bool)

(assert (=> d!192002 e!331683))

(declare-fun res!234831 () Bool)

(assert (=> d!192002 (=> (not res!234831) (not e!331683))))

(assert (=> d!192002 (= res!234831 (semiInverseModEq!395 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))

(declare-fun Unit!9530 () Unit!9517)

(assert (=> d!192002 (= (lemmaInv!169 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) Unit!9530)))

(declare-fun b!548706 () Bool)

(assert (=> b!548706 (= e!331683 (equivClasses!378 (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326))))) (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))))))

(assert (= (and d!192002 res!234831) b!548706))

(declare-fun m!797939 () Bool)

(assert (=> d!192002 m!797939))

(declare-fun m!797941 () Bool)

(assert (=> b!548706 m!797941))

(assert (=> b!548086 d!192002))

(declare-fun d!192004 () Bool)

(assert (=> d!192004 (= (size!4330 (_1!3482 (v!16191 lt!230326))) (size!4331 (originalCharacters!1060 (_1!3482 (v!16191 lt!230326)))))))

(declare-fun Unit!9531 () Unit!9517)

(assert (=> d!192004 (= (lemmaCharactersSize!100 (_1!3482 (v!16191 lt!230326))) Unit!9531)))

(declare-fun bs!67787 () Bool)

(assert (= bs!67787 d!192004))

(assert (=> bs!67787 m!797213))

(assert (=> b!548086 d!192004))

(declare-fun d!192006 () Bool)

(declare-fun e!331684 () Bool)

(assert (=> d!192006 e!331684))

(declare-fun res!234832 () Bool)

(assert (=> d!192006 (=> (not res!234832) (not e!331684))))

(assert (=> d!192006 (= res!234832 (semiInverseModEq!395 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toValue!1868 (transformation!1021 (rule!1741 token!491)))))))

(declare-fun Unit!9532 () Unit!9517)

(assert (=> d!192006 (= (lemmaInv!169 (transformation!1021 (rule!1741 token!491))) Unit!9532)))

(declare-fun b!548707 () Bool)

(assert (=> b!548707 (= e!331684 (equivClasses!378 (toChars!1727 (transformation!1021 (rule!1741 token!491))) (toValue!1868 (transformation!1021 (rule!1741 token!491)))))))

(assert (= (and d!192006 res!234832) b!548707))

(assert (=> d!192006 m!797445))

(assert (=> b!548707 m!797447))

(assert (=> b!548086 d!192006))

(declare-fun d!192008 () Bool)

(assert (=> d!192008 (= (list!2241 (charsOf!650 (_1!3482 (v!16191 lt!230326)))) (list!2242 (c!103205 (charsOf!650 (_1!3482 (v!16191 lt!230326))))))))

(declare-fun bs!67788 () Bool)

(assert (= bs!67788 d!192008))

(declare-fun m!797943 () Bool)

(assert (=> bs!67788 m!797943))

(assert (=> b!548086 d!192008))

(declare-fun lt!230528 () List!5416)

(declare-fun b!548711 () Bool)

(declare-fun e!331685 () Bool)

(assert (=> b!548711 (= e!331685 (or (not (= (_2!3482 (v!16191 lt!230326)) Nil!5406)) (= lt!230528 lt!230323)))))

(declare-fun b!548709 () Bool)

(declare-fun e!331686 () List!5416)

(assert (=> b!548709 (= e!331686 (Cons!5406 (h!10807 lt!230323) (++!1509 (t!74873 lt!230323) (_2!3482 (v!16191 lt!230326)))))))

(declare-fun d!192010 () Bool)

(assert (=> d!192010 e!331685))

(declare-fun res!234833 () Bool)

(assert (=> d!192010 (=> (not res!234833) (not e!331685))))

(assert (=> d!192010 (= res!234833 (= (content!946 lt!230528) ((_ map or) (content!946 lt!230323) (content!946 (_2!3482 (v!16191 lt!230326))))))))

(assert (=> d!192010 (= lt!230528 e!331686)))

(declare-fun c!103311 () Bool)

(assert (=> d!192010 (= c!103311 ((_ is Nil!5406) lt!230323))))

(assert (=> d!192010 (= (++!1509 lt!230323 (_2!3482 (v!16191 lt!230326))) lt!230528)))

(declare-fun b!548708 () Bool)

(assert (=> b!548708 (= e!331686 (_2!3482 (v!16191 lt!230326)))))

(declare-fun b!548710 () Bool)

(declare-fun res!234834 () Bool)

(assert (=> b!548710 (=> (not res!234834) (not e!331685))))

(assert (=> b!548710 (= res!234834 (= (size!4331 lt!230528) (+ (size!4331 lt!230323) (size!4331 (_2!3482 (v!16191 lt!230326))))))))

(assert (= (and d!192010 c!103311) b!548708))

(assert (= (and d!192010 (not c!103311)) b!548709))

(assert (= (and d!192010 res!234833) b!548710))

(assert (= (and b!548710 res!234834) b!548711))

(declare-fun m!797945 () Bool)

(assert (=> b!548709 m!797945))

(declare-fun m!797947 () Bool)

(assert (=> d!192010 m!797947))

(declare-fun m!797949 () Bool)

(assert (=> d!192010 m!797949))

(declare-fun m!797951 () Bool)

(assert (=> d!192010 m!797951))

(declare-fun m!797953 () Bool)

(assert (=> b!548710 m!797953))

(assert (=> b!548710 m!797119))

(declare-fun m!797955 () Bool)

(assert (=> b!548710 m!797955))

(assert (=> b!548086 d!192010))

(declare-fun d!192012 () Bool)

(declare-fun lt!230529 () Int)

(assert (=> d!192012 (>= lt!230529 0)))

(declare-fun e!331687 () Int)

(assert (=> d!192012 (= lt!230529 e!331687)))

(declare-fun c!103312 () Bool)

(assert (=> d!192012 (= c!103312 ((_ is Nil!5406) lt!230331))))

(assert (=> d!192012 (= (size!4331 lt!230331) lt!230529)))

(declare-fun b!548712 () Bool)

(assert (=> b!548712 (= e!331687 0)))

(declare-fun b!548713 () Bool)

(assert (=> b!548713 (= e!331687 (+ 1 (size!4331 (t!74873 lt!230331))))))

(assert (= (and d!192012 c!103312) b!548712))

(assert (= (and d!192012 (not c!103312)) b!548713))

(declare-fun m!797957 () Bool)

(assert (=> b!548713 m!797957))

(assert (=> b!548086 d!192012))

(declare-fun d!192014 () Bool)

(assert (=> d!192014 (and (= lt!230331 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!230532 () Unit!9517)

(declare-fun choose!3904 (List!5416 List!5416 List!5416 List!5416) Unit!9517)

(assert (=> d!192014 (= lt!230532 (choose!3904 lt!230331 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!192014 (= (++!1509 lt!230331 suffix!1342) (++!1509 input!2705 suffix!1342))))

(assert (=> d!192014 (= (lemmaConcatSameAndSameSizesThenSameLists!106 lt!230331 suffix!1342 input!2705 suffix!1342) lt!230532)))

(declare-fun bs!67789 () Bool)

(assert (= bs!67789 d!192014))

(declare-fun m!797959 () Bool)

(assert (=> bs!67789 m!797959))

(assert (=> bs!67789 m!797223))

(assert (=> bs!67789 m!797221))

(assert (=> b!548086 d!192014))

(declare-fun d!192016 () Bool)

(assert (=> d!192016 (= (seqFromList!1219 lt!230323) (fromListB!531 lt!230323))))

(declare-fun bs!67790 () Bool)

(assert (= bs!67790 d!192016))

(declare-fun m!797961 () Bool)

(assert (=> bs!67790 m!797961))

(assert (=> b!548086 d!192016))

(declare-fun b!548732 () Bool)

(declare-fun res!234851 () Bool)

(declare-fun e!331696 () Bool)

(assert (=> b!548732 (=> (not res!234851) (not e!331696))))

(declare-fun lt!230546 () Option!1371)

(assert (=> b!548732 (= res!234851 (= (value!33965 (_1!3482 (get!2046 lt!230546))) (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (get!2046 lt!230546)))) (seqFromList!1219 (originalCharacters!1060 (_1!3482 (get!2046 lt!230546)))))))))

(declare-fun b!548733 () Bool)

(declare-fun e!331694 () Option!1371)

(declare-fun lt!230543 () Option!1371)

(declare-fun lt!230545 () Option!1371)

(assert (=> b!548733 (= e!331694 (ite (and ((_ is None!1370) lt!230543) ((_ is None!1370) lt!230545)) None!1370 (ite ((_ is None!1370) lt!230545) lt!230543 (ite ((_ is None!1370) lt!230543) lt!230545 (ite (>= (size!4330 (_1!3482 (v!16191 lt!230543))) (size!4330 (_1!3482 (v!16191 lt!230545)))) lt!230543 lt!230545)))))))

(declare-fun call!38400 () Option!1371)

(assert (=> b!548733 (= lt!230543 call!38400)))

(assert (=> b!548733 (= lt!230545 (maxPrefix!605 thiss!22590 (t!74874 rules!3103) input!2705))))

(declare-fun b!548735 () Bool)

(declare-fun res!234852 () Bool)

(assert (=> b!548735 (=> (not res!234852) (not e!331696))))

(assert (=> b!548735 (= res!234852 (= (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230546)))) (originalCharacters!1060 (_1!3482 (get!2046 lt!230546)))))))

(declare-fun b!548736 () Bool)

(declare-fun res!234854 () Bool)

(assert (=> b!548736 (=> (not res!234854) (not e!331696))))

(assert (=> b!548736 (= res!234854 (= (++!1509 (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230546)))) (_2!3482 (get!2046 lt!230546))) input!2705))))

(declare-fun bm!38395 () Bool)

(assert (=> bm!38395 (= call!38400 (maxPrefixOneRule!320 thiss!22590 (h!10808 rules!3103) input!2705))))

(declare-fun b!548737 () Bool)

(declare-fun res!234853 () Bool)

(assert (=> b!548737 (=> (not res!234853) (not e!331696))))

(assert (=> b!548737 (= res!234853 (matchR!514 (regex!1021 (rule!1741 (_1!3482 (get!2046 lt!230546)))) (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230546))))))))

(declare-fun b!548738 () Bool)

(declare-fun e!331695 () Bool)

(assert (=> b!548738 (= e!331695 e!331696)))

(declare-fun res!234855 () Bool)

(assert (=> b!548738 (=> (not res!234855) (not e!331696))))

(assert (=> b!548738 (= res!234855 (isDefined!1183 lt!230546))))

(declare-fun d!192018 () Bool)

(assert (=> d!192018 e!331695))

(declare-fun res!234849 () Bool)

(assert (=> d!192018 (=> res!234849 e!331695)))

(assert (=> d!192018 (= res!234849 (isEmpty!3905 lt!230546))))

(assert (=> d!192018 (= lt!230546 e!331694)))

(declare-fun c!103315 () Bool)

(assert (=> d!192018 (= c!103315 (and ((_ is Cons!5407) rules!3103) ((_ is Nil!5407) (t!74874 rules!3103))))))

(declare-fun lt!230547 () Unit!9517)

(declare-fun lt!230544 () Unit!9517)

(assert (=> d!192018 (= lt!230547 lt!230544)))

(assert (=> d!192018 (isPrefix!663 input!2705 input!2705)))

(assert (=> d!192018 (= lt!230544 (lemmaIsPrefixRefl!403 input!2705 input!2705))))

(declare-fun rulesValidInductive!360 (LexerInterface!907 List!5417) Bool)

(assert (=> d!192018 (rulesValidInductive!360 thiss!22590 rules!3103)))

(assert (=> d!192018 (= (maxPrefix!605 thiss!22590 rules!3103 input!2705) lt!230546)))

(declare-fun b!548734 () Bool)

(assert (=> b!548734 (= e!331696 (contains!1263 rules!3103 (rule!1741 (_1!3482 (get!2046 lt!230546)))))))

(declare-fun b!548739 () Bool)

(assert (=> b!548739 (= e!331694 call!38400)))

(declare-fun b!548740 () Bool)

(declare-fun res!234850 () Bool)

(assert (=> b!548740 (=> (not res!234850) (not e!331696))))

(assert (=> b!548740 (= res!234850 (< (size!4331 (_2!3482 (get!2046 lt!230546))) (size!4331 input!2705)))))

(assert (= (and d!192018 c!103315) b!548739))

(assert (= (and d!192018 (not c!103315)) b!548733))

(assert (= (or b!548739 b!548733) bm!38395))

(assert (= (and d!192018 (not res!234849)) b!548738))

(assert (= (and b!548738 res!234855) b!548735))

(assert (= (and b!548735 res!234852) b!548740))

(assert (= (and b!548740 res!234850) b!548736))

(assert (= (and b!548736 res!234854) b!548732))

(assert (= (and b!548732 res!234851) b!548737))

(assert (= (and b!548737 res!234853) b!548734))

(declare-fun m!797963 () Bool)

(assert (=> b!548732 m!797963))

(declare-fun m!797965 () Bool)

(assert (=> b!548732 m!797965))

(assert (=> b!548732 m!797965))

(declare-fun m!797967 () Bool)

(assert (=> b!548732 m!797967))

(assert (=> b!548734 m!797963))

(declare-fun m!797969 () Bool)

(assert (=> b!548734 m!797969))

(declare-fun m!797971 () Bool)

(assert (=> bm!38395 m!797971))

(declare-fun m!797973 () Bool)

(assert (=> b!548733 m!797973))

(assert (=> b!548740 m!797963))

(declare-fun m!797975 () Bool)

(assert (=> b!548740 m!797975))

(assert (=> b!548740 m!797457))

(declare-fun m!797977 () Bool)

(assert (=> d!192018 m!797977))

(assert (=> d!192018 m!797141))

(assert (=> d!192018 m!797171))

(declare-fun m!797979 () Bool)

(assert (=> d!192018 m!797979))

(assert (=> b!548737 m!797963))

(declare-fun m!797981 () Bool)

(assert (=> b!548737 m!797981))

(assert (=> b!548737 m!797981))

(declare-fun m!797983 () Bool)

(assert (=> b!548737 m!797983))

(assert (=> b!548737 m!797983))

(declare-fun m!797985 () Bool)

(assert (=> b!548737 m!797985))

(declare-fun m!797987 () Bool)

(assert (=> b!548738 m!797987))

(assert (=> b!548735 m!797963))

(assert (=> b!548735 m!797981))

(assert (=> b!548735 m!797981))

(assert (=> b!548735 m!797983))

(assert (=> b!548736 m!797963))

(assert (=> b!548736 m!797981))

(assert (=> b!548736 m!797981))

(assert (=> b!548736 m!797983))

(assert (=> b!548736 m!797983))

(declare-fun m!797989 () Bool)

(assert (=> b!548736 m!797989))

(assert (=> b!548087 d!192018))

(declare-fun d!192020 () Bool)

(assert (=> d!192020 (= (isDefined!1183 lt!230314) (not (isEmpty!3905 lt!230314)))))

(declare-fun bs!67791 () Bool)

(assert (= bs!67791 d!192020))

(declare-fun m!797991 () Bool)

(assert (=> bs!67791 m!797991))

(assert (=> b!548085 d!192020))

(declare-fun b!548741 () Bool)

(declare-fun res!234858 () Bool)

(declare-fun e!331699 () Bool)

(assert (=> b!548741 (=> (not res!234858) (not e!331699))))

(declare-fun lt!230551 () Option!1371)

(assert (=> b!548741 (= res!234858 (= (value!33965 (_1!3482 (get!2046 lt!230551))) (apply!1296 (transformation!1021 (rule!1741 (_1!3482 (get!2046 lt!230551)))) (seqFromList!1219 (originalCharacters!1060 (_1!3482 (get!2046 lt!230551)))))))))

(declare-fun b!548742 () Bool)

(declare-fun e!331697 () Option!1371)

(declare-fun lt!230548 () Option!1371)

(declare-fun lt!230550 () Option!1371)

(assert (=> b!548742 (= e!331697 (ite (and ((_ is None!1370) lt!230548) ((_ is None!1370) lt!230550)) None!1370 (ite ((_ is None!1370) lt!230550) lt!230548 (ite ((_ is None!1370) lt!230548) lt!230550 (ite (>= (size!4330 (_1!3482 (v!16191 lt!230548))) (size!4330 (_1!3482 (v!16191 lt!230550)))) lt!230548 lt!230550)))))))

(declare-fun call!38401 () Option!1371)

(assert (=> b!548742 (= lt!230548 call!38401)))

(assert (=> b!548742 (= lt!230550 (maxPrefix!605 thiss!22590 (t!74874 rules!3103) lt!230303))))

(declare-fun b!548744 () Bool)

(declare-fun res!234859 () Bool)

(assert (=> b!548744 (=> (not res!234859) (not e!331699))))

(assert (=> b!548744 (= res!234859 (= (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230551)))) (originalCharacters!1060 (_1!3482 (get!2046 lt!230551)))))))

(declare-fun b!548745 () Bool)

(declare-fun res!234861 () Bool)

(assert (=> b!548745 (=> (not res!234861) (not e!331699))))

(assert (=> b!548745 (= res!234861 (= (++!1509 (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230551)))) (_2!3482 (get!2046 lt!230551))) lt!230303))))

(declare-fun bm!38396 () Bool)

(assert (=> bm!38396 (= call!38401 (maxPrefixOneRule!320 thiss!22590 (h!10808 rules!3103) lt!230303))))

(declare-fun b!548746 () Bool)

(declare-fun res!234860 () Bool)

(assert (=> b!548746 (=> (not res!234860) (not e!331699))))

(assert (=> b!548746 (= res!234860 (matchR!514 (regex!1021 (rule!1741 (_1!3482 (get!2046 lt!230551)))) (list!2241 (charsOf!650 (_1!3482 (get!2046 lt!230551))))))))

(declare-fun b!548747 () Bool)

(declare-fun e!331698 () Bool)

(assert (=> b!548747 (= e!331698 e!331699)))

(declare-fun res!234862 () Bool)

(assert (=> b!548747 (=> (not res!234862) (not e!331699))))

(assert (=> b!548747 (= res!234862 (isDefined!1183 lt!230551))))

(declare-fun d!192022 () Bool)

(assert (=> d!192022 e!331698))

(declare-fun res!234856 () Bool)

(assert (=> d!192022 (=> res!234856 e!331698)))

(assert (=> d!192022 (= res!234856 (isEmpty!3905 lt!230551))))

(assert (=> d!192022 (= lt!230551 e!331697)))

(declare-fun c!103316 () Bool)

(assert (=> d!192022 (= c!103316 (and ((_ is Cons!5407) rules!3103) ((_ is Nil!5407) (t!74874 rules!3103))))))

(declare-fun lt!230552 () Unit!9517)

(declare-fun lt!230549 () Unit!9517)

(assert (=> d!192022 (= lt!230552 lt!230549)))

(assert (=> d!192022 (isPrefix!663 lt!230303 lt!230303)))

(assert (=> d!192022 (= lt!230549 (lemmaIsPrefixRefl!403 lt!230303 lt!230303))))

(assert (=> d!192022 (rulesValidInductive!360 thiss!22590 rules!3103)))

(assert (=> d!192022 (= (maxPrefix!605 thiss!22590 rules!3103 lt!230303) lt!230551)))

(declare-fun b!548743 () Bool)

(assert (=> b!548743 (= e!331699 (contains!1263 rules!3103 (rule!1741 (_1!3482 (get!2046 lt!230551)))))))

(declare-fun b!548748 () Bool)

(assert (=> b!548748 (= e!331697 call!38401)))

(declare-fun b!548749 () Bool)

(declare-fun res!234857 () Bool)

(assert (=> b!548749 (=> (not res!234857) (not e!331699))))

(assert (=> b!548749 (= res!234857 (< (size!4331 (_2!3482 (get!2046 lt!230551))) (size!4331 lt!230303)))))

(assert (= (and d!192022 c!103316) b!548748))

(assert (= (and d!192022 (not c!103316)) b!548742))

(assert (= (or b!548748 b!548742) bm!38396))

(assert (= (and d!192022 (not res!234856)) b!548747))

(assert (= (and b!548747 res!234862) b!548744))

(assert (= (and b!548744 res!234859) b!548749))

(assert (= (and b!548749 res!234857) b!548745))

(assert (= (and b!548745 res!234861) b!548741))

(assert (= (and b!548741 res!234858) b!548746))

(assert (= (and b!548746 res!234860) b!548743))

(declare-fun m!797993 () Bool)

(assert (=> b!548741 m!797993))

(declare-fun m!797995 () Bool)

(assert (=> b!548741 m!797995))

(assert (=> b!548741 m!797995))

(declare-fun m!797997 () Bool)

(assert (=> b!548741 m!797997))

(assert (=> b!548743 m!797993))

(declare-fun m!797999 () Bool)

(assert (=> b!548743 m!797999))

(declare-fun m!798001 () Bool)

(assert (=> bm!38396 m!798001))

(declare-fun m!798003 () Bool)

(assert (=> b!548742 m!798003))

(assert (=> b!548749 m!797993))

(declare-fun m!798005 () Bool)

(assert (=> b!548749 m!798005))

(assert (=> b!548749 m!797759))

(declare-fun m!798007 () Bool)

(assert (=> d!192022 m!798007))

(declare-fun m!798009 () Bool)

(assert (=> d!192022 m!798009))

(declare-fun m!798011 () Bool)

(assert (=> d!192022 m!798011))

(assert (=> d!192022 m!797979))

(assert (=> b!548746 m!797993))

(declare-fun m!798013 () Bool)

(assert (=> b!548746 m!798013))

(assert (=> b!548746 m!798013))

(declare-fun m!798015 () Bool)

(assert (=> b!548746 m!798015))

(assert (=> b!548746 m!798015))

(declare-fun m!798017 () Bool)

(assert (=> b!548746 m!798017))

(declare-fun m!798019 () Bool)

(assert (=> b!548747 m!798019))

(assert (=> b!548744 m!797993))

(assert (=> b!548744 m!798013))

(assert (=> b!548744 m!798013))

(assert (=> b!548744 m!798015))

(assert (=> b!548745 m!797993))

(assert (=> b!548745 m!798013))

(assert (=> b!548745 m!798013))

(assert (=> b!548745 m!798015))

(assert (=> b!548745 m!798015))

(declare-fun m!798021 () Bool)

(assert (=> b!548745 m!798021))

(assert (=> b!548085 d!192022))

(declare-fun e!331700 () Bool)

(declare-fun b!548753 () Bool)

(declare-fun lt!230553 () List!5416)

(assert (=> b!548753 (= e!331700 (or (not (= suffix!1342 Nil!5406)) (= lt!230553 input!2705)))))

(declare-fun b!548751 () Bool)

(declare-fun e!331701 () List!5416)

(assert (=> b!548751 (= e!331701 (Cons!5406 (h!10807 input!2705) (++!1509 (t!74873 input!2705) suffix!1342)))))

(declare-fun d!192024 () Bool)

(assert (=> d!192024 e!331700))

(declare-fun res!234863 () Bool)

(assert (=> d!192024 (=> (not res!234863) (not e!331700))))

(assert (=> d!192024 (= res!234863 (= (content!946 lt!230553) ((_ map or) (content!946 input!2705) (content!946 suffix!1342))))))

(assert (=> d!192024 (= lt!230553 e!331701)))

(declare-fun c!103317 () Bool)

(assert (=> d!192024 (= c!103317 ((_ is Nil!5406) input!2705))))

(assert (=> d!192024 (= (++!1509 input!2705 suffix!1342) lt!230553)))

(declare-fun b!548750 () Bool)

(assert (=> b!548750 (= e!331701 suffix!1342)))

(declare-fun b!548752 () Bool)

(declare-fun res!234864 () Bool)

(assert (=> b!548752 (=> (not res!234864) (not e!331700))))

(assert (=> b!548752 (= res!234864 (= (size!4331 lt!230553) (+ (size!4331 input!2705) (size!4331 suffix!1342))))))

(assert (= (and d!192024 c!103317) b!548750))

(assert (= (and d!192024 (not c!103317)) b!548751))

(assert (= (and d!192024 res!234863) b!548752))

(assert (= (and b!548752 res!234864) b!548753))

(declare-fun m!798023 () Bool)

(assert (=> b!548751 m!798023))

(declare-fun m!798025 () Bool)

(assert (=> d!192024 m!798025))

(declare-fun m!798027 () Bool)

(assert (=> d!192024 m!798027))

(assert (=> d!192024 m!797435))

(declare-fun m!798029 () Bool)

(assert (=> b!548752 m!798029))

(assert (=> b!548752 m!797457))

(assert (=> b!548752 m!797439))

(assert (=> b!548085 d!192024))

(declare-fun b!548758 () Bool)

(declare-fun e!331704 () Bool)

(declare-fun tp!173826 () Bool)

(assert (=> b!548758 (= e!331704 (and tp_is_empty!3065 tp!173826))))

(assert (=> b!548105 (= tp!173773 e!331704)))

(assert (= (and b!548105 ((_ is Cons!5406) (t!74873 input!2705))) b!548758))

(declare-fun b!548759 () Bool)

(declare-fun e!331705 () Bool)

(declare-fun tp!173827 () Bool)

(assert (=> b!548759 (= e!331705 (and tp_is_empty!3065 tp!173827))))

(assert (=> b!548109 (= tp!173765 e!331705)))

(assert (= (and b!548109 ((_ is Cons!5406) (originalCharacters!1060 token!491))) b!548759))

(declare-fun b!548770 () Bool)

(declare-fun e!331708 () Bool)

(assert (=> b!548770 (= e!331708 tp_is_empty!3065)))

(assert (=> b!548098 (= tp!173771 e!331708)))

(declare-fun b!548773 () Bool)

(declare-fun tp!173842 () Bool)

(declare-fun tp!173840 () Bool)

(assert (=> b!548773 (= e!331708 (and tp!173842 tp!173840))))

(declare-fun b!548772 () Bool)

(declare-fun tp!173841 () Bool)

(assert (=> b!548772 (= e!331708 tp!173841)))

(declare-fun b!548771 () Bool)

(declare-fun tp!173838 () Bool)

(declare-fun tp!173839 () Bool)

(assert (=> b!548771 (= e!331708 (and tp!173838 tp!173839))))

(assert (= (and b!548098 ((_ is ElementMatch!1355) (regex!1021 (rule!1741 token!491)))) b!548770))

(assert (= (and b!548098 ((_ is Concat!2400) (regex!1021 (rule!1741 token!491)))) b!548771))

(assert (= (and b!548098 ((_ is Star!1355) (regex!1021 (rule!1741 token!491)))) b!548772))

(assert (= (and b!548098 ((_ is Union!1355) (regex!1021 (rule!1741 token!491)))) b!548773))

(declare-fun b!548784 () Bool)

(declare-fun b_free!15269 () Bool)

(declare-fun b_next!15285 () Bool)

(assert (=> b!548784 (= b_free!15269 (not b_next!15285))))

(declare-fun tb!48087 () Bool)

(declare-fun t!74937 () Bool)

(assert (=> (and b!548784 (= (toValue!1868 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toValue!1868 (transformation!1021 (rule!1741 token!491)))) t!74937) tb!48087))

(declare-fun result!53802 () Bool)

(assert (= result!53802 result!53734))

(assert (=> d!191834 t!74937))

(assert (=> d!191838 t!74937))

(declare-fun tb!48089 () Bool)

(declare-fun t!74939 () Bool)

(assert (=> (and b!548784 (= (toValue!1868 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toValue!1868 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74939) tb!48089))

(declare-fun result!53804 () Bool)

(assert (= result!53804 result!53788))

(assert (=> d!191930 t!74939))

(assert (=> d!191972 t!74939))

(declare-fun b_and!53607 () Bool)

(declare-fun tp!173853 () Bool)

(assert (=> b!548784 (= tp!173853 (and (=> t!74937 result!53802) (=> t!74939 result!53804) b_and!53607))))

(declare-fun b_free!15271 () Bool)

(declare-fun b_next!15287 () Bool)

(assert (=> b!548784 (= b_free!15271 (not b_next!15287))))

(declare-fun t!74941 () Bool)

(declare-fun tb!48091 () Bool)

(assert (=> (and b!548784 (= (toChars!1727 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toChars!1727 (transformation!1021 (rule!1741 token!491)))) t!74941) tb!48091))

(declare-fun result!53806 () Bool)

(assert (= result!53806 result!53780))

(assert (=> d!191838 t!74941))

(declare-fun tb!48093 () Bool)

(declare-fun t!74943 () Bool)

(assert (=> (and b!548784 (= (toChars!1727 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74943) tb!48093))

(declare-fun result!53808 () Bool)

(assert (= result!53808 result!53792))

(assert (=> d!191982 t!74943))

(declare-fun t!74945 () Bool)

(declare-fun tb!48095 () Bool)

(assert (=> (and b!548784 (= (toChars!1727 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toChars!1727 (transformation!1021 (rule!1741 (_1!3482 (v!16191 lt!230326)))))) t!74945) tb!48095))

(declare-fun result!53810 () Bool)

(assert (= result!53810 result!53784))

(assert (=> d!191930 t!74945))

(declare-fun t!74947 () Bool)

(declare-fun tb!48097 () Bool)

(assert (=> (and b!548784 (= (toChars!1727 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toChars!1727 (transformation!1021 (rule!1741 token!491)))) t!74947) tb!48097))

(declare-fun result!53812 () Bool)

(assert (= result!53812 result!53728))

(assert (=> d!191806 t!74947))

(assert (=> b!548619 t!74947))

(declare-fun b_and!53609 () Bool)

(declare-fun tp!173854 () Bool)

(assert (=> b!548784 (= tp!173854 (and (=> t!74947 result!53812) (=> t!74945 result!53810) (=> t!74943 result!53808) (=> t!74941 result!53806) b_and!53609))))

(declare-fun e!331720 () Bool)

(assert (=> b!548784 (= e!331720 (and tp!173853 tp!173854))))

(declare-fun b!548783 () Bool)

(declare-fun e!331717 () Bool)

(declare-fun tp!173851 () Bool)

(assert (=> b!548783 (= e!331717 (and tp!173851 (inv!6778 (tag!1283 (h!10808 (t!74874 rules!3103)))) (inv!6782 (transformation!1021 (h!10808 (t!74874 rules!3103)))) e!331720))))

(declare-fun b!548782 () Bool)

(declare-fun e!331719 () Bool)

(declare-fun tp!173852 () Bool)

(assert (=> b!548782 (= e!331719 (and e!331717 tp!173852))))

(assert (=> b!548103 (= tp!173769 e!331719)))

(assert (= b!548783 b!548784))

(assert (= b!548782 b!548783))

(assert (= (and b!548103 ((_ is Cons!5407) (t!74874 rules!3103))) b!548782))

(declare-fun m!798031 () Bool)

(assert (=> b!548783 m!798031))

(declare-fun m!798033 () Bool)

(assert (=> b!548783 m!798033))

(declare-fun b!548785 () Bool)

(declare-fun e!331721 () Bool)

(declare-fun tp!173855 () Bool)

(assert (=> b!548785 (= e!331721 (and tp_is_empty!3065 tp!173855))))

(assert (=> b!548090 (= tp!173768 e!331721)))

(assert (= (and b!548090 ((_ is Cons!5406) (t!74873 suffix!1342))) b!548785))

(declare-fun b!548786 () Bool)

(declare-fun e!331722 () Bool)

(assert (=> b!548786 (= e!331722 tp_is_empty!3065)))

(assert (=> b!548096 (= tp!173767 e!331722)))

(declare-fun b!548789 () Bool)

(declare-fun tp!173860 () Bool)

(declare-fun tp!173858 () Bool)

(assert (=> b!548789 (= e!331722 (and tp!173860 tp!173858))))

(declare-fun b!548788 () Bool)

(declare-fun tp!173859 () Bool)

(assert (=> b!548788 (= e!331722 tp!173859)))

(declare-fun b!548787 () Bool)

(declare-fun tp!173856 () Bool)

(declare-fun tp!173857 () Bool)

(assert (=> b!548787 (= e!331722 (and tp!173856 tp!173857))))

(assert (= (and b!548096 ((_ is ElementMatch!1355) (regex!1021 (h!10808 rules!3103)))) b!548786))

(assert (= (and b!548096 ((_ is Concat!2400) (regex!1021 (h!10808 rules!3103)))) b!548787))

(assert (= (and b!548096 ((_ is Star!1355) (regex!1021 (h!10808 rules!3103)))) b!548788))

(assert (= (and b!548096 ((_ is Union!1355) (regex!1021 (h!10808 rules!3103)))) b!548789))

(declare-fun b_lambda!21125 () Bool)

(assert (= b_lambda!21119 (or (and b!548084 b_free!15259 (= (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toChars!1727 (transformation!1021 (rule!1741 token!491))))) (and b!548102 b_free!15263) (and b!548784 b_free!15271 (= (toChars!1727 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toChars!1727 (transformation!1021 (rule!1741 token!491))))) b_lambda!21125)))

(declare-fun b_lambda!21127 () Bool)

(assert (= b_lambda!21081 (or (and b!548084 b_free!15259 (= (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toChars!1727 (transformation!1021 (rule!1741 token!491))))) (and b!548102 b_free!15263) (and b!548784 b_free!15271 (= (toChars!1727 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toChars!1727 (transformation!1021 (rule!1741 token!491))))) b_lambda!21127)))

(declare-fun b_lambda!21129 () Bool)

(assert (= b_lambda!21111 (or (and b!548084 b_free!15259 (= (toChars!1727 (transformation!1021 (h!10808 rules!3103))) (toChars!1727 (transformation!1021 (rule!1741 token!491))))) (and b!548102 b_free!15263) (and b!548784 b_free!15271 (= (toChars!1727 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toChars!1727 (transformation!1021 (rule!1741 token!491))))) b_lambda!21129)))

(declare-fun b_lambda!21131 () Bool)

(assert (= b_lambda!21113 (or (and b!548084 b_free!15257 (= (toValue!1868 (transformation!1021 (h!10808 rules!3103))) (toValue!1868 (transformation!1021 (rule!1741 token!491))))) (and b!548102 b_free!15261) (and b!548784 b_free!15269 (= (toValue!1868 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toValue!1868 (transformation!1021 (rule!1741 token!491))))) b_lambda!21131)))

(declare-fun b_lambda!21133 () Bool)

(assert (= b_lambda!21083 (or (and b!548084 b_free!15257 (= (toValue!1868 (transformation!1021 (h!10808 rules!3103))) (toValue!1868 (transformation!1021 (rule!1741 token!491))))) (and b!548102 b_free!15261) (and b!548784 b_free!15269 (= (toValue!1868 (transformation!1021 (h!10808 (t!74874 rules!3103)))) (toValue!1868 (transformation!1021 (rule!1741 token!491))))) b_lambda!21133)))

(check-sat (not b!548713) (not b!548571) b_and!53609 (not d!191818) (not b!548692) (not b!548734) (not b!548697) (not d!191836) (not b!548695) (not d!191996) (not b!548592) (not tb!48031) (not b!548772) (not d!191944) (not d!191814) b_and!53599 (not d!191968) (not b!548601) (not b!548374) (not b_lambda!21133) (not b!548735) (not b!548682) (not b_next!15275) (not b!548574) (not b_next!15273) (not b!548302) (not b!548771) (not b_next!15277) (not d!191838) (not b!548363) (not d!192016) (not d!191984) (not b!548740) (not b!548742) (not b!548709) (not d!192014) (not b!548607) (not b!548402) (not tb!48071) (not b!548408) (not d!192002) (not b!548311) (not tb!48035) (not d!191938) (not b_lambda!21127) (not b!548375) (not b!548678) (not b!548305) (not b!548635) (not b!548749) (not d!192018) (not tb!48079) (not b!548783) (not b!548674) (not b!548378) (not d!191978) (not b!548788) (not b!548634) (not b!548673) (not b!548706) (not tb!48075) (not b!548381) (not b!548348) (not b!548620) (not b!548710) (not d!191826) b_and!53605 (not b_lambda!21129) (not b!548631) (not d!191990) (not b!548591) (not b!548580) (not b!548304) (not bm!38395) (not d!191934) (not b!548787) (not b!548751) (not d!191816) (not d!192024) (not b!548672) (not d!192000) (not bm!38380) b_and!53601 (not d!191964) (not b_next!15279) (not d!192020) (not d!191830) (not b!548789) (not d!192022) b_and!53603 (not d!192004) (not d!191994) (not d!191954) (not b_lambda!21117) (not b!548743) (not b!548598) (not b!548785) (not b!548342) (not b!548691) (not b!548676) (not d!191956) (not b!548698) (not b!548681) (not b!548600) (not b_lambda!21121) (not b!548687) (not b!548608) (not b!548576) (not b_lambda!21125) (not d!191966) (not b!548693) (not d!191992) (not b_lambda!21115) (not bm!38391) (not b!548700) (not d!191812) (not d!191936) (not b!548745) b_and!53607 (not b_next!15285) (not b!548403) (not b!548605) (not b!548737) (not b!548758) (not b!548702) tp_is_empty!3065 (not b!548677) (not b!548744) (not b!548733) (not b!548579) (not d!191958) (not d!191982) (not b!548577) (not b!548299) (not bm!38383) (not d!191930) (not d!192008) (not b!548602) (not b!548404) (not d!191770) (not b!548680) (not b!548747) (not b!548699) (not b!548619) (not b!548659) (not d!191928) (not b!548409) (not b!548359) (not d!192010) (not b!548573) (not d!191998) (not b_lambda!21131) (not d!192006) (not b!548406) (not b!548298) (not b!548690) (not b!548782) (not b_next!15287) (not b!548773) (not b!548707) (not d!191806) (not d!191824) (not bm!38392) (not b!548582) (not tb!48083) (not b!548572) (not d!191926) (not b!548741) (not b!548587) (not b!548732) (not d!191798) (not bm!38396) (not b!548736) (not b_lambda!21123) (not b!548407) (not b!548759) (not b!548578) (not b!548746) (not d!191782) (not b!548752) (not b!548410) (not b!548738) (not b!548614) (not d!191940) (not d!191932))
(check-sat b_and!53609 b_and!53599 (not b_next!15277) b_and!53605 b_and!53603 (not b_next!15287) (not b_next!15275) (not b_next!15273) b_and!53601 (not b_next!15279) b_and!53607 (not b_next!15285))

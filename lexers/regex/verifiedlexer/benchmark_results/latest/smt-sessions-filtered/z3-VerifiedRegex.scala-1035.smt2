; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51560 () Bool)

(assert start!51560)

(declare-fun b!555186 () Bool)

(declare-fun b_free!15601 () Bool)

(declare-fun b_next!15617 () Bool)

(assert (=> b!555186 (= b_free!15601 (not b_next!15617))))

(declare-fun tp!175504 () Bool)

(declare-fun b_and!54235 () Bool)

(assert (=> b!555186 (= tp!175504 b_and!54235)))

(declare-fun b_free!15603 () Bool)

(declare-fun b_next!15619 () Bool)

(assert (=> b!555186 (= b_free!15603 (not b_next!15619))))

(declare-fun tp!175506 () Bool)

(declare-fun b_and!54237 () Bool)

(assert (=> b!555186 (= tp!175506 b_and!54237)))

(declare-fun b!555200 () Bool)

(declare-fun b_free!15605 () Bool)

(declare-fun b_next!15621 () Bool)

(assert (=> b!555200 (= b_free!15605 (not b_next!15621))))

(declare-fun tp!175508 () Bool)

(declare-fun b_and!54239 () Bool)

(assert (=> b!555200 (= tp!175508 b_and!54239)))

(declare-fun b_free!15607 () Bool)

(declare-fun b_next!15623 () Bool)

(assert (=> b!555200 (= b_free!15607 (not b_next!15623))))

(declare-fun tp!175503 () Bool)

(declare-fun b_and!54241 () Bool)

(assert (=> b!555200 (= tp!175503 b_and!54241)))

(declare-fun e!336050 () Bool)

(assert (=> b!555186 (= e!336050 (and tp!175504 tp!175506))))

(declare-fun b!555187 () Bool)

(declare-fun e!336061 () Bool)

(declare-fun e!336063 () Bool)

(assert (=> b!555187 (= e!336061 e!336063)))

(declare-fun res!238401 () Bool)

(assert (=> b!555187 (=> (not res!238401) (not e!336063))))

(declare-datatypes ((C!3704 0))(
  ( (C!3705 (val!2078 Int)) )
))
(declare-datatypes ((List!5534 0))(
  ( (Nil!5524) (Cons!5524 (h!10925 C!3704) (t!75401 List!5534)) )
))
(declare-fun suffix!1342 () List!5534)

(declare-datatypes ((List!5535 0))(
  ( (Nil!5525) (Cons!5525 (h!10926 (_ BitVec 16)) (t!75402 List!5535)) )
))
(declare-datatypes ((TokenValue!1081 0))(
  ( (FloatLiteralValue!2162 (text!8012 List!5535)) (TokenValueExt!1080 (__x!4060 Int)) (Broken!5405 (value!34965 List!5535)) (Object!1090) (End!1081) (Def!1081) (Underscore!1081) (Match!1081) (Else!1081) (Error!1081) (Case!1081) (If!1081) (Extends!1081) (Abstract!1081) (Class!1081) (Val!1081) (DelimiterValue!2162 (del!1141 List!5535)) (KeywordValue!1087 (value!34966 List!5535)) (CommentValue!2162 (value!34967 List!5535)) (WhitespaceValue!2162 (value!34968 List!5535)) (IndentationValue!1081 (value!34969 List!5535)) (String!7148) (Int32!1081) (Broken!5406 (value!34970 List!5535)) (Boolean!1082) (Unit!9794) (OperatorValue!1084 (op!1141 List!5535)) (IdentifierValue!2162 (value!34971 List!5535)) (IdentifierValue!2163 (value!34972 List!5535)) (WhitespaceValue!2163 (value!34973 List!5535)) (True!2162) (False!2162) (Broken!5407 (value!34974 List!5535)) (Broken!5408 (value!34975 List!5535)) (True!2163) (RightBrace!1081) (RightBracket!1081) (Colon!1081) (Null!1081) (Comma!1081) (LeftBracket!1081) (False!2163) (LeftBrace!1081) (ImaginaryLiteralValue!1081 (text!8013 List!5535)) (StringLiteralValue!3243 (value!34976 List!5535)) (EOFValue!1081 (value!34977 List!5535)) (IdentValue!1081 (value!34978 List!5535)) (DelimiterValue!2163 (value!34979 List!5535)) (DedentValue!1081 (value!34980 List!5535)) (NewLineValue!1081 (value!34981 List!5535)) (IntegerValue!3243 (value!34982 (_ BitVec 32)) (text!8014 List!5535)) (IntegerValue!3244 (value!34983 Int) (text!8015 List!5535)) (Times!1081) (Or!1081) (Equal!1081) (Minus!1081) (Broken!5409 (value!34984 List!5535)) (And!1081) (Div!1081) (LessEqual!1081) (Mod!1081) (Concat!2472) (Not!1081) (Plus!1081) (SpaceValue!1081 (value!34985 List!5535)) (IntegerValue!3245 (value!34986 Int) (text!8016 List!5535)) (StringLiteralValue!3244 (text!8017 List!5535)) (FloatLiteralValue!2163 (text!8018 List!5535)) (BytesLiteralValue!1081 (value!34987 List!5535)) (CommentValue!2163 (value!34988 List!5535)) (StringLiteralValue!3245 (value!34989 List!5535)) (ErrorTokenValue!1081 (msg!1142 List!5535)) )
))
(declare-datatypes ((Regex!1391 0))(
  ( (ElementMatch!1391 (c!104138 C!3704)) (Concat!2473 (regOne!3294 Regex!1391) (regTwo!3294 Regex!1391)) (EmptyExpr!1391) (Star!1391 (reg!1720 Regex!1391)) (EmptyLang!1391) (Union!1391 (regOne!3295 Regex!1391) (regTwo!3295 Regex!1391)) )
))
(declare-datatypes ((String!7149 0))(
  ( (String!7150 (value!34990 String)) )
))
(declare-datatypes ((IArray!3549 0))(
  ( (IArray!3550 (innerList!1832 List!5534)) )
))
(declare-datatypes ((Conc!1774 0))(
  ( (Node!1774 (left!4543 Conc!1774) (right!4873 Conc!1774) (csize!3778 Int) (cheight!1985 Int)) (Leaf!2810 (xs!4411 IArray!3549) (csize!3779 Int)) (Empty!1774) )
))
(declare-datatypes ((BalanceConc!3556 0))(
  ( (BalanceConc!3557 (c!104139 Conc!1774)) )
))
(declare-datatypes ((TokenValueInjection!1930 0))(
  ( (TokenValueInjection!1931 (toValue!1908 Int) (toChars!1767 Int)) )
))
(declare-datatypes ((Rule!1914 0))(
  ( (Rule!1915 (regex!1057 Regex!1391) (tag!1319 String!7149) (isSeparator!1057 Bool) (transformation!1057 TokenValueInjection!1930)) )
))
(declare-datatypes ((Token!1850 0))(
  ( (Token!1851 (value!34991 TokenValue!1081) (rule!1789 Rule!1914) (size!4406 Int) (originalCharacters!1096 List!5534)) )
))
(declare-fun token!491 () Token!1850)

(declare-datatypes ((tuple2!6532 0))(
  ( (tuple2!6533 (_1!3530 Token!1850) (_2!3530 List!5534)) )
))
(declare-fun lt!234510 () tuple2!6532)

(assert (=> b!555187 (= res!238401 (and (= (_1!3530 lt!234510) token!491) (= (_2!3530 lt!234510) suffix!1342)))))

(declare-datatypes ((Option!1407 0))(
  ( (None!1406) (Some!1406 (v!16239 tuple2!6532)) )
))
(declare-fun lt!234511 () Option!1407)

(declare-fun get!2100 (Option!1407) tuple2!6532)

(assert (=> b!555187 (= lt!234510 (get!2100 lt!234511))))

(declare-fun b!555188 () Bool)

(declare-fun e!336048 () Bool)

(declare-fun e!336060 () Bool)

(assert (=> b!555188 (= e!336048 e!336060)))

(declare-fun res!238418 () Bool)

(assert (=> b!555188 (=> res!238418 e!336060)))

(declare-fun lt!234499 () Int)

(declare-fun lt!234512 () Int)

(assert (=> b!555188 (= res!238418 (>= lt!234499 lt!234512))))

(declare-fun e!336045 () Bool)

(assert (=> b!555188 e!336045))

(declare-fun res!238408 () Bool)

(assert (=> b!555188 (=> (not res!238408) (not e!336045))))

(declare-datatypes ((LexerInterface!943 0))(
  ( (LexerInterfaceExt!940 (__x!4061 Int)) (Lexer!941) )
))
(declare-fun thiss!22590 () LexerInterface!943)

(declare-fun lt!234490 () List!5534)

(declare-fun lt!234492 () TokenValue!1081)

(declare-fun lt!234497 () List!5534)

(declare-fun maxPrefixOneRule!342 (LexerInterface!943 Rule!1914 List!5534) Option!1407)

(assert (=> b!555188 (= res!238408 (= (maxPrefixOneRule!342 thiss!22590 (rule!1789 token!491) lt!234490) (Some!1406 (tuple2!6533 (Token!1851 lt!234492 (rule!1789 token!491) lt!234512 lt!234497) suffix!1342))))))

(declare-datatypes ((Unit!9795 0))(
  ( (Unit!9796) )
))
(declare-fun lt!234513 () Unit!9795)

(declare-datatypes ((List!5536 0))(
  ( (Nil!5526) (Cons!5526 (h!10927 Rule!1914) (t!75403 List!5536)) )
))
(declare-fun rules!3103 () List!5536)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!92 (LexerInterface!943 List!5536 List!5534 List!5534 List!5534 Rule!1914) Unit!9795)

(assert (=> b!555188 (= lt!234513 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!92 thiss!22590 rules!3103 lt!234497 lt!234490 suffix!1342 (rule!1789 token!491)))))

(declare-fun lt!234496 () Option!1407)

(declare-fun input!2705 () List!5534)

(declare-fun lt!234493 () TokenValue!1081)

(declare-fun lt!234494 () List!5534)

(assert (=> b!555188 (= (maxPrefixOneRule!342 thiss!22590 (rule!1789 (_1!3530 (v!16239 lt!234496))) input!2705) (Some!1406 (tuple2!6533 (Token!1851 lt!234493 (rule!1789 (_1!3530 (v!16239 lt!234496))) lt!234499 lt!234494) (_2!3530 (v!16239 lt!234496)))))))

(declare-fun lt!234498 () Unit!9795)

(assert (=> b!555188 (= lt!234498 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!92 thiss!22590 rules!3103 lt!234494 input!2705 (_2!3530 (v!16239 lt!234496)) (rule!1789 (_1!3530 (v!16239 lt!234496)))))))

(declare-fun e!336042 () Bool)

(assert (=> b!555188 e!336042))

(declare-fun res!238407 () Bool)

(assert (=> b!555188 (=> (not res!238407) (not e!336042))))

(assert (=> b!555188 (= res!238407 (= (value!34991 token!491) lt!234492))))

(declare-fun apply!1322 (TokenValueInjection!1930 BalanceConc!3556) TokenValue!1081)

(declare-fun seqFromList!1245 (List!5534) BalanceConc!3556)

(assert (=> b!555188 (= lt!234492 (apply!1322 (transformation!1057 (rule!1789 token!491)) (seqFromList!1245 lt!234497)))))

(declare-fun lt!234489 () List!5534)

(assert (=> b!555188 (= suffix!1342 lt!234489)))

(declare-fun lt!234508 () Unit!9795)

(declare-fun lemmaSamePrefixThenSameSuffix!414 (List!5534 List!5534 List!5534 List!5534 List!5534) Unit!9795)

(assert (=> b!555188 (= lt!234508 (lemmaSamePrefixThenSameSuffix!414 lt!234497 suffix!1342 lt!234497 lt!234489 lt!234490))))

(declare-fun getSuffix!210 (List!5534 List!5534) List!5534)

(assert (=> b!555188 (= lt!234489 (getSuffix!210 lt!234490 lt!234497))))

(declare-fun b!555189 () Bool)

(declare-fun e!336043 () Bool)

(assert (=> b!555189 (= e!336045 e!336043)))

(declare-fun res!238402 () Bool)

(assert (=> b!555189 (=> res!238402 e!336043)))

(assert (=> b!555189 (= res!238402 (>= lt!234499 lt!234512))))

(declare-fun res!238406 () Bool)

(declare-fun e!336052 () Bool)

(assert (=> start!51560 (=> (not res!238406) (not e!336052))))

(get-info :version)

(assert (=> start!51560 (= res!238406 ((_ is Lexer!941) thiss!22590))))

(assert (=> start!51560 e!336052))

(declare-fun e!336047 () Bool)

(assert (=> start!51560 e!336047))

(declare-fun e!336062 () Bool)

(assert (=> start!51560 e!336062))

(declare-fun e!336059 () Bool)

(declare-fun inv!6937 (Token!1850) Bool)

(assert (=> start!51560 (and (inv!6937 token!491) e!336059)))

(assert (=> start!51560 true))

(declare-fun e!336058 () Bool)

(assert (=> start!51560 e!336058))

(declare-fun b!555190 () Bool)

(declare-fun e!336066 () Bool)

(assert (=> b!555190 (= e!336063 e!336066)))

(declare-fun res!238411 () Bool)

(assert (=> b!555190 (=> (not res!238411) (not e!336066))))

(assert (=> b!555190 (= res!238411 ((_ is Some!1406) lt!234496))))

(declare-fun maxPrefix!641 (LexerInterface!943 List!5536 List!5534) Option!1407)

(assert (=> b!555190 (= lt!234496 (maxPrefix!641 thiss!22590 rules!3103 input!2705))))

(declare-fun b!555191 () Bool)

(declare-fun res!238417 () Bool)

(assert (=> b!555191 (=> res!238417 e!336060)))

(declare-fun contains!1289 (List!5536 Rule!1914) Bool)

(assert (=> b!555191 (= res!238417 (not (contains!1289 rules!3103 (rule!1789 token!491))))))

(declare-fun b!555192 () Bool)

(declare-fun res!238405 () Bool)

(assert (=> b!555192 (=> (not res!238405) (not e!336052))))

(declare-fun rulesInvariant!906 (LexerInterface!943 List!5536) Bool)

(assert (=> b!555192 (= res!238405 (rulesInvariant!906 thiss!22590 rules!3103))))

(declare-fun b!555193 () Bool)

(declare-fun e!336064 () Bool)

(assert (=> b!555193 (= e!336052 e!336064)))

(declare-fun res!238403 () Bool)

(assert (=> b!555193 (=> (not res!238403) (not e!336064))))

(assert (=> b!555193 (= res!238403 (= lt!234497 input!2705))))

(declare-fun list!2291 (BalanceConc!3556) List!5534)

(declare-fun charsOf!686 (Token!1850) BalanceConc!3556)

(assert (=> b!555193 (= lt!234497 (list!2291 (charsOf!686 token!491)))))

(declare-fun b!555194 () Bool)

(assert (=> b!555194 (= e!336064 e!336061)))

(declare-fun res!238416 () Bool)

(assert (=> b!555194 (=> (not res!238416) (not e!336061))))

(declare-fun isDefined!1219 (Option!1407) Bool)

(assert (=> b!555194 (= res!238416 (isDefined!1219 lt!234511))))

(assert (=> b!555194 (= lt!234511 (maxPrefix!641 thiss!22590 rules!3103 lt!234490))))

(declare-fun ++!1545 (List!5534 List!5534) List!5534)

(assert (=> b!555194 (= lt!234490 (++!1545 input!2705 suffix!1342))))

(declare-fun b!555195 () Bool)

(declare-fun e!336055 () Bool)

(assert (=> b!555195 (= e!336055 (not e!336048))))

(declare-fun res!238400 () Bool)

(assert (=> b!555195 (=> res!238400 e!336048)))

(declare-fun lt!234507 () List!5534)

(declare-fun isPrefix!691 (List!5534 List!5534) Bool)

(assert (=> b!555195 (= res!238400 (not (isPrefix!691 input!2705 lt!234507)))))

(assert (=> b!555195 (isPrefix!691 lt!234497 lt!234507)))

(declare-fun lt!234515 () Unit!9795)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!538 (List!5534 List!5534) Unit!9795)

(assert (=> b!555195 (= lt!234515 (lemmaConcatTwoListThenFirstIsPrefix!538 lt!234497 suffix!1342))))

(assert (=> b!555195 (isPrefix!691 input!2705 lt!234490)))

(declare-fun lt!234503 () Unit!9795)

(assert (=> b!555195 (= lt!234503 (lemmaConcatTwoListThenFirstIsPrefix!538 input!2705 suffix!1342))))

(declare-fun e!336054 () Bool)

(assert (=> b!555195 e!336054))

(declare-fun res!238413 () Bool)

(assert (=> b!555195 (=> (not res!238413) (not e!336054))))

(assert (=> b!555195 (= res!238413 (= (value!34991 (_1!3530 (v!16239 lt!234496))) lt!234493))))

(assert (=> b!555195 (= lt!234493 (apply!1322 (transformation!1057 (rule!1789 (_1!3530 (v!16239 lt!234496)))) (seqFromList!1245 lt!234494)))))

(declare-fun lt!234491 () Unit!9795)

(declare-fun lemmaInv!193 (TokenValueInjection!1930) Unit!9795)

(assert (=> b!555195 (= lt!234491 (lemmaInv!193 (transformation!1057 (rule!1789 token!491))))))

(declare-fun lt!234501 () Unit!9795)

(assert (=> b!555195 (= lt!234501 (lemmaInv!193 (transformation!1057 (rule!1789 (_1!3530 (v!16239 lt!234496))))))))

(declare-fun ruleValid!267 (LexerInterface!943 Rule!1914) Bool)

(assert (=> b!555195 (ruleValid!267 thiss!22590 (rule!1789 token!491))))

(declare-fun lt!234505 () Unit!9795)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!124 (LexerInterface!943 Rule!1914 List!5536) Unit!9795)

(assert (=> b!555195 (= lt!234505 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!124 thiss!22590 (rule!1789 token!491) rules!3103))))

(assert (=> b!555195 (ruleValid!267 thiss!22590 (rule!1789 (_1!3530 (v!16239 lt!234496))))))

(declare-fun lt!234516 () Unit!9795)

(assert (=> b!555195 (= lt!234516 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!124 thiss!22590 (rule!1789 (_1!3530 (v!16239 lt!234496))) rules!3103))))

(assert (=> b!555195 (isPrefix!691 input!2705 input!2705)))

(declare-fun lt!234500 () Unit!9795)

(declare-fun lemmaIsPrefixRefl!429 (List!5534 List!5534) Unit!9795)

(assert (=> b!555195 (= lt!234500 (lemmaIsPrefixRefl!429 input!2705 input!2705))))

(declare-fun lt!234517 () List!5534)

(assert (=> b!555195 (= (_2!3530 (v!16239 lt!234496)) lt!234517)))

(declare-fun lt!234502 () Unit!9795)

(assert (=> b!555195 (= lt!234502 (lemmaSamePrefixThenSameSuffix!414 lt!234494 (_2!3530 (v!16239 lt!234496)) lt!234494 lt!234517 input!2705))))

(assert (=> b!555195 (= lt!234517 (getSuffix!210 input!2705 lt!234494))))

(assert (=> b!555195 (isPrefix!691 lt!234494 (++!1545 lt!234494 (_2!3530 (v!16239 lt!234496))))))

(declare-fun lt!234504 () Unit!9795)

(assert (=> b!555195 (= lt!234504 (lemmaConcatTwoListThenFirstIsPrefix!538 lt!234494 (_2!3530 (v!16239 lt!234496))))))

(declare-fun lt!234514 () Unit!9795)

(declare-fun lemmaCharactersSize!124 (Token!1850) Unit!9795)

(assert (=> b!555195 (= lt!234514 (lemmaCharactersSize!124 token!491))))

(declare-fun lt!234495 () Unit!9795)

(assert (=> b!555195 (= lt!234495 (lemmaCharactersSize!124 (_1!3530 (v!16239 lt!234496))))))

(declare-fun lt!234488 () Unit!9795)

(declare-fun e!336057 () Unit!9795)

(assert (=> b!555195 (= lt!234488 e!336057)))

(declare-fun c!104137 () Bool)

(assert (=> b!555195 (= c!104137 (> lt!234499 lt!234512))))

(declare-fun size!4407 (List!5534) Int)

(assert (=> b!555195 (= lt!234512 (size!4407 lt!234497))))

(assert (=> b!555195 (= lt!234499 (size!4407 lt!234494))))

(assert (=> b!555195 (= lt!234494 (list!2291 (charsOf!686 (_1!3530 (v!16239 lt!234496)))))))

(declare-fun lt!234506 () tuple2!6532)

(assert (=> b!555195 (= lt!234496 (Some!1406 lt!234506))))

(assert (=> b!555195 (= lt!234506 (tuple2!6533 (_1!3530 (v!16239 lt!234496)) (_2!3530 (v!16239 lt!234496))))))

(declare-fun lt!234509 () Unit!9795)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!134 (List!5534 List!5534 List!5534 List!5534) Unit!9795)

(assert (=> b!555195 (= lt!234509 (lemmaConcatSameAndSameSizesThenSameLists!134 lt!234497 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!555196 () Bool)

(assert (=> b!555196 (= e!336060 (isPrefix!691 lt!234497 input!2705))))

(declare-fun b!555197 () Bool)

(declare-fun e!336065 () Bool)

(declare-fun tp!175507 () Bool)

(assert (=> b!555197 (= e!336062 (and e!336065 tp!175507))))

(declare-fun b!555198 () Bool)

(declare-fun tp_is_empty!3137 () Bool)

(declare-fun tp!175509 () Bool)

(assert (=> b!555198 (= e!336047 (and tp_is_empty!3137 tp!175509))))

(declare-fun b!555199 () Bool)

(declare-fun e!336044 () Bool)

(assert (=> b!555199 (= e!336043 e!336044)))

(declare-fun res!238414 () Bool)

(assert (=> b!555199 (=> (not res!238414) (not e!336044))))

(assert (=> b!555199 (= res!238414 (isDefined!1219 lt!234496))))

(declare-fun e!336046 () Bool)

(assert (=> b!555200 (= e!336046 (and tp!175508 tp!175503))))

(declare-fun b!555201 () Bool)

(declare-fun Unit!9797 () Unit!9795)

(assert (=> b!555201 (= e!336057 Unit!9797)))

(assert (=> b!555201 false))

(declare-fun b!555202 () Bool)

(declare-fun Unit!9798 () Unit!9795)

(assert (=> b!555202 (= e!336057 Unit!9798)))

(declare-fun tp!175501 () Bool)

(declare-fun e!336053 () Bool)

(declare-fun b!555203 () Bool)

(declare-fun inv!21 (TokenValue!1081) Bool)

(assert (=> b!555203 (= e!336059 (and (inv!21 (value!34991 token!491)) e!336053 tp!175501))))

(declare-fun tp!175510 () Bool)

(declare-fun b!555204 () Bool)

(declare-fun inv!6934 (String!7149) Bool)

(declare-fun inv!6938 (TokenValueInjection!1930) Bool)

(assert (=> b!555204 (= e!336053 (and tp!175510 (inv!6934 (tag!1319 (rule!1789 token!491))) (inv!6938 (transformation!1057 (rule!1789 token!491))) e!336050))))

(declare-fun b!555205 () Bool)

(declare-fun res!238415 () Bool)

(assert (=> b!555205 (=> (not res!238415) (not e!336042))))

(assert (=> b!555205 (= res!238415 (= (size!4406 token!491) (size!4407 (originalCharacters!1096 token!491))))))

(declare-fun b!555206 () Bool)

(assert (=> b!555206 (= e!336044 (= (_1!3530 (get!2100 lt!234496)) (_1!3530 (v!16239 lt!234496))))))

(declare-fun b!555207 () Bool)

(declare-fun tp!175502 () Bool)

(assert (=> b!555207 (= e!336058 (and tp_is_empty!3137 tp!175502))))

(declare-fun b!555208 () Bool)

(assert (=> b!555208 (= e!336054 (and (= (size!4406 (_1!3530 (v!16239 lt!234496))) lt!234499) (= (originalCharacters!1096 (_1!3530 (v!16239 lt!234496))) lt!234494) (= lt!234506 (tuple2!6533 (Token!1851 lt!234493 (rule!1789 (_1!3530 (v!16239 lt!234496))) lt!234499 lt!234494) lt!234517))))))

(declare-fun b!555209 () Bool)

(declare-fun res!238410 () Bool)

(assert (=> b!555209 (=> (not res!238410) (not e!336054))))

(assert (=> b!555209 (= res!238410 (= (size!4406 (_1!3530 (v!16239 lt!234496))) (size!4407 (originalCharacters!1096 (_1!3530 (v!16239 lt!234496))))))))

(declare-fun b!555210 () Bool)

(declare-fun res!238412 () Bool)

(assert (=> b!555210 (=> res!238412 e!336060)))

(declare-fun matchR!538 (Regex!1391 List!5534) Bool)

(assert (=> b!555210 (= res!238412 (not (matchR!538 (regex!1057 (rule!1789 token!491)) input!2705)))))

(declare-fun b!555211 () Bool)

(declare-fun res!238404 () Bool)

(assert (=> b!555211 (=> (not res!238404) (not e!336052))))

(declare-fun isEmpty!3986 (List!5534) Bool)

(assert (=> b!555211 (= res!238404 (not (isEmpty!3986 input!2705)))))

(declare-fun b!555212 () Bool)

(assert (=> b!555212 (= e!336066 e!336055)))

(declare-fun res!238409 () Bool)

(assert (=> b!555212 (=> (not res!238409) (not e!336055))))

(assert (=> b!555212 (= res!238409 (= lt!234507 lt!234490))))

(assert (=> b!555212 (= lt!234507 (++!1545 lt!234497 suffix!1342))))

(declare-fun tp!175505 () Bool)

(declare-fun b!555213 () Bool)

(assert (=> b!555213 (= e!336065 (and tp!175505 (inv!6934 (tag!1319 (h!10927 rules!3103))) (inv!6938 (transformation!1057 (h!10927 rules!3103))) e!336046))))

(declare-fun b!555214 () Bool)

(assert (=> b!555214 (= e!336042 (and (= (size!4406 token!491) lt!234512) (= (originalCharacters!1096 token!491) lt!234497) (= (tuple2!6533 token!491 suffix!1342) (tuple2!6533 (Token!1851 lt!234492 (rule!1789 token!491) lt!234512 lt!234497) lt!234489))))))

(declare-fun b!555215 () Bool)

(declare-fun res!238399 () Bool)

(assert (=> b!555215 (=> (not res!238399) (not e!336052))))

(declare-fun isEmpty!3987 (List!5536) Bool)

(assert (=> b!555215 (= res!238399 (not (isEmpty!3987 rules!3103)))))

(assert (= (and start!51560 res!238406) b!555215))

(assert (= (and b!555215 res!238399) b!555192))

(assert (= (and b!555192 res!238405) b!555211))

(assert (= (and b!555211 res!238404) b!555193))

(assert (= (and b!555193 res!238403) b!555194))

(assert (= (and b!555194 res!238416) b!555187))

(assert (= (and b!555187 res!238401) b!555190))

(assert (= (and b!555190 res!238411) b!555212))

(assert (= (and b!555212 res!238409) b!555195))

(assert (= (and b!555195 c!104137) b!555201))

(assert (= (and b!555195 (not c!104137)) b!555202))

(assert (= (and b!555195 res!238413) b!555209))

(assert (= (and b!555209 res!238410) b!555208))

(assert (= (and b!555195 (not res!238400)) b!555188))

(assert (= (and b!555188 res!238407) b!555205))

(assert (= (and b!555205 res!238415) b!555214))

(assert (= (and b!555188 res!238408) b!555189))

(assert (= (and b!555189 (not res!238402)) b!555199))

(assert (= (and b!555199 res!238414) b!555206))

(assert (= (and b!555188 (not res!238418)) b!555191))

(assert (= (and b!555191 (not res!238417)) b!555210))

(assert (= (and b!555210 (not res!238412)) b!555196))

(assert (= (and start!51560 ((_ is Cons!5524) suffix!1342)) b!555198))

(assert (= b!555213 b!555200))

(assert (= b!555197 b!555213))

(assert (= (and start!51560 ((_ is Cons!5526) rules!3103)) b!555197))

(assert (= b!555204 b!555186))

(assert (= b!555203 b!555204))

(assert (= start!51560 b!555203))

(assert (= (and start!51560 ((_ is Cons!5524) input!2705)) b!555207))

(declare-fun m!805481 () Bool)

(assert (=> b!555193 m!805481))

(assert (=> b!555193 m!805481))

(declare-fun m!805483 () Bool)

(assert (=> b!555193 m!805483))

(declare-fun m!805485 () Bool)

(assert (=> b!555196 m!805485))

(declare-fun m!805487 () Bool)

(assert (=> b!555194 m!805487))

(declare-fun m!805489 () Bool)

(assert (=> b!555194 m!805489))

(declare-fun m!805491 () Bool)

(assert (=> b!555194 m!805491))

(declare-fun m!805493 () Bool)

(assert (=> b!555210 m!805493))

(declare-fun m!805495 () Bool)

(assert (=> b!555195 m!805495))

(declare-fun m!805497 () Bool)

(assert (=> b!555195 m!805497))

(declare-fun m!805499 () Bool)

(assert (=> b!555195 m!805499))

(declare-fun m!805501 () Bool)

(assert (=> b!555195 m!805501))

(declare-fun m!805503 () Bool)

(assert (=> b!555195 m!805503))

(declare-fun m!805505 () Bool)

(assert (=> b!555195 m!805505))

(assert (=> b!555195 m!805499))

(declare-fun m!805507 () Bool)

(assert (=> b!555195 m!805507))

(declare-fun m!805509 () Bool)

(assert (=> b!555195 m!805509))

(declare-fun m!805511 () Bool)

(assert (=> b!555195 m!805511))

(declare-fun m!805513 () Bool)

(assert (=> b!555195 m!805513))

(declare-fun m!805515 () Bool)

(assert (=> b!555195 m!805515))

(declare-fun m!805517 () Bool)

(assert (=> b!555195 m!805517))

(declare-fun m!805519 () Bool)

(assert (=> b!555195 m!805519))

(declare-fun m!805521 () Bool)

(assert (=> b!555195 m!805521))

(declare-fun m!805523 () Bool)

(assert (=> b!555195 m!805523))

(declare-fun m!805525 () Bool)

(assert (=> b!555195 m!805525))

(declare-fun m!805527 () Bool)

(assert (=> b!555195 m!805527))

(assert (=> b!555195 m!805517))

(declare-fun m!805529 () Bool)

(assert (=> b!555195 m!805529))

(declare-fun m!805531 () Bool)

(assert (=> b!555195 m!805531))

(declare-fun m!805533 () Bool)

(assert (=> b!555195 m!805533))

(declare-fun m!805535 () Bool)

(assert (=> b!555195 m!805535))

(declare-fun m!805537 () Bool)

(assert (=> b!555195 m!805537))

(declare-fun m!805539 () Bool)

(assert (=> b!555195 m!805539))

(declare-fun m!805541 () Bool)

(assert (=> b!555195 m!805541))

(declare-fun m!805543 () Bool)

(assert (=> b!555195 m!805543))

(assert (=> b!555195 m!805537))

(declare-fun m!805545 () Bool)

(assert (=> b!555195 m!805545))

(declare-fun m!805547 () Bool)

(assert (=> b!555195 m!805547))

(declare-fun m!805549 () Bool)

(assert (=> b!555213 m!805549))

(declare-fun m!805551 () Bool)

(assert (=> b!555213 m!805551))

(declare-fun m!805553 () Bool)

(assert (=> b!555199 m!805553))

(declare-fun m!805555 () Bool)

(assert (=> b!555190 m!805555))

(declare-fun m!805557 () Bool)

(assert (=> b!555187 m!805557))

(declare-fun m!805559 () Bool)

(assert (=> b!555211 m!805559))

(declare-fun m!805561 () Bool)

(assert (=> b!555188 m!805561))

(declare-fun m!805563 () Bool)

(assert (=> b!555188 m!805563))

(declare-fun m!805565 () Bool)

(assert (=> b!555188 m!805565))

(declare-fun m!805567 () Bool)

(assert (=> b!555188 m!805567))

(declare-fun m!805569 () Bool)

(assert (=> b!555188 m!805569))

(declare-fun m!805571 () Bool)

(assert (=> b!555188 m!805571))

(declare-fun m!805573 () Bool)

(assert (=> b!555188 m!805573))

(declare-fun m!805575 () Bool)

(assert (=> b!555188 m!805575))

(assert (=> b!555188 m!805563))

(declare-fun m!805577 () Bool)

(assert (=> b!555191 m!805577))

(declare-fun m!805579 () Bool)

(assert (=> b!555206 m!805579))

(declare-fun m!805581 () Bool)

(assert (=> start!51560 m!805581))

(declare-fun m!805583 () Bool)

(assert (=> b!555204 m!805583))

(declare-fun m!805585 () Bool)

(assert (=> b!555204 m!805585))

(declare-fun m!805587 () Bool)

(assert (=> b!555203 m!805587))

(declare-fun m!805589 () Bool)

(assert (=> b!555212 m!805589))

(declare-fun m!805591 () Bool)

(assert (=> b!555209 m!805591))

(declare-fun m!805593 () Bool)

(assert (=> b!555205 m!805593))

(declare-fun m!805595 () Bool)

(assert (=> b!555215 m!805595))

(declare-fun m!805597 () Bool)

(assert (=> b!555192 m!805597))

(check-sat (not b!555211) (not b!555194) (not b!555192) (not b!555195) (not b!555207) (not b_next!15621) (not b!555209) (not b!555213) (not b!555215) (not b!555204) (not b_next!15623) (not b_next!15619) (not b!555210) (not b_next!15617) (not b!555205) b_and!54239 (not b!555212) b_and!54237 (not b!555206) (not b!555188) (not b!555191) tp_is_empty!3137 (not b!555198) (not b!555196) (not b!555187) (not b!555193) (not b!555199) (not b!555203) b_and!54235 (not start!51560) (not b!555190) (not b!555197) b_and!54241)
(check-sat (not b_next!15617) b_and!54239 b_and!54237 (not b_next!15621) b_and!54235 b_and!54241 (not b_next!15623) (not b_next!15619))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53232 () Bool)

(assert start!53232)

(declare-fun b!576363 () Bool)

(declare-fun b_free!16045 () Bool)

(declare-fun b_next!16061 () Bool)

(assert (=> b!576363 (= b_free!16045 (not b_next!16061))))

(declare-fun tp!180700 () Bool)

(declare-fun b_and!56419 () Bool)

(assert (=> b!576363 (= tp!180700 b_and!56419)))

(declare-fun b_free!16047 () Bool)

(declare-fun b_next!16063 () Bool)

(assert (=> b!576363 (= b_free!16047 (not b_next!16063))))

(declare-fun tp!180705 () Bool)

(declare-fun b_and!56421 () Bool)

(assert (=> b!576363 (= tp!180705 b_and!56421)))

(declare-fun b!576362 () Bool)

(declare-fun b_free!16049 () Bool)

(declare-fun b_next!16065 () Bool)

(assert (=> b!576362 (= b_free!16049 (not b_next!16065))))

(declare-fun tp!180706 () Bool)

(declare-fun b_and!56423 () Bool)

(assert (=> b!576362 (= tp!180706 b_and!56423)))

(declare-fun b_free!16051 () Bool)

(declare-fun b_next!16067 () Bool)

(assert (=> b!576362 (= b_free!16051 (not b_next!16067))))

(declare-fun tp!180708 () Bool)

(declare-fun b_and!56425 () Bool)

(assert (=> b!576362 (= tp!180708 b_and!56425)))

(declare-fun b!576356 () Bool)

(declare-fun res!247826 () Bool)

(declare-fun e!348322 () Bool)

(assert (=> b!576356 (=> (not res!247826) (not e!348322))))

(declare-datatypes ((C!3788 0))(
  ( (C!3789 (val!2120 Int)) )
))
(declare-datatypes ((List!5678 0))(
  ( (Nil!5668) (Cons!5668 (h!11069 C!3788) (t!77391 List!5678)) )
))
(declare-fun input!2705 () List!5678)

(declare-fun isEmpty!4093 (List!5678) Bool)

(assert (=> b!576356 (= res!247826 (not (isEmpty!4093 input!2705)))))

(declare-fun b!576357 () Bool)

(declare-fun e!348336 () Bool)

(declare-fun lt!243944 () List!5678)

(declare-datatypes ((String!7358 0))(
  ( (String!7359 (value!36162 String)) )
))
(declare-datatypes ((Regex!1433 0))(
  ( (ElementMatch!1433 (c!107921 C!3788)) (Concat!2556 (regOne!3378 Regex!1433) (regTwo!3378 Regex!1433)) (EmptyExpr!1433) (Star!1433 (reg!1762 Regex!1433)) (EmptyLang!1433) (Union!1433 (regOne!3379 Regex!1433) (regTwo!3379 Regex!1433)) )
))
(declare-datatypes ((List!5679 0))(
  ( (Nil!5669) (Cons!5669 (h!11070 (_ BitVec 16)) (t!77392 List!5679)) )
))
(declare-datatypes ((IArray!3633 0))(
  ( (IArray!3634 (innerList!1874 List!5678)) )
))
(declare-datatypes ((Conc!1816 0))(
  ( (Node!1816 (left!4630 Conc!1816) (right!4960 Conc!1816) (csize!3862 Int) (cheight!2027 Int)) (Leaf!2873 (xs!4453 IArray!3633) (csize!3863 Int)) (Empty!1816) )
))
(declare-datatypes ((BalanceConc!3640 0))(
  ( (BalanceConc!3641 (c!107922 Conc!1816)) )
))
(declare-datatypes ((TokenValue!1123 0))(
  ( (FloatLiteralValue!2246 (text!8306 List!5679)) (TokenValueExt!1122 (__x!4144 Int)) (Broken!5615 (value!36163 List!5679)) (Object!1132) (End!1123) (Def!1123) (Underscore!1123) (Match!1123) (Else!1123) (Error!1123) (Case!1123) (If!1123) (Extends!1123) (Abstract!1123) (Class!1123) (Val!1123) (DelimiterValue!2246 (del!1183 List!5679)) (KeywordValue!1129 (value!36164 List!5679)) (CommentValue!2246 (value!36165 List!5679)) (WhitespaceValue!2246 (value!36166 List!5679)) (IndentationValue!1123 (value!36167 List!5679)) (String!7360) (Int32!1123) (Broken!5616 (value!36168 List!5679)) (Boolean!1124) (Unit!10236) (OperatorValue!1126 (op!1183 List!5679)) (IdentifierValue!2246 (value!36169 List!5679)) (IdentifierValue!2247 (value!36170 List!5679)) (WhitespaceValue!2247 (value!36171 List!5679)) (True!2246) (False!2246) (Broken!5617 (value!36172 List!5679)) (Broken!5618 (value!36173 List!5679)) (True!2247) (RightBrace!1123) (RightBracket!1123) (Colon!1123) (Null!1123) (Comma!1123) (LeftBracket!1123) (False!2247) (LeftBrace!1123) (ImaginaryLiteralValue!1123 (text!8307 List!5679)) (StringLiteralValue!3369 (value!36174 List!5679)) (EOFValue!1123 (value!36175 List!5679)) (IdentValue!1123 (value!36176 List!5679)) (DelimiterValue!2247 (value!36177 List!5679)) (DedentValue!1123 (value!36178 List!5679)) (NewLineValue!1123 (value!36179 List!5679)) (IntegerValue!3369 (value!36180 (_ BitVec 32)) (text!8308 List!5679)) (IntegerValue!3370 (value!36181 Int) (text!8309 List!5679)) (Times!1123) (Or!1123) (Equal!1123) (Minus!1123) (Broken!5619 (value!36182 List!5679)) (And!1123) (Div!1123) (LessEqual!1123) (Mod!1123) (Concat!2557) (Not!1123) (Plus!1123) (SpaceValue!1123 (value!36183 List!5679)) (IntegerValue!3371 (value!36184 Int) (text!8310 List!5679)) (StringLiteralValue!3370 (text!8311 List!5679)) (FloatLiteralValue!2247 (text!8312 List!5679)) (BytesLiteralValue!1123 (value!36185 List!5679)) (CommentValue!2247 (value!36186 List!5679)) (StringLiteralValue!3371 (value!36187 List!5679)) (ErrorTokenValue!1123 (msg!1184 List!5679)) )
))
(declare-datatypes ((TokenValueInjection!2014 0))(
  ( (TokenValueInjection!2015 (toValue!1958 Int) (toChars!1817 Int)) )
))
(declare-datatypes ((Rule!1998 0))(
  ( (Rule!1999 (regex!1099 Regex!1433) (tag!1361 String!7358) (isSeparator!1099 Bool) (transformation!1099 TokenValueInjection!2014)) )
))
(declare-datatypes ((Token!1934 0))(
  ( (Token!1935 (value!36188 TokenValue!1123) (rule!1849 Rule!1998) (size!4512 Int) (originalCharacters!1138 List!5678)) )
))
(declare-datatypes ((tuple2!6652 0))(
  ( (tuple2!6653 (_1!3590 Token!1934) (_2!3590 List!5678)) )
))
(declare-datatypes ((Option!1450 0))(
  ( (None!1449) (Some!1449 (v!16310 tuple2!6652)) )
))
(declare-fun lt!243932 () Option!1450)

(assert (=> b!576357 (= e!348336 (= lt!243944 (_2!3590 (v!16310 lt!243932))))))

(declare-fun b!576358 () Bool)

(declare-fun e!348338 () Bool)

(declare-fun e!348323 () Bool)

(assert (=> b!576358 (= e!348338 e!348323)))

(declare-fun res!247831 () Bool)

(assert (=> b!576358 (=> res!247831 e!348323)))

(declare-fun lt!243962 () Int)

(declare-fun lt!243945 () List!5678)

(declare-fun lt!243940 () Int)

(declare-fun lt!243957 () List!5678)

(assert (=> b!576358 (= res!247831 (or (not (= lt!243962 lt!243940)) (not (= lt!243957 input!2705)) (not (= lt!243957 lt!243945))))))

(declare-datatypes ((Unit!10237 0))(
  ( (Unit!10238) )
))
(declare-fun lt!243947 () Unit!10237)

(declare-fun token!491 () Token!1934)

(declare-fun lt!243954 () BalanceConc!3640)

(declare-fun lemmaSemiInverse!202 (TokenValueInjection!2014 BalanceConc!3640) Unit!10237)

(assert (=> b!576358 (= lt!243947 (lemmaSemiInverse!202 (transformation!1099 (rule!1849 token!491)) lt!243954))))

(declare-fun lt!243955 () Unit!10237)

(declare-fun lt!243968 () BalanceConc!3640)

(assert (=> b!576358 (= lt!243955 (lemmaSemiInverse!202 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!243968))))

(declare-fun lt!243951 () Unit!10237)

(declare-fun e!348333 () Unit!10237)

(assert (=> b!576358 (= lt!243951 e!348333)))

(declare-fun c!107919 () Bool)

(assert (=> b!576358 (= c!107919 (< lt!243962 lt!243940))))

(declare-fun e!348326 () Bool)

(assert (=> b!576358 e!348326))

(declare-fun res!247832 () Bool)

(assert (=> b!576358 (=> (not res!247832) (not e!348326))))

(declare-datatypes ((LexerInterface!985 0))(
  ( (LexerInterfaceExt!982 (__x!4145 Int)) (Lexer!983) )
))
(declare-fun thiss!22590 () LexerInterface!985)

(declare-fun lt!243963 () TokenValue!1123)

(declare-fun suffix!1342 () List!5678)

(declare-fun lt!243952 () List!5678)

(declare-fun maxPrefixOneRule!384 (LexerInterface!985 Rule!1998 List!5678) Option!1450)

(assert (=> b!576358 (= res!247832 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 token!491) lt!243952) (Some!1449 (tuple2!6653 (Token!1935 lt!243963 (rule!1849 token!491) lt!243940 lt!243945) suffix!1342))))))

(declare-datatypes ((List!5680 0))(
  ( (Nil!5670) (Cons!5670 (h!11071 Rule!1998) (t!77393 List!5680)) )
))
(declare-fun rules!3103 () List!5680)

(declare-fun lt!243958 () Unit!10237)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!134 (LexerInterface!985 List!5680 List!5678 List!5678 List!5678 Rule!1998) Unit!10237)

(assert (=> b!576358 (= lt!243958 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!134 thiss!22590 rules!3103 lt!243945 lt!243952 suffix!1342 (rule!1849 token!491)))))

(declare-fun lt!243959 () List!5678)

(declare-fun lt!243966 () TokenValue!1123)

(assert (=> b!576358 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) input!2705) (Some!1449 (tuple2!6653 (Token!1935 lt!243966 (rule!1849 (_1!3590 (v!16310 lt!243932))) lt!243962 lt!243959) (_2!3590 (v!16310 lt!243932)))))))

(declare-fun lt!243961 () Unit!10237)

(assert (=> b!576358 (= lt!243961 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!134 thiss!22590 rules!3103 lt!243959 input!2705 (_2!3590 (v!16310 lt!243932)) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun e!348324 () Bool)

(assert (=> b!576358 e!348324))

(declare-fun res!247827 () Bool)

(assert (=> b!576358 (=> (not res!247827) (not e!348324))))

(assert (=> b!576358 (= res!247827 (= (value!36188 token!491) lt!243963))))

(declare-fun apply!1364 (TokenValueInjection!2014 BalanceConc!3640) TokenValue!1123)

(assert (=> b!576358 (= lt!243963 (apply!1364 (transformation!1099 (rule!1849 token!491)) lt!243954))))

(declare-fun seqFromList!1287 (List!5678) BalanceConc!3640)

(assert (=> b!576358 (= lt!243954 (seqFromList!1287 lt!243945))))

(declare-fun lt!243931 () List!5678)

(assert (=> b!576358 (= suffix!1342 lt!243931)))

(declare-fun lt!243936 () Unit!10237)

(declare-fun lemmaSamePrefixThenSameSuffix!456 (List!5678 List!5678 List!5678 List!5678 List!5678) Unit!10237)

(assert (=> b!576358 (= lt!243936 (lemmaSamePrefixThenSameSuffix!456 lt!243945 suffix!1342 lt!243945 lt!243931 lt!243952))))

(declare-fun getSuffix!252 (List!5678 List!5678) List!5678)

(assert (=> b!576358 (= lt!243931 (getSuffix!252 lt!243952 lt!243945))))

(declare-fun b!576359 () Bool)

(declare-fun res!247818 () Bool)

(assert (=> b!576359 (=> res!247818 e!348323)))

(assert (=> b!576359 (= res!247818 (or (not (= lt!243959 lt!243945)) (not (= (originalCharacters!1138 (_1!3590 (v!16310 lt!243932))) (originalCharacters!1138 token!491)))))))

(declare-fun b!576360 () Bool)

(declare-fun e!348317 () Bool)

(declare-fun e!348328 () Bool)

(assert (=> b!576360 (= e!348317 e!348328)))

(declare-fun res!247836 () Bool)

(assert (=> b!576360 (=> (not res!247836) (not e!348328))))

(get-info :version)

(assert (=> b!576360 (= res!247836 ((_ is Some!1449) lt!243932))))

(declare-fun maxPrefix!683 (LexerInterface!985 List!5680 List!5678) Option!1450)

(assert (=> b!576360 (= lt!243932 (maxPrefix!683 thiss!22590 rules!3103 input!2705))))

(declare-fun b!576361 () Bool)

(declare-fun res!247833 () Bool)

(assert (=> b!576361 (=> (not res!247833) (not e!348336))))

(declare-fun get!2163 (Option!1450) tuple2!6652)

(assert (=> b!576361 (= res!247833 (= (_1!3590 (get!2163 lt!243932)) (_1!3590 (v!16310 lt!243932))))))

(declare-fun e!348325 () Bool)

(assert (=> b!576362 (= e!348325 (and tp!180706 tp!180708))))

(declare-fun e!348335 () Bool)

(assert (=> b!576363 (= e!348335 (and tp!180700 tp!180705))))

(declare-fun b!576364 () Bool)

(assert (=> b!576364 (= e!348324 (and (= (size!4512 token!491) lt!243940) (= (originalCharacters!1138 token!491) lt!243945) (= (tuple2!6653 token!491 suffix!1342) (tuple2!6653 (Token!1935 lt!243963 (rule!1849 token!491) lt!243940 lt!243945) lt!243931))))))

(declare-fun b!576365 () Bool)

(declare-fun e!348321 () Bool)

(assert (=> b!576365 (= e!348321 e!348336)))

(declare-fun res!247828 () Bool)

(assert (=> b!576365 (=> (not res!247828) (not e!348336))))

(declare-fun isDefined!1261 (Option!1450) Bool)

(assert (=> b!576365 (= res!247828 (isDefined!1261 lt!243932))))

(declare-fun b!576366 () Bool)

(declare-fun lt!243941 () Option!1450)

(assert (=> b!576366 (= e!348323 (= lt!243941 (Some!1449 (tuple2!6653 token!491 suffix!1342))))))

(declare-fun b!576367 () Bool)

(declare-fun e!348340 () Unit!10237)

(declare-fun Unit!10239 () Unit!10237)

(assert (=> b!576367 (= e!348340 Unit!10239)))

(declare-fun b!576368 () Bool)

(declare-fun e!348337 () Bool)

(assert (=> b!576368 (= e!348337 e!348317)))

(declare-fun res!247839 () Bool)

(assert (=> b!576368 (=> (not res!247839) (not e!348317))))

(declare-fun lt!243942 () tuple2!6652)

(assert (=> b!576368 (= res!247839 (and (= (_1!3590 lt!243942) token!491) (= (_2!3590 lt!243942) suffix!1342)))))

(assert (=> b!576368 (= lt!243942 (get!2163 lt!243941))))

(declare-fun b!576369 () Bool)

(assert (=> b!576369 (= e!348326 e!348321)))

(declare-fun res!247829 () Bool)

(assert (=> b!576369 (=> res!247829 e!348321)))

(assert (=> b!576369 (= res!247829 (>= lt!243962 lt!243940))))

(declare-fun b!576370 () Bool)

(declare-fun res!247837 () Bool)

(assert (=> b!576370 (=> (not res!247837) (not e!348322))))

(declare-fun rulesInvariant!948 (LexerInterface!985 List!5680) Bool)

(assert (=> b!576370 (= res!247837 (rulesInvariant!948 thiss!22590 rules!3103))))

(declare-fun b!576371 () Bool)

(declare-fun res!247817 () Bool)

(assert (=> b!576371 (=> res!247817 e!348323)))

(assert (=> b!576371 (= res!247817 (not (isEmpty!4093 (_2!3590 (v!16310 lt!243932)))))))

(declare-fun e!348318 () Bool)

(declare-fun tp!180707 () Bool)

(declare-fun b!576372 () Bool)

(declare-fun inv!7129 (String!7358) Bool)

(declare-fun inv!7132 (TokenValueInjection!2014) Bool)

(assert (=> b!576372 (= e!348318 (and tp!180707 (inv!7129 (tag!1361 (h!11071 rules!3103))) (inv!7132 (transformation!1099 (h!11071 rules!3103))) e!348335))))

(declare-fun b!576373 () Bool)

(declare-fun res!247824 () Bool)

(assert (=> b!576373 (=> res!247824 e!348323)))

(declare-fun contains!1329 (List!5680 Rule!1998) Bool)

(assert (=> b!576373 (= res!247824 (not (contains!1329 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun tp!180699 () Bool)

(declare-fun b!576374 () Bool)

(declare-fun e!348342 () Bool)

(assert (=> b!576374 (= e!348342 (and tp!180699 (inv!7129 (tag!1361 (rule!1849 token!491))) (inv!7132 (transformation!1099 (rule!1849 token!491))) e!348325))))

(declare-fun b!576375 () Bool)

(declare-fun res!247815 () Bool)

(assert (=> b!576375 (=> (not res!247815) (not e!348322))))

(declare-fun isEmpty!4094 (List!5680) Bool)

(assert (=> b!576375 (= res!247815 (not (isEmpty!4094 rules!3103)))))

(declare-fun b!576376 () Bool)

(declare-fun e!348343 () Bool)

(declare-fun tp!180701 () Bool)

(assert (=> b!576376 (= e!348343 (and e!348318 tp!180701))))

(declare-fun b!576377 () Bool)

(declare-fun res!247822 () Bool)

(assert (=> b!576377 (=> res!247822 e!348323)))

(assert (=> b!576377 (= res!247822 (not (contains!1329 rules!3103 (rule!1849 token!491))))))

(declare-fun b!576378 () Bool)

(declare-fun res!247816 () Bool)

(assert (=> b!576378 (=> res!247816 e!348323)))

(declare-fun getIndex!38 (List!5680 Rule!1998) Int)

(assert (=> b!576378 (= res!247816 (>= (getIndex!38 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (getIndex!38 rules!3103 (rule!1849 token!491))))))

(declare-fun b!576379 () Bool)

(declare-fun e!348339 () Bool)

(assert (=> b!576379 (= e!348339 (not e!348338))))

(declare-fun res!247825 () Bool)

(assert (=> b!576379 (=> res!247825 e!348338)))

(declare-fun lt!243934 () List!5678)

(declare-fun isPrefix!733 (List!5678 List!5678) Bool)

(assert (=> b!576379 (= res!247825 (not (isPrefix!733 input!2705 lt!243934)))))

(assert (=> b!576379 (isPrefix!733 lt!243945 lt!243934)))

(declare-fun lt!243960 () Unit!10237)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!580 (List!5678 List!5678) Unit!10237)

(assert (=> b!576379 (= lt!243960 (lemmaConcatTwoListThenFirstIsPrefix!580 lt!243945 suffix!1342))))

(assert (=> b!576379 (isPrefix!733 input!2705 lt!243952)))

(declare-fun lt!243937 () Unit!10237)

(assert (=> b!576379 (= lt!243937 (lemmaConcatTwoListThenFirstIsPrefix!580 input!2705 suffix!1342))))

(declare-fun e!348334 () Bool)

(assert (=> b!576379 e!348334))

(declare-fun res!247820 () Bool)

(assert (=> b!576379 (=> (not res!247820) (not e!348334))))

(assert (=> b!576379 (= res!247820 (= (value!36188 (_1!3590 (v!16310 lt!243932))) lt!243966))))

(assert (=> b!576379 (= lt!243966 (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!243968))))

(assert (=> b!576379 (= lt!243968 (seqFromList!1287 lt!243959))))

(declare-fun lt!243964 () Unit!10237)

(declare-fun lemmaInv!235 (TokenValueInjection!2014) Unit!10237)

(assert (=> b!576379 (= lt!243964 (lemmaInv!235 (transformation!1099 (rule!1849 token!491))))))

(declare-fun lt!243950 () Unit!10237)

(assert (=> b!576379 (= lt!243950 (lemmaInv!235 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun ruleValid!309 (LexerInterface!985 Rule!1998) Bool)

(assert (=> b!576379 (ruleValid!309 thiss!22590 (rule!1849 token!491))))

(declare-fun lt!243948 () Unit!10237)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!166 (LexerInterface!985 Rule!1998 List!5680) Unit!10237)

(assert (=> b!576379 (= lt!243948 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!166 thiss!22590 (rule!1849 token!491) rules!3103))))

(assert (=> b!576379 (ruleValid!309 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))))))

(declare-fun lt!243965 () Unit!10237)

(assert (=> b!576379 (= lt!243965 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!166 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) rules!3103))))

(assert (=> b!576379 (isPrefix!733 input!2705 input!2705)))

(declare-fun lt!243949 () Unit!10237)

(declare-fun lemmaIsPrefixRefl!471 (List!5678 List!5678) Unit!10237)

(assert (=> b!576379 (= lt!243949 (lemmaIsPrefixRefl!471 input!2705 input!2705))))

(assert (=> b!576379 (= (_2!3590 (v!16310 lt!243932)) lt!243944)))

(declare-fun lt!243953 () Unit!10237)

(assert (=> b!576379 (= lt!243953 (lemmaSamePrefixThenSameSuffix!456 lt!243959 (_2!3590 (v!16310 lt!243932)) lt!243959 lt!243944 input!2705))))

(assert (=> b!576379 (= lt!243944 (getSuffix!252 input!2705 lt!243959))))

(assert (=> b!576379 (isPrefix!733 lt!243959 lt!243957)))

(declare-fun ++!1587 (List!5678 List!5678) List!5678)

(assert (=> b!576379 (= lt!243957 (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932))))))

(declare-fun lt!243935 () Unit!10237)

(assert (=> b!576379 (= lt!243935 (lemmaConcatTwoListThenFirstIsPrefix!580 lt!243959 (_2!3590 (v!16310 lt!243932))))))

(declare-fun lt!243967 () Unit!10237)

(declare-fun lemmaCharactersSize!166 (Token!1934) Unit!10237)

(assert (=> b!576379 (= lt!243967 (lemmaCharactersSize!166 token!491))))

(declare-fun lt!243938 () Unit!10237)

(assert (=> b!576379 (= lt!243938 (lemmaCharactersSize!166 (_1!3590 (v!16310 lt!243932))))))

(declare-fun lt!243943 () Unit!10237)

(assert (=> b!576379 (= lt!243943 e!348340)))

(declare-fun c!107920 () Bool)

(assert (=> b!576379 (= c!107920 (> lt!243962 lt!243940))))

(declare-fun size!4513 (List!5678) Int)

(assert (=> b!576379 (= lt!243940 (size!4513 lt!243945))))

(assert (=> b!576379 (= lt!243962 (size!4513 lt!243959))))

(declare-fun list!2355 (BalanceConc!3640) List!5678)

(declare-fun charsOf!728 (Token!1934) BalanceConc!3640)

(assert (=> b!576379 (= lt!243959 (list!2355 (charsOf!728 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun lt!243946 () tuple2!6652)

(assert (=> b!576379 (= lt!243932 (Some!1449 lt!243946))))

(assert (=> b!576379 (= lt!243946 (tuple2!6653 (_1!3590 (v!16310 lt!243932)) (_2!3590 (v!16310 lt!243932))))))

(declare-fun lt!243956 () Unit!10237)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!176 (List!5678 List!5678 List!5678 List!5678) Unit!10237)

(assert (=> b!576379 (= lt!243956 (lemmaConcatSameAndSameSizesThenSameLists!176 lt!243945 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!576380 () Bool)

(declare-fun res!247838 () Bool)

(assert (=> b!576380 (=> res!247838 e!348323)))

(assert (=> b!576380 (= res!247838 (= (rule!1849 (_1!3590 (v!16310 lt!243932))) (rule!1849 token!491)))))

(declare-fun b!576381 () Bool)

(declare-fun Unit!10240 () Unit!10237)

(assert (=> b!576381 (= e!348340 Unit!10240)))

(assert (=> b!576381 false))

(declare-fun b!576382 () Bool)

(declare-fun res!247830 () Bool)

(assert (=> b!576382 (=> (not res!247830) (not e!348324))))

(assert (=> b!576382 (= res!247830 (= (size!4512 token!491) (size!4513 (originalCharacters!1138 token!491))))))

(declare-fun b!576383 () Bool)

(declare-fun e!348329 () Bool)

(declare-fun tp_is_empty!3221 () Bool)

(declare-fun tp!180702 () Bool)

(assert (=> b!576383 (= e!348329 (and tp_is_empty!3221 tp!180702))))

(declare-fun b!576384 () Bool)

(declare-fun Unit!10241 () Unit!10237)

(assert (=> b!576384 (= e!348333 Unit!10241)))

(declare-fun lt!243933 () Unit!10237)

(assert (=> b!576384 (= lt!243933 (lemmaSemiInverse!202 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!243968))))

(declare-fun lt!243939 () Unit!10237)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!58 (LexerInterface!985 List!5680 Rule!1998 List!5678 List!5678 List!5678 Rule!1998) Unit!10237)

(assert (=> b!576384 (= lt!243939 (lemmaMaxPrefixOutputsMaxPrefix!58 thiss!22590 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932))) lt!243959 input!2705 input!2705 (rule!1849 token!491)))))

(declare-fun res!247840 () Bool)

(declare-fun matchR!580 (Regex!1433 List!5678) Bool)

(assert (=> b!576384 (= res!247840 (not (matchR!580 (regex!1099 (rule!1849 token!491)) input!2705)))))

(declare-fun e!348330 () Bool)

(assert (=> b!576384 (=> (not res!247840) (not e!348330))))

(assert (=> b!576384 e!348330))

(declare-fun res!247823 () Bool)

(assert (=> start!53232 (=> (not res!247823) (not e!348322))))

(assert (=> start!53232 (= res!247823 ((_ is Lexer!983) thiss!22590))))

(assert (=> start!53232 e!348322))

(declare-fun e!348320 () Bool)

(assert (=> start!53232 e!348320))

(assert (=> start!53232 e!348343))

(declare-fun e!348332 () Bool)

(declare-fun inv!7133 (Token!1934) Bool)

(assert (=> start!53232 (and (inv!7133 token!491) e!348332)))

(assert (=> start!53232 true))

(assert (=> start!53232 e!348329))

(declare-fun b!576385 () Bool)

(declare-fun tp!180704 () Bool)

(assert (=> b!576385 (= e!348320 (and tp_is_empty!3221 tp!180704))))

(declare-fun tp!180703 () Bool)

(declare-fun b!576386 () Bool)

(declare-fun inv!21 (TokenValue!1123) Bool)

(assert (=> b!576386 (= e!348332 (and (inv!21 (value!36188 token!491)) e!348342 tp!180703))))

(declare-fun b!576387 () Bool)

(assert (=> b!576387 (= e!348328 e!348339)))

(declare-fun res!247834 () Bool)

(assert (=> b!576387 (=> (not res!247834) (not e!348339))))

(assert (=> b!576387 (= res!247834 (= lt!243934 lt!243952))))

(assert (=> b!576387 (= lt!243934 (++!1587 lt!243945 suffix!1342))))

(declare-fun b!576388 () Bool)

(assert (=> b!576388 (= e!348330 false)))

(declare-fun b!576389 () Bool)

(declare-fun res!247821 () Bool)

(assert (=> b!576389 (=> (not res!247821) (not e!348334))))

(assert (=> b!576389 (= res!247821 (= (size!4512 (_1!3590 (v!16310 lt!243932))) (size!4513 (originalCharacters!1138 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun b!576390 () Bool)

(declare-fun e!348319 () Bool)

(assert (=> b!576390 (= e!348319 e!348337)))

(declare-fun res!247835 () Bool)

(assert (=> b!576390 (=> (not res!247835) (not e!348337))))

(assert (=> b!576390 (= res!247835 (isDefined!1261 lt!243941))))

(assert (=> b!576390 (= lt!243941 (maxPrefix!683 thiss!22590 rules!3103 lt!243952))))

(assert (=> b!576390 (= lt!243952 (++!1587 input!2705 suffix!1342))))

(declare-fun b!576391 () Bool)

(declare-fun Unit!10242 () Unit!10237)

(assert (=> b!576391 (= e!348333 Unit!10242)))

(declare-fun b!576392 () Bool)

(assert (=> b!576392 (= e!348334 (and (= (size!4512 (_1!3590 (v!16310 lt!243932))) lt!243962) (= (originalCharacters!1138 (_1!3590 (v!16310 lt!243932))) lt!243959) (= lt!243946 (tuple2!6653 (Token!1935 lt!243966 (rule!1849 (_1!3590 (v!16310 lt!243932))) lt!243962 lt!243959) lt!243944))))))

(declare-fun b!576393 () Bool)

(assert (=> b!576393 (= e!348322 e!348319)))

(declare-fun res!247819 () Bool)

(assert (=> b!576393 (=> (not res!247819) (not e!348319))))

(assert (=> b!576393 (= res!247819 (= lt!243945 input!2705))))

(assert (=> b!576393 (= lt!243945 (list!2355 (charsOf!728 token!491)))))

(assert (= (and start!53232 res!247823) b!576375))

(assert (= (and b!576375 res!247815) b!576370))

(assert (= (and b!576370 res!247837) b!576356))

(assert (= (and b!576356 res!247826) b!576393))

(assert (= (and b!576393 res!247819) b!576390))

(assert (= (and b!576390 res!247835) b!576368))

(assert (= (and b!576368 res!247839) b!576360))

(assert (= (and b!576360 res!247836) b!576387))

(assert (= (and b!576387 res!247834) b!576379))

(assert (= (and b!576379 c!107920) b!576381))

(assert (= (and b!576379 (not c!107920)) b!576367))

(assert (= (and b!576379 res!247820) b!576389))

(assert (= (and b!576389 res!247821) b!576392))

(assert (= (and b!576379 (not res!247825)) b!576358))

(assert (= (and b!576358 res!247827) b!576382))

(assert (= (and b!576382 res!247830) b!576364))

(assert (= (and b!576358 res!247832) b!576369))

(assert (= (and b!576369 (not res!247829)) b!576365))

(assert (= (and b!576365 res!247828) b!576361))

(assert (= (and b!576361 res!247833) b!576357))

(assert (= (and b!576358 c!107919) b!576384))

(assert (= (and b!576358 (not c!107919)) b!576391))

(assert (= (and b!576384 res!247840) b!576388))

(assert (= (and b!576358 (not res!247831)) b!576371))

(assert (= (and b!576371 (not res!247817)) b!576359))

(assert (= (and b!576359 (not res!247818)) b!576373))

(assert (= (and b!576373 (not res!247824)) b!576377))

(assert (= (and b!576377 (not res!247822)) b!576380))

(assert (= (and b!576380 (not res!247838)) b!576378))

(assert (= (and b!576378 (not res!247816)) b!576366))

(assert (= (and start!53232 ((_ is Cons!5668) suffix!1342)) b!576385))

(assert (= b!576372 b!576363))

(assert (= b!576376 b!576372))

(assert (= (and start!53232 ((_ is Cons!5670) rules!3103)) b!576376))

(assert (= b!576374 b!576362))

(assert (= b!576386 b!576374))

(assert (= start!53232 b!576386))

(assert (= (and start!53232 ((_ is Cons!5668) input!2705)) b!576383))

(declare-fun m!833703 () Bool)

(assert (=> b!576374 m!833703))

(declare-fun m!833705 () Bool)

(assert (=> b!576374 m!833705))

(declare-fun m!833707 () Bool)

(assert (=> b!576372 m!833707))

(declare-fun m!833709 () Bool)

(assert (=> b!576372 m!833709))

(declare-fun m!833711 () Bool)

(assert (=> b!576365 m!833711))

(declare-fun m!833713 () Bool)

(assert (=> b!576382 m!833713))

(declare-fun m!833715 () Bool)

(assert (=> start!53232 m!833715))

(declare-fun m!833717 () Bool)

(assert (=> b!576360 m!833717))

(declare-fun m!833719 () Bool)

(assert (=> b!576356 m!833719))

(declare-fun m!833721 () Bool)

(assert (=> b!576390 m!833721))

(declare-fun m!833723 () Bool)

(assert (=> b!576390 m!833723))

(declare-fun m!833725 () Bool)

(assert (=> b!576390 m!833725))

(declare-fun m!833727 () Bool)

(assert (=> b!576378 m!833727))

(declare-fun m!833729 () Bool)

(assert (=> b!576378 m!833729))

(declare-fun m!833731 () Bool)

(assert (=> b!576384 m!833731))

(declare-fun m!833733 () Bool)

(assert (=> b!576384 m!833733))

(declare-fun m!833735 () Bool)

(assert (=> b!576384 m!833735))

(declare-fun m!833737 () Bool)

(assert (=> b!576387 m!833737))

(declare-fun m!833739 () Bool)

(assert (=> b!576377 m!833739))

(declare-fun m!833741 () Bool)

(assert (=> b!576373 m!833741))

(declare-fun m!833743 () Bool)

(assert (=> b!576361 m!833743))

(declare-fun m!833745 () Bool)

(assert (=> b!576389 m!833745))

(declare-fun m!833747 () Bool)

(assert (=> b!576386 m!833747))

(declare-fun m!833749 () Bool)

(assert (=> b!576393 m!833749))

(assert (=> b!576393 m!833749))

(declare-fun m!833751 () Bool)

(assert (=> b!576393 m!833751))

(declare-fun m!833753 () Bool)

(assert (=> b!576368 m!833753))

(declare-fun m!833755 () Bool)

(assert (=> b!576375 m!833755))

(declare-fun m!833757 () Bool)

(assert (=> b!576371 m!833757))

(declare-fun m!833759 () Bool)

(assert (=> b!576370 m!833759))

(declare-fun m!833761 () Bool)

(assert (=> b!576358 m!833761))

(declare-fun m!833763 () Bool)

(assert (=> b!576358 m!833763))

(declare-fun m!833765 () Bool)

(assert (=> b!576358 m!833765))

(declare-fun m!833767 () Bool)

(assert (=> b!576358 m!833767))

(assert (=> b!576358 m!833731))

(declare-fun m!833769 () Bool)

(assert (=> b!576358 m!833769))

(declare-fun m!833771 () Bool)

(assert (=> b!576358 m!833771))

(declare-fun m!833773 () Bool)

(assert (=> b!576358 m!833773))

(declare-fun m!833775 () Bool)

(assert (=> b!576358 m!833775))

(declare-fun m!833777 () Bool)

(assert (=> b!576358 m!833777))

(declare-fun m!833779 () Bool)

(assert (=> b!576379 m!833779))

(declare-fun m!833781 () Bool)

(assert (=> b!576379 m!833781))

(declare-fun m!833783 () Bool)

(assert (=> b!576379 m!833783))

(declare-fun m!833785 () Bool)

(assert (=> b!576379 m!833785))

(declare-fun m!833787 () Bool)

(assert (=> b!576379 m!833787))

(declare-fun m!833789 () Bool)

(assert (=> b!576379 m!833789))

(declare-fun m!833791 () Bool)

(assert (=> b!576379 m!833791))

(declare-fun m!833793 () Bool)

(assert (=> b!576379 m!833793))

(declare-fun m!833795 () Bool)

(assert (=> b!576379 m!833795))

(declare-fun m!833797 () Bool)

(assert (=> b!576379 m!833797))

(declare-fun m!833799 () Bool)

(assert (=> b!576379 m!833799))

(declare-fun m!833801 () Bool)

(assert (=> b!576379 m!833801))

(declare-fun m!833803 () Bool)

(assert (=> b!576379 m!833803))

(declare-fun m!833805 () Bool)

(assert (=> b!576379 m!833805))

(declare-fun m!833807 () Bool)

(assert (=> b!576379 m!833807))

(declare-fun m!833809 () Bool)

(assert (=> b!576379 m!833809))

(declare-fun m!833811 () Bool)

(assert (=> b!576379 m!833811))

(declare-fun m!833813 () Bool)

(assert (=> b!576379 m!833813))

(declare-fun m!833815 () Bool)

(assert (=> b!576379 m!833815))

(declare-fun m!833817 () Bool)

(assert (=> b!576379 m!833817))

(declare-fun m!833819 () Bool)

(assert (=> b!576379 m!833819))

(declare-fun m!833821 () Bool)

(assert (=> b!576379 m!833821))

(declare-fun m!833823 () Bool)

(assert (=> b!576379 m!833823))

(declare-fun m!833825 () Bool)

(assert (=> b!576379 m!833825))

(declare-fun m!833827 () Bool)

(assert (=> b!576379 m!833827))

(assert (=> b!576379 m!833789))

(declare-fun m!833829 () Bool)

(assert (=> b!576379 m!833829))

(declare-fun m!833831 () Bool)

(assert (=> b!576379 m!833831))

(check-sat (not b!576385) (not start!53232) (not b!576379) (not b!576376) tp_is_empty!3221 (not b!576377) (not b_next!16061) (not b!576372) (not b!576356) (not b!576375) b_and!56423 (not b!576368) (not b!576382) b_and!56421 (not b!576390) (not b!576358) (not b!576374) (not b_next!16063) (not b!576387) (not b!576370) (not b!576384) (not b!576378) (not b!576365) b_and!56419 (not b_next!16065) b_and!56425 (not b!576360) (not b!576386) (not b_next!16067) (not b!576371) (not b!576389) (not b!576373) (not b!576393) (not b!576361) (not b!576383))
(check-sat b_and!56423 b_and!56421 (not b_next!16063) (not b_next!16067) (not b_next!16061) b_and!56419 (not b_next!16065) b_and!56425)
(get-model)

(declare-fun d!202355 () Bool)

(declare-fun lt!243981 () List!5678)

(assert (=> d!202355 (= (++!1587 lt!243959 lt!243981) input!2705)))

(declare-fun e!348362 () List!5678)

(assert (=> d!202355 (= lt!243981 e!348362)))

(declare-fun c!107929 () Bool)

(assert (=> d!202355 (= c!107929 ((_ is Cons!5668) lt!243959))))

(assert (=> d!202355 (>= (size!4513 input!2705) (size!4513 lt!243959))))

(assert (=> d!202355 (= (getSuffix!252 input!2705 lt!243959) lt!243981)))

(declare-fun b!576421 () Bool)

(declare-fun tail!753 (List!5678) List!5678)

(assert (=> b!576421 (= e!348362 (getSuffix!252 (tail!753 input!2705) (t!77391 lt!243959)))))

(declare-fun b!576422 () Bool)

(assert (=> b!576422 (= e!348362 input!2705)))

(assert (= (and d!202355 c!107929) b!576421))

(assert (= (and d!202355 (not c!107929)) b!576422))

(declare-fun m!833859 () Bool)

(assert (=> d!202355 m!833859))

(declare-fun m!833861 () Bool)

(assert (=> d!202355 m!833861))

(assert (=> d!202355 m!833815))

(declare-fun m!833863 () Bool)

(assert (=> b!576421 m!833863))

(assert (=> b!576421 m!833863))

(declare-fun m!833865 () Bool)

(assert (=> b!576421 m!833865))

(assert (=> b!576379 d!202355))

(declare-fun d!202359 () Bool)

(declare-fun res!247868 () Bool)

(declare-fun e!348365 () Bool)

(assert (=> d!202359 (=> (not res!247868) (not e!348365))))

(declare-fun validRegex!481 (Regex!1433) Bool)

(assert (=> d!202359 (= res!247868 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (=> d!202359 (= (ruleValid!309 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932)))) e!348365)))

(declare-fun b!576427 () Bool)

(declare-fun res!247869 () Bool)

(assert (=> b!576427 (=> (not res!247869) (not e!348365))))

(declare-fun nullable!386 (Regex!1433) Bool)

(assert (=> b!576427 (= res!247869 (not (nullable!386 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun b!576428 () Bool)

(assert (=> b!576428 (= e!348365 (not (= (tag!1361 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (String!7359 ""))))))

(assert (= (and d!202359 res!247868) b!576427))

(assert (= (and b!576427 res!247869) b!576428))

(declare-fun m!833869 () Bool)

(assert (=> d!202359 m!833869))

(declare-fun m!833871 () Bool)

(assert (=> b!576427 m!833871))

(assert (=> b!576379 d!202359))

(declare-fun d!202363 () Bool)

(declare-fun lt!243990 () Int)

(assert (=> d!202363 (>= lt!243990 0)))

(declare-fun e!348371 () Int)

(assert (=> d!202363 (= lt!243990 e!348371)))

(declare-fun c!107932 () Bool)

(assert (=> d!202363 (= c!107932 ((_ is Nil!5668) lt!243945))))

(assert (=> d!202363 (= (size!4513 lt!243945) lt!243990)))

(declare-fun b!576438 () Bool)

(assert (=> b!576438 (= e!348371 0)))

(declare-fun b!576439 () Bool)

(assert (=> b!576439 (= e!348371 (+ 1 (size!4513 (t!77391 lt!243945))))))

(assert (= (and d!202363 c!107932) b!576438))

(assert (= (and d!202363 (not c!107932)) b!576439))

(declare-fun m!833881 () Bool)

(assert (=> b!576439 m!833881))

(assert (=> b!576379 d!202363))

(declare-fun b!576456 () Bool)

(declare-fun e!348384 () Bool)

(declare-fun e!348383 () Bool)

(assert (=> b!576456 (= e!348384 e!348383)))

(declare-fun res!247882 () Bool)

(assert (=> b!576456 (=> (not res!247882) (not e!348383))))

(assert (=> b!576456 (= res!247882 (not ((_ is Nil!5668) lt!243934)))))

(declare-fun b!576457 () Bool)

(declare-fun res!247885 () Bool)

(assert (=> b!576457 (=> (not res!247885) (not e!348383))))

(declare-fun head!1224 (List!5678) C!3788)

(assert (=> b!576457 (= res!247885 (= (head!1224 lt!243945) (head!1224 lt!243934)))))

(declare-fun b!576459 () Bool)

(declare-fun e!348382 () Bool)

(assert (=> b!576459 (= e!348382 (>= (size!4513 lt!243934) (size!4513 lt!243945)))))

(declare-fun d!202367 () Bool)

(assert (=> d!202367 e!348382))

(declare-fun res!247884 () Bool)

(assert (=> d!202367 (=> res!247884 e!348382)))

(declare-fun lt!243995 () Bool)

(assert (=> d!202367 (= res!247884 (not lt!243995))))

(assert (=> d!202367 (= lt!243995 e!348384)))

(declare-fun res!247883 () Bool)

(assert (=> d!202367 (=> res!247883 e!348384)))

(assert (=> d!202367 (= res!247883 ((_ is Nil!5668) lt!243945))))

(assert (=> d!202367 (= (isPrefix!733 lt!243945 lt!243934) lt!243995)))

(declare-fun b!576458 () Bool)

(assert (=> b!576458 (= e!348383 (isPrefix!733 (tail!753 lt!243945) (tail!753 lt!243934)))))

(assert (= (and d!202367 (not res!247883)) b!576456))

(assert (= (and b!576456 res!247882) b!576457))

(assert (= (and b!576457 res!247885) b!576458))

(assert (= (and d!202367 (not res!247884)) b!576459))

(declare-fun m!833883 () Bool)

(assert (=> b!576457 m!833883))

(declare-fun m!833885 () Bool)

(assert (=> b!576457 m!833885))

(declare-fun m!833887 () Bool)

(assert (=> b!576459 m!833887))

(assert (=> b!576459 m!833821))

(declare-fun m!833889 () Bool)

(assert (=> b!576458 m!833889))

(declare-fun m!833891 () Bool)

(assert (=> b!576458 m!833891))

(assert (=> b!576458 m!833889))

(assert (=> b!576458 m!833891))

(declare-fun m!833897 () Bool)

(assert (=> b!576458 m!833897))

(assert (=> b!576379 d!202367))

(declare-fun d!202369 () Bool)

(assert (=> d!202369 (and (= lt!243945 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!243999 () Unit!10237)

(declare-fun choose!4127 (List!5678 List!5678 List!5678 List!5678) Unit!10237)

(assert (=> d!202369 (= lt!243999 (choose!4127 lt!243945 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!202369 (= (++!1587 lt!243945 suffix!1342) (++!1587 input!2705 suffix!1342))))

(assert (=> d!202369 (= (lemmaConcatSameAndSameSizesThenSameLists!176 lt!243945 suffix!1342 input!2705 suffix!1342) lt!243999)))

(declare-fun bs!69377 () Bool)

(assert (= bs!69377 d!202369))

(declare-fun m!833909 () Bool)

(assert (=> bs!69377 m!833909))

(assert (=> bs!69377 m!833737))

(assert (=> bs!69377 m!833725))

(assert (=> b!576379 d!202369))

(declare-fun d!202375 () Bool)

(declare-fun lt!244000 () Int)

(assert (=> d!202375 (>= lt!244000 0)))

(declare-fun e!348387 () Int)

(assert (=> d!202375 (= lt!244000 e!348387)))

(declare-fun c!107936 () Bool)

(assert (=> d!202375 (= c!107936 ((_ is Nil!5668) lt!243959))))

(assert (=> d!202375 (= (size!4513 lt!243959) lt!244000)))

(declare-fun b!576464 () Bool)

(assert (=> b!576464 (= e!348387 0)))

(declare-fun b!576465 () Bool)

(assert (=> b!576465 (= e!348387 (+ 1 (size!4513 (t!77391 lt!243959))))))

(assert (= (and d!202375 c!107936) b!576464))

(assert (= (and d!202375 (not c!107936)) b!576465))

(declare-fun m!833911 () Bool)

(assert (=> b!576465 m!833911))

(assert (=> b!576379 d!202375))

(declare-fun d!202377 () Bool)

(declare-fun e!348395 () Bool)

(assert (=> d!202377 e!348395))

(declare-fun res!247894 () Bool)

(assert (=> d!202377 (=> (not res!247894) (not e!348395))))

(declare-fun semiInverseModEq!425 (Int Int) Bool)

(assert (=> d!202377 (= res!247894 (semiInverseModEq!425 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun Unit!10244 () Unit!10237)

(assert (=> d!202377 (= (lemmaInv!235 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) Unit!10244)))

(declare-fun b!576474 () Bool)

(declare-fun equivClasses!408 (Int Int) Bool)

(assert (=> b!576474 (= e!348395 (equivClasses!408 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(assert (= (and d!202377 res!247894) b!576474))

(declare-fun m!833919 () Bool)

(assert (=> d!202377 m!833919))

(declare-fun m!833921 () Bool)

(assert (=> b!576474 m!833921))

(assert (=> b!576379 d!202377))

(declare-fun d!202383 () Bool)

(assert (=> d!202383 (isPrefix!733 input!2705 input!2705)))

(declare-fun lt!244003 () Unit!10237)

(declare-fun choose!4128 (List!5678 List!5678) Unit!10237)

(assert (=> d!202383 (= lt!244003 (choose!4128 input!2705 input!2705))))

(assert (=> d!202383 (= (lemmaIsPrefixRefl!471 input!2705 input!2705) lt!244003)))

(declare-fun bs!69379 () Bool)

(assert (= bs!69379 d!202383))

(assert (=> bs!69379 m!833829))

(declare-fun m!833931 () Bool)

(assert (=> bs!69379 m!833931))

(assert (=> b!576379 d!202383))

(declare-fun d!202389 () Bool)

(assert (=> d!202389 (= (size!4512 token!491) (size!4513 (originalCharacters!1138 token!491)))))

(declare-fun Unit!10245 () Unit!10237)

(assert (=> d!202389 (= (lemmaCharactersSize!166 token!491) Unit!10245)))

(declare-fun bs!69381 () Bool)

(assert (= bs!69381 d!202389))

(assert (=> bs!69381 m!833713))

(assert (=> b!576379 d!202389))

(declare-fun d!202393 () Bool)

(declare-fun list!2356 (Conc!1816) List!5678)

(assert (=> d!202393 (= (list!2355 (charsOf!728 (_1!3590 (v!16310 lt!243932)))) (list!2356 (c!107922 (charsOf!728 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun bs!69382 () Bool)

(assert (= bs!69382 d!202393))

(declare-fun m!833933 () Bool)

(assert (=> bs!69382 m!833933))

(assert (=> b!576379 d!202393))

(declare-fun b!576478 () Bool)

(declare-fun e!348400 () Bool)

(declare-fun e!348399 () Bool)

(assert (=> b!576478 (= e!348400 e!348399)))

(declare-fun res!247898 () Bool)

(assert (=> b!576478 (=> (not res!247898) (not e!348399))))

(assert (=> b!576478 (= res!247898 (not ((_ is Nil!5668) lt!243952)))))

(declare-fun b!576479 () Bool)

(declare-fun res!247901 () Bool)

(assert (=> b!576479 (=> (not res!247901) (not e!348399))))

(assert (=> b!576479 (= res!247901 (= (head!1224 input!2705) (head!1224 lt!243952)))))

(declare-fun b!576481 () Bool)

(declare-fun e!348398 () Bool)

(assert (=> b!576481 (= e!348398 (>= (size!4513 lt!243952) (size!4513 input!2705)))))

(declare-fun d!202395 () Bool)

(assert (=> d!202395 e!348398))

(declare-fun res!247900 () Bool)

(assert (=> d!202395 (=> res!247900 e!348398)))

(declare-fun lt!244006 () Bool)

(assert (=> d!202395 (= res!247900 (not lt!244006))))

(assert (=> d!202395 (= lt!244006 e!348400)))

(declare-fun res!247899 () Bool)

(assert (=> d!202395 (=> res!247899 e!348400)))

(assert (=> d!202395 (= res!247899 ((_ is Nil!5668) input!2705))))

(assert (=> d!202395 (= (isPrefix!733 input!2705 lt!243952) lt!244006)))

(declare-fun b!576480 () Bool)

(assert (=> b!576480 (= e!348399 (isPrefix!733 (tail!753 input!2705) (tail!753 lt!243952)))))

(assert (= (and d!202395 (not res!247899)) b!576478))

(assert (= (and b!576478 res!247898) b!576479))

(assert (= (and b!576479 res!247901) b!576480))

(assert (= (and d!202395 (not res!247900)) b!576481))

(declare-fun m!833935 () Bool)

(assert (=> b!576479 m!833935))

(declare-fun m!833937 () Bool)

(assert (=> b!576479 m!833937))

(declare-fun m!833939 () Bool)

(assert (=> b!576481 m!833939))

(assert (=> b!576481 m!833861))

(assert (=> b!576480 m!833863))

(declare-fun m!833943 () Bool)

(assert (=> b!576480 m!833943))

(assert (=> b!576480 m!833863))

(assert (=> b!576480 m!833943))

(declare-fun m!833945 () Bool)

(assert (=> b!576480 m!833945))

(assert (=> b!576379 d!202395))

(declare-fun d!202399 () Bool)

(assert (=> d!202399 (isPrefix!733 lt!243945 (++!1587 lt!243945 suffix!1342))))

(declare-fun lt!244012 () Unit!10237)

(declare-fun choose!4129 (List!5678 List!5678) Unit!10237)

(assert (=> d!202399 (= lt!244012 (choose!4129 lt!243945 suffix!1342))))

(assert (=> d!202399 (= (lemmaConcatTwoListThenFirstIsPrefix!580 lt!243945 suffix!1342) lt!244012)))

(declare-fun bs!69385 () Bool)

(assert (= bs!69385 d!202399))

(assert (=> bs!69385 m!833737))

(assert (=> bs!69385 m!833737))

(declare-fun m!833961 () Bool)

(assert (=> bs!69385 m!833961))

(declare-fun m!833963 () Bool)

(assert (=> bs!69385 m!833963))

(assert (=> b!576379 d!202399))

(declare-fun d!202409 () Bool)

(declare-fun dynLambda!3288 (Int BalanceConc!3640) TokenValue!1123)

(assert (=> d!202409 (= (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!243968) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))

(declare-fun b_lambda!22493 () Bool)

(assert (=> (not b_lambda!22493) (not d!202409)))

(declare-fun tb!50275 () Bool)

(declare-fun t!77403 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77403) tb!50275))

(declare-fun result!56286 () Bool)

(assert (=> tb!50275 (= result!56286 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))

(declare-fun m!833973 () Bool)

(assert (=> tb!50275 m!833973))

(assert (=> d!202409 t!77403))

(declare-fun b_and!56435 () Bool)

(assert (= b_and!56419 (and (=> t!77403 result!56286) b_and!56435)))

(declare-fun t!77405 () Bool)

(declare-fun tb!50277 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77405) tb!50277))

(declare-fun result!56290 () Bool)

(assert (= result!56290 result!56286))

(assert (=> d!202409 t!77405))

(declare-fun b_and!56437 () Bool)

(assert (= b_and!56423 (and (=> t!77405 result!56290) b_and!56437)))

(declare-fun m!833975 () Bool)

(assert (=> d!202409 m!833975))

(assert (=> b!576379 d!202409))

(declare-fun d!202415 () Bool)

(assert (=> d!202415 (ruleValid!309 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))))))

(declare-fun lt!244025 () Unit!10237)

(declare-fun choose!4131 (LexerInterface!985 Rule!1998 List!5680) Unit!10237)

(assert (=> d!202415 (= lt!244025 (choose!4131 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) rules!3103))))

(assert (=> d!202415 (contains!1329 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932))))))

(assert (=> d!202415 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!166 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) rules!3103) lt!244025)))

(declare-fun bs!69390 () Bool)

(assert (= bs!69390 d!202415))

(assert (=> bs!69390 m!833827))

(declare-fun m!834005 () Bool)

(assert (=> bs!69390 m!834005))

(assert (=> bs!69390 m!833741))

(assert (=> b!576379 d!202415))

(declare-fun b!576506 () Bool)

(declare-fun e!348421 () Bool)

(declare-fun e!348420 () Bool)

(assert (=> b!576506 (= e!348421 e!348420)))

(declare-fun res!247920 () Bool)

(assert (=> b!576506 (=> (not res!247920) (not e!348420))))

(assert (=> b!576506 (= res!247920 (not ((_ is Nil!5668) lt!243934)))))

(declare-fun b!576507 () Bool)

(declare-fun res!247923 () Bool)

(assert (=> b!576507 (=> (not res!247923) (not e!348420))))

(assert (=> b!576507 (= res!247923 (= (head!1224 input!2705) (head!1224 lt!243934)))))

(declare-fun b!576509 () Bool)

(declare-fun e!348419 () Bool)

(assert (=> b!576509 (= e!348419 (>= (size!4513 lt!243934) (size!4513 input!2705)))))

(declare-fun d!202429 () Bool)

(assert (=> d!202429 e!348419))

(declare-fun res!247922 () Bool)

(assert (=> d!202429 (=> res!247922 e!348419)))

(declare-fun lt!244026 () Bool)

(assert (=> d!202429 (= res!247922 (not lt!244026))))

(assert (=> d!202429 (= lt!244026 e!348421)))

(declare-fun res!247921 () Bool)

(assert (=> d!202429 (=> res!247921 e!348421)))

(assert (=> d!202429 (= res!247921 ((_ is Nil!5668) input!2705))))

(assert (=> d!202429 (= (isPrefix!733 input!2705 lt!243934) lt!244026)))

(declare-fun b!576508 () Bool)

(assert (=> b!576508 (= e!348420 (isPrefix!733 (tail!753 input!2705) (tail!753 lt!243934)))))

(assert (= (and d!202429 (not res!247921)) b!576506))

(assert (= (and b!576506 res!247920) b!576507))

(assert (= (and b!576507 res!247923) b!576508))

(assert (= (and d!202429 (not res!247922)) b!576509))

(assert (=> b!576507 m!833935))

(assert (=> b!576507 m!833885))

(assert (=> b!576509 m!833887))

(assert (=> b!576509 m!833861))

(assert (=> b!576508 m!833863))

(assert (=> b!576508 m!833891))

(assert (=> b!576508 m!833863))

(assert (=> b!576508 m!833891))

(declare-fun m!834007 () Bool)

(assert (=> b!576508 m!834007))

(assert (=> b!576379 d!202429))

(declare-fun d!202431 () Bool)

(assert (=> d!202431 (= (size!4512 (_1!3590 (v!16310 lt!243932))) (size!4513 (originalCharacters!1138 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun Unit!10249 () Unit!10237)

(assert (=> d!202431 (= (lemmaCharactersSize!166 (_1!3590 (v!16310 lt!243932))) Unit!10249)))

(declare-fun bs!69392 () Bool)

(assert (= bs!69392 d!202431))

(assert (=> bs!69392 m!833745))

(assert (=> b!576379 d!202431))

(declare-fun b!576524 () Bool)

(declare-fun e!348429 () List!5678)

(assert (=> b!576524 (= e!348429 (_2!3590 (v!16310 lt!243932)))))

(declare-fun e!348430 () Bool)

(declare-fun lt!244035 () List!5678)

(declare-fun b!576527 () Bool)

(assert (=> b!576527 (= e!348430 (or (not (= (_2!3590 (v!16310 lt!243932)) Nil!5668)) (= lt!244035 lt!243959)))))

(declare-fun d!202435 () Bool)

(assert (=> d!202435 e!348430))

(declare-fun res!247928 () Bool)

(assert (=> d!202435 (=> (not res!247928) (not e!348430))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1001 (List!5678) (InoxSet C!3788))

(assert (=> d!202435 (= res!247928 (= (content!1001 lt!244035) ((_ map or) (content!1001 lt!243959) (content!1001 (_2!3590 (v!16310 lt!243932))))))))

(assert (=> d!202435 (= lt!244035 e!348429)))

(declare-fun c!107944 () Bool)

(assert (=> d!202435 (= c!107944 ((_ is Nil!5668) lt!243959))))

(assert (=> d!202435 (= (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932))) lt!244035)))

(declare-fun b!576526 () Bool)

(declare-fun res!247929 () Bool)

(assert (=> b!576526 (=> (not res!247929) (not e!348430))))

(assert (=> b!576526 (= res!247929 (= (size!4513 lt!244035) (+ (size!4513 lt!243959) (size!4513 (_2!3590 (v!16310 lt!243932))))))))

(declare-fun b!576525 () Bool)

(assert (=> b!576525 (= e!348429 (Cons!5668 (h!11069 lt!243959) (++!1587 (t!77391 lt!243959) (_2!3590 (v!16310 lt!243932)))))))

(assert (= (and d!202435 c!107944) b!576524))

(assert (= (and d!202435 (not c!107944)) b!576525))

(assert (= (and d!202435 res!247928) b!576526))

(assert (= (and b!576526 res!247929) b!576527))

(declare-fun m!834015 () Bool)

(assert (=> d!202435 m!834015))

(declare-fun m!834017 () Bool)

(assert (=> d!202435 m!834017))

(declare-fun m!834019 () Bool)

(assert (=> d!202435 m!834019))

(declare-fun m!834021 () Bool)

(assert (=> b!576526 m!834021))

(assert (=> b!576526 m!833815))

(declare-fun m!834023 () Bool)

(assert (=> b!576526 m!834023))

(declare-fun m!834025 () Bool)

(assert (=> b!576525 m!834025))

(assert (=> b!576379 d!202435))

(declare-fun d!202439 () Bool)

(declare-fun lt!244038 () BalanceConc!3640)

(assert (=> d!202439 (= (list!2355 lt!244038) (originalCharacters!1138 (_1!3590 (v!16310 lt!243932))))))

(declare-fun dynLambda!3289 (Int TokenValue!1123) BalanceConc!3640)

(assert (=> d!202439 (= lt!244038 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!202439 (= (charsOf!728 (_1!3590 (v!16310 lt!243932))) lt!244038)))

(declare-fun b_lambda!22495 () Bool)

(assert (=> (not b_lambda!22495) (not d!202439)))

(declare-fun t!77407 () Bool)

(declare-fun tb!50279 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77407) tb!50279))

(declare-fun b!576535 () Bool)

(declare-fun e!348436 () Bool)

(declare-fun tp!180714 () Bool)

(declare-fun inv!7136 (Conc!1816) Bool)

(assert (=> b!576535 (= e!348436 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))) tp!180714))))

(declare-fun result!56292 () Bool)

(declare-fun inv!7137 (BalanceConc!3640) Bool)

(assert (=> tb!50279 (= result!56292 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))) e!348436))))

(assert (= tb!50279 b!576535))

(declare-fun m!834031 () Bool)

(assert (=> b!576535 m!834031))

(declare-fun m!834033 () Bool)

(assert (=> tb!50279 m!834033))

(assert (=> d!202439 t!77407))

(declare-fun b_and!56439 () Bool)

(assert (= b_and!56421 (and (=> t!77407 result!56292) b_and!56439)))

(declare-fun t!77409 () Bool)

(declare-fun tb!50281 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77409) tb!50281))

(declare-fun result!56296 () Bool)

(assert (= result!56296 result!56292))

(assert (=> d!202439 t!77409))

(declare-fun b_and!56441 () Bool)

(assert (= b_and!56425 (and (=> t!77409 result!56296) b_and!56441)))

(declare-fun m!834035 () Bool)

(assert (=> d!202439 m!834035))

(declare-fun m!834037 () Bool)

(assert (=> d!202439 m!834037))

(assert (=> b!576379 d!202439))

(declare-fun b!576538 () Bool)

(declare-fun e!348440 () Bool)

(declare-fun e!348439 () Bool)

(assert (=> b!576538 (= e!348440 e!348439)))

(declare-fun res!247933 () Bool)

(assert (=> b!576538 (=> (not res!247933) (not e!348439))))

(assert (=> b!576538 (= res!247933 (not ((_ is Nil!5668) input!2705)))))

(declare-fun b!576539 () Bool)

(declare-fun res!247936 () Bool)

(assert (=> b!576539 (=> (not res!247936) (not e!348439))))

(assert (=> b!576539 (= res!247936 (= (head!1224 input!2705) (head!1224 input!2705)))))

(declare-fun b!576541 () Bool)

(declare-fun e!348438 () Bool)

(assert (=> b!576541 (= e!348438 (>= (size!4513 input!2705) (size!4513 input!2705)))))

(declare-fun d!202447 () Bool)

(assert (=> d!202447 e!348438))

(declare-fun res!247935 () Bool)

(assert (=> d!202447 (=> res!247935 e!348438)))

(declare-fun lt!244041 () Bool)

(assert (=> d!202447 (= res!247935 (not lt!244041))))

(assert (=> d!202447 (= lt!244041 e!348440)))

(declare-fun res!247934 () Bool)

(assert (=> d!202447 (=> res!247934 e!348440)))

(assert (=> d!202447 (= res!247934 ((_ is Nil!5668) input!2705))))

(assert (=> d!202447 (= (isPrefix!733 input!2705 input!2705) lt!244041)))

(declare-fun b!576540 () Bool)

(assert (=> b!576540 (= e!348439 (isPrefix!733 (tail!753 input!2705) (tail!753 input!2705)))))

(assert (= (and d!202447 (not res!247934)) b!576538))

(assert (= (and b!576538 res!247933) b!576539))

(assert (= (and b!576539 res!247936) b!576540))

(assert (= (and d!202447 (not res!247935)) b!576541))

(assert (=> b!576539 m!833935))

(assert (=> b!576539 m!833935))

(assert (=> b!576541 m!833861))

(assert (=> b!576541 m!833861))

(assert (=> b!576540 m!833863))

(assert (=> b!576540 m!833863))

(assert (=> b!576540 m!833863))

(assert (=> b!576540 m!833863))

(declare-fun m!834039 () Bool)

(assert (=> b!576540 m!834039))

(assert (=> b!576379 d!202447))

(declare-fun d!202449 () Bool)

(assert (=> d!202449 (ruleValid!309 thiss!22590 (rule!1849 token!491))))

(declare-fun lt!244042 () Unit!10237)

(assert (=> d!202449 (= lt!244042 (choose!4131 thiss!22590 (rule!1849 token!491) rules!3103))))

(assert (=> d!202449 (contains!1329 rules!3103 (rule!1849 token!491))))

(assert (=> d!202449 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!166 thiss!22590 (rule!1849 token!491) rules!3103) lt!244042)))

(declare-fun bs!69393 () Bool)

(assert (= bs!69393 d!202449))

(assert (=> bs!69393 m!833811))

(declare-fun m!834041 () Bool)

(assert (=> bs!69393 m!834041))

(assert (=> bs!69393 m!833739))

(assert (=> b!576379 d!202449))

(declare-fun d!202451 () Bool)

(assert (=> d!202451 (isPrefix!733 input!2705 (++!1587 input!2705 suffix!1342))))

(declare-fun lt!244043 () Unit!10237)

(assert (=> d!202451 (= lt!244043 (choose!4129 input!2705 suffix!1342))))

(assert (=> d!202451 (= (lemmaConcatTwoListThenFirstIsPrefix!580 input!2705 suffix!1342) lt!244043)))

(declare-fun bs!69394 () Bool)

(assert (= bs!69394 d!202451))

(assert (=> bs!69394 m!833725))

(assert (=> bs!69394 m!833725))

(declare-fun m!834043 () Bool)

(assert (=> bs!69394 m!834043))

(declare-fun m!834045 () Bool)

(assert (=> bs!69394 m!834045))

(assert (=> b!576379 d!202451))

(declare-fun d!202453 () Bool)

(declare-fun res!247937 () Bool)

(declare-fun e!348445 () Bool)

(assert (=> d!202453 (=> (not res!247937) (not e!348445))))

(assert (=> d!202453 (= res!247937 (validRegex!481 (regex!1099 (rule!1849 token!491))))))

(assert (=> d!202453 (= (ruleValid!309 thiss!22590 (rule!1849 token!491)) e!348445)))

(declare-fun b!576548 () Bool)

(declare-fun res!247938 () Bool)

(assert (=> b!576548 (=> (not res!247938) (not e!348445))))

(assert (=> b!576548 (= res!247938 (not (nullable!386 (regex!1099 (rule!1849 token!491)))))))

(declare-fun b!576549 () Bool)

(assert (=> b!576549 (= e!348445 (not (= (tag!1361 (rule!1849 token!491)) (String!7359 ""))))))

(assert (= (and d!202453 res!247937) b!576548))

(assert (= (and b!576548 res!247938) b!576549))

(declare-fun m!834047 () Bool)

(assert (=> d!202453 m!834047))

(declare-fun m!834049 () Bool)

(assert (=> b!576548 m!834049))

(assert (=> b!576379 d!202453))

(declare-fun d!202455 () Bool)

(assert (=> d!202455 (isPrefix!733 lt!243959 (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932))))))

(declare-fun lt!244044 () Unit!10237)

(assert (=> d!202455 (= lt!244044 (choose!4129 lt!243959 (_2!3590 (v!16310 lt!243932))))))

(assert (=> d!202455 (= (lemmaConcatTwoListThenFirstIsPrefix!580 lt!243959 (_2!3590 (v!16310 lt!243932))) lt!244044)))

(declare-fun bs!69395 () Bool)

(assert (= bs!69395 d!202455))

(assert (=> bs!69395 m!833817))

(assert (=> bs!69395 m!833817))

(declare-fun m!834051 () Bool)

(assert (=> bs!69395 m!834051))

(declare-fun m!834053 () Bool)

(assert (=> bs!69395 m!834053))

(assert (=> b!576379 d!202455))

(declare-fun b!576550 () Bool)

(declare-fun e!348448 () Bool)

(declare-fun e!348447 () Bool)

(assert (=> b!576550 (= e!348448 e!348447)))

(declare-fun res!247939 () Bool)

(assert (=> b!576550 (=> (not res!247939) (not e!348447))))

(assert (=> b!576550 (= res!247939 (not ((_ is Nil!5668) lt!243957)))))

(declare-fun b!576551 () Bool)

(declare-fun res!247942 () Bool)

(assert (=> b!576551 (=> (not res!247942) (not e!348447))))

(assert (=> b!576551 (= res!247942 (= (head!1224 lt!243959) (head!1224 lt!243957)))))

(declare-fun b!576553 () Bool)

(declare-fun e!348446 () Bool)

(assert (=> b!576553 (= e!348446 (>= (size!4513 lt!243957) (size!4513 lt!243959)))))

(declare-fun d!202457 () Bool)

(assert (=> d!202457 e!348446))

(declare-fun res!247941 () Bool)

(assert (=> d!202457 (=> res!247941 e!348446)))

(declare-fun lt!244045 () Bool)

(assert (=> d!202457 (= res!247941 (not lt!244045))))

(assert (=> d!202457 (= lt!244045 e!348448)))

(declare-fun res!247940 () Bool)

(assert (=> d!202457 (=> res!247940 e!348448)))

(assert (=> d!202457 (= res!247940 ((_ is Nil!5668) lt!243959))))

(assert (=> d!202457 (= (isPrefix!733 lt!243959 lt!243957) lt!244045)))

(declare-fun b!576552 () Bool)

(assert (=> b!576552 (= e!348447 (isPrefix!733 (tail!753 lt!243959) (tail!753 lt!243957)))))

(assert (= (and d!202457 (not res!247940)) b!576550))

(assert (= (and b!576550 res!247939) b!576551))

(assert (= (and b!576551 res!247942) b!576552))

(assert (= (and d!202457 (not res!247941)) b!576553))

(declare-fun m!834055 () Bool)

(assert (=> b!576551 m!834055))

(declare-fun m!834057 () Bool)

(assert (=> b!576551 m!834057))

(declare-fun m!834059 () Bool)

(assert (=> b!576553 m!834059))

(assert (=> b!576553 m!833815))

(declare-fun m!834061 () Bool)

(assert (=> b!576552 m!834061))

(declare-fun m!834063 () Bool)

(assert (=> b!576552 m!834063))

(assert (=> b!576552 m!834061))

(assert (=> b!576552 m!834063))

(declare-fun m!834065 () Bool)

(assert (=> b!576552 m!834065))

(assert (=> b!576379 d!202457))

(declare-fun d!202459 () Bool)

(assert (=> d!202459 (= (_2!3590 (v!16310 lt!243932)) lt!243944)))

(declare-fun lt!244050 () Unit!10237)

(declare-fun choose!4134 (List!5678 List!5678 List!5678 List!5678 List!5678) Unit!10237)

(assert (=> d!202459 (= lt!244050 (choose!4134 lt!243959 (_2!3590 (v!16310 lt!243932)) lt!243959 lt!243944 input!2705))))

(assert (=> d!202459 (isPrefix!733 lt!243959 input!2705)))

(assert (=> d!202459 (= (lemmaSamePrefixThenSameSuffix!456 lt!243959 (_2!3590 (v!16310 lt!243932)) lt!243959 lt!243944 input!2705) lt!244050)))

(declare-fun bs!69396 () Bool)

(assert (= bs!69396 d!202459))

(declare-fun m!834071 () Bool)

(assert (=> bs!69396 m!834071))

(declare-fun m!834073 () Bool)

(assert (=> bs!69396 m!834073))

(assert (=> b!576379 d!202459))

(declare-fun d!202465 () Bool)

(declare-fun fromListB!561 (List!5678) BalanceConc!3640)

(assert (=> d!202465 (= (seqFromList!1287 lt!243959) (fromListB!561 lt!243959))))

(declare-fun bs!69397 () Bool)

(assert (= bs!69397 d!202465))

(declare-fun m!834075 () Bool)

(assert (=> bs!69397 m!834075))

(assert (=> b!576379 d!202465))

(declare-fun d!202467 () Bool)

(declare-fun e!348453 () Bool)

(assert (=> d!202467 e!348453))

(declare-fun res!247943 () Bool)

(assert (=> d!202467 (=> (not res!247943) (not e!348453))))

(assert (=> d!202467 (= res!247943 (semiInverseModEq!425 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))))))

(declare-fun Unit!10250 () Unit!10237)

(assert (=> d!202467 (= (lemmaInv!235 (transformation!1099 (rule!1849 token!491))) Unit!10250)))

(declare-fun b!576562 () Bool)

(assert (=> b!576562 (= e!348453 (equivClasses!408 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))))))

(assert (= (and d!202467 res!247943) b!576562))

(declare-fun m!834077 () Bool)

(assert (=> d!202467 m!834077))

(declare-fun m!834079 () Bool)

(assert (=> b!576562 m!834079))

(assert (=> b!576379 d!202467))

(declare-fun b!576609 () Bool)

(declare-fun e!348474 () Bool)

(assert (=> b!576609 (= e!348474 true)))

(declare-fun d!202469 () Bool)

(assert (=> d!202469 e!348474))

(assert (= d!202469 b!576609))

(declare-fun order!4619 () Int)

(declare-fun order!4621 () Int)

(declare-fun lambda!15709 () Int)

(declare-fun dynLambda!3290 (Int Int) Int)

(declare-fun dynLambda!3291 (Int Int) Int)

(assert (=> b!576609 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (dynLambda!3291 order!4621 lambda!15709))))

(declare-fun order!4623 () Int)

(declare-fun dynLambda!3292 (Int Int) Int)

(assert (=> b!576609 (< (dynLambda!3292 order!4623 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (dynLambda!3291 order!4621 lambda!15709))))

(assert (=> d!202469 (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))) (list!2355 lt!243968))))

(declare-fun lt!244070 () Unit!10237)

(declare-fun ForallOf!107 (Int BalanceConc!3640) Unit!10237)

(assert (=> d!202469 (= lt!244070 (ForallOf!107 lambda!15709 lt!243968))))

(assert (=> d!202469 (= (lemmaSemiInverse!202 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!243968) lt!244070)))

(declare-fun b_lambda!22497 () Bool)

(assert (=> (not b_lambda!22497) (not d!202469)))

(declare-fun tb!50283 () Bool)

(declare-fun t!77411 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77411) tb!50283))

(declare-fun tp!180715 () Bool)

(declare-fun b!576610 () Bool)

(declare-fun e!348475 () Bool)

(assert (=> b!576610 (= e!348475 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))) tp!180715))))

(declare-fun result!56298 () Bool)

(assert (=> tb!50283 (= result!56298 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))) e!348475))))

(assert (= tb!50283 b!576610))

(declare-fun m!834115 () Bool)

(assert (=> b!576610 m!834115))

(declare-fun m!834117 () Bool)

(assert (=> tb!50283 m!834117))

(assert (=> d!202469 t!77411))

(declare-fun b_and!56443 () Bool)

(assert (= b_and!56439 (and (=> t!77411 result!56298) b_and!56443)))

(declare-fun tb!50285 () Bool)

(declare-fun t!77413 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77413) tb!50285))

(declare-fun result!56300 () Bool)

(assert (= result!56300 result!56298))

(assert (=> d!202469 t!77413))

(declare-fun b_and!56445 () Bool)

(assert (= b_and!56441 (and (=> t!77413 result!56300) b_and!56445)))

(declare-fun b_lambda!22499 () Bool)

(assert (=> (not b_lambda!22499) (not d!202469)))

(assert (=> d!202469 t!77403))

(declare-fun b_and!56447 () Bool)

(assert (= b_and!56435 (and (=> t!77403 result!56286) b_and!56447)))

(assert (=> d!202469 t!77405))

(declare-fun b_and!56449 () Bool)

(assert (= b_and!56437 (and (=> t!77405 result!56290) b_and!56449)))

(declare-fun m!834119 () Bool)

(assert (=> d!202469 m!834119))

(assert (=> d!202469 m!833975))

(declare-fun m!834121 () Bool)

(assert (=> d!202469 m!834121))

(assert (=> d!202469 m!833975))

(declare-fun m!834123 () Bool)

(assert (=> d!202469 m!834123))

(assert (=> d!202469 m!834121))

(declare-fun m!834125 () Bool)

(assert (=> d!202469 m!834125))

(assert (=> b!576358 d!202469))

(declare-fun bs!69398 () Bool)

(declare-fun d!202475 () Bool)

(assert (= bs!69398 (and d!202475 d!202469)))

(declare-fun lambda!15710 () Int)

(assert (=> bs!69398 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (= lambda!15710 lambda!15709))))

(declare-fun b!576611 () Bool)

(declare-fun e!348476 () Bool)

(assert (=> b!576611 (= e!348476 true)))

(assert (=> d!202475 e!348476))

(assert (= d!202475 b!576611))

(assert (=> b!576611 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (dynLambda!3291 order!4621 lambda!15710))))

(assert (=> b!576611 (< (dynLambda!3292 order!4623 (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (dynLambda!3291 order!4621 lambda!15710))))

(assert (=> d!202475 (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))) (list!2355 lt!243954))))

(declare-fun lt!244071 () Unit!10237)

(assert (=> d!202475 (= lt!244071 (ForallOf!107 lambda!15710 lt!243954))))

(assert (=> d!202475 (= (lemmaSemiInverse!202 (transformation!1099 (rule!1849 token!491)) lt!243954) lt!244071)))

(declare-fun b_lambda!22501 () Bool)

(assert (=> (not b_lambda!22501) (not d!202475)))

(declare-fun t!77415 () Bool)

(declare-fun tb!50287 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77415) tb!50287))

(declare-fun b!576612 () Bool)

(declare-fun tp!180716 () Bool)

(declare-fun e!348477 () Bool)

(assert (=> b!576612 (= e!348477 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))) tp!180716))))

(declare-fun result!56302 () Bool)

(assert (=> tb!50287 (= result!56302 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))) e!348477))))

(assert (= tb!50287 b!576612))

(declare-fun m!834127 () Bool)

(assert (=> b!576612 m!834127))

(declare-fun m!834129 () Bool)

(assert (=> tb!50287 m!834129))

(assert (=> d!202475 t!77415))

(declare-fun b_and!56451 () Bool)

(assert (= b_and!56443 (and (=> t!77415 result!56302) b_and!56451)))

(declare-fun t!77417 () Bool)

(declare-fun tb!50289 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77417) tb!50289))

(declare-fun result!56304 () Bool)

(assert (= result!56304 result!56302))

(assert (=> d!202475 t!77417))

(declare-fun b_and!56453 () Bool)

(assert (= b_and!56445 (and (=> t!77417 result!56304) b_and!56453)))

(declare-fun b_lambda!22503 () Bool)

(assert (=> (not b_lambda!22503) (not d!202475)))

(declare-fun tb!50291 () Bool)

(declare-fun t!77419 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77419) tb!50291))

(declare-fun result!56306 () Bool)

(assert (=> tb!50291 (= result!56306 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))

(declare-fun m!834131 () Bool)

(assert (=> tb!50291 m!834131))

(assert (=> d!202475 t!77419))

(declare-fun b_and!56455 () Bool)

(assert (= b_and!56447 (and (=> t!77419 result!56306) b_and!56455)))

(declare-fun t!77421 () Bool)

(declare-fun tb!50293 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77421) tb!50293))

(declare-fun result!56308 () Bool)

(assert (= result!56308 result!56306))

(assert (=> d!202475 t!77421))

(declare-fun b_and!56457 () Bool)

(assert (= b_and!56449 (and (=> t!77421 result!56308) b_and!56457)))

(declare-fun m!834133 () Bool)

(assert (=> d!202475 m!834133))

(declare-fun m!834135 () Bool)

(assert (=> d!202475 m!834135))

(declare-fun m!834137 () Bool)

(assert (=> d!202475 m!834137))

(assert (=> d!202475 m!834135))

(declare-fun m!834139 () Bool)

(assert (=> d!202475 m!834139))

(assert (=> d!202475 m!834137))

(declare-fun m!834141 () Bool)

(assert (=> d!202475 m!834141))

(assert (=> b!576358 d!202475))

(declare-fun d!202477 () Bool)

(assert (=> d!202477 (= (apply!1364 (transformation!1099 (rule!1849 token!491)) lt!243954) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))

(declare-fun b_lambda!22505 () Bool)

(assert (=> (not b_lambda!22505) (not d!202477)))

(assert (=> d!202477 t!77419))

(declare-fun b_and!56459 () Bool)

(assert (= b_and!56455 (and (=> t!77419 result!56306) b_and!56459)))

(assert (=> d!202477 t!77421))

(declare-fun b_and!56461 () Bool)

(assert (= b_and!56457 (and (=> t!77421 result!56308) b_and!56461)))

(assert (=> d!202477 m!834135))

(assert (=> b!576358 d!202477))

(declare-fun d!202479 () Bool)

(assert (=> d!202479 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 token!491) lt!243952) (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (rule!1849 token!491)) (seqFromList!1287 lt!243945)) (rule!1849 token!491) (size!4513 lt!243945) lt!243945) suffix!1342)))))

(declare-fun lt!244074 () Unit!10237)

(declare-fun choose!4135 (LexerInterface!985 List!5680 List!5678 List!5678 List!5678 Rule!1998) Unit!10237)

(assert (=> d!202479 (= lt!244074 (choose!4135 thiss!22590 rules!3103 lt!243945 lt!243952 suffix!1342 (rule!1849 token!491)))))

(assert (=> d!202479 (not (isEmpty!4094 rules!3103))))

(assert (=> d!202479 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!134 thiss!22590 rules!3103 lt!243945 lt!243952 suffix!1342 (rule!1849 token!491)) lt!244074)))

(declare-fun bs!69399 () Bool)

(assert (= bs!69399 d!202479))

(assert (=> bs!69399 m!833763))

(declare-fun m!834143 () Bool)

(assert (=> bs!69399 m!834143))

(assert (=> bs!69399 m!833821))

(assert (=> bs!69399 m!833773))

(assert (=> bs!69399 m!833763))

(assert (=> bs!69399 m!833755))

(declare-fun m!834145 () Bool)

(assert (=> bs!69399 m!834145))

(assert (=> b!576358 d!202479))

(declare-fun b!576681 () Bool)

(declare-fun e!348513 () Bool)

(declare-fun lt!244097 () Option!1450)

(assert (=> b!576681 (= e!348513 (= (size!4512 (_1!3590 (get!2163 lt!244097))) (size!4513 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097))))))))

(declare-fun b!576682 () Bool)

(declare-fun res!248008 () Bool)

(assert (=> b!576682 (=> (not res!248008) (not e!348513))))

(assert (=> b!576682 (= res!248008 (= (rule!1849 (_1!3590 (get!2163 lt!244097))) (rule!1849 token!491)))))

(declare-fun d!202481 () Bool)

(declare-fun e!348515 () Bool)

(assert (=> d!202481 e!348515))

(declare-fun res!248006 () Bool)

(assert (=> d!202481 (=> res!248006 e!348515)))

(declare-fun isEmpty!4096 (Option!1450) Bool)

(assert (=> d!202481 (= res!248006 (isEmpty!4096 lt!244097))))

(declare-fun e!348516 () Option!1450)

(assert (=> d!202481 (= lt!244097 e!348516)))

(declare-fun c!107976 () Bool)

(declare-datatypes ((tuple2!6654 0))(
  ( (tuple2!6655 (_1!3591 List!5678) (_2!3591 List!5678)) )
))
(declare-fun lt!244098 () tuple2!6654)

(assert (=> d!202481 (= c!107976 (isEmpty!4093 (_1!3591 lt!244098)))))

(declare-fun findLongestMatch!149 (Regex!1433 List!5678) tuple2!6654)

(assert (=> d!202481 (= lt!244098 (findLongestMatch!149 (regex!1099 (rule!1849 token!491)) lt!243952))))

(assert (=> d!202481 (ruleValid!309 thiss!22590 (rule!1849 token!491))))

(assert (=> d!202481 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 token!491) lt!243952) lt!244097)))

(declare-fun b!576683 () Bool)

(assert (=> b!576683 (= e!348516 None!1449)))

(declare-fun b!576684 () Bool)

(declare-fun e!348514 () Bool)

(declare-fun findLongestMatchInner!170 (Regex!1433 List!5678 Int List!5678 List!5678 Int) tuple2!6654)

(assert (=> b!576684 (= e!348514 (matchR!580 (regex!1099 (rule!1849 token!491)) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(declare-fun b!576685 () Bool)

(declare-fun res!248009 () Bool)

(assert (=> b!576685 (=> (not res!248009) (not e!348513))))

(assert (=> b!576685 (= res!248009 (= (value!36188 (_1!3590 (get!2163 lt!244097))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097)))))))))

(declare-fun b!576686 () Bool)

(declare-fun res!248012 () Bool)

(assert (=> b!576686 (=> (not res!248012) (not e!348513))))

(assert (=> b!576686 (= res!248012 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097)))) (_2!3590 (get!2163 lt!244097))) lt!243952))))

(declare-fun b!576687 () Bool)

(declare-fun size!4514 (BalanceConc!3640) Int)

(assert (=> b!576687 (= e!348516 (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (rule!1849 token!491)) (seqFromList!1287 (_1!3591 lt!244098))) (rule!1849 token!491) (size!4514 (seqFromList!1287 (_1!3591 lt!244098))) (_1!3591 lt!244098)) (_2!3591 lt!244098))))))

(declare-fun lt!244094 () Unit!10237)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!154 (Regex!1433 List!5678) Unit!10237)

(assert (=> b!576687 (= lt!244094 (longestMatchIsAcceptedByMatchOrIsEmpty!154 (regex!1099 (rule!1849 token!491)) lt!243952))))

(declare-fun res!248007 () Bool)

(assert (=> b!576687 (= res!248007 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(assert (=> b!576687 (=> res!248007 e!348514)))

(assert (=> b!576687 e!348514))

(declare-fun lt!244095 () Unit!10237)

(assert (=> b!576687 (= lt!244095 lt!244094)))

(declare-fun lt!244096 () Unit!10237)

(assert (=> b!576687 (= lt!244096 (lemmaSemiInverse!202 (transformation!1099 (rule!1849 token!491)) (seqFromList!1287 (_1!3591 lt!244098))))))

(declare-fun b!576688 () Bool)

(declare-fun res!248011 () Bool)

(assert (=> b!576688 (=> (not res!248011) (not e!348513))))

(assert (=> b!576688 (= res!248011 (< (size!4513 (_2!3590 (get!2163 lt!244097))) (size!4513 lt!243952)))))

(declare-fun b!576689 () Bool)

(assert (=> b!576689 (= e!348515 e!348513)))

(declare-fun res!248010 () Bool)

(assert (=> b!576689 (=> (not res!248010) (not e!348513))))

(assert (=> b!576689 (= res!248010 (matchR!580 (regex!1099 (rule!1849 token!491)) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))))))

(assert (= (and d!202481 c!107976) b!576683))

(assert (= (and d!202481 (not c!107976)) b!576687))

(assert (= (and b!576687 (not res!248007)) b!576684))

(assert (= (and d!202481 (not res!248006)) b!576689))

(assert (= (and b!576689 res!248010) b!576686))

(assert (= (and b!576686 res!248012) b!576688))

(assert (= (and b!576688 res!248011) b!576682))

(assert (= (and b!576682 res!248008) b!576685))

(assert (= (and b!576685 res!248009) b!576681))

(declare-fun m!834175 () Bool)

(assert (=> b!576687 m!834175))

(assert (=> b!576687 m!834175))

(declare-fun m!834177 () Bool)

(assert (=> b!576687 m!834177))

(declare-fun m!834179 () Bool)

(assert (=> b!576687 m!834179))

(assert (=> b!576687 m!833939))

(declare-fun m!834181 () Bool)

(assert (=> b!576687 m!834181))

(assert (=> b!576687 m!833939))

(declare-fun m!834183 () Bool)

(assert (=> b!576687 m!834183))

(assert (=> b!576687 m!834175))

(declare-fun m!834185 () Bool)

(assert (=> b!576687 m!834185))

(declare-fun m!834187 () Bool)

(assert (=> b!576687 m!834187))

(assert (=> b!576687 m!834175))

(declare-fun m!834189 () Bool)

(assert (=> b!576687 m!834189))

(assert (=> b!576687 m!834179))

(declare-fun m!834191 () Bool)

(assert (=> b!576689 m!834191))

(declare-fun m!834193 () Bool)

(assert (=> b!576689 m!834193))

(assert (=> b!576689 m!834193))

(declare-fun m!834195 () Bool)

(assert (=> b!576689 m!834195))

(assert (=> b!576689 m!834195))

(declare-fun m!834197 () Bool)

(assert (=> b!576689 m!834197))

(assert (=> b!576682 m!834191))

(assert (=> b!576684 m!834179))

(assert (=> b!576684 m!833939))

(assert (=> b!576684 m!834179))

(assert (=> b!576684 m!833939))

(assert (=> b!576684 m!834181))

(declare-fun m!834199 () Bool)

(assert (=> b!576684 m!834199))

(assert (=> b!576681 m!834191))

(declare-fun m!834201 () Bool)

(assert (=> b!576681 m!834201))

(declare-fun m!834203 () Bool)

(assert (=> d!202481 m!834203))

(declare-fun m!834205 () Bool)

(assert (=> d!202481 m!834205))

(declare-fun m!834207 () Bool)

(assert (=> d!202481 m!834207))

(assert (=> d!202481 m!833811))

(assert (=> b!576685 m!834191))

(declare-fun m!834209 () Bool)

(assert (=> b!576685 m!834209))

(assert (=> b!576685 m!834209))

(declare-fun m!834211 () Bool)

(assert (=> b!576685 m!834211))

(assert (=> b!576688 m!834191))

(declare-fun m!834213 () Bool)

(assert (=> b!576688 m!834213))

(assert (=> b!576688 m!833939))

(assert (=> b!576686 m!834191))

(assert (=> b!576686 m!834193))

(assert (=> b!576686 m!834193))

(assert (=> b!576686 m!834195))

(assert (=> b!576686 m!834195))

(declare-fun m!834215 () Bool)

(assert (=> b!576686 m!834215))

(assert (=> b!576358 d!202481))

(declare-fun b!576690 () Bool)

(declare-fun e!348517 () Bool)

(declare-fun lt!244102 () Option!1450)

(assert (=> b!576690 (= e!348517 (= (size!4512 (_1!3590 (get!2163 lt!244102))) (size!4513 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102))))))))

(declare-fun b!576691 () Bool)

(declare-fun res!248015 () Bool)

(assert (=> b!576691 (=> (not res!248015) (not e!348517))))

(assert (=> b!576691 (= res!248015 (= (rule!1849 (_1!3590 (get!2163 lt!244102))) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun d!202493 () Bool)

(declare-fun e!348519 () Bool)

(assert (=> d!202493 e!348519))

(declare-fun res!248013 () Bool)

(assert (=> d!202493 (=> res!248013 e!348519)))

(assert (=> d!202493 (= res!248013 (isEmpty!4096 lt!244102))))

(declare-fun e!348520 () Option!1450)

(assert (=> d!202493 (= lt!244102 e!348520)))

(declare-fun c!107977 () Bool)

(declare-fun lt!244103 () tuple2!6654)

(assert (=> d!202493 (= c!107977 (isEmpty!4093 (_1!3591 lt!244103)))))

(assert (=> d!202493 (= lt!244103 (findLongestMatch!149 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) input!2705))))

(assert (=> d!202493 (ruleValid!309 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))))))

(assert (=> d!202493 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) input!2705) lt!244102)))

(declare-fun b!576692 () Bool)

(assert (=> b!576692 (= e!348520 None!1449)))

(declare-fun b!576693 () Bool)

(declare-fun e!348518 () Bool)

(assert (=> b!576693 (= e!348518 (matchR!580 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(declare-fun b!576694 () Bool)

(declare-fun res!248016 () Bool)

(assert (=> b!576694 (=> (not res!248016) (not e!348517))))

(assert (=> b!576694 (= res!248016 (= (value!36188 (_1!3590 (get!2163 lt!244102))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102)))))))))

(declare-fun b!576695 () Bool)

(declare-fun res!248019 () Bool)

(assert (=> b!576695 (=> (not res!248019) (not e!348517))))

(assert (=> b!576695 (= res!248019 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102)))) (_2!3590 (get!2163 lt!244102))) input!2705))))

(declare-fun b!576696 () Bool)

(assert (=> b!576696 (= e!348520 (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (seqFromList!1287 (_1!3591 lt!244103))) (rule!1849 (_1!3590 (v!16310 lt!243932))) (size!4514 (seqFromList!1287 (_1!3591 lt!244103))) (_1!3591 lt!244103)) (_2!3591 lt!244103))))))

(declare-fun lt!244099 () Unit!10237)

(assert (=> b!576696 (= lt!244099 (longestMatchIsAcceptedByMatchOrIsEmpty!154 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) input!2705))))

(declare-fun res!248014 () Bool)

(assert (=> b!576696 (= res!248014 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(assert (=> b!576696 (=> res!248014 e!348518)))

(assert (=> b!576696 e!348518))

(declare-fun lt!244100 () Unit!10237)

(assert (=> b!576696 (= lt!244100 lt!244099)))

(declare-fun lt!244101 () Unit!10237)

(assert (=> b!576696 (= lt!244101 (lemmaSemiInverse!202 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (seqFromList!1287 (_1!3591 lt!244103))))))

(declare-fun b!576697 () Bool)

(declare-fun res!248018 () Bool)

(assert (=> b!576697 (=> (not res!248018) (not e!348517))))

(assert (=> b!576697 (= res!248018 (< (size!4513 (_2!3590 (get!2163 lt!244102))) (size!4513 input!2705)))))

(declare-fun b!576698 () Bool)

(assert (=> b!576698 (= e!348519 e!348517)))

(declare-fun res!248017 () Bool)

(assert (=> b!576698 (=> (not res!248017) (not e!348517))))

(assert (=> b!576698 (= res!248017 (matchR!580 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))))))

(assert (= (and d!202493 c!107977) b!576692))

(assert (= (and d!202493 (not c!107977)) b!576696))

(assert (= (and b!576696 (not res!248014)) b!576693))

(assert (= (and d!202493 (not res!248013)) b!576698))

(assert (= (and b!576698 res!248017) b!576695))

(assert (= (and b!576695 res!248019) b!576697))

(assert (= (and b!576697 res!248018) b!576691))

(assert (= (and b!576691 res!248015) b!576694))

(assert (= (and b!576694 res!248016) b!576690))

(declare-fun m!834217 () Bool)

(assert (=> b!576696 m!834217))

(assert (=> b!576696 m!834217))

(declare-fun m!834219 () Bool)

(assert (=> b!576696 m!834219))

(assert (=> b!576696 m!834179))

(assert (=> b!576696 m!833861))

(declare-fun m!834221 () Bool)

(assert (=> b!576696 m!834221))

(assert (=> b!576696 m!833861))

(declare-fun m!834223 () Bool)

(assert (=> b!576696 m!834223))

(assert (=> b!576696 m!834217))

(declare-fun m!834225 () Bool)

(assert (=> b!576696 m!834225))

(declare-fun m!834227 () Bool)

(assert (=> b!576696 m!834227))

(assert (=> b!576696 m!834217))

(declare-fun m!834229 () Bool)

(assert (=> b!576696 m!834229))

(assert (=> b!576696 m!834179))

(declare-fun m!834231 () Bool)

(assert (=> b!576698 m!834231))

(declare-fun m!834233 () Bool)

(assert (=> b!576698 m!834233))

(assert (=> b!576698 m!834233))

(declare-fun m!834235 () Bool)

(assert (=> b!576698 m!834235))

(assert (=> b!576698 m!834235))

(declare-fun m!834237 () Bool)

(assert (=> b!576698 m!834237))

(assert (=> b!576691 m!834231))

(assert (=> b!576693 m!834179))

(assert (=> b!576693 m!833861))

(assert (=> b!576693 m!834179))

(assert (=> b!576693 m!833861))

(assert (=> b!576693 m!834221))

(declare-fun m!834239 () Bool)

(assert (=> b!576693 m!834239))

(assert (=> b!576690 m!834231))

(declare-fun m!834241 () Bool)

(assert (=> b!576690 m!834241))

(declare-fun m!834243 () Bool)

(assert (=> d!202493 m!834243))

(declare-fun m!834245 () Bool)

(assert (=> d!202493 m!834245))

(declare-fun m!834247 () Bool)

(assert (=> d!202493 m!834247))

(assert (=> d!202493 m!833827))

(assert (=> b!576694 m!834231))

(declare-fun m!834249 () Bool)

(assert (=> b!576694 m!834249))

(assert (=> b!576694 m!834249))

(declare-fun m!834251 () Bool)

(assert (=> b!576694 m!834251))

(assert (=> b!576697 m!834231))

(declare-fun m!834253 () Bool)

(assert (=> b!576697 m!834253))

(assert (=> b!576697 m!833861))

(assert (=> b!576695 m!834231))

(assert (=> b!576695 m!834233))

(assert (=> b!576695 m!834233))

(assert (=> b!576695 m!834235))

(assert (=> b!576695 m!834235))

(declare-fun m!834255 () Bool)

(assert (=> b!576695 m!834255))

(assert (=> b!576358 d!202493))

(declare-fun d!202495 () Bool)

(assert (=> d!202495 (= suffix!1342 lt!243931)))

(declare-fun lt!244104 () Unit!10237)

(assert (=> d!202495 (= lt!244104 (choose!4134 lt!243945 suffix!1342 lt!243945 lt!243931 lt!243952))))

(assert (=> d!202495 (isPrefix!733 lt!243945 lt!243952)))

(assert (=> d!202495 (= (lemmaSamePrefixThenSameSuffix!456 lt!243945 suffix!1342 lt!243945 lt!243931 lt!243952) lt!244104)))

(declare-fun bs!69402 () Bool)

(assert (= bs!69402 d!202495))

(declare-fun m!834257 () Bool)

(assert (=> bs!69402 m!834257))

(declare-fun m!834259 () Bool)

(assert (=> bs!69402 m!834259))

(assert (=> b!576358 d!202495))

(declare-fun d!202497 () Bool)

(declare-fun lt!244105 () List!5678)

(assert (=> d!202497 (= (++!1587 lt!243945 lt!244105) lt!243952)))

(declare-fun e!348521 () List!5678)

(assert (=> d!202497 (= lt!244105 e!348521)))

(declare-fun c!107978 () Bool)

(assert (=> d!202497 (= c!107978 ((_ is Cons!5668) lt!243945))))

(assert (=> d!202497 (>= (size!4513 lt!243952) (size!4513 lt!243945))))

(assert (=> d!202497 (= (getSuffix!252 lt!243952 lt!243945) lt!244105)))

(declare-fun b!576699 () Bool)

(assert (=> b!576699 (= e!348521 (getSuffix!252 (tail!753 lt!243952) (t!77391 lt!243945)))))

(declare-fun b!576700 () Bool)

(assert (=> b!576700 (= e!348521 lt!243952)))

(assert (= (and d!202497 c!107978) b!576699))

(assert (= (and d!202497 (not c!107978)) b!576700))

(declare-fun m!834261 () Bool)

(assert (=> d!202497 m!834261))

(assert (=> d!202497 m!833939))

(assert (=> d!202497 m!833821))

(assert (=> b!576699 m!833943))

(assert (=> b!576699 m!833943))

(declare-fun m!834263 () Bool)

(assert (=> b!576699 m!834263))

(assert (=> b!576358 d!202497))

(declare-fun d!202499 () Bool)

(assert (=> d!202499 (= (seqFromList!1287 lt!243945) (fromListB!561 lt!243945))))

(declare-fun bs!69403 () Bool)

(assert (= bs!69403 d!202499))

(declare-fun m!834265 () Bool)

(assert (=> bs!69403 m!834265))

(assert (=> b!576358 d!202499))

(declare-fun d!202501 () Bool)

(assert (=> d!202501 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) input!2705) (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (seqFromList!1287 lt!243959)) (rule!1849 (_1!3590 (v!16310 lt!243932))) (size!4513 lt!243959) lt!243959) (_2!3590 (v!16310 lt!243932)))))))

(declare-fun lt!244106 () Unit!10237)

(assert (=> d!202501 (= lt!244106 (choose!4135 thiss!22590 rules!3103 lt!243959 input!2705 (_2!3590 (v!16310 lt!243932)) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!202501 (not (isEmpty!4094 rules!3103))))

(assert (=> d!202501 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!134 thiss!22590 rules!3103 lt!243959 input!2705 (_2!3590 (v!16310 lt!243932)) (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!244106)))

(declare-fun bs!69404 () Bool)

(assert (= bs!69404 d!202501))

(assert (=> bs!69404 m!833787))

(declare-fun m!834267 () Bool)

(assert (=> bs!69404 m!834267))

(assert (=> bs!69404 m!833815))

(assert (=> bs!69404 m!833765))

(assert (=> bs!69404 m!833787))

(assert (=> bs!69404 m!833755))

(declare-fun m!834269 () Bool)

(assert (=> bs!69404 m!834269))

(assert (=> b!576358 d!202501))

(declare-fun d!202503 () Bool)

(declare-fun res!248024 () Bool)

(declare-fun e!348524 () Bool)

(assert (=> d!202503 (=> (not res!248024) (not e!348524))))

(assert (=> d!202503 (= res!248024 (not (isEmpty!4093 (originalCharacters!1138 token!491))))))

(assert (=> d!202503 (= (inv!7133 token!491) e!348524)))

(declare-fun b!576705 () Bool)

(declare-fun res!248025 () Bool)

(assert (=> b!576705 (=> (not res!248025) (not e!348524))))

(assert (=> b!576705 (= res!248025 (= (originalCharacters!1138 token!491) (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))))))

(declare-fun b!576706 () Bool)

(assert (=> b!576706 (= e!348524 (= (size!4512 token!491) (size!4513 (originalCharacters!1138 token!491))))))

(assert (= (and d!202503 res!248024) b!576705))

(assert (= (and b!576705 res!248025) b!576706))

(declare-fun b_lambda!22511 () Bool)

(assert (=> (not b_lambda!22511) (not b!576705)))

(declare-fun t!77427 () Bool)

(declare-fun tb!50299 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77427) tb!50299))

(declare-fun b!576707 () Bool)

(declare-fun e!348525 () Bool)

(declare-fun tp!180718 () Bool)

(assert (=> b!576707 (= e!348525 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))) tp!180718))))

(declare-fun result!56314 () Bool)

(assert (=> tb!50299 (= result!56314 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))) e!348525))))

(assert (= tb!50299 b!576707))

(declare-fun m!834271 () Bool)

(assert (=> b!576707 m!834271))

(declare-fun m!834273 () Bool)

(assert (=> tb!50299 m!834273))

(assert (=> b!576705 t!77427))

(declare-fun b_and!56471 () Bool)

(assert (= b_and!56451 (and (=> t!77427 result!56314) b_and!56471)))

(declare-fun t!77429 () Bool)

(declare-fun tb!50301 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77429) tb!50301))

(declare-fun result!56316 () Bool)

(assert (= result!56316 result!56314))

(assert (=> b!576705 t!77429))

(declare-fun b_and!56473 () Bool)

(assert (= b_and!56453 (and (=> t!77429 result!56316) b_and!56473)))

(declare-fun m!834275 () Bool)

(assert (=> d!202503 m!834275))

(declare-fun m!834277 () Bool)

(assert (=> b!576705 m!834277))

(assert (=> b!576705 m!834277))

(declare-fun m!834279 () Bool)

(assert (=> b!576705 m!834279))

(assert (=> b!576706 m!833713))

(assert (=> start!53232 d!202503))

(declare-fun d!202505 () Bool)

(declare-fun lt!244107 () Int)

(assert (=> d!202505 (>= lt!244107 0)))

(declare-fun e!348526 () Int)

(assert (=> d!202505 (= lt!244107 e!348526)))

(declare-fun c!107979 () Bool)

(assert (=> d!202505 (= c!107979 ((_ is Nil!5668) (originalCharacters!1138 token!491)))))

(assert (=> d!202505 (= (size!4513 (originalCharacters!1138 token!491)) lt!244107)))

(declare-fun b!576708 () Bool)

(assert (=> b!576708 (= e!348526 0)))

(declare-fun b!576709 () Bool)

(assert (=> b!576709 (= e!348526 (+ 1 (size!4513 (t!77391 (originalCharacters!1138 token!491)))))))

(assert (= (and d!202505 c!107979) b!576708))

(assert (= (and d!202505 (not c!107979)) b!576709))

(declare-fun m!834281 () Bool)

(assert (=> b!576709 m!834281))

(assert (=> b!576382 d!202505))

(declare-fun b!576766 () Bool)

(declare-fun e!348551 () Option!1450)

(declare-fun lt!244142 () Option!1450)

(declare-fun lt!244140 () Option!1450)

(assert (=> b!576766 (= e!348551 (ite (and ((_ is None!1449) lt!244142) ((_ is None!1449) lt!244140)) None!1449 (ite ((_ is None!1449) lt!244140) lt!244142 (ite ((_ is None!1449) lt!244142) lt!244140 (ite (>= (size!4512 (_1!3590 (v!16310 lt!244142))) (size!4512 (_1!3590 (v!16310 lt!244140)))) lt!244142 lt!244140)))))))

(declare-fun call!39836 () Option!1450)

(assert (=> b!576766 (= lt!244142 call!39836)))

(assert (=> b!576766 (= lt!244140 (maxPrefix!683 thiss!22590 (t!77393 rules!3103) input!2705))))

(declare-fun b!576767 () Bool)

(assert (=> b!576767 (= e!348551 call!39836)))

(declare-fun b!576768 () Bool)

(declare-fun res!248069 () Bool)

(declare-fun e!348552 () Bool)

(assert (=> b!576768 (=> (not res!248069) (not e!348552))))

(declare-fun lt!244139 () Option!1450)

(assert (=> b!576768 (= res!248069 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))) (_2!3590 (get!2163 lt!244139))) input!2705))))

(declare-fun b!576769 () Bool)

(declare-fun res!248070 () Bool)

(assert (=> b!576769 (=> (not res!248070) (not e!348552))))

(assert (=> b!576769 (= res!248070 (< (size!4513 (_2!3590 (get!2163 lt!244139))) (size!4513 input!2705)))))

(declare-fun d!202507 () Bool)

(declare-fun e!348553 () Bool)

(assert (=> d!202507 e!348553))

(declare-fun res!248068 () Bool)

(assert (=> d!202507 (=> res!248068 e!348553)))

(assert (=> d!202507 (= res!248068 (isEmpty!4096 lt!244139))))

(assert (=> d!202507 (= lt!244139 e!348551)))

(declare-fun c!107986 () Bool)

(assert (=> d!202507 (= c!107986 (and ((_ is Cons!5670) rules!3103) ((_ is Nil!5670) (t!77393 rules!3103))))))

(declare-fun lt!244143 () Unit!10237)

(declare-fun lt!244141 () Unit!10237)

(assert (=> d!202507 (= lt!244143 lt!244141)))

(assert (=> d!202507 (isPrefix!733 input!2705 input!2705)))

(assert (=> d!202507 (= lt!244141 (lemmaIsPrefixRefl!471 input!2705 input!2705))))

(declare-fun rulesValidInductive!394 (LexerInterface!985 List!5680) Bool)

(assert (=> d!202507 (rulesValidInductive!394 thiss!22590 rules!3103)))

(assert (=> d!202507 (= (maxPrefix!683 thiss!22590 rules!3103 input!2705) lt!244139)))

(declare-fun b!576770 () Bool)

(declare-fun res!248074 () Bool)

(assert (=> b!576770 (=> (not res!248074) (not e!348552))))

(assert (=> b!576770 (= res!248074 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))) (originalCharacters!1138 (_1!3590 (get!2163 lt!244139)))))))

(declare-fun b!576771 () Bool)

(declare-fun res!248072 () Bool)

(assert (=> b!576771 (=> (not res!248072) (not e!348552))))

(assert (=> b!576771 (= res!248072 (= (value!36188 (_1!3590 (get!2163 lt!244139))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244139)))))))))

(declare-fun b!576772 () Bool)

(declare-fun res!248073 () Bool)

(assert (=> b!576772 (=> (not res!248073) (not e!348552))))

(assert (=> b!576772 (= res!248073 (matchR!580 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))))))

(declare-fun b!576773 () Bool)

(assert (=> b!576773 (= e!348553 e!348552)))

(declare-fun res!248071 () Bool)

(assert (=> b!576773 (=> (not res!248071) (not e!348552))))

(assert (=> b!576773 (= res!248071 (isDefined!1261 lt!244139))))

(declare-fun b!576774 () Bool)

(assert (=> b!576774 (= e!348552 (contains!1329 rules!3103 (rule!1849 (_1!3590 (get!2163 lt!244139)))))))

(declare-fun bm!39831 () Bool)

(assert (=> bm!39831 (= call!39836 (maxPrefixOneRule!384 thiss!22590 (h!11071 rules!3103) input!2705))))

(assert (= (and d!202507 c!107986) b!576767))

(assert (= (and d!202507 (not c!107986)) b!576766))

(assert (= (or b!576767 b!576766) bm!39831))

(assert (= (and d!202507 (not res!248068)) b!576773))

(assert (= (and b!576773 res!248071) b!576770))

(assert (= (and b!576770 res!248074) b!576769))

(assert (= (and b!576769 res!248070) b!576768))

(assert (= (and b!576768 res!248069) b!576771))

(assert (= (and b!576771 res!248072) b!576772))

(assert (= (and b!576772 res!248073) b!576774))

(declare-fun m!834381 () Bool)

(assert (=> b!576771 m!834381))

(declare-fun m!834383 () Bool)

(assert (=> b!576771 m!834383))

(assert (=> b!576771 m!834383))

(declare-fun m!834385 () Bool)

(assert (=> b!576771 m!834385))

(assert (=> b!576772 m!834381))

(declare-fun m!834387 () Bool)

(assert (=> b!576772 m!834387))

(assert (=> b!576772 m!834387))

(declare-fun m!834389 () Bool)

(assert (=> b!576772 m!834389))

(assert (=> b!576772 m!834389))

(declare-fun m!834391 () Bool)

(assert (=> b!576772 m!834391))

(assert (=> b!576769 m!834381))

(declare-fun m!834393 () Bool)

(assert (=> b!576769 m!834393))

(assert (=> b!576769 m!833861))

(assert (=> b!576768 m!834381))

(assert (=> b!576768 m!834387))

(assert (=> b!576768 m!834387))

(assert (=> b!576768 m!834389))

(assert (=> b!576768 m!834389))

(declare-fun m!834395 () Bool)

(assert (=> b!576768 m!834395))

(declare-fun m!834397 () Bool)

(assert (=> b!576773 m!834397))

(declare-fun m!834399 () Bool)

(assert (=> b!576766 m!834399))

(assert (=> b!576774 m!834381))

(declare-fun m!834401 () Bool)

(assert (=> b!576774 m!834401))

(declare-fun m!834403 () Bool)

(assert (=> d!202507 m!834403))

(assert (=> d!202507 m!833829))

(assert (=> d!202507 m!833793))

(declare-fun m!834405 () Bool)

(assert (=> d!202507 m!834405))

(assert (=> b!576770 m!834381))

(assert (=> b!576770 m!834387))

(assert (=> b!576770 m!834387))

(assert (=> b!576770 m!834389))

(declare-fun m!834407 () Bool)

(assert (=> bm!39831 m!834407))

(assert (=> b!576360 d!202507))

(declare-fun d!202515 () Bool)

(assert (=> d!202515 (= (get!2163 lt!243932) (v!16310 lt!243932))))

(assert (=> b!576361 d!202515))

(assert (=> b!576384 d!202469))

(declare-fun d!202517 () Bool)

(assert (=> d!202517 (not (matchR!580 (regex!1099 (rule!1849 token!491)) input!2705))))

(declare-fun lt!244146 () Unit!10237)

(declare-fun choose!4137 (LexerInterface!985 List!5680 Rule!1998 List!5678 List!5678 List!5678 Rule!1998) Unit!10237)

(assert (=> d!202517 (= lt!244146 (choose!4137 thiss!22590 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932))) lt!243959 input!2705 input!2705 (rule!1849 token!491)))))

(assert (=> d!202517 (isPrefix!733 lt!243959 input!2705)))

(assert (=> d!202517 (= (lemmaMaxPrefixOutputsMaxPrefix!58 thiss!22590 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932))) lt!243959 input!2705 input!2705 (rule!1849 token!491)) lt!244146)))

(declare-fun bs!69406 () Bool)

(assert (= bs!69406 d!202517))

(assert (=> bs!69406 m!833735))

(declare-fun m!834409 () Bool)

(assert (=> bs!69406 m!834409))

(assert (=> bs!69406 m!834073))

(assert (=> b!576384 d!202517))

(declare-fun b!576805 () Bool)

(declare-fun e!348572 () Bool)

(declare-fun lt!244153 () Bool)

(declare-fun call!39839 () Bool)

(assert (=> b!576805 (= e!348572 (= lt!244153 call!39839))))

(declare-fun b!576806 () Bool)

(declare-fun e!348577 () Bool)

(assert (=> b!576806 (= e!348577 (not (= (head!1224 input!2705) (c!107921 (regex!1099 (rule!1849 token!491))))))))

(declare-fun b!576807 () Bool)

(declare-fun e!348574 () Bool)

(assert (=> b!576807 (= e!348574 (nullable!386 (regex!1099 (rule!1849 token!491))))))

(declare-fun d!202519 () Bool)

(assert (=> d!202519 e!348572))

(declare-fun c!107995 () Bool)

(assert (=> d!202519 (= c!107995 ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 token!491))))))

(assert (=> d!202519 (= lt!244153 e!348574)))

(declare-fun c!107993 () Bool)

(assert (=> d!202519 (= c!107993 (isEmpty!4093 input!2705))))

(assert (=> d!202519 (validRegex!481 (regex!1099 (rule!1849 token!491)))))

(assert (=> d!202519 (= (matchR!580 (regex!1099 (rule!1849 token!491)) input!2705) lt!244153)))

(declare-fun b!576808 () Bool)

(declare-fun derivativeStep!300 (Regex!1433 C!3788) Regex!1433)

(assert (=> b!576808 (= e!348574 (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705)) (tail!753 input!2705)))))

(declare-fun b!576809 () Bool)

(declare-fun e!348571 () Bool)

(assert (=> b!576809 (= e!348571 e!348577)))

(declare-fun res!248096 () Bool)

(assert (=> b!576809 (=> res!248096 e!348577)))

(assert (=> b!576809 (= res!248096 call!39839)))

(declare-fun b!576810 () Bool)

(declare-fun e!348575 () Bool)

(assert (=> b!576810 (= e!348575 (= (head!1224 input!2705) (c!107921 (regex!1099 (rule!1849 token!491)))))))

(declare-fun b!576811 () Bool)

(declare-fun res!248097 () Bool)

(declare-fun e!348573 () Bool)

(assert (=> b!576811 (=> res!248097 e!348573)))

(assert (=> b!576811 (= res!248097 e!348575)))

(declare-fun res!248100 () Bool)

(assert (=> b!576811 (=> (not res!248100) (not e!348575))))

(assert (=> b!576811 (= res!248100 lt!244153)))

(declare-fun b!576812 () Bool)

(declare-fun e!348576 () Bool)

(assert (=> b!576812 (= e!348572 e!348576)))

(declare-fun c!107994 () Bool)

(assert (=> b!576812 (= c!107994 ((_ is EmptyLang!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun b!576813 () Bool)

(declare-fun res!248095 () Bool)

(assert (=> b!576813 (=> (not res!248095) (not e!348575))))

(assert (=> b!576813 (= res!248095 (not call!39839))))

(declare-fun b!576814 () Bool)

(declare-fun res!248094 () Bool)

(assert (=> b!576814 (=> res!248094 e!348573)))

(assert (=> b!576814 (= res!248094 (not ((_ is ElementMatch!1433) (regex!1099 (rule!1849 token!491)))))))

(assert (=> b!576814 (= e!348576 e!348573)))

(declare-fun b!576815 () Bool)

(assert (=> b!576815 (= e!348573 e!348571)))

(declare-fun res!248098 () Bool)

(assert (=> b!576815 (=> (not res!248098) (not e!348571))))

(assert (=> b!576815 (= res!248098 (not lt!244153))))

(declare-fun b!576816 () Bool)

(declare-fun res!248093 () Bool)

(assert (=> b!576816 (=> (not res!248093) (not e!348575))))

(assert (=> b!576816 (= res!248093 (isEmpty!4093 (tail!753 input!2705)))))

(declare-fun b!576817 () Bool)

(assert (=> b!576817 (= e!348576 (not lt!244153))))

(declare-fun b!576818 () Bool)

(declare-fun res!248099 () Bool)

(assert (=> b!576818 (=> res!248099 e!348577)))

(assert (=> b!576818 (= res!248099 (not (isEmpty!4093 (tail!753 input!2705))))))

(declare-fun bm!39834 () Bool)

(assert (=> bm!39834 (= call!39839 (isEmpty!4093 input!2705))))

(assert (= (and d!202519 c!107993) b!576807))

(assert (= (and d!202519 (not c!107993)) b!576808))

(assert (= (and d!202519 c!107995) b!576805))

(assert (= (and d!202519 (not c!107995)) b!576812))

(assert (= (and b!576812 c!107994) b!576817))

(assert (= (and b!576812 (not c!107994)) b!576814))

(assert (= (and b!576814 (not res!248094)) b!576811))

(assert (= (and b!576811 res!248100) b!576813))

(assert (= (and b!576813 res!248095) b!576816))

(assert (= (and b!576816 res!248093) b!576810))

(assert (= (and b!576811 (not res!248097)) b!576815))

(assert (= (and b!576815 res!248098) b!576809))

(assert (= (and b!576809 (not res!248096)) b!576818))

(assert (= (and b!576818 (not res!248099)) b!576806))

(assert (= (or b!576805 b!576809 b!576813) bm!39834))

(assert (=> b!576806 m!833935))

(assert (=> b!576816 m!833863))

(assert (=> b!576816 m!833863))

(declare-fun m!834427 () Bool)

(assert (=> b!576816 m!834427))

(assert (=> bm!39834 m!833719))

(assert (=> b!576808 m!833935))

(assert (=> b!576808 m!833935))

(declare-fun m!834429 () Bool)

(assert (=> b!576808 m!834429))

(assert (=> b!576808 m!833863))

(assert (=> b!576808 m!834429))

(assert (=> b!576808 m!833863))

(declare-fun m!834431 () Bool)

(assert (=> b!576808 m!834431))

(assert (=> b!576818 m!833863))

(assert (=> b!576818 m!833863))

(assert (=> b!576818 m!834427))

(assert (=> b!576807 m!834049))

(assert (=> d!202519 m!833719))

(assert (=> d!202519 m!834047))

(assert (=> b!576810 m!833935))

(assert (=> b!576384 d!202519))

(declare-fun d!202541 () Bool)

(declare-fun c!108000 () Bool)

(assert (=> d!202541 (= c!108000 ((_ is IntegerValue!3369) (value!36188 token!491)))))

(declare-fun e!348591 () Bool)

(assert (=> d!202541 (= (inv!21 (value!36188 token!491)) e!348591)))

(declare-fun b!576837 () Bool)

(declare-fun e!348590 () Bool)

(declare-fun inv!15 (TokenValue!1123) Bool)

(assert (=> b!576837 (= e!348590 (inv!15 (value!36188 token!491)))))

(declare-fun b!576838 () Bool)

(declare-fun res!248110 () Bool)

(assert (=> b!576838 (=> res!248110 e!348590)))

(assert (=> b!576838 (= res!248110 (not ((_ is IntegerValue!3371) (value!36188 token!491))))))

(declare-fun e!348589 () Bool)

(assert (=> b!576838 (= e!348589 e!348590)))

(declare-fun b!576839 () Bool)

(assert (=> b!576839 (= e!348591 e!348589)))

(declare-fun c!108001 () Bool)

(assert (=> b!576839 (= c!108001 ((_ is IntegerValue!3370) (value!36188 token!491)))))

(declare-fun b!576840 () Bool)

(declare-fun inv!16 (TokenValue!1123) Bool)

(assert (=> b!576840 (= e!348591 (inv!16 (value!36188 token!491)))))

(declare-fun b!576841 () Bool)

(declare-fun inv!17 (TokenValue!1123) Bool)

(assert (=> b!576841 (= e!348589 (inv!17 (value!36188 token!491)))))

(assert (= (and d!202541 c!108000) b!576840))

(assert (= (and d!202541 (not c!108000)) b!576839))

(assert (= (and b!576839 c!108001) b!576841))

(assert (= (and b!576839 (not c!108001)) b!576838))

(assert (= (and b!576838 (not res!248110)) b!576837))

(declare-fun m!834445 () Bool)

(assert (=> b!576837 m!834445))

(declare-fun m!834447 () Bool)

(assert (=> b!576840 m!834447))

(declare-fun m!834449 () Bool)

(assert (=> b!576841 m!834449))

(assert (=> b!576386 d!202541))

(declare-fun b!576842 () Bool)

(declare-fun e!348592 () List!5678)

(assert (=> b!576842 (= e!348592 suffix!1342)))

(declare-fun b!576845 () Bool)

(declare-fun lt!244155 () List!5678)

(declare-fun e!348593 () Bool)

(assert (=> b!576845 (= e!348593 (or (not (= suffix!1342 Nil!5668)) (= lt!244155 lt!243945)))))

(declare-fun d!202547 () Bool)

(assert (=> d!202547 e!348593))

(declare-fun res!248111 () Bool)

(assert (=> d!202547 (=> (not res!248111) (not e!348593))))

(assert (=> d!202547 (= res!248111 (= (content!1001 lt!244155) ((_ map or) (content!1001 lt!243945) (content!1001 suffix!1342))))))

(assert (=> d!202547 (= lt!244155 e!348592)))

(declare-fun c!108002 () Bool)

(assert (=> d!202547 (= c!108002 ((_ is Nil!5668) lt!243945))))

(assert (=> d!202547 (= (++!1587 lt!243945 suffix!1342) lt!244155)))

(declare-fun b!576844 () Bool)

(declare-fun res!248112 () Bool)

(assert (=> b!576844 (=> (not res!248112) (not e!348593))))

(assert (=> b!576844 (= res!248112 (= (size!4513 lt!244155) (+ (size!4513 lt!243945) (size!4513 suffix!1342))))))

(declare-fun b!576843 () Bool)

(assert (=> b!576843 (= e!348592 (Cons!5668 (h!11069 lt!243945) (++!1587 (t!77391 lt!243945) suffix!1342)))))

(assert (= (and d!202547 c!108002) b!576842))

(assert (= (and d!202547 (not c!108002)) b!576843))

(assert (= (and d!202547 res!248111) b!576844))

(assert (= (and b!576844 res!248112) b!576845))

(declare-fun m!834453 () Bool)

(assert (=> d!202547 m!834453))

(declare-fun m!834455 () Bool)

(assert (=> d!202547 m!834455))

(declare-fun m!834457 () Bool)

(assert (=> d!202547 m!834457))

(declare-fun m!834459 () Bool)

(assert (=> b!576844 m!834459))

(assert (=> b!576844 m!833821))

(declare-fun m!834461 () Bool)

(assert (=> b!576844 m!834461))

(declare-fun m!834463 () Bool)

(assert (=> b!576843 m!834463))

(assert (=> b!576387 d!202547))

(declare-fun d!202551 () Bool)

(assert (=> d!202551 (= (isDefined!1261 lt!243932) (not (isEmpty!4096 lt!243932)))))

(declare-fun bs!69412 () Bool)

(assert (= bs!69412 d!202551))

(declare-fun m!834477 () Bool)

(assert (=> bs!69412 m!834477))

(assert (=> b!576365 d!202551))

(declare-fun d!202555 () Bool)

(assert (=> d!202555 (= (isDefined!1261 lt!243941) (not (isEmpty!4096 lt!243941)))))

(declare-fun bs!69413 () Bool)

(assert (= bs!69413 d!202555))

(declare-fun m!834479 () Bool)

(assert (=> bs!69413 m!834479))

(assert (=> b!576390 d!202555))

(declare-fun b!576850 () Bool)

(declare-fun e!348596 () Option!1450)

(declare-fun lt!244160 () Option!1450)

(declare-fun lt!244158 () Option!1450)

(assert (=> b!576850 (= e!348596 (ite (and ((_ is None!1449) lt!244160) ((_ is None!1449) lt!244158)) None!1449 (ite ((_ is None!1449) lt!244158) lt!244160 (ite ((_ is None!1449) lt!244160) lt!244158 (ite (>= (size!4512 (_1!3590 (v!16310 lt!244160))) (size!4512 (_1!3590 (v!16310 lt!244158)))) lt!244160 lt!244158)))))))

(declare-fun call!39840 () Option!1450)

(assert (=> b!576850 (= lt!244160 call!39840)))

(assert (=> b!576850 (= lt!244158 (maxPrefix!683 thiss!22590 (t!77393 rules!3103) lt!243952))))

(declare-fun b!576851 () Bool)

(assert (=> b!576851 (= e!348596 call!39840)))

(declare-fun b!576852 () Bool)

(declare-fun res!248116 () Bool)

(declare-fun e!348597 () Bool)

(assert (=> b!576852 (=> (not res!248116) (not e!348597))))

(declare-fun lt!244157 () Option!1450)

(assert (=> b!576852 (= res!248116 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))) (_2!3590 (get!2163 lt!244157))) lt!243952))))

(declare-fun b!576853 () Bool)

(declare-fun res!248117 () Bool)

(assert (=> b!576853 (=> (not res!248117) (not e!348597))))

(assert (=> b!576853 (= res!248117 (< (size!4513 (_2!3590 (get!2163 lt!244157))) (size!4513 lt!243952)))))

(declare-fun d!202557 () Bool)

(declare-fun e!348598 () Bool)

(assert (=> d!202557 e!348598))

(declare-fun res!248115 () Bool)

(assert (=> d!202557 (=> res!248115 e!348598)))

(assert (=> d!202557 (= res!248115 (isEmpty!4096 lt!244157))))

(assert (=> d!202557 (= lt!244157 e!348596)))

(declare-fun c!108004 () Bool)

(assert (=> d!202557 (= c!108004 (and ((_ is Cons!5670) rules!3103) ((_ is Nil!5670) (t!77393 rules!3103))))))

(declare-fun lt!244161 () Unit!10237)

(declare-fun lt!244159 () Unit!10237)

(assert (=> d!202557 (= lt!244161 lt!244159)))

(assert (=> d!202557 (isPrefix!733 lt!243952 lt!243952)))

(assert (=> d!202557 (= lt!244159 (lemmaIsPrefixRefl!471 lt!243952 lt!243952))))

(assert (=> d!202557 (rulesValidInductive!394 thiss!22590 rules!3103)))

(assert (=> d!202557 (= (maxPrefix!683 thiss!22590 rules!3103 lt!243952) lt!244157)))

(declare-fun b!576854 () Bool)

(declare-fun res!248121 () Bool)

(assert (=> b!576854 (=> (not res!248121) (not e!348597))))

(assert (=> b!576854 (= res!248121 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))) (originalCharacters!1138 (_1!3590 (get!2163 lt!244157)))))))

(declare-fun b!576855 () Bool)

(declare-fun res!248119 () Bool)

(assert (=> b!576855 (=> (not res!248119) (not e!348597))))

(assert (=> b!576855 (= res!248119 (= (value!36188 (_1!3590 (get!2163 lt!244157))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244157)))))))))

(declare-fun b!576856 () Bool)

(declare-fun res!248120 () Bool)

(assert (=> b!576856 (=> (not res!248120) (not e!348597))))

(assert (=> b!576856 (= res!248120 (matchR!580 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))))))

(declare-fun b!576857 () Bool)

(assert (=> b!576857 (= e!348598 e!348597)))

(declare-fun res!248118 () Bool)

(assert (=> b!576857 (=> (not res!248118) (not e!348597))))

(assert (=> b!576857 (= res!248118 (isDefined!1261 lt!244157))))

(declare-fun b!576858 () Bool)

(assert (=> b!576858 (= e!348597 (contains!1329 rules!3103 (rule!1849 (_1!3590 (get!2163 lt!244157)))))))

(declare-fun bm!39835 () Bool)

(assert (=> bm!39835 (= call!39840 (maxPrefixOneRule!384 thiss!22590 (h!11071 rules!3103) lt!243952))))

(assert (= (and d!202557 c!108004) b!576851))

(assert (= (and d!202557 (not c!108004)) b!576850))

(assert (= (or b!576851 b!576850) bm!39835))

(assert (= (and d!202557 (not res!248115)) b!576857))

(assert (= (and b!576857 res!248118) b!576854))

(assert (= (and b!576854 res!248121) b!576853))

(assert (= (and b!576853 res!248117) b!576852))

(assert (= (and b!576852 res!248116) b!576855))

(assert (= (and b!576855 res!248119) b!576856))

(assert (= (and b!576856 res!248120) b!576858))

(declare-fun m!834481 () Bool)

(assert (=> b!576855 m!834481))

(declare-fun m!834483 () Bool)

(assert (=> b!576855 m!834483))

(assert (=> b!576855 m!834483))

(declare-fun m!834485 () Bool)

(assert (=> b!576855 m!834485))

(assert (=> b!576856 m!834481))

(declare-fun m!834487 () Bool)

(assert (=> b!576856 m!834487))

(assert (=> b!576856 m!834487))

(declare-fun m!834489 () Bool)

(assert (=> b!576856 m!834489))

(assert (=> b!576856 m!834489))

(declare-fun m!834491 () Bool)

(assert (=> b!576856 m!834491))

(assert (=> b!576853 m!834481))

(declare-fun m!834493 () Bool)

(assert (=> b!576853 m!834493))

(assert (=> b!576853 m!833939))

(assert (=> b!576852 m!834481))

(assert (=> b!576852 m!834487))

(assert (=> b!576852 m!834487))

(assert (=> b!576852 m!834489))

(assert (=> b!576852 m!834489))

(declare-fun m!834495 () Bool)

(assert (=> b!576852 m!834495))

(declare-fun m!834497 () Bool)

(assert (=> b!576857 m!834497))

(declare-fun m!834499 () Bool)

(assert (=> b!576850 m!834499))

(assert (=> b!576858 m!834481))

(declare-fun m!834501 () Bool)

(assert (=> b!576858 m!834501))

(declare-fun m!834503 () Bool)

(assert (=> d!202557 m!834503))

(declare-fun m!834505 () Bool)

(assert (=> d!202557 m!834505))

(declare-fun m!834507 () Bool)

(assert (=> d!202557 m!834507))

(assert (=> d!202557 m!834405))

(assert (=> b!576854 m!834481))

(assert (=> b!576854 m!834487))

(assert (=> b!576854 m!834487))

(assert (=> b!576854 m!834489))

(declare-fun m!834515 () Bool)

(assert (=> bm!39835 m!834515))

(assert (=> b!576390 d!202557))

(declare-fun b!576865 () Bool)

(declare-fun e!348605 () List!5678)

(assert (=> b!576865 (= e!348605 suffix!1342)))

(declare-fun lt!244165 () List!5678)

(declare-fun e!348606 () Bool)

(declare-fun b!576868 () Bool)

(assert (=> b!576868 (= e!348606 (or (not (= suffix!1342 Nil!5668)) (= lt!244165 input!2705)))))

(declare-fun d!202561 () Bool)

(assert (=> d!202561 e!348606))

(declare-fun res!248128 () Bool)

(assert (=> d!202561 (=> (not res!248128) (not e!348606))))

(assert (=> d!202561 (= res!248128 (= (content!1001 lt!244165) ((_ map or) (content!1001 input!2705) (content!1001 suffix!1342))))))

(assert (=> d!202561 (= lt!244165 e!348605)))

(declare-fun c!108005 () Bool)

(assert (=> d!202561 (= c!108005 ((_ is Nil!5668) input!2705))))

(assert (=> d!202561 (= (++!1587 input!2705 suffix!1342) lt!244165)))

(declare-fun b!576867 () Bool)

(declare-fun res!248129 () Bool)

(assert (=> b!576867 (=> (not res!248129) (not e!348606))))

(assert (=> b!576867 (= res!248129 (= (size!4513 lt!244165) (+ (size!4513 input!2705) (size!4513 suffix!1342))))))

(declare-fun b!576866 () Bool)

(assert (=> b!576866 (= e!348605 (Cons!5668 (h!11069 input!2705) (++!1587 (t!77391 input!2705) suffix!1342)))))

(assert (= (and d!202561 c!108005) b!576865))

(assert (= (and d!202561 (not c!108005)) b!576866))

(assert (= (and d!202561 res!248128) b!576867))

(assert (= (and b!576867 res!248129) b!576868))

(declare-fun m!834517 () Bool)

(assert (=> d!202561 m!834517))

(declare-fun m!834519 () Bool)

(assert (=> d!202561 m!834519))

(assert (=> d!202561 m!834457))

(declare-fun m!834521 () Bool)

(assert (=> b!576867 m!834521))

(assert (=> b!576867 m!833861))

(assert (=> b!576867 m!834461))

(declare-fun m!834523 () Bool)

(assert (=> b!576866 m!834523))

(assert (=> b!576390 d!202561))

(declare-fun d!202567 () Bool)

(declare-fun lt!244167 () Int)

(assert (=> d!202567 (>= lt!244167 0)))

(declare-fun e!348610 () Int)

(assert (=> d!202567 (= lt!244167 e!348610)))

(declare-fun c!108006 () Bool)

(assert (=> d!202567 (= c!108006 ((_ is Nil!5668) (originalCharacters!1138 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!202567 (= (size!4513 (originalCharacters!1138 (_1!3590 (v!16310 lt!243932)))) lt!244167)))

(declare-fun b!576872 () Bool)

(assert (=> b!576872 (= e!348610 0)))

(declare-fun b!576873 () Bool)

(assert (=> b!576873 (= e!348610 (+ 1 (size!4513 (t!77391 (originalCharacters!1138 (_1!3590 (v!16310 lt!243932)))))))))

(assert (= (and d!202567 c!108006) b!576872))

(assert (= (and d!202567 (not c!108006)) b!576873))

(declare-fun m!834529 () Bool)

(assert (=> b!576873 m!834529))

(assert (=> b!576389 d!202567))

(declare-fun d!202571 () Bool)

(assert (=> d!202571 (= (get!2163 lt!243941) (v!16310 lt!243941))))

(assert (=> b!576368 d!202571))

(declare-fun d!202575 () Bool)

(declare-fun res!248142 () Bool)

(declare-fun e!348616 () Bool)

(assert (=> d!202575 (=> (not res!248142) (not e!348616))))

(declare-fun rulesValid!389 (LexerInterface!985 List!5680) Bool)

(assert (=> d!202575 (= res!248142 (rulesValid!389 thiss!22590 rules!3103))))

(assert (=> d!202575 (= (rulesInvariant!948 thiss!22590 rules!3103) e!348616)))

(declare-fun b!576885 () Bool)

(declare-datatypes ((List!5682 0))(
  ( (Nil!5672) (Cons!5672 (h!11073 String!7358) (t!77467 List!5682)) )
))
(declare-fun noDuplicateTag!389 (LexerInterface!985 List!5680 List!5682) Bool)

(assert (=> b!576885 (= e!348616 (noDuplicateTag!389 thiss!22590 rules!3103 Nil!5672))))

(assert (= (and d!202575 res!248142) b!576885))

(declare-fun m!834543 () Bool)

(assert (=> d!202575 m!834543))

(declare-fun m!834545 () Bool)

(assert (=> b!576885 m!834545))

(assert (=> b!576370 d!202575))

(declare-fun d!202577 () Bool)

(assert (=> d!202577 (= (isEmpty!4093 (_2!3590 (v!16310 lt!243932))) ((_ is Nil!5668) (_2!3590 (v!16310 lt!243932))))))

(assert (=> b!576371 d!202577))

(declare-fun d!202579 () Bool)

(assert (=> d!202579 (= (list!2355 (charsOf!728 token!491)) (list!2356 (c!107922 (charsOf!728 token!491))))))

(declare-fun bs!69415 () Bool)

(assert (= bs!69415 d!202579))

(declare-fun m!834563 () Bool)

(assert (=> bs!69415 m!834563))

(assert (=> b!576393 d!202579))

(declare-fun d!202581 () Bool)

(declare-fun lt!244173 () BalanceConc!3640)

(assert (=> d!202581 (= (list!2355 lt!244173) (originalCharacters!1138 token!491))))

(assert (=> d!202581 (= lt!244173 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))))

(assert (=> d!202581 (= (charsOf!728 token!491) lt!244173)))

(declare-fun b_lambda!22523 () Bool)

(assert (=> (not b_lambda!22523) (not d!202581)))

(assert (=> d!202581 t!77427))

(declare-fun b_and!56495 () Bool)

(assert (= b_and!56471 (and (=> t!77427 result!56314) b_and!56495)))

(assert (=> d!202581 t!77429))

(declare-fun b_and!56497 () Bool)

(assert (= b_and!56473 (and (=> t!77429 result!56316) b_and!56497)))

(declare-fun m!834569 () Bool)

(assert (=> d!202581 m!834569))

(assert (=> d!202581 m!834277))

(assert (=> b!576393 d!202581))

(declare-fun d!202585 () Bool)

(assert (=> d!202585 (= (inv!7129 (tag!1361 (h!11071 rules!3103))) (= (mod (str.len (value!36162 (tag!1361 (h!11071 rules!3103)))) 2) 0))))

(assert (=> b!576372 d!202585))

(declare-fun d!202587 () Bool)

(declare-fun res!248147 () Bool)

(declare-fun e!348632 () Bool)

(assert (=> d!202587 (=> (not res!248147) (not e!348632))))

(assert (=> d!202587 (= res!248147 (semiInverseModEq!425 (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (h!11071 rules!3103)))))))

(assert (=> d!202587 (= (inv!7132 (transformation!1099 (h!11071 rules!3103))) e!348632)))

(declare-fun b!576914 () Bool)

(assert (=> b!576914 (= e!348632 (equivClasses!408 (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (h!11071 rules!3103)))))))

(assert (= (and d!202587 res!248147) b!576914))

(declare-fun m!834579 () Bool)

(assert (=> d!202587 m!834579))

(declare-fun m!834581 () Bool)

(assert (=> b!576914 m!834581))

(assert (=> b!576372 d!202587))

(declare-fun d!202589 () Bool)

(assert (=> d!202589 (= (inv!7129 (tag!1361 (rule!1849 token!491))) (= (mod (str.len (value!36162 (tag!1361 (rule!1849 token!491)))) 2) 0))))

(assert (=> b!576374 d!202589))

(declare-fun d!202591 () Bool)

(declare-fun res!248148 () Bool)

(declare-fun e!348633 () Bool)

(assert (=> d!202591 (=> (not res!248148) (not e!348633))))

(assert (=> d!202591 (= res!248148 (semiInverseModEq!425 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))))))

(assert (=> d!202591 (= (inv!7132 (transformation!1099 (rule!1849 token!491))) e!348633)))

(declare-fun b!576915 () Bool)

(assert (=> b!576915 (= e!348633 (equivClasses!408 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))))))

(assert (= (and d!202591 res!248148) b!576915))

(assert (=> d!202591 m!834077))

(assert (=> b!576915 m!834079))

(assert (=> b!576374 d!202591))

(declare-fun d!202593 () Bool)

(declare-fun lt!244177 () Bool)

(declare-fun content!1003 (List!5680) (InoxSet Rule!1998))

(assert (=> d!202593 (= lt!244177 (select (content!1003 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun e!348649 () Bool)

(assert (=> d!202593 (= lt!244177 e!348649)))

(declare-fun res!248153 () Bool)

(assert (=> d!202593 (=> (not res!248153) (not e!348649))))

(assert (=> d!202593 (= res!248153 ((_ is Cons!5670) rules!3103))))

(assert (=> d!202593 (= (contains!1329 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!244177)))

(declare-fun b!576934 () Bool)

(declare-fun e!348648 () Bool)

(assert (=> b!576934 (= e!348649 e!348648)))

(declare-fun res!248154 () Bool)

(assert (=> b!576934 (=> res!248154 e!348648)))

(assert (=> b!576934 (= res!248154 (= (h!11071 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun b!576935 () Bool)

(assert (=> b!576935 (= e!348648 (contains!1329 (t!77393 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (= (and d!202593 res!248153) b!576934))

(assert (= (and b!576934 (not res!248154)) b!576935))

(declare-fun m!834587 () Bool)

(assert (=> d!202593 m!834587))

(declare-fun m!834589 () Bool)

(assert (=> d!202593 m!834589))

(declare-fun m!834591 () Bool)

(assert (=> b!576935 m!834591))

(assert (=> b!576373 d!202593))

(declare-fun d!202595 () Bool)

(assert (=> d!202595 (= (isEmpty!4094 rules!3103) ((_ is Nil!5670) rules!3103))))

(assert (=> b!576375 d!202595))

(declare-fun b!576947 () Bool)

(declare-fun e!348655 () Int)

(assert (=> b!576947 (= e!348655 (- 1))))

(declare-fun b!576944 () Bool)

(declare-fun e!348656 () Int)

(assert (=> b!576944 (= e!348656 0)))

(declare-fun d!202597 () Bool)

(declare-fun lt!244180 () Int)

(assert (=> d!202597 (>= lt!244180 0)))

(assert (=> d!202597 (= lt!244180 e!348656)))

(declare-fun c!108013 () Bool)

(assert (=> d!202597 (= c!108013 (and ((_ is Cons!5670) rules!3103) (= (h!11071 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (=> d!202597 (contains!1329 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932))))))

(assert (=> d!202597 (= (getIndex!38 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!244180)))

(declare-fun b!576945 () Bool)

(assert (=> b!576945 (= e!348656 e!348655)))

(declare-fun c!108014 () Bool)

(assert (=> b!576945 (= c!108014 (and ((_ is Cons!5670) rules!3103) (not (= (h!11071 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun b!576946 () Bool)

(assert (=> b!576946 (= e!348655 (+ 1 (getIndex!38 (t!77393 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (= (and d!202597 c!108013) b!576944))

(assert (= (and d!202597 (not c!108013)) b!576945))

(assert (= (and b!576945 c!108014) b!576946))

(assert (= (and b!576945 (not c!108014)) b!576947))

(assert (=> d!202597 m!833741))

(declare-fun m!834593 () Bool)

(assert (=> b!576946 m!834593))

(assert (=> b!576378 d!202597))

(declare-fun b!576951 () Bool)

(declare-fun e!348657 () Int)

(assert (=> b!576951 (= e!348657 (- 1))))

(declare-fun b!576948 () Bool)

(declare-fun e!348658 () Int)

(assert (=> b!576948 (= e!348658 0)))

(declare-fun d!202599 () Bool)

(declare-fun lt!244181 () Int)

(assert (=> d!202599 (>= lt!244181 0)))

(assert (=> d!202599 (= lt!244181 e!348658)))

(declare-fun c!108015 () Bool)

(assert (=> d!202599 (= c!108015 (and ((_ is Cons!5670) rules!3103) (= (h!11071 rules!3103) (rule!1849 token!491))))))

(assert (=> d!202599 (contains!1329 rules!3103 (rule!1849 token!491))))

(assert (=> d!202599 (= (getIndex!38 rules!3103 (rule!1849 token!491)) lt!244181)))

(declare-fun b!576949 () Bool)

(assert (=> b!576949 (= e!348658 e!348657)))

(declare-fun c!108016 () Bool)

(assert (=> b!576949 (= c!108016 (and ((_ is Cons!5670) rules!3103) (not (= (h!11071 rules!3103) (rule!1849 token!491)))))))

(declare-fun b!576950 () Bool)

(assert (=> b!576950 (= e!348657 (+ 1 (getIndex!38 (t!77393 rules!3103) (rule!1849 token!491))))))

(assert (= (and d!202599 c!108015) b!576948))

(assert (= (and d!202599 (not c!108015)) b!576949))

(assert (= (and b!576949 c!108016) b!576950))

(assert (= (and b!576949 (not c!108016)) b!576951))

(assert (=> d!202599 m!833739))

(declare-fun m!834595 () Bool)

(assert (=> b!576950 m!834595))

(assert (=> b!576378 d!202599))

(declare-fun d!202601 () Bool)

(declare-fun lt!244182 () Bool)

(assert (=> d!202601 (= lt!244182 (select (content!1003 rules!3103) (rule!1849 token!491)))))

(declare-fun e!348660 () Bool)

(assert (=> d!202601 (= lt!244182 e!348660)))

(declare-fun res!248155 () Bool)

(assert (=> d!202601 (=> (not res!248155) (not e!348660))))

(assert (=> d!202601 (= res!248155 ((_ is Cons!5670) rules!3103))))

(assert (=> d!202601 (= (contains!1329 rules!3103 (rule!1849 token!491)) lt!244182)))

(declare-fun b!576952 () Bool)

(declare-fun e!348659 () Bool)

(assert (=> b!576952 (= e!348660 e!348659)))

(declare-fun res!248156 () Bool)

(assert (=> b!576952 (=> res!248156 e!348659)))

(assert (=> b!576952 (= res!248156 (= (h!11071 rules!3103) (rule!1849 token!491)))))

(declare-fun b!576953 () Bool)

(assert (=> b!576953 (= e!348659 (contains!1329 (t!77393 rules!3103) (rule!1849 token!491)))))

(assert (= (and d!202601 res!248155) b!576952))

(assert (= (and b!576952 (not res!248156)) b!576953))

(assert (=> d!202601 m!834587))

(declare-fun m!834597 () Bool)

(assert (=> d!202601 m!834597))

(declare-fun m!834599 () Bool)

(assert (=> b!576953 m!834599))

(assert (=> b!576377 d!202601))

(declare-fun d!202603 () Bool)

(assert (=> d!202603 (= (isEmpty!4093 input!2705) ((_ is Nil!5668) input!2705))))

(assert (=> b!576356 d!202603))

(declare-fun b!576964 () Bool)

(declare-fun e!348663 () Bool)

(assert (=> b!576964 (= e!348663 tp_is_empty!3221)))

(assert (=> b!576374 (= tp!180699 e!348663)))

(declare-fun b!576965 () Bool)

(declare-fun tp!180771 () Bool)

(declare-fun tp!180769 () Bool)

(assert (=> b!576965 (= e!348663 (and tp!180771 tp!180769))))

(declare-fun b!576967 () Bool)

(declare-fun tp!180768 () Bool)

(declare-fun tp!180770 () Bool)

(assert (=> b!576967 (= e!348663 (and tp!180768 tp!180770))))

(declare-fun b!576966 () Bool)

(declare-fun tp!180772 () Bool)

(assert (=> b!576966 (= e!348663 tp!180772)))

(assert (= (and b!576374 ((_ is ElementMatch!1433) (regex!1099 (rule!1849 token!491)))) b!576964))

(assert (= (and b!576374 ((_ is Concat!2556) (regex!1099 (rule!1849 token!491)))) b!576965))

(assert (= (and b!576374 ((_ is Star!1433) (regex!1099 (rule!1849 token!491)))) b!576966))

(assert (= (and b!576374 ((_ is Union!1433) (regex!1099 (rule!1849 token!491)))) b!576967))

(declare-fun b!576972 () Bool)

(declare-fun e!348666 () Bool)

(declare-fun tp!180775 () Bool)

(assert (=> b!576972 (= e!348666 (and tp_is_empty!3221 tp!180775))))

(assert (=> b!576386 (= tp!180703 e!348666)))

(assert (= (and b!576386 ((_ is Cons!5668) (originalCharacters!1138 token!491))) b!576972))

(declare-fun b!576973 () Bool)

(declare-fun e!348667 () Bool)

(declare-fun tp!180776 () Bool)

(assert (=> b!576973 (= e!348667 (and tp_is_empty!3221 tp!180776))))

(assert (=> b!576385 (= tp!180704 e!348667)))

(assert (= (and b!576385 ((_ is Cons!5668) (t!77391 suffix!1342))) b!576973))

(declare-fun b!576984 () Bool)

(declare-fun b_free!16057 () Bool)

(declare-fun b_next!16073 () Bool)

(assert (=> b!576984 (= b_free!16057 (not b_next!16073))))

(declare-fun t!77455 () Bool)

(declare-fun tb!50327 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77455) tb!50327))

(declare-fun result!56354 () Bool)

(assert (= result!56354 result!56286))

(assert (=> d!202409 t!77455))

(assert (=> d!202469 t!77455))

(declare-fun tb!50329 () Bool)

(declare-fun t!77457 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77457) tb!50329))

(declare-fun result!56356 () Bool)

(assert (= result!56356 result!56306))

(assert (=> d!202475 t!77457))

(assert (=> d!202477 t!77457))

(declare-fun tp!180786 () Bool)

(declare-fun b_and!56503 () Bool)

(assert (=> b!576984 (= tp!180786 (and (=> t!77455 result!56354) (=> t!77457 result!56356) b_and!56503))))

(declare-fun b_free!16059 () Bool)

(declare-fun b_next!16075 () Bool)

(assert (=> b!576984 (= b_free!16059 (not b_next!16075))))

(declare-fun t!77459 () Bool)

(declare-fun tb!50331 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77459) tb!50331))

(declare-fun result!56358 () Bool)

(assert (= result!56358 result!56292))

(assert (=> d!202439 t!77459))

(declare-fun tb!50333 () Bool)

(declare-fun t!77461 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77461) tb!50333))

(declare-fun result!56360 () Bool)

(assert (= result!56360 result!56314))

(assert (=> b!576705 t!77461))

(assert (=> d!202581 t!77461))

(declare-fun t!77463 () Bool)

(declare-fun tb!50335 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77463) tb!50335))

(declare-fun result!56362 () Bool)

(assert (= result!56362 result!56302))

(assert (=> d!202475 t!77463))

(declare-fun t!77465 () Bool)

(declare-fun tb!50337 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77465) tb!50337))

(declare-fun result!56364 () Bool)

(assert (= result!56364 result!56298))

(assert (=> d!202469 t!77465))

(declare-fun b_and!56505 () Bool)

(declare-fun tp!180788 () Bool)

(assert (=> b!576984 (= tp!180788 (and (=> t!77463 result!56362) (=> t!77461 result!56360) (=> t!77465 result!56364) (=> t!77459 result!56358) b_and!56505))))

(declare-fun e!348678 () Bool)

(assert (=> b!576984 (= e!348678 (and tp!180786 tp!180788))))

(declare-fun e!348676 () Bool)

(declare-fun b!576983 () Bool)

(declare-fun tp!180787 () Bool)

(assert (=> b!576983 (= e!348676 (and tp!180787 (inv!7129 (tag!1361 (h!11071 (t!77393 rules!3103)))) (inv!7132 (transformation!1099 (h!11071 (t!77393 rules!3103)))) e!348678))))

(declare-fun b!576982 () Bool)

(declare-fun e!348677 () Bool)

(declare-fun tp!180785 () Bool)

(assert (=> b!576982 (= e!348677 (and e!348676 tp!180785))))

(assert (=> b!576376 (= tp!180701 e!348677)))

(assert (= b!576983 b!576984))

(assert (= b!576982 b!576983))

(assert (= (and b!576376 ((_ is Cons!5670) (t!77393 rules!3103))) b!576982))

(declare-fun m!834601 () Bool)

(assert (=> b!576983 m!834601))

(declare-fun m!834603 () Bool)

(assert (=> b!576983 m!834603))

(declare-fun b!576985 () Bool)

(declare-fun e!348680 () Bool)

(declare-fun tp!180789 () Bool)

(assert (=> b!576985 (= e!348680 (and tp_is_empty!3221 tp!180789))))

(assert (=> b!576383 (= tp!180702 e!348680)))

(assert (= (and b!576383 ((_ is Cons!5668) (t!77391 input!2705))) b!576985))

(declare-fun b!576986 () Bool)

(declare-fun e!348681 () Bool)

(assert (=> b!576986 (= e!348681 tp_is_empty!3221)))

(assert (=> b!576372 (= tp!180707 e!348681)))

(declare-fun b!576987 () Bool)

(declare-fun tp!180793 () Bool)

(declare-fun tp!180791 () Bool)

(assert (=> b!576987 (= e!348681 (and tp!180793 tp!180791))))

(declare-fun b!576989 () Bool)

(declare-fun tp!180790 () Bool)

(declare-fun tp!180792 () Bool)

(assert (=> b!576989 (= e!348681 (and tp!180790 tp!180792))))

(declare-fun b!576988 () Bool)

(declare-fun tp!180794 () Bool)

(assert (=> b!576988 (= e!348681 tp!180794)))

(assert (= (and b!576372 ((_ is ElementMatch!1433) (regex!1099 (h!11071 rules!3103)))) b!576986))

(assert (= (and b!576372 ((_ is Concat!2556) (regex!1099 (h!11071 rules!3103)))) b!576987))

(assert (= (and b!576372 ((_ is Star!1433) (regex!1099 (h!11071 rules!3103)))) b!576988))

(assert (= (and b!576372 ((_ is Union!1433) (regex!1099 (h!11071 rules!3103)))) b!576989))

(declare-fun b_lambda!22535 () Bool)

(assert (= b_lambda!22503 (or (and b!576363 b_free!16045 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16049) (and b!576984 b_free!16057 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) b_lambda!22535)))

(declare-fun b_lambda!22537 () Bool)

(assert (= b_lambda!22523 (or (and b!576363 b_free!16047 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16051) (and b!576984 b_free!16059 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) b_lambda!22537)))

(declare-fun b_lambda!22539 () Bool)

(assert (= b_lambda!22501 (or (and b!576363 b_free!16047 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16051) (and b!576984 b_free!16059 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) b_lambda!22539)))

(declare-fun b_lambda!22541 () Bool)

(assert (= b_lambda!22511 (or (and b!576363 b_free!16047 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16051) (and b!576984 b_free!16059 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) b_lambda!22541)))

(declare-fun b_lambda!22543 () Bool)

(assert (= b_lambda!22505 (or (and b!576363 b_free!16045 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16049) (and b!576984 b_free!16057 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) b_lambda!22543)))

(check-sat (not b!576427) (not bm!39831) (not d!202579) (not b!576705) (not d!202355) (not d!202581) (not b!576541) (not b!576769) (not b!576681) (not b!576525) (not b!576771) (not b!576480) (not b!576807) (not b!576691) (not b_lambda!22535) (not d!202479) (not tb!50291) (not b!576946) (not b_lambda!22495) (not b!576610) (not b!576850) (not b!576841) (not b!576695) b_and!56495 b_and!56459 (not b!576966) (not b!576818) (not d!202383) (not b!576808) (not d!202599) (not d!202597) (not b!576950) (not b!576858) (not b!576854) (not d!202501) (not d!202547) (not b!576682) (not b!576967) (not b!576696) (not b!576706) (not b!576479) (not b!576684) (not b!576973) (not b!576840) (not b!576844) (not d!202591) (not d!202587) (not b!576439) (not b!576857) (not b_next!16063) (not b!576509) (not d!202435) (not b!576687) (not b!576953) (not tb!50283) (not b!576507) (not tb!50299) (not b_lambda!22541) (not b!576685) b_and!56503 (not b!576421) (not d!202493) (not d!202519) (not d!202601) (not b!576770) (not d!202449) (not b_lambda!22499) (not b!576694) (not d!202399) tp_is_empty!3221 (not tb!50287) (not b!576508) (not b!576686) (not b!576768) (not b!576989) (not b!576983) (not b!576873) (not b!576806) (not d!202557) (not b!576853) (not b!576465) (not b!576481) (not d!202451) (not b!576709) (not b!576965) (not b!576698) (not d!202593) (not b_lambda!22543) (not b!576551) (not b!576457) (not b!576552) (not d!202467) (not b!576852) (not d!202495) (not b!576612) (not b_next!16065) (not d!202561) (not tb!50275) (not d!202507) (not d!202393) (not b!576697) (not b!576474) (not b_lambda!22539) (not b!576526) (not b!576816) (not bm!39834) (not b!576985) (not b!576987) (not d!202415) (not b!576707) (not b!576539) (not b!576867) (not b_lambda!22537) (not b!576699) (not b_next!16067) (not d!202481) (not b!576774) (not b!576535) (not d!202369) (not b!576548) (not b!576459) (not b!576855) (not d!202575) (not b_next!16061) (not b_next!16073) (not d!202551) (not b!576856) (not b!576562) (not b!576914) (not d!202469) b_and!56505 (not d!202497) (not b!576688) (not d!202439) (not d!202499) b_and!56497 (not tb!50279) (not d!202465) (not b!576915) (not b!576885) (not b!576766) (not d!202459) (not d!202475) (not b!576772) (not b_next!16075) (not b!576690) (not d!202453) (not b_lambda!22497) (not b!576866) b_and!56461 (not b!576982) (not b!576458) (not d!202555) (not d!202359) (not d!202389) (not b!576972) (not b!576935) (not b!576988) (not d!202377) (not d!202503) (not b!576540) (not bm!39835) (not d!202431) (not b_lambda!22493) (not b!576810) (not b!576693) (not b!576689) (not d!202455) (not b!576843) (not b!576837) (not d!202517) (not b!576553) (not b!576773))
(check-sat (not b_next!16063) b_and!56503 (not b_next!16065) (not b_next!16067) (not b_next!16075) b_and!56461 b_and!56495 b_and!56459 (not b_next!16061) (not b_next!16073) b_and!56505 b_and!56497)
(get-model)

(declare-fun d!202633 () Bool)

(declare-fun charsToBigInt!1 (List!5679) Int)

(assert (=> d!202633 (= (inv!17 (value!36188 token!491)) (= (charsToBigInt!1 (text!8309 (value!36188 token!491))) (value!36181 (value!36188 token!491))))))

(declare-fun bs!69419 () Bool)

(assert (= bs!69419 d!202633))

(declare-fun m!834659 () Bool)

(assert (=> bs!69419 m!834659))

(assert (=> b!576841 d!202633))

(declare-fun d!202635 () Bool)

(declare-fun c!108026 () Bool)

(assert (=> d!202635 (= c!108026 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))))

(declare-fun e!348703 () Bool)

(assert (=> d!202635 (= (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))) e!348703)))

(declare-fun b!577024 () Bool)

(declare-fun inv!7138 (Conc!1816) Bool)

(assert (=> b!577024 (= e!348703 (inv!7138 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))))

(declare-fun b!577025 () Bool)

(declare-fun e!348704 () Bool)

(assert (=> b!577025 (= e!348703 e!348704)))

(declare-fun res!248172 () Bool)

(assert (=> b!577025 (= res!248172 (not ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))))))

(assert (=> b!577025 (=> res!248172 e!348704)))

(declare-fun b!577026 () Bool)

(declare-fun inv!7139 (Conc!1816) Bool)

(assert (=> b!577026 (= e!348704 (inv!7139 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))))

(assert (= (and d!202635 c!108026) b!577024))

(assert (= (and d!202635 (not c!108026)) b!577025))

(assert (= (and b!577025 (not res!248172)) b!577026))

(declare-fun m!834669 () Bool)

(assert (=> b!577024 m!834669))

(declare-fun m!834671 () Bool)

(assert (=> b!577026 m!834671))

(assert (=> b!576610 d!202635))

(declare-fun d!202643 () Bool)

(declare-fun res!248178 () Bool)

(declare-fun e!348711 () Bool)

(assert (=> d!202643 (=> res!248178 e!348711)))

(assert (=> d!202643 (= res!248178 ((_ is Nil!5670) rules!3103))))

(assert (=> d!202643 (= (noDuplicateTag!389 thiss!22590 rules!3103 Nil!5672) e!348711)))

(declare-fun b!577034 () Bool)

(declare-fun e!348712 () Bool)

(assert (=> b!577034 (= e!348711 e!348712)))

(declare-fun res!248179 () Bool)

(assert (=> b!577034 (=> (not res!248179) (not e!348712))))

(declare-fun contains!1330 (List!5682 String!7358) Bool)

(assert (=> b!577034 (= res!248179 (not (contains!1330 Nil!5672 (tag!1361 (h!11071 rules!3103)))))))

(declare-fun b!577035 () Bool)

(assert (=> b!577035 (= e!348712 (noDuplicateTag!389 thiss!22590 (t!77393 rules!3103) (Cons!5672 (tag!1361 (h!11071 rules!3103)) Nil!5672)))))

(assert (= (and d!202643 (not res!248178)) b!577034))

(assert (= (and b!577034 res!248179) b!577035))

(declare-fun m!834681 () Bool)

(assert (=> b!577034 m!834681))

(declare-fun m!834683 () Bool)

(assert (=> b!577035 m!834683))

(assert (=> b!576885 d!202643))

(declare-fun b!577044 () Bool)

(declare-fun e!348719 () Bool)

(declare-fun e!348718 () Bool)

(assert (=> b!577044 (= e!348719 e!348718)))

(declare-fun res!248180 () Bool)

(assert (=> b!577044 (=> (not res!248180) (not e!348718))))

(assert (=> b!577044 (= res!248180 (not ((_ is Nil!5668) (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932))))))))

(declare-fun b!577045 () Bool)

(declare-fun res!248183 () Bool)

(assert (=> b!577045 (=> (not res!248183) (not e!348718))))

(assert (=> b!577045 (= res!248183 (= (head!1224 lt!243959) (head!1224 (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932))))))))

(declare-fun b!577047 () Bool)

(declare-fun e!348717 () Bool)

(assert (=> b!577047 (= e!348717 (>= (size!4513 (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932)))) (size!4513 lt!243959)))))

(declare-fun d!202649 () Bool)

(assert (=> d!202649 e!348717))

(declare-fun res!248182 () Bool)

(assert (=> d!202649 (=> res!248182 e!348717)))

(declare-fun lt!244196 () Bool)

(assert (=> d!202649 (= res!248182 (not lt!244196))))

(assert (=> d!202649 (= lt!244196 e!348719)))

(declare-fun res!248181 () Bool)

(assert (=> d!202649 (=> res!248181 e!348719)))

(assert (=> d!202649 (= res!248181 ((_ is Nil!5668) lt!243959))))

(assert (=> d!202649 (= (isPrefix!733 lt!243959 (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932)))) lt!244196)))

(declare-fun b!577046 () Bool)

(assert (=> b!577046 (= e!348718 (isPrefix!733 (tail!753 lt!243959) (tail!753 (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932))))))))

(assert (= (and d!202649 (not res!248181)) b!577044))

(assert (= (and b!577044 res!248180) b!577045))

(assert (= (and b!577045 res!248183) b!577046))

(assert (= (and d!202649 (not res!248182)) b!577047))

(assert (=> b!577045 m!834055))

(assert (=> b!577045 m!833817))

(declare-fun m!834685 () Bool)

(assert (=> b!577045 m!834685))

(assert (=> b!577047 m!833817))

(declare-fun m!834687 () Bool)

(assert (=> b!577047 m!834687))

(assert (=> b!577047 m!833815))

(assert (=> b!577046 m!834061))

(assert (=> b!577046 m!833817))

(declare-fun m!834689 () Bool)

(assert (=> b!577046 m!834689))

(assert (=> b!577046 m!834061))

(assert (=> b!577046 m!834689))

(declare-fun m!834691 () Bool)

(assert (=> b!577046 m!834691))

(assert (=> d!202455 d!202649))

(assert (=> d!202455 d!202435))

(declare-fun d!202651 () Bool)

(assert (=> d!202651 (isPrefix!733 lt!243959 (++!1587 lt!243959 (_2!3590 (v!16310 lt!243932))))))

(assert (=> d!202651 true))

(declare-fun _$46!918 () Unit!10237)

(assert (=> d!202651 (= (choose!4129 lt!243959 (_2!3590 (v!16310 lt!243932))) _$46!918)))

(declare-fun bs!69420 () Bool)

(assert (= bs!69420 d!202651))

(assert (=> bs!69420 m!833817))

(assert (=> bs!69420 m!833817))

(assert (=> bs!69420 m!834051))

(assert (=> d!202455 d!202651))

(assert (=> d!202389 d!202505))

(declare-fun d!202653 () Bool)

(assert (=> d!202653 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))) (list!2356 (c!107922 (charsOf!728 (_1!3590 (get!2163 lt!244157))))))))

(declare-fun bs!69421 () Bool)

(assert (= bs!69421 d!202653))

(declare-fun m!834693 () Bool)

(assert (=> bs!69421 m!834693))

(assert (=> b!576854 d!202653))

(declare-fun d!202655 () Bool)

(declare-fun lt!244197 () BalanceConc!3640)

(assert (=> d!202655 (= (list!2355 lt!244197) (originalCharacters!1138 (_1!3590 (get!2163 lt!244157))))))

(assert (=> d!202655 (= lt!244197 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))) (value!36188 (_1!3590 (get!2163 lt!244157)))))))

(assert (=> d!202655 (= (charsOf!728 (_1!3590 (get!2163 lt!244157))) lt!244197)))

(declare-fun b_lambda!22547 () Bool)

(assert (=> (not b_lambda!22547) (not d!202655)))

(declare-fun t!77476 () Bool)

(declare-fun tb!50345 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77476) tb!50345))

(declare-fun b!577052 () Bool)

(declare-fun e!348722 () Bool)

(declare-fun tp!180796 () Bool)

(assert (=> b!577052 (= e!348722 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))) (value!36188 (_1!3590 (get!2163 lt!244157)))))) tp!180796))))

(declare-fun result!56372 () Bool)

(assert (=> tb!50345 (= result!56372 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))) (value!36188 (_1!3590 (get!2163 lt!244157))))) e!348722))))

(assert (= tb!50345 b!577052))

(declare-fun m!834695 () Bool)

(assert (=> b!577052 m!834695))

(declare-fun m!834699 () Bool)

(assert (=> tb!50345 m!834699))

(assert (=> d!202655 t!77476))

(declare-fun b_and!56513 () Bool)

(assert (= b_and!56495 (and (=> t!77476 result!56372) b_and!56513)))

(declare-fun t!77478 () Bool)

(declare-fun tb!50347 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77478) tb!50347))

(declare-fun result!56374 () Bool)

(assert (= result!56374 result!56372))

(assert (=> d!202655 t!77478))

(declare-fun b_and!56515 () Bool)

(assert (= b_and!56497 (and (=> t!77478 result!56374) b_and!56515)))

(declare-fun tb!50349 () Bool)

(declare-fun t!77480 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77480) tb!50349))

(declare-fun result!56376 () Bool)

(assert (= result!56376 result!56372))

(assert (=> d!202655 t!77480))

(declare-fun b_and!56517 () Bool)

(assert (= b_and!56505 (and (=> t!77480 result!56376) b_and!56517)))

(declare-fun m!834707 () Bool)

(assert (=> d!202655 m!834707))

(declare-fun m!834709 () Bool)

(assert (=> d!202655 m!834709))

(assert (=> b!576854 d!202655))

(declare-fun d!202659 () Bool)

(assert (=> d!202659 (= (get!2163 lt!244157) (v!16310 lt!244157))))

(assert (=> b!576854 d!202659))

(declare-fun b!577062 () Bool)

(declare-fun e!348727 () Bool)

(declare-fun lt!244203 () Bool)

(declare-fun call!39843 () Bool)

(assert (=> b!577062 (= e!348727 (= lt!244203 call!39843))))

(declare-fun b!577063 () Bool)

(declare-fun e!348732 () Bool)

(assert (=> b!577063 (= e!348732 (not (= (head!1224 (tail!753 input!2705)) (c!107921 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705))))))))

(declare-fun b!577064 () Bool)

(declare-fun e!348729 () Bool)

(assert (=> b!577064 (= e!348729 (nullable!386 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705))))))

(declare-fun d!202661 () Bool)

(assert (=> d!202661 e!348727))

(declare-fun c!108037 () Bool)

(assert (=> d!202661 (= c!108037 ((_ is EmptyExpr!1433) (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705))))))

(assert (=> d!202661 (= lt!244203 e!348729)))

(declare-fun c!108035 () Bool)

(assert (=> d!202661 (= c!108035 (isEmpty!4093 (tail!753 input!2705)))))

(assert (=> d!202661 (validRegex!481 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705)))))

(assert (=> d!202661 (= (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705)) (tail!753 input!2705)) lt!244203)))

(declare-fun b!577065 () Bool)

(assert (=> b!577065 (= e!348729 (matchR!580 (derivativeStep!300 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705)) (head!1224 (tail!753 input!2705))) (tail!753 (tail!753 input!2705))))))

(declare-fun b!577066 () Bool)

(declare-fun e!348726 () Bool)

(assert (=> b!577066 (= e!348726 e!348732)))

(declare-fun res!248194 () Bool)

(assert (=> b!577066 (=> res!248194 e!348732)))

(assert (=> b!577066 (= res!248194 call!39843)))

(declare-fun b!577067 () Bool)

(declare-fun e!348730 () Bool)

(assert (=> b!577067 (= e!348730 (= (head!1224 (tail!753 input!2705)) (c!107921 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705)))))))

(declare-fun b!577068 () Bool)

(declare-fun res!248195 () Bool)

(declare-fun e!348728 () Bool)

(assert (=> b!577068 (=> res!248195 e!348728)))

(assert (=> b!577068 (= res!248195 e!348730)))

(declare-fun res!248198 () Bool)

(assert (=> b!577068 (=> (not res!248198) (not e!348730))))

(assert (=> b!577068 (= res!248198 lt!244203)))

(declare-fun b!577069 () Bool)

(declare-fun e!348731 () Bool)

(assert (=> b!577069 (= e!348727 e!348731)))

(declare-fun c!108036 () Bool)

(assert (=> b!577069 (= c!108036 ((_ is EmptyLang!1433) (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705))))))

(declare-fun b!577070 () Bool)

(declare-fun res!248193 () Bool)

(assert (=> b!577070 (=> (not res!248193) (not e!348730))))

(assert (=> b!577070 (= res!248193 (not call!39843))))

(declare-fun b!577071 () Bool)

(declare-fun res!248192 () Bool)

(assert (=> b!577071 (=> res!248192 e!348728)))

(assert (=> b!577071 (= res!248192 (not ((_ is ElementMatch!1433) (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705)))))))

(assert (=> b!577071 (= e!348731 e!348728)))

(declare-fun b!577072 () Bool)

(assert (=> b!577072 (= e!348728 e!348726)))

(declare-fun res!248196 () Bool)

(assert (=> b!577072 (=> (not res!248196) (not e!348726))))

(assert (=> b!577072 (= res!248196 (not lt!244203))))

(declare-fun b!577073 () Bool)

(declare-fun res!248191 () Bool)

(assert (=> b!577073 (=> (not res!248191) (not e!348730))))

(assert (=> b!577073 (= res!248191 (isEmpty!4093 (tail!753 (tail!753 input!2705))))))

(declare-fun b!577074 () Bool)

(assert (=> b!577074 (= e!348731 (not lt!244203))))

(declare-fun b!577075 () Bool)

(declare-fun res!248197 () Bool)

(assert (=> b!577075 (=> res!248197 e!348732)))

(assert (=> b!577075 (= res!248197 (not (isEmpty!4093 (tail!753 (tail!753 input!2705)))))))

(declare-fun bm!39838 () Bool)

(assert (=> bm!39838 (= call!39843 (isEmpty!4093 (tail!753 input!2705)))))

(assert (= (and d!202661 c!108035) b!577064))

(assert (= (and d!202661 (not c!108035)) b!577065))

(assert (= (and d!202661 c!108037) b!577062))

(assert (= (and d!202661 (not c!108037)) b!577069))

(assert (= (and b!577069 c!108036) b!577074))

(assert (= (and b!577069 (not c!108036)) b!577071))

(assert (= (and b!577071 (not res!248192)) b!577068))

(assert (= (and b!577068 res!248198) b!577070))

(assert (= (and b!577070 res!248193) b!577073))

(assert (= (and b!577073 res!248191) b!577067))

(assert (= (and b!577068 (not res!248195)) b!577072))

(assert (= (and b!577072 res!248196) b!577066))

(assert (= (and b!577066 (not res!248194)) b!577075))

(assert (= (and b!577075 (not res!248197)) b!577063))

(assert (= (or b!577062 b!577066 b!577070) bm!39838))

(assert (=> b!577063 m!833863))

(declare-fun m!834711 () Bool)

(assert (=> b!577063 m!834711))

(assert (=> b!577073 m!833863))

(declare-fun m!834713 () Bool)

(assert (=> b!577073 m!834713))

(assert (=> b!577073 m!834713))

(declare-fun m!834715 () Bool)

(assert (=> b!577073 m!834715))

(assert (=> bm!39838 m!833863))

(assert (=> bm!39838 m!834427))

(assert (=> b!577065 m!833863))

(assert (=> b!577065 m!834711))

(assert (=> b!577065 m!834429))

(assert (=> b!577065 m!834711))

(declare-fun m!834717 () Bool)

(assert (=> b!577065 m!834717))

(assert (=> b!577065 m!833863))

(assert (=> b!577065 m!834713))

(assert (=> b!577065 m!834717))

(assert (=> b!577065 m!834713))

(declare-fun m!834719 () Bool)

(assert (=> b!577065 m!834719))

(assert (=> b!577075 m!833863))

(assert (=> b!577075 m!834713))

(assert (=> b!577075 m!834713))

(assert (=> b!577075 m!834715))

(assert (=> b!577064 m!834429))

(declare-fun m!834721 () Bool)

(assert (=> b!577064 m!834721))

(assert (=> d!202661 m!833863))

(assert (=> d!202661 m!834427))

(assert (=> d!202661 m!834429))

(declare-fun m!834723 () Bool)

(assert (=> d!202661 m!834723))

(assert (=> b!577067 m!833863))

(assert (=> b!577067 m!834711))

(assert (=> b!576808 d!202661))

(declare-fun b!577096 () Bool)

(declare-fun e!348746 () Regex!1433)

(declare-fun e!348747 () Regex!1433)

(assert (=> b!577096 (= e!348746 e!348747)))

(declare-fun c!108049 () Bool)

(assert (=> b!577096 (= c!108049 ((_ is Star!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun b!577097 () Bool)

(declare-fun c!108052 () Bool)

(assert (=> b!577097 (= c!108052 ((_ is Union!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun e!348744 () Regex!1433)

(assert (=> b!577097 (= e!348744 e!348746)))

(declare-fun bm!39847 () Bool)

(declare-fun call!39854 () Regex!1433)

(assert (=> bm!39847 (= call!39854 (derivativeStep!300 (ite c!108052 (regOne!3379 (regex!1099 (rule!1849 token!491))) (regTwo!3378 (regex!1099 (rule!1849 token!491)))) (head!1224 input!2705)))))

(declare-fun bm!39848 () Bool)

(declare-fun call!39852 () Regex!1433)

(declare-fun call!39853 () Regex!1433)

(assert (=> bm!39848 (= call!39852 call!39853)))

(declare-fun b!577099 () Bool)

(declare-fun e!348743 () Regex!1433)

(assert (=> b!577099 (= e!348743 EmptyLang!1433)))

(declare-fun b!577100 () Bool)

(declare-fun e!348745 () Regex!1433)

(assert (=> b!577100 (= e!348745 (Union!1433 (Concat!2556 call!39852 (regTwo!3378 (regex!1099 (rule!1849 token!491)))) call!39854))))

(declare-fun b!577101 () Bool)

(declare-fun c!108051 () Bool)

(assert (=> b!577101 (= c!108051 (nullable!386 (regOne!3378 (regex!1099 (rule!1849 token!491)))))))

(assert (=> b!577101 (= e!348747 e!348745)))

(declare-fun b!577102 () Bool)

(assert (=> b!577102 (= e!348744 (ite (= (head!1224 input!2705) (c!107921 (regex!1099 (rule!1849 token!491)))) EmptyExpr!1433 EmptyLang!1433))))

(declare-fun bm!39849 () Bool)

(declare-fun call!39855 () Regex!1433)

(assert (=> bm!39849 (= call!39853 call!39855)))

(declare-fun b!577103 () Bool)

(assert (=> b!577103 (= e!348743 e!348744)))

(declare-fun c!108050 () Bool)

(assert (=> b!577103 (= c!108050 ((_ is ElementMatch!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun d!202663 () Bool)

(declare-fun lt!244206 () Regex!1433)

(assert (=> d!202663 (validRegex!481 lt!244206)))

(assert (=> d!202663 (= lt!244206 e!348743)))

(declare-fun c!108048 () Bool)

(assert (=> d!202663 (= c!108048 (or ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 token!491))) ((_ is EmptyLang!1433) (regex!1099 (rule!1849 token!491)))))))

(assert (=> d!202663 (validRegex!481 (regex!1099 (rule!1849 token!491)))))

(assert (=> d!202663 (= (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 input!2705)) lt!244206)))

(declare-fun b!577098 () Bool)

(assert (=> b!577098 (= e!348746 (Union!1433 call!39854 call!39855))))

(declare-fun bm!39850 () Bool)

(assert (=> bm!39850 (= call!39855 (derivativeStep!300 (ite c!108052 (regTwo!3379 (regex!1099 (rule!1849 token!491))) (ite c!108049 (reg!1762 (regex!1099 (rule!1849 token!491))) (regOne!3378 (regex!1099 (rule!1849 token!491))))) (head!1224 input!2705)))))

(declare-fun b!577104 () Bool)

(assert (=> b!577104 (= e!348747 (Concat!2556 call!39853 (regex!1099 (rule!1849 token!491))))))

(declare-fun b!577105 () Bool)

(assert (=> b!577105 (= e!348745 (Union!1433 (Concat!2556 call!39852 (regTwo!3378 (regex!1099 (rule!1849 token!491)))) EmptyLang!1433))))

(assert (= (and d!202663 c!108048) b!577099))

(assert (= (and d!202663 (not c!108048)) b!577103))

(assert (= (and b!577103 c!108050) b!577102))

(assert (= (and b!577103 (not c!108050)) b!577097))

(assert (= (and b!577097 c!108052) b!577098))

(assert (= (and b!577097 (not c!108052)) b!577096))

(assert (= (and b!577096 c!108049) b!577104))

(assert (= (and b!577096 (not c!108049)) b!577101))

(assert (= (and b!577101 c!108051) b!577100))

(assert (= (and b!577101 (not c!108051)) b!577105))

(assert (= (or b!577100 b!577105) bm!39848))

(assert (= (or b!577104 bm!39848) bm!39849))

(assert (= (or b!577098 bm!39849) bm!39850))

(assert (= (or b!577098 b!577100) bm!39847))

(assert (=> bm!39847 m!833935))

(declare-fun m!834753 () Bool)

(assert (=> bm!39847 m!834753))

(declare-fun m!834755 () Bool)

(assert (=> b!577101 m!834755))

(declare-fun m!834757 () Bool)

(assert (=> d!202663 m!834757))

(assert (=> d!202663 m!834047))

(assert (=> bm!39850 m!833935))

(declare-fun m!834759 () Bool)

(assert (=> bm!39850 m!834759))

(assert (=> b!576808 d!202663))

(declare-fun d!202667 () Bool)

(assert (=> d!202667 (= (head!1224 input!2705) (h!11069 input!2705))))

(assert (=> b!576808 d!202667))

(declare-fun d!202669 () Bool)

(assert (=> d!202669 (= (tail!753 input!2705) (t!77391 input!2705))))

(assert (=> b!576808 d!202669))

(declare-fun d!202671 () Bool)

(declare-fun lt!244207 () List!5678)

(assert (=> d!202671 (= (++!1587 (t!77391 lt!243945) lt!244207) (tail!753 lt!243952))))

(declare-fun e!348748 () List!5678)

(assert (=> d!202671 (= lt!244207 e!348748)))

(declare-fun c!108053 () Bool)

(assert (=> d!202671 (= c!108053 ((_ is Cons!5668) (t!77391 lt!243945)))))

(assert (=> d!202671 (>= (size!4513 (tail!753 lt!243952)) (size!4513 (t!77391 lt!243945)))))

(assert (=> d!202671 (= (getSuffix!252 (tail!753 lt!243952) (t!77391 lt!243945)) lt!244207)))

(declare-fun b!577106 () Bool)

(assert (=> b!577106 (= e!348748 (getSuffix!252 (tail!753 (tail!753 lt!243952)) (t!77391 (t!77391 lt!243945))))))

(declare-fun b!577107 () Bool)

(assert (=> b!577107 (= e!348748 (tail!753 lt!243952))))

(assert (= (and d!202671 c!108053) b!577106))

(assert (= (and d!202671 (not c!108053)) b!577107))

(declare-fun m!834761 () Bool)

(assert (=> d!202671 m!834761))

(assert (=> d!202671 m!833943))

(declare-fun m!834763 () Bool)

(assert (=> d!202671 m!834763))

(assert (=> d!202671 m!833881))

(assert (=> b!577106 m!833943))

(declare-fun m!834765 () Bool)

(assert (=> b!577106 m!834765))

(assert (=> b!577106 m!834765))

(declare-fun m!834767 () Bool)

(assert (=> b!577106 m!834767))

(assert (=> b!576699 d!202671))

(declare-fun d!202673 () Bool)

(assert (=> d!202673 (= (tail!753 lt!243952) (t!77391 lt!243952))))

(assert (=> b!576699 d!202673))

(declare-fun d!202675 () Bool)

(declare-fun c!108054 () Bool)

(assert (=> d!202675 (= c!108054 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))))

(declare-fun e!348749 () Bool)

(assert (=> d!202675 (= (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))) e!348749)))

(declare-fun b!577108 () Bool)

(assert (=> b!577108 (= e!348749 (inv!7138 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))))

(declare-fun b!577109 () Bool)

(declare-fun e!348750 () Bool)

(assert (=> b!577109 (= e!348749 e!348750)))

(declare-fun res!248199 () Bool)

(assert (=> b!577109 (= res!248199 (not ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))))))

(assert (=> b!577109 (=> res!248199 e!348750)))

(declare-fun b!577110 () Bool)

(assert (=> b!577110 (= e!348750 (inv!7139 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))))

(assert (= (and d!202675 c!108054) b!577108))

(assert (= (and d!202675 (not c!108054)) b!577109))

(assert (= (and b!577109 (not res!248199)) b!577110))

(declare-fun m!834769 () Bool)

(assert (=> b!577108 m!834769))

(declare-fun m!834771 () Bool)

(assert (=> b!577110 m!834771))

(assert (=> b!576612 d!202675))

(declare-fun d!202677 () Bool)

(assert (=> d!202677 true))

(declare-fun lt!244210 () Bool)

(assert (=> d!202677 (= lt!244210 (rulesValidInductive!394 thiss!22590 rules!3103))))

(declare-fun lambda!15720 () Int)

(declare-fun forall!1535 (List!5680 Int) Bool)

(assert (=> d!202677 (= lt!244210 (forall!1535 rules!3103 lambda!15720))))

(assert (=> d!202677 (= (rulesValid!389 thiss!22590 rules!3103) lt!244210)))

(declare-fun bs!69422 () Bool)

(assert (= bs!69422 d!202677))

(assert (=> bs!69422 m!834405))

(declare-fun m!834773 () Bool)

(assert (=> bs!69422 m!834773))

(assert (=> d!202575 d!202677))

(declare-fun d!202679 () Bool)

(declare-fun charsToBigInt!0 (List!5679 Int) Int)

(assert (=> d!202679 (= (inv!15 (value!36188 token!491)) (= (charsToBigInt!0 (text!8310 (value!36188 token!491)) 0) (value!36184 (value!36188 token!491))))))

(declare-fun bs!69423 () Bool)

(assert (= bs!69423 d!202679))

(declare-fun m!834775 () Bool)

(assert (=> bs!69423 m!834775))

(assert (=> b!576837 d!202679))

(declare-fun d!202681 () Bool)

(assert (=> d!202681 true))

(declare-fun order!4633 () Int)

(declare-fun lambda!15723 () Int)

(declare-fun dynLambda!3297 (Int Int) Int)

(assert (=> d!202681 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (dynLambda!3297 order!4633 lambda!15723))))

(declare-fun Forall2!210 (Int) Bool)

(assert (=> d!202681 (= (equivClasses!408 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (Forall2!210 lambda!15723))))

(declare-fun bs!69424 () Bool)

(assert (= bs!69424 d!202681))

(declare-fun m!834779 () Bool)

(assert (=> bs!69424 m!834779))

(assert (=> b!576562 d!202681))

(declare-fun d!202685 () Bool)

(declare-fun lt!244214 () Bool)

(assert (=> d!202685 (= lt!244214 (select (content!1003 (t!77393 rules!3103)) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun e!348757 () Bool)

(assert (=> d!202685 (= lt!244214 e!348757)))

(declare-fun res!248205 () Bool)

(assert (=> d!202685 (=> (not res!248205) (not e!348757))))

(assert (=> d!202685 (= res!248205 ((_ is Cons!5670) (t!77393 rules!3103)))))

(assert (=> d!202685 (= (contains!1329 (t!77393 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!244214)))

(declare-fun b!577120 () Bool)

(declare-fun e!348756 () Bool)

(assert (=> b!577120 (= e!348757 e!348756)))

(declare-fun res!248206 () Bool)

(assert (=> b!577120 (=> res!248206 e!348756)))

(assert (=> b!577120 (= res!248206 (= (h!11071 (t!77393 rules!3103)) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(declare-fun b!577121 () Bool)

(assert (=> b!577121 (= e!348756 (contains!1329 (t!77393 (t!77393 rules!3103)) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (= (and d!202685 res!248205) b!577120))

(assert (= (and b!577120 (not res!248206)) b!577121))

(declare-fun m!834781 () Bool)

(assert (=> d!202685 m!834781))

(declare-fun m!834783 () Bool)

(assert (=> d!202685 m!834783))

(declare-fun m!834785 () Bool)

(assert (=> b!577121 m!834785))

(assert (=> b!576935 d!202685))

(declare-fun d!202687 () Bool)

(assert (=> d!202687 (= (list!2355 lt!244173) (list!2356 (c!107922 lt!244173)))))

(declare-fun bs!69425 () Bool)

(assert (= bs!69425 d!202687))

(declare-fun m!834787 () Bool)

(assert (=> bs!69425 m!834787))

(assert (=> d!202581 d!202687))

(declare-fun d!202689 () Bool)

(assert (=> d!202689 (= (seqFromList!1287 (_1!3591 lt!244098)) (fromListB!561 (_1!3591 lt!244098)))))

(declare-fun bs!69426 () Bool)

(assert (= bs!69426 d!202689))

(declare-fun m!834789 () Bool)

(assert (=> bs!69426 m!834789))

(assert (=> b!576687 d!202689))

(declare-fun d!202691 () Bool)

(declare-fun lt!244215 () Int)

(assert (=> d!202691 (>= lt!244215 0)))

(declare-fun e!348758 () Int)

(assert (=> d!202691 (= lt!244215 e!348758)))

(declare-fun c!108055 () Bool)

(assert (=> d!202691 (= c!108055 ((_ is Nil!5668) lt!243952))))

(assert (=> d!202691 (= (size!4513 lt!243952) lt!244215)))

(declare-fun b!577122 () Bool)

(assert (=> b!577122 (= e!348758 0)))

(declare-fun b!577123 () Bool)

(assert (=> b!577123 (= e!348758 (+ 1 (size!4513 (t!77391 lt!243952))))))

(assert (= (and d!202691 c!108055) b!577122))

(assert (= (and d!202691 (not c!108055)) b!577123))

(declare-fun m!834791 () Bool)

(assert (=> b!577123 m!834791))

(assert (=> b!576687 d!202691))

(declare-fun d!202693 () Bool)

(assert (=> d!202693 (= (apply!1364 (transformation!1099 (rule!1849 token!491)) (seqFromList!1287 (_1!3591 lt!244098))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) (seqFromList!1287 (_1!3591 lt!244098))))))

(declare-fun b_lambda!22549 () Bool)

(assert (=> (not b_lambda!22549) (not d!202693)))

(declare-fun t!77482 () Bool)

(declare-fun tb!50351 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77482) tb!50351))

(declare-fun result!56378 () Bool)

(assert (=> tb!50351 (= result!56378 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) (seqFromList!1287 (_1!3591 lt!244098)))))))

(declare-fun m!834793 () Bool)

(assert (=> tb!50351 m!834793))

(assert (=> d!202693 t!77482))

(declare-fun b_and!56519 () Bool)

(assert (= b_and!56459 (and (=> t!77482 result!56378) b_and!56519)))

(declare-fun t!77484 () Bool)

(declare-fun tb!50353 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77484) tb!50353))

(declare-fun result!56380 () Bool)

(assert (= result!56380 result!56378))

(assert (=> d!202693 t!77484))

(declare-fun b_and!56521 () Bool)

(assert (= b_and!56461 (and (=> t!77484 result!56380) b_and!56521)))

(declare-fun tb!50355 () Bool)

(declare-fun t!77486 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77486) tb!50355))

(declare-fun result!56382 () Bool)

(assert (= result!56382 result!56378))

(assert (=> d!202693 t!77486))

(declare-fun b_and!56523 () Bool)

(assert (= b_and!56503 (and (=> t!77486 result!56382) b_and!56523)))

(assert (=> d!202693 m!834175))

(declare-fun m!834795 () Bool)

(assert (=> d!202693 m!834795))

(assert (=> b!576687 d!202693))

(declare-fun bm!39883 () Bool)

(declare-fun call!39891 () Unit!10237)

(declare-fun lemmaIsPrefixSameLengthThenSameList!72 (List!5678 List!5678 List!5678) Unit!10237)

(assert (=> bm!39883 (= call!39891 (lemmaIsPrefixSameLengthThenSameList!72 lt!243952 Nil!5668 lt!243952))))

(declare-fun b!577180 () Bool)

(declare-fun e!348795 () tuple2!6654)

(assert (=> b!577180 (= e!348795 (tuple2!6655 Nil!5668 lt!243952))))

(declare-fun b!577181 () Bool)

(declare-fun e!348796 () tuple2!6654)

(assert (=> b!577181 (= e!348796 (tuple2!6655 Nil!5668 Nil!5668))))

(declare-fun b!577182 () Bool)

(declare-fun lt!244349 () tuple2!6654)

(assert (=> b!577182 (= e!348795 lt!244349)))

(declare-fun b!577183 () Bool)

(declare-fun c!108084 () Bool)

(declare-fun call!39892 () Bool)

(assert (=> b!577183 (= c!108084 call!39892)))

(declare-fun lt!244348 () Unit!10237)

(declare-fun lt!244331 () Unit!10237)

(assert (=> b!577183 (= lt!244348 lt!244331)))

(assert (=> b!577183 (= lt!243952 Nil!5668)))

(assert (=> b!577183 (= lt!244331 call!39891)))

(declare-fun lt!244336 () Unit!10237)

(declare-fun lt!244337 () Unit!10237)

(assert (=> b!577183 (= lt!244336 lt!244337)))

(declare-fun call!39889 () Bool)

(assert (=> b!577183 call!39889))

(declare-fun call!39893 () Unit!10237)

(assert (=> b!577183 (= lt!244337 call!39893)))

(declare-fun e!348797 () tuple2!6654)

(assert (=> b!577183 (= e!348797 e!348796)))

(declare-fun call!39890 () List!5678)

(declare-fun bm!39884 () Bool)

(declare-fun call!39894 () tuple2!6654)

(declare-fun call!39895 () Regex!1433)

(declare-fun lt!244343 () List!5678)

(assert (=> bm!39884 (= call!39894 (findLongestMatchInner!170 call!39895 lt!244343 (+ (size!4513 Nil!5668) 1) call!39890 lt!243952 (size!4513 lt!243952)))))

(declare-fun d!202695 () Bool)

(declare-fun e!348794 () Bool)

(assert (=> d!202695 e!348794))

(declare-fun res!248215 () Bool)

(assert (=> d!202695 (=> (not res!248215) (not e!348794))))

(declare-fun lt!244351 () tuple2!6654)

(assert (=> d!202695 (= res!248215 (= (++!1587 (_1!3591 lt!244351) (_2!3591 lt!244351)) lt!243952))))

(declare-fun e!348793 () tuple2!6654)

(assert (=> d!202695 (= lt!244351 e!348793)))

(declare-fun c!108082 () Bool)

(declare-fun lostCause!187 (Regex!1433) Bool)

(assert (=> d!202695 (= c!108082 (lostCause!187 (regex!1099 (rule!1849 token!491))))))

(declare-fun lt!244354 () Unit!10237)

(declare-fun Unit!10254 () Unit!10237)

(assert (=> d!202695 (= lt!244354 Unit!10254)))

(assert (=> d!202695 (= (getSuffix!252 lt!243952 Nil!5668) lt!243952)))

(declare-fun lt!244340 () Unit!10237)

(declare-fun lt!244346 () Unit!10237)

(assert (=> d!202695 (= lt!244340 lt!244346)))

(declare-fun lt!244329 () List!5678)

(assert (=> d!202695 (= lt!243952 lt!244329)))

(assert (=> d!202695 (= lt!244346 (lemmaSamePrefixThenSameSuffix!456 Nil!5668 lt!243952 Nil!5668 lt!244329 lt!243952))))

(assert (=> d!202695 (= lt!244329 (getSuffix!252 lt!243952 Nil!5668))))

(declare-fun lt!244341 () Unit!10237)

(declare-fun lt!244334 () Unit!10237)

(assert (=> d!202695 (= lt!244341 lt!244334)))

(assert (=> d!202695 (isPrefix!733 Nil!5668 (++!1587 Nil!5668 lt!243952))))

(assert (=> d!202695 (= lt!244334 (lemmaConcatTwoListThenFirstIsPrefix!580 Nil!5668 lt!243952))))

(assert (=> d!202695 (validRegex!481 (regex!1099 (rule!1849 token!491)))))

(assert (=> d!202695 (= (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)) lt!244351)))

(declare-fun b!577184 () Bool)

(assert (=> b!577184 (= e!348793 e!348797)))

(declare-fun c!108083 () Bool)

(assert (=> b!577184 (= c!108083 (= (size!4513 Nil!5668) (size!4513 lt!243952)))))

(declare-fun bm!39885 () Bool)

(declare-fun call!39888 () C!3788)

(assert (=> bm!39885 (= call!39888 (head!1224 lt!243952))))

(declare-fun b!577185 () Bool)

(assert (=> b!577185 (= e!348793 (tuple2!6655 Nil!5668 lt!243952))))

(declare-fun bm!39886 () Bool)

(assert (=> bm!39886 (= call!39895 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) call!39888))))

(declare-fun b!577186 () Bool)

(declare-fun e!348799 () Unit!10237)

(declare-fun Unit!10255 () Unit!10237)

(assert (=> b!577186 (= e!348799 Unit!10255)))

(declare-fun lt!244344 () Unit!10237)

(assert (=> b!577186 (= lt!244344 call!39893)))

(assert (=> b!577186 call!39889))

(declare-fun lt!244355 () Unit!10237)

(assert (=> b!577186 (= lt!244355 lt!244344)))

(declare-fun lt!244347 () Unit!10237)

(assert (=> b!577186 (= lt!244347 call!39891)))

(assert (=> b!577186 (= lt!243952 Nil!5668)))

(declare-fun lt!244342 () Unit!10237)

(assert (=> b!577186 (= lt!244342 lt!244347)))

(assert (=> b!577186 false))

(declare-fun bm!39887 () Bool)

(assert (=> bm!39887 (= call!39893 (lemmaIsPrefixRefl!471 lt!243952 lt!243952))))

(declare-fun b!577187 () Bool)

(declare-fun e!348798 () Bool)

(assert (=> b!577187 (= e!348794 e!348798)))

(declare-fun res!248216 () Bool)

(assert (=> b!577187 (=> res!248216 e!348798)))

(assert (=> b!577187 (= res!248216 (isEmpty!4093 (_1!3591 lt!244351)))))

(declare-fun b!577188 () Bool)

(declare-fun Unit!10256 () Unit!10237)

(assert (=> b!577188 (= e!348799 Unit!10256)))

(declare-fun bm!39888 () Bool)

(assert (=> bm!39888 (= call!39889 (isPrefix!733 lt!243952 lt!243952))))

(declare-fun b!577189 () Bool)

(assert (=> b!577189 (= e!348798 (>= (size!4513 (_1!3591 lt!244351)) (size!4513 Nil!5668)))))

(declare-fun b!577190 () Bool)

(declare-fun c!108085 () Bool)

(assert (=> b!577190 (= c!108085 call!39892)))

(declare-fun lt!244332 () Unit!10237)

(declare-fun lt!244338 () Unit!10237)

(assert (=> b!577190 (= lt!244332 lt!244338)))

(declare-fun lt!244333 () C!3788)

(declare-fun lt!244352 () List!5678)

(assert (=> b!577190 (= (++!1587 (++!1587 Nil!5668 (Cons!5668 lt!244333 Nil!5668)) lt!244352) lt!243952)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!55 (List!5678 C!3788 List!5678 List!5678) Unit!10237)

(assert (=> b!577190 (= lt!244338 (lemmaMoveElementToOtherListKeepsConcatEq!55 Nil!5668 lt!244333 lt!244352 lt!243952))))

(assert (=> b!577190 (= lt!244352 (tail!753 lt!243952))))

(assert (=> b!577190 (= lt!244333 (head!1224 lt!243952))))

(declare-fun lt!244353 () Unit!10237)

(declare-fun lt!244328 () Unit!10237)

(assert (=> b!577190 (= lt!244353 lt!244328)))

(assert (=> b!577190 (isPrefix!733 (++!1587 Nil!5668 (Cons!5668 (head!1224 (getSuffix!252 lt!243952 Nil!5668)) Nil!5668)) lt!243952)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!61 (List!5678 List!5678) Unit!10237)

(assert (=> b!577190 (= lt!244328 (lemmaAddHeadSuffixToPrefixStillPrefix!61 Nil!5668 lt!243952))))

(declare-fun lt!244345 () Unit!10237)

(declare-fun lt!244330 () Unit!10237)

(assert (=> b!577190 (= lt!244345 lt!244330)))

(assert (=> b!577190 (= lt!244330 (lemmaAddHeadSuffixToPrefixStillPrefix!61 Nil!5668 lt!243952))))

(assert (=> b!577190 (= lt!244343 (++!1587 Nil!5668 (Cons!5668 (head!1224 lt!243952) Nil!5668)))))

(declare-fun lt!244335 () Unit!10237)

(assert (=> b!577190 (= lt!244335 e!348799)))

(declare-fun c!108080 () Bool)

(assert (=> b!577190 (= c!108080 (= (size!4513 Nil!5668) (size!4513 lt!243952)))))

(declare-fun lt!244339 () Unit!10237)

(declare-fun lt!244350 () Unit!10237)

(assert (=> b!577190 (= lt!244339 lt!244350)))

(assert (=> b!577190 (<= (size!4513 Nil!5668) (size!4513 lt!243952))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!72 (List!5678 List!5678) Unit!10237)

(assert (=> b!577190 (= lt!244350 (lemmaIsPrefixThenSmallerEqSize!72 Nil!5668 lt!243952))))

(declare-fun e!348792 () tuple2!6654)

(assert (=> b!577190 (= e!348797 e!348792)))

(declare-fun b!577191 () Bool)

(assert (=> b!577191 (= e!348792 e!348795)))

(assert (=> b!577191 (= lt!244349 call!39894)))

(declare-fun c!108081 () Bool)

(assert (=> b!577191 (= c!108081 (isEmpty!4093 (_1!3591 lt!244349)))))

(declare-fun bm!39889 () Bool)

(assert (=> bm!39889 (= call!39892 (nullable!386 (regex!1099 (rule!1849 token!491))))))

(declare-fun bm!39890 () Bool)

(assert (=> bm!39890 (= call!39890 (tail!753 lt!243952))))

(declare-fun b!577192 () Bool)

(assert (=> b!577192 (= e!348796 (tuple2!6655 Nil!5668 lt!243952))))

(declare-fun b!577193 () Bool)

(assert (=> b!577193 (= e!348792 call!39894)))

(assert (= (and d!202695 c!108082) b!577185))

(assert (= (and d!202695 (not c!108082)) b!577184))

(assert (= (and b!577184 c!108083) b!577183))

(assert (= (and b!577184 (not c!108083)) b!577190))

(assert (= (and b!577183 c!108084) b!577181))

(assert (= (and b!577183 (not c!108084)) b!577192))

(assert (= (and b!577190 c!108080) b!577186))

(assert (= (and b!577190 (not c!108080)) b!577188))

(assert (= (and b!577190 c!108085) b!577191))

(assert (= (and b!577190 (not c!108085)) b!577193))

(assert (= (and b!577191 c!108081) b!577180))

(assert (= (and b!577191 (not c!108081)) b!577182))

(assert (= (or b!577191 b!577193) bm!39885))

(assert (= (or b!577191 b!577193) bm!39890))

(assert (= (or b!577191 b!577193) bm!39886))

(assert (= (or b!577191 b!577193) bm!39884))

(assert (= (or b!577183 b!577186) bm!39888))

(assert (= (or b!577183 b!577186) bm!39883))

(assert (= (or b!577183 b!577190) bm!39889))

(assert (= (or b!577183 b!577186) bm!39887))

(assert (= (and d!202695 res!248215) b!577187))

(assert (= (and b!577187 (not res!248216)) b!577189))

(declare-fun m!834797 () Bool)

(assert (=> b!577187 m!834797))

(declare-fun m!834799 () Bool)

(assert (=> d!202695 m!834799))

(declare-fun m!834801 () Bool)

(assert (=> d!202695 m!834801))

(declare-fun m!834803 () Bool)

(assert (=> d!202695 m!834803))

(declare-fun m!834805 () Bool)

(assert (=> d!202695 m!834805))

(declare-fun m!834807 () Bool)

(assert (=> d!202695 m!834807))

(declare-fun m!834809 () Bool)

(assert (=> d!202695 m!834809))

(assert (=> d!202695 m!834047))

(declare-fun m!834811 () Bool)

(assert (=> d!202695 m!834811))

(assert (=> d!202695 m!834801))

(assert (=> bm!39888 m!834505))

(declare-fun m!834813 () Bool)

(assert (=> b!577190 m!834813))

(declare-fun m!834815 () Bool)

(assert (=> b!577190 m!834815))

(assert (=> b!577190 m!833937))

(declare-fun m!834817 () Bool)

(assert (=> b!577190 m!834817))

(assert (=> b!577190 m!834811))

(declare-fun m!834819 () Bool)

(assert (=> b!577190 m!834819))

(assert (=> b!577190 m!833939))

(declare-fun m!834821 () Bool)

(assert (=> b!577190 m!834821))

(declare-fun m!834823 () Bool)

(assert (=> b!577190 m!834823))

(assert (=> b!577190 m!834811))

(declare-fun m!834825 () Bool)

(assert (=> b!577190 m!834825))

(assert (=> b!577190 m!834179))

(assert (=> b!577190 m!834825))

(declare-fun m!834827 () Bool)

(assert (=> b!577190 m!834827))

(assert (=> b!577190 m!833943))

(assert (=> b!577190 m!834821))

(declare-fun m!834829 () Bool)

(assert (=> b!577190 m!834829))

(assert (=> bm!39890 m!833943))

(declare-fun m!834831 () Bool)

(assert (=> b!577191 m!834831))

(assert (=> bm!39889 m!834049))

(assert (=> bm!39887 m!834507))

(declare-fun m!834833 () Bool)

(assert (=> bm!39886 m!834833))

(declare-fun m!834835 () Bool)

(assert (=> bm!39883 m!834835))

(declare-fun m!834837 () Bool)

(assert (=> b!577189 m!834837))

(assert (=> b!577189 m!834179))

(assert (=> bm!39885 m!833937))

(assert (=> bm!39884 m!833939))

(declare-fun m!834839 () Bool)

(assert (=> bm!39884 m!834839))

(assert (=> b!576687 d!202695))

(declare-fun bs!69427 () Bool)

(declare-fun d!202697 () Bool)

(assert (= bs!69427 (and d!202697 d!202469)))

(declare-fun lambda!15724 () Int)

(assert (=> bs!69427 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (= lambda!15724 lambda!15709))))

(declare-fun bs!69428 () Bool)

(assert (= bs!69428 (and d!202697 d!202475)))

(assert (=> bs!69428 (= lambda!15724 lambda!15710)))

(declare-fun b!577202 () Bool)

(declare-fun e!348808 () Bool)

(assert (=> b!577202 (= e!348808 true)))

(assert (=> d!202697 e!348808))

(assert (= d!202697 b!577202))

(assert (=> b!577202 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (dynLambda!3291 order!4621 lambda!15724))))

(assert (=> b!577202 (< (dynLambda!3292 order!4623 (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (dynLambda!3291 order!4621 lambda!15724))))

(assert (=> d!202697 (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) (seqFromList!1287 (_1!3591 lt!244098))))) (list!2355 (seqFromList!1287 (_1!3591 lt!244098))))))

(declare-fun lt!244356 () Unit!10237)

(assert (=> d!202697 (= lt!244356 (ForallOf!107 lambda!15724 (seqFromList!1287 (_1!3591 lt!244098))))))

(assert (=> d!202697 (= (lemmaSemiInverse!202 (transformation!1099 (rule!1849 token!491)) (seqFromList!1287 (_1!3591 lt!244098))) lt!244356)))

(declare-fun b_lambda!22551 () Bool)

(assert (=> (not b_lambda!22551) (not d!202697)))

(declare-fun tb!50357 () Bool)

(declare-fun t!77488 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77488) tb!50357))

(declare-fun b!577209 () Bool)

(declare-fun tp!180797 () Bool)

(declare-fun e!348809 () Bool)

(assert (=> b!577209 (= e!348809 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) (seqFromList!1287 (_1!3591 lt!244098)))))) tp!180797))))

(declare-fun result!56384 () Bool)

(assert (=> tb!50357 (= result!56384 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) (seqFromList!1287 (_1!3591 lt!244098))))) e!348809))))

(assert (= tb!50357 b!577209))

(declare-fun m!834841 () Bool)

(assert (=> b!577209 m!834841))

(declare-fun m!834843 () Bool)

(assert (=> tb!50357 m!834843))

(assert (=> d!202697 t!77488))

(declare-fun b_and!56525 () Bool)

(assert (= b_and!56513 (and (=> t!77488 result!56384) b_and!56525)))

(declare-fun t!77490 () Bool)

(declare-fun tb!50359 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77490) tb!50359))

(declare-fun result!56386 () Bool)

(assert (= result!56386 result!56384))

(assert (=> d!202697 t!77490))

(declare-fun b_and!56527 () Bool)

(assert (= b_and!56515 (and (=> t!77490 result!56386) b_and!56527)))

(declare-fun tb!50361 () Bool)

(declare-fun t!77492 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77492) tb!50361))

(declare-fun result!56388 () Bool)

(assert (= result!56388 result!56384))

(assert (=> d!202697 t!77492))

(declare-fun b_and!56529 () Bool)

(assert (= b_and!56517 (and (=> t!77492 result!56388) b_and!56529)))

(declare-fun b_lambda!22553 () Bool)

(assert (=> (not b_lambda!22553) (not d!202697)))

(assert (=> d!202697 t!77482))

(declare-fun b_and!56531 () Bool)

(assert (= b_and!56519 (and (=> t!77482 result!56378) b_and!56531)))

(assert (=> d!202697 t!77484))

(declare-fun b_and!56533 () Bool)

(assert (= b_and!56521 (and (=> t!77484 result!56380) b_and!56533)))

(assert (=> d!202697 t!77486))

(declare-fun b_and!56535 () Bool)

(assert (= b_and!56523 (and (=> t!77486 result!56382) b_and!56535)))

(assert (=> d!202697 m!834175))

(declare-fun m!834845 () Bool)

(assert (=> d!202697 m!834845))

(assert (=> d!202697 m!834795))

(declare-fun m!834847 () Bool)

(assert (=> d!202697 m!834847))

(assert (=> d!202697 m!834175))

(assert (=> d!202697 m!834795))

(assert (=> d!202697 m!834175))

(declare-fun m!834849 () Bool)

(assert (=> d!202697 m!834849))

(assert (=> d!202697 m!834847))

(declare-fun m!834851 () Bool)

(assert (=> d!202697 m!834851))

(assert (=> b!576687 d!202697))

(declare-fun d!202699 () Bool)

(declare-fun e!348818 () Bool)

(assert (=> d!202699 e!348818))

(declare-fun res!248223 () Bool)

(assert (=> d!202699 (=> res!248223 e!348818)))

(assert (=> d!202699 (= res!248223 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(declare-fun lt!244393 () Unit!10237)

(declare-fun choose!4140 (Regex!1433 List!5678) Unit!10237)

(assert (=> d!202699 (= lt!244393 (choose!4140 (regex!1099 (rule!1849 token!491)) lt!243952))))

(assert (=> d!202699 (validRegex!481 (regex!1099 (rule!1849 token!491)))))

(assert (=> d!202699 (= (longestMatchIsAcceptedByMatchOrIsEmpty!154 (regex!1099 (rule!1849 token!491)) lt!243952) lt!244393)))

(declare-fun b!577220 () Bool)

(assert (=> b!577220 (= e!348818 (matchR!580 (regex!1099 (rule!1849 token!491)) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(assert (= (and d!202699 (not res!248223)) b!577220))

(assert (=> d!202699 m!834183))

(assert (=> d!202699 m!834179))

(assert (=> d!202699 m!833939))

(assert (=> d!202699 m!834181))

(assert (=> d!202699 m!834179))

(declare-fun m!834933 () Bool)

(assert (=> d!202699 m!834933))

(assert (=> d!202699 m!833939))

(assert (=> d!202699 m!834047))

(assert (=> b!577220 m!834179))

(assert (=> b!577220 m!833939))

(assert (=> b!577220 m!834179))

(assert (=> b!577220 m!833939))

(assert (=> b!577220 m!834181))

(assert (=> b!577220 m!834199))

(assert (=> b!576687 d!202699))

(declare-fun d!202719 () Bool)

(declare-fun lt!244399 () Int)

(assert (=> d!202719 (= lt!244399 (size!4513 (list!2355 (seqFromList!1287 (_1!3591 lt!244098)))))))

(declare-fun size!4517 (Conc!1816) Int)

(assert (=> d!202719 (= lt!244399 (size!4517 (c!107922 (seqFromList!1287 (_1!3591 lt!244098)))))))

(assert (=> d!202719 (= (size!4514 (seqFromList!1287 (_1!3591 lt!244098))) lt!244399)))

(declare-fun bs!69433 () Bool)

(assert (= bs!69433 d!202719))

(assert (=> bs!69433 m!834175))

(assert (=> bs!69433 m!834845))

(assert (=> bs!69433 m!834845))

(declare-fun m!834949 () Bool)

(assert (=> bs!69433 m!834949))

(declare-fun m!834953 () Bool)

(assert (=> bs!69433 m!834953))

(assert (=> b!576687 d!202719))

(declare-fun d!202725 () Bool)

(declare-fun lt!244401 () Int)

(assert (=> d!202725 (>= lt!244401 0)))

(declare-fun e!348829 () Int)

(assert (=> d!202725 (= lt!244401 e!348829)))

(declare-fun c!108100 () Bool)

(assert (=> d!202725 (= c!108100 ((_ is Nil!5668) Nil!5668))))

(assert (=> d!202725 (= (size!4513 Nil!5668) lt!244401)))

(declare-fun b!577241 () Bool)

(assert (=> b!577241 (= e!348829 0)))

(declare-fun b!577242 () Bool)

(assert (=> b!577242 (= e!348829 (+ 1 (size!4513 (t!77391 Nil!5668))))))

(assert (= (and d!202725 c!108100) b!577241))

(assert (= (and d!202725 (not c!108100)) b!577242))

(declare-fun m!834955 () Bool)

(assert (=> b!577242 m!834955))

(assert (=> b!576687 d!202725))

(declare-fun d!202729 () Bool)

(assert (=> d!202729 (= (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))) ((_ is Nil!5668) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(assert (=> b!576687 d!202729))

(declare-fun b!577244 () Bool)

(declare-fun e!348831 () Option!1450)

(declare-fun lt!244405 () Option!1450)

(declare-fun lt!244403 () Option!1450)

(assert (=> b!577244 (= e!348831 (ite (and ((_ is None!1449) lt!244405) ((_ is None!1449) lt!244403)) None!1449 (ite ((_ is None!1449) lt!244403) lt!244405 (ite ((_ is None!1449) lt!244405) lt!244403 (ite (>= (size!4512 (_1!3590 (v!16310 lt!244405))) (size!4512 (_1!3590 (v!16310 lt!244403)))) lt!244405 lt!244403)))))))

(declare-fun call!39905 () Option!1450)

(assert (=> b!577244 (= lt!244405 call!39905)))

(assert (=> b!577244 (= lt!244403 (maxPrefix!683 thiss!22590 (t!77393 (t!77393 rules!3103)) lt!243952))))

(declare-fun b!577245 () Bool)

(assert (=> b!577245 (= e!348831 call!39905)))

(declare-fun b!577246 () Bool)

(declare-fun res!248233 () Bool)

(declare-fun e!348832 () Bool)

(assert (=> b!577246 (=> (not res!248233) (not e!348832))))

(declare-fun lt!244402 () Option!1450)

(assert (=> b!577246 (= res!248233 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244402)))) (_2!3590 (get!2163 lt!244402))) lt!243952))))

(declare-fun b!577247 () Bool)

(declare-fun res!248234 () Bool)

(assert (=> b!577247 (=> (not res!248234) (not e!348832))))

(assert (=> b!577247 (= res!248234 (< (size!4513 (_2!3590 (get!2163 lt!244402))) (size!4513 lt!243952)))))

(declare-fun d!202731 () Bool)

(declare-fun e!348833 () Bool)

(assert (=> d!202731 e!348833))

(declare-fun res!248232 () Bool)

(assert (=> d!202731 (=> res!248232 e!348833)))

(assert (=> d!202731 (= res!248232 (isEmpty!4096 lt!244402))))

(assert (=> d!202731 (= lt!244402 e!348831)))

(declare-fun c!108101 () Bool)

(assert (=> d!202731 (= c!108101 (and ((_ is Cons!5670) (t!77393 rules!3103)) ((_ is Nil!5670) (t!77393 (t!77393 rules!3103)))))))

(declare-fun lt!244406 () Unit!10237)

(declare-fun lt!244404 () Unit!10237)

(assert (=> d!202731 (= lt!244406 lt!244404)))

(assert (=> d!202731 (isPrefix!733 lt!243952 lt!243952)))

(assert (=> d!202731 (= lt!244404 (lemmaIsPrefixRefl!471 lt!243952 lt!243952))))

(assert (=> d!202731 (rulesValidInductive!394 thiss!22590 (t!77393 rules!3103))))

(assert (=> d!202731 (= (maxPrefix!683 thiss!22590 (t!77393 rules!3103) lt!243952) lt!244402)))

(declare-fun b!577248 () Bool)

(declare-fun res!248238 () Bool)

(assert (=> b!577248 (=> (not res!248238) (not e!348832))))

(assert (=> b!577248 (= res!248238 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244402)))) (originalCharacters!1138 (_1!3590 (get!2163 lt!244402)))))))

(declare-fun b!577249 () Bool)

(declare-fun res!248236 () Bool)

(assert (=> b!577249 (=> (not res!248236) (not e!348832))))

(assert (=> b!577249 (= res!248236 (= (value!36188 (_1!3590 (get!2163 lt!244402))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244402)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244402)))))))))

(declare-fun b!577250 () Bool)

(declare-fun res!248237 () Bool)

(assert (=> b!577250 (=> (not res!248237) (not e!348832))))

(assert (=> b!577250 (= res!248237 (matchR!580 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244402)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244402))))))))

(declare-fun b!577251 () Bool)

(assert (=> b!577251 (= e!348833 e!348832)))

(declare-fun res!248235 () Bool)

(assert (=> b!577251 (=> (not res!248235) (not e!348832))))

(assert (=> b!577251 (= res!248235 (isDefined!1261 lt!244402))))

(declare-fun b!577252 () Bool)

(assert (=> b!577252 (= e!348832 (contains!1329 (t!77393 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244402)))))))

(declare-fun bm!39900 () Bool)

(assert (=> bm!39900 (= call!39905 (maxPrefixOneRule!384 thiss!22590 (h!11071 (t!77393 rules!3103)) lt!243952))))

(assert (= (and d!202731 c!108101) b!577245))

(assert (= (and d!202731 (not c!108101)) b!577244))

(assert (= (or b!577245 b!577244) bm!39900))

(assert (= (and d!202731 (not res!248232)) b!577251))

(assert (= (and b!577251 res!248235) b!577248))

(assert (= (and b!577248 res!248238) b!577247))

(assert (= (and b!577247 res!248234) b!577246))

(assert (= (and b!577246 res!248233) b!577249))

(assert (= (and b!577249 res!248236) b!577250))

(assert (= (and b!577250 res!248237) b!577252))

(declare-fun m!834975 () Bool)

(assert (=> b!577249 m!834975))

(declare-fun m!834977 () Bool)

(assert (=> b!577249 m!834977))

(assert (=> b!577249 m!834977))

(declare-fun m!834979 () Bool)

(assert (=> b!577249 m!834979))

(assert (=> b!577250 m!834975))

(declare-fun m!834981 () Bool)

(assert (=> b!577250 m!834981))

(assert (=> b!577250 m!834981))

(declare-fun m!834983 () Bool)

(assert (=> b!577250 m!834983))

(assert (=> b!577250 m!834983))

(declare-fun m!834987 () Bool)

(assert (=> b!577250 m!834987))

(assert (=> b!577247 m!834975))

(declare-fun m!834993 () Bool)

(assert (=> b!577247 m!834993))

(assert (=> b!577247 m!833939))

(assert (=> b!577246 m!834975))

(assert (=> b!577246 m!834981))

(assert (=> b!577246 m!834981))

(assert (=> b!577246 m!834983))

(assert (=> b!577246 m!834983))

(declare-fun m!834995 () Bool)

(assert (=> b!577246 m!834995))

(declare-fun m!834997 () Bool)

(assert (=> b!577251 m!834997))

(declare-fun m!834999 () Bool)

(assert (=> b!577244 m!834999))

(assert (=> b!577252 m!834975))

(declare-fun m!835003 () Bool)

(assert (=> b!577252 m!835003))

(declare-fun m!835005 () Bool)

(assert (=> d!202731 m!835005))

(assert (=> d!202731 m!834505))

(assert (=> d!202731 m!834507))

(declare-fun m!835009 () Bool)

(assert (=> d!202731 m!835009))

(assert (=> b!577248 m!834975))

(assert (=> b!577248 m!834981))

(assert (=> b!577248 m!834981))

(assert (=> b!577248 m!834983))

(declare-fun m!835011 () Bool)

(assert (=> bm!39900 m!835011))

(assert (=> b!576850 d!202731))

(declare-fun b!577261 () Bool)

(declare-fun e!348840 () Bool)

(declare-fun lt!244409 () Bool)

(declare-fun call!39906 () Bool)

(assert (=> b!577261 (= e!348840 (= lt!244409 call!39906))))

(declare-fun b!577262 () Bool)

(declare-fun e!348845 () Bool)

(assert (=> b!577262 (= e!348845 (not (= (head!1224 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))))

(declare-fun b!577263 () Bool)

(declare-fun e!348842 () Bool)

(assert (=> b!577263 (= e!348842 (nullable!386 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun d!202753 () Bool)

(assert (=> d!202753 e!348840))

(declare-fun c!108107 () Bool)

(assert (=> d!202753 (= c!108107 ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (=> d!202753 (= lt!244409 e!348842)))

(declare-fun c!108105 () Bool)

(assert (=> d!202753 (= c!108105 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(assert (=> d!202753 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!202753 (= (matchR!580 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))) lt!244409)))

(declare-fun b!577264 () Bool)

(assert (=> b!577264 (= e!348842 (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (head!1224 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705))))) (tail!753 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705))))))))

(declare-fun b!577265 () Bool)

(declare-fun e!348839 () Bool)

(assert (=> b!577265 (= e!348839 e!348845)))

(declare-fun res!248243 () Bool)

(assert (=> b!577265 (=> res!248243 e!348845)))

(assert (=> b!577265 (= res!248243 call!39906)))

(declare-fun b!577266 () Bool)

(declare-fun e!348843 () Bool)

(assert (=> b!577266 (= e!348843 (= (head!1224 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun b!577267 () Bool)

(declare-fun res!248244 () Bool)

(declare-fun e!348841 () Bool)

(assert (=> b!577267 (=> res!248244 e!348841)))

(assert (=> b!577267 (= res!248244 e!348843)))

(declare-fun res!248247 () Bool)

(assert (=> b!577267 (=> (not res!248247) (not e!348843))))

(assert (=> b!577267 (= res!248247 lt!244409)))

(declare-fun b!577268 () Bool)

(declare-fun e!348844 () Bool)

(assert (=> b!577268 (= e!348840 e!348844)))

(declare-fun c!108106 () Bool)

(assert (=> b!577268 (= c!108106 ((_ is EmptyLang!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun b!577269 () Bool)

(declare-fun res!248242 () Bool)

(assert (=> b!577269 (=> (not res!248242) (not e!348843))))

(assert (=> b!577269 (= res!248242 (not call!39906))))

(declare-fun b!577270 () Bool)

(declare-fun res!248241 () Bool)

(assert (=> b!577270 (=> res!248241 e!348841)))

(assert (=> b!577270 (= res!248241 (not ((_ is ElementMatch!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(assert (=> b!577270 (= e!348844 e!348841)))

(declare-fun b!577271 () Bool)

(assert (=> b!577271 (= e!348841 e!348839)))

(declare-fun res!248245 () Bool)

(assert (=> b!577271 (=> (not res!248245) (not e!348839))))

(assert (=> b!577271 (= res!248245 (not lt!244409))))

(declare-fun b!577272 () Bool)

(declare-fun res!248240 () Bool)

(assert (=> b!577272 (=> (not res!248240) (not e!348843))))

(assert (=> b!577272 (= res!248240 (isEmpty!4093 (tail!753 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705))))))))

(declare-fun b!577273 () Bool)

(assert (=> b!577273 (= e!348844 (not lt!244409))))

(declare-fun b!577274 () Bool)

(declare-fun res!248246 () Bool)

(assert (=> b!577274 (=> res!248246 e!348845)))

(assert (=> b!577274 (= res!248246 (not (isEmpty!4093 (tail!753 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))))

(declare-fun bm!39901 () Bool)

(assert (=> bm!39901 (= call!39906 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(assert (= (and d!202753 c!108105) b!577263))

(assert (= (and d!202753 (not c!108105)) b!577264))

(assert (= (and d!202753 c!108107) b!577261))

(assert (= (and d!202753 (not c!108107)) b!577268))

(assert (= (and b!577268 c!108106) b!577273))

(assert (= (and b!577268 (not c!108106)) b!577270))

(assert (= (and b!577270 (not res!248241)) b!577267))

(assert (= (and b!577267 res!248247) b!577269))

(assert (= (and b!577269 res!248242) b!577272))

(assert (= (and b!577272 res!248240) b!577266))

(assert (= (and b!577267 (not res!248244)) b!577271))

(assert (= (and b!577271 res!248245) b!577265))

(assert (= (and b!577265 (not res!248243)) b!577274))

(assert (= (and b!577274 (not res!248246)) b!577262))

(assert (= (or b!577261 b!577265 b!577269) bm!39901))

(declare-fun m!835013 () Bool)

(assert (=> b!577262 m!835013))

(declare-fun m!835015 () Bool)

(assert (=> b!577272 m!835015))

(assert (=> b!577272 m!835015))

(declare-fun m!835017 () Bool)

(assert (=> b!577272 m!835017))

(assert (=> bm!39901 m!834223))

(assert (=> b!577264 m!835013))

(assert (=> b!577264 m!835013))

(declare-fun m!835019 () Bool)

(assert (=> b!577264 m!835019))

(assert (=> b!577264 m!835015))

(assert (=> b!577264 m!835019))

(assert (=> b!577264 m!835015))

(declare-fun m!835021 () Bool)

(assert (=> b!577264 m!835021))

(assert (=> b!577274 m!835015))

(assert (=> b!577274 m!835015))

(assert (=> b!577274 m!835017))

(assert (=> b!577263 m!833871))

(assert (=> d!202753 m!834223))

(assert (=> d!202753 m!833869))

(assert (=> b!577266 m!835013))

(assert (=> b!576693 d!202753))

(declare-fun bm!39902 () Bool)

(declare-fun call!39910 () Unit!10237)

(assert (=> bm!39902 (= call!39910 (lemmaIsPrefixSameLengthThenSameList!72 input!2705 Nil!5668 input!2705))))

(declare-fun b!577275 () Bool)

(declare-fun e!348849 () tuple2!6654)

(assert (=> b!577275 (= e!348849 (tuple2!6655 Nil!5668 input!2705))))

(declare-fun b!577276 () Bool)

(declare-fun e!348850 () tuple2!6654)

(assert (=> b!577276 (= e!348850 (tuple2!6655 Nil!5668 Nil!5668))))

(declare-fun b!577277 () Bool)

(declare-fun lt!244431 () tuple2!6654)

(assert (=> b!577277 (= e!348849 lt!244431)))

(declare-fun b!577278 () Bool)

(declare-fun c!108112 () Bool)

(declare-fun call!39911 () Bool)

(assert (=> b!577278 (= c!108112 call!39911)))

(declare-fun lt!244430 () Unit!10237)

(declare-fun lt!244413 () Unit!10237)

(assert (=> b!577278 (= lt!244430 lt!244413)))

(assert (=> b!577278 (= input!2705 Nil!5668)))

(assert (=> b!577278 (= lt!244413 call!39910)))

(declare-fun lt!244418 () Unit!10237)

(declare-fun lt!244419 () Unit!10237)

(assert (=> b!577278 (= lt!244418 lt!244419)))

(declare-fun call!39908 () Bool)

(assert (=> b!577278 call!39908))

(declare-fun call!39912 () Unit!10237)

(assert (=> b!577278 (= lt!244419 call!39912)))

(declare-fun e!348851 () tuple2!6654)

(assert (=> b!577278 (= e!348851 e!348850)))

(declare-fun call!39913 () tuple2!6654)

(declare-fun call!39909 () List!5678)

(declare-fun lt!244425 () List!5678)

(declare-fun call!39914 () Regex!1433)

(declare-fun bm!39903 () Bool)

(assert (=> bm!39903 (= call!39913 (findLongestMatchInner!170 call!39914 lt!244425 (+ (size!4513 Nil!5668) 1) call!39909 input!2705 (size!4513 input!2705)))))

(declare-fun d!202755 () Bool)

(declare-fun e!348848 () Bool)

(assert (=> d!202755 e!348848))

(declare-fun res!248248 () Bool)

(assert (=> d!202755 (=> (not res!248248) (not e!348848))))

(declare-fun lt!244433 () tuple2!6654)

(assert (=> d!202755 (= res!248248 (= (++!1587 (_1!3591 lt!244433) (_2!3591 lt!244433)) input!2705))))

(declare-fun e!348847 () tuple2!6654)

(assert (=> d!202755 (= lt!244433 e!348847)))

(declare-fun c!108110 () Bool)

(assert (=> d!202755 (= c!108110 (lostCause!187 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun lt!244436 () Unit!10237)

(declare-fun Unit!10257 () Unit!10237)

(assert (=> d!202755 (= lt!244436 Unit!10257)))

(assert (=> d!202755 (= (getSuffix!252 input!2705 Nil!5668) input!2705)))

(declare-fun lt!244422 () Unit!10237)

(declare-fun lt!244428 () Unit!10237)

(assert (=> d!202755 (= lt!244422 lt!244428)))

(declare-fun lt!244411 () List!5678)

(assert (=> d!202755 (= input!2705 lt!244411)))

(assert (=> d!202755 (= lt!244428 (lemmaSamePrefixThenSameSuffix!456 Nil!5668 input!2705 Nil!5668 lt!244411 input!2705))))

(assert (=> d!202755 (= lt!244411 (getSuffix!252 input!2705 Nil!5668))))

(declare-fun lt!244423 () Unit!10237)

(declare-fun lt!244416 () Unit!10237)

(assert (=> d!202755 (= lt!244423 lt!244416)))

(assert (=> d!202755 (isPrefix!733 Nil!5668 (++!1587 Nil!5668 input!2705))))

(assert (=> d!202755 (= lt!244416 (lemmaConcatTwoListThenFirstIsPrefix!580 Nil!5668 input!2705))))

(assert (=> d!202755 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!202755 (= (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)) lt!244433)))

(declare-fun b!577279 () Bool)

(assert (=> b!577279 (= e!348847 e!348851)))

(declare-fun c!108111 () Bool)

(assert (=> b!577279 (= c!108111 (= (size!4513 Nil!5668) (size!4513 input!2705)))))

(declare-fun bm!39904 () Bool)

(declare-fun call!39907 () C!3788)

(assert (=> bm!39904 (= call!39907 (head!1224 input!2705))))

(declare-fun b!577280 () Bool)

(assert (=> b!577280 (= e!348847 (tuple2!6655 Nil!5668 input!2705))))

(declare-fun bm!39905 () Bool)

(assert (=> bm!39905 (= call!39914 (derivativeStep!300 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) call!39907))))

(declare-fun b!577281 () Bool)

(declare-fun e!348853 () Unit!10237)

(declare-fun Unit!10258 () Unit!10237)

(assert (=> b!577281 (= e!348853 Unit!10258)))

(declare-fun lt!244426 () Unit!10237)

(assert (=> b!577281 (= lt!244426 call!39912)))

(assert (=> b!577281 call!39908))

(declare-fun lt!244437 () Unit!10237)

(assert (=> b!577281 (= lt!244437 lt!244426)))

(declare-fun lt!244429 () Unit!10237)

(assert (=> b!577281 (= lt!244429 call!39910)))

(assert (=> b!577281 (= input!2705 Nil!5668)))

(declare-fun lt!244424 () Unit!10237)

(assert (=> b!577281 (= lt!244424 lt!244429)))

(assert (=> b!577281 false))

(declare-fun bm!39906 () Bool)

(assert (=> bm!39906 (= call!39912 (lemmaIsPrefixRefl!471 input!2705 input!2705))))

(declare-fun b!577282 () Bool)

(declare-fun e!348852 () Bool)

(assert (=> b!577282 (= e!348848 e!348852)))

(declare-fun res!248249 () Bool)

(assert (=> b!577282 (=> res!248249 e!348852)))

(assert (=> b!577282 (= res!248249 (isEmpty!4093 (_1!3591 lt!244433)))))

(declare-fun b!577283 () Bool)

(declare-fun Unit!10259 () Unit!10237)

(assert (=> b!577283 (= e!348853 Unit!10259)))

(declare-fun bm!39907 () Bool)

(assert (=> bm!39907 (= call!39908 (isPrefix!733 input!2705 input!2705))))

(declare-fun b!577284 () Bool)

(assert (=> b!577284 (= e!348852 (>= (size!4513 (_1!3591 lt!244433)) (size!4513 Nil!5668)))))

(declare-fun b!577285 () Bool)

(declare-fun c!108113 () Bool)

(assert (=> b!577285 (= c!108113 call!39911)))

(declare-fun lt!244414 () Unit!10237)

(declare-fun lt!244420 () Unit!10237)

(assert (=> b!577285 (= lt!244414 lt!244420)))

(declare-fun lt!244415 () C!3788)

(declare-fun lt!244434 () List!5678)

(assert (=> b!577285 (= (++!1587 (++!1587 Nil!5668 (Cons!5668 lt!244415 Nil!5668)) lt!244434) input!2705)))

(assert (=> b!577285 (= lt!244420 (lemmaMoveElementToOtherListKeepsConcatEq!55 Nil!5668 lt!244415 lt!244434 input!2705))))

(assert (=> b!577285 (= lt!244434 (tail!753 input!2705))))

(assert (=> b!577285 (= lt!244415 (head!1224 input!2705))))

(declare-fun lt!244435 () Unit!10237)

(declare-fun lt!244410 () Unit!10237)

(assert (=> b!577285 (= lt!244435 lt!244410)))

(assert (=> b!577285 (isPrefix!733 (++!1587 Nil!5668 (Cons!5668 (head!1224 (getSuffix!252 input!2705 Nil!5668)) Nil!5668)) input!2705)))

(assert (=> b!577285 (= lt!244410 (lemmaAddHeadSuffixToPrefixStillPrefix!61 Nil!5668 input!2705))))

(declare-fun lt!244427 () Unit!10237)

(declare-fun lt!244412 () Unit!10237)

(assert (=> b!577285 (= lt!244427 lt!244412)))

(assert (=> b!577285 (= lt!244412 (lemmaAddHeadSuffixToPrefixStillPrefix!61 Nil!5668 input!2705))))

(assert (=> b!577285 (= lt!244425 (++!1587 Nil!5668 (Cons!5668 (head!1224 input!2705) Nil!5668)))))

(declare-fun lt!244417 () Unit!10237)

(assert (=> b!577285 (= lt!244417 e!348853)))

(declare-fun c!108108 () Bool)

(assert (=> b!577285 (= c!108108 (= (size!4513 Nil!5668) (size!4513 input!2705)))))

(declare-fun lt!244421 () Unit!10237)

(declare-fun lt!244432 () Unit!10237)

(assert (=> b!577285 (= lt!244421 lt!244432)))

(assert (=> b!577285 (<= (size!4513 Nil!5668) (size!4513 input!2705))))

(assert (=> b!577285 (= lt!244432 (lemmaIsPrefixThenSmallerEqSize!72 Nil!5668 input!2705))))

(declare-fun e!348846 () tuple2!6654)

(assert (=> b!577285 (= e!348851 e!348846)))

(declare-fun b!577286 () Bool)

(assert (=> b!577286 (= e!348846 e!348849)))

(assert (=> b!577286 (= lt!244431 call!39913)))

(declare-fun c!108109 () Bool)

(assert (=> b!577286 (= c!108109 (isEmpty!4093 (_1!3591 lt!244431)))))

(declare-fun bm!39908 () Bool)

(assert (=> bm!39908 (= call!39911 (nullable!386 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun bm!39909 () Bool)

(assert (=> bm!39909 (= call!39909 (tail!753 input!2705))))

(declare-fun b!577287 () Bool)

(assert (=> b!577287 (= e!348850 (tuple2!6655 Nil!5668 input!2705))))

(declare-fun b!577288 () Bool)

(assert (=> b!577288 (= e!348846 call!39913)))

(assert (= (and d!202755 c!108110) b!577280))

(assert (= (and d!202755 (not c!108110)) b!577279))

(assert (= (and b!577279 c!108111) b!577278))

(assert (= (and b!577279 (not c!108111)) b!577285))

(assert (= (and b!577278 c!108112) b!577276))

(assert (= (and b!577278 (not c!108112)) b!577287))

(assert (= (and b!577285 c!108108) b!577281))

(assert (= (and b!577285 (not c!108108)) b!577283))

(assert (= (and b!577285 c!108113) b!577286))

(assert (= (and b!577285 (not c!108113)) b!577288))

(assert (= (and b!577286 c!108109) b!577275))

(assert (= (and b!577286 (not c!108109)) b!577277))

(assert (= (or b!577286 b!577288) bm!39904))

(assert (= (or b!577286 b!577288) bm!39909))

(assert (= (or b!577286 b!577288) bm!39905))

(assert (= (or b!577286 b!577288) bm!39903))

(assert (= (or b!577278 b!577281) bm!39907))

(assert (= (or b!577278 b!577281) bm!39902))

(assert (= (or b!577278 b!577285) bm!39908))

(assert (= (or b!577278 b!577281) bm!39906))

(assert (= (and d!202755 res!248248) b!577282))

(assert (= (and b!577282 (not res!248249)) b!577284))

(declare-fun m!835025 () Bool)

(assert (=> b!577282 m!835025))

(declare-fun m!835027 () Bool)

(assert (=> d!202755 m!835027))

(declare-fun m!835029 () Bool)

(assert (=> d!202755 m!835029))

(declare-fun m!835031 () Bool)

(assert (=> d!202755 m!835031))

(declare-fun m!835033 () Bool)

(assert (=> d!202755 m!835033))

(declare-fun m!835035 () Bool)

(assert (=> d!202755 m!835035))

(declare-fun m!835037 () Bool)

(assert (=> d!202755 m!835037))

(assert (=> d!202755 m!833869))

(declare-fun m!835039 () Bool)

(assert (=> d!202755 m!835039))

(assert (=> d!202755 m!835029))

(assert (=> bm!39907 m!833829))

(declare-fun m!835041 () Bool)

(assert (=> b!577285 m!835041))

(declare-fun m!835043 () Bool)

(assert (=> b!577285 m!835043))

(assert (=> b!577285 m!833935))

(declare-fun m!835045 () Bool)

(assert (=> b!577285 m!835045))

(assert (=> b!577285 m!835039))

(declare-fun m!835047 () Bool)

(assert (=> b!577285 m!835047))

(assert (=> b!577285 m!833861))

(declare-fun m!835049 () Bool)

(assert (=> b!577285 m!835049))

(declare-fun m!835051 () Bool)

(assert (=> b!577285 m!835051))

(assert (=> b!577285 m!835039))

(declare-fun m!835053 () Bool)

(assert (=> b!577285 m!835053))

(assert (=> b!577285 m!834179))

(assert (=> b!577285 m!835053))

(declare-fun m!835055 () Bool)

(assert (=> b!577285 m!835055))

(assert (=> b!577285 m!833863))

(assert (=> b!577285 m!835049))

(declare-fun m!835057 () Bool)

(assert (=> b!577285 m!835057))

(assert (=> bm!39909 m!833863))

(declare-fun m!835059 () Bool)

(assert (=> b!577286 m!835059))

(assert (=> bm!39908 m!833871))

(assert (=> bm!39906 m!833793))

(declare-fun m!835061 () Bool)

(assert (=> bm!39905 m!835061))

(declare-fun m!835063 () Bool)

(assert (=> bm!39902 m!835063))

(declare-fun m!835065 () Bool)

(assert (=> b!577284 m!835065))

(assert (=> b!577284 m!834179))

(assert (=> bm!39904 m!833935))

(assert (=> bm!39903 m!833861))

(declare-fun m!835067 () Bool)

(assert (=> bm!39903 m!835067))

(assert (=> b!576693 d!202755))

(assert (=> b!576693 d!202725))

(declare-fun d!202759 () Bool)

(declare-fun lt!244438 () Int)

(assert (=> d!202759 (>= lt!244438 0)))

(declare-fun e!348858 () Int)

(assert (=> d!202759 (= lt!244438 e!348858)))

(declare-fun c!108116 () Bool)

(assert (=> d!202759 (= c!108116 ((_ is Nil!5668) input!2705))))

(assert (=> d!202759 (= (size!4513 input!2705) lt!244438)))

(declare-fun b!577295 () Bool)

(assert (=> b!577295 (= e!348858 0)))

(declare-fun b!577296 () Bool)

(assert (=> b!577296 (= e!348858 (+ 1 (size!4513 (t!77391 input!2705))))))

(assert (= (and d!202759 c!108116) b!577295))

(assert (= (and d!202759 (not c!108116)) b!577296))

(declare-fun m!835069 () Bool)

(assert (=> b!577296 m!835069))

(assert (=> b!576693 d!202759))

(declare-fun d!202761 () Bool)

(assert (=> d!202761 (= (isEmpty!4096 lt!244102) (not ((_ is Some!1449) lt!244102)))))

(assert (=> d!202493 d!202761))

(declare-fun d!202765 () Bool)

(assert (=> d!202765 (= (isEmpty!4093 (_1!3591 lt!244103)) ((_ is Nil!5668) (_1!3591 lt!244103)))))

(assert (=> d!202493 d!202765))

(declare-fun d!202767 () Bool)

(declare-fun lt!244459 () tuple2!6654)

(assert (=> d!202767 (= (++!1587 (_1!3591 lt!244459) (_2!3591 lt!244459)) input!2705)))

(declare-fun sizeTr!32 (List!5678 Int) Int)

(assert (=> d!202767 (= lt!244459 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 0 input!2705 input!2705 (sizeTr!32 input!2705 0)))))

(declare-fun lt!244456 () Unit!10237)

(declare-fun lt!244461 () Unit!10237)

(assert (=> d!202767 (= lt!244456 lt!244461)))

(declare-fun lt!244457 () List!5678)

(declare-fun lt!244458 () Int)

(assert (=> d!202767 (= (sizeTr!32 lt!244457 lt!244458) (+ (size!4513 lt!244457) lt!244458))))

(declare-fun lemmaSizeTrEqualsSize!32 (List!5678 Int) Unit!10237)

(assert (=> d!202767 (= lt!244461 (lemmaSizeTrEqualsSize!32 lt!244457 lt!244458))))

(assert (=> d!202767 (= lt!244458 0)))

(assert (=> d!202767 (= lt!244457 Nil!5668)))

(declare-fun lt!244460 () Unit!10237)

(declare-fun lt!244463 () Unit!10237)

(assert (=> d!202767 (= lt!244460 lt!244463)))

(declare-fun lt!244462 () Int)

(assert (=> d!202767 (= (sizeTr!32 input!2705 lt!244462) (+ (size!4513 input!2705) lt!244462))))

(assert (=> d!202767 (= lt!244463 (lemmaSizeTrEqualsSize!32 input!2705 lt!244462))))

(assert (=> d!202767 (= lt!244462 0)))

(assert (=> d!202767 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!202767 (= (findLongestMatch!149 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) input!2705) lt!244459)))

(declare-fun bs!69437 () Bool)

(assert (= bs!69437 d!202767))

(declare-fun m!835099 () Bool)

(assert (=> bs!69437 m!835099))

(declare-fun m!835101 () Bool)

(assert (=> bs!69437 m!835101))

(assert (=> bs!69437 m!833869))

(declare-fun m!835103 () Bool)

(assert (=> bs!69437 m!835103))

(declare-fun m!835105 () Bool)

(assert (=> bs!69437 m!835105))

(declare-fun m!835107 () Bool)

(assert (=> bs!69437 m!835107))

(assert (=> bs!69437 m!835105))

(declare-fun m!835109 () Bool)

(assert (=> bs!69437 m!835109))

(declare-fun m!835111 () Bool)

(assert (=> bs!69437 m!835111))

(declare-fun m!835113 () Bool)

(assert (=> bs!69437 m!835113))

(assert (=> bs!69437 m!833861))

(assert (=> d!202493 d!202767))

(assert (=> d!202493 d!202359))

(declare-fun bs!69438 () Bool)

(declare-fun d!202777 () Bool)

(assert (= bs!69438 (and d!202777 d!202469)))

(declare-fun lambda!15728 () Int)

(assert (=> bs!69438 (= (and (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (= lambda!15728 lambda!15709))))

(declare-fun bs!69439 () Bool)

(assert (= bs!69439 (and d!202777 d!202475)))

(assert (=> bs!69439 (= (and (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (= lambda!15728 lambda!15710))))

(declare-fun bs!69440 () Bool)

(assert (= bs!69440 (and d!202777 d!202697)))

(assert (=> bs!69440 (= (and (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (= lambda!15728 lambda!15724))))

(assert (=> d!202777 true))

(assert (=> d!202777 (< (dynLambda!3292 order!4623 (toChars!1817 (transformation!1099 (h!11071 rules!3103)))) (dynLambda!3291 order!4621 lambda!15728))))

(assert (=> d!202777 true))

(assert (=> d!202777 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (h!11071 rules!3103)))) (dynLambda!3291 order!4621 lambda!15728))))

(declare-fun Forall!283 (Int) Bool)

(assert (=> d!202777 (= (semiInverseModEq!425 (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (h!11071 rules!3103)))) (Forall!283 lambda!15728))))

(declare-fun bs!69441 () Bool)

(assert (= bs!69441 d!202777))

(declare-fun m!835115 () Bool)

(assert (=> bs!69441 m!835115))

(assert (=> d!202587 d!202777))

(declare-fun d!202779 () Bool)

(assert (=> d!202779 (= suffix!1342 lt!243931)))

(assert (=> d!202779 true))

(declare-fun _$63!696 () Unit!10237)

(assert (=> d!202779 (= (choose!4134 lt!243945 suffix!1342 lt!243945 lt!243931 lt!243952) _$63!696)))

(assert (=> d!202495 d!202779))

(declare-fun b!577337 () Bool)

(declare-fun e!348889 () Bool)

(declare-fun e!348888 () Bool)

(assert (=> b!577337 (= e!348889 e!348888)))

(declare-fun res!248270 () Bool)

(assert (=> b!577337 (=> (not res!248270) (not e!348888))))

(assert (=> b!577337 (= res!248270 (not ((_ is Nil!5668) lt!243952)))))

(declare-fun b!577338 () Bool)

(declare-fun res!248273 () Bool)

(assert (=> b!577338 (=> (not res!248273) (not e!348888))))

(assert (=> b!577338 (= res!248273 (= (head!1224 lt!243945) (head!1224 lt!243952)))))

(declare-fun b!577340 () Bool)

(declare-fun e!348887 () Bool)

(assert (=> b!577340 (= e!348887 (>= (size!4513 lt!243952) (size!4513 lt!243945)))))

(declare-fun d!202781 () Bool)

(assert (=> d!202781 e!348887))

(declare-fun res!248272 () Bool)

(assert (=> d!202781 (=> res!248272 e!348887)))

(declare-fun lt!244464 () Bool)

(assert (=> d!202781 (= res!248272 (not lt!244464))))

(assert (=> d!202781 (= lt!244464 e!348889)))

(declare-fun res!248271 () Bool)

(assert (=> d!202781 (=> res!248271 e!348889)))

(assert (=> d!202781 (= res!248271 ((_ is Nil!5668) lt!243945))))

(assert (=> d!202781 (= (isPrefix!733 lt!243945 lt!243952) lt!244464)))

(declare-fun b!577339 () Bool)

(assert (=> b!577339 (= e!348888 (isPrefix!733 (tail!753 lt!243945) (tail!753 lt!243952)))))

(assert (= (and d!202781 (not res!248271)) b!577337))

(assert (= (and b!577337 res!248270) b!577338))

(assert (= (and b!577338 res!248273) b!577339))

(assert (= (and d!202781 (not res!248272)) b!577340))

(assert (=> b!577338 m!833883))

(assert (=> b!577338 m!833937))

(assert (=> b!577340 m!833939))

(assert (=> b!577340 m!833821))

(assert (=> b!577339 m!833889))

(assert (=> b!577339 m!833943))

(assert (=> b!577339 m!833889))

(assert (=> b!577339 m!833943))

(declare-fun m!835117 () Bool)

(assert (=> b!577339 m!835117))

(assert (=> d!202495 d!202781))

(declare-fun b!577341 () Bool)

(declare-fun e!348891 () Bool)

(declare-fun lt!244465 () Bool)

(declare-fun call!39924 () Bool)

(assert (=> b!577341 (= e!348891 (= lt!244465 call!39924))))

(declare-fun b!577342 () Bool)

(declare-fun e!348896 () Bool)

(assert (=> b!577342 (= e!348896 (not (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))))

(declare-fun b!577343 () Bool)

(declare-fun e!348893 () Bool)

(assert (=> b!577343 (= e!348893 (nullable!386 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun d!202783 () Bool)

(assert (=> d!202783 e!348891))

(declare-fun c!108128 () Bool)

(assert (=> d!202783 (= c!108128 ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (=> d!202783 (= lt!244465 e!348893)))

(declare-fun c!108126 () Bool)

(assert (=> d!202783 (= c!108126 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))))))

(assert (=> d!202783 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!202783 (= (matchR!580 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))) lt!244465)))

(declare-fun b!577344 () Bool)

(assert (=> b!577344 (= e!348893 (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102)))))) (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102)))))))))

(declare-fun b!577345 () Bool)

(declare-fun e!348890 () Bool)

(assert (=> b!577345 (= e!348890 e!348896)))

(declare-fun res!248277 () Bool)

(assert (=> b!577345 (=> res!248277 e!348896)))

(assert (=> b!577345 (= res!248277 call!39924)))

(declare-fun b!577346 () Bool)

(declare-fun e!348894 () Bool)

(assert (=> b!577346 (= e!348894 (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun b!577347 () Bool)

(declare-fun res!248278 () Bool)

(declare-fun e!348892 () Bool)

(assert (=> b!577347 (=> res!248278 e!348892)))

(assert (=> b!577347 (= res!248278 e!348894)))

(declare-fun res!248281 () Bool)

(assert (=> b!577347 (=> (not res!248281) (not e!348894))))

(assert (=> b!577347 (= res!248281 lt!244465)))

(declare-fun b!577348 () Bool)

(declare-fun e!348895 () Bool)

(assert (=> b!577348 (= e!348891 e!348895)))

(declare-fun c!108127 () Bool)

(assert (=> b!577348 (= c!108127 ((_ is EmptyLang!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun b!577349 () Bool)

(declare-fun res!248276 () Bool)

(assert (=> b!577349 (=> (not res!248276) (not e!348894))))

(assert (=> b!577349 (= res!248276 (not call!39924))))

(declare-fun b!577350 () Bool)

(declare-fun res!248275 () Bool)

(assert (=> b!577350 (=> res!248275 e!348892)))

(assert (=> b!577350 (= res!248275 (not ((_ is ElementMatch!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(assert (=> b!577350 (= e!348895 e!348892)))

(declare-fun b!577351 () Bool)

(assert (=> b!577351 (= e!348892 e!348890)))

(declare-fun res!248279 () Bool)

(assert (=> b!577351 (=> (not res!248279) (not e!348890))))

(assert (=> b!577351 (= res!248279 (not lt!244465))))

(declare-fun b!577352 () Bool)

(declare-fun res!248274 () Bool)

(assert (=> b!577352 (=> (not res!248274) (not e!348894))))

(assert (=> b!577352 (= res!248274 (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102)))))))))

(declare-fun b!577353 () Bool)

(assert (=> b!577353 (= e!348895 (not lt!244465))))

(declare-fun b!577354 () Bool)

(declare-fun res!248280 () Bool)

(assert (=> b!577354 (=> res!248280 e!348896)))

(assert (=> b!577354 (= res!248280 (not (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))))))))

(declare-fun bm!39919 () Bool)

(assert (=> bm!39919 (= call!39924 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))))))

(assert (= (and d!202783 c!108126) b!577343))

(assert (= (and d!202783 (not c!108126)) b!577344))

(assert (= (and d!202783 c!108128) b!577341))

(assert (= (and d!202783 (not c!108128)) b!577348))

(assert (= (and b!577348 c!108127) b!577353))

(assert (= (and b!577348 (not c!108127)) b!577350))

(assert (= (and b!577350 (not res!248275)) b!577347))

(assert (= (and b!577347 res!248281) b!577349))

(assert (= (and b!577349 res!248276) b!577352))

(assert (= (and b!577352 res!248274) b!577346))

(assert (= (and b!577347 (not res!248278)) b!577351))

(assert (= (and b!577351 res!248279) b!577345))

(assert (= (and b!577345 (not res!248277)) b!577354))

(assert (= (and b!577354 (not res!248280)) b!577342))

(assert (= (or b!577341 b!577345 b!577349) bm!39919))

(assert (=> b!577342 m!834235))

(declare-fun m!835119 () Bool)

(assert (=> b!577342 m!835119))

(assert (=> b!577352 m!834235))

(declare-fun m!835121 () Bool)

(assert (=> b!577352 m!835121))

(assert (=> b!577352 m!835121))

(declare-fun m!835123 () Bool)

(assert (=> b!577352 m!835123))

(assert (=> bm!39919 m!834235))

(declare-fun m!835125 () Bool)

(assert (=> bm!39919 m!835125))

(assert (=> b!577344 m!834235))

(assert (=> b!577344 m!835119))

(assert (=> b!577344 m!835119))

(declare-fun m!835127 () Bool)

(assert (=> b!577344 m!835127))

(assert (=> b!577344 m!834235))

(assert (=> b!577344 m!835121))

(assert (=> b!577344 m!835127))

(assert (=> b!577344 m!835121))

(declare-fun m!835129 () Bool)

(assert (=> b!577344 m!835129))

(assert (=> b!577354 m!834235))

(assert (=> b!577354 m!835121))

(assert (=> b!577354 m!835121))

(assert (=> b!577354 m!835123))

(assert (=> b!577343 m!833871))

(assert (=> d!202783 m!834235))

(assert (=> d!202783 m!835125))

(assert (=> d!202783 m!833869))

(assert (=> b!577346 m!834235))

(assert (=> b!577346 m!835119))

(assert (=> b!576698 d!202783))

(declare-fun d!202785 () Bool)

(assert (=> d!202785 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102)))) (list!2356 (c!107922 (charsOf!728 (_1!3590 (get!2163 lt!244102))))))))

(declare-fun bs!69442 () Bool)

(assert (= bs!69442 d!202785))

(declare-fun m!835131 () Bool)

(assert (=> bs!69442 m!835131))

(assert (=> b!576698 d!202785))

(declare-fun d!202787 () Bool)

(declare-fun lt!244466 () BalanceConc!3640)

(assert (=> d!202787 (= (list!2355 lt!244466) (originalCharacters!1138 (_1!3590 (get!2163 lt!244102))))))

(assert (=> d!202787 (= lt!244466 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102))))) (value!36188 (_1!3590 (get!2163 lt!244102)))))))

(assert (=> d!202787 (= (charsOf!728 (_1!3590 (get!2163 lt!244102))) lt!244466)))

(declare-fun b_lambda!22567 () Bool)

(assert (=> (not b_lambda!22567) (not d!202787)))

(declare-fun tb!50393 () Bool)

(declare-fun t!77524 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77524) tb!50393))

(declare-fun b!577359 () Bool)

(declare-fun e!348900 () Bool)

(declare-fun tp!180801 () Bool)

(assert (=> b!577359 (= e!348900 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102))))) (value!36188 (_1!3590 (get!2163 lt!244102)))))) tp!180801))))

(declare-fun result!56420 () Bool)

(assert (=> tb!50393 (= result!56420 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102))))) (value!36188 (_1!3590 (get!2163 lt!244102))))) e!348900))))

(assert (= tb!50393 b!577359))

(declare-fun m!835133 () Bool)

(assert (=> b!577359 m!835133))

(declare-fun m!835135 () Bool)

(assert (=> tb!50393 m!835135))

(assert (=> d!202787 t!77524))

(declare-fun b_and!56573 () Bool)

(assert (= b_and!56525 (and (=> t!77524 result!56420) b_and!56573)))

(declare-fun tb!50395 () Bool)

(declare-fun t!77526 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77526) tb!50395))

(declare-fun result!56422 () Bool)

(assert (= result!56422 result!56420))

(assert (=> d!202787 t!77526))

(declare-fun b_and!56575 () Bool)

(assert (= b_and!56527 (and (=> t!77526 result!56422) b_and!56575)))

(declare-fun tb!50397 () Bool)

(declare-fun t!77528 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77528) tb!50397))

(declare-fun result!56424 () Bool)

(assert (= result!56424 result!56420))

(assert (=> d!202787 t!77528))

(declare-fun b_and!56577 () Bool)

(assert (= b_and!56529 (and (=> t!77528 result!56424) b_and!56577)))

(declare-fun m!835143 () Bool)

(assert (=> d!202787 m!835143))

(declare-fun m!835147 () Bool)

(assert (=> d!202787 m!835147))

(assert (=> b!576698 d!202787))

(declare-fun d!202793 () Bool)

(assert (=> d!202793 (= (get!2163 lt!244102) (v!16310 lt!244102))))

(assert (=> b!576698 d!202793))

(assert (=> b!576479 d!202667))

(declare-fun d!202795 () Bool)

(assert (=> d!202795 (= (head!1224 lt!243952) (h!11069 lt!243952))))

(assert (=> b!576479 d!202795))

(declare-fun d!202797 () Bool)

(assert (=> d!202797 (= (isEmpty!4093 (tail!753 input!2705)) ((_ is Nil!5668) (tail!753 input!2705)))))

(assert (=> b!576816 d!202797))

(assert (=> b!576816 d!202669))

(declare-fun b!577360 () Bool)

(declare-fun e!348902 () Bool)

(declare-fun lt!244468 () Bool)

(declare-fun call!39925 () Bool)

(assert (=> b!577360 (= e!348902 (= lt!244468 call!39925))))

(declare-fun b!577361 () Bool)

(declare-fun e!348907 () Bool)

(assert (=> b!577361 (= e!348907 (not (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))))))))

(declare-fun b!577362 () Bool)

(declare-fun e!348904 () Bool)

(assert (=> b!577362 (= e!348904 (nullable!386 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))))))

(declare-fun d!202799 () Bool)

(assert (=> d!202799 e!348902))

(declare-fun c!108131 () Bool)

(assert (=> d!202799 (= c!108131 ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))))))

(assert (=> d!202799 (= lt!244468 e!348904)))

(declare-fun c!108129 () Bool)

(assert (=> d!202799 (= c!108129 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))))))

(assert (=> d!202799 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))))

(assert (=> d!202799 (= (matchR!580 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))) lt!244468)))

(declare-fun b!577363 () Bool)

(assert (=> b!577363 (= e!348904 (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))) (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))))) (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))))))))

(declare-fun b!577364 () Bool)

(declare-fun e!348901 () Bool)

(assert (=> b!577364 (= e!348901 e!348907)))

(declare-fun res!248289 () Bool)

(assert (=> b!577364 (=> res!248289 e!348907)))

(assert (=> b!577364 (= res!248289 call!39925)))

(declare-fun b!577365 () Bool)

(declare-fun e!348905 () Bool)

(assert (=> b!577365 (= e!348905 (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))))))

(declare-fun b!577366 () Bool)

(declare-fun res!248290 () Bool)

(declare-fun e!348903 () Bool)

(assert (=> b!577366 (=> res!248290 e!348903)))

(assert (=> b!577366 (= res!248290 e!348905)))

(declare-fun res!248293 () Bool)

(assert (=> b!577366 (=> (not res!248293) (not e!348905))))

(assert (=> b!577366 (= res!248293 lt!244468)))

(declare-fun b!577367 () Bool)

(declare-fun e!348906 () Bool)

(assert (=> b!577367 (= e!348902 e!348906)))

(declare-fun c!108130 () Bool)

(assert (=> b!577367 (= c!108130 ((_ is EmptyLang!1433) (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))))))

(declare-fun b!577368 () Bool)

(declare-fun res!248288 () Bool)

(assert (=> b!577368 (=> (not res!248288) (not e!348905))))

(assert (=> b!577368 (= res!248288 (not call!39925))))

(declare-fun b!577369 () Bool)

(declare-fun res!248287 () Bool)

(assert (=> b!577369 (=> res!248287 e!348903)))

(assert (=> b!577369 (= res!248287 (not ((_ is ElementMatch!1433) (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))))))

(assert (=> b!577369 (= e!348906 e!348903)))

(declare-fun b!577370 () Bool)

(assert (=> b!577370 (= e!348903 e!348901)))

(declare-fun res!248291 () Bool)

(assert (=> b!577370 (=> (not res!248291) (not e!348901))))

(assert (=> b!577370 (= res!248291 (not lt!244468))))

(declare-fun b!577371 () Bool)

(declare-fun res!248286 () Bool)

(assert (=> b!577371 (=> (not res!248286) (not e!348905))))

(assert (=> b!577371 (= res!248286 (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))))))))

(declare-fun b!577372 () Bool)

(assert (=> b!577372 (= e!348906 (not lt!244468))))

(declare-fun b!577373 () Bool)

(declare-fun res!248292 () Bool)

(assert (=> b!577373 (=> res!248292 e!348907)))

(assert (=> b!577373 (= res!248292 (not (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))))))))

(declare-fun bm!39920 () Bool)

(assert (=> bm!39920 (= call!39925 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))))))

(assert (= (and d!202799 c!108129) b!577362))

(assert (= (and d!202799 (not c!108129)) b!577363))

(assert (= (and d!202799 c!108131) b!577360))

(assert (= (and d!202799 (not c!108131)) b!577367))

(assert (= (and b!577367 c!108130) b!577372))

(assert (= (and b!577367 (not c!108130)) b!577369))

(assert (= (and b!577369 (not res!248287)) b!577366))

(assert (= (and b!577366 res!248293) b!577368))

(assert (= (and b!577368 res!248288) b!577371))

(assert (= (and b!577371 res!248286) b!577365))

(assert (= (and b!577366 (not res!248290)) b!577370))

(assert (= (and b!577370 res!248291) b!577364))

(assert (= (and b!577364 (not res!248289)) b!577373))

(assert (= (and b!577373 (not res!248292)) b!577361))

(assert (= (or b!577360 b!577364 b!577368) bm!39920))

(assert (=> b!577361 m!834389))

(declare-fun m!835149 () Bool)

(assert (=> b!577361 m!835149))

(assert (=> b!577371 m!834389))

(declare-fun m!835151 () Bool)

(assert (=> b!577371 m!835151))

(assert (=> b!577371 m!835151))

(declare-fun m!835153 () Bool)

(assert (=> b!577371 m!835153))

(assert (=> bm!39920 m!834389))

(declare-fun m!835155 () Bool)

(assert (=> bm!39920 m!835155))

(assert (=> b!577363 m!834389))

(assert (=> b!577363 m!835149))

(assert (=> b!577363 m!835149))

(declare-fun m!835157 () Bool)

(assert (=> b!577363 m!835157))

(assert (=> b!577363 m!834389))

(assert (=> b!577363 m!835151))

(assert (=> b!577363 m!835157))

(assert (=> b!577363 m!835151))

(declare-fun m!835159 () Bool)

(assert (=> b!577363 m!835159))

(assert (=> b!577373 m!834389))

(assert (=> b!577373 m!835151))

(assert (=> b!577373 m!835151))

(assert (=> b!577373 m!835153))

(declare-fun m!835161 () Bool)

(assert (=> b!577362 m!835161))

(assert (=> d!202799 m!834389))

(assert (=> d!202799 m!835155))

(declare-fun m!835163 () Bool)

(assert (=> d!202799 m!835163))

(assert (=> b!577365 m!834389))

(assert (=> b!577365 m!835149))

(assert (=> b!576772 d!202799))

(declare-fun d!202803 () Bool)

(assert (=> d!202803 (= (get!2163 lt!244139) (v!16310 lt!244139))))

(assert (=> b!576772 d!202803))

(declare-fun d!202805 () Bool)

(assert (=> d!202805 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))) (list!2356 (c!107922 (charsOf!728 (_1!3590 (get!2163 lt!244139))))))))

(declare-fun bs!69445 () Bool)

(assert (= bs!69445 d!202805))

(declare-fun m!835165 () Bool)

(assert (=> bs!69445 m!835165))

(assert (=> b!576772 d!202805))

(declare-fun d!202807 () Bool)

(declare-fun lt!244469 () BalanceConc!3640)

(assert (=> d!202807 (= (list!2355 lt!244469) (originalCharacters!1138 (_1!3590 (get!2163 lt!244139))))))

(assert (=> d!202807 (= lt!244469 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))) (value!36188 (_1!3590 (get!2163 lt!244139)))))))

(assert (=> d!202807 (= (charsOf!728 (_1!3590 (get!2163 lt!244139))) lt!244469)))

(declare-fun b_lambda!22569 () Bool)

(assert (=> (not b_lambda!22569) (not d!202807)))

(declare-fun t!77530 () Bool)

(declare-fun tb!50399 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77530) tb!50399))

(declare-fun b!577378 () Bool)

(declare-fun e!348910 () Bool)

(declare-fun tp!180802 () Bool)

(assert (=> b!577378 (= e!348910 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))) (value!36188 (_1!3590 (get!2163 lt!244139)))))) tp!180802))))

(declare-fun result!56426 () Bool)

(assert (=> tb!50399 (= result!56426 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))) (value!36188 (_1!3590 (get!2163 lt!244139))))) e!348910))))

(assert (= tb!50399 b!577378))

(declare-fun m!835167 () Bool)

(assert (=> b!577378 m!835167))

(declare-fun m!835169 () Bool)

(assert (=> tb!50399 m!835169))

(assert (=> d!202807 t!77530))

(declare-fun b_and!56579 () Bool)

(assert (= b_and!56573 (and (=> t!77530 result!56426) b_and!56579)))

(declare-fun tb!50401 () Bool)

(declare-fun t!77532 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77532) tb!50401))

(declare-fun result!56428 () Bool)

(assert (= result!56428 result!56426))

(assert (=> d!202807 t!77532))

(declare-fun b_and!56581 () Bool)

(assert (= b_and!56575 (and (=> t!77532 result!56428) b_and!56581)))

(declare-fun tb!50403 () Bool)

(declare-fun t!77534 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77534) tb!50403))

(declare-fun result!56430 () Bool)

(assert (= result!56430 result!56426))

(assert (=> d!202807 t!77534))

(declare-fun b_and!56583 () Bool)

(assert (= b_and!56577 (and (=> t!77534 result!56430) b_and!56583)))

(declare-fun m!835171 () Bool)

(assert (=> d!202807 m!835171))

(declare-fun m!835173 () Bool)

(assert (=> d!202807 m!835173))

(assert (=> b!576772 d!202807))

(declare-fun d!202809 () Bool)

(declare-fun lt!244470 () Int)

(assert (=> d!202809 (>= lt!244470 0)))

(declare-fun e!348912 () Int)

(assert (=> d!202809 (= lt!244470 e!348912)))

(declare-fun c!108135 () Bool)

(assert (=> d!202809 (= c!108135 ((_ is Nil!5668) (t!77391 (originalCharacters!1138 token!491))))))

(assert (=> d!202809 (= (size!4513 (t!77391 (originalCharacters!1138 token!491))) lt!244470)))

(declare-fun b!577381 () Bool)

(assert (=> b!577381 (= e!348912 0)))

(declare-fun b!577382 () Bool)

(assert (=> b!577382 (= e!348912 (+ 1 (size!4513 (t!77391 (t!77391 (originalCharacters!1138 token!491))))))))

(assert (= (and d!202809 c!108135) b!577381))

(assert (= (and d!202809 (not c!108135)) b!577382))

(declare-fun m!835181 () Bool)

(assert (=> b!577382 m!835181))

(assert (=> b!576709 d!202809))

(declare-fun d!202813 () Bool)

(assert (=> d!202813 (= (apply!1364 (transformation!1099 (rule!1849 token!491)) (seqFromList!1287 lt!243945)) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) (seqFromList!1287 lt!243945)))))

(declare-fun b_lambda!22571 () Bool)

(assert (=> (not b_lambda!22571) (not d!202813)))

(declare-fun t!77536 () Bool)

(declare-fun tb!50405 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77536) tb!50405))

(declare-fun result!56432 () Bool)

(assert (=> tb!50405 (= result!56432 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) (seqFromList!1287 lt!243945))))))

(declare-fun m!835189 () Bool)

(assert (=> tb!50405 m!835189))

(assert (=> d!202813 t!77536))

(declare-fun b_and!56585 () Bool)

(assert (= b_and!56531 (and (=> t!77536 result!56432) b_and!56585)))

(declare-fun t!77538 () Bool)

(declare-fun tb!50407 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77538) tb!50407))

(declare-fun result!56434 () Bool)

(assert (= result!56434 result!56432))

(assert (=> d!202813 t!77538))

(declare-fun b_and!56587 () Bool)

(assert (= b_and!56533 (and (=> t!77538 result!56434) b_and!56587)))

(declare-fun t!77540 () Bool)

(declare-fun tb!50409 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77540) tb!50409))

(declare-fun result!56436 () Bool)

(assert (= result!56436 result!56432))

(assert (=> d!202813 t!77540))

(declare-fun b_and!56589 () Bool)

(assert (= b_and!56535 (and (=> t!77540 result!56436) b_and!56589)))

(assert (=> d!202813 m!833763))

(declare-fun m!835191 () Bool)

(assert (=> d!202813 m!835191))

(assert (=> d!202479 d!202813))

(assert (=> d!202479 d!202363))

(assert (=> d!202479 d!202481))

(declare-fun d!202821 () Bool)

(assert (=> d!202821 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 token!491) lt!243952) (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (rule!1849 token!491)) (seqFromList!1287 lt!243945)) (rule!1849 token!491) (size!4513 lt!243945) lt!243945) suffix!1342)))))

(assert (=> d!202821 true))

(declare-fun _$59!249 () Unit!10237)

(assert (=> d!202821 (= (choose!4135 thiss!22590 rules!3103 lt!243945 lt!243952 suffix!1342 (rule!1849 token!491)) _$59!249)))

(declare-fun bs!69451 () Bool)

(assert (= bs!69451 d!202821))

(assert (=> bs!69451 m!833773))

(assert (=> bs!69451 m!833763))

(assert (=> bs!69451 m!833763))

(assert (=> bs!69451 m!834143))

(assert (=> bs!69451 m!833821))

(assert (=> d!202479 d!202821))

(assert (=> d!202479 d!202499))

(assert (=> d!202479 d!202595))

(declare-fun bs!69453 () Bool)

(declare-fun d!202841 () Bool)

(assert (= bs!69453 (and d!202841 d!202469)))

(declare-fun lambda!15730 () Int)

(assert (=> bs!69453 (= lambda!15730 lambda!15709)))

(declare-fun bs!69454 () Bool)

(assert (= bs!69454 (and d!202841 d!202475)))

(assert (=> bs!69454 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (= lambda!15730 lambda!15710))))

(declare-fun bs!69455 () Bool)

(assert (= bs!69455 (and d!202841 d!202697)))

(assert (=> bs!69455 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (= lambda!15730 lambda!15724))))

(declare-fun bs!69456 () Bool)

(assert (= bs!69456 (and d!202841 d!202777)))

(assert (=> bs!69456 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toChars!1817 (transformation!1099 (h!11071 rules!3103)))) (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (h!11071 rules!3103))))) (= lambda!15730 lambda!15728))))

(assert (=> d!202841 true))

(assert (=> d!202841 (< (dynLambda!3292 order!4623 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (dynLambda!3291 order!4621 lambda!15730))))

(assert (=> d!202841 true))

(assert (=> d!202841 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (dynLambda!3291 order!4621 lambda!15730))))

(assert (=> d!202841 (= (semiInverseModEq!425 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (Forall!283 lambda!15730))))

(declare-fun bs!69457 () Bool)

(assert (= bs!69457 d!202841))

(declare-fun m!835237 () Bool)

(assert (=> bs!69457 m!835237))

(assert (=> d!202377 d!202841))

(assert (=> d!202449 d!202453))

(declare-fun d!202851 () Bool)

(assert (=> d!202851 (ruleValid!309 thiss!22590 (rule!1849 token!491))))

(assert (=> d!202851 true))

(declare-fun _$65!828 () Unit!10237)

(assert (=> d!202851 (= (choose!4131 thiss!22590 (rule!1849 token!491) rules!3103) _$65!828)))

(declare-fun bs!69458 () Bool)

(assert (= bs!69458 d!202851))

(assert (=> bs!69458 m!833811))

(assert (=> d!202449 d!202851))

(assert (=> d!202449 d!202601))

(declare-fun d!202855 () Bool)

(declare-fun lt!244504 () Bool)

(assert (=> d!202855 (= lt!244504 (select (content!1003 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244157)))))))

(declare-fun e!348949 () Bool)

(assert (=> d!202855 (= lt!244504 e!348949)))

(declare-fun res!248320 () Bool)

(assert (=> d!202855 (=> (not res!248320) (not e!348949))))

(assert (=> d!202855 (= res!248320 ((_ is Cons!5670) rules!3103))))

(assert (=> d!202855 (= (contains!1329 rules!3103 (rule!1849 (_1!3590 (get!2163 lt!244157)))) lt!244504)))

(declare-fun b!577433 () Bool)

(declare-fun e!348948 () Bool)

(assert (=> b!577433 (= e!348949 e!348948)))

(declare-fun res!248321 () Bool)

(assert (=> b!577433 (=> res!248321 e!348948)))

(assert (=> b!577433 (= res!248321 (= (h!11071 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244157)))))))

(declare-fun b!577434 () Bool)

(assert (=> b!577434 (= e!348948 (contains!1329 (t!77393 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244157)))))))

(assert (= (and d!202855 res!248320) b!577433))

(assert (= (and b!577433 (not res!248321)) b!577434))

(assert (=> d!202855 m!834587))

(declare-fun m!835241 () Bool)

(assert (=> d!202855 m!835241))

(declare-fun m!835243 () Bool)

(assert (=> b!577434 m!835243))

(assert (=> b!576858 d!202855))

(assert (=> b!576858 d!202659))

(declare-fun d!202857 () Bool)

(declare-fun nullableFct!133 (Regex!1433) Bool)

(assert (=> d!202857 (= (nullable!386 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (nullableFct!133 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun bs!69459 () Bool)

(assert (= bs!69459 d!202857))

(declare-fun m!835245 () Bool)

(assert (=> bs!69459 m!835245))

(assert (=> b!576427 d!202857))

(declare-fun b!577435 () Bool)

(declare-fun e!348950 () List!5678)

(assert (=> b!577435 (= e!348950 (_2!3590 (get!2163 lt!244139)))))

(declare-fun b!577438 () Bool)

(declare-fun e!348951 () Bool)

(declare-fun lt!244505 () List!5678)

(assert (=> b!577438 (= e!348951 (or (not (= (_2!3590 (get!2163 lt!244139)) Nil!5668)) (= lt!244505 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))))))))

(declare-fun d!202859 () Bool)

(assert (=> d!202859 e!348951))

(declare-fun res!248322 () Bool)

(assert (=> d!202859 (=> (not res!248322) (not e!348951))))

(assert (=> d!202859 (= res!248322 (= (content!1001 lt!244505) ((_ map or) (content!1001 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))) (content!1001 (_2!3590 (get!2163 lt!244139))))))))

(assert (=> d!202859 (= lt!244505 e!348950)))

(declare-fun c!108148 () Bool)

(assert (=> d!202859 (= c!108148 ((_ is Nil!5668) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))))))

(assert (=> d!202859 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139)))) (_2!3590 (get!2163 lt!244139))) lt!244505)))

(declare-fun b!577437 () Bool)

(declare-fun res!248323 () Bool)

(assert (=> b!577437 (=> (not res!248323) (not e!348951))))

(assert (=> b!577437 (= res!248323 (= (size!4513 lt!244505) (+ (size!4513 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))) (size!4513 (_2!3590 (get!2163 lt!244139))))))))

(declare-fun b!577436 () Bool)

(assert (=> b!577436 (= e!348950 (Cons!5668 (h!11069 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))) (++!1587 (t!77391 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244139))))) (_2!3590 (get!2163 lt!244139)))))))

(assert (= (and d!202859 c!108148) b!577435))

(assert (= (and d!202859 (not c!108148)) b!577436))

(assert (= (and d!202859 res!248322) b!577437))

(assert (= (and b!577437 res!248323) b!577438))

(declare-fun m!835261 () Bool)

(assert (=> d!202859 m!835261))

(assert (=> d!202859 m!834389))

(declare-fun m!835269 () Bool)

(assert (=> d!202859 m!835269))

(declare-fun m!835271 () Bool)

(assert (=> d!202859 m!835271))

(declare-fun m!835273 () Bool)

(assert (=> b!577437 m!835273))

(assert (=> b!577437 m!834389))

(declare-fun m!835275 () Bool)

(assert (=> b!577437 m!835275))

(assert (=> b!577437 m!834393))

(declare-fun m!835279 () Bool)

(assert (=> b!577436 m!835279))

(assert (=> b!576768 d!202859))

(assert (=> b!576768 d!202805))

(assert (=> b!576768 d!202807))

(assert (=> b!576768 d!202803))

(declare-fun d!202861 () Bool)

(assert (=> d!202861 (= (isEmpty!4096 lt!244139) (not ((_ is Some!1449) lt!244139)))))

(assert (=> d!202507 d!202861))

(assert (=> d!202507 d!202447))

(assert (=> d!202507 d!202383))

(declare-fun bs!69465 () Bool)

(declare-fun d!202863 () Bool)

(assert (= bs!69465 (and d!202863 d!202677)))

(declare-fun lambda!15734 () Int)

(assert (=> bs!69465 (= lambda!15734 lambda!15720)))

(assert (=> d!202863 true))

(declare-fun lt!244509 () Bool)

(assert (=> d!202863 (= lt!244509 (forall!1535 rules!3103 lambda!15734))))

(declare-fun e!348960 () Bool)

(assert (=> d!202863 (= lt!244509 e!348960)))

(declare-fun res!248328 () Bool)

(assert (=> d!202863 (=> res!248328 e!348960)))

(assert (=> d!202863 (= res!248328 (not ((_ is Cons!5670) rules!3103)))))

(assert (=> d!202863 (= (rulesValidInductive!394 thiss!22590 rules!3103) lt!244509)))

(declare-fun b!577445 () Bool)

(declare-fun e!348959 () Bool)

(assert (=> b!577445 (= e!348960 e!348959)))

(declare-fun res!248329 () Bool)

(assert (=> b!577445 (=> (not res!248329) (not e!348959))))

(assert (=> b!577445 (= res!248329 (ruleValid!309 thiss!22590 (h!11071 rules!3103)))))

(declare-fun b!577446 () Bool)

(assert (=> b!577446 (= e!348959 (rulesValidInductive!394 thiss!22590 (t!77393 rules!3103)))))

(assert (= (and d!202863 (not res!248328)) b!577445))

(assert (= (and b!577445 res!248329) b!577446))

(declare-fun m!835325 () Bool)

(assert (=> d!202863 m!835325))

(declare-fun m!835327 () Bool)

(assert (=> b!577445 m!835327))

(assert (=> b!577446 m!835009))

(assert (=> d!202507 d!202863))

(assert (=> b!576706 d!202505))

(declare-fun d!202875 () Bool)

(assert (=> d!202875 (and (= lt!243945 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!202875 true))

(declare-fun _$50!223 () Unit!10237)

(assert (=> d!202875 (= (choose!4127 lt!243945 suffix!1342 input!2705 suffix!1342) _$50!223)))

(assert (=> d!202369 d!202875))

(assert (=> d!202369 d!202547))

(assert (=> d!202369 d!202561))

(declare-fun d!202881 () Bool)

(declare-fun lt!244513 () Int)

(assert (=> d!202881 (>= lt!244513 0)))

(declare-fun e!348965 () Int)

(assert (=> d!202881 (= lt!244513 e!348965)))

(declare-fun c!108151 () Bool)

(assert (=> d!202881 (= c!108151 ((_ is Nil!5668) (t!77391 (originalCharacters!1138 (_1!3590 (v!16310 lt!243932))))))))

(assert (=> d!202881 (= (size!4513 (t!77391 (originalCharacters!1138 (_1!3590 (v!16310 lt!243932))))) lt!244513)))

(declare-fun b!577455 () Bool)

(assert (=> b!577455 (= e!348965 0)))

(declare-fun b!577456 () Bool)

(assert (=> b!577456 (= e!348965 (+ 1 (size!4513 (t!77391 (t!77391 (originalCharacters!1138 (_1!3590 (v!16310 lt!243932))))))))))

(assert (= (and d!202881 c!108151) b!577455))

(assert (= (and d!202881 (not c!108151)) b!577456))

(declare-fun m!835347 () Bool)

(assert (=> b!577456 m!835347))

(assert (=> b!576873 d!202881))

(declare-fun b!577457 () Bool)

(declare-fun e!348966 () List!5678)

(assert (=> b!577457 (= e!348966 lt!244105)))

(declare-fun b!577460 () Bool)

(declare-fun e!348967 () Bool)

(declare-fun lt!244514 () List!5678)

(assert (=> b!577460 (= e!348967 (or (not (= lt!244105 Nil!5668)) (= lt!244514 lt!243945)))))

(declare-fun d!202883 () Bool)

(assert (=> d!202883 e!348967))

(declare-fun res!248334 () Bool)

(assert (=> d!202883 (=> (not res!248334) (not e!348967))))

(assert (=> d!202883 (= res!248334 (= (content!1001 lt!244514) ((_ map or) (content!1001 lt!243945) (content!1001 lt!244105))))))

(assert (=> d!202883 (= lt!244514 e!348966)))

(declare-fun c!108152 () Bool)

(assert (=> d!202883 (= c!108152 ((_ is Nil!5668) lt!243945))))

(assert (=> d!202883 (= (++!1587 lt!243945 lt!244105) lt!244514)))

(declare-fun b!577459 () Bool)

(declare-fun res!248335 () Bool)

(assert (=> b!577459 (=> (not res!248335) (not e!348967))))

(assert (=> b!577459 (= res!248335 (= (size!4513 lt!244514) (+ (size!4513 lt!243945) (size!4513 lt!244105))))))

(declare-fun b!577458 () Bool)

(assert (=> b!577458 (= e!348966 (Cons!5668 (h!11069 lt!243945) (++!1587 (t!77391 lt!243945) lt!244105)))))

(assert (= (and d!202883 c!108152) b!577457))

(assert (= (and d!202883 (not c!108152)) b!577458))

(assert (= (and d!202883 res!248334) b!577459))

(assert (= (and b!577459 res!248335) b!577460))

(declare-fun m!835349 () Bool)

(assert (=> d!202883 m!835349))

(assert (=> d!202883 m!834455))

(declare-fun m!835351 () Bool)

(assert (=> d!202883 m!835351))

(declare-fun m!835353 () Bool)

(assert (=> b!577459 m!835353))

(assert (=> b!577459 m!833821))

(declare-fun m!835355 () Bool)

(assert (=> b!577459 m!835355))

(declare-fun m!835357 () Bool)

(assert (=> b!577458 m!835357))

(assert (=> d!202497 d!202883))

(assert (=> d!202497 d!202691))

(assert (=> d!202497 d!202363))

(declare-fun bs!69466 () Bool)

(declare-fun d!202889 () Bool)

(assert (= bs!69466 (and d!202889 d!202697)))

(declare-fun lambda!15735 () Int)

(assert (=> bs!69466 (= lambda!15735 lambda!15724)))

(declare-fun bs!69467 () Bool)

(assert (= bs!69467 (and d!202889 d!202777)))

(assert (=> bs!69467 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (h!11071 rules!3103)))) (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (h!11071 rules!3103))))) (= lambda!15735 lambda!15728))))

(declare-fun bs!69468 () Bool)

(assert (= bs!69468 (and d!202889 d!202469)))

(assert (=> bs!69468 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (= lambda!15735 lambda!15709))))

(declare-fun bs!69469 () Bool)

(assert (= bs!69469 (and d!202889 d!202475)))

(assert (=> bs!69469 (= lambda!15735 lambda!15710)))

(declare-fun bs!69470 () Bool)

(assert (= bs!69470 (and d!202889 d!202841)))

(assert (=> bs!69470 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (= lambda!15735 lambda!15730))))

(assert (=> d!202889 true))

(assert (=> d!202889 (< (dynLambda!3292 order!4623 (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (dynLambda!3291 order!4621 lambda!15735))))

(assert (=> d!202889 true))

(assert (=> d!202889 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (dynLambda!3291 order!4621 lambda!15735))))

(assert (=> d!202889 (= (semiInverseModEq!425 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (Forall!283 lambda!15735))))

(declare-fun bs!69471 () Bool)

(assert (= bs!69471 d!202889))

(declare-fun m!835359 () Bool)

(assert (=> bs!69471 m!835359))

(assert (=> d!202467 d!202889))

(assert (=> b!576855 d!202659))

(declare-fun d!202891 () Bool)

(assert (=> d!202891 (= (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244157))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244157))))))))

(declare-fun b_lambda!22581 () Bool)

(assert (=> (not b_lambda!22581) (not d!202891)))

(declare-fun tb!50429 () Bool)

(declare-fun t!77560 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77560) tb!50429))

(declare-fun result!56456 () Bool)

(assert (=> tb!50429 (= result!56456 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244157)))))))))

(declare-fun m!835361 () Bool)

(assert (=> tb!50429 m!835361))

(assert (=> d!202891 t!77560))

(declare-fun b_and!56615 () Bool)

(assert (= b_and!56585 (and (=> t!77560 result!56456) b_and!56615)))

(declare-fun t!77562 () Bool)

(declare-fun tb!50431 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77562) tb!50431))

(declare-fun result!56458 () Bool)

(assert (= result!56458 result!56456))

(assert (=> d!202891 t!77562))

(declare-fun b_and!56617 () Bool)

(assert (= b_and!56587 (and (=> t!77562 result!56458) b_and!56617)))

(declare-fun t!77564 () Bool)

(declare-fun tb!50433 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77564) tb!50433))

(declare-fun result!56460 () Bool)

(assert (= result!56460 result!56456))

(assert (=> d!202891 t!77564))

(declare-fun b_and!56619 () Bool)

(assert (= b_and!56589 (and (=> t!77564 result!56460) b_and!56619)))

(assert (=> d!202891 m!834483))

(declare-fun m!835363 () Bool)

(assert (=> d!202891 m!835363))

(assert (=> b!576855 d!202891))

(declare-fun d!202893 () Bool)

(assert (=> d!202893 (= (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244157)))) (fromListB!561 (originalCharacters!1138 (_1!3590 (get!2163 lt!244157)))))))

(declare-fun bs!69472 () Bool)

(assert (= bs!69472 d!202893))

(declare-fun m!835365 () Bool)

(assert (=> bs!69472 m!835365))

(assert (=> b!576855 d!202893))

(declare-fun d!202895 () Bool)

(declare-fun lt!244515 () Bool)

(assert (=> d!202895 (= lt!244515 (select (content!1003 (t!77393 rules!3103)) (rule!1849 token!491)))))

(declare-fun e!348970 () Bool)

(assert (=> d!202895 (= lt!244515 e!348970)))

(declare-fun res!248336 () Bool)

(assert (=> d!202895 (=> (not res!248336) (not e!348970))))

(assert (=> d!202895 (= res!248336 ((_ is Cons!5670) (t!77393 rules!3103)))))

(assert (=> d!202895 (= (contains!1329 (t!77393 rules!3103) (rule!1849 token!491)) lt!244515)))

(declare-fun b!577461 () Bool)

(declare-fun e!348969 () Bool)

(assert (=> b!577461 (= e!348970 e!348969)))

(declare-fun res!248337 () Bool)

(assert (=> b!577461 (=> res!248337 e!348969)))

(assert (=> b!577461 (= res!248337 (= (h!11071 (t!77393 rules!3103)) (rule!1849 token!491)))))

(declare-fun b!577462 () Bool)

(assert (=> b!577462 (= e!348969 (contains!1329 (t!77393 (t!77393 rules!3103)) (rule!1849 token!491)))))

(assert (= (and d!202895 res!248336) b!577461))

(assert (= (and b!577461 (not res!248337)) b!577462))

(assert (=> d!202895 m!834781))

(declare-fun m!835367 () Bool)

(assert (=> d!202895 m!835367))

(declare-fun m!835369 () Bool)

(assert (=> b!577462 m!835369))

(assert (=> b!576953 d!202895))

(declare-fun d!202897 () Bool)

(assert (=> d!202897 (= (_2!3590 (v!16310 lt!243932)) lt!243944)))

(assert (=> d!202897 true))

(declare-fun _$63!697 () Unit!10237)

(assert (=> d!202897 (= (choose!4134 lt!243959 (_2!3590 (v!16310 lt!243932)) lt!243959 lt!243944 input!2705) _$63!697)))

(assert (=> d!202459 d!202897))

(declare-fun b!577463 () Bool)

(declare-fun e!348973 () Bool)

(declare-fun e!348972 () Bool)

(assert (=> b!577463 (= e!348973 e!348972)))

(declare-fun res!248338 () Bool)

(assert (=> b!577463 (=> (not res!248338) (not e!348972))))

(assert (=> b!577463 (= res!248338 (not ((_ is Nil!5668) input!2705)))))

(declare-fun b!577464 () Bool)

(declare-fun res!248341 () Bool)

(assert (=> b!577464 (=> (not res!248341) (not e!348972))))

(assert (=> b!577464 (= res!248341 (= (head!1224 lt!243959) (head!1224 input!2705)))))

(declare-fun b!577466 () Bool)

(declare-fun e!348971 () Bool)

(assert (=> b!577466 (= e!348971 (>= (size!4513 input!2705) (size!4513 lt!243959)))))

(declare-fun d!202899 () Bool)

(assert (=> d!202899 e!348971))

(declare-fun res!248340 () Bool)

(assert (=> d!202899 (=> res!248340 e!348971)))

(declare-fun lt!244516 () Bool)

(assert (=> d!202899 (= res!248340 (not lt!244516))))

(assert (=> d!202899 (= lt!244516 e!348973)))

(declare-fun res!248339 () Bool)

(assert (=> d!202899 (=> res!248339 e!348973)))

(assert (=> d!202899 (= res!248339 ((_ is Nil!5668) lt!243959))))

(assert (=> d!202899 (= (isPrefix!733 lt!243959 input!2705) lt!244516)))

(declare-fun b!577465 () Bool)

(assert (=> b!577465 (= e!348972 (isPrefix!733 (tail!753 lt!243959) (tail!753 input!2705)))))

(assert (= (and d!202899 (not res!248339)) b!577463))

(assert (= (and b!577463 res!248338) b!577464))

(assert (= (and b!577464 res!248341) b!577465))

(assert (= (and d!202899 (not res!248340)) b!577466))

(assert (=> b!577464 m!834055))

(assert (=> b!577464 m!833935))

(assert (=> b!577466 m!833861))

(assert (=> b!577466 m!833815))

(assert (=> b!577465 m!834061))

(assert (=> b!577465 m!833863))

(assert (=> b!577465 m!834061))

(assert (=> b!577465 m!833863))

(declare-fun m!835371 () Bool)

(assert (=> b!577465 m!835371))

(assert (=> d!202459 d!202899))

(declare-fun d!202901 () Bool)

(declare-fun lt!244517 () Int)

(assert (=> d!202901 (>= lt!244517 0)))

(declare-fun e!348974 () Int)

(assert (=> d!202901 (= lt!244517 e!348974)))

(declare-fun c!108153 () Bool)

(assert (=> d!202901 (= c!108153 ((_ is Nil!5668) (t!77391 lt!243945)))))

(assert (=> d!202901 (= (size!4513 (t!77391 lt!243945)) lt!244517)))

(declare-fun b!577467 () Bool)

(assert (=> b!577467 (= e!348974 0)))

(declare-fun b!577468 () Bool)

(assert (=> b!577468 (= e!348974 (+ 1 (size!4513 (t!77391 (t!77391 lt!243945)))))))

(assert (= (and d!202901 c!108153) b!577467))

(assert (= (and d!202901 (not c!108153)) b!577468))

(declare-fun m!835373 () Bool)

(assert (=> b!577468 m!835373))

(assert (=> b!576439 d!202901))

(declare-fun bs!69473 () Bool)

(declare-fun d!202903 () Bool)

(assert (= bs!69473 (and d!202903 d!202681)))

(declare-fun lambda!15736 () Int)

(assert (=> bs!69473 (= (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (= lambda!15736 lambda!15723))))

(assert (=> d!202903 true))

(assert (=> d!202903 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (dynLambda!3297 order!4633 lambda!15736))))

(assert (=> d!202903 (= (equivClasses!408 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (Forall2!210 lambda!15736))))

(declare-fun bs!69474 () Bool)

(assert (= bs!69474 d!202903))

(declare-fun m!835375 () Bool)

(assert (=> bs!69474 m!835375))

(assert (=> b!576474 d!202903))

(declare-fun b!577469 () Bool)

(declare-fun e!348976 () Bool)

(declare-fun lt!244518 () Bool)

(declare-fun call!39935 () Bool)

(assert (=> b!577469 (= e!348976 (= lt!244518 call!39935))))

(declare-fun b!577470 () Bool)

(declare-fun e!348981 () Bool)

(assert (=> b!577470 (= e!348981 (not (= (head!1224 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))) (c!107921 (regex!1099 (rule!1849 token!491))))))))

(declare-fun b!577471 () Bool)

(declare-fun e!348978 () Bool)

(assert (=> b!577471 (= e!348978 (nullable!386 (regex!1099 (rule!1849 token!491))))))

(declare-fun d!202905 () Bool)

(assert (=> d!202905 e!348976))

(declare-fun c!108156 () Bool)

(assert (=> d!202905 (= c!108156 ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 token!491))))))

(assert (=> d!202905 (= lt!244518 e!348978)))

(declare-fun c!108154 () Bool)

(assert (=> d!202905 (= c!108154 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(assert (=> d!202905 (validRegex!481 (regex!1099 (rule!1849 token!491)))))

(assert (=> d!202905 (= (matchR!580 (regex!1099 (rule!1849 token!491)) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))) lt!244518)))

(declare-fun b!577472 () Bool)

(assert (=> b!577472 (= e!348978 (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952))))) (tail!753 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952))))))))

(declare-fun b!577473 () Bool)

(declare-fun e!348975 () Bool)

(assert (=> b!577473 (= e!348975 e!348981)))

(declare-fun res!248345 () Bool)

(assert (=> b!577473 (=> res!248345 e!348981)))

(assert (=> b!577473 (= res!248345 call!39935)))

(declare-fun b!577474 () Bool)

(declare-fun e!348979 () Bool)

(assert (=> b!577474 (= e!348979 (= (head!1224 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))) (c!107921 (regex!1099 (rule!1849 token!491)))))))

(declare-fun b!577475 () Bool)

(declare-fun res!248346 () Bool)

(declare-fun e!348977 () Bool)

(assert (=> b!577475 (=> res!248346 e!348977)))

(assert (=> b!577475 (= res!248346 e!348979)))

(declare-fun res!248349 () Bool)

(assert (=> b!577475 (=> (not res!248349) (not e!348979))))

(assert (=> b!577475 (= res!248349 lt!244518)))

(declare-fun b!577476 () Bool)

(declare-fun e!348980 () Bool)

(assert (=> b!577476 (= e!348976 e!348980)))

(declare-fun c!108155 () Bool)

(assert (=> b!577476 (= c!108155 ((_ is EmptyLang!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun b!577477 () Bool)

(declare-fun res!248344 () Bool)

(assert (=> b!577477 (=> (not res!248344) (not e!348979))))

(assert (=> b!577477 (= res!248344 (not call!39935))))

(declare-fun b!577478 () Bool)

(declare-fun res!248343 () Bool)

(assert (=> b!577478 (=> res!248343 e!348977)))

(assert (=> b!577478 (= res!248343 (not ((_ is ElementMatch!1433) (regex!1099 (rule!1849 token!491)))))))

(assert (=> b!577478 (= e!348980 e!348977)))

(declare-fun b!577479 () Bool)

(assert (=> b!577479 (= e!348977 e!348975)))

(declare-fun res!248347 () Bool)

(assert (=> b!577479 (=> (not res!248347) (not e!348975))))

(assert (=> b!577479 (= res!248347 (not lt!244518))))

(declare-fun b!577480 () Bool)

(declare-fun res!248342 () Bool)

(assert (=> b!577480 (=> (not res!248342) (not e!348979))))

(assert (=> b!577480 (= res!248342 (isEmpty!4093 (tail!753 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952))))))))

(declare-fun b!577481 () Bool)

(assert (=> b!577481 (= e!348980 (not lt!244518))))

(declare-fun b!577482 () Bool)

(declare-fun res!248348 () Bool)

(assert (=> b!577482 (=> res!248348 e!348981)))

(assert (=> b!577482 (= res!248348 (not (isEmpty!4093 (tail!753 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))))

(declare-fun bm!39930 () Bool)

(assert (=> bm!39930 (= call!39935 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(assert (= (and d!202905 c!108154) b!577471))

(assert (= (and d!202905 (not c!108154)) b!577472))

(assert (= (and d!202905 c!108156) b!577469))

(assert (= (and d!202905 (not c!108156)) b!577476))

(assert (= (and b!577476 c!108155) b!577481))

(assert (= (and b!577476 (not c!108155)) b!577478))

(assert (= (and b!577478 (not res!248343)) b!577475))

(assert (= (and b!577475 res!248349) b!577477))

(assert (= (and b!577477 res!248344) b!577480))

(assert (= (and b!577480 res!248342) b!577474))

(assert (= (and b!577475 (not res!248346)) b!577479))

(assert (= (and b!577479 res!248347) b!577473))

(assert (= (and b!577473 (not res!248345)) b!577482))

(assert (= (and b!577482 (not res!248348)) b!577470))

(assert (= (or b!577469 b!577473 b!577477) bm!39930))

(declare-fun m!835377 () Bool)

(assert (=> b!577470 m!835377))

(declare-fun m!835379 () Bool)

(assert (=> b!577480 m!835379))

(assert (=> b!577480 m!835379))

(declare-fun m!835381 () Bool)

(assert (=> b!577480 m!835381))

(assert (=> bm!39930 m!834183))

(assert (=> b!577472 m!835377))

(assert (=> b!577472 m!835377))

(declare-fun m!835383 () Bool)

(assert (=> b!577472 m!835383))

(assert (=> b!577472 m!835379))

(assert (=> b!577472 m!835383))

(assert (=> b!577472 m!835379))

(declare-fun m!835385 () Bool)

(assert (=> b!577472 m!835385))

(assert (=> b!577482 m!835379))

(assert (=> b!577482 m!835379))

(assert (=> b!577482 m!835381))

(assert (=> b!577471 m!834049))

(assert (=> d!202905 m!834183))

(assert (=> d!202905 m!834047))

(assert (=> b!577474 m!835377))

(assert (=> b!576684 d!202905))

(assert (=> b!576684 d!202695))

(assert (=> b!576684 d!202725))

(assert (=> b!576684 d!202691))

(declare-fun d!202907 () Bool)

(declare-fun c!108157 () Bool)

(assert (=> d!202907 (= c!108157 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun e!348982 () Bool)

(assert (=> d!202907 (= (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))) e!348982)))

(declare-fun b!577483 () Bool)

(assert (=> b!577483 (= e!348982 (inv!7138 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun b!577484 () Bool)

(declare-fun e!348983 () Bool)

(assert (=> b!577484 (= e!348982 e!348983)))

(declare-fun res!248350 () Bool)

(assert (=> b!577484 (= res!248350 (not ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))))))))

(assert (=> b!577484 (=> res!248350 e!348983)))

(declare-fun b!577485 () Bool)

(assert (=> b!577485 (= e!348983 (inv!7139 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))))))

(assert (= (and d!202907 c!108157) b!577483))

(assert (= (and d!202907 (not c!108157)) b!577484))

(assert (= (and b!577484 (not res!248350)) b!577485))

(declare-fun m!835387 () Bool)

(assert (=> b!577483 m!835387))

(declare-fun m!835389 () Bool)

(assert (=> b!577485 m!835389))

(assert (=> b!576535 d!202907))

(declare-fun d!202909 () Bool)

(declare-fun lt!244519 () Int)

(assert (=> d!202909 (>= lt!244519 0)))

(declare-fun e!348984 () Int)

(assert (=> d!202909 (= lt!244519 e!348984)))

(declare-fun c!108158 () Bool)

(assert (=> d!202909 (= c!108158 ((_ is Nil!5668) (t!77391 lt!243959)))))

(assert (=> d!202909 (= (size!4513 (t!77391 lt!243959)) lt!244519)))

(declare-fun b!577486 () Bool)

(assert (=> b!577486 (= e!348984 0)))

(declare-fun b!577487 () Bool)

(assert (=> b!577487 (= e!348984 (+ 1 (size!4513 (t!77391 (t!77391 lt!243959)))))))

(assert (= (and d!202909 c!108158) b!577486))

(assert (= (and d!202909 (not c!108158)) b!577487))

(declare-fun m!835391 () Bool)

(assert (=> b!577487 m!835391))

(assert (=> b!576465 d!202909))

(declare-fun b!577491 () Bool)

(declare-fun e!348985 () Int)

(assert (=> b!577491 (= e!348985 (- 1))))

(declare-fun b!577488 () Bool)

(declare-fun e!348986 () Int)

(assert (=> b!577488 (= e!348986 0)))

(declare-fun d!202911 () Bool)

(declare-fun lt!244520 () Int)

(assert (=> d!202911 (>= lt!244520 0)))

(assert (=> d!202911 (= lt!244520 e!348986)))

(declare-fun c!108159 () Bool)

(assert (=> d!202911 (= c!108159 (and ((_ is Cons!5670) (t!77393 rules!3103)) (= (h!11071 (t!77393 rules!3103)) (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (=> d!202911 (contains!1329 (t!77393 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932))))))

(assert (=> d!202911 (= (getIndex!38 (t!77393 rules!3103) (rule!1849 (_1!3590 (v!16310 lt!243932)))) lt!244520)))

(declare-fun b!577489 () Bool)

(assert (=> b!577489 (= e!348986 e!348985)))

(declare-fun c!108160 () Bool)

(assert (=> b!577489 (= c!108160 (and ((_ is Cons!5670) (t!77393 rules!3103)) (not (= (h!11071 (t!77393 rules!3103)) (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun b!577490 () Bool)

(assert (=> b!577490 (= e!348985 (+ 1 (getIndex!38 (t!77393 (t!77393 rules!3103)) (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (= (and d!202911 c!108159) b!577488))

(assert (= (and d!202911 (not c!108159)) b!577489))

(assert (= (and b!577489 c!108160) b!577490))

(assert (= (and b!577489 (not c!108160)) b!577491))

(assert (=> d!202911 m!834591))

(declare-fun m!835393 () Bool)

(assert (=> b!577490 m!835393))

(assert (=> b!576946 d!202911))

(declare-fun b!577492 () Bool)

(declare-fun e!348987 () List!5678)

(assert (=> b!577492 (= e!348987 lt!243981)))

(declare-fun lt!244521 () List!5678)

(declare-fun e!348988 () Bool)

(declare-fun b!577495 () Bool)

(assert (=> b!577495 (= e!348988 (or (not (= lt!243981 Nil!5668)) (= lt!244521 lt!243959)))))

(declare-fun d!202913 () Bool)

(assert (=> d!202913 e!348988))

(declare-fun res!248351 () Bool)

(assert (=> d!202913 (=> (not res!248351) (not e!348988))))

(assert (=> d!202913 (= res!248351 (= (content!1001 lt!244521) ((_ map or) (content!1001 lt!243959) (content!1001 lt!243981))))))

(assert (=> d!202913 (= lt!244521 e!348987)))

(declare-fun c!108161 () Bool)

(assert (=> d!202913 (= c!108161 ((_ is Nil!5668) lt!243959))))

(assert (=> d!202913 (= (++!1587 lt!243959 lt!243981) lt!244521)))

(declare-fun b!577494 () Bool)

(declare-fun res!248352 () Bool)

(assert (=> b!577494 (=> (not res!248352) (not e!348988))))

(assert (=> b!577494 (= res!248352 (= (size!4513 lt!244521) (+ (size!4513 lt!243959) (size!4513 lt!243981))))))

(declare-fun b!577493 () Bool)

(assert (=> b!577493 (= e!348987 (Cons!5668 (h!11069 lt!243959) (++!1587 (t!77391 lt!243959) lt!243981)))))

(assert (= (and d!202913 c!108161) b!577492))

(assert (= (and d!202913 (not c!108161)) b!577493))

(assert (= (and d!202913 res!248351) b!577494))

(assert (= (and b!577494 res!248352) b!577495))

(declare-fun m!835395 () Bool)

(assert (=> d!202913 m!835395))

(assert (=> d!202913 m!834017))

(declare-fun m!835397 () Bool)

(assert (=> d!202913 m!835397))

(declare-fun m!835399 () Bool)

(assert (=> b!577494 m!835399))

(assert (=> b!577494 m!833815))

(declare-fun m!835401 () Bool)

(assert (=> b!577494 m!835401))

(declare-fun m!835403 () Bool)

(assert (=> b!577493 m!835403))

(assert (=> d!202355 d!202913))

(assert (=> d!202355 d!202759))

(assert (=> d!202355 d!202375))

(assert (=> b!576690 d!202793))

(declare-fun d!202915 () Bool)

(declare-fun lt!244522 () Int)

(assert (=> d!202915 (>= lt!244522 0)))

(declare-fun e!348989 () Int)

(assert (=> d!202915 (= lt!244522 e!348989)))

(declare-fun c!108162 () Bool)

(assert (=> d!202915 (= c!108162 ((_ is Nil!5668) (originalCharacters!1138 (_1!3590 (get!2163 lt!244102)))))))

(assert (=> d!202915 (= (size!4513 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102)))) lt!244522)))

(declare-fun b!577496 () Bool)

(assert (=> b!577496 (= e!348989 0)))

(declare-fun b!577497 () Bool)

(assert (=> b!577497 (= e!348989 (+ 1 (size!4513 (t!77391 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102)))))))))

(assert (= (and d!202915 c!108162) b!577496))

(assert (= (and d!202915 (not c!108162)) b!577497))

(declare-fun m!835405 () Bool)

(assert (=> b!577497 m!835405))

(assert (=> b!576690 d!202915))

(declare-fun d!202917 () Bool)

(declare-fun c!108165 () Bool)

(assert (=> d!202917 (= c!108165 ((_ is Nil!5670) rules!3103))))

(declare-fun e!348992 () (InoxSet Rule!1998))

(assert (=> d!202917 (= (content!1003 rules!3103) e!348992)))

(declare-fun b!577502 () Bool)

(assert (=> b!577502 (= e!348992 ((as const (Array Rule!1998 Bool)) false))))

(declare-fun b!577503 () Bool)

(assert (=> b!577503 (= e!348992 ((_ map or) (store ((as const (Array Rule!1998 Bool)) false) (h!11071 rules!3103) true) (content!1003 (t!77393 rules!3103))))))

(assert (= (and d!202917 c!108165) b!577502))

(assert (= (and d!202917 (not c!108165)) b!577503))

(declare-fun m!835407 () Bool)

(assert (=> b!577503 m!835407))

(assert (=> b!577503 m!834781))

(assert (=> d!202593 d!202917))

(assert (=> d!202517 d!202519))

(declare-fun d!202919 () Bool)

(assert (=> d!202919 (not (matchR!580 (regex!1099 (rule!1849 token!491)) input!2705))))

(assert (=> d!202919 true))

(declare-fun _$57!85 () Unit!10237)

(assert (=> d!202919 (= (choose!4137 thiss!22590 rules!3103 (rule!1849 (_1!3590 (v!16310 lt!243932))) lt!243959 input!2705 input!2705 (rule!1849 token!491)) _$57!85)))

(declare-fun bs!69476 () Bool)

(assert (= bs!69476 d!202919))

(assert (=> bs!69476 m!833735))

(assert (=> d!202517 d!202919))

(assert (=> d!202517 d!202899))

(declare-fun d!202923 () Bool)

(declare-fun lt!244547 () Int)

(assert (=> d!202923 (>= lt!244547 0)))

(declare-fun e!348993 () Int)

(assert (=> d!202923 (= lt!244547 e!348993)))

(declare-fun c!108166 () Bool)

(assert (=> d!202923 (= c!108166 ((_ is Nil!5668) (_2!3590 (get!2163 lt!244097))))))

(assert (=> d!202923 (= (size!4513 (_2!3590 (get!2163 lt!244097))) lt!244547)))

(declare-fun b!577504 () Bool)

(assert (=> b!577504 (= e!348993 0)))

(declare-fun b!577505 () Bool)

(assert (=> b!577505 (= e!348993 (+ 1 (size!4513 (t!77391 (_2!3590 (get!2163 lt!244097))))))))

(assert (= (and d!202923 c!108166) b!577504))

(assert (= (and d!202923 (not c!108166)) b!577505))

(declare-fun m!835425 () Bool)

(assert (=> b!577505 m!835425))

(assert (=> b!576688 d!202923))

(declare-fun d!202925 () Bool)

(assert (=> d!202925 (= (get!2163 lt!244097) (v!16310 lt!244097))))

(assert (=> b!576688 d!202925))

(assert (=> b!576688 d!202691))

(declare-fun d!202927 () Bool)

(declare-fun c!108169 () Bool)

(assert (=> d!202927 (= c!108169 ((_ is Nil!5668) lt!244155))))

(declare-fun e!348996 () (InoxSet C!3788))

(assert (=> d!202927 (= (content!1001 lt!244155) e!348996)))

(declare-fun b!577510 () Bool)

(assert (=> b!577510 (= e!348996 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577511 () Bool)

(assert (=> b!577511 (= e!348996 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 lt!244155) true) (content!1001 (t!77391 lt!244155))))))

(assert (= (and d!202927 c!108169) b!577510))

(assert (= (and d!202927 (not c!108169)) b!577511))

(declare-fun m!835427 () Bool)

(assert (=> b!577511 m!835427))

(declare-fun m!835429 () Bool)

(assert (=> b!577511 m!835429))

(assert (=> d!202547 d!202927))

(declare-fun d!202929 () Bool)

(declare-fun c!108170 () Bool)

(assert (=> d!202929 (= c!108170 ((_ is Nil!5668) lt!243945))))

(declare-fun e!348997 () (InoxSet C!3788))

(assert (=> d!202929 (= (content!1001 lt!243945) e!348997)))

(declare-fun b!577512 () Bool)

(assert (=> b!577512 (= e!348997 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577513 () Bool)

(assert (=> b!577513 (= e!348997 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 lt!243945) true) (content!1001 (t!77391 lt!243945))))))

(assert (= (and d!202929 c!108170) b!577512))

(assert (= (and d!202929 (not c!108170)) b!577513))

(declare-fun m!835431 () Bool)

(assert (=> b!577513 m!835431))

(declare-fun m!835433 () Bool)

(assert (=> b!577513 m!835433))

(assert (=> d!202547 d!202929))

(declare-fun d!202931 () Bool)

(declare-fun c!108171 () Bool)

(assert (=> d!202931 (= c!108171 ((_ is Nil!5668) suffix!1342))))

(declare-fun e!348998 () (InoxSet C!3788))

(assert (=> d!202931 (= (content!1001 suffix!1342) e!348998)))

(declare-fun b!577514 () Bool)

(assert (=> b!577514 (= e!348998 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577515 () Bool)

(assert (=> b!577515 (= e!348998 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 suffix!1342) true) (content!1001 (t!77391 suffix!1342))))))

(assert (= (and d!202931 c!108171) b!577514))

(assert (= (and d!202931 (not c!108171)) b!577515))

(declare-fun m!835435 () Bool)

(assert (=> b!577515 m!835435))

(declare-fun m!835437 () Bool)

(assert (=> b!577515 m!835437))

(assert (=> d!202547 d!202931))

(declare-fun d!202933 () Bool)

(assert (=> d!202933 (= (isEmpty!4096 lt!243932) (not ((_ is Some!1449) lt!243932)))))

(assert (=> d!202551 d!202933))

(declare-fun d!202935 () Bool)

(declare-fun isBalanced!510 (Conc!1816) Bool)

(assert (=> d!202935 (= (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))) (isBalanced!510 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun bs!69482 () Bool)

(assert (= bs!69482 d!202935))

(declare-fun m!835441 () Bool)

(assert (=> bs!69482 m!835441))

(assert (=> tb!50279 d!202935))

(declare-fun d!202939 () Bool)

(assert (=> d!202939 (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))) (list!2356 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))))

(declare-fun bs!69483 () Bool)

(assert (= bs!69483 d!202939))

(declare-fun m!835443 () Bool)

(assert (=> bs!69483 m!835443))

(assert (=> d!202475 d!202939))

(declare-fun d!202941 () Bool)

(assert (=> d!202941 (= (list!2355 lt!243954) (list!2356 (c!107922 lt!243954)))))

(declare-fun bs!69484 () Bool)

(assert (= bs!69484 d!202941))

(declare-fun m!835445 () Bool)

(assert (=> bs!69484 m!835445))

(assert (=> d!202475 d!202941))

(declare-fun d!202943 () Bool)

(declare-fun dynLambda!3299 (Int BalanceConc!3640) Bool)

(assert (=> d!202943 (dynLambda!3299 lambda!15710 lt!243954)))

(declare-fun lt!244551 () Unit!10237)

(declare-fun choose!4142 (Int BalanceConc!3640) Unit!10237)

(assert (=> d!202943 (= lt!244551 (choose!4142 lambda!15710 lt!243954))))

(assert (=> d!202943 (Forall!283 lambda!15710)))

(assert (=> d!202943 (= (ForallOf!107 lambda!15710 lt!243954) lt!244551)))

(declare-fun b_lambda!22583 () Bool)

(assert (=> (not b_lambda!22583) (not d!202943)))

(declare-fun bs!69487 () Bool)

(assert (= bs!69487 d!202943))

(declare-fun m!835465 () Bool)

(assert (=> bs!69487 m!835465))

(declare-fun m!835467 () Bool)

(assert (=> bs!69487 m!835467))

(declare-fun m!835469 () Bool)

(assert (=> bs!69487 m!835469))

(assert (=> d!202475 d!202943))

(assert (=> b!576694 d!202793))

(declare-fun d!202955 () Bool)

(assert (=> d!202955 (= (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102))))))))

(declare-fun b_lambda!22585 () Bool)

(assert (=> (not b_lambda!22585) (not d!202955)))

(declare-fun tb!50435 () Bool)

(declare-fun t!77566 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77566) tb!50435))

(declare-fun result!56462 () Bool)

(assert (=> tb!50435 (= result!56462 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102)))))))))

(declare-fun m!835471 () Bool)

(assert (=> tb!50435 m!835471))

(assert (=> d!202955 t!77566))

(declare-fun b_and!56621 () Bool)

(assert (= b_and!56615 (and (=> t!77566 result!56462) b_and!56621)))

(declare-fun t!77568 () Bool)

(declare-fun tb!50437 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77568) tb!50437))

(declare-fun result!56464 () Bool)

(assert (= result!56464 result!56462))

(assert (=> d!202955 t!77568))

(declare-fun b_and!56623 () Bool)

(assert (= b_and!56617 (and (=> t!77568 result!56464) b_and!56623)))

(declare-fun t!77570 () Bool)

(declare-fun tb!50439 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77570) tb!50439))

(declare-fun result!56466 () Bool)

(assert (= result!56466 result!56462))

(assert (=> d!202955 t!77570))

(declare-fun b_and!56625 () Bool)

(assert (= b_and!56619 (and (=> t!77570 result!56466) b_and!56625)))

(assert (=> d!202955 m!834249))

(declare-fun m!835473 () Bool)

(assert (=> d!202955 m!835473))

(assert (=> b!576694 d!202955))

(declare-fun d!202959 () Bool)

(assert (=> d!202959 (= (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102)))) (fromListB!561 (originalCharacters!1138 (_1!3590 (get!2163 lt!244102)))))))

(declare-fun bs!69489 () Bool)

(assert (= bs!69489 d!202959))

(declare-fun m!835477 () Bool)

(assert (=> bs!69489 m!835477))

(assert (=> b!576694 d!202959))

(declare-fun d!202961 () Bool)

(declare-fun c!108179 () Bool)

(assert (=> d!202961 (= c!108179 ((_ is Empty!1816) (c!107922 (charsOf!728 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun e!349018 () List!5678)

(assert (=> d!202961 (= (list!2356 (c!107922 (charsOf!728 (_1!3590 (v!16310 lt!243932))))) e!349018)))

(declare-fun b!577551 () Bool)

(declare-fun e!349019 () List!5678)

(assert (=> b!577551 (= e!349018 e!349019)))

(declare-fun c!108180 () Bool)

(assert (=> b!577551 (= c!108180 ((_ is Leaf!2873) (c!107922 (charsOf!728 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun b!577550 () Bool)

(assert (=> b!577550 (= e!349018 Nil!5668)))

(declare-fun b!577553 () Bool)

(assert (=> b!577553 (= e!349019 (++!1587 (list!2356 (left!4630 (c!107922 (charsOf!728 (_1!3590 (v!16310 lt!243932)))))) (list!2356 (right!4960 (c!107922 (charsOf!728 (_1!3590 (v!16310 lt!243932))))))))))

(declare-fun b!577552 () Bool)

(declare-fun list!2359 (IArray!3633) List!5678)

(assert (=> b!577552 (= e!349019 (list!2359 (xs!4453 (c!107922 (charsOf!728 (_1!3590 (v!16310 lt!243932)))))))))

(assert (= (and d!202961 c!108179) b!577550))

(assert (= (and d!202961 (not c!108179)) b!577551))

(assert (= (and b!577551 c!108180) b!577552))

(assert (= (and b!577551 (not c!108180)) b!577553))

(declare-fun m!835487 () Bool)

(assert (=> b!577553 m!835487))

(declare-fun m!835489 () Bool)

(assert (=> b!577553 m!835489))

(assert (=> b!577553 m!835487))

(assert (=> b!577553 m!835489))

(declare-fun m!835491 () Bool)

(assert (=> b!577553 m!835491))

(declare-fun m!835493 () Bool)

(assert (=> b!577552 m!835493))

(assert (=> d!202393 d!202961))

(assert (=> b!576507 d!202667))

(declare-fun d!202967 () Bool)

(assert (=> d!202967 (= (head!1224 lt!243934) (h!11069 lt!243934))))

(assert (=> b!576507 d!202967))

(declare-fun b!577554 () Bool)

(declare-fun e!349022 () Bool)

(declare-fun e!349021 () Bool)

(assert (=> b!577554 (= e!349022 e!349021)))

(declare-fun res!248369 () Bool)

(assert (=> b!577554 (=> (not res!248369) (not e!349021))))

(assert (=> b!577554 (= res!248369 (not ((_ is Nil!5668) (tail!753 lt!243934))))))

(declare-fun b!577555 () Bool)

(declare-fun res!248372 () Bool)

(assert (=> b!577555 (=> (not res!248372) (not e!349021))))

(assert (=> b!577555 (= res!248372 (= (head!1224 (tail!753 input!2705)) (head!1224 (tail!753 lt!243934))))))

(declare-fun b!577557 () Bool)

(declare-fun e!349020 () Bool)

(assert (=> b!577557 (= e!349020 (>= (size!4513 (tail!753 lt!243934)) (size!4513 (tail!753 input!2705))))))

(declare-fun d!202969 () Bool)

(assert (=> d!202969 e!349020))

(declare-fun res!248371 () Bool)

(assert (=> d!202969 (=> res!248371 e!349020)))

(declare-fun lt!244555 () Bool)

(assert (=> d!202969 (= res!248371 (not lt!244555))))

(assert (=> d!202969 (= lt!244555 e!349022)))

(declare-fun res!248370 () Bool)

(assert (=> d!202969 (=> res!248370 e!349022)))

(assert (=> d!202969 (= res!248370 ((_ is Nil!5668) (tail!753 input!2705)))))

(assert (=> d!202969 (= (isPrefix!733 (tail!753 input!2705) (tail!753 lt!243934)) lt!244555)))

(declare-fun b!577556 () Bool)

(assert (=> b!577556 (= e!349021 (isPrefix!733 (tail!753 (tail!753 input!2705)) (tail!753 (tail!753 lt!243934))))))

(assert (= (and d!202969 (not res!248370)) b!577554))

(assert (= (and b!577554 res!248369) b!577555))

(assert (= (and b!577555 res!248372) b!577556))

(assert (= (and d!202969 (not res!248371)) b!577557))

(assert (=> b!577555 m!833863))

(assert (=> b!577555 m!834711))

(assert (=> b!577555 m!833891))

(declare-fun m!835495 () Bool)

(assert (=> b!577555 m!835495))

(assert (=> b!577557 m!833891))

(declare-fun m!835497 () Bool)

(assert (=> b!577557 m!835497))

(assert (=> b!577557 m!833863))

(declare-fun m!835499 () Bool)

(assert (=> b!577557 m!835499))

(assert (=> b!577556 m!833863))

(assert (=> b!577556 m!834713))

(assert (=> b!577556 m!833891))

(declare-fun m!835501 () Bool)

(assert (=> b!577556 m!835501))

(assert (=> b!577556 m!834713))

(assert (=> b!577556 m!835501))

(declare-fun m!835503 () Bool)

(assert (=> b!577556 m!835503))

(assert (=> b!576508 d!202969))

(assert (=> b!576508 d!202669))

(declare-fun d!202971 () Bool)

(assert (=> d!202971 (= (tail!753 lt!243934) (t!77391 lt!243934))))

(assert (=> b!576508 d!202971))

(declare-fun b!577558 () Bool)

(declare-fun e!349023 () List!5678)

(assert (=> b!577558 (= e!349023 (_2!3590 (get!2163 lt!244102)))))

(declare-fun b!577561 () Bool)

(declare-fun e!349024 () Bool)

(declare-fun lt!244556 () List!5678)

(assert (=> b!577561 (= e!349024 (or (not (= (_2!3590 (get!2163 lt!244102)) Nil!5668)) (= lt!244556 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102)))))))))

(declare-fun d!202973 () Bool)

(assert (=> d!202973 e!349024))

(declare-fun res!248373 () Bool)

(assert (=> d!202973 (=> (not res!248373) (not e!349024))))

(assert (=> d!202973 (= res!248373 (= (content!1001 lt!244556) ((_ map or) (content!1001 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))) (content!1001 (_2!3590 (get!2163 lt!244102))))))))

(assert (=> d!202973 (= lt!244556 e!349023)))

(declare-fun c!108181 () Bool)

(assert (=> d!202973 (= c!108181 ((_ is Nil!5668) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))))))

(assert (=> d!202973 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102)))) (_2!3590 (get!2163 lt!244102))) lt!244556)))

(declare-fun b!577560 () Bool)

(declare-fun res!248374 () Bool)

(assert (=> b!577560 (=> (not res!248374) (not e!349024))))

(assert (=> b!577560 (= res!248374 (= (size!4513 lt!244556) (+ (size!4513 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))) (size!4513 (_2!3590 (get!2163 lt!244102))))))))

(declare-fun b!577559 () Bool)

(assert (=> b!577559 (= e!349023 (Cons!5668 (h!11069 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))) (++!1587 (t!77391 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244102))))) (_2!3590 (get!2163 lt!244102)))))))

(assert (= (and d!202973 c!108181) b!577558))

(assert (= (and d!202973 (not c!108181)) b!577559))

(assert (= (and d!202973 res!248373) b!577560))

(assert (= (and b!577560 res!248374) b!577561))

(declare-fun m!835505 () Bool)

(assert (=> d!202973 m!835505))

(assert (=> d!202973 m!834235))

(declare-fun m!835507 () Bool)

(assert (=> d!202973 m!835507))

(declare-fun m!835509 () Bool)

(assert (=> d!202973 m!835509))

(declare-fun m!835511 () Bool)

(assert (=> b!577560 m!835511))

(assert (=> b!577560 m!834235))

(declare-fun m!835513 () Bool)

(assert (=> b!577560 m!835513))

(assert (=> b!577560 m!834253))

(declare-fun m!835515 () Bool)

(assert (=> b!577559 m!835515))

(assert (=> b!576695 d!202973))

(assert (=> b!576695 d!202785))

(assert (=> b!576695 d!202787))

(assert (=> b!576695 d!202793))

(assert (=> d!202591 d!202889))

(declare-fun b!577597 () Bool)

(declare-fun e!349051 () Bool)

(declare-fun e!349053 () Bool)

(assert (=> b!577597 (= e!349051 e!349053)))

(declare-fun res!248394 () Bool)

(assert (=> b!577597 (=> (not res!248394) (not e!349053))))

(declare-fun call!39945 () Bool)

(assert (=> b!577597 (= res!248394 call!39945)))

(declare-fun d!202975 () Bool)

(declare-fun res!248398 () Bool)

(declare-fun e!349050 () Bool)

(assert (=> d!202975 (=> res!248398 e!349050)))

(assert (=> d!202975 (= res!248398 ((_ is ElementMatch!1433) (regex!1099 (rule!1849 token!491))))))

(assert (=> d!202975 (= (validRegex!481 (regex!1099 (rule!1849 token!491))) e!349050)))

(declare-fun b!577598 () Bool)

(declare-fun e!349048 () Bool)

(assert (=> b!577598 (= e!349048 call!39945)))

(declare-fun b!577599 () Bool)

(declare-fun res!248397 () Bool)

(assert (=> b!577599 (=> res!248397 e!349051)))

(assert (=> b!577599 (= res!248397 (not ((_ is Concat!2556) (regex!1099 (rule!1849 token!491)))))))

(declare-fun e!349049 () Bool)

(assert (=> b!577599 (= e!349049 e!349051)))

(declare-fun bm!39938 () Bool)

(declare-fun call!39944 () Bool)

(assert (=> bm!39938 (= call!39945 call!39944)))

(declare-fun b!577600 () Bool)

(declare-fun e!349052 () Bool)

(assert (=> b!577600 (= e!349050 e!349052)))

(declare-fun c!108189 () Bool)

(assert (=> b!577600 (= c!108189 ((_ is Star!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun b!577601 () Bool)

(declare-fun e!349047 () Bool)

(assert (=> b!577601 (= e!349052 e!349047)))

(declare-fun res!248396 () Bool)

(assert (=> b!577601 (= res!248396 (not (nullable!386 (reg!1762 (regex!1099 (rule!1849 token!491))))))))

(assert (=> b!577601 (=> (not res!248396) (not e!349047))))

(declare-fun b!577602 () Bool)

(assert (=> b!577602 (= e!349052 e!349049)))

(declare-fun c!108190 () Bool)

(assert (=> b!577602 (= c!108190 ((_ is Union!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun bm!39939 () Bool)

(assert (=> bm!39939 (= call!39944 (validRegex!481 (ite c!108189 (reg!1762 (regex!1099 (rule!1849 token!491))) (ite c!108190 (regTwo!3379 (regex!1099 (rule!1849 token!491))) (regOne!3378 (regex!1099 (rule!1849 token!491)))))))))

(declare-fun bm!39940 () Bool)

(declare-fun call!39943 () Bool)

(assert (=> bm!39940 (= call!39943 (validRegex!481 (ite c!108190 (regOne!3379 (regex!1099 (rule!1849 token!491))) (regTwo!3378 (regex!1099 (rule!1849 token!491))))))))

(declare-fun b!577603 () Bool)

(declare-fun res!248395 () Bool)

(assert (=> b!577603 (=> (not res!248395) (not e!349048))))

(assert (=> b!577603 (= res!248395 call!39943)))

(assert (=> b!577603 (= e!349049 e!349048)))

(declare-fun b!577604 () Bool)

(assert (=> b!577604 (= e!349053 call!39943)))

(declare-fun b!577605 () Bool)

(assert (=> b!577605 (= e!349047 call!39944)))

(assert (= (and d!202975 (not res!248398)) b!577600))

(assert (= (and b!577600 c!108189) b!577601))

(assert (= (and b!577600 (not c!108189)) b!577602))

(assert (= (and b!577601 res!248396) b!577605))

(assert (= (and b!577602 c!108190) b!577603))

(assert (= (and b!577602 (not c!108190)) b!577599))

(assert (= (and b!577603 res!248395) b!577598))

(assert (= (and b!577599 (not res!248397)) b!577597))

(assert (= (and b!577597 res!248394) b!577604))

(assert (= (or b!577603 b!577604) bm!39940))

(assert (= (or b!577598 b!577597) bm!39938))

(assert (= (or b!577605 bm!39938) bm!39939))

(declare-fun m!835567 () Bool)

(assert (=> b!577601 m!835567))

(declare-fun m!835569 () Bool)

(assert (=> bm!39939 m!835569))

(declare-fun m!835571 () Bool)

(assert (=> bm!39940 m!835571))

(assert (=> d!202453 d!202975))

(declare-fun d!202991 () Bool)

(assert (=> d!202991 (= (isEmpty!4096 lt!244097) (not ((_ is Some!1449) lt!244097)))))

(assert (=> d!202481 d!202991))

(declare-fun d!202995 () Bool)

(assert (=> d!202995 (= (isEmpty!4093 (_1!3591 lt!244098)) ((_ is Nil!5668) (_1!3591 lt!244098)))))

(assert (=> d!202481 d!202995))

(declare-fun d!202997 () Bool)

(declare-fun lt!244568 () tuple2!6654)

(assert (=> d!202997 (= (++!1587 (_1!3591 lt!244568) (_2!3591 lt!244568)) lt!243952)))

(assert (=> d!202997 (= lt!244568 (findLongestMatchInner!170 (regex!1099 (rule!1849 token!491)) Nil!5668 0 lt!243952 lt!243952 (sizeTr!32 lt!243952 0)))))

(declare-fun lt!244565 () Unit!10237)

(declare-fun lt!244570 () Unit!10237)

(assert (=> d!202997 (= lt!244565 lt!244570)))

(declare-fun lt!244566 () List!5678)

(declare-fun lt!244567 () Int)

(assert (=> d!202997 (= (sizeTr!32 lt!244566 lt!244567) (+ (size!4513 lt!244566) lt!244567))))

(assert (=> d!202997 (= lt!244570 (lemmaSizeTrEqualsSize!32 lt!244566 lt!244567))))

(assert (=> d!202997 (= lt!244567 0)))

(assert (=> d!202997 (= lt!244566 Nil!5668)))

(declare-fun lt!244569 () Unit!10237)

(declare-fun lt!244572 () Unit!10237)

(assert (=> d!202997 (= lt!244569 lt!244572)))

(declare-fun lt!244571 () Int)

(assert (=> d!202997 (= (sizeTr!32 lt!243952 lt!244571) (+ (size!4513 lt!243952) lt!244571))))

(assert (=> d!202997 (= lt!244572 (lemmaSizeTrEqualsSize!32 lt!243952 lt!244571))))

(assert (=> d!202997 (= lt!244571 0)))

(assert (=> d!202997 (validRegex!481 (regex!1099 (rule!1849 token!491)))))

(assert (=> d!202997 (= (findLongestMatch!149 (regex!1099 (rule!1849 token!491)) lt!243952) lt!244568)))

(declare-fun bs!69497 () Bool)

(assert (= bs!69497 d!202997))

(declare-fun m!835579 () Bool)

(assert (=> bs!69497 m!835579))

(declare-fun m!835581 () Bool)

(assert (=> bs!69497 m!835581))

(assert (=> bs!69497 m!834047))

(declare-fun m!835583 () Bool)

(assert (=> bs!69497 m!835583))

(declare-fun m!835585 () Bool)

(assert (=> bs!69497 m!835585))

(declare-fun m!835587 () Bool)

(assert (=> bs!69497 m!835587))

(assert (=> bs!69497 m!835585))

(declare-fun m!835589 () Bool)

(assert (=> bs!69497 m!835589))

(declare-fun m!835591 () Bool)

(assert (=> bs!69497 m!835591))

(declare-fun m!835593 () Bool)

(assert (=> bs!69497 m!835593))

(assert (=> bs!69497 m!833939))

(assert (=> d!202481 d!202997))

(assert (=> d!202481 d!202453))

(assert (=> d!202597 d!202593))

(declare-fun d!203003 () Bool)

(declare-fun e!349062 () Bool)

(assert (=> d!203003 e!349062))

(declare-fun res!248406 () Bool)

(assert (=> d!203003 (=> (not res!248406) (not e!349062))))

(declare-fun lt!244580 () BalanceConc!3640)

(assert (=> d!203003 (= res!248406 (= (list!2355 lt!244580) lt!243959))))

(declare-fun fromList!269 (List!5678) Conc!1816)

(assert (=> d!203003 (= lt!244580 (BalanceConc!3641 (fromList!269 lt!243959)))))

(assert (=> d!203003 (= (fromListB!561 lt!243959) lt!244580)))

(declare-fun b!577617 () Bool)

(assert (=> b!577617 (= e!349062 (isBalanced!510 (fromList!269 lt!243959)))))

(assert (= (and d!203003 res!248406) b!577617))

(declare-fun m!835609 () Bool)

(assert (=> d!203003 m!835609))

(declare-fun m!835611 () Bool)

(assert (=> d!203003 m!835611))

(assert (=> b!577617 m!835611))

(assert (=> b!577617 m!835611))

(declare-fun m!835613 () Bool)

(assert (=> b!577617 m!835613))

(assert (=> d!202465 d!203003))

(declare-fun d!203015 () Bool)

(assert (=> d!203015 (= (isDefined!1261 lt!244139) (not (isEmpty!4096 lt!244139)))))

(declare-fun bs!69504 () Bool)

(assert (= bs!69504 d!203015))

(assert (=> bs!69504 m!834403))

(assert (=> b!576773 d!203015))

(declare-fun b!577618 () Bool)

(declare-fun e!349065 () Bool)

(declare-fun e!349064 () Bool)

(assert (=> b!577618 (= e!349065 e!349064)))

(declare-fun res!248407 () Bool)

(assert (=> b!577618 (=> (not res!248407) (not e!349064))))

(assert (=> b!577618 (= res!248407 (not ((_ is Nil!5668) (tail!753 lt!243952))))))

(declare-fun b!577619 () Bool)

(declare-fun res!248410 () Bool)

(assert (=> b!577619 (=> (not res!248410) (not e!349064))))

(assert (=> b!577619 (= res!248410 (= (head!1224 (tail!753 input!2705)) (head!1224 (tail!753 lt!243952))))))

(declare-fun b!577621 () Bool)

(declare-fun e!349063 () Bool)

(assert (=> b!577621 (= e!349063 (>= (size!4513 (tail!753 lt!243952)) (size!4513 (tail!753 input!2705))))))

(declare-fun d!203017 () Bool)

(assert (=> d!203017 e!349063))

(declare-fun res!248409 () Bool)

(assert (=> d!203017 (=> res!248409 e!349063)))

(declare-fun lt!244581 () Bool)

(assert (=> d!203017 (= res!248409 (not lt!244581))))

(assert (=> d!203017 (= lt!244581 e!349065)))

(declare-fun res!248408 () Bool)

(assert (=> d!203017 (=> res!248408 e!349065)))

(assert (=> d!203017 (= res!248408 ((_ is Nil!5668) (tail!753 input!2705)))))

(assert (=> d!203017 (= (isPrefix!733 (tail!753 input!2705) (tail!753 lt!243952)) lt!244581)))

(declare-fun b!577620 () Bool)

(assert (=> b!577620 (= e!349064 (isPrefix!733 (tail!753 (tail!753 input!2705)) (tail!753 (tail!753 lt!243952))))))

(assert (= (and d!203017 (not res!248408)) b!577618))

(assert (= (and b!577618 res!248407) b!577619))

(assert (= (and b!577619 res!248410) b!577620))

(assert (= (and d!203017 (not res!248409)) b!577621))

(assert (=> b!577619 m!833863))

(assert (=> b!577619 m!834711))

(assert (=> b!577619 m!833943))

(declare-fun m!835617 () Bool)

(assert (=> b!577619 m!835617))

(assert (=> b!577621 m!833943))

(assert (=> b!577621 m!834763))

(assert (=> b!577621 m!833863))

(assert (=> b!577621 m!835499))

(assert (=> b!577620 m!833863))

(assert (=> b!577620 m!834713))

(assert (=> b!577620 m!833943))

(assert (=> b!577620 m!834765))

(assert (=> b!577620 m!834713))

(assert (=> b!577620 m!834765))

(declare-fun m!835619 () Bool)

(assert (=> b!577620 m!835619))

(assert (=> b!576480 d!203017))

(assert (=> b!576480 d!202669))

(assert (=> b!576480 d!202673))

(declare-fun d!203021 () Bool)

(assert (=> d!203021 (= (nullable!386 (regex!1099 (rule!1849 token!491))) (nullableFct!133 (regex!1099 (rule!1849 token!491))))))

(declare-fun bs!69506 () Bool)

(assert (= bs!69506 d!203021))

(declare-fun m!835621 () Bool)

(assert (=> bs!69506 m!835621))

(assert (=> b!576548 d!203021))

(declare-fun b!577622 () Bool)

(declare-fun e!349066 () Bool)

(declare-fun lt!244585 () Option!1450)

(assert (=> b!577622 (= e!349066 (= (size!4512 (_1!3590 (get!2163 lt!244585))) (size!4513 (originalCharacters!1138 (_1!3590 (get!2163 lt!244585))))))))

(declare-fun b!577623 () Bool)

(declare-fun res!248413 () Bool)

(assert (=> b!577623 (=> (not res!248413) (not e!349066))))

(assert (=> b!577623 (= res!248413 (= (rule!1849 (_1!3590 (get!2163 lt!244585))) (h!11071 rules!3103)))))

(declare-fun d!203023 () Bool)

(declare-fun e!349068 () Bool)

(assert (=> d!203023 e!349068))

(declare-fun res!248411 () Bool)

(assert (=> d!203023 (=> res!248411 e!349068)))

(assert (=> d!203023 (= res!248411 (isEmpty!4096 lt!244585))))

(declare-fun e!349069 () Option!1450)

(assert (=> d!203023 (= lt!244585 e!349069)))

(declare-fun c!108194 () Bool)

(declare-fun lt!244586 () tuple2!6654)

(assert (=> d!203023 (= c!108194 (isEmpty!4093 (_1!3591 lt!244586)))))

(assert (=> d!203023 (= lt!244586 (findLongestMatch!149 (regex!1099 (h!11071 rules!3103)) lt!243952))))

(assert (=> d!203023 (ruleValid!309 thiss!22590 (h!11071 rules!3103))))

(assert (=> d!203023 (= (maxPrefixOneRule!384 thiss!22590 (h!11071 rules!3103) lt!243952) lt!244585)))

(declare-fun b!577624 () Bool)

(assert (=> b!577624 (= e!349069 None!1449)))

(declare-fun b!577625 () Bool)

(declare-fun e!349067 () Bool)

(assert (=> b!577625 (= e!349067 (matchR!580 (regex!1099 (h!11071 rules!3103)) (_1!3591 (findLongestMatchInner!170 (regex!1099 (h!11071 rules!3103)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(declare-fun b!577626 () Bool)

(declare-fun res!248414 () Bool)

(assert (=> b!577626 (=> (not res!248414) (not e!349066))))

(assert (=> b!577626 (= res!248414 (= (value!36188 (_1!3590 (get!2163 lt!244585))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244585)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244585)))))))))

(declare-fun b!577627 () Bool)

(declare-fun res!248417 () Bool)

(assert (=> b!577627 (=> (not res!248417) (not e!349066))))

(assert (=> b!577627 (= res!248417 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244585)))) (_2!3590 (get!2163 lt!244585))) lt!243952))))

(declare-fun b!577628 () Bool)

(assert (=> b!577628 (= e!349069 (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (h!11071 rules!3103)) (seqFromList!1287 (_1!3591 lt!244586))) (h!11071 rules!3103) (size!4514 (seqFromList!1287 (_1!3591 lt!244586))) (_1!3591 lt!244586)) (_2!3591 lt!244586))))))

(declare-fun lt!244582 () Unit!10237)

(assert (=> b!577628 (= lt!244582 (longestMatchIsAcceptedByMatchOrIsEmpty!154 (regex!1099 (h!11071 rules!3103)) lt!243952))))

(declare-fun res!248412 () Bool)

(assert (=> b!577628 (= res!248412 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (h!11071 rules!3103)) Nil!5668 (size!4513 Nil!5668) lt!243952 lt!243952 (size!4513 lt!243952)))))))

(assert (=> b!577628 (=> res!248412 e!349067)))

(assert (=> b!577628 e!349067))

(declare-fun lt!244583 () Unit!10237)

(assert (=> b!577628 (= lt!244583 lt!244582)))

(declare-fun lt!244584 () Unit!10237)

(assert (=> b!577628 (= lt!244584 (lemmaSemiInverse!202 (transformation!1099 (h!11071 rules!3103)) (seqFromList!1287 (_1!3591 lt!244586))))))

(declare-fun b!577629 () Bool)

(declare-fun res!248416 () Bool)

(assert (=> b!577629 (=> (not res!248416) (not e!349066))))

(assert (=> b!577629 (= res!248416 (< (size!4513 (_2!3590 (get!2163 lt!244585))) (size!4513 lt!243952)))))

(declare-fun b!577630 () Bool)

(assert (=> b!577630 (= e!349068 e!349066)))

(declare-fun res!248415 () Bool)

(assert (=> b!577630 (=> (not res!248415) (not e!349066))))

(assert (=> b!577630 (= res!248415 (matchR!580 (regex!1099 (h!11071 rules!3103)) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244585))))))))

(assert (= (and d!203023 c!108194) b!577624))

(assert (= (and d!203023 (not c!108194)) b!577628))

(assert (= (and b!577628 (not res!248412)) b!577625))

(assert (= (and d!203023 (not res!248411)) b!577630))

(assert (= (and b!577630 res!248415) b!577627))

(assert (= (and b!577627 res!248417) b!577629))

(assert (= (and b!577629 res!248416) b!577623))

(assert (= (and b!577623 res!248413) b!577626))

(assert (= (and b!577626 res!248414) b!577622))

(declare-fun m!835625 () Bool)

(assert (=> b!577628 m!835625))

(assert (=> b!577628 m!835625))

(declare-fun m!835627 () Bool)

(assert (=> b!577628 m!835627))

(assert (=> b!577628 m!834179))

(assert (=> b!577628 m!833939))

(declare-fun m!835629 () Bool)

(assert (=> b!577628 m!835629))

(assert (=> b!577628 m!833939))

(declare-fun m!835631 () Bool)

(assert (=> b!577628 m!835631))

(assert (=> b!577628 m!835625))

(declare-fun m!835635 () Bool)

(assert (=> b!577628 m!835635))

(declare-fun m!835637 () Bool)

(assert (=> b!577628 m!835637))

(assert (=> b!577628 m!835625))

(declare-fun m!835639 () Bool)

(assert (=> b!577628 m!835639))

(assert (=> b!577628 m!834179))

(declare-fun m!835641 () Bool)

(assert (=> b!577630 m!835641))

(declare-fun m!835643 () Bool)

(assert (=> b!577630 m!835643))

(assert (=> b!577630 m!835643))

(declare-fun m!835647 () Bool)

(assert (=> b!577630 m!835647))

(assert (=> b!577630 m!835647))

(declare-fun m!835649 () Bool)

(assert (=> b!577630 m!835649))

(assert (=> b!577623 m!835641))

(assert (=> b!577625 m!834179))

(assert (=> b!577625 m!833939))

(assert (=> b!577625 m!834179))

(assert (=> b!577625 m!833939))

(assert (=> b!577625 m!835629))

(declare-fun m!835653 () Bool)

(assert (=> b!577625 m!835653))

(assert (=> b!577622 m!835641))

(declare-fun m!835655 () Bool)

(assert (=> b!577622 m!835655))

(declare-fun m!835657 () Bool)

(assert (=> d!203023 m!835657))

(declare-fun m!835659 () Bool)

(assert (=> d!203023 m!835659))

(declare-fun m!835661 () Bool)

(assert (=> d!203023 m!835661))

(assert (=> d!203023 m!835327))

(assert (=> b!577626 m!835641))

(declare-fun m!835663 () Bool)

(assert (=> b!577626 m!835663))

(assert (=> b!577626 m!835663))

(declare-fun m!835665 () Bool)

(assert (=> b!577626 m!835665))

(assert (=> b!577629 m!835641))

(declare-fun m!835667 () Bool)

(assert (=> b!577629 m!835667))

(assert (=> b!577629 m!833939))

(assert (=> b!577627 m!835641))

(assert (=> b!577627 m!835643))

(assert (=> b!577627 m!835643))

(assert (=> b!577627 m!835647))

(assert (=> b!577627 m!835647))

(declare-fun m!835669 () Bool)

(assert (=> b!577627 m!835669))

(assert (=> bm!39835 d!203023))

(declare-fun b!577641 () Bool)

(declare-fun e!349075 () List!5678)

(assert (=> b!577641 (= e!349075 (_2!3590 (v!16310 lt!243932)))))

(declare-fun b!577644 () Bool)

(declare-fun e!349076 () Bool)

(declare-fun lt!244593 () List!5678)

(assert (=> b!577644 (= e!349076 (or (not (= (_2!3590 (v!16310 lt!243932)) Nil!5668)) (= lt!244593 (t!77391 lt!243959))))))

(declare-fun d!203033 () Bool)

(assert (=> d!203033 e!349076))

(declare-fun res!248418 () Bool)

(assert (=> d!203033 (=> (not res!248418) (not e!349076))))

(assert (=> d!203033 (= res!248418 (= (content!1001 lt!244593) ((_ map or) (content!1001 (t!77391 lt!243959)) (content!1001 (_2!3590 (v!16310 lt!243932))))))))

(assert (=> d!203033 (= lt!244593 e!349075)))

(declare-fun c!108200 () Bool)

(assert (=> d!203033 (= c!108200 ((_ is Nil!5668) (t!77391 lt!243959)))))

(assert (=> d!203033 (= (++!1587 (t!77391 lt!243959) (_2!3590 (v!16310 lt!243932))) lt!244593)))

(declare-fun b!577643 () Bool)

(declare-fun res!248419 () Bool)

(assert (=> b!577643 (=> (not res!248419) (not e!349076))))

(assert (=> b!577643 (= res!248419 (= (size!4513 lt!244593) (+ (size!4513 (t!77391 lt!243959)) (size!4513 (_2!3590 (v!16310 lt!243932))))))))

(declare-fun b!577642 () Bool)

(assert (=> b!577642 (= e!349075 (Cons!5668 (h!11069 (t!77391 lt!243959)) (++!1587 (t!77391 (t!77391 lt!243959)) (_2!3590 (v!16310 lt!243932)))))))

(assert (= (and d!203033 c!108200) b!577641))

(assert (= (and d!203033 (not c!108200)) b!577642))

(assert (= (and d!203033 res!248418) b!577643))

(assert (= (and b!577643 res!248419) b!577644))

(declare-fun m!835671 () Bool)

(assert (=> d!203033 m!835671))

(declare-fun m!835673 () Bool)

(assert (=> d!203033 m!835673))

(assert (=> d!203033 m!834019))

(declare-fun m!835675 () Bool)

(assert (=> b!577643 m!835675))

(assert (=> b!577643 m!833911))

(assert (=> b!577643 m!834023))

(declare-fun m!835677 () Bool)

(assert (=> b!577642 m!835677))

(assert (=> b!576525 d!203033))

(declare-fun d!203035 () Bool)

(declare-fun lt!244594 () Int)

(assert (=> d!203035 (>= lt!244594 0)))

(declare-fun e!349078 () Int)

(assert (=> d!203035 (= lt!244594 e!349078)))

(declare-fun c!108202 () Bool)

(assert (=> d!203035 (= c!108202 ((_ is Nil!5668) (_2!3590 (get!2163 lt!244139))))))

(assert (=> d!203035 (= (size!4513 (_2!3590 (get!2163 lt!244139))) lt!244594)))

(declare-fun b!577647 () Bool)

(assert (=> b!577647 (= e!349078 0)))

(declare-fun b!577648 () Bool)

(assert (=> b!577648 (= e!349078 (+ 1 (size!4513 (t!77391 (_2!3590 (get!2163 lt!244139))))))))

(assert (= (and d!203035 c!108202) b!577647))

(assert (= (and d!203035 (not c!108202)) b!577648))

(declare-fun m!835681 () Bool)

(assert (=> b!577648 m!835681))

(assert (=> b!576769 d!203035))

(assert (=> b!576769 d!202803))

(assert (=> b!576769 d!202759))

(declare-fun bs!69509 () Bool)

(declare-fun d!203037 () Bool)

(assert (= bs!69509 (and d!203037 d!202681)))

(declare-fun lambda!15748 () Int)

(assert (=> bs!69509 (= (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) (= lambda!15748 lambda!15723))))

(declare-fun bs!69510 () Bool)

(assert (= bs!69510 (and d!203037 d!202903)))

(assert (=> bs!69510 (= (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (= lambda!15748 lambda!15736))))

(assert (=> d!203037 true))

(assert (=> d!203037 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (h!11071 rules!3103)))) (dynLambda!3297 order!4633 lambda!15748))))

(assert (=> d!203037 (= (equivClasses!408 (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (h!11071 rules!3103)))) (Forall2!210 lambda!15748))))

(declare-fun bs!69511 () Bool)

(assert (= bs!69511 d!203037))

(declare-fun m!835689 () Bool)

(assert (=> bs!69511 m!835689))

(assert (=> b!576914 d!203037))

(declare-fun d!203049 () Bool)

(assert (=> d!203049 (= (head!1224 lt!243959) (h!11069 lt!243959))))

(assert (=> b!576551 d!203049))

(declare-fun d!203051 () Bool)

(assert (=> d!203051 (= (head!1224 lt!243957) (h!11069 lt!243957))))

(assert (=> b!576551 d!203051))

(assert (=> b!576539 d!202667))

(declare-fun b!577657 () Bool)

(declare-fun e!349084 () List!5678)

(assert (=> b!577657 (= e!349084 suffix!1342)))

(declare-fun e!349085 () Bool)

(declare-fun lt!244598 () List!5678)

(declare-fun b!577660 () Bool)

(assert (=> b!577660 (= e!349085 (or (not (= suffix!1342 Nil!5668)) (= lt!244598 (t!77391 lt!243945))))))

(declare-fun d!203053 () Bool)

(assert (=> d!203053 e!349085))

(declare-fun res!248424 () Bool)

(assert (=> d!203053 (=> (not res!248424) (not e!349085))))

(assert (=> d!203053 (= res!248424 (= (content!1001 lt!244598) ((_ map or) (content!1001 (t!77391 lt!243945)) (content!1001 suffix!1342))))))

(assert (=> d!203053 (= lt!244598 e!349084)))

(declare-fun c!108205 () Bool)

(assert (=> d!203053 (= c!108205 ((_ is Nil!5668) (t!77391 lt!243945)))))

(assert (=> d!203053 (= (++!1587 (t!77391 lt!243945) suffix!1342) lt!244598)))

(declare-fun b!577659 () Bool)

(declare-fun res!248425 () Bool)

(assert (=> b!577659 (=> (not res!248425) (not e!349085))))

(assert (=> b!577659 (= res!248425 (= (size!4513 lt!244598) (+ (size!4513 (t!77391 lt!243945)) (size!4513 suffix!1342))))))

(declare-fun b!577658 () Bool)

(assert (=> b!577658 (= e!349084 (Cons!5668 (h!11069 (t!77391 lt!243945)) (++!1587 (t!77391 (t!77391 lt!243945)) suffix!1342)))))

(assert (= (and d!203053 c!108205) b!577657))

(assert (= (and d!203053 (not c!108205)) b!577658))

(assert (= (and d!203053 res!248424) b!577659))

(assert (= (and b!577659 res!248425) b!577660))

(declare-fun m!835699 () Bool)

(assert (=> d!203053 m!835699))

(assert (=> d!203053 m!835433))

(assert (=> d!203053 m!834457))

(declare-fun m!835701 () Bool)

(assert (=> b!577659 m!835701))

(assert (=> b!577659 m!833881))

(assert (=> b!577659 m!834461))

(declare-fun m!835703 () Bool)

(assert (=> b!577658 m!835703))

(assert (=> b!576843 d!203053))

(assert (=> b!576810 d!202667))

(declare-fun b!577675 () Bool)

(declare-fun e!349093 () Option!1450)

(declare-fun lt!244603 () Option!1450)

(declare-fun lt!244601 () Option!1450)

(assert (=> b!577675 (= e!349093 (ite (and ((_ is None!1449) lt!244603) ((_ is None!1449) lt!244601)) None!1449 (ite ((_ is None!1449) lt!244601) lt!244603 (ite ((_ is None!1449) lt!244603) lt!244601 (ite (>= (size!4512 (_1!3590 (v!16310 lt!244603))) (size!4512 (_1!3590 (v!16310 lt!244601)))) lt!244603 lt!244601)))))))

(declare-fun call!39947 () Option!1450)

(assert (=> b!577675 (= lt!244603 call!39947)))

(assert (=> b!577675 (= lt!244601 (maxPrefix!683 thiss!22590 (t!77393 (t!77393 rules!3103)) input!2705))))

(declare-fun b!577676 () Bool)

(assert (=> b!577676 (= e!349093 call!39947)))

(declare-fun b!577677 () Bool)

(declare-fun res!248435 () Bool)

(declare-fun e!349094 () Bool)

(assert (=> b!577677 (=> (not res!248435) (not e!349094))))

(declare-fun lt!244600 () Option!1450)

(assert (=> b!577677 (= res!248435 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244600)))) (_2!3590 (get!2163 lt!244600))) input!2705))))

(declare-fun b!577678 () Bool)

(declare-fun res!248436 () Bool)

(assert (=> b!577678 (=> (not res!248436) (not e!349094))))

(assert (=> b!577678 (= res!248436 (< (size!4513 (_2!3590 (get!2163 lt!244600))) (size!4513 input!2705)))))

(declare-fun d!203057 () Bool)

(declare-fun e!349095 () Bool)

(assert (=> d!203057 e!349095))

(declare-fun res!248434 () Bool)

(assert (=> d!203057 (=> res!248434 e!349095)))

(assert (=> d!203057 (= res!248434 (isEmpty!4096 lt!244600))))

(assert (=> d!203057 (= lt!244600 e!349093)))

(declare-fun c!108209 () Bool)

(assert (=> d!203057 (= c!108209 (and ((_ is Cons!5670) (t!77393 rules!3103)) ((_ is Nil!5670) (t!77393 (t!77393 rules!3103)))))))

(declare-fun lt!244604 () Unit!10237)

(declare-fun lt!244602 () Unit!10237)

(assert (=> d!203057 (= lt!244604 lt!244602)))

(assert (=> d!203057 (isPrefix!733 input!2705 input!2705)))

(assert (=> d!203057 (= lt!244602 (lemmaIsPrefixRefl!471 input!2705 input!2705))))

(assert (=> d!203057 (rulesValidInductive!394 thiss!22590 (t!77393 rules!3103))))

(assert (=> d!203057 (= (maxPrefix!683 thiss!22590 (t!77393 rules!3103) input!2705) lt!244600)))

(declare-fun b!577679 () Bool)

(declare-fun res!248440 () Bool)

(assert (=> b!577679 (=> (not res!248440) (not e!349094))))

(assert (=> b!577679 (= res!248440 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244600)))) (originalCharacters!1138 (_1!3590 (get!2163 lt!244600)))))))

(declare-fun b!577680 () Bool)

(declare-fun res!248438 () Bool)

(assert (=> b!577680 (=> (not res!248438) (not e!349094))))

(assert (=> b!577680 (= res!248438 (= (value!36188 (_1!3590 (get!2163 lt!244600))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244600)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244600)))))))))

(declare-fun b!577681 () Bool)

(declare-fun res!248439 () Bool)

(assert (=> b!577681 (=> (not res!248439) (not e!349094))))

(assert (=> b!577681 (= res!248439 (matchR!580 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244600)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244600))))))))

(declare-fun b!577682 () Bool)

(assert (=> b!577682 (= e!349095 e!349094)))

(declare-fun res!248437 () Bool)

(assert (=> b!577682 (=> (not res!248437) (not e!349094))))

(assert (=> b!577682 (= res!248437 (isDefined!1261 lt!244600))))

(declare-fun b!577683 () Bool)

(assert (=> b!577683 (= e!349094 (contains!1329 (t!77393 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244600)))))))

(declare-fun bm!39942 () Bool)

(assert (=> bm!39942 (= call!39947 (maxPrefixOneRule!384 thiss!22590 (h!11071 (t!77393 rules!3103)) input!2705))))

(assert (= (and d!203057 c!108209) b!577676))

(assert (= (and d!203057 (not c!108209)) b!577675))

(assert (= (or b!577676 b!577675) bm!39942))

(assert (= (and d!203057 (not res!248434)) b!577682))

(assert (= (and b!577682 res!248437) b!577679))

(assert (= (and b!577679 res!248440) b!577678))

(assert (= (and b!577678 res!248436) b!577677))

(assert (= (and b!577677 res!248435) b!577680))

(assert (= (and b!577680 res!248438) b!577681))

(assert (= (and b!577681 res!248439) b!577683))

(declare-fun m!835715 () Bool)

(assert (=> b!577680 m!835715))

(declare-fun m!835717 () Bool)

(assert (=> b!577680 m!835717))

(assert (=> b!577680 m!835717))

(declare-fun m!835719 () Bool)

(assert (=> b!577680 m!835719))

(assert (=> b!577681 m!835715))

(declare-fun m!835721 () Bool)

(assert (=> b!577681 m!835721))

(assert (=> b!577681 m!835721))

(declare-fun m!835723 () Bool)

(assert (=> b!577681 m!835723))

(assert (=> b!577681 m!835723))

(declare-fun m!835725 () Bool)

(assert (=> b!577681 m!835725))

(assert (=> b!577678 m!835715))

(declare-fun m!835727 () Bool)

(assert (=> b!577678 m!835727))

(assert (=> b!577678 m!833861))

(assert (=> b!577677 m!835715))

(assert (=> b!577677 m!835721))

(assert (=> b!577677 m!835721))

(assert (=> b!577677 m!835723))

(assert (=> b!577677 m!835723))

(declare-fun m!835731 () Bool)

(assert (=> b!577677 m!835731))

(declare-fun m!835733 () Bool)

(assert (=> b!577682 m!835733))

(declare-fun m!835735 () Bool)

(assert (=> b!577675 m!835735))

(assert (=> b!577683 m!835715))

(declare-fun m!835737 () Bool)

(assert (=> b!577683 m!835737))

(declare-fun m!835739 () Bool)

(assert (=> d!203057 m!835739))

(assert (=> d!203057 m!833829))

(assert (=> d!203057 m!833793))

(assert (=> d!203057 m!835009))

(assert (=> b!577679 m!835715))

(assert (=> b!577679 m!835721))

(assert (=> b!577679 m!835721))

(assert (=> b!577679 m!835723))

(declare-fun m!835743 () Bool)

(assert (=> bm!39942 m!835743))

(assert (=> b!576766 d!203057))

(declare-fun b!577684 () Bool)

(declare-fun e!349098 () Bool)

(declare-fun e!349097 () Bool)

(assert (=> b!577684 (= e!349098 e!349097)))

(declare-fun res!248441 () Bool)

(assert (=> b!577684 (=> (not res!248441) (not e!349097))))

(assert (=> b!577684 (= res!248441 (not ((_ is Nil!5668) (tail!753 input!2705))))))

(declare-fun b!577685 () Bool)

(declare-fun res!248444 () Bool)

(assert (=> b!577685 (=> (not res!248444) (not e!349097))))

(assert (=> b!577685 (= res!248444 (= (head!1224 (tail!753 input!2705)) (head!1224 (tail!753 input!2705))))))

(declare-fun b!577687 () Bool)

(declare-fun e!349096 () Bool)

(assert (=> b!577687 (= e!349096 (>= (size!4513 (tail!753 input!2705)) (size!4513 (tail!753 input!2705))))))

(declare-fun d!203065 () Bool)

(assert (=> d!203065 e!349096))

(declare-fun res!248443 () Bool)

(assert (=> d!203065 (=> res!248443 e!349096)))

(declare-fun lt!244605 () Bool)

(assert (=> d!203065 (= res!248443 (not lt!244605))))

(assert (=> d!203065 (= lt!244605 e!349098)))

(declare-fun res!248442 () Bool)

(assert (=> d!203065 (=> res!248442 e!349098)))

(assert (=> d!203065 (= res!248442 ((_ is Nil!5668) (tail!753 input!2705)))))

(assert (=> d!203065 (= (isPrefix!733 (tail!753 input!2705) (tail!753 input!2705)) lt!244605)))

(declare-fun b!577686 () Bool)

(assert (=> b!577686 (= e!349097 (isPrefix!733 (tail!753 (tail!753 input!2705)) (tail!753 (tail!753 input!2705))))))

(assert (= (and d!203065 (not res!248442)) b!577684))

(assert (= (and b!577684 res!248441) b!577685))

(assert (= (and b!577685 res!248444) b!577686))

(assert (= (and d!203065 (not res!248443)) b!577687))

(assert (=> b!577685 m!833863))

(assert (=> b!577685 m!834711))

(assert (=> b!577685 m!833863))

(assert (=> b!577685 m!834711))

(assert (=> b!577687 m!833863))

(assert (=> b!577687 m!835499))

(assert (=> b!577687 m!833863))

(assert (=> b!577687 m!835499))

(assert (=> b!577686 m!833863))

(assert (=> b!577686 m!834713))

(assert (=> b!577686 m!833863))

(assert (=> b!577686 m!834713))

(assert (=> b!577686 m!834713))

(assert (=> b!577686 m!834713))

(declare-fun m!835755 () Bool)

(assert (=> b!577686 m!835755))

(assert (=> b!576540 d!203065))

(assert (=> b!576540 d!202669))

(declare-fun d!203073 () Bool)

(assert (=> d!203073 (= (list!2355 lt!244038) (list!2356 (c!107922 lt!244038)))))

(declare-fun bs!69517 () Bool)

(assert (= bs!69517 d!203073))

(declare-fun m!835757 () Bool)

(assert (=> bs!69517 m!835757))

(assert (=> d!202439 d!203073))

(declare-fun b!577697 () Bool)

(declare-fun e!349105 () Bool)

(declare-fun e!349104 () Bool)

(assert (=> b!577697 (= e!349105 e!349104)))

(declare-fun res!248452 () Bool)

(assert (=> b!577697 (=> (not res!248452) (not e!349104))))

(assert (=> b!577697 (= res!248452 (not ((_ is Nil!5668) (++!1587 input!2705 suffix!1342))))))

(declare-fun b!577698 () Bool)

(declare-fun res!248455 () Bool)

(assert (=> b!577698 (=> (not res!248455) (not e!349104))))

(assert (=> b!577698 (= res!248455 (= (head!1224 input!2705) (head!1224 (++!1587 input!2705 suffix!1342))))))

(declare-fun b!577700 () Bool)

(declare-fun e!349103 () Bool)

(assert (=> b!577700 (= e!349103 (>= (size!4513 (++!1587 input!2705 suffix!1342)) (size!4513 input!2705)))))

(declare-fun d!203075 () Bool)

(assert (=> d!203075 e!349103))

(declare-fun res!248454 () Bool)

(assert (=> d!203075 (=> res!248454 e!349103)))

(declare-fun lt!244612 () Bool)

(assert (=> d!203075 (= res!248454 (not lt!244612))))

(assert (=> d!203075 (= lt!244612 e!349105)))

(declare-fun res!248453 () Bool)

(assert (=> d!203075 (=> res!248453 e!349105)))

(assert (=> d!203075 (= res!248453 ((_ is Nil!5668) input!2705))))

(assert (=> d!203075 (= (isPrefix!733 input!2705 (++!1587 input!2705 suffix!1342)) lt!244612)))

(declare-fun b!577699 () Bool)

(assert (=> b!577699 (= e!349104 (isPrefix!733 (tail!753 input!2705) (tail!753 (++!1587 input!2705 suffix!1342))))))

(assert (= (and d!203075 (not res!248453)) b!577697))

(assert (= (and b!577697 res!248452) b!577698))

(assert (= (and b!577698 res!248455) b!577699))

(assert (= (and d!203075 (not res!248454)) b!577700))

(assert (=> b!577698 m!833935))

(assert (=> b!577698 m!833725))

(declare-fun m!835759 () Bool)

(assert (=> b!577698 m!835759))

(assert (=> b!577700 m!833725))

(declare-fun m!835761 () Bool)

(assert (=> b!577700 m!835761))

(assert (=> b!577700 m!833861))

(assert (=> b!577699 m!833863))

(assert (=> b!577699 m!833725))

(declare-fun m!835763 () Bool)

(assert (=> b!577699 m!835763))

(assert (=> b!577699 m!833863))

(assert (=> b!577699 m!835763))

(declare-fun m!835765 () Bool)

(assert (=> b!577699 m!835765))

(assert (=> d!202451 d!203075))

(assert (=> d!202451 d!202561))

(declare-fun d!203077 () Bool)

(assert (=> d!203077 (isPrefix!733 input!2705 (++!1587 input!2705 suffix!1342))))

(assert (=> d!203077 true))

(declare-fun _$46!922 () Unit!10237)

(assert (=> d!203077 (= (choose!4129 input!2705 suffix!1342) _$46!922)))

(declare-fun bs!69518 () Bool)

(assert (= bs!69518 d!203077))

(assert (=> bs!69518 m!833725))

(assert (=> bs!69518 m!833725))

(assert (=> bs!69518 m!834043))

(assert (=> d!202451 d!203077))

(assert (=> b!576685 d!202925))

(declare-fun d!203079 () Bool)

(assert (=> d!203079 (= (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097))))))))

(declare-fun b_lambda!22591 () Bool)

(assert (=> (not b_lambda!22591) (not d!203079)))

(declare-fun t!77573 () Bool)

(declare-fun tb!50441 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77573) tb!50441))

(declare-fun result!56468 () Bool)

(assert (=> tb!50441 (= result!56468 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097)))))))))

(declare-fun m!835767 () Bool)

(assert (=> tb!50441 m!835767))

(assert (=> d!203079 t!77573))

(declare-fun b_and!56627 () Bool)

(assert (= b_and!56621 (and (=> t!77573 result!56468) b_and!56627)))

(declare-fun t!77575 () Bool)

(declare-fun tb!50443 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77575) tb!50443))

(declare-fun result!56470 () Bool)

(assert (= result!56470 result!56468))

(assert (=> d!203079 t!77575))

(declare-fun b_and!56629 () Bool)

(assert (= b_and!56623 (and (=> t!77575 result!56470) b_and!56629)))

(declare-fun t!77577 () Bool)

(declare-fun tb!50445 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77577) tb!50445))

(declare-fun result!56472 () Bool)

(assert (= result!56472 result!56468))

(assert (=> d!203079 t!77577))

(declare-fun b_and!56631 () Bool)

(assert (= b_and!56625 (and (=> t!77577 result!56472) b_and!56631)))

(assert (=> d!203079 m!834209))

(declare-fun m!835783 () Bool)

(assert (=> d!203079 m!835783))

(assert (=> b!576685 d!203079))

(declare-fun d!203081 () Bool)

(assert (=> d!203081 (= (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097)))) (fromListB!561 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097)))))))

(declare-fun bs!69519 () Bool)

(assert (= bs!69519 d!203081))

(declare-fun m!835791 () Bool)

(assert (=> bs!69519 m!835791))

(assert (=> b!576685 d!203081))

(declare-fun b!577701 () Bool)

(declare-fun e!349107 () List!5678)

(assert (=> b!577701 (= e!349107 (_2!3590 (get!2163 lt!244157)))))

(declare-fun b!577704 () Bool)

(declare-fun e!349108 () Bool)

(declare-fun lt!244613 () List!5678)

(assert (=> b!577704 (= e!349108 (or (not (= (_2!3590 (get!2163 lt!244157)) Nil!5668)) (= lt!244613 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))))))))

(declare-fun d!203083 () Bool)

(assert (=> d!203083 e!349108))

(declare-fun res!248456 () Bool)

(assert (=> d!203083 (=> (not res!248456) (not e!349108))))

(assert (=> d!203083 (= res!248456 (= (content!1001 lt!244613) ((_ map or) (content!1001 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))) (content!1001 (_2!3590 (get!2163 lt!244157))))))))

(assert (=> d!203083 (= lt!244613 e!349107)))

(declare-fun c!108211 () Bool)

(assert (=> d!203083 (= c!108211 ((_ is Nil!5668) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))))))

(assert (=> d!203083 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))) (_2!3590 (get!2163 lt!244157))) lt!244613)))

(declare-fun b!577703 () Bool)

(declare-fun res!248457 () Bool)

(assert (=> b!577703 (=> (not res!248457) (not e!349108))))

(assert (=> b!577703 (= res!248457 (= (size!4513 lt!244613) (+ (size!4513 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))) (size!4513 (_2!3590 (get!2163 lt!244157))))))))

(declare-fun b!577702 () Bool)

(assert (=> b!577702 (= e!349107 (Cons!5668 (h!11069 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))) (++!1587 (t!77391 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))) (_2!3590 (get!2163 lt!244157)))))))

(assert (= (and d!203083 c!108211) b!577701))

(assert (= (and d!203083 (not c!108211)) b!577702))

(assert (= (and d!203083 res!248456) b!577703))

(assert (= (and b!577703 res!248457) b!577704))

(declare-fun m!835809 () Bool)

(assert (=> d!203083 m!835809))

(assert (=> d!203083 m!834489))

(declare-fun m!835811 () Bool)

(assert (=> d!203083 m!835811))

(declare-fun m!835813 () Bool)

(assert (=> d!203083 m!835813))

(declare-fun m!835817 () Bool)

(assert (=> b!577703 m!835817))

(assert (=> b!577703 m!834489))

(declare-fun m!835819 () Bool)

(assert (=> b!577703 m!835819))

(assert (=> b!577703 m!834493))

(declare-fun m!835823 () Bool)

(assert (=> b!577702 m!835823))

(assert (=> b!576852 d!203083))

(assert (=> b!576852 d!202653))

(assert (=> b!576852 d!202655))

(assert (=> b!576852 d!202659))

(assert (=> b!576806 d!202667))

(declare-fun d!203087 () Bool)

(assert (=> d!203087 (= (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))) (isBalanced!510 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))))))

(declare-fun bs!69520 () Bool)

(assert (= bs!69520 d!203087))

(declare-fun m!835825 () Bool)

(assert (=> bs!69520 m!835825))

(assert (=> tb!50299 d!203087))

(assert (=> b!576691 d!202793))

(declare-fun d!203089 () Bool)

(assert (=> d!203089 (= (isEmpty!4096 lt!243941) (not ((_ is Some!1449) lt!243941)))))

(assert (=> d!202555 d!203089))

(declare-fun b!577709 () Bool)

(declare-fun e!349113 () Bool)

(declare-fun lt!244615 () Bool)

(declare-fun call!39948 () Bool)

(assert (=> b!577709 (= e!349113 (= lt!244615 call!39948))))

(declare-fun b!577710 () Bool)

(declare-fun e!349118 () Bool)

(assert (=> b!577710 (= e!349118 (not (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))) (c!107921 (regex!1099 (rule!1849 token!491))))))))

(declare-fun b!577711 () Bool)

(declare-fun e!349115 () Bool)

(assert (=> b!577711 (= e!349115 (nullable!386 (regex!1099 (rule!1849 token!491))))))

(declare-fun d!203091 () Bool)

(assert (=> d!203091 e!349113))

(declare-fun c!108214 () Bool)

(assert (=> d!203091 (= c!108214 ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 token!491))))))

(assert (=> d!203091 (= lt!244615 e!349115)))

(declare-fun c!108212 () Bool)

(assert (=> d!203091 (= c!108212 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))))))

(assert (=> d!203091 (validRegex!481 (regex!1099 (rule!1849 token!491)))))

(assert (=> d!203091 (= (matchR!580 (regex!1099 (rule!1849 token!491)) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))) lt!244615)))

(declare-fun b!577712 () Bool)

(assert (=> b!577712 (= e!349115 (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 token!491)) (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097)))))) (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097)))))))))

(declare-fun b!577713 () Bool)

(declare-fun e!349112 () Bool)

(assert (=> b!577713 (= e!349112 e!349118)))

(declare-fun res!248465 () Bool)

(assert (=> b!577713 (=> res!248465 e!349118)))

(assert (=> b!577713 (= res!248465 call!39948)))

(declare-fun b!577714 () Bool)

(declare-fun e!349116 () Bool)

(assert (=> b!577714 (= e!349116 (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))) (c!107921 (regex!1099 (rule!1849 token!491)))))))

(declare-fun b!577715 () Bool)

(declare-fun res!248466 () Bool)

(declare-fun e!349114 () Bool)

(assert (=> b!577715 (=> res!248466 e!349114)))

(assert (=> b!577715 (= res!248466 e!349116)))

(declare-fun res!248469 () Bool)

(assert (=> b!577715 (=> (not res!248469) (not e!349116))))

(assert (=> b!577715 (= res!248469 lt!244615)))

(declare-fun b!577716 () Bool)

(declare-fun e!349117 () Bool)

(assert (=> b!577716 (= e!349113 e!349117)))

(declare-fun c!108213 () Bool)

(assert (=> b!577716 (= c!108213 ((_ is EmptyLang!1433) (regex!1099 (rule!1849 token!491))))))

(declare-fun b!577717 () Bool)

(declare-fun res!248464 () Bool)

(assert (=> b!577717 (=> (not res!248464) (not e!349116))))

(assert (=> b!577717 (= res!248464 (not call!39948))))

(declare-fun b!577718 () Bool)

(declare-fun res!248463 () Bool)

(assert (=> b!577718 (=> res!248463 e!349114)))

(assert (=> b!577718 (= res!248463 (not ((_ is ElementMatch!1433) (regex!1099 (rule!1849 token!491)))))))

(assert (=> b!577718 (= e!349117 e!349114)))

(declare-fun b!577719 () Bool)

(assert (=> b!577719 (= e!349114 e!349112)))

(declare-fun res!248467 () Bool)

(assert (=> b!577719 (=> (not res!248467) (not e!349112))))

(assert (=> b!577719 (= res!248467 (not lt!244615))))

(declare-fun b!577720 () Bool)

(declare-fun res!248462 () Bool)

(assert (=> b!577720 (=> (not res!248462) (not e!349116))))

(assert (=> b!577720 (= res!248462 (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097)))))))))

(declare-fun b!577721 () Bool)

(assert (=> b!577721 (= e!349117 (not lt!244615))))

(declare-fun b!577722 () Bool)

(declare-fun res!248468 () Bool)

(assert (=> b!577722 (=> res!248468 e!349118)))

(assert (=> b!577722 (= res!248468 (not (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))))))))

(declare-fun bm!39943 () Bool)

(assert (=> bm!39943 (= call!39948 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))))))

(assert (= (and d!203091 c!108212) b!577711))

(assert (= (and d!203091 (not c!108212)) b!577712))

(assert (= (and d!203091 c!108214) b!577709))

(assert (= (and d!203091 (not c!108214)) b!577716))

(assert (= (and b!577716 c!108213) b!577721))

(assert (= (and b!577716 (not c!108213)) b!577718))

(assert (= (and b!577718 (not res!248463)) b!577715))

(assert (= (and b!577715 res!248469) b!577717))

(assert (= (and b!577717 res!248464) b!577720))

(assert (= (and b!577720 res!248462) b!577714))

(assert (= (and b!577715 (not res!248466)) b!577719))

(assert (= (and b!577719 res!248467) b!577713))

(assert (= (and b!577713 (not res!248465)) b!577722))

(assert (= (and b!577722 (not res!248468)) b!577710))

(assert (= (or b!577709 b!577713 b!577717) bm!39943))

(assert (=> b!577710 m!834195))

(declare-fun m!835839 () Bool)

(assert (=> b!577710 m!835839))

(assert (=> b!577720 m!834195))

(declare-fun m!835841 () Bool)

(assert (=> b!577720 m!835841))

(assert (=> b!577720 m!835841))

(declare-fun m!835843 () Bool)

(assert (=> b!577720 m!835843))

(assert (=> bm!39943 m!834195))

(declare-fun m!835845 () Bool)

(assert (=> bm!39943 m!835845))

(assert (=> b!577712 m!834195))

(assert (=> b!577712 m!835839))

(assert (=> b!577712 m!835839))

(declare-fun m!835847 () Bool)

(assert (=> b!577712 m!835847))

(assert (=> b!577712 m!834195))

(assert (=> b!577712 m!835841))

(assert (=> b!577712 m!835847))

(assert (=> b!577712 m!835841))

(declare-fun m!835851 () Bool)

(assert (=> b!577712 m!835851))

(assert (=> b!577722 m!834195))

(assert (=> b!577722 m!835841))

(assert (=> b!577722 m!835841))

(assert (=> b!577722 m!835843))

(assert (=> b!577711 m!834049))

(assert (=> d!203091 m!834195))

(assert (=> d!203091 m!835845))

(assert (=> d!203091 m!834047))

(assert (=> b!577714 m!834195))

(assert (=> b!577714 m!835839))

(assert (=> b!576689 d!203091))

(declare-fun d!203101 () Bool)

(assert (=> d!203101 (= (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097)))) (list!2356 (c!107922 (charsOf!728 (_1!3590 (get!2163 lt!244097))))))))

(declare-fun bs!69522 () Bool)

(assert (= bs!69522 d!203101))

(declare-fun m!835853 () Bool)

(assert (=> bs!69522 m!835853))

(assert (=> b!576689 d!203101))

(declare-fun d!203103 () Bool)

(declare-fun lt!244618 () BalanceConc!3640)

(assert (=> d!203103 (= (list!2355 lt!244618) (originalCharacters!1138 (_1!3590 (get!2163 lt!244097))))))

(assert (=> d!203103 (= lt!244618 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097))))) (value!36188 (_1!3590 (get!2163 lt!244097)))))))

(assert (=> d!203103 (= (charsOf!728 (_1!3590 (get!2163 lt!244097))) lt!244618)))

(declare-fun b_lambda!22593 () Bool)

(assert (=> (not b_lambda!22593) (not d!203103)))

(declare-fun tb!50447 () Bool)

(declare-fun t!77579 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77579) tb!50447))

(declare-fun b!577734 () Bool)

(declare-fun e!349126 () Bool)

(declare-fun tp!180804 () Bool)

(assert (=> b!577734 (= e!349126 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097))))) (value!36188 (_1!3590 (get!2163 lt!244097)))))) tp!180804))))

(declare-fun result!56474 () Bool)

(assert (=> tb!50447 (= result!56474 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097))))) (value!36188 (_1!3590 (get!2163 lt!244097))))) e!349126))))

(assert (= tb!50447 b!577734))

(declare-fun m!835869 () Bool)

(assert (=> b!577734 m!835869))

(declare-fun m!835871 () Bool)

(assert (=> tb!50447 m!835871))

(assert (=> d!203103 t!77579))

(declare-fun b_and!56633 () Bool)

(assert (= b_and!56579 (and (=> t!77579 result!56474) b_and!56633)))

(declare-fun tb!50449 () Bool)

(declare-fun t!77581 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77581) tb!50449))

(declare-fun result!56476 () Bool)

(assert (= result!56476 result!56474))

(assert (=> d!203103 t!77581))

(declare-fun b_and!56635 () Bool)

(assert (= b_and!56581 (and (=> t!77581 result!56476) b_and!56635)))

(declare-fun tb!50451 () Bool)

(declare-fun t!77583 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77583) tb!50451))

(declare-fun result!56478 () Bool)

(assert (= result!56478 result!56474))

(assert (=> d!203103 t!77583))

(declare-fun b_and!56637 () Bool)

(assert (= b_and!56583 (and (=> t!77583 result!56478) b_and!56637)))

(declare-fun m!835873 () Bool)

(assert (=> d!203103 m!835873))

(declare-fun m!835875 () Bool)

(assert (=> d!203103 m!835875))

(assert (=> b!576689 d!203103))

(assert (=> b!576689 d!202925))

(assert (=> d!202601 d!202917))

(declare-fun b!577736 () Bool)

(declare-fun e!349132 () Bool)

(declare-fun e!349134 () Bool)

(assert (=> b!577736 (= e!349132 e!349134)))

(declare-fun res!248477 () Bool)

(assert (=> b!577736 (=> (not res!248477) (not e!349134))))

(declare-fun call!39951 () Bool)

(assert (=> b!577736 (= res!248477 call!39951)))

(declare-fun d!203109 () Bool)

(declare-fun res!248481 () Bool)

(declare-fun e!349131 () Bool)

(assert (=> d!203109 (=> res!248481 e!349131)))

(assert (=> d!203109 (= res!248481 ((_ is ElementMatch!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(assert (=> d!203109 (= (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) e!349131)))

(declare-fun b!577737 () Bool)

(declare-fun e!349129 () Bool)

(assert (=> b!577737 (= e!349129 call!39951)))

(declare-fun b!577738 () Bool)

(declare-fun res!248480 () Bool)

(assert (=> b!577738 (=> res!248480 e!349132)))

(assert (=> b!577738 (= res!248480 (not ((_ is Concat!2556) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))

(declare-fun e!349130 () Bool)

(assert (=> b!577738 (= e!349130 e!349132)))

(declare-fun bm!39944 () Bool)

(declare-fun call!39950 () Bool)

(assert (=> bm!39944 (= call!39951 call!39950)))

(declare-fun b!577739 () Bool)

(declare-fun e!349133 () Bool)

(assert (=> b!577739 (= e!349131 e!349133)))

(declare-fun c!108217 () Bool)

(assert (=> b!577739 (= c!108217 ((_ is Star!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun b!577740 () Bool)

(declare-fun e!349128 () Bool)

(assert (=> b!577740 (= e!349133 e!349128)))

(declare-fun res!248479 () Bool)

(assert (=> b!577740 (= res!248479 (not (nullable!386 (reg!1762 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))))

(assert (=> b!577740 (=> (not res!248479) (not e!349128))))

(declare-fun b!577741 () Bool)

(assert (=> b!577741 (= e!349133 e!349130)))

(declare-fun c!108218 () Bool)

(assert (=> b!577741 (= c!108218 ((_ is Union!1433) (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))

(declare-fun bm!39945 () Bool)

(assert (=> bm!39945 (= call!39950 (validRegex!481 (ite c!108217 (reg!1762 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (ite c!108218 (regTwo!3379 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (regOne!3378 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))))))

(declare-fun bm!39946 () Bool)

(declare-fun call!39949 () Bool)

(assert (=> bm!39946 (= call!39949 (validRegex!481 (ite c!108218 (regOne!3379 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (regTwo!3378 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))))))

(declare-fun b!577742 () Bool)

(declare-fun res!248478 () Bool)

(assert (=> b!577742 (=> (not res!248478) (not e!349129))))

(assert (=> b!577742 (= res!248478 call!39949)))

(assert (=> b!577742 (= e!349130 e!349129)))

(declare-fun b!577743 () Bool)

(assert (=> b!577743 (= e!349134 call!39949)))

(declare-fun b!577744 () Bool)

(assert (=> b!577744 (= e!349128 call!39950)))

(assert (= (and d!203109 (not res!248481)) b!577739))

(assert (= (and b!577739 c!108217) b!577740))

(assert (= (and b!577739 (not c!108217)) b!577741))

(assert (= (and b!577740 res!248479) b!577744))

(assert (= (and b!577741 c!108218) b!577742))

(assert (= (and b!577741 (not c!108218)) b!577738))

(assert (= (and b!577742 res!248478) b!577737))

(assert (= (and b!577738 (not res!248480)) b!577736))

(assert (= (and b!577736 res!248477) b!577743))

(assert (= (or b!577742 b!577743) bm!39946))

(assert (= (or b!577737 b!577736) bm!39944))

(assert (= (or b!577744 bm!39944) bm!39945))

(declare-fun m!835885 () Bool)

(assert (=> b!577740 m!835885))

(declare-fun m!835887 () Bool)

(assert (=> bm!39945 m!835887))

(declare-fun m!835889 () Bool)

(assert (=> bm!39946 m!835889))

(assert (=> d!202359 d!203109))

(declare-fun b!577745 () Bool)

(declare-fun e!349135 () List!5678)

(assert (=> b!577745 (= e!349135 suffix!1342)))

(declare-fun lt!244620 () List!5678)

(declare-fun b!577748 () Bool)

(declare-fun e!349136 () Bool)

(assert (=> b!577748 (= e!349136 (or (not (= suffix!1342 Nil!5668)) (= lt!244620 (t!77391 input!2705))))))

(declare-fun d!203113 () Bool)

(assert (=> d!203113 e!349136))

(declare-fun res!248482 () Bool)

(assert (=> d!203113 (=> (not res!248482) (not e!349136))))

(assert (=> d!203113 (= res!248482 (= (content!1001 lt!244620) ((_ map or) (content!1001 (t!77391 input!2705)) (content!1001 suffix!1342))))))

(assert (=> d!203113 (= lt!244620 e!349135)))

(declare-fun c!108219 () Bool)

(assert (=> d!203113 (= c!108219 ((_ is Nil!5668) (t!77391 input!2705)))))

(assert (=> d!203113 (= (++!1587 (t!77391 input!2705) suffix!1342) lt!244620)))

(declare-fun b!577747 () Bool)

(declare-fun res!248483 () Bool)

(assert (=> b!577747 (=> (not res!248483) (not e!349136))))

(assert (=> b!577747 (= res!248483 (= (size!4513 lt!244620) (+ (size!4513 (t!77391 input!2705)) (size!4513 suffix!1342))))))

(declare-fun b!577746 () Bool)

(assert (=> b!577746 (= e!349135 (Cons!5668 (h!11069 (t!77391 input!2705)) (++!1587 (t!77391 (t!77391 input!2705)) suffix!1342)))))

(assert (= (and d!203113 c!108219) b!577745))

(assert (= (and d!203113 (not c!108219)) b!577746))

(assert (= (and d!203113 res!248482) b!577747))

(assert (= (and b!577747 res!248483) b!577748))

(declare-fun m!835893 () Bool)

(assert (=> d!203113 m!835893))

(declare-fun m!835895 () Bool)

(assert (=> d!203113 m!835895))

(assert (=> d!203113 m!834457))

(declare-fun m!835897 () Bool)

(assert (=> b!577747 m!835897))

(assert (=> b!577747 m!835069))

(assert (=> b!577747 m!834461))

(declare-fun m!835899 () Bool)

(assert (=> b!577746 m!835899))

(assert (=> b!576866 d!203113))

(declare-fun d!203115 () Bool)

(assert (=> d!203115 (= (head!1224 lt!243945) (h!11069 lt!243945))))

(assert (=> b!576457 d!203115))

(assert (=> b!576457 d!202967))

(declare-fun d!203117 () Bool)

(assert (=> d!203117 (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))) (list!2356 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))))

(declare-fun bs!69524 () Bool)

(assert (= bs!69524 d!203117))

(declare-fun m!835903 () Bool)

(assert (=> bs!69524 m!835903))

(assert (=> d!202469 d!203117))

(declare-fun d!203121 () Bool)

(assert (=> d!203121 (= (list!2355 lt!243968) (list!2356 (c!107922 lt!243968)))))

(declare-fun bs!69526 () Bool)

(assert (= bs!69526 d!203121))

(declare-fun m!835907 () Bool)

(assert (=> bs!69526 m!835907))

(assert (=> d!202469 d!203121))

(declare-fun d!203123 () Bool)

(assert (=> d!203123 (dynLambda!3299 lambda!15709 lt!243968)))

(declare-fun lt!244621 () Unit!10237)

(assert (=> d!203123 (= lt!244621 (choose!4142 lambda!15709 lt!243968))))

(assert (=> d!203123 (Forall!283 lambda!15709)))

(assert (=> d!203123 (= (ForallOf!107 lambda!15709 lt!243968) lt!244621)))

(declare-fun b_lambda!22599 () Bool)

(assert (=> (not b_lambda!22599) (not d!203123)))

(declare-fun bs!69527 () Bool)

(assert (= bs!69527 d!203123))

(declare-fun m!835909 () Bool)

(assert (=> bs!69527 m!835909))

(declare-fun m!835911 () Bool)

(assert (=> bs!69527 m!835911))

(declare-fun m!835913 () Bool)

(assert (=> bs!69527 m!835913))

(assert (=> d!202469 d!203123))

(declare-fun d!203127 () Bool)

(declare-fun e!349141 () Bool)

(assert (=> d!203127 e!349141))

(declare-fun res!248488 () Bool)

(assert (=> d!203127 (=> (not res!248488) (not e!349141))))

(declare-fun lt!244623 () BalanceConc!3640)

(assert (=> d!203127 (= res!248488 (= (list!2355 lt!244623) lt!243945))))

(assert (=> d!203127 (= lt!244623 (BalanceConc!3641 (fromList!269 lt!243945)))))

(assert (=> d!203127 (= (fromListB!561 lt!243945) lt!244623)))

(declare-fun b!577753 () Bool)

(assert (=> b!577753 (= e!349141 (isBalanced!510 (fromList!269 lt!243945)))))

(assert (= (and d!203127 res!248488) b!577753))

(declare-fun m!835921 () Bool)

(assert (=> d!203127 m!835921))

(declare-fun m!835925 () Bool)

(assert (=> d!203127 m!835925))

(assert (=> b!577753 m!835925))

(assert (=> b!577753 m!835925))

(declare-fun m!835931 () Bool)

(assert (=> b!577753 m!835931))

(assert (=> d!202499 d!203127))

(assert (=> d!202519 d!202603))

(assert (=> d!202519 d!202975))

(declare-fun b!577754 () Bool)

(declare-fun e!349144 () Bool)

(declare-fun e!349143 () Bool)

(assert (=> b!577754 (= e!349144 e!349143)))

(declare-fun res!248489 () Bool)

(assert (=> b!577754 (=> (not res!248489) (not e!349143))))

(assert (=> b!577754 (= res!248489 (not ((_ is Nil!5668) (tail!753 lt!243934))))))

(declare-fun b!577755 () Bool)

(declare-fun res!248492 () Bool)

(assert (=> b!577755 (=> (not res!248492) (not e!349143))))

(assert (=> b!577755 (= res!248492 (= (head!1224 (tail!753 lt!243945)) (head!1224 (tail!753 lt!243934))))))

(declare-fun b!577757 () Bool)

(declare-fun e!349142 () Bool)

(assert (=> b!577757 (= e!349142 (>= (size!4513 (tail!753 lt!243934)) (size!4513 (tail!753 lt!243945))))))

(declare-fun d!203129 () Bool)

(assert (=> d!203129 e!349142))

(declare-fun res!248491 () Bool)

(assert (=> d!203129 (=> res!248491 e!349142)))

(declare-fun lt!244624 () Bool)

(assert (=> d!203129 (= res!248491 (not lt!244624))))

(assert (=> d!203129 (= lt!244624 e!349144)))

(declare-fun res!248490 () Bool)

(assert (=> d!203129 (=> res!248490 e!349144)))

(assert (=> d!203129 (= res!248490 ((_ is Nil!5668) (tail!753 lt!243945)))))

(assert (=> d!203129 (= (isPrefix!733 (tail!753 lt!243945) (tail!753 lt!243934)) lt!244624)))

(declare-fun b!577756 () Bool)

(assert (=> b!577756 (= e!349143 (isPrefix!733 (tail!753 (tail!753 lt!243945)) (tail!753 (tail!753 lt!243934))))))

(assert (= (and d!203129 (not res!248490)) b!577754))

(assert (= (and b!577754 res!248489) b!577755))

(assert (= (and b!577755 res!248492) b!577756))

(assert (= (and d!203129 (not res!248491)) b!577757))

(assert (=> b!577755 m!833889))

(declare-fun m!835935 () Bool)

(assert (=> b!577755 m!835935))

(assert (=> b!577755 m!833891))

(assert (=> b!577755 m!835495))

(assert (=> b!577757 m!833891))

(assert (=> b!577757 m!835497))

(assert (=> b!577757 m!833889))

(declare-fun m!835937 () Bool)

(assert (=> b!577757 m!835937))

(assert (=> b!577756 m!833889))

(declare-fun m!835939 () Bool)

(assert (=> b!577756 m!835939))

(assert (=> b!577756 m!833891))

(assert (=> b!577756 m!835501))

(assert (=> b!577756 m!835939))

(assert (=> b!577756 m!835501))

(declare-fun m!835941 () Bool)

(assert (=> b!577756 m!835941))

(assert (=> b!576458 d!203129))

(declare-fun d!203137 () Bool)

(assert (=> d!203137 (= (tail!753 lt!243945) (t!77391 lt!243945))))

(assert (=> b!576458 d!203137))

(assert (=> b!576458 d!202971))

(declare-fun bs!69529 () Bool)

(declare-fun d!203139 () Bool)

(assert (= bs!69529 (and d!203139 d!202889)))

(declare-fun lambda!15749 () Int)

(assert (=> bs!69529 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (= lambda!15749 lambda!15735))))

(declare-fun bs!69530 () Bool)

(assert (= bs!69530 (and d!203139 d!202697)))

(assert (=> bs!69530 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (= lambda!15749 lambda!15724))))

(declare-fun bs!69531 () Bool)

(assert (= bs!69531 (and d!203139 d!202777)))

(assert (=> bs!69531 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toChars!1817 (transformation!1099 (h!11071 rules!3103)))) (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (h!11071 rules!3103))))) (= lambda!15749 lambda!15728))))

(declare-fun bs!69532 () Bool)

(assert (= bs!69532 (and d!203139 d!202469)))

(assert (=> bs!69532 (= lambda!15749 lambda!15709)))

(declare-fun bs!69534 () Bool)

(assert (= bs!69534 (and d!203139 d!202475)))

(assert (=> bs!69534 (= (and (= (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) (= (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (= lambda!15749 lambda!15710))))

(declare-fun bs!69535 () Bool)

(assert (= bs!69535 (and d!203139 d!202841)))

(assert (=> bs!69535 (= lambda!15749 lambda!15730)))

(declare-fun b!577758 () Bool)

(declare-fun e!349145 () Bool)

(assert (=> b!577758 (= e!349145 true)))

(assert (=> d!203139 e!349145))

(assert (= d!203139 b!577758))

(assert (=> b!577758 (< (dynLambda!3290 order!4619 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (dynLambda!3291 order!4621 lambda!15749))))

(assert (=> b!577758 (< (dynLambda!3292 order!4623 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) (dynLambda!3291 order!4621 lambda!15749))))

(assert (=> d!203139 (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (seqFromList!1287 (_1!3591 lt!244103))))) (list!2355 (seqFromList!1287 (_1!3591 lt!244103))))))

(declare-fun lt!244625 () Unit!10237)

(assert (=> d!203139 (= lt!244625 (ForallOf!107 lambda!15749 (seqFromList!1287 (_1!3591 lt!244103))))))

(assert (=> d!203139 (= (lemmaSemiInverse!202 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (seqFromList!1287 (_1!3591 lt!244103))) lt!244625)))

(declare-fun b_lambda!22601 () Bool)

(assert (=> (not b_lambda!22601) (not d!203139)))

(declare-fun t!77597 () Bool)

(declare-fun tb!50465 () Bool)

(assert (=> (and b!576363 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77597) tb!50465))

(declare-fun e!349148 () Bool)

(declare-fun tp!180806 () Bool)

(declare-fun b!577763 () Bool)

(assert (=> b!577763 (= e!349148 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (seqFromList!1287 (_1!3591 lt!244103)))))) tp!180806))))

(declare-fun result!56492 () Bool)

(assert (=> tb!50465 (= result!56492 (and (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (seqFromList!1287 (_1!3591 lt!244103))))) e!349148))))

(assert (= tb!50465 b!577763))

(declare-fun m!835951 () Bool)

(assert (=> b!577763 m!835951))

(declare-fun m!835953 () Bool)

(assert (=> tb!50465 m!835953))

(assert (=> d!203139 t!77597))

(declare-fun b_and!56651 () Bool)

(assert (= b_and!56633 (and (=> t!77597 result!56492) b_and!56651)))

(declare-fun t!77599 () Bool)

(declare-fun tb!50467 () Bool)

(assert (=> (and b!576362 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77599) tb!50467))

(declare-fun result!56494 () Bool)

(assert (= result!56494 result!56492))

(assert (=> d!203139 t!77599))

(declare-fun b_and!56653 () Bool)

(assert (= b_and!56635 (and (=> t!77599 result!56494) b_and!56653)))

(declare-fun tb!50469 () Bool)

(declare-fun t!77601 () Bool)

(assert (=> (and b!576984 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77601) tb!50469))

(declare-fun result!56496 () Bool)

(assert (= result!56496 result!56492))

(assert (=> d!203139 t!77601))

(declare-fun b_and!56655 () Bool)

(assert (= b_and!56637 (and (=> t!77601 result!56496) b_and!56655)))

(declare-fun b_lambda!22603 () Bool)

(assert (=> (not b_lambda!22603) (not d!203139)))

(declare-fun tb!50471 () Bool)

(declare-fun t!77603 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77603) tb!50471))

(declare-fun result!56498 () Bool)

(assert (=> tb!50471 (= result!56498 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (seqFromList!1287 (_1!3591 lt!244103)))))))

(declare-fun m!835959 () Bool)

(assert (=> tb!50471 m!835959))

(assert (=> d!203139 t!77603))

(declare-fun b_and!56657 () Bool)

(assert (= b_and!56627 (and (=> t!77603 result!56498) b_and!56657)))

(declare-fun tb!50473 () Bool)

(declare-fun t!77605 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77605) tb!50473))

(declare-fun result!56500 () Bool)

(assert (= result!56500 result!56498))

(assert (=> d!203139 t!77605))

(declare-fun b_and!56659 () Bool)

(assert (= b_and!56629 (and (=> t!77605 result!56500) b_and!56659)))

(declare-fun t!77607 () Bool)

(declare-fun tb!50475 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77607) tb!50475))

(declare-fun result!56502 () Bool)

(assert (= result!56502 result!56498))

(assert (=> d!203139 t!77607))

(declare-fun b_and!56661 () Bool)

(assert (= b_and!56631 (and (=> t!77607 result!56502) b_and!56661)))

(assert (=> d!203139 m!834217))

(declare-fun m!835963 () Bool)

(assert (=> d!203139 m!835963))

(declare-fun m!835965 () Bool)

(assert (=> d!203139 m!835965))

(declare-fun m!835967 () Bool)

(assert (=> d!203139 m!835967))

(assert (=> d!203139 m!834217))

(assert (=> d!203139 m!835965))

(assert (=> d!203139 m!834217))

(declare-fun m!835969 () Bool)

(assert (=> d!203139 m!835969))

(assert (=> d!203139 m!835967))

(declare-fun m!835971 () Bool)

(assert (=> d!203139 m!835971))

(assert (=> b!576696 d!203139))

(assert (=> b!576696 d!202759))

(declare-fun d!203157 () Bool)

(declare-fun e!349154 () Bool)

(assert (=> d!203157 e!349154))

(declare-fun res!248497 () Bool)

(assert (=> d!203157 (=> res!248497 e!349154)))

(assert (=> d!203157 (= res!248497 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(declare-fun lt!244630 () Unit!10237)

(assert (=> d!203157 (= lt!244630 (choose!4140 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) input!2705))))

(assert (=> d!203157 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))))

(assert (=> d!203157 (= (longestMatchIsAcceptedByMatchOrIsEmpty!154 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) input!2705) lt!244630)))

(declare-fun b!577770 () Bool)

(assert (=> b!577770 (= e!349154 (matchR!580 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(assert (= (and d!203157 (not res!248497)) b!577770))

(assert (=> d!203157 m!834223))

(assert (=> d!203157 m!834179))

(assert (=> d!203157 m!833861))

(assert (=> d!203157 m!834221))

(assert (=> d!203157 m!834179))

(declare-fun m!835973 () Bool)

(assert (=> d!203157 m!835973))

(assert (=> d!203157 m!833861))

(assert (=> d!203157 m!833869))

(assert (=> b!577770 m!834179))

(assert (=> b!577770 m!833861))

(assert (=> b!577770 m!834179))

(assert (=> b!577770 m!833861))

(assert (=> b!577770 m!834221))

(assert (=> b!577770 m!834239))

(assert (=> b!576696 d!203157))

(declare-fun d!203161 () Bool)

(assert (=> d!203161 (= (seqFromList!1287 (_1!3591 lt!244103)) (fromListB!561 (_1!3591 lt!244103)))))

(declare-fun bs!69543 () Bool)

(assert (= bs!69543 d!203161))

(declare-fun m!835977 () Bool)

(assert (=> bs!69543 m!835977))

(assert (=> b!576696 d!203161))

(declare-fun d!203163 () Bool)

(assert (=> d!203163 (= (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (seqFromList!1287 (_1!3591 lt!244103))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (seqFromList!1287 (_1!3591 lt!244103))))))

(declare-fun b_lambda!22605 () Bool)

(assert (=> (not b_lambda!22605) (not d!203163)))

(assert (=> d!203163 t!77603))

(declare-fun b_and!56663 () Bool)

(assert (= b_and!56657 (and (=> t!77603 result!56498) b_and!56663)))

(assert (=> d!203163 t!77605))

(declare-fun b_and!56665 () Bool)

(assert (= b_and!56659 (and (=> t!77605 result!56500) b_and!56665)))

(assert (=> d!203163 t!77607))

(declare-fun b_and!56667 () Bool)

(assert (= b_and!56661 (and (=> t!77607 result!56502) b_and!56667)))

(assert (=> d!203163 m!834217))

(assert (=> d!203163 m!835965))

(assert (=> b!576696 d!203163))

(assert (=> b!576696 d!202755))

(assert (=> b!576696 d!202725))

(declare-fun d!203165 () Bool)

(assert (=> d!203165 (= (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))) ((_ is Nil!5668) (_1!3591 (findLongestMatchInner!170 (regex!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(assert (=> b!576696 d!203165))

(declare-fun d!203167 () Bool)

(declare-fun lt!244631 () Int)

(assert (=> d!203167 (= lt!244631 (size!4513 (list!2355 (seqFromList!1287 (_1!3591 lt!244103)))))))

(assert (=> d!203167 (= lt!244631 (size!4517 (c!107922 (seqFromList!1287 (_1!3591 lt!244103)))))))

(assert (=> d!203167 (= (size!4514 (seqFromList!1287 (_1!3591 lt!244103))) lt!244631)))

(declare-fun bs!69544 () Bool)

(assert (= bs!69544 d!203167))

(assert (=> bs!69544 m!834217))

(assert (=> bs!69544 m!835963))

(assert (=> bs!69544 m!835963))

(declare-fun m!835985 () Bool)

(assert (=> bs!69544 m!835985))

(declare-fun m!835987 () Bool)

(assert (=> bs!69544 m!835987))

(assert (=> b!576696 d!203167))

(declare-fun d!203171 () Bool)

(declare-fun c!108225 () Bool)

(assert (=> d!203171 (= c!108225 ((_ is Empty!1816) (c!107922 (charsOf!728 token!491))))))

(declare-fun e!349162 () List!5678)

(assert (=> d!203171 (= (list!2356 (c!107922 (charsOf!728 token!491))) e!349162)))

(declare-fun b!577781 () Bool)

(declare-fun e!349163 () List!5678)

(assert (=> b!577781 (= e!349162 e!349163)))

(declare-fun c!108226 () Bool)

(assert (=> b!577781 (= c!108226 ((_ is Leaf!2873) (c!107922 (charsOf!728 token!491))))))

(declare-fun b!577780 () Bool)

(assert (=> b!577780 (= e!349162 Nil!5668)))

(declare-fun b!577783 () Bool)

(assert (=> b!577783 (= e!349163 (++!1587 (list!2356 (left!4630 (c!107922 (charsOf!728 token!491)))) (list!2356 (right!4960 (c!107922 (charsOf!728 token!491))))))))

(declare-fun b!577782 () Bool)

(assert (=> b!577782 (= e!349163 (list!2359 (xs!4453 (c!107922 (charsOf!728 token!491)))))))

(assert (= (and d!203171 c!108225) b!577780))

(assert (= (and d!203171 (not c!108225)) b!577781))

(assert (= (and b!577781 c!108226) b!577782))

(assert (= (and b!577781 (not c!108226)) b!577783))

(declare-fun m!835991 () Bool)

(assert (=> b!577783 m!835991))

(declare-fun m!835993 () Bool)

(assert (=> b!577783 m!835993))

(assert (=> b!577783 m!835991))

(assert (=> b!577783 m!835993))

(declare-fun m!835995 () Bool)

(assert (=> b!577783 m!835995))

(declare-fun m!835997 () Bool)

(assert (=> b!577782 m!835997))

(assert (=> d!202579 d!203171))

(declare-fun d!203179 () Bool)

(declare-fun lt!244632 () Int)

(assert (=> d!203179 (>= lt!244632 0)))

(declare-fun e!349166 () Int)

(assert (=> d!203179 (= lt!244632 e!349166)))

(declare-fun c!108228 () Bool)

(assert (=> d!203179 (= c!108228 ((_ is Nil!5668) lt!243934))))

(assert (=> d!203179 (= (size!4513 lt!243934) lt!244632)))

(declare-fun b!577787 () Bool)

(assert (=> b!577787 (= e!349166 0)))

(declare-fun b!577788 () Bool)

(assert (=> b!577788 (= e!349166 (+ 1 (size!4513 (t!77391 lt!243934))))))

(assert (= (and d!203179 c!108228) b!577787))

(assert (= (and d!203179 (not c!108228)) b!577788))

(declare-fun m!835999 () Bool)

(assert (=> b!577788 m!835999))

(assert (=> b!576509 d!203179))

(assert (=> b!576509 d!202759))

(declare-fun b!577792 () Bool)

(declare-fun e!349167 () Int)

(assert (=> b!577792 (= e!349167 (- 1))))

(declare-fun b!577789 () Bool)

(declare-fun e!349168 () Int)

(assert (=> b!577789 (= e!349168 0)))

(declare-fun d!203181 () Bool)

(declare-fun lt!244633 () Int)

(assert (=> d!203181 (>= lt!244633 0)))

(assert (=> d!203181 (= lt!244633 e!349168)))

(declare-fun c!108229 () Bool)

(assert (=> d!203181 (= c!108229 (and ((_ is Cons!5670) (t!77393 rules!3103)) (= (h!11071 (t!77393 rules!3103)) (rule!1849 token!491))))))

(assert (=> d!203181 (contains!1329 (t!77393 rules!3103) (rule!1849 token!491))))

(assert (=> d!203181 (= (getIndex!38 (t!77393 rules!3103) (rule!1849 token!491)) lt!244633)))

(declare-fun b!577790 () Bool)

(assert (=> b!577790 (= e!349168 e!349167)))

(declare-fun c!108230 () Bool)

(assert (=> b!577790 (= c!108230 (and ((_ is Cons!5670) (t!77393 rules!3103)) (not (= (h!11071 (t!77393 rules!3103)) (rule!1849 token!491)))))))

(declare-fun b!577791 () Bool)

(assert (=> b!577791 (= e!349167 (+ 1 (getIndex!38 (t!77393 (t!77393 rules!3103)) (rule!1849 token!491))))))

(assert (= (and d!203181 c!108229) b!577789))

(assert (= (and d!203181 (not c!108229)) b!577790))

(assert (= (and b!577790 c!108230) b!577791))

(assert (= (and b!577790 (not c!108230)) b!577792))

(assert (=> d!203181 m!834599))

(declare-fun m!836005 () Bool)

(assert (=> b!577791 m!836005))

(assert (=> b!576950 d!203181))

(assert (=> b!576818 d!202797))

(assert (=> b!576818 d!202669))

(declare-fun d!203185 () Bool)

(declare-fun lt!244639 () Bool)

(assert (=> d!203185 (= lt!244639 (select (content!1003 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244139)))))))

(declare-fun e!349173 () Bool)

(assert (=> d!203185 (= lt!244639 e!349173)))

(declare-fun res!248511 () Bool)

(assert (=> d!203185 (=> (not res!248511) (not e!349173))))

(assert (=> d!203185 (= res!248511 ((_ is Cons!5670) rules!3103))))

(assert (=> d!203185 (= (contains!1329 rules!3103 (rule!1849 (_1!3590 (get!2163 lt!244139)))) lt!244639)))

(declare-fun b!577802 () Bool)

(declare-fun e!349172 () Bool)

(assert (=> b!577802 (= e!349173 e!349172)))

(declare-fun res!248512 () Bool)

(assert (=> b!577802 (=> res!248512 e!349172)))

(assert (=> b!577802 (= res!248512 (= (h!11071 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244139)))))))

(declare-fun b!577803 () Bool)

(assert (=> b!577803 (= e!349172 (contains!1329 (t!77393 rules!3103) (rule!1849 (_1!3590 (get!2163 lt!244139)))))))

(assert (= (and d!203185 res!248511) b!577802))

(assert (= (and b!577802 (not res!248512)) b!577803))

(assert (=> d!203185 m!834587))

(declare-fun m!836007 () Bool)

(assert (=> d!203185 m!836007))

(declare-fun m!836009 () Bool)

(assert (=> b!577803 m!836009))

(assert (=> b!576774 d!203185))

(assert (=> b!576774 d!202803))

(assert (=> b!576481 d!202691))

(assert (=> b!576481 d!202759))

(assert (=> b!576770 d!202805))

(assert (=> b!576770 d!202807))

(assert (=> b!576770 d!202803))

(declare-fun d!203187 () Bool)

(declare-fun lt!244640 () Int)

(assert (=> d!203187 (>= lt!244640 0)))

(declare-fun e!349174 () Int)

(assert (=> d!203187 (= lt!244640 e!349174)))

(declare-fun c!108232 () Bool)

(assert (=> d!203187 (= c!108232 ((_ is Nil!5668) lt!244035))))

(assert (=> d!203187 (= (size!4513 lt!244035) lt!244640)))

(declare-fun b!577804 () Bool)

(assert (=> b!577804 (= e!349174 0)))

(declare-fun b!577805 () Bool)

(assert (=> b!577805 (= e!349174 (+ 1 (size!4513 (t!77391 lt!244035))))))

(assert (= (and d!203187 c!108232) b!577804))

(assert (= (and d!203187 (not c!108232)) b!577805))

(declare-fun m!836011 () Bool)

(assert (=> b!577805 m!836011))

(assert (=> b!576526 d!203187))

(assert (=> b!576526 d!202375))

(declare-fun d!203189 () Bool)

(declare-fun lt!244641 () Int)

(assert (=> d!203189 (>= lt!244641 0)))

(declare-fun e!349175 () Int)

(assert (=> d!203189 (= lt!244641 e!349175)))

(declare-fun c!108233 () Bool)

(assert (=> d!203189 (= c!108233 ((_ is Nil!5668) (_2!3590 (v!16310 lt!243932))))))

(assert (=> d!203189 (= (size!4513 (_2!3590 (v!16310 lt!243932))) lt!244641)))

(declare-fun b!577806 () Bool)

(assert (=> b!577806 (= e!349175 0)))

(declare-fun b!577807 () Bool)

(assert (=> b!577807 (= e!349175 (+ 1 (size!4513 (t!77391 (_2!3590 (v!16310 lt!243932))))))))

(assert (= (and d!203189 c!108233) b!577806))

(assert (= (and d!203189 (not c!108233)) b!577807))

(declare-fun m!836013 () Bool)

(assert (=> b!577807 m!836013))

(assert (=> b!576526 d!203189))

(declare-fun d!203191 () Bool)

(declare-fun lt!244642 () Int)

(assert (=> d!203191 (>= lt!244642 0)))

(declare-fun e!349176 () Int)

(assert (=> d!203191 (= lt!244642 e!349176)))

(declare-fun c!108234 () Bool)

(assert (=> d!203191 (= c!108234 ((_ is Nil!5668) lt!244155))))

(assert (=> d!203191 (= (size!4513 lt!244155) lt!244642)))

(declare-fun b!577808 () Bool)

(assert (=> b!577808 (= e!349176 0)))

(declare-fun b!577809 () Bool)

(assert (=> b!577809 (= e!349176 (+ 1 (size!4513 (t!77391 lt!244155))))))

(assert (= (and d!203191 c!108234) b!577808))

(assert (= (and d!203191 (not c!108234)) b!577809))

(declare-fun m!836015 () Bool)

(assert (=> b!577809 m!836015))

(assert (=> b!576844 d!203191))

(assert (=> b!576844 d!202363))

(declare-fun d!203193 () Bool)

(declare-fun lt!244643 () Int)

(assert (=> d!203193 (>= lt!244643 0)))

(declare-fun e!349177 () Int)

(assert (=> d!203193 (= lt!244643 e!349177)))

(declare-fun c!108235 () Bool)

(assert (=> d!203193 (= c!108235 ((_ is Nil!5668) suffix!1342))))

(assert (=> d!203193 (= (size!4513 suffix!1342) lt!244643)))

(declare-fun b!577810 () Bool)

(assert (=> b!577810 (= e!349177 0)))

(declare-fun b!577811 () Bool)

(assert (=> b!577811 (= e!349177 (+ 1 (size!4513 (t!77391 suffix!1342))))))

(assert (= (and d!203193 c!108235) b!577810))

(assert (= (and d!203193 (not c!108235)) b!577811))

(declare-fun m!836017 () Bool)

(assert (=> b!577811 m!836017))

(assert (=> b!576844 d!203193))

(declare-fun b!577812 () Bool)

(declare-fun e!349180 () Bool)

(declare-fun e!349179 () Bool)

(assert (=> b!577812 (= e!349180 e!349179)))

(declare-fun res!248513 () Bool)

(assert (=> b!577812 (=> (not res!248513) (not e!349179))))

(assert (=> b!577812 (= res!248513 (not ((_ is Nil!5668) (tail!753 lt!243957))))))

(declare-fun b!577813 () Bool)

(declare-fun res!248516 () Bool)

(assert (=> b!577813 (=> (not res!248516) (not e!349179))))

(assert (=> b!577813 (= res!248516 (= (head!1224 (tail!753 lt!243959)) (head!1224 (tail!753 lt!243957))))))

(declare-fun b!577815 () Bool)

(declare-fun e!349178 () Bool)

(assert (=> b!577815 (= e!349178 (>= (size!4513 (tail!753 lt!243957)) (size!4513 (tail!753 lt!243959))))))

(declare-fun d!203195 () Bool)

(assert (=> d!203195 e!349178))

(declare-fun res!248515 () Bool)

(assert (=> d!203195 (=> res!248515 e!349178)))

(declare-fun lt!244644 () Bool)

(assert (=> d!203195 (= res!248515 (not lt!244644))))

(assert (=> d!203195 (= lt!244644 e!349180)))

(declare-fun res!248514 () Bool)

(assert (=> d!203195 (=> res!248514 e!349180)))

(assert (=> d!203195 (= res!248514 ((_ is Nil!5668) (tail!753 lt!243959)))))

(assert (=> d!203195 (= (isPrefix!733 (tail!753 lt!243959) (tail!753 lt!243957)) lt!244644)))

(declare-fun b!577814 () Bool)

(assert (=> b!577814 (= e!349179 (isPrefix!733 (tail!753 (tail!753 lt!243959)) (tail!753 (tail!753 lt!243957))))))

(assert (= (and d!203195 (not res!248514)) b!577812))

(assert (= (and b!577812 res!248513) b!577813))

(assert (= (and b!577813 res!248516) b!577814))

(assert (= (and d!203195 (not res!248515)) b!577815))

(assert (=> b!577813 m!834061))

(declare-fun m!836025 () Bool)

(assert (=> b!577813 m!836025))

(assert (=> b!577813 m!834063))

(declare-fun m!836027 () Bool)

(assert (=> b!577813 m!836027))

(assert (=> b!577815 m!834063))

(declare-fun m!836029 () Bool)

(assert (=> b!577815 m!836029))

(assert (=> b!577815 m!834061))

(declare-fun m!836033 () Bool)

(assert (=> b!577815 m!836033))

(assert (=> b!577814 m!834061))

(declare-fun m!836035 () Bool)

(assert (=> b!577814 m!836035))

(assert (=> b!577814 m!834063))

(declare-fun m!836039 () Bool)

(assert (=> b!577814 m!836039))

(assert (=> b!577814 m!836035))

(assert (=> b!577814 m!836039))

(declare-fun m!836041 () Bool)

(assert (=> b!577814 m!836041))

(assert (=> b!576552 d!203195))

(declare-fun d!203197 () Bool)

(assert (=> d!203197 (= (tail!753 lt!243959) (t!77391 lt!243959))))

(assert (=> b!576552 d!203197))

(declare-fun d!203199 () Bool)

(assert (=> d!203199 (= (tail!753 lt!243957) (t!77391 lt!243957))))

(assert (=> b!576552 d!203199))

(assert (=> b!576681 d!202925))

(declare-fun d!203201 () Bool)

(declare-fun lt!244645 () Int)

(assert (=> d!203201 (>= lt!244645 0)))

(declare-fun e!349181 () Int)

(assert (=> d!203201 (= lt!244645 e!349181)))

(declare-fun c!108236 () Bool)

(assert (=> d!203201 (= c!108236 ((_ is Nil!5668) (originalCharacters!1138 (_1!3590 (get!2163 lt!244097)))))))

(assert (=> d!203201 (= (size!4513 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097)))) lt!244645)))

(declare-fun b!577816 () Bool)

(assert (=> b!577816 (= e!349181 0)))

(declare-fun b!577817 () Bool)

(assert (=> b!577817 (= e!349181 (+ 1 (size!4513 (t!77391 (originalCharacters!1138 (_1!3590 (get!2163 lt!244097)))))))))

(assert (= (and d!203201 c!108236) b!577816))

(assert (= (and d!203201 (not c!108236)) b!577817))

(declare-fun m!836053 () Bool)

(assert (=> b!577817 m!836053))

(assert (=> b!576681 d!203201))

(assert (=> d!202599 d!202601))

(declare-fun b!577818 () Bool)

(declare-fun e!349183 () Bool)

(declare-fun lt!244646 () Bool)

(declare-fun call!39956 () Bool)

(assert (=> b!577818 (= e!349183 (= lt!244646 call!39956))))

(declare-fun b!577819 () Bool)

(declare-fun e!349188 () Bool)

(assert (=> b!577819 (= e!349188 (not (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))))))))

(declare-fun b!577820 () Bool)

(declare-fun e!349185 () Bool)

(assert (=> b!577820 (= e!349185 (nullable!386 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))))))

(declare-fun d!203203 () Bool)

(assert (=> d!203203 e!349183))

(declare-fun c!108239 () Bool)

(assert (=> d!203203 (= c!108239 ((_ is EmptyExpr!1433) (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))))))

(assert (=> d!203203 (= lt!244646 e!349185)))

(declare-fun c!108237 () Bool)

(assert (=> d!203203 (= c!108237 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))))))

(assert (=> d!203203 (validRegex!481 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))))

(assert (=> d!203203 (= (matchR!580 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))) lt!244646)))

(declare-fun b!577821 () Bool)

(assert (=> b!577821 (= e!349185 (matchR!580 (derivativeStep!300 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))) (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))))) (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))))))))

(declare-fun b!577822 () Bool)

(declare-fun e!349182 () Bool)

(assert (=> b!577822 (= e!349182 e!349188)))

(declare-fun res!248520 () Bool)

(assert (=> b!577822 (=> res!248520 e!349188)))

(assert (=> b!577822 (= res!248520 call!39956)))

(declare-fun b!577823 () Bool)

(declare-fun e!349186 () Bool)

(assert (=> b!577823 (= e!349186 (= (head!1224 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))) (c!107921 (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))))))

(declare-fun b!577824 () Bool)

(declare-fun res!248521 () Bool)

(declare-fun e!349184 () Bool)

(assert (=> b!577824 (=> res!248521 e!349184)))

(assert (=> b!577824 (= res!248521 e!349186)))

(declare-fun res!248524 () Bool)

(assert (=> b!577824 (=> (not res!248524) (not e!349186))))

(assert (=> b!577824 (= res!248524 lt!244646)))

(declare-fun b!577825 () Bool)

(declare-fun e!349187 () Bool)

(assert (=> b!577825 (= e!349183 e!349187)))

(declare-fun c!108238 () Bool)

(assert (=> b!577825 (= c!108238 ((_ is EmptyLang!1433) (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157))))))))

(declare-fun b!577826 () Bool)

(declare-fun res!248519 () Bool)

(assert (=> b!577826 (=> (not res!248519) (not e!349186))))

(assert (=> b!577826 (= res!248519 (not call!39956))))

(declare-fun b!577827 () Bool)

(declare-fun res!248518 () Bool)

(assert (=> b!577827 (=> res!248518 e!349184)))

(assert (=> b!577827 (= res!248518 (not ((_ is ElementMatch!1433) (regex!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))))))

(assert (=> b!577827 (= e!349187 e!349184)))

(declare-fun b!577828 () Bool)

(assert (=> b!577828 (= e!349184 e!349182)))

(declare-fun res!248522 () Bool)

(assert (=> b!577828 (=> (not res!248522) (not e!349182))))

(assert (=> b!577828 (= res!248522 (not lt!244646))))

(declare-fun b!577829 () Bool)

(declare-fun res!248517 () Bool)

(assert (=> b!577829 (=> (not res!248517) (not e!349186))))

(assert (=> b!577829 (= res!248517 (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157)))))))))

(declare-fun b!577830 () Bool)

(assert (=> b!577830 (= e!349187 (not lt!244646))))

(declare-fun b!577831 () Bool)

(declare-fun res!248523 () Bool)

(assert (=> b!577831 (=> res!248523 e!349188)))

(assert (=> b!577831 (= res!248523 (not (isEmpty!4093 (tail!753 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))))))))

(declare-fun bm!39951 () Bool)

(assert (=> bm!39951 (= call!39956 (isEmpty!4093 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244157))))))))

(assert (= (and d!203203 c!108237) b!577820))

(assert (= (and d!203203 (not c!108237)) b!577821))

(assert (= (and d!203203 c!108239) b!577818))

(assert (= (and d!203203 (not c!108239)) b!577825))

(assert (= (and b!577825 c!108238) b!577830))

(assert (= (and b!577825 (not c!108238)) b!577827))

(assert (= (and b!577827 (not res!248518)) b!577824))

(assert (= (and b!577824 res!248524) b!577826))

(assert (= (and b!577826 res!248519) b!577829))

(assert (= (and b!577829 res!248517) b!577823))

(assert (= (and b!577824 (not res!248521)) b!577828))

(assert (= (and b!577828 res!248522) b!577822))

(assert (= (and b!577822 (not res!248520)) b!577831))

(assert (= (and b!577831 (not res!248523)) b!577819))

(assert (= (or b!577818 b!577822 b!577826) bm!39951))

(assert (=> b!577819 m!834489))

(declare-fun m!836065 () Bool)

(assert (=> b!577819 m!836065))

(assert (=> b!577829 m!834489))

(declare-fun m!836067 () Bool)

(assert (=> b!577829 m!836067))

(assert (=> b!577829 m!836067))

(declare-fun m!836069 () Bool)

(assert (=> b!577829 m!836069))

(assert (=> bm!39951 m!834489))

(declare-fun m!836071 () Bool)

(assert (=> bm!39951 m!836071))

(assert (=> b!577821 m!834489))

(assert (=> b!577821 m!836065))

(assert (=> b!577821 m!836065))

(declare-fun m!836075 () Bool)

(assert (=> b!577821 m!836075))

(assert (=> b!577821 m!834489))

(assert (=> b!577821 m!836067))

(assert (=> b!577821 m!836075))

(assert (=> b!577821 m!836067))

(declare-fun m!836079 () Bool)

(assert (=> b!577821 m!836079))

(assert (=> b!577831 m!834489))

(assert (=> b!577831 m!836067))

(assert (=> b!577831 m!836067))

(assert (=> b!577831 m!836069))

(declare-fun m!836085 () Bool)

(assert (=> b!577820 m!836085))

(assert (=> d!203203 m!834489))

(assert (=> d!203203 m!836071))

(declare-fun m!836087 () Bool)

(assert (=> d!203203 m!836087))

(assert (=> b!577823 m!834489))

(assert (=> b!577823 m!836065))

(assert (=> b!576856 d!203203))

(assert (=> b!576856 d!202659))

(assert (=> b!576856 d!202653))

(assert (=> b!576856 d!202655))

(declare-fun d!203217 () Bool)

(declare-fun lt!244649 () Int)

(assert (=> d!203217 (>= lt!244649 0)))

(declare-fun e!349197 () Int)

(assert (=> d!203217 (= lt!244649 e!349197)))

(declare-fun c!108245 () Bool)

(assert (=> d!203217 (= c!108245 ((_ is Nil!5668) lt!243957))))

(assert (=> d!203217 (= (size!4513 lt!243957) lt!244649)))

(declare-fun b!577846 () Bool)

(assert (=> b!577846 (= e!349197 0)))

(declare-fun b!577847 () Bool)

(assert (=> b!577847 (= e!349197 (+ 1 (size!4513 (t!77391 lt!243957))))))

(assert (= (and d!203217 c!108245) b!577846))

(assert (= (and d!203217 (not c!108245)) b!577847))

(declare-fun m!836093 () Bool)

(assert (=> b!577847 m!836093))

(assert (=> b!576553 d!203217))

(assert (=> b!576553 d!202375))

(assert (=> b!576541 d!202759))

(assert (=> b!576682 d!202925))

(declare-fun d!203219 () Bool)

(declare-fun charsToInt!0 (List!5679) (_ BitVec 32))

(assert (=> d!203219 (= (inv!16 (value!36188 token!491)) (= (charsToInt!0 (text!8308 (value!36188 token!491))) (value!36180 (value!36188 token!491))))))

(declare-fun bs!69548 () Bool)

(assert (= bs!69548 d!203219))

(declare-fun m!836097 () Bool)

(assert (=> bs!69548 m!836097))

(assert (=> b!576840 d!203219))

(declare-fun d!203223 () Bool)

(declare-fun c!108249 () Bool)

(assert (=> d!203223 (= c!108249 ((_ is IntegerValue!3369) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))

(declare-fun e!349207 () Bool)

(assert (=> d!203223 (= (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)) e!349207)))

(declare-fun b!577862 () Bool)

(declare-fun e!349206 () Bool)

(assert (=> b!577862 (= e!349206 (inv!15 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))

(declare-fun b!577863 () Bool)

(declare-fun res!248537 () Bool)

(assert (=> b!577863 (=> res!248537 e!349206)))

(assert (=> b!577863 (= res!248537 (not ((_ is IntegerValue!3371) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))))

(declare-fun e!349205 () Bool)

(assert (=> b!577863 (= e!349205 e!349206)))

(declare-fun b!577864 () Bool)

(assert (=> b!577864 (= e!349207 e!349205)))

(declare-fun c!108250 () Bool)

(assert (=> b!577864 (= c!108250 ((_ is IntegerValue!3370) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))

(declare-fun b!577865 () Bool)

(assert (=> b!577865 (= e!349207 (inv!16 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))

(declare-fun b!577866 () Bool)

(assert (=> b!577866 (= e!349205 (inv!17 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))

(assert (= (and d!203223 c!108249) b!577865))

(assert (= (and d!203223 (not c!108249)) b!577864))

(assert (= (and b!577864 c!108250) b!577866))

(assert (= (and b!577864 (not c!108250)) b!577863))

(assert (= (and b!577863 (not res!248537)) b!577862))

(declare-fun m!836109 () Bool)

(assert (=> b!577862 m!836109))

(declare-fun m!836113 () Bool)

(assert (=> b!577865 m!836113))

(declare-fun m!836117 () Bool)

(assert (=> b!577866 m!836117))

(assert (=> tb!50275 d!203223))

(declare-fun d!203225 () Bool)

(assert (=> d!203225 (= (isEmpty!4093 (originalCharacters!1138 token!491)) ((_ is Nil!5668) (originalCharacters!1138 token!491)))))

(assert (=> d!202503 d!203225))

(declare-fun d!203227 () Bool)

(declare-fun c!108251 () Bool)

(assert (=> d!203227 (= c!108251 ((_ is IntegerValue!3369) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))

(declare-fun e!349210 () Bool)

(assert (=> d!203227 (= (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)) e!349210)))

(declare-fun b!577867 () Bool)

(declare-fun e!349209 () Bool)

(assert (=> b!577867 (= e!349209 (inv!15 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))

(declare-fun b!577868 () Bool)

(declare-fun res!248538 () Bool)

(assert (=> b!577868 (=> res!248538 e!349209)))

(assert (=> b!577868 (= res!248538 (not ((_ is IntegerValue!3371) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))))

(declare-fun e!349208 () Bool)

(assert (=> b!577868 (= e!349208 e!349209)))

(declare-fun b!577869 () Bool)

(assert (=> b!577869 (= e!349210 e!349208)))

(declare-fun c!108252 () Bool)

(assert (=> b!577869 (= c!108252 ((_ is IntegerValue!3370) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))

(declare-fun b!577870 () Bool)

(assert (=> b!577870 (= e!349210 (inv!16 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))

(declare-fun b!577871 () Bool)

(assert (=> b!577871 (= e!349208 (inv!17 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))

(assert (= (and d!203227 c!108251) b!577870))

(assert (= (and d!203227 (not c!108251)) b!577869))

(assert (= (and b!577869 c!108252) b!577871))

(assert (= (and b!577869 (not c!108252)) b!577868))

(assert (= (and b!577868 (not res!248538)) b!577867))

(declare-fun m!836121 () Bool)

(assert (=> b!577867 m!836121))

(declare-fun m!836123 () Bool)

(assert (=> b!577870 m!836123))

(declare-fun m!836125 () Bool)

(assert (=> b!577871 m!836125))

(assert (=> tb!50291 d!203227))

(declare-fun d!203235 () Bool)

(assert (=> d!203235 (= (isEmpty!4096 lt!244157) (not ((_ is Some!1449) lt!244157)))))

(assert (=> d!202557 d!203235))

(declare-fun b!577872 () Bool)

(declare-fun e!349213 () Bool)

(declare-fun e!349212 () Bool)

(assert (=> b!577872 (= e!349213 e!349212)))

(declare-fun res!248539 () Bool)

(assert (=> b!577872 (=> (not res!248539) (not e!349212))))

(assert (=> b!577872 (= res!248539 (not ((_ is Nil!5668) lt!243952)))))

(declare-fun b!577873 () Bool)

(declare-fun res!248542 () Bool)

(assert (=> b!577873 (=> (not res!248542) (not e!349212))))

(assert (=> b!577873 (= res!248542 (= (head!1224 lt!243952) (head!1224 lt!243952)))))

(declare-fun b!577875 () Bool)

(declare-fun e!349211 () Bool)

(assert (=> b!577875 (= e!349211 (>= (size!4513 lt!243952) (size!4513 lt!243952)))))

(declare-fun d!203237 () Bool)

(assert (=> d!203237 e!349211))

(declare-fun res!248541 () Bool)

(assert (=> d!203237 (=> res!248541 e!349211)))

(declare-fun lt!244659 () Bool)

(assert (=> d!203237 (= res!248541 (not lt!244659))))

(assert (=> d!203237 (= lt!244659 e!349213)))

(declare-fun res!248540 () Bool)

(assert (=> d!203237 (=> res!248540 e!349213)))

(assert (=> d!203237 (= res!248540 ((_ is Nil!5668) lt!243952))))

(assert (=> d!203237 (= (isPrefix!733 lt!243952 lt!243952) lt!244659)))

(declare-fun b!577874 () Bool)

(assert (=> b!577874 (= e!349212 (isPrefix!733 (tail!753 lt!243952) (tail!753 lt!243952)))))

(assert (= (and d!203237 (not res!248540)) b!577872))

(assert (= (and b!577872 res!248539) b!577873))

(assert (= (and b!577873 res!248542) b!577874))

(assert (= (and d!203237 (not res!248541)) b!577875))

(assert (=> b!577873 m!833937))

(assert (=> b!577873 m!833937))

(assert (=> b!577875 m!833939))

(assert (=> b!577875 m!833939))

(assert (=> b!577874 m!833943))

(assert (=> b!577874 m!833943))

(assert (=> b!577874 m!833943))

(assert (=> b!577874 m!833943))

(declare-fun m!836143 () Bool)

(assert (=> b!577874 m!836143))

(assert (=> d!202557 d!203237))

(declare-fun d!203241 () Bool)

(assert (=> d!203241 (isPrefix!733 lt!243952 lt!243952)))

(declare-fun lt!244660 () Unit!10237)

(assert (=> d!203241 (= lt!244660 (choose!4128 lt!243952 lt!243952))))

(assert (=> d!203241 (= (lemmaIsPrefixRefl!471 lt!243952 lt!243952) lt!244660)))

(declare-fun bs!69550 () Bool)

(assert (= bs!69550 d!203241))

(assert (=> bs!69550 m!834505))

(declare-fun m!836145 () Bool)

(assert (=> bs!69550 m!836145))

(assert (=> d!202557 d!203241))

(assert (=> d!202557 d!202863))

(declare-fun d!203243 () Bool)

(declare-fun lt!244662 () Int)

(assert (=> d!203243 (>= lt!244662 0)))

(declare-fun e!349215 () Int)

(assert (=> d!203243 (= lt!244662 e!349215)))

(declare-fun c!108254 () Bool)

(assert (=> d!203243 (= c!108254 ((_ is Nil!5668) (_2!3590 (get!2163 lt!244157))))))

(assert (=> d!203243 (= (size!4513 (_2!3590 (get!2163 lt!244157))) lt!244662)))

(declare-fun b!577878 () Bool)

(assert (=> b!577878 (= e!349215 0)))

(declare-fun b!577879 () Bool)

(assert (=> b!577879 (= e!349215 (+ 1 (size!4513 (t!77391 (_2!3590 (get!2163 lt!244157))))))))

(assert (= (and d!203243 c!108254) b!577878))

(assert (= (and d!203243 (not c!108254)) b!577879))

(declare-fun m!836149 () Bool)

(assert (=> b!577879 m!836149))

(assert (=> b!576853 d!203243))

(assert (=> b!576853 d!202659))

(assert (=> b!576853 d!202691))

(assert (=> b!576807 d!203021))

(declare-fun d!203247 () Bool)

(declare-fun c!108257 () Bool)

(assert (=> d!203247 (= c!108257 ((_ is Nil!5668) lt!244035))))

(declare-fun e!349218 () (InoxSet C!3788))

(assert (=> d!203247 (= (content!1001 lt!244035) e!349218)))

(declare-fun b!577883 () Bool)

(assert (=> b!577883 (= e!349218 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577885 () Bool)

(assert (=> b!577885 (= e!349218 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 lt!244035) true) (content!1001 (t!77391 lt!244035))))))

(assert (= (and d!203247 c!108257) b!577883))

(assert (= (and d!203247 (not c!108257)) b!577885))

(declare-fun m!836157 () Bool)

(assert (=> b!577885 m!836157))

(declare-fun m!836159 () Bool)

(assert (=> b!577885 m!836159))

(assert (=> d!202435 d!203247))

(declare-fun d!203253 () Bool)

(declare-fun c!108258 () Bool)

(assert (=> d!203253 (= c!108258 ((_ is Nil!5668) lt!243959))))

(declare-fun e!349219 () (InoxSet C!3788))

(assert (=> d!203253 (= (content!1001 lt!243959) e!349219)))

(declare-fun b!577886 () Bool)

(assert (=> b!577886 (= e!349219 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577887 () Bool)

(assert (=> b!577887 (= e!349219 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 lt!243959) true) (content!1001 (t!77391 lt!243959))))))

(assert (= (and d!203253 c!108258) b!577886))

(assert (= (and d!203253 (not c!108258)) b!577887))

(declare-fun m!836161 () Bool)

(assert (=> b!577887 m!836161))

(assert (=> b!577887 m!835673))

(assert (=> d!202435 d!203253))

(declare-fun d!203255 () Bool)

(declare-fun c!108259 () Bool)

(assert (=> d!203255 (= c!108259 ((_ is Nil!5668) (_2!3590 (v!16310 lt!243932))))))

(declare-fun e!349220 () (InoxSet C!3788))

(assert (=> d!203255 (= (content!1001 (_2!3590 (v!16310 lt!243932))) e!349220)))

(declare-fun b!577888 () Bool)

(assert (=> b!577888 (= e!349220 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577889 () Bool)

(assert (=> b!577889 (= e!349220 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 (_2!3590 (v!16310 lt!243932))) true) (content!1001 (t!77391 (_2!3590 (v!16310 lt!243932))))))))

(assert (= (and d!203255 c!108259) b!577888))

(assert (= (and d!203255 (not c!108259)) b!577889))

(declare-fun m!836163 () Bool)

(assert (=> b!577889 m!836163))

(declare-fun m!836165 () Bool)

(assert (=> b!577889 m!836165))

(assert (=> d!202435 d!203255))

(declare-fun b!577890 () Bool)

(declare-fun e!349222 () List!5678)

(assert (=> b!577890 (= e!349222 (_2!3590 (get!2163 lt!244097)))))

(declare-fun b!577893 () Bool)

(declare-fun e!349223 () Bool)

(declare-fun lt!244663 () List!5678)

(assert (=> b!577893 (= e!349223 (or (not (= (_2!3590 (get!2163 lt!244097)) Nil!5668)) (= lt!244663 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097)))))))))

(declare-fun d!203257 () Bool)

(assert (=> d!203257 e!349223))

(declare-fun res!248543 () Bool)

(assert (=> d!203257 (=> (not res!248543) (not e!349223))))

(assert (=> d!203257 (= res!248543 (= (content!1001 lt!244663) ((_ map or) (content!1001 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))) (content!1001 (_2!3590 (get!2163 lt!244097))))))))

(assert (=> d!203257 (= lt!244663 e!349222)))

(declare-fun c!108260 () Bool)

(assert (=> d!203257 (= c!108260 ((_ is Nil!5668) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))))))

(assert (=> d!203257 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097)))) (_2!3590 (get!2163 lt!244097))) lt!244663)))

(declare-fun b!577892 () Bool)

(declare-fun res!248544 () Bool)

(assert (=> b!577892 (=> (not res!248544) (not e!349223))))

(assert (=> b!577892 (= res!248544 (= (size!4513 lt!244663) (+ (size!4513 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))) (size!4513 (_2!3590 (get!2163 lt!244097))))))))

(declare-fun b!577891 () Bool)

(assert (=> b!577891 (= e!349222 (Cons!5668 (h!11069 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))) (++!1587 (t!77391 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244097))))) (_2!3590 (get!2163 lt!244097)))))))

(assert (= (and d!203257 c!108260) b!577890))

(assert (= (and d!203257 (not c!108260)) b!577891))

(assert (= (and d!203257 res!248543) b!577892))

(assert (= (and b!577892 res!248544) b!577893))

(declare-fun m!836169 () Bool)

(assert (=> d!203257 m!836169))

(assert (=> d!203257 m!834195))

(declare-fun m!836171 () Bool)

(assert (=> d!203257 m!836171))

(declare-fun m!836175 () Bool)

(assert (=> d!203257 m!836175))

(declare-fun m!836177 () Bool)

(assert (=> b!577892 m!836177))

(assert (=> b!577892 m!834195))

(declare-fun m!836179 () Bool)

(assert (=> b!577892 m!836179))

(assert (=> b!577892 m!834213))

(declare-fun m!836181 () Bool)

(assert (=> b!577891 m!836181))

(assert (=> b!576686 d!203257))

(assert (=> b!576686 d!203101))

(assert (=> b!576686 d!203103))

(assert (=> b!576686 d!202925))

(assert (=> b!576915 d!202681))

(declare-fun d!203263 () Bool)

(declare-fun lt!244664 () Int)

(assert (=> d!203263 (>= lt!244664 0)))

(declare-fun e!349224 () Int)

(assert (=> d!203263 (= lt!244664 e!349224)))

(declare-fun c!108261 () Bool)

(assert (=> d!203263 (= c!108261 ((_ is Nil!5668) lt!244165))))

(assert (=> d!203263 (= (size!4513 lt!244165) lt!244664)))

(declare-fun b!577894 () Bool)

(assert (=> b!577894 (= e!349224 0)))

(declare-fun b!577895 () Bool)

(assert (=> b!577895 (= e!349224 (+ 1 (size!4513 (t!77391 lt!244165))))))

(assert (= (and d!203263 c!108261) b!577894))

(assert (= (and d!203263 (not c!108261)) b!577895))

(declare-fun m!836185 () Bool)

(assert (=> b!577895 m!836185))

(assert (=> b!576867 d!203263))

(assert (=> b!576867 d!202759))

(assert (=> b!576867 d!203193))

(assert (=> d!202383 d!202447))

(declare-fun d!203265 () Bool)

(assert (=> d!203265 (isPrefix!733 input!2705 input!2705)))

(assert (=> d!203265 true))

(declare-fun _$45!1282 () Unit!10237)

(assert (=> d!203265 (= (choose!4128 input!2705 input!2705) _$45!1282)))

(declare-fun bs!69552 () Bool)

(assert (= bs!69552 d!203265))

(assert (=> bs!69552 m!833829))

(assert (=> d!202383 d!203265))

(declare-fun d!203267 () Bool)

(assert (=> d!203267 (= (inv!7129 (tag!1361 (h!11071 (t!77393 rules!3103)))) (= (mod (str.len (value!36162 (tag!1361 (h!11071 (t!77393 rules!3103))))) 2) 0))))

(assert (=> b!576983 d!203267))

(declare-fun d!203271 () Bool)

(declare-fun res!248553 () Bool)

(declare-fun e!349232 () Bool)

(assert (=> d!203271 (=> (not res!248553) (not e!349232))))

(assert (=> d!203271 (= res!248553 (semiInverseModEq!425 (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103))))))))

(assert (=> d!203271 (= (inv!7132 (transformation!1099 (h!11071 (t!77393 rules!3103)))) e!349232)))

(declare-fun b!577910 () Bool)

(assert (=> b!577910 (= e!349232 (equivClasses!408 (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103))))))))

(assert (= (and d!203271 res!248553) b!577910))

(declare-fun m!836197 () Bool)

(assert (=> d!203271 m!836197))

(declare-fun m!836199 () Bool)

(assert (=> b!577910 m!836199))

(assert (=> b!576983 d!203271))

(declare-fun d!203273 () Bool)

(declare-fun c!108265 () Bool)

(assert (=> d!203273 (= c!108265 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))))))

(declare-fun e!349233 () Bool)

(assert (=> d!203273 (= (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))) e!349233)))

(declare-fun b!577911 () Bool)

(assert (=> b!577911 (= e!349233 (inv!7138 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))))))

(declare-fun b!577912 () Bool)

(declare-fun e!349234 () Bool)

(assert (=> b!577912 (= e!349233 e!349234)))

(declare-fun res!248554 () Bool)

(assert (=> b!577912 (= res!248554 (not ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))))))))

(assert (=> b!577912 (=> res!248554 e!349234)))

(declare-fun b!577913 () Bool)

(assert (=> b!577913 (= e!349234 (inv!7139 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))))))

(assert (= (and d!203273 c!108265) b!577911))

(assert (= (and d!203273 (not c!108265)) b!577912))

(assert (= (and b!577912 (not res!248554)) b!577913))

(declare-fun m!836201 () Bool)

(assert (=> b!577911 m!836201))

(declare-fun m!836203 () Bool)

(assert (=> b!577913 m!836203))

(assert (=> b!576707 d!203273))

(assert (=> b!576459 d!203179))

(assert (=> b!576459 d!202363))

(assert (=> bm!39834 d!202603))

(declare-fun b!577914 () Bool)

(declare-fun e!349235 () Bool)

(declare-fun lt!244669 () Option!1450)

(assert (=> b!577914 (= e!349235 (= (size!4512 (_1!3590 (get!2163 lt!244669))) (size!4513 (originalCharacters!1138 (_1!3590 (get!2163 lt!244669))))))))

(declare-fun b!577915 () Bool)

(declare-fun res!248557 () Bool)

(assert (=> b!577915 (=> (not res!248557) (not e!349235))))

(assert (=> b!577915 (= res!248557 (= (rule!1849 (_1!3590 (get!2163 lt!244669))) (h!11071 rules!3103)))))

(declare-fun d!203275 () Bool)

(declare-fun e!349237 () Bool)

(assert (=> d!203275 e!349237))

(declare-fun res!248555 () Bool)

(assert (=> d!203275 (=> res!248555 e!349237)))

(assert (=> d!203275 (= res!248555 (isEmpty!4096 lt!244669))))

(declare-fun e!349238 () Option!1450)

(assert (=> d!203275 (= lt!244669 e!349238)))

(declare-fun c!108266 () Bool)

(declare-fun lt!244670 () tuple2!6654)

(assert (=> d!203275 (= c!108266 (isEmpty!4093 (_1!3591 lt!244670)))))

(assert (=> d!203275 (= lt!244670 (findLongestMatch!149 (regex!1099 (h!11071 rules!3103)) input!2705))))

(assert (=> d!203275 (ruleValid!309 thiss!22590 (h!11071 rules!3103))))

(assert (=> d!203275 (= (maxPrefixOneRule!384 thiss!22590 (h!11071 rules!3103) input!2705) lt!244669)))

(declare-fun b!577916 () Bool)

(assert (=> b!577916 (= e!349238 None!1449)))

(declare-fun b!577917 () Bool)

(declare-fun e!349236 () Bool)

(assert (=> b!577917 (= e!349236 (matchR!580 (regex!1099 (h!11071 rules!3103)) (_1!3591 (findLongestMatchInner!170 (regex!1099 (h!11071 rules!3103)) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(declare-fun b!577918 () Bool)

(declare-fun res!248558 () Bool)

(assert (=> b!577918 (=> (not res!248558) (not e!349235))))

(assert (=> b!577918 (= res!248558 (= (value!36188 (_1!3590 (get!2163 lt!244669))) (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244669)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244669)))))))))

(declare-fun b!577919 () Bool)

(declare-fun res!248561 () Bool)

(assert (=> b!577919 (=> (not res!248561) (not e!349235))))

(assert (=> b!577919 (= res!248561 (= (++!1587 (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244669)))) (_2!3590 (get!2163 lt!244669))) input!2705))))

(declare-fun b!577920 () Bool)

(assert (=> b!577920 (= e!349238 (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (h!11071 rules!3103)) (seqFromList!1287 (_1!3591 lt!244670))) (h!11071 rules!3103) (size!4514 (seqFromList!1287 (_1!3591 lt!244670))) (_1!3591 lt!244670)) (_2!3591 lt!244670))))))

(declare-fun lt!244666 () Unit!10237)

(assert (=> b!577920 (= lt!244666 (longestMatchIsAcceptedByMatchOrIsEmpty!154 (regex!1099 (h!11071 rules!3103)) input!2705))))

(declare-fun res!248556 () Bool)

(assert (=> b!577920 (= res!248556 (isEmpty!4093 (_1!3591 (findLongestMatchInner!170 (regex!1099 (h!11071 rules!3103)) Nil!5668 (size!4513 Nil!5668) input!2705 input!2705 (size!4513 input!2705)))))))

(assert (=> b!577920 (=> res!248556 e!349236)))

(assert (=> b!577920 e!349236))

(declare-fun lt!244667 () Unit!10237)

(assert (=> b!577920 (= lt!244667 lt!244666)))

(declare-fun lt!244668 () Unit!10237)

(assert (=> b!577920 (= lt!244668 (lemmaSemiInverse!202 (transformation!1099 (h!11071 rules!3103)) (seqFromList!1287 (_1!3591 lt!244670))))))

(declare-fun b!577921 () Bool)

(declare-fun res!248560 () Bool)

(assert (=> b!577921 (=> (not res!248560) (not e!349235))))

(assert (=> b!577921 (= res!248560 (< (size!4513 (_2!3590 (get!2163 lt!244669))) (size!4513 input!2705)))))

(declare-fun b!577922 () Bool)

(assert (=> b!577922 (= e!349237 e!349235)))

(declare-fun res!248559 () Bool)

(assert (=> b!577922 (=> (not res!248559) (not e!349235))))

(assert (=> b!577922 (= res!248559 (matchR!580 (regex!1099 (h!11071 rules!3103)) (list!2355 (charsOf!728 (_1!3590 (get!2163 lt!244669))))))))

(assert (= (and d!203275 c!108266) b!577916))

(assert (= (and d!203275 (not c!108266)) b!577920))

(assert (= (and b!577920 (not res!248556)) b!577917))

(assert (= (and d!203275 (not res!248555)) b!577922))

(assert (= (and b!577922 res!248559) b!577919))

(assert (= (and b!577919 res!248561) b!577921))

(assert (= (and b!577921 res!248560) b!577915))

(assert (= (and b!577915 res!248557) b!577918))

(assert (= (and b!577918 res!248558) b!577914))

(declare-fun m!836205 () Bool)

(assert (=> b!577920 m!836205))

(assert (=> b!577920 m!836205))

(declare-fun m!836207 () Bool)

(assert (=> b!577920 m!836207))

(assert (=> b!577920 m!834179))

(assert (=> b!577920 m!833861))

(declare-fun m!836209 () Bool)

(assert (=> b!577920 m!836209))

(assert (=> b!577920 m!833861))

(declare-fun m!836211 () Bool)

(assert (=> b!577920 m!836211))

(assert (=> b!577920 m!836205))

(declare-fun m!836213 () Bool)

(assert (=> b!577920 m!836213))

(declare-fun m!836215 () Bool)

(assert (=> b!577920 m!836215))

(assert (=> b!577920 m!836205))

(declare-fun m!836217 () Bool)

(assert (=> b!577920 m!836217))

(assert (=> b!577920 m!834179))

(declare-fun m!836219 () Bool)

(assert (=> b!577922 m!836219))

(declare-fun m!836221 () Bool)

(assert (=> b!577922 m!836221))

(assert (=> b!577922 m!836221))

(declare-fun m!836223 () Bool)

(assert (=> b!577922 m!836223))

(assert (=> b!577922 m!836223))

(declare-fun m!836225 () Bool)

(assert (=> b!577922 m!836225))

(assert (=> b!577915 m!836219))

(assert (=> b!577917 m!834179))

(assert (=> b!577917 m!833861))

(assert (=> b!577917 m!834179))

(assert (=> b!577917 m!833861))

(assert (=> b!577917 m!836209))

(declare-fun m!836227 () Bool)

(assert (=> b!577917 m!836227))

(assert (=> b!577914 m!836219))

(declare-fun m!836229 () Bool)

(assert (=> b!577914 m!836229))

(declare-fun m!836231 () Bool)

(assert (=> d!203275 m!836231))

(declare-fun m!836233 () Bool)

(assert (=> d!203275 m!836233))

(declare-fun m!836235 () Bool)

(assert (=> d!203275 m!836235))

(assert (=> d!203275 m!835327))

(assert (=> b!577918 m!836219))

(declare-fun m!836237 () Bool)

(assert (=> b!577918 m!836237))

(assert (=> b!577918 m!836237))

(declare-fun m!836239 () Bool)

(assert (=> b!577918 m!836239))

(assert (=> b!577921 m!836219))

(declare-fun m!836241 () Bool)

(assert (=> b!577921 m!836241))

(assert (=> b!577921 m!833861))

(assert (=> b!577919 m!836219))

(assert (=> b!577919 m!836221))

(assert (=> b!577919 m!836221))

(assert (=> b!577919 m!836223))

(assert (=> b!577919 m!836223))

(declare-fun m!836243 () Bool)

(assert (=> b!577919 m!836243))

(assert (=> bm!39831 d!203275))

(declare-fun d!203277 () Bool)

(declare-fun lt!244671 () Int)

(assert (=> d!203277 (>= lt!244671 0)))

(declare-fun e!349239 () Int)

(assert (=> d!203277 (= lt!244671 e!349239)))

(declare-fun c!108267 () Bool)

(assert (=> d!203277 (= c!108267 ((_ is Nil!5668) (_2!3590 (get!2163 lt!244102))))))

(assert (=> d!203277 (= (size!4513 (_2!3590 (get!2163 lt!244102))) lt!244671)))

(declare-fun b!577923 () Bool)

(assert (=> b!577923 (= e!349239 0)))

(declare-fun b!577924 () Bool)

(assert (=> b!577924 (= e!349239 (+ 1 (size!4513 (t!77391 (_2!3590 (get!2163 lt!244102))))))))

(assert (= (and d!203277 c!108267) b!577923))

(assert (= (and d!203277 (not c!108267)) b!577924))

(declare-fun m!836245 () Bool)

(assert (=> b!577924 m!836245))

(assert (=> b!576697 d!203277))

(assert (=> b!576697 d!202793))

(assert (=> b!576697 d!202759))

(declare-fun b!577925 () Bool)

(declare-fun e!349242 () Bool)

(declare-fun e!349241 () Bool)

(assert (=> b!577925 (= e!349242 e!349241)))

(declare-fun res!248562 () Bool)

(assert (=> b!577925 (=> (not res!248562) (not e!349241))))

(assert (=> b!577925 (= res!248562 (not ((_ is Nil!5668) (++!1587 lt!243945 suffix!1342))))))

(declare-fun b!577926 () Bool)

(declare-fun res!248565 () Bool)

(assert (=> b!577926 (=> (not res!248565) (not e!349241))))

(assert (=> b!577926 (= res!248565 (= (head!1224 lt!243945) (head!1224 (++!1587 lt!243945 suffix!1342))))))

(declare-fun b!577928 () Bool)

(declare-fun e!349240 () Bool)

(assert (=> b!577928 (= e!349240 (>= (size!4513 (++!1587 lt!243945 suffix!1342)) (size!4513 lt!243945)))))

(declare-fun d!203279 () Bool)

(assert (=> d!203279 e!349240))

(declare-fun res!248564 () Bool)

(assert (=> d!203279 (=> res!248564 e!349240)))

(declare-fun lt!244672 () Bool)

(assert (=> d!203279 (= res!248564 (not lt!244672))))

(assert (=> d!203279 (= lt!244672 e!349242)))

(declare-fun res!248563 () Bool)

(assert (=> d!203279 (=> res!248563 e!349242)))

(assert (=> d!203279 (= res!248563 ((_ is Nil!5668) lt!243945))))

(assert (=> d!203279 (= (isPrefix!733 lt!243945 (++!1587 lt!243945 suffix!1342)) lt!244672)))

(declare-fun b!577927 () Bool)

(assert (=> b!577927 (= e!349241 (isPrefix!733 (tail!753 lt!243945) (tail!753 (++!1587 lt!243945 suffix!1342))))))

(assert (= (and d!203279 (not res!248563)) b!577925))

(assert (= (and b!577925 res!248562) b!577926))

(assert (= (and b!577926 res!248565) b!577927))

(assert (= (and d!203279 (not res!248564)) b!577928))

(assert (=> b!577926 m!833883))

(assert (=> b!577926 m!833737))

(declare-fun m!836247 () Bool)

(assert (=> b!577926 m!836247))

(assert (=> b!577928 m!833737))

(declare-fun m!836249 () Bool)

(assert (=> b!577928 m!836249))

(assert (=> b!577928 m!833821))

(assert (=> b!577927 m!833889))

(assert (=> b!577927 m!833737))

(declare-fun m!836251 () Bool)

(assert (=> b!577927 m!836251))

(assert (=> b!577927 m!833889))

(assert (=> b!577927 m!836251))

(declare-fun m!836253 () Bool)

(assert (=> b!577927 m!836253))

(assert (=> d!202399 d!203279))

(assert (=> d!202399 d!202547))

(declare-fun d!203281 () Bool)

(assert (=> d!203281 (isPrefix!733 lt!243945 (++!1587 lt!243945 suffix!1342))))

(assert (=> d!203281 true))

(declare-fun _$46!924 () Unit!10237)

(assert (=> d!203281 (= (choose!4129 lt!243945 suffix!1342) _$46!924)))

(declare-fun bs!69553 () Bool)

(assert (= bs!69553 d!203281))

(assert (=> bs!69553 m!833737))

(assert (=> bs!69553 m!833737))

(assert (=> bs!69553 m!833961))

(assert (=> d!202399 d!203281))

(assert (=> d!202415 d!202359))

(declare-fun d!203283 () Bool)

(assert (=> d!203283 (ruleValid!309 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))))))

(assert (=> d!203283 true))

(declare-fun _$65!833 () Unit!10237)

(assert (=> d!203283 (= (choose!4131 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) rules!3103) _$65!833)))

(declare-fun bs!69554 () Bool)

(assert (= bs!69554 d!203283))

(assert (=> bs!69554 m!833827))

(assert (=> d!202415 d!203283))

(assert (=> d!202415 d!202593))

(assert (=> d!202501 d!202493))

(declare-fun d!203285 () Bool)

(assert (=> d!203285 (= (maxPrefixOneRule!384 thiss!22590 (rule!1849 (_1!3590 (v!16310 lt!243932))) input!2705) (Some!1449 (tuple2!6653 (Token!1935 (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (seqFromList!1287 lt!243959)) (rule!1849 (_1!3590 (v!16310 lt!243932))) (size!4513 lt!243959) lt!243959) (_2!3590 (v!16310 lt!243932)))))))

(assert (=> d!203285 true))

(declare-fun _$59!250 () Unit!10237)

(assert (=> d!203285 (= (choose!4135 thiss!22590 rules!3103 lt!243959 input!2705 (_2!3590 (v!16310 lt!243932)) (rule!1849 (_1!3590 (v!16310 lt!243932)))) _$59!250)))

(declare-fun bs!69555 () Bool)

(assert (= bs!69555 d!203285))

(assert (=> bs!69555 m!833765))

(assert (=> bs!69555 m!833787))

(assert (=> bs!69555 m!833787))

(assert (=> bs!69555 m!834267))

(assert (=> bs!69555 m!833815))

(assert (=> d!202501 d!203285))

(assert (=> d!202501 d!202595))

(assert (=> d!202501 d!202375))

(declare-fun d!203287 () Bool)

(assert (=> d!203287 (= (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))) (seqFromList!1287 lt!243959)) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (seqFromList!1287 lt!243959)))))

(declare-fun b_lambda!22609 () Bool)

(assert (=> (not b_lambda!22609) (not d!203287)))

(declare-fun tb!50483 () Bool)

(declare-fun t!77615 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77615) tb!50483))

(declare-fun result!56510 () Bool)

(assert (=> tb!50483 (= result!56510 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (seqFromList!1287 lt!243959))))))

(declare-fun m!836255 () Bool)

(assert (=> tb!50483 m!836255))

(assert (=> d!203287 t!77615))

(declare-fun b_and!56675 () Bool)

(assert (= b_and!56663 (and (=> t!77615 result!56510) b_and!56675)))

(declare-fun t!77617 () Bool)

(declare-fun tb!50485 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77617) tb!50485))

(declare-fun result!56512 () Bool)

(assert (= result!56512 result!56510))

(assert (=> d!203287 t!77617))

(declare-fun b_and!56677 () Bool)

(assert (= b_and!56665 (and (=> t!77617 result!56512) b_and!56677)))

(declare-fun t!77619 () Bool)

(declare-fun tb!50487 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77619) tb!50487))

(declare-fun result!56514 () Bool)

(assert (= result!56514 result!56510))

(assert (=> d!203287 t!77619))

(declare-fun b_and!56679 () Bool)

(assert (= b_and!56667 (and (=> t!77619 result!56514) b_and!56679)))

(assert (=> d!203287 m!833787))

(declare-fun m!836257 () Bool)

(assert (=> d!203287 m!836257))

(assert (=> d!202501 d!203287))

(assert (=> d!202501 d!202465))

(assert (=> b!576771 d!202803))

(declare-fun d!203289 () Bool)

(assert (=> d!203289 (= (apply!1364 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244139))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244139))))))))

(declare-fun b_lambda!22611 () Bool)

(assert (=> (not b_lambda!22611) (not d!203289)))

(declare-fun t!77621 () Bool)

(declare-fun tb!50489 () Bool)

(assert (=> (and b!576363 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77621) tb!50489))

(declare-fun result!56516 () Bool)

(assert (=> tb!50489 (= result!56516 (inv!21 (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139))))) (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244139)))))))))

(declare-fun m!836259 () Bool)

(assert (=> tb!50489 m!836259))

(assert (=> d!203289 t!77621))

(declare-fun b_and!56681 () Bool)

(assert (= b_and!56675 (and (=> t!77621 result!56516) b_and!56681)))

(declare-fun t!77623 () Bool)

(declare-fun tb!50491 () Bool)

(assert (=> (and b!576362 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77623) tb!50491))

(declare-fun result!56518 () Bool)

(assert (= result!56518 result!56516))

(assert (=> d!203289 t!77623))

(declare-fun b_and!56683 () Bool)

(assert (= b_and!56677 (and (=> t!77623 result!56518) b_and!56683)))

(declare-fun t!77625 () Bool)

(declare-fun tb!50493 () Bool)

(assert (=> (and b!576984 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77625) tb!50493))

(declare-fun result!56520 () Bool)

(assert (= result!56520 result!56516))

(assert (=> d!203289 t!77625))

(declare-fun b_and!56685 () Bool)

(assert (= b_and!56679 (and (=> t!77625 result!56520) b_and!56685)))

(assert (=> d!203289 m!834383))

(declare-fun m!836261 () Bool)

(assert (=> d!203289 m!836261))

(assert (=> b!576771 d!203289))

(declare-fun d!203291 () Bool)

(assert (=> d!203291 (= (seqFromList!1287 (originalCharacters!1138 (_1!3590 (get!2163 lt!244139)))) (fromListB!561 (originalCharacters!1138 (_1!3590 (get!2163 lt!244139)))))))

(declare-fun bs!69556 () Bool)

(assert (= bs!69556 d!203291))

(declare-fun m!836263 () Bool)

(assert (=> bs!69556 m!836263))

(assert (=> b!576771 d!203291))

(assert (=> d!202431 d!202567))

(declare-fun d!203293 () Bool)

(assert (=> d!203293 (= (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))) (isBalanced!510 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))))))

(declare-fun bs!69557 () Bool)

(assert (= bs!69557 d!203293))

(declare-fun m!836265 () Bool)

(assert (=> bs!69557 m!836265))

(assert (=> tb!50283 d!203293))

(declare-fun d!203295 () Bool)

(declare-fun c!108278 () Bool)

(assert (=> d!203295 (= c!108278 ((_ is Nil!5668) lt!244165))))

(declare-fun e!349255 () (InoxSet C!3788))

(assert (=> d!203295 (= (content!1001 lt!244165) e!349255)))

(declare-fun b!577949 () Bool)

(assert (=> b!577949 (= e!349255 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577950 () Bool)

(assert (=> b!577950 (= e!349255 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 lt!244165) true) (content!1001 (t!77391 lt!244165))))))

(assert (= (and d!203295 c!108278) b!577949))

(assert (= (and d!203295 (not c!108278)) b!577950))

(declare-fun m!836267 () Bool)

(assert (=> b!577950 m!836267))

(declare-fun m!836269 () Bool)

(assert (=> b!577950 m!836269))

(assert (=> d!202561 d!203295))

(declare-fun d!203297 () Bool)

(declare-fun c!108279 () Bool)

(assert (=> d!203297 (= c!108279 ((_ is Nil!5668) input!2705))))

(declare-fun e!349256 () (InoxSet C!3788))

(assert (=> d!203297 (= (content!1001 input!2705) e!349256)))

(declare-fun b!577951 () Bool)

(assert (=> b!577951 (= e!349256 ((as const (Array C!3788 Bool)) false))))

(declare-fun b!577952 () Bool)

(assert (=> b!577952 (= e!349256 ((_ map or) (store ((as const (Array C!3788 Bool)) false) (h!11069 input!2705) true) (content!1001 (t!77391 input!2705))))))

(assert (= (and d!203297 c!108279) b!577951))

(assert (= (and d!203297 (not c!108279)) b!577952))

(declare-fun m!836271 () Bool)

(assert (=> b!577952 m!836271))

(assert (=> b!577952 m!835895))

(assert (=> d!202561 d!203297))

(assert (=> d!202561 d!202931))

(declare-fun d!203299 () Bool)

(assert (=> d!203299 (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))) (list!2356 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))))))

(declare-fun bs!69558 () Bool)

(assert (= bs!69558 d!203299))

(declare-fun m!836273 () Bool)

(assert (=> bs!69558 m!836273))

(assert (=> b!576705 d!203299))

(declare-fun d!203301 () Bool)

(declare-fun lt!244675 () List!5678)

(assert (=> d!203301 (= (++!1587 (t!77391 lt!243959) lt!244675) (tail!753 input!2705))))

(declare-fun e!349257 () List!5678)

(assert (=> d!203301 (= lt!244675 e!349257)))

(declare-fun c!108280 () Bool)

(assert (=> d!203301 (= c!108280 ((_ is Cons!5668) (t!77391 lt!243959)))))

(assert (=> d!203301 (>= (size!4513 (tail!753 input!2705)) (size!4513 (t!77391 lt!243959)))))

(assert (=> d!203301 (= (getSuffix!252 (tail!753 input!2705) (t!77391 lt!243959)) lt!244675)))

(declare-fun b!577953 () Bool)

(assert (=> b!577953 (= e!349257 (getSuffix!252 (tail!753 (tail!753 input!2705)) (t!77391 (t!77391 lt!243959))))))

(declare-fun b!577954 () Bool)

(assert (=> b!577954 (= e!349257 (tail!753 input!2705))))

(assert (= (and d!203301 c!108280) b!577953))

(assert (= (and d!203301 (not c!108280)) b!577954))

(declare-fun m!836275 () Bool)

(assert (=> d!203301 m!836275))

(assert (=> d!203301 m!833863))

(assert (=> d!203301 m!835499))

(assert (=> d!203301 m!833911))

(assert (=> b!577953 m!833863))

(assert (=> b!577953 m!834713))

(assert (=> b!577953 m!834713))

(declare-fun m!836277 () Bool)

(assert (=> b!577953 m!836277))

(assert (=> b!576421 d!203301))

(assert (=> b!576421 d!202669))

(declare-fun d!203303 () Bool)

(assert (=> d!203303 (= (inv!7137 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))) (isBalanced!510 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))))))

(declare-fun bs!69559 () Bool)

(assert (= bs!69559 d!203303))

(declare-fun m!836279 () Bool)

(assert (=> bs!69559 m!836279))

(assert (=> tb!50287 d!203303))

(declare-fun d!203305 () Bool)

(assert (=> d!203305 (= (isDefined!1261 lt!244157) (not (isEmpty!4096 lt!244157)))))

(declare-fun bs!69560 () Bool)

(assert (= bs!69560 d!203305))

(assert (=> bs!69560 m!834503))

(assert (=> b!576857 d!203305))

(declare-fun b!577973 () Bool)

(declare-fun tp!180813 () Bool)

(declare-fun e!349268 () Bool)

(declare-fun tp!180815 () Bool)

(assert (=> b!577973 (= e!349268 (and (inv!7136 (left!4630 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))) tp!180813 (inv!7136 (right!4960 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))) tp!180815))))

(declare-fun b!577975 () Bool)

(declare-fun e!349267 () Bool)

(declare-fun tp!180814 () Bool)

(assert (=> b!577975 (= e!349267 tp!180814)))

(declare-fun b!577974 () Bool)

(declare-fun inv!7143 (IArray!3633) Bool)

(assert (=> b!577974 (= e!349268 (and (inv!7143 (xs!4453 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))) e!349267))))

(assert (=> b!576610 (= tp!180715 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968)))) e!349268))))

(assert (= (and b!576610 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))) b!577973))

(assert (= b!577974 b!577975))

(assert (= (and b!576610 ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))))) b!577974))

(declare-fun m!836285 () Bool)

(assert (=> b!577973 m!836285))

(declare-fun m!836289 () Bool)

(assert (=> b!577973 m!836289))

(declare-fun m!836291 () Bool)

(assert (=> b!577974 m!836291))

(assert (=> b!576610 m!834115))

(declare-fun b!577976 () Bool)

(declare-fun e!349269 () Bool)

(assert (=> b!577976 (= e!349269 tp_is_empty!3221)))

(assert (=> b!576967 (= tp!180768 e!349269)))

(declare-fun b!577977 () Bool)

(declare-fun tp!180819 () Bool)

(declare-fun tp!180817 () Bool)

(assert (=> b!577977 (= e!349269 (and tp!180819 tp!180817))))

(declare-fun b!577979 () Bool)

(declare-fun tp!180816 () Bool)

(declare-fun tp!180818 () Bool)

(assert (=> b!577979 (= e!349269 (and tp!180816 tp!180818))))

(declare-fun b!577978 () Bool)

(declare-fun tp!180820 () Bool)

(assert (=> b!577978 (= e!349269 tp!180820)))

(assert (= (and b!576967 ((_ is ElementMatch!1433) (regOne!3379 (regex!1099 (rule!1849 token!491))))) b!577976))

(assert (= (and b!576967 ((_ is Concat!2556) (regOne!3379 (regex!1099 (rule!1849 token!491))))) b!577977))

(assert (= (and b!576967 ((_ is Star!1433) (regOne!3379 (regex!1099 (rule!1849 token!491))))) b!577978))

(assert (= (and b!576967 ((_ is Union!1433) (regOne!3379 (regex!1099 (rule!1849 token!491))))) b!577979))

(declare-fun b!577982 () Bool)

(declare-fun e!349271 () Bool)

(assert (=> b!577982 (= e!349271 tp_is_empty!3221)))

(assert (=> b!576967 (= tp!180770 e!349271)))

(declare-fun b!577983 () Bool)

(declare-fun tp!180824 () Bool)

(declare-fun tp!180822 () Bool)

(assert (=> b!577983 (= e!349271 (and tp!180824 tp!180822))))

(declare-fun b!577985 () Bool)

(declare-fun tp!180821 () Bool)

(declare-fun tp!180823 () Bool)

(assert (=> b!577985 (= e!349271 (and tp!180821 tp!180823))))

(declare-fun b!577984 () Bool)

(declare-fun tp!180825 () Bool)

(assert (=> b!577984 (= e!349271 tp!180825)))

(assert (= (and b!576967 ((_ is ElementMatch!1433) (regTwo!3379 (regex!1099 (rule!1849 token!491))))) b!577982))

(assert (= (and b!576967 ((_ is Concat!2556) (regTwo!3379 (regex!1099 (rule!1849 token!491))))) b!577983))

(assert (= (and b!576967 ((_ is Star!1433) (regTwo!3379 (regex!1099 (rule!1849 token!491))))) b!577984))

(assert (= (and b!576967 ((_ is Union!1433) (regTwo!3379 (regex!1099 (rule!1849 token!491))))) b!577985))

(declare-fun b!577986 () Bool)

(declare-fun e!349272 () Bool)

(assert (=> b!577986 (= e!349272 tp_is_empty!3221)))

(assert (=> b!576966 (= tp!180772 e!349272)))

(declare-fun b!577987 () Bool)

(declare-fun tp!180829 () Bool)

(declare-fun tp!180827 () Bool)

(assert (=> b!577987 (= e!349272 (and tp!180829 tp!180827))))

(declare-fun b!577989 () Bool)

(declare-fun tp!180826 () Bool)

(declare-fun tp!180828 () Bool)

(assert (=> b!577989 (= e!349272 (and tp!180826 tp!180828))))

(declare-fun b!577988 () Bool)

(declare-fun tp!180830 () Bool)

(assert (=> b!577988 (= e!349272 tp!180830)))

(assert (= (and b!576966 ((_ is ElementMatch!1433) (reg!1762 (regex!1099 (rule!1849 token!491))))) b!577986))

(assert (= (and b!576966 ((_ is Concat!2556) (reg!1762 (regex!1099 (rule!1849 token!491))))) b!577987))

(assert (= (and b!576966 ((_ is Star!1433) (reg!1762 (regex!1099 (rule!1849 token!491))))) b!577988))

(assert (= (and b!576966 ((_ is Union!1433) (reg!1762 (regex!1099 (rule!1849 token!491))))) b!577989))

(declare-fun e!349274 () Bool)

(declare-fun b!577990 () Bool)

(declare-fun tp!180831 () Bool)

(declare-fun tp!180833 () Bool)

(assert (=> b!577990 (= e!349274 (and (inv!7136 (left!4630 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))))) tp!180831 (inv!7136 (right!4960 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))))) tp!180833))))

(declare-fun b!577994 () Bool)

(declare-fun e!349273 () Bool)

(declare-fun tp!180832 () Bool)

(assert (=> b!577994 (= e!349273 tp!180832)))

(declare-fun b!577992 () Bool)

(assert (=> b!577992 (= e!349274 (and (inv!7143 (xs!4453 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))))) e!349273))))

(assert (=> b!576535 (= tp!180714 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932)))))) e!349274))))

(assert (= (and b!576535 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))))) b!577990))

(assert (= b!577992 b!577994))

(assert (= (and b!576535 ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (value!36188 (_1!3590 (v!16310 lt!243932))))))) b!577992))

(declare-fun m!836301 () Bool)

(assert (=> b!577990 m!836301))

(declare-fun m!836303 () Bool)

(assert (=> b!577990 m!836303))

(declare-fun m!836307 () Bool)

(assert (=> b!577992 m!836307))

(assert (=> b!576535 m!834031))

(declare-fun b!577997 () Bool)

(declare-fun e!349277 () Bool)

(assert (=> b!577997 (= e!349277 tp_is_empty!3221)))

(assert (=> b!576965 (= tp!180771 e!349277)))

(declare-fun b!577998 () Bool)

(declare-fun tp!180837 () Bool)

(declare-fun tp!180835 () Bool)

(assert (=> b!577998 (= e!349277 (and tp!180837 tp!180835))))

(declare-fun b!578000 () Bool)

(declare-fun tp!180834 () Bool)

(declare-fun tp!180836 () Bool)

(assert (=> b!578000 (= e!349277 (and tp!180834 tp!180836))))

(declare-fun b!577999 () Bool)

(declare-fun tp!180838 () Bool)

(assert (=> b!577999 (= e!349277 tp!180838)))

(assert (= (and b!576965 ((_ is ElementMatch!1433) (regOne!3378 (regex!1099 (rule!1849 token!491))))) b!577997))

(assert (= (and b!576965 ((_ is Concat!2556) (regOne!3378 (regex!1099 (rule!1849 token!491))))) b!577998))

(assert (= (and b!576965 ((_ is Star!1433) (regOne!3378 (regex!1099 (rule!1849 token!491))))) b!577999))

(assert (= (and b!576965 ((_ is Union!1433) (regOne!3378 (regex!1099 (rule!1849 token!491))))) b!578000))

(declare-fun b!578015 () Bool)

(declare-fun e!349285 () Bool)

(assert (=> b!578015 (= e!349285 tp_is_empty!3221)))

(assert (=> b!576965 (= tp!180769 e!349285)))

(declare-fun b!578016 () Bool)

(declare-fun tp!180842 () Bool)

(declare-fun tp!180840 () Bool)

(assert (=> b!578016 (= e!349285 (and tp!180842 tp!180840))))

(declare-fun b!578018 () Bool)

(declare-fun tp!180839 () Bool)

(declare-fun tp!180841 () Bool)

(assert (=> b!578018 (= e!349285 (and tp!180839 tp!180841))))

(declare-fun b!578017 () Bool)

(declare-fun tp!180843 () Bool)

(assert (=> b!578017 (= e!349285 tp!180843)))

(assert (= (and b!576965 ((_ is ElementMatch!1433) (regTwo!3378 (regex!1099 (rule!1849 token!491))))) b!578015))

(assert (= (and b!576965 ((_ is Concat!2556) (regTwo!3378 (regex!1099 (rule!1849 token!491))))) b!578016))

(assert (= (and b!576965 ((_ is Star!1433) (regTwo!3378 (regex!1099 (rule!1849 token!491))))) b!578017))

(assert (= (and b!576965 ((_ is Union!1433) (regTwo!3378 (regex!1099 (rule!1849 token!491))))) b!578018))

(declare-fun b!578019 () Bool)

(declare-fun e!349287 () Bool)

(declare-fun tp!180844 () Bool)

(declare-fun tp!180846 () Bool)

(assert (=> b!578019 (= e!349287 (and (inv!7136 (left!4630 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))) tp!180844 (inv!7136 (right!4960 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))) tp!180846))))

(declare-fun b!578021 () Bool)

(declare-fun e!349286 () Bool)

(declare-fun tp!180845 () Bool)

(assert (=> b!578021 (= e!349286 tp!180845)))

(declare-fun b!578020 () Bool)

(assert (=> b!578020 (= e!349287 (and (inv!7143 (xs!4453 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))) e!349286))))

(assert (=> b!576612 (= tp!180716 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954)))) e!349287))))

(assert (= (and b!576612 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))) b!578019))

(assert (= b!578020 b!578021))

(assert (= (and b!576612 ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))))) b!578020))

(declare-fun m!836309 () Bool)

(assert (=> b!578019 m!836309))

(declare-fun m!836311 () Bool)

(assert (=> b!578019 m!836311))

(declare-fun m!836313 () Bool)

(assert (=> b!578020 m!836313))

(assert (=> b!576612 m!834127))

(declare-fun b!578022 () Bool)

(declare-fun e!349288 () Bool)

(declare-fun tp!180847 () Bool)

(assert (=> b!578022 (= e!349288 (and tp_is_empty!3221 tp!180847))))

(assert (=> b!576973 (= tp!180776 e!349288)))

(assert (= (and b!576973 ((_ is Cons!5668) (t!77391 (t!77391 suffix!1342)))) b!578022))

(declare-fun b!578023 () Bool)

(declare-fun e!349289 () Bool)

(declare-fun tp!180848 () Bool)

(assert (=> b!578023 (= e!349289 (and tp_is_empty!3221 tp!180848))))

(assert (=> b!576985 (= tp!180789 e!349289)))

(assert (= (and b!576985 ((_ is Cons!5668) (t!77391 (t!77391 input!2705)))) b!578023))

(declare-fun b!578024 () Bool)

(declare-fun e!349290 () Bool)

(assert (=> b!578024 (= e!349290 tp_is_empty!3221)))

(assert (=> b!576989 (= tp!180790 e!349290)))

(declare-fun b!578025 () Bool)

(declare-fun tp!180852 () Bool)

(declare-fun tp!180850 () Bool)

(assert (=> b!578025 (= e!349290 (and tp!180852 tp!180850))))

(declare-fun b!578027 () Bool)

(declare-fun tp!180849 () Bool)

(declare-fun tp!180851 () Bool)

(assert (=> b!578027 (= e!349290 (and tp!180849 tp!180851))))

(declare-fun b!578026 () Bool)

(declare-fun tp!180853 () Bool)

(assert (=> b!578026 (= e!349290 tp!180853)))

(assert (= (and b!576989 ((_ is ElementMatch!1433) (regOne!3379 (regex!1099 (h!11071 rules!3103))))) b!578024))

(assert (= (and b!576989 ((_ is Concat!2556) (regOne!3379 (regex!1099 (h!11071 rules!3103))))) b!578025))

(assert (= (and b!576989 ((_ is Star!1433) (regOne!3379 (regex!1099 (h!11071 rules!3103))))) b!578026))

(assert (= (and b!576989 ((_ is Union!1433) (regOne!3379 (regex!1099 (h!11071 rules!3103))))) b!578027))

(declare-fun b!578028 () Bool)

(declare-fun e!349291 () Bool)

(assert (=> b!578028 (= e!349291 tp_is_empty!3221)))

(assert (=> b!576989 (= tp!180792 e!349291)))

(declare-fun b!578029 () Bool)

(declare-fun tp!180857 () Bool)

(declare-fun tp!180855 () Bool)

(assert (=> b!578029 (= e!349291 (and tp!180857 tp!180855))))

(declare-fun b!578031 () Bool)

(declare-fun tp!180854 () Bool)

(declare-fun tp!180856 () Bool)

(assert (=> b!578031 (= e!349291 (and tp!180854 tp!180856))))

(declare-fun b!578030 () Bool)

(declare-fun tp!180858 () Bool)

(assert (=> b!578030 (= e!349291 tp!180858)))

(assert (= (and b!576989 ((_ is ElementMatch!1433) (regTwo!3379 (regex!1099 (h!11071 rules!3103))))) b!578028))

(assert (= (and b!576989 ((_ is Concat!2556) (regTwo!3379 (regex!1099 (h!11071 rules!3103))))) b!578029))

(assert (= (and b!576989 ((_ is Star!1433) (regTwo!3379 (regex!1099 (h!11071 rules!3103))))) b!578030))

(assert (= (and b!576989 ((_ is Union!1433) (regTwo!3379 (regex!1099 (h!11071 rules!3103))))) b!578031))

(declare-fun b!578032 () Bool)

(declare-fun e!349292 () Bool)

(assert (=> b!578032 (= e!349292 tp_is_empty!3221)))

(assert (=> b!576988 (= tp!180794 e!349292)))

(declare-fun b!578033 () Bool)

(declare-fun tp!180862 () Bool)

(declare-fun tp!180860 () Bool)

(assert (=> b!578033 (= e!349292 (and tp!180862 tp!180860))))

(declare-fun b!578035 () Bool)

(declare-fun tp!180859 () Bool)

(declare-fun tp!180861 () Bool)

(assert (=> b!578035 (= e!349292 (and tp!180859 tp!180861))))

(declare-fun b!578034 () Bool)

(declare-fun tp!180863 () Bool)

(assert (=> b!578034 (= e!349292 tp!180863)))

(assert (= (and b!576988 ((_ is ElementMatch!1433) (reg!1762 (regex!1099 (h!11071 rules!3103))))) b!578032))

(assert (= (and b!576988 ((_ is Concat!2556) (reg!1762 (regex!1099 (h!11071 rules!3103))))) b!578033))

(assert (= (and b!576988 ((_ is Star!1433) (reg!1762 (regex!1099 (h!11071 rules!3103))))) b!578034))

(assert (= (and b!576988 ((_ is Union!1433) (reg!1762 (regex!1099 (h!11071 rules!3103))))) b!578035))

(declare-fun b!578036 () Bool)

(declare-fun e!349293 () Bool)

(declare-fun tp!180864 () Bool)

(assert (=> b!578036 (= e!349293 (and tp_is_empty!3221 tp!180864))))

(assert (=> b!576972 (= tp!180775 e!349293)))

(assert (= (and b!576972 ((_ is Cons!5668) (t!77391 (originalCharacters!1138 token!491)))) b!578036))

(declare-fun b!578037 () Bool)

(declare-fun e!349294 () Bool)

(assert (=> b!578037 (= e!349294 tp_is_empty!3221)))

(assert (=> b!576987 (= tp!180793 e!349294)))

(declare-fun b!578038 () Bool)

(declare-fun tp!180868 () Bool)

(declare-fun tp!180866 () Bool)

(assert (=> b!578038 (= e!349294 (and tp!180868 tp!180866))))

(declare-fun b!578040 () Bool)

(declare-fun tp!180865 () Bool)

(declare-fun tp!180867 () Bool)

(assert (=> b!578040 (= e!349294 (and tp!180865 tp!180867))))

(declare-fun b!578039 () Bool)

(declare-fun tp!180869 () Bool)

(assert (=> b!578039 (= e!349294 tp!180869)))

(assert (= (and b!576987 ((_ is ElementMatch!1433) (regOne!3378 (regex!1099 (h!11071 rules!3103))))) b!578037))

(assert (= (and b!576987 ((_ is Concat!2556) (regOne!3378 (regex!1099 (h!11071 rules!3103))))) b!578038))

(assert (= (and b!576987 ((_ is Star!1433) (regOne!3378 (regex!1099 (h!11071 rules!3103))))) b!578039))

(assert (= (and b!576987 ((_ is Union!1433) (regOne!3378 (regex!1099 (h!11071 rules!3103))))) b!578040))

(declare-fun b!578041 () Bool)

(declare-fun e!349295 () Bool)

(assert (=> b!578041 (= e!349295 tp_is_empty!3221)))

(assert (=> b!576987 (= tp!180791 e!349295)))

(declare-fun b!578042 () Bool)

(declare-fun tp!180873 () Bool)

(declare-fun tp!180871 () Bool)

(assert (=> b!578042 (= e!349295 (and tp!180873 tp!180871))))

(declare-fun b!578044 () Bool)

(declare-fun tp!180870 () Bool)

(declare-fun tp!180872 () Bool)

(assert (=> b!578044 (= e!349295 (and tp!180870 tp!180872))))

(declare-fun b!578043 () Bool)

(declare-fun tp!180874 () Bool)

(assert (=> b!578043 (= e!349295 tp!180874)))

(assert (= (and b!576987 ((_ is ElementMatch!1433) (regTwo!3378 (regex!1099 (h!11071 rules!3103))))) b!578041))

(assert (= (and b!576987 ((_ is Concat!2556) (regTwo!3378 (regex!1099 (h!11071 rules!3103))))) b!578042))

(assert (= (and b!576987 ((_ is Star!1433) (regTwo!3378 (regex!1099 (h!11071 rules!3103))))) b!578043))

(assert (= (and b!576987 ((_ is Union!1433) (regTwo!3378 (regex!1099 (h!11071 rules!3103))))) b!578044))

(declare-fun b!578045 () Bool)

(declare-fun e!349296 () Bool)

(assert (=> b!578045 (= e!349296 tp_is_empty!3221)))

(assert (=> b!576983 (= tp!180787 e!349296)))

(declare-fun b!578046 () Bool)

(declare-fun tp!180878 () Bool)

(declare-fun tp!180876 () Bool)

(assert (=> b!578046 (= e!349296 (and tp!180878 tp!180876))))

(declare-fun b!578048 () Bool)

(declare-fun tp!180875 () Bool)

(declare-fun tp!180877 () Bool)

(assert (=> b!578048 (= e!349296 (and tp!180875 tp!180877))))

(declare-fun b!578047 () Bool)

(declare-fun tp!180879 () Bool)

(assert (=> b!578047 (= e!349296 tp!180879)))

(assert (= (and b!576983 ((_ is ElementMatch!1433) (regex!1099 (h!11071 (t!77393 rules!3103))))) b!578045))

(assert (= (and b!576983 ((_ is Concat!2556) (regex!1099 (h!11071 (t!77393 rules!3103))))) b!578046))

(assert (= (and b!576983 ((_ is Star!1433) (regex!1099 (h!11071 (t!77393 rules!3103))))) b!578047))

(assert (= (and b!576983 ((_ is Union!1433) (regex!1099 (h!11071 (t!77393 rules!3103))))) b!578048))

(declare-fun b!578051 () Bool)

(declare-fun b_free!16061 () Bool)

(declare-fun b_next!16077 () Bool)

(assert (=> b!578051 (= b_free!16061 (not b_next!16077))))

(declare-fun tb!50495 () Bool)

(declare-fun t!77627 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77627) tb!50495))

(declare-fun result!56524 () Bool)

(assert (= result!56524 result!56468))

(assert (=> d!203079 t!77627))

(declare-fun tb!50497 () Bool)

(declare-fun t!77629 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77629) tb!50497))

(declare-fun result!56526 () Bool)

(assert (= result!56526 result!56510))

(assert (=> d!203287 t!77629))

(declare-fun tb!50499 () Bool)

(declare-fun t!77631 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77631) tb!50499))

(declare-fun result!56528 () Bool)

(assert (= result!56528 result!56286))

(assert (=> d!202469 t!77631))

(declare-fun t!77633 () Bool)

(declare-fun tb!50501 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77633) tb!50501))

(declare-fun result!56530 () Bool)

(assert (= result!56530 result!56306))

(assert (=> d!202477 t!77633))

(declare-fun tb!50503 () Bool)

(declare-fun t!77635 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77635) tb!50503))

(declare-fun result!56532 () Bool)

(assert (= result!56532 result!56516))

(assert (=> d!203289 t!77635))

(declare-fun tb!50505 () Bool)

(declare-fun t!77637 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77637) tb!50505))

(declare-fun result!56534 () Bool)

(assert (= result!56534 result!56432))

(assert (=> d!202813 t!77637))

(declare-fun t!77639 () Bool)

(declare-fun tb!50507 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77639) tb!50507))

(declare-fun result!56536 () Bool)

(assert (= result!56536 result!56462))

(assert (=> d!202955 t!77639))

(declare-fun t!77641 () Bool)

(declare-fun tb!50509 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77641) tb!50509))

(declare-fun result!56538 () Bool)

(assert (= result!56538 result!56456))

(assert (=> d!202891 t!77641))

(declare-fun t!77643 () Bool)

(declare-fun tb!50511 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 token!491)))) t!77643) tb!50511))

(declare-fun result!56540 () Bool)

(assert (= result!56540 result!56378))

(assert (=> d!202693 t!77643))

(assert (=> d!202697 t!77643))

(declare-fun t!77645 () Bool)

(declare-fun tb!50513 () Bool)

(assert (=> (and b!578051 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77645) tb!50513))

(declare-fun result!56542 () Bool)

(assert (= result!56542 result!56498))

(assert (=> d!203139 t!77645))

(assert (=> d!202409 t!77631))

(assert (=> d!203163 t!77645))

(assert (=> d!202475 t!77633))

(declare-fun tp!180881 () Bool)

(declare-fun b_and!56687 () Bool)

(assert (=> b!578051 (= tp!180881 (and (=> t!77639 result!56536) (=> t!77635 result!56532) (=> t!77633 result!56530) (=> t!77629 result!56526) (=> t!77641 result!56538) (=> t!77645 result!56542) (=> t!77631 result!56528) (=> t!77637 result!56534) (=> t!77627 result!56524) (=> t!77643 result!56540) b_and!56687))))

(declare-fun b_free!16063 () Bool)

(declare-fun b_next!16079 () Bool)

(assert (=> b!578051 (= b_free!16063 (not b_next!16079))))

(declare-fun tb!50515 () Bool)

(declare-fun t!77647 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244157)))))) t!77647) tb!50515))

(declare-fun result!56544 () Bool)

(assert (= result!56544 result!56372))

(assert (=> d!202655 t!77647))

(declare-fun tb!50517 () Bool)

(declare-fun t!77649 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77649) tb!50517))

(declare-fun result!56546 () Bool)

(assert (= result!56546 result!56292))

(assert (=> d!202439 t!77649))

(declare-fun t!77651 () Bool)

(declare-fun tb!50519 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77651) tb!50519))

(declare-fun result!56548 () Bool)

(assert (= result!56548 result!56314))

(assert (=> d!202581 t!77651))

(declare-fun t!77653 () Bool)

(declare-fun tb!50521 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77653) tb!50521))

(declare-fun result!56550 () Bool)

(assert (= result!56550 result!56492))

(assert (=> d!203139 t!77653))

(declare-fun t!77655 () Bool)

(declare-fun tb!50523 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77655) tb!50523))

(declare-fun result!56552 () Bool)

(assert (= result!56552 result!56384))

(assert (=> d!202697 t!77655))

(declare-fun tb!50525 () Bool)

(declare-fun t!77657 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244102)))))) t!77657) tb!50525))

(declare-fun result!56554 () Bool)

(assert (= result!56554 result!56420))

(assert (=> d!202787 t!77657))

(declare-fun t!77659 () Bool)

(declare-fun tb!50527 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244139)))))) t!77659) tb!50527))

(declare-fun result!56556 () Bool)

(assert (= result!56556 result!56426))

(assert (=> d!202807 t!77659))

(declare-fun tb!50529 () Bool)

(declare-fun t!77661 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 token!491)))) t!77661) tb!50529))

(declare-fun result!56558 () Bool)

(assert (= result!56558 result!56302))

(assert (=> d!202475 t!77661))

(declare-fun tb!50531 () Bool)

(declare-fun t!77663 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932)))))) t!77663) tb!50531))

(declare-fun result!56560 () Bool)

(assert (= result!56560 result!56298))

(assert (=> d!202469 t!77663))

(declare-fun t!77665 () Bool)

(declare-fun tb!50533 () Bool)

(assert (=> (and b!578051 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (get!2163 lt!244097)))))) t!77665) tb!50533))

(declare-fun result!56562 () Bool)

(assert (= result!56562 result!56474))

(assert (=> d!203103 t!77665))

(assert (=> b!576705 t!77651))

(declare-fun b_and!56689 () Bool)

(declare-fun tp!180883 () Bool)

(assert (=> b!578051 (= tp!180883 (and (=> t!77657 result!56554) (=> t!77651 result!56548) (=> t!77653 result!56550) (=> t!77661 result!56558) (=> t!77665 result!56562) (=> t!77663 result!56560) (=> t!77655 result!56552) (=> t!77649 result!56546) (=> t!77659 result!56556) (=> t!77647 result!56544) b_and!56689))))

(declare-fun e!349299 () Bool)

(assert (=> b!578051 (= e!349299 (and tp!180881 tp!180883))))

(declare-fun e!349297 () Bool)

(declare-fun tp!180882 () Bool)

(declare-fun b!578050 () Bool)

(assert (=> b!578050 (= e!349297 (and tp!180882 (inv!7129 (tag!1361 (h!11071 (t!77393 (t!77393 rules!3103))))) (inv!7132 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) e!349299))))

(declare-fun b!578049 () Bool)

(declare-fun e!349298 () Bool)

(declare-fun tp!180880 () Bool)

(assert (=> b!578049 (= e!349298 (and e!349297 tp!180880))))

(assert (=> b!576982 (= tp!180785 e!349298)))

(assert (= b!578050 b!578051))

(assert (= b!578049 b!578050))

(assert (= (and b!576982 ((_ is Cons!5670) (t!77393 (t!77393 rules!3103)))) b!578049))

(declare-fun m!836347 () Bool)

(assert (=> b!578050 m!836347))

(declare-fun m!836349 () Bool)

(assert (=> b!578050 m!836349))

(declare-fun e!349306 () Bool)

(declare-fun tp!180884 () Bool)

(declare-fun b!578057 () Bool)

(declare-fun tp!180886 () Bool)

(assert (=> b!578057 (= e!349306 (and (inv!7136 (left!4630 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))))) tp!180884 (inv!7136 (right!4960 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))))) tp!180886))))

(declare-fun b!578059 () Bool)

(declare-fun e!349305 () Bool)

(declare-fun tp!180885 () Bool)

(assert (=> b!578059 (= e!349305 tp!180885)))

(declare-fun b!578058 () Bool)

(assert (=> b!578058 (= e!349306 (and (inv!7143 (xs!4453 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))))) e!349305))))

(assert (=> b!576707 (= tp!180718 (and (inv!7136 (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491)))) e!349306))))

(assert (= (and b!576707 ((_ is Node!1816) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))))) b!578057))

(assert (= b!578058 b!578059))

(assert (= (and b!576707 ((_ is Leaf!2873) (c!107922 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (value!36188 token!491))))) b!578058))

(declare-fun m!836353 () Bool)

(assert (=> b!578057 m!836353))

(declare-fun m!836357 () Bool)

(assert (=> b!578057 m!836357))

(declare-fun m!836359 () Bool)

(assert (=> b!578058 m!836359))

(assert (=> b!576707 m!834271))

(declare-fun b_lambda!22615 () Bool)

(assert (= b_lambda!22583 (or d!202475 b_lambda!22615)))

(declare-fun bs!69564 () Bool)

(declare-fun d!203337 () Bool)

(assert (= bs!69564 (and d!203337 d!202475)))

(assert (=> bs!69564 (= (dynLambda!3299 lambda!15710 lt!243954) (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 token!491))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 token!491))) lt!243954))) (list!2355 lt!243954)))))

(declare-fun b_lambda!22635 () Bool)

(assert (=> (not b_lambda!22635) (not bs!69564)))

(assert (=> bs!69564 t!77415))

(declare-fun b_and!56697 () Bool)

(assert (= b_and!56651 (and (=> t!77415 result!56302) b_and!56697)))

(assert (=> bs!69564 t!77417))

(declare-fun b_and!56699 () Bool)

(assert (= b_and!56653 (and (=> t!77417 result!56304) b_and!56699)))

(assert (=> bs!69564 t!77463))

(declare-fun b_and!56701 () Bool)

(assert (= b_and!56655 (and (=> t!77463 result!56362) b_and!56701)))

(assert (=> bs!69564 t!77661))

(declare-fun b_and!56703 () Bool)

(assert (= b_and!56689 (and (=> t!77661 result!56558) b_and!56703)))

(declare-fun b_lambda!22637 () Bool)

(assert (=> (not b_lambda!22637) (not bs!69564)))

(assert (=> bs!69564 t!77419))

(declare-fun b_and!56705 () Bool)

(assert (= b_and!56681 (and (=> t!77419 result!56306) b_and!56705)))

(assert (=> bs!69564 t!77421))

(declare-fun b_and!56707 () Bool)

(assert (= b_and!56683 (and (=> t!77421 result!56308) b_and!56707)))

(assert (=> bs!69564 t!77457))

(declare-fun b_and!56709 () Bool)

(assert (= b_and!56685 (and (=> t!77457 result!56356) b_and!56709)))

(assert (=> bs!69564 t!77633))

(declare-fun b_and!56711 () Bool)

(assert (= b_and!56687 (and (=> t!77633 result!56530) b_and!56711)))

(assert (=> bs!69564 m!834135))

(assert (=> bs!69564 m!834137))

(assert (=> bs!69564 m!834135))

(assert (=> bs!69564 m!834137))

(assert (=> bs!69564 m!834141))

(assert (=> bs!69564 m!834133))

(assert (=> d!202943 d!203337))

(declare-fun b_lambda!22617 () Bool)

(assert (= b_lambda!22551 (or (and b!576363 b_free!16047 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16051) (and b!576984 b_free!16059 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) (and b!578051 b_free!16063 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 token!491))))) b_lambda!22617)))

(declare-fun b_lambda!22619 () Bool)

(assert (= b_lambda!22553 (or (and b!576363 b_free!16045 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16049) (and b!576984 b_free!16057 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!578051 b_free!16061 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) b_lambda!22619)))

(declare-fun b_lambda!22621 () Bool)

(assert (= b_lambda!22493 (or (and b!576363 b_free!16045 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576362 b_free!16049 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576984 b_free!16057 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!578051 b_free!16061 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) b_lambda!22621)))

(declare-fun b_lambda!22623 () Bool)

(assert (= b_lambda!22549 (or (and b!576363 b_free!16045 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16049) (and b!576984 b_free!16057 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!578051 b_free!16061 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) b_lambda!22623)))

(declare-fun b_lambda!22625 () Bool)

(assert (= b_lambda!22599 (or d!202469 b_lambda!22625)))

(declare-fun bs!69567 () Bool)

(declare-fun d!203343 () Bool)

(assert (= bs!69567 (and d!203343 d!202469)))

(assert (=> bs!69567 (= (dynLambda!3299 lambda!15709 lt!243968) (= (list!2355 (dynLambda!3289 (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) (dynLambda!3288 (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))) lt!243968))) (list!2355 lt!243968)))))

(declare-fun b_lambda!22641 () Bool)

(assert (=> (not b_lambda!22641) (not bs!69567)))

(assert (=> bs!69567 t!77411))

(declare-fun b_and!56719 () Bool)

(assert (= b_and!56697 (and (=> t!77411 result!56298) b_and!56719)))

(assert (=> bs!69567 t!77413))

(declare-fun b_and!56721 () Bool)

(assert (= b_and!56699 (and (=> t!77413 result!56300) b_and!56721)))

(assert (=> bs!69567 t!77465))

(declare-fun b_and!56723 () Bool)

(assert (= b_and!56701 (and (=> t!77465 result!56364) b_and!56723)))

(assert (=> bs!69567 t!77663))

(declare-fun b_and!56725 () Bool)

(assert (= b_and!56703 (and (=> t!77663 result!56560) b_and!56725)))

(declare-fun b_lambda!22643 () Bool)

(assert (=> (not b_lambda!22643) (not bs!69567)))

(assert (=> bs!69567 t!77403))

(declare-fun b_and!56727 () Bool)

(assert (= b_and!56705 (and (=> t!77403 result!56286) b_and!56727)))

(assert (=> bs!69567 t!77405))

(declare-fun b_and!56729 () Bool)

(assert (= b_and!56707 (and (=> t!77405 result!56290) b_and!56729)))

(assert (=> bs!69567 t!77455))

(declare-fun b_and!56731 () Bool)

(assert (= b_and!56709 (and (=> t!77455 result!56354) b_and!56731)))

(assert (=> bs!69567 t!77631))

(declare-fun b_and!56733 () Bool)

(assert (= b_and!56711 (and (=> t!77631 result!56528) b_and!56733)))

(assert (=> bs!69567 m!833975))

(assert (=> bs!69567 m!834121))

(assert (=> bs!69567 m!833975))

(assert (=> bs!69567 m!834121))

(assert (=> bs!69567 m!834125))

(assert (=> bs!69567 m!834119))

(assert (=> d!203123 d!203343))

(declare-fun b_lambda!22627 () Bool)

(assert (= b_lambda!22497 (or (and b!576363 b_free!16047 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576362 b_free!16051 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576984 b_free!16059 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!578051 b_free!16063 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) b_lambda!22627)))

(declare-fun b_lambda!22629 () Bool)

(assert (= b_lambda!22571 (or (and b!576363 b_free!16045 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!576362 b_free!16049) (and b!576984 b_free!16057 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) (and b!578051 b_free!16061 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 token!491))))) b_lambda!22629)))

(declare-fun b_lambda!22631 () Bool)

(assert (= b_lambda!22499 (or (and b!576363 b_free!16045 (= (toValue!1958 (transformation!1099 (h!11071 rules!3103))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576362 b_free!16049 (= (toValue!1958 (transformation!1099 (rule!1849 token!491))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576984 b_free!16057 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!578051 b_free!16061 (= (toValue!1958 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toValue!1958 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) b_lambda!22631)))

(declare-fun b_lambda!22633 () Bool)

(assert (= b_lambda!22495 (or (and b!576363 b_free!16047 (= (toChars!1817 (transformation!1099 (h!11071 rules!3103))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576362 b_free!16051 (= (toChars!1817 (transformation!1099 (rule!1849 token!491))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!576984 b_free!16059 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 rules!3103)))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) (and b!578051 b_free!16063 (= (toChars!1817 (transformation!1099 (h!11071 (t!77393 (t!77393 rules!3103))))) (toChars!1817 (transformation!1099 (rule!1849 (_1!3590 (v!16310 lt!243932))))))) b_lambda!22633)))

(check-sat (not d!203161) (not b!577555) (not b!577989) (not d!203275) (not b!577626) (not b!577437) (not b!577362) (not d!202689) (not tb!50435) (not b!577065) (not b!577734) (not d!203291) (not tb!50405) (not d!203185) (not b!577262) (not b!577821) (not b!577895) (not b!578038) (not b!577035) (not d!203087) (not b!577338) (not b!577487) (not b!578058) b_and!56719 (not b!577889) (not d!202857) (not b!577892) (not b!577805) (not b!577490) (not d!202863) (not b!577378) (not d!202777) (not d!202883) (not d!202893) (not tb!50357) (not d!203077) (not d!203101) (not b!577365) (not b!578048) (not b!577557) (not b!577342) (not b!577026) (not b_lambda!22535) (not d!203033) (not b!577913) (not b!576610) (not b!577483) (not d!202997) (not b_lambda!22643) (not b!577847) (not d!202799) (not b!577191) (not b!577987) (not b!577244) b_and!56721 (not b!578019) (not bm!39939) (not d!202905) (not d!203301) (not b!578042) (not b!577874) (not b!578030) (not b_lambda!22593) (not b!577658) (not bm!39838) (not b!577990) (not d!203293) (not b!577272) (not b!577464) (not b!577675) (not b!577470) (not d!202655) (not tb!50465) (not b!577627) (not tb!50351) (not b!577251) (not b!577699) (not d!203037) (not b!577873) (not b!577474) (not d!202685) (not b!577458) (not tb!50399) (not b!577220) (not b!577979) (not b!577249) (not b!577246) (not b!577747) (not b!577617) (not b!577783) (not d!202677) (not b!577722) (not b!577685) (not b!577953) (not b!577998) (not b!577285) (not b_lambda!22641) (not b!577983) (not bm!39904) (not d!203015) (not bm!39887) (not b!577471) (not b!577382) (not tb!50447) (not d!203303) (not b_lambda!22609) (not b!577552) (not b_lambda!22601) b_and!56729 (not b_lambda!22591) (not b!577101) (not b!577911) (not b!577866) (not b!577973) (not b!577791) (not b!578033) (not b!578027) (not d!203281) (not bs!69564) (not b!577465) (not b_next!16077) (not b!577361) (not bm!39901) (not b!577788) (not b!578034) b_and!56723 (not d!202973) (not b!577497) (not b!577629) (not b!577250) (not b!577703) b_and!56731 (not b!577879) (not d!202821) (not b!577363) (not bm!39920) (not b!577354) (not b!577274) (not b_lambda!22585) (not b!577067) (not bm!39890) (not b!578049) (not b!577472) (not b!577803) (not b!577513) (not b!578021) (not b!577952) (not d!202903) (not b!577515) (not d!202841) (not b_next!16063) (not b!577064) (not b!577339) (not d!202889) (not bm!39945) (not bm!39907) (not b!577648) (not d!203285) (not d!203053) (not d!202633) (not b_lambda!22541) (not b!577373) (not b!577910) (not b!578016) (not b!578018) (not bm!39909) (not d!202859) (not b_lambda!22635) (not b!577885) (not b!577974) (not b!577619) (not b_lambda!22567) (not b!577046) (not b!577829) (not b!577643) (not b!577621) (not d!203057) (not b!577807) (not bm!39951) (not b!577601) (not b!577975) (not b!577922) (not b_lambda!22605) (not d!203113) (not tb!50345) tp_is_empty!3221 (not b!577248) (not b!577108) b_and!56727 (not b!578020) (not b!577445) (not b!578029) (not b!577823) (not b!577505) (not b!577462) (not b!578046) (not d!203121) (not b!577926) (not b!577296) (not b_lambda!22633) (not b!577677) (not bm!39908) (not b!577286) (not d!202855) (not b!577340) (not b!577755) (not b!577720) (not b!577992) (not d!203139) (not bm!39900) (not d!202911) (not b!577434) (not d!203271) (not bm!39847) (not b!577711) (not b!577753) (not d!203219) (not b!577686) (not b_lambda!22629) (not b!578022) (not d!203167) (not d!202935) (not d!203003) (not b!577247) (not tb!50483) (not b!577918) (not b!577710) (not b!577622) (not b!578017) (not d!202687) (not d!203241) (not b_lambda!22603) (not tb!50429) (not d!202697) (not b!578031) (not b!578057) (not d!202661) (not d!202653) (not b!577252) (not bm!39889) (not b!577468) (not b_lambda!22617) (not b!576612) (not bm!39940) (not b_next!16065) (not b!577047) (not bm!39888) (not d!202663) (not b_lambda!22543) (not b!577887) (not b!577456) (not b!577110) (not bm!39902) (not b!577811) (not b!578040) (not b!577999) (not bm!39943) (not d!203157) (not b!577700) (not b_lambda!22539) (not b!577687) (not d!203117) (not d!203081) (not d!202943) (not b!577189) (not tb!50441) (not d!203181) (not d!202805) (not d!203021) (not b_lambda!22627) (not d!202941) (not b!577620) (not b!577359) (not b_lambda!22547) (not b!577209) (not b!577819) (not b!577985) (not b!577024) (not d!202895) (not d!203203) (not bm!39946) (not b!577284) (not bm!39903) (not b!577809) (not b!577862) (not b!577511) (not b!577123) (not d!202755) (not d!203127) (not b!577482) (not b!577757) (not b!577988) (not b!577282) (not d!202939) (not tb!50393) (not b!577681) (not b!576707) (not b_lambda!22569) (not b!577075) (not b_lambda!22537) (not b_next!16067) (not b!577503) (not b!576535) (not d!203073) (not b!577045) (not b!577927) (not b!577630) (not b!577121) (not d!203091) (not d!202787) (not bm!39919) (not b!577560) (not b!577698) (not b!577921) (not b!577813) (not b_next!16061) (not d!202719) (not b!577924) (not b!577782) (not b!577556) (not d!202695) (not b_next!16073) (not d!202785) (not b!577343) (not d!203299) (not d!202753) (not b_lambda!22637) (not b!578025) (not b!577820) (not d!202959) (not b!577683) (not b_lambda!22619) (not b!577480) (not b!577994) (not b!577190) (not b!577242) (not d!202783) (not b!577831) (not b!577264) (not b!577493) (not b!577814) (not d!203283) (not b!577919) (not b_lambda!22615) (not b!577659) (not b!578044) (not bm!39850) (not b!577352) (not b!577436) (not bm!39906) (not b!577371) (not tb!50471) (not b!577977) (not b!577680) (not b!577891) (not d!203257) (not b!577678) (not b!577466) (not bm!39886) (not b!577746) (not b!577559) (not d!202851) (not b!577485) (not d!202919) (not bs!69567) (not d!202681) (not b_lambda!22611) (not b!577073) (not b!578023) (not b!577623) (not b!578039) (not b!577266) (not b!577263) (not b!577642) (not d!202767) (not b!577871) (not bm!39942) (not b!577978) (not d!202731) (not b!577702) (not b_next!16075) b_and!56725 (not bm!39883) (not bm!39930) (not b!577679) (not d!202699) (not b!577052) (not b!577928) (not d!202671) (not b!577553) (not d!203305) (not b_lambda!22631) (not b!577459) (not b!577187) (not b!577712) b_and!56733 (not b!577920) (not b!577984) (not b!578050) (not d!203123) (not d!202679) (not bm!39884) (not d!203023) (not bm!39905) (not d!203103) (not b!577914) (not b!577628) (not b!577870) (not b!577875) (not b_lambda!22581) (not d!202807) (not b!577763) (not d!202651) (not b!577034) (not b!578035) (not b!577446) (not b!577740) (not d!202913) (not b!577867) (not b_lambda!22625) (not b!577770) (not b!577865) (not b!578047) (not b!577917) (not b!577106) (not b!577494) (not b!577817) (not b!577346) (not b!577344) (not b!578059) (not b_lambda!22623) (not b_next!16079) (not bm!39885) (not b!577915) (not tb!50489) (not b!578026) (not b!578043) (not b!577063) (not b!577625) (not b!578000) (not b!577682) (not b!577714) (not b!577815) (not d!203083) (not b!578036) (not b!577950) (not d!203265) (not b!577756) (not b_lambda!22621))
(check-sat b_and!56719 b_and!56721 b_and!56729 b_and!56731 (not b_next!16063) b_and!56727 (not b_next!16065) (not b_next!16067) (not b_next!16075) b_and!56725 b_and!56733 (not b_next!16079) b_and!56723 (not b_next!16077) (not b_next!16061) (not b_next!16073))

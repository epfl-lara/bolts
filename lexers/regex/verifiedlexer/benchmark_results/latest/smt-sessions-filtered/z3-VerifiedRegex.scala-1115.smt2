; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58272 () Bool)

(assert start!58272)

(declare-fun b!609335 () Bool)

(declare-fun b_free!17349 () Bool)

(declare-fun b_next!17365 () Bool)

(assert (=> b!609335 (= b_free!17349 (not b_next!17365))))

(declare-fun tp!188876 () Bool)

(declare-fun b_and!60327 () Bool)

(assert (=> b!609335 (= tp!188876 b_and!60327)))

(declare-fun b_free!17351 () Bool)

(declare-fun b_next!17367 () Bool)

(assert (=> b!609335 (= b_free!17351 (not b_next!17367))))

(declare-fun tp!188875 () Bool)

(declare-fun b_and!60329 () Bool)

(assert (=> b!609335 (= tp!188875 b_and!60329)))

(declare-fun b!609336 () Bool)

(declare-fun b_free!17353 () Bool)

(declare-fun b_next!17369 () Bool)

(assert (=> b!609336 (= b_free!17353 (not b_next!17369))))

(declare-fun tp!188877 () Bool)

(declare-fun b_and!60331 () Bool)

(assert (=> b!609336 (= tp!188877 b_and!60331)))

(declare-fun b_free!17355 () Bool)

(declare-fun b_next!17371 () Bool)

(assert (=> b!609336 (= b_free!17355 (not b_next!17371))))

(declare-fun tp!188878 () Bool)

(declare-fun b_and!60333 () Bool)

(assert (=> b!609336 (= tp!188878 b_and!60333)))

(declare-fun b!609301 () Bool)

(declare-fun e!369273 () Bool)

(declare-fun e!369261 () Bool)

(assert (=> b!609301 (= e!369273 e!369261)))

(declare-fun res!264424 () Bool)

(assert (=> b!609301 (=> (not res!264424) (not e!369261))))

(declare-datatypes ((C!4024 0))(
  ( (C!4025 (val!2238 Int)) )
))
(declare-datatypes ((List!6097 0))(
  ( (Nil!6087) (Cons!6087 (h!11488 C!4024) (t!80806 List!6097)) )
))
(declare-fun suffix!1342 () List!6097)

(declare-datatypes ((Regex!1551 0))(
  ( (ElementMatch!1551 (c!112761 C!4024)) (Concat!2792 (regOne!3614 Regex!1551) (regTwo!3614 Regex!1551)) (EmptyExpr!1551) (Star!1551 (reg!1880 Regex!1551)) (EmptyLang!1551) (Union!1551 (regOne!3615 Regex!1551) (regTwo!3615 Regex!1551)) )
))
(declare-datatypes ((List!6098 0))(
  ( (Nil!6088) (Cons!6088 (h!11489 (_ BitVec 16)) (t!80807 List!6098)) )
))
(declare-datatypes ((TokenValue!1241 0))(
  ( (FloatLiteralValue!2482 (text!9132 List!6098)) (TokenValueExt!1240 (__x!4380 Int)) (Broken!6205 (value!39525 List!6098)) (Object!1250) (End!1241) (Def!1241) (Underscore!1241) (Match!1241) (Else!1241) (Error!1241) (Case!1241) (If!1241) (Extends!1241) (Abstract!1241) (Class!1241) (Val!1241) (DelimiterValue!2482 (del!1301 List!6098)) (KeywordValue!1247 (value!39526 List!6098)) (CommentValue!2482 (value!39527 List!6098)) (WhitespaceValue!2482 (value!39528 List!6098)) (IndentationValue!1241 (value!39529 List!6098)) (String!7948) (Int32!1241) (Broken!6206 (value!39530 List!6098)) (Boolean!1242) (Unit!11123) (OperatorValue!1244 (op!1301 List!6098)) (IdentifierValue!2482 (value!39531 List!6098)) (IdentifierValue!2483 (value!39532 List!6098)) (WhitespaceValue!2483 (value!39533 List!6098)) (True!2482) (False!2482) (Broken!6207 (value!39534 List!6098)) (Broken!6208 (value!39535 List!6098)) (True!2483) (RightBrace!1241) (RightBracket!1241) (Colon!1241) (Null!1241) (Comma!1241) (LeftBracket!1241) (False!2483) (LeftBrace!1241) (ImaginaryLiteralValue!1241 (text!9133 List!6098)) (StringLiteralValue!3723 (value!39536 List!6098)) (EOFValue!1241 (value!39537 List!6098)) (IdentValue!1241 (value!39538 List!6098)) (DelimiterValue!2483 (value!39539 List!6098)) (DedentValue!1241 (value!39540 List!6098)) (NewLineValue!1241 (value!39541 List!6098)) (IntegerValue!3723 (value!39542 (_ BitVec 32)) (text!9134 List!6098)) (IntegerValue!3724 (value!39543 Int) (text!9135 List!6098)) (Times!1241) (Or!1241) (Equal!1241) (Minus!1241) (Broken!6209 (value!39544 List!6098)) (And!1241) (Div!1241) (LessEqual!1241) (Mod!1241) (Concat!2793) (Not!1241) (Plus!1241) (SpaceValue!1241 (value!39545 List!6098)) (IntegerValue!3725 (value!39546 Int) (text!9136 List!6098)) (StringLiteralValue!3724 (text!9137 List!6098)) (FloatLiteralValue!2483 (text!9138 List!6098)) (BytesLiteralValue!1241 (value!39547 List!6098)) (CommentValue!2483 (value!39548 List!6098)) (StringLiteralValue!3725 (value!39549 List!6098)) (ErrorTokenValue!1241 (msg!1302 List!6098)) )
))
(declare-datatypes ((String!7949 0))(
  ( (String!7950 (value!39550 String)) )
))
(declare-datatypes ((IArray!3869 0))(
  ( (IArray!3870 (innerList!1992 List!6097)) )
))
(declare-datatypes ((Conc!1934 0))(
  ( (Node!1934 (left!4879 Conc!1934) (right!5209 Conc!1934) (csize!4098 Int) (cheight!2145 Int)) (Leaf!3050 (xs!4571 IArray!3869) (csize!4099 Int)) (Empty!1934) )
))
(declare-datatypes ((BalanceConc!3876 0))(
  ( (BalanceConc!3877 (c!112762 Conc!1934)) )
))
(declare-datatypes ((TokenValueInjection!2250 0))(
  ( (TokenValueInjection!2251 (toValue!2124 Int) (toChars!1983 Int)) )
))
(declare-datatypes ((Rule!2234 0))(
  ( (Rule!2235 (regex!1217 Regex!1551) (tag!1479 String!7949) (isSeparator!1217 Bool) (transformation!1217 TokenValueInjection!2250)) )
))
(declare-datatypes ((Token!2170 0))(
  ( (Token!2171 (value!39551 TokenValue!1241) (rule!2005 Rule!2234) (size!4789 Int) (originalCharacters!1256 List!6097)) )
))
(declare-fun token!491 () Token!2170)

(declare-datatypes ((tuple2!6962 0))(
  ( (tuple2!6963 (_1!3745 Token!2170) (_2!3745 List!6097)) )
))
(declare-fun lt!260410 () tuple2!6962)

(assert (=> b!609301 (= res!264424 (and (= (_1!3745 lt!260410) token!491) (= (_2!3745 lt!260410) suffix!1342)))))

(declare-datatypes ((Option!1568 0))(
  ( (None!1567) (Some!1567 (v!16474 tuple2!6962)) )
))
(declare-fun lt!260392 () Option!1568)

(declare-fun get!2340 (Option!1568) tuple2!6962)

(assert (=> b!609301 (= lt!260410 (get!2340 lt!260392))))

(declare-fun b!609303 () Bool)

(declare-fun e!369259 () Bool)

(declare-fun e!369275 () Bool)

(assert (=> b!609303 (= e!369259 (not e!369275))))

(declare-fun res!264428 () Bool)

(assert (=> b!609303 (=> res!264428 e!369275)))

(declare-fun input!2705 () List!6097)

(declare-fun lt!260397 () List!6097)

(declare-fun isPrefix!845 (List!6097 List!6097) Bool)

(assert (=> b!609303 (= res!264428 (not (isPrefix!845 input!2705 lt!260397)))))

(declare-fun lt!260407 () List!6097)

(assert (=> b!609303 (isPrefix!845 lt!260407 lt!260397)))

(declare-datatypes ((Unit!11124 0))(
  ( (Unit!11125) )
))
(declare-fun lt!260416 () Unit!11124)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!690 (List!6097 List!6097) Unit!11124)

(assert (=> b!609303 (= lt!260416 (lemmaConcatTwoListThenFirstIsPrefix!690 lt!260407 suffix!1342))))

(declare-fun lt!260396 () List!6097)

(assert (=> b!609303 (isPrefix!845 input!2705 lt!260396)))

(declare-fun lt!260413 () Unit!11124)

(assert (=> b!609303 (= lt!260413 (lemmaConcatTwoListThenFirstIsPrefix!690 input!2705 suffix!1342))))

(declare-fun lt!260399 () List!6097)

(declare-fun lt!260420 () Int)

(declare-fun lt!260393 () Option!1568)

(declare-fun lt!260409 () TokenValue!1241)

(declare-fun lt!260414 () Token!2170)

(assert (=> b!609303 (= lt!260414 (Token!2171 lt!260409 (rule!2005 (_1!3745 (v!16474 lt!260393))) lt!260420 lt!260399))))

(declare-fun e!369269 () Bool)

(assert (=> b!609303 e!369269))

(declare-fun res!264443 () Bool)

(assert (=> b!609303 (=> (not res!264443) (not e!369269))))

(assert (=> b!609303 (= res!264443 (= (value!39551 (_1!3745 (v!16474 lt!260393))) lt!260409))))

(declare-fun lt!260401 () BalanceConc!3876)

(declare-fun apply!1470 (TokenValueInjection!2250 BalanceConc!3876) TokenValue!1241)

(assert (=> b!609303 (= lt!260409 (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260401))))

(declare-fun seqFromList!1393 (List!6097) BalanceConc!3876)

(assert (=> b!609303 (= lt!260401 (seqFromList!1393 lt!260399))))

(declare-fun lt!260394 () Unit!11124)

(declare-fun lemmaInv!325 (TokenValueInjection!2250) Unit!11124)

(assert (=> b!609303 (= lt!260394 (lemmaInv!325 (transformation!1217 (rule!2005 token!491))))))

(declare-fun lt!260395 () Unit!11124)

(assert (=> b!609303 (= lt!260395 (lemmaInv!325 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))))))

(declare-datatypes ((LexerInterface!1103 0))(
  ( (LexerInterfaceExt!1100 (__x!4381 Int)) (Lexer!1101) )
))
(declare-fun thiss!22590 () LexerInterface!1103)

(declare-fun ruleValid!415 (LexerInterface!1103 Rule!2234) Bool)

(assert (=> b!609303 (ruleValid!415 thiss!22590 (rule!2005 token!491))))

(declare-fun lt!260412 () Unit!11124)

(declare-datatypes ((List!6099 0))(
  ( (Nil!6089) (Cons!6089 (h!11490 Rule!2234) (t!80808 List!6099)) )
))
(declare-fun rules!3103 () List!6099)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!262 (LexerInterface!1103 Rule!2234 List!6099) Unit!11124)

(assert (=> b!609303 (= lt!260412 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!262 thiss!22590 (rule!2005 token!491) rules!3103))))

(assert (=> b!609303 (ruleValid!415 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))))))

(declare-fun lt!260425 () Unit!11124)

(assert (=> b!609303 (= lt!260425 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!262 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))) rules!3103))))

(assert (=> b!609303 (isPrefix!845 input!2705 input!2705)))

(declare-fun lt!260402 () Unit!11124)

(declare-fun lemmaIsPrefixRefl!581 (List!6097 List!6097) Unit!11124)

(assert (=> b!609303 (= lt!260402 (lemmaIsPrefixRefl!581 input!2705 input!2705))))

(declare-fun lt!260405 () List!6097)

(assert (=> b!609303 (= (_2!3745 (v!16474 lt!260393)) lt!260405)))

(declare-fun lt!260400 () Unit!11124)

(declare-fun lemmaSamePrefixThenSameSuffix!558 (List!6097 List!6097 List!6097 List!6097 List!6097) Unit!11124)

(assert (=> b!609303 (= lt!260400 (lemmaSamePrefixThenSameSuffix!558 lt!260399 (_2!3745 (v!16474 lt!260393)) lt!260399 lt!260405 input!2705))))

(declare-fun getSuffix!362 (List!6097 List!6097) List!6097)

(assert (=> b!609303 (= lt!260405 (getSuffix!362 input!2705 lt!260399))))

(declare-fun lt!260421 () List!6097)

(assert (=> b!609303 (isPrefix!845 lt!260399 lt!260421)))

(declare-fun ++!1705 (List!6097 List!6097) List!6097)

(assert (=> b!609303 (= lt!260421 (++!1705 lt!260399 (_2!3745 (v!16474 lt!260393))))))

(declare-fun lt!260426 () Unit!11124)

(assert (=> b!609303 (= lt!260426 (lemmaConcatTwoListThenFirstIsPrefix!690 lt!260399 (_2!3745 (v!16474 lt!260393))))))

(declare-fun lt!260415 () Unit!11124)

(declare-fun lemmaCharactersSize!276 (Token!2170) Unit!11124)

(assert (=> b!609303 (= lt!260415 (lemmaCharactersSize!276 token!491))))

(declare-fun lt!260423 () Unit!11124)

(assert (=> b!609303 (= lt!260423 (lemmaCharactersSize!276 (_1!3745 (v!16474 lt!260393))))))

(declare-fun lt!260411 () Unit!11124)

(declare-fun e!369278 () Unit!11124)

(assert (=> b!609303 (= lt!260411 e!369278)))

(declare-fun c!112760 () Bool)

(declare-fun lt!260418 () Int)

(assert (=> b!609303 (= c!112760 (> lt!260420 lt!260418))))

(declare-fun size!4790 (List!6097) Int)

(assert (=> b!609303 (= lt!260418 (size!4790 lt!260407))))

(assert (=> b!609303 (= lt!260420 (size!4790 lt!260399))))

(declare-fun list!2562 (BalanceConc!3876) List!6097)

(declare-fun charsOf!846 (Token!2170) BalanceConc!3876)

(assert (=> b!609303 (= lt!260399 (list!2562 (charsOf!846 (_1!3745 (v!16474 lt!260393)))))))

(declare-fun lt!260398 () tuple2!6962)

(assert (=> b!609303 (= lt!260393 (Some!1567 lt!260398))))

(assert (=> b!609303 (= lt!260398 (tuple2!6963 (_1!3745 (v!16474 lt!260393)) (_2!3745 (v!16474 lt!260393))))))

(declare-fun lt!260404 () Unit!11124)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!290 (List!6097 List!6097 List!6097 List!6097) Unit!11124)

(assert (=> b!609303 (= lt!260404 (lemmaConcatSameAndSameSizesThenSameLists!290 lt!260407 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!609304 () Bool)

(declare-fun e!369283 () Bool)

(declare-fun e!369258 () Bool)

(assert (=> b!609304 (= e!369283 e!369258)))

(declare-fun res!264440 () Bool)

(assert (=> b!609304 (=> (not res!264440) (not e!369258))))

(assert (=> b!609304 (= res!264440 (= lt!260407 input!2705))))

(assert (=> b!609304 (= lt!260407 (list!2562 (charsOf!846 token!491)))))

(declare-fun b!609305 () Bool)

(declare-fun res!264438 () Bool)

(declare-fun e!369257 () Bool)

(assert (=> b!609305 (=> res!264438 e!369257)))

(declare-fun matchR!654 (Regex!1551 List!6097) Bool)

(assert (=> b!609305 (= res!264438 (not (matchR!654 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260399)))))

(declare-fun e!369270 () Bool)

(declare-fun tp!188874 () Bool)

(declare-fun b!609306 () Bool)

(declare-fun e!369280 () Bool)

(declare-fun inv!21 (TokenValue!1241) Bool)

(assert (=> b!609306 (= e!369270 (and (inv!21 (value!39551 token!491)) e!369280 tp!188874))))

(declare-fun b!609307 () Bool)

(declare-fun e!369282 () Bool)

(assert (=> b!609307 (= e!369282 (= (_1!3745 (get!2340 lt!260393)) (_1!3745 (v!16474 lt!260393))))))

(declare-fun b!609308 () Bool)

(declare-fun Unit!11126 () Unit!11124)

(assert (=> b!609308 (= e!369278 Unit!11126)))

(assert (=> b!609308 false))

(declare-fun b!609309 () Bool)

(declare-fun Unit!11127 () Unit!11124)

(assert (=> b!609309 (= e!369278 Unit!11127)))

(declare-fun b!609310 () Bool)

(declare-fun res!264432 () Bool)

(assert (=> b!609310 (=> (not res!264432) (not e!369283))))

(declare-fun rulesInvariant!1066 (LexerInterface!1103 List!6099) Bool)

(assert (=> b!609310 (= res!264432 (rulesInvariant!1066 thiss!22590 rules!3103))))

(declare-fun b!609311 () Bool)

(declare-fun res!264452 () Bool)

(declare-fun e!369272 () Bool)

(assert (=> b!609311 (=> res!264452 e!369272)))

(assert (=> b!609311 (= res!264452 (not (isPrefix!845 lt!260399 input!2705)))))

(declare-fun b!609312 () Bool)

(declare-fun e!369267 () Bool)

(assert (=> b!609312 (= e!369267 e!369282)))

(declare-fun res!264439 () Bool)

(assert (=> b!609312 (=> (not res!264439) (not e!369282))))

(declare-fun isDefined!1379 (Option!1568) Bool)

(assert (=> b!609312 (= res!264439 (isDefined!1379 lt!260393))))

(declare-fun b!609313 () Bool)

(declare-fun e!369276 () Bool)

(declare-fun tp!188870 () Bool)

(declare-fun inv!7743 (String!7949) Bool)

(declare-fun inv!7746 (TokenValueInjection!2250) Bool)

(assert (=> b!609313 (= e!369280 (and tp!188870 (inv!7743 (tag!1479 (rule!2005 token!491))) (inv!7746 (transformation!1217 (rule!2005 token!491))) e!369276))))

(declare-fun b!609314 () Bool)

(declare-fun e!369271 () Bool)

(declare-fun tp_is_empty!3457 () Bool)

(declare-fun tp!188873 () Bool)

(assert (=> b!609314 (= e!369271 (and tp_is_empty!3457 tp!188873))))

(declare-fun b!609315 () Bool)

(declare-fun res!264451 () Bool)

(assert (=> b!609315 (=> (not res!264451) (not e!369269))))

(assert (=> b!609315 (= res!264451 (= (size!4789 (_1!3745 (v!16474 lt!260393))) (size!4790 (originalCharacters!1256 (_1!3745 (v!16474 lt!260393))))))))

(declare-fun b!609316 () Bool)

(declare-fun res!264448 () Bool)

(assert (=> b!609316 (=> res!264448 e!369272)))

(assert (=> b!609316 (= res!264448 (not (isPrefix!845 lt!260407 input!2705)))))

(declare-fun b!609317 () Bool)

(declare-fun res!264436 () Bool)

(declare-fun e!369281 () Bool)

(assert (=> b!609317 (=> res!264436 e!369281)))

(assert (=> b!609317 (= res!264436 (<= (size!4790 input!2705) lt!260420))))

(declare-fun e!369279 () Bool)

(declare-fun b!609318 () Bool)

(declare-fun lt!260422 () TokenValue!1241)

(declare-fun lt!260406 () List!6097)

(assert (=> b!609318 (= e!369279 (and (= (size!4789 token!491) lt!260418) (= (originalCharacters!1256 token!491) lt!260407) (= (tuple2!6963 token!491 suffix!1342) (tuple2!6963 (Token!2171 lt!260422 (rule!2005 token!491) lt!260418 lt!260407) lt!260406))))))

(declare-fun b!609319 () Bool)

(declare-fun e!369262 () Bool)

(declare-fun e!369260 () Bool)

(declare-fun tp!188872 () Bool)

(assert (=> b!609319 (= e!369262 (and e!369260 tp!188872))))

(declare-fun b!609320 () Bool)

(declare-fun e!369263 () Bool)

(assert (=> b!609320 (= e!369263 e!369259)))

(declare-fun res!264431 () Bool)

(assert (=> b!609320 (=> (not res!264431) (not e!369259))))

(assert (=> b!609320 (= res!264431 (= lt!260397 lt!260396))))

(assert (=> b!609320 (= lt!260397 (++!1705 lt!260407 suffix!1342))))

(declare-fun b!609321 () Bool)

(assert (=> b!609321 (= e!369258 e!369273)))

(declare-fun res!264447 () Bool)

(assert (=> b!609321 (=> (not res!264447) (not e!369273))))

(assert (=> b!609321 (= res!264447 (isDefined!1379 lt!260392))))

(declare-fun maxPrefix!801 (LexerInterface!1103 List!6099 List!6097) Option!1568)

(assert (=> b!609321 (= lt!260392 (maxPrefix!801 thiss!22590 rules!3103 lt!260396))))

(assert (=> b!609321 (= lt!260396 (++!1705 input!2705 suffix!1342))))

(declare-fun res!264427 () Bool)

(assert (=> start!58272 (=> (not res!264427) (not e!369283))))

(get-info :version)

(assert (=> start!58272 (= res!264427 ((_ is Lexer!1101) thiss!22590))))

(assert (=> start!58272 e!369283))

(declare-fun e!369266 () Bool)

(assert (=> start!58272 e!369266))

(assert (=> start!58272 e!369262))

(declare-fun inv!7747 (Token!2170) Bool)

(assert (=> start!58272 (and (inv!7747 token!491) e!369270)))

(assert (=> start!58272 true))

(assert (=> start!58272 e!369271))

(declare-fun b!609302 () Bool)

(declare-fun tp!188871 () Bool)

(assert (=> b!609302 (= e!369266 (and tp_is_empty!3457 tp!188871))))

(declare-fun b!609322 () Bool)

(declare-fun res!264446 () Bool)

(assert (=> b!609322 (=> (not res!264446) (not e!369283))))

(declare-fun isEmpty!4395 (List!6097) Bool)

(assert (=> b!609322 (= res!264446 (not (isEmpty!4395 input!2705)))))

(declare-fun b!609323 () Bool)

(assert (=> b!609323 (= e!369275 e!369272)))

(declare-fun res!264442 () Bool)

(assert (=> b!609323 (=> res!264442 e!369272)))

(assert (=> b!609323 (= res!264442 (>= lt!260420 lt!260418))))

(declare-fun e!369268 () Bool)

(assert (=> b!609323 e!369268))

(declare-fun res!264429 () Bool)

(assert (=> b!609323 (=> (not res!264429) (not e!369268))))

(declare-fun maxPrefixOneRule!464 (LexerInterface!1103 Rule!2234 List!6097) Option!1568)

(assert (=> b!609323 (= res!264429 (= (maxPrefixOneRule!464 thiss!22590 (rule!2005 token!491) lt!260396) (Some!1567 (tuple2!6963 (Token!2171 lt!260422 (rule!2005 token!491) lt!260418 lt!260407) suffix!1342))))))

(declare-fun lt!260424 () Unit!11124)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!170 (LexerInterface!1103 List!6099 List!6097 List!6097 List!6097 Rule!2234) Unit!11124)

(assert (=> b!609323 (= lt!260424 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!170 thiss!22590 rules!3103 lt!260407 lt!260396 suffix!1342 (rule!2005 token!491)))))

(declare-fun lt!260419 () Option!1568)

(assert (=> b!609323 (= lt!260419 (Some!1567 (tuple2!6963 lt!260414 (_2!3745 (v!16474 lt!260393)))))))

(assert (=> b!609323 (= lt!260419 (maxPrefixOneRule!464 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))) input!2705))))

(declare-fun lt!260408 () Unit!11124)

(assert (=> b!609323 (= lt!260408 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!170 thiss!22590 rules!3103 lt!260399 input!2705 (_2!3745 (v!16474 lt!260393)) (rule!2005 (_1!3745 (v!16474 lt!260393)))))))

(assert (=> b!609323 e!369279))

(declare-fun res!264434 () Bool)

(assert (=> b!609323 (=> (not res!264434) (not e!369279))))

(assert (=> b!609323 (= res!264434 (= (value!39551 token!491) lt!260422))))

(assert (=> b!609323 (= lt!260422 (apply!1470 (transformation!1217 (rule!2005 token!491)) (seqFromList!1393 lt!260407)))))

(assert (=> b!609323 (= suffix!1342 lt!260406)))

(declare-fun lt!260417 () Unit!11124)

(assert (=> b!609323 (= lt!260417 (lemmaSamePrefixThenSameSuffix!558 lt!260407 suffix!1342 lt!260407 lt!260406 lt!260396))))

(assert (=> b!609323 (= lt!260406 (getSuffix!362 lt!260396 lt!260407))))

(declare-fun b!609324 () Bool)

(declare-fun res!264444 () Bool)

(assert (=> b!609324 (=> res!264444 e!369272)))

(assert (=> b!609324 (= res!264444 (not (matchR!654 (regex!1217 (rule!2005 token!491)) input!2705)))))

(declare-fun b!609325 () Bool)

(declare-fun res!264435 () Bool)

(assert (=> b!609325 (=> (not res!264435) (not e!369283))))

(declare-fun isEmpty!4396 (List!6099) Bool)

(assert (=> b!609325 (= res!264435 (not (isEmpty!4396 rules!3103)))))

(declare-fun b!609326 () Bool)

(assert (=> b!609326 (= e!369268 e!369267)))

(declare-fun res!264437 () Bool)

(assert (=> b!609326 (=> res!264437 e!369267)))

(assert (=> b!609326 (= res!264437 (>= lt!260420 lt!260418))))

(declare-fun b!609327 () Bool)

(declare-fun res!264426 () Bool)

(assert (=> b!609327 (=> res!264426 e!369272)))

(assert (=> b!609327 (= res!264426 (not (= (getSuffix!362 input!2705 input!2705) Nil!6087)))))

(declare-fun b!609328 () Bool)

(declare-fun res!264425 () Bool)

(assert (=> b!609328 (=> (not res!264425) (not e!369279))))

(assert (=> b!609328 (= res!264425 (= (size!4789 token!491) (size!4790 (originalCharacters!1256 token!491))))))

(declare-fun b!609329 () Bool)

(declare-fun res!264433 () Bool)

(assert (=> b!609329 (=> res!264433 e!369272)))

(assert (=> b!609329 (= res!264433 (not (= (++!1705 lt!260399 lt!260405) input!2705)))))

(declare-fun b!609330 () Bool)

(assert (=> b!609330 (= e!369272 e!369257)))

(declare-fun res!264449 () Bool)

(assert (=> b!609330 (=> res!264449 e!369257)))

(declare-fun contains!1433 (List!6099 Rule!2234) Bool)

(assert (=> b!609330 (= res!264449 (not (contains!1433 rules!3103 (rule!2005 (_1!3745 (v!16474 lt!260393))))))))

(assert (=> b!609330 (= lt!260405 (_2!3745 (v!16474 lt!260393)))))

(declare-fun b!609331 () Bool)

(declare-fun res!264450 () Bool)

(assert (=> b!609331 (=> res!264450 e!369272)))

(assert (=> b!609331 (= res!264450 (not (= lt!260421 input!2705)))))

(declare-fun b!609332 () Bool)

(assert (=> b!609332 (= e!369269 (and (= (size!4789 (_1!3745 (v!16474 lt!260393))) lt!260420) (= (originalCharacters!1256 (_1!3745 (v!16474 lt!260393))) lt!260399) (= lt!260398 (tuple2!6963 (Token!2171 lt!260409 (rule!2005 (_1!3745 (v!16474 lt!260393))) lt!260420 lt!260399) lt!260405))))))

(declare-fun b!609333 () Bool)

(assert (=> b!609333 (= e!369281 (inv!7747 lt!260414))))

(declare-fun b!609334 () Bool)

(declare-fun res!264430 () Bool)

(assert (=> b!609334 (=> res!264430 e!369272)))

(assert (=> b!609334 (= res!264430 (not (contains!1433 rules!3103 (rule!2005 token!491))))))

(declare-fun e!369274 () Bool)

(assert (=> b!609335 (= e!369274 (and tp!188876 tp!188875))))

(assert (=> b!609336 (= e!369276 (and tp!188877 tp!188878))))

(declare-fun b!609337 () Bool)

(assert (=> b!609337 (= e!369257 e!369281)))

(declare-fun res!264441 () Bool)

(assert (=> b!609337 (=> res!264441 e!369281)))

(assert (=> b!609337 (= res!264441 (not (= lt!260419 (Some!1567 (tuple2!6963 lt!260414 lt!260405)))))))

(declare-fun lt!260403 () Unit!11124)

(declare-fun lemmaSemiInverse!247 (TokenValueInjection!2250 BalanceConc!3876) Unit!11124)

(assert (=> b!609337 (= lt!260403 (lemmaSemiInverse!247 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260401))))

(declare-fun b!609338 () Bool)

(declare-fun tp!188869 () Bool)

(assert (=> b!609338 (= e!369260 (and tp!188869 (inv!7743 (tag!1479 (h!11490 rules!3103))) (inv!7746 (transformation!1217 (h!11490 rules!3103))) e!369274))))

(declare-fun b!609339 () Bool)

(assert (=> b!609339 (= e!369261 e!369263)))

(declare-fun res!264445 () Bool)

(assert (=> b!609339 (=> (not res!264445) (not e!369263))))

(assert (=> b!609339 (= res!264445 ((_ is Some!1567) lt!260393))))

(assert (=> b!609339 (= lt!260393 (maxPrefix!801 thiss!22590 rules!3103 input!2705))))

(assert (= (and start!58272 res!264427) b!609325))

(assert (= (and b!609325 res!264435) b!609310))

(assert (= (and b!609310 res!264432) b!609322))

(assert (= (and b!609322 res!264446) b!609304))

(assert (= (and b!609304 res!264440) b!609321))

(assert (= (and b!609321 res!264447) b!609301))

(assert (= (and b!609301 res!264424) b!609339))

(assert (= (and b!609339 res!264445) b!609320))

(assert (= (and b!609320 res!264431) b!609303))

(assert (= (and b!609303 c!112760) b!609308))

(assert (= (and b!609303 (not c!112760)) b!609309))

(assert (= (and b!609303 res!264443) b!609315))

(assert (= (and b!609315 res!264451) b!609332))

(assert (= (and b!609303 (not res!264428)) b!609323))

(assert (= (and b!609323 res!264434) b!609328))

(assert (= (and b!609328 res!264425) b!609318))

(assert (= (and b!609323 res!264429) b!609326))

(assert (= (and b!609326 (not res!264437)) b!609312))

(assert (= (and b!609312 res!264439) b!609307))

(assert (= (and b!609323 (not res!264442)) b!609334))

(assert (= (and b!609334 (not res!264430)) b!609324))

(assert (= (and b!609324 (not res!264444)) b!609316))

(assert (= (and b!609316 (not res!264448)) b!609327))

(assert (= (and b!609327 (not res!264426)) b!609331))

(assert (= (and b!609331 (not res!264450)) b!609311))

(assert (= (and b!609311 (not res!264452)) b!609329))

(assert (= (and b!609329 (not res!264433)) b!609330))

(assert (= (and b!609330 (not res!264449)) b!609305))

(assert (= (and b!609305 (not res!264438)) b!609337))

(assert (= (and b!609337 (not res!264441)) b!609317))

(assert (= (and b!609317 (not res!264436)) b!609333))

(assert (= (and start!58272 ((_ is Cons!6087) suffix!1342)) b!609302))

(assert (= b!609338 b!609335))

(assert (= b!609319 b!609338))

(assert (= (and start!58272 ((_ is Cons!6089) rules!3103)) b!609319))

(assert (= b!609313 b!609336))

(assert (= b!609306 b!609313))

(assert (= start!58272 b!609306))

(assert (= (and start!58272 ((_ is Cons!6087) input!2705)) b!609314))

(declare-fun m!876659 () Bool)

(assert (=> b!609321 m!876659))

(declare-fun m!876661 () Bool)

(assert (=> b!609321 m!876661))

(declare-fun m!876663 () Bool)

(assert (=> b!609321 m!876663))

(declare-fun m!876665 () Bool)

(assert (=> b!609312 m!876665))

(declare-fun m!876667 () Bool)

(assert (=> b!609328 m!876667))

(declare-fun m!876669 () Bool)

(assert (=> b!609311 m!876669))

(declare-fun m!876671 () Bool)

(assert (=> b!609303 m!876671))

(declare-fun m!876673 () Bool)

(assert (=> b!609303 m!876673))

(declare-fun m!876675 () Bool)

(assert (=> b!609303 m!876675))

(declare-fun m!876677 () Bool)

(assert (=> b!609303 m!876677))

(declare-fun m!876679 () Bool)

(assert (=> b!609303 m!876679))

(declare-fun m!876681 () Bool)

(assert (=> b!609303 m!876681))

(declare-fun m!876683 () Bool)

(assert (=> b!609303 m!876683))

(declare-fun m!876685 () Bool)

(assert (=> b!609303 m!876685))

(declare-fun m!876687 () Bool)

(assert (=> b!609303 m!876687))

(declare-fun m!876689 () Bool)

(assert (=> b!609303 m!876689))

(declare-fun m!876691 () Bool)

(assert (=> b!609303 m!876691))

(declare-fun m!876693 () Bool)

(assert (=> b!609303 m!876693))

(declare-fun m!876695 () Bool)

(assert (=> b!609303 m!876695))

(declare-fun m!876697 () Bool)

(assert (=> b!609303 m!876697))

(declare-fun m!876699 () Bool)

(assert (=> b!609303 m!876699))

(declare-fun m!876701 () Bool)

(assert (=> b!609303 m!876701))

(assert (=> b!609303 m!876683))

(declare-fun m!876703 () Bool)

(assert (=> b!609303 m!876703))

(declare-fun m!876705 () Bool)

(assert (=> b!609303 m!876705))

(declare-fun m!876707 () Bool)

(assert (=> b!609303 m!876707))

(declare-fun m!876709 () Bool)

(assert (=> b!609303 m!876709))

(declare-fun m!876711 () Bool)

(assert (=> b!609303 m!876711))

(declare-fun m!876713 () Bool)

(assert (=> b!609303 m!876713))

(declare-fun m!876715 () Bool)

(assert (=> b!609303 m!876715))

(declare-fun m!876717 () Bool)

(assert (=> b!609303 m!876717))

(declare-fun m!876719 () Bool)

(assert (=> b!609303 m!876719))

(declare-fun m!876721 () Bool)

(assert (=> b!609303 m!876721))

(declare-fun m!876723 () Bool)

(assert (=> b!609303 m!876723))

(declare-fun m!876725 () Bool)

(assert (=> b!609324 m!876725))

(declare-fun m!876727 () Bool)

(assert (=> b!609329 m!876727))

(declare-fun m!876729 () Bool)

(assert (=> b!609330 m!876729))

(declare-fun m!876731 () Bool)

(assert (=> b!609317 m!876731))

(declare-fun m!876733 () Bool)

(assert (=> b!609338 m!876733))

(declare-fun m!876735 () Bool)

(assert (=> b!609338 m!876735))

(declare-fun m!876737 () Bool)

(assert (=> b!609334 m!876737))

(declare-fun m!876739 () Bool)

(assert (=> b!609301 m!876739))

(declare-fun m!876741 () Bool)

(assert (=> b!609325 m!876741))

(declare-fun m!876743 () Bool)

(assert (=> b!609306 m!876743))

(declare-fun m!876745 () Bool)

(assert (=> b!609313 m!876745))

(declare-fun m!876747 () Bool)

(assert (=> b!609313 m!876747))

(declare-fun m!876749 () Bool)

(assert (=> b!609310 m!876749))

(declare-fun m!876751 () Bool)

(assert (=> start!58272 m!876751))

(declare-fun m!876753 () Bool)

(assert (=> b!609327 m!876753))

(declare-fun m!876755 () Bool)

(assert (=> b!609337 m!876755))

(declare-fun m!876757 () Bool)

(assert (=> b!609307 m!876757))

(declare-fun m!876759 () Bool)

(assert (=> b!609322 m!876759))

(declare-fun m!876761 () Bool)

(assert (=> b!609339 m!876761))

(declare-fun m!876763 () Bool)

(assert (=> b!609323 m!876763))

(declare-fun m!876765 () Bool)

(assert (=> b!609323 m!876765))

(declare-fun m!876767 () Bool)

(assert (=> b!609323 m!876767))

(declare-fun m!876769 () Bool)

(assert (=> b!609323 m!876769))

(declare-fun m!876771 () Bool)

(assert (=> b!609323 m!876771))

(declare-fun m!876773 () Bool)

(assert (=> b!609323 m!876773))

(declare-fun m!876775 () Bool)

(assert (=> b!609323 m!876775))

(assert (=> b!609323 m!876771))

(declare-fun m!876777 () Bool)

(assert (=> b!609323 m!876777))

(declare-fun m!876779 () Bool)

(assert (=> b!609304 m!876779))

(assert (=> b!609304 m!876779))

(declare-fun m!876781 () Bool)

(assert (=> b!609304 m!876781))

(declare-fun m!876783 () Bool)

(assert (=> b!609316 m!876783))

(declare-fun m!876785 () Bool)

(assert (=> b!609333 m!876785))

(declare-fun m!876787 () Bool)

(assert (=> b!609320 m!876787))

(declare-fun m!876789 () Bool)

(assert (=> b!609305 m!876789))

(declare-fun m!876791 () Bool)

(assert (=> b!609315 m!876791))

(check-sat (not b!609305) (not b_next!17367) b_and!60331 (not b!609328) (not b!609310) (not b!609333) (not b!609302) b_and!60333 (not b!609314) (not b!609322) b_and!60329 (not b!609325) (not b!609320) (not b!609319) (not b!609304) (not b_next!17365) (not b!609321) (not b!609312) (not b!609317) (not b!609313) (not b_next!17371) (not b!609303) (not b!609338) (not b!609329) (not b!609306) (not b!609339) tp_is_empty!3457 b_and!60327 (not b!609324) (not b!609327) (not b!609334) (not b_next!17369) (not b!609311) (not b!609315) (not start!58272) (not b!609323) (not b!609330) (not b!609316) (not b!609307) (not b!609301) (not b!609337))
(check-sat (not b_next!17365) (not b_next!17367) b_and!60331 (not b_next!17371) b_and!60333 b_and!60327 (not b_next!17369) b_and!60329)
(get-model)

(declare-fun b!609350 () Bool)

(declare-fun res!264466 () Bool)

(declare-fun e!369288 () Bool)

(assert (=> b!609350 (=> (not res!264466) (not e!369288))))

(declare-fun lt!260431 () List!6097)

(assert (=> b!609350 (= res!264466 (= (size!4790 lt!260431) (+ (size!4790 lt!260399) (size!4790 lt!260405))))))

(declare-fun d!214698 () Bool)

(assert (=> d!214698 e!369288))

(declare-fun res!264465 () Bool)

(assert (=> d!214698 (=> (not res!264465) (not e!369288))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1113 (List!6097) (InoxSet C!4024))

(assert (=> d!214698 (= res!264465 (= (content!1113 lt!260431) ((_ map or) (content!1113 lt!260399) (content!1113 lt!260405))))))

(declare-fun e!369289 () List!6097)

(assert (=> d!214698 (= lt!260431 e!369289)))

(declare-fun c!112766 () Bool)

(assert (=> d!214698 (= c!112766 ((_ is Nil!6087) lt!260399))))

(assert (=> d!214698 (= (++!1705 lt!260399 lt!260405) lt!260431)))

(declare-fun b!609351 () Bool)

(assert (=> b!609351 (= e!369288 (or (not (= lt!260405 Nil!6087)) (= lt!260431 lt!260399)))))

(declare-fun b!609349 () Bool)

(assert (=> b!609349 (= e!369289 (Cons!6087 (h!11488 lt!260399) (++!1705 (t!80806 lt!260399) lt!260405)))))

(declare-fun b!609348 () Bool)

(assert (=> b!609348 (= e!369289 lt!260405)))

(assert (= (and d!214698 c!112766) b!609348))

(assert (= (and d!214698 (not c!112766)) b!609349))

(assert (= (and d!214698 res!264465) b!609350))

(assert (= (and b!609350 res!264466) b!609351))

(declare-fun m!876793 () Bool)

(assert (=> b!609350 m!876793))

(assert (=> b!609350 m!876689))

(declare-fun m!876795 () Bool)

(assert (=> b!609350 m!876795))

(declare-fun m!876797 () Bool)

(assert (=> d!214698 m!876797))

(declare-fun m!876799 () Bool)

(assert (=> d!214698 m!876799))

(declare-fun m!876801 () Bool)

(assert (=> d!214698 m!876801))

(declare-fun m!876803 () Bool)

(assert (=> b!609349 m!876803))

(assert (=> b!609329 d!214698))

(declare-fun d!214700 () Bool)

(declare-fun lt!260434 () Bool)

(declare-fun content!1114 (List!6099) (InoxSet Rule!2234))

(assert (=> d!214700 (= lt!260434 (select (content!1114 rules!3103) (rule!2005 (_1!3745 (v!16474 lt!260393)))))))

(declare-fun e!369295 () Bool)

(assert (=> d!214700 (= lt!260434 e!369295)))

(declare-fun res!264472 () Bool)

(assert (=> d!214700 (=> (not res!264472) (not e!369295))))

(assert (=> d!214700 (= res!264472 ((_ is Cons!6089) rules!3103))))

(assert (=> d!214700 (= (contains!1433 rules!3103 (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260434)))

(declare-fun b!609356 () Bool)

(declare-fun e!369294 () Bool)

(assert (=> b!609356 (= e!369295 e!369294)))

(declare-fun res!264471 () Bool)

(assert (=> b!609356 (=> res!264471 e!369294)))

(assert (=> b!609356 (= res!264471 (= (h!11490 rules!3103) (rule!2005 (_1!3745 (v!16474 lt!260393)))))))

(declare-fun b!609357 () Bool)

(assert (=> b!609357 (= e!369294 (contains!1433 (t!80808 rules!3103) (rule!2005 (_1!3745 (v!16474 lt!260393)))))))

(assert (= (and d!214700 res!264472) b!609356))

(assert (= (and b!609356 (not res!264471)) b!609357))

(declare-fun m!876805 () Bool)

(assert (=> d!214700 m!876805))

(declare-fun m!876807 () Bool)

(assert (=> d!214700 m!876807))

(declare-fun m!876809 () Bool)

(assert (=> b!609357 m!876809))

(assert (=> b!609330 d!214700))

(declare-fun d!214702 () Bool)

(declare-fun res!264477 () Bool)

(declare-fun e!369298 () Bool)

(assert (=> d!214702 (=> (not res!264477) (not e!369298))))

(assert (=> d!214702 (= res!264477 (not (isEmpty!4395 (originalCharacters!1256 token!491))))))

(assert (=> d!214702 (= (inv!7747 token!491) e!369298)))

(declare-fun b!609362 () Bool)

(declare-fun res!264478 () Bool)

(assert (=> b!609362 (=> (not res!264478) (not e!369298))))

(declare-fun dynLambda!3542 (Int TokenValue!1241) BalanceConc!3876)

(assert (=> b!609362 (= res!264478 (= (originalCharacters!1256 token!491) (list!2562 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (value!39551 token!491)))))))

(declare-fun b!609363 () Bool)

(assert (=> b!609363 (= e!369298 (= (size!4789 token!491) (size!4790 (originalCharacters!1256 token!491))))))

(assert (= (and d!214702 res!264477) b!609362))

(assert (= (and b!609362 res!264478) b!609363))

(declare-fun b_lambda!24161 () Bool)

(assert (=> (not b_lambda!24161) (not b!609362)))

(declare-fun tb!53239 () Bool)

(declare-fun t!80810 () Bool)

(assert (=> (and b!609335 (= (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toChars!1983 (transformation!1217 (rule!2005 token!491)))) t!80810) tb!53239))

(declare-fun b!609368 () Bool)

(declare-fun e!369301 () Bool)

(declare-fun tp!188881 () Bool)

(declare-fun inv!7750 (Conc!1934) Bool)

(assert (=> b!609368 (= e!369301 (and (inv!7750 (c!112762 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (value!39551 token!491)))) tp!188881))))

(declare-fun result!59938 () Bool)

(declare-fun inv!7751 (BalanceConc!3876) Bool)

(assert (=> tb!53239 (= result!59938 (and (inv!7751 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (value!39551 token!491))) e!369301))))

(assert (= tb!53239 b!609368))

(declare-fun m!876811 () Bool)

(assert (=> b!609368 m!876811))

(declare-fun m!876813 () Bool)

(assert (=> tb!53239 m!876813))

(assert (=> b!609362 t!80810))

(declare-fun b_and!60335 () Bool)

(assert (= b_and!60329 (and (=> t!80810 result!59938) b_and!60335)))

(declare-fun t!80812 () Bool)

(declare-fun tb!53241 () Bool)

(assert (=> (and b!609336 (= (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toChars!1983 (transformation!1217 (rule!2005 token!491)))) t!80812) tb!53241))

(declare-fun result!59942 () Bool)

(assert (= result!59942 result!59938))

(assert (=> b!609362 t!80812))

(declare-fun b_and!60337 () Bool)

(assert (= b_and!60333 (and (=> t!80812 result!59942) b_and!60337)))

(declare-fun m!876815 () Bool)

(assert (=> d!214702 m!876815))

(declare-fun m!876817 () Bool)

(assert (=> b!609362 m!876817))

(assert (=> b!609362 m!876817))

(declare-fun m!876819 () Bool)

(assert (=> b!609362 m!876819))

(assert (=> b!609363 m!876667))

(assert (=> start!58272 d!214702))

(declare-fun d!214704 () Bool)

(declare-fun lt!260437 () Int)

(assert (=> d!214704 (>= lt!260437 0)))

(declare-fun e!369304 () Int)

(assert (=> d!214704 (= lt!260437 e!369304)))

(declare-fun c!112769 () Bool)

(assert (=> d!214704 (= c!112769 ((_ is Nil!6087) (originalCharacters!1256 token!491)))))

(assert (=> d!214704 (= (size!4790 (originalCharacters!1256 token!491)) lt!260437)))

(declare-fun b!609373 () Bool)

(assert (=> b!609373 (= e!369304 0)))

(declare-fun b!609374 () Bool)

(assert (=> b!609374 (= e!369304 (+ 1 (size!4790 (t!80806 (originalCharacters!1256 token!491)))))))

(assert (= (and d!214704 c!112769) b!609373))

(assert (= (and d!214704 (not c!112769)) b!609374))

(declare-fun m!876821 () Bool)

(assert (=> b!609374 m!876821))

(assert (=> b!609328 d!214704))

(declare-fun d!214706 () Bool)

(assert (=> d!214706 (= (get!2340 lt!260393) (v!16474 lt!260393))))

(assert (=> b!609307 d!214706))

(declare-fun b!609403 () Bool)

(declare-fun e!369321 () Bool)

(declare-fun head!1290 (List!6097) C!4024)

(assert (=> b!609403 (= e!369321 (= (head!1290 lt!260399) (c!112761 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))))))

(declare-fun b!609404 () Bool)

(declare-fun e!369320 () Bool)

(declare-fun derivativeStep!333 (Regex!1551 C!4024) Regex!1551)

(declare-fun tail!819 (List!6097) List!6097)

(assert (=> b!609404 (= e!369320 (matchR!654 (derivativeStep!333 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) (head!1290 lt!260399)) (tail!819 lt!260399)))))

(declare-fun b!609405 () Bool)

(declare-fun e!369319 () Bool)

(assert (=> b!609405 (= e!369319 (not (= (head!1290 lt!260399) (c!112761 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))))))))

(declare-fun b!609406 () Bool)

(declare-fun e!369325 () Bool)

(declare-fun e!369324 () Bool)

(assert (=> b!609406 (= e!369325 e!369324)))

(declare-fun c!112776 () Bool)

(assert (=> b!609406 (= c!112776 ((_ is EmptyLang!1551) (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))))))

(declare-fun b!609407 () Bool)

(declare-fun res!264496 () Bool)

(assert (=> b!609407 (=> (not res!264496) (not e!369321))))

(declare-fun call!40828 () Bool)

(assert (=> b!609407 (= res!264496 (not call!40828))))

(declare-fun b!609408 () Bool)

(declare-fun res!264501 () Bool)

(declare-fun e!369323 () Bool)

(assert (=> b!609408 (=> res!264501 e!369323)))

(assert (=> b!609408 (= res!264501 e!369321)))

(declare-fun res!264495 () Bool)

(assert (=> b!609408 (=> (not res!264495) (not e!369321))))

(declare-fun lt!260440 () Bool)

(assert (=> b!609408 (= res!264495 lt!260440)))

(declare-fun b!609409 () Bool)

(declare-fun res!264498 () Bool)

(assert (=> b!609409 (=> (not res!264498) (not e!369321))))

(assert (=> b!609409 (= res!264498 (isEmpty!4395 (tail!819 lt!260399)))))

(declare-fun d!214708 () Bool)

(assert (=> d!214708 e!369325))

(declare-fun c!112778 () Bool)

(assert (=> d!214708 (= c!112778 ((_ is EmptyExpr!1551) (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))))))

(assert (=> d!214708 (= lt!260440 e!369320)))

(declare-fun c!112777 () Bool)

(assert (=> d!214708 (= c!112777 (isEmpty!4395 lt!260399))))

(declare-fun validRegex!543 (Regex!1551) Bool)

(assert (=> d!214708 (validRegex!543 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))))

(assert (=> d!214708 (= (matchR!654 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260399) lt!260440)))

(declare-fun b!609410 () Bool)

(declare-fun res!264499 () Bool)

(assert (=> b!609410 (=> res!264499 e!369323)))

(assert (=> b!609410 (= res!264499 (not ((_ is ElementMatch!1551) (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))))))

(assert (=> b!609410 (= e!369324 e!369323)))

(declare-fun b!609411 () Bool)

(declare-fun res!264502 () Bool)

(assert (=> b!609411 (=> res!264502 e!369319)))

(assert (=> b!609411 (= res!264502 (not (isEmpty!4395 (tail!819 lt!260399))))))

(declare-fun bm!40823 () Bool)

(assert (=> bm!40823 (= call!40828 (isEmpty!4395 lt!260399))))

(declare-fun b!609412 () Bool)

(declare-fun e!369322 () Bool)

(assert (=> b!609412 (= e!369322 e!369319)))

(declare-fun res!264500 () Bool)

(assert (=> b!609412 (=> res!264500 e!369319)))

(assert (=> b!609412 (= res!264500 call!40828)))

(declare-fun b!609413 () Bool)

(assert (=> b!609413 (= e!369323 e!369322)))

(declare-fun res!264497 () Bool)

(assert (=> b!609413 (=> (not res!264497) (not e!369322))))

(assert (=> b!609413 (= res!264497 (not lt!260440))))

(declare-fun b!609414 () Bool)

(assert (=> b!609414 (= e!369325 (= lt!260440 call!40828))))

(declare-fun b!609415 () Bool)

(assert (=> b!609415 (= e!369324 (not lt!260440))))

(declare-fun b!609416 () Bool)

(declare-fun nullable!449 (Regex!1551) Bool)

(assert (=> b!609416 (= e!369320 (nullable!449 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))))))

(assert (= (and d!214708 c!112777) b!609416))

(assert (= (and d!214708 (not c!112777)) b!609404))

(assert (= (and d!214708 c!112778) b!609414))

(assert (= (and d!214708 (not c!112778)) b!609406))

(assert (= (and b!609406 c!112776) b!609415))

(assert (= (and b!609406 (not c!112776)) b!609410))

(assert (= (and b!609410 (not res!264499)) b!609408))

(assert (= (and b!609408 res!264495) b!609407))

(assert (= (and b!609407 res!264496) b!609409))

(assert (= (and b!609409 res!264498) b!609403))

(assert (= (and b!609408 (not res!264501)) b!609413))

(assert (= (and b!609413 res!264497) b!609412))

(assert (= (and b!609412 (not res!264500)) b!609411))

(assert (= (and b!609411 (not res!264502)) b!609405))

(assert (= (or b!609414 b!609412 b!609407) bm!40823))

(declare-fun m!876823 () Bool)

(assert (=> b!609404 m!876823))

(assert (=> b!609404 m!876823))

(declare-fun m!876825 () Bool)

(assert (=> b!609404 m!876825))

(declare-fun m!876827 () Bool)

(assert (=> b!609404 m!876827))

(assert (=> b!609404 m!876825))

(assert (=> b!609404 m!876827))

(declare-fun m!876829 () Bool)

(assert (=> b!609404 m!876829))

(declare-fun m!876831 () Bool)

(assert (=> bm!40823 m!876831))

(assert (=> b!609409 m!876827))

(assert (=> b!609409 m!876827))

(declare-fun m!876833 () Bool)

(assert (=> b!609409 m!876833))

(declare-fun m!876835 () Bool)

(assert (=> b!609416 m!876835))

(assert (=> b!609411 m!876827))

(assert (=> b!609411 m!876827))

(assert (=> b!609411 m!876833))

(assert (=> b!609405 m!876823))

(assert (=> b!609403 m!876823))

(assert (=> d!214708 m!876831))

(declare-fun m!876837 () Bool)

(assert (=> d!214708 m!876837))

(assert (=> b!609305 d!214708))

(declare-fun d!214710 () Bool)

(declare-fun lt!260443 () List!6097)

(assert (=> d!214710 (= (++!1705 input!2705 lt!260443) input!2705)))

(declare-fun e!369328 () List!6097)

(assert (=> d!214710 (= lt!260443 e!369328)))

(declare-fun c!112781 () Bool)

(assert (=> d!214710 (= c!112781 ((_ is Cons!6087) input!2705))))

(assert (=> d!214710 (>= (size!4790 input!2705) (size!4790 input!2705))))

(assert (=> d!214710 (= (getSuffix!362 input!2705 input!2705) lt!260443)))

(declare-fun b!609421 () Bool)

(assert (=> b!609421 (= e!369328 (getSuffix!362 (tail!819 input!2705) (t!80806 input!2705)))))

(declare-fun b!609422 () Bool)

(assert (=> b!609422 (= e!369328 input!2705)))

(assert (= (and d!214710 c!112781) b!609421))

(assert (= (and d!214710 (not c!112781)) b!609422))

(declare-fun m!876839 () Bool)

(assert (=> d!214710 m!876839))

(assert (=> d!214710 m!876731))

(assert (=> d!214710 m!876731))

(declare-fun m!876841 () Bool)

(assert (=> b!609421 m!876841))

(assert (=> b!609421 m!876841))

(declare-fun m!876843 () Bool)

(assert (=> b!609421 m!876843))

(assert (=> b!609327 d!214710))

(declare-fun b!609433 () Bool)

(declare-fun e!369335 () Bool)

(declare-fun e!369336 () Bool)

(assert (=> b!609433 (= e!369335 e!369336)))

(declare-fun c!112786 () Bool)

(assert (=> b!609433 (= c!112786 ((_ is IntegerValue!3724) (value!39551 token!491)))))

(declare-fun b!609434 () Bool)

(declare-fun e!369337 () Bool)

(declare-fun inv!15 (TokenValue!1241) Bool)

(assert (=> b!609434 (= e!369337 (inv!15 (value!39551 token!491)))))

(declare-fun b!609435 () Bool)

(declare-fun inv!16 (TokenValue!1241) Bool)

(assert (=> b!609435 (= e!369335 (inv!16 (value!39551 token!491)))))

(declare-fun d!214712 () Bool)

(declare-fun c!112787 () Bool)

(assert (=> d!214712 (= c!112787 ((_ is IntegerValue!3723) (value!39551 token!491)))))

(assert (=> d!214712 (= (inv!21 (value!39551 token!491)) e!369335)))

(declare-fun b!609436 () Bool)

(declare-fun inv!17 (TokenValue!1241) Bool)

(assert (=> b!609436 (= e!369336 (inv!17 (value!39551 token!491)))))

(declare-fun b!609437 () Bool)

(declare-fun res!264505 () Bool)

(assert (=> b!609437 (=> res!264505 e!369337)))

(assert (=> b!609437 (= res!264505 (not ((_ is IntegerValue!3725) (value!39551 token!491))))))

(assert (=> b!609437 (= e!369336 e!369337)))

(assert (= (and d!214712 c!112787) b!609435))

(assert (= (and d!214712 (not c!112787)) b!609433))

(assert (= (and b!609433 c!112786) b!609436))

(assert (= (and b!609433 (not c!112786)) b!609437))

(assert (= (and b!609437 (not res!264505)) b!609434))

(declare-fun m!876845 () Bool)

(assert (=> b!609434 m!876845))

(declare-fun m!876847 () Bool)

(assert (=> b!609435 m!876847))

(declare-fun m!876849 () Bool)

(assert (=> b!609436 m!876849))

(assert (=> b!609306 d!214712))

(declare-fun d!214714 () Bool)

(assert (=> d!214714 (= (isEmpty!4396 rules!3103) ((_ is Nil!6089) rules!3103))))

(assert (=> b!609325 d!214714))

(declare-fun d!214716 () Bool)

(declare-fun list!2563 (Conc!1934) List!6097)

(assert (=> d!214716 (= (list!2562 (charsOf!846 token!491)) (list!2563 (c!112762 (charsOf!846 token!491))))))

(declare-fun bs!71492 () Bool)

(assert (= bs!71492 d!214716))

(declare-fun m!876851 () Bool)

(assert (=> bs!71492 m!876851))

(assert (=> b!609304 d!214716))

(declare-fun d!214718 () Bool)

(declare-fun lt!260446 () BalanceConc!3876)

(assert (=> d!214718 (= (list!2562 lt!260446) (originalCharacters!1256 token!491))))

(assert (=> d!214718 (= lt!260446 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (value!39551 token!491)))))

(assert (=> d!214718 (= (charsOf!846 token!491) lt!260446)))

(declare-fun b_lambda!24163 () Bool)

(assert (=> (not b_lambda!24163) (not d!214718)))

(assert (=> d!214718 t!80810))

(declare-fun b_and!60339 () Bool)

(assert (= b_and!60335 (and (=> t!80810 result!59938) b_and!60339)))

(assert (=> d!214718 t!80812))

(declare-fun b_and!60341 () Bool)

(assert (= b_and!60337 (and (=> t!80812 result!59942) b_and!60341)))

(declare-fun m!876853 () Bool)

(assert (=> d!214718 m!876853))

(assert (=> d!214718 m!876817))

(assert (=> b!609304 d!214718))

(declare-fun d!214720 () Bool)

(assert (=> d!214720 (= (inv!7743 (tag!1479 (rule!2005 token!491))) (= (mod (str.len (value!39550 (tag!1479 (rule!2005 token!491)))) 2) 0))))

(assert (=> b!609313 d!214720))

(declare-fun d!214722 () Bool)

(declare-fun res!264508 () Bool)

(declare-fun e!369340 () Bool)

(assert (=> d!214722 (=> (not res!264508) (not e!369340))))

(declare-fun semiInverseModEq!491 (Int Int) Bool)

(assert (=> d!214722 (= res!264508 (semiInverseModEq!491 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toValue!2124 (transformation!1217 (rule!2005 token!491)))))))

(assert (=> d!214722 (= (inv!7746 (transformation!1217 (rule!2005 token!491))) e!369340)))

(declare-fun b!609440 () Bool)

(declare-fun equivClasses!474 (Int Int) Bool)

(assert (=> b!609440 (= e!369340 (equivClasses!474 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toValue!2124 (transformation!1217 (rule!2005 token!491)))))))

(assert (= (and d!214722 res!264508) b!609440))

(declare-fun m!876855 () Bool)

(assert (=> d!214722 m!876855))

(declare-fun m!876857 () Bool)

(assert (=> b!609440 m!876857))

(assert (=> b!609313 d!214722))

(declare-fun d!214724 () Bool)

(declare-fun res!264509 () Bool)

(declare-fun e!369341 () Bool)

(assert (=> d!214724 (=> (not res!264509) (not e!369341))))

(assert (=> d!214724 (= res!264509 (not (isEmpty!4395 (originalCharacters!1256 lt!260414))))))

(assert (=> d!214724 (= (inv!7747 lt!260414) e!369341)))

(declare-fun b!609441 () Bool)

(declare-fun res!264510 () Bool)

(assert (=> b!609441 (=> (not res!264510) (not e!369341))))

(assert (=> b!609441 (= res!264510 (= (originalCharacters!1256 lt!260414) (list!2562 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 lt!260414))) (value!39551 lt!260414)))))))

(declare-fun b!609442 () Bool)

(assert (=> b!609442 (= e!369341 (= (size!4789 lt!260414) (size!4790 (originalCharacters!1256 lt!260414))))))

(assert (= (and d!214724 res!264509) b!609441))

(assert (= (and b!609441 res!264510) b!609442))

(declare-fun b_lambda!24165 () Bool)

(assert (=> (not b_lambda!24165) (not b!609441)))

(declare-fun t!80814 () Bool)

(declare-fun tb!53243 () Bool)

(assert (=> (and b!609335 (= (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toChars!1983 (transformation!1217 (rule!2005 lt!260414)))) t!80814) tb!53243))

(declare-fun b!609443 () Bool)

(declare-fun e!369342 () Bool)

(declare-fun tp!188882 () Bool)

(assert (=> b!609443 (= e!369342 (and (inv!7750 (c!112762 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 lt!260414))) (value!39551 lt!260414)))) tp!188882))))

(declare-fun result!59944 () Bool)

(assert (=> tb!53243 (= result!59944 (and (inv!7751 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 lt!260414))) (value!39551 lt!260414))) e!369342))))

(assert (= tb!53243 b!609443))

(declare-fun m!876859 () Bool)

(assert (=> b!609443 m!876859))

(declare-fun m!876861 () Bool)

(assert (=> tb!53243 m!876861))

(assert (=> b!609441 t!80814))

(declare-fun b_and!60343 () Bool)

(assert (= b_and!60339 (and (=> t!80814 result!59944) b_and!60343)))

(declare-fun tb!53245 () Bool)

(declare-fun t!80816 () Bool)

(assert (=> (and b!609336 (= (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toChars!1983 (transformation!1217 (rule!2005 lt!260414)))) t!80816) tb!53245))

(declare-fun result!59946 () Bool)

(assert (= result!59946 result!59944))

(assert (=> b!609441 t!80816))

(declare-fun b_and!60345 () Bool)

(assert (= b_and!60341 (and (=> t!80816 result!59946) b_and!60345)))

(declare-fun m!876863 () Bool)

(assert (=> d!214724 m!876863))

(declare-fun m!876865 () Bool)

(assert (=> b!609441 m!876865))

(assert (=> b!609441 m!876865))

(declare-fun m!876867 () Bool)

(assert (=> b!609441 m!876867))

(declare-fun m!876869 () Bool)

(assert (=> b!609442 m!876869))

(assert (=> b!609333 d!214724))

(declare-fun d!214726 () Bool)

(declare-fun isEmpty!4398 (Option!1568) Bool)

(assert (=> d!214726 (= (isDefined!1379 lt!260393) (not (isEmpty!4398 lt!260393)))))

(declare-fun bs!71493 () Bool)

(assert (= bs!71493 d!214726))

(declare-fun m!876871 () Bool)

(assert (=> bs!71493 m!876871))

(assert (=> b!609312 d!214726))

(declare-fun d!214728 () Bool)

(declare-fun lt!260447 () Bool)

(assert (=> d!214728 (= lt!260447 (select (content!1114 rules!3103) (rule!2005 token!491)))))

(declare-fun e!369344 () Bool)

(assert (=> d!214728 (= lt!260447 e!369344)))

(declare-fun res!264512 () Bool)

(assert (=> d!214728 (=> (not res!264512) (not e!369344))))

(assert (=> d!214728 (= res!264512 ((_ is Cons!6089) rules!3103))))

(assert (=> d!214728 (= (contains!1433 rules!3103 (rule!2005 token!491)) lt!260447)))

(declare-fun b!609444 () Bool)

(declare-fun e!369343 () Bool)

(assert (=> b!609444 (= e!369344 e!369343)))

(declare-fun res!264511 () Bool)

(assert (=> b!609444 (=> res!264511 e!369343)))

(assert (=> b!609444 (= res!264511 (= (h!11490 rules!3103) (rule!2005 token!491)))))

(declare-fun b!609445 () Bool)

(assert (=> b!609445 (= e!369343 (contains!1433 (t!80808 rules!3103) (rule!2005 token!491)))))

(assert (= (and d!214728 res!264512) b!609444))

(assert (= (and b!609444 (not res!264511)) b!609445))

(assert (=> d!214728 m!876805))

(declare-fun m!876873 () Bool)

(assert (=> d!214728 m!876873))

(declare-fun m!876875 () Bool)

(assert (=> b!609445 m!876875))

(assert (=> b!609334 d!214728))

(declare-fun b!609455 () Bool)

(declare-fun res!264522 () Bool)

(declare-fun e!369353 () Bool)

(assert (=> b!609455 (=> (not res!264522) (not e!369353))))

(assert (=> b!609455 (= res!264522 (= (head!1290 lt!260399) (head!1290 input!2705)))))

(declare-fun b!609456 () Bool)

(assert (=> b!609456 (= e!369353 (isPrefix!845 (tail!819 lt!260399) (tail!819 input!2705)))))

(declare-fun d!214730 () Bool)

(declare-fun e!369352 () Bool)

(assert (=> d!214730 e!369352))

(declare-fun res!264524 () Bool)

(assert (=> d!214730 (=> res!264524 e!369352)))

(declare-fun lt!260450 () Bool)

(assert (=> d!214730 (= res!264524 (not lt!260450))))

(declare-fun e!369351 () Bool)

(assert (=> d!214730 (= lt!260450 e!369351)))

(declare-fun res!264523 () Bool)

(assert (=> d!214730 (=> res!264523 e!369351)))

(assert (=> d!214730 (= res!264523 ((_ is Nil!6087) lt!260399))))

(assert (=> d!214730 (= (isPrefix!845 lt!260399 input!2705) lt!260450)))

(declare-fun b!609457 () Bool)

(assert (=> b!609457 (= e!369352 (>= (size!4790 input!2705) (size!4790 lt!260399)))))

(declare-fun b!609454 () Bool)

(assert (=> b!609454 (= e!369351 e!369353)))

(declare-fun res!264521 () Bool)

(assert (=> b!609454 (=> (not res!264521) (not e!369353))))

(assert (=> b!609454 (= res!264521 (not ((_ is Nil!6087) input!2705)))))

(assert (= (and d!214730 (not res!264523)) b!609454))

(assert (= (and b!609454 res!264521) b!609455))

(assert (= (and b!609455 res!264522) b!609456))

(assert (= (and d!214730 (not res!264524)) b!609457))

(assert (=> b!609455 m!876823))

(declare-fun m!876877 () Bool)

(assert (=> b!609455 m!876877))

(assert (=> b!609456 m!876827))

(assert (=> b!609456 m!876841))

(assert (=> b!609456 m!876827))

(assert (=> b!609456 m!876841))

(declare-fun m!876879 () Bool)

(assert (=> b!609456 m!876879))

(assert (=> b!609457 m!876731))

(assert (=> b!609457 m!876689))

(assert (=> b!609311 d!214730))

(declare-fun d!214732 () Bool)

(declare-fun res!264527 () Bool)

(declare-fun e!369356 () Bool)

(assert (=> d!214732 (=> (not res!264527) (not e!369356))))

(declare-fun rulesValid!454 (LexerInterface!1103 List!6099) Bool)

(assert (=> d!214732 (= res!264527 (rulesValid!454 thiss!22590 rules!3103))))

(assert (=> d!214732 (= (rulesInvariant!1066 thiss!22590 rules!3103) e!369356)))

(declare-fun b!609460 () Bool)

(declare-datatypes ((List!6101 0))(
  ( (Nil!6091) (Cons!6091 (h!11492 String!7949) (t!80882 List!6101)) )
))
(declare-fun noDuplicateTag!454 (LexerInterface!1103 List!6099 List!6101) Bool)

(assert (=> b!609460 (= e!369356 (noDuplicateTag!454 thiss!22590 rules!3103 Nil!6091))))

(assert (= (and d!214732 res!264527) b!609460))

(declare-fun m!876881 () Bool)

(assert (=> d!214732 m!876881))

(declare-fun m!876883 () Bool)

(assert (=> b!609460 m!876883))

(assert (=> b!609310 d!214732))

(declare-fun d!214734 () Bool)

(declare-fun lt!260451 () Int)

(assert (=> d!214734 (>= lt!260451 0)))

(declare-fun e!369357 () Int)

(assert (=> d!214734 (= lt!260451 e!369357)))

(declare-fun c!112788 () Bool)

(assert (=> d!214734 (= c!112788 ((_ is Nil!6087) input!2705))))

(assert (=> d!214734 (= (size!4790 input!2705) lt!260451)))

(declare-fun b!609461 () Bool)

(assert (=> b!609461 (= e!369357 0)))

(declare-fun b!609462 () Bool)

(assert (=> b!609462 (= e!369357 (+ 1 (size!4790 (t!80806 input!2705))))))

(assert (= (and d!214734 c!112788) b!609461))

(assert (= (and d!214734 (not c!112788)) b!609462))

(declare-fun m!876885 () Bool)

(assert (=> b!609462 m!876885))

(assert (=> b!609317 d!214734))

(declare-fun b!609509 () Bool)

(declare-fun res!264552 () Bool)

(declare-fun e!369386 () Bool)

(assert (=> b!609509 (=> (not res!264552) (not e!369386))))

(declare-fun lt!260474 () Option!1568)

(assert (=> b!609509 (= res!264552 (= (++!1705 (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260474)))) (_2!3745 (get!2340 lt!260474))) input!2705))))

(declare-fun b!609510 () Bool)

(assert (=> b!609510 (= e!369386 (contains!1433 rules!3103 (rule!2005 (_1!3745 (get!2340 lt!260474)))))))

(declare-fun b!609511 () Bool)

(declare-fun e!369388 () Bool)

(assert (=> b!609511 (= e!369388 e!369386)))

(declare-fun res!264557 () Bool)

(assert (=> b!609511 (=> (not res!264557) (not e!369386))))

(assert (=> b!609511 (= res!264557 (isDefined!1379 lt!260474))))

(declare-fun b!609512 () Bool)

(declare-fun res!264556 () Bool)

(assert (=> b!609512 (=> (not res!264556) (not e!369386))))

(assert (=> b!609512 (= res!264556 (< (size!4790 (_2!3745 (get!2340 lt!260474))) (size!4790 input!2705)))))

(declare-fun b!609513 () Bool)

(declare-fun res!264554 () Bool)

(assert (=> b!609513 (=> (not res!264554) (not e!369386))))

(assert (=> b!609513 (= res!264554 (= (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260474)))) (originalCharacters!1256 (_1!3745 (get!2340 lt!260474)))))))

(declare-fun bm!40826 () Bool)

(declare-fun call!40831 () Option!1568)

(assert (=> bm!40826 (= call!40831 (maxPrefixOneRule!464 thiss!22590 (h!11490 rules!3103) input!2705))))

(declare-fun d!214736 () Bool)

(assert (=> d!214736 e!369388))

(declare-fun res!264555 () Bool)

(assert (=> d!214736 (=> res!264555 e!369388)))

(assert (=> d!214736 (= res!264555 (isEmpty!4398 lt!260474))))

(declare-fun e!369387 () Option!1568)

(assert (=> d!214736 (= lt!260474 e!369387)))

(declare-fun c!112794 () Bool)

(assert (=> d!214736 (= c!112794 (and ((_ is Cons!6089) rules!3103) ((_ is Nil!6089) (t!80808 rules!3103))))))

(declare-fun lt!260476 () Unit!11124)

(declare-fun lt!260475 () Unit!11124)

(assert (=> d!214736 (= lt!260476 lt!260475)))

(assert (=> d!214736 (isPrefix!845 input!2705 input!2705)))

(assert (=> d!214736 (= lt!260475 (lemmaIsPrefixRefl!581 input!2705 input!2705))))

(declare-fun rulesValidInductive!460 (LexerInterface!1103 List!6099) Bool)

(assert (=> d!214736 (rulesValidInductive!460 thiss!22590 rules!3103)))

(assert (=> d!214736 (= (maxPrefix!801 thiss!22590 rules!3103 input!2705) lt!260474)))

(declare-fun b!609514 () Bool)

(declare-fun lt!260473 () Option!1568)

(declare-fun lt!260472 () Option!1568)

(assert (=> b!609514 (= e!369387 (ite (and ((_ is None!1567) lt!260473) ((_ is None!1567) lt!260472)) None!1567 (ite ((_ is None!1567) lt!260472) lt!260473 (ite ((_ is None!1567) lt!260473) lt!260472 (ite (>= (size!4789 (_1!3745 (v!16474 lt!260473))) (size!4789 (_1!3745 (v!16474 lt!260472)))) lt!260473 lt!260472)))))))

(assert (=> b!609514 (= lt!260473 call!40831)))

(assert (=> b!609514 (= lt!260472 (maxPrefix!801 thiss!22590 (t!80808 rules!3103) input!2705))))

(declare-fun b!609515 () Bool)

(assert (=> b!609515 (= e!369387 call!40831)))

(declare-fun b!609516 () Bool)

(declare-fun res!264558 () Bool)

(assert (=> b!609516 (=> (not res!264558) (not e!369386))))

(assert (=> b!609516 (= res!264558 (= (value!39551 (_1!3745 (get!2340 lt!260474))) (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (get!2340 lt!260474)))) (seqFromList!1393 (originalCharacters!1256 (_1!3745 (get!2340 lt!260474)))))))))

(declare-fun b!609517 () Bool)

(declare-fun res!264553 () Bool)

(assert (=> b!609517 (=> (not res!264553) (not e!369386))))

(assert (=> b!609517 (= res!264553 (matchR!654 (regex!1217 (rule!2005 (_1!3745 (get!2340 lt!260474)))) (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260474))))))))

(assert (= (and d!214736 c!112794) b!609515))

(assert (= (and d!214736 (not c!112794)) b!609514))

(assert (= (or b!609515 b!609514) bm!40826))

(assert (= (and d!214736 (not res!264555)) b!609511))

(assert (= (and b!609511 res!264557) b!609513))

(assert (= (and b!609513 res!264554) b!609512))

(assert (= (and b!609512 res!264556) b!609509))

(assert (= (and b!609509 res!264552) b!609516))

(assert (= (and b!609516 res!264558) b!609517))

(assert (= (and b!609517 res!264553) b!609510))

(declare-fun m!876927 () Bool)

(assert (=> d!214736 m!876927))

(assert (=> d!214736 m!876719))

(assert (=> d!214736 m!876691))

(declare-fun m!876929 () Bool)

(assert (=> d!214736 m!876929))

(declare-fun m!876931 () Bool)

(assert (=> bm!40826 m!876931))

(declare-fun m!876933 () Bool)

(assert (=> b!609509 m!876933))

(declare-fun m!876935 () Bool)

(assert (=> b!609509 m!876935))

(assert (=> b!609509 m!876935))

(declare-fun m!876937 () Bool)

(assert (=> b!609509 m!876937))

(assert (=> b!609509 m!876937))

(declare-fun m!876939 () Bool)

(assert (=> b!609509 m!876939))

(assert (=> b!609513 m!876933))

(assert (=> b!609513 m!876935))

(assert (=> b!609513 m!876935))

(assert (=> b!609513 m!876937))

(assert (=> b!609512 m!876933))

(declare-fun m!876941 () Bool)

(assert (=> b!609512 m!876941))

(assert (=> b!609512 m!876731))

(assert (=> b!609516 m!876933))

(declare-fun m!876943 () Bool)

(assert (=> b!609516 m!876943))

(assert (=> b!609516 m!876943))

(declare-fun m!876945 () Bool)

(assert (=> b!609516 m!876945))

(assert (=> b!609517 m!876933))

(assert (=> b!609517 m!876935))

(assert (=> b!609517 m!876935))

(assert (=> b!609517 m!876937))

(assert (=> b!609517 m!876937))

(declare-fun m!876947 () Bool)

(assert (=> b!609517 m!876947))

(declare-fun m!876949 () Bool)

(assert (=> b!609514 m!876949))

(declare-fun m!876951 () Bool)

(assert (=> b!609511 m!876951))

(assert (=> b!609510 m!876933))

(declare-fun m!876953 () Bool)

(assert (=> b!609510 m!876953))

(assert (=> b!609339 d!214736))

(declare-fun b!609807 () Bool)

(declare-fun e!369546 () Bool)

(assert (=> b!609807 (= e!369546 true)))

(declare-fun d!214754 () Bool)

(assert (=> d!214754 e!369546))

(assert (= d!214754 b!609807))

(declare-fun order!4867 () Int)

(declare-fun lambda!16166 () Int)

(declare-fun order!4865 () Int)

(declare-fun dynLambda!3543 (Int Int) Int)

(declare-fun dynLambda!3544 (Int Int) Int)

(assert (=> b!609807 (< (dynLambda!3543 order!4865 (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) (dynLambda!3544 order!4867 lambda!16166))))

(declare-fun order!4869 () Int)

(declare-fun dynLambda!3545 (Int Int) Int)

(assert (=> b!609807 (< (dynLambda!3545 order!4869 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) (dynLambda!3544 order!4867 lambda!16166))))

(declare-fun dynLambda!3546 (Int BalanceConc!3876) TokenValue!1241)

(assert (=> d!214754 (= (list!2562 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (dynLambda!3546 (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) lt!260401))) (list!2562 lt!260401))))

(declare-fun lt!260572 () Unit!11124)

(declare-fun ForallOf!126 (Int BalanceConc!3876) Unit!11124)

(assert (=> d!214754 (= lt!260572 (ForallOf!126 lambda!16166 lt!260401))))

(assert (=> d!214754 (= (lemmaSemiInverse!247 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260401) lt!260572)))

(declare-fun b_lambda!24189 () Bool)

(assert (=> (not b_lambda!24189) (not d!214754)))

(declare-fun t!80854 () Bool)

(declare-fun tb!53283 () Bool)

(assert (=> (and b!609335 (= (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80854) tb!53283))

(declare-fun b!609808 () Bool)

(declare-fun tp!188926 () Bool)

(declare-fun e!369547 () Bool)

(assert (=> b!609808 (= e!369547 (and (inv!7750 (c!112762 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (dynLambda!3546 (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) lt!260401)))) tp!188926))))

(declare-fun result!59994 () Bool)

(assert (=> tb!53283 (= result!59994 (and (inv!7751 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (dynLambda!3546 (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) lt!260401))) e!369547))))

(assert (= tb!53283 b!609808))

(declare-fun m!877317 () Bool)

(assert (=> b!609808 m!877317))

(declare-fun m!877319 () Bool)

(assert (=> tb!53283 m!877319))

(assert (=> d!214754 t!80854))

(declare-fun b_and!60383 () Bool)

(assert (= b_and!60343 (and (=> t!80854 result!59994) b_and!60383)))

(declare-fun tb!53285 () Bool)

(declare-fun t!80856 () Bool)

(assert (=> (and b!609336 (= (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80856) tb!53285))

(declare-fun result!59996 () Bool)

(assert (= result!59996 result!59994))

(assert (=> d!214754 t!80856))

(declare-fun b_and!60385 () Bool)

(assert (= b_and!60345 (and (=> t!80856 result!59996) b_and!60385)))

(declare-fun b_lambda!24191 () Bool)

(assert (=> (not b_lambda!24191) (not d!214754)))

(declare-fun t!80858 () Bool)

(declare-fun tb!53287 () Bool)

(assert (=> (and b!609335 (= (toValue!2124 (transformation!1217 (h!11490 rules!3103))) (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80858) tb!53287))

(declare-fun result!59998 () Bool)

(assert (=> tb!53287 (= result!59998 (inv!21 (dynLambda!3546 (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) lt!260401)))))

(declare-fun m!877321 () Bool)

(assert (=> tb!53287 m!877321))

(assert (=> d!214754 t!80858))

(declare-fun b_and!60387 () Bool)

(assert (= b_and!60327 (and (=> t!80858 result!59998) b_and!60387)))

(declare-fun t!80860 () Bool)

(declare-fun tb!53289 () Bool)

(assert (=> (and b!609336 (= (toValue!2124 (transformation!1217 (rule!2005 token!491))) (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80860) tb!53289))

(declare-fun result!60002 () Bool)

(assert (= result!60002 result!59998))

(assert (=> d!214754 t!80860))

(declare-fun b_and!60389 () Bool)

(assert (= b_and!60331 (and (=> t!80860 result!60002) b_and!60389)))

(declare-fun m!877323 () Bool)

(assert (=> d!214754 m!877323))

(assert (=> d!214754 m!877323))

(declare-fun m!877325 () Bool)

(assert (=> d!214754 m!877325))

(assert (=> d!214754 m!877325))

(declare-fun m!877327 () Bool)

(assert (=> d!214754 m!877327))

(declare-fun m!877329 () Bool)

(assert (=> d!214754 m!877329))

(declare-fun m!877331 () Bool)

(assert (=> d!214754 m!877331))

(assert (=> b!609337 d!214754))

(declare-fun b!609812 () Bool)

(declare-fun res!264724 () Bool)

(declare-fun e!369553 () Bool)

(assert (=> b!609812 (=> (not res!264724) (not e!369553))))

(assert (=> b!609812 (= res!264724 (= (head!1290 lt!260407) (head!1290 input!2705)))))

(declare-fun b!609813 () Bool)

(assert (=> b!609813 (= e!369553 (isPrefix!845 (tail!819 lt!260407) (tail!819 input!2705)))))

(declare-fun d!214872 () Bool)

(declare-fun e!369552 () Bool)

(assert (=> d!214872 e!369552))

(declare-fun res!264726 () Bool)

(assert (=> d!214872 (=> res!264726 e!369552)))

(declare-fun lt!260573 () Bool)

(assert (=> d!214872 (= res!264726 (not lt!260573))))

(declare-fun e!369551 () Bool)

(assert (=> d!214872 (= lt!260573 e!369551)))

(declare-fun res!264725 () Bool)

(assert (=> d!214872 (=> res!264725 e!369551)))

(assert (=> d!214872 (= res!264725 ((_ is Nil!6087) lt!260407))))

(assert (=> d!214872 (= (isPrefix!845 lt!260407 input!2705) lt!260573)))

(declare-fun b!609814 () Bool)

(assert (=> b!609814 (= e!369552 (>= (size!4790 input!2705) (size!4790 lt!260407)))))

(declare-fun b!609811 () Bool)

(assert (=> b!609811 (= e!369551 e!369553)))

(declare-fun res!264723 () Bool)

(assert (=> b!609811 (=> (not res!264723) (not e!369553))))

(assert (=> b!609811 (= res!264723 (not ((_ is Nil!6087) input!2705)))))

(assert (= (and d!214872 (not res!264725)) b!609811))

(assert (= (and b!609811 res!264723) b!609812))

(assert (= (and b!609812 res!264724) b!609813))

(assert (= (and d!214872 (not res!264726)) b!609814))

(declare-fun m!877333 () Bool)

(assert (=> b!609812 m!877333))

(assert (=> b!609812 m!876877))

(declare-fun m!877335 () Bool)

(assert (=> b!609813 m!877335))

(assert (=> b!609813 m!876841))

(assert (=> b!609813 m!877335))

(assert (=> b!609813 m!876841))

(declare-fun m!877337 () Bool)

(assert (=> b!609813 m!877337))

(assert (=> b!609814 m!876731))

(assert (=> b!609814 m!876695))

(assert (=> b!609316 d!214872))

(declare-fun d!214874 () Bool)

(assert (=> d!214874 (= (inv!7743 (tag!1479 (h!11490 rules!3103))) (= (mod (str.len (value!39550 (tag!1479 (h!11490 rules!3103)))) 2) 0))))

(assert (=> b!609338 d!214874))

(declare-fun d!214876 () Bool)

(declare-fun res!264727 () Bool)

(declare-fun e!369554 () Bool)

(assert (=> d!214876 (=> (not res!264727) (not e!369554))))

(assert (=> d!214876 (= res!264727 (semiInverseModEq!491 (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toValue!2124 (transformation!1217 (h!11490 rules!3103)))))))

(assert (=> d!214876 (= (inv!7746 (transformation!1217 (h!11490 rules!3103))) e!369554)))

(declare-fun b!609815 () Bool)

(assert (=> b!609815 (= e!369554 (equivClasses!474 (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toValue!2124 (transformation!1217 (h!11490 rules!3103)))))))

(assert (= (and d!214876 res!264727) b!609815))

(declare-fun m!877339 () Bool)

(assert (=> d!214876 m!877339))

(declare-fun m!877341 () Bool)

(assert (=> b!609815 m!877341))

(assert (=> b!609338 d!214876))

(declare-fun d!214878 () Bool)

(declare-fun lt!260574 () Int)

(assert (=> d!214878 (>= lt!260574 0)))

(declare-fun e!369555 () Int)

(assert (=> d!214878 (= lt!260574 e!369555)))

(declare-fun c!112837 () Bool)

(assert (=> d!214878 (= c!112837 ((_ is Nil!6087) (originalCharacters!1256 (_1!3745 (v!16474 lt!260393)))))))

(assert (=> d!214878 (= (size!4790 (originalCharacters!1256 (_1!3745 (v!16474 lt!260393)))) lt!260574)))

(declare-fun b!609816 () Bool)

(assert (=> b!609816 (= e!369555 0)))

(declare-fun b!609817 () Bool)

(assert (=> b!609817 (= e!369555 (+ 1 (size!4790 (t!80806 (originalCharacters!1256 (_1!3745 (v!16474 lt!260393)))))))))

(assert (= (and d!214878 c!112837) b!609816))

(assert (= (and d!214878 (not c!112837)) b!609817))

(declare-fun m!877343 () Bool)

(assert (=> b!609817 m!877343))

(assert (=> b!609315 d!214878))

(declare-fun b!609818 () Bool)

(declare-fun e!369558 () Bool)

(assert (=> b!609818 (= e!369558 (= (head!1290 input!2705) (c!112761 (regex!1217 (rule!2005 token!491)))))))

(declare-fun b!609819 () Bool)

(declare-fun e!369557 () Bool)

(assert (=> b!609819 (= e!369557 (matchR!654 (derivativeStep!333 (regex!1217 (rule!2005 token!491)) (head!1290 input!2705)) (tail!819 input!2705)))))

(declare-fun b!609820 () Bool)

(declare-fun e!369556 () Bool)

(assert (=> b!609820 (= e!369556 (not (= (head!1290 input!2705) (c!112761 (regex!1217 (rule!2005 token!491))))))))

(declare-fun b!609821 () Bool)

(declare-fun e!369562 () Bool)

(declare-fun e!369561 () Bool)

(assert (=> b!609821 (= e!369562 e!369561)))

(declare-fun c!112838 () Bool)

(assert (=> b!609821 (= c!112838 ((_ is EmptyLang!1551) (regex!1217 (rule!2005 token!491))))))

(declare-fun b!609822 () Bool)

(declare-fun res!264729 () Bool)

(assert (=> b!609822 (=> (not res!264729) (not e!369558))))

(declare-fun call!40840 () Bool)

(assert (=> b!609822 (= res!264729 (not call!40840))))

(declare-fun b!609823 () Bool)

(declare-fun res!264734 () Bool)

(declare-fun e!369560 () Bool)

(assert (=> b!609823 (=> res!264734 e!369560)))

(assert (=> b!609823 (= res!264734 e!369558)))

(declare-fun res!264728 () Bool)

(assert (=> b!609823 (=> (not res!264728) (not e!369558))))

(declare-fun lt!260575 () Bool)

(assert (=> b!609823 (= res!264728 lt!260575)))

(declare-fun b!609824 () Bool)

(declare-fun res!264731 () Bool)

(assert (=> b!609824 (=> (not res!264731) (not e!369558))))

(assert (=> b!609824 (= res!264731 (isEmpty!4395 (tail!819 input!2705)))))

(declare-fun d!214880 () Bool)

(assert (=> d!214880 e!369562))

(declare-fun c!112840 () Bool)

(assert (=> d!214880 (= c!112840 ((_ is EmptyExpr!1551) (regex!1217 (rule!2005 token!491))))))

(assert (=> d!214880 (= lt!260575 e!369557)))

(declare-fun c!112839 () Bool)

(assert (=> d!214880 (= c!112839 (isEmpty!4395 input!2705))))

(assert (=> d!214880 (validRegex!543 (regex!1217 (rule!2005 token!491)))))

(assert (=> d!214880 (= (matchR!654 (regex!1217 (rule!2005 token!491)) input!2705) lt!260575)))

(declare-fun b!609825 () Bool)

(declare-fun res!264732 () Bool)

(assert (=> b!609825 (=> res!264732 e!369560)))

(assert (=> b!609825 (= res!264732 (not ((_ is ElementMatch!1551) (regex!1217 (rule!2005 token!491)))))))

(assert (=> b!609825 (= e!369561 e!369560)))

(declare-fun b!609826 () Bool)

(declare-fun res!264735 () Bool)

(assert (=> b!609826 (=> res!264735 e!369556)))

(assert (=> b!609826 (= res!264735 (not (isEmpty!4395 (tail!819 input!2705))))))

(declare-fun bm!40835 () Bool)

(assert (=> bm!40835 (= call!40840 (isEmpty!4395 input!2705))))

(declare-fun b!609827 () Bool)

(declare-fun e!369559 () Bool)

(assert (=> b!609827 (= e!369559 e!369556)))

(declare-fun res!264733 () Bool)

(assert (=> b!609827 (=> res!264733 e!369556)))

(assert (=> b!609827 (= res!264733 call!40840)))

(declare-fun b!609828 () Bool)

(assert (=> b!609828 (= e!369560 e!369559)))

(declare-fun res!264730 () Bool)

(assert (=> b!609828 (=> (not res!264730) (not e!369559))))

(assert (=> b!609828 (= res!264730 (not lt!260575))))

(declare-fun b!609829 () Bool)

(assert (=> b!609829 (= e!369562 (= lt!260575 call!40840))))

(declare-fun b!609830 () Bool)

(assert (=> b!609830 (= e!369561 (not lt!260575))))

(declare-fun b!609831 () Bool)

(assert (=> b!609831 (= e!369557 (nullable!449 (regex!1217 (rule!2005 token!491))))))

(assert (= (and d!214880 c!112839) b!609831))

(assert (= (and d!214880 (not c!112839)) b!609819))

(assert (= (and d!214880 c!112840) b!609829))

(assert (= (and d!214880 (not c!112840)) b!609821))

(assert (= (and b!609821 c!112838) b!609830))

(assert (= (and b!609821 (not c!112838)) b!609825))

(assert (= (and b!609825 (not res!264732)) b!609823))

(assert (= (and b!609823 res!264728) b!609822))

(assert (= (and b!609822 res!264729) b!609824))

(assert (= (and b!609824 res!264731) b!609818))

(assert (= (and b!609823 (not res!264734)) b!609828))

(assert (= (and b!609828 res!264730) b!609827))

(assert (= (and b!609827 (not res!264733)) b!609826))

(assert (= (and b!609826 (not res!264735)) b!609820))

(assert (= (or b!609829 b!609827 b!609822) bm!40835))

(assert (=> b!609819 m!876877))

(assert (=> b!609819 m!876877))

(declare-fun m!877345 () Bool)

(assert (=> b!609819 m!877345))

(assert (=> b!609819 m!876841))

(assert (=> b!609819 m!877345))

(assert (=> b!609819 m!876841))

(declare-fun m!877347 () Bool)

(assert (=> b!609819 m!877347))

(assert (=> bm!40835 m!876759))

(assert (=> b!609824 m!876841))

(assert (=> b!609824 m!876841))

(declare-fun m!877349 () Bool)

(assert (=> b!609824 m!877349))

(declare-fun m!877351 () Bool)

(assert (=> b!609831 m!877351))

(assert (=> b!609826 m!876841))

(assert (=> b!609826 m!876841))

(assert (=> b!609826 m!877349))

(assert (=> b!609820 m!876877))

(assert (=> b!609818 m!876877))

(assert (=> d!214880 m!876759))

(declare-fun m!877353 () Bool)

(assert (=> d!214880 m!877353))

(assert (=> b!609324 d!214880))

(declare-fun d!214882 () Bool)

(declare-fun lt!260576 () List!6097)

(assert (=> d!214882 (= (++!1705 lt!260399 lt!260576) input!2705)))

(declare-fun e!369563 () List!6097)

(assert (=> d!214882 (= lt!260576 e!369563)))

(declare-fun c!112841 () Bool)

(assert (=> d!214882 (= c!112841 ((_ is Cons!6087) lt!260399))))

(assert (=> d!214882 (>= (size!4790 input!2705) (size!4790 lt!260399))))

(assert (=> d!214882 (= (getSuffix!362 input!2705 lt!260399) lt!260576)))

(declare-fun b!609832 () Bool)

(assert (=> b!609832 (= e!369563 (getSuffix!362 (tail!819 input!2705) (t!80806 lt!260399)))))

(declare-fun b!609833 () Bool)

(assert (=> b!609833 (= e!369563 input!2705)))

(assert (= (and d!214882 c!112841) b!609832))

(assert (= (and d!214882 (not c!112841)) b!609833))

(declare-fun m!877355 () Bool)

(assert (=> d!214882 m!877355))

(assert (=> d!214882 m!876731))

(assert (=> d!214882 m!876689))

(assert (=> b!609832 m!876841))

(assert (=> b!609832 m!876841))

(declare-fun m!877357 () Bool)

(assert (=> b!609832 m!877357))

(assert (=> b!609303 d!214882))

(declare-fun d!214884 () Bool)

(assert (=> d!214884 (= (size!4789 (_1!3745 (v!16474 lt!260393))) (size!4790 (originalCharacters!1256 (_1!3745 (v!16474 lt!260393)))))))

(declare-fun Unit!11130 () Unit!11124)

(assert (=> d!214884 (= (lemmaCharactersSize!276 (_1!3745 (v!16474 lt!260393))) Unit!11130)))

(declare-fun bs!71513 () Bool)

(assert (= bs!71513 d!214884))

(assert (=> bs!71513 m!876791))

(assert (=> b!609303 d!214884))

(declare-fun b!609835 () Bool)

(declare-fun res!264737 () Bool)

(declare-fun e!369566 () Bool)

(assert (=> b!609835 (=> (not res!264737) (not e!369566))))

(assert (=> b!609835 (= res!264737 (= (head!1290 input!2705) (head!1290 lt!260396)))))

(declare-fun b!609836 () Bool)

(assert (=> b!609836 (= e!369566 (isPrefix!845 (tail!819 input!2705) (tail!819 lt!260396)))))

(declare-fun d!214886 () Bool)

(declare-fun e!369565 () Bool)

(assert (=> d!214886 e!369565))

(declare-fun res!264739 () Bool)

(assert (=> d!214886 (=> res!264739 e!369565)))

(declare-fun lt!260577 () Bool)

(assert (=> d!214886 (= res!264739 (not lt!260577))))

(declare-fun e!369564 () Bool)

(assert (=> d!214886 (= lt!260577 e!369564)))

(declare-fun res!264738 () Bool)

(assert (=> d!214886 (=> res!264738 e!369564)))

(assert (=> d!214886 (= res!264738 ((_ is Nil!6087) input!2705))))

(assert (=> d!214886 (= (isPrefix!845 input!2705 lt!260396) lt!260577)))

(declare-fun b!609837 () Bool)

(assert (=> b!609837 (= e!369565 (>= (size!4790 lt!260396) (size!4790 input!2705)))))

(declare-fun b!609834 () Bool)

(assert (=> b!609834 (= e!369564 e!369566)))

(declare-fun res!264736 () Bool)

(assert (=> b!609834 (=> (not res!264736) (not e!369566))))

(assert (=> b!609834 (= res!264736 (not ((_ is Nil!6087) lt!260396)))))

(assert (= (and d!214886 (not res!264738)) b!609834))

(assert (= (and b!609834 res!264736) b!609835))

(assert (= (and b!609835 res!264737) b!609836))

(assert (= (and d!214886 (not res!264739)) b!609837))

(assert (=> b!609835 m!876877))

(declare-fun m!877359 () Bool)

(assert (=> b!609835 m!877359))

(assert (=> b!609836 m!876841))

(declare-fun m!877361 () Bool)

(assert (=> b!609836 m!877361))

(assert (=> b!609836 m!876841))

(assert (=> b!609836 m!877361))

(declare-fun m!877363 () Bool)

(assert (=> b!609836 m!877363))

(declare-fun m!877365 () Bool)

(assert (=> b!609837 m!877365))

(assert (=> b!609837 m!876731))

(assert (=> b!609303 d!214886))

(declare-fun b!609839 () Bool)

(declare-fun res!264741 () Bool)

(declare-fun e!369569 () Bool)

(assert (=> b!609839 (=> (not res!264741) (not e!369569))))

(assert (=> b!609839 (= res!264741 (= (head!1290 input!2705) (head!1290 lt!260397)))))

(declare-fun b!609840 () Bool)

(assert (=> b!609840 (= e!369569 (isPrefix!845 (tail!819 input!2705) (tail!819 lt!260397)))))

(declare-fun d!214888 () Bool)

(declare-fun e!369568 () Bool)

(assert (=> d!214888 e!369568))

(declare-fun res!264743 () Bool)

(assert (=> d!214888 (=> res!264743 e!369568)))

(declare-fun lt!260578 () Bool)

(assert (=> d!214888 (= res!264743 (not lt!260578))))

(declare-fun e!369567 () Bool)

(assert (=> d!214888 (= lt!260578 e!369567)))

(declare-fun res!264742 () Bool)

(assert (=> d!214888 (=> res!264742 e!369567)))

(assert (=> d!214888 (= res!264742 ((_ is Nil!6087) input!2705))))

(assert (=> d!214888 (= (isPrefix!845 input!2705 lt!260397) lt!260578)))

(declare-fun b!609841 () Bool)

(assert (=> b!609841 (= e!369568 (>= (size!4790 lt!260397) (size!4790 input!2705)))))

(declare-fun b!609838 () Bool)

(assert (=> b!609838 (= e!369567 e!369569)))

(declare-fun res!264740 () Bool)

(assert (=> b!609838 (=> (not res!264740) (not e!369569))))

(assert (=> b!609838 (= res!264740 (not ((_ is Nil!6087) lt!260397)))))

(assert (= (and d!214888 (not res!264742)) b!609838))

(assert (= (and b!609838 res!264740) b!609839))

(assert (= (and b!609839 res!264741) b!609840))

(assert (= (and d!214888 (not res!264743)) b!609841))

(assert (=> b!609839 m!876877))

(declare-fun m!877367 () Bool)

(assert (=> b!609839 m!877367))

(assert (=> b!609840 m!876841))

(declare-fun m!877369 () Bool)

(assert (=> b!609840 m!877369))

(assert (=> b!609840 m!876841))

(assert (=> b!609840 m!877369))

(declare-fun m!877371 () Bool)

(assert (=> b!609840 m!877371))

(declare-fun m!877373 () Bool)

(assert (=> b!609841 m!877373))

(assert (=> b!609841 m!876731))

(assert (=> b!609303 d!214888))

(declare-fun d!214890 () Bool)

(declare-fun e!369572 () Bool)

(assert (=> d!214890 e!369572))

(declare-fun res!264746 () Bool)

(assert (=> d!214890 (=> (not res!264746) (not e!369572))))

(assert (=> d!214890 (= res!264746 (semiInverseModEq!491 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))))))

(declare-fun Unit!11131 () Unit!11124)

(assert (=> d!214890 (= (lemmaInv!325 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) Unit!11131)))

(declare-fun b!609844 () Bool)

(assert (=> b!609844 (= e!369572 (equivClasses!474 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))))))

(assert (= (and d!214890 res!264746) b!609844))

(declare-fun m!877375 () Bool)

(assert (=> d!214890 m!877375))

(declare-fun m!877377 () Bool)

(assert (=> b!609844 m!877377))

(assert (=> b!609303 d!214890))

(declare-fun b!609847 () Bool)

(declare-fun res!264748 () Bool)

(declare-fun e!369573 () Bool)

(assert (=> b!609847 (=> (not res!264748) (not e!369573))))

(declare-fun lt!260579 () List!6097)

(assert (=> b!609847 (= res!264748 (= (size!4790 lt!260579) (+ (size!4790 lt!260399) (size!4790 (_2!3745 (v!16474 lt!260393))))))))

(declare-fun d!214892 () Bool)

(assert (=> d!214892 e!369573))

(declare-fun res!264747 () Bool)

(assert (=> d!214892 (=> (not res!264747) (not e!369573))))

(assert (=> d!214892 (= res!264747 (= (content!1113 lt!260579) ((_ map or) (content!1113 lt!260399) (content!1113 (_2!3745 (v!16474 lt!260393))))))))

(declare-fun e!369574 () List!6097)

(assert (=> d!214892 (= lt!260579 e!369574)))

(declare-fun c!112842 () Bool)

(assert (=> d!214892 (= c!112842 ((_ is Nil!6087) lt!260399))))

(assert (=> d!214892 (= (++!1705 lt!260399 (_2!3745 (v!16474 lt!260393))) lt!260579)))

(declare-fun b!609848 () Bool)

(assert (=> b!609848 (= e!369573 (or (not (= (_2!3745 (v!16474 lt!260393)) Nil!6087)) (= lt!260579 lt!260399)))))

(declare-fun b!609846 () Bool)

(assert (=> b!609846 (= e!369574 (Cons!6087 (h!11488 lt!260399) (++!1705 (t!80806 lt!260399) (_2!3745 (v!16474 lt!260393)))))))

(declare-fun b!609845 () Bool)

(assert (=> b!609845 (= e!369574 (_2!3745 (v!16474 lt!260393)))))

(assert (= (and d!214892 c!112842) b!609845))

(assert (= (and d!214892 (not c!112842)) b!609846))

(assert (= (and d!214892 res!264747) b!609847))

(assert (= (and b!609847 res!264748) b!609848))

(declare-fun m!877379 () Bool)

(assert (=> b!609847 m!877379))

(assert (=> b!609847 m!876689))

(declare-fun m!877381 () Bool)

(assert (=> b!609847 m!877381))

(declare-fun m!877383 () Bool)

(assert (=> d!214892 m!877383))

(assert (=> d!214892 m!876799))

(declare-fun m!877385 () Bool)

(assert (=> d!214892 m!877385))

(declare-fun m!877387 () Bool)

(assert (=> b!609846 m!877387))

(assert (=> b!609303 d!214892))

(declare-fun b!609850 () Bool)

(declare-fun res!264750 () Bool)

(declare-fun e!369577 () Bool)

(assert (=> b!609850 (=> (not res!264750) (not e!369577))))

(assert (=> b!609850 (= res!264750 (= (head!1290 input!2705) (head!1290 input!2705)))))

(declare-fun b!609851 () Bool)

(assert (=> b!609851 (= e!369577 (isPrefix!845 (tail!819 input!2705) (tail!819 input!2705)))))

(declare-fun d!214894 () Bool)

(declare-fun e!369576 () Bool)

(assert (=> d!214894 e!369576))

(declare-fun res!264752 () Bool)

(assert (=> d!214894 (=> res!264752 e!369576)))

(declare-fun lt!260580 () Bool)

(assert (=> d!214894 (= res!264752 (not lt!260580))))

(declare-fun e!369575 () Bool)

(assert (=> d!214894 (= lt!260580 e!369575)))

(declare-fun res!264751 () Bool)

(assert (=> d!214894 (=> res!264751 e!369575)))

(assert (=> d!214894 (= res!264751 ((_ is Nil!6087) input!2705))))

(assert (=> d!214894 (= (isPrefix!845 input!2705 input!2705) lt!260580)))

(declare-fun b!609852 () Bool)

(assert (=> b!609852 (= e!369576 (>= (size!4790 input!2705) (size!4790 input!2705)))))

(declare-fun b!609849 () Bool)

(assert (=> b!609849 (= e!369575 e!369577)))

(declare-fun res!264749 () Bool)

(assert (=> b!609849 (=> (not res!264749) (not e!369577))))

(assert (=> b!609849 (= res!264749 (not ((_ is Nil!6087) input!2705)))))

(assert (= (and d!214894 (not res!264751)) b!609849))

(assert (= (and b!609849 res!264749) b!609850))

(assert (= (and b!609850 res!264750) b!609851))

(assert (= (and d!214894 (not res!264752)) b!609852))

(assert (=> b!609850 m!876877))

(assert (=> b!609850 m!876877))

(assert (=> b!609851 m!876841))

(assert (=> b!609851 m!876841))

(assert (=> b!609851 m!876841))

(assert (=> b!609851 m!876841))

(declare-fun m!877389 () Bool)

(assert (=> b!609851 m!877389))

(assert (=> b!609852 m!876731))

(assert (=> b!609852 m!876731))

(assert (=> b!609303 d!214894))

(declare-fun d!214896 () Bool)

(declare-fun lt!260581 () Int)

(assert (=> d!214896 (>= lt!260581 0)))

(declare-fun e!369578 () Int)

(assert (=> d!214896 (= lt!260581 e!369578)))

(declare-fun c!112843 () Bool)

(assert (=> d!214896 (= c!112843 ((_ is Nil!6087) lt!260407))))

(assert (=> d!214896 (= (size!4790 lt!260407) lt!260581)))

(declare-fun b!609853 () Bool)

(assert (=> b!609853 (= e!369578 0)))

(declare-fun b!609854 () Bool)

(assert (=> b!609854 (= e!369578 (+ 1 (size!4790 (t!80806 lt!260407))))))

(assert (= (and d!214896 c!112843) b!609853))

(assert (= (and d!214896 (not c!112843)) b!609854))

(declare-fun m!877391 () Bool)

(assert (=> b!609854 m!877391))

(assert (=> b!609303 d!214896))

(declare-fun d!214898 () Bool)

(assert (=> d!214898 (isPrefix!845 input!2705 input!2705)))

(declare-fun lt!260584 () Unit!11124)

(declare-fun choose!4483 (List!6097 List!6097) Unit!11124)

(assert (=> d!214898 (= lt!260584 (choose!4483 input!2705 input!2705))))

(assert (=> d!214898 (= (lemmaIsPrefixRefl!581 input!2705 input!2705) lt!260584)))

(declare-fun bs!71514 () Bool)

(assert (= bs!71514 d!214898))

(assert (=> bs!71514 m!876719))

(declare-fun m!877393 () Bool)

(assert (=> bs!71514 m!877393))

(assert (=> b!609303 d!214898))

(declare-fun d!214900 () Bool)

(assert (=> d!214900 (= (list!2562 (charsOf!846 (_1!3745 (v!16474 lt!260393)))) (list!2563 (c!112762 (charsOf!846 (_1!3745 (v!16474 lt!260393))))))))

(declare-fun bs!71515 () Bool)

(assert (= bs!71515 d!214900))

(declare-fun m!877395 () Bool)

(assert (=> bs!71515 m!877395))

(assert (=> b!609303 d!214900))

(declare-fun d!214902 () Bool)

(assert (=> d!214902 (ruleValid!415 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))))))

(declare-fun lt!260587 () Unit!11124)

(declare-fun choose!4484 (LexerInterface!1103 Rule!2234 List!6099) Unit!11124)

(assert (=> d!214902 (= lt!260587 (choose!4484 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))) rules!3103))))

(assert (=> d!214902 (contains!1433 rules!3103 (rule!2005 (_1!3745 (v!16474 lt!260393))))))

(assert (=> d!214902 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!262 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))) rules!3103) lt!260587)))

(declare-fun bs!71516 () Bool)

(assert (= bs!71516 d!214902))

(assert (=> bs!71516 m!876707))

(declare-fun m!877397 () Bool)

(assert (=> bs!71516 m!877397))

(assert (=> bs!71516 m!876729))

(assert (=> b!609303 d!214902))

(declare-fun d!214904 () Bool)

(assert (=> d!214904 (isPrefix!845 lt!260407 (++!1705 lt!260407 suffix!1342))))

(declare-fun lt!260590 () Unit!11124)

(declare-fun choose!4485 (List!6097 List!6097) Unit!11124)

(assert (=> d!214904 (= lt!260590 (choose!4485 lt!260407 suffix!1342))))

(assert (=> d!214904 (= (lemmaConcatTwoListThenFirstIsPrefix!690 lt!260407 suffix!1342) lt!260590)))

(declare-fun bs!71517 () Bool)

(assert (= bs!71517 d!214904))

(assert (=> bs!71517 m!876787))

(assert (=> bs!71517 m!876787))

(declare-fun m!877399 () Bool)

(assert (=> bs!71517 m!877399))

(declare-fun m!877401 () Bool)

(assert (=> bs!71517 m!877401))

(assert (=> b!609303 d!214904))

(declare-fun d!214906 () Bool)

(declare-fun res!264757 () Bool)

(declare-fun e!369581 () Bool)

(assert (=> d!214906 (=> (not res!264757) (not e!369581))))

(assert (=> d!214906 (= res!264757 (validRegex!543 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))))))

(assert (=> d!214906 (= (ruleValid!415 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393)))) e!369581)))

(declare-fun b!609859 () Bool)

(declare-fun res!264758 () Bool)

(assert (=> b!609859 (=> (not res!264758) (not e!369581))))

(assert (=> b!609859 (= res!264758 (not (nullable!449 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))))))

(declare-fun b!609860 () Bool)

(assert (=> b!609860 (= e!369581 (not (= (tag!1479 (rule!2005 (_1!3745 (v!16474 lt!260393)))) (String!7950 ""))))))

(assert (= (and d!214906 res!264757) b!609859))

(assert (= (and b!609859 res!264758) b!609860))

(assert (=> d!214906 m!876837))

(assert (=> b!609859 m!876835))

(assert (=> b!609303 d!214906))

(declare-fun d!214908 () Bool)

(assert (=> d!214908 (isPrefix!845 lt!260399 (++!1705 lt!260399 (_2!3745 (v!16474 lt!260393))))))

(declare-fun lt!260591 () Unit!11124)

(assert (=> d!214908 (= lt!260591 (choose!4485 lt!260399 (_2!3745 (v!16474 lt!260393))))))

(assert (=> d!214908 (= (lemmaConcatTwoListThenFirstIsPrefix!690 lt!260399 (_2!3745 (v!16474 lt!260393))) lt!260591)))

(declare-fun bs!71518 () Bool)

(assert (= bs!71518 d!214908))

(assert (=> bs!71518 m!876717))

(assert (=> bs!71518 m!876717))

(declare-fun m!877403 () Bool)

(assert (=> bs!71518 m!877403))

(declare-fun m!877405 () Bool)

(assert (=> bs!71518 m!877405))

(assert (=> b!609303 d!214908))

(declare-fun d!214910 () Bool)

(assert (=> d!214910 (= (_2!3745 (v!16474 lt!260393)) lt!260405)))

(declare-fun lt!260594 () Unit!11124)

(declare-fun choose!4486 (List!6097 List!6097 List!6097 List!6097 List!6097) Unit!11124)

(assert (=> d!214910 (= lt!260594 (choose!4486 lt!260399 (_2!3745 (v!16474 lt!260393)) lt!260399 lt!260405 input!2705))))

(assert (=> d!214910 (isPrefix!845 lt!260399 input!2705)))

(assert (=> d!214910 (= (lemmaSamePrefixThenSameSuffix!558 lt!260399 (_2!3745 (v!16474 lt!260393)) lt!260399 lt!260405 input!2705) lt!260594)))

(declare-fun bs!71519 () Bool)

(assert (= bs!71519 d!214910))

(declare-fun m!877407 () Bool)

(assert (=> bs!71519 m!877407))

(assert (=> bs!71519 m!876669))

(assert (=> b!609303 d!214910))

(declare-fun b!609862 () Bool)

(declare-fun res!264760 () Bool)

(declare-fun e!369584 () Bool)

(assert (=> b!609862 (=> (not res!264760) (not e!369584))))

(assert (=> b!609862 (= res!264760 (= (head!1290 lt!260407) (head!1290 lt!260397)))))

(declare-fun b!609863 () Bool)

(assert (=> b!609863 (= e!369584 (isPrefix!845 (tail!819 lt!260407) (tail!819 lt!260397)))))

(declare-fun d!214912 () Bool)

(declare-fun e!369583 () Bool)

(assert (=> d!214912 e!369583))

(declare-fun res!264762 () Bool)

(assert (=> d!214912 (=> res!264762 e!369583)))

(declare-fun lt!260595 () Bool)

(assert (=> d!214912 (= res!264762 (not lt!260595))))

(declare-fun e!369582 () Bool)

(assert (=> d!214912 (= lt!260595 e!369582)))

(declare-fun res!264761 () Bool)

(assert (=> d!214912 (=> res!264761 e!369582)))

(assert (=> d!214912 (= res!264761 ((_ is Nil!6087) lt!260407))))

(assert (=> d!214912 (= (isPrefix!845 lt!260407 lt!260397) lt!260595)))

(declare-fun b!609864 () Bool)

(assert (=> b!609864 (= e!369583 (>= (size!4790 lt!260397) (size!4790 lt!260407)))))

(declare-fun b!609861 () Bool)

(assert (=> b!609861 (= e!369582 e!369584)))

(declare-fun res!264759 () Bool)

(assert (=> b!609861 (=> (not res!264759) (not e!369584))))

(assert (=> b!609861 (= res!264759 (not ((_ is Nil!6087) lt!260397)))))

(assert (= (and d!214912 (not res!264761)) b!609861))

(assert (= (and b!609861 res!264759) b!609862))

(assert (= (and b!609862 res!264760) b!609863))

(assert (= (and d!214912 (not res!264762)) b!609864))

(assert (=> b!609862 m!877333))

(assert (=> b!609862 m!877367))

(assert (=> b!609863 m!877335))

(assert (=> b!609863 m!877369))

(assert (=> b!609863 m!877335))

(assert (=> b!609863 m!877369))

(declare-fun m!877409 () Bool)

(assert (=> b!609863 m!877409))

(assert (=> b!609864 m!877373))

(assert (=> b!609864 m!876695))

(assert (=> b!609303 d!214912))

(declare-fun d!214914 () Bool)

(declare-fun fromListB!618 (List!6097) BalanceConc!3876)

(assert (=> d!214914 (= (seqFromList!1393 lt!260399) (fromListB!618 lt!260399))))

(declare-fun bs!71520 () Bool)

(assert (= bs!71520 d!214914))

(declare-fun m!877411 () Bool)

(assert (=> bs!71520 m!877411))

(assert (=> b!609303 d!214914))

(declare-fun d!214916 () Bool)

(assert (=> d!214916 (ruleValid!415 thiss!22590 (rule!2005 token!491))))

(declare-fun lt!260596 () Unit!11124)

(assert (=> d!214916 (= lt!260596 (choose!4484 thiss!22590 (rule!2005 token!491) rules!3103))))

(assert (=> d!214916 (contains!1433 rules!3103 (rule!2005 token!491))))

(assert (=> d!214916 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!262 thiss!22590 (rule!2005 token!491) rules!3103) lt!260596)))

(declare-fun bs!71521 () Bool)

(assert (= bs!71521 d!214916))

(assert (=> bs!71521 m!876675))

(declare-fun m!877413 () Bool)

(assert (=> bs!71521 m!877413))

(assert (=> bs!71521 m!876737))

(assert (=> b!609303 d!214916))

(declare-fun d!214918 () Bool)

(declare-fun lt!260597 () Int)

(assert (=> d!214918 (>= lt!260597 0)))

(declare-fun e!369585 () Int)

(assert (=> d!214918 (= lt!260597 e!369585)))

(declare-fun c!112844 () Bool)

(assert (=> d!214918 (= c!112844 ((_ is Nil!6087) lt!260399))))

(assert (=> d!214918 (= (size!4790 lt!260399) lt!260597)))

(declare-fun b!609865 () Bool)

(assert (=> b!609865 (= e!369585 0)))

(declare-fun b!609866 () Bool)

(assert (=> b!609866 (= e!369585 (+ 1 (size!4790 (t!80806 lt!260399))))))

(assert (= (and d!214918 c!112844) b!609865))

(assert (= (and d!214918 (not c!112844)) b!609866))

(declare-fun m!877415 () Bool)

(assert (=> b!609866 m!877415))

(assert (=> b!609303 d!214918))

(declare-fun d!214920 () Bool)

(assert (=> d!214920 (isPrefix!845 input!2705 (++!1705 input!2705 suffix!1342))))

(declare-fun lt!260598 () Unit!11124)

(assert (=> d!214920 (= lt!260598 (choose!4485 input!2705 suffix!1342))))

(assert (=> d!214920 (= (lemmaConcatTwoListThenFirstIsPrefix!690 input!2705 suffix!1342) lt!260598)))

(declare-fun bs!71522 () Bool)

(assert (= bs!71522 d!214920))

(assert (=> bs!71522 m!876663))

(assert (=> bs!71522 m!876663))

(declare-fun m!877417 () Bool)

(assert (=> bs!71522 m!877417))

(declare-fun m!877419 () Bool)

(assert (=> bs!71522 m!877419))

(assert (=> b!609303 d!214920))

(declare-fun d!214922 () Bool)

(assert (=> d!214922 (and (= lt!260407 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!260601 () Unit!11124)

(declare-fun choose!4487 (List!6097 List!6097 List!6097 List!6097) Unit!11124)

(assert (=> d!214922 (= lt!260601 (choose!4487 lt!260407 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!214922 (= (++!1705 lt!260407 suffix!1342) (++!1705 input!2705 suffix!1342))))

(assert (=> d!214922 (= (lemmaConcatSameAndSameSizesThenSameLists!290 lt!260407 suffix!1342 input!2705 suffix!1342) lt!260601)))

(declare-fun bs!71523 () Bool)

(assert (= bs!71523 d!214922))

(declare-fun m!877421 () Bool)

(assert (=> bs!71523 m!877421))

(assert (=> bs!71523 m!876787))

(assert (=> bs!71523 m!876663))

(assert (=> b!609303 d!214922))

(declare-fun d!214924 () Bool)

(assert (=> d!214924 (= (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260401) (dynLambda!3546 (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) lt!260401))))

(declare-fun b_lambda!24193 () Bool)

(assert (=> (not b_lambda!24193) (not d!214924)))

(assert (=> d!214924 t!80858))

(declare-fun b_and!60391 () Bool)

(assert (= b_and!60387 (and (=> t!80858 result!59998) b_and!60391)))

(assert (=> d!214924 t!80860))

(declare-fun b_and!60393 () Bool)

(assert (= b_and!60389 (and (=> t!80860 result!60002) b_and!60393)))

(assert (=> d!214924 m!877323))

(assert (=> b!609303 d!214924))

(declare-fun d!214926 () Bool)

(declare-fun res!264763 () Bool)

(declare-fun e!369586 () Bool)

(assert (=> d!214926 (=> (not res!264763) (not e!369586))))

(assert (=> d!214926 (= res!264763 (validRegex!543 (regex!1217 (rule!2005 token!491))))))

(assert (=> d!214926 (= (ruleValid!415 thiss!22590 (rule!2005 token!491)) e!369586)))

(declare-fun b!609867 () Bool)

(declare-fun res!264764 () Bool)

(assert (=> b!609867 (=> (not res!264764) (not e!369586))))

(assert (=> b!609867 (= res!264764 (not (nullable!449 (regex!1217 (rule!2005 token!491)))))))

(declare-fun b!609868 () Bool)

(assert (=> b!609868 (= e!369586 (not (= (tag!1479 (rule!2005 token!491)) (String!7950 ""))))))

(assert (= (and d!214926 res!264763) b!609867))

(assert (= (and b!609867 res!264764) b!609868))

(assert (=> d!214926 m!877353))

(assert (=> b!609867 m!877351))

(assert (=> b!609303 d!214926))

(declare-fun d!214928 () Bool)

(declare-fun lt!260602 () BalanceConc!3876)

(assert (=> d!214928 (= (list!2562 lt!260602) (originalCharacters!1256 (_1!3745 (v!16474 lt!260393))))))

(assert (=> d!214928 (= lt!260602 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (value!39551 (_1!3745 (v!16474 lt!260393)))))))

(assert (=> d!214928 (= (charsOf!846 (_1!3745 (v!16474 lt!260393))) lt!260602)))

(declare-fun b_lambda!24195 () Bool)

(assert (=> (not b_lambda!24195) (not d!214928)))

(declare-fun t!80862 () Bool)

(declare-fun tb!53291 () Bool)

(assert (=> (and b!609335 (= (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80862) tb!53291))

(declare-fun b!609869 () Bool)

(declare-fun e!369587 () Bool)

(declare-fun tp!188927 () Bool)

(assert (=> b!609869 (= e!369587 (and (inv!7750 (c!112762 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (value!39551 (_1!3745 (v!16474 lt!260393)))))) tp!188927))))

(declare-fun result!60004 () Bool)

(assert (=> tb!53291 (= result!60004 (and (inv!7751 (dynLambda!3542 (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393))))) (value!39551 (_1!3745 (v!16474 lt!260393))))) e!369587))))

(assert (= tb!53291 b!609869))

(declare-fun m!877423 () Bool)

(assert (=> b!609869 m!877423))

(declare-fun m!877425 () Bool)

(assert (=> tb!53291 m!877425))

(assert (=> d!214928 t!80862))

(declare-fun b_and!60395 () Bool)

(assert (= b_and!60383 (and (=> t!80862 result!60004) b_and!60395)))

(declare-fun tb!53293 () Bool)

(declare-fun t!80864 () Bool)

(assert (=> (and b!609336 (= (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80864) tb!53293))

(declare-fun result!60006 () Bool)

(assert (= result!60006 result!60004))

(assert (=> d!214928 t!80864))

(declare-fun b_and!60397 () Bool)

(assert (= b_and!60385 (and (=> t!80864 result!60006) b_and!60397)))

(declare-fun m!877427 () Bool)

(assert (=> d!214928 m!877427))

(declare-fun m!877429 () Bool)

(assert (=> d!214928 m!877429))

(assert (=> b!609303 d!214928))

(declare-fun d!214930 () Bool)

(declare-fun e!369588 () Bool)

(assert (=> d!214930 e!369588))

(declare-fun res!264765 () Bool)

(assert (=> d!214930 (=> (not res!264765) (not e!369588))))

(assert (=> d!214930 (= res!264765 (semiInverseModEq!491 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toValue!2124 (transformation!1217 (rule!2005 token!491)))))))

(declare-fun Unit!11134 () Unit!11124)

(assert (=> d!214930 (= (lemmaInv!325 (transformation!1217 (rule!2005 token!491))) Unit!11134)))

(declare-fun b!609870 () Bool)

(assert (=> b!609870 (= e!369588 (equivClasses!474 (toChars!1983 (transformation!1217 (rule!2005 token!491))) (toValue!2124 (transformation!1217 (rule!2005 token!491)))))))

(assert (= (and d!214930 res!264765) b!609870))

(assert (=> d!214930 m!876855))

(assert (=> b!609870 m!876857))

(assert (=> b!609303 d!214930))

(declare-fun d!214932 () Bool)

(assert (=> d!214932 (= (size!4789 token!491) (size!4790 (originalCharacters!1256 token!491)))))

(declare-fun Unit!11135 () Unit!11124)

(assert (=> d!214932 (= (lemmaCharactersSize!276 token!491) Unit!11135)))

(declare-fun bs!71524 () Bool)

(assert (= bs!71524 d!214932))

(assert (=> bs!71524 m!876667))

(assert (=> b!609303 d!214932))

(declare-fun b!609872 () Bool)

(declare-fun res!264767 () Bool)

(declare-fun e!369591 () Bool)

(assert (=> b!609872 (=> (not res!264767) (not e!369591))))

(assert (=> b!609872 (= res!264767 (= (head!1290 lt!260399) (head!1290 lt!260421)))))

(declare-fun b!609873 () Bool)

(assert (=> b!609873 (= e!369591 (isPrefix!845 (tail!819 lt!260399) (tail!819 lt!260421)))))

(declare-fun d!214934 () Bool)

(declare-fun e!369590 () Bool)

(assert (=> d!214934 e!369590))

(declare-fun res!264769 () Bool)

(assert (=> d!214934 (=> res!264769 e!369590)))

(declare-fun lt!260603 () Bool)

(assert (=> d!214934 (= res!264769 (not lt!260603))))

(declare-fun e!369589 () Bool)

(assert (=> d!214934 (= lt!260603 e!369589)))

(declare-fun res!264768 () Bool)

(assert (=> d!214934 (=> res!264768 e!369589)))

(assert (=> d!214934 (= res!264768 ((_ is Nil!6087) lt!260399))))

(assert (=> d!214934 (= (isPrefix!845 lt!260399 lt!260421) lt!260603)))

(declare-fun b!609874 () Bool)

(assert (=> b!609874 (= e!369590 (>= (size!4790 lt!260421) (size!4790 lt!260399)))))

(declare-fun b!609871 () Bool)

(assert (=> b!609871 (= e!369589 e!369591)))

(declare-fun res!264766 () Bool)

(assert (=> b!609871 (=> (not res!264766) (not e!369591))))

(assert (=> b!609871 (= res!264766 (not ((_ is Nil!6087) lt!260421)))))

(assert (= (and d!214934 (not res!264768)) b!609871))

(assert (= (and b!609871 res!264766) b!609872))

(assert (= (and b!609872 res!264767) b!609873))

(assert (= (and d!214934 (not res!264769)) b!609874))

(assert (=> b!609872 m!876823))

(declare-fun m!877431 () Bool)

(assert (=> b!609872 m!877431))

(assert (=> b!609873 m!876827))

(declare-fun m!877433 () Bool)

(assert (=> b!609873 m!877433))

(assert (=> b!609873 m!876827))

(assert (=> b!609873 m!877433))

(declare-fun m!877435 () Bool)

(assert (=> b!609873 m!877435))

(declare-fun m!877437 () Bool)

(assert (=> b!609874 m!877437))

(assert (=> b!609874 m!876689))

(assert (=> b!609303 d!214934))

(declare-fun d!214936 () Bool)

(assert (=> d!214936 (= (get!2340 lt!260392) (v!16474 lt!260392))))

(assert (=> b!609301 d!214936))

(declare-fun d!214938 () Bool)

(assert (=> d!214938 (= (seqFromList!1393 lt!260407) (fromListB!618 lt!260407))))

(declare-fun bs!71525 () Bool)

(assert (= bs!71525 d!214938))

(declare-fun m!877439 () Bool)

(assert (=> bs!71525 m!877439))

(assert (=> b!609323 d!214938))

(declare-fun b!609893 () Bool)

(declare-fun e!369601 () Option!1568)

(assert (=> b!609893 (= e!369601 None!1567)))

(declare-fun b!609894 () Bool)

(declare-fun e!369602 () Bool)

(declare-datatypes ((tuple2!6966 0))(
  ( (tuple2!6967 (_1!3747 List!6097) (_2!3747 List!6097)) )
))
(declare-fun findLongestMatchInner!208 (Regex!1551 List!6097 Int List!6097 List!6097 Int) tuple2!6966)

(assert (=> b!609894 (= e!369602 (matchR!654 (regex!1217 (rule!2005 token!491)) (_1!3747 (findLongestMatchInner!208 (regex!1217 (rule!2005 token!491)) Nil!6087 (size!4790 Nil!6087) lt!260396 lt!260396 (size!4790 lt!260396)))))))

(declare-fun d!214940 () Bool)

(declare-fun e!369603 () Bool)

(assert (=> d!214940 e!369603))

(declare-fun res!264789 () Bool)

(assert (=> d!214940 (=> res!264789 e!369603)))

(declare-fun lt!260614 () Option!1568)

(assert (=> d!214940 (= res!264789 (isEmpty!4398 lt!260614))))

(assert (=> d!214940 (= lt!260614 e!369601)))

(declare-fun c!112847 () Bool)

(declare-fun lt!260618 () tuple2!6966)

(assert (=> d!214940 (= c!112847 (isEmpty!4395 (_1!3747 lt!260618)))))

(declare-fun findLongestMatch!187 (Regex!1551 List!6097) tuple2!6966)

(assert (=> d!214940 (= lt!260618 (findLongestMatch!187 (regex!1217 (rule!2005 token!491)) lt!260396))))

(assert (=> d!214940 (ruleValid!415 thiss!22590 (rule!2005 token!491))))

(assert (=> d!214940 (= (maxPrefixOneRule!464 thiss!22590 (rule!2005 token!491) lt!260396) lt!260614)))

(declare-fun b!609895 () Bool)

(declare-fun e!369600 () Bool)

(assert (=> b!609895 (= e!369603 e!369600)))

(declare-fun res!264790 () Bool)

(assert (=> b!609895 (=> (not res!264790) (not e!369600))))

(assert (=> b!609895 (= res!264790 (matchR!654 (regex!1217 (rule!2005 token!491)) (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260614))))))))

(declare-fun b!609896 () Bool)

(declare-fun res!264784 () Bool)

(assert (=> b!609896 (=> (not res!264784) (not e!369600))))

(assert (=> b!609896 (= res!264784 (< (size!4790 (_2!3745 (get!2340 lt!260614))) (size!4790 lt!260396)))))

(declare-fun b!609897 () Bool)

(declare-fun res!264788 () Bool)

(assert (=> b!609897 (=> (not res!264788) (not e!369600))))

(assert (=> b!609897 (= res!264788 (= (rule!2005 (_1!3745 (get!2340 lt!260614))) (rule!2005 token!491)))))

(declare-fun b!609898 () Bool)

(declare-fun size!4792 (BalanceConc!3876) Int)

(assert (=> b!609898 (= e!369601 (Some!1567 (tuple2!6963 (Token!2171 (apply!1470 (transformation!1217 (rule!2005 token!491)) (seqFromList!1393 (_1!3747 lt!260618))) (rule!2005 token!491) (size!4792 (seqFromList!1393 (_1!3747 lt!260618))) (_1!3747 lt!260618)) (_2!3747 lt!260618))))))

(declare-fun lt!260617 () Unit!11124)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!192 (Regex!1551 List!6097) Unit!11124)

(assert (=> b!609898 (= lt!260617 (longestMatchIsAcceptedByMatchOrIsEmpty!192 (regex!1217 (rule!2005 token!491)) lt!260396))))

(declare-fun res!264785 () Bool)

(assert (=> b!609898 (= res!264785 (isEmpty!4395 (_1!3747 (findLongestMatchInner!208 (regex!1217 (rule!2005 token!491)) Nil!6087 (size!4790 Nil!6087) lt!260396 lt!260396 (size!4790 lt!260396)))))))

(assert (=> b!609898 (=> res!264785 e!369602)))

(assert (=> b!609898 e!369602))

(declare-fun lt!260616 () Unit!11124)

(assert (=> b!609898 (= lt!260616 lt!260617)))

(declare-fun lt!260615 () Unit!11124)

(assert (=> b!609898 (= lt!260615 (lemmaSemiInverse!247 (transformation!1217 (rule!2005 token!491)) (seqFromList!1393 (_1!3747 lt!260618))))))

(declare-fun b!609899 () Bool)

(declare-fun res!264787 () Bool)

(assert (=> b!609899 (=> (not res!264787) (not e!369600))))

(assert (=> b!609899 (= res!264787 (= (value!39551 (_1!3745 (get!2340 lt!260614))) (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (get!2340 lt!260614)))) (seqFromList!1393 (originalCharacters!1256 (_1!3745 (get!2340 lt!260614)))))))))

(declare-fun b!609900 () Bool)

(declare-fun res!264786 () Bool)

(assert (=> b!609900 (=> (not res!264786) (not e!369600))))

(assert (=> b!609900 (= res!264786 (= (++!1705 (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260614)))) (_2!3745 (get!2340 lt!260614))) lt!260396))))

(declare-fun b!609901 () Bool)

(assert (=> b!609901 (= e!369600 (= (size!4789 (_1!3745 (get!2340 lt!260614))) (size!4790 (originalCharacters!1256 (_1!3745 (get!2340 lt!260614))))))))

(assert (= (and d!214940 c!112847) b!609893))

(assert (= (and d!214940 (not c!112847)) b!609898))

(assert (= (and b!609898 (not res!264785)) b!609894))

(assert (= (and d!214940 (not res!264789)) b!609895))

(assert (= (and b!609895 res!264790) b!609900))

(assert (= (and b!609900 res!264786) b!609896))

(assert (= (and b!609896 res!264784) b!609897))

(assert (= (and b!609897 res!264788) b!609899))

(assert (= (and b!609899 res!264787) b!609901))

(declare-fun m!877441 () Bool)

(assert (=> b!609894 m!877441))

(assert (=> b!609894 m!877365))

(assert (=> b!609894 m!877441))

(assert (=> b!609894 m!877365))

(declare-fun m!877443 () Bool)

(assert (=> b!609894 m!877443))

(declare-fun m!877445 () Bool)

(assert (=> b!609894 m!877445))

(declare-fun m!877447 () Bool)

(assert (=> b!609900 m!877447))

(declare-fun m!877449 () Bool)

(assert (=> b!609900 m!877449))

(assert (=> b!609900 m!877449))

(declare-fun m!877451 () Bool)

(assert (=> b!609900 m!877451))

(assert (=> b!609900 m!877451))

(declare-fun m!877453 () Bool)

(assert (=> b!609900 m!877453))

(assert (=> b!609896 m!877447))

(declare-fun m!877455 () Bool)

(assert (=> b!609896 m!877455))

(assert (=> b!609896 m!877365))

(assert (=> b!609901 m!877447))

(declare-fun m!877457 () Bool)

(assert (=> b!609901 m!877457))

(assert (=> b!609897 m!877447))

(assert (=> b!609895 m!877447))

(assert (=> b!609895 m!877449))

(assert (=> b!609895 m!877449))

(assert (=> b!609895 m!877451))

(assert (=> b!609895 m!877451))

(declare-fun m!877459 () Bool)

(assert (=> b!609895 m!877459))

(assert (=> b!609899 m!877447))

(declare-fun m!877461 () Bool)

(assert (=> b!609899 m!877461))

(assert (=> b!609899 m!877461))

(declare-fun m!877463 () Bool)

(assert (=> b!609899 m!877463))

(declare-fun m!877465 () Bool)

(assert (=> d!214940 m!877465))

(declare-fun m!877467 () Bool)

(assert (=> d!214940 m!877467))

(declare-fun m!877469 () Bool)

(assert (=> d!214940 m!877469))

(assert (=> d!214940 m!876675))

(declare-fun m!877471 () Bool)

(assert (=> b!609898 m!877471))

(declare-fun m!877473 () Bool)

(assert (=> b!609898 m!877473))

(assert (=> b!609898 m!877471))

(assert (=> b!609898 m!877471))

(declare-fun m!877475 () Bool)

(assert (=> b!609898 m!877475))

(assert (=> b!609898 m!877441))

(assert (=> b!609898 m!877365))

(assert (=> b!609898 m!877443))

(declare-fun m!877477 () Bool)

(assert (=> b!609898 m!877477))

(declare-fun m!877479 () Bool)

(assert (=> b!609898 m!877479))

(assert (=> b!609898 m!877441))

(assert (=> b!609898 m!877365))

(assert (=> b!609898 m!877471))

(declare-fun m!877481 () Bool)

(assert (=> b!609898 m!877481))

(assert (=> b!609323 d!214940))

(declare-fun d!214942 () Bool)

(assert (=> d!214942 (= (maxPrefixOneRule!464 thiss!22590 (rule!2005 token!491) lt!260396) (Some!1567 (tuple2!6963 (Token!2171 (apply!1470 (transformation!1217 (rule!2005 token!491)) (seqFromList!1393 lt!260407)) (rule!2005 token!491) (size!4790 lt!260407) lt!260407) suffix!1342)))))

(declare-fun lt!260621 () Unit!11124)

(declare-fun choose!4488 (LexerInterface!1103 List!6099 List!6097 List!6097 List!6097 Rule!2234) Unit!11124)

(assert (=> d!214942 (= lt!260621 (choose!4488 thiss!22590 rules!3103 lt!260407 lt!260396 suffix!1342 (rule!2005 token!491)))))

(assert (=> d!214942 (not (isEmpty!4396 rules!3103))))

(assert (=> d!214942 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!170 thiss!22590 rules!3103 lt!260407 lt!260396 suffix!1342 (rule!2005 token!491)) lt!260621)))

(declare-fun bs!71526 () Bool)

(assert (= bs!71526 d!214942))

(assert (=> bs!71526 m!876771))

(assert (=> bs!71526 m!876777))

(assert (=> bs!71526 m!876769))

(assert (=> bs!71526 m!876695))

(declare-fun m!877483 () Bool)

(assert (=> bs!71526 m!877483))

(assert (=> bs!71526 m!876741))

(assert (=> bs!71526 m!876771))

(assert (=> b!609323 d!214942))

(declare-fun d!214944 () Bool)

(assert (=> d!214944 (= suffix!1342 lt!260406)))

(declare-fun lt!260622 () Unit!11124)

(assert (=> d!214944 (= lt!260622 (choose!4486 lt!260407 suffix!1342 lt!260407 lt!260406 lt!260396))))

(assert (=> d!214944 (isPrefix!845 lt!260407 lt!260396)))

(assert (=> d!214944 (= (lemmaSamePrefixThenSameSuffix!558 lt!260407 suffix!1342 lt!260407 lt!260406 lt!260396) lt!260622)))

(declare-fun bs!71527 () Bool)

(assert (= bs!71527 d!214944))

(declare-fun m!877485 () Bool)

(assert (=> bs!71527 m!877485))

(declare-fun m!877487 () Bool)

(assert (=> bs!71527 m!877487))

(assert (=> b!609323 d!214944))

(declare-fun d!214946 () Bool)

(assert (=> d!214946 (= (maxPrefixOneRule!464 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))) input!2705) (Some!1567 (tuple2!6963 (Token!2171 (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) (seqFromList!1393 lt!260399)) (rule!2005 (_1!3745 (v!16474 lt!260393))) (size!4790 lt!260399) lt!260399) (_2!3745 (v!16474 lt!260393)))))))

(declare-fun lt!260623 () Unit!11124)

(assert (=> d!214946 (= lt!260623 (choose!4488 thiss!22590 rules!3103 lt!260399 input!2705 (_2!3745 (v!16474 lt!260393)) (rule!2005 (_1!3745 (v!16474 lt!260393)))))))

(assert (=> d!214946 (not (isEmpty!4396 rules!3103))))

(assert (=> d!214946 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!170 thiss!22590 rules!3103 lt!260399 input!2705 (_2!3745 (v!16474 lt!260393)) (rule!2005 (_1!3745 (v!16474 lt!260393)))) lt!260623)))

(declare-fun bs!71528 () Bool)

(assert (= bs!71528 d!214946))

(assert (=> bs!71528 m!876715))

(declare-fun m!877489 () Bool)

(assert (=> bs!71528 m!877489))

(assert (=> bs!71528 m!876763))

(assert (=> bs!71528 m!876689))

(declare-fun m!877491 () Bool)

(assert (=> bs!71528 m!877491))

(assert (=> bs!71528 m!876741))

(assert (=> bs!71528 m!876715))

(assert (=> b!609323 d!214946))

(declare-fun d!214948 () Bool)

(assert (=> d!214948 (= (apply!1470 (transformation!1217 (rule!2005 token!491)) (seqFromList!1393 lt!260407)) (dynLambda!3546 (toValue!2124 (transformation!1217 (rule!2005 token!491))) (seqFromList!1393 lt!260407)))))

(declare-fun b_lambda!24197 () Bool)

(assert (=> (not b_lambda!24197) (not d!214948)))

(declare-fun tb!53295 () Bool)

(declare-fun t!80867 () Bool)

(assert (=> (and b!609335 (= (toValue!2124 (transformation!1217 (h!11490 rules!3103))) (toValue!2124 (transformation!1217 (rule!2005 token!491)))) t!80867) tb!53295))

(declare-fun result!60008 () Bool)

(assert (=> tb!53295 (= result!60008 (inv!21 (dynLambda!3546 (toValue!2124 (transformation!1217 (rule!2005 token!491))) (seqFromList!1393 lt!260407))))))

(declare-fun m!877493 () Bool)

(assert (=> tb!53295 m!877493))

(assert (=> d!214948 t!80867))

(declare-fun b_and!60399 () Bool)

(assert (= b_and!60391 (and (=> t!80867 result!60008) b_and!60399)))

(declare-fun t!80869 () Bool)

(declare-fun tb!53297 () Bool)

(assert (=> (and b!609336 (= (toValue!2124 (transformation!1217 (rule!2005 token!491))) (toValue!2124 (transformation!1217 (rule!2005 token!491)))) t!80869) tb!53297))

(declare-fun result!60010 () Bool)

(assert (= result!60010 result!60008))

(assert (=> d!214948 t!80869))

(declare-fun b_and!60401 () Bool)

(assert (= b_and!60393 (and (=> t!80869 result!60010) b_and!60401)))

(assert (=> d!214948 m!876771))

(declare-fun m!877495 () Bool)

(assert (=> d!214948 m!877495))

(assert (=> b!609323 d!214948))

(declare-fun b!609902 () Bool)

(declare-fun e!369606 () Option!1568)

(assert (=> b!609902 (= e!369606 None!1567)))

(declare-fun b!609903 () Bool)

(declare-fun e!369607 () Bool)

(assert (=> b!609903 (= e!369607 (matchR!654 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) (_1!3747 (findLongestMatchInner!208 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) Nil!6087 (size!4790 Nil!6087) input!2705 input!2705 (size!4790 input!2705)))))))

(declare-fun d!214950 () Bool)

(declare-fun e!369608 () Bool)

(assert (=> d!214950 e!369608))

(declare-fun res!264796 () Bool)

(assert (=> d!214950 (=> res!264796 e!369608)))

(declare-fun lt!260624 () Option!1568)

(assert (=> d!214950 (= res!264796 (isEmpty!4398 lt!260624))))

(assert (=> d!214950 (= lt!260624 e!369606)))

(declare-fun c!112848 () Bool)

(declare-fun lt!260628 () tuple2!6966)

(assert (=> d!214950 (= c!112848 (isEmpty!4395 (_1!3747 lt!260628)))))

(assert (=> d!214950 (= lt!260628 (findLongestMatch!187 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) input!2705))))

(assert (=> d!214950 (ruleValid!415 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))))))

(assert (=> d!214950 (= (maxPrefixOneRule!464 thiss!22590 (rule!2005 (_1!3745 (v!16474 lt!260393))) input!2705) lt!260624)))

(declare-fun b!609904 () Bool)

(declare-fun e!369605 () Bool)

(assert (=> b!609904 (= e!369608 e!369605)))

(declare-fun res!264797 () Bool)

(assert (=> b!609904 (=> (not res!264797) (not e!369605))))

(assert (=> b!609904 (= res!264797 (matchR!654 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260624))))))))

(declare-fun b!609905 () Bool)

(declare-fun res!264791 () Bool)

(assert (=> b!609905 (=> (not res!264791) (not e!369605))))

(assert (=> b!609905 (= res!264791 (< (size!4790 (_2!3745 (get!2340 lt!260624))) (size!4790 input!2705)))))

(declare-fun b!609906 () Bool)

(declare-fun res!264795 () Bool)

(assert (=> b!609906 (=> (not res!264795) (not e!369605))))

(assert (=> b!609906 (= res!264795 (= (rule!2005 (_1!3745 (get!2340 lt!260624))) (rule!2005 (_1!3745 (v!16474 lt!260393)))))))

(declare-fun b!609907 () Bool)

(assert (=> b!609907 (= e!369606 (Some!1567 (tuple2!6963 (Token!2171 (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) (seqFromList!1393 (_1!3747 lt!260628))) (rule!2005 (_1!3745 (v!16474 lt!260393))) (size!4792 (seqFromList!1393 (_1!3747 lt!260628))) (_1!3747 lt!260628)) (_2!3747 lt!260628))))))

(declare-fun lt!260627 () Unit!11124)

(assert (=> b!609907 (= lt!260627 (longestMatchIsAcceptedByMatchOrIsEmpty!192 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) input!2705))))

(declare-fun res!264792 () Bool)

(assert (=> b!609907 (= res!264792 (isEmpty!4395 (_1!3747 (findLongestMatchInner!208 (regex!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) Nil!6087 (size!4790 Nil!6087) input!2705 input!2705 (size!4790 input!2705)))))))

(assert (=> b!609907 (=> res!264792 e!369607)))

(assert (=> b!609907 e!369607))

(declare-fun lt!260626 () Unit!11124)

(assert (=> b!609907 (= lt!260626 lt!260627)))

(declare-fun lt!260625 () Unit!11124)

(assert (=> b!609907 (= lt!260625 (lemmaSemiInverse!247 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))) (seqFromList!1393 (_1!3747 lt!260628))))))

(declare-fun b!609908 () Bool)

(declare-fun res!264794 () Bool)

(assert (=> b!609908 (=> (not res!264794) (not e!369605))))

(assert (=> b!609908 (= res!264794 (= (value!39551 (_1!3745 (get!2340 lt!260624))) (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (get!2340 lt!260624)))) (seqFromList!1393 (originalCharacters!1256 (_1!3745 (get!2340 lt!260624)))))))))

(declare-fun b!609909 () Bool)

(declare-fun res!264793 () Bool)

(assert (=> b!609909 (=> (not res!264793) (not e!369605))))

(assert (=> b!609909 (= res!264793 (= (++!1705 (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260624)))) (_2!3745 (get!2340 lt!260624))) input!2705))))

(declare-fun b!609910 () Bool)

(assert (=> b!609910 (= e!369605 (= (size!4789 (_1!3745 (get!2340 lt!260624))) (size!4790 (originalCharacters!1256 (_1!3745 (get!2340 lt!260624))))))))

(assert (= (and d!214950 c!112848) b!609902))

(assert (= (and d!214950 (not c!112848)) b!609907))

(assert (= (and b!609907 (not res!264792)) b!609903))

(assert (= (and d!214950 (not res!264796)) b!609904))

(assert (= (and b!609904 res!264797) b!609909))

(assert (= (and b!609909 res!264793) b!609905))

(assert (= (and b!609905 res!264791) b!609906))

(assert (= (and b!609906 res!264795) b!609908))

(assert (= (and b!609908 res!264794) b!609910))

(assert (=> b!609903 m!877441))

(assert (=> b!609903 m!876731))

(assert (=> b!609903 m!877441))

(assert (=> b!609903 m!876731))

(declare-fun m!877497 () Bool)

(assert (=> b!609903 m!877497))

(declare-fun m!877499 () Bool)

(assert (=> b!609903 m!877499))

(declare-fun m!877501 () Bool)

(assert (=> b!609909 m!877501))

(declare-fun m!877503 () Bool)

(assert (=> b!609909 m!877503))

(assert (=> b!609909 m!877503))

(declare-fun m!877505 () Bool)

(assert (=> b!609909 m!877505))

(assert (=> b!609909 m!877505))

(declare-fun m!877507 () Bool)

(assert (=> b!609909 m!877507))

(assert (=> b!609905 m!877501))

(declare-fun m!877509 () Bool)

(assert (=> b!609905 m!877509))

(assert (=> b!609905 m!876731))

(assert (=> b!609910 m!877501))

(declare-fun m!877511 () Bool)

(assert (=> b!609910 m!877511))

(assert (=> b!609906 m!877501))

(assert (=> b!609904 m!877501))

(assert (=> b!609904 m!877503))

(assert (=> b!609904 m!877503))

(assert (=> b!609904 m!877505))

(assert (=> b!609904 m!877505))

(declare-fun m!877513 () Bool)

(assert (=> b!609904 m!877513))

(assert (=> b!609908 m!877501))

(declare-fun m!877515 () Bool)

(assert (=> b!609908 m!877515))

(assert (=> b!609908 m!877515))

(declare-fun m!877517 () Bool)

(assert (=> b!609908 m!877517))

(declare-fun m!877519 () Bool)

(assert (=> d!214950 m!877519))

(declare-fun m!877521 () Bool)

(assert (=> d!214950 m!877521))

(declare-fun m!877523 () Bool)

(assert (=> d!214950 m!877523))

(assert (=> d!214950 m!876707))

(declare-fun m!877525 () Bool)

(assert (=> b!609907 m!877525))

(declare-fun m!877527 () Bool)

(assert (=> b!609907 m!877527))

(assert (=> b!609907 m!877525))

(assert (=> b!609907 m!877525))

(declare-fun m!877529 () Bool)

(assert (=> b!609907 m!877529))

(assert (=> b!609907 m!877441))

(assert (=> b!609907 m!876731))

(assert (=> b!609907 m!877497))

(declare-fun m!877531 () Bool)

(assert (=> b!609907 m!877531))

(declare-fun m!877533 () Bool)

(assert (=> b!609907 m!877533))

(assert (=> b!609907 m!877441))

(assert (=> b!609907 m!876731))

(assert (=> b!609907 m!877525))

(declare-fun m!877535 () Bool)

(assert (=> b!609907 m!877535))

(assert (=> b!609323 d!214950))

(declare-fun d!214952 () Bool)

(declare-fun lt!260629 () List!6097)

(assert (=> d!214952 (= (++!1705 lt!260407 lt!260629) lt!260396)))

(declare-fun e!369609 () List!6097)

(assert (=> d!214952 (= lt!260629 e!369609)))

(declare-fun c!112849 () Bool)

(assert (=> d!214952 (= c!112849 ((_ is Cons!6087) lt!260407))))

(assert (=> d!214952 (>= (size!4790 lt!260396) (size!4790 lt!260407))))

(assert (=> d!214952 (= (getSuffix!362 lt!260396 lt!260407) lt!260629)))

(declare-fun b!609911 () Bool)

(assert (=> b!609911 (= e!369609 (getSuffix!362 (tail!819 lt!260396) (t!80806 lt!260407)))))

(declare-fun b!609912 () Bool)

(assert (=> b!609912 (= e!369609 lt!260396)))

(assert (= (and d!214952 c!112849) b!609911))

(assert (= (and d!214952 (not c!112849)) b!609912))

(declare-fun m!877537 () Bool)

(assert (=> d!214952 m!877537))

(assert (=> d!214952 m!877365))

(assert (=> d!214952 m!876695))

(assert (=> b!609911 m!877361))

(assert (=> b!609911 m!877361))

(declare-fun m!877539 () Bool)

(assert (=> b!609911 m!877539))

(assert (=> b!609323 d!214952))

(declare-fun d!214954 () Bool)

(assert (=> d!214954 (= (isDefined!1379 lt!260392) (not (isEmpty!4398 lt!260392)))))

(declare-fun bs!71529 () Bool)

(assert (= bs!71529 d!214954))

(declare-fun m!877541 () Bool)

(assert (=> bs!71529 m!877541))

(assert (=> b!609321 d!214954))

(declare-fun b!609913 () Bool)

(declare-fun res!264798 () Bool)

(declare-fun e!369610 () Bool)

(assert (=> b!609913 (=> (not res!264798) (not e!369610))))

(declare-fun lt!260632 () Option!1568)

(assert (=> b!609913 (= res!264798 (= (++!1705 (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260632)))) (_2!3745 (get!2340 lt!260632))) lt!260396))))

(declare-fun b!609914 () Bool)

(assert (=> b!609914 (= e!369610 (contains!1433 rules!3103 (rule!2005 (_1!3745 (get!2340 lt!260632)))))))

(declare-fun b!609915 () Bool)

(declare-fun e!369612 () Bool)

(assert (=> b!609915 (= e!369612 e!369610)))

(declare-fun res!264803 () Bool)

(assert (=> b!609915 (=> (not res!264803) (not e!369610))))

(assert (=> b!609915 (= res!264803 (isDefined!1379 lt!260632))))

(declare-fun b!609916 () Bool)

(declare-fun res!264802 () Bool)

(assert (=> b!609916 (=> (not res!264802) (not e!369610))))

(assert (=> b!609916 (= res!264802 (< (size!4790 (_2!3745 (get!2340 lt!260632))) (size!4790 lt!260396)))))

(declare-fun b!609917 () Bool)

(declare-fun res!264800 () Bool)

(assert (=> b!609917 (=> (not res!264800) (not e!369610))))

(assert (=> b!609917 (= res!264800 (= (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260632)))) (originalCharacters!1256 (_1!3745 (get!2340 lt!260632)))))))

(declare-fun call!40841 () Option!1568)

(declare-fun bm!40836 () Bool)

(assert (=> bm!40836 (= call!40841 (maxPrefixOneRule!464 thiss!22590 (h!11490 rules!3103) lt!260396))))

(declare-fun d!214956 () Bool)

(assert (=> d!214956 e!369612))

(declare-fun res!264801 () Bool)

(assert (=> d!214956 (=> res!264801 e!369612)))

(assert (=> d!214956 (= res!264801 (isEmpty!4398 lt!260632))))

(declare-fun e!369611 () Option!1568)

(assert (=> d!214956 (= lt!260632 e!369611)))

(declare-fun c!112850 () Bool)

(assert (=> d!214956 (= c!112850 (and ((_ is Cons!6089) rules!3103) ((_ is Nil!6089) (t!80808 rules!3103))))))

(declare-fun lt!260634 () Unit!11124)

(declare-fun lt!260633 () Unit!11124)

(assert (=> d!214956 (= lt!260634 lt!260633)))

(assert (=> d!214956 (isPrefix!845 lt!260396 lt!260396)))

(assert (=> d!214956 (= lt!260633 (lemmaIsPrefixRefl!581 lt!260396 lt!260396))))

(assert (=> d!214956 (rulesValidInductive!460 thiss!22590 rules!3103)))

(assert (=> d!214956 (= (maxPrefix!801 thiss!22590 rules!3103 lt!260396) lt!260632)))

(declare-fun b!609918 () Bool)

(declare-fun lt!260631 () Option!1568)

(declare-fun lt!260630 () Option!1568)

(assert (=> b!609918 (= e!369611 (ite (and ((_ is None!1567) lt!260631) ((_ is None!1567) lt!260630)) None!1567 (ite ((_ is None!1567) lt!260630) lt!260631 (ite ((_ is None!1567) lt!260631) lt!260630 (ite (>= (size!4789 (_1!3745 (v!16474 lt!260631))) (size!4789 (_1!3745 (v!16474 lt!260630)))) lt!260631 lt!260630)))))))

(assert (=> b!609918 (= lt!260631 call!40841)))

(assert (=> b!609918 (= lt!260630 (maxPrefix!801 thiss!22590 (t!80808 rules!3103) lt!260396))))

(declare-fun b!609919 () Bool)

(assert (=> b!609919 (= e!369611 call!40841)))

(declare-fun b!609920 () Bool)

(declare-fun res!264804 () Bool)

(assert (=> b!609920 (=> (not res!264804) (not e!369610))))

(assert (=> b!609920 (= res!264804 (= (value!39551 (_1!3745 (get!2340 lt!260632))) (apply!1470 (transformation!1217 (rule!2005 (_1!3745 (get!2340 lt!260632)))) (seqFromList!1393 (originalCharacters!1256 (_1!3745 (get!2340 lt!260632)))))))))

(declare-fun b!609921 () Bool)

(declare-fun res!264799 () Bool)

(assert (=> b!609921 (=> (not res!264799) (not e!369610))))

(assert (=> b!609921 (= res!264799 (matchR!654 (regex!1217 (rule!2005 (_1!3745 (get!2340 lt!260632)))) (list!2562 (charsOf!846 (_1!3745 (get!2340 lt!260632))))))))

(assert (= (and d!214956 c!112850) b!609919))

(assert (= (and d!214956 (not c!112850)) b!609918))

(assert (= (or b!609919 b!609918) bm!40836))

(assert (= (and d!214956 (not res!264801)) b!609915))

(assert (= (and b!609915 res!264803) b!609917))

(assert (= (and b!609917 res!264800) b!609916))

(assert (= (and b!609916 res!264802) b!609913))

(assert (= (and b!609913 res!264798) b!609920))

(assert (= (and b!609920 res!264804) b!609921))

(assert (= (and b!609921 res!264799) b!609914))

(declare-fun m!877543 () Bool)

(assert (=> d!214956 m!877543))

(declare-fun m!877545 () Bool)

(assert (=> d!214956 m!877545))

(declare-fun m!877547 () Bool)

(assert (=> d!214956 m!877547))

(assert (=> d!214956 m!876929))

(declare-fun m!877549 () Bool)

(assert (=> bm!40836 m!877549))

(declare-fun m!877551 () Bool)

(assert (=> b!609913 m!877551))

(declare-fun m!877553 () Bool)

(assert (=> b!609913 m!877553))

(assert (=> b!609913 m!877553))

(declare-fun m!877555 () Bool)

(assert (=> b!609913 m!877555))

(assert (=> b!609913 m!877555))

(declare-fun m!877557 () Bool)

(assert (=> b!609913 m!877557))

(assert (=> b!609917 m!877551))

(assert (=> b!609917 m!877553))

(assert (=> b!609917 m!877553))

(assert (=> b!609917 m!877555))

(assert (=> b!609916 m!877551))

(declare-fun m!877559 () Bool)

(assert (=> b!609916 m!877559))

(assert (=> b!609916 m!877365))

(assert (=> b!609920 m!877551))

(declare-fun m!877561 () Bool)

(assert (=> b!609920 m!877561))

(assert (=> b!609920 m!877561))

(declare-fun m!877563 () Bool)

(assert (=> b!609920 m!877563))

(assert (=> b!609921 m!877551))

(assert (=> b!609921 m!877553))

(assert (=> b!609921 m!877553))

(assert (=> b!609921 m!877555))

(assert (=> b!609921 m!877555))

(declare-fun m!877565 () Bool)

(assert (=> b!609921 m!877565))

(declare-fun m!877567 () Bool)

(assert (=> b!609918 m!877567))

(declare-fun m!877569 () Bool)

(assert (=> b!609915 m!877569))

(assert (=> b!609914 m!877551))

(declare-fun m!877571 () Bool)

(assert (=> b!609914 m!877571))

(assert (=> b!609321 d!214956))

(declare-fun b!609924 () Bool)

(declare-fun res!264806 () Bool)

(declare-fun e!369613 () Bool)

(assert (=> b!609924 (=> (not res!264806) (not e!369613))))

(declare-fun lt!260635 () List!6097)

(assert (=> b!609924 (= res!264806 (= (size!4790 lt!260635) (+ (size!4790 input!2705) (size!4790 suffix!1342))))))

(declare-fun d!214958 () Bool)

(assert (=> d!214958 e!369613))

(declare-fun res!264805 () Bool)

(assert (=> d!214958 (=> (not res!264805) (not e!369613))))

(assert (=> d!214958 (= res!264805 (= (content!1113 lt!260635) ((_ map or) (content!1113 input!2705) (content!1113 suffix!1342))))))

(declare-fun e!369614 () List!6097)

(assert (=> d!214958 (= lt!260635 e!369614)))

(declare-fun c!112851 () Bool)

(assert (=> d!214958 (= c!112851 ((_ is Nil!6087) input!2705))))

(assert (=> d!214958 (= (++!1705 input!2705 suffix!1342) lt!260635)))

(declare-fun b!609925 () Bool)

(assert (=> b!609925 (= e!369613 (or (not (= suffix!1342 Nil!6087)) (= lt!260635 input!2705)))))

(declare-fun b!609923 () Bool)

(assert (=> b!609923 (= e!369614 (Cons!6087 (h!11488 input!2705) (++!1705 (t!80806 input!2705) suffix!1342)))))

(declare-fun b!609922 () Bool)

(assert (=> b!609922 (= e!369614 suffix!1342)))

(assert (= (and d!214958 c!112851) b!609922))

(assert (= (and d!214958 (not c!112851)) b!609923))

(assert (= (and d!214958 res!264805) b!609924))

(assert (= (and b!609924 res!264806) b!609925))

(declare-fun m!877573 () Bool)

(assert (=> b!609924 m!877573))

(assert (=> b!609924 m!876731))

(declare-fun m!877575 () Bool)

(assert (=> b!609924 m!877575))

(declare-fun m!877577 () Bool)

(assert (=> d!214958 m!877577))

(declare-fun m!877579 () Bool)

(assert (=> d!214958 m!877579))

(declare-fun m!877581 () Bool)

(assert (=> d!214958 m!877581))

(declare-fun m!877583 () Bool)

(assert (=> b!609923 m!877583))

(assert (=> b!609321 d!214958))

(declare-fun d!214960 () Bool)

(assert (=> d!214960 (= (isEmpty!4395 input!2705) ((_ is Nil!6087) input!2705))))

(assert (=> b!609322 d!214960))

(declare-fun b!609928 () Bool)

(declare-fun res!264808 () Bool)

(declare-fun e!369615 () Bool)

(assert (=> b!609928 (=> (not res!264808) (not e!369615))))

(declare-fun lt!260636 () List!6097)

(assert (=> b!609928 (= res!264808 (= (size!4790 lt!260636) (+ (size!4790 lt!260407) (size!4790 suffix!1342))))))

(declare-fun d!214962 () Bool)

(assert (=> d!214962 e!369615))

(declare-fun res!264807 () Bool)

(assert (=> d!214962 (=> (not res!264807) (not e!369615))))

(assert (=> d!214962 (= res!264807 (= (content!1113 lt!260636) ((_ map or) (content!1113 lt!260407) (content!1113 suffix!1342))))))

(declare-fun e!369616 () List!6097)

(assert (=> d!214962 (= lt!260636 e!369616)))

(declare-fun c!112852 () Bool)

(assert (=> d!214962 (= c!112852 ((_ is Nil!6087) lt!260407))))

(assert (=> d!214962 (= (++!1705 lt!260407 suffix!1342) lt!260636)))

(declare-fun b!609929 () Bool)

(assert (=> b!609929 (= e!369615 (or (not (= suffix!1342 Nil!6087)) (= lt!260636 lt!260407)))))

(declare-fun b!609927 () Bool)

(assert (=> b!609927 (= e!369616 (Cons!6087 (h!11488 lt!260407) (++!1705 (t!80806 lt!260407) suffix!1342)))))

(declare-fun b!609926 () Bool)

(assert (=> b!609926 (= e!369616 suffix!1342)))

(assert (= (and d!214962 c!112852) b!609926))

(assert (= (and d!214962 (not c!112852)) b!609927))

(assert (= (and d!214962 res!264807) b!609928))

(assert (= (and b!609928 res!264808) b!609929))

(declare-fun m!877585 () Bool)

(assert (=> b!609928 m!877585))

(assert (=> b!609928 m!876695))

(assert (=> b!609928 m!877575))

(declare-fun m!877587 () Bool)

(assert (=> d!214962 m!877587))

(declare-fun m!877589 () Bool)

(assert (=> d!214962 m!877589))

(assert (=> d!214962 m!877581))

(declare-fun m!877591 () Bool)

(assert (=> b!609927 m!877591))

(assert (=> b!609320 d!214962))

(declare-fun b!609941 () Bool)

(declare-fun e!369619 () Bool)

(declare-fun tp!188941 () Bool)

(declare-fun tp!188939 () Bool)

(assert (=> b!609941 (= e!369619 (and tp!188941 tp!188939))))

(assert (=> b!609313 (= tp!188870 e!369619)))

(declare-fun b!609940 () Bool)

(assert (=> b!609940 (= e!369619 tp_is_empty!3457)))

(declare-fun b!609943 () Bool)

(declare-fun tp!188942 () Bool)

(declare-fun tp!188940 () Bool)

(assert (=> b!609943 (= e!369619 (and tp!188942 tp!188940))))

(declare-fun b!609942 () Bool)

(declare-fun tp!188938 () Bool)

(assert (=> b!609942 (= e!369619 tp!188938)))

(assert (= (and b!609313 ((_ is ElementMatch!1551) (regex!1217 (rule!2005 token!491)))) b!609940))

(assert (= (and b!609313 ((_ is Concat!2792) (regex!1217 (rule!2005 token!491)))) b!609941))

(assert (= (and b!609313 ((_ is Star!1551) (regex!1217 (rule!2005 token!491)))) b!609942))

(assert (= (and b!609313 ((_ is Union!1551) (regex!1217 (rule!2005 token!491)))) b!609943))

(declare-fun b!609954 () Bool)

(declare-fun b_free!17361 () Bool)

(declare-fun b_next!17377 () Bool)

(assert (=> b!609954 (= b_free!17361 (not b_next!17377))))

(declare-fun t!80871 () Bool)

(declare-fun tb!53299 () Bool)

(assert (=> (and b!609954 (= (toValue!2124 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toValue!2124 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80871) tb!53299))

(declare-fun result!60016 () Bool)

(assert (= result!60016 result!59998))

(assert (=> d!214754 t!80871))

(assert (=> d!214924 t!80871))

(declare-fun tb!53301 () Bool)

(declare-fun t!80873 () Bool)

(assert (=> (and b!609954 (= (toValue!2124 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toValue!2124 (transformation!1217 (rule!2005 token!491)))) t!80873) tb!53301))

(declare-fun result!60018 () Bool)

(assert (= result!60018 result!60008))

(assert (=> d!214948 t!80873))

(declare-fun tp!188953 () Bool)

(declare-fun b_and!60403 () Bool)

(assert (=> b!609954 (= tp!188953 (and (=> t!80871 result!60016) (=> t!80873 result!60018) b_and!60403))))

(declare-fun b_free!17363 () Bool)

(declare-fun b_next!17379 () Bool)

(assert (=> b!609954 (= b_free!17363 (not b_next!17379))))

(declare-fun tb!53303 () Bool)

(declare-fun t!80875 () Bool)

(assert (=> (and b!609954 (= (toChars!1983 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80875) tb!53303))

(declare-fun result!60020 () Bool)

(assert (= result!60020 result!60004))

(assert (=> d!214928 t!80875))

(declare-fun t!80877 () Bool)

(declare-fun tb!53305 () Bool)

(assert (=> (and b!609954 (= (toChars!1983 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toChars!1983 (transformation!1217 (rule!2005 token!491)))) t!80877) tb!53305))

(declare-fun result!60022 () Bool)

(assert (= result!60022 result!59938))

(assert (=> b!609362 t!80877))

(assert (=> d!214718 t!80877))

(declare-fun t!80879 () Bool)

(declare-fun tb!53307 () Bool)

(assert (=> (and b!609954 (= (toChars!1983 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toChars!1983 (transformation!1217 (rule!2005 lt!260414)))) t!80879) tb!53307))

(declare-fun result!60024 () Bool)

(assert (= result!60024 result!59944))

(assert (=> b!609441 t!80879))

(declare-fun tb!53309 () Bool)

(declare-fun t!80881 () Bool)

(assert (=> (and b!609954 (= (toChars!1983 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toChars!1983 (transformation!1217 (rule!2005 (_1!3745 (v!16474 lt!260393)))))) t!80881) tb!53309))

(declare-fun result!60026 () Bool)

(assert (= result!60026 result!59994))

(assert (=> d!214754 t!80881))

(declare-fun tp!188954 () Bool)

(declare-fun b_and!60405 () Bool)

(assert (=> b!609954 (= tp!188954 (and (=> t!80881 result!60026) (=> t!80877 result!60022) (=> t!80875 result!60020) (=> t!80879 result!60024) b_and!60405))))

(declare-fun e!369628 () Bool)

(assert (=> b!609954 (= e!369628 (and tp!188953 tp!188954))))

(declare-fun b!609953 () Bool)

(declare-fun tp!188951 () Bool)

(declare-fun e!369631 () Bool)

(assert (=> b!609953 (= e!369631 (and tp!188951 (inv!7743 (tag!1479 (h!11490 (t!80808 rules!3103)))) (inv!7746 (transformation!1217 (h!11490 (t!80808 rules!3103)))) e!369628))))

(declare-fun b!609952 () Bool)

(declare-fun e!369629 () Bool)

(declare-fun tp!188952 () Bool)

(assert (=> b!609952 (= e!369629 (and e!369631 tp!188952))))

(assert (=> b!609319 (= tp!188872 e!369629)))

(assert (= b!609953 b!609954))

(assert (= b!609952 b!609953))

(assert (= (and b!609319 ((_ is Cons!6089) (t!80808 rules!3103))) b!609952))

(declare-fun m!877593 () Bool)

(assert (=> b!609953 m!877593))

(declare-fun m!877595 () Bool)

(assert (=> b!609953 m!877595))

(declare-fun b!609959 () Bool)

(declare-fun e!369634 () Bool)

(declare-fun tp!188957 () Bool)

(assert (=> b!609959 (= e!369634 (and tp_is_empty!3457 tp!188957))))

(assert (=> b!609314 (= tp!188873 e!369634)))

(assert (= (and b!609314 ((_ is Cons!6087) (t!80806 input!2705))) b!609959))

(declare-fun b!609960 () Bool)

(declare-fun e!369635 () Bool)

(declare-fun tp!188958 () Bool)

(assert (=> b!609960 (= e!369635 (and tp_is_empty!3457 tp!188958))))

(assert (=> b!609302 (= tp!188871 e!369635)))

(assert (= (and b!609302 ((_ is Cons!6087) (t!80806 suffix!1342))) b!609960))

(declare-fun b!609962 () Bool)

(declare-fun e!369636 () Bool)

(declare-fun tp!188962 () Bool)

(declare-fun tp!188960 () Bool)

(assert (=> b!609962 (= e!369636 (and tp!188962 tp!188960))))

(assert (=> b!609338 (= tp!188869 e!369636)))

(declare-fun b!609961 () Bool)

(assert (=> b!609961 (= e!369636 tp_is_empty!3457)))

(declare-fun b!609964 () Bool)

(declare-fun tp!188963 () Bool)

(declare-fun tp!188961 () Bool)

(assert (=> b!609964 (= e!369636 (and tp!188963 tp!188961))))

(declare-fun b!609963 () Bool)

(declare-fun tp!188959 () Bool)

(assert (=> b!609963 (= e!369636 tp!188959)))

(assert (= (and b!609338 ((_ is ElementMatch!1551) (regex!1217 (h!11490 rules!3103)))) b!609961))

(assert (= (and b!609338 ((_ is Concat!2792) (regex!1217 (h!11490 rules!3103)))) b!609962))

(assert (= (and b!609338 ((_ is Star!1551) (regex!1217 (h!11490 rules!3103)))) b!609963))

(assert (= (and b!609338 ((_ is Union!1551) (regex!1217 (h!11490 rules!3103)))) b!609964))

(declare-fun b!609965 () Bool)

(declare-fun e!369637 () Bool)

(declare-fun tp!188964 () Bool)

(assert (=> b!609965 (= e!369637 (and tp_is_empty!3457 tp!188964))))

(assert (=> b!609306 (= tp!188874 e!369637)))

(assert (= (and b!609306 ((_ is Cons!6087) (originalCharacters!1256 token!491))) b!609965))

(declare-fun b_lambda!24199 () Bool)

(assert (= b_lambda!24161 (or (and b!609335 b_free!17351 (= (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toChars!1983 (transformation!1217 (rule!2005 token!491))))) (and b!609336 b_free!17355) (and b!609954 b_free!17363 (= (toChars!1983 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toChars!1983 (transformation!1217 (rule!2005 token!491))))) b_lambda!24199)))

(declare-fun b_lambda!24201 () Bool)

(assert (= b_lambda!24197 (or (and b!609335 b_free!17349 (= (toValue!2124 (transformation!1217 (h!11490 rules!3103))) (toValue!2124 (transformation!1217 (rule!2005 token!491))))) (and b!609336 b_free!17353) (and b!609954 b_free!17361 (= (toValue!2124 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toValue!2124 (transformation!1217 (rule!2005 token!491))))) b_lambda!24201)))

(declare-fun b_lambda!24203 () Bool)

(assert (= b_lambda!24163 (or (and b!609335 b_free!17351 (= (toChars!1983 (transformation!1217 (h!11490 rules!3103))) (toChars!1983 (transformation!1217 (rule!2005 token!491))))) (and b!609336 b_free!17355) (and b!609954 b_free!17363 (= (toChars!1983 (transformation!1217 (h!11490 (t!80808 rules!3103)))) (toChars!1983 (transformation!1217 (rule!2005 token!491))))) b_lambda!24203)))

(check-sat (not b_lambda!24193) (not b!609374) (not d!214702) (not b_next!17365) (not b!609818) (not b!609851) (not b!609832) (not d!214708) (not b!609873) (not b!609456) (not d!214884) (not b!609928) (not d!214900) (not b!609895) (not b!609513) (not tb!53287) (not b!609405) (not b!609921) (not b_next!17367) (not bm!40836) (not d!214956) (not d!214722) (not d!214880) (not b!609826) (not b!609840) (not b!609900) (not b!609824) (not b!609831) (not d!214736) (not d!214916) (not b!609964) (not b!609963) (not b!609808) (not b!609409) (not b!609509) (not d!214718) (not b_next!17371) (not b!609869) (not b!609516) (not d!214876) (not b!609460) (not d!214700) (not d!214910) (not tb!53239) (not d!214724) (not b!609514) (not b!609820) (not b_next!17377) (not d!214732) (not b_lambda!24199) (not d!214946) (not b!609903) (not b!609512) (not b!609896) (not b!609404) (not b!609844) (not d!214906) (not b!609813) (not bm!40823) (not b!609910) (not b!609368) (not b!609953) (not b!609846) (not d!214958) (not b_lambda!24203) (not b!609952) (not d!214942) (not b!609411) (not b!609866) (not b!609442) (not b!609962) (not tb!53295) (not b!609924) (not b!609850) (not b!609907) (not b!609965) (not d!214716) (not b!609898) tp_is_empty!3457 (not b!609914) (not tb!53291) b_and!60401 (not b!609862) (not b!609959) (not b!609814) (not b!609909) (not b!609436) b_and!60395 (not tb!53243) (not d!214952) (not b!609874) b_and!60403 (not b_lambda!24165) (not b!609899) (not b!609894) (not b!609872) (not b!609357) (not d!214930) (not d!214920) (not b!609441) (not b!609455) (not d!214932) (not d!214938) (not b_next!17379) (not b_next!17369) (not d!214698) (not b_lambda!24195) (not d!214914) (not b!609906) (not d!214922) (not b!609812) (not b!609913) (not d!214950) (not b!609847) (not b!609905) b_and!60397 (not d!214928) (not b!609510) (not b!609915) (not b!609916) (not b!609854) (not b!609852) (not b_lambda!24201) b_and!60405 (not b!609927) (not b!609435) (not b!609870) (not d!214882) (not d!214926) (not b!609462) (not b!609350) (not b!609349) (not b!609901) (not tb!53283) (not b!609434) (not b_lambda!24191) (not b!609904) (not b!609362) (not d!214710) (not b!609819) (not b!609942) (not b!609443) (not b!609923) (not b!609943) (not b!609908) (not b!609403) (not d!214902) (not d!214944) (not b!609836) (not d!214890) (not b!609445) (not b!609815) (not d!214904) (not b!609511) (not b!609917) (not d!214908) (not b!609918) (not b!609817) (not b!609363) (not b!609440) (not b!609835) (not d!214754) (not b!609920) (not b!609837) (not d!214892) (not b!609421) (not bm!40826) (not b!609867) (not d!214962) (not b!609863) (not b!609960) (not d!214728) (not b!609517) (not d!214940) (not b!609841) (not b_lambda!24189) (not b!609859) b_and!60399 (not b!609911) (not d!214954) (not d!214726) (not bm!40835) (not b!609941) (not b!609864) (not b!609457) (not d!214898) (not b!609839) (not b!609897) (not b!609416))
(check-sat (not b_next!17365) (not b_next!17367) (not b_next!17371) (not b_next!17377) b_and!60401 b_and!60395 b_and!60403 b_and!60397 b_and!60405 b_and!60399 (not b_next!17379) (not b_next!17369))

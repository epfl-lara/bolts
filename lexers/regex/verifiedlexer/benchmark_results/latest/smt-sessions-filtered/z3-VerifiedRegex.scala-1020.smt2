; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50832 () Bool)

(assert start!50832)

(declare-fun b!549544 () Bool)

(declare-fun b_free!15313 () Bool)

(declare-fun b_next!15329 () Bool)

(assert (=> b!549544 (= b_free!15313 (not b_next!15329))))

(declare-fun tp!174039 () Bool)

(declare-fun b_and!53651 () Bool)

(assert (=> b!549544 (= tp!174039 b_and!53651)))

(declare-fun b_free!15315 () Bool)

(declare-fun b_next!15331 () Bool)

(assert (=> b!549544 (= b_free!15315 (not b_next!15331))))

(declare-fun tp!174036 () Bool)

(declare-fun b_and!53653 () Bool)

(assert (=> b!549544 (= tp!174036 b_and!53653)))

(declare-fun b!549551 () Bool)

(declare-fun b_free!15317 () Bool)

(declare-fun b_next!15333 () Bool)

(assert (=> b!549551 (= b_free!15317 (not b_next!15333))))

(declare-fun tp!174034 () Bool)

(declare-fun b_and!53655 () Bool)

(assert (=> b!549551 (= tp!174034 b_and!53655)))

(declare-fun b_free!15319 () Bool)

(declare-fun b_next!15335 () Bool)

(assert (=> b!549551 (= b_free!15319 (not b_next!15335))))

(declare-fun tp!174032 () Bool)

(declare-fun b_and!53657 () Bool)

(assert (=> b!549551 (= tp!174032 b_and!53657)))

(declare-fun b!549526 () Bool)

(declare-fun e!332280 () Bool)

(assert (=> b!549526 (= e!332280 false)))

(declare-fun b!549527 () Bool)

(declare-fun res!235319 () Bool)

(declare-fun e!332269 () Bool)

(assert (=> b!549527 (=> (not res!235319) (not e!332269))))

(declare-datatypes ((String!6998 0))(
  ( (String!6999 (value!34110 String)) )
))
(declare-datatypes ((C!3644 0))(
  ( (C!3645 (val!2048 Int)) )
))
(declare-datatypes ((Regex!1361 0))(
  ( (ElementMatch!1361 (c!103412 C!3644)) (Concat!2412 (regOne!3234 Regex!1361) (regTwo!3234 Regex!1361)) (EmptyExpr!1361) (Star!1361 (reg!1690 Regex!1361)) (EmptyLang!1361) (Union!1361 (regOne!3235 Regex!1361) (regTwo!3235 Regex!1361)) )
))
(declare-datatypes ((List!5435 0))(
  ( (Nil!5425) (Cons!5425 (h!10826 (_ BitVec 16)) (t!74964 List!5435)) )
))
(declare-datatypes ((List!5436 0))(
  ( (Nil!5426) (Cons!5426 (h!10827 C!3644) (t!74965 List!5436)) )
))
(declare-datatypes ((IArray!3489 0))(
  ( (IArray!3490 (innerList!1802 List!5436)) )
))
(declare-datatypes ((Conc!1744 0))(
  ( (Node!1744 (left!4486 Conc!1744) (right!4816 Conc!1744) (csize!3718 Int) (cheight!1955 Int)) (Leaf!2765 (xs!4381 IArray!3489) (csize!3719 Int)) (Empty!1744) )
))
(declare-datatypes ((BalanceConc!3496 0))(
  ( (BalanceConc!3497 (c!103413 Conc!1744)) )
))
(declare-datatypes ((TokenValue!1051 0))(
  ( (FloatLiteralValue!2102 (text!7802 List!5435)) (TokenValueExt!1050 (__x!4000 Int)) (Broken!5255 (value!34111 List!5435)) (Object!1060) (End!1051) (Def!1051) (Underscore!1051) (Match!1051) (Else!1051) (Error!1051) (Case!1051) (If!1051) (Extends!1051) (Abstract!1051) (Class!1051) (Val!1051) (DelimiterValue!2102 (del!1111 List!5435)) (KeywordValue!1057 (value!34112 List!5435)) (CommentValue!2102 (value!34113 List!5435)) (WhitespaceValue!2102 (value!34114 List!5435)) (IndentationValue!1051 (value!34115 List!5435)) (String!7000) (Int32!1051) (Broken!5256 (value!34116 List!5435)) (Boolean!1052) (Unit!9587) (OperatorValue!1054 (op!1111 List!5435)) (IdentifierValue!2102 (value!34117 List!5435)) (IdentifierValue!2103 (value!34118 List!5435)) (WhitespaceValue!2103 (value!34119 List!5435)) (True!2102) (False!2102) (Broken!5257 (value!34120 List!5435)) (Broken!5258 (value!34121 List!5435)) (True!2103) (RightBrace!1051) (RightBracket!1051) (Colon!1051) (Null!1051) (Comma!1051) (LeftBracket!1051) (False!2103) (LeftBrace!1051) (ImaginaryLiteralValue!1051 (text!7803 List!5435)) (StringLiteralValue!3153 (value!34122 List!5435)) (EOFValue!1051 (value!34123 List!5435)) (IdentValue!1051 (value!34124 List!5435)) (DelimiterValue!2103 (value!34125 List!5435)) (DedentValue!1051 (value!34126 List!5435)) (NewLineValue!1051 (value!34127 List!5435)) (IntegerValue!3153 (value!34128 (_ BitVec 32)) (text!7804 List!5435)) (IntegerValue!3154 (value!34129 Int) (text!7805 List!5435)) (Times!1051) (Or!1051) (Equal!1051) (Minus!1051) (Broken!5259 (value!34130 List!5435)) (And!1051) (Div!1051) (LessEqual!1051) (Mod!1051) (Concat!2413) (Not!1051) (Plus!1051) (SpaceValue!1051 (value!34131 List!5435)) (IntegerValue!3155 (value!34132 Int) (text!7806 List!5435)) (StringLiteralValue!3154 (text!7807 List!5435)) (FloatLiteralValue!2103 (text!7808 List!5435)) (BytesLiteralValue!1051 (value!34133 List!5435)) (CommentValue!2103 (value!34134 List!5435)) (StringLiteralValue!3155 (value!34135 List!5435)) (ErrorTokenValue!1051 (msg!1112 List!5435)) )
))
(declare-datatypes ((TokenValueInjection!1870 0))(
  ( (TokenValueInjection!1871 (toValue!1874 Int) (toChars!1733 Int)) )
))
(declare-datatypes ((Rule!1854 0))(
  ( (Rule!1855 (regex!1027 Regex!1361) (tag!1289 String!6998) (isSeparator!1027 Bool) (transformation!1027 TokenValueInjection!1870)) )
))
(declare-datatypes ((Token!1790 0))(
  ( (Token!1791 (value!34136 TokenValue!1051) (rule!1749 Rule!1854) (size!4344 Int) (originalCharacters!1066 List!5436)) )
))
(declare-datatypes ((tuple2!6452 0))(
  ( (tuple2!6453 (_1!3490 Token!1790) (_2!3490 List!5436)) )
))
(declare-datatypes ((Option!1377 0))(
  ( (None!1376) (Some!1376 (v!16199 tuple2!6452)) )
))
(declare-fun lt!231346 () Option!1377)

(declare-fun get!2055 (Option!1377) tuple2!6452)

(assert (=> b!549527 (= res!235319 (= (_1!3490 (get!2055 lt!231346)) (_1!3490 (v!16199 lt!231346))))))

(declare-fun b!549528 () Bool)

(declare-fun e!332255 () Bool)

(declare-fun e!332264 () Bool)

(declare-fun tp!174040 () Bool)

(assert (=> b!549528 (= e!332255 (and e!332264 tp!174040))))

(declare-fun b!549529 () Bool)

(declare-datatypes ((Unit!9588 0))(
  ( (Unit!9589) )
))
(declare-fun e!332273 () Unit!9588)

(declare-fun Unit!9590 () Unit!9588)

(assert (=> b!549529 (= e!332273 Unit!9590)))

(declare-fun b!549530 () Bool)

(declare-fun res!235343 () Bool)

(declare-fun e!332259 () Bool)

(assert (=> b!549530 (=> res!235343 e!332259)))

(declare-fun lt!231340 () List!5436)

(declare-fun lt!231341 () List!5436)

(declare-fun token!491 () Token!1790)

(assert (=> b!549530 (= res!235343 (or (not (= lt!231340 lt!231341)) (not (= (originalCharacters!1066 (_1!3490 (v!16199 lt!231346))) (originalCharacters!1066 token!491)))))))

(declare-fun b!549531 () Bool)

(declare-fun e!332285 () Bool)

(declare-fun e!332276 () Bool)

(assert (=> b!549531 (= e!332285 e!332276)))

(declare-fun res!235335 () Bool)

(assert (=> b!549531 (=> (not res!235335) (not e!332276))))

(declare-fun lt!231380 () tuple2!6452)

(declare-fun suffix!1342 () List!5436)

(assert (=> b!549531 (= res!235335 (and (= (_1!3490 lt!231380) token!491) (= (_2!3490 lt!231380) suffix!1342)))))

(declare-fun lt!231365 () Option!1377)

(assert (=> b!549531 (= lt!231380 (get!2055 lt!231365))))

(declare-fun b!549532 () Bool)

(declare-fun e!332262 () Bool)

(assert (=> b!549532 (= e!332262 e!332269)))

(declare-fun res!235320 () Bool)

(assert (=> b!549532 (=> (not res!235320) (not e!332269))))

(declare-fun isDefined!1189 (Option!1377) Bool)

(assert (=> b!549532 (= res!235320 (isDefined!1189 lt!231346))))

(declare-fun b!549533 () Bool)

(declare-fun e!332270 () Bool)

(declare-fun e!332277 () Bool)

(assert (=> b!549533 (= e!332270 (not e!332277))))

(declare-fun res!235325 () Bool)

(assert (=> b!549533 (=> res!235325 e!332277)))

(declare-fun input!2705 () List!5436)

(declare-fun lt!231357 () List!5436)

(declare-fun isPrefix!669 (List!5436 List!5436) Bool)

(assert (=> b!549533 (= res!235325 (not (isPrefix!669 input!2705 lt!231357)))))

(assert (=> b!549533 (isPrefix!669 lt!231341 lt!231357)))

(declare-fun lt!231352 () Unit!9588)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!520 (List!5436 List!5436) Unit!9588)

(assert (=> b!549533 (= lt!231352 (lemmaConcatTwoListThenFirstIsPrefix!520 lt!231341 suffix!1342))))

(declare-fun lt!231378 () List!5436)

(assert (=> b!549533 (isPrefix!669 input!2705 lt!231378)))

(declare-fun lt!231370 () Unit!9588)

(assert (=> b!549533 (= lt!231370 (lemmaConcatTwoListThenFirstIsPrefix!520 input!2705 suffix!1342))))

(declare-fun e!332283 () Bool)

(assert (=> b!549533 e!332283))

(declare-fun res!235322 () Bool)

(assert (=> b!549533 (=> (not res!235322) (not e!332283))))

(declare-fun lt!231379 () TokenValue!1051)

(assert (=> b!549533 (= res!235322 (= (value!34136 (_1!3490 (v!16199 lt!231346))) lt!231379))))

(declare-fun lt!231367 () BalanceConc!3496)

(declare-fun apply!1302 (TokenValueInjection!1870 BalanceConc!3496) TokenValue!1051)

(assert (=> b!549533 (= lt!231379 (apply!1302 (transformation!1027 (rule!1749 (_1!3490 (v!16199 lt!231346)))) lt!231367))))

(declare-fun seqFromList!1225 (List!5436) BalanceConc!3496)

(assert (=> b!549533 (= lt!231367 (seqFromList!1225 lt!231340))))

(declare-fun lt!231374 () Unit!9588)

(declare-fun lemmaInv!175 (TokenValueInjection!1870) Unit!9588)

(assert (=> b!549533 (= lt!231374 (lemmaInv!175 (transformation!1027 (rule!1749 token!491))))))

(declare-fun lt!231366 () Unit!9588)

(assert (=> b!549533 (= lt!231366 (lemmaInv!175 (transformation!1027 (rule!1749 (_1!3490 (v!16199 lt!231346))))))))

(declare-datatypes ((LexerInterface!913 0))(
  ( (LexerInterfaceExt!910 (__x!4001 Int)) (Lexer!911) )
))
(declare-fun thiss!22590 () LexerInterface!913)

(declare-fun ruleValid!247 (LexerInterface!913 Rule!1854) Bool)

(assert (=> b!549533 (ruleValid!247 thiss!22590 (rule!1749 token!491))))

(declare-datatypes ((List!5437 0))(
  ( (Nil!5427) (Cons!5427 (h!10828 Rule!1854) (t!74966 List!5437)) )
))
(declare-fun rules!3103 () List!5437)

(declare-fun lt!231349 () Unit!9588)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!106 (LexerInterface!913 Rule!1854 List!5437) Unit!9588)

(assert (=> b!549533 (= lt!231349 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!106 thiss!22590 (rule!1749 token!491) rules!3103))))

(assert (=> b!549533 (ruleValid!247 thiss!22590 (rule!1749 (_1!3490 (v!16199 lt!231346))))))

(declare-fun lt!231342 () Unit!9588)

(assert (=> b!549533 (= lt!231342 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!106 thiss!22590 (rule!1749 (_1!3490 (v!16199 lt!231346))) rules!3103))))

(assert (=> b!549533 (isPrefix!669 input!2705 input!2705)))

(declare-fun lt!231368 () Unit!9588)

(declare-fun lemmaIsPrefixRefl!409 (List!5436 List!5436) Unit!9588)

(assert (=> b!549533 (= lt!231368 (lemmaIsPrefixRefl!409 input!2705 input!2705))))

(declare-fun lt!231344 () List!5436)

(assert (=> b!549533 (= (_2!3490 (v!16199 lt!231346)) lt!231344)))

(declare-fun lt!231369 () Unit!9588)

(declare-fun lemmaSamePrefixThenSameSuffix!396 (List!5436 List!5436 List!5436 List!5436 List!5436) Unit!9588)

(assert (=> b!549533 (= lt!231369 (lemmaSamePrefixThenSameSuffix!396 lt!231340 (_2!3490 (v!16199 lt!231346)) lt!231340 lt!231344 input!2705))))

(declare-fun getSuffix!192 (List!5436 List!5436) List!5436)

(assert (=> b!549533 (= lt!231344 (getSuffix!192 input!2705 lt!231340))))

(declare-fun lt!231348 () List!5436)

(assert (=> b!549533 (isPrefix!669 lt!231340 lt!231348)))

(declare-fun ++!1515 (List!5436 List!5436) List!5436)

(assert (=> b!549533 (= lt!231348 (++!1515 lt!231340 (_2!3490 (v!16199 lt!231346))))))

(declare-fun lt!231361 () Unit!9588)

(assert (=> b!549533 (= lt!231361 (lemmaConcatTwoListThenFirstIsPrefix!520 lt!231340 (_2!3490 (v!16199 lt!231346))))))

(declare-fun lt!231364 () Unit!9588)

(declare-fun lemmaCharactersSize!106 (Token!1790) Unit!9588)

(assert (=> b!549533 (= lt!231364 (lemmaCharactersSize!106 token!491))))

(declare-fun lt!231339 () Unit!9588)

(assert (=> b!549533 (= lt!231339 (lemmaCharactersSize!106 (_1!3490 (v!16199 lt!231346))))))

(declare-fun lt!231353 () Unit!9588)

(declare-fun e!332265 () Unit!9588)

(assert (=> b!549533 (= lt!231353 e!332265)))

(declare-fun c!103411 () Bool)

(declare-fun lt!231356 () Int)

(declare-fun lt!231358 () Int)

(assert (=> b!549533 (= c!103411 (> lt!231356 lt!231358))))

(declare-fun size!4345 (List!5436) Int)

(assert (=> b!549533 (= lt!231358 (size!4345 lt!231341))))

(assert (=> b!549533 (= lt!231356 (size!4345 lt!231340))))

(declare-fun list!2249 (BalanceConc!3496) List!5436)

(declare-fun charsOf!656 (Token!1790) BalanceConc!3496)

(assert (=> b!549533 (= lt!231340 (list!2249 (charsOf!656 (_1!3490 (v!16199 lt!231346)))))))

(declare-fun lt!231373 () tuple2!6452)

(assert (=> b!549533 (= lt!231346 (Some!1376 lt!231373))))

(assert (=> b!549533 (= lt!231373 (tuple2!6453 (_1!3490 (v!16199 lt!231346)) (_2!3490 (v!16199 lt!231346))))))

(declare-fun lt!231337 () Unit!9588)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!112 (List!5436 List!5436 List!5436 List!5436) Unit!9588)

(assert (=> b!549533 (= lt!231337 (lemmaConcatSameAndSameSizesThenSameLists!112 lt!231341 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!549534 () Bool)

(declare-fun res!235332 () Bool)

(assert (=> b!549534 (=> res!235332 e!332259)))

(declare-fun contains!1269 (List!5437 Rule!1854) Bool)

(assert (=> b!549534 (= res!235332 (not (contains!1269 rules!3103 (rule!1749 (_1!3490 (v!16199 lt!231346))))))))

(declare-fun b!549535 () Bool)

(declare-fun e!332275 () Bool)

(assert (=> b!549535 (= e!332275 e!332262)))

(declare-fun res!235339 () Bool)

(assert (=> b!549535 (=> res!235339 e!332262)))

(assert (=> b!549535 (= res!235339 (>= lt!231356 lt!231358))))

(declare-fun b!549536 () Bool)

(declare-fun Unit!9591 () Unit!9588)

(assert (=> b!549536 (= e!332265 Unit!9591)))

(declare-fun b!549537 () Bool)

(assert (=> b!549537 e!332280))

(declare-fun res!235344 () Bool)

(assert (=> b!549537 (=> (not res!235344) (not e!332280))))

(declare-fun matchR!520 (Regex!1361 List!5436) Bool)

(assert (=> b!549537 (= res!235344 (not (matchR!520 (regex!1027 (rule!1749 (_1!3490 (v!16199 lt!231346)))) input!2705)))))

(declare-fun lt!231371 () Unit!9588)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!10 (LexerInterface!913 List!5437 Rule!1854 List!5436 List!5436 Rule!1854) Unit!9588)

(assert (=> b!549537 (= lt!231371 (lemmaMaxPrefNoSmallerRuleMatches!10 thiss!22590 rules!3103 (rule!1749 token!491) input!2705 lt!231378 (rule!1749 (_1!3490 (v!16199 lt!231346)))))))

(declare-fun e!332286 () Unit!9588)

(declare-fun Unit!9592 () Unit!9588)

(assert (=> b!549537 (= e!332286 Unit!9592)))

(declare-fun b!549538 () Bool)

(assert (=> b!549538 (= e!332269 (= lt!231344 (_2!3490 (v!16199 lt!231346))))))

(declare-fun b!549539 () Bool)

(declare-fun e!332274 () Bool)

(assert (=> b!549539 (= e!332276 e!332274)))

(declare-fun res!235336 () Bool)

(assert (=> b!549539 (=> (not res!235336) (not e!332274))))

(get-info :version)

(assert (=> b!549539 (= res!235336 ((_ is Some!1376) lt!231346))))

(declare-fun maxPrefix!611 (LexerInterface!913 List!5437 List!5436) Option!1377)

(assert (=> b!549539 (= lt!231346 (maxPrefix!611 thiss!22590 rules!3103 input!2705))))

(declare-fun b!549540 () Bool)

(declare-fun e!332279 () Bool)

(assert (=> b!549540 e!332279))

(declare-fun res!235334 () Bool)

(assert (=> b!549540 (=> (not res!235334) (not e!332279))))

(assert (=> b!549540 (= res!235334 (not (matchR!520 (regex!1027 (rule!1749 token!491)) input!2705)))))

(declare-fun lt!231338 () Unit!9588)

(assert (=> b!549540 (= lt!231338 (lemmaMaxPrefNoSmallerRuleMatches!10 thiss!22590 rules!3103 (rule!1749 (_1!3490 (v!16199 lt!231346))) input!2705 input!2705 (rule!1749 token!491)))))

(declare-fun e!332263 () Unit!9588)

(declare-fun Unit!9593 () Unit!9588)

(assert (=> b!549540 (= e!332263 Unit!9593)))

(declare-fun b!549541 () Bool)

(declare-fun e!332281 () Bool)

(declare-fun tp_is_empty!3077 () Bool)

(declare-fun tp!174031 () Bool)

(assert (=> b!549541 (= e!332281 (and tp_is_empty!3077 tp!174031))))

(declare-fun b!549542 () Bool)

(declare-fun res!235324 () Bool)

(assert (=> b!549542 (=> res!235324 e!332259)))

(declare-fun isEmpty!3916 (List!5436) Bool)

(assert (=> b!549542 (= res!235324 (not (isEmpty!3916 (_2!3490 (v!16199 lt!231346)))))))

(declare-fun tp!174035 () Bool)

(declare-fun e!332278 () Bool)

(declare-fun b!549543 () Bool)

(declare-fun inv!6803 (String!6998) Bool)

(declare-fun inv!6806 (TokenValueInjection!1870) Bool)

(assert (=> b!549543 (= e!332264 (and tp!174035 (inv!6803 (tag!1289 (h!10828 rules!3103))) (inv!6806 (transformation!1027 (h!10828 rules!3103))) e!332278))))

(assert (=> b!549544 (= e!332278 (and tp!174039 tp!174036))))

(declare-fun b!549545 () Bool)

(declare-fun res!235330 () Bool)

(declare-fun e!332257 () Bool)

(assert (=> b!549545 (=> (not res!235330) (not e!332257))))

(assert (=> b!549545 (= res!235330 (= (size!4344 token!491) (size!4345 (originalCharacters!1066 token!491))))))

(declare-fun b!549546 () Bool)

(assert (=> b!549546 (= e!332274 e!332270)))

(declare-fun res!235333 () Bool)

(assert (=> b!549546 (=> (not res!235333) (not e!332270))))

(assert (=> b!549546 (= res!235333 (= lt!231357 lt!231378))))

(assert (=> b!549546 (= lt!231357 (++!1515 lt!231341 suffix!1342))))

(declare-fun b!549547 () Bool)

(declare-fun Unit!9594 () Unit!9588)

(assert (=> b!549547 (= e!332263 Unit!9594)))

(declare-fun b!549548 () Bool)

(declare-fun e!332266 () Bool)

(declare-fun e!332267 () Bool)

(assert (=> b!549548 (= e!332266 e!332267)))

(declare-fun res!235338 () Bool)

(assert (=> b!549548 (=> (not res!235338) (not e!332267))))

(assert (=> b!549548 (= res!235338 (= lt!231341 input!2705))))

(assert (=> b!549548 (= lt!231341 (list!2249 (charsOf!656 token!491)))))

(declare-fun b!549549 () Bool)

(declare-fun res!235331 () Bool)

(assert (=> b!549549 (=> (not res!235331) (not e!332283))))

(assert (=> b!549549 (= res!235331 (= (size!4344 (_1!3490 (v!16199 lt!231346))) (size!4345 (originalCharacters!1066 (_1!3490 (v!16199 lt!231346))))))))

(declare-fun b!549550 () Bool)

(assert (=> b!549550 (= e!332259 true)))

(assert (=> b!549550 (= (rule!1749 (_1!3490 (v!16199 lt!231346))) (rule!1749 token!491))))

(declare-fun lt!231376 () Unit!9588)

(declare-fun lemmaSameIndexThenSameElement!2 (List!5437 Rule!1854 Rule!1854) Unit!9588)

(assert (=> b!549550 (= lt!231376 (lemmaSameIndexThenSameElement!2 rules!3103 (rule!1749 (_1!3490 (v!16199 lt!231346))) (rule!1749 token!491)))))

(declare-fun lt!231359 () Unit!9588)

(declare-fun e!332282 () Unit!9588)

(assert (=> b!549550 (= lt!231359 e!332282)))

(declare-fun c!103407 () Bool)

(assert (=> b!549550 (= c!103407 (not (= (rule!1749 (_1!3490 (v!16199 lt!231346))) (rule!1749 token!491))))))

(declare-fun e!332258 () Bool)

(assert (=> b!549551 (= e!332258 (and tp!174034 tp!174032))))

(declare-fun b!549552 () Bool)

(assert (=> b!549552 (= e!332282 e!332263)))

(declare-fun lt!231350 () Int)

(declare-fun getIndex!28 (List!5437 Rule!1854) Int)

(assert (=> b!549552 (= lt!231350 (getIndex!28 rules!3103 (rule!1749 (_1!3490 (v!16199 lt!231346)))))))

(declare-fun lt!231360 () Int)

(assert (=> b!549552 (= lt!231360 (getIndex!28 rules!3103 (rule!1749 token!491)))))

(declare-fun c!103408 () Bool)

(assert (=> b!549552 (= c!103408 (< lt!231350 lt!231360))))

(declare-fun lt!231381 () Unit!9588)

(assert (=> b!549552 (= lt!231381 e!332286)))

(declare-fun c!103410 () Bool)

(assert (=> b!549552 (= c!103410 (> lt!231350 lt!231360))))

(declare-fun b!549553 () Bool)

(assert (=> b!549553 (= e!332283 (and (= (size!4344 (_1!3490 (v!16199 lt!231346))) lt!231356) (= (originalCharacters!1066 (_1!3490 (v!16199 lt!231346))) lt!231340) (= lt!231373 (tuple2!6453 (Token!1791 lt!231379 (rule!1749 (_1!3490 (v!16199 lt!231346))) lt!231356 lt!231340) lt!231344))))))

(declare-fun b!549554 () Bool)

(assert (=> b!549554 (= e!332267 e!332285)))

(declare-fun res!235340 () Bool)

(assert (=> b!549554 (=> (not res!235340) (not e!332285))))

(assert (=> b!549554 (= res!235340 (isDefined!1189 lt!231365))))

(assert (=> b!549554 (= lt!231365 (maxPrefix!611 thiss!22590 rules!3103 lt!231378))))

(assert (=> b!549554 (= lt!231378 (++!1515 input!2705 suffix!1342))))

(declare-fun b!549555 () Bool)

(declare-fun Unit!9595 () Unit!9588)

(assert (=> b!549555 (= e!332286 Unit!9595)))

(declare-fun b!549556 () Bool)

(declare-fun e!332268 () Bool)

(assert (=> b!549556 (= e!332268 false)))

(declare-fun tp!174038 () Bool)

(declare-fun e!332260 () Bool)

(declare-fun b!549557 () Bool)

(assert (=> b!549557 (= e!332260 (and tp!174038 (inv!6803 (tag!1289 (rule!1749 token!491))) (inv!6806 (transformation!1027 (rule!1749 token!491))) e!332258))))

(declare-fun b!549558 () Bool)

(declare-fun e!332272 () Bool)

(declare-fun tp!174037 () Bool)

(assert (=> b!549558 (= e!332272 (and tp_is_empty!3077 tp!174037))))

(declare-fun b!549559 () Bool)

(declare-fun Unit!9596 () Unit!9588)

(assert (=> b!549559 (= e!332265 Unit!9596)))

(assert (=> b!549559 false))

(declare-fun b!549560 () Bool)

(declare-fun res!235326 () Bool)

(assert (=> b!549560 (=> res!235326 e!332259)))

(assert (=> b!549560 (= res!235326 (not (contains!1269 rules!3103 (rule!1749 token!491))))))

(declare-fun b!549561 () Bool)

(declare-fun Unit!9597 () Unit!9588)

(assert (=> b!549561 (= e!332282 Unit!9597)))

(declare-fun lt!231347 () TokenValue!1051)

(declare-fun lt!231345 () List!5436)

(declare-fun b!549562 () Bool)

(assert (=> b!549562 (= e!332257 (and (= (size!4344 token!491) lt!231358) (= (originalCharacters!1066 token!491) lt!231341) (= (tuple2!6453 token!491 suffix!1342) (tuple2!6453 (Token!1791 lt!231347 (rule!1749 token!491) lt!231358 lt!231341) lt!231345))))))

(declare-fun b!549563 () Bool)

(declare-fun res!235321 () Bool)

(assert (=> b!549563 (=> (not res!235321) (not e!332266))))

(declare-fun rulesInvariant!876 (LexerInterface!913 List!5437) Bool)

(assert (=> b!549563 (= res!235321 (rulesInvariant!876 thiss!22590 rules!3103))))

(declare-fun b!549564 () Bool)

(assert (=> b!549564 (= e!332277 e!332259)))

(declare-fun res!235329 () Bool)

(assert (=> b!549564 (=> res!235329 e!332259)))

(assert (=> b!549564 (= res!235329 (or (not (= lt!231356 lt!231358)) (not (= lt!231348 input!2705)) (not (= lt!231348 lt!231341))))))

(declare-fun lt!231372 () Unit!9588)

(declare-fun lt!231354 () BalanceConc!3496)

(declare-fun lemmaSemiInverse!156 (TokenValueInjection!1870 BalanceConc!3496) Unit!9588)

(assert (=> b!549564 (= lt!231372 (lemmaSemiInverse!156 (transformation!1027 (rule!1749 token!491)) lt!231354))))

(declare-fun lt!231363 () Unit!9588)

(assert (=> b!549564 (= lt!231363 (lemmaSemiInverse!156 (transformation!1027 (rule!1749 (_1!3490 (v!16199 lt!231346)))) lt!231367))))

(declare-fun lt!231375 () Unit!9588)

(assert (=> b!549564 (= lt!231375 e!332273)))

(declare-fun c!103409 () Bool)

(assert (=> b!549564 (= c!103409 (< lt!231356 lt!231358))))

(assert (=> b!549564 e!332275))

(declare-fun res!235327 () Bool)

(assert (=> b!549564 (=> (not res!235327) (not e!332275))))

(declare-fun maxPrefixOneRule!326 (LexerInterface!913 Rule!1854 List!5436) Option!1377)

(assert (=> b!549564 (= res!235327 (= (maxPrefixOneRule!326 thiss!22590 (rule!1749 token!491) lt!231378) (Some!1376 (tuple2!6453 (Token!1791 lt!231347 (rule!1749 token!491) lt!231358 lt!231341) suffix!1342))))))

(declare-fun lt!231351 () Unit!9588)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!78 (LexerInterface!913 List!5437 List!5436 List!5436 List!5436 Rule!1854) Unit!9588)

(assert (=> b!549564 (= lt!231351 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!78 thiss!22590 rules!3103 lt!231341 lt!231378 suffix!1342 (rule!1749 token!491)))))

(assert (=> b!549564 (= (maxPrefixOneRule!326 thiss!22590 (rule!1749 (_1!3490 (v!16199 lt!231346))) input!2705) (Some!1376 (tuple2!6453 (Token!1791 lt!231379 (rule!1749 (_1!3490 (v!16199 lt!231346))) lt!231356 lt!231340) (_2!3490 (v!16199 lt!231346)))))))

(declare-fun lt!231355 () Unit!9588)

(assert (=> b!549564 (= lt!231355 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!78 thiss!22590 rules!3103 lt!231340 input!2705 (_2!3490 (v!16199 lt!231346)) (rule!1749 (_1!3490 (v!16199 lt!231346)))))))

(assert (=> b!549564 e!332257))

(declare-fun res!235342 () Bool)

(assert (=> b!549564 (=> (not res!235342) (not e!332257))))

(assert (=> b!549564 (= res!235342 (= (value!34136 token!491) lt!231347))))

(assert (=> b!549564 (= lt!231347 (apply!1302 (transformation!1027 (rule!1749 token!491)) lt!231354))))

(assert (=> b!549564 (= lt!231354 (seqFromList!1225 lt!231341))))

(assert (=> b!549564 (= suffix!1342 lt!231345)))

(declare-fun lt!231362 () Unit!9588)

(assert (=> b!549564 (= lt!231362 (lemmaSamePrefixThenSameSuffix!396 lt!231341 suffix!1342 lt!231341 lt!231345 lt!231378))))

(assert (=> b!549564 (= lt!231345 (getSuffix!192 lt!231378 lt!231341))))

(declare-fun tp!174033 () Bool)

(declare-fun b!549565 () Bool)

(declare-fun e!332261 () Bool)

(declare-fun inv!21 (TokenValue!1051) Bool)

(assert (=> b!549565 (= e!332261 (and (inv!21 (value!34136 token!491)) e!332260 tp!174033))))

(declare-fun res!235337 () Bool)

(assert (=> start!50832 (=> (not res!235337) (not e!332266))))

(assert (=> start!50832 (= res!235337 ((_ is Lexer!911) thiss!22590))))

(assert (=> start!50832 e!332266))

(assert (=> start!50832 e!332281))

(assert (=> start!50832 e!332255))

(declare-fun inv!6807 (Token!1790) Bool)

(assert (=> start!50832 (and (inv!6807 token!491) e!332261)))

(assert (=> start!50832 true))

(assert (=> start!50832 e!332272))

(declare-fun b!549566 () Bool)

(declare-fun Unit!9598 () Unit!9588)

(assert (=> b!549566 (= e!332273 Unit!9598)))

(declare-fun lt!231377 () Unit!9588)

(assert (=> b!549566 (= lt!231377 (lemmaSemiInverse!156 (transformation!1027 (rule!1749 (_1!3490 (v!16199 lt!231346)))) lt!231367))))

(declare-fun lt!231343 () Unit!9588)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!32 (LexerInterface!913 List!5437 Rule!1854 List!5436 List!5436 List!5436 Rule!1854) Unit!9588)

(assert (=> b!549566 (= lt!231343 (lemmaMaxPrefixOutputsMaxPrefix!32 thiss!22590 rules!3103 (rule!1749 (_1!3490 (v!16199 lt!231346))) lt!231340 input!2705 input!2705 (rule!1749 token!491)))))

(declare-fun res!235328 () Bool)

(assert (=> b!549566 (= res!235328 (not (matchR!520 (regex!1027 (rule!1749 token!491)) input!2705)))))

(assert (=> b!549566 (=> (not res!235328) (not e!332268))))

(assert (=> b!549566 e!332268))

(declare-fun b!549567 () Bool)

(declare-fun res!235341 () Bool)

(assert (=> b!549567 (=> (not res!235341) (not e!332266))))

(assert (=> b!549567 (= res!235341 (not (isEmpty!3916 input!2705)))))

(declare-fun b!549568 () Bool)

(assert (=> b!549568 (= e!332279 false)))

(declare-fun b!549569 () Bool)

(declare-fun res!235323 () Bool)

(assert (=> b!549569 (=> (not res!235323) (not e!332266))))

(declare-fun isEmpty!3917 (List!5437) Bool)

(assert (=> b!549569 (= res!235323 (not (isEmpty!3917 rules!3103)))))

(assert (= (and start!50832 res!235337) b!549569))

(assert (= (and b!549569 res!235323) b!549563))

(assert (= (and b!549563 res!235321) b!549567))

(assert (= (and b!549567 res!235341) b!549548))

(assert (= (and b!549548 res!235338) b!549554))

(assert (= (and b!549554 res!235340) b!549531))

(assert (= (and b!549531 res!235335) b!549539))

(assert (= (and b!549539 res!235336) b!549546))

(assert (= (and b!549546 res!235333) b!549533))

(assert (= (and b!549533 c!103411) b!549559))

(assert (= (and b!549533 (not c!103411)) b!549536))

(assert (= (and b!549533 res!235322) b!549549))

(assert (= (and b!549549 res!235331) b!549553))

(assert (= (and b!549533 (not res!235325)) b!549564))

(assert (= (and b!549564 res!235342) b!549545))

(assert (= (and b!549545 res!235330) b!549562))

(assert (= (and b!549564 res!235327) b!549535))

(assert (= (and b!549535 (not res!235339)) b!549532))

(assert (= (and b!549532 res!235320) b!549527))

(assert (= (and b!549527 res!235319) b!549538))

(assert (= (and b!549564 c!103409) b!549566))

(assert (= (and b!549564 (not c!103409)) b!549529))

(assert (= (and b!549566 res!235328) b!549556))

(assert (= (and b!549564 (not res!235329)) b!549542))

(assert (= (and b!549542 (not res!235324)) b!549530))

(assert (= (and b!549530 (not res!235343)) b!549534))

(assert (= (and b!549534 (not res!235332)) b!549560))

(assert (= (and b!549560 (not res!235326)) b!549550))

(assert (= (and b!549550 c!103407) b!549552))

(assert (= (and b!549550 (not c!103407)) b!549561))

(assert (= (and b!549552 c!103408) b!549537))

(assert (= (and b!549552 (not c!103408)) b!549555))

(assert (= (and b!549537 res!235344) b!549526))

(assert (= (and b!549552 c!103410) b!549540))

(assert (= (and b!549552 (not c!103410)) b!549547))

(assert (= (and b!549540 res!235334) b!549568))

(assert (= (and start!50832 ((_ is Cons!5426) suffix!1342)) b!549541))

(assert (= b!549543 b!549544))

(assert (= b!549528 b!549543))

(assert (= (and start!50832 ((_ is Cons!5427) rules!3103)) b!549528))

(assert (= b!549557 b!549551))

(assert (= b!549565 b!549557))

(assert (= start!50832 b!549565))

(assert (= (and start!50832 ((_ is Cons!5426) input!2705)) b!549558))

(declare-fun m!798733 () Bool)

(assert (=> b!549567 m!798733))

(declare-fun m!798735 () Bool)

(assert (=> b!549554 m!798735))

(declare-fun m!798737 () Bool)

(assert (=> b!549554 m!798737))

(declare-fun m!798739 () Bool)

(assert (=> b!549554 m!798739))

(declare-fun m!798741 () Bool)

(assert (=> b!549539 m!798741))

(declare-fun m!798743 () Bool)

(assert (=> b!549566 m!798743))

(declare-fun m!798745 () Bool)

(assert (=> b!549566 m!798745))

(declare-fun m!798747 () Bool)

(assert (=> b!549566 m!798747))

(declare-fun m!798749 () Bool)

(assert (=> b!549564 m!798749))

(declare-fun m!798751 () Bool)

(assert (=> b!549564 m!798751))

(declare-fun m!798753 () Bool)

(assert (=> b!549564 m!798753))

(declare-fun m!798755 () Bool)

(assert (=> b!549564 m!798755))

(declare-fun m!798757 () Bool)

(assert (=> b!549564 m!798757))

(declare-fun m!798759 () Bool)

(assert (=> b!549564 m!798759))

(assert (=> b!549564 m!798743))

(declare-fun m!798761 () Bool)

(assert (=> b!549564 m!798761))

(declare-fun m!798763 () Bool)

(assert (=> b!549564 m!798763))

(declare-fun m!798765 () Bool)

(assert (=> b!549564 m!798765))

(declare-fun m!798767 () Bool)

(assert (=> b!549533 m!798767))

(declare-fun m!798769 () Bool)

(assert (=> b!549533 m!798769))

(declare-fun m!798771 () Bool)

(assert (=> b!549533 m!798771))

(declare-fun m!798773 () Bool)

(assert (=> b!549533 m!798773))

(declare-fun m!798775 () Bool)

(assert (=> b!549533 m!798775))

(declare-fun m!798777 () Bool)

(assert (=> b!549533 m!798777))

(declare-fun m!798779 () Bool)

(assert (=> b!549533 m!798779))

(declare-fun m!798781 () Bool)

(assert (=> b!549533 m!798781))

(declare-fun m!798783 () Bool)

(assert (=> b!549533 m!798783))

(declare-fun m!798785 () Bool)

(assert (=> b!549533 m!798785))

(declare-fun m!798787 () Bool)

(assert (=> b!549533 m!798787))

(declare-fun m!798789 () Bool)

(assert (=> b!549533 m!798789))

(declare-fun m!798791 () Bool)

(assert (=> b!549533 m!798791))

(declare-fun m!798793 () Bool)

(assert (=> b!549533 m!798793))

(declare-fun m!798795 () Bool)

(assert (=> b!549533 m!798795))

(declare-fun m!798797 () Bool)

(assert (=> b!549533 m!798797))

(declare-fun m!798799 () Bool)

(assert (=> b!549533 m!798799))

(declare-fun m!798801 () Bool)

(assert (=> b!549533 m!798801))

(declare-fun m!798803 () Bool)

(assert (=> b!549533 m!798803))

(declare-fun m!798805 () Bool)

(assert (=> b!549533 m!798805))

(declare-fun m!798807 () Bool)

(assert (=> b!549533 m!798807))

(assert (=> b!549533 m!798803))

(declare-fun m!798809 () Bool)

(assert (=> b!549533 m!798809))

(declare-fun m!798811 () Bool)

(assert (=> b!549533 m!798811))

(declare-fun m!798813 () Bool)

(assert (=> b!549533 m!798813))

(declare-fun m!798815 () Bool)

(assert (=> b!549533 m!798815))

(declare-fun m!798817 () Bool)

(assert (=> b!549533 m!798817))

(declare-fun m!798819 () Bool)

(assert (=> b!549533 m!798819))

(declare-fun m!798821 () Bool)

(assert (=> b!549563 m!798821))

(declare-fun m!798823 () Bool)

(assert (=> b!549545 m!798823))

(declare-fun m!798825 () Bool)

(assert (=> b!549537 m!798825))

(declare-fun m!798827 () Bool)

(assert (=> b!549537 m!798827))

(declare-fun m!798829 () Bool)

(assert (=> b!549552 m!798829))

(declare-fun m!798831 () Bool)

(assert (=> b!549552 m!798831))

(declare-fun m!798833 () Bool)

(assert (=> b!549543 m!798833))

(declare-fun m!798835 () Bool)

(assert (=> b!549543 m!798835))

(declare-fun m!798837 () Bool)

(assert (=> b!549548 m!798837))

(assert (=> b!549548 m!798837))

(declare-fun m!798839 () Bool)

(assert (=> b!549548 m!798839))

(declare-fun m!798841 () Bool)

(assert (=> b!549569 m!798841))

(declare-fun m!798843 () Bool)

(assert (=> b!549565 m!798843))

(declare-fun m!798845 () Bool)

(assert (=> b!549532 m!798845))

(declare-fun m!798847 () Bool)

(assert (=> b!549534 m!798847))

(declare-fun m!798849 () Bool)

(assert (=> b!549557 m!798849))

(declare-fun m!798851 () Bool)

(assert (=> b!549557 m!798851))

(declare-fun m!798853 () Bool)

(assert (=> b!549531 m!798853))

(declare-fun m!798855 () Bool)

(assert (=> start!50832 m!798855))

(declare-fun m!798857 () Bool)

(assert (=> b!549549 m!798857))

(declare-fun m!798859 () Bool)

(assert (=> b!549542 m!798859))

(declare-fun m!798861 () Bool)

(assert (=> b!549527 m!798861))

(assert (=> b!549540 m!798747))

(declare-fun m!798863 () Bool)

(assert (=> b!549540 m!798863))

(declare-fun m!798865 () Bool)

(assert (=> b!549546 m!798865))

(declare-fun m!798867 () Bool)

(assert (=> b!549550 m!798867))

(declare-fun m!798869 () Bool)

(assert (=> b!549560 m!798869))

(check-sat (not b!549539) (not b!549560) (not b!549567) (not b_next!15333) (not b!549558) (not b!549545) (not b!549537) (not b!549541) tp_is_empty!3077 (not b!549528) (not b!549552) (not b!549540) (not b!549543) b_and!53651 (not b_next!15329) (not b!549554) b_and!53653 (not b!549564) (not b!549542) (not b!549548) (not b_next!15331) (not b!549563) (not b!549532) b_and!53655 (not b_next!15335) b_and!53657 (not b!549534) (not b!549550) (not b!549527) (not b!549531) (not start!50832) (not b!549549) (not b!549565) (not b!549557) (not b!549533) (not b!549569) (not b!549546) (not b!549566))
(check-sat (not b_next!15329) b_and!53653 (not b_next!15331) (not b_next!15333) b_and!53655 b_and!53651 (not b_next!15335) b_and!53657)

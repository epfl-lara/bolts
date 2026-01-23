; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53908 () Bool)

(assert start!53908)

(declare-fun b!581521 () Bool)

(declare-fun b_free!16149 () Bool)

(declare-fun b_next!16165 () Bool)

(assert (=> b!581521 (= b_free!16149 (not b_next!16165))))

(declare-fun tp!181547 () Bool)

(declare-fun b_and!57259 () Bool)

(assert (=> b!581521 (= tp!181547 b_and!57259)))

(declare-fun b_free!16151 () Bool)

(declare-fun b_next!16167 () Bool)

(assert (=> b!581521 (= b_free!16151 (not b_next!16167))))

(declare-fun tp!181541 () Bool)

(declare-fun b_and!57261 () Bool)

(assert (=> b!581521 (= tp!181541 b_and!57261)))

(declare-fun b!581522 () Bool)

(declare-fun b_free!16153 () Bool)

(declare-fun b_next!16169 () Bool)

(assert (=> b!581522 (= b_free!16153 (not b_next!16169))))

(declare-fun tp!181548 () Bool)

(declare-fun b_and!57263 () Bool)

(assert (=> b!581522 (= tp!181548 b_and!57263)))

(declare-fun b_free!16155 () Bool)

(declare-fun b_next!16171 () Bool)

(assert (=> b!581522 (= b_free!16155 (not b_next!16171))))

(declare-fun tp!181544 () Bool)

(declare-fun b_and!57265 () Bool)

(assert (=> b!581522 (= tp!181544 b_and!57265)))

(declare-fun b!581506 () Bool)

(declare-fun e!351401 () Bool)

(declare-fun e!351420 () Bool)

(assert (=> b!581506 (= e!351401 e!351420)))

(declare-fun res!250316 () Bool)

(assert (=> b!581506 (=> (not res!250316) (not e!351420))))

(declare-datatypes ((C!3804 0))(
  ( (C!3805 (val!2128 Int)) )
))
(declare-datatypes ((List!5708 0))(
  ( (Nil!5698) (Cons!5698 (h!11099 C!3804) (t!78149 List!5708)) )
))
(declare-fun suffix!1342 () List!5708)

(declare-datatypes ((Regex!1441 0))(
  ( (ElementMatch!1441 (c!108881 C!3804)) (Concat!2572 (regOne!3394 Regex!1441) (regTwo!3394 Regex!1441)) (EmptyExpr!1441) (Star!1441 (reg!1770 Regex!1441)) (EmptyLang!1441) (Union!1441 (regOne!3395 Regex!1441) (regTwo!3395 Regex!1441)) )
))
(declare-datatypes ((List!5709 0))(
  ( (Nil!5699) (Cons!5699 (h!11100 (_ BitVec 16)) (t!78150 List!5709)) )
))
(declare-datatypes ((IArray!3649 0))(
  ( (IArray!3650 (innerList!1882 List!5708)) )
))
(declare-datatypes ((Conc!1824 0))(
  ( (Node!1824 (left!4654 Conc!1824) (right!4984 Conc!1824) (csize!3878 Int) (cheight!2035 Int)) (Leaf!2885 (xs!4461 IArray!3649) (csize!3879 Int)) (Empty!1824) )
))
(declare-datatypes ((BalanceConc!3656 0))(
  ( (BalanceConc!3657 (c!108882 Conc!1824)) )
))
(declare-datatypes ((TokenValue!1131 0))(
  ( (FloatLiteralValue!2262 (text!8362 List!5709)) (TokenValueExt!1130 (__x!4160 Int)) (Broken!5655 (value!36390 List!5709)) (Object!1140) (End!1131) (Def!1131) (Underscore!1131) (Match!1131) (Else!1131) (Error!1131) (Case!1131) (If!1131) (Extends!1131) (Abstract!1131) (Class!1131) (Val!1131) (DelimiterValue!2262 (del!1191 List!5709)) (KeywordValue!1137 (value!36391 List!5709)) (CommentValue!2262 (value!36392 List!5709)) (WhitespaceValue!2262 (value!36393 List!5709)) (IndentationValue!1131 (value!36394 List!5709)) (String!7398) (Int32!1131) (Broken!5656 (value!36395 List!5709)) (Boolean!1132) (Unit!10349) (OperatorValue!1134 (op!1191 List!5709)) (IdentifierValue!2262 (value!36396 List!5709)) (IdentifierValue!2263 (value!36397 List!5709)) (WhitespaceValue!2263 (value!36398 List!5709)) (True!2262) (False!2262) (Broken!5657 (value!36399 List!5709)) (Broken!5658 (value!36400 List!5709)) (True!2263) (RightBrace!1131) (RightBracket!1131) (Colon!1131) (Null!1131) (Comma!1131) (LeftBracket!1131) (False!2263) (LeftBrace!1131) (ImaginaryLiteralValue!1131 (text!8363 List!5709)) (StringLiteralValue!3393 (value!36401 List!5709)) (EOFValue!1131 (value!36402 List!5709)) (IdentValue!1131 (value!36403 List!5709)) (DelimiterValue!2263 (value!36404 List!5709)) (DedentValue!1131 (value!36405 List!5709)) (NewLineValue!1131 (value!36406 List!5709)) (IntegerValue!3393 (value!36407 (_ BitVec 32)) (text!8364 List!5709)) (IntegerValue!3394 (value!36408 Int) (text!8365 List!5709)) (Times!1131) (Or!1131) (Equal!1131) (Minus!1131) (Broken!5659 (value!36409 List!5709)) (And!1131) (Div!1131) (LessEqual!1131) (Mod!1131) (Concat!2573) (Not!1131) (Plus!1131) (SpaceValue!1131 (value!36410 List!5709)) (IntegerValue!3395 (value!36411 Int) (text!8366 List!5709)) (StringLiteralValue!3394 (text!8367 List!5709)) (FloatLiteralValue!2263 (text!8368 List!5709)) (BytesLiteralValue!1131 (value!36412 List!5709)) (CommentValue!2263 (value!36413 List!5709)) (StringLiteralValue!3395 (value!36414 List!5709)) (ErrorTokenValue!1131 (msg!1192 List!5709)) )
))
(declare-datatypes ((String!7399 0))(
  ( (String!7400 (value!36415 String)) )
))
(declare-datatypes ((TokenValueInjection!2030 0))(
  ( (TokenValueInjection!2031 (toValue!1974 Int) (toChars!1833 Int)) )
))
(declare-datatypes ((Rule!2014 0))(
  ( (Rule!2015 (regex!1107 Regex!1441) (tag!1369 String!7399) (isSeparator!1107 Bool) (transformation!1107 TokenValueInjection!2030)) )
))
(declare-datatypes ((Token!1950 0))(
  ( (Token!1951 (value!36416 TokenValue!1131) (rule!1863 Rule!2014) (size!4538 Int) (originalCharacters!1146 List!5708)) )
))
(declare-datatypes ((tuple2!6680 0))(
  ( (tuple2!6681 (_1!3604 Token!1950) (_2!3604 List!5708)) )
))
(declare-fun lt!246579 () tuple2!6680)

(declare-fun token!491 () Token!1950)

(assert (=> b!581506 (= res!250316 (and (= (_1!3604 lt!246579) token!491) (= (_2!3604 lt!246579) suffix!1342)))))

(declare-datatypes ((Option!1458 0))(
  ( (None!1457) (Some!1457 (v!16324 tuple2!6680)) )
))
(declare-fun lt!246586 () Option!1458)

(declare-fun get!2175 (Option!1458) tuple2!6680)

(assert (=> b!581506 (= lt!246579 (get!2175 lt!246586))))

(declare-fun e!351417 () Bool)

(declare-fun tp!181550 () Bool)

(declare-fun e!351418 () Bool)

(declare-fun b!581507 () Bool)

(declare-fun inv!21 (TokenValue!1131) Bool)

(assert (=> b!581507 (= e!351417 (and (inv!21 (value!36416 token!491)) e!351418 tp!181550))))

(declare-fun b!581508 () Bool)

(declare-fun e!351421 () Bool)

(assert (=> b!581508 e!351421))

(declare-fun res!250311 () Bool)

(assert (=> b!581508 (=> (not res!250311) (not e!351421))))

(declare-fun lt!246581 () Option!1458)

(declare-fun input!2705 () List!5708)

(declare-fun matchR!588 (Regex!1441 List!5708) Bool)

(assert (=> b!581508 (= res!250311 (not (matchR!588 (regex!1107 (rule!1863 (_1!3604 (v!16324 lt!246581)))) input!2705)))))

(declare-datatypes ((LexerInterface!993 0))(
  ( (LexerInterfaceExt!990 (__x!4161 Int)) (Lexer!991) )
))
(declare-fun thiss!22590 () LexerInterface!993)

(declare-datatypes ((Unit!10350 0))(
  ( (Unit!10351) )
))
(declare-fun lt!246570 () Unit!10350)

(declare-datatypes ((List!5710 0))(
  ( (Nil!5700) (Cons!5700 (h!11101 Rule!2014) (t!78151 List!5710)) )
))
(declare-fun rules!3103 () List!5710)

(declare-fun lt!246599 () List!5708)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!22 (LexerInterface!993 List!5710 Rule!2014 List!5708 List!5708 Rule!2014) Unit!10350)

(assert (=> b!581508 (= lt!246570 (lemmaMaxPrefNoSmallerRuleMatches!22 thiss!22590 rules!3103 (rule!1863 token!491) input!2705 lt!246599 (rule!1863 (_1!3604 (v!16324 lt!246581)))))))

(declare-fun e!351407 () Unit!10350)

(declare-fun Unit!10352 () Unit!10350)

(assert (=> b!581508 (= e!351407 Unit!10352)))

(declare-fun b!581509 () Bool)

(declare-fun e!351404 () Bool)

(declare-fun e!351408 () Bool)

(assert (=> b!581509 (= e!351404 e!351408)))

(declare-fun res!250299 () Bool)

(assert (=> b!581509 (=> res!250299 e!351408)))

(declare-fun lt!246583 () Int)

(declare-fun lt!246580 () Int)

(assert (=> b!581509 (= res!250299 (>= lt!246583 lt!246580))))

(declare-fun b!581510 () Bool)

(declare-fun res!250302 () Bool)

(declare-fun e!351413 () Bool)

(assert (=> b!581510 (=> (not res!250302) (not e!351413))))

(declare-fun isEmpty!4115 (List!5708) Bool)

(assert (=> b!581510 (= res!250302 (not (isEmpty!4115 input!2705)))))

(declare-fun b!581511 () Bool)

(declare-fun e!351415 () Bool)

(assert (=> b!581511 (= e!351415 false)))

(declare-fun b!581512 () Bool)

(declare-fun res!250312 () Bool)

(declare-fun e!351391 () Bool)

(assert (=> b!581512 (=> (not res!250312) (not e!351391))))

(declare-fun size!4539 (List!5708) Int)

(assert (=> b!581512 (= res!250312 (= (size!4538 token!491) (size!4539 (originalCharacters!1146 token!491))))))

(declare-fun b!581513 () Bool)

(declare-fun res!250313 () Bool)

(declare-fun e!351406 () Bool)

(assert (=> b!581513 (=> (not res!250313) (not e!351406))))

(assert (=> b!581513 (= res!250313 (= (size!4538 (_1!3604 (v!16324 lt!246581))) (size!4539 (originalCharacters!1146 (_1!3604 (v!16324 lt!246581))))))))

(declare-fun b!581514 () Bool)

(declare-fun e!351410 () Bool)

(assert (=> b!581514 (= e!351410 (= (size!4538 (_1!3604 (v!16324 lt!246581))) (size!4538 token!491)))))

(assert (=> b!581514 (= (rule!1863 (_1!3604 (v!16324 lt!246581))) (rule!1863 token!491))))

(declare-fun lt!246568 () Unit!10350)

(declare-fun lemmaSameIndexThenSameElement!12 (List!5710 Rule!2014 Rule!2014) Unit!10350)

(assert (=> b!581514 (= lt!246568 (lemmaSameIndexThenSameElement!12 rules!3103 (rule!1863 (_1!3604 (v!16324 lt!246581))) (rule!1863 token!491)))))

(declare-fun lt!246567 () Unit!10350)

(declare-fun e!351416 () Unit!10350)

(assert (=> b!581514 (= lt!246567 e!351416)))

(declare-fun c!108877 () Bool)

(assert (=> b!581514 (= c!108877 (not (= (rule!1863 (_1!3604 (v!16324 lt!246581))) (rule!1863 token!491))))))

(declare-fun b!581515 () Bool)

(declare-fun e!351411 () Bool)

(declare-fun tp_is_empty!3237 () Bool)

(declare-fun tp!181549 () Bool)

(assert (=> b!581515 (= e!351411 (and tp_is_empty!3237 tp!181549))))

(declare-fun b!581516 () Bool)

(declare-fun e!351395 () Bool)

(declare-fun e!351396 () Bool)

(assert (=> b!581516 (= e!351395 e!351396)))

(declare-fun res!250304 () Bool)

(assert (=> b!581516 (=> (not res!250304) (not e!351396))))

(declare-fun lt!246589 () List!5708)

(assert (=> b!581516 (= res!250304 (= lt!246589 lt!246599))))

(declare-fun lt!246603 () List!5708)

(declare-fun ++!1595 (List!5708 List!5708) List!5708)

(assert (=> b!581516 (= lt!246589 (++!1595 lt!246603 suffix!1342))))

(declare-fun b!581517 () Bool)

(declare-fun e!351390 () Bool)

(assert (=> b!581517 (= e!351390 false)))

(declare-fun b!581518 () Bool)

(declare-fun res!250300 () Bool)

(assert (=> b!581518 (=> res!250300 e!351410)))

(declare-fun lt!246574 () List!5708)

(assert (=> b!581518 (= res!250300 (or (not (= lt!246574 lt!246603)) (not (= (originalCharacters!1146 (_1!3604 (v!16324 lt!246581))) (originalCharacters!1146 token!491)))))))

(declare-fun b!581519 () Bool)

(declare-fun Unit!10353 () Unit!10350)

(assert (=> b!581519 (= e!351407 Unit!10353)))

(declare-fun lt!246578 () List!5708)

(declare-fun lt!246601 () TokenValue!1131)

(declare-fun b!581520 () Bool)

(assert (=> b!581520 (= e!351391 (and (= (size!4538 token!491) lt!246580) (= (originalCharacters!1146 token!491) lt!246603) (= (tuple2!6681 token!491 suffix!1342) (tuple2!6681 (Token!1951 lt!246601 (rule!1863 token!491) lt!246580 lt!246603) lt!246578))))))

(declare-fun e!351412 () Bool)

(assert (=> b!581521 (= e!351412 (and tp!181547 tp!181541))))

(declare-fun e!351393 () Bool)

(assert (=> b!581522 (= e!351393 (and tp!181548 tp!181544))))

(declare-fun b!581523 () Bool)

(declare-fun res!250318 () Bool)

(assert (=> b!581523 (=> (not res!250318) (not e!351413))))

(declare-fun isEmpty!4116 (List!5710) Bool)

(assert (=> b!581523 (= res!250318 (not (isEmpty!4116 rules!3103)))))

(declare-fun b!581524 () Bool)

(declare-fun e!351409 () Bool)

(declare-fun lt!246596 () List!5708)

(assert (=> b!581524 (= e!351409 (= lt!246596 (_2!3604 (v!16324 lt!246581))))))

(declare-fun res!250295 () Bool)

(assert (=> start!53908 (=> (not res!250295) (not e!351413))))

(get-info :version)

(assert (=> start!53908 (= res!250295 ((_ is Lexer!991) thiss!22590))))

(assert (=> start!53908 e!351413))

(assert (=> start!53908 e!351411))

(declare-fun e!351419 () Bool)

(assert (=> start!53908 e!351419))

(declare-fun inv!7183 (Token!1950) Bool)

(assert (=> start!53908 (and (inv!7183 token!491) e!351417)))

(assert (=> start!53908 true))

(declare-fun e!351398 () Bool)

(assert (=> start!53908 e!351398))

(declare-fun b!581525 () Bool)

(declare-fun Unit!10354 () Unit!10350)

(assert (=> b!581525 (= e!351416 Unit!10354)))

(declare-fun b!581526 () Bool)

(declare-fun e!351394 () Bool)

(declare-fun tp!181546 () Bool)

(assert (=> b!581526 (= e!351419 (and e!351394 tp!181546))))

(declare-fun b!581527 () Bool)

(declare-fun res!250319 () Bool)

(assert (=> b!581527 (=> (not res!250319) (not e!351413))))

(declare-fun rulesInvariant!956 (LexerInterface!993 List!5710) Bool)

(assert (=> b!581527 (= res!250319 (rulesInvariant!956 thiss!22590 rules!3103))))

(declare-fun b!581528 () Bool)

(declare-fun tp!181543 () Bool)

(declare-fun inv!7180 (String!7399) Bool)

(declare-fun inv!7184 (TokenValueInjection!2030) Bool)

(assert (=> b!581528 (= e!351418 (and tp!181543 (inv!7180 (tag!1369 (rule!1863 token!491))) (inv!7184 (transformation!1107 (rule!1863 token!491))) e!351393))))

(declare-fun tp!181542 () Bool)

(declare-fun b!581529 () Bool)

(assert (=> b!581529 (= e!351394 (and tp!181542 (inv!7180 (tag!1369 (h!11101 rules!3103))) (inv!7184 (transformation!1107 (h!11101 rules!3103))) e!351412))))

(declare-fun b!581530 () Bool)

(declare-fun e!351392 () Bool)

(assert (=> b!581530 (= e!351392 e!351401)))

(declare-fun res!250320 () Bool)

(assert (=> b!581530 (=> (not res!250320) (not e!351401))))

(declare-fun isDefined!1269 (Option!1458) Bool)

(assert (=> b!581530 (= res!250320 (isDefined!1269 lt!246586))))

(declare-fun maxPrefix!691 (LexerInterface!993 List!5710 List!5708) Option!1458)

(assert (=> b!581530 (= lt!246586 (maxPrefix!691 thiss!22590 rules!3103 lt!246599))))

(assert (=> b!581530 (= lt!246599 (++!1595 input!2705 suffix!1342))))

(declare-fun b!581531 () Bool)

(declare-fun tp!181545 () Bool)

(assert (=> b!581531 (= e!351398 (and tp_is_empty!3237 tp!181545))))

(declare-fun b!581532 () Bool)

(assert (=> b!581532 (= e!351421 false)))

(declare-fun b!581533 () Bool)

(declare-fun res!250310 () Bool)

(assert (=> b!581533 (=> res!250310 e!351410)))

(declare-fun contains!1341 (List!5710 Rule!2014) Bool)

(assert (=> b!581533 (= res!250310 (not (contains!1341 rules!3103 (rule!1863 (_1!3604 (v!16324 lt!246581))))))))

(declare-fun b!581534 () Bool)

(assert (=> b!581534 (= e!351408 e!351409)))

(declare-fun res!250315 () Bool)

(assert (=> b!581534 (=> (not res!250315) (not e!351409))))

(assert (=> b!581534 (= res!250315 (isDefined!1269 lt!246581))))

(declare-fun b!581535 () Bool)

(declare-fun e!351399 () Unit!10350)

(assert (=> b!581535 (= e!351416 e!351399)))

(declare-fun lt!246582 () Int)

(declare-fun getIndex!46 (List!5710 Rule!2014) Int)

(assert (=> b!581535 (= lt!246582 (getIndex!46 rules!3103 (rule!1863 (_1!3604 (v!16324 lt!246581)))))))

(declare-fun lt!246571 () Int)

(assert (=> b!581535 (= lt!246571 (getIndex!46 rules!3103 (rule!1863 token!491)))))

(declare-fun c!108876 () Bool)

(assert (=> b!581535 (= c!108876 (< lt!246582 lt!246571))))

(declare-fun lt!246593 () Unit!10350)

(assert (=> b!581535 (= lt!246593 e!351407)))

(declare-fun c!108879 () Bool)

(assert (=> b!581535 (= c!108879 (> lt!246582 lt!246571))))

(declare-fun b!581536 () Bool)

(declare-fun e!351400 () Unit!10350)

(declare-fun Unit!10355 () Unit!10350)

(assert (=> b!581536 (= e!351400 Unit!10355)))

(declare-fun lt!246575 () Unit!10350)

(declare-fun lt!246598 () BalanceConc!3656)

(declare-fun lemmaSemiInverse!210 (TokenValueInjection!2030 BalanceConc!3656) Unit!10350)

(assert (=> b!581536 (= lt!246575 (lemmaSemiInverse!210 (transformation!1107 (rule!1863 (_1!3604 (v!16324 lt!246581)))) lt!246598))))

(declare-fun lt!246588 () Unit!10350)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!66 (LexerInterface!993 List!5710 Rule!2014 List!5708 List!5708 List!5708 Rule!2014) Unit!10350)

(assert (=> b!581536 (= lt!246588 (lemmaMaxPrefixOutputsMaxPrefix!66 thiss!22590 rules!3103 (rule!1863 (_1!3604 (v!16324 lt!246581))) lt!246574 input!2705 input!2705 (rule!1863 token!491)))))

(declare-fun res!250305 () Bool)

(assert (=> b!581536 (= res!250305 (not (matchR!588 (regex!1107 (rule!1863 token!491)) input!2705)))))

(assert (=> b!581536 (=> (not res!250305) (not e!351390))))

(assert (=> b!581536 e!351390))

(declare-fun b!581537 () Bool)

(declare-fun e!351405 () Unit!10350)

(declare-fun Unit!10356 () Unit!10350)

(assert (=> b!581537 (= e!351405 Unit!10356)))

(declare-fun b!581538 () Bool)

(assert (=> b!581538 (= e!351413 e!351392)))

(declare-fun res!250298 () Bool)

(assert (=> b!581538 (=> (not res!250298) (not e!351392))))

(assert (=> b!581538 (= res!250298 (= lt!246603 input!2705))))

(declare-fun list!2373 (BalanceConc!3656) List!5708)

(declare-fun charsOf!736 (Token!1950) BalanceConc!3656)

(assert (=> b!581538 (= lt!246603 (list!2373 (charsOf!736 token!491)))))

(declare-fun b!581539 () Bool)

(assert (=> b!581539 (= e!351420 e!351395)))

(declare-fun res!250307 () Bool)

(assert (=> b!581539 (=> (not res!250307) (not e!351395))))

(assert (=> b!581539 (= res!250307 ((_ is Some!1457) lt!246581))))

(assert (=> b!581539 (= lt!246581 (maxPrefix!691 thiss!22590 rules!3103 input!2705))))

(declare-fun b!581540 () Bool)

(declare-fun Unit!10357 () Unit!10350)

(assert (=> b!581540 (= e!351400 Unit!10357)))

(declare-fun b!581541 () Bool)

(declare-fun res!250317 () Bool)

(assert (=> b!581541 (=> res!250317 e!351410)))

(assert (=> b!581541 (= res!250317 (not (isEmpty!4115 (_2!3604 (v!16324 lt!246581)))))))

(declare-fun b!581542 () Bool)

(declare-fun Unit!10358 () Unit!10350)

(assert (=> b!581542 (= e!351399 Unit!10358)))

(declare-fun b!581543 () Bool)

(declare-fun res!250314 () Bool)

(assert (=> b!581543 (=> (not res!250314) (not e!351409))))

(assert (=> b!581543 (= res!250314 (= (_1!3604 (get!2175 lt!246581)) (_1!3604 (v!16324 lt!246581))))))

(declare-fun b!581544 () Bool)

(declare-fun Unit!10359 () Unit!10350)

(assert (=> b!581544 (= e!351405 Unit!10359)))

(assert (=> b!581544 false))

(declare-fun lt!246587 () TokenValue!1131)

(declare-fun lt!246604 () tuple2!6680)

(declare-fun b!581545 () Bool)

(assert (=> b!581545 (= e!351406 (and (= (size!4538 (_1!3604 (v!16324 lt!246581))) lt!246583) (= (originalCharacters!1146 (_1!3604 (v!16324 lt!246581))) lt!246574) (= lt!246604 (tuple2!6681 (Token!1951 lt!246587 (rule!1863 (_1!3604 (v!16324 lt!246581))) lt!246583 lt!246574) lt!246596))))))

(declare-fun b!581546 () Bool)

(declare-fun res!250301 () Bool)

(assert (=> b!581546 (=> res!250301 e!351410)))

(assert (=> b!581546 (= res!250301 (not (contains!1341 rules!3103 (rule!1863 token!491))))))

(declare-fun b!581547 () Bool)

(declare-fun e!351397 () Bool)

(assert (=> b!581547 (= e!351396 (not e!351397))))

(declare-fun res!250296 () Bool)

(assert (=> b!581547 (=> res!250296 e!351397)))

(declare-fun isPrefix!741 (List!5708 List!5708) Bool)

(assert (=> b!581547 (= res!250296 (not (isPrefix!741 input!2705 lt!246589)))))

(assert (=> b!581547 (isPrefix!741 lt!246603 lt!246589)))

(declare-fun lt!246607 () Unit!10350)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!588 (List!5708 List!5708) Unit!10350)

(assert (=> b!581547 (= lt!246607 (lemmaConcatTwoListThenFirstIsPrefix!588 lt!246603 suffix!1342))))

(assert (=> b!581547 (isPrefix!741 input!2705 lt!246599)))

(declare-fun lt!246573 () Unit!10350)

(assert (=> b!581547 (= lt!246573 (lemmaConcatTwoListThenFirstIsPrefix!588 input!2705 suffix!1342))))

(assert (=> b!581547 e!351406))

(declare-fun res!250297 () Bool)

(assert (=> b!581547 (=> (not res!250297) (not e!351406))))

(assert (=> b!581547 (= res!250297 (= (value!36416 (_1!3604 (v!16324 lt!246581))) lt!246587))))

(declare-fun apply!1372 (TokenValueInjection!2030 BalanceConc!3656) TokenValue!1131)

(assert (=> b!581547 (= lt!246587 (apply!1372 (transformation!1107 (rule!1863 (_1!3604 (v!16324 lt!246581)))) lt!246598))))

(declare-fun seqFromList!1295 (List!5708) BalanceConc!3656)

(assert (=> b!581547 (= lt!246598 (seqFromList!1295 lt!246574))))

(declare-fun lt!246597 () Unit!10350)

(declare-fun lemmaInv!243 (TokenValueInjection!2030) Unit!10350)

(assert (=> b!581547 (= lt!246597 (lemmaInv!243 (transformation!1107 (rule!1863 token!491))))))

(declare-fun lt!246606 () Unit!10350)

(assert (=> b!581547 (= lt!246606 (lemmaInv!243 (transformation!1107 (rule!1863 (_1!3604 (v!16324 lt!246581))))))))

(declare-fun ruleValid!317 (LexerInterface!993 Rule!2014) Bool)

(assert (=> b!581547 (ruleValid!317 thiss!22590 (rule!1863 token!491))))

(declare-fun lt!246595 () Unit!10350)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!174 (LexerInterface!993 Rule!2014 List!5710) Unit!10350)

(assert (=> b!581547 (= lt!246595 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!174 thiss!22590 (rule!1863 token!491) rules!3103))))

(assert (=> b!581547 (ruleValid!317 thiss!22590 (rule!1863 (_1!3604 (v!16324 lt!246581))))))

(declare-fun lt!246605 () Unit!10350)

(assert (=> b!581547 (= lt!246605 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!174 thiss!22590 (rule!1863 (_1!3604 (v!16324 lt!246581))) rules!3103))))

(assert (=> b!581547 (isPrefix!741 input!2705 input!2705)))

(declare-fun lt!246584 () Unit!10350)

(declare-fun lemmaIsPrefixRefl!479 (List!5708 List!5708) Unit!10350)

(assert (=> b!581547 (= lt!246584 (lemmaIsPrefixRefl!479 input!2705 input!2705))))

(assert (=> b!581547 (= (_2!3604 (v!16324 lt!246581)) lt!246596)))

(declare-fun lt!246577 () Unit!10350)

(declare-fun lemmaSamePrefixThenSameSuffix!464 (List!5708 List!5708 List!5708 List!5708 List!5708) Unit!10350)

(assert (=> b!581547 (= lt!246577 (lemmaSamePrefixThenSameSuffix!464 lt!246574 (_2!3604 (v!16324 lt!246581)) lt!246574 lt!246596 input!2705))))

(declare-fun getSuffix!260 (List!5708 List!5708) List!5708)

(assert (=> b!581547 (= lt!246596 (getSuffix!260 input!2705 lt!246574))))

(declare-fun lt!246565 () List!5708)

(assert (=> b!581547 (isPrefix!741 lt!246574 lt!246565)))

(assert (=> b!581547 (= lt!246565 (++!1595 lt!246574 (_2!3604 (v!16324 lt!246581))))))

(declare-fun lt!246576 () Unit!10350)

(assert (=> b!581547 (= lt!246576 (lemmaConcatTwoListThenFirstIsPrefix!588 lt!246574 (_2!3604 (v!16324 lt!246581))))))

(declare-fun lt!246569 () Unit!10350)

(declare-fun lemmaCharactersSize!174 (Token!1950) Unit!10350)

(assert (=> b!581547 (= lt!246569 (lemmaCharactersSize!174 token!491))))

(declare-fun lt!246602 () Unit!10350)

(assert (=> b!581547 (= lt!246602 (lemmaCharactersSize!174 (_1!3604 (v!16324 lt!246581))))))

(declare-fun lt!246564 () Unit!10350)

(assert (=> b!581547 (= lt!246564 e!351405)))

(declare-fun c!108878 () Bool)

(assert (=> b!581547 (= c!108878 (> lt!246583 lt!246580))))

(assert (=> b!581547 (= lt!246580 (size!4539 lt!246603))))

(assert (=> b!581547 (= lt!246583 (size!4539 lt!246574))))

(assert (=> b!581547 (= lt!246574 (list!2373 (charsOf!736 (_1!3604 (v!16324 lt!246581)))))))

(assert (=> b!581547 (= lt!246581 (Some!1457 lt!246604))))

(assert (=> b!581547 (= lt!246604 (tuple2!6681 (_1!3604 (v!16324 lt!246581)) (_2!3604 (v!16324 lt!246581))))))

(declare-fun lt!246585 () Unit!10350)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!184 (List!5708 List!5708 List!5708 List!5708) Unit!10350)

(assert (=> b!581547 (= lt!246585 (lemmaConcatSameAndSameSizesThenSameLists!184 lt!246603 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!581548 () Bool)

(assert (=> b!581548 e!351415))

(declare-fun res!250308 () Bool)

(assert (=> b!581548 (=> (not res!250308) (not e!351415))))

(assert (=> b!581548 (= res!250308 (not (matchR!588 (regex!1107 (rule!1863 token!491)) input!2705)))))

(declare-fun lt!246608 () Unit!10350)

(assert (=> b!581548 (= lt!246608 (lemmaMaxPrefNoSmallerRuleMatches!22 thiss!22590 rules!3103 (rule!1863 (_1!3604 (v!16324 lt!246581))) input!2705 input!2705 (rule!1863 token!491)))))

(declare-fun Unit!10360 () Unit!10350)

(assert (=> b!581548 (= e!351399 Unit!10360)))

(declare-fun b!581549 () Bool)

(assert (=> b!581549 (= e!351397 e!351410)))

(declare-fun res!250309 () Bool)

(assert (=> b!581549 (=> res!250309 e!351410)))

(assert (=> b!581549 (= res!250309 (or (not (= lt!246583 lt!246580)) (not (= lt!246565 input!2705)) (not (= lt!246565 lt!246603))))))

(declare-fun lt!246566 () Unit!10350)

(declare-fun lt!246600 () BalanceConc!3656)

(assert (=> b!581549 (= lt!246566 (lemmaSemiInverse!210 (transformation!1107 (rule!1863 token!491)) lt!246600))))

(declare-fun lt!246590 () Unit!10350)

(assert (=> b!581549 (= lt!246590 (lemmaSemiInverse!210 (transformation!1107 (rule!1863 (_1!3604 (v!16324 lt!246581)))) lt!246598))))

(declare-fun lt!246572 () Unit!10350)

(assert (=> b!581549 (= lt!246572 e!351400)))

(declare-fun c!108880 () Bool)

(assert (=> b!581549 (= c!108880 (< lt!246583 lt!246580))))

(assert (=> b!581549 e!351404))

(declare-fun res!250306 () Bool)

(assert (=> b!581549 (=> (not res!250306) (not e!351404))))

(declare-fun maxPrefixOneRule!392 (LexerInterface!993 Rule!2014 List!5708) Option!1458)

(assert (=> b!581549 (= res!250306 (= (maxPrefixOneRule!392 thiss!22590 (rule!1863 token!491) lt!246599) (Some!1457 (tuple2!6681 (Token!1951 lt!246601 (rule!1863 token!491) lt!246580 lt!246603) suffix!1342))))))

(declare-fun lt!246591 () Unit!10350)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!142 (LexerInterface!993 List!5710 List!5708 List!5708 List!5708 Rule!2014) Unit!10350)

(assert (=> b!581549 (= lt!246591 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!142 thiss!22590 rules!3103 lt!246603 lt!246599 suffix!1342 (rule!1863 token!491)))))

(assert (=> b!581549 (= (maxPrefixOneRule!392 thiss!22590 (rule!1863 (_1!3604 (v!16324 lt!246581))) input!2705) (Some!1457 (tuple2!6681 (Token!1951 lt!246587 (rule!1863 (_1!3604 (v!16324 lt!246581))) lt!246583 lt!246574) (_2!3604 (v!16324 lt!246581)))))))

(declare-fun lt!246592 () Unit!10350)

(assert (=> b!581549 (= lt!246592 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!142 thiss!22590 rules!3103 lt!246574 input!2705 (_2!3604 (v!16324 lt!246581)) (rule!1863 (_1!3604 (v!16324 lt!246581)))))))

(assert (=> b!581549 e!351391))

(declare-fun res!250303 () Bool)

(assert (=> b!581549 (=> (not res!250303) (not e!351391))))

(assert (=> b!581549 (= res!250303 (= (value!36416 token!491) lt!246601))))

(assert (=> b!581549 (= lt!246601 (apply!1372 (transformation!1107 (rule!1863 token!491)) lt!246600))))

(assert (=> b!581549 (= lt!246600 (seqFromList!1295 lt!246603))))

(assert (=> b!581549 (= suffix!1342 lt!246578)))

(declare-fun lt!246594 () Unit!10350)

(assert (=> b!581549 (= lt!246594 (lemmaSamePrefixThenSameSuffix!464 lt!246603 suffix!1342 lt!246603 lt!246578 lt!246599))))

(assert (=> b!581549 (= lt!246578 (getSuffix!260 lt!246599 lt!246603))))

(assert (= (and start!53908 res!250295) b!581523))

(assert (= (and b!581523 res!250318) b!581527))

(assert (= (and b!581527 res!250319) b!581510))

(assert (= (and b!581510 res!250302) b!581538))

(assert (= (and b!581538 res!250298) b!581530))

(assert (= (and b!581530 res!250320) b!581506))

(assert (= (and b!581506 res!250316) b!581539))

(assert (= (and b!581539 res!250307) b!581516))

(assert (= (and b!581516 res!250304) b!581547))

(assert (= (and b!581547 c!108878) b!581544))

(assert (= (and b!581547 (not c!108878)) b!581537))

(assert (= (and b!581547 res!250297) b!581513))

(assert (= (and b!581513 res!250313) b!581545))

(assert (= (and b!581547 (not res!250296)) b!581549))

(assert (= (and b!581549 res!250303) b!581512))

(assert (= (and b!581512 res!250312) b!581520))

(assert (= (and b!581549 res!250306) b!581509))

(assert (= (and b!581509 (not res!250299)) b!581534))

(assert (= (and b!581534 res!250315) b!581543))

(assert (= (and b!581543 res!250314) b!581524))

(assert (= (and b!581549 c!108880) b!581536))

(assert (= (and b!581549 (not c!108880)) b!581540))

(assert (= (and b!581536 res!250305) b!581517))

(assert (= (and b!581549 (not res!250309)) b!581541))

(assert (= (and b!581541 (not res!250317)) b!581518))

(assert (= (and b!581518 (not res!250300)) b!581533))

(assert (= (and b!581533 (not res!250310)) b!581546))

(assert (= (and b!581546 (not res!250301)) b!581514))

(assert (= (and b!581514 c!108877) b!581535))

(assert (= (and b!581514 (not c!108877)) b!581525))

(assert (= (and b!581535 c!108876) b!581508))

(assert (= (and b!581535 (not c!108876)) b!581519))

(assert (= (and b!581508 res!250311) b!581532))

(assert (= (and b!581535 c!108879) b!581548))

(assert (= (and b!581535 (not c!108879)) b!581542))

(assert (= (and b!581548 res!250308) b!581511))

(assert (= (and start!53908 ((_ is Cons!5698) suffix!1342)) b!581515))

(assert (= b!581529 b!581521))

(assert (= b!581526 b!581529))

(assert (= (and start!53908 ((_ is Cons!5700) rules!3103)) b!581526))

(assert (= b!581528 b!581522))

(assert (= b!581507 b!581528))

(assert (= start!53908 b!581507))

(assert (= (and start!53908 ((_ is Cons!5698) input!2705)) b!581531))

(declare-fun m!840779 () Bool)

(assert (=> b!581529 m!840779))

(declare-fun m!840781 () Bool)

(assert (=> b!581529 m!840781))

(declare-fun m!840783 () Bool)

(assert (=> b!581523 m!840783))

(declare-fun m!840785 () Bool)

(assert (=> b!581528 m!840785))

(declare-fun m!840787 () Bool)

(assert (=> b!581528 m!840787))

(declare-fun m!840789 () Bool)

(assert (=> b!581508 m!840789))

(declare-fun m!840791 () Bool)

(assert (=> b!581508 m!840791))

(declare-fun m!840793 () Bool)

(assert (=> b!581534 m!840793))

(declare-fun m!840795 () Bool)

(assert (=> b!581527 m!840795))

(declare-fun m!840797 () Bool)

(assert (=> b!581546 m!840797))

(declare-fun m!840799 () Bool)

(assert (=> b!581538 m!840799))

(assert (=> b!581538 m!840799))

(declare-fun m!840801 () Bool)

(assert (=> b!581538 m!840801))

(declare-fun m!840803 () Bool)

(assert (=> b!581548 m!840803))

(declare-fun m!840805 () Bool)

(assert (=> b!581548 m!840805))

(declare-fun m!840807 () Bool)

(assert (=> b!581541 m!840807))

(declare-fun m!840809 () Bool)

(assert (=> b!581506 m!840809))

(declare-fun m!840811 () Bool)

(assert (=> b!581530 m!840811))

(declare-fun m!840813 () Bool)

(assert (=> b!581530 m!840813))

(declare-fun m!840815 () Bool)

(assert (=> b!581530 m!840815))

(declare-fun m!840817 () Bool)

(assert (=> b!581510 m!840817))

(declare-fun m!840819 () Bool)

(assert (=> b!581535 m!840819))

(declare-fun m!840821 () Bool)

(assert (=> b!581535 m!840821))

(declare-fun m!840823 () Bool)

(assert (=> b!581512 m!840823))

(declare-fun m!840825 () Bool)

(assert (=> b!581539 m!840825))

(declare-fun m!840827 () Bool)

(assert (=> b!581513 m!840827))

(declare-fun m!840829 () Bool)

(assert (=> b!581536 m!840829))

(declare-fun m!840831 () Bool)

(assert (=> b!581536 m!840831))

(assert (=> b!581536 m!840803))

(declare-fun m!840833 () Bool)

(assert (=> b!581549 m!840833))

(declare-fun m!840835 () Bool)

(assert (=> b!581549 m!840835))

(declare-fun m!840837 () Bool)

(assert (=> b!581549 m!840837))

(declare-fun m!840839 () Bool)

(assert (=> b!581549 m!840839))

(declare-fun m!840841 () Bool)

(assert (=> b!581549 m!840841))

(declare-fun m!840843 () Bool)

(assert (=> b!581549 m!840843))

(declare-fun m!840845 () Bool)

(assert (=> b!581549 m!840845))

(declare-fun m!840847 () Bool)

(assert (=> b!581549 m!840847))

(declare-fun m!840849 () Bool)

(assert (=> b!581549 m!840849))

(assert (=> b!581549 m!840829))

(declare-fun m!840851 () Bool)

(assert (=> start!53908 m!840851))

(declare-fun m!840853 () Bool)

(assert (=> b!581507 m!840853))

(declare-fun m!840855 () Bool)

(assert (=> b!581533 m!840855))

(declare-fun m!840857 () Bool)

(assert (=> b!581516 m!840857))

(declare-fun m!840859 () Bool)

(assert (=> b!581547 m!840859))

(declare-fun m!840861 () Bool)

(assert (=> b!581547 m!840861))

(declare-fun m!840863 () Bool)

(assert (=> b!581547 m!840863))

(declare-fun m!840865 () Bool)

(assert (=> b!581547 m!840865))

(declare-fun m!840867 () Bool)

(assert (=> b!581547 m!840867))

(declare-fun m!840869 () Bool)

(assert (=> b!581547 m!840869))

(declare-fun m!840871 () Bool)

(assert (=> b!581547 m!840871))

(declare-fun m!840873 () Bool)

(assert (=> b!581547 m!840873))

(declare-fun m!840875 () Bool)

(assert (=> b!581547 m!840875))

(declare-fun m!840877 () Bool)

(assert (=> b!581547 m!840877))

(declare-fun m!840879 () Bool)

(assert (=> b!581547 m!840879))

(declare-fun m!840881 () Bool)

(assert (=> b!581547 m!840881))

(declare-fun m!840883 () Bool)

(assert (=> b!581547 m!840883))

(declare-fun m!840885 () Bool)

(assert (=> b!581547 m!840885))

(declare-fun m!840887 () Bool)

(assert (=> b!581547 m!840887))

(declare-fun m!840889 () Bool)

(assert (=> b!581547 m!840889))

(declare-fun m!840891 () Bool)

(assert (=> b!581547 m!840891))

(declare-fun m!840893 () Bool)

(assert (=> b!581547 m!840893))

(declare-fun m!840895 () Bool)

(assert (=> b!581547 m!840895))

(declare-fun m!840897 () Bool)

(assert (=> b!581547 m!840897))

(assert (=> b!581547 m!840869))

(declare-fun m!840899 () Bool)

(assert (=> b!581547 m!840899))

(declare-fun m!840901 () Bool)

(assert (=> b!581547 m!840901))

(declare-fun m!840903 () Bool)

(assert (=> b!581547 m!840903))

(declare-fun m!840905 () Bool)

(assert (=> b!581547 m!840905))

(declare-fun m!840907 () Bool)

(assert (=> b!581547 m!840907))

(declare-fun m!840909 () Bool)

(assert (=> b!581547 m!840909))

(declare-fun m!840911 () Bool)

(assert (=> b!581547 m!840911))

(declare-fun m!840913 () Bool)

(assert (=> b!581514 m!840913))

(declare-fun m!840915 () Bool)

(assert (=> b!581543 m!840915))

(check-sat (not b!581535) b_and!57259 (not b!581536) (not b!581543) (not b!581548) (not b!581539) b_and!57263 (not b!581528) (not b!581516) (not b!581533) tp_is_empty!3237 (not b!581526) (not b!581538) (not b!581546) (not b!581507) (not b!581531) b_and!57265 (not start!53908) (not b!581547) b_and!57261 (not b!581515) (not b_next!16167) (not b!581527) (not b!581514) (not b!581530) (not b!581549) (not b!581508) (not b!581529) (not b!581541) (not b!581510) (not b!581506) (not b!581512) (not b!581534) (not b!581513) (not b_next!16165) (not b!581523) (not b_next!16169) (not b_next!16171))
(check-sat b_and!57259 b_and!57265 b_and!57261 (not b_next!16167) b_and!57263 (not b_next!16165) (not b_next!16169) (not b_next!16171))

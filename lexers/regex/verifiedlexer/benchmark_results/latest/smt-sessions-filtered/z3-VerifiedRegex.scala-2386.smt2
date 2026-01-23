; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120090 () Bool)

(assert start!120090)

(declare-fun b!1343396 () Bool)

(declare-fun b_free!32779 () Bool)

(declare-fun b_next!33483 () Bool)

(assert (=> b!1343396 (= b_free!32779 (not b_next!33483))))

(declare-fun tp!388964 () Bool)

(declare-fun b_and!89963 () Bool)

(assert (=> b!1343396 (= tp!388964 b_and!89963)))

(declare-fun b_free!32781 () Bool)

(declare-fun b_next!33485 () Bool)

(assert (=> b!1343396 (= b_free!32781 (not b_next!33485))))

(declare-fun tp!388967 () Bool)

(declare-fun b_and!89965 () Bool)

(assert (=> b!1343396 (= tp!388967 b_and!89965)))

(declare-fun b!1343382 () Bool)

(declare-fun b_free!32783 () Bool)

(declare-fun b_next!33487 () Bool)

(assert (=> b!1343382 (= b_free!32783 (not b_next!33487))))

(declare-fun tp!388959 () Bool)

(declare-fun b_and!89967 () Bool)

(assert (=> b!1343382 (= tp!388959 b_and!89967)))

(declare-fun b_free!32785 () Bool)

(declare-fun b_next!33489 () Bool)

(assert (=> b!1343382 (= b_free!32785 (not b_next!33489))))

(declare-fun tp!388961 () Bool)

(declare-fun b_and!89969 () Bool)

(assert (=> b!1343382 (= tp!388961 b_and!89969)))

(declare-fun b!1343394 () Bool)

(declare-fun b_free!32787 () Bool)

(declare-fun b_next!33491 () Bool)

(assert (=> b!1343394 (= b_free!32787 (not b_next!33491))))

(declare-fun tp!388960 () Bool)

(declare-fun b_and!89971 () Bool)

(assert (=> b!1343394 (= tp!388960 b_and!89971)))

(declare-fun b_free!32789 () Bool)

(declare-fun b_next!33493 () Bool)

(assert (=> b!1343394 (= b_free!32789 (not b_next!33493))))

(declare-fun tp!388965 () Bool)

(declare-fun b_and!89973 () Bool)

(assert (=> b!1343394 (= tp!388965 b_and!89973)))

(declare-fun b!1343384 () Bool)

(assert (=> b!1343384 true))

(assert (=> b!1343384 true))

(declare-fun b!1343389 () Bool)

(assert (=> b!1343389 true))

(declare-fun b!1343392 () Bool)

(assert (=> b!1343392 true))

(declare-fun e!860346 () Bool)

(declare-fun e!860349 () Bool)

(declare-datatypes ((List!13801 0))(
  ( (Nil!13735) (Cons!13735 (h!19136 (_ BitVec 16)) (t!119634 List!13801)) )
))
(declare-datatypes ((TokenValue!2471 0))(
  ( (FloatLiteralValue!4942 (text!17742 List!13801)) (TokenValueExt!2470 (__x!8771 Int)) (Broken!12355 (value!77465 List!13801)) (Object!2536) (End!2471) (Def!2471) (Underscore!2471) (Match!2471) (Else!2471) (Error!2471) (Case!2471) (If!2471) (Extends!2471) (Abstract!2471) (Class!2471) (Val!2471) (DelimiterValue!4942 (del!2531 List!13801)) (KeywordValue!2477 (value!77466 List!13801)) (CommentValue!4942 (value!77467 List!13801)) (WhitespaceValue!4942 (value!77468 List!13801)) (IndentationValue!2471 (value!77469 List!13801)) (String!16590) (Int32!2471) (Broken!12356 (value!77470 List!13801)) (Boolean!2472) (Unit!19844) (OperatorValue!2474 (op!2531 List!13801)) (IdentifierValue!4942 (value!77471 List!13801)) (IdentifierValue!4943 (value!77472 List!13801)) (WhitespaceValue!4943 (value!77473 List!13801)) (True!4942) (False!4942) (Broken!12357 (value!77474 List!13801)) (Broken!12358 (value!77475 List!13801)) (True!4943) (RightBrace!2471) (RightBracket!2471) (Colon!2471) (Null!2471) (Comma!2471) (LeftBracket!2471) (False!4943) (LeftBrace!2471) (ImaginaryLiteralValue!2471 (text!17743 List!13801)) (StringLiteralValue!7413 (value!77476 List!13801)) (EOFValue!2471 (value!77477 List!13801)) (IdentValue!2471 (value!77478 List!13801)) (DelimiterValue!4943 (value!77479 List!13801)) (DedentValue!2471 (value!77480 List!13801)) (NewLineValue!2471 (value!77481 List!13801)) (IntegerValue!7413 (value!77482 (_ BitVec 32)) (text!17744 List!13801)) (IntegerValue!7414 (value!77483 Int) (text!17745 List!13801)) (Times!2471) (Or!2471) (Equal!2471) (Minus!2471) (Broken!12359 (value!77484 List!13801)) (And!2471) (Div!2471) (LessEqual!2471) (Mod!2471) (Concat!6166) (Not!2471) (Plus!2471) (SpaceValue!2471 (value!77485 List!13801)) (IntegerValue!7415 (value!77486 Int) (text!17746 List!13801)) (StringLiteralValue!7414 (text!17747 List!13801)) (FloatLiteralValue!4943 (text!17748 List!13801)) (BytesLiteralValue!2471 (value!77487 List!13801)) (CommentValue!4943 (value!77488 List!13801)) (StringLiteralValue!7415 (value!77489 List!13801)) (ErrorTokenValue!2471 (msg!2532 List!13801)) )
))
(declare-datatypes ((C!7680 0))(
  ( (C!7681 (val!4400 Int)) )
))
(declare-datatypes ((List!13802 0))(
  ( (Nil!13736) (Cons!13736 (h!19137 C!7680) (t!119635 List!13802)) )
))
(declare-datatypes ((IArray!9055 0))(
  ( (IArray!9056 (innerList!4585 List!13802)) )
))
(declare-datatypes ((Conc!4525 0))(
  ( (Node!4525 (left!11777 Conc!4525) (right!12107 Conc!4525) (csize!9280 Int) (cheight!4736 Int)) (Leaf!6912 (xs!7244 IArray!9055) (csize!9281 Int)) (Empty!4525) )
))
(declare-datatypes ((BalanceConc!8990 0))(
  ( (BalanceConc!8991 (c!219987 Conc!4525)) )
))
(declare-datatypes ((Regex!3695 0))(
  ( (ElementMatch!3695 (c!219988 C!7680)) (Concat!6167 (regOne!7902 Regex!3695) (regTwo!7902 Regex!3695)) (EmptyExpr!3695) (Star!3695 (reg!4024 Regex!3695)) (EmptyLang!3695) (Union!3695 (regOne!7903 Regex!3695) (regTwo!7903 Regex!3695)) )
))
(declare-datatypes ((String!16591 0))(
  ( (String!16592 (value!77490 String)) )
))
(declare-datatypes ((TokenValueInjection!4602 0))(
  ( (TokenValueInjection!4603 (toValue!3624 Int) (toChars!3483 Int)) )
))
(declare-datatypes ((Rule!4562 0))(
  ( (Rule!4563 (regex!2381 Regex!3695) (tag!2643 String!16591) (isSeparator!2381 Bool) (transformation!2381 TokenValueInjection!4602)) )
))
(declare-datatypes ((List!13803 0))(
  ( (Nil!13737) (Cons!13737 (h!19138 Rule!4562) (t!119636 List!13803)) )
))
(declare-fun rules!2550 () List!13803)

(declare-fun tp!388970 () Bool)

(declare-fun b!1343376 () Bool)

(declare-fun inv!18069 (String!16591) Bool)

(declare-fun inv!18072 (TokenValueInjection!4602) Bool)

(assert (=> b!1343376 (= e!860346 (and tp!388970 (inv!18069 (tag!2643 (h!19138 rules!2550))) (inv!18072 (transformation!2381 (h!19138 rules!2550))) e!860349))))

(declare-fun b!1343377 () Bool)

(declare-fun res!605395 () Bool)

(declare-fun e!860332 () Bool)

(assert (=> b!1343377 (=> (not res!605395) (not e!860332))))

(declare-datatypes ((Token!4424 0))(
  ( (Token!4425 (value!77491 TokenValue!2471) (rule!4126 Rule!4562) (size!11199 Int) (originalCharacters!3243 List!13802)) )
))
(declare-fun t1!34 () Token!4424)

(declare-datatypes ((LexerInterface!2076 0))(
  ( (LexerInterfaceExt!2073 (__x!8772 Int)) (Lexer!2074) )
))
(declare-fun thiss!19762 () LexerInterface!2076)

(declare-fun t2!34 () Token!4424)

(declare-fun separableTokensPredicate!359 (LexerInterface!2076 Token!4424 Token!4424 List!13803) Bool)

(assert (=> b!1343377 (= res!605395 (not (separableTokensPredicate!359 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1343378 () Bool)

(declare-fun res!605402 () Bool)

(declare-fun e!860338 () Bool)

(assert (=> b!1343378 (=> (not res!605402) (not e!860338))))

(assert (=> b!1343378 (= res!605402 (not (= (isSeparator!2381 (rule!4126 t1!34)) (isSeparator!2381 (rule!4126 t2!34)))))))

(declare-fun b!1343379 () Bool)

(assert (=> b!1343379 (= e!860338 e!860332)))

(declare-fun res!605404 () Bool)

(assert (=> b!1343379 (=> (not res!605404) (not e!860332))))

(declare-fun lt!444392 () BalanceConc!8990)

(declare-fun size!11200 (BalanceConc!8990) Int)

(assert (=> b!1343379 (= res!605404 (> (size!11200 lt!444392) 0))))

(declare-fun charsOf!1353 (Token!4424) BalanceConc!8990)

(assert (=> b!1343379 (= lt!444392 (charsOf!1353 t2!34))))

(declare-fun tp!388969 () Bool)

(declare-fun e!860347 () Bool)

(declare-fun e!860333 () Bool)

(declare-fun b!1343380 () Bool)

(declare-fun inv!21 (TokenValue!2471) Bool)

(assert (=> b!1343380 (= e!860333 (and (inv!21 (value!77491 t2!34)) e!860347 tp!388969))))

(declare-fun b!1343381 () Bool)

(declare-fun e!860350 () Bool)

(declare-fun e!860343 () Bool)

(assert (=> b!1343381 (= e!860350 e!860343)))

(declare-fun res!605403 () Bool)

(assert (=> b!1343381 (=> res!605403 e!860343)))

(declare-fun lt!444393 () List!13802)

(declare-fun lt!444394 () C!7680)

(declare-fun contains!2512 (List!13802 C!7680) Bool)

(assert (=> b!1343381 (= res!605403 (not (contains!2512 lt!444393 lt!444394)))))

(declare-fun lt!444398 () BalanceConc!8990)

(declare-fun apply!3259 (BalanceConc!8990 Int) C!7680)

(assert (=> b!1343381 (= lt!444394 (apply!3259 lt!444398 0))))

(assert (=> b!1343382 (= e!860349 (and tp!388959 tp!388961))))

(declare-fun b!1343383 () Bool)

(declare-fun res!605396 () Bool)

(assert (=> b!1343383 (=> res!605396 e!860343)))

(declare-fun lt!444391 () List!13802)

(declare-fun lt!444396 () C!7680)

(assert (=> b!1343383 (= res!605396 (not (contains!2512 lt!444391 lt!444396)))))

(declare-fun e!860340 () Bool)

(declare-fun e!860342 () Bool)

(assert (=> b!1343384 (= e!860340 (not e!860342))))

(declare-fun res!605393 () Bool)

(assert (=> b!1343384 (=> res!605393 e!860342)))

(declare-fun lambda!56418 () Int)

(declare-fun Exists!847 (Int) Bool)

(assert (=> b!1343384 (= res!605393 (not (Exists!847 lambda!56418)))))

(assert (=> b!1343384 (Exists!847 lambda!56418)))

(declare-datatypes ((Unit!19845 0))(
  ( (Unit!19846) )
))
(declare-fun lt!444388 () Unit!19845)

(declare-fun lt!444390 () Regex!3695)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!165 (Regex!3695 List!13802) Unit!19845)

(assert (=> b!1343384 (= lt!444388 (lemmaPrefixMatchThenExistsStringThatMatches!165 lt!444390 lt!444393))))

(declare-fun b!1343385 () Bool)

(declare-fun res!605388 () Bool)

(assert (=> b!1343385 (=> (not res!605388) (not e!860338))))

(declare-fun rulesInvariant!1946 (LexerInterface!2076 List!13803) Bool)

(assert (=> b!1343385 (= res!605388 (rulesInvariant!1946 thiss!19762 rules!2550))))

(declare-fun b!1343386 () Bool)

(declare-fun tp!388962 () Bool)

(declare-fun e!860344 () Bool)

(declare-fun e!860351 () Bool)

(assert (=> b!1343386 (= e!860344 (and tp!388962 (inv!18069 (tag!2643 (rule!4126 t1!34))) (inv!18072 (transformation!2381 (rule!4126 t1!34))) e!860351))))

(declare-fun b!1343387 () Bool)

(assert (=> b!1343387 (= e!860332 e!860340)))

(declare-fun res!605406 () Bool)

(assert (=> b!1343387 (=> (not res!605406) (not e!860340))))

(declare-fun prefixMatch!204 (Regex!3695 List!13802) Bool)

(assert (=> b!1343387 (= res!605406 (prefixMatch!204 lt!444390 lt!444393))))

(declare-fun rulesRegex!264 (LexerInterface!2076 List!13803) Regex!3695)

(assert (=> b!1343387 (= lt!444390 (rulesRegex!264 thiss!19762 rules!2550))))

(declare-fun lt!444395 () List!13802)

(declare-fun ++!3520 (List!13802 List!13802) List!13802)

(assert (=> b!1343387 (= lt!444393 (++!3520 lt!444395 (Cons!13736 lt!444396 Nil!13736)))))

(assert (=> b!1343387 (= lt!444396 (apply!3259 lt!444392 0))))

(declare-fun list!5235 (BalanceConc!8990) List!13802)

(assert (=> b!1343387 (= lt!444395 (list!5235 lt!444398))))

(assert (=> b!1343387 (= lt!444398 (charsOf!1353 t1!34))))

(declare-fun b!1343388 () Bool)

(declare-fun res!605394 () Bool)

(assert (=> b!1343388 (=> res!605394 e!860343)))

(declare-fun matchR!1688 (Regex!3695 List!13802) Bool)

(assert (=> b!1343388 (= res!605394 (not (matchR!1688 lt!444390 lt!444391)))))

(declare-fun e!860348 () Bool)

(assert (=> b!1343389 (= e!860343 e!860348)))

(declare-fun res!605397 () Bool)

(assert (=> b!1343389 (=> res!605397 e!860348)))

(declare-fun lambda!56420 () Int)

(declare-fun lambda!56419 () Int)

(declare-datatypes ((List!13804 0))(
  ( (Nil!13738) (Cons!13738 (h!19139 Regex!3695) (t!119637 List!13804)) )
))
(declare-fun exists!420 (List!13804 Int) Bool)

(declare-fun map!3032 (List!13803 Int) List!13804)

(assert (=> b!1343389 (= res!605397 (not (exists!420 (map!3032 rules!2550 lambda!56419) lambda!56420)))))

(declare-fun lt!444399 () List!13804)

(assert (=> b!1343389 (exists!420 lt!444399 lambda!56420)))

(declare-fun lt!444400 () Unit!19845)

(declare-fun matchRGenUnionSpec!112 (Regex!3695 List!13804 List!13802) Unit!19845)

(assert (=> b!1343389 (= lt!444400 (matchRGenUnionSpec!112 lt!444390 lt!444399 lt!444391))))

(assert (=> b!1343389 (= lt!444399 (map!3032 rules!2550 lambda!56419))))

(declare-fun b!1343390 () Bool)

(assert (=> b!1343390 (= e!860342 e!860350)))

(declare-fun res!605392 () Bool)

(assert (=> b!1343390 (=> res!605392 e!860350)))

(declare-fun getSuffix!543 (List!13802 List!13802) List!13802)

(assert (=> b!1343390 (= res!605392 (not (= lt!444391 (++!3520 lt!444393 (getSuffix!543 lt!444391 lt!444393)))))))

(declare-fun pickWitness!150 (Int) List!13802)

(assert (=> b!1343390 (= lt!444391 (pickWitness!150 lambda!56418))))

(declare-fun b!1343391 () Bool)

(declare-fun e!860336 () Bool)

(declare-fun tp!388963 () Bool)

(assert (=> b!1343391 (= e!860336 (and (inv!21 (value!77491 t1!34)) e!860344 tp!388963))))

(declare-fun e!860352 () Bool)

(declare-fun lambda!56421 () Int)

(declare-fun exists!421 (List!13803 Int) Bool)

(assert (=> b!1343392 (= e!860352 (exists!421 rules!2550 lambda!56421))))

(assert (=> b!1343392 (exists!421 rules!2550 lambda!56421)))

(declare-fun lt!444397 () Unit!19845)

(declare-fun lt!444389 () Regex!3695)

(declare-fun lemmaMapContains!100 (List!13803 Int Regex!3695) Unit!19845)

(assert (=> b!1343392 (= lt!444397 (lemmaMapContains!100 rules!2550 lambda!56419 lt!444389))))

(declare-fun res!605391 () Bool)

(assert (=> start!120090 (=> (not res!605391) (not e!860338))))

(get-info :version)

(assert (=> start!120090 (= res!605391 ((_ is Lexer!2074) thiss!19762))))

(assert (=> start!120090 e!860338))

(assert (=> start!120090 true))

(declare-fun e!860331 () Bool)

(assert (=> start!120090 e!860331))

(declare-fun inv!18073 (Token!4424) Bool)

(assert (=> start!120090 (and (inv!18073 t1!34) e!860336)))

(assert (=> start!120090 (and (inv!18073 t2!34) e!860333)))

(declare-fun b!1343393 () Bool)

(declare-fun res!605401 () Bool)

(assert (=> b!1343393 (=> res!605401 e!860343)))

(assert (=> b!1343393 (= res!605401 (not (contains!2512 lt!444393 lt!444396)))))

(declare-fun e!860335 () Bool)

(assert (=> b!1343394 (= e!860335 (and tp!388960 tp!388965))))

(declare-fun b!1343395 () Bool)

(declare-fun tp!388966 () Bool)

(assert (=> b!1343395 (= e!860347 (and tp!388966 (inv!18069 (tag!2643 (rule!4126 t2!34))) (inv!18072 (transformation!2381 (rule!4126 t2!34))) e!860335))))

(assert (=> b!1343396 (= e!860351 (and tp!388964 tp!388967))))

(declare-fun b!1343397 () Bool)

(declare-fun res!605400 () Bool)

(assert (=> b!1343397 (=> (not res!605400) (not e!860338))))

(declare-fun rulesProduceIndividualToken!1045 (LexerInterface!2076 List!13803 Token!4424) Bool)

(assert (=> b!1343397 (= res!605400 (rulesProduceIndividualToken!1045 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1343398 () Bool)

(declare-fun tp!388968 () Bool)

(assert (=> b!1343398 (= e!860331 (and e!860346 tp!388968))))

(declare-fun b!1343399 () Bool)

(assert (=> b!1343399 (= e!860348 e!860352)))

(declare-fun res!605405 () Bool)

(assert (=> b!1343399 (=> res!605405 e!860352)))

(declare-fun contains!2513 (List!13804 Regex!3695) Bool)

(assert (=> b!1343399 (= res!605405 (not (contains!2513 (map!3032 rules!2550 lambda!56419) lt!444389)))))

(declare-fun getWitness!309 (List!13804 Int) Regex!3695)

(assert (=> b!1343399 (= lt!444389 (getWitness!309 (map!3032 rules!2550 lambda!56419) lambda!56420))))

(declare-fun b!1343400 () Bool)

(declare-fun res!605399 () Bool)

(assert (=> b!1343400 (=> (not res!605399) (not e!860332))))

(declare-fun sepAndNonSepRulesDisjointChars!754 (List!13803 List!13803) Bool)

(assert (=> b!1343400 (= res!605399 (sepAndNonSepRulesDisjointChars!754 rules!2550 rules!2550))))

(declare-fun b!1343401 () Bool)

(declare-fun res!605389 () Bool)

(assert (=> b!1343401 (=> res!605389 e!860343)))

(assert (=> b!1343401 (= res!605389 (not (contains!2512 lt!444391 lt!444394)))))

(declare-fun b!1343402 () Bool)

(declare-fun res!605398 () Bool)

(assert (=> b!1343402 (=> (not res!605398) (not e!860338))))

(declare-fun isEmpty!8195 (List!13803) Bool)

(assert (=> b!1343402 (= res!605398 (not (isEmpty!8195 rules!2550)))))

(declare-fun b!1343403 () Bool)

(declare-fun res!605390 () Bool)

(assert (=> b!1343403 (=> (not res!605390) (not e!860338))))

(assert (=> b!1343403 (= res!605390 (rulesProduceIndividualToken!1045 thiss!19762 rules!2550 t2!34))))

(assert (= (and start!120090 res!605391) b!1343402))

(assert (= (and b!1343402 res!605398) b!1343385))

(assert (= (and b!1343385 res!605388) b!1343397))

(assert (= (and b!1343397 res!605400) b!1343403))

(assert (= (and b!1343403 res!605390) b!1343378))

(assert (= (and b!1343378 res!605402) b!1343379))

(assert (= (and b!1343379 res!605404) b!1343400))

(assert (= (and b!1343400 res!605399) b!1343377))

(assert (= (and b!1343377 res!605395) b!1343387))

(assert (= (and b!1343387 res!605406) b!1343384))

(assert (= (and b!1343384 (not res!605393)) b!1343390))

(assert (= (and b!1343390 (not res!605392)) b!1343381))

(assert (= (and b!1343381 (not res!605403)) b!1343401))

(assert (= (and b!1343401 (not res!605389)) b!1343393))

(assert (= (and b!1343393 (not res!605401)) b!1343383))

(assert (= (and b!1343383 (not res!605396)) b!1343388))

(assert (= (and b!1343388 (not res!605394)) b!1343389))

(assert (= (and b!1343389 (not res!605397)) b!1343399))

(assert (= (and b!1343399 (not res!605405)) b!1343392))

(assert (= b!1343376 b!1343382))

(assert (= b!1343398 b!1343376))

(assert (= (and start!120090 ((_ is Cons!13737) rules!2550)) b!1343398))

(assert (= b!1343386 b!1343396))

(assert (= b!1343391 b!1343386))

(assert (= start!120090 b!1343391))

(assert (= b!1343395 b!1343394))

(assert (= b!1343380 b!1343395))

(assert (= start!120090 b!1343380))

(declare-fun m!1501989 () Bool)

(assert (=> b!1343387 m!1501989))

(declare-fun m!1501991 () Bool)

(assert (=> b!1343387 m!1501991))

(declare-fun m!1501993 () Bool)

(assert (=> b!1343387 m!1501993))

(declare-fun m!1501995 () Bool)

(assert (=> b!1343387 m!1501995))

(declare-fun m!1501997 () Bool)

(assert (=> b!1343387 m!1501997))

(declare-fun m!1501999 () Bool)

(assert (=> b!1343387 m!1501999))

(declare-fun m!1502001 () Bool)

(assert (=> b!1343399 m!1502001))

(assert (=> b!1343399 m!1502001))

(declare-fun m!1502003 () Bool)

(assert (=> b!1343399 m!1502003))

(assert (=> b!1343399 m!1502001))

(assert (=> b!1343399 m!1502001))

(declare-fun m!1502005 () Bool)

(assert (=> b!1343399 m!1502005))

(declare-fun m!1502007 () Bool)

(assert (=> b!1343381 m!1502007))

(declare-fun m!1502009 () Bool)

(assert (=> b!1343381 m!1502009))

(declare-fun m!1502011 () Bool)

(assert (=> b!1343385 m!1502011))

(declare-fun m!1502013 () Bool)

(assert (=> b!1343383 m!1502013))

(declare-fun m!1502015 () Bool)

(assert (=> b!1343384 m!1502015))

(assert (=> b!1343384 m!1502015))

(declare-fun m!1502017 () Bool)

(assert (=> b!1343384 m!1502017))

(declare-fun m!1502019 () Bool)

(assert (=> b!1343388 m!1502019))

(declare-fun m!1502021 () Bool)

(assert (=> b!1343403 m!1502021))

(declare-fun m!1502023 () Bool)

(assert (=> b!1343386 m!1502023))

(declare-fun m!1502025 () Bool)

(assert (=> b!1343386 m!1502025))

(assert (=> b!1343389 m!1502001))

(declare-fun m!1502027 () Bool)

(assert (=> b!1343389 m!1502027))

(declare-fun m!1502029 () Bool)

(assert (=> b!1343389 m!1502029))

(declare-fun m!1502031 () Bool)

(assert (=> b!1343389 m!1502031))

(assert (=> b!1343389 m!1502001))

(assert (=> b!1343389 m!1502001))

(declare-fun m!1502033 () Bool)

(assert (=> b!1343392 m!1502033))

(assert (=> b!1343392 m!1502033))

(declare-fun m!1502035 () Bool)

(assert (=> b!1343392 m!1502035))

(declare-fun m!1502037 () Bool)

(assert (=> b!1343376 m!1502037))

(declare-fun m!1502039 () Bool)

(assert (=> b!1343376 m!1502039))

(declare-fun m!1502041 () Bool)

(assert (=> b!1343380 m!1502041))

(declare-fun m!1502043 () Bool)

(assert (=> b!1343402 m!1502043))

(declare-fun m!1502045 () Bool)

(assert (=> b!1343395 m!1502045))

(declare-fun m!1502047 () Bool)

(assert (=> b!1343395 m!1502047))

(declare-fun m!1502049 () Bool)

(assert (=> start!120090 m!1502049))

(declare-fun m!1502051 () Bool)

(assert (=> start!120090 m!1502051))

(declare-fun m!1502053 () Bool)

(assert (=> b!1343401 m!1502053))

(declare-fun m!1502055 () Bool)

(assert (=> b!1343391 m!1502055))

(declare-fun m!1502057 () Bool)

(assert (=> b!1343390 m!1502057))

(assert (=> b!1343390 m!1502057))

(declare-fun m!1502059 () Bool)

(assert (=> b!1343390 m!1502059))

(declare-fun m!1502061 () Bool)

(assert (=> b!1343390 m!1502061))

(declare-fun m!1502063 () Bool)

(assert (=> b!1343379 m!1502063))

(declare-fun m!1502065 () Bool)

(assert (=> b!1343379 m!1502065))

(declare-fun m!1502067 () Bool)

(assert (=> b!1343377 m!1502067))

(declare-fun m!1502069 () Bool)

(assert (=> b!1343400 m!1502069))

(declare-fun m!1502071 () Bool)

(assert (=> b!1343393 m!1502071))

(declare-fun m!1502073 () Bool)

(assert (=> b!1343397 m!1502073))

(check-sat (not b!1343385) (not b!1343401) b_and!89971 b_and!89963 (not b!1343400) (not b!1343387) b_and!89973 (not b!1343402) (not b!1343377) (not b_next!33485) (not b!1343390) (not b!1343379) (not b!1343386) (not b_next!33483) (not b!1343376) b_and!89969 b_and!89965 (not b!1343399) (not b!1343398) (not b!1343391) (not b_next!33489) (not b_next!33487) (not b!1343393) b_and!89967 (not b!1343392) (not b!1343397) (not b!1343380) (not b!1343384) (not b_next!33491) (not b!1343403) (not b!1343389) (not b_next!33493) (not b!1343381) (not start!120090) (not b!1343388) (not b!1343383) (not b!1343395))
(check-sat (not b_next!33485) b_and!89971 b_and!89963 (not b_next!33483) b_and!89973 b_and!89967 (not b_next!33491) (not b_next!33493) b_and!89969 b_and!89965 (not b_next!33489) (not b_next!33487))

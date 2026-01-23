; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277412 () Bool)

(assert start!277412)

(declare-fun b!2848287 () Bool)

(declare-fun b_free!82861 () Bool)

(declare-fun b_next!83565 () Bool)

(assert (=> b!2848287 (= b_free!82861 (not b_next!83565))))

(declare-fun tp!914404 () Bool)

(declare-fun b_and!209103 () Bool)

(assert (=> b!2848287 (= tp!914404 b_and!209103)))

(declare-fun b_free!82863 () Bool)

(declare-fun b_next!83567 () Bool)

(assert (=> b!2848287 (= b_free!82863 (not b_next!83567))))

(declare-fun tp!914407 () Bool)

(declare-fun b_and!209105 () Bool)

(assert (=> b!2848287 (= tp!914407 b_and!209105)))

(declare-fun b!2848288 () Bool)

(declare-fun b_free!82865 () Bool)

(declare-fun b_next!83569 () Bool)

(assert (=> b!2848288 (= b_free!82865 (not b_next!83569))))

(declare-fun tp!914408 () Bool)

(declare-fun b_and!209107 () Bool)

(assert (=> b!2848288 (= tp!914408 b_and!209107)))

(declare-fun b_free!82867 () Bool)

(declare-fun b_next!83571 () Bool)

(assert (=> b!2848288 (= b_free!82867 (not b_next!83571))))

(declare-fun tp!914409 () Bool)

(declare-fun b_and!209109 () Bool)

(assert (=> b!2848288 (= tp!914409 b_and!209109)))

(declare-fun e!1804948 () Bool)

(declare-fun tp!914410 () Bool)

(declare-fun e!1804949 () Bool)

(declare-fun b!2848281 () Bool)

(declare-datatypes ((List!33971 0))(
  ( (Nil!33847) (Cons!33847 (h!39267 (_ BitVec 16)) (t!232996 List!33971)) )
))
(declare-datatypes ((TokenValue!5317 0))(
  ( (FloatLiteralValue!10634 (text!37664 List!33971)) (TokenValueExt!5316 (__x!22431 Int)) (Broken!26585 (value!163379 List!33971)) (Object!5440) (End!5317) (Def!5317) (Underscore!5317) (Match!5317) (Else!5317) (Error!5317) (Case!5317) (If!5317) (Extends!5317) (Abstract!5317) (Class!5317) (Val!5317) (DelimiterValue!10634 (del!5377 List!33971)) (KeywordValue!5323 (value!163380 List!33971)) (CommentValue!10634 (value!163381 List!33971)) (WhitespaceValue!10634 (value!163382 List!33971)) (IndentationValue!5317 (value!163383 List!33971)) (String!37200) (Int32!5317) (Broken!26586 (value!163384 List!33971)) (Boolean!5318) (Unit!47583) (OperatorValue!5320 (op!5377 List!33971)) (IdentifierValue!10634 (value!163385 List!33971)) (IdentifierValue!10635 (value!163386 List!33971)) (WhitespaceValue!10635 (value!163387 List!33971)) (True!10634) (False!10634) (Broken!26587 (value!163388 List!33971)) (Broken!26588 (value!163389 List!33971)) (True!10635) (RightBrace!5317) (RightBracket!5317) (Colon!5317) (Null!5317) (Comma!5317) (LeftBracket!5317) (False!10635) (LeftBrace!5317) (ImaginaryLiteralValue!5317 (text!37665 List!33971)) (StringLiteralValue!15951 (value!163390 List!33971)) (EOFValue!5317 (value!163391 List!33971)) (IdentValue!5317 (value!163392 List!33971)) (DelimiterValue!10635 (value!163393 List!33971)) (DedentValue!5317 (value!163394 List!33971)) (NewLineValue!5317 (value!163395 List!33971)) (IntegerValue!15951 (value!163396 (_ BitVec 32)) (text!37666 List!33971)) (IntegerValue!15952 (value!163397 Int) (text!37667 List!33971)) (Times!5317) (Or!5317) (Equal!5317) (Minus!5317) (Broken!26589 (value!163398 List!33971)) (And!5317) (Div!5317) (LessEqual!5317) (Mod!5317) (Concat!13819) (Not!5317) (Plus!5317) (SpaceValue!5317 (value!163399 List!33971)) (IntegerValue!15953 (value!163400 Int) (text!37668 List!33971)) (StringLiteralValue!15952 (text!37669 List!33971)) (FloatLiteralValue!10635 (text!37670 List!33971)) (BytesLiteralValue!5317 (value!163401 List!33971)) (CommentValue!10635 (value!163402 List!33971)) (StringLiteralValue!15953 (value!163403 List!33971)) (ErrorTokenValue!5317 (msg!5378 List!33971)) )
))
(declare-datatypes ((C!17186 0))(
  ( (C!17187 (val!10627 Int)) )
))
(declare-datatypes ((List!33972 0))(
  ( (Nil!33848) (Cons!33848 (h!39268 C!17186) (t!232997 List!33972)) )
))
(declare-datatypes ((IArray!20995 0))(
  ( (IArray!20996 (innerList!10555 List!33972)) )
))
(declare-datatypes ((Regex!8502 0))(
  ( (ElementMatch!8502 (c!459487 C!17186)) (Concat!13820 (regOne!17516 Regex!8502) (regTwo!17516 Regex!8502)) (EmptyExpr!8502) (Star!8502 (reg!8831 Regex!8502)) (EmptyLang!8502) (Union!8502 (regOne!17517 Regex!8502) (regTwo!17517 Regex!8502)) )
))
(declare-datatypes ((Conc!10495 0))(
  ( (Node!10495 (left!25485 Conc!10495) (right!25815 Conc!10495) (csize!21220 Int) (cheight!10706 Int)) (Leaf!15970 (xs!13613 IArray!20995) (csize!21221 Int)) (Empty!10495) )
))
(declare-datatypes ((BalanceConc!20628 0))(
  ( (BalanceConc!20629 (c!459488 Conc!10495)) )
))
(declare-datatypes ((String!37201 0))(
  ( (String!37202 (value!163404 String)) )
))
(declare-datatypes ((TokenValueInjection!10062 0))(
  ( (TokenValueInjection!10063 (toValue!7143 Int) (toChars!7002 Int)) )
))
(declare-datatypes ((Rule!9974 0))(
  ( (Rule!9975 (regex!5087 Regex!8502) (tag!5591 String!37201) (isSeparator!5087 Bool) (transformation!5087 TokenValueInjection!10062)) )
))
(declare-datatypes ((List!33973 0))(
  ( (Nil!33849) (Cons!33849 (h!39269 Rule!9974) (t!232998 List!33973)) )
))
(declare-fun rules!1039 () List!33973)

(declare-fun inv!45878 (String!37201) Bool)

(declare-fun inv!45881 (TokenValueInjection!10062) Bool)

(assert (=> b!2848281 (= e!1804949 (and tp!914410 (inv!45878 (tag!5591 (h!39269 rules!1039))) (inv!45881 (transformation!5087 (h!39269 rules!1039))) e!1804948))))

(declare-fun tp!914406 () Bool)

(declare-fun rs!188 () List!33973)

(declare-fun e!1804944 () Bool)

(declare-fun b!2848282 () Bool)

(declare-fun e!1804943 () Bool)

(assert (=> b!2848282 (= e!1804944 (and tp!914406 (inv!45878 (tag!5591 (h!39269 rs!188))) (inv!45881 (transformation!5087 (h!39269 rs!188))) e!1804943))))

(declare-fun b!2848283 () Bool)

(declare-fun res!1184112 () Bool)

(declare-fun e!1804946 () Bool)

(assert (=> b!2848283 (=> (not res!1184112) (not e!1804946))))

(declare-datatypes ((LexerInterface!4676 0))(
  ( (LexerInterfaceExt!4673 (__x!22432 Int)) (Lexer!4674) )
))
(declare-fun thiss!10983 () LexerInterface!4676)

(declare-fun rulesValidInductive!1752 (LexerInterface!4676 List!33973) Bool)

(assert (=> b!2848283 (= res!1184112 (rulesValidInductive!1752 thiss!10983 rs!188))))

(declare-fun b!2848284 () Bool)

(declare-fun res!1184113 () Bool)

(assert (=> b!2848284 (=> (not res!1184113) (not e!1804946))))

(assert (=> b!2848284 (= res!1184113 (rulesValidInductive!1752 thiss!10983 rules!1039))))

(declare-fun lambda!104604 () Int)

(declare-fun lambda!104605 () Int)

(declare-fun b!2848286 () Bool)

(declare-datatypes ((List!33974 0))(
  ( (Nil!33850) (Cons!33850 (h!39270 Regex!8502) (t!232999 List!33974)) )
))
(declare-fun forall!6949 (List!33974 Int) Bool)

(declare-fun map!7266 (List!33973 Int) List!33974)

(assert (=> b!2848286 (= e!1804946 (not (forall!6949 (map!7266 rs!188 lambda!104604) lambda!104605)))))

(declare-datatypes ((Unit!47584 0))(
  ( (Unit!47585) )
))
(declare-fun lt!1013022 () Unit!47584)

(declare-fun lemma!570 (List!33973 LexerInterface!4676 List!33973) Unit!47584)

(assert (=> b!2848286 (= lt!1013022 (lemma!570 rules!1039 thiss!10983 (t!232998 rs!188)))))

(assert (=> b!2848287 (= e!1804943 (and tp!914404 tp!914407))))

(assert (=> b!2848288 (= e!1804948 (and tp!914408 tp!914409))))

(declare-fun b!2848289 () Bool)

(declare-fun e!1804947 () Bool)

(declare-fun tp!914403 () Bool)

(assert (=> b!2848289 (= e!1804947 (and e!1804944 tp!914403))))

(declare-fun b!2848290 () Bool)

(declare-fun res!1184111 () Bool)

(assert (=> b!2848290 (=> (not res!1184111) (not e!1804946))))

(assert (=> b!2848290 (= res!1184111 (not (is-Nil!33849 rs!188)))))

(declare-fun b!2848285 () Bool)

(declare-fun e!1804945 () Bool)

(declare-fun tp!914405 () Bool)

(assert (=> b!2848285 (= e!1804945 (and e!1804949 tp!914405))))

(declare-fun res!1184110 () Bool)

(assert (=> start!277412 (=> (not res!1184110) (not e!1804946))))

(assert (=> start!277412 (= res!1184110 (is-Lexer!4674 thiss!10983))))

(assert (=> start!277412 e!1804946))

(assert (=> start!277412 true))

(assert (=> start!277412 e!1804945))

(assert (=> start!277412 e!1804947))

(assert (= (and start!277412 res!1184110) b!2848284))

(assert (= (and b!2848284 res!1184113) b!2848283))

(assert (= (and b!2848283 res!1184112) b!2848290))

(assert (= (and b!2848290 res!1184111) b!2848286))

(assert (= b!2848281 b!2848288))

(assert (= b!2848285 b!2848281))

(assert (= (and start!277412 (is-Cons!33849 rules!1039)) b!2848285))

(assert (= b!2848282 b!2848287))

(assert (= b!2848289 b!2848282))

(assert (= (and start!277412 (is-Cons!33849 rs!188)) b!2848289))

(declare-fun m!3275365 () Bool)

(assert (=> b!2848284 m!3275365))

(declare-fun m!3275367 () Bool)

(assert (=> b!2848281 m!3275367))

(declare-fun m!3275369 () Bool)

(assert (=> b!2848281 m!3275369))

(declare-fun m!3275371 () Bool)

(assert (=> b!2848286 m!3275371))

(assert (=> b!2848286 m!3275371))

(declare-fun m!3275373 () Bool)

(assert (=> b!2848286 m!3275373))

(declare-fun m!3275375 () Bool)

(assert (=> b!2848286 m!3275375))

(declare-fun m!3275377 () Bool)

(assert (=> b!2848282 m!3275377))

(declare-fun m!3275379 () Bool)

(assert (=> b!2848282 m!3275379))

(declare-fun m!3275381 () Bool)

(assert (=> b!2848283 m!3275381))

(push 1)

(assert (not b!2848286))

(assert (not b_next!83567))

(assert (not b_next!83571))

(assert (not b!2848289))

(assert (not b!2848284))

(assert b_and!209109)

(assert (not b!2848282))

(assert (not b!2848281))

(assert (not b_next!83569))

(assert b_and!209103)

(assert b_and!209105)

(assert (not b!2848283))

(assert b_and!209107)

(assert (not b_next!83565))

(assert (not b!2848285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!209107)

(assert (not b_next!83567))

(assert (not b_next!83565))

(assert (not b_next!83571))

(assert b_and!209109)

(assert (not b_next!83569))

(assert b_and!209103)

(assert b_and!209105)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!825647 () Bool)

(assert (=> d!825647 (= (inv!45878 (tag!5591 (h!39269 rs!188))) (= (mod (str.len (value!163404 (tag!5591 (h!39269 rs!188)))) 2) 0))))

(assert (=> b!2848282 d!825647))

(declare-fun d!825649 () Bool)

(declare-fun res!1184133 () Bool)

(declare-fun e!1804979 () Bool)

(assert (=> d!825649 (=> (not res!1184133) (not e!1804979))))

(declare-fun semiInverseModEq!2124 (Int Int) Bool)

(assert (=> d!825649 (= res!1184133 (semiInverseModEq!2124 (toChars!7002 (transformation!5087 (h!39269 rs!188))) (toValue!7143 (transformation!5087 (h!39269 rs!188)))))))

(assert (=> d!825649 (= (inv!45881 (transformation!5087 (h!39269 rs!188))) e!1804979)))

(declare-fun b!2848323 () Bool)

(declare-fun equivClasses!2023 (Int Int) Bool)

(assert (=> b!2848323 (= e!1804979 (equivClasses!2023 (toChars!7002 (transformation!5087 (h!39269 rs!188))) (toValue!7143 (transformation!5087 (h!39269 rs!188)))))))

(assert (= (and d!825649 res!1184133) b!2848323))

(declare-fun m!3275401 () Bool)

(assert (=> d!825649 m!3275401))

(declare-fun m!3275403 () Bool)

(assert (=> b!2848323 m!3275403))

(assert (=> b!2848282 d!825649))

(declare-fun d!825651 () Bool)

(assert (=> d!825651 (= (inv!45878 (tag!5591 (h!39269 rules!1039))) (= (mod (str.len (value!163404 (tag!5591 (h!39269 rules!1039)))) 2) 0))))

(assert (=> b!2848281 d!825651))

(declare-fun d!825653 () Bool)

(declare-fun res!1184134 () Bool)

(declare-fun e!1804980 () Bool)

(assert (=> d!825653 (=> (not res!1184134) (not e!1804980))))

(assert (=> d!825653 (= res!1184134 (semiInverseModEq!2124 (toChars!7002 (transformation!5087 (h!39269 rules!1039))) (toValue!7143 (transformation!5087 (h!39269 rules!1039)))))))

(assert (=> d!825653 (= (inv!45881 (transformation!5087 (h!39269 rules!1039))) e!1804980)))

(declare-fun b!2848324 () Bool)

(assert (=> b!2848324 (= e!1804980 (equivClasses!2023 (toChars!7002 (transformation!5087 (h!39269 rules!1039))) (toValue!7143 (transformation!5087 (h!39269 rules!1039)))))))

(assert (= (and d!825653 res!1184134) b!2848324))

(declare-fun m!3275405 () Bool)

(assert (=> d!825653 m!3275405))

(declare-fun m!3275407 () Bool)

(assert (=> b!2848324 m!3275407))

(assert (=> b!2848281 d!825653))

(declare-fun d!825655 () Bool)

(declare-fun res!1184139 () Bool)

(declare-fun e!1804985 () Bool)

(assert (=> d!825655 (=> res!1184139 e!1804985)))

(assert (=> d!825655 (= res!1184139 (is-Nil!33850 (map!7266 rs!188 lambda!104604)))))

(assert (=> d!825655 (= (forall!6949 (map!7266 rs!188 lambda!104604) lambda!104605) e!1804985)))

(declare-fun b!2848329 () Bool)

(declare-fun e!1804986 () Bool)

(assert (=> b!2848329 (= e!1804985 e!1804986)))

(declare-fun res!1184140 () Bool)

(assert (=> b!2848329 (=> (not res!1184140) (not e!1804986))))

(declare-fun dynLambda!14210 (Int Regex!8502) Bool)

(assert (=> b!2848329 (= res!1184140 (dynLambda!14210 lambda!104605 (h!39270 (map!7266 rs!188 lambda!104604))))))

(declare-fun b!2848330 () Bool)

(assert (=> b!2848330 (= e!1804986 (forall!6949 (t!232999 (map!7266 rs!188 lambda!104604)) lambda!104605))))

(assert (= (and d!825655 (not res!1184139)) b!2848329))

(assert (= (and b!2848329 res!1184140) b!2848330))

(declare-fun b_lambda!85587 () Bool)

(assert (=> (not b_lambda!85587) (not b!2848329)))

(declare-fun m!3275409 () Bool)

(assert (=> b!2848329 m!3275409))

(declare-fun m!3275411 () Bool)

(assert (=> b!2848330 m!3275411))

(assert (=> b!2848286 d!825655))

(declare-fun d!825657 () Bool)

(declare-fun lt!1013028 () List!33974)

(declare-fun size!26258 (List!33974) Int)

(declare-fun size!26259 (List!33973) Int)

(assert (=> d!825657 (= (size!26258 lt!1013028) (size!26259 rs!188))))

(declare-fun e!1804989 () List!33974)

(assert (=> d!825657 (= lt!1013028 e!1804989)))

(declare-fun c!459493 () Bool)

(assert (=> d!825657 (= c!459493 (is-Nil!33849 rs!188))))

(assert (=> d!825657 (= (map!7266 rs!188 lambda!104604) lt!1013028)))

(declare-fun b!2848335 () Bool)

(assert (=> b!2848335 (= e!1804989 Nil!33850)))

(declare-fun b!2848336 () Bool)

(declare-fun $colon$colon!588 (List!33974 Regex!8502) List!33974)

(declare-fun dynLambda!14211 (Int Rule!9974) Regex!8502)

(assert (=> b!2848336 (= e!1804989 ($colon$colon!588 (map!7266 (t!232998 rs!188) lambda!104604) (dynLambda!14211 lambda!104604 (h!39269 rs!188))))))

(assert (= (and d!825657 c!459493) b!2848335))

(assert (= (and d!825657 (not c!459493)) b!2848336))

(declare-fun b_lambda!85589 () Bool)

(assert (=> (not b_lambda!85589) (not b!2848336)))

(declare-fun m!3275413 () Bool)

(assert (=> d!825657 m!3275413))

(declare-fun m!3275415 () Bool)

(assert (=> d!825657 m!3275415))

(declare-fun m!3275417 () Bool)

(assert (=> b!2848336 m!3275417))

(declare-fun m!3275419 () Bool)

(assert (=> b!2848336 m!3275419))

(assert (=> b!2848336 m!3275417))

(assert (=> b!2848336 m!3275419))

(declare-fun m!3275421 () Bool)

(assert (=> b!2848336 m!3275421))

(assert (=> b!2848286 d!825657))

(declare-fun bs!520007 () Bool)

(declare-fun d!825659 () Bool)

(assert (= bs!520007 (and d!825659 b!2848286)))

(declare-fun lambda!104616 () Int)

(assert (=> bs!520007 (= lambda!104616 lambda!104604)))

(declare-fun lambda!104617 () Int)

(assert (=> bs!520007 (= lambda!104617 lambda!104605)))

(assert (=> d!825659 (forall!6949 (map!7266 (t!232998 rs!188) lambda!104616) lambda!104617)))

(declare-fun lt!1013033 () Unit!47584)

(declare-fun e!1804992 () Unit!47584)

(assert (=> d!825659 (= lt!1013033 e!1804992)))

(declare-fun c!459496 () Bool)

(assert (=> d!825659 (= c!459496 (is-Nil!33849 (t!232998 rs!188)))))

(assert (=> d!825659 (rulesValidInductive!1752 thiss!10983 (t!232998 rs!188))))

(assert (=> d!825659 (= (lemma!570 rules!1039 thiss!10983 (t!232998 rs!188)) lt!1013033)))

(declare-fun b!2848341 () Bool)

(declare-fun Unit!47589 () Unit!47584)

(assert (=> b!2848341 (= e!1804992 Unit!47589)))

(declare-fun b!2848342 () Bool)

(declare-fun Unit!47590 () Unit!47584)

(assert (=> b!2848342 (= e!1804992 Unit!47590)))

(declare-fun lt!1013034 () Unit!47584)

(assert (=> b!2848342 (= lt!1013034 (lemma!570 rules!1039 thiss!10983 (t!232998 (t!232998 rs!188))))))

(assert (= (and d!825659 c!459496) b!2848341))

(assert (= (and d!825659 (not c!459496)) b!2848342))

(declare-fun m!3275423 () Bool)

(assert (=> d!825659 m!3275423))

(assert (=> d!825659 m!3275423))

(declare-fun m!3275425 () Bool)

(assert (=> d!825659 m!3275425))

(declare-fun m!3275427 () Bool)

(assert (=> d!825659 m!3275427))

(declare-fun m!3275429 () Bool)

(assert (=> b!2848342 m!3275429))

(assert (=> b!2848286 d!825659))

(declare-fun d!825661 () Bool)

(assert (=> d!825661 true))

(declare-fun lt!1013037 () Bool)

(declare-fun lambda!104620 () Int)

(declare-fun forall!6951 (List!33973 Int) Bool)

(assert (=> d!825661 (= lt!1013037 (forall!6951 rules!1039 lambda!104620))))

(declare-fun e!1804998 () Bool)

(assert (=> d!825661 (= lt!1013037 e!1804998)))

(declare-fun res!1184146 () Bool)

(assert (=> d!825661 (=> res!1184146 e!1804998)))

(assert (=> d!825661 (= res!1184146 (not (is-Cons!33849 rules!1039)))))

(assert (=> d!825661 (= (rulesValidInductive!1752 thiss!10983 rules!1039) lt!1013037)))

(declare-fun b!2848347 () Bool)

(declare-fun e!1804997 () Bool)

(assert (=> b!2848347 (= e!1804998 e!1804997)))

(declare-fun res!1184145 () Bool)

(assert (=> b!2848347 (=> (not res!1184145) (not e!1804997))))

(declare-fun ruleValid!1613 (LexerInterface!4676 Rule!9974) Bool)

(assert (=> b!2848347 (= res!1184145 (ruleValid!1613 thiss!10983 (h!39269 rules!1039)))))

(declare-fun b!2848348 () Bool)

(assert (=> b!2848348 (= e!1804997 (rulesValidInductive!1752 thiss!10983 (t!232998 rules!1039)))))

(assert (= (and d!825661 (not res!1184146)) b!2848347))

(assert (= (and b!2848347 res!1184145) b!2848348))

(declare-fun m!3275431 () Bool)

(assert (=> d!825661 m!3275431))

(declare-fun m!3275433 () Bool)

(assert (=> b!2848347 m!3275433))

(declare-fun m!3275435 () Bool)

(assert (=> b!2848348 m!3275435))

(assert (=> b!2848284 d!825661))

(declare-fun bs!520008 () Bool)

(declare-fun d!825667 () Bool)

(assert (= bs!520008 (and d!825667 d!825661)))

(declare-fun lambda!104621 () Int)

(assert (=> bs!520008 (= lambda!104621 lambda!104620)))

(assert (=> d!825667 true))

(declare-fun lt!1013038 () Bool)

(assert (=> d!825667 (= lt!1013038 (forall!6951 rs!188 lambda!104621))))

(declare-fun e!1805000 () Bool)

(assert (=> d!825667 (= lt!1013038 e!1805000)))

(declare-fun res!1184148 () Bool)

(assert (=> d!825667 (=> res!1184148 e!1805000)))

(assert (=> d!825667 (= res!1184148 (not (is-Cons!33849 rs!188)))))

(assert (=> d!825667 (= (rulesValidInductive!1752 thiss!10983 rs!188) lt!1013038)))

(declare-fun b!2848351 () Bool)

(declare-fun e!1804999 () Bool)

(assert (=> b!2848351 (= e!1805000 e!1804999)))

(declare-fun res!1184147 () Bool)

(assert (=> b!2848351 (=> (not res!1184147) (not e!1804999))))

(assert (=> b!2848351 (= res!1184147 (ruleValid!1613 thiss!10983 (h!39269 rs!188)))))

(declare-fun b!2848352 () Bool)

(assert (=> b!2848352 (= e!1804999 (rulesValidInductive!1752 thiss!10983 (t!232998 rs!188)))))

(assert (= (and d!825667 (not res!1184148)) b!2848351))

(assert (= (and b!2848351 res!1184147) b!2848352))

(declare-fun m!3275437 () Bool)

(assert (=> d!825667 m!3275437))

(declare-fun m!3275439 () Bool)

(assert (=> b!2848351 m!3275439))

(assert (=> b!2848352 m!3275427))

(assert (=> b!2848283 d!825667))

(declare-fun b!2848366 () Bool)

(declare-fun e!1805003 () Bool)

(declare-fun tp!914449 () Bool)

(declare-fun tp!914446 () Bool)

(assert (=> b!2848366 (= e!1805003 (and tp!914449 tp!914446))))

(assert (=> b!2848282 (= tp!914406 e!1805003)))

(declare-fun b!2848365 () Bool)

(declare-fun tp!914448 () Bool)

(assert (=> b!2848365 (= e!1805003 tp!914448)))

(declare-fun b!2848364 () Bool)

(declare-fun tp!914447 () Bool)

(declare-fun tp!914445 () Bool)

(assert (=> b!2848364 (= e!1805003 (and tp!914447 tp!914445))))

(declare-fun b!2848363 () Bool)

(declare-fun tp_is_empty!14745 () Bool)

(assert (=> b!2848363 (= e!1805003 tp_is_empty!14745)))

(assert (= (and b!2848282 (is-ElementMatch!8502 (regex!5087 (h!39269 rs!188)))) b!2848363))

(assert (= (and b!2848282 (is-Concat!13820 (regex!5087 (h!39269 rs!188)))) b!2848364))

(assert (= (and b!2848282 (is-Star!8502 (regex!5087 (h!39269 rs!188)))) b!2848365))

(assert (= (and b!2848282 (is-Union!8502 (regex!5087 (h!39269 rs!188)))) b!2848366))

(declare-fun b!2848370 () Bool)

(declare-fun e!1805004 () Bool)

(declare-fun tp!914454 () Bool)

(declare-fun tp!914451 () Bool)

(assert (=> b!2848370 (= e!1805004 (and tp!914454 tp!914451))))

(assert (=> b!2848281 (= tp!914410 e!1805004)))

(declare-fun b!2848369 () Bool)

(declare-fun tp!914453 () Bool)

(assert (=> b!2848369 (= e!1805004 tp!914453)))

(declare-fun b!2848368 () Bool)

(declare-fun tp!914452 () Bool)

(declare-fun tp!914450 () Bool)

(assert (=> b!2848368 (= e!1805004 (and tp!914452 tp!914450))))

(declare-fun b!2848367 () Bool)

(assert (=> b!2848367 (= e!1805004 tp_is_empty!14745)))

(assert (= (and b!2848281 (is-ElementMatch!8502 (regex!5087 (h!39269 rules!1039)))) b!2848367))

(assert (= (and b!2848281 (is-Concat!13820 (regex!5087 (h!39269 rules!1039)))) b!2848368))

(assert (= (and b!2848281 (is-Star!8502 (regex!5087 (h!39269 rules!1039)))) b!2848369))

(assert (= (and b!2848281 (is-Union!8502 (regex!5087 (h!39269 rules!1039)))) b!2848370))

(declare-fun b!2848381 () Bool)

(declare-fun b_free!82877 () Bool)

(declare-fun b_next!83581 () Bool)

(assert (=> b!2848381 (= b_free!82877 (not b_next!83581))))

(declare-fun tp!914465 () Bool)

(declare-fun b_and!209119 () Bool)

(assert (=> b!2848381 (= tp!914465 b_and!209119)))

(declare-fun b_free!82879 () Bool)

(declare-fun b_next!83583 () Bool)

(assert (=> b!2848381 (= b_free!82879 (not b_next!83583))))

(declare-fun tp!914463 () Bool)

(declare-fun b_and!209121 () Bool)

(assert (=> b!2848381 (= tp!914463 b_and!209121)))

(declare-fun e!1805014 () Bool)

(assert (=> b!2848381 (= e!1805014 (and tp!914465 tp!914463))))

(declare-fun tp!914466 () Bool)

(declare-fun e!1805015 () Bool)

(declare-fun b!2848380 () Bool)

(assert (=> b!2848380 (= e!1805015 (and tp!914466 (inv!45878 (tag!5591 (h!39269 (t!232998 rules!1039)))) (inv!45881 (transformation!5087 (h!39269 (t!232998 rules!1039)))) e!1805014))))

(declare-fun b!2848379 () Bool)

(declare-fun e!1805013 () Bool)

(declare-fun tp!914464 () Bool)

(assert (=> b!2848379 (= e!1805013 (and e!1805015 tp!914464))))

(assert (=> b!2848285 (= tp!914405 e!1805013)))

(assert (= b!2848380 b!2848381))

(assert (= b!2848379 b!2848380))

(assert (= (and b!2848285 (is-Cons!33849 (t!232998 rules!1039))) b!2848379))

(declare-fun m!3275441 () Bool)

(assert (=> b!2848380 m!3275441))

(declare-fun m!3275443 () Bool)

(assert (=> b!2848380 m!3275443))

(declare-fun b!2848384 () Bool)

(declare-fun b_free!82881 () Bool)

(declare-fun b_next!83585 () Bool)

(assert (=> b!2848384 (= b_free!82881 (not b_next!83585))))

(declare-fun tp!914469 () Bool)

(declare-fun b_and!209123 () Bool)

(assert (=> b!2848384 (= tp!914469 b_and!209123)))

(declare-fun b_free!82883 () Bool)

(declare-fun b_next!83587 () Bool)

(assert (=> b!2848384 (= b_free!82883 (not b_next!83587))))

(declare-fun tp!914467 () Bool)

(declare-fun b_and!209125 () Bool)

(assert (=> b!2848384 (= tp!914467 b_and!209125)))

(declare-fun e!1805018 () Bool)

(assert (=> b!2848384 (= e!1805018 (and tp!914469 tp!914467))))

(declare-fun tp!914470 () Bool)

(declare-fun e!1805019 () Bool)

(declare-fun b!2848383 () Bool)

(assert (=> b!2848383 (= e!1805019 (and tp!914470 (inv!45878 (tag!5591 (h!39269 (t!232998 rs!188)))) (inv!45881 (transformation!5087 (h!39269 (t!232998 rs!188)))) e!1805018))))

(declare-fun b!2848382 () Bool)

(declare-fun e!1805017 () Bool)

(declare-fun tp!914468 () Bool)

(assert (=> b!2848382 (= e!1805017 (and e!1805019 tp!914468))))

(assert (=> b!2848289 (= tp!914403 e!1805017)))

(assert (= b!2848383 b!2848384))

(assert (= b!2848382 b!2848383))

(assert (= (and b!2848289 (is-Cons!33849 (t!232998 rs!188))) b!2848382))

(declare-fun m!3275445 () Bool)

(assert (=> b!2848383 m!3275445))

(declare-fun m!3275447 () Bool)

(assert (=> b!2848383 m!3275447))

(declare-fun b_lambda!85591 () Bool)

(assert (= b_lambda!85587 (or b!2848286 b_lambda!85591)))

(declare-fun bs!520009 () Bool)

(declare-fun d!825669 () Bool)

(assert (= bs!520009 (and d!825669 b!2848286)))

(declare-fun validRegex!3374 (Regex!8502) Bool)

(assert (=> bs!520009 (= (dynLambda!14210 lambda!104605 (h!39270 (map!7266 rs!188 lambda!104604))) (validRegex!3374 (h!39270 (map!7266 rs!188 lambda!104604))))))

(declare-fun m!3275449 () Bool)

(assert (=> bs!520009 m!3275449))

(assert (=> b!2848329 d!825669))

(declare-fun b_lambda!85593 () Bool)

(assert (= b_lambda!85589 (or b!2848286 b_lambda!85593)))

(declare-fun bs!520010 () Bool)

(declare-fun d!825671 () Bool)

(assert (= bs!520010 (and d!825671 b!2848286)))

(assert (=> bs!520010 (= (dynLambda!14211 lambda!104604 (h!39269 rs!188)) (regex!5087 (h!39269 rs!188)))))

(assert (=> b!2848336 d!825671))

(push 1)

(assert (not b!2848379))

(assert (not b!2848342))

(assert (not b!2848383))

(assert (not b_next!83571))

(assert (not b!2848364))

(assert (not b_next!83587))

(assert b_and!209119)

(assert (not d!825649))

(assert (not bs!520009))

(assert b_and!209105)

(assert (not b_next!83585))

(assert b_and!209107)

(assert (not b!2848368))

(assert (not b!2848323))

(assert (not b_next!83567))

(assert (not d!825653))

(assert (not b!2848351))

(assert (not b_lambda!85591))

(assert (not b!2848330))

(assert (not b!2848324))

(assert (not b_next!83581))

(assert (not b_next!83565))

(assert (not b!2848348))

(assert b_and!209125)

(assert (not b!2848347))

(assert b_and!209123)

(assert (not d!825659))

(assert tp_is_empty!14745)

(assert (not d!825657))

(assert (not b_next!83583))

(assert (not b!2848365))

(assert (not b_lambda!85593))

(assert b_and!209109)

(assert (not b!2848369))

(assert (not d!825667))

(assert (not b!2848352))

(assert (not d!825661))

(assert (not b!2848370))

(assert (not b!2848336))

(assert (not b!2848366))

(assert (not b_next!83569))

(assert b_and!209121)

(assert (not b!2848380))

(assert (not b!2848382))

(assert b_and!209103)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83567))

(assert (not b_next!83581))

(assert (not b_next!83565))

(assert b_and!209125)

(assert (not b_next!83571))

(assert b_and!209123)

(assert (not b_next!83587))

(assert (not b_next!83583))

(assert b_and!209109)

(assert b_and!209119)

(assert b_and!209103)

(assert b_and!209105)

(assert (not b_next!83585))

(assert b_and!209107)

(assert (not b_next!83569))

(assert b_and!209121)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!825691 () Bool)

(declare-fun res!1184169 () Bool)

(declare-fun e!1805065 () Bool)

(assert (=> d!825691 (=> res!1184169 e!1805065)))

(assert (=> d!825691 (= res!1184169 (is-Nil!33850 (t!232999 (map!7266 rs!188 lambda!104604))))))

(assert (=> d!825691 (= (forall!6949 (t!232999 (map!7266 rs!188 lambda!104604)) lambda!104605) e!1805065)))

(declare-fun b!2848449 () Bool)

(declare-fun e!1805066 () Bool)

(assert (=> b!2848449 (= e!1805065 e!1805066)))

(declare-fun res!1184170 () Bool)

(assert (=> b!2848449 (=> (not res!1184170) (not e!1805066))))

(assert (=> b!2848449 (= res!1184170 (dynLambda!14210 lambda!104605 (h!39270 (t!232999 (map!7266 rs!188 lambda!104604)))))))

(declare-fun b!2848450 () Bool)

(assert (=> b!2848450 (= e!1805066 (forall!6949 (t!232999 (t!232999 (map!7266 rs!188 lambda!104604))) lambda!104605))))

(assert (= (and d!825691 (not res!1184169)) b!2848449))

(assert (= (and b!2848449 res!1184170) b!2848450))

(declare-fun b_lambda!85603 () Bool)

(assert (=> (not b_lambda!85603) (not b!2848449)))

(declare-fun m!3275501 () Bool)

(assert (=> b!2848449 m!3275501))

(declare-fun m!3275503 () Bool)

(assert (=> b!2848450 m!3275503))

(assert (=> b!2848330 d!825691))

(declare-fun d!825693 () Bool)

(assert (=> d!825693 (= (inv!45878 (tag!5591 (h!39269 (t!232998 rules!1039)))) (= (mod (str.len (value!163404 (tag!5591 (h!39269 (t!232998 rules!1039))))) 2) 0))))

(assert (=> b!2848380 d!825693))

(declare-fun d!825695 () Bool)

(declare-fun res!1184171 () Bool)

(declare-fun e!1805067 () Bool)

(assert (=> d!825695 (=> (not res!1184171) (not e!1805067))))

(assert (=> d!825695 (= res!1184171 (semiInverseModEq!2124 (toChars!7002 (transformation!5087 (h!39269 (t!232998 rules!1039)))) (toValue!7143 (transformation!5087 (h!39269 (t!232998 rules!1039))))))))

(assert (=> d!825695 (= (inv!45881 (transformation!5087 (h!39269 (t!232998 rules!1039)))) e!1805067)))

(declare-fun b!2848451 () Bool)

(assert (=> b!2848451 (= e!1805067 (equivClasses!2023 (toChars!7002 (transformation!5087 (h!39269 (t!232998 rules!1039)))) (toValue!7143 (transformation!5087 (h!39269 (t!232998 rules!1039))))))))

(assert (= (and d!825695 res!1184171) b!2848451))

(declare-fun m!3275505 () Bool)

(assert (=> d!825695 m!3275505))

(declare-fun m!3275507 () Bool)

(assert (=> b!2848451 m!3275507))

(assert (=> b!2848380 d!825695))

(declare-fun d!825697 () Bool)

(assert (=> d!825697 true))

(declare-fun lambda!104634 () Int)

(declare-fun order!18059 () Int)

(declare-fun order!18057 () Int)

(declare-fun dynLambda!14214 (Int Int) Int)

(declare-fun dynLambda!14215 (Int Int) Int)

(assert (=> d!825697 (< (dynLambda!14214 order!18057 (toChars!7002 (transformation!5087 (h!39269 rules!1039)))) (dynLambda!14215 order!18059 lambda!104634))))

(assert (=> d!825697 true))

(declare-fun order!18061 () Int)

(declare-fun dynLambda!14216 (Int Int) Int)

(assert (=> d!825697 (< (dynLambda!14216 order!18061 (toValue!7143 (transformation!5087 (h!39269 rules!1039)))) (dynLambda!14215 order!18059 lambda!104634))))

(declare-fun Forall!1252 (Int) Bool)

(assert (=> d!825697 (= (semiInverseModEq!2124 (toChars!7002 (transformation!5087 (h!39269 rules!1039))) (toValue!7143 (transformation!5087 (h!39269 rules!1039)))) (Forall!1252 lambda!104634))))

(declare-fun bs!520015 () Bool)

(assert (= bs!520015 d!825697))

(declare-fun m!3275509 () Bool)

(assert (=> bs!520015 m!3275509))

(assert (=> d!825653 d!825697))

(declare-fun bs!520016 () Bool)

(declare-fun d!825699 () Bool)

(assert (= bs!520016 (and d!825699 d!825661)))

(declare-fun lambda!104635 () Int)

(assert (=> bs!520016 (= lambda!104635 lambda!104620)))

(declare-fun bs!520017 () Bool)

(assert (= bs!520017 (and d!825699 d!825667)))

(assert (=> bs!520017 (= lambda!104635 lambda!104621)))

(assert (=> d!825699 true))

(declare-fun lt!1013052 () Bool)

(assert (=> d!825699 (= lt!1013052 (forall!6951 (t!232998 rules!1039) lambda!104635))))

(declare-fun e!1805069 () Bool)

(assert (=> d!825699 (= lt!1013052 e!1805069)))

(declare-fun res!1184173 () Bool)

(assert (=> d!825699 (=> res!1184173 e!1805069)))

(assert (=> d!825699 (= res!1184173 (not (is-Cons!33849 (t!232998 rules!1039))))))

(assert (=> d!825699 (= (rulesValidInductive!1752 thiss!10983 (t!232998 rules!1039)) lt!1013052)))

(declare-fun b!2848456 () Bool)

(declare-fun e!1805068 () Bool)

(assert (=> b!2848456 (= e!1805069 e!1805068)))

(declare-fun res!1184172 () Bool)

(assert (=> b!2848456 (=> (not res!1184172) (not e!1805068))))

(assert (=> b!2848456 (= res!1184172 (ruleValid!1613 thiss!10983 (h!39269 (t!232998 rules!1039))))))

(declare-fun b!2848457 () Bool)

(assert (=> b!2848457 (= e!1805068 (rulesValidInductive!1752 thiss!10983 (t!232998 (t!232998 rules!1039))))))

(assert (= (and d!825699 (not res!1184173)) b!2848456))

(assert (= (and b!2848456 res!1184172) b!2848457))

(declare-fun m!3275511 () Bool)

(assert (=> d!825699 m!3275511))

(declare-fun m!3275513 () Bool)

(assert (=> b!2848456 m!3275513))

(declare-fun m!3275515 () Bool)

(assert (=> b!2848457 m!3275515))

(assert (=> b!2848348 d!825699))

(declare-fun d!825701 () Bool)

(declare-fun lt!1013055 () Int)

(assert (=> d!825701 (>= lt!1013055 0)))

(declare-fun e!1805072 () Int)

(assert (=> d!825701 (= lt!1013055 e!1805072)))

(declare-fun c!459505 () Bool)

(assert (=> d!825701 (= c!459505 (is-Nil!33850 lt!1013028))))

(assert (=> d!825701 (= (size!26258 lt!1013028) lt!1013055)))

(declare-fun b!2848462 () Bool)

(assert (=> b!2848462 (= e!1805072 0)))

(declare-fun b!2848463 () Bool)

(assert (=> b!2848463 (= e!1805072 (+ 1 (size!26258 (t!232999 lt!1013028))))))

(assert (= (and d!825701 c!459505) b!2848462))

(assert (= (and d!825701 (not c!459505)) b!2848463))

(declare-fun m!3275517 () Bool)

(assert (=> b!2848463 m!3275517))

(assert (=> d!825657 d!825701))

(declare-fun d!825703 () Bool)

(declare-fun lt!1013058 () Int)

(assert (=> d!825703 (>= lt!1013058 0)))

(declare-fun e!1805075 () Int)

(assert (=> d!825703 (= lt!1013058 e!1805075)))

(declare-fun c!459508 () Bool)

(assert (=> d!825703 (= c!459508 (is-Nil!33849 rs!188))))

(assert (=> d!825703 (= (size!26259 rs!188) lt!1013058)))

(declare-fun b!2848468 () Bool)

(assert (=> b!2848468 (= e!1805075 0)))

(declare-fun b!2848469 () Bool)

(assert (=> b!2848469 (= e!1805075 (+ 1 (size!26259 (t!232998 rs!188))))))

(assert (= (and d!825703 c!459508) b!2848468))

(assert (= (and d!825703 (not c!459508)) b!2848469))

(declare-fun m!3275519 () Bool)

(assert (=> b!2848469 m!3275519))

(assert (=> d!825657 d!825703))

(declare-fun d!825705 () Bool)

(declare-fun res!1184178 () Bool)

(declare-fun e!1805078 () Bool)

(assert (=> d!825705 (=> (not res!1184178) (not e!1805078))))

(assert (=> d!825705 (= res!1184178 (validRegex!3374 (regex!5087 (h!39269 rules!1039))))))

(assert (=> d!825705 (= (ruleValid!1613 thiss!10983 (h!39269 rules!1039)) e!1805078)))

(declare-fun b!2848474 () Bool)

(declare-fun res!1184179 () Bool)

(assert (=> b!2848474 (=> (not res!1184179) (not e!1805078))))

(declare-fun nullable!2630 (Regex!8502) Bool)

(assert (=> b!2848474 (= res!1184179 (not (nullable!2630 (regex!5087 (h!39269 rules!1039)))))))

(declare-fun b!2848475 () Bool)

(assert (=> b!2848475 (= e!1805078 (not (= (tag!5591 (h!39269 rules!1039)) (String!37202 ""))))))

(assert (= (and d!825705 res!1184178) b!2848474))

(assert (= (and b!2848474 res!1184179) b!2848475))

(declare-fun m!3275521 () Bool)

(assert (=> d!825705 m!3275521))

(declare-fun m!3275523 () Bool)

(assert (=> b!2848474 m!3275523))

(assert (=> b!2848347 d!825705))

(declare-fun bs!520018 () Bool)

(declare-fun d!825707 () Bool)

(assert (= bs!520018 (and d!825707 d!825697)))

(declare-fun lambda!104636 () Int)

(assert (=> bs!520018 (= (and (= (toChars!7002 (transformation!5087 (h!39269 rs!188))) (toChars!7002 (transformation!5087 (h!39269 rules!1039)))) (= (toValue!7143 (transformation!5087 (h!39269 rs!188))) (toValue!7143 (transformation!5087 (h!39269 rules!1039))))) (= lambda!104636 lambda!104634))))

(assert (=> d!825707 true))

(assert (=> d!825707 (< (dynLambda!14214 order!18057 (toChars!7002 (transformation!5087 (h!39269 rs!188)))) (dynLambda!14215 order!18059 lambda!104636))))

(assert (=> d!825707 true))

(assert (=> d!825707 (< (dynLambda!14216 order!18061 (toValue!7143 (transformation!5087 (h!39269 rs!188)))) (dynLambda!14215 order!18059 lambda!104636))))

(assert (=> d!825707 (= (semiInverseModEq!2124 (toChars!7002 (transformation!5087 (h!39269 rs!188))) (toValue!7143 (transformation!5087 (h!39269 rs!188)))) (Forall!1252 lambda!104636))))

(declare-fun bs!520019 () Bool)

(assert (= bs!520019 d!825707))

(declare-fun m!3275525 () Bool)

(assert (=> bs!520019 m!3275525))

(assert (=> d!825649 d!825707))

(declare-fun bs!520020 () Bool)

(declare-fun d!825709 () Bool)

(assert (= bs!520020 (and d!825709 b!2848286)))

(declare-fun lambda!104637 () Int)

(assert (=> bs!520020 (= lambda!104637 lambda!104604)))

(declare-fun bs!520021 () Bool)

(assert (= bs!520021 (and d!825709 d!825659)))

(assert (=> bs!520021 (= lambda!104637 lambda!104616)))

(declare-fun lambda!104638 () Int)

(assert (=> bs!520020 (= lambda!104638 lambda!104605)))

(assert (=> bs!520021 (= lambda!104638 lambda!104617)))

(assert (=> d!825709 (forall!6949 (map!7266 (t!232998 (t!232998 rs!188)) lambda!104637) lambda!104638)))

(declare-fun lt!1013059 () Unit!47584)

(declare-fun e!1805079 () Unit!47584)

(assert (=> d!825709 (= lt!1013059 e!1805079)))

(declare-fun c!459509 () Bool)

(assert (=> d!825709 (= c!459509 (is-Nil!33849 (t!232998 (t!232998 rs!188))))))

(assert (=> d!825709 (rulesValidInductive!1752 thiss!10983 (t!232998 (t!232998 rs!188)))))

(assert (=> d!825709 (= (lemma!570 rules!1039 thiss!10983 (t!232998 (t!232998 rs!188))) lt!1013059)))

(declare-fun b!2848476 () Bool)

(declare-fun Unit!47593 () Unit!47584)

(assert (=> b!2848476 (= e!1805079 Unit!47593)))

(declare-fun b!2848477 () Bool)

(declare-fun Unit!47594 () Unit!47584)

(assert (=> b!2848477 (= e!1805079 Unit!47594)))

(declare-fun lt!1013060 () Unit!47584)

(assert (=> b!2848477 (= lt!1013060 (lemma!570 rules!1039 thiss!10983 (t!232998 (t!232998 (t!232998 rs!188)))))))

(assert (= (and d!825709 c!459509) b!2848476))

(assert (= (and d!825709 (not c!459509)) b!2848477))

(declare-fun m!3275527 () Bool)

(assert (=> d!825709 m!3275527))

(assert (=> d!825709 m!3275527))

(declare-fun m!3275529 () Bool)

(assert (=> d!825709 m!3275529))

(declare-fun m!3275531 () Bool)

(assert (=> d!825709 m!3275531))

(declare-fun m!3275533 () Bool)

(assert (=> b!2848477 m!3275533))

(assert (=> b!2848342 d!825709))

(declare-fun d!825711 () Bool)

(declare-fun res!1184191 () Bool)

(declare-fun e!1805094 () Bool)

(assert (=> d!825711 (=> res!1184191 e!1805094)))

(assert (=> d!825711 (= res!1184191 (is-ElementMatch!8502 (h!39270 (map!7266 rs!188 lambda!104604))))))

(assert (=> d!825711 (= (validRegex!3374 (h!39270 (map!7266 rs!188 lambda!104604))) e!1805094)))

(declare-fun b!2848496 () Bool)

(declare-fun e!1805095 () Bool)

(declare-fun call!183595 () Bool)

(assert (=> b!2848496 (= e!1805095 call!183595)))

(declare-fun b!2848497 () Bool)

(declare-fun e!1805096 () Bool)

(declare-fun e!1805098 () Bool)

(assert (=> b!2848497 (= e!1805096 e!1805098)))

(declare-fun res!1184193 () Bool)

(assert (=> b!2848497 (= res!1184193 (not (nullable!2630 (reg!8831 (h!39270 (map!7266 rs!188 lambda!104604))))))))

(assert (=> b!2848497 (=> (not res!1184193) (not e!1805098))))

(declare-fun bm!183590 () Bool)

(declare-fun call!183596 () Bool)

(declare-fun call!183597 () Bool)

(assert (=> bm!183590 (= call!183596 call!183597)))

(declare-fun b!2848498 () Bool)

(declare-fun res!1184194 () Bool)

(declare-fun e!1805097 () Bool)

(assert (=> b!2848498 (=> res!1184194 e!1805097)))

(assert (=> b!2848498 (= res!1184194 (not (is-Concat!13820 (h!39270 (map!7266 rs!188 lambda!104604)))))))

(declare-fun e!1805100 () Bool)

(assert (=> b!2848498 (= e!1805100 e!1805097)))

(declare-fun b!2848499 () Bool)

(assert (=> b!2848499 (= e!1805094 e!1805096)))

(declare-fun c!459514 () Bool)

(assert (=> b!2848499 (= c!459514 (is-Star!8502 (h!39270 (map!7266 rs!188 lambda!104604))))))

(declare-fun b!2848500 () Bool)

(declare-fun e!1805099 () Bool)

(assert (=> b!2848500 (= e!1805097 e!1805099)))

(declare-fun res!1184190 () Bool)

(assert (=> b!2848500 (=> (not res!1184190) (not e!1805099))))

(assert (=> b!2848500 (= res!1184190 call!183596)))

(declare-fun bm!183591 () Bool)

(declare-fun c!459515 () Bool)

(assert (=> bm!183591 (= call!183595 (validRegex!3374 (ite c!459515 (regTwo!17517 (h!39270 (map!7266 rs!188 lambda!104604))) (regTwo!17516 (h!39270 (map!7266 rs!188 lambda!104604))))))))

(declare-fun b!2848501 () Bool)

(assert (=> b!2848501 (= e!1805098 call!183597)))

(declare-fun b!2848502 () Bool)

(declare-fun res!1184192 () Bool)

(assert (=> b!2848502 (=> (not res!1184192) (not e!1805095))))

(assert (=> b!2848502 (= res!1184192 call!183596)))

(assert (=> b!2848502 (= e!1805100 e!1805095)))

(declare-fun b!2848503 () Bool)

(assert (=> b!2848503 (= e!1805096 e!1805100)))

(assert (=> b!2848503 (= c!459515 (is-Union!8502 (h!39270 (map!7266 rs!188 lambda!104604))))))

(declare-fun b!2848504 () Bool)

(assert (=> b!2848504 (= e!1805099 call!183595)))

(declare-fun bm!183592 () Bool)

(assert (=> bm!183592 (= call!183597 (validRegex!3374 (ite c!459514 (reg!8831 (h!39270 (map!7266 rs!188 lambda!104604))) (ite c!459515 (regOne!17517 (h!39270 (map!7266 rs!188 lambda!104604))) (regOne!17516 (h!39270 (map!7266 rs!188 lambda!104604)))))))))

(assert (= (and d!825711 (not res!1184191)) b!2848499))

(assert (= (and b!2848499 c!459514) b!2848497))

(assert (= (and b!2848499 (not c!459514)) b!2848503))

(assert (= (and b!2848497 res!1184193) b!2848501))

(assert (= (and b!2848503 c!459515) b!2848502))

(assert (= (and b!2848503 (not c!459515)) b!2848498))

(assert (= (and b!2848502 res!1184192) b!2848496))

(assert (= (and b!2848498 (not res!1184194)) b!2848500))

(assert (= (and b!2848500 res!1184190) b!2848504))

(assert (= (or b!2848496 b!2848504) bm!183591))

(assert (= (or b!2848502 b!2848500) bm!183590))

(assert (= (or b!2848501 bm!183590) bm!183592))

(declare-fun m!3275535 () Bool)

(assert (=> b!2848497 m!3275535))

(declare-fun m!3275537 () Bool)

(assert (=> bm!183591 m!3275537))

(declare-fun m!3275539 () Bool)

(assert (=> bm!183592 m!3275539))

(assert (=> bs!520009 d!825711))

(declare-fun d!825713 () Bool)

(declare-fun res!1184199 () Bool)

(declare-fun e!1805105 () Bool)

(assert (=> d!825713 (=> res!1184199 e!1805105)))

(assert (=> d!825713 (= res!1184199 (is-Nil!33849 rs!188))))

(assert (=> d!825713 (= (forall!6951 rs!188 lambda!104621) e!1805105)))

(declare-fun b!2848509 () Bool)

(declare-fun e!1805106 () Bool)

(assert (=> b!2848509 (= e!1805105 e!1805106)))

(declare-fun res!1184200 () Bool)

(assert (=> b!2848509 (=> (not res!1184200) (not e!1805106))))

(declare-fun dynLambda!14217 (Int Rule!9974) Bool)

(assert (=> b!2848509 (= res!1184200 (dynLambda!14217 lambda!104621 (h!39269 rs!188)))))

(declare-fun b!2848510 () Bool)

(assert (=> b!2848510 (= e!1805106 (forall!6951 (t!232998 rs!188) lambda!104621))))

(assert (= (and d!825713 (not res!1184199)) b!2848509))

(assert (= (and b!2848509 res!1184200) b!2848510))

(declare-fun b_lambda!85605 () Bool)

(assert (=> (not b_lambda!85605) (not b!2848509)))

(declare-fun m!3275541 () Bool)

(assert (=> b!2848509 m!3275541))

(declare-fun m!3275543 () Bool)

(assert (=> b!2848510 m!3275543))

(assert (=> d!825667 d!825713))

(declare-fun d!825715 () Bool)

(assert (=> d!825715 (= (inv!45878 (tag!5591 (h!39269 (t!232998 rs!188)))) (= (mod (str.len (value!163404 (tag!5591 (h!39269 (t!232998 rs!188))))) 2) 0))))

(assert (=> b!2848383 d!825715))

(declare-fun d!825717 () Bool)

(declare-fun res!1184201 () Bool)

(declare-fun e!1805107 () Bool)

(assert (=> d!825717 (=> (not res!1184201) (not e!1805107))))

(assert (=> d!825717 (= res!1184201 (semiInverseModEq!2124 (toChars!7002 (transformation!5087 (h!39269 (t!232998 rs!188)))) (toValue!7143 (transformation!5087 (h!39269 (t!232998 rs!188))))))))

(assert (=> d!825717 (= (inv!45881 (transformation!5087 (h!39269 (t!232998 rs!188)))) e!1805107)))

(declare-fun b!2848511 () Bool)

(assert (=> b!2848511 (= e!1805107 (equivClasses!2023 (toChars!7002 (transformation!5087 (h!39269 (t!232998 rs!188)))) (toValue!7143 (transformation!5087 (h!39269 (t!232998 rs!188))))))))

(assert (= (and d!825717 res!1184201) b!2848511))

(declare-fun m!3275545 () Bool)

(assert (=> d!825717 m!3275545))

(declare-fun m!3275547 () Bool)

(assert (=> b!2848511 m!3275547))

(assert (=> b!2848383 d!825717))

(declare-fun d!825719 () Bool)

(declare-fun res!1184202 () Bool)

(declare-fun e!1805108 () Bool)

(assert (=> d!825719 (=> res!1184202 e!1805108)))

(assert (=> d!825719 (= res!1184202 (is-Nil!33850 (map!7266 (t!232998 rs!188) lambda!104616)))))

(assert (=> d!825719 (= (forall!6949 (map!7266 (t!232998 rs!188) lambda!104616) lambda!104617) e!1805108)))

(declare-fun b!2848512 () Bool)

(declare-fun e!1805109 () Bool)

(assert (=> b!2848512 (= e!1805108 e!1805109)))

(declare-fun res!1184203 () Bool)

(assert (=> b!2848512 (=> (not res!1184203) (not e!1805109))))

(assert (=> b!2848512 (= res!1184203 (dynLambda!14210 lambda!104617 (h!39270 (map!7266 (t!232998 rs!188) lambda!104616))))))

(declare-fun b!2848513 () Bool)

(assert (=> b!2848513 (= e!1805109 (forall!6949 (t!232999 (map!7266 (t!232998 rs!188) lambda!104616)) lambda!104617))))

(assert (= (and d!825719 (not res!1184202)) b!2848512))

(assert (= (and b!2848512 res!1184203) b!2848513))

(declare-fun b_lambda!85607 () Bool)

(assert (=> (not b_lambda!85607) (not b!2848512)))

(declare-fun m!3275549 () Bool)

(assert (=> b!2848512 m!3275549))

(declare-fun m!3275551 () Bool)

(assert (=> b!2848513 m!3275551))

(assert (=> d!825659 d!825719))

(declare-fun d!825721 () Bool)

(declare-fun lt!1013061 () List!33974)

(assert (=> d!825721 (= (size!26258 lt!1013061) (size!26259 (t!232998 rs!188)))))

(declare-fun e!1805110 () List!33974)

(assert (=> d!825721 (= lt!1013061 e!1805110)))

(declare-fun c!459516 () Bool)

(assert (=> d!825721 (= c!459516 (is-Nil!33849 (t!232998 rs!188)))))

(assert (=> d!825721 (= (map!7266 (t!232998 rs!188) lambda!104616) lt!1013061)))

(declare-fun b!2848514 () Bool)

(assert (=> b!2848514 (= e!1805110 Nil!33850)))

(declare-fun b!2848515 () Bool)

(assert (=> b!2848515 (= e!1805110 ($colon$colon!588 (map!7266 (t!232998 (t!232998 rs!188)) lambda!104616) (dynLambda!14211 lambda!104616 (h!39269 (t!232998 rs!188)))))))

(assert (= (and d!825721 c!459516) b!2848514))

(assert (= (and d!825721 (not c!459516)) b!2848515))

(declare-fun b_lambda!85609 () Bool)

(assert (=> (not b_lambda!85609) (not b!2848515)))

(declare-fun m!3275553 () Bool)

(assert (=> d!825721 m!3275553))

(assert (=> d!825721 m!3275519))

(declare-fun m!3275555 () Bool)

(assert (=> b!2848515 m!3275555))

(declare-fun m!3275557 () Bool)

(assert (=> b!2848515 m!3275557))

(assert (=> b!2848515 m!3275555))

(assert (=> b!2848515 m!3275557))

(declare-fun m!3275559 () Bool)

(assert (=> b!2848515 m!3275559))

(assert (=> d!825659 d!825721))

(declare-fun bs!520022 () Bool)

(declare-fun d!825723 () Bool)

(assert (= bs!520022 (and d!825723 d!825661)))

(declare-fun lambda!104639 () Int)

(assert (=> bs!520022 (= lambda!104639 lambda!104620)))

(declare-fun bs!520023 () Bool)

(assert (= bs!520023 (and d!825723 d!825667)))

(assert (=> bs!520023 (= lambda!104639 lambda!104621)))

(declare-fun bs!520024 () Bool)

(assert (= bs!520024 (and d!825723 d!825699)))

(assert (=> bs!520024 (= lambda!104639 lambda!104635)))

(assert (=> d!825723 true))

(declare-fun lt!1013062 () Bool)

(assert (=> d!825723 (= lt!1013062 (forall!6951 (t!232998 rs!188) lambda!104639))))

(declare-fun e!1805112 () Bool)

(assert (=> d!825723 (= lt!1013062 e!1805112)))

(declare-fun res!1184205 () Bool)

(assert (=> d!825723 (=> res!1184205 e!1805112)))

(assert (=> d!825723 (= res!1184205 (not (is-Cons!33849 (t!232998 rs!188))))))

(assert (=> d!825723 (= (rulesValidInductive!1752 thiss!10983 (t!232998 rs!188)) lt!1013062)))

(declare-fun b!2848516 () Bool)

(declare-fun e!1805111 () Bool)

(assert (=> b!2848516 (= e!1805112 e!1805111)))

(declare-fun res!1184204 () Bool)

(assert (=> b!2848516 (=> (not res!1184204) (not e!1805111))))

(assert (=> b!2848516 (= res!1184204 (ruleValid!1613 thiss!10983 (h!39269 (t!232998 rs!188))))))

(declare-fun b!2848517 () Bool)

(assert (=> b!2848517 (= e!1805111 (rulesValidInductive!1752 thiss!10983 (t!232998 (t!232998 rs!188))))))

(assert (= (and d!825723 (not res!1184205)) b!2848516))

(assert (= (and b!2848516 res!1184204) b!2848517))

(declare-fun m!3275561 () Bool)

(assert (=> d!825723 m!3275561))

(declare-fun m!3275563 () Bool)

(assert (=> b!2848516 m!3275563))

(assert (=> b!2848517 m!3275531))

(assert (=> d!825659 d!825723))

(assert (=> b!2848352 d!825723))

(declare-fun d!825725 () Bool)

(declare-fun res!1184206 () Bool)

(declare-fun e!1805113 () Bool)

(assert (=> d!825725 (=> (not res!1184206) (not e!1805113))))

(assert (=> d!825725 (= res!1184206 (validRegex!3374 (regex!5087 (h!39269 rs!188))))))

(assert (=> d!825725 (= (ruleValid!1613 thiss!10983 (h!39269 rs!188)) e!1805113)))

(declare-fun b!2848518 () Bool)

(declare-fun res!1184207 () Bool)

(assert (=> b!2848518 (=> (not res!1184207) (not e!1805113))))

(assert (=> b!2848518 (= res!1184207 (not (nullable!2630 (regex!5087 (h!39269 rs!188)))))))

(declare-fun b!2848519 () Bool)

(assert (=> b!2848519 (= e!1805113 (not (= (tag!5591 (h!39269 rs!188)) (String!37202 ""))))))

(assert (= (and d!825725 res!1184206) b!2848518))

(assert (= (and b!2848518 res!1184207) b!2848519))

(declare-fun m!3275565 () Bool)

(assert (=> d!825725 m!3275565))

(declare-fun m!3275567 () Bool)

(assert (=> b!2848518 m!3275567))

(assert (=> b!2848351 d!825725))

(declare-fun d!825727 () Bool)

(assert (=> d!825727 true))

(declare-fun lambda!104642 () Int)

(declare-fun order!18063 () Int)

(declare-fun dynLambda!14218 (Int Int) Int)

(assert (=> d!825727 (< (dynLambda!14216 order!18061 (toValue!7143 (transformation!5087 (h!39269 rs!188)))) (dynLambda!14218 order!18063 lambda!104642))))

(declare-fun Forall2!849 (Int) Bool)

(assert (=> d!825727 (= (equivClasses!2023 (toChars!7002 (transformation!5087 (h!39269 rs!188))) (toValue!7143 (transformation!5087 (h!39269 rs!188)))) (Forall2!849 lambda!104642))))

(declare-fun bs!520025 () Bool)

(assert (= bs!520025 d!825727))

(declare-fun m!3275569 () Bool)

(assert (=> bs!520025 m!3275569))

(assert (=> b!2848323 d!825727))

(declare-fun bs!520026 () Bool)

(declare-fun d!825729 () Bool)

(assert (= bs!520026 (and d!825729 d!825727)))

(declare-fun lambda!104643 () Int)

(assert (=> bs!520026 (= (= (toValue!7143 (transformation!5087 (h!39269 rules!1039))) (toValue!7143 (transformation!5087 (h!39269 rs!188)))) (= lambda!104643 lambda!104642))))

(assert (=> d!825729 true))

(assert (=> d!825729 (< (dynLambda!14216 order!18061 (toValue!7143 (transformation!5087 (h!39269 rules!1039)))) (dynLambda!14218 order!18063 lambda!104643))))

(assert (=> d!825729 (= (equivClasses!2023 (toChars!7002 (transformation!5087 (h!39269 rules!1039))) (toValue!7143 (transformation!5087 (h!39269 rules!1039)))) (Forall2!849 lambda!104643))))

(declare-fun bs!520027 () Bool)

(assert (= bs!520027 d!825729))

(declare-fun m!3275571 () Bool)

(assert (=> bs!520027 m!3275571))

(assert (=> b!2848324 d!825729))

(declare-fun d!825731 () Bool)

(assert (=> d!825731 (= ($colon$colon!588 (map!7266 (t!232998 rs!188) lambda!104604) (dynLambda!14211 lambda!104604 (h!39269 rs!188))) (Cons!33850 (dynLambda!14211 lambda!104604 (h!39269 rs!188)) (map!7266 (t!232998 rs!188) lambda!104604)))))

(assert (=> b!2848336 d!825731))

(declare-fun d!825733 () Bool)

(declare-fun lt!1013063 () List!33974)

(assert (=> d!825733 (= (size!26258 lt!1013063) (size!26259 (t!232998 rs!188)))))

(declare-fun e!1805116 () List!33974)

(assert (=> d!825733 (= lt!1013063 e!1805116)))

(declare-fun c!459517 () Bool)

(assert (=> d!825733 (= c!459517 (is-Nil!33849 (t!232998 rs!188)))))

(assert (=> d!825733 (= (map!7266 (t!232998 rs!188) lambda!104604) lt!1013063)))

(declare-fun b!2848524 () Bool)

(assert (=> b!2848524 (= e!1805116 Nil!33850)))

(declare-fun b!2848525 () Bool)

(assert (=> b!2848525 (= e!1805116 ($colon$colon!588 (map!7266 (t!232998 (t!232998 rs!188)) lambda!104604) (dynLambda!14211 lambda!104604 (h!39269 (t!232998 rs!188)))))))

(assert (= (and d!825733 c!459517) b!2848524))

(assert (= (and d!825733 (not c!459517)) b!2848525))

(declare-fun b_lambda!85611 () Bool)

(assert (=> (not b_lambda!85611) (not b!2848525)))

(declare-fun m!3275573 () Bool)

(assert (=> d!825733 m!3275573))

(assert (=> d!825733 m!3275519))

(declare-fun m!3275575 () Bool)

(assert (=> b!2848525 m!3275575))

(declare-fun m!3275577 () Bool)

(assert (=> b!2848525 m!3275577))

(assert (=> b!2848525 m!3275575))

(assert (=> b!2848525 m!3275577))

(declare-fun m!3275579 () Bool)

(assert (=> b!2848525 m!3275579))

(assert (=> b!2848336 d!825733))

(declare-fun d!825735 () Bool)

(declare-fun res!1184211 () Bool)

(declare-fun e!1805117 () Bool)

(assert (=> d!825735 (=> res!1184211 e!1805117)))

(assert (=> d!825735 (= res!1184211 (is-Nil!33849 rules!1039))))

(assert (=> d!825735 (= (forall!6951 rules!1039 lambda!104620) e!1805117)))

(declare-fun b!2848526 () Bool)

(declare-fun e!1805118 () Bool)

(assert (=> b!2848526 (= e!1805117 e!1805118)))

(declare-fun res!1184212 () Bool)

(assert (=> b!2848526 (=> (not res!1184212) (not e!1805118))))

(assert (=> b!2848526 (= res!1184212 (dynLambda!14217 lambda!104620 (h!39269 rules!1039)))))

(declare-fun b!2848527 () Bool)

(assert (=> b!2848527 (= e!1805118 (forall!6951 (t!232998 rules!1039) lambda!104620))))

(assert (= (and d!825735 (not res!1184211)) b!2848526))

(assert (= (and b!2848526 res!1184212) b!2848527))

(declare-fun b_lambda!85613 () Bool)

(assert (=> (not b_lambda!85613) (not b!2848526)))

(declare-fun m!3275581 () Bool)

(assert (=> b!2848526 m!3275581))

(declare-fun m!3275583 () Bool)

(assert (=> b!2848527 m!3275583))

(assert (=> d!825661 d!825735))

(declare-fun b!2848531 () Bool)

(declare-fun e!1805119 () Bool)

(declare-fun tp!914511 () Bool)

(declare-fun tp!914508 () Bool)

(assert (=> b!2848531 (= e!1805119 (and tp!914511 tp!914508))))

(assert (=> b!2848366 (= tp!914449 e!1805119)))

(declare-fun b!2848530 () Bool)

(declare-fun tp!914510 () Bool)

(assert (=> b!2848530 (= e!1805119 tp!914510)))

(declare-fun b!2848529 () Bool)

(declare-fun tp!914509 () Bool)

(declare-fun tp!914507 () Bool)

(assert (=> b!2848529 (= e!1805119 (and tp!914509 tp!914507))))

(declare-fun b!2848528 () Bool)

(assert (=> b!2848528 (= e!1805119 tp_is_empty!14745)))

(assert (= (and b!2848366 (is-ElementMatch!8502 (regOne!17517 (regex!5087 (h!39269 rs!188))))) b!2848528))

(assert (= (and b!2848366 (is-Concat!13820 (regOne!17517 (regex!5087 (h!39269 rs!188))))) b!2848529))

(assert (= (and b!2848366 (is-Star!8502 (regOne!17517 (regex!5087 (h!39269 rs!188))))) b!2848530))

(assert (= (and b!2848366 (is-Union!8502 (regOne!17517 (regex!5087 (h!39269 rs!188))))) b!2848531))

(declare-fun b!2848535 () Bool)

(declare-fun e!1805120 () Bool)

(declare-fun tp!914516 () Bool)

(declare-fun tp!914513 () Bool)

(assert (=> b!2848535 (= e!1805120 (and tp!914516 tp!914513))))

(assert (=> b!2848366 (= tp!914446 e!1805120)))

(declare-fun b!2848534 () Bool)

(declare-fun tp!914515 () Bool)

(assert (=> b!2848534 (= e!1805120 tp!914515)))

(declare-fun b!2848533 () Bool)

(declare-fun tp!914514 () Bool)

(declare-fun tp!914512 () Bool)

(assert (=> b!2848533 (= e!1805120 (and tp!914514 tp!914512))))

(declare-fun b!2848532 () Bool)

(assert (=> b!2848532 (= e!1805120 tp_is_empty!14745)))

(assert (= (and b!2848366 (is-ElementMatch!8502 (regTwo!17517 (regex!5087 (h!39269 rs!188))))) b!2848532))

(assert (= (and b!2848366 (is-Concat!13820 (regTwo!17517 (regex!5087 (h!39269 rs!188))))) b!2848533))

(assert (= (and b!2848366 (is-Star!8502 (regTwo!17517 (regex!5087 (h!39269 rs!188))))) b!2848534))

(assert (= (and b!2848366 (is-Union!8502 (regTwo!17517 (regex!5087 (h!39269 rs!188))))) b!2848535))

(declare-fun b!2848539 () Bool)

(declare-fun e!1805121 () Bool)

(declare-fun tp!914521 () Bool)

(declare-fun tp!914518 () Bool)

(assert (=> b!2848539 (= e!1805121 (and tp!914521 tp!914518))))

(assert (=> b!2848380 (= tp!914466 e!1805121)))

(declare-fun b!2848538 () Bool)

(declare-fun tp!914520 () Bool)

(assert (=> b!2848538 (= e!1805121 tp!914520)))

(declare-fun b!2848537 () Bool)

(declare-fun tp!914519 () Bool)

(declare-fun tp!914517 () Bool)

(assert (=> b!2848537 (= e!1805121 (and tp!914519 tp!914517))))

(declare-fun b!2848536 () Bool)

(assert (=> b!2848536 (= e!1805121 tp_is_empty!14745)))

(assert (= (and b!2848380 (is-ElementMatch!8502 (regex!5087 (h!39269 (t!232998 rules!1039))))) b!2848536))

(assert (= (and b!2848380 (is-Concat!13820 (regex!5087 (h!39269 (t!232998 rules!1039))))) b!2848537))

(assert (= (and b!2848380 (is-Star!8502 (regex!5087 (h!39269 (t!232998 rules!1039))))) b!2848538))

(assert (= (and b!2848380 (is-Union!8502 (regex!5087 (h!39269 (t!232998 rules!1039))))) b!2848539))

(declare-fun b!2848543 () Bool)

(declare-fun e!1805122 () Bool)

(declare-fun tp!914526 () Bool)

(declare-fun tp!914523 () Bool)

(assert (=> b!2848543 (= e!1805122 (and tp!914526 tp!914523))))

(assert (=> b!2848365 (= tp!914448 e!1805122)))

(declare-fun b!2848542 () Bool)

(declare-fun tp!914525 () Bool)

(assert (=> b!2848542 (= e!1805122 tp!914525)))

(declare-fun b!2848541 () Bool)

(declare-fun tp!914524 () Bool)

(declare-fun tp!914522 () Bool)

(assert (=> b!2848541 (= e!1805122 (and tp!914524 tp!914522))))

(declare-fun b!2848540 () Bool)

(assert (=> b!2848540 (= e!1805122 tp_is_empty!14745)))

(assert (= (and b!2848365 (is-ElementMatch!8502 (reg!8831 (regex!5087 (h!39269 rs!188))))) b!2848540))

(assert (= (and b!2848365 (is-Concat!13820 (reg!8831 (regex!5087 (h!39269 rs!188))))) b!2848541))

(assert (= (and b!2848365 (is-Star!8502 (reg!8831 (regex!5087 (h!39269 rs!188))))) b!2848542))

(assert (= (and b!2848365 (is-Union!8502 (reg!8831 (regex!5087 (h!39269 rs!188))))) b!2848543))

(declare-fun b!2848546 () Bool)

(declare-fun b_free!82893 () Bool)

(declare-fun b_next!83597 () Bool)

(assert (=> b!2848546 (= b_free!82893 (not b_next!83597))))

(declare-fun tp!914529 () Bool)

(declare-fun b_and!209135 () Bool)

(assert (=> b!2848546 (= tp!914529 b_and!209135)))

(declare-fun b_free!82895 () Bool)

(declare-fun b_next!83599 () Bool)

(assert (=> b!2848546 (= b_free!82895 (not b_next!83599))))

(declare-fun tp!914527 () Bool)

(declare-fun b_and!209137 () Bool)

(assert (=> b!2848546 (= tp!914527 b_and!209137)))

(declare-fun e!1805124 () Bool)

(assert (=> b!2848546 (= e!1805124 (and tp!914529 tp!914527))))

(declare-fun tp!914530 () Bool)

(declare-fun b!2848545 () Bool)

(declare-fun e!1805125 () Bool)

(assert (=> b!2848545 (= e!1805125 (and tp!914530 (inv!45878 (tag!5591 (h!39269 (t!232998 (t!232998 rules!1039))))) (inv!45881 (transformation!5087 (h!39269 (t!232998 (t!232998 rules!1039))))) e!1805124))))

(declare-fun b!2848544 () Bool)

(declare-fun e!1805123 () Bool)

(declare-fun tp!914528 () Bool)

(assert (=> b!2848544 (= e!1805123 (and e!1805125 tp!914528))))

(assert (=> b!2848379 (= tp!914464 e!1805123)))

(assert (= b!2848545 b!2848546))

(assert (= b!2848544 b!2848545))

(assert (= (and b!2848379 (is-Cons!33849 (t!232998 (t!232998 rules!1039)))) b!2848544))

(declare-fun m!3275585 () Bool)

(assert (=> b!2848545 m!3275585))

(declare-fun m!3275587 () Bool)

(assert (=> b!2848545 m!3275587))

(declare-fun b!2848550 () Bool)

(declare-fun e!1805127 () Bool)

(declare-fun tp!914535 () Bool)

(declare-fun tp!914532 () Bool)

(assert (=> b!2848550 (= e!1805127 (and tp!914535 tp!914532))))

(assert (=> b!2848370 (= tp!914454 e!1805127)))

(declare-fun b!2848549 () Bool)

(declare-fun tp!914534 () Bool)

(assert (=> b!2848549 (= e!1805127 tp!914534)))

(declare-fun b!2848548 () Bool)

(declare-fun tp!914533 () Bool)

(declare-fun tp!914531 () Bool)

(assert (=> b!2848548 (= e!1805127 (and tp!914533 tp!914531))))

(declare-fun b!2848547 () Bool)

(assert (=> b!2848547 (= e!1805127 tp_is_empty!14745)))

(assert (= (and b!2848370 (is-ElementMatch!8502 (regOne!17517 (regex!5087 (h!39269 rules!1039))))) b!2848547))

(assert (= (and b!2848370 (is-Concat!13820 (regOne!17517 (regex!5087 (h!39269 rules!1039))))) b!2848548))

(assert (= (and b!2848370 (is-Star!8502 (regOne!17517 (regex!5087 (h!39269 rules!1039))))) b!2848549))

(assert (= (and b!2848370 (is-Union!8502 (regOne!17517 (regex!5087 (h!39269 rules!1039))))) b!2848550))

(declare-fun b!2848554 () Bool)

(declare-fun e!1805128 () Bool)

(declare-fun tp!914540 () Bool)

(declare-fun tp!914537 () Bool)

(assert (=> b!2848554 (= e!1805128 (and tp!914540 tp!914537))))

(assert (=> b!2848370 (= tp!914451 e!1805128)))

(declare-fun b!2848553 () Bool)

(declare-fun tp!914539 () Bool)

(assert (=> b!2848553 (= e!1805128 tp!914539)))

(declare-fun b!2848552 () Bool)

(declare-fun tp!914538 () Bool)

(declare-fun tp!914536 () Bool)

(assert (=> b!2848552 (= e!1805128 (and tp!914538 tp!914536))))

(declare-fun b!2848551 () Bool)

(assert (=> b!2848551 (= e!1805128 tp_is_empty!14745)))

(assert (= (and b!2848370 (is-ElementMatch!8502 (regTwo!17517 (regex!5087 (h!39269 rules!1039))))) b!2848551))

(assert (= (and b!2848370 (is-Concat!13820 (regTwo!17517 (regex!5087 (h!39269 rules!1039))))) b!2848552))

(assert (= (and b!2848370 (is-Star!8502 (regTwo!17517 (regex!5087 (h!39269 rules!1039))))) b!2848553))

(assert (= (and b!2848370 (is-Union!8502 (regTwo!17517 (regex!5087 (h!39269 rules!1039))))) b!2848554))

(declare-fun b!2848557 () Bool)

(declare-fun b_free!82897 () Bool)

(declare-fun b_next!83601 () Bool)

(assert (=> b!2848557 (= b_free!82897 (not b_next!83601))))

(declare-fun tp!914543 () Bool)

(declare-fun b_and!209139 () Bool)

(assert (=> b!2848557 (= tp!914543 b_and!209139)))

(declare-fun b_free!82899 () Bool)

(declare-fun b_next!83603 () Bool)

(assert (=> b!2848557 (= b_free!82899 (not b_next!83603))))

(declare-fun tp!914541 () Bool)

(declare-fun b_and!209141 () Bool)

(assert (=> b!2848557 (= tp!914541 b_and!209141)))

(declare-fun e!1805130 () Bool)

(assert (=> b!2848557 (= e!1805130 (and tp!914543 tp!914541))))

(declare-fun b!2848556 () Bool)

(declare-fun tp!914544 () Bool)

(declare-fun e!1805131 () Bool)

(assert (=> b!2848556 (= e!1805131 (and tp!914544 (inv!45878 (tag!5591 (h!39269 (t!232998 (t!232998 rs!188))))) (inv!45881 (transformation!5087 (h!39269 (t!232998 (t!232998 rs!188))))) e!1805130))))

(declare-fun b!2848555 () Bool)

(declare-fun e!1805129 () Bool)

(declare-fun tp!914542 () Bool)

(assert (=> b!2848555 (= e!1805129 (and e!1805131 tp!914542))))

(assert (=> b!2848382 (= tp!914468 e!1805129)))

(assert (= b!2848556 b!2848557))

(assert (= b!2848555 b!2848556))

(assert (= (and b!2848382 (is-Cons!33849 (t!232998 (t!232998 rs!188)))) b!2848555))

(declare-fun m!3275589 () Bool)

(assert (=> b!2848556 m!3275589))

(declare-fun m!3275591 () Bool)

(assert (=> b!2848556 m!3275591))

(declare-fun b!2848561 () Bool)

(declare-fun e!1805133 () Bool)

(declare-fun tp!914549 () Bool)

(declare-fun tp!914546 () Bool)

(assert (=> b!2848561 (= e!1805133 (and tp!914549 tp!914546))))

(assert (=> b!2848369 (= tp!914453 e!1805133)))

(declare-fun b!2848560 () Bool)

(declare-fun tp!914548 () Bool)

(assert (=> b!2848560 (= e!1805133 tp!914548)))

(declare-fun b!2848559 () Bool)

(declare-fun tp!914547 () Bool)

(declare-fun tp!914545 () Bool)

(assert (=> b!2848559 (= e!1805133 (and tp!914547 tp!914545))))

(declare-fun b!2848558 () Bool)

(assert (=> b!2848558 (= e!1805133 tp_is_empty!14745)))

(assert (= (and b!2848369 (is-ElementMatch!8502 (reg!8831 (regex!5087 (h!39269 rules!1039))))) b!2848558))

(assert (= (and b!2848369 (is-Concat!13820 (reg!8831 (regex!5087 (h!39269 rules!1039))))) b!2848559))

(assert (= (and b!2848369 (is-Star!8502 (reg!8831 (regex!5087 (h!39269 rules!1039))))) b!2848560))

(assert (= (and b!2848369 (is-Union!8502 (reg!8831 (regex!5087 (h!39269 rules!1039))))) b!2848561))

(declare-fun b!2848565 () Bool)

(declare-fun e!1805134 () Bool)

(declare-fun tp!914554 () Bool)

(declare-fun tp!914551 () Bool)

(assert (=> b!2848565 (= e!1805134 (and tp!914554 tp!914551))))

(assert (=> b!2848364 (= tp!914447 e!1805134)))

(declare-fun b!2848564 () Bool)

(declare-fun tp!914553 () Bool)

(assert (=> b!2848564 (= e!1805134 tp!914553)))

(declare-fun b!2848563 () Bool)

(declare-fun tp!914552 () Bool)

(declare-fun tp!914550 () Bool)

(assert (=> b!2848563 (= e!1805134 (and tp!914552 tp!914550))))

(declare-fun b!2848562 () Bool)

(assert (=> b!2848562 (= e!1805134 tp_is_empty!14745)))

(assert (= (and b!2848364 (is-ElementMatch!8502 (regOne!17516 (regex!5087 (h!39269 rs!188))))) b!2848562))

(assert (= (and b!2848364 (is-Concat!13820 (regOne!17516 (regex!5087 (h!39269 rs!188))))) b!2848563))

(assert (= (and b!2848364 (is-Star!8502 (regOne!17516 (regex!5087 (h!39269 rs!188))))) b!2848564))

(assert (= (and b!2848364 (is-Union!8502 (regOne!17516 (regex!5087 (h!39269 rs!188))))) b!2848565))

(declare-fun b!2848569 () Bool)

(declare-fun e!1805135 () Bool)

(declare-fun tp!914559 () Bool)

(declare-fun tp!914556 () Bool)

(assert (=> b!2848569 (= e!1805135 (and tp!914559 tp!914556))))

(assert (=> b!2848364 (= tp!914445 e!1805135)))

(declare-fun b!2848568 () Bool)

(declare-fun tp!914558 () Bool)

(assert (=> b!2848568 (= e!1805135 tp!914558)))

(declare-fun b!2848567 () Bool)

(declare-fun tp!914557 () Bool)

(declare-fun tp!914555 () Bool)

(assert (=> b!2848567 (= e!1805135 (and tp!914557 tp!914555))))

(declare-fun b!2848566 () Bool)

(assert (=> b!2848566 (= e!1805135 tp_is_empty!14745)))

(assert (= (and b!2848364 (is-ElementMatch!8502 (regTwo!17516 (regex!5087 (h!39269 rs!188))))) b!2848566))

(assert (= (and b!2848364 (is-Concat!13820 (regTwo!17516 (regex!5087 (h!39269 rs!188))))) b!2848567))

(assert (= (and b!2848364 (is-Star!8502 (regTwo!17516 (regex!5087 (h!39269 rs!188))))) b!2848568))

(assert (= (and b!2848364 (is-Union!8502 (regTwo!17516 (regex!5087 (h!39269 rs!188))))) b!2848569))

(declare-fun b!2848573 () Bool)

(declare-fun e!1805136 () Bool)

(declare-fun tp!914564 () Bool)

(declare-fun tp!914561 () Bool)

(assert (=> b!2848573 (= e!1805136 (and tp!914564 tp!914561))))

(assert (=> b!2848368 (= tp!914452 e!1805136)))

(declare-fun b!2848572 () Bool)

(declare-fun tp!914563 () Bool)

(assert (=> b!2848572 (= e!1805136 tp!914563)))

(declare-fun b!2848571 () Bool)

(declare-fun tp!914562 () Bool)

(declare-fun tp!914560 () Bool)

(assert (=> b!2848571 (= e!1805136 (and tp!914562 tp!914560))))

(declare-fun b!2848570 () Bool)

(assert (=> b!2848570 (= e!1805136 tp_is_empty!14745)))

(assert (= (and b!2848368 (is-ElementMatch!8502 (regOne!17516 (regex!5087 (h!39269 rules!1039))))) b!2848570))

(assert (= (and b!2848368 (is-Concat!13820 (regOne!17516 (regex!5087 (h!39269 rules!1039))))) b!2848571))

(assert (= (and b!2848368 (is-Star!8502 (regOne!17516 (regex!5087 (h!39269 rules!1039))))) b!2848572))

(assert (= (and b!2848368 (is-Union!8502 (regOne!17516 (regex!5087 (h!39269 rules!1039))))) b!2848573))

(declare-fun b!2848577 () Bool)

(declare-fun e!1805137 () Bool)

(declare-fun tp!914569 () Bool)

(declare-fun tp!914566 () Bool)

(assert (=> b!2848577 (= e!1805137 (and tp!914569 tp!914566))))

(assert (=> b!2848368 (= tp!914450 e!1805137)))

(declare-fun b!2848576 () Bool)

(declare-fun tp!914568 () Bool)

(assert (=> b!2848576 (= e!1805137 tp!914568)))

(declare-fun b!2848575 () Bool)

(declare-fun tp!914567 () Bool)

(declare-fun tp!914565 () Bool)

(assert (=> b!2848575 (= e!1805137 (and tp!914567 tp!914565))))

(declare-fun b!2848574 () Bool)

(assert (=> b!2848574 (= e!1805137 tp_is_empty!14745)))

(assert (= (and b!2848368 (is-ElementMatch!8502 (regTwo!17516 (regex!5087 (h!39269 rules!1039))))) b!2848574))

(assert (= (and b!2848368 (is-Concat!13820 (regTwo!17516 (regex!5087 (h!39269 rules!1039))))) b!2848575))

(assert (= (and b!2848368 (is-Star!8502 (regTwo!17516 (regex!5087 (h!39269 rules!1039))))) b!2848576))

(assert (= (and b!2848368 (is-Union!8502 (regTwo!17516 (regex!5087 (h!39269 rules!1039))))) b!2848577))

(declare-fun b!2848581 () Bool)

(declare-fun e!1805138 () Bool)

(declare-fun tp!914574 () Bool)

(declare-fun tp!914571 () Bool)

(assert (=> b!2848581 (= e!1805138 (and tp!914574 tp!914571))))

(assert (=> b!2848383 (= tp!914470 e!1805138)))

(declare-fun b!2848580 () Bool)

(declare-fun tp!914573 () Bool)

(assert (=> b!2848580 (= e!1805138 tp!914573)))

(declare-fun b!2848579 () Bool)

(declare-fun tp!914572 () Bool)

(declare-fun tp!914570 () Bool)

(assert (=> b!2848579 (= e!1805138 (and tp!914572 tp!914570))))

(declare-fun b!2848578 () Bool)

(assert (=> b!2848578 (= e!1805138 tp_is_empty!14745)))

(assert (= (and b!2848383 (is-ElementMatch!8502 (regex!5087 (h!39269 (t!232998 rs!188))))) b!2848578))

(assert (= (and b!2848383 (is-Concat!13820 (regex!5087 (h!39269 (t!232998 rs!188))))) b!2848579))

(assert (= (and b!2848383 (is-Star!8502 (regex!5087 (h!39269 (t!232998 rs!188))))) b!2848580))

(assert (= (and b!2848383 (is-Union!8502 (regex!5087 (h!39269 (t!232998 rs!188))))) b!2848581))

(declare-fun b_lambda!85615 () Bool)

(assert (= b_lambda!85613 (or d!825661 b_lambda!85615)))

(declare-fun bs!520028 () Bool)

(declare-fun d!825737 () Bool)

(assert (= bs!520028 (and d!825737 d!825661)))

(assert (=> bs!520028 (= (dynLambda!14217 lambda!104620 (h!39269 rules!1039)) (ruleValid!1613 thiss!10983 (h!39269 rules!1039)))))

(assert (=> bs!520028 m!3275433))

(assert (=> b!2848526 d!825737))

(declare-fun b_lambda!85617 () Bool)

(assert (= b_lambda!85611 (or b!2848286 b_lambda!85617)))

(declare-fun bs!520029 () Bool)

(declare-fun d!825739 () Bool)

(assert (= bs!520029 (and d!825739 b!2848286)))

(assert (=> bs!520029 (= (dynLambda!14211 lambda!104604 (h!39269 (t!232998 rs!188))) (regex!5087 (h!39269 (t!232998 rs!188))))))

(assert (=> b!2848525 d!825739))

(declare-fun b_lambda!85619 () Bool)

(assert (= b_lambda!85609 (or d!825659 b_lambda!85619)))

(declare-fun bs!520030 () Bool)

(declare-fun d!825741 () Bool)

(assert (= bs!520030 (and d!825741 d!825659)))

(assert (=> bs!520030 (= (dynLambda!14211 lambda!104616 (h!39269 (t!232998 rs!188))) (regex!5087 (h!39269 (t!232998 rs!188))))))

(assert (=> b!2848515 d!825741))

(declare-fun b_lambda!85621 () Bool)

(assert (= b_lambda!85603 (or b!2848286 b_lambda!85621)))

(declare-fun bs!520031 () Bool)

(declare-fun d!825743 () Bool)

(assert (= bs!520031 (and d!825743 b!2848286)))

(assert (=> bs!520031 (= (dynLambda!14210 lambda!104605 (h!39270 (t!232999 (map!7266 rs!188 lambda!104604)))) (validRegex!3374 (h!39270 (t!232999 (map!7266 rs!188 lambda!104604)))))))

(declare-fun m!3275593 () Bool)

(assert (=> bs!520031 m!3275593))

(assert (=> b!2848449 d!825743))

(declare-fun b_lambda!85623 () Bool)

(assert (= b_lambda!85605 (or d!825667 b_lambda!85623)))

(declare-fun bs!520032 () Bool)

(declare-fun d!825745 () Bool)

(assert (= bs!520032 (and d!825745 d!825667)))

(assert (=> bs!520032 (= (dynLambda!14217 lambda!104621 (h!39269 rs!188)) (ruleValid!1613 thiss!10983 (h!39269 rs!188)))))

(assert (=> bs!520032 m!3275439))

(assert (=> b!2848509 d!825745))

(declare-fun b_lambda!85625 () Bool)

(assert (= b_lambda!85607 (or d!825659 b_lambda!85625)))

(declare-fun bs!520033 () Bool)

(declare-fun d!825747 () Bool)

(assert (= bs!520033 (and d!825747 d!825659)))

(assert (=> bs!520033 (= (dynLambda!14210 lambda!104617 (h!39270 (map!7266 (t!232998 rs!188) lambda!104616))) (validRegex!3374 (h!39270 (map!7266 (t!232998 rs!188) lambda!104616))))))

(declare-fun m!3275595 () Bool)

(assert (=> bs!520033 m!3275595))

(assert (=> b!2848512 d!825747))

(push 1)

(assert (not b!2848568))

(assert (not b!2848497))

(assert (not d!825707))

(assert (not b_lambda!85625))

(assert (not bm!183591))

(assert (not b_next!83585))

(assert (not b!2848518))

(assert (not b_lambda!85619))

(assert b_and!209107)

(assert (not b!2848576))

(assert (not b!2848534))

(assert (not b_next!83601))

(assert (not b!2848567))

(assert (not b_next!83603))

(assert (not b!2848561))

(assert (not b!2848572))

(assert (not b!2848510))

(assert (not b!2848457))

(assert (not b!2848511))

(assert (not b!2848469))

(assert (not d!825733))

(assert (not b_lambda!85621))

(assert (not b!2848539))

(assert (not b_next!83567))

(assert (not b!2848456))

(assert (not b_next!83597))

(assert b_and!209137)

(assert (not b_next!83599))

(assert (not b_lambda!85591))

(assert (not b!2848560))

(assert (not b_lambda!85615))

(assert (not b!2848549))

(assert (not d!825697))

(assert (not d!825727))

(assert (not d!825725))

(assert (not b!2848545))

(assert (not b!2848477))

(assert (not b!2848573))

(assert (not b!2848581))

(assert (not b!2848543))

(assert (not b!2848564))

(assert (not b_next!83581))

(assert (not b!2848552))

(assert (not bs!520028))

(assert (not b!2848516))

(assert (not b_next!83565))

(assert (not b!2848580))

(assert (not b!2848538))

(assert (not d!825723))

(assert (not b!2848517))

(assert (not b!2848571))

(assert b_and!209141)

(assert (not b!2848527))

(assert b_and!209125)

(assert (not b!2848559))

(assert (not b!2848451))

(assert (not b_lambda!85623))

(assert (not b_next!83571))

(assert (not b!2848579))

(assert (not b!2848577))

(assert (not d!825705))

(assert (not b!2848563))

(assert b_and!209123)

(assert (not b!2848535))

(assert (not b_next!83587))

(assert (not b!2848542))

(assert (not d!825721))

(assert (not b!2848544))

(assert (not b!2848554))

(assert (not b!2848513))

(assert (not b!2848450))

(assert (not d!825729))

(assert (not b!2848569))

(assert (not bm!183592))

(assert (not d!825695))

(assert tp_is_empty!14745)

(assert (not d!825717))

(assert (not b_next!83583))

(assert b_and!209139)

(assert b_and!209135)

(assert (not b!2848515))

(assert (not b!2848525))

(assert (not bs!520033))

(assert (not b_lambda!85593))

(assert b_and!209109)

(assert (not b!2848553))

(assert (not b!2848555))

(assert (not b!2848533))

(assert b_and!209119)

(assert (not b!2848474))

(assert (not b!2848550))

(assert (not b!2848463))

(assert (not b!2848530))

(assert (not bs!520031))

(assert (not b!2848565))

(assert (not b!2848548))

(assert (not b!2848531))

(assert (not b!2848537))

(assert (not b!2848541))

(assert (not b!2848529))

(assert (not b_next!83569))

(assert (not bs!520032))

(assert b_and!209121)

(assert (not b!2848556))

(assert (not b_lambda!85617))

(assert (not d!825709))

(assert b_and!209103)

(assert b_and!209105)

(assert (not b!2848575))

(assert (not d!825699))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83567))

(assert (not b_next!83581))

(assert b_and!209125)

(assert (not b_next!83571))

(assert b_and!209123)

(assert (not b_next!83587))

(assert b_and!209109)

(assert b_and!209119)

(assert b_and!209103)

(assert b_and!209105)

(assert (not b_next!83585))

(assert b_and!209107)

(assert (not b_next!83601))

(assert (not b_next!83603))

(assert (not b_next!83597))

(assert b_and!209137)

(assert (not b_next!83599))

(assert (not b_next!83565))

(assert b_and!209141)

(assert (not b_next!83583))

(assert b_and!209139)

(assert b_and!209135)

(assert (not b_next!83569))

(assert b_and!209121)

(check-sat)

(pop 1)


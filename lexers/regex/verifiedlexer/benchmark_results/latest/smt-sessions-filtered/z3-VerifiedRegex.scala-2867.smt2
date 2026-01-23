; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167026 () Bool)

(assert start!167026)

(declare-fun b!1709414 () Bool)

(declare-fun b_free!46315 () Bool)

(declare-fun b_next!47019 () Bool)

(assert (=> b!1709414 (= b_free!46315 (not b_next!47019))))

(declare-fun tp!488498 () Bool)

(declare-fun b_and!123705 () Bool)

(assert (=> b!1709414 (= tp!488498 b_and!123705)))

(declare-fun b_free!46317 () Bool)

(declare-fun b_next!47021 () Bool)

(assert (=> b!1709414 (= b_free!46317 (not b_next!47021))))

(declare-fun tp!488500 () Bool)

(declare-fun b_and!123707 () Bool)

(assert (=> b!1709414 (= tp!488500 b_and!123707)))

(declare-fun b!1709400 () Bool)

(declare-fun b_free!46319 () Bool)

(declare-fun b_next!47023 () Bool)

(assert (=> b!1709400 (= b_free!46319 (not b_next!47023))))

(declare-fun tp!488499 () Bool)

(declare-fun b_and!123709 () Bool)

(assert (=> b!1709400 (= tp!488499 b_and!123709)))

(declare-fun b_free!46321 () Bool)

(declare-fun b_next!47025 () Bool)

(assert (=> b!1709400 (= b_free!46321 (not b_next!47025))))

(declare-fun tp!488495 () Bool)

(declare-fun b_and!123711 () Bool)

(assert (=> b!1709400 (= tp!488495 b_and!123711)))

(declare-fun b!1709412 () Bool)

(declare-fun b_free!46323 () Bool)

(declare-fun b_next!47027 () Bool)

(assert (=> b!1709412 (= b_free!46323 (not b_next!47027))))

(declare-fun tp!488492 () Bool)

(declare-fun b_and!123713 () Bool)

(assert (=> b!1709412 (= tp!488492 b_and!123713)))

(declare-fun b_free!46325 () Bool)

(declare-fun b_next!47029 () Bool)

(assert (=> b!1709412 (= b_free!46325 (not b_next!47029))))

(declare-fun tp!488491 () Bool)

(declare-fun b_and!123715 () Bool)

(assert (=> b!1709412 (= tp!488491 b_and!123715)))

(declare-fun b!1709399 () Bool)

(declare-datatypes ((List!18727 0))(
  ( (Nil!18657) (Cons!18657 (h!24058 (_ BitVec 16)) (t!158170 List!18727)) )
))
(declare-datatypes ((TokenValue!3385 0))(
  ( (FloatLiteralValue!6770 (text!24140 List!18727)) (TokenValueExt!3384 (__x!12072 Int)) (Broken!16925 (value!103554 List!18727)) (Object!3454) (End!3385) (Def!3385) (Underscore!3385) (Match!3385) (Else!3385) (Error!3385) (Case!3385) (If!3385) (Extends!3385) (Abstract!3385) (Class!3385) (Val!3385) (DelimiterValue!6770 (del!3445 List!18727)) (KeywordValue!3391 (value!103555 List!18727)) (CommentValue!6770 (value!103556 List!18727)) (WhitespaceValue!6770 (value!103557 List!18727)) (IndentationValue!3385 (value!103558 List!18727)) (String!21256) (Int32!3385) (Broken!16926 (value!103559 List!18727)) (Boolean!3386) (Unit!32486) (OperatorValue!3388 (op!3445 List!18727)) (IdentifierValue!6770 (value!103560 List!18727)) (IdentifierValue!6771 (value!103561 List!18727)) (WhitespaceValue!6771 (value!103562 List!18727)) (True!6770) (False!6770) (Broken!16927 (value!103563 List!18727)) (Broken!16928 (value!103564 List!18727)) (True!6771) (RightBrace!3385) (RightBracket!3385) (Colon!3385) (Null!3385) (Comma!3385) (LeftBracket!3385) (False!6771) (LeftBrace!3385) (ImaginaryLiteralValue!3385 (text!24141 List!18727)) (StringLiteralValue!10155 (value!103565 List!18727)) (EOFValue!3385 (value!103566 List!18727)) (IdentValue!3385 (value!103567 List!18727)) (DelimiterValue!6771 (value!103568 List!18727)) (DedentValue!3385 (value!103569 List!18727)) (NewLineValue!3385 (value!103570 List!18727)) (IntegerValue!10155 (value!103571 (_ BitVec 32)) (text!24142 List!18727)) (IntegerValue!10156 (value!103572 Int) (text!24143 List!18727)) (Times!3385) (Or!3385) (Equal!3385) (Minus!3385) (Broken!16929 (value!103573 List!18727)) (And!3385) (Div!3385) (LessEqual!3385) (Mod!3385) (Concat!8008) (Not!3385) (Plus!3385) (SpaceValue!3385 (value!103574 List!18727)) (IntegerValue!10157 (value!103575 Int) (text!24144 List!18727)) (StringLiteralValue!10156 (text!24145 List!18727)) (FloatLiteralValue!6771 (text!24146 List!18727)) (BytesLiteralValue!3385 (value!103576 List!18727)) (CommentValue!6771 (value!103577 List!18727)) (StringLiteralValue!10157 (value!103578 List!18727)) (ErrorTokenValue!3385 (msg!3446 List!18727)) )
))
(declare-datatypes ((C!9420 0))(
  ( (C!9421 (val!5306 Int)) )
))
(declare-datatypes ((List!18728 0))(
  ( (Nil!18658) (Cons!18658 (h!24059 C!9420) (t!158171 List!18728)) )
))
(declare-datatypes ((Regex!4623 0))(
  ( (ElementMatch!4623 (c!280082 C!9420)) (Concat!8009 (regOne!9758 Regex!4623) (regTwo!9758 Regex!4623)) (EmptyExpr!4623) (Star!4623 (reg!4952 Regex!4623)) (EmptyLang!4623) (Union!4623 (regOne!9759 Regex!4623) (regTwo!9759 Regex!4623)) )
))
(declare-datatypes ((String!21257 0))(
  ( (String!21258 (value!103579 String)) )
))
(declare-datatypes ((IArray!12415 0))(
  ( (IArray!12416 (innerList!6265 List!18728)) )
))
(declare-datatypes ((Conc!6205 0))(
  ( (Node!6205 (left!14882 Conc!6205) (right!15212 Conc!6205) (csize!12640 Int) (cheight!6416 Int)) (Leaf!9073 (xs!9081 IArray!12415) (csize!12641 Int)) (Empty!6205) )
))
(declare-datatypes ((BalanceConc!12354 0))(
  ( (BalanceConc!12355 (c!280083 Conc!6205)) )
))
(declare-datatypes ((TokenValueInjection!6430 0))(
  ( (TokenValueInjection!6431 (toValue!4794 Int) (toChars!4653 Int)) )
))
(declare-datatypes ((Rule!6390 0))(
  ( (Rule!6391 (regex!3295 Regex!4623) (tag!3591 String!21257) (isSeparator!3295 Bool) (transformation!3295 TokenValueInjection!6430)) )
))
(declare-datatypes ((Token!6156 0))(
  ( (Token!6157 (value!103580 TokenValue!3385) (rule!5229 Rule!6390) (size!14838 Int) (originalCharacters!4109 List!18728)) )
))
(declare-fun token!523 () Token!6156)

(declare-fun e!1093341 () Bool)

(declare-fun tp!488493 () Bool)

(declare-fun e!1093343 () Bool)

(declare-fun inv!21 (TokenValue!3385) Bool)

(assert (=> b!1709399 (= e!1093343 (and (inv!21 (value!103580 token!523)) e!1093341 tp!488493))))

(declare-fun e!1093342 () Bool)

(assert (=> b!1709400 (= e!1093342 (and tp!488499 tp!488495))))

(declare-fun b!1709401 () Bool)

(declare-fun res!766286 () Bool)

(declare-fun e!1093346 () Bool)

(assert (=> b!1709401 (=> (not res!766286) (not e!1093346))))

(declare-datatypes ((tuple2!18374 0))(
  ( (tuple2!18375 (_1!10589 Token!6156) (_2!10589 List!18728)) )
))
(declare-fun lt!653081 () tuple2!18374)

(declare-fun isEmpty!11715 (List!18728) Bool)

(assert (=> b!1709401 (= res!766286 (isEmpty!11715 (_2!10589 lt!653081)))))

(declare-fun tp!488490 () Bool)

(declare-fun b!1709403 () Bool)

(declare-fun rule!422 () Rule!6390)

(declare-fun e!1093345 () Bool)

(declare-fun e!1093350 () Bool)

(declare-fun inv!24066 (String!21257) Bool)

(declare-fun inv!24069 (TokenValueInjection!6430) Bool)

(assert (=> b!1709403 (= e!1093350 (and tp!488490 (inv!24066 (tag!3591 rule!422)) (inv!24069 (transformation!3295 rule!422)) e!1093345))))

(declare-fun e!1093338 () Bool)

(declare-fun b!1709404 () Bool)

(declare-datatypes ((List!18729 0))(
  ( (Nil!18659) (Cons!18659 (h!24060 Rule!6390) (t!158172 List!18729)) )
))
(declare-fun rules!3447 () List!18729)

(declare-fun tp!488497 () Bool)

(assert (=> b!1709404 (= e!1093338 (and tp!488497 (inv!24066 (tag!3591 (h!24060 rules!3447))) (inv!24069 (transformation!3295 (h!24060 rules!3447))) e!1093342))))

(declare-fun b!1709405 () Bool)

(declare-fun res!766284 () Bool)

(declare-fun e!1093349 () Bool)

(assert (=> b!1709405 (=> (not res!766284) (not e!1093349))))

(declare-datatypes ((LexerInterface!2924 0))(
  ( (LexerInterfaceExt!2921 (__x!12073 Int)) (Lexer!2922) )
))
(declare-fun thiss!24550 () LexerInterface!2924)

(declare-fun rulesInvariant!2593 (LexerInterface!2924 List!18729) Bool)

(assert (=> b!1709405 (= res!766284 (rulesInvariant!2593 thiss!24550 rules!3447))))

(declare-fun b!1709406 () Bool)

(declare-fun e!1093352 () Bool)

(declare-fun tp!488496 () Bool)

(assert (=> b!1709406 (= e!1093352 (and e!1093338 tp!488496))))

(declare-fun b!1709407 () Bool)

(declare-fun tp!488494 () Bool)

(declare-fun e!1093344 () Bool)

(assert (=> b!1709407 (= e!1093341 (and tp!488494 (inv!24066 (tag!3591 (rule!5229 token!523))) (inv!24069 (transformation!3295 (rule!5229 token!523))) e!1093344))))

(declare-fun b!1709408 () Bool)

(declare-fun res!766285 () Bool)

(declare-fun e!1093354 () Bool)

(assert (=> b!1709408 (=> res!766285 e!1093354)))

(declare-fun suffix!1421 () List!18728)

(assert (=> b!1709408 (= res!766285 (isEmpty!11715 suffix!1421))))

(declare-fun b!1709409 () Bool)

(assert (=> b!1709409 (= e!1093346 (not e!1093354))))

(declare-fun res!766282 () Bool)

(assert (=> b!1709409 (=> res!766282 e!1093354)))

(declare-fun lt!653079 () List!18728)

(declare-fun matchR!2097 (Regex!4623 List!18728) Bool)

(assert (=> b!1709409 (= res!766282 (not (matchR!2097 (regex!3295 rule!422) lt!653079)))))

(declare-fun ruleValid!794 (LexerInterface!2924 Rule!6390) Bool)

(assert (=> b!1709409 (ruleValid!794 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32487 0))(
  ( (Unit!32488) )
))
(declare-fun lt!653082 () Unit!32487)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!318 (LexerInterface!2924 Rule!6390 List!18729) Unit!32487)

(assert (=> b!1709409 (= lt!653082 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!318 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1709410 () Bool)

(declare-fun res!766289 () Bool)

(assert (=> b!1709410 (=> (not res!766289) (not e!1093349))))

(declare-fun contains!3313 (List!18729 Rule!6390) Bool)

(assert (=> b!1709410 (= res!766289 (contains!3313 rules!3447 rule!422))))

(declare-fun b!1709402 () Bool)

(assert (=> b!1709402 (= e!1093354 true)))

(declare-fun lt!653084 () Bool)

(declare-fun rulesValidInductive!1084 (LexerInterface!2924 List!18729) Bool)

(assert (=> b!1709402 (= lt!653084 (rulesValidInductive!1084 thiss!24550 rules!3447))))

(declare-fun lt!653080 () List!18728)

(declare-fun isPrefix!1536 (List!18728 List!18728) Bool)

(assert (=> b!1709402 (isPrefix!1536 lt!653079 lt!653080)))

(declare-fun lt!653083 () Unit!32487)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1046 (List!18728 List!18728) Unit!32487)

(assert (=> b!1709402 (= lt!653083 (lemmaConcatTwoListThenFirstIsPrefix!1046 lt!653079 suffix!1421))))

(declare-fun ++!5116 (List!18728 List!18728) List!18728)

(assert (=> b!1709402 (= lt!653080 (++!5116 lt!653079 suffix!1421))))

(declare-fun res!766283 () Bool)

(assert (=> start!167026 (=> (not res!766283) (not e!1093349))))

(get-info :version)

(assert (=> start!167026 (= res!766283 ((_ is Lexer!2922) thiss!24550))))

(assert (=> start!167026 e!1093349))

(declare-fun e!1093340 () Bool)

(assert (=> start!167026 e!1093340))

(assert (=> start!167026 e!1093350))

(assert (=> start!167026 true))

(declare-fun inv!24070 (Token!6156) Bool)

(assert (=> start!167026 (and (inv!24070 token!523) e!1093343)))

(assert (=> start!167026 e!1093352))

(declare-fun b!1709411 () Bool)

(declare-fun res!766281 () Bool)

(assert (=> b!1709411 (=> (not res!766281) (not e!1093349))))

(declare-fun isEmpty!11716 (List!18729) Bool)

(assert (=> b!1709411 (= res!766281 (not (isEmpty!11716 rules!3447)))))

(assert (=> b!1709412 (= e!1093345 (and tp!488492 tp!488491))))

(declare-fun b!1709413 () Bool)

(declare-fun res!766287 () Bool)

(assert (=> b!1709413 (=> res!766287 e!1093354)))

(declare-fun prefixMatch!508 (Regex!4623 List!18728) Bool)

(declare-fun rulesRegex!653 (LexerInterface!2924 List!18729) Regex!4623)

(declare-fun head!3828 (List!18728) C!9420)

(assert (=> b!1709413 (= res!766287 (prefixMatch!508 (rulesRegex!653 thiss!24550 rules!3447) (++!5116 lt!653079 (Cons!18658 (head!3828 suffix!1421) Nil!18658))))))

(assert (=> b!1709414 (= e!1093344 (and tp!488498 tp!488500))))

(declare-fun b!1709415 () Bool)

(declare-fun e!1093348 () Bool)

(assert (=> b!1709415 (= e!1093348 e!1093346)))

(declare-fun res!766288 () Bool)

(assert (=> b!1709415 (=> (not res!766288) (not e!1093346))))

(assert (=> b!1709415 (= res!766288 (= (_1!10589 lt!653081) token!523))))

(declare-datatypes ((Option!3619 0))(
  ( (None!3618) (Some!3618 (v!25003 tuple2!18374)) )
))
(declare-fun lt!653078 () Option!3619)

(declare-fun get!5486 (Option!3619) tuple2!18374)

(assert (=> b!1709415 (= lt!653081 (get!5486 lt!653078))))

(declare-fun b!1709416 () Bool)

(declare-fun tp_is_empty!7489 () Bool)

(declare-fun tp!488489 () Bool)

(assert (=> b!1709416 (= e!1093340 (and tp_is_empty!7489 tp!488489))))

(declare-fun b!1709417 () Bool)

(declare-fun res!766280 () Bool)

(assert (=> b!1709417 (=> (not res!766280) (not e!1093346))))

(assert (=> b!1709417 (= res!766280 (= (rule!5229 token!523) rule!422))))

(declare-fun b!1709418 () Bool)

(assert (=> b!1709418 (= e!1093349 e!1093348)))

(declare-fun res!766290 () Bool)

(assert (=> b!1709418 (=> (not res!766290) (not e!1093348))))

(declare-fun isDefined!2964 (Option!3619) Bool)

(assert (=> b!1709418 (= res!766290 (isDefined!2964 lt!653078))))

(declare-fun maxPrefix!1478 (LexerInterface!2924 List!18729 List!18728) Option!3619)

(assert (=> b!1709418 (= lt!653078 (maxPrefix!1478 thiss!24550 rules!3447 lt!653079))))

(declare-fun list!7524 (BalanceConc!12354) List!18728)

(declare-fun charsOf!1944 (Token!6156) BalanceConc!12354)

(assert (=> b!1709418 (= lt!653079 (list!7524 (charsOf!1944 token!523)))))

(assert (= (and start!167026 res!766283) b!1709411))

(assert (= (and b!1709411 res!766281) b!1709405))

(assert (= (and b!1709405 res!766284) b!1709410))

(assert (= (and b!1709410 res!766289) b!1709418))

(assert (= (and b!1709418 res!766290) b!1709415))

(assert (= (and b!1709415 res!766288) b!1709401))

(assert (= (and b!1709401 res!766286) b!1709417))

(assert (= (and b!1709417 res!766280) b!1709409))

(assert (= (and b!1709409 (not res!766282)) b!1709408))

(assert (= (and b!1709408 (not res!766285)) b!1709413))

(assert (= (and b!1709413 (not res!766287)) b!1709402))

(assert (= (and start!167026 ((_ is Cons!18658) suffix!1421)) b!1709416))

(assert (= b!1709403 b!1709412))

(assert (= start!167026 b!1709403))

(assert (= b!1709407 b!1709414))

(assert (= b!1709399 b!1709407))

(assert (= start!167026 b!1709399))

(assert (= b!1709404 b!1709400))

(assert (= b!1709406 b!1709404))

(assert (= (and start!167026 ((_ is Cons!18659) rules!3447)) b!1709406))

(declare-fun m!2112415 () Bool)

(assert (=> b!1709418 m!2112415))

(declare-fun m!2112417 () Bool)

(assert (=> b!1709418 m!2112417))

(declare-fun m!2112419 () Bool)

(assert (=> b!1709418 m!2112419))

(assert (=> b!1709418 m!2112419))

(declare-fun m!2112421 () Bool)

(assert (=> b!1709418 m!2112421))

(declare-fun m!2112423 () Bool)

(assert (=> b!1709407 m!2112423))

(declare-fun m!2112425 () Bool)

(assert (=> b!1709407 m!2112425))

(declare-fun m!2112427 () Bool)

(assert (=> b!1709413 m!2112427))

(declare-fun m!2112429 () Bool)

(assert (=> b!1709413 m!2112429))

(declare-fun m!2112431 () Bool)

(assert (=> b!1709413 m!2112431))

(assert (=> b!1709413 m!2112427))

(assert (=> b!1709413 m!2112431))

(declare-fun m!2112433 () Bool)

(assert (=> b!1709413 m!2112433))

(declare-fun m!2112435 () Bool)

(assert (=> b!1709404 m!2112435))

(declare-fun m!2112437 () Bool)

(assert (=> b!1709404 m!2112437))

(declare-fun m!2112439 () Bool)

(assert (=> b!1709401 m!2112439))

(declare-fun m!2112441 () Bool)

(assert (=> b!1709410 m!2112441))

(declare-fun m!2112443 () Bool)

(assert (=> start!167026 m!2112443))

(declare-fun m!2112445 () Bool)

(assert (=> b!1709403 m!2112445))

(declare-fun m!2112447 () Bool)

(assert (=> b!1709403 m!2112447))

(declare-fun m!2112449 () Bool)

(assert (=> b!1709409 m!2112449))

(declare-fun m!2112451 () Bool)

(assert (=> b!1709409 m!2112451))

(declare-fun m!2112453 () Bool)

(assert (=> b!1709409 m!2112453))

(declare-fun m!2112455 () Bool)

(assert (=> b!1709405 m!2112455))

(declare-fun m!2112457 () Bool)

(assert (=> b!1709415 m!2112457))

(declare-fun m!2112459 () Bool)

(assert (=> b!1709399 m!2112459))

(declare-fun m!2112461 () Bool)

(assert (=> b!1709411 m!2112461))

(declare-fun m!2112463 () Bool)

(assert (=> b!1709402 m!2112463))

(declare-fun m!2112465 () Bool)

(assert (=> b!1709402 m!2112465))

(declare-fun m!2112467 () Bool)

(assert (=> b!1709402 m!2112467))

(declare-fun m!2112469 () Bool)

(assert (=> b!1709402 m!2112469))

(declare-fun m!2112471 () Bool)

(assert (=> b!1709408 m!2112471))

(check-sat (not b!1709415) (not b!1709402) (not b!1709410) (not b_next!47029) (not b_next!47025) (not b_next!47027) (not b!1709408) (not start!167026) b_and!123711 (not b!1709416) (not b!1709403) (not b!1709401) (not b!1709405) b_and!123709 (not b!1709413) tp_is_empty!7489 (not b!1709406) (not b!1709407) b_and!123705 (not b!1709418) (not b!1709404) (not b!1709399) b_and!123715 (not b!1709411) (not b!1709409) (not b_next!47021) (not b_next!47019) b_and!123713 (not b_next!47023) b_and!123707)
(check-sat b_and!123709 (not b_next!47029) (not b_next!47025) (not b_next!47027) b_and!123705 b_and!123711 b_and!123715 (not b_next!47021) (not b_next!47019) b_and!123713 (not b_next!47023) b_and!123707)

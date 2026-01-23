; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180614 () Bool)

(assert start!180614)

(declare-fun b!1823361 () Bool)

(declare-fun b_free!50719 () Bool)

(declare-fun b_next!51423 () Bool)

(assert (=> b!1823361 (= b_free!50719 (not b_next!51423))))

(declare-fun tp!515531 () Bool)

(declare-fun b_and!141477 () Bool)

(assert (=> b!1823361 (= tp!515531 b_and!141477)))

(declare-fun b_free!50721 () Bool)

(declare-fun b_next!51425 () Bool)

(assert (=> b!1823361 (= b_free!50721 (not b_next!51425))))

(declare-fun tp!515526 () Bool)

(declare-fun b_and!141479 () Bool)

(assert (=> b!1823361 (= tp!515526 b_and!141479)))

(declare-fun b!1823368 () Bool)

(declare-fun b_free!50723 () Bool)

(declare-fun b_next!51427 () Bool)

(assert (=> b!1823368 (= b_free!50723 (not b_next!51427))))

(declare-fun tp!515535 () Bool)

(declare-fun b_and!141481 () Bool)

(assert (=> b!1823368 (= tp!515535 b_and!141481)))

(declare-fun b_free!50725 () Bool)

(declare-fun b_next!51429 () Bool)

(assert (=> b!1823368 (= b_free!50725 (not b_next!51429))))

(declare-fun tp!515532 () Bool)

(declare-fun b_and!141483 () Bool)

(assert (=> b!1823368 (= tp!515532 b_and!141483)))

(declare-fun b!1823356 () Bool)

(declare-fun b_free!50727 () Bool)

(declare-fun b_next!51431 () Bool)

(assert (=> b!1823356 (= b_free!50727 (not b_next!51431))))

(declare-fun tp!515524 () Bool)

(declare-fun b_and!141485 () Bool)

(assert (=> b!1823356 (= tp!515524 b_and!141485)))

(declare-fun b_free!50729 () Bool)

(declare-fun b_next!51433 () Bool)

(assert (=> b!1823356 (= b_free!50729 (not b_next!51433))))

(declare-fun tp!515534 () Bool)

(declare-fun b_and!141487 () Bool)

(assert (=> b!1823356 (= tp!515534 b_and!141487)))

(declare-fun e!1165422 () Bool)

(declare-fun tp!515525 () Bool)

(declare-datatypes ((List!20079 0))(
  ( (Nil!20009) (Cons!20009 (h!25410 (_ BitVec 16)) (t!170020 List!20079)) )
))
(declare-datatypes ((TokenValue!3699 0))(
  ( (FloatLiteralValue!7398 (text!26338 List!20079)) (TokenValueExt!3698 (__x!12700 Int)) (Broken!18495 (value!112497 List!20079)) (Object!3768) (End!3699) (Def!3699) (Underscore!3699) (Match!3699) (Else!3699) (Error!3699) (Case!3699) (If!3699) (Extends!3699) (Abstract!3699) (Class!3699) (Val!3699) (DelimiterValue!7398 (del!3759 List!20079)) (KeywordValue!3705 (value!112498 List!20079)) (CommentValue!7398 (value!112499 List!20079)) (WhitespaceValue!7398 (value!112500 List!20079)) (IndentationValue!3699 (value!112501 List!20079)) (String!22826) (Int32!3699) (Broken!18496 (value!112502 List!20079)) (Boolean!3700) (Unit!34682) (OperatorValue!3702 (op!3759 List!20079)) (IdentifierValue!7398 (value!112503 List!20079)) (IdentifierValue!7399 (value!112504 List!20079)) (WhitespaceValue!7399 (value!112505 List!20079)) (True!7398) (False!7398) (Broken!18497 (value!112506 List!20079)) (Broken!18498 (value!112507 List!20079)) (True!7399) (RightBrace!3699) (RightBracket!3699) (Colon!3699) (Null!3699) (Comma!3699) (LeftBracket!3699) (False!7399) (LeftBrace!3699) (ImaginaryLiteralValue!3699 (text!26339 List!20079)) (StringLiteralValue!11097 (value!112508 List!20079)) (EOFValue!3699 (value!112509 List!20079)) (IdentValue!3699 (value!112510 List!20079)) (DelimiterValue!7399 (value!112511 List!20079)) (DedentValue!3699 (value!112512 List!20079)) (NewLineValue!3699 (value!112513 List!20079)) (IntegerValue!11097 (value!112514 (_ BitVec 32)) (text!26340 List!20079)) (IntegerValue!11098 (value!112515 Int) (text!26341 List!20079)) (Times!3699) (Or!3699) (Equal!3699) (Minus!3699) (Broken!18499 (value!112516 List!20079)) (And!3699) (Div!3699) (LessEqual!3699) (Mod!3699) (Concat!8636) (Not!3699) (Plus!3699) (SpaceValue!3699 (value!112517 List!20079)) (IntegerValue!11099 (value!112518 Int) (text!26342 List!20079)) (StringLiteralValue!11098 (text!26343 List!20079)) (FloatLiteralValue!7399 (text!26344 List!20079)) (BytesLiteralValue!3699 (value!112519 List!20079)) (CommentValue!7399 (value!112520 List!20079)) (StringLiteralValue!11099 (value!112521 List!20079)) (ErrorTokenValue!3699 (msg!3760 List!20079)) )
))
(declare-datatypes ((C!10048 0))(
  ( (C!10049 (val!5620 Int)) )
))
(declare-datatypes ((List!20080 0))(
  ( (Nil!20010) (Cons!20010 (h!25411 C!10048) (t!170021 List!20080)) )
))
(declare-datatypes ((IArray!13287 0))(
  ( (IArray!13288 (innerList!6701 List!20080)) )
))
(declare-datatypes ((Conc!6641 0))(
  ( (Node!6641 (left!16019 Conc!6641) (right!16349 Conc!6641) (csize!13512 Int) (cheight!6852 Int)) (Leaf!9666 (xs!9517 IArray!13287) (csize!13513 Int)) (Empty!6641) )
))
(declare-datatypes ((BalanceConc!13226 0))(
  ( (BalanceConc!13227 (c!297454 Conc!6641)) )
))
(declare-datatypes ((TokenValueInjection!7058 0))(
  ( (TokenValueInjection!7059 (toValue!5144 Int) (toChars!5003 Int)) )
))
(declare-datatypes ((Regex!4937 0))(
  ( (ElementMatch!4937 (c!297455 C!10048)) (Concat!8637 (regOne!10386 Regex!4937) (regTwo!10386 Regex!4937)) (EmptyExpr!4937) (Star!4937 (reg!5266 Regex!4937)) (EmptyLang!4937) (Union!4937 (regOne!10387 Regex!4937) (regTwo!10387 Regex!4937)) )
))
(declare-datatypes ((String!22827 0))(
  ( (String!22828 (value!112522 String)) )
))
(declare-datatypes ((Rule!7018 0))(
  ( (Rule!7019 (regex!3609 Regex!4937) (tag!4023 String!22827) (isSeparator!3609 Bool) (transformation!3609 TokenValueInjection!7058)) )
))
(declare-datatypes ((Token!6772 0))(
  ( (Token!6773 (value!112523 TokenValue!3699) (rule!5751 Rule!7018) (size!15873 Int) (originalCharacters!4417 List!20080)) )
))
(declare-fun token!556 () Token!6772)

(declare-fun b!1823351 () Bool)

(declare-fun e!1165417 () Bool)

(declare-fun inv!26040 (String!22827) Bool)

(declare-fun inv!26043 (TokenValueInjection!7058) Bool)

(assert (=> b!1823351 (= e!1165422 (and tp!515525 (inv!26040 (tag!4023 (rule!5751 token!556))) (inv!26043 (transformation!3609 (rule!5751 token!556))) e!1165417))))

(declare-fun tp!515529 () Bool)

(declare-fun b!1823352 () Bool)

(declare-fun e!1165431 () Bool)

(declare-datatypes ((List!20081 0))(
  ( (Nil!20011) (Cons!20011 (h!25412 Rule!7018) (t!170022 List!20081)) )
))
(declare-fun rules!4538 () List!20081)

(declare-fun e!1165419 () Bool)

(assert (=> b!1823352 (= e!1165419 (and tp!515529 (inv!26040 (tag!4023 (h!25412 rules!4538))) (inv!26043 (transformation!3609 (h!25412 rules!4538))) e!1165431))))

(declare-fun b!1823353 () Bool)

(declare-fun res!820064 () Bool)

(declare-fun e!1165430 () Bool)

(assert (=> b!1823353 (=> (not res!820064) (not e!1165430))))

(declare-datatypes ((LexerInterface!3238 0))(
  ( (LexerInterfaceExt!3235 (__x!12701 Int)) (Lexer!3236) )
))
(declare-fun thiss!28068 () LexerInterface!3238)

(declare-fun rulesInvariant!2907 (LexerInterface!3238 List!20081) Bool)

(assert (=> b!1823353 (= res!820064 (rulesInvariant!2907 thiss!28068 rules!4538))))

(declare-fun res!820065 () Bool)

(assert (=> start!180614 (=> (not res!820065) (not e!1165430))))

(get-info :version)

(assert (=> start!180614 (= res!820065 ((_ is Lexer!3236) thiss!28068))))

(assert (=> start!180614 e!1165430))

(declare-fun e!1165426 () Bool)

(assert (=> start!180614 e!1165426))

(assert (=> start!180614 true))

(declare-fun e!1165425 () Bool)

(assert (=> start!180614 e!1165425))

(declare-fun e!1165427 () Bool)

(declare-fun inv!26044 (Token!6772) Bool)

(assert (=> start!180614 (and (inv!26044 token!556) e!1165427)))

(declare-fun e!1165418 () Bool)

(assert (=> start!180614 e!1165418))

(declare-fun e!1165416 () Bool)

(assert (=> start!180614 e!1165416))

(declare-fun tp!515527 () Bool)

(declare-fun b!1823354 () Bool)

(declare-fun rule!559 () Rule!7018)

(declare-fun e!1165424 () Bool)

(assert (=> b!1823354 (= e!1165418 (and tp!515527 (inv!26040 (tag!4023 rule!559)) (inv!26043 (transformation!3609 rule!559)) e!1165424))))

(declare-fun b!1823355 () Bool)

(declare-fun res!820069 () Bool)

(declare-fun e!1165432 () Bool)

(assert (=> b!1823355 (=> (not res!820069) (not e!1165432))))

(assert (=> b!1823355 (= res!820069 (= (rule!5751 token!556) rule!559))))

(assert (=> b!1823356 (= e!1165424 (and tp!515524 tp!515534))))

(declare-fun b!1823357 () Bool)

(declare-fun tp!515528 () Bool)

(assert (=> b!1823357 (= e!1165425 (and e!1165419 tp!515528))))

(declare-fun b!1823358 () Bool)

(declare-fun tp_is_empty!8109 () Bool)

(declare-fun tp!515536 () Bool)

(assert (=> b!1823358 (= e!1165426 (and tp_is_empty!8109 tp!515536))))

(declare-fun b!1823359 () Bool)

(declare-fun res!820063 () Bool)

(assert (=> b!1823359 (=> (not res!820063) (not e!1165430))))

(declare-fun isEmpty!12635 (List!20081) Bool)

(assert (=> b!1823359 (= res!820063 (not (isEmpty!12635 rules!4538)))))

(declare-fun b!1823360 () Bool)

(declare-fun e!1165420 () Bool)

(declare-fun e!1165428 () Bool)

(assert (=> b!1823360 (= e!1165420 (not e!1165428))))

(declare-fun res!820066 () Bool)

(assert (=> b!1823360 (=> res!820066 e!1165428)))

(declare-fun lt!708495 () List!20080)

(declare-fun matchR!2402 (Regex!4937 List!20080) Bool)

(assert (=> b!1823360 (= res!820066 (not (matchR!2402 (regex!3609 rule!559) lt!708495)))))

(declare-fun ruleValid!1101 (LexerInterface!3238 Rule!7018) Bool)

(assert (=> b!1823360 (ruleValid!1101 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34683 0))(
  ( (Unit!34684) )
))
(declare-fun lt!708490 () Unit!34683)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!622 (LexerInterface!3238 Rule!7018 List!20081) Unit!34683)

(assert (=> b!1823360 (= lt!708490 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!622 thiss!28068 rule!559 rules!4538))))

(assert (=> b!1823361 (= e!1165431 (and tp!515531 tp!515526))))

(declare-fun b!1823362 () Bool)

(declare-fun res!820067 () Bool)

(assert (=> b!1823362 (=> (not res!820067) (not e!1165430))))

(declare-fun contains!3665 (List!20081 Rule!7018) Bool)

(assert (=> b!1823362 (= res!820067 (contains!3665 rules!4538 rule!559))))

(declare-fun b!1823363 () Bool)

(declare-datatypes ((tuple2!19510 0))(
  ( (tuple2!19511 (_1!11157 Token!6772) (_2!11157 List!20080)) )
))
(declare-datatypes ((Option!4189 0))(
  ( (None!4188) (Some!4188 (v!25737 tuple2!19510)) )
))
(declare-fun lt!708491 () Option!4189)

(declare-fun lt!708493 () Option!4189)

(assert (=> b!1823363 (= e!1165428 (= lt!708491 lt!708493))))

(declare-fun lt!708492 () TokenValue!3699)

(declare-fun suffix!1667 () List!20080)

(declare-fun lt!708494 () Int)

(assert (=> b!1823363 (= lt!708491 (Some!4188 (tuple2!19511 (Token!6773 lt!708492 rule!559 lt!708494 lt!708495) suffix!1667)))))

(declare-fun input!3612 () List!20080)

(declare-fun maxPrefixOneRule!1151 (LexerInterface!3238 Rule!7018 List!20080) Option!4189)

(assert (=> b!1823363 (= lt!708491 (maxPrefixOneRule!1151 thiss!28068 rule!559 input!3612))))

(declare-fun size!15874 (List!20080) Int)

(assert (=> b!1823363 (= lt!708494 (size!15874 lt!708495))))

(declare-fun apply!5401 (TokenValueInjection!7058 BalanceConc!13226) TokenValue!3699)

(declare-fun seqFromList!2570 (List!20080) BalanceConc!13226)

(assert (=> b!1823363 (= lt!708492 (apply!5401 (transformation!3609 rule!559) (seqFromList!2570 lt!708495)))))

(declare-fun lt!708496 () Unit!34683)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!527 (LexerInterface!3238 List!20081 List!20080 List!20080 List!20080 Rule!7018) Unit!34683)

(assert (=> b!1823363 (= lt!708496 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!527 thiss!28068 rules!4538 lt!708495 input!3612 suffix!1667 rule!559))))

(declare-fun b!1823364 () Bool)

(declare-fun tp!515533 () Bool)

(assert (=> b!1823364 (= e!1165416 (and tp_is_empty!8109 tp!515533))))

(declare-fun b!1823365 () Bool)

(assert (=> b!1823365 (= e!1165430 e!1165432)))

(declare-fun res!820068 () Bool)

(assert (=> b!1823365 (=> (not res!820068) (not e!1165432))))

(declare-fun maxPrefix!1786 (LexerInterface!3238 List!20081 List!20080) Option!4189)

(assert (=> b!1823365 (= res!820068 (= (maxPrefix!1786 thiss!28068 rules!4538 input!3612) lt!708493))))

(assert (=> b!1823365 (= lt!708493 (Some!4188 (tuple2!19511 token!556 suffix!1667)))))

(declare-fun b!1823366 () Bool)

(assert (=> b!1823366 (= e!1165432 e!1165420)))

(declare-fun res!820070 () Bool)

(assert (=> b!1823366 (=> (not res!820070) (not e!1165420))))

(declare-fun ++!5433 (List!20080 List!20080) List!20080)

(assert (=> b!1823366 (= res!820070 (= input!3612 (++!5433 lt!708495 suffix!1667)))))

(declare-fun list!8129 (BalanceConc!13226) List!20080)

(declare-fun charsOf!2252 (Token!6772) BalanceConc!13226)

(assert (=> b!1823366 (= lt!708495 (list!8129 (charsOf!2252 token!556)))))

(declare-fun tp!515530 () Bool)

(declare-fun b!1823367 () Bool)

(declare-fun inv!21 (TokenValue!3699) Bool)

(assert (=> b!1823367 (= e!1165427 (and (inv!21 (value!112523 token!556)) e!1165422 tp!515530))))

(assert (=> b!1823368 (= e!1165417 (and tp!515535 tp!515532))))

(assert (= (and start!180614 res!820065) b!1823359))

(assert (= (and b!1823359 res!820063) b!1823353))

(assert (= (and b!1823353 res!820064) b!1823362))

(assert (= (and b!1823362 res!820067) b!1823365))

(assert (= (and b!1823365 res!820068) b!1823355))

(assert (= (and b!1823355 res!820069) b!1823366))

(assert (= (and b!1823366 res!820070) b!1823360))

(assert (= (and b!1823360 (not res!820066)) b!1823363))

(assert (= (and start!180614 ((_ is Cons!20010) suffix!1667)) b!1823358))

(assert (= b!1823352 b!1823361))

(assert (= b!1823357 b!1823352))

(assert (= (and start!180614 ((_ is Cons!20011) rules!4538)) b!1823357))

(assert (= b!1823351 b!1823368))

(assert (= b!1823367 b!1823351))

(assert (= start!180614 b!1823367))

(assert (= b!1823354 b!1823356))

(assert (= start!180614 b!1823354))

(assert (= (and start!180614 ((_ is Cons!20010) input!3612)) b!1823364))

(declare-fun m!2251915 () Bool)

(assert (=> b!1823352 m!2251915))

(declare-fun m!2251917 () Bool)

(assert (=> b!1823352 m!2251917))

(declare-fun m!2251919 () Bool)

(assert (=> b!1823353 m!2251919))

(declare-fun m!2251921 () Bool)

(assert (=> b!1823365 m!2251921))

(declare-fun m!2251923 () Bool)

(assert (=> b!1823359 m!2251923))

(declare-fun m!2251925 () Bool)

(assert (=> b!1823367 m!2251925))

(declare-fun m!2251927 () Bool)

(assert (=> b!1823363 m!2251927))

(declare-fun m!2251929 () Bool)

(assert (=> b!1823363 m!2251929))

(assert (=> b!1823363 m!2251927))

(declare-fun m!2251931 () Bool)

(assert (=> b!1823363 m!2251931))

(declare-fun m!2251933 () Bool)

(assert (=> b!1823363 m!2251933))

(declare-fun m!2251935 () Bool)

(assert (=> b!1823363 m!2251935))

(declare-fun m!2251937 () Bool)

(assert (=> b!1823351 m!2251937))

(declare-fun m!2251939 () Bool)

(assert (=> b!1823351 m!2251939))

(declare-fun m!2251941 () Bool)

(assert (=> b!1823360 m!2251941))

(declare-fun m!2251943 () Bool)

(assert (=> b!1823360 m!2251943))

(declare-fun m!2251945 () Bool)

(assert (=> b!1823360 m!2251945))

(declare-fun m!2251947 () Bool)

(assert (=> b!1823354 m!2251947))

(declare-fun m!2251949 () Bool)

(assert (=> b!1823354 m!2251949))

(declare-fun m!2251951 () Bool)

(assert (=> b!1823362 m!2251951))

(declare-fun m!2251953 () Bool)

(assert (=> start!180614 m!2251953))

(declare-fun m!2251955 () Bool)

(assert (=> b!1823366 m!2251955))

(declare-fun m!2251957 () Bool)

(assert (=> b!1823366 m!2251957))

(assert (=> b!1823366 m!2251957))

(declare-fun m!2251959 () Bool)

(assert (=> b!1823366 m!2251959))

(check-sat (not b!1823351) b_and!141485 (not b_next!51433) (not b_next!51431) tp_is_empty!8109 (not b!1823367) (not b_next!51427) (not b!1823352) (not start!180614) b_and!141483 (not b!1823353) (not b!1823363) b_and!141487 (not b!1823359) (not b!1823365) b_and!141481 (not b!1823357) (not b_next!51423) (not b!1823358) (not b!1823366) (not b_next!51429) (not b_next!51425) (not b!1823362) b_and!141477 (not b!1823354) b_and!141479 (not b!1823364) (not b!1823360))
(check-sat b_and!141485 (not b_next!51429) (not b_next!51433) (not b_next!51431) (not b_next!51427) b_and!141479 b_and!141483 b_and!141487 b_and!141481 (not b_next!51423) (not b_next!51425) b_and!141477)
(get-model)

(declare-fun b!1823404 () Bool)

(declare-fun res!820083 () Bool)

(declare-fun e!1165453 () Bool)

(assert (=> b!1823404 (=> res!820083 e!1165453)))

(assert (=> b!1823404 (= res!820083 (not ((_ is IntegerValue!11099) (value!112523 token!556))))))

(declare-fun e!1165454 () Bool)

(assert (=> b!1823404 (= e!1165454 e!1165453)))

(declare-fun b!1823405 () Bool)

(declare-fun e!1165452 () Bool)

(assert (=> b!1823405 (= e!1165452 e!1165454)))

(declare-fun c!297468 () Bool)

(assert (=> b!1823405 (= c!297468 ((_ is IntegerValue!11098) (value!112523 token!556)))))

(declare-fun b!1823406 () Bool)

(declare-fun inv!16 (TokenValue!3699) Bool)

(assert (=> b!1823406 (= e!1165452 (inv!16 (value!112523 token!556)))))

(declare-fun b!1823407 () Bool)

(declare-fun inv!15 (TokenValue!3699) Bool)

(assert (=> b!1823407 (= e!1165453 (inv!15 (value!112523 token!556)))))

(declare-fun b!1823408 () Bool)

(declare-fun inv!17 (TokenValue!3699) Bool)

(assert (=> b!1823408 (= e!1165454 (inv!17 (value!112523 token!556)))))

(declare-fun d!558075 () Bool)

(declare-fun c!297467 () Bool)

(assert (=> d!558075 (= c!297467 ((_ is IntegerValue!11097) (value!112523 token!556)))))

(assert (=> d!558075 (= (inv!21 (value!112523 token!556)) e!1165452)))

(assert (= (and d!558075 c!297467) b!1823406))

(assert (= (and d!558075 (not c!297467)) b!1823405))

(assert (= (and b!1823405 c!297468) b!1823408))

(assert (= (and b!1823405 (not c!297468)) b!1823404))

(assert (= (and b!1823404 (not res!820083)) b!1823407))

(declare-fun m!2251983 () Bool)

(assert (=> b!1823406 m!2251983))

(declare-fun m!2251985 () Bool)

(assert (=> b!1823407 m!2251985))

(declare-fun m!2251987 () Bool)

(assert (=> b!1823408 m!2251987))

(assert (=> b!1823367 d!558075))

(declare-fun b!1823459 () Bool)

(declare-fun res!820122 () Bool)

(declare-fun e!1165488 () Bool)

(assert (=> b!1823459 (=> res!820122 e!1165488)))

(declare-fun isEmpty!12638 (List!20080) Bool)

(declare-fun tail!2711 (List!20080) List!20080)

(assert (=> b!1823459 (= res!820122 (not (isEmpty!12638 (tail!2711 lt!708495))))))

(declare-fun b!1823460 () Bool)

(declare-fun e!1165486 () Bool)

(declare-fun nullable!1529 (Regex!4937) Bool)

(assert (=> b!1823460 (= e!1165486 (nullable!1529 (regex!3609 rule!559)))))

(declare-fun b!1823462 () Bool)

(declare-fun res!820120 () Bool)

(declare-fun e!1165492 () Bool)

(assert (=> b!1823462 (=> (not res!820120) (not e!1165492))))

(declare-fun call!114379 () Bool)

(assert (=> b!1823462 (= res!820120 (not call!114379))))

(declare-fun b!1823463 () Bool)

(declare-fun e!1165487 () Bool)

(assert (=> b!1823463 (= e!1165487 e!1165488)))

(declare-fun res!820121 () Bool)

(assert (=> b!1823463 (=> res!820121 e!1165488)))

(assert (=> b!1823463 (= res!820121 call!114379)))

(declare-fun b!1823464 () Bool)

(declare-fun e!1165491 () Bool)

(assert (=> b!1823464 (= e!1165491 e!1165487)))

(declare-fun res!820124 () Bool)

(assert (=> b!1823464 (=> (not res!820124) (not e!1165487))))

(declare-fun lt!708508 () Bool)

(assert (=> b!1823464 (= res!820124 (not lt!708508))))

(declare-fun b!1823465 () Bool)

(declare-fun res!820123 () Bool)

(assert (=> b!1823465 (=> res!820123 e!1165491)))

(assert (=> b!1823465 (= res!820123 e!1165492)))

(declare-fun res!820118 () Bool)

(assert (=> b!1823465 (=> (not res!820118) (not e!1165492))))

(assert (=> b!1823465 (= res!820118 lt!708508)))

(declare-fun b!1823466 () Bool)

(declare-fun head!4252 (List!20080) C!10048)

(assert (=> b!1823466 (= e!1165492 (= (head!4252 lt!708495) (c!297455 (regex!3609 rule!559))))))

(declare-fun b!1823467 () Bool)

(declare-fun res!820119 () Bool)

(assert (=> b!1823467 (=> res!820119 e!1165491)))

(assert (=> b!1823467 (= res!820119 (not ((_ is ElementMatch!4937) (regex!3609 rule!559))))))

(declare-fun e!1165490 () Bool)

(assert (=> b!1823467 (= e!1165490 e!1165491)))

(declare-fun bm!114374 () Bool)

(assert (=> bm!114374 (= call!114379 (isEmpty!12638 lt!708495))))

(declare-fun b!1823468 () Bool)

(declare-fun res!820125 () Bool)

(assert (=> b!1823468 (=> (not res!820125) (not e!1165492))))

(assert (=> b!1823468 (= res!820125 (isEmpty!12638 (tail!2711 lt!708495)))))

(declare-fun d!558081 () Bool)

(declare-fun e!1165489 () Bool)

(assert (=> d!558081 e!1165489))

(declare-fun c!297478 () Bool)

(assert (=> d!558081 (= c!297478 ((_ is EmptyExpr!4937) (regex!3609 rule!559)))))

(assert (=> d!558081 (= lt!708508 e!1165486)))

(declare-fun c!297477 () Bool)

(assert (=> d!558081 (= c!297477 (isEmpty!12638 lt!708495))))

(declare-fun validRegex!2007 (Regex!4937) Bool)

(assert (=> d!558081 (validRegex!2007 (regex!3609 rule!559))))

(assert (=> d!558081 (= (matchR!2402 (regex!3609 rule!559) lt!708495) lt!708508)))

(declare-fun b!1823461 () Bool)

(assert (=> b!1823461 (= e!1165489 e!1165490)))

(declare-fun c!297479 () Bool)

(assert (=> b!1823461 (= c!297479 ((_ is EmptyLang!4937) (regex!3609 rule!559)))))

(declare-fun b!1823469 () Bool)

(assert (=> b!1823469 (= e!1165489 (= lt!708508 call!114379))))

(declare-fun b!1823470 () Bool)

(declare-fun derivativeStep!1294 (Regex!4937 C!10048) Regex!4937)

(assert (=> b!1823470 (= e!1165486 (matchR!2402 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495)) (tail!2711 lt!708495)))))

(declare-fun b!1823471 () Bool)

(assert (=> b!1823471 (= e!1165488 (not (= (head!4252 lt!708495) (c!297455 (regex!3609 rule!559)))))))

(declare-fun b!1823472 () Bool)

(assert (=> b!1823472 (= e!1165490 (not lt!708508))))

(assert (= (and d!558081 c!297477) b!1823460))

(assert (= (and d!558081 (not c!297477)) b!1823470))

(assert (= (and d!558081 c!297478) b!1823469))

(assert (= (and d!558081 (not c!297478)) b!1823461))

(assert (= (and b!1823461 c!297479) b!1823472))

(assert (= (and b!1823461 (not c!297479)) b!1823467))

(assert (= (and b!1823467 (not res!820119)) b!1823465))

(assert (= (and b!1823465 res!820118) b!1823462))

(assert (= (and b!1823462 res!820120) b!1823468))

(assert (= (and b!1823468 res!820125) b!1823466))

(assert (= (and b!1823465 (not res!820123)) b!1823464))

(assert (= (and b!1823464 res!820124) b!1823463))

(assert (= (and b!1823463 (not res!820121)) b!1823459))

(assert (= (and b!1823459 (not res!820122)) b!1823471))

(assert (= (or b!1823469 b!1823462 b!1823463) bm!114374))

(declare-fun m!2252011 () Bool)

(assert (=> bm!114374 m!2252011))

(assert (=> d!558081 m!2252011))

(declare-fun m!2252013 () Bool)

(assert (=> d!558081 m!2252013))

(declare-fun m!2252015 () Bool)

(assert (=> b!1823460 m!2252015))

(declare-fun m!2252017 () Bool)

(assert (=> b!1823459 m!2252017))

(assert (=> b!1823459 m!2252017))

(declare-fun m!2252019 () Bool)

(assert (=> b!1823459 m!2252019))

(assert (=> b!1823468 m!2252017))

(assert (=> b!1823468 m!2252017))

(assert (=> b!1823468 m!2252019))

(declare-fun m!2252021 () Bool)

(assert (=> b!1823471 m!2252021))

(assert (=> b!1823470 m!2252021))

(assert (=> b!1823470 m!2252021))

(declare-fun m!2252023 () Bool)

(assert (=> b!1823470 m!2252023))

(assert (=> b!1823470 m!2252017))

(assert (=> b!1823470 m!2252023))

(assert (=> b!1823470 m!2252017))

(declare-fun m!2252025 () Bool)

(assert (=> b!1823470 m!2252025))

(assert (=> b!1823466 m!2252021))

(assert (=> b!1823360 d!558081))

(declare-fun d!558093 () Bool)

(declare-fun res!820146 () Bool)

(declare-fun e!1165509 () Bool)

(assert (=> d!558093 (=> (not res!820146) (not e!1165509))))

(assert (=> d!558093 (= res!820146 (validRegex!2007 (regex!3609 rule!559)))))

(assert (=> d!558093 (= (ruleValid!1101 thiss!28068 rule!559) e!1165509)))

(declare-fun b!1823505 () Bool)

(declare-fun res!820147 () Bool)

(assert (=> b!1823505 (=> (not res!820147) (not e!1165509))))

(assert (=> b!1823505 (= res!820147 (not (nullable!1529 (regex!3609 rule!559))))))

(declare-fun b!1823506 () Bool)

(assert (=> b!1823506 (= e!1165509 (not (= (tag!4023 rule!559) (String!22828 ""))))))

(assert (= (and d!558093 res!820146) b!1823505))

(assert (= (and b!1823505 res!820147) b!1823506))

(assert (=> d!558093 m!2252013))

(assert (=> b!1823505 m!2252015))

(assert (=> b!1823360 d!558093))

(declare-fun d!558095 () Bool)

(assert (=> d!558095 (ruleValid!1101 thiss!28068 rule!559)))

(declare-fun lt!708514 () Unit!34683)

(declare-fun choose!11494 (LexerInterface!3238 Rule!7018 List!20081) Unit!34683)

(assert (=> d!558095 (= lt!708514 (choose!11494 thiss!28068 rule!559 rules!4538))))

(assert (=> d!558095 (contains!3665 rules!4538 rule!559)))

(assert (=> d!558095 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!622 thiss!28068 rule!559 rules!4538) lt!708514)))

(declare-fun bs!407455 () Bool)

(assert (= bs!407455 d!558095))

(assert (=> bs!407455 m!2251943))

(declare-fun m!2252043 () Bool)

(assert (=> bs!407455 m!2252043))

(assert (=> bs!407455 m!2251951))

(assert (=> b!1823360 d!558095))

(declare-fun d!558101 () Bool)

(assert (=> d!558101 (= (isEmpty!12635 rules!4538) ((_ is Nil!20011) rules!4538))))

(assert (=> b!1823359 d!558101))

(declare-fun b!1823645 () Bool)

(declare-fun res!820224 () Bool)

(declare-fun e!1165575 () Bool)

(assert (=> b!1823645 (=> (not res!820224) (not e!1165575))))

(declare-fun lt!708567 () Option!4189)

(declare-fun get!6185 (Option!4189) tuple2!19510)

(assert (=> b!1823645 (= res!820224 (= (rule!5751 (_1!11157 (get!6185 lt!708567))) rule!559))))

(declare-fun b!1823646 () Bool)

(declare-fun res!820227 () Bool)

(assert (=> b!1823646 (=> (not res!820227) (not e!1165575))))

(assert (=> b!1823646 (= res!820227 (= (++!5433 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567)))) (_2!11157 (get!6185 lt!708567))) input!3612))))

(declare-fun b!1823647 () Bool)

(assert (=> b!1823647 (= e!1165575 (= (size!15873 (_1!11157 (get!6185 lt!708567))) (size!15874 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567))))))))

(declare-fun b!1823648 () Bool)

(declare-fun res!820226 () Bool)

(assert (=> b!1823648 (=> (not res!820226) (not e!1165575))))

(assert (=> b!1823648 (= res!820226 (< (size!15874 (_2!11157 (get!6185 lt!708567))) (size!15874 input!3612)))))

(declare-fun b!1823649 () Bool)

(declare-fun e!1165574 () Option!4189)

(assert (=> b!1823649 (= e!1165574 None!4188)))

(declare-fun b!1823650 () Bool)

(declare-fun res!820223 () Bool)

(assert (=> b!1823650 (=> (not res!820223) (not e!1165575))))

(assert (=> b!1823650 (= res!820223 (= (value!112523 (_1!11157 (get!6185 lt!708567))) (apply!5401 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567)))))))))

(declare-fun b!1823651 () Bool)

(declare-fun e!1165572 () Bool)

(declare-datatypes ((tuple2!19514 0))(
  ( (tuple2!19515 (_1!11159 List!20080) (_2!11159 List!20080)) )
))
(declare-fun findLongestMatchInner!503 (Regex!4937 List!20080 Int List!20080 List!20080 Int) tuple2!19514)

(assert (=> b!1823651 (= e!1165572 (matchR!2402 (regex!3609 rule!559) (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(declare-fun b!1823653 () Bool)

(declare-fun e!1165573 () Bool)

(assert (=> b!1823653 (= e!1165573 e!1165575)))

(declare-fun res!820229 () Bool)

(assert (=> b!1823653 (=> (not res!820229) (not e!1165575))))

(assert (=> b!1823653 (= res!820229 (matchR!2402 (regex!3609 rule!559) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))))))

(declare-fun b!1823652 () Bool)

(declare-fun lt!708565 () tuple2!19514)

(declare-fun size!15876 (BalanceConc!13226) Int)

(assert (=> b!1823652 (= e!1165574 (Some!4188 (tuple2!19511 (Token!6773 (apply!5401 (transformation!3609 rule!559) (seqFromList!2570 (_1!11159 lt!708565))) rule!559 (size!15876 (seqFromList!2570 (_1!11159 lt!708565))) (_1!11159 lt!708565)) (_2!11159 lt!708565))))))

(declare-fun lt!708566 () Unit!34683)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!487 (Regex!4937 List!20080) Unit!34683)

(assert (=> b!1823652 (= lt!708566 (longestMatchIsAcceptedByMatchOrIsEmpty!487 (regex!3609 rule!559) input!3612))))

(declare-fun res!820228 () Bool)

(assert (=> b!1823652 (= res!820228 (isEmpty!12638 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(assert (=> b!1823652 (=> res!820228 e!1165572)))

(assert (=> b!1823652 e!1165572))

(declare-fun lt!708568 () Unit!34683)

(assert (=> b!1823652 (= lt!708568 lt!708566)))

(declare-fun lt!708564 () Unit!34683)

(declare-fun lemmaSemiInverse!717 (TokenValueInjection!7058 BalanceConc!13226) Unit!34683)

(assert (=> b!1823652 (= lt!708564 (lemmaSemiInverse!717 (transformation!3609 rule!559) (seqFromList!2570 (_1!11159 lt!708565))))))

(declare-fun d!558107 () Bool)

(assert (=> d!558107 e!1165573))

(declare-fun res!820225 () Bool)

(assert (=> d!558107 (=> res!820225 e!1165573)))

(declare-fun isEmpty!12639 (Option!4189) Bool)

(assert (=> d!558107 (= res!820225 (isEmpty!12639 lt!708567))))

(assert (=> d!558107 (= lt!708567 e!1165574)))

(declare-fun c!297500 () Bool)

(assert (=> d!558107 (= c!297500 (isEmpty!12638 (_1!11159 lt!708565)))))

(declare-fun findLongestMatch!430 (Regex!4937 List!20080) tuple2!19514)

(assert (=> d!558107 (= lt!708565 (findLongestMatch!430 (regex!3609 rule!559) input!3612))))

(assert (=> d!558107 (ruleValid!1101 thiss!28068 rule!559)))

(assert (=> d!558107 (= (maxPrefixOneRule!1151 thiss!28068 rule!559 input!3612) lt!708567)))

(assert (= (and d!558107 c!297500) b!1823649))

(assert (= (and d!558107 (not c!297500)) b!1823652))

(assert (= (and b!1823652 (not res!820228)) b!1823651))

(assert (= (and d!558107 (not res!820225)) b!1823653))

(assert (= (and b!1823653 res!820229) b!1823646))

(assert (= (and b!1823646 res!820227) b!1823648))

(assert (= (and b!1823648 res!820226) b!1823645))

(assert (= (and b!1823645 res!820224) b!1823650))

(assert (= (and b!1823650 res!820223) b!1823647))

(declare-fun m!2252149 () Bool)

(assert (=> b!1823650 m!2252149))

(declare-fun m!2252151 () Bool)

(assert (=> b!1823650 m!2252151))

(assert (=> b!1823650 m!2252151))

(declare-fun m!2252153 () Bool)

(assert (=> b!1823650 m!2252153))

(declare-fun m!2252155 () Bool)

(assert (=> b!1823651 m!2252155))

(declare-fun m!2252157 () Bool)

(assert (=> b!1823651 m!2252157))

(assert (=> b!1823651 m!2252155))

(assert (=> b!1823651 m!2252157))

(declare-fun m!2252159 () Bool)

(assert (=> b!1823651 m!2252159))

(declare-fun m!2252161 () Bool)

(assert (=> b!1823651 m!2252161))

(assert (=> b!1823648 m!2252149))

(declare-fun m!2252163 () Bool)

(assert (=> b!1823648 m!2252163))

(assert (=> b!1823648 m!2252157))

(assert (=> b!1823646 m!2252149))

(declare-fun m!2252165 () Bool)

(assert (=> b!1823646 m!2252165))

(assert (=> b!1823646 m!2252165))

(declare-fun m!2252167 () Bool)

(assert (=> b!1823646 m!2252167))

(assert (=> b!1823646 m!2252167))

(declare-fun m!2252169 () Bool)

(assert (=> b!1823646 m!2252169))

(assert (=> b!1823645 m!2252149))

(declare-fun m!2252171 () Bool)

(assert (=> d!558107 m!2252171))

(declare-fun m!2252173 () Bool)

(assert (=> d!558107 m!2252173))

(declare-fun m!2252175 () Bool)

(assert (=> d!558107 m!2252175))

(assert (=> d!558107 m!2251943))

(assert (=> b!1823647 m!2252149))

(declare-fun m!2252177 () Bool)

(assert (=> b!1823647 m!2252177))

(assert (=> b!1823653 m!2252149))

(assert (=> b!1823653 m!2252165))

(assert (=> b!1823653 m!2252165))

(assert (=> b!1823653 m!2252167))

(assert (=> b!1823653 m!2252167))

(declare-fun m!2252179 () Bool)

(assert (=> b!1823653 m!2252179))

(declare-fun m!2252181 () Bool)

(assert (=> b!1823652 m!2252181))

(assert (=> b!1823652 m!2252157))

(declare-fun m!2252183 () Bool)

(assert (=> b!1823652 m!2252183))

(assert (=> b!1823652 m!2252155))

(assert (=> b!1823652 m!2252181))

(declare-fun m!2252185 () Bool)

(assert (=> b!1823652 m!2252185))

(declare-fun m!2252187 () Bool)

(assert (=> b!1823652 m!2252187))

(assert (=> b!1823652 m!2252155))

(assert (=> b!1823652 m!2252157))

(assert (=> b!1823652 m!2252159))

(assert (=> b!1823652 m!2252181))

(declare-fun m!2252189 () Bool)

(assert (=> b!1823652 m!2252189))

(assert (=> b!1823652 m!2252181))

(declare-fun m!2252191 () Bool)

(assert (=> b!1823652 m!2252191))

(assert (=> b!1823363 d!558107))

(declare-fun d!558129 () Bool)

(assert (=> d!558129 (= (maxPrefixOneRule!1151 thiss!28068 rule!559 input!3612) (Some!4188 (tuple2!19511 (Token!6773 (apply!5401 (transformation!3609 rule!559) (seqFromList!2570 lt!708495)) rule!559 (size!15874 lt!708495) lt!708495) suffix!1667)))))

(declare-fun lt!708571 () Unit!34683)

(declare-fun choose!11495 (LexerInterface!3238 List!20081 List!20080 List!20080 List!20080 Rule!7018) Unit!34683)

(assert (=> d!558129 (= lt!708571 (choose!11495 thiss!28068 rules!4538 lt!708495 input!3612 suffix!1667 rule!559))))

(assert (=> d!558129 (not (isEmpty!12635 rules!4538))))

(assert (=> d!558129 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!527 thiss!28068 rules!4538 lt!708495 input!3612 suffix!1667 rule!559) lt!708571)))

(declare-fun bs!407459 () Bool)

(assert (= bs!407459 d!558129))

(assert (=> bs!407459 m!2251933))

(assert (=> bs!407459 m!2251929))

(assert (=> bs!407459 m!2251927))

(assert (=> bs!407459 m!2251923))

(assert (=> bs!407459 m!2251927))

(assert (=> bs!407459 m!2251931))

(declare-fun m!2252193 () Bool)

(assert (=> bs!407459 m!2252193))

(assert (=> b!1823363 d!558129))

(declare-fun d!558131 () Bool)

(declare-fun lt!708574 () Int)

(assert (=> d!558131 (>= lt!708574 0)))

(declare-fun e!1165588 () Int)

(assert (=> d!558131 (= lt!708574 e!1165588)))

(declare-fun c!297503 () Bool)

(assert (=> d!558131 (= c!297503 ((_ is Nil!20010) lt!708495))))

(assert (=> d!558131 (= (size!15874 lt!708495) lt!708574)))

(declare-fun b!1823665 () Bool)

(assert (=> b!1823665 (= e!1165588 0)))

(declare-fun b!1823666 () Bool)

(assert (=> b!1823666 (= e!1165588 (+ 1 (size!15874 (t!170021 lt!708495))))))

(assert (= (and d!558131 c!297503) b!1823665))

(assert (= (and d!558131 (not c!297503)) b!1823666))

(declare-fun m!2252195 () Bool)

(assert (=> b!1823666 m!2252195))

(assert (=> b!1823363 d!558131))

(declare-fun d!558133 () Bool)

(declare-fun dynLambda!9944 (Int BalanceConc!13226) TokenValue!3699)

(assert (=> d!558133 (= (apply!5401 (transformation!3609 rule!559) (seqFromList!2570 lt!708495)) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495)))))

(declare-fun b_lambda!60205 () Bool)

(assert (=> (not b_lambda!60205) (not d!558133)))

(declare-fun t!170040 () Bool)

(declare-fun tb!111349 () Bool)

(assert (=> (and b!1823361 (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 rule!559))) t!170040) tb!111349))

(declare-fun result!133854 () Bool)

(assert (=> tb!111349 (= result!133854 (inv!21 (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495))))))

(declare-fun m!2252197 () Bool)

(assert (=> tb!111349 m!2252197))

(assert (=> d!558133 t!170040))

(declare-fun b_and!141511 () Bool)

(assert (= b_and!141477 (and (=> t!170040 result!133854) b_and!141511)))

(declare-fun tb!111351 () Bool)

(declare-fun t!170042 () Bool)

(assert (=> (and b!1823368 (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 rule!559))) t!170042) tb!111351))

(declare-fun result!133858 () Bool)

(assert (= result!133858 result!133854))

(assert (=> d!558133 t!170042))

(declare-fun b_and!141513 () Bool)

(assert (= b_and!141481 (and (=> t!170042 result!133858) b_and!141513)))

(declare-fun t!170044 () Bool)

(declare-fun tb!111353 () Bool)

(assert (=> (and b!1823356 (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 rule!559))) t!170044) tb!111353))

(declare-fun result!133860 () Bool)

(assert (= result!133860 result!133854))

(assert (=> d!558133 t!170044))

(declare-fun b_and!141515 () Bool)

(assert (= b_and!141485 (and (=> t!170044 result!133860) b_and!141515)))

(assert (=> d!558133 m!2251927))

(declare-fun m!2252199 () Bool)

(assert (=> d!558133 m!2252199))

(assert (=> b!1823363 d!558133))

(declare-fun d!558135 () Bool)

(declare-fun fromListB!1174 (List!20080) BalanceConc!13226)

(assert (=> d!558135 (= (seqFromList!2570 lt!708495) (fromListB!1174 lt!708495))))

(declare-fun bs!407460 () Bool)

(assert (= bs!407460 d!558135))

(declare-fun m!2252201 () Bool)

(assert (=> bs!407460 m!2252201))

(assert (=> b!1823363 d!558135))

(declare-fun d!558137 () Bool)

(assert (=> d!558137 (= (inv!26040 (tag!4023 (h!25412 rules!4538))) (= (mod (str.len (value!112522 (tag!4023 (h!25412 rules!4538)))) 2) 0))))

(assert (=> b!1823352 d!558137))

(declare-fun d!558139 () Bool)

(declare-fun res!820232 () Bool)

(declare-fun e!1165594 () Bool)

(assert (=> d!558139 (=> (not res!820232) (not e!1165594))))

(declare-fun semiInverseModEq!1444 (Int Int) Bool)

(assert (=> d!558139 (= res!820232 (semiInverseModEq!1444 (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 (h!25412 rules!4538)))))))

(assert (=> d!558139 (= (inv!26043 (transformation!3609 (h!25412 rules!4538))) e!1165594)))

(declare-fun b!1823671 () Bool)

(declare-fun equivClasses!1385 (Int Int) Bool)

(assert (=> b!1823671 (= e!1165594 (equivClasses!1385 (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 (h!25412 rules!4538)))))))

(assert (= (and d!558139 res!820232) b!1823671))

(declare-fun m!2252203 () Bool)

(assert (=> d!558139 m!2252203))

(declare-fun m!2252205 () Bool)

(assert (=> b!1823671 m!2252205))

(assert (=> b!1823352 d!558139))

(declare-fun d!558141 () Bool)

(declare-fun res!820235 () Bool)

(declare-fun e!1165597 () Bool)

(assert (=> d!558141 (=> (not res!820235) (not e!1165597))))

(declare-fun rulesValid!1371 (LexerInterface!3238 List!20081) Bool)

(assert (=> d!558141 (= res!820235 (rulesValid!1371 thiss!28068 rules!4538))))

(assert (=> d!558141 (= (rulesInvariant!2907 thiss!28068 rules!4538) e!1165597)))

(declare-fun b!1823674 () Bool)

(declare-datatypes ((List!20083 0))(
  ( (Nil!20013) (Cons!20013 (h!25414 String!22827) (t!170056 List!20083)) )
))
(declare-fun noDuplicateTag!1369 (LexerInterface!3238 List!20081 List!20083) Bool)

(assert (=> b!1823674 (= e!1165597 (noDuplicateTag!1369 thiss!28068 rules!4538 Nil!20013))))

(assert (= (and d!558141 res!820235) b!1823674))

(declare-fun m!2252207 () Bool)

(assert (=> d!558141 m!2252207))

(declare-fun m!2252209 () Bool)

(assert (=> b!1823674 m!2252209))

(assert (=> b!1823353 d!558141))

(declare-fun d!558143 () Bool)

(assert (=> d!558143 (= (inv!26040 (tag!4023 (rule!5751 token!556))) (= (mod (str.len (value!112522 (tag!4023 (rule!5751 token!556)))) 2) 0))))

(assert (=> b!1823351 d!558143))

(declare-fun d!558145 () Bool)

(declare-fun res!820236 () Bool)

(declare-fun e!1165598 () Bool)

(assert (=> d!558145 (=> (not res!820236) (not e!1165598))))

(assert (=> d!558145 (= res!820236 (semiInverseModEq!1444 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 (rule!5751 token!556)))))))

(assert (=> d!558145 (= (inv!26043 (transformation!3609 (rule!5751 token!556))) e!1165598)))

(declare-fun b!1823675 () Bool)

(assert (=> b!1823675 (= e!1165598 (equivClasses!1385 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 (rule!5751 token!556)))))))

(assert (= (and d!558145 res!820236) b!1823675))

(declare-fun m!2252211 () Bool)

(assert (=> d!558145 m!2252211))

(declare-fun m!2252213 () Bool)

(assert (=> b!1823675 m!2252213))

(assert (=> b!1823351 d!558145))

(declare-fun d!558147 () Bool)

(declare-fun lt!708577 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2942 (List!20081) (InoxSet Rule!7018))

(assert (=> d!558147 (= lt!708577 (select (content!2942 rules!4538) rule!559))))

(declare-fun e!1165604 () Bool)

(assert (=> d!558147 (= lt!708577 e!1165604)))

(declare-fun res!820242 () Bool)

(assert (=> d!558147 (=> (not res!820242) (not e!1165604))))

(assert (=> d!558147 (= res!820242 ((_ is Cons!20011) rules!4538))))

(assert (=> d!558147 (= (contains!3665 rules!4538 rule!559) lt!708577)))

(declare-fun b!1823680 () Bool)

(declare-fun e!1165603 () Bool)

(assert (=> b!1823680 (= e!1165604 e!1165603)))

(declare-fun res!820241 () Bool)

(assert (=> b!1823680 (=> res!820241 e!1165603)))

(assert (=> b!1823680 (= res!820241 (= (h!25412 rules!4538) rule!559))))

(declare-fun b!1823681 () Bool)

(assert (=> b!1823681 (= e!1165603 (contains!3665 (t!170022 rules!4538) rule!559))))

(assert (= (and d!558147 res!820242) b!1823680))

(assert (= (and b!1823680 (not res!820241)) b!1823681))

(declare-fun m!2252215 () Bool)

(assert (=> d!558147 m!2252215))

(declare-fun m!2252217 () Bool)

(assert (=> d!558147 m!2252217))

(declare-fun m!2252219 () Bool)

(assert (=> b!1823681 m!2252219))

(assert (=> b!1823362 d!558147))

(declare-fun b!1823691 () Bool)

(declare-fun e!1165609 () List!20080)

(assert (=> b!1823691 (= e!1165609 (Cons!20010 (h!25411 lt!708495) (++!5433 (t!170021 lt!708495) suffix!1667)))))

(declare-fun d!558149 () Bool)

(declare-fun e!1165610 () Bool)

(assert (=> d!558149 e!1165610))

(declare-fun res!820248 () Bool)

(assert (=> d!558149 (=> (not res!820248) (not e!1165610))))

(declare-fun lt!708580 () List!20080)

(declare-fun content!2943 (List!20080) (InoxSet C!10048))

(assert (=> d!558149 (= res!820248 (= (content!2943 lt!708580) ((_ map or) (content!2943 lt!708495) (content!2943 suffix!1667))))))

(assert (=> d!558149 (= lt!708580 e!1165609)))

(declare-fun c!297506 () Bool)

(assert (=> d!558149 (= c!297506 ((_ is Nil!20010) lt!708495))))

(assert (=> d!558149 (= (++!5433 lt!708495 suffix!1667) lt!708580)))

(declare-fun b!1823692 () Bool)

(declare-fun res!820247 () Bool)

(assert (=> b!1823692 (=> (not res!820247) (not e!1165610))))

(assert (=> b!1823692 (= res!820247 (= (size!15874 lt!708580) (+ (size!15874 lt!708495) (size!15874 suffix!1667))))))

(declare-fun b!1823690 () Bool)

(assert (=> b!1823690 (= e!1165609 suffix!1667)))

(declare-fun b!1823693 () Bool)

(assert (=> b!1823693 (= e!1165610 (or (not (= suffix!1667 Nil!20010)) (= lt!708580 lt!708495)))))

(assert (= (and d!558149 c!297506) b!1823690))

(assert (= (and d!558149 (not c!297506)) b!1823691))

(assert (= (and d!558149 res!820248) b!1823692))

(assert (= (and b!1823692 res!820247) b!1823693))

(declare-fun m!2252221 () Bool)

(assert (=> b!1823691 m!2252221))

(declare-fun m!2252223 () Bool)

(assert (=> d!558149 m!2252223))

(declare-fun m!2252225 () Bool)

(assert (=> d!558149 m!2252225))

(declare-fun m!2252227 () Bool)

(assert (=> d!558149 m!2252227))

(declare-fun m!2252229 () Bool)

(assert (=> b!1823692 m!2252229))

(assert (=> b!1823692 m!2251933))

(declare-fun m!2252231 () Bool)

(assert (=> b!1823692 m!2252231))

(assert (=> b!1823366 d!558149))

(declare-fun d!558151 () Bool)

(declare-fun list!8131 (Conc!6641) List!20080)

(assert (=> d!558151 (= (list!8129 (charsOf!2252 token!556)) (list!8131 (c!297454 (charsOf!2252 token!556))))))

(declare-fun bs!407461 () Bool)

(assert (= bs!407461 d!558151))

(declare-fun m!2252233 () Bool)

(assert (=> bs!407461 m!2252233))

(assert (=> b!1823366 d!558151))

(declare-fun d!558153 () Bool)

(declare-fun lt!708583 () BalanceConc!13226)

(assert (=> d!558153 (= (list!8129 lt!708583) (originalCharacters!4417 token!556))))

(declare-fun dynLambda!9945 (Int TokenValue!3699) BalanceConc!13226)

(assert (=> d!558153 (= lt!708583 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))))

(assert (=> d!558153 (= (charsOf!2252 token!556) lt!708583)))

(declare-fun b_lambda!60207 () Bool)

(assert (=> (not b_lambda!60207) (not d!558153)))

(declare-fun tb!111355 () Bool)

(declare-fun t!170046 () Bool)

(assert (=> (and b!1823361 (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) t!170046) tb!111355))

(declare-fun b!1823698 () Bool)

(declare-fun e!1165613 () Bool)

(declare-fun tp!515584 () Bool)

(declare-fun inv!26047 (Conc!6641) Bool)

(assert (=> b!1823698 (= e!1165613 (and (inv!26047 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))) tp!515584))))

(declare-fun result!133862 () Bool)

(declare-fun inv!26048 (BalanceConc!13226) Bool)

(assert (=> tb!111355 (= result!133862 (and (inv!26048 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))) e!1165613))))

(assert (= tb!111355 b!1823698))

(declare-fun m!2252235 () Bool)

(assert (=> b!1823698 m!2252235))

(declare-fun m!2252237 () Bool)

(assert (=> tb!111355 m!2252237))

(assert (=> d!558153 t!170046))

(declare-fun b_and!141517 () Bool)

(assert (= b_and!141479 (and (=> t!170046 result!133862) b_and!141517)))

(declare-fun t!170048 () Bool)

(declare-fun tb!111357 () Bool)

(assert (=> (and b!1823368 (= (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) t!170048) tb!111357))

(declare-fun result!133866 () Bool)

(assert (= result!133866 result!133862))

(assert (=> d!558153 t!170048))

(declare-fun b_and!141519 () Bool)

(assert (= b_and!141483 (and (=> t!170048 result!133866) b_and!141519)))

(declare-fun tb!111359 () Bool)

(declare-fun t!170050 () Bool)

(assert (=> (and b!1823356 (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) t!170050) tb!111359))

(declare-fun result!133868 () Bool)

(assert (= result!133868 result!133862))

(assert (=> d!558153 t!170050))

(declare-fun b_and!141521 () Bool)

(assert (= b_and!141487 (and (=> t!170050 result!133868) b_and!141521)))

(declare-fun m!2252239 () Bool)

(assert (=> d!558153 m!2252239))

(declare-fun m!2252241 () Bool)

(assert (=> d!558153 m!2252241))

(assert (=> b!1823366 d!558153))

(declare-fun d!558155 () Bool)

(declare-fun res!820253 () Bool)

(declare-fun e!1165616 () Bool)

(assert (=> d!558155 (=> (not res!820253) (not e!1165616))))

(assert (=> d!558155 (= res!820253 (not (isEmpty!12638 (originalCharacters!4417 token!556))))))

(assert (=> d!558155 (= (inv!26044 token!556) e!1165616)))

(declare-fun b!1823703 () Bool)

(declare-fun res!820254 () Bool)

(assert (=> b!1823703 (=> (not res!820254) (not e!1165616))))

(assert (=> b!1823703 (= res!820254 (= (originalCharacters!4417 token!556) (list!8129 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))))))

(declare-fun b!1823704 () Bool)

(assert (=> b!1823704 (= e!1165616 (= (size!15873 token!556) (size!15874 (originalCharacters!4417 token!556))))))

(assert (= (and d!558155 res!820253) b!1823703))

(assert (= (and b!1823703 res!820254) b!1823704))

(declare-fun b_lambda!60209 () Bool)

(assert (=> (not b_lambda!60209) (not b!1823703)))

(assert (=> b!1823703 t!170046))

(declare-fun b_and!141523 () Bool)

(assert (= b_and!141517 (and (=> t!170046 result!133862) b_and!141523)))

(assert (=> b!1823703 t!170048))

(declare-fun b_and!141525 () Bool)

(assert (= b_and!141519 (and (=> t!170048 result!133866) b_and!141525)))

(assert (=> b!1823703 t!170050))

(declare-fun b_and!141527 () Bool)

(assert (= b_and!141521 (and (=> t!170050 result!133868) b_and!141527)))

(declare-fun m!2252243 () Bool)

(assert (=> d!558155 m!2252243))

(assert (=> b!1823703 m!2252241))

(assert (=> b!1823703 m!2252241))

(declare-fun m!2252245 () Bool)

(assert (=> b!1823703 m!2252245))

(declare-fun m!2252247 () Bool)

(assert (=> b!1823704 m!2252247))

(assert (=> start!180614 d!558155))

(declare-fun b!1823723 () Bool)

(declare-fun e!1165624 () Option!4189)

(declare-fun lt!708594 () Option!4189)

(declare-fun lt!708595 () Option!4189)

(assert (=> b!1823723 (= e!1165624 (ite (and ((_ is None!4188) lt!708594) ((_ is None!4188) lt!708595)) None!4188 (ite ((_ is None!4188) lt!708595) lt!708594 (ite ((_ is None!4188) lt!708594) lt!708595 (ite (>= (size!15873 (_1!11157 (v!25737 lt!708594))) (size!15873 (_1!11157 (v!25737 lt!708595)))) lt!708594 lt!708595)))))))

(declare-fun call!114388 () Option!4189)

(assert (=> b!1823723 (= lt!708594 call!114388)))

(assert (=> b!1823723 (= lt!708595 (maxPrefix!1786 thiss!28068 (t!170022 rules!4538) input!3612))))

(declare-fun b!1823724 () Bool)

(declare-fun res!820272 () Bool)

(declare-fun e!1165625 () Bool)

(assert (=> b!1823724 (=> (not res!820272) (not e!1165625))))

(declare-fun lt!708596 () Option!4189)

(assert (=> b!1823724 (= res!820272 (= (value!112523 (_1!11157 (get!6185 lt!708596))) (apply!5401 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708596)))))))))

(declare-fun b!1823725 () Bool)

(declare-fun res!820274 () Bool)

(assert (=> b!1823725 (=> (not res!820274) (not e!1165625))))

(assert (=> b!1823725 (= res!820274 (= (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))) (originalCharacters!4417 (_1!11157 (get!6185 lt!708596)))))))

(declare-fun b!1823726 () Bool)

(assert (=> b!1823726 (= e!1165624 call!114388)))

(declare-fun b!1823727 () Bool)

(declare-fun e!1165623 () Bool)

(assert (=> b!1823727 (= e!1165623 e!1165625)))

(declare-fun res!820271 () Bool)

(assert (=> b!1823727 (=> (not res!820271) (not e!1165625))))

(declare-fun isDefined!3506 (Option!4189) Bool)

(assert (=> b!1823727 (= res!820271 (isDefined!3506 lt!708596))))

(declare-fun d!558157 () Bool)

(assert (=> d!558157 e!1165623))

(declare-fun res!820269 () Bool)

(assert (=> d!558157 (=> res!820269 e!1165623)))

(assert (=> d!558157 (= res!820269 (isEmpty!12639 lt!708596))))

(assert (=> d!558157 (= lt!708596 e!1165624)))

(declare-fun c!297509 () Bool)

(assert (=> d!558157 (= c!297509 (and ((_ is Cons!20011) rules!4538) ((_ is Nil!20011) (t!170022 rules!4538))))))

(declare-fun lt!708598 () Unit!34683)

(declare-fun lt!708597 () Unit!34683)

(assert (=> d!558157 (= lt!708598 lt!708597)))

(declare-fun isPrefix!1819 (List!20080 List!20080) Bool)

(assert (=> d!558157 (isPrefix!1819 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1196 (List!20080 List!20080) Unit!34683)

(assert (=> d!558157 (= lt!708597 (lemmaIsPrefixRefl!1196 input!3612 input!3612))))

(declare-fun rulesValidInductive!1238 (LexerInterface!3238 List!20081) Bool)

(assert (=> d!558157 (rulesValidInductive!1238 thiss!28068 rules!4538)))

(assert (=> d!558157 (= (maxPrefix!1786 thiss!28068 rules!4538 input!3612) lt!708596)))

(declare-fun b!1823728 () Bool)

(declare-fun res!820273 () Bool)

(assert (=> b!1823728 (=> (not res!820273) (not e!1165625))))

(assert (=> b!1823728 (= res!820273 (= (++!5433 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))) (_2!11157 (get!6185 lt!708596))) input!3612))))

(declare-fun bm!114383 () Bool)

(assert (=> bm!114383 (= call!114388 (maxPrefixOneRule!1151 thiss!28068 (h!25412 rules!4538) input!3612))))

(declare-fun b!1823729 () Bool)

(assert (=> b!1823729 (= e!1165625 (contains!3665 rules!4538 (rule!5751 (_1!11157 (get!6185 lt!708596)))))))

(declare-fun b!1823730 () Bool)

(declare-fun res!820275 () Bool)

(assert (=> b!1823730 (=> (not res!820275) (not e!1165625))))

(assert (=> b!1823730 (= res!820275 (< (size!15874 (_2!11157 (get!6185 lt!708596))) (size!15874 input!3612)))))

(declare-fun b!1823731 () Bool)

(declare-fun res!820270 () Bool)

(assert (=> b!1823731 (=> (not res!820270) (not e!1165625))))

(assert (=> b!1823731 (= res!820270 (matchR!2402 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))))))

(assert (= (and d!558157 c!297509) b!1823726))

(assert (= (and d!558157 (not c!297509)) b!1823723))

(assert (= (or b!1823726 b!1823723) bm!114383))

(assert (= (and d!558157 (not res!820269)) b!1823727))

(assert (= (and b!1823727 res!820271) b!1823725))

(assert (= (and b!1823725 res!820274) b!1823730))

(assert (= (and b!1823730 res!820275) b!1823728))

(assert (= (and b!1823728 res!820273) b!1823724))

(assert (= (and b!1823724 res!820272) b!1823731))

(assert (= (and b!1823731 res!820270) b!1823729))

(declare-fun m!2252249 () Bool)

(assert (=> b!1823727 m!2252249))

(declare-fun m!2252251 () Bool)

(assert (=> b!1823725 m!2252251))

(declare-fun m!2252253 () Bool)

(assert (=> b!1823725 m!2252253))

(assert (=> b!1823725 m!2252253))

(declare-fun m!2252255 () Bool)

(assert (=> b!1823725 m!2252255))

(assert (=> b!1823730 m!2252251))

(declare-fun m!2252257 () Bool)

(assert (=> b!1823730 m!2252257))

(assert (=> b!1823730 m!2252157))

(assert (=> b!1823729 m!2252251))

(declare-fun m!2252259 () Bool)

(assert (=> b!1823729 m!2252259))

(assert (=> b!1823724 m!2252251))

(declare-fun m!2252261 () Bool)

(assert (=> b!1823724 m!2252261))

(assert (=> b!1823724 m!2252261))

(declare-fun m!2252263 () Bool)

(assert (=> b!1823724 m!2252263))

(declare-fun m!2252265 () Bool)

(assert (=> bm!114383 m!2252265))

(assert (=> b!1823731 m!2252251))

(assert (=> b!1823731 m!2252253))

(assert (=> b!1823731 m!2252253))

(assert (=> b!1823731 m!2252255))

(assert (=> b!1823731 m!2252255))

(declare-fun m!2252267 () Bool)

(assert (=> b!1823731 m!2252267))

(declare-fun m!2252269 () Bool)

(assert (=> d!558157 m!2252269))

(declare-fun m!2252271 () Bool)

(assert (=> d!558157 m!2252271))

(declare-fun m!2252273 () Bool)

(assert (=> d!558157 m!2252273))

(declare-fun m!2252275 () Bool)

(assert (=> d!558157 m!2252275))

(assert (=> b!1823728 m!2252251))

(assert (=> b!1823728 m!2252253))

(assert (=> b!1823728 m!2252253))

(assert (=> b!1823728 m!2252255))

(assert (=> b!1823728 m!2252255))

(declare-fun m!2252277 () Bool)

(assert (=> b!1823728 m!2252277))

(declare-fun m!2252279 () Bool)

(assert (=> b!1823723 m!2252279))

(assert (=> b!1823365 d!558157))

(declare-fun d!558159 () Bool)

(assert (=> d!558159 (= (inv!26040 (tag!4023 rule!559)) (= (mod (str.len (value!112522 (tag!4023 rule!559))) 2) 0))))

(assert (=> b!1823354 d!558159))

(declare-fun d!558161 () Bool)

(declare-fun res!820276 () Bool)

(declare-fun e!1165626 () Bool)

(assert (=> d!558161 (=> (not res!820276) (not e!1165626))))

(assert (=> d!558161 (= res!820276 (semiInverseModEq!1444 (toChars!5003 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 rule!559))))))

(assert (=> d!558161 (= (inv!26043 (transformation!3609 rule!559)) e!1165626)))

(declare-fun b!1823732 () Bool)

(assert (=> b!1823732 (= e!1165626 (equivClasses!1385 (toChars!5003 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 rule!559))))))

(assert (= (and d!558161 res!820276) b!1823732))

(declare-fun m!2252281 () Bool)

(assert (=> d!558161 m!2252281))

(declare-fun m!2252283 () Bool)

(assert (=> b!1823732 m!2252283))

(assert (=> b!1823354 d!558161))

(declare-fun b!1823743 () Bool)

(declare-fun e!1165629 () Bool)

(assert (=> b!1823743 (= e!1165629 tp_is_empty!8109)))

(declare-fun b!1823744 () Bool)

(declare-fun tp!515598 () Bool)

(declare-fun tp!515597 () Bool)

(assert (=> b!1823744 (= e!1165629 (and tp!515598 tp!515597))))

(declare-fun b!1823746 () Bool)

(declare-fun tp!515599 () Bool)

(declare-fun tp!515595 () Bool)

(assert (=> b!1823746 (= e!1165629 (and tp!515599 tp!515595))))

(assert (=> b!1823352 (= tp!515529 e!1165629)))

(declare-fun b!1823745 () Bool)

(declare-fun tp!515596 () Bool)

(assert (=> b!1823745 (= e!1165629 tp!515596)))

(assert (= (and b!1823352 ((_ is ElementMatch!4937) (regex!3609 (h!25412 rules!4538)))) b!1823743))

(assert (= (and b!1823352 ((_ is Concat!8637) (regex!3609 (h!25412 rules!4538)))) b!1823744))

(assert (= (and b!1823352 ((_ is Star!4937) (regex!3609 (h!25412 rules!4538)))) b!1823745))

(assert (= (and b!1823352 ((_ is Union!4937) (regex!3609 (h!25412 rules!4538)))) b!1823746))

(declare-fun b!1823751 () Bool)

(declare-fun e!1165632 () Bool)

(declare-fun tp!515602 () Bool)

(assert (=> b!1823751 (= e!1165632 (and tp_is_empty!8109 tp!515602))))

(assert (=> b!1823358 (= tp!515536 e!1165632)))

(assert (= (and b!1823358 ((_ is Cons!20010) (t!170021 suffix!1667))) b!1823751))

(declare-fun b!1823752 () Bool)

(declare-fun e!1165633 () Bool)

(declare-fun tp!515603 () Bool)

(assert (=> b!1823752 (= e!1165633 (and tp_is_empty!8109 tp!515603))))

(assert (=> b!1823367 (= tp!515530 e!1165633)))

(assert (= (and b!1823367 ((_ is Cons!20010) (originalCharacters!4417 token!556))) b!1823752))

(declare-fun b!1823753 () Bool)

(declare-fun e!1165634 () Bool)

(assert (=> b!1823753 (= e!1165634 tp_is_empty!8109)))

(declare-fun b!1823754 () Bool)

(declare-fun tp!515607 () Bool)

(declare-fun tp!515606 () Bool)

(assert (=> b!1823754 (= e!1165634 (and tp!515607 tp!515606))))

(declare-fun b!1823756 () Bool)

(declare-fun tp!515608 () Bool)

(declare-fun tp!515604 () Bool)

(assert (=> b!1823756 (= e!1165634 (and tp!515608 tp!515604))))

(assert (=> b!1823351 (= tp!515525 e!1165634)))

(declare-fun b!1823755 () Bool)

(declare-fun tp!515605 () Bool)

(assert (=> b!1823755 (= e!1165634 tp!515605)))

(assert (= (and b!1823351 ((_ is ElementMatch!4937) (regex!3609 (rule!5751 token!556)))) b!1823753))

(assert (= (and b!1823351 ((_ is Concat!8637) (regex!3609 (rule!5751 token!556)))) b!1823754))

(assert (= (and b!1823351 ((_ is Star!4937) (regex!3609 (rule!5751 token!556)))) b!1823755))

(assert (= (and b!1823351 ((_ is Union!4937) (regex!3609 (rule!5751 token!556)))) b!1823756))

(declare-fun b!1823767 () Bool)

(declare-fun b_free!50735 () Bool)

(declare-fun b_next!51439 () Bool)

(assert (=> b!1823767 (= b_free!50735 (not b_next!51439))))

(declare-fun t!170052 () Bool)

(declare-fun tb!111361 () Bool)

(assert (=> (and b!1823767 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 rule!559))) t!170052) tb!111361))

(declare-fun result!133876 () Bool)

(assert (= result!133876 result!133854))

(assert (=> d!558133 t!170052))

(declare-fun tp!515619 () Bool)

(declare-fun b_and!141529 () Bool)

(assert (=> b!1823767 (= tp!515619 (and (=> t!170052 result!133876) b_and!141529))))

(declare-fun b_free!50737 () Bool)

(declare-fun b_next!51441 () Bool)

(assert (=> b!1823767 (= b_free!50737 (not b_next!51441))))

(declare-fun t!170054 () Bool)

(declare-fun tb!111363 () Bool)

(assert (=> (and b!1823767 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) t!170054) tb!111363))

(declare-fun result!133878 () Bool)

(assert (= result!133878 result!133862))

(assert (=> d!558153 t!170054))

(assert (=> b!1823703 t!170054))

(declare-fun b_and!141531 () Bool)

(declare-fun tp!515617 () Bool)

(assert (=> b!1823767 (= tp!515617 (and (=> t!170054 result!133878) b_and!141531))))

(declare-fun e!1165643 () Bool)

(assert (=> b!1823767 (= e!1165643 (and tp!515619 tp!515617))))

(declare-fun e!1165644 () Bool)

(declare-fun b!1823766 () Bool)

(declare-fun tp!515620 () Bool)

(assert (=> b!1823766 (= e!1165644 (and tp!515620 (inv!26040 (tag!4023 (h!25412 (t!170022 rules!4538)))) (inv!26043 (transformation!3609 (h!25412 (t!170022 rules!4538)))) e!1165643))))

(declare-fun b!1823765 () Bool)

(declare-fun e!1165645 () Bool)

(declare-fun tp!515618 () Bool)

(assert (=> b!1823765 (= e!1165645 (and e!1165644 tp!515618))))

(assert (=> b!1823357 (= tp!515528 e!1165645)))

(assert (= b!1823766 b!1823767))

(assert (= b!1823765 b!1823766))

(assert (= (and b!1823357 ((_ is Cons!20011) (t!170022 rules!4538))) b!1823765))

(declare-fun m!2252285 () Bool)

(assert (=> b!1823766 m!2252285))

(declare-fun m!2252287 () Bool)

(assert (=> b!1823766 m!2252287))

(declare-fun b!1823768 () Bool)

(declare-fun e!1165647 () Bool)

(declare-fun tp!515621 () Bool)

(assert (=> b!1823768 (= e!1165647 (and tp_is_empty!8109 tp!515621))))

(assert (=> b!1823364 (= tp!515533 e!1165647)))

(assert (= (and b!1823364 ((_ is Cons!20010) (t!170021 input!3612))) b!1823768))

(declare-fun b!1823769 () Bool)

(declare-fun e!1165648 () Bool)

(assert (=> b!1823769 (= e!1165648 tp_is_empty!8109)))

(declare-fun b!1823770 () Bool)

(declare-fun tp!515625 () Bool)

(declare-fun tp!515624 () Bool)

(assert (=> b!1823770 (= e!1165648 (and tp!515625 tp!515624))))

(declare-fun b!1823772 () Bool)

(declare-fun tp!515626 () Bool)

(declare-fun tp!515622 () Bool)

(assert (=> b!1823772 (= e!1165648 (and tp!515626 tp!515622))))

(assert (=> b!1823354 (= tp!515527 e!1165648)))

(declare-fun b!1823771 () Bool)

(declare-fun tp!515623 () Bool)

(assert (=> b!1823771 (= e!1165648 tp!515623)))

(assert (= (and b!1823354 ((_ is ElementMatch!4937) (regex!3609 rule!559))) b!1823769))

(assert (= (and b!1823354 ((_ is Concat!8637) (regex!3609 rule!559))) b!1823770))

(assert (= (and b!1823354 ((_ is Star!4937) (regex!3609 rule!559))) b!1823771))

(assert (= (and b!1823354 ((_ is Union!4937) (regex!3609 rule!559))) b!1823772))

(declare-fun b_lambda!60211 () Bool)

(assert (= b_lambda!60209 (or (and b!1823361 b_free!50721 (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 (rule!5751 token!556))))) (and b!1823368 b_free!50725) (and b!1823356 b_free!50729 (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (rule!5751 token!556))))) (and b!1823767 b_free!50737 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toChars!5003 (transformation!3609 (rule!5751 token!556))))) b_lambda!60211)))

(declare-fun b_lambda!60213 () Bool)

(assert (= b_lambda!60205 (or (and b!1823361 b_free!50719 (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823368 b_free!50723 (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823356 b_free!50727) (and b!1823767 b_free!50735 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 rule!559)))) b_lambda!60213)))

(declare-fun b_lambda!60215 () Bool)

(assert (= b_lambda!60207 (or (and b!1823361 b_free!50721 (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 (rule!5751 token!556))))) (and b!1823368 b_free!50725) (and b!1823356 b_free!50729 (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (rule!5751 token!556))))) (and b!1823767 b_free!50737 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toChars!5003 (transformation!3609 (rule!5751 token!556))))) b_lambda!60215)))

(check-sat (not b_next!51423) (not b_next!51425) (not b_next!51433) (not b!1823692) (not b!1823752) (not b_next!51441) (not b!1823770) (not b!1823407) (not b!1823460) (not b!1823645) (not d!558161) (not b!1823730) (not b!1823691) (not b!1823470) (not b!1823754) (not b!1823675) (not b!1823772) (not b!1823732) (not d!558151) (not b!1823771) (not d!558095) b_and!141529 (not b!1823653) (not b!1823652) (not d!558141) (not b!1823704) (not b_next!51429) (not b!1823651) (not b_next!51439) (not b!1823755) (not d!558147) (not b!1823724) (not b!1823408) (not b!1823459) (not b!1823471) (not b!1823731) (not d!558093) (not b!1823725) (not b!1823703) (not b!1823466) (not d!558157) (not b_next!51431) (not b!1823745) (not b!1823671) (not d!558145) b_and!141531 (not bm!114383) (not b!1823727) (not b!1823766) (not b!1823666) b_and!141515 tp_is_empty!8109 (not tb!111355) (not b!1823647) (not b!1823468) (not b_next!51427) (not b!1823650) (not d!558135) (not b!1823728) b_and!141527 (not b!1823406) (not b!1823646) (not d!558129) (not b!1823698) (not d!558107) b_and!141513 b_and!141523 (not d!558081) (not b!1823674) (not b!1823648) (not b_lambda!60215) (not b!1823756) (not d!558153) (not bm!114374) (not b!1823729) (not b!1823723) (not b!1823765) b_and!141525 (not b!1823768) (not b!1823505) (not d!558139) (not d!558149) b_and!141511 (not b_lambda!60213) (not d!558155) (not b_lambda!60211) (not b!1823681) (not b!1823744) (not b!1823746) (not b!1823751) (not tb!111349))
(check-sat b_and!141529 (not b_next!51423) (not b_next!51429) (not b_next!51439) (not b_next!51425) (not b_next!51433) (not b_next!51431) b_and!141531 b_and!141515 b_and!141525 b_and!141511 (not b_next!51441) (not b_next!51427) b_and!141527 b_and!141513 b_and!141523)
(get-model)

(declare-fun d!558175 () Bool)

(assert (=> d!558175 true))

(declare-fun lt!708615 () Bool)

(assert (=> d!558175 (= lt!708615 (rulesValidInductive!1238 thiss!28068 rules!4538))))

(declare-fun lambda!71519 () Int)

(declare-fun forall!4314 (List!20081 Int) Bool)

(assert (=> d!558175 (= lt!708615 (forall!4314 rules!4538 lambda!71519))))

(assert (=> d!558175 (= (rulesValid!1371 thiss!28068 rules!4538) lt!708615)))

(declare-fun bs!407465 () Bool)

(assert (= bs!407465 d!558175))

(assert (=> bs!407465 m!2252275))

(declare-fun m!2252331 () Bool)

(assert (=> bs!407465 m!2252331))

(assert (=> d!558141 d!558175))

(declare-fun d!558181 () Bool)

(assert (=> d!558181 (= (get!6185 lt!708567) (v!25737 lt!708567))))

(assert (=> b!1823647 d!558181))

(declare-fun d!558183 () Bool)

(declare-fun lt!708616 () Int)

(assert (=> d!558183 (>= lt!708616 0)))

(declare-fun e!1165656 () Int)

(assert (=> d!558183 (= lt!708616 e!1165656)))

(declare-fun c!297513 () Bool)

(assert (=> d!558183 (= c!297513 ((_ is Nil!20010) (originalCharacters!4417 (_1!11157 (get!6185 lt!708567)))))))

(assert (=> d!558183 (= (size!15874 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567)))) lt!708616)))

(declare-fun b!1823789 () Bool)

(assert (=> b!1823789 (= e!1165656 0)))

(declare-fun b!1823790 () Bool)

(assert (=> b!1823790 (= e!1165656 (+ 1 (size!15874 (t!170021 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567)))))))))

(assert (= (and d!558183 c!297513) b!1823789))

(assert (= (and d!558183 (not c!297513)) b!1823790))

(declare-fun m!2252333 () Bool)

(assert (=> b!1823790 m!2252333))

(assert (=> b!1823647 d!558183))

(declare-fun d!558185 () Bool)

(assert (=> d!558185 true))

(declare-fun order!12985 () Int)

(declare-fun order!12987 () Int)

(declare-fun lambda!71522 () Int)

(declare-fun dynLambda!9946 (Int Int) Int)

(declare-fun dynLambda!9947 (Int Int) Int)

(assert (=> d!558185 (< (dynLambda!9946 order!12985 (toChars!5003 (transformation!3609 (rule!5751 token!556)))) (dynLambda!9947 order!12987 lambda!71522))))

(assert (=> d!558185 true))

(declare-fun order!12989 () Int)

(declare-fun dynLambda!9948 (Int Int) Int)

(assert (=> d!558185 (< (dynLambda!9948 order!12989 (toValue!5144 (transformation!3609 (rule!5751 token!556)))) (dynLambda!9947 order!12987 lambda!71522))))

(declare-fun Forall!929 (Int) Bool)

(assert (=> d!558185 (= (semiInverseModEq!1444 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 (rule!5751 token!556)))) (Forall!929 lambda!71522))))

(declare-fun bs!407466 () Bool)

(assert (= bs!407466 d!558185))

(declare-fun m!2252335 () Bool)

(assert (=> bs!407466 m!2252335))

(assert (=> d!558145 d!558185))

(declare-fun d!558187 () Bool)

(declare-fun c!297516 () Bool)

(assert (=> d!558187 (= c!297516 ((_ is Nil!20010) lt!708580))))

(declare-fun e!1165659 () (InoxSet C!10048))

(assert (=> d!558187 (= (content!2943 lt!708580) e!1165659)))

(declare-fun b!1823799 () Bool)

(assert (=> b!1823799 (= e!1165659 ((as const (Array C!10048 Bool)) false))))

(declare-fun b!1823800 () Bool)

(assert (=> b!1823800 (= e!1165659 ((_ map or) (store ((as const (Array C!10048 Bool)) false) (h!25411 lt!708580) true) (content!2943 (t!170021 lt!708580))))))

(assert (= (and d!558187 c!297516) b!1823799))

(assert (= (and d!558187 (not c!297516)) b!1823800))

(declare-fun m!2252337 () Bool)

(assert (=> b!1823800 m!2252337))

(declare-fun m!2252339 () Bool)

(assert (=> b!1823800 m!2252339))

(assert (=> d!558149 d!558187))

(declare-fun d!558189 () Bool)

(declare-fun c!297517 () Bool)

(assert (=> d!558189 (= c!297517 ((_ is Nil!20010) lt!708495))))

(declare-fun e!1165660 () (InoxSet C!10048))

(assert (=> d!558189 (= (content!2943 lt!708495) e!1165660)))

(declare-fun b!1823801 () Bool)

(assert (=> b!1823801 (= e!1165660 ((as const (Array C!10048 Bool)) false))))

(declare-fun b!1823802 () Bool)

(assert (=> b!1823802 (= e!1165660 ((_ map or) (store ((as const (Array C!10048 Bool)) false) (h!25411 lt!708495) true) (content!2943 (t!170021 lt!708495))))))

(assert (= (and d!558189 c!297517) b!1823801))

(assert (= (and d!558189 (not c!297517)) b!1823802))

(declare-fun m!2252341 () Bool)

(assert (=> b!1823802 m!2252341))

(declare-fun m!2252343 () Bool)

(assert (=> b!1823802 m!2252343))

(assert (=> d!558149 d!558189))

(declare-fun d!558191 () Bool)

(declare-fun c!297518 () Bool)

(assert (=> d!558191 (= c!297518 ((_ is Nil!20010) suffix!1667))))

(declare-fun e!1165661 () (InoxSet C!10048))

(assert (=> d!558191 (= (content!2943 suffix!1667) e!1165661)))

(declare-fun b!1823803 () Bool)

(assert (=> b!1823803 (= e!1165661 ((as const (Array C!10048 Bool)) false))))

(declare-fun b!1823804 () Bool)

(assert (=> b!1823804 (= e!1165661 ((_ map or) (store ((as const (Array C!10048 Bool)) false) (h!25411 suffix!1667) true) (content!2943 (t!170021 suffix!1667))))))

(assert (= (and d!558191 c!297518) b!1823803))

(assert (= (and d!558191 (not c!297518)) b!1823804))

(declare-fun m!2252345 () Bool)

(assert (=> b!1823804 m!2252345))

(declare-fun m!2252347 () Bool)

(assert (=> b!1823804 m!2252347))

(assert (=> d!558149 d!558191))

(declare-fun b!1823805 () Bool)

(declare-fun res!820291 () Bool)

(declare-fun e!1165664 () Bool)

(assert (=> b!1823805 (=> res!820291 e!1165664)))

(assert (=> b!1823805 (= res!820291 (not (isEmpty!12638 (tail!2711 (tail!2711 lt!708495)))))))

(declare-fun b!1823806 () Bool)

(declare-fun e!1165662 () Bool)

(assert (=> b!1823806 (= e!1165662 (nullable!1529 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495))))))

(declare-fun b!1823808 () Bool)

(declare-fun res!820289 () Bool)

(declare-fun e!1165668 () Bool)

(assert (=> b!1823808 (=> (not res!820289) (not e!1165668))))

(declare-fun call!114390 () Bool)

(assert (=> b!1823808 (= res!820289 (not call!114390))))

(declare-fun b!1823809 () Bool)

(declare-fun e!1165663 () Bool)

(assert (=> b!1823809 (= e!1165663 e!1165664)))

(declare-fun res!820290 () Bool)

(assert (=> b!1823809 (=> res!820290 e!1165664)))

(assert (=> b!1823809 (= res!820290 call!114390)))

(declare-fun b!1823810 () Bool)

(declare-fun e!1165667 () Bool)

(assert (=> b!1823810 (= e!1165667 e!1165663)))

(declare-fun res!820293 () Bool)

(assert (=> b!1823810 (=> (not res!820293) (not e!1165663))))

(declare-fun lt!708617 () Bool)

(assert (=> b!1823810 (= res!820293 (not lt!708617))))

(declare-fun b!1823811 () Bool)

(declare-fun res!820292 () Bool)

(assert (=> b!1823811 (=> res!820292 e!1165667)))

(assert (=> b!1823811 (= res!820292 e!1165668)))

(declare-fun res!820287 () Bool)

(assert (=> b!1823811 (=> (not res!820287) (not e!1165668))))

(assert (=> b!1823811 (= res!820287 lt!708617)))

(declare-fun b!1823812 () Bool)

(assert (=> b!1823812 (= e!1165668 (= (head!4252 (tail!2711 lt!708495)) (c!297455 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495)))))))

(declare-fun b!1823813 () Bool)

(declare-fun res!820288 () Bool)

(assert (=> b!1823813 (=> res!820288 e!1165667)))

(assert (=> b!1823813 (= res!820288 (not ((_ is ElementMatch!4937) (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495)))))))

(declare-fun e!1165666 () Bool)

(assert (=> b!1823813 (= e!1165666 e!1165667)))

(declare-fun bm!114385 () Bool)

(assert (=> bm!114385 (= call!114390 (isEmpty!12638 (tail!2711 lt!708495)))))

(declare-fun b!1823814 () Bool)

(declare-fun res!820294 () Bool)

(assert (=> b!1823814 (=> (not res!820294) (not e!1165668))))

(assert (=> b!1823814 (= res!820294 (isEmpty!12638 (tail!2711 (tail!2711 lt!708495))))))

(declare-fun d!558193 () Bool)

(declare-fun e!1165665 () Bool)

(assert (=> d!558193 e!1165665))

(declare-fun c!297520 () Bool)

(assert (=> d!558193 (= c!297520 ((_ is EmptyExpr!4937) (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495))))))

(assert (=> d!558193 (= lt!708617 e!1165662)))

(declare-fun c!297519 () Bool)

(assert (=> d!558193 (= c!297519 (isEmpty!12638 (tail!2711 lt!708495)))))

(assert (=> d!558193 (validRegex!2007 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495)))))

(assert (=> d!558193 (= (matchR!2402 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495)) (tail!2711 lt!708495)) lt!708617)))

(declare-fun b!1823807 () Bool)

(assert (=> b!1823807 (= e!1165665 e!1165666)))

(declare-fun c!297521 () Bool)

(assert (=> b!1823807 (= c!297521 ((_ is EmptyLang!4937) (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495))))))

(declare-fun b!1823815 () Bool)

(assert (=> b!1823815 (= e!1165665 (= lt!708617 call!114390))))

(declare-fun b!1823816 () Bool)

(assert (=> b!1823816 (= e!1165662 (matchR!2402 (derivativeStep!1294 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495)) (head!4252 (tail!2711 lt!708495))) (tail!2711 (tail!2711 lt!708495))))))

(declare-fun b!1823817 () Bool)

(assert (=> b!1823817 (= e!1165664 (not (= (head!4252 (tail!2711 lt!708495)) (c!297455 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495))))))))

(declare-fun b!1823818 () Bool)

(assert (=> b!1823818 (= e!1165666 (not lt!708617))))

(assert (= (and d!558193 c!297519) b!1823806))

(assert (= (and d!558193 (not c!297519)) b!1823816))

(assert (= (and d!558193 c!297520) b!1823815))

(assert (= (and d!558193 (not c!297520)) b!1823807))

(assert (= (and b!1823807 c!297521) b!1823818))

(assert (= (and b!1823807 (not c!297521)) b!1823813))

(assert (= (and b!1823813 (not res!820288)) b!1823811))

(assert (= (and b!1823811 res!820287) b!1823808))

(assert (= (and b!1823808 res!820289) b!1823814))

(assert (= (and b!1823814 res!820294) b!1823812))

(assert (= (and b!1823811 (not res!820292)) b!1823810))

(assert (= (and b!1823810 res!820293) b!1823809))

(assert (= (and b!1823809 (not res!820290)) b!1823805))

(assert (= (and b!1823805 (not res!820291)) b!1823817))

(assert (= (or b!1823815 b!1823808 b!1823809) bm!114385))

(assert (=> bm!114385 m!2252017))

(assert (=> bm!114385 m!2252019))

(assert (=> d!558193 m!2252017))

(assert (=> d!558193 m!2252019))

(assert (=> d!558193 m!2252023))

(declare-fun m!2252349 () Bool)

(assert (=> d!558193 m!2252349))

(assert (=> b!1823806 m!2252023))

(declare-fun m!2252351 () Bool)

(assert (=> b!1823806 m!2252351))

(assert (=> b!1823805 m!2252017))

(declare-fun m!2252353 () Bool)

(assert (=> b!1823805 m!2252353))

(assert (=> b!1823805 m!2252353))

(declare-fun m!2252355 () Bool)

(assert (=> b!1823805 m!2252355))

(assert (=> b!1823814 m!2252017))

(assert (=> b!1823814 m!2252353))

(assert (=> b!1823814 m!2252353))

(assert (=> b!1823814 m!2252355))

(assert (=> b!1823817 m!2252017))

(declare-fun m!2252357 () Bool)

(assert (=> b!1823817 m!2252357))

(assert (=> b!1823816 m!2252017))

(assert (=> b!1823816 m!2252357))

(assert (=> b!1823816 m!2252023))

(assert (=> b!1823816 m!2252357))

(declare-fun m!2252359 () Bool)

(assert (=> b!1823816 m!2252359))

(assert (=> b!1823816 m!2252017))

(assert (=> b!1823816 m!2252353))

(assert (=> b!1823816 m!2252359))

(assert (=> b!1823816 m!2252353))

(declare-fun m!2252361 () Bool)

(assert (=> b!1823816 m!2252361))

(assert (=> b!1823812 m!2252017))

(assert (=> b!1823812 m!2252357))

(assert (=> b!1823470 d!558193))

(declare-fun c!297533 () Bool)

(declare-fun bm!114394 () Bool)

(declare-fun call!114399 () Regex!4937)

(declare-fun c!297534 () Bool)

(assert (=> bm!114394 (= call!114399 (derivativeStep!1294 (ite c!297533 (regTwo!10387 (regex!3609 rule!559)) (ite c!297534 (reg!5266 (regex!3609 rule!559)) (regOne!10386 (regex!3609 rule!559)))) (head!4252 lt!708495)))))

(declare-fun b!1823839 () Bool)

(declare-fun c!297532 () Bool)

(assert (=> b!1823839 (= c!297532 (nullable!1529 (regOne!10386 (regex!3609 rule!559))))))

(declare-fun e!1165682 () Regex!4937)

(declare-fun e!1165679 () Regex!4937)

(assert (=> b!1823839 (= e!1165682 e!1165679)))

(declare-fun b!1823840 () Bool)

(declare-fun e!1165681 () Regex!4937)

(declare-fun call!114401 () Regex!4937)

(assert (=> b!1823840 (= e!1165681 (Union!4937 call!114401 call!114399))))

(declare-fun b!1823841 () Bool)

(assert (=> b!1823841 (= c!297533 ((_ is Union!4937) (regex!3609 rule!559)))))

(declare-fun e!1165683 () Regex!4937)

(assert (=> b!1823841 (= e!1165683 e!1165681)))

(declare-fun b!1823842 () Bool)

(declare-fun e!1165680 () Regex!4937)

(assert (=> b!1823842 (= e!1165680 EmptyLang!4937)))

(declare-fun b!1823843 () Bool)

(declare-fun call!114400 () Regex!4937)

(assert (=> b!1823843 (= e!1165679 (Union!4937 (Concat!8637 call!114400 (regTwo!10386 (regex!3609 rule!559))) EmptyLang!4937))))

(declare-fun bm!114395 () Bool)

(declare-fun call!114402 () Regex!4937)

(assert (=> bm!114395 (= call!114402 call!114399)))

(declare-fun bm!114396 () Bool)

(assert (=> bm!114396 (= call!114400 call!114402)))

(declare-fun b!1823844 () Bool)

(assert (=> b!1823844 (= e!1165679 (Union!4937 (Concat!8637 call!114400 (regTwo!10386 (regex!3609 rule!559))) call!114401))))

(declare-fun b!1823845 () Bool)

(assert (=> b!1823845 (= e!1165680 e!1165683)))

(declare-fun c!297536 () Bool)

(assert (=> b!1823845 (= c!297536 ((_ is ElementMatch!4937) (regex!3609 rule!559)))))

(declare-fun b!1823846 () Bool)

(assert (=> b!1823846 (= e!1165682 (Concat!8637 call!114402 (regex!3609 rule!559)))))

(declare-fun b!1823847 () Bool)

(assert (=> b!1823847 (= e!1165681 e!1165682)))

(assert (=> b!1823847 (= c!297534 ((_ is Star!4937) (regex!3609 rule!559)))))

(declare-fun d!558195 () Bool)

(declare-fun lt!708620 () Regex!4937)

(assert (=> d!558195 (validRegex!2007 lt!708620)))

(assert (=> d!558195 (= lt!708620 e!1165680)))

(declare-fun c!297535 () Bool)

(assert (=> d!558195 (= c!297535 (or ((_ is EmptyExpr!4937) (regex!3609 rule!559)) ((_ is EmptyLang!4937) (regex!3609 rule!559))))))

(assert (=> d!558195 (validRegex!2007 (regex!3609 rule!559))))

(assert (=> d!558195 (= (derivativeStep!1294 (regex!3609 rule!559) (head!4252 lt!708495)) lt!708620)))

(declare-fun bm!114397 () Bool)

(assert (=> bm!114397 (= call!114401 (derivativeStep!1294 (ite c!297533 (regOne!10387 (regex!3609 rule!559)) (regTwo!10386 (regex!3609 rule!559))) (head!4252 lt!708495)))))

(declare-fun b!1823848 () Bool)

(assert (=> b!1823848 (= e!1165683 (ite (= (head!4252 lt!708495) (c!297455 (regex!3609 rule!559))) EmptyExpr!4937 EmptyLang!4937))))

(assert (= (and d!558195 c!297535) b!1823842))

(assert (= (and d!558195 (not c!297535)) b!1823845))

(assert (= (and b!1823845 c!297536) b!1823848))

(assert (= (and b!1823845 (not c!297536)) b!1823841))

(assert (= (and b!1823841 c!297533) b!1823840))

(assert (= (and b!1823841 (not c!297533)) b!1823847))

(assert (= (and b!1823847 c!297534) b!1823846))

(assert (= (and b!1823847 (not c!297534)) b!1823839))

(assert (= (and b!1823839 c!297532) b!1823844))

(assert (= (and b!1823839 (not c!297532)) b!1823843))

(assert (= (or b!1823844 b!1823843) bm!114396))

(assert (= (or b!1823846 bm!114396) bm!114395))

(assert (= (or b!1823840 bm!114395) bm!114394))

(assert (= (or b!1823840 b!1823844) bm!114397))

(assert (=> bm!114394 m!2252021))

(declare-fun m!2252363 () Bool)

(assert (=> bm!114394 m!2252363))

(declare-fun m!2252365 () Bool)

(assert (=> b!1823839 m!2252365))

(declare-fun m!2252367 () Bool)

(assert (=> d!558195 m!2252367))

(assert (=> d!558195 m!2252013))

(assert (=> bm!114397 m!2252021))

(declare-fun m!2252369 () Bool)

(assert (=> bm!114397 m!2252369))

(assert (=> b!1823470 d!558195))

(declare-fun d!558197 () Bool)

(assert (=> d!558197 (= (head!4252 lt!708495) (h!25411 lt!708495))))

(assert (=> b!1823470 d!558197))

(declare-fun d!558199 () Bool)

(assert (=> d!558199 (= (tail!2711 lt!708495) (t!170021 lt!708495))))

(assert (=> b!1823470 d!558199))

(declare-fun d!558201 () Bool)

(declare-fun charsToBigInt!0 (List!20079 Int) Int)

(assert (=> d!558201 (= (inv!15 (value!112523 token!556)) (= (charsToBigInt!0 (text!26342 (value!112523 token!556)) 0) (value!112518 (value!112523 token!556))))))

(declare-fun bs!407467 () Bool)

(assert (= bs!407467 d!558201))

(declare-fun m!2252371 () Bool)

(assert (=> bs!407467 m!2252371))

(assert (=> b!1823407 d!558201))

(declare-fun bs!407468 () Bool)

(declare-fun d!558203 () Bool)

(assert (= bs!407468 (and d!558203 d!558185)))

(declare-fun lambda!71526 () Int)

(assert (=> bs!407468 (= (and (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 (rule!5751 token!556))))) (= lambda!71526 lambda!71522))))

(assert (=> d!558203 true))

(assert (=> d!558203 (< (dynLambda!9946 order!12985 (toChars!5003 (transformation!3609 (h!25412 rules!4538)))) (dynLambda!9947 order!12987 lambda!71526))))

(assert (=> d!558203 true))

(assert (=> d!558203 (< (dynLambda!9948 order!12989 (toValue!5144 (transformation!3609 (h!25412 rules!4538)))) (dynLambda!9947 order!12987 lambda!71526))))

(assert (=> d!558203 (= (semiInverseModEq!1444 (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 (h!25412 rules!4538)))) (Forall!929 lambda!71526))))

(declare-fun bs!407469 () Bool)

(assert (= bs!407469 d!558203))

(declare-fun m!2252373 () Bool)

(assert (=> bs!407469 m!2252373))

(assert (=> d!558139 d!558203))

(declare-fun b!1823854 () Bool)

(declare-fun res!820299 () Bool)

(declare-fun e!1165689 () Bool)

(assert (=> b!1823854 (=> res!820299 e!1165689)))

(assert (=> b!1823854 (= res!820299 (not (isEmpty!12638 (tail!2711 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))))

(declare-fun b!1823855 () Bool)

(declare-fun e!1165687 () Bool)

(assert (=> b!1823855 (= e!1165687 (nullable!1529 (regex!3609 rule!559)))))

(declare-fun b!1823857 () Bool)

(declare-fun res!820297 () Bool)

(declare-fun e!1165693 () Bool)

(assert (=> b!1823857 (=> (not res!820297) (not e!1165693))))

(declare-fun call!114403 () Bool)

(assert (=> b!1823857 (= res!820297 (not call!114403))))

(declare-fun b!1823858 () Bool)

(declare-fun e!1165688 () Bool)

(assert (=> b!1823858 (= e!1165688 e!1165689)))

(declare-fun res!820298 () Bool)

(assert (=> b!1823858 (=> res!820298 e!1165689)))

(assert (=> b!1823858 (= res!820298 call!114403)))

(declare-fun b!1823859 () Bool)

(declare-fun e!1165692 () Bool)

(assert (=> b!1823859 (= e!1165692 e!1165688)))

(declare-fun res!820301 () Bool)

(assert (=> b!1823859 (=> (not res!820301) (not e!1165688))))

(declare-fun lt!708622 () Bool)

(assert (=> b!1823859 (= res!820301 (not lt!708622))))

(declare-fun b!1823860 () Bool)

(declare-fun res!820300 () Bool)

(assert (=> b!1823860 (=> res!820300 e!1165692)))

(assert (=> b!1823860 (= res!820300 e!1165693)))

(declare-fun res!820295 () Bool)

(assert (=> b!1823860 (=> (not res!820295) (not e!1165693))))

(assert (=> b!1823860 (= res!820295 lt!708622)))

(declare-fun b!1823861 () Bool)

(assert (=> b!1823861 (= e!1165693 (= (head!4252 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))) (c!297455 (regex!3609 rule!559))))))

(declare-fun b!1823862 () Bool)

(declare-fun res!820296 () Bool)

(assert (=> b!1823862 (=> res!820296 e!1165692)))

(assert (=> b!1823862 (= res!820296 (not ((_ is ElementMatch!4937) (regex!3609 rule!559))))))

(declare-fun e!1165691 () Bool)

(assert (=> b!1823862 (= e!1165691 e!1165692)))

(declare-fun bm!114398 () Bool)

(assert (=> bm!114398 (= call!114403 (isEmpty!12638 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(declare-fun b!1823863 () Bool)

(declare-fun res!820302 () Bool)

(assert (=> b!1823863 (=> (not res!820302) (not e!1165693))))

(assert (=> b!1823863 (= res!820302 (isEmpty!12638 (tail!2711 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612))))))))

(declare-fun d!558205 () Bool)

(declare-fun e!1165690 () Bool)

(assert (=> d!558205 e!1165690))

(declare-fun c!297538 () Bool)

(assert (=> d!558205 (= c!297538 ((_ is EmptyExpr!4937) (regex!3609 rule!559)))))

(assert (=> d!558205 (= lt!708622 e!1165687)))

(declare-fun c!297537 () Bool)

(assert (=> d!558205 (= c!297537 (isEmpty!12638 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(assert (=> d!558205 (validRegex!2007 (regex!3609 rule!559))))

(assert (=> d!558205 (= (matchR!2402 (regex!3609 rule!559) (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))) lt!708622)))

(declare-fun b!1823856 () Bool)

(assert (=> b!1823856 (= e!1165690 e!1165691)))

(declare-fun c!297539 () Bool)

(assert (=> b!1823856 (= c!297539 ((_ is EmptyLang!4937) (regex!3609 rule!559)))))

(declare-fun b!1823864 () Bool)

(assert (=> b!1823864 (= e!1165690 (= lt!708622 call!114403))))

(declare-fun b!1823865 () Bool)

(assert (=> b!1823865 (= e!1165687 (matchR!2402 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612))))) (tail!2711 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612))))))))

(declare-fun b!1823866 () Bool)

(assert (=> b!1823866 (= e!1165689 (not (= (head!4252 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))) (c!297455 (regex!3609 rule!559)))))))

(declare-fun b!1823867 () Bool)

(assert (=> b!1823867 (= e!1165691 (not lt!708622))))

(assert (= (and d!558205 c!297537) b!1823855))

(assert (= (and d!558205 (not c!297537)) b!1823865))

(assert (= (and d!558205 c!297538) b!1823864))

(assert (= (and d!558205 (not c!297538)) b!1823856))

(assert (= (and b!1823856 c!297539) b!1823867))

(assert (= (and b!1823856 (not c!297539)) b!1823862))

(assert (= (and b!1823862 (not res!820296)) b!1823860))

(assert (= (and b!1823860 res!820295) b!1823857))

(assert (= (and b!1823857 res!820297) b!1823863))

(assert (= (and b!1823863 res!820302) b!1823861))

(assert (= (and b!1823860 (not res!820300)) b!1823859))

(assert (= (and b!1823859 res!820301) b!1823858))

(assert (= (and b!1823858 (not res!820298)) b!1823854))

(assert (= (and b!1823854 (not res!820299)) b!1823866))

(assert (= (or b!1823864 b!1823857 b!1823858) bm!114398))

(assert (=> bm!114398 m!2252183))

(assert (=> d!558205 m!2252183))

(assert (=> d!558205 m!2252013))

(assert (=> b!1823855 m!2252015))

(declare-fun m!2252379 () Bool)

(assert (=> b!1823854 m!2252379))

(assert (=> b!1823854 m!2252379))

(declare-fun m!2252381 () Bool)

(assert (=> b!1823854 m!2252381))

(assert (=> b!1823863 m!2252379))

(assert (=> b!1823863 m!2252379))

(assert (=> b!1823863 m!2252381))

(declare-fun m!2252383 () Bool)

(assert (=> b!1823866 m!2252383))

(assert (=> b!1823865 m!2252383))

(assert (=> b!1823865 m!2252383))

(declare-fun m!2252385 () Bool)

(assert (=> b!1823865 m!2252385))

(assert (=> b!1823865 m!2252379))

(assert (=> b!1823865 m!2252385))

(assert (=> b!1823865 m!2252379))

(declare-fun m!2252387 () Bool)

(assert (=> b!1823865 m!2252387))

(assert (=> b!1823861 m!2252383))

(assert (=> b!1823651 d!558205))

(declare-fun bm!114431 () Bool)

(declare-fun call!114441 () Bool)

(assert (=> bm!114431 (= call!114441 (nullable!1529 (regex!3609 rule!559)))))

(declare-fun bm!114432 () Bool)

(declare-fun call!114436 () Bool)

(assert (=> bm!114432 (= call!114436 (isPrefix!1819 input!3612 input!3612))))

(declare-fun b!1823927 () Bool)

(declare-fun e!1165730 () tuple2!19514)

(assert (=> b!1823927 (= e!1165730 (tuple2!19515 Nil!20010 input!3612))))

(declare-fun bm!114433 () Bool)

(declare-fun call!114442 () List!20080)

(assert (=> bm!114433 (= call!114442 (tail!2711 input!3612))))

(declare-fun b!1823928 () Bool)

(declare-fun e!1165733 () Bool)

(declare-fun lt!708761 () tuple2!19514)

(assert (=> b!1823928 (= e!1165733 (>= (size!15874 (_1!11159 lt!708761)) (size!15874 Nil!20010)))))

(declare-fun b!1823929 () Bool)

(declare-fun e!1165734 () Bool)

(assert (=> b!1823929 (= e!1165734 e!1165733)))

(declare-fun res!820311 () Bool)

(assert (=> b!1823929 (=> res!820311 e!1165733)))

(assert (=> b!1823929 (= res!820311 (isEmpty!12638 (_1!11159 lt!708761)))))

(declare-fun b!1823930 () Bool)

(declare-fun e!1165732 () tuple2!19514)

(assert (=> b!1823930 (= e!1165732 (tuple2!19515 Nil!20010 Nil!20010))))

(declare-fun b!1823931 () Bool)

(declare-fun c!297566 () Bool)

(assert (=> b!1823931 (= c!297566 call!114441)))

(declare-fun lt!708755 () Unit!34683)

(declare-fun lt!708742 () Unit!34683)

(assert (=> b!1823931 (= lt!708755 lt!708742)))

(assert (=> b!1823931 (= input!3612 Nil!20010)))

(declare-fun call!114437 () Unit!34683)

(assert (=> b!1823931 (= lt!708742 call!114437)))

(declare-fun lt!708737 () Unit!34683)

(declare-fun lt!708744 () Unit!34683)

(assert (=> b!1823931 (= lt!708737 lt!708744)))

(assert (=> b!1823931 call!114436))

(declare-fun call!114439 () Unit!34683)

(assert (=> b!1823931 (= lt!708744 call!114439)))

(declare-fun e!1165731 () tuple2!19514)

(assert (=> b!1823931 (= e!1165731 e!1165732)))

(declare-fun b!1823932 () Bool)

(declare-fun e!1165729 () Unit!34683)

(declare-fun Unit!34685 () Unit!34683)

(assert (=> b!1823932 (= e!1165729 Unit!34685)))

(declare-fun lt!708740 () Unit!34683)

(assert (=> b!1823932 (= lt!708740 call!114439)))

(assert (=> b!1823932 call!114436))

(declare-fun lt!708741 () Unit!34683)

(assert (=> b!1823932 (= lt!708741 lt!708740)))

(declare-fun lt!708757 () Unit!34683)

(assert (=> b!1823932 (= lt!708757 call!114437)))

(assert (=> b!1823932 (= input!3612 Nil!20010)))

(declare-fun lt!708743 () Unit!34683)

(assert (=> b!1823932 (= lt!708743 lt!708757)))

(assert (=> b!1823932 false))

(declare-fun bm!114434 () Bool)

(declare-fun call!114438 () C!10048)

(assert (=> bm!114434 (= call!114438 (head!4252 input!3612))))

(declare-fun b!1823933 () Bool)

(assert (=> b!1823933 (= e!1165730 e!1165731)))

(declare-fun c!297570 () Bool)

(assert (=> b!1823933 (= c!297570 (= (size!15874 Nil!20010) (size!15874 input!3612)))))

(declare-fun b!1823934 () Bool)

(declare-fun e!1165735 () tuple2!19514)

(declare-fun call!114440 () tuple2!19514)

(assert (=> b!1823934 (= e!1165735 call!114440)))

(declare-fun d!558207 () Bool)

(assert (=> d!558207 e!1165734))

(declare-fun res!820312 () Bool)

(assert (=> d!558207 (=> (not res!820312) (not e!1165734))))

(assert (=> d!558207 (= res!820312 (= (++!5433 (_1!11159 lt!708761) (_2!11159 lt!708761)) input!3612))))

(assert (=> d!558207 (= lt!708761 e!1165730)))

(declare-fun c!297565 () Bool)

(declare-fun lostCause!618 (Regex!4937) Bool)

(assert (=> d!558207 (= c!297565 (lostCause!618 (regex!3609 rule!559)))))

(declare-fun lt!708748 () Unit!34683)

(declare-fun Unit!34687 () Unit!34683)

(assert (=> d!558207 (= lt!708748 Unit!34687)))

(declare-fun getSuffix!967 (List!20080 List!20080) List!20080)

(assert (=> d!558207 (= (getSuffix!967 input!3612 Nil!20010) input!3612)))

(declare-fun lt!708738 () Unit!34683)

(declare-fun lt!708759 () Unit!34683)

(assert (=> d!558207 (= lt!708738 lt!708759)))

(declare-fun lt!708760 () List!20080)

(assert (=> d!558207 (= input!3612 lt!708760)))

(declare-fun lemmaSamePrefixThenSameSuffix!911 (List!20080 List!20080 List!20080 List!20080 List!20080) Unit!34683)

(assert (=> d!558207 (= lt!708759 (lemmaSamePrefixThenSameSuffix!911 Nil!20010 input!3612 Nil!20010 lt!708760 input!3612))))

(assert (=> d!558207 (= lt!708760 (getSuffix!967 input!3612 Nil!20010))))

(declare-fun lt!708758 () Unit!34683)

(declare-fun lt!708751 () Unit!34683)

(assert (=> d!558207 (= lt!708758 lt!708751)))

(assert (=> d!558207 (isPrefix!1819 Nil!20010 (++!5433 Nil!20010 input!3612))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1309 (List!20080 List!20080) Unit!34683)

(assert (=> d!558207 (= lt!708751 (lemmaConcatTwoListThenFirstIsPrefix!1309 Nil!20010 input!3612))))

(assert (=> d!558207 (validRegex!2007 (regex!3609 rule!559))))

(assert (=> d!558207 (= (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)) lt!708761)))

(declare-fun bm!114435 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!296 (List!20080 List!20080 List!20080) Unit!34683)

(assert (=> bm!114435 (= call!114437 (lemmaIsPrefixSameLengthThenSameList!296 input!3612 Nil!20010 input!3612))))

(declare-fun b!1823935 () Bool)

(declare-fun e!1165736 () tuple2!19514)

(assert (=> b!1823935 (= e!1165735 e!1165736)))

(declare-fun lt!708750 () tuple2!19514)

(assert (=> b!1823935 (= lt!708750 call!114440)))

(declare-fun c!297567 () Bool)

(assert (=> b!1823935 (= c!297567 (isEmpty!12638 (_1!11159 lt!708750)))))

(declare-fun b!1823936 () Bool)

(assert (=> b!1823936 (= e!1165736 lt!708750)))

(declare-fun b!1823937 () Bool)

(declare-fun Unit!34689 () Unit!34683)

(assert (=> b!1823937 (= e!1165729 Unit!34689)))

(declare-fun b!1823938 () Bool)

(declare-fun c!297568 () Bool)

(assert (=> b!1823938 (= c!297568 call!114441)))

(declare-fun lt!708736 () Unit!34683)

(declare-fun lt!708756 () Unit!34683)

(assert (=> b!1823938 (= lt!708736 lt!708756)))

(declare-fun lt!708746 () C!10048)

(declare-fun lt!708753 () List!20080)

(assert (=> b!1823938 (= (++!5433 (++!5433 Nil!20010 (Cons!20010 lt!708746 Nil!20010)) lt!708753) input!3612)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!464 (List!20080 C!10048 List!20080 List!20080) Unit!34683)

(assert (=> b!1823938 (= lt!708756 (lemmaMoveElementToOtherListKeepsConcatEq!464 Nil!20010 lt!708746 lt!708753 input!3612))))

(assert (=> b!1823938 (= lt!708753 (tail!2711 input!3612))))

(assert (=> b!1823938 (= lt!708746 (head!4252 input!3612))))

(declare-fun lt!708763 () Unit!34683)

(declare-fun lt!708752 () Unit!34683)

(assert (=> b!1823938 (= lt!708763 lt!708752)))

(assert (=> b!1823938 (isPrefix!1819 (++!5433 Nil!20010 (Cons!20010 (head!4252 (getSuffix!967 input!3612 Nil!20010)) Nil!20010)) input!3612)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!336 (List!20080 List!20080) Unit!34683)

(assert (=> b!1823938 (= lt!708752 (lemmaAddHeadSuffixToPrefixStillPrefix!336 Nil!20010 input!3612))))

(declare-fun lt!708749 () Unit!34683)

(declare-fun lt!708745 () Unit!34683)

(assert (=> b!1823938 (= lt!708749 lt!708745)))

(assert (=> b!1823938 (= lt!708745 (lemmaAddHeadSuffixToPrefixStillPrefix!336 Nil!20010 input!3612))))

(declare-fun lt!708762 () List!20080)

(assert (=> b!1823938 (= lt!708762 (++!5433 Nil!20010 (Cons!20010 (head!4252 input!3612) Nil!20010)))))

(declare-fun lt!708754 () Unit!34683)

(assert (=> b!1823938 (= lt!708754 e!1165729)))

(declare-fun c!297569 () Bool)

(assert (=> b!1823938 (= c!297569 (= (size!15874 Nil!20010) (size!15874 input!3612)))))

(declare-fun lt!708739 () Unit!34683)

(declare-fun lt!708747 () Unit!34683)

(assert (=> b!1823938 (= lt!708739 lt!708747)))

(assert (=> b!1823938 (<= (size!15874 Nil!20010) (size!15874 input!3612))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!139 (List!20080 List!20080) Unit!34683)

(assert (=> b!1823938 (= lt!708747 (lemmaIsPrefixThenSmallerEqSize!139 Nil!20010 input!3612))))

(assert (=> b!1823938 (= e!1165731 e!1165735)))

(declare-fun b!1823939 () Bool)

(assert (=> b!1823939 (= e!1165736 (tuple2!19515 Nil!20010 input!3612))))

(declare-fun call!114443 () Regex!4937)

(declare-fun bm!114436 () Bool)

(assert (=> bm!114436 (= call!114440 (findLongestMatchInner!503 call!114443 lt!708762 (+ (size!15874 Nil!20010) 1) call!114442 input!3612 (size!15874 input!3612)))))

(declare-fun bm!114437 () Bool)

(assert (=> bm!114437 (= call!114439 (lemmaIsPrefixRefl!1196 input!3612 input!3612))))

(declare-fun b!1823940 () Bool)

(assert (=> b!1823940 (= e!1165732 (tuple2!19515 Nil!20010 input!3612))))

(declare-fun bm!114438 () Bool)

(assert (=> bm!114438 (= call!114443 (derivativeStep!1294 (regex!3609 rule!559) call!114438))))

(assert (= (and d!558207 c!297565) b!1823927))

(assert (= (and d!558207 (not c!297565)) b!1823933))

(assert (= (and b!1823933 c!297570) b!1823931))

(assert (= (and b!1823933 (not c!297570)) b!1823938))

(assert (= (and b!1823931 c!297566) b!1823930))

(assert (= (and b!1823931 (not c!297566)) b!1823940))

(assert (= (and b!1823938 c!297569) b!1823932))

(assert (= (and b!1823938 (not c!297569)) b!1823937))

(assert (= (and b!1823938 c!297568) b!1823935))

(assert (= (and b!1823938 (not c!297568)) b!1823934))

(assert (= (and b!1823935 c!297567) b!1823939))

(assert (= (and b!1823935 (not c!297567)) b!1823936))

(assert (= (or b!1823935 b!1823934) bm!114434))

(assert (= (or b!1823935 b!1823934) bm!114433))

(assert (= (or b!1823935 b!1823934) bm!114438))

(assert (= (or b!1823935 b!1823934) bm!114436))

(assert (= (or b!1823931 b!1823938) bm!114431))

(assert (= (or b!1823931 b!1823932) bm!114435))

(assert (= (or b!1823931 b!1823932) bm!114437))

(assert (= (or b!1823931 b!1823932) bm!114432))

(assert (= (and d!558207 res!820312) b!1823929))

(assert (= (and b!1823929 (not res!820311)) b!1823928))

(assert (=> bm!114436 m!2252157))

(declare-fun m!2252403 () Bool)

(assert (=> bm!114436 m!2252403))

(assert (=> bm!114432 m!2252271))

(declare-fun m!2252405 () Bool)

(assert (=> bm!114433 m!2252405))

(declare-fun m!2252407 () Bool)

(assert (=> b!1823935 m!2252407))

(declare-fun m!2252409 () Bool)

(assert (=> b!1823928 m!2252409))

(assert (=> b!1823928 m!2252155))

(assert (=> bm!114437 m!2252273))

(declare-fun m!2252411 () Bool)

(assert (=> bm!114438 m!2252411))

(declare-fun m!2252413 () Bool)

(assert (=> bm!114435 m!2252413))

(declare-fun m!2252415 () Bool)

(assert (=> b!1823929 m!2252415))

(declare-fun m!2252417 () Bool)

(assert (=> bm!114434 m!2252417))

(declare-fun m!2252419 () Bool)

(assert (=> b!1823938 m!2252419))

(declare-fun m!2252421 () Bool)

(assert (=> b!1823938 m!2252421))

(assert (=> b!1823938 m!2252157))

(declare-fun m!2252423 () Bool)

(assert (=> b!1823938 m!2252423))

(declare-fun m!2252425 () Bool)

(assert (=> b!1823938 m!2252425))

(declare-fun m!2252427 () Bool)

(assert (=> b!1823938 m!2252427))

(assert (=> b!1823938 m!2252417))

(assert (=> b!1823938 m!2252155))

(declare-fun m!2252429 () Bool)

(assert (=> b!1823938 m!2252429))

(assert (=> b!1823938 m!2252405))

(declare-fun m!2252431 () Bool)

(assert (=> b!1823938 m!2252431))

(declare-fun m!2252433 () Bool)

(assert (=> b!1823938 m!2252433))

(assert (=> b!1823938 m!2252419))

(assert (=> b!1823938 m!2252427))

(declare-fun m!2252435 () Bool)

(assert (=> b!1823938 m!2252435))

(declare-fun m!2252437 () Bool)

(assert (=> b!1823938 m!2252437))

(assert (=> b!1823938 m!2252423))

(assert (=> d!558207 m!2252419))

(declare-fun m!2252439 () Bool)

(assert (=> d!558207 m!2252439))

(assert (=> d!558207 m!2252013))

(declare-fun m!2252441 () Bool)

(assert (=> d!558207 m!2252441))

(declare-fun m!2252443 () Bool)

(assert (=> d!558207 m!2252443))

(assert (=> d!558207 m!2252443))

(declare-fun m!2252445 () Bool)

(assert (=> d!558207 m!2252445))

(declare-fun m!2252447 () Bool)

(assert (=> d!558207 m!2252447))

(declare-fun m!2252449 () Bool)

(assert (=> d!558207 m!2252449))

(assert (=> bm!114431 m!2252015))

(assert (=> b!1823651 d!558207))

(declare-fun d!558219 () Bool)

(declare-fun lt!708792 () Int)

(assert (=> d!558219 (>= lt!708792 0)))

(declare-fun e!1165745 () Int)

(assert (=> d!558219 (= lt!708792 e!1165745)))

(declare-fun c!297577 () Bool)

(assert (=> d!558219 (= c!297577 ((_ is Nil!20010) Nil!20010))))

(assert (=> d!558219 (= (size!15874 Nil!20010) lt!708792)))

(declare-fun b!1823955 () Bool)

(assert (=> b!1823955 (= e!1165745 0)))

(declare-fun b!1823956 () Bool)

(assert (=> b!1823956 (= e!1165745 (+ 1 (size!15874 (t!170021 Nil!20010))))))

(assert (= (and d!558219 c!297577) b!1823955))

(assert (= (and d!558219 (not c!297577)) b!1823956))

(declare-fun m!2252451 () Bool)

(assert (=> b!1823956 m!2252451))

(assert (=> b!1823651 d!558219))

(declare-fun d!558221 () Bool)

(declare-fun lt!708793 () Int)

(assert (=> d!558221 (>= lt!708793 0)))

(declare-fun e!1165746 () Int)

(assert (=> d!558221 (= lt!708793 e!1165746)))

(declare-fun c!297578 () Bool)

(assert (=> d!558221 (= c!297578 ((_ is Nil!20010) input!3612))))

(assert (=> d!558221 (= (size!15874 input!3612) lt!708793)))

(declare-fun b!1823957 () Bool)

(assert (=> b!1823957 (= e!1165746 0)))

(declare-fun b!1823958 () Bool)

(assert (=> b!1823958 (= e!1165746 (+ 1 (size!15874 (t!170021 input!3612))))))

(assert (= (and d!558221 c!297578) b!1823957))

(assert (= (and d!558221 (not c!297578)) b!1823958))

(declare-fun m!2252453 () Bool)

(assert (=> b!1823958 m!2252453))

(assert (=> b!1823651 d!558221))

(declare-fun d!558223 () Bool)

(assert (=> d!558223 (= (isEmpty!12639 lt!708596) (not ((_ is Some!4188) lt!708596)))))

(assert (=> d!558157 d!558223))

(declare-fun d!558225 () Bool)

(declare-fun e!1165758 () Bool)

(assert (=> d!558225 e!1165758))

(declare-fun res!820325 () Bool)

(assert (=> d!558225 (=> res!820325 e!1165758)))

(declare-fun lt!708797 () Bool)

(assert (=> d!558225 (= res!820325 (not lt!708797))))

(declare-fun e!1165757 () Bool)

(assert (=> d!558225 (= lt!708797 e!1165757)))

(declare-fun res!820326 () Bool)

(assert (=> d!558225 (=> res!820326 e!1165757)))

(assert (=> d!558225 (= res!820326 ((_ is Nil!20010) input!3612))))

(assert (=> d!558225 (= (isPrefix!1819 input!3612 input!3612) lt!708797)))

(declare-fun b!1823975 () Bool)

(declare-fun e!1165759 () Bool)

(assert (=> b!1823975 (= e!1165757 e!1165759)))

(declare-fun res!820323 () Bool)

(assert (=> b!1823975 (=> (not res!820323) (not e!1165759))))

(assert (=> b!1823975 (= res!820323 (not ((_ is Nil!20010) input!3612)))))

(declare-fun b!1823976 () Bool)

(declare-fun res!820324 () Bool)

(assert (=> b!1823976 (=> (not res!820324) (not e!1165759))))

(assert (=> b!1823976 (= res!820324 (= (head!4252 input!3612) (head!4252 input!3612)))))

(declare-fun b!1823977 () Bool)

(assert (=> b!1823977 (= e!1165759 (isPrefix!1819 (tail!2711 input!3612) (tail!2711 input!3612)))))

(declare-fun b!1823978 () Bool)

(assert (=> b!1823978 (= e!1165758 (>= (size!15874 input!3612) (size!15874 input!3612)))))

(assert (= (and d!558225 (not res!820326)) b!1823975))

(assert (= (and b!1823975 res!820323) b!1823976))

(assert (= (and b!1823976 res!820324) b!1823977))

(assert (= (and d!558225 (not res!820325)) b!1823978))

(assert (=> b!1823976 m!2252417))

(assert (=> b!1823976 m!2252417))

(assert (=> b!1823977 m!2252405))

(assert (=> b!1823977 m!2252405))

(assert (=> b!1823977 m!2252405))

(assert (=> b!1823977 m!2252405))

(declare-fun m!2252509 () Bool)

(assert (=> b!1823977 m!2252509))

(assert (=> b!1823978 m!2252157))

(assert (=> b!1823978 m!2252157))

(assert (=> d!558157 d!558225))

(declare-fun d!558233 () Bool)

(assert (=> d!558233 (isPrefix!1819 input!3612 input!3612)))

(declare-fun lt!708802 () Unit!34683)

(declare-fun choose!11497 (List!20080 List!20080) Unit!34683)

(assert (=> d!558233 (= lt!708802 (choose!11497 input!3612 input!3612))))

(assert (=> d!558233 (= (lemmaIsPrefixRefl!1196 input!3612 input!3612) lt!708802)))

(declare-fun bs!407471 () Bool)

(assert (= bs!407471 d!558233))

(assert (=> bs!407471 m!2252271))

(declare-fun m!2252511 () Bool)

(assert (=> bs!407471 m!2252511))

(assert (=> d!558157 d!558233))

(declare-fun bs!407473 () Bool)

(declare-fun d!558235 () Bool)

(assert (= bs!407473 (and d!558235 d!558175)))

(declare-fun lambda!71532 () Int)

(assert (=> bs!407473 (= lambda!71532 lambda!71519)))

(assert (=> d!558235 true))

(declare-fun lt!708806 () Bool)

(assert (=> d!558235 (= lt!708806 (forall!4314 rules!4538 lambda!71532))))

(declare-fun e!1165770 () Bool)

(assert (=> d!558235 (= lt!708806 e!1165770)))

(declare-fun res!820332 () Bool)

(assert (=> d!558235 (=> res!820332 e!1165770)))

(assert (=> d!558235 (= res!820332 (not ((_ is Cons!20011) rules!4538)))))

(assert (=> d!558235 (= (rulesValidInductive!1238 thiss!28068 rules!4538) lt!708806)))

(declare-fun b!1823995 () Bool)

(declare-fun e!1165769 () Bool)

(assert (=> b!1823995 (= e!1165770 e!1165769)))

(declare-fun res!820331 () Bool)

(assert (=> b!1823995 (=> (not res!820331) (not e!1165769))))

(assert (=> b!1823995 (= res!820331 (ruleValid!1101 thiss!28068 (h!25412 rules!4538)))))

(declare-fun b!1823996 () Bool)

(assert (=> b!1823996 (= e!1165769 (rulesValidInductive!1238 thiss!28068 (t!170022 rules!4538)))))

(assert (= (and d!558235 (not res!820332)) b!1823995))

(assert (= (and b!1823995 res!820331) b!1823996))

(declare-fun m!2252527 () Bool)

(assert (=> d!558235 m!2252527))

(declare-fun m!2252529 () Bool)

(assert (=> b!1823995 m!2252529))

(declare-fun m!2252531 () Bool)

(assert (=> b!1823996 m!2252531))

(assert (=> d!558157 d!558235))

(declare-fun d!558245 () Bool)

(declare-fun res!820365 () Bool)

(declare-fun e!1165805 () Bool)

(assert (=> d!558245 (=> res!820365 e!1165805)))

(assert (=> d!558245 (= res!820365 ((_ is ElementMatch!4937) (regex!3609 rule!559)))))

(assert (=> d!558245 (= (validRegex!2007 (regex!3609 rule!559)) e!1165805)))

(declare-fun b!1824052 () Bool)

(declare-fun e!1165811 () Bool)

(declare-fun e!1165809 () Bool)

(assert (=> b!1824052 (= e!1165811 e!1165809)))

(declare-fun res!820363 () Bool)

(assert (=> b!1824052 (=> (not res!820363) (not e!1165809))))

(declare-fun call!114461 () Bool)

(assert (=> b!1824052 (= res!820363 call!114461)))

(declare-fun b!1824053 () Bool)

(declare-fun call!114462 () Bool)

(assert (=> b!1824053 (= e!1165809 call!114462)))

(declare-fun bm!114455 () Bool)

(declare-fun c!297602 () Bool)

(assert (=> bm!114455 (= call!114461 (validRegex!2007 (ite c!297602 (regOne!10387 (regex!3609 rule!559)) (regOne!10386 (regex!3609 rule!559)))))))

(declare-fun b!1824054 () Bool)

(declare-fun e!1165807 () Bool)

(declare-fun call!114460 () Bool)

(assert (=> b!1824054 (= e!1165807 call!114460)))

(declare-fun b!1824055 () Bool)

(declare-fun e!1165806 () Bool)

(declare-fun e!1165810 () Bool)

(assert (=> b!1824055 (= e!1165806 e!1165810)))

(assert (=> b!1824055 (= c!297602 ((_ is Union!4937) (regex!3609 rule!559)))))

(declare-fun b!1824056 () Bool)

(declare-fun res!820362 () Bool)

(assert (=> b!1824056 (=> res!820362 e!1165811)))

(assert (=> b!1824056 (= res!820362 (not ((_ is Concat!8637) (regex!3609 rule!559))))))

(assert (=> b!1824056 (= e!1165810 e!1165811)))

(declare-fun b!1824057 () Bool)

(declare-fun e!1165808 () Bool)

(assert (=> b!1824057 (= e!1165808 call!114462)))

(declare-fun b!1824058 () Bool)

(declare-fun res!820366 () Bool)

(assert (=> b!1824058 (=> (not res!820366) (not e!1165808))))

(assert (=> b!1824058 (= res!820366 call!114461)))

(assert (=> b!1824058 (= e!1165810 e!1165808)))

(declare-fun b!1824059 () Bool)

(assert (=> b!1824059 (= e!1165805 e!1165806)))

(declare-fun c!297601 () Bool)

(assert (=> b!1824059 (= c!297601 ((_ is Star!4937) (regex!3609 rule!559)))))

(declare-fun b!1824060 () Bool)

(assert (=> b!1824060 (= e!1165806 e!1165807)))

(declare-fun res!820364 () Bool)

(assert (=> b!1824060 (= res!820364 (not (nullable!1529 (reg!5266 (regex!3609 rule!559)))))))

(assert (=> b!1824060 (=> (not res!820364) (not e!1165807))))

(declare-fun bm!114456 () Bool)

(assert (=> bm!114456 (= call!114462 call!114460)))

(declare-fun bm!114457 () Bool)

(assert (=> bm!114457 (= call!114460 (validRegex!2007 (ite c!297601 (reg!5266 (regex!3609 rule!559)) (ite c!297602 (regTwo!10387 (regex!3609 rule!559)) (regTwo!10386 (regex!3609 rule!559))))))))

(assert (= (and d!558245 (not res!820365)) b!1824059))

(assert (= (and b!1824059 c!297601) b!1824060))

(assert (= (and b!1824059 (not c!297601)) b!1824055))

(assert (= (and b!1824060 res!820364) b!1824054))

(assert (= (and b!1824055 c!297602) b!1824058))

(assert (= (and b!1824055 (not c!297602)) b!1824056))

(assert (= (and b!1824058 res!820366) b!1824057))

(assert (= (and b!1824056 (not res!820362)) b!1824052))

(assert (= (and b!1824052 res!820363) b!1824053))

(assert (= (or b!1824057 b!1824053) bm!114456))

(assert (= (or b!1824058 b!1824052) bm!114455))

(assert (= (or b!1824054 bm!114456) bm!114457))

(declare-fun m!2252557 () Bool)

(assert (=> bm!114455 m!2252557))

(declare-fun m!2252559 () Bool)

(assert (=> b!1824060 m!2252559))

(declare-fun m!2252561 () Bool)

(assert (=> bm!114457 m!2252561))

(assert (=> d!558093 d!558245))

(declare-fun b!1824061 () Bool)

(declare-fun res!820371 () Bool)

(declare-fun e!1165814 () Bool)

(assert (=> b!1824061 (=> res!820371 e!1165814)))

(assert (=> b!1824061 (= res!820371 (not (isEmpty!12638 (tail!2711 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))))))))

(declare-fun b!1824062 () Bool)

(declare-fun e!1165812 () Bool)

(assert (=> b!1824062 (= e!1165812 (nullable!1529 (regex!3609 rule!559)))))

(declare-fun b!1824064 () Bool)

(declare-fun res!820369 () Bool)

(declare-fun e!1165818 () Bool)

(assert (=> b!1824064 (=> (not res!820369) (not e!1165818))))

(declare-fun call!114463 () Bool)

(assert (=> b!1824064 (= res!820369 (not call!114463))))

(declare-fun b!1824065 () Bool)

(declare-fun e!1165813 () Bool)

(assert (=> b!1824065 (= e!1165813 e!1165814)))

(declare-fun res!820370 () Bool)

(assert (=> b!1824065 (=> res!820370 e!1165814)))

(assert (=> b!1824065 (= res!820370 call!114463)))

(declare-fun b!1824066 () Bool)

(declare-fun e!1165817 () Bool)

(assert (=> b!1824066 (= e!1165817 e!1165813)))

(declare-fun res!820373 () Bool)

(assert (=> b!1824066 (=> (not res!820373) (not e!1165813))))

(declare-fun lt!708809 () Bool)

(assert (=> b!1824066 (= res!820373 (not lt!708809))))

(declare-fun b!1824067 () Bool)

(declare-fun res!820372 () Bool)

(assert (=> b!1824067 (=> res!820372 e!1165817)))

(assert (=> b!1824067 (= res!820372 e!1165818)))

(declare-fun res!820367 () Bool)

(assert (=> b!1824067 (=> (not res!820367) (not e!1165818))))

(assert (=> b!1824067 (= res!820367 lt!708809)))

(declare-fun b!1824068 () Bool)

(assert (=> b!1824068 (= e!1165818 (= (head!4252 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))) (c!297455 (regex!3609 rule!559))))))

(declare-fun b!1824069 () Bool)

(declare-fun res!820368 () Bool)

(assert (=> b!1824069 (=> res!820368 e!1165817)))

(assert (=> b!1824069 (= res!820368 (not ((_ is ElementMatch!4937) (regex!3609 rule!559))))))

(declare-fun e!1165816 () Bool)

(assert (=> b!1824069 (= e!1165816 e!1165817)))

(declare-fun bm!114458 () Bool)

(assert (=> bm!114458 (= call!114463 (isEmpty!12638 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))))))

(declare-fun b!1824070 () Bool)

(declare-fun res!820374 () Bool)

(assert (=> b!1824070 (=> (not res!820374) (not e!1165818))))

(assert (=> b!1824070 (= res!820374 (isEmpty!12638 (tail!2711 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567)))))))))

(declare-fun d!558253 () Bool)

(declare-fun e!1165815 () Bool)

(assert (=> d!558253 e!1165815))

(declare-fun c!297604 () Bool)

(assert (=> d!558253 (= c!297604 ((_ is EmptyExpr!4937) (regex!3609 rule!559)))))

(assert (=> d!558253 (= lt!708809 e!1165812)))

(declare-fun c!297603 () Bool)

(assert (=> d!558253 (= c!297603 (isEmpty!12638 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))))))

(assert (=> d!558253 (validRegex!2007 (regex!3609 rule!559))))

(assert (=> d!558253 (= (matchR!2402 (regex!3609 rule!559) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))) lt!708809)))

(declare-fun b!1824063 () Bool)

(assert (=> b!1824063 (= e!1165815 e!1165816)))

(declare-fun c!297605 () Bool)

(assert (=> b!1824063 (= c!297605 ((_ is EmptyLang!4937) (regex!3609 rule!559)))))

(declare-fun b!1824071 () Bool)

(assert (=> b!1824071 (= e!1165815 (= lt!708809 call!114463))))

(declare-fun b!1824072 () Bool)

(assert (=> b!1824072 (= e!1165812 (matchR!2402 (derivativeStep!1294 (regex!3609 rule!559) (head!4252 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567)))))) (tail!2711 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567)))))))))

(declare-fun b!1824073 () Bool)

(assert (=> b!1824073 (= e!1165814 (not (= (head!4252 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))) (c!297455 (regex!3609 rule!559)))))))

(declare-fun b!1824074 () Bool)

(assert (=> b!1824074 (= e!1165816 (not lt!708809))))

(assert (= (and d!558253 c!297603) b!1824062))

(assert (= (and d!558253 (not c!297603)) b!1824072))

(assert (= (and d!558253 c!297604) b!1824071))

(assert (= (and d!558253 (not c!297604)) b!1824063))

(assert (= (and b!1824063 c!297605) b!1824074))

(assert (= (and b!1824063 (not c!297605)) b!1824069))

(assert (= (and b!1824069 (not res!820368)) b!1824067))

(assert (= (and b!1824067 res!820367) b!1824064))

(assert (= (and b!1824064 res!820369) b!1824070))

(assert (= (and b!1824070 res!820374) b!1824068))

(assert (= (and b!1824067 (not res!820372)) b!1824066))

(assert (= (and b!1824066 res!820373) b!1824065))

(assert (= (and b!1824065 (not res!820370)) b!1824061))

(assert (= (and b!1824061 (not res!820371)) b!1824073))

(assert (= (or b!1824071 b!1824064 b!1824065) bm!114458))

(assert (=> bm!114458 m!2252167))

(declare-fun m!2252571 () Bool)

(assert (=> bm!114458 m!2252571))

(assert (=> d!558253 m!2252167))

(assert (=> d!558253 m!2252571))

(assert (=> d!558253 m!2252013))

(assert (=> b!1824062 m!2252015))

(assert (=> b!1824061 m!2252167))

(declare-fun m!2252575 () Bool)

(assert (=> b!1824061 m!2252575))

(assert (=> b!1824061 m!2252575))

(declare-fun m!2252577 () Bool)

(assert (=> b!1824061 m!2252577))

(assert (=> b!1824070 m!2252167))

(assert (=> b!1824070 m!2252575))

(assert (=> b!1824070 m!2252575))

(assert (=> b!1824070 m!2252577))

(assert (=> b!1824073 m!2252167))

(declare-fun m!2252581 () Bool)

(assert (=> b!1824073 m!2252581))

(assert (=> b!1824072 m!2252167))

(assert (=> b!1824072 m!2252581))

(assert (=> b!1824072 m!2252581))

(declare-fun m!2252585 () Bool)

(assert (=> b!1824072 m!2252585))

(assert (=> b!1824072 m!2252167))

(assert (=> b!1824072 m!2252575))

(assert (=> b!1824072 m!2252585))

(assert (=> b!1824072 m!2252575))

(declare-fun m!2252589 () Bool)

(assert (=> b!1824072 m!2252589))

(assert (=> b!1824068 m!2252167))

(assert (=> b!1824068 m!2252581))

(assert (=> b!1823653 d!558253))

(declare-fun d!558265 () Bool)

(assert (=> d!558265 (= (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567)))) (list!8131 (c!297454 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))))))

(declare-fun bs!407477 () Bool)

(assert (= bs!407477 d!558265))

(declare-fun m!2252591 () Bool)

(assert (=> bs!407477 m!2252591))

(assert (=> b!1823653 d!558265))

(declare-fun d!558267 () Bool)

(declare-fun lt!708811 () BalanceConc!13226)

(assert (=> d!558267 (= (list!8129 lt!708811) (originalCharacters!4417 (_1!11157 (get!6185 lt!708567))))))

(assert (=> d!558267 (= lt!708811 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567))))) (value!112523 (_1!11157 (get!6185 lt!708567)))))))

(assert (=> d!558267 (= (charsOf!2252 (_1!11157 (get!6185 lt!708567))) lt!708811)))

(declare-fun b_lambda!60225 () Bool)

(assert (=> (not b_lambda!60225) (not d!558267)))

(declare-fun t!170082 () Bool)

(declare-fun tb!111389 () Bool)

(assert (=> (and b!1823361 (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170082) tb!111389))

(declare-fun b!1824076 () Bool)

(declare-fun e!1165820 () Bool)

(declare-fun tp!515629 () Bool)

(assert (=> b!1824076 (= e!1165820 (and (inv!26047 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567))))) (value!112523 (_1!11157 (get!6185 lt!708567)))))) tp!515629))))

(declare-fun result!133904 () Bool)

(assert (=> tb!111389 (= result!133904 (and (inv!26048 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567))))) (value!112523 (_1!11157 (get!6185 lt!708567))))) e!1165820))))

(assert (= tb!111389 b!1824076))

(declare-fun m!2252593 () Bool)

(assert (=> b!1824076 m!2252593))

(declare-fun m!2252595 () Bool)

(assert (=> tb!111389 m!2252595))

(assert (=> d!558267 t!170082))

(declare-fun b_and!141565 () Bool)

(assert (= b_and!141523 (and (=> t!170082 result!133904) b_and!141565)))

(declare-fun tb!111391 () Bool)

(declare-fun t!170085 () Bool)

(assert (=> (and b!1823368 (= (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170085) tb!111391))

(declare-fun result!133906 () Bool)

(assert (= result!133906 result!133904))

(assert (=> d!558267 t!170085))

(declare-fun b_and!141567 () Bool)

(assert (= b_and!141525 (and (=> t!170085 result!133906) b_and!141567)))

(declare-fun t!170087 () Bool)

(declare-fun tb!111393 () Bool)

(assert (=> (and b!1823356 (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170087) tb!111393))

(declare-fun result!133908 () Bool)

(assert (= result!133908 result!133904))

(assert (=> d!558267 t!170087))

(declare-fun b_and!141569 () Bool)

(assert (= b_and!141527 (and (=> t!170087 result!133908) b_and!141569)))

(declare-fun tb!111395 () Bool)

(declare-fun t!170089 () Bool)

(assert (=> (and b!1823767 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170089) tb!111395))

(declare-fun result!133910 () Bool)

(assert (= result!133910 result!133904))

(assert (=> d!558267 t!170089))

(declare-fun b_and!141571 () Bool)

(assert (= b_and!141531 (and (=> t!170089 result!133910) b_and!141571)))

(declare-fun m!2252597 () Bool)

(assert (=> d!558267 m!2252597))

(declare-fun m!2252599 () Bool)

(assert (=> d!558267 m!2252599))

(assert (=> b!1823653 d!558267))

(assert (=> b!1823653 d!558181))

(assert (=> d!558129 d!558107))

(declare-fun d!558269 () Bool)

(assert (=> d!558269 (= (maxPrefixOneRule!1151 thiss!28068 rule!559 input!3612) (Some!4188 (tuple2!19511 (Token!6773 (apply!5401 (transformation!3609 rule!559) (seqFromList!2570 lt!708495)) rule!559 (size!15874 lt!708495) lt!708495) suffix!1667)))))

(assert (=> d!558269 true))

(declare-fun _$59!302 () Unit!34683)

(assert (=> d!558269 (= (choose!11495 thiss!28068 rules!4538 lt!708495 input!3612 suffix!1667 rule!559) _$59!302)))

(declare-fun bs!407480 () Bool)

(assert (= bs!407480 d!558269))

(assert (=> bs!407480 m!2251929))

(assert (=> bs!407480 m!2251927))

(assert (=> bs!407480 m!2251927))

(assert (=> bs!407480 m!2251931))

(assert (=> bs!407480 m!2251933))

(assert (=> d!558129 d!558269))

(assert (=> d!558129 d!558131))

(assert (=> d!558129 d!558101))

(assert (=> d!558129 d!558133))

(assert (=> d!558129 d!558135))

(declare-fun d!558295 () Bool)

(declare-fun isBalanced!2063 (Conc!6641) Bool)

(assert (=> d!558295 (= (inv!26048 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))) (isBalanced!2063 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))))))

(declare-fun bs!407481 () Bool)

(assert (= bs!407481 d!558295))

(declare-fun m!2252645 () Bool)

(assert (=> bs!407481 m!2252645))

(assert (=> tb!111355 d!558295))

(declare-fun d!558297 () Bool)

(assert (=> d!558297 (= (get!6185 lt!708596) (v!25737 lt!708596))))

(assert (=> b!1823724 d!558297))

(declare-fun d!558299 () Bool)

(assert (=> d!558299 (= (apply!5401 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708596))))) (dynLambda!9944 (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708596))))))))

(declare-fun b_lambda!60229 () Bool)

(assert (=> (not b_lambda!60229) (not d!558299)))

(declare-fun t!170099 () Bool)

(declare-fun tb!111405 () Bool)

(assert (=> (and b!1823361 (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170099) tb!111405))

(declare-fun result!133920 () Bool)

(assert (=> tb!111405 (= result!133920 (inv!21 (dynLambda!9944 (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708596)))))))))

(declare-fun m!2252647 () Bool)

(assert (=> tb!111405 m!2252647))

(assert (=> d!558299 t!170099))

(declare-fun b_and!141581 () Bool)

(assert (= b_and!141511 (and (=> t!170099 result!133920) b_and!141581)))

(declare-fun t!170101 () Bool)

(declare-fun tb!111407 () Bool)

(assert (=> (and b!1823368 (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170101) tb!111407))

(declare-fun result!133922 () Bool)

(assert (= result!133922 result!133920))

(assert (=> d!558299 t!170101))

(declare-fun b_and!141583 () Bool)

(assert (= b_and!141513 (and (=> t!170101 result!133922) b_and!141583)))

(declare-fun tb!111409 () Bool)

(declare-fun t!170103 () Bool)

(assert (=> (and b!1823356 (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170103) tb!111409))

(declare-fun result!133924 () Bool)

(assert (= result!133924 result!133920))

(assert (=> d!558299 t!170103))

(declare-fun b_and!141585 () Bool)

(assert (= b_and!141515 (and (=> t!170103 result!133924) b_and!141585)))

(declare-fun tb!111411 () Bool)

(declare-fun t!170105 () Bool)

(assert (=> (and b!1823767 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170105) tb!111411))

(declare-fun result!133926 () Bool)

(assert (= result!133926 result!133920))

(assert (=> d!558299 t!170105))

(declare-fun b_and!141587 () Bool)

(assert (= b_and!141529 (and (=> t!170105 result!133926) b_and!141587)))

(assert (=> d!558299 m!2252261))

(declare-fun m!2252651 () Bool)

(assert (=> d!558299 m!2252651))

(assert (=> b!1823724 d!558299))

(declare-fun d!558303 () Bool)

(assert (=> d!558303 (= (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708596)))) (fromListB!1174 (originalCharacters!4417 (_1!11157 (get!6185 lt!708596)))))))

(declare-fun bs!407483 () Bool)

(assert (= bs!407483 d!558303))

(declare-fun m!2252653 () Bool)

(assert (=> bs!407483 m!2252653))

(assert (=> b!1823724 d!558303))

(declare-fun d!558305 () Bool)

(assert (=> d!558305 (= (list!8129 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))) (list!8131 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))))))

(declare-fun bs!407484 () Bool)

(assert (= bs!407484 d!558305))

(declare-fun m!2252655 () Bool)

(assert (=> bs!407484 m!2252655))

(assert (=> b!1823703 d!558305))

(assert (=> d!558095 d!558093))

(declare-fun d!558307 () Bool)

(assert (=> d!558307 (ruleValid!1101 thiss!28068 rule!559)))

(assert (=> d!558307 true))

(declare-fun _$65!974 () Unit!34683)

(assert (=> d!558307 (= (choose!11494 thiss!28068 rule!559 rules!4538) _$65!974)))

(declare-fun bs!407485 () Bool)

(assert (= bs!407485 d!558307))

(assert (=> bs!407485 m!2251943))

(assert (=> d!558095 d!558307))

(assert (=> d!558095 d!558147))

(declare-fun d!558309 () Bool)

(assert (=> d!558309 (= (isEmpty!12639 lt!708567) (not ((_ is Some!4188) lt!708567)))))

(assert (=> d!558107 d!558309))

(declare-fun d!558311 () Bool)

(assert (=> d!558311 (= (isEmpty!12638 (_1!11159 lt!708565)) ((_ is Nil!20010) (_1!11159 lt!708565)))))

(assert (=> d!558107 d!558311))

(declare-fun d!558313 () Bool)

(declare-fun lt!708842 () tuple2!19514)

(assert (=> d!558313 (= (++!5433 (_1!11159 lt!708842) (_2!11159 lt!708842)) input!3612)))

(declare-fun sizeTr!67 (List!20080 Int) Int)

(assert (=> d!558313 (= lt!708842 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 0 input!3612 input!3612 (sizeTr!67 input!3612 0)))))

(declare-fun lt!708843 () Unit!34683)

(declare-fun lt!708841 () Unit!34683)

(assert (=> d!558313 (= lt!708843 lt!708841)))

(declare-fun lt!708846 () List!20080)

(declare-fun lt!708845 () Int)

(assert (=> d!558313 (= (sizeTr!67 lt!708846 lt!708845) (+ (size!15874 lt!708846) lt!708845))))

(declare-fun lemmaSizeTrEqualsSize!67 (List!20080 Int) Unit!34683)

(assert (=> d!558313 (= lt!708841 (lemmaSizeTrEqualsSize!67 lt!708846 lt!708845))))

(assert (=> d!558313 (= lt!708845 0)))

(assert (=> d!558313 (= lt!708846 Nil!20010)))

(declare-fun lt!708848 () Unit!34683)

(declare-fun lt!708844 () Unit!34683)

(assert (=> d!558313 (= lt!708848 lt!708844)))

(declare-fun lt!708847 () Int)

(assert (=> d!558313 (= (sizeTr!67 input!3612 lt!708847) (+ (size!15874 input!3612) lt!708847))))

(assert (=> d!558313 (= lt!708844 (lemmaSizeTrEqualsSize!67 input!3612 lt!708847))))

(assert (=> d!558313 (= lt!708847 0)))

(assert (=> d!558313 (validRegex!2007 (regex!3609 rule!559))))

(assert (=> d!558313 (= (findLongestMatch!430 (regex!3609 rule!559) input!3612) lt!708842)))

(declare-fun bs!407488 () Bool)

(assert (= bs!407488 d!558313))

(declare-fun m!2252707 () Bool)

(assert (=> bs!407488 m!2252707))

(assert (=> bs!407488 m!2252707))

(declare-fun m!2252709 () Bool)

(assert (=> bs!407488 m!2252709))

(assert (=> bs!407488 m!2252013))

(declare-fun m!2252711 () Bool)

(assert (=> bs!407488 m!2252711))

(declare-fun m!2252713 () Bool)

(assert (=> bs!407488 m!2252713))

(declare-fun m!2252715 () Bool)

(assert (=> bs!407488 m!2252715))

(assert (=> bs!407488 m!2252157))

(declare-fun m!2252717 () Bool)

(assert (=> bs!407488 m!2252717))

(declare-fun m!2252719 () Bool)

(assert (=> bs!407488 m!2252719))

(declare-fun m!2252721 () Bool)

(assert (=> bs!407488 m!2252721))

(assert (=> d!558107 d!558313))

(assert (=> d!558107 d!558093))

(declare-fun d!558325 () Bool)

(assert (=> d!558325 (= (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))) (list!8131 (c!297454 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))))))

(declare-fun bs!407489 () Bool)

(assert (= bs!407489 d!558325))

(declare-fun m!2252723 () Bool)

(assert (=> bs!407489 m!2252723))

(assert (=> b!1823725 d!558325))

(declare-fun d!558327 () Bool)

(declare-fun lt!708849 () BalanceConc!13226)

(assert (=> d!558327 (= (list!8129 lt!708849) (originalCharacters!4417 (_1!11157 (get!6185 lt!708596))))))

(assert (=> d!558327 (= lt!708849 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))) (value!112523 (_1!11157 (get!6185 lt!708596)))))))

(assert (=> d!558327 (= (charsOf!2252 (_1!11157 (get!6185 lt!708596))) lt!708849)))

(declare-fun b_lambda!60231 () Bool)

(assert (=> (not b_lambda!60231) (not d!558327)))

(declare-fun tb!111413 () Bool)

(declare-fun t!170107 () Bool)

(assert (=> (and b!1823361 (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170107) tb!111413))

(declare-fun b!1824145 () Bool)

(declare-fun e!1165864 () Bool)

(declare-fun tp!515631 () Bool)

(assert (=> b!1824145 (= e!1165864 (and (inv!26047 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))) (value!112523 (_1!11157 (get!6185 lt!708596)))))) tp!515631))))

(declare-fun result!133928 () Bool)

(assert (=> tb!111413 (= result!133928 (and (inv!26048 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))) (value!112523 (_1!11157 (get!6185 lt!708596))))) e!1165864))))

(assert (= tb!111413 b!1824145))

(declare-fun m!2252725 () Bool)

(assert (=> b!1824145 m!2252725))

(declare-fun m!2252727 () Bool)

(assert (=> tb!111413 m!2252727))

(assert (=> d!558327 t!170107))

(declare-fun b_and!141589 () Bool)

(assert (= b_and!141565 (and (=> t!170107 result!133928) b_and!141589)))

(declare-fun t!170109 () Bool)

(declare-fun tb!111415 () Bool)

(assert (=> (and b!1823368 (= (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170109) tb!111415))

(declare-fun result!133930 () Bool)

(assert (= result!133930 result!133928))

(assert (=> d!558327 t!170109))

(declare-fun b_and!141591 () Bool)

(assert (= b_and!141567 (and (=> t!170109 result!133930) b_and!141591)))

(declare-fun tb!111417 () Bool)

(declare-fun t!170111 () Bool)

(assert (=> (and b!1823356 (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170111) tb!111417))

(declare-fun result!133932 () Bool)

(assert (= result!133932 result!133928))

(assert (=> d!558327 t!170111))

(declare-fun b_and!141593 () Bool)

(assert (= b_and!141569 (and (=> t!170111 result!133932) b_and!141593)))

(declare-fun tb!111419 () Bool)

(declare-fun t!170113 () Bool)

(assert (=> (and b!1823767 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170113) tb!111419))

(declare-fun result!133934 () Bool)

(assert (= result!133934 result!133928))

(assert (=> d!558327 t!170113))

(declare-fun b_and!141595 () Bool)

(assert (= b_and!141571 (and (=> t!170113 result!133934) b_and!141595)))

(declare-fun m!2252729 () Bool)

(assert (=> d!558327 m!2252729))

(declare-fun m!2252731 () Bool)

(assert (=> d!558327 m!2252731))

(assert (=> b!1823725 d!558327))

(assert (=> b!1823725 d!558297))

(declare-fun d!558329 () Bool)

(declare-fun lt!708850 () Int)

(assert (=> d!558329 (>= lt!708850 0)))

(declare-fun e!1165865 () Int)

(assert (=> d!558329 (= lt!708850 e!1165865)))

(declare-fun c!297622 () Bool)

(assert (=> d!558329 (= c!297622 ((_ is Nil!20010) (originalCharacters!4417 token!556)))))

(assert (=> d!558329 (= (size!15874 (originalCharacters!4417 token!556)) lt!708850)))

(declare-fun b!1824146 () Bool)

(assert (=> b!1824146 (= e!1165865 0)))

(declare-fun b!1824147 () Bool)

(assert (=> b!1824147 (= e!1165865 (+ 1 (size!15874 (t!170021 (originalCharacters!4417 token!556)))))))

(assert (= (and d!558329 c!297622) b!1824146))

(assert (= (and d!558329 (not c!297622)) b!1824147))

(declare-fun m!2252733 () Bool)

(assert (=> b!1824147 m!2252733))

(assert (=> b!1823704 d!558329))

(declare-fun d!558331 () Bool)

(declare-fun res!820415 () Bool)

(declare-fun e!1165877 () Bool)

(assert (=> d!558331 (=> res!820415 e!1165877)))

(assert (=> d!558331 (= res!820415 ((_ is Nil!20011) rules!4538))))

(assert (=> d!558331 (= (noDuplicateTag!1369 thiss!28068 rules!4538 Nil!20013) e!1165877)))

(declare-fun b!1824161 () Bool)

(declare-fun e!1165878 () Bool)

(assert (=> b!1824161 (= e!1165877 e!1165878)))

(declare-fun res!820416 () Bool)

(assert (=> b!1824161 (=> (not res!820416) (not e!1165878))))

(declare-fun contains!3666 (List!20083 String!22827) Bool)

(assert (=> b!1824161 (= res!820416 (not (contains!3666 Nil!20013 (tag!4023 (h!25412 rules!4538)))))))

(declare-fun b!1824162 () Bool)

(assert (=> b!1824162 (= e!1165878 (noDuplicateTag!1369 thiss!28068 (t!170022 rules!4538) (Cons!20013 (tag!4023 (h!25412 rules!4538)) Nil!20013)))))

(assert (= (and d!558331 (not res!820415)) b!1824161))

(assert (= (and b!1824161 res!820416) b!1824162))

(declare-fun m!2252741 () Bool)

(assert (=> b!1824161 m!2252741))

(declare-fun m!2252743 () Bool)

(assert (=> b!1824162 m!2252743))

(assert (=> b!1823674 d!558331))

(declare-fun d!558339 () Bool)

(assert (=> d!558339 (= (isDefined!3506 lt!708596) (not (isEmpty!12639 lt!708596)))))

(declare-fun bs!407491 () Bool)

(assert (= bs!407491 d!558339))

(assert (=> bs!407491 m!2252269))

(assert (=> b!1823727 d!558339))

(declare-fun d!558341 () Bool)

(declare-fun lt!708851 () Bool)

(assert (=> d!558341 (= lt!708851 (select (content!2942 (t!170022 rules!4538)) rule!559))))

(declare-fun e!1165880 () Bool)

(assert (=> d!558341 (= lt!708851 e!1165880)))

(declare-fun res!820418 () Bool)

(assert (=> d!558341 (=> (not res!820418) (not e!1165880))))

(assert (=> d!558341 (= res!820418 ((_ is Cons!20011) (t!170022 rules!4538)))))

(assert (=> d!558341 (= (contains!3665 (t!170022 rules!4538) rule!559) lt!708851)))

(declare-fun b!1824163 () Bool)

(declare-fun e!1165879 () Bool)

(assert (=> b!1824163 (= e!1165880 e!1165879)))

(declare-fun res!820417 () Bool)

(assert (=> b!1824163 (=> res!820417 e!1165879)))

(assert (=> b!1824163 (= res!820417 (= (h!25412 (t!170022 rules!4538)) rule!559))))

(declare-fun b!1824164 () Bool)

(assert (=> b!1824164 (= e!1165879 (contains!3665 (t!170022 (t!170022 rules!4538)) rule!559))))

(assert (= (and d!558341 res!820418) b!1824163))

(assert (= (and b!1824163 (not res!820417)) b!1824164))

(declare-fun m!2252747 () Bool)

(assert (=> d!558341 m!2252747))

(declare-fun m!2252749 () Bool)

(assert (=> d!558341 m!2252749))

(declare-fun m!2252751 () Bool)

(assert (=> b!1824164 m!2252751))

(assert (=> b!1823681 d!558341))

(declare-fun b!1824170 () Bool)

(declare-fun res!820421 () Bool)

(declare-fun e!1165887 () Bool)

(assert (=> b!1824170 (=> (not res!820421) (not e!1165887))))

(declare-fun lt!708855 () Option!4189)

(assert (=> b!1824170 (= res!820421 (= (rule!5751 (_1!11157 (get!6185 lt!708855))) (h!25412 rules!4538)))))

(declare-fun b!1824171 () Bool)

(declare-fun res!820424 () Bool)

(assert (=> b!1824171 (=> (not res!820424) (not e!1165887))))

(assert (=> b!1824171 (= res!820424 (= (++!5433 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708855)))) (_2!11157 (get!6185 lt!708855))) input!3612))))

(declare-fun b!1824172 () Bool)

(assert (=> b!1824172 (= e!1165887 (= (size!15873 (_1!11157 (get!6185 lt!708855))) (size!15874 (originalCharacters!4417 (_1!11157 (get!6185 lt!708855))))))))

(declare-fun b!1824173 () Bool)

(declare-fun res!820423 () Bool)

(assert (=> b!1824173 (=> (not res!820423) (not e!1165887))))

(assert (=> b!1824173 (= res!820423 (< (size!15874 (_2!11157 (get!6185 lt!708855))) (size!15874 input!3612)))))

(declare-fun b!1824174 () Bool)

(declare-fun e!1165886 () Option!4189)

(assert (=> b!1824174 (= e!1165886 None!4188)))

(declare-fun b!1824175 () Bool)

(declare-fun res!820420 () Bool)

(assert (=> b!1824175 (=> (not res!820420) (not e!1165887))))

(assert (=> b!1824175 (= res!820420 (= (value!112523 (_1!11157 (get!6185 lt!708855))) (apply!5401 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708855)))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708855)))))))))

(declare-fun b!1824176 () Bool)

(declare-fun e!1165884 () Bool)

(assert (=> b!1824176 (= e!1165884 (matchR!2402 (regex!3609 (h!25412 rules!4538)) (_1!11159 (findLongestMatchInner!503 (regex!3609 (h!25412 rules!4538)) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(declare-fun b!1824178 () Bool)

(declare-fun e!1165885 () Bool)

(assert (=> b!1824178 (= e!1165885 e!1165887)))

(declare-fun res!820426 () Bool)

(assert (=> b!1824178 (=> (not res!820426) (not e!1165887))))

(assert (=> b!1824178 (= res!820426 (matchR!2402 (regex!3609 (h!25412 rules!4538)) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708855))))))))

(declare-fun b!1824177 () Bool)

(declare-fun lt!708853 () tuple2!19514)

(assert (=> b!1824177 (= e!1165886 (Some!4188 (tuple2!19511 (Token!6773 (apply!5401 (transformation!3609 (h!25412 rules!4538)) (seqFromList!2570 (_1!11159 lt!708853))) (h!25412 rules!4538) (size!15876 (seqFromList!2570 (_1!11159 lt!708853))) (_1!11159 lt!708853)) (_2!11159 lt!708853))))))

(declare-fun lt!708854 () Unit!34683)

(assert (=> b!1824177 (= lt!708854 (longestMatchIsAcceptedByMatchOrIsEmpty!487 (regex!3609 (h!25412 rules!4538)) input!3612))))

(declare-fun res!820425 () Bool)

(assert (=> b!1824177 (= res!820425 (isEmpty!12638 (_1!11159 (findLongestMatchInner!503 (regex!3609 (h!25412 rules!4538)) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(assert (=> b!1824177 (=> res!820425 e!1165884)))

(assert (=> b!1824177 e!1165884))

(declare-fun lt!708856 () Unit!34683)

(assert (=> b!1824177 (= lt!708856 lt!708854)))

(declare-fun lt!708852 () Unit!34683)

(assert (=> b!1824177 (= lt!708852 (lemmaSemiInverse!717 (transformation!3609 (h!25412 rules!4538)) (seqFromList!2570 (_1!11159 lt!708853))))))

(declare-fun d!558345 () Bool)

(assert (=> d!558345 e!1165885))

(declare-fun res!820422 () Bool)

(assert (=> d!558345 (=> res!820422 e!1165885)))

(assert (=> d!558345 (= res!820422 (isEmpty!12639 lt!708855))))

(assert (=> d!558345 (= lt!708855 e!1165886)))

(declare-fun c!297627 () Bool)

(assert (=> d!558345 (= c!297627 (isEmpty!12638 (_1!11159 lt!708853)))))

(assert (=> d!558345 (= lt!708853 (findLongestMatch!430 (regex!3609 (h!25412 rules!4538)) input!3612))))

(assert (=> d!558345 (ruleValid!1101 thiss!28068 (h!25412 rules!4538))))

(assert (=> d!558345 (= (maxPrefixOneRule!1151 thiss!28068 (h!25412 rules!4538) input!3612) lt!708855)))

(assert (= (and d!558345 c!297627) b!1824174))

(assert (= (and d!558345 (not c!297627)) b!1824177))

(assert (= (and b!1824177 (not res!820425)) b!1824176))

(assert (= (and d!558345 (not res!820422)) b!1824178))

(assert (= (and b!1824178 res!820426) b!1824171))

(assert (= (and b!1824171 res!820424) b!1824173))

(assert (= (and b!1824173 res!820423) b!1824170))

(assert (= (and b!1824170 res!820421) b!1824175))

(assert (= (and b!1824175 res!820420) b!1824172))

(declare-fun m!2252775 () Bool)

(assert (=> b!1824175 m!2252775))

(declare-fun m!2252777 () Bool)

(assert (=> b!1824175 m!2252777))

(assert (=> b!1824175 m!2252777))

(declare-fun m!2252779 () Bool)

(assert (=> b!1824175 m!2252779))

(assert (=> b!1824176 m!2252155))

(assert (=> b!1824176 m!2252157))

(assert (=> b!1824176 m!2252155))

(assert (=> b!1824176 m!2252157))

(declare-fun m!2252781 () Bool)

(assert (=> b!1824176 m!2252781))

(declare-fun m!2252783 () Bool)

(assert (=> b!1824176 m!2252783))

(assert (=> b!1824173 m!2252775))

(declare-fun m!2252787 () Bool)

(assert (=> b!1824173 m!2252787))

(assert (=> b!1824173 m!2252157))

(assert (=> b!1824171 m!2252775))

(declare-fun m!2252791 () Bool)

(assert (=> b!1824171 m!2252791))

(assert (=> b!1824171 m!2252791))

(declare-fun m!2252793 () Bool)

(assert (=> b!1824171 m!2252793))

(assert (=> b!1824171 m!2252793))

(declare-fun m!2252795 () Bool)

(assert (=> b!1824171 m!2252795))

(assert (=> b!1824170 m!2252775))

(declare-fun m!2252797 () Bool)

(assert (=> d!558345 m!2252797))

(declare-fun m!2252799 () Bool)

(assert (=> d!558345 m!2252799))

(declare-fun m!2252803 () Bool)

(assert (=> d!558345 m!2252803))

(assert (=> d!558345 m!2252529))

(assert (=> b!1824172 m!2252775))

(declare-fun m!2252807 () Bool)

(assert (=> b!1824172 m!2252807))

(assert (=> b!1824178 m!2252775))

(assert (=> b!1824178 m!2252791))

(assert (=> b!1824178 m!2252791))

(assert (=> b!1824178 m!2252793))

(assert (=> b!1824178 m!2252793))

(declare-fun m!2252809 () Bool)

(assert (=> b!1824178 m!2252809))

(declare-fun m!2252811 () Bool)

(assert (=> b!1824177 m!2252811))

(assert (=> b!1824177 m!2252157))

(declare-fun m!2252813 () Bool)

(assert (=> b!1824177 m!2252813))

(assert (=> b!1824177 m!2252155))

(assert (=> b!1824177 m!2252811))

(declare-fun m!2252815 () Bool)

(assert (=> b!1824177 m!2252815))

(declare-fun m!2252817 () Bool)

(assert (=> b!1824177 m!2252817))

(assert (=> b!1824177 m!2252155))

(assert (=> b!1824177 m!2252157))

(assert (=> b!1824177 m!2252781))

(assert (=> b!1824177 m!2252811))

(declare-fun m!2252819 () Bool)

(assert (=> b!1824177 m!2252819))

(assert (=> b!1824177 m!2252811))

(declare-fun m!2252821 () Bool)

(assert (=> b!1824177 m!2252821))

(assert (=> bm!114383 d!558345))

(declare-fun d!558355 () Bool)

(declare-fun lt!708860 () Int)

(assert (=> d!558355 (>= lt!708860 0)))

(declare-fun e!1165899 () Int)

(assert (=> d!558355 (= lt!708860 e!1165899)))

(declare-fun c!297631 () Bool)

(assert (=> d!558355 (= c!297631 ((_ is Nil!20010) lt!708580))))

(assert (=> d!558355 (= (size!15874 lt!708580) lt!708860)))

(declare-fun b!1824197 () Bool)

(assert (=> b!1824197 (= e!1165899 0)))

(declare-fun b!1824198 () Bool)

(assert (=> b!1824198 (= e!1165899 (+ 1 (size!15874 (t!170021 lt!708580))))))

(assert (= (and d!558355 c!297631) b!1824197))

(assert (= (and d!558355 (not c!297631)) b!1824198))

(declare-fun m!2252823 () Bool)

(assert (=> b!1824198 m!2252823))

(assert (=> b!1823692 d!558355))

(assert (=> b!1823692 d!558131))

(declare-fun d!558357 () Bool)

(declare-fun lt!708861 () Int)

(assert (=> d!558357 (>= lt!708861 0)))

(declare-fun e!1165900 () Int)

(assert (=> d!558357 (= lt!708861 e!1165900)))

(declare-fun c!297632 () Bool)

(assert (=> d!558357 (= c!297632 ((_ is Nil!20010) suffix!1667))))

(assert (=> d!558357 (= (size!15874 suffix!1667) lt!708861)))

(declare-fun b!1824199 () Bool)

(assert (=> b!1824199 (= e!1165900 0)))

(declare-fun b!1824200 () Bool)

(assert (=> b!1824200 (= e!1165900 (+ 1 (size!15874 (t!170021 suffix!1667))))))

(assert (= (and d!558357 c!297632) b!1824199))

(assert (= (and d!558357 (not c!297632)) b!1824200))

(declare-fun m!2252825 () Bool)

(assert (=> b!1824200 m!2252825))

(assert (=> b!1823692 d!558357))

(declare-fun d!558359 () Bool)

(assert (=> d!558359 true))

(declare-fun lambda!71543 () Int)

(declare-fun order!12999 () Int)

(declare-fun dynLambda!9952 (Int Int) Int)

(assert (=> d!558359 (< (dynLambda!9948 order!12989 (toValue!5144 (transformation!3609 rule!559))) (dynLambda!9952 order!12999 lambda!71543))))

(declare-fun Forall2!568 (Int) Bool)

(assert (=> d!558359 (= (equivClasses!1385 (toChars!5003 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 rule!559))) (Forall2!568 lambda!71543))))

(declare-fun bs!407498 () Bool)

(assert (= bs!407498 d!558359))

(declare-fun m!2252835 () Bool)

(assert (=> bs!407498 m!2252835))

(assert (=> b!1823732 d!558359))

(declare-fun bs!407500 () Bool)

(declare-fun d!558369 () Bool)

(assert (= bs!407500 (and d!558369 d!558359)))

(declare-fun lambda!71544 () Int)

(assert (=> bs!407500 (= (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 rule!559))) (= lambda!71544 lambda!71543))))

(assert (=> d!558369 true))

(assert (=> d!558369 (< (dynLambda!9948 order!12989 (toValue!5144 (transformation!3609 (h!25412 rules!4538)))) (dynLambda!9952 order!12999 lambda!71544))))

(assert (=> d!558369 (= (equivClasses!1385 (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 (h!25412 rules!4538)))) (Forall2!568 lambda!71544))))

(declare-fun bs!407501 () Bool)

(assert (= bs!407501 d!558369))

(declare-fun m!2252841 () Bool)

(assert (=> bs!407501 m!2252841))

(assert (=> b!1823671 d!558369))

(declare-fun d!558375 () Bool)

(declare-fun lt!708863 () Int)

(assert (=> d!558375 (>= lt!708863 0)))

(declare-fun e!1165905 () Int)

(assert (=> d!558375 (= lt!708863 e!1165905)))

(declare-fun c!297634 () Bool)

(assert (=> d!558375 (= c!297634 ((_ is Nil!20010) (_2!11157 (get!6185 lt!708596))))))

(assert (=> d!558375 (= (size!15874 (_2!11157 (get!6185 lt!708596))) lt!708863)))

(declare-fun b!1824207 () Bool)

(assert (=> b!1824207 (= e!1165905 0)))

(declare-fun b!1824208 () Bool)

(assert (=> b!1824208 (= e!1165905 (+ 1 (size!15874 (t!170021 (_2!11157 (get!6185 lt!708596))))))))

(assert (= (and d!558375 c!297634) b!1824207))

(assert (= (and d!558375 (not c!297634)) b!1824208))

(declare-fun m!2252843 () Bool)

(assert (=> b!1824208 m!2252843))

(assert (=> b!1823730 d!558375))

(assert (=> b!1823730 d!558297))

(assert (=> b!1823730 d!558221))

(declare-fun d!558377 () Bool)

(assert (=> d!558377 (= (isEmpty!12638 (tail!2711 lt!708495)) ((_ is Nil!20010) (tail!2711 lt!708495)))))

(assert (=> b!1823468 d!558377))

(assert (=> b!1823468 d!558199))

(declare-fun b!1824209 () Bool)

(declare-fun res!820441 () Bool)

(declare-fun e!1165907 () Bool)

(assert (=> b!1824209 (=> res!820441 e!1165907)))

(assert (=> b!1824209 (= res!820441 (not ((_ is IntegerValue!11099) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495)))))))

(declare-fun e!1165908 () Bool)

(assert (=> b!1824209 (= e!1165908 e!1165907)))

(declare-fun b!1824210 () Bool)

(declare-fun e!1165906 () Bool)

(assert (=> b!1824210 (= e!1165906 e!1165908)))

(declare-fun c!297636 () Bool)

(assert (=> b!1824210 (= c!297636 ((_ is IntegerValue!11098) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495))))))

(declare-fun b!1824211 () Bool)

(assert (=> b!1824211 (= e!1165906 (inv!16 (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495))))))

(declare-fun b!1824212 () Bool)

(assert (=> b!1824212 (= e!1165907 (inv!15 (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495))))))

(declare-fun b!1824213 () Bool)

(assert (=> b!1824213 (= e!1165908 (inv!17 (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495))))))

(declare-fun d!558379 () Bool)

(declare-fun c!297635 () Bool)

(assert (=> d!558379 (= c!297635 ((_ is IntegerValue!11097) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495))))))

(assert (=> d!558379 (= (inv!21 (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 lt!708495))) e!1165906)))

(assert (= (and d!558379 c!297635) b!1824211))

(assert (= (and d!558379 (not c!297635)) b!1824210))

(assert (= (and b!1824210 c!297636) b!1824213))

(assert (= (and b!1824210 (not c!297636)) b!1824209))

(assert (= (and b!1824209 (not res!820441)) b!1824212))

(declare-fun m!2252845 () Bool)

(assert (=> b!1824211 m!2252845))

(declare-fun m!2252847 () Bool)

(assert (=> b!1824212 m!2252847))

(declare-fun m!2252849 () Bool)

(assert (=> b!1824213 m!2252849))

(assert (=> tb!111349 d!558379))

(declare-fun d!558381 () Bool)

(assert (=> d!558381 (= (isEmpty!12638 lt!708495) ((_ is Nil!20010) lt!708495))))

(assert (=> d!558081 d!558381))

(assert (=> d!558081 d!558245))

(assert (=> b!1823645 d!558181))

(assert (=> b!1823471 d!558197))

(declare-fun d!558383 () Bool)

(declare-fun lt!708864 () Int)

(assert (=> d!558383 (>= lt!708864 0)))

(declare-fun e!1165909 () Int)

(assert (=> d!558383 (= lt!708864 e!1165909)))

(declare-fun c!297637 () Bool)

(assert (=> d!558383 (= c!297637 ((_ is Nil!20010) (_2!11157 (get!6185 lt!708567))))))

(assert (=> d!558383 (= (size!15874 (_2!11157 (get!6185 lt!708567))) lt!708864)))

(declare-fun b!1824214 () Bool)

(assert (=> b!1824214 (= e!1165909 0)))

(declare-fun b!1824215 () Bool)

(assert (=> b!1824215 (= e!1165909 (+ 1 (size!15874 (t!170021 (_2!11157 (get!6185 lt!708567))))))))

(assert (= (and d!558383 c!297637) b!1824214))

(assert (= (and d!558383 (not c!297637)) b!1824215))

(declare-fun m!2252851 () Bool)

(assert (=> b!1824215 m!2252851))

(assert (=> b!1823648 d!558383))

(assert (=> b!1823648 d!558181))

(assert (=> b!1823648 d!558221))

(assert (=> b!1823650 d!558181))

(declare-fun d!558385 () Bool)

(assert (=> d!558385 (= (apply!5401 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567))))) (dynLambda!9944 (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567))))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567))))))))

(declare-fun b_lambda!60235 () Bool)

(assert (=> (not b_lambda!60235) (not d!558385)))

(declare-fun t!170123 () Bool)

(declare-fun tb!111429 () Bool)

(assert (=> (and b!1823361 (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170123) tb!111429))

(declare-fun result!133944 () Bool)

(assert (=> tb!111429 (= result!133944 (inv!21 (dynLambda!9944 (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567))))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567)))))))))

(declare-fun m!2252853 () Bool)

(assert (=> tb!111429 m!2252853))

(assert (=> d!558385 t!170123))

(declare-fun b_and!141605 () Bool)

(assert (= b_and!141581 (and (=> t!170123 result!133944) b_and!141605)))

(declare-fun tb!111431 () Bool)

(declare-fun t!170125 () Bool)

(assert (=> (and b!1823368 (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170125) tb!111431))

(declare-fun result!133946 () Bool)

(assert (= result!133946 result!133944))

(assert (=> d!558385 t!170125))

(declare-fun b_and!141607 () Bool)

(assert (= b_and!141583 (and (=> t!170125 result!133946) b_and!141607)))

(declare-fun tb!111433 () Bool)

(declare-fun t!170127 () Bool)

(assert (=> (and b!1823356 (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170127) tb!111433))

(declare-fun result!133948 () Bool)

(assert (= result!133948 result!133944))

(assert (=> d!558385 t!170127))

(declare-fun b_and!141609 () Bool)

(assert (= b_and!141585 (and (=> t!170127 result!133948) b_and!141609)))

(declare-fun t!170129 () Bool)

(declare-fun tb!111435 () Bool)

(assert (=> (and b!1823767 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170129) tb!111435))

(declare-fun result!133950 () Bool)

(assert (= result!133950 result!133944))

(assert (=> d!558385 t!170129))

(declare-fun b_and!141611 () Bool)

(assert (= b_and!141587 (and (=> t!170129 result!133950) b_and!141611)))

(assert (=> d!558385 m!2252151))

(declare-fun m!2252855 () Bool)

(assert (=> d!558385 m!2252855))

(assert (=> b!1823650 d!558385))

(declare-fun d!558387 () Bool)

(assert (=> d!558387 (= (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567)))) (fromListB!1174 (originalCharacters!4417 (_1!11157 (get!6185 lt!708567)))))))

(declare-fun bs!407502 () Bool)

(assert (= bs!407502 d!558387))

(declare-fun m!2252857 () Bool)

(assert (=> bs!407502 m!2252857))

(assert (=> b!1823650 d!558387))

(declare-fun bs!407503 () Bool)

(declare-fun d!558389 () Bool)

(assert (= bs!407503 (and d!558389 d!558359)))

(declare-fun lambda!71545 () Int)

(assert (=> bs!407503 (= (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 rule!559))) (= lambda!71545 lambda!71543))))

(declare-fun bs!407504 () Bool)

(assert (= bs!407504 (and d!558389 d!558369)))

(assert (=> bs!407504 (= (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 (h!25412 rules!4538)))) (= lambda!71545 lambda!71544))))

(assert (=> d!558389 true))

(assert (=> d!558389 (< (dynLambda!9948 order!12989 (toValue!5144 (transformation!3609 (rule!5751 token!556)))) (dynLambda!9952 order!12999 lambda!71545))))

(assert (=> d!558389 (= (equivClasses!1385 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 (rule!5751 token!556)))) (Forall2!568 lambda!71545))))

(declare-fun bs!407505 () Bool)

(assert (= bs!407505 d!558389))

(declare-fun m!2252859 () Bool)

(assert (=> bs!407505 m!2252859))

(assert (=> b!1823675 d!558389))

(declare-fun d!558391 () Bool)

(declare-fun charsToInt!0 (List!20079) (_ BitVec 32))

(assert (=> d!558391 (= (inv!16 (value!112523 token!556)) (= (charsToInt!0 (text!26340 (value!112523 token!556))) (value!112514 (value!112523 token!556))))))

(declare-fun bs!407506 () Bool)

(assert (= bs!407506 d!558391))

(declare-fun m!2252861 () Bool)

(assert (=> bs!407506 m!2252861))

(assert (=> b!1823406 d!558391))

(declare-fun d!558393 () Bool)

(declare-fun e!1165913 () Bool)

(assert (=> d!558393 e!1165913))

(declare-fun res!820444 () Bool)

(assert (=> d!558393 (=> res!820444 e!1165913)))

(assert (=> d!558393 (= res!820444 (isEmpty!12638 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(declare-fun lt!708867 () Unit!34683)

(declare-fun choose!11498 (Regex!4937 List!20080) Unit!34683)

(assert (=> d!558393 (= lt!708867 (choose!11498 (regex!3609 rule!559) input!3612))))

(assert (=> d!558393 (validRegex!2007 (regex!3609 rule!559))))

(assert (=> d!558393 (= (longestMatchIsAcceptedByMatchOrIsEmpty!487 (regex!3609 rule!559) input!3612) lt!708867)))

(declare-fun b!1824218 () Bool)

(assert (=> b!1824218 (= e!1165913 (matchR!2402 (regex!3609 rule!559) (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(assert (= (and d!558393 (not res!820444)) b!1824218))

(assert (=> d!558393 m!2252155))

(assert (=> d!558393 m!2252157))

(assert (=> d!558393 m!2252159))

(assert (=> d!558393 m!2252183))

(assert (=> d!558393 m!2252155))

(declare-fun m!2252863 () Bool)

(assert (=> d!558393 m!2252863))

(assert (=> d!558393 m!2252013))

(assert (=> d!558393 m!2252157))

(assert (=> b!1824218 m!2252155))

(assert (=> b!1824218 m!2252157))

(assert (=> b!1824218 m!2252155))

(assert (=> b!1824218 m!2252157))

(assert (=> b!1824218 m!2252159))

(assert (=> b!1824218 m!2252161))

(assert (=> b!1823652 d!558393))

(declare-fun bs!407508 () Bool)

(declare-fun d!558401 () Bool)

(assert (= bs!407508 (and d!558401 d!558185)))

(declare-fun lambda!71548 () Int)

(assert (=> bs!407508 (= (and (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 (rule!5751 token!556))))) (= lambda!71548 lambda!71522))))

(declare-fun bs!407509 () Bool)

(assert (= bs!407509 (and d!558401 d!558203)))

(assert (=> bs!407509 (= (and (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (h!25412 rules!4538)))) (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 (h!25412 rules!4538))))) (= lambda!71548 lambda!71526))))

(declare-fun b!1824223 () Bool)

(declare-fun e!1165916 () Bool)

(assert (=> b!1824223 (= e!1165916 true)))

(assert (=> d!558401 e!1165916))

(assert (= d!558401 b!1824223))

(assert (=> b!1824223 (< (dynLambda!9948 order!12989 (toValue!5144 (transformation!3609 rule!559))) (dynLambda!9947 order!12987 lambda!71548))))

(assert (=> b!1824223 (< (dynLambda!9946 order!12985 (toChars!5003 (transformation!3609 rule!559))) (dynLambda!9947 order!12987 lambda!71548))))

(assert (=> d!558401 (= (list!8129 (dynLambda!9945 (toChars!5003 (transformation!3609 rule!559)) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 (_1!11159 lt!708565))))) (list!8129 (seqFromList!2570 (_1!11159 lt!708565))))))

(declare-fun lt!708870 () Unit!34683)

(declare-fun ForallOf!361 (Int BalanceConc!13226) Unit!34683)

(assert (=> d!558401 (= lt!708870 (ForallOf!361 lambda!71548 (seqFromList!2570 (_1!11159 lt!708565))))))

(assert (=> d!558401 (= (lemmaSemiInverse!717 (transformation!3609 rule!559) (seqFromList!2570 (_1!11159 lt!708565))) lt!708870)))

(declare-fun b_lambda!60237 () Bool)

(assert (=> (not b_lambda!60237) (not d!558401)))

(declare-fun t!170131 () Bool)

(declare-fun tb!111437 () Bool)

(assert (=> (and b!1823361 (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 rule!559))) t!170131) tb!111437))

(declare-fun b!1824224 () Bool)

(declare-fun tp!515632 () Bool)

(declare-fun e!1165917 () Bool)

(assert (=> b!1824224 (= e!1165917 (and (inv!26047 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 rule!559)) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 (_1!11159 lt!708565)))))) tp!515632))))

(declare-fun result!133952 () Bool)

(assert (=> tb!111437 (= result!133952 (and (inv!26048 (dynLambda!9945 (toChars!5003 (transformation!3609 rule!559)) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 (_1!11159 lt!708565))))) e!1165917))))

(assert (= tb!111437 b!1824224))

(declare-fun m!2252865 () Bool)

(assert (=> b!1824224 m!2252865))

(declare-fun m!2252867 () Bool)

(assert (=> tb!111437 m!2252867))

(assert (=> d!558401 t!170131))

(declare-fun b_and!141613 () Bool)

(assert (= b_and!141589 (and (=> t!170131 result!133952) b_and!141613)))

(declare-fun tb!111439 () Bool)

(declare-fun t!170133 () Bool)

(assert (=> (and b!1823368 (= (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toChars!5003 (transformation!3609 rule!559))) t!170133) tb!111439))

(declare-fun result!133954 () Bool)

(assert (= result!133954 result!133952))

(assert (=> d!558401 t!170133))

(declare-fun b_and!141615 () Bool)

(assert (= b_and!141591 (and (=> t!170133 result!133954) b_and!141615)))

(declare-fun t!170135 () Bool)

(declare-fun tb!111441 () Bool)

(assert (=> (and b!1823356 (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 rule!559))) t!170135) tb!111441))

(declare-fun result!133956 () Bool)

(assert (= result!133956 result!133952))

(assert (=> d!558401 t!170135))

(declare-fun b_and!141617 () Bool)

(assert (= b_and!141593 (and (=> t!170135 result!133956) b_and!141617)))

(declare-fun tb!111443 () Bool)

(declare-fun t!170137 () Bool)

(assert (=> (and b!1823767 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toChars!5003 (transformation!3609 rule!559))) t!170137) tb!111443))

(declare-fun result!133958 () Bool)

(assert (= result!133958 result!133952))

(assert (=> d!558401 t!170137))

(declare-fun b_and!141619 () Bool)

(assert (= b_and!141595 (and (=> t!170137 result!133958) b_and!141619)))

(declare-fun b_lambda!60239 () Bool)

(assert (=> (not b_lambda!60239) (not d!558401)))

(declare-fun t!170139 () Bool)

(declare-fun tb!111445 () Bool)

(assert (=> (and b!1823361 (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 rule!559))) t!170139) tb!111445))

(declare-fun result!133960 () Bool)

(assert (=> tb!111445 (= result!133960 (inv!21 (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 (_1!11159 lt!708565)))))))

(declare-fun m!2252869 () Bool)

(assert (=> tb!111445 m!2252869))

(assert (=> d!558401 t!170139))

(declare-fun b_and!141621 () Bool)

(assert (= b_and!141605 (and (=> t!170139 result!133960) b_and!141621)))

(declare-fun t!170141 () Bool)

(declare-fun tb!111447 () Bool)

(assert (=> (and b!1823368 (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 rule!559))) t!170141) tb!111447))

(declare-fun result!133962 () Bool)

(assert (= result!133962 result!133960))

(assert (=> d!558401 t!170141))

(declare-fun b_and!141623 () Bool)

(assert (= b_and!141607 (and (=> t!170141 result!133962) b_and!141623)))

(declare-fun t!170143 () Bool)

(declare-fun tb!111449 () Bool)

(assert (=> (and b!1823356 (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 rule!559))) t!170143) tb!111449))

(declare-fun result!133964 () Bool)

(assert (= result!133964 result!133960))

(assert (=> d!558401 t!170143))

(declare-fun b_and!141625 () Bool)

(assert (= b_and!141609 (and (=> t!170143 result!133964) b_and!141625)))

(declare-fun tb!111451 () Bool)

(declare-fun t!170145 () Bool)

(assert (=> (and b!1823767 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 rule!559))) t!170145) tb!111451))

(declare-fun result!133966 () Bool)

(assert (= result!133966 result!133960))

(assert (=> d!558401 t!170145))

(declare-fun b_and!141627 () Bool)

(assert (= b_and!141611 (and (=> t!170145 result!133966) b_and!141627)))

(declare-fun m!2252871 () Bool)

(assert (=> d!558401 m!2252871))

(declare-fun m!2252873 () Bool)

(assert (=> d!558401 m!2252873))

(assert (=> d!558401 m!2252181))

(declare-fun m!2252875 () Bool)

(assert (=> d!558401 m!2252875))

(assert (=> d!558401 m!2252181))

(declare-fun m!2252877 () Bool)

(assert (=> d!558401 m!2252877))

(assert (=> d!558401 m!2252873))

(declare-fun m!2252879 () Bool)

(assert (=> d!558401 m!2252879))

(assert (=> d!558401 m!2252181))

(assert (=> d!558401 m!2252871))

(assert (=> b!1823652 d!558401))

(declare-fun d!558403 () Bool)

(assert (=> d!558403 (= (seqFromList!2570 (_1!11159 lt!708565)) (fromListB!1174 (_1!11159 lt!708565)))))

(declare-fun bs!407510 () Bool)

(assert (= bs!407510 d!558403))

(declare-fun m!2252881 () Bool)

(assert (=> bs!407510 m!2252881))

(assert (=> b!1823652 d!558403))

(declare-fun d!558405 () Bool)

(assert (=> d!558405 (= (apply!5401 (transformation!3609 rule!559) (seqFromList!2570 (_1!11159 lt!708565))) (dynLambda!9944 (toValue!5144 (transformation!3609 rule!559)) (seqFromList!2570 (_1!11159 lt!708565))))))

(declare-fun b_lambda!60241 () Bool)

(assert (=> (not b_lambda!60241) (not d!558405)))

(assert (=> d!558405 t!170139))

(declare-fun b_and!141629 () Bool)

(assert (= b_and!141621 (and (=> t!170139 result!133960) b_and!141629)))

(assert (=> d!558405 t!170141))

(declare-fun b_and!141631 () Bool)

(assert (= b_and!141623 (and (=> t!170141 result!133962) b_and!141631)))

(assert (=> d!558405 t!170143))

(declare-fun b_and!141633 () Bool)

(assert (= b_and!141625 (and (=> t!170143 result!133964) b_and!141633)))

(assert (=> d!558405 t!170145))

(declare-fun b_and!141635 () Bool)

(assert (= b_and!141627 (and (=> t!170145 result!133966) b_and!141635)))

(assert (=> d!558405 m!2252181))

(assert (=> d!558405 m!2252871))

(assert (=> b!1823652 d!558405))

(declare-fun d!558411 () Bool)

(assert (=> d!558411 (= (isEmpty!12638 (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))) ((_ is Nil!20010) (_1!11159 (findLongestMatchInner!503 (regex!3609 rule!559) Nil!20010 (size!15874 Nil!20010) input!3612 input!3612 (size!15874 input!3612)))))))

(assert (=> b!1823652 d!558411))

(assert (=> b!1823652 d!558207))

(assert (=> b!1823652 d!558219))

(declare-fun d!558413 () Bool)

(declare-fun lt!708897 () Int)

(assert (=> d!558413 (= lt!708897 (size!15874 (list!8129 (seqFromList!2570 (_1!11159 lt!708565)))))))

(declare-fun size!15878 (Conc!6641) Int)

(assert (=> d!558413 (= lt!708897 (size!15878 (c!297454 (seqFromList!2570 (_1!11159 lt!708565)))))))

(assert (=> d!558413 (= (size!15876 (seqFromList!2570 (_1!11159 lt!708565))) lt!708897)))

(declare-fun bs!407512 () Bool)

(assert (= bs!407512 d!558413))

(assert (=> bs!407512 m!2252181))

(assert (=> bs!407512 m!2252877))

(assert (=> bs!407512 m!2252877))

(declare-fun m!2252899 () Bool)

(assert (=> bs!407512 m!2252899))

(declare-fun m!2252901 () Bool)

(assert (=> bs!407512 m!2252901))

(assert (=> b!1823652 d!558413))

(assert (=> b!1823652 d!558221))

(declare-fun d!558415 () Bool)

(declare-fun c!297641 () Bool)

(assert (=> d!558415 (= c!297641 ((_ is Node!6641) (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))))))

(declare-fun e!1165932 () Bool)

(assert (=> d!558415 (= (inv!26047 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))) e!1165932)))

(declare-fun b!1824243 () Bool)

(declare-fun inv!26051 (Conc!6641) Bool)

(assert (=> b!1824243 (= e!1165932 (inv!26051 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))))))

(declare-fun b!1824244 () Bool)

(declare-fun e!1165933 () Bool)

(assert (=> b!1824244 (= e!1165932 e!1165933)))

(declare-fun res!820459 () Bool)

(assert (=> b!1824244 (= res!820459 (not ((_ is Leaf!9666) (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))))))))

(assert (=> b!1824244 (=> res!820459 e!1165933)))

(declare-fun b!1824245 () Bool)

(declare-fun inv!26052 (Conc!6641) Bool)

(assert (=> b!1824245 (= e!1165933 (inv!26052 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))))))

(assert (= (and d!558415 c!297641) b!1824243))

(assert (= (and d!558415 (not c!297641)) b!1824244))

(assert (= (and b!1824244 (not res!820459)) b!1824245))

(declare-fun m!2252905 () Bool)

(assert (=> b!1824243 m!2252905))

(declare-fun m!2252907 () Bool)

(assert (=> b!1824245 m!2252907))

(assert (=> b!1823698 d!558415))

(declare-fun d!558419 () Bool)

(declare-fun lt!708904 () Int)

(assert (=> d!558419 (>= lt!708904 0)))

(declare-fun e!1165934 () Int)

(assert (=> d!558419 (= lt!708904 e!1165934)))

(declare-fun c!297642 () Bool)

(assert (=> d!558419 (= c!297642 ((_ is Nil!20010) (t!170021 lt!708495)))))

(assert (=> d!558419 (= (size!15874 (t!170021 lt!708495)) lt!708904)))

(declare-fun b!1824246 () Bool)

(assert (=> b!1824246 (= e!1165934 0)))

(declare-fun b!1824247 () Bool)

(assert (=> b!1824247 (= e!1165934 (+ 1 (size!15874 (t!170021 (t!170021 lt!708495)))))))

(assert (= (and d!558419 c!297642) b!1824246))

(assert (= (and d!558419 (not c!297642)) b!1824247))

(declare-fun m!2252911 () Bool)

(assert (=> b!1824247 m!2252911))

(assert (=> b!1823666 d!558419))

(declare-fun d!558423 () Bool)

(declare-fun charsToBigInt!1 (List!20079) Int)

(assert (=> d!558423 (= (inv!17 (value!112523 token!556)) (= (charsToBigInt!1 (text!26341 (value!112523 token!556))) (value!112515 (value!112523 token!556))))))

(declare-fun bs!407514 () Bool)

(assert (= bs!407514 d!558423))

(declare-fun m!2252913 () Bool)

(assert (=> bs!407514 m!2252913))

(assert (=> b!1823408 d!558423))

(declare-fun d!558425 () Bool)

(declare-fun nullableFct!339 (Regex!4937) Bool)

(assert (=> d!558425 (= (nullable!1529 (regex!3609 rule!559)) (nullableFct!339 (regex!3609 rule!559)))))

(declare-fun bs!407515 () Bool)

(assert (= bs!407515 d!558425))

(declare-fun m!2252915 () Bool)

(assert (=> bs!407515 m!2252915))

(assert (=> b!1823505 d!558425))

(assert (=> b!1823459 d!558377))

(assert (=> b!1823459 d!558199))

(declare-fun b!1824264 () Bool)

(declare-fun e!1165946 () List!20080)

(declare-fun list!8133 (IArray!13287) List!20080)

(assert (=> b!1824264 (= e!1165946 (list!8133 (xs!9517 (c!297454 (charsOf!2252 token!556)))))))

(declare-fun b!1824265 () Bool)

(assert (=> b!1824265 (= e!1165946 (++!5433 (list!8131 (left!16019 (c!297454 (charsOf!2252 token!556)))) (list!8131 (right!16349 (c!297454 (charsOf!2252 token!556))))))))

(declare-fun b!1824263 () Bool)

(declare-fun e!1165945 () List!20080)

(assert (=> b!1824263 (= e!1165945 e!1165946)))

(declare-fun c!297648 () Bool)

(assert (=> b!1824263 (= c!297648 ((_ is Leaf!9666) (c!297454 (charsOf!2252 token!556))))))

(declare-fun d!558427 () Bool)

(declare-fun c!297647 () Bool)

(assert (=> d!558427 (= c!297647 ((_ is Empty!6641) (c!297454 (charsOf!2252 token!556))))))

(assert (=> d!558427 (= (list!8131 (c!297454 (charsOf!2252 token!556))) e!1165945)))

(declare-fun b!1824262 () Bool)

(assert (=> b!1824262 (= e!1165945 Nil!20010)))

(assert (= (and d!558427 c!297647) b!1824262))

(assert (= (and d!558427 (not c!297647)) b!1824263))

(assert (= (and b!1824263 c!297648) b!1824264))

(assert (= (and b!1824263 (not c!297648)) b!1824265))

(declare-fun m!2252919 () Bool)

(assert (=> b!1824264 m!2252919))

(declare-fun m!2252921 () Bool)

(assert (=> b!1824265 m!2252921))

(declare-fun m!2252923 () Bool)

(assert (=> b!1824265 m!2252923))

(assert (=> b!1824265 m!2252921))

(assert (=> b!1824265 m!2252923))

(declare-fun m!2252925 () Bool)

(assert (=> b!1824265 m!2252925))

(assert (=> d!558151 d!558427))

(declare-fun d!558431 () Bool)

(declare-fun c!297652 () Bool)

(assert (=> d!558431 (= c!297652 ((_ is Nil!20011) rules!4538))))

(declare-fun e!1165951 () (InoxSet Rule!7018))

(assert (=> d!558431 (= (content!2942 rules!4538) e!1165951)))

(declare-fun b!1824274 () Bool)

(assert (=> b!1824274 (= e!1165951 ((as const (Array Rule!7018 Bool)) false))))

(declare-fun b!1824275 () Bool)

(assert (=> b!1824275 (= e!1165951 ((_ map or) (store ((as const (Array Rule!7018 Bool)) false) (h!25412 rules!4538) true) (content!2942 (t!170022 rules!4538))))))

(assert (= (and d!558431 c!297652) b!1824274))

(assert (= (and d!558431 (not c!297652)) b!1824275))

(declare-fun m!2252941 () Bool)

(assert (=> b!1824275 m!2252941))

(assert (=> b!1824275 m!2252747))

(assert (=> d!558147 d!558431))

(declare-fun b!1824276 () Bool)

(declare-fun e!1165953 () Option!4189)

(declare-fun lt!708909 () Option!4189)

(declare-fun lt!708910 () Option!4189)

(assert (=> b!1824276 (= e!1165953 (ite (and ((_ is None!4188) lt!708909) ((_ is None!4188) lt!708910)) None!4188 (ite ((_ is None!4188) lt!708910) lt!708909 (ite ((_ is None!4188) lt!708909) lt!708910 (ite (>= (size!15873 (_1!11157 (v!25737 lt!708909))) (size!15873 (_1!11157 (v!25737 lt!708910)))) lt!708909 lt!708910)))))))

(declare-fun call!114474 () Option!4189)

(assert (=> b!1824276 (= lt!708909 call!114474)))

(assert (=> b!1824276 (= lt!708910 (maxPrefix!1786 thiss!28068 (t!170022 (t!170022 rules!4538)) input!3612))))

(declare-fun b!1824277 () Bool)

(declare-fun res!820471 () Bool)

(declare-fun e!1165954 () Bool)

(assert (=> b!1824277 (=> (not res!820471) (not e!1165954))))

(declare-fun lt!708911 () Option!4189)

(assert (=> b!1824277 (= res!820471 (= (value!112523 (_1!11157 (get!6185 lt!708911))) (apply!5401 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708911)))) (seqFromList!2570 (originalCharacters!4417 (_1!11157 (get!6185 lt!708911)))))))))

(declare-fun b!1824278 () Bool)

(declare-fun res!820473 () Bool)

(assert (=> b!1824278 (=> (not res!820473) (not e!1165954))))

(assert (=> b!1824278 (= res!820473 (= (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708911)))) (originalCharacters!4417 (_1!11157 (get!6185 lt!708911)))))))

(declare-fun b!1824279 () Bool)

(assert (=> b!1824279 (= e!1165953 call!114474)))

(declare-fun b!1824280 () Bool)

(declare-fun e!1165952 () Bool)

(assert (=> b!1824280 (= e!1165952 e!1165954)))

(declare-fun res!820470 () Bool)

(assert (=> b!1824280 (=> (not res!820470) (not e!1165954))))

(assert (=> b!1824280 (= res!820470 (isDefined!3506 lt!708911))))

(declare-fun d!558437 () Bool)

(assert (=> d!558437 e!1165952))

(declare-fun res!820468 () Bool)

(assert (=> d!558437 (=> res!820468 e!1165952)))

(assert (=> d!558437 (= res!820468 (isEmpty!12639 lt!708911))))

(assert (=> d!558437 (= lt!708911 e!1165953)))

(declare-fun c!297653 () Bool)

(assert (=> d!558437 (= c!297653 (and ((_ is Cons!20011) (t!170022 rules!4538)) ((_ is Nil!20011) (t!170022 (t!170022 rules!4538)))))))

(declare-fun lt!708913 () Unit!34683)

(declare-fun lt!708912 () Unit!34683)

(assert (=> d!558437 (= lt!708913 lt!708912)))

(assert (=> d!558437 (isPrefix!1819 input!3612 input!3612)))

(assert (=> d!558437 (= lt!708912 (lemmaIsPrefixRefl!1196 input!3612 input!3612))))

(assert (=> d!558437 (rulesValidInductive!1238 thiss!28068 (t!170022 rules!4538))))

(assert (=> d!558437 (= (maxPrefix!1786 thiss!28068 (t!170022 rules!4538) input!3612) lt!708911)))

(declare-fun b!1824281 () Bool)

(declare-fun res!820472 () Bool)

(assert (=> b!1824281 (=> (not res!820472) (not e!1165954))))

(assert (=> b!1824281 (= res!820472 (= (++!5433 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708911)))) (_2!11157 (get!6185 lt!708911))) input!3612))))

(declare-fun bm!114469 () Bool)

(assert (=> bm!114469 (= call!114474 (maxPrefixOneRule!1151 thiss!28068 (h!25412 (t!170022 rules!4538)) input!3612))))

(declare-fun b!1824282 () Bool)

(assert (=> b!1824282 (= e!1165954 (contains!3665 (t!170022 rules!4538) (rule!5751 (_1!11157 (get!6185 lt!708911)))))))

(declare-fun b!1824283 () Bool)

(declare-fun res!820474 () Bool)

(assert (=> b!1824283 (=> (not res!820474) (not e!1165954))))

(assert (=> b!1824283 (= res!820474 (< (size!15874 (_2!11157 (get!6185 lt!708911))) (size!15874 input!3612)))))

(declare-fun b!1824284 () Bool)

(declare-fun res!820469 () Bool)

(assert (=> b!1824284 (=> (not res!820469) (not e!1165954))))

(assert (=> b!1824284 (= res!820469 (matchR!2402 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708911)))) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708911))))))))

(assert (= (and d!558437 c!297653) b!1824279))

(assert (= (and d!558437 (not c!297653)) b!1824276))

(assert (= (or b!1824279 b!1824276) bm!114469))

(assert (= (and d!558437 (not res!820468)) b!1824280))

(assert (= (and b!1824280 res!820470) b!1824278))

(assert (= (and b!1824278 res!820473) b!1824283))

(assert (= (and b!1824283 res!820474) b!1824281))

(assert (= (and b!1824281 res!820472) b!1824277))

(assert (= (and b!1824277 res!820471) b!1824284))

(assert (= (and b!1824284 res!820469) b!1824282))

(declare-fun m!2252951 () Bool)

(assert (=> b!1824280 m!2252951))

(declare-fun m!2252953 () Bool)

(assert (=> b!1824278 m!2252953))

(declare-fun m!2252955 () Bool)

(assert (=> b!1824278 m!2252955))

(assert (=> b!1824278 m!2252955))

(declare-fun m!2252957 () Bool)

(assert (=> b!1824278 m!2252957))

(assert (=> b!1824283 m!2252953))

(declare-fun m!2252959 () Bool)

(assert (=> b!1824283 m!2252959))

(assert (=> b!1824283 m!2252157))

(assert (=> b!1824282 m!2252953))

(declare-fun m!2252961 () Bool)

(assert (=> b!1824282 m!2252961))

(assert (=> b!1824277 m!2252953))

(declare-fun m!2252963 () Bool)

(assert (=> b!1824277 m!2252963))

(assert (=> b!1824277 m!2252963))

(declare-fun m!2252965 () Bool)

(assert (=> b!1824277 m!2252965))

(declare-fun m!2252967 () Bool)

(assert (=> bm!114469 m!2252967))

(assert (=> b!1824284 m!2252953))

(assert (=> b!1824284 m!2252955))

(assert (=> b!1824284 m!2252955))

(assert (=> b!1824284 m!2252957))

(assert (=> b!1824284 m!2252957))

(declare-fun m!2252971 () Bool)

(assert (=> b!1824284 m!2252971))

(declare-fun m!2252973 () Bool)

(assert (=> d!558437 m!2252973))

(assert (=> d!558437 m!2252271))

(assert (=> d!558437 m!2252273))

(assert (=> d!558437 m!2252531))

(assert (=> b!1824281 m!2252953))

(assert (=> b!1824281 m!2252955))

(assert (=> b!1824281 m!2252955))

(assert (=> b!1824281 m!2252957))

(assert (=> b!1824281 m!2252957))

(declare-fun m!2252977 () Bool)

(assert (=> b!1824281 m!2252977))

(declare-fun m!2252979 () Bool)

(assert (=> b!1824276 m!2252979))

(assert (=> b!1823723 d!558437))

(declare-fun d!558447 () Bool)

(declare-fun e!1165969 () Bool)

(assert (=> d!558447 e!1165969))

(declare-fun res!820487 () Bool)

(assert (=> d!558447 (=> (not res!820487) (not e!1165969))))

(declare-fun lt!708920 () BalanceConc!13226)

(assert (=> d!558447 (= res!820487 (= (list!8129 lt!708920) lt!708495))))

(declare-fun fromList!450 (List!20080) Conc!6641)

(assert (=> d!558447 (= lt!708920 (BalanceConc!13227 (fromList!450 lt!708495)))))

(assert (=> d!558447 (= (fromListB!1174 lt!708495) lt!708920)))

(declare-fun b!1824309 () Bool)

(assert (=> b!1824309 (= e!1165969 (isBalanced!2063 (fromList!450 lt!708495)))))

(assert (= (and d!558447 res!820487) b!1824309))

(declare-fun m!2252991 () Bool)

(assert (=> d!558447 m!2252991))

(declare-fun m!2252993 () Bool)

(assert (=> d!558447 m!2252993))

(assert (=> b!1824309 m!2252993))

(assert (=> b!1824309 m!2252993))

(declare-fun m!2252995 () Bool)

(assert (=> b!1824309 m!2252995))

(assert (=> d!558135 d!558447))

(declare-fun bs!407527 () Bool)

(declare-fun d!558457 () Bool)

(assert (= bs!407527 (and d!558457 d!558185)))

(declare-fun lambda!71554 () Int)

(assert (=> bs!407527 (= (and (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 (rule!5751 token!556))))) (= lambda!71554 lambda!71522))))

(declare-fun bs!407528 () Bool)

(assert (= bs!407528 (and d!558457 d!558203)))

(assert (=> bs!407528 (= (and (= (toChars!5003 (transformation!3609 rule!559)) (toChars!5003 (transformation!3609 (h!25412 rules!4538)))) (= (toValue!5144 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 (h!25412 rules!4538))))) (= lambda!71554 lambda!71526))))

(declare-fun bs!407529 () Bool)

(assert (= bs!407529 (and d!558457 d!558401)))

(assert (=> bs!407529 (= lambda!71554 lambda!71548)))

(assert (=> d!558457 true))

(assert (=> d!558457 (< (dynLambda!9946 order!12985 (toChars!5003 (transformation!3609 rule!559))) (dynLambda!9947 order!12987 lambda!71554))))

(assert (=> d!558457 true))

(assert (=> d!558457 (< (dynLambda!9948 order!12989 (toValue!5144 (transformation!3609 rule!559))) (dynLambda!9947 order!12987 lambda!71554))))

(assert (=> d!558457 (= (semiInverseModEq!1444 (toChars!5003 (transformation!3609 rule!559)) (toValue!5144 (transformation!3609 rule!559))) (Forall!929 lambda!71554))))

(declare-fun bs!407530 () Bool)

(assert (= bs!407530 d!558457))

(declare-fun m!2253011 () Bool)

(assert (=> bs!407530 m!2253011))

(assert (=> d!558161 d!558457))

(assert (=> b!1823460 d!558425))

(declare-fun d!558461 () Bool)

(assert (=> d!558461 (= (isEmpty!12638 (originalCharacters!4417 token!556)) ((_ is Nil!20010) (originalCharacters!4417 token!556)))))

(assert (=> d!558155 d!558461))

(declare-fun b!1824311 () Bool)

(declare-fun e!1165970 () List!20080)

(assert (=> b!1824311 (= e!1165970 (Cons!20010 (h!25411 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))) (++!5433 (t!170021 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))) (_2!11157 (get!6185 lt!708596)))))))

(declare-fun d!558463 () Bool)

(declare-fun e!1165971 () Bool)

(assert (=> d!558463 e!1165971))

(declare-fun res!820489 () Bool)

(assert (=> d!558463 (=> (not res!820489) (not e!1165971))))

(declare-fun lt!708921 () List!20080)

(assert (=> d!558463 (= res!820489 (= (content!2943 lt!708921) ((_ map or) (content!2943 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))) (content!2943 (_2!11157 (get!6185 lt!708596))))))))

(assert (=> d!558463 (= lt!708921 e!1165970)))

(declare-fun c!297661 () Bool)

(assert (=> d!558463 (= c!297661 ((_ is Nil!20010) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))))))

(assert (=> d!558463 (= (++!5433 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))) (_2!11157 (get!6185 lt!708596))) lt!708921)))

(declare-fun b!1824312 () Bool)

(declare-fun res!820488 () Bool)

(assert (=> b!1824312 (=> (not res!820488) (not e!1165971))))

(assert (=> b!1824312 (= res!820488 (= (size!15874 lt!708921) (+ (size!15874 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))) (size!15874 (_2!11157 (get!6185 lt!708596))))))))

(declare-fun b!1824310 () Bool)

(assert (=> b!1824310 (= e!1165970 (_2!11157 (get!6185 lt!708596)))))

(declare-fun b!1824313 () Bool)

(assert (=> b!1824313 (= e!1165971 (or (not (= (_2!11157 (get!6185 lt!708596)) Nil!20010)) (= lt!708921 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))))))))

(assert (= (and d!558463 c!297661) b!1824310))

(assert (= (and d!558463 (not c!297661)) b!1824311))

(assert (= (and d!558463 res!820489) b!1824312))

(assert (= (and b!1824312 res!820488) b!1824313))

(declare-fun m!2253013 () Bool)

(assert (=> b!1824311 m!2253013))

(declare-fun m!2253015 () Bool)

(assert (=> d!558463 m!2253015))

(assert (=> d!558463 m!2252255))

(declare-fun m!2253017 () Bool)

(assert (=> d!558463 m!2253017))

(declare-fun m!2253019 () Bool)

(assert (=> d!558463 m!2253019))

(declare-fun m!2253021 () Bool)

(assert (=> b!1824312 m!2253021))

(assert (=> b!1824312 m!2252255))

(declare-fun m!2253023 () Bool)

(assert (=> b!1824312 m!2253023))

(assert (=> b!1824312 m!2252257))

(assert (=> b!1823728 d!558463))

(assert (=> b!1823728 d!558325))

(assert (=> b!1823728 d!558327))

(assert (=> b!1823728 d!558297))

(declare-fun d!558465 () Bool)

(assert (=> d!558465 (= (inv!26040 (tag!4023 (h!25412 (t!170022 rules!4538)))) (= (mod (str.len (value!112522 (tag!4023 (h!25412 (t!170022 rules!4538))))) 2) 0))))

(assert (=> b!1823766 d!558465))

(declare-fun d!558467 () Bool)

(declare-fun res!820490 () Bool)

(declare-fun e!1165972 () Bool)

(assert (=> d!558467 (=> (not res!820490) (not e!1165972))))

(assert (=> d!558467 (= res!820490 (semiInverseModEq!1444 (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538))))))))

(assert (=> d!558467 (= (inv!26043 (transformation!3609 (h!25412 (t!170022 rules!4538)))) e!1165972)))

(declare-fun b!1824314 () Bool)

(assert (=> b!1824314 (= e!1165972 (equivClasses!1385 (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538))))))))

(assert (= (and d!558467 res!820490) b!1824314))

(declare-fun m!2253025 () Bool)

(assert (=> d!558467 m!2253025))

(declare-fun m!2253027 () Bool)

(assert (=> b!1824314 m!2253027))

(assert (=> b!1823766 d!558467))

(declare-fun b!1824316 () Bool)

(declare-fun e!1165973 () List!20080)

(assert (=> b!1824316 (= e!1165973 (Cons!20010 (h!25411 (t!170021 lt!708495)) (++!5433 (t!170021 (t!170021 lt!708495)) suffix!1667)))))

(declare-fun d!558469 () Bool)

(declare-fun e!1165974 () Bool)

(assert (=> d!558469 e!1165974))

(declare-fun res!820492 () Bool)

(assert (=> d!558469 (=> (not res!820492) (not e!1165974))))

(declare-fun lt!708922 () List!20080)

(assert (=> d!558469 (= res!820492 (= (content!2943 lt!708922) ((_ map or) (content!2943 (t!170021 lt!708495)) (content!2943 suffix!1667))))))

(assert (=> d!558469 (= lt!708922 e!1165973)))

(declare-fun c!297662 () Bool)

(assert (=> d!558469 (= c!297662 ((_ is Nil!20010) (t!170021 lt!708495)))))

(assert (=> d!558469 (= (++!5433 (t!170021 lt!708495) suffix!1667) lt!708922)))

(declare-fun b!1824317 () Bool)

(declare-fun res!820491 () Bool)

(assert (=> b!1824317 (=> (not res!820491) (not e!1165974))))

(assert (=> b!1824317 (= res!820491 (= (size!15874 lt!708922) (+ (size!15874 (t!170021 lt!708495)) (size!15874 suffix!1667))))))

(declare-fun b!1824315 () Bool)

(assert (=> b!1824315 (= e!1165973 suffix!1667)))

(declare-fun b!1824318 () Bool)

(assert (=> b!1824318 (= e!1165974 (or (not (= suffix!1667 Nil!20010)) (= lt!708922 (t!170021 lt!708495))))))

(assert (= (and d!558469 c!297662) b!1824315))

(assert (= (and d!558469 (not c!297662)) b!1824316))

(assert (= (and d!558469 res!820492) b!1824317))

(assert (= (and b!1824317 res!820491) b!1824318))

(declare-fun m!2253029 () Bool)

(assert (=> b!1824316 m!2253029))

(declare-fun m!2253031 () Bool)

(assert (=> d!558469 m!2253031))

(assert (=> d!558469 m!2252343))

(assert (=> d!558469 m!2252227))

(declare-fun m!2253033 () Bool)

(assert (=> b!1824317 m!2253033))

(assert (=> b!1824317 m!2252195))

(assert (=> b!1824317 m!2252231))

(assert (=> b!1823691 d!558469))

(declare-fun d!558471 () Bool)

(declare-fun lt!708923 () Bool)

(assert (=> d!558471 (= lt!708923 (select (content!2942 rules!4538) (rule!5751 (_1!11157 (get!6185 lt!708596)))))))

(declare-fun e!1165976 () Bool)

(assert (=> d!558471 (= lt!708923 e!1165976)))

(declare-fun res!820494 () Bool)

(assert (=> d!558471 (=> (not res!820494) (not e!1165976))))

(assert (=> d!558471 (= res!820494 ((_ is Cons!20011) rules!4538))))

(assert (=> d!558471 (= (contains!3665 rules!4538 (rule!5751 (_1!11157 (get!6185 lt!708596)))) lt!708923)))

(declare-fun b!1824319 () Bool)

(declare-fun e!1165975 () Bool)

(assert (=> b!1824319 (= e!1165976 e!1165975)))

(declare-fun res!820493 () Bool)

(assert (=> b!1824319 (=> res!820493 e!1165975)))

(assert (=> b!1824319 (= res!820493 (= (h!25412 rules!4538) (rule!5751 (_1!11157 (get!6185 lt!708596)))))))

(declare-fun b!1824320 () Bool)

(assert (=> b!1824320 (= e!1165975 (contains!3665 (t!170022 rules!4538) (rule!5751 (_1!11157 (get!6185 lt!708596)))))))

(assert (= (and d!558471 res!820494) b!1824319))

(assert (= (and b!1824319 (not res!820493)) b!1824320))

(assert (=> d!558471 m!2252215))

(declare-fun m!2253035 () Bool)

(assert (=> d!558471 m!2253035))

(declare-fun m!2253037 () Bool)

(assert (=> b!1824320 m!2253037))

(assert (=> b!1823729 d!558471))

(assert (=> b!1823729 d!558297))

(declare-fun b!1824321 () Bool)

(declare-fun res!820499 () Bool)

(declare-fun e!1165979 () Bool)

(assert (=> b!1824321 (=> res!820499 e!1165979)))

(assert (=> b!1824321 (= res!820499 (not (isEmpty!12638 (tail!2711 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))))))))

(declare-fun b!1824322 () Bool)

(declare-fun e!1165977 () Bool)

(assert (=> b!1824322 (= e!1165977 (nullable!1529 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))))))

(declare-fun b!1824324 () Bool)

(declare-fun res!820497 () Bool)

(declare-fun e!1165983 () Bool)

(assert (=> b!1824324 (=> (not res!820497) (not e!1165983))))

(declare-fun call!114476 () Bool)

(assert (=> b!1824324 (= res!820497 (not call!114476))))

(declare-fun b!1824325 () Bool)

(declare-fun e!1165978 () Bool)

(assert (=> b!1824325 (= e!1165978 e!1165979)))

(declare-fun res!820498 () Bool)

(assert (=> b!1824325 (=> res!820498 e!1165979)))

(assert (=> b!1824325 (= res!820498 call!114476)))

(declare-fun b!1824326 () Bool)

(declare-fun e!1165982 () Bool)

(assert (=> b!1824326 (= e!1165982 e!1165978)))

(declare-fun res!820501 () Bool)

(assert (=> b!1824326 (=> (not res!820501) (not e!1165978))))

(declare-fun lt!708924 () Bool)

(assert (=> b!1824326 (= res!820501 (not lt!708924))))

(declare-fun b!1824327 () Bool)

(declare-fun res!820500 () Bool)

(assert (=> b!1824327 (=> res!820500 e!1165982)))

(assert (=> b!1824327 (= res!820500 e!1165983)))

(declare-fun res!820495 () Bool)

(assert (=> b!1824327 (=> (not res!820495) (not e!1165983))))

(assert (=> b!1824327 (= res!820495 lt!708924)))

(declare-fun b!1824328 () Bool)

(assert (=> b!1824328 (= e!1165983 (= (head!4252 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))) (c!297455 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))))))

(declare-fun b!1824329 () Bool)

(declare-fun res!820496 () Bool)

(assert (=> b!1824329 (=> res!820496 e!1165982)))

(assert (=> b!1824329 (= res!820496 (not ((_ is ElementMatch!4937) (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))))))

(declare-fun e!1165981 () Bool)

(assert (=> b!1824329 (= e!1165981 e!1165982)))

(declare-fun bm!114471 () Bool)

(assert (=> bm!114471 (= call!114476 (isEmpty!12638 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))))))

(declare-fun b!1824330 () Bool)

(declare-fun res!820502 () Bool)

(assert (=> b!1824330 (=> (not res!820502) (not e!1165983))))

(assert (=> b!1824330 (= res!820502 (isEmpty!12638 (tail!2711 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))))))))

(declare-fun d!558473 () Bool)

(declare-fun e!1165980 () Bool)

(assert (=> d!558473 e!1165980))

(declare-fun c!297664 () Bool)

(assert (=> d!558473 (= c!297664 ((_ is EmptyExpr!4937) (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))))))

(assert (=> d!558473 (= lt!708924 e!1165977)))

(declare-fun c!297663 () Bool)

(assert (=> d!558473 (= c!297663 (isEmpty!12638 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))))))

(assert (=> d!558473 (validRegex!2007 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))))

(assert (=> d!558473 (= (matchR!2402 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))) lt!708924)))

(declare-fun b!1824323 () Bool)

(assert (=> b!1824323 (= e!1165980 e!1165981)))

(declare-fun c!297665 () Bool)

(assert (=> b!1824323 (= c!297665 ((_ is EmptyLang!4937) (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))))))

(declare-fun b!1824331 () Bool)

(assert (=> b!1824331 (= e!1165980 (= lt!708924 call!114476))))

(declare-fun b!1824332 () Bool)

(assert (=> b!1824332 (= e!1165977 (matchR!2402 (derivativeStep!1294 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))) (head!4252 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))))) (tail!2711 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596)))))))))

(declare-fun b!1824333 () Bool)

(assert (=> b!1824333 (= e!1165979 (not (= (head!4252 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708596))))) (c!297455 (regex!3609 (rule!5751 (_1!11157 (get!6185 lt!708596))))))))))

(declare-fun b!1824334 () Bool)

(assert (=> b!1824334 (= e!1165981 (not lt!708924))))

(assert (= (and d!558473 c!297663) b!1824322))

(assert (= (and d!558473 (not c!297663)) b!1824332))

(assert (= (and d!558473 c!297664) b!1824331))

(assert (= (and d!558473 (not c!297664)) b!1824323))

(assert (= (and b!1824323 c!297665) b!1824334))

(assert (= (and b!1824323 (not c!297665)) b!1824329))

(assert (= (and b!1824329 (not res!820496)) b!1824327))

(assert (= (and b!1824327 res!820495) b!1824324))

(assert (= (and b!1824324 res!820497) b!1824330))

(assert (= (and b!1824330 res!820502) b!1824328))

(assert (= (and b!1824327 (not res!820500)) b!1824326))

(assert (= (and b!1824326 res!820501) b!1824325))

(assert (= (and b!1824325 (not res!820498)) b!1824321))

(assert (= (and b!1824321 (not res!820499)) b!1824333))

(assert (= (or b!1824331 b!1824324 b!1824325) bm!114471))

(assert (=> bm!114471 m!2252255))

(declare-fun m!2253039 () Bool)

(assert (=> bm!114471 m!2253039))

(assert (=> d!558473 m!2252255))

(assert (=> d!558473 m!2253039))

(declare-fun m!2253041 () Bool)

(assert (=> d!558473 m!2253041))

(declare-fun m!2253043 () Bool)

(assert (=> b!1824322 m!2253043))

(assert (=> b!1824321 m!2252255))

(declare-fun m!2253045 () Bool)

(assert (=> b!1824321 m!2253045))

(assert (=> b!1824321 m!2253045))

(declare-fun m!2253047 () Bool)

(assert (=> b!1824321 m!2253047))

(assert (=> b!1824330 m!2252255))

(assert (=> b!1824330 m!2253045))

(assert (=> b!1824330 m!2253045))

(assert (=> b!1824330 m!2253047))

(assert (=> b!1824333 m!2252255))

(declare-fun m!2253049 () Bool)

(assert (=> b!1824333 m!2253049))

(assert (=> b!1824332 m!2252255))

(assert (=> b!1824332 m!2253049))

(assert (=> b!1824332 m!2253049))

(declare-fun m!2253051 () Bool)

(assert (=> b!1824332 m!2253051))

(assert (=> b!1824332 m!2252255))

(assert (=> b!1824332 m!2253045))

(assert (=> b!1824332 m!2253051))

(assert (=> b!1824332 m!2253045))

(declare-fun m!2253053 () Bool)

(assert (=> b!1824332 m!2253053))

(assert (=> b!1824328 m!2252255))

(assert (=> b!1824328 m!2253049))

(assert (=> b!1823731 d!558473))

(assert (=> b!1823731 d!558297))

(assert (=> b!1823731 d!558325))

(assert (=> b!1823731 d!558327))

(assert (=> b!1823466 d!558197))

(declare-fun d!558475 () Bool)

(assert (=> d!558475 (= (list!8129 lt!708583) (list!8131 (c!297454 lt!708583)))))

(declare-fun bs!407531 () Bool)

(assert (= bs!407531 d!558475))

(declare-fun m!2253055 () Bool)

(assert (=> bs!407531 m!2253055))

(assert (=> d!558153 d!558475))

(declare-fun b!1824336 () Bool)

(declare-fun e!1165984 () List!20080)

(assert (=> b!1824336 (= e!1165984 (Cons!20010 (h!25411 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))) (++!5433 (t!170021 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))) (_2!11157 (get!6185 lt!708567)))))))

(declare-fun d!558477 () Bool)

(declare-fun e!1165985 () Bool)

(assert (=> d!558477 e!1165985))

(declare-fun res!820504 () Bool)

(assert (=> d!558477 (=> (not res!820504) (not e!1165985))))

(declare-fun lt!708927 () List!20080)

(assert (=> d!558477 (= res!820504 (= (content!2943 lt!708927) ((_ map or) (content!2943 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))) (content!2943 (_2!11157 (get!6185 lt!708567))))))))

(assert (=> d!558477 (= lt!708927 e!1165984)))

(declare-fun c!297666 () Bool)

(assert (=> d!558477 (= c!297666 ((_ is Nil!20010) (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))))))

(assert (=> d!558477 (= (++!5433 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567)))) (_2!11157 (get!6185 lt!708567))) lt!708927)))

(declare-fun b!1824337 () Bool)

(declare-fun res!820503 () Bool)

(assert (=> b!1824337 (=> (not res!820503) (not e!1165985))))

(assert (=> b!1824337 (= res!820503 (= (size!15874 lt!708927) (+ (size!15874 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567))))) (size!15874 (_2!11157 (get!6185 lt!708567))))))))

(declare-fun b!1824335 () Bool)

(assert (=> b!1824335 (= e!1165984 (_2!11157 (get!6185 lt!708567)))))

(declare-fun b!1824339 () Bool)

(assert (=> b!1824339 (= e!1165985 (or (not (= (_2!11157 (get!6185 lt!708567)) Nil!20010)) (= lt!708927 (list!8129 (charsOf!2252 (_1!11157 (get!6185 lt!708567)))))))))

(assert (= (and d!558477 c!297666) b!1824335))

(assert (= (and d!558477 (not c!297666)) b!1824336))

(assert (= (and d!558477 res!820504) b!1824337))

(assert (= (and b!1824337 res!820503) b!1824339))

(declare-fun m!2253057 () Bool)

(assert (=> b!1824336 m!2253057))

(declare-fun m!2253059 () Bool)

(assert (=> d!558477 m!2253059))

(assert (=> d!558477 m!2252167))

(declare-fun m!2253061 () Bool)

(assert (=> d!558477 m!2253061))

(declare-fun m!2253063 () Bool)

(assert (=> d!558477 m!2253063))

(declare-fun m!2253065 () Bool)

(assert (=> b!1824337 m!2253065))

(assert (=> b!1824337 m!2252167))

(declare-fun m!2253067 () Bool)

(assert (=> b!1824337 m!2253067))

(assert (=> b!1824337 m!2252163))

(assert (=> b!1823646 d!558477))

(assert (=> b!1823646 d!558265))

(assert (=> b!1823646 d!558267))

(assert (=> b!1823646 d!558181))

(assert (=> bm!114374 d!558381))

(declare-fun b!1824359 () Bool)

(declare-fun e!1165996 () Bool)

(assert (=> b!1824359 (= e!1165996 tp_is_empty!8109)))

(declare-fun b!1824360 () Bool)

(declare-fun tp!515636 () Bool)

(declare-fun tp!515635 () Bool)

(assert (=> b!1824360 (= e!1165996 (and tp!515636 tp!515635))))

(declare-fun b!1824362 () Bool)

(declare-fun tp!515637 () Bool)

(declare-fun tp!515633 () Bool)

(assert (=> b!1824362 (= e!1165996 (and tp!515637 tp!515633))))

(assert (=> b!1823745 (= tp!515596 e!1165996)))

(declare-fun b!1824361 () Bool)

(declare-fun tp!515634 () Bool)

(assert (=> b!1824361 (= e!1165996 tp!515634)))

(assert (= (and b!1823745 ((_ is ElementMatch!4937) (reg!5266 (regex!3609 (h!25412 rules!4538))))) b!1824359))

(assert (= (and b!1823745 ((_ is Concat!8637) (reg!5266 (regex!3609 (h!25412 rules!4538))))) b!1824360))

(assert (= (and b!1823745 ((_ is Star!4937) (reg!5266 (regex!3609 (h!25412 rules!4538))))) b!1824361))

(assert (= (and b!1823745 ((_ is Union!4937) (reg!5266 (regex!3609 (h!25412 rules!4538))))) b!1824362))

(declare-fun b!1824365 () Bool)

(declare-fun b_free!50739 () Bool)

(declare-fun b_next!51443 () Bool)

(assert (=> b!1824365 (= b_free!50739 (not b_next!51443))))

(declare-fun t!170156 () Bool)

(declare-fun tb!111461 () Bool)

(assert (=> (and b!1824365 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170156) tb!111461))

(declare-fun result!133976 () Bool)

(assert (= result!133976 result!133920))

(assert (=> d!558299 t!170156))

(declare-fun t!170158 () Bool)

(declare-fun tb!111463 () Bool)

(assert (=> (and b!1824365 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toValue!5144 (transformation!3609 rule!559))) t!170158) tb!111463))

(declare-fun result!133978 () Bool)

(assert (= result!133978 result!133854))

(assert (=> d!558133 t!170158))

(declare-fun tb!111465 () Bool)

(declare-fun t!170160 () Bool)

(assert (=> (and b!1824365 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toValue!5144 (transformation!3609 rule!559))) t!170160) tb!111465))

(declare-fun result!133980 () Bool)

(assert (= result!133980 result!133960))

(assert (=> d!558405 t!170160))

(assert (=> d!558401 t!170160))

(declare-fun t!170162 () Bool)

(declare-fun tb!111467 () Bool)

(assert (=> (and b!1824365 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toValue!5144 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170162) tb!111467))

(declare-fun result!133982 () Bool)

(assert (= result!133982 result!133944))

(assert (=> d!558385 t!170162))

(declare-fun tp!515640 () Bool)

(declare-fun b_and!141645 () Bool)

(assert (=> b!1824365 (= tp!515640 (and (=> t!170162 result!133982) (=> t!170158 result!133978) (=> t!170160 result!133980) (=> t!170156 result!133976) b_and!141645))))

(declare-fun b_free!50741 () Bool)

(declare-fun b_next!51445 () Bool)

(assert (=> b!1824365 (= b_free!50741 (not b_next!51445))))

(declare-fun tb!111469 () Bool)

(declare-fun t!170164 () Bool)

(assert (=> (and b!1824365 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708567)))))) t!170164) tb!111469))

(declare-fun result!133984 () Bool)

(assert (= result!133984 result!133904))

(assert (=> d!558267 t!170164))

(declare-fun t!170166 () Bool)

(declare-fun tb!111471 () Bool)

(assert (=> (and b!1824365 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toChars!5003 (transformation!3609 (rule!5751 (_1!11157 (get!6185 lt!708596)))))) t!170166) tb!111471))

(declare-fun result!133986 () Bool)

(assert (= result!133986 result!133928))

(assert (=> d!558327 t!170166))

(declare-fun t!170168 () Bool)

(declare-fun tb!111473 () Bool)

(assert (=> (and b!1824365 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toChars!5003 (transformation!3609 (rule!5751 token!556)))) t!170168) tb!111473))

(declare-fun result!133988 () Bool)

(assert (= result!133988 result!133862))

(assert (=> d!558153 t!170168))

(declare-fun tb!111475 () Bool)

(declare-fun t!170170 () Bool)

(assert (=> (and b!1824365 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toChars!5003 (transformation!3609 rule!559))) t!170170) tb!111475))

(declare-fun result!133990 () Bool)

(assert (= result!133990 result!133952))

(assert (=> d!558401 t!170170))

(assert (=> b!1823703 t!170168))

(declare-fun b_and!141647 () Bool)

(declare-fun tp!515638 () Bool)

(assert (=> b!1824365 (= tp!515638 (and (=> t!170164 result!133984) (=> t!170166 result!133986) (=> t!170170 result!133990) (=> t!170168 result!133988) b_and!141647))))

(declare-fun e!1165997 () Bool)

(assert (=> b!1824365 (= e!1165997 (and tp!515640 tp!515638))))

(declare-fun e!1165998 () Bool)

(declare-fun tp!515641 () Bool)

(declare-fun b!1824364 () Bool)

(assert (=> b!1824364 (= e!1165998 (and tp!515641 (inv!26040 (tag!4023 (h!25412 (t!170022 (t!170022 rules!4538))))) (inv!26043 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) e!1165997))))

(declare-fun b!1824363 () Bool)

(declare-fun e!1165999 () Bool)

(declare-fun tp!515639 () Bool)

(assert (=> b!1824363 (= e!1165999 (and e!1165998 tp!515639))))

(assert (=> b!1823765 (= tp!515618 e!1165999)))

(assert (= b!1824364 b!1824365))

(assert (= b!1824363 b!1824364))

(assert (= (and b!1823765 ((_ is Cons!20011) (t!170022 (t!170022 rules!4538)))) b!1824363))

(declare-fun m!2253069 () Bool)

(assert (=> b!1824364 m!2253069))

(declare-fun m!2253071 () Bool)

(assert (=> b!1824364 m!2253071))

(declare-fun b!1824366 () Bool)

(declare-fun e!1166001 () Bool)

(assert (=> b!1824366 (= e!1166001 tp_is_empty!8109)))

(declare-fun b!1824367 () Bool)

(declare-fun tp!515645 () Bool)

(declare-fun tp!515644 () Bool)

(assert (=> b!1824367 (= e!1166001 (and tp!515645 tp!515644))))

(declare-fun b!1824369 () Bool)

(declare-fun tp!515646 () Bool)

(declare-fun tp!515642 () Bool)

(assert (=> b!1824369 (= e!1166001 (and tp!515646 tp!515642))))

(assert (=> b!1823770 (= tp!515625 e!1166001)))

(declare-fun b!1824368 () Bool)

(declare-fun tp!515643 () Bool)

(assert (=> b!1824368 (= e!1166001 tp!515643)))

(assert (= (and b!1823770 ((_ is ElementMatch!4937) (regOne!10386 (regex!3609 rule!559)))) b!1824366))

(assert (= (and b!1823770 ((_ is Concat!8637) (regOne!10386 (regex!3609 rule!559)))) b!1824367))

(assert (= (and b!1823770 ((_ is Star!4937) (regOne!10386 (regex!3609 rule!559)))) b!1824368))

(assert (= (and b!1823770 ((_ is Union!4937) (regOne!10386 (regex!3609 rule!559)))) b!1824369))

(declare-fun b!1824370 () Bool)

(declare-fun e!1166002 () Bool)

(assert (=> b!1824370 (= e!1166002 tp_is_empty!8109)))

(declare-fun b!1824371 () Bool)

(declare-fun tp!515650 () Bool)

(declare-fun tp!515649 () Bool)

(assert (=> b!1824371 (= e!1166002 (and tp!515650 tp!515649))))

(declare-fun b!1824373 () Bool)

(declare-fun tp!515651 () Bool)

(declare-fun tp!515647 () Bool)

(assert (=> b!1824373 (= e!1166002 (and tp!515651 tp!515647))))

(assert (=> b!1823770 (= tp!515624 e!1166002)))

(declare-fun b!1824372 () Bool)

(declare-fun tp!515648 () Bool)

(assert (=> b!1824372 (= e!1166002 tp!515648)))

(assert (= (and b!1823770 ((_ is ElementMatch!4937) (regTwo!10386 (regex!3609 rule!559)))) b!1824370))

(assert (= (and b!1823770 ((_ is Concat!8637) (regTwo!10386 (regex!3609 rule!559)))) b!1824371))

(assert (= (and b!1823770 ((_ is Star!4937) (regTwo!10386 (regex!3609 rule!559)))) b!1824372))

(assert (= (and b!1823770 ((_ is Union!4937) (regTwo!10386 (regex!3609 rule!559)))) b!1824373))

(declare-fun b!1824374 () Bool)

(declare-fun e!1166003 () Bool)

(assert (=> b!1824374 (= e!1166003 tp_is_empty!8109)))

(declare-fun b!1824375 () Bool)

(declare-fun tp!515655 () Bool)

(declare-fun tp!515654 () Bool)

(assert (=> b!1824375 (= e!1166003 (and tp!515655 tp!515654))))

(declare-fun b!1824377 () Bool)

(declare-fun tp!515656 () Bool)

(declare-fun tp!515652 () Bool)

(assert (=> b!1824377 (= e!1166003 (and tp!515656 tp!515652))))

(assert (=> b!1823746 (= tp!515599 e!1166003)))

(declare-fun b!1824376 () Bool)

(declare-fun tp!515653 () Bool)

(assert (=> b!1824376 (= e!1166003 tp!515653)))

(assert (= (and b!1823746 ((_ is ElementMatch!4937) (regOne!10387 (regex!3609 (h!25412 rules!4538))))) b!1824374))

(assert (= (and b!1823746 ((_ is Concat!8637) (regOne!10387 (regex!3609 (h!25412 rules!4538))))) b!1824375))

(assert (= (and b!1823746 ((_ is Star!4937) (regOne!10387 (regex!3609 (h!25412 rules!4538))))) b!1824376))

(assert (= (and b!1823746 ((_ is Union!4937) (regOne!10387 (regex!3609 (h!25412 rules!4538))))) b!1824377))

(declare-fun b!1824378 () Bool)

(declare-fun e!1166004 () Bool)

(assert (=> b!1824378 (= e!1166004 tp_is_empty!8109)))

(declare-fun b!1824379 () Bool)

(declare-fun tp!515660 () Bool)

(declare-fun tp!515659 () Bool)

(assert (=> b!1824379 (= e!1166004 (and tp!515660 tp!515659))))

(declare-fun b!1824381 () Bool)

(declare-fun tp!515661 () Bool)

(declare-fun tp!515657 () Bool)

(assert (=> b!1824381 (= e!1166004 (and tp!515661 tp!515657))))

(assert (=> b!1823746 (= tp!515595 e!1166004)))

(declare-fun b!1824380 () Bool)

(declare-fun tp!515658 () Bool)

(assert (=> b!1824380 (= e!1166004 tp!515658)))

(assert (= (and b!1823746 ((_ is ElementMatch!4937) (regTwo!10387 (regex!3609 (h!25412 rules!4538))))) b!1824378))

(assert (= (and b!1823746 ((_ is Concat!8637) (regTwo!10387 (regex!3609 (h!25412 rules!4538))))) b!1824379))

(assert (= (and b!1823746 ((_ is Star!4937) (regTwo!10387 (regex!3609 (h!25412 rules!4538))))) b!1824380))

(assert (= (and b!1823746 ((_ is Union!4937) (regTwo!10387 (regex!3609 (h!25412 rules!4538))))) b!1824381))

(declare-fun b!1824382 () Bool)

(declare-fun e!1166005 () Bool)

(assert (=> b!1824382 (= e!1166005 tp_is_empty!8109)))

(declare-fun b!1824383 () Bool)

(declare-fun tp!515665 () Bool)

(declare-fun tp!515664 () Bool)

(assert (=> b!1824383 (= e!1166005 (and tp!515665 tp!515664))))

(declare-fun b!1824385 () Bool)

(declare-fun tp!515666 () Bool)

(declare-fun tp!515662 () Bool)

(assert (=> b!1824385 (= e!1166005 (and tp!515666 tp!515662))))

(assert (=> b!1823772 (= tp!515626 e!1166005)))

(declare-fun b!1824384 () Bool)

(declare-fun tp!515663 () Bool)

(assert (=> b!1824384 (= e!1166005 tp!515663)))

(assert (= (and b!1823772 ((_ is ElementMatch!4937) (regOne!10387 (regex!3609 rule!559)))) b!1824382))

(assert (= (and b!1823772 ((_ is Concat!8637) (regOne!10387 (regex!3609 rule!559)))) b!1824383))

(assert (= (and b!1823772 ((_ is Star!4937) (regOne!10387 (regex!3609 rule!559)))) b!1824384))

(assert (= (and b!1823772 ((_ is Union!4937) (regOne!10387 (regex!3609 rule!559)))) b!1824385))

(declare-fun b!1824386 () Bool)

(declare-fun e!1166006 () Bool)

(assert (=> b!1824386 (= e!1166006 tp_is_empty!8109)))

(declare-fun b!1824387 () Bool)

(declare-fun tp!515670 () Bool)

(declare-fun tp!515669 () Bool)

(assert (=> b!1824387 (= e!1166006 (and tp!515670 tp!515669))))

(declare-fun b!1824389 () Bool)

(declare-fun tp!515671 () Bool)

(declare-fun tp!515667 () Bool)

(assert (=> b!1824389 (= e!1166006 (and tp!515671 tp!515667))))

(assert (=> b!1823772 (= tp!515622 e!1166006)))

(declare-fun b!1824388 () Bool)

(declare-fun tp!515668 () Bool)

(assert (=> b!1824388 (= e!1166006 tp!515668)))

(assert (= (and b!1823772 ((_ is ElementMatch!4937) (regTwo!10387 (regex!3609 rule!559)))) b!1824386))

(assert (= (and b!1823772 ((_ is Concat!8637) (regTwo!10387 (regex!3609 rule!559)))) b!1824387))

(assert (= (and b!1823772 ((_ is Star!4937) (regTwo!10387 (regex!3609 rule!559)))) b!1824388))

(assert (= (and b!1823772 ((_ is Union!4937) (regTwo!10387 (regex!3609 rule!559)))) b!1824389))

(declare-fun b!1824390 () Bool)

(declare-fun e!1166007 () Bool)

(assert (=> b!1824390 (= e!1166007 tp_is_empty!8109)))

(declare-fun b!1824391 () Bool)

(declare-fun tp!515675 () Bool)

(declare-fun tp!515674 () Bool)

(assert (=> b!1824391 (= e!1166007 (and tp!515675 tp!515674))))

(declare-fun b!1824393 () Bool)

(declare-fun tp!515676 () Bool)

(declare-fun tp!515672 () Bool)

(assert (=> b!1824393 (= e!1166007 (and tp!515676 tp!515672))))

(assert (=> b!1823766 (= tp!515620 e!1166007)))

(declare-fun b!1824392 () Bool)

(declare-fun tp!515673 () Bool)

(assert (=> b!1824392 (= e!1166007 tp!515673)))

(assert (= (and b!1823766 ((_ is ElementMatch!4937) (regex!3609 (h!25412 (t!170022 rules!4538))))) b!1824390))

(assert (= (and b!1823766 ((_ is Concat!8637) (regex!3609 (h!25412 (t!170022 rules!4538))))) b!1824391))

(assert (= (and b!1823766 ((_ is Star!4937) (regex!3609 (h!25412 (t!170022 rules!4538))))) b!1824392))

(assert (= (and b!1823766 ((_ is Union!4937) (regex!3609 (h!25412 (t!170022 rules!4538))))) b!1824393))

(declare-fun b!1824394 () Bool)

(declare-fun e!1166008 () Bool)

(assert (=> b!1824394 (= e!1166008 tp_is_empty!8109)))

(declare-fun b!1824395 () Bool)

(declare-fun tp!515680 () Bool)

(declare-fun tp!515679 () Bool)

(assert (=> b!1824395 (= e!1166008 (and tp!515680 tp!515679))))

(declare-fun b!1824397 () Bool)

(declare-fun tp!515681 () Bool)

(declare-fun tp!515677 () Bool)

(assert (=> b!1824397 (= e!1166008 (and tp!515681 tp!515677))))

(assert (=> b!1823771 (= tp!515623 e!1166008)))

(declare-fun b!1824396 () Bool)

(declare-fun tp!515678 () Bool)

(assert (=> b!1824396 (= e!1166008 tp!515678)))

(assert (= (and b!1823771 ((_ is ElementMatch!4937) (reg!5266 (regex!3609 rule!559)))) b!1824394))

(assert (= (and b!1823771 ((_ is Concat!8637) (reg!5266 (regex!3609 rule!559)))) b!1824395))

(assert (= (and b!1823771 ((_ is Star!4937) (reg!5266 (regex!3609 rule!559)))) b!1824396))

(assert (= (and b!1823771 ((_ is Union!4937) (reg!5266 (regex!3609 rule!559)))) b!1824397))

(declare-fun b!1824398 () Bool)

(declare-fun e!1166009 () Bool)

(declare-fun tp!515682 () Bool)

(assert (=> b!1824398 (= e!1166009 (and tp_is_empty!8109 tp!515682))))

(assert (=> b!1823768 (= tp!515621 e!1166009)))

(assert (= (and b!1823768 ((_ is Cons!20010) (t!170021 (t!170021 input!3612)))) b!1824398))

(declare-fun b!1824399 () Bool)

(declare-fun e!1166010 () Bool)

(assert (=> b!1824399 (= e!1166010 tp_is_empty!8109)))

(declare-fun b!1824400 () Bool)

(declare-fun tp!515686 () Bool)

(declare-fun tp!515685 () Bool)

(assert (=> b!1824400 (= e!1166010 (and tp!515686 tp!515685))))

(declare-fun b!1824402 () Bool)

(declare-fun tp!515687 () Bool)

(declare-fun tp!515683 () Bool)

(assert (=> b!1824402 (= e!1166010 (and tp!515687 tp!515683))))

(assert (=> b!1823754 (= tp!515607 e!1166010)))

(declare-fun b!1824401 () Bool)

(declare-fun tp!515684 () Bool)

(assert (=> b!1824401 (= e!1166010 tp!515684)))

(assert (= (and b!1823754 ((_ is ElementMatch!4937) (regOne!10386 (regex!3609 (rule!5751 token!556))))) b!1824399))

(assert (= (and b!1823754 ((_ is Concat!8637) (regOne!10386 (regex!3609 (rule!5751 token!556))))) b!1824400))

(assert (= (and b!1823754 ((_ is Star!4937) (regOne!10386 (regex!3609 (rule!5751 token!556))))) b!1824401))

(assert (= (and b!1823754 ((_ is Union!4937) (regOne!10386 (regex!3609 (rule!5751 token!556))))) b!1824402))

(declare-fun b!1824403 () Bool)

(declare-fun e!1166011 () Bool)

(assert (=> b!1824403 (= e!1166011 tp_is_empty!8109)))

(declare-fun b!1824404 () Bool)

(declare-fun tp!515691 () Bool)

(declare-fun tp!515690 () Bool)

(assert (=> b!1824404 (= e!1166011 (and tp!515691 tp!515690))))

(declare-fun b!1824406 () Bool)

(declare-fun tp!515692 () Bool)

(declare-fun tp!515688 () Bool)

(assert (=> b!1824406 (= e!1166011 (and tp!515692 tp!515688))))

(assert (=> b!1823754 (= tp!515606 e!1166011)))

(declare-fun b!1824405 () Bool)

(declare-fun tp!515689 () Bool)

(assert (=> b!1824405 (= e!1166011 tp!515689)))

(assert (= (and b!1823754 ((_ is ElementMatch!4937) (regTwo!10386 (regex!3609 (rule!5751 token!556))))) b!1824403))

(assert (= (and b!1823754 ((_ is Concat!8637) (regTwo!10386 (regex!3609 (rule!5751 token!556))))) b!1824404))

(assert (= (and b!1823754 ((_ is Star!4937) (regTwo!10386 (regex!3609 (rule!5751 token!556))))) b!1824405))

(assert (= (and b!1823754 ((_ is Union!4937) (regTwo!10386 (regex!3609 (rule!5751 token!556))))) b!1824406))

(declare-fun e!1166021 () Bool)

(declare-fun b!1824425 () Bool)

(declare-fun tp!515700 () Bool)

(declare-fun tp!515701 () Bool)

(assert (=> b!1824425 (= e!1166021 (and (inv!26047 (left!16019 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))))) tp!515700 (inv!26047 (right!16349 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))))) tp!515701))))

(declare-fun b!1824427 () Bool)

(declare-fun e!1166022 () Bool)

(declare-fun tp!515699 () Bool)

(assert (=> b!1824427 (= e!1166022 tp!515699)))

(declare-fun b!1824426 () Bool)

(declare-fun inv!26053 (IArray!13287) Bool)

(assert (=> b!1824426 (= e!1166021 (and (inv!26053 (xs!9517 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))))) e!1166022))))

(assert (=> b!1823698 (= tp!515584 (and (inv!26047 (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556)))) e!1166021))))

(assert (= (and b!1823698 ((_ is Node!6641) (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))))) b!1824425))

(assert (= b!1824426 b!1824427))

(assert (= (and b!1823698 ((_ is Leaf!9666) (c!297454 (dynLambda!9945 (toChars!5003 (transformation!3609 (rule!5751 token!556))) (value!112523 token!556))))) b!1824426))

(declare-fun m!2253081 () Bool)

(assert (=> b!1824425 m!2253081))

(declare-fun m!2253083 () Bool)

(assert (=> b!1824425 m!2253083))

(declare-fun m!2253085 () Bool)

(assert (=> b!1824426 m!2253085))

(assert (=> b!1823698 m!2252235))

(declare-fun b!1824428 () Bool)

(declare-fun e!1166023 () Bool)

(declare-fun tp!515702 () Bool)

(assert (=> b!1824428 (= e!1166023 (and tp_is_empty!8109 tp!515702))))

(assert (=> b!1823751 (= tp!515602 e!1166023)))

(assert (= (and b!1823751 ((_ is Cons!20010) (t!170021 (t!170021 suffix!1667)))) b!1824428))

(declare-fun b!1824429 () Bool)

(declare-fun e!1166024 () Bool)

(assert (=> b!1824429 (= e!1166024 tp_is_empty!8109)))

(declare-fun b!1824430 () Bool)

(declare-fun tp!515706 () Bool)

(declare-fun tp!515705 () Bool)

(assert (=> b!1824430 (= e!1166024 (and tp!515706 tp!515705))))

(declare-fun b!1824432 () Bool)

(declare-fun tp!515707 () Bool)

(declare-fun tp!515703 () Bool)

(assert (=> b!1824432 (= e!1166024 (and tp!515707 tp!515703))))

(assert (=> b!1823755 (= tp!515605 e!1166024)))

(declare-fun b!1824431 () Bool)

(declare-fun tp!515704 () Bool)

(assert (=> b!1824431 (= e!1166024 tp!515704)))

(assert (= (and b!1823755 ((_ is ElementMatch!4937) (reg!5266 (regex!3609 (rule!5751 token!556))))) b!1824429))

(assert (= (and b!1823755 ((_ is Concat!8637) (reg!5266 (regex!3609 (rule!5751 token!556))))) b!1824430))

(assert (= (and b!1823755 ((_ is Star!4937) (reg!5266 (regex!3609 (rule!5751 token!556))))) b!1824431))

(assert (= (and b!1823755 ((_ is Union!4937) (reg!5266 (regex!3609 (rule!5751 token!556))))) b!1824432))

(declare-fun b!1824438 () Bool)

(declare-fun e!1166027 () Bool)

(declare-fun tp!515714 () Bool)

(assert (=> b!1824438 (= e!1166027 (and tp_is_empty!8109 tp!515714))))

(assert (=> b!1823752 (= tp!515603 e!1166027)))

(assert (= (and b!1823752 ((_ is Cons!20010) (t!170021 (originalCharacters!4417 token!556)))) b!1824438))

(declare-fun b!1824439 () Bool)

(declare-fun e!1166028 () Bool)

(assert (=> b!1824439 (= e!1166028 tp_is_empty!8109)))

(declare-fun b!1824440 () Bool)

(declare-fun tp!515718 () Bool)

(declare-fun tp!515717 () Bool)

(assert (=> b!1824440 (= e!1166028 (and tp!515718 tp!515717))))

(declare-fun b!1824442 () Bool)

(declare-fun tp!515719 () Bool)

(declare-fun tp!515715 () Bool)

(assert (=> b!1824442 (= e!1166028 (and tp!515719 tp!515715))))

(assert (=> b!1823756 (= tp!515608 e!1166028)))

(declare-fun b!1824441 () Bool)

(declare-fun tp!515716 () Bool)

(assert (=> b!1824441 (= e!1166028 tp!515716)))

(assert (= (and b!1823756 ((_ is ElementMatch!4937) (regOne!10387 (regex!3609 (rule!5751 token!556))))) b!1824439))

(assert (= (and b!1823756 ((_ is Concat!8637) (regOne!10387 (regex!3609 (rule!5751 token!556))))) b!1824440))

(assert (= (and b!1823756 ((_ is Star!4937) (regOne!10387 (regex!3609 (rule!5751 token!556))))) b!1824441))

(assert (= (and b!1823756 ((_ is Union!4937) (regOne!10387 (regex!3609 (rule!5751 token!556))))) b!1824442))

(declare-fun b!1824447 () Bool)

(declare-fun e!1166030 () Bool)

(assert (=> b!1824447 (= e!1166030 tp_is_empty!8109)))

(declare-fun b!1824448 () Bool)

(declare-fun tp!515728 () Bool)

(declare-fun tp!515727 () Bool)

(assert (=> b!1824448 (= e!1166030 (and tp!515728 tp!515727))))

(declare-fun b!1824450 () Bool)

(declare-fun tp!515729 () Bool)

(declare-fun tp!515725 () Bool)

(assert (=> b!1824450 (= e!1166030 (and tp!515729 tp!515725))))

(assert (=> b!1823756 (= tp!515604 e!1166030)))

(declare-fun b!1824449 () Bool)

(declare-fun tp!515726 () Bool)

(assert (=> b!1824449 (= e!1166030 tp!515726)))

(assert (= (and b!1823756 ((_ is ElementMatch!4937) (regTwo!10387 (regex!3609 (rule!5751 token!556))))) b!1824447))

(assert (= (and b!1823756 ((_ is Concat!8637) (regTwo!10387 (regex!3609 (rule!5751 token!556))))) b!1824448))

(assert (= (and b!1823756 ((_ is Star!4937) (regTwo!10387 (regex!3609 (rule!5751 token!556))))) b!1824449))

(assert (= (and b!1823756 ((_ is Union!4937) (regTwo!10387 (regex!3609 (rule!5751 token!556))))) b!1824450))

(declare-fun b!1824454 () Bool)

(declare-fun e!1166032 () Bool)

(assert (=> b!1824454 (= e!1166032 tp_is_empty!8109)))

(declare-fun b!1824456 () Bool)

(declare-fun tp!515738 () Bool)

(declare-fun tp!515737 () Bool)

(assert (=> b!1824456 (= e!1166032 (and tp!515738 tp!515737))))

(declare-fun b!1824458 () Bool)

(declare-fun tp!515739 () Bool)

(declare-fun tp!515732 () Bool)

(assert (=> b!1824458 (= e!1166032 (and tp!515739 tp!515732))))

(assert (=> b!1823744 (= tp!515598 e!1166032)))

(declare-fun b!1824457 () Bool)

(declare-fun tp!515734 () Bool)

(assert (=> b!1824457 (= e!1166032 tp!515734)))

(assert (= (and b!1823744 ((_ is ElementMatch!4937) (regOne!10386 (regex!3609 (h!25412 rules!4538))))) b!1824454))

(assert (= (and b!1823744 ((_ is Concat!8637) (regOne!10386 (regex!3609 (h!25412 rules!4538))))) b!1824456))

(assert (= (and b!1823744 ((_ is Star!4937) (regOne!10386 (regex!3609 (h!25412 rules!4538))))) b!1824457))

(assert (= (and b!1823744 ((_ is Union!4937) (regOne!10386 (regex!3609 (h!25412 rules!4538))))) b!1824458))

(declare-fun b!1824460 () Bool)

(declare-fun e!1166034 () Bool)

(assert (=> b!1824460 (= e!1166034 tp_is_empty!8109)))

(declare-fun b!1824462 () Bool)

(declare-fun tp!515747 () Bool)

(declare-fun tp!515745 () Bool)

(assert (=> b!1824462 (= e!1166034 (and tp!515747 tp!515745))))

(declare-fun b!1824466 () Bool)

(declare-fun tp!515749 () Bool)

(declare-fun tp!515741 () Bool)

(assert (=> b!1824466 (= e!1166034 (and tp!515749 tp!515741))))

(assert (=> b!1823744 (= tp!515597 e!1166034)))

(declare-fun b!1824464 () Bool)

(declare-fun tp!515743 () Bool)

(assert (=> b!1824464 (= e!1166034 tp!515743)))

(assert (= (and b!1823744 ((_ is ElementMatch!4937) (regTwo!10386 (regex!3609 (h!25412 rules!4538))))) b!1824460))

(assert (= (and b!1823744 ((_ is Concat!8637) (regTwo!10386 (regex!3609 (h!25412 rules!4538))))) b!1824462))

(assert (= (and b!1823744 ((_ is Star!4937) (regTwo!10386 (regex!3609 (h!25412 rules!4538))))) b!1824464))

(assert (= (and b!1823744 ((_ is Union!4937) (regTwo!10386 (regex!3609 (h!25412 rules!4538))))) b!1824466))

(declare-fun b_lambda!60245 () Bool)

(assert (= b_lambda!60239 (or (and b!1824365 b_free!50739 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823356 b_free!50727) (and b!1823368 b_free!50723 (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823361 b_free!50719 (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823767 b_free!50735 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 rule!559)))) b_lambda!60245)))

(declare-fun b_lambda!60247 () Bool)

(assert (= b_lambda!60237 (or (and b!1824365 b_free!50741 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toChars!5003 (transformation!3609 rule!559)))) (and b!1823356 b_free!50729) (and b!1823767 b_free!50737 (= (toChars!5003 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toChars!5003 (transformation!3609 rule!559)))) (and b!1823361 b_free!50721 (= (toChars!5003 (transformation!3609 (h!25412 rules!4538))) (toChars!5003 (transformation!3609 rule!559)))) (and b!1823368 b_free!50725 (= (toChars!5003 (transformation!3609 (rule!5751 token!556))) (toChars!5003 (transformation!3609 rule!559)))) b_lambda!60247)))

(declare-fun b_lambda!60249 () Bool)

(assert (= b_lambda!60241 (or (and b!1824365 b_free!50739 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 (t!170022 rules!4538))))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823356 b_free!50727) (and b!1823368 b_free!50723 (= (toValue!5144 (transformation!3609 (rule!5751 token!556))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823361 b_free!50719 (= (toValue!5144 (transformation!3609 (h!25412 rules!4538))) (toValue!5144 (transformation!3609 rule!559)))) (and b!1823767 b_free!50735 (= (toValue!5144 (transformation!3609 (h!25412 (t!170022 rules!4538)))) (toValue!5144 (transformation!3609 rule!559)))) b_lambda!60249)))

(check-sat (not b!1824211) b_and!141631 (not b!1824462) (not d!558235) (not d!558193) (not b!1823928) (not b!1824427) (not b!1824330) (not d!558175) b_and!141635 (not b!1824177) (not d!558305) (not b!1824320) (not b!1824361) (not b!1823938) (not b!1823802) (not b!1824070) (not b!1824265) (not b!1824309) (not b!1824076) (not bm!114397) (not b!1824387) (not b!1824464) (not b!1824395) (not b!1824176) (not b!1824368) (not b!1824377) (not b!1823865) (not b!1824432) (not tb!111437) (not b!1823816) (not tb!111389) (not b!1824372) (not b!1824171) (not d!558369) (not b!1824384) (not b!1824145) (not b!1824280) (not b!1824376) (not b!1824322) (not b!1824373) (not bm!114398) (not bm!114469) (not b!1824312) (not b!1824314) (not b!1824400) (not b!1824061) (not b!1824440) (not b_lambda!60249) b_and!141629 (not b!1823863) (not b!1824275) (not b_next!51423) (not b!1824450) (not b!1824281) (not b!1824336) (not b_lambda!60231) (not b!1823958) (not d!558423) (not b_next!51429) (not b!1824396) (not b_next!51439) (not b!1824311) (not d!558447) (not bm!114436) (not b!1824466) (not b!1823855) (not b!1823817) (not b!1824363) (not b!1824062) (not b!1823977) (not b!1824162) (not b_next!51425) (not b!1824316) (not b!1824060) (not bm!114457) (not d!558339) (not b!1823956) (not b!1824431) (not d!558457) (not bm!114458) (not d!558185) (not tb!111429) (not b!1824425) (not b!1824243) (not tb!111405) (not b!1824406) (not d!558295) (not b!1824245) (not d!558471) (not b_next!51433) (not b!1824397) (not d!558265) (not b!1824317) b_and!141613 (not d!558267) (not b!1824073) (not b_next!51431) (not b!1824178) (not b!1823839) (not b!1824360) (not d!558475) (not b!1824200) (not b!1824375) (not d!558387) (not d!558437) (not b_next!51445) (not b!1824247) (not b!1824068) (not b!1824282) (not d!558325) (not d!558463) (not d!558205) (not tb!111413) (not d!558425) (not b!1823806) tp_is_empty!8109 (not b_lambda!60225) (not b!1824328) (not b!1824198) (not b!1823866) (not b!1824333) (not b!1824164) (not d!558477) (not d!558327) (not b!1824364) (not b!1824337) (not b!1824404) (not b_next!51427) b_and!141615 (not b!1824385) (not b!1824392) (not b!1824428) (not d!558403) (not bm!114431) (not b!1823854) (not b_lambda!60229) (not b!1824430) (not b!1824276) (not d!558391) (not b!1823861) (not b!1824212) (not b!1823790) (not d!558269) (not b_lambda!60247) (not bm!114385) (not b!1824401) (not b!1824448) (not b_next!51443) (not b!1824072) (not b!1823698) (not b!1824398) b_and!141619 (not b!1824213) (not b!1823805) (not d!558313) (not d!558359) (not d!558195) (not d!558473) (not b!1824369) (not b_lambda!60215) (not b_lambda!60245) (not bm!114471) (not d!558469) (not d!558345) (not b!1824442) (not b!1824332) (not b!1824170) (not b!1824449) (not b!1824371) (not b!1824362) (not b!1823996) (not d!558341) (not b!1824391) (not b!1824208) (not b!1823976) (not b!1824284) (not b!1824456) (not b!1824278) (not b!1823929) (not b!1824215) (not b!1823995) (not b!1824402) (not bm!114438) (not b!1823814) (not b!1824175) b_and!141633 (not bm!114394) (not b!1824161) (not b!1824367) (not d!558393) (not b!1824379) (not b!1824380) b_and!141617 (not bm!114433) (not bm!114434) (not d!558413) (not d!558389) (not bm!114437) (not d!558303) (not b!1824457) (not b!1824383) (not b_lambda!60213) (not b!1824264) (not b!1823804) (not b_lambda!60211) (not b!1823812) (not b!1824389) (not d!558307) (not bm!114432) (not b!1824438) (not tb!111445) (not b!1824321) (not d!558203) (not b!1824173) (not b!1824426) (not d!558233) (not b!1824388) (not b_next!51441) (not b!1824405) (not b!1824147) (not d!558201) (not b!1823935) (not b!1824393) (not b!1824172) b_and!141645 (not b!1824218) (not d!558207) (not bm!114435) (not b!1824277) (not b!1823800) (not d!558467) (not b!1824441) (not b_lambda!60235) (not d!558401) (not b!1824458) (not b!1823978) b_and!141647 (not bm!114455) (not b!1824224) (not b!1824381) (not d!558253) (not b!1824283))
(check-sat b_and!141631 b_and!141635 (not b_next!51429) (not b_next!51439) (not b_next!51425) (not b_next!51433) (not b_next!51445) (not b_next!51443) b_and!141619 b_and!141633 b_and!141617 (not b_next!51441) b_and!141645 b_and!141647 b_and!141629 (not b_next!51423) b_and!141613 (not b_next!51431) (not b_next!51427) b_and!141615)

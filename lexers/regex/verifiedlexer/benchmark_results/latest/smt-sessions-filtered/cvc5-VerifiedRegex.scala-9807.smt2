; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!513122 () Bool)

(assert start!513122)

(declare-fun b!4898272 () Bool)

(declare-fun b_free!131647 () Bool)

(declare-fun b_next!132437 () Bool)

(assert (=> b!4898272 (= b_free!131647 (not b_next!132437))))

(declare-fun tp!1378211 () Bool)

(declare-fun b_and!345607 () Bool)

(assert (=> b!4898272 (= tp!1378211 b_and!345607)))

(declare-fun b_free!131649 () Bool)

(declare-fun b_next!132439 () Bool)

(assert (=> b!4898272 (= b_free!131649 (not b_next!132439))))

(declare-fun tp!1378214 () Bool)

(declare-fun b_and!345609 () Bool)

(assert (=> b!4898272 (= tp!1378214 b_and!345609)))

(declare-fun b!4898268 () Bool)

(declare-fun e!3061916 () Bool)

(declare-fun e!3061920 () Bool)

(declare-fun tp!1378213 () Bool)

(assert (=> b!4898268 (= e!3061916 (and e!3061920 tp!1378213))))

(declare-fun b!4898269 () Bool)

(declare-fun e!3061928 () Bool)

(declare-datatypes ((C!26710 0))(
  ( (C!26711 (val!22689 Int)) )
))
(declare-datatypes ((List!56552 0))(
  ( (Nil!56428) (Cons!56428 (h!62876 C!26710) (t!366238 List!56552)) )
))
(declare-datatypes ((IArray!29559 0))(
  ( (IArray!29560 (innerList!14837 List!56552)) )
))
(declare-datatypes ((Conc!14749 0))(
  ( (Node!14749 (left!41002 Conc!14749) (right!41332 Conc!14749) (csize!29728 Int) (cheight!14960 Int)) (Leaf!24557 (xs!18065 IArray!29559) (csize!29729 Int)) (Empty!14749) )
))
(declare-datatypes ((BalanceConc!28928 0))(
  ( (BalanceConc!28929 (c!832544 Conc!14749)) )
))
(declare-datatypes ((List!56553 0))(
  ( (Nil!56429) (Cons!56429 (h!62877 (_ BitVec 16)) (t!366239 List!56553)) )
))
(declare-datatypes ((TokenValue!8491 0))(
  ( (FloatLiteralValue!16982 (text!59882 List!56553)) (TokenValueExt!8490 (__x!34275 Int)) (Broken!42455 (value!262284 List!56553)) (Object!8614) (End!8491) (Def!8491) (Underscore!8491) (Match!8491) (Else!8491) (Error!8491) (Case!8491) (If!8491) (Extends!8491) (Abstract!8491) (Class!8491) (Val!8491) (DelimiterValue!16982 (del!8551 List!56553)) (KeywordValue!8497 (value!262285 List!56553)) (CommentValue!16982 (value!262286 List!56553)) (WhitespaceValue!16982 (value!262287 List!56553)) (IndentationValue!8491 (value!262288 List!56553)) (String!63898) (Int32!8491) (Broken!42456 (value!262289 List!56553)) (Boolean!8492) (Unit!146502) (OperatorValue!8494 (op!8551 List!56553)) (IdentifierValue!16982 (value!262290 List!56553)) (IdentifierValue!16983 (value!262291 List!56553)) (WhitespaceValue!16983 (value!262292 List!56553)) (True!16982) (False!16982) (Broken!42457 (value!262293 List!56553)) (Broken!42458 (value!262294 List!56553)) (True!16983) (RightBrace!8491) (RightBracket!8491) (Colon!8491) (Null!8491) (Comma!8491) (LeftBracket!8491) (False!16983) (LeftBrace!8491) (ImaginaryLiteralValue!8491 (text!59883 List!56553)) (StringLiteralValue!25473 (value!262295 List!56553)) (EOFValue!8491 (value!262296 List!56553)) (IdentValue!8491 (value!262297 List!56553)) (DelimiterValue!16983 (value!262298 List!56553)) (DedentValue!8491 (value!262299 List!56553)) (NewLineValue!8491 (value!262300 List!56553)) (IntegerValue!25473 (value!262301 (_ BitVec 32)) (text!59884 List!56553)) (IntegerValue!25474 (value!262302 Int) (text!59885 List!56553)) (Times!8491) (Or!8491) (Equal!8491) (Minus!8491) (Broken!42459 (value!262303 List!56553)) (And!8491) (Div!8491) (LessEqual!8491) (Mod!8491) (Concat!21747) (Not!8491) (Plus!8491) (SpaceValue!8491 (value!262304 List!56553)) (IntegerValue!25475 (value!262305 Int) (text!59886 List!56553)) (StringLiteralValue!25474 (text!59887 List!56553)) (FloatLiteralValue!16983 (text!59888 List!56553)) (BytesLiteralValue!8491 (value!262306 List!56553)) (CommentValue!16983 (value!262307 List!56553)) (StringLiteralValue!25475 (value!262308 List!56553)) (ErrorTokenValue!8491 (msg!8552 List!56553)) )
))
(declare-datatypes ((Regex!13256 0))(
  ( (ElementMatch!13256 (c!832545 C!26710)) (Concat!21748 (regOne!27024 Regex!13256) (regTwo!27024 Regex!13256)) (EmptyExpr!13256) (Star!13256 (reg!13585 Regex!13256)) (EmptyLang!13256) (Union!13256 (regOne!27025 Regex!13256) (regTwo!27025 Regex!13256)) )
))
(declare-datatypes ((String!63899 0))(
  ( (String!63900 (value!262309 String)) )
))
(declare-datatypes ((TokenValueInjection!16290 0))(
  ( (TokenValueInjection!16291 (toValue!11088 Int) (toChars!10947 Int)) )
))
(declare-datatypes ((Rule!16162 0))(
  ( (Rule!16163 (regex!8181 Regex!13256) (tag!9045 String!63899) (isSeparator!8181 Bool) (transformation!8181 TokenValueInjection!16290)) )
))
(declare-datatypes ((Token!14926 0))(
  ( (Token!14927 (value!262310 TokenValue!8491) (rule!11389 Rule!16162) (size!37167 Int) (originalCharacters!8494 List!56552)) )
))
(declare-datatypes ((tuple2!60504 0))(
  ( (tuple2!60505 (_1!33555 Token!14926) (_2!33555 BalanceConc!28928)) )
))
(declare-fun lt!2008468 () tuple2!60504)

(declare-datatypes ((tuple2!60506 0))(
  ( (tuple2!60507 (_1!33556 Token!14926) (_2!33556 List!56552)) )
))
(declare-fun lt!2008469 () tuple2!60506)

(declare-fun list!17745 (BalanceConc!28928) List!56552)

(assert (=> b!4898269 (= e!3061928 (= (list!17745 (_2!33555 lt!2008468)) (_2!33556 lt!2008469)))))

(declare-fun b!4898270 () Bool)

(declare-fun e!3061918 () Bool)

(declare-fun e!3061922 () Bool)

(assert (=> b!4898270 (= e!3061918 e!3061922)))

(declare-fun res!2092204 () Bool)

(assert (=> b!4898270 (=> (not res!2092204) (not e!3061922))))

(declare-fun lt!2008470 () tuple2!60504)

(declare-fun lt!2008473 () tuple2!60506)

(assert (=> b!4898270 (= res!2092204 (= (_1!33555 lt!2008470) (_1!33556 lt!2008473)))))

(declare-datatypes ((Option!14039 0))(
  ( (None!14038) (Some!14038 (v!49998 tuple2!60506)) )
))
(declare-fun lt!2008474 () Option!14039)

(declare-fun get!19496 (Option!14039) tuple2!60506)

(assert (=> b!4898270 (= lt!2008473 (get!19496 lt!2008474))))

(declare-datatypes ((Option!14040 0))(
  ( (None!14039) (Some!14039 (v!49999 tuple2!60504)) )
))
(declare-fun lt!2008475 () Option!14040)

(declare-fun get!19497 (Option!14040) tuple2!60504)

(assert (=> b!4898270 (= lt!2008470 (get!19497 lt!2008475))))

(declare-fun b!4898271 () Bool)

(declare-fun e!3061921 () Bool)

(declare-fun e!3061915 () Bool)

(assert (=> b!4898271 (= e!3061921 e!3061915)))

(declare-fun res!2092206 () Bool)

(assert (=> b!4898271 (=> (not res!2092206) (not e!3061915))))

(assert (=> b!4898271 (= res!2092206 e!3061918)))

(declare-fun res!2092197 () Bool)

(assert (=> b!4898271 (=> res!2092197 e!3061918)))

(declare-fun lt!2008477 () Bool)

(assert (=> b!4898271 (= res!2092197 lt!2008477)))

(declare-fun lt!2008471 () Bool)

(assert (=> b!4898271 (= lt!2008477 (not lt!2008471))))

(declare-fun e!3061925 () Bool)

(assert (=> b!4898272 (= e!3061925 (and tp!1378211 tp!1378214))))

(declare-fun b!4898273 () Bool)

(declare-fun e!3061923 () Bool)

(assert (=> b!4898273 (= e!3061923 e!3061928)))

(declare-fun res!2092199 () Bool)

(assert (=> b!4898273 (=> (not res!2092199) (not e!3061928))))

(assert (=> b!4898273 (= res!2092199 (= (_1!33555 lt!2008468) (_1!33556 lt!2008469)))))

(declare-datatypes ((LexerInterface!7773 0))(
  ( (LexerInterfaceExt!7770 (__x!34276 Int)) (Lexer!7771) )
))
(declare-fun thiss!14805 () LexerInterface!7773)

(declare-fun lt!2008472 () List!56552)

(declare-datatypes ((List!56554 0))(
  ( (Nil!56430) (Cons!56430 (h!62878 Rule!16162) (t!366240 List!56554)) )
))
(declare-fun rulesArg!165 () List!56554)

(declare-fun maxPrefix!4610 (LexerInterface!7773 List!56554 List!56552) Option!14039)

(assert (=> b!4898273 (= lt!2008469 (get!19496 (maxPrefix!4610 thiss!14805 rulesArg!165 lt!2008472)))))

(assert (=> b!4898273 (= lt!2008468 (get!19497 lt!2008475))))

(declare-fun b!4898274 () Bool)

(declare-fun e!3061927 () Bool)

(declare-fun e!3061924 () Bool)

(assert (=> b!4898274 (= e!3061927 (not e!3061924))))

(declare-fun res!2092201 () Bool)

(assert (=> b!4898274 (=> res!2092201 e!3061924)))

(assert (=> b!4898274 (= res!2092201 (or (and (is-Cons!56430 rulesArg!165) (is-Nil!56430 (t!366240 rulesArg!165))) (not (is-Cons!56430 rulesArg!165))))))

(declare-fun isPrefix!4901 (List!56552 List!56552) Bool)

(assert (=> b!4898274 (isPrefix!4901 lt!2008472 lt!2008472)))

(declare-datatypes ((Unit!146503 0))(
  ( (Unit!146504) )
))
(declare-fun lt!2008476 () Unit!146503)

(declare-fun lemmaIsPrefixRefl!3298 (List!56552 List!56552) Unit!146503)

(assert (=> b!4898274 (= lt!2008476 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(declare-fun input!1236 () BalanceConc!28928)

(assert (=> b!4898274 (= lt!2008472 (list!17745 input!1236))))

(declare-fun b!4898275 () Bool)

(declare-fun e!3061917 () Bool)

(assert (=> b!4898275 (= e!3061917 e!3061921)))

(declare-fun res!2092202 () Bool)

(assert (=> b!4898275 (=> (not res!2092202) (not e!3061921))))

(declare-fun isDefined!11052 (Option!14039) Bool)

(assert (=> b!4898275 (= res!2092202 (= lt!2008471 (isDefined!11052 lt!2008474)))))

(declare-fun isDefined!11053 (Option!14040) Bool)

(assert (=> b!4898275 (= lt!2008471 (isDefined!11053 lt!2008475))))

(declare-fun maxPrefixZipper!680 (LexerInterface!7773 List!56554 List!56552) Option!14039)

(assert (=> b!4898275 (= lt!2008474 (maxPrefixZipper!680 thiss!14805 rulesArg!165 lt!2008472))))

(declare-fun res!2092200 () Bool)

(assert (=> start!513122 (=> (not res!2092200) (not e!3061927))))

(assert (=> start!513122 (= res!2092200 (is-Lexer!7771 thiss!14805))))

(assert (=> start!513122 e!3061927))

(assert (=> start!513122 true))

(assert (=> start!513122 e!3061916))

(declare-fun e!3061919 () Bool)

(declare-fun inv!72734 (BalanceConc!28928) Bool)

(assert (=> start!513122 (and (inv!72734 input!1236) e!3061919)))

(declare-fun b!4898276 () Bool)

(declare-fun tp!1378210 () Bool)

(declare-fun inv!72735 (Conc!14749) Bool)

(assert (=> b!4898276 (= e!3061919 (and (inv!72735 (c!832544 input!1236)) tp!1378210))))

(declare-fun b!4898277 () Bool)

(declare-fun res!2092203 () Bool)

(assert (=> b!4898277 (=> (not res!2092203) (not e!3061927))))

(declare-fun isEmpty!30301 (List!56554) Bool)

(assert (=> b!4898277 (= res!2092203 (not (isEmpty!30301 rulesArg!165)))))

(declare-fun b!4898278 () Bool)

(assert (=> b!4898278 (= e!3061922 (= (list!17745 (_2!33555 lt!2008470)) (_2!33556 lt!2008473)))))

(declare-fun b!4898279 () Bool)

(declare-fun tp!1378212 () Bool)

(declare-fun inv!72731 (String!63899) Bool)

(declare-fun inv!72736 (TokenValueInjection!16290) Bool)

(assert (=> b!4898279 (= e!3061920 (and tp!1378212 (inv!72731 (tag!9045 (h!62878 rulesArg!165))) (inv!72736 (transformation!8181 (h!62878 rulesArg!165))) e!3061925))))

(declare-fun b!4898280 () Bool)

(declare-fun res!2092198 () Bool)

(assert (=> b!4898280 (=> (not res!2092198) (not e!3061927))))

(declare-fun rulesValidInductive!3160 (LexerInterface!7773 List!56554) Bool)

(assert (=> b!4898280 (= res!2092198 (rulesValidInductive!3160 thiss!14805 rulesArg!165))))

(declare-fun b!4898281 () Bool)

(assert (=> b!4898281 (= e!3061924 e!3061917)))

(declare-fun res!2092196 () Bool)

(assert (=> b!4898281 (=> res!2092196 e!3061917)))

(declare-fun lt!2008478 () Option!14040)

(assert (=> b!4898281 (= res!2092196 (or (and (is-None!14039 lt!2008478) (is-None!14039 lt!2008475)) (is-None!14039 lt!2008475) (is-None!14039 lt!2008478) (>= (size!37167 (_1!33555 (v!49999 lt!2008478))) (size!37167 (_1!33555 (v!49999 lt!2008475))))))))

(declare-fun maxPrefixZipperSequence!1322 (LexerInterface!7773 List!56554 BalanceConc!28928) Option!14040)

(assert (=> b!4898281 (= lt!2008475 (maxPrefixZipperSequence!1322 thiss!14805 (t!366240 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!691 (LexerInterface!7773 Rule!16162 BalanceConc!28928) Option!14040)

(assert (=> b!4898281 (= lt!2008478 (maxPrefixOneRuleZipperSequence!691 thiss!14805 (h!62878 rulesArg!165) input!1236))))

(declare-fun b!4898282 () Bool)

(assert (=> b!4898282 (= e!3061915 e!3061923)))

(declare-fun res!2092205 () Bool)

(assert (=> b!4898282 (=> res!2092205 e!3061923)))

(assert (=> b!4898282 (= res!2092205 lt!2008477)))

(assert (= (and start!513122 res!2092200) b!4898280))

(assert (= (and b!4898280 res!2092198) b!4898277))

(assert (= (and b!4898277 res!2092203) b!4898274))

(assert (= (and b!4898274 (not res!2092201)) b!4898281))

(assert (= (and b!4898281 (not res!2092196)) b!4898275))

(assert (= (and b!4898275 res!2092202) b!4898271))

(assert (= (and b!4898271 (not res!2092197)) b!4898270))

(assert (= (and b!4898270 res!2092204) b!4898278))

(assert (= (and b!4898271 res!2092206) b!4898282))

(assert (= (and b!4898282 (not res!2092205)) b!4898273))

(assert (= (and b!4898273 res!2092199) b!4898269))

(assert (= b!4898279 b!4898272))

(assert (= b!4898268 b!4898279))

(assert (= (and start!513122 (is-Cons!56430 rulesArg!165)) b!4898268))

(assert (= start!513122 b!4898276))

(declare-fun m!5905530 () Bool)

(assert (=> b!4898280 m!5905530))

(declare-fun m!5905532 () Bool)

(assert (=> b!4898278 m!5905532))

(declare-fun m!5905534 () Bool)

(assert (=> b!4898281 m!5905534))

(declare-fun m!5905536 () Bool)

(assert (=> b!4898281 m!5905536))

(declare-fun m!5905538 () Bool)

(assert (=> b!4898270 m!5905538))

(declare-fun m!5905540 () Bool)

(assert (=> b!4898270 m!5905540))

(declare-fun m!5905542 () Bool)

(assert (=> start!513122 m!5905542))

(declare-fun m!5905544 () Bool)

(assert (=> b!4898269 m!5905544))

(declare-fun m!5905546 () Bool)

(assert (=> b!4898276 m!5905546))

(declare-fun m!5905548 () Bool)

(assert (=> b!4898277 m!5905548))

(declare-fun m!5905550 () Bool)

(assert (=> b!4898273 m!5905550))

(assert (=> b!4898273 m!5905550))

(declare-fun m!5905552 () Bool)

(assert (=> b!4898273 m!5905552))

(assert (=> b!4898273 m!5905540))

(declare-fun m!5905554 () Bool)

(assert (=> b!4898279 m!5905554))

(declare-fun m!5905556 () Bool)

(assert (=> b!4898279 m!5905556))

(declare-fun m!5905558 () Bool)

(assert (=> b!4898274 m!5905558))

(declare-fun m!5905560 () Bool)

(assert (=> b!4898274 m!5905560))

(declare-fun m!5905562 () Bool)

(assert (=> b!4898274 m!5905562))

(declare-fun m!5905564 () Bool)

(assert (=> b!4898275 m!5905564))

(declare-fun m!5905566 () Bool)

(assert (=> b!4898275 m!5905566))

(declare-fun m!5905568 () Bool)

(assert (=> b!4898275 m!5905568))

(push 1)

(assert (not b!4898278))

(assert (not b!4898277))

(assert b_and!345607)

(assert (not b!4898268))

(assert (not b!4898279))

(assert (not b!4898274))

(assert (not b!4898281))

(assert (not b!4898270))

(assert (not b!4898275))

(assert (not b_next!132437))

(assert b_and!345609)

(assert (not b!4898276))

(assert (not b!4898269))

(assert (not b_next!132439))

(assert (not start!513122))

(assert (not b!4898273))

(assert (not b!4898280))

(check-sat)

(pop 1)

(push 1)

(assert b_and!345609)

(assert b_and!345607)

(assert (not b_next!132437))

(assert (not b_next!132439))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1574008 () Bool)

(assert (=> d!1574008 (= (get!19496 (maxPrefix!4610 thiss!14805 rulesArg!165 lt!2008472)) (v!49998 (maxPrefix!4610 thiss!14805 rulesArg!165 lt!2008472)))))

(assert (=> b!4898273 d!1574008))

(declare-fun bm!339804 () Bool)

(declare-fun call!339809 () Option!14039)

(declare-fun maxPrefixOneRule!3536 (LexerInterface!7773 Rule!16162 List!56552) Option!14039)

(assert (=> bm!339804 (= call!339809 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) lt!2008472))))

(declare-fun b!4898347 () Bool)

(declare-fun res!2092275 () Bool)

(declare-fun e!3061979 () Bool)

(assert (=> b!4898347 (=> (not res!2092275) (not e!3061979))))

(declare-fun lt!2008523 () Option!14039)

(declare-fun ++!12250 (List!56552 List!56552) List!56552)

(declare-fun charsOf!5381 (Token!14926) BalanceConc!28928)

(assert (=> b!4898347 (= res!2092275 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))) (_2!33556 (get!19496 lt!2008523))) lt!2008472))))

(declare-fun b!4898348 () Bool)

(declare-fun contains!19444 (List!56554 Rule!16162) Bool)

(assert (=> b!4898348 (= e!3061979 (contains!19444 rulesArg!165 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))

(declare-fun b!4898349 () Bool)

(declare-fun e!3061978 () Option!14039)

(declare-fun lt!2008525 () Option!14039)

(declare-fun lt!2008526 () Option!14039)

(assert (=> b!4898349 (= e!3061978 (ite (and (is-None!14038 lt!2008525) (is-None!14038 lt!2008526)) None!14038 (ite (is-None!14038 lt!2008526) lt!2008525 (ite (is-None!14038 lt!2008525) lt!2008526 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2008525))) (size!37167 (_1!33556 (v!49998 lt!2008526)))) lt!2008525 lt!2008526)))))))

(assert (=> b!4898349 (= lt!2008525 call!339809)))

(assert (=> b!4898349 (= lt!2008526 (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) lt!2008472))))

(declare-fun b!4898350 () Bool)

(declare-fun res!2092279 () Bool)

(assert (=> b!4898350 (=> (not res!2092279) (not e!3061979))))

(declare-fun matchR!6537 (Regex!13256 List!56552) Bool)

(assert (=> b!4898350 (= res!2092279 (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4898351 () Bool)

(declare-fun res!2092274 () Bool)

(assert (=> b!4898351 (=> (not res!2092274) (not e!3061979))))

(declare-fun apply!13547 (TokenValueInjection!16290 BalanceConc!28928) TokenValue!8491)

(declare-fun seqFromList!5943 (List!56552) BalanceConc!28928)

(assert (=> b!4898351 (= res!2092274 (= (value!262310 (_1!33556 (get!19496 lt!2008523))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4898352 () Bool)

(assert (=> b!4898352 (= e!3061978 call!339809)))

(declare-fun d!1574010 () Bool)

(declare-fun e!3061977 () Bool)

(assert (=> d!1574010 e!3061977))

(declare-fun res!2092276 () Bool)

(assert (=> d!1574010 (=> res!2092276 e!3061977)))

(declare-fun isEmpty!30303 (Option!14039) Bool)

(assert (=> d!1574010 (= res!2092276 (isEmpty!30303 lt!2008523))))

(assert (=> d!1574010 (= lt!2008523 e!3061978)))

(declare-fun c!832551 () Bool)

(assert (=> d!1574010 (= c!832551 (and (is-Cons!56430 rulesArg!165) (is-Nil!56430 (t!366240 rulesArg!165))))))

(declare-fun lt!2008522 () Unit!146503)

(declare-fun lt!2008524 () Unit!146503)

(assert (=> d!1574010 (= lt!2008522 lt!2008524)))

(assert (=> d!1574010 (isPrefix!4901 lt!2008472 lt!2008472)))

(assert (=> d!1574010 (= lt!2008524 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(assert (=> d!1574010 (rulesValidInductive!3160 thiss!14805 rulesArg!165)))

(assert (=> d!1574010 (= (maxPrefix!4610 thiss!14805 rulesArg!165 lt!2008472) lt!2008523)))

(declare-fun b!4898346 () Bool)

(assert (=> b!4898346 (= e!3061977 e!3061979)))

(declare-fun res!2092278 () Bool)

(assert (=> b!4898346 (=> (not res!2092278) (not e!3061979))))

(assert (=> b!4898346 (= res!2092278 (isDefined!11052 lt!2008523))))

(declare-fun b!4898353 () Bool)

(declare-fun res!2092273 () Bool)

(assert (=> b!4898353 (=> (not res!2092273) (not e!3061979))))

(declare-fun size!37169 (List!56552) Int)

(assert (=> b!4898353 (= res!2092273 (< (size!37169 (_2!33556 (get!19496 lt!2008523))) (size!37169 lt!2008472)))))

(declare-fun b!4898354 () Bool)

(declare-fun res!2092277 () Bool)

(assert (=> b!4898354 (=> (not res!2092277) (not e!3061979))))

(assert (=> b!4898354 (= res!2092277 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))

(assert (= (and d!1574010 c!832551) b!4898352))

(assert (= (and d!1574010 (not c!832551)) b!4898349))

(assert (= (or b!4898352 b!4898349) bm!339804))

(assert (= (and d!1574010 (not res!2092276)) b!4898346))

(assert (= (and b!4898346 res!2092278) b!4898354))

(assert (= (and b!4898354 res!2092277) b!4898353))

(assert (= (and b!4898353 res!2092273) b!4898347))

(assert (= (and b!4898347 res!2092275) b!4898351))

(assert (= (and b!4898351 res!2092274) b!4898350))

(assert (= (and b!4898350 res!2092279) b!4898348))

(declare-fun m!5905610 () Bool)

(assert (=> b!4898347 m!5905610))

(declare-fun m!5905612 () Bool)

(assert (=> b!4898347 m!5905612))

(assert (=> b!4898347 m!5905612))

(declare-fun m!5905614 () Bool)

(assert (=> b!4898347 m!5905614))

(assert (=> b!4898347 m!5905614))

(declare-fun m!5905616 () Bool)

(assert (=> b!4898347 m!5905616))

(assert (=> b!4898354 m!5905610))

(assert (=> b!4898354 m!5905612))

(assert (=> b!4898354 m!5905612))

(assert (=> b!4898354 m!5905614))

(assert (=> b!4898351 m!5905610))

(declare-fun m!5905618 () Bool)

(assert (=> b!4898351 m!5905618))

(assert (=> b!4898351 m!5905618))

(declare-fun m!5905620 () Bool)

(assert (=> b!4898351 m!5905620))

(assert (=> b!4898350 m!5905610))

(assert (=> b!4898350 m!5905612))

(assert (=> b!4898350 m!5905612))

(assert (=> b!4898350 m!5905614))

(assert (=> b!4898350 m!5905614))

(declare-fun m!5905622 () Bool)

(assert (=> b!4898350 m!5905622))

(assert (=> b!4898348 m!5905610))

(declare-fun m!5905624 () Bool)

(assert (=> b!4898348 m!5905624))

(declare-fun m!5905626 () Bool)

(assert (=> b!4898346 m!5905626))

(assert (=> b!4898353 m!5905610))

(declare-fun m!5905628 () Bool)

(assert (=> b!4898353 m!5905628))

(declare-fun m!5905630 () Bool)

(assert (=> b!4898353 m!5905630))

(declare-fun m!5905632 () Bool)

(assert (=> d!1574010 m!5905632))

(assert (=> d!1574010 m!5905558))

(assert (=> d!1574010 m!5905560))

(assert (=> d!1574010 m!5905530))

(declare-fun m!5905634 () Bool)

(assert (=> b!4898349 m!5905634))

(declare-fun m!5905636 () Bool)

(assert (=> bm!339804 m!5905636))

(assert (=> b!4898273 d!1574010))

(declare-fun d!1574012 () Bool)

(assert (=> d!1574012 (= (get!19497 lt!2008475) (v!49999 lt!2008475))))

(assert (=> b!4898273 d!1574012))

(declare-fun d!1574014 () Bool)

(declare-fun isBalanced!4019 (Conc!14749) Bool)

(assert (=> d!1574014 (= (inv!72734 input!1236) (isBalanced!4019 (c!832544 input!1236)))))

(declare-fun bs!1176507 () Bool)

(assert (= bs!1176507 d!1574014))

(declare-fun m!5905638 () Bool)

(assert (=> bs!1176507 m!5905638))

(assert (=> start!513122 d!1574014))

(declare-fun b!4898363 () Bool)

(declare-fun e!3061987 () Bool)

(declare-fun e!3061986 () Bool)

(assert (=> b!4898363 (= e!3061987 e!3061986)))

(declare-fun res!2092290 () Bool)

(assert (=> b!4898363 (=> (not res!2092290) (not e!3061986))))

(assert (=> b!4898363 (= res!2092290 (not (is-Nil!56428 lt!2008472)))))

(declare-fun d!1574016 () Bool)

(declare-fun e!3061988 () Bool)

(assert (=> d!1574016 e!3061988))

(declare-fun res!2092289 () Bool)

(assert (=> d!1574016 (=> res!2092289 e!3061988)))

(declare-fun lt!2008529 () Bool)

(assert (=> d!1574016 (= res!2092289 (not lt!2008529))))

(assert (=> d!1574016 (= lt!2008529 e!3061987)))

(declare-fun res!2092291 () Bool)

(assert (=> d!1574016 (=> res!2092291 e!3061987)))

(assert (=> d!1574016 (= res!2092291 (is-Nil!56428 lt!2008472))))

(assert (=> d!1574016 (= (isPrefix!4901 lt!2008472 lt!2008472) lt!2008529)))

(declare-fun b!4898364 () Bool)

(declare-fun res!2092288 () Bool)

(assert (=> b!4898364 (=> (not res!2092288) (not e!3061986))))

(declare-fun head!10462 (List!56552) C!26710)

(assert (=> b!4898364 (= res!2092288 (= (head!10462 lt!2008472) (head!10462 lt!2008472)))))

(declare-fun b!4898366 () Bool)

(assert (=> b!4898366 (= e!3061988 (>= (size!37169 lt!2008472) (size!37169 lt!2008472)))))

(declare-fun b!4898365 () Bool)

(declare-fun tail!9608 (List!56552) List!56552)

(assert (=> b!4898365 (= e!3061986 (isPrefix!4901 (tail!9608 lt!2008472) (tail!9608 lt!2008472)))))

(assert (= (and d!1574016 (not res!2092291)) b!4898363))

(assert (= (and b!4898363 res!2092290) b!4898364))

(assert (= (and b!4898364 res!2092288) b!4898365))

(assert (= (and d!1574016 (not res!2092289)) b!4898366))

(declare-fun m!5905640 () Bool)

(assert (=> b!4898364 m!5905640))

(assert (=> b!4898364 m!5905640))

(assert (=> b!4898366 m!5905630))

(assert (=> b!4898366 m!5905630))

(declare-fun m!5905642 () Bool)

(assert (=> b!4898365 m!5905642))

(assert (=> b!4898365 m!5905642))

(assert (=> b!4898365 m!5905642))

(assert (=> b!4898365 m!5905642))

(declare-fun m!5905644 () Bool)

(assert (=> b!4898365 m!5905644))

(assert (=> b!4898274 d!1574016))

(declare-fun d!1574018 () Bool)

(assert (=> d!1574018 (isPrefix!4901 lt!2008472 lt!2008472)))

(declare-fun lt!2008532 () Unit!146503)

(declare-fun choose!35766 (List!56552 List!56552) Unit!146503)

(assert (=> d!1574018 (= lt!2008532 (choose!35766 lt!2008472 lt!2008472))))

(assert (=> d!1574018 (= (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472) lt!2008532)))

(declare-fun bs!1176508 () Bool)

(assert (= bs!1176508 d!1574018))

(assert (=> bs!1176508 m!5905558))

(declare-fun m!5905646 () Bool)

(assert (=> bs!1176508 m!5905646))

(assert (=> b!4898274 d!1574018))

(declare-fun d!1574020 () Bool)

(declare-fun list!17747 (Conc!14749) List!56552)

(assert (=> d!1574020 (= (list!17745 input!1236) (list!17747 (c!832544 input!1236)))))

(declare-fun bs!1176509 () Bool)

(assert (= bs!1176509 d!1574020))

(declare-fun m!5905648 () Bool)

(assert (=> bs!1176509 m!5905648))

(assert (=> b!4898274 d!1574020))

(declare-fun d!1574022 () Bool)

(assert (=> d!1574022 (= (isDefined!11052 lt!2008474) (not (isEmpty!30303 lt!2008474)))))

(declare-fun bs!1176510 () Bool)

(assert (= bs!1176510 d!1574022))

(declare-fun m!5905650 () Bool)

(assert (=> bs!1176510 m!5905650))

(assert (=> b!4898275 d!1574022))

(declare-fun d!1574024 () Bool)

(declare-fun isEmpty!30304 (Option!14040) Bool)

(assert (=> d!1574024 (= (isDefined!11053 lt!2008475) (not (isEmpty!30304 lt!2008475)))))

(declare-fun bs!1176511 () Bool)

(assert (= bs!1176511 d!1574024))

(declare-fun m!5905652 () Bool)

(assert (=> bs!1176511 m!5905652))

(assert (=> b!4898275 d!1574024))

(declare-fun d!1574026 () Bool)

(declare-fun lt!2008543 () Option!14039)

(assert (=> d!1574026 (= lt!2008543 (maxPrefix!4610 thiss!14805 rulesArg!165 lt!2008472))))

(declare-fun e!3061991 () Option!14039)

(assert (=> d!1574026 (= lt!2008543 e!3061991)))

(declare-fun c!832554 () Bool)

(assert (=> d!1574026 (= c!832554 (and (is-Cons!56430 rulesArg!165) (is-Nil!56430 (t!366240 rulesArg!165))))))

(declare-fun lt!2008545 () Unit!146503)

(declare-fun lt!2008546 () Unit!146503)

(assert (=> d!1574026 (= lt!2008545 lt!2008546)))

(assert (=> d!1574026 (isPrefix!4901 lt!2008472 lt!2008472)))

(assert (=> d!1574026 (= lt!2008546 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(assert (=> d!1574026 (rulesValidInductive!3160 thiss!14805 rulesArg!165)))

(assert (=> d!1574026 (= (maxPrefixZipper!680 thiss!14805 rulesArg!165 lt!2008472) lt!2008543)))

(declare-fun bm!339807 () Bool)

(declare-fun call!339812 () Option!14039)

(declare-fun maxPrefixOneRuleZipper!265 (LexerInterface!7773 Rule!16162 List!56552) Option!14039)

(assert (=> bm!339807 (= call!339812 (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 rulesArg!165) lt!2008472))))

(declare-fun b!4898371 () Bool)

(assert (=> b!4898371 (= e!3061991 call!339812)))

(declare-fun b!4898372 () Bool)

(declare-fun lt!2008547 () Option!14039)

(declare-fun lt!2008544 () Option!14039)

(assert (=> b!4898372 (= e!3061991 (ite (and (is-None!14038 lt!2008547) (is-None!14038 lt!2008544)) None!14038 (ite (is-None!14038 lt!2008544) lt!2008547 (ite (is-None!14038 lt!2008547) lt!2008544 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2008547))) (size!37167 (_1!33556 (v!49998 lt!2008544)))) lt!2008547 lt!2008544)))))))

(assert (=> b!4898372 (= lt!2008547 call!339812)))

(assert (=> b!4898372 (= lt!2008544 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) lt!2008472))))

(assert (= (and d!1574026 c!832554) b!4898371))

(assert (= (and d!1574026 (not c!832554)) b!4898372))

(assert (= (or b!4898371 b!4898372) bm!339807))

(assert (=> d!1574026 m!5905550))

(assert (=> d!1574026 m!5905558))

(assert (=> d!1574026 m!5905560))

(assert (=> d!1574026 m!5905530))

(declare-fun m!5905654 () Bool)

(assert (=> bm!339807 m!5905654))

(declare-fun m!5905656 () Bool)

(assert (=> b!4898372 m!5905656))

(assert (=> b!4898275 d!1574026))

(declare-fun d!1574028 () Bool)

(declare-fun c!832557 () Bool)

(assert (=> d!1574028 (= c!832557 (is-Node!14749 (c!832544 input!1236)))))

(declare-fun e!3061996 () Bool)

(assert (=> d!1574028 (= (inv!72735 (c!832544 input!1236)) e!3061996)))

(declare-fun b!4898379 () Bool)

(declare-fun inv!72740 (Conc!14749) Bool)

(assert (=> b!4898379 (= e!3061996 (inv!72740 (c!832544 input!1236)))))

(declare-fun b!4898380 () Bool)

(declare-fun e!3061997 () Bool)

(assert (=> b!4898380 (= e!3061996 e!3061997)))

(declare-fun res!2092294 () Bool)

(assert (=> b!4898380 (= res!2092294 (not (is-Leaf!24557 (c!832544 input!1236))))))

(assert (=> b!4898380 (=> res!2092294 e!3061997)))

(declare-fun b!4898381 () Bool)

(declare-fun inv!72741 (Conc!14749) Bool)

(assert (=> b!4898381 (= e!3061997 (inv!72741 (c!832544 input!1236)))))

(assert (= (and d!1574028 c!832557) b!4898379))

(assert (= (and d!1574028 (not c!832557)) b!4898380))

(assert (= (and b!4898380 (not res!2092294)) b!4898381))

(declare-fun m!5905658 () Bool)

(assert (=> b!4898379 m!5905658))

(declare-fun m!5905660 () Bool)

(assert (=> b!4898381 m!5905660))

(assert (=> b!4898276 d!1574028))

(declare-fun d!1574032 () Bool)

(assert (=> d!1574032 (= (isEmpty!30301 rulesArg!165) (is-Nil!56430 rulesArg!165))))

(assert (=> b!4898277 d!1574032))

(declare-fun d!1574034 () Bool)

(assert (=> d!1574034 (= (list!17745 (_2!33555 lt!2008470)) (list!17747 (c!832544 (_2!33555 lt!2008470))))))

(declare-fun bs!1176512 () Bool)

(assert (= bs!1176512 d!1574034))

(declare-fun m!5905662 () Bool)

(assert (=> bs!1176512 m!5905662))

(assert (=> b!4898278 d!1574034))

(declare-fun d!1574036 () Bool)

(assert (=> d!1574036 (= (inv!72731 (tag!9045 (h!62878 rulesArg!165))) (= (mod (str.len (value!262309 (tag!9045 (h!62878 rulesArg!165)))) 2) 0))))

(assert (=> b!4898279 d!1574036))

(declare-fun d!1574038 () Bool)

(declare-fun res!2092299 () Bool)

(declare-fun e!3062002 () Bool)

(assert (=> d!1574038 (=> (not res!2092299) (not e!3062002))))

(declare-fun semiInverseModEq!3593 (Int Int) Bool)

(assert (=> d!1574038 (= res!2092299 (semiInverseModEq!3593 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))))))

(assert (=> d!1574038 (= (inv!72736 (transformation!8181 (h!62878 rulesArg!165))) e!3062002)))

(declare-fun b!4898386 () Bool)

(declare-fun equivClasses!3472 (Int Int) Bool)

(assert (=> b!4898386 (= e!3062002 (equivClasses!3472 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))))))

(assert (= (and d!1574038 res!2092299) b!4898386))

(declare-fun m!5905664 () Bool)

(assert (=> d!1574038 m!5905664))

(declare-fun m!5905666 () Bool)

(assert (=> b!4898386 m!5905666))

(assert (=> b!4898279 d!1574038))

(declare-fun d!1574040 () Bool)

(assert (=> d!1574040 (= (list!17745 (_2!33555 lt!2008468)) (list!17747 (c!832544 (_2!33555 lt!2008468))))))

(declare-fun bs!1176513 () Bool)

(assert (= bs!1176513 d!1574040))

(declare-fun m!5905668 () Bool)

(assert (=> bs!1176513 m!5905668))

(assert (=> b!4898269 d!1574040))

(declare-fun d!1574042 () Bool)

(assert (=> d!1574042 true))

(declare-fun lt!2008591 () Bool)

(declare-fun lambda!244157 () Int)

(declare-fun forall!13097 (List!56554 Int) Bool)

(assert (=> d!1574042 (= lt!2008591 (forall!13097 rulesArg!165 lambda!244157))))

(declare-fun e!3062037 () Bool)

(assert (=> d!1574042 (= lt!2008591 e!3062037)))

(declare-fun res!2092335 () Bool)

(assert (=> d!1574042 (=> res!2092335 e!3062037)))

(assert (=> d!1574042 (= res!2092335 (not (is-Cons!56430 rulesArg!165)))))

(assert (=> d!1574042 (= (rulesValidInductive!3160 thiss!14805 rulesArg!165) lt!2008591)))

(declare-fun b!4898431 () Bool)

(declare-fun e!3062036 () Bool)

(assert (=> b!4898431 (= e!3062037 e!3062036)))

(declare-fun res!2092334 () Bool)

(assert (=> b!4898431 (=> (not res!2092334) (not e!3062036))))

(declare-fun ruleValid!3679 (LexerInterface!7773 Rule!16162) Bool)

(assert (=> b!4898431 (= res!2092334 (ruleValid!3679 thiss!14805 (h!62878 rulesArg!165)))))

(declare-fun b!4898432 () Bool)

(assert (=> b!4898432 (= e!3062036 (rulesValidInductive!3160 thiss!14805 (t!366240 rulesArg!165)))))

(assert (= (and d!1574042 (not res!2092335)) b!4898431))

(assert (= (and b!4898431 res!2092334) b!4898432))

(declare-fun m!5905708 () Bool)

(assert (=> d!1574042 m!5905708))

(declare-fun m!5905710 () Bool)

(assert (=> b!4898431 m!5905710))

(declare-fun m!5905712 () Bool)

(assert (=> b!4898432 m!5905712))

(assert (=> b!4898280 d!1574042))

(declare-fun d!1574052 () Bool)

(assert (=> d!1574052 (= (get!19496 lt!2008474) (v!49998 lt!2008474))))

(assert (=> b!4898270 d!1574052))

(assert (=> b!4898270 d!1574012))

(declare-fun b!4898451 () Bool)

(declare-fun e!3062054 () Option!14040)

(declare-fun lt!2008608 () Option!14040)

(declare-fun lt!2008606 () Option!14040)

(assert (=> b!4898451 (= e!3062054 (ite (and (is-None!14039 lt!2008608) (is-None!14039 lt!2008606)) None!14039 (ite (is-None!14039 lt!2008606) lt!2008608 (ite (is-None!14039 lt!2008608) lt!2008606 (ite (>= (size!37167 (_1!33555 (v!49999 lt!2008608))) (size!37167 (_1!33555 (v!49999 lt!2008606)))) lt!2008608 lt!2008606)))))))

(declare-fun call!339818 () Option!14040)

(assert (=> b!4898451 (= lt!2008608 call!339818)))

(assert (=> b!4898451 (= lt!2008606 (maxPrefixZipperSequence!1322 thiss!14805 (t!366240 (t!366240 rulesArg!165)) input!1236))))

(declare-fun b!4898452 () Bool)

(assert (=> b!4898452 (= e!3062054 call!339818)))

(declare-fun lt!2008609 () Option!14040)

(declare-fun e!3062053 () Bool)

(declare-fun b!4898453 () Bool)

(assert (=> b!4898453 (= e!3062053 (= (list!17745 (_2!33555 (get!19497 lt!2008609))) (_2!33556 (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))))))))

(declare-fun bm!339813 () Bool)

(assert (=> bm!339813 (= call!339818 (maxPrefixOneRuleZipperSequence!691 thiss!14805 (h!62878 (t!366240 rulesArg!165)) input!1236))))

(declare-fun b!4898455 () Bool)

(declare-fun res!2092352 () Bool)

(declare-fun e!3062055 () Bool)

(assert (=> b!4898455 (=> (not res!2092352) (not e!3062055))))

(declare-fun e!3062050 () Bool)

(assert (=> b!4898455 (= res!2092352 e!3062050)))

(declare-fun res!2092349 () Bool)

(assert (=> b!4898455 (=> res!2092349 e!3062050)))

(assert (=> b!4898455 (= res!2092349 (not (isDefined!11053 lt!2008609)))))

(declare-fun b!4898456 () Bool)

(declare-fun e!3062052 () Bool)

(assert (=> b!4898456 (= e!3062050 e!3062052)))

(declare-fun res!2092350 () Bool)

(assert (=> b!4898456 (=> (not res!2092350) (not e!3062052))))

(assert (=> b!4898456 (= res!2092350 (= (_1!33555 (get!19497 lt!2008609)) (_1!33556 (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))))))))

(declare-fun b!4898457 () Bool)

(assert (=> b!4898457 (= e!3062052 (= (list!17745 (_2!33555 (get!19497 lt!2008609))) (_2!33556 (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))))))))

(declare-fun b!4898458 () Bool)

(declare-fun e!3062051 () Bool)

(assert (=> b!4898458 (= e!3062055 e!3062051)))

(declare-fun res!2092348 () Bool)

(assert (=> b!4898458 (=> res!2092348 e!3062051)))

(assert (=> b!4898458 (= res!2092348 (not (isDefined!11053 lt!2008609)))))

(declare-fun d!1574054 () Bool)

(assert (=> d!1574054 e!3062055))

(declare-fun res!2092351 () Bool)

(assert (=> d!1574054 (=> (not res!2092351) (not e!3062055))))

(assert (=> d!1574054 (= res!2092351 (= (isDefined!11053 lt!2008609) (isDefined!11052 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236)))))))

(assert (=> d!1574054 (= lt!2008609 e!3062054)))

(declare-fun c!832565 () Bool)

(assert (=> d!1574054 (= c!832565 (and (is-Cons!56430 (t!366240 rulesArg!165)) (is-Nil!56430 (t!366240 (t!366240 rulesArg!165)))))))

(declare-fun lt!2008610 () Unit!146503)

(declare-fun lt!2008611 () Unit!146503)

(assert (=> d!1574054 (= lt!2008610 lt!2008611)))

(declare-fun lt!2008607 () List!56552)

(declare-fun lt!2008612 () List!56552)

(assert (=> d!1574054 (isPrefix!4901 lt!2008607 lt!2008612)))

(assert (=> d!1574054 (= lt!2008611 (lemmaIsPrefixRefl!3298 lt!2008607 lt!2008612))))

(assert (=> d!1574054 (= lt!2008612 (list!17745 input!1236))))

(assert (=> d!1574054 (= lt!2008607 (list!17745 input!1236))))

(assert (=> d!1574054 (rulesValidInductive!3160 thiss!14805 (t!366240 rulesArg!165))))

(assert (=> d!1574054 (= (maxPrefixZipperSequence!1322 thiss!14805 (t!366240 rulesArg!165) input!1236) lt!2008609)))

(declare-fun b!4898454 () Bool)

(assert (=> b!4898454 (= e!3062051 e!3062053)))

(declare-fun res!2092353 () Bool)

(assert (=> b!4898454 (=> (not res!2092353) (not e!3062053))))

(assert (=> b!4898454 (= res!2092353 (= (_1!33555 (get!19497 lt!2008609)) (_1!33556 (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))))))))

(assert (= (and d!1574054 c!832565) b!4898452))

(assert (= (and d!1574054 (not c!832565)) b!4898451))

(assert (= (or b!4898452 b!4898451) bm!339813))

(assert (= (and d!1574054 res!2092351) b!4898455))

(assert (= (and b!4898455 (not res!2092349)) b!4898456))

(assert (= (and b!4898456 res!2092350) b!4898457))

(assert (= (and b!4898455 res!2092352) b!4898458))

(assert (= (and b!4898458 (not res!2092348)) b!4898454))

(assert (= (and b!4898454 res!2092353) b!4898453))

(assert (=> d!1574054 m!5905712))

(assert (=> d!1574054 m!5905562))

(declare-fun m!5905714 () Bool)

(assert (=> d!1574054 m!5905714))

(assert (=> d!1574054 m!5905562))

(declare-fun m!5905716 () Bool)

(assert (=> d!1574054 m!5905716))

(declare-fun m!5905718 () Bool)

(assert (=> d!1574054 m!5905718))

(declare-fun m!5905720 () Bool)

(assert (=> d!1574054 m!5905720))

(assert (=> d!1574054 m!5905716))

(declare-fun m!5905722 () Bool)

(assert (=> d!1574054 m!5905722))

(assert (=> b!4898457 m!5905562))

(assert (=> b!4898457 m!5905562))

(assert (=> b!4898457 m!5905716))

(declare-fun m!5905724 () Bool)

(assert (=> b!4898457 m!5905724))

(declare-fun m!5905726 () Bool)

(assert (=> b!4898457 m!5905726))

(assert (=> b!4898457 m!5905716))

(declare-fun m!5905728 () Bool)

(assert (=> b!4898457 m!5905728))

(assert (=> b!4898458 m!5905718))

(declare-fun m!5905730 () Bool)

(assert (=> bm!339813 m!5905730))

(assert (=> b!4898453 m!5905562))

(declare-fun m!5905732 () Bool)

(assert (=> b!4898453 m!5905732))

(assert (=> b!4898453 m!5905562))

(assert (=> b!4898453 m!5905726))

(assert (=> b!4898453 m!5905732))

(declare-fun m!5905734 () Bool)

(assert (=> b!4898453 m!5905734))

(assert (=> b!4898453 m!5905724))

(assert (=> b!4898456 m!5905724))

(assert (=> b!4898456 m!5905562))

(assert (=> b!4898456 m!5905562))

(assert (=> b!4898456 m!5905716))

(assert (=> b!4898456 m!5905716))

(assert (=> b!4898456 m!5905728))

(assert (=> b!4898455 m!5905718))

(declare-fun m!5905736 () Bool)

(assert (=> b!4898451 m!5905736))

(assert (=> b!4898454 m!5905724))

(assert (=> b!4898454 m!5905562))

(assert (=> b!4898454 m!5905562))

(assert (=> b!4898454 m!5905732))

(assert (=> b!4898454 m!5905732))

(assert (=> b!4898454 m!5905734))

(assert (=> b!4898281 d!1574054))

(declare-fun b!4898490 () Bool)

(declare-fun e!3062082 () Bool)

(assert (=> b!4898490 (= e!3062082 true)))

(declare-fun b!4898489 () Bool)

(declare-fun e!3062081 () Bool)

(assert (=> b!4898489 (= e!3062081 e!3062082)))

(declare-fun b!4898475 () Bool)

(assert (=> b!4898475 e!3062081))

(assert (= b!4898489 b!4898490))

(assert (= b!4898475 b!4898489))

(declare-fun lambda!244166 () Int)

(declare-fun order!25529 () Int)

(declare-fun order!25527 () Int)

(declare-fun dynLambda!22685 (Int Int) Int)

(declare-fun dynLambda!22686 (Int Int) Int)

(assert (=> b!4898490 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244166))))

(declare-fun order!25531 () Int)

(declare-fun dynLambda!22687 (Int Int) Int)

(assert (=> b!4898490 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244166))))

(declare-fun b!4898471 () Bool)

(declare-fun e!3062067 () Bool)

(declare-fun e!3062070 () Bool)

(assert (=> b!4898471 (= e!3062067 e!3062070)))

(declare-fun res!2092363 () Bool)

(assert (=> b!4898471 (=> (not res!2092363) (not e!3062070))))

(declare-fun lt!2008641 () Option!14040)

(assert (=> b!4898471 (= res!2092363 (= (_1!33555 (get!19497 lt!2008641)) (_1!33556 (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236))))))))

(declare-fun b!4898472 () Bool)

(declare-fun e!3062069 () Bool)

(assert (=> b!4898472 (= e!3062069 e!3062067)))

(declare-fun res!2092365 () Bool)

(assert (=> b!4898472 (=> res!2092365 e!3062067)))

(assert (=> b!4898472 (= res!2092365 (not (isDefined!11053 lt!2008641)))))

(declare-fun b!4898473 () Bool)

(declare-fun e!3062066 () Option!14040)

(assert (=> b!4898473 (= e!3062066 None!14039)))

(declare-fun b!4898474 () Bool)

(assert (=> b!4898474 (= e!3062070 (= (list!17745 (_2!33555 (get!19497 lt!2008641))) (_2!33556 (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236))))))))

(declare-fun b!4898476 () Bool)

(declare-fun e!3062068 () Bool)

(declare-fun lt!2008644 () List!56552)

(declare-datatypes ((tuple2!60512 0))(
  ( (tuple2!60513 (_1!33559 List!56552) (_2!33559 List!56552)) )
))
(declare-fun findLongestMatchInner!1760 (Regex!13256 List!56552 Int List!56552 List!56552 Int) tuple2!60512)

(assert (=> b!4898476 (= e!3062068 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(declare-fun d!1574056 () Bool)

(assert (=> d!1574056 e!3062069))

(declare-fun res!2092362 () Bool)

(assert (=> d!1574056 (=> (not res!2092362) (not e!3062069))))

(assert (=> d!1574056 (= res!2092362 (= (isDefined!11053 lt!2008641) (isDefined!11052 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236)))))))

(assert (=> d!1574056 (= lt!2008641 e!3062066)))

(declare-fun c!832568 () Bool)

(declare-datatypes ((tuple2!60514 0))(
  ( (tuple2!60515 (_1!33560 BalanceConc!28928) (_2!33560 BalanceConc!28928)) )
))
(declare-fun lt!2008636 () tuple2!60514)

(declare-fun isEmpty!30305 (BalanceConc!28928) Bool)

(assert (=> d!1574056 (= c!832568 (isEmpty!30305 (_1!33560 lt!2008636)))))

(declare-fun findLongestMatchWithZipperSequence!275 (Regex!13256 BalanceConc!28928) tuple2!60514)

(assert (=> d!1574056 (= lt!2008636 (findLongestMatchWithZipperSequence!275 (regex!8181 (h!62878 rulesArg!165)) input!1236))))

(assert (=> d!1574056 (ruleValid!3679 thiss!14805 (h!62878 rulesArg!165))))

(assert (=> d!1574056 (= (maxPrefixOneRuleZipperSequence!691 thiss!14805 (h!62878 rulesArg!165) input!1236) lt!2008641)))

(declare-fun size!37170 (BalanceConc!28928) Int)

(assert (=> b!4898475 (= e!3062066 (Some!14039 (tuple2!60505 (Token!14927 (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (_1!33560 lt!2008636)) (h!62878 rulesArg!165) (size!37170 (_1!33560 lt!2008636)) (list!17745 (_1!33560 lt!2008636))) (_2!33560 lt!2008636))))))

(assert (=> b!4898475 (= lt!2008644 (list!17745 input!1236))))

(declare-fun lt!2008639 () Unit!146503)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1723 (Regex!13256 List!56552) Unit!146503)

(assert (=> b!4898475 (= lt!2008639 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 rulesArg!165)) lt!2008644))))

(declare-fun res!2092364 () Bool)

(declare-fun isEmpty!30306 (List!56552) Bool)

(assert (=> b!4898475 (= res!2092364 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (=> b!4898475 (=> res!2092364 e!3062068)))

(assert (=> b!4898475 e!3062068))

(declare-fun lt!2008643 () Unit!146503)

(assert (=> b!4898475 (= lt!2008643 lt!2008639)))

(declare-fun lt!2008637 () Unit!146503)

(declare-fun lemmaInv!1243 (TokenValueInjection!16290) Unit!146503)

(assert (=> b!4898475 (= lt!2008637 (lemmaInv!1243 (transformation!8181 (h!62878 rulesArg!165))))))

(declare-fun lt!2008642 () Unit!146503)

(declare-fun ForallOf!1140 (Int BalanceConc!28928) Unit!146503)

(assert (=> b!4898475 (= lt!2008642 (ForallOf!1140 lambda!244166 (_1!33560 lt!2008636)))))

(declare-fun lt!2008638 () Unit!146503)

(assert (=> b!4898475 (= lt!2008638 (ForallOf!1140 lambda!244166 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))

(declare-fun lt!2008635 () Option!14040)

(assert (=> b!4898475 (= lt!2008635 (Some!14039 (tuple2!60505 (Token!14927 (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (_1!33560 lt!2008636)) (h!62878 rulesArg!165) (size!37170 (_1!33560 lt!2008636)) (list!17745 (_1!33560 lt!2008636))) (_2!33560 lt!2008636))))))

(declare-fun lt!2008640 () Unit!146503)

(declare-fun lemmaEqSameImage!1097 (TokenValueInjection!16290 BalanceConc!28928 BalanceConc!28928) Unit!146503)

(assert (=> b!4898475 (= lt!2008640 (lemmaEqSameImage!1097 (transformation!8181 (h!62878 rulesArg!165)) (_1!33560 lt!2008636) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))

(assert (= (and d!1574056 c!832568) b!4898473))

(assert (= (and d!1574056 (not c!832568)) b!4898475))

(assert (= (and b!4898475 (not res!2092364)) b!4898476))

(assert (= (and d!1574056 res!2092362) b!4898472))

(assert (= (and b!4898472 (not res!2092365)) b!4898471))

(assert (= (and b!4898471 res!2092363) b!4898474))

(declare-fun m!5905738 () Bool)

(assert (=> b!4898476 m!5905738))

(declare-fun m!5905740 () Bool)

(assert (=> b!4898476 m!5905740))

(assert (=> b!4898476 m!5905738))

(assert (=> b!4898476 m!5905740))

(declare-fun m!5905742 () Bool)

(assert (=> b!4898476 m!5905742))

(declare-fun m!5905744 () Bool)

(assert (=> b!4898476 m!5905744))

(declare-fun m!5905746 () Bool)

(assert (=> b!4898472 m!5905746))

(declare-fun m!5905748 () Bool)

(assert (=> b!4898471 m!5905748))

(assert (=> b!4898471 m!5905562))

(assert (=> b!4898471 m!5905562))

(declare-fun m!5905750 () Bool)

(assert (=> b!4898471 m!5905750))

(assert (=> b!4898471 m!5905750))

(declare-fun m!5905752 () Bool)

(assert (=> b!4898471 m!5905752))

(assert (=> d!1574056 m!5905562))

(assert (=> d!1574056 m!5905562))

(assert (=> d!1574056 m!5905750))

(declare-fun m!5905754 () Bool)

(assert (=> d!1574056 m!5905754))

(assert (=> d!1574056 m!5905710))

(declare-fun m!5905756 () Bool)

(assert (=> d!1574056 m!5905756))

(assert (=> d!1574056 m!5905750))

(declare-fun m!5905758 () Bool)

(assert (=> d!1574056 m!5905758))

(assert (=> d!1574056 m!5905746))

(assert (=> b!4898474 m!5905562))

(assert (=> b!4898474 m!5905562))

(assert (=> b!4898474 m!5905750))

(declare-fun m!5905760 () Bool)

(assert (=> b!4898474 m!5905760))

(assert (=> b!4898474 m!5905750))

(assert (=> b!4898474 m!5905752))

(assert (=> b!4898474 m!5905748))

(assert (=> b!4898475 m!5905562))

(assert (=> b!4898475 m!5905738))

(declare-fun m!5905762 () Bool)

(assert (=> b!4898475 m!5905762))

(declare-fun m!5905764 () Bool)

(assert (=> b!4898475 m!5905764))

(declare-fun m!5905766 () Bool)

(assert (=> b!4898475 m!5905766))

(assert (=> b!4898475 m!5905738))

(assert (=> b!4898475 m!5905740))

(assert (=> b!4898475 m!5905742))

(declare-fun m!5905768 () Bool)

(assert (=> b!4898475 m!5905768))

(declare-fun m!5905770 () Bool)

(assert (=> b!4898475 m!5905770))

(declare-fun m!5905772 () Bool)

(assert (=> b!4898475 m!5905772))

(declare-fun m!5905774 () Bool)

(assert (=> b!4898475 m!5905774))

(declare-fun m!5905776 () Bool)

(assert (=> b!4898475 m!5905776))

(assert (=> b!4898475 m!5905766))

(assert (=> b!4898475 m!5905762))

(declare-fun m!5905778 () Bool)

(assert (=> b!4898475 m!5905778))

(assert (=> b!4898475 m!5905762))

(declare-fun m!5905780 () Bool)

(assert (=> b!4898475 m!5905780))

(assert (=> b!4898475 m!5905740))

(assert (=> b!4898281 d!1574056))

(declare-fun b!4898501 () Bool)

(declare-fun b_free!131655 () Bool)

(declare-fun b_next!132445 () Bool)

(assert (=> b!4898501 (= b_free!131655 (not b_next!132445))))

(declare-fun tp!1378240 () Bool)

(declare-fun b_and!345615 () Bool)

(assert (=> b!4898501 (= tp!1378240 b_and!345615)))

(declare-fun b_free!131657 () Bool)

(declare-fun b_next!132447 () Bool)

(assert (=> b!4898501 (= b_free!131657 (not b_next!132447))))

(declare-fun tp!1378239 () Bool)

(declare-fun b_and!345617 () Bool)

(assert (=> b!4898501 (= tp!1378239 b_and!345617)))

(declare-fun e!3062092 () Bool)

(assert (=> b!4898501 (= e!3062092 (and tp!1378240 tp!1378239))))

(declare-fun e!3062093 () Bool)

(declare-fun tp!1378238 () Bool)

(declare-fun b!4898500 () Bool)

(assert (=> b!4898500 (= e!3062093 (and tp!1378238 (inv!72731 (tag!9045 (h!62878 (t!366240 rulesArg!165)))) (inv!72736 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) e!3062092))))

(declare-fun b!4898499 () Bool)

(declare-fun e!3062091 () Bool)

(declare-fun tp!1378241 () Bool)

(assert (=> b!4898499 (= e!3062091 (and e!3062093 tp!1378241))))

(assert (=> b!4898268 (= tp!1378213 e!3062091)))

(assert (= b!4898500 b!4898501))

(assert (= b!4898499 b!4898500))

(assert (= (and b!4898268 (is-Cons!56430 (t!366240 rulesArg!165))) b!4898499))

(declare-fun m!5905782 () Bool)

(assert (=> b!4898500 m!5905782))

(declare-fun m!5905784 () Bool)

(assert (=> b!4898500 m!5905784))

(declare-fun b!4898512 () Bool)

(declare-fun e!3062097 () Bool)

(declare-fun tp_is_empty!35793 () Bool)

(assert (=> b!4898512 (= e!3062097 tp_is_empty!35793)))

(declare-fun b!4898513 () Bool)

(declare-fun tp!1378255 () Bool)

(declare-fun tp!1378253 () Bool)

(assert (=> b!4898513 (= e!3062097 (and tp!1378255 tp!1378253))))

(declare-fun b!4898515 () Bool)

(declare-fun tp!1378256 () Bool)

(declare-fun tp!1378254 () Bool)

(assert (=> b!4898515 (= e!3062097 (and tp!1378256 tp!1378254))))

(declare-fun b!4898514 () Bool)

(declare-fun tp!1378252 () Bool)

(assert (=> b!4898514 (= e!3062097 tp!1378252)))

(assert (=> b!4898279 (= tp!1378212 e!3062097)))

(assert (= (and b!4898279 (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165)))) b!4898512))

(assert (= (and b!4898279 (is-Concat!21748 (regex!8181 (h!62878 rulesArg!165)))) b!4898513))

(assert (= (and b!4898279 (is-Star!13256 (regex!8181 (h!62878 rulesArg!165)))) b!4898514))

(assert (= (and b!4898279 (is-Union!13256 (regex!8181 (h!62878 rulesArg!165)))) b!4898515))

(declare-fun tp!1378264 () Bool)

(declare-fun tp!1378263 () Bool)

(declare-fun e!3062108 () Bool)

(declare-fun b!4898530 () Bool)

(assert (=> b!4898530 (= e!3062108 (and (inv!72735 (left!41002 (c!832544 input!1236))) tp!1378263 (inv!72735 (right!41332 (c!832544 input!1236))) tp!1378264))))

(declare-fun b!4898532 () Bool)

(declare-fun e!3062107 () Bool)

(declare-fun tp!1378265 () Bool)

(assert (=> b!4898532 (= e!3062107 tp!1378265)))

(declare-fun b!4898531 () Bool)

(declare-fun inv!72742 (IArray!29559) Bool)

(assert (=> b!4898531 (= e!3062108 (and (inv!72742 (xs!18065 (c!832544 input!1236))) e!3062107))))

(assert (=> b!4898276 (= tp!1378210 (and (inv!72735 (c!832544 input!1236)) e!3062108))))

(assert (= (and b!4898276 (is-Node!14749 (c!832544 input!1236))) b!4898530))

(assert (= b!4898531 b!4898532))

(assert (= (and b!4898276 (is-Leaf!24557 (c!832544 input!1236))) b!4898531))

(declare-fun m!5905786 () Bool)

(assert (=> b!4898530 m!5905786))

(declare-fun m!5905788 () Bool)

(assert (=> b!4898530 m!5905788))

(declare-fun m!5905790 () Bool)

(assert (=> b!4898531 m!5905790))

(assert (=> b!4898276 m!5905546))

(push 1)

(assert (not b_next!132439))

(assert (not b!4898347))

(assert (not b!4898515))

(assert b_and!345607)

(assert (not d!1574034))

(assert (not b_next!132445))

(assert (not b!4898457))

(assert (not d!1574014))

(assert (not b!4898348))

(assert (not b!4898346))

(assert (not b!4898514))

(assert (not b!4898475))

(assert (not b!4898474))

(assert (not d!1574024))

(assert (not b!4898532))

(assert (not b!4898472))

(assert (not d!1574022))

(assert (not d!1574010))

(assert (not b!4898456))

(assert (not d!1574020))

(assert (not b!4898499))

(assert (not d!1574042))

(assert (not b!4898379))

(assert (not b!4898349))

(assert (not b!4898531))

(assert (not b!4898354))

(assert (not b!4898451))

(assert (not d!1574040))

(assert (not b!4898454))

(assert (not b!4898455))

(assert tp_is_empty!35793)

(assert (not b!4898471))

(assert (not b!4898458))

(assert (not b!4898350))

(assert (not b!4898353))

(assert (not b!4898476))

(assert b_and!345615)

(assert (not b!4898366))

(assert (not d!1574038))

(assert b_and!345617)

(assert (not b!4898431))

(assert (not b!4898386))

(assert (not bm!339813))

(assert (not b!4898432))

(assert (not b_next!132447))

(assert (not d!1574026))

(assert (not b!4898453))

(assert (not bm!339804))

(assert (not d!1574054))

(assert (not d!1574018))

(assert (not b!4898530))

(assert (not b_next!132437))

(assert (not b!4898513))

(assert (not b!4898381))

(assert (not d!1574056))

(assert (not b!4898500))

(assert (not b!4898351))

(assert (not b!4898372))

(assert (not b!4898365))

(assert (not bm!339807))

(assert b_and!345609)

(assert (not b!4898364))

(assert (not b!4898276))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132439))

(assert b_and!345607)

(assert (not b_next!132445))

(assert b_and!345615)

(assert b_and!345617)

(assert (not b_next!132447))

(assert (not b_next!132437))

(assert b_and!345609)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1574088 () Bool)

(assert (=> d!1574088 true))

(declare-fun lambda!244173 () Int)

(declare-fun order!25539 () Int)

(declare-fun dynLambda!22691 (Int Int) Int)

(assert (=> d!1574088 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22691 order!25539 lambda!244173))))

(declare-fun Forall2!1274 (Int) Bool)

(assert (=> d!1574088 (= (equivClasses!3472 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (Forall2!1274 lambda!244173))))

(declare-fun bs!1176521 () Bool)

(assert (= bs!1176521 d!1574088))

(declare-fun m!5905898 () Bool)

(assert (=> bs!1176521 m!5905898))

(assert (=> b!4898386 d!1574088))

(declare-fun d!1574090 () Bool)

(assert (=> d!1574090 (= (get!19497 lt!2008641) (v!49999 lt!2008641))))

(assert (=> b!4898471 d!1574090))

(declare-fun d!1574092 () Bool)

(assert (=> d!1574092 (= (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236))) (v!49998 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236))))))

(assert (=> b!4898471 d!1574092))

(declare-fun b!4898652 () Bool)

(declare-fun e!3062175 () Bool)

(assert (=> b!4898652 (= e!3062175 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(declare-fun b!4898653 () Bool)

(declare-fun e!3062176 () Bool)

(declare-fun lt!2008705 () Option!14039)

(assert (=> b!4898653 (= e!3062176 (= (size!37167 (_1!33556 (get!19496 lt!2008705))) (size!37169 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705))))))))

(declare-fun b!4898654 () Bool)

(declare-fun e!3062173 () Bool)

(assert (=> b!4898654 (= e!3062173 e!3062176)))

(declare-fun res!2092432 () Bool)

(assert (=> b!4898654 (=> (not res!2092432) (not e!3062176))))

(assert (=> b!4898654 (= res!2092432 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))))))

(declare-fun b!4898655 () Bool)

(declare-fun res!2092431 () Bool)

(assert (=> b!4898655 (=> (not res!2092431) (not e!3062176))))

(assert (=> b!4898655 (= res!2092431 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705)))) (_2!33556 (get!19496 lt!2008705))) (list!17745 input!1236)))))

(declare-fun b!4898656 () Bool)

(declare-fun e!3062174 () Option!14039)

(assert (=> b!4898656 (= e!3062174 None!14038)))

(declare-fun b!4898657 () Bool)

(declare-fun res!2092429 () Bool)

(assert (=> b!4898657 (=> (not res!2092429) (not e!3062176))))

(assert (=> b!4898657 (= res!2092429 (< (size!37169 (_2!33556 (get!19496 lt!2008705))) (size!37169 (list!17745 input!1236))))))

(declare-fun b!4898658 () Bool)

(declare-fun lt!2008703 () tuple2!60512)

(assert (=> b!4898658 (= e!3062174 (Some!14038 (tuple2!60507 (Token!14927 (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008703))) (h!62878 rulesArg!165) (size!37170 (seqFromList!5943 (_1!33559 lt!2008703))) (_1!33559 lt!2008703)) (_2!33559 lt!2008703))))))

(declare-fun lt!2008702 () Unit!146503)

(assert (=> b!4898658 (= lt!2008702 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun res!2092434 () Bool)

(assert (=> b!4898658 (= res!2092434 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(assert (=> b!4898658 (=> res!2092434 e!3062175)))

(assert (=> b!4898658 e!3062175))

(declare-fun lt!2008704 () Unit!146503)

(assert (=> b!4898658 (= lt!2008704 lt!2008702)))

(declare-fun lt!2008706 () Unit!146503)

(declare-fun lemmaSemiInverse!2571 (TokenValueInjection!16290 BalanceConc!28928) Unit!146503)

(assert (=> b!4898658 (= lt!2008706 (lemmaSemiInverse!2571 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008703))))))

(declare-fun b!4898659 () Bool)

(declare-fun res!2092435 () Bool)

(assert (=> b!4898659 (=> (not res!2092435) (not e!3062176))))

(assert (=> b!4898659 (= res!2092435 (= (rule!11389 (_1!33556 (get!19496 lt!2008705))) (h!62878 rulesArg!165)))))

(declare-fun b!4898660 () Bool)

(declare-fun res!2092430 () Bool)

(assert (=> b!4898660 (=> (not res!2092430) (not e!3062176))))

(assert (=> b!4898660 (= res!2092430 (= (value!262310 (_1!33556 (get!19496 lt!2008705))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705)))))))))

(declare-fun d!1574094 () Bool)

(assert (=> d!1574094 e!3062173))

(declare-fun res!2092433 () Bool)

(assert (=> d!1574094 (=> res!2092433 e!3062173)))

(assert (=> d!1574094 (= res!2092433 (isEmpty!30303 lt!2008705))))

(assert (=> d!1574094 (= lt!2008705 e!3062174)))

(declare-fun c!832581 () Bool)

(assert (=> d!1574094 (= c!832581 (isEmpty!30306 (_1!33559 lt!2008703)))))

(declare-fun findLongestMatch!1654 (Regex!13256 List!56552) tuple2!60512)

(assert (=> d!1574094 (= lt!2008703 (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) (list!17745 input!1236)))))

(assert (=> d!1574094 (ruleValid!3679 thiss!14805 (h!62878 rulesArg!165))))

(assert (=> d!1574094 (= (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236)) lt!2008705)))

(assert (= (and d!1574094 c!832581) b!4898656))

(assert (= (and d!1574094 (not c!832581)) b!4898658))

(assert (= (and b!4898658 (not res!2092434)) b!4898652))

(assert (= (and d!1574094 (not res!2092433)) b!4898654))

(assert (= (and b!4898654 res!2092432) b!4898655))

(assert (= (and b!4898655 res!2092431) b!4898657))

(assert (= (and b!4898657 res!2092429) b!4898659))

(assert (= (and b!4898659 res!2092435) b!4898660))

(assert (= (and b!4898660 res!2092430) b!4898653))

(assert (=> b!4898652 m!5905738))

(assert (=> b!4898652 m!5905562))

(declare-fun m!5905900 () Bool)

(assert (=> b!4898652 m!5905900))

(assert (=> b!4898652 m!5905738))

(assert (=> b!4898652 m!5905562))

(assert (=> b!4898652 m!5905562))

(assert (=> b!4898652 m!5905900))

(declare-fun m!5905902 () Bool)

(assert (=> b!4898652 m!5905902))

(declare-fun m!5905904 () Bool)

(assert (=> b!4898652 m!5905904))

(declare-fun m!5905906 () Bool)

(assert (=> b!4898657 m!5905906))

(declare-fun m!5905908 () Bool)

(assert (=> b!4898657 m!5905908))

(assert (=> b!4898657 m!5905562))

(assert (=> b!4898657 m!5905900))

(assert (=> b!4898655 m!5905906))

(declare-fun m!5905910 () Bool)

(assert (=> b!4898655 m!5905910))

(assert (=> b!4898655 m!5905910))

(declare-fun m!5905912 () Bool)

(assert (=> b!4898655 m!5905912))

(assert (=> b!4898655 m!5905912))

(declare-fun m!5905914 () Bool)

(assert (=> b!4898655 m!5905914))

(declare-fun m!5905916 () Bool)

(assert (=> d!1574094 m!5905916))

(declare-fun m!5905918 () Bool)

(assert (=> d!1574094 m!5905918))

(assert (=> d!1574094 m!5905562))

(declare-fun m!5905920 () Bool)

(assert (=> d!1574094 m!5905920))

(assert (=> d!1574094 m!5905710))

(assert (=> b!4898660 m!5905906))

(declare-fun m!5905922 () Bool)

(assert (=> b!4898660 m!5905922))

(assert (=> b!4898660 m!5905922))

(declare-fun m!5905924 () Bool)

(assert (=> b!4898660 m!5905924))

(assert (=> b!4898654 m!5905906))

(assert (=> b!4898654 m!5905910))

(assert (=> b!4898654 m!5905910))

(assert (=> b!4898654 m!5905912))

(assert (=> b!4898654 m!5905912))

(declare-fun m!5905926 () Bool)

(assert (=> b!4898654 m!5905926))

(declare-fun m!5905928 () Bool)

(assert (=> b!4898658 m!5905928))

(declare-fun m!5905930 () Bool)

(assert (=> b!4898658 m!5905930))

(assert (=> b!4898658 m!5905738))

(assert (=> b!4898658 m!5905562))

(declare-fun m!5905932 () Bool)

(assert (=> b!4898658 m!5905932))

(declare-fun m!5905934 () Bool)

(assert (=> b!4898658 m!5905934))

(assert (=> b!4898658 m!5905928))

(assert (=> b!4898658 m!5905928))

(declare-fun m!5905936 () Bool)

(assert (=> b!4898658 m!5905936))

(assert (=> b!4898658 m!5905562))

(assert (=> b!4898658 m!5905900))

(assert (=> b!4898658 m!5905928))

(declare-fun m!5905938 () Bool)

(assert (=> b!4898658 m!5905938))

(assert (=> b!4898658 m!5905738))

(assert (=> b!4898658 m!5905562))

(assert (=> b!4898658 m!5905562))

(assert (=> b!4898658 m!5905900))

(assert (=> b!4898658 m!5905902))

(assert (=> b!4898653 m!5905906))

(declare-fun m!5905940 () Bool)

(assert (=> b!4898653 m!5905940))

(assert (=> b!4898659 m!5905906))

(assert (=> b!4898471 d!1574094))

(assert (=> b!4898471 d!1574020))

(declare-fun b!4898661 () Bool)

(declare-fun e!3062179 () Bool)

(assert (=> b!4898661 (= e!3062179 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(declare-fun b!4898662 () Bool)

(declare-fun e!3062180 () Bool)

(declare-fun lt!2008710 () Option!14039)

(assert (=> b!4898662 (= e!3062180 (= (size!37167 (_1!33556 (get!19496 lt!2008710))) (size!37169 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710))))))))

(declare-fun b!4898663 () Bool)

(declare-fun e!3062177 () Bool)

(assert (=> b!4898663 (= e!3062177 e!3062180)))

(declare-fun res!2092439 () Bool)

(assert (=> b!4898663 (=> (not res!2092439) (not e!3062180))))

(assert (=> b!4898663 (= res!2092439 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))))))

(declare-fun b!4898664 () Bool)

(declare-fun res!2092438 () Bool)

(assert (=> b!4898664 (=> (not res!2092438) (not e!3062180))))

(assert (=> b!4898664 (= res!2092438 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710)))) (_2!33556 (get!19496 lt!2008710))) lt!2008472))))

(declare-fun b!4898665 () Bool)

(declare-fun e!3062178 () Option!14039)

(assert (=> b!4898665 (= e!3062178 None!14038)))

(declare-fun b!4898666 () Bool)

(declare-fun res!2092436 () Bool)

(assert (=> b!4898666 (=> (not res!2092436) (not e!3062180))))

(assert (=> b!4898666 (= res!2092436 (< (size!37169 (_2!33556 (get!19496 lt!2008710))) (size!37169 lt!2008472)))))

(declare-fun b!4898667 () Bool)

(declare-fun lt!2008708 () tuple2!60512)

(assert (=> b!4898667 (= e!3062178 (Some!14038 (tuple2!60507 (Token!14927 (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008708))) (h!62878 rulesArg!165) (size!37170 (seqFromList!5943 (_1!33559 lt!2008708))) (_1!33559 lt!2008708)) (_2!33559 lt!2008708))))))

(declare-fun lt!2008707 () Unit!146503)

(assert (=> b!4898667 (= lt!2008707 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 rulesArg!165)) lt!2008472))))

(declare-fun res!2092441 () Bool)

(assert (=> b!4898667 (= res!2092441 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(assert (=> b!4898667 (=> res!2092441 e!3062179)))

(assert (=> b!4898667 e!3062179))

(declare-fun lt!2008709 () Unit!146503)

(assert (=> b!4898667 (= lt!2008709 lt!2008707)))

(declare-fun lt!2008711 () Unit!146503)

(assert (=> b!4898667 (= lt!2008711 (lemmaSemiInverse!2571 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008708))))))

(declare-fun b!4898668 () Bool)

(declare-fun res!2092442 () Bool)

(assert (=> b!4898668 (=> (not res!2092442) (not e!3062180))))

(assert (=> b!4898668 (= res!2092442 (= (rule!11389 (_1!33556 (get!19496 lt!2008710))) (h!62878 rulesArg!165)))))

(declare-fun b!4898669 () Bool)

(declare-fun res!2092437 () Bool)

(assert (=> b!4898669 (=> (not res!2092437) (not e!3062180))))

(assert (=> b!4898669 (= res!2092437 (= (value!262310 (_1!33556 (get!19496 lt!2008710))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710)))))))))

(declare-fun d!1574096 () Bool)

(assert (=> d!1574096 e!3062177))

(declare-fun res!2092440 () Bool)

(assert (=> d!1574096 (=> res!2092440 e!3062177)))

(assert (=> d!1574096 (= res!2092440 (isEmpty!30303 lt!2008710))))

(assert (=> d!1574096 (= lt!2008710 e!3062178)))

(declare-fun c!832582 () Bool)

(assert (=> d!1574096 (= c!832582 (isEmpty!30306 (_1!33559 lt!2008708)))))

(assert (=> d!1574096 (= lt!2008708 (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) lt!2008472))))

(assert (=> d!1574096 (ruleValid!3679 thiss!14805 (h!62878 rulesArg!165))))

(assert (=> d!1574096 (= (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) lt!2008472) lt!2008710)))

(assert (= (and d!1574096 c!832582) b!4898665))

(assert (= (and d!1574096 (not c!832582)) b!4898667))

(assert (= (and b!4898667 (not res!2092441)) b!4898661))

(assert (= (and d!1574096 (not res!2092440)) b!4898663))

(assert (= (and b!4898663 res!2092439) b!4898664))

(assert (= (and b!4898664 res!2092438) b!4898666))

(assert (= (and b!4898666 res!2092436) b!4898668))

(assert (= (and b!4898668 res!2092442) b!4898669))

(assert (= (and b!4898669 res!2092437) b!4898662))

(assert (=> b!4898661 m!5905738))

(assert (=> b!4898661 m!5905630))

(assert (=> b!4898661 m!5905738))

(assert (=> b!4898661 m!5905630))

(declare-fun m!5905942 () Bool)

(assert (=> b!4898661 m!5905942))

(declare-fun m!5905944 () Bool)

(assert (=> b!4898661 m!5905944))

(declare-fun m!5905946 () Bool)

(assert (=> b!4898666 m!5905946))

(declare-fun m!5905948 () Bool)

(assert (=> b!4898666 m!5905948))

(assert (=> b!4898666 m!5905630))

(assert (=> b!4898664 m!5905946))

(declare-fun m!5905950 () Bool)

(assert (=> b!4898664 m!5905950))

(assert (=> b!4898664 m!5905950))

(declare-fun m!5905952 () Bool)

(assert (=> b!4898664 m!5905952))

(assert (=> b!4898664 m!5905952))

(declare-fun m!5905954 () Bool)

(assert (=> b!4898664 m!5905954))

(declare-fun m!5905956 () Bool)

(assert (=> d!1574096 m!5905956))

(declare-fun m!5905958 () Bool)

(assert (=> d!1574096 m!5905958))

(declare-fun m!5905960 () Bool)

(assert (=> d!1574096 m!5905960))

(assert (=> d!1574096 m!5905710))

(assert (=> b!4898669 m!5905946))

(declare-fun m!5905962 () Bool)

(assert (=> b!4898669 m!5905962))

(assert (=> b!4898669 m!5905962))

(declare-fun m!5905964 () Bool)

(assert (=> b!4898669 m!5905964))

(assert (=> b!4898663 m!5905946))

(assert (=> b!4898663 m!5905950))

(assert (=> b!4898663 m!5905950))

(assert (=> b!4898663 m!5905952))

(assert (=> b!4898663 m!5905952))

(declare-fun m!5905966 () Bool)

(assert (=> b!4898663 m!5905966))

(declare-fun m!5905968 () Bool)

(assert (=> b!4898667 m!5905968))

(declare-fun m!5905970 () Bool)

(assert (=> b!4898667 m!5905970))

(assert (=> b!4898667 m!5905738))

(declare-fun m!5905972 () Bool)

(assert (=> b!4898667 m!5905972))

(declare-fun m!5905974 () Bool)

(assert (=> b!4898667 m!5905974))

(assert (=> b!4898667 m!5905968))

(assert (=> b!4898667 m!5905968))

(declare-fun m!5905976 () Bool)

(assert (=> b!4898667 m!5905976))

(assert (=> b!4898667 m!5905630))

(assert (=> b!4898667 m!5905968))

(declare-fun m!5905978 () Bool)

(assert (=> b!4898667 m!5905978))

(assert (=> b!4898667 m!5905738))

(assert (=> b!4898667 m!5905630))

(assert (=> b!4898667 m!5905942))

(assert (=> b!4898662 m!5905946))

(declare-fun m!5905980 () Bool)

(assert (=> b!4898662 m!5905980))

(assert (=> b!4898668 m!5905946))

(assert (=> bm!339804 d!1574096))

(declare-fun d!1574098 () Bool)

(declare-fun res!2092447 () Bool)

(declare-fun e!3062183 () Bool)

(assert (=> d!1574098 (=> (not res!2092447) (not e!3062183))))

(declare-fun validRegex!5889 (Regex!13256) Bool)

(assert (=> d!1574098 (= res!2092447 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574098 (= (ruleValid!3679 thiss!14805 (h!62878 rulesArg!165)) e!3062183)))

(declare-fun b!4898674 () Bool)

(declare-fun res!2092448 () Bool)

(assert (=> b!4898674 (=> (not res!2092448) (not e!3062183))))

(declare-fun nullable!4562 (Regex!13256) Bool)

(assert (=> b!4898674 (= res!2092448 (not (nullable!4562 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun b!4898675 () Bool)

(assert (=> b!4898675 (= e!3062183 (not (= (tag!9045 (h!62878 rulesArg!165)) (String!63900 ""))))))

(assert (= (and d!1574098 res!2092447) b!4898674))

(assert (= (and b!4898674 res!2092448) b!4898675))

(declare-fun m!5905982 () Bool)

(assert (=> d!1574098 m!5905982))

(declare-fun m!5905984 () Bool)

(assert (=> b!4898674 m!5905984))

(assert (=> d!1574056 d!1574098))

(declare-fun d!1574100 () Bool)

(assert (=> d!1574100 (= (isDefined!11053 lt!2008641) (not (isEmpty!30304 lt!2008641)))))

(declare-fun bs!1176522 () Bool)

(assert (= bs!1176522 d!1574100))

(declare-fun m!5905986 () Bool)

(assert (=> bs!1176522 m!5905986))

(assert (=> d!1574056 d!1574100))

(declare-fun d!1574102 () Bool)

(declare-fun lt!2008714 () Bool)

(assert (=> d!1574102 (= lt!2008714 (isEmpty!30306 (list!17745 (_1!33560 lt!2008636))))))

(declare-fun isEmpty!30311 (Conc!14749) Bool)

(assert (=> d!1574102 (= lt!2008714 (isEmpty!30311 (c!832544 (_1!33560 lt!2008636))))))

(assert (=> d!1574102 (= (isEmpty!30305 (_1!33560 lt!2008636)) lt!2008714)))

(declare-fun bs!1176523 () Bool)

(assert (= bs!1176523 d!1574102))

(assert (=> bs!1176523 m!5905766))

(assert (=> bs!1176523 m!5905766))

(declare-fun m!5905988 () Bool)

(assert (=> bs!1176523 m!5905988))

(declare-fun m!5905990 () Bool)

(assert (=> bs!1176523 m!5905990))

(assert (=> d!1574056 d!1574102))

(declare-fun d!1574104 () Bool)

(assert (=> d!1574104 (= (isDefined!11052 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236))) (not (isEmpty!30303 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236)))))))

(declare-fun bs!1176524 () Bool)

(assert (= bs!1176524 d!1574104))

(assert (=> bs!1176524 m!5905750))

(declare-fun m!5905992 () Bool)

(assert (=> bs!1176524 m!5905992))

(assert (=> d!1574056 d!1574104))

(assert (=> d!1574056 d!1574094))

(assert (=> d!1574056 d!1574020))

(declare-fun d!1574106 () Bool)

(declare-fun lt!2008717 () tuple2!60514)

(assert (=> d!1574106 (= (tuple2!60513 (list!17745 (_1!33560 lt!2008717)) (list!17745 (_2!33560 lt!2008717))) (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun choose!35768 (Regex!13256 BalanceConc!28928) tuple2!60514)

(assert (=> d!1574106 (= lt!2008717 (choose!35768 (regex!8181 (h!62878 rulesArg!165)) input!1236))))

(assert (=> d!1574106 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574106 (= (findLongestMatchWithZipperSequence!275 (regex!8181 (h!62878 rulesArg!165)) input!1236) lt!2008717)))

(declare-fun bs!1176525 () Bool)

(assert (= bs!1176525 d!1574106))

(assert (=> bs!1176525 m!5905982))

(assert (=> bs!1176525 m!5905562))

(declare-fun m!5905994 () Bool)

(assert (=> bs!1176525 m!5905994))

(assert (=> bs!1176525 m!5905562))

(assert (=> bs!1176525 m!5905920))

(declare-fun m!5905996 () Bool)

(assert (=> bs!1176525 m!5905996))

(declare-fun m!5905998 () Bool)

(assert (=> bs!1176525 m!5905998))

(assert (=> d!1574056 d!1574106))

(declare-fun b!4898676 () Bool)

(declare-fun e!3062185 () Bool)

(declare-fun e!3062184 () Bool)

(assert (=> b!4898676 (= e!3062185 e!3062184)))

(declare-fun res!2092451 () Bool)

(assert (=> b!4898676 (=> (not res!2092451) (not e!3062184))))

(assert (=> b!4898676 (= res!2092451 (not (is-Nil!56428 (tail!9608 lt!2008472))))))

(declare-fun d!1574108 () Bool)

(declare-fun e!3062186 () Bool)

(assert (=> d!1574108 e!3062186))

(declare-fun res!2092450 () Bool)

(assert (=> d!1574108 (=> res!2092450 e!3062186)))

(declare-fun lt!2008718 () Bool)

(assert (=> d!1574108 (= res!2092450 (not lt!2008718))))

(assert (=> d!1574108 (= lt!2008718 e!3062185)))

(declare-fun res!2092452 () Bool)

(assert (=> d!1574108 (=> res!2092452 e!3062185)))

(assert (=> d!1574108 (= res!2092452 (is-Nil!56428 (tail!9608 lt!2008472)))))

(assert (=> d!1574108 (= (isPrefix!4901 (tail!9608 lt!2008472) (tail!9608 lt!2008472)) lt!2008718)))

(declare-fun b!4898677 () Bool)

(declare-fun res!2092449 () Bool)

(assert (=> b!4898677 (=> (not res!2092449) (not e!3062184))))

(assert (=> b!4898677 (= res!2092449 (= (head!10462 (tail!9608 lt!2008472)) (head!10462 (tail!9608 lt!2008472))))))

(declare-fun b!4898679 () Bool)

(assert (=> b!4898679 (= e!3062186 (>= (size!37169 (tail!9608 lt!2008472)) (size!37169 (tail!9608 lt!2008472))))))

(declare-fun b!4898678 () Bool)

(assert (=> b!4898678 (= e!3062184 (isPrefix!4901 (tail!9608 (tail!9608 lt!2008472)) (tail!9608 (tail!9608 lt!2008472))))))

(assert (= (and d!1574108 (not res!2092452)) b!4898676))

(assert (= (and b!4898676 res!2092451) b!4898677))

(assert (= (and b!4898677 res!2092449) b!4898678))

(assert (= (and d!1574108 (not res!2092450)) b!4898679))

(assert (=> b!4898677 m!5905642))

(declare-fun m!5906000 () Bool)

(assert (=> b!4898677 m!5906000))

(assert (=> b!4898677 m!5905642))

(assert (=> b!4898677 m!5906000))

(assert (=> b!4898679 m!5905642))

(declare-fun m!5906002 () Bool)

(assert (=> b!4898679 m!5906002))

(assert (=> b!4898679 m!5905642))

(assert (=> b!4898679 m!5906002))

(assert (=> b!4898678 m!5905642))

(declare-fun m!5906004 () Bool)

(assert (=> b!4898678 m!5906004))

(assert (=> b!4898678 m!5905642))

(assert (=> b!4898678 m!5906004))

(assert (=> b!4898678 m!5906004))

(assert (=> b!4898678 m!5906004))

(declare-fun m!5906006 () Bool)

(assert (=> b!4898678 m!5906006))

(assert (=> b!4898365 d!1574108))

(declare-fun d!1574110 () Bool)

(assert (=> d!1574110 (= (tail!9608 lt!2008472) (t!366238 lt!2008472))))

(assert (=> b!4898365 d!1574110))

(declare-fun b!4898680 () Bool)

(declare-fun e!3062191 () Option!14040)

(declare-fun lt!2008721 () Option!14040)

(declare-fun lt!2008719 () Option!14040)

(assert (=> b!4898680 (= e!3062191 (ite (and (is-None!14039 lt!2008721) (is-None!14039 lt!2008719)) None!14039 (ite (is-None!14039 lt!2008719) lt!2008721 (ite (is-None!14039 lt!2008721) lt!2008719 (ite (>= (size!37167 (_1!33555 (v!49999 lt!2008721))) (size!37167 (_1!33555 (v!49999 lt!2008719)))) lt!2008721 lt!2008719)))))))

(declare-fun call!339825 () Option!14040)

(assert (=> b!4898680 (= lt!2008721 call!339825)))

(assert (=> b!4898680 (= lt!2008719 (maxPrefixZipperSequence!1322 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) input!1236))))

(declare-fun b!4898681 () Bool)

(assert (=> b!4898681 (= e!3062191 call!339825)))

(declare-fun e!3062190 () Bool)

(declare-fun b!4898682 () Bool)

(declare-fun lt!2008722 () Option!14040)

(assert (=> b!4898682 (= e!3062190 (= (list!17745 (_2!33555 (get!19497 lt!2008722))) (_2!33556 (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))))))))

(declare-fun bm!339820 () Bool)

(assert (=> bm!339820 (= call!339825 (maxPrefixOneRuleZipperSequence!691 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) input!1236))))

(declare-fun b!4898684 () Bool)

(declare-fun res!2092457 () Bool)

(declare-fun e!3062192 () Bool)

(assert (=> b!4898684 (=> (not res!2092457) (not e!3062192))))

(declare-fun e!3062187 () Bool)

(assert (=> b!4898684 (= res!2092457 e!3062187)))

(declare-fun res!2092454 () Bool)

(assert (=> b!4898684 (=> res!2092454 e!3062187)))

(assert (=> b!4898684 (= res!2092454 (not (isDefined!11053 lt!2008722)))))

(declare-fun b!4898685 () Bool)

(declare-fun e!3062189 () Bool)

(assert (=> b!4898685 (= e!3062187 e!3062189)))

(declare-fun res!2092455 () Bool)

(assert (=> b!4898685 (=> (not res!2092455) (not e!3062189))))

(assert (=> b!4898685 (= res!2092455 (= (_1!33555 (get!19497 lt!2008722)) (_1!33556 (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))))))))

(declare-fun b!4898686 () Bool)

(assert (=> b!4898686 (= e!3062189 (= (list!17745 (_2!33555 (get!19497 lt!2008722))) (_2!33556 (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))))))))

(declare-fun b!4898687 () Bool)

(declare-fun e!3062188 () Bool)

(assert (=> b!4898687 (= e!3062192 e!3062188)))

(declare-fun res!2092453 () Bool)

(assert (=> b!4898687 (=> res!2092453 e!3062188)))

(assert (=> b!4898687 (= res!2092453 (not (isDefined!11053 lt!2008722)))))

(declare-fun d!1574112 () Bool)

(assert (=> d!1574112 e!3062192))

(declare-fun res!2092456 () Bool)

(assert (=> d!1574112 (=> (not res!2092456) (not e!3062192))))

(assert (=> d!1574112 (= res!2092456 (= (isDefined!11053 lt!2008722) (isDefined!11052 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236)))))))

(assert (=> d!1574112 (= lt!2008722 e!3062191)))

(declare-fun c!832583 () Bool)

(assert (=> d!1574112 (= c!832583 (and (is-Cons!56430 (t!366240 (t!366240 rulesArg!165))) (is-Nil!56430 (t!366240 (t!366240 (t!366240 rulesArg!165))))))))

(declare-fun lt!2008723 () Unit!146503)

(declare-fun lt!2008724 () Unit!146503)

(assert (=> d!1574112 (= lt!2008723 lt!2008724)))

(declare-fun lt!2008720 () List!56552)

(declare-fun lt!2008725 () List!56552)

(assert (=> d!1574112 (isPrefix!4901 lt!2008720 lt!2008725)))

(assert (=> d!1574112 (= lt!2008724 (lemmaIsPrefixRefl!3298 lt!2008720 lt!2008725))))

(assert (=> d!1574112 (= lt!2008725 (list!17745 input!1236))))

(assert (=> d!1574112 (= lt!2008720 (list!17745 input!1236))))

(assert (=> d!1574112 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 rulesArg!165)))))

(assert (=> d!1574112 (= (maxPrefixZipperSequence!1322 thiss!14805 (t!366240 (t!366240 rulesArg!165)) input!1236) lt!2008722)))

(declare-fun b!4898683 () Bool)

(assert (=> b!4898683 (= e!3062188 e!3062190)))

(declare-fun res!2092458 () Bool)

(assert (=> b!4898683 (=> (not res!2092458) (not e!3062190))))

(assert (=> b!4898683 (= res!2092458 (= (_1!33555 (get!19497 lt!2008722)) (_1!33556 (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))))))))

(assert (= (and d!1574112 c!832583) b!4898681))

(assert (= (and d!1574112 (not c!832583)) b!4898680))

(assert (= (or b!4898681 b!4898680) bm!339820))

(assert (= (and d!1574112 res!2092456) b!4898684))

(assert (= (and b!4898684 (not res!2092454)) b!4898685))

(assert (= (and b!4898685 res!2092455) b!4898686))

(assert (= (and b!4898684 res!2092457) b!4898687))

(assert (= (and b!4898687 (not res!2092453)) b!4898683))

(assert (= (and b!4898683 res!2092458) b!4898682))

(declare-fun m!5906008 () Bool)

(assert (=> d!1574112 m!5906008))

(assert (=> d!1574112 m!5905562))

(declare-fun m!5906010 () Bool)

(assert (=> d!1574112 m!5906010))

(assert (=> d!1574112 m!5905562))

(declare-fun m!5906012 () Bool)

(assert (=> d!1574112 m!5906012))

(declare-fun m!5906014 () Bool)

(assert (=> d!1574112 m!5906014))

(declare-fun m!5906016 () Bool)

(assert (=> d!1574112 m!5906016))

(assert (=> d!1574112 m!5906012))

(declare-fun m!5906018 () Bool)

(assert (=> d!1574112 m!5906018))

(assert (=> b!4898686 m!5905562))

(assert (=> b!4898686 m!5905562))

(assert (=> b!4898686 m!5906012))

(declare-fun m!5906020 () Bool)

(assert (=> b!4898686 m!5906020))

(declare-fun m!5906022 () Bool)

(assert (=> b!4898686 m!5906022))

(assert (=> b!4898686 m!5906012))

(declare-fun m!5906024 () Bool)

(assert (=> b!4898686 m!5906024))

(assert (=> b!4898687 m!5906014))

(declare-fun m!5906026 () Bool)

(assert (=> bm!339820 m!5906026))

(assert (=> b!4898682 m!5905562))

(declare-fun m!5906028 () Bool)

(assert (=> b!4898682 m!5906028))

(assert (=> b!4898682 m!5905562))

(assert (=> b!4898682 m!5906022))

(assert (=> b!4898682 m!5906028))

(declare-fun m!5906030 () Bool)

(assert (=> b!4898682 m!5906030))

(assert (=> b!4898682 m!5906020))

(assert (=> b!4898685 m!5906020))

(assert (=> b!4898685 m!5905562))

(assert (=> b!4898685 m!5905562))

(assert (=> b!4898685 m!5906012))

(assert (=> b!4898685 m!5906012))

(assert (=> b!4898685 m!5906024))

(assert (=> b!4898684 m!5906014))

(declare-fun m!5906032 () Bool)

(assert (=> b!4898680 m!5906032))

(assert (=> b!4898683 m!5906020))

(assert (=> b!4898683 m!5905562))

(assert (=> b!4898683 m!5905562))

(assert (=> b!4898683 m!5906028))

(assert (=> b!4898683 m!5906028))

(assert (=> b!4898683 m!5906030))

(assert (=> b!4898451 d!1574112))

(declare-fun d!1574114 () Bool)

(declare-fun res!2092463 () Bool)

(declare-fun e!3062197 () Bool)

(assert (=> d!1574114 (=> res!2092463 e!3062197)))

(assert (=> d!1574114 (= res!2092463 (is-Nil!56430 rulesArg!165))))

(assert (=> d!1574114 (= (forall!13097 rulesArg!165 lambda!244157) e!3062197)))

(declare-fun b!4898692 () Bool)

(declare-fun e!3062198 () Bool)

(assert (=> b!4898692 (= e!3062197 e!3062198)))

(declare-fun res!2092464 () Bool)

(assert (=> b!4898692 (=> (not res!2092464) (not e!3062198))))

(declare-fun dynLambda!22692 (Int Rule!16162) Bool)

(assert (=> b!4898692 (= res!2092464 (dynLambda!22692 lambda!244157 (h!62878 rulesArg!165)))))

(declare-fun b!4898693 () Bool)

(assert (=> b!4898693 (= e!3062198 (forall!13097 (t!366240 rulesArg!165) lambda!244157))))

(assert (= (and d!1574114 (not res!2092463)) b!4898692))

(assert (= (and b!4898692 res!2092464) b!4898693))

(declare-fun b_lambda!194865 () Bool)

(assert (=> (not b_lambda!194865) (not b!4898692)))

(declare-fun m!5906034 () Bool)

(assert (=> b!4898692 m!5906034))

(declare-fun m!5906036 () Bool)

(assert (=> b!4898693 m!5906036))

(assert (=> d!1574042 d!1574114))

(declare-fun lt!2008726 () Option!14039)

(declare-fun d!1574116 () Bool)

(assert (=> d!1574116 (= lt!2008726 (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) lt!2008472))))

(declare-fun e!3062199 () Option!14039)

(assert (=> d!1574116 (= lt!2008726 e!3062199)))

(declare-fun c!832584 () Bool)

(assert (=> d!1574116 (= c!832584 (and (is-Cons!56430 (t!366240 rulesArg!165)) (is-Nil!56430 (t!366240 (t!366240 rulesArg!165)))))))

(declare-fun lt!2008728 () Unit!146503)

(declare-fun lt!2008729 () Unit!146503)

(assert (=> d!1574116 (= lt!2008728 lt!2008729)))

(assert (=> d!1574116 (isPrefix!4901 lt!2008472 lt!2008472)))

(assert (=> d!1574116 (= lt!2008729 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(assert (=> d!1574116 (rulesValidInductive!3160 thiss!14805 (t!366240 rulesArg!165))))

(assert (=> d!1574116 (= (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) lt!2008472) lt!2008726)))

(declare-fun bm!339821 () Bool)

(declare-fun call!339826 () Option!14039)

(assert (=> bm!339821 (= call!339826 (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 (t!366240 rulesArg!165)) lt!2008472))))

(declare-fun b!4898694 () Bool)

(assert (=> b!4898694 (= e!3062199 call!339826)))

(declare-fun b!4898695 () Bool)

(declare-fun lt!2008730 () Option!14039)

(declare-fun lt!2008727 () Option!14039)

(assert (=> b!4898695 (= e!3062199 (ite (and (is-None!14038 lt!2008730) (is-None!14038 lt!2008727)) None!14038 (ite (is-None!14038 lt!2008727) lt!2008730 (ite (is-None!14038 lt!2008730) lt!2008727 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2008730))) (size!37167 (_1!33556 (v!49998 lt!2008727)))) lt!2008730 lt!2008727)))))))

(assert (=> b!4898695 (= lt!2008730 call!339826)))

(assert (=> b!4898695 (= lt!2008727 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) lt!2008472))))

(assert (= (and d!1574116 c!832584) b!4898694))

(assert (= (and d!1574116 (not c!832584)) b!4898695))

(assert (= (or b!4898694 b!4898695) bm!339821))

(assert (=> d!1574116 m!5905634))

(assert (=> d!1574116 m!5905558))

(assert (=> d!1574116 m!5905560))

(assert (=> d!1574116 m!5905712))

(declare-fun m!5906038 () Bool)

(assert (=> bm!339821 m!5906038))

(declare-fun m!5906040 () Bool)

(assert (=> b!4898695 m!5906040))

(assert (=> b!4898372 d!1574116))

(assert (=> b!4898431 d!1574098))

(declare-fun d!1574118 () Bool)

(declare-fun fromListB!2698 (List!56552) BalanceConc!28928)

(assert (=> d!1574118 (= (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))) (fromListB!2698 (list!17745 (_1!33560 lt!2008636))))))

(declare-fun bs!1176526 () Bool)

(assert (= bs!1176526 d!1574118))

(assert (=> bs!1176526 m!5905766))

(declare-fun m!5906042 () Bool)

(assert (=> bs!1176526 m!5906042))

(assert (=> b!4898475 d!1574118))

(declare-fun b!4898724 () Bool)

(declare-fun c!832601 () Bool)

(declare-fun call!339847 () Bool)

(assert (=> b!4898724 (= c!832601 call!339847)))

(declare-fun lt!2008808 () Unit!146503)

(declare-fun lt!2008793 () Unit!146503)

(assert (=> b!4898724 (= lt!2008808 lt!2008793)))

(assert (=> b!4898724 (= lt!2008644 Nil!56428)))

(declare-fun call!339844 () Unit!146503)

(assert (=> b!4898724 (= lt!2008793 call!339844)))

(declare-fun lt!2008803 () Unit!146503)

(declare-fun lt!2008789 () Unit!146503)

(assert (=> b!4898724 (= lt!2008803 lt!2008789)))

(declare-fun call!339848 () Bool)

(assert (=> b!4898724 call!339848))

(declare-fun call!339845 () Unit!146503)

(assert (=> b!4898724 (= lt!2008789 call!339845)))

(declare-fun e!3062222 () tuple2!60512)

(declare-fun e!3062223 () tuple2!60512)

(assert (=> b!4898724 (= e!3062222 e!3062223)))

(declare-fun b!4898725 () Bool)

(declare-fun e!3062221 () tuple2!60512)

(declare-fun e!3062219 () tuple2!60512)

(assert (=> b!4898725 (= e!3062221 e!3062219)))

(declare-fun lt!2008809 () tuple2!60512)

(declare-fun call!339843 () tuple2!60512)

(assert (=> b!4898725 (= lt!2008809 call!339843)))

(declare-fun c!832597 () Bool)

(assert (=> b!4898725 (= c!832597 (isEmpty!30306 (_1!33559 lt!2008809)))))

(declare-fun bm!339838 () Bool)

(declare-fun call!339846 () List!56552)

(assert (=> bm!339838 (= call!339846 (tail!9608 lt!2008644))))

(declare-fun bm!339839 () Bool)

(assert (=> bm!339839 (= call!339847 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4898726 () Bool)

(assert (=> b!4898726 (= e!3062223 (tuple2!60513 Nil!56428 lt!2008644))))

(declare-fun b!4898728 () Bool)

(declare-fun e!3062218 () tuple2!60512)

(assert (=> b!4898728 (= e!3062218 e!3062222)))

(declare-fun c!832598 () Bool)

(assert (=> b!4898728 (= c!832598 (= (size!37169 Nil!56428) (size!37169 lt!2008644)))))

(declare-fun b!4898729 () Bool)

(assert (=> b!4898729 (= e!3062219 (tuple2!60513 Nil!56428 lt!2008644))))

(declare-fun b!4898730 () Bool)

(declare-fun e!3062216 () Unit!146503)

(declare-fun Unit!146508 () Unit!146503)

(assert (=> b!4898730 (= e!3062216 Unit!146508)))

(declare-fun lt!2008800 () Unit!146503)

(assert (=> b!4898730 (= lt!2008800 call!339845)))

(assert (=> b!4898730 call!339848))

(declare-fun lt!2008814 () Unit!146503)

(assert (=> b!4898730 (= lt!2008814 lt!2008800)))

(declare-fun lt!2008792 () Unit!146503)

(assert (=> b!4898730 (= lt!2008792 call!339844)))

(assert (=> b!4898730 (= lt!2008644 Nil!56428)))

(declare-fun lt!2008804 () Unit!146503)

(assert (=> b!4898730 (= lt!2008804 lt!2008792)))

(assert (=> b!4898730 false))

(declare-fun b!4898731 () Bool)

(declare-fun c!832600 () Bool)

(assert (=> b!4898731 (= c!832600 call!339847)))

(declare-fun lt!2008788 () Unit!146503)

(declare-fun lt!2008801 () Unit!146503)

(assert (=> b!4898731 (= lt!2008788 lt!2008801)))

(declare-fun lt!2008797 () C!26710)

(declare-fun lt!2008806 () List!56552)

(assert (=> b!4898731 (= (++!12250 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428)) lt!2008806) lt!2008644)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1336 (List!56552 C!26710 List!56552 List!56552) Unit!146503)

(assert (=> b!4898731 (= lt!2008801 (lemmaMoveElementToOtherListKeepsConcatEq!1336 Nil!56428 lt!2008797 lt!2008806 lt!2008644))))

(assert (=> b!4898731 (= lt!2008806 (tail!9608 lt!2008644))))

(assert (=> b!4898731 (= lt!2008797 (head!10462 lt!2008644))))

(declare-fun lt!2008812 () Unit!146503)

(declare-fun lt!2008807 () Unit!146503)

(assert (=> b!4898731 (= lt!2008812 lt!2008807)))

(declare-fun getSuffix!2893 (List!56552 List!56552) List!56552)

(assert (=> b!4898731 (isPrefix!4901 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428)) lt!2008644)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!718 (List!56552 List!56552) Unit!146503)

(assert (=> b!4898731 (= lt!2008807 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 lt!2008644))))

(declare-fun lt!2008791 () Unit!146503)

(declare-fun lt!2008787 () Unit!146503)

(assert (=> b!4898731 (= lt!2008791 lt!2008787)))

(assert (=> b!4898731 (= lt!2008787 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 lt!2008644))))

(declare-fun lt!2008810 () List!56552)

(assert (=> b!4898731 (= lt!2008810 (++!12250 Nil!56428 (Cons!56428 (head!10462 lt!2008644) Nil!56428)))))

(declare-fun lt!2008790 () Unit!146503)

(assert (=> b!4898731 (= lt!2008790 e!3062216)))

(declare-fun c!832602 () Bool)

(assert (=> b!4898731 (= c!832602 (= (size!37169 Nil!56428) (size!37169 lt!2008644)))))

(declare-fun lt!2008796 () Unit!146503)

(declare-fun lt!2008813 () Unit!146503)

(assert (=> b!4898731 (= lt!2008796 lt!2008813)))

(assert (=> b!4898731 (<= (size!37169 Nil!56428) (size!37169 lt!2008644))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!630 (List!56552 List!56552) Unit!146503)

(assert (=> b!4898731 (= lt!2008813 (lemmaIsPrefixThenSmallerEqSize!630 Nil!56428 lt!2008644))))

(assert (=> b!4898731 (= e!3062222 e!3062221)))

(declare-fun b!4898732 () Bool)

(assert (=> b!4898732 (= e!3062221 call!339843)))

(declare-fun b!4898733 () Bool)

(declare-fun e!3062220 () Bool)

(declare-fun e!3062217 () Bool)

(assert (=> b!4898733 (= e!3062220 e!3062217)))

(declare-fun res!2092495 () Bool)

(assert (=> b!4898733 (=> res!2092495 e!3062217)))

(declare-fun lt!2008805 () tuple2!60512)

(assert (=> b!4898733 (= res!2092495 (isEmpty!30306 (_1!33559 lt!2008805)))))

(declare-fun call!339850 () Regex!13256)

(declare-fun bm!339840 () Bool)

(assert (=> bm!339840 (= call!339843 (findLongestMatchInner!1760 call!339850 lt!2008810 (+ (size!37169 Nil!56428) 1) call!339846 lt!2008644 (size!37169 lt!2008644)))))

(declare-fun bm!339841 () Bool)

(assert (=> bm!339841 (= call!339845 (lemmaIsPrefixRefl!3298 lt!2008644 lt!2008644))))

(declare-fun bm!339842 () Bool)

(assert (=> bm!339842 (= call!339848 (isPrefix!4901 lt!2008644 lt!2008644))))

(declare-fun b!4898727 () Bool)

(assert (=> b!4898727 (= e!3062223 (tuple2!60513 Nil!56428 Nil!56428))))

(declare-fun d!1574120 () Bool)

(assert (=> d!1574120 e!3062220))

(declare-fun res!2092496 () Bool)

(assert (=> d!1574120 (=> (not res!2092496) (not e!3062220))))

(assert (=> d!1574120 (= res!2092496 (= (++!12250 (_1!33559 lt!2008805) (_2!33559 lt!2008805)) lt!2008644))))

(assert (=> d!1574120 (= lt!2008805 e!3062218)))

(declare-fun c!832599 () Bool)

(declare-fun lostCause!1092 (Regex!13256) Bool)

(assert (=> d!1574120 (= c!832599 (lostCause!1092 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun lt!2008795 () Unit!146503)

(declare-fun Unit!146509 () Unit!146503)

(assert (=> d!1574120 (= lt!2008795 Unit!146509)))

(assert (=> d!1574120 (= (getSuffix!2893 lt!2008644 Nil!56428) lt!2008644)))

(declare-fun lt!2008794 () Unit!146503)

(declare-fun lt!2008799 () Unit!146503)

(assert (=> d!1574120 (= lt!2008794 lt!2008799)))

(declare-fun lt!2008802 () List!56552)

(assert (=> d!1574120 (= lt!2008644 lt!2008802)))

(declare-fun lemmaSamePrefixThenSameSuffix!2309 (List!56552 List!56552 List!56552 List!56552 List!56552) Unit!146503)

(assert (=> d!1574120 (= lt!2008799 (lemmaSamePrefixThenSameSuffix!2309 Nil!56428 lt!2008644 Nil!56428 lt!2008802 lt!2008644))))

(assert (=> d!1574120 (= lt!2008802 (getSuffix!2893 lt!2008644 Nil!56428))))

(declare-fun lt!2008811 () Unit!146503)

(declare-fun lt!2008798 () Unit!146503)

(assert (=> d!1574120 (= lt!2008811 lt!2008798)))

(assert (=> d!1574120 (isPrefix!4901 Nil!56428 (++!12250 Nil!56428 lt!2008644))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3129 (List!56552 List!56552) Unit!146503)

(assert (=> d!1574120 (= lt!2008798 (lemmaConcatTwoListThenFirstIsPrefix!3129 Nil!56428 lt!2008644))))

(assert (=> d!1574120 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574120 (= (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)) lt!2008805)))

(declare-fun bm!339843 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1064 (List!56552 List!56552 List!56552) Unit!146503)

(assert (=> bm!339843 (= call!339844 (lemmaIsPrefixSameLengthThenSameList!1064 lt!2008644 Nil!56428 lt!2008644))))

(declare-fun b!4898734 () Bool)

(declare-fun Unit!146510 () Unit!146503)

(assert (=> b!4898734 (= e!3062216 Unit!146510)))

(declare-fun b!4898735 () Bool)

(assert (=> b!4898735 (= e!3062218 (tuple2!60513 Nil!56428 lt!2008644))))

(declare-fun b!4898736 () Bool)

(assert (=> b!4898736 (= e!3062217 (>= (size!37169 (_1!33559 lt!2008805)) (size!37169 Nil!56428)))))

(declare-fun bm!339844 () Bool)

(declare-fun call!339849 () C!26710)

(assert (=> bm!339844 (= call!339849 (head!10462 lt!2008644))))

(declare-fun bm!339845 () Bool)

(declare-fun derivativeStep!3884 (Regex!13256 C!26710) Regex!13256)

(assert (=> bm!339845 (= call!339850 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) call!339849))))

(declare-fun b!4898737 () Bool)

(assert (=> b!4898737 (= e!3062219 lt!2008809)))

(assert (= (and d!1574120 c!832599) b!4898735))

(assert (= (and d!1574120 (not c!832599)) b!4898728))

(assert (= (and b!4898728 c!832598) b!4898724))

(assert (= (and b!4898728 (not c!832598)) b!4898731))

(assert (= (and b!4898724 c!832601) b!4898727))

(assert (= (and b!4898724 (not c!832601)) b!4898726))

(assert (= (and b!4898731 c!832602) b!4898730))

(assert (= (and b!4898731 (not c!832602)) b!4898734))

(assert (= (and b!4898731 c!832600) b!4898725))

(assert (= (and b!4898731 (not c!832600)) b!4898732))

(assert (= (and b!4898725 c!832597) b!4898729))

(assert (= (and b!4898725 (not c!832597)) b!4898737))

(assert (= (or b!4898725 b!4898732) bm!339838))

(assert (= (or b!4898725 b!4898732) bm!339844))

(assert (= (or b!4898725 b!4898732) bm!339845))

(assert (= (or b!4898725 b!4898732) bm!339840))

(assert (= (or b!4898724 b!4898731) bm!339839))

(assert (= (or b!4898724 b!4898730) bm!339841))

(assert (= (or b!4898724 b!4898730) bm!339843))

(assert (= (or b!4898724 b!4898730) bm!339842))

(assert (= (and d!1574120 res!2092496) b!4898733))

(assert (= (and b!4898733 (not res!2092495)) b!4898736))

(declare-fun m!5906044 () Bool)

(assert (=> bm!339845 m!5906044))

(declare-fun m!5906046 () Bool)

(assert (=> bm!339844 m!5906046))

(declare-fun m!5906048 () Bool)

(assert (=> bm!339841 m!5906048))

(declare-fun m!5906050 () Bool)

(assert (=> b!4898731 m!5906050))

(declare-fun m!5906052 () Bool)

(assert (=> b!4898731 m!5906052))

(declare-fun m!5906054 () Bool)

(assert (=> b!4898731 m!5906054))

(declare-fun m!5906056 () Bool)

(assert (=> b!4898731 m!5906056))

(declare-fun m!5906058 () Bool)

(assert (=> b!4898731 m!5906058))

(assert (=> b!4898731 m!5906046))

(assert (=> b!4898731 m!5905738))

(assert (=> b!4898731 m!5906052))

(assert (=> b!4898731 m!5906058))

(declare-fun m!5906060 () Bool)

(assert (=> b!4898731 m!5906060))

(declare-fun m!5906062 () Bool)

(assert (=> b!4898731 m!5906062))

(declare-fun m!5906064 () Bool)

(assert (=> b!4898731 m!5906064))

(assert (=> b!4898731 m!5906050))

(declare-fun m!5906066 () Bool)

(assert (=> b!4898731 m!5906066))

(declare-fun m!5906068 () Bool)

(assert (=> b!4898731 m!5906068))

(assert (=> b!4898731 m!5905740))

(declare-fun m!5906070 () Bool)

(assert (=> b!4898731 m!5906070))

(assert (=> d!1574120 m!5906050))

(declare-fun m!5906072 () Bool)

(assert (=> d!1574120 m!5906072))

(assert (=> d!1574120 m!5905982))

(declare-fun m!5906074 () Bool)

(assert (=> d!1574120 m!5906074))

(declare-fun m!5906076 () Bool)

(assert (=> d!1574120 m!5906076))

(declare-fun m!5906078 () Bool)

(assert (=> d!1574120 m!5906078))

(declare-fun m!5906080 () Bool)

(assert (=> d!1574120 m!5906080))

(assert (=> d!1574120 m!5906078))

(declare-fun m!5906082 () Bool)

(assert (=> d!1574120 m!5906082))

(assert (=> bm!339839 m!5905984))

(assert (=> bm!339838 m!5906070))

(assert (=> bm!339840 m!5905740))

(declare-fun m!5906084 () Bool)

(assert (=> bm!339840 m!5906084))

(declare-fun m!5906086 () Bool)

(assert (=> b!4898733 m!5906086))

(declare-fun m!5906088 () Bool)

(assert (=> b!4898725 m!5906088))

(declare-fun m!5906090 () Bool)

(assert (=> b!4898736 m!5906090))

(assert (=> b!4898736 m!5905738))

(declare-fun m!5906092 () Bool)

(assert (=> bm!339842 m!5906092))

(declare-fun m!5906094 () Bool)

(assert (=> bm!339843 m!5906094))

(assert (=> b!4898475 d!1574120))

(declare-fun d!1574122 () Bool)

(declare-fun dynLambda!22693 (Int BalanceConc!28928) Bool)

(assert (=> d!1574122 (dynLambda!22693 lambda!244166 (_1!33560 lt!2008636))))

(declare-fun lt!2008817 () Unit!146503)

(declare-fun choose!35769 (Int BalanceConc!28928) Unit!146503)

(assert (=> d!1574122 (= lt!2008817 (choose!35769 lambda!244166 (_1!33560 lt!2008636)))))

(declare-fun Forall!1694 (Int) Bool)

(assert (=> d!1574122 (Forall!1694 lambda!244166)))

(assert (=> d!1574122 (= (ForallOf!1140 lambda!244166 (_1!33560 lt!2008636)) lt!2008817)))

(declare-fun b_lambda!194867 () Bool)

(assert (=> (not b_lambda!194867) (not d!1574122)))

(declare-fun bs!1176527 () Bool)

(assert (= bs!1176527 d!1574122))

(declare-fun m!5906096 () Bool)

(assert (=> bs!1176527 m!5906096))

(declare-fun m!5906098 () Bool)

(assert (=> bs!1176527 m!5906098))

(declare-fun m!5906100 () Bool)

(assert (=> bs!1176527 m!5906100))

(assert (=> b!4898475 d!1574122))

(declare-fun d!1574124 () Bool)

(assert (=> d!1574124 (= (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))) (is-Nil!56428 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (=> b!4898475 d!1574124))

(declare-fun d!1574126 () Bool)

(declare-fun e!3062226 () Bool)

(assert (=> d!1574126 e!3062226))

(declare-fun res!2092499 () Bool)

(assert (=> d!1574126 (=> (not res!2092499) (not e!3062226))))

(assert (=> d!1574126 (= res!2092499 (semiInverseModEq!3593 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))))))

(declare-fun Unit!146511 () Unit!146503)

(assert (=> d!1574126 (= (lemmaInv!1243 (transformation!8181 (h!62878 rulesArg!165))) Unit!146511)))

(declare-fun b!4898740 () Bool)

(assert (=> b!4898740 (= e!3062226 (equivClasses!3472 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))))))

(assert (= (and d!1574126 res!2092499) b!4898740))

(assert (=> d!1574126 m!5905664))

(assert (=> b!4898740 m!5905666))

(assert (=> b!4898475 d!1574126))

(declare-fun d!1574128 () Bool)

(declare-fun lt!2008820 () Int)

(assert (=> d!1574128 (>= lt!2008820 0)))

(declare-fun e!3062229 () Int)

(assert (=> d!1574128 (= lt!2008820 e!3062229)))

(declare-fun c!832605 () Bool)

(assert (=> d!1574128 (= c!832605 (is-Nil!56428 Nil!56428))))

(assert (=> d!1574128 (= (size!37169 Nil!56428) lt!2008820)))

(declare-fun b!4898745 () Bool)

(assert (=> b!4898745 (= e!3062229 0)))

(declare-fun b!4898746 () Bool)

(assert (=> b!4898746 (= e!3062229 (+ 1 (size!37169 (t!366238 Nil!56428))))))

(assert (= (and d!1574128 c!832605) b!4898745))

(assert (= (and d!1574128 (not c!832605)) b!4898746))

(declare-fun m!5906102 () Bool)

(assert (=> b!4898746 m!5906102))

(assert (=> b!4898475 d!1574128))

(declare-fun d!1574130 () Bool)

(assert (=> d!1574130 (dynLambda!22693 lambda!244166 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))

(declare-fun lt!2008821 () Unit!146503)

(assert (=> d!1574130 (= lt!2008821 (choose!35769 lambda!244166 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))

(assert (=> d!1574130 (Forall!1694 lambda!244166)))

(assert (=> d!1574130 (= (ForallOf!1140 lambda!244166 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))) lt!2008821)))

(declare-fun b_lambda!194869 () Bool)

(assert (=> (not b_lambda!194869) (not d!1574130)))

(declare-fun bs!1176528 () Bool)

(assert (= bs!1176528 d!1574130))

(assert (=> bs!1176528 m!5905762))

(declare-fun m!5906104 () Bool)

(assert (=> bs!1176528 m!5906104))

(assert (=> bs!1176528 m!5905762))

(declare-fun m!5906106 () Bool)

(assert (=> bs!1176528 m!5906106))

(assert (=> bs!1176528 m!5906100))

(assert (=> b!4898475 d!1574130))

(declare-fun d!1574132 () Bool)

(declare-fun dynLambda!22694 (Int BalanceConc!28928) TokenValue!8491)

(assert (=> d!1574132 (= (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (_1!33560 lt!2008636)) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))

(declare-fun b_lambda!194871 () Bool)

(assert (=> (not b_lambda!194871) (not d!1574132)))

(declare-fun t!366245 () Bool)

(declare-fun tb!259451 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366245) tb!259451))

(declare-fun result!323098 () Bool)

(declare-fun inv!21 (TokenValue!8491) Bool)

(assert (=> tb!259451 (= result!323098 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))

(declare-fun m!5906108 () Bool)

(assert (=> tb!259451 m!5906108))

(assert (=> d!1574132 t!366245))

(declare-fun b_and!345623 () Bool)

(assert (= b_and!345607 (and (=> t!366245 result!323098) b_and!345623)))

(declare-fun t!366247 () Bool)

(declare-fun tb!259453 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366247) tb!259453))

(declare-fun result!323102 () Bool)

(assert (= result!323102 result!323098))

(assert (=> d!1574132 t!366247))

(declare-fun b_and!345625 () Bool)

(assert (= b_and!345615 (and (=> t!366247 result!323102) b_and!345625)))

(declare-fun m!5906110 () Bool)

(assert (=> d!1574132 m!5906110))

(assert (=> b!4898475 d!1574132))

(declare-fun d!1574134 () Bool)

(assert (=> d!1574134 (= (list!17745 (_1!33560 lt!2008636)) (list!17747 (c!832544 (_1!33560 lt!2008636))))))

(declare-fun bs!1176529 () Bool)

(assert (= bs!1176529 d!1574134))

(declare-fun m!5906112 () Bool)

(assert (=> bs!1176529 m!5906112))

(assert (=> b!4898475 d!1574134))

(declare-fun d!1574136 () Bool)

(declare-fun lt!2008824 () Int)

(assert (=> d!1574136 (= lt!2008824 (size!37169 (list!17745 (_1!33560 lt!2008636))))))

(declare-fun size!37173 (Conc!14749) Int)

(assert (=> d!1574136 (= lt!2008824 (size!37173 (c!832544 (_1!33560 lt!2008636))))))

(assert (=> d!1574136 (= (size!37170 (_1!33560 lt!2008636)) lt!2008824)))

(declare-fun bs!1176530 () Bool)

(assert (= bs!1176530 d!1574136))

(assert (=> bs!1176530 m!5905766))

(assert (=> bs!1176530 m!5905766))

(declare-fun m!5906114 () Bool)

(assert (=> bs!1176530 m!5906114))

(declare-fun m!5906116 () Bool)

(assert (=> bs!1176530 m!5906116))

(assert (=> b!4898475 d!1574136))

(assert (=> b!4898475 d!1574020))

(declare-fun bs!1176531 () Bool)

(declare-fun d!1574138 () Bool)

(assert (= bs!1176531 (and d!1574138 d!1574088)))

(declare-fun lambda!244176 () Int)

(assert (=> bs!1176531 (= lambda!244176 lambda!244173)))

(declare-fun b!4898755 () Bool)

(declare-fun e!3062237 () Bool)

(assert (=> b!4898755 (= e!3062237 true)))

(assert (=> d!1574138 e!3062237))

(assert (= d!1574138 b!4898755))

(assert (=> b!4898755 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22691 order!25539 lambda!244176))))

(assert (=> b!4898755 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22691 order!25539 lambda!244176))))

(assert (=> d!1574138 (= (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))

(declare-fun lt!2008827 () Unit!146503)

(declare-fun Forall2of!453 (Int BalanceConc!28928 BalanceConc!28928) Unit!146503)

(assert (=> d!1574138 (= lt!2008827 (Forall2of!453 lambda!244176 (_1!33560 lt!2008636) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))

(assert (=> d!1574138 (= (list!17745 (_1!33560 lt!2008636)) (list!17745 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))

(assert (=> d!1574138 (= (lemmaEqSameImage!1097 (transformation!8181 (h!62878 rulesArg!165)) (_1!33560 lt!2008636) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))) lt!2008827)))

(declare-fun b_lambda!194873 () Bool)

(assert (=> (not b_lambda!194873) (not d!1574138)))

(assert (=> d!1574138 t!366245))

(declare-fun b_and!345627 () Bool)

(assert (= b_and!345623 (and (=> t!366245 result!323098) b_and!345627)))

(assert (=> d!1574138 t!366247))

(declare-fun b_and!345629 () Bool)

(assert (= b_and!345625 (and (=> t!366247 result!323102) b_and!345629)))

(declare-fun b_lambda!194875 () Bool)

(assert (=> (not b_lambda!194875) (not d!1574138)))

(declare-fun t!366249 () Bool)

(declare-fun tb!259455 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366249) tb!259455))

(declare-fun result!323104 () Bool)

(assert (=> tb!259455 (= result!323104 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun m!5906118 () Bool)

(assert (=> tb!259455 m!5906118))

(assert (=> d!1574138 t!366249))

(declare-fun b_and!345631 () Bool)

(assert (= b_and!345627 (and (=> t!366249 result!323104) b_and!345631)))

(declare-fun t!366251 () Bool)

(declare-fun tb!259457 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366251) tb!259457))

(declare-fun result!323106 () Bool)

(assert (= result!323106 result!323104))

(assert (=> d!1574138 t!366251))

(declare-fun b_and!345633 () Bool)

(assert (= b_and!345629 (and (=> t!366251 result!323106) b_and!345633)))

(assert (=> d!1574138 m!5905762))

(declare-fun m!5906120 () Bool)

(assert (=> d!1574138 m!5906120))

(assert (=> d!1574138 m!5905766))

(assert (=> d!1574138 m!5905762))

(declare-fun m!5906122 () Bool)

(assert (=> d!1574138 m!5906122))

(assert (=> d!1574138 m!5906110))

(assert (=> d!1574138 m!5905762))

(declare-fun m!5906124 () Bool)

(assert (=> d!1574138 m!5906124))

(assert (=> b!4898475 d!1574138))

(declare-fun d!1574140 () Bool)

(declare-fun e!3062241 () Bool)

(assert (=> d!1574140 e!3062241))

(declare-fun res!2092504 () Bool)

(assert (=> d!1574140 (=> res!2092504 e!3062241)))

(assert (=> d!1574140 (= res!2092504 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(declare-fun lt!2008830 () Unit!146503)

(declare-fun choose!35770 (Regex!13256 List!56552) Unit!146503)

(assert (=> d!1574140 (= lt!2008830 (choose!35770 (regex!8181 (h!62878 rulesArg!165)) lt!2008644))))

(assert (=> d!1574140 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574140 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 rulesArg!165)) lt!2008644) lt!2008830)))

(declare-fun b!4898758 () Bool)

(assert (=> b!4898758 (= e!3062241 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (= (and d!1574140 (not res!2092504)) b!4898758))

(assert (=> d!1574140 m!5905738))

(assert (=> d!1574140 m!5905740))

(assert (=> d!1574140 m!5905738))

(assert (=> d!1574140 m!5905740))

(assert (=> d!1574140 m!5905742))

(assert (=> d!1574140 m!5905982))

(assert (=> d!1574140 m!5905778))

(declare-fun m!5906126 () Bool)

(assert (=> d!1574140 m!5906126))

(assert (=> b!4898758 m!5905738))

(assert (=> b!4898758 m!5905740))

(assert (=> b!4898758 m!5905738))

(assert (=> b!4898758 m!5905740))

(assert (=> b!4898758 m!5905742))

(assert (=> b!4898758 m!5905744))

(assert (=> b!4898475 d!1574140))

(declare-fun d!1574142 () Bool)

(declare-fun lt!2008831 () Int)

(assert (=> d!1574142 (>= lt!2008831 0)))

(declare-fun e!3062242 () Int)

(assert (=> d!1574142 (= lt!2008831 e!3062242)))

(declare-fun c!832606 () Bool)

(assert (=> d!1574142 (= c!832606 (is-Nil!56428 lt!2008644))))

(assert (=> d!1574142 (= (size!37169 lt!2008644) lt!2008831)))

(declare-fun b!4898759 () Bool)

(assert (=> b!4898759 (= e!3062242 0)))

(declare-fun b!4898760 () Bool)

(assert (=> b!4898760 (= e!3062242 (+ 1 (size!37169 (t!366238 lt!2008644))))))

(assert (= (and d!1574142 c!832606) b!4898759))

(assert (= (and d!1574142 (not c!832606)) b!4898760))

(declare-fun m!5906128 () Bool)

(assert (=> b!4898760 m!5906128))

(assert (=> b!4898475 d!1574142))

(declare-fun d!1574144 () Bool)

(assert (=> d!1574144 (= (get!19497 lt!2008609) (v!49999 lt!2008609))))

(assert (=> b!4898456 d!1574144))

(declare-fun d!1574146 () Bool)

(assert (=> d!1574146 (= (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))) (v!49998 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))))))

(assert (=> b!4898456 d!1574146))

(declare-fun d!1574148 () Bool)

(declare-fun lt!2008832 () Option!14039)

(assert (=> d!1574148 (= lt!2008832 (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236)))))

(declare-fun e!3062243 () Option!14039)

(assert (=> d!1574148 (= lt!2008832 e!3062243)))

(declare-fun c!832607 () Bool)

(assert (=> d!1574148 (= c!832607 (and (is-Cons!56430 (t!366240 rulesArg!165)) (is-Nil!56430 (t!366240 (t!366240 rulesArg!165)))))))

(declare-fun lt!2008834 () Unit!146503)

(declare-fun lt!2008835 () Unit!146503)

(assert (=> d!1574148 (= lt!2008834 lt!2008835)))

(assert (=> d!1574148 (isPrefix!4901 (list!17745 input!1236) (list!17745 input!1236))))

(assert (=> d!1574148 (= lt!2008835 (lemmaIsPrefixRefl!3298 (list!17745 input!1236) (list!17745 input!1236)))))

(assert (=> d!1574148 (rulesValidInductive!3160 thiss!14805 (t!366240 rulesArg!165))))

(assert (=> d!1574148 (= (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236)) lt!2008832)))

(declare-fun call!339851 () Option!14039)

(declare-fun bm!339846 () Bool)

(assert (=> bm!339846 (= call!339851 (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun b!4898761 () Bool)

(assert (=> b!4898761 (= e!3062243 call!339851)))

(declare-fun b!4898762 () Bool)

(declare-fun lt!2008836 () Option!14039)

(declare-fun lt!2008833 () Option!14039)

(assert (=> b!4898762 (= e!3062243 (ite (and (is-None!14038 lt!2008836) (is-None!14038 lt!2008833)) None!14038 (ite (is-None!14038 lt!2008833) lt!2008836 (ite (is-None!14038 lt!2008836) lt!2008833 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2008836))) (size!37167 (_1!33556 (v!49998 lt!2008833)))) lt!2008836 lt!2008833)))))))

(assert (=> b!4898762 (= lt!2008836 call!339851)))

(assert (=> b!4898762 (= lt!2008833 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236)))))

(assert (= (and d!1574148 c!832607) b!4898761))

(assert (= (and d!1574148 (not c!832607)) b!4898762))

(assert (= (or b!4898761 b!4898762) bm!339846))

(assert (=> d!1574148 m!5905562))

(assert (=> d!1574148 m!5905732))

(assert (=> d!1574148 m!5905562))

(assert (=> d!1574148 m!5905562))

(declare-fun m!5906130 () Bool)

(assert (=> d!1574148 m!5906130))

(assert (=> d!1574148 m!5905562))

(assert (=> d!1574148 m!5905562))

(declare-fun m!5906132 () Bool)

(assert (=> d!1574148 m!5906132))

(assert (=> d!1574148 m!5905712))

(assert (=> bm!339846 m!5905562))

(declare-fun m!5906134 () Bool)

(assert (=> bm!339846 m!5906134))

(assert (=> b!4898762 m!5905562))

(assert (=> b!4898762 m!5906012))

(assert (=> b!4898456 d!1574148))

(assert (=> b!4898456 d!1574020))

(declare-fun d!1574150 () Bool)

(declare-fun lt!2008837 () Int)

(assert (=> d!1574150 (>= lt!2008837 0)))

(declare-fun e!3062244 () Int)

(assert (=> d!1574150 (= lt!2008837 e!3062244)))

(declare-fun c!832608 () Bool)

(assert (=> d!1574150 (= c!832608 (is-Nil!56428 (_2!33556 (get!19496 lt!2008523))))))

(assert (=> d!1574150 (= (size!37169 (_2!33556 (get!19496 lt!2008523))) lt!2008837)))

(declare-fun b!4898763 () Bool)

(assert (=> b!4898763 (= e!3062244 0)))

(declare-fun b!4898764 () Bool)

(assert (=> b!4898764 (= e!3062244 (+ 1 (size!37169 (t!366238 (_2!33556 (get!19496 lt!2008523))))))))

(assert (= (and d!1574150 c!832608) b!4898763))

(assert (= (and d!1574150 (not c!832608)) b!4898764))

(declare-fun m!5906136 () Bool)

(assert (=> b!4898764 m!5906136))

(assert (=> b!4898353 d!1574150))

(declare-fun d!1574152 () Bool)

(assert (=> d!1574152 (= (get!19496 lt!2008523) (v!49998 lt!2008523))))

(assert (=> b!4898353 d!1574152))

(declare-fun d!1574154 () Bool)

(declare-fun lt!2008838 () Int)

(assert (=> d!1574154 (>= lt!2008838 0)))

(declare-fun e!3062245 () Int)

(assert (=> d!1574154 (= lt!2008838 e!3062245)))

(declare-fun c!832609 () Bool)

(assert (=> d!1574154 (= c!832609 (is-Nil!56428 lt!2008472))))

(assert (=> d!1574154 (= (size!37169 lt!2008472) lt!2008838)))

(declare-fun b!4898765 () Bool)

(assert (=> b!4898765 (= e!3062245 0)))

(declare-fun b!4898766 () Bool)

(assert (=> b!4898766 (= e!3062245 (+ 1 (size!37169 (t!366238 lt!2008472))))))

(assert (= (and d!1574154 c!832609) b!4898765))

(assert (= (and d!1574154 (not c!832609)) b!4898766))

(declare-fun m!5906138 () Bool)

(assert (=> b!4898766 m!5906138))

(assert (=> b!4898353 d!1574154))

(assert (=> b!4898454 d!1574144))

(declare-fun d!1574156 () Bool)

(assert (=> d!1574156 (= (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))) (v!49998 (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))))))

(assert (=> b!4898454 d!1574156))

(declare-fun bm!339847 () Bool)

(declare-fun call!339852 () Option!14039)

(assert (=> bm!339847 (= call!339852 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun b!4898768 () Bool)

(declare-fun res!2092507 () Bool)

(declare-fun e!3062248 () Bool)

(assert (=> b!4898768 (=> (not res!2092507) (not e!3062248))))

(declare-fun lt!2008840 () Option!14039)

(assert (=> b!4898768 (= res!2092507 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))) (_2!33556 (get!19496 lt!2008840))) (list!17745 input!1236)))))

(declare-fun b!4898769 () Bool)

(assert (=> b!4898769 (= e!3062248 (contains!19444 (t!366240 rulesArg!165) (rule!11389 (_1!33556 (get!19496 lt!2008840)))))))

(declare-fun b!4898770 () Bool)

(declare-fun e!3062247 () Option!14039)

(declare-fun lt!2008842 () Option!14039)

(declare-fun lt!2008843 () Option!14039)

(assert (=> b!4898770 (= e!3062247 (ite (and (is-None!14038 lt!2008842) (is-None!14038 lt!2008843)) None!14038 (ite (is-None!14038 lt!2008843) lt!2008842 (ite (is-None!14038 lt!2008842) lt!2008843 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2008842))) (size!37167 (_1!33556 (v!49998 lt!2008843)))) lt!2008842 lt!2008843)))))))

(assert (=> b!4898770 (= lt!2008842 call!339852)))

(assert (=> b!4898770 (= lt!2008843 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun b!4898771 () Bool)

(declare-fun res!2092511 () Bool)

(assert (=> b!4898771 (=> (not res!2092511) (not e!3062248))))

(assert (=> b!4898771 (= res!2092511 (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))))))

(declare-fun b!4898772 () Bool)

(declare-fun res!2092506 () Bool)

(assert (=> b!4898772 (=> (not res!2092506) (not e!3062248))))

(assert (=> b!4898772 (= res!2092506 (= (value!262310 (_1!33556 (get!19496 lt!2008840))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840)))))))))

(declare-fun b!4898773 () Bool)

(assert (=> b!4898773 (= e!3062247 call!339852)))

(declare-fun d!1574158 () Bool)

(declare-fun e!3062246 () Bool)

(assert (=> d!1574158 e!3062246))

(declare-fun res!2092508 () Bool)

(assert (=> d!1574158 (=> res!2092508 e!3062246)))

(assert (=> d!1574158 (= res!2092508 (isEmpty!30303 lt!2008840))))

(assert (=> d!1574158 (= lt!2008840 e!3062247)))

(declare-fun c!832610 () Bool)

(assert (=> d!1574158 (= c!832610 (and (is-Cons!56430 (t!366240 rulesArg!165)) (is-Nil!56430 (t!366240 (t!366240 rulesArg!165)))))))

(declare-fun lt!2008839 () Unit!146503)

(declare-fun lt!2008841 () Unit!146503)

(assert (=> d!1574158 (= lt!2008839 lt!2008841)))

(assert (=> d!1574158 (isPrefix!4901 (list!17745 input!1236) (list!17745 input!1236))))

(assert (=> d!1574158 (= lt!2008841 (lemmaIsPrefixRefl!3298 (list!17745 input!1236) (list!17745 input!1236)))))

(assert (=> d!1574158 (rulesValidInductive!3160 thiss!14805 (t!366240 rulesArg!165))))

(assert (=> d!1574158 (= (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236)) lt!2008840)))

(declare-fun b!4898767 () Bool)

(assert (=> b!4898767 (= e!3062246 e!3062248)))

(declare-fun res!2092510 () Bool)

(assert (=> b!4898767 (=> (not res!2092510) (not e!3062248))))

(assert (=> b!4898767 (= res!2092510 (isDefined!11052 lt!2008840))))

(declare-fun b!4898774 () Bool)

(declare-fun res!2092505 () Bool)

(assert (=> b!4898774 (=> (not res!2092505) (not e!3062248))))

(assert (=> b!4898774 (= res!2092505 (< (size!37169 (_2!33556 (get!19496 lt!2008840))) (size!37169 (list!17745 input!1236))))))

(declare-fun b!4898775 () Bool)

(declare-fun res!2092509 () Bool)

(assert (=> b!4898775 (=> (not res!2092509) (not e!3062248))))

(assert (=> b!4898775 (= res!2092509 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840)))))))

(assert (= (and d!1574158 c!832610) b!4898773))

(assert (= (and d!1574158 (not c!832610)) b!4898770))

(assert (= (or b!4898773 b!4898770) bm!339847))

(assert (= (and d!1574158 (not res!2092508)) b!4898767))

(assert (= (and b!4898767 res!2092510) b!4898775))

(assert (= (and b!4898775 res!2092509) b!4898774))

(assert (= (and b!4898774 res!2092505) b!4898768))

(assert (= (and b!4898768 res!2092507) b!4898772))

(assert (= (and b!4898772 res!2092506) b!4898771))

(assert (= (and b!4898771 res!2092511) b!4898769))

(declare-fun m!5906140 () Bool)

(assert (=> b!4898768 m!5906140))

(declare-fun m!5906142 () Bool)

(assert (=> b!4898768 m!5906142))

(assert (=> b!4898768 m!5906142))

(declare-fun m!5906144 () Bool)

(assert (=> b!4898768 m!5906144))

(assert (=> b!4898768 m!5906144))

(declare-fun m!5906146 () Bool)

(assert (=> b!4898768 m!5906146))

(assert (=> b!4898775 m!5906140))

(assert (=> b!4898775 m!5906142))

(assert (=> b!4898775 m!5906142))

(assert (=> b!4898775 m!5906144))

(assert (=> b!4898772 m!5906140))

(declare-fun m!5906148 () Bool)

(assert (=> b!4898772 m!5906148))

(assert (=> b!4898772 m!5906148))

(declare-fun m!5906150 () Bool)

(assert (=> b!4898772 m!5906150))

(assert (=> b!4898771 m!5906140))

(assert (=> b!4898771 m!5906142))

(assert (=> b!4898771 m!5906142))

(assert (=> b!4898771 m!5906144))

(assert (=> b!4898771 m!5906144))

(declare-fun m!5906152 () Bool)

(assert (=> b!4898771 m!5906152))

(assert (=> b!4898769 m!5906140))

(declare-fun m!5906154 () Bool)

(assert (=> b!4898769 m!5906154))

(declare-fun m!5906156 () Bool)

(assert (=> b!4898767 m!5906156))

(assert (=> b!4898774 m!5906140))

(declare-fun m!5906158 () Bool)

(assert (=> b!4898774 m!5906158))

(assert (=> b!4898774 m!5905562))

(assert (=> b!4898774 m!5905900))

(declare-fun m!5906160 () Bool)

(assert (=> d!1574158 m!5906160))

(assert (=> d!1574158 m!5905562))

(assert (=> d!1574158 m!5905562))

(assert (=> d!1574158 m!5906130))

(assert (=> d!1574158 m!5905562))

(assert (=> d!1574158 m!5905562))

(assert (=> d!1574158 m!5906132))

(assert (=> d!1574158 m!5905712))

(assert (=> b!4898770 m!5905562))

(assert (=> b!4898770 m!5906028))

(assert (=> bm!339847 m!5905562))

(declare-fun m!5906162 () Bool)

(assert (=> bm!339847 m!5906162))

(assert (=> b!4898454 d!1574158))

(assert (=> b!4898454 d!1574020))

(assert (=> b!4898276 d!1574028))

(declare-fun b!4898784 () Bool)

(declare-fun e!3062253 () List!56552)

(assert (=> b!4898784 (= e!3062253 Nil!56428)))

(declare-fun d!1574160 () Bool)

(declare-fun c!832615 () Bool)

(assert (=> d!1574160 (= c!832615 (is-Empty!14749 (c!832544 input!1236)))))

(assert (=> d!1574160 (= (list!17747 (c!832544 input!1236)) e!3062253)))

(declare-fun b!4898785 () Bool)

(declare-fun e!3062254 () List!56552)

(assert (=> b!4898785 (= e!3062253 e!3062254)))

(declare-fun c!832616 () Bool)

(assert (=> b!4898785 (= c!832616 (is-Leaf!24557 (c!832544 input!1236)))))

(declare-fun b!4898787 () Bool)

(assert (=> b!4898787 (= e!3062254 (++!12250 (list!17747 (left!41002 (c!832544 input!1236))) (list!17747 (right!41332 (c!832544 input!1236)))))))

(declare-fun b!4898786 () Bool)

(declare-fun list!17749 (IArray!29559) List!56552)

(assert (=> b!4898786 (= e!3062254 (list!17749 (xs!18065 (c!832544 input!1236))))))

(assert (= (and d!1574160 c!832615) b!4898784))

(assert (= (and d!1574160 (not c!832615)) b!4898785))

(assert (= (and b!4898785 c!832616) b!4898786))

(assert (= (and b!4898785 (not c!832616)) b!4898787))

(declare-fun m!5906164 () Bool)

(assert (=> b!4898787 m!5906164))

(declare-fun m!5906166 () Bool)

(assert (=> b!4898787 m!5906166))

(assert (=> b!4898787 m!5906164))

(assert (=> b!4898787 m!5906166))

(declare-fun m!5906168 () Bool)

(assert (=> b!4898787 m!5906168))

(declare-fun m!5906170 () Bool)

(assert (=> b!4898786 m!5906170))

(assert (=> d!1574020 d!1574160))

(declare-fun b!4898788 () Bool)

(declare-fun e!3062255 () List!56552)

(assert (=> b!4898788 (= e!3062255 Nil!56428)))

(declare-fun d!1574162 () Bool)

(declare-fun c!832617 () Bool)

(assert (=> d!1574162 (= c!832617 (is-Empty!14749 (c!832544 (_2!33555 lt!2008470))))))

(assert (=> d!1574162 (= (list!17747 (c!832544 (_2!33555 lt!2008470))) e!3062255)))

(declare-fun b!4898789 () Bool)

(declare-fun e!3062256 () List!56552)

(assert (=> b!4898789 (= e!3062255 e!3062256)))

(declare-fun c!832618 () Bool)

(assert (=> b!4898789 (= c!832618 (is-Leaf!24557 (c!832544 (_2!33555 lt!2008470))))))

(declare-fun b!4898791 () Bool)

(assert (=> b!4898791 (= e!3062256 (++!12250 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470)))) (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470))))))))

(declare-fun b!4898790 () Bool)

(assert (=> b!4898790 (= e!3062256 (list!17749 (xs!18065 (c!832544 (_2!33555 lt!2008470)))))))

(assert (= (and d!1574162 c!832617) b!4898788))

(assert (= (and d!1574162 (not c!832617)) b!4898789))

(assert (= (and b!4898789 c!832618) b!4898790))

(assert (= (and b!4898789 (not c!832618)) b!4898791))

(declare-fun m!5906172 () Bool)

(assert (=> b!4898791 m!5906172))

(declare-fun m!5906174 () Bool)

(assert (=> b!4898791 m!5906174))

(assert (=> b!4898791 m!5906172))

(assert (=> b!4898791 m!5906174))

(declare-fun m!5906176 () Bool)

(assert (=> b!4898791 m!5906176))

(declare-fun m!5906178 () Bool)

(assert (=> b!4898790 m!5906178))

(assert (=> d!1574034 d!1574162))

(assert (=> b!4898453 d!1574156))

(assert (=> b!4898453 d!1574020))

(assert (=> b!4898453 d!1574144))

(assert (=> b!4898453 d!1574158))

(declare-fun d!1574164 () Bool)

(assert (=> d!1574164 (= (list!17745 (_2!33555 (get!19497 lt!2008609))) (list!17747 (c!832544 (_2!33555 (get!19497 lt!2008609)))))))

(declare-fun bs!1176532 () Bool)

(assert (= bs!1176532 d!1574164))

(declare-fun m!5906180 () Bool)

(assert (=> bs!1176532 m!5906180))

(assert (=> b!4898453 d!1574164))

(declare-fun bs!1176533 () Bool)

(declare-fun d!1574166 () Bool)

(assert (= bs!1176533 (and d!1574166 b!4898475)))

(declare-fun lambda!244179 () Int)

(assert (=> bs!1176533 (= lambda!244179 lambda!244166)))

(assert (=> d!1574166 true))

(assert (=> d!1574166 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244179))))

(assert (=> d!1574166 true))

(assert (=> d!1574166 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244179))))

(assert (=> d!1574166 (= (semiInverseModEq!3593 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (Forall!1694 lambda!244179))))

(declare-fun bs!1176534 () Bool)

(assert (= bs!1176534 d!1574166))

(declare-fun m!5906182 () Bool)

(assert (=> bs!1176534 m!5906182))

(assert (=> d!1574038 d!1574166))

(declare-fun d!1574168 () Bool)

(declare-fun e!3062261 () Bool)

(assert (=> d!1574168 e!3062261))

(declare-fun res!2092516 () Bool)

(assert (=> d!1574168 (=> (not res!2092516) (not e!3062261))))

(declare-fun lt!2008846 () List!56552)

(declare-fun content!10031 (List!56552) (Set C!26710))

(assert (=> d!1574168 (= res!2092516 (= (content!10031 lt!2008846) (set.union (content!10031 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (content!10031 (_2!33556 (get!19496 lt!2008523))))))))

(declare-fun e!3062262 () List!56552)

(assert (=> d!1574168 (= lt!2008846 e!3062262)))

(declare-fun c!832621 () Bool)

(assert (=> d!1574168 (= c!832621 (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> d!1574168 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))) (_2!33556 (get!19496 lt!2008523))) lt!2008846)))

(declare-fun b!4898807 () Bool)

(assert (=> b!4898807 (= e!3062261 (or (not (= (_2!33556 (get!19496 lt!2008523)) Nil!56428)) (= lt!2008846 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4898804 () Bool)

(assert (=> b!4898804 (= e!3062262 (_2!33556 (get!19496 lt!2008523)))))

(declare-fun b!4898806 () Bool)

(declare-fun res!2092517 () Bool)

(assert (=> b!4898806 (=> (not res!2092517) (not e!3062261))))

(assert (=> b!4898806 (= res!2092517 (= (size!37169 lt!2008846) (+ (size!37169 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (size!37169 (_2!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4898805 () Bool)

(assert (=> b!4898805 (= e!3062262 (Cons!56428 (h!62876 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (++!12250 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (_2!33556 (get!19496 lt!2008523)))))))

(assert (= (and d!1574168 c!832621) b!4898804))

(assert (= (and d!1574168 (not c!832621)) b!4898805))

(assert (= (and d!1574168 res!2092516) b!4898806))

(assert (= (and b!4898806 res!2092517) b!4898807))

(declare-fun m!5906184 () Bool)

(assert (=> d!1574168 m!5906184))

(assert (=> d!1574168 m!5905614))

(declare-fun m!5906186 () Bool)

(assert (=> d!1574168 m!5906186))

(declare-fun m!5906188 () Bool)

(assert (=> d!1574168 m!5906188))

(declare-fun m!5906190 () Bool)

(assert (=> b!4898806 m!5906190))

(assert (=> b!4898806 m!5905614))

(declare-fun m!5906192 () Bool)

(assert (=> b!4898806 m!5906192))

(assert (=> b!4898806 m!5905628))

(declare-fun m!5906194 () Bool)

(assert (=> b!4898805 m!5906194))

(assert (=> b!4898347 d!1574168))

(declare-fun d!1574170 () Bool)

(assert (=> d!1574170 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))) (list!17747 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun bs!1176535 () Bool)

(assert (= bs!1176535 d!1574170))

(declare-fun m!5906196 () Bool)

(assert (=> bs!1176535 m!5906196))

(assert (=> b!4898347 d!1574170))

(declare-fun d!1574172 () Bool)

(declare-fun lt!2008849 () BalanceConc!28928)

(assert (=> d!1574172 (= (list!17745 lt!2008849) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523))))))

(declare-fun dynLambda!22695 (Int TokenValue!8491) BalanceConc!28928)

(assert (=> d!1574172 (= lt!2008849 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))))

(assert (=> d!1574172 (= (charsOf!5381 (_1!33556 (get!19496 lt!2008523))) lt!2008849)))

(declare-fun b_lambda!194877 () Bool)

(assert (=> (not b_lambda!194877) (not d!1574172)))

(declare-fun t!366254 () Bool)

(declare-fun tb!259459 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366254) tb!259459))

(declare-fun b!4898812 () Bool)

(declare-fun e!3062265 () Bool)

(declare-fun tp!1378304 () Bool)

(assert (=> b!4898812 (= e!3062265 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))) tp!1378304))))

(declare-fun result!323108 () Bool)

(assert (=> tb!259459 (= result!323108 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))) e!3062265))))

(assert (= tb!259459 b!4898812))

(declare-fun m!5906198 () Bool)

(assert (=> b!4898812 m!5906198))

(declare-fun m!5906200 () Bool)

(assert (=> tb!259459 m!5906200))

(assert (=> d!1574172 t!366254))

(declare-fun b_and!345635 () Bool)

(assert (= b_and!345609 (and (=> t!366254 result!323108) b_and!345635)))

(declare-fun t!366256 () Bool)

(declare-fun tb!259461 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366256) tb!259461))

(declare-fun result!323112 () Bool)

(assert (= result!323112 result!323108))

(assert (=> d!1574172 t!366256))

(declare-fun b_and!345637 () Bool)

(assert (= b_and!345617 (and (=> t!366256 result!323112) b_and!345637)))

(declare-fun m!5906202 () Bool)

(assert (=> d!1574172 m!5906202))

(declare-fun m!5906204 () Bool)

(assert (=> d!1574172 m!5906204))

(assert (=> b!4898347 d!1574172))

(assert (=> b!4898347 d!1574152))

(declare-fun d!1574174 () Bool)

(declare-fun res!2092524 () Bool)

(declare-fun e!3062268 () Bool)

(assert (=> d!1574174 (=> (not res!2092524) (not e!3062268))))

(assert (=> d!1574174 (= res!2092524 (= (csize!29728 (c!832544 input!1236)) (+ (size!37173 (left!41002 (c!832544 input!1236))) (size!37173 (right!41332 (c!832544 input!1236))))))))

(assert (=> d!1574174 (= (inv!72740 (c!832544 input!1236)) e!3062268)))

(declare-fun b!4898819 () Bool)

(declare-fun res!2092525 () Bool)

(assert (=> b!4898819 (=> (not res!2092525) (not e!3062268))))

(assert (=> b!4898819 (= res!2092525 (and (not (= (left!41002 (c!832544 input!1236)) Empty!14749)) (not (= (right!41332 (c!832544 input!1236)) Empty!14749))))))

(declare-fun b!4898820 () Bool)

(declare-fun res!2092526 () Bool)

(assert (=> b!4898820 (=> (not res!2092526) (not e!3062268))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1962 (Conc!14749) Int)

(assert (=> b!4898820 (= res!2092526 (= (cheight!14960 (c!832544 input!1236)) (+ (max!0 (height!1962 (left!41002 (c!832544 input!1236))) (height!1962 (right!41332 (c!832544 input!1236)))) 1)))))

(declare-fun b!4898821 () Bool)

(assert (=> b!4898821 (= e!3062268 (<= 0 (cheight!14960 (c!832544 input!1236))))))

(assert (= (and d!1574174 res!2092524) b!4898819))

(assert (= (and b!4898819 res!2092525) b!4898820))

(assert (= (and b!4898820 res!2092526) b!4898821))

(declare-fun m!5906206 () Bool)

(assert (=> d!1574174 m!5906206))

(declare-fun m!5906208 () Bool)

(assert (=> d!1574174 m!5906208))

(declare-fun m!5906210 () Bool)

(assert (=> b!4898820 m!5906210))

(declare-fun m!5906212 () Bool)

(assert (=> b!4898820 m!5906212))

(assert (=> b!4898820 m!5906210))

(assert (=> b!4898820 m!5906212))

(declare-fun m!5906214 () Bool)

(assert (=> b!4898820 m!5906214))

(assert (=> b!4898379 d!1574174))

(declare-fun d!1574176 () Bool)

(declare-fun c!832622 () Bool)

(assert (=> d!1574176 (= c!832622 (is-Node!14749 (left!41002 (c!832544 input!1236))))))

(declare-fun e!3062269 () Bool)

(assert (=> d!1574176 (= (inv!72735 (left!41002 (c!832544 input!1236))) e!3062269)))

(declare-fun b!4898822 () Bool)

(assert (=> b!4898822 (= e!3062269 (inv!72740 (left!41002 (c!832544 input!1236))))))

(declare-fun b!4898823 () Bool)

(declare-fun e!3062270 () Bool)

(assert (=> b!4898823 (= e!3062269 e!3062270)))

(declare-fun res!2092527 () Bool)

(assert (=> b!4898823 (= res!2092527 (not (is-Leaf!24557 (left!41002 (c!832544 input!1236)))))))

(assert (=> b!4898823 (=> res!2092527 e!3062270)))

(declare-fun b!4898824 () Bool)

(assert (=> b!4898824 (= e!3062270 (inv!72741 (left!41002 (c!832544 input!1236))))))

(assert (= (and d!1574176 c!832622) b!4898822))

(assert (= (and d!1574176 (not c!832622)) b!4898823))

(assert (= (and b!4898823 (not res!2092527)) b!4898824))

(declare-fun m!5906216 () Bool)

(assert (=> b!4898822 m!5906216))

(declare-fun m!5906218 () Bool)

(assert (=> b!4898824 m!5906218))

(assert (=> b!4898530 d!1574176))

(declare-fun d!1574178 () Bool)

(declare-fun c!832623 () Bool)

(assert (=> d!1574178 (= c!832623 (is-Node!14749 (right!41332 (c!832544 input!1236))))))

(declare-fun e!3062271 () Bool)

(assert (=> d!1574178 (= (inv!72735 (right!41332 (c!832544 input!1236))) e!3062271)))

(declare-fun b!4898825 () Bool)

(assert (=> b!4898825 (= e!3062271 (inv!72740 (right!41332 (c!832544 input!1236))))))

(declare-fun b!4898826 () Bool)

(declare-fun e!3062272 () Bool)

(assert (=> b!4898826 (= e!3062271 e!3062272)))

(declare-fun res!2092528 () Bool)

(assert (=> b!4898826 (= res!2092528 (not (is-Leaf!24557 (right!41332 (c!832544 input!1236)))))))

(assert (=> b!4898826 (=> res!2092528 e!3062272)))

(declare-fun b!4898827 () Bool)

(assert (=> b!4898827 (= e!3062272 (inv!72741 (right!41332 (c!832544 input!1236))))))

(assert (= (and d!1574178 c!832623) b!4898825))

(assert (= (and d!1574178 (not c!832623)) b!4898826))

(assert (= (and b!4898826 (not res!2092528)) b!4898827))

(declare-fun m!5906220 () Bool)

(assert (=> b!4898825 m!5906220))

(declare-fun m!5906222 () Bool)

(assert (=> b!4898827 m!5906222))

(assert (=> b!4898530 d!1574178))

(declare-fun bm!339848 () Bool)

(declare-fun call!339853 () Option!14039)

(assert (=> bm!339848 (= call!339853 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) lt!2008472))))

(declare-fun b!4898829 () Bool)

(declare-fun res!2092531 () Bool)

(declare-fun e!3062275 () Bool)

(assert (=> b!4898829 (=> (not res!2092531) (not e!3062275))))

(declare-fun lt!2008851 () Option!14039)

(assert (=> b!4898829 (= res!2092531 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))) (_2!33556 (get!19496 lt!2008851))) lt!2008472))))

(declare-fun b!4898830 () Bool)

(assert (=> b!4898830 (= e!3062275 (contains!19444 (t!366240 rulesArg!165) (rule!11389 (_1!33556 (get!19496 lt!2008851)))))))

(declare-fun b!4898831 () Bool)

(declare-fun e!3062274 () Option!14039)

(declare-fun lt!2008853 () Option!14039)

(declare-fun lt!2008854 () Option!14039)

(assert (=> b!4898831 (= e!3062274 (ite (and (is-None!14038 lt!2008853) (is-None!14038 lt!2008854)) None!14038 (ite (is-None!14038 lt!2008854) lt!2008853 (ite (is-None!14038 lt!2008853) lt!2008854 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2008853))) (size!37167 (_1!33556 (v!49998 lt!2008854)))) lt!2008853 lt!2008854)))))))

(assert (=> b!4898831 (= lt!2008853 call!339853)))

(assert (=> b!4898831 (= lt!2008854 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) lt!2008472))))

(declare-fun b!4898832 () Bool)

(declare-fun res!2092535 () Bool)

(assert (=> b!4898832 (=> (not res!2092535) (not e!3062275))))

(assert (=> b!4898832 (= res!2092535 (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))))))

(declare-fun b!4898833 () Bool)

(declare-fun res!2092530 () Bool)

(assert (=> b!4898833 (=> (not res!2092530) (not e!3062275))))

(assert (=> b!4898833 (= res!2092530 (= (value!262310 (_1!33556 (get!19496 lt!2008851))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851)))))))))

(declare-fun b!4898834 () Bool)

(assert (=> b!4898834 (= e!3062274 call!339853)))

(declare-fun d!1574180 () Bool)

(declare-fun e!3062273 () Bool)

(assert (=> d!1574180 e!3062273))

(declare-fun res!2092532 () Bool)

(assert (=> d!1574180 (=> res!2092532 e!3062273)))

(assert (=> d!1574180 (= res!2092532 (isEmpty!30303 lt!2008851))))

(assert (=> d!1574180 (= lt!2008851 e!3062274)))

(declare-fun c!832624 () Bool)

(assert (=> d!1574180 (= c!832624 (and (is-Cons!56430 (t!366240 rulesArg!165)) (is-Nil!56430 (t!366240 (t!366240 rulesArg!165)))))))

(declare-fun lt!2008850 () Unit!146503)

(declare-fun lt!2008852 () Unit!146503)

(assert (=> d!1574180 (= lt!2008850 lt!2008852)))

(assert (=> d!1574180 (isPrefix!4901 lt!2008472 lt!2008472)))

(assert (=> d!1574180 (= lt!2008852 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(assert (=> d!1574180 (rulesValidInductive!3160 thiss!14805 (t!366240 rulesArg!165))))

(assert (=> d!1574180 (= (maxPrefix!4610 thiss!14805 (t!366240 rulesArg!165) lt!2008472) lt!2008851)))

(declare-fun b!4898828 () Bool)

(assert (=> b!4898828 (= e!3062273 e!3062275)))

(declare-fun res!2092534 () Bool)

(assert (=> b!4898828 (=> (not res!2092534) (not e!3062275))))

(assert (=> b!4898828 (= res!2092534 (isDefined!11052 lt!2008851))))

(declare-fun b!4898835 () Bool)

(declare-fun res!2092529 () Bool)

(assert (=> b!4898835 (=> (not res!2092529) (not e!3062275))))

(assert (=> b!4898835 (= res!2092529 (< (size!37169 (_2!33556 (get!19496 lt!2008851))) (size!37169 lt!2008472)))))

(declare-fun b!4898836 () Bool)

(declare-fun res!2092533 () Bool)

(assert (=> b!4898836 (=> (not res!2092533) (not e!3062275))))

(assert (=> b!4898836 (= res!2092533 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851)))))))

(assert (= (and d!1574180 c!832624) b!4898834))

(assert (= (and d!1574180 (not c!832624)) b!4898831))

(assert (= (or b!4898834 b!4898831) bm!339848))

(assert (= (and d!1574180 (not res!2092532)) b!4898828))

(assert (= (and b!4898828 res!2092534) b!4898836))

(assert (= (and b!4898836 res!2092533) b!4898835))

(assert (= (and b!4898835 res!2092529) b!4898829))

(assert (= (and b!4898829 res!2092531) b!4898833))

(assert (= (and b!4898833 res!2092530) b!4898832))

(assert (= (and b!4898832 res!2092535) b!4898830))

(declare-fun m!5906224 () Bool)

(assert (=> b!4898829 m!5906224))

(declare-fun m!5906226 () Bool)

(assert (=> b!4898829 m!5906226))

(assert (=> b!4898829 m!5906226))

(declare-fun m!5906228 () Bool)

(assert (=> b!4898829 m!5906228))

(assert (=> b!4898829 m!5906228))

(declare-fun m!5906230 () Bool)

(assert (=> b!4898829 m!5906230))

(assert (=> b!4898836 m!5906224))

(assert (=> b!4898836 m!5906226))

(assert (=> b!4898836 m!5906226))

(assert (=> b!4898836 m!5906228))

(assert (=> b!4898833 m!5906224))

(declare-fun m!5906232 () Bool)

(assert (=> b!4898833 m!5906232))

(assert (=> b!4898833 m!5906232))

(declare-fun m!5906234 () Bool)

(assert (=> b!4898833 m!5906234))

(assert (=> b!4898832 m!5906224))

(assert (=> b!4898832 m!5906226))

(assert (=> b!4898832 m!5906226))

(assert (=> b!4898832 m!5906228))

(assert (=> b!4898832 m!5906228))

(declare-fun m!5906236 () Bool)

(assert (=> b!4898832 m!5906236))

(assert (=> b!4898830 m!5906224))

(declare-fun m!5906238 () Bool)

(assert (=> b!4898830 m!5906238))

(declare-fun m!5906240 () Bool)

(assert (=> b!4898828 m!5906240))

(assert (=> b!4898835 m!5906224))

(declare-fun m!5906242 () Bool)

(assert (=> b!4898835 m!5906242))

(assert (=> b!4898835 m!5905630))

(declare-fun m!5906244 () Bool)

(assert (=> d!1574180 m!5906244))

(assert (=> d!1574180 m!5905558))

(assert (=> d!1574180 m!5905560))

(assert (=> d!1574180 m!5905712))

(declare-fun m!5906246 () Bool)

(assert (=> b!4898831 m!5906246))

(declare-fun m!5906248 () Bool)

(assert (=> bm!339848 m!5906248))

(assert (=> b!4898349 d!1574180))

(declare-fun b!4898837 () Bool)

(declare-fun e!3062276 () List!56552)

(assert (=> b!4898837 (= e!3062276 Nil!56428)))

(declare-fun d!1574182 () Bool)

(declare-fun c!832625 () Bool)

(assert (=> d!1574182 (= c!832625 (is-Empty!14749 (c!832544 (_2!33555 lt!2008468))))))

(assert (=> d!1574182 (= (list!17747 (c!832544 (_2!33555 lt!2008468))) e!3062276)))

(declare-fun b!4898838 () Bool)

(declare-fun e!3062277 () List!56552)

(assert (=> b!4898838 (= e!3062276 e!3062277)))

(declare-fun c!832626 () Bool)

(assert (=> b!4898838 (= c!832626 (is-Leaf!24557 (c!832544 (_2!33555 lt!2008468))))))

(declare-fun b!4898840 () Bool)

(assert (=> b!4898840 (= e!3062277 (++!12250 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468)))) (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468))))))))

(declare-fun b!4898839 () Bool)

(assert (=> b!4898839 (= e!3062277 (list!17749 (xs!18065 (c!832544 (_2!33555 lt!2008468)))))))

(assert (= (and d!1574182 c!832625) b!4898837))

(assert (= (and d!1574182 (not c!832625)) b!4898838))

(assert (= (and b!4898838 c!832626) b!4898839))

(assert (= (and b!4898838 (not c!832626)) b!4898840))

(declare-fun m!5906250 () Bool)

(assert (=> b!4898840 m!5906250))

(declare-fun m!5906252 () Bool)

(assert (=> b!4898840 m!5906252))

(assert (=> b!4898840 m!5906250))

(assert (=> b!4898840 m!5906252))

(declare-fun m!5906254 () Bool)

(assert (=> b!4898840 m!5906254))

(declare-fun m!5906256 () Bool)

(assert (=> b!4898839 m!5906256))

(assert (=> d!1574040 d!1574182))

(declare-fun d!1574184 () Bool)

(assert (=> d!1574184 (= (isDefined!11053 lt!2008609) (not (isEmpty!30304 lt!2008609)))))

(declare-fun bs!1176536 () Bool)

(assert (= bs!1176536 d!1574184))

(declare-fun m!5906258 () Bool)

(assert (=> bs!1176536 m!5906258))

(assert (=> b!4898458 d!1574184))

(assert (=> b!4898351 d!1574152))

(declare-fun d!1574186 () Bool)

(assert (=> d!1574186 (= (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523))))) (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b_lambda!194879 () Bool)

(assert (=> (not b_lambda!194879) (not d!1574186)))

(declare-fun t!366258 () Bool)

(declare-fun tb!259463 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366258) tb!259463))

(declare-fun result!323114 () Bool)

(assert (=> tb!259463 (= result!323114 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun m!5906260 () Bool)

(assert (=> tb!259463 m!5906260))

(assert (=> d!1574186 t!366258))

(declare-fun b_and!345639 () Bool)

(assert (= b_and!345631 (and (=> t!366258 result!323114) b_and!345639)))

(declare-fun t!366260 () Bool)

(declare-fun tb!259465 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366260) tb!259465))

(declare-fun result!323116 () Bool)

(assert (= result!323116 result!323114))

(assert (=> d!1574186 t!366260))

(declare-fun b_and!345641 () Bool)

(assert (= b_and!345633 (and (=> t!366260 result!323116) b_and!345641)))

(assert (=> d!1574186 m!5905618))

(declare-fun m!5906262 () Bool)

(assert (=> d!1574186 m!5906262))

(assert (=> b!4898351 d!1574186))

(declare-fun d!1574188 () Bool)

(assert (=> d!1574188 (= (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))) (fromListB!2698 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))

(declare-fun bs!1176537 () Bool)

(assert (= bs!1176537 d!1574188))

(declare-fun m!5906264 () Bool)

(assert (=> bs!1176537 m!5906264))

(assert (=> b!4898351 d!1574188))

(assert (=> b!4898472 d!1574100))

(declare-fun d!1574190 () Bool)

(assert (=> d!1574190 (= (isDefined!11052 lt!2008523) (not (isEmpty!30303 lt!2008523)))))

(declare-fun bs!1176538 () Bool)

(assert (= bs!1176538 d!1574190))

(assert (=> bs!1176538 m!5905632))

(assert (=> b!4898346 d!1574190))

(declare-fun d!1574192 () Bool)

(declare-fun res!2092540 () Bool)

(declare-fun e!3062281 () Bool)

(assert (=> d!1574192 (=> (not res!2092540) (not e!3062281))))

(assert (=> d!1574192 (= res!2092540 (<= (size!37169 (list!17749 (xs!18065 (c!832544 input!1236)))) 512))))

(assert (=> d!1574192 (= (inv!72741 (c!832544 input!1236)) e!3062281)))

(declare-fun b!4898845 () Bool)

(declare-fun res!2092541 () Bool)

(assert (=> b!4898845 (=> (not res!2092541) (not e!3062281))))

(assert (=> b!4898845 (= res!2092541 (= (csize!29729 (c!832544 input!1236)) (size!37169 (list!17749 (xs!18065 (c!832544 input!1236))))))))

(declare-fun b!4898846 () Bool)

(assert (=> b!4898846 (= e!3062281 (and (> (csize!29729 (c!832544 input!1236)) 0) (<= (csize!29729 (c!832544 input!1236)) 512)))))

(assert (= (and d!1574192 res!2092540) b!4898845))

(assert (= (and b!4898845 res!2092541) b!4898846))

(assert (=> d!1574192 m!5906170))

(assert (=> d!1574192 m!5906170))

(declare-fun m!5906266 () Bool)

(assert (=> d!1574192 m!5906266))

(assert (=> b!4898845 m!5906170))

(assert (=> b!4898845 m!5906170))

(assert (=> b!4898845 m!5906266))

(assert (=> b!4898381 d!1574192))

(declare-fun d!1574194 () Bool)

(assert (=> d!1574194 (= (isEmpty!30303 lt!2008474) (not (is-Some!14038 lt!2008474)))))

(assert (=> d!1574022 d!1574194))

(declare-fun d!1574196 () Bool)

(assert (=> d!1574196 (= (isEmpty!30304 lt!2008475) (not (is-Some!14039 lt!2008475)))))

(assert (=> d!1574024 d!1574196))

(declare-fun d!1574198 () Bool)

(declare-fun lt!2008868 () Option!14039)

(assert (=> d!1574198 (= lt!2008868 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) lt!2008472))))

(declare-fun e!3062286 () Option!14039)

(assert (=> d!1574198 (= lt!2008868 e!3062286)))

(declare-fun c!832629 () Bool)

(declare-fun lt!2008869 () tuple2!60512)

(assert (=> d!1574198 (= c!832629 (isEmpty!30306 (_1!33559 lt!2008869)))))

(declare-fun findLongestMatchWithZipper!89 (Regex!13256 List!56552) tuple2!60512)

(assert (=> d!1574198 (= lt!2008869 (findLongestMatchWithZipper!89 (regex!8181 (h!62878 rulesArg!165)) lt!2008472))))

(assert (=> d!1574198 (ruleValid!3679 thiss!14805 (h!62878 rulesArg!165))))

(assert (=> d!1574198 (= (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 rulesArg!165) lt!2008472) lt!2008868)))

(declare-fun b!4898853 () Bool)

(assert (=> b!4898853 (= e!3062286 None!14038)))

(declare-fun b!4898854 () Bool)

(assert (=> b!4898854 (= e!3062286 (Some!14038 (tuple2!60507 (Token!14927 (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008869))) (h!62878 rulesArg!165) (size!37169 (_1!33559 lt!2008869)) (_1!33559 lt!2008869)) (_2!33559 lt!2008869))))))

(declare-fun lt!2008871 () Unit!146503)

(assert (=> b!4898854 (= lt!2008871 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 rulesArg!165)) lt!2008472))))

(declare-fun res!2092544 () Bool)

(assert (=> b!4898854 (= res!2092544 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(declare-fun e!3062287 () Bool)

(assert (=> b!4898854 (=> res!2092544 e!3062287)))

(assert (=> b!4898854 e!3062287))

(declare-fun lt!2008870 () Unit!146503)

(assert (=> b!4898854 (= lt!2008870 lt!2008871)))

(declare-fun lt!2008867 () Unit!146503)

(assert (=> b!4898854 (= lt!2008867 (lemmaInv!1243 (transformation!8181 (h!62878 rulesArg!165))))))

(declare-fun lt!2008872 () Unit!146503)

(assert (=> b!4898854 (= lt!2008872 (lemmaSemiInverse!2571 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008869))))))

(declare-fun b!4898855 () Bool)

(assert (=> b!4898855 (= e!3062287 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(assert (= (and d!1574198 c!832629) b!4898853))

(assert (= (and d!1574198 (not c!832629)) b!4898854))

(assert (= (and b!4898854 (not res!2092544)) b!4898855))

(assert (=> d!1574198 m!5905636))

(declare-fun m!5906268 () Bool)

(assert (=> d!1574198 m!5906268))

(declare-fun m!5906270 () Bool)

(assert (=> d!1574198 m!5906270))

(assert (=> d!1574198 m!5905710))

(assert (=> b!4898854 m!5905972))

(assert (=> b!4898854 m!5905738))

(assert (=> b!4898854 m!5905770))

(declare-fun m!5906272 () Bool)

(assert (=> b!4898854 m!5906272))

(assert (=> b!4898854 m!5906272))

(declare-fun m!5906274 () Bool)

(assert (=> b!4898854 m!5906274))

(assert (=> b!4898854 m!5905738))

(assert (=> b!4898854 m!5905630))

(assert (=> b!4898854 m!5905942))

(assert (=> b!4898854 m!5905974))

(assert (=> b!4898854 m!5906272))

(declare-fun m!5906276 () Bool)

(assert (=> b!4898854 m!5906276))

(assert (=> b!4898854 m!5905630))

(declare-fun m!5906278 () Bool)

(assert (=> b!4898854 m!5906278))

(assert (=> b!4898855 m!5905738))

(assert (=> b!4898855 m!5905630))

(assert (=> b!4898855 m!5905738))

(assert (=> b!4898855 m!5905630))

(assert (=> b!4898855 m!5905942))

(assert (=> b!4898855 m!5905944))

(assert (=> bm!339807 d!1574198))

(declare-fun d!1574200 () Bool)

(assert (=> d!1574200 (= (head!10462 lt!2008472) (h!62876 lt!2008472))))

(assert (=> b!4898364 d!1574200))

(declare-fun bs!1176539 () Bool)

(declare-fun d!1574202 () Bool)

(assert (= bs!1176539 (and d!1574202 d!1574042)))

(declare-fun lambda!244180 () Int)

(assert (=> bs!1176539 (= lambda!244180 lambda!244157)))

(assert (=> d!1574202 true))

(declare-fun lt!2008873 () Bool)

(assert (=> d!1574202 (= lt!2008873 (forall!13097 (t!366240 rulesArg!165) lambda!244180))))

(declare-fun e!3062289 () Bool)

(assert (=> d!1574202 (= lt!2008873 e!3062289)))

(declare-fun res!2092546 () Bool)

(assert (=> d!1574202 (=> res!2092546 e!3062289)))

(assert (=> d!1574202 (= res!2092546 (not (is-Cons!56430 (t!366240 rulesArg!165))))))

(assert (=> d!1574202 (= (rulesValidInductive!3160 thiss!14805 (t!366240 rulesArg!165)) lt!2008873)))

(declare-fun b!4898856 () Bool)

(declare-fun e!3062288 () Bool)

(assert (=> b!4898856 (= e!3062289 e!3062288)))

(declare-fun res!2092545 () Bool)

(assert (=> b!4898856 (=> (not res!2092545) (not e!3062288))))

(assert (=> b!4898856 (= res!2092545 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165))))))

(declare-fun b!4898857 () Bool)

(assert (=> b!4898857 (= e!3062288 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 rulesArg!165))))))

(assert (= (and d!1574202 (not res!2092546)) b!4898856))

(assert (= (and b!4898856 res!2092545) b!4898857))

(declare-fun m!5906280 () Bool)

(assert (=> d!1574202 m!5906280))

(declare-fun m!5906282 () Bool)

(assert (=> b!4898856 m!5906282))

(assert (=> b!4898857 m!5906008))

(assert (=> b!4898432 d!1574202))

(declare-fun b!4898886 () Bool)

(declare-fun e!3062310 () Bool)

(declare-fun e!3062305 () Bool)

(assert (=> b!4898886 (= e!3062310 e!3062305)))

(declare-fun c!832638 () Bool)

(assert (=> b!4898886 (= c!832638 (is-EmptyLang!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4898887 () Bool)

(declare-fun res!2092570 () Bool)

(declare-fun e!3062304 () Bool)

(assert (=> b!4898887 (=> res!2092570 e!3062304)))

(declare-fun e!3062306 () Bool)

(assert (=> b!4898887 (= res!2092570 e!3062306)))

(declare-fun res!2092566 () Bool)

(assert (=> b!4898887 (=> (not res!2092566) (not e!3062306))))

(declare-fun lt!2008876 () Bool)

(assert (=> b!4898887 (= res!2092566 lt!2008876)))

(declare-fun b!4898888 () Bool)

(declare-fun e!3062307 () Bool)

(assert (=> b!4898888 (= e!3062307 (matchR!6537 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(declare-fun d!1574204 () Bool)

(assert (=> d!1574204 e!3062310))

(declare-fun c!832636 () Bool)

(assert (=> d!1574204 (= c!832636 (is-EmptyExpr!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574204 (= lt!2008876 e!3062307)))

(declare-fun c!832637 () Bool)

(assert (=> d!1574204 (= c!832637 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (=> d!1574204 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574204 (= (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))) lt!2008876)))

(declare-fun b!4898889 () Bool)

(declare-fun res!2092563 () Bool)

(assert (=> b!4898889 (=> (not res!2092563) (not e!3062306))))

(declare-fun call!339856 () Bool)

(assert (=> b!4898889 (= res!2092563 (not call!339856))))

(declare-fun b!4898890 () Bool)

(assert (=> b!4898890 (= e!3062310 (= lt!2008876 call!339856))))

(declare-fun b!4898891 () Bool)

(declare-fun res!2092564 () Bool)

(assert (=> b!4898891 (=> res!2092564 e!3062304)))

(assert (=> b!4898891 (= res!2092564 (not (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> b!4898891 (= e!3062305 e!3062304)))

(declare-fun b!4898892 () Bool)

(declare-fun e!3062308 () Bool)

(assert (=> b!4898892 (= e!3062308 (not (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))) (c!832545 (regex!8181 (h!62878 rulesArg!165))))))))

(declare-fun bm!339851 () Bool)

(assert (=> bm!339851 (= call!339856 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(declare-fun b!4898893 () Bool)

(assert (=> b!4898893 (= e!3062306 (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))) (c!832545 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun b!4898894 () Bool)

(declare-fun res!2092569 () Bool)

(assert (=> b!4898894 (=> res!2092569 e!3062308)))

(assert (=> b!4898894 (= res!2092569 (not (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))))

(declare-fun b!4898895 () Bool)

(declare-fun e!3062309 () Bool)

(assert (=> b!4898895 (= e!3062304 e!3062309)))

(declare-fun res!2092567 () Bool)

(assert (=> b!4898895 (=> (not res!2092567) (not e!3062309))))

(assert (=> b!4898895 (= res!2092567 (not lt!2008876))))

(declare-fun b!4898896 () Bool)

(assert (=> b!4898896 (= e!3062307 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4898897 () Bool)

(declare-fun res!2092565 () Bool)

(assert (=> b!4898897 (=> (not res!2092565) (not e!3062306))))

(assert (=> b!4898897 (= res!2092565 (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(declare-fun b!4898898 () Bool)

(assert (=> b!4898898 (= e!3062305 (not lt!2008876))))

(declare-fun b!4898899 () Bool)

(assert (=> b!4898899 (= e!3062309 e!3062308)))

(declare-fun res!2092568 () Bool)

(assert (=> b!4898899 (=> res!2092568 e!3062308)))

(assert (=> b!4898899 (= res!2092568 call!339856)))

(assert (= (and d!1574204 c!832637) b!4898896))

(assert (= (and d!1574204 (not c!832637)) b!4898888))

(assert (= (and d!1574204 c!832636) b!4898890))

(assert (= (and d!1574204 (not c!832636)) b!4898886))

(assert (= (and b!4898886 c!832638) b!4898898))

(assert (= (and b!4898886 (not c!832638)) b!4898891))

(assert (= (and b!4898891 (not res!2092564)) b!4898887))

(assert (= (and b!4898887 res!2092566) b!4898889))

(assert (= (and b!4898889 res!2092563) b!4898897))

(assert (= (and b!4898897 res!2092565) b!4898893))

(assert (= (and b!4898887 (not res!2092570)) b!4898895))

(assert (= (and b!4898895 res!2092567) b!4898899))

(assert (= (and b!4898899 (not res!2092568)) b!4898894))

(assert (= (and b!4898894 (not res!2092569)) b!4898892))

(assert (= (or b!4898890 b!4898889 b!4898899) bm!339851))

(declare-fun m!5906284 () Bool)

(assert (=> b!4898897 m!5906284))

(assert (=> b!4898897 m!5906284))

(declare-fun m!5906286 () Bool)

(assert (=> b!4898897 m!5906286))

(declare-fun m!5906288 () Bool)

(assert (=> b!4898893 m!5906288))

(assert (=> d!1574204 m!5905778))

(assert (=> d!1574204 m!5905982))

(assert (=> b!4898892 m!5906288))

(assert (=> bm!339851 m!5905778))

(assert (=> b!4898888 m!5906288))

(assert (=> b!4898888 m!5906288))

(declare-fun m!5906290 () Bool)

(assert (=> b!4898888 m!5906290))

(assert (=> b!4898888 m!5906284))

(assert (=> b!4898888 m!5906290))

(assert (=> b!4898888 m!5906284))

(declare-fun m!5906292 () Bool)

(assert (=> b!4898888 m!5906292))

(assert (=> b!4898896 m!5905984))

(assert (=> b!4898894 m!5906284))

(assert (=> b!4898894 m!5906284))

(assert (=> b!4898894 m!5906286))

(assert (=> b!4898476 d!1574204))

(assert (=> b!4898476 d!1574120))

(assert (=> b!4898476 d!1574128))

(assert (=> b!4898476 d!1574142))

(assert (=> d!1574054 d!1574202))

(declare-fun d!1574208 () Bool)

(assert (=> d!1574208 (isPrefix!4901 lt!2008607 lt!2008612)))

(declare-fun lt!2008877 () Unit!146503)

(assert (=> d!1574208 (= lt!2008877 (choose!35766 lt!2008607 lt!2008612))))

(assert (=> d!1574208 (= (lemmaIsPrefixRefl!3298 lt!2008607 lt!2008612) lt!2008877)))

(declare-fun bs!1176540 () Bool)

(assert (= bs!1176540 d!1574208))

(assert (=> bs!1176540 m!5905720))

(declare-fun m!5906294 () Bool)

(assert (=> bs!1176540 m!5906294))

(assert (=> d!1574054 d!1574208))

(declare-fun d!1574210 () Bool)

(assert (=> d!1574210 (= (isDefined!11052 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))) (not (isEmpty!30303 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236)))))))

(declare-fun bs!1176541 () Bool)

(assert (= bs!1176541 d!1574210))

(assert (=> bs!1176541 m!5905716))

(declare-fun m!5906296 () Bool)

(assert (=> bs!1176541 m!5906296))

(assert (=> d!1574054 d!1574210))

(assert (=> d!1574054 d!1574184))

(declare-fun b!4898900 () Bool)

(declare-fun e!3062312 () Bool)

(declare-fun e!3062311 () Bool)

(assert (=> b!4898900 (= e!3062312 e!3062311)))

(declare-fun res!2092573 () Bool)

(assert (=> b!4898900 (=> (not res!2092573) (not e!3062311))))

(assert (=> b!4898900 (= res!2092573 (not (is-Nil!56428 lt!2008612)))))

(declare-fun d!1574212 () Bool)

(declare-fun e!3062313 () Bool)

(assert (=> d!1574212 e!3062313))

(declare-fun res!2092572 () Bool)

(assert (=> d!1574212 (=> res!2092572 e!3062313)))

(declare-fun lt!2008878 () Bool)

(assert (=> d!1574212 (= res!2092572 (not lt!2008878))))

(assert (=> d!1574212 (= lt!2008878 e!3062312)))

(declare-fun res!2092574 () Bool)

(assert (=> d!1574212 (=> res!2092574 e!3062312)))

(assert (=> d!1574212 (= res!2092574 (is-Nil!56428 lt!2008607))))

(assert (=> d!1574212 (= (isPrefix!4901 lt!2008607 lt!2008612) lt!2008878)))

(declare-fun b!4898901 () Bool)

(declare-fun res!2092571 () Bool)

(assert (=> b!4898901 (=> (not res!2092571) (not e!3062311))))

(assert (=> b!4898901 (= res!2092571 (= (head!10462 lt!2008607) (head!10462 lt!2008612)))))

(declare-fun b!4898903 () Bool)

(assert (=> b!4898903 (= e!3062313 (>= (size!37169 lt!2008612) (size!37169 lt!2008607)))))

(declare-fun b!4898902 () Bool)

(assert (=> b!4898902 (= e!3062311 (isPrefix!4901 (tail!9608 lt!2008607) (tail!9608 lt!2008612)))))

(assert (= (and d!1574212 (not res!2092574)) b!4898900))

(assert (= (and b!4898900 res!2092573) b!4898901))

(assert (= (and b!4898901 res!2092571) b!4898902))

(assert (= (and d!1574212 (not res!2092572)) b!4898903))

(declare-fun m!5906298 () Bool)

(assert (=> b!4898901 m!5906298))

(declare-fun m!5906300 () Bool)

(assert (=> b!4898901 m!5906300))

(declare-fun m!5906302 () Bool)

(assert (=> b!4898903 m!5906302))

(declare-fun m!5906304 () Bool)

(assert (=> b!4898903 m!5906304))

(declare-fun m!5906306 () Bool)

(assert (=> b!4898902 m!5906306))

(declare-fun m!5906308 () Bool)

(assert (=> b!4898902 m!5906308))

(assert (=> b!4898902 m!5906306))

(assert (=> b!4898902 m!5906308))

(declare-fun m!5906310 () Bool)

(assert (=> b!4898902 m!5906310))

(assert (=> d!1574054 d!1574212))

(assert (=> d!1574054 d!1574020))

(assert (=> d!1574054 d!1574148))

(assert (=> b!4898474 d!1574092))

(declare-fun d!1574214 () Bool)

(assert (=> d!1574214 (= (list!17745 (_2!33555 (get!19497 lt!2008641))) (list!17747 (c!832544 (_2!33555 (get!19497 lt!2008641)))))))

(declare-fun bs!1176542 () Bool)

(assert (= bs!1176542 d!1574214))

(declare-fun m!5906312 () Bool)

(assert (=> bs!1176542 m!5906312))

(assert (=> b!4898474 d!1574214))

(assert (=> b!4898474 d!1574094))

(assert (=> b!4898474 d!1574020))

(assert (=> b!4898474 d!1574090))

(assert (=> b!4898457 d!1574146))

(assert (=> b!4898457 d!1574020))

(assert (=> b!4898457 d!1574148))

(assert (=> b!4898457 d!1574144))

(assert (=> b!4898457 d!1574164))

(declare-fun d!1574216 () Bool)

(assert (=> d!1574216 (= (inv!72731 (tag!9045 (h!62878 (t!366240 rulesArg!165)))) (= (mod (str.len (value!262309 (tag!9045 (h!62878 (t!366240 rulesArg!165))))) 2) 0))))

(assert (=> b!4898500 d!1574216))

(declare-fun d!1574218 () Bool)

(declare-fun res!2092575 () Bool)

(declare-fun e!3062314 () Bool)

(assert (=> d!1574218 (=> (not res!2092575) (not e!3062314))))

(assert (=> d!1574218 (= res!2092575 (semiInverseModEq!3593 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))))))

(assert (=> d!1574218 (= (inv!72736 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) e!3062314)))

(declare-fun b!4898904 () Bool)

(assert (=> b!4898904 (= e!3062314 (equivClasses!3472 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))))))

(assert (= (and d!1574218 res!2092575) b!4898904))

(declare-fun m!5906314 () Bool)

(assert (=> d!1574218 m!5906314))

(declare-fun m!5906316 () Bool)

(assert (=> b!4898904 m!5906316))

(assert (=> b!4898500 d!1574218))

(declare-fun b!4898927 () Bool)

(declare-fun res!2092595 () Bool)

(declare-fun e!3062323 () Bool)

(assert (=> b!4898927 (=> (not res!2092595) (not e!3062323))))

(assert (=> b!4898927 (= res!2092595 (<= (- (height!1962 (left!41002 (c!832544 input!1236))) (height!1962 (right!41332 (c!832544 input!1236)))) 1))))

(declare-fun b!4898928 () Bool)

(declare-fun e!3062322 () Bool)

(assert (=> b!4898928 (= e!3062322 e!3062323)))

(declare-fun res!2092594 () Bool)

(assert (=> b!4898928 (=> (not res!2092594) (not e!3062323))))

(assert (=> b!4898928 (= res!2092594 (<= (- 1) (- (height!1962 (left!41002 (c!832544 input!1236))) (height!1962 (right!41332 (c!832544 input!1236))))))))

(declare-fun d!1574220 () Bool)

(declare-fun res!2092598 () Bool)

(assert (=> d!1574220 (=> res!2092598 e!3062322)))

(assert (=> d!1574220 (= res!2092598 (not (is-Node!14749 (c!832544 input!1236))))))

(assert (=> d!1574220 (= (isBalanced!4019 (c!832544 input!1236)) e!3062322)))

(declare-fun b!4898929 () Bool)

(declare-fun res!2092597 () Bool)

(assert (=> b!4898929 (=> (not res!2092597) (not e!3062323))))

(assert (=> b!4898929 (= res!2092597 (isBalanced!4019 (right!41332 (c!832544 input!1236))))))

(declare-fun b!4898930 () Bool)

(assert (=> b!4898930 (= e!3062323 (not (isEmpty!30311 (right!41332 (c!832544 input!1236)))))))

(declare-fun b!4898931 () Bool)

(declare-fun res!2092596 () Bool)

(assert (=> b!4898931 (=> (not res!2092596) (not e!3062323))))

(assert (=> b!4898931 (= res!2092596 (isBalanced!4019 (left!41002 (c!832544 input!1236))))))

(declare-fun b!4898932 () Bool)

(declare-fun res!2092599 () Bool)

(assert (=> b!4898932 (=> (not res!2092599) (not e!3062323))))

(assert (=> b!4898932 (= res!2092599 (not (isEmpty!30311 (left!41002 (c!832544 input!1236)))))))

(assert (= (and d!1574220 (not res!2092598)) b!4898928))

(assert (= (and b!4898928 res!2092594) b!4898927))

(assert (= (and b!4898927 res!2092595) b!4898931))

(assert (= (and b!4898931 res!2092596) b!4898929))

(assert (= (and b!4898929 res!2092597) b!4898932))

(assert (= (and b!4898932 res!2092599) b!4898930))

(declare-fun m!5906324 () Bool)

(assert (=> b!4898931 m!5906324))

(declare-fun m!5906326 () Bool)

(assert (=> b!4898929 m!5906326))

(assert (=> b!4898928 m!5906210))

(assert (=> b!4898928 m!5906212))

(declare-fun m!5906328 () Bool)

(assert (=> b!4898930 m!5906328))

(declare-fun m!5906330 () Bool)

(assert (=> b!4898932 m!5906330))

(assert (=> b!4898927 m!5906210))

(assert (=> b!4898927 m!5906212))

(assert (=> d!1574014 d!1574220))

(assert (=> b!4898455 d!1574184))

(assert (=> b!4898354 d!1574170))

(assert (=> b!4898354 d!1574172))

(assert (=> b!4898354 d!1574152))

(declare-fun bs!1176545 () Bool)

(declare-fun b!4898937 () Bool)

(assert (= bs!1176545 (and b!4898937 b!4898475)))

(declare-fun lambda!244184 () Int)

(assert (=> bs!1176545 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244184 lambda!244166))))

(declare-fun bs!1176546 () Bool)

(assert (= bs!1176546 (and b!4898937 d!1574166)))

(assert (=> bs!1176546 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244184 lambda!244179))))

(declare-fun b!4898940 () Bool)

(declare-fun e!3062330 () Bool)

(assert (=> b!4898940 (= e!3062330 true)))

(declare-fun b!4898939 () Bool)

(declare-fun e!3062329 () Bool)

(assert (=> b!4898939 (= e!3062329 e!3062330)))

(assert (=> b!4898937 e!3062329))

(assert (= b!4898939 b!4898940))

(assert (= b!4898937 b!4898939))

(assert (=> b!4898940 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (dynLambda!22686 order!25529 lambda!244184))))

(assert (=> b!4898940 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (dynLambda!22686 order!25529 lambda!244184))))

(declare-fun b!4898933 () Bool)

(declare-fun e!3062325 () Bool)

(declare-fun e!3062328 () Bool)

(assert (=> b!4898933 (= e!3062325 e!3062328)))

(declare-fun res!2092601 () Bool)

(assert (=> b!4898933 (=> (not res!2092601) (not e!3062328))))

(declare-fun lt!2008885 () Option!14040)

(assert (=> b!4898933 (= res!2092601 (= (_1!33555 (get!19497 lt!2008885)) (_1!33556 (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236))))))))

(declare-fun b!4898934 () Bool)

(declare-fun e!3062327 () Bool)

(assert (=> b!4898934 (= e!3062327 e!3062325)))

(declare-fun res!2092603 () Bool)

(assert (=> b!4898934 (=> res!2092603 e!3062325)))

(assert (=> b!4898934 (= res!2092603 (not (isDefined!11053 lt!2008885)))))

(declare-fun b!4898935 () Bool)

(declare-fun e!3062324 () Option!14040)

(assert (=> b!4898935 (= e!3062324 None!14039)))

(declare-fun b!4898936 () Bool)

(assert (=> b!4898936 (= e!3062328 (= (list!17745 (_2!33555 (get!19497 lt!2008885))) (_2!33556 (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236))))))))

(declare-fun b!4898938 () Bool)

(declare-fun e!3062326 () Bool)

(declare-fun lt!2008888 () List!56552)

(assert (=> b!4898938 (= e!3062326 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))

(declare-fun d!1574226 () Bool)

(assert (=> d!1574226 e!3062327))

(declare-fun res!2092600 () Bool)

(assert (=> d!1574226 (=> (not res!2092600) (not e!3062327))))

(assert (=> d!1574226 (= res!2092600 (= (isDefined!11053 lt!2008885) (isDefined!11052 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236)))))))

(assert (=> d!1574226 (= lt!2008885 e!3062324)))

(declare-fun c!832639 () Bool)

(declare-fun lt!2008880 () tuple2!60514)

(assert (=> d!1574226 (= c!832639 (isEmpty!30305 (_1!33560 lt!2008880)))))

(assert (=> d!1574226 (= lt!2008880 (findLongestMatchWithZipperSequence!275 (regex!8181 (h!62878 (t!366240 rulesArg!165))) input!1236))))

(assert (=> d!1574226 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165)))))

(assert (=> d!1574226 (= (maxPrefixOneRuleZipperSequence!691 thiss!14805 (h!62878 (t!366240 rulesArg!165)) input!1236) lt!2008885)))

(assert (=> b!4898937 (= e!3062324 (Some!14039 (tuple2!60505 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33560 lt!2008880)) (h!62878 (t!366240 rulesArg!165)) (size!37170 (_1!33560 lt!2008880)) (list!17745 (_1!33560 lt!2008880))) (_2!33560 lt!2008880))))))

(assert (=> b!4898937 (= lt!2008888 (list!17745 input!1236))))

(declare-fun lt!2008883 () Unit!146503)

(assert (=> b!4898937 (= lt!2008883 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 (t!366240 rulesArg!165))) lt!2008888))))

(declare-fun res!2092602 () Bool)

(assert (=> b!4898937 (= res!2092602 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))

(assert (=> b!4898937 (=> res!2092602 e!3062326)))

(assert (=> b!4898937 e!3062326))

(declare-fun lt!2008887 () Unit!146503)

(assert (=> b!4898937 (= lt!2008887 lt!2008883)))

(declare-fun lt!2008881 () Unit!146503)

(assert (=> b!4898937 (= lt!2008881 (lemmaInv!1243 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))))

(declare-fun lt!2008886 () Unit!146503)

(assert (=> b!4898937 (= lt!2008886 (ForallOf!1140 lambda!244184 (_1!33560 lt!2008880)))))

(declare-fun lt!2008882 () Unit!146503)

(assert (=> b!4898937 (= lt!2008882 (ForallOf!1140 lambda!244184 (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))))

(declare-fun lt!2008879 () Option!14040)

(assert (=> b!4898937 (= lt!2008879 (Some!14039 (tuple2!60505 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33560 lt!2008880)) (h!62878 (t!366240 rulesArg!165)) (size!37170 (_1!33560 lt!2008880)) (list!17745 (_1!33560 lt!2008880))) (_2!33560 lt!2008880))))))

(declare-fun lt!2008884 () Unit!146503)

(assert (=> b!4898937 (= lt!2008884 (lemmaEqSameImage!1097 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33560 lt!2008880) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))))

(assert (= (and d!1574226 c!832639) b!4898935))

(assert (= (and d!1574226 (not c!832639)) b!4898937))

(assert (= (and b!4898937 (not res!2092602)) b!4898938))

(assert (= (and d!1574226 res!2092600) b!4898934))

(assert (= (and b!4898934 (not res!2092603)) b!4898933))

(assert (= (and b!4898933 res!2092601) b!4898936))

(assert (=> b!4898938 m!5905738))

(declare-fun m!5906332 () Bool)

(assert (=> b!4898938 m!5906332))

(assert (=> b!4898938 m!5905738))

(assert (=> b!4898938 m!5906332))

(declare-fun m!5906334 () Bool)

(assert (=> b!4898938 m!5906334))

(declare-fun m!5906336 () Bool)

(assert (=> b!4898938 m!5906336))

(declare-fun m!5906338 () Bool)

(assert (=> b!4898934 m!5906338))

(declare-fun m!5906340 () Bool)

(assert (=> b!4898933 m!5906340))

(assert (=> b!4898933 m!5905562))

(assert (=> b!4898933 m!5905562))

(assert (=> b!4898933 m!5906162))

(assert (=> b!4898933 m!5906162))

(declare-fun m!5906342 () Bool)

(assert (=> b!4898933 m!5906342))

(assert (=> d!1574226 m!5905562))

(assert (=> d!1574226 m!5905562))

(assert (=> d!1574226 m!5906162))

(declare-fun m!5906344 () Bool)

(assert (=> d!1574226 m!5906344))

(assert (=> d!1574226 m!5906282))

(declare-fun m!5906346 () Bool)

(assert (=> d!1574226 m!5906346))

(assert (=> d!1574226 m!5906162))

(declare-fun m!5906348 () Bool)

(assert (=> d!1574226 m!5906348))

(assert (=> d!1574226 m!5906338))

(assert (=> b!4898936 m!5905562))

(assert (=> b!4898936 m!5905562))

(assert (=> b!4898936 m!5906162))

(declare-fun m!5906350 () Bool)

(assert (=> b!4898936 m!5906350))

(assert (=> b!4898936 m!5906162))

(assert (=> b!4898936 m!5906342))

(assert (=> b!4898936 m!5906340))

(assert (=> b!4898937 m!5905562))

(assert (=> b!4898937 m!5905738))

(declare-fun m!5906352 () Bool)

(assert (=> b!4898937 m!5906352))

(declare-fun m!5906354 () Bool)

(assert (=> b!4898937 m!5906354))

(declare-fun m!5906356 () Bool)

(assert (=> b!4898937 m!5906356))

(assert (=> b!4898937 m!5905738))

(assert (=> b!4898937 m!5906332))

(assert (=> b!4898937 m!5906334))

(declare-fun m!5906358 () Bool)

(assert (=> b!4898937 m!5906358))

(declare-fun m!5906360 () Bool)

(assert (=> b!4898937 m!5906360))

(declare-fun m!5906362 () Bool)

(assert (=> b!4898937 m!5906362))

(declare-fun m!5906364 () Bool)

(assert (=> b!4898937 m!5906364))

(declare-fun m!5906366 () Bool)

(assert (=> b!4898937 m!5906366))

(assert (=> b!4898937 m!5906356))

(assert (=> b!4898937 m!5906352))

(declare-fun m!5906368 () Bool)

(assert (=> b!4898937 m!5906368))

(assert (=> b!4898937 m!5906352))

(declare-fun m!5906370 () Bool)

(assert (=> b!4898937 m!5906370))

(assert (=> b!4898937 m!5906332))

(assert (=> bm!339813 d!1574226))

(assert (=> b!4898366 d!1574154))

(declare-fun d!1574228 () Bool)

(assert (=> d!1574228 (= (isEmpty!30303 lt!2008523) (not (is-Some!14038 lt!2008523)))))

(assert (=> d!1574010 d!1574228))

(assert (=> d!1574010 d!1574016))

(assert (=> d!1574010 d!1574018))

(assert (=> d!1574010 d!1574042))

(declare-fun d!1574230 () Bool)

(assert (=> d!1574230 (= (inv!72742 (xs!18065 (c!832544 input!1236))) (<= (size!37169 (innerList!14837 (xs!18065 (c!832544 input!1236)))) 2147483647))))

(declare-fun bs!1176547 () Bool)

(assert (= bs!1176547 d!1574230))

(declare-fun m!5906372 () Bool)

(assert (=> bs!1176547 m!5906372))

(assert (=> b!4898531 d!1574230))

(declare-fun d!1574232 () Bool)

(declare-fun lt!2008891 () Bool)

(declare-fun content!10032 (List!56554) (Set Rule!16162))

(assert (=> d!1574232 (= lt!2008891 (set.member (rule!11389 (_1!33556 (get!19496 lt!2008523))) (content!10032 rulesArg!165)))))

(declare-fun e!3062335 () Bool)

(assert (=> d!1574232 (= lt!2008891 e!3062335)))

(declare-fun res!2092608 () Bool)

(assert (=> d!1574232 (=> (not res!2092608) (not e!3062335))))

(assert (=> d!1574232 (= res!2092608 (is-Cons!56430 rulesArg!165))))

(assert (=> d!1574232 (= (contains!19444 rulesArg!165 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) lt!2008891)))

(declare-fun b!4898945 () Bool)

(declare-fun e!3062336 () Bool)

(assert (=> b!4898945 (= e!3062335 e!3062336)))

(declare-fun res!2092609 () Bool)

(assert (=> b!4898945 (=> res!2092609 e!3062336)))

(assert (=> b!4898945 (= res!2092609 (= (h!62878 rulesArg!165) (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))

(declare-fun b!4898946 () Bool)

(assert (=> b!4898946 (= e!3062336 (contains!19444 (t!366240 rulesArg!165) (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))

(assert (= (and d!1574232 res!2092608) b!4898945))

(assert (= (and b!4898945 (not res!2092609)) b!4898946))

(declare-fun m!5906374 () Bool)

(assert (=> d!1574232 m!5906374))

(declare-fun m!5906376 () Bool)

(assert (=> d!1574232 m!5906376))

(declare-fun m!5906378 () Bool)

(assert (=> b!4898946 m!5906378))

(assert (=> b!4898348 d!1574232))

(assert (=> b!4898348 d!1574152))

(assert (=> d!1574018 d!1574016))

(declare-fun d!1574234 () Bool)

(assert (=> d!1574234 (isPrefix!4901 lt!2008472 lt!2008472)))

(assert (=> d!1574234 true))

(declare-fun _$45!2190 () Unit!146503)

(assert (=> d!1574234 (= (choose!35766 lt!2008472 lt!2008472) _$45!2190)))

(declare-fun bs!1176548 () Bool)

(assert (= bs!1176548 d!1574234))

(assert (=> bs!1176548 m!5905558))

(assert (=> d!1574018 d!1574234))

(assert (=> d!1574026 d!1574010))

(assert (=> d!1574026 d!1574016))

(assert (=> d!1574026 d!1574018))

(assert (=> d!1574026 d!1574042))

(declare-fun b!4898947 () Bool)

(declare-fun e!3062343 () Bool)

(declare-fun e!3062338 () Bool)

(assert (=> b!4898947 (= e!3062343 e!3062338)))

(declare-fun c!832642 () Bool)

(assert (=> b!4898947 (= c!832642 (is-EmptyLang!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4898948 () Bool)

(declare-fun res!2092617 () Bool)

(declare-fun e!3062337 () Bool)

(assert (=> b!4898948 (=> res!2092617 e!3062337)))

(declare-fun e!3062339 () Bool)

(assert (=> b!4898948 (= res!2092617 e!3062339)))

(declare-fun res!2092613 () Bool)

(assert (=> b!4898948 (=> (not res!2092613) (not e!3062339))))

(declare-fun lt!2008892 () Bool)

(assert (=> b!4898948 (= res!2092613 lt!2008892)))

(declare-fun b!4898949 () Bool)

(declare-fun e!3062340 () Bool)

(assert (=> b!4898949 (= e!3062340 (matchR!6537 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun d!1574236 () Bool)

(assert (=> d!1574236 e!3062343))

(declare-fun c!832640 () Bool)

(assert (=> d!1574236 (= c!832640 (is-EmptyExpr!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> d!1574236 (= lt!2008892 e!3062340)))

(declare-fun c!832641 () Bool)

(assert (=> d!1574236 (= c!832641 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> d!1574236 (validRegex!5889 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))

(assert (=> d!1574236 (= (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) lt!2008892)))

(declare-fun b!4898950 () Bool)

(declare-fun res!2092610 () Bool)

(assert (=> b!4898950 (=> (not res!2092610) (not e!3062339))))

(declare-fun call!339857 () Bool)

(assert (=> b!4898950 (= res!2092610 (not call!339857))))

(declare-fun b!4898951 () Bool)

(assert (=> b!4898951 (= e!3062343 (= lt!2008892 call!339857))))

(declare-fun b!4898952 () Bool)

(declare-fun res!2092611 () Bool)

(assert (=> b!4898952 (=> res!2092611 e!3062337)))

(assert (=> b!4898952 (= res!2092611 (not (is-ElementMatch!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (=> b!4898952 (= e!3062338 e!3062337)))

(declare-fun b!4898953 () Bool)

(declare-fun e!3062341 () Bool)

(assert (=> b!4898953 (= e!3062341 (not (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (c!832545 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun bm!339852 () Bool)

(assert (=> bm!339852 (= call!339857 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4898954 () Bool)

(assert (=> b!4898954 (= e!3062339 (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (c!832545 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4898955 () Bool)

(declare-fun res!2092616 () Bool)

(assert (=> b!4898955 (=> res!2092616 e!3062341)))

(assert (=> b!4898955 (= res!2092616 (not (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun b!4898956 () Bool)

(declare-fun e!3062342 () Bool)

(assert (=> b!4898956 (= e!3062337 e!3062342)))

(declare-fun res!2092614 () Bool)

(assert (=> b!4898956 (=> (not res!2092614) (not e!3062342))))

(assert (=> b!4898956 (= res!2092614 (not lt!2008892))))

(declare-fun b!4898957 () Bool)

(assert (=> b!4898957 (= e!3062340 (nullable!4562 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4898958 () Bool)

(declare-fun res!2092612 () Bool)

(assert (=> b!4898958 (=> (not res!2092612) (not e!3062339))))

(assert (=> b!4898958 (= res!2092612 (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4898959 () Bool)

(assert (=> b!4898959 (= e!3062338 (not lt!2008892))))

(declare-fun b!4898960 () Bool)

(assert (=> b!4898960 (= e!3062342 e!3062341)))

(declare-fun res!2092615 () Bool)

(assert (=> b!4898960 (=> res!2092615 e!3062341)))

(assert (=> b!4898960 (= res!2092615 call!339857)))

(assert (= (and d!1574236 c!832641) b!4898957))

(assert (= (and d!1574236 (not c!832641)) b!4898949))

(assert (= (and d!1574236 c!832640) b!4898951))

(assert (= (and d!1574236 (not c!832640)) b!4898947))

(assert (= (and b!4898947 c!832642) b!4898959))

(assert (= (and b!4898947 (not c!832642)) b!4898952))

(assert (= (and b!4898952 (not res!2092611)) b!4898948))

(assert (= (and b!4898948 res!2092613) b!4898950))

(assert (= (and b!4898950 res!2092610) b!4898958))

(assert (= (and b!4898958 res!2092612) b!4898954))

(assert (= (and b!4898948 (not res!2092617)) b!4898956))

(assert (= (and b!4898956 res!2092614) b!4898960))

(assert (= (and b!4898960 (not res!2092615)) b!4898955))

(assert (= (and b!4898955 (not res!2092616)) b!4898953))

(assert (= (or b!4898951 b!4898950 b!4898960) bm!339852))

(assert (=> b!4898958 m!5905614))

(declare-fun m!5906380 () Bool)

(assert (=> b!4898958 m!5906380))

(assert (=> b!4898958 m!5906380))

(declare-fun m!5906382 () Bool)

(assert (=> b!4898958 m!5906382))

(assert (=> b!4898954 m!5905614))

(declare-fun m!5906384 () Bool)

(assert (=> b!4898954 m!5906384))

(assert (=> d!1574236 m!5905614))

(declare-fun m!5906386 () Bool)

(assert (=> d!1574236 m!5906386))

(declare-fun m!5906388 () Bool)

(assert (=> d!1574236 m!5906388))

(assert (=> b!4898953 m!5905614))

(assert (=> b!4898953 m!5906384))

(assert (=> bm!339852 m!5905614))

(assert (=> bm!339852 m!5906386))

(assert (=> b!4898949 m!5905614))

(assert (=> b!4898949 m!5906384))

(assert (=> b!4898949 m!5906384))

(declare-fun m!5906390 () Bool)

(assert (=> b!4898949 m!5906390))

(assert (=> b!4898949 m!5905614))

(assert (=> b!4898949 m!5906380))

(assert (=> b!4898949 m!5906390))

(assert (=> b!4898949 m!5906380))

(declare-fun m!5906392 () Bool)

(assert (=> b!4898949 m!5906392))

(declare-fun m!5906394 () Bool)

(assert (=> b!4898957 m!5906394))

(assert (=> b!4898955 m!5905614))

(assert (=> b!4898955 m!5906380))

(assert (=> b!4898955 m!5906380))

(assert (=> b!4898955 m!5906382))

(assert (=> b!4898350 d!1574236))

(assert (=> b!4898350 d!1574152))

(assert (=> b!4898350 d!1574170))

(assert (=> b!4898350 d!1574172))

(declare-fun b!4898965 () Bool)

(declare-fun e!3062346 () Bool)

(declare-fun tp!1378307 () Bool)

(assert (=> b!4898965 (= e!3062346 (and tp_is_empty!35793 tp!1378307))))

(assert (=> b!4898532 (= tp!1378265 e!3062346)))

(assert (= (and b!4898532 (is-Cons!56428 (innerList!14837 (xs!18065 (c!832544 input!1236))))) b!4898965))

(declare-fun b!4898966 () Bool)

(declare-fun e!3062347 () Bool)

(assert (=> b!4898966 (= e!3062347 tp_is_empty!35793)))

(declare-fun b!4898967 () Bool)

(declare-fun tp!1378311 () Bool)

(declare-fun tp!1378309 () Bool)

(assert (=> b!4898967 (= e!3062347 (and tp!1378311 tp!1378309))))

(declare-fun b!4898969 () Bool)

(declare-fun tp!1378312 () Bool)

(declare-fun tp!1378310 () Bool)

(assert (=> b!4898969 (= e!3062347 (and tp!1378312 tp!1378310))))

(declare-fun b!4898968 () Bool)

(declare-fun tp!1378308 () Bool)

(assert (=> b!4898968 (= e!3062347 tp!1378308)))

(assert (=> b!4898500 (= tp!1378238 e!3062347)))

(assert (= (and b!4898500 (is-ElementMatch!13256 (regex!8181 (h!62878 (t!366240 rulesArg!165))))) b!4898966))

(assert (= (and b!4898500 (is-Concat!21748 (regex!8181 (h!62878 (t!366240 rulesArg!165))))) b!4898967))

(assert (= (and b!4898500 (is-Star!13256 (regex!8181 (h!62878 (t!366240 rulesArg!165))))) b!4898968))

(assert (= (and b!4898500 (is-Union!13256 (regex!8181 (h!62878 (t!366240 rulesArg!165))))) b!4898969))

(declare-fun b!4898970 () Bool)

(declare-fun e!3062348 () Bool)

(assert (=> b!4898970 (= e!3062348 tp_is_empty!35793)))

(declare-fun b!4898971 () Bool)

(declare-fun tp!1378316 () Bool)

(declare-fun tp!1378314 () Bool)

(assert (=> b!4898971 (= e!3062348 (and tp!1378316 tp!1378314))))

(declare-fun b!4898973 () Bool)

(declare-fun tp!1378317 () Bool)

(declare-fun tp!1378315 () Bool)

(assert (=> b!4898973 (= e!3062348 (and tp!1378317 tp!1378315))))

(declare-fun b!4898972 () Bool)

(declare-fun tp!1378313 () Bool)

(assert (=> b!4898972 (= e!3062348 tp!1378313)))

(assert (=> b!4898513 (= tp!1378255 e!3062348)))

(assert (= (and b!4898513 (is-ElementMatch!13256 (regOne!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898970))

(assert (= (and b!4898513 (is-Concat!21748 (regOne!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898971))

(assert (= (and b!4898513 (is-Star!13256 (regOne!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898972))

(assert (= (and b!4898513 (is-Union!13256 (regOne!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898973))

(declare-fun b!4898974 () Bool)

(declare-fun e!3062349 () Bool)

(assert (=> b!4898974 (= e!3062349 tp_is_empty!35793)))

(declare-fun b!4898975 () Bool)

(declare-fun tp!1378321 () Bool)

(declare-fun tp!1378319 () Bool)

(assert (=> b!4898975 (= e!3062349 (and tp!1378321 tp!1378319))))

(declare-fun b!4898977 () Bool)

(declare-fun tp!1378322 () Bool)

(declare-fun tp!1378320 () Bool)

(assert (=> b!4898977 (= e!3062349 (and tp!1378322 tp!1378320))))

(declare-fun b!4898976 () Bool)

(declare-fun tp!1378318 () Bool)

(assert (=> b!4898976 (= e!3062349 tp!1378318)))

(assert (=> b!4898513 (= tp!1378253 e!3062349)))

(assert (= (and b!4898513 (is-ElementMatch!13256 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898974))

(assert (= (and b!4898513 (is-Concat!21748 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898975))

(assert (= (and b!4898513 (is-Star!13256 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898976))

(assert (= (and b!4898513 (is-Union!13256 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165))))) b!4898977))

(declare-fun b!4898980 () Bool)

(declare-fun b_free!131663 () Bool)

(declare-fun b_next!132453 () Bool)

(assert (=> b!4898980 (= b_free!131663 (not b_next!132453))))

(declare-fun t!366263 () Bool)

(declare-fun tb!259467 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366263) tb!259467))

(declare-fun result!323120 () Bool)

(assert (= result!323120 result!323098))

(assert (=> d!1574132 t!366263))

(assert (=> d!1574138 t!366263))

(declare-fun t!366265 () Bool)

(declare-fun tb!259469 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366265) tb!259469))

(declare-fun result!323122 () Bool)

(assert (= result!323122 result!323104))

(assert (=> d!1574138 t!366265))

(declare-fun tb!259471 () Bool)

(declare-fun t!366267 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366267) tb!259471))

(declare-fun result!323124 () Bool)

(assert (= result!323124 result!323114))

(assert (=> d!1574186 t!366267))

(declare-fun b_and!345643 () Bool)

(declare-fun tp!1378325 () Bool)

(assert (=> b!4898980 (= tp!1378325 (and (=> t!366263 result!323120) (=> t!366265 result!323122) (=> t!366267 result!323124) b_and!345643))))

(declare-fun b_free!131665 () Bool)

(declare-fun b_next!132455 () Bool)

(assert (=> b!4898980 (= b_free!131665 (not b_next!132455))))

(declare-fun t!366269 () Bool)

(declare-fun tb!259473 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366269) tb!259473))

(declare-fun result!323126 () Bool)

(assert (= result!323126 result!323108))

(assert (=> d!1574172 t!366269))

(declare-fun tp!1378324 () Bool)

(declare-fun b_and!345645 () Bool)

(assert (=> b!4898980 (= tp!1378324 (and (=> t!366269 result!323126) b_and!345645))))

(declare-fun e!3062351 () Bool)

(assert (=> b!4898980 (= e!3062351 (and tp!1378325 tp!1378324))))

(declare-fun b!4898979 () Bool)

(declare-fun tp!1378323 () Bool)

(declare-fun e!3062352 () Bool)

(assert (=> b!4898979 (= e!3062352 (and tp!1378323 (inv!72731 (tag!9045 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (inv!72736 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) e!3062351))))

(declare-fun b!4898978 () Bool)

(declare-fun e!3062350 () Bool)

(declare-fun tp!1378326 () Bool)

(assert (=> b!4898978 (= e!3062350 (and e!3062352 tp!1378326))))

(assert (=> b!4898499 (= tp!1378241 e!3062350)))

(assert (= b!4898979 b!4898980))

(assert (= b!4898978 b!4898979))

(assert (= (and b!4898499 (is-Cons!56430 (t!366240 (t!366240 rulesArg!165)))) b!4898978))

(declare-fun m!5906396 () Bool)

(assert (=> b!4898979 m!5906396))

(declare-fun m!5906398 () Bool)

(assert (=> b!4898979 m!5906398))

(declare-fun e!3062355 () Bool)

(declare-fun tp!1378328 () Bool)

(declare-fun b!4898981 () Bool)

(declare-fun tp!1378327 () Bool)

(assert (=> b!4898981 (= e!3062355 (and (inv!72735 (left!41002 (left!41002 (c!832544 input!1236)))) tp!1378327 (inv!72735 (right!41332 (left!41002 (c!832544 input!1236)))) tp!1378328))))

(declare-fun b!4898983 () Bool)

(declare-fun e!3062354 () Bool)

(declare-fun tp!1378329 () Bool)

(assert (=> b!4898983 (= e!3062354 tp!1378329)))

(declare-fun b!4898982 () Bool)

(assert (=> b!4898982 (= e!3062355 (and (inv!72742 (xs!18065 (left!41002 (c!832544 input!1236)))) e!3062354))))

(assert (=> b!4898530 (= tp!1378263 (and (inv!72735 (left!41002 (c!832544 input!1236))) e!3062355))))

(assert (= (and b!4898530 (is-Node!14749 (left!41002 (c!832544 input!1236)))) b!4898981))

(assert (= b!4898982 b!4898983))

(assert (= (and b!4898530 (is-Leaf!24557 (left!41002 (c!832544 input!1236)))) b!4898982))

(declare-fun m!5906400 () Bool)

(assert (=> b!4898981 m!5906400))

(declare-fun m!5906402 () Bool)

(assert (=> b!4898981 m!5906402))

(declare-fun m!5906404 () Bool)

(assert (=> b!4898982 m!5906404))

(assert (=> b!4898530 m!5905786))

(declare-fun b!4898984 () Bool)

(declare-fun e!3062357 () Bool)

(declare-fun tp!1378330 () Bool)

(declare-fun tp!1378331 () Bool)

(assert (=> b!4898984 (= e!3062357 (and (inv!72735 (left!41002 (right!41332 (c!832544 input!1236)))) tp!1378330 (inv!72735 (right!41332 (right!41332 (c!832544 input!1236)))) tp!1378331))))

(declare-fun b!4898986 () Bool)

(declare-fun e!3062356 () Bool)

(declare-fun tp!1378332 () Bool)

(assert (=> b!4898986 (= e!3062356 tp!1378332)))

(declare-fun b!4898985 () Bool)

(assert (=> b!4898985 (= e!3062357 (and (inv!72742 (xs!18065 (right!41332 (c!832544 input!1236)))) e!3062356))))

(assert (=> b!4898530 (= tp!1378264 (and (inv!72735 (right!41332 (c!832544 input!1236))) e!3062357))))

(assert (= (and b!4898530 (is-Node!14749 (right!41332 (c!832544 input!1236)))) b!4898984))

(assert (= b!4898985 b!4898986))

(assert (= (and b!4898530 (is-Leaf!24557 (right!41332 (c!832544 input!1236)))) b!4898985))

(declare-fun m!5906406 () Bool)

(assert (=> b!4898984 m!5906406))

(declare-fun m!5906408 () Bool)

(assert (=> b!4898984 m!5906408))

(declare-fun m!5906410 () Bool)

(assert (=> b!4898985 m!5906410))

(assert (=> b!4898530 m!5905788))

(declare-fun b!4898987 () Bool)

(declare-fun e!3062358 () Bool)

(assert (=> b!4898987 (= e!3062358 tp_is_empty!35793)))

(declare-fun b!4898988 () Bool)

(declare-fun tp!1378336 () Bool)

(declare-fun tp!1378334 () Bool)

(assert (=> b!4898988 (= e!3062358 (and tp!1378336 tp!1378334))))

(declare-fun b!4898990 () Bool)

(declare-fun tp!1378337 () Bool)

(declare-fun tp!1378335 () Bool)

(assert (=> b!4898990 (= e!3062358 (and tp!1378337 tp!1378335))))

(declare-fun b!4898989 () Bool)

(declare-fun tp!1378333 () Bool)

(assert (=> b!4898989 (= e!3062358 tp!1378333)))

(assert (=> b!4898515 (= tp!1378256 e!3062358)))

(assert (= (and b!4898515 (is-ElementMatch!13256 (regOne!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898987))

(assert (= (and b!4898515 (is-Concat!21748 (regOne!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898988))

(assert (= (and b!4898515 (is-Star!13256 (regOne!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898989))

(assert (= (and b!4898515 (is-Union!13256 (regOne!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898990))

(declare-fun b!4898991 () Bool)

(declare-fun e!3062359 () Bool)

(assert (=> b!4898991 (= e!3062359 tp_is_empty!35793)))

(declare-fun b!4898992 () Bool)

(declare-fun tp!1378341 () Bool)

(declare-fun tp!1378339 () Bool)

(assert (=> b!4898992 (= e!3062359 (and tp!1378341 tp!1378339))))

(declare-fun b!4898994 () Bool)

(declare-fun tp!1378342 () Bool)

(declare-fun tp!1378340 () Bool)

(assert (=> b!4898994 (= e!3062359 (and tp!1378342 tp!1378340))))

(declare-fun b!4898993 () Bool)

(declare-fun tp!1378338 () Bool)

(assert (=> b!4898993 (= e!3062359 tp!1378338)))

(assert (=> b!4898515 (= tp!1378254 e!3062359)))

(assert (= (and b!4898515 (is-ElementMatch!13256 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898991))

(assert (= (and b!4898515 (is-Concat!21748 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898992))

(assert (= (and b!4898515 (is-Star!13256 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898993))

(assert (= (and b!4898515 (is-Union!13256 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165))))) b!4898994))

(declare-fun b!4898995 () Bool)

(declare-fun e!3062360 () Bool)

(assert (=> b!4898995 (= e!3062360 tp_is_empty!35793)))

(declare-fun b!4898996 () Bool)

(declare-fun tp!1378346 () Bool)

(declare-fun tp!1378344 () Bool)

(assert (=> b!4898996 (= e!3062360 (and tp!1378346 tp!1378344))))

(declare-fun b!4898998 () Bool)

(declare-fun tp!1378347 () Bool)

(declare-fun tp!1378345 () Bool)

(assert (=> b!4898998 (= e!3062360 (and tp!1378347 tp!1378345))))

(declare-fun b!4898997 () Bool)

(declare-fun tp!1378343 () Bool)

(assert (=> b!4898997 (= e!3062360 tp!1378343)))

(assert (=> b!4898514 (= tp!1378252 e!3062360)))

(assert (= (and b!4898514 (is-ElementMatch!13256 (reg!13585 (regex!8181 (h!62878 rulesArg!165))))) b!4898995))

(assert (= (and b!4898514 (is-Concat!21748 (reg!13585 (regex!8181 (h!62878 rulesArg!165))))) b!4898996))

(assert (= (and b!4898514 (is-Star!13256 (reg!13585 (regex!8181 (h!62878 rulesArg!165))))) b!4898997))

(assert (= (and b!4898514 (is-Union!13256 (reg!13585 (regex!8181 (h!62878 rulesArg!165))))) b!4898998))

(declare-fun b_lambda!194881 () Bool)

(assert (= b_lambda!194873 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194881)))

(declare-fun b_lambda!194883 () Bool)

(assert (= b_lambda!194865 (or d!1574042 b_lambda!194883)))

(declare-fun bs!1176549 () Bool)

(declare-fun d!1574238 () Bool)

(assert (= bs!1176549 (and d!1574238 d!1574042)))

(assert (=> bs!1176549 (= (dynLambda!22692 lambda!244157 (h!62878 rulesArg!165)) (ruleValid!3679 thiss!14805 (h!62878 rulesArg!165)))))

(assert (=> bs!1176549 m!5905710))

(assert (=> b!4898692 d!1574238))

(declare-fun b_lambda!194885 () Bool)

(assert (= b_lambda!194875 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194885)))

(declare-fun b_lambda!194887 () Bool)

(assert (= b_lambda!194869 (or b!4898475 b_lambda!194887)))

(declare-fun bs!1176550 () Bool)

(declare-fun d!1574240 () Bool)

(assert (= bs!1176550 (and d!1574240 b!4898475)))

(assert (=> bs!1176550 (= (dynLambda!22693 lambda!244166 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))) (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))) (list!17745 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun b_lambda!194893 () Bool)

(assert (=> (not b_lambda!194893) (not bs!1176550)))

(declare-fun t!366271 () Bool)

(declare-fun tb!259475 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366271) tb!259475))

(declare-fun b!4898999 () Bool)

(declare-fun e!3062361 () Bool)

(declare-fun tp!1378348 () Bool)

(assert (=> b!4898999 (= e!3062361 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))) tp!1378348))))

(declare-fun result!323128 () Bool)

(assert (=> tb!259475 (= result!323128 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))) e!3062361))))

(assert (= tb!259475 b!4898999))

(declare-fun m!5906412 () Bool)

(assert (=> b!4898999 m!5906412))

(declare-fun m!5906414 () Bool)

(assert (=> tb!259475 m!5906414))

(assert (=> bs!1176550 t!366271))

(declare-fun b_and!345647 () Bool)

(assert (= b_and!345635 (and (=> t!366271 result!323128) b_and!345647)))

(declare-fun t!366273 () Bool)

(declare-fun tb!259477 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366273) tb!259477))

(declare-fun result!323130 () Bool)

(assert (= result!323130 result!323128))

(assert (=> bs!1176550 t!366273))

(declare-fun b_and!345649 () Bool)

(assert (= b_and!345637 (and (=> t!366273 result!323130) b_and!345649)))

(declare-fun t!366275 () Bool)

(declare-fun tb!259479 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366275) tb!259479))

(declare-fun result!323132 () Bool)

(assert (= result!323132 result!323128))

(assert (=> bs!1176550 t!366275))

(declare-fun b_and!345651 () Bool)

(assert (= b_and!345645 (and (=> t!366275 result!323132) b_and!345651)))

(declare-fun b_lambda!194895 () Bool)

(assert (=> (not b_lambda!194895) (not bs!1176550)))

(assert (=> bs!1176550 t!366249))

(declare-fun b_and!345653 () Bool)

(assert (= b_and!345639 (and (=> t!366249 result!323104) b_and!345653)))

(assert (=> bs!1176550 t!366251))

(declare-fun b_and!345655 () Bool)

(assert (= b_and!345641 (and (=> t!366251 result!323106) b_and!345655)))

(assert (=> bs!1176550 t!366265))

(declare-fun b_and!345657 () Bool)

(assert (= b_and!345643 (and (=> t!366265 result!323122) b_and!345657)))

(assert (=> bs!1176550 m!5905762))

(assert (=> bs!1176550 m!5906124))

(assert (=> bs!1176550 m!5906120))

(declare-fun m!5906416 () Bool)

(assert (=> bs!1176550 m!5906416))

(assert (=> bs!1176550 m!5905762))

(assert (=> bs!1176550 m!5906120))

(assert (=> bs!1176550 m!5906416))

(declare-fun m!5906418 () Bool)

(assert (=> bs!1176550 m!5906418))

(assert (=> d!1574130 d!1574240))

(declare-fun b_lambda!194889 () Bool)

(assert (= b_lambda!194867 (or b!4898475 b_lambda!194889)))

(declare-fun bs!1176551 () Bool)

(declare-fun d!1574242 () Bool)

(assert (= bs!1176551 (and d!1574242 b!4898475)))

(assert (=> bs!1176551 (= (dynLambda!22693 lambda!244166 (_1!33560 lt!2008636)) (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))) (list!17745 (_1!33560 lt!2008636))))))

(declare-fun b_lambda!194897 () Bool)

(assert (=> (not b_lambda!194897) (not bs!1176551)))

(declare-fun t!366277 () Bool)

(declare-fun tb!259481 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366277) tb!259481))

(declare-fun e!3062362 () Bool)

(declare-fun tp!1378349 () Bool)

(declare-fun b!4899000 () Bool)

(assert (=> b!4899000 (= e!3062362 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))) tp!1378349))))

(declare-fun result!323134 () Bool)

(assert (=> tb!259481 (= result!323134 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))) e!3062362))))

(assert (= tb!259481 b!4899000))

(declare-fun m!5906420 () Bool)

(assert (=> b!4899000 m!5906420))

(declare-fun m!5906422 () Bool)

(assert (=> tb!259481 m!5906422))

(assert (=> bs!1176551 t!366277))

(declare-fun b_and!345659 () Bool)

(assert (= b_and!345647 (and (=> t!366277 result!323134) b_and!345659)))

(declare-fun t!366279 () Bool)

(declare-fun tb!259483 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366279) tb!259483))

(declare-fun result!323136 () Bool)

(assert (= result!323136 result!323134))

(assert (=> bs!1176551 t!366279))

(declare-fun b_and!345661 () Bool)

(assert (= b_and!345649 (and (=> t!366279 result!323136) b_and!345661)))

(declare-fun t!366281 () Bool)

(declare-fun tb!259485 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366281) tb!259485))

(declare-fun result!323138 () Bool)

(assert (= result!323138 result!323134))

(assert (=> bs!1176551 t!366281))

(declare-fun b_and!345663 () Bool)

(assert (= b_and!345651 (and (=> t!366281 result!323138) b_and!345663)))

(declare-fun b_lambda!194899 () Bool)

(assert (=> (not b_lambda!194899) (not bs!1176551)))

(assert (=> bs!1176551 t!366245))

(declare-fun b_and!345665 () Bool)

(assert (= b_and!345653 (and (=> t!366245 result!323098) b_and!345665)))

(assert (=> bs!1176551 t!366247))

(declare-fun b_and!345667 () Bool)

(assert (= b_and!345655 (and (=> t!366247 result!323102) b_and!345667)))

(assert (=> bs!1176551 t!366263))

(declare-fun b_and!345669 () Bool)

(assert (= b_and!345657 (and (=> t!366263 result!323120) b_and!345669)))

(assert (=> bs!1176551 m!5905766))

(assert (=> bs!1176551 m!5906110))

(declare-fun m!5906424 () Bool)

(assert (=> bs!1176551 m!5906424))

(assert (=> bs!1176551 m!5906110))

(assert (=> bs!1176551 m!5906424))

(declare-fun m!5906426 () Bool)

(assert (=> bs!1176551 m!5906426))

(assert (=> d!1574122 d!1574242))

(declare-fun b_lambda!194891 () Bool)

(assert (= b_lambda!194871 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194891)))

(push 1)

(assert (not b!4898954))

(assert (not d!1574134))

(assert (not b_lambda!194899))

(assert (not bm!339852))

(assert (not b!4898975))

(assert (not b!4898758))

(assert (not b!4898902))

(assert (not d!1574094))

(assert (not b!4898820))

(assert (not d!1574106))

(assert (not d!1574138))

(assert (not d!1574122))

(assert (not b!4898929))

(assert (not d!1574088))

(assert (not b!4898981))

(assert (not b!4898825))

(assert (not b_next!132439))

(assert (not b!4898985))

(assert (not d!1574112))

(assert (not b!4898679))

(assert b_and!345661)

(assert (not b!4898654))

(assert (not d!1574192))

(assert (not b!4898829))

(assert (not b!4898893))

(assert (not tb!259459))

(assert (not b!4898791))

(assert (not bm!339821))

(assert (not b!4898774))

(assert (not b!4898904))

(assert (not bs!1176551))

(assert (not b!4898984))

(assert (not bm!339839))

(assert (not b!4898996))

(assert (not b!4898933))

(assert (not d!1574174))

(assert (not b!4898986))

(assert (not b_lambda!194879))

(assert (not d!1574098))

(assert (not b!4898892))

(assert (not d!1574184))

(assert (not bm!339842))

(assert (not d!1574214))

(assert (not b!4898683))

(assert (not b!4898667))

(assert (not tb!259451))

(assert (not b!4898894))

(assert (not d!1574234))

(assert (not bm!339844))

(assert (not b!4898930))

(assert (not b!4898663))

(assert (not bm!339840))

(assert (not b!4898855))

(assert (not b_lambda!194891))

(assert (not b!4898953))

(assert (not d!1574172))

(assert (not d!1574202))

(assert (not tb!259481))

(assert (not b_lambda!194877))

(assert (not b!4898830))

(assert (not b!4898994))

(assert (not bm!339838))

(assert (not bm!339841))

(assert (not b!4898976))

(assert (not d!1574198))

(assert (not b!4898806))

(assert (not b!4898740))

(assert (not d!1574118))

(assert (not b!4898677))

(assert (not d!1574104))

(assert (not b!4898968))

(assert (not b!4898812))

(assert (not d!1574188))

(assert (not b_lambda!194881))

(assert (not b!4898770))

(assert (not b!4898775))

(assert (not b!4898664))

(assert (not b!4898822))

(assert (not b!4898661))

(assert (not tb!259463))

(assert (not b!4898857))

(assert (not d!1574168))

(assert (not b!4898771))

(assert (not b!4898686))

(assert (not bm!339820))

(assert (not b!4898989))

(assert (not d!1574096))

(assert (not d!1574136))

(assert (not bm!339846))

(assert (not b!4898658))

(assert (not d!1574158))

(assert b_and!345665)

(assert (not b!4898787))

(assert (not b!4898668))

(assert (not b!4898666))

(assert (not b!4898967))

(assert (not b_lambda!194889))

(assert (not b!4898845))

(assert (not tb!259475))

(assert (not b_lambda!194887))

(assert (not b!4898971))

(assert (not b!4898827))

(assert tp_is_empty!35793)

(assert (not b!4898662))

(assert (not b_lambda!194893))

(assert b_and!345669)

(assert (not b!4898680))

(assert (not b!4898760))

(assert (not b_lambda!194883))

(assert (not b!4898936))

(assert (not b!4898896))

(assert (not d!1574100))

(assert (not b!4898684))

(assert (not b!4898653))

(assert (not b!4898768))

(assert (not b!4898965))

(assert (not d!1574226))

(assert (not b!4898736))

(assert (not bm!339847))

(assert (not b!4898856))

(assert (not b!4898786))

(assert (not b!4898674))

(assert (not b!4898731))

(assert (not b!4898901))

(assert b_and!345667)

(assert (not b!4898824))

(assert (not b!4898839))

(assert (not b_next!132445))

(assert (not b!4898657))

(assert (not b!4898655))

(assert (not bm!339843))

(assert (not b!4898992))

(assert (not b!4898958))

(assert (not b!4898762))

(assert (not b!4898977))

(assert (not b!4898769))

(assert (not b!4898854))

(assert (not b!4898938))

(assert (not b!4898927))

(assert (not b!4898805))

(assert (not b_lambda!194895))

(assert (not b!4898937))

(assert (not b!4898997))

(assert (not d!1574204))

(assert (not b!4898897))

(assert (not b_lambda!194897))

(assert (not b!4898682))

(assert (not b!4898949))

(assert (not b!4898934))

(assert (not b!4898678))

(assert (not b!4898746))

(assert (not d!1574116))

(assert (not b!4898767))

(assert (not bs!1176550))

(assert (not b!4898973))

(assert (not b!4898764))

(assert (not d!1574164))

(assert (not b!4898766))

(assert (not b!4898931))

(assert (not tb!259455))

(assert (not b_next!132447))

(assert (not b!4898835))

(assert (not b!4898733))

(assert (not b!4898928))

(assert (not b!4898903))

(assert (not b!4898725))

(assert (not d!1574102))

(assert (not b!4898530))

(assert (not b!4898695))

(assert (not b!4898955))

(assert (not b!4898693))

(assert (not d!1574180))

(assert (not d!1574126))

(assert (not b!4898790))

(assert (not d!1574148))

(assert (not b_next!132453))

(assert (not d!1574166))

(assert (not b!4898840))

(assert (not d!1574130))

(assert (not b!4898828))

(assert (not d!1574140))

(assert (not b_next!132437))

(assert (not bs!1176549))

(assert (not d!1574210))

(assert (not bm!339851))

(assert (not b!4898888))

(assert (not bm!339845))

(assert (not d!1574120))

(assert (not b!4898969))

(assert (not b!4898685))

(assert (not b!4898772))

(assert (not bm!339848))

(assert (not d!1574218))

(assert (not b!4898983))

(assert (not b!4898999))

(assert (not b!4898946))

(assert (not b!4898990))

(assert (not b!4898957))

(assert (not b_next!132455))

(assert (not b!4898687))

(assert (not b!4898833))

(assert (not d!1574236))

(assert b_and!345659)

(assert (not b!4898988))

(assert (not b!4898652))

(assert (not b!4898979))

(assert (not b!4898972))

(assert (not b!4898978))

(assert (not b!4898993))

(assert (not b!4898831))

(assert (not b!4898982))

(assert (not b!4898659))

(assert (not d!1574208))

(assert b_and!345663)

(assert (not d!1574232))

(assert (not d!1574170))

(assert (not d!1574230))

(assert (not b!4898932))

(assert (not d!1574190))

(assert (not b!4898998))

(assert (not b_lambda!194885))

(assert (not b!4898669))

(assert (not b!4899000))

(assert (not b!4898836))

(assert (not b!4898832))

(assert (not b!4898660))

(check-sat)

(pop 1)

(push 1)

(assert b_and!345665)

(assert b_and!345669)

(assert (not b_next!132447))

(assert (not b_next!132453))

(assert (not b_next!132437))

(assert (not b_next!132455))

(assert b_and!345659)

(assert b_and!345663)

(assert (not b_next!132439))

(assert b_and!345661)

(assert b_and!345667)

(assert (not b_next!132445))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!194937 () Bool)

(assert (= b_lambda!194893 (or (and b!4898272 b_free!131649) (and b!4898501 b_free!131657 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131665 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194937)))

(declare-fun b_lambda!194939 () Bool)

(assert (= b_lambda!194895 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194939)))

(declare-fun b_lambda!194941 () Bool)

(assert (= b_lambda!194899 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194941)))

(declare-fun b_lambda!194943 () Bool)

(assert (= b_lambda!194897 (or (and b!4898272 b_free!131649) (and b!4898501 b_free!131657 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131665 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194943)))

(push 1)

(assert (not b!4898954))

(assert (not d!1574134))

(assert (not bm!339852))

(assert (not b!4898975))

(assert (not b!4898758))

(assert (not b!4898902))

(assert (not d!1574094))

(assert (not b!4898820))

(assert (not d!1574106))

(assert (not d!1574138))

(assert (not d!1574122))

(assert (not b!4898929))

(assert (not d!1574088))

(assert (not b!4898981))

(assert (not b!4898825))

(assert (not b_next!132439))

(assert (not b!4898985))

(assert (not d!1574112))

(assert (not b!4898679))

(assert b_and!345661)

(assert (not b!4898654))

(assert (not d!1574192))

(assert (not b!4898829))

(assert (not b!4898893))

(assert (not tb!259459))

(assert (not b!4898791))

(assert (not bm!339821))

(assert (not b!4898774))

(assert (not b!4898904))

(assert (not bs!1176551))

(assert (not b!4898984))

(assert (not bm!339839))

(assert (not b!4898996))

(assert (not b!4898933))

(assert (not d!1574174))

(assert (not b!4898986))

(assert (not b_lambda!194879))

(assert (not d!1574098))

(assert (not b!4898892))

(assert (not d!1574184))

(assert (not bm!339842))

(assert (not d!1574214))

(assert (not b!4898683))

(assert (not b!4898667))

(assert (not tb!259451))

(assert (not b!4898894))

(assert (not d!1574234))

(assert (not bm!339844))

(assert (not b_lambda!194941))

(assert (not b!4898930))

(assert (not b!4898663))

(assert (not bm!339840))

(assert (not b!4898855))

(assert (not b_lambda!194891))

(assert (not b!4898953))

(assert (not d!1574172))

(assert (not d!1574202))

(assert (not tb!259481))

(assert (not b_lambda!194877))

(assert (not b!4898830))

(assert (not b!4898994))

(assert (not bm!339838))

(assert (not bm!339841))

(assert (not b!4898976))

(assert (not d!1574198))

(assert (not b!4898806))

(assert (not b!4898740))

(assert (not d!1574118))

(assert (not b!4898677))

(assert (not d!1574104))

(assert (not b!4898968))

(assert (not b!4898812))

(assert (not d!1574188))

(assert (not b_lambda!194881))

(assert (not b!4898770))

(assert (not b!4898775))

(assert (not b!4898664))

(assert (not b!4898822))

(assert (not b!4898661))

(assert (not tb!259463))

(assert (not b!4898857))

(assert (not d!1574168))

(assert (not b!4898771))

(assert (not b!4898686))

(assert (not bm!339820))

(assert (not b!4898989))

(assert (not d!1574096))

(assert (not d!1574136))

(assert (not bm!339846))

(assert (not b!4898658))

(assert (not d!1574158))

(assert b_and!345665)

(assert (not b!4898787))

(assert (not b!4898668))

(assert (not b!4898666))

(assert (not b_lambda!194889))

(assert (not b!4898845))

(assert (not tb!259475))

(assert (not b_lambda!194887))

(assert (not b!4898967))

(assert (not b_lambda!194937))

(assert (not b!4898971))

(assert (not b!4898827))

(assert tp_is_empty!35793)

(assert (not b!4898662))

(assert b_and!345669)

(assert (not b!4898680))

(assert (not b!4898760))

(assert (not b_lambda!194883))

(assert (not b!4898936))

(assert (not b!4898896))

(assert (not d!1574100))

(assert (not b!4898684))

(assert (not b!4898653))

(assert (not b!4898768))

(assert (not b!4898965))

(assert (not d!1574226))

(assert (not b!4898736))

(assert (not bm!339847))

(assert (not b!4898856))

(assert (not b!4898786))

(assert (not b!4898674))

(assert (not b!4898731))

(assert (not b!4898901))

(assert b_and!345667)

(assert (not b!4898824))

(assert (not b!4898839))

(assert (not b_next!132445))

(assert (not b!4898657))

(assert (not b!4898655))

(assert (not bm!339843))

(assert (not b!4898992))

(assert (not b!4898958))

(assert (not b!4898762))

(assert (not b!4898977))

(assert (not b!4898769))

(assert (not b!4898854))

(assert (not b!4898938))

(assert (not b!4898927))

(assert (not b!4898805))

(assert (not b!4898937))

(assert (not b!4898997))

(assert (not d!1574204))

(assert (not b!4898897))

(assert (not b!4898682))

(assert (not b!4898949))

(assert (not b!4898934))

(assert (not b!4898678))

(assert (not b!4898746))

(assert (not d!1574116))

(assert (not b!4898767))

(assert (not bs!1176550))

(assert (not b!4898973))

(assert (not b!4898764))

(assert (not d!1574164))

(assert (not b!4898766))

(assert (not b!4898931))

(assert (not tb!259455))

(assert (not b_next!132447))

(assert (not b!4898835))

(assert (not b!4898733))

(assert (not b!4898928))

(assert (not b!4898903))

(assert (not b!4898725))

(assert (not d!1574102))

(assert (not b!4898530))

(assert (not b!4898695))

(assert (not b!4898955))

(assert (not b_lambda!194939))

(assert (not b!4898693))

(assert (not d!1574180))

(assert (not d!1574126))

(assert (not b!4898790))

(assert (not d!1574148))

(assert (not b_next!132453))

(assert (not d!1574166))

(assert (not b!4898840))

(assert (not d!1574130))

(assert (not b!4898828))

(assert (not d!1574140))

(assert (not b_next!132437))

(assert (not b_lambda!194943))

(assert (not bs!1176549))

(assert (not d!1574210))

(assert (not bm!339851))

(assert (not b!4898888))

(assert (not bm!339845))

(assert (not d!1574120))

(assert (not b!4898969))

(assert (not b!4898685))

(assert (not b!4898772))

(assert (not bm!339848))

(assert (not d!1574218))

(assert (not b!4898983))

(assert (not b!4898999))

(assert (not b!4898946))

(assert (not b!4898990))

(assert (not b!4898957))

(assert (not b_next!132455))

(assert (not b!4898687))

(assert (not b!4898833))

(assert (not d!1574236))

(assert b_and!345659)

(assert (not b!4898988))

(assert (not b!4898652))

(assert (not b!4898979))

(assert (not b!4898972))

(assert (not b!4898978))

(assert (not b!4898993))

(assert (not b!4898831))

(assert (not b!4898982))

(assert (not b!4898659))

(assert (not d!1574208))

(assert b_and!345663)

(assert (not d!1574232))

(assert (not d!1574170))

(assert (not d!1574230))

(assert (not b!4898932))

(assert (not d!1574190))

(assert (not b!4898998))

(assert (not b_lambda!194885))

(assert (not b!4898669))

(assert (not b!4899000))

(assert (not b!4898836))

(assert (not b!4898832))

(assert (not b!4898660))

(check-sat)

(pop 1)

(push 1)

(assert b_and!345665)

(assert b_and!345669)

(assert (not b_next!132447))

(assert (not b_next!132453))

(assert (not b_next!132437))

(assert (not b_next!132455))

(assert b_and!345659)

(assert b_and!345663)

(assert (not b_next!132439))

(assert b_and!345661)

(assert b_and!345667)

(assert (not b_next!132445))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4899352 () Bool)

(declare-fun e!3062558 () Bool)

(declare-fun e!3062557 () Bool)

(assert (=> b!4899352 (= e!3062558 e!3062557)))

(declare-fun res!2092787 () Bool)

(assert (=> b!4899352 (=> (not res!2092787) (not e!3062557))))

(assert (=> b!4899352 (= res!2092787 (not (is-Nil!56428 lt!2008644)))))

(declare-fun d!1574388 () Bool)

(declare-fun e!3062559 () Bool)

(assert (=> d!1574388 e!3062559))

(declare-fun res!2092786 () Bool)

(assert (=> d!1574388 (=> res!2092786 e!3062559)))

(declare-fun lt!2009094 () Bool)

(assert (=> d!1574388 (= res!2092786 (not lt!2009094))))

(assert (=> d!1574388 (= lt!2009094 e!3062558)))

(declare-fun res!2092788 () Bool)

(assert (=> d!1574388 (=> res!2092788 e!3062558)))

(assert (=> d!1574388 (= res!2092788 (is-Nil!56428 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428))))))

(assert (=> d!1574388 (= (isPrefix!4901 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428)) lt!2008644) lt!2009094)))

(declare-fun b!4899353 () Bool)

(declare-fun res!2092785 () Bool)

(assert (=> b!4899353 (=> (not res!2092785) (not e!3062557))))

(assert (=> b!4899353 (= res!2092785 (= (head!10462 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428))) (head!10462 lt!2008644)))))

(declare-fun b!4899355 () Bool)

(assert (=> b!4899355 (= e!3062559 (>= (size!37169 lt!2008644) (size!37169 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428)))))))

(declare-fun b!4899354 () Bool)

(assert (=> b!4899354 (= e!3062557 (isPrefix!4901 (tail!9608 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428))) (tail!9608 lt!2008644)))))

(assert (= (and d!1574388 (not res!2092788)) b!4899352))

(assert (= (and b!4899352 res!2092787) b!4899353))

(assert (= (and b!4899353 res!2092785) b!4899354))

(assert (= (and d!1574388 (not res!2092786)) b!4899355))

(assert (=> b!4899353 m!5906052))

(declare-fun m!5906946 () Bool)

(assert (=> b!4899353 m!5906946))

(assert (=> b!4899353 m!5906046))

(assert (=> b!4899355 m!5905740))

(assert (=> b!4899355 m!5906052))

(declare-fun m!5906948 () Bool)

(assert (=> b!4899355 m!5906948))

(assert (=> b!4899354 m!5906052))

(declare-fun m!5906950 () Bool)

(assert (=> b!4899354 m!5906950))

(assert (=> b!4899354 m!5906070))

(assert (=> b!4899354 m!5906950))

(assert (=> b!4899354 m!5906070))

(declare-fun m!5906952 () Bool)

(assert (=> b!4899354 m!5906952))

(assert (=> b!4898731 d!1574388))

(declare-fun d!1574390 () Bool)

(assert (=> d!1574390 (isPrefix!4901 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428)) lt!2008644)))

(declare-fun lt!2009097 () Unit!146503)

(declare-fun choose!35774 (List!56552 List!56552) Unit!146503)

(assert (=> d!1574390 (= lt!2009097 (choose!35774 Nil!56428 lt!2008644))))

(assert (=> d!1574390 (isPrefix!4901 Nil!56428 lt!2008644)))

(assert (=> d!1574390 (= (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 lt!2008644) lt!2009097)))

(declare-fun bs!1176579 () Bool)

(assert (= bs!1176579 d!1574390))

(declare-fun m!5906954 () Bool)

(assert (=> bs!1176579 m!5906954))

(assert (=> bs!1176579 m!5906050))

(assert (=> bs!1176579 m!5906066))

(declare-fun m!5906956 () Bool)

(assert (=> bs!1176579 m!5906956))

(assert (=> bs!1176579 m!5906052))

(assert (=> bs!1176579 m!5906052))

(assert (=> bs!1176579 m!5906054))

(assert (=> bs!1176579 m!5906050))

(assert (=> b!4898731 d!1574390))

(declare-fun d!1574392 () Bool)

(declare-fun e!3062560 () Bool)

(assert (=> d!1574392 e!3062560))

(declare-fun res!2092789 () Bool)

(assert (=> d!1574392 (=> (not res!2092789) (not e!3062560))))

(declare-fun lt!2009098 () List!56552)

(assert (=> d!1574392 (= res!2092789 (= (content!10031 lt!2009098) (set.union (content!10031 Nil!56428) (content!10031 (Cons!56428 lt!2008797 Nil!56428)))))))

(declare-fun e!3062561 () List!56552)

(assert (=> d!1574392 (= lt!2009098 e!3062561)))

(declare-fun c!832707 () Bool)

(assert (=> d!1574392 (= c!832707 (is-Nil!56428 Nil!56428))))

(assert (=> d!1574392 (= (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428)) lt!2009098)))

(declare-fun b!4899359 () Bool)

(assert (=> b!4899359 (= e!3062560 (or (not (= (Cons!56428 lt!2008797 Nil!56428) Nil!56428)) (= lt!2009098 Nil!56428)))))

(declare-fun b!4899356 () Bool)

(assert (=> b!4899356 (= e!3062561 (Cons!56428 lt!2008797 Nil!56428))))

(declare-fun b!4899358 () Bool)

(declare-fun res!2092790 () Bool)

(assert (=> b!4899358 (=> (not res!2092790) (not e!3062560))))

(assert (=> b!4899358 (= res!2092790 (= (size!37169 lt!2009098) (+ (size!37169 Nil!56428) (size!37169 (Cons!56428 lt!2008797 Nil!56428)))))))

(declare-fun b!4899357 () Bool)

(assert (=> b!4899357 (= e!3062561 (Cons!56428 (h!62876 Nil!56428) (++!12250 (t!366238 Nil!56428) (Cons!56428 lt!2008797 Nil!56428))))))

(assert (= (and d!1574392 c!832707) b!4899356))

(assert (= (and d!1574392 (not c!832707)) b!4899357))

(assert (= (and d!1574392 res!2092789) b!4899358))

(assert (= (and b!4899358 res!2092790) b!4899359))

(declare-fun m!5906958 () Bool)

(assert (=> d!1574392 m!5906958))

(declare-fun m!5906960 () Bool)

(assert (=> d!1574392 m!5906960))

(declare-fun m!5906962 () Bool)

(assert (=> d!1574392 m!5906962))

(declare-fun m!5906964 () Bool)

(assert (=> b!4899358 m!5906964))

(assert (=> b!4899358 m!5905738))

(declare-fun m!5906966 () Bool)

(assert (=> b!4899358 m!5906966))

(declare-fun m!5906968 () Bool)

(assert (=> b!4899357 m!5906968))

(assert (=> b!4898731 d!1574392))

(declare-fun d!1574394 () Bool)

(assert (=> d!1574394 (= (tail!9608 lt!2008644) (t!366238 lt!2008644))))

(assert (=> b!4898731 d!1574394))

(declare-fun d!1574396 () Bool)

(assert (=> d!1574396 (= (++!12250 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428)) lt!2008806) lt!2008644)))

(declare-fun lt!2009101 () Unit!146503)

(declare-fun choose!35775 (List!56552 C!26710 List!56552 List!56552) Unit!146503)

(assert (=> d!1574396 (= lt!2009101 (choose!35775 Nil!56428 lt!2008797 lt!2008806 lt!2008644))))

(assert (=> d!1574396 (= (++!12250 Nil!56428 (Cons!56428 lt!2008797 lt!2008806)) lt!2008644)))

(assert (=> d!1574396 (= (lemmaMoveElementToOtherListKeepsConcatEq!1336 Nil!56428 lt!2008797 lt!2008806 lt!2008644) lt!2009101)))

(declare-fun bs!1176580 () Bool)

(assert (= bs!1176580 d!1574396))

(assert (=> bs!1176580 m!5906058))

(assert (=> bs!1176580 m!5906058))

(assert (=> bs!1176580 m!5906060))

(declare-fun m!5906970 () Bool)

(assert (=> bs!1176580 m!5906970))

(declare-fun m!5906972 () Bool)

(assert (=> bs!1176580 m!5906972))

(assert (=> b!4898731 d!1574396))

(declare-fun d!1574398 () Bool)

(declare-fun e!3062562 () Bool)

(assert (=> d!1574398 e!3062562))

(declare-fun res!2092791 () Bool)

(assert (=> d!1574398 (=> (not res!2092791) (not e!3062562))))

(declare-fun lt!2009102 () List!56552)

(assert (=> d!1574398 (= res!2092791 (= (content!10031 lt!2009102) (set.union (content!10031 Nil!56428) (content!10031 (Cons!56428 (head!10462 lt!2008644) Nil!56428)))))))

(declare-fun e!3062563 () List!56552)

(assert (=> d!1574398 (= lt!2009102 e!3062563)))

(declare-fun c!832708 () Bool)

(assert (=> d!1574398 (= c!832708 (is-Nil!56428 Nil!56428))))

(assert (=> d!1574398 (= (++!12250 Nil!56428 (Cons!56428 (head!10462 lt!2008644) Nil!56428)) lt!2009102)))

(declare-fun b!4899363 () Bool)

(assert (=> b!4899363 (= e!3062562 (or (not (= (Cons!56428 (head!10462 lt!2008644) Nil!56428) Nil!56428)) (= lt!2009102 Nil!56428)))))

(declare-fun b!4899360 () Bool)

(assert (=> b!4899360 (= e!3062563 (Cons!56428 (head!10462 lt!2008644) Nil!56428))))

(declare-fun b!4899362 () Bool)

(declare-fun res!2092792 () Bool)

(assert (=> b!4899362 (=> (not res!2092792) (not e!3062562))))

(assert (=> b!4899362 (= res!2092792 (= (size!37169 lt!2009102) (+ (size!37169 Nil!56428) (size!37169 (Cons!56428 (head!10462 lt!2008644) Nil!56428)))))))

(declare-fun b!4899361 () Bool)

(assert (=> b!4899361 (= e!3062563 (Cons!56428 (h!62876 Nil!56428) (++!12250 (t!366238 Nil!56428) (Cons!56428 (head!10462 lt!2008644) Nil!56428))))))

(assert (= (and d!1574398 c!832708) b!4899360))

(assert (= (and d!1574398 (not c!832708)) b!4899361))

(assert (= (and d!1574398 res!2092791) b!4899362))

(assert (= (and b!4899362 res!2092792) b!4899363))

(declare-fun m!5906974 () Bool)

(assert (=> d!1574398 m!5906974))

(assert (=> d!1574398 m!5906960))

(declare-fun m!5906976 () Bool)

(assert (=> d!1574398 m!5906976))

(declare-fun m!5906978 () Bool)

(assert (=> b!4899362 m!5906978))

(assert (=> b!4899362 m!5905738))

(declare-fun m!5906980 () Bool)

(assert (=> b!4899362 m!5906980))

(declare-fun m!5906982 () Bool)

(assert (=> b!4899361 m!5906982))

(assert (=> b!4898731 d!1574398))

(declare-fun d!1574400 () Bool)

(assert (=> d!1574400 (= (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) (h!62876 (getSuffix!2893 lt!2008644 Nil!56428)))))

(assert (=> b!4898731 d!1574400))

(declare-fun d!1574402 () Bool)

(declare-fun e!3062564 () Bool)

(assert (=> d!1574402 e!3062564))

(declare-fun res!2092793 () Bool)

(assert (=> d!1574402 (=> (not res!2092793) (not e!3062564))))

(declare-fun lt!2009103 () List!56552)

(assert (=> d!1574402 (= res!2092793 (= (content!10031 lt!2009103) (set.union (content!10031 Nil!56428) (content!10031 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428)))))))

(declare-fun e!3062565 () List!56552)

(assert (=> d!1574402 (= lt!2009103 e!3062565)))

(declare-fun c!832709 () Bool)

(assert (=> d!1574402 (= c!832709 (is-Nil!56428 Nil!56428))))

(assert (=> d!1574402 (= (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428)) lt!2009103)))

(declare-fun b!4899367 () Bool)

(assert (=> b!4899367 (= e!3062564 (or (not (= (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428) Nil!56428)) (= lt!2009103 Nil!56428)))))

(declare-fun b!4899364 () Bool)

(assert (=> b!4899364 (= e!3062565 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428))))

(declare-fun b!4899366 () Bool)

(declare-fun res!2092794 () Bool)

(assert (=> b!4899366 (=> (not res!2092794) (not e!3062564))))

(assert (=> b!4899366 (= res!2092794 (= (size!37169 lt!2009103) (+ (size!37169 Nil!56428) (size!37169 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428)))))))

(declare-fun b!4899365 () Bool)

(assert (=> b!4899365 (= e!3062565 (Cons!56428 (h!62876 Nil!56428) (++!12250 (t!366238 Nil!56428) (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 Nil!56428)) Nil!56428))))))

(assert (= (and d!1574402 c!832709) b!4899364))

(assert (= (and d!1574402 (not c!832709)) b!4899365))

(assert (= (and d!1574402 res!2092793) b!4899366))

(assert (= (and b!4899366 res!2092794) b!4899367))

(declare-fun m!5906984 () Bool)

(assert (=> d!1574402 m!5906984))

(assert (=> d!1574402 m!5906960))

(declare-fun m!5906986 () Bool)

(assert (=> d!1574402 m!5906986))

(declare-fun m!5906988 () Bool)

(assert (=> b!4899366 m!5906988))

(assert (=> b!4899366 m!5905738))

(declare-fun m!5906990 () Bool)

(assert (=> b!4899366 m!5906990))

(declare-fun m!5906992 () Bool)

(assert (=> b!4899365 m!5906992))

(assert (=> b!4898731 d!1574402))

(declare-fun d!1574404 () Bool)

(declare-fun lt!2009106 () List!56552)

(assert (=> d!1574404 (= (++!12250 Nil!56428 lt!2009106) lt!2008644)))

(declare-fun e!3062568 () List!56552)

(assert (=> d!1574404 (= lt!2009106 e!3062568)))

(declare-fun c!832712 () Bool)

(assert (=> d!1574404 (= c!832712 (is-Cons!56428 Nil!56428))))

(assert (=> d!1574404 (>= (size!37169 lt!2008644) (size!37169 Nil!56428))))

(assert (=> d!1574404 (= (getSuffix!2893 lt!2008644 Nil!56428) lt!2009106)))

(declare-fun b!4899372 () Bool)

(assert (=> b!4899372 (= e!3062568 (getSuffix!2893 (tail!9608 lt!2008644) (t!366238 Nil!56428)))))

(declare-fun b!4899373 () Bool)

(assert (=> b!4899373 (= e!3062568 lt!2008644)))

(assert (= (and d!1574404 c!832712) b!4899372))

(assert (= (and d!1574404 (not c!832712)) b!4899373))

(declare-fun m!5906994 () Bool)

(assert (=> d!1574404 m!5906994))

(assert (=> d!1574404 m!5905740))

(assert (=> d!1574404 m!5905738))

(assert (=> b!4899372 m!5906070))

(assert (=> b!4899372 m!5906070))

(declare-fun m!5906996 () Bool)

(assert (=> b!4899372 m!5906996))

(assert (=> b!4898731 d!1574404))

(assert (=> b!4898731 d!1574142))

(declare-fun d!1574406 () Bool)

(assert (=> d!1574406 (= (head!10462 lt!2008644) (h!62876 lt!2008644))))

(assert (=> b!4898731 d!1574406))

(assert (=> b!4898731 d!1574128))

(declare-fun d!1574408 () Bool)

(declare-fun e!3062569 () Bool)

(assert (=> d!1574408 e!3062569))

(declare-fun res!2092795 () Bool)

(assert (=> d!1574408 (=> (not res!2092795) (not e!3062569))))

(declare-fun lt!2009107 () List!56552)

(assert (=> d!1574408 (= res!2092795 (= (content!10031 lt!2009107) (set.union (content!10031 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428))) (content!10031 lt!2008806))))))

(declare-fun e!3062570 () List!56552)

(assert (=> d!1574408 (= lt!2009107 e!3062570)))

(declare-fun c!832713 () Bool)

(assert (=> d!1574408 (= c!832713 (is-Nil!56428 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428))))))

(assert (=> d!1574408 (= (++!12250 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428)) lt!2008806) lt!2009107)))

(declare-fun b!4899377 () Bool)

(assert (=> b!4899377 (= e!3062569 (or (not (= lt!2008806 Nil!56428)) (= lt!2009107 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428)))))))

(declare-fun b!4899374 () Bool)

(assert (=> b!4899374 (= e!3062570 lt!2008806)))

(declare-fun b!4899376 () Bool)

(declare-fun res!2092796 () Bool)

(assert (=> b!4899376 (=> (not res!2092796) (not e!3062569))))

(assert (=> b!4899376 (= res!2092796 (= (size!37169 lt!2009107) (+ (size!37169 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428))) (size!37169 lt!2008806))))))

(declare-fun b!4899375 () Bool)

(assert (=> b!4899375 (= e!3062570 (Cons!56428 (h!62876 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428))) (++!12250 (t!366238 (++!12250 Nil!56428 (Cons!56428 lt!2008797 Nil!56428))) lt!2008806)))))

(assert (= (and d!1574408 c!832713) b!4899374))

(assert (= (and d!1574408 (not c!832713)) b!4899375))

(assert (= (and d!1574408 res!2092795) b!4899376))

(assert (= (and b!4899376 res!2092796) b!4899377))

(declare-fun m!5906998 () Bool)

(assert (=> d!1574408 m!5906998))

(assert (=> d!1574408 m!5906058))

(declare-fun m!5907000 () Bool)

(assert (=> d!1574408 m!5907000))

(declare-fun m!5907002 () Bool)

(assert (=> d!1574408 m!5907002))

(declare-fun m!5907004 () Bool)

(assert (=> b!4899376 m!5907004))

(assert (=> b!4899376 m!5906058))

(declare-fun m!5907006 () Bool)

(assert (=> b!4899376 m!5907006))

(declare-fun m!5907008 () Bool)

(assert (=> b!4899376 m!5907008))

(declare-fun m!5907010 () Bool)

(assert (=> b!4899375 m!5907010))

(assert (=> b!4898731 d!1574408))

(declare-fun d!1574410 () Bool)

(assert (=> d!1574410 (<= (size!37169 Nil!56428) (size!37169 lt!2008644))))

(declare-fun lt!2009110 () Unit!146503)

(declare-fun choose!35776 (List!56552 List!56552) Unit!146503)

(assert (=> d!1574410 (= lt!2009110 (choose!35776 Nil!56428 lt!2008644))))

(assert (=> d!1574410 (isPrefix!4901 Nil!56428 lt!2008644)))

(assert (=> d!1574410 (= (lemmaIsPrefixThenSmallerEqSize!630 Nil!56428 lt!2008644) lt!2009110)))

(declare-fun bs!1176581 () Bool)

(assert (= bs!1176581 d!1574410))

(assert (=> bs!1176581 m!5905738))

(assert (=> bs!1176581 m!5905740))

(declare-fun m!5907012 () Bool)

(assert (=> bs!1176581 m!5907012))

(assert (=> bs!1176581 m!5906956))

(assert (=> b!4898731 d!1574410))

(declare-fun d!1574412 () Bool)

(assert (=> d!1574412 (= (get!19496 lt!2008840) (v!49998 lt!2008840))))

(assert (=> b!4898772 d!1574412))

(declare-fun d!1574414 () Bool)

(assert (=> d!1574414 (= (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840))))) (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840))))))))

(declare-fun b_lambda!194945 () Bool)

(assert (=> (not b_lambda!194945) (not d!1574414)))

(declare-fun tb!259523 () Bool)

(declare-fun t!366321 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366321) tb!259523))

(declare-fun result!323182 () Bool)

(assert (=> tb!259523 (= result!323182 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840)))))))))

(declare-fun m!5907014 () Bool)

(assert (=> tb!259523 m!5907014))

(assert (=> d!1574414 t!366321))

(declare-fun b_and!345719 () Bool)

(assert (= b_and!345665 (and (=> t!366321 result!323182) b_and!345719)))

(declare-fun t!366323 () Bool)

(declare-fun tb!259525 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366323) tb!259525))

(declare-fun result!323184 () Bool)

(assert (= result!323184 result!323182))

(assert (=> d!1574414 t!366323))

(declare-fun b_and!345721 () Bool)

(assert (= b_and!345667 (and (=> t!366323 result!323184) b_and!345721)))

(declare-fun tb!259527 () Bool)

(declare-fun t!366325 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366325) tb!259527))

(declare-fun result!323186 () Bool)

(assert (= result!323186 result!323182))

(assert (=> d!1574414 t!366325))

(declare-fun b_and!345723 () Bool)

(assert (= b_and!345669 (and (=> t!366325 result!323186) b_and!345723)))

(assert (=> d!1574414 m!5906148))

(declare-fun m!5907016 () Bool)

(assert (=> d!1574414 m!5907016))

(assert (=> b!4898772 d!1574414))

(declare-fun d!1574416 () Bool)

(assert (=> d!1574416 (= (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840)))) (fromListB!2698 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840)))))))

(declare-fun bs!1176582 () Bool)

(assert (= bs!1176582 d!1574416))

(declare-fun m!5907018 () Bool)

(assert (=> bs!1176582 m!5907018))

(assert (=> b!4898772 d!1574416))

(declare-fun d!1574418 () Bool)

(declare-fun dynLambda!22701 (Int BalanceConc!28928 BalanceConc!28928) Bool)

(assert (=> d!1574418 (dynLambda!22701 lambda!244176 (_1!33560 lt!2008636) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))

(declare-fun lt!2009113 () Unit!146503)

(declare-fun choose!35777 (Int BalanceConc!28928 BalanceConc!28928) Unit!146503)

(assert (=> d!1574418 (= lt!2009113 (choose!35777 lambda!244176 (_1!33560 lt!2008636) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))

(assert (=> d!1574418 (Forall2!1274 lambda!244176)))

(assert (=> d!1574418 (= (Forall2of!453 lambda!244176 (_1!33560 lt!2008636) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))) lt!2009113)))

(declare-fun b_lambda!194947 () Bool)

(assert (=> (not b_lambda!194947) (not d!1574418)))

(declare-fun bs!1176583 () Bool)

(assert (= bs!1176583 d!1574418))

(assert (=> bs!1176583 m!5905762))

(declare-fun m!5907020 () Bool)

(assert (=> bs!1176583 m!5907020))

(assert (=> bs!1176583 m!5905762))

(declare-fun m!5907022 () Bool)

(assert (=> bs!1176583 m!5907022))

(declare-fun m!5907024 () Bool)

(assert (=> bs!1176583 m!5907024))

(assert (=> d!1574138 d!1574418))

(assert (=> d!1574138 d!1574134))

(declare-fun d!1574420 () Bool)

(assert (=> d!1574420 (= (list!17745 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))) (list!17747 (c!832544 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun bs!1176584 () Bool)

(assert (= bs!1176584 d!1574420))

(declare-fun m!5907026 () Bool)

(assert (=> bs!1176584 m!5907026))

(assert (=> d!1574138 d!1574420))

(declare-fun d!1574422 () Bool)

(assert (=> d!1574422 (= (isEmpty!30303 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236))) (not (is-Some!14038 (maxPrefixOneRule!3536 thiss!14805 (h!62878 rulesArg!165) (list!17745 input!1236)))))))

(assert (=> d!1574104 d!1574422))

(assert (=> b!4898758 d!1574204))

(assert (=> b!4898758 d!1574120))

(assert (=> b!4898758 d!1574128))

(assert (=> b!4898758 d!1574142))

(declare-fun d!1574424 () Bool)

(assert (=> d!1574424 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))) (list!17747 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))))))

(declare-fun bs!1176585 () Bool)

(assert (= bs!1176585 d!1574424))

(declare-fun m!5907028 () Bool)

(assert (=> bs!1176585 m!5907028))

(assert (=> b!4898836 d!1574424))

(declare-fun d!1574426 () Bool)

(declare-fun lt!2009114 () BalanceConc!28928)

(assert (=> d!1574426 (= (list!17745 lt!2009114) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851))))))

(assert (=> d!1574426 (= lt!2009114 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))) (value!262310 (_1!33556 (get!19496 lt!2008851)))))))

(assert (=> d!1574426 (= (charsOf!5381 (_1!33556 (get!19496 lt!2008851))) lt!2009114)))

(declare-fun b_lambda!194949 () Bool)

(assert (=> (not b_lambda!194949) (not d!1574426)))

(declare-fun tb!259529 () Bool)

(declare-fun t!366327 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366327) tb!259529))

(declare-fun b!4899379 () Bool)

(declare-fun e!3062572 () Bool)

(declare-fun tp!1378398 () Bool)

(assert (=> b!4899379 (= e!3062572 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))) (value!262310 (_1!33556 (get!19496 lt!2008851)))))) tp!1378398))))

(declare-fun result!323188 () Bool)

(assert (=> tb!259529 (= result!323188 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))) (value!262310 (_1!33556 (get!19496 lt!2008851))))) e!3062572))))

(assert (= tb!259529 b!4899379))

(declare-fun m!5907030 () Bool)

(assert (=> b!4899379 m!5907030))

(declare-fun m!5907032 () Bool)

(assert (=> tb!259529 m!5907032))

(assert (=> d!1574426 t!366327))

(declare-fun b_and!345725 () Bool)

(assert (= b_and!345659 (and (=> t!366327 result!323188) b_and!345725)))

(declare-fun tb!259531 () Bool)

(declare-fun t!366329 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366329) tb!259531))

(declare-fun result!323190 () Bool)

(assert (= result!323190 result!323188))

(assert (=> d!1574426 t!366329))

(declare-fun b_and!345727 () Bool)

(assert (= b_and!345661 (and (=> t!366329 result!323190) b_and!345727)))

(declare-fun tb!259533 () Bool)

(declare-fun t!366331 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366331) tb!259533))

(declare-fun result!323192 () Bool)

(assert (= result!323192 result!323188))

(assert (=> d!1574426 t!366331))

(declare-fun b_and!345729 () Bool)

(assert (= b_and!345663 (and (=> t!366331 result!323192) b_and!345729)))

(declare-fun m!5907034 () Bool)

(assert (=> d!1574426 m!5907034))

(declare-fun m!5907036 () Bool)

(assert (=> d!1574426 m!5907036))

(assert (=> b!4898836 d!1574426))

(declare-fun d!1574428 () Bool)

(assert (=> d!1574428 (= (get!19496 lt!2008851) (v!49998 lt!2008851))))

(assert (=> b!4898836 d!1574428))

(declare-fun d!1574430 () Bool)

(assert (=> d!1574430 (= (isEmpty!30306 (list!17745 (_1!33560 lt!2008636))) (is-Nil!56428 (list!17745 (_1!33560 lt!2008636))))))

(assert (=> d!1574102 d!1574430))

(assert (=> d!1574102 d!1574134))

(declare-fun d!1574432 () Bool)

(declare-fun lt!2009117 () Bool)

(assert (=> d!1574432 (= lt!2009117 (isEmpty!30306 (list!17747 (c!832544 (_1!33560 lt!2008636)))))))

(assert (=> d!1574432 (= lt!2009117 (= (size!37173 (c!832544 (_1!33560 lt!2008636))) 0))))

(assert (=> d!1574432 (= (isEmpty!30311 (c!832544 (_1!33560 lt!2008636))) lt!2009117)))

(declare-fun bs!1176586 () Bool)

(assert (= bs!1176586 d!1574432))

(assert (=> bs!1176586 m!5906112))

(assert (=> bs!1176586 m!5906112))

(declare-fun m!5907038 () Bool)

(assert (=> bs!1176586 m!5907038))

(assert (=> bs!1176586 m!5906116))

(assert (=> d!1574102 d!1574432))

(declare-fun d!1574434 () Bool)

(assert (=> d!1574434 (= (isEmpty!30303 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236))) (not (is-Some!14038 (maxPrefixZipper!680 thiss!14805 (t!366240 rulesArg!165) (list!17745 input!1236)))))))

(assert (=> d!1574210 d!1574434))

(declare-fun d!1574436 () Bool)

(assert (=> d!1574436 (= (inv!72731 (tag!9045 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (= (mod (str.len (value!262309 (tag!9045 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) 2) 0))))

(assert (=> b!4898979 d!1574436))

(declare-fun d!1574438 () Bool)

(declare-fun res!2092797 () Bool)

(declare-fun e!3062573 () Bool)

(assert (=> d!1574438 (=> (not res!2092797) (not e!3062573))))

(assert (=> d!1574438 (= res!2092797 (semiInverseModEq!3593 (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))))))

(assert (=> d!1574438 (= (inv!72736 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) e!3062573)))

(declare-fun b!4899380 () Bool)

(assert (=> b!4899380 (= e!3062573 (equivClasses!3472 (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))))))

(assert (= (and d!1574438 res!2092797) b!4899380))

(declare-fun m!5907040 () Bool)

(assert (=> d!1574438 m!5907040))

(declare-fun m!5907042 () Bool)

(assert (=> b!4899380 m!5907042))

(assert (=> b!4898979 d!1574438))

(declare-fun d!1574440 () Bool)

(assert (=> d!1574440 (= (isEmpty!30304 lt!2008609) (not (is-Some!14039 lt!2008609)))))

(assert (=> d!1574184 d!1574440))

(declare-fun d!1574442 () Bool)

(assert (=> d!1574442 (isPrefix!4901 lt!2008644 lt!2008644)))

(declare-fun lt!2009118 () Unit!146503)

(assert (=> d!1574442 (= lt!2009118 (choose!35766 lt!2008644 lt!2008644))))

(assert (=> d!1574442 (= (lemmaIsPrefixRefl!3298 lt!2008644 lt!2008644) lt!2009118)))

(declare-fun bs!1176587 () Bool)

(assert (= bs!1176587 d!1574442))

(assert (=> bs!1176587 m!5906092))

(declare-fun m!5907044 () Bool)

(assert (=> bs!1176587 m!5907044))

(assert (=> bm!339841 d!1574442))

(declare-fun d!1574444 () Bool)

(declare-fun res!2092798 () Bool)

(declare-fun e!3062574 () Bool)

(assert (=> d!1574444 (=> res!2092798 e!3062574)))

(assert (=> d!1574444 (= res!2092798 (is-Nil!56430 (t!366240 rulesArg!165)))))

(assert (=> d!1574444 (= (forall!13097 (t!366240 rulesArg!165) lambda!244180) e!3062574)))

(declare-fun b!4899381 () Bool)

(declare-fun e!3062575 () Bool)

(assert (=> b!4899381 (= e!3062574 e!3062575)))

(declare-fun res!2092799 () Bool)

(assert (=> b!4899381 (=> (not res!2092799) (not e!3062575))))

(assert (=> b!4899381 (= res!2092799 (dynLambda!22692 lambda!244180 (h!62878 (t!366240 rulesArg!165))))))

(declare-fun b!4899382 () Bool)

(assert (=> b!4899382 (= e!3062575 (forall!13097 (t!366240 (t!366240 rulesArg!165)) lambda!244180))))

(assert (= (and d!1574444 (not res!2092798)) b!4899381))

(assert (= (and b!4899381 res!2092799) b!4899382))

(declare-fun b_lambda!194951 () Bool)

(assert (=> (not b_lambda!194951) (not b!4899381)))

(declare-fun m!5907046 () Bool)

(assert (=> b!4899381 m!5907046))

(declare-fun m!5907048 () Bool)

(assert (=> b!4899382 m!5907048))

(assert (=> d!1574202 d!1574444))

(declare-fun b!4899383 () Bool)

(declare-fun e!3062582 () Bool)

(declare-fun e!3062577 () Bool)

(assert (=> b!4899383 (= e!3062582 e!3062577)))

(declare-fun c!832716 () Bool)

(assert (=> b!4899383 (= c!832716 (is-EmptyLang!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899384 () Bool)

(declare-fun res!2092807 () Bool)

(declare-fun e!3062576 () Bool)

(assert (=> b!4899384 (=> res!2092807 e!3062576)))

(declare-fun e!3062578 () Bool)

(assert (=> b!4899384 (= res!2092807 e!3062578)))

(declare-fun res!2092803 () Bool)

(assert (=> b!4899384 (=> (not res!2092803) (not e!3062578))))

(declare-fun lt!2009119 () Bool)

(assert (=> b!4899384 (= res!2092803 lt!2009119)))

(declare-fun b!4899385 () Bool)

(declare-fun e!3062579 () Bool)

(assert (=> b!4899385 (= e!3062579 (matchR!6537 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472))))) (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472))))))))

(declare-fun d!1574446 () Bool)

(assert (=> d!1574446 e!3062582))

(declare-fun c!832714 () Bool)

(assert (=> d!1574446 (= c!832714 (is-EmptyExpr!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574446 (= lt!2009119 e!3062579)))

(declare-fun c!832715 () Bool)

(assert (=> d!1574446 (= c!832715 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(assert (=> d!1574446 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574446 (= (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))) lt!2009119)))

(declare-fun b!4899386 () Bool)

(declare-fun res!2092800 () Bool)

(assert (=> b!4899386 (=> (not res!2092800) (not e!3062578))))

(declare-fun call!339891 () Bool)

(assert (=> b!4899386 (= res!2092800 (not call!339891))))

(declare-fun b!4899387 () Bool)

(assert (=> b!4899387 (= e!3062582 (= lt!2009119 call!339891))))

(declare-fun b!4899388 () Bool)

(declare-fun res!2092801 () Bool)

(assert (=> b!4899388 (=> res!2092801 e!3062576)))

(assert (=> b!4899388 (= res!2092801 (not (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> b!4899388 (= e!3062577 e!3062576)))

(declare-fun b!4899389 () Bool)

(declare-fun e!3062580 () Bool)

(assert (=> b!4899389 (= e!3062580 (not (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))) (c!832545 (regex!8181 (h!62878 rulesArg!165))))))))

(declare-fun bm!339886 () Bool)

(assert (=> bm!339886 (= call!339891 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(declare-fun b!4899390 () Bool)

(assert (=> b!4899390 (= e!3062578 (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))) (c!832545 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun b!4899391 () Bool)

(declare-fun res!2092806 () Bool)

(assert (=> b!4899391 (=> res!2092806 e!3062580)))

(assert (=> b!4899391 (= res!2092806 (not (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))))

(declare-fun b!4899392 () Bool)

(declare-fun e!3062581 () Bool)

(assert (=> b!4899392 (= e!3062576 e!3062581)))

(declare-fun res!2092804 () Bool)

(assert (=> b!4899392 (=> (not res!2092804) (not e!3062581))))

(assert (=> b!4899392 (= res!2092804 (not lt!2009119))))

(declare-fun b!4899393 () Bool)

(assert (=> b!4899393 (= e!3062579 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899394 () Bool)

(declare-fun res!2092802 () Bool)

(assert (=> b!4899394 (=> (not res!2092802) (not e!3062578))))

(assert (=> b!4899394 (= res!2092802 (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472))))))))

(declare-fun b!4899395 () Bool)

(assert (=> b!4899395 (= e!3062577 (not lt!2009119))))

(declare-fun b!4899396 () Bool)

(assert (=> b!4899396 (= e!3062581 e!3062580)))

(declare-fun res!2092805 () Bool)

(assert (=> b!4899396 (=> res!2092805 e!3062580)))

(assert (=> b!4899396 (= res!2092805 call!339891)))

(assert (= (and d!1574446 c!832715) b!4899393))

(assert (= (and d!1574446 (not c!832715)) b!4899385))

(assert (= (and d!1574446 c!832714) b!4899387))

(assert (= (and d!1574446 (not c!832714)) b!4899383))

(assert (= (and b!4899383 c!832716) b!4899395))

(assert (= (and b!4899383 (not c!832716)) b!4899388))

(assert (= (and b!4899388 (not res!2092801)) b!4899384))

(assert (= (and b!4899384 res!2092803) b!4899386))

(assert (= (and b!4899386 res!2092800) b!4899394))

(assert (= (and b!4899394 res!2092802) b!4899390))

(assert (= (and b!4899384 (not res!2092807)) b!4899392))

(assert (= (and b!4899392 res!2092804) b!4899396))

(assert (= (and b!4899396 (not res!2092805)) b!4899391))

(assert (= (and b!4899391 (not res!2092806)) b!4899389))

(assert (= (or b!4899387 b!4899386 b!4899396) bm!339886))

(declare-fun m!5907050 () Bool)

(assert (=> b!4899394 m!5907050))

(assert (=> b!4899394 m!5907050))

(declare-fun m!5907052 () Bool)

(assert (=> b!4899394 m!5907052))

(declare-fun m!5907054 () Bool)

(assert (=> b!4899390 m!5907054))

(assert (=> d!1574446 m!5905974))

(assert (=> d!1574446 m!5905982))

(assert (=> b!4899389 m!5907054))

(assert (=> bm!339886 m!5905974))

(assert (=> b!4899385 m!5907054))

(assert (=> b!4899385 m!5907054))

(declare-fun m!5907056 () Bool)

(assert (=> b!4899385 m!5907056))

(assert (=> b!4899385 m!5907050))

(assert (=> b!4899385 m!5907056))

(assert (=> b!4899385 m!5907050))

(declare-fun m!5907058 () Bool)

(assert (=> b!4899385 m!5907058))

(assert (=> b!4899393 m!5905984))

(assert (=> b!4899391 m!5907050))

(assert (=> b!4899391 m!5907050))

(assert (=> b!4899391 m!5907052))

(assert (=> b!4898855 d!1574446))

(declare-fun b!4899397 () Bool)

(declare-fun c!832721 () Bool)

(declare-fun call!339896 () Bool)

(assert (=> b!4899397 (= c!832721 call!339896)))

(declare-fun lt!2009141 () Unit!146503)

(declare-fun lt!2009126 () Unit!146503)

(assert (=> b!4899397 (= lt!2009141 lt!2009126)))

(assert (=> b!4899397 (= lt!2008472 Nil!56428)))

(declare-fun call!339893 () Unit!146503)

(assert (=> b!4899397 (= lt!2009126 call!339893)))

(declare-fun lt!2009136 () Unit!146503)

(declare-fun lt!2009122 () Unit!146503)

(assert (=> b!4899397 (= lt!2009136 lt!2009122)))

(declare-fun call!339897 () Bool)

(assert (=> b!4899397 call!339897))

(declare-fun call!339894 () Unit!146503)

(assert (=> b!4899397 (= lt!2009122 call!339894)))

(declare-fun e!3062589 () tuple2!60512)

(declare-fun e!3062590 () tuple2!60512)

(assert (=> b!4899397 (= e!3062589 e!3062590)))

(declare-fun b!4899398 () Bool)

(declare-fun e!3062588 () tuple2!60512)

(declare-fun e!3062586 () tuple2!60512)

(assert (=> b!4899398 (= e!3062588 e!3062586)))

(declare-fun lt!2009142 () tuple2!60512)

(declare-fun call!339892 () tuple2!60512)

(assert (=> b!4899398 (= lt!2009142 call!339892)))

(declare-fun c!832717 () Bool)

(assert (=> b!4899398 (= c!832717 (isEmpty!30306 (_1!33559 lt!2009142)))))

(declare-fun bm!339887 () Bool)

(declare-fun call!339895 () List!56552)

(assert (=> bm!339887 (= call!339895 (tail!9608 lt!2008472))))

(declare-fun bm!339888 () Bool)

(assert (=> bm!339888 (= call!339896 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899399 () Bool)

(assert (=> b!4899399 (= e!3062590 (tuple2!60513 Nil!56428 lt!2008472))))

(declare-fun b!4899401 () Bool)

(declare-fun e!3062585 () tuple2!60512)

(assert (=> b!4899401 (= e!3062585 e!3062589)))

(declare-fun c!832718 () Bool)

(assert (=> b!4899401 (= c!832718 (= (size!37169 Nil!56428) (size!37169 lt!2008472)))))

(declare-fun b!4899402 () Bool)

(assert (=> b!4899402 (= e!3062586 (tuple2!60513 Nil!56428 lt!2008472))))

(declare-fun b!4899403 () Bool)

(declare-fun e!3062583 () Unit!146503)

(declare-fun Unit!146516 () Unit!146503)

(assert (=> b!4899403 (= e!3062583 Unit!146516)))

(declare-fun lt!2009133 () Unit!146503)

(assert (=> b!4899403 (= lt!2009133 call!339894)))

(assert (=> b!4899403 call!339897))

(declare-fun lt!2009147 () Unit!146503)

(assert (=> b!4899403 (= lt!2009147 lt!2009133)))

(declare-fun lt!2009125 () Unit!146503)

(assert (=> b!4899403 (= lt!2009125 call!339893)))

(assert (=> b!4899403 (= lt!2008472 Nil!56428)))

(declare-fun lt!2009137 () Unit!146503)

(assert (=> b!4899403 (= lt!2009137 lt!2009125)))

(assert (=> b!4899403 false))

(declare-fun b!4899404 () Bool)

(declare-fun c!832720 () Bool)

(assert (=> b!4899404 (= c!832720 call!339896)))

(declare-fun lt!2009121 () Unit!146503)

(declare-fun lt!2009134 () Unit!146503)

(assert (=> b!4899404 (= lt!2009121 lt!2009134)))

(declare-fun lt!2009130 () C!26710)

(declare-fun lt!2009139 () List!56552)

(assert (=> b!4899404 (= (++!12250 (++!12250 Nil!56428 (Cons!56428 lt!2009130 Nil!56428)) lt!2009139) lt!2008472)))

(assert (=> b!4899404 (= lt!2009134 (lemmaMoveElementToOtherListKeepsConcatEq!1336 Nil!56428 lt!2009130 lt!2009139 lt!2008472))))

(assert (=> b!4899404 (= lt!2009139 (tail!9608 lt!2008472))))

(assert (=> b!4899404 (= lt!2009130 (head!10462 lt!2008472))))

(declare-fun lt!2009145 () Unit!146503)

(declare-fun lt!2009140 () Unit!146503)

(assert (=> b!4899404 (= lt!2009145 lt!2009140)))

(assert (=> b!4899404 (isPrefix!4901 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008472 Nil!56428)) Nil!56428)) lt!2008472)))

(assert (=> b!4899404 (= lt!2009140 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 lt!2008472))))

(declare-fun lt!2009124 () Unit!146503)

(declare-fun lt!2009120 () Unit!146503)

(assert (=> b!4899404 (= lt!2009124 lt!2009120)))

(assert (=> b!4899404 (= lt!2009120 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 lt!2008472))))

(declare-fun lt!2009143 () List!56552)

(assert (=> b!4899404 (= lt!2009143 (++!12250 Nil!56428 (Cons!56428 (head!10462 lt!2008472) Nil!56428)))))

(declare-fun lt!2009123 () Unit!146503)

(assert (=> b!4899404 (= lt!2009123 e!3062583)))

(declare-fun c!832722 () Bool)

(assert (=> b!4899404 (= c!832722 (= (size!37169 Nil!56428) (size!37169 lt!2008472)))))

(declare-fun lt!2009129 () Unit!146503)

(declare-fun lt!2009146 () Unit!146503)

(assert (=> b!4899404 (= lt!2009129 lt!2009146)))

(assert (=> b!4899404 (<= (size!37169 Nil!56428) (size!37169 lt!2008472))))

(assert (=> b!4899404 (= lt!2009146 (lemmaIsPrefixThenSmallerEqSize!630 Nil!56428 lt!2008472))))

(assert (=> b!4899404 (= e!3062589 e!3062588)))

(declare-fun b!4899405 () Bool)

(assert (=> b!4899405 (= e!3062588 call!339892)))

(declare-fun b!4899406 () Bool)

(declare-fun e!3062587 () Bool)

(declare-fun e!3062584 () Bool)

(assert (=> b!4899406 (= e!3062587 e!3062584)))

(declare-fun res!2092808 () Bool)

(assert (=> b!4899406 (=> res!2092808 e!3062584)))

(declare-fun lt!2009138 () tuple2!60512)

(assert (=> b!4899406 (= res!2092808 (isEmpty!30306 (_1!33559 lt!2009138)))))

(declare-fun bm!339889 () Bool)

(declare-fun call!339899 () Regex!13256)

(assert (=> bm!339889 (= call!339892 (findLongestMatchInner!1760 call!339899 lt!2009143 (+ (size!37169 Nil!56428) 1) call!339895 lt!2008472 (size!37169 lt!2008472)))))

(declare-fun bm!339890 () Bool)

(assert (=> bm!339890 (= call!339894 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(declare-fun bm!339891 () Bool)

(assert (=> bm!339891 (= call!339897 (isPrefix!4901 lt!2008472 lt!2008472))))

(declare-fun b!4899400 () Bool)

(assert (=> b!4899400 (= e!3062590 (tuple2!60513 Nil!56428 Nil!56428))))

(declare-fun d!1574448 () Bool)

(assert (=> d!1574448 e!3062587))

(declare-fun res!2092809 () Bool)

(assert (=> d!1574448 (=> (not res!2092809) (not e!3062587))))

(assert (=> d!1574448 (= res!2092809 (= (++!12250 (_1!33559 lt!2009138) (_2!33559 lt!2009138)) lt!2008472))))

(assert (=> d!1574448 (= lt!2009138 e!3062585)))

(declare-fun c!832719 () Bool)

(assert (=> d!1574448 (= c!832719 (lostCause!1092 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun lt!2009128 () Unit!146503)

(declare-fun Unit!146517 () Unit!146503)

(assert (=> d!1574448 (= lt!2009128 Unit!146517)))

(assert (=> d!1574448 (= (getSuffix!2893 lt!2008472 Nil!56428) lt!2008472)))

(declare-fun lt!2009127 () Unit!146503)

(declare-fun lt!2009132 () Unit!146503)

(assert (=> d!1574448 (= lt!2009127 lt!2009132)))

(declare-fun lt!2009135 () List!56552)

(assert (=> d!1574448 (= lt!2008472 lt!2009135)))

(assert (=> d!1574448 (= lt!2009132 (lemmaSamePrefixThenSameSuffix!2309 Nil!56428 lt!2008472 Nil!56428 lt!2009135 lt!2008472))))

(assert (=> d!1574448 (= lt!2009135 (getSuffix!2893 lt!2008472 Nil!56428))))

(declare-fun lt!2009144 () Unit!146503)

(declare-fun lt!2009131 () Unit!146503)

(assert (=> d!1574448 (= lt!2009144 lt!2009131)))

(assert (=> d!1574448 (isPrefix!4901 Nil!56428 (++!12250 Nil!56428 lt!2008472))))

(assert (=> d!1574448 (= lt!2009131 (lemmaConcatTwoListThenFirstIsPrefix!3129 Nil!56428 lt!2008472))))

(assert (=> d!1574448 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574448 (= (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)) lt!2009138)))

(declare-fun bm!339892 () Bool)

(assert (=> bm!339892 (= call!339893 (lemmaIsPrefixSameLengthThenSameList!1064 lt!2008472 Nil!56428 lt!2008472))))

(declare-fun b!4899407 () Bool)

(declare-fun Unit!146518 () Unit!146503)

(assert (=> b!4899407 (= e!3062583 Unit!146518)))

(declare-fun b!4899408 () Bool)

(assert (=> b!4899408 (= e!3062585 (tuple2!60513 Nil!56428 lt!2008472))))

(declare-fun b!4899409 () Bool)

(assert (=> b!4899409 (= e!3062584 (>= (size!37169 (_1!33559 lt!2009138)) (size!37169 Nil!56428)))))

(declare-fun bm!339893 () Bool)

(declare-fun call!339898 () C!26710)

(assert (=> bm!339893 (= call!339898 (head!10462 lt!2008472))))

(declare-fun bm!339894 () Bool)

(assert (=> bm!339894 (= call!339899 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) call!339898))))

(declare-fun b!4899410 () Bool)

(assert (=> b!4899410 (= e!3062586 lt!2009142)))

(assert (= (and d!1574448 c!832719) b!4899408))

(assert (= (and d!1574448 (not c!832719)) b!4899401))

(assert (= (and b!4899401 c!832718) b!4899397))

(assert (= (and b!4899401 (not c!832718)) b!4899404))

(assert (= (and b!4899397 c!832721) b!4899400))

(assert (= (and b!4899397 (not c!832721)) b!4899399))

(assert (= (and b!4899404 c!832722) b!4899403))

(assert (= (and b!4899404 (not c!832722)) b!4899407))

(assert (= (and b!4899404 c!832720) b!4899398))

(assert (= (and b!4899404 (not c!832720)) b!4899405))

(assert (= (and b!4899398 c!832717) b!4899402))

(assert (= (and b!4899398 (not c!832717)) b!4899410))

(assert (= (or b!4899398 b!4899405) bm!339887))

(assert (= (or b!4899398 b!4899405) bm!339893))

(assert (= (or b!4899398 b!4899405) bm!339894))

(assert (= (or b!4899398 b!4899405) bm!339889))

(assert (= (or b!4899397 b!4899404) bm!339888))

(assert (= (or b!4899397 b!4899403) bm!339890))

(assert (= (or b!4899397 b!4899403) bm!339892))

(assert (= (or b!4899397 b!4899403) bm!339891))

(assert (= (and d!1574448 res!2092809) b!4899406))

(assert (= (and b!4899406 (not res!2092808)) b!4899409))

(declare-fun m!5907060 () Bool)

(assert (=> bm!339894 m!5907060))

(assert (=> bm!339893 m!5905640))

(assert (=> bm!339890 m!5905560))

(declare-fun m!5907062 () Bool)

(assert (=> b!4899404 m!5907062))

(declare-fun m!5907064 () Bool)

(assert (=> b!4899404 m!5907064))

(declare-fun m!5907066 () Bool)

(assert (=> b!4899404 m!5907066))

(declare-fun m!5907068 () Bool)

(assert (=> b!4899404 m!5907068))

(declare-fun m!5907070 () Bool)

(assert (=> b!4899404 m!5907070))

(assert (=> b!4899404 m!5905640))

(assert (=> b!4899404 m!5905738))

(assert (=> b!4899404 m!5907064))

(assert (=> b!4899404 m!5907070))

(declare-fun m!5907072 () Bool)

(assert (=> b!4899404 m!5907072))

(declare-fun m!5907074 () Bool)

(assert (=> b!4899404 m!5907074))

(declare-fun m!5907076 () Bool)

(assert (=> b!4899404 m!5907076))

(assert (=> b!4899404 m!5907062))

(declare-fun m!5907078 () Bool)

(assert (=> b!4899404 m!5907078))

(declare-fun m!5907080 () Bool)

(assert (=> b!4899404 m!5907080))

(assert (=> b!4899404 m!5905630))

(assert (=> b!4899404 m!5905642))

(assert (=> d!1574448 m!5907062))

(assert (=> d!1574448 m!5906072))

(assert (=> d!1574448 m!5905982))

(declare-fun m!5907082 () Bool)

(assert (=> d!1574448 m!5907082))

(declare-fun m!5907084 () Bool)

(assert (=> d!1574448 m!5907084))

(declare-fun m!5907086 () Bool)

(assert (=> d!1574448 m!5907086))

(declare-fun m!5907088 () Bool)

(assert (=> d!1574448 m!5907088))

(assert (=> d!1574448 m!5907086))

(declare-fun m!5907090 () Bool)

(assert (=> d!1574448 m!5907090))

(assert (=> bm!339888 m!5905984))

(assert (=> bm!339887 m!5905642))

(assert (=> bm!339889 m!5905630))

(declare-fun m!5907092 () Bool)

(assert (=> bm!339889 m!5907092))

(declare-fun m!5907094 () Bool)

(assert (=> b!4899406 m!5907094))

(declare-fun m!5907096 () Bool)

(assert (=> b!4899398 m!5907096))

(declare-fun m!5907098 () Bool)

(assert (=> b!4899409 m!5907098))

(assert (=> b!4899409 m!5905738))

(assert (=> bm!339891 m!5905558))

(declare-fun m!5907100 () Bool)

(assert (=> bm!339892 m!5907100))

(assert (=> b!4898855 d!1574448))

(assert (=> b!4898855 d!1574128))

(assert (=> b!4898855 d!1574154))

(declare-fun d!1574450 () Bool)

(assert (=> d!1574450 (= (list!17749 (xs!18065 (c!832544 input!1236))) (innerList!14837 (xs!18065 (c!832544 input!1236))))))

(assert (=> b!4898786 d!1574450))

(declare-fun d!1574452 () Bool)

(declare-fun e!3062591 () Bool)

(assert (=> d!1574452 e!3062591))

(declare-fun res!2092810 () Bool)

(assert (=> d!1574452 (=> (not res!2092810) (not e!3062591))))

(declare-fun lt!2009148 () List!56552)

(assert (=> d!1574452 (= res!2092810 (= (content!10031 lt!2009148) (set.union (content!10031 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470))))) (content!10031 (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470))))))))))

(declare-fun e!3062592 () List!56552)

(assert (=> d!1574452 (= lt!2009148 e!3062592)))

(declare-fun c!832723 () Bool)

(assert (=> d!1574452 (= c!832723 (is-Nil!56428 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470))))))))

(assert (=> d!1574452 (= (++!12250 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470)))) (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470))))) lt!2009148)))

(declare-fun b!4899414 () Bool)

(assert (=> b!4899414 (= e!3062591 (or (not (= (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470)))) Nil!56428)) (= lt!2009148 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470)))))))))

(declare-fun b!4899411 () Bool)

(assert (=> b!4899411 (= e!3062592 (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470)))))))

(declare-fun b!4899413 () Bool)

(declare-fun res!2092811 () Bool)

(assert (=> b!4899413 (=> (not res!2092811) (not e!3062591))))

(assert (=> b!4899413 (= res!2092811 (= (size!37169 lt!2009148) (+ (size!37169 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470))))) (size!37169 (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470))))))))))

(declare-fun b!4899412 () Bool)

(assert (=> b!4899412 (= e!3062592 (Cons!56428 (h!62876 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470))))) (++!12250 (t!366238 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470))))) (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470)))))))))

(assert (= (and d!1574452 c!832723) b!4899411))

(assert (= (and d!1574452 (not c!832723)) b!4899412))

(assert (= (and d!1574452 res!2092810) b!4899413))

(assert (= (and b!4899413 res!2092811) b!4899414))

(declare-fun m!5907102 () Bool)

(assert (=> d!1574452 m!5907102))

(assert (=> d!1574452 m!5906172))

(declare-fun m!5907104 () Bool)

(assert (=> d!1574452 m!5907104))

(assert (=> d!1574452 m!5906174))

(declare-fun m!5907106 () Bool)

(assert (=> d!1574452 m!5907106))

(declare-fun m!5907108 () Bool)

(assert (=> b!4899413 m!5907108))

(assert (=> b!4899413 m!5906172))

(declare-fun m!5907110 () Bool)

(assert (=> b!4899413 m!5907110))

(assert (=> b!4899413 m!5906174))

(declare-fun m!5907112 () Bool)

(assert (=> b!4899413 m!5907112))

(assert (=> b!4899412 m!5906174))

(declare-fun m!5907114 () Bool)

(assert (=> b!4899412 m!5907114))

(assert (=> b!4898791 d!1574452))

(declare-fun b!4899415 () Bool)

(declare-fun e!3062593 () List!56552)

(assert (=> b!4899415 (= e!3062593 Nil!56428)))

(declare-fun d!1574454 () Bool)

(declare-fun c!832724 () Bool)

(assert (=> d!1574454 (= c!832724 (is-Empty!14749 (left!41002 (c!832544 (_2!33555 lt!2008470)))))))

(assert (=> d!1574454 (= (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008470)))) e!3062593)))

(declare-fun b!4899416 () Bool)

(declare-fun e!3062594 () List!56552)

(assert (=> b!4899416 (= e!3062593 e!3062594)))

(declare-fun c!832725 () Bool)

(assert (=> b!4899416 (= c!832725 (is-Leaf!24557 (left!41002 (c!832544 (_2!33555 lt!2008470)))))))

(declare-fun b!4899418 () Bool)

(assert (=> b!4899418 (= e!3062594 (++!12250 (list!17747 (left!41002 (left!41002 (c!832544 (_2!33555 lt!2008470))))) (list!17747 (right!41332 (left!41002 (c!832544 (_2!33555 lt!2008470)))))))))

(declare-fun b!4899417 () Bool)

(assert (=> b!4899417 (= e!3062594 (list!17749 (xs!18065 (left!41002 (c!832544 (_2!33555 lt!2008470))))))))

(assert (= (and d!1574454 c!832724) b!4899415))

(assert (= (and d!1574454 (not c!832724)) b!4899416))

(assert (= (and b!4899416 c!832725) b!4899417))

(assert (= (and b!4899416 (not c!832725)) b!4899418))

(declare-fun m!5907116 () Bool)

(assert (=> b!4899418 m!5907116))

(declare-fun m!5907118 () Bool)

(assert (=> b!4899418 m!5907118))

(assert (=> b!4899418 m!5907116))

(assert (=> b!4899418 m!5907118))

(declare-fun m!5907120 () Bool)

(assert (=> b!4899418 m!5907120))

(declare-fun m!5907122 () Bool)

(assert (=> b!4899417 m!5907122))

(assert (=> b!4898791 d!1574454))

(declare-fun b!4899419 () Bool)

(declare-fun e!3062595 () List!56552)

(assert (=> b!4899419 (= e!3062595 Nil!56428)))

(declare-fun d!1574456 () Bool)

(declare-fun c!832726 () Bool)

(assert (=> d!1574456 (= c!832726 (is-Empty!14749 (right!41332 (c!832544 (_2!33555 lt!2008470)))))))

(assert (=> d!1574456 (= (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008470)))) e!3062595)))

(declare-fun b!4899420 () Bool)

(declare-fun e!3062596 () List!56552)

(assert (=> b!4899420 (= e!3062595 e!3062596)))

(declare-fun c!832727 () Bool)

(assert (=> b!4899420 (= c!832727 (is-Leaf!24557 (right!41332 (c!832544 (_2!33555 lt!2008470)))))))

(declare-fun b!4899422 () Bool)

(assert (=> b!4899422 (= e!3062596 (++!12250 (list!17747 (left!41002 (right!41332 (c!832544 (_2!33555 lt!2008470))))) (list!17747 (right!41332 (right!41332 (c!832544 (_2!33555 lt!2008470)))))))))

(declare-fun b!4899421 () Bool)

(assert (=> b!4899421 (= e!3062596 (list!17749 (xs!18065 (right!41332 (c!832544 (_2!33555 lt!2008470))))))))

(assert (= (and d!1574456 c!832726) b!4899419))

(assert (= (and d!1574456 (not c!832726)) b!4899420))

(assert (= (and b!4899420 c!832727) b!4899421))

(assert (= (and b!4899420 (not c!832727)) b!4899422))

(declare-fun m!5907124 () Bool)

(assert (=> b!4899422 m!5907124))

(declare-fun m!5907126 () Bool)

(assert (=> b!4899422 m!5907126))

(assert (=> b!4899422 m!5907124))

(assert (=> b!4899422 m!5907126))

(declare-fun m!5907128 () Bool)

(assert (=> b!4899422 m!5907128))

(declare-fun m!5907130 () Bool)

(assert (=> b!4899421 m!5907130))

(assert (=> b!4898791 d!1574456))

(declare-fun d!1574458 () Bool)

(declare-fun lt!2009149 () Int)

(assert (=> d!1574458 (>= lt!2009149 0)))

(declare-fun e!3062597 () Int)

(assert (=> d!1574458 (= lt!2009149 e!3062597)))

(declare-fun c!832728 () Bool)

(assert (=> d!1574458 (= c!832728 (is-Nil!56428 lt!2008612))))

(assert (=> d!1574458 (= (size!37169 lt!2008612) lt!2009149)))

(declare-fun b!4899423 () Bool)

(assert (=> b!4899423 (= e!3062597 0)))

(declare-fun b!4899424 () Bool)

(assert (=> b!4899424 (= e!3062597 (+ 1 (size!37169 (t!366238 lt!2008612))))))

(assert (= (and d!1574458 c!832728) b!4899423))

(assert (= (and d!1574458 (not c!832728)) b!4899424))

(declare-fun m!5907132 () Bool)

(assert (=> b!4899424 m!5907132))

(assert (=> b!4898903 d!1574458))

(declare-fun d!1574460 () Bool)

(declare-fun lt!2009150 () Int)

(assert (=> d!1574460 (>= lt!2009150 0)))

(declare-fun e!3062598 () Int)

(assert (=> d!1574460 (= lt!2009150 e!3062598)))

(declare-fun c!832729 () Bool)

(assert (=> d!1574460 (= c!832729 (is-Nil!56428 lt!2008607))))

(assert (=> d!1574460 (= (size!37169 lt!2008607) lt!2009150)))

(declare-fun b!4899425 () Bool)

(assert (=> b!4899425 (= e!3062598 0)))

(declare-fun b!4899426 () Bool)

(assert (=> b!4899426 (= e!3062598 (+ 1 (size!37169 (t!366238 lt!2008607))))))

(assert (= (and d!1574460 c!832729) b!4899425))

(assert (= (and d!1574460 (not c!832729)) b!4899426))

(declare-fun m!5907134 () Bool)

(assert (=> b!4899426 m!5907134))

(assert (=> b!4898903 d!1574460))

(assert (=> b!4898661 d!1574446))

(assert (=> b!4898661 d!1574448))

(assert (=> b!4898661 d!1574128))

(assert (=> b!4898661 d!1574154))

(declare-fun d!1574462 () Bool)

(assert (=> d!1574462 (= (list!17745 lt!2008849) (list!17747 (c!832544 lt!2008849)))))

(declare-fun bs!1176588 () Bool)

(assert (= bs!1176588 d!1574462))

(declare-fun m!5907136 () Bool)

(assert (=> bs!1176588 m!5907136))

(assert (=> d!1574172 d!1574462))

(declare-fun d!1574464 () Bool)

(declare-fun lt!2009151 () Int)

(assert (=> d!1574464 (>= lt!2009151 0)))

(declare-fun e!3062599 () Int)

(assert (=> d!1574464 (= lt!2009151 e!3062599)))

(declare-fun c!832730 () Bool)

(assert (=> d!1574464 (= c!832730 (is-Nil!56428 (t!366238 lt!2008472)))))

(assert (=> d!1574464 (= (size!37169 (t!366238 lt!2008472)) lt!2009151)))

(declare-fun b!4899427 () Bool)

(assert (=> b!4899427 (= e!3062599 0)))

(declare-fun b!4899428 () Bool)

(assert (=> b!4899428 (= e!3062599 (+ 1 (size!37169 (t!366238 (t!366238 lt!2008472)))))))

(assert (= (and d!1574464 c!832730) b!4899427))

(assert (= (and d!1574464 (not c!832730)) b!4899428))

(declare-fun m!5907138 () Bool)

(assert (=> b!4899428 m!5907138))

(assert (=> b!4898766 d!1574464))

(declare-fun b!4899429 () Bool)

(declare-fun e!3062602 () Bool)

(assert (=> b!4899429 (= e!3062602 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(declare-fun b!4899430 () Bool)

(declare-fun e!3062603 () Bool)

(declare-fun lt!2009155 () Option!14039)

(assert (=> b!4899430 (= e!3062603 (= (size!37167 (_1!33556 (get!19496 lt!2009155))) (size!37169 (originalCharacters!8494 (_1!33556 (get!19496 lt!2009155))))))))

(declare-fun b!4899431 () Bool)

(declare-fun e!3062600 () Bool)

(assert (=> b!4899431 (= e!3062600 e!3062603)))

(declare-fun res!2092815 () Bool)

(assert (=> b!4899431 (=> (not res!2092815) (not e!3062603))))

(assert (=> b!4899431 (= res!2092815 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009155))))))))

(declare-fun b!4899432 () Bool)

(declare-fun res!2092814 () Bool)

(assert (=> b!4899432 (=> (not res!2092814) (not e!3062603))))

(assert (=> b!4899432 (= res!2092814 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009155)))) (_2!33556 (get!19496 lt!2009155))) lt!2008472))))

(declare-fun b!4899433 () Bool)

(declare-fun e!3062601 () Option!14039)

(assert (=> b!4899433 (= e!3062601 None!14038)))

(declare-fun b!4899434 () Bool)

(declare-fun res!2092812 () Bool)

(assert (=> b!4899434 (=> (not res!2092812) (not e!3062603))))

(assert (=> b!4899434 (= res!2092812 (< (size!37169 (_2!33556 (get!19496 lt!2009155))) (size!37169 lt!2008472)))))

(declare-fun b!4899435 () Bool)

(declare-fun lt!2009153 () tuple2!60512)

(assert (=> b!4899435 (= e!3062601 (Some!14038 (tuple2!60507 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009153))) (h!62878 (t!366240 rulesArg!165)) (size!37170 (seqFromList!5943 (_1!33559 lt!2009153))) (_1!33559 lt!2009153)) (_2!33559 lt!2009153))))))

(declare-fun lt!2009152 () Unit!146503)

(assert (=> b!4899435 (= lt!2009152 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 (t!366240 rulesArg!165))) lt!2008472))))

(declare-fun res!2092817 () Bool)

(assert (=> b!4899435 (= res!2092817 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(assert (=> b!4899435 (=> res!2092817 e!3062602)))

(assert (=> b!4899435 e!3062602))

(declare-fun lt!2009154 () Unit!146503)

(assert (=> b!4899435 (= lt!2009154 lt!2009152)))

(declare-fun lt!2009156 () Unit!146503)

(assert (=> b!4899435 (= lt!2009156 (lemmaSemiInverse!2571 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009153))))))

(declare-fun b!4899436 () Bool)

(declare-fun res!2092818 () Bool)

(assert (=> b!4899436 (=> (not res!2092818) (not e!3062603))))

(assert (=> b!4899436 (= res!2092818 (= (rule!11389 (_1!33556 (get!19496 lt!2009155))) (h!62878 (t!366240 rulesArg!165))))))

(declare-fun b!4899437 () Bool)

(declare-fun res!2092813 () Bool)

(assert (=> b!4899437 (=> (not res!2092813) (not e!3062603))))

(assert (=> b!4899437 (= res!2092813 (= (value!262310 (_1!33556 (get!19496 lt!2009155))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2009155)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2009155)))))))))

(declare-fun d!1574466 () Bool)

(assert (=> d!1574466 e!3062600))

(declare-fun res!2092816 () Bool)

(assert (=> d!1574466 (=> res!2092816 e!3062600)))

(assert (=> d!1574466 (= res!2092816 (isEmpty!30303 lt!2009155))))

(assert (=> d!1574466 (= lt!2009155 e!3062601)))

(declare-fun c!832731 () Bool)

(assert (=> d!1574466 (= c!832731 (isEmpty!30306 (_1!33559 lt!2009153)))))

(assert (=> d!1574466 (= lt!2009153 (findLongestMatch!1654 (regex!8181 (h!62878 (t!366240 rulesArg!165))) lt!2008472))))

(assert (=> d!1574466 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165)))))

(assert (=> d!1574466 (= (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) lt!2008472) lt!2009155)))

(assert (= (and d!1574466 c!832731) b!4899433))

(assert (= (and d!1574466 (not c!832731)) b!4899435))

(assert (= (and b!4899435 (not res!2092817)) b!4899429))

(assert (= (and d!1574466 (not res!2092816)) b!4899431))

(assert (= (and b!4899431 res!2092815) b!4899432))

(assert (= (and b!4899432 res!2092814) b!4899434))

(assert (= (and b!4899434 res!2092812) b!4899436))

(assert (= (and b!4899436 res!2092818) b!4899437))

(assert (= (and b!4899437 res!2092813) b!4899430))

(assert (=> b!4899429 m!5905738))

(assert (=> b!4899429 m!5905630))

(assert (=> b!4899429 m!5905738))

(assert (=> b!4899429 m!5905630))

(declare-fun m!5907140 () Bool)

(assert (=> b!4899429 m!5907140))

(declare-fun m!5907142 () Bool)

(assert (=> b!4899429 m!5907142))

(declare-fun m!5907144 () Bool)

(assert (=> b!4899434 m!5907144))

(declare-fun m!5907146 () Bool)

(assert (=> b!4899434 m!5907146))

(assert (=> b!4899434 m!5905630))

(assert (=> b!4899432 m!5907144))

(declare-fun m!5907148 () Bool)

(assert (=> b!4899432 m!5907148))

(assert (=> b!4899432 m!5907148))

(declare-fun m!5907150 () Bool)

(assert (=> b!4899432 m!5907150))

(assert (=> b!4899432 m!5907150))

(declare-fun m!5907152 () Bool)

(assert (=> b!4899432 m!5907152))

(declare-fun m!5907154 () Bool)

(assert (=> d!1574466 m!5907154))

(declare-fun m!5907156 () Bool)

(assert (=> d!1574466 m!5907156))

(declare-fun m!5907158 () Bool)

(assert (=> d!1574466 m!5907158))

(assert (=> d!1574466 m!5906282))

(assert (=> b!4899437 m!5907144))

(declare-fun m!5907160 () Bool)

(assert (=> b!4899437 m!5907160))

(assert (=> b!4899437 m!5907160))

(declare-fun m!5907162 () Bool)

(assert (=> b!4899437 m!5907162))

(assert (=> b!4899431 m!5907144))

(assert (=> b!4899431 m!5907148))

(assert (=> b!4899431 m!5907148))

(assert (=> b!4899431 m!5907150))

(assert (=> b!4899431 m!5907150))

(declare-fun m!5907164 () Bool)

(assert (=> b!4899431 m!5907164))

(declare-fun m!5907166 () Bool)

(assert (=> b!4899435 m!5907166))

(declare-fun m!5907168 () Bool)

(assert (=> b!4899435 m!5907168))

(assert (=> b!4899435 m!5905738))

(declare-fun m!5907170 () Bool)

(assert (=> b!4899435 m!5907170))

(declare-fun m!5907172 () Bool)

(assert (=> b!4899435 m!5907172))

(assert (=> b!4899435 m!5907166))

(assert (=> b!4899435 m!5907166))

(declare-fun m!5907174 () Bool)

(assert (=> b!4899435 m!5907174))

(assert (=> b!4899435 m!5905630))

(assert (=> b!4899435 m!5907166))

(declare-fun m!5907176 () Bool)

(assert (=> b!4899435 m!5907176))

(assert (=> b!4899435 m!5905738))

(assert (=> b!4899435 m!5905630))

(assert (=> b!4899435 m!5907140))

(assert (=> b!4899430 m!5907144))

(declare-fun m!5907178 () Bool)

(assert (=> b!4899430 m!5907178))

(assert (=> b!4899436 m!5907144))

(assert (=> bm!339848 d!1574466))

(declare-fun d!1574468 () Bool)

(declare-fun c!832732 () Bool)

(assert (=> d!1574468 (= c!832732 (is-Node!14749 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))))

(declare-fun e!3062604 () Bool)

(assert (=> d!1574468 (= (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))) e!3062604)))

(declare-fun b!4899438 () Bool)

(assert (=> b!4899438 (= e!3062604 (inv!72740 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))))

(declare-fun b!4899439 () Bool)

(declare-fun e!3062605 () Bool)

(assert (=> b!4899439 (= e!3062604 e!3062605)))

(declare-fun res!2092819 () Bool)

(assert (=> b!4899439 (= res!2092819 (not (is-Leaf!24557 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))))))

(assert (=> b!4899439 (=> res!2092819 e!3062605)))

(declare-fun b!4899440 () Bool)

(assert (=> b!4899440 (= e!3062605 (inv!72741 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))))

(assert (= (and d!1574468 c!832732) b!4899438))

(assert (= (and d!1574468 (not c!832732)) b!4899439))

(assert (= (and b!4899439 (not res!2092819)) b!4899440))

(declare-fun m!5907180 () Bool)

(assert (=> b!4899438 m!5907180))

(declare-fun m!5907182 () Bool)

(assert (=> b!4899440 m!5907182))

(assert (=> b!4899000 d!1574468))

(declare-fun d!1574470 () Bool)

(declare-fun lt!2009157 () Int)

(assert (=> d!1574470 (>= lt!2009157 0)))

(declare-fun e!3062606 () Int)

(assert (=> d!1574470 (= lt!2009157 e!3062606)))

(declare-fun c!832733 () Bool)

(assert (=> d!1574470 (= c!832733 (is-Nil!56428 (tail!9608 lt!2008472)))))

(assert (=> d!1574470 (= (size!37169 (tail!9608 lt!2008472)) lt!2009157)))

(declare-fun b!4899441 () Bool)

(assert (=> b!4899441 (= e!3062606 0)))

(declare-fun b!4899442 () Bool)

(assert (=> b!4899442 (= e!3062606 (+ 1 (size!37169 (t!366238 (tail!9608 lt!2008472)))))))

(assert (= (and d!1574470 c!832733) b!4899441))

(assert (= (and d!1574470 (not c!832733)) b!4899442))

(declare-fun m!5907184 () Bool)

(assert (=> b!4899442 m!5907184))

(assert (=> b!4898679 d!1574470))

(declare-fun d!1574472 () Bool)

(assert (=> d!1574472 (= (isDefined!11053 lt!2008722) (not (isEmpty!30304 lt!2008722)))))

(declare-fun bs!1176589 () Bool)

(assert (= bs!1176589 d!1574472))

(declare-fun m!5907186 () Bool)

(assert (=> bs!1176589 m!5907186))

(assert (=> b!4898684 d!1574472))

(declare-fun d!1574474 () Bool)

(declare-fun e!3062607 () Bool)

(assert (=> d!1574474 e!3062607))

(declare-fun res!2092820 () Bool)

(assert (=> d!1574474 (=> (not res!2092820) (not e!3062607))))

(declare-fun lt!2009158 () List!56552)

(assert (=> d!1574474 (= res!2092820 (= (content!10031 lt!2009158) (set.union (content!10031 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))) (content!10031 (_2!33556 (get!19496 lt!2008705))))))))

(declare-fun e!3062608 () List!56552)

(assert (=> d!1574474 (= lt!2009158 e!3062608)))

(declare-fun c!832734 () Bool)

(assert (=> d!1574474 (= c!832734 (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))))))

(assert (=> d!1574474 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705)))) (_2!33556 (get!19496 lt!2008705))) lt!2009158)))

(declare-fun b!4899446 () Bool)

(assert (=> b!4899446 (= e!3062607 (or (not (= (_2!33556 (get!19496 lt!2008705)) Nil!56428)) (= lt!2009158 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705)))))))))

(declare-fun b!4899443 () Bool)

(assert (=> b!4899443 (= e!3062608 (_2!33556 (get!19496 lt!2008705)))))

(declare-fun b!4899445 () Bool)

(declare-fun res!2092821 () Bool)

(assert (=> b!4899445 (=> (not res!2092821) (not e!3062607))))

(assert (=> b!4899445 (= res!2092821 (= (size!37169 lt!2009158) (+ (size!37169 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))) (size!37169 (_2!33556 (get!19496 lt!2008705))))))))

(declare-fun b!4899444 () Bool)

(assert (=> b!4899444 (= e!3062608 (Cons!56428 (h!62876 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))) (++!12250 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))) (_2!33556 (get!19496 lt!2008705)))))))

(assert (= (and d!1574474 c!832734) b!4899443))

(assert (= (and d!1574474 (not c!832734)) b!4899444))

(assert (= (and d!1574474 res!2092820) b!4899445))

(assert (= (and b!4899445 res!2092821) b!4899446))

(declare-fun m!5907188 () Bool)

(assert (=> d!1574474 m!5907188))

(assert (=> d!1574474 m!5905912))

(declare-fun m!5907190 () Bool)

(assert (=> d!1574474 m!5907190))

(declare-fun m!5907192 () Bool)

(assert (=> d!1574474 m!5907192))

(declare-fun m!5907194 () Bool)

(assert (=> b!4899445 m!5907194))

(assert (=> b!4899445 m!5905912))

(declare-fun m!5907196 () Bool)

(assert (=> b!4899445 m!5907196))

(assert (=> b!4899445 m!5905908))

(declare-fun m!5907198 () Bool)

(assert (=> b!4899444 m!5907198))

(assert (=> b!4898655 d!1574474))

(declare-fun d!1574476 () Bool)

(assert (=> d!1574476 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705)))) (list!17747 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))))))

(declare-fun bs!1176590 () Bool)

(assert (= bs!1176590 d!1574476))

(declare-fun m!5907200 () Bool)

(assert (=> bs!1176590 m!5907200))

(assert (=> b!4898655 d!1574476))

(declare-fun d!1574478 () Bool)

(declare-fun lt!2009159 () BalanceConc!28928)

(assert (=> d!1574478 (= (list!17745 lt!2009159) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705))))))

(assert (=> d!1574478 (= lt!2009159 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705))))) (value!262310 (_1!33556 (get!19496 lt!2008705)))))))

(assert (=> d!1574478 (= (charsOf!5381 (_1!33556 (get!19496 lt!2008705))) lt!2009159)))

(declare-fun b_lambda!194953 () Bool)

(assert (=> (not b_lambda!194953) (not d!1574478)))

(declare-fun tb!259535 () Bool)

(declare-fun t!366334 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366334) tb!259535))

(declare-fun b!4899447 () Bool)

(declare-fun e!3062609 () Bool)

(declare-fun tp!1378399 () Bool)

(assert (=> b!4899447 (= e!3062609 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705))))) (value!262310 (_1!33556 (get!19496 lt!2008705)))))) tp!1378399))))

(declare-fun result!323194 () Bool)

(assert (=> tb!259535 (= result!323194 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705))))) (value!262310 (_1!33556 (get!19496 lt!2008705))))) e!3062609))))

(assert (= tb!259535 b!4899447))

(declare-fun m!5907202 () Bool)

(assert (=> b!4899447 m!5907202))

(declare-fun m!5907204 () Bool)

(assert (=> tb!259535 m!5907204))

(assert (=> d!1574478 t!366334))

(declare-fun b_and!345731 () Bool)

(assert (= b_and!345725 (and (=> t!366334 result!323194) b_and!345731)))

(declare-fun t!366336 () Bool)

(declare-fun tb!259537 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366336) tb!259537))

(declare-fun result!323196 () Bool)

(assert (= result!323196 result!323194))

(assert (=> d!1574478 t!366336))

(declare-fun b_and!345733 () Bool)

(assert (= b_and!345727 (and (=> t!366336 result!323196) b_and!345733)))

(declare-fun t!366338 () Bool)

(declare-fun tb!259539 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366338) tb!259539))

(declare-fun result!323198 () Bool)

(assert (= result!323198 result!323194))

(assert (=> d!1574478 t!366338))

(declare-fun b_and!345735 () Bool)

(assert (= b_and!345729 (and (=> t!366338 result!323198) b_and!345735)))

(declare-fun m!5907206 () Bool)

(assert (=> d!1574478 m!5907206))

(declare-fun m!5907208 () Bool)

(assert (=> d!1574478 m!5907208))

(assert (=> b!4898655 d!1574478))

(declare-fun d!1574480 () Bool)

(assert (=> d!1574480 (= (get!19496 lt!2008705) (v!49998 lt!2008705))))

(assert (=> b!4898655 d!1574480))

(declare-fun d!1574482 () Bool)

(assert (=> d!1574482 (= (get!19497 lt!2008885) (v!49999 lt!2008885))))

(assert (=> b!4898936 d!1574482))

(declare-fun b!4899448 () Bool)

(declare-fun e!3062612 () Bool)

(assert (=> b!4899448 (= e!3062612 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(declare-fun b!4899449 () Bool)

(declare-fun e!3062613 () Bool)

(declare-fun lt!2009163 () Option!14039)

(assert (=> b!4899449 (= e!3062613 (= (size!37167 (_1!33556 (get!19496 lt!2009163))) (size!37169 (originalCharacters!8494 (_1!33556 (get!19496 lt!2009163))))))))

(declare-fun b!4899450 () Bool)

(declare-fun e!3062610 () Bool)

(assert (=> b!4899450 (= e!3062610 e!3062613)))

(declare-fun res!2092825 () Bool)

(assert (=> b!4899450 (=> (not res!2092825) (not e!3062613))))

(assert (=> b!4899450 (= res!2092825 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009163))))))))

(declare-fun b!4899451 () Bool)

(declare-fun res!2092824 () Bool)

(assert (=> b!4899451 (=> (not res!2092824) (not e!3062613))))

(assert (=> b!4899451 (= res!2092824 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009163)))) (_2!33556 (get!19496 lt!2009163))) (list!17745 input!1236)))))

(declare-fun b!4899452 () Bool)

(declare-fun e!3062611 () Option!14039)

(assert (=> b!4899452 (= e!3062611 None!14038)))

(declare-fun b!4899453 () Bool)

(declare-fun res!2092822 () Bool)

(assert (=> b!4899453 (=> (not res!2092822) (not e!3062613))))

(assert (=> b!4899453 (= res!2092822 (< (size!37169 (_2!33556 (get!19496 lt!2009163))) (size!37169 (list!17745 input!1236))))))

(declare-fun b!4899454 () Bool)

(declare-fun lt!2009161 () tuple2!60512)

(assert (=> b!4899454 (= e!3062611 (Some!14038 (tuple2!60507 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009161))) (h!62878 (t!366240 rulesArg!165)) (size!37170 (seqFromList!5943 (_1!33559 lt!2009161))) (_1!33559 lt!2009161)) (_2!33559 lt!2009161))))))

(declare-fun lt!2009160 () Unit!146503)

(assert (=> b!4899454 (= lt!2009160 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(declare-fun res!2092827 () Bool)

(assert (=> b!4899454 (= res!2092827 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(assert (=> b!4899454 (=> res!2092827 e!3062612)))

(assert (=> b!4899454 e!3062612))

(declare-fun lt!2009162 () Unit!146503)

(assert (=> b!4899454 (= lt!2009162 lt!2009160)))

(declare-fun lt!2009164 () Unit!146503)

(assert (=> b!4899454 (= lt!2009164 (lemmaSemiInverse!2571 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009161))))))

(declare-fun b!4899455 () Bool)

(declare-fun res!2092828 () Bool)

(assert (=> b!4899455 (=> (not res!2092828) (not e!3062613))))

(assert (=> b!4899455 (= res!2092828 (= (rule!11389 (_1!33556 (get!19496 lt!2009163))) (h!62878 (t!366240 rulesArg!165))))))

(declare-fun b!4899456 () Bool)

(declare-fun res!2092823 () Bool)

(assert (=> b!4899456 (=> (not res!2092823) (not e!3062613))))

(assert (=> b!4899456 (= res!2092823 (= (value!262310 (_1!33556 (get!19496 lt!2009163))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2009163)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2009163)))))))))

(declare-fun d!1574484 () Bool)

(assert (=> d!1574484 e!3062610))

(declare-fun res!2092826 () Bool)

(assert (=> d!1574484 (=> res!2092826 e!3062610)))

(assert (=> d!1574484 (= res!2092826 (isEmpty!30303 lt!2009163))))

(assert (=> d!1574484 (= lt!2009163 e!3062611)))

(declare-fun c!832735 () Bool)

(assert (=> d!1574484 (= c!832735 (isEmpty!30306 (_1!33559 lt!2009161)))))

(assert (=> d!1574484 (= lt!2009161 (findLongestMatch!1654 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(assert (=> d!1574484 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165)))))

(assert (=> d!1574484 (= (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236)) lt!2009163)))

(assert (= (and d!1574484 c!832735) b!4899452))

(assert (= (and d!1574484 (not c!832735)) b!4899454))

(assert (= (and b!4899454 (not res!2092827)) b!4899448))

(assert (= (and d!1574484 (not res!2092826)) b!4899450))

(assert (= (and b!4899450 res!2092825) b!4899451))

(assert (= (and b!4899451 res!2092824) b!4899453))

(assert (= (and b!4899453 res!2092822) b!4899455))

(assert (= (and b!4899455 res!2092828) b!4899456))

(assert (= (and b!4899456 res!2092823) b!4899449))

(assert (=> b!4899448 m!5905738))

(assert (=> b!4899448 m!5905562))

(assert (=> b!4899448 m!5905900))

(assert (=> b!4899448 m!5905738))

(assert (=> b!4899448 m!5905562))

(assert (=> b!4899448 m!5905562))

(assert (=> b!4899448 m!5905900))

(declare-fun m!5907210 () Bool)

(assert (=> b!4899448 m!5907210))

(declare-fun m!5907212 () Bool)

(assert (=> b!4899448 m!5907212))

(declare-fun m!5907214 () Bool)

(assert (=> b!4899453 m!5907214))

(declare-fun m!5907216 () Bool)

(assert (=> b!4899453 m!5907216))

(assert (=> b!4899453 m!5905562))

(assert (=> b!4899453 m!5905900))

(assert (=> b!4899451 m!5907214))

(declare-fun m!5907218 () Bool)

(assert (=> b!4899451 m!5907218))

(assert (=> b!4899451 m!5907218))

(declare-fun m!5907220 () Bool)

(assert (=> b!4899451 m!5907220))

(assert (=> b!4899451 m!5907220))

(declare-fun m!5907222 () Bool)

(assert (=> b!4899451 m!5907222))

(declare-fun m!5907224 () Bool)

(assert (=> d!1574484 m!5907224))

(declare-fun m!5907226 () Bool)

(assert (=> d!1574484 m!5907226))

(assert (=> d!1574484 m!5905562))

(declare-fun m!5907228 () Bool)

(assert (=> d!1574484 m!5907228))

(assert (=> d!1574484 m!5906282))

(assert (=> b!4899456 m!5907214))

(declare-fun m!5907230 () Bool)

(assert (=> b!4899456 m!5907230))

(assert (=> b!4899456 m!5907230))

(declare-fun m!5907232 () Bool)

(assert (=> b!4899456 m!5907232))

(assert (=> b!4899450 m!5907214))

(assert (=> b!4899450 m!5907218))

(assert (=> b!4899450 m!5907218))

(assert (=> b!4899450 m!5907220))

(assert (=> b!4899450 m!5907220))

(declare-fun m!5907234 () Bool)

(assert (=> b!4899450 m!5907234))

(declare-fun m!5907236 () Bool)

(assert (=> b!4899454 m!5907236))

(declare-fun m!5907238 () Bool)

(assert (=> b!4899454 m!5907238))

(assert (=> b!4899454 m!5905738))

(assert (=> b!4899454 m!5905562))

(declare-fun m!5907240 () Bool)

(assert (=> b!4899454 m!5907240))

(declare-fun m!5907242 () Bool)

(assert (=> b!4899454 m!5907242))

(assert (=> b!4899454 m!5907236))

(assert (=> b!4899454 m!5907236))

(declare-fun m!5907244 () Bool)

(assert (=> b!4899454 m!5907244))

(assert (=> b!4899454 m!5905562))

(assert (=> b!4899454 m!5905900))

(assert (=> b!4899454 m!5907236))

(declare-fun m!5907246 () Bool)

(assert (=> b!4899454 m!5907246))

(assert (=> b!4899454 m!5905738))

(assert (=> b!4899454 m!5905562))

(assert (=> b!4899454 m!5905562))

(assert (=> b!4899454 m!5905900))

(assert (=> b!4899454 m!5907210))

(assert (=> b!4899449 m!5907214))

(declare-fun m!5907248 () Bool)

(assert (=> b!4899449 m!5907248))

(assert (=> b!4899455 m!5907214))

(assert (=> b!4898936 d!1574484))

(declare-fun d!1574486 () Bool)

(assert (=> d!1574486 (= (list!17745 (_2!33555 (get!19497 lt!2008885))) (list!17747 (c!832544 (_2!33555 (get!19497 lt!2008885)))))))

(declare-fun bs!1176591 () Bool)

(assert (= bs!1176591 d!1574486))

(declare-fun m!5907250 () Bool)

(assert (=> bs!1176591 m!5907250))

(assert (=> b!4898936 d!1574486))

(assert (=> b!4898936 d!1574020))

(declare-fun d!1574488 () Bool)

(assert (=> d!1574488 (= (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236))) (v!49998 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236))))))

(assert (=> b!4898936 d!1574488))

(declare-fun d!1574490 () Bool)

(declare-fun lt!2009165 () Bool)

(assert (=> d!1574490 (= lt!2009165 (isEmpty!30306 (list!17747 (left!41002 (c!832544 input!1236)))))))

(assert (=> d!1574490 (= lt!2009165 (= (size!37173 (left!41002 (c!832544 input!1236))) 0))))

(assert (=> d!1574490 (= (isEmpty!30311 (left!41002 (c!832544 input!1236))) lt!2009165)))

(declare-fun bs!1176592 () Bool)

(assert (= bs!1176592 d!1574490))

(assert (=> bs!1176592 m!5906164))

(assert (=> bs!1176592 m!5906164))

(declare-fun m!5907252 () Bool)

(assert (=> bs!1176592 m!5907252))

(assert (=> bs!1176592 m!5906206))

(assert (=> b!4898932 d!1574490))

(declare-fun d!1574492 () Bool)

(assert (=> d!1574492 (= (isDefined!11052 lt!2008840) (not (isEmpty!30303 lt!2008840)))))

(declare-fun bs!1176593 () Bool)

(assert (= bs!1176593 d!1574492))

(assert (=> bs!1176593 m!5906160))

(assert (=> b!4898767 d!1574492))

(declare-fun d!1574494 () Bool)

(assert (=> d!1574494 (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))) (h!62876 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (=> b!4898893 d!1574494))

(declare-fun lt!2009166 () Option!14039)

(declare-fun d!1574496 () Bool)

(assert (=> d!1574496 (= lt!2009166 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) lt!2008472))))

(declare-fun e!3062614 () Option!14039)

(assert (=> d!1574496 (= lt!2009166 e!3062614)))

(declare-fun c!832736 () Bool)

(assert (=> d!1574496 (= c!832736 (and (is-Cons!56430 (t!366240 (t!366240 rulesArg!165))) (is-Nil!56430 (t!366240 (t!366240 (t!366240 rulesArg!165))))))))

(declare-fun lt!2009168 () Unit!146503)

(declare-fun lt!2009169 () Unit!146503)

(assert (=> d!1574496 (= lt!2009168 lt!2009169)))

(assert (=> d!1574496 (isPrefix!4901 lt!2008472 lt!2008472)))

(assert (=> d!1574496 (= lt!2009169 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(assert (=> d!1574496 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 rulesArg!165)))))

(assert (=> d!1574496 (= (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) lt!2008472) lt!2009166)))

(declare-fun bm!339895 () Bool)

(declare-fun call!339900 () Option!14039)

(assert (=> bm!339895 (= call!339900 (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) lt!2008472))))

(declare-fun b!4899457 () Bool)

(assert (=> b!4899457 (= e!3062614 call!339900)))

(declare-fun b!4899458 () Bool)

(declare-fun lt!2009170 () Option!14039)

(declare-fun lt!2009167 () Option!14039)

(assert (=> b!4899458 (= e!3062614 (ite (and (is-None!14038 lt!2009170) (is-None!14038 lt!2009167)) None!14038 (ite (is-None!14038 lt!2009167) lt!2009170 (ite (is-None!14038 lt!2009170) lt!2009167 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2009170))) (size!37167 (_1!33556 (v!49998 lt!2009167)))) lt!2009170 lt!2009167)))))))

(assert (=> b!4899458 (= lt!2009170 call!339900)))

(assert (=> b!4899458 (= lt!2009167 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) lt!2008472))))

(assert (= (and d!1574496 c!832736) b!4899457))

(assert (= (and d!1574496 (not c!832736)) b!4899458))

(assert (= (or b!4899457 b!4899458) bm!339895))

(assert (=> d!1574496 m!5906246))

(assert (=> d!1574496 m!5905558))

(assert (=> d!1574496 m!5905560))

(assert (=> d!1574496 m!5906008))

(declare-fun m!5907254 () Bool)

(assert (=> bm!339895 m!5907254))

(declare-fun m!5907256 () Bool)

(assert (=> b!4899458 m!5907256))

(assert (=> b!4898695 d!1574496))

(declare-fun d!1574498 () Bool)

(declare-fun c!832742 () Bool)

(assert (=> d!1574498 (= c!832742 (is-IntegerValue!25473 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))

(declare-fun e!3062623 () Bool)

(assert (=> d!1574498 (= (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))) e!3062623)))

(declare-fun b!4899469 () Bool)

(declare-fun e!3062621 () Bool)

(declare-fun inv!15 (TokenValue!8491) Bool)

(assert (=> b!4899469 (= e!3062621 (inv!15 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))

(declare-fun b!4899470 () Bool)

(declare-fun e!3062622 () Bool)

(declare-fun inv!17 (TokenValue!8491) Bool)

(assert (=> b!4899470 (= e!3062622 (inv!17 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))

(declare-fun b!4899471 () Bool)

(declare-fun inv!16 (TokenValue!8491) Bool)

(assert (=> b!4899471 (= e!3062623 (inv!16 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))

(declare-fun b!4899472 () Bool)

(assert (=> b!4899472 (= e!3062623 e!3062622)))

(declare-fun c!832741 () Bool)

(assert (=> b!4899472 (= c!832741 (is-IntegerValue!25474 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))

(declare-fun b!4899473 () Bool)

(declare-fun res!2092831 () Bool)

(assert (=> b!4899473 (=> res!2092831 e!3062621)))

(assert (=> b!4899473 (= res!2092831 (not (is-IntegerValue!25475 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))))

(assert (=> b!4899473 (= e!3062622 e!3062621)))

(assert (= (and d!1574498 c!832742) b!4899471))

(assert (= (and d!1574498 (not c!832742)) b!4899472))

(assert (= (and b!4899472 c!832741) b!4899470))

(assert (= (and b!4899472 (not c!832741)) b!4899473))

(assert (= (and b!4899473 (not res!2092831)) b!4899469))

(declare-fun m!5907258 () Bool)

(assert (=> b!4899469 m!5907258))

(declare-fun m!5907260 () Bool)

(assert (=> b!4899470 m!5907260))

(declare-fun m!5907262 () Bool)

(assert (=> b!4899471 m!5907262))

(assert (=> tb!259451 d!1574498))

(declare-fun call!339901 () Option!14039)

(declare-fun bm!339896 () Bool)

(assert (=> bm!339896 (= call!339901 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) lt!2008472))))

(declare-fun b!4899475 () Bool)

(declare-fun res!2092834 () Bool)

(declare-fun e!3062626 () Bool)

(assert (=> b!4899475 (=> (not res!2092834) (not e!3062626))))

(declare-fun lt!2009172 () Option!14039)

(assert (=> b!4899475 (= res!2092834 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009172)))) (_2!33556 (get!19496 lt!2009172))) lt!2008472))))

(declare-fun b!4899476 () Bool)

(assert (=> b!4899476 (= e!3062626 (contains!19444 (t!366240 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2009172)))))))

(declare-fun b!4899477 () Bool)

(declare-fun e!3062625 () Option!14039)

(declare-fun lt!2009174 () Option!14039)

(declare-fun lt!2009175 () Option!14039)

(assert (=> b!4899477 (= e!3062625 (ite (and (is-None!14038 lt!2009174) (is-None!14038 lt!2009175)) None!14038 (ite (is-None!14038 lt!2009175) lt!2009174 (ite (is-None!14038 lt!2009174) lt!2009175 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2009174))) (size!37167 (_1!33556 (v!49998 lt!2009175)))) lt!2009174 lt!2009175)))))))

(assert (=> b!4899477 (= lt!2009174 call!339901)))

(assert (=> b!4899477 (= lt!2009175 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) lt!2008472))))

(declare-fun b!4899478 () Bool)

(declare-fun res!2092838 () Bool)

(assert (=> b!4899478 (=> (not res!2092838) (not e!3062626))))

(assert (=> b!4899478 (= res!2092838 (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2009172)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009172))))))))

(declare-fun b!4899479 () Bool)

(declare-fun res!2092833 () Bool)

(assert (=> b!4899479 (=> (not res!2092833) (not e!3062626))))

(assert (=> b!4899479 (= res!2092833 (= (value!262310 (_1!33556 (get!19496 lt!2009172))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2009172)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2009172)))))))))

(declare-fun b!4899480 () Bool)

(assert (=> b!4899480 (= e!3062625 call!339901)))

(declare-fun d!1574500 () Bool)

(declare-fun e!3062624 () Bool)

(assert (=> d!1574500 e!3062624))

(declare-fun res!2092835 () Bool)

(assert (=> d!1574500 (=> res!2092835 e!3062624)))

(assert (=> d!1574500 (= res!2092835 (isEmpty!30303 lt!2009172))))

(assert (=> d!1574500 (= lt!2009172 e!3062625)))

(declare-fun c!832743 () Bool)

(assert (=> d!1574500 (= c!832743 (and (is-Cons!56430 (t!366240 (t!366240 rulesArg!165))) (is-Nil!56430 (t!366240 (t!366240 (t!366240 rulesArg!165))))))))

(declare-fun lt!2009171 () Unit!146503)

(declare-fun lt!2009173 () Unit!146503)

(assert (=> d!1574500 (= lt!2009171 lt!2009173)))

(assert (=> d!1574500 (isPrefix!4901 lt!2008472 lt!2008472)))

(assert (=> d!1574500 (= lt!2009173 (lemmaIsPrefixRefl!3298 lt!2008472 lt!2008472))))

(assert (=> d!1574500 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 rulesArg!165)))))

(assert (=> d!1574500 (= (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) lt!2008472) lt!2009172)))

(declare-fun b!4899474 () Bool)

(assert (=> b!4899474 (= e!3062624 e!3062626)))

(declare-fun res!2092837 () Bool)

(assert (=> b!4899474 (=> (not res!2092837) (not e!3062626))))

(assert (=> b!4899474 (= res!2092837 (isDefined!11052 lt!2009172))))

(declare-fun b!4899481 () Bool)

(declare-fun res!2092832 () Bool)

(assert (=> b!4899481 (=> (not res!2092832) (not e!3062626))))

(assert (=> b!4899481 (= res!2092832 (< (size!37169 (_2!33556 (get!19496 lt!2009172))) (size!37169 lt!2008472)))))

(declare-fun b!4899482 () Bool)

(declare-fun res!2092836 () Bool)

(assert (=> b!4899482 (=> (not res!2092836) (not e!3062626))))

(assert (=> b!4899482 (= res!2092836 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009172)))) (originalCharacters!8494 (_1!33556 (get!19496 lt!2009172)))))))

(assert (= (and d!1574500 c!832743) b!4899480))

(assert (= (and d!1574500 (not c!832743)) b!4899477))

(assert (= (or b!4899480 b!4899477) bm!339896))

(assert (= (and d!1574500 (not res!2092835)) b!4899474))

(assert (= (and b!4899474 res!2092837) b!4899482))

(assert (= (and b!4899482 res!2092836) b!4899481))

(assert (= (and b!4899481 res!2092832) b!4899475))

(assert (= (and b!4899475 res!2092834) b!4899479))

(assert (= (and b!4899479 res!2092833) b!4899478))

(assert (= (and b!4899478 res!2092838) b!4899476))

(declare-fun m!5907264 () Bool)

(assert (=> b!4899475 m!5907264))

(declare-fun m!5907266 () Bool)

(assert (=> b!4899475 m!5907266))

(assert (=> b!4899475 m!5907266))

(declare-fun m!5907268 () Bool)

(assert (=> b!4899475 m!5907268))

(assert (=> b!4899475 m!5907268))

(declare-fun m!5907270 () Bool)

(assert (=> b!4899475 m!5907270))

(assert (=> b!4899482 m!5907264))

(assert (=> b!4899482 m!5907266))

(assert (=> b!4899482 m!5907266))

(assert (=> b!4899482 m!5907268))

(assert (=> b!4899479 m!5907264))

(declare-fun m!5907272 () Bool)

(assert (=> b!4899479 m!5907272))

(assert (=> b!4899479 m!5907272))

(declare-fun m!5907274 () Bool)

(assert (=> b!4899479 m!5907274))

(assert (=> b!4899478 m!5907264))

(assert (=> b!4899478 m!5907266))

(assert (=> b!4899478 m!5907266))

(assert (=> b!4899478 m!5907268))

(assert (=> b!4899478 m!5907268))

(declare-fun m!5907276 () Bool)

(assert (=> b!4899478 m!5907276))

(assert (=> b!4899476 m!5907264))

(declare-fun m!5907278 () Bool)

(assert (=> b!4899476 m!5907278))

(declare-fun m!5907280 () Bool)

(assert (=> b!4899474 m!5907280))

(assert (=> b!4899481 m!5907264))

(declare-fun m!5907282 () Bool)

(assert (=> b!4899481 m!5907282))

(assert (=> b!4899481 m!5905630))

(declare-fun m!5907284 () Bool)

(assert (=> d!1574500 m!5907284))

(assert (=> d!1574500 m!5905558))

(assert (=> d!1574500 m!5905560))

(assert (=> d!1574500 m!5906008))

(declare-fun m!5907286 () Bool)

(assert (=> b!4899477 m!5907286))

(declare-fun m!5907288 () Bool)

(assert (=> bm!339896 m!5907288))

(assert (=> b!4898831 d!1574500))

(declare-fun d!1574502 () Bool)

(assert (=> d!1574502 (= (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (is-Nil!56428 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (=> b!4898955 d!1574502))

(declare-fun d!1574504 () Bool)

(assert (=> d!1574504 (= (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> b!4898955 d!1574504))

(declare-fun d!1574506 () Bool)

(assert (=> d!1574506 (= (max!0 (height!1962 (left!41002 (c!832544 input!1236))) (height!1962 (right!41332 (c!832544 input!1236)))) (ite (< (height!1962 (left!41002 (c!832544 input!1236))) (height!1962 (right!41332 (c!832544 input!1236)))) (height!1962 (right!41332 (c!832544 input!1236))) (height!1962 (left!41002 (c!832544 input!1236)))))))

(assert (=> b!4898820 d!1574506))

(declare-fun d!1574508 () Bool)

(assert (=> d!1574508 (= (height!1962 (left!41002 (c!832544 input!1236))) (ite (is-Empty!14749 (left!41002 (c!832544 input!1236))) 0 (ite (is-Leaf!24557 (left!41002 (c!832544 input!1236))) 1 (cheight!14960 (left!41002 (c!832544 input!1236))))))))

(assert (=> b!4898820 d!1574508))

(declare-fun d!1574510 () Bool)

(assert (=> d!1574510 (= (height!1962 (right!41332 (c!832544 input!1236))) (ite (is-Empty!14749 (right!41332 (c!832544 input!1236))) 0 (ite (is-Leaf!24557 (right!41332 (c!832544 input!1236))) 1 (cheight!14960 (right!41332 (c!832544 input!1236))))))))

(assert (=> b!4898820 d!1574510))

(declare-fun d!1574512 () Bool)

(assert (=> d!1574512 (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))) (list!17747 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))))

(declare-fun bs!1176594 () Bool)

(assert (= bs!1176594 d!1574512))

(declare-fun m!5907290 () Bool)

(assert (=> bs!1176594 m!5907290))

(assert (=> bs!1176550 d!1574512))

(assert (=> bs!1176550 d!1574420))

(assert (=> b!4898928 d!1574508))

(assert (=> b!4898928 d!1574510))

(assert (=> b!4898659 d!1574480))

(declare-fun d!1574514 () Bool)

(declare-fun c!832746 () Bool)

(assert (=> d!1574514 (= c!832746 (is-Nil!56428 lt!2008846))))

(declare-fun e!3062629 () (Set C!26710))

(assert (=> d!1574514 (= (content!10031 lt!2008846) e!3062629)))

(declare-fun b!4899487 () Bool)

(assert (=> b!4899487 (= e!3062629 (as set.empty (Set C!26710)))))

(declare-fun b!4899488 () Bool)

(assert (=> b!4899488 (= e!3062629 (set.union (set.insert (h!62876 lt!2008846) (as set.empty (Set C!26710))) (content!10031 (t!366238 lt!2008846))))))

(assert (= (and d!1574514 c!832746) b!4899487))

(assert (= (and d!1574514 (not c!832746)) b!4899488))

(declare-fun m!5907292 () Bool)

(assert (=> b!4899488 m!5907292))

(declare-fun m!5907294 () Bool)

(assert (=> b!4899488 m!5907294))

(assert (=> d!1574168 d!1574514))

(declare-fun d!1574516 () Bool)

(declare-fun c!832747 () Bool)

(assert (=> d!1574516 (= c!832747 (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun e!3062630 () (Set C!26710))

(assert (=> d!1574516 (= (content!10031 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) e!3062630)))

(declare-fun b!4899489 () Bool)

(assert (=> b!4899489 (= e!3062630 (as set.empty (Set C!26710)))))

(declare-fun b!4899490 () Bool)

(assert (=> b!4899490 (= e!3062630 (set.union (set.insert (h!62876 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (as set.empty (Set C!26710))) (content!10031 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(assert (= (and d!1574516 c!832747) b!4899489))

(assert (= (and d!1574516 (not c!832747)) b!4899490))

(declare-fun m!5907296 () Bool)

(assert (=> b!4899490 m!5907296))

(declare-fun m!5907298 () Bool)

(assert (=> b!4899490 m!5907298))

(assert (=> d!1574168 d!1574516))

(declare-fun d!1574518 () Bool)

(declare-fun c!832748 () Bool)

(assert (=> d!1574518 (= c!832748 (is-Nil!56428 (_2!33556 (get!19496 lt!2008523))))))

(declare-fun e!3062631 () (Set C!26710))

(assert (=> d!1574518 (= (content!10031 (_2!33556 (get!19496 lt!2008523))) e!3062631)))

(declare-fun b!4899491 () Bool)

(assert (=> b!4899491 (= e!3062631 (as set.empty (Set C!26710)))))

(declare-fun b!4899492 () Bool)

(assert (=> b!4899492 (= e!3062631 (set.union (set.insert (h!62876 (_2!33556 (get!19496 lt!2008523))) (as set.empty (Set C!26710))) (content!10031 (t!366238 (_2!33556 (get!19496 lt!2008523))))))))

(assert (= (and d!1574518 c!832748) b!4899491))

(assert (= (and d!1574518 (not c!832748)) b!4899492))

(declare-fun m!5907300 () Bool)

(assert (=> b!4899492 m!5907300))

(declare-fun m!5907302 () Bool)

(assert (=> b!4899492 m!5907302))

(assert (=> d!1574168 d!1574518))

(declare-fun d!1574520 () Bool)

(declare-fun lt!2009176 () Int)

(assert (=> d!1574520 (>= lt!2009176 0)))

(declare-fun e!3062632 () Int)

(assert (=> d!1574520 (= lt!2009176 e!3062632)))

(declare-fun c!832749 () Bool)

(assert (=> d!1574520 (= c!832749 (is-Nil!56428 (t!366238 (_2!33556 (get!19496 lt!2008523)))))))

(assert (=> d!1574520 (= (size!37169 (t!366238 (_2!33556 (get!19496 lt!2008523)))) lt!2009176)))

(declare-fun b!4899493 () Bool)

(assert (=> b!4899493 (= e!3062632 0)))

(declare-fun b!4899494 () Bool)

(assert (=> b!4899494 (= e!3062632 (+ 1 (size!37169 (t!366238 (t!366238 (_2!33556 (get!19496 lt!2008523)))))))))

(assert (= (and d!1574520 c!832749) b!4899493))

(assert (= (and d!1574520 (not c!832749)) b!4899494))

(declare-fun m!5907304 () Bool)

(assert (=> b!4899494 m!5907304))

(assert (=> b!4898764 d!1574520))

(declare-fun d!1574522 () Bool)

(declare-fun choose!35778 (Int) Bool)

(assert (=> d!1574522 (= (Forall2!1274 lambda!244173) (choose!35778 lambda!244173))))

(declare-fun bs!1176595 () Bool)

(assert (= bs!1176595 d!1574522))

(declare-fun m!5907306 () Bool)

(assert (=> bs!1176595 m!5907306))

(assert (=> d!1574088 d!1574522))

(declare-fun b!4899495 () Bool)

(declare-fun e!3062633 () List!56552)

(assert (=> b!4899495 (= e!3062633 Nil!56428)))

(declare-fun d!1574524 () Bool)

(declare-fun c!832750 () Bool)

(assert (=> d!1574524 (= c!832750 (is-Empty!14749 (c!832544 (_1!33560 lt!2008636))))))

(assert (=> d!1574524 (= (list!17747 (c!832544 (_1!33560 lt!2008636))) e!3062633)))

(declare-fun b!4899496 () Bool)

(declare-fun e!3062634 () List!56552)

(assert (=> b!4899496 (= e!3062633 e!3062634)))

(declare-fun c!832751 () Bool)

(assert (=> b!4899496 (= c!832751 (is-Leaf!24557 (c!832544 (_1!33560 lt!2008636))))))

(declare-fun b!4899498 () Bool)

(assert (=> b!4899498 (= e!3062634 (++!12250 (list!17747 (left!41002 (c!832544 (_1!33560 lt!2008636)))) (list!17747 (right!41332 (c!832544 (_1!33560 lt!2008636))))))))

(declare-fun b!4899497 () Bool)

(assert (=> b!4899497 (= e!3062634 (list!17749 (xs!18065 (c!832544 (_1!33560 lt!2008636)))))))

(assert (= (and d!1574524 c!832750) b!4899495))

(assert (= (and d!1574524 (not c!832750)) b!4899496))

(assert (= (and b!4899496 c!832751) b!4899497))

(assert (= (and b!4899496 (not c!832751)) b!4899498))

(declare-fun m!5907308 () Bool)

(assert (=> b!4899498 m!5907308))

(declare-fun m!5907310 () Bool)

(assert (=> b!4899498 m!5907310))

(assert (=> b!4899498 m!5907308))

(assert (=> b!4899498 m!5907310))

(declare-fun m!5907312 () Bool)

(assert (=> b!4899498 m!5907312))

(declare-fun m!5907314 () Bool)

(assert (=> b!4899497 m!5907314))

(assert (=> d!1574134 d!1574524))

(assert (=> d!1574208 d!1574212))

(declare-fun d!1574526 () Bool)

(assert (=> d!1574526 (isPrefix!4901 lt!2008607 lt!2008612)))

(assert (=> d!1574526 true))

(declare-fun _$45!2194 () Unit!146503)

(assert (=> d!1574526 (= (choose!35766 lt!2008607 lt!2008612) _$45!2194)))

(declare-fun bs!1176596 () Bool)

(assert (= bs!1176596 d!1574526))

(assert (=> bs!1176596 m!5905720))

(assert (=> d!1574208 d!1574526))

(declare-fun d!1574528 () Bool)

(assert (=> d!1574528 (= (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))) (isBalanced!4019 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))))

(declare-fun bs!1176597 () Bool)

(assert (= bs!1176597 d!1574528))

(declare-fun m!5907316 () Bool)

(assert (=> bs!1176597 m!5907316))

(assert (=> tb!259475 d!1574528))

(declare-fun d!1574530 () Bool)

(assert (=> d!1574530 (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))) (list!17747 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))))

(declare-fun bs!1176598 () Bool)

(assert (= bs!1176598 d!1574530))

(declare-fun m!5907318 () Bool)

(assert (=> bs!1176598 m!5907318))

(assert (=> bs!1176551 d!1574530))

(assert (=> bs!1176551 d!1574134))

(declare-fun d!1574532 () Bool)

(assert (=> d!1574532 (= (isEmpty!30303 lt!2008840) (not (is-Some!14038 lt!2008840)))))

(assert (=> d!1574158 d!1574532))

(declare-fun b!4899499 () Bool)

(declare-fun e!3062636 () Bool)

(declare-fun e!3062635 () Bool)

(assert (=> b!4899499 (= e!3062636 e!3062635)))

(declare-fun res!2092841 () Bool)

(assert (=> b!4899499 (=> (not res!2092841) (not e!3062635))))

(assert (=> b!4899499 (= res!2092841 (not (is-Nil!56428 (list!17745 input!1236))))))

(declare-fun d!1574534 () Bool)

(declare-fun e!3062637 () Bool)

(assert (=> d!1574534 e!3062637))

(declare-fun res!2092840 () Bool)

(assert (=> d!1574534 (=> res!2092840 e!3062637)))

(declare-fun lt!2009177 () Bool)

(assert (=> d!1574534 (= res!2092840 (not lt!2009177))))

(assert (=> d!1574534 (= lt!2009177 e!3062636)))

(declare-fun res!2092842 () Bool)

(assert (=> d!1574534 (=> res!2092842 e!3062636)))

(assert (=> d!1574534 (= res!2092842 (is-Nil!56428 (list!17745 input!1236)))))

(assert (=> d!1574534 (= (isPrefix!4901 (list!17745 input!1236) (list!17745 input!1236)) lt!2009177)))

(declare-fun b!4899500 () Bool)

(declare-fun res!2092839 () Bool)

(assert (=> b!4899500 (=> (not res!2092839) (not e!3062635))))

(assert (=> b!4899500 (= res!2092839 (= (head!10462 (list!17745 input!1236)) (head!10462 (list!17745 input!1236))))))

(declare-fun b!4899502 () Bool)

(assert (=> b!4899502 (= e!3062637 (>= (size!37169 (list!17745 input!1236)) (size!37169 (list!17745 input!1236))))))

(declare-fun b!4899501 () Bool)

(assert (=> b!4899501 (= e!3062635 (isPrefix!4901 (tail!9608 (list!17745 input!1236)) (tail!9608 (list!17745 input!1236))))))

(assert (= (and d!1574534 (not res!2092842)) b!4899499))

(assert (= (and b!4899499 res!2092841) b!4899500))

(assert (= (and b!4899500 res!2092839) b!4899501))

(assert (= (and d!1574534 (not res!2092840)) b!4899502))

(assert (=> b!4899500 m!5905562))

(declare-fun m!5907320 () Bool)

(assert (=> b!4899500 m!5907320))

(assert (=> b!4899500 m!5905562))

(assert (=> b!4899500 m!5907320))

(assert (=> b!4899502 m!5905562))

(assert (=> b!4899502 m!5905900))

(assert (=> b!4899502 m!5905562))

(assert (=> b!4899502 m!5905900))

(assert (=> b!4899501 m!5905562))

(declare-fun m!5907322 () Bool)

(assert (=> b!4899501 m!5907322))

(assert (=> b!4899501 m!5905562))

(assert (=> b!4899501 m!5907322))

(assert (=> b!4899501 m!5907322))

(assert (=> b!4899501 m!5907322))

(declare-fun m!5907324 () Bool)

(assert (=> b!4899501 m!5907324))

(assert (=> d!1574158 d!1574534))

(declare-fun d!1574536 () Bool)

(assert (=> d!1574536 (isPrefix!4901 (list!17745 input!1236) (list!17745 input!1236))))

(declare-fun lt!2009178 () Unit!146503)

(assert (=> d!1574536 (= lt!2009178 (choose!35766 (list!17745 input!1236) (list!17745 input!1236)))))

(assert (=> d!1574536 (= (lemmaIsPrefixRefl!3298 (list!17745 input!1236) (list!17745 input!1236)) lt!2009178)))

(declare-fun bs!1176599 () Bool)

(assert (= bs!1176599 d!1574536))

(assert (=> bs!1176599 m!5905562))

(assert (=> bs!1176599 m!5905562))

(assert (=> bs!1176599 m!5906130))

(assert (=> bs!1176599 m!5905562))

(assert (=> bs!1176599 m!5905562))

(declare-fun m!5907326 () Bool)

(assert (=> bs!1176599 m!5907326))

(assert (=> d!1574158 d!1574536))

(assert (=> d!1574158 d!1574202))

(declare-fun d!1574538 () Bool)

(assert (=> d!1574538 (= (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008708))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008708))))))

(declare-fun b_lambda!194955 () Bool)

(assert (=> (not b_lambda!194955) (not d!1574538)))

(declare-fun t!366341 () Bool)

(declare-fun tb!259541 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366341) tb!259541))

(declare-fun result!323200 () Bool)

(assert (=> tb!259541 (= result!323200 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008708)))))))

(declare-fun m!5907328 () Bool)

(assert (=> tb!259541 m!5907328))

(assert (=> d!1574538 t!366341))

(declare-fun b_and!345737 () Bool)

(assert (= b_and!345719 (and (=> t!366341 result!323200) b_and!345737)))

(declare-fun t!366343 () Bool)

(declare-fun tb!259543 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366343) tb!259543))

(declare-fun result!323202 () Bool)

(assert (= result!323202 result!323200))

(assert (=> d!1574538 t!366343))

(declare-fun b_and!345739 () Bool)

(assert (= b_and!345721 (and (=> t!366343 result!323202) b_and!345739)))

(declare-fun t!366345 () Bool)

(declare-fun tb!259545 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366345) tb!259545))

(declare-fun result!323204 () Bool)

(assert (= result!323204 result!323200))

(assert (=> d!1574538 t!366345))

(declare-fun b_and!345741 () Bool)

(assert (= b_and!345723 (and (=> t!366345 result!323204) b_and!345741)))

(assert (=> d!1574538 m!5905968))

(declare-fun m!5907330 () Bool)

(assert (=> d!1574538 m!5907330))

(assert (=> b!4898667 d!1574538))

(assert (=> b!4898667 d!1574448))

(declare-fun d!1574540 () Bool)

(assert (=> d!1574540 (= (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))) (is-Nil!56428 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(assert (=> b!4898667 d!1574540))

(declare-fun d!1574542 () Bool)

(declare-fun lt!2009179 () Int)

(assert (=> d!1574542 (= lt!2009179 (size!37169 (list!17745 (seqFromList!5943 (_1!33559 lt!2008708)))))))

(assert (=> d!1574542 (= lt!2009179 (size!37173 (c!832544 (seqFromList!5943 (_1!33559 lt!2008708)))))))

(assert (=> d!1574542 (= (size!37170 (seqFromList!5943 (_1!33559 lt!2008708))) lt!2009179)))

(declare-fun bs!1176600 () Bool)

(assert (= bs!1176600 d!1574542))

(assert (=> bs!1176600 m!5905968))

(declare-fun m!5907332 () Bool)

(assert (=> bs!1176600 m!5907332))

(assert (=> bs!1176600 m!5907332))

(declare-fun m!5907334 () Bool)

(assert (=> bs!1176600 m!5907334))

(declare-fun m!5907336 () Bool)

(assert (=> bs!1176600 m!5907336))

(assert (=> b!4898667 d!1574542))

(declare-fun d!1574544 () Bool)

(declare-fun e!3062639 () Bool)

(assert (=> d!1574544 e!3062639))

(declare-fun res!2092843 () Bool)

(assert (=> d!1574544 (=> res!2092843 e!3062639)))

(assert (=> d!1574544 (= res!2092843 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(declare-fun lt!2009180 () Unit!146503)

(assert (=> d!1574544 (= lt!2009180 (choose!35770 (regex!8181 (h!62878 rulesArg!165)) lt!2008472))))

(assert (=> d!1574544 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574544 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 rulesArg!165)) lt!2008472) lt!2009180)))

(declare-fun b!4899503 () Bool)

(assert (=> b!4899503 (= e!3062639 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(assert (= (and d!1574544 (not res!2092843)) b!4899503))

(assert (=> d!1574544 m!5905738))

(assert (=> d!1574544 m!5905630))

(assert (=> d!1574544 m!5905738))

(assert (=> d!1574544 m!5905630))

(assert (=> d!1574544 m!5905942))

(assert (=> d!1574544 m!5905982))

(assert (=> d!1574544 m!5905974))

(declare-fun m!5907338 () Bool)

(assert (=> d!1574544 m!5907338))

(assert (=> b!4899503 m!5905738))

(assert (=> b!4899503 m!5905630))

(assert (=> b!4899503 m!5905738))

(assert (=> b!4899503 m!5905630))

(assert (=> b!4899503 m!5905942))

(assert (=> b!4899503 m!5905944))

(assert (=> b!4898667 d!1574544))

(declare-fun d!1574546 () Bool)

(assert (=> d!1574546 (= (seqFromList!5943 (_1!33559 lt!2008708)) (fromListB!2698 (_1!33559 lt!2008708)))))

(declare-fun bs!1176601 () Bool)

(assert (= bs!1176601 d!1574546))

(declare-fun m!5907340 () Bool)

(assert (=> bs!1176601 m!5907340))

(assert (=> b!4898667 d!1574546))

(assert (=> b!4898667 d!1574128))

(assert (=> b!4898667 d!1574154))

(declare-fun bs!1176602 () Bool)

(declare-fun d!1574548 () Bool)

(assert (= bs!1176602 (and d!1574548 b!4898475)))

(declare-fun lambda!244195 () Int)

(assert (=> bs!1176602 (= lambda!244195 lambda!244166)))

(declare-fun bs!1176603 () Bool)

(assert (= bs!1176603 (and d!1574548 d!1574166)))

(assert (=> bs!1176603 (= lambda!244195 lambda!244179)))

(declare-fun bs!1176604 () Bool)

(assert (= bs!1176604 (and d!1574548 b!4898937)))

(assert (=> bs!1176604 (= (and (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (= lambda!244195 lambda!244184))))

(declare-fun b!4899508 () Bool)

(declare-fun e!3062642 () Bool)

(assert (=> b!4899508 (= e!3062642 true)))

(assert (=> d!1574548 e!3062642))

(assert (= d!1574548 b!4899508))

(assert (=> b!4899508 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244195))))

(assert (=> b!4899508 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244195))))

(assert (=> d!1574548 (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008708))))) (list!17745 (seqFromList!5943 (_1!33559 lt!2008708))))))

(declare-fun lt!2009183 () Unit!146503)

(assert (=> d!1574548 (= lt!2009183 (ForallOf!1140 lambda!244195 (seqFromList!5943 (_1!33559 lt!2008708))))))

(assert (=> d!1574548 (= (lemmaSemiInverse!2571 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008708))) lt!2009183)))

(declare-fun b_lambda!194957 () Bool)

(assert (=> (not b_lambda!194957) (not d!1574548)))

(declare-fun t!366347 () Bool)

(declare-fun tb!259547 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366347) tb!259547))

(declare-fun e!3062643 () Bool)

(declare-fun tp!1378400 () Bool)

(declare-fun b!4899509 () Bool)

(assert (=> b!4899509 (= e!3062643 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008708)))))) tp!1378400))))

(declare-fun result!323206 () Bool)

(assert (=> tb!259547 (= result!323206 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008708))))) e!3062643))))

(assert (= tb!259547 b!4899509))

(declare-fun m!5907342 () Bool)

(assert (=> b!4899509 m!5907342))

(declare-fun m!5907344 () Bool)

(assert (=> tb!259547 m!5907344))

(assert (=> d!1574548 t!366347))

(declare-fun b_and!345743 () Bool)

(assert (= b_and!345731 (and (=> t!366347 result!323206) b_and!345743)))

(declare-fun t!366349 () Bool)

(declare-fun tb!259549 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366349) tb!259549))

(declare-fun result!323208 () Bool)

(assert (= result!323208 result!323206))

(assert (=> d!1574548 t!366349))

(declare-fun b_and!345745 () Bool)

(assert (= b_and!345733 (and (=> t!366349 result!323208) b_and!345745)))

(declare-fun t!366351 () Bool)

(declare-fun tb!259551 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366351) tb!259551))

(declare-fun result!323210 () Bool)

(assert (= result!323210 result!323206))

(assert (=> d!1574548 t!366351))

(declare-fun b_and!345747 () Bool)

(assert (= b_and!345735 (and (=> t!366351 result!323210) b_and!345747)))

(declare-fun b_lambda!194959 () Bool)

(assert (=> (not b_lambda!194959) (not d!1574548)))

(assert (=> d!1574548 t!366341))

(declare-fun b_and!345749 () Bool)

(assert (= b_and!345737 (and (=> t!366341 result!323200) b_and!345749)))

(assert (=> d!1574548 t!366343))

(declare-fun b_and!345751 () Bool)

(assert (= b_and!345739 (and (=> t!366343 result!323202) b_and!345751)))

(assert (=> d!1574548 t!366345))

(declare-fun b_and!345753 () Bool)

(assert (= b_and!345741 (and (=> t!366345 result!323204) b_and!345753)))

(declare-fun m!5907346 () Bool)

(assert (=> d!1574548 m!5907346))

(declare-fun m!5907348 () Bool)

(assert (=> d!1574548 m!5907348))

(assert (=> d!1574548 m!5907330))

(assert (=> d!1574548 m!5907346))

(assert (=> d!1574548 m!5905968))

(assert (=> d!1574548 m!5907332))

(assert (=> d!1574548 m!5905968))

(assert (=> d!1574548 m!5907330))

(assert (=> d!1574548 m!5905968))

(declare-fun m!5907350 () Bool)

(assert (=> d!1574548 m!5907350))

(assert (=> b!4898667 d!1574548))

(declare-fun b!4899510 () Bool)

(declare-fun e!3062650 () Bool)

(declare-fun e!3062645 () Bool)

(assert (=> b!4899510 (= e!3062650 e!3062645)))

(declare-fun c!832755 () Bool)

(assert (=> b!4899510 (= c!832755 (is-EmptyLang!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899511 () Bool)

(declare-fun res!2092851 () Bool)

(declare-fun e!3062644 () Bool)

(assert (=> b!4899511 (=> res!2092851 e!3062644)))

(declare-fun e!3062646 () Bool)

(assert (=> b!4899511 (= res!2092851 e!3062646)))

(declare-fun res!2092847 () Bool)

(assert (=> b!4899511 (=> (not res!2092847) (not e!3062646))))

(declare-fun lt!2009184 () Bool)

(assert (=> b!4899511 (= res!2092847 lt!2009184)))

(declare-fun b!4899512 () Bool)

(declare-fun e!3062647 () Bool)

(assert (=> b!4899512 (= e!3062647 (matchR!6537 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236)))))) (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236)))))))))

(declare-fun d!1574550 () Bool)

(assert (=> d!1574550 e!3062650))

(declare-fun c!832753 () Bool)

(assert (=> d!1574550 (= c!832753 (is-EmptyExpr!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574550 (= lt!2009184 e!3062647)))

(declare-fun c!832754 () Bool)

(assert (=> d!1574550 (= c!832754 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(assert (=> d!1574550 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574550 (= (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))) lt!2009184)))

(declare-fun b!4899513 () Bool)

(declare-fun res!2092844 () Bool)

(assert (=> b!4899513 (=> (not res!2092844) (not e!3062646))))

(declare-fun call!339902 () Bool)

(assert (=> b!4899513 (= res!2092844 (not call!339902))))

(declare-fun b!4899514 () Bool)

(assert (=> b!4899514 (= e!3062650 (= lt!2009184 call!339902))))

(declare-fun b!4899515 () Bool)

(declare-fun res!2092845 () Bool)

(assert (=> b!4899515 (=> res!2092845 e!3062644)))

(assert (=> b!4899515 (= res!2092845 (not (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> b!4899515 (= e!3062645 e!3062644)))

(declare-fun b!4899516 () Bool)

(declare-fun e!3062648 () Bool)

(assert (=> b!4899516 (= e!3062648 (not (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))) (c!832545 (regex!8181 (h!62878 rulesArg!165))))))))

(declare-fun bm!339897 () Bool)

(assert (=> bm!339897 (= call!339902 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(declare-fun b!4899517 () Bool)

(assert (=> b!4899517 (= e!3062646 (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))) (c!832545 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun b!4899518 () Bool)

(declare-fun res!2092850 () Bool)

(assert (=> b!4899518 (=> res!2092850 e!3062648)))

(assert (=> b!4899518 (= res!2092850 (not (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))))

(declare-fun b!4899519 () Bool)

(declare-fun e!3062649 () Bool)

(assert (=> b!4899519 (= e!3062644 e!3062649)))

(declare-fun res!2092848 () Bool)

(assert (=> b!4899519 (=> (not res!2092848) (not e!3062649))))

(assert (=> b!4899519 (= res!2092848 (not lt!2009184))))

(declare-fun b!4899520 () Bool)

(assert (=> b!4899520 (= e!3062647 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899521 () Bool)

(declare-fun res!2092846 () Bool)

(assert (=> b!4899521 (=> (not res!2092846) (not e!3062646))))

(assert (=> b!4899521 (= res!2092846 (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236)))))))))

(declare-fun b!4899522 () Bool)

(assert (=> b!4899522 (= e!3062645 (not lt!2009184))))

(declare-fun b!4899523 () Bool)

(assert (=> b!4899523 (= e!3062649 e!3062648)))

(declare-fun res!2092849 () Bool)

(assert (=> b!4899523 (=> res!2092849 e!3062648)))

(assert (=> b!4899523 (= res!2092849 call!339902)))

(assert (= (and d!1574550 c!832754) b!4899520))

(assert (= (and d!1574550 (not c!832754)) b!4899512))

(assert (= (and d!1574550 c!832753) b!4899514))

(assert (= (and d!1574550 (not c!832753)) b!4899510))

(assert (= (and b!4899510 c!832755) b!4899522))

(assert (= (and b!4899510 (not c!832755)) b!4899515))

(assert (= (and b!4899515 (not res!2092845)) b!4899511))

(assert (= (and b!4899511 res!2092847) b!4899513))

(assert (= (and b!4899513 res!2092844) b!4899521))

(assert (= (and b!4899521 res!2092846) b!4899517))

(assert (= (and b!4899511 (not res!2092851)) b!4899519))

(assert (= (and b!4899519 res!2092848) b!4899523))

(assert (= (and b!4899523 (not res!2092849)) b!4899518))

(assert (= (and b!4899518 (not res!2092850)) b!4899516))

(assert (= (or b!4899514 b!4899513 b!4899523) bm!339897))

(declare-fun m!5907352 () Bool)

(assert (=> b!4899521 m!5907352))

(assert (=> b!4899521 m!5907352))

(declare-fun m!5907354 () Bool)

(assert (=> b!4899521 m!5907354))

(declare-fun m!5907356 () Bool)

(assert (=> b!4899517 m!5907356))

(assert (=> d!1574550 m!5905934))

(assert (=> d!1574550 m!5905982))

(assert (=> b!4899516 m!5907356))

(assert (=> bm!339897 m!5905934))

(assert (=> b!4899512 m!5907356))

(assert (=> b!4899512 m!5907356))

(declare-fun m!5907358 () Bool)

(assert (=> b!4899512 m!5907358))

(assert (=> b!4899512 m!5907352))

(assert (=> b!4899512 m!5907358))

(assert (=> b!4899512 m!5907352))

(declare-fun m!5907360 () Bool)

(assert (=> b!4899512 m!5907360))

(assert (=> b!4899520 m!5905984))

(assert (=> b!4899518 m!5907352))

(assert (=> b!4899518 m!5907352))

(assert (=> b!4899518 m!5907354))

(assert (=> b!4898652 d!1574550))

(declare-fun b!4899524 () Bool)

(declare-fun c!832760 () Bool)

(declare-fun call!339907 () Bool)

(assert (=> b!4899524 (= c!832760 call!339907)))

(declare-fun lt!2009206 () Unit!146503)

(declare-fun lt!2009191 () Unit!146503)

(assert (=> b!4899524 (= lt!2009206 lt!2009191)))

(assert (=> b!4899524 (= (list!17745 input!1236) Nil!56428)))

(declare-fun call!339904 () Unit!146503)

(assert (=> b!4899524 (= lt!2009191 call!339904)))

(declare-fun lt!2009201 () Unit!146503)

(declare-fun lt!2009187 () Unit!146503)

(assert (=> b!4899524 (= lt!2009201 lt!2009187)))

(declare-fun call!339908 () Bool)

(assert (=> b!4899524 call!339908))

(declare-fun call!339905 () Unit!146503)

(assert (=> b!4899524 (= lt!2009187 call!339905)))

(declare-fun e!3062657 () tuple2!60512)

(declare-fun e!3062658 () tuple2!60512)

(assert (=> b!4899524 (= e!3062657 e!3062658)))

(declare-fun b!4899525 () Bool)

(declare-fun e!3062656 () tuple2!60512)

(declare-fun e!3062654 () tuple2!60512)

(assert (=> b!4899525 (= e!3062656 e!3062654)))

(declare-fun lt!2009207 () tuple2!60512)

(declare-fun call!339903 () tuple2!60512)

(assert (=> b!4899525 (= lt!2009207 call!339903)))

(declare-fun c!832756 () Bool)

(assert (=> b!4899525 (= c!832756 (isEmpty!30306 (_1!33559 lt!2009207)))))

(declare-fun bm!339898 () Bool)

(declare-fun call!339906 () List!56552)

(assert (=> bm!339898 (= call!339906 (tail!9608 (list!17745 input!1236)))))

(declare-fun bm!339899 () Bool)

(assert (=> bm!339899 (= call!339907 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899526 () Bool)

(assert (=> b!4899526 (= e!3062658 (tuple2!60513 Nil!56428 (list!17745 input!1236)))))

(declare-fun b!4899528 () Bool)

(declare-fun e!3062653 () tuple2!60512)

(assert (=> b!4899528 (= e!3062653 e!3062657)))

(declare-fun c!832757 () Bool)

(assert (=> b!4899528 (= c!832757 (= (size!37169 Nil!56428) (size!37169 (list!17745 input!1236))))))

(declare-fun b!4899529 () Bool)

(assert (=> b!4899529 (= e!3062654 (tuple2!60513 Nil!56428 (list!17745 input!1236)))))

(declare-fun b!4899530 () Bool)

(declare-fun e!3062651 () Unit!146503)

(declare-fun Unit!146519 () Unit!146503)

(assert (=> b!4899530 (= e!3062651 Unit!146519)))

(declare-fun lt!2009198 () Unit!146503)

(assert (=> b!4899530 (= lt!2009198 call!339905)))

(assert (=> b!4899530 call!339908))

(declare-fun lt!2009212 () Unit!146503)

(assert (=> b!4899530 (= lt!2009212 lt!2009198)))

(declare-fun lt!2009190 () Unit!146503)

(assert (=> b!4899530 (= lt!2009190 call!339904)))

(assert (=> b!4899530 (= (list!17745 input!1236) Nil!56428)))

(declare-fun lt!2009202 () Unit!146503)

(assert (=> b!4899530 (= lt!2009202 lt!2009190)))

(assert (=> b!4899530 false))

(declare-fun b!4899531 () Bool)

(declare-fun c!832759 () Bool)

(assert (=> b!4899531 (= c!832759 call!339907)))

(declare-fun lt!2009186 () Unit!146503)

(declare-fun lt!2009199 () Unit!146503)

(assert (=> b!4899531 (= lt!2009186 lt!2009199)))

(declare-fun lt!2009195 () C!26710)

(declare-fun lt!2009204 () List!56552)

(assert (=> b!4899531 (= (++!12250 (++!12250 Nil!56428 (Cons!56428 lt!2009195 Nil!56428)) lt!2009204) (list!17745 input!1236))))

(assert (=> b!4899531 (= lt!2009199 (lemmaMoveElementToOtherListKeepsConcatEq!1336 Nil!56428 lt!2009195 lt!2009204 (list!17745 input!1236)))))

(assert (=> b!4899531 (= lt!2009204 (tail!9608 (list!17745 input!1236)))))

(assert (=> b!4899531 (= lt!2009195 (head!10462 (list!17745 input!1236)))))

(declare-fun lt!2009210 () Unit!146503)

(declare-fun lt!2009205 () Unit!146503)

(assert (=> b!4899531 (= lt!2009210 lt!2009205)))

(assert (=> b!4899531 (isPrefix!4901 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 (list!17745 input!1236) Nil!56428)) Nil!56428)) (list!17745 input!1236))))

(assert (=> b!4899531 (= lt!2009205 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 (list!17745 input!1236)))))

(declare-fun lt!2009189 () Unit!146503)

(declare-fun lt!2009185 () Unit!146503)

(assert (=> b!4899531 (= lt!2009189 lt!2009185)))

(assert (=> b!4899531 (= lt!2009185 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 (list!17745 input!1236)))))

(declare-fun lt!2009208 () List!56552)

(assert (=> b!4899531 (= lt!2009208 (++!12250 Nil!56428 (Cons!56428 (head!10462 (list!17745 input!1236)) Nil!56428)))))

(declare-fun lt!2009188 () Unit!146503)

(assert (=> b!4899531 (= lt!2009188 e!3062651)))

(declare-fun c!832761 () Bool)

(assert (=> b!4899531 (= c!832761 (= (size!37169 Nil!56428) (size!37169 (list!17745 input!1236))))))

(declare-fun lt!2009194 () Unit!146503)

(declare-fun lt!2009211 () Unit!146503)

(assert (=> b!4899531 (= lt!2009194 lt!2009211)))

(assert (=> b!4899531 (<= (size!37169 Nil!56428) (size!37169 (list!17745 input!1236)))))

(assert (=> b!4899531 (= lt!2009211 (lemmaIsPrefixThenSmallerEqSize!630 Nil!56428 (list!17745 input!1236)))))

(assert (=> b!4899531 (= e!3062657 e!3062656)))

(declare-fun b!4899532 () Bool)

(assert (=> b!4899532 (= e!3062656 call!339903)))

(declare-fun b!4899533 () Bool)

(declare-fun e!3062655 () Bool)

(declare-fun e!3062652 () Bool)

(assert (=> b!4899533 (= e!3062655 e!3062652)))

(declare-fun res!2092852 () Bool)

(assert (=> b!4899533 (=> res!2092852 e!3062652)))

(declare-fun lt!2009203 () tuple2!60512)

(assert (=> b!4899533 (= res!2092852 (isEmpty!30306 (_1!33559 lt!2009203)))))

(declare-fun call!339910 () Regex!13256)

(declare-fun bm!339900 () Bool)

(assert (=> bm!339900 (= call!339903 (findLongestMatchInner!1760 call!339910 lt!2009208 (+ (size!37169 Nil!56428) 1) call!339906 (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))

(declare-fun bm!339901 () Bool)

(assert (=> bm!339901 (= call!339905 (lemmaIsPrefixRefl!3298 (list!17745 input!1236) (list!17745 input!1236)))))

(declare-fun bm!339902 () Bool)

(assert (=> bm!339902 (= call!339908 (isPrefix!4901 (list!17745 input!1236) (list!17745 input!1236)))))

(declare-fun b!4899527 () Bool)

(assert (=> b!4899527 (= e!3062658 (tuple2!60513 Nil!56428 Nil!56428))))

(declare-fun d!1574552 () Bool)

(assert (=> d!1574552 e!3062655))

(declare-fun res!2092853 () Bool)

(assert (=> d!1574552 (=> (not res!2092853) (not e!3062655))))

(assert (=> d!1574552 (= res!2092853 (= (++!12250 (_1!33559 lt!2009203) (_2!33559 lt!2009203)) (list!17745 input!1236)))))

(assert (=> d!1574552 (= lt!2009203 e!3062653)))

(declare-fun c!832758 () Bool)

(assert (=> d!1574552 (= c!832758 (lostCause!1092 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun lt!2009193 () Unit!146503)

(declare-fun Unit!146520 () Unit!146503)

(assert (=> d!1574552 (= lt!2009193 Unit!146520)))

(assert (=> d!1574552 (= (getSuffix!2893 (list!17745 input!1236) Nil!56428) (list!17745 input!1236))))

(declare-fun lt!2009192 () Unit!146503)

(declare-fun lt!2009197 () Unit!146503)

(assert (=> d!1574552 (= lt!2009192 lt!2009197)))

(declare-fun lt!2009200 () List!56552)

(assert (=> d!1574552 (= (list!17745 input!1236) lt!2009200)))

(assert (=> d!1574552 (= lt!2009197 (lemmaSamePrefixThenSameSuffix!2309 Nil!56428 (list!17745 input!1236) Nil!56428 lt!2009200 (list!17745 input!1236)))))

(assert (=> d!1574552 (= lt!2009200 (getSuffix!2893 (list!17745 input!1236) Nil!56428))))

(declare-fun lt!2009209 () Unit!146503)

(declare-fun lt!2009196 () Unit!146503)

(assert (=> d!1574552 (= lt!2009209 lt!2009196)))

(assert (=> d!1574552 (isPrefix!4901 Nil!56428 (++!12250 Nil!56428 (list!17745 input!1236)))))

(assert (=> d!1574552 (= lt!2009196 (lemmaConcatTwoListThenFirstIsPrefix!3129 Nil!56428 (list!17745 input!1236)))))

(assert (=> d!1574552 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574552 (= (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))) lt!2009203)))

(declare-fun bm!339903 () Bool)

(assert (=> bm!339903 (= call!339904 (lemmaIsPrefixSameLengthThenSameList!1064 (list!17745 input!1236) Nil!56428 (list!17745 input!1236)))))

(declare-fun b!4899534 () Bool)

(declare-fun Unit!146521 () Unit!146503)

(assert (=> b!4899534 (= e!3062651 Unit!146521)))

(declare-fun b!4899535 () Bool)

(assert (=> b!4899535 (= e!3062653 (tuple2!60513 Nil!56428 (list!17745 input!1236)))))

(declare-fun b!4899536 () Bool)

(assert (=> b!4899536 (= e!3062652 (>= (size!37169 (_1!33559 lt!2009203)) (size!37169 Nil!56428)))))

(declare-fun bm!339904 () Bool)

(declare-fun call!339909 () C!26710)

(assert (=> bm!339904 (= call!339909 (head!10462 (list!17745 input!1236)))))

(declare-fun bm!339905 () Bool)

(assert (=> bm!339905 (= call!339910 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) call!339909))))

(declare-fun b!4899537 () Bool)

(assert (=> b!4899537 (= e!3062654 lt!2009207)))

(assert (= (and d!1574552 c!832758) b!4899535))

(assert (= (and d!1574552 (not c!832758)) b!4899528))

(assert (= (and b!4899528 c!832757) b!4899524))

(assert (= (and b!4899528 (not c!832757)) b!4899531))

(assert (= (and b!4899524 c!832760) b!4899527))

(assert (= (and b!4899524 (not c!832760)) b!4899526))

(assert (= (and b!4899531 c!832761) b!4899530))

(assert (= (and b!4899531 (not c!832761)) b!4899534))

(assert (= (and b!4899531 c!832759) b!4899525))

(assert (= (and b!4899531 (not c!832759)) b!4899532))

(assert (= (and b!4899525 c!832756) b!4899529))

(assert (= (and b!4899525 (not c!832756)) b!4899537))

(assert (= (or b!4899525 b!4899532) bm!339898))

(assert (= (or b!4899525 b!4899532) bm!339904))

(assert (= (or b!4899525 b!4899532) bm!339905))

(assert (= (or b!4899525 b!4899532) bm!339900))

(assert (= (or b!4899524 b!4899531) bm!339899))

(assert (= (or b!4899524 b!4899530) bm!339901))

(assert (= (or b!4899524 b!4899530) bm!339903))

(assert (= (or b!4899524 b!4899530) bm!339902))

(assert (= (and d!1574552 res!2092853) b!4899533))

(assert (= (and b!4899533 (not res!2092852)) b!4899536))

(declare-fun m!5907362 () Bool)

(assert (=> bm!339905 m!5907362))

(assert (=> bm!339904 m!5905562))

(assert (=> bm!339904 m!5907320))

(assert (=> bm!339901 m!5905562))

(assert (=> bm!339901 m!5905562))

(assert (=> bm!339901 m!5906132))

(assert (=> b!4899531 m!5905562))

(declare-fun m!5907364 () Bool)

(assert (=> b!4899531 m!5907364))

(declare-fun m!5907366 () Bool)

(assert (=> b!4899531 m!5907366))

(assert (=> b!4899531 m!5905562))

(declare-fun m!5907368 () Bool)

(assert (=> b!4899531 m!5907368))

(assert (=> b!4899531 m!5905562))

(declare-fun m!5907370 () Bool)

(assert (=> b!4899531 m!5907370))

(declare-fun m!5907372 () Bool)

(assert (=> b!4899531 m!5907372))

(assert (=> b!4899531 m!5905562))

(assert (=> b!4899531 m!5907320))

(assert (=> b!4899531 m!5905738))

(assert (=> b!4899531 m!5907366))

(assert (=> b!4899531 m!5907372))

(declare-fun m!5907374 () Bool)

(assert (=> b!4899531 m!5907374))

(assert (=> b!4899531 m!5905562))

(declare-fun m!5907376 () Bool)

(assert (=> b!4899531 m!5907376))

(assert (=> b!4899531 m!5905562))

(declare-fun m!5907378 () Bool)

(assert (=> b!4899531 m!5907378))

(assert (=> b!4899531 m!5907364))

(declare-fun m!5907380 () Bool)

(assert (=> b!4899531 m!5907380))

(declare-fun m!5907382 () Bool)

(assert (=> b!4899531 m!5907382))

(assert (=> b!4899531 m!5905562))

(assert (=> b!4899531 m!5905900))

(assert (=> b!4899531 m!5905562))

(assert (=> b!4899531 m!5907322))

(assert (=> d!1574552 m!5905562))

(assert (=> d!1574552 m!5907364))

(assert (=> d!1574552 m!5906072))

(assert (=> d!1574552 m!5905982))

(declare-fun m!5907384 () Bool)

(assert (=> d!1574552 m!5907384))

(assert (=> d!1574552 m!5905562))

(assert (=> d!1574552 m!5905562))

(declare-fun m!5907386 () Bool)

(assert (=> d!1574552 m!5907386))

(assert (=> d!1574552 m!5905562))

(declare-fun m!5907388 () Bool)

(assert (=> d!1574552 m!5907388))

(assert (=> d!1574552 m!5905562))

(declare-fun m!5907390 () Bool)

(assert (=> d!1574552 m!5907390))

(assert (=> d!1574552 m!5907388))

(declare-fun m!5907392 () Bool)

(assert (=> d!1574552 m!5907392))

(assert (=> bm!339899 m!5905984))

(assert (=> bm!339898 m!5905562))

(assert (=> bm!339898 m!5907322))

(assert (=> bm!339900 m!5905562))

(assert (=> bm!339900 m!5905900))

(declare-fun m!5907394 () Bool)

(assert (=> bm!339900 m!5907394))

(declare-fun m!5907396 () Bool)

(assert (=> b!4899533 m!5907396))

(declare-fun m!5907398 () Bool)

(assert (=> b!4899525 m!5907398))

(declare-fun m!5907400 () Bool)

(assert (=> b!4899536 m!5907400))

(assert (=> b!4899536 m!5905738))

(assert (=> bm!339902 m!5905562))

(assert (=> bm!339902 m!5905562))

(assert (=> bm!339902 m!5906130))

(assert (=> bm!339903 m!5905562))

(assert (=> bm!339903 m!5905562))

(declare-fun m!5907402 () Bool)

(assert (=> bm!339903 m!5907402))

(assert (=> b!4898652 d!1574552))

(assert (=> b!4898652 d!1574128))

(declare-fun d!1574554 () Bool)

(declare-fun lt!2009213 () Int)

(assert (=> d!1574554 (>= lt!2009213 0)))

(declare-fun e!3062659 () Int)

(assert (=> d!1574554 (= lt!2009213 e!3062659)))

(declare-fun c!832762 () Bool)

(assert (=> d!1574554 (= c!832762 (is-Nil!56428 (list!17745 input!1236)))))

(assert (=> d!1574554 (= (size!37169 (list!17745 input!1236)) lt!2009213)))

(declare-fun b!4899538 () Bool)

(assert (=> b!4899538 (= e!3062659 0)))

(declare-fun b!4899539 () Bool)

(assert (=> b!4899539 (= e!3062659 (+ 1 (size!37169 (t!366238 (list!17745 input!1236)))))))

(assert (= (and d!1574554 c!832762) b!4899538))

(assert (= (and d!1574554 (not c!832762)) b!4899539))

(declare-fun m!5907404 () Bool)

(assert (=> b!4899539 m!5907404))

(assert (=> b!4898652 d!1574554))

(declare-fun d!1574556 () Bool)

(assert (=> d!1574556 (= (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))) (v!49998 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))))))

(assert (=> b!4898682 d!1574556))

(declare-fun d!1574558 () Bool)

(assert (=> d!1574558 (= (get!19497 lt!2008722) (v!49999 lt!2008722))))

(assert (=> b!4898682 d!1574558))

(declare-fun d!1574560 () Bool)

(assert (=> d!1574560 (= (list!17745 (_2!33555 (get!19497 lt!2008722))) (list!17747 (c!832544 (_2!33555 (get!19497 lt!2008722)))))))

(declare-fun bs!1176605 () Bool)

(assert (= bs!1176605 d!1574560))

(declare-fun m!5907406 () Bool)

(assert (=> bs!1176605 m!5907406))

(assert (=> b!4898682 d!1574560))

(assert (=> b!4898682 d!1574020))

(declare-fun call!339911 () Option!14039)

(declare-fun bm!339906 () Bool)

(assert (=> bm!339906 (= call!339911 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(declare-fun b!4899541 () Bool)

(declare-fun res!2092856 () Bool)

(declare-fun e!3062662 () Bool)

(assert (=> b!4899541 (=> (not res!2092856) (not e!3062662))))

(declare-fun lt!2009215 () Option!14039)

(assert (=> b!4899541 (= res!2092856 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009215)))) (_2!33556 (get!19496 lt!2009215))) (list!17745 input!1236)))))

(declare-fun b!4899542 () Bool)

(assert (=> b!4899542 (= e!3062662 (contains!19444 (t!366240 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2009215)))))))

(declare-fun b!4899543 () Bool)

(declare-fun e!3062661 () Option!14039)

(declare-fun lt!2009217 () Option!14039)

(declare-fun lt!2009218 () Option!14039)

(assert (=> b!4899543 (= e!3062661 (ite (and (is-None!14038 lt!2009217) (is-None!14038 lt!2009218)) None!14038 (ite (is-None!14038 lt!2009218) lt!2009217 (ite (is-None!14038 lt!2009217) lt!2009218 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2009217))) (size!37167 (_1!33556 (v!49998 lt!2009218)))) lt!2009217 lt!2009218)))))))

(assert (=> b!4899543 (= lt!2009217 call!339911)))

(assert (=> b!4899543 (= lt!2009218 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(declare-fun b!4899544 () Bool)

(declare-fun res!2092860 () Bool)

(assert (=> b!4899544 (=> (not res!2092860) (not e!3062662))))

(assert (=> b!4899544 (= res!2092860 (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2009215)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009215))))))))

(declare-fun b!4899545 () Bool)

(declare-fun res!2092855 () Bool)

(assert (=> b!4899545 (=> (not res!2092855) (not e!3062662))))

(assert (=> b!4899545 (= res!2092855 (= (value!262310 (_1!33556 (get!19496 lt!2009215))) (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2009215)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2009215)))))))))

(declare-fun b!4899546 () Bool)

(assert (=> b!4899546 (= e!3062661 call!339911)))

(declare-fun d!1574562 () Bool)

(declare-fun e!3062660 () Bool)

(assert (=> d!1574562 e!3062660))

(declare-fun res!2092857 () Bool)

(assert (=> d!1574562 (=> res!2092857 e!3062660)))

(assert (=> d!1574562 (= res!2092857 (isEmpty!30303 lt!2009215))))

(assert (=> d!1574562 (= lt!2009215 e!3062661)))

(declare-fun c!832763 () Bool)

(assert (=> d!1574562 (= c!832763 (and (is-Cons!56430 (t!366240 (t!366240 rulesArg!165))) (is-Nil!56430 (t!366240 (t!366240 (t!366240 rulesArg!165))))))))

(declare-fun lt!2009214 () Unit!146503)

(declare-fun lt!2009216 () Unit!146503)

(assert (=> d!1574562 (= lt!2009214 lt!2009216)))

(assert (=> d!1574562 (isPrefix!4901 (list!17745 input!1236) (list!17745 input!1236))))

(assert (=> d!1574562 (= lt!2009216 (lemmaIsPrefixRefl!3298 (list!17745 input!1236) (list!17745 input!1236)))))

(assert (=> d!1574562 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 rulesArg!165)))))

(assert (=> d!1574562 (= (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236)) lt!2009215)))

(declare-fun b!4899540 () Bool)

(assert (=> b!4899540 (= e!3062660 e!3062662)))

(declare-fun res!2092859 () Bool)

(assert (=> b!4899540 (=> (not res!2092859) (not e!3062662))))

(assert (=> b!4899540 (= res!2092859 (isDefined!11052 lt!2009215))))

(declare-fun b!4899547 () Bool)

(declare-fun res!2092854 () Bool)

(assert (=> b!4899547 (=> (not res!2092854) (not e!3062662))))

(assert (=> b!4899547 (= res!2092854 (< (size!37169 (_2!33556 (get!19496 lt!2009215))) (size!37169 (list!17745 input!1236))))))

(declare-fun b!4899548 () Bool)

(declare-fun res!2092858 () Bool)

(assert (=> b!4899548 (=> (not res!2092858) (not e!3062662))))

(assert (=> b!4899548 (= res!2092858 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2009215)))) (originalCharacters!8494 (_1!33556 (get!19496 lt!2009215)))))))

(assert (= (and d!1574562 c!832763) b!4899546))

(assert (= (and d!1574562 (not c!832763)) b!4899543))

(assert (= (or b!4899546 b!4899543) bm!339906))

(assert (= (and d!1574562 (not res!2092857)) b!4899540))

(assert (= (and b!4899540 res!2092859) b!4899548))

(assert (= (and b!4899548 res!2092858) b!4899547))

(assert (= (and b!4899547 res!2092854) b!4899541))

(assert (= (and b!4899541 res!2092856) b!4899545))

(assert (= (and b!4899545 res!2092855) b!4899544))

(assert (= (and b!4899544 res!2092860) b!4899542))

(declare-fun m!5907408 () Bool)

(assert (=> b!4899541 m!5907408))

(declare-fun m!5907410 () Bool)

(assert (=> b!4899541 m!5907410))

(assert (=> b!4899541 m!5907410))

(declare-fun m!5907412 () Bool)

(assert (=> b!4899541 m!5907412))

(assert (=> b!4899541 m!5907412))

(declare-fun m!5907414 () Bool)

(assert (=> b!4899541 m!5907414))

(assert (=> b!4899548 m!5907408))

(assert (=> b!4899548 m!5907410))

(assert (=> b!4899548 m!5907410))

(assert (=> b!4899548 m!5907412))

(assert (=> b!4899545 m!5907408))

(declare-fun m!5907416 () Bool)

(assert (=> b!4899545 m!5907416))

(assert (=> b!4899545 m!5907416))

(declare-fun m!5907418 () Bool)

(assert (=> b!4899545 m!5907418))

(assert (=> b!4899544 m!5907408))

(assert (=> b!4899544 m!5907410))

(assert (=> b!4899544 m!5907410))

(assert (=> b!4899544 m!5907412))

(assert (=> b!4899544 m!5907412))

(declare-fun m!5907420 () Bool)

(assert (=> b!4899544 m!5907420))

(assert (=> b!4899542 m!5907408))

(declare-fun m!5907422 () Bool)

(assert (=> b!4899542 m!5907422))

(declare-fun m!5907424 () Bool)

(assert (=> b!4899540 m!5907424))

(assert (=> b!4899547 m!5907408))

(declare-fun m!5907426 () Bool)

(assert (=> b!4899547 m!5907426))

(assert (=> b!4899547 m!5905562))

(assert (=> b!4899547 m!5905900))

(declare-fun m!5907428 () Bool)

(assert (=> d!1574562 m!5907428))

(assert (=> d!1574562 m!5905562))

(assert (=> d!1574562 m!5905562))

(assert (=> d!1574562 m!5906130))

(assert (=> d!1574562 m!5905562))

(assert (=> d!1574562 m!5905562))

(assert (=> d!1574562 m!5906132))

(assert (=> d!1574562 m!5906008))

(assert (=> b!4899543 m!5905562))

(declare-fun m!5907430 () Bool)

(assert (=> b!4899543 m!5907430))

(assert (=> bm!339906 m!5905562))

(declare-fun m!5907432 () Bool)

(assert (=> bm!339906 m!5907432))

(assert (=> b!4898682 d!1574562))

(declare-fun b!4899549 () Bool)

(declare-fun e!3062664 () Bool)

(declare-fun e!3062663 () Bool)

(assert (=> b!4899549 (= e!3062664 e!3062663)))

(declare-fun res!2092863 () Bool)

(assert (=> b!4899549 (=> (not res!2092863) (not e!3062663))))

(assert (=> b!4899549 (= res!2092863 (not (is-Nil!56428 lt!2008644)))))

(declare-fun d!1574564 () Bool)

(declare-fun e!3062665 () Bool)

(assert (=> d!1574564 e!3062665))

(declare-fun res!2092862 () Bool)

(assert (=> d!1574564 (=> res!2092862 e!3062665)))

(declare-fun lt!2009219 () Bool)

(assert (=> d!1574564 (= res!2092862 (not lt!2009219))))

(assert (=> d!1574564 (= lt!2009219 e!3062664)))

(declare-fun res!2092864 () Bool)

(assert (=> d!1574564 (=> res!2092864 e!3062664)))

(assert (=> d!1574564 (= res!2092864 (is-Nil!56428 lt!2008644))))

(assert (=> d!1574564 (= (isPrefix!4901 lt!2008644 lt!2008644) lt!2009219)))

(declare-fun b!4899550 () Bool)

(declare-fun res!2092861 () Bool)

(assert (=> b!4899550 (=> (not res!2092861) (not e!3062663))))

(assert (=> b!4899550 (= res!2092861 (= (head!10462 lt!2008644) (head!10462 lt!2008644)))))

(declare-fun b!4899552 () Bool)

(assert (=> b!4899552 (= e!3062665 (>= (size!37169 lt!2008644) (size!37169 lt!2008644)))))

(declare-fun b!4899551 () Bool)

(assert (=> b!4899551 (= e!3062663 (isPrefix!4901 (tail!9608 lt!2008644) (tail!9608 lt!2008644)))))

(assert (= (and d!1574564 (not res!2092864)) b!4899549))

(assert (= (and b!4899549 res!2092863) b!4899550))

(assert (= (and b!4899550 res!2092861) b!4899551))

(assert (= (and d!1574564 (not res!2092862)) b!4899552))

(assert (=> b!4899550 m!5906046))

(assert (=> b!4899550 m!5906046))

(assert (=> b!4899552 m!5905740))

(assert (=> b!4899552 m!5905740))

(assert (=> b!4899551 m!5906070))

(assert (=> b!4899551 m!5906070))

(assert (=> b!4899551 m!5906070))

(assert (=> b!4899551 m!5906070))

(declare-fun m!5907434 () Bool)

(assert (=> b!4899551 m!5907434))

(assert (=> bm!339842 d!1574564))

(declare-fun b!4899553 () Bool)

(declare-fun e!3062672 () Bool)

(declare-fun e!3062667 () Bool)

(assert (=> b!4899553 (= e!3062672 e!3062667)))

(declare-fun c!832766 () Bool)

(assert (=> b!4899553 (= c!832766 (is-EmptyLang!13256 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun b!4899554 () Bool)

(declare-fun res!2092872 () Bool)

(declare-fun e!3062666 () Bool)

(assert (=> b!4899554 (=> res!2092872 e!3062666)))

(declare-fun e!3062668 () Bool)

(assert (=> b!4899554 (= res!2092872 e!3062668)))

(declare-fun res!2092868 () Bool)

(assert (=> b!4899554 (=> (not res!2092868) (not e!3062668))))

(declare-fun lt!2009220 () Bool)

(assert (=> b!4899554 (= res!2092868 lt!2009220)))

(declare-fun b!4899555 () Bool)

(declare-fun e!3062669 () Bool)

(assert (=> b!4899555 (= e!3062669 (matchR!6537 (derivativeStep!3884 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (head!10462 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))) (tail!9608 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun d!1574566 () Bool)

(assert (=> d!1574566 e!3062672))

(declare-fun c!832764 () Bool)

(assert (=> d!1574566 (= c!832764 (is-EmptyExpr!13256 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(assert (=> d!1574566 (= lt!2009220 e!3062669)))

(declare-fun c!832765 () Bool)

(assert (=> d!1574566 (= c!832765 (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (=> d!1574566 (validRegex!5889 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (=> d!1574566 (= (matchR!6537 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) lt!2009220)))

(declare-fun b!4899556 () Bool)

(declare-fun res!2092865 () Bool)

(assert (=> b!4899556 (=> (not res!2092865) (not e!3062668))))

(declare-fun call!339912 () Bool)

(assert (=> b!4899556 (= res!2092865 (not call!339912))))

(declare-fun b!4899557 () Bool)

(assert (=> b!4899557 (= e!3062672 (= lt!2009220 call!339912))))

(declare-fun b!4899558 () Bool)

(declare-fun res!2092866 () Bool)

(assert (=> b!4899558 (=> res!2092866 e!3062666)))

(assert (=> b!4899558 (= res!2092866 (not (is-ElementMatch!13256 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))))

(assert (=> b!4899558 (= e!3062667 e!3062666)))

(declare-fun b!4899559 () Bool)

(declare-fun e!3062670 () Bool)

(assert (=> b!4899559 (= e!3062670 (not (= (head!10462 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (c!832545 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))))

(declare-fun bm!339907 () Bool)

(assert (=> bm!339907 (= call!339912 (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4899560 () Bool)

(assert (=> b!4899560 (= e!3062668 (= (head!10462 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (c!832545 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))))

(declare-fun b!4899561 () Bool)

(declare-fun res!2092871 () Bool)

(assert (=> b!4899561 (=> res!2092871 e!3062670)))

(assert (=> b!4899561 (= res!2092871 (not (isEmpty!30306 (tail!9608 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))))

(declare-fun b!4899562 () Bool)

(declare-fun e!3062671 () Bool)

(assert (=> b!4899562 (= e!3062666 e!3062671)))

(declare-fun res!2092869 () Bool)

(assert (=> b!4899562 (=> (not res!2092869) (not e!3062671))))

(assert (=> b!4899562 (= res!2092869 (not lt!2009220))))

(declare-fun b!4899563 () Bool)

(assert (=> b!4899563 (= e!3062669 (nullable!4562 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun b!4899564 () Bool)

(declare-fun res!2092867 () Bool)

(assert (=> b!4899564 (=> (not res!2092867) (not e!3062668))))

(assert (=> b!4899564 (= res!2092867 (isEmpty!30306 (tail!9608 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun b!4899565 () Bool)

(assert (=> b!4899565 (= e!3062667 (not lt!2009220))))

(declare-fun b!4899566 () Bool)

(assert (=> b!4899566 (= e!3062671 e!3062670)))

(declare-fun res!2092870 () Bool)

(assert (=> b!4899566 (=> res!2092870 e!3062670)))

(assert (=> b!4899566 (= res!2092870 call!339912)))

(assert (= (and d!1574566 c!832765) b!4899563))

(assert (= (and d!1574566 (not c!832765)) b!4899555))

(assert (= (and d!1574566 c!832764) b!4899557))

(assert (= (and d!1574566 (not c!832764)) b!4899553))

(assert (= (and b!4899553 c!832766) b!4899565))

(assert (= (and b!4899553 (not c!832766)) b!4899558))

(assert (= (and b!4899558 (not res!2092866)) b!4899554))

(assert (= (and b!4899554 res!2092868) b!4899556))

(assert (= (and b!4899556 res!2092865) b!4899564))

(assert (= (and b!4899564 res!2092867) b!4899560))

(assert (= (and b!4899554 (not res!2092872)) b!4899562))

(assert (= (and b!4899562 res!2092869) b!4899566))

(assert (= (and b!4899566 (not res!2092870)) b!4899561))

(assert (= (and b!4899561 (not res!2092871)) b!4899559))

(assert (= (or b!4899557 b!4899556 b!4899566) bm!339907))

(assert (=> b!4899564 m!5906380))

(declare-fun m!5907436 () Bool)

(assert (=> b!4899564 m!5907436))

(assert (=> b!4899564 m!5907436))

(declare-fun m!5907438 () Bool)

(assert (=> b!4899564 m!5907438))

(assert (=> b!4899560 m!5906380))

(declare-fun m!5907440 () Bool)

(assert (=> b!4899560 m!5907440))

(assert (=> d!1574566 m!5906380))

(assert (=> d!1574566 m!5906382))

(assert (=> d!1574566 m!5906390))

(declare-fun m!5907442 () Bool)

(assert (=> d!1574566 m!5907442))

(assert (=> b!4899559 m!5906380))

(assert (=> b!4899559 m!5907440))

(assert (=> bm!339907 m!5906380))

(assert (=> bm!339907 m!5906382))

(assert (=> b!4899555 m!5906380))

(assert (=> b!4899555 m!5907440))

(assert (=> b!4899555 m!5906390))

(assert (=> b!4899555 m!5907440))

(declare-fun m!5907444 () Bool)

(assert (=> b!4899555 m!5907444))

(assert (=> b!4899555 m!5906380))

(assert (=> b!4899555 m!5907436))

(assert (=> b!4899555 m!5907444))

(assert (=> b!4899555 m!5907436))

(declare-fun m!5907446 () Bool)

(assert (=> b!4899555 m!5907446))

(assert (=> b!4899563 m!5906390))

(declare-fun m!5907448 () Bool)

(assert (=> b!4899563 m!5907448))

(assert (=> b!4899561 m!5906380))

(assert (=> b!4899561 m!5907436))

(assert (=> b!4899561 m!5907436))

(assert (=> b!4899561 m!5907438))

(assert (=> b!4898949 d!1574566))

(declare-fun b!4899587 () Bool)

(declare-fun c!832779 () Bool)

(assert (=> b!4899587 (= c!832779 (nullable!4562 (regOne!27024 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun e!3062686 () Regex!13256)

(declare-fun e!3062684 () Regex!13256)

(assert (=> b!4899587 (= e!3062686 e!3062684)))

(declare-fun b!4899588 () Bool)

(declare-fun e!3062687 () Regex!13256)

(assert (=> b!4899588 (= e!3062687 (ite (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (c!832545 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) EmptyExpr!13256 EmptyLang!13256))))

(declare-fun call!339922 () Regex!13256)

(declare-fun b!4899589 () Bool)

(declare-fun call!339923 () Regex!13256)

(assert (=> b!4899589 (= e!3062684 (Union!13256 (Concat!21748 call!339923 (regTwo!27024 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) call!339922))))

(declare-fun b!4899590 () Bool)

(declare-fun e!3062685 () Regex!13256)

(assert (=> b!4899590 (= e!3062685 e!3062686)))

(declare-fun c!832777 () Bool)

(assert (=> b!4899590 (= c!832777 (is-Star!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4899591 () Bool)

(declare-fun call!339921 () Regex!13256)

(assert (=> b!4899591 (= e!3062686 (Concat!21748 call!339921 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4899592 () Bool)

(assert (=> b!4899592 (= e!3062684 (Union!13256 (Concat!21748 call!339923 (regTwo!27024 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) EmptyLang!13256))))

(declare-fun bm!339916 () Bool)

(assert (=> bm!339916 (= call!339923 call!339921)))

(declare-fun b!4899593 () Bool)

(declare-fun call!339924 () Regex!13256)

(assert (=> b!4899593 (= e!3062685 (Union!13256 call!339924 call!339922))))

(declare-fun d!1574568 () Bool)

(declare-fun lt!2009223 () Regex!13256)

(assert (=> d!1574568 (validRegex!5889 lt!2009223)))

(declare-fun e!3062683 () Regex!13256)

(assert (=> d!1574568 (= lt!2009223 e!3062683)))

(declare-fun c!832778 () Bool)

(assert (=> d!1574568 (= c!832778 (or (is-EmptyExpr!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (is-EmptyLang!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (=> d!1574568 (validRegex!5889 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))

(assert (=> d!1574568 (= (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) lt!2009223)))

(declare-fun b!4899594 () Bool)

(declare-fun c!832780 () Bool)

(assert (=> b!4899594 (= c!832780 (is-Union!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> b!4899594 (= e!3062687 e!3062685)))

(declare-fun b!4899595 () Bool)

(assert (=> b!4899595 (= e!3062683 e!3062687)))

(declare-fun c!832781 () Bool)

(assert (=> b!4899595 (= c!832781 (is-ElementMatch!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun bm!339917 () Bool)

(assert (=> bm!339917 (= call!339922 (derivativeStep!3884 (ite c!832780 (regTwo!27025 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (regTwo!27024 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4899596 () Bool)

(assert (=> b!4899596 (= e!3062683 EmptyLang!13256)))

(declare-fun bm!339918 () Bool)

(assert (=> bm!339918 (= call!339924 (derivativeStep!3884 (ite c!832780 (regOne!27025 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (ite c!832777 (reg!13585 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (regOne!27024 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun bm!339919 () Bool)

(assert (=> bm!339919 (= call!339921 call!339924)))

(assert (= (and d!1574568 c!832778) b!4899596))

(assert (= (and d!1574568 (not c!832778)) b!4899595))

(assert (= (and b!4899595 c!832781) b!4899588))

(assert (= (and b!4899595 (not c!832781)) b!4899594))

(assert (= (and b!4899594 c!832780) b!4899593))

(assert (= (and b!4899594 (not c!832780)) b!4899590))

(assert (= (and b!4899590 c!832777) b!4899591))

(assert (= (and b!4899590 (not c!832777)) b!4899587))

(assert (= (and b!4899587 c!832779) b!4899589))

(assert (= (and b!4899587 (not c!832779)) b!4899592))

(assert (= (or b!4899589 b!4899592) bm!339916))

(assert (= (or b!4899591 bm!339916) bm!339919))

(assert (= (or b!4899593 bm!339919) bm!339918))

(assert (= (or b!4899593 b!4899589) bm!339917))

(declare-fun m!5907450 () Bool)

(assert (=> b!4899587 m!5907450))

(declare-fun m!5907452 () Bool)

(assert (=> d!1574568 m!5907452))

(assert (=> d!1574568 m!5906388))

(assert (=> bm!339917 m!5906384))

(declare-fun m!5907454 () Bool)

(assert (=> bm!339917 m!5907454))

(assert (=> bm!339918 m!5906384))

(declare-fun m!5907456 () Bool)

(assert (=> bm!339918 m!5907456))

(assert (=> b!4898949 d!1574568))

(declare-fun d!1574570 () Bool)

(assert (=> d!1574570 (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (h!62876 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> b!4898949 d!1574570))

(assert (=> b!4898949 d!1574504))

(declare-fun d!1574572 () Bool)

(assert (=> d!1574572 (= (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))) (isBalanced!4019 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun bs!1176606 () Bool)

(assert (= bs!1176606 d!1574572))

(declare-fun m!5907458 () Bool)

(assert (=> bs!1176606 m!5907458))

(assert (=> tb!259459 d!1574572))

(declare-fun d!1574574 () Bool)

(declare-fun c!832782 () Bool)

(assert (=> d!1574574 (= c!832782 (is-Node!14749 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun e!3062688 () Bool)

(assert (=> d!1574574 (= (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))) e!3062688)))

(declare-fun b!4899597 () Bool)

(assert (=> b!4899597 (= e!3062688 (inv!72740 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4899598 () Bool)

(declare-fun e!3062689 () Bool)

(assert (=> b!4899598 (= e!3062688 e!3062689)))

(declare-fun res!2092873 () Bool)

(assert (=> b!4899598 (= res!2092873 (not (is-Leaf!24557 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))))))))

(assert (=> b!4899598 (=> res!2092873 e!3062689)))

(declare-fun b!4899599 () Bool)

(assert (=> b!4899599 (= e!3062689 (inv!72741 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (= (and d!1574574 c!832782) b!4899597))

(assert (= (and d!1574574 (not c!832782)) b!4899598))

(assert (= (and b!4899598 (not res!2092873)) b!4899599))

(declare-fun m!5907460 () Bool)

(assert (=> b!4899597 m!5907460))

(declare-fun m!5907462 () Bool)

(assert (=> b!4899599 m!5907462))

(assert (=> b!4898812 d!1574574))

(assert (=> b!4898933 d!1574482))

(assert (=> b!4898933 d!1574488))

(assert (=> b!4898933 d!1574484))

(assert (=> b!4898933 d!1574020))

(declare-fun d!1574576 () Bool)

(assert (=> d!1574576 (dynLambda!22693 lambda!244166 (_1!33560 lt!2008636))))

(assert (=> d!1574576 true))

(declare-fun _$1!11197 () Unit!146503)

(assert (=> d!1574576 (= (choose!35769 lambda!244166 (_1!33560 lt!2008636)) _$1!11197)))

(declare-fun b_lambda!194961 () Bool)

(assert (=> (not b_lambda!194961) (not d!1574576)))

(declare-fun bs!1176607 () Bool)

(assert (= bs!1176607 d!1574576))

(assert (=> bs!1176607 m!5906096))

(assert (=> d!1574122 d!1574576))

(declare-fun d!1574578 () Bool)

(declare-fun choose!35779 (Int) Bool)

(assert (=> d!1574578 (= (Forall!1694 lambda!244166) (choose!35779 lambda!244166))))

(declare-fun bs!1176608 () Bool)

(assert (= bs!1176608 d!1574578))

(declare-fun m!5907464 () Bool)

(assert (=> bs!1176608 m!5907464))

(assert (=> d!1574122 d!1574578))

(declare-fun d!1574580 () Bool)

(declare-fun res!2092874 () Bool)

(declare-fun e!3062690 () Bool)

(assert (=> d!1574580 (=> (not res!2092874) (not e!3062690))))

(assert (=> d!1574580 (= res!2092874 (validRegex!5889 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))))

(assert (=> d!1574580 (= (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165))) e!3062690)))

(declare-fun b!4899600 () Bool)

(declare-fun res!2092875 () Bool)

(assert (=> b!4899600 (=> (not res!2092875) (not e!3062690))))

(assert (=> b!4899600 (= res!2092875 (not (nullable!4562 (regex!8181 (h!62878 (t!366240 rulesArg!165))))))))

(declare-fun b!4899601 () Bool)

(assert (=> b!4899601 (= e!3062690 (not (= (tag!9045 (h!62878 (t!366240 rulesArg!165))) (String!63900 ""))))))

(assert (= (and d!1574580 res!2092874) b!4899600))

(assert (= (and b!4899600 res!2092875) b!4899601))

(declare-fun m!5907466 () Bool)

(assert (=> d!1574580 m!5907466))

(declare-fun m!5907468 () Bool)

(assert (=> b!4899600 m!5907468))

(assert (=> d!1574226 d!1574580))

(declare-fun d!1574582 () Bool)

(assert (=> d!1574582 (= (isDefined!11053 lt!2008885) (not (isEmpty!30304 lt!2008885)))))

(declare-fun bs!1176609 () Bool)

(assert (= bs!1176609 d!1574582))

(declare-fun m!5907470 () Bool)

(assert (=> bs!1176609 m!5907470))

(assert (=> d!1574226 d!1574582))

(assert (=> d!1574226 d!1574484))

(declare-fun d!1574584 () Bool)

(declare-fun lt!2009224 () Bool)

(assert (=> d!1574584 (= lt!2009224 (isEmpty!30306 (list!17745 (_1!33560 lt!2008880))))))

(assert (=> d!1574584 (= lt!2009224 (isEmpty!30311 (c!832544 (_1!33560 lt!2008880))))))

(assert (=> d!1574584 (= (isEmpty!30305 (_1!33560 lt!2008880)) lt!2009224)))

(declare-fun bs!1176610 () Bool)

(assert (= bs!1176610 d!1574584))

(assert (=> bs!1176610 m!5906356))

(assert (=> bs!1176610 m!5906356))

(declare-fun m!5907472 () Bool)

(assert (=> bs!1176610 m!5907472))

(declare-fun m!5907474 () Bool)

(assert (=> bs!1176610 m!5907474))

(assert (=> d!1574226 d!1574584))

(assert (=> d!1574226 d!1574020))

(declare-fun d!1574586 () Bool)

(declare-fun lt!2009225 () tuple2!60514)

(assert (=> d!1574586 (= (tuple2!60513 (list!17745 (_1!33560 lt!2009225)) (list!17745 (_2!33560 lt!2009225))) (findLongestMatch!1654 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(assert (=> d!1574586 (= lt!2009225 (choose!35768 (regex!8181 (h!62878 (t!366240 rulesArg!165))) input!1236))))

(assert (=> d!1574586 (validRegex!5889 (regex!8181 (h!62878 (t!366240 rulesArg!165))))))

(assert (=> d!1574586 (= (findLongestMatchWithZipperSequence!275 (regex!8181 (h!62878 (t!366240 rulesArg!165))) input!1236) lt!2009225)))

(declare-fun bs!1176611 () Bool)

(assert (= bs!1176611 d!1574586))

(assert (=> bs!1176611 m!5907466))

(assert (=> bs!1176611 m!5905562))

(declare-fun m!5907476 () Bool)

(assert (=> bs!1176611 m!5907476))

(assert (=> bs!1176611 m!5905562))

(assert (=> bs!1176611 m!5907228))

(declare-fun m!5907478 () Bool)

(assert (=> bs!1176611 m!5907478))

(declare-fun m!5907480 () Bool)

(assert (=> bs!1176611 m!5907480))

(assert (=> d!1574226 d!1574586))

(declare-fun d!1574588 () Bool)

(assert (=> d!1574588 (= (isDefined!11052 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236))) (not (isEmpty!30303 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236)))))))

(declare-fun bs!1176612 () Bool)

(assert (= bs!1176612 d!1574588))

(assert (=> bs!1176612 m!5906162))

(declare-fun m!5907482 () Bool)

(assert (=> bs!1176612 m!5907482))

(assert (=> d!1574226 d!1574588))

(declare-fun d!1574590 () Bool)

(declare-fun res!2092876 () Bool)

(declare-fun e!3062691 () Bool)

(assert (=> d!1574590 (=> (not res!2092876) (not e!3062691))))

(assert (=> d!1574590 (= res!2092876 (= (csize!29728 (right!41332 (c!832544 input!1236))) (+ (size!37173 (left!41002 (right!41332 (c!832544 input!1236)))) (size!37173 (right!41332 (right!41332 (c!832544 input!1236)))))))))

(assert (=> d!1574590 (= (inv!72740 (right!41332 (c!832544 input!1236))) e!3062691)))

(declare-fun b!4899602 () Bool)

(declare-fun res!2092877 () Bool)

(assert (=> b!4899602 (=> (not res!2092877) (not e!3062691))))

(assert (=> b!4899602 (= res!2092877 (and (not (= (left!41002 (right!41332 (c!832544 input!1236))) Empty!14749)) (not (= (right!41332 (right!41332 (c!832544 input!1236))) Empty!14749))))))

(declare-fun b!4899603 () Bool)

(declare-fun res!2092878 () Bool)

(assert (=> b!4899603 (=> (not res!2092878) (not e!3062691))))

(assert (=> b!4899603 (= res!2092878 (= (cheight!14960 (right!41332 (c!832544 input!1236))) (+ (max!0 (height!1962 (left!41002 (right!41332 (c!832544 input!1236)))) (height!1962 (right!41332 (right!41332 (c!832544 input!1236))))) 1)))))

(declare-fun b!4899604 () Bool)

(assert (=> b!4899604 (= e!3062691 (<= 0 (cheight!14960 (right!41332 (c!832544 input!1236)))))))

(assert (= (and d!1574590 res!2092876) b!4899602))

(assert (= (and b!4899602 res!2092877) b!4899603))

(assert (= (and b!4899603 res!2092878) b!4899604))

(declare-fun m!5907484 () Bool)

(assert (=> d!1574590 m!5907484))

(declare-fun m!5907486 () Bool)

(assert (=> d!1574590 m!5907486))

(declare-fun m!5907488 () Bool)

(assert (=> b!4899603 m!5907488))

(declare-fun m!5907490 () Bool)

(assert (=> b!4899603 m!5907490))

(assert (=> b!4899603 m!5907488))

(assert (=> b!4899603 m!5907490))

(declare-fun m!5907492 () Bool)

(assert (=> b!4899603 m!5907492))

(assert (=> b!4898825 d!1574590))

(declare-fun d!1574592 () Bool)

(declare-fun e!3062692 () Bool)

(assert (=> d!1574592 e!3062692))

(declare-fun res!2092879 () Bool)

(assert (=> d!1574592 (=> (not res!2092879) (not e!3062692))))

(declare-fun lt!2009226 () List!56552)

(assert (=> d!1574592 (= res!2092879 (= (content!10031 lt!2009226) (set.union (content!10031 (list!17747 (left!41002 (c!832544 input!1236)))) (content!10031 (list!17747 (right!41332 (c!832544 input!1236)))))))))

(declare-fun e!3062693 () List!56552)

(assert (=> d!1574592 (= lt!2009226 e!3062693)))

(declare-fun c!832783 () Bool)

(assert (=> d!1574592 (= c!832783 (is-Nil!56428 (list!17747 (left!41002 (c!832544 input!1236)))))))

(assert (=> d!1574592 (= (++!12250 (list!17747 (left!41002 (c!832544 input!1236))) (list!17747 (right!41332 (c!832544 input!1236)))) lt!2009226)))

(declare-fun b!4899608 () Bool)

(assert (=> b!4899608 (= e!3062692 (or (not (= (list!17747 (right!41332 (c!832544 input!1236))) Nil!56428)) (= lt!2009226 (list!17747 (left!41002 (c!832544 input!1236))))))))

(declare-fun b!4899605 () Bool)

(assert (=> b!4899605 (= e!3062693 (list!17747 (right!41332 (c!832544 input!1236))))))

(declare-fun b!4899607 () Bool)

(declare-fun res!2092880 () Bool)

(assert (=> b!4899607 (=> (not res!2092880) (not e!3062692))))

(assert (=> b!4899607 (= res!2092880 (= (size!37169 lt!2009226) (+ (size!37169 (list!17747 (left!41002 (c!832544 input!1236)))) (size!37169 (list!17747 (right!41332 (c!832544 input!1236)))))))))

(declare-fun b!4899606 () Bool)

(assert (=> b!4899606 (= e!3062693 (Cons!56428 (h!62876 (list!17747 (left!41002 (c!832544 input!1236)))) (++!12250 (t!366238 (list!17747 (left!41002 (c!832544 input!1236)))) (list!17747 (right!41332 (c!832544 input!1236))))))))

(assert (= (and d!1574592 c!832783) b!4899605))

(assert (= (and d!1574592 (not c!832783)) b!4899606))

(assert (= (and d!1574592 res!2092879) b!4899607))

(assert (= (and b!4899607 res!2092880) b!4899608))

(declare-fun m!5907494 () Bool)

(assert (=> d!1574592 m!5907494))

(assert (=> d!1574592 m!5906164))

(declare-fun m!5907496 () Bool)

(assert (=> d!1574592 m!5907496))

(assert (=> d!1574592 m!5906166))

(declare-fun m!5907498 () Bool)

(assert (=> d!1574592 m!5907498))

(declare-fun m!5907500 () Bool)

(assert (=> b!4899607 m!5907500))

(assert (=> b!4899607 m!5906164))

(declare-fun m!5907502 () Bool)

(assert (=> b!4899607 m!5907502))

(assert (=> b!4899607 m!5906166))

(declare-fun m!5907504 () Bool)

(assert (=> b!4899607 m!5907504))

(assert (=> b!4899606 m!5906166))

(declare-fun m!5907506 () Bool)

(assert (=> b!4899606 m!5907506))

(assert (=> b!4898787 d!1574592))

(declare-fun b!4899609 () Bool)

(declare-fun e!3062694 () List!56552)

(assert (=> b!4899609 (= e!3062694 Nil!56428)))

(declare-fun d!1574594 () Bool)

(declare-fun c!832784 () Bool)

(assert (=> d!1574594 (= c!832784 (is-Empty!14749 (left!41002 (c!832544 input!1236))))))

(assert (=> d!1574594 (= (list!17747 (left!41002 (c!832544 input!1236))) e!3062694)))

(declare-fun b!4899610 () Bool)

(declare-fun e!3062695 () List!56552)

(assert (=> b!4899610 (= e!3062694 e!3062695)))

(declare-fun c!832785 () Bool)

(assert (=> b!4899610 (= c!832785 (is-Leaf!24557 (left!41002 (c!832544 input!1236))))))

(declare-fun b!4899612 () Bool)

(assert (=> b!4899612 (= e!3062695 (++!12250 (list!17747 (left!41002 (left!41002 (c!832544 input!1236)))) (list!17747 (right!41332 (left!41002 (c!832544 input!1236))))))))

(declare-fun b!4899611 () Bool)

(assert (=> b!4899611 (= e!3062695 (list!17749 (xs!18065 (left!41002 (c!832544 input!1236)))))))

(assert (= (and d!1574594 c!832784) b!4899609))

(assert (= (and d!1574594 (not c!832784)) b!4899610))

(assert (= (and b!4899610 c!832785) b!4899611))

(assert (= (and b!4899610 (not c!832785)) b!4899612))

(declare-fun m!5907508 () Bool)

(assert (=> b!4899612 m!5907508))

(declare-fun m!5907510 () Bool)

(assert (=> b!4899612 m!5907510))

(assert (=> b!4899612 m!5907508))

(assert (=> b!4899612 m!5907510))

(declare-fun m!5907512 () Bool)

(assert (=> b!4899612 m!5907512))

(declare-fun m!5907514 () Bool)

(assert (=> b!4899611 m!5907514))

(assert (=> b!4898787 d!1574594))

(declare-fun b!4899613 () Bool)

(declare-fun e!3062696 () List!56552)

(assert (=> b!4899613 (= e!3062696 Nil!56428)))

(declare-fun d!1574596 () Bool)

(declare-fun c!832786 () Bool)

(assert (=> d!1574596 (= c!832786 (is-Empty!14749 (right!41332 (c!832544 input!1236))))))

(assert (=> d!1574596 (= (list!17747 (right!41332 (c!832544 input!1236))) e!3062696)))

(declare-fun b!4899614 () Bool)

(declare-fun e!3062697 () List!56552)

(assert (=> b!4899614 (= e!3062696 e!3062697)))

(declare-fun c!832787 () Bool)

(assert (=> b!4899614 (= c!832787 (is-Leaf!24557 (right!41332 (c!832544 input!1236))))))

(declare-fun b!4899616 () Bool)

(assert (=> b!4899616 (= e!3062697 (++!12250 (list!17747 (left!41002 (right!41332 (c!832544 input!1236)))) (list!17747 (right!41332 (right!41332 (c!832544 input!1236))))))))

(declare-fun b!4899615 () Bool)

(assert (=> b!4899615 (= e!3062697 (list!17749 (xs!18065 (right!41332 (c!832544 input!1236)))))))

(assert (= (and d!1574596 c!832786) b!4899613))

(assert (= (and d!1574596 (not c!832786)) b!4899614))

(assert (= (and b!4899614 c!832787) b!4899615))

(assert (= (and b!4899614 (not c!832787)) b!4899616))

(declare-fun m!5907516 () Bool)

(assert (=> b!4899616 m!5907516))

(declare-fun m!5907518 () Bool)

(assert (=> b!4899616 m!5907518))

(assert (=> b!4899616 m!5907516))

(assert (=> b!4899616 m!5907518))

(declare-fun m!5907520 () Bool)

(assert (=> b!4899616 m!5907520))

(declare-fun m!5907522 () Bool)

(assert (=> b!4899615 m!5907522))

(assert (=> b!4898787 d!1574596))

(declare-fun d!1574598 () Bool)

(declare-fun res!2092883 () tuple2!60514)

(assert (=> d!1574598 (= (tuple2!60513 (list!17745 (_1!33560 res!2092883)) (list!17745 (_2!33560 res!2092883))) (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun e!3062703 () Bool)

(declare-fun e!3062702 () Bool)

(assert (=> d!1574598 (and (inv!72734 (_1!33560 res!2092883)) e!3062703 (inv!72734 (_2!33560 res!2092883)) e!3062702)))

(assert (=> d!1574598 (= (choose!35768 (regex!8181 (h!62878 rulesArg!165)) input!1236) res!2092883)))

(declare-fun b!4899621 () Bool)

(declare-fun tp!1378405 () Bool)

(assert (=> b!4899621 (= e!3062703 (and (inv!72735 (c!832544 (_1!33560 res!2092883))) tp!1378405))))

(declare-fun b!4899622 () Bool)

(declare-fun tp!1378406 () Bool)

(assert (=> b!4899622 (= e!3062702 (and (inv!72735 (c!832544 (_2!33560 res!2092883))) tp!1378406))))

(assert (= d!1574598 b!4899621))

(assert (= d!1574598 b!4899622))

(assert (=> d!1574598 m!5905562))

(assert (=> d!1574598 m!5905920))

(assert (=> d!1574598 m!5905562))

(declare-fun m!5907524 () Bool)

(assert (=> d!1574598 m!5907524))

(declare-fun m!5907526 () Bool)

(assert (=> d!1574598 m!5907526))

(declare-fun m!5907528 () Bool)

(assert (=> d!1574598 m!5907528))

(declare-fun m!5907530 () Bool)

(assert (=> d!1574598 m!5907530))

(declare-fun m!5907532 () Bool)

(assert (=> b!4899621 m!5907532))

(declare-fun m!5907534 () Bool)

(assert (=> b!4899622 m!5907534))

(assert (=> d!1574106 d!1574598))

(declare-fun d!1574600 () Bool)

(declare-fun lt!2009247 () tuple2!60512)

(assert (=> d!1574600 (= (++!12250 (_1!33559 lt!2009247) (_2!33559 lt!2009247)) (list!17745 input!1236))))

(declare-fun sizeTr!343 (List!56552 Int) Int)

(assert (=> d!1574600 (= lt!2009247 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 0 (list!17745 input!1236) (list!17745 input!1236) (sizeTr!343 (list!17745 input!1236) 0)))))

(declare-fun lt!2009250 () Unit!146503)

(declare-fun lt!2009249 () Unit!146503)

(assert (=> d!1574600 (= lt!2009250 lt!2009249)))

(declare-fun lt!2009245 () List!56552)

(declare-fun lt!2009244 () Int)

(assert (=> d!1574600 (= (sizeTr!343 lt!2009245 lt!2009244) (+ (size!37169 lt!2009245) lt!2009244))))

(declare-fun lemmaSizeTrEqualsSize!342 (List!56552 Int) Unit!146503)

(assert (=> d!1574600 (= lt!2009249 (lemmaSizeTrEqualsSize!342 lt!2009245 lt!2009244))))

(assert (=> d!1574600 (= lt!2009244 0)))

(assert (=> d!1574600 (= lt!2009245 Nil!56428)))

(declare-fun lt!2009248 () Unit!146503)

(declare-fun lt!2009243 () Unit!146503)

(assert (=> d!1574600 (= lt!2009248 lt!2009243)))

(declare-fun lt!2009246 () Int)

(assert (=> d!1574600 (= (sizeTr!343 (list!17745 input!1236) lt!2009246) (+ (size!37169 (list!17745 input!1236)) lt!2009246))))

(assert (=> d!1574600 (= lt!2009243 (lemmaSizeTrEqualsSize!342 (list!17745 input!1236) lt!2009246))))

(assert (=> d!1574600 (= lt!2009246 0)))

(assert (=> d!1574600 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574600 (= (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) (list!17745 input!1236)) lt!2009247)))

(declare-fun bs!1176613 () Bool)

(assert (= bs!1176613 d!1574600))

(assert (=> bs!1176613 m!5905562))

(declare-fun m!5907536 () Bool)

(assert (=> bs!1176613 m!5907536))

(assert (=> bs!1176613 m!5905562))

(assert (=> bs!1176613 m!5905562))

(declare-fun m!5907538 () Bool)

(assert (=> bs!1176613 m!5907538))

(declare-fun m!5907540 () Bool)

(assert (=> bs!1176613 m!5907540))

(assert (=> bs!1176613 m!5905562))

(assert (=> bs!1176613 m!5907538))

(declare-fun m!5907542 () Bool)

(assert (=> bs!1176613 m!5907542))

(assert (=> bs!1176613 m!5905562))

(assert (=> bs!1176613 m!5905900))

(declare-fun m!5907544 () Bool)

(assert (=> bs!1176613 m!5907544))

(assert (=> bs!1176613 m!5905982))

(assert (=> bs!1176613 m!5905562))

(declare-fun m!5907546 () Bool)

(assert (=> bs!1176613 m!5907546))

(declare-fun m!5907548 () Bool)

(assert (=> bs!1176613 m!5907548))

(declare-fun m!5907550 () Bool)

(assert (=> bs!1176613 m!5907550))

(assert (=> d!1574106 d!1574600))

(declare-fun c!832793 () Bool)

(declare-fun bm!339926 () Bool)

(declare-fun call!339931 () Bool)

(declare-fun c!832792 () Bool)

(assert (=> bm!339926 (= call!339931 (validRegex!5889 (ite c!832793 (reg!13585 (regex!8181 (h!62878 rulesArg!165))) (ite c!832792 (regOne!27025 (regex!8181 (h!62878 rulesArg!165))) (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))))))

(declare-fun b!4899641 () Bool)

(declare-fun e!3062721 () Bool)

(declare-fun call!339933 () Bool)

(assert (=> b!4899641 (= e!3062721 call!339933)))

(declare-fun b!4899642 () Bool)

(declare-fun e!3062723 () Bool)

(declare-fun e!3062722 () Bool)

(assert (=> b!4899642 (= e!3062723 e!3062722)))

(declare-fun res!2092895 () Bool)

(assert (=> b!4899642 (= res!2092895 (not (nullable!4562 (reg!13585 (regex!8181 (h!62878 rulesArg!165))))))))

(assert (=> b!4899642 (=> (not res!2092895) (not e!3062722))))

(declare-fun d!1574602 () Bool)

(declare-fun res!2092897 () Bool)

(declare-fun e!3062724 () Bool)

(assert (=> d!1574602 (=> res!2092897 e!3062724)))

(assert (=> d!1574602 (= res!2092897 (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574602 (= (validRegex!5889 (regex!8181 (h!62878 rulesArg!165))) e!3062724)))

(declare-fun b!4899643 () Bool)

(declare-fun res!2092894 () Bool)

(declare-fun e!3062718 () Bool)

(assert (=> b!4899643 (=> (not res!2092894) (not e!3062718))))

(assert (=> b!4899643 (= res!2092894 call!339933)))

(declare-fun e!3062719 () Bool)

(assert (=> b!4899643 (= e!3062719 e!3062718)))

(declare-fun bm!339927 () Bool)

(assert (=> bm!339927 (= call!339933 call!339931)))

(declare-fun b!4899644 () Bool)

(assert (=> b!4899644 (= e!3062722 call!339931)))

(declare-fun b!4899645 () Bool)

(declare-fun e!3062720 () Bool)

(assert (=> b!4899645 (= e!3062720 e!3062721)))

(declare-fun res!2092896 () Bool)

(assert (=> b!4899645 (=> (not res!2092896) (not e!3062721))))

(declare-fun call!339932 () Bool)

(assert (=> b!4899645 (= res!2092896 call!339932)))

(declare-fun b!4899646 () Bool)

(assert (=> b!4899646 (= e!3062724 e!3062723)))

(assert (=> b!4899646 (= c!832793 (is-Star!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun bm!339928 () Bool)

(assert (=> bm!339928 (= call!339932 (validRegex!5889 (ite c!832792 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165))) (regOne!27024 (regex!8181 (h!62878 rulesArg!165))))))))

(declare-fun b!4899647 () Bool)

(assert (=> b!4899647 (= e!3062718 call!339932)))

(declare-fun b!4899648 () Bool)

(declare-fun res!2092898 () Bool)

(assert (=> b!4899648 (=> res!2092898 e!3062720)))

(assert (=> b!4899648 (= res!2092898 (not (is-Concat!21748 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> b!4899648 (= e!3062719 e!3062720)))

(declare-fun b!4899649 () Bool)

(assert (=> b!4899649 (= e!3062723 e!3062719)))

(assert (=> b!4899649 (= c!832792 (is-Union!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (= (and d!1574602 (not res!2092897)) b!4899646))

(assert (= (and b!4899646 c!832793) b!4899642))

(assert (= (and b!4899646 (not c!832793)) b!4899649))

(assert (= (and b!4899642 res!2092895) b!4899644))

(assert (= (and b!4899649 c!832792) b!4899643))

(assert (= (and b!4899649 (not c!832792)) b!4899648))

(assert (= (and b!4899643 res!2092894) b!4899647))

(assert (= (and b!4899648 (not res!2092898)) b!4899645))

(assert (= (and b!4899645 res!2092896) b!4899641))

(assert (= (or b!4899647 b!4899645) bm!339928))

(assert (= (or b!4899643 b!4899641) bm!339927))

(assert (= (or b!4899644 bm!339927) bm!339926))

(declare-fun m!5907552 () Bool)

(assert (=> bm!339926 m!5907552))

(declare-fun m!5907554 () Bool)

(assert (=> b!4899642 m!5907554))

(declare-fun m!5907556 () Bool)

(assert (=> bm!339928 m!5907556))

(assert (=> d!1574106 d!1574602))

(assert (=> d!1574106 d!1574020))

(declare-fun d!1574604 () Bool)

(assert (=> d!1574604 (= (list!17745 (_1!33560 lt!2008717)) (list!17747 (c!832544 (_1!33560 lt!2008717))))))

(declare-fun bs!1176614 () Bool)

(assert (= bs!1176614 d!1574604))

(declare-fun m!5907558 () Bool)

(assert (=> bs!1176614 m!5907558))

(assert (=> d!1574106 d!1574604))

(declare-fun d!1574606 () Bool)

(assert (=> d!1574606 (= (list!17745 (_2!33560 lt!2008717)) (list!17747 (c!832544 (_2!33560 lt!2008717))))))

(declare-fun bs!1176615 () Bool)

(assert (= bs!1176615 d!1574606))

(declare-fun m!5907560 () Bool)

(assert (=> bs!1176615 m!5907560))

(assert (=> d!1574106 d!1574606))

(declare-fun d!1574608 () Bool)

(assert (=> d!1574608 (= (isEmpty!30303 lt!2008705) (not (is-Some!14038 lt!2008705)))))

(assert (=> d!1574094 d!1574608))

(declare-fun d!1574610 () Bool)

(assert (=> d!1574610 (= (isEmpty!30306 (_1!33559 lt!2008703)) (is-Nil!56428 (_1!33559 lt!2008703)))))

(assert (=> d!1574094 d!1574610))

(assert (=> d!1574094 d!1574600))

(assert (=> d!1574094 d!1574098))

(declare-fun d!1574612 () Bool)

(declare-fun res!2092899 () Bool)

(declare-fun e!3062725 () Bool)

(assert (=> d!1574612 (=> (not res!2092899) (not e!3062725))))

(assert (=> d!1574612 (= res!2092899 (= (csize!29728 (left!41002 (c!832544 input!1236))) (+ (size!37173 (left!41002 (left!41002 (c!832544 input!1236)))) (size!37173 (right!41332 (left!41002 (c!832544 input!1236)))))))))

(assert (=> d!1574612 (= (inv!72740 (left!41002 (c!832544 input!1236))) e!3062725)))

(declare-fun b!4899650 () Bool)

(declare-fun res!2092900 () Bool)

(assert (=> b!4899650 (=> (not res!2092900) (not e!3062725))))

(assert (=> b!4899650 (= res!2092900 (and (not (= (left!41002 (left!41002 (c!832544 input!1236))) Empty!14749)) (not (= (right!41332 (left!41002 (c!832544 input!1236))) Empty!14749))))))

(declare-fun b!4899651 () Bool)

(declare-fun res!2092901 () Bool)

(assert (=> b!4899651 (=> (not res!2092901) (not e!3062725))))

(assert (=> b!4899651 (= res!2092901 (= (cheight!14960 (left!41002 (c!832544 input!1236))) (+ (max!0 (height!1962 (left!41002 (left!41002 (c!832544 input!1236)))) (height!1962 (right!41332 (left!41002 (c!832544 input!1236))))) 1)))))

(declare-fun b!4899652 () Bool)

(assert (=> b!4899652 (= e!3062725 (<= 0 (cheight!14960 (left!41002 (c!832544 input!1236)))))))

(assert (= (and d!1574612 res!2092899) b!4899650))

(assert (= (and b!4899650 res!2092900) b!4899651))

(assert (= (and b!4899651 res!2092901) b!4899652))

(declare-fun m!5907562 () Bool)

(assert (=> d!1574612 m!5907562))

(declare-fun m!5907564 () Bool)

(assert (=> d!1574612 m!5907564))

(declare-fun m!5907566 () Bool)

(assert (=> b!4899651 m!5907566))

(declare-fun m!5907568 () Bool)

(assert (=> b!4899651 m!5907568))

(assert (=> b!4899651 m!5907566))

(assert (=> b!4899651 m!5907568))

(declare-fun m!5907570 () Bool)

(assert (=> b!4899651 m!5907570))

(assert (=> b!4898822 d!1574612))

(assert (=> bs!1176549 d!1574098))

(assert (=> b!4898685 d!1574558))

(declare-fun d!1574614 () Bool)

(assert (=> d!1574614 (= (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))) (v!49998 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))))))

(assert (=> b!4898685 d!1574614))

(declare-fun d!1574616 () Bool)

(declare-fun lt!2009251 () Option!14039)

(assert (=> d!1574616 (= lt!2009251 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun e!3062726 () Option!14039)

(assert (=> d!1574616 (= lt!2009251 e!3062726)))

(declare-fun c!832794 () Bool)

(assert (=> d!1574616 (= c!832794 (and (is-Cons!56430 (t!366240 (t!366240 rulesArg!165))) (is-Nil!56430 (t!366240 (t!366240 (t!366240 rulesArg!165))))))))

(declare-fun lt!2009253 () Unit!146503)

(declare-fun lt!2009254 () Unit!146503)

(assert (=> d!1574616 (= lt!2009253 lt!2009254)))

(assert (=> d!1574616 (isPrefix!4901 (list!17745 input!1236) (list!17745 input!1236))))

(assert (=> d!1574616 (= lt!2009254 (lemmaIsPrefixRefl!3298 (list!17745 input!1236) (list!17745 input!1236)))))

(assert (=> d!1574616 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 rulesArg!165)))))

(assert (=> d!1574616 (= (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236)) lt!2009251)))

(declare-fun bm!339929 () Bool)

(declare-fun call!339934 () Option!14039)

(assert (=> bm!339929 (= call!339934 (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(declare-fun b!4899653 () Bool)

(assert (=> b!4899653 (= e!3062726 call!339934)))

(declare-fun b!4899654 () Bool)

(declare-fun lt!2009255 () Option!14039)

(declare-fun lt!2009252 () Option!14039)

(assert (=> b!4899654 (= e!3062726 (ite (and (is-None!14038 lt!2009255) (is-None!14038 lt!2009252)) None!14038 (ite (is-None!14038 lt!2009252) lt!2009255 (ite (is-None!14038 lt!2009255) lt!2009252 (ite (>= (size!37167 (_1!33556 (v!49998 lt!2009255))) (size!37167 (_1!33556 (v!49998 lt!2009252)))) lt!2009255 lt!2009252)))))))

(assert (=> b!4899654 (= lt!2009255 call!339934)))

(assert (=> b!4899654 (= lt!2009252 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(assert (= (and d!1574616 c!832794) b!4899653))

(assert (= (and d!1574616 (not c!832794)) b!4899654))

(assert (= (or b!4899653 b!4899654) bm!339929))

(assert (=> d!1574616 m!5905562))

(assert (=> d!1574616 m!5906028))

(assert (=> d!1574616 m!5905562))

(assert (=> d!1574616 m!5905562))

(assert (=> d!1574616 m!5906130))

(assert (=> d!1574616 m!5905562))

(assert (=> d!1574616 m!5905562))

(assert (=> d!1574616 m!5906132))

(assert (=> d!1574616 m!5906008))

(assert (=> bm!339929 m!5905562))

(declare-fun m!5907572 () Bool)

(assert (=> bm!339929 m!5907572))

(assert (=> b!4899654 m!5905562))

(declare-fun m!5907574 () Bool)

(assert (=> b!4899654 m!5907574))

(assert (=> b!4898685 d!1574616))

(assert (=> b!4898685 d!1574020))

(declare-fun d!1574618 () Bool)

(declare-fun lt!2009256 () Int)

(assert (=> d!1574618 (>= lt!2009256 0)))

(declare-fun e!3062727 () Int)

(assert (=> d!1574618 (= lt!2009256 e!3062727)))

(declare-fun c!832795 () Bool)

(assert (=> d!1574618 (= c!832795 (is-Nil!56428 (_1!33559 lt!2008805)))))

(assert (=> d!1574618 (= (size!37169 (_1!33559 lt!2008805)) lt!2009256)))

(declare-fun b!4899655 () Bool)

(assert (=> b!4899655 (= e!3062727 0)))

(declare-fun b!4899656 () Bool)

(assert (=> b!4899656 (= e!3062727 (+ 1 (size!37169 (t!366238 (_1!33559 lt!2008805)))))))

(assert (= (and d!1574618 c!832795) b!4899655))

(assert (= (and d!1574618 (not c!832795)) b!4899656))

(declare-fun m!5907576 () Bool)

(assert (=> b!4899656 m!5907576))

(assert (=> b!4898736 d!1574618))

(assert (=> b!4898736 d!1574128))

(declare-fun d!1574620 () Bool)

(assert (=> d!1574620 (= (isDefined!11052 lt!2008851) (not (isEmpty!30303 lt!2008851)))))

(declare-fun bs!1176616 () Bool)

(assert (= bs!1176616 d!1574620))

(assert (=> bs!1176616 m!5906244))

(assert (=> b!4898828 d!1574620))

(assert (=> b!4898953 d!1574570))

(declare-fun d!1574622 () Bool)

(declare-fun c!832796 () Bool)

(assert (=> d!1574622 (= c!832796 (is-Node!14749 (left!41002 (left!41002 (c!832544 input!1236)))))))

(declare-fun e!3062728 () Bool)

(assert (=> d!1574622 (= (inv!72735 (left!41002 (left!41002 (c!832544 input!1236)))) e!3062728)))

(declare-fun b!4899657 () Bool)

(assert (=> b!4899657 (= e!3062728 (inv!72740 (left!41002 (left!41002 (c!832544 input!1236)))))))

(declare-fun b!4899658 () Bool)

(declare-fun e!3062729 () Bool)

(assert (=> b!4899658 (= e!3062728 e!3062729)))

(declare-fun res!2092902 () Bool)

(assert (=> b!4899658 (= res!2092902 (not (is-Leaf!24557 (left!41002 (left!41002 (c!832544 input!1236))))))))

(assert (=> b!4899658 (=> res!2092902 e!3062729)))

(declare-fun b!4899659 () Bool)

(assert (=> b!4899659 (= e!3062729 (inv!72741 (left!41002 (left!41002 (c!832544 input!1236)))))))

(assert (= (and d!1574622 c!832796) b!4899657))

(assert (= (and d!1574622 (not c!832796)) b!4899658))

(assert (= (and b!4899658 (not res!2092902)) b!4899659))

(declare-fun m!5907578 () Bool)

(assert (=> b!4899657 m!5907578))

(declare-fun m!5907580 () Bool)

(assert (=> b!4899659 m!5907580))

(assert (=> b!4898981 d!1574622))

(declare-fun d!1574624 () Bool)

(declare-fun c!832797 () Bool)

(assert (=> d!1574624 (= c!832797 (is-Node!14749 (right!41332 (left!41002 (c!832544 input!1236)))))))

(declare-fun e!3062730 () Bool)

(assert (=> d!1574624 (= (inv!72735 (right!41332 (left!41002 (c!832544 input!1236)))) e!3062730)))

(declare-fun b!4899660 () Bool)

(assert (=> b!4899660 (= e!3062730 (inv!72740 (right!41332 (left!41002 (c!832544 input!1236)))))))

(declare-fun b!4899661 () Bool)

(declare-fun e!3062731 () Bool)

(assert (=> b!4899661 (= e!3062730 e!3062731)))

(declare-fun res!2092903 () Bool)

(assert (=> b!4899661 (= res!2092903 (not (is-Leaf!24557 (right!41332 (left!41002 (c!832544 input!1236))))))))

(assert (=> b!4899661 (=> res!2092903 e!3062731)))

(declare-fun b!4899662 () Bool)

(assert (=> b!4899662 (= e!3062731 (inv!72741 (right!41332 (left!41002 (c!832544 input!1236)))))))

(assert (= (and d!1574624 c!832797) b!4899660))

(assert (= (and d!1574624 (not c!832797)) b!4899661))

(assert (= (and b!4899661 (not res!2092903)) b!4899662))

(declare-fun m!5907582 () Bool)

(assert (=> b!4899660 m!5907582))

(declare-fun m!5907584 () Bool)

(assert (=> b!4899662 m!5907584))

(assert (=> b!4898981 d!1574624))

(declare-fun d!1574626 () Bool)

(assert (=> d!1574626 (= (apply!13547 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33560 lt!2008880)) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (_1!33560 lt!2008880)))))

(declare-fun b_lambda!194963 () Bool)

(assert (=> (not b_lambda!194963) (not d!1574626)))

(declare-fun t!366353 () Bool)

(declare-fun tb!259553 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366353) tb!259553))

(declare-fun result!323212 () Bool)

(assert (=> tb!259553 (= result!323212 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (_1!33560 lt!2008880))))))

(declare-fun m!5907586 () Bool)

(assert (=> tb!259553 m!5907586))

(assert (=> d!1574626 t!366353))

(declare-fun b_and!345755 () Bool)

(assert (= b_and!345749 (and (=> t!366353 result!323212) b_and!345755)))

(declare-fun t!366355 () Bool)

(declare-fun tb!259555 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366355) tb!259555))

(declare-fun result!323214 () Bool)

(assert (= result!323214 result!323212))

(assert (=> d!1574626 t!366355))

(declare-fun b_and!345757 () Bool)

(assert (= b_and!345751 (and (=> t!366355 result!323214) b_and!345757)))

(declare-fun t!366357 () Bool)

(declare-fun tb!259557 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366357) tb!259557))

(declare-fun result!323216 () Bool)

(assert (= result!323216 result!323212))

(assert (=> d!1574626 t!366357))

(declare-fun b_and!345759 () Bool)

(assert (= b_and!345753 (and (=> t!366357 result!323216) b_and!345759)))

(declare-fun m!5907588 () Bool)

(assert (=> d!1574626 m!5907588))

(assert (=> b!4898937 d!1574626))

(declare-fun d!1574628 () Bool)

(assert (=> d!1574628 (dynLambda!22693 lambda!244184 (_1!33560 lt!2008880))))

(declare-fun lt!2009257 () Unit!146503)

(assert (=> d!1574628 (= lt!2009257 (choose!35769 lambda!244184 (_1!33560 lt!2008880)))))

(assert (=> d!1574628 (Forall!1694 lambda!244184)))

(assert (=> d!1574628 (= (ForallOf!1140 lambda!244184 (_1!33560 lt!2008880)) lt!2009257)))

(declare-fun b_lambda!194965 () Bool)

(assert (=> (not b_lambda!194965) (not d!1574628)))

(declare-fun bs!1176617 () Bool)

(assert (= bs!1176617 d!1574628))

(declare-fun m!5907590 () Bool)

(assert (=> bs!1176617 m!5907590))

(declare-fun m!5907592 () Bool)

(assert (=> bs!1176617 m!5907592))

(declare-fun m!5907594 () Bool)

(assert (=> bs!1176617 m!5907594))

(assert (=> b!4898937 d!1574628))

(declare-fun d!1574630 () Bool)

(declare-fun e!3062733 () Bool)

(assert (=> d!1574630 e!3062733))

(declare-fun res!2092904 () Bool)

(assert (=> d!1574630 (=> res!2092904 e!3062733)))

(assert (=> d!1574630 (= res!2092904 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))

(declare-fun lt!2009258 () Unit!146503)

(assert (=> d!1574630 (= lt!2009258 (choose!35770 (regex!8181 (h!62878 (t!366240 rulesArg!165))) lt!2008888))))

(assert (=> d!1574630 (validRegex!5889 (regex!8181 (h!62878 (t!366240 rulesArg!165))))))

(assert (=> d!1574630 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 (t!366240 rulesArg!165))) lt!2008888) lt!2009258)))

(declare-fun b!4899663 () Bool)

(assert (=> b!4899663 (= e!3062733 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))

(assert (= (and d!1574630 (not res!2092904)) b!4899663))

(assert (=> d!1574630 m!5905738))

(assert (=> d!1574630 m!5906332))

(assert (=> d!1574630 m!5905738))

(assert (=> d!1574630 m!5906332))

(assert (=> d!1574630 m!5906334))

(assert (=> d!1574630 m!5907466))

(assert (=> d!1574630 m!5906368))

(declare-fun m!5907596 () Bool)

(assert (=> d!1574630 m!5907596))

(assert (=> b!4899663 m!5905738))

(assert (=> b!4899663 m!5906332))

(assert (=> b!4899663 m!5905738))

(assert (=> b!4899663 m!5906332))

(assert (=> b!4899663 m!5906334))

(assert (=> b!4899663 m!5906336))

(assert (=> b!4898937 d!1574630))

(declare-fun b!4899664 () Bool)

(declare-fun c!832802 () Bool)

(declare-fun call!339939 () Bool)

(assert (=> b!4899664 (= c!832802 call!339939)))

(declare-fun lt!2009280 () Unit!146503)

(declare-fun lt!2009265 () Unit!146503)

(assert (=> b!4899664 (= lt!2009280 lt!2009265)))

(assert (=> b!4899664 (= lt!2008888 Nil!56428)))

(declare-fun call!339936 () Unit!146503)

(assert (=> b!4899664 (= lt!2009265 call!339936)))

(declare-fun lt!2009275 () Unit!146503)

(declare-fun lt!2009261 () Unit!146503)

(assert (=> b!4899664 (= lt!2009275 lt!2009261)))

(declare-fun call!339940 () Bool)

(assert (=> b!4899664 call!339940))

(declare-fun call!339937 () Unit!146503)

(assert (=> b!4899664 (= lt!2009261 call!339937)))

(declare-fun e!3062740 () tuple2!60512)

(declare-fun e!3062741 () tuple2!60512)

(assert (=> b!4899664 (= e!3062740 e!3062741)))

(declare-fun b!4899665 () Bool)

(declare-fun e!3062739 () tuple2!60512)

(declare-fun e!3062737 () tuple2!60512)

(assert (=> b!4899665 (= e!3062739 e!3062737)))

(declare-fun lt!2009281 () tuple2!60512)

(declare-fun call!339935 () tuple2!60512)

(assert (=> b!4899665 (= lt!2009281 call!339935)))

(declare-fun c!832798 () Bool)

(assert (=> b!4899665 (= c!832798 (isEmpty!30306 (_1!33559 lt!2009281)))))

(declare-fun bm!339930 () Bool)

(declare-fun call!339938 () List!56552)

(assert (=> bm!339930 (= call!339938 (tail!9608 lt!2008888))))

(declare-fun bm!339931 () Bool)

(assert (=> bm!339931 (= call!339939 (nullable!4562 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))))

(declare-fun b!4899666 () Bool)

(assert (=> b!4899666 (= e!3062741 (tuple2!60513 Nil!56428 lt!2008888))))

(declare-fun b!4899668 () Bool)

(declare-fun e!3062736 () tuple2!60512)

(assert (=> b!4899668 (= e!3062736 e!3062740)))

(declare-fun c!832799 () Bool)

(assert (=> b!4899668 (= c!832799 (= (size!37169 Nil!56428) (size!37169 lt!2008888)))))

(declare-fun b!4899669 () Bool)

(assert (=> b!4899669 (= e!3062737 (tuple2!60513 Nil!56428 lt!2008888))))

(declare-fun b!4899670 () Bool)

(declare-fun e!3062734 () Unit!146503)

(declare-fun Unit!146522 () Unit!146503)

(assert (=> b!4899670 (= e!3062734 Unit!146522)))

(declare-fun lt!2009272 () Unit!146503)

(assert (=> b!4899670 (= lt!2009272 call!339937)))

(assert (=> b!4899670 call!339940))

(declare-fun lt!2009286 () Unit!146503)

(assert (=> b!4899670 (= lt!2009286 lt!2009272)))

(declare-fun lt!2009264 () Unit!146503)

(assert (=> b!4899670 (= lt!2009264 call!339936)))

(assert (=> b!4899670 (= lt!2008888 Nil!56428)))

(declare-fun lt!2009276 () Unit!146503)

(assert (=> b!4899670 (= lt!2009276 lt!2009264)))

(assert (=> b!4899670 false))

(declare-fun b!4899671 () Bool)

(declare-fun c!832801 () Bool)

(assert (=> b!4899671 (= c!832801 call!339939)))

(declare-fun lt!2009260 () Unit!146503)

(declare-fun lt!2009273 () Unit!146503)

(assert (=> b!4899671 (= lt!2009260 lt!2009273)))

(declare-fun lt!2009269 () C!26710)

(declare-fun lt!2009278 () List!56552)

(assert (=> b!4899671 (= (++!12250 (++!12250 Nil!56428 (Cons!56428 lt!2009269 Nil!56428)) lt!2009278) lt!2008888)))

(assert (=> b!4899671 (= lt!2009273 (lemmaMoveElementToOtherListKeepsConcatEq!1336 Nil!56428 lt!2009269 lt!2009278 lt!2008888))))

(assert (=> b!4899671 (= lt!2009278 (tail!9608 lt!2008888))))

(assert (=> b!4899671 (= lt!2009269 (head!10462 lt!2008888))))

(declare-fun lt!2009284 () Unit!146503)

(declare-fun lt!2009279 () Unit!146503)

(assert (=> b!4899671 (= lt!2009284 lt!2009279)))

(assert (=> b!4899671 (isPrefix!4901 (++!12250 Nil!56428 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008888 Nil!56428)) Nil!56428)) lt!2008888)))

(assert (=> b!4899671 (= lt!2009279 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 lt!2008888))))

(declare-fun lt!2009263 () Unit!146503)

(declare-fun lt!2009259 () Unit!146503)

(assert (=> b!4899671 (= lt!2009263 lt!2009259)))

(assert (=> b!4899671 (= lt!2009259 (lemmaAddHeadSuffixToPrefixStillPrefix!718 Nil!56428 lt!2008888))))

(declare-fun lt!2009282 () List!56552)

(assert (=> b!4899671 (= lt!2009282 (++!12250 Nil!56428 (Cons!56428 (head!10462 lt!2008888) Nil!56428)))))

(declare-fun lt!2009262 () Unit!146503)

(assert (=> b!4899671 (= lt!2009262 e!3062734)))

(declare-fun c!832803 () Bool)

(assert (=> b!4899671 (= c!832803 (= (size!37169 Nil!56428) (size!37169 lt!2008888)))))

(declare-fun lt!2009268 () Unit!146503)

(declare-fun lt!2009285 () Unit!146503)

(assert (=> b!4899671 (= lt!2009268 lt!2009285)))

(assert (=> b!4899671 (<= (size!37169 Nil!56428) (size!37169 lt!2008888))))

(assert (=> b!4899671 (= lt!2009285 (lemmaIsPrefixThenSmallerEqSize!630 Nil!56428 lt!2008888))))

(assert (=> b!4899671 (= e!3062740 e!3062739)))

(declare-fun b!4899672 () Bool)

(assert (=> b!4899672 (= e!3062739 call!339935)))

(declare-fun b!4899673 () Bool)

(declare-fun e!3062738 () Bool)

(declare-fun e!3062735 () Bool)

(assert (=> b!4899673 (= e!3062738 e!3062735)))

(declare-fun res!2092905 () Bool)

(assert (=> b!4899673 (=> res!2092905 e!3062735)))

(declare-fun lt!2009277 () tuple2!60512)

(assert (=> b!4899673 (= res!2092905 (isEmpty!30306 (_1!33559 lt!2009277)))))

(declare-fun call!339942 () Regex!13256)

(declare-fun bm!339932 () Bool)

(assert (=> bm!339932 (= call!339935 (findLongestMatchInner!1760 call!339942 lt!2009282 (+ (size!37169 Nil!56428) 1) call!339938 lt!2008888 (size!37169 lt!2008888)))))

(declare-fun bm!339933 () Bool)

(assert (=> bm!339933 (= call!339937 (lemmaIsPrefixRefl!3298 lt!2008888 lt!2008888))))

(declare-fun bm!339934 () Bool)

(assert (=> bm!339934 (= call!339940 (isPrefix!4901 lt!2008888 lt!2008888))))

(declare-fun b!4899667 () Bool)

(assert (=> b!4899667 (= e!3062741 (tuple2!60513 Nil!56428 Nil!56428))))

(declare-fun d!1574632 () Bool)

(assert (=> d!1574632 e!3062738))

(declare-fun res!2092906 () Bool)

(assert (=> d!1574632 (=> (not res!2092906) (not e!3062738))))

(assert (=> d!1574632 (= res!2092906 (= (++!12250 (_1!33559 lt!2009277) (_2!33559 lt!2009277)) lt!2008888))))

(assert (=> d!1574632 (= lt!2009277 e!3062736)))

(declare-fun c!832800 () Bool)

(assert (=> d!1574632 (= c!832800 (lostCause!1092 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))))

(declare-fun lt!2009267 () Unit!146503)

(declare-fun Unit!146523 () Unit!146503)

(assert (=> d!1574632 (= lt!2009267 Unit!146523)))

(assert (=> d!1574632 (= (getSuffix!2893 lt!2008888 Nil!56428) lt!2008888)))

(declare-fun lt!2009266 () Unit!146503)

(declare-fun lt!2009271 () Unit!146503)

(assert (=> d!1574632 (= lt!2009266 lt!2009271)))

(declare-fun lt!2009274 () List!56552)

(assert (=> d!1574632 (= lt!2008888 lt!2009274)))

(assert (=> d!1574632 (= lt!2009271 (lemmaSamePrefixThenSameSuffix!2309 Nil!56428 lt!2008888 Nil!56428 lt!2009274 lt!2008888))))

(assert (=> d!1574632 (= lt!2009274 (getSuffix!2893 lt!2008888 Nil!56428))))

(declare-fun lt!2009283 () Unit!146503)

(declare-fun lt!2009270 () Unit!146503)

(assert (=> d!1574632 (= lt!2009283 lt!2009270)))

(assert (=> d!1574632 (isPrefix!4901 Nil!56428 (++!12250 Nil!56428 lt!2008888))))

(assert (=> d!1574632 (= lt!2009270 (lemmaConcatTwoListThenFirstIsPrefix!3129 Nil!56428 lt!2008888))))

(assert (=> d!1574632 (validRegex!5889 (regex!8181 (h!62878 (t!366240 rulesArg!165))))))

(assert (=> d!1574632 (= (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)) lt!2009277)))

(declare-fun bm!339935 () Bool)

(assert (=> bm!339935 (= call!339936 (lemmaIsPrefixSameLengthThenSameList!1064 lt!2008888 Nil!56428 lt!2008888))))

(declare-fun b!4899674 () Bool)

(declare-fun Unit!146524 () Unit!146503)

(assert (=> b!4899674 (= e!3062734 Unit!146524)))

(declare-fun b!4899675 () Bool)

(assert (=> b!4899675 (= e!3062736 (tuple2!60513 Nil!56428 lt!2008888))))

(declare-fun b!4899676 () Bool)

(assert (=> b!4899676 (= e!3062735 (>= (size!37169 (_1!33559 lt!2009277)) (size!37169 Nil!56428)))))

(declare-fun bm!339936 () Bool)

(declare-fun call!339941 () C!26710)

(assert (=> bm!339936 (= call!339941 (head!10462 lt!2008888))))

(declare-fun bm!339937 () Bool)

(assert (=> bm!339937 (= call!339942 (derivativeStep!3884 (regex!8181 (h!62878 (t!366240 rulesArg!165))) call!339941))))

(declare-fun b!4899677 () Bool)

(assert (=> b!4899677 (= e!3062737 lt!2009281)))

(assert (= (and d!1574632 c!832800) b!4899675))

(assert (= (and d!1574632 (not c!832800)) b!4899668))

(assert (= (and b!4899668 c!832799) b!4899664))

(assert (= (and b!4899668 (not c!832799)) b!4899671))

(assert (= (and b!4899664 c!832802) b!4899667))

(assert (= (and b!4899664 (not c!832802)) b!4899666))

(assert (= (and b!4899671 c!832803) b!4899670))

(assert (= (and b!4899671 (not c!832803)) b!4899674))

(assert (= (and b!4899671 c!832801) b!4899665))

(assert (= (and b!4899671 (not c!832801)) b!4899672))

(assert (= (and b!4899665 c!832798) b!4899669))

(assert (= (and b!4899665 (not c!832798)) b!4899677))

(assert (= (or b!4899665 b!4899672) bm!339930))

(assert (= (or b!4899665 b!4899672) bm!339936))

(assert (= (or b!4899665 b!4899672) bm!339937))

(assert (= (or b!4899665 b!4899672) bm!339932))

(assert (= (or b!4899664 b!4899671) bm!339931))

(assert (= (or b!4899664 b!4899670) bm!339933))

(assert (= (or b!4899664 b!4899670) bm!339935))

(assert (= (or b!4899664 b!4899670) bm!339934))

(assert (= (and d!1574632 res!2092906) b!4899673))

(assert (= (and b!4899673 (not res!2092905)) b!4899676))

(declare-fun m!5907598 () Bool)

(assert (=> bm!339937 m!5907598))

(declare-fun m!5907600 () Bool)

(assert (=> bm!339936 m!5907600))

(declare-fun m!5907602 () Bool)

(assert (=> bm!339933 m!5907602))

(declare-fun m!5907604 () Bool)

(assert (=> b!4899671 m!5907604))

(declare-fun m!5907606 () Bool)

(assert (=> b!4899671 m!5907606))

(declare-fun m!5907608 () Bool)

(assert (=> b!4899671 m!5907608))

(declare-fun m!5907610 () Bool)

(assert (=> b!4899671 m!5907610))

(declare-fun m!5907612 () Bool)

(assert (=> b!4899671 m!5907612))

(assert (=> b!4899671 m!5907600))

(assert (=> b!4899671 m!5905738))

(assert (=> b!4899671 m!5907606))

(assert (=> b!4899671 m!5907612))

(declare-fun m!5907614 () Bool)

(assert (=> b!4899671 m!5907614))

(declare-fun m!5907616 () Bool)

(assert (=> b!4899671 m!5907616))

(declare-fun m!5907618 () Bool)

(assert (=> b!4899671 m!5907618))

(assert (=> b!4899671 m!5907604))

(declare-fun m!5907620 () Bool)

(assert (=> b!4899671 m!5907620))

(declare-fun m!5907622 () Bool)

(assert (=> b!4899671 m!5907622))

(assert (=> b!4899671 m!5906332))

(declare-fun m!5907624 () Bool)

(assert (=> b!4899671 m!5907624))

(assert (=> d!1574632 m!5907604))

(declare-fun m!5907626 () Bool)

(assert (=> d!1574632 m!5907626))

(assert (=> d!1574632 m!5907466))

(declare-fun m!5907628 () Bool)

(assert (=> d!1574632 m!5907628))

(declare-fun m!5907630 () Bool)

(assert (=> d!1574632 m!5907630))

(declare-fun m!5907632 () Bool)

(assert (=> d!1574632 m!5907632))

(declare-fun m!5907634 () Bool)

(assert (=> d!1574632 m!5907634))

(assert (=> d!1574632 m!5907632))

(declare-fun m!5907636 () Bool)

(assert (=> d!1574632 m!5907636))

(assert (=> bm!339931 m!5907468))

(assert (=> bm!339930 m!5907624))

(assert (=> bm!339932 m!5906332))

(declare-fun m!5907638 () Bool)

(assert (=> bm!339932 m!5907638))

(declare-fun m!5907640 () Bool)

(assert (=> b!4899673 m!5907640))

(declare-fun m!5907642 () Bool)

(assert (=> b!4899665 m!5907642))

(declare-fun m!5907644 () Bool)

(assert (=> b!4899676 m!5907644))

(assert (=> b!4899676 m!5905738))

(declare-fun m!5907646 () Bool)

(assert (=> bm!339934 m!5907646))

(declare-fun m!5907648 () Bool)

(assert (=> bm!339935 m!5907648))

(assert (=> b!4898937 d!1574632))

(declare-fun d!1574634 () Bool)

(assert (=> d!1574634 (= (seqFromList!5943 (list!17745 (_1!33560 lt!2008880))) (fromListB!2698 (list!17745 (_1!33560 lt!2008880))))))

(declare-fun bs!1176618 () Bool)

(assert (= bs!1176618 d!1574634))

(assert (=> bs!1176618 m!5906356))

(declare-fun m!5907650 () Bool)

(assert (=> bs!1176618 m!5907650))

(assert (=> b!4898937 d!1574634))

(declare-fun d!1574636 () Bool)

(assert (=> d!1574636 (dynLambda!22693 lambda!244184 (seqFromList!5943 (list!17745 (_1!33560 lt!2008880))))))

(declare-fun lt!2009287 () Unit!146503)

(assert (=> d!1574636 (= lt!2009287 (choose!35769 lambda!244184 (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))))

(assert (=> d!1574636 (Forall!1694 lambda!244184)))

(assert (=> d!1574636 (= (ForallOf!1140 lambda!244184 (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))) lt!2009287)))

(declare-fun b_lambda!194967 () Bool)

(assert (=> (not b_lambda!194967) (not d!1574636)))

(declare-fun bs!1176619 () Bool)

(assert (= bs!1176619 d!1574636))

(assert (=> bs!1176619 m!5906352))

(declare-fun m!5907652 () Bool)

(assert (=> bs!1176619 m!5907652))

(assert (=> bs!1176619 m!5906352))

(declare-fun m!5907654 () Bool)

(assert (=> bs!1176619 m!5907654))

(assert (=> bs!1176619 m!5907594))

(assert (=> b!4898937 d!1574636))

(declare-fun d!1574638 () Bool)

(assert (=> d!1574638 (= (list!17745 (_1!33560 lt!2008880)) (list!17747 (c!832544 (_1!33560 lt!2008880))))))

(declare-fun bs!1176620 () Bool)

(assert (= bs!1176620 d!1574638))

(declare-fun m!5907656 () Bool)

(assert (=> bs!1176620 m!5907656))

(assert (=> b!4898937 d!1574638))

(declare-fun d!1574640 () Bool)

(assert (=> d!1574640 (= (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))) (is-Nil!56428 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))

(assert (=> b!4898937 d!1574640))

(declare-fun d!1574642 () Bool)

(declare-fun lt!2009288 () Int)

(assert (=> d!1574642 (= lt!2009288 (size!37169 (list!17745 (_1!33560 lt!2008880))))))

(assert (=> d!1574642 (= lt!2009288 (size!37173 (c!832544 (_1!33560 lt!2008880))))))

(assert (=> d!1574642 (= (size!37170 (_1!33560 lt!2008880)) lt!2009288)))

(declare-fun bs!1176621 () Bool)

(assert (= bs!1176621 d!1574642))

(assert (=> bs!1176621 m!5906356))

(assert (=> bs!1176621 m!5906356))

(declare-fun m!5907658 () Bool)

(assert (=> bs!1176621 m!5907658))

(declare-fun m!5907660 () Bool)

(assert (=> bs!1176621 m!5907660))

(assert (=> b!4898937 d!1574642))

(assert (=> b!4898937 d!1574020))

(declare-fun d!1574644 () Bool)

(declare-fun lt!2009289 () Int)

(assert (=> d!1574644 (>= lt!2009289 0)))

(declare-fun e!3062742 () Int)

(assert (=> d!1574644 (= lt!2009289 e!3062742)))

(declare-fun c!832804 () Bool)

(assert (=> d!1574644 (= c!832804 (is-Nil!56428 lt!2008888))))

(assert (=> d!1574644 (= (size!37169 lt!2008888) lt!2009289)))

(declare-fun b!4899678 () Bool)

(assert (=> b!4899678 (= e!3062742 0)))

(declare-fun b!4899679 () Bool)

(assert (=> b!4899679 (= e!3062742 (+ 1 (size!37169 (t!366238 lt!2008888))))))

(assert (= (and d!1574644 c!832804) b!4899678))

(assert (= (and d!1574644 (not c!832804)) b!4899679))

(declare-fun m!5907662 () Bool)

(assert (=> b!4899679 m!5907662))

(assert (=> b!4898937 d!1574644))

(assert (=> b!4898937 d!1574128))

(declare-fun d!1574646 () Bool)

(declare-fun e!3062743 () Bool)

(assert (=> d!1574646 e!3062743))

(declare-fun res!2092907 () Bool)

(assert (=> d!1574646 (=> (not res!2092907) (not e!3062743))))

(assert (=> d!1574646 (= res!2092907 (semiInverseModEq!3593 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))))))

(declare-fun Unit!146525 () Unit!146503)

(assert (=> d!1574646 (= (lemmaInv!1243 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) Unit!146525)))

(declare-fun b!4899680 () Bool)

(assert (=> b!4899680 (= e!3062743 (equivClasses!3472 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))))))

(assert (= (and d!1574646 res!2092907) b!4899680))

(assert (=> d!1574646 m!5906314))

(assert (=> b!4899680 m!5906316))

(assert (=> b!4898937 d!1574646))

(declare-fun bs!1176622 () Bool)

(declare-fun d!1574648 () Bool)

(assert (= bs!1176622 (and d!1574648 d!1574088)))

(declare-fun lambda!244196 () Int)

(assert (=> bs!1176622 (= (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (= lambda!244196 lambda!244173))))

(declare-fun bs!1176623 () Bool)

(assert (= bs!1176623 (and d!1574648 d!1574138)))

(assert (=> bs!1176623 (= (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (= lambda!244196 lambda!244176))))

(declare-fun b!4899681 () Bool)

(declare-fun e!3062744 () Bool)

(assert (=> b!4899681 (= e!3062744 true)))

(assert (=> d!1574648 e!3062744))

(assert (= d!1574648 b!4899681))

(assert (=> b!4899681 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (dynLambda!22691 order!25539 lambda!244196))))

(assert (=> b!4899681 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (dynLambda!22691 order!25539 lambda!244196))))

(assert (=> d!1574648 (= (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (_1!33560 lt!2008880)) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))))

(declare-fun lt!2009290 () Unit!146503)

(assert (=> d!1574648 (= lt!2009290 (Forall2of!453 lambda!244196 (_1!33560 lt!2008880) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))))

(assert (=> d!1574648 (= (list!17745 (_1!33560 lt!2008880)) (list!17745 (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))))

(assert (=> d!1574648 (= (lemmaEqSameImage!1097 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33560 lt!2008880) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))) lt!2009290)))

(declare-fun b_lambda!194969 () Bool)

(assert (=> (not b_lambda!194969) (not d!1574648)))

(assert (=> d!1574648 t!366353))

(declare-fun b_and!345761 () Bool)

(assert (= b_and!345755 (and (=> t!366353 result!323212) b_and!345761)))

(assert (=> d!1574648 t!366355))

(declare-fun b_and!345763 () Bool)

(assert (= b_and!345757 (and (=> t!366355 result!323214) b_and!345763)))

(assert (=> d!1574648 t!366357))

(declare-fun b_and!345765 () Bool)

(assert (= b_and!345759 (and (=> t!366357 result!323216) b_and!345765)))

(declare-fun b_lambda!194971 () Bool)

(assert (=> (not b_lambda!194971) (not d!1574648)))

(declare-fun t!366359 () Bool)

(declare-fun tb!259559 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366359) tb!259559))

(declare-fun result!323218 () Bool)

(assert (=> tb!259559 (= result!323218 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880))))))))

(declare-fun m!5907664 () Bool)

(assert (=> tb!259559 m!5907664))

(assert (=> d!1574648 t!366359))

(declare-fun b_and!345767 () Bool)

(assert (= b_and!345761 (and (=> t!366359 result!323218) b_and!345767)))

(declare-fun t!366361 () Bool)

(declare-fun tb!259561 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366361) tb!259561))

(declare-fun result!323220 () Bool)

(assert (= result!323220 result!323218))

(assert (=> d!1574648 t!366361))

(declare-fun b_and!345769 () Bool)

(assert (= b_and!345763 (and (=> t!366361 result!323220) b_and!345769)))

(declare-fun t!366363 () Bool)

(declare-fun tb!259563 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366363) tb!259563))

(declare-fun result!323222 () Bool)

(assert (= result!323222 result!323218))

(assert (=> d!1574648 t!366363))

(declare-fun b_and!345771 () Bool)

(assert (= b_and!345765 (and (=> t!366363 result!323222) b_and!345771)))

(assert (=> d!1574648 m!5906352))

(declare-fun m!5907666 () Bool)

(assert (=> d!1574648 m!5907666))

(assert (=> d!1574648 m!5906356))

(assert (=> d!1574648 m!5906352))

(declare-fun m!5907668 () Bool)

(assert (=> d!1574648 m!5907668))

(assert (=> d!1574648 m!5907588))

(assert (=> d!1574648 m!5906352))

(declare-fun m!5907670 () Bool)

(assert (=> d!1574648 m!5907670))

(assert (=> b!4898937 d!1574648))

(declare-fun lt!2009292 () Option!14039)

(declare-fun d!1574650 () Bool)

(assert (=> d!1574650 (= lt!2009292 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) lt!2008472))))

(declare-fun e!3062746 () Option!14039)

(assert (=> d!1574650 (= lt!2009292 e!3062746)))

(declare-fun c!832805 () Bool)

(declare-fun lt!2009293 () tuple2!60512)

(assert (=> d!1574650 (= c!832805 (isEmpty!30306 (_1!33559 lt!2009293)))))

(assert (=> d!1574650 (= lt!2009293 (findLongestMatchWithZipper!89 (regex!8181 (h!62878 (t!366240 rulesArg!165))) lt!2008472))))

(assert (=> d!1574650 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165)))))

(assert (=> d!1574650 (= (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 (t!366240 rulesArg!165)) lt!2008472) lt!2009292)))

(declare-fun b!4899682 () Bool)

(assert (=> b!4899682 (= e!3062746 None!14038)))

(declare-fun b!4899683 () Bool)

(assert (=> b!4899683 (= e!3062746 (Some!14038 (tuple2!60507 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009293))) (h!62878 (t!366240 rulesArg!165)) (size!37169 (_1!33559 lt!2009293)) (_1!33559 lt!2009293)) (_2!33559 lt!2009293))))))

(declare-fun lt!2009295 () Unit!146503)

(assert (=> b!4899683 (= lt!2009295 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 (t!366240 rulesArg!165))) lt!2008472))))

(declare-fun res!2092908 () Bool)

(assert (=> b!4899683 (= res!2092908 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(declare-fun e!3062747 () Bool)

(assert (=> b!4899683 (=> res!2092908 e!3062747)))

(assert (=> b!4899683 e!3062747))

(declare-fun lt!2009294 () Unit!146503)

(assert (=> b!4899683 (= lt!2009294 lt!2009295)))

(declare-fun lt!2009291 () Unit!146503)

(assert (=> b!4899683 (= lt!2009291 (lemmaInv!1243 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))))

(declare-fun lt!2009296 () Unit!146503)

(assert (=> b!4899683 (= lt!2009296 (lemmaSemiInverse!2571 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009293))))))

(declare-fun b!4899684 () Bool)

(assert (=> b!4899684 (= e!3062747 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008472 lt!2008472 (size!37169 lt!2008472)))))))

(assert (= (and d!1574650 c!832805) b!4899682))

(assert (= (and d!1574650 (not c!832805)) b!4899683))

(assert (= (and b!4899683 (not res!2092908)) b!4899684))

(assert (=> d!1574650 m!5906248))

(declare-fun m!5907672 () Bool)

(assert (=> d!1574650 m!5907672))

(declare-fun m!5907674 () Bool)

(assert (=> d!1574650 m!5907674))

(assert (=> d!1574650 m!5906282))

(assert (=> b!4899683 m!5907170))

(assert (=> b!4899683 m!5905738))

(assert (=> b!4899683 m!5906360))

(declare-fun m!5907676 () Bool)

(assert (=> b!4899683 m!5907676))

(assert (=> b!4899683 m!5907676))

(declare-fun m!5907678 () Bool)

(assert (=> b!4899683 m!5907678))

(assert (=> b!4899683 m!5905738))

(assert (=> b!4899683 m!5905630))

(assert (=> b!4899683 m!5907140))

(assert (=> b!4899683 m!5907172))

(assert (=> b!4899683 m!5907676))

(declare-fun m!5907680 () Bool)

(assert (=> b!4899683 m!5907680))

(assert (=> b!4899683 m!5905630))

(declare-fun m!5907682 () Bool)

(assert (=> b!4899683 m!5907682))

(assert (=> b!4899684 m!5905738))

(assert (=> b!4899684 m!5905630))

(assert (=> b!4899684 m!5905738))

(assert (=> b!4899684 m!5905630))

(assert (=> b!4899684 m!5907140))

(assert (=> b!4899684 m!5907142))

(assert (=> bm!339821 d!1574650))

(declare-fun d!1574652 () Bool)

(assert (=> d!1574652 (dynLambda!22693 lambda!244166 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))

(assert (=> d!1574652 true))

(declare-fun _$1!11198 () Unit!146503)

(assert (=> d!1574652 (= (choose!35769 lambda!244166 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))) _$1!11198)))

(declare-fun b_lambda!194973 () Bool)

(assert (=> (not b_lambda!194973) (not d!1574652)))

(declare-fun bs!1176624 () Bool)

(assert (= bs!1176624 d!1574652))

(assert (=> bs!1176624 m!5905762))

(assert (=> bs!1176624 m!5906104))

(assert (=> d!1574130 d!1574652))

(assert (=> d!1574130 d!1574578))

(declare-fun d!1574654 () Bool)

(declare-fun e!3062748 () Bool)

(assert (=> d!1574654 e!3062748))

(declare-fun res!2092909 () Bool)

(assert (=> d!1574654 (=> (not res!2092909) (not e!3062748))))

(declare-fun lt!2009297 () List!56552)

(assert (=> d!1574654 (= res!2092909 (= (content!10031 lt!2009297) (set.union (content!10031 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))) (content!10031 (_2!33556 (get!19496 lt!2008840))))))))

(declare-fun e!3062749 () List!56552)

(assert (=> d!1574654 (= lt!2009297 e!3062749)))

(declare-fun c!832806 () Bool)

(assert (=> d!1574654 (= c!832806 (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))))))

(assert (=> d!1574654 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))) (_2!33556 (get!19496 lt!2008840))) lt!2009297)))

(declare-fun b!4899688 () Bool)

(assert (=> b!4899688 (= e!3062748 (or (not (= (_2!33556 (get!19496 lt!2008840)) Nil!56428)) (= lt!2009297 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))))))))

(declare-fun b!4899685 () Bool)

(assert (=> b!4899685 (= e!3062749 (_2!33556 (get!19496 lt!2008840)))))

(declare-fun b!4899687 () Bool)

(declare-fun res!2092910 () Bool)

(assert (=> b!4899687 (=> (not res!2092910) (not e!3062748))))

(assert (=> b!4899687 (= res!2092910 (= (size!37169 lt!2009297) (+ (size!37169 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))) (size!37169 (_2!33556 (get!19496 lt!2008840))))))))

(declare-fun b!4899686 () Bool)

(assert (=> b!4899686 (= e!3062749 (Cons!56428 (h!62876 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))) (++!12250 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))) (_2!33556 (get!19496 lt!2008840)))))))

(assert (= (and d!1574654 c!832806) b!4899685))

(assert (= (and d!1574654 (not c!832806)) b!4899686))

(assert (= (and d!1574654 res!2092909) b!4899687))

(assert (= (and b!4899687 res!2092910) b!4899688))

(declare-fun m!5907684 () Bool)

(assert (=> d!1574654 m!5907684))

(assert (=> d!1574654 m!5906144))

(declare-fun m!5907686 () Bool)

(assert (=> d!1574654 m!5907686))

(declare-fun m!5907688 () Bool)

(assert (=> d!1574654 m!5907688))

(declare-fun m!5907690 () Bool)

(assert (=> b!4899687 m!5907690))

(assert (=> b!4899687 m!5906144))

(declare-fun m!5907692 () Bool)

(assert (=> b!4899687 m!5907692))

(assert (=> b!4899687 m!5906158))

(declare-fun m!5907694 () Bool)

(assert (=> b!4899686 m!5907694))

(assert (=> b!4898768 d!1574654))

(declare-fun d!1574656 () Bool)

(assert (=> d!1574656 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))) (list!17747 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))))))

(declare-fun bs!1176625 () Bool)

(assert (= bs!1176625 d!1574656))

(declare-fun m!5907696 () Bool)

(assert (=> bs!1176625 m!5907696))

(assert (=> b!4898768 d!1574656))

(declare-fun d!1574658 () Bool)

(declare-fun lt!2009298 () BalanceConc!28928)

(assert (=> d!1574658 (= (list!17745 lt!2009298) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008840))))))

(assert (=> d!1574658 (= lt!2009298 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))) (value!262310 (_1!33556 (get!19496 lt!2008840)))))))

(assert (=> d!1574658 (= (charsOf!5381 (_1!33556 (get!19496 lt!2008840))) lt!2009298)))

(declare-fun b_lambda!194975 () Bool)

(assert (=> (not b_lambda!194975) (not d!1574658)))

(declare-fun t!366365 () Bool)

(declare-fun tb!259565 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366365) tb!259565))

(declare-fun b!4899689 () Bool)

(declare-fun e!3062750 () Bool)

(declare-fun tp!1378407 () Bool)

(assert (=> b!4899689 (= e!3062750 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))) (value!262310 (_1!33556 (get!19496 lt!2008840)))))) tp!1378407))))

(declare-fun result!323224 () Bool)

(assert (=> tb!259565 (= result!323224 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))) (value!262310 (_1!33556 (get!19496 lt!2008840))))) e!3062750))))

(assert (= tb!259565 b!4899689))

(declare-fun m!5907698 () Bool)

(assert (=> b!4899689 m!5907698))

(declare-fun m!5907700 () Bool)

(assert (=> tb!259565 m!5907700))

(assert (=> d!1574658 t!366365))

(declare-fun b_and!345773 () Bool)

(assert (= b_and!345743 (and (=> t!366365 result!323224) b_and!345773)))

(declare-fun t!366367 () Bool)

(declare-fun tb!259567 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366367) tb!259567))

(declare-fun result!323226 () Bool)

(assert (= result!323226 result!323224))

(assert (=> d!1574658 t!366367))

(declare-fun b_and!345775 () Bool)

(assert (= b_and!345745 (and (=> t!366367 result!323226) b_and!345775)))

(declare-fun tb!259569 () Bool)

(declare-fun t!366369 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366369) tb!259569))

(declare-fun result!323228 () Bool)

(assert (= result!323228 result!323224))

(assert (=> d!1574658 t!366369))

(declare-fun b_and!345777 () Bool)

(assert (= b_and!345747 (and (=> t!366369 result!323228) b_and!345777)))

(declare-fun m!5907702 () Bool)

(assert (=> d!1574658 m!5907702))

(declare-fun m!5907704 () Bool)

(assert (=> d!1574658 m!5907704))

(assert (=> b!4898768 d!1574658))

(assert (=> b!4898768 d!1574412))

(declare-fun d!1574660 () Bool)

(declare-fun lt!2009299 () Int)

(assert (=> d!1574660 (>= lt!2009299 0)))

(declare-fun e!3062751 () Int)

(assert (=> d!1574660 (= lt!2009299 e!3062751)))

(declare-fun c!832807 () Bool)

(assert (=> d!1574660 (= c!832807 (is-Nil!56428 (_2!33556 (get!19496 lt!2008710))))))

(assert (=> d!1574660 (= (size!37169 (_2!33556 (get!19496 lt!2008710))) lt!2009299)))

(declare-fun b!4899690 () Bool)

(assert (=> b!4899690 (= e!3062751 0)))

(declare-fun b!4899691 () Bool)

(assert (=> b!4899691 (= e!3062751 (+ 1 (size!37169 (t!366238 (_2!33556 (get!19496 lt!2008710))))))))

(assert (= (and d!1574660 c!832807) b!4899690))

(assert (= (and d!1574660 (not c!832807)) b!4899691))

(declare-fun m!5907706 () Bool)

(assert (=> b!4899691 m!5907706))

(assert (=> b!4898666 d!1574660))

(declare-fun d!1574662 () Bool)

(assert (=> d!1574662 (= (get!19496 lt!2008710) (v!49998 lt!2008710))))

(assert (=> b!4898666 d!1574662))

(assert (=> b!4898666 d!1574154))

(declare-fun d!1574664 () Bool)

(declare-fun nullableFct!1241 (Regex!13256) Bool)

(assert (=> d!1574664 (= (nullable!4562 (regex!8181 (h!62878 rulesArg!165))) (nullableFct!1241 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun bs!1176626 () Bool)

(assert (= bs!1176626 d!1574664))

(declare-fun m!5907708 () Bool)

(assert (=> bs!1176626 m!5907708))

(assert (=> b!4898674 d!1574664))

(declare-fun d!1574666 () Bool)

(assert (=> d!1574666 (= (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) (is-Nil!56428 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(assert (=> b!4898894 d!1574666))

(declare-fun d!1574668 () Bool)

(assert (=> d!1574668 (= (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))) (t!366238 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (=> b!4898894 d!1574668))

(assert (=> b!4898660 d!1574480))

(declare-fun d!1574670 () Bool)

(assert (=> d!1574670 (= (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705))))) (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705))))))))

(declare-fun b_lambda!194977 () Bool)

(assert (=> (not b_lambda!194977) (not d!1574670)))

(declare-fun t!366371 () Bool)

(declare-fun tb!259571 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366371) tb!259571))

(declare-fun result!323230 () Bool)

(assert (=> tb!259571 (= result!323230 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705)))))))))

(declare-fun m!5907710 () Bool)

(assert (=> tb!259571 m!5907710))

(assert (=> d!1574670 t!366371))

(declare-fun b_and!345779 () Bool)

(assert (= b_and!345767 (and (=> t!366371 result!323230) b_and!345779)))

(declare-fun tb!259573 () Bool)

(declare-fun t!366373 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366373) tb!259573))

(declare-fun result!323232 () Bool)

(assert (= result!323232 result!323230))

(assert (=> d!1574670 t!366373))

(declare-fun b_and!345781 () Bool)

(assert (= b_and!345769 (and (=> t!366373 result!323232) b_and!345781)))

(declare-fun tb!259575 () Bool)

(declare-fun t!366375 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366375) tb!259575))

(declare-fun result!323234 () Bool)

(assert (= result!323234 result!323230))

(assert (=> d!1574670 t!366375))

(declare-fun b_and!345783 () Bool)

(assert (= b_and!345771 (and (=> t!366375 result!323234) b_and!345783)))

(assert (=> d!1574670 m!5905922))

(declare-fun m!5907712 () Bool)

(assert (=> d!1574670 m!5907712))

(assert (=> b!4898660 d!1574670))

(declare-fun d!1574672 () Bool)

(assert (=> d!1574672 (= (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705)))) (fromListB!2698 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705)))))))

(declare-fun bs!1176627 () Bool)

(assert (= bs!1176627 d!1574672))

(declare-fun m!5907714 () Bool)

(assert (=> bs!1176627 m!5907714))

(assert (=> b!4898660 d!1574672))

(declare-fun d!1574674 () Bool)

(assert (=> d!1574674 (= (isEmpty!30306 (_1!33559 lt!2008809)) (is-Nil!56428 (_1!33559 lt!2008809)))))

(assert (=> b!4898725 d!1574674))

(declare-fun b!4899692 () Bool)

(declare-fun e!3062759 () Bool)

(declare-fun e!3062754 () Bool)

(assert (=> b!4899692 (= e!3062759 e!3062754)))

(declare-fun c!832810 () Bool)

(assert (=> b!4899692 (= c!832810 (is-EmptyLang!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))))))

(declare-fun b!4899693 () Bool)

(declare-fun res!2092918 () Bool)

(declare-fun e!3062753 () Bool)

(assert (=> b!4899693 (=> res!2092918 e!3062753)))

(declare-fun e!3062755 () Bool)

(assert (=> b!4899693 (= res!2092918 e!3062755)))

(declare-fun res!2092914 () Bool)

(assert (=> b!4899693 (=> (not res!2092914) (not e!3062755))))

(declare-fun lt!2009300 () Bool)

(assert (=> b!4899693 (= res!2092914 lt!2009300)))

(declare-fun b!4899694 () Bool)

(declare-fun e!3062756 () Bool)

(assert (=> b!4899694 (= e!3062756 (matchR!6537 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))))) (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))))))))

(declare-fun d!1574676 () Bool)

(assert (=> d!1574676 e!3062759))

(declare-fun c!832808 () Bool)

(assert (=> d!1574676 (= c!832808 (is-EmptyExpr!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))))))

(assert (=> d!1574676 (= lt!2009300 e!3062756)))

(declare-fun c!832809 () Bool)

(assert (=> d!1574676 (= c!832809 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))))))

(assert (=> d!1574676 (validRegex!5889 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))))

(assert (=> d!1574676 (= (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))) lt!2009300)))

(declare-fun b!4899695 () Bool)

(declare-fun res!2092911 () Bool)

(assert (=> b!4899695 (=> (not res!2092911) (not e!3062755))))

(declare-fun call!339943 () Bool)

(assert (=> b!4899695 (= res!2092911 (not call!339943))))

(declare-fun b!4899696 () Bool)

(assert (=> b!4899696 (= e!3062759 (= lt!2009300 call!339943))))

(declare-fun b!4899697 () Bool)

(declare-fun res!2092912 () Bool)

(assert (=> b!4899697 (=> res!2092912 e!3062753)))

(assert (=> b!4899697 (= res!2092912 (not (is-ElementMatch!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))))))

(assert (=> b!4899697 (= e!3062754 e!3062753)))

(declare-fun b!4899698 () Bool)

(declare-fun e!3062757 () Bool)

(assert (=> b!4899698 (= e!3062757 (not (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))) (c!832545 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))))))))

(declare-fun bm!339938 () Bool)

(assert (=> bm!339938 (= call!339943 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))))))

(declare-fun b!4899699 () Bool)

(assert (=> b!4899699 (= e!3062755 (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))) (c!832545 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))))))

(declare-fun b!4899700 () Bool)

(declare-fun res!2092917 () Bool)

(assert (=> b!4899700 (=> res!2092917 e!3062757)))

(assert (=> b!4899700 (= res!2092917 (not (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))))))))

(declare-fun b!4899701 () Bool)

(declare-fun e!3062758 () Bool)

(assert (=> b!4899701 (= e!3062753 e!3062758)))

(declare-fun res!2092915 () Bool)

(assert (=> b!4899701 (=> (not res!2092915) (not e!3062758))))

(assert (=> b!4899701 (= res!2092915 (not lt!2009300))))

(declare-fun b!4899702 () Bool)

(assert (=> b!4899702 (= e!3062756 (nullable!4562 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))))))

(declare-fun b!4899703 () Bool)

(declare-fun res!2092913 () Bool)

(assert (=> b!4899703 (=> (not res!2092913) (not e!3062755))))

(assert (=> b!4899703 (= res!2092913 (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))))))))

(declare-fun b!4899704 () Bool)

(assert (=> b!4899704 (= e!3062754 (not lt!2009300))))

(declare-fun b!4899705 () Bool)

(assert (=> b!4899705 (= e!3062758 e!3062757)))

(declare-fun res!2092916 () Bool)

(assert (=> b!4899705 (=> res!2092916 e!3062757)))

(assert (=> b!4899705 (= res!2092916 call!339943)))

(assert (= (and d!1574676 c!832809) b!4899702))

(assert (= (and d!1574676 (not c!832809)) b!4899694))

(assert (= (and d!1574676 c!832808) b!4899696))

(assert (= (and d!1574676 (not c!832808)) b!4899692))

(assert (= (and b!4899692 c!832810) b!4899704))

(assert (= (and b!4899692 (not c!832810)) b!4899697))

(assert (= (and b!4899697 (not res!2092912)) b!4899693))

(assert (= (and b!4899693 res!2092914) b!4899695))

(assert (= (and b!4899695 res!2092911) b!4899703))

(assert (= (and b!4899703 res!2092913) b!4899699))

(assert (= (and b!4899693 (not res!2092918)) b!4899701))

(assert (= (and b!4899701 res!2092915) b!4899705))

(assert (= (and b!4899705 (not res!2092916)) b!4899700))

(assert (= (and b!4899700 (not res!2092917)) b!4899698))

(assert (= (or b!4899696 b!4899695 b!4899705) bm!339938))

(assert (=> b!4899703 m!5906228))

(declare-fun m!5907716 () Bool)

(assert (=> b!4899703 m!5907716))

(assert (=> b!4899703 m!5907716))

(declare-fun m!5907718 () Bool)

(assert (=> b!4899703 m!5907718))

(assert (=> b!4899699 m!5906228))

(declare-fun m!5907720 () Bool)

(assert (=> b!4899699 m!5907720))

(assert (=> d!1574676 m!5906228))

(declare-fun m!5907722 () Bool)

(assert (=> d!1574676 m!5907722))

(declare-fun m!5907724 () Bool)

(assert (=> d!1574676 m!5907724))

(assert (=> b!4899698 m!5906228))

(assert (=> b!4899698 m!5907720))

(assert (=> bm!339938 m!5906228))

(assert (=> bm!339938 m!5907722))

(assert (=> b!4899694 m!5906228))

(assert (=> b!4899694 m!5907720))

(assert (=> b!4899694 m!5907720))

(declare-fun m!5907726 () Bool)

(assert (=> b!4899694 m!5907726))

(assert (=> b!4899694 m!5906228))

(assert (=> b!4899694 m!5907716))

(assert (=> b!4899694 m!5907726))

(assert (=> b!4899694 m!5907716))

(declare-fun m!5907728 () Bool)

(assert (=> b!4899694 m!5907728))

(declare-fun m!5907730 () Bool)

(assert (=> b!4899702 m!5907730))

(assert (=> b!4899700 m!5906228))

(assert (=> b!4899700 m!5907716))

(assert (=> b!4899700 m!5907716))

(assert (=> b!4899700 m!5907718))

(assert (=> b!4898832 d!1574676))

(assert (=> b!4898832 d!1574428))

(assert (=> b!4898832 d!1574424))

(assert (=> b!4898832 d!1574426))

(declare-fun d!1574678 () Bool)

(assert (not d!1574678))

(assert (=> b!4898746 d!1574678))

(assert (=> b!4898662 d!1574662))

(declare-fun d!1574680 () Bool)

(declare-fun lt!2009301 () Int)

(assert (=> d!1574680 (>= lt!2009301 0)))

(declare-fun e!3062760 () Int)

(assert (=> d!1574680 (= lt!2009301 e!3062760)))

(declare-fun c!832811 () Bool)

(assert (=> d!1574680 (= c!832811 (is-Nil!56428 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710)))))))

(assert (=> d!1574680 (= (size!37169 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710)))) lt!2009301)))

(declare-fun b!4899706 () Bool)

(assert (=> b!4899706 (= e!3062760 0)))

(declare-fun b!4899707 () Bool)

(assert (=> b!4899707 (= e!3062760 (+ 1 (size!37169 (t!366238 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710)))))))))

(assert (= (and d!1574680 c!832811) b!4899706))

(assert (= (and d!1574680 (not c!832811)) b!4899707))

(declare-fun m!5907732 () Bool)

(assert (=> b!4899707 m!5907732))

(assert (=> b!4898662 d!1574680))

(declare-fun b!4899708 () Bool)

(declare-fun res!2092920 () Bool)

(declare-fun e!3062762 () Bool)

(assert (=> b!4899708 (=> (not res!2092920) (not e!3062762))))

(assert (=> b!4899708 (= res!2092920 (<= (- (height!1962 (left!41002 (right!41332 (c!832544 input!1236)))) (height!1962 (right!41332 (right!41332 (c!832544 input!1236))))) 1))))

(declare-fun b!4899709 () Bool)

(declare-fun e!3062761 () Bool)

(assert (=> b!4899709 (= e!3062761 e!3062762)))

(declare-fun res!2092919 () Bool)

(assert (=> b!4899709 (=> (not res!2092919) (not e!3062762))))

(assert (=> b!4899709 (= res!2092919 (<= (- 1) (- (height!1962 (left!41002 (right!41332 (c!832544 input!1236)))) (height!1962 (right!41332 (right!41332 (c!832544 input!1236)))))))))

(declare-fun d!1574682 () Bool)

(declare-fun res!2092923 () Bool)

(assert (=> d!1574682 (=> res!2092923 e!3062761)))

(assert (=> d!1574682 (= res!2092923 (not (is-Node!14749 (right!41332 (c!832544 input!1236)))))))

(assert (=> d!1574682 (= (isBalanced!4019 (right!41332 (c!832544 input!1236))) e!3062761)))

(declare-fun b!4899710 () Bool)

(declare-fun res!2092922 () Bool)

(assert (=> b!4899710 (=> (not res!2092922) (not e!3062762))))

(assert (=> b!4899710 (= res!2092922 (isBalanced!4019 (right!41332 (right!41332 (c!832544 input!1236)))))))

(declare-fun b!4899711 () Bool)

(assert (=> b!4899711 (= e!3062762 (not (isEmpty!30311 (right!41332 (right!41332 (c!832544 input!1236))))))))

(declare-fun b!4899712 () Bool)

(declare-fun res!2092921 () Bool)

(assert (=> b!4899712 (=> (not res!2092921) (not e!3062762))))

(assert (=> b!4899712 (= res!2092921 (isBalanced!4019 (left!41002 (right!41332 (c!832544 input!1236)))))))

(declare-fun b!4899713 () Bool)

(declare-fun res!2092924 () Bool)

(assert (=> b!4899713 (=> (not res!2092924) (not e!3062762))))

(assert (=> b!4899713 (= res!2092924 (not (isEmpty!30311 (left!41002 (right!41332 (c!832544 input!1236))))))))

(assert (= (and d!1574682 (not res!2092923)) b!4899709))

(assert (= (and b!4899709 res!2092919) b!4899708))

(assert (= (and b!4899708 res!2092920) b!4899712))

(assert (= (and b!4899712 res!2092921) b!4899710))

(assert (= (and b!4899710 res!2092922) b!4899713))

(assert (= (and b!4899713 res!2092924) b!4899711))

(declare-fun m!5907734 () Bool)

(assert (=> b!4899712 m!5907734))

(declare-fun m!5907736 () Bool)

(assert (=> b!4899710 m!5907736))

(assert (=> b!4899709 m!5907488))

(assert (=> b!4899709 m!5907490))

(declare-fun m!5907738 () Bool)

(assert (=> b!4899711 m!5907738))

(declare-fun m!5907740 () Bool)

(assert (=> b!4899713 m!5907740))

(assert (=> b!4899708 m!5907488))

(assert (=> b!4899708 m!5907490))

(assert (=> b!4898929 d!1574682))

(declare-fun d!1574684 () Bool)

(declare-fun lt!2009302 () Int)

(assert (=> d!1574684 (>= lt!2009302 0)))

(declare-fun e!3062763 () Int)

(assert (=> d!1574684 (= lt!2009302 e!3062763)))

(declare-fun c!832812 () Bool)

(assert (=> d!1574684 (= c!832812 (is-Nil!56428 (_2!33556 (get!19496 lt!2008840))))))

(assert (=> d!1574684 (= (size!37169 (_2!33556 (get!19496 lt!2008840))) lt!2009302)))

(declare-fun b!4899714 () Bool)

(assert (=> b!4899714 (= e!3062763 0)))

(declare-fun b!4899715 () Bool)

(assert (=> b!4899715 (= e!3062763 (+ 1 (size!37169 (t!366238 (_2!33556 (get!19496 lt!2008840))))))))

(assert (= (and d!1574684 c!832812) b!4899714))

(assert (= (and d!1574684 (not c!832812)) b!4899715))

(declare-fun m!5907742 () Bool)

(assert (=> b!4899715 m!5907742))

(assert (=> b!4898774 d!1574684))

(assert (=> b!4898774 d!1574412))

(assert (=> b!4898774 d!1574554))

(assert (=> d!1574198 d!1574096))

(declare-fun d!1574686 () Bool)

(assert (=> d!1574686 (= (isEmpty!30306 (_1!33559 lt!2008869)) (is-Nil!56428 (_1!33559 lt!2008869)))))

(assert (=> d!1574198 d!1574686))

(declare-fun d!1574688 () Bool)

(declare-fun lt!2009322 () tuple2!60512)

(assert (=> d!1574688 (= lt!2009322 (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) lt!2008472))))

(declare-datatypes ((List!56558 0))(
  ( (Nil!56434) (Cons!56434 (h!62882 Regex!13256) (t!366479 List!56558)) )
))
(declare-datatypes ((Context!5956 0))(
  ( (Context!5957 (exprs!3478 List!56558)) )
))
(declare-fun lt!2009317 () (Set Context!5956))

(declare-fun findLongestMatchZipper!12 ((Set Context!5956) List!56552) tuple2!60512)

(assert (=> d!1574688 (= lt!2009322 (findLongestMatchZipper!12 lt!2009317 lt!2008472))))

(declare-fun lt!2009323 () Unit!146503)

(declare-fun lt!2009320 () Unit!146503)

(assert (=> d!1574688 (= lt!2009323 lt!2009320)))

(declare-fun lt!2009321 () Int)

(assert (=> d!1574688 (= (sizeTr!343 lt!2008472 lt!2009321) (+ (size!37169 lt!2008472) lt!2009321))))

(assert (=> d!1574688 (= lt!2009320 (lemmaSizeTrEqualsSize!342 lt!2008472 lt!2009321))))

(assert (=> d!1574688 (= lt!2009321 0)))

(declare-fun lt!2009319 () Unit!146503)

(declare-fun lt!2009318 () Unit!146503)

(assert (=> d!1574688 (= lt!2009319 lt!2009318)))

(assert (=> d!1574688 (= (findLongestMatchZipper!12 lt!2009317 lt!2008472) (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) lt!2008472))))

(declare-fun longestMatchSameAsRegex!11 (Regex!13256 (Set Context!5956) List!56552) Unit!146503)

(assert (=> d!1574688 (= lt!2009318 (longestMatchSameAsRegex!11 (regex!8181 (h!62878 rulesArg!165)) lt!2009317 lt!2008472))))

(declare-fun focus!334 (Regex!13256) (Set Context!5956))

(assert (=> d!1574688 (= lt!2009317 (focus!334 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574688 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574688 (= (findLongestMatchWithZipper!89 (regex!8181 (h!62878 rulesArg!165)) lt!2008472) lt!2009322)))

(declare-fun bs!1176628 () Bool)

(assert (= bs!1176628 d!1574688))

(declare-fun m!5907744 () Bool)

(assert (=> bs!1176628 m!5907744))

(assert (=> bs!1176628 m!5905960))

(declare-fun m!5907746 () Bool)

(assert (=> bs!1176628 m!5907746))

(declare-fun m!5907748 () Bool)

(assert (=> bs!1176628 m!5907748))

(assert (=> bs!1176628 m!5905982))

(declare-fun m!5907750 () Bool)

(assert (=> bs!1176628 m!5907750))

(declare-fun m!5907752 () Bool)

(assert (=> bs!1176628 m!5907752))

(assert (=> bs!1176628 m!5905630))

(assert (=> d!1574198 d!1574688))

(assert (=> d!1574198 d!1574098))

(declare-fun d!1574690 () Bool)

(declare-fun c!832813 () Bool)

(assert (=> d!1574690 (= c!832813 (is-Node!14749 (left!41002 (right!41332 (c!832544 input!1236)))))))

(declare-fun e!3062764 () Bool)

(assert (=> d!1574690 (= (inv!72735 (left!41002 (right!41332 (c!832544 input!1236)))) e!3062764)))

(declare-fun b!4899716 () Bool)

(assert (=> b!4899716 (= e!3062764 (inv!72740 (left!41002 (right!41332 (c!832544 input!1236)))))))

(declare-fun b!4899717 () Bool)

(declare-fun e!3062765 () Bool)

(assert (=> b!4899717 (= e!3062764 e!3062765)))

(declare-fun res!2092925 () Bool)

(assert (=> b!4899717 (= res!2092925 (not (is-Leaf!24557 (left!41002 (right!41332 (c!832544 input!1236))))))))

(assert (=> b!4899717 (=> res!2092925 e!3062765)))

(declare-fun b!4899718 () Bool)

(assert (=> b!4899718 (= e!3062765 (inv!72741 (left!41002 (right!41332 (c!832544 input!1236)))))))

(assert (= (and d!1574690 c!832813) b!4899716))

(assert (= (and d!1574690 (not c!832813)) b!4899717))

(assert (= (and b!4899717 (not res!2092925)) b!4899718))

(declare-fun m!5907754 () Bool)

(assert (=> b!4899716 m!5907754))

(declare-fun m!5907756 () Bool)

(assert (=> b!4899718 m!5907756))

(assert (=> b!4898984 d!1574690))

(declare-fun d!1574692 () Bool)

(declare-fun c!832814 () Bool)

(assert (=> d!1574692 (= c!832814 (is-Node!14749 (right!41332 (right!41332 (c!832544 input!1236)))))))

(declare-fun e!3062766 () Bool)

(assert (=> d!1574692 (= (inv!72735 (right!41332 (right!41332 (c!832544 input!1236)))) e!3062766)))

(declare-fun b!4899719 () Bool)

(assert (=> b!4899719 (= e!3062766 (inv!72740 (right!41332 (right!41332 (c!832544 input!1236)))))))

(declare-fun b!4899720 () Bool)

(declare-fun e!3062767 () Bool)

(assert (=> b!4899720 (= e!3062766 e!3062767)))

(declare-fun res!2092926 () Bool)

(assert (=> b!4899720 (= res!2092926 (not (is-Leaf!24557 (right!41332 (right!41332 (c!832544 input!1236))))))))

(assert (=> b!4899720 (=> res!2092926 e!3062767)))

(declare-fun b!4899721 () Bool)

(assert (=> b!4899721 (= e!3062767 (inv!72741 (right!41332 (right!41332 (c!832544 input!1236)))))))

(assert (= (and d!1574692 c!832814) b!4899719))

(assert (= (and d!1574692 (not c!832814)) b!4899720))

(assert (= (and b!4899720 (not res!2092926)) b!4899721))

(declare-fun m!5907758 () Bool)

(assert (=> b!4899719 m!5907758))

(declare-fun m!5907760 () Bool)

(assert (=> b!4899721 m!5907760))

(assert (=> b!4898984 d!1574692))

(declare-fun d!1574694 () Bool)

(assert (=> d!1574694 (= (head!10462 lt!2008607) (h!62876 lt!2008607))))

(assert (=> b!4898901 d!1574694))

(declare-fun d!1574696 () Bool)

(assert (=> d!1574696 (= (head!10462 lt!2008612) (h!62876 lt!2008612))))

(assert (=> b!4898901 d!1574696))

(declare-fun d!1574698 () Bool)

(declare-fun res!2092927 () Bool)

(declare-fun e!3062768 () Bool)

(assert (=> d!1574698 (=> res!2092927 e!3062768)))

(assert (=> d!1574698 (= res!2092927 (is-Nil!56430 (t!366240 rulesArg!165)))))

(assert (=> d!1574698 (= (forall!13097 (t!366240 rulesArg!165) lambda!244157) e!3062768)))

(declare-fun b!4899722 () Bool)

(declare-fun e!3062769 () Bool)

(assert (=> b!4899722 (= e!3062768 e!3062769)))

(declare-fun res!2092928 () Bool)

(assert (=> b!4899722 (=> (not res!2092928) (not e!3062769))))

(assert (=> b!4899722 (= res!2092928 (dynLambda!22692 lambda!244157 (h!62878 (t!366240 rulesArg!165))))))

(declare-fun b!4899723 () Bool)

(assert (=> b!4899723 (= e!3062769 (forall!13097 (t!366240 (t!366240 rulesArg!165)) lambda!244157))))

(assert (= (and d!1574698 (not res!2092927)) b!4899722))

(assert (= (and b!4899722 res!2092928) b!4899723))

(declare-fun b_lambda!194979 () Bool)

(assert (=> (not b_lambda!194979) (not b!4899722)))

(declare-fun m!5907762 () Bool)

(assert (=> b!4899722 m!5907762))

(declare-fun m!5907764 () Bool)

(assert (=> b!4899723 m!5907764))

(assert (=> b!4898693 d!1574698))

(assert (=> d!1574204 d!1574124))

(assert (=> d!1574204 d!1574602))

(assert (=> b!4898668 d!1574662))

(assert (=> b!4898896 d!1574664))

(declare-fun d!1574700 () Bool)

(declare-fun lt!2009324 () Int)

(assert (=> d!1574700 (>= lt!2009324 0)))

(declare-fun e!3062770 () Int)

(assert (=> d!1574700 (= lt!2009324 e!3062770)))

(declare-fun c!832815 () Bool)

(assert (=> d!1574700 (= c!832815 (is-Nil!56428 (innerList!14837 (xs!18065 (c!832544 input!1236)))))))

(assert (=> d!1574700 (= (size!37169 (innerList!14837 (xs!18065 (c!832544 input!1236)))) lt!2009324)))

(declare-fun b!4899724 () Bool)

(assert (=> b!4899724 (= e!3062770 0)))

(declare-fun b!4899725 () Bool)

(assert (=> b!4899725 (= e!3062770 (+ 1 (size!37169 (t!366238 (innerList!14837 (xs!18065 (c!832544 input!1236)))))))))

(assert (= (and d!1574700 c!832815) b!4899724))

(assert (= (and d!1574700 (not c!832815)) b!4899725))

(declare-fun m!5907766 () Bool)

(assert (=> b!4899725 m!5907766))

(assert (=> d!1574230 d!1574700))

(assert (=> b!4898770 d!1574562))

(assert (=> b!4898762 d!1574616))

(assert (=> b!4898934 d!1574582))

(assert (=> b!4898653 d!1574480))

(declare-fun d!1574702 () Bool)

(declare-fun lt!2009325 () Int)

(assert (=> d!1574702 (>= lt!2009325 0)))

(declare-fun e!3062771 () Int)

(assert (=> d!1574702 (= lt!2009325 e!3062771)))

(declare-fun c!832816 () Bool)

(assert (=> d!1574702 (= c!832816 (is-Nil!56428 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705)))))))

(assert (=> d!1574702 (= (size!37169 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705)))) lt!2009325)))

(declare-fun b!4899726 () Bool)

(assert (=> b!4899726 (= e!3062771 0)))

(declare-fun b!4899727 () Bool)

(assert (=> b!4899727 (= e!3062771 (+ 1 (size!37169 (t!366238 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008705)))))))))

(assert (= (and d!1574702 c!832816) b!4899726))

(assert (= (and d!1574702 (not c!832816)) b!4899727))

(declare-fun m!5907768 () Bool)

(assert (=> b!4899727 m!5907768))

(assert (=> b!4898653 d!1574702))

(assert (=> b!4898740 d!1574088))

(assert (=> d!1574116 d!1574180))

(assert (=> d!1574116 d!1574016))

(assert (=> d!1574116 d!1574018))

(assert (=> d!1574116 d!1574202))

(declare-fun d!1574704 () Bool)

(declare-fun c!832817 () Bool)

(assert (=> d!1574704 (= c!832817 (is-Node!14749 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))))

(declare-fun e!3062772 () Bool)

(assert (=> d!1574704 (= (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))) e!3062772)))

(declare-fun b!4899728 () Bool)

(assert (=> b!4899728 (= e!3062772 (inv!72740 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))))

(declare-fun b!4899729 () Bool)

(declare-fun e!3062773 () Bool)

(assert (=> b!4899729 (= e!3062772 e!3062773)))

(declare-fun res!2092929 () Bool)

(assert (=> b!4899729 (= res!2092929 (not (is-Leaf!24557 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))))))

(assert (=> b!4899729 (=> res!2092929 e!3062773)))

(declare-fun b!4899730 () Bool)

(assert (=> b!4899730 (= e!3062773 (inv!72741 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))))

(assert (= (and d!1574704 c!832817) b!4899728))

(assert (= (and d!1574704 (not c!832817)) b!4899729))

(assert (= (and b!4899729 (not res!2092929)) b!4899730))

(declare-fun m!5907770 () Bool)

(assert (=> b!4899728 m!5907770))

(declare-fun m!5907772 () Bool)

(assert (=> b!4899730 m!5907772))

(assert (=> b!4898999 d!1574704))

(declare-fun d!1574706 () Bool)

(declare-fun lt!2009326 () Int)

(assert (=> d!1574706 (>= lt!2009326 0)))

(declare-fun e!3062774 () Int)

(assert (=> d!1574706 (= lt!2009326 e!3062774)))

(declare-fun c!832818 () Bool)

(assert (=> d!1574706 (= c!832818 (is-Nil!56428 (list!17745 (_1!33560 lt!2008636))))))

(assert (=> d!1574706 (= (size!37169 (list!17745 (_1!33560 lt!2008636))) lt!2009326)))

(declare-fun b!4899731 () Bool)

(assert (=> b!4899731 (= e!3062774 0)))

(declare-fun b!4899732 () Bool)

(assert (=> b!4899732 (= e!3062774 (+ 1 (size!37169 (t!366238 (list!17745 (_1!33560 lt!2008636))))))))

(assert (= (and d!1574706 c!832818) b!4899731))

(assert (= (and d!1574706 (not c!832818)) b!4899732))

(declare-fun m!5907774 () Bool)

(assert (=> b!4899732 m!5907774))

(assert (=> d!1574136 d!1574706))

(assert (=> d!1574136 d!1574134))

(declare-fun d!1574708 () Bool)

(declare-fun lt!2009329 () Int)

(assert (=> d!1574708 (= lt!2009329 (size!37169 (list!17747 (c!832544 (_1!33560 lt!2008636)))))))

(assert (=> d!1574708 (= lt!2009329 (ite (is-Empty!14749 (c!832544 (_1!33560 lt!2008636))) 0 (ite (is-Leaf!24557 (c!832544 (_1!33560 lt!2008636))) (csize!29729 (c!832544 (_1!33560 lt!2008636))) (csize!29728 (c!832544 (_1!33560 lt!2008636))))))))

(assert (=> d!1574708 (= (size!37173 (c!832544 (_1!33560 lt!2008636))) lt!2009329)))

(declare-fun bs!1176629 () Bool)

(assert (= bs!1176629 d!1574708))

(assert (=> bs!1176629 m!5906112))

(assert (=> bs!1176629 m!5906112))

(declare-fun m!5907776 () Bool)

(assert (=> bs!1176629 m!5907776))

(assert (=> d!1574136 d!1574708))

(declare-fun d!1574710 () Bool)

(declare-fun c!832821 () Bool)

(assert (=> d!1574710 (= c!832821 (is-Nil!56430 rulesArg!165))))

(declare-fun e!3062777 () (Set Rule!16162))

(assert (=> d!1574710 (= (content!10032 rulesArg!165) e!3062777)))

(declare-fun b!4899737 () Bool)

(assert (=> b!4899737 (= e!3062777 (as set.empty (Set Rule!16162)))))

(declare-fun b!4899738 () Bool)

(assert (=> b!4899738 (= e!3062777 (set.union (set.insert (h!62878 rulesArg!165) (as set.empty (Set Rule!16162))) (content!10032 (t!366240 rulesArg!165))))))

(assert (= (and d!1574710 c!832821) b!4899737))

(assert (= (and d!1574710 (not c!832821)) b!4899738))

(declare-fun m!5907778 () Bool)

(assert (=> b!4899738 m!5907778))

(declare-fun m!5907780 () Bool)

(assert (=> b!4899738 m!5907780))

(assert (=> d!1574232 d!1574710))

(declare-fun d!1574712 () Bool)

(declare-fun lt!2009330 () Int)

(assert (=> d!1574712 (= lt!2009330 (size!37169 (list!17747 (left!41002 (c!832544 input!1236)))))))

(assert (=> d!1574712 (= lt!2009330 (ite (is-Empty!14749 (left!41002 (c!832544 input!1236))) 0 (ite (is-Leaf!24557 (left!41002 (c!832544 input!1236))) (csize!29729 (left!41002 (c!832544 input!1236))) (csize!29728 (left!41002 (c!832544 input!1236))))))))

(assert (=> d!1574712 (= (size!37173 (left!41002 (c!832544 input!1236))) lt!2009330)))

(declare-fun bs!1176630 () Bool)

(assert (= bs!1176630 d!1574712))

(assert (=> bs!1176630 m!5906164))

(assert (=> bs!1176630 m!5906164))

(assert (=> bs!1176630 m!5907502))

(assert (=> d!1574174 d!1574712))

(declare-fun d!1574714 () Bool)

(declare-fun lt!2009331 () Int)

(assert (=> d!1574714 (= lt!2009331 (size!37169 (list!17747 (right!41332 (c!832544 input!1236)))))))

(assert (=> d!1574714 (= lt!2009331 (ite (is-Empty!14749 (right!41332 (c!832544 input!1236))) 0 (ite (is-Leaf!24557 (right!41332 (c!832544 input!1236))) (csize!29729 (right!41332 (c!832544 input!1236))) (csize!29728 (right!41332 (c!832544 input!1236))))))))

(assert (=> d!1574714 (= (size!37173 (right!41332 (c!832544 input!1236))) lt!2009331)))

(declare-fun bs!1176631 () Bool)

(assert (= bs!1176631 d!1574714))

(assert (=> bs!1176631 m!5906166))

(assert (=> bs!1176631 m!5906166))

(assert (=> bs!1176631 m!5907504))

(assert (=> d!1574174 d!1574714))

(declare-fun d!1574716 () Bool)

(assert (=> d!1574716 (= (isEmpty!30306 (_1!33559 lt!2008805)) (is-Nil!56428 (_1!33559 lt!2008805)))))

(assert (=> b!4898733 d!1574716))

(declare-fun bs!1176632 () Bool)

(declare-fun d!1574718 () Bool)

(assert (= bs!1176632 (and d!1574718 d!1574042)))

(declare-fun lambda!244197 () Int)

(assert (=> bs!1176632 (= lambda!244197 lambda!244157)))

(declare-fun bs!1176633 () Bool)

(assert (= bs!1176633 (and d!1574718 d!1574202)))

(assert (=> bs!1176633 (= lambda!244197 lambda!244180)))

(assert (=> d!1574718 true))

(declare-fun lt!2009332 () Bool)

(assert (=> d!1574718 (= lt!2009332 (forall!13097 (t!366240 (t!366240 rulesArg!165)) lambda!244197))))

(declare-fun e!3062779 () Bool)

(assert (=> d!1574718 (= lt!2009332 e!3062779)))

(declare-fun res!2092931 () Bool)

(assert (=> d!1574718 (=> res!2092931 e!3062779)))

(assert (=> d!1574718 (= res!2092931 (not (is-Cons!56430 (t!366240 (t!366240 rulesArg!165)))))))

(assert (=> d!1574718 (= (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 rulesArg!165))) lt!2009332)))

(declare-fun b!4899739 () Bool)

(declare-fun e!3062778 () Bool)

(assert (=> b!4899739 (= e!3062779 e!3062778)))

(declare-fun res!2092930 () Bool)

(assert (=> b!4899739 (=> (not res!2092930) (not e!3062778))))

(assert (=> b!4899739 (= res!2092930 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165)))))))

(declare-fun b!4899740 () Bool)

(assert (=> b!4899740 (= e!3062778 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165)))))))

(assert (= (and d!1574718 (not res!2092931)) b!4899739))

(assert (= (and b!4899739 res!2092930) b!4899740))

(declare-fun m!5907782 () Bool)

(assert (=> d!1574718 m!5907782))

(declare-fun m!5907784 () Bool)

(assert (=> b!4899739 m!5907784))

(declare-fun m!5907786 () Bool)

(assert (=> b!4899740 m!5907786))

(assert (=> d!1574112 d!1574718))

(declare-fun d!1574720 () Bool)

(assert (=> d!1574720 (= (isDefined!11052 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236))) (not (isEmpty!30303 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 rulesArg!165)) (list!17745 input!1236)))))))

(declare-fun bs!1176634 () Bool)

(assert (= bs!1176634 d!1574720))

(assert (=> bs!1176634 m!5906012))

(declare-fun m!5907788 () Bool)

(assert (=> bs!1176634 m!5907788))

(assert (=> d!1574112 d!1574720))

(assert (=> d!1574112 d!1574472))

(declare-fun b!4899741 () Bool)

(declare-fun e!3062781 () Bool)

(declare-fun e!3062780 () Bool)

(assert (=> b!4899741 (= e!3062781 e!3062780)))

(declare-fun res!2092934 () Bool)

(assert (=> b!4899741 (=> (not res!2092934) (not e!3062780))))

(assert (=> b!4899741 (= res!2092934 (not (is-Nil!56428 lt!2008725)))))

(declare-fun d!1574722 () Bool)

(declare-fun e!3062782 () Bool)

(assert (=> d!1574722 e!3062782))

(declare-fun res!2092933 () Bool)

(assert (=> d!1574722 (=> res!2092933 e!3062782)))

(declare-fun lt!2009333 () Bool)

(assert (=> d!1574722 (= res!2092933 (not lt!2009333))))

(assert (=> d!1574722 (= lt!2009333 e!3062781)))

(declare-fun res!2092935 () Bool)

(assert (=> d!1574722 (=> res!2092935 e!3062781)))

(assert (=> d!1574722 (= res!2092935 (is-Nil!56428 lt!2008720))))

(assert (=> d!1574722 (= (isPrefix!4901 lt!2008720 lt!2008725) lt!2009333)))

(declare-fun b!4899742 () Bool)

(declare-fun res!2092932 () Bool)

(assert (=> b!4899742 (=> (not res!2092932) (not e!3062780))))

(assert (=> b!4899742 (= res!2092932 (= (head!10462 lt!2008720) (head!10462 lt!2008725)))))

(declare-fun b!4899744 () Bool)

(assert (=> b!4899744 (= e!3062782 (>= (size!37169 lt!2008725) (size!37169 lt!2008720)))))

(declare-fun b!4899743 () Bool)

(assert (=> b!4899743 (= e!3062780 (isPrefix!4901 (tail!9608 lt!2008720) (tail!9608 lt!2008725)))))

(assert (= (and d!1574722 (not res!2092935)) b!4899741))

(assert (= (and b!4899741 res!2092934) b!4899742))

(assert (= (and b!4899742 res!2092932) b!4899743))

(assert (= (and d!1574722 (not res!2092933)) b!4899744))

(declare-fun m!5907790 () Bool)

(assert (=> b!4899742 m!5907790))

(declare-fun m!5907792 () Bool)

(assert (=> b!4899742 m!5907792))

(declare-fun m!5907794 () Bool)

(assert (=> b!4899744 m!5907794))

(declare-fun m!5907796 () Bool)

(assert (=> b!4899744 m!5907796))

(declare-fun m!5907798 () Bool)

(assert (=> b!4899743 m!5907798))

(declare-fun m!5907800 () Bool)

(assert (=> b!4899743 m!5907800))

(assert (=> b!4899743 m!5907798))

(assert (=> b!4899743 m!5907800))

(declare-fun m!5907802 () Bool)

(assert (=> b!4899743 m!5907802))

(assert (=> d!1574112 d!1574722))

(assert (=> d!1574112 d!1574020))

(assert (=> d!1574112 d!1574616))

(declare-fun d!1574724 () Bool)

(assert (=> d!1574724 (isPrefix!4901 lt!2008720 lt!2008725)))

(declare-fun lt!2009334 () Unit!146503)

(assert (=> d!1574724 (= lt!2009334 (choose!35766 lt!2008720 lt!2008725))))

(assert (=> d!1574724 (= (lemmaIsPrefixRefl!3298 lt!2008720 lt!2008725) lt!2009334)))

(declare-fun bs!1176635 () Bool)

(assert (= bs!1176635 d!1574724))

(assert (=> bs!1176635 m!5906016))

(declare-fun m!5907804 () Bool)

(assert (=> bs!1176635 m!5907804))

(assert (=> d!1574112 d!1574724))

(declare-fun d!1574726 () Bool)

(declare-fun lt!2009335 () Int)

(assert (=> d!1574726 (>= lt!2009335 0)))

(declare-fun e!3062783 () Int)

(assert (=> d!1574726 (= lt!2009335 e!3062783)))

(declare-fun c!832822 () Bool)

(assert (=> d!1574726 (= c!832822 (is-Nil!56428 (list!17749 (xs!18065 (c!832544 input!1236)))))))

(assert (=> d!1574726 (= (size!37169 (list!17749 (xs!18065 (c!832544 input!1236)))) lt!2009335)))

(declare-fun b!4899745 () Bool)

(assert (=> b!4899745 (= e!3062783 0)))

(declare-fun b!4899746 () Bool)

(assert (=> b!4899746 (= e!3062783 (+ 1 (size!37169 (t!366238 (list!17749 (xs!18065 (c!832544 input!1236)))))))))

(assert (= (and d!1574726 c!832822) b!4899745))

(assert (= (and d!1574726 (not c!832822)) b!4899746))

(declare-fun m!5907806 () Bool)

(assert (=> b!4899746 m!5907806))

(assert (=> b!4898845 d!1574726))

(assert (=> b!4898845 d!1574450))

(assert (=> d!1574192 d!1574726))

(assert (=> d!1574192 d!1574450))

(declare-fun d!1574728 () Bool)

(declare-fun e!3062786 () Bool)

(assert (=> d!1574728 e!3062786))

(declare-fun res!2092938 () Bool)

(assert (=> d!1574728 (=> (not res!2092938) (not e!3062786))))

(declare-fun lt!2009338 () BalanceConc!28928)

(assert (=> d!1574728 (= res!2092938 (= (list!17745 lt!2009338) (list!17745 (_1!33560 lt!2008636))))))

(declare-fun fromList!935 (List!56552) Conc!14749)

(assert (=> d!1574728 (= lt!2009338 (BalanceConc!28929 (fromList!935 (list!17745 (_1!33560 lt!2008636)))))))

(assert (=> d!1574728 (= (fromListB!2698 (list!17745 (_1!33560 lt!2008636))) lt!2009338)))

(declare-fun b!4899749 () Bool)

(assert (=> b!4899749 (= e!3062786 (isBalanced!4019 (fromList!935 (list!17745 (_1!33560 lt!2008636)))))))

(assert (= (and d!1574728 res!2092938) b!4899749))

(declare-fun m!5907808 () Bool)

(assert (=> d!1574728 m!5907808))

(assert (=> d!1574728 m!5905766))

(declare-fun m!5907810 () Bool)

(assert (=> d!1574728 m!5907810))

(assert (=> b!4899749 m!5905766))

(assert (=> b!4899749 m!5907810))

(assert (=> b!4899749 m!5907810))

(declare-fun m!5907812 () Bool)

(assert (=> b!4899749 m!5907812))

(assert (=> d!1574118 d!1574728))

(assert (=> bm!339844 d!1574406))

(declare-fun d!1574730 () Bool)

(declare-fun c!832825 () Bool)

(assert (=> d!1574730 (= c!832825 (is-IntegerValue!25473 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun e!3062789 () Bool)

(assert (=> d!1574730 (= (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))) e!3062789)))

(declare-fun b!4899750 () Bool)

(declare-fun e!3062787 () Bool)

(assert (=> b!4899750 (= e!3062787 (inv!15 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun b!4899751 () Bool)

(declare-fun e!3062788 () Bool)

(assert (=> b!4899751 (= e!3062788 (inv!17 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun b!4899752 () Bool)

(assert (=> b!4899752 (= e!3062789 (inv!16 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun b!4899753 () Bool)

(assert (=> b!4899753 (= e!3062789 e!3062788)))

(declare-fun c!832824 () Bool)

(assert (=> b!4899753 (= c!832824 (is-IntegerValue!25474 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(declare-fun b!4899754 () Bool)

(declare-fun res!2092939 () Bool)

(assert (=> b!4899754 (=> res!2092939 e!3062787)))

(assert (=> b!4899754 (= res!2092939 (not (is-IntegerValue!25475 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))))

(assert (=> b!4899754 (= e!3062788 e!3062787)))

(assert (= (and d!1574730 c!832825) b!4899752))

(assert (= (and d!1574730 (not c!832825)) b!4899753))

(assert (= (and b!4899753 c!832824) b!4899751))

(assert (= (and b!4899753 (not c!832824)) b!4899754))

(assert (= (and b!4899754 (not res!2092939)) b!4899750))

(declare-fun m!5907814 () Bool)

(assert (=> b!4899750 m!5907814))

(declare-fun m!5907816 () Bool)

(assert (=> b!4899751 m!5907816))

(declare-fun m!5907818 () Bool)

(assert (=> b!4899752 m!5907818))

(assert (=> tb!259455 d!1574730))

(assert (=> b!4898856 d!1574580))

(assert (=> b!4898686 d!1574558))

(assert (=> b!4898686 d!1574560))

(assert (=> b!4898686 d!1574020))

(assert (=> b!4898686 d!1574616))

(assert (=> b!4898686 d!1574614))

(declare-fun d!1574732 () Bool)

(declare-fun e!3062790 () Bool)

(assert (=> d!1574732 e!3062790))

(declare-fun res!2092940 () Bool)

(assert (=> d!1574732 (=> (not res!2092940) (not e!3062790))))

(declare-fun lt!2009339 () List!56552)

(assert (=> d!1574732 (= res!2092940 (= (content!10031 lt!2009339) (set.union (content!10031 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))) (content!10031 (_2!33556 (get!19496 lt!2008851))))))))

(declare-fun e!3062791 () List!56552)

(assert (=> d!1574732 (= lt!2009339 e!3062791)))

(declare-fun c!832826 () Bool)

(assert (=> d!1574732 (= c!832826 (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))))))

(assert (=> d!1574732 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))) (_2!33556 (get!19496 lt!2008851))) lt!2009339)))

(declare-fun b!4899758 () Bool)

(assert (=> b!4899758 (= e!3062790 (or (not (= (_2!33556 (get!19496 lt!2008851)) Nil!56428)) (= lt!2009339 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851)))))))))

(declare-fun b!4899755 () Bool)

(assert (=> b!4899755 (= e!3062791 (_2!33556 (get!19496 lt!2008851)))))

(declare-fun b!4899757 () Bool)

(declare-fun res!2092941 () Bool)

(assert (=> b!4899757 (=> (not res!2092941) (not e!3062790))))

(assert (=> b!4899757 (= res!2092941 (= (size!37169 lt!2009339) (+ (size!37169 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))) (size!37169 (_2!33556 (get!19496 lt!2008851))))))))

(declare-fun b!4899756 () Bool)

(assert (=> b!4899756 (= e!3062791 (Cons!56428 (h!62876 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))) (++!12250 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008851))))) (_2!33556 (get!19496 lt!2008851)))))))

(assert (= (and d!1574732 c!832826) b!4899755))

(assert (= (and d!1574732 (not c!832826)) b!4899756))

(assert (= (and d!1574732 res!2092940) b!4899757))

(assert (= (and b!4899757 res!2092941) b!4899758))

(declare-fun m!5907820 () Bool)

(assert (=> d!1574732 m!5907820))

(assert (=> d!1574732 m!5906228))

(declare-fun m!5907822 () Bool)

(assert (=> d!1574732 m!5907822))

(declare-fun m!5907824 () Bool)

(assert (=> d!1574732 m!5907824))

(declare-fun m!5907826 () Bool)

(assert (=> b!4899757 m!5907826))

(assert (=> b!4899757 m!5906228))

(declare-fun m!5907828 () Bool)

(assert (=> b!4899757 m!5907828))

(assert (=> b!4899757 m!5906242))

(declare-fun m!5907830 () Bool)

(assert (=> b!4899756 m!5907830))

(assert (=> b!4898829 d!1574732))

(assert (=> b!4898829 d!1574424))

(assert (=> b!4898829 d!1574426))

(assert (=> b!4898829 d!1574428))

(declare-fun d!1574734 () Bool)

(assert (=> d!1574734 (= (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> bm!339852 d!1574734))

(declare-fun b!4899759 () Bool)

(declare-fun e!3062792 () List!56552)

(assert (=> b!4899759 (= e!3062792 Nil!56428)))

(declare-fun d!1574736 () Bool)

(declare-fun c!832827 () Bool)

(assert (=> d!1574736 (= c!832827 (is-Empty!14749 (c!832544 (_2!33555 (get!19497 lt!2008609)))))))

(assert (=> d!1574736 (= (list!17747 (c!832544 (_2!33555 (get!19497 lt!2008609)))) e!3062792)))

(declare-fun b!4899760 () Bool)

(declare-fun e!3062793 () List!56552)

(assert (=> b!4899760 (= e!3062792 e!3062793)))

(declare-fun c!832828 () Bool)

(assert (=> b!4899760 (= c!832828 (is-Leaf!24557 (c!832544 (_2!33555 (get!19497 lt!2008609)))))))

(declare-fun b!4899762 () Bool)

(assert (=> b!4899762 (= e!3062793 (++!12250 (list!17747 (left!41002 (c!832544 (_2!33555 (get!19497 lt!2008609))))) (list!17747 (right!41332 (c!832544 (_2!33555 (get!19497 lt!2008609)))))))))

(declare-fun b!4899761 () Bool)

(assert (=> b!4899761 (= e!3062793 (list!17749 (xs!18065 (c!832544 (_2!33555 (get!19497 lt!2008609))))))))

(assert (= (and d!1574736 c!832827) b!4899759))

(assert (= (and d!1574736 (not c!832827)) b!4899760))

(assert (= (and b!4899760 c!832828) b!4899761))

(assert (= (and b!4899760 (not c!832828)) b!4899762))

(declare-fun m!5907832 () Bool)

(assert (=> b!4899762 m!5907832))

(declare-fun m!5907834 () Bool)

(assert (=> b!4899762 m!5907834))

(assert (=> b!4899762 m!5907832))

(assert (=> b!4899762 m!5907834))

(declare-fun m!5907836 () Bool)

(assert (=> b!4899762 m!5907836))

(declare-fun m!5907838 () Bool)

(assert (=> b!4899761 m!5907838))

(assert (=> d!1574164 d!1574736))

(declare-fun d!1574738 () Bool)

(assert (=> d!1574738 (= (inv!72742 (xs!18065 (left!41002 (c!832544 input!1236)))) (<= (size!37169 (innerList!14837 (xs!18065 (left!41002 (c!832544 input!1236))))) 2147483647))))

(declare-fun bs!1176636 () Bool)

(assert (= bs!1176636 d!1574738))

(declare-fun m!5907840 () Bool)

(assert (=> bs!1176636 m!5907840))

(assert (=> b!4898982 d!1574738))

(declare-fun b!4899763 () Bool)

(declare-fun e!3062800 () Bool)

(declare-fun e!3062795 () Bool)

(assert (=> b!4899763 (= e!3062800 e!3062795)))

(declare-fun c!832831 () Bool)

(assert (=> b!4899763 (= c!832831 (is-EmptyLang!13256 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))))

(declare-fun b!4899764 () Bool)

(declare-fun res!2092949 () Bool)

(declare-fun e!3062794 () Bool)

(assert (=> b!4899764 (=> res!2092949 e!3062794)))

(declare-fun e!3062796 () Bool)

(assert (=> b!4899764 (= res!2092949 e!3062796)))

(declare-fun res!2092945 () Bool)

(assert (=> b!4899764 (=> (not res!2092945) (not e!3062796))))

(declare-fun lt!2009340 () Bool)

(assert (=> b!4899764 (= res!2092945 lt!2009340)))

(declare-fun b!4899765 () Bool)

(declare-fun e!3062797 () Bool)

(assert (=> b!4899765 (= e!3062797 (matchR!6537 (derivativeStep!3884 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888))))) (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888))))))))

(declare-fun d!1574740 () Bool)

(assert (=> d!1574740 e!3062800))

(declare-fun c!832829 () Bool)

(assert (=> d!1574740 (= c!832829 (is-EmptyExpr!13256 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))))

(assert (=> d!1574740 (= lt!2009340 e!3062797)))

(declare-fun c!832830 () Bool)

(assert (=> d!1574740 (= c!832830 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))

(assert (=> d!1574740 (validRegex!5889 (regex!8181 (h!62878 (t!366240 rulesArg!165))))))

(assert (=> d!1574740 (= (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))) lt!2009340)))

(declare-fun b!4899766 () Bool)

(declare-fun res!2092942 () Bool)

(assert (=> b!4899766 (=> (not res!2092942) (not e!3062796))))

(declare-fun call!339944 () Bool)

(assert (=> b!4899766 (= res!2092942 (not call!339944))))

(declare-fun b!4899767 () Bool)

(assert (=> b!4899767 (= e!3062800 (= lt!2009340 call!339944))))

(declare-fun b!4899768 () Bool)

(declare-fun res!2092943 () Bool)

(assert (=> b!4899768 (=> res!2092943 e!3062794)))

(assert (=> b!4899768 (= res!2092943 (not (is-ElementMatch!13256 (regex!8181 (h!62878 (t!366240 rulesArg!165))))))))

(assert (=> b!4899768 (= e!3062795 e!3062794)))

(declare-fun b!4899769 () Bool)

(declare-fun e!3062798 () Bool)

(assert (=> b!4899769 (= e!3062798 (not (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))) (c!832545 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))))))

(declare-fun bm!339939 () Bool)

(assert (=> bm!339939 (= call!339944 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))

(declare-fun b!4899770 () Bool)

(assert (=> b!4899770 (= e!3062796 (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))) (c!832545 (regex!8181 (h!62878 (t!366240 rulesArg!165))))))))

(declare-fun b!4899771 () Bool)

(declare-fun res!2092948 () Bool)

(assert (=> b!4899771 (=> res!2092948 e!3062798)))

(assert (=> b!4899771 (= res!2092948 (not (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888)))))))))

(declare-fun b!4899772 () Bool)

(declare-fun e!3062799 () Bool)

(assert (=> b!4899772 (= e!3062794 e!3062799)))

(declare-fun res!2092946 () Bool)

(assert (=> b!4899772 (=> (not res!2092946) (not e!3062799))))

(assert (=> b!4899772 (= res!2092946 (not lt!2009340))))

(declare-fun b!4899773 () Bool)

(assert (=> b!4899773 (= e!3062797 (nullable!4562 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))))

(declare-fun b!4899774 () Bool)

(declare-fun res!2092944 () Bool)

(assert (=> b!4899774 (=> (not res!2092944) (not e!3062796))))

(assert (=> b!4899774 (= res!2092944 (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) lt!2008888 lt!2008888 (size!37169 lt!2008888))))))))

(declare-fun b!4899775 () Bool)

(assert (=> b!4899775 (= e!3062795 (not lt!2009340))))

(declare-fun b!4899776 () Bool)

(assert (=> b!4899776 (= e!3062799 e!3062798)))

(declare-fun res!2092947 () Bool)

(assert (=> b!4899776 (=> res!2092947 e!3062798)))

(assert (=> b!4899776 (= res!2092947 call!339944)))

(assert (= (and d!1574740 c!832830) b!4899773))

(assert (= (and d!1574740 (not c!832830)) b!4899765))

(assert (= (and d!1574740 c!832829) b!4899767))

(assert (= (and d!1574740 (not c!832829)) b!4899763))

(assert (= (and b!4899763 c!832831) b!4899775))

(assert (= (and b!4899763 (not c!832831)) b!4899768))

(assert (= (and b!4899768 (not res!2092943)) b!4899764))

(assert (= (and b!4899764 res!2092945) b!4899766))

(assert (= (and b!4899766 res!2092942) b!4899774))

(assert (= (and b!4899774 res!2092944) b!4899770))

(assert (= (and b!4899764 (not res!2092949)) b!4899772))

(assert (= (and b!4899772 res!2092946) b!4899776))

(assert (= (and b!4899776 (not res!2092947)) b!4899771))

(assert (= (and b!4899771 (not res!2092948)) b!4899769))

(assert (= (or b!4899767 b!4899766 b!4899776) bm!339939))

(declare-fun m!5907842 () Bool)

(assert (=> b!4899774 m!5907842))

(assert (=> b!4899774 m!5907842))

(declare-fun m!5907844 () Bool)

(assert (=> b!4899774 m!5907844))

(declare-fun m!5907846 () Bool)

(assert (=> b!4899770 m!5907846))

(assert (=> d!1574740 m!5906368))

(assert (=> d!1574740 m!5907466))

(assert (=> b!4899769 m!5907846))

(assert (=> bm!339939 m!5906368))

(assert (=> b!4899765 m!5907846))

(assert (=> b!4899765 m!5907846))

(declare-fun m!5907848 () Bool)

(assert (=> b!4899765 m!5907848))

(assert (=> b!4899765 m!5907842))

(assert (=> b!4899765 m!5907848))

(assert (=> b!4899765 m!5907842))

(declare-fun m!5907850 () Bool)

(assert (=> b!4899765 m!5907850))

(assert (=> b!4899773 m!5907468))

(assert (=> b!4899771 m!5907842))

(assert (=> b!4899771 m!5907842))

(assert (=> b!4899771 m!5907844))

(assert (=> b!4898938 d!1574740))

(assert (=> b!4898938 d!1574632))

(assert (=> b!4898938 d!1574128))

(assert (=> b!4898938 d!1574644))

(declare-fun d!1574742 () Bool)

(declare-fun lt!2009341 () Int)

(assert (=> d!1574742 (>= lt!2009341 0)))

(declare-fun e!3062801 () Int)

(assert (=> d!1574742 (= lt!2009341 e!3062801)))

(declare-fun c!832832 () Bool)

(assert (=> d!1574742 (= c!832832 (is-Nil!56428 (_2!33556 (get!19496 lt!2008705))))))

(assert (=> d!1574742 (= (size!37169 (_2!33556 (get!19496 lt!2008705))) lt!2009341)))

(declare-fun b!4899777 () Bool)

(assert (=> b!4899777 (= e!3062801 0)))

(declare-fun b!4899778 () Bool)

(assert (=> b!4899778 (= e!3062801 (+ 1 (size!37169 (t!366238 (_2!33556 (get!19496 lt!2008705))))))))

(assert (= (and d!1574742 c!832832) b!4899777))

(assert (= (and d!1574742 (not c!832832)) b!4899778))

(declare-fun m!5907852 () Bool)

(assert (=> b!4899778 m!5907852))

(assert (=> b!4898657 d!1574742))

(assert (=> b!4898657 d!1574480))

(assert (=> b!4898657 d!1574554))

(declare-fun d!1574744 () Bool)

(declare-fun e!3062802 () Bool)

(assert (=> d!1574744 e!3062802))

(declare-fun res!2092950 () Bool)

(assert (=> d!1574744 (=> (not res!2092950) (not e!3062802))))

(declare-fun lt!2009342 () List!56552)

(assert (=> d!1574744 (= res!2092950 (= (content!10031 lt!2009342) (set.union (content!10031 (_1!33559 lt!2008805)) (content!10031 (_2!33559 lt!2008805)))))))

(declare-fun e!3062803 () List!56552)

(assert (=> d!1574744 (= lt!2009342 e!3062803)))

(declare-fun c!832833 () Bool)

(assert (=> d!1574744 (= c!832833 (is-Nil!56428 (_1!33559 lt!2008805)))))

(assert (=> d!1574744 (= (++!12250 (_1!33559 lt!2008805) (_2!33559 lt!2008805)) lt!2009342)))

(declare-fun b!4899782 () Bool)

(assert (=> b!4899782 (= e!3062802 (or (not (= (_2!33559 lt!2008805) Nil!56428)) (= lt!2009342 (_1!33559 lt!2008805))))))

(declare-fun b!4899779 () Bool)

(assert (=> b!4899779 (= e!3062803 (_2!33559 lt!2008805))))

(declare-fun b!4899781 () Bool)

(declare-fun res!2092951 () Bool)

(assert (=> b!4899781 (=> (not res!2092951) (not e!3062802))))

(assert (=> b!4899781 (= res!2092951 (= (size!37169 lt!2009342) (+ (size!37169 (_1!33559 lt!2008805)) (size!37169 (_2!33559 lt!2008805)))))))

(declare-fun b!4899780 () Bool)

(assert (=> b!4899780 (= e!3062803 (Cons!56428 (h!62876 (_1!33559 lt!2008805)) (++!12250 (t!366238 (_1!33559 lt!2008805)) (_2!33559 lt!2008805))))))

(assert (= (and d!1574744 c!832833) b!4899779))

(assert (= (and d!1574744 (not c!832833)) b!4899780))

(assert (= (and d!1574744 res!2092950) b!4899781))

(assert (= (and b!4899781 res!2092951) b!4899782))

(declare-fun m!5907854 () Bool)

(assert (=> d!1574744 m!5907854))

(declare-fun m!5907856 () Bool)

(assert (=> d!1574744 m!5907856))

(declare-fun m!5907858 () Bool)

(assert (=> d!1574744 m!5907858))

(declare-fun m!5907860 () Bool)

(assert (=> b!4899781 m!5907860))

(assert (=> b!4899781 m!5906090))

(declare-fun m!5907862 () Bool)

(assert (=> b!4899781 m!5907862))

(declare-fun m!5907864 () Bool)

(assert (=> b!4899780 m!5907864))

(assert (=> d!1574120 d!1574744))

(assert (=> d!1574120 d!1574602))

(declare-fun d!1574746 () Bool)

(declare-fun e!3062804 () Bool)

(assert (=> d!1574746 e!3062804))

(declare-fun res!2092952 () Bool)

(assert (=> d!1574746 (=> (not res!2092952) (not e!3062804))))

(declare-fun lt!2009343 () List!56552)

(assert (=> d!1574746 (= res!2092952 (= (content!10031 lt!2009343) (set.union (content!10031 Nil!56428) (content!10031 lt!2008644))))))

(declare-fun e!3062805 () List!56552)

(assert (=> d!1574746 (= lt!2009343 e!3062805)))

(declare-fun c!832834 () Bool)

(assert (=> d!1574746 (= c!832834 (is-Nil!56428 Nil!56428))))

(assert (=> d!1574746 (= (++!12250 Nil!56428 lt!2008644) lt!2009343)))

(declare-fun b!4899786 () Bool)

(assert (=> b!4899786 (= e!3062804 (or (not (= lt!2008644 Nil!56428)) (= lt!2009343 Nil!56428)))))

(declare-fun b!4899783 () Bool)

(assert (=> b!4899783 (= e!3062805 lt!2008644)))

(declare-fun b!4899785 () Bool)

(declare-fun res!2092953 () Bool)

(assert (=> b!4899785 (=> (not res!2092953) (not e!3062804))))

(assert (=> b!4899785 (= res!2092953 (= (size!37169 lt!2009343) (+ (size!37169 Nil!56428) (size!37169 lt!2008644))))))

(declare-fun b!4899784 () Bool)

(assert (=> b!4899784 (= e!3062805 (Cons!56428 (h!62876 Nil!56428) (++!12250 (t!366238 Nil!56428) lt!2008644)))))

(assert (= (and d!1574746 c!832834) b!4899783))

(assert (= (and d!1574746 (not c!832834)) b!4899784))

(assert (= (and d!1574746 res!2092952) b!4899785))

(assert (= (and b!4899785 res!2092953) b!4899786))

(declare-fun m!5907866 () Bool)

(assert (=> d!1574746 m!5907866))

(assert (=> d!1574746 m!5906960))

(declare-fun m!5907868 () Bool)

(assert (=> d!1574746 m!5907868))

(declare-fun m!5907870 () Bool)

(assert (=> b!4899785 m!5907870))

(assert (=> b!4899785 m!5905738))

(assert (=> b!4899785 m!5905740))

(declare-fun m!5907872 () Bool)

(assert (=> b!4899784 m!5907872))

(assert (=> d!1574120 d!1574746))

(assert (=> d!1574120 d!1574404))

(declare-fun d!1574748 () Bool)

(declare-fun lostCauseFct!275 (Regex!13256) Bool)

(assert (=> d!1574748 (= (lostCause!1092 (regex!8181 (h!62878 rulesArg!165))) (lostCauseFct!275 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun bs!1176637 () Bool)

(assert (= bs!1176637 d!1574748))

(declare-fun m!5907874 () Bool)

(assert (=> bs!1176637 m!5907874))

(assert (=> d!1574120 d!1574748))

(declare-fun d!1574750 () Bool)

(assert (=> d!1574750 (= lt!2008644 lt!2008802)))

(declare-fun lt!2009346 () Unit!146503)

(declare-fun choose!35780 (List!56552 List!56552 List!56552 List!56552 List!56552) Unit!146503)

(assert (=> d!1574750 (= lt!2009346 (choose!35780 Nil!56428 lt!2008644 Nil!56428 lt!2008802 lt!2008644))))

(assert (=> d!1574750 (isPrefix!4901 Nil!56428 lt!2008644)))

(assert (=> d!1574750 (= (lemmaSamePrefixThenSameSuffix!2309 Nil!56428 lt!2008644 Nil!56428 lt!2008802 lt!2008644) lt!2009346)))

(declare-fun bs!1176638 () Bool)

(assert (= bs!1176638 d!1574750))

(declare-fun m!5907876 () Bool)

(assert (=> bs!1176638 m!5907876))

(assert (=> bs!1176638 m!5906956))

(assert (=> d!1574120 d!1574750))

(declare-fun d!1574752 () Bool)

(assert (=> d!1574752 (isPrefix!4901 Nil!56428 (++!12250 Nil!56428 lt!2008644))))

(declare-fun lt!2009349 () Unit!146503)

(declare-fun choose!35781 (List!56552 List!56552) Unit!146503)

(assert (=> d!1574752 (= lt!2009349 (choose!35781 Nil!56428 lt!2008644))))

(assert (=> d!1574752 (= (lemmaConcatTwoListThenFirstIsPrefix!3129 Nil!56428 lt!2008644) lt!2009349)))

(declare-fun bs!1176639 () Bool)

(assert (= bs!1176639 d!1574752))

(assert (=> bs!1176639 m!5906078))

(assert (=> bs!1176639 m!5906078))

(assert (=> bs!1176639 m!5906082))

(declare-fun m!5907878 () Bool)

(assert (=> bs!1176639 m!5907878))

(assert (=> d!1574120 d!1574752))

(declare-fun b!4899787 () Bool)

(declare-fun e!3062807 () Bool)

(declare-fun e!3062806 () Bool)

(assert (=> b!4899787 (= e!3062807 e!3062806)))

(declare-fun res!2092956 () Bool)

(assert (=> b!4899787 (=> (not res!2092956) (not e!3062806))))

(assert (=> b!4899787 (= res!2092956 (not (is-Nil!56428 (++!12250 Nil!56428 lt!2008644))))))

(declare-fun d!1574754 () Bool)

(declare-fun e!3062808 () Bool)

(assert (=> d!1574754 e!3062808))

(declare-fun res!2092955 () Bool)

(assert (=> d!1574754 (=> res!2092955 e!3062808)))

(declare-fun lt!2009350 () Bool)

(assert (=> d!1574754 (= res!2092955 (not lt!2009350))))

(assert (=> d!1574754 (= lt!2009350 e!3062807)))

(declare-fun res!2092957 () Bool)

(assert (=> d!1574754 (=> res!2092957 e!3062807)))

(assert (=> d!1574754 (= res!2092957 (is-Nil!56428 Nil!56428))))

(assert (=> d!1574754 (= (isPrefix!4901 Nil!56428 (++!12250 Nil!56428 lt!2008644)) lt!2009350)))

(declare-fun b!4899788 () Bool)

(declare-fun res!2092954 () Bool)

(assert (=> b!4899788 (=> (not res!2092954) (not e!3062806))))

(assert (=> b!4899788 (= res!2092954 (= (head!10462 Nil!56428) (head!10462 (++!12250 Nil!56428 lt!2008644))))))

(declare-fun b!4899790 () Bool)

(assert (=> b!4899790 (= e!3062808 (>= (size!37169 (++!12250 Nil!56428 lt!2008644)) (size!37169 Nil!56428)))))

(declare-fun b!4899789 () Bool)

(assert (=> b!4899789 (= e!3062806 (isPrefix!4901 (tail!9608 Nil!56428) (tail!9608 (++!12250 Nil!56428 lt!2008644))))))

(assert (= (and d!1574754 (not res!2092957)) b!4899787))

(assert (= (and b!4899787 res!2092956) b!4899788))

(assert (= (and b!4899788 res!2092954) b!4899789))

(assert (= (and d!1574754 (not res!2092955)) b!4899790))

(declare-fun m!5907880 () Bool)

(assert (=> b!4899788 m!5907880))

(assert (=> b!4899788 m!5906078))

(declare-fun m!5907882 () Bool)

(assert (=> b!4899788 m!5907882))

(assert (=> b!4899790 m!5906078))

(declare-fun m!5907884 () Bool)

(assert (=> b!4899790 m!5907884))

(assert (=> b!4899790 m!5905738))

(declare-fun m!5907886 () Bool)

(assert (=> b!4899789 m!5907886))

(assert (=> b!4899789 m!5906078))

(declare-fun m!5907888 () Bool)

(assert (=> b!4899789 m!5907888))

(assert (=> b!4899789 m!5907886))

(assert (=> b!4899789 m!5907888))

(declare-fun m!5907890 () Bool)

(assert (=> b!4899789 m!5907890))

(assert (=> d!1574120 d!1574754))

(declare-fun d!1574756 () Bool)

(declare-fun e!3062809 () Bool)

(assert (=> d!1574756 e!3062809))

(declare-fun res!2092958 () Bool)

(assert (=> d!1574756 (=> (not res!2092958) (not e!3062809))))

(declare-fun lt!2009351 () List!56552)

(assert (=> d!1574756 (= res!2092958 (= (content!10031 lt!2009351) (set.union (content!10031 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (content!10031 (_2!33556 (get!19496 lt!2008523))))))))

(declare-fun e!3062810 () List!56552)

(assert (=> d!1574756 (= lt!2009351 e!3062810)))

(declare-fun c!832835 () Bool)

(assert (=> d!1574756 (= c!832835 (is-Nil!56428 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (=> d!1574756 (= (++!12250 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) (_2!33556 (get!19496 lt!2008523))) lt!2009351)))

(declare-fun b!4899794 () Bool)

(assert (=> b!4899794 (= e!3062809 (or (not (= (_2!33556 (get!19496 lt!2008523)) Nil!56428)) (= lt!2009351 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun b!4899791 () Bool)

(assert (=> b!4899791 (= e!3062810 (_2!33556 (get!19496 lt!2008523)))))

(declare-fun b!4899793 () Bool)

(declare-fun res!2092959 () Bool)

(assert (=> b!4899793 (=> (not res!2092959) (not e!3062809))))

(assert (=> b!4899793 (= res!2092959 (= (size!37169 lt!2009351) (+ (size!37169 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (size!37169 (_2!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4899792 () Bool)

(assert (=> b!4899792 (= e!3062810 (Cons!56428 (h!62876 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (++!12250 (t!366238 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (_2!33556 (get!19496 lt!2008523)))))))

(assert (= (and d!1574756 c!832835) b!4899791))

(assert (= (and d!1574756 (not c!832835)) b!4899792))

(assert (= (and d!1574756 res!2092958) b!4899793))

(assert (= (and b!4899793 res!2092959) b!4899794))

(declare-fun m!5907892 () Bool)

(assert (=> d!1574756 m!5907892))

(assert (=> d!1574756 m!5907298))

(assert (=> d!1574756 m!5906188))

(declare-fun m!5907894 () Bool)

(assert (=> b!4899793 m!5907894))

(declare-fun m!5907896 () Bool)

(assert (=> b!4899793 m!5907896))

(assert (=> b!4899793 m!5905628))

(declare-fun m!5907898 () Bool)

(assert (=> b!4899792 m!5907898))

(assert (=> b!4898805 d!1574756))

(declare-fun d!1574758 () Bool)

(declare-fun lt!2009352 () Bool)

(assert (=> d!1574758 (= lt!2009352 (set.member (rule!11389 (_1!33556 (get!19496 lt!2008523))) (content!10032 (t!366240 rulesArg!165))))))

(declare-fun e!3062811 () Bool)

(assert (=> d!1574758 (= lt!2009352 e!3062811)))

(declare-fun res!2092960 () Bool)

(assert (=> d!1574758 (=> (not res!2092960) (not e!3062811))))

(assert (=> d!1574758 (= res!2092960 (is-Cons!56430 (t!366240 rulesArg!165)))))

(assert (=> d!1574758 (= (contains!19444 (t!366240 rulesArg!165) (rule!11389 (_1!33556 (get!19496 lt!2008523)))) lt!2009352)))

(declare-fun b!4899795 () Bool)

(declare-fun e!3062812 () Bool)

(assert (=> b!4899795 (= e!3062811 e!3062812)))

(declare-fun res!2092961 () Bool)

(assert (=> b!4899795 (=> res!2092961 e!3062812)))

(assert (=> b!4899795 (= res!2092961 (= (h!62878 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))

(declare-fun b!4899796 () Bool)

(assert (=> b!4899796 (= e!3062812 (contains!19444 (t!366240 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))

(assert (= (and d!1574758 res!2092960) b!4899795))

(assert (= (and b!4899795 (not res!2092961)) b!4899796))

(assert (=> d!1574758 m!5907780))

(declare-fun m!5907900 () Bool)

(assert (=> d!1574758 m!5907900))

(declare-fun m!5907902 () Bool)

(assert (=> b!4899796 m!5907902))

(assert (=> b!4898946 d!1574758))

(declare-fun b!4899797 () Bool)

(declare-fun e!3062819 () Bool)

(declare-fun e!3062814 () Bool)

(assert (=> b!4899797 (= e!3062819 e!3062814)))

(declare-fun c!832838 () Bool)

(assert (=> b!4899797 (= c!832838 (is-EmptyLang!13256 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))))

(declare-fun b!4899798 () Bool)

(declare-fun res!2092969 () Bool)

(declare-fun e!3062813 () Bool)

(assert (=> b!4899798 (=> res!2092969 e!3062813)))

(declare-fun e!3062815 () Bool)

(assert (=> b!4899798 (= res!2092969 e!3062815)))

(declare-fun res!2092965 () Bool)

(assert (=> b!4899798 (=> (not res!2092965) (not e!3062815))))

(declare-fun lt!2009353 () Bool)

(assert (=> b!4899798 (= res!2092965 lt!2009353)))

(declare-fun b!4899799 () Bool)

(declare-fun e!3062816 () Bool)

(assert (=> b!4899799 (= e!3062816 (matchR!6537 (derivativeStep!3884 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) (head!10462 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))) (tail!9608 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))))

(declare-fun d!1574760 () Bool)

(assert (=> d!1574760 e!3062819))

(declare-fun c!832836 () Bool)

(assert (=> d!1574760 (= c!832836 (is-EmptyExpr!13256 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))))

(assert (=> d!1574760 (= lt!2009353 e!3062816)))

(declare-fun c!832837 () Bool)

(assert (=> d!1574760 (= c!832837 (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(assert (=> d!1574760 (validRegex!5889 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(assert (=> d!1574760 (= (matchR!6537 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) lt!2009353)))

(declare-fun b!4899800 () Bool)

(declare-fun res!2092962 () Bool)

(assert (=> b!4899800 (=> (not res!2092962) (not e!3062815))))

(declare-fun call!339945 () Bool)

(assert (=> b!4899800 (= res!2092962 (not call!339945))))

(declare-fun b!4899801 () Bool)

(assert (=> b!4899801 (= e!3062819 (= lt!2009353 call!339945))))

(declare-fun b!4899802 () Bool)

(declare-fun res!2092963 () Bool)

(assert (=> b!4899802 (=> res!2092963 e!3062813)))

(assert (=> b!4899802 (= res!2092963 (not (is-ElementMatch!13256 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))))

(assert (=> b!4899802 (= e!3062814 e!3062813)))

(declare-fun b!4899803 () Bool)

(declare-fun e!3062817 () Bool)

(assert (=> b!4899803 (= e!3062817 (not (= (head!10462 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) (c!832545 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))))))

(declare-fun bm!339940 () Bool)

(assert (=> bm!339940 (= call!339945 (isEmpty!30306 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(declare-fun b!4899804 () Bool)

(assert (=> b!4899804 (= e!3062815 (= (head!10462 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) (c!832545 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))))

(declare-fun b!4899805 () Bool)

(declare-fun res!2092968 () Bool)

(assert (=> b!4899805 (=> res!2092968 e!3062817)))

(assert (=> b!4899805 (= res!2092968 (not (isEmpty!30306 (tail!9608 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))))

(declare-fun b!4899806 () Bool)

(declare-fun e!3062818 () Bool)

(assert (=> b!4899806 (= e!3062813 e!3062818)))

(declare-fun res!2092966 () Bool)

(assert (=> b!4899806 (=> (not res!2092966) (not e!3062818))))

(assert (=> b!4899806 (= res!2092966 (not lt!2009353))))

(declare-fun b!4899807 () Bool)

(assert (=> b!4899807 (= e!3062816 (nullable!4562 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))))

(declare-fun b!4899808 () Bool)

(declare-fun res!2092964 () Bool)

(assert (=> b!4899808 (=> (not res!2092964) (not e!3062815))))

(assert (=> b!4899808 (= res!2092964 (isEmpty!30306 (tail!9608 (tail!9608 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))))

(declare-fun b!4899809 () Bool)

(assert (=> b!4899809 (= e!3062814 (not lt!2009353))))

(declare-fun b!4899810 () Bool)

(assert (=> b!4899810 (= e!3062818 e!3062817)))

(declare-fun res!2092967 () Bool)

(assert (=> b!4899810 (=> res!2092967 e!3062817)))

(assert (=> b!4899810 (= res!2092967 call!339945)))

(assert (= (and d!1574760 c!832837) b!4899807))

(assert (= (and d!1574760 (not c!832837)) b!4899799))

(assert (= (and d!1574760 c!832836) b!4899801))

(assert (= (and d!1574760 (not c!832836)) b!4899797))

(assert (= (and b!4899797 c!832838) b!4899809))

(assert (= (and b!4899797 (not c!832838)) b!4899802))

(assert (= (and b!4899802 (not res!2092963)) b!4899798))

(assert (= (and b!4899798 res!2092965) b!4899800))

(assert (= (and b!4899800 res!2092962) b!4899808))

(assert (= (and b!4899808 res!2092964) b!4899804))

(assert (= (and b!4899798 (not res!2092969)) b!4899806))

(assert (= (and b!4899806 res!2092966) b!4899810))

(assert (= (and b!4899810 (not res!2092967)) b!4899805))

(assert (= (and b!4899805 (not res!2092968)) b!4899803))

(assert (= (or b!4899801 b!4899800 b!4899810) bm!339940))

(assert (=> b!4899808 m!5906284))

(declare-fun m!5907904 () Bool)

(assert (=> b!4899808 m!5907904))

(assert (=> b!4899808 m!5907904))

(declare-fun m!5907906 () Bool)

(assert (=> b!4899808 m!5907906))

(assert (=> b!4899804 m!5906284))

(declare-fun m!5907908 () Bool)

(assert (=> b!4899804 m!5907908))

(assert (=> d!1574760 m!5906284))

(assert (=> d!1574760 m!5906286))

(assert (=> d!1574760 m!5906290))

(declare-fun m!5907910 () Bool)

(assert (=> d!1574760 m!5907910))

(assert (=> b!4899803 m!5906284))

(assert (=> b!4899803 m!5907908))

(assert (=> bm!339940 m!5906284))

(assert (=> bm!339940 m!5906286))

(assert (=> b!4899799 m!5906284))

(assert (=> b!4899799 m!5907908))

(assert (=> b!4899799 m!5906290))

(assert (=> b!4899799 m!5907908))

(declare-fun m!5907912 () Bool)

(assert (=> b!4899799 m!5907912))

(assert (=> b!4899799 m!5906284))

(assert (=> b!4899799 m!5907904))

(assert (=> b!4899799 m!5907912))

(assert (=> b!4899799 m!5907904))

(declare-fun m!5907914 () Bool)

(assert (=> b!4899799 m!5907914))

(assert (=> b!4899807 m!5906290))

(declare-fun m!5907916 () Bool)

(assert (=> b!4899807 m!5907916))

(assert (=> b!4899805 m!5906284))

(assert (=> b!4899805 m!5907904))

(assert (=> b!4899805 m!5907904))

(assert (=> b!4899805 m!5907906))

(assert (=> b!4898888 d!1574760))

(declare-fun b!4899811 () Bool)

(declare-fun c!832841 () Bool)

(assert (=> b!4899811 (= c!832841 (nullable!4562 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun e!3062823 () Regex!13256)

(declare-fun e!3062821 () Regex!13256)

(assert (=> b!4899811 (= e!3062823 e!3062821)))

(declare-fun b!4899812 () Bool)

(declare-fun e!3062824 () Regex!13256)

(assert (=> b!4899812 (= e!3062824 (ite (= (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))) (c!832545 (regex!8181 (h!62878 rulesArg!165)))) EmptyExpr!13256 EmptyLang!13256))))

(declare-fun call!339948 () Regex!13256)

(declare-fun b!4899813 () Bool)

(declare-fun call!339947 () Regex!13256)

(assert (=> b!4899813 (= e!3062821 (Union!13256 (Concat!21748 call!339948 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))) call!339947))))

(declare-fun b!4899814 () Bool)

(declare-fun e!3062822 () Regex!13256)

(assert (=> b!4899814 (= e!3062822 e!3062823)))

(declare-fun c!832839 () Bool)

(assert (=> b!4899814 (= c!832839 (is-Star!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899815 () Bool)

(declare-fun call!339946 () Regex!13256)

(assert (=> b!4899815 (= e!3062823 (Concat!21748 call!339946 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899816 () Bool)

(assert (=> b!4899816 (= e!3062821 (Union!13256 (Concat!21748 call!339948 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))) EmptyLang!13256))))

(declare-fun bm!339941 () Bool)

(assert (=> bm!339941 (= call!339948 call!339946)))

(declare-fun b!4899817 () Bool)

(declare-fun call!339949 () Regex!13256)

(assert (=> b!4899817 (= e!3062822 (Union!13256 call!339949 call!339947))))

(declare-fun d!1574762 () Bool)

(declare-fun lt!2009354 () Regex!13256)

(assert (=> d!1574762 (validRegex!5889 lt!2009354)))

(declare-fun e!3062820 () Regex!13256)

(assert (=> d!1574762 (= lt!2009354 e!3062820)))

(declare-fun c!832840 () Bool)

(assert (=> d!1574762 (= c!832840 (or (is-EmptyExpr!13256 (regex!8181 (h!62878 rulesArg!165))) (is-EmptyLang!13256 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> d!1574762 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574762 (= (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))) lt!2009354)))

(declare-fun b!4899818 () Bool)

(declare-fun c!832842 () Bool)

(assert (=> b!4899818 (= c!832842 (is-Union!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> b!4899818 (= e!3062824 e!3062822)))

(declare-fun b!4899819 () Bool)

(assert (=> b!4899819 (= e!3062820 e!3062824)))

(declare-fun c!832843 () Bool)

(assert (=> b!4899819 (= c!832843 (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun bm!339942 () Bool)

(assert (=> bm!339942 (= call!339947 (derivativeStep!3884 (ite c!832842 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165))) (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(declare-fun b!4899820 () Bool)

(assert (=> b!4899820 (= e!3062820 EmptyLang!13256)))

(declare-fun bm!339943 () Bool)

(assert (=> bm!339943 (= call!339949 (derivativeStep!3884 (ite c!832842 (regOne!27025 (regex!8181 (h!62878 rulesArg!165))) (ite c!832839 (reg!13585 (regex!8181 (h!62878 rulesArg!165))) (regOne!27024 (regex!8181 (h!62878 rulesArg!165))))) (head!10462 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644))))))))

(declare-fun bm!339944 () Bool)

(assert (=> bm!339944 (= call!339946 call!339949)))

(assert (= (and d!1574762 c!832840) b!4899820))

(assert (= (and d!1574762 (not c!832840)) b!4899819))

(assert (= (and b!4899819 c!832843) b!4899812))

(assert (= (and b!4899819 (not c!832843)) b!4899818))

(assert (= (and b!4899818 c!832842) b!4899817))

(assert (= (and b!4899818 (not c!832842)) b!4899814))

(assert (= (and b!4899814 c!832839) b!4899815))

(assert (= (and b!4899814 (not c!832839)) b!4899811))

(assert (= (and b!4899811 c!832841) b!4899813))

(assert (= (and b!4899811 (not c!832841)) b!4899816))

(assert (= (or b!4899813 b!4899816) bm!339941))

(assert (= (or b!4899815 bm!339941) bm!339944))

(assert (= (or b!4899817 bm!339944) bm!339943))

(assert (= (or b!4899817 b!4899813) bm!339942))

(declare-fun m!5907918 () Bool)

(assert (=> b!4899811 m!5907918))

(declare-fun m!5907920 () Bool)

(assert (=> d!1574762 m!5907920))

(assert (=> d!1574762 m!5905982))

(assert (=> bm!339942 m!5906288))

(declare-fun m!5907922 () Bool)

(assert (=> bm!339942 m!5907922))

(assert (=> bm!339943 m!5906288))

(declare-fun m!5907924 () Bool)

(assert (=> bm!339943 m!5907924))

(assert (=> b!4898888 d!1574762))

(assert (=> b!4898888 d!1574494))

(assert (=> b!4898888 d!1574668))

(declare-fun d!1574764 () Bool)

(assert (=> d!1574764 (= (head!10462 (tail!9608 lt!2008472)) (h!62876 (tail!9608 lt!2008472)))))

(assert (=> b!4898677 d!1574764))

(declare-fun d!1574766 () Bool)

(assert (=> d!1574766 (= lt!2008644 Nil!56428)))

(declare-fun lt!2009357 () Unit!146503)

(declare-fun choose!35782 (List!56552 List!56552 List!56552) Unit!146503)

(assert (=> d!1574766 (= lt!2009357 (choose!35782 lt!2008644 Nil!56428 lt!2008644))))

(assert (=> d!1574766 (isPrefix!4901 lt!2008644 lt!2008644)))

(assert (=> d!1574766 (= (lemmaIsPrefixSameLengthThenSameList!1064 lt!2008644 Nil!56428 lt!2008644) lt!2009357)))

(declare-fun bs!1176640 () Bool)

(assert (= bs!1176640 d!1574766))

(declare-fun m!5907926 () Bool)

(assert (=> bs!1176640 m!5907926))

(assert (=> bs!1176640 m!5906092))

(assert (=> bm!339843 d!1574766))

(declare-fun bs!1176641 () Bool)

(declare-fun b!4899825 () Bool)

(assert (= bs!1176641 (and b!4899825 b!4898475)))

(declare-fun lambda!244198 () Int)

(assert (=> bs!1176641 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244198 lambda!244166))))

(declare-fun bs!1176642 () Bool)

(assert (= bs!1176642 (and b!4899825 d!1574166)))

(assert (=> bs!1176642 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244198 lambda!244179))))

(declare-fun bs!1176643 () Bool)

(assert (= bs!1176643 (and b!4899825 b!4898937)))

(assert (=> bs!1176643 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (= lambda!244198 lambda!244184))))

(declare-fun bs!1176644 () Bool)

(assert (= bs!1176644 (and b!4899825 d!1574548)))

(assert (=> bs!1176644 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244198 lambda!244195))))

(declare-fun b!4899828 () Bool)

(declare-fun e!3062831 () Bool)

(assert (=> b!4899828 (= e!3062831 true)))

(declare-fun b!4899827 () Bool)

(declare-fun e!3062830 () Bool)

(assert (=> b!4899827 (= e!3062830 e!3062831)))

(assert (=> b!4899825 e!3062830))

(assert (= b!4899827 b!4899828))

(assert (= b!4899825 b!4899827))

(assert (=> b!4899828 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) (dynLambda!22686 order!25529 lambda!244198))))

(assert (=> b!4899828 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) (dynLambda!22686 order!25529 lambda!244198))))

(declare-fun b!4899821 () Bool)

(declare-fun e!3062826 () Bool)

(declare-fun e!3062829 () Bool)

(assert (=> b!4899821 (= e!3062826 e!3062829)))

(declare-fun res!2092971 () Bool)

(assert (=> b!4899821 (=> (not res!2092971) (not e!3062829))))

(declare-fun lt!2009364 () Option!14040)

(assert (=> b!4899821 (= res!2092971 (= (_1!33555 (get!19497 lt!2009364)) (_1!33556 (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236))))))))

(declare-fun b!4899822 () Bool)

(declare-fun e!3062828 () Bool)

(assert (=> b!4899822 (= e!3062828 e!3062826)))

(declare-fun res!2092973 () Bool)

(assert (=> b!4899822 (=> res!2092973 e!3062826)))

(assert (=> b!4899822 (= res!2092973 (not (isDefined!11053 lt!2009364)))))

(declare-fun b!4899823 () Bool)

(declare-fun e!3062825 () Option!14040)

(assert (=> b!4899823 (= e!3062825 None!14039)))

(declare-fun b!4899824 () Bool)

(assert (=> b!4899824 (= e!3062829 (= (list!17745 (_2!33555 (get!19497 lt!2009364))) (_2!33556 (get!19496 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236))))))))

(declare-fun b!4899826 () Bool)

(declare-fun e!3062827 () Bool)

(declare-fun lt!2009367 () List!56552)

(assert (=> b!4899826 (= e!3062827 (matchR!6537 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) Nil!56428 (size!37169 Nil!56428) lt!2009367 lt!2009367 (size!37169 lt!2009367)))))))

(declare-fun d!1574768 () Bool)

(assert (=> d!1574768 e!3062828))

(declare-fun res!2092970 () Bool)

(assert (=> d!1574768 (=> (not res!2092970) (not e!3062828))))

(assert (=> d!1574768 (= res!2092970 (= (isDefined!11053 lt!2009364) (isDefined!11052 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236)))))))

(assert (=> d!1574768 (= lt!2009364 e!3062825)))

(declare-fun c!832844 () Bool)

(declare-fun lt!2009359 () tuple2!60514)

(assert (=> d!1574768 (= c!832844 (isEmpty!30305 (_1!33560 lt!2009359)))))

(assert (=> d!1574768 (= lt!2009359 (findLongestMatchWithZipperSequence!275 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) input!1236))))

(assert (=> d!1574768 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))))))

(assert (=> d!1574768 (= (maxPrefixOneRuleZipperSequence!691 thiss!14805 (h!62878 (t!366240 (t!366240 rulesArg!165))) input!1236) lt!2009364)))

(assert (=> b!4899825 (= e!3062825 (Some!14039 (tuple2!60505 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) (_1!33560 lt!2009359)) (h!62878 (t!366240 (t!366240 rulesArg!165))) (size!37170 (_1!33560 lt!2009359)) (list!17745 (_1!33560 lt!2009359))) (_2!33560 lt!2009359))))))

(assert (=> b!4899825 (= lt!2009367 (list!17745 input!1236))))

(declare-fun lt!2009362 () Unit!146503)

(assert (=> b!4899825 (= lt!2009362 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) lt!2009367))))

(declare-fun res!2092972 () Bool)

(assert (=> b!4899825 (= res!2092972 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) Nil!56428 (size!37169 Nil!56428) lt!2009367 lt!2009367 (size!37169 lt!2009367)))))))

(assert (=> b!4899825 (=> res!2092972 e!3062827)))

(assert (=> b!4899825 e!3062827))

(declare-fun lt!2009366 () Unit!146503)

(assert (=> b!4899825 (= lt!2009366 lt!2009362)))

(declare-fun lt!2009360 () Unit!146503)

(assert (=> b!4899825 (= lt!2009360 (lemmaInv!1243 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))))))

(declare-fun lt!2009365 () Unit!146503)

(assert (=> b!4899825 (= lt!2009365 (ForallOf!1140 lambda!244198 (_1!33560 lt!2009359)))))

(declare-fun lt!2009361 () Unit!146503)

(assert (=> b!4899825 (= lt!2009361 (ForallOf!1140 lambda!244198 (seqFromList!5943 (list!17745 (_1!33560 lt!2009359)))))))

(declare-fun lt!2009358 () Option!14040)

(assert (=> b!4899825 (= lt!2009358 (Some!14039 (tuple2!60505 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) (_1!33560 lt!2009359)) (h!62878 (t!366240 (t!366240 rulesArg!165))) (size!37170 (_1!33560 lt!2009359)) (list!17745 (_1!33560 lt!2009359))) (_2!33560 lt!2009359))))))

(declare-fun lt!2009363 () Unit!146503)

(assert (=> b!4899825 (= lt!2009363 (lemmaEqSameImage!1097 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))) (_1!33560 lt!2009359) (seqFromList!5943 (list!17745 (_1!33560 lt!2009359)))))))

(assert (= (and d!1574768 c!832844) b!4899823))

(assert (= (and d!1574768 (not c!832844)) b!4899825))

(assert (= (and b!4899825 (not res!2092972)) b!4899826))

(assert (= (and d!1574768 res!2092970) b!4899822))

(assert (= (and b!4899822 (not res!2092973)) b!4899821))

(assert (= (and b!4899821 res!2092971) b!4899824))

(assert (=> b!4899826 m!5905738))

(declare-fun m!5907928 () Bool)

(assert (=> b!4899826 m!5907928))

(assert (=> b!4899826 m!5905738))

(assert (=> b!4899826 m!5907928))

(declare-fun m!5907930 () Bool)

(assert (=> b!4899826 m!5907930))

(declare-fun m!5907932 () Bool)

(assert (=> b!4899826 m!5907932))

(declare-fun m!5907934 () Bool)

(assert (=> b!4899822 m!5907934))

(declare-fun m!5907936 () Bool)

(assert (=> b!4899821 m!5907936))

(assert (=> b!4899821 m!5905562))

(assert (=> b!4899821 m!5905562))

(assert (=> b!4899821 m!5907432))

(assert (=> b!4899821 m!5907432))

(declare-fun m!5907938 () Bool)

(assert (=> b!4899821 m!5907938))

(assert (=> d!1574768 m!5905562))

(assert (=> d!1574768 m!5905562))

(assert (=> d!1574768 m!5907432))

(declare-fun m!5907940 () Bool)

(assert (=> d!1574768 m!5907940))

(assert (=> d!1574768 m!5907784))

(declare-fun m!5907942 () Bool)

(assert (=> d!1574768 m!5907942))

(assert (=> d!1574768 m!5907432))

(declare-fun m!5907944 () Bool)

(assert (=> d!1574768 m!5907944))

(assert (=> d!1574768 m!5907934))

(assert (=> b!4899824 m!5905562))

(assert (=> b!4899824 m!5905562))

(assert (=> b!4899824 m!5907432))

(declare-fun m!5907946 () Bool)

(assert (=> b!4899824 m!5907946))

(assert (=> b!4899824 m!5907432))

(assert (=> b!4899824 m!5907938))

(assert (=> b!4899824 m!5907936))

(assert (=> b!4899825 m!5905562))

(assert (=> b!4899825 m!5905738))

(declare-fun m!5907948 () Bool)

(assert (=> b!4899825 m!5907948))

(declare-fun m!5907950 () Bool)

(assert (=> b!4899825 m!5907950))

(declare-fun m!5907952 () Bool)

(assert (=> b!4899825 m!5907952))

(assert (=> b!4899825 m!5905738))

(assert (=> b!4899825 m!5907928))

(assert (=> b!4899825 m!5907930))

(declare-fun m!5907954 () Bool)

(assert (=> b!4899825 m!5907954))

(declare-fun m!5907956 () Bool)

(assert (=> b!4899825 m!5907956))

(declare-fun m!5907958 () Bool)

(assert (=> b!4899825 m!5907958))

(declare-fun m!5907960 () Bool)

(assert (=> b!4899825 m!5907960))

(declare-fun m!5907962 () Bool)

(assert (=> b!4899825 m!5907962))

(assert (=> b!4899825 m!5907952))

(assert (=> b!4899825 m!5907948))

(declare-fun m!5907964 () Bool)

(assert (=> b!4899825 m!5907964))

(assert (=> b!4899825 m!5907948))

(declare-fun m!5907966 () Bool)

(assert (=> b!4899825 m!5907966))

(assert (=> b!4899825 m!5907928))

(assert (=> bm!339820 d!1574768))

(declare-fun bs!1176645 () Bool)

(declare-fun d!1574770 () Bool)

(assert (= bs!1176645 (and d!1574770 d!1574088)))

(declare-fun lambda!244199 () Int)

(assert (=> bs!1176645 (= (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (= lambda!244199 lambda!244173))))

(declare-fun bs!1176646 () Bool)

(assert (= bs!1176646 (and d!1574770 d!1574138)))

(assert (=> bs!1176646 (= (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (= lambda!244199 lambda!244176))))

(declare-fun bs!1176647 () Bool)

(assert (= bs!1176647 (and d!1574770 d!1574648)))

(assert (=> bs!1176647 (= lambda!244199 lambda!244196)))

(assert (=> d!1574770 true))

(assert (=> d!1574770 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (dynLambda!22691 order!25539 lambda!244199))))

(assert (=> d!1574770 (= (equivClasses!3472 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (Forall2!1274 lambda!244199))))

(declare-fun bs!1176648 () Bool)

(assert (= bs!1176648 d!1574770))

(declare-fun m!5907968 () Bool)

(assert (=> bs!1176648 m!5907968))

(assert (=> b!4898904 d!1574770))

(assert (=> d!1574234 d!1574016))

(declare-fun d!1574772 () Bool)

(declare-fun lt!2009368 () Bool)

(assert (=> d!1574772 (= lt!2009368 (set.member (rule!11389 (_1!33556 (get!19496 lt!2008840))) (content!10032 (t!366240 rulesArg!165))))))

(declare-fun e!3062832 () Bool)

(assert (=> d!1574772 (= lt!2009368 e!3062832)))

(declare-fun res!2092974 () Bool)

(assert (=> d!1574772 (=> (not res!2092974) (not e!3062832))))

(assert (=> d!1574772 (= res!2092974 (is-Cons!56430 (t!366240 rulesArg!165)))))

(assert (=> d!1574772 (= (contains!19444 (t!366240 rulesArg!165) (rule!11389 (_1!33556 (get!19496 lt!2008840)))) lt!2009368)))

(declare-fun b!4899829 () Bool)

(declare-fun e!3062833 () Bool)

(assert (=> b!4899829 (= e!3062832 e!3062833)))

(declare-fun res!2092975 () Bool)

(assert (=> b!4899829 (=> res!2092975 e!3062833)))

(assert (=> b!4899829 (= res!2092975 (= (h!62878 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2008840)))))))

(declare-fun b!4899830 () Bool)

(assert (=> b!4899830 (= e!3062833 (contains!19444 (t!366240 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2008840)))))))

(assert (= (and d!1574772 res!2092974) b!4899829))

(assert (= (and b!4899829 (not res!2092975)) b!4899830))

(assert (=> d!1574772 m!5907780))

(declare-fun m!5907970 () Bool)

(assert (=> d!1574772 m!5907970))

(declare-fun m!5907972 () Bool)

(assert (=> b!4899830 m!5907972))

(assert (=> b!4898769 d!1574772))

(assert (=> b!4898769 d!1574412))

(declare-fun d!1574774 () Bool)

(assert (=> d!1574774 (= (list!17749 (xs!18065 (c!832544 (_2!33555 lt!2008468)))) (innerList!14837 (xs!18065 (c!832544 (_2!33555 lt!2008468)))))))

(assert (=> b!4898839 d!1574774))

(declare-fun d!1574776 () Bool)

(declare-fun e!3062836 () Bool)

(assert (=> d!1574776 e!3062836))

(declare-fun res!2092978 () Bool)

(assert (=> d!1574776 (=> res!2092978 e!3062836)))

(assert (=> d!1574776 (= res!2092978 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (=> d!1574776 true))

(declare-fun _$92!494 () Unit!146503)

(assert (=> d!1574776 (= (choose!35770 (regex!8181 (h!62878 rulesArg!165)) lt!2008644) _$92!494)))

(declare-fun b!4899833 () Bool)

(assert (=> b!4899833 (= e!3062836 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) lt!2008644 lt!2008644 (size!37169 lt!2008644)))))))

(assert (= (and d!1574776 (not res!2092978)) b!4899833))

(assert (=> d!1574776 m!5905738))

(assert (=> d!1574776 m!5905740))

(assert (=> d!1574776 m!5905738))

(assert (=> d!1574776 m!5905740))

(assert (=> d!1574776 m!5905742))

(assert (=> d!1574776 m!5905778))

(assert (=> b!4899833 m!5905738))

(assert (=> b!4899833 m!5905740))

(assert (=> b!4899833 m!5905738))

(assert (=> b!4899833 m!5905740))

(assert (=> b!4899833 m!5905742))

(assert (=> b!4899833 m!5905744))

(assert (=> d!1574140 d!1574776))

(assert (=> d!1574140 d!1574120))

(assert (=> d!1574140 d!1574602))

(assert (=> d!1574140 d!1574124))

(assert (=> d!1574140 d!1574142))

(assert (=> d!1574140 d!1574128))

(assert (=> b!4898833 d!1574428))

(declare-fun d!1574778 () Bool)

(assert (=> d!1574778 (= (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851))))) (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851))))))))

(declare-fun b_lambda!194981 () Bool)

(assert (=> (not b_lambda!194981) (not d!1574778)))

(declare-fun tb!259577 () Bool)

(declare-fun t!366378 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366378) tb!259577))

(declare-fun result!323236 () Bool)

(assert (=> tb!259577 (= result!323236 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851)))))))))

(declare-fun m!5907974 () Bool)

(assert (=> tb!259577 m!5907974))

(assert (=> d!1574778 t!366378))

(declare-fun b_and!345785 () Bool)

(assert (= b_and!345779 (and (=> t!366378 result!323236) b_and!345785)))

(declare-fun t!366380 () Bool)

(declare-fun tb!259579 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366380) tb!259579))

(declare-fun result!323238 () Bool)

(assert (= result!323238 result!323236))

(assert (=> d!1574778 t!366380))

(declare-fun b_and!345787 () Bool)

(assert (= b_and!345781 (and (=> t!366380 result!323238) b_and!345787)))

(declare-fun t!366382 () Bool)

(declare-fun tb!259581 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366382) tb!259581))

(declare-fun result!323240 () Bool)

(assert (= result!323240 result!323236))

(assert (=> d!1574778 t!366382))

(declare-fun b_and!345789 () Bool)

(assert (= b_and!345783 (and (=> t!366382 result!323240) b_and!345789)))

(assert (=> d!1574778 m!5906232))

(declare-fun m!5907976 () Bool)

(assert (=> d!1574778 m!5907976))

(assert (=> b!4898833 d!1574778))

(declare-fun d!1574780 () Bool)

(assert (=> d!1574780 (= (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851)))) (fromListB!2698 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008851)))))))

(declare-fun bs!1176649 () Bool)

(assert (= bs!1176649 d!1574780))

(declare-fun m!5907978 () Bool)

(assert (=> bs!1176649 m!5907978))

(assert (=> b!4898833 d!1574780))

(declare-fun d!1574782 () Bool)

(assert (=> d!1574782 (= (nullable!4562 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (nullableFct!1241 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun bs!1176650 () Bool)

(assert (= bs!1176650 d!1574782))

(declare-fun m!5907980 () Bool)

(assert (=> bs!1176650 m!5907980))

(assert (=> b!4898957 d!1574782))

(assert (=> b!4898530 d!1574176))

(assert (=> b!4898530 d!1574178))

(assert (=> bm!339838 d!1574394))

(declare-fun b!4899834 () Bool)

(declare-fun e!3062844 () Bool)

(declare-fun e!3062839 () Bool)

(assert (=> b!4899834 (= e!3062844 e!3062839)))

(declare-fun c!832847 () Bool)

(assert (=> b!4899834 (= c!832847 (is-EmptyLang!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899835 () Bool)

(declare-fun res!2092986 () Bool)

(declare-fun e!3062838 () Bool)

(assert (=> b!4899835 (=> res!2092986 e!3062838)))

(declare-fun e!3062840 () Bool)

(assert (=> b!4899835 (= res!2092986 e!3062840)))

(declare-fun res!2092982 () Bool)

(assert (=> b!4899835 (=> (not res!2092982) (not e!3062840))))

(declare-fun lt!2009369 () Bool)

(assert (=> b!4899835 (= res!2092982 lt!2009369)))

(declare-fun b!4899836 () Bool)

(declare-fun e!3062841 () Bool)

(assert (=> b!4899836 (= e!3062841 (matchR!6537 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710)))))) (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710)))))))))

(declare-fun d!1574784 () Bool)

(assert (=> d!1574784 e!3062844))

(declare-fun c!832845 () Bool)

(assert (=> d!1574784 (= c!832845 (is-EmptyExpr!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574784 (= lt!2009369 e!3062841)))

(declare-fun c!832846 () Bool)

(assert (=> d!1574784 (= c!832846 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))))))

(assert (=> d!1574784 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574784 (= (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))) lt!2009369)))

(declare-fun b!4899837 () Bool)

(declare-fun res!2092979 () Bool)

(assert (=> b!4899837 (=> (not res!2092979) (not e!3062840))))

(declare-fun call!339950 () Bool)

(assert (=> b!4899837 (= res!2092979 (not call!339950))))

(declare-fun b!4899838 () Bool)

(assert (=> b!4899838 (= e!3062844 (= lt!2009369 call!339950))))

(declare-fun b!4899839 () Bool)

(declare-fun res!2092980 () Bool)

(assert (=> b!4899839 (=> res!2092980 e!3062838)))

(assert (=> b!4899839 (= res!2092980 (not (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> b!4899839 (= e!3062839 e!3062838)))

(declare-fun b!4899840 () Bool)

(declare-fun e!3062842 () Bool)

(assert (=> b!4899840 (= e!3062842 (not (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))) (c!832545 (regex!8181 (h!62878 rulesArg!165))))))))

(declare-fun bm!339945 () Bool)

(assert (=> bm!339945 (= call!339950 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))))))

(declare-fun b!4899841 () Bool)

(assert (=> b!4899841 (= e!3062840 (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))) (c!832545 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun b!4899842 () Bool)

(declare-fun res!2092985 () Bool)

(assert (=> b!4899842 (=> res!2092985 e!3062842)))

(assert (=> b!4899842 (= res!2092985 (not (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))))))))

(declare-fun b!4899843 () Bool)

(declare-fun e!3062843 () Bool)

(assert (=> b!4899843 (= e!3062838 e!3062843)))

(declare-fun res!2092983 () Bool)

(assert (=> b!4899843 (=> (not res!2092983) (not e!3062843))))

(assert (=> b!4899843 (= res!2092983 (not lt!2009369))))

(declare-fun b!4899844 () Bool)

(assert (=> b!4899844 (= e!3062841 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899845 () Bool)

(declare-fun res!2092981 () Bool)

(assert (=> b!4899845 (=> (not res!2092981) (not e!3062840))))

(assert (=> b!4899845 (= res!2092981 (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710)))))))))

(declare-fun b!4899846 () Bool)

(assert (=> b!4899846 (= e!3062839 (not lt!2009369))))

(declare-fun b!4899847 () Bool)

(assert (=> b!4899847 (= e!3062843 e!3062842)))

(declare-fun res!2092984 () Bool)

(assert (=> b!4899847 (=> res!2092984 e!3062842)))

(assert (=> b!4899847 (= res!2092984 call!339950)))

(assert (= (and d!1574784 c!832846) b!4899844))

(assert (= (and d!1574784 (not c!832846)) b!4899836))

(assert (= (and d!1574784 c!832845) b!4899838))

(assert (= (and d!1574784 (not c!832845)) b!4899834))

(assert (= (and b!4899834 c!832847) b!4899846))

(assert (= (and b!4899834 (not c!832847)) b!4899839))

(assert (= (and b!4899839 (not res!2092980)) b!4899835))

(assert (= (and b!4899835 res!2092982) b!4899837))

(assert (= (and b!4899837 res!2092979) b!4899845))

(assert (= (and b!4899845 res!2092981) b!4899841))

(assert (= (and b!4899835 (not res!2092986)) b!4899843))

(assert (= (and b!4899843 res!2092983) b!4899847))

(assert (= (and b!4899847 (not res!2092984)) b!4899842))

(assert (= (and b!4899842 (not res!2092985)) b!4899840))

(assert (= (or b!4899838 b!4899837 b!4899847) bm!339945))

(assert (=> b!4899845 m!5905952))

(declare-fun m!5907982 () Bool)

(assert (=> b!4899845 m!5907982))

(assert (=> b!4899845 m!5907982))

(declare-fun m!5907984 () Bool)

(assert (=> b!4899845 m!5907984))

(assert (=> b!4899841 m!5905952))

(declare-fun m!5907986 () Bool)

(assert (=> b!4899841 m!5907986))

(assert (=> d!1574784 m!5905952))

(declare-fun m!5907988 () Bool)

(assert (=> d!1574784 m!5907988))

(assert (=> d!1574784 m!5905982))

(assert (=> b!4899840 m!5905952))

(assert (=> b!4899840 m!5907986))

(assert (=> bm!339945 m!5905952))

(assert (=> bm!339945 m!5907988))

(assert (=> b!4899836 m!5905952))

(assert (=> b!4899836 m!5907986))

(assert (=> b!4899836 m!5907986))

(declare-fun m!5907990 () Bool)

(assert (=> b!4899836 m!5907990))

(assert (=> b!4899836 m!5905952))

(assert (=> b!4899836 m!5907982))

(assert (=> b!4899836 m!5907990))

(assert (=> b!4899836 m!5907982))

(declare-fun m!5907992 () Bool)

(assert (=> b!4899836 m!5907992))

(assert (=> b!4899844 m!5905984))

(assert (=> b!4899842 m!5905952))

(assert (=> b!4899842 m!5907982))

(assert (=> b!4899842 m!5907982))

(assert (=> b!4899842 m!5907984))

(assert (=> b!4898663 d!1574784))

(declare-fun d!1574786 () Bool)

(assert (=> d!1574786 (= (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710)))) (list!17747 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))))))

(declare-fun bs!1176651 () Bool)

(assert (= bs!1176651 d!1574786))

(declare-fun m!5907994 () Bool)

(assert (=> bs!1176651 m!5907994))

(assert (=> b!4898663 d!1574786))

(declare-fun d!1574788 () Bool)

(declare-fun lt!2009370 () BalanceConc!28928)

(assert (=> d!1574788 (= (list!17745 lt!2009370) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710))))))

(assert (=> d!1574788 (= lt!2009370 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710))))) (value!262310 (_1!33556 (get!19496 lt!2008710)))))))

(assert (=> d!1574788 (= (charsOf!5381 (_1!33556 (get!19496 lt!2008710))) lt!2009370)))

(declare-fun b_lambda!194983 () Bool)

(assert (=> (not b_lambda!194983) (not d!1574788)))

(declare-fun tb!259583 () Bool)

(declare-fun t!366384 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366384) tb!259583))

(declare-fun b!4899848 () Bool)

(declare-fun e!3062845 () Bool)

(declare-fun tp!1378408 () Bool)

(assert (=> b!4899848 (= e!3062845 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710))))) (value!262310 (_1!33556 (get!19496 lt!2008710)))))) tp!1378408))))

(declare-fun result!323242 () Bool)

(assert (=> tb!259583 (= result!323242 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710))))) (value!262310 (_1!33556 (get!19496 lt!2008710))))) e!3062845))))

(assert (= tb!259583 b!4899848))

(declare-fun m!5907996 () Bool)

(assert (=> b!4899848 m!5907996))

(declare-fun m!5907998 () Bool)

(assert (=> tb!259583 m!5907998))

(assert (=> d!1574788 t!366384))

(declare-fun b_and!345791 () Bool)

(assert (= b_and!345773 (and (=> t!366384 result!323242) b_and!345791)))

(declare-fun t!366386 () Bool)

(declare-fun tb!259585 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366386) tb!259585))

(declare-fun result!323244 () Bool)

(assert (= result!323244 result!323242))

(assert (=> d!1574788 t!366386))

(declare-fun b_and!345793 () Bool)

(assert (= b_and!345775 (and (=> t!366386 result!323244) b_and!345793)))

(declare-fun tb!259587 () Bool)

(declare-fun t!366388 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366388) tb!259587))

(declare-fun result!323246 () Bool)

(assert (= result!323246 result!323242))

(assert (=> d!1574788 t!366388))

(declare-fun b_and!345795 () Bool)

(assert (= b_and!345777 (and (=> t!366388 result!323246) b_and!345795)))

(declare-fun m!5908000 () Bool)

(assert (=> d!1574788 m!5908000))

(declare-fun m!5908002 () Bool)

(assert (=> d!1574788 m!5908002))

(assert (=> b!4898663 d!1574788))

(assert (=> b!4898663 d!1574662))

(declare-fun d!1574790 () Bool)

(declare-fun e!3062846 () Bool)

(assert (=> d!1574790 e!3062846))

(declare-fun res!2092987 () Bool)

(assert (=> d!1574790 (=> (not res!2092987) (not e!3062846))))

(declare-fun lt!2009371 () BalanceConc!28928)

(assert (=> d!1574790 (= res!2092987 (= (list!17745 lt!2009371) (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))

(assert (=> d!1574790 (= lt!2009371 (BalanceConc!28929 (fromList!935 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> d!1574790 (= (fromListB!2698 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))) lt!2009371)))

(declare-fun b!4899849 () Bool)

(assert (=> b!4899849 (= e!3062846 (isBalanced!4019 (fromList!935 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523))))))))

(assert (= (and d!1574790 res!2092987) b!4899849))

(declare-fun m!5908004 () Bool)

(assert (=> d!1574790 m!5908004))

(declare-fun m!5908006 () Bool)

(assert (=> d!1574790 m!5908006))

(assert (=> b!4899849 m!5908006))

(assert (=> b!4899849 m!5908006))

(declare-fun m!5908008 () Bool)

(assert (=> b!4899849 m!5908008))

(assert (=> d!1574188 d!1574790))

(declare-fun d!1574792 () Bool)

(declare-fun lt!2009372 () Bool)

(assert (=> d!1574792 (= lt!2009372 (isEmpty!30306 (list!17747 (right!41332 (c!832544 input!1236)))))))

(assert (=> d!1574792 (= lt!2009372 (= (size!37173 (right!41332 (c!832544 input!1236))) 0))))

(assert (=> d!1574792 (= (isEmpty!30311 (right!41332 (c!832544 input!1236))) lt!2009372)))

(declare-fun bs!1176652 () Bool)

(assert (= bs!1176652 d!1574792))

(assert (=> bs!1176652 m!5906166))

(assert (=> bs!1176652 m!5906166))

(declare-fun m!5908010 () Bool)

(assert (=> bs!1176652 m!5908010))

(assert (=> bs!1176652 m!5906208))

(assert (=> b!4898930 d!1574792))

(assert (=> b!4898892 d!1574494))

(declare-fun d!1574794 () Bool)

(assert (=> d!1574794 (= (list!17749 (xs!18065 (c!832544 (_2!33555 lt!2008470)))) (innerList!14837 (xs!18065 (c!832544 (_2!33555 lt!2008470)))))))

(assert (=> b!4898790 d!1574794))

(declare-fun d!1574796 () Bool)

(assert (=> d!1574796 (= (isEmpty!30304 lt!2008641) (not (is-Some!14039 lt!2008641)))))

(assert (=> d!1574100 d!1574796))

(declare-fun b!4899850 () Bool)

(declare-fun e!3062848 () Bool)

(declare-fun e!3062847 () Bool)

(assert (=> b!4899850 (= e!3062848 e!3062847)))

(declare-fun res!2092990 () Bool)

(assert (=> b!4899850 (=> (not res!2092990) (not e!3062847))))

(assert (=> b!4899850 (= res!2092990 (not (is-Nil!56428 (tail!9608 lt!2008612))))))

(declare-fun d!1574798 () Bool)

(declare-fun e!3062849 () Bool)

(assert (=> d!1574798 e!3062849))

(declare-fun res!2092989 () Bool)

(assert (=> d!1574798 (=> res!2092989 e!3062849)))

(declare-fun lt!2009373 () Bool)

(assert (=> d!1574798 (= res!2092989 (not lt!2009373))))

(assert (=> d!1574798 (= lt!2009373 e!3062848)))

(declare-fun res!2092991 () Bool)

(assert (=> d!1574798 (=> res!2092991 e!3062848)))

(assert (=> d!1574798 (= res!2092991 (is-Nil!56428 (tail!9608 lt!2008607)))))

(assert (=> d!1574798 (= (isPrefix!4901 (tail!9608 lt!2008607) (tail!9608 lt!2008612)) lt!2009373)))

(declare-fun b!4899851 () Bool)

(declare-fun res!2092988 () Bool)

(assert (=> b!4899851 (=> (not res!2092988) (not e!3062847))))

(assert (=> b!4899851 (= res!2092988 (= (head!10462 (tail!9608 lt!2008607)) (head!10462 (tail!9608 lt!2008612))))))

(declare-fun b!4899853 () Bool)

(assert (=> b!4899853 (= e!3062849 (>= (size!37169 (tail!9608 lt!2008612)) (size!37169 (tail!9608 lt!2008607))))))

(declare-fun b!4899852 () Bool)

(assert (=> b!4899852 (= e!3062847 (isPrefix!4901 (tail!9608 (tail!9608 lt!2008607)) (tail!9608 (tail!9608 lt!2008612))))))

(assert (= (and d!1574798 (not res!2092991)) b!4899850))

(assert (= (and b!4899850 res!2092990) b!4899851))

(assert (= (and b!4899851 res!2092988) b!4899852))

(assert (= (and d!1574798 (not res!2092989)) b!4899853))

(assert (=> b!4899851 m!5906306))

(declare-fun m!5908012 () Bool)

(assert (=> b!4899851 m!5908012))

(assert (=> b!4899851 m!5906308))

(declare-fun m!5908014 () Bool)

(assert (=> b!4899851 m!5908014))

(assert (=> b!4899853 m!5906308))

(declare-fun m!5908016 () Bool)

(assert (=> b!4899853 m!5908016))

(assert (=> b!4899853 m!5906306))

(declare-fun m!5908018 () Bool)

(assert (=> b!4899853 m!5908018))

(assert (=> b!4899852 m!5906306))

(declare-fun m!5908020 () Bool)

(assert (=> b!4899852 m!5908020))

(assert (=> b!4899852 m!5906308))

(declare-fun m!5908022 () Bool)

(assert (=> b!4899852 m!5908022))

(assert (=> b!4899852 m!5908020))

(assert (=> b!4899852 m!5908022))

(declare-fun m!5908024 () Bool)

(assert (=> b!4899852 m!5908024))

(assert (=> b!4898902 d!1574798))

(declare-fun d!1574800 () Bool)

(assert (=> d!1574800 (= (tail!9608 lt!2008607) (t!366238 lt!2008607))))

(assert (=> b!4898902 d!1574800))

(declare-fun d!1574802 () Bool)

(assert (=> d!1574802 (= (tail!9608 lt!2008612) (t!366238 lt!2008612))))

(assert (=> b!4898902 d!1574802))

(assert (=> d!1574190 d!1574228))

(assert (=> b!4898669 d!1574662))

(declare-fun d!1574804 () Bool)

(assert (=> d!1574804 (= (apply!13547 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710))))) (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710))))))))

(declare-fun b_lambda!194985 () Bool)

(assert (=> (not b_lambda!194985) (not d!1574804)))

(declare-fun tb!259589 () Bool)

(declare-fun t!366390 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366390) tb!259589))

(declare-fun result!323248 () Bool)

(assert (=> tb!259589 (= result!323248 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710)))))))))

(declare-fun m!5908026 () Bool)

(assert (=> tb!259589 m!5908026))

(assert (=> d!1574804 t!366390))

(declare-fun b_and!345797 () Bool)

(assert (= b_and!345785 (and (=> t!366390 result!323248) b_and!345797)))

(declare-fun t!366392 () Bool)

(declare-fun tb!259591 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366392) tb!259591))

(declare-fun result!323250 () Bool)

(assert (= result!323250 result!323248))

(assert (=> d!1574804 t!366392))

(declare-fun b_and!345799 () Bool)

(assert (= b_and!345787 (and (=> t!366392 result!323250) b_and!345799)))

(declare-fun tb!259593 () Bool)

(declare-fun t!366394 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366394) tb!259593))

(declare-fun result!323252 () Bool)

(assert (= result!323252 result!323248))

(assert (=> d!1574804 t!366394))

(declare-fun b_and!345801 () Bool)

(assert (= b_and!345789 (and (=> t!366394 result!323252) b_and!345801)))

(assert (=> d!1574804 m!5905962))

(declare-fun m!5908028 () Bool)

(assert (=> d!1574804 m!5908028))

(assert (=> b!4898669 d!1574804))

(declare-fun d!1574806 () Bool)

(assert (=> d!1574806 (= (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710)))) (fromListB!2698 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008710)))))))

(declare-fun bs!1176653 () Bool)

(assert (= bs!1176653 d!1574806))

(declare-fun m!5908030 () Bool)

(assert (=> bs!1176653 m!5908030))

(assert (=> b!4898669 d!1574806))

(declare-fun b!4899854 () Bool)

(declare-fun e!3062857 () Bool)

(declare-fun e!3062852 () Bool)

(assert (=> b!4899854 (= e!3062857 e!3062852)))

(declare-fun c!832850 () Bool)

(assert (=> b!4899854 (= c!832850 (is-EmptyLang!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))))))

(declare-fun b!4899855 () Bool)

(declare-fun res!2092999 () Bool)

(declare-fun e!3062851 () Bool)

(assert (=> b!4899855 (=> res!2092999 e!3062851)))

(declare-fun e!3062853 () Bool)

(assert (=> b!4899855 (= res!2092999 e!3062853)))

(declare-fun res!2092995 () Bool)

(assert (=> b!4899855 (=> (not res!2092995) (not e!3062853))))

(declare-fun lt!2009374 () Bool)

(assert (=> b!4899855 (= res!2092995 lt!2009374)))

(declare-fun b!4899856 () Bool)

(declare-fun e!3062854 () Bool)

(assert (=> b!4899856 (= e!3062854 (matchR!6537 (derivativeStep!3884 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))))) (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))))))))

(declare-fun d!1574808 () Bool)

(assert (=> d!1574808 e!3062857))

(declare-fun c!832848 () Bool)

(assert (=> d!1574808 (= c!832848 (is-EmptyExpr!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))))))

(assert (=> d!1574808 (= lt!2009374 e!3062854)))

(declare-fun c!832849 () Bool)

(assert (=> d!1574808 (= c!832849 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))))))

(assert (=> d!1574808 (validRegex!5889 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))))

(assert (=> d!1574808 (= (matchR!6537 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))) lt!2009374)))

(declare-fun b!4899857 () Bool)

(declare-fun res!2092992 () Bool)

(assert (=> b!4899857 (=> (not res!2092992) (not e!3062853))))

(declare-fun call!339951 () Bool)

(assert (=> b!4899857 (= res!2092992 (not call!339951))))

(declare-fun b!4899858 () Bool)

(assert (=> b!4899858 (= e!3062857 (= lt!2009374 call!339951))))

(declare-fun b!4899859 () Bool)

(declare-fun res!2092993 () Bool)

(assert (=> b!4899859 (=> res!2092993 e!3062851)))

(assert (=> b!4899859 (= res!2092993 (not (is-ElementMatch!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))))))

(assert (=> b!4899859 (= e!3062852 e!3062851)))

(declare-fun b!4899860 () Bool)

(declare-fun e!3062855 () Bool)

(assert (=> b!4899860 (= e!3062855 (not (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))) (c!832545 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))))))))

(declare-fun bm!339946 () Bool)

(assert (=> bm!339946 (= call!339951 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))))))

(declare-fun b!4899861 () Bool)

(assert (=> b!4899861 (= e!3062853 (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))) (c!832545 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))))))

(declare-fun b!4899862 () Bool)

(declare-fun res!2092998 () Bool)

(assert (=> b!4899862 (=> res!2092998 e!3062855)))

(assert (=> b!4899862 (= res!2092998 (not (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840))))))))))

(declare-fun b!4899863 () Bool)

(declare-fun e!3062856 () Bool)

(assert (=> b!4899863 (= e!3062851 e!3062856)))

(declare-fun res!2092996 () Bool)

(assert (=> b!4899863 (=> (not res!2092996) (not e!3062856))))

(assert (=> b!4899863 (= res!2092996 (not lt!2009374))))

(declare-fun b!4899864 () Bool)

(assert (=> b!4899864 (= e!3062854 (nullable!4562 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840))))))))

(declare-fun b!4899865 () Bool)

(declare-fun res!2092994 () Bool)

(assert (=> b!4899865 (=> (not res!2092994) (not e!3062853))))

(assert (=> b!4899865 (= res!2092994 (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008840)))))))))

(declare-fun b!4899866 () Bool)

(assert (=> b!4899866 (= e!3062852 (not lt!2009374))))

(declare-fun b!4899867 () Bool)

(assert (=> b!4899867 (= e!3062856 e!3062855)))

(declare-fun res!2092997 () Bool)

(assert (=> b!4899867 (=> res!2092997 e!3062855)))

(assert (=> b!4899867 (= res!2092997 call!339951)))

(assert (= (and d!1574808 c!832849) b!4899864))

(assert (= (and d!1574808 (not c!832849)) b!4899856))

(assert (= (and d!1574808 c!832848) b!4899858))

(assert (= (and d!1574808 (not c!832848)) b!4899854))

(assert (= (and b!4899854 c!832850) b!4899866))

(assert (= (and b!4899854 (not c!832850)) b!4899859))

(assert (= (and b!4899859 (not res!2092993)) b!4899855))

(assert (= (and b!4899855 res!2092995) b!4899857))

(assert (= (and b!4899857 res!2092992) b!4899865))

(assert (= (and b!4899865 res!2092994) b!4899861))

(assert (= (and b!4899855 (not res!2092999)) b!4899863))

(assert (= (and b!4899863 res!2092996) b!4899867))

(assert (= (and b!4899867 (not res!2092997)) b!4899862))

(assert (= (and b!4899862 (not res!2092998)) b!4899860))

(assert (= (or b!4899858 b!4899857 b!4899867) bm!339946))

(assert (=> b!4899865 m!5906144))

(declare-fun m!5908032 () Bool)

(assert (=> b!4899865 m!5908032))

(assert (=> b!4899865 m!5908032))

(declare-fun m!5908034 () Bool)

(assert (=> b!4899865 m!5908034))

(assert (=> b!4899861 m!5906144))

(declare-fun m!5908036 () Bool)

(assert (=> b!4899861 m!5908036))

(assert (=> d!1574808 m!5906144))

(declare-fun m!5908038 () Bool)

(assert (=> d!1574808 m!5908038))

(declare-fun m!5908040 () Bool)

(assert (=> d!1574808 m!5908040))

(assert (=> b!4899860 m!5906144))

(assert (=> b!4899860 m!5908036))

(assert (=> bm!339946 m!5906144))

(assert (=> bm!339946 m!5908038))

(assert (=> b!4899856 m!5906144))

(assert (=> b!4899856 m!5908036))

(assert (=> b!4899856 m!5908036))

(declare-fun m!5908042 () Bool)

(assert (=> b!4899856 m!5908042))

(assert (=> b!4899856 m!5906144))

(assert (=> b!4899856 m!5908032))

(assert (=> b!4899856 m!5908042))

(assert (=> b!4899856 m!5908032))

(declare-fun m!5908044 () Bool)

(assert (=> b!4899856 m!5908044))

(declare-fun m!5908046 () Bool)

(assert (=> b!4899864 m!5908046))

(assert (=> b!4899862 m!5906144))

(assert (=> b!4899862 m!5908032))

(assert (=> b!4899862 m!5908032))

(assert (=> b!4899862 m!5908034))

(assert (=> b!4898771 d!1574808))

(assert (=> b!4898771 d!1574412))

(assert (=> b!4898771 d!1574656))

(assert (=> b!4898771 d!1574658))

(assert (=> b!4898897 d!1574666))

(assert (=> b!4898897 d!1574668))

(assert (=> d!1574098 d!1574602))

(declare-fun d!1574810 () Bool)

(declare-fun lt!2009375 () Int)

(assert (=> d!1574810 (>= lt!2009375 0)))

(declare-fun e!3062858 () Int)

(assert (=> d!1574810 (= lt!2009375 e!3062858)))

(declare-fun c!832851 () Bool)

(assert (=> d!1574810 (= c!832851 (is-Nil!56428 (_2!33556 (get!19496 lt!2008851))))))

(assert (=> d!1574810 (= (size!37169 (_2!33556 (get!19496 lt!2008851))) lt!2009375)))

(declare-fun b!4899868 () Bool)

(assert (=> b!4899868 (= e!3062858 0)))

(declare-fun b!4899869 () Bool)

(assert (=> b!4899869 (= e!3062858 (+ 1 (size!37169 (t!366238 (_2!33556 (get!19496 lt!2008851))))))))

(assert (= (and d!1574810 c!832851) b!4899868))

(assert (= (and d!1574810 (not c!832851)) b!4899869))

(declare-fun m!5908048 () Bool)

(assert (=> b!4899869 m!5908048))

(assert (=> b!4898835 d!1574810))

(assert (=> b!4898835 d!1574428))

(assert (=> b!4898835 d!1574154))

(declare-fun b!4899870 () Bool)

(declare-fun e!3062859 () List!56552)

(assert (=> b!4899870 (= e!3062859 Nil!56428)))

(declare-fun d!1574812 () Bool)

(declare-fun c!832852 () Bool)

(assert (=> d!1574812 (= c!832852 (is-Empty!14749 (c!832544 (_2!33555 (get!19497 lt!2008641)))))))

(assert (=> d!1574812 (= (list!17747 (c!832544 (_2!33555 (get!19497 lt!2008641)))) e!3062859)))

(declare-fun b!4899871 () Bool)

(declare-fun e!3062860 () List!56552)

(assert (=> b!4899871 (= e!3062859 e!3062860)))

(declare-fun c!832853 () Bool)

(assert (=> b!4899871 (= c!832853 (is-Leaf!24557 (c!832544 (_2!33555 (get!19497 lt!2008641)))))))

(declare-fun b!4899873 () Bool)

(assert (=> b!4899873 (= e!3062860 (++!12250 (list!17747 (left!41002 (c!832544 (_2!33555 (get!19497 lt!2008641))))) (list!17747 (right!41332 (c!832544 (_2!33555 (get!19497 lt!2008641)))))))))

(declare-fun b!4899872 () Bool)

(assert (=> b!4899872 (= e!3062860 (list!17749 (xs!18065 (c!832544 (_2!33555 (get!19497 lt!2008641))))))))

(assert (= (and d!1574812 c!832852) b!4899870))

(assert (= (and d!1574812 (not c!832852)) b!4899871))

(assert (= (and b!4899871 c!832853) b!4899872))

(assert (= (and b!4899871 (not c!832853)) b!4899873))

(declare-fun m!5908050 () Bool)

(assert (=> b!4899873 m!5908050))

(declare-fun m!5908052 () Bool)

(assert (=> b!4899873 m!5908052))

(assert (=> b!4899873 m!5908050))

(assert (=> b!4899873 m!5908052))

(declare-fun m!5908054 () Bool)

(assert (=> b!4899873 m!5908054))

(declare-fun m!5908056 () Bool)

(assert (=> b!4899872 m!5908056))

(assert (=> d!1574214 d!1574812))

(assert (=> b!4898854 d!1574154))

(assert (=> b!4898854 d!1574448))

(declare-fun bs!1176654 () Bool)

(declare-fun d!1574814 () Bool)

(assert (= bs!1176654 (and d!1574814 d!1574548)))

(declare-fun lambda!244200 () Int)

(assert (=> bs!1176654 (= lambda!244200 lambda!244195)))

(declare-fun bs!1176655 () Bool)

(assert (= bs!1176655 (and d!1574814 b!4899825)))

(assert (=> bs!1176655 (= (and (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))))) (= lambda!244200 lambda!244198))))

(declare-fun bs!1176656 () Bool)

(assert (= bs!1176656 (and d!1574814 b!4898937)))

(assert (=> bs!1176656 (= (and (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (= lambda!244200 lambda!244184))))

(declare-fun bs!1176657 () Bool)

(assert (= bs!1176657 (and d!1574814 d!1574166)))

(assert (=> bs!1176657 (= lambda!244200 lambda!244179)))

(declare-fun bs!1176658 () Bool)

(assert (= bs!1176658 (and d!1574814 b!4898475)))

(assert (=> bs!1176658 (= lambda!244200 lambda!244166)))

(declare-fun b!4899874 () Bool)

(declare-fun e!3062861 () Bool)

(assert (=> b!4899874 (= e!3062861 true)))

(assert (=> d!1574814 e!3062861))

(assert (= d!1574814 b!4899874))

(assert (=> b!4899874 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244200))))

(assert (=> b!4899874 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244200))))

(assert (=> d!1574814 (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008869))))) (list!17745 (seqFromList!5943 (_1!33559 lt!2008869))))))

(declare-fun lt!2009376 () Unit!146503)

(assert (=> d!1574814 (= lt!2009376 (ForallOf!1140 lambda!244200 (seqFromList!5943 (_1!33559 lt!2008869))))))

(assert (=> d!1574814 (= (lemmaSemiInverse!2571 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008869))) lt!2009376)))

(declare-fun b_lambda!194987 () Bool)

(assert (=> (not b_lambda!194987) (not d!1574814)))

(declare-fun t!366396 () Bool)

(declare-fun tb!259595 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366396) tb!259595))

(declare-fun b!4899875 () Bool)

(declare-fun tp!1378409 () Bool)

(declare-fun e!3062862 () Bool)

(assert (=> b!4899875 (= e!3062862 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008869)))))) tp!1378409))))

(declare-fun result!323254 () Bool)

(assert (=> tb!259595 (= result!323254 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008869))))) e!3062862))))

(assert (= tb!259595 b!4899875))

(declare-fun m!5908058 () Bool)

(assert (=> b!4899875 m!5908058))

(declare-fun m!5908060 () Bool)

(assert (=> tb!259595 m!5908060))

(assert (=> d!1574814 t!366396))

(declare-fun b_and!345803 () Bool)

(assert (= b_and!345791 (and (=> t!366396 result!323254) b_and!345803)))

(declare-fun t!366398 () Bool)

(declare-fun tb!259597 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366398) tb!259597))

(declare-fun result!323256 () Bool)

(assert (= result!323256 result!323254))

(assert (=> d!1574814 t!366398))

(declare-fun b_and!345805 () Bool)

(assert (= b_and!345793 (and (=> t!366398 result!323256) b_and!345805)))

(declare-fun t!366400 () Bool)

(declare-fun tb!259599 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366400) tb!259599))

(declare-fun result!323258 () Bool)

(assert (= result!323258 result!323254))

(assert (=> d!1574814 t!366400))

(declare-fun b_and!345807 () Bool)

(assert (= b_and!345795 (and (=> t!366400 result!323258) b_and!345807)))

(declare-fun b_lambda!194989 () Bool)

(assert (=> (not b_lambda!194989) (not d!1574814)))

(declare-fun t!366402 () Bool)

(declare-fun tb!259601 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366402) tb!259601))

(declare-fun result!323260 () Bool)

(assert (=> tb!259601 (= result!323260 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008869)))))))

(declare-fun m!5908062 () Bool)

(assert (=> tb!259601 m!5908062))

(assert (=> d!1574814 t!366402))

(declare-fun b_and!345809 () Bool)

(assert (= b_and!345797 (and (=> t!366402 result!323260) b_and!345809)))

(declare-fun t!366404 () Bool)

(declare-fun tb!259603 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366404) tb!259603))

(declare-fun result!323262 () Bool)

(assert (= result!323262 result!323260))

(assert (=> d!1574814 t!366404))

(declare-fun b_and!345811 () Bool)

(assert (= b_and!345799 (and (=> t!366404 result!323262) b_and!345811)))

(declare-fun t!366406 () Bool)

(declare-fun tb!259605 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366406) tb!259605))

(declare-fun result!323264 () Bool)

(assert (= result!323264 result!323260))

(assert (=> d!1574814 t!366406))

(declare-fun b_and!345813 () Bool)

(assert (= b_and!345801 (and (=> t!366406 result!323264) b_and!345813)))

(declare-fun m!5908064 () Bool)

(assert (=> d!1574814 m!5908064))

(declare-fun m!5908066 () Bool)

(assert (=> d!1574814 m!5908066))

(declare-fun m!5908068 () Bool)

(assert (=> d!1574814 m!5908068))

(assert (=> d!1574814 m!5908064))

(assert (=> d!1574814 m!5906272))

(declare-fun m!5908070 () Bool)

(assert (=> d!1574814 m!5908070))

(assert (=> d!1574814 m!5906272))

(assert (=> d!1574814 m!5908068))

(assert (=> d!1574814 m!5906272))

(declare-fun m!5908072 () Bool)

(assert (=> d!1574814 m!5908072))

(assert (=> b!4898854 d!1574814))

(declare-fun d!1574816 () Bool)

(assert (=> d!1574816 (= (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008869))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008869))))))

(declare-fun b_lambda!194991 () Bool)

(assert (=> (not b_lambda!194991) (not d!1574816)))

(assert (=> d!1574816 t!366402))

(declare-fun b_and!345815 () Bool)

(assert (= b_and!345809 (and (=> t!366402 result!323260) b_and!345815)))

(assert (=> d!1574816 t!366404))

(declare-fun b_and!345817 () Bool)

(assert (= b_and!345811 (and (=> t!366404 result!323262) b_and!345817)))

(assert (=> d!1574816 t!366406))

(declare-fun b_and!345819 () Bool)

(assert (= b_and!345813 (and (=> t!366406 result!323264) b_and!345819)))

(assert (=> d!1574816 m!5906272))

(assert (=> d!1574816 m!5908068))

(assert (=> b!4898854 d!1574816))

(declare-fun d!1574818 () Bool)

(assert (=> d!1574818 (= (seqFromList!5943 (_1!33559 lt!2008869)) (fromListB!2698 (_1!33559 lt!2008869)))))

(declare-fun bs!1176659 () Bool)

(assert (= bs!1176659 d!1574818))

(declare-fun m!5908074 () Bool)

(assert (=> bs!1176659 m!5908074))

(assert (=> b!4898854 d!1574818))

(assert (=> b!4898854 d!1574544))

(assert (=> b!4898854 d!1574126))

(assert (=> b!4898854 d!1574128))

(assert (=> b!4898854 d!1574540))

(declare-fun d!1574820 () Bool)

(declare-fun lt!2009377 () Int)

(assert (=> d!1574820 (>= lt!2009377 0)))

(declare-fun e!3062864 () Int)

(assert (=> d!1574820 (= lt!2009377 e!3062864)))

(declare-fun c!832854 () Bool)

(assert (=> d!1574820 (= c!832854 (is-Nil!56428 (_1!33559 lt!2008869)))))

(assert (=> d!1574820 (= (size!37169 (_1!33559 lt!2008869)) lt!2009377)))

(declare-fun b!4899876 () Bool)

(assert (=> b!4899876 (= e!3062864 0)))

(declare-fun b!4899877 () Bool)

(assert (=> b!4899877 (= e!3062864 (+ 1 (size!37169 (t!366238 (_1!33559 lt!2008869)))))))

(assert (= (and d!1574820 c!832854) b!4899876))

(assert (= (and d!1574820 (not c!832854)) b!4899877))

(declare-fun m!5908076 () Bool)

(assert (=> b!4899877 m!5908076))

(assert (=> b!4898854 d!1574820))

(declare-fun b!4899878 () Bool)

(declare-fun c!832859 () Bool)

(declare-fun call!339956 () Bool)

(assert (=> b!4899878 (= c!832859 call!339956)))

(declare-fun lt!2009399 () Unit!146503)

(declare-fun lt!2009384 () Unit!146503)

(assert (=> b!4899878 (= lt!2009399 lt!2009384)))

(assert (=> b!4899878 (= lt!2008644 lt!2008810)))

(declare-fun call!339953 () Unit!146503)

(assert (=> b!4899878 (= lt!2009384 call!339953)))

(declare-fun lt!2009394 () Unit!146503)

(declare-fun lt!2009380 () Unit!146503)

(assert (=> b!4899878 (= lt!2009394 lt!2009380)))

(declare-fun call!339957 () Bool)

(assert (=> b!4899878 call!339957))

(declare-fun call!339954 () Unit!146503)

(assert (=> b!4899878 (= lt!2009380 call!339954)))

(declare-fun e!3062871 () tuple2!60512)

(declare-fun e!3062872 () tuple2!60512)

(assert (=> b!4899878 (= e!3062871 e!3062872)))

(declare-fun b!4899879 () Bool)

(declare-fun e!3062870 () tuple2!60512)

(declare-fun e!3062868 () tuple2!60512)

(assert (=> b!4899879 (= e!3062870 e!3062868)))

(declare-fun lt!2009400 () tuple2!60512)

(declare-fun call!339952 () tuple2!60512)

(assert (=> b!4899879 (= lt!2009400 call!339952)))

(declare-fun c!832855 () Bool)

(assert (=> b!4899879 (= c!832855 (isEmpty!30306 (_1!33559 lt!2009400)))))

(declare-fun bm!339947 () Bool)

(declare-fun call!339955 () List!56552)

(assert (=> bm!339947 (= call!339955 (tail!9608 call!339846))))

(declare-fun bm!339948 () Bool)

(assert (=> bm!339948 (= call!339956 (nullable!4562 call!339850))))

(declare-fun b!4899880 () Bool)

(assert (=> b!4899880 (= e!3062872 (tuple2!60513 Nil!56428 lt!2008644))))

(declare-fun b!4899882 () Bool)

(declare-fun e!3062867 () tuple2!60512)

(assert (=> b!4899882 (= e!3062867 e!3062871)))

(declare-fun c!832856 () Bool)

(assert (=> b!4899882 (= c!832856 (= (+ (size!37169 Nil!56428) 1) (size!37169 lt!2008644)))))

(declare-fun b!4899883 () Bool)

(assert (=> b!4899883 (= e!3062868 (tuple2!60513 lt!2008810 call!339846))))

(declare-fun b!4899884 () Bool)

(declare-fun e!3062865 () Unit!146503)

(declare-fun Unit!146526 () Unit!146503)

(assert (=> b!4899884 (= e!3062865 Unit!146526)))

(declare-fun lt!2009391 () Unit!146503)

(assert (=> b!4899884 (= lt!2009391 call!339954)))

(assert (=> b!4899884 call!339957))

(declare-fun lt!2009405 () Unit!146503)

(assert (=> b!4899884 (= lt!2009405 lt!2009391)))

(declare-fun lt!2009383 () Unit!146503)

(assert (=> b!4899884 (= lt!2009383 call!339953)))

(assert (=> b!4899884 (= lt!2008644 lt!2008810)))

(declare-fun lt!2009395 () Unit!146503)

(assert (=> b!4899884 (= lt!2009395 lt!2009383)))

(assert (=> b!4899884 false))

(declare-fun b!4899885 () Bool)

(declare-fun c!832858 () Bool)

(assert (=> b!4899885 (= c!832858 call!339956)))

(declare-fun lt!2009379 () Unit!146503)

(declare-fun lt!2009392 () Unit!146503)

(assert (=> b!4899885 (= lt!2009379 lt!2009392)))

(declare-fun lt!2009397 () List!56552)

(declare-fun lt!2009388 () C!26710)

(assert (=> b!4899885 (= (++!12250 (++!12250 lt!2008810 (Cons!56428 lt!2009388 Nil!56428)) lt!2009397) lt!2008644)))

(assert (=> b!4899885 (= lt!2009392 (lemmaMoveElementToOtherListKeepsConcatEq!1336 lt!2008810 lt!2009388 lt!2009397 lt!2008644))))

(assert (=> b!4899885 (= lt!2009397 (tail!9608 call!339846))))

(assert (=> b!4899885 (= lt!2009388 (head!10462 call!339846))))

(declare-fun lt!2009403 () Unit!146503)

(declare-fun lt!2009398 () Unit!146503)

(assert (=> b!4899885 (= lt!2009403 lt!2009398)))

(assert (=> b!4899885 (isPrefix!4901 (++!12250 lt!2008810 (Cons!56428 (head!10462 (getSuffix!2893 lt!2008644 lt!2008810)) Nil!56428)) lt!2008644)))

(assert (=> b!4899885 (= lt!2009398 (lemmaAddHeadSuffixToPrefixStillPrefix!718 lt!2008810 lt!2008644))))

(declare-fun lt!2009382 () Unit!146503)

(declare-fun lt!2009378 () Unit!146503)

(assert (=> b!4899885 (= lt!2009382 lt!2009378)))

(assert (=> b!4899885 (= lt!2009378 (lemmaAddHeadSuffixToPrefixStillPrefix!718 lt!2008810 lt!2008644))))

(declare-fun lt!2009401 () List!56552)

(assert (=> b!4899885 (= lt!2009401 (++!12250 lt!2008810 (Cons!56428 (head!10462 call!339846) Nil!56428)))))

(declare-fun lt!2009381 () Unit!146503)

(assert (=> b!4899885 (= lt!2009381 e!3062865)))

(declare-fun c!832860 () Bool)

(assert (=> b!4899885 (= c!832860 (= (size!37169 lt!2008810) (size!37169 lt!2008644)))))

(declare-fun lt!2009387 () Unit!146503)

(declare-fun lt!2009404 () Unit!146503)

(assert (=> b!4899885 (= lt!2009387 lt!2009404)))

(assert (=> b!4899885 (<= (size!37169 lt!2008810) (size!37169 lt!2008644))))

(assert (=> b!4899885 (= lt!2009404 (lemmaIsPrefixThenSmallerEqSize!630 lt!2008810 lt!2008644))))

(assert (=> b!4899885 (= e!3062871 e!3062870)))

(declare-fun b!4899886 () Bool)

(assert (=> b!4899886 (= e!3062870 call!339952)))

(declare-fun b!4899887 () Bool)

(declare-fun e!3062869 () Bool)

(declare-fun e!3062866 () Bool)

(assert (=> b!4899887 (= e!3062869 e!3062866)))

(declare-fun res!2093000 () Bool)

(assert (=> b!4899887 (=> res!2093000 e!3062866)))

(declare-fun lt!2009396 () tuple2!60512)

(assert (=> b!4899887 (= res!2093000 (isEmpty!30306 (_1!33559 lt!2009396)))))

(declare-fun bm!339949 () Bool)

(declare-fun call!339959 () Regex!13256)

(assert (=> bm!339949 (= call!339952 (findLongestMatchInner!1760 call!339959 lt!2009401 (+ (size!37169 Nil!56428) 1 1) call!339955 lt!2008644 (size!37169 lt!2008644)))))

(declare-fun bm!339950 () Bool)

(assert (=> bm!339950 (= call!339954 (lemmaIsPrefixRefl!3298 lt!2008644 lt!2008644))))

(declare-fun bm!339951 () Bool)

(assert (=> bm!339951 (= call!339957 (isPrefix!4901 lt!2008644 lt!2008644))))

(declare-fun b!4899881 () Bool)

(assert (=> b!4899881 (= e!3062872 (tuple2!60513 lt!2008810 Nil!56428))))

(declare-fun d!1574822 () Bool)

(assert (=> d!1574822 e!3062869))

(declare-fun res!2093001 () Bool)

(assert (=> d!1574822 (=> (not res!2093001) (not e!3062869))))

(assert (=> d!1574822 (= res!2093001 (= (++!12250 (_1!33559 lt!2009396) (_2!33559 lt!2009396)) lt!2008644))))

(assert (=> d!1574822 (= lt!2009396 e!3062867)))

(declare-fun c!832857 () Bool)

(assert (=> d!1574822 (= c!832857 (lostCause!1092 call!339850))))

(declare-fun lt!2009386 () Unit!146503)

(declare-fun Unit!146527 () Unit!146503)

(assert (=> d!1574822 (= lt!2009386 Unit!146527)))

(assert (=> d!1574822 (= (getSuffix!2893 lt!2008644 lt!2008810) call!339846)))

(declare-fun lt!2009385 () Unit!146503)

(declare-fun lt!2009390 () Unit!146503)

(assert (=> d!1574822 (= lt!2009385 lt!2009390)))

(declare-fun lt!2009393 () List!56552)

(assert (=> d!1574822 (= call!339846 lt!2009393)))

(assert (=> d!1574822 (= lt!2009390 (lemmaSamePrefixThenSameSuffix!2309 lt!2008810 call!339846 lt!2008810 lt!2009393 lt!2008644))))

(assert (=> d!1574822 (= lt!2009393 (getSuffix!2893 lt!2008644 lt!2008810))))

(declare-fun lt!2009402 () Unit!146503)

(declare-fun lt!2009389 () Unit!146503)

(assert (=> d!1574822 (= lt!2009402 lt!2009389)))

(assert (=> d!1574822 (isPrefix!4901 lt!2008810 (++!12250 lt!2008810 call!339846))))

(assert (=> d!1574822 (= lt!2009389 (lemmaConcatTwoListThenFirstIsPrefix!3129 lt!2008810 call!339846))))

(assert (=> d!1574822 (validRegex!5889 call!339850)))

(assert (=> d!1574822 (= (findLongestMatchInner!1760 call!339850 lt!2008810 (+ (size!37169 Nil!56428) 1) call!339846 lt!2008644 (size!37169 lt!2008644)) lt!2009396)))

(declare-fun bm!339952 () Bool)

(assert (=> bm!339952 (= call!339953 (lemmaIsPrefixSameLengthThenSameList!1064 lt!2008644 lt!2008810 lt!2008644))))

(declare-fun b!4899888 () Bool)

(declare-fun Unit!146528 () Unit!146503)

(assert (=> b!4899888 (= e!3062865 Unit!146528)))

(declare-fun b!4899889 () Bool)

(assert (=> b!4899889 (= e!3062867 (tuple2!60513 Nil!56428 lt!2008644))))

(declare-fun b!4899890 () Bool)

(assert (=> b!4899890 (= e!3062866 (>= (size!37169 (_1!33559 lt!2009396)) (size!37169 lt!2008810)))))

(declare-fun bm!339953 () Bool)

(declare-fun call!339958 () C!26710)

(assert (=> bm!339953 (= call!339958 (head!10462 call!339846))))

(declare-fun bm!339954 () Bool)

(assert (=> bm!339954 (= call!339959 (derivativeStep!3884 call!339850 call!339958))))

(declare-fun b!4899891 () Bool)

(assert (=> b!4899891 (= e!3062868 lt!2009400)))

(assert (= (and d!1574822 c!832857) b!4899889))

(assert (= (and d!1574822 (not c!832857)) b!4899882))

(assert (= (and b!4899882 c!832856) b!4899878))

(assert (= (and b!4899882 (not c!832856)) b!4899885))

(assert (= (and b!4899878 c!832859) b!4899881))

(assert (= (and b!4899878 (not c!832859)) b!4899880))

(assert (= (and b!4899885 c!832860) b!4899884))

(assert (= (and b!4899885 (not c!832860)) b!4899888))

(assert (= (and b!4899885 c!832858) b!4899879))

(assert (= (and b!4899885 (not c!832858)) b!4899886))

(assert (= (and b!4899879 c!832855) b!4899883))

(assert (= (and b!4899879 (not c!832855)) b!4899891))

(assert (= (or b!4899879 b!4899886) bm!339947))

(assert (= (or b!4899879 b!4899886) bm!339953))

(assert (= (or b!4899879 b!4899886) bm!339954))

(assert (= (or b!4899879 b!4899886) bm!339949))

(assert (= (or b!4899878 b!4899885) bm!339948))

(assert (= (or b!4899878 b!4899884) bm!339950))

(assert (= (or b!4899878 b!4899884) bm!339952))

(assert (= (or b!4899878 b!4899884) bm!339951))

(assert (= (and d!1574822 res!2093001) b!4899887))

(assert (= (and b!4899887 (not res!2093000)) b!4899890))

(declare-fun m!5908078 () Bool)

(assert (=> bm!339954 m!5908078))

(declare-fun m!5908080 () Bool)

(assert (=> bm!339953 m!5908080))

(assert (=> bm!339950 m!5906048))

(declare-fun m!5908082 () Bool)

(assert (=> b!4899885 m!5908082))

(declare-fun m!5908084 () Bool)

(assert (=> b!4899885 m!5908084))

(declare-fun m!5908086 () Bool)

(assert (=> b!4899885 m!5908086))

(declare-fun m!5908088 () Bool)

(assert (=> b!4899885 m!5908088))

(declare-fun m!5908090 () Bool)

(assert (=> b!4899885 m!5908090))

(assert (=> b!4899885 m!5908080))

(declare-fun m!5908092 () Bool)

(assert (=> b!4899885 m!5908092))

(assert (=> b!4899885 m!5908084))

(assert (=> b!4899885 m!5908090))

(declare-fun m!5908094 () Bool)

(assert (=> b!4899885 m!5908094))

(declare-fun m!5908096 () Bool)

(assert (=> b!4899885 m!5908096))

(declare-fun m!5908098 () Bool)

(assert (=> b!4899885 m!5908098))

(assert (=> b!4899885 m!5908082))

(declare-fun m!5908100 () Bool)

(assert (=> b!4899885 m!5908100))

(declare-fun m!5908102 () Bool)

(assert (=> b!4899885 m!5908102))

(assert (=> b!4899885 m!5905740))

(declare-fun m!5908104 () Bool)

(assert (=> b!4899885 m!5908104))

(assert (=> d!1574822 m!5908082))

(declare-fun m!5908106 () Bool)

(assert (=> d!1574822 m!5908106))

(declare-fun m!5908108 () Bool)

(assert (=> d!1574822 m!5908108))

(declare-fun m!5908110 () Bool)

(assert (=> d!1574822 m!5908110))

(declare-fun m!5908112 () Bool)

(assert (=> d!1574822 m!5908112))

(declare-fun m!5908114 () Bool)

(assert (=> d!1574822 m!5908114))

(declare-fun m!5908116 () Bool)

(assert (=> d!1574822 m!5908116))

(assert (=> d!1574822 m!5908114))

(declare-fun m!5908118 () Bool)

(assert (=> d!1574822 m!5908118))

(declare-fun m!5908120 () Bool)

(assert (=> bm!339948 m!5908120))

(assert (=> bm!339947 m!5908104))

(assert (=> bm!339949 m!5905740))

(declare-fun m!5908122 () Bool)

(assert (=> bm!339949 m!5908122))

(declare-fun m!5908124 () Bool)

(assert (=> b!4899887 m!5908124))

(declare-fun m!5908126 () Bool)

(assert (=> b!4899879 m!5908126))

(declare-fun m!5908128 () Bool)

(assert (=> b!4899890 m!5908128))

(assert (=> b!4899890 m!5908092))

(assert (=> bm!339951 m!5906092))

(declare-fun m!5908130 () Bool)

(assert (=> bm!339952 m!5908130))

(assert (=> bm!339840 d!1574822))

(declare-fun bs!1176660 () Bool)

(declare-fun d!1574824 () Bool)

(assert (= bs!1176660 (and d!1574824 d!1574548)))

(declare-fun lambda!244201 () Int)

(assert (=> bs!1176660 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244201 lambda!244195))))

(declare-fun bs!1176661 () Bool)

(assert (= bs!1176661 (and d!1574824 b!4899825)))

(assert (=> bs!1176661 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))))) (= lambda!244201 lambda!244198))))

(declare-fun bs!1176662 () Bool)

(assert (= bs!1176662 (and d!1574824 d!1574814)))

(assert (=> bs!1176662 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244201 lambda!244200))))

(declare-fun bs!1176663 () Bool)

(assert (= bs!1176663 (and d!1574824 b!4898937)))

(assert (=> bs!1176663 (= lambda!244201 lambda!244184)))

(declare-fun bs!1176664 () Bool)

(assert (= bs!1176664 (and d!1574824 d!1574166)))

(assert (=> bs!1176664 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244201 lambda!244179))))

(declare-fun bs!1176665 () Bool)

(assert (= bs!1176665 (and d!1574824 b!4898475)))

(assert (=> bs!1176665 (= (and (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (= lambda!244201 lambda!244166))))

(assert (=> d!1574824 true))

(assert (=> d!1574824 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (dynLambda!22686 order!25529 lambda!244201))))

(assert (=> d!1574824 true))

(assert (=> d!1574824 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (dynLambda!22686 order!25529 lambda!244201))))

(assert (=> d!1574824 (= (semiInverseModEq!3593 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (Forall!1694 lambda!244201))))

(declare-fun bs!1176666 () Bool)

(assert (= bs!1176666 d!1574824))

(declare-fun m!5908132 () Bool)

(assert (=> bs!1176666 m!5908132))

(assert (=> d!1574218 d!1574824))

(declare-fun d!1574826 () Bool)

(assert (=> d!1574826 (= (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))) (isBalanced!4019 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))))))

(declare-fun bs!1176667 () Bool)

(assert (= bs!1176667 d!1574826))

(declare-fun m!5908134 () Bool)

(assert (=> bs!1176667 m!5908134))

(assert (=> tb!259481 d!1574826))

(assert (=> d!1574236 d!1574734))

(declare-fun bm!339955 () Bool)

(declare-fun c!832862 () Bool)

(declare-fun call!339960 () Bool)

(declare-fun c!832861 () Bool)

(assert (=> bm!339955 (= call!339960 (validRegex!5889 (ite c!832862 (reg!13585 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (ite c!832861 (regOne!27025 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (regTwo!27024 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))))))

(declare-fun b!4899892 () Bool)

(declare-fun e!3062876 () Bool)

(declare-fun call!339962 () Bool)

(assert (=> b!4899892 (= e!3062876 call!339962)))

(declare-fun b!4899893 () Bool)

(declare-fun e!3062878 () Bool)

(declare-fun e!3062877 () Bool)

(assert (=> b!4899893 (= e!3062878 e!3062877)))

(declare-fun res!2093003 () Bool)

(assert (=> b!4899893 (= res!2093003 (not (nullable!4562 (reg!13585 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))))

(assert (=> b!4899893 (=> (not res!2093003) (not e!3062877))))

(declare-fun d!1574828 () Bool)

(declare-fun res!2093005 () Bool)

(declare-fun e!3062879 () Bool)

(assert (=> d!1574828 (=> res!2093005 e!3062879)))

(assert (=> d!1574828 (= res!2093005 (is-ElementMatch!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> d!1574828 (= (validRegex!5889 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) e!3062879)))

(declare-fun b!4899894 () Bool)

(declare-fun res!2093002 () Bool)

(declare-fun e!3062873 () Bool)

(assert (=> b!4899894 (=> (not res!2093002) (not e!3062873))))

(assert (=> b!4899894 (= res!2093002 call!339962)))

(declare-fun e!3062874 () Bool)

(assert (=> b!4899894 (= e!3062874 e!3062873)))

(declare-fun bm!339956 () Bool)

(assert (=> bm!339956 (= call!339962 call!339960)))

(declare-fun b!4899895 () Bool)

(assert (=> b!4899895 (= e!3062877 call!339960)))

(declare-fun b!4899896 () Bool)

(declare-fun e!3062875 () Bool)

(assert (=> b!4899896 (= e!3062875 e!3062876)))

(declare-fun res!2093004 () Bool)

(assert (=> b!4899896 (=> (not res!2093004) (not e!3062876))))

(declare-fun call!339961 () Bool)

(assert (=> b!4899896 (= res!2093004 call!339961)))

(declare-fun b!4899897 () Bool)

(assert (=> b!4899897 (= e!3062879 e!3062878)))

(assert (=> b!4899897 (= c!832862 (is-Star!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun bm!339957 () Bool)

(assert (=> bm!339957 (= call!339961 (validRegex!5889 (ite c!832861 (regTwo!27025 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (regOne!27024 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun b!4899898 () Bool)

(assert (=> b!4899898 (= e!3062873 call!339961)))

(declare-fun b!4899899 () Bool)

(declare-fun res!2093006 () Bool)

(assert (=> b!4899899 (=> res!2093006 e!3062875)))

(assert (=> b!4899899 (= res!2093006 (not (is-Concat!21748 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (=> b!4899899 (= e!3062874 e!3062875)))

(declare-fun b!4899900 () Bool)

(assert (=> b!4899900 (= e!3062878 e!3062874)))

(assert (=> b!4899900 (= c!832861 (is-Union!13256 (regex!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))))

(assert (= (and d!1574828 (not res!2093005)) b!4899897))

(assert (= (and b!4899897 c!832862) b!4899893))

(assert (= (and b!4899897 (not c!832862)) b!4899900))

(assert (= (and b!4899893 res!2093003) b!4899895))

(assert (= (and b!4899900 c!832861) b!4899894))

(assert (= (and b!4899900 (not c!832861)) b!4899899))

(assert (= (and b!4899894 res!2093002) b!4899898))

(assert (= (and b!4899899 (not res!2093006)) b!4899896))

(assert (= (and b!4899896 res!2093004) b!4899892))

(assert (= (or b!4899898 b!4899896) bm!339957))

(assert (= (or b!4899894 b!4899892) bm!339956))

(assert (= (or b!4899895 bm!339956) bm!339955))

(declare-fun m!5908136 () Bool)

(assert (=> bm!339955 m!5908136))

(declare-fun m!5908138 () Bool)

(assert (=> b!4899893 m!5908138))

(declare-fun m!5908140 () Bool)

(assert (=> bm!339957 m!5908140))

(assert (=> d!1574236 d!1574828))

(declare-fun d!1574830 () Bool)

(declare-fun res!2093007 () Bool)

(declare-fun e!3062880 () Bool)

(assert (=> d!1574830 (=> (not res!2093007) (not e!3062880))))

(assert (=> d!1574830 (= res!2093007 (<= (size!37169 (list!17749 (xs!18065 (right!41332 (c!832544 input!1236))))) 512))))

(assert (=> d!1574830 (= (inv!72741 (right!41332 (c!832544 input!1236))) e!3062880)))

(declare-fun b!4899901 () Bool)

(declare-fun res!2093008 () Bool)

(assert (=> b!4899901 (=> (not res!2093008) (not e!3062880))))

(assert (=> b!4899901 (= res!2093008 (= (csize!29729 (right!41332 (c!832544 input!1236))) (size!37169 (list!17749 (xs!18065 (right!41332 (c!832544 input!1236)))))))))

(declare-fun b!4899902 () Bool)

(assert (=> b!4899902 (= e!3062880 (and (> (csize!29729 (right!41332 (c!832544 input!1236))) 0) (<= (csize!29729 (right!41332 (c!832544 input!1236))) 512)))))

(assert (= (and d!1574830 res!2093007) b!4899901))

(assert (= (and b!4899901 res!2093008) b!4899902))

(assert (=> d!1574830 m!5907522))

(assert (=> d!1574830 m!5907522))

(declare-fun m!5908142 () Bool)

(assert (=> d!1574830 m!5908142))

(assert (=> b!4899901 m!5907522))

(assert (=> b!4899901 m!5907522))

(assert (=> b!4899901 m!5908142))

(assert (=> b!4898827 d!1574830))

(declare-fun b!4899903 () Bool)

(declare-fun e!3062885 () Option!14040)

(declare-fun lt!2009408 () Option!14040)

(declare-fun lt!2009406 () Option!14040)

(assert (=> b!4899903 (= e!3062885 (ite (and (is-None!14039 lt!2009408) (is-None!14039 lt!2009406)) None!14039 (ite (is-None!14039 lt!2009406) lt!2009408 (ite (is-None!14039 lt!2009408) lt!2009406 (ite (>= (size!37167 (_1!33555 (v!49999 lt!2009408))) (size!37167 (_1!33555 (v!49999 lt!2009406)))) lt!2009408 lt!2009406)))))))

(declare-fun call!339963 () Option!14040)

(assert (=> b!4899903 (= lt!2009408 call!339963)))

(assert (=> b!4899903 (= lt!2009406 (maxPrefixZipperSequence!1322 thiss!14805 (t!366240 (t!366240 (t!366240 (t!366240 rulesArg!165)))) input!1236))))

(declare-fun b!4899904 () Bool)

(assert (=> b!4899904 (= e!3062885 call!339963)))

(declare-fun b!4899905 () Bool)

(declare-fun e!3062884 () Bool)

(declare-fun lt!2009409 () Option!14040)

(assert (=> b!4899905 (= e!3062884 (= (list!17745 (_2!33555 (get!19497 lt!2009409))) (_2!33556 (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236))))))))

(declare-fun bm!339958 () Bool)

(assert (=> bm!339958 (= call!339963 (maxPrefixOneRuleZipperSequence!691 thiss!14805 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))) input!1236))))

(declare-fun b!4899907 () Bool)

(declare-fun res!2093013 () Bool)

(declare-fun e!3062886 () Bool)

(assert (=> b!4899907 (=> (not res!2093013) (not e!3062886))))

(declare-fun e!3062881 () Bool)

(assert (=> b!4899907 (= res!2093013 e!3062881)))

(declare-fun res!2093010 () Bool)

(assert (=> b!4899907 (=> res!2093010 e!3062881)))

(assert (=> b!4899907 (= res!2093010 (not (isDefined!11053 lt!2009409)))))

(declare-fun b!4899908 () Bool)

(declare-fun e!3062883 () Bool)

(assert (=> b!4899908 (= e!3062881 e!3062883)))

(declare-fun res!2093011 () Bool)

(assert (=> b!4899908 (=> (not res!2093011) (not e!3062883))))

(assert (=> b!4899908 (= res!2093011 (= (_1!33555 (get!19497 lt!2009409)) (_1!33556 (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236))))))))

(declare-fun b!4899909 () Bool)

(assert (=> b!4899909 (= e!3062883 (= (list!17745 (_2!33555 (get!19497 lt!2009409))) (_2!33556 (get!19496 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236))))))))

(declare-fun b!4899910 () Bool)

(declare-fun e!3062882 () Bool)

(assert (=> b!4899910 (= e!3062886 e!3062882)))

(declare-fun res!2093009 () Bool)

(assert (=> b!4899910 (=> res!2093009 e!3062882)))

(assert (=> b!4899910 (= res!2093009 (not (isDefined!11053 lt!2009409)))))

(declare-fun d!1574832 () Bool)

(assert (=> d!1574832 e!3062886))

(declare-fun res!2093012 () Bool)

(assert (=> d!1574832 (=> (not res!2093012) (not e!3062886))))

(assert (=> d!1574832 (= res!2093012 (= (isDefined!11053 lt!2009409) (isDefined!11052 (maxPrefixZipper!680 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236)))))))

(assert (=> d!1574832 (= lt!2009409 e!3062885)))

(declare-fun c!832863 () Bool)

(assert (=> d!1574832 (= c!832863 (and (is-Cons!56430 (t!366240 (t!366240 (t!366240 rulesArg!165)))) (is-Nil!56430 (t!366240 (t!366240 (t!366240 (t!366240 rulesArg!165)))))))))

(declare-fun lt!2009410 () Unit!146503)

(declare-fun lt!2009411 () Unit!146503)

(assert (=> d!1574832 (= lt!2009410 lt!2009411)))

(declare-fun lt!2009407 () List!56552)

(declare-fun lt!2009412 () List!56552)

(assert (=> d!1574832 (isPrefix!4901 lt!2009407 lt!2009412)))

(assert (=> d!1574832 (= lt!2009411 (lemmaIsPrefixRefl!3298 lt!2009407 lt!2009412))))

(assert (=> d!1574832 (= lt!2009412 (list!17745 input!1236))))

(assert (=> d!1574832 (= lt!2009407 (list!17745 input!1236))))

(assert (=> d!1574832 (rulesValidInductive!3160 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))))))

(assert (=> d!1574832 (= (maxPrefixZipperSequence!1322 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) input!1236) lt!2009409)))

(declare-fun b!4899906 () Bool)

(assert (=> b!4899906 (= e!3062882 e!3062884)))

(declare-fun res!2093014 () Bool)

(assert (=> b!4899906 (=> (not res!2093014) (not e!3062884))))

(assert (=> b!4899906 (= res!2093014 (= (_1!33555 (get!19497 lt!2009409)) (_1!33556 (get!19496 (maxPrefix!4610 thiss!14805 (t!366240 (t!366240 (t!366240 rulesArg!165))) (list!17745 input!1236))))))))

(assert (= (and d!1574832 c!832863) b!4899904))

(assert (= (and d!1574832 (not c!832863)) b!4899903))

(assert (= (or b!4899904 b!4899903) bm!339958))

(assert (= (and d!1574832 res!2093012) b!4899907))

(assert (= (and b!4899907 (not res!2093010)) b!4899908))

(assert (= (and b!4899908 res!2093011) b!4899909))

(assert (= (and b!4899907 res!2093013) b!4899910))

(assert (= (and b!4899910 (not res!2093009)) b!4899906))

(assert (= (and b!4899906 res!2093014) b!4899905))

(assert (=> d!1574832 m!5907786))

(assert (=> d!1574832 m!5905562))

(declare-fun m!5908144 () Bool)

(assert (=> d!1574832 m!5908144))

(assert (=> d!1574832 m!5905562))

(assert (=> d!1574832 m!5907574))

(declare-fun m!5908146 () Bool)

(assert (=> d!1574832 m!5908146))

(declare-fun m!5908148 () Bool)

(assert (=> d!1574832 m!5908148))

(assert (=> d!1574832 m!5907574))

(declare-fun m!5908150 () Bool)

(assert (=> d!1574832 m!5908150))

(assert (=> b!4899909 m!5905562))

(assert (=> b!4899909 m!5905562))

(assert (=> b!4899909 m!5907574))

(declare-fun m!5908152 () Bool)

(assert (=> b!4899909 m!5908152))

(declare-fun m!5908154 () Bool)

(assert (=> b!4899909 m!5908154))

(assert (=> b!4899909 m!5907574))

(declare-fun m!5908156 () Bool)

(assert (=> b!4899909 m!5908156))

(assert (=> b!4899910 m!5908146))

(declare-fun m!5908158 () Bool)

(assert (=> bm!339958 m!5908158))

(assert (=> b!4899905 m!5905562))

(assert (=> b!4899905 m!5907430))

(assert (=> b!4899905 m!5905562))

(assert (=> b!4899905 m!5908154))

(assert (=> b!4899905 m!5907430))

(declare-fun m!5908160 () Bool)

(assert (=> b!4899905 m!5908160))

(assert (=> b!4899905 m!5908152))

(assert (=> b!4899908 m!5908152))

(assert (=> b!4899908 m!5905562))

(assert (=> b!4899908 m!5905562))

(assert (=> b!4899908 m!5907574))

(assert (=> b!4899908 m!5907574))

(assert (=> b!4899908 m!5908156))

(assert (=> b!4899907 m!5908146))

(declare-fun m!5908162 () Bool)

(assert (=> b!4899903 m!5908162))

(assert (=> b!4899906 m!5908152))

(assert (=> b!4899906 m!5905562))

(assert (=> b!4899906 m!5905562))

(assert (=> b!4899906 m!5907430))

(assert (=> b!4899906 m!5907430))

(assert (=> b!4899906 m!5908160))

(assert (=> b!4898680 d!1574832))

(assert (=> b!4898775 d!1574656))

(assert (=> b!4898775 d!1574658))

(assert (=> b!4898775 d!1574412))

(declare-fun d!1574834 () Bool)

(assert (=> d!1574834 (= (inv!72742 (xs!18065 (right!41332 (c!832544 input!1236)))) (<= (size!37169 (innerList!14837 (xs!18065 (right!41332 (c!832544 input!1236))))) 2147483647))))

(declare-fun bs!1176668 () Bool)

(assert (= bs!1176668 d!1574834))

(declare-fun m!5908164 () Bool)

(assert (=> bs!1176668 m!5908164))

(assert (=> b!4898985 d!1574834))

(declare-fun bs!1176669 () Bool)

(declare-fun d!1574836 () Bool)

(assert (= bs!1176669 (and d!1574836 d!1574824)))

(declare-fun lambda!244202 () Int)

(assert (=> bs!1176669 (= (and (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (= lambda!244202 lambda!244201))))

(declare-fun bs!1176670 () Bool)

(assert (= bs!1176670 (and d!1574836 d!1574548)))

(assert (=> bs!1176670 (= lambda!244202 lambda!244195)))

(declare-fun bs!1176671 () Bool)

(assert (= bs!1176671 (and d!1574836 b!4899825)))

(assert (=> bs!1176671 (= (and (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))))) (= lambda!244202 lambda!244198))))

(declare-fun bs!1176672 () Bool)

(assert (= bs!1176672 (and d!1574836 d!1574814)))

(assert (=> bs!1176672 (= lambda!244202 lambda!244200)))

(declare-fun bs!1176673 () Bool)

(assert (= bs!1176673 (and d!1574836 b!4898937)))

(assert (=> bs!1176673 (= (and (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (= lambda!244202 lambda!244184))))

(declare-fun bs!1176674 () Bool)

(assert (= bs!1176674 (and d!1574836 d!1574166)))

(assert (=> bs!1176674 (= lambda!244202 lambda!244179)))

(declare-fun bs!1176675 () Bool)

(assert (= bs!1176675 (and d!1574836 b!4898475)))

(assert (=> bs!1176675 (= lambda!244202 lambda!244166)))

(declare-fun b!4899911 () Bool)

(declare-fun e!3062887 () Bool)

(assert (=> b!4899911 (= e!3062887 true)))

(assert (=> d!1574836 e!3062887))

(assert (= d!1574836 b!4899911))

(assert (=> b!4899911 (< (dynLambda!22685 order!25527 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244202))))

(assert (=> b!4899911 (< (dynLambda!22687 order!25531 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) (dynLambda!22686 order!25529 lambda!244202))))

(assert (=> d!1574836 (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008703))))) (list!17745 (seqFromList!5943 (_1!33559 lt!2008703))))))

(declare-fun lt!2009413 () Unit!146503)

(assert (=> d!1574836 (= lt!2009413 (ForallOf!1140 lambda!244202 (seqFromList!5943 (_1!33559 lt!2008703))))))

(assert (=> d!1574836 (= (lemmaSemiInverse!2571 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008703))) lt!2009413)))

(declare-fun b_lambda!194993 () Bool)

(assert (=> (not b_lambda!194993) (not d!1574836)))

(declare-fun t!366408 () Bool)

(declare-fun tb!259607 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366408) tb!259607))

(declare-fun tp!1378410 () Bool)

(declare-fun b!4899912 () Bool)

(declare-fun e!3062888 () Bool)

(assert (=> b!4899912 (= e!3062888 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008703)))))) tp!1378410))))

(declare-fun result!323266 () Bool)

(assert (=> tb!259607 (= result!323266 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008703))))) e!3062888))))

(assert (= tb!259607 b!4899912))

(declare-fun m!5908166 () Bool)

(assert (=> b!4899912 m!5908166))

(declare-fun m!5908168 () Bool)

(assert (=> tb!259607 m!5908168))

(assert (=> d!1574836 t!366408))

(declare-fun b_and!345821 () Bool)

(assert (= b_and!345803 (and (=> t!366408 result!323266) b_and!345821)))

(declare-fun t!366410 () Bool)

(declare-fun tb!259609 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366410) tb!259609))

(declare-fun result!323268 () Bool)

(assert (= result!323268 result!323266))

(assert (=> d!1574836 t!366410))

(declare-fun b_and!345823 () Bool)

(assert (= b_and!345805 (and (=> t!366410 result!323268) b_and!345823)))

(declare-fun t!366412 () Bool)

(declare-fun tb!259611 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366412) tb!259611))

(declare-fun result!323270 () Bool)

(assert (= result!323270 result!323266))

(assert (=> d!1574836 t!366412))

(declare-fun b_and!345825 () Bool)

(assert (= b_and!345807 (and (=> t!366412 result!323270) b_and!345825)))

(declare-fun b_lambda!194995 () Bool)

(assert (=> (not b_lambda!194995) (not d!1574836)))

(declare-fun t!366414 () Bool)

(declare-fun tb!259613 () Bool)

(assert (=> (and b!4898272 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366414) tb!259613))

(declare-fun result!323272 () Bool)

(assert (=> tb!259613 (= result!323272 (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008703)))))))

(declare-fun m!5908170 () Bool)

(assert (=> tb!259613 m!5908170))

(assert (=> d!1574836 t!366414))

(declare-fun b_and!345827 () Bool)

(assert (= b_and!345815 (and (=> t!366414 result!323272) b_and!345827)))

(declare-fun t!366416 () Bool)

(declare-fun tb!259615 () Bool)

(assert (=> (and b!4898501 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366416) tb!259615))

(declare-fun result!323274 () Bool)

(assert (= result!323274 result!323272))

(assert (=> d!1574836 t!366416))

(declare-fun b_and!345829 () Bool)

(assert (= b_and!345817 (and (=> t!366416 result!323274) b_and!345829)))

(declare-fun t!366418 () Bool)

(declare-fun tb!259617 () Bool)

(assert (=> (and b!4898980 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366418) tb!259617))

(declare-fun result!323276 () Bool)

(assert (= result!323276 result!323272))

(assert (=> d!1574836 t!366418))

(declare-fun b_and!345831 () Bool)

(assert (= b_and!345819 (and (=> t!366418 result!323276) b_and!345831)))

(declare-fun m!5908172 () Bool)

(assert (=> d!1574836 m!5908172))

(declare-fun m!5908174 () Bool)

(assert (=> d!1574836 m!5908174))

(declare-fun m!5908176 () Bool)

(assert (=> d!1574836 m!5908176))

(assert (=> d!1574836 m!5908172))

(assert (=> d!1574836 m!5905928))

(declare-fun m!5908178 () Bool)

(assert (=> d!1574836 m!5908178))

(assert (=> d!1574836 m!5905928))

(assert (=> d!1574836 m!5908176))

(assert (=> d!1574836 m!5905928))

(declare-fun m!5908180 () Bool)

(assert (=> d!1574836 m!5908180))

(assert (=> b!4898658 d!1574836))

(declare-fun d!1574838 () Bool)

(declare-fun e!3062890 () Bool)

(assert (=> d!1574838 e!3062890))

(declare-fun res!2093015 () Bool)

(assert (=> d!1574838 (=> res!2093015 e!3062890)))

(assert (=> d!1574838 (= res!2093015 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(declare-fun lt!2009414 () Unit!146503)

(assert (=> d!1574838 (= lt!2009414 (choose!35770 (regex!8181 (h!62878 rulesArg!165)) (list!17745 input!1236)))))

(assert (=> d!1574838 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574838 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 rulesArg!165)) (list!17745 input!1236)) lt!2009414)))

(declare-fun b!4899913 () Bool)

(assert (=> b!4899913 (= e!3062890 (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(assert (= (and d!1574838 (not res!2093015)) b!4899913))

(assert (=> d!1574838 m!5905738))

(assert (=> d!1574838 m!5905562))

(assert (=> d!1574838 m!5905900))

(assert (=> d!1574838 m!5905738))

(assert (=> d!1574838 m!5905562))

(assert (=> d!1574838 m!5905562))

(assert (=> d!1574838 m!5905900))

(assert (=> d!1574838 m!5905902))

(assert (=> d!1574838 m!5905982))

(assert (=> d!1574838 m!5905934))

(assert (=> d!1574838 m!5905562))

(declare-fun m!5908182 () Bool)

(assert (=> d!1574838 m!5908182))

(assert (=> b!4899913 m!5905738))

(assert (=> b!4899913 m!5905562))

(assert (=> b!4899913 m!5905900))

(assert (=> b!4899913 m!5905738))

(assert (=> b!4899913 m!5905562))

(assert (=> b!4899913 m!5905562))

(assert (=> b!4899913 m!5905900))

(assert (=> b!4899913 m!5905902))

(assert (=> b!4899913 m!5905904))

(assert (=> b!4898658 d!1574838))

(assert (=> b!4898658 d!1574554))

(assert (=> b!4898658 d!1574552))

(declare-fun d!1574840 () Bool)

(declare-fun lt!2009415 () Int)

(assert (=> d!1574840 (= lt!2009415 (size!37169 (list!17745 (seqFromList!5943 (_1!33559 lt!2008703)))))))

(assert (=> d!1574840 (= lt!2009415 (size!37173 (c!832544 (seqFromList!5943 (_1!33559 lt!2008703)))))))

(assert (=> d!1574840 (= (size!37170 (seqFromList!5943 (_1!33559 lt!2008703))) lt!2009415)))

(declare-fun bs!1176676 () Bool)

(assert (= bs!1176676 d!1574840))

(assert (=> bs!1176676 m!5905928))

(assert (=> bs!1176676 m!5908178))

(assert (=> bs!1176676 m!5908178))

(declare-fun m!5908184 () Bool)

(assert (=> bs!1176676 m!5908184))

(declare-fun m!5908186 () Bool)

(assert (=> bs!1176676 m!5908186))

(assert (=> b!4898658 d!1574840))

(declare-fun d!1574842 () Bool)

(assert (=> d!1574842 (= (apply!13547 (transformation!8181 (h!62878 rulesArg!165)) (seqFromList!5943 (_1!33559 lt!2008703))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2008703))))))

(declare-fun b_lambda!194997 () Bool)

(assert (=> (not b_lambda!194997) (not d!1574842)))

(assert (=> d!1574842 t!366414))

(declare-fun b_and!345833 () Bool)

(assert (= b_and!345827 (and (=> t!366414 result!323272) b_and!345833)))

(assert (=> d!1574842 t!366416))

(declare-fun b_and!345835 () Bool)

(assert (= b_and!345829 (and (=> t!366416 result!323274) b_and!345835)))

(assert (=> d!1574842 t!366418))

(declare-fun b_and!345837 () Bool)

(assert (= b_and!345831 (and (=> t!366418 result!323276) b_and!345837)))

(assert (=> d!1574842 m!5905928))

(assert (=> d!1574842 m!5908176))

(assert (=> b!4898658 d!1574842))

(assert (=> b!4898658 d!1574128))

(declare-fun d!1574844 () Bool)

(assert (=> d!1574844 (= (seqFromList!5943 (_1!33559 lt!2008703)) (fromListB!2698 (_1!33559 lt!2008703)))))

(declare-fun bs!1176677 () Bool)

(assert (= bs!1176677 d!1574844))

(declare-fun m!5908188 () Bool)

(assert (=> bs!1176677 m!5908188))

(assert (=> b!4898658 d!1574844))

(declare-fun d!1574846 () Bool)

(assert (=> d!1574846 (= (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))) (is-Nil!56428 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(assert (=> b!4898658 d!1574846))

(declare-fun d!1574848 () Bool)

(declare-fun lt!2009416 () Int)

(assert (=> d!1574848 (>= lt!2009416 0)))

(declare-fun e!3062891 () Int)

(assert (=> d!1574848 (= lt!2009416 e!3062891)))

(declare-fun c!832864 () Bool)

(assert (=> d!1574848 (= c!832864 (is-Nil!56428 lt!2008846))))

(assert (=> d!1574848 (= (size!37169 lt!2008846) lt!2009416)))

(declare-fun b!4899914 () Bool)

(assert (=> b!4899914 (= e!3062891 0)))

(declare-fun b!4899915 () Bool)

(assert (=> b!4899915 (= e!3062891 (+ 1 (size!37169 (t!366238 lt!2008846))))))

(assert (= (and d!1574848 c!832864) b!4899914))

(assert (= (and d!1574848 (not c!832864)) b!4899915))

(declare-fun m!5908190 () Bool)

(assert (=> b!4899915 m!5908190))

(assert (=> b!4898806 d!1574848))

(declare-fun d!1574850 () Bool)

(declare-fun lt!2009417 () Int)

(assert (=> d!1574850 (>= lt!2009417 0)))

(declare-fun e!3062892 () Int)

(assert (=> d!1574850 (= lt!2009417 e!3062892)))

(declare-fun c!832865 () Bool)

(assert (=> d!1574850 (= c!832865 (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> d!1574850 (= (size!37169 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) lt!2009417)))

(declare-fun b!4899916 () Bool)

(assert (=> b!4899916 (= e!3062892 0)))

(declare-fun b!4899917 () Bool)

(assert (=> b!4899917 (= e!3062892 (+ 1 (size!37169 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(assert (= (and d!1574850 c!832865) b!4899916))

(assert (= (and d!1574850 (not c!832865)) b!4899917))

(assert (=> b!4899917 m!5907896))

(assert (=> b!4898806 d!1574850))

(assert (=> b!4898806 d!1574150))

(assert (=> b!4898687 d!1574472))

(assert (=> d!1574126 d!1574166))

(assert (=> b!4898927 d!1574508))

(assert (=> b!4898927 d!1574510))

(assert (=> b!4898857 d!1574718))

(declare-fun b!4899918 () Bool)

(declare-fun e!3062894 () Bool)

(declare-fun e!3062893 () Bool)

(assert (=> b!4899918 (= e!3062894 e!3062893)))

(declare-fun res!2093018 () Bool)

(assert (=> b!4899918 (=> (not res!2093018) (not e!3062893))))

(assert (=> b!4899918 (= res!2093018 (not (is-Nil!56428 (tail!9608 (tail!9608 lt!2008472)))))))

(declare-fun d!1574852 () Bool)

(declare-fun e!3062895 () Bool)

(assert (=> d!1574852 e!3062895))

(declare-fun res!2093017 () Bool)

(assert (=> d!1574852 (=> res!2093017 e!3062895)))

(declare-fun lt!2009418 () Bool)

(assert (=> d!1574852 (= res!2093017 (not lt!2009418))))

(assert (=> d!1574852 (= lt!2009418 e!3062894)))

(declare-fun res!2093019 () Bool)

(assert (=> d!1574852 (=> res!2093019 e!3062894)))

(assert (=> d!1574852 (= res!2093019 (is-Nil!56428 (tail!9608 (tail!9608 lt!2008472))))))

(assert (=> d!1574852 (= (isPrefix!4901 (tail!9608 (tail!9608 lt!2008472)) (tail!9608 (tail!9608 lt!2008472))) lt!2009418)))

(declare-fun b!4899919 () Bool)

(declare-fun res!2093016 () Bool)

(assert (=> b!4899919 (=> (not res!2093016) (not e!3062893))))

(assert (=> b!4899919 (= res!2093016 (= (head!10462 (tail!9608 (tail!9608 lt!2008472))) (head!10462 (tail!9608 (tail!9608 lt!2008472)))))))

(declare-fun b!4899921 () Bool)

(assert (=> b!4899921 (= e!3062895 (>= (size!37169 (tail!9608 (tail!9608 lt!2008472))) (size!37169 (tail!9608 (tail!9608 lt!2008472)))))))

(declare-fun b!4899920 () Bool)

(assert (=> b!4899920 (= e!3062893 (isPrefix!4901 (tail!9608 (tail!9608 (tail!9608 lt!2008472))) (tail!9608 (tail!9608 (tail!9608 lt!2008472)))))))

(assert (= (and d!1574852 (not res!2093019)) b!4899918))

(assert (= (and b!4899918 res!2093018) b!4899919))

(assert (= (and b!4899919 res!2093016) b!4899920))

(assert (= (and d!1574852 (not res!2093017)) b!4899921))

(assert (=> b!4899919 m!5906004))

(declare-fun m!5908192 () Bool)

(assert (=> b!4899919 m!5908192))

(assert (=> b!4899919 m!5906004))

(assert (=> b!4899919 m!5908192))

(assert (=> b!4899921 m!5906004))

(declare-fun m!5908194 () Bool)

(assert (=> b!4899921 m!5908194))

(assert (=> b!4899921 m!5906004))

(assert (=> b!4899921 m!5908194))

(assert (=> b!4899920 m!5906004))

(declare-fun m!5908196 () Bool)

(assert (=> b!4899920 m!5908196))

(assert (=> b!4899920 m!5906004))

(assert (=> b!4899920 m!5908196))

(assert (=> b!4899920 m!5908196))

(assert (=> b!4899920 m!5908196))

(declare-fun m!5908198 () Bool)

(assert (=> b!4899920 m!5908198))

(assert (=> b!4898678 d!1574852))

(declare-fun d!1574854 () Bool)

(assert (=> d!1574854 (= (tail!9608 (tail!9608 lt!2008472)) (t!366238 (tail!9608 lt!2008472)))))

(assert (=> b!4898678 d!1574854))

(declare-fun b!4899922 () Bool)

(declare-fun e!3062902 () Bool)

(declare-fun e!3062897 () Bool)

(assert (=> b!4899922 (= e!3062902 e!3062897)))

(declare-fun c!832868 () Bool)

(assert (=> b!4899922 (= c!832868 (is-EmptyLang!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899923 () Bool)

(declare-fun res!2093027 () Bool)

(declare-fun e!3062896 () Bool)

(assert (=> b!4899923 (=> res!2093027 e!3062896)))

(declare-fun e!3062898 () Bool)

(assert (=> b!4899923 (= res!2093027 e!3062898)))

(declare-fun res!2093023 () Bool)

(assert (=> b!4899923 (=> (not res!2093023) (not e!3062898))))

(declare-fun lt!2009419 () Bool)

(assert (=> b!4899923 (= res!2093023 lt!2009419)))

(declare-fun b!4899924 () Bool)

(declare-fun e!3062899 () Bool)

(assert (=> b!4899924 (= e!3062899 (matchR!6537 (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705)))))) (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705)))))))))

(declare-fun d!1574856 () Bool)

(assert (=> d!1574856 e!3062902))

(declare-fun c!832866 () Bool)

(assert (=> d!1574856 (= c!832866 (is-EmptyExpr!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> d!1574856 (= lt!2009419 e!3062899)))

(declare-fun c!832867 () Bool)

(assert (=> d!1574856 (= c!832867 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))))))

(assert (=> d!1574856 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574856 (= (matchR!6537 (regex!8181 (h!62878 rulesArg!165)) (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))) lt!2009419)))

(declare-fun b!4899925 () Bool)

(declare-fun res!2093020 () Bool)

(assert (=> b!4899925 (=> (not res!2093020) (not e!3062898))))

(declare-fun call!339964 () Bool)

(assert (=> b!4899925 (= res!2093020 (not call!339964))))

(declare-fun b!4899926 () Bool)

(assert (=> b!4899926 (= e!3062902 (= lt!2009419 call!339964))))

(declare-fun b!4899927 () Bool)

(declare-fun res!2093021 () Bool)

(assert (=> b!4899927 (=> res!2093021 e!3062896)))

(assert (=> b!4899927 (= res!2093021 (not (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> b!4899927 (= e!3062897 e!3062896)))

(declare-fun b!4899928 () Bool)

(declare-fun e!3062900 () Bool)

(assert (=> b!4899928 (= e!3062900 (not (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))) (c!832545 (regex!8181 (h!62878 rulesArg!165))))))))

(declare-fun bm!339959 () Bool)

(assert (=> bm!339959 (= call!339964 (isEmpty!30306 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))))))

(declare-fun b!4899929 () Bool)

(assert (=> b!4899929 (= e!3062898 (= (head!10462 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))) (c!832545 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun b!4899930 () Bool)

(declare-fun res!2093026 () Bool)

(assert (=> b!4899930 (=> res!2093026 e!3062900)))

(assert (=> b!4899930 (= res!2093026 (not (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705))))))))))

(declare-fun b!4899931 () Bool)

(declare-fun e!3062901 () Bool)

(assert (=> b!4899931 (= e!3062896 e!3062901)))

(declare-fun res!2093024 () Bool)

(assert (=> b!4899931 (=> (not res!2093024) (not e!3062901))))

(assert (=> b!4899931 (= res!2093024 (not lt!2009419))))

(declare-fun b!4899932 () Bool)

(assert (=> b!4899932 (= e!3062899 (nullable!4562 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899933 () Bool)

(declare-fun res!2093022 () Bool)

(assert (=> b!4899933 (=> (not res!2093022) (not e!3062898))))

(assert (=> b!4899933 (= res!2093022 (isEmpty!30306 (tail!9608 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008705)))))))))

(declare-fun b!4899934 () Bool)

(assert (=> b!4899934 (= e!3062897 (not lt!2009419))))

(declare-fun b!4899935 () Bool)

(assert (=> b!4899935 (= e!3062901 e!3062900)))

(declare-fun res!2093025 () Bool)

(assert (=> b!4899935 (=> res!2093025 e!3062900)))

(assert (=> b!4899935 (= res!2093025 call!339964)))

(assert (= (and d!1574856 c!832867) b!4899932))

(assert (= (and d!1574856 (not c!832867)) b!4899924))

(assert (= (and d!1574856 c!832866) b!4899926))

(assert (= (and d!1574856 (not c!832866)) b!4899922))

(assert (= (and b!4899922 c!832868) b!4899934))

(assert (= (and b!4899922 (not c!832868)) b!4899927))

(assert (= (and b!4899927 (not res!2093021)) b!4899923))

(assert (= (and b!4899923 res!2093023) b!4899925))

(assert (= (and b!4899925 res!2093020) b!4899933))

(assert (= (and b!4899933 res!2093022) b!4899929))

(assert (= (and b!4899923 (not res!2093027)) b!4899931))

(assert (= (and b!4899931 res!2093024) b!4899935))

(assert (= (and b!4899935 (not res!2093025)) b!4899930))

(assert (= (and b!4899930 (not res!2093026)) b!4899928))

(assert (= (or b!4899926 b!4899925 b!4899935) bm!339959))

(assert (=> b!4899933 m!5905912))

(declare-fun m!5908200 () Bool)

(assert (=> b!4899933 m!5908200))

(assert (=> b!4899933 m!5908200))

(declare-fun m!5908202 () Bool)

(assert (=> b!4899933 m!5908202))

(assert (=> b!4899929 m!5905912))

(declare-fun m!5908204 () Bool)

(assert (=> b!4899929 m!5908204))

(assert (=> d!1574856 m!5905912))

(declare-fun m!5908206 () Bool)

(assert (=> d!1574856 m!5908206))

(assert (=> d!1574856 m!5905982))

(assert (=> b!4899928 m!5905912))

(assert (=> b!4899928 m!5908204))

(assert (=> bm!339959 m!5905912))

(assert (=> bm!339959 m!5908206))

(assert (=> b!4899924 m!5905912))

(assert (=> b!4899924 m!5908204))

(assert (=> b!4899924 m!5908204))

(declare-fun m!5908208 () Bool)

(assert (=> b!4899924 m!5908208))

(assert (=> b!4899924 m!5905912))

(assert (=> b!4899924 m!5908200))

(assert (=> b!4899924 m!5908208))

(assert (=> b!4899924 m!5908200))

(declare-fun m!5908210 () Bool)

(assert (=> b!4899924 m!5908210))

(assert (=> b!4899932 m!5905984))

(assert (=> b!4899930 m!5905912))

(assert (=> b!4899930 m!5908200))

(assert (=> b!4899930 m!5908200))

(assert (=> b!4899930 m!5908202))

(assert (=> b!4898654 d!1574856))

(assert (=> b!4898654 d!1574476))

(assert (=> b!4898654 d!1574478))

(assert (=> b!4898654 d!1574480))

(declare-fun d!1574858 () Bool)

(declare-fun lt!2009420 () Int)

(assert (=> d!1574858 (>= lt!2009420 0)))

(declare-fun e!3062903 () Int)

(assert (=> d!1574858 (= lt!2009420 e!3062903)))

(declare-fun c!832869 () Bool)

(assert (=> d!1574858 (= c!832869 (is-Nil!56428 (t!366238 lt!2008644)))))

(assert (=> d!1574858 (= (size!37169 (t!366238 lt!2008644)) lt!2009420)))

(declare-fun b!4899936 () Bool)

(assert (=> b!4899936 (= e!3062903 0)))

(declare-fun b!4899937 () Bool)

(assert (=> b!4899937 (= e!3062903 (+ 1 (size!37169 (t!366238 (t!366238 lt!2008644)))))))

(assert (= (and d!1574858 c!832869) b!4899936))

(assert (= (and d!1574858 (not c!832869)) b!4899937))

(declare-fun m!5908212 () Bool)

(assert (=> b!4899937 m!5908212))

(assert (=> b!4898760 d!1574858))

(assert (=> b!4898683 d!1574558))

(assert (=> b!4898683 d!1574556))

(assert (=> b!4898683 d!1574562))

(assert (=> b!4898683 d!1574020))

(declare-fun b!4899938 () Bool)

(declare-fun e!3062904 () List!56552)

(assert (=> b!4899938 (= e!3062904 Nil!56428)))

(declare-fun d!1574860 () Bool)

(declare-fun c!832870 () Bool)

(assert (=> d!1574860 (= c!832870 (is-Empty!14749 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(assert (=> d!1574860 (= (list!17747 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))) e!3062904)))

(declare-fun b!4899939 () Bool)

(declare-fun e!3062905 () List!56552)

(assert (=> b!4899939 (= e!3062904 e!3062905)))

(declare-fun c!832871 () Bool)

(assert (=> b!4899939 (= c!832871 (is-Leaf!24557 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))

(declare-fun b!4899941 () Bool)

(assert (=> b!4899941 (= e!3062905 (++!12250 (list!17747 (left!41002 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))) (list!17747 (right!41332 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008523))))))))))

(declare-fun b!4899940 () Bool)

(assert (=> b!4899940 (= e!3062905 (list!17749 (xs!18065 (c!832544 (charsOf!5381 (_1!33556 (get!19496 lt!2008523)))))))))

(assert (= (and d!1574860 c!832870) b!4899938))

(assert (= (and d!1574860 (not c!832870)) b!4899939))

(assert (= (and b!4899939 c!832871) b!4899940))

(assert (= (and b!4899939 (not c!832871)) b!4899941))

(declare-fun m!5908214 () Bool)

(assert (=> b!4899941 m!5908214))

(declare-fun m!5908216 () Bool)

(assert (=> b!4899941 m!5908216))

(assert (=> b!4899941 m!5908214))

(assert (=> b!4899941 m!5908216))

(declare-fun m!5908218 () Bool)

(assert (=> b!4899941 m!5908218))

(declare-fun m!5908220 () Bool)

(assert (=> b!4899940 m!5908220))

(assert (=> d!1574170 d!1574860))

(declare-fun d!1574862 () Bool)

(declare-fun lt!2009422 () Option!14039)

(assert (=> d!1574862 (= lt!2009422 (maxPrefixOneRule!3536 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236)))))

(declare-fun e!3062906 () Option!14039)

(assert (=> d!1574862 (= lt!2009422 e!3062906)))

(declare-fun c!832872 () Bool)

(declare-fun lt!2009423 () tuple2!60512)

(assert (=> d!1574862 (= c!832872 (isEmpty!30306 (_1!33559 lt!2009423)))))

(assert (=> d!1574862 (= lt!2009423 (findLongestMatchWithZipper!89 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(assert (=> d!1574862 (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165)))))

(assert (=> d!1574862 (= (maxPrefixOneRuleZipper!265 thiss!14805 (h!62878 (t!366240 rulesArg!165)) (list!17745 input!1236)) lt!2009422)))

(declare-fun b!4899942 () Bool)

(assert (=> b!4899942 (= e!3062906 None!14038)))

(declare-fun b!4899943 () Bool)

(assert (=> b!4899943 (= e!3062906 (Some!14038 (tuple2!60507 (Token!14927 (apply!13547 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009423))) (h!62878 (t!366240 rulesArg!165)) (size!37169 (_1!33559 lt!2009423)) (_1!33559 lt!2009423)) (_2!33559 lt!2009423))))))

(declare-fun lt!2009425 () Unit!146503)

(assert (=> b!4899943 (= lt!2009425 (longestMatchIsAcceptedByMatchOrIsEmpty!1723 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (list!17745 input!1236)))))

(declare-fun res!2093028 () Bool)

(assert (=> b!4899943 (= res!2093028 (isEmpty!30306 (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(declare-fun e!3062907 () Bool)

(assert (=> b!4899943 (=> res!2093028 e!3062907)))

(assert (=> b!4899943 e!3062907))

(declare-fun lt!2009424 () Unit!146503)

(assert (=> b!4899943 (= lt!2009424 lt!2009425)))

(declare-fun lt!2009421 () Unit!146503)

(assert (=> b!4899943 (= lt!2009421 (lemmaInv!1243 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))))

(declare-fun lt!2009426 () Unit!146503)

(assert (=> b!4899943 (= lt!2009426 (lemmaSemiInverse!2571 (transformation!8181 (h!62878 (t!366240 rulesArg!165))) (seqFromList!5943 (_1!33559 lt!2009423))))))

(declare-fun b!4899944 () Bool)

(assert (=> b!4899944 (= e!3062907 (matchR!6537 (regex!8181 (h!62878 (t!366240 rulesArg!165))) (_1!33559 (findLongestMatchInner!1760 (regex!8181 (h!62878 (t!366240 rulesArg!165))) Nil!56428 (size!37169 Nil!56428) (list!17745 input!1236) (list!17745 input!1236) (size!37169 (list!17745 input!1236))))))))

(assert (= (and d!1574862 c!832872) b!4899942))

(assert (= (and d!1574862 (not c!832872)) b!4899943))

(assert (= (and b!4899943 (not res!2093028)) b!4899944))

(assert (=> d!1574862 m!5905562))

(assert (=> d!1574862 m!5906162))

(declare-fun m!5908222 () Bool)

(assert (=> d!1574862 m!5908222))

(assert (=> d!1574862 m!5905562))

(declare-fun m!5908224 () Bool)

(assert (=> d!1574862 m!5908224))

(assert (=> d!1574862 m!5906282))

(assert (=> b!4899943 m!5905562))

(assert (=> b!4899943 m!5907240))

(assert (=> b!4899943 m!5905738))

(assert (=> b!4899943 m!5906360))

(declare-fun m!5908226 () Bool)

(assert (=> b!4899943 m!5908226))

(assert (=> b!4899943 m!5908226))

(declare-fun m!5908228 () Bool)

(assert (=> b!4899943 m!5908228))

(assert (=> b!4899943 m!5905738))

(assert (=> b!4899943 m!5905562))

(assert (=> b!4899943 m!5905562))

(assert (=> b!4899943 m!5905900))

(assert (=> b!4899943 m!5907210))

(assert (=> b!4899943 m!5907242))

(assert (=> b!4899943 m!5908226))

(declare-fun m!5908230 () Bool)

(assert (=> b!4899943 m!5908230))

(assert (=> b!4899943 m!5905562))

(assert (=> b!4899943 m!5905900))

(declare-fun m!5908232 () Bool)

(assert (=> b!4899943 m!5908232))

(assert (=> b!4899944 m!5905738))

(assert (=> b!4899944 m!5905562))

(assert (=> b!4899944 m!5905900))

(assert (=> b!4899944 m!5905738))

(assert (=> b!4899944 m!5905562))

(assert (=> b!4899944 m!5905562))

(assert (=> b!4899944 m!5905900))

(assert (=> b!4899944 m!5907210))

(assert (=> b!4899944 m!5907212))

(assert (=> bm!339846 d!1574862))

(assert (=> bm!339839 d!1574664))

(declare-fun d!1574864 () Bool)

(assert (=> d!1574864 (= (Forall!1694 lambda!244179) (choose!35779 lambda!244179))))

(declare-fun bs!1176678 () Bool)

(assert (= bs!1176678 d!1574864))

(declare-fun m!5908234 () Bool)

(assert (=> bs!1176678 m!5908234))

(assert (=> d!1574166 d!1574864))

(assert (=> b!4898958 d!1574502))

(assert (=> b!4898958 d!1574504))

(assert (=> d!1574148 d!1574158))

(assert (=> d!1574148 d!1574534))

(assert (=> d!1574148 d!1574536))

(assert (=> d!1574148 d!1574202))

(declare-fun b!4899945 () Bool)

(declare-fun res!2093030 () Bool)

(declare-fun e!3062909 () Bool)

(assert (=> b!4899945 (=> (not res!2093030) (not e!3062909))))

(assert (=> b!4899945 (= res!2093030 (<= (- (height!1962 (left!41002 (left!41002 (c!832544 input!1236)))) (height!1962 (right!41332 (left!41002 (c!832544 input!1236))))) 1))))

(declare-fun b!4899946 () Bool)

(declare-fun e!3062908 () Bool)

(assert (=> b!4899946 (= e!3062908 e!3062909)))

(declare-fun res!2093029 () Bool)

(assert (=> b!4899946 (=> (not res!2093029) (not e!3062909))))

(assert (=> b!4899946 (= res!2093029 (<= (- 1) (- (height!1962 (left!41002 (left!41002 (c!832544 input!1236)))) (height!1962 (right!41332 (left!41002 (c!832544 input!1236)))))))))

(declare-fun d!1574866 () Bool)

(declare-fun res!2093033 () Bool)

(assert (=> d!1574866 (=> res!2093033 e!3062908)))

(assert (=> d!1574866 (= res!2093033 (not (is-Node!14749 (left!41002 (c!832544 input!1236)))))))

(assert (=> d!1574866 (= (isBalanced!4019 (left!41002 (c!832544 input!1236))) e!3062908)))

(declare-fun b!4899947 () Bool)

(declare-fun res!2093032 () Bool)

(assert (=> b!4899947 (=> (not res!2093032) (not e!3062909))))

(assert (=> b!4899947 (= res!2093032 (isBalanced!4019 (right!41332 (left!41002 (c!832544 input!1236)))))))

(declare-fun b!4899948 () Bool)

(assert (=> b!4899948 (= e!3062909 (not (isEmpty!30311 (right!41332 (left!41002 (c!832544 input!1236))))))))

(declare-fun b!4899949 () Bool)

(declare-fun res!2093031 () Bool)

(assert (=> b!4899949 (=> (not res!2093031) (not e!3062909))))

(assert (=> b!4899949 (= res!2093031 (isBalanced!4019 (left!41002 (left!41002 (c!832544 input!1236)))))))

(declare-fun b!4899950 () Bool)

(declare-fun res!2093034 () Bool)

(assert (=> b!4899950 (=> (not res!2093034) (not e!3062909))))

(assert (=> b!4899950 (= res!2093034 (not (isEmpty!30311 (left!41002 (left!41002 (c!832544 input!1236))))))))

(assert (= (and d!1574866 (not res!2093033)) b!4899946))

(assert (= (and b!4899946 res!2093029) b!4899945))

(assert (= (and b!4899945 res!2093030) b!4899949))

(assert (= (and b!4899949 res!2093031) b!4899947))

(assert (= (and b!4899947 res!2093032) b!4899950))

(assert (= (and b!4899950 res!2093034) b!4899948))

(declare-fun m!5908236 () Bool)

(assert (=> b!4899949 m!5908236))

(declare-fun m!5908238 () Bool)

(assert (=> b!4899947 m!5908238))

(assert (=> b!4899946 m!5907566))

(assert (=> b!4899946 m!5907568))

(declare-fun m!5908240 () Bool)

(assert (=> b!4899948 m!5908240))

(declare-fun m!5908242 () Bool)

(assert (=> b!4899950 m!5908242))

(assert (=> b!4899945 m!5907566))

(assert (=> b!4899945 m!5907568))

(assert (=> b!4898931 d!1574866))

(declare-fun d!1574868 () Bool)

(assert (=> d!1574868 (= (isEmpty!30303 lt!2008710) (not (is-Some!14038 lt!2008710)))))

(assert (=> d!1574096 d!1574868))

(declare-fun d!1574870 () Bool)

(assert (=> d!1574870 (= (isEmpty!30306 (_1!33559 lt!2008708)) (is-Nil!56428 (_1!33559 lt!2008708)))))

(assert (=> d!1574096 d!1574870))

(declare-fun d!1574872 () Bool)

(declare-fun lt!2009431 () tuple2!60512)

(assert (=> d!1574872 (= (++!12250 (_1!33559 lt!2009431) (_2!33559 lt!2009431)) lt!2008472)))

(assert (=> d!1574872 (= lt!2009431 (findLongestMatchInner!1760 (regex!8181 (h!62878 rulesArg!165)) Nil!56428 0 lt!2008472 lt!2008472 (sizeTr!343 lt!2008472 0)))))

(declare-fun lt!2009434 () Unit!146503)

(declare-fun lt!2009433 () Unit!146503)

(assert (=> d!1574872 (= lt!2009434 lt!2009433)))

(declare-fun lt!2009429 () List!56552)

(declare-fun lt!2009428 () Int)

(assert (=> d!1574872 (= (sizeTr!343 lt!2009429 lt!2009428) (+ (size!37169 lt!2009429) lt!2009428))))

(assert (=> d!1574872 (= lt!2009433 (lemmaSizeTrEqualsSize!342 lt!2009429 lt!2009428))))

(assert (=> d!1574872 (= lt!2009428 0)))

(assert (=> d!1574872 (= lt!2009429 Nil!56428)))

(declare-fun lt!2009432 () Unit!146503)

(declare-fun lt!2009427 () Unit!146503)

(assert (=> d!1574872 (= lt!2009432 lt!2009427)))

(declare-fun lt!2009430 () Int)

(assert (=> d!1574872 (= (sizeTr!343 lt!2008472 lt!2009430) (+ (size!37169 lt!2008472) lt!2009430))))

(assert (=> d!1574872 (= lt!2009427 (lemmaSizeTrEqualsSize!342 lt!2008472 lt!2009430))))

(assert (=> d!1574872 (= lt!2009430 0)))

(assert (=> d!1574872 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574872 (= (findLongestMatch!1654 (regex!8181 (h!62878 rulesArg!165)) lt!2008472) lt!2009431)))

(declare-fun bs!1176679 () Bool)

(assert (= bs!1176679 d!1574872))

(declare-fun m!5908244 () Bool)

(assert (=> bs!1176679 m!5908244))

(declare-fun m!5908246 () Bool)

(assert (=> bs!1176679 m!5908246))

(declare-fun m!5908248 () Bool)

(assert (=> bs!1176679 m!5908248))

(assert (=> bs!1176679 m!5908246))

(declare-fun m!5908250 () Bool)

(assert (=> bs!1176679 m!5908250))

(assert (=> bs!1176679 m!5905630))

(declare-fun m!5908252 () Bool)

(assert (=> bs!1176679 m!5908252))

(assert (=> bs!1176679 m!5905982))

(declare-fun m!5908254 () Bool)

(assert (=> bs!1176679 m!5908254))

(declare-fun m!5908256 () Bool)

(assert (=> bs!1176679 m!5908256))

(declare-fun m!5908258 () Bool)

(assert (=> bs!1176679 m!5908258))

(assert (=> d!1574096 d!1574872))

(assert (=> d!1574096 d!1574098))

(declare-fun d!1574874 () Bool)

(declare-fun c!832874 () Bool)

(assert (=> d!1574874 (= c!832874 (is-IntegerValue!25473 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun e!3062912 () Bool)

(assert (=> d!1574874 (= (inv!21 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))) e!3062912)))

(declare-fun b!4899951 () Bool)

(declare-fun e!3062910 () Bool)

(assert (=> b!4899951 (= e!3062910 (inv!15 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4899952 () Bool)

(declare-fun e!3062911 () Bool)

(assert (=> b!4899952 (= e!3062911 (inv!17 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4899953 () Bool)

(assert (=> b!4899953 (= e!3062912 (inv!16 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4899954 () Bool)

(assert (=> b!4899954 (= e!3062912 e!3062911)))

(declare-fun c!832873 () Bool)

(assert (=> b!4899954 (= c!832873 (is-IntegerValue!25474 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523)))))))))

(declare-fun b!4899955 () Bool)

(declare-fun res!2093035 () Bool)

(assert (=> b!4899955 (=> res!2093035 e!3062910)))

(assert (=> b!4899955 (= res!2093035 (not (is-IntegerValue!25475 (dynLambda!22694 (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (seqFromList!5943 (originalCharacters!8494 (_1!33556 (get!19496 lt!2008523))))))))))

(assert (=> b!4899955 (= e!3062911 e!3062910)))

(assert (= (and d!1574874 c!832874) b!4899953))

(assert (= (and d!1574874 (not c!832874)) b!4899954))

(assert (= (and b!4899954 c!832873) b!4899952))

(assert (= (and b!4899954 (not c!832873)) b!4899955))

(assert (= (and b!4899955 (not res!2093035)) b!4899951))

(declare-fun m!5908260 () Bool)

(assert (=> b!4899951 m!5908260))

(declare-fun m!5908262 () Bool)

(assert (=> b!4899952 m!5908262))

(declare-fun m!5908264 () Bool)

(assert (=> b!4899953 m!5908264))

(assert (=> tb!259463 d!1574874))

(declare-fun d!1574876 () Bool)

(declare-fun e!3062913 () Bool)

(assert (=> d!1574876 e!3062913))

(declare-fun res!2093036 () Bool)

(assert (=> d!1574876 (=> (not res!2093036) (not e!3062913))))

(declare-fun lt!2009435 () List!56552)

(assert (=> d!1574876 (= res!2093036 (= (content!10031 lt!2009435) (set.union (content!10031 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468))))) (content!10031 (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468))))))))))

(declare-fun e!3062914 () List!56552)

(assert (=> d!1574876 (= lt!2009435 e!3062914)))

(declare-fun c!832875 () Bool)

(assert (=> d!1574876 (= c!832875 (is-Nil!56428 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468))))))))

(assert (=> d!1574876 (= (++!12250 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468)))) (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468))))) lt!2009435)))

(declare-fun b!4899959 () Bool)

(assert (=> b!4899959 (= e!3062913 (or (not (= (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468)))) Nil!56428)) (= lt!2009435 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468)))))))))

(declare-fun b!4899956 () Bool)

(assert (=> b!4899956 (= e!3062914 (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468)))))))

(declare-fun b!4899958 () Bool)

(declare-fun res!2093037 () Bool)

(assert (=> b!4899958 (=> (not res!2093037) (not e!3062913))))

(assert (=> b!4899958 (= res!2093037 (= (size!37169 lt!2009435) (+ (size!37169 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468))))) (size!37169 (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468))))))))))

(declare-fun b!4899957 () Bool)

(assert (=> b!4899957 (= e!3062914 (Cons!56428 (h!62876 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468))))) (++!12250 (t!366238 (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468))))) (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468)))))))))

(assert (= (and d!1574876 c!832875) b!4899956))

(assert (= (and d!1574876 (not c!832875)) b!4899957))

(assert (= (and d!1574876 res!2093036) b!4899958))

(assert (= (and b!4899958 res!2093037) b!4899959))

(declare-fun m!5908266 () Bool)

(assert (=> d!1574876 m!5908266))

(assert (=> d!1574876 m!5906250))

(declare-fun m!5908268 () Bool)

(assert (=> d!1574876 m!5908268))

(assert (=> d!1574876 m!5906252))

(declare-fun m!5908270 () Bool)

(assert (=> d!1574876 m!5908270))

(declare-fun m!5908272 () Bool)

(assert (=> b!4899958 m!5908272))

(assert (=> b!4899958 m!5906250))

(declare-fun m!5908274 () Bool)

(assert (=> b!4899958 m!5908274))

(assert (=> b!4899958 m!5906252))

(declare-fun m!5908276 () Bool)

(assert (=> b!4899958 m!5908276))

(assert (=> b!4899957 m!5906252))

(declare-fun m!5908278 () Bool)

(assert (=> b!4899957 m!5908278))

(assert (=> b!4898840 d!1574876))

(declare-fun b!4899960 () Bool)

(declare-fun e!3062915 () List!56552)

(assert (=> b!4899960 (= e!3062915 Nil!56428)))

(declare-fun d!1574878 () Bool)

(declare-fun c!832876 () Bool)

(assert (=> d!1574878 (= c!832876 (is-Empty!14749 (left!41002 (c!832544 (_2!33555 lt!2008468)))))))

(assert (=> d!1574878 (= (list!17747 (left!41002 (c!832544 (_2!33555 lt!2008468)))) e!3062915)))

(declare-fun b!4899961 () Bool)

(declare-fun e!3062916 () List!56552)

(assert (=> b!4899961 (= e!3062915 e!3062916)))

(declare-fun c!832877 () Bool)

(assert (=> b!4899961 (= c!832877 (is-Leaf!24557 (left!41002 (c!832544 (_2!33555 lt!2008468)))))))

(declare-fun b!4899963 () Bool)

(assert (=> b!4899963 (= e!3062916 (++!12250 (list!17747 (left!41002 (left!41002 (c!832544 (_2!33555 lt!2008468))))) (list!17747 (right!41332 (left!41002 (c!832544 (_2!33555 lt!2008468)))))))))

(declare-fun b!4899962 () Bool)

(assert (=> b!4899962 (= e!3062916 (list!17749 (xs!18065 (left!41002 (c!832544 (_2!33555 lt!2008468))))))))

(assert (= (and d!1574878 c!832876) b!4899960))

(assert (= (and d!1574878 (not c!832876)) b!4899961))

(assert (= (and b!4899961 c!832877) b!4899962))

(assert (= (and b!4899961 (not c!832877)) b!4899963))

(declare-fun m!5908280 () Bool)

(assert (=> b!4899963 m!5908280))

(declare-fun m!5908282 () Bool)

(assert (=> b!4899963 m!5908282))

(assert (=> b!4899963 m!5908280))

(assert (=> b!4899963 m!5908282))

(declare-fun m!5908284 () Bool)

(assert (=> b!4899963 m!5908284))

(declare-fun m!5908286 () Bool)

(assert (=> b!4899962 m!5908286))

(assert (=> b!4898840 d!1574878))

(declare-fun b!4899964 () Bool)

(declare-fun e!3062917 () List!56552)

(assert (=> b!4899964 (= e!3062917 Nil!56428)))

(declare-fun d!1574880 () Bool)

(declare-fun c!832878 () Bool)

(assert (=> d!1574880 (= c!832878 (is-Empty!14749 (right!41332 (c!832544 (_2!33555 lt!2008468)))))))

(assert (=> d!1574880 (= (list!17747 (right!41332 (c!832544 (_2!33555 lt!2008468)))) e!3062917)))

(declare-fun b!4899965 () Bool)

(declare-fun e!3062918 () List!56552)

(assert (=> b!4899965 (= e!3062917 e!3062918)))

(declare-fun c!832879 () Bool)

(assert (=> b!4899965 (= c!832879 (is-Leaf!24557 (right!41332 (c!832544 (_2!33555 lt!2008468)))))))

(declare-fun b!4899967 () Bool)

(assert (=> b!4899967 (= e!3062918 (++!12250 (list!17747 (left!41002 (right!41332 (c!832544 (_2!33555 lt!2008468))))) (list!17747 (right!41332 (right!41332 (c!832544 (_2!33555 lt!2008468)))))))))

(declare-fun b!4899966 () Bool)

(assert (=> b!4899966 (= e!3062918 (list!17749 (xs!18065 (right!41332 (c!832544 (_2!33555 lt!2008468))))))))

(assert (= (and d!1574880 c!832878) b!4899964))

(assert (= (and d!1574880 (not c!832878)) b!4899965))

(assert (= (and b!4899965 c!832879) b!4899966))

(assert (= (and b!4899965 (not c!832879)) b!4899967))

(declare-fun m!5908288 () Bool)

(assert (=> b!4899967 m!5908288))

(declare-fun m!5908290 () Bool)

(assert (=> b!4899967 m!5908290))

(assert (=> b!4899967 m!5908288))

(assert (=> b!4899967 m!5908290))

(declare-fun m!5908292 () Bool)

(assert (=> b!4899967 m!5908292))

(declare-fun m!5908294 () Bool)

(assert (=> b!4899966 m!5908294))

(assert (=> b!4898840 d!1574880))

(declare-fun d!1574882 () Bool)

(declare-fun e!3062919 () Bool)

(assert (=> d!1574882 e!3062919))

(declare-fun res!2093038 () Bool)

(assert (=> d!1574882 (=> (not res!2093038) (not e!3062919))))

(declare-fun lt!2009436 () List!56552)

(assert (=> d!1574882 (= res!2093038 (= (content!10031 lt!2009436) (set.union (content!10031 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))) (content!10031 (_2!33556 (get!19496 lt!2008710))))))))

(declare-fun e!3062920 () List!56552)

(assert (=> d!1574882 (= lt!2009436 e!3062920)))

(declare-fun c!832880 () Bool)

(assert (=> d!1574882 (= c!832880 (is-Nil!56428 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))))))

(assert (=> d!1574882 (= (++!12250 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710)))) (_2!33556 (get!19496 lt!2008710))) lt!2009436)))

(declare-fun b!4899971 () Bool)

(assert (=> b!4899971 (= e!3062919 (or (not (= (_2!33556 (get!19496 lt!2008710)) Nil!56428)) (= lt!2009436 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710)))))))))

(declare-fun b!4899968 () Bool)

(assert (=> b!4899968 (= e!3062920 (_2!33556 (get!19496 lt!2008710)))))

(declare-fun b!4899970 () Bool)

(declare-fun res!2093039 () Bool)

(assert (=> b!4899970 (=> (not res!2093039) (not e!3062919))))

(assert (=> b!4899970 (= res!2093039 (= (size!37169 lt!2009436) (+ (size!37169 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))) (size!37169 (_2!33556 (get!19496 lt!2008710))))))))

(declare-fun b!4899969 () Bool)

(assert (=> b!4899969 (= e!3062920 (Cons!56428 (h!62876 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))) (++!12250 (t!366238 (list!17745 (charsOf!5381 (_1!33556 (get!19496 lt!2008710))))) (_2!33556 (get!19496 lt!2008710)))))))

(assert (= (and d!1574882 c!832880) b!4899968))

(assert (= (and d!1574882 (not c!832880)) b!4899969))

(assert (= (and d!1574882 res!2093038) b!4899970))

(assert (= (and b!4899970 res!2093039) b!4899971))

(declare-fun m!5908296 () Bool)

(assert (=> d!1574882 m!5908296))

(assert (=> d!1574882 m!5905952))

(declare-fun m!5908298 () Bool)

(assert (=> d!1574882 m!5908298))

(declare-fun m!5908300 () Bool)

(assert (=> d!1574882 m!5908300))

(declare-fun m!5908302 () Bool)

(assert (=> b!4899970 m!5908302))

(assert (=> b!4899970 m!5905952))

(declare-fun m!5908304 () Bool)

(assert (=> b!4899970 m!5908304))

(assert (=> b!4899970 m!5905948))

(declare-fun m!5908306 () Bool)

(assert (=> b!4899969 m!5908306))

(assert (=> b!4898664 d!1574882))

(assert (=> b!4898664 d!1574786))

(assert (=> b!4898664 d!1574788))

(assert (=> b!4898664 d!1574662))

(assert (=> bm!339851 d!1574124))

(assert (=> bm!339847 d!1574484))

(declare-fun b!4899972 () Bool)

(declare-fun c!832883 () Bool)

(assert (=> b!4899972 (= c!832883 (nullable!4562 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))))

(declare-fun e!3062924 () Regex!13256)

(declare-fun e!3062922 () Regex!13256)

(assert (=> b!4899972 (= e!3062924 e!3062922)))

(declare-fun b!4899973 () Bool)

(declare-fun e!3062925 () Regex!13256)

(assert (=> b!4899973 (= e!3062925 (ite (= call!339849 (c!832545 (regex!8181 (h!62878 rulesArg!165)))) EmptyExpr!13256 EmptyLang!13256))))

(declare-fun call!339967 () Regex!13256)

(declare-fun call!339966 () Regex!13256)

(declare-fun b!4899974 () Bool)

(assert (=> b!4899974 (= e!3062922 (Union!13256 (Concat!21748 call!339967 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))) call!339966))))

(declare-fun b!4899975 () Bool)

(declare-fun e!3062923 () Regex!13256)

(assert (=> b!4899975 (= e!3062923 e!3062924)))

(declare-fun c!832881 () Bool)

(assert (=> b!4899975 (= c!832881 (is-Star!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899976 () Bool)

(declare-fun call!339965 () Regex!13256)

(assert (=> b!4899976 (= e!3062924 (Concat!21748 call!339965 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun b!4899977 () Bool)

(assert (=> b!4899977 (= e!3062922 (Union!13256 (Concat!21748 call!339967 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))) EmptyLang!13256))))

(declare-fun bm!339960 () Bool)

(assert (=> bm!339960 (= call!339967 call!339965)))

(declare-fun b!4899978 () Bool)

(declare-fun call!339968 () Regex!13256)

(assert (=> b!4899978 (= e!3062923 (Union!13256 call!339968 call!339966))))

(declare-fun d!1574884 () Bool)

(declare-fun lt!2009437 () Regex!13256)

(assert (=> d!1574884 (validRegex!5889 lt!2009437)))

(declare-fun e!3062921 () Regex!13256)

(assert (=> d!1574884 (= lt!2009437 e!3062921)))

(declare-fun c!832882 () Bool)

(assert (=> d!1574884 (= c!832882 (or (is-EmptyExpr!13256 (regex!8181 (h!62878 rulesArg!165))) (is-EmptyLang!13256 (regex!8181 (h!62878 rulesArg!165)))))))

(assert (=> d!1574884 (validRegex!5889 (regex!8181 (h!62878 rulesArg!165)))))

(assert (=> d!1574884 (= (derivativeStep!3884 (regex!8181 (h!62878 rulesArg!165)) call!339849) lt!2009437)))

(declare-fun b!4899979 () Bool)

(declare-fun c!832884 () Bool)

(assert (=> b!4899979 (= c!832884 (is-Union!13256 (regex!8181 (h!62878 rulesArg!165))))))

(assert (=> b!4899979 (= e!3062925 e!3062923)))

(declare-fun b!4899980 () Bool)

(assert (=> b!4899980 (= e!3062921 e!3062925)))

(declare-fun c!832885 () Bool)

(assert (=> b!4899980 (= c!832885 (is-ElementMatch!13256 (regex!8181 (h!62878 rulesArg!165))))))

(declare-fun bm!339961 () Bool)

(assert (=> bm!339961 (= call!339966 (derivativeStep!3884 (ite c!832884 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165))) (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))) call!339849))))

(declare-fun b!4899981 () Bool)

(assert (=> b!4899981 (= e!3062921 EmptyLang!13256)))

(declare-fun bm!339962 () Bool)

(assert (=> bm!339962 (= call!339968 (derivativeStep!3884 (ite c!832884 (regOne!27025 (regex!8181 (h!62878 rulesArg!165))) (ite c!832881 (reg!13585 (regex!8181 (h!62878 rulesArg!165))) (regOne!27024 (regex!8181 (h!62878 rulesArg!165))))) call!339849))))

(declare-fun bm!339963 () Bool)

(assert (=> bm!339963 (= call!339965 call!339968)))

(assert (= (and d!1574884 c!832882) b!4899981))

(assert (= (and d!1574884 (not c!832882)) b!4899980))

(assert (= (and b!4899980 c!832885) b!4899973))

(assert (= (and b!4899980 (not c!832885)) b!4899979))

(assert (= (and b!4899979 c!832884) b!4899978))

(assert (= (and b!4899979 (not c!832884)) b!4899975))

(assert (= (and b!4899975 c!832881) b!4899976))

(assert (= (and b!4899975 (not c!832881)) b!4899972))

(assert (= (and b!4899972 c!832883) b!4899974))

(assert (= (and b!4899972 (not c!832883)) b!4899977))

(assert (= (or b!4899974 b!4899977) bm!339960))

(assert (= (or b!4899976 bm!339960) bm!339963))

(assert (= (or b!4899978 bm!339963) bm!339962))

(assert (= (or b!4899978 b!4899974) bm!339961))

(assert (=> b!4899972 m!5907918))

(declare-fun m!5908308 () Bool)

(assert (=> d!1574884 m!5908308))

(assert (=> d!1574884 m!5905982))

(declare-fun m!5908310 () Bool)

(assert (=> bm!339961 m!5908310))

(declare-fun m!5908312 () Bool)

(assert (=> bm!339962 m!5908312))

(assert (=> bm!339845 d!1574884))

(declare-fun d!1574886 () Bool)

(declare-fun lt!2009438 () Bool)

(assert (=> d!1574886 (= lt!2009438 (set.member (rule!11389 (_1!33556 (get!19496 lt!2008851))) (content!10032 (t!366240 rulesArg!165))))))

(declare-fun e!3062926 () Bool)

(assert (=> d!1574886 (= lt!2009438 e!3062926)))

(declare-fun res!2093040 () Bool)

(assert (=> d!1574886 (=> (not res!2093040) (not e!3062926))))

(assert (=> d!1574886 (= res!2093040 (is-Cons!56430 (t!366240 rulesArg!165)))))

(assert (=> d!1574886 (= (contains!19444 (t!366240 rulesArg!165) (rule!11389 (_1!33556 (get!19496 lt!2008851)))) lt!2009438)))

(declare-fun b!4899982 () Bool)

(declare-fun e!3062927 () Bool)

(assert (=> b!4899982 (= e!3062926 e!3062927)))

(declare-fun res!2093041 () Bool)

(assert (=> b!4899982 (=> res!2093041 e!3062927)))

(assert (=> b!4899982 (= res!2093041 (= (h!62878 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2008851)))))))

(declare-fun b!4899983 () Bool)

(assert (=> b!4899983 (= e!3062927 (contains!19444 (t!366240 (t!366240 rulesArg!165)) (rule!11389 (_1!33556 (get!19496 lt!2008851)))))))

(assert (= (and d!1574886 res!2093040) b!4899982))

(assert (= (and b!4899982 (not res!2093041)) b!4899983))

(assert (=> d!1574886 m!5907780))

(declare-fun m!5908314 () Bool)

(assert (=> d!1574886 m!5908314))

(declare-fun m!5908316 () Bool)

(assert (=> b!4899983 m!5908316))

(assert (=> b!4898830 d!1574886))

(assert (=> b!4898830 d!1574428))

(assert (=> b!4898954 d!1574570))

(declare-fun d!1574888 () Bool)

(declare-fun res!2093042 () Bool)

(declare-fun e!3062928 () Bool)

(assert (=> d!1574888 (=> (not res!2093042) (not e!3062928))))

(assert (=> d!1574888 (= res!2093042 (<= (size!37169 (list!17749 (xs!18065 (left!41002 (c!832544 input!1236))))) 512))))

(assert (=> d!1574888 (= (inv!72741 (left!41002 (c!832544 input!1236))) e!3062928)))

(declare-fun b!4899984 () Bool)

(declare-fun res!2093043 () Bool)

(assert (=> b!4899984 (=> (not res!2093043) (not e!3062928))))

(assert (=> b!4899984 (= res!2093043 (= (csize!29729 (left!41002 (c!832544 input!1236))) (size!37169 (list!17749 (xs!18065 (left!41002 (c!832544 input!1236)))))))))

(declare-fun b!4899985 () Bool)

(assert (=> b!4899985 (= e!3062928 (and (> (csize!29729 (left!41002 (c!832544 input!1236))) 0) (<= (csize!29729 (left!41002 (c!832544 input!1236))) 512)))))

(assert (= (and d!1574888 res!2093042) b!4899984))

(assert (= (and b!4899984 res!2093043) b!4899985))

(assert (=> d!1574888 m!5907514))

(assert (=> d!1574888 m!5907514))

(declare-fun m!5908318 () Bool)

(assert (=> d!1574888 m!5908318))

(assert (=> b!4899984 m!5907514))

(assert (=> b!4899984 m!5907514))

(assert (=> b!4899984 m!5908318))

(assert (=> b!4898824 d!1574888))

(declare-fun d!1574890 () Bool)

(assert (=> d!1574890 (= (isEmpty!30303 lt!2008851) (not (is-Some!14038 lt!2008851)))))

(assert (=> d!1574180 d!1574890))

(assert (=> d!1574180 d!1574016))

(assert (=> d!1574180 d!1574018))

(assert (=> d!1574180 d!1574202))

(declare-fun tp!1378411 () Bool)

(declare-fun tp!1378412 () Bool)

(declare-fun b!4899986 () Bool)

(declare-fun e!3062930 () Bool)

(assert (=> b!4899986 (= e!3062930 (and (inv!72735 (left!41002 (left!41002 (right!41332 (c!832544 input!1236))))) tp!1378411 (inv!72735 (right!41332 (left!41002 (right!41332 (c!832544 input!1236))))) tp!1378412))))

(declare-fun b!4899988 () Bool)

(declare-fun e!3062929 () Bool)

(declare-fun tp!1378413 () Bool)

(assert (=> b!4899988 (= e!3062929 tp!1378413)))

(declare-fun b!4899987 () Bool)

(assert (=> b!4899987 (= e!3062930 (and (inv!72742 (xs!18065 (left!41002 (right!41332 (c!832544 input!1236))))) e!3062929))))

(assert (=> b!4898984 (= tp!1378330 (and (inv!72735 (left!41002 (right!41332 (c!832544 input!1236)))) e!3062930))))

(assert (= (and b!4898984 (is-Node!14749 (left!41002 (right!41332 (c!832544 input!1236))))) b!4899986))

(assert (= b!4899987 b!4899988))

(assert (= (and b!4898984 (is-Leaf!24557 (left!41002 (right!41332 (c!832544 input!1236))))) b!4899987))

(declare-fun m!5908320 () Bool)

(assert (=> b!4899986 m!5908320))

(declare-fun m!5908322 () Bool)

(assert (=> b!4899986 m!5908322))

(declare-fun m!5908324 () Bool)

(assert (=> b!4899987 m!5908324))

(assert (=> b!4898984 m!5906406))

(declare-fun e!3062932 () Bool)

(declare-fun tp!1378414 () Bool)

(declare-fun tp!1378415 () Bool)

(declare-fun b!4899989 () Bool)

(assert (=> b!4899989 (= e!3062932 (and (inv!72735 (left!41002 (right!41332 (right!41332 (c!832544 input!1236))))) tp!1378414 (inv!72735 (right!41332 (right!41332 (right!41332 (c!832544 input!1236))))) tp!1378415))))

(declare-fun b!4899991 () Bool)

(declare-fun e!3062931 () Bool)

(declare-fun tp!1378416 () Bool)

(assert (=> b!4899991 (= e!3062931 tp!1378416)))

(declare-fun b!4899990 () Bool)

(assert (=> b!4899990 (= e!3062932 (and (inv!72742 (xs!18065 (right!41332 (right!41332 (c!832544 input!1236))))) e!3062931))))

(assert (=> b!4898984 (= tp!1378331 (and (inv!72735 (right!41332 (right!41332 (c!832544 input!1236)))) e!3062932))))

(assert (= (and b!4898984 (is-Node!14749 (right!41332 (right!41332 (c!832544 input!1236))))) b!4899989))

(assert (= b!4899990 b!4899991))

(assert (= (and b!4898984 (is-Leaf!24557 (right!41332 (right!41332 (c!832544 input!1236))))) b!4899990))

(declare-fun m!5908326 () Bool)

(assert (=> b!4899989 m!5908326))

(declare-fun m!5908328 () Bool)

(assert (=> b!4899989 m!5908328))

(declare-fun m!5908330 () Bool)

(assert (=> b!4899990 m!5908330))

(assert (=> b!4898984 m!5906408))

(declare-fun b!4899992 () Bool)

(declare-fun e!3062933 () Bool)

(assert (=> b!4899992 (= e!3062933 tp_is_empty!35793)))

(declare-fun b!4899993 () Bool)

(declare-fun tp!1378420 () Bool)

(declare-fun tp!1378418 () Bool)

(assert (=> b!4899993 (= e!3062933 (and tp!1378420 tp!1378418))))

(declare-fun b!4899995 () Bool)

(declare-fun tp!1378421 () Bool)

(declare-fun tp!1378419 () Bool)

(assert (=> b!4899995 (= e!3062933 (and tp!1378421 tp!1378419))))

(declare-fun b!4899994 () Bool)

(declare-fun tp!1378417 () Bool)

(assert (=> b!4899994 (= e!3062933 tp!1378417)))

(assert (=> b!4898990 (= tp!1378337 e!3062933)))

(assert (= (and b!4898990 (is-ElementMatch!13256 (regOne!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899992))

(assert (= (and b!4898990 (is-Concat!21748 (regOne!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899993))

(assert (= (and b!4898990 (is-Star!13256 (regOne!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899994))

(assert (= (and b!4898990 (is-Union!13256 (regOne!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899995))

(declare-fun b!4899996 () Bool)

(declare-fun e!3062934 () Bool)

(assert (=> b!4899996 (= e!3062934 tp_is_empty!35793)))

(declare-fun b!4899997 () Bool)

(declare-fun tp!1378425 () Bool)

(declare-fun tp!1378423 () Bool)

(assert (=> b!4899997 (= e!3062934 (and tp!1378425 tp!1378423))))

(declare-fun b!4899999 () Bool)

(declare-fun tp!1378426 () Bool)

(declare-fun tp!1378424 () Bool)

(assert (=> b!4899999 (= e!3062934 (and tp!1378426 tp!1378424))))

(declare-fun b!4899998 () Bool)

(declare-fun tp!1378422 () Bool)

(assert (=> b!4899998 (= e!3062934 tp!1378422)))

(assert (=> b!4898990 (= tp!1378335 e!3062934)))

(assert (= (and b!4898990 (is-ElementMatch!13256 (regTwo!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899996))

(assert (= (and b!4898990 (is-Concat!21748 (regTwo!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899997))

(assert (= (and b!4898990 (is-Star!13256 (regTwo!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899998))

(assert (= (and b!4898990 (is-Union!13256 (regTwo!27025 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4899999))

(declare-fun b!4900000 () Bool)

(declare-fun e!3062935 () Bool)

(assert (=> b!4900000 (= e!3062935 tp_is_empty!35793)))

(declare-fun b!4900001 () Bool)

(declare-fun tp!1378430 () Bool)

(declare-fun tp!1378428 () Bool)

(assert (=> b!4900001 (= e!3062935 (and tp!1378430 tp!1378428))))

(declare-fun b!4900003 () Bool)

(declare-fun tp!1378431 () Bool)

(declare-fun tp!1378429 () Bool)

(assert (=> b!4900003 (= e!3062935 (and tp!1378431 tp!1378429))))

(declare-fun b!4900002 () Bool)

(declare-fun tp!1378427 () Bool)

(assert (=> b!4900002 (= e!3062935 tp!1378427)))

(assert (=> b!4898998 (= tp!1378347 e!3062935)))

(assert (= (and b!4898998 (is-ElementMatch!13256 (regOne!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900000))

(assert (= (and b!4898998 (is-Concat!21748 (regOne!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900001))

(assert (= (and b!4898998 (is-Star!13256 (regOne!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900002))

(assert (= (and b!4898998 (is-Union!13256 (regOne!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900003))

(declare-fun b!4900004 () Bool)

(declare-fun e!3062936 () Bool)

(assert (=> b!4900004 (= e!3062936 tp_is_empty!35793)))

(declare-fun b!4900005 () Bool)

(declare-fun tp!1378435 () Bool)

(declare-fun tp!1378433 () Bool)

(assert (=> b!4900005 (= e!3062936 (and tp!1378435 tp!1378433))))

(declare-fun b!4900007 () Bool)

(declare-fun tp!1378436 () Bool)

(declare-fun tp!1378434 () Bool)

(assert (=> b!4900007 (= e!3062936 (and tp!1378436 tp!1378434))))

(declare-fun b!4900006 () Bool)

(declare-fun tp!1378432 () Bool)

(assert (=> b!4900006 (= e!3062936 tp!1378432)))

(assert (=> b!4898998 (= tp!1378345 e!3062936)))

(assert (= (and b!4898998 (is-ElementMatch!13256 (regTwo!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900004))

(assert (= (and b!4898998 (is-Concat!21748 (regTwo!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900005))

(assert (= (and b!4898998 (is-Star!13256 (regTwo!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900006))

(assert (= (and b!4898998 (is-Union!13256 (regTwo!27025 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900007))

(declare-fun b!4900008 () Bool)

(declare-fun e!3062937 () Bool)

(assert (=> b!4900008 (= e!3062937 tp_is_empty!35793)))

(declare-fun b!4900009 () Bool)

(declare-fun tp!1378440 () Bool)

(declare-fun tp!1378438 () Bool)

(assert (=> b!4900009 (= e!3062937 (and tp!1378440 tp!1378438))))

(declare-fun b!4900011 () Bool)

(declare-fun tp!1378441 () Bool)

(declare-fun tp!1378439 () Bool)

(assert (=> b!4900011 (= e!3062937 (and tp!1378441 tp!1378439))))

(declare-fun b!4900010 () Bool)

(declare-fun tp!1378437 () Bool)

(assert (=> b!4900010 (= e!3062937 tp!1378437)))

(assert (=> b!4898989 (= tp!1378333 e!3062937)))

(assert (= (and b!4898989 (is-ElementMatch!13256 (reg!13585 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900008))

(assert (= (and b!4898989 (is-Concat!21748 (reg!13585 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900009))

(assert (= (and b!4898989 (is-Star!13256 (reg!13585 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900010))

(assert (= (and b!4898989 (is-Union!13256 (reg!13585 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900011))

(declare-fun b!4900012 () Bool)

(declare-fun e!3062938 () Bool)

(assert (=> b!4900012 (= e!3062938 tp_is_empty!35793)))

(declare-fun b!4900013 () Bool)

(declare-fun tp!1378445 () Bool)

(declare-fun tp!1378443 () Bool)

(assert (=> b!4900013 (= e!3062938 (and tp!1378445 tp!1378443))))

(declare-fun b!4900015 () Bool)

(declare-fun tp!1378446 () Bool)

(declare-fun tp!1378444 () Bool)

(assert (=> b!4900015 (= e!3062938 (and tp!1378446 tp!1378444))))

(declare-fun b!4900014 () Bool)

(declare-fun tp!1378442 () Bool)

(assert (=> b!4900014 (= e!3062938 tp!1378442)))

(assert (=> b!4898973 (= tp!1378317 e!3062938)))

(assert (= (and b!4898973 (is-ElementMatch!13256 (regOne!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900012))

(assert (= (and b!4898973 (is-Concat!21748 (regOne!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900013))

(assert (= (and b!4898973 (is-Star!13256 (regOne!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900014))

(assert (= (and b!4898973 (is-Union!13256 (regOne!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900015))

(declare-fun b!4900016 () Bool)

(declare-fun e!3062939 () Bool)

(assert (=> b!4900016 (= e!3062939 tp_is_empty!35793)))

(declare-fun b!4900017 () Bool)

(declare-fun tp!1378450 () Bool)

(declare-fun tp!1378448 () Bool)

(assert (=> b!4900017 (= e!3062939 (and tp!1378450 tp!1378448))))

(declare-fun b!4900019 () Bool)

(declare-fun tp!1378451 () Bool)

(declare-fun tp!1378449 () Bool)

(assert (=> b!4900019 (= e!3062939 (and tp!1378451 tp!1378449))))

(declare-fun b!4900018 () Bool)

(declare-fun tp!1378447 () Bool)

(assert (=> b!4900018 (= e!3062939 tp!1378447)))

(assert (=> b!4898973 (= tp!1378315 e!3062939)))

(assert (= (and b!4898973 (is-ElementMatch!13256 (regTwo!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900016))

(assert (= (and b!4898973 (is-Concat!21748 (regTwo!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900017))

(assert (= (and b!4898973 (is-Star!13256 (regTwo!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900018))

(assert (= (and b!4898973 (is-Union!13256 (regTwo!27025 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900019))

(declare-fun b!4900020 () Bool)

(declare-fun e!3062940 () Bool)

(assert (=> b!4900020 (= e!3062940 tp_is_empty!35793)))

(declare-fun b!4900021 () Bool)

(declare-fun tp!1378455 () Bool)

(declare-fun tp!1378453 () Bool)

(assert (=> b!4900021 (= e!3062940 (and tp!1378455 tp!1378453))))

(declare-fun b!4900023 () Bool)

(declare-fun tp!1378456 () Bool)

(declare-fun tp!1378454 () Bool)

(assert (=> b!4900023 (= e!3062940 (and tp!1378456 tp!1378454))))

(declare-fun b!4900022 () Bool)

(declare-fun tp!1378452 () Bool)

(assert (=> b!4900022 (= e!3062940 tp!1378452)))

(assert (=> b!4898992 (= tp!1378341 e!3062940)))

(assert (= (and b!4898992 (is-ElementMatch!13256 (regOne!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900020))

(assert (= (and b!4898992 (is-Concat!21748 (regOne!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900021))

(assert (= (and b!4898992 (is-Star!13256 (regOne!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900022))

(assert (= (and b!4898992 (is-Union!13256 (regOne!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900023))

(declare-fun b!4900024 () Bool)

(declare-fun e!3062941 () Bool)

(assert (=> b!4900024 (= e!3062941 tp_is_empty!35793)))

(declare-fun b!4900025 () Bool)

(declare-fun tp!1378460 () Bool)

(declare-fun tp!1378458 () Bool)

(assert (=> b!4900025 (= e!3062941 (and tp!1378460 tp!1378458))))

(declare-fun b!4900027 () Bool)

(declare-fun tp!1378461 () Bool)

(declare-fun tp!1378459 () Bool)

(assert (=> b!4900027 (= e!3062941 (and tp!1378461 tp!1378459))))

(declare-fun b!4900026 () Bool)

(declare-fun tp!1378457 () Bool)

(assert (=> b!4900026 (= e!3062941 tp!1378457)))

(assert (=> b!4898992 (= tp!1378339 e!3062941)))

(assert (= (and b!4898992 (is-ElementMatch!13256 (regTwo!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900024))

(assert (= (and b!4898992 (is-Concat!21748 (regTwo!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900025))

(assert (= (and b!4898992 (is-Star!13256 (regTwo!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900026))

(assert (= (and b!4898992 (is-Union!13256 (regTwo!27024 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900027))

(declare-fun tp!1378462 () Bool)

(declare-fun tp!1378463 () Bool)

(declare-fun e!3062943 () Bool)

(declare-fun b!4900028 () Bool)

(assert (=> b!4900028 (= e!3062943 (and (inv!72735 (left!41002 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))) tp!1378462 (inv!72735 (right!41332 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))) tp!1378463))))

(declare-fun b!4900030 () Bool)

(declare-fun e!3062942 () Bool)

(declare-fun tp!1378464 () Bool)

(assert (=> b!4900030 (= e!3062942 tp!1378464)))

(declare-fun b!4900029 () Bool)

(assert (=> b!4900029 (= e!3062943 (and (inv!72742 (xs!18065 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))) e!3062942))))

(assert (=> b!4898999 (= tp!1378348 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))) e!3062943))))

(assert (= (and b!4898999 (is-Node!14749 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))) b!4900028))

(assert (= b!4900029 b!4900030))

(assert (= (and b!4898999 (is-Leaf!24557 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))) b!4900029))

(declare-fun m!5908332 () Bool)

(assert (=> b!4900028 m!5908332))

(declare-fun m!5908334 () Bool)

(assert (=> b!4900028 m!5908334))

(declare-fun m!5908336 () Bool)

(assert (=> b!4900029 m!5908336))

(assert (=> b!4898999 m!5906412))

(declare-fun b!4900031 () Bool)

(declare-fun e!3062944 () Bool)

(assert (=> b!4900031 (= e!3062944 tp_is_empty!35793)))

(declare-fun b!4900032 () Bool)

(declare-fun tp!1378468 () Bool)

(declare-fun tp!1378466 () Bool)

(assert (=> b!4900032 (= e!3062944 (and tp!1378468 tp!1378466))))

(declare-fun b!4900034 () Bool)

(declare-fun tp!1378469 () Bool)

(declare-fun tp!1378467 () Bool)

(assert (=> b!4900034 (= e!3062944 (and tp!1378469 tp!1378467))))

(declare-fun b!4900033 () Bool)

(declare-fun tp!1378465 () Bool)

(assert (=> b!4900033 (= e!3062944 tp!1378465)))

(assert (=> b!4898979 (= tp!1378323 e!3062944)))

(assert (= (and b!4898979 (is-ElementMatch!13256 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) b!4900031))

(assert (= (and b!4898979 (is-Concat!21748 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) b!4900032))

(assert (= (and b!4898979 (is-Star!13256 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) b!4900033))

(assert (= (and b!4898979 (is-Union!13256 (regex!8181 (h!62878 (t!366240 (t!366240 rulesArg!165)))))) b!4900034))

(declare-fun b!4900035 () Bool)

(declare-fun tp!1378471 () Bool)

(declare-fun e!3062946 () Bool)

(declare-fun tp!1378470 () Bool)

(assert (=> b!4900035 (= e!3062946 (and (inv!72735 (left!41002 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))))) tp!1378470 (inv!72735 (right!41332 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))))) tp!1378471))))

(declare-fun b!4900037 () Bool)

(declare-fun e!3062945 () Bool)

(declare-fun tp!1378472 () Bool)

(assert (=> b!4900037 (= e!3062945 tp!1378472)))

(declare-fun b!4900036 () Bool)

(assert (=> b!4900036 (= e!3062946 (and (inv!72742 (xs!18065 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))))) e!3062945))))

(assert (=> b!4898812 (= tp!1378304 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523)))))) e!3062946))))

(assert (= (and b!4898812 (is-Node!14749 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))))) b!4900035))

(assert (= b!4900036 b!4900037))

(assert (= (and b!4898812 (is-Leaf!24557 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))) (value!262310 (_1!33556 (get!19496 lt!2008523))))))) b!4900036))

(declare-fun m!5908338 () Bool)

(assert (=> b!4900035 m!5908338))

(declare-fun m!5908340 () Bool)

(assert (=> b!4900035 m!5908340))

(declare-fun m!5908342 () Bool)

(assert (=> b!4900036 m!5908342))

(assert (=> b!4898812 m!5906198))

(declare-fun b!4900038 () Bool)

(declare-fun e!3062947 () Bool)

(assert (=> b!4900038 (= e!3062947 tp_is_empty!35793)))

(declare-fun b!4900039 () Bool)

(declare-fun tp!1378476 () Bool)

(declare-fun tp!1378474 () Bool)

(assert (=> b!4900039 (= e!3062947 (and tp!1378476 tp!1378474))))

(declare-fun b!4900041 () Bool)

(declare-fun tp!1378477 () Bool)

(declare-fun tp!1378475 () Bool)

(assert (=> b!4900041 (= e!3062947 (and tp!1378477 tp!1378475))))

(declare-fun b!4900040 () Bool)

(declare-fun tp!1378473 () Bool)

(assert (=> b!4900040 (= e!3062947 tp!1378473)))

(assert (=> b!4898972 (= tp!1378313 e!3062947)))

(assert (= (and b!4898972 (is-ElementMatch!13256 (reg!13585 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900038))

(assert (= (and b!4898972 (is-Concat!21748 (reg!13585 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900039))

(assert (= (and b!4898972 (is-Star!13256 (reg!13585 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900040))

(assert (= (and b!4898972 (is-Union!13256 (reg!13585 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900041))

(declare-fun b!4900044 () Bool)

(declare-fun b_free!131671 () Bool)

(declare-fun b_next!132461 () Bool)

(assert (=> b!4900044 (= b_free!131671 (not b_next!132461))))

(declare-fun tb!259619 () Bool)

(declare-fun t!366420 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366420) tb!259619))

(declare-fun result!323278 () Bool)

(assert (= result!323278 result!323182))

(assert (=> d!1574414 t!366420))

(declare-fun t!366422 () Bool)

(declare-fun tb!259621 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366422) tb!259621))

(declare-fun result!323280 () Bool)

(assert (= result!323280 result!323104))

(assert (=> d!1574138 t!366422))

(declare-fun t!366424 () Bool)

(declare-fun tb!259623 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366424) tb!259623))

(declare-fun result!323282 () Bool)

(assert (= result!323282 result!323248))

(assert (=> d!1574804 t!366424))

(declare-fun tb!259625 () Bool)

(declare-fun t!366426 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366426) tb!259625))

(declare-fun result!323284 () Bool)

(assert (= result!323284 result!323114))

(assert (=> d!1574186 t!366426))

(declare-fun t!366428 () Bool)

(declare-fun tb!259627 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366428) tb!259627))

(declare-fun result!323286 () Bool)

(assert (= result!323286 result!323200))

(assert (=> d!1574548 t!366428))

(declare-fun t!366430 () Bool)

(declare-fun tb!259629 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366430) tb!259629))

(declare-fun result!323288 () Bool)

(assert (= result!323288 result!323212))

(assert (=> d!1574648 t!366430))

(declare-fun t!366432 () Bool)

(declare-fun tb!259631 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366432) tb!259631))

(declare-fun result!323290 () Bool)

(assert (= result!323290 result!323098))

(assert (=> d!1574132 t!366432))

(declare-fun tb!259633 () Bool)

(declare-fun t!366434 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366434) tb!259633))

(declare-fun result!323292 () Bool)

(assert (= result!323292 result!323230))

(assert (=> d!1574670 t!366434))

(declare-fun t!366436 () Bool)

(declare-fun tb!259635 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366436) tb!259635))

(declare-fun result!323294 () Bool)

(assert (= result!323294 result!323236))

(assert (=> d!1574778 t!366436))

(assert (=> d!1574538 t!366428))

(declare-fun t!366438 () Bool)

(declare-fun tb!259637 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366438) tb!259637))

(declare-fun result!323296 () Bool)

(assert (= result!323296 result!323260))

(assert (=> d!1574814 t!366438))

(declare-fun t!366440 () Bool)

(declare-fun tb!259639 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165)))) t!366440) tb!259639))

(declare-fun result!323298 () Bool)

(assert (= result!323298 result!323272))

(assert (=> d!1574836 t!366440))

(assert (=> d!1574842 t!366440))

(declare-fun t!366442 () Bool)

(declare-fun tb!259641 () Bool)

(assert (=> (and b!4900044 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366442) tb!259641))

(declare-fun result!323300 () Bool)

(assert (= result!323300 result!323218))

(assert (=> d!1574648 t!366442))

(assert (=> d!1574138 t!366432))

(assert (=> d!1574816 t!366438))

(assert (=> d!1574626 t!366430))

(assert (=> bs!1176551 t!366432))

(assert (=> bs!1176550 t!366422))

(declare-fun tp!1378480 () Bool)

(declare-fun b_and!345839 () Bool)

(assert (=> b!4900044 (= tp!1378480 (and (=> t!366428 result!323286) (=> t!366436 result!323294) (=> t!366440 result!323298) (=> t!366442 result!323300) (=> t!366438 result!323296) (=> t!366420 result!323278) (=> t!366434 result!323292) (=> t!366426 result!323284) (=> t!366432 result!323290) (=> t!366430 result!323288) (=> t!366422 result!323280) (=> t!366424 result!323282) b_and!345839))))

(declare-fun b_free!131673 () Bool)

(declare-fun b_next!132463 () Bool)

(assert (=> b!4900044 (= b_free!131673 (not b_next!132463))))

(declare-fun tb!259643 () Bool)

(declare-fun t!366444 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008710)))))) t!366444) tb!259643))

(declare-fun result!323302 () Bool)

(assert (= result!323302 result!323242))

(assert (=> d!1574788 t!366444))

(declare-fun t!366446 () Bool)

(declare-fun tb!259645 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366446) tb!259645))

(declare-fun result!323304 () Bool)

(assert (= result!323304 result!323128))

(assert (=> bs!1176550 t!366446))

(declare-fun t!366448 () Bool)

(declare-fun tb!259647 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366448) tb!259647))

(declare-fun result!323306 () Bool)

(assert (= result!323306 result!323206))

(assert (=> d!1574548 t!366448))

(declare-fun t!366450 () Bool)

(declare-fun tb!259649 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523)))))) t!366450) tb!259649))

(declare-fun result!323308 () Bool)

(assert (= result!323308 result!323108))

(assert (=> d!1574172 t!366450))

(declare-fun t!366452 () Bool)

(declare-fun tb!259651 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366452) tb!259651))

(declare-fun result!323310 () Bool)

(assert (= result!323310 result!323134))

(assert (=> bs!1176551 t!366452))

(declare-fun t!366454 () Bool)

(declare-fun tb!259653 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366454) tb!259653))

(declare-fun result!323312 () Bool)

(assert (= result!323312 result!323266))

(assert (=> d!1574836 t!366454))

(declare-fun t!366456 () Bool)

(declare-fun tb!259655 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008851)))))) t!366456) tb!259655))

(declare-fun result!323314 () Bool)

(assert (= result!323314 result!323188))

(assert (=> d!1574426 t!366456))

(declare-fun tb!259657 () Bool)

(declare-fun t!366458 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008705)))))) t!366458) tb!259657))

(declare-fun result!323316 () Bool)

(assert (= result!323316 result!323194))

(assert (=> d!1574478 t!366458))

(declare-fun tb!259659 () Bool)

(declare-fun t!366460 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008840)))))) t!366460) tb!259659))

(declare-fun result!323318 () Bool)

(assert (= result!323318 result!323224))

(assert (=> d!1574658 t!366460))

(declare-fun t!366462 () Bool)

(declare-fun tb!259661 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165)))) t!366462) tb!259661))

(declare-fun result!323320 () Bool)

(assert (= result!323320 result!323254))

(assert (=> d!1574814 t!366462))

(declare-fun tp!1378479 () Bool)

(declare-fun b_and!345841 () Bool)

(assert (=> b!4900044 (= tp!1378479 (and (=> t!366454 result!323312) (=> t!366462 result!323320) (=> t!366458 result!323316) (=> t!366446 result!323304) (=> t!366450 result!323308) (=> t!366460 result!323318) (=> t!366448 result!323306) (=> t!366456 result!323314) (=> t!366452 result!323310) (=> t!366444 result!323302) b_and!345841))))

(declare-fun e!3062949 () Bool)

(assert (=> b!4900044 (= e!3062949 (and tp!1378480 tp!1378479))))

(declare-fun tp!1378478 () Bool)

(declare-fun b!4900043 () Bool)

(declare-fun e!3062950 () Bool)

(assert (=> b!4900043 (= e!3062950 (and tp!1378478 (inv!72731 (tag!9045 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (inv!72736 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) e!3062949))))

(declare-fun b!4900042 () Bool)

(declare-fun e!3062948 () Bool)

(declare-fun tp!1378481 () Bool)

(assert (=> b!4900042 (= e!3062948 (and e!3062950 tp!1378481))))

(assert (=> b!4898978 (= tp!1378326 e!3062948)))

(assert (= b!4900043 b!4900044))

(assert (= b!4900042 b!4900043))

(assert (= (and b!4898978 (is-Cons!56430 (t!366240 (t!366240 (t!366240 rulesArg!165))))) b!4900042))

(declare-fun m!5908344 () Bool)

(assert (=> b!4900043 m!5908344))

(declare-fun m!5908346 () Bool)

(assert (=> b!4900043 m!5908346))

(declare-fun b!4900045 () Bool)

(declare-fun e!3062952 () Bool)

(declare-fun tp!1378482 () Bool)

(assert (=> b!4900045 (= e!3062952 (and tp_is_empty!35793 tp!1378482))))

(assert (=> b!4898986 (= tp!1378332 e!3062952)))

(assert (= (and b!4898986 (is-Cons!56428 (innerList!14837 (xs!18065 (right!41332 (c!832544 input!1236)))))) b!4900045))

(declare-fun b!4900046 () Bool)

(declare-fun e!3062953 () Bool)

(assert (=> b!4900046 (= e!3062953 tp_is_empty!35793)))

(declare-fun b!4900047 () Bool)

(declare-fun tp!1378486 () Bool)

(declare-fun tp!1378484 () Bool)

(assert (=> b!4900047 (= e!3062953 (and tp!1378486 tp!1378484))))

(declare-fun b!4900049 () Bool)

(declare-fun tp!1378487 () Bool)

(declare-fun tp!1378485 () Bool)

(assert (=> b!4900049 (= e!3062953 (and tp!1378487 tp!1378485))))

(declare-fun b!4900048 () Bool)

(declare-fun tp!1378483 () Bool)

(assert (=> b!4900048 (= e!3062953 tp!1378483)))

(assert (=> b!4898971 (= tp!1378316 e!3062953)))

(assert (= (and b!4898971 (is-ElementMatch!13256 (regOne!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900046))

(assert (= (and b!4898971 (is-Concat!21748 (regOne!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900047))

(assert (= (and b!4898971 (is-Star!13256 (regOne!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900048))

(assert (= (and b!4898971 (is-Union!13256 (regOne!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900049))

(declare-fun b!4900050 () Bool)

(declare-fun e!3062954 () Bool)

(assert (=> b!4900050 (= e!3062954 tp_is_empty!35793)))

(declare-fun b!4900051 () Bool)

(declare-fun tp!1378491 () Bool)

(declare-fun tp!1378489 () Bool)

(assert (=> b!4900051 (= e!3062954 (and tp!1378491 tp!1378489))))

(declare-fun b!4900053 () Bool)

(declare-fun tp!1378492 () Bool)

(declare-fun tp!1378490 () Bool)

(assert (=> b!4900053 (= e!3062954 (and tp!1378492 tp!1378490))))

(declare-fun b!4900052 () Bool)

(declare-fun tp!1378488 () Bool)

(assert (=> b!4900052 (= e!3062954 tp!1378488)))

(assert (=> b!4898971 (= tp!1378314 e!3062954)))

(assert (= (and b!4898971 (is-ElementMatch!13256 (regTwo!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900050))

(assert (= (and b!4898971 (is-Concat!21748 (regTwo!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900051))

(assert (= (and b!4898971 (is-Star!13256 (regTwo!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900052))

(assert (= (and b!4898971 (is-Union!13256 (regTwo!27024 (regOne!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900053))

(declare-fun tp!1378494 () Bool)

(declare-fun b!4900054 () Bool)

(declare-fun e!3062956 () Bool)

(declare-fun tp!1378493 () Bool)

(assert (=> b!4900054 (= e!3062956 (and (inv!72735 (left!41002 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))) tp!1378493 (inv!72735 (right!41332 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))) tp!1378494))))

(declare-fun b!4900056 () Bool)

(declare-fun e!3062955 () Bool)

(declare-fun tp!1378495 () Bool)

(assert (=> b!4900056 (= e!3062955 tp!1378495)))

(declare-fun b!4900055 () Bool)

(assert (=> b!4900055 (= e!3062956 (and (inv!72742 (xs!18065 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))) e!3062955))))

(assert (=> b!4899000 (= tp!1378349 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636))))) e!3062956))))

(assert (= (and b!4899000 (is-Node!14749 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))) b!4900054))

(assert (= b!4900055 b!4900056))

(assert (= (and b!4899000 (is-Leaf!24557 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)))))) b!4900055))

(declare-fun m!5908348 () Bool)

(assert (=> b!4900054 m!5908348))

(declare-fun m!5908350 () Bool)

(assert (=> b!4900054 m!5908350))

(declare-fun m!5908352 () Bool)

(assert (=> b!4900055 m!5908352))

(assert (=> b!4899000 m!5906420))

(declare-fun b!4900057 () Bool)

(declare-fun e!3062957 () Bool)

(declare-fun tp!1378496 () Bool)

(assert (=> b!4900057 (= e!3062957 (and tp_is_empty!35793 tp!1378496))))

(assert (=> b!4898983 (= tp!1378329 e!3062957)))

(assert (= (and b!4898983 (is-Cons!56428 (innerList!14837 (xs!18065 (left!41002 (c!832544 input!1236)))))) b!4900057))

(declare-fun tp!1378498 () Bool)

(declare-fun e!3062959 () Bool)

(declare-fun b!4900058 () Bool)

(declare-fun tp!1378497 () Bool)

(assert (=> b!4900058 (= e!3062959 (and (inv!72735 (left!41002 (left!41002 (left!41002 (c!832544 input!1236))))) tp!1378497 (inv!72735 (right!41332 (left!41002 (left!41002 (c!832544 input!1236))))) tp!1378498))))

(declare-fun b!4900060 () Bool)

(declare-fun e!3062958 () Bool)

(declare-fun tp!1378499 () Bool)

(assert (=> b!4900060 (= e!3062958 tp!1378499)))

(declare-fun b!4900059 () Bool)

(assert (=> b!4900059 (= e!3062959 (and (inv!72742 (xs!18065 (left!41002 (left!41002 (c!832544 input!1236))))) e!3062958))))

(assert (=> b!4898981 (= tp!1378327 (and (inv!72735 (left!41002 (left!41002 (c!832544 input!1236)))) e!3062959))))

(assert (= (and b!4898981 (is-Node!14749 (left!41002 (left!41002 (c!832544 input!1236))))) b!4900058))

(assert (= b!4900059 b!4900060))

(assert (= (and b!4898981 (is-Leaf!24557 (left!41002 (left!41002 (c!832544 input!1236))))) b!4900059))

(declare-fun m!5908354 () Bool)

(assert (=> b!4900058 m!5908354))

(declare-fun m!5908356 () Bool)

(assert (=> b!4900058 m!5908356))

(declare-fun m!5908358 () Bool)

(assert (=> b!4900059 m!5908358))

(assert (=> b!4898981 m!5906400))

(declare-fun e!3062961 () Bool)

(declare-fun b!4900061 () Bool)

(declare-fun tp!1378500 () Bool)

(declare-fun tp!1378501 () Bool)

(assert (=> b!4900061 (= e!3062961 (and (inv!72735 (left!41002 (right!41332 (left!41002 (c!832544 input!1236))))) tp!1378500 (inv!72735 (right!41332 (right!41332 (left!41002 (c!832544 input!1236))))) tp!1378501))))

(declare-fun b!4900063 () Bool)

(declare-fun e!3062960 () Bool)

(declare-fun tp!1378502 () Bool)

(assert (=> b!4900063 (= e!3062960 tp!1378502)))

(declare-fun b!4900062 () Bool)

(assert (=> b!4900062 (= e!3062961 (and (inv!72742 (xs!18065 (right!41332 (left!41002 (c!832544 input!1236))))) e!3062960))))

(assert (=> b!4898981 (= tp!1378328 (and (inv!72735 (right!41332 (left!41002 (c!832544 input!1236)))) e!3062961))))

(assert (= (and b!4898981 (is-Node!14749 (right!41332 (left!41002 (c!832544 input!1236))))) b!4900061))

(assert (= b!4900062 b!4900063))

(assert (= (and b!4898981 (is-Leaf!24557 (right!41332 (left!41002 (c!832544 input!1236))))) b!4900062))

(declare-fun m!5908360 () Bool)

(assert (=> b!4900061 m!5908360))

(declare-fun m!5908362 () Bool)

(assert (=> b!4900061 m!5908362))

(declare-fun m!5908364 () Bool)

(assert (=> b!4900062 m!5908364))

(assert (=> b!4898981 m!5906402))

(declare-fun b!4900064 () Bool)

(declare-fun e!3062962 () Bool)

(assert (=> b!4900064 (= e!3062962 tp_is_empty!35793)))

(declare-fun b!4900065 () Bool)

(declare-fun tp!1378506 () Bool)

(declare-fun tp!1378504 () Bool)

(assert (=> b!4900065 (= e!3062962 (and tp!1378506 tp!1378504))))

(declare-fun b!4900067 () Bool)

(declare-fun tp!1378507 () Bool)

(declare-fun tp!1378505 () Bool)

(assert (=> b!4900067 (= e!3062962 (and tp!1378507 tp!1378505))))

(declare-fun b!4900066 () Bool)

(declare-fun tp!1378503 () Bool)

(assert (=> b!4900066 (= e!3062962 tp!1378503)))

(assert (=> b!4898993 (= tp!1378338 e!3062962)))

(assert (= (and b!4898993 (is-ElementMatch!13256 (reg!13585 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900064))

(assert (= (and b!4898993 (is-Concat!21748 (reg!13585 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900065))

(assert (= (and b!4898993 (is-Star!13256 (reg!13585 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900066))

(assert (= (and b!4898993 (is-Union!13256 (reg!13585 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900067))

(declare-fun b!4900068 () Bool)

(declare-fun e!3062963 () Bool)

(declare-fun tp!1378508 () Bool)

(assert (=> b!4900068 (= e!3062963 (and tp_is_empty!35793 tp!1378508))))

(assert (=> b!4898965 (= tp!1378307 e!3062963)))

(assert (= (and b!4898965 (is-Cons!56428 (t!366238 (innerList!14837 (xs!18065 (c!832544 input!1236)))))) b!4900068))

(declare-fun b!4900069 () Bool)

(declare-fun e!3062964 () Bool)

(assert (=> b!4900069 (= e!3062964 tp_is_empty!35793)))

(declare-fun b!4900070 () Bool)

(declare-fun tp!1378512 () Bool)

(declare-fun tp!1378510 () Bool)

(assert (=> b!4900070 (= e!3062964 (and tp!1378512 tp!1378510))))

(declare-fun b!4900072 () Bool)

(declare-fun tp!1378513 () Bool)

(declare-fun tp!1378511 () Bool)

(assert (=> b!4900072 (= e!3062964 (and tp!1378513 tp!1378511))))

(declare-fun b!4900071 () Bool)

(declare-fun tp!1378509 () Bool)

(assert (=> b!4900071 (= e!3062964 tp!1378509)))

(assert (=> b!4898994 (= tp!1378342 e!3062964)))

(assert (= (and b!4898994 (is-ElementMatch!13256 (regOne!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900069))

(assert (= (and b!4898994 (is-Concat!21748 (regOne!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900070))

(assert (= (and b!4898994 (is-Star!13256 (regOne!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900071))

(assert (= (and b!4898994 (is-Union!13256 (regOne!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900072))

(declare-fun b!4900073 () Bool)

(declare-fun e!3062965 () Bool)

(assert (=> b!4900073 (= e!3062965 tp_is_empty!35793)))

(declare-fun b!4900074 () Bool)

(declare-fun tp!1378517 () Bool)

(declare-fun tp!1378515 () Bool)

(assert (=> b!4900074 (= e!3062965 (and tp!1378517 tp!1378515))))

(declare-fun b!4900076 () Bool)

(declare-fun tp!1378518 () Bool)

(declare-fun tp!1378516 () Bool)

(assert (=> b!4900076 (= e!3062965 (and tp!1378518 tp!1378516))))

(declare-fun b!4900075 () Bool)

(declare-fun tp!1378514 () Bool)

(assert (=> b!4900075 (= e!3062965 tp!1378514)))

(assert (=> b!4898994 (= tp!1378340 e!3062965)))

(assert (= (and b!4898994 (is-ElementMatch!13256 (regTwo!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900073))

(assert (= (and b!4898994 (is-Concat!21748 (regTwo!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900074))

(assert (= (and b!4898994 (is-Star!13256 (regTwo!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900075))

(assert (= (and b!4898994 (is-Union!13256 (regTwo!27025 (regTwo!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900076))

(declare-fun b!4900077 () Bool)

(declare-fun e!3062966 () Bool)

(assert (=> b!4900077 (= e!3062966 tp_is_empty!35793)))

(declare-fun b!4900078 () Bool)

(declare-fun tp!1378522 () Bool)

(declare-fun tp!1378520 () Bool)

(assert (=> b!4900078 (= e!3062966 (and tp!1378522 tp!1378520))))

(declare-fun b!4900080 () Bool)

(declare-fun tp!1378523 () Bool)

(declare-fun tp!1378521 () Bool)

(assert (=> b!4900080 (= e!3062966 (and tp!1378523 tp!1378521))))

(declare-fun b!4900079 () Bool)

(declare-fun tp!1378519 () Bool)

(assert (=> b!4900079 (= e!3062966 tp!1378519)))

(assert (=> b!4898997 (= tp!1378343 e!3062966)))

(assert (= (and b!4898997 (is-ElementMatch!13256 (reg!13585 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900077))

(assert (= (and b!4898997 (is-Concat!21748 (reg!13585 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900078))

(assert (= (and b!4898997 (is-Star!13256 (reg!13585 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900079))

(assert (= (and b!4898997 (is-Union!13256 (reg!13585 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900080))

(declare-fun b!4900081 () Bool)

(declare-fun e!3062967 () Bool)

(assert (=> b!4900081 (= e!3062967 tp_is_empty!35793)))

(declare-fun b!4900082 () Bool)

(declare-fun tp!1378527 () Bool)

(declare-fun tp!1378525 () Bool)

(assert (=> b!4900082 (= e!3062967 (and tp!1378527 tp!1378525))))

(declare-fun b!4900084 () Bool)

(declare-fun tp!1378528 () Bool)

(declare-fun tp!1378526 () Bool)

(assert (=> b!4900084 (= e!3062967 (and tp!1378528 tp!1378526))))

(declare-fun b!4900083 () Bool)

(declare-fun tp!1378524 () Bool)

(assert (=> b!4900083 (= e!3062967 tp!1378524)))

(assert (=> b!4898969 (= tp!1378312 e!3062967)))

(assert (= (and b!4898969 (is-ElementMatch!13256 (regOne!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900081))

(assert (= (and b!4898969 (is-Concat!21748 (regOne!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900082))

(assert (= (and b!4898969 (is-Star!13256 (regOne!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900083))

(assert (= (and b!4898969 (is-Union!13256 (regOne!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900084))

(declare-fun b!4900085 () Bool)

(declare-fun e!3062968 () Bool)

(assert (=> b!4900085 (= e!3062968 tp_is_empty!35793)))

(declare-fun b!4900086 () Bool)

(declare-fun tp!1378532 () Bool)

(declare-fun tp!1378530 () Bool)

(assert (=> b!4900086 (= e!3062968 (and tp!1378532 tp!1378530))))

(declare-fun b!4900088 () Bool)

(declare-fun tp!1378533 () Bool)

(declare-fun tp!1378531 () Bool)

(assert (=> b!4900088 (= e!3062968 (and tp!1378533 tp!1378531))))

(declare-fun b!4900087 () Bool)

(declare-fun tp!1378529 () Bool)

(assert (=> b!4900087 (= e!3062968 tp!1378529)))

(assert (=> b!4898969 (= tp!1378310 e!3062968)))

(assert (= (and b!4898969 (is-ElementMatch!13256 (regTwo!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900085))

(assert (= (and b!4898969 (is-Concat!21748 (regTwo!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900086))

(assert (= (and b!4898969 (is-Star!13256 (regTwo!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900087))

(assert (= (and b!4898969 (is-Union!13256 (regTwo!27025 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900088))

(declare-fun b!4900089 () Bool)

(declare-fun e!3062969 () Bool)

(assert (=> b!4900089 (= e!3062969 tp_is_empty!35793)))

(declare-fun b!4900090 () Bool)

(declare-fun tp!1378537 () Bool)

(declare-fun tp!1378535 () Bool)

(assert (=> b!4900090 (= e!3062969 (and tp!1378537 tp!1378535))))

(declare-fun b!4900092 () Bool)

(declare-fun tp!1378538 () Bool)

(declare-fun tp!1378536 () Bool)

(assert (=> b!4900092 (= e!3062969 (and tp!1378538 tp!1378536))))

(declare-fun b!4900091 () Bool)

(declare-fun tp!1378534 () Bool)

(assert (=> b!4900091 (= e!3062969 tp!1378534)))

(assert (=> b!4898988 (= tp!1378336 e!3062969)))

(assert (= (and b!4898988 (is-ElementMatch!13256 (regOne!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900089))

(assert (= (and b!4898988 (is-Concat!21748 (regOne!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900090))

(assert (= (and b!4898988 (is-Star!13256 (regOne!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900091))

(assert (= (and b!4898988 (is-Union!13256 (regOne!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900092))

(declare-fun b!4900093 () Bool)

(declare-fun e!3062970 () Bool)

(assert (=> b!4900093 (= e!3062970 tp_is_empty!35793)))

(declare-fun b!4900094 () Bool)

(declare-fun tp!1378542 () Bool)

(declare-fun tp!1378540 () Bool)

(assert (=> b!4900094 (= e!3062970 (and tp!1378542 tp!1378540))))

(declare-fun b!4900096 () Bool)

(declare-fun tp!1378543 () Bool)

(declare-fun tp!1378541 () Bool)

(assert (=> b!4900096 (= e!3062970 (and tp!1378543 tp!1378541))))

(declare-fun b!4900095 () Bool)

(declare-fun tp!1378539 () Bool)

(assert (=> b!4900095 (= e!3062970 tp!1378539)))

(assert (=> b!4898988 (= tp!1378334 e!3062970)))

(assert (= (and b!4898988 (is-ElementMatch!13256 (regTwo!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900093))

(assert (= (and b!4898988 (is-Concat!21748 (regTwo!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900094))

(assert (= (and b!4898988 (is-Star!13256 (regTwo!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900095))

(assert (= (and b!4898988 (is-Union!13256 (regTwo!27024 (regOne!27025 (regex!8181 (h!62878 rulesArg!165)))))) b!4900096))

(declare-fun b!4900097 () Bool)

(declare-fun e!3062971 () Bool)

(assert (=> b!4900097 (= e!3062971 tp_is_empty!35793)))

(declare-fun b!4900098 () Bool)

(declare-fun tp!1378547 () Bool)

(declare-fun tp!1378545 () Bool)

(assert (=> b!4900098 (= e!3062971 (and tp!1378547 tp!1378545))))

(declare-fun b!4900100 () Bool)

(declare-fun tp!1378548 () Bool)

(declare-fun tp!1378546 () Bool)

(assert (=> b!4900100 (= e!3062971 (and tp!1378548 tp!1378546))))

(declare-fun b!4900099 () Bool)

(declare-fun tp!1378544 () Bool)

(assert (=> b!4900099 (= e!3062971 tp!1378544)))

(assert (=> b!4898967 (= tp!1378311 e!3062971)))

(assert (= (and b!4898967 (is-ElementMatch!13256 (regOne!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900097))

(assert (= (and b!4898967 (is-Concat!21748 (regOne!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900098))

(assert (= (and b!4898967 (is-Star!13256 (regOne!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900099))

(assert (= (and b!4898967 (is-Union!13256 (regOne!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900100))

(declare-fun b!4900101 () Bool)

(declare-fun e!3062972 () Bool)

(assert (=> b!4900101 (= e!3062972 tp_is_empty!35793)))

(declare-fun b!4900102 () Bool)

(declare-fun tp!1378552 () Bool)

(declare-fun tp!1378550 () Bool)

(assert (=> b!4900102 (= e!3062972 (and tp!1378552 tp!1378550))))

(declare-fun b!4900104 () Bool)

(declare-fun tp!1378553 () Bool)

(declare-fun tp!1378551 () Bool)

(assert (=> b!4900104 (= e!3062972 (and tp!1378553 tp!1378551))))

(declare-fun b!4900103 () Bool)

(declare-fun tp!1378549 () Bool)

(assert (=> b!4900103 (= e!3062972 tp!1378549)))

(assert (=> b!4898967 (= tp!1378309 e!3062972)))

(assert (= (and b!4898967 (is-ElementMatch!13256 (regTwo!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900101))

(assert (= (and b!4898967 (is-Concat!21748 (regTwo!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900102))

(assert (= (and b!4898967 (is-Star!13256 (regTwo!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900103))

(assert (= (and b!4898967 (is-Union!13256 (regTwo!27024 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900104))

(declare-fun b!4900105 () Bool)

(declare-fun e!3062973 () Bool)

(assert (=> b!4900105 (= e!3062973 tp_is_empty!35793)))

(declare-fun b!4900106 () Bool)

(declare-fun tp!1378557 () Bool)

(declare-fun tp!1378555 () Bool)

(assert (=> b!4900106 (= e!3062973 (and tp!1378557 tp!1378555))))

(declare-fun b!4900108 () Bool)

(declare-fun tp!1378558 () Bool)

(declare-fun tp!1378556 () Bool)

(assert (=> b!4900108 (= e!3062973 (and tp!1378558 tp!1378556))))

(declare-fun b!4900107 () Bool)

(declare-fun tp!1378554 () Bool)

(assert (=> b!4900107 (= e!3062973 tp!1378554)))

(assert (=> b!4898977 (= tp!1378322 e!3062973)))

(assert (= (and b!4898977 (is-ElementMatch!13256 (regOne!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900105))

(assert (= (and b!4898977 (is-Concat!21748 (regOne!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900106))

(assert (= (and b!4898977 (is-Star!13256 (regOne!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900107))

(assert (= (and b!4898977 (is-Union!13256 (regOne!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900108))

(declare-fun b!4900109 () Bool)

(declare-fun e!3062974 () Bool)

(assert (=> b!4900109 (= e!3062974 tp_is_empty!35793)))

(declare-fun b!4900110 () Bool)

(declare-fun tp!1378562 () Bool)

(declare-fun tp!1378560 () Bool)

(assert (=> b!4900110 (= e!3062974 (and tp!1378562 tp!1378560))))

(declare-fun b!4900112 () Bool)

(declare-fun tp!1378563 () Bool)

(declare-fun tp!1378561 () Bool)

(assert (=> b!4900112 (= e!3062974 (and tp!1378563 tp!1378561))))

(declare-fun b!4900111 () Bool)

(declare-fun tp!1378559 () Bool)

(assert (=> b!4900111 (= e!3062974 tp!1378559)))

(assert (=> b!4898977 (= tp!1378320 e!3062974)))

(assert (= (and b!4898977 (is-ElementMatch!13256 (regTwo!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900109))

(assert (= (and b!4898977 (is-Concat!21748 (regTwo!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900110))

(assert (= (and b!4898977 (is-Star!13256 (regTwo!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900111))

(assert (= (and b!4898977 (is-Union!13256 (regTwo!27025 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900112))

(declare-fun b!4900113 () Bool)

(declare-fun e!3062975 () Bool)

(assert (=> b!4900113 (= e!3062975 tp_is_empty!35793)))

(declare-fun b!4900114 () Bool)

(declare-fun tp!1378567 () Bool)

(declare-fun tp!1378565 () Bool)

(assert (=> b!4900114 (= e!3062975 (and tp!1378567 tp!1378565))))

(declare-fun b!4900116 () Bool)

(declare-fun tp!1378568 () Bool)

(declare-fun tp!1378566 () Bool)

(assert (=> b!4900116 (= e!3062975 (and tp!1378568 tp!1378566))))

(declare-fun b!4900115 () Bool)

(declare-fun tp!1378564 () Bool)

(assert (=> b!4900115 (= e!3062975 tp!1378564)))

(assert (=> b!4898996 (= tp!1378346 e!3062975)))

(assert (= (and b!4898996 (is-ElementMatch!13256 (regOne!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900113))

(assert (= (and b!4898996 (is-Concat!21748 (regOne!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900114))

(assert (= (and b!4898996 (is-Star!13256 (regOne!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900115))

(assert (= (and b!4898996 (is-Union!13256 (regOne!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900116))

(declare-fun b!4900117 () Bool)

(declare-fun e!3062976 () Bool)

(assert (=> b!4900117 (= e!3062976 tp_is_empty!35793)))

(declare-fun b!4900118 () Bool)

(declare-fun tp!1378572 () Bool)

(declare-fun tp!1378570 () Bool)

(assert (=> b!4900118 (= e!3062976 (and tp!1378572 tp!1378570))))

(declare-fun b!4900120 () Bool)

(declare-fun tp!1378573 () Bool)

(declare-fun tp!1378571 () Bool)

(assert (=> b!4900120 (= e!3062976 (and tp!1378573 tp!1378571))))

(declare-fun b!4900119 () Bool)

(declare-fun tp!1378569 () Bool)

(assert (=> b!4900119 (= e!3062976 tp!1378569)))

(assert (=> b!4898996 (= tp!1378344 e!3062976)))

(assert (= (and b!4898996 (is-ElementMatch!13256 (regTwo!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900117))

(assert (= (and b!4898996 (is-Concat!21748 (regTwo!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900118))

(assert (= (and b!4898996 (is-Star!13256 (regTwo!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900119))

(assert (= (and b!4898996 (is-Union!13256 (regTwo!27024 (reg!13585 (regex!8181 (h!62878 rulesArg!165)))))) b!4900120))

(declare-fun b!4900121 () Bool)

(declare-fun e!3062977 () Bool)

(assert (=> b!4900121 (= e!3062977 tp_is_empty!35793)))

(declare-fun b!4900122 () Bool)

(declare-fun tp!1378577 () Bool)

(declare-fun tp!1378575 () Bool)

(assert (=> b!4900122 (= e!3062977 (and tp!1378577 tp!1378575))))

(declare-fun b!4900124 () Bool)

(declare-fun tp!1378578 () Bool)

(declare-fun tp!1378576 () Bool)

(assert (=> b!4900124 (= e!3062977 (and tp!1378578 tp!1378576))))

(declare-fun b!4900123 () Bool)

(declare-fun tp!1378574 () Bool)

(assert (=> b!4900123 (= e!3062977 tp!1378574)))

(assert (=> b!4898968 (= tp!1378308 e!3062977)))

(assert (= (and b!4898968 (is-ElementMatch!13256 (reg!13585 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900121))

(assert (= (and b!4898968 (is-Concat!21748 (reg!13585 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900122))

(assert (= (and b!4898968 (is-Star!13256 (reg!13585 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900123))

(assert (= (and b!4898968 (is-Union!13256 (reg!13585 (regex!8181 (h!62878 (t!366240 rulesArg!165)))))) b!4900124))

(declare-fun b!4900125 () Bool)

(declare-fun e!3062978 () Bool)

(assert (=> b!4900125 (= e!3062978 tp_is_empty!35793)))

(declare-fun b!4900126 () Bool)

(declare-fun tp!1378582 () Bool)

(declare-fun tp!1378580 () Bool)

(assert (=> b!4900126 (= e!3062978 (and tp!1378582 tp!1378580))))

(declare-fun b!4900128 () Bool)

(declare-fun tp!1378583 () Bool)

(declare-fun tp!1378581 () Bool)

(assert (=> b!4900128 (= e!3062978 (and tp!1378583 tp!1378581))))

(declare-fun b!4900127 () Bool)

(declare-fun tp!1378579 () Bool)

(assert (=> b!4900127 (= e!3062978 tp!1378579)))

(assert (=> b!4898975 (= tp!1378321 e!3062978)))

(assert (= (and b!4898975 (is-ElementMatch!13256 (regOne!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900125))

(assert (= (and b!4898975 (is-Concat!21748 (regOne!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900126))

(assert (= (and b!4898975 (is-Star!13256 (regOne!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900127))

(assert (= (and b!4898975 (is-Union!13256 (regOne!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900128))

(declare-fun b!4900129 () Bool)

(declare-fun e!3062979 () Bool)

(assert (=> b!4900129 (= e!3062979 tp_is_empty!35793)))

(declare-fun b!4900130 () Bool)

(declare-fun tp!1378587 () Bool)

(declare-fun tp!1378585 () Bool)

(assert (=> b!4900130 (= e!3062979 (and tp!1378587 tp!1378585))))

(declare-fun b!4900132 () Bool)

(declare-fun tp!1378588 () Bool)

(declare-fun tp!1378586 () Bool)

(assert (=> b!4900132 (= e!3062979 (and tp!1378588 tp!1378586))))

(declare-fun b!4900131 () Bool)

(declare-fun tp!1378584 () Bool)

(assert (=> b!4900131 (= e!3062979 tp!1378584)))

(assert (=> b!4898975 (= tp!1378319 e!3062979)))

(assert (= (and b!4898975 (is-ElementMatch!13256 (regTwo!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900129))

(assert (= (and b!4898975 (is-Concat!21748 (regTwo!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900130))

(assert (= (and b!4898975 (is-Star!13256 (regTwo!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900131))

(assert (= (and b!4898975 (is-Union!13256 (regTwo!27024 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900132))

(declare-fun b!4900133 () Bool)

(declare-fun e!3062980 () Bool)

(assert (=> b!4900133 (= e!3062980 tp_is_empty!35793)))

(declare-fun b!4900134 () Bool)

(declare-fun tp!1378592 () Bool)

(declare-fun tp!1378590 () Bool)

(assert (=> b!4900134 (= e!3062980 (and tp!1378592 tp!1378590))))

(declare-fun b!4900136 () Bool)

(declare-fun tp!1378593 () Bool)

(declare-fun tp!1378591 () Bool)

(assert (=> b!4900136 (= e!3062980 (and tp!1378593 tp!1378591))))

(declare-fun b!4900135 () Bool)

(declare-fun tp!1378589 () Bool)

(assert (=> b!4900135 (= e!3062980 tp!1378589)))

(assert (=> b!4898976 (= tp!1378318 e!3062980)))

(assert (= (and b!4898976 (is-ElementMatch!13256 (reg!13585 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900133))

(assert (= (and b!4898976 (is-Concat!21748 (reg!13585 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900134))

(assert (= (and b!4898976 (is-Star!13256 (reg!13585 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900135))

(assert (= (and b!4898976 (is-Union!13256 (reg!13585 (regTwo!27024 (regex!8181 (h!62878 rulesArg!165)))))) b!4900136))

(declare-fun b_lambda!194999 () Bool)

(assert (= b_lambda!194997 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!194999)))

(declare-fun b_lambda!195001 () Bool)

(assert (= b_lambda!194967 (or b!4898937 b_lambda!195001)))

(declare-fun bs!1176680 () Bool)

(declare-fun d!1574892 () Bool)

(assert (= bs!1176680 (and d!1574892 b!4898937)))

(assert (=> bs!1176680 (= (dynLambda!22693 lambda!244184 (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))) (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))) (list!17745 (seqFromList!5943 (list!17745 (_1!33560 lt!2008880))))))))

(declare-fun b_lambda!195041 () Bool)

(assert (=> (not b_lambda!195041) (not bs!1176680)))

(declare-fun t!366464 () Bool)

(declare-fun tb!259663 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366464) tb!259663))

(declare-fun tp!1378594 () Bool)

(declare-fun b!4900137 () Bool)

(declare-fun e!3062981 () Bool)

(assert (=> b!4900137 (= e!3062981 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880))))))) tp!1378594))))

(declare-fun result!323322 () Bool)

(assert (=> tb!259663 (= result!323322 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008880)))))) e!3062981))))

(assert (= tb!259663 b!4900137))

(declare-fun m!5908366 () Bool)

(assert (=> b!4900137 m!5908366))

(declare-fun m!5908368 () Bool)

(assert (=> tb!259663 m!5908368))

(assert (=> bs!1176680 t!366464))

(declare-fun b_and!345843 () Bool)

(assert (= b_and!345821 (and (=> t!366464 result!323322) b_and!345843)))

(declare-fun t!366466 () Bool)

(declare-fun tb!259665 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366466) tb!259665))

(declare-fun result!323324 () Bool)

(assert (= result!323324 result!323322))

(assert (=> bs!1176680 t!366466))

(declare-fun b_and!345845 () Bool)

(assert (= b_and!345823 (and (=> t!366466 result!323324) b_and!345845)))

(declare-fun t!366468 () Bool)

(declare-fun tb!259667 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366468) tb!259667))

(declare-fun result!323326 () Bool)

(assert (= result!323326 result!323322))

(assert (=> bs!1176680 t!366468))

(declare-fun b_and!345847 () Bool)

(assert (= b_and!345825 (and (=> t!366468 result!323326) b_and!345847)))

(declare-fun t!366470 () Bool)

(declare-fun tb!259669 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366470) tb!259669))

(declare-fun result!323328 () Bool)

(assert (= result!323328 result!323322))

(assert (=> bs!1176680 t!366470))

(declare-fun b_and!345849 () Bool)

(assert (= b_and!345841 (and (=> t!366470 result!323328) b_and!345849)))

(declare-fun b_lambda!195043 () Bool)

(assert (=> (not b_lambda!195043) (not bs!1176680)))

(assert (=> bs!1176680 t!366359))

(declare-fun b_and!345851 () Bool)

(assert (= b_and!345833 (and (=> t!366359 result!323218) b_and!345851)))

(assert (=> bs!1176680 t!366361))

(declare-fun b_and!345853 () Bool)

(assert (= b_and!345835 (and (=> t!366361 result!323220) b_and!345853)))

(assert (=> bs!1176680 t!366363))

(declare-fun b_and!345855 () Bool)

(assert (= b_and!345837 (and (=> t!366363 result!323222) b_and!345855)))

(assert (=> bs!1176680 t!366442))

(declare-fun b_and!345857 () Bool)

(assert (= b_and!345839 (and (=> t!366442 result!323300) b_and!345857)))

(assert (=> bs!1176680 m!5906352))

(assert (=> bs!1176680 m!5907670))

(assert (=> bs!1176680 m!5907666))

(declare-fun m!5908370 () Bool)

(assert (=> bs!1176680 m!5908370))

(assert (=> bs!1176680 m!5906352))

(assert (=> bs!1176680 m!5907666))

(assert (=> bs!1176680 m!5908370))

(declare-fun m!5908372 () Bool)

(assert (=> bs!1176680 m!5908372))

(assert (=> d!1574636 d!1574892))

(declare-fun b_lambda!195003 () Bool)

(assert (= b_lambda!194959 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195003)))

(declare-fun b_lambda!195005 () Bool)

(assert (= b_lambda!194987 (or (and b!4898272 b_free!131649) (and b!4898501 b_free!131657 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131665 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131673 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195005)))

(declare-fun b_lambda!195007 () Bool)

(assert (= b_lambda!194879 (or (and b!4898272 b_free!131647 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) b_lambda!195007)))

(declare-fun b_lambda!195009 () Bool)

(assert (= b_lambda!194973 (or b!4898475 b_lambda!195009)))

(assert (=> d!1574652 d!1574240))

(declare-fun b_lambda!195011 () Bool)

(assert (= b_lambda!194979 (or d!1574042 b_lambda!195011)))

(declare-fun bs!1176681 () Bool)

(declare-fun d!1574894 () Bool)

(assert (= bs!1176681 (and d!1574894 d!1574042)))

(assert (=> bs!1176681 (= (dynLambda!22692 lambda!244157 (h!62878 (t!366240 rulesArg!165))) (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165))))))

(assert (=> bs!1176681 m!5906282))

(assert (=> b!4899722 d!1574894))

(declare-fun b_lambda!195013 () Bool)

(assert (= b_lambda!194951 (or d!1574202 b_lambda!195013)))

(declare-fun bs!1176682 () Bool)

(declare-fun d!1574896 () Bool)

(assert (= bs!1176682 (and d!1574896 d!1574202)))

(assert (=> bs!1176682 (= (dynLambda!22692 lambda!244180 (h!62878 (t!366240 rulesArg!165))) (ruleValid!3679 thiss!14805 (h!62878 (t!366240 rulesArg!165))))))

(assert (=> bs!1176682 m!5906282))

(assert (=> b!4899381 d!1574896))

(declare-fun b_lambda!195015 () Bool)

(assert (= b_lambda!194993 (or (and b!4898272 b_free!131649) (and b!4898501 b_free!131657 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131665 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131673 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195015)))

(declare-fun b_lambda!195017 () Bool)

(assert (= b_lambda!194947 (or d!1574138 b_lambda!195017)))

(declare-fun bs!1176683 () Bool)

(declare-fun d!1574898 () Bool)

(assert (= bs!1176683 (and d!1574898 d!1574138)))

(declare-fun res!2093044 () Bool)

(declare-fun e!3062982 () Bool)

(assert (=> bs!1176683 (=> res!2093044 e!3062982)))

(assert (=> bs!1176683 (= res!2093044 (not (= (list!17745 (_1!33560 lt!2008636)) (list!17745 (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))))))))

(assert (=> bs!1176683 (= (dynLambda!22701 lambda!244176 (_1!33560 lt!2008636) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636)))) e!3062982)))

(declare-fun b!4900138 () Bool)

(assert (=> b!4900138 (= e!3062982 (= (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (_1!33560 lt!2008636)) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (seqFromList!5943 (list!17745 (_1!33560 lt!2008636))))))))

(assert (= (and bs!1176683 (not res!2093044)) b!4900138))

(declare-fun b_lambda!195045 () Bool)

(assert (=> (not b_lambda!195045) (not b!4900138)))

(assert (=> b!4900138 t!366245))

(declare-fun b_and!345859 () Bool)

(assert (= b_and!345851 (and (=> t!366245 result!323098) b_and!345859)))

(assert (=> b!4900138 t!366247))

(declare-fun b_and!345861 () Bool)

(assert (= b_and!345853 (and (=> t!366247 result!323102) b_and!345861)))

(assert (=> b!4900138 t!366263))

(declare-fun b_and!345863 () Bool)

(assert (= b_and!345855 (and (=> t!366263 result!323120) b_and!345863)))

(assert (=> b!4900138 t!366432))

(declare-fun b_and!345865 () Bool)

(assert (= b_and!345857 (and (=> t!366432 result!323290) b_and!345865)))

(declare-fun b_lambda!195047 () Bool)

(assert (=> (not b_lambda!195047) (not b!4900138)))

(assert (=> b!4900138 t!366249))

(declare-fun b_and!345867 () Bool)

(assert (= b_and!345859 (and (=> t!366249 result!323104) b_and!345867)))

(assert (=> b!4900138 t!366251))

(declare-fun b_and!345869 () Bool)

(assert (= b_and!345861 (and (=> t!366251 result!323106) b_and!345869)))

(assert (=> b!4900138 t!366265))

(declare-fun b_and!345871 () Bool)

(assert (= b_and!345863 (and (=> t!366265 result!323122) b_and!345871)))

(assert (=> b!4900138 t!366422))

(declare-fun b_and!345873 () Bool)

(assert (= b_and!345865 (and (=> t!366422 result!323280) b_and!345873)))

(assert (=> bs!1176683 m!5905766))

(assert (=> bs!1176683 m!5905762))

(assert (=> bs!1176683 m!5906124))

(assert (=> b!4900138 m!5906110))

(assert (=> b!4900138 m!5905762))

(assert (=> b!4900138 m!5906120))

(assert (=> d!1574418 d!1574898))

(declare-fun b_lambda!195019 () Bool)

(assert (= b_lambda!194957 (or (and b!4898272 b_free!131649) (and b!4898501 b_free!131657 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131665 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131673 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195019)))

(declare-fun b_lambda!195021 () Bool)

(assert (= b_lambda!194995 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195021)))

(declare-fun b_lambda!195023 () Bool)

(assert (= b_lambda!194965 (or b!4898937 b_lambda!195023)))

(declare-fun bs!1176684 () Bool)

(declare-fun d!1574900 () Bool)

(assert (= bs!1176684 (and d!1574900 b!4898937)))

(assert (=> bs!1176684 (= (dynLambda!22693 lambda!244184 (_1!33560 lt!2008880)) (= (list!17745 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (_1!33560 lt!2008880)))) (list!17745 (_1!33560 lt!2008880))))))

(declare-fun b_lambda!195049 () Bool)

(assert (=> (not b_lambda!195049) (not bs!1176684)))

(declare-fun t!366472 () Bool)

(declare-fun tb!259671 () Bool)

(assert (=> (and b!4898272 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366472) tb!259671))

(declare-fun e!3062983 () Bool)

(declare-fun b!4900139 () Bool)

(declare-fun tp!1378595 () Bool)

(assert (=> b!4900139 (= e!3062983 (and (inv!72735 (c!832544 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (_1!33560 lt!2008880))))) tp!1378595))))

(declare-fun result!323330 () Bool)

(assert (=> tb!259671 (= result!323330 (and (inv!72734 (dynLambda!22695 (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (dynLambda!22694 (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (_1!33560 lt!2008880)))) e!3062983))))

(assert (= tb!259671 b!4900139))

(declare-fun m!5908374 () Bool)

(assert (=> b!4900139 m!5908374))

(declare-fun m!5908376 () Bool)

(assert (=> tb!259671 m!5908376))

(assert (=> bs!1176684 t!366472))

(declare-fun b_and!345875 () Bool)

(assert (= b_and!345843 (and (=> t!366472 result!323330) b_and!345875)))

(declare-fun t!366474 () Bool)

(declare-fun tb!259673 () Bool)

(assert (=> (and b!4898501 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366474) tb!259673))

(declare-fun result!323332 () Bool)

(assert (= result!323332 result!323330))

(assert (=> bs!1176684 t!366474))

(declare-fun b_and!345877 () Bool)

(assert (= b_and!345845 (and (=> t!366474 result!323332) b_and!345877)))

(declare-fun t!366476 () Bool)

(declare-fun tb!259675 () Bool)

(assert (=> (and b!4898980 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366476) tb!259675))

(declare-fun result!323334 () Bool)

(assert (= result!323334 result!323330))

(assert (=> bs!1176684 t!366476))

(declare-fun b_and!345879 () Bool)

(assert (= b_and!345847 (and (=> t!366476 result!323334) b_and!345879)))

(declare-fun t!366478 () Bool)

(declare-fun tb!259677 () Bool)

(assert (=> (and b!4900044 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165))))) t!366478) tb!259677))

(declare-fun result!323336 () Bool)

(assert (= result!323336 result!323330))

(assert (=> bs!1176684 t!366478))

(declare-fun b_and!345881 () Bool)

(assert (= b_and!345849 (and (=> t!366478 result!323336) b_and!345881)))

(declare-fun b_lambda!195051 () Bool)

(assert (=> (not b_lambda!195051) (not bs!1176684)))

(assert (=> bs!1176684 t!366353))

(declare-fun b_and!345883 () Bool)

(assert (= b_and!345867 (and (=> t!366353 result!323212) b_and!345883)))

(assert (=> bs!1176684 t!366355))

(declare-fun b_and!345885 () Bool)

(assert (= b_and!345869 (and (=> t!366355 result!323214) b_and!345885)))

(assert (=> bs!1176684 t!366357))

(declare-fun b_and!345887 () Bool)

(assert (= b_and!345871 (and (=> t!366357 result!323216) b_and!345887)))

(assert (=> bs!1176684 t!366430))

(declare-fun b_and!345889 () Bool)

(assert (= b_and!345873 (and (=> t!366430 result!323288) b_and!345889)))

(assert (=> bs!1176684 m!5906356))

(assert (=> bs!1176684 m!5907588))

(declare-fun m!5908378 () Bool)

(assert (=> bs!1176684 m!5908378))

(assert (=> bs!1176684 m!5907588))

(assert (=> bs!1176684 m!5908378))

(declare-fun m!5908380 () Bool)

(assert (=> bs!1176684 m!5908380))

(assert (=> d!1574628 d!1574900))

(declare-fun b_lambda!195025 () Bool)

(assert (= b_lambda!194991 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195025)))

(declare-fun b_lambda!195027 () Bool)

(assert (= b_lambda!194961 (or b!4898475 b_lambda!195027)))

(assert (=> d!1574576 d!1574242))

(declare-fun b_lambda!195029 () Bool)

(assert (= b_lambda!194955 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195029)))

(declare-fun b_lambda!195031 () Bool)

(assert (= b_lambda!194989 (or (and b!4898272 b_free!131647) (and b!4898501 b_free!131655 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))))) b_lambda!195031)))

(declare-fun b_lambda!195033 () Bool)

(assert (= b_lambda!194963 (or (and b!4898272 b_free!131647 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (and b!4898501 b_free!131655) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) b_lambda!195033)))

(declare-fun b_lambda!195035 () Bool)

(assert (= b_lambda!194969 (or (and b!4898272 b_free!131647 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (and b!4898501 b_free!131655) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) b_lambda!195035)))

(declare-fun b_lambda!195037 () Bool)

(assert (= b_lambda!194971 (or (and b!4898272 b_free!131647 (= (toValue!11088 (transformation!8181 (h!62878 rulesArg!165))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (and b!4898501 b_free!131655) (and b!4898980 b_free!131663 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) (and b!4900044 b_free!131671 (= (toValue!11088 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toValue!11088 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))))) b_lambda!195037)))

(declare-fun b_lambda!195039 () Bool)

(assert (= b_lambda!194877 (or (and b!4898272 b_free!131649 (= (toChars!10947 (transformation!8181 (h!62878 rulesArg!165))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) (and b!4898501 b_free!131657 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 rulesArg!165)))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) (and b!4898980 b_free!131665 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 rulesArg!165))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) (and b!4900044 b_free!131673 (= (toChars!10947 (transformation!8181 (h!62878 (t!366240 (t!366240 (t!366240 rulesArg!165)))))) (toChars!10947 (transformation!8181 (rule!11389 (_1!33556 (get!19496 lt!2008523))))))) b_lambda!195039)))

(push 1)

(assert (not d!1574740))

(assert (not bm!339893))

(assert (not b!4900028))

(assert (not d!1574724))

(assert (not b!4899943))

(assert (not b!4899611))

(assert (not b!4899901))

(assert (not d!1574478))

(assert (not b!4900048))

(assert (not b!4900132))

(assert (not b_lambda!195047))

(assert (not b!4900137))

(assert (not b!4900120))

(assert b_and!345885)

(assert (not b!4899749))

(assert (not b!4899490))

(assert (not b!4899740))

(assert (not b!4899919))

(assert (not b!4899362))

(assert (not b_lambda!195043))

(assert (not bm!339917))

(assert (not d!1574888))

(assert (not b!4900072))

(assert (not b!4899622))

(assert (not b!4899862))

(assert (not d!1574788))

(assert (not b!4899700))

(assert (not b!4899540))

(assert (not b!4899548))

(assert (not b!4900088))

(assert (not b!4899552))

(assert (not d!1574606))

(assert (not b!4899434))

(assert (not b!4899512))

(assert (not b!4899788))

(assert (not b!4899842))

(assert (not b!4899355))

(assert (not b!4899738))

(assert (not b!4900021))

(assert (not b!4899689))

(assert (not b!4899944))

(assert (not b!4899781))

(assert (not b!4899702))

(assert (not b!4899353))

(assert (not b!4899972))

(assert (not b_next!132439))

(assert (not b!4899451))

(assert (not b!4899793))

(assert (not b!4900001))

(assert (not d!1574872))

(assert (not d!1574500))

(assert b_and!345875)

(assert (not b!4900040))

(assert (not tb!259535))

(assert (not b!4899774))

(assert (not b!4899561))

(assert (not b!4900131))

(assert (not b!4900039))

(assert (not b!4899903))

(assert (not b!4899479))

(assert (not b!4898981))

(assert (not tb!259577))

(assert (not b!4899449))

(assert (not d!1574656))

(assert (not b!4899778))

(assert (not b!4899757))

(assert (not b!4899435))

(assert (not b!4899715))

(assert (not d!1574672))

(assert (not b_lambda!195051))

(assert (not b!4899375))

(assert (not b!4899599))

(assert (not tb!259671))

(assert (not bm!339930))

(assert (not b!4899907))

(assert (not tb!259589))

(assert (not d!1574654))

(assert (not bm!339938))

(assert (not b!4899438))

(assert (not d!1574884))

(assert (not d!1574786))

(assert (not b!4899953))

(assert (not b!4900058))

(assert (not bm!339955))

(assert (not b!4899924))

(assert (not b!4899752))

(assert (not b!4900079))

(assert (not b!4900094))

(assert (not d!1574446))

(assert (not b!4899920))

(assert (not d!1574548))

(assert (not b!4899559))

(assert (not b!4900128))

(assert (not b!4899957))

(assert (not bm!339950))

(assert (not b!4898984))

(assert (not b!4899454))

(assert (not b!4899657))

(assert (not b!4899432))

(assert (not b!4899607))

(assert (not d!1574718))

(assert (not b!4899805))

(assert (not tb!259601))

(assert (not b!4899963))

(assert (not d!1574600))

(assert (not bm!339962))

(assert (not b!4899719))

(assert (not b!4899912))

(assert (not b!4899948))

(assert (not tb!259583))

(assert (not bm!339949))

(assert (not b!4899447))

(assert (not bm!339947))

(assert (not b!4899453))

(assert (not b_next!132461))

(assert (not bm!339939))

(assert (not d!1574844))

(assert (not d!1574886))

(assert (not b!4900091))

(assert (not b!4899390))

(assert (not d!1574840))

(assert (not tb!259523))

(assert (not b!4899893))

(assert (not b!4899822))

(assert (not d!1574766))

(assert (not b!4899354))

(assert (not b!4900065))

(assert (not d!1574720))

(assert (not b!4899879))

(assert b_and!345889)

(assert (not b!4899987))

(assert (not b!4899796))

(assert (not b!4900041))

(assert (not b!4900007))

(assert (not b!4900078))

(assert (not bm!339943))

(assert (not b!4899845))

(assert (not d!1574658))

(assert (not b!4899947))

(assert (not bm!339901))

(assert (not bm!339934))

(assert (not d!1574728))

(assert (not b!4900090))

(assert (not b!4899680))

(assert (not tb!259613))

(assert (not b!4899941))

(assert (not b!4899436))

(assert (not b!4899498))

(assert (not bm!339961))

(assert (not b_lambda!195033))

(assert (not b!4899440))

(assert (not b!4899642))

(assert (not b!4899430))

(assert (not b!4899516))

(assert (not b!4899877))

(assert (not b_lambda!194941))

(assert (not bm!339906))

(assert (not b!4899780))

(assert (not b!4899824))

(assert (not b!4899993))

(assert (not d!1574676))

(assert (not b!4899533))

(assert (not d!1574390))

(assert (not tb!259663))

(assert (not b!4899771))

(assert (not b!4899933))

(assert (not bm!339932))

(assert (not b!4899380))

(assert (not d!1574526))

(assert (not b!4900095))

(assert (not b!4899940))

(assert (not b!4899804))

(assert (not b!4899756))

(assert (not d!1574790))

(assert (not b!4899833))

(assert (not b_lambda!194891))

(assert (not b!4899358))

(assert (not d!1574756))

(assert (not d!1574398))

(assert (not b!4899950))

(assert (not b!4900136))

(assert (not tb!259559))

(assert (not b!4899543))

(assert b_and!345877)

(assert (not d!1574856))

(assert (not b_lambda!195025))

(assert (not b!4899520))

(assert (not b!4900062))

(assert (not bm!339953))

(assert (not b!4899905))

(assert (not b!4898812))

(assert (not b!4899790))

(assert (not b!4899442))

(assert (not bm!339958))

(assert (not d!1574588))

(assert (not b!4899660))

(assert (not b_lambda!195021))

(assert (not d!1574646))

(assert (not b!4900087))

(assert (not d!1574648))

(assert (not d!1574760))

(assert (not b!4899841))

(assert (not tb!259553))

(assert (not d!1574590))

(assert (not b!4899853))

(assert (not d!1574542))

(assert (not b!4900075))

(assert (not b!4899988))

(assert (not b!4899983))

(assert (not bm!339928))

(assert (not b_lambda!194881))

(assert (not bm!339946))

(assert (not d!1574762))

(assert (not b!4899545))

(assert (not b!4899713))

(assert (not bm!339954))

(assert (not b!4899725))

(assert (not b!4899873))

(assert (not b!4900123))

(assert (not b!4899684))

(assert (not b!4900015))

(assert (not b!4899910))

(assert (not bm!339887))

(assert (not b!4899917))

(assert (not b!4899770))

(assert (not bm!339948))

(assert (not d!1574814))

(assert (not d!1574776))

(assert (not b_next!132463))

(assert (not b!4899676))

(assert (not b!4899444))

(assert (not bm!339929))

(assert (not d!1574642))

(assert (not b!4900057))

(assert (not b!4900017))

(assert (not b!4899946))

(assert (not b!4899492))

(assert (not b!4899844))

(assert (not b!4899455))

(assert (not b!4899450))

(assert (not b!4899612))

(assert (not b!4899851))

(assert (not d!1574838))

(assert (not b!4899928))

(assert (not b!4899807))

(assert (not b_lambda!195013))

(assert (not b!4899488))

(assert (not d!1574822))

(assert (not b_lambda!194949))

(assert (not d!1574708))

(assert (not b!4899930))

(assert (not bm!339937))

(assert (not b!4899929))

(assert (not d!1574404))

(assert (not bm!339894))

(assert (not b!4900135))

(assert (not b!4900111))

(assert (not b!4899698))

(assert (not b!4900134))

(assert (not b!4900023))

(assert (not b!4899393))

(assert (not d!1574714))

(assert (not b!4899789))

(assert (not b!4899865))

(assert (not b!4899932))

(assert (not b!4900122))

(assert (not b!4899475))

(assert (not b!4900036))

(assert (not b!4899587))

(assert (not b!4899703))

(assert (not bm!339951))

(assert (not b_lambda!195049))

(assert (not d!1574420))

(assert (not b!4899773))

(assert (not b_lambda!195015))

(assert (not bm!339918))

(assert (not bm!339907))

(assert (not b_lambda!194977))

(assert (not b!4899426))

(assert (not d!1574474))

(assert (not b_lambda!194937))

(assert (not b!4899945))

(assert (not b_lambda!194889))

(assert (not bm!339890))

(assert (not b!4900033))

(assert (not b!4899872))

(assert (not b!4899990))

(assert (not d!1574738))

(assert (not bm!339888))

(assert (not b!4899503))

(assert (not d!1574770))

(assert (not b!4899412))

(assert (not b!4900051))

(assert (not d!1574746))

(assert (not b!4900061))

(assert (not d!1574484))

(assert (not bm!339931))

(assert (not b!4900005))

(assert (not b_lambda!194887))

(assert (not b!4900086))

(assert (not b!4900070))

(assert (not b!4899826))

(assert (not b!4899951))

(assert (not bm!339945))

(assert (not b!4899663))

(assert (not d!1574522))

(assert tp_is_empty!35793)

(assert (not b!4899921))

(assert (not b!4899673))

(assert (not bm!339898))

(assert (not b!4899518))

(assert (not bm!339940))

(assert (not b_lambda!195005))

(assert (not b!4899969))

(assert (not b!4899746))

(assert (not d!1574632))

(assert (not d!1574744))

(assert (not b_lambda!194945))

(assert (not b!4899477))

(assert (not d!1574634))

(assert (not b!4899721))

(assert (not b_lambda!194883))

(assert (not b!4899962))

(assert b_and!345881)

(assert (not b!4899456))

(assert (not b!4899784))

(assert (not b!4899718))

(assert (not bm!339896))

(assert (not b!4899966))

(assert (not b_lambda!194981))

(assert (not b!4899915))

(assert (not d!1574578))

(assert (not d!1574792))

(assert (not b!4899476))

(assert (not b!4899869))

(assert (not b!4899550))

(assert (not b!4899716))

(assert (not bm!339899))

(assert (not bm!339952))

(assert (not b!4900035))

(assert (not b!4899727))

(assert (not b!4899691))

(assert (not b!4899875))

(assert (not b!4899615))

(assert (not b_lambda!194999))

(assert (not b!4899967))

(assert (not b!4899536))

(assert (not b!4899616))

(assert (not b!4899606))

(assert (not b!4899385))

(assert (not tb!259547))

(assert (not b!4900066))

(assert (not bs!1176684))

(assert (not d!1574630))

(assert (not b!4900107))

(assert (not d!1574650))

(assert (not b!4899707))

(assert (not d!1574830))

(assert (not b!4899597))

(assert (not b!4899509))

(assert (not b!4900118))

(assert (not b!4899997))

(assert (not b!4900002))

(assert (not d!1574620))

(assert (not b!4900083))

(assert (not b!4899712))

(assert (not b!4900106))

(assert (not b!4899750))

(assert (not d!1574598))

(assert (not b!4899544))

(assert (not b!4899694))

(assert (not b!4899404))

(assert (not b!4899376))

(assert (not b!4900071))

(assert (not b!4900098))

(assert (not b!4899437))

(assert (not b!4899517))

(assert (not b_next!132445))

(assert (not b!4899743))

(assert (not b!4899739))

(assert (not b!4900034))

(assert (not d!1574780))

(assert (not d!1574752))

(assert (not d!1574490))

(assert (not bm!339926))

(assert (not b!4899429))

(assert (not b!4899665))

(assert (not b!4900068))

(assert (not d!1574536))

(assert (not bm!339897))

(assert (not bs!1176682))

(assert (not b!4899836))

(assert (not d!1574550))

(assert (not d!1574568))

(assert (not b!4899986))

(assert (not b!4899998))

(assert (not b!4899366))

(assert (not b!4900027))

(assert (not d!1574566))

(assert (not b!4899830))

(assert (not b!4899708))

(assert (not b!4899792))

(assert (not b!4899406))

(assert (not d!1574750))

(assert (not b!4899679))

(assert (not d!1574808))

(assert (not b!4900096))

(assert (not d!1574402))

(assert (not d!1574818))

(assert (not b!4900047))

(assert (not b!4899501))

(assert (not b!4900110))

(assert (not b!4899547))

(assert (not d!1574748))

(assert (not b!4899482))

(assert (not b_lambda!195011))

(assert (not b!4900030))

(assert (not b!4899372))

(assert (not b!4899560))

(assert (not b!4899852))

(assert (not b_lambda!194985))

(assert (not b!4900019))

(assert (not b!4899856))

(assert (not b_lambda!195017))

(assert (not b!4899761))

(assert (not b!4900018))

(assert (not b!4900082))

(assert (not b!4899994))

(assert (not b!4899470))

(assert (not b_lambda!195009))

(assert (not b!4899542))

(assert (not b!4900011))

(assert (not b!4899525))

(assert (not b!4899431))

(assert (not b_lambda!195039))

(assert (not b!4899494))

(assert (not b!4899769))

(assert (not b!4899555))

(assert (not bm!339933))

(assert (not d!1574826))

(assert (not d!1574580))

(assert (not tb!259595))

(assert (not b!4900126))

(assert (not b!4899885))

(assert (not b!4899474))

(assert (not d!1574544))

(assert (not b_lambda!195029))

(assert (not d!1574586))

(assert (not d!1574834))

(assert (not b!4899728))

(assert (not d!1574462))

(assert (not b!4900139))

(assert (not b!4900043))

(assert (not b!4899949))

(assert (not b!4899662))

(assert (not b!4899908))

(assert (not b!4899481))

(assert (not bm!339957))

(assert (not d!1574426))

(assert (not d!1574438))

(assert (not b!4900054))

(assert (not tb!259529))

(assert (not d!1574560))

(assert (not b!4899808))

(assert (not b!4899394))

(assert (not d!1574772))

(assert (not d!1574876))

(assert (not d!1574418))

(assert (not b!4900029))

(assert (not d!1574612))

(assert (not b!4900056))

(assert (not b!4899417))

(assert (not b!4899541))

(assert (not b!4899723))

(assert (not b!4900114))

(assert (not b!4900006))

(assert (not b_lambda!195023))

(assert (not bm!339959))

(assert (not b!4899357))

(assert (not bm!339900))

(assert (not d!1574864))

(assert (not b!4900102))

(assert (not b!4899563))

(assert (not bm!339903))

(assert (not d!1574396))

(assert (not b!4900127))

(assert (not b!4899730))

(assert (not d!1574688))

(assert (not b!4899382))

(assert (not b!4899398))

(assert (not d!1574528))

(assert (not tb!259565))

(assert (not d!1574432))

(assert (not bs!1176683))

(assert (not b_next!132447))

(assert (not b!4899732))

(assert (not b!4900108))

(assert (not b!4899687))

(assert (not b!4899803))

(assert (not d!1574628))

(assert (not bm!339902))

(assert (not d!1574496))

(assert (not b_lambda!195007))

(assert (not d!1574552))

(assert (not b_lambda!195001))

(assert (not b_lambda!195041))

(assert (not b!4899989))

(assert (not b!4899418))

(assert (not d!1574784))

(assert (not b!4899848))

(assert (not b_lambda!195045))

(assert (not b!4900124))

(assert (not b!4899603))

(assert (not b!4900037))

(assert b_and!345883)

(assert (not d!1574616))

(assert (not b!4899409))

(assert (not b!4899424))

(assert (not b!4900084))

(assert (not d!1574712))

(assert (not b!4899600))

(assert (not bm!339936))

(assert (not d!1574572))

(assert (not d!1574832))

(assert (not b!4899958))

(assert (not d!1574882))

(assert (not b!4900115))

(assert (not b!4899751))

(assert (not b!4899458))

(assert (not b!4900013))

(assert (not b!4899785))

(assert (not b_lambda!194939))

(assert (not b!4899656))

(assert (not b!4899909))

(assert (not b!4900060))

(assert (not d!1574392))

(assert (not b_lambda!195019))

(assert (not bm!339895))

(assert (not b!4900063))

(assert (not bm!339942))

(assert (not b!4899651))

(assert (not b_next!132453))

(assert (not d!1574732))

(assert (not b!4899671))

(assert (not b!4900076))

(assert (not b!4900055))

(assert (not b!4899840))

(assert (not b!4899711))

(assert (not b_lambda!194953))

(assert (not d!1574424))

(assert (not b!4899744))

(assert (not b!4899952))

(assert (not b!4900052))

(assert (not d!1574604))

(assert (not b!4900119))

(assert (not d!1574492))

(assert (not d!1574636))

(assert (not b!4899864))

(assert (not b!4899471))

(assert (not b_next!132437))

(assert (not b_lambda!194943))

(assert (not b!4899762))

(assert (not b!4900103))

(assert (not d!1574448))

(assert (not b!4899906))

(assert (not b!4899799))

(assert (not b!4899825))

(assert b_and!345879)

(assert (not d!1574410))

(assert (not b!4900022))

(assert (not d!1574758))

(assert (not b_lambda!195035))

(assert (not b!4899659))

(assert (not b_lambda!195031))

(assert (not b_lambda!195037))

(assert (not b!4900003))

(assert (not b_lambda!195003))

(assert (not b!4900112))

(assert (not b!4899365))

(assert (not b!4899422))

(assert (not b!4899478))

(assert (not b!4899709))

(assert (not b!4900049))

(assert (not tb!259541))

(assert (not b!4898999))

(assert (not bs!1176680))

(assert (not d!1574530))

(assert (not d!1574638))

(assert (not d!1574584))

(assert (not b!4899551))

(assert (not d!1574782))

(assert (not d!1574466))

(assert (not b!4899621))

(assert (not b!4899861))

(assert (not b!4899887))

(assert (not d!1574836))

(assert (not bm!339905))

(assert (not d!1574664))

(assert (not b!4899361))

(assert (not b!4899428))

(assert (not b!4900032))

(assert (not b!4900010))

(assert (not b!4899686))

(assert (not b!4899502))

(assert (not b!4899445))

(assert (not b!4900026))

(assert (not d!1574486))

(assert (not d!1574768))

(assert (not b!4899699))

(assert (not d!1574442))

(assert (not b!4899413))

(assert (not b!4899500))

(assert (not b!4900014))

(assert (not d!1574806))

(assert (not d!1574592))

(assert (not b!4900099))

(assert (not b!4899913))

(assert (not b!4899984))

(assert (not bm!339891))

(assert (not d!1574408))

(assert (not b!4899995))

(assert (not b_next!132455))

(assert (not b!4900042))

(assert (not bm!339904))

(assert (not b!4899391))

(assert (not bm!339892))

(assert (not b!4899991))

(assert (not b!4900092))

(assert (not b!4899497))

(assert (not d!1574476))

(assert (not b!4899860))

(assert (not b!4900074))

(assert (not b_lambda!194975))

(assert (not tb!259607))

(assert (not b!4899742))

(assert (not b!4899539))

(assert (not b!4899890))

(assert (not b!4899521))

(assert (not d!1574546))

(assert (not bm!339889))

(assert (not b!4899531))

(assert (not d!1574582))

(assert (not b!4900067))

(assert (not d!1574824))

(assert (not d!1574562))

(assert (not bm!339935))

(assert (not b_lambda!194983))

(assert (not d!1574452))

(assert (not b!4900059))

(assert (not b!4900053))

(assert (not d!1574416))

(assert (not bm!339886))

(assert (not b!4900100))

(assert (not b!4900009))

(assert (not b!4899389))

(assert b_and!345887)

(assert (not b!4899379))

(assert (not d!1574472))

(assert (not b!4899937))

(assert (not b!4899849))

(assert (not tb!259571))

(assert (not b!4899999))

(assert (not b!4900116))

(assert (not b!4900025))

(assert (not b!4899421))

(assert (not b_lambda!194885))

(assert (not d!1574512))

(assert (not b_lambda!195027))

(assert (not b!4899654))

(assert (not b!4899765))

(assert (not b!4899000))

(assert (not b!4900045))

(assert (not b!4899448))

(assert (not bs!1176681))

(assert (not b!4899710))

(assert (not d!1574862))

(assert (not b!4899564))

(assert (not b!4900104))

(assert (not b!4900130))

(assert (not b!4900080))

(assert (not b!4899683))

(assert (not b!4899970))

(assert (not b!4899811))

(assert (not b!4899821))

(assert (not b!4899469))

(check-sat)

(pop 1)

(push 1)

(assert b_and!345885)

(assert (not b_next!132461))

(assert b_and!345889)

(assert b_and!345877)

(assert (not b_next!132463))

(assert b_and!345881)

(assert (not b_next!132445))

(assert (not b_next!132447))

(assert b_and!345883)

(assert (not b_next!132453))

(assert (not b_next!132455))

(assert b_and!345887)

(assert (not b_next!132439))

(assert b_and!345875)

(assert (not b_next!132437))

(assert b_and!345879)

(check-sat)

(pop 1)


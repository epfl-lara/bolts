; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522850 () Bool)

(assert start!522850)

(declare-fun b!4959475 () Bool)

(declare-fun b_free!132471 () Bool)

(declare-fun b_next!133261 () Bool)

(assert (=> b!4959475 (= b_free!132471 (not b_next!133261))))

(declare-fun tp!1390984 () Bool)

(declare-fun b_and!347323 () Bool)

(assert (=> b!4959475 (= tp!1390984 b_and!347323)))

(declare-fun b_free!132473 () Bool)

(declare-fun b_next!133263 () Bool)

(assert (=> b!4959475 (= b_free!132473 (not b_next!133263))))

(declare-fun tp!1390982 () Bool)

(declare-fun b_and!347325 () Bool)

(assert (=> b!4959475 (= tp!1390982 b_and!347325)))

(declare-fun b!4959473 () Bool)

(declare-fun e!3099601 () Bool)

(assert (=> b!4959473 (= e!3099601 true)))

(declare-datatypes ((List!57448 0))(
  ( (Nil!57324) (Cons!57324 (h!63772 (_ BitVec 16)) (t!368014 List!57448)) )
))
(declare-datatypes ((TokenValue!8664 0))(
  ( (FloatLiteralValue!17328 (text!61093 List!57448)) (TokenValueExt!8663 (__x!34621 Int)) (Broken!43320 (value!267505 List!57448)) (Object!8787) (End!8664) (Def!8664) (Underscore!8664) (Match!8664) (Else!8664) (Error!8664) (Case!8664) (If!8664) (Extends!8664) (Abstract!8664) (Class!8664) (Val!8664) (DelimiterValue!17328 (del!8724 List!57448)) (KeywordValue!8670 (value!267506 List!57448)) (CommentValue!17328 (value!267507 List!57448)) (WhitespaceValue!17328 (value!267508 List!57448)) (IndentationValue!8664 (value!267509 List!57448)) (String!65193) (Int32!8664) (Broken!43321 (value!267510 List!57448)) (Boolean!8665) (Unit!148218) (OperatorValue!8667 (op!8724 List!57448)) (IdentifierValue!17328 (value!267511 List!57448)) (IdentifierValue!17329 (value!267512 List!57448)) (WhitespaceValue!17329 (value!267513 List!57448)) (True!17328) (False!17328) (Broken!43322 (value!267514 List!57448)) (Broken!43323 (value!267515 List!57448)) (True!17329) (RightBrace!8664) (RightBracket!8664) (Colon!8664) (Null!8664) (Comma!8664) (LeftBracket!8664) (False!17329) (LeftBrace!8664) (ImaginaryLiteralValue!8664 (text!61094 List!57448)) (StringLiteralValue!25992 (value!267516 List!57448)) (EOFValue!8664 (value!267517 List!57448)) (IdentValue!8664 (value!267518 List!57448)) (DelimiterValue!17329 (value!267519 List!57448)) (DedentValue!8664 (value!267520 List!57448)) (NewLineValue!8664 (value!267521 List!57448)) (IntegerValue!25992 (value!267522 (_ BitVec 32)) (text!61095 List!57448)) (IntegerValue!25993 (value!267523 Int) (text!61096 List!57448)) (Times!8664) (Or!8664) (Equal!8664) (Minus!8664) (Broken!43324 (value!267524 List!57448)) (And!8664) (Div!8664) (LessEqual!8664) (Mod!8664) (Concat!22251) (Not!8664) (Plus!8664) (SpaceValue!8664 (value!267525 List!57448)) (IntegerValue!25994 (value!267526 Int) (text!61097 List!57448)) (StringLiteralValue!25993 (text!61098 List!57448)) (FloatLiteralValue!17329 (text!61099 List!57448)) (BytesLiteralValue!8664 (value!267527 List!57448)) (CommentValue!17329 (value!267528 List!57448)) (StringLiteralValue!25994 (value!267529 List!57448)) (ErrorTokenValue!8664 (msg!8725 List!57448)) )
))
(declare-datatypes ((C!27424 0))(
  ( (C!27425 (val!23078 Int)) )
))
(declare-datatypes ((List!57449 0))(
  ( (Nil!57325) (Cons!57325 (h!63773 C!27424) (t!368015 List!57449)) )
))
(declare-datatypes ((IArray!30273 0))(
  ( (IArray!30274 (innerList!15194 List!57449)) )
))
(declare-datatypes ((Regex!13587 0))(
  ( (ElementMatch!13587 (c!846429 C!27424)) (Concat!22252 (regOne!27686 Regex!13587) (regTwo!27686 Regex!13587)) (EmptyExpr!13587) (Star!13587 (reg!13916 Regex!13587)) (EmptyLang!13587) (Union!13587 (regOne!27687 Regex!13587) (regTwo!27687 Regex!13587)) )
))
(declare-datatypes ((String!65194 0))(
  ( (String!65195 (value!267530 String)) )
))
(declare-datatypes ((Conc!15106 0))(
  ( (Node!15106 (left!41805 Conc!15106) (right!42135 Conc!15106) (csize!30442 Int) (cheight!15317 Int)) (Leaf!25108 (xs!18432 IArray!30273) (csize!30443 Int)) (Empty!15106) )
))
(declare-datatypes ((BalanceConc!29642 0))(
  ( (BalanceConc!29643 (c!846430 Conc!15106)) )
))
(declare-datatypes ((TokenValueInjection!16636 0))(
  ( (TokenValueInjection!16637 (toValue!11305 Int) (toChars!11164 Int)) )
))
(declare-datatypes ((Rule!16508 0))(
  ( (Rule!16509 (regex!8354 Regex!13587) (tag!9218 String!65194) (isSeparator!8354 Bool) (transformation!8354 TokenValueInjection!16636)) )
))
(declare-datatypes ((List!57450 0))(
  ( (Nil!57326) (Cons!57326 (h!63774 Rule!16508) (t!368016 List!57450)) )
))
(declare-fun rulesArg!259 () List!57450)

(declare-fun lt!2047450 () List!57449)

(declare-datatypes ((Token!15208 0))(
  ( (Token!15209 (value!267531 TokenValue!8664) (rule!11580 Rule!16508) (size!37996 Int) (originalCharacters!8635 List!57449)) )
))
(declare-datatypes ((tuple2!61972 0))(
  ( (tuple2!61973 (_1!34289 Token!15208) (_2!34289 List!57449)) )
))
(declare-datatypes ((Option!14377 0))(
  ( (None!14376) (Some!14376 (v!50361 tuple2!61972)) )
))
(declare-fun lt!2047454 () Option!14377)

(declare-datatypes ((LexerInterface!7946 0))(
  ( (LexerInterfaceExt!7943 (__x!34622 Int)) (Lexer!7944) )
))
(declare-fun thiss!15247 () LexerInterface!7946)

(declare-fun maxPrefix!4641 (LexerInterface!7946 List!57450 List!57449) Option!14377)

(assert (=> b!4959473 (= lt!2047454 (maxPrefix!4641 thiss!15247 rulesArg!259 lt!2047450))))

(declare-fun b!4959474 () Bool)

(declare-fun e!3099598 () Bool)

(declare-fun input!1342 () BalanceConc!29642)

(declare-fun tp!1390983 () Bool)

(declare-fun inv!74834 (Conc!15106) Bool)

(assert (=> b!4959474 (= e!3099598 (and (inv!74834 (c!846430 input!1342)) tp!1390983))))

(declare-fun e!3099595 () Bool)

(assert (=> b!4959475 (= e!3099595 (and tp!1390984 tp!1390982))))

(declare-fun b!4959476 () Bool)

(declare-fun res!2116581 () Bool)

(assert (=> b!4959476 (=> res!2116581 e!3099601)))

(declare-fun lt!2047451 () Bool)

(assert (=> b!4959476 (= res!2116581 lt!2047451)))

(declare-fun b!4959477 () Bool)

(declare-fun e!3099599 () Bool)

(declare-fun e!3099605 () Bool)

(assert (=> b!4959477 (= e!3099599 (not e!3099605))))

(declare-fun res!2116586 () Bool)

(assert (=> b!4959477 (=> res!2116586 e!3099605)))

(get-info :version)

(assert (=> b!4959477 (= res!2116586 (or (and ((_ is Cons!57326) rulesArg!259) ((_ is Nil!57326) (t!368016 rulesArg!259))) (not ((_ is Cons!57326) rulesArg!259))))))

(declare-fun isPrefix!5207 (List!57449 List!57449) Bool)

(assert (=> b!4959477 (isPrefix!5207 lt!2047450 lt!2047450)))

(declare-datatypes ((Unit!148219 0))(
  ( (Unit!148220) )
))
(declare-fun lt!2047449 () Unit!148219)

(declare-fun lemmaIsPrefixRefl!3531 (List!57449 List!57449) Unit!148219)

(assert (=> b!4959477 (= lt!2047449 (lemmaIsPrefixRefl!3531 lt!2047450 lt!2047450))))

(declare-fun b!4959478 () Bool)

(declare-fun res!2116588 () Bool)

(declare-fun e!3099607 () Bool)

(assert (=> b!4959478 (=> (not res!2116588) (not e!3099607))))

(declare-fun rulesValidInductive!3257 (LexerInterface!7946 List!57450) Bool)

(assert (=> b!4959478 (= res!2116588 (rulesValidInductive!3257 thiss!15247 rulesArg!259))))

(declare-fun b!4959480 () Bool)

(assert (=> b!4959480 (= e!3099607 e!3099599)))

(declare-fun res!2116578 () Bool)

(assert (=> b!4959480 (=> (not res!2116578) (not e!3099599))))

(declare-fun totalInput!464 () BalanceConc!29642)

(declare-fun isSuffix!1153 (List!57449 List!57449) Bool)

(declare-fun list!18305 (BalanceConc!29642) List!57449)

(assert (=> b!4959480 (= res!2116578 (isSuffix!1153 lt!2047450 (list!18305 totalInput!464)))))

(assert (=> b!4959480 (= lt!2047450 (list!18305 input!1342))))

(declare-fun b!4959481 () Bool)

(declare-fun e!3099596 () Bool)

(declare-datatypes ((tuple2!61974 0))(
  ( (tuple2!61975 (_1!34290 Token!15208) (_2!34290 BalanceConc!29642)) )
))
(declare-fun lt!2047456 () tuple2!61974)

(declare-fun lt!2047458 () tuple2!61972)

(assert (=> b!4959481 (= e!3099596 (not (= (list!18305 (_2!34290 lt!2047456)) (_2!34289 lt!2047458))))))

(declare-fun b!4959482 () Bool)

(declare-fun e!3099606 () Bool)

(assert (=> b!4959482 (= e!3099605 e!3099606)))

(declare-fun res!2116579 () Bool)

(assert (=> b!4959482 (=> res!2116579 e!3099606)))

(declare-datatypes ((Option!14378 0))(
  ( (None!14377) (Some!14377 (v!50362 tuple2!61974)) )
))
(declare-fun lt!2047457 () Option!14378)

(declare-fun lt!2047452 () Option!14378)

(assert (=> b!4959482 (= res!2116579 (or (and ((_ is None!14377) lt!2047457) ((_ is None!14377) lt!2047452)) ((_ is None!14377) lt!2047452) ((_ is None!14377) lt!2047457) (< (size!37996 (_1!34290 (v!50362 lt!2047457))) (size!37996 (_1!34290 (v!50362 lt!2047452))))))))

(declare-fun maxPrefixZipperSequenceV2!685 (LexerInterface!7946 List!57450 BalanceConc!29642 BalanceConc!29642) Option!14378)

(assert (=> b!4959482 (= lt!2047452 (maxPrefixZipperSequenceV2!685 thiss!15247 (t!368016 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!338 (LexerInterface!7946 Rule!16508 BalanceConc!29642 BalanceConc!29642) Option!14378)

(assert (=> b!4959482 (= lt!2047457 (maxPrefixOneRuleZipperSequenceV2!338 thiss!15247 (h!63774 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4959483 () Bool)

(declare-fun e!3099600 () Bool)

(assert (=> b!4959483 (= e!3099606 e!3099600)))

(declare-fun res!2116580 () Bool)

(assert (=> b!4959483 (=> res!2116580 e!3099600)))

(declare-fun lt!2047455 () Bool)

(declare-fun lt!2047453 () Option!14377)

(declare-fun isDefined!11296 (Option!14377) Bool)

(assert (=> b!4959483 (= res!2116580 (not (= lt!2047455 (isDefined!11296 lt!2047453))))))

(declare-fun isDefined!11297 (Option!14378) Bool)

(assert (=> b!4959483 (= lt!2047455 (isDefined!11297 lt!2047457))))

(declare-fun maxPrefixZipper!751 (LexerInterface!7946 List!57450 List!57449) Option!14377)

(assert (=> b!4959483 (= lt!2047453 (maxPrefixZipper!751 thiss!15247 rulesArg!259 lt!2047450))))

(declare-fun b!4959484 () Bool)

(declare-fun e!3099602 () Bool)

(declare-fun tp!1390986 () Bool)

(assert (=> b!4959484 (= e!3099602 (and (inv!74834 (c!846430 totalInput!464)) tp!1390986))))

(declare-fun b!4959485 () Bool)

(declare-fun res!2116582 () Bool)

(assert (=> b!4959485 (=> (not res!2116582) (not e!3099607))))

(declare-fun isEmpty!30834 (List!57450) Bool)

(assert (=> b!4959485 (= res!2116582 (not (isEmpty!30834 rulesArg!259)))))

(declare-fun b!4959486 () Bool)

(declare-fun e!3099597 () Bool)

(declare-fun e!3099603 () Bool)

(declare-fun tp!1390985 () Bool)

(assert (=> b!4959486 (= e!3099597 (and e!3099603 tp!1390985))))

(declare-fun tp!1390981 () Bool)

(declare-fun b!4959487 () Bool)

(declare-fun inv!74830 (String!65194) Bool)

(declare-fun inv!74835 (TokenValueInjection!16636) Bool)

(assert (=> b!4959487 (= e!3099603 (and tp!1390981 (inv!74830 (tag!9218 (h!63774 rulesArg!259))) (inv!74835 (transformation!8354 (h!63774 rulesArg!259))) e!3099595))))

(declare-fun b!4959488 () Bool)

(declare-fun e!3099594 () Bool)

(assert (=> b!4959488 (= e!3099594 e!3099596)))

(declare-fun res!2116584 () Bool)

(assert (=> b!4959488 (=> res!2116584 e!3099596)))

(assert (=> b!4959488 (= res!2116584 (not (= (_1!34290 lt!2047456) (_1!34289 lt!2047458))))))

(declare-fun get!19862 (Option!14377) tuple2!61972)

(assert (=> b!4959488 (= lt!2047458 (get!19862 lt!2047453))))

(declare-fun get!19863 (Option!14378) tuple2!61974)

(assert (=> b!4959488 (= lt!2047456 (get!19863 lt!2047457))))

(declare-fun res!2116585 () Bool)

(assert (=> start!522850 (=> (not res!2116585) (not e!3099607))))

(assert (=> start!522850 (= res!2116585 ((_ is Lexer!7944) thiss!15247))))

(assert (=> start!522850 e!3099607))

(assert (=> start!522850 true))

(assert (=> start!522850 e!3099597))

(declare-fun inv!74836 (BalanceConc!29642) Bool)

(assert (=> start!522850 (and (inv!74836 input!1342) e!3099598)))

(assert (=> start!522850 (and (inv!74836 totalInput!464) e!3099602)))

(declare-fun b!4959479 () Bool)

(assert (=> b!4959479 (= e!3099600 e!3099601)))

(declare-fun res!2116587 () Bool)

(assert (=> b!4959479 (=> res!2116587 e!3099601)))

(assert (=> b!4959479 (= res!2116587 e!3099594)))

(declare-fun res!2116583 () Bool)

(assert (=> b!4959479 (=> (not res!2116583) (not e!3099594))))

(assert (=> b!4959479 (= res!2116583 (not lt!2047451))))

(assert (=> b!4959479 (= lt!2047451 (not lt!2047455))))

(assert (= (and start!522850 res!2116585) b!4959478))

(assert (= (and b!4959478 res!2116588) b!4959485))

(assert (= (and b!4959485 res!2116582) b!4959480))

(assert (= (and b!4959480 res!2116578) b!4959477))

(assert (= (and b!4959477 (not res!2116586)) b!4959482))

(assert (= (and b!4959482 (not res!2116579)) b!4959483))

(assert (= (and b!4959483 (not res!2116580)) b!4959479))

(assert (= (and b!4959479 res!2116583) b!4959488))

(assert (= (and b!4959488 (not res!2116584)) b!4959481))

(assert (= (and b!4959479 (not res!2116587)) b!4959476))

(assert (= (and b!4959476 (not res!2116581)) b!4959473))

(assert (= b!4959487 b!4959475))

(assert (= b!4959486 b!4959487))

(assert (= (and start!522850 ((_ is Cons!57326) rulesArg!259)) b!4959486))

(assert (= start!522850 b!4959474))

(assert (= start!522850 b!4959484))

(declare-fun m!5984036 () Bool)

(assert (=> b!4959487 m!5984036))

(declare-fun m!5984038 () Bool)

(assert (=> b!4959487 m!5984038))

(declare-fun m!5984040 () Bool)

(assert (=> b!4959485 m!5984040))

(declare-fun m!5984042 () Bool)

(assert (=> b!4959477 m!5984042))

(declare-fun m!5984044 () Bool)

(assert (=> b!4959477 m!5984044))

(declare-fun m!5984046 () Bool)

(assert (=> b!4959483 m!5984046))

(declare-fun m!5984048 () Bool)

(assert (=> b!4959483 m!5984048))

(declare-fun m!5984050 () Bool)

(assert (=> b!4959483 m!5984050))

(declare-fun m!5984052 () Bool)

(assert (=> b!4959473 m!5984052))

(declare-fun m!5984054 () Bool)

(assert (=> b!4959481 m!5984054))

(declare-fun m!5984056 () Bool)

(assert (=> b!4959474 m!5984056))

(declare-fun m!5984058 () Bool)

(assert (=> b!4959484 m!5984058))

(declare-fun m!5984060 () Bool)

(assert (=> b!4959482 m!5984060))

(declare-fun m!5984062 () Bool)

(assert (=> b!4959482 m!5984062))

(declare-fun m!5984064 () Bool)

(assert (=> b!4959488 m!5984064))

(declare-fun m!5984066 () Bool)

(assert (=> b!4959488 m!5984066))

(declare-fun m!5984068 () Bool)

(assert (=> start!522850 m!5984068))

(declare-fun m!5984070 () Bool)

(assert (=> start!522850 m!5984070))

(declare-fun m!5984072 () Bool)

(assert (=> b!4959478 m!5984072))

(declare-fun m!5984074 () Bool)

(assert (=> b!4959480 m!5984074))

(assert (=> b!4959480 m!5984074))

(declare-fun m!5984076 () Bool)

(assert (=> b!4959480 m!5984076))

(declare-fun m!5984078 () Bool)

(assert (=> b!4959480 m!5984078))

(check-sat (not b_next!133261) (not b!4959484) (not b!4959478) (not b!4959487) b_and!347325 (not b!4959473) (not b!4959488) (not b!4959477) (not b!4959486) (not b!4959474) b_and!347323 (not b!4959483) (not b!4959481) (not b!4959480) (not b!4959482) (not start!522850) (not b_next!133263) (not b!4959485))
(check-sat b_and!347323 b_and!347325 (not b_next!133261) (not b_next!133263))

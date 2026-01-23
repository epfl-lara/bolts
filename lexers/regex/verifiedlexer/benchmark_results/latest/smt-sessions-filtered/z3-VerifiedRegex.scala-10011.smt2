; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523106 () Bool)

(assert start!523106)

(declare-fun b!4961281 () Bool)

(declare-fun b_free!132579 () Bool)

(declare-fun b_next!133369 () Bool)

(assert (=> b!4961281 (= b_free!132579 (not b_next!133369))))

(declare-fun tp!1391610 () Bool)

(declare-fun b_and!347431 () Bool)

(assert (=> b!4961281 (= tp!1391610 b_and!347431)))

(declare-fun b_free!132581 () Bool)

(declare-fun b_next!133371 () Bool)

(assert (=> b!4961281 (= b_free!132581 (not b_next!133371))))

(declare-fun tp!1391606 () Bool)

(declare-fun b_and!347433 () Bool)

(assert (=> b!4961281 (= tp!1391606 b_and!347433)))

(declare-fun b!4961275 () Bool)

(declare-fun b_free!132583 () Bool)

(declare-fun b_next!133373 () Bool)

(assert (=> b!4961275 (= b_free!132583 (not b_next!133373))))

(declare-fun tp!1391600 () Bool)

(declare-fun b_and!347435 () Bool)

(assert (=> b!4961275 (= tp!1391600 b_and!347435)))

(declare-fun b_free!132585 () Bool)

(declare-fun b_next!133375 () Bool)

(assert (=> b!4961275 (= b_free!132585 (not b_next!133375))))

(declare-fun tp!1391601 () Bool)

(declare-fun b_and!347437 () Bool)

(assert (=> b!4961275 (= tp!1391601 b_and!347437)))

(declare-fun b!4961274 () Bool)

(declare-fun e!3100981 () Bool)

(declare-fun e!3100983 () Bool)

(assert (=> b!4961274 (= e!3100981 (not e!3100983))))

(declare-fun res!2117612 () Bool)

(assert (=> b!4961274 (=> res!2117612 e!3100983)))

(declare-datatypes ((List!57508 0))(
  ( (Nil!57384) (Cons!57384 (h!63832 (_ BitVec 16)) (t!368074 List!57508)) )
))
(declare-datatypes ((TokenValue!8684 0))(
  ( (FloatLiteralValue!17368 (text!61233 List!57508)) (TokenValueExt!8683 (__x!34661 Int)) (Broken!43420 (value!268075 List!57508)) (Object!8807) (End!8684) (Def!8684) (Underscore!8684) (Match!8684) (Else!8684) (Error!8684) (Case!8684) (If!8684) (Extends!8684) (Abstract!8684) (Class!8684) (Val!8684) (DelimiterValue!17368 (del!8744 List!57508)) (KeywordValue!8690 (value!268076 List!57508)) (CommentValue!17368 (value!268077 List!57508)) (WhitespaceValue!17368 (value!268078 List!57508)) (IndentationValue!8684 (value!268079 List!57508)) (String!65293) (Int32!8684) (Broken!43421 (value!268080 List!57508)) (Boolean!8685) (Unit!148278) (OperatorValue!8687 (op!8744 List!57508)) (IdentifierValue!17368 (value!268081 List!57508)) (IdentifierValue!17369 (value!268082 List!57508)) (WhitespaceValue!17369 (value!268083 List!57508)) (True!17368) (False!17368) (Broken!43422 (value!268084 List!57508)) (Broken!43423 (value!268085 List!57508)) (True!17369) (RightBrace!8684) (RightBracket!8684) (Colon!8684) (Null!8684) (Comma!8684) (LeftBracket!8684) (False!17369) (LeftBrace!8684) (ImaginaryLiteralValue!8684 (text!61234 List!57508)) (StringLiteralValue!26052 (value!268086 List!57508)) (EOFValue!8684 (value!268087 List!57508)) (IdentValue!8684 (value!268088 List!57508)) (DelimiterValue!17369 (value!268089 List!57508)) (DedentValue!8684 (value!268090 List!57508)) (NewLineValue!8684 (value!268091 List!57508)) (IntegerValue!26052 (value!268092 (_ BitVec 32)) (text!61235 List!57508)) (IntegerValue!26053 (value!268093 Int) (text!61236 List!57508)) (Times!8684) (Or!8684) (Equal!8684) (Minus!8684) (Broken!43424 (value!268094 List!57508)) (And!8684) (Div!8684) (LessEqual!8684) (Mod!8684) (Concat!22291) (Not!8684) (Plus!8684) (SpaceValue!8684 (value!268095 List!57508)) (IntegerValue!26054 (value!268096 Int) (text!61237 List!57508)) (StringLiteralValue!26053 (text!61238 List!57508)) (FloatLiteralValue!17369 (text!61239 List!57508)) (BytesLiteralValue!8684 (value!268097 List!57508)) (CommentValue!17369 (value!268098 List!57508)) (StringLiteralValue!26054 (value!268099 List!57508)) (ErrorTokenValue!8684 (msg!8745 List!57508)) )
))
(declare-datatypes ((C!27464 0))(
  ( (C!27465 (val!23098 Int)) )
))
(declare-datatypes ((List!57509 0))(
  ( (Nil!57385) (Cons!57385 (h!63833 C!27464) (t!368075 List!57509)) )
))
(declare-datatypes ((IArray!30313 0))(
  ( (IArray!30314 (innerList!15214 List!57509)) )
))
(declare-datatypes ((Regex!13607 0))(
  ( (ElementMatch!13607 (c!846585 C!27464)) (Concat!22292 (regOne!27726 Regex!13607) (regTwo!27726 Regex!13607)) (EmptyExpr!13607) (Star!13607 (reg!13936 Regex!13607)) (EmptyLang!13607) (Union!13607 (regOne!27727 Regex!13607) (regTwo!27727 Regex!13607)) )
))
(declare-datatypes ((String!65294 0))(
  ( (String!65295 (value!268100 String)) )
))
(declare-datatypes ((Conc!15126 0))(
  ( (Node!15126 (left!41847 Conc!15126) (right!42177 Conc!15126) (csize!30482 Int) (cheight!15337 Int)) (Leaf!25138 (xs!18452 IArray!30313) (csize!30483 Int)) (Empty!15126) )
))
(declare-datatypes ((BalanceConc!29682 0))(
  ( (BalanceConc!29683 (c!846586 Conc!15126)) )
))
(declare-datatypes ((TokenValueInjection!16676 0))(
  ( (TokenValueInjection!16677 (toValue!11325 Int) (toChars!11184 Int)) )
))
(declare-datatypes ((Rule!16548 0))(
  ( (Rule!16549 (regex!8374 Regex!13607) (tag!9238 String!65294) (isSeparator!8374 Bool) (transformation!8374 TokenValueInjection!16676)) )
))
(declare-datatypes ((List!57510 0))(
  ( (Nil!57386) (Cons!57386 (h!63834 Rule!16548) (t!368076 List!57510)) )
))
(declare-fun rulesArg!259 () List!57510)

(get-info :version)

(assert (=> b!4961274 (= res!2117612 (or (and ((_ is Cons!57386) rulesArg!259) ((_ is Nil!57386) (t!368076 rulesArg!259))) ((_ is Cons!57386) rulesArg!259)))))

(declare-fun lt!2048453 () List!57509)

(declare-fun isPrefix!5227 (List!57509 List!57509) Bool)

(assert (=> b!4961274 (isPrefix!5227 lt!2048453 lt!2048453)))

(declare-datatypes ((Unit!148279 0))(
  ( (Unit!148280) )
))
(declare-fun lt!2048454 () Unit!148279)

(declare-fun lemmaIsPrefixRefl!3551 (List!57509 List!57509) Unit!148279)

(assert (=> b!4961274 (= lt!2048454 (lemmaIsPrefixRefl!3551 lt!2048453 lt!2048453))))

(declare-fun b!4961276 () Bool)

(declare-fun e!3100974 () Bool)

(declare-fun totalInput!464 () BalanceConc!29682)

(declare-fun tp!1391608 () Bool)

(declare-fun inv!74943 (Conc!15126) Bool)

(assert (=> b!4961276 (= e!3100974 (and (inv!74943 (c!846586 totalInput!464)) tp!1391608))))

(declare-fun b!4961277 () Bool)

(declare-fun res!2117614 () Bool)

(declare-fun e!3100975 () Bool)

(assert (=> b!4961277 (=> (not res!2117614) (not e!3100975))))

(declare-datatypes ((LexerInterface!7966 0))(
  ( (LexerInterfaceExt!7963 (__x!34662 Int)) (Lexer!7964) )
))
(declare-fun thiss!15247 () LexerInterface!7966)

(declare-fun rulesValidInductive!3277 (LexerInterface!7966 List!57510) Bool)

(assert (=> b!4961277 (= res!2117614 (rulesValidInductive!3277 thiss!15247 rulesArg!259))))

(declare-fun b!4961278 () Bool)

(declare-fun e!3100972 () Bool)

(declare-fun input!1342 () BalanceConc!29682)

(declare-fun tp!1391604 () Bool)

(assert (=> b!4961278 (= e!3100972 (and (inv!74943 (c!846586 input!1342)) tp!1391604))))

(declare-fun b!4961279 () Bool)

(declare-fun e!3100987 () Bool)

(declare-datatypes ((Token!15248 0))(
  ( (Token!15249 (value!268101 TokenValue!8684) (rule!11606 Rule!16548) (size!38028 Int) (originalCharacters!8655 List!57509)) )
))
(declare-datatypes ((tuple2!62072 0))(
  ( (tuple2!62073 (_1!34339 Token!15248) (_2!34339 BalanceConc!29682)) )
))
(declare-datatypes ((Option!14415 0))(
  ( (None!14414) (Some!14414 (v!50399 tuple2!62072)) )
))
(declare-fun err!4545 () Option!14415)

(declare-fun tp!1391603 () Bool)

(assert (=> b!4961279 (= e!3100987 (and (inv!74943 (c!846586 (_2!34339 (v!50399 err!4545)))) tp!1391603))))

(declare-fun b!4961280 () Bool)

(declare-fun e!3100984 () Bool)

(declare-fun e!3100985 () Bool)

(declare-fun tp!1391609 () Bool)

(assert (=> b!4961280 (= e!3100984 (and e!3100985 tp!1391609))))

(declare-fun e!3100978 () Bool)

(assert (=> b!4961281 (= e!3100978 (and tp!1391610 tp!1391606))))

(declare-fun b!4961282 () Bool)

(declare-fun tp!1391602 () Bool)

(declare-fun e!3100980 () Bool)

(declare-fun e!3100986 () Bool)

(declare-fun inv!21 (TokenValue!8684) Bool)

(assert (=> b!4961282 (= e!3100980 (and (inv!21 (value!268101 (_1!34339 (v!50399 err!4545)))) e!3100986 tp!1391602))))

(declare-fun b!4961283 () Bool)

(declare-fun res!2117613 () Bool)

(assert (=> b!4961283 (=> (not res!2117613) (not e!3100975))))

(declare-fun isEmpty!30878 (List!57510) Bool)

(assert (=> b!4961283 (= res!2117613 (not (isEmpty!30878 rulesArg!259)))))

(declare-fun tp!1391605 () Bool)

(declare-fun b!4961284 () Bool)

(declare-fun inv!74938 (String!65294) Bool)

(declare-fun inv!74944 (TokenValueInjection!16676) Bool)

(assert (=> b!4961284 (= e!3100985 (and tp!1391605 (inv!74938 (tag!9238 (h!63834 rulesArg!259))) (inv!74944 (transformation!8374 (h!63834 rulesArg!259))) e!3100978))))

(declare-fun b!4961285 () Bool)

(declare-fun lt!2048452 () Bool)

(declare-fun lt!2048451 () Bool)

(assert (=> b!4961285 (= e!3100983 (or (not (= lt!2048452 lt!2048451)) (not lt!2048452) lt!2048451))))

(declare-datatypes ((tuple2!62074 0))(
  ( (tuple2!62075 (_1!34340 Token!15248) (_2!34340 List!57509)) )
))
(declare-datatypes ((Option!14416 0))(
  ( (None!14415) (Some!14415 (v!50400 tuple2!62074)) )
))
(declare-fun isDefined!11328 (Option!14416) Bool)

(declare-fun maxPrefixZipper!771 (LexerInterface!7966 List!57510 List!57509) Option!14416)

(assert (=> b!4961285 (= lt!2048451 (isDefined!11328 (maxPrefixZipper!771 thiss!15247 rulesArg!259 lt!2048453)))))

(declare-fun isDefined!11329 (Option!14415) Bool)

(assert (=> b!4961285 (= lt!2048452 (isDefined!11329 err!4545))))

(assert (=> b!4961285 true))

(declare-fun e!3100979 () Bool)

(assert (=> b!4961285 e!3100979))

(declare-fun b!4961286 () Bool)

(declare-fun inv!74945 (Token!15248) Bool)

(declare-fun inv!74946 (BalanceConc!29682) Bool)

(assert (=> b!4961286 (= e!3100979 (and (inv!74945 (_1!34339 (v!50399 err!4545))) e!3100980 (inv!74946 (_2!34339 (v!50399 err!4545))) e!3100987))))

(declare-fun res!2117610 () Bool)

(assert (=> start!523106 (=> (not res!2117610) (not e!3100975))))

(assert (=> start!523106 (= res!2117610 ((_ is Lexer!7964) thiss!15247))))

(assert (=> start!523106 e!3100975))

(assert (=> start!523106 true))

(assert (=> start!523106 e!3100984))

(assert (=> start!523106 (and (inv!74946 input!1342) e!3100972)))

(assert (=> start!523106 (and (inv!74946 totalInput!464) e!3100974)))

(declare-fun e!3100977 () Bool)

(assert (=> b!4961275 (= e!3100977 (and tp!1391600 tp!1391601))))

(declare-fun tp!1391607 () Bool)

(declare-fun b!4961287 () Bool)

(assert (=> b!4961287 (= e!3100986 (and tp!1391607 (inv!74938 (tag!9238 (rule!11606 (_1!34339 (v!50399 err!4545))))) (inv!74944 (transformation!8374 (rule!11606 (_1!34339 (v!50399 err!4545))))) e!3100977))))

(declare-fun b!4961288 () Bool)

(assert (=> b!4961288 (= e!3100975 e!3100981)))

(declare-fun res!2117611 () Bool)

(assert (=> b!4961288 (=> (not res!2117611) (not e!3100981))))

(declare-fun isSuffix!1173 (List!57509 List!57509) Bool)

(declare-fun list!18331 (BalanceConc!29682) List!57509)

(assert (=> b!4961288 (= res!2117611 (isSuffix!1173 lt!2048453 (list!18331 totalInput!464)))))

(assert (=> b!4961288 (= lt!2048453 (list!18331 input!1342))))

(assert (= (and start!523106 res!2117610) b!4961277))

(assert (= (and b!4961277 res!2117614) b!4961283))

(assert (= (and b!4961283 res!2117613) b!4961288))

(assert (= (and b!4961288 res!2117611) b!4961274))

(assert (= (and b!4961274 (not res!2117612)) b!4961285))

(assert (= b!4961287 b!4961275))

(assert (= b!4961282 b!4961287))

(assert (= b!4961286 b!4961282))

(assert (= b!4961286 b!4961279))

(assert (= (and b!4961285 ((_ is Some!14414) err!4545)) b!4961286))

(assert (= b!4961284 b!4961281))

(assert (= b!4961280 b!4961284))

(assert (= (and start!523106 ((_ is Cons!57386) rulesArg!259)) b!4961280))

(assert (= start!523106 b!4961278))

(assert (= start!523106 b!4961276))

(declare-fun m!5985824 () Bool)

(assert (=> b!4961287 m!5985824))

(declare-fun m!5985826 () Bool)

(assert (=> b!4961287 m!5985826))

(declare-fun m!5985828 () Bool)

(assert (=> b!4961283 m!5985828))

(declare-fun m!5985830 () Bool)

(assert (=> b!4961288 m!5985830))

(assert (=> b!4961288 m!5985830))

(declare-fun m!5985832 () Bool)

(assert (=> b!4961288 m!5985832))

(declare-fun m!5985834 () Bool)

(assert (=> b!4961288 m!5985834))

(declare-fun m!5985836 () Bool)

(assert (=> start!523106 m!5985836))

(declare-fun m!5985838 () Bool)

(assert (=> start!523106 m!5985838))

(declare-fun m!5985840 () Bool)

(assert (=> b!4961282 m!5985840))

(declare-fun m!5985842 () Bool)

(assert (=> b!4961285 m!5985842))

(assert (=> b!4961285 m!5985842))

(declare-fun m!5985844 () Bool)

(assert (=> b!4961285 m!5985844))

(declare-fun m!5985846 () Bool)

(assert (=> b!4961285 m!5985846))

(declare-fun m!5985848 () Bool)

(assert (=> b!4961286 m!5985848))

(declare-fun m!5985850 () Bool)

(assert (=> b!4961286 m!5985850))

(declare-fun m!5985852 () Bool)

(assert (=> b!4961278 m!5985852))

(declare-fun m!5985854 () Bool)

(assert (=> b!4961274 m!5985854))

(declare-fun m!5985856 () Bool)

(assert (=> b!4961274 m!5985856))

(declare-fun m!5985858 () Bool)

(assert (=> b!4961284 m!5985858))

(declare-fun m!5985860 () Bool)

(assert (=> b!4961284 m!5985860))

(declare-fun m!5985862 () Bool)

(assert (=> b!4961279 m!5985862))

(declare-fun m!5985864 () Bool)

(assert (=> b!4961277 m!5985864))

(declare-fun m!5985866 () Bool)

(assert (=> b!4961276 m!5985866))

(check-sat (not start!523106) (not b_next!133375) b_and!347433 (not b!4961286) (not b!4961287) (not b!4961280) (not b!4961276) (not b!4961282) (not b!4961285) (not b!4961288) (not b!4961279) (not b_next!133373) (not b!4961278) b_and!347435 (not b!4961277) b_and!347431 (not b!4961284) b_and!347437 (not b_next!133369) (not b_next!133371) (not b!4961283) (not b!4961274))
(check-sat (not b_next!133375) b_and!347435 b_and!347431 b_and!347433 (not b_next!133371) (not b_next!133373) b_and!347437 (not b_next!133369))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403366 () Bool)

(assert start!403366)

(declare-fun b!4220213 () Bool)

(declare-fun b_free!123963 () Bool)

(declare-fun b_next!124667 () Bool)

(assert (=> b!4220213 (= b_free!123963 (not b_next!124667))))

(declare-fun tp!1291307 () Bool)

(declare-fun b_and!332933 () Bool)

(assert (=> b!4220213 (= tp!1291307 b_and!332933)))

(declare-fun b_free!123965 () Bool)

(declare-fun b_next!124669 () Bool)

(assert (=> b!4220213 (= b_free!123965 (not b_next!124669))))

(declare-fun tp!1291295 () Bool)

(declare-fun b_and!332935 () Bool)

(assert (=> b!4220213 (= tp!1291295 b_and!332935)))

(declare-fun b!4220217 () Bool)

(declare-fun b_free!123967 () Bool)

(declare-fun b_next!124671 () Bool)

(assert (=> b!4220217 (= b_free!123967 (not b_next!124671))))

(declare-fun tp!1291312 () Bool)

(declare-fun b_and!332937 () Bool)

(assert (=> b!4220217 (= tp!1291312 b_and!332937)))

(declare-fun b_free!123969 () Bool)

(declare-fun b_next!124673 () Bool)

(assert (=> b!4220217 (= b_free!123969 (not b_next!124673))))

(declare-fun tp!1291309 () Bool)

(declare-fun b_and!332939 () Bool)

(assert (=> b!4220217 (= tp!1291309 b_and!332939)))

(declare-fun b!4220235 () Bool)

(declare-fun b_free!123971 () Bool)

(declare-fun b_next!124675 () Bool)

(assert (=> b!4220235 (= b_free!123971 (not b_next!124675))))

(declare-fun tp!1291303 () Bool)

(declare-fun b_and!332941 () Bool)

(assert (=> b!4220235 (= tp!1291303 b_and!332941)))

(declare-fun b_free!123973 () Bool)

(declare-fun b_next!124677 () Bool)

(assert (=> b!4220235 (= b_free!123973 (not b_next!124677))))

(declare-fun tp!1291313 () Bool)

(declare-fun b_and!332943 () Bool)

(assert (=> b!4220235 (= tp!1291313 b_and!332943)))

(declare-fun b!4220218 () Bool)

(declare-fun b_free!123975 () Bool)

(declare-fun b_next!124679 () Bool)

(assert (=> b!4220218 (= b_free!123975 (not b_next!124679))))

(declare-fun tp!1291314 () Bool)

(declare-fun b_and!332945 () Bool)

(assert (=> b!4220218 (= tp!1291314 b_and!332945)))

(declare-fun b_free!123977 () Bool)

(declare-fun b_next!124681 () Bool)

(assert (=> b!4220218 (= b_free!123977 (not b_next!124681))))

(declare-fun tp!1291308 () Bool)

(declare-fun b_and!332947 () Bool)

(assert (=> b!4220218 (= tp!1291308 b_and!332947)))

(declare-fun res!1734516 () Bool)

(declare-fun e!2620103 () Bool)

(assert (=> start!403366 (=> (not res!1734516) (not e!2620103))))

(declare-datatypes ((LexerInterface!7383 0))(
  ( (LexerInterfaceExt!7380 (__x!28259 Int)) (Lexer!7381) )
))
(declare-fun thiss!26544 () LexerInterface!7383)

(get-info :version)

(assert (=> start!403366 (= res!1734516 ((_ is Lexer!7381) thiss!26544))))

(assert (=> start!403366 e!2620103))

(declare-datatypes ((List!46557 0))(
  ( (Nil!46433) (Cons!46433 (h!51853 (_ BitVec 16)) (t!348942 List!46557)) )
))
(declare-datatypes ((TokenValue!8018 0))(
  ( (FloatLiteralValue!16036 (text!56571 List!46557)) (TokenValueExt!8017 (__x!28260 Int)) (Broken!40090 (value!242461 List!46557)) (Object!8141) (End!8018) (Def!8018) (Underscore!8018) (Match!8018) (Else!8018) (Error!8018) (Case!8018) (If!8018) (Extends!8018) (Abstract!8018) (Class!8018) (Val!8018) (DelimiterValue!16036 (del!8078 List!46557)) (KeywordValue!8024 (value!242462 List!46557)) (CommentValue!16036 (value!242463 List!46557)) (WhitespaceValue!16036 (value!242464 List!46557)) (IndentationValue!8018 (value!242465 List!46557)) (String!53959) (Int32!8018) (Broken!40091 (value!242466 List!46557)) (Boolean!8019) (Unit!65610) (OperatorValue!8021 (op!8078 List!46557)) (IdentifierValue!16036 (value!242467 List!46557)) (IdentifierValue!16037 (value!242468 List!46557)) (WhitespaceValue!16037 (value!242469 List!46557)) (True!16036) (False!16036) (Broken!40092 (value!242470 List!46557)) (Broken!40093 (value!242471 List!46557)) (True!16037) (RightBrace!8018) (RightBracket!8018) (Colon!8018) (Null!8018) (Comma!8018) (LeftBracket!8018) (False!16037) (LeftBrace!8018) (ImaginaryLiteralValue!8018 (text!56572 List!46557)) (StringLiteralValue!24054 (value!242472 List!46557)) (EOFValue!8018 (value!242473 List!46557)) (IdentValue!8018 (value!242474 List!46557)) (DelimiterValue!16037 (value!242475 List!46557)) (DedentValue!8018 (value!242476 List!46557)) (NewLineValue!8018 (value!242477 List!46557)) (IntegerValue!24054 (value!242478 (_ BitVec 32)) (text!56573 List!46557)) (IntegerValue!24055 (value!242479 Int) (text!56574 List!46557)) (Times!8018) (Or!8018) (Equal!8018) (Minus!8018) (Broken!40094 (value!242480 List!46557)) (And!8018) (Div!8018) (LessEqual!8018) (Mod!8018) (Concat!20711) (Not!8018) (Plus!8018) (SpaceValue!8018 (value!242481 List!46557)) (IntegerValue!24056 (value!242482 Int) (text!56575 List!46557)) (StringLiteralValue!24055 (text!56576 List!46557)) (FloatLiteralValue!16037 (text!56577 List!46557)) (BytesLiteralValue!8018 (value!242483 List!46557)) (CommentValue!16037 (value!242484 List!46557)) (StringLiteralValue!24056 (value!242485 List!46557)) (ErrorTokenValue!8018 (msg!8079 List!46557)) )
))
(declare-datatypes ((C!25580 0))(
  ( (C!25581 (val!14952 Int)) )
))
(declare-datatypes ((List!46558 0))(
  ( (Nil!46434) (Cons!46434 (h!51854 C!25580) (t!348943 List!46558)) )
))
(declare-datatypes ((IArray!28003 0))(
  ( (IArray!28004 (innerList!14059 List!46558)) )
))
(declare-datatypes ((Regex!12693 0))(
  ( (ElementMatch!12693 (c!718218 C!25580)) (Concat!20712 (regOne!25898 Regex!12693) (regTwo!25898 Regex!12693)) (EmptyExpr!12693) (Star!12693 (reg!13022 Regex!12693)) (EmptyLang!12693) (Union!12693 (regOne!25899 Regex!12693) (regTwo!25899 Regex!12693)) )
))
(declare-datatypes ((String!53960 0))(
  ( (String!53961 (value!242486 String)) )
))
(declare-datatypes ((Conc!13999 0))(
  ( (Node!13999 (left!34536 Conc!13999) (right!34866 Conc!13999) (csize!28228 Int) (cheight!14210 Int)) (Leaf!21637 (xs!17305 IArray!28003) (csize!28229 Int)) (Empty!13999) )
))
(declare-datatypes ((BalanceConc!27592 0))(
  ( (BalanceConc!27593 (c!718219 Conc!13999)) )
))
(declare-datatypes ((TokenValueInjection!15464 0))(
  ( (TokenValueInjection!15465 (toValue!10512 Int) (toChars!10371 Int)) )
))
(declare-datatypes ((Rule!15376 0))(
  ( (Rule!15377 (regex!7788 Regex!12693) (tag!8652 String!53960) (isSeparator!7788 Bool) (transformation!7788 TokenValueInjection!15464)) )
))
(declare-datatypes ((Token!14278 0))(
  ( (Token!14279 (value!242487 TokenValue!8018) (rule!10920 Rule!15376) (size!34093 Int) (originalCharacters!8170 List!46558)) )
))
(declare-fun tBis!41 () Token!14278)

(declare-fun e!2620090 () Bool)

(declare-fun inv!61093 (Token!14278) Bool)

(assert (=> start!403366 (and (inv!61093 tBis!41) e!2620090)))

(assert (=> start!403366 true))

(declare-fun e!2620092 () Bool)

(assert (=> start!403366 e!2620092))

(declare-fun e!2620112 () Bool)

(assert (=> start!403366 e!2620112))

(declare-fun e!2620097 () Bool)

(assert (=> start!403366 e!2620097))

(declare-fun e!2620091 () Bool)

(assert (=> start!403366 e!2620091))

(declare-fun t!8364 () Token!14278)

(declare-fun e!2620094 () Bool)

(assert (=> start!403366 (and (inv!61093 t!8364) e!2620094)))

(declare-fun e!2620110 () Bool)

(assert (=> start!403366 e!2620110))

(declare-fun e!2620109 () Bool)

(assert (=> start!403366 e!2620109))

(declare-fun e!2620101 () Bool)

(assert (=> start!403366 e!2620101))

(declare-fun b!4220208 () Bool)

(declare-fun res!1734503 () Bool)

(declare-fun e!2620108 () Bool)

(assert (=> b!4220208 (=> res!1734503 e!2620108)))

(declare-fun input!3517 () List!46558)

(declare-fun suffixBis!41 () List!46558)

(declare-fun pBis!121 () List!46558)

(declare-fun ++!11862 (List!46558 List!46558) List!46558)

(assert (=> b!4220208 (= res!1734503 (not (= (++!11862 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4220209 () Bool)

(declare-fun res!1734505 () Bool)

(assert (=> b!4220209 (=> (not res!1734505) (not e!2620103))))

(declare-datatypes ((List!46559 0))(
  ( (Nil!46435) (Cons!46435 (h!51855 Rule!15376) (t!348944 List!46559)) )
))
(declare-fun rules!3967 () List!46559)

(declare-fun rBis!178 () Rule!15376)

(declare-fun contains!9611 (List!46559 Rule!15376) Bool)

(assert (=> b!4220209 (= res!1734505 (contains!9611 rules!3967 rBis!178))))

(declare-fun b!4220210 () Bool)

(declare-fun tp_is_empty!22353 () Bool)

(declare-fun tp!1291305 () Bool)

(assert (=> b!4220210 (= e!2620101 (and tp_is_empty!22353 tp!1291305))))

(declare-fun b!4220211 () Bool)

(declare-fun tp!1291299 () Bool)

(assert (=> b!4220211 (= e!2620112 (and tp_is_empty!22353 tp!1291299))))

(declare-fun b!4220212 () Bool)

(declare-fun tp!1291297 () Bool)

(assert (=> b!4220212 (= e!2620110 (and tp_is_empty!22353 tp!1291297))))

(declare-fun e!2620100 () Bool)

(assert (=> b!4220213 (= e!2620100 (and tp!1291307 tp!1291295))))

(declare-fun b!4220214 () Bool)

(declare-fun isEmpty!27507 (List!46559) Bool)

(assert (=> b!4220214 (= e!2620108 (not (isEmpty!27507 (t!348944 rules!3967))))))

(declare-fun rulesInvariant!6594 (LexerInterface!7383 List!46559) Bool)

(assert (=> b!4220214 (rulesInvariant!6594 thiss!26544 (t!348944 rules!3967))))

(declare-datatypes ((Unit!65611 0))(
  ( (Unit!65612) )
))
(declare-fun lt!1501831 () Unit!65611)

(declare-fun lemmaInvariantOnRulesThenOnTail!876 (LexerInterface!7383 Rule!15376 List!46559) Unit!65611)

(assert (=> b!4220214 (= lt!1501831 (lemmaInvariantOnRulesThenOnTail!876 thiss!26544 (h!51855 rules!3967) (t!348944 rules!3967)))))

(declare-fun b!4220215 () Bool)

(declare-fun res!1734509 () Bool)

(assert (=> b!4220215 (=> res!1734509 e!2620108)))

(assert (=> b!4220215 (= res!1734509 (or (and ((_ is Cons!46435) rules!3967) ((_ is Nil!46435) (t!348944 rules!3967))) (not ((_ is Cons!46435) rules!3967)) (= (h!51855 rules!3967) rBis!178)))))

(declare-fun b!4220216 () Bool)

(declare-fun e!2620099 () Bool)

(assert (=> b!4220216 (= e!2620103 e!2620099)))

(declare-fun res!1734504 () Bool)

(assert (=> b!4220216 (=> (not res!1734504) (not e!2620099))))

(declare-datatypes ((tuple2!44154 0))(
  ( (tuple2!44155 (_1!25211 Token!14278) (_2!25211 List!46558)) )
))
(declare-datatypes ((Option!9976 0))(
  ( (None!9975) (Some!9975 (v!40863 tuple2!44154)) )
))
(declare-fun lt!1501830 () Option!9976)

(declare-fun maxPrefix!4423 (LexerInterface!7383 List!46559 List!46558) Option!9976)

(assert (=> b!4220216 (= res!1734504 (= (maxPrefix!4423 thiss!26544 rules!3967 input!3517) lt!1501830))))

(declare-fun suffix!1557 () List!46558)

(assert (=> b!4220216 (= lt!1501830 (Some!9975 (tuple2!44155 t!8364 suffix!1557)))))

(declare-fun e!2620096 () Bool)

(assert (=> b!4220217 (= e!2620096 (and tp!1291312 tp!1291309))))

(declare-fun e!2620098 () Bool)

(assert (=> b!4220218 (= e!2620098 (and tp!1291314 tp!1291308))))

(declare-fun b!4220219 () Bool)

(assert (=> b!4220219 (= e!2620099 (not e!2620108))))

(declare-fun res!1734511 () Bool)

(assert (=> b!4220219 (=> res!1734511 e!2620108)))

(declare-fun maxPrefixOneRule!3378 (LexerInterface!7383 Rule!15376 List!46558) Option!9976)

(assert (=> b!4220219 (= res!1734511 (not (= (maxPrefixOneRule!3378 thiss!26544 rBis!178 input!3517) (Some!9975 (tuple2!44155 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4647 (List!46558 List!46558) Bool)

(assert (=> b!4220219 (isPrefix!4647 input!3517 input!3517)))

(declare-fun lt!1501832 () Unit!65611)

(declare-fun lemmaIsPrefixRefl!3064 (List!46558 List!46558) Unit!65611)

(assert (=> b!4220219 (= lt!1501832 (lemmaIsPrefixRefl!3064 input!3517 input!3517))))

(declare-fun b!4220220 () Bool)

(declare-fun res!1734506 () Bool)

(assert (=> b!4220220 (=> res!1734506 e!2620108)))

(declare-fun list!16801 (BalanceConc!27592) List!46558)

(declare-fun charsOf!5211 (Token!14278) BalanceConc!27592)

(assert (=> b!4220220 (= res!1734506 (not (= (list!16801 (charsOf!5211 tBis!41)) pBis!121)))))

(declare-fun b!4220221 () Bool)

(declare-fun res!1734514 () Bool)

(assert (=> b!4220221 (=> (not res!1734514) (not e!2620103))))

(declare-fun p!3001 () List!46558)

(assert (=> b!4220221 (= res!1734514 (isPrefix!4647 p!3001 input!3517))))

(declare-fun b!4220222 () Bool)

(declare-fun res!1734510 () Bool)

(assert (=> b!4220222 (=> res!1734510 e!2620108)))

(assert (=> b!4220222 (= res!1734510 (= (maxPrefixOneRule!3378 thiss!26544 (h!51855 rules!3967) input!3517) lt!1501830))))

(declare-fun b!4220223 () Bool)

(declare-fun e!2620111 () Bool)

(declare-fun tp!1291300 () Bool)

(declare-fun inv!61090 (String!53960) Bool)

(declare-fun inv!61094 (TokenValueInjection!15464) Bool)

(assert (=> b!4220223 (= e!2620111 (and tp!1291300 (inv!61090 (tag!8652 (h!51855 rules!3967))) (inv!61094 (transformation!7788 (h!51855 rules!3967))) e!2620096))))

(declare-fun tp!1291296 () Bool)

(declare-fun e!2620106 () Bool)

(declare-fun b!4220224 () Bool)

(assert (=> b!4220224 (= e!2620106 (and tp!1291296 (inv!61090 (tag!8652 (rule!10920 t!8364))) (inv!61094 (transformation!7788 (rule!10920 t!8364))) e!2620098))))

(declare-fun b!4220225 () Bool)

(declare-fun res!1734512 () Bool)

(assert (=> b!4220225 (=> (not res!1734512) (not e!2620103))))

(assert (=> b!4220225 (= res!1734512 (isPrefix!4647 pBis!121 input!3517))))

(declare-fun b!4220226 () Bool)

(declare-fun res!1734508 () Bool)

(assert (=> b!4220226 (=> res!1734508 e!2620108)))

(assert (=> b!4220226 (= res!1734508 (not (= (rule!10920 tBis!41) rBis!178)))))

(declare-fun b!4220227 () Bool)

(declare-fun tp!1291302 () Bool)

(assert (=> b!4220227 (= e!2620097 (and e!2620111 tp!1291302))))

(declare-fun b!4220228 () Bool)

(declare-fun res!1734502 () Bool)

(assert (=> b!4220228 (=> (not res!1734502) (not e!2620103))))

(assert (=> b!4220228 (= res!1734502 (rulesInvariant!6594 thiss!26544 rules!3967))))

(declare-fun tp!1291311 () Bool)

(declare-fun e!2620093 () Bool)

(declare-fun b!4220229 () Bool)

(assert (=> b!4220229 (= e!2620093 (and tp!1291311 (inv!61090 (tag!8652 (rule!10920 tBis!41))) (inv!61094 (transformation!7788 (rule!10920 tBis!41))) e!2620100))))

(declare-fun b!4220230 () Bool)

(declare-fun res!1734513 () Bool)

(assert (=> b!4220230 (=> (not res!1734513) (not e!2620099))))

(declare-fun ruleValid!3500 (LexerInterface!7383 Rule!15376) Bool)

(assert (=> b!4220230 (= res!1734513 (ruleValid!3500 thiss!26544 rBis!178))))

(declare-fun b!4220231 () Bool)

(declare-fun tp!1291304 () Bool)

(declare-fun inv!21 (TokenValue!8018) Bool)

(assert (=> b!4220231 (= e!2620094 (and (inv!21 (value!242487 t!8364)) e!2620106 tp!1291304))))

(declare-fun tp!1291301 () Bool)

(declare-fun b!4220232 () Bool)

(assert (=> b!4220232 (= e!2620090 (and (inv!21 (value!242487 tBis!41)) e!2620093 tp!1291301))))

(declare-fun b!4220233 () Bool)

(declare-fun res!1734507 () Bool)

(assert (=> b!4220233 (=> (not res!1734507) (not e!2620103))))

(assert (=> b!4220233 (= res!1734507 (not (isEmpty!27507 rules!3967)))))

(declare-fun b!4220234 () Bool)

(declare-fun tp!1291306 () Bool)

(assert (=> b!4220234 (= e!2620109 (and tp_is_empty!22353 tp!1291306))))

(declare-fun e!2620089 () Bool)

(assert (=> b!4220235 (= e!2620089 (and tp!1291303 tp!1291313))))

(declare-fun b!4220236 () Bool)

(declare-fun tp!1291310 () Bool)

(assert (=> b!4220236 (= e!2620091 (and tp_is_empty!22353 tp!1291310))))

(declare-fun b!4220237 () Bool)

(declare-fun res!1734515 () Bool)

(assert (=> b!4220237 (=> (not res!1734515) (not e!2620103))))

(assert (=> b!4220237 (= res!1734515 (= (++!11862 p!3001 suffix!1557) input!3517))))

(declare-fun b!4220238 () Bool)

(declare-fun tp!1291298 () Bool)

(assert (=> b!4220238 (= e!2620092 (and tp!1291298 (inv!61090 (tag!8652 rBis!178)) (inv!61094 (transformation!7788 rBis!178)) e!2620089))))

(assert (= (and start!403366 res!1734516) b!4220237))

(assert (= (and b!4220237 res!1734515) b!4220221))

(assert (= (and b!4220221 res!1734514) b!4220225))

(assert (= (and b!4220225 res!1734512) b!4220233))

(assert (= (and b!4220233 res!1734507) b!4220228))

(assert (= (and b!4220228 res!1734502) b!4220209))

(assert (= (and b!4220209 res!1734505) b!4220216))

(assert (= (and b!4220216 res!1734504) b!4220230))

(assert (= (and b!4220230 res!1734513) b!4220219))

(assert (= (and b!4220219 (not res!1734511)) b!4220226))

(assert (= (and b!4220226 (not res!1734508)) b!4220220))

(assert (= (and b!4220220 (not res!1734506)) b!4220208))

(assert (= (and b!4220208 (not res!1734503)) b!4220215))

(assert (= (and b!4220215 (not res!1734509)) b!4220222))

(assert (= (and b!4220222 (not res!1734510)) b!4220214))

(assert (= b!4220229 b!4220213))

(assert (= b!4220232 b!4220229))

(assert (= start!403366 b!4220232))

(assert (= b!4220238 b!4220235))

(assert (= start!403366 b!4220238))

(assert (= (and start!403366 ((_ is Cons!46434) p!3001)) b!4220211))

(assert (= b!4220223 b!4220217))

(assert (= b!4220227 b!4220223))

(assert (= (and start!403366 ((_ is Cons!46435) rules!3967)) b!4220227))

(assert (= (and start!403366 ((_ is Cons!46434) input!3517)) b!4220236))

(assert (= b!4220224 b!4220218))

(assert (= b!4220231 b!4220224))

(assert (= start!403366 b!4220231))

(assert (= (and start!403366 ((_ is Cons!46434) pBis!121)) b!4220212))

(assert (= (and start!403366 ((_ is Cons!46434) suffix!1557)) b!4220234))

(assert (= (and start!403366 ((_ is Cons!46434) suffixBis!41)) b!4220210))

(declare-fun m!4808763 () Bool)

(assert (=> start!403366 m!4808763))

(declare-fun m!4808765 () Bool)

(assert (=> start!403366 m!4808765))

(declare-fun m!4808767 () Bool)

(assert (=> b!4220232 m!4808767))

(declare-fun m!4808769 () Bool)

(assert (=> b!4220216 m!4808769))

(declare-fun m!4808771 () Bool)

(assert (=> b!4220233 m!4808771))

(declare-fun m!4808773 () Bool)

(assert (=> b!4220221 m!4808773))

(declare-fun m!4808775 () Bool)

(assert (=> b!4220231 m!4808775))

(declare-fun m!4808777 () Bool)

(assert (=> b!4220237 m!4808777))

(declare-fun m!4808779 () Bool)

(assert (=> b!4220220 m!4808779))

(assert (=> b!4220220 m!4808779))

(declare-fun m!4808781 () Bool)

(assert (=> b!4220220 m!4808781))

(declare-fun m!4808783 () Bool)

(assert (=> b!4220214 m!4808783))

(declare-fun m!4808785 () Bool)

(assert (=> b!4220214 m!4808785))

(declare-fun m!4808787 () Bool)

(assert (=> b!4220214 m!4808787))

(declare-fun m!4808789 () Bool)

(assert (=> b!4220225 m!4808789))

(declare-fun m!4808791 () Bool)

(assert (=> b!4220228 m!4808791))

(declare-fun m!4808793 () Bool)

(assert (=> b!4220222 m!4808793))

(declare-fun m!4808795 () Bool)

(assert (=> b!4220224 m!4808795))

(declare-fun m!4808797 () Bool)

(assert (=> b!4220224 m!4808797))

(declare-fun m!4808799 () Bool)

(assert (=> b!4220229 m!4808799))

(declare-fun m!4808801 () Bool)

(assert (=> b!4220229 m!4808801))

(declare-fun m!4808803 () Bool)

(assert (=> b!4220219 m!4808803))

(declare-fun m!4808805 () Bool)

(assert (=> b!4220219 m!4808805))

(declare-fun m!4808807 () Bool)

(assert (=> b!4220219 m!4808807))

(declare-fun m!4808809 () Bool)

(assert (=> b!4220230 m!4808809))

(declare-fun m!4808811 () Bool)

(assert (=> b!4220209 m!4808811))

(declare-fun m!4808813 () Bool)

(assert (=> b!4220238 m!4808813))

(declare-fun m!4808815 () Bool)

(assert (=> b!4220238 m!4808815))

(declare-fun m!4808817 () Bool)

(assert (=> b!4220208 m!4808817))

(declare-fun m!4808819 () Bool)

(assert (=> b!4220223 m!4808819))

(declare-fun m!4808821 () Bool)

(assert (=> b!4220223 m!4808821))

(check-sat (not b!4220228) (not b!4220210) (not b!4220227) b_and!332933 (not b!4220233) (not b!4220231) b_and!332937 (not b!4220236) (not b!4220212) (not b!4220230) (not b!4220224) (not b!4220222) (not b!4220221) b_and!332941 (not b!4220234) (not b_next!124679) (not b!4220232) (not b!4220238) (not b!4220237) (not b_next!124675) (not b_next!124667) tp_is_empty!22353 (not b!4220209) b_and!332939 b_and!332947 b_and!332943 (not b!4220208) (not b_next!124669) b_and!332935 (not b_next!124677) (not b!4220220) (not start!403366) (not b!4220223) (not b_next!124673) b_and!332945 (not b!4220214) (not b!4220216) (not b!4220219) (not b!4220225) (not b!4220211) (not b_next!124671) (not b!4220229) (not b_next!124681))
(check-sat b_and!332941 (not b_next!124679) (not b_next!124675) (not b_next!124667) b_and!332933 b_and!332937 b_and!332943 (not b_next!124677) (not b_next!124673) b_and!332945 b_and!332939 b_and!332947 (not b_next!124669) b_and!332935 (not b_next!124681) (not b_next!124671))
(get-model)

(declare-fun b!4220362 () Bool)

(declare-fun res!1734631 () Bool)

(declare-fun e!2620176 () Bool)

(assert (=> b!4220362 (=> (not res!1734631) (not e!2620176))))

(declare-fun lt!1501895 () Option!9976)

(declare-fun get!15112 (Option!9976) tuple2!44154)

(assert (=> b!4220362 (= res!1734631 (= (rule!10920 (_1!25211 (get!15112 lt!1501895))) (h!51855 rules!3967)))))

(declare-fun b!4220364 () Bool)

(declare-fun e!2620177 () Option!9976)

(assert (=> b!4220364 (= e!2620177 None!9975)))

(declare-fun b!4220365 () Bool)

(declare-fun res!1734628 () Bool)

(assert (=> b!4220365 (=> (not res!1734628) (not e!2620176))))

(assert (=> b!4220365 (= res!1734628 (= (++!11862 (list!16801 (charsOf!5211 (_1!25211 (get!15112 lt!1501895)))) (_2!25211 (get!15112 lt!1501895))) input!3517))))

(declare-fun b!4220366 () Bool)

(declare-fun res!1734626 () Bool)

(assert (=> b!4220366 (=> (not res!1734626) (not e!2620176))))

(declare-fun apply!10703 (TokenValueInjection!15464 BalanceConc!27592) TokenValue!8018)

(declare-fun seqFromList!5763 (List!46558) BalanceConc!27592)

(assert (=> b!4220366 (= res!1734626 (= (value!242487 (_1!25211 (get!15112 lt!1501895))) (apply!10703 (transformation!7788 (rule!10920 (_1!25211 (get!15112 lt!1501895)))) (seqFromList!5763 (originalCharacters!8170 (_1!25211 (get!15112 lt!1501895)))))))))

(declare-fun b!4220367 () Bool)

(declare-fun size!34096 (List!46558) Int)

(assert (=> b!4220367 (= e!2620176 (= (size!34093 (_1!25211 (get!15112 lt!1501895))) (size!34096 (originalCharacters!8170 (_1!25211 (get!15112 lt!1501895))))))))

(declare-fun b!4220368 () Bool)

(declare-fun res!1734629 () Bool)

(assert (=> b!4220368 (=> (not res!1734629) (not e!2620176))))

(assert (=> b!4220368 (= res!1734629 (< (size!34096 (_2!25211 (get!15112 lt!1501895))) (size!34096 input!3517)))))

(declare-fun b!4220369 () Bool)

(declare-datatypes ((tuple2!44158 0))(
  ( (tuple2!44159 (_1!25213 List!46558) (_2!25213 List!46558)) )
))
(declare-fun lt!1501894 () tuple2!44158)

(declare-fun size!34097 (BalanceConc!27592) Int)

(assert (=> b!4220369 (= e!2620177 (Some!9975 (tuple2!44155 (Token!14279 (apply!10703 (transformation!7788 (h!51855 rules!3967)) (seqFromList!5763 (_1!25213 lt!1501894))) (h!51855 rules!3967) (size!34097 (seqFromList!5763 (_1!25213 lt!1501894))) (_1!25213 lt!1501894)) (_2!25213 lt!1501894))))))

(declare-fun lt!1501892 () Unit!65611)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1636 (Regex!12693 List!46558) Unit!65611)

(assert (=> b!4220369 (= lt!1501892 (longestMatchIsAcceptedByMatchOrIsEmpty!1636 (regex!7788 (h!51855 rules!3967)) input!3517))))

(declare-fun res!1734630 () Bool)

(declare-fun isEmpty!27510 (List!46558) Bool)

(declare-fun findLongestMatchInner!1663 (Regex!12693 List!46558 Int List!46558 List!46558 Int) tuple2!44158)

(assert (=> b!4220369 (= res!1734630 (isEmpty!27510 (_1!25213 (findLongestMatchInner!1663 (regex!7788 (h!51855 rules!3967)) Nil!46434 (size!34096 Nil!46434) input!3517 input!3517 (size!34096 input!3517)))))))

(declare-fun e!2620179 () Bool)

(assert (=> b!4220369 (=> res!1734630 e!2620179)))

(assert (=> b!4220369 e!2620179))

(declare-fun lt!1501893 () Unit!65611)

(assert (=> b!4220369 (= lt!1501893 lt!1501892)))

(declare-fun lt!1501896 () Unit!65611)

(declare-fun lemmaSemiInverse!2504 (TokenValueInjection!15464 BalanceConc!27592) Unit!65611)

(assert (=> b!4220369 (= lt!1501896 (lemmaSemiInverse!2504 (transformation!7788 (h!51855 rules!3967)) (seqFromList!5763 (_1!25213 lt!1501894))))))

(declare-fun b!4220370 () Bool)

(declare-fun matchR!6382 (Regex!12693 List!46558) Bool)

(assert (=> b!4220370 (= e!2620179 (matchR!6382 (regex!7788 (h!51855 rules!3967)) (_1!25213 (findLongestMatchInner!1663 (regex!7788 (h!51855 rules!3967)) Nil!46434 (size!34096 Nil!46434) input!3517 input!3517 (size!34096 input!3517)))))))

(declare-fun b!4220363 () Bool)

(declare-fun e!2620178 () Bool)

(assert (=> b!4220363 (= e!2620178 e!2620176)))

(declare-fun res!1734627 () Bool)

(assert (=> b!4220363 (=> (not res!1734627) (not e!2620176))))

(assert (=> b!4220363 (= res!1734627 (matchR!6382 (regex!7788 (h!51855 rules!3967)) (list!16801 (charsOf!5211 (_1!25211 (get!15112 lt!1501895))))))))

(declare-fun d!1243164 () Bool)

(assert (=> d!1243164 e!2620178))

(declare-fun res!1734632 () Bool)

(assert (=> d!1243164 (=> res!1734632 e!2620178)))

(declare-fun isEmpty!27511 (Option!9976) Bool)

(assert (=> d!1243164 (= res!1734632 (isEmpty!27511 lt!1501895))))

(assert (=> d!1243164 (= lt!1501895 e!2620177)))

(declare-fun c!718233 () Bool)

(assert (=> d!1243164 (= c!718233 (isEmpty!27510 (_1!25213 lt!1501894)))))

(declare-fun findLongestMatch!1576 (Regex!12693 List!46558) tuple2!44158)

(assert (=> d!1243164 (= lt!1501894 (findLongestMatch!1576 (regex!7788 (h!51855 rules!3967)) input!3517))))

(assert (=> d!1243164 (ruleValid!3500 thiss!26544 (h!51855 rules!3967))))

(assert (=> d!1243164 (= (maxPrefixOneRule!3378 thiss!26544 (h!51855 rules!3967) input!3517) lt!1501895)))

(assert (= (and d!1243164 c!718233) b!4220364))

(assert (= (and d!1243164 (not c!718233)) b!4220369))

(assert (= (and b!4220369 (not res!1734630)) b!4220370))

(assert (= (and d!1243164 (not res!1734632)) b!4220363))

(assert (= (and b!4220363 res!1734627) b!4220365))

(assert (= (and b!4220365 res!1734628) b!4220368))

(assert (= (and b!4220368 res!1734629) b!4220362))

(assert (= (and b!4220362 res!1734631) b!4220366))

(assert (= (and b!4220366 res!1734626) b!4220367))

(declare-fun m!4808995 () Bool)

(assert (=> b!4220363 m!4808995))

(declare-fun m!4808997 () Bool)

(assert (=> b!4220363 m!4808997))

(assert (=> b!4220363 m!4808997))

(declare-fun m!4808999 () Bool)

(assert (=> b!4220363 m!4808999))

(assert (=> b!4220363 m!4808999))

(declare-fun m!4809001 () Bool)

(assert (=> b!4220363 m!4809001))

(assert (=> b!4220362 m!4808995))

(declare-fun m!4809003 () Bool)

(assert (=> d!1243164 m!4809003))

(declare-fun m!4809005 () Bool)

(assert (=> d!1243164 m!4809005))

(declare-fun m!4809007 () Bool)

(assert (=> d!1243164 m!4809007))

(declare-fun m!4809009 () Bool)

(assert (=> d!1243164 m!4809009))

(declare-fun m!4809011 () Bool)

(assert (=> b!4220369 m!4809011))

(declare-fun m!4809013 () Bool)

(assert (=> b!4220369 m!4809013))

(declare-fun m!4809015 () Bool)

(assert (=> b!4220369 m!4809015))

(declare-fun m!4809017 () Bool)

(assert (=> b!4220369 m!4809017))

(assert (=> b!4220369 m!4809011))

(declare-fun m!4809019 () Bool)

(assert (=> b!4220369 m!4809019))

(declare-fun m!4809021 () Bool)

(assert (=> b!4220369 m!4809021))

(assert (=> b!4220369 m!4809017))

(declare-fun m!4809023 () Bool)

(assert (=> b!4220369 m!4809023))

(assert (=> b!4220369 m!4809011))

(declare-fun m!4809025 () Bool)

(assert (=> b!4220369 m!4809025))

(assert (=> b!4220369 m!4809021))

(declare-fun m!4809027 () Bool)

(assert (=> b!4220369 m!4809027))

(assert (=> b!4220369 m!4809011))

(assert (=> b!4220370 m!4809021))

(assert (=> b!4220370 m!4809017))

(assert (=> b!4220370 m!4809021))

(assert (=> b!4220370 m!4809017))

(assert (=> b!4220370 m!4809023))

(declare-fun m!4809029 () Bool)

(assert (=> b!4220370 m!4809029))

(assert (=> b!4220367 m!4808995))

(declare-fun m!4809031 () Bool)

(assert (=> b!4220367 m!4809031))

(assert (=> b!4220368 m!4808995))

(declare-fun m!4809033 () Bool)

(assert (=> b!4220368 m!4809033))

(assert (=> b!4220368 m!4809017))

(assert (=> b!4220365 m!4808995))

(assert (=> b!4220365 m!4808997))

(assert (=> b!4220365 m!4808997))

(assert (=> b!4220365 m!4808999))

(assert (=> b!4220365 m!4808999))

(declare-fun m!4809039 () Bool)

(assert (=> b!4220365 m!4809039))

(assert (=> b!4220366 m!4808995))

(declare-fun m!4809043 () Bool)

(assert (=> b!4220366 m!4809043))

(assert (=> b!4220366 m!4809043))

(declare-fun m!4809051 () Bool)

(assert (=> b!4220366 m!4809051))

(assert (=> b!4220222 d!1243164))

(declare-fun d!1243192 () Bool)

(assert (=> d!1243192 (= (isEmpty!27507 rules!3967) ((_ is Nil!46435) rules!3967))))

(assert (=> b!4220233 d!1243192))

(declare-fun d!1243196 () Bool)

(assert (=> d!1243196 (= (inv!61090 (tag!8652 (h!51855 rules!3967))) (= (mod (str.len (value!242486 (tag!8652 (h!51855 rules!3967)))) 2) 0))))

(assert (=> b!4220223 d!1243196))

(declare-fun d!1243198 () Bool)

(declare-fun res!1734653 () Bool)

(declare-fun e!2620203 () Bool)

(assert (=> d!1243198 (=> (not res!1734653) (not e!2620203))))

(declare-fun semiInverseModEq!3383 (Int Int) Bool)

(assert (=> d!1243198 (= res!1734653 (semiInverseModEq!3383 (toChars!10371 (transformation!7788 (h!51855 rules!3967))) (toValue!10512 (transformation!7788 (h!51855 rules!3967)))))))

(assert (=> d!1243198 (= (inv!61094 (transformation!7788 (h!51855 rules!3967))) e!2620203)))

(declare-fun b!4220409 () Bool)

(declare-fun equivClasses!3282 (Int Int) Bool)

(assert (=> b!4220409 (= e!2620203 (equivClasses!3282 (toChars!10371 (transformation!7788 (h!51855 rules!3967))) (toValue!10512 (transformation!7788 (h!51855 rules!3967)))))))

(assert (= (and d!1243198 res!1734653) b!4220409))

(declare-fun m!4809075 () Bool)

(assert (=> d!1243198 m!4809075))

(declare-fun m!4809077 () Bool)

(assert (=> b!4220409 m!4809077))

(assert (=> b!4220223 d!1243198))

(declare-fun b!4220433 () Bool)

(declare-fun res!1734675 () Bool)

(declare-fun e!2620223 () Bool)

(assert (=> b!4220433 (=> (not res!1734675) (not e!2620223))))

(declare-fun head!8952 (List!46558) C!25580)

(assert (=> b!4220433 (= res!1734675 (= (head!8952 p!3001) (head!8952 input!3517)))))

(declare-fun b!4220432 () Bool)

(declare-fun e!2620222 () Bool)

(assert (=> b!4220432 (= e!2620222 e!2620223)))

(declare-fun res!1734674 () Bool)

(assert (=> b!4220432 (=> (not res!1734674) (not e!2620223))))

(assert (=> b!4220432 (= res!1734674 (not ((_ is Nil!46434) input!3517)))))

(declare-fun b!4220434 () Bool)

(declare-fun tail!6799 (List!46558) List!46558)

(assert (=> b!4220434 (= e!2620223 (isPrefix!4647 (tail!6799 p!3001) (tail!6799 input!3517)))))

(declare-fun b!4220435 () Bool)

(declare-fun e!2620221 () Bool)

(assert (=> b!4220435 (= e!2620221 (>= (size!34096 input!3517) (size!34096 p!3001)))))

(declare-fun d!1243204 () Bool)

(assert (=> d!1243204 e!2620221))

(declare-fun res!1734673 () Bool)

(assert (=> d!1243204 (=> res!1734673 e!2620221)))

(declare-fun lt!1501903 () Bool)

(assert (=> d!1243204 (= res!1734673 (not lt!1501903))))

(assert (=> d!1243204 (= lt!1501903 e!2620222)))

(declare-fun res!1734672 () Bool)

(assert (=> d!1243204 (=> res!1734672 e!2620222)))

(assert (=> d!1243204 (= res!1734672 ((_ is Nil!46434) p!3001))))

(assert (=> d!1243204 (= (isPrefix!4647 p!3001 input!3517) lt!1501903)))

(assert (= (and d!1243204 (not res!1734672)) b!4220432))

(assert (= (and b!4220432 res!1734674) b!4220433))

(assert (= (and b!4220433 res!1734675) b!4220434))

(assert (= (and d!1243204 (not res!1734673)) b!4220435))

(declare-fun m!4809109 () Bool)

(assert (=> b!4220433 m!4809109))

(declare-fun m!4809111 () Bool)

(assert (=> b!4220433 m!4809111))

(declare-fun m!4809113 () Bool)

(assert (=> b!4220434 m!4809113))

(declare-fun m!4809115 () Bool)

(assert (=> b!4220434 m!4809115))

(assert (=> b!4220434 m!4809113))

(assert (=> b!4220434 m!4809115))

(declare-fun m!4809117 () Bool)

(assert (=> b!4220434 m!4809117))

(assert (=> b!4220435 m!4809017))

(declare-fun m!4809119 () Bool)

(assert (=> b!4220435 m!4809119))

(assert (=> b!4220221 d!1243204))

(declare-fun b!4220495 () Bool)

(declare-fun e!2620257 () Bool)

(declare-fun inv!15 (TokenValue!8018) Bool)

(assert (=> b!4220495 (= e!2620257 (inv!15 (value!242487 tBis!41)))))

(declare-fun b!4220496 () Bool)

(declare-fun res!1734678 () Bool)

(assert (=> b!4220496 (=> res!1734678 e!2620257)))

(assert (=> b!4220496 (= res!1734678 (not ((_ is IntegerValue!24056) (value!242487 tBis!41))))))

(declare-fun e!2620258 () Bool)

(assert (=> b!4220496 (= e!2620258 e!2620257)))

(declare-fun d!1243224 () Bool)

(declare-fun c!718247 () Bool)

(assert (=> d!1243224 (= c!718247 ((_ is IntegerValue!24054) (value!242487 tBis!41)))))

(declare-fun e!2620259 () Bool)

(assert (=> d!1243224 (= (inv!21 (value!242487 tBis!41)) e!2620259)))

(declare-fun b!4220494 () Bool)

(declare-fun inv!17 (TokenValue!8018) Bool)

(assert (=> b!4220494 (= e!2620258 (inv!17 (value!242487 tBis!41)))))

(declare-fun b!4220497 () Bool)

(declare-fun inv!16 (TokenValue!8018) Bool)

(assert (=> b!4220497 (= e!2620259 (inv!16 (value!242487 tBis!41)))))

(declare-fun b!4220498 () Bool)

(assert (=> b!4220498 (= e!2620259 e!2620258)))

(declare-fun c!718246 () Bool)

(assert (=> b!4220498 (= c!718246 ((_ is IntegerValue!24055) (value!242487 tBis!41)))))

(assert (= (and d!1243224 c!718247) b!4220497))

(assert (= (and d!1243224 (not c!718247)) b!4220498))

(assert (= (and b!4220498 c!718246) b!4220494))

(assert (= (and b!4220498 (not c!718246)) b!4220496))

(assert (= (and b!4220496 (not res!1734678)) b!4220495))

(declare-fun m!4809127 () Bool)

(assert (=> b!4220495 m!4809127))

(declare-fun m!4809129 () Bool)

(assert (=> b!4220494 m!4809129))

(declare-fun m!4809131 () Bool)

(assert (=> b!4220497 m!4809131))

(assert (=> b!4220232 d!1243224))

(declare-fun d!1243226 () Bool)

(declare-fun res!1734683 () Bool)

(declare-fun e!2620262 () Bool)

(assert (=> d!1243226 (=> (not res!1734683) (not e!2620262))))

(declare-fun validRegex!5760 (Regex!12693) Bool)

(assert (=> d!1243226 (= res!1734683 (validRegex!5760 (regex!7788 rBis!178)))))

(assert (=> d!1243226 (= (ruleValid!3500 thiss!26544 rBis!178) e!2620262)))

(declare-fun b!4220503 () Bool)

(declare-fun res!1734684 () Bool)

(assert (=> b!4220503 (=> (not res!1734684) (not e!2620262))))

(declare-fun nullable!4473 (Regex!12693) Bool)

(assert (=> b!4220503 (= res!1734684 (not (nullable!4473 (regex!7788 rBis!178))))))

(declare-fun b!4220504 () Bool)

(assert (=> b!4220504 (= e!2620262 (not (= (tag!8652 rBis!178) (String!53961 ""))))))

(assert (= (and d!1243226 res!1734683) b!4220503))

(assert (= (and b!4220503 res!1734684) b!4220504))

(declare-fun m!4809133 () Bool)

(assert (=> d!1243226 m!4809133))

(declare-fun m!4809135 () Bool)

(assert (=> b!4220503 m!4809135))

(assert (=> b!4220230 d!1243226))

(declare-fun d!1243228 () Bool)

(declare-fun lt!1501909 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7284 (List!46559) (InoxSet Rule!15376))

(assert (=> d!1243228 (= lt!1501909 (select (content!7284 rules!3967) rBis!178))))

(declare-fun e!2620267 () Bool)

(assert (=> d!1243228 (= lt!1501909 e!2620267)))

(declare-fun res!1734689 () Bool)

(assert (=> d!1243228 (=> (not res!1734689) (not e!2620267))))

(assert (=> d!1243228 (= res!1734689 ((_ is Cons!46435) rules!3967))))

(assert (=> d!1243228 (= (contains!9611 rules!3967 rBis!178) lt!1501909)))

(declare-fun b!4220509 () Bool)

(declare-fun e!2620268 () Bool)

(assert (=> b!4220509 (= e!2620267 e!2620268)))

(declare-fun res!1734690 () Bool)

(assert (=> b!4220509 (=> res!1734690 e!2620268)))

(assert (=> b!4220509 (= res!1734690 (= (h!51855 rules!3967) rBis!178))))

(declare-fun b!4220510 () Bool)

(assert (=> b!4220510 (= e!2620268 (contains!9611 (t!348944 rules!3967) rBis!178))))

(assert (= (and d!1243228 res!1734689) b!4220509))

(assert (= (and b!4220509 (not res!1734690)) b!4220510))

(declare-fun m!4809137 () Bool)

(assert (=> d!1243228 m!4809137))

(declare-fun m!4809139 () Bool)

(assert (=> d!1243228 m!4809139))

(declare-fun m!4809141 () Bool)

(assert (=> b!4220510 m!4809141))

(assert (=> b!4220209 d!1243228))

(declare-fun d!1243230 () Bool)

(declare-fun res!1734695 () Bool)

(declare-fun e!2620271 () Bool)

(assert (=> d!1243230 (=> (not res!1734695) (not e!2620271))))

(assert (=> d!1243230 (= res!1734695 (not (isEmpty!27510 (originalCharacters!8170 tBis!41))))))

(assert (=> d!1243230 (= (inv!61093 tBis!41) e!2620271)))

(declare-fun b!4220515 () Bool)

(declare-fun res!1734696 () Bool)

(assert (=> b!4220515 (=> (not res!1734696) (not e!2620271))))

(declare-fun dynLambda!19998 (Int TokenValue!8018) BalanceConc!27592)

(assert (=> b!4220515 (= res!1734696 (= (originalCharacters!8170 tBis!41) (list!16801 (dynLambda!19998 (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (value!242487 tBis!41)))))))

(declare-fun b!4220516 () Bool)

(assert (=> b!4220516 (= e!2620271 (= (size!34093 tBis!41) (size!34096 (originalCharacters!8170 tBis!41))))))

(assert (= (and d!1243230 res!1734695) b!4220515))

(assert (= (and b!4220515 res!1734696) b!4220516))

(declare-fun b_lambda!124383 () Bool)

(assert (=> (not b_lambda!124383) (not b!4220515)))

(declare-fun t!348966 () Bool)

(declare-fun tb!253599 () Bool)

(assert (=> (and b!4220213 (= (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41)))) t!348966) tb!253599))

(declare-fun b!4220521 () Bool)

(declare-fun e!2620274 () Bool)

(declare-fun tp!1291372 () Bool)

(declare-fun inv!61097 (Conc!13999) Bool)

(assert (=> b!4220521 (= e!2620274 (and (inv!61097 (c!718219 (dynLambda!19998 (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (value!242487 tBis!41)))) tp!1291372))))

(declare-fun result!309056 () Bool)

(declare-fun inv!61098 (BalanceConc!27592) Bool)

(assert (=> tb!253599 (= result!309056 (and (inv!61098 (dynLambda!19998 (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (value!242487 tBis!41))) e!2620274))))

(assert (= tb!253599 b!4220521))

(declare-fun m!4809143 () Bool)

(assert (=> b!4220521 m!4809143))

(declare-fun m!4809145 () Bool)

(assert (=> tb!253599 m!4809145))

(assert (=> b!4220515 t!348966))

(declare-fun b_and!332977 () Bool)

(assert (= b_and!332935 (and (=> t!348966 result!309056) b_and!332977)))

(declare-fun tb!253601 () Bool)

(declare-fun t!348968 () Bool)

(assert (=> (and b!4220217 (= (toChars!10371 (transformation!7788 (h!51855 rules!3967))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41)))) t!348968) tb!253601))

(declare-fun result!309060 () Bool)

(assert (= result!309060 result!309056))

(assert (=> b!4220515 t!348968))

(declare-fun b_and!332979 () Bool)

(assert (= b_and!332939 (and (=> t!348968 result!309060) b_and!332979)))

(declare-fun tb!253603 () Bool)

(declare-fun t!348970 () Bool)

(assert (=> (and b!4220235 (= (toChars!10371 (transformation!7788 rBis!178)) (toChars!10371 (transformation!7788 (rule!10920 tBis!41)))) t!348970) tb!253603))

(declare-fun result!309062 () Bool)

(assert (= result!309062 result!309056))

(assert (=> b!4220515 t!348970))

(declare-fun b_and!332981 () Bool)

(assert (= b_and!332943 (and (=> t!348970 result!309062) b_and!332981)))

(declare-fun t!348972 () Bool)

(declare-fun tb!253605 () Bool)

(assert (=> (and b!4220218 (= (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41)))) t!348972) tb!253605))

(declare-fun result!309064 () Bool)

(assert (= result!309064 result!309056))

(assert (=> b!4220515 t!348972))

(declare-fun b_and!332983 () Bool)

(assert (= b_and!332947 (and (=> t!348972 result!309064) b_and!332983)))

(declare-fun m!4809147 () Bool)

(assert (=> d!1243230 m!4809147))

(declare-fun m!4809149 () Bool)

(assert (=> b!4220515 m!4809149))

(assert (=> b!4220515 m!4809149))

(declare-fun m!4809151 () Bool)

(assert (=> b!4220515 m!4809151))

(declare-fun m!4809153 () Bool)

(assert (=> b!4220516 m!4809153))

(assert (=> start!403366 d!1243230))

(declare-fun d!1243232 () Bool)

(declare-fun res!1734697 () Bool)

(declare-fun e!2620275 () Bool)

(assert (=> d!1243232 (=> (not res!1734697) (not e!2620275))))

(assert (=> d!1243232 (= res!1734697 (not (isEmpty!27510 (originalCharacters!8170 t!8364))))))

(assert (=> d!1243232 (= (inv!61093 t!8364) e!2620275)))

(declare-fun b!4220522 () Bool)

(declare-fun res!1734698 () Bool)

(assert (=> b!4220522 (=> (not res!1734698) (not e!2620275))))

(assert (=> b!4220522 (= res!1734698 (= (originalCharacters!8170 t!8364) (list!16801 (dynLambda!19998 (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (value!242487 t!8364)))))))

(declare-fun b!4220523 () Bool)

(assert (=> b!4220523 (= e!2620275 (= (size!34093 t!8364) (size!34096 (originalCharacters!8170 t!8364))))))

(assert (= (and d!1243232 res!1734697) b!4220522))

(assert (= (and b!4220522 res!1734698) b!4220523))

(declare-fun b_lambda!124385 () Bool)

(assert (=> (not b_lambda!124385) (not b!4220522)))

(declare-fun tb!253607 () Bool)

(declare-fun t!348974 () Bool)

(assert (=> (and b!4220213 (= (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (toChars!10371 (transformation!7788 (rule!10920 t!8364)))) t!348974) tb!253607))

(declare-fun b!4220524 () Bool)

(declare-fun e!2620276 () Bool)

(declare-fun tp!1291373 () Bool)

(assert (=> b!4220524 (= e!2620276 (and (inv!61097 (c!718219 (dynLambda!19998 (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (value!242487 t!8364)))) tp!1291373))))

(declare-fun result!309066 () Bool)

(assert (=> tb!253607 (= result!309066 (and (inv!61098 (dynLambda!19998 (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (value!242487 t!8364))) e!2620276))))

(assert (= tb!253607 b!4220524))

(declare-fun m!4809155 () Bool)

(assert (=> b!4220524 m!4809155))

(declare-fun m!4809157 () Bool)

(assert (=> tb!253607 m!4809157))

(assert (=> b!4220522 t!348974))

(declare-fun b_and!332985 () Bool)

(assert (= b_and!332977 (and (=> t!348974 result!309066) b_and!332985)))

(declare-fun tb!253609 () Bool)

(declare-fun t!348976 () Bool)

(assert (=> (and b!4220217 (= (toChars!10371 (transformation!7788 (h!51855 rules!3967))) (toChars!10371 (transformation!7788 (rule!10920 t!8364)))) t!348976) tb!253609))

(declare-fun result!309068 () Bool)

(assert (= result!309068 result!309066))

(assert (=> b!4220522 t!348976))

(declare-fun b_and!332987 () Bool)

(assert (= b_and!332979 (and (=> t!348976 result!309068) b_and!332987)))

(declare-fun t!348978 () Bool)

(declare-fun tb!253611 () Bool)

(assert (=> (and b!4220235 (= (toChars!10371 (transformation!7788 rBis!178)) (toChars!10371 (transformation!7788 (rule!10920 t!8364)))) t!348978) tb!253611))

(declare-fun result!309070 () Bool)

(assert (= result!309070 result!309066))

(assert (=> b!4220522 t!348978))

(declare-fun b_and!332989 () Bool)

(assert (= b_and!332981 (and (=> t!348978 result!309070) b_and!332989)))

(declare-fun t!348980 () Bool)

(declare-fun tb!253613 () Bool)

(assert (=> (and b!4220218 (= (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (toChars!10371 (transformation!7788 (rule!10920 t!8364)))) t!348980) tb!253613))

(declare-fun result!309072 () Bool)

(assert (= result!309072 result!309066))

(assert (=> b!4220522 t!348980))

(declare-fun b_and!332991 () Bool)

(assert (= b_and!332983 (and (=> t!348980 result!309072) b_and!332991)))

(declare-fun m!4809159 () Bool)

(assert (=> d!1243232 m!4809159))

(declare-fun m!4809161 () Bool)

(assert (=> b!4220522 m!4809161))

(assert (=> b!4220522 m!4809161))

(declare-fun m!4809163 () Bool)

(assert (=> b!4220522 m!4809163))

(declare-fun m!4809165 () Bool)

(assert (=> b!4220523 m!4809165))

(assert (=> start!403366 d!1243232))

(declare-fun d!1243234 () Bool)

(declare-fun list!16803 (Conc!13999) List!46558)

(assert (=> d!1243234 (= (list!16801 (charsOf!5211 tBis!41)) (list!16803 (c!718219 (charsOf!5211 tBis!41))))))

(declare-fun bs!597729 () Bool)

(assert (= bs!597729 d!1243234))

(declare-fun m!4809167 () Bool)

(assert (=> bs!597729 m!4809167))

(assert (=> b!4220220 d!1243234))

(declare-fun d!1243236 () Bool)

(declare-fun lt!1501912 () BalanceConc!27592)

(assert (=> d!1243236 (= (list!16801 lt!1501912) (originalCharacters!8170 tBis!41))))

(assert (=> d!1243236 (= lt!1501912 (dynLambda!19998 (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (value!242487 tBis!41)))))

(assert (=> d!1243236 (= (charsOf!5211 tBis!41) lt!1501912)))

(declare-fun b_lambda!124387 () Bool)

(assert (=> (not b_lambda!124387) (not d!1243236)))

(assert (=> d!1243236 t!348966))

(declare-fun b_and!332993 () Bool)

(assert (= b_and!332985 (and (=> t!348966 result!309056) b_and!332993)))

(assert (=> d!1243236 t!348968))

(declare-fun b_and!332995 () Bool)

(assert (= b_and!332987 (and (=> t!348968 result!309060) b_and!332995)))

(assert (=> d!1243236 t!348970))

(declare-fun b_and!332997 () Bool)

(assert (= b_and!332989 (and (=> t!348970 result!309062) b_and!332997)))

(assert (=> d!1243236 t!348972))

(declare-fun b_and!332999 () Bool)

(assert (= b_and!332991 (and (=> t!348972 result!309064) b_and!332999)))

(declare-fun m!4809169 () Bool)

(assert (=> d!1243236 m!4809169))

(assert (=> d!1243236 m!4809149))

(assert (=> b!4220220 d!1243236))

(declare-fun b!4220526 () Bool)

(declare-fun e!2620277 () Bool)

(assert (=> b!4220526 (= e!2620277 (inv!15 (value!242487 t!8364)))))

(declare-fun b!4220527 () Bool)

(declare-fun res!1734699 () Bool)

(assert (=> b!4220527 (=> res!1734699 e!2620277)))

(assert (=> b!4220527 (= res!1734699 (not ((_ is IntegerValue!24056) (value!242487 t!8364))))))

(declare-fun e!2620278 () Bool)

(assert (=> b!4220527 (= e!2620278 e!2620277)))

(declare-fun d!1243238 () Bool)

(declare-fun c!718249 () Bool)

(assert (=> d!1243238 (= c!718249 ((_ is IntegerValue!24054) (value!242487 t!8364)))))

(declare-fun e!2620279 () Bool)

(assert (=> d!1243238 (= (inv!21 (value!242487 t!8364)) e!2620279)))

(declare-fun b!4220525 () Bool)

(assert (=> b!4220525 (= e!2620278 (inv!17 (value!242487 t!8364)))))

(declare-fun b!4220528 () Bool)

(assert (=> b!4220528 (= e!2620279 (inv!16 (value!242487 t!8364)))))

(declare-fun b!4220529 () Bool)

(assert (=> b!4220529 (= e!2620279 e!2620278)))

(declare-fun c!718248 () Bool)

(assert (=> b!4220529 (= c!718248 ((_ is IntegerValue!24055) (value!242487 t!8364)))))

(assert (= (and d!1243238 c!718249) b!4220528))

(assert (= (and d!1243238 (not c!718249)) b!4220529))

(assert (= (and b!4220529 c!718248) b!4220525))

(assert (= (and b!4220529 (not c!718248)) b!4220527))

(assert (= (and b!4220527 (not res!1734699)) b!4220526))

(declare-fun m!4809171 () Bool)

(assert (=> b!4220526 m!4809171))

(declare-fun m!4809173 () Bool)

(assert (=> b!4220525 m!4809173))

(declare-fun m!4809175 () Bool)

(assert (=> b!4220528 m!4809175))

(assert (=> b!4220231 d!1243238))

(declare-fun d!1243240 () Bool)

(assert (=> d!1243240 (= (inv!61090 (tag!8652 (rule!10920 tBis!41))) (= (mod (str.len (value!242486 (tag!8652 (rule!10920 tBis!41)))) 2) 0))))

(assert (=> b!4220229 d!1243240))

(declare-fun d!1243242 () Bool)

(declare-fun res!1734700 () Bool)

(declare-fun e!2620280 () Bool)

(assert (=> d!1243242 (=> (not res!1734700) (not e!2620280))))

(assert (=> d!1243242 (= res!1734700 (semiInverseModEq!3383 (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (toValue!10512 (transformation!7788 (rule!10920 tBis!41)))))))

(assert (=> d!1243242 (= (inv!61094 (transformation!7788 (rule!10920 tBis!41))) e!2620280)))

(declare-fun b!4220530 () Bool)

(assert (=> b!4220530 (= e!2620280 (equivClasses!3282 (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (toValue!10512 (transformation!7788 (rule!10920 tBis!41)))))))

(assert (= (and d!1243242 res!1734700) b!4220530))

(declare-fun m!4809177 () Bool)

(assert (=> d!1243242 m!4809177))

(declare-fun m!4809179 () Bool)

(assert (=> b!4220530 m!4809179))

(assert (=> b!4220229 d!1243242))

(declare-fun b!4220539 () Bool)

(declare-fun e!2620285 () List!46558)

(assert (=> b!4220539 (= e!2620285 suffixBis!41)))

(declare-fun b!4220541 () Bool)

(declare-fun res!1734705 () Bool)

(declare-fun e!2620286 () Bool)

(assert (=> b!4220541 (=> (not res!1734705) (not e!2620286))))

(declare-fun lt!1501915 () List!46558)

(assert (=> b!4220541 (= res!1734705 (= (size!34096 lt!1501915) (+ (size!34096 pBis!121) (size!34096 suffixBis!41))))))

(declare-fun d!1243244 () Bool)

(assert (=> d!1243244 e!2620286))

(declare-fun res!1734706 () Bool)

(assert (=> d!1243244 (=> (not res!1734706) (not e!2620286))))

(declare-fun content!7285 (List!46558) (InoxSet C!25580))

(assert (=> d!1243244 (= res!1734706 (= (content!7285 lt!1501915) ((_ map or) (content!7285 pBis!121) (content!7285 suffixBis!41))))))

(assert (=> d!1243244 (= lt!1501915 e!2620285)))

(declare-fun c!718252 () Bool)

(assert (=> d!1243244 (= c!718252 ((_ is Nil!46434) pBis!121))))

(assert (=> d!1243244 (= (++!11862 pBis!121 suffixBis!41) lt!1501915)))

(declare-fun b!4220542 () Bool)

(assert (=> b!4220542 (= e!2620286 (or (not (= suffixBis!41 Nil!46434)) (= lt!1501915 pBis!121)))))

(declare-fun b!4220540 () Bool)

(assert (=> b!4220540 (= e!2620285 (Cons!46434 (h!51854 pBis!121) (++!11862 (t!348943 pBis!121) suffixBis!41)))))

(assert (= (and d!1243244 c!718252) b!4220539))

(assert (= (and d!1243244 (not c!718252)) b!4220540))

(assert (= (and d!1243244 res!1734706) b!4220541))

(assert (= (and b!4220541 res!1734705) b!4220542))

(declare-fun m!4809181 () Bool)

(assert (=> b!4220541 m!4809181))

(declare-fun m!4809183 () Bool)

(assert (=> b!4220541 m!4809183))

(declare-fun m!4809185 () Bool)

(assert (=> b!4220541 m!4809185))

(declare-fun m!4809187 () Bool)

(assert (=> d!1243244 m!4809187))

(declare-fun m!4809189 () Bool)

(assert (=> d!1243244 m!4809189))

(declare-fun m!4809191 () Bool)

(assert (=> d!1243244 m!4809191))

(declare-fun m!4809193 () Bool)

(assert (=> b!4220540 m!4809193))

(assert (=> b!4220208 d!1243244))

(declare-fun b!4220543 () Bool)

(declare-fun res!1734712 () Bool)

(declare-fun e!2620287 () Bool)

(assert (=> b!4220543 (=> (not res!1734712) (not e!2620287))))

(declare-fun lt!1501919 () Option!9976)

(assert (=> b!4220543 (= res!1734712 (= (rule!10920 (_1!25211 (get!15112 lt!1501919))) rBis!178))))

(declare-fun b!4220545 () Bool)

(declare-fun e!2620288 () Option!9976)

(assert (=> b!4220545 (= e!2620288 None!9975)))

(declare-fun b!4220546 () Bool)

(declare-fun res!1734709 () Bool)

(assert (=> b!4220546 (=> (not res!1734709) (not e!2620287))))

(assert (=> b!4220546 (= res!1734709 (= (++!11862 (list!16801 (charsOf!5211 (_1!25211 (get!15112 lt!1501919)))) (_2!25211 (get!15112 lt!1501919))) input!3517))))

(declare-fun b!4220547 () Bool)

(declare-fun res!1734707 () Bool)

(assert (=> b!4220547 (=> (not res!1734707) (not e!2620287))))

(assert (=> b!4220547 (= res!1734707 (= (value!242487 (_1!25211 (get!15112 lt!1501919))) (apply!10703 (transformation!7788 (rule!10920 (_1!25211 (get!15112 lt!1501919)))) (seqFromList!5763 (originalCharacters!8170 (_1!25211 (get!15112 lt!1501919)))))))))

(declare-fun b!4220548 () Bool)

(assert (=> b!4220548 (= e!2620287 (= (size!34093 (_1!25211 (get!15112 lt!1501919))) (size!34096 (originalCharacters!8170 (_1!25211 (get!15112 lt!1501919))))))))

(declare-fun b!4220549 () Bool)

(declare-fun res!1734710 () Bool)

(assert (=> b!4220549 (=> (not res!1734710) (not e!2620287))))

(assert (=> b!4220549 (= res!1734710 (< (size!34096 (_2!25211 (get!15112 lt!1501919))) (size!34096 input!3517)))))

(declare-fun b!4220550 () Bool)

(declare-fun lt!1501918 () tuple2!44158)

(assert (=> b!4220550 (= e!2620288 (Some!9975 (tuple2!44155 (Token!14279 (apply!10703 (transformation!7788 rBis!178) (seqFromList!5763 (_1!25213 lt!1501918))) rBis!178 (size!34097 (seqFromList!5763 (_1!25213 lt!1501918))) (_1!25213 lt!1501918)) (_2!25213 lt!1501918))))))

(declare-fun lt!1501916 () Unit!65611)

(assert (=> b!4220550 (= lt!1501916 (longestMatchIsAcceptedByMatchOrIsEmpty!1636 (regex!7788 rBis!178) input!3517))))

(declare-fun res!1734711 () Bool)

(assert (=> b!4220550 (= res!1734711 (isEmpty!27510 (_1!25213 (findLongestMatchInner!1663 (regex!7788 rBis!178) Nil!46434 (size!34096 Nil!46434) input!3517 input!3517 (size!34096 input!3517)))))))

(declare-fun e!2620290 () Bool)

(assert (=> b!4220550 (=> res!1734711 e!2620290)))

(assert (=> b!4220550 e!2620290))

(declare-fun lt!1501917 () Unit!65611)

(assert (=> b!4220550 (= lt!1501917 lt!1501916)))

(declare-fun lt!1501920 () Unit!65611)

(assert (=> b!4220550 (= lt!1501920 (lemmaSemiInverse!2504 (transformation!7788 rBis!178) (seqFromList!5763 (_1!25213 lt!1501918))))))

(declare-fun b!4220551 () Bool)

(assert (=> b!4220551 (= e!2620290 (matchR!6382 (regex!7788 rBis!178) (_1!25213 (findLongestMatchInner!1663 (regex!7788 rBis!178) Nil!46434 (size!34096 Nil!46434) input!3517 input!3517 (size!34096 input!3517)))))))

(declare-fun b!4220544 () Bool)

(declare-fun e!2620289 () Bool)

(assert (=> b!4220544 (= e!2620289 e!2620287)))

(declare-fun res!1734708 () Bool)

(assert (=> b!4220544 (=> (not res!1734708) (not e!2620287))))

(assert (=> b!4220544 (= res!1734708 (matchR!6382 (regex!7788 rBis!178) (list!16801 (charsOf!5211 (_1!25211 (get!15112 lt!1501919))))))))

(declare-fun d!1243246 () Bool)

(assert (=> d!1243246 e!2620289))

(declare-fun res!1734713 () Bool)

(assert (=> d!1243246 (=> res!1734713 e!2620289)))

(assert (=> d!1243246 (= res!1734713 (isEmpty!27511 lt!1501919))))

(assert (=> d!1243246 (= lt!1501919 e!2620288)))

(declare-fun c!718253 () Bool)

(assert (=> d!1243246 (= c!718253 (isEmpty!27510 (_1!25213 lt!1501918)))))

(assert (=> d!1243246 (= lt!1501918 (findLongestMatch!1576 (regex!7788 rBis!178) input!3517))))

(assert (=> d!1243246 (ruleValid!3500 thiss!26544 rBis!178)))

(assert (=> d!1243246 (= (maxPrefixOneRule!3378 thiss!26544 rBis!178 input!3517) lt!1501919)))

(assert (= (and d!1243246 c!718253) b!4220545))

(assert (= (and d!1243246 (not c!718253)) b!4220550))

(assert (= (and b!4220550 (not res!1734711)) b!4220551))

(assert (= (and d!1243246 (not res!1734713)) b!4220544))

(assert (= (and b!4220544 res!1734708) b!4220546))

(assert (= (and b!4220546 res!1734709) b!4220549))

(assert (= (and b!4220549 res!1734710) b!4220543))

(assert (= (and b!4220543 res!1734712) b!4220547))

(assert (= (and b!4220547 res!1734707) b!4220548))

(declare-fun m!4809195 () Bool)

(assert (=> b!4220544 m!4809195))

(declare-fun m!4809197 () Bool)

(assert (=> b!4220544 m!4809197))

(assert (=> b!4220544 m!4809197))

(declare-fun m!4809199 () Bool)

(assert (=> b!4220544 m!4809199))

(assert (=> b!4220544 m!4809199))

(declare-fun m!4809201 () Bool)

(assert (=> b!4220544 m!4809201))

(assert (=> b!4220543 m!4809195))

(declare-fun m!4809203 () Bool)

(assert (=> d!1243246 m!4809203))

(declare-fun m!4809205 () Bool)

(assert (=> d!1243246 m!4809205))

(declare-fun m!4809207 () Bool)

(assert (=> d!1243246 m!4809207))

(assert (=> d!1243246 m!4808809))

(declare-fun m!4809209 () Bool)

(assert (=> b!4220550 m!4809209))

(declare-fun m!4809211 () Bool)

(assert (=> b!4220550 m!4809211))

(declare-fun m!4809213 () Bool)

(assert (=> b!4220550 m!4809213))

(assert (=> b!4220550 m!4809017))

(assert (=> b!4220550 m!4809209))

(declare-fun m!4809215 () Bool)

(assert (=> b!4220550 m!4809215))

(assert (=> b!4220550 m!4809021))

(assert (=> b!4220550 m!4809017))

(declare-fun m!4809217 () Bool)

(assert (=> b!4220550 m!4809217))

(assert (=> b!4220550 m!4809209))

(declare-fun m!4809219 () Bool)

(assert (=> b!4220550 m!4809219))

(assert (=> b!4220550 m!4809021))

(declare-fun m!4809221 () Bool)

(assert (=> b!4220550 m!4809221))

(assert (=> b!4220550 m!4809209))

(assert (=> b!4220551 m!4809021))

(assert (=> b!4220551 m!4809017))

(assert (=> b!4220551 m!4809021))

(assert (=> b!4220551 m!4809017))

(assert (=> b!4220551 m!4809217))

(declare-fun m!4809223 () Bool)

(assert (=> b!4220551 m!4809223))

(assert (=> b!4220548 m!4809195))

(declare-fun m!4809225 () Bool)

(assert (=> b!4220548 m!4809225))

(assert (=> b!4220549 m!4809195))

(declare-fun m!4809227 () Bool)

(assert (=> b!4220549 m!4809227))

(assert (=> b!4220549 m!4809017))

(assert (=> b!4220546 m!4809195))

(assert (=> b!4220546 m!4809197))

(assert (=> b!4220546 m!4809197))

(assert (=> b!4220546 m!4809199))

(assert (=> b!4220546 m!4809199))

(declare-fun m!4809229 () Bool)

(assert (=> b!4220546 m!4809229))

(assert (=> b!4220547 m!4809195))

(declare-fun m!4809231 () Bool)

(assert (=> b!4220547 m!4809231))

(assert (=> b!4220547 m!4809231))

(declare-fun m!4809233 () Bool)

(assert (=> b!4220547 m!4809233))

(assert (=> b!4220219 d!1243246))

(declare-fun b!4220553 () Bool)

(declare-fun res!1734717 () Bool)

(declare-fun e!2620293 () Bool)

(assert (=> b!4220553 (=> (not res!1734717) (not e!2620293))))

(assert (=> b!4220553 (= res!1734717 (= (head!8952 input!3517) (head!8952 input!3517)))))

(declare-fun b!4220552 () Bool)

(declare-fun e!2620292 () Bool)

(assert (=> b!4220552 (= e!2620292 e!2620293)))

(declare-fun res!1734716 () Bool)

(assert (=> b!4220552 (=> (not res!1734716) (not e!2620293))))

(assert (=> b!4220552 (= res!1734716 (not ((_ is Nil!46434) input!3517)))))

(declare-fun b!4220554 () Bool)

(assert (=> b!4220554 (= e!2620293 (isPrefix!4647 (tail!6799 input!3517) (tail!6799 input!3517)))))

(declare-fun b!4220555 () Bool)

(declare-fun e!2620291 () Bool)

(assert (=> b!4220555 (= e!2620291 (>= (size!34096 input!3517) (size!34096 input!3517)))))

(declare-fun d!1243248 () Bool)

(assert (=> d!1243248 e!2620291))

(declare-fun res!1734715 () Bool)

(assert (=> d!1243248 (=> res!1734715 e!2620291)))

(declare-fun lt!1501921 () Bool)

(assert (=> d!1243248 (= res!1734715 (not lt!1501921))))

(assert (=> d!1243248 (= lt!1501921 e!2620292)))

(declare-fun res!1734714 () Bool)

(assert (=> d!1243248 (=> res!1734714 e!2620292)))

(assert (=> d!1243248 (= res!1734714 ((_ is Nil!46434) input!3517))))

(assert (=> d!1243248 (= (isPrefix!4647 input!3517 input!3517) lt!1501921)))

(assert (= (and d!1243248 (not res!1734714)) b!4220552))

(assert (= (and b!4220552 res!1734716) b!4220553))

(assert (= (and b!4220553 res!1734717) b!4220554))

(assert (= (and d!1243248 (not res!1734715)) b!4220555))

(assert (=> b!4220553 m!4809111))

(assert (=> b!4220553 m!4809111))

(assert (=> b!4220554 m!4809115))

(assert (=> b!4220554 m!4809115))

(assert (=> b!4220554 m!4809115))

(assert (=> b!4220554 m!4809115))

(declare-fun m!4809235 () Bool)

(assert (=> b!4220554 m!4809235))

(assert (=> b!4220555 m!4809017))

(assert (=> b!4220555 m!4809017))

(assert (=> b!4220219 d!1243248))

(declare-fun d!1243250 () Bool)

(assert (=> d!1243250 (isPrefix!4647 input!3517 input!3517)))

(declare-fun lt!1501924 () Unit!65611)

(declare-fun choose!25860 (List!46558 List!46558) Unit!65611)

(assert (=> d!1243250 (= lt!1501924 (choose!25860 input!3517 input!3517))))

(assert (=> d!1243250 (= (lemmaIsPrefixRefl!3064 input!3517 input!3517) lt!1501924)))

(declare-fun bs!597730 () Bool)

(assert (= bs!597730 d!1243250))

(assert (=> bs!597730 m!4808805))

(declare-fun m!4809237 () Bool)

(assert (=> bs!597730 m!4809237))

(assert (=> b!4220219 d!1243250))

(declare-fun d!1243252 () Bool)

(assert (=> d!1243252 (= (inv!61090 (tag!8652 rBis!178)) (= (mod (str.len (value!242486 (tag!8652 rBis!178))) 2) 0))))

(assert (=> b!4220238 d!1243252))

(declare-fun d!1243254 () Bool)

(declare-fun res!1734718 () Bool)

(declare-fun e!2620294 () Bool)

(assert (=> d!1243254 (=> (not res!1734718) (not e!2620294))))

(assert (=> d!1243254 (= res!1734718 (semiInverseModEq!3383 (toChars!10371 (transformation!7788 rBis!178)) (toValue!10512 (transformation!7788 rBis!178))))))

(assert (=> d!1243254 (= (inv!61094 (transformation!7788 rBis!178)) e!2620294)))

(declare-fun b!4220556 () Bool)

(assert (=> b!4220556 (= e!2620294 (equivClasses!3282 (toChars!10371 (transformation!7788 rBis!178)) (toValue!10512 (transformation!7788 rBis!178))))))

(assert (= (and d!1243254 res!1734718) b!4220556))

(declare-fun m!4809239 () Bool)

(assert (=> d!1243254 m!4809239))

(declare-fun m!4809241 () Bool)

(assert (=> b!4220556 m!4809241))

(assert (=> b!4220238 d!1243254))

(declare-fun d!1243256 () Bool)

(declare-fun res!1734721 () Bool)

(declare-fun e!2620297 () Bool)

(assert (=> d!1243256 (=> (not res!1734721) (not e!2620297))))

(declare-fun rulesValid!3052 (LexerInterface!7383 List!46559) Bool)

(assert (=> d!1243256 (= res!1734721 (rulesValid!3052 thiss!26544 rules!3967))))

(assert (=> d!1243256 (= (rulesInvariant!6594 thiss!26544 rules!3967) e!2620297)))

(declare-fun b!4220559 () Bool)

(declare-datatypes ((List!46561 0))(
  ( (Nil!46437) (Cons!46437 (h!51857 String!53960) (t!348986 List!46561)) )
))
(declare-fun noDuplicateTag!3213 (LexerInterface!7383 List!46559 List!46561) Bool)

(assert (=> b!4220559 (= e!2620297 (noDuplicateTag!3213 thiss!26544 rules!3967 Nil!46437))))

(assert (= (and d!1243256 res!1734721) b!4220559))

(declare-fun m!4809243 () Bool)

(assert (=> d!1243256 m!4809243))

(declare-fun m!4809245 () Bool)

(assert (=> b!4220559 m!4809245))

(assert (=> b!4220228 d!1243256))

(declare-fun b!4220560 () Bool)

(declare-fun e!2620298 () List!46558)

(assert (=> b!4220560 (= e!2620298 suffix!1557)))

(declare-fun b!4220562 () Bool)

(declare-fun res!1734722 () Bool)

(declare-fun e!2620299 () Bool)

(assert (=> b!4220562 (=> (not res!1734722) (not e!2620299))))

(declare-fun lt!1501925 () List!46558)

(assert (=> b!4220562 (= res!1734722 (= (size!34096 lt!1501925) (+ (size!34096 p!3001) (size!34096 suffix!1557))))))

(declare-fun d!1243258 () Bool)

(assert (=> d!1243258 e!2620299))

(declare-fun res!1734723 () Bool)

(assert (=> d!1243258 (=> (not res!1734723) (not e!2620299))))

(assert (=> d!1243258 (= res!1734723 (= (content!7285 lt!1501925) ((_ map or) (content!7285 p!3001) (content!7285 suffix!1557))))))

(assert (=> d!1243258 (= lt!1501925 e!2620298)))

(declare-fun c!718254 () Bool)

(assert (=> d!1243258 (= c!718254 ((_ is Nil!46434) p!3001))))

(assert (=> d!1243258 (= (++!11862 p!3001 suffix!1557) lt!1501925)))

(declare-fun b!4220563 () Bool)

(assert (=> b!4220563 (= e!2620299 (or (not (= suffix!1557 Nil!46434)) (= lt!1501925 p!3001)))))

(declare-fun b!4220561 () Bool)

(assert (=> b!4220561 (= e!2620298 (Cons!46434 (h!51854 p!3001) (++!11862 (t!348943 p!3001) suffix!1557)))))

(assert (= (and d!1243258 c!718254) b!4220560))

(assert (= (and d!1243258 (not c!718254)) b!4220561))

(assert (= (and d!1243258 res!1734723) b!4220562))

(assert (= (and b!4220562 res!1734722) b!4220563))

(declare-fun m!4809247 () Bool)

(assert (=> b!4220562 m!4809247))

(assert (=> b!4220562 m!4809119))

(declare-fun m!4809249 () Bool)

(assert (=> b!4220562 m!4809249))

(declare-fun m!4809251 () Bool)

(assert (=> d!1243258 m!4809251))

(declare-fun m!4809253 () Bool)

(assert (=> d!1243258 m!4809253))

(declare-fun m!4809255 () Bool)

(assert (=> d!1243258 m!4809255))

(declare-fun m!4809257 () Bool)

(assert (=> b!4220561 m!4809257))

(assert (=> b!4220237 d!1243258))

(declare-fun b!4220582 () Bool)

(declare-fun e!2620307 () Option!9976)

(declare-fun lt!1501940 () Option!9976)

(declare-fun lt!1501936 () Option!9976)

(assert (=> b!4220582 (= e!2620307 (ite (and ((_ is None!9975) lt!1501940) ((_ is None!9975) lt!1501936)) None!9975 (ite ((_ is None!9975) lt!1501936) lt!1501940 (ite ((_ is None!9975) lt!1501940) lt!1501936 (ite (>= (size!34093 (_1!25211 (v!40863 lt!1501940))) (size!34093 (_1!25211 (v!40863 lt!1501936)))) lt!1501940 lt!1501936)))))))

(declare-fun call!293144 () Option!9976)

(assert (=> b!4220582 (= lt!1501940 call!293144)))

(assert (=> b!4220582 (= lt!1501936 (maxPrefix!4423 thiss!26544 (t!348944 rules!3967) input!3517))))

(declare-fun b!4220583 () Bool)

(declare-fun res!1734744 () Bool)

(declare-fun e!2620306 () Bool)

(assert (=> b!4220583 (=> (not res!1734744) (not e!2620306))))

(declare-fun lt!1501938 () Option!9976)

(assert (=> b!4220583 (= res!1734744 (matchR!6382 (regex!7788 (rule!10920 (_1!25211 (get!15112 lt!1501938)))) (list!16801 (charsOf!5211 (_1!25211 (get!15112 lt!1501938))))))))

(declare-fun b!4220584 () Bool)

(declare-fun res!1734740 () Bool)

(assert (=> b!4220584 (=> (not res!1734740) (not e!2620306))))

(assert (=> b!4220584 (= res!1734740 (= (list!16801 (charsOf!5211 (_1!25211 (get!15112 lt!1501938)))) (originalCharacters!8170 (_1!25211 (get!15112 lt!1501938)))))))

(declare-fun bm!293139 () Bool)

(assert (=> bm!293139 (= call!293144 (maxPrefixOneRule!3378 thiss!26544 (h!51855 rules!3967) input!3517))))

(declare-fun b!4220585 () Bool)

(declare-fun res!1734741 () Bool)

(assert (=> b!4220585 (=> (not res!1734741) (not e!2620306))))

(assert (=> b!4220585 (= res!1734741 (= (++!11862 (list!16801 (charsOf!5211 (_1!25211 (get!15112 lt!1501938)))) (_2!25211 (get!15112 lt!1501938))) input!3517))))

(declare-fun b!4220586 () Bool)

(declare-fun res!1734739 () Bool)

(assert (=> b!4220586 (=> (not res!1734739) (not e!2620306))))

(assert (=> b!4220586 (= res!1734739 (= (value!242487 (_1!25211 (get!15112 lt!1501938))) (apply!10703 (transformation!7788 (rule!10920 (_1!25211 (get!15112 lt!1501938)))) (seqFromList!5763 (originalCharacters!8170 (_1!25211 (get!15112 lt!1501938)))))))))

(declare-fun b!4220587 () Bool)

(assert (=> b!4220587 (= e!2620307 call!293144)))

(declare-fun b!4220588 () Bool)

(declare-fun res!1734743 () Bool)

(assert (=> b!4220588 (=> (not res!1734743) (not e!2620306))))

(assert (=> b!4220588 (= res!1734743 (< (size!34096 (_2!25211 (get!15112 lt!1501938))) (size!34096 input!3517)))))

(declare-fun d!1243260 () Bool)

(declare-fun e!2620308 () Bool)

(assert (=> d!1243260 e!2620308))

(declare-fun res!1734742 () Bool)

(assert (=> d!1243260 (=> res!1734742 e!2620308)))

(assert (=> d!1243260 (= res!1734742 (isEmpty!27511 lt!1501938))))

(assert (=> d!1243260 (= lt!1501938 e!2620307)))

(declare-fun c!718257 () Bool)

(assert (=> d!1243260 (= c!718257 (and ((_ is Cons!46435) rules!3967) ((_ is Nil!46435) (t!348944 rules!3967))))))

(declare-fun lt!1501937 () Unit!65611)

(declare-fun lt!1501939 () Unit!65611)

(assert (=> d!1243260 (= lt!1501937 lt!1501939)))

(assert (=> d!1243260 (isPrefix!4647 input!3517 input!3517)))

(assert (=> d!1243260 (= lt!1501939 (lemmaIsPrefixRefl!3064 input!3517 input!3517))))

(declare-fun rulesValidInductive!2894 (LexerInterface!7383 List!46559) Bool)

(assert (=> d!1243260 (rulesValidInductive!2894 thiss!26544 rules!3967)))

(assert (=> d!1243260 (= (maxPrefix!4423 thiss!26544 rules!3967 input!3517) lt!1501938)))

(declare-fun b!4220589 () Bool)

(assert (=> b!4220589 (= e!2620306 (contains!9611 rules!3967 (rule!10920 (_1!25211 (get!15112 lt!1501938)))))))

(declare-fun b!4220590 () Bool)

(assert (=> b!4220590 (= e!2620308 e!2620306)))

(declare-fun res!1734738 () Bool)

(assert (=> b!4220590 (=> (not res!1734738) (not e!2620306))))

(declare-fun isDefined!7404 (Option!9976) Bool)

(assert (=> b!4220590 (= res!1734738 (isDefined!7404 lt!1501938))))

(assert (= (and d!1243260 c!718257) b!4220587))

(assert (= (and d!1243260 (not c!718257)) b!4220582))

(assert (= (or b!4220587 b!4220582) bm!293139))

(assert (= (and d!1243260 (not res!1734742)) b!4220590))

(assert (= (and b!4220590 res!1734738) b!4220584))

(assert (= (and b!4220584 res!1734740) b!4220588))

(assert (= (and b!4220588 res!1734743) b!4220585))

(assert (= (and b!4220585 res!1734741) b!4220586))

(assert (= (and b!4220586 res!1734739) b!4220583))

(assert (= (and b!4220583 res!1734744) b!4220589))

(declare-fun m!4809259 () Bool)

(assert (=> b!4220590 m!4809259))

(assert (=> bm!293139 m!4808793))

(declare-fun m!4809261 () Bool)

(assert (=> b!4220586 m!4809261))

(declare-fun m!4809263 () Bool)

(assert (=> b!4220586 m!4809263))

(assert (=> b!4220586 m!4809263))

(declare-fun m!4809265 () Bool)

(assert (=> b!4220586 m!4809265))

(assert (=> b!4220585 m!4809261))

(declare-fun m!4809267 () Bool)

(assert (=> b!4220585 m!4809267))

(assert (=> b!4220585 m!4809267))

(declare-fun m!4809269 () Bool)

(assert (=> b!4220585 m!4809269))

(assert (=> b!4220585 m!4809269))

(declare-fun m!4809271 () Bool)

(assert (=> b!4220585 m!4809271))

(assert (=> b!4220589 m!4809261))

(declare-fun m!4809273 () Bool)

(assert (=> b!4220589 m!4809273))

(assert (=> b!4220584 m!4809261))

(assert (=> b!4220584 m!4809267))

(assert (=> b!4220584 m!4809267))

(assert (=> b!4220584 m!4809269))

(assert (=> b!4220583 m!4809261))

(assert (=> b!4220583 m!4809267))

(assert (=> b!4220583 m!4809267))

(assert (=> b!4220583 m!4809269))

(assert (=> b!4220583 m!4809269))

(declare-fun m!4809275 () Bool)

(assert (=> b!4220583 m!4809275))

(assert (=> b!4220588 m!4809261))

(declare-fun m!4809277 () Bool)

(assert (=> b!4220588 m!4809277))

(assert (=> b!4220588 m!4809017))

(declare-fun m!4809279 () Bool)

(assert (=> b!4220582 m!4809279))

(declare-fun m!4809281 () Bool)

(assert (=> d!1243260 m!4809281))

(assert (=> d!1243260 m!4808805))

(assert (=> d!1243260 m!4808807))

(declare-fun m!4809283 () Bool)

(assert (=> d!1243260 m!4809283))

(assert (=> b!4220216 d!1243260))

(declare-fun d!1243262 () Bool)

(assert (=> d!1243262 (= (isEmpty!27507 (t!348944 rules!3967)) ((_ is Nil!46435) (t!348944 rules!3967)))))

(assert (=> b!4220214 d!1243262))

(declare-fun d!1243264 () Bool)

(declare-fun res!1734745 () Bool)

(declare-fun e!2620309 () Bool)

(assert (=> d!1243264 (=> (not res!1734745) (not e!2620309))))

(assert (=> d!1243264 (= res!1734745 (rulesValid!3052 thiss!26544 (t!348944 rules!3967)))))

(assert (=> d!1243264 (= (rulesInvariant!6594 thiss!26544 (t!348944 rules!3967)) e!2620309)))

(declare-fun b!4220591 () Bool)

(assert (=> b!4220591 (= e!2620309 (noDuplicateTag!3213 thiss!26544 (t!348944 rules!3967) Nil!46437))))

(assert (= (and d!1243264 res!1734745) b!4220591))

(declare-fun m!4809285 () Bool)

(assert (=> d!1243264 m!4809285))

(declare-fun m!4809287 () Bool)

(assert (=> b!4220591 m!4809287))

(assert (=> b!4220214 d!1243264))

(declare-fun d!1243266 () Bool)

(assert (=> d!1243266 (rulesInvariant!6594 thiss!26544 (t!348944 rules!3967))))

(declare-fun lt!1501943 () Unit!65611)

(declare-fun choose!25861 (LexerInterface!7383 Rule!15376 List!46559) Unit!65611)

(assert (=> d!1243266 (= lt!1501943 (choose!25861 thiss!26544 (h!51855 rules!3967) (t!348944 rules!3967)))))

(assert (=> d!1243266 (rulesInvariant!6594 thiss!26544 (Cons!46435 (h!51855 rules!3967) (t!348944 rules!3967)))))

(assert (=> d!1243266 (= (lemmaInvariantOnRulesThenOnTail!876 thiss!26544 (h!51855 rules!3967) (t!348944 rules!3967)) lt!1501943)))

(declare-fun bs!597731 () Bool)

(assert (= bs!597731 d!1243266))

(assert (=> bs!597731 m!4808785))

(declare-fun m!4809289 () Bool)

(assert (=> bs!597731 m!4809289))

(declare-fun m!4809291 () Bool)

(assert (=> bs!597731 m!4809291))

(assert (=> b!4220214 d!1243266))

(declare-fun b!4220593 () Bool)

(declare-fun res!1734749 () Bool)

(declare-fun e!2620312 () Bool)

(assert (=> b!4220593 (=> (not res!1734749) (not e!2620312))))

(assert (=> b!4220593 (= res!1734749 (= (head!8952 pBis!121) (head!8952 input!3517)))))

(declare-fun b!4220592 () Bool)

(declare-fun e!2620311 () Bool)

(assert (=> b!4220592 (= e!2620311 e!2620312)))

(declare-fun res!1734748 () Bool)

(assert (=> b!4220592 (=> (not res!1734748) (not e!2620312))))

(assert (=> b!4220592 (= res!1734748 (not ((_ is Nil!46434) input!3517)))))

(declare-fun b!4220594 () Bool)

(assert (=> b!4220594 (= e!2620312 (isPrefix!4647 (tail!6799 pBis!121) (tail!6799 input!3517)))))

(declare-fun b!4220595 () Bool)

(declare-fun e!2620310 () Bool)

(assert (=> b!4220595 (= e!2620310 (>= (size!34096 input!3517) (size!34096 pBis!121)))))

(declare-fun d!1243268 () Bool)

(assert (=> d!1243268 e!2620310))

(declare-fun res!1734747 () Bool)

(assert (=> d!1243268 (=> res!1734747 e!2620310)))

(declare-fun lt!1501944 () Bool)

(assert (=> d!1243268 (= res!1734747 (not lt!1501944))))

(assert (=> d!1243268 (= lt!1501944 e!2620311)))

(declare-fun res!1734746 () Bool)

(assert (=> d!1243268 (=> res!1734746 e!2620311)))

(assert (=> d!1243268 (= res!1734746 ((_ is Nil!46434) pBis!121))))

(assert (=> d!1243268 (= (isPrefix!4647 pBis!121 input!3517) lt!1501944)))

(assert (= (and d!1243268 (not res!1734746)) b!4220592))

(assert (= (and b!4220592 res!1734748) b!4220593))

(assert (= (and b!4220593 res!1734749) b!4220594))

(assert (= (and d!1243268 (not res!1734747)) b!4220595))

(declare-fun m!4809293 () Bool)

(assert (=> b!4220593 m!4809293))

(assert (=> b!4220593 m!4809111))

(declare-fun m!4809295 () Bool)

(assert (=> b!4220594 m!4809295))

(assert (=> b!4220594 m!4809115))

(assert (=> b!4220594 m!4809295))

(assert (=> b!4220594 m!4809115))

(declare-fun m!4809297 () Bool)

(assert (=> b!4220594 m!4809297))

(assert (=> b!4220595 m!4809017))

(assert (=> b!4220595 m!4809183))

(assert (=> b!4220225 d!1243268))

(declare-fun d!1243270 () Bool)

(assert (=> d!1243270 (= (inv!61090 (tag!8652 (rule!10920 t!8364))) (= (mod (str.len (value!242486 (tag!8652 (rule!10920 t!8364)))) 2) 0))))

(assert (=> b!4220224 d!1243270))

(declare-fun d!1243272 () Bool)

(declare-fun res!1734750 () Bool)

(declare-fun e!2620313 () Bool)

(assert (=> d!1243272 (=> (not res!1734750) (not e!2620313))))

(assert (=> d!1243272 (= res!1734750 (semiInverseModEq!3383 (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (toValue!10512 (transformation!7788 (rule!10920 t!8364)))))))

(assert (=> d!1243272 (= (inv!61094 (transformation!7788 (rule!10920 t!8364))) e!2620313)))

(declare-fun b!4220596 () Bool)

(assert (=> b!4220596 (= e!2620313 (equivClasses!3282 (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (toValue!10512 (transformation!7788 (rule!10920 t!8364)))))))

(assert (= (and d!1243272 res!1734750) b!4220596))

(declare-fun m!4809299 () Bool)

(assert (=> d!1243272 m!4809299))

(declare-fun m!4809301 () Bool)

(assert (=> b!4220596 m!4809301))

(assert (=> b!4220224 d!1243272))

(declare-fun b!4220601 () Bool)

(declare-fun e!2620316 () Bool)

(declare-fun tp!1291376 () Bool)

(assert (=> b!4220601 (= e!2620316 (and tp_is_empty!22353 tp!1291376))))

(assert (=> b!4220212 (= tp!1291297 e!2620316)))

(assert (= (and b!4220212 ((_ is Cons!46434) (t!348943 pBis!121))) b!4220601))

(declare-fun e!2620319 () Bool)

(assert (=> b!4220223 (= tp!1291300 e!2620319)))

(declare-fun b!4220612 () Bool)

(assert (=> b!4220612 (= e!2620319 tp_is_empty!22353)))

(declare-fun b!4220614 () Bool)

(declare-fun tp!1291389 () Bool)

(assert (=> b!4220614 (= e!2620319 tp!1291389)))

(declare-fun b!4220613 () Bool)

(declare-fun tp!1291391 () Bool)

(declare-fun tp!1291387 () Bool)

(assert (=> b!4220613 (= e!2620319 (and tp!1291391 tp!1291387))))

(declare-fun b!4220615 () Bool)

(declare-fun tp!1291388 () Bool)

(declare-fun tp!1291390 () Bool)

(assert (=> b!4220615 (= e!2620319 (and tp!1291388 tp!1291390))))

(assert (= (and b!4220223 ((_ is ElementMatch!12693) (regex!7788 (h!51855 rules!3967)))) b!4220612))

(assert (= (and b!4220223 ((_ is Concat!20712) (regex!7788 (h!51855 rules!3967)))) b!4220613))

(assert (= (and b!4220223 ((_ is Star!12693) (regex!7788 (h!51855 rules!3967)))) b!4220614))

(assert (= (and b!4220223 ((_ is Union!12693) (regex!7788 (h!51855 rules!3967)))) b!4220615))

(declare-fun b!4220616 () Bool)

(declare-fun e!2620320 () Bool)

(declare-fun tp!1291392 () Bool)

(assert (=> b!4220616 (= e!2620320 (and tp_is_empty!22353 tp!1291392))))

(assert (=> b!4220210 (= tp!1291305 e!2620320)))

(assert (= (and b!4220210 ((_ is Cons!46434) (t!348943 suffixBis!41))) b!4220616))

(declare-fun b!4220617 () Bool)

(declare-fun e!2620321 () Bool)

(declare-fun tp!1291393 () Bool)

(assert (=> b!4220617 (= e!2620321 (and tp_is_empty!22353 tp!1291393))))

(assert (=> b!4220232 (= tp!1291301 e!2620321)))

(assert (= (and b!4220232 ((_ is Cons!46434) (originalCharacters!8170 tBis!41))) b!4220617))

(declare-fun b!4220618 () Bool)

(declare-fun e!2620322 () Bool)

(declare-fun tp!1291394 () Bool)

(assert (=> b!4220618 (= e!2620322 (and tp_is_empty!22353 tp!1291394))))

(assert (=> b!4220211 (= tp!1291299 e!2620322)))

(assert (= (and b!4220211 ((_ is Cons!46434) (t!348943 p!3001))) b!4220618))

(declare-fun b!4220619 () Bool)

(declare-fun e!2620323 () Bool)

(declare-fun tp!1291395 () Bool)

(assert (=> b!4220619 (= e!2620323 (and tp_is_empty!22353 tp!1291395))))

(assert (=> b!4220231 (= tp!1291304 e!2620323)))

(assert (= (and b!4220231 ((_ is Cons!46434) (originalCharacters!8170 t!8364))) b!4220619))

(declare-fun e!2620324 () Bool)

(assert (=> b!4220229 (= tp!1291311 e!2620324)))

(declare-fun b!4220620 () Bool)

(assert (=> b!4220620 (= e!2620324 tp_is_empty!22353)))

(declare-fun b!4220622 () Bool)

(declare-fun tp!1291398 () Bool)

(assert (=> b!4220622 (= e!2620324 tp!1291398)))

(declare-fun b!4220621 () Bool)

(declare-fun tp!1291400 () Bool)

(declare-fun tp!1291396 () Bool)

(assert (=> b!4220621 (= e!2620324 (and tp!1291400 tp!1291396))))

(declare-fun b!4220623 () Bool)

(declare-fun tp!1291397 () Bool)

(declare-fun tp!1291399 () Bool)

(assert (=> b!4220623 (= e!2620324 (and tp!1291397 tp!1291399))))

(assert (= (and b!4220229 ((_ is ElementMatch!12693) (regex!7788 (rule!10920 tBis!41)))) b!4220620))

(assert (= (and b!4220229 ((_ is Concat!20712) (regex!7788 (rule!10920 tBis!41)))) b!4220621))

(assert (= (and b!4220229 ((_ is Star!12693) (regex!7788 (rule!10920 tBis!41)))) b!4220622))

(assert (= (and b!4220229 ((_ is Union!12693) (regex!7788 (rule!10920 tBis!41)))) b!4220623))

(declare-fun e!2620325 () Bool)

(assert (=> b!4220238 (= tp!1291298 e!2620325)))

(declare-fun b!4220624 () Bool)

(assert (=> b!4220624 (= e!2620325 tp_is_empty!22353)))

(declare-fun b!4220626 () Bool)

(declare-fun tp!1291403 () Bool)

(assert (=> b!4220626 (= e!2620325 tp!1291403)))

(declare-fun b!4220625 () Bool)

(declare-fun tp!1291405 () Bool)

(declare-fun tp!1291401 () Bool)

(assert (=> b!4220625 (= e!2620325 (and tp!1291405 tp!1291401))))

(declare-fun b!4220627 () Bool)

(declare-fun tp!1291402 () Bool)

(declare-fun tp!1291404 () Bool)

(assert (=> b!4220627 (= e!2620325 (and tp!1291402 tp!1291404))))

(assert (= (and b!4220238 ((_ is ElementMatch!12693) (regex!7788 rBis!178))) b!4220624))

(assert (= (and b!4220238 ((_ is Concat!20712) (regex!7788 rBis!178))) b!4220625))

(assert (= (and b!4220238 ((_ is Star!12693) (regex!7788 rBis!178))) b!4220626))

(assert (= (and b!4220238 ((_ is Union!12693) (regex!7788 rBis!178))) b!4220627))

(declare-fun b!4220638 () Bool)

(declare-fun b_free!123983 () Bool)

(declare-fun b_next!124687 () Bool)

(assert (=> b!4220638 (= b_free!123983 (not b_next!124687))))

(declare-fun tp!1291416 () Bool)

(declare-fun b_and!333001 () Bool)

(assert (=> b!4220638 (= tp!1291416 b_and!333001)))

(declare-fun b_free!123985 () Bool)

(declare-fun b_next!124689 () Bool)

(assert (=> b!4220638 (= b_free!123985 (not b_next!124689))))

(declare-fun tb!253615 () Bool)

(declare-fun t!348982 () Bool)

(assert (=> (and b!4220638 (= (toChars!10371 (transformation!7788 (h!51855 (t!348944 rules!3967)))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41)))) t!348982) tb!253615))

(declare-fun result!309080 () Bool)

(assert (= result!309080 result!309056))

(assert (=> b!4220515 t!348982))

(declare-fun tb!253617 () Bool)

(declare-fun t!348984 () Bool)

(assert (=> (and b!4220638 (= (toChars!10371 (transformation!7788 (h!51855 (t!348944 rules!3967)))) (toChars!10371 (transformation!7788 (rule!10920 t!8364)))) t!348984) tb!253617))

(declare-fun result!309082 () Bool)

(assert (= result!309082 result!309066))

(assert (=> b!4220522 t!348984))

(assert (=> d!1243236 t!348982))

(declare-fun b_and!333003 () Bool)

(declare-fun tp!1291415 () Bool)

(assert (=> b!4220638 (= tp!1291415 (and (=> t!348982 result!309080) (=> t!348984 result!309082) b_and!333003))))

(declare-fun e!2620337 () Bool)

(assert (=> b!4220638 (= e!2620337 (and tp!1291416 tp!1291415))))

(declare-fun e!2620335 () Bool)

(declare-fun b!4220637 () Bool)

(declare-fun tp!1291414 () Bool)

(assert (=> b!4220637 (= e!2620335 (and tp!1291414 (inv!61090 (tag!8652 (h!51855 (t!348944 rules!3967)))) (inv!61094 (transformation!7788 (h!51855 (t!348944 rules!3967)))) e!2620337))))

(declare-fun b!4220636 () Bool)

(declare-fun e!2620334 () Bool)

(declare-fun tp!1291417 () Bool)

(assert (=> b!4220636 (= e!2620334 (and e!2620335 tp!1291417))))

(assert (=> b!4220227 (= tp!1291302 e!2620334)))

(assert (= b!4220637 b!4220638))

(assert (= b!4220636 b!4220637))

(assert (= (and b!4220227 ((_ is Cons!46435) (t!348944 rules!3967))) b!4220636))

(declare-fun m!4809303 () Bool)

(assert (=> b!4220637 m!4809303))

(declare-fun m!4809305 () Bool)

(assert (=> b!4220637 m!4809305))

(declare-fun b!4220639 () Bool)

(declare-fun e!2620338 () Bool)

(declare-fun tp!1291418 () Bool)

(assert (=> b!4220639 (= e!2620338 (and tp_is_empty!22353 tp!1291418))))

(assert (=> b!4220236 (= tp!1291310 e!2620338)))

(assert (= (and b!4220236 ((_ is Cons!46434) (t!348943 input!3517))) b!4220639))

(declare-fun b!4220640 () Bool)

(declare-fun e!2620339 () Bool)

(declare-fun tp!1291419 () Bool)

(assert (=> b!4220640 (= e!2620339 (and tp_is_empty!22353 tp!1291419))))

(assert (=> b!4220234 (= tp!1291306 e!2620339)))

(assert (= (and b!4220234 ((_ is Cons!46434) (t!348943 suffix!1557))) b!4220640))

(declare-fun e!2620340 () Bool)

(assert (=> b!4220224 (= tp!1291296 e!2620340)))

(declare-fun b!4220641 () Bool)

(assert (=> b!4220641 (= e!2620340 tp_is_empty!22353)))

(declare-fun b!4220643 () Bool)

(declare-fun tp!1291422 () Bool)

(assert (=> b!4220643 (= e!2620340 tp!1291422)))

(declare-fun b!4220642 () Bool)

(declare-fun tp!1291424 () Bool)

(declare-fun tp!1291420 () Bool)

(assert (=> b!4220642 (= e!2620340 (and tp!1291424 tp!1291420))))

(declare-fun b!4220644 () Bool)

(declare-fun tp!1291421 () Bool)

(declare-fun tp!1291423 () Bool)

(assert (=> b!4220644 (= e!2620340 (and tp!1291421 tp!1291423))))

(assert (= (and b!4220224 ((_ is ElementMatch!12693) (regex!7788 (rule!10920 t!8364)))) b!4220641))

(assert (= (and b!4220224 ((_ is Concat!20712) (regex!7788 (rule!10920 t!8364)))) b!4220642))

(assert (= (and b!4220224 ((_ is Star!12693) (regex!7788 (rule!10920 t!8364)))) b!4220643))

(assert (= (and b!4220224 ((_ is Union!12693) (regex!7788 (rule!10920 t!8364)))) b!4220644))

(declare-fun b_lambda!124389 () Bool)

(assert (= b_lambda!124385 (or (and b!4220218 b_free!123977) (and b!4220217 b_free!123969 (= (toChars!10371 (transformation!7788 (h!51855 rules!3967))) (toChars!10371 (transformation!7788 (rule!10920 t!8364))))) (and b!4220638 b_free!123985 (= (toChars!10371 (transformation!7788 (h!51855 (t!348944 rules!3967)))) (toChars!10371 (transformation!7788 (rule!10920 t!8364))))) (and b!4220213 b_free!123965 (= (toChars!10371 (transformation!7788 (rule!10920 tBis!41))) (toChars!10371 (transformation!7788 (rule!10920 t!8364))))) (and b!4220235 b_free!123973 (= (toChars!10371 (transformation!7788 rBis!178)) (toChars!10371 (transformation!7788 (rule!10920 t!8364))))) b_lambda!124389)))

(declare-fun b_lambda!124391 () Bool)

(assert (= b_lambda!124383 (or (and b!4220638 b_free!123985 (= (toChars!10371 (transformation!7788 (h!51855 (t!348944 rules!3967)))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) (and b!4220217 b_free!123969 (= (toChars!10371 (transformation!7788 (h!51855 rules!3967))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) (and b!4220218 b_free!123977 (= (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) (and b!4220213 b_free!123965) (and b!4220235 b_free!123973 (= (toChars!10371 (transformation!7788 rBis!178)) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) b_lambda!124391)))

(declare-fun b_lambda!124393 () Bool)

(assert (= b_lambda!124387 (or (and b!4220638 b_free!123985 (= (toChars!10371 (transformation!7788 (h!51855 (t!348944 rules!3967)))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) (and b!4220217 b_free!123969 (= (toChars!10371 (transformation!7788 (h!51855 rules!3967))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) (and b!4220218 b_free!123977 (= (toChars!10371 (transformation!7788 (rule!10920 t!8364))) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) (and b!4220213 b_free!123965) (and b!4220235 b_free!123973 (= (toChars!10371 (transformation!7788 rBis!178)) (toChars!10371 (transformation!7788 (rule!10920 tBis!41))))) b_lambda!124393)))

(check-sat (not b_lambda!124393) (not b!4220551) (not b!4220643) b_and!332941 b_and!332993 (not b!4220526) b_and!332995 (not b_lambda!124391) (not b_next!124679) (not b!4220521) (not d!1243244) (not b!4220363) (not b!4220497) (not b_next!124675) (not b_next!124687) (not d!1243236) (not d!1243242) (not b!4220495) (not b!4220435) (not b!4220528) b_and!333003 (not d!1243272) (not b_next!124667) (not d!1243266) tp_is_empty!22353 (not tb!253599) (not b!4220625) (not b!4220619) (not b!4220596) (not b!4220541) (not b!4220516) b_and!332933 (not b!4220409) (not b!4220586) (not d!1243260) (not b!4220623) (not d!1243246) (not b!4220510) (not b!4220594) (not b!4220503) (not b!4220494) (not b!4220613) (not b!4220368) (not d!1243198) (not b!4220616) (not b!4220584) b_and!332937 (not b!4220362) (not b!4220617) (not b!4220601) (not b!4220642) (not b!4220589) (not b!4220544) (not b!4220640) (not b!4220637) (not b!4220556) (not b!4220369) (not b!4220515) (not b!4220615) b_and!332999 (not b!4220522) (not d!1243164) (not d!1243264) (not b!4220591) (not d!1243250) (not b!4220621) (not b!4220524) (not b_next!124669) (not b!4220636) b_and!333001 (not d!1243226) (not b!4220590) (not b!4220546) (not b!4220365) (not b!4220547) (not b!4220367) (not d!1243228) (not b!4220626) (not d!1243230) (not b_next!124677) b_and!332997 (not b!4220559) (not b!4220614) (not b_next!124673) (not b!4220548) (not b!4220543) (not b!4220588) b_and!332945 (not d!1243256) (not b!4220644) (not b!4220593) (not b_next!124689) (not b!4220554) (not b!4220618) (not tb!253607) (not b!4220585) (not b!4220525) (not d!1243234) (not b!4220622) (not b!4220433) (not b!4220523) (not b!4220530) (not b!4220550) (not bm!293139) (not b_lambda!124389) (not b!4220561) (not b!4220582) (not b!4220627) (not d!1243258) (not b!4220366) (not b!4220434) (not d!1243254) (not b!4220370) (not b!4220639) (not b!4220553) (not b!4220540) (not b!4220562) (not b!4220583) (not b!4220549) (not b!4220555) (not b!4220595) (not d!1243232) (not b_next!124681) (not b_next!124671))
(check-sat (not b_next!124675) (not b_next!124687) b_and!332933 b_and!332937 b_and!332999 (not b_next!124673) b_and!332945 (not b_next!124689) b_and!332941 b_and!332993 b_and!332995 (not b_next!124679) (not b_next!124667) b_and!333003 (not b_next!124669) b_and!333001 (not b_next!124677) b_and!332997 (not b_next!124681) (not b_next!124671))

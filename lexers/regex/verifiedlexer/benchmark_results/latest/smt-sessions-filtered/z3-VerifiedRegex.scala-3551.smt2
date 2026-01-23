; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205912 () Bool)

(assert start!205912)

(declare-fun b!2106042 () Bool)

(declare-fun b_free!60517 () Bool)

(declare-fun b_next!61221 () Bool)

(assert (=> b!2106042 (= b_free!60517 (not b_next!61221))))

(declare-fun tp!638618 () Bool)

(declare-fun b_and!170079 () Bool)

(assert (=> b!2106042 (= tp!638618 b_and!170079)))

(declare-fun b!2106034 () Bool)

(declare-fun b_free!60519 () Bool)

(declare-fun b_next!61223 () Bool)

(assert (=> b!2106034 (= b_free!60519 (not b_next!61223))))

(declare-fun tp!638626 () Bool)

(declare-fun b_and!170081 () Bool)

(assert (=> b!2106034 (= tp!638626 b_and!170081)))

(declare-fun b!2106020 () Bool)

(declare-fun b_free!60521 () Bool)

(declare-fun b_next!61225 () Bool)

(assert (=> b!2106020 (= b_free!60521 (not b_next!61225))))

(declare-fun tp!638628 () Bool)

(declare-fun b_and!170083 () Bool)

(assert (=> b!2106020 (= tp!638628 b_and!170083)))

(declare-fun b!2106021 () Bool)

(declare-fun b_free!60523 () Bool)

(declare-fun b_next!61227 () Bool)

(assert (=> b!2106021 (= b_free!60523 (not b_next!61227))))

(declare-fun tp!638610 () Bool)

(declare-fun b_and!170085 () Bool)

(assert (=> b!2106021 (= tp!638610 b_and!170085)))

(declare-fun b_free!60525 () Bool)

(declare-fun b_next!61229 () Bool)

(assert (=> b!2106021 (= b_free!60525 (not b_next!61229))))

(declare-fun tp!638625 () Bool)

(declare-fun b_and!170087 () Bool)

(assert (=> b!2106021 (= tp!638625 b_and!170087)))

(declare-fun b!2106029 () Bool)

(declare-fun b_free!60527 () Bool)

(declare-fun b_next!61231 () Bool)

(assert (=> b!2106029 (= b_free!60527 (not b_next!61231))))

(declare-fun tp!638619 () Bool)

(declare-fun b_and!170089 () Bool)

(assert (=> b!2106029 (= tp!638619 b_and!170089)))

(declare-fun e!1338417 () Bool)

(declare-fun e!1338419 () Bool)

(assert (=> b!2106020 (= e!1338417 (and e!1338419 tp!638628))))

(declare-fun e!1338427 () Bool)

(assert (=> b!2106021 (= e!1338427 (and tp!638610 tp!638625))))

(declare-fun b!2106022 () Bool)

(declare-fun e!1338414 () Bool)

(declare-fun e!1338422 () Bool)

(declare-fun tp!638622 () Bool)

(assert (=> b!2106022 (= e!1338414 (and e!1338422 tp!638622))))

(declare-fun b!2106023 () Bool)

(declare-fun e!1338420 () Bool)

(declare-fun e!1338434 () Bool)

(assert (=> b!2106023 (= e!1338420 e!1338434)))

(declare-fun mapIsEmpty!10848 () Bool)

(declare-fun mapRes!10848 () Bool)

(assert (=> mapIsEmpty!10848 mapRes!10848))

(declare-fun b!2106024 () Bool)

(declare-fun e!1338411 () Bool)

(declare-fun e!1338413 () Bool)

(assert (=> b!2106024 (= e!1338411 e!1338413)))

(declare-fun b!2106025 () Bool)

(declare-fun e!1338425 () Bool)

(declare-fun e!1338432 () Bool)

(assert (=> b!2106025 (= e!1338425 e!1338432)))

(declare-fun res!915603 () Bool)

(assert (=> b!2106025 (=> (not res!915603) (not e!1338432))))

(declare-datatypes ((C!11284 0))(
  ( (C!11285 (val!6628 Int)) )
))
(declare-datatypes ((List!23331 0))(
  ( (Nil!23247) (Cons!23247 (h!28648 C!11284) (t!195824 List!23331)) )
))
(declare-fun lt!791398 () List!23331)

(declare-datatypes ((IArray!15441 0))(
  ( (IArray!15442 (innerList!7778 List!23331)) )
))
(declare-datatypes ((Conc!7718 0))(
  ( (Node!7718 (left!18141 Conc!7718) (right!18471 Conc!7718) (csize!15666 Int) (cheight!7929 Int)) (Leaf!11270 (xs!10660 IArray!15441) (csize!15667 Int)) (Empty!7718) )
))
(declare-datatypes ((BalanceConc!15198 0))(
  ( (BalanceConc!15199 (c!338887 Conc!7718)) )
))
(declare-fun totalInput!482 () BalanceConc!15198)

(declare-fun isSuffix!557 (List!23331 List!23331) Bool)

(declare-fun list!9442 (BalanceConc!15198) List!23331)

(assert (=> b!2106025 (= res!915603 (isSuffix!557 lt!791398 (list!9442 totalInput!482)))))

(declare-fun input!1444 () BalanceConc!15198)

(assert (=> b!2106025 (= lt!791398 (list!9442 input!1444))))

(declare-fun b!2106026 () Bool)

(declare-fun res!915600 () Bool)

(assert (=> b!2106026 (=> (not res!915600) (not e!1338425))))

(declare-datatypes ((List!23332 0))(
  ( (Nil!23248) (Cons!23248 (h!28649 (_ BitVec 16)) (t!195825 List!23332)) )
))
(declare-datatypes ((TokenValue!4274 0))(
  ( (FloatLiteralValue!8548 (text!30363 List!23332)) (TokenValueExt!4273 (__x!14856 Int)) (Broken!21370 (value!129550 List!23332)) (Object!4357) (End!4274) (Def!4274) (Underscore!4274) (Match!4274) (Else!4274) (Error!4274) (Case!4274) (If!4274) (Extends!4274) (Abstract!4274) (Class!4274) (Val!4274) (DelimiterValue!8548 (del!4334 List!23332)) (KeywordValue!4280 (value!129551 List!23332)) (CommentValue!8548 (value!129552 List!23332)) (WhitespaceValue!8548 (value!129553 List!23332)) (IndentationValue!4274 (value!129554 List!23332)) (String!26567) (Int32!4274) (Broken!21371 (value!129555 List!23332)) (Boolean!4275) (Unit!37464) (OperatorValue!4277 (op!4334 List!23332)) (IdentifierValue!8548 (value!129556 List!23332)) (IdentifierValue!8549 (value!129557 List!23332)) (WhitespaceValue!8549 (value!129558 List!23332)) (True!8548) (False!8548) (Broken!21372 (value!129559 List!23332)) (Broken!21373 (value!129560 List!23332)) (True!8549) (RightBrace!4274) (RightBracket!4274) (Colon!4274) (Null!4274) (Comma!4274) (LeftBracket!4274) (False!8549) (LeftBrace!4274) (ImaginaryLiteralValue!4274 (text!30364 List!23332)) (StringLiteralValue!12822 (value!129561 List!23332)) (EOFValue!4274 (value!129562 List!23332)) (IdentValue!4274 (value!129563 List!23332)) (DelimiterValue!8549 (value!129564 List!23332)) (DedentValue!4274 (value!129565 List!23332)) (NewLineValue!4274 (value!129566 List!23332)) (IntegerValue!12822 (value!129567 (_ BitVec 32)) (text!30365 List!23332)) (IntegerValue!12823 (value!129568 Int) (text!30366 List!23332)) (Times!4274) (Or!4274) (Equal!4274) (Minus!4274) (Broken!21374 (value!129569 List!23332)) (And!4274) (Div!4274) (LessEqual!4274) (Mod!4274) (Concat!9843) (Not!4274) (Plus!4274) (SpaceValue!4274 (value!129570 List!23332)) (IntegerValue!12824 (value!129571 Int) (text!30367 List!23332)) (StringLiteralValue!12823 (text!30368 List!23332)) (FloatLiteralValue!8549 (text!30369 List!23332)) (BytesLiteralValue!4274 (value!129572 List!23332)) (CommentValue!8549 (value!129573 List!23332)) (StringLiteralValue!12824 (value!129574 List!23332)) (ErrorTokenValue!4274 (msg!4335 List!23332)) )
))
(declare-datatypes ((String!26568 0))(
  ( (String!26569 (value!129575 String)) )
))
(declare-datatypes ((Regex!5569 0))(
  ( (ElementMatch!5569 (c!338888 C!11284)) (Concat!9844 (regOne!11650 Regex!5569) (regTwo!11650 Regex!5569)) (EmptyExpr!5569) (Star!5569 (reg!5898 Regex!5569)) (EmptyLang!5569) (Union!5569 (regOne!11651 Regex!5569) (regTwo!11651 Regex!5569)) )
))
(declare-datatypes ((TokenValueInjection!8132 0))(
  ( (TokenValueInjection!8133 (toValue!5849 Int) (toChars!5708 Int)) )
))
(declare-datatypes ((Rule!8076 0))(
  ( (Rule!8077 (regex!4138 Regex!5569) (tag!4628 String!26568) (isSeparator!4138 Bool) (transformation!4138 TokenValueInjection!8132)) )
))
(declare-datatypes ((List!23333 0))(
  ( (Nil!23249) (Cons!23249 (h!28650 Rule!8076) (t!195826 List!23333)) )
))
(declare-fun rulesArg!349 () List!23333)

(declare-fun isEmpty!14277 (List!23333) Bool)

(assert (=> b!2106026 (= res!915600 (not (isEmpty!14277 rulesArg!349)))))

(declare-fun b!2106027 () Bool)

(declare-fun e!1338428 () Bool)

(declare-fun tp!638621 () Bool)

(assert (=> b!2106027 (= e!1338428 (and tp!638621 mapRes!10848))))

(declare-fun condMapEmpty!10849 () Bool)

(declare-datatypes ((List!23334 0))(
  ( (Nil!23250) (Cons!23250 (h!28651 Regex!5569) (t!195827 List!23334)) )
))
(declare-datatypes ((Context!2278 0))(
  ( (Context!2279 (exprs!1639 List!23334)) )
))
(declare-datatypes ((tuple3!2574 0))(
  ( (tuple3!2575 (_1!13009 Regex!5569) (_2!13009 Context!2278) (_3!1751 C!11284)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22516 0))(
  ( (tuple2!22517 (_1!13010 tuple3!2574) (_2!13010 (InoxSet Context!2278))) )
))
(declare-datatypes ((List!23335 0))(
  ( (Nil!23251) (Cons!23251 (h!28652 tuple2!22516) (t!195828 List!23335)) )
))
(declare-datatypes ((array!7748 0))(
  ( (array!7749 (arr!3435 (Array (_ BitVec 32) (_ BitVec 64))) (size!18145 (_ BitVec 32))) )
))
(declare-datatypes ((array!7750 0))(
  ( (array!7751 (arr!3436 (Array (_ BitVec 32) List!23335)) (size!18146 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4490 0))(
  ( (LongMapFixedSize!4491 (defaultEntry!2610 Int) (mask!6345 (_ BitVec 32)) (extraKeys!2493 (_ BitVec 32)) (zeroValue!2503 List!23335) (minValue!2503 List!23335) (_size!4541 (_ BitVec 32)) (_keys!2542 array!7748) (_values!2525 array!7750) (_vacant!2306 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8805 0))(
  ( (Cell!8806 (v!27805 LongMapFixedSize!4490)) )
))
(declare-datatypes ((MutLongMap!2245 0))(
  ( (LongMap!2245 (underlying!4685 Cell!8805)) (MutLongMapExt!2244 (__x!14857 Int)) )
))
(declare-datatypes ((Cell!8807 0))(
  ( (Cell!8808 (v!27806 MutLongMap!2245)) )
))
(declare-datatypes ((Hashable!2159 0))(
  ( (HashableExt!2158 (__x!14858 Int)) )
))
(declare-datatypes ((MutableMap!2159 0))(
  ( (MutableMapExt!2158 (__x!14859 Int)) (HashMap!2159 (underlying!4686 Cell!8807) (hashF!4082 Hashable!2159) (_size!4542 (_ BitVec 32)) (defaultValue!2321 Int)) )
))
(declare-datatypes ((CacheDown!1460 0))(
  ( (CacheDown!1461 (cache!2540 MutableMap!2159)) )
))
(declare-fun cacheDown!688 () CacheDown!1460)

(declare-fun mapDefault!10849 () List!23335)

(assert (=> b!2106027 (= condMapEmpty!10849 (= (arr!3436 (_values!2525 (v!27805 (underlying!4685 (v!27806 (underlying!4686 (cache!2540 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23335)) mapDefault!10849)))))

(declare-fun b!2106028 () Bool)

(declare-fun e!1338416 () Bool)

(assert (=> b!2106028 (= e!1338416 e!1338417)))

(declare-fun tp!638613 () Bool)

(declare-fun tp!638616 () Bool)

(declare-fun array_inv!2469 (array!7748) Bool)

(declare-fun array_inv!2470 (array!7750) Bool)

(assert (=> b!2106029 (= e!1338413 (and tp!638619 tp!638613 tp!638616 (array_inv!2469 (_keys!2542 (v!27805 (underlying!4685 (v!27806 (underlying!4686 (cache!2540 cacheDown!688))))))) (array_inv!2470 (_values!2525 (v!27805 (underlying!4685 (v!27806 (underlying!4686 (cache!2540 cacheDown!688))))))) e!1338428))))

(declare-fun b!2106030 () Bool)

(declare-fun e!1338423 () Bool)

(assert (=> b!2106030 (= e!1338423 e!1338411)))

(declare-fun b!2106031 () Bool)

(declare-fun e!1338430 () Bool)

(declare-fun tp!638611 () Bool)

(declare-fun inv!30776 (Conc!7718) Bool)

(assert (=> b!2106031 (= e!1338430 (and (inv!30776 (c!338887 totalInput!482)) tp!638611))))

(declare-fun b!2106032 () Bool)

(declare-fun e!1338418 () Bool)

(assert (=> b!2106032 (= e!1338418 e!1338420)))

(declare-fun b!2106033 () Bool)

(declare-fun e!1338421 () Bool)

(declare-fun tp!638609 () Bool)

(declare-fun mapRes!10849 () Bool)

(assert (=> b!2106033 (= e!1338421 (and tp!638609 mapRes!10849))))

(declare-fun condMapEmpty!10848 () Bool)

(declare-datatypes ((tuple2!22518 0))(
  ( (tuple2!22519 (_1!13011 Context!2278) (_2!13011 C!11284)) )
))
(declare-datatypes ((tuple2!22520 0))(
  ( (tuple2!22521 (_1!13012 tuple2!22518) (_2!13012 (InoxSet Context!2278))) )
))
(declare-datatypes ((List!23336 0))(
  ( (Nil!23252) (Cons!23252 (h!28653 tuple2!22520) (t!195829 List!23336)) )
))
(declare-datatypes ((array!7752 0))(
  ( (array!7753 (arr!3437 (Array (_ BitVec 32) List!23336)) (size!18147 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4492 0))(
  ( (LongMapFixedSize!4493 (defaultEntry!2611 Int) (mask!6346 (_ BitVec 32)) (extraKeys!2494 (_ BitVec 32)) (zeroValue!2504 List!23336) (minValue!2504 List!23336) (_size!4543 (_ BitVec 32)) (_keys!2543 array!7748) (_values!2526 array!7752) (_vacant!2307 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2160 0))(
  ( (HashableExt!2159 (__x!14860 Int)) )
))
(declare-datatypes ((Cell!8809 0))(
  ( (Cell!8810 (v!27807 LongMapFixedSize!4492)) )
))
(declare-datatypes ((MutLongMap!2246 0))(
  ( (LongMap!2246 (underlying!4687 Cell!8809)) (MutLongMapExt!2245 (__x!14861 Int)) )
))
(declare-datatypes ((Cell!8811 0))(
  ( (Cell!8812 (v!27808 MutLongMap!2246)) )
))
(declare-datatypes ((MutableMap!2160 0))(
  ( (MutableMapExt!2159 (__x!14862 Int)) (HashMap!2160 (underlying!4688 Cell!8811) (hashF!4083 Hashable!2160) (_size!4544 (_ BitVec 32)) (defaultValue!2322 Int)) )
))
(declare-datatypes ((CacheUp!1452 0))(
  ( (CacheUp!1453 (cache!2541 MutableMap!2160)) )
))
(declare-fun cacheUp!675 () CacheUp!1452)

(declare-fun mapDefault!10848 () List!23336)

(assert (=> b!2106033 (= condMapEmpty!10848 (= (arr!3437 (_values!2526 (v!27807 (underlying!4687 (v!27808 (underlying!4688 (cache!2541 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23336)) mapDefault!10848)))))

(declare-fun tp!638612 () Bool)

(declare-fun tp!638617 () Bool)

(declare-fun array_inv!2471 (array!7752) Bool)

(assert (=> b!2106034 (= e!1338434 (and tp!638626 tp!638617 tp!638612 (array_inv!2469 (_keys!2543 (v!27807 (underlying!4687 (v!27808 (underlying!4688 (cache!2541 cacheUp!675))))))) (array_inv!2471 (_values!2526 (v!27807 (underlying!4687 (v!27808 (underlying!4688 (cache!2541 cacheUp!675))))))) e!1338421))))

(declare-fun mapNonEmpty!10848 () Bool)

(declare-fun tp!638623 () Bool)

(declare-fun tp!638624 () Bool)

(assert (=> mapNonEmpty!10848 (= mapRes!10848 (and tp!638623 tp!638624))))

(declare-fun mapValue!10848 () List!23335)

(declare-fun mapRest!10848 () (Array (_ BitVec 32) List!23335))

(declare-fun mapKey!10849 () (_ BitVec 32))

(assert (=> mapNonEmpty!10848 (= (arr!3436 (_values!2525 (v!27805 (underlying!4685 (v!27806 (underlying!4686 (cache!2540 cacheDown!688))))))) (store mapRest!10848 mapKey!10849 mapValue!10848))))

(declare-fun b!2106035 () Bool)

(declare-fun res!915605 () Bool)

(assert (=> b!2106035 (=> (not res!915605) (not e!1338425))))

(declare-datatypes ((LexerInterface!3736 0))(
  ( (LexerInterfaceExt!3733 (__x!14863 Int)) (Lexer!3734) )
))
(declare-fun thiss!15689 () LexerInterface!3736)

(declare-fun rulesValidInductive!1453 (LexerInterface!3736 List!23333) Bool)

(assert (=> b!2106035 (= res!915605 (rulesValidInductive!1453 thiss!15689 rulesArg!349))))

(declare-fun b!2106036 () Bool)

(declare-fun lt!791400 () MutLongMap!2245)

(get-info :version)

(assert (=> b!2106036 (= e!1338419 (and e!1338423 ((_ is LongMap!2245) lt!791400)))))

(assert (=> b!2106036 (= lt!791400 (v!27806 (underlying!4686 (cache!2540 cacheDown!688))))))

(declare-fun b!2106037 () Bool)

(declare-fun e!1338429 () Bool)

(assert (=> b!2106037 (= e!1338429 true)))

(declare-datatypes ((Token!7796 0))(
  ( (Token!7797 (value!129576 TokenValue!4274) (rule!6453 Rule!8076) (size!18148 Int) (originalCharacters!4929 List!23331)) )
))
(declare-datatypes ((tuple2!22522 0))(
  ( (tuple2!22523 (_1!13013 Token!7796) (_2!13013 BalanceConc!15198)) )
))
(declare-datatypes ((Option!4851 0))(
  ( (None!4850) (Some!4850 (v!27809 tuple2!22522)) )
))
(declare-datatypes ((tuple3!2576 0))(
  ( (tuple3!2577 (_1!13014 Option!4851) (_2!13014 CacheUp!1452) (_3!1752 CacheDown!1460)) )
))
(declare-fun lt!791399 () tuple3!2576)

(declare-fun lt!791397 () tuple3!2576)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!79 (LexerInterface!3736 List!23333 BalanceConc!15198 BalanceConc!15198 CacheUp!1452 CacheDown!1460) tuple3!2576)

(assert (=> b!2106037 (= lt!791399 (maxPrefixZipperSequenceV2MemOnlyDeriv!79 thiss!15689 (t!195826 rulesArg!349) input!1444 totalInput!482 (_2!13014 lt!791397) (_3!1752 lt!791397)))))

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!68 (LexerInterface!3736 Rule!8076 BalanceConc!15198 BalanceConc!15198 CacheUp!1452 CacheDown!1460) tuple3!2576)

(assert (=> b!2106037 (= lt!791397 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!68 thiss!15689 (h!28650 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun mapNonEmpty!10849 () Bool)

(declare-fun tp!638627 () Bool)

(declare-fun tp!638620 () Bool)

(assert (=> mapNonEmpty!10849 (= mapRes!10849 (and tp!638627 tp!638620))))

(declare-fun mapKey!10848 () (_ BitVec 32))

(declare-fun mapValue!10849 () List!23336)

(declare-fun mapRest!10849 () (Array (_ BitVec 32) List!23336))

(assert (=> mapNonEmpty!10849 (= (arr!3437 (_values!2526 (v!27807 (underlying!4687 (v!27808 (underlying!4688 (cache!2541 cacheUp!675))))))) (store mapRest!10849 mapKey!10848 mapValue!10849))))

(declare-fun b!2106038 () Bool)

(assert (=> b!2106038 (= e!1338432 (not e!1338429))))

(declare-fun res!915599 () Bool)

(assert (=> b!2106038 (=> res!915599 e!1338429)))

(assert (=> b!2106038 (= res!915599 (or (and ((_ is Cons!23249) rulesArg!349) ((_ is Nil!23249) (t!195826 rulesArg!349))) (not ((_ is Cons!23249) rulesArg!349))))))

(declare-fun isPrefix!2073 (List!23331 List!23331) Bool)

(assert (=> b!2106038 (isPrefix!2073 lt!791398 lt!791398)))

(declare-datatypes ((Unit!37465 0))(
  ( (Unit!37466) )
))
(declare-fun lt!791402 () Unit!37465)

(declare-fun lemmaIsPrefixRefl!1391 (List!23331 List!23331) Unit!37465)

(assert (=> b!2106038 (= lt!791402 (lemmaIsPrefixRefl!1391 lt!791398 lt!791398))))

(declare-fun b!2106039 () Bool)

(declare-fun res!915601 () Bool)

(assert (=> b!2106039 (=> (not res!915601) (not e!1338432))))

(declare-fun valid!1781 (CacheUp!1452) Bool)

(assert (=> b!2106039 (= res!915601 (valid!1781 cacheUp!675))))

(declare-fun res!915602 () Bool)

(assert (=> start!205912 (=> (not res!915602) (not e!1338425))))

(assert (=> start!205912 (= res!915602 ((_ is Lexer!3734) thiss!15689))))

(assert (=> start!205912 e!1338425))

(assert (=> start!205912 e!1338414))

(declare-fun inv!30777 (BalanceConc!15198) Bool)

(assert (=> start!205912 (and (inv!30777 totalInput!482) e!1338430)))

(assert (=> start!205912 true))

(declare-fun e!1338412 () Bool)

(assert (=> start!205912 (and (inv!30777 input!1444) e!1338412)))

(declare-fun e!1338424 () Bool)

(declare-fun inv!30778 (CacheUp!1452) Bool)

(assert (=> start!205912 (and (inv!30778 cacheUp!675) e!1338424)))

(declare-fun inv!30779 (CacheDown!1460) Bool)

(assert (=> start!205912 (and (inv!30779 cacheDown!688) e!1338416)))

(declare-fun b!2106040 () Bool)

(declare-fun e!1338433 () Bool)

(declare-fun lt!791401 () MutLongMap!2246)

(assert (=> b!2106040 (= e!1338433 (and e!1338418 ((_ is LongMap!2246) lt!791401)))))

(assert (=> b!2106040 (= lt!791401 (v!27808 (underlying!4688 (cache!2541 cacheUp!675))))))

(declare-fun tp!638615 () Bool)

(declare-fun b!2106041 () Bool)

(declare-fun inv!30774 (String!26568) Bool)

(declare-fun inv!30780 (TokenValueInjection!8132) Bool)

(assert (=> b!2106041 (= e!1338422 (and tp!638615 (inv!30774 (tag!4628 (h!28650 rulesArg!349))) (inv!30780 (transformation!4138 (h!28650 rulesArg!349))) e!1338427))))

(declare-fun e!1338435 () Bool)

(assert (=> b!2106042 (= e!1338435 (and e!1338433 tp!638618))))

(declare-fun mapIsEmpty!10849 () Bool)

(assert (=> mapIsEmpty!10849 mapRes!10849))

(declare-fun b!2106043 () Bool)

(assert (=> b!2106043 (= e!1338424 e!1338435)))

(declare-fun b!2106044 () Bool)

(declare-fun tp!638614 () Bool)

(assert (=> b!2106044 (= e!1338412 (and (inv!30776 (c!338887 input!1444)) tp!638614))))

(declare-fun b!2106045 () Bool)

(declare-fun res!915604 () Bool)

(assert (=> b!2106045 (=> (not res!915604) (not e!1338432))))

(declare-fun valid!1782 (CacheDown!1460) Bool)

(assert (=> b!2106045 (= res!915604 (valid!1782 cacheDown!688))))

(assert (= (and start!205912 res!915602) b!2106035))

(assert (= (and b!2106035 res!915605) b!2106026))

(assert (= (and b!2106026 res!915600) b!2106025))

(assert (= (and b!2106025 res!915603) b!2106039))

(assert (= (and b!2106039 res!915601) b!2106045))

(assert (= (and b!2106045 res!915604) b!2106038))

(assert (= (and b!2106038 (not res!915599)) b!2106037))

(assert (= b!2106041 b!2106021))

(assert (= b!2106022 b!2106041))

(assert (= (and start!205912 ((_ is Cons!23249) rulesArg!349)) b!2106022))

(assert (= start!205912 b!2106031))

(assert (= start!205912 b!2106044))

(assert (= (and b!2106033 condMapEmpty!10848) mapIsEmpty!10849))

(assert (= (and b!2106033 (not condMapEmpty!10848)) mapNonEmpty!10849))

(assert (= b!2106034 b!2106033))

(assert (= b!2106023 b!2106034))

(assert (= b!2106032 b!2106023))

(assert (= (and b!2106040 ((_ is LongMap!2246) (v!27808 (underlying!4688 (cache!2541 cacheUp!675))))) b!2106032))

(assert (= b!2106042 b!2106040))

(assert (= (and b!2106043 ((_ is HashMap!2160) (cache!2541 cacheUp!675))) b!2106042))

(assert (= start!205912 b!2106043))

(assert (= (and b!2106027 condMapEmpty!10849) mapIsEmpty!10848))

(assert (= (and b!2106027 (not condMapEmpty!10849)) mapNonEmpty!10848))

(assert (= b!2106029 b!2106027))

(assert (= b!2106024 b!2106029))

(assert (= b!2106030 b!2106024))

(assert (= (and b!2106036 ((_ is LongMap!2245) (v!27806 (underlying!4686 (cache!2540 cacheDown!688))))) b!2106030))

(assert (= b!2106020 b!2106036))

(assert (= (and b!2106028 ((_ is HashMap!2159) (cache!2540 cacheDown!688))) b!2106020))

(assert (= start!205912 b!2106028))

(declare-fun m!2564413 () Bool)

(assert (=> b!2106037 m!2564413))

(declare-fun m!2564415 () Bool)

(assert (=> b!2106037 m!2564415))

(declare-fun m!2564417 () Bool)

(assert (=> b!2106026 m!2564417))

(declare-fun m!2564419 () Bool)

(assert (=> start!205912 m!2564419))

(declare-fun m!2564421 () Bool)

(assert (=> start!205912 m!2564421))

(declare-fun m!2564423 () Bool)

(assert (=> start!205912 m!2564423))

(declare-fun m!2564425 () Bool)

(assert (=> start!205912 m!2564425))

(declare-fun m!2564427 () Bool)

(assert (=> b!2106041 m!2564427))

(declare-fun m!2564429 () Bool)

(assert (=> b!2106041 m!2564429))

(declare-fun m!2564431 () Bool)

(assert (=> b!2106039 m!2564431))

(declare-fun m!2564433 () Bool)

(assert (=> mapNonEmpty!10848 m!2564433))

(declare-fun m!2564435 () Bool)

(assert (=> b!2106044 m!2564435))

(declare-fun m!2564437 () Bool)

(assert (=> b!2106031 m!2564437))

(declare-fun m!2564439 () Bool)

(assert (=> b!2106034 m!2564439))

(declare-fun m!2564441 () Bool)

(assert (=> b!2106034 m!2564441))

(declare-fun m!2564443 () Bool)

(assert (=> b!2106035 m!2564443))

(declare-fun m!2564445 () Bool)

(assert (=> b!2106045 m!2564445))

(declare-fun m!2564447 () Bool)

(assert (=> b!2106038 m!2564447))

(declare-fun m!2564449 () Bool)

(assert (=> b!2106038 m!2564449))

(declare-fun m!2564451 () Bool)

(assert (=> mapNonEmpty!10849 m!2564451))

(declare-fun m!2564453 () Bool)

(assert (=> b!2106025 m!2564453))

(assert (=> b!2106025 m!2564453))

(declare-fun m!2564455 () Bool)

(assert (=> b!2106025 m!2564455))

(declare-fun m!2564457 () Bool)

(assert (=> b!2106025 m!2564457))

(declare-fun m!2564459 () Bool)

(assert (=> b!2106029 m!2564459))

(declare-fun m!2564461 () Bool)

(assert (=> b!2106029 m!2564461))

(check-sat (not b!2106039) (not b!2106029) b_and!170085 (not b_next!61223) (not b!2106033) (not b_next!61231) (not b!2106022) (not b!2106044) b_and!170089 (not mapNonEmpty!10849) (not start!205912) (not b!2106041) (not b_next!61225) b_and!170083 (not b!2106025) (not b!2106031) (not b!2106037) (not b!2106034) (not b!2106027) (not b!2106045) (not b!2106026) (not b!2106038) (not b!2106035) (not b_next!61227) (not mapNonEmpty!10848) (not b_next!61229) b_and!170079 (not b_next!61221) b_and!170087 b_and!170081)
(check-sat b_and!170085 (not b_next!61223) (not b_next!61231) b_and!170089 (not b_next!61225) (not b_next!61227) b_and!170083 (not b_next!61229) b_and!170079 (not b_next!61221) b_and!170087 b_and!170081)

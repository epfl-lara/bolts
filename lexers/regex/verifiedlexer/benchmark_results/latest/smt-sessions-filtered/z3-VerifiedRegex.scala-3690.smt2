; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208492 () Bool)

(assert start!208492)

(declare-fun b!2149546 () Bool)

(declare-fun b_free!63477 () Bool)

(declare-fun b_next!64181 () Bool)

(assert (=> b!2149546 (= b_free!63477 (not b_next!64181))))

(declare-fun tp!667581 () Bool)

(declare-fun b_and!173081 () Bool)

(assert (=> b!2149546 (= tp!667581 b_and!173081)))

(declare-fun b!2149553 () Bool)

(declare-fun b_free!63479 () Bool)

(declare-fun b_next!64183 () Bool)

(assert (=> b!2149553 (= b_free!63479 (not b_next!64183))))

(declare-fun tp!667573 () Bool)

(declare-fun b_and!173083 () Bool)

(assert (=> b!2149553 (= tp!667573 b_and!173083)))

(declare-fun b!2149560 () Bool)

(assert (=> b!2149560 true))

(declare-fun b!2149544 () Bool)

(declare-fun e!1374447 () Bool)

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2149544 (= e!1374447 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2149545 () Bool)

(declare-fun res!927102 () Bool)

(declare-fun e!1374459 () Bool)

(assert (=> b!2149545 (=> (not res!927102) (not e!1374459))))

(declare-datatypes ((C!11840 0))(
  ( (C!11841 (val!6906 Int)) )
))
(declare-datatypes ((List!24702 0))(
  ( (Nil!24618) (Cons!24618 (h!30019 C!11840) (t!197244 List!24702)) )
))
(declare-datatypes ((Regex!5847 0))(
  ( (ElementMatch!5847 (c!341076 C!11840)) (Concat!10149 (regOne!12206 Regex!5847) (regTwo!12206 Regex!5847)) (EmptyExpr!5847) (Star!5847 (reg!6176 Regex!5847)) (EmptyLang!5847) (Union!5847 (regOne!12207 Regex!5847) (regTwo!12207 Regex!5847)) )
))
(declare-datatypes ((List!24703 0))(
  ( (Nil!24619) (Cons!24619 (h!30020 Regex!5847) (t!197245 List!24703)) )
))
(declare-datatypes ((Context!2834 0))(
  ( (Context!2835 (exprs!1917 List!24703)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3626 0))(
  ( (tuple3!3627 (_1!14511 (InoxSet Context!2834)) (_2!14511 Int) (_3!2283 Int)) )
))
(declare-datatypes ((tuple2!24456 0))(
  ( (tuple2!24457 (_1!14512 tuple3!3626) (_2!14512 Int)) )
))
(declare-datatypes ((List!24704 0))(
  ( (Nil!24620) (Cons!24620 (h!30021 tuple2!24456) (t!197246 List!24704)) )
))
(declare-datatypes ((array!9717 0))(
  ( (array!9718 (arr!4340 (Array (_ BitVec 32) (_ BitVec 64))) (size!19281 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2786 0))(
  ( (HashableExt!2785 (__x!16792 Int)) )
))
(declare-datatypes ((array!9719 0))(
  ( (array!9720 (arr!4341 (Array (_ BitVec 32) List!24704)) (size!19282 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5744 0))(
  ( (LongMapFixedSize!5745 (defaultEntry!3237 Int) (mask!7111 (_ BitVec 32)) (extraKeys!3120 (_ BitVec 32)) (zeroValue!3130 List!24704) (minValue!3130 List!24704) (_size!5795 (_ BitVec 32)) (_keys!3169 array!9717) (_values!3152 array!9719) (_vacant!2933 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11313 0))(
  ( (Cell!11314 (v!29188 LongMapFixedSize!5744)) )
))
(declare-datatypes ((MutLongMap!2872 0))(
  ( (LongMap!2872 (underlying!5939 Cell!11313)) (MutLongMapExt!2871 (__x!16793 Int)) )
))
(declare-datatypes ((Cell!11315 0))(
  ( (Cell!11316 (v!29189 MutLongMap!2872)) )
))
(declare-datatypes ((MutableMap!2786 0))(
  ( (MutableMapExt!2785 (__x!16794 Int)) (HashMap!2786 (underlying!5940 Cell!11315) (hashF!4709 Hashable!2786) (_size!5796 (_ BitVec 32)) (defaultValue!2948 Int)) )
))
(declare-datatypes ((IArray!15971 0))(
  ( (IArray!15972 (innerList!8043 List!24702)) )
))
(declare-datatypes ((Conc!7983 0))(
  ( (Node!7983 (left!18905 Conc!7983) (right!19235 Conc!7983) (csize!16196 Int) (cheight!8194 Int)) (Leaf!11674 (xs!10925 IArray!15971) (csize!16197 Int)) (Empty!7983) )
))
(declare-datatypes ((BalanceConc!15728 0))(
  ( (BalanceConc!15729 (c!341077 Conc!7983)) )
))
(declare-datatypes ((CacheFurthestNullable!930 0))(
  ( (CacheFurthestNullable!931 (cache!3167 MutableMap!2786) (totalInput!3236 BalanceConc!15728)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!930)

(declare-fun validCacheMapFurthestNullable!143 (MutableMap!2786 BalanceConc!15728) Bool)

(assert (=> b!2149545 (= res!927102 (validCacheMapFurthestNullable!143 (cache!3167 thiss!29110) (totalInput!3236 thiss!29110)))))

(declare-fun e!1374453 () Bool)

(declare-fun e!1374451 () Bool)

(assert (=> b!2149546 (= e!1374453 (and e!1374451 tp!667581))))

(declare-fun b!2149547 () Bool)

(declare-fun e!1374450 () Bool)

(declare-fun e!1374457 () Bool)

(assert (=> b!2149547 (= e!1374450 e!1374457)))

(declare-fun b!2149548 () Bool)

(declare-fun e!1374455 () Bool)

(assert (=> b!2149548 (= e!1374459 (not e!1374455))))

(declare-fun res!927108 () Bool)

(assert (=> b!2149548 (=> res!927108 e!1374455)))

(declare-fun lt!800287 () tuple3!3626)

(declare-fun contains!4205 (MutableMap!2786 tuple3!3626) Bool)

(assert (=> b!2149548 (= res!927108 (not (contains!4205 (cache!3167 thiss!29110) lt!800287)))))

(declare-fun z!514 () (InoxSet Context!2834))

(assert (=> b!2149548 (= lt!800287 (tuple3!3627 z!514 from!952 lastNullablePos!91))))

(declare-fun localTotalInput!13 () BalanceConc!15728)

(assert (=> b!2149548 (validCacheMapFurthestNullable!143 (cache!3167 thiss!29110) localTotalInput!13)))

(declare-fun b!2149549 () Bool)

(declare-fun e!1374460 () Bool)

(assert (=> b!2149549 (= e!1374460 e!1374450)))

(declare-fun b!2149550 () Bool)

(declare-fun lt!800286 () MutLongMap!2872)

(get-info :version)

(assert (=> b!2149550 (= e!1374451 (and e!1374460 ((_ is LongMap!2872) lt!800286)))))

(assert (=> b!2149550 (= lt!800286 (v!29189 (underlying!5940 (cache!3167 thiss!29110))))))

(declare-fun b!2149551 () Bool)

(declare-fun res!927104 () Bool)

(assert (=> b!2149551 (=> (not res!927104) (not e!1374459))))

(assert (=> b!2149551 (= res!927104 e!1374447)))

(declare-fun res!927105 () Bool)

(assert (=> b!2149551 (=> res!927105 e!1374447)))

(declare-fun nullableZipper!186 ((InoxSet Context!2834)) Bool)

(assert (=> b!2149551 (= res!927105 (not (nullableZipper!186 z!514)))))

(declare-fun res!927103 () Bool)

(assert (=> start!208492 (=> (not res!927103) (not e!1374459))))

(assert (=> start!208492 (= res!927103 (and (= localTotalInput!13 (totalInput!3236 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208492 e!1374459))

(declare-fun condSetEmpty!17080 () Bool)

(assert (=> start!208492 (= condSetEmpty!17080 (= z!514 ((as const (Array Context!2834 Bool)) false)))))

(declare-fun setRes!17080 () Bool)

(assert (=> start!208492 setRes!17080))

(assert (=> start!208492 true))

(declare-fun e!1374456 () Bool)

(declare-fun inv!32425 (CacheFurthestNullable!930) Bool)

(assert (=> start!208492 (and (inv!32425 thiss!29110) e!1374456)))

(declare-fun e!1374446 () Bool)

(declare-fun inv!32426 (BalanceConc!15728) Bool)

(assert (=> start!208492 (and (inv!32426 localTotalInput!13) e!1374446)))

(declare-fun b!2149552 () Bool)

(declare-fun e!1374452 () Bool)

(declare-fun tp!667583 () Bool)

(assert (=> b!2149552 (= e!1374452 tp!667583)))

(declare-fun tp!667574 () Bool)

(declare-fun e!1374449 () Bool)

(declare-fun tp!667576 () Bool)

(declare-fun array_inv!3112 (array!9717) Bool)

(declare-fun array_inv!3113 (array!9719) Bool)

(assert (=> b!2149553 (= e!1374457 (and tp!667573 tp!667574 tp!667576 (array_inv!3112 (_keys!3169 (v!29188 (underlying!5939 (v!29189 (underlying!5940 (cache!3167 thiss!29110))))))) (array_inv!3113 (_values!3152 (v!29188 (underlying!5939 (v!29189 (underlying!5940 (cache!3167 thiss!29110))))))) e!1374449))))

(declare-fun setIsEmpty!17080 () Bool)

(assert (=> setIsEmpty!17080 setRes!17080))

(declare-fun b!2149554 () Bool)

(declare-fun res!927106 () Bool)

(declare-fun e!1374458 () Bool)

(assert (=> b!2149554 (=> res!927106 e!1374458)))

(declare-fun size!19283 (BalanceConc!15728) Int)

(assert (=> b!2149554 (= res!927106 (> from!952 (size!19283 localTotalInput!13)))))

(declare-fun b!2149555 () Bool)

(declare-fun tp!667577 () Bool)

(declare-fun inv!32427 (Conc!7983) Bool)

(assert (=> b!2149555 (= e!1374446 (and (inv!32427 (c!341077 localTotalInput!13)) tp!667577))))

(declare-fun b!2149556 () Bool)

(assert (=> b!2149556 (= e!1374458 true)))

(declare-fun lt!800285 () Int)

(assert (=> b!2149556 (= lt!800285 (size!19283 (totalInput!3236 thiss!29110)))))

(declare-fun mapNonEmpty!13607 () Bool)

(declare-fun mapRes!13607 () Bool)

(declare-fun tp!667579 () Bool)

(declare-fun tp!667582 () Bool)

(assert (=> mapNonEmpty!13607 (= mapRes!13607 (and tp!667579 tp!667582))))

(declare-fun mapValue!13607 () List!24704)

(declare-fun mapRest!13607 () (Array (_ BitVec 32) List!24704))

(declare-fun mapKey!13607 () (_ BitVec 32))

(assert (=> mapNonEmpty!13607 (= (arr!4341 (_values!3152 (v!29188 (underlying!5939 (v!29189 (underlying!5940 (cache!3167 thiss!29110))))))) (store mapRest!13607 mapKey!13607 mapValue!13607))))

(declare-fun b!2149557 () Bool)

(declare-fun tp!667580 () Bool)

(assert (=> b!2149557 (= e!1374449 (and tp!667580 mapRes!13607))))

(declare-fun condMapEmpty!13607 () Bool)

(declare-fun mapDefault!13607 () List!24704)

(assert (=> b!2149557 (= condMapEmpty!13607 (= (arr!4341 (_values!3152 (v!29188 (underlying!5939 (v!29189 (underlying!5940 (cache!3167 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24704)) mapDefault!13607)))))

(declare-fun setNonEmpty!17080 () Bool)

(declare-fun tp!667575 () Bool)

(declare-fun setElem!17080 () Context!2834)

(declare-fun inv!32428 (Context!2834) Bool)

(assert (=> setNonEmpty!17080 (= setRes!17080 (and tp!667575 (inv!32428 setElem!17080) e!1374452))))

(declare-fun setRest!17080 () (InoxSet Context!2834))

(assert (=> setNonEmpty!17080 (= z!514 ((_ map or) (store ((as const (Array Context!2834 Bool)) false) setElem!17080 true) setRest!17080))))

(declare-fun b!2149558 () Bool)

(declare-fun e!1374448 () Bool)

(declare-fun tp!667578 () Bool)

(assert (=> b!2149558 (= e!1374448 (and (inv!32427 (c!341077 (totalInput!3236 thiss!29110))) tp!667578))))

(declare-fun b!2149559 () Bool)

(assert (=> b!2149559 (= e!1374456 (and e!1374453 (inv!32426 (totalInput!3236 thiss!29110)) e!1374448))))

(declare-fun mapIsEmpty!13607 () Bool)

(assert (=> mapIsEmpty!13607 mapRes!13607))

(assert (=> b!2149560 (= e!1374455 e!1374458)))

(declare-fun res!927107 () Bool)

(assert (=> b!2149560 (=> res!927107 e!1374458)))

(assert (=> b!2149560 (= res!927107 (< from!952 0))))

(declare-fun validCacheMapFurthestNullableBody!22 (tuple2!24456 BalanceConc!15728) Bool)

(declare-fun apply!6014 (MutableMap!2786 tuple3!3626) Int)

(assert (=> b!2149560 (validCacheMapFurthestNullableBody!22 (tuple2!24457 lt!800287 (apply!6014 (cache!3167 thiss!29110) lt!800287)) localTotalInput!13)))

(declare-fun lambda!80787 () Int)

(declare-datatypes ((Unit!37794 0))(
  ( (Unit!37795) )
))
(declare-fun lt!800288 () Unit!37794)

(declare-fun lemmaForallPairsThenForLookup!6 (MutableMap!2786 tuple3!3626 Int) Unit!37794)

(assert (=> b!2149560 (= lt!800288 (lemmaForallPairsThenForLookup!6 (cache!3167 thiss!29110) lt!800287 lambda!80787))))

(assert (= (and start!208492 res!927103) b!2149551))

(assert (= (and b!2149551 (not res!927105)) b!2149544))

(assert (= (and b!2149551 res!927104) b!2149545))

(assert (= (and b!2149545 res!927102) b!2149548))

(assert (= (and b!2149548 (not res!927108)) b!2149560))

(assert (= (and b!2149560 (not res!927107)) b!2149554))

(assert (= (and b!2149554 (not res!927106)) b!2149556))

(assert (= (and start!208492 condSetEmpty!17080) setIsEmpty!17080))

(assert (= (and start!208492 (not condSetEmpty!17080)) setNonEmpty!17080))

(assert (= setNonEmpty!17080 b!2149552))

(assert (= (and b!2149557 condMapEmpty!13607) mapIsEmpty!13607))

(assert (= (and b!2149557 (not condMapEmpty!13607)) mapNonEmpty!13607))

(assert (= b!2149553 b!2149557))

(assert (= b!2149547 b!2149553))

(assert (= b!2149549 b!2149547))

(assert (= (and b!2149550 ((_ is LongMap!2872) (v!29189 (underlying!5940 (cache!3167 thiss!29110))))) b!2149549))

(assert (= b!2149546 b!2149550))

(assert (= (and b!2149559 ((_ is HashMap!2786) (cache!3167 thiss!29110))) b!2149546))

(assert (= b!2149559 b!2149558))

(assert (= start!208492 b!2149559))

(assert (= start!208492 b!2149555))

(declare-fun m!2592394 () Bool)

(assert (=> b!2149551 m!2592394))

(declare-fun m!2592396 () Bool)

(assert (=> b!2149558 m!2592396))

(declare-fun m!2592398 () Bool)

(assert (=> b!2149560 m!2592398))

(declare-fun m!2592400 () Bool)

(assert (=> b!2149560 m!2592400))

(declare-fun m!2592402 () Bool)

(assert (=> b!2149560 m!2592402))

(declare-fun m!2592404 () Bool)

(assert (=> b!2149556 m!2592404))

(declare-fun m!2592406 () Bool)

(assert (=> b!2149559 m!2592406))

(declare-fun m!2592408 () Bool)

(assert (=> mapNonEmpty!13607 m!2592408))

(declare-fun m!2592410 () Bool)

(assert (=> b!2149555 m!2592410))

(declare-fun m!2592412 () Bool)

(assert (=> b!2149553 m!2592412))

(declare-fun m!2592414 () Bool)

(assert (=> b!2149553 m!2592414))

(declare-fun m!2592416 () Bool)

(assert (=> start!208492 m!2592416))

(declare-fun m!2592418 () Bool)

(assert (=> start!208492 m!2592418))

(declare-fun m!2592420 () Bool)

(assert (=> b!2149548 m!2592420))

(declare-fun m!2592422 () Bool)

(assert (=> b!2149548 m!2592422))

(declare-fun m!2592424 () Bool)

(assert (=> setNonEmpty!17080 m!2592424))

(declare-fun m!2592426 () Bool)

(assert (=> b!2149545 m!2592426))

(declare-fun m!2592428 () Bool)

(assert (=> b!2149554 m!2592428))

(check-sat (not b!2149556) (not b!2149560) b_and!173081 (not b!2149559) (not start!208492) (not b_next!64181) (not b!2149548) b_and!173083 (not b!2149558) (not b!2149553) (not b!2149545) (not b!2149552) (not b!2149555) (not b_next!64183) (not b!2149551) (not b!2149554) (not setNonEmpty!17080) (not mapNonEmpty!13607) (not b!2149557))
(check-sat b_and!173081 b_and!173083 (not b_next!64183) (not b_next!64181))

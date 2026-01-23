; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208496 () Bool)

(assert start!208496)

(declare-fun b!2149666 () Bool)

(declare-fun b_free!63485 () Bool)

(declare-fun b_next!64189 () Bool)

(assert (=> b!2149666 (= b_free!63485 (not b_next!64189))))

(declare-fun tp!667648 () Bool)

(declare-fun b_and!173089 () Bool)

(assert (=> b!2149666 (= tp!667648 b_and!173089)))

(declare-fun b!2149671 () Bool)

(declare-fun b_free!63487 () Bool)

(declare-fun b_next!64191 () Bool)

(assert (=> b!2149671 (= b_free!63487 (not b_next!64191))))

(declare-fun tp!667647 () Bool)

(declare-fun b_and!173091 () Bool)

(assert (=> b!2149671 (= tp!667647 b_and!173091)))

(declare-fun b!2149659 () Bool)

(assert (=> b!2149659 true))

(declare-fun b!2149655 () Bool)

(declare-fun e!1374550 () Bool)

(declare-fun e!1374551 () Bool)

(assert (=> b!2149655 (= e!1374550 e!1374551)))

(declare-fun b!2149656 () Bool)

(declare-fun e!1374553 () Bool)

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2149656 (= e!1374553 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2149657 () Bool)

(declare-fun e!1374542 () Bool)

(declare-datatypes ((C!11844 0))(
  ( (C!11845 (val!6908 Int)) )
))
(declare-datatypes ((Regex!5849 0))(
  ( (ElementMatch!5849 (c!341080 C!11844)) (Concat!10151 (regOne!12210 Regex!5849) (regTwo!12210 Regex!5849)) (EmptyExpr!5849) (Star!5849 (reg!6178 Regex!5849)) (EmptyLang!5849) (Union!5849 (regOne!12211 Regex!5849) (regTwo!12211 Regex!5849)) )
))
(declare-datatypes ((List!24708 0))(
  ( (Nil!24624) (Cons!24624 (h!30025 Regex!5849) (t!197250 List!24708)) )
))
(declare-datatypes ((Context!2838 0))(
  ( (Context!2839 (exprs!1919 List!24708)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3630 0))(
  ( (tuple3!3631 (_1!14515 (InoxSet Context!2838)) (_2!14515 Int) (_3!2285 Int)) )
))
(declare-datatypes ((tuple2!24460 0))(
  ( (tuple2!24461 (_1!14516 tuple3!3630) (_2!14516 Int)) )
))
(declare-datatypes ((List!24709 0))(
  ( (Nil!24625) (Cons!24625 (h!30026 tuple2!24460) (t!197251 List!24709)) )
))
(declare-datatypes ((array!9725 0))(
  ( (array!9726 (arr!4344 (Array (_ BitVec 32) (_ BitVec 64))) (size!19287 (_ BitVec 32))) )
))
(declare-datatypes ((array!9727 0))(
  ( (array!9728 (arr!4345 (Array (_ BitVec 32) List!24709)) (size!19288 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5748 0))(
  ( (LongMapFixedSize!5749 (defaultEntry!3239 Int) (mask!7114 (_ BitVec 32)) (extraKeys!3122 (_ BitVec 32)) (zeroValue!3132 List!24709) (minValue!3132 List!24709) (_size!5799 (_ BitVec 32)) (_keys!3171 array!9725) (_values!3154 array!9727) (_vacant!2935 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11321 0))(
  ( (Cell!11322 (v!29192 LongMapFixedSize!5748)) )
))
(declare-datatypes ((MutLongMap!2874 0))(
  ( (LongMap!2874 (underlying!5943 Cell!11321)) (MutLongMapExt!2873 (__x!16798 Int)) )
))
(declare-fun lt!800311 () MutLongMap!2874)

(get-info :version)

(assert (=> b!2149657 (= e!1374542 (and e!1374550 ((_ is LongMap!2874) lt!800311)))))

(declare-datatypes ((List!24710 0))(
  ( (Nil!24626) (Cons!24626 (h!30027 C!11844) (t!197252 List!24710)) )
))
(declare-datatypes ((Hashable!2788 0))(
  ( (HashableExt!2787 (__x!16799 Int)) )
))
(declare-datatypes ((Cell!11323 0))(
  ( (Cell!11324 (v!29193 MutLongMap!2874)) )
))
(declare-datatypes ((MutableMap!2788 0))(
  ( (MutableMapExt!2787 (__x!16800 Int)) (HashMap!2788 (underlying!5944 Cell!11323) (hashF!4711 Hashable!2788) (_size!5800 (_ BitVec 32)) (defaultValue!2950 Int)) )
))
(declare-datatypes ((IArray!15975 0))(
  ( (IArray!15976 (innerList!8045 List!24710)) )
))
(declare-datatypes ((Conc!7985 0))(
  ( (Node!7985 (left!18912 Conc!7985) (right!19242 Conc!7985) (csize!16200 Int) (cheight!8196 Int)) (Leaf!11677 (xs!10927 IArray!15975) (csize!16201 Int)) (Empty!7985) )
))
(declare-datatypes ((BalanceConc!15732 0))(
  ( (BalanceConc!15733 (c!341081 Conc!7985)) )
))
(declare-datatypes ((CacheFurthestNullable!934 0))(
  ( (CacheFurthestNullable!935 (cache!3169 MutableMap!2788) (totalInput!3238 BalanceConc!15732)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!934)

(assert (=> b!2149657 (= lt!800311 (v!29193 (underlying!5944 (cache!3169 thiss!29110))))))

(declare-fun b!2149658 () Bool)

(declare-fun e!1374556 () Bool)

(declare-fun tp!667646 () Bool)

(assert (=> b!2149658 (= e!1374556 tp!667646)))

(declare-fun e!1374552 () Bool)

(declare-fun e!1374548 () Bool)

(assert (=> b!2149659 (= e!1374552 e!1374548)))

(declare-fun res!927149 () Bool)

(assert (=> b!2149659 (=> res!927149 e!1374548)))

(assert (=> b!2149659 (= res!927149 (< from!952 0))))

(declare-fun lt!800309 () tuple3!3630)

(declare-fun localTotalInput!13 () BalanceConc!15732)

(declare-fun validCacheMapFurthestNullableBody!23 (tuple2!24460 BalanceConc!15732) Bool)

(declare-fun apply!6015 (MutableMap!2788 tuple3!3630) Int)

(assert (=> b!2149659 (validCacheMapFurthestNullableBody!23 (tuple2!24461 lt!800309 (apply!6015 (cache!3169 thiss!29110) lt!800309)) localTotalInput!13)))

(declare-datatypes ((Unit!37796 0))(
  ( (Unit!37797) )
))
(declare-fun lt!800312 () Unit!37796)

(declare-fun lambda!80793 () Int)

(declare-fun lemmaForallPairsThenForLookup!7 (MutableMap!2788 tuple3!3630 Int) Unit!37796)

(assert (=> b!2149659 (= lt!800312 (lemmaForallPairsThenForLookup!7 (cache!3169 thiss!29110) lt!800309 lambda!80793))))

(declare-fun b!2149660 () Bool)

(declare-fun e!1374554 () Bool)

(declare-fun tp!667641 () Bool)

(declare-fun mapRes!13613 () Bool)

(assert (=> b!2149660 (= e!1374554 (and tp!667641 mapRes!13613))))

(declare-fun condMapEmpty!13613 () Bool)

(declare-fun mapDefault!13613 () List!24709)

(assert (=> b!2149660 (= condMapEmpty!13613 (= (arr!4345 (_values!3154 (v!29192 (underlying!5943 (v!29193 (underlying!5944 (cache!3169 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24709)) mapDefault!13613)))))

(declare-fun tp!667640 () Bool)

(declare-fun setRes!17086 () Bool)

(declare-fun setNonEmpty!17086 () Bool)

(declare-fun setElem!17086 () Context!2838)

(declare-fun inv!32435 (Context!2838) Bool)

(assert (=> setNonEmpty!17086 (= setRes!17086 (and tp!667640 (inv!32435 setElem!17086) e!1374556))))

(declare-fun z!514 () (InoxSet Context!2838))

(declare-fun setRest!17086 () (InoxSet Context!2838))

(assert (=> setNonEmpty!17086 (= z!514 ((_ map or) (store ((as const (Array Context!2838 Bool)) false) setElem!17086 true) setRest!17086))))

(declare-fun res!927152 () Bool)

(declare-fun e!1374543 () Bool)

(assert (=> start!208496 (=> (not res!927152) (not e!1374543))))

(assert (=> start!208496 (= res!927152 (and (= localTotalInput!13 (totalInput!3238 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208496 e!1374543))

(declare-fun condSetEmpty!17086 () Bool)

(assert (=> start!208496 (= condSetEmpty!17086 (= z!514 ((as const (Array Context!2838 Bool)) false)))))

(assert (=> start!208496 setRes!17086))

(assert (=> start!208496 true))

(declare-fun e!1374541 () Bool)

(declare-fun inv!32436 (CacheFurthestNullable!934) Bool)

(assert (=> start!208496 (and (inv!32436 thiss!29110) e!1374541)))

(declare-fun e!1374545 () Bool)

(declare-fun inv!32437 (BalanceConc!15732) Bool)

(assert (=> start!208496 (and (inv!32437 localTotalInput!13) e!1374545)))

(declare-fun b!2149661 () Bool)

(declare-fun e!1374546 () Bool)

(assert (=> b!2149661 (= e!1374551 e!1374546)))

(declare-fun b!2149662 () Bool)

(declare-fun res!927150 () Bool)

(assert (=> b!2149662 (=> res!927150 e!1374548)))

(declare-fun size!19289 (BalanceConc!15732) Int)

(assert (=> b!2149662 (= res!927150 (> from!952 (size!19289 (totalInput!3238 thiss!29110))))))

(declare-fun b!2149663 () Bool)

(declare-fun tp!667642 () Bool)

(declare-fun inv!32438 (Conc!7985) Bool)

(assert (=> b!2149663 (= e!1374545 (and (inv!32438 (c!341081 localTotalInput!13)) tp!667642))))

(declare-fun b!2149664 () Bool)

(declare-fun lt!800310 () Bool)

(assert (=> b!2149664 (= e!1374548 lt!800310)))

(declare-fun b!2149665 () Bool)

(declare-fun res!927151 () Bool)

(assert (=> b!2149665 (=> res!927151 e!1374548)))

(assert (=> b!2149665 (= res!927151 (> from!952 (size!19289 localTotalInput!13)))))

(declare-fun e!1374544 () Bool)

(assert (=> b!2149666 (= e!1374544 (and e!1374542 tp!667648))))

(declare-fun b!2149667 () Bool)

(declare-fun e!1374547 () Bool)

(assert (=> b!2149667 (= e!1374541 (and e!1374544 (inv!32437 (totalInput!3238 thiss!29110)) e!1374547))))

(declare-fun mapNonEmpty!13613 () Bool)

(declare-fun tp!667645 () Bool)

(declare-fun tp!667649 () Bool)

(assert (=> mapNonEmpty!13613 (= mapRes!13613 (and tp!667645 tp!667649))))

(declare-fun mapValue!13613 () List!24709)

(declare-fun mapKey!13613 () (_ BitVec 32))

(declare-fun mapRest!13613 () (Array (_ BitVec 32) List!24709))

(assert (=> mapNonEmpty!13613 (= (arr!4345 (_values!3154 (v!29192 (underlying!5943 (v!29193 (underlying!5944 (cache!3169 thiss!29110))))))) (store mapRest!13613 mapKey!13613 mapValue!13613))))

(declare-fun mapIsEmpty!13613 () Bool)

(assert (=> mapIsEmpty!13613 mapRes!13613))

(declare-fun b!2149668 () Bool)

(declare-fun e!1374549 () Bool)

(assert (=> b!2149668 (= e!1374549 (not e!1374552))))

(declare-fun res!927153 () Bool)

(assert (=> b!2149668 (=> res!927153 e!1374552)))

(declare-fun contains!4207 (MutableMap!2788 tuple3!3630) Bool)

(assert (=> b!2149668 (= res!927153 (not (contains!4207 (cache!3169 thiss!29110) lt!800309)))))

(assert (=> b!2149668 (= lt!800309 (tuple3!3631 z!514 from!952 lastNullablePos!91))))

(declare-fun validCacheMapFurthestNullable!145 (MutableMap!2788 BalanceConc!15732) Bool)

(assert (=> b!2149668 (validCacheMapFurthestNullable!145 (cache!3169 thiss!29110) localTotalInput!13)))

(declare-fun setIsEmpty!17086 () Bool)

(assert (=> setIsEmpty!17086 setRes!17086))

(declare-fun b!2149669 () Bool)

(assert (=> b!2149669 (= e!1374543 e!1374549)))

(declare-fun res!927156 () Bool)

(assert (=> b!2149669 (=> (not res!927156) (not e!1374549))))

(assert (=> b!2149669 (= res!927156 lt!800310)))

(assert (=> b!2149669 (= lt!800310 e!1374553)))

(declare-fun res!927154 () Bool)

(assert (=> b!2149669 (=> res!927154 e!1374553)))

(declare-fun nullableZipper!188 ((InoxSet Context!2838)) Bool)

(assert (=> b!2149669 (= res!927154 (not (nullableZipper!188 z!514)))))

(declare-fun b!2149670 () Bool)

(declare-fun res!927155 () Bool)

(assert (=> b!2149670 (=> (not res!927155) (not e!1374549))))

(assert (=> b!2149670 (= res!927155 (validCacheMapFurthestNullable!145 (cache!3169 thiss!29110) (totalInput!3238 thiss!29110)))))

(declare-fun tp!667643 () Bool)

(declare-fun tp!667644 () Bool)

(declare-fun array_inv!3114 (array!9725) Bool)

(declare-fun array_inv!3115 (array!9727) Bool)

(assert (=> b!2149671 (= e!1374546 (and tp!667647 tp!667643 tp!667644 (array_inv!3114 (_keys!3171 (v!29192 (underlying!5943 (v!29193 (underlying!5944 (cache!3169 thiss!29110))))))) (array_inv!3115 (_values!3154 (v!29192 (underlying!5943 (v!29193 (underlying!5944 (cache!3169 thiss!29110))))))) e!1374554))))

(declare-fun b!2149672 () Bool)

(declare-fun tp!667639 () Bool)

(assert (=> b!2149672 (= e!1374547 (and (inv!32438 (c!341081 (totalInput!3238 thiss!29110))) tp!667639))))

(assert (= (and start!208496 res!927152) b!2149669))

(assert (= (and b!2149669 (not res!927154)) b!2149656))

(assert (= (and b!2149669 res!927156) b!2149670))

(assert (= (and b!2149670 res!927155) b!2149668))

(assert (= (and b!2149668 (not res!927153)) b!2149659))

(assert (= (and b!2149659 (not res!927149)) b!2149665))

(assert (= (and b!2149665 (not res!927151)) b!2149662))

(assert (= (and b!2149662 (not res!927150)) b!2149664))

(assert (= (and start!208496 condSetEmpty!17086) setIsEmpty!17086))

(assert (= (and start!208496 (not condSetEmpty!17086)) setNonEmpty!17086))

(assert (= setNonEmpty!17086 b!2149658))

(assert (= (and b!2149660 condMapEmpty!13613) mapIsEmpty!13613))

(assert (= (and b!2149660 (not condMapEmpty!13613)) mapNonEmpty!13613))

(assert (= b!2149671 b!2149660))

(assert (= b!2149661 b!2149671))

(assert (= b!2149655 b!2149661))

(assert (= (and b!2149657 ((_ is LongMap!2874) (v!29193 (underlying!5944 (cache!3169 thiss!29110))))) b!2149655))

(assert (= b!2149666 b!2149657))

(assert (= (and b!2149667 ((_ is HashMap!2788) (cache!3169 thiss!29110))) b!2149666))

(assert (= b!2149667 b!2149672))

(assert (= start!208496 b!2149667))

(assert (= start!208496 b!2149663))

(declare-fun m!2592466 () Bool)

(assert (=> b!2149667 m!2592466))

(declare-fun m!2592468 () Bool)

(assert (=> b!2149665 m!2592468))

(declare-fun m!2592470 () Bool)

(assert (=> b!2149671 m!2592470))

(declare-fun m!2592472 () Bool)

(assert (=> b!2149671 m!2592472))

(declare-fun m!2592474 () Bool)

(assert (=> b!2149668 m!2592474))

(declare-fun m!2592476 () Bool)

(assert (=> b!2149668 m!2592476))

(declare-fun m!2592478 () Bool)

(assert (=> b!2149662 m!2592478))

(declare-fun m!2592480 () Bool)

(assert (=> b!2149669 m!2592480))

(declare-fun m!2592482 () Bool)

(assert (=> b!2149670 m!2592482))

(declare-fun m!2592484 () Bool)

(assert (=> mapNonEmpty!13613 m!2592484))

(declare-fun m!2592486 () Bool)

(assert (=> b!2149659 m!2592486))

(declare-fun m!2592488 () Bool)

(assert (=> b!2149659 m!2592488))

(declare-fun m!2592490 () Bool)

(assert (=> b!2149659 m!2592490))

(declare-fun m!2592492 () Bool)

(assert (=> b!2149663 m!2592492))

(declare-fun m!2592494 () Bool)

(assert (=> b!2149672 m!2592494))

(declare-fun m!2592496 () Bool)

(assert (=> setNonEmpty!17086 m!2592496))

(declare-fun m!2592498 () Bool)

(assert (=> start!208496 m!2592498))

(declare-fun m!2592500 () Bool)

(assert (=> start!208496 m!2592500))

(check-sat b_and!173089 (not mapNonEmpty!13613) (not b!2149668) (not b!2149665) (not b!2149660) (not b_next!64189) (not b!2149658) (not b!2149669) (not setNonEmpty!17086) (not b!2149672) (not b!2149659) b_and!173091 (not b_next!64191) (not start!208496) (not b!2149663) (not b!2149670) (not b!2149671) (not b!2149662) (not b!2149667))
(check-sat b_and!173089 b_and!173091 (not b_next!64191) (not b_next!64189))

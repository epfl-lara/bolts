; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208690 () Bool)

(assert start!208690)

(declare-fun b!2151493 () Bool)

(declare-fun b_free!63565 () Bool)

(declare-fun b_next!64269 () Bool)

(assert (=> b!2151493 (= b_free!63565 (not b_next!64269))))

(declare-fun tp!668747 () Bool)

(declare-fun b_and!173177 () Bool)

(assert (=> b!2151493 (= tp!668747 b_and!173177)))

(declare-fun b!2151502 () Bool)

(declare-fun b_free!63567 () Bool)

(declare-fun b_next!64271 () Bool)

(assert (=> b!2151502 (= b_free!63567 (not b_next!64271))))

(declare-fun tp!668744 () Bool)

(declare-fun b_and!173179 () Bool)

(assert (=> b!2151502 (= tp!668744 b_and!173179)))

(declare-fun b!2151501 () Bool)

(assert (=> b!2151501 true))

(declare-fun b!2151486 () Bool)

(declare-fun e!1375968 () Bool)

(declare-fun e!1375960 () Bool)

(assert (=> b!2151486 (= e!1375968 e!1375960)))

(declare-fun b!2151487 () Bool)

(declare-fun res!927733 () Bool)

(declare-fun e!1375967 () Bool)

(assert (=> b!2151487 (=> (not res!927733) (not e!1375967))))

(declare-datatypes ((C!11884 0))(
  ( (C!11885 (val!6928 Int)) )
))
(declare-datatypes ((List!24775 0))(
  ( (Nil!24691) (Cons!24691 (h!30092 C!11884) (t!197321 List!24775)) )
))
(declare-datatypes ((Regex!5869 0))(
  ( (ElementMatch!5869 (c!341264 C!11884)) (Concat!10171 (regOne!12250 Regex!5869) (regTwo!12250 Regex!5869)) (EmptyExpr!5869) (Star!5869 (reg!6198 Regex!5869)) (EmptyLang!5869) (Union!5869 (regOne!12251 Regex!5869) (regTwo!12251 Regex!5869)) )
))
(declare-datatypes ((List!24776 0))(
  ( (Nil!24692) (Cons!24692 (h!30093 Regex!5869) (t!197322 List!24776)) )
))
(declare-datatypes ((Context!2878 0))(
  ( (Context!2879 (exprs!1939 List!24776)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3670 0))(
  ( (tuple3!3671 (_1!14562 (InoxSet Context!2878)) (_2!14562 Int) (_3!2305 Int)) )
))
(declare-datatypes ((tuple2!24514 0))(
  ( (tuple2!24515 (_1!14563 tuple3!3670) (_2!14563 Int)) )
))
(declare-datatypes ((List!24777 0))(
  ( (Nil!24693) (Cons!24693 (h!30094 tuple2!24514) (t!197323 List!24777)) )
))
(declare-datatypes ((array!9819 0))(
  ( (array!9820 (arr!4384 (Array (_ BitVec 32) (_ BitVec 64))) (size!19336 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2808 0))(
  ( (HashableExt!2807 (__x!16858 Int)) )
))
(declare-datatypes ((array!9821 0))(
  ( (array!9822 (arr!4385 (Array (_ BitVec 32) List!24777)) (size!19337 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5788 0))(
  ( (LongMapFixedSize!5789 (defaultEntry!3259 Int) (mask!7144 (_ BitVec 32)) (extraKeys!3142 (_ BitVec 32)) (zeroValue!3152 List!24777) (minValue!3152 List!24777) (_size!5839 (_ BitVec 32)) (_keys!3191 array!9819) (_values!3174 array!9821) (_vacant!2955 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11401 0))(
  ( (Cell!11402 (v!29248 LongMapFixedSize!5788)) )
))
(declare-datatypes ((MutLongMap!2894 0))(
  ( (LongMap!2894 (underlying!5983 Cell!11401)) (MutLongMapExt!2893 (__x!16859 Int)) )
))
(declare-datatypes ((Cell!11403 0))(
  ( (Cell!11404 (v!29249 MutLongMap!2894)) )
))
(declare-datatypes ((MutableMap!2808 0))(
  ( (MutableMapExt!2807 (__x!16860 Int)) (HashMap!2808 (underlying!5984 Cell!11403) (hashF!4731 Hashable!2808) (_size!5840 (_ BitVec 32)) (defaultValue!2970 Int)) )
))
(declare-datatypes ((IArray!16015 0))(
  ( (IArray!16016 (innerList!8065 List!24775)) )
))
(declare-datatypes ((Conc!8005 0))(
  ( (Node!8005 (left!18966 Conc!8005) (right!19296 Conc!8005) (csize!16240 Int) (cheight!8216 Int)) (Leaf!11707 (xs!10947 IArray!16015) (csize!16241 Int)) (Empty!8005) )
))
(declare-datatypes ((BalanceConc!15772 0))(
  ( (BalanceConc!15773 (c!341265 Conc!8005)) )
))
(declare-datatypes ((CacheFurthestNullable!974 0))(
  ( (CacheFurthestNullable!975 (cache!3189 MutableMap!2808) (totalInput!3267 BalanceConc!15772)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!974)

(declare-fun validCacheMapFurthestNullable!158 (MutableMap!2808 BalanceConc!15772) Bool)

(assert (=> b!2151487 (= res!927733 (validCacheMapFurthestNullable!158 (cache!3189 thiss!29110) (totalInput!3267 thiss!29110)))))

(declare-fun b!2151488 () Bool)

(declare-fun e!1375965 () Bool)

(assert (=> b!2151488 (= e!1375965 e!1375968)))

(declare-fun b!2151489 () Bool)

(declare-fun e!1375966 () Bool)

(declare-fun localTotalInput!13 () BalanceConc!15772)

(declare-fun tp!668745 () Bool)

(declare-fun inv!32542 (Conc!8005) Bool)

(assert (=> b!2151489 (= e!1375966 (and (inv!32542 (c!341265 localTotalInput!13)) tp!668745))))

(declare-fun e!1375964 () Bool)

(declare-fun setNonEmpty!17251 () Bool)

(declare-fun setRes!17251 () Bool)

(declare-fun setElem!17251 () Context!2878)

(declare-fun tp!668740 () Bool)

(declare-fun inv!32543 (Context!2878) Bool)

(assert (=> setNonEmpty!17251 (= setRes!17251 (and tp!668740 (inv!32543 setElem!17251) e!1375964))))

(declare-fun z!514 () (InoxSet Context!2878))

(declare-fun setRest!17251 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17251 (= z!514 ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17251 true) setRest!17251))))

(declare-fun b!2151490 () Bool)

(declare-fun tp!668749 () Bool)

(assert (=> b!2151490 (= e!1375964 tp!668749)))

(declare-fun setIsEmpty!17251 () Bool)

(assert (=> setIsEmpty!17251 setRes!17251))

(declare-fun b!2151491 () Bool)

(declare-fun e!1375963 () Bool)

(declare-fun tp!668741 () Bool)

(declare-fun mapRes!13694 () Bool)

(assert (=> b!2151491 (= e!1375963 (and tp!668741 mapRes!13694))))

(declare-fun condMapEmpty!13694 () Bool)

(declare-fun mapDefault!13694 () List!24777)

(assert (=> b!2151491 (= condMapEmpty!13694 (= (arr!4385 (_values!3174 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24777)) mapDefault!13694)))))

(declare-fun b!2151492 () Bool)

(declare-fun e!1375959 () Bool)

(declare-fun lt!801034 () MutLongMap!2894)

(get-info :version)

(assert (=> b!2151492 (= e!1375959 (and e!1375965 ((_ is LongMap!2894) lt!801034)))))

(assert (=> b!2151492 (= lt!801034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))

(declare-fun e!1375958 () Bool)

(assert (=> b!2151493 (= e!1375958 (and e!1375959 tp!668747))))

(declare-fun mapIsEmpty!13694 () Bool)

(assert (=> mapIsEmpty!13694 mapRes!13694))

(declare-fun mapNonEmpty!13694 () Bool)

(declare-fun tp!668742 () Bool)

(declare-fun tp!668743 () Bool)

(assert (=> mapNonEmpty!13694 (= mapRes!13694 (and tp!668742 tp!668743))))

(declare-fun mapKey!13694 () (_ BitVec 32))

(declare-fun mapRest!13694 () (Array (_ BitVec 32) List!24777))

(declare-fun mapValue!13694 () List!24777)

(assert (=> mapNonEmpty!13694 (= (arr!4385 (_values!3174 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) (store mapRest!13694 mapKey!13694 mapValue!13694))))

(declare-fun b!2151494 () Bool)

(declare-fun res!927734 () Bool)

(assert (=> b!2151494 (=> (not res!927734) (not e!1375967))))

(declare-fun e!1375961 () Bool)

(assert (=> b!2151494 (= res!927734 e!1375961)))

(declare-fun res!927732 () Bool)

(assert (=> b!2151494 (=> res!927732 e!1375961)))

(declare-fun nullableZipper!201 ((InoxSet Context!2878)) Bool)

(assert (=> b!2151494 (= res!927732 (not (nullableZipper!201 z!514)))))

(declare-fun b!2151495 () Bool)

(declare-fun e!1375955 () Bool)

(declare-fun tp!668750 () Bool)

(assert (=> b!2151495 (= e!1375955 (and (inv!32542 (c!341265 (totalInput!3267 thiss!29110))) tp!668750))))

(declare-fun res!927737 () Bool)

(assert (=> start!208690 (=> (not res!927737) (not e!1375967))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> start!208690 (= res!927737 (and (= localTotalInput!13 (totalInput!3267 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208690 e!1375967))

(declare-fun condSetEmpty!17251 () Bool)

(assert (=> start!208690 (= condSetEmpty!17251 (= z!514 ((as const (Array Context!2878 Bool)) false)))))

(assert (=> start!208690 setRes!17251))

(assert (=> start!208690 true))

(declare-fun e!1375956 () Bool)

(declare-fun inv!32544 (CacheFurthestNullable!974) Bool)

(assert (=> start!208690 (and (inv!32544 thiss!29110) e!1375956)))

(declare-fun inv!32545 (BalanceConc!15772) Bool)

(assert (=> start!208690 (and (inv!32545 localTotalInput!13) e!1375966)))

(declare-fun b!2151496 () Bool)

(declare-fun res!927738 () Bool)

(declare-fun e!1375954 () Bool)

(assert (=> b!2151496 (=> (not res!927738) (not e!1375954))))

(declare-fun size!19338 (BalanceConc!15772) Int)

(assert (=> b!2151496 (= res!927738 (<= from!952 (size!19338 localTotalInput!13)))))

(declare-fun b!2151497 () Bool)

(assert (=> b!2151497 (= e!1375956 (and e!1375958 (inv!32545 (totalInput!3267 thiss!29110)) e!1375955))))

(declare-fun lt!801032 () Int)

(declare-fun b!2151498 () Bool)

(declare-fun furthestNullablePosition!110 ((InoxSet Context!2878) Int BalanceConc!15772 Int Int) Int)

(assert (=> b!2151498 (= e!1375954 (= (furthestNullablePosition!110 z!514 from!952 (totalInput!3267 thiss!29110) (size!19338 (totalInput!3267 thiss!29110)) lastNullablePos!91) lt!801032))))

(declare-fun b!2151499 () Bool)

(declare-fun e!1375962 () Bool)

(assert (=> b!2151499 (= e!1375967 (not e!1375962))))

(declare-fun res!927736 () Bool)

(assert (=> b!2151499 (=> res!927736 e!1375962)))

(declare-fun lt!801033 () tuple3!3670)

(declare-fun contains!4245 (MutableMap!2808 tuple3!3670) Bool)

(assert (=> b!2151499 (= res!927736 (not (contains!4245 (cache!3189 thiss!29110) lt!801033)))))

(assert (=> b!2151499 (= lt!801033 (tuple3!3671 z!514 from!952 lastNullablePos!91))))

(assert (=> b!2151499 (validCacheMapFurthestNullable!158 (cache!3189 thiss!29110) localTotalInput!13)))

(declare-fun b!2151500 () Bool)

(assert (=> b!2151500 (= e!1375961 (= lastNullablePos!91 (- from!952 1)))))

(assert (=> b!2151501 (= e!1375962 e!1375954)))

(declare-fun res!927735 () Bool)

(assert (=> b!2151501 (=> (not res!927735) (not e!1375954))))

(assert (=> b!2151501 (= res!927735 (>= from!952 0))))

(declare-fun validCacheMapFurthestNullableBody!28 (tuple2!24514 BalanceConc!15772) Bool)

(assert (=> b!2151501 (validCacheMapFurthestNullableBody!28 (tuple2!24515 lt!801033 lt!801032) localTotalInput!13)))

(declare-fun apply!6033 (MutableMap!2808 tuple3!3670) Int)

(assert (=> b!2151501 (= lt!801032 (apply!6033 (cache!3189 thiss!29110) lt!801033))))

(declare-fun lambda!80934 () Int)

(declare-datatypes ((Unit!37853 0))(
  ( (Unit!37854) )
))
(declare-fun lt!801035 () Unit!37853)

(declare-fun lemmaForallPairsThenForLookup!11 (MutableMap!2808 tuple3!3670 Int) Unit!37853)

(assert (=> b!2151501 (= lt!801035 (lemmaForallPairsThenForLookup!11 (cache!3189 thiss!29110) lt!801033 lambda!80934))))

(declare-fun tp!668746 () Bool)

(declare-fun tp!668748 () Bool)

(declare-fun array_inv!3142 (array!9819) Bool)

(declare-fun array_inv!3143 (array!9821) Bool)

(assert (=> b!2151502 (= e!1375960 (and tp!668744 tp!668748 tp!668746 (array_inv!3142 (_keys!3191 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) (array_inv!3143 (_values!3174 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) e!1375963))))

(assert (= (and start!208690 res!927737) b!2151494))

(assert (= (and b!2151494 (not res!927732)) b!2151500))

(assert (= (and b!2151494 res!927734) b!2151487))

(assert (= (and b!2151487 res!927733) b!2151499))

(assert (= (and b!2151499 (not res!927736)) b!2151501))

(assert (= (and b!2151501 res!927735) b!2151496))

(assert (= (and b!2151496 res!927738) b!2151498))

(assert (= (and start!208690 condSetEmpty!17251) setIsEmpty!17251))

(assert (= (and start!208690 (not condSetEmpty!17251)) setNonEmpty!17251))

(assert (= setNonEmpty!17251 b!2151490))

(assert (= (and b!2151491 condMapEmpty!13694) mapIsEmpty!13694))

(assert (= (and b!2151491 (not condMapEmpty!13694)) mapNonEmpty!13694))

(assert (= b!2151502 b!2151491))

(assert (= b!2151486 b!2151502))

(assert (= b!2151488 b!2151486))

(assert (= (and b!2151492 ((_ is LongMap!2894) (v!29249 (underlying!5984 (cache!3189 thiss!29110))))) b!2151488))

(assert (= b!2151493 b!2151492))

(assert (= (and b!2151497 ((_ is HashMap!2808) (cache!3189 thiss!29110))) b!2151493))

(assert (= b!2151497 b!2151495))

(assert (= start!208690 b!2151497))

(assert (= start!208690 b!2151489))

(declare-fun m!2593975 () Bool)

(assert (=> b!2151501 m!2593975))

(declare-fun m!2593977 () Bool)

(assert (=> b!2151501 m!2593977))

(declare-fun m!2593979 () Bool)

(assert (=> b!2151501 m!2593979))

(declare-fun m!2593981 () Bool)

(assert (=> b!2151497 m!2593981))

(declare-fun m!2593983 () Bool)

(assert (=> mapNonEmpty!13694 m!2593983))

(declare-fun m!2593985 () Bool)

(assert (=> b!2151502 m!2593985))

(declare-fun m!2593987 () Bool)

(assert (=> b!2151502 m!2593987))

(declare-fun m!2593989 () Bool)

(assert (=> b!2151487 m!2593989))

(declare-fun m!2593991 () Bool)

(assert (=> b!2151494 m!2593991))

(declare-fun m!2593993 () Bool)

(assert (=> setNonEmpty!17251 m!2593993))

(declare-fun m!2593995 () Bool)

(assert (=> b!2151489 m!2593995))

(declare-fun m!2593997 () Bool)

(assert (=> b!2151498 m!2593997))

(assert (=> b!2151498 m!2593997))

(declare-fun m!2593999 () Bool)

(assert (=> b!2151498 m!2593999))

(declare-fun m!2594001 () Bool)

(assert (=> b!2151496 m!2594001))

(declare-fun m!2594003 () Bool)

(assert (=> b!2151499 m!2594003))

(declare-fun m!2594005 () Bool)

(assert (=> b!2151499 m!2594005))

(declare-fun m!2594007 () Bool)

(assert (=> start!208690 m!2594007))

(declare-fun m!2594009 () Bool)

(assert (=> start!208690 m!2594009))

(declare-fun m!2594011 () Bool)

(assert (=> b!2151495 m!2594011))

(check-sat (not b!2151497) (not mapNonEmpty!13694) (not b_next!64269) (not b!2151499) (not setNonEmpty!17251) (not b!2151502) (not b_next!64271) b_and!173179 (not b!2151491) (not b!2151498) (not b!2151489) (not start!208690) (not b!2151490) (not b!2151494) (not b!2151501) (not b!2151496) b_and!173177 (not b!2151487) (not b!2151495))
(check-sat b_and!173177 b_and!173179 (not b_next!64271) (not b_next!64269))
(get-model)

(declare-fun d!645758 () Bool)

(assert (=> d!645758 (= (array_inv!3142 (_keys!3191 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) (bvsge (size!19336 (_keys!3191 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2151502 d!645758))

(declare-fun d!645760 () Bool)

(assert (=> d!645760 (= (array_inv!3143 (_values!3174 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) (bvsge (size!19337 (_values!3174 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2151502 d!645760))

(declare-fun d!645762 () Bool)

(declare-fun res!927751 () Bool)

(declare-fun e!1375974 () Bool)

(assert (=> d!645762 (=> (not res!927751) (not e!1375974))))

(assert (=> d!645762 (= res!927751 (>= (_2!14562 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) 0))))

(assert (=> d!645762 (= (validCacheMapFurthestNullableBody!28 (tuple2!24515 lt!801033 lt!801032) localTotalInput!13) e!1375974)))

(declare-fun b!2151515 () Bool)

(declare-fun res!927752 () Bool)

(assert (=> b!2151515 (=> (not res!927752) (not e!1375974))))

(assert (=> b!2151515 (= res!927752 (<= (_2!14562 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) (size!19338 localTotalInput!13)))))

(declare-fun b!2151516 () Bool)

(declare-fun res!927753 () Bool)

(assert (=> b!2151516 (=> (not res!927753) (not e!1375974))))

(assert (=> b!2151516 (= res!927753 (and (>= (_3!2305 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) (- 1)) (< (_3!2305 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) (_2!14562 (_1!14563 (tuple2!24515 lt!801033 lt!801032))))))))

(declare-fun b!2151517 () Bool)

(declare-fun res!927749 () Bool)

(assert (=> b!2151517 (=> (not res!927749) (not e!1375974))))

(declare-fun e!1375973 () Bool)

(assert (=> b!2151517 (= res!927749 e!1375973)))

(declare-fun res!927750 () Bool)

(assert (=> b!2151517 (=> res!927750 e!1375973)))

(assert (=> b!2151517 (= res!927750 (not (nullableZipper!201 (_1!14562 (_1!14563 (tuple2!24515 lt!801033 lt!801032))))))))

(declare-fun b!2151518 () Bool)

(assert (=> b!2151518 (= e!1375973 (= (_3!2305 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) (- (_2!14562 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) 1)))))

(declare-fun b!2151519 () Bool)

(assert (=> b!2151519 (= e!1375974 (= (_2!14563 (tuple2!24515 lt!801033 lt!801032)) (furthestNullablePosition!110 (_1!14562 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) (_2!14562 (_1!14563 (tuple2!24515 lt!801033 lt!801032))) localTotalInput!13 (size!19338 localTotalInput!13) (_3!2305 (_1!14563 (tuple2!24515 lt!801033 lt!801032))))))))

(assert (= (and d!645762 res!927751) b!2151515))

(assert (= (and b!2151515 res!927752) b!2151516))

(assert (= (and b!2151516 res!927753) b!2151517))

(assert (= (and b!2151517 (not res!927750)) b!2151518))

(assert (= (and b!2151517 res!927749) b!2151519))

(assert (=> b!2151515 m!2594001))

(declare-fun m!2594013 () Bool)

(assert (=> b!2151517 m!2594013))

(assert (=> b!2151519 m!2594001))

(assert (=> b!2151519 m!2594001))

(declare-fun m!2594015 () Bool)

(assert (=> b!2151519 m!2594015))

(assert (=> b!2151501 d!645762))

(declare-fun b!2151532 () Bool)

(declare-fun lt!801097 () Int)

(declare-fun e!1375983 () Bool)

(declare-datatypes ((Option!4996 0))(
  ( (None!4995) (Some!4995 (v!29250 Int)) )
))
(declare-fun get!7518 (Option!4996) Int)

(declare-fun getValueByKey!54 (List!24777 tuple3!3670) Option!4996)

(declare-datatypes ((ListMap!707 0))(
  ( (ListMap!708 (toList!1116 List!24777)) )
))
(declare-fun map!4977 (MutableMap!2808) ListMap!707)

(assert (=> b!2151532 (= e!1375983 (= lt!801097 (get!7518 (getValueByKey!54 (toList!1116 (map!4977 (cache!3189 thiss!29110))) lt!801033))))))

(declare-fun b!2151533 () Bool)

(declare-fun lt!801124 () (_ BitVec 64))

(declare-fun e!1375982 () Int)

(declare-datatypes ((Option!4997 0))(
  ( (None!4996) (Some!4996 (v!29251 tuple2!24514)) )
))
(declare-fun get!7519 (Option!4997) tuple2!24514)

(declare-fun getPair!19 (List!24777 tuple3!3670) Option!4997)

(declare-fun apply!6034 (MutLongMap!2894 (_ BitVec 64)) List!24777)

(assert (=> b!2151533 (= e!1375982 (_2!14563 (get!7519 (getPair!19 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801124) lt!801033))))))

(declare-fun hash!554 (Hashable!2808 tuple3!3670) (_ BitVec 64))

(assert (=> b!2151533 (= lt!801124 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033))))

(declare-fun c!341274 () Bool)

(declare-datatypes ((tuple2!24516 0))(
  ( (tuple2!24517 (_1!14564 (_ BitVec 64)) (_2!14564 List!24777)) )
))
(declare-datatypes ((List!24778 0))(
  ( (Nil!24694) (Cons!24694 (h!30095 tuple2!24516) (t!197326 List!24778)) )
))
(declare-fun contains!4246 (List!24778 tuple2!24516) Bool)

(declare-datatypes ((ListLongMap!263 0))(
  ( (ListLongMap!264 (toList!1117 List!24778)) )
))
(declare-fun map!4978 (MutLongMap!2894) ListLongMap!263)

(assert (=> b!2151533 (= c!341274 (not (contains!4246 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))) (tuple2!24517 lt!801124 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801124)))))))

(declare-fun lt!801117 () Unit!37853)

(declare-fun e!1375981 () Unit!37853)

(assert (=> b!2151533 (= lt!801117 e!1375981)))

(declare-fun lt!801101 () Unit!37853)

(declare-fun lambda!80941 () Int)

(declare-fun forallContained!766 (List!24778 Int tuple2!24516) Unit!37853)

(assert (=> b!2151533 (= lt!801101 (forallContained!766 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))) lambda!80941 (tuple2!24517 lt!801124 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801124))))))

(declare-fun lt!801107 () ListLongMap!263)

(assert (=> b!2151533 (= lt!801107 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110)))))))

(declare-fun lt!801113 () Unit!37853)

(declare-fun lemmaGetPairGetSameValueAsMap!9 (ListLongMap!263 tuple3!3670 Int Hashable!2808) Unit!37853)

(assert (=> b!2151533 (= lt!801113 (lemmaGetPairGetSameValueAsMap!9 lt!801107 lt!801033 (_2!14563 (get!7519 (getPair!19 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801124) lt!801033))) (hashF!4731 (cache!3189 thiss!29110))))))

(declare-fun lt!801108 () Unit!37853)

(declare-fun lemmaInGenMapThenLongMapContainsHash!9 (ListLongMap!263 tuple3!3670 Hashable!2808) Unit!37853)

(assert (=> b!2151533 (= lt!801108 (lemmaInGenMapThenLongMapContainsHash!9 lt!801107 lt!801033 (hashF!4731 (cache!3189 thiss!29110))))))

(declare-fun contains!4247 (ListLongMap!263 (_ BitVec 64)) Bool)

(assert (=> b!2151533 (contains!4247 lt!801107 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033))))

(declare-fun lt!801096 () Unit!37853)

(assert (=> b!2151533 (= lt!801096 lt!801108)))

(declare-fun lt!801106 () (_ BitVec 64))

(assert (=> b!2151533 (= lt!801106 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033))))

(declare-fun lt!801100 () List!24777)

(declare-fun apply!6035 (ListLongMap!263 (_ BitVec 64)) List!24777)

(assert (=> b!2151533 (= lt!801100 (apply!6035 lt!801107 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033)))))

(declare-fun lt!801112 () Unit!37853)

(declare-fun lemmaGetValueImpliesTupleContained!10 (ListLongMap!263 (_ BitVec 64) List!24777) Unit!37853)

(assert (=> b!2151533 (= lt!801112 (lemmaGetValueImpliesTupleContained!10 lt!801107 lt!801106 lt!801100))))

(assert (=> b!2151533 (contains!4246 (toList!1117 lt!801107) (tuple2!24517 lt!801106 lt!801100))))

(declare-fun lt!801109 () Unit!37853)

(assert (=> b!2151533 (= lt!801109 lt!801112)))

(declare-fun lt!801119 () Unit!37853)

(assert (=> b!2151533 (= lt!801119 (forallContained!766 (toList!1117 lt!801107) lambda!80941 (tuple2!24517 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033) (apply!6035 lt!801107 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033)))))))

(declare-fun lt!801122 () Unit!37853)

(declare-fun lemmaInGenMapThenGetPairDefined!9 (ListLongMap!263 tuple3!3670 Hashable!2808) Unit!37853)

(assert (=> b!2151533 (= lt!801122 (lemmaInGenMapThenGetPairDefined!9 lt!801107 lt!801033 (hashF!4731 (cache!3189 thiss!29110))))))

(declare-fun lt!801121 () Unit!37853)

(assert (=> b!2151533 (= lt!801121 (lemmaInGenMapThenLongMapContainsHash!9 lt!801107 lt!801033 (hashF!4731 (cache!3189 thiss!29110))))))

(declare-fun lt!801098 () Unit!37853)

(assert (=> b!2151533 (= lt!801098 lt!801121)))

(declare-fun lt!801116 () (_ BitVec 64))

(assert (=> b!2151533 (= lt!801116 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033))))

(declare-fun lt!801115 () List!24777)

(assert (=> b!2151533 (= lt!801115 (apply!6035 lt!801107 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033)))))

(declare-fun lt!801102 () Unit!37853)

(assert (=> b!2151533 (= lt!801102 (lemmaGetValueImpliesTupleContained!10 lt!801107 lt!801116 lt!801115))))

(assert (=> b!2151533 (contains!4246 (toList!1117 lt!801107) (tuple2!24517 lt!801116 lt!801115))))

(declare-fun lt!801103 () Unit!37853)

(assert (=> b!2151533 (= lt!801103 lt!801102)))

(declare-fun lt!801125 () Unit!37853)

(assert (=> b!2151533 (= lt!801125 (forallContained!766 (toList!1117 lt!801107) lambda!80941 (tuple2!24517 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033) (apply!6035 lt!801107 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033)))))))

(declare-fun isDefined!4104 (Option!4997) Bool)

(assert (=> b!2151533 (isDefined!4104 (getPair!19 (apply!6035 lt!801107 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033)) lt!801033))))

(declare-fun lt!801105 () Unit!37853)

(assert (=> b!2151533 (= lt!801105 lt!801122)))

(declare-fun extractMap!82 (List!24778) ListMap!707)

(assert (=> b!2151533 (= (_2!14563 (get!7519 (getPair!19 (apply!6035 lt!801107 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033)) lt!801033))) (get!7518 (getValueByKey!54 (toList!1116 (extractMap!82 (toList!1117 lt!801107))) lt!801033)))))

(declare-fun lt!801123 () Unit!37853)

(assert (=> b!2151533 (= lt!801123 lt!801113)))

(declare-fun b!2151534 () Bool)

(declare-fun dynLambda!11395 (Int tuple3!3670) Int)

(assert (=> b!2151534 (= e!1375983 (= lt!801097 (dynLambda!11395 (defaultValue!2970 (cache!3189 thiss!29110)) lt!801033)))))

(declare-fun d!645764 () Bool)

(assert (=> d!645764 e!1375983))

(declare-fun c!341273 () Bool)

(assert (=> d!645764 (= c!341273 (contains!4245 (cache!3189 thiss!29110) lt!801033))))

(assert (=> d!645764 (= lt!801097 e!1375982)))

(declare-fun c!341272 () Bool)

(assert (=> d!645764 (= c!341272 (not (contains!4245 (cache!3189 thiss!29110) lt!801033)))))

(declare-fun valid!2232 (MutableMap!2808) Bool)

(assert (=> d!645764 (valid!2232 (cache!3189 thiss!29110))))

(assert (=> d!645764 (= (apply!6033 (cache!3189 thiss!29110) lt!801033) lt!801097)))

(declare-fun b!2151535 () Bool)

(assert (=> b!2151535 (= e!1375982 (dynLambda!11395 (defaultValue!2970 (cache!3189 thiss!29110)) lt!801033))))

(declare-fun b!2151536 () Bool)

(declare-fun Unit!37855 () Unit!37853)

(assert (=> b!2151536 (= e!1375981 Unit!37855)))

(declare-fun b!2151537 () Bool)

(assert (=> b!2151537 false))

(declare-fun lt!801110 () Unit!37853)

(declare-fun lt!801120 () Unit!37853)

(assert (=> b!2151537 (= lt!801110 lt!801120)))

(declare-fun lt!801099 () List!24778)

(declare-fun lt!801111 () List!24777)

(assert (=> b!2151537 (contains!4246 lt!801099 (tuple2!24517 lt!801124 lt!801111))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!20 (List!24778 (_ BitVec 64) List!24777) Unit!37853)

(assert (=> b!2151537 (= lt!801120 (lemmaGetValueByKeyImpliesContainsTuple!20 lt!801099 lt!801124 lt!801111))))

(assert (=> b!2151537 (= lt!801111 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801124))))

(assert (=> b!2151537 (= lt!801099 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))

(declare-fun lt!801104 () Unit!37853)

(declare-fun lt!801114 () Unit!37853)

(assert (=> b!2151537 (= lt!801104 lt!801114)))

(declare-fun lt!801118 () List!24778)

(declare-datatypes ((Option!4998 0))(
  ( (None!4997) (Some!4997 (v!29252 List!24777)) )
))
(declare-fun isDefined!4105 (Option!4998) Bool)

(declare-fun getValueByKey!55 (List!24778 (_ BitVec 64)) Option!4998)

(assert (=> b!2151537 (isDefined!4105 (getValueByKey!55 lt!801118 lt!801124))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!36 (List!24778 (_ BitVec 64)) Unit!37853)

(assert (=> b!2151537 (= lt!801114 (lemmaContainsKeyImpliesGetValueByKeyDefined!36 lt!801118 lt!801124))))

(assert (=> b!2151537 (= lt!801118 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))

(declare-fun Unit!37856 () Unit!37853)

(assert (=> b!2151537 (= e!1375981 Unit!37856)))

(assert (= (and d!645764 c!341272) b!2151535))

(assert (= (and d!645764 (not c!341272)) b!2151533))

(assert (= (and b!2151533 c!341274) b!2151537))

(assert (= (and b!2151533 (not c!341274)) b!2151536))

(assert (= (and d!645764 c!341273) b!2151532))

(assert (= (and d!645764 (not c!341273)) b!2151534))

(declare-fun b_lambda!70821 () Bool)

(assert (=> (not b_lambda!70821) (not b!2151534)))

(declare-fun t!197325 () Bool)

(declare-fun tb!132299 () Bool)

(assert (=> (and b!2151493 (= (defaultValue!2970 (cache!3189 thiss!29110)) (defaultValue!2970 (cache!3189 thiss!29110))) t!197325) tb!132299))

(declare-fun result!159352 () Bool)

(assert (=> tb!132299 (= result!159352 true)))

(assert (=> b!2151534 t!197325))

(declare-fun b_and!173181 () Bool)

(assert (= b_and!173177 (and (=> t!197325 result!159352) b_and!173181)))

(declare-fun b_lambda!70823 () Bool)

(assert (=> (not b_lambda!70823) (not b!2151535)))

(assert (=> b!2151535 t!197325))

(declare-fun b_and!173183 () Bool)

(assert (= b_and!173181 (and (=> t!197325 result!159352) b_and!173183)))

(declare-fun m!2594017 () Bool)

(assert (=> b!2151537 m!2594017))

(assert (=> b!2151537 m!2594017))

(declare-fun m!2594019 () Bool)

(assert (=> b!2151537 m!2594019))

(declare-fun m!2594021 () Bool)

(assert (=> b!2151537 m!2594021))

(declare-fun m!2594023 () Bool)

(assert (=> b!2151537 m!2594023))

(declare-fun m!2594025 () Bool)

(assert (=> b!2151537 m!2594025))

(declare-fun m!2594027 () Bool)

(assert (=> b!2151537 m!2594027))

(declare-fun m!2594029 () Bool)

(assert (=> b!2151537 m!2594029))

(assert (=> b!2151533 m!2594025))

(declare-fun m!2594031 () Bool)

(assert (=> b!2151533 m!2594031))

(declare-fun m!2594033 () Bool)

(assert (=> b!2151533 m!2594033))

(declare-fun m!2594035 () Bool)

(assert (=> b!2151533 m!2594035))

(declare-fun m!2594037 () Bool)

(assert (=> b!2151533 m!2594037))

(declare-fun m!2594039 () Bool)

(assert (=> b!2151533 m!2594039))

(declare-fun m!2594041 () Bool)

(assert (=> b!2151533 m!2594041))

(declare-fun m!2594043 () Bool)

(assert (=> b!2151533 m!2594043))

(declare-fun m!2594045 () Bool)

(assert (=> b!2151533 m!2594045))

(declare-fun m!2594047 () Bool)

(assert (=> b!2151533 m!2594047))

(declare-fun m!2594049 () Bool)

(assert (=> b!2151533 m!2594049))

(declare-fun m!2594051 () Bool)

(assert (=> b!2151533 m!2594051))

(declare-fun m!2594053 () Bool)

(assert (=> b!2151533 m!2594053))

(assert (=> b!2151533 m!2594031))

(declare-fun m!2594055 () Bool)

(assert (=> b!2151533 m!2594055))

(declare-fun m!2594057 () Bool)

(assert (=> b!2151533 m!2594057))

(assert (=> b!2151533 m!2594041))

(assert (=> b!2151533 m!2594037))

(declare-fun m!2594059 () Bool)

(assert (=> b!2151533 m!2594059))

(assert (=> b!2151533 m!2594035))

(assert (=> b!2151533 m!2594037))

(assert (=> b!2151533 m!2594057))

(declare-fun m!2594061 () Bool)

(assert (=> b!2151533 m!2594061))

(declare-fun m!2594063 () Bool)

(assert (=> b!2151533 m!2594063))

(assert (=> b!2151533 m!2594045))

(declare-fun m!2594065 () Bool)

(assert (=> b!2151533 m!2594065))

(assert (=> b!2151533 m!2594025))

(assert (=> b!2151533 m!2594041))

(declare-fun m!2594067 () Bool)

(assert (=> b!2151533 m!2594067))

(declare-fun m!2594069 () Bool)

(assert (=> b!2151533 m!2594069))

(assert (=> b!2151533 m!2594029))

(declare-fun m!2594071 () Bool)

(assert (=> b!2151533 m!2594071))

(assert (=> d!645764 m!2594003))

(declare-fun m!2594073 () Bool)

(assert (=> d!645764 m!2594073))

(declare-fun m!2594075 () Bool)

(assert (=> b!2151532 m!2594075))

(declare-fun m!2594077 () Bool)

(assert (=> b!2151532 m!2594077))

(assert (=> b!2151532 m!2594077))

(declare-fun m!2594079 () Bool)

(assert (=> b!2151532 m!2594079))

(declare-fun m!2594081 () Bool)

(assert (=> b!2151534 m!2594081))

(assert (=> b!2151535 m!2594081))

(assert (=> b!2151501 d!645764))

(declare-fun d!645766 () Bool)

(declare-fun dynLambda!11396 (Int tuple2!24514) Bool)

(assert (=> d!645766 (dynLambda!11396 lambda!80934 (tuple2!24515 lt!801033 (apply!6033 (cache!3189 thiss!29110) lt!801033)))))

(declare-fun lt!801128 () Unit!37853)

(declare-fun choose!12705 (MutableMap!2808 tuple3!3670 Int) Unit!37853)

(assert (=> d!645766 (= lt!801128 (choose!12705 (cache!3189 thiss!29110) lt!801033 lambda!80934))))

(assert (=> d!645766 (valid!2232 (cache!3189 thiss!29110))))

(assert (=> d!645766 (= (lemmaForallPairsThenForLookup!11 (cache!3189 thiss!29110) lt!801033 lambda!80934) lt!801128)))

(declare-fun b_lambda!70825 () Bool)

(assert (=> (not b_lambda!70825) (not d!645766)))

(declare-fun bs!445625 () Bool)

(assert (= bs!445625 d!645766))

(assert (=> bs!445625 m!2593977))

(declare-fun m!2594083 () Bool)

(assert (=> bs!445625 m!2594083))

(declare-fun m!2594085 () Bool)

(assert (=> bs!445625 m!2594085))

(assert (=> bs!445625 m!2594073))

(assert (=> b!2151501 d!645766))

(declare-fun d!645768 () Bool)

(declare-fun res!927756 () Bool)

(declare-fun e!1375986 () Bool)

(assert (=> d!645768 (=> (not res!927756) (not e!1375986))))

(assert (=> d!645768 (= res!927756 ((_ is HashMap!2808) (cache!3189 thiss!29110)))))

(assert (=> d!645768 (= (inv!32544 thiss!29110) e!1375986)))

(declare-fun b!2151540 () Bool)

(assert (=> b!2151540 (= e!1375986 (validCacheMapFurthestNullable!158 (cache!3189 thiss!29110) (totalInput!3267 thiss!29110)))))

(assert (= (and d!645768 res!927756) b!2151540))

(assert (=> b!2151540 m!2593989))

(assert (=> start!208690 d!645768))

(declare-fun d!645770 () Bool)

(declare-fun isBalanced!2482 (Conc!8005) Bool)

(assert (=> d!645770 (= (inv!32545 localTotalInput!13) (isBalanced!2482 (c!341265 localTotalInput!13)))))

(declare-fun bs!445626 () Bool)

(assert (= bs!445626 d!645770))

(declare-fun m!2594087 () Bool)

(assert (=> bs!445626 m!2594087))

(assert (=> start!208690 d!645770))

(declare-fun b!2151551 () Bool)

(declare-fun e!1375995 () Int)

(declare-fun e!1375994 () Int)

(declare-fun lt!801134 () (InoxSet Context!2878))

(assert (=> b!2151551 (= e!1375994 (furthestNullablePosition!110 lt!801134 (+ from!952 1) (totalInput!3267 thiss!29110) (size!19338 (totalInput!3267 thiss!29110)) e!1375995))))

(declare-fun derivationStepZipper!104 ((InoxSet Context!2878) C!11884) (InoxSet Context!2878))

(declare-fun apply!6036 (BalanceConc!15772 Int) C!11884)

(assert (=> b!2151551 (= lt!801134 (derivationStepZipper!104 z!514 (apply!6036 (totalInput!3267 thiss!29110) from!952)))))

(declare-fun c!341280 () Bool)

(assert (=> b!2151551 (= c!341280 (nullableZipper!201 lt!801134))))

(declare-fun b!2151552 () Bool)

(assert (=> b!2151552 (= e!1375995 from!952)))

(declare-fun b!2151553 () Bool)

(assert (=> b!2151553 (= e!1375995 lastNullablePos!91)))

(declare-fun b!2151554 () Bool)

(declare-fun e!1375993 () Bool)

(declare-fun lostCauseZipper!137 ((InoxSet Context!2878)) Bool)

(assert (=> b!2151554 (= e!1375993 (lostCauseZipper!137 z!514))))

(declare-fun lt!801133 () Int)

(declare-fun d!645772 () Bool)

(assert (=> d!645772 (and (>= lt!801133 (- 1)) (< lt!801133 (size!19338 (totalInput!3267 thiss!29110))) (>= lt!801133 lastNullablePos!91) (or (= lt!801133 lastNullablePos!91) (>= lt!801133 from!952)))))

(assert (=> d!645772 (= lt!801133 e!1375994)))

(declare-fun c!341279 () Bool)

(assert (=> d!645772 (= c!341279 e!1375993)))

(declare-fun res!927759 () Bool)

(assert (=> d!645772 (=> res!927759 e!1375993)))

(assert (=> d!645772 (= res!927759 (= from!952 (size!19338 (totalInput!3267 thiss!29110))))))

(assert (=> d!645772 (and (>= from!952 0) (<= from!952 (size!19338 (totalInput!3267 thiss!29110))))))

(assert (=> d!645772 (= (furthestNullablePosition!110 z!514 from!952 (totalInput!3267 thiss!29110) (size!19338 (totalInput!3267 thiss!29110)) lastNullablePos!91) lt!801133)))

(declare-fun b!2151555 () Bool)

(assert (=> b!2151555 (= e!1375994 lastNullablePos!91)))

(assert (= (and d!645772 (not res!927759)) b!2151554))

(assert (= (and d!645772 c!341279) b!2151555))

(assert (= (and d!645772 (not c!341279)) b!2151551))

(assert (= (and b!2151551 c!341280) b!2151552))

(assert (= (and b!2151551 (not c!341280)) b!2151553))

(assert (=> b!2151551 m!2593997))

(declare-fun m!2594089 () Bool)

(assert (=> b!2151551 m!2594089))

(declare-fun m!2594091 () Bool)

(assert (=> b!2151551 m!2594091))

(assert (=> b!2151551 m!2594091))

(declare-fun m!2594093 () Bool)

(assert (=> b!2151551 m!2594093))

(declare-fun m!2594095 () Bool)

(assert (=> b!2151551 m!2594095))

(declare-fun m!2594097 () Bool)

(assert (=> b!2151554 m!2594097))

(assert (=> b!2151498 d!645772))

(declare-fun d!645774 () Bool)

(declare-fun lt!801137 () Int)

(declare-fun size!19339 (List!24775) Int)

(declare-fun list!9561 (BalanceConc!15772) List!24775)

(assert (=> d!645774 (= lt!801137 (size!19339 (list!9561 (totalInput!3267 thiss!29110))))))

(declare-fun size!19340 (Conc!8005) Int)

(assert (=> d!645774 (= lt!801137 (size!19340 (c!341265 (totalInput!3267 thiss!29110))))))

(assert (=> d!645774 (= (size!19338 (totalInput!3267 thiss!29110)) lt!801137)))

(declare-fun bs!445627 () Bool)

(assert (= bs!445627 d!645774))

(declare-fun m!2594099 () Bool)

(assert (=> bs!445627 m!2594099))

(assert (=> bs!445627 m!2594099))

(declare-fun m!2594101 () Bool)

(assert (=> bs!445627 m!2594101))

(declare-fun m!2594103 () Bool)

(assert (=> bs!445627 m!2594103))

(assert (=> b!2151498 d!645774))

(declare-fun bs!445628 () Bool)

(declare-fun b!2151580 () Bool)

(assert (= bs!445628 (and b!2151580 b!2151533)))

(declare-fun lambda!80944 () Int)

(assert (=> bs!445628 (= lambda!80944 lambda!80941)))

(declare-fun b!2151578 () Bool)

(declare-fun e!1376013 () Bool)

(declare-fun call!129090 () Bool)

(assert (=> b!2151578 (= e!1376013 call!129090)))

(declare-fun b!2151579 () Bool)

(declare-fun e!1376012 () Unit!37853)

(declare-fun e!1376016 () Unit!37853)

(assert (=> b!2151579 (= e!1376012 e!1376016)))

(declare-fun res!927767 () Bool)

(declare-fun call!129089 () Bool)

(assert (=> b!2151579 (= res!927767 call!129089)))

(assert (=> b!2151579 (=> (not res!927767) (not e!1376013))))

(declare-fun c!341290 () Bool)

(assert (=> b!2151579 (= c!341290 e!1376013)))

(declare-fun lt!801194 () (_ BitVec 64))

(declare-fun e!1376015 () Unit!37853)

(assert (=> b!2151580 (= e!1376015 (forallContained!766 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))) lambda!80944 (tuple2!24517 lt!801194 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801194))))))

(declare-fun c!341289 () Bool)

(assert (=> b!2151580 (= c!341289 (not (contains!4246 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))) (tuple2!24517 lt!801194 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801194)))))))

(declare-fun lt!801196 () Unit!37853)

(declare-fun e!1376010 () Unit!37853)

(assert (=> b!2151580 (= lt!801196 e!1376010)))

(declare-fun b!2151581 () Bool)

(declare-fun Unit!37857 () Unit!37853)

(assert (=> b!2151581 (= e!1376015 Unit!37857)))

(declare-fun bm!129082 () Bool)

(declare-fun call!129092 () ListLongMap!263)

(assert (=> bm!129082 (= call!129092 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110)))))))

(declare-fun bm!129083 () Bool)

(declare-fun call!129088 () (_ BitVec 64))

(assert (=> bm!129083 (= call!129088 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033))))

(declare-fun e!1376011 () Bool)

(declare-fun b!2151582 () Bool)

(assert (=> b!2151582 (= e!1376011 (isDefined!4104 (getPair!19 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801194) lt!801033)))))

(declare-fun b!2151583 () Bool)

(declare-fun lt!801192 () Unit!37853)

(assert (=> b!2151583 (= e!1376012 lt!801192)))

(declare-fun lt!801181 () ListLongMap!263)

(assert (=> b!2151583 (= lt!801181 call!129092)))

(declare-fun lemmaInGenericMapThenInLongMap!19 (ListLongMap!263 tuple3!3670 Hashable!2808) Unit!37853)

(assert (=> b!2151583 (= lt!801192 (lemmaInGenericMapThenInLongMap!19 lt!801181 lt!801033 (hashF!4731 (cache!3189 thiss!29110))))))

(declare-fun res!927768 () Bool)

(assert (=> b!2151583 (= res!927768 call!129089)))

(declare-fun e!1376014 () Bool)

(assert (=> b!2151583 (=> (not res!927768) (not e!1376014))))

(assert (=> b!2151583 e!1376014))

(declare-fun b!2151584 () Bool)

(assert (=> b!2151584 false))

(declare-fun lt!801190 () Unit!37853)

(declare-fun lt!801187 () Unit!37853)

(assert (=> b!2151584 (= lt!801190 lt!801187)))

(declare-fun lt!801189 () ListLongMap!263)

(declare-fun contains!4248 (ListMap!707 tuple3!3670) Bool)

(assert (=> b!2151584 (contains!4248 (extractMap!82 (toList!1117 lt!801189)) lt!801033)))

(declare-fun lemmaInLongMapThenInGenericMap!19 (ListLongMap!263 tuple3!3670 Hashable!2808) Unit!37853)

(assert (=> b!2151584 (= lt!801187 (lemmaInLongMapThenInGenericMap!19 lt!801189 lt!801033 (hashF!4731 (cache!3189 thiss!29110))))))

(assert (=> b!2151584 (= lt!801189 call!129092)))

(declare-fun Unit!37858 () Unit!37853)

(assert (=> b!2151584 (= e!1376016 Unit!37858)))

(declare-fun b!2151585 () Bool)

(assert (=> b!2151585 false))

(declare-fun lt!801195 () Unit!37853)

(declare-fun lt!801191 () Unit!37853)

(assert (=> b!2151585 (= lt!801195 lt!801191)))

(declare-fun lt!801179 () List!24778)

(declare-fun lt!801185 () List!24777)

(assert (=> b!2151585 (contains!4246 lt!801179 (tuple2!24517 lt!801194 lt!801185))))

(assert (=> b!2151585 (= lt!801191 (lemmaGetValueByKeyImpliesContainsTuple!20 lt!801179 lt!801194 lt!801185))))

(assert (=> b!2151585 (= lt!801185 (apply!6034 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801194))))

(assert (=> b!2151585 (= lt!801179 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))

(declare-fun lt!801182 () Unit!37853)

(declare-fun lt!801197 () Unit!37853)

(assert (=> b!2151585 (= lt!801182 lt!801197)))

(declare-fun lt!801178 () List!24778)

(assert (=> b!2151585 (isDefined!4105 (getValueByKey!55 lt!801178 lt!801194))))

(assert (=> b!2151585 (= lt!801197 (lemmaContainsKeyImpliesGetValueByKeyDefined!36 lt!801178 lt!801194))))

(assert (=> b!2151585 (= lt!801178 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))

(declare-fun lt!801183 () Unit!37853)

(declare-fun lt!801186 () Unit!37853)

(assert (=> b!2151585 (= lt!801183 lt!801186)))

(declare-fun lt!801188 () List!24778)

(declare-fun containsKey!55 (List!24778 (_ BitVec 64)) Bool)

(assert (=> b!2151585 (containsKey!55 lt!801188 lt!801194)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!20 (List!24778 (_ BitVec 64)) Unit!37853)

(assert (=> b!2151585 (= lt!801186 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!20 lt!801188 lt!801194))))

(assert (=> b!2151585 (= lt!801188 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))

(declare-fun Unit!37859 () Unit!37853)

(assert (=> b!2151585 (= e!1376010 Unit!37859)))

(declare-fun bm!129084 () Bool)

(declare-fun call!129087 () Option!4997)

(assert (=> bm!129084 (= call!129090 (isDefined!4104 call!129087))))

(declare-fun call!129091 () List!24777)

(declare-fun bm!129085 () Bool)

(declare-fun c!341291 () Bool)

(assert (=> bm!129085 (= call!129091 (apply!6035 (ite c!341291 lt!801181 call!129092) call!129088))))

(declare-fun d!645776 () Bool)

(declare-fun lt!801180 () Bool)

(assert (=> d!645776 (= lt!801180 (contains!4248 (map!4977 (cache!3189 thiss!29110)) lt!801033))))

(assert (=> d!645776 (= lt!801180 e!1376011)))

(declare-fun res!927766 () Bool)

(assert (=> d!645776 (=> (not res!927766) (not e!1376011))))

(declare-fun contains!4249 (MutLongMap!2894 (_ BitVec 64)) Bool)

(assert (=> d!645776 (= res!927766 (contains!4249 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801194))))

(declare-fun lt!801193 () Unit!37853)

(assert (=> d!645776 (= lt!801193 e!1376012)))

(assert (=> d!645776 (= c!341291 (contains!4248 (extractMap!82 (toList!1117 (map!4978 (v!29249 (underlying!5984 (cache!3189 thiss!29110)))))) lt!801033))))

(declare-fun lt!801184 () Unit!37853)

(assert (=> d!645776 (= lt!801184 e!1376015)))

(declare-fun c!341292 () Bool)

(assert (=> d!645776 (= c!341292 (contains!4249 (v!29249 (underlying!5984 (cache!3189 thiss!29110))) lt!801194))))

(assert (=> d!645776 (= lt!801194 (hash!554 (hashF!4731 (cache!3189 thiss!29110)) lt!801033))))

(assert (=> d!645776 (valid!2232 (cache!3189 thiss!29110))))

(assert (=> d!645776 (= (contains!4245 (cache!3189 thiss!29110) lt!801033) lt!801180)))

(declare-fun bm!129086 () Bool)

(assert (=> bm!129086 (= call!129087 (getPair!19 call!129091 lt!801033))))

(declare-fun b!2151586 () Bool)

(assert (=> b!2151586 (= e!1376014 call!129090)))

(declare-fun bm!129087 () Bool)

(assert (=> bm!129087 (= call!129089 (contains!4247 (ite c!341291 lt!801181 call!129092) call!129088))))

(declare-fun b!2151587 () Bool)

(declare-fun Unit!37860 () Unit!37853)

(assert (=> b!2151587 (= e!1376010 Unit!37860)))

(declare-fun b!2151588 () Bool)

(declare-fun Unit!37861 () Unit!37853)

(assert (=> b!2151588 (= e!1376016 Unit!37861)))

(assert (= (and d!645776 c!341292) b!2151580))

(assert (= (and d!645776 (not c!341292)) b!2151581))

(assert (= (and b!2151580 c!341289) b!2151585))

(assert (= (and b!2151580 (not c!341289)) b!2151587))

(assert (= (and d!645776 c!341291) b!2151583))

(assert (= (and d!645776 (not c!341291)) b!2151579))

(assert (= (and b!2151583 res!927768) b!2151586))

(assert (= (and b!2151579 res!927767) b!2151578))

(assert (= (and b!2151579 c!341290) b!2151584))

(assert (= (and b!2151579 (not c!341290)) b!2151588))

(assert (= (or b!2151583 b!2151586 b!2151579 b!2151578) bm!129083))

(assert (= (or b!2151583 b!2151579 b!2151578 b!2151584) bm!129082))

(assert (= (or b!2151583 b!2151579) bm!129087))

(assert (= (or b!2151586 b!2151578) bm!129085))

(assert (= (or b!2151586 b!2151578) bm!129086))

(assert (= (or b!2151586 b!2151578) bm!129084))

(assert (= (and d!645776 res!927766) b!2151582))

(declare-fun m!2594105 () Bool)

(assert (=> bm!129084 m!2594105))

(declare-fun m!2594107 () Bool)

(assert (=> b!2151582 m!2594107))

(assert (=> b!2151582 m!2594107))

(declare-fun m!2594109 () Bool)

(assert (=> b!2151582 m!2594109))

(assert (=> b!2151582 m!2594109))

(declare-fun m!2594111 () Bool)

(assert (=> b!2151582 m!2594111))

(declare-fun m!2594113 () Bool)

(assert (=> bm!129086 m!2594113))

(assert (=> b!2151585 m!2594029))

(declare-fun m!2594115 () Bool)

(assert (=> b!2151585 m!2594115))

(declare-fun m!2594117 () Bool)

(assert (=> b!2151585 m!2594117))

(declare-fun m!2594119 () Bool)

(assert (=> b!2151585 m!2594119))

(declare-fun m!2594121 () Bool)

(assert (=> b!2151585 m!2594121))

(declare-fun m!2594123 () Bool)

(assert (=> b!2151585 m!2594123))

(assert (=> b!2151585 m!2594115))

(declare-fun m!2594125 () Bool)

(assert (=> b!2151585 m!2594125))

(assert (=> b!2151585 m!2594107))

(declare-fun m!2594127 () Bool)

(assert (=> b!2151585 m!2594127))

(declare-fun m!2594129 () Bool)

(assert (=> b!2151583 m!2594129))

(declare-fun m!2594131 () Bool)

(assert (=> b!2151584 m!2594131))

(assert (=> b!2151584 m!2594131))

(declare-fun m!2594133 () Bool)

(assert (=> b!2151584 m!2594133))

(declare-fun m!2594135 () Bool)

(assert (=> b!2151584 m!2594135))

(assert (=> d!645776 m!2594029))

(assert (=> d!645776 m!2594075))

(assert (=> d!645776 m!2594073))

(declare-fun m!2594137 () Bool)

(assert (=> d!645776 m!2594137))

(declare-fun m!2594139 () Bool)

(assert (=> d!645776 m!2594139))

(assert (=> d!645776 m!2594037))

(assert (=> d!645776 m!2594137))

(declare-fun m!2594141 () Bool)

(assert (=> d!645776 m!2594141))

(assert (=> d!645776 m!2594075))

(declare-fun m!2594143 () Bool)

(assert (=> d!645776 m!2594143))

(declare-fun m!2594145 () Bool)

(assert (=> bm!129085 m!2594145))

(assert (=> b!2151580 m!2594029))

(assert (=> b!2151580 m!2594107))

(declare-fun m!2594147 () Bool)

(assert (=> b!2151580 m!2594147))

(declare-fun m!2594149 () Bool)

(assert (=> b!2151580 m!2594149))

(declare-fun m!2594151 () Bool)

(assert (=> bm!129087 m!2594151))

(assert (=> bm!129082 m!2594029))

(assert (=> bm!129083 m!2594037))

(assert (=> b!2151499 d!645776))

(declare-fun bs!445629 () Bool)

(declare-fun b!2151594 () Bool)

(assert (= bs!445629 (and b!2151594 b!2151501)))

(declare-fun lambda!80947 () Int)

(assert (=> bs!445629 (= lambda!80947 lambda!80934)))

(assert (=> b!2151594 true))

(declare-fun d!645778 () Bool)

(declare-fun res!927773 () Bool)

(declare-fun e!1376019 () Bool)

(assert (=> d!645778 (=> (not res!927773) (not e!1376019))))

(assert (=> d!645778 (= res!927773 (valid!2232 (cache!3189 thiss!29110)))))

(assert (=> d!645778 (= (validCacheMapFurthestNullable!158 (cache!3189 thiss!29110) localTotalInput!13) e!1376019)))

(declare-fun b!2151593 () Bool)

(declare-fun res!927774 () Bool)

(assert (=> b!2151593 (=> (not res!927774) (not e!1376019))))

(declare-fun invariantList!327 (List!24777) Bool)

(assert (=> b!2151593 (= res!927774 (invariantList!327 (toList!1116 (map!4977 (cache!3189 thiss!29110)))))))

(declare-fun forall!5040 (List!24777 Int) Bool)

(assert (=> b!2151594 (= e!1376019 (forall!5040 (toList!1116 (map!4977 (cache!3189 thiss!29110))) lambda!80947))))

(assert (= (and d!645778 res!927773) b!2151593))

(assert (= (and b!2151593 res!927774) b!2151594))

(assert (=> d!645778 m!2594073))

(assert (=> b!2151593 m!2594075))

(declare-fun m!2594154 () Bool)

(assert (=> b!2151593 m!2594154))

(assert (=> b!2151594 m!2594075))

(declare-fun m!2594156 () Bool)

(assert (=> b!2151594 m!2594156))

(assert (=> b!2151499 d!645778))

(declare-fun d!645780 () Bool)

(assert (=> d!645780 (= (inv!32545 (totalInput!3267 thiss!29110)) (isBalanced!2482 (c!341265 (totalInput!3267 thiss!29110))))))

(declare-fun bs!445630 () Bool)

(assert (= bs!445630 d!645780))

(declare-fun m!2594158 () Bool)

(assert (=> bs!445630 m!2594158))

(assert (=> b!2151497 d!645780))

(declare-fun d!645782 () Bool)

(declare-fun lambda!80950 () Int)

(declare-fun forall!5041 (List!24776 Int) Bool)

(assert (=> d!645782 (= (inv!32543 setElem!17251) (forall!5041 (exprs!1939 setElem!17251) lambda!80950))))

(declare-fun bs!445631 () Bool)

(assert (= bs!445631 d!645782))

(declare-fun m!2594160 () Bool)

(assert (=> bs!445631 m!2594160))

(assert (=> setNonEmpty!17251 d!645782))

(declare-fun d!645784 () Bool)

(declare-fun c!341295 () Bool)

(assert (=> d!645784 (= c!341295 ((_ is Node!8005) (c!341265 localTotalInput!13)))))

(declare-fun e!1376024 () Bool)

(assert (=> d!645784 (= (inv!32542 (c!341265 localTotalInput!13)) e!1376024)))

(declare-fun b!2151601 () Bool)

(declare-fun inv!32546 (Conc!8005) Bool)

(assert (=> b!2151601 (= e!1376024 (inv!32546 (c!341265 localTotalInput!13)))))

(declare-fun b!2151602 () Bool)

(declare-fun e!1376025 () Bool)

(assert (=> b!2151602 (= e!1376024 e!1376025)))

(declare-fun res!927777 () Bool)

(assert (=> b!2151602 (= res!927777 (not ((_ is Leaf!11707) (c!341265 localTotalInput!13))))))

(assert (=> b!2151602 (=> res!927777 e!1376025)))

(declare-fun b!2151603 () Bool)

(declare-fun inv!32547 (Conc!8005) Bool)

(assert (=> b!2151603 (= e!1376025 (inv!32547 (c!341265 localTotalInput!13)))))

(assert (= (and d!645784 c!341295) b!2151601))

(assert (= (and d!645784 (not c!341295)) b!2151602))

(assert (= (and b!2151602 (not res!927777)) b!2151603))

(declare-fun m!2594162 () Bool)

(assert (=> b!2151601 m!2594162))

(declare-fun m!2594164 () Bool)

(assert (=> b!2151603 m!2594164))

(assert (=> b!2151489 d!645784))

(declare-fun d!645786 () Bool)

(declare-fun lt!801198 () Int)

(assert (=> d!645786 (= lt!801198 (size!19339 (list!9561 localTotalInput!13)))))

(assert (=> d!645786 (= lt!801198 (size!19340 (c!341265 localTotalInput!13)))))

(assert (=> d!645786 (= (size!19338 localTotalInput!13) lt!801198)))

(declare-fun bs!445632 () Bool)

(assert (= bs!445632 d!645786))

(declare-fun m!2594166 () Bool)

(assert (=> bs!445632 m!2594166))

(assert (=> bs!445632 m!2594166))

(declare-fun m!2594168 () Bool)

(assert (=> bs!445632 m!2594168))

(declare-fun m!2594170 () Bool)

(assert (=> bs!445632 m!2594170))

(assert (=> b!2151496 d!645786))

(declare-fun d!645788 () Bool)

(declare-fun lambda!80953 () Int)

(declare-fun exists!736 ((InoxSet Context!2878) Int) Bool)

(assert (=> d!645788 (= (nullableZipper!201 z!514) (exists!736 z!514 lambda!80953))))

(declare-fun bs!445633 () Bool)

(assert (= bs!445633 d!645788))

(declare-fun m!2594172 () Bool)

(assert (=> bs!445633 m!2594172))

(assert (=> b!2151494 d!645788))

(declare-fun d!645790 () Bool)

(declare-fun c!341298 () Bool)

(assert (=> d!645790 (= c!341298 ((_ is Node!8005) (c!341265 (totalInput!3267 thiss!29110))))))

(declare-fun e!1376026 () Bool)

(assert (=> d!645790 (= (inv!32542 (c!341265 (totalInput!3267 thiss!29110))) e!1376026)))

(declare-fun b!2151604 () Bool)

(assert (=> b!2151604 (= e!1376026 (inv!32546 (c!341265 (totalInput!3267 thiss!29110))))))

(declare-fun b!2151605 () Bool)

(declare-fun e!1376027 () Bool)

(assert (=> b!2151605 (= e!1376026 e!1376027)))

(declare-fun res!927778 () Bool)

(assert (=> b!2151605 (= res!927778 (not ((_ is Leaf!11707) (c!341265 (totalInput!3267 thiss!29110)))))))

(assert (=> b!2151605 (=> res!927778 e!1376027)))

(declare-fun b!2151606 () Bool)

(assert (=> b!2151606 (= e!1376027 (inv!32547 (c!341265 (totalInput!3267 thiss!29110))))))

(assert (= (and d!645790 c!341298) b!2151604))

(assert (= (and d!645790 (not c!341298)) b!2151605))

(assert (= (and b!2151605 (not res!927778)) b!2151606))

(declare-fun m!2594174 () Bool)

(assert (=> b!2151604 m!2594174))

(declare-fun m!2594176 () Bool)

(assert (=> b!2151606 m!2594176))

(assert (=> b!2151495 d!645790))

(declare-fun bs!445634 () Bool)

(declare-fun b!2151608 () Bool)

(assert (= bs!445634 (and b!2151608 b!2151501)))

(declare-fun lambda!80954 () Int)

(assert (=> bs!445634 (= (= (totalInput!3267 thiss!29110) localTotalInput!13) (= lambda!80954 lambda!80934))))

(declare-fun bs!445635 () Bool)

(assert (= bs!445635 (and b!2151608 b!2151594)))

(assert (=> bs!445635 (= (= (totalInput!3267 thiss!29110) localTotalInput!13) (= lambda!80954 lambda!80947))))

(assert (=> b!2151608 true))

(declare-fun d!645792 () Bool)

(declare-fun res!927779 () Bool)

(declare-fun e!1376028 () Bool)

(assert (=> d!645792 (=> (not res!927779) (not e!1376028))))

(assert (=> d!645792 (= res!927779 (valid!2232 (cache!3189 thiss!29110)))))

(assert (=> d!645792 (= (validCacheMapFurthestNullable!158 (cache!3189 thiss!29110) (totalInput!3267 thiss!29110)) e!1376028)))

(declare-fun b!2151607 () Bool)

(declare-fun res!927780 () Bool)

(assert (=> b!2151607 (=> (not res!927780) (not e!1376028))))

(assert (=> b!2151607 (= res!927780 (invariantList!327 (toList!1116 (map!4977 (cache!3189 thiss!29110)))))))

(assert (=> b!2151608 (= e!1376028 (forall!5040 (toList!1116 (map!4977 (cache!3189 thiss!29110))) lambda!80954))))

(assert (= (and d!645792 res!927779) b!2151607))

(assert (= (and b!2151607 res!927780) b!2151608))

(assert (=> d!645792 m!2594073))

(assert (=> b!2151607 m!2594075))

(assert (=> b!2151607 m!2594154))

(assert (=> b!2151608 m!2594075))

(declare-fun m!2594178 () Bool)

(assert (=> b!2151608 m!2594178))

(assert (=> b!2151487 d!645792))

(declare-fun b!2151616 () Bool)

(declare-fun e!1376033 () Bool)

(declare-fun tp!668757 () Bool)

(assert (=> b!2151616 (= e!1376033 tp!668757)))

(declare-fun setNonEmpty!17254 () Bool)

(declare-fun setRes!17254 () Bool)

(declare-fun setElem!17254 () Context!2878)

(declare-fun tp!668759 () Bool)

(assert (=> setNonEmpty!17254 (= setRes!17254 (and tp!668759 (inv!32543 setElem!17254) e!1376033))))

(declare-fun setRest!17254 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17254 (= (_1!14562 (_1!14563 (h!30094 (zeroValue!3152 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17254 true) setRest!17254))))

(declare-fun b!2151615 () Bool)

(declare-fun e!1376034 () Bool)

(declare-fun tp!668758 () Bool)

(assert (=> b!2151615 (= e!1376034 (and setRes!17254 tp!668758))))

(declare-fun condSetEmpty!17254 () Bool)

(assert (=> b!2151615 (= condSetEmpty!17254 (= (_1!14562 (_1!14563 (h!30094 (zeroValue!3152 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))) ((as const (Array Context!2878 Bool)) false)))))

(assert (=> b!2151502 (= tp!668748 e!1376034)))

(declare-fun setIsEmpty!17254 () Bool)

(assert (=> setIsEmpty!17254 setRes!17254))

(assert (= (and b!2151615 condSetEmpty!17254) setIsEmpty!17254))

(assert (= (and b!2151615 (not condSetEmpty!17254)) setNonEmpty!17254))

(assert (= setNonEmpty!17254 b!2151616))

(assert (= (and b!2151502 ((_ is Cons!24693) (zeroValue!3152 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110)))))))) b!2151615))

(declare-fun m!2594180 () Bool)

(assert (=> setNonEmpty!17254 m!2594180))

(declare-fun b!2151618 () Bool)

(declare-fun e!1376035 () Bool)

(declare-fun tp!668760 () Bool)

(assert (=> b!2151618 (= e!1376035 tp!668760)))

(declare-fun setRes!17255 () Bool)

(declare-fun tp!668762 () Bool)

(declare-fun setNonEmpty!17255 () Bool)

(declare-fun setElem!17255 () Context!2878)

(assert (=> setNonEmpty!17255 (= setRes!17255 (and tp!668762 (inv!32543 setElem!17255) e!1376035))))

(declare-fun setRest!17255 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17255 (= (_1!14562 (_1!14563 (h!30094 (minValue!3152 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17255 true) setRest!17255))))

(declare-fun b!2151617 () Bool)

(declare-fun e!1376036 () Bool)

(declare-fun tp!668761 () Bool)

(assert (=> b!2151617 (= e!1376036 (and setRes!17255 tp!668761))))

(declare-fun condSetEmpty!17255 () Bool)

(assert (=> b!2151617 (= condSetEmpty!17255 (= (_1!14562 (_1!14563 (h!30094 (minValue!3152 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110))))))))) ((as const (Array Context!2878 Bool)) false)))))

(assert (=> b!2151502 (= tp!668746 e!1376036)))

(declare-fun setIsEmpty!17255 () Bool)

(assert (=> setIsEmpty!17255 setRes!17255))

(assert (= (and b!2151617 condSetEmpty!17255) setIsEmpty!17255))

(assert (= (and b!2151617 (not condSetEmpty!17255)) setNonEmpty!17255))

(assert (= setNonEmpty!17255 b!2151618))

(assert (= (and b!2151502 ((_ is Cons!24693) (minValue!3152 (v!29248 (underlying!5983 (v!29249 (underlying!5984 (cache!3189 thiss!29110)))))))) b!2151617))

(declare-fun m!2594182 () Bool)

(assert (=> setNonEmpty!17255 m!2594182))

(declare-fun condSetEmpty!17258 () Bool)

(assert (=> setNonEmpty!17251 (= condSetEmpty!17258 (= setRest!17251 ((as const (Array Context!2878 Bool)) false)))))

(declare-fun setRes!17258 () Bool)

(assert (=> setNonEmpty!17251 (= tp!668740 setRes!17258)))

(declare-fun setIsEmpty!17258 () Bool)

(assert (=> setIsEmpty!17258 setRes!17258))

(declare-fun setElem!17258 () Context!2878)

(declare-fun e!1376039 () Bool)

(declare-fun tp!668767 () Bool)

(declare-fun setNonEmpty!17258 () Bool)

(assert (=> setNonEmpty!17258 (= setRes!17258 (and tp!668767 (inv!32543 setElem!17258) e!1376039))))

(declare-fun setRest!17258 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17258 (= setRest!17251 ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17258 true) setRest!17258))))

(declare-fun b!2151623 () Bool)

(declare-fun tp!668768 () Bool)

(assert (=> b!2151623 (= e!1376039 tp!668768)))

(assert (= (and setNonEmpty!17251 condSetEmpty!17258) setIsEmpty!17258))

(assert (= (and setNonEmpty!17251 (not condSetEmpty!17258)) setNonEmpty!17258))

(assert (= setNonEmpty!17258 b!2151623))

(declare-fun m!2594184 () Bool)

(assert (=> setNonEmpty!17258 m!2594184))

(declare-fun b!2151628 () Bool)

(declare-fun e!1376042 () Bool)

(declare-fun tp!668773 () Bool)

(declare-fun tp!668774 () Bool)

(assert (=> b!2151628 (= e!1376042 (and tp!668773 tp!668774))))

(assert (=> b!2151490 (= tp!668749 e!1376042)))

(assert (= (and b!2151490 ((_ is Cons!24692) (exprs!1939 setElem!17251))) b!2151628))

(declare-fun b!2151637 () Bool)

(declare-fun tp!668781 () Bool)

(declare-fun tp!668782 () Bool)

(declare-fun e!1376048 () Bool)

(assert (=> b!2151637 (= e!1376048 (and (inv!32542 (left!18966 (c!341265 localTotalInput!13))) tp!668781 (inv!32542 (right!19296 (c!341265 localTotalInput!13))) tp!668782))))

(declare-fun b!2151639 () Bool)

(declare-fun e!1376047 () Bool)

(declare-fun tp!668783 () Bool)

(assert (=> b!2151639 (= e!1376047 tp!668783)))

(declare-fun b!2151638 () Bool)

(declare-fun inv!32548 (IArray!16015) Bool)

(assert (=> b!2151638 (= e!1376048 (and (inv!32548 (xs!10947 (c!341265 localTotalInput!13))) e!1376047))))

(assert (=> b!2151489 (= tp!668745 (and (inv!32542 (c!341265 localTotalInput!13)) e!1376048))))

(assert (= (and b!2151489 ((_ is Node!8005) (c!341265 localTotalInput!13))) b!2151637))

(assert (= b!2151638 b!2151639))

(assert (= (and b!2151489 ((_ is Leaf!11707) (c!341265 localTotalInput!13))) b!2151638))

(declare-fun m!2594186 () Bool)

(assert (=> b!2151637 m!2594186))

(declare-fun m!2594188 () Bool)

(assert (=> b!2151637 m!2594188))

(declare-fun m!2594190 () Bool)

(assert (=> b!2151638 m!2594190))

(assert (=> b!2151489 m!2593995))

(declare-fun b!2151641 () Bool)

(declare-fun e!1376049 () Bool)

(declare-fun tp!668784 () Bool)

(assert (=> b!2151641 (= e!1376049 tp!668784)))

(declare-fun tp!668786 () Bool)

(declare-fun setElem!17259 () Context!2878)

(declare-fun setRes!17259 () Bool)

(declare-fun setNonEmpty!17259 () Bool)

(assert (=> setNonEmpty!17259 (= setRes!17259 (and tp!668786 (inv!32543 setElem!17259) e!1376049))))

(declare-fun setRest!17259 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17259 (= (_1!14562 (_1!14563 (h!30094 mapDefault!13694))) ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17259 true) setRest!17259))))

(declare-fun b!2151640 () Bool)

(declare-fun e!1376050 () Bool)

(declare-fun tp!668785 () Bool)

(assert (=> b!2151640 (= e!1376050 (and setRes!17259 tp!668785))))

(declare-fun condSetEmpty!17259 () Bool)

(assert (=> b!2151640 (= condSetEmpty!17259 (= (_1!14562 (_1!14563 (h!30094 mapDefault!13694))) ((as const (Array Context!2878 Bool)) false)))))

(assert (=> b!2151491 (= tp!668741 e!1376050)))

(declare-fun setIsEmpty!17259 () Bool)

(assert (=> setIsEmpty!17259 setRes!17259))

(assert (= (and b!2151640 condSetEmpty!17259) setIsEmpty!17259))

(assert (= (and b!2151640 (not condSetEmpty!17259)) setNonEmpty!17259))

(assert (= setNonEmpty!17259 b!2151641))

(assert (= (and b!2151491 ((_ is Cons!24693) mapDefault!13694)) b!2151640))

(declare-fun m!2594192 () Bool)

(assert (=> setNonEmpty!17259 m!2594192))

(declare-fun tp!668787 () Bool)

(declare-fun b!2151642 () Bool)

(declare-fun tp!668788 () Bool)

(declare-fun e!1376052 () Bool)

(assert (=> b!2151642 (= e!1376052 (and (inv!32542 (left!18966 (c!341265 (totalInput!3267 thiss!29110)))) tp!668787 (inv!32542 (right!19296 (c!341265 (totalInput!3267 thiss!29110)))) tp!668788))))

(declare-fun b!2151644 () Bool)

(declare-fun e!1376051 () Bool)

(declare-fun tp!668789 () Bool)

(assert (=> b!2151644 (= e!1376051 tp!668789)))

(declare-fun b!2151643 () Bool)

(assert (=> b!2151643 (= e!1376052 (and (inv!32548 (xs!10947 (c!341265 (totalInput!3267 thiss!29110)))) e!1376051))))

(assert (=> b!2151495 (= tp!668750 (and (inv!32542 (c!341265 (totalInput!3267 thiss!29110))) e!1376052))))

(assert (= (and b!2151495 ((_ is Node!8005) (c!341265 (totalInput!3267 thiss!29110)))) b!2151642))

(assert (= b!2151643 b!2151644))

(assert (= (and b!2151495 ((_ is Leaf!11707) (c!341265 (totalInput!3267 thiss!29110)))) b!2151643))

(declare-fun m!2594194 () Bool)

(assert (=> b!2151642 m!2594194))

(declare-fun m!2594196 () Bool)

(assert (=> b!2151642 m!2594196))

(declare-fun m!2594198 () Bool)

(assert (=> b!2151643 m!2594198))

(assert (=> b!2151495 m!2594011))

(declare-fun b!2151655 () Bool)

(declare-fun e!1376064 () Bool)

(declare-fun setRes!17264 () Bool)

(declare-fun tp!668808 () Bool)

(assert (=> b!2151655 (= e!1376064 (and setRes!17264 tp!668808))))

(declare-fun condSetEmpty!17264 () Bool)

(declare-fun mapValue!13697 () List!24777)

(assert (=> b!2151655 (= condSetEmpty!17264 (= (_1!14562 (_1!14563 (h!30094 mapValue!13697))) ((as const (Array Context!2878 Bool)) false)))))

(declare-fun b!2151656 () Bool)

(declare-fun e!1376063 () Bool)

(declare-fun tp!668806 () Bool)

(assert (=> b!2151656 (= e!1376063 tp!668806)))

(declare-fun setIsEmpty!17264 () Bool)

(assert (=> setIsEmpty!17264 setRes!17264))

(declare-fun mapNonEmpty!13697 () Bool)

(declare-fun mapRes!13697 () Bool)

(declare-fun tp!668807 () Bool)

(assert (=> mapNonEmpty!13697 (= mapRes!13697 (and tp!668807 e!1376064))))

(declare-fun mapKey!13697 () (_ BitVec 32))

(declare-fun mapRest!13697 () (Array (_ BitVec 32) List!24777))

(assert (=> mapNonEmpty!13697 (= mapRest!13694 (store mapRest!13697 mapKey!13697 mapValue!13697))))

(declare-fun setNonEmpty!17265 () Bool)

(declare-fun tp!668804 () Bool)

(declare-fun setElem!17265 () Context!2878)

(declare-fun setRes!17265 () Bool)

(assert (=> setNonEmpty!17265 (= setRes!17265 (and tp!668804 (inv!32543 setElem!17265) e!1376063))))

(declare-fun mapDefault!13697 () List!24777)

(declare-fun setRest!17264 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17265 (= (_1!14562 (_1!14563 (h!30094 mapDefault!13697))) ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17265 true) setRest!17264))))

(declare-fun b!2151657 () Bool)

(declare-fun e!1376061 () Bool)

(declare-fun tp!668809 () Bool)

(assert (=> b!2151657 (= e!1376061 (and setRes!17265 tp!668809))))

(declare-fun condSetEmpty!17265 () Bool)

(assert (=> b!2151657 (= condSetEmpty!17265 (= (_1!14562 (_1!14563 (h!30094 mapDefault!13697))) ((as const (Array Context!2878 Bool)) false)))))

(declare-fun mapIsEmpty!13697 () Bool)

(assert (=> mapIsEmpty!13697 mapRes!13697))

(declare-fun setIsEmpty!17265 () Bool)

(assert (=> setIsEmpty!17265 setRes!17265))

(declare-fun b!2151658 () Bool)

(declare-fun e!1376062 () Bool)

(declare-fun tp!668810 () Bool)

(assert (=> b!2151658 (= e!1376062 tp!668810)))

(declare-fun setNonEmpty!17264 () Bool)

(declare-fun tp!668805 () Bool)

(declare-fun setElem!17264 () Context!2878)

(assert (=> setNonEmpty!17264 (= setRes!17264 (and tp!668805 (inv!32543 setElem!17264) e!1376062))))

(declare-fun setRest!17265 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17264 (= (_1!14562 (_1!14563 (h!30094 mapValue!13697))) ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17264 true) setRest!17265))))

(declare-fun condMapEmpty!13697 () Bool)

(assert (=> mapNonEmpty!13694 (= condMapEmpty!13697 (= mapRest!13694 ((as const (Array (_ BitVec 32) List!24777)) mapDefault!13697)))))

(assert (=> mapNonEmpty!13694 (= tp!668742 (and e!1376061 mapRes!13697))))

(assert (= (and mapNonEmpty!13694 condMapEmpty!13697) mapIsEmpty!13697))

(assert (= (and mapNonEmpty!13694 (not condMapEmpty!13697)) mapNonEmpty!13697))

(assert (= (and b!2151655 condSetEmpty!17264) setIsEmpty!17264))

(assert (= (and b!2151655 (not condSetEmpty!17264)) setNonEmpty!17264))

(assert (= setNonEmpty!17264 b!2151658))

(assert (= (and mapNonEmpty!13697 ((_ is Cons!24693) mapValue!13697)) b!2151655))

(assert (= (and b!2151657 condSetEmpty!17265) setIsEmpty!17265))

(assert (= (and b!2151657 (not condSetEmpty!17265)) setNonEmpty!17265))

(assert (= setNonEmpty!17265 b!2151656))

(assert (= (and mapNonEmpty!13694 ((_ is Cons!24693) mapDefault!13697)) b!2151657))

(declare-fun m!2594200 () Bool)

(assert (=> mapNonEmpty!13697 m!2594200))

(declare-fun m!2594202 () Bool)

(assert (=> setNonEmpty!17265 m!2594202))

(declare-fun m!2594204 () Bool)

(assert (=> setNonEmpty!17264 m!2594204))

(declare-fun b!2151660 () Bool)

(declare-fun e!1376065 () Bool)

(declare-fun tp!668811 () Bool)

(assert (=> b!2151660 (= e!1376065 tp!668811)))

(declare-fun tp!668813 () Bool)

(declare-fun setRes!17266 () Bool)

(declare-fun setElem!17266 () Context!2878)

(declare-fun setNonEmpty!17266 () Bool)

(assert (=> setNonEmpty!17266 (= setRes!17266 (and tp!668813 (inv!32543 setElem!17266) e!1376065))))

(declare-fun setRest!17266 () (InoxSet Context!2878))

(assert (=> setNonEmpty!17266 (= (_1!14562 (_1!14563 (h!30094 mapValue!13694))) ((_ map or) (store ((as const (Array Context!2878 Bool)) false) setElem!17266 true) setRest!17266))))

(declare-fun b!2151659 () Bool)

(declare-fun e!1376066 () Bool)

(declare-fun tp!668812 () Bool)

(assert (=> b!2151659 (= e!1376066 (and setRes!17266 tp!668812))))

(declare-fun condSetEmpty!17266 () Bool)

(assert (=> b!2151659 (= condSetEmpty!17266 (= (_1!14562 (_1!14563 (h!30094 mapValue!13694))) ((as const (Array Context!2878 Bool)) false)))))

(assert (=> mapNonEmpty!13694 (= tp!668743 e!1376066)))

(declare-fun setIsEmpty!17266 () Bool)

(assert (=> setIsEmpty!17266 setRes!17266))

(assert (= (and b!2151659 condSetEmpty!17266) setIsEmpty!17266))

(assert (= (and b!2151659 (not condSetEmpty!17266)) setNonEmpty!17266))

(assert (= setNonEmpty!17266 b!2151660))

(assert (= (and mapNonEmpty!13694 ((_ is Cons!24693) mapValue!13694)) b!2151659))

(declare-fun m!2594206 () Bool)

(assert (=> setNonEmpty!17266 m!2594206))

(declare-fun b_lambda!70827 () Bool)

(assert (= b_lambda!70821 (or (and b!2151493 b_free!63565) b_lambda!70827)))

(declare-fun b_lambda!70829 () Bool)

(assert (= b_lambda!70823 (or (and b!2151493 b_free!63565) b_lambda!70829)))

(declare-fun b_lambda!70831 () Bool)

(assert (= b_lambda!70825 (or b!2151501 b_lambda!70831)))

(declare-fun bs!445636 () Bool)

(declare-fun d!645794 () Bool)

(assert (= bs!445636 (and d!645794 b!2151501)))

(assert (=> bs!445636 (= (dynLambda!11396 lambda!80934 (tuple2!24515 lt!801033 (apply!6033 (cache!3189 thiss!29110) lt!801033))) (validCacheMapFurthestNullableBody!28 (tuple2!24515 lt!801033 (apply!6033 (cache!3189 thiss!29110) lt!801033)) localTotalInput!13))))

(declare-fun m!2594208 () Bool)

(assert (=> bs!445636 m!2594208))

(assert (=> d!645766 d!645794))

(check-sat (not b!2151554) (not d!645774) (not b!2151640) (not b!2151639) (not d!645786) (not d!645788) (not setNonEmpty!17255) (not b!2151533) (not b!2151641) (not b!2151537) (not mapNonEmpty!13697) (not b!2151593) (not b!2151489) (not d!645782) (not b_lambda!70827) (not b!2151616) (not b!2151638) (not b!2151594) (not b!2151637) (not b!2151660) (not b!2151655) (not b!2151643) (not d!645776) (not b!2151659) (not setNonEmpty!17264) (not b!2151540) (not bm!129084) b_and!173183 (not d!645764) (not b!2151617) (not d!645778) (not b!2151628) (not b!2151583) (not b!2151618) (not bm!129087) (not b!2151603) (not b!2151642) (not b_next!64269) (not b_lambda!70829) (not d!645766) (not b!2151601) (not b!2151517) (not b!2151515) (not b!2151580) (not b!2151657) (not b!2151582) (not d!645770) (not setNonEmpty!17258) (not b!2151606) (not d!645780) (not b!2151644) (not b_next!64271) (not d!645792) (not bm!129083) (not b!2151607) (not b!2151584) (not b!2151623) (not bm!129086) (not setNonEmpty!17254) (not b!2151585) (not setNonEmpty!17266) (not b!2151656) b_and!173179 (not b!2151551) (not b!2151532) (not b!2151604) (not b!2151615) (not bm!129082) (not b_lambda!70831) (not b!2151608) (not bm!129085) (not bs!445636) (not setNonEmpty!17259) (not b!2151519) (not setNonEmpty!17265) (not b!2151658) (not b!2151495))
(check-sat b_and!173183 b_and!173179 (not b_next!64271) (not b_next!64269))

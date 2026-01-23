; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209320 () Bool)

(assert start!209320)

(declare-fun b!2157666 () Bool)

(declare-fun b_free!63749 () Bool)

(declare-fun b_next!64453 () Bool)

(assert (=> b!2157666 (= b_free!63749 (not b_next!64453))))

(declare-fun tp!672325 () Bool)

(declare-fun b_and!173365 () Bool)

(assert (=> b!2157666 (= tp!672325 b_and!173365)))

(declare-fun b!2157665 () Bool)

(declare-fun b_free!63751 () Bool)

(declare-fun b_next!64455 () Bool)

(assert (=> b!2157665 (= b_free!63751 (not b_next!64455))))

(declare-fun tp!672331 () Bool)

(declare-fun b_and!173367 () Bool)

(assert (=> b!2157665 (= tp!672331 b_and!173367)))

(declare-fun b!2157673 () Bool)

(assert (=> b!2157673 true))

(declare-fun b!2157654 () Bool)

(declare-fun res!929890 () Bool)

(declare-fun e!1380357 () Bool)

(assert (=> b!2157654 (=> (not res!929890) (not e!1380357))))

(declare-fun e!1380350 () Bool)

(assert (=> b!2157654 (= res!929890 e!1380350)))

(declare-fun res!929892 () Bool)

(assert (=> b!2157654 (=> res!929892 e!1380350)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12024 0))(
  ( (C!12025 (val!6998 Int)) )
))
(declare-datatypes ((Regex!5939 0))(
  ( (ElementMatch!5939 (c!341631 C!12024)) (Concat!10241 (regOne!12390 Regex!5939) (regTwo!12390 Regex!5939)) (EmptyExpr!5939) (Star!5939 (reg!6268 Regex!5939)) (EmptyLang!5939) (Union!5939 (regOne!12391 Regex!5939) (regTwo!12391 Regex!5939)) )
))
(declare-datatypes ((List!25023 0))(
  ( (Nil!24939) (Cons!24939 (h!30340 Regex!5939) (t!197571 List!25023)) )
))
(declare-datatypes ((Context!3018 0))(
  ( (Context!3019 (exprs!2009 List!25023)) )
))
(declare-fun z!540 () (InoxSet Context!3018))

(declare-fun nullableZipper!229 ((InoxSet Context!3018)) Bool)

(assert (=> b!2157654 (= res!929892 (not (nullableZipper!229 z!540)))))

(declare-fun b!2157655 () Bool)

(declare-fun res!929895 () Bool)

(declare-fun e!1380355 () Bool)

(assert (=> b!2157655 (=> (not res!929895) (not e!1380355))))

(declare-fun from!970 () Int)

(assert (=> b!2157655 (= res!929895 (>= from!970 0))))

(declare-fun b!2157656 () Bool)

(declare-fun e!1380352 () Bool)

(declare-fun e!1380358 () Bool)

(assert (=> b!2157656 (= e!1380352 e!1380358)))

(declare-fun b!2157657 () Bool)

(assert (=> b!2157657 (= e!1380357 false)))

(declare-datatypes ((List!25024 0))(
  ( (Nil!24940) (Cons!24940 (h!30341 C!12024) (t!197572 List!25024)) )
))
(declare-datatypes ((IArray!16155 0))(
  ( (IArray!16156 (innerList!8135 List!25024)) )
))
(declare-datatypes ((Conc!8075 0))(
  ( (Node!8075 (left!19195 Conc!8075) (right!19525 Conc!8075) (csize!16380 Int) (cheight!8286 Int)) (Leaf!11812 (xs!11017 IArray!16155) (csize!16381 Int)) (Empty!8075) )
))
(declare-datatypes ((BalanceConc!15912 0))(
  ( (BalanceConc!15913 (c!341632 Conc!8075)) )
))
(declare-fun localTotalInput!17 () BalanceConc!15912)

(declare-fun res!14508 () Int)

(declare-fun lt!801728 () Bool)

(declare-fun lastNullablePos!109 () Int)

(declare-datatypes ((tuple3!3762 0))(
  ( (tuple3!3763 (_1!14665 (InoxSet Context!3018)) (_2!14665 Int) (_3!2351 Int)) )
))
(declare-datatypes ((tuple2!24628 0))(
  ( (tuple2!24629 (_1!14666 tuple3!3762) (_2!14666 Int)) )
))
(declare-fun validCacheMapFurthestNullableBody!30 (tuple2!24628 BalanceConc!15912) Bool)

(assert (=> b!2157657 (= lt!801728 (validCacheMapFurthestNullableBody!30 (tuple2!24629 (tuple3!3763 z!540 from!970 lastNullablePos!109) res!14508) localTotalInput!17))))

(declare-fun res!929897 () Bool)

(assert (=> start!209320 (=> (not res!929897) (not e!1380355))))

(declare-datatypes ((array!10037 0))(
  ( (array!10038 (arr!4476 (Array (_ BitVec 32) (_ BitVec 64))) (size!19486 (_ BitVec 32))) )
))
(declare-datatypes ((List!25025 0))(
  ( (Nil!24941) (Cons!24941 (h!30342 tuple2!24628) (t!197573 List!25025)) )
))
(declare-datatypes ((array!10039 0))(
  ( (array!10040 (arr!4477 (Array (_ BitVec 32) List!25025)) (size!19487 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5880 0))(
  ( (LongMapFixedSize!5881 (defaultEntry!3305 Int) (mask!7225 (_ BitVec 32)) (extraKeys!3188 (_ BitVec 32)) (zeroValue!3198 List!25025) (minValue!3198 List!25025) (_size!5931 (_ BitVec 32)) (_keys!3237 array!10037) (_values!3220 array!10039) (_vacant!3001 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11585 0))(
  ( (Cell!11586 (v!29343 LongMapFixedSize!5880)) )
))
(declare-datatypes ((MutLongMap!2940 0))(
  ( (LongMap!2940 (underlying!6075 Cell!11585)) (MutLongMapExt!2939 (__x!16996 Int)) )
))
(declare-datatypes ((Cell!11587 0))(
  ( (Cell!11588 (v!29344 MutLongMap!2940)) )
))
(declare-datatypes ((Hashable!2854 0))(
  ( (HashableExt!2853 (__x!16997 Int)) )
))
(declare-datatypes ((MutableMap!2854 0))(
  ( (MutableMapExt!2853 (__x!16998 Int)) (HashMap!2854 (underlying!6076 Cell!11587) (hashF!4777 Hashable!2854) (_size!5932 (_ BitVec 32)) (defaultValue!3016 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1066 0))(
  ( (CacheFurthestNullable!1067 (cache!3235 MutableMap!2854) (totalInput!3385 BalanceConc!15912)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1066)

(assert (=> start!209320 (= res!929897 (= localTotalInput!17 (totalInput!3385 thiss!29220)))))

(assert (=> start!209320 e!1380355))

(declare-fun e!1380354 () Bool)

(declare-fun inv!32992 (BalanceConc!15912) Bool)

(assert (=> start!209320 (and (inv!32992 localTotalInput!17) e!1380354)))

(assert (=> start!209320 true))

(declare-fun condSetEmpty!17800 () Bool)

(assert (=> start!209320 (= condSetEmpty!17800 (= z!540 ((as const (Array Context!3018 Bool)) false)))))

(declare-fun setRes!17800 () Bool)

(assert (=> start!209320 setRes!17800))

(declare-fun e!1380361 () Bool)

(declare-fun inv!32993 (CacheFurthestNullable!1066) Bool)

(assert (=> start!209320 (and (inv!32993 thiss!29220) e!1380361)))

(declare-fun b!2157658 () Bool)

(assert (=> b!2157658 (= e!1380350 (= lastNullablePos!109 (- from!970 1)))))

(declare-fun mapNonEmpty!13883 () Bool)

(declare-fun mapRes!13883 () Bool)

(declare-fun tp!672332 () Bool)

(declare-fun tp!672329 () Bool)

(assert (=> mapNonEmpty!13883 (= mapRes!13883 (and tp!672332 tp!672329))))

(declare-fun mapRest!13883 () (Array (_ BitVec 32) List!25025))

(declare-fun mapValue!13883 () List!25025)

(declare-fun mapKey!13883 () (_ BitVec 32))

(assert (=> mapNonEmpty!13883 (= (arr!4477 (_values!3220 (v!29343 (underlying!6075 (v!29344 (underlying!6076 (cache!3235 thiss!29220))))))) (store mapRest!13883 mapKey!13883 mapValue!13883))))

(declare-fun b!2157659 () Bool)

(declare-fun tp!672323 () Bool)

(declare-fun inv!32994 (Conc!8075) Bool)

(assert (=> b!2157659 (= e!1380354 (and (inv!32994 (c!341632 localTotalInput!17)) tp!672323))))

(declare-fun e!1380363 () Bool)

(declare-fun e!1380359 () Bool)

(declare-fun b!2157660 () Bool)

(assert (=> b!2157660 (= e!1380361 (and e!1380363 (inv!32992 (totalInput!3385 thiss!29220)) e!1380359))))

(declare-fun b!2157661 () Bool)

(declare-fun res!929896 () Bool)

(assert (=> b!2157661 (=> (not res!929896) (not e!1380357))))

(declare-fun lt!801727 () Int)

(declare-fun furthestNullablePosition!140 ((InoxSet Context!3018) Int BalanceConc!15912 Int Int) Int)

(assert (=> b!2157661 (= res!929896 (= res!14508 (furthestNullablePosition!140 z!540 from!970 (totalInput!3385 thiss!29220) lt!801727 lastNullablePos!109)))))

(declare-fun b!2157662 () Bool)

(declare-fun res!929891 () Bool)

(assert (=> b!2157662 (=> (not res!929891) (not e!1380355))))

(declare-fun validCacheMapFurthestNullable!179 (MutableMap!2854 BalanceConc!15912) Bool)

(assert (=> b!2157662 (= res!929891 (validCacheMapFurthestNullable!179 (cache!3235 thiss!29220) (totalInput!3385 thiss!29220)))))

(declare-fun e!1380351 () Bool)

(declare-fun setNonEmpty!17800 () Bool)

(declare-fun setElem!17800 () Context!3018)

(declare-fun tp!672322 () Bool)

(declare-fun inv!32995 (Context!3018) Bool)

(assert (=> setNonEmpty!17800 (= setRes!17800 (and tp!672322 (inv!32995 setElem!17800) e!1380351))))

(declare-fun setRest!17800 () (InoxSet Context!3018))

(assert (=> setNonEmpty!17800 (= z!540 ((_ map or) (store ((as const (Array Context!3018 Bool)) false) setElem!17800 true) setRest!17800))))

(declare-fun setIsEmpty!17800 () Bool)

(assert (=> setIsEmpty!17800 setRes!17800))

(declare-fun b!2157663 () Bool)

(declare-fun res!929893 () Bool)

(assert (=> b!2157663 (=> (not res!929893) (not e!1380357))))

(declare-fun valid!2266 (MutableMap!2854) Bool)

(assert (=> b!2157663 (= res!929893 (valid!2266 (cache!3235 thiss!29220)))))

(declare-fun b!2157664 () Bool)

(assert (=> b!2157664 (= e!1380355 e!1380357)))

(declare-fun res!929898 () Bool)

(assert (=> b!2157664 (=> (not res!929898) (not e!1380357))))

(assert (=> b!2157664 (= res!929898 (and (<= from!970 lt!801727) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19488 (BalanceConc!15912) Int)

(assert (=> b!2157664 (= lt!801727 (size!19488 (totalInput!3385 thiss!29220)))))

(declare-fun e!1380356 () Bool)

(assert (=> b!2157665 (= e!1380363 (and e!1380356 tp!672331))))

(declare-fun tp!672330 () Bool)

(declare-fun e!1380360 () Bool)

(declare-fun tp!672326 () Bool)

(declare-fun e!1380362 () Bool)

(declare-fun array_inv!3208 (array!10037) Bool)

(declare-fun array_inv!3209 (array!10039) Bool)

(assert (=> b!2157666 (= e!1380362 (and tp!672325 tp!672326 tp!672330 (array_inv!3208 (_keys!3237 (v!29343 (underlying!6075 (v!29344 (underlying!6076 (cache!3235 thiss!29220))))))) (array_inv!3209 (_values!3220 (v!29343 (underlying!6075 (v!29344 (underlying!6076 (cache!3235 thiss!29220))))))) e!1380360))))

(declare-fun b!2157667 () Bool)

(declare-fun tp!672324 () Bool)

(assert (=> b!2157667 (= e!1380359 (and (inv!32994 (c!341632 (totalInput!3385 thiss!29220))) tp!672324))))

(declare-fun b!2157668 () Bool)

(assert (=> b!2157668 (= e!1380358 e!1380362)))

(declare-fun mapIsEmpty!13883 () Bool)

(assert (=> mapIsEmpty!13883 mapRes!13883))

(declare-fun b!2157669 () Bool)

(declare-fun lt!801726 () MutLongMap!2940)

(get-info :version)

(assert (=> b!2157669 (= e!1380356 (and e!1380352 ((_ is LongMap!2940) lt!801726)))))

(assert (=> b!2157669 (= lt!801726 (v!29344 (underlying!6076 (cache!3235 thiss!29220))))))

(declare-fun b!2157670 () Bool)

(declare-fun res!929889 () Bool)

(assert (=> b!2157670 (=> (not res!929889) (not e!1380357))))

(assert (=> b!2157670 (= res!929889 ((_ is HashMap!2854) (cache!3235 thiss!29220)))))

(declare-fun b!2157671 () Bool)

(declare-fun tp!672328 () Bool)

(assert (=> b!2157671 (= e!1380351 tp!672328)))

(declare-fun b!2157672 () Bool)

(declare-fun tp!672327 () Bool)

(assert (=> b!2157672 (= e!1380360 (and tp!672327 mapRes!13883))))

(declare-fun condMapEmpty!13883 () Bool)

(declare-fun mapDefault!13883 () List!25025)

(assert (=> b!2157672 (= condMapEmpty!13883 (= (arr!4477 (_values!3220 (v!29343 (underlying!6075 (v!29344 (underlying!6076 (cache!3235 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25025)) mapDefault!13883)))))

(declare-fun res!929894 () Bool)

(assert (=> b!2157673 (=> (not res!929894) (not e!1380357))))

(declare-fun lambda!81428 () Int)

(declare-fun forall!5123 (List!25025 Int) Bool)

(declare-datatypes ((ListMap!715 0))(
  ( (ListMap!716 (toList!1121 List!25025)) )
))
(declare-fun map!5017 (MutableMap!2854) ListMap!715)

(assert (=> b!2157673 (= res!929894 (forall!5123 (toList!1121 (map!5017 (cache!3235 thiss!29220))) lambda!81428))))

(assert (= (and start!209320 res!929897) b!2157662))

(assert (= (and b!2157662 res!929891) b!2157655))

(assert (= (and b!2157655 res!929895) b!2157664))

(assert (= (and b!2157664 res!929898) b!2157654))

(assert (= (and b!2157654 (not res!929892)) b!2157658))

(assert (= (and b!2157654 res!929890) b!2157661))

(assert (= (and b!2157661 res!929896) b!2157670))

(assert (= (and b!2157670 res!929889) b!2157663))

(assert (= (and b!2157663 res!929893) b!2157673))

(assert (= (and b!2157673 res!929894) b!2157657))

(assert (= start!209320 b!2157659))

(assert (= (and start!209320 condSetEmpty!17800) setIsEmpty!17800))

(assert (= (and start!209320 (not condSetEmpty!17800)) setNonEmpty!17800))

(assert (= setNonEmpty!17800 b!2157671))

(assert (= (and b!2157672 condMapEmpty!13883) mapIsEmpty!13883))

(assert (= (and b!2157672 (not condMapEmpty!13883)) mapNonEmpty!13883))

(assert (= b!2157666 b!2157672))

(assert (= b!2157668 b!2157666))

(assert (= b!2157656 b!2157668))

(assert (= (and b!2157669 ((_ is LongMap!2940) (v!29344 (underlying!6076 (cache!3235 thiss!29220))))) b!2157656))

(assert (= b!2157665 b!2157669))

(assert (= (and b!2157660 ((_ is HashMap!2854) (cache!3235 thiss!29220))) b!2157665))

(assert (= b!2157660 b!2157667))

(assert (= start!209320 b!2157660))

(declare-fun m!2597807 () Bool)

(assert (=> setNonEmpty!17800 m!2597807))

(declare-fun m!2597809 () Bool)

(assert (=> b!2157657 m!2597809))

(declare-fun m!2597811 () Bool)

(assert (=> b!2157666 m!2597811))

(declare-fun m!2597813 () Bool)

(assert (=> b!2157666 m!2597813))

(declare-fun m!2597815 () Bool)

(assert (=> b!2157663 m!2597815))

(declare-fun m!2597817 () Bool)

(assert (=> b!2157667 m!2597817))

(declare-fun m!2597819 () Bool)

(assert (=> mapNonEmpty!13883 m!2597819))

(declare-fun m!2597821 () Bool)

(assert (=> b!2157661 m!2597821))

(declare-fun m!2597823 () Bool)

(assert (=> b!2157673 m!2597823))

(declare-fun m!2597825 () Bool)

(assert (=> b!2157673 m!2597825))

(declare-fun m!2597827 () Bool)

(assert (=> start!209320 m!2597827))

(declare-fun m!2597829 () Bool)

(assert (=> start!209320 m!2597829))

(declare-fun m!2597831 () Bool)

(assert (=> b!2157654 m!2597831))

(declare-fun m!2597833 () Bool)

(assert (=> b!2157660 m!2597833))

(declare-fun m!2597835 () Bool)

(assert (=> b!2157662 m!2597835))

(declare-fun m!2597837 () Bool)

(assert (=> b!2157659 m!2597837))

(declare-fun m!2597839 () Bool)

(assert (=> b!2157664 m!2597839))

(check-sat (not b!2157667) (not b_next!64455) (not b!2157671) (not b!2157672) (not b!2157657) (not setNonEmpty!17800) (not b!2157661) (not b!2157673) b_and!173367 (not b!2157666) (not b!2157660) (not b!2157664) (not b!2157662) (not b!2157654) (not b!2157659) (not b_next!64453) (not start!209320) b_and!173365 (not b!2157663) (not mapNonEmpty!13883))
(check-sat b_and!173365 b_and!173367 (not b_next!64453) (not b_next!64455))

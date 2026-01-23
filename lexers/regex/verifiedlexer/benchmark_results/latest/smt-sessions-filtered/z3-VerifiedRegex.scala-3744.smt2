; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209534 () Bool)

(assert start!209534)

(declare-fun b!2159418 () Bool)

(declare-fun b_free!63813 () Bool)

(declare-fun b_next!64517 () Bool)

(assert (=> b!2159418 (= b_free!63813 (not b_next!64517))))

(declare-fun tp!673298 () Bool)

(declare-fun b_and!173429 () Bool)

(assert (=> b!2159418 (= tp!673298 b_and!173429)))

(declare-fun b!2159416 () Bool)

(declare-fun b_free!63815 () Bool)

(declare-fun b_next!64519 () Bool)

(assert (=> b!2159416 (= b_free!63815 (not b_next!64519))))

(declare-fun tp!673292 () Bool)

(declare-fun b_and!173431 () Bool)

(assert (=> b!2159416 (= tp!673292 b_and!173431)))

(declare-fun b!2159415 () Bool)

(assert (=> b!2159415 true))

(declare-fun b!2159413 () Bool)

(declare-fun e!1381621 () Bool)

(declare-fun e!1381618 () Bool)

(assert (=> b!2159413 (= e!1381621 e!1381618)))

(declare-fun b!2159414 () Bool)

(declare-fun e!1381622 () Bool)

(declare-fun tp!673291 () Bool)

(assert (=> b!2159414 (= e!1381622 tp!673291)))

(declare-fun e!1381625 () Bool)

(declare-fun e!1381627 () Bool)

(assert (=> b!2159415 (= e!1381625 (not e!1381627))))

(declare-fun res!930516 () Bool)

(assert (=> b!2159415 (=> (not res!930516) (not e!1381627))))

(declare-datatypes ((C!12056 0))(
  ( (C!12057 (val!7014 Int)) )
))
(declare-datatypes ((Regex!5955 0))(
  ( (ElementMatch!5955 (c!341810 C!12056)) (Concat!10257 (regOne!12422 Regex!5955) (regTwo!12422 Regex!5955)) (EmptyExpr!5955) (Star!5955 (reg!6284 Regex!5955)) (EmptyLang!5955) (Union!5955 (regOne!12423 Regex!5955) (regTwo!12423 Regex!5955)) )
))
(declare-datatypes ((List!25077 0))(
  ( (Nil!24993) (Cons!24993 (h!30394 Regex!5955) (t!197625 List!25077)) )
))
(declare-datatypes ((Context!3050 0))(
  ( (Context!3051 (exprs!2025 List!25077)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3794 0))(
  ( (tuple3!3795 (_1!14715 (InoxSet Context!3050)) (_2!14715 Int) (_3!2367 Int)) )
))
(declare-datatypes ((array!10115 0))(
  ( (array!10116 (arr!4508 (Array (_ BitVec 32) (_ BitVec 64))) (size!19546 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24696 0))(
  ( (tuple2!24697 (_1!14716 tuple3!3794) (_2!14716 Int)) )
))
(declare-datatypes ((List!25078 0))(
  ( (Nil!24994) (Cons!24994 (h!30395 tuple2!24696) (t!197626 List!25078)) )
))
(declare-datatypes ((array!10117 0))(
  ( (array!10118 (arr!4509 (Array (_ BitVec 32) List!25078)) (size!19547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5912 0))(
  ( (LongMapFixedSize!5913 (defaultEntry!3321 Int) (mask!7249 (_ BitVec 32)) (extraKeys!3204 (_ BitVec 32)) (zeroValue!3214 List!25078) (minValue!3214 List!25078) (_size!5963 (_ BitVec 32)) (_keys!3253 array!10115) (_values!3236 array!10117) (_vacant!3017 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11649 0))(
  ( (Cell!11650 (v!29381 LongMapFixedSize!5912)) )
))
(declare-datatypes ((MutLongMap!2956 0))(
  ( (LongMap!2956 (underlying!6107 Cell!11649)) (MutLongMapExt!2955 (__x!17044 Int)) )
))
(declare-datatypes ((Cell!11651 0))(
  ( (Cell!11652 (v!29382 MutLongMap!2956)) )
))
(declare-datatypes ((Hashable!2870 0))(
  ( (HashableExt!2869 (__x!17045 Int)) )
))
(declare-datatypes ((MutableMap!2870 0))(
  ( (MutableMapExt!2869 (__x!17046 Int)) (HashMap!2870 (underlying!6108 Cell!11651) (hashF!4793 Hashable!2870) (_size!5964 (_ BitVec 32)) (defaultValue!3032 Int)) )
))
(declare-datatypes ((tuple2!24698 0))(
  ( (tuple2!24699 (_1!14717 Bool) (_2!14717 MutableMap!2870)) )
))
(declare-fun lt!802511 () tuple2!24698)

(declare-datatypes ((List!25079 0))(
  ( (Nil!24995) (Cons!24995 (h!30396 C!12056) (t!197627 List!25079)) )
))
(declare-datatypes ((IArray!16187 0))(
  ( (IArray!16188 (innerList!8151 List!25079)) )
))
(declare-datatypes ((Conc!8091 0))(
  ( (Node!8091 (left!19247 Conc!8091) (right!19577 Conc!8091) (csize!16412 Int) (cheight!8302 Int)) (Leaf!11836 (xs!11033 IArray!16187) (csize!16413 Int)) (Empty!8091) )
))
(declare-datatypes ((BalanceConc!15944 0))(
  ( (BalanceConc!15945 (c!341811 Conc!8091)) )
))
(declare-datatypes ((CacheFurthestNullable!1098 0))(
  ( (CacheFurthestNullable!1099 (cache!3251 MutableMap!2870) (totalInput!3416 BalanceConc!15944)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1098)

(declare-fun validCacheMapFurthestNullable!193 (MutableMap!2870 BalanceConc!15944) Bool)

(assert (=> b!2159415 (= res!930516 (validCacheMapFurthestNullable!193 (_2!14717 lt!802511) (totalInput!3416 thiss!29220)))))

(declare-fun lambda!81569 () Int)

(declare-fun forall!5148 (List!25078 Int) Bool)

(declare-datatypes ((ListMap!739 0))(
  ( (ListMap!740 (toList!1139 List!25078)) )
))
(declare-fun map!5043 (MutableMap!2870) ListMap!739)

(assert (=> b!2159415 (forall!5148 (toList!1139 (map!5043 (_2!14717 lt!802511))) lambda!81569)))

(declare-fun lt!802509 () tuple3!3794)

(declare-fun res!14508 () Int)

(declare-fun update!108 (MutableMap!2870 tuple3!3794 Int) tuple2!24698)

(assert (=> b!2159415 (= lt!802511 (update!108 (cache!3251 thiss!29220) lt!802509 res!14508))))

(declare-datatypes ((Unit!38053 0))(
  ( (Unit!38054) )
))
(declare-fun lt!802510 () Unit!38053)

(declare-fun lemmaUpdatePreservesForallPairs!9 (MutableMap!2870 tuple3!3794 Int Int) Unit!38053)

(assert (=> b!2159415 (= lt!802510 (lemmaUpdatePreservesForallPairs!9 (cache!3251 thiss!29220) lt!802509 res!14508 lambda!81569))))

(declare-fun from!970 () Int)

(declare-fun z!540 () (InoxSet Context!3050))

(declare-fun lastNullablePos!109 () Int)

(assert (=> b!2159415 (= lt!802509 (tuple3!3795 z!540 from!970 lastNullablePos!109))))

(declare-fun mapIsEmpty!13952 () Bool)

(declare-fun mapRes!13952 () Bool)

(assert (=> mapIsEmpty!13952 mapRes!13952))

(declare-fun setIsEmpty!17953 () Bool)

(declare-fun setRes!17953 () Bool)

(assert (=> setIsEmpty!17953 setRes!17953))

(declare-fun res!930510 () Bool)

(declare-fun e!1381619 () Bool)

(assert (=> start!209534 (=> (not res!930510) (not e!1381619))))

(declare-fun localTotalInput!17 () BalanceConc!15944)

(assert (=> start!209534 (= res!930510 (= localTotalInput!17 (totalInput!3416 thiss!29220)))))

(assert (=> start!209534 e!1381619))

(declare-fun e!1381623 () Bool)

(declare-fun inv!33094 (BalanceConc!15944) Bool)

(assert (=> start!209534 (and (inv!33094 localTotalInput!17) e!1381623)))

(assert (=> start!209534 true))

(declare-fun condSetEmpty!17953 () Bool)

(assert (=> start!209534 (= condSetEmpty!17953 (= z!540 ((as const (Array Context!3050 Bool)) false)))))

(assert (=> start!209534 setRes!17953))

(declare-fun e!1381620 () Bool)

(declare-fun inv!33095 (CacheFurthestNullable!1098) Bool)

(assert (=> start!209534 (and (inv!33095 thiss!29220) e!1381620)))

(declare-fun tp!673294 () Bool)

(declare-fun tp!673300 () Bool)

(declare-fun e!1381629 () Bool)

(declare-fun array_inv!3236 (array!10115) Bool)

(declare-fun array_inv!3237 (array!10117) Bool)

(assert (=> b!2159416 (= e!1381618 (and tp!673292 tp!673294 tp!673300 (array_inv!3236 (_keys!3253 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) (array_inv!3237 (_values!3236 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) e!1381629))))

(declare-fun b!2159417 () Bool)

(declare-fun e!1381624 () Bool)

(declare-fun e!1381616 () Bool)

(declare-fun lt!802507 () MutLongMap!2956)

(get-info :version)

(assert (=> b!2159417 (= e!1381624 (and e!1381616 ((_ is LongMap!2956) lt!802507)))))

(assert (=> b!2159417 (= lt!802507 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))

(declare-fun e!1381626 () Bool)

(assert (=> b!2159418 (= e!1381626 (and e!1381624 tp!673298))))

(declare-fun setElem!17953 () Context!3050)

(declare-fun tp!673301 () Bool)

(declare-fun setNonEmpty!17953 () Bool)

(declare-fun inv!33096 (Context!3050) Bool)

(assert (=> setNonEmpty!17953 (= setRes!17953 (and tp!673301 (inv!33096 setElem!17953) e!1381622))))

(declare-fun setRest!17953 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17953 (= z!540 ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17953 true) setRest!17953))))

(declare-fun b!2159419 () Bool)

(declare-fun e!1381617 () Bool)

(declare-fun tp!673296 () Bool)

(declare-fun inv!33097 (Conc!8091) Bool)

(assert (=> b!2159419 (= e!1381617 (and (inv!33097 (c!341811 (totalInput!3416 thiss!29220))) tp!673296))))

(declare-fun b!2159420 () Bool)

(declare-fun res!930514 () Bool)

(assert (=> b!2159420 (=> (not res!930514) (not e!1381625))))

(declare-fun e!1381630 () Bool)

(assert (=> b!2159420 (= res!930514 e!1381630)))

(declare-fun res!930513 () Bool)

(assert (=> b!2159420 (=> res!930513 e!1381630)))

(declare-fun nullableZipper!244 ((InoxSet Context!3050)) Bool)

(assert (=> b!2159420 (= res!930513 (not (nullableZipper!244 z!540)))))

(declare-fun b!2159421 () Bool)

(declare-fun res!930511 () Bool)

(assert (=> b!2159421 (=> (not res!930511) (not e!1381619))))

(assert (=> b!2159421 (= res!930511 (validCacheMapFurthestNullable!193 (cache!3251 thiss!29220) (totalInput!3416 thiss!29220)))))

(declare-fun mapNonEmpty!13952 () Bool)

(declare-fun tp!673293 () Bool)

(declare-fun tp!673295 () Bool)

(assert (=> mapNonEmpty!13952 (= mapRes!13952 (and tp!673293 tp!673295))))

(declare-fun mapKey!13952 () (_ BitVec 32))

(declare-fun mapRest!13952 () (Array (_ BitVec 32) List!25078))

(declare-fun mapValue!13952 () List!25078)

(assert (=> mapNonEmpty!13952 (= (arr!4509 (_values!3236 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) (store mapRest!13952 mapKey!13952 mapValue!13952))))

(declare-fun b!2159422 () Bool)

(assert (=> b!2159422 (= e!1381616 e!1381621)))

(declare-fun b!2159423 () Bool)

(declare-fun tp!673299 () Bool)

(assert (=> b!2159423 (= e!1381629 (and tp!673299 mapRes!13952))))

(declare-fun condMapEmpty!13952 () Bool)

(declare-fun mapDefault!13952 () List!25078)

(assert (=> b!2159423 (= condMapEmpty!13952 (= (arr!4509 (_values!3236 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25078)) mapDefault!13952)))))

(declare-fun b!2159424 () Bool)

(assert (=> b!2159424 (= e!1381619 e!1381625)))

(declare-fun res!930512 () Bool)

(assert (=> b!2159424 (=> (not res!930512) (not e!1381625))))

(declare-fun lt!802508 () Int)

(assert (=> b!2159424 (= res!930512 (and (<= from!970 lt!802508) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19548 (BalanceConc!15944) Int)

(assert (=> b!2159424 (= lt!802508 (size!19548 (totalInput!3416 thiss!29220)))))

(declare-fun b!2159425 () Bool)

(declare-fun tp!673297 () Bool)

(assert (=> b!2159425 (= e!1381623 (and (inv!33097 (c!341811 localTotalInput!17)) tp!673297))))

(declare-fun b!2159426 () Bool)

(assert (=> b!2159426 (= e!1381627 (= (totalInput!3416 thiss!29220) localTotalInput!17))))

(declare-fun b!2159427 () Bool)

(declare-fun res!930515 () Bool)

(assert (=> b!2159427 (=> (not res!930515) (not e!1381625))))

(declare-fun furthestNullablePosition!152 ((InoxSet Context!3050) Int BalanceConc!15944 Int Int) Int)

(assert (=> b!2159427 (= res!930515 (= res!14508 (furthestNullablePosition!152 z!540 from!970 (totalInput!3416 thiss!29220) lt!802508 lastNullablePos!109)))))

(declare-fun b!2159428 () Bool)

(declare-fun res!930517 () Bool)

(assert (=> b!2159428 (=> (not res!930517) (not e!1381619))))

(assert (=> b!2159428 (= res!930517 (>= from!970 0))))

(declare-fun b!2159429 () Bool)

(assert (=> b!2159429 (= e!1381620 (and e!1381626 (inv!33094 (totalInput!3416 thiss!29220)) e!1381617))))

(declare-fun b!2159430 () Bool)

(assert (=> b!2159430 (= e!1381630 (= lastNullablePos!109 (- from!970 1)))))

(assert (= (and start!209534 res!930510) b!2159421))

(assert (= (and b!2159421 res!930511) b!2159428))

(assert (= (and b!2159428 res!930517) b!2159424))

(assert (= (and b!2159424 res!930512) b!2159420))

(assert (= (and b!2159420 (not res!930513)) b!2159430))

(assert (= (and b!2159420 res!930514) b!2159427))

(assert (= (and b!2159427 res!930515) b!2159415))

(assert (= (and b!2159415 res!930516) b!2159426))

(assert (= start!209534 b!2159425))

(assert (= (and start!209534 condSetEmpty!17953) setIsEmpty!17953))

(assert (= (and start!209534 (not condSetEmpty!17953)) setNonEmpty!17953))

(assert (= setNonEmpty!17953 b!2159414))

(assert (= (and b!2159423 condMapEmpty!13952) mapIsEmpty!13952))

(assert (= (and b!2159423 (not condMapEmpty!13952)) mapNonEmpty!13952))

(assert (= b!2159416 b!2159423))

(assert (= b!2159413 b!2159416))

(assert (= b!2159422 b!2159413))

(assert (= (and b!2159417 ((_ is LongMap!2956) (v!29382 (underlying!6108 (cache!3251 thiss!29220))))) b!2159422))

(assert (= b!2159418 b!2159417))

(assert (= (and b!2159429 ((_ is HashMap!2870) (cache!3251 thiss!29220))) b!2159418))

(assert (= b!2159429 b!2159419))

(assert (= start!209534 b!2159429))

(declare-fun m!2599174 () Bool)

(assert (=> b!2159427 m!2599174))

(declare-fun m!2599176 () Bool)

(assert (=> b!2159419 m!2599176))

(declare-fun m!2599178 () Bool)

(assert (=> mapNonEmpty!13952 m!2599178))

(declare-fun m!2599180 () Bool)

(assert (=> start!209534 m!2599180))

(declare-fun m!2599182 () Bool)

(assert (=> start!209534 m!2599182))

(declare-fun m!2599184 () Bool)

(assert (=> b!2159415 m!2599184))

(declare-fun m!2599186 () Bool)

(assert (=> b!2159415 m!2599186))

(declare-fun m!2599188 () Bool)

(assert (=> b!2159415 m!2599188))

(declare-fun m!2599190 () Bool)

(assert (=> b!2159415 m!2599190))

(declare-fun m!2599192 () Bool)

(assert (=> b!2159415 m!2599192))

(declare-fun m!2599194 () Bool)

(assert (=> b!2159424 m!2599194))

(declare-fun m!2599196 () Bool)

(assert (=> b!2159425 m!2599196))

(declare-fun m!2599198 () Bool)

(assert (=> setNonEmpty!17953 m!2599198))

(declare-fun m!2599200 () Bool)

(assert (=> b!2159420 m!2599200))

(declare-fun m!2599202 () Bool)

(assert (=> b!2159429 m!2599202))

(declare-fun m!2599204 () Bool)

(assert (=> b!2159421 m!2599204))

(declare-fun m!2599206 () Bool)

(assert (=> b!2159416 m!2599206))

(declare-fun m!2599208 () Bool)

(assert (=> b!2159416 m!2599208))

(check-sat (not b!2159419) (not start!209534) (not mapNonEmpty!13952) (not b!2159416) (not b!2159424) (not b!2159420) b_and!173431 (not setNonEmpty!17953) (not b!2159427) (not b!2159423) b_and!173429 (not b_next!64517) (not b!2159425) (not b_next!64519) (not b!2159415) (not b!2159421) (not b!2159429) (not b!2159414))
(check-sat b_and!173431 b_and!173429 (not b_next!64519) (not b_next!64517))
(get-model)

(declare-fun d!646807 () Bool)

(declare-fun isBalanced!2514 (Conc!8091) Bool)

(assert (=> d!646807 (= (inv!33094 localTotalInput!17) (isBalanced!2514 (c!341811 localTotalInput!17)))))

(declare-fun bs!446002 () Bool)

(assert (= bs!446002 d!646807))

(declare-fun m!2599210 () Bool)

(assert (=> bs!446002 m!2599210))

(assert (=> start!209534 d!646807))

(declare-fun d!646809 () Bool)

(declare-fun res!930520 () Bool)

(declare-fun e!1381633 () Bool)

(assert (=> d!646809 (=> (not res!930520) (not e!1381633))))

(assert (=> d!646809 (= res!930520 ((_ is HashMap!2870) (cache!3251 thiss!29220)))))

(assert (=> d!646809 (= (inv!33095 thiss!29220) e!1381633)))

(declare-fun b!2159435 () Bool)

(assert (=> b!2159435 (= e!1381633 (validCacheMapFurthestNullable!193 (cache!3251 thiss!29220) (totalInput!3416 thiss!29220)))))

(assert (= (and d!646809 res!930520) b!2159435))

(assert (=> b!2159435 m!2599204))

(assert (=> start!209534 d!646809))

(declare-fun lt!802516 () Int)

(declare-fun d!646811 () Bool)

(assert (=> d!646811 (and (>= lt!802516 (- 1)) (< lt!802516 lt!802508) (>= lt!802516 lastNullablePos!109) (or (= lt!802516 lastNullablePos!109) (>= lt!802516 from!970)))))

(declare-fun e!1381642 () Int)

(assert (=> d!646811 (= lt!802516 e!1381642)))

(declare-fun c!341816 () Bool)

(declare-fun e!1381640 () Bool)

(assert (=> d!646811 (= c!341816 e!1381640)))

(declare-fun res!930523 () Bool)

(assert (=> d!646811 (=> res!930523 e!1381640)))

(assert (=> d!646811 (= res!930523 (= from!970 lt!802508))))

(assert (=> d!646811 (and (>= from!970 0) (<= from!970 lt!802508))))

(assert (=> d!646811 (= (furthestNullablePosition!152 z!540 from!970 (totalInput!3416 thiss!29220) lt!802508 lastNullablePos!109) lt!802516)))

(declare-fun b!2159446 () Bool)

(declare-fun lt!802517 () (InoxSet Context!3050))

(declare-fun e!1381641 () Int)

(assert (=> b!2159446 (= e!1381642 (furthestNullablePosition!152 lt!802517 (+ from!970 1) (totalInput!3416 thiss!29220) lt!802508 e!1381641))))

(declare-fun derivationStepZipper!116 ((InoxSet Context!3050) C!12056) (InoxSet Context!3050))

(declare-fun apply!6051 (BalanceConc!15944 Int) C!12056)

(assert (=> b!2159446 (= lt!802517 (derivationStepZipper!116 z!540 (apply!6051 (totalInput!3416 thiss!29220) from!970)))))

(declare-fun c!341817 () Bool)

(assert (=> b!2159446 (= c!341817 (nullableZipper!244 lt!802517))))

(declare-fun b!2159447 () Bool)

(assert (=> b!2159447 (= e!1381642 lastNullablePos!109)))

(declare-fun b!2159448 () Bool)

(assert (=> b!2159448 (= e!1381641 lastNullablePos!109)))

(declare-fun b!2159449 () Bool)

(declare-fun lostCauseZipper!149 ((InoxSet Context!3050)) Bool)

(assert (=> b!2159449 (= e!1381640 (lostCauseZipper!149 z!540))))

(declare-fun b!2159450 () Bool)

(assert (=> b!2159450 (= e!1381641 from!970)))

(assert (= (and d!646811 (not res!930523)) b!2159449))

(assert (= (and d!646811 c!341816) b!2159447))

(assert (= (and d!646811 (not c!341816)) b!2159446))

(assert (= (and b!2159446 c!341817) b!2159450))

(assert (= (and b!2159446 (not c!341817)) b!2159448))

(declare-fun m!2599212 () Bool)

(assert (=> b!2159446 m!2599212))

(declare-fun m!2599214 () Bool)

(assert (=> b!2159446 m!2599214))

(assert (=> b!2159446 m!2599214))

(declare-fun m!2599216 () Bool)

(assert (=> b!2159446 m!2599216))

(declare-fun m!2599218 () Bool)

(assert (=> b!2159446 m!2599218))

(declare-fun m!2599220 () Bool)

(assert (=> b!2159449 m!2599220))

(assert (=> b!2159427 d!646811))

(declare-fun d!646813 () Bool)

(declare-fun res!930528 () Bool)

(declare-fun e!1381647 () Bool)

(assert (=> d!646813 (=> res!930528 e!1381647)))

(assert (=> d!646813 (= res!930528 ((_ is Nil!24994) (toList!1139 (map!5043 (_2!14717 lt!802511)))))))

(assert (=> d!646813 (= (forall!5148 (toList!1139 (map!5043 (_2!14717 lt!802511))) lambda!81569) e!1381647)))

(declare-fun b!2159455 () Bool)

(declare-fun e!1381648 () Bool)

(assert (=> b!2159455 (= e!1381647 e!1381648)))

(declare-fun res!930529 () Bool)

(assert (=> b!2159455 (=> (not res!930529) (not e!1381648))))

(declare-fun dynLambda!11425 (Int tuple2!24696) Bool)

(assert (=> b!2159455 (= res!930529 (dynLambda!11425 lambda!81569 (h!30395 (toList!1139 (map!5043 (_2!14717 lt!802511))))))))

(declare-fun b!2159456 () Bool)

(assert (=> b!2159456 (= e!1381648 (forall!5148 (t!197626 (toList!1139 (map!5043 (_2!14717 lt!802511)))) lambda!81569))))

(assert (= (and d!646813 (not res!930528)) b!2159455))

(assert (= (and b!2159455 res!930529) b!2159456))

(declare-fun b_lambda!71041 () Bool)

(assert (=> (not b_lambda!71041) (not b!2159455)))

(declare-fun m!2599222 () Bool)

(assert (=> b!2159455 m!2599222))

(declare-fun m!2599224 () Bool)

(assert (=> b!2159456 m!2599224))

(assert (=> b!2159415 d!646813))

(declare-fun d!646815 () Bool)

(declare-fun e!1381651 () Bool)

(assert (=> d!646815 e!1381651))

(declare-fun res!930532 () Bool)

(assert (=> d!646815 (=> (not res!930532) (not e!1381651))))

(assert (=> d!646815 (= res!930532 (and (or (not ((_ is HashMap!2870) (cache!3251 thiss!29220))) ((_ is HashMap!2870) (cache!3251 thiss!29220))) ((_ is HashMap!2870) (cache!3251 thiss!29220))))))

(declare-fun lt!802530 () Unit!38053)

(declare-fun choose!12717 (MutableMap!2870 tuple3!3794 Int Int) Unit!38053)

(assert (=> d!646815 (= lt!802530 (choose!12717 (cache!3251 thiss!29220) lt!802509 res!14508 lambda!81569))))

(declare-fun valid!2281 (MutableMap!2870) Bool)

(assert (=> d!646815 (valid!2281 (cache!3251 thiss!29220))))

(assert (=> d!646815 (= (lemmaUpdatePreservesForallPairs!9 (cache!3251 thiss!29220) lt!802509 res!14508 lambda!81569) lt!802530)))

(declare-fun b!2159459 () Bool)

(declare-fun lt!802534 () MutableMap!2870)

(assert (=> b!2159459 (= e!1381651 (forall!5148 (toList!1139 (map!5043 lt!802534)) lambda!81569))))

(assert (=> b!2159459 ((_ is HashMap!2870) lt!802534)))

(declare-fun lt!802535 () MutableMap!2870)

(assert (=> b!2159459 (= lt!802534 lt!802535)))

(assert (=> b!2159459 ((_ is HashMap!2870) lt!802535)))

(declare-fun lt!802532 () MutableMap!2870)

(assert (=> b!2159459 (= lt!802535 lt!802532)))

(assert (=> b!2159459 ((_ is HashMap!2870) lt!802532)))

(declare-fun lt!802531 () tuple2!24698)

(assert (=> b!2159459 (= lt!802532 (_2!14717 lt!802531))))

(assert (=> b!2159459 ((_ is HashMap!2870) (_2!14717 lt!802531))))

(declare-fun lt!802533 () tuple2!24698)

(assert (=> b!2159459 (= lt!802531 lt!802533)))

(assert (=> b!2159459 ((_ is HashMap!2870) (_2!14717 lt!802533))))

(assert (=> b!2159459 (= lt!802533 (update!108 (cache!3251 thiss!29220) lt!802509 res!14508))))

(assert (= (and d!646815 res!930532) b!2159459))

(declare-fun m!2599226 () Bool)

(assert (=> d!646815 m!2599226))

(declare-fun m!2599228 () Bool)

(assert (=> d!646815 m!2599228))

(declare-fun m!2599230 () Bool)

(assert (=> b!2159459 m!2599230))

(declare-fun m!2599232 () Bool)

(assert (=> b!2159459 m!2599232))

(assert (=> b!2159459 m!2599188))

(assert (=> b!2159415 d!646815))

(declare-fun bs!446003 () Bool)

(declare-fun b!2159465 () Bool)

(assert (= bs!446003 (and b!2159465 b!2159415)))

(declare-fun lambda!81572 () Int)

(assert (=> bs!446003 (= (= (totalInput!3416 thiss!29220) localTotalInput!17) (= lambda!81572 lambda!81569))))

(assert (=> b!2159465 true))

(declare-fun d!646817 () Bool)

(declare-fun res!930537 () Bool)

(declare-fun e!1381654 () Bool)

(assert (=> d!646817 (=> (not res!930537) (not e!1381654))))

(assert (=> d!646817 (= res!930537 (valid!2281 (_2!14717 lt!802511)))))

(assert (=> d!646817 (= (validCacheMapFurthestNullable!193 (_2!14717 lt!802511) (totalInput!3416 thiss!29220)) e!1381654)))

(declare-fun b!2159464 () Bool)

(declare-fun res!930538 () Bool)

(assert (=> b!2159464 (=> (not res!930538) (not e!1381654))))

(declare-fun invariantList!338 (List!25078) Bool)

(assert (=> b!2159464 (= res!930538 (invariantList!338 (toList!1139 (map!5043 (_2!14717 lt!802511)))))))

(assert (=> b!2159465 (= e!1381654 (forall!5148 (toList!1139 (map!5043 (_2!14717 lt!802511))) lambda!81572))))

(assert (= (and d!646817 res!930537) b!2159464))

(assert (= (and b!2159464 res!930538) b!2159465))

(declare-fun m!2599235 () Bool)

(assert (=> d!646817 m!2599235))

(assert (=> b!2159464 m!2599192))

(declare-fun m!2599237 () Bool)

(assert (=> b!2159464 m!2599237))

(assert (=> b!2159465 m!2599192))

(declare-fun m!2599239 () Bool)

(assert (=> b!2159465 m!2599239))

(assert (=> b!2159415 d!646817))

(declare-fun d!646819 () Bool)

(declare-fun lt!802538 () ListMap!739)

(assert (=> d!646819 (invariantList!338 (toList!1139 lt!802538))))

(declare-datatypes ((tuple2!24700 0))(
  ( (tuple2!24701 (_1!14718 (_ BitVec 64)) (_2!14718 List!25078)) )
))
(declare-datatypes ((List!25080 0))(
  ( (Nil!24996) (Cons!24996 (h!30397 tuple2!24700) (t!197628 List!25080)) )
))
(declare-fun extractMap!88 (List!25080) ListMap!739)

(declare-datatypes ((ListLongMap!277 0))(
  ( (ListLongMap!278 (toList!1140 List!25080)) )
))
(declare-fun map!5044 (MutLongMap!2956) ListLongMap!277)

(assert (=> d!646819 (= lt!802538 (extractMap!88 (toList!1140 (map!5044 (v!29382 (underlying!6108 (_2!14717 lt!802511)))))))))

(assert (=> d!646819 (valid!2281 (_2!14717 lt!802511))))

(assert (=> d!646819 (= (map!5043 (_2!14717 lt!802511)) lt!802538)))

(declare-fun bs!446004 () Bool)

(assert (= bs!446004 d!646819))

(declare-fun m!2599241 () Bool)

(assert (=> bs!446004 m!2599241))

(declare-fun m!2599243 () Bool)

(assert (=> bs!446004 m!2599243))

(declare-fun m!2599245 () Bool)

(assert (=> bs!446004 m!2599245))

(assert (=> bs!446004 m!2599235))

(assert (=> b!2159415 d!646819))

(declare-fun bs!446005 () Bool)

(declare-fun b!2159510 () Bool)

(declare-fun b!2159515 () Bool)

(assert (= bs!446005 (and b!2159510 b!2159515)))

(declare-fun lambda!81582 () Int)

(declare-fun lambda!81581 () Int)

(assert (=> bs!446005 (= lambda!81582 lambda!81581)))

(declare-fun bm!129429 () Bool)

(declare-fun c!341834 () Bool)

(declare-fun call!129435 () Bool)

(declare-fun call!129461 () ListLongMap!277)

(declare-fun forall!5149 (List!25080 Int) Bool)

(assert (=> bm!129429 (= call!129435 (forall!5149 (toList!1140 call!129461) (ite c!341834 lambda!81581 lambda!81582)))))

(declare-fun b!2159504 () Bool)

(declare-fun e!1381679 () Bool)

(declare-fun call!129441 () Bool)

(assert (=> b!2159504 (= e!1381679 call!129441)))

(declare-fun b!2159505 () Bool)

(declare-fun e!1381687 () Unit!38053)

(declare-fun Unit!38055 () Unit!38053)

(assert (=> b!2159505 (= e!1381687 Unit!38055)))

(declare-fun bm!129430 () Bool)

(declare-fun call!129458 () Bool)

(declare-fun allKeysSameHashInMap!93 (ListLongMap!277 Hashable!2870) Bool)

(assert (=> bm!129430 (= call!129458 (allKeysSameHashInMap!93 call!129461 (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun lt!802688 () (_ BitVec 64))

(declare-datatypes ((tuple2!24702 0))(
  ( (tuple2!24703 (_1!14719 Bool) (_2!14719 MutLongMap!2956)) )
))
(declare-fun call!129444 () tuple2!24702)

(declare-fun lt!802680 () List!25078)

(declare-fun lt!802649 () (_ BitVec 64))

(declare-fun bm!129431 () Bool)

(declare-fun lt!802676 () List!25078)

(declare-fun update!109 (MutLongMap!2956 (_ BitVec 64) List!25078) tuple2!24702)

(assert (=> bm!129431 (= call!129444 (update!109 (v!29382 (underlying!6108 (cache!3251 thiss!29220))) (ite c!341834 lt!802688 lt!802649) (ite c!341834 lt!802676 lt!802680)))))

(declare-fun call!129434 () Bool)

(declare-fun lt!802695 () ListLongMap!277)

(declare-fun lt!802694 () ListLongMap!277)

(declare-fun bm!129432 () Bool)

(assert (=> bm!129432 (= call!129434 (forall!5149 (ite c!341834 (toList!1140 lt!802694) (toList!1140 lt!802695)) (ite c!341834 lambda!81581 lambda!81582)))))

(declare-fun b!2159506 () Bool)

(declare-fun e!1381682 () Bool)

(assert (=> b!2159506 (= e!1381682 e!1381679)))

(declare-fun res!930552 () Bool)

(declare-fun call!129456 () ListMap!739)

(declare-fun contains!4259 (ListMap!739 tuple3!3794) Bool)

(assert (=> b!2159506 (= res!930552 (contains!4259 call!129456 lt!802509))))

(assert (=> b!2159506 (=> (not res!930552) (not e!1381679))))

(declare-fun bm!129433 () Bool)

(declare-fun call!129464 () Unit!38053)

(declare-fun lt!802668 () ListMap!739)

(declare-fun lt!802691 () ListMap!739)

(declare-fun lt!802690 () ListMap!739)

(declare-fun lt!802673 () ListMap!739)

(declare-fun lemmaEquivalentThenSameContains!6 (ListMap!739 ListMap!739 tuple3!3794) Unit!38053)

(assert (=> bm!129433 (= call!129464 (lemmaEquivalentThenSameContains!6 (ite c!341834 lt!802690 lt!802668) (ite c!341834 lt!802691 lt!802673) lt!802509))))

(declare-fun b!2159507 () Bool)

(declare-fun call!129439 () ListMap!739)

(declare-fun lt!802702 () ListMap!739)

(assert (=> b!2159507 (= call!129439 lt!802702)))

(declare-fun lt!802663 () Unit!38053)

(declare-fun Unit!38056 () Unit!38053)

(assert (=> b!2159507 (= lt!802663 Unit!38056)))

(declare-fun call!129440 () Bool)

(assert (=> b!2159507 call!129440))

(declare-fun e!1381680 () Unit!38053)

(declare-fun Unit!38057 () Unit!38053)

(assert (=> b!2159507 (= e!1381680 Unit!38057)))

(declare-fun call!129457 () Bool)

(declare-fun call!129438 () List!25078)

(declare-fun bm!129434 () Bool)

(declare-fun allKeysSameHash!29 (List!25078 (_ BitVec 64) Hashable!2870) Bool)

(assert (=> bm!129434 (= call!129457 (allKeysSameHash!29 call!129438 (ite c!341834 lt!802688 lt!802649) (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun b!2159508 () Bool)

(declare-fun e!1381681 () ListMap!739)

(declare-fun call!129459 () ListMap!739)

(declare-fun +!45 (ListMap!739 tuple2!24696) ListMap!739)

(assert (=> b!2159508 (= e!1381681 (+!45 call!129459 (tuple2!24697 lt!802509 res!14508)))))

(declare-fun b!2159509 () Bool)

(assert (=> b!2159509 (= e!1381682 call!129441)))

(declare-fun call!129442 () Bool)

(declare-fun bm!129435 () Bool)

(assert (=> bm!129435 (= call!129442 (contains!4259 (ite c!341834 lt!802691 lt!802673) lt!802509))))

(declare-fun bm!129436 () Bool)

(declare-fun call!129447 () ListMap!739)

(assert (=> bm!129436 (= call!129439 call!129447)))

(assert (=> b!2159510 (contains!4259 call!129439 lt!802509)))

(declare-fun lt!802674 () Unit!38053)

(declare-fun Unit!38058 () Unit!38053)

(assert (=> b!2159510 (= lt!802674 Unit!38058)))

(declare-fun call!129454 () ListMap!739)

(assert (=> b!2159510 (contains!4259 call!129454 lt!802509)))

(declare-fun lt!802653 () Unit!38053)

(declare-fun lt!802678 () Unit!38053)

(assert (=> b!2159510 (= lt!802653 lt!802678)))

(declare-fun call!129453 () Bool)

(assert (=> b!2159510 (= call!129453 call!129442)))

(assert (=> b!2159510 (= lt!802678 call!129464)))

(assert (=> b!2159510 (= lt!802673 call!129454)))

(assert (=> b!2159510 (= lt!802668 call!129439)))

(declare-fun lt!802667 () Unit!38053)

(declare-fun Unit!38059 () Unit!38053)

(assert (=> b!2159510 (= lt!802667 Unit!38059)))

(declare-fun call!129443 () Bool)

(assert (=> b!2159510 call!129443))

(declare-fun lt!802659 () Unit!38053)

(declare-fun Unit!38060 () Unit!38053)

(assert (=> b!2159510 (= lt!802659 Unit!38060)))

(assert (=> b!2159510 call!129458))

(declare-fun lt!802689 () Unit!38053)

(declare-fun Unit!38061 () Unit!38053)

(assert (=> b!2159510 (= lt!802689 Unit!38061)))

(assert (=> b!2159510 call!129435))

(declare-fun lt!802698 () Unit!38053)

(declare-fun lt!802665 () Unit!38053)

(assert (=> b!2159510 (= lt!802698 lt!802665)))

(declare-fun call!129455 () Bool)

(assert (=> b!2159510 call!129455))

(declare-fun lt!802701 () ListLongMap!277)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!6 (ListLongMap!277 (_ BitVec 64) List!25078 tuple3!3794 Int Hashable!2870) Unit!38053)

(assert (=> b!2159510 (= lt!802665 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!6 lt!802701 lt!802649 lt!802680 lt!802509 res!14508 (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun lt!802660 () Unit!38053)

(declare-fun lt!802652 () Unit!38053)

(assert (=> b!2159510 (= lt!802660 lt!802652)))

(declare-fun e!1381677 () Bool)

(assert (=> b!2159510 e!1381677))

(declare-fun res!930553 () Bool)

(assert (=> b!2159510 (=> (not res!930553) (not e!1381677))))

(assert (=> b!2159510 (= res!930553 call!129434)))

(declare-fun call!129452 () ListLongMap!277)

(assert (=> b!2159510 (= lt!802695 call!129452)))

(declare-fun call!129449 () Unit!38053)

(assert (=> b!2159510 (= lt!802652 call!129449)))

(declare-fun lt!802696 () Unit!38053)

(assert (=> b!2159510 (= lt!802696 e!1381687)))

(declare-fun c!341833 () Bool)

(declare-fun lt!802662 () List!25078)

(declare-fun isEmpty!14350 (List!25078) Bool)

(assert (=> b!2159510 (= c!341833 (not (isEmpty!14350 lt!802662)))))

(declare-fun Unit!38062 () Unit!38053)

(assert (=> b!2159510 (= e!1381680 Unit!38062)))

(declare-fun lt!802677 () tuple2!24702)

(declare-fun bm!129437 () Bool)

(declare-fun lt!802699 () tuple2!24702)

(assert (=> bm!129437 (= call!129461 (map!5044 (ite c!341834 (_2!14719 lt!802699) (_2!14719 lt!802677))))))

(declare-fun bm!129438 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!25 (ListLongMap!277 (_ BitVec 64) List!25078 Hashable!2870) Unit!38053)

(assert (=> bm!129438 (= call!129449 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!25 lt!802701 (ite c!341834 lt!802688 lt!802649) (ite c!341834 lt!802676 lt!802680) (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun e!1381683 () tuple2!24698)

(declare-fun b!2159511 () Bool)

(declare-fun lt!802666 () MutableMap!2870)

(declare-datatypes ((tuple2!24704 0))(
  ( (tuple2!24705 (_1!14720 Unit!38053) (_2!14720 MutableMap!2870)) )
))
(declare-fun Unit!38063 () Unit!38053)

(declare-fun Unit!38064 () Unit!38053)

(assert (=> b!2159511 (= e!1381683 (tuple2!24699 (_1!14719 lt!802677) (_2!14720 (ite (_1!14719 lt!802677) (tuple2!24705 Unit!38063 (HashMap!2870 (Cell!11652 (_2!14719 lt!802677)) (hashF!4793 (cache!3251 thiss!29220)) (bvadd (_size!5964 (cache!3251 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3032 (cache!3251 thiss!29220)))) (tuple2!24705 Unit!38064 lt!802666)))))))

(declare-fun call!129462 () (_ BitVec 64))

(assert (=> b!2159511 (= lt!802649 call!129462)))

(declare-fun c!341835 () Bool)

(declare-fun contains!4260 (MutLongMap!2956 (_ BitVec 64)) Bool)

(assert (=> b!2159511 (= c!341835 (contains!4260 (v!29382 (underlying!6108 (cache!3251 thiss!29220))) lt!802649))))

(declare-fun e!1381684 () List!25078)

(assert (=> b!2159511 (= lt!802662 e!1381684)))

(assert (=> b!2159511 (= lt!802680 (Cons!24994 (tuple2!24697 lt!802509 res!14508) lt!802662))))

(assert (=> b!2159511 (= lt!802677 call!129444)))

(assert (=> b!2159511 (= lt!802666 (HashMap!2870 (Cell!11652 (_2!14719 lt!802677)) (hashF!4793 (cache!3251 thiss!29220)) (_size!5964 (cache!3251 thiss!29220)) (defaultValue!3032 (cache!3251 thiss!29220))))))

(declare-fun c!341837 () Bool)

(assert (=> b!2159511 (= c!341837 (_1!14719 lt!802677))))

(declare-fun lt!802685 () Unit!38053)

(assert (=> b!2159511 (= lt!802685 e!1381680)))

(declare-fun lt!802672 () MutableMap!2870)

(declare-fun bm!129439 () Bool)

(assert (=> bm!129439 (= call!129440 (valid!2281 (ite c!341834 lt!802672 lt!802666)))))

(declare-fun lt!802686 () List!25078)

(declare-fun bm!129440 () Bool)

(declare-fun call!129448 () Unit!38053)

(declare-fun lemmaRemovePairForKeyPreservesHash!25 (List!25078 tuple3!3794 (_ BitVec 64) Hashable!2870) Unit!38053)

(assert (=> bm!129440 (= call!129448 (lemmaRemovePairForKeyPreservesHash!25 (ite c!341834 lt!802686 lt!802662) lt!802509 (ite c!341834 lt!802688 lt!802649) (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun b!2159512 () Bool)

(declare-fun e!1381678 () Bool)

(declare-fun call!129437 () Bool)

(assert (=> b!2159512 (= e!1381678 call!129437)))

(declare-fun bm!129441 () Bool)

(assert (=> bm!129441 (= call!129447 (map!5043 (ite c!341834 lt!802672 lt!802666)))))

(declare-fun b!2159513 () Bool)

(declare-fun call!129460 () ListMap!739)

(assert (=> b!2159513 (= call!129460 lt!802702)))

(declare-fun lt!802682 () Unit!38053)

(declare-fun Unit!38065 () Unit!38053)

(assert (=> b!2159513 (= lt!802682 Unit!38065)))

(assert (=> b!2159513 call!129440))

(declare-fun e!1381685 () Unit!38053)

(declare-fun Unit!38066 () Unit!38053)

(assert (=> b!2159513 (= e!1381685 Unit!38066)))

(declare-fun bm!129442 () Bool)

(declare-fun call!129463 () List!25078)

(declare-fun apply!6052 (MutLongMap!2956 (_ BitVec 64)) List!25078)

(assert (=> bm!129442 (= call!129463 (apply!6052 (v!29382 (underlying!6108 (cache!3251 thiss!29220))) (ite c!341834 lt!802688 lt!802649)))))

(declare-fun bm!129443 () Bool)

(declare-fun call!129445 () ListMap!739)

(declare-fun call!129451 () ListMap!739)

(assert (=> bm!129443 (= call!129451 (+!45 call!129445 (tuple2!24697 lt!802509 res!14508)))))

(declare-fun bm!129444 () Bool)

(declare-fun hash!558 (Hashable!2870 tuple3!3794) (_ BitVec 64))

(assert (=> bm!129444 (= call!129462 (hash!558 (hashF!4793 (cache!3251 thiss!29220)) lt!802509))))

(declare-fun bm!129445 () Bool)

(assert (=> bm!129445 (= call!129454 (+!45 lt!802702 (tuple2!24697 lt!802509 res!14508)))))

(declare-fun bm!129446 () Bool)

(declare-fun removePairForKey!25 (List!25078 tuple3!3794) List!25078)

(assert (=> bm!129446 (= call!129438 (removePairForKey!25 (ite c!341834 lt!802686 lt!802662) lt!802509))))

(declare-fun bm!129447 () Bool)

(declare-fun eq!46 (ListMap!739 ListMap!739) Bool)

(assert (=> bm!129447 (= call!129443 (eq!46 (ite c!341834 call!129460 call!129439) call!129454))))

(declare-fun d!646821 () Bool)

(declare-fun e!1381686 () Bool)

(assert (=> d!646821 e!1381686))

(declare-fun res!930550 () Bool)

(assert (=> d!646821 (=> (not res!930550) (not e!1381686))))

(declare-fun lt!802684 () tuple2!24698)

(assert (=> d!646821 (= res!930550 ((_ is HashMap!2870) (_2!14717 lt!802684)))))

(declare-fun lt!802651 () tuple2!24698)

(assert (=> d!646821 (= lt!802684 (tuple2!24699 (_1!14717 lt!802651) (_2!14717 lt!802651)))))

(assert (=> d!646821 (= lt!802651 e!1381683)))

(declare-fun contains!4261 (MutableMap!2870 tuple3!3794) Bool)

(assert (=> d!646821 (= c!341834 (contains!4261 (cache!3251 thiss!29220) lt!802509))))

(assert (=> d!646821 (= lt!802701 (map!5044 (v!29382 (underlying!6108 (cache!3251 thiss!29220)))))))

(assert (=> d!646821 (= lt!802702 (map!5043 (cache!3251 thiss!29220)))))

(assert (=> d!646821 (valid!2281 (cache!3251 thiss!29220))))

(assert (=> d!646821 (= (update!108 (cache!3251 thiss!29220) lt!802509 res!14508) lt!802684)))

(declare-fun b!2159514 () Bool)

(assert (=> b!2159514 (= e!1381677 call!129437)))

(assert (=> b!2159515 call!129443))

(declare-fun lt!802654 () Unit!38053)

(declare-fun Unit!38067 () Unit!38053)

(assert (=> b!2159515 (= lt!802654 Unit!38067)))

(assert (=> b!2159515 call!129458))

(declare-fun lt!802692 () Unit!38053)

(declare-fun Unit!38068 () Unit!38053)

(assert (=> b!2159515 (= lt!802692 Unit!38068)))

(assert (=> b!2159515 call!129435))

(declare-fun lt!802650 () Unit!38053)

(declare-fun lt!802670 () Unit!38053)

(assert (=> b!2159515 (= lt!802650 lt!802670)))

(assert (=> b!2159515 (= call!129453 call!129442)))

(assert (=> b!2159515 (= lt!802670 call!129464)))

(assert (=> b!2159515 (= lt!802691 call!129454)))

(assert (=> b!2159515 (= lt!802690 call!129460)))

(declare-fun lt!802675 () Unit!38053)

(declare-fun lt!802697 () Unit!38053)

(assert (=> b!2159515 (= lt!802675 lt!802697)))

(assert (=> b!2159515 call!129455))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!6 (ListLongMap!277 (_ BitVec 64) List!25078 tuple3!3794 Int Hashable!2870) Unit!38053)

(assert (=> b!2159515 (= lt!802697 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!6 lt!802701 lt!802688 lt!802676 lt!802509 res!14508 (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun lt!802679 () Unit!38053)

(declare-fun lt!802671 () Unit!38053)

(assert (=> b!2159515 (= lt!802679 lt!802671)))

(assert (=> b!2159515 e!1381678))

(declare-fun res!930551 () Bool)

(assert (=> b!2159515 (=> (not res!930551) (not e!1381678))))

(assert (=> b!2159515 (= res!930551 call!129434)))

(assert (=> b!2159515 (= lt!802694 call!129452)))

(assert (=> b!2159515 (= lt!802671 call!129449)))

(declare-fun lt!802655 () Unit!38053)

(declare-fun Unit!38069 () Unit!38053)

(assert (=> b!2159515 (= lt!802655 Unit!38069)))

(declare-fun noDuplicateKeys!31 (List!25078) Bool)

(assert (=> b!2159515 (noDuplicateKeys!31 lt!802676)))

(declare-fun lt!802693 () Unit!38053)

(declare-fun Unit!38070 () Unit!38053)

(assert (=> b!2159515 (= lt!802693 Unit!38070)))

(declare-fun containsKey!59 (List!25078 tuple3!3794) Bool)

(assert (=> b!2159515 (not (containsKey!59 call!129438 lt!802509))))

(declare-fun lt!802669 () Unit!38053)

(declare-fun Unit!38071 () Unit!38053)

(assert (=> b!2159515 (= lt!802669 Unit!38071)))

(declare-fun lt!802703 () Unit!38053)

(declare-fun lt!802681 () Unit!38053)

(assert (=> b!2159515 (= lt!802703 lt!802681)))

(assert (=> b!2159515 (noDuplicateKeys!31 call!129438)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!25 (List!25078 tuple3!3794) Unit!38053)

(assert (=> b!2159515 (= lt!802681 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!25 lt!802686 lt!802509))))

(declare-fun lt!802687 () Unit!38053)

(declare-fun lt!802683 () Unit!38053)

(assert (=> b!2159515 (= lt!802687 lt!802683)))

(assert (=> b!2159515 call!129457))

(assert (=> b!2159515 (= lt!802683 call!129448)))

(declare-fun lt!802658 () Unit!38053)

(declare-fun lt!802664 () Unit!38053)

(assert (=> b!2159515 (= lt!802658 lt!802664)))

(declare-fun call!129436 () Bool)

(assert (=> b!2159515 call!129436))

(declare-fun call!129450 () Unit!38053)

(assert (=> b!2159515 (= lt!802664 call!129450)))

(declare-fun Unit!38072 () Unit!38053)

(assert (=> b!2159515 (= e!1381685 Unit!38072)))

(declare-fun bm!129448 () Bool)

(declare-fun c!341838 () Bool)

(assert (=> bm!129448 (= call!129459 (map!5043 (ite c!341838 (cache!3251 thiss!29220) (_2!14717 lt!802684))))))

(declare-fun bm!129449 () Bool)

(declare-fun call!129446 () ListMap!739)

(assert (=> bm!129449 (= call!129455 (eq!46 call!129446 call!129451))))

(declare-fun b!2159516 () Bool)

(assert (=> b!2159516 (= e!1381681 call!129456)))

(declare-fun bm!129450 () Bool)

(assert (=> bm!129450 (= call!129446 (extractMap!88 (toList!1140 call!129452)))))

(declare-fun bm!129451 () Bool)

(assert (=> bm!129451 (= call!129460 call!129447)))

(declare-fun b!2159517 () Bool)

(declare-fun lt!802700 () Unit!38053)

(assert (=> b!2159517 (= e!1381687 lt!802700)))

(declare-fun lt!802657 () Unit!38053)

(assert (=> b!2159517 (= lt!802657 call!129450)))

(assert (=> b!2159517 call!129436))

(declare-fun lt!802661 () Unit!38053)

(assert (=> b!2159517 (= lt!802661 lt!802657)))

(assert (=> b!2159517 (= lt!802700 call!129448)))

(assert (=> b!2159517 call!129457))

(declare-fun bm!129452 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!25 (List!25080 (_ BitVec 64) List!25078 Hashable!2870) Unit!38053)

(assert (=> bm!129452 (= call!129450 (lemmaInLongMapAllKeySameHashThenForTuple!25 (toList!1140 lt!802701) (ite c!341834 lt!802688 lt!802649) (ite c!341834 lt!802686 lt!802662) (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun bm!129453 () Bool)

(assert (=> bm!129453 (= call!129456 (map!5043 (ite c!341838 (_2!14717 lt!802684) (cache!3251 thiss!29220))))))

(declare-fun b!2159518 () Bool)

(declare-fun Unit!38073 () Unit!38053)

(declare-fun Unit!38074 () Unit!38053)

(assert (=> b!2159518 (= e!1381683 (tuple2!24699 (_1!14719 lt!802699) (_2!14720 (ite false (tuple2!24705 Unit!38073 (HashMap!2870 (Cell!11652 (_2!14719 lt!802699)) (hashF!4793 (cache!3251 thiss!29220)) (bvadd (_size!5964 (cache!3251 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3032 (cache!3251 thiss!29220)))) (tuple2!24705 Unit!38074 lt!802672)))))))

(assert (=> b!2159518 (= lt!802688 call!129462)))

(assert (=> b!2159518 (= lt!802686 call!129463)))

(assert (=> b!2159518 (= lt!802676 (Cons!24994 (tuple2!24697 lt!802509 res!14508) call!129438))))

(assert (=> b!2159518 (= lt!802699 call!129444)))

(assert (=> b!2159518 (= lt!802672 (HashMap!2870 (Cell!11652 (_2!14719 lt!802699)) (hashF!4793 (cache!3251 thiss!29220)) (_size!5964 (cache!3251 thiss!29220)) (defaultValue!3032 (cache!3251 thiss!29220))))))

(declare-fun c!341832 () Bool)

(assert (=> b!2159518 (= c!341832 (_1!14719 lt!802699))))

(declare-fun lt!802656 () Unit!38053)

(assert (=> b!2159518 (= lt!802656 e!1381685)))

(declare-fun bm!129454 () Bool)

(assert (=> bm!129454 (= call!129453 (contains!4259 (ite c!341834 lt!802690 lt!802668) lt!802509))))

(declare-fun bm!129455 () Bool)

(assert (=> bm!129455 (= call!129436 (allKeysSameHash!29 (ite c!341834 lt!802686 lt!802662) (ite c!341834 lt!802688 lt!802649) (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun bm!129456 () Bool)

(declare-fun +!46 (ListLongMap!277 tuple2!24700) ListLongMap!277)

(assert (=> bm!129456 (= call!129452 (+!46 lt!802701 (ite c!341834 (tuple2!24701 lt!802688 lt!802676) (tuple2!24701 lt!802649 lt!802680))))))

(declare-fun bm!129457 () Bool)

(assert (=> bm!129457 (= call!129441 (eq!46 (ite c!341838 call!129456 call!129459) e!1381681))))

(declare-fun c!341836 () Bool)

(assert (=> bm!129457 (= c!341836 c!341838)))

(declare-fun b!2159519 () Bool)

(assert (=> b!2159519 (= e!1381686 e!1381682)))

(assert (=> b!2159519 (= c!341838 (_1!14717 lt!802684))))

(declare-fun b!2159520 () Bool)

(assert (=> b!2159520 (= e!1381684 call!129463)))

(declare-fun b!2159521 () Bool)

(assert (=> b!2159521 (= e!1381684 Nil!24994)))

(declare-fun bm!129458 () Bool)

(assert (=> bm!129458 (= call!129445 (extractMap!88 (toList!1140 lt!802701)))))

(declare-fun bm!129459 () Bool)

(assert (=> bm!129459 (= call!129437 (allKeysSameHashInMap!93 (ite c!341834 lt!802694 lt!802695) (hashF!4793 (cache!3251 thiss!29220))))))

(declare-fun b!2159522 () Bool)

(declare-fun res!930549 () Bool)

(assert (=> b!2159522 (=> (not res!930549) (not e!1381686))))

(assert (=> b!2159522 (= res!930549 (valid!2281 (_2!14717 lt!802684)))))

(assert (= (and d!646821 c!341834) b!2159518))

(assert (= (and d!646821 (not c!341834)) b!2159511))

(assert (= (and b!2159518 c!341832) b!2159515))

(assert (= (and b!2159518 (not c!341832)) b!2159513))

(assert (= (and b!2159515 res!930551) b!2159512))

(assert (= (or b!2159515 b!2159513) bm!129451))

(assert (= (and b!2159511 c!341835) b!2159520))

(assert (= (and b!2159511 (not c!341835)) b!2159521))

(assert (= (and b!2159511 c!341837) b!2159510))

(assert (= (and b!2159511 (not c!341837)) b!2159507))

(assert (= (and b!2159510 c!341833) b!2159517))

(assert (= (and b!2159510 (not c!341833)) b!2159505))

(assert (= (and b!2159510 res!930553) b!2159514))

(assert (= (or b!2159510 b!2159507) bm!129436))

(assert (= (or b!2159515 b!2159510) bm!129445))

(assert (= (or b!2159515 b!2159510) bm!129432))

(assert (= (or b!2159515 b!2159510) bm!129456))

(assert (= (or b!2159515 b!2159517) bm!129440))

(assert (= (or b!2159513 b!2159507) bm!129439))

(assert (= (or b!2159515 b!2159517) bm!129452))

(assert (= (or b!2159515 b!2159510) bm!129454))

(assert (= (or b!2159515 b!2159510) bm!129437))

(assert (= (or b!2159518 b!2159511) bm!129431))

(assert (= (or bm!129451 bm!129436) bm!129441))

(assert (= (or b!2159512 b!2159514) bm!129459))

(assert (= (or b!2159515 b!2159510) bm!129433))

(assert (= (or b!2159515 b!2159517) bm!129455))

(assert (= (or b!2159515 b!2159510) bm!129458))

(assert (= (or b!2159518 b!2159520) bm!129442))

(assert (= (or b!2159518 b!2159511) bm!129444))

(assert (= (or b!2159515 b!2159518 b!2159517) bm!129446))

(assert (= (or b!2159515 b!2159510) bm!129438))

(assert (= (or b!2159515 b!2159510) bm!129435))

(assert (= (or b!2159515 b!2159510) bm!129447))

(assert (= (or b!2159515 b!2159510) bm!129450))

(assert (= (or b!2159515 b!2159510) bm!129443))

(assert (= (or b!2159515 b!2159510) bm!129429))

(assert (= (or b!2159515 b!2159517) bm!129434))

(assert (= (or b!2159515 b!2159510) bm!129430))

(assert (= (or b!2159515 b!2159510) bm!129449))

(assert (= (and d!646821 res!930550) b!2159522))

(assert (= (and b!2159522 res!930549) b!2159519))

(assert (= (and b!2159519 c!341838) b!2159506))

(assert (= (and b!2159519 (not c!341838)) b!2159509))

(assert (= (and b!2159506 res!930552) b!2159504))

(assert (= (or b!2159506 b!2159504 b!2159509) bm!129453))

(assert (= (or b!2159504 b!2159509) bm!129448))

(assert (= (or b!2159504 b!2159509) bm!129457))

(assert (= (and bm!129457 c!341836) b!2159508))

(assert (= (and bm!129457 (not c!341836)) b!2159516))

(declare-fun m!2599247 () Bool)

(assert (=> bm!129430 m!2599247))

(declare-fun m!2599249 () Bool)

(assert (=> bm!129432 m!2599249))

(declare-fun m!2599251 () Bool)

(assert (=> b!2159508 m!2599251))

(declare-fun m!2599253 () Bool)

(assert (=> bm!129437 m!2599253))

(declare-fun m!2599255 () Bool)

(assert (=> bm!129435 m!2599255))

(declare-fun m!2599257 () Bool)

(assert (=> d!646821 m!2599257))

(declare-fun m!2599259 () Bool)

(assert (=> d!646821 m!2599259))

(declare-fun m!2599261 () Bool)

(assert (=> d!646821 m!2599261))

(assert (=> d!646821 m!2599228))

(declare-fun m!2599263 () Bool)

(assert (=> bm!129438 m!2599263))

(declare-fun m!2599265 () Bool)

(assert (=> bm!129433 m!2599265))

(declare-fun m!2599267 () Bool)

(assert (=> bm!129439 m!2599267))

(declare-fun m!2599269 () Bool)

(assert (=> bm!129455 m!2599269))

(declare-fun m!2599271 () Bool)

(assert (=> b!2159510 m!2599271))

(declare-fun m!2599273 () Bool)

(assert (=> b!2159510 m!2599273))

(declare-fun m!2599275 () Bool)

(assert (=> b!2159510 m!2599275))

(declare-fun m!2599277 () Bool)

(assert (=> b!2159510 m!2599277))

(declare-fun m!2599279 () Bool)

(assert (=> bm!129448 m!2599279))

(declare-fun m!2599281 () Bool)

(assert (=> bm!129429 m!2599281))

(declare-fun m!2599283 () Bool)

(assert (=> b!2159515 m!2599283))

(declare-fun m!2599285 () Bool)

(assert (=> b!2159515 m!2599285))

(declare-fun m!2599287 () Bool)

(assert (=> b!2159515 m!2599287))

(declare-fun m!2599289 () Bool)

(assert (=> b!2159515 m!2599289))

(declare-fun m!2599291 () Bool)

(assert (=> b!2159515 m!2599291))

(declare-fun m!2599293 () Bool)

(assert (=> bm!129441 m!2599293))

(declare-fun m!2599295 () Bool)

(assert (=> bm!129450 m!2599295))

(declare-fun m!2599297 () Bool)

(assert (=> bm!129458 m!2599297))

(declare-fun m!2599299 () Bool)

(assert (=> bm!129446 m!2599299))

(declare-fun m!2599301 () Bool)

(assert (=> b!2159522 m!2599301))

(declare-fun m!2599303 () Bool)

(assert (=> bm!129459 m!2599303))

(declare-fun m!2599305 () Bool)

(assert (=> bm!129442 m!2599305))

(declare-fun m!2599307 () Bool)

(assert (=> bm!129443 m!2599307))

(declare-fun m!2599309 () Bool)

(assert (=> bm!129449 m!2599309))

(declare-fun m!2599311 () Bool)

(assert (=> bm!129457 m!2599311))

(declare-fun m!2599313 () Bool)

(assert (=> b!2159506 m!2599313))

(declare-fun m!2599315 () Bool)

(assert (=> bm!129453 m!2599315))

(declare-fun m!2599317 () Bool)

(assert (=> bm!129447 m!2599317))

(declare-fun m!2599319 () Bool)

(assert (=> bm!129454 m!2599319))

(declare-fun m!2599321 () Bool)

(assert (=> bm!129434 m!2599321))

(declare-fun m!2599323 () Bool)

(assert (=> b!2159511 m!2599323))

(declare-fun m!2599325 () Bool)

(assert (=> bm!129445 m!2599325))

(declare-fun m!2599327 () Bool)

(assert (=> bm!129452 m!2599327))

(declare-fun m!2599329 () Bool)

(assert (=> bm!129431 m!2599329))

(declare-fun m!2599331 () Bool)

(assert (=> bm!129444 m!2599331))

(declare-fun m!2599333 () Bool)

(assert (=> bm!129456 m!2599333))

(declare-fun m!2599335 () Bool)

(assert (=> bm!129440 m!2599335))

(assert (=> b!2159415 d!646821))

(declare-fun d!646823 () Bool)

(declare-fun lambda!81585 () Int)

(declare-fun forall!5150 (List!25077 Int) Bool)

(assert (=> d!646823 (= (inv!33096 setElem!17953) (forall!5150 (exprs!2025 setElem!17953) lambda!81585))))

(declare-fun bs!446006 () Bool)

(assert (= bs!446006 d!646823))

(declare-fun m!2599337 () Bool)

(assert (=> bs!446006 m!2599337))

(assert (=> setNonEmpty!17953 d!646823))

(declare-fun d!646825 () Bool)

(declare-fun c!341841 () Bool)

(assert (=> d!646825 (= c!341841 ((_ is Node!8091) (c!341811 (totalInput!3416 thiss!29220))))))

(declare-fun e!1381692 () Bool)

(assert (=> d!646825 (= (inv!33097 (c!341811 (totalInput!3416 thiss!29220))) e!1381692)))

(declare-fun b!2159529 () Bool)

(declare-fun inv!33098 (Conc!8091) Bool)

(assert (=> b!2159529 (= e!1381692 (inv!33098 (c!341811 (totalInput!3416 thiss!29220))))))

(declare-fun b!2159530 () Bool)

(declare-fun e!1381693 () Bool)

(assert (=> b!2159530 (= e!1381692 e!1381693)))

(declare-fun res!930556 () Bool)

(assert (=> b!2159530 (= res!930556 (not ((_ is Leaf!11836) (c!341811 (totalInput!3416 thiss!29220)))))))

(assert (=> b!2159530 (=> res!930556 e!1381693)))

(declare-fun b!2159531 () Bool)

(declare-fun inv!33099 (Conc!8091) Bool)

(assert (=> b!2159531 (= e!1381693 (inv!33099 (c!341811 (totalInput!3416 thiss!29220))))))

(assert (= (and d!646825 c!341841) b!2159529))

(assert (= (and d!646825 (not c!341841)) b!2159530))

(assert (= (and b!2159530 (not res!930556)) b!2159531))

(declare-fun m!2599339 () Bool)

(assert (=> b!2159529 m!2599339))

(declare-fun m!2599341 () Bool)

(assert (=> b!2159531 m!2599341))

(assert (=> b!2159419 d!646825))

(declare-fun d!646827 () Bool)

(declare-fun lt!802706 () Int)

(declare-fun size!19549 (List!25079) Int)

(declare-fun list!9576 (BalanceConc!15944) List!25079)

(assert (=> d!646827 (= lt!802706 (size!19549 (list!9576 (totalInput!3416 thiss!29220))))))

(declare-fun size!19550 (Conc!8091) Int)

(assert (=> d!646827 (= lt!802706 (size!19550 (c!341811 (totalInput!3416 thiss!29220))))))

(assert (=> d!646827 (= (size!19548 (totalInput!3416 thiss!29220)) lt!802706)))

(declare-fun bs!446007 () Bool)

(assert (= bs!446007 d!646827))

(declare-fun m!2599343 () Bool)

(assert (=> bs!446007 m!2599343))

(assert (=> bs!446007 m!2599343))

(declare-fun m!2599345 () Bool)

(assert (=> bs!446007 m!2599345))

(declare-fun m!2599347 () Bool)

(assert (=> bs!446007 m!2599347))

(assert (=> b!2159424 d!646827))

(declare-fun d!646829 () Bool)

(assert (=> d!646829 (= (inv!33094 (totalInput!3416 thiss!29220)) (isBalanced!2514 (c!341811 (totalInput!3416 thiss!29220))))))

(declare-fun bs!446008 () Bool)

(assert (= bs!446008 d!646829))

(declare-fun m!2599349 () Bool)

(assert (=> bs!446008 m!2599349))

(assert (=> b!2159429 d!646829))

(declare-fun d!646831 () Bool)

(assert (=> d!646831 (= (array_inv!3236 (_keys!3253 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) (bvsge (size!19546 (_keys!3253 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2159416 d!646831))

(declare-fun d!646833 () Bool)

(assert (=> d!646833 (= (array_inv!3237 (_values!3236 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) (bvsge (size!19547 (_values!3236 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2159416 d!646833))

(declare-fun d!646835 () Bool)

(declare-fun lambda!81588 () Int)

(declare-fun exists!746 ((InoxSet Context!3050) Int) Bool)

(assert (=> d!646835 (= (nullableZipper!244 z!540) (exists!746 z!540 lambda!81588))))

(declare-fun bs!446009 () Bool)

(assert (= bs!446009 d!646835))

(declare-fun m!2599351 () Bool)

(assert (=> bs!446009 m!2599351))

(assert (=> b!2159420 d!646835))

(declare-fun bs!446010 () Bool)

(declare-fun b!2159533 () Bool)

(assert (= bs!446010 (and b!2159533 b!2159415)))

(declare-fun lambda!81589 () Int)

(assert (=> bs!446010 (= (= (totalInput!3416 thiss!29220) localTotalInput!17) (= lambda!81589 lambda!81569))))

(declare-fun bs!446011 () Bool)

(assert (= bs!446011 (and b!2159533 b!2159465)))

(assert (=> bs!446011 (= lambda!81589 lambda!81572)))

(assert (=> b!2159533 true))

(declare-fun d!646837 () Bool)

(declare-fun res!930557 () Bool)

(declare-fun e!1381694 () Bool)

(assert (=> d!646837 (=> (not res!930557) (not e!1381694))))

(assert (=> d!646837 (= res!930557 (valid!2281 (cache!3251 thiss!29220)))))

(assert (=> d!646837 (= (validCacheMapFurthestNullable!193 (cache!3251 thiss!29220) (totalInput!3416 thiss!29220)) e!1381694)))

(declare-fun b!2159532 () Bool)

(declare-fun res!930558 () Bool)

(assert (=> b!2159532 (=> (not res!930558) (not e!1381694))))

(assert (=> b!2159532 (= res!930558 (invariantList!338 (toList!1139 (map!5043 (cache!3251 thiss!29220)))))))

(assert (=> b!2159533 (= e!1381694 (forall!5148 (toList!1139 (map!5043 (cache!3251 thiss!29220))) lambda!81589))))

(assert (= (and d!646837 res!930557) b!2159532))

(assert (= (and b!2159532 res!930558) b!2159533))

(assert (=> d!646837 m!2599228))

(assert (=> b!2159532 m!2599261))

(declare-fun m!2599353 () Bool)

(assert (=> b!2159532 m!2599353))

(assert (=> b!2159533 m!2599261))

(declare-fun m!2599355 () Bool)

(assert (=> b!2159533 m!2599355))

(assert (=> b!2159421 d!646837))

(declare-fun d!646839 () Bool)

(declare-fun c!341844 () Bool)

(assert (=> d!646839 (= c!341844 ((_ is Node!8091) (c!341811 localTotalInput!17)))))

(declare-fun e!1381695 () Bool)

(assert (=> d!646839 (= (inv!33097 (c!341811 localTotalInput!17)) e!1381695)))

(declare-fun b!2159534 () Bool)

(assert (=> b!2159534 (= e!1381695 (inv!33098 (c!341811 localTotalInput!17)))))

(declare-fun b!2159535 () Bool)

(declare-fun e!1381696 () Bool)

(assert (=> b!2159535 (= e!1381695 e!1381696)))

(declare-fun res!930559 () Bool)

(assert (=> b!2159535 (= res!930559 (not ((_ is Leaf!11836) (c!341811 localTotalInput!17))))))

(assert (=> b!2159535 (=> res!930559 e!1381696)))

(declare-fun b!2159536 () Bool)

(assert (=> b!2159536 (= e!1381696 (inv!33099 (c!341811 localTotalInput!17)))))

(assert (= (and d!646839 c!341844) b!2159534))

(assert (= (and d!646839 (not c!341844)) b!2159535))

(assert (= (and b!2159535 (not res!930559)) b!2159536))

(declare-fun m!2599357 () Bool)

(assert (=> b!2159534 m!2599357))

(declare-fun m!2599359 () Bool)

(assert (=> b!2159536 m!2599359))

(assert (=> b!2159425 d!646839))

(declare-fun b!2159541 () Bool)

(declare-fun e!1381699 () Bool)

(declare-fun tp!673306 () Bool)

(declare-fun tp!673307 () Bool)

(assert (=> b!2159541 (= e!1381699 (and tp!673306 tp!673307))))

(assert (=> b!2159414 (= tp!673291 e!1381699)))

(assert (= (and b!2159414 ((_ is Cons!24993) (exprs!2025 setElem!17953))) b!2159541))

(declare-fun mapIsEmpty!13955 () Bool)

(declare-fun mapRes!13955 () Bool)

(assert (=> mapIsEmpty!13955 mapRes!13955))

(declare-fun setIsEmpty!17958 () Bool)

(declare-fun setRes!17958 () Bool)

(assert (=> setIsEmpty!17958 setRes!17958))

(declare-fun b!2159552 () Bool)

(declare-fun e!1381708 () Bool)

(declare-fun tp!673323 () Bool)

(assert (=> b!2159552 (= e!1381708 tp!673323)))

(declare-fun condMapEmpty!13955 () Bool)

(declare-fun mapDefault!13955 () List!25078)

(assert (=> mapNonEmpty!13952 (= condMapEmpty!13955 (= mapRest!13952 ((as const (Array (_ BitVec 32) List!25078)) mapDefault!13955)))))

(declare-fun e!1381709 () Bool)

(assert (=> mapNonEmpty!13952 (= tp!673293 (and e!1381709 mapRes!13955))))

(declare-fun setElem!17959 () Context!3050)

(declare-fun tp!673324 () Bool)

(declare-fun setNonEmpty!17958 () Bool)

(assert (=> setNonEmpty!17958 (= setRes!17958 (and tp!673324 (inv!33096 setElem!17959) e!1381708))))

(declare-fun mapValue!13955 () List!25078)

(declare-fun setRest!17958 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17958 (= (_1!14715 (_1!14716 (h!30395 mapValue!13955))) ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17959 true) setRest!17958))))

(declare-fun b!2159553 () Bool)

(declare-fun e!1381711 () Bool)

(declare-fun tp!673322 () Bool)

(assert (=> b!2159553 (= e!1381711 tp!673322)))

(declare-fun mapNonEmpty!13955 () Bool)

(declare-fun tp!673328 () Bool)

(declare-fun e!1381710 () Bool)

(assert (=> mapNonEmpty!13955 (= mapRes!13955 (and tp!673328 e!1381710))))

(declare-fun mapKey!13955 () (_ BitVec 32))

(declare-fun mapRest!13955 () (Array (_ BitVec 32) List!25078))

(assert (=> mapNonEmpty!13955 (= mapRest!13952 (store mapRest!13955 mapKey!13955 mapValue!13955))))

(declare-fun setIsEmpty!17959 () Bool)

(declare-fun setRes!17959 () Bool)

(assert (=> setIsEmpty!17959 setRes!17959))

(declare-fun b!2159554 () Bool)

(declare-fun tp!673325 () Bool)

(assert (=> b!2159554 (= e!1381709 (and setRes!17959 tp!673325))))

(declare-fun condSetEmpty!17959 () Bool)

(assert (=> b!2159554 (= condSetEmpty!17959 (= (_1!14715 (_1!14716 (h!30395 mapDefault!13955))) ((as const (Array Context!3050 Bool)) false)))))

(declare-fun setNonEmpty!17959 () Bool)

(declare-fun tp!673326 () Bool)

(declare-fun setElem!17958 () Context!3050)

(assert (=> setNonEmpty!17959 (= setRes!17959 (and tp!673326 (inv!33096 setElem!17958) e!1381711))))

(declare-fun setRest!17959 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17959 (= (_1!14715 (_1!14716 (h!30395 mapDefault!13955))) ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17958 true) setRest!17959))))

(declare-fun b!2159555 () Bool)

(declare-fun tp!673327 () Bool)

(assert (=> b!2159555 (= e!1381710 (and setRes!17958 tp!673327))))

(declare-fun condSetEmpty!17958 () Bool)

(assert (=> b!2159555 (= condSetEmpty!17958 (= (_1!14715 (_1!14716 (h!30395 mapValue!13955))) ((as const (Array Context!3050 Bool)) false)))))

(assert (= (and mapNonEmpty!13952 condMapEmpty!13955) mapIsEmpty!13955))

(assert (= (and mapNonEmpty!13952 (not condMapEmpty!13955)) mapNonEmpty!13955))

(assert (= (and b!2159555 condSetEmpty!17958) setIsEmpty!17958))

(assert (= (and b!2159555 (not condSetEmpty!17958)) setNonEmpty!17958))

(assert (= setNonEmpty!17958 b!2159552))

(assert (= (and mapNonEmpty!13955 ((_ is Cons!24994) mapValue!13955)) b!2159555))

(assert (= (and b!2159554 condSetEmpty!17959) setIsEmpty!17959))

(assert (= (and b!2159554 (not condSetEmpty!17959)) setNonEmpty!17959))

(assert (= setNonEmpty!17959 b!2159553))

(assert (= (and mapNonEmpty!13952 ((_ is Cons!24994) mapDefault!13955)) b!2159554))

(declare-fun m!2599361 () Bool)

(assert (=> setNonEmpty!17958 m!2599361))

(declare-fun m!2599363 () Bool)

(assert (=> mapNonEmpty!13955 m!2599363))

(declare-fun m!2599365 () Bool)

(assert (=> setNonEmpty!17959 m!2599365))

(declare-fun setIsEmpty!17962 () Bool)

(declare-fun setRes!17962 () Bool)

(assert (=> setIsEmpty!17962 setRes!17962))

(declare-fun b!2159562 () Bool)

(declare-fun e!1381717 () Bool)

(declare-fun tp!673337 () Bool)

(assert (=> b!2159562 (= e!1381717 (and setRes!17962 tp!673337))))

(declare-fun condSetEmpty!17962 () Bool)

(assert (=> b!2159562 (= condSetEmpty!17962 (= (_1!14715 (_1!14716 (h!30395 mapValue!13952))) ((as const (Array Context!3050 Bool)) false)))))

(declare-fun b!2159563 () Bool)

(declare-fun e!1381716 () Bool)

(declare-fun tp!673335 () Bool)

(assert (=> b!2159563 (= e!1381716 tp!673335)))

(assert (=> mapNonEmpty!13952 (= tp!673295 e!1381717)))

(declare-fun tp!673336 () Bool)

(declare-fun setNonEmpty!17962 () Bool)

(declare-fun setElem!17962 () Context!3050)

(assert (=> setNonEmpty!17962 (= setRes!17962 (and tp!673336 (inv!33096 setElem!17962) e!1381716))))

(declare-fun setRest!17962 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17962 (= (_1!14715 (_1!14716 (h!30395 mapValue!13952))) ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17962 true) setRest!17962))))

(assert (= (and b!2159562 condSetEmpty!17962) setIsEmpty!17962))

(assert (= (and b!2159562 (not condSetEmpty!17962)) setNonEmpty!17962))

(assert (= setNonEmpty!17962 b!2159563))

(assert (= (and mapNonEmpty!13952 ((_ is Cons!24994) mapValue!13952)) b!2159562))

(declare-fun m!2599367 () Bool)

(assert (=> setNonEmpty!17962 m!2599367))

(declare-fun condSetEmpty!17965 () Bool)

(assert (=> setNonEmpty!17953 (= condSetEmpty!17965 (= setRest!17953 ((as const (Array Context!3050 Bool)) false)))))

(declare-fun setRes!17965 () Bool)

(assert (=> setNonEmpty!17953 (= tp!673301 setRes!17965)))

(declare-fun setIsEmpty!17965 () Bool)

(assert (=> setIsEmpty!17965 setRes!17965))

(declare-fun setElem!17965 () Context!3050)

(declare-fun setNonEmpty!17965 () Bool)

(declare-fun tp!673343 () Bool)

(declare-fun e!1381720 () Bool)

(assert (=> setNonEmpty!17965 (= setRes!17965 (and tp!673343 (inv!33096 setElem!17965) e!1381720))))

(declare-fun setRest!17965 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17965 (= setRest!17953 ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17965 true) setRest!17965))))

(declare-fun b!2159568 () Bool)

(declare-fun tp!673342 () Bool)

(assert (=> b!2159568 (= e!1381720 tp!673342)))

(assert (= (and setNonEmpty!17953 condSetEmpty!17965) setIsEmpty!17965))

(assert (= (and setNonEmpty!17953 (not condSetEmpty!17965)) setNonEmpty!17965))

(assert (= setNonEmpty!17965 b!2159568))

(declare-fun m!2599369 () Bool)

(assert (=> setNonEmpty!17965 m!2599369))

(declare-fun tp!673351 () Bool)

(declare-fun tp!673350 () Bool)

(declare-fun b!2159577 () Bool)

(declare-fun e!1381726 () Bool)

(assert (=> b!2159577 (= e!1381726 (and (inv!33097 (left!19247 (c!341811 (totalInput!3416 thiss!29220)))) tp!673351 (inv!33097 (right!19577 (c!341811 (totalInput!3416 thiss!29220)))) tp!673350))))

(declare-fun b!2159579 () Bool)

(declare-fun e!1381725 () Bool)

(declare-fun tp!673352 () Bool)

(assert (=> b!2159579 (= e!1381725 tp!673352)))

(declare-fun b!2159578 () Bool)

(declare-fun inv!33100 (IArray!16187) Bool)

(assert (=> b!2159578 (= e!1381726 (and (inv!33100 (xs!11033 (c!341811 (totalInput!3416 thiss!29220)))) e!1381725))))

(assert (=> b!2159419 (= tp!673296 (and (inv!33097 (c!341811 (totalInput!3416 thiss!29220))) e!1381726))))

(assert (= (and b!2159419 ((_ is Node!8091) (c!341811 (totalInput!3416 thiss!29220)))) b!2159577))

(assert (= b!2159578 b!2159579))

(assert (= (and b!2159419 ((_ is Leaf!11836) (c!341811 (totalInput!3416 thiss!29220)))) b!2159578))

(declare-fun m!2599371 () Bool)

(assert (=> b!2159577 m!2599371))

(declare-fun m!2599373 () Bool)

(assert (=> b!2159577 m!2599373))

(declare-fun m!2599375 () Bool)

(assert (=> b!2159578 m!2599375))

(assert (=> b!2159419 m!2599176))

(declare-fun setIsEmpty!17966 () Bool)

(declare-fun setRes!17966 () Bool)

(assert (=> setIsEmpty!17966 setRes!17966))

(declare-fun b!2159580 () Bool)

(declare-fun e!1381728 () Bool)

(declare-fun tp!673355 () Bool)

(assert (=> b!2159580 (= e!1381728 (and setRes!17966 tp!673355))))

(declare-fun condSetEmpty!17966 () Bool)

(assert (=> b!2159580 (= condSetEmpty!17966 (= (_1!14715 (_1!14716 (h!30395 mapDefault!13952))) ((as const (Array Context!3050 Bool)) false)))))

(declare-fun b!2159581 () Bool)

(declare-fun e!1381727 () Bool)

(declare-fun tp!673353 () Bool)

(assert (=> b!2159581 (= e!1381727 tp!673353)))

(assert (=> b!2159423 (= tp!673299 e!1381728)))

(declare-fun setElem!17966 () Context!3050)

(declare-fun setNonEmpty!17966 () Bool)

(declare-fun tp!673354 () Bool)

(assert (=> setNonEmpty!17966 (= setRes!17966 (and tp!673354 (inv!33096 setElem!17966) e!1381727))))

(declare-fun setRest!17966 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17966 (= (_1!14715 (_1!14716 (h!30395 mapDefault!13952))) ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17966 true) setRest!17966))))

(assert (= (and b!2159580 condSetEmpty!17966) setIsEmpty!17966))

(assert (= (and b!2159580 (not condSetEmpty!17966)) setNonEmpty!17966))

(assert (= setNonEmpty!17966 b!2159581))

(assert (= (and b!2159423 ((_ is Cons!24994) mapDefault!13952)) b!2159580))

(declare-fun m!2599377 () Bool)

(assert (=> setNonEmpty!17966 m!2599377))

(declare-fun setIsEmpty!17967 () Bool)

(declare-fun setRes!17967 () Bool)

(assert (=> setIsEmpty!17967 setRes!17967))

(declare-fun b!2159582 () Bool)

(declare-fun e!1381730 () Bool)

(declare-fun tp!673358 () Bool)

(assert (=> b!2159582 (= e!1381730 (and setRes!17967 tp!673358))))

(declare-fun condSetEmpty!17967 () Bool)

(assert (=> b!2159582 (= condSetEmpty!17967 (= (_1!14715 (_1!14716 (h!30395 (zeroValue!3214 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))))) ((as const (Array Context!3050 Bool)) false)))))

(declare-fun b!2159583 () Bool)

(declare-fun e!1381729 () Bool)

(declare-fun tp!673356 () Bool)

(assert (=> b!2159583 (= e!1381729 tp!673356)))

(assert (=> b!2159416 (= tp!673294 e!1381730)))

(declare-fun tp!673357 () Bool)

(declare-fun setElem!17967 () Context!3050)

(declare-fun setNonEmpty!17967 () Bool)

(assert (=> setNonEmpty!17967 (= setRes!17967 (and tp!673357 (inv!33096 setElem!17967) e!1381729))))

(declare-fun setRest!17967 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17967 (= (_1!14715 (_1!14716 (h!30395 (zeroValue!3214 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17967 true) setRest!17967))))

(assert (= (and b!2159582 condSetEmpty!17967) setIsEmpty!17967))

(assert (= (and b!2159582 (not condSetEmpty!17967)) setNonEmpty!17967))

(assert (= setNonEmpty!17967 b!2159583))

(assert (= (and b!2159416 ((_ is Cons!24994) (zeroValue!3214 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220)))))))) b!2159582))

(declare-fun m!2599379 () Bool)

(assert (=> setNonEmpty!17967 m!2599379))

(declare-fun setIsEmpty!17968 () Bool)

(declare-fun setRes!17968 () Bool)

(assert (=> setIsEmpty!17968 setRes!17968))

(declare-fun b!2159584 () Bool)

(declare-fun e!1381732 () Bool)

(declare-fun tp!673361 () Bool)

(assert (=> b!2159584 (= e!1381732 (and setRes!17968 tp!673361))))

(declare-fun condSetEmpty!17968 () Bool)

(assert (=> b!2159584 (= condSetEmpty!17968 (= (_1!14715 (_1!14716 (h!30395 (minValue!3214 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))))) ((as const (Array Context!3050 Bool)) false)))))

(declare-fun b!2159585 () Bool)

(declare-fun e!1381731 () Bool)

(declare-fun tp!673359 () Bool)

(assert (=> b!2159585 (= e!1381731 tp!673359)))

(assert (=> b!2159416 (= tp!673300 e!1381732)))

(declare-fun setNonEmpty!17968 () Bool)

(declare-fun tp!673360 () Bool)

(declare-fun setElem!17968 () Context!3050)

(assert (=> setNonEmpty!17968 (= setRes!17968 (and tp!673360 (inv!33096 setElem!17968) e!1381731))))

(declare-fun setRest!17968 () (InoxSet Context!3050))

(assert (=> setNonEmpty!17968 (= (_1!14715 (_1!14716 (h!30395 (minValue!3214 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3050 Bool)) false) setElem!17968 true) setRest!17968))))

(assert (= (and b!2159584 condSetEmpty!17968) setIsEmpty!17968))

(assert (= (and b!2159584 (not condSetEmpty!17968)) setNonEmpty!17968))

(assert (= setNonEmpty!17968 b!2159585))

(assert (= (and b!2159416 ((_ is Cons!24994) (minValue!3214 (v!29381 (underlying!6107 (v!29382 (underlying!6108 (cache!3251 thiss!29220)))))))) b!2159584))

(declare-fun m!2599381 () Bool)

(assert (=> setNonEmpty!17968 m!2599381))

(declare-fun b!2159586 () Bool)

(declare-fun tp!673362 () Bool)

(declare-fun tp!673363 () Bool)

(declare-fun e!1381734 () Bool)

(assert (=> b!2159586 (= e!1381734 (and (inv!33097 (left!19247 (c!341811 localTotalInput!17))) tp!673363 (inv!33097 (right!19577 (c!341811 localTotalInput!17))) tp!673362))))

(declare-fun b!2159588 () Bool)

(declare-fun e!1381733 () Bool)

(declare-fun tp!673364 () Bool)

(assert (=> b!2159588 (= e!1381733 tp!673364)))

(declare-fun b!2159587 () Bool)

(assert (=> b!2159587 (= e!1381734 (and (inv!33100 (xs!11033 (c!341811 localTotalInput!17))) e!1381733))))

(assert (=> b!2159425 (= tp!673297 (and (inv!33097 (c!341811 localTotalInput!17)) e!1381734))))

(assert (= (and b!2159425 ((_ is Node!8091) (c!341811 localTotalInput!17))) b!2159586))

(assert (= b!2159587 b!2159588))

(assert (= (and b!2159425 ((_ is Leaf!11836) (c!341811 localTotalInput!17))) b!2159587))

(declare-fun m!2599383 () Bool)

(assert (=> b!2159586 m!2599383))

(declare-fun m!2599385 () Bool)

(assert (=> b!2159586 m!2599385))

(declare-fun m!2599387 () Bool)

(assert (=> b!2159587 m!2599387))

(assert (=> b!2159425 m!2599196))

(declare-fun b_lambda!71043 () Bool)

(assert (= b_lambda!71041 (or b!2159415 b_lambda!71043)))

(declare-fun bs!446012 () Bool)

(declare-fun d!646841 () Bool)

(assert (= bs!446012 (and d!646841 b!2159415)))

(declare-fun validCacheMapFurthestNullableBody!37 (tuple2!24696 BalanceConc!15944) Bool)

(assert (=> bs!446012 (= (dynLambda!11425 lambda!81569 (h!30395 (toList!1139 (map!5043 (_2!14717 lt!802511))))) (validCacheMapFurthestNullableBody!37 (h!30395 (toList!1139 (map!5043 (_2!14717 lt!802511)))) localTotalInput!17))))

(declare-fun m!2599389 () Bool)

(assert (=> bs!446012 m!2599389))

(assert (=> b!2159455 d!646841))

(check-sat (not d!646819) (not b!2159532) (not b!2159511) (not setNonEmpty!17967) (not b!2159580) (not setNonEmpty!17965) (not bm!129435) (not b!2159419) (not bm!129447) (not bm!129440) (not bm!129439) (not setNonEmpty!17968) (not bm!129443) (not b!2159577) (not b!2159465) (not bm!129454) (not b!2159449) (not bm!129452) (not b!2159456) (not b!2159510) (not b!2159584) (not setNonEmpty!17958) (not d!646807) (not setNonEmpty!17959) (not mapNonEmpty!13955) (not bm!129455) b_and!173429 (not b_next!64517) (not b!2159529) (not bm!129448) (not b!2159459) (not b!2159425) (not b!2159582) (not b_next!64519) (not b!2159579) (not b!2159552) (not bm!129432) (not bm!129459) (not d!646829) (not bm!129445) (not bm!129457) (not setNonEmpty!17962) (not bm!129430) (not b!2159585) (not b!2159587) (not b!2159435) (not d!646815) (not b!2159555) (not b!2159541) (not d!646837) (not b!2159588) (not b!2159515) (not b!2159586) (not d!646827) (not bs!446012) (not b!2159446) (not d!646835) (not d!646817) (not b!2159533) (not b!2159534) (not bm!129441) (not bm!129437) (not bm!129456) (not b!2159536) (not bm!129438) (not b!2159522) (not b!2159508) (not b!2159578) (not b!2159553) (not b!2159554) (not b!2159506) (not bm!129442) b_and!173431 (not d!646821) (not b!2159531) (not bm!129458) (not bm!129450) (not b!2159568) (not bm!129431) (not bm!129429) (not b!2159583) (not b_lambda!71043) (not bm!129449) (not b!2159464) (not b!2159562) (not bm!129444) (not bm!129446) (not setNonEmpty!17966) (not bm!129434) (not d!646823) (not b!2159563) (not b!2159581) (not bm!129433) (not bm!129453))
(check-sat b_and!173431 b_and!173429 (not b_next!64519) (not b_next!64517))

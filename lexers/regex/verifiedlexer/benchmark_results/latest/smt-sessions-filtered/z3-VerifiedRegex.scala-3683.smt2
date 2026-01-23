; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208364 () Bool)

(assert start!208364)

(declare-fun b!2148353 () Bool)

(declare-fun b_free!63421 () Bool)

(declare-fun b_next!64125 () Bool)

(assert (=> b!2148353 (= b_free!63421 (not b_next!64125))))

(declare-fun tp!666802 () Bool)

(declare-fun b_and!173017 () Bool)

(assert (=> b!2148353 (= tp!666802 b_and!173017)))

(declare-fun b!2148346 () Bool)

(declare-fun b_free!63423 () Bool)

(declare-fun b_next!64127 () Bool)

(assert (=> b!2148346 (= b_free!63423 (not b_next!64127))))

(declare-fun tp!666799 () Bool)

(declare-fun b_and!173019 () Bool)

(assert (=> b!2148346 (= tp!666799 b_and!173019)))

(declare-fun b!2148340 () Bool)

(declare-fun e!1373516 () Bool)

(declare-datatypes ((C!11812 0))(
  ( (C!11813 (val!6892 Int)) )
))
(declare-datatypes ((List!24657 0))(
  ( (Nil!24573) (Cons!24573 (h!29974 C!11812) (t!197195 List!24657)) )
))
(declare-datatypes ((Regex!5833 0))(
  ( (ElementMatch!5833 (c!340976 C!11812)) (Concat!10135 (regOne!12178 Regex!5833) (regTwo!12178 Regex!5833)) (EmptyExpr!5833) (Star!5833 (reg!6162 Regex!5833)) (EmptyLang!5833) (Union!5833 (regOne!12179 Regex!5833) (regTwo!12179 Regex!5833)) )
))
(declare-datatypes ((List!24658 0))(
  ( (Nil!24574) (Cons!24574 (h!29975 Regex!5833) (t!197196 List!24658)) )
))
(declare-datatypes ((Context!2806 0))(
  ( (Context!2807 (exprs!1903 List!24658)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3598 0))(
  ( (tuple3!3599 (_1!14480 (InoxSet Context!2806)) (_2!14480 Int) (_3!2269 Int)) )
))
(declare-datatypes ((tuple2!24422 0))(
  ( (tuple2!24423 (_1!14481 tuple3!3598) (_2!14481 Int)) )
))
(declare-datatypes ((List!24659 0))(
  ( (Nil!24575) (Cons!24575 (h!29976 tuple2!24422) (t!197197 List!24659)) )
))
(declare-datatypes ((array!9651 0))(
  ( (array!9652 (arr!4312 (Array (_ BitVec 32) (_ BitVec 64))) (size!19248 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2772 0))(
  ( (HashableExt!2771 (__x!16750 Int)) )
))
(declare-datatypes ((array!9653 0))(
  ( (array!9654 (arr!4313 (Array (_ BitVec 32) List!24659)) (size!19249 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5716 0))(
  ( (LongMapFixedSize!5717 (defaultEntry!3223 Int) (mask!7090 (_ BitVec 32)) (extraKeys!3106 (_ BitVec 32)) (zeroValue!3116 List!24659) (minValue!3116 List!24659) (_size!5767 (_ BitVec 32)) (_keys!3155 array!9651) (_values!3138 array!9653) (_vacant!2919 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11257 0))(
  ( (Cell!11258 (v!29154 LongMapFixedSize!5716)) )
))
(declare-datatypes ((MutLongMap!2858 0))(
  ( (LongMap!2858 (underlying!5911 Cell!11257)) (MutLongMapExt!2857 (__x!16751 Int)) )
))
(declare-datatypes ((Cell!11259 0))(
  ( (Cell!11260 (v!29155 MutLongMap!2858)) )
))
(declare-datatypes ((MutableMap!2772 0))(
  ( (MutableMapExt!2771 (__x!16752 Int)) (HashMap!2772 (underlying!5912 Cell!11259) (hashF!4695 Hashable!2772) (_size!5768 (_ BitVec 32)) (defaultValue!2934 Int)) )
))
(declare-datatypes ((IArray!15943 0))(
  ( (IArray!15944 (innerList!8029 List!24657)) )
))
(declare-datatypes ((Conc!7969 0))(
  ( (Node!7969 (left!18858 Conc!7969) (right!19188 Conc!7969) (csize!16168 Int) (cheight!8180 Int)) (Leaf!11653 (xs!10911 IArray!15943) (csize!16169 Int)) (Empty!7969) )
))
(declare-datatypes ((BalanceConc!15700 0))(
  ( (BalanceConc!15701 (c!340977 Conc!7969)) )
))
(declare-datatypes ((CacheFurthestNullable!902 0))(
  ( (CacheFurthestNullable!903 (cache!3153 MutableMap!2772) (totalInput!3215 BalanceConc!15700)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!902)

(declare-fun tp!666804 () Bool)

(declare-fun inv!32350 (Conc!7969) Bool)

(assert (=> b!2148340 (= e!1373516 (and (inv!32350 (c!340977 (totalInput!3215 thiss!29110))) tp!666804))))

(declare-fun b!2148341 () Bool)

(declare-fun res!926726 () Bool)

(declare-fun e!1373518 () Bool)

(assert (=> b!2148341 (=> (not res!926726) (not e!1373518))))

(declare-fun e!1373510 () Bool)

(assert (=> b!2148341 (= res!926726 e!1373510)))

(declare-fun res!926728 () Bool)

(assert (=> b!2148341 (=> res!926728 e!1373510)))

(declare-fun z!514 () (InoxSet Context!2806))

(declare-fun nullableZipper!176 ((InoxSet Context!2806)) Bool)

(assert (=> b!2148341 (= res!926728 (not (nullableZipper!176 z!514)))))

(declare-fun b!2148342 () Bool)

(declare-fun e!1373517 () Bool)

(declare-fun e!1373513 () Bool)

(assert (=> b!2148342 (= e!1373517 e!1373513)))

(declare-fun b!2148343 () Bool)

(get-info :version)

(assert (=> b!2148343 (= e!1373518 (not ((_ is HashMap!2772) (cache!3153 thiss!29110))))))

(declare-fun b!2148344 () Bool)

(declare-fun e!1373507 () Bool)

(declare-fun localTotalInput!13 () BalanceConc!15700)

(declare-fun tp!666796 () Bool)

(assert (=> b!2148344 (= e!1373507 (and (inv!32350 (c!340977 localTotalInput!13)) tp!666796))))

(declare-fun b!2148345 () Bool)

(declare-fun e!1373512 () Bool)

(declare-fun tp!666800 () Bool)

(assert (=> b!2148345 (= e!1373512 tp!666800)))

(declare-fun tp!666806 () Bool)

(declare-fun e!1373511 () Bool)

(declare-fun e!1373508 () Bool)

(declare-fun tp!666803 () Bool)

(declare-fun array_inv!3088 (array!9651) Bool)

(declare-fun array_inv!3089 (array!9653) Bool)

(assert (=> b!2148346 (= e!1373511 (and tp!666799 tp!666806 tp!666803 (array_inv!3088 (_keys!3155 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) (array_inv!3089 (_values!3138 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) e!1373508))))

(declare-fun b!2148347 () Bool)

(declare-fun e!1373509 () Bool)

(declare-fun lt!799880 () MutLongMap!2858)

(assert (=> b!2148347 (= e!1373509 (and e!1373517 ((_ is LongMap!2858) lt!799880)))))

(assert (=> b!2148347 (= lt!799880 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))

(declare-fun setIsEmpty!16963 () Bool)

(declare-fun setRes!16963 () Bool)

(assert (=> setIsEmpty!16963 setRes!16963))

(declare-fun setNonEmpty!16963 () Bool)

(declare-fun tp!666805 () Bool)

(declare-fun setElem!16963 () Context!2806)

(declare-fun inv!32351 (Context!2806) Bool)

(assert (=> setNonEmpty!16963 (= setRes!16963 (and tp!666805 (inv!32351 setElem!16963) e!1373512))))

(declare-fun setRest!16963 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16963 (= z!514 ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16963 true) setRest!16963))))

(declare-fun b!2148348 () Bool)

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2148348 (= e!1373510 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun res!926727 () Bool)

(assert (=> start!208364 (=> (not res!926727) (not e!1373518))))

(assert (=> start!208364 (= res!926727 (and (= localTotalInput!13 (totalInput!3215 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208364 e!1373518))

(declare-fun condSetEmpty!16963 () Bool)

(assert (=> start!208364 (= condSetEmpty!16963 (= z!514 ((as const (Array Context!2806 Bool)) false)))))

(assert (=> start!208364 setRes!16963))

(assert (=> start!208364 true))

(declare-fun e!1373515 () Bool)

(declare-fun inv!32352 (CacheFurthestNullable!902) Bool)

(assert (=> start!208364 (and (inv!32352 thiss!29110) e!1373515)))

(declare-fun inv!32353 (BalanceConc!15700) Bool)

(assert (=> start!208364 (and (inv!32353 localTotalInput!13) e!1373507)))

(declare-fun b!2148349 () Bool)

(declare-fun tp!666798 () Bool)

(declare-fun mapRes!13550 () Bool)

(assert (=> b!2148349 (= e!1373508 (and tp!666798 mapRes!13550))))

(declare-fun condMapEmpty!13550 () Bool)

(declare-fun mapDefault!13550 () List!24659)

(assert (=> b!2148349 (= condMapEmpty!13550 (= (arr!4313 (_values!3138 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24659)) mapDefault!13550)))))

(declare-fun b!2148350 () Bool)

(declare-fun e!1373506 () Bool)

(assert (=> b!2148350 (= e!1373515 (and e!1373506 (inv!32353 (totalInput!3215 thiss!29110)) e!1373516))))

(declare-fun b!2148351 () Bool)

(assert (=> b!2148351 (= e!1373513 e!1373511)))

(declare-fun b!2148352 () Bool)

(declare-fun res!926729 () Bool)

(assert (=> b!2148352 (=> (not res!926729) (not e!1373518))))

(declare-fun validCacheMapFurthestNullable!131 (MutableMap!2772 BalanceConc!15700) Bool)

(assert (=> b!2148352 (= res!926729 (validCacheMapFurthestNullable!131 (cache!3153 thiss!29110) (totalInput!3215 thiss!29110)))))

(declare-fun mapNonEmpty!13550 () Bool)

(declare-fun tp!666801 () Bool)

(declare-fun tp!666797 () Bool)

(assert (=> mapNonEmpty!13550 (= mapRes!13550 (and tp!666801 tp!666797))))

(declare-fun mapRest!13550 () (Array (_ BitVec 32) List!24659))

(declare-fun mapValue!13550 () List!24659)

(declare-fun mapKey!13550 () (_ BitVec 32))

(assert (=> mapNonEmpty!13550 (= (arr!4313 (_values!3138 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) (store mapRest!13550 mapKey!13550 mapValue!13550))))

(declare-fun mapIsEmpty!13550 () Bool)

(assert (=> mapIsEmpty!13550 mapRes!13550))

(assert (=> b!2148353 (= e!1373506 (and e!1373509 tp!666802))))

(assert (= (and start!208364 res!926727) b!2148341))

(assert (= (and b!2148341 (not res!926728)) b!2148348))

(assert (= (and b!2148341 res!926726) b!2148352))

(assert (= (and b!2148352 res!926729) b!2148343))

(assert (= (and start!208364 condSetEmpty!16963) setIsEmpty!16963))

(assert (= (and start!208364 (not condSetEmpty!16963)) setNonEmpty!16963))

(assert (= setNonEmpty!16963 b!2148345))

(assert (= (and b!2148349 condMapEmpty!13550) mapIsEmpty!13550))

(assert (= (and b!2148349 (not condMapEmpty!13550)) mapNonEmpty!13550))

(assert (= b!2148346 b!2148349))

(assert (= b!2148351 b!2148346))

(assert (= b!2148342 b!2148351))

(assert (= (and b!2148347 ((_ is LongMap!2858) (v!29155 (underlying!5912 (cache!3153 thiss!29110))))) b!2148342))

(assert (= b!2148353 b!2148347))

(assert (= (and b!2148350 ((_ is HashMap!2772) (cache!3153 thiss!29110))) b!2148353))

(assert (= b!2148350 b!2148340))

(assert (= start!208364 b!2148350))

(assert (= start!208364 b!2148344))

(declare-fun m!2591445 () Bool)

(assert (=> setNonEmpty!16963 m!2591445))

(declare-fun m!2591447 () Bool)

(assert (=> b!2148341 m!2591447))

(declare-fun m!2591449 () Bool)

(assert (=> mapNonEmpty!13550 m!2591449))

(declare-fun m!2591451 () Bool)

(assert (=> b!2148350 m!2591451))

(declare-fun m!2591453 () Bool)

(assert (=> b!2148352 m!2591453))

(declare-fun m!2591455 () Bool)

(assert (=> b!2148344 m!2591455))

(declare-fun m!2591457 () Bool)

(assert (=> b!2148340 m!2591457))

(declare-fun m!2591459 () Bool)

(assert (=> start!208364 m!2591459))

(declare-fun m!2591461 () Bool)

(assert (=> start!208364 m!2591461))

(declare-fun m!2591463 () Bool)

(assert (=> b!2148346 m!2591463))

(declare-fun m!2591465 () Bool)

(assert (=> b!2148346 m!2591465))

(check-sat (not b!2148340) (not b!2148341) (not b!2148352) (not b!2148345) (not mapNonEmpty!13550) (not setNonEmpty!16963) (not b!2148344) b_and!173017 (not b_next!64127) (not b!2148350) (not b_next!64125) (not b!2148349) b_and!173019 (not b!2148346) (not start!208364))
(check-sat b_and!173017 b_and!173019 (not b_next!64127) (not b_next!64125))
(get-model)

(declare-fun d!645406 () Bool)

(declare-fun c!340980 () Bool)

(assert (=> d!645406 (= c!340980 ((_ is Node!7969) (c!340977 localTotalInput!13)))))

(declare-fun e!1373523 () Bool)

(assert (=> d!645406 (= (inv!32350 (c!340977 localTotalInput!13)) e!1373523)))

(declare-fun b!2148360 () Bool)

(declare-fun inv!32354 (Conc!7969) Bool)

(assert (=> b!2148360 (= e!1373523 (inv!32354 (c!340977 localTotalInput!13)))))

(declare-fun b!2148361 () Bool)

(declare-fun e!1373524 () Bool)

(assert (=> b!2148361 (= e!1373523 e!1373524)))

(declare-fun res!926732 () Bool)

(assert (=> b!2148361 (= res!926732 (not ((_ is Leaf!11653) (c!340977 localTotalInput!13))))))

(assert (=> b!2148361 (=> res!926732 e!1373524)))

(declare-fun b!2148362 () Bool)

(declare-fun inv!32355 (Conc!7969) Bool)

(assert (=> b!2148362 (= e!1373524 (inv!32355 (c!340977 localTotalInput!13)))))

(assert (= (and d!645406 c!340980) b!2148360))

(assert (= (and d!645406 (not c!340980)) b!2148361))

(assert (= (and b!2148361 (not res!926732)) b!2148362))

(declare-fun m!2591467 () Bool)

(assert (=> b!2148360 m!2591467))

(declare-fun m!2591469 () Bool)

(assert (=> b!2148362 m!2591469))

(assert (=> b!2148344 d!645406))

(declare-fun d!645408 () Bool)

(declare-fun lambda!80685 () Int)

(declare-fun forall!5008 (List!24658 Int) Bool)

(assert (=> d!645408 (= (inv!32351 setElem!16963) (forall!5008 (exprs!1903 setElem!16963) lambda!80685))))

(declare-fun bs!445497 () Bool)

(assert (= bs!445497 d!645408))

(declare-fun m!2591471 () Bool)

(assert (=> bs!445497 m!2591471))

(assert (=> setNonEmpty!16963 d!645408))

(declare-fun b!2148368 () Bool)

(assert (=> b!2148368 true))

(declare-fun d!645410 () Bool)

(declare-fun res!926737 () Bool)

(declare-fun e!1373527 () Bool)

(assert (=> d!645410 (=> (not res!926737) (not e!1373527))))

(declare-fun valid!2210 (MutableMap!2772) Bool)

(assert (=> d!645410 (= res!926737 (valid!2210 (cache!3153 thiss!29110)))))

(assert (=> d!645410 (= (validCacheMapFurthestNullable!131 (cache!3153 thiss!29110) (totalInput!3215 thiss!29110)) e!1373527)))

(declare-fun b!2148367 () Bool)

(declare-fun res!926738 () Bool)

(assert (=> b!2148367 (=> (not res!926738) (not e!1373527))))

(declare-fun invariantList!315 (List!24659) Bool)

(declare-datatypes ((ListMap!679 0))(
  ( (ListMap!680 (toList!1092 List!24659)) )
))
(declare-fun map!4935 (MutableMap!2772) ListMap!679)

(assert (=> b!2148367 (= res!926738 (invariantList!315 (toList!1092 (map!4935 (cache!3153 thiss!29110)))))))

(declare-fun lambda!80688 () Int)

(declare-fun forall!5009 (List!24659 Int) Bool)

(assert (=> b!2148368 (= e!1373527 (forall!5009 (toList!1092 (map!4935 (cache!3153 thiss!29110))) lambda!80688))))

(assert (= (and d!645410 res!926737) b!2148367))

(assert (= (and b!2148367 res!926738) b!2148368))

(declare-fun m!2591474 () Bool)

(assert (=> d!645410 m!2591474))

(declare-fun m!2591476 () Bool)

(assert (=> b!2148367 m!2591476))

(declare-fun m!2591478 () Bool)

(assert (=> b!2148367 m!2591478))

(assert (=> b!2148368 m!2591476))

(declare-fun m!2591480 () Bool)

(assert (=> b!2148368 m!2591480))

(assert (=> b!2148352 d!645410))

(declare-fun d!645412 () Bool)

(declare-fun c!340981 () Bool)

(assert (=> d!645412 (= c!340981 ((_ is Node!7969) (c!340977 (totalInput!3215 thiss!29110))))))

(declare-fun e!1373528 () Bool)

(assert (=> d!645412 (= (inv!32350 (c!340977 (totalInput!3215 thiss!29110))) e!1373528)))

(declare-fun b!2148371 () Bool)

(assert (=> b!2148371 (= e!1373528 (inv!32354 (c!340977 (totalInput!3215 thiss!29110))))))

(declare-fun b!2148372 () Bool)

(declare-fun e!1373529 () Bool)

(assert (=> b!2148372 (= e!1373528 e!1373529)))

(declare-fun res!926739 () Bool)

(assert (=> b!2148372 (= res!926739 (not ((_ is Leaf!11653) (c!340977 (totalInput!3215 thiss!29110)))))))

(assert (=> b!2148372 (=> res!926739 e!1373529)))

(declare-fun b!2148373 () Bool)

(assert (=> b!2148373 (= e!1373529 (inv!32355 (c!340977 (totalInput!3215 thiss!29110))))))

(assert (= (and d!645412 c!340981) b!2148371))

(assert (= (and d!645412 (not c!340981)) b!2148372))

(assert (= (and b!2148372 (not res!926739)) b!2148373))

(declare-fun m!2591482 () Bool)

(assert (=> b!2148371 m!2591482))

(declare-fun m!2591484 () Bool)

(assert (=> b!2148373 m!2591484))

(assert (=> b!2148340 d!645412))

(declare-fun d!645414 () Bool)

(declare-fun isBalanced!2470 (Conc!7969) Bool)

(assert (=> d!645414 (= (inv!32353 (totalInput!3215 thiss!29110)) (isBalanced!2470 (c!340977 (totalInput!3215 thiss!29110))))))

(declare-fun bs!445498 () Bool)

(assert (= bs!445498 d!645414))

(declare-fun m!2591486 () Bool)

(assert (=> bs!445498 m!2591486))

(assert (=> b!2148350 d!645414))

(declare-fun d!645416 () Bool)

(declare-fun lambda!80691 () Int)

(declare-fun exists!724 ((InoxSet Context!2806) Int) Bool)

(assert (=> d!645416 (= (nullableZipper!176 z!514) (exists!724 z!514 lambda!80691))))

(declare-fun bs!445499 () Bool)

(assert (= bs!445499 d!645416))

(declare-fun m!2591488 () Bool)

(assert (=> bs!445499 m!2591488))

(assert (=> b!2148341 d!645416))

(declare-fun d!645418 () Bool)

(declare-fun res!926742 () Bool)

(declare-fun e!1373532 () Bool)

(assert (=> d!645418 (=> (not res!926742) (not e!1373532))))

(assert (=> d!645418 (= res!926742 ((_ is HashMap!2772) (cache!3153 thiss!29110)))))

(assert (=> d!645418 (= (inv!32352 thiss!29110) e!1373532)))

(declare-fun b!2148376 () Bool)

(assert (=> b!2148376 (= e!1373532 (validCacheMapFurthestNullable!131 (cache!3153 thiss!29110) (totalInput!3215 thiss!29110)))))

(assert (= (and d!645418 res!926742) b!2148376))

(assert (=> b!2148376 m!2591453))

(assert (=> start!208364 d!645418))

(declare-fun d!645420 () Bool)

(assert (=> d!645420 (= (inv!32353 localTotalInput!13) (isBalanced!2470 (c!340977 localTotalInput!13)))))

(declare-fun bs!445500 () Bool)

(assert (= bs!445500 d!645420))

(declare-fun m!2591490 () Bool)

(assert (=> bs!445500 m!2591490))

(assert (=> start!208364 d!645420))

(declare-fun d!645422 () Bool)

(assert (=> d!645422 (= (array_inv!3088 (_keys!3155 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) (bvsge (size!19248 (_keys!3155 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148346 d!645422))

(declare-fun d!645424 () Bool)

(assert (=> d!645424 (= (array_inv!3089 (_values!3138 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) (bvsge (size!19249 (_values!3138 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148346 d!645424))

(declare-fun e!1373537 () Bool)

(declare-fun tp!666814 () Bool)

(declare-fun b!2148385 () Bool)

(declare-fun tp!666813 () Bool)

(assert (=> b!2148385 (= e!1373537 (and (inv!32350 (left!18858 (c!340977 localTotalInput!13))) tp!666814 (inv!32350 (right!19188 (c!340977 localTotalInput!13))) tp!666813))))

(declare-fun b!2148387 () Bool)

(declare-fun e!1373538 () Bool)

(declare-fun tp!666815 () Bool)

(assert (=> b!2148387 (= e!1373538 tp!666815)))

(declare-fun b!2148386 () Bool)

(declare-fun inv!32356 (IArray!15943) Bool)

(assert (=> b!2148386 (= e!1373537 (and (inv!32356 (xs!10911 (c!340977 localTotalInput!13))) e!1373538))))

(assert (=> b!2148344 (= tp!666796 (and (inv!32350 (c!340977 localTotalInput!13)) e!1373537))))

(assert (= (and b!2148344 ((_ is Node!7969) (c!340977 localTotalInput!13))) b!2148385))

(assert (= b!2148386 b!2148387))

(assert (= (and b!2148344 ((_ is Leaf!11653) (c!340977 localTotalInput!13))) b!2148386))

(declare-fun m!2591492 () Bool)

(assert (=> b!2148385 m!2591492))

(declare-fun m!2591494 () Bool)

(assert (=> b!2148385 m!2591494))

(declare-fun m!2591496 () Bool)

(assert (=> b!2148386 m!2591496))

(assert (=> b!2148344 m!2591455))

(declare-fun condSetEmpty!16966 () Bool)

(assert (=> setNonEmpty!16963 (= condSetEmpty!16966 (= setRest!16963 ((as const (Array Context!2806 Bool)) false)))))

(declare-fun setRes!16966 () Bool)

(assert (=> setNonEmpty!16963 (= tp!666805 setRes!16966)))

(declare-fun setIsEmpty!16966 () Bool)

(assert (=> setIsEmpty!16966 setRes!16966))

(declare-fun tp!666820 () Bool)

(declare-fun setElem!16966 () Context!2806)

(declare-fun setNonEmpty!16966 () Bool)

(declare-fun e!1373541 () Bool)

(assert (=> setNonEmpty!16966 (= setRes!16966 (and tp!666820 (inv!32351 setElem!16966) e!1373541))))

(declare-fun setRest!16966 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16966 (= setRest!16963 ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16966 true) setRest!16966))))

(declare-fun b!2148392 () Bool)

(declare-fun tp!666821 () Bool)

(assert (=> b!2148392 (= e!1373541 tp!666821)))

(assert (= (and setNonEmpty!16963 condSetEmpty!16966) setIsEmpty!16966))

(assert (= (and setNonEmpty!16963 (not condSetEmpty!16966)) setNonEmpty!16966))

(assert (= setNonEmpty!16966 b!2148392))

(declare-fun m!2591498 () Bool)

(assert (=> setNonEmpty!16966 m!2591498))

(declare-fun tp!666823 () Bool)

(declare-fun b!2148393 () Bool)

(declare-fun tp!666822 () Bool)

(declare-fun e!1373542 () Bool)

(assert (=> b!2148393 (= e!1373542 (and (inv!32350 (left!18858 (c!340977 (totalInput!3215 thiss!29110)))) tp!666823 (inv!32350 (right!19188 (c!340977 (totalInput!3215 thiss!29110)))) tp!666822))))

(declare-fun b!2148395 () Bool)

(declare-fun e!1373543 () Bool)

(declare-fun tp!666824 () Bool)

(assert (=> b!2148395 (= e!1373543 tp!666824)))

(declare-fun b!2148394 () Bool)

(assert (=> b!2148394 (= e!1373542 (and (inv!32356 (xs!10911 (c!340977 (totalInput!3215 thiss!29110)))) e!1373543))))

(assert (=> b!2148340 (= tp!666804 (and (inv!32350 (c!340977 (totalInput!3215 thiss!29110))) e!1373542))))

(assert (= (and b!2148340 ((_ is Node!7969) (c!340977 (totalInput!3215 thiss!29110)))) b!2148393))

(assert (= b!2148394 b!2148395))

(assert (= (and b!2148340 ((_ is Leaf!11653) (c!340977 (totalInput!3215 thiss!29110)))) b!2148394))

(declare-fun m!2591500 () Bool)

(assert (=> b!2148393 m!2591500))

(declare-fun m!2591502 () Bool)

(assert (=> b!2148393 m!2591502))

(declare-fun m!2591504 () Bool)

(assert (=> b!2148394 m!2591504))

(assert (=> b!2148340 m!2591457))

(declare-fun b!2148400 () Bool)

(declare-fun e!1373546 () Bool)

(declare-fun tp!666829 () Bool)

(declare-fun tp!666830 () Bool)

(assert (=> b!2148400 (= e!1373546 (and tp!666829 tp!666830))))

(assert (=> b!2148345 (= tp!666800 e!1373546)))

(assert (= (and b!2148345 ((_ is Cons!24574) (exprs!1903 setElem!16963))) b!2148400))

(declare-fun mapNonEmpty!13553 () Bool)

(declare-fun mapRes!13553 () Bool)

(declare-fun tp!666850 () Bool)

(declare-fun e!1373555 () Bool)

(assert (=> mapNonEmpty!13553 (= mapRes!13553 (and tp!666850 e!1373555))))

(declare-fun mapValue!13553 () List!24659)

(declare-fun mapRest!13553 () (Array (_ BitVec 32) List!24659))

(declare-fun mapKey!13553 () (_ BitVec 32))

(assert (=> mapNonEmpty!13553 (= mapRest!13550 (store mapRest!13553 mapKey!13553 mapValue!13553))))

(declare-fun setRes!16972 () Bool)

(declare-fun setNonEmpty!16971 () Bool)

(declare-fun e!1373557 () Bool)

(declare-fun setElem!16972 () Context!2806)

(declare-fun tp!666849 () Bool)

(assert (=> setNonEmpty!16971 (= setRes!16972 (and tp!666849 (inv!32351 setElem!16972) e!1373557))))

(declare-fun mapDefault!13553 () List!24659)

(declare-fun setRest!16972 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16971 (= (_1!14480 (_1!14481 (h!29976 mapDefault!13553))) ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16972 true) setRest!16972))))

(declare-fun condMapEmpty!13553 () Bool)

(assert (=> mapNonEmpty!13550 (= condMapEmpty!13553 (= mapRest!13550 ((as const (Array (_ BitVec 32) List!24659)) mapDefault!13553)))))

(declare-fun e!1373558 () Bool)

(assert (=> mapNonEmpty!13550 (= tp!666801 (and e!1373558 mapRes!13553))))

(declare-fun b!2148411 () Bool)

(declare-fun tp!666845 () Bool)

(assert (=> b!2148411 (= e!1373558 (and setRes!16972 tp!666845))))

(declare-fun condSetEmpty!16972 () Bool)

(assert (=> b!2148411 (= condSetEmpty!16972 (= (_1!14480 (_1!14481 (h!29976 mapDefault!13553))) ((as const (Array Context!2806 Bool)) false)))))

(declare-fun b!2148412 () Bool)

(declare-fun tp!666846 () Bool)

(assert (=> b!2148412 (= e!1373557 tp!666846)))

(declare-fun mapIsEmpty!13553 () Bool)

(assert (=> mapIsEmpty!13553 mapRes!13553))

(declare-fun b!2148413 () Bool)

(declare-fun e!1373556 () Bool)

(declare-fun tp!666851 () Bool)

(assert (=> b!2148413 (= e!1373556 tp!666851)))

(declare-fun setIsEmpty!16971 () Bool)

(declare-fun setRes!16971 () Bool)

(assert (=> setIsEmpty!16971 setRes!16971))

(declare-fun b!2148414 () Bool)

(declare-fun tp!666847 () Bool)

(assert (=> b!2148414 (= e!1373555 (and setRes!16971 tp!666847))))

(declare-fun condSetEmpty!16971 () Bool)

(assert (=> b!2148414 (= condSetEmpty!16971 (= (_1!14480 (_1!14481 (h!29976 mapValue!13553))) ((as const (Array Context!2806 Bool)) false)))))

(declare-fun tp!666848 () Bool)

(declare-fun setElem!16971 () Context!2806)

(declare-fun setNonEmpty!16972 () Bool)

(assert (=> setNonEmpty!16972 (= setRes!16971 (and tp!666848 (inv!32351 setElem!16971) e!1373556))))

(declare-fun setRest!16971 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16972 (= (_1!14480 (_1!14481 (h!29976 mapValue!13553))) ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16971 true) setRest!16971))))

(declare-fun setIsEmpty!16972 () Bool)

(assert (=> setIsEmpty!16972 setRes!16972))

(assert (= (and mapNonEmpty!13550 condMapEmpty!13553) mapIsEmpty!13553))

(assert (= (and mapNonEmpty!13550 (not condMapEmpty!13553)) mapNonEmpty!13553))

(assert (= (and b!2148414 condSetEmpty!16971) setIsEmpty!16971))

(assert (= (and b!2148414 (not condSetEmpty!16971)) setNonEmpty!16972))

(assert (= setNonEmpty!16972 b!2148413))

(assert (= (and mapNonEmpty!13553 ((_ is Cons!24575) mapValue!13553)) b!2148414))

(assert (= (and b!2148411 condSetEmpty!16972) setIsEmpty!16972))

(assert (= (and b!2148411 (not condSetEmpty!16972)) setNonEmpty!16971))

(assert (= setNonEmpty!16971 b!2148412))

(assert (= (and mapNonEmpty!13550 ((_ is Cons!24575) mapDefault!13553)) b!2148411))

(declare-fun m!2591506 () Bool)

(assert (=> mapNonEmpty!13553 m!2591506))

(declare-fun m!2591508 () Bool)

(assert (=> setNonEmpty!16971 m!2591508))

(declare-fun m!2591510 () Bool)

(assert (=> setNonEmpty!16972 m!2591510))

(declare-fun e!1373563 () Bool)

(assert (=> mapNonEmpty!13550 (= tp!666797 e!1373563)))

(declare-fun b!2148422 () Bool)

(declare-fun e!1373564 () Bool)

(declare-fun tp!666860 () Bool)

(assert (=> b!2148422 (= e!1373564 tp!666860)))

(declare-fun setIsEmpty!16975 () Bool)

(declare-fun setRes!16975 () Bool)

(assert (=> setIsEmpty!16975 setRes!16975))

(declare-fun tp!666858 () Bool)

(declare-fun setElem!16975 () Context!2806)

(declare-fun setNonEmpty!16975 () Bool)

(assert (=> setNonEmpty!16975 (= setRes!16975 (and tp!666858 (inv!32351 setElem!16975) e!1373564))))

(declare-fun setRest!16975 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16975 (= (_1!14480 (_1!14481 (h!29976 mapValue!13550))) ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16975 true) setRest!16975))))

(declare-fun b!2148421 () Bool)

(declare-fun tp!666859 () Bool)

(assert (=> b!2148421 (= e!1373563 (and setRes!16975 tp!666859))))

(declare-fun condSetEmpty!16975 () Bool)

(assert (=> b!2148421 (= condSetEmpty!16975 (= (_1!14480 (_1!14481 (h!29976 mapValue!13550))) ((as const (Array Context!2806 Bool)) false)))))

(assert (= (and b!2148421 condSetEmpty!16975) setIsEmpty!16975))

(assert (= (and b!2148421 (not condSetEmpty!16975)) setNonEmpty!16975))

(assert (= setNonEmpty!16975 b!2148422))

(assert (= (and mapNonEmpty!13550 ((_ is Cons!24575) mapValue!13550)) b!2148421))

(declare-fun m!2591512 () Bool)

(assert (=> setNonEmpty!16975 m!2591512))

(declare-fun e!1373565 () Bool)

(assert (=> b!2148346 (= tp!666806 e!1373565)))

(declare-fun b!2148424 () Bool)

(declare-fun e!1373566 () Bool)

(declare-fun tp!666863 () Bool)

(assert (=> b!2148424 (= e!1373566 tp!666863)))

(declare-fun setIsEmpty!16976 () Bool)

(declare-fun setRes!16976 () Bool)

(assert (=> setIsEmpty!16976 setRes!16976))

(declare-fun setElem!16976 () Context!2806)

(declare-fun setNonEmpty!16976 () Bool)

(declare-fun tp!666861 () Bool)

(assert (=> setNonEmpty!16976 (= setRes!16976 (and tp!666861 (inv!32351 setElem!16976) e!1373566))))

(declare-fun setRest!16976 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16976 (= (_1!14480 (_1!14481 (h!29976 (zeroValue!3116 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16976 true) setRest!16976))))

(declare-fun b!2148423 () Bool)

(declare-fun tp!666862 () Bool)

(assert (=> b!2148423 (= e!1373565 (and setRes!16976 tp!666862))))

(declare-fun condSetEmpty!16976 () Bool)

(assert (=> b!2148423 (= condSetEmpty!16976 (= (_1!14480 (_1!14481 (h!29976 (zeroValue!3116 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))))) ((as const (Array Context!2806 Bool)) false)))))

(assert (= (and b!2148423 condSetEmpty!16976) setIsEmpty!16976))

(assert (= (and b!2148423 (not condSetEmpty!16976)) setNonEmpty!16976))

(assert (= setNonEmpty!16976 b!2148424))

(assert (= (and b!2148346 ((_ is Cons!24575) (zeroValue!3116 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110)))))))) b!2148423))

(declare-fun m!2591514 () Bool)

(assert (=> setNonEmpty!16976 m!2591514))

(declare-fun e!1373567 () Bool)

(assert (=> b!2148346 (= tp!666803 e!1373567)))

(declare-fun b!2148426 () Bool)

(declare-fun e!1373568 () Bool)

(declare-fun tp!666866 () Bool)

(assert (=> b!2148426 (= e!1373568 tp!666866)))

(declare-fun setIsEmpty!16977 () Bool)

(declare-fun setRes!16977 () Bool)

(assert (=> setIsEmpty!16977 setRes!16977))

(declare-fun tp!666864 () Bool)

(declare-fun setNonEmpty!16977 () Bool)

(declare-fun setElem!16977 () Context!2806)

(assert (=> setNonEmpty!16977 (= setRes!16977 (and tp!666864 (inv!32351 setElem!16977) e!1373568))))

(declare-fun setRest!16977 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16977 (= (_1!14480 (_1!14481 (h!29976 (minValue!3116 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16977 true) setRest!16977))))

(declare-fun b!2148425 () Bool)

(declare-fun tp!666865 () Bool)

(assert (=> b!2148425 (= e!1373567 (and setRes!16977 tp!666865))))

(declare-fun condSetEmpty!16977 () Bool)

(assert (=> b!2148425 (= condSetEmpty!16977 (= (_1!14480 (_1!14481 (h!29976 (minValue!3116 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110))))))))) ((as const (Array Context!2806 Bool)) false)))))

(assert (= (and b!2148425 condSetEmpty!16977) setIsEmpty!16977))

(assert (= (and b!2148425 (not condSetEmpty!16977)) setNonEmpty!16977))

(assert (= setNonEmpty!16977 b!2148426))

(assert (= (and b!2148346 ((_ is Cons!24575) (minValue!3116 (v!29154 (underlying!5911 (v!29155 (underlying!5912 (cache!3153 thiss!29110)))))))) b!2148425))

(declare-fun m!2591516 () Bool)

(assert (=> setNonEmpty!16977 m!2591516))

(declare-fun e!1373569 () Bool)

(assert (=> b!2148349 (= tp!666798 e!1373569)))

(declare-fun b!2148428 () Bool)

(declare-fun e!1373570 () Bool)

(declare-fun tp!666869 () Bool)

(assert (=> b!2148428 (= e!1373570 tp!666869)))

(declare-fun setIsEmpty!16978 () Bool)

(declare-fun setRes!16978 () Bool)

(assert (=> setIsEmpty!16978 setRes!16978))

(declare-fun setNonEmpty!16978 () Bool)

(declare-fun setElem!16978 () Context!2806)

(declare-fun tp!666867 () Bool)

(assert (=> setNonEmpty!16978 (= setRes!16978 (and tp!666867 (inv!32351 setElem!16978) e!1373570))))

(declare-fun setRest!16978 () (InoxSet Context!2806))

(assert (=> setNonEmpty!16978 (= (_1!14480 (_1!14481 (h!29976 mapDefault!13550))) ((_ map or) (store ((as const (Array Context!2806 Bool)) false) setElem!16978 true) setRest!16978))))

(declare-fun b!2148427 () Bool)

(declare-fun tp!666868 () Bool)

(assert (=> b!2148427 (= e!1373569 (and setRes!16978 tp!666868))))

(declare-fun condSetEmpty!16978 () Bool)

(assert (=> b!2148427 (= condSetEmpty!16978 (= (_1!14480 (_1!14481 (h!29976 mapDefault!13550))) ((as const (Array Context!2806 Bool)) false)))))

(assert (= (and b!2148427 condSetEmpty!16978) setIsEmpty!16978))

(assert (= (and b!2148427 (not condSetEmpty!16978)) setNonEmpty!16978))

(assert (= setNonEmpty!16978 b!2148428))

(assert (= (and b!2148349 ((_ is Cons!24575) mapDefault!13550)) b!2148427))

(declare-fun m!2591518 () Bool)

(assert (=> setNonEmpty!16978 m!2591518))

(check-sat (not b!2148376) (not b_next!64125) (not b!2148425) (not b!2148414) (not b!2148393) (not b!2148426) (not b!2148362) (not setNonEmpty!16966) (not b!2148411) (not setNonEmpty!16977) (not d!645420) (not b!2148340) (not setNonEmpty!16971) (not b!2148385) (not d!645414) (not b!2148413) (not b!2148428) (not b!2148400) (not d!645410) (not b!2148423) (not d!645416) (not setNonEmpty!16978) (not setNonEmpty!16976) (not b!2148368) (not b!2148344) (not setNonEmpty!16972) (not b!2148412) (not b!2148424) (not b!2148373) (not b!2148360) (not b!2148387) (not b!2148394) (not b!2148371) (not mapNonEmpty!13553) b_and!173017 (not d!645408) b_and!173019 (not b!2148386) (not b!2148422) (not b!2148392) (not b!2148367) (not b!2148395) (not b_next!64127) (not b!2148421) (not setNonEmpty!16975) (not b!2148427))
(check-sat b_and!173017 b_and!173019 (not b_next!64127) (not b_next!64125))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217092 () Bool)

(assert start!217092)

(declare-fun b!2224672 () Bool)

(declare-fun b_free!64481 () Bool)

(declare-fun b_next!65185 () Bool)

(assert (=> b!2224672 (= b_free!64481 (not b_next!65185))))

(declare-fun tp!694562 () Bool)

(declare-fun b_and!174469 () Bool)

(assert (=> b!2224672 (= tp!694562 b_and!174469)))

(declare-fun b!2224674 () Bool)

(declare-fun b_free!64483 () Bool)

(declare-fun b_next!65187 () Bool)

(assert (=> b!2224674 (= b_free!64483 (not b_next!65187))))

(declare-fun tp!694560 () Bool)

(declare-fun b_and!174471 () Bool)

(assert (=> b!2224674 (= tp!694560 b_and!174471)))

(declare-fun mapNonEmpty!14175 () Bool)

(declare-fun mapRes!14175 () Bool)

(declare-fun tp!694567 () Bool)

(declare-fun tp!694566 () Bool)

(assert (=> mapNonEmpty!14175 (= mapRes!14175 (and tp!694567 tp!694566))))

(declare-datatypes ((C!12880 0))(
  ( (C!12881 (val!7488 Int)) )
))
(declare-datatypes ((Regex!6367 0))(
  ( (ElementMatch!6367 (c!355169 C!12880)) (Concat!10705 (regOne!13246 Regex!6367) (regTwo!13246 Regex!6367)) (EmptyExpr!6367) (Star!6367 (reg!6696 Regex!6367)) (EmptyLang!6367) (Union!6367 (regOne!13247 Regex!6367) (regTwo!13247 Regex!6367)) )
))
(declare-datatypes ((List!26201 0))(
  ( (Nil!26107) (Cons!26107 (h!31508 Regex!6367) (t!199613 List!26201)) )
))
(declare-datatypes ((Context!3830 0))(
  ( (Context!3831 (exprs!2415 List!26201)) )
))
(declare-datatypes ((tuple2!25378 0))(
  ( (tuple2!25379 (_1!15073 Context!3830) (_2!15073 C!12880)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25380 0))(
  ( (tuple2!25381 (_1!15074 tuple2!25378) (_2!15074 (InoxSet Context!3830))) )
))
(declare-datatypes ((List!26202 0))(
  ( (Nil!26108) (Cons!26108 (h!31509 tuple2!25380) (t!199614 List!26202)) )
))
(declare-fun mapValue!14175 () List!26202)

(declare-fun mapRest!14175 () (Array (_ BitVec 32) List!26202))

(declare-datatypes ((array!10330 0))(
  ( (array!10331 (arr!4597 (Array (_ BitVec 32) (_ BitVec 64))) (size!20378 (_ BitVec 32))) )
))
(declare-datatypes ((array!10332 0))(
  ( (array!10333 (arr!4598 (Array (_ BitVec 32) List!26202)) (size!20379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6010 0))(
  ( (LongMapFixedSize!6011 (defaultEntry!3370 Int) (mask!7542 (_ BitVec 32)) (extraKeys!3253 (_ BitVec 32)) (zeroValue!3263 List!26202) (minValue!3263 List!26202) (_size!6057 (_ BitVec 32)) (_keys!3302 array!10330) (_values!3285 array!10332) (_vacant!3066 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11837 0))(
  ( (Cell!11838 (v!29672 LongMapFixedSize!6010)) )
))
(declare-datatypes ((MutLongMap!3005 0))(
  ( (LongMap!3005 (underlying!6211 Cell!11837)) (MutLongMapExt!3004 (__x!17241 Int)) )
))
(declare-datatypes ((Cell!11839 0))(
  ( (Cell!11840 (v!29673 MutLongMap!3005)) )
))
(declare-datatypes ((Hashable!2915 0))(
  ( (HashableExt!2914 (__x!17242 Int)) )
))
(declare-datatypes ((MutableMap!2915 0))(
  ( (MutableMapExt!2914 (__x!17243 Int)) (HashMap!2915 (underlying!6212 Cell!11839) (hashF!4838 Hashable!2915) (_size!6058 (_ BitVec 32)) (defaultValue!3077 Int)) )
))
(declare-datatypes ((CacheUp!1952 0))(
  ( (CacheUp!1953 (cache!3296 MutableMap!2915)) )
))
(declare-fun thiss!28682 () CacheUp!1952)

(declare-fun mapKey!14175 () (_ BitVec 32))

(assert (=> mapNonEmpty!14175 (= (arr!4598 (_values!3285 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) (store mapRest!14175 mapKey!14175 mapValue!14175))))

(declare-fun b!2224671 () Bool)

(declare-fun e!1421517 () Bool)

(declare-fun tp!694564 () Bool)

(assert (=> b!2224671 (= e!1421517 tp!694564)))

(declare-fun setIsEmpty!19742 () Bool)

(declare-fun setRes!19742 () Bool)

(assert (=> setIsEmpty!19742 setRes!19742))

(declare-fun tp!694568 () Bool)

(declare-fun e!1421513 () Bool)

(declare-fun tp!694565 () Bool)

(declare-fun e!1421516 () Bool)

(declare-fun array_inv!3301 (array!10330) Bool)

(declare-fun array_inv!3302 (array!10332) Bool)

(assert (=> b!2224672 (= e!1421513 (and tp!694562 tp!694568 tp!694565 (array_inv!3301 (_keys!3302 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) (array_inv!3302 (_values!3285 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) e!1421516))))

(declare-fun b!2224673 () Bool)

(declare-fun e!1421509 () Bool)

(declare-fun e!1421508 () Bool)

(declare-fun lt!829605 () MutLongMap!3005)

(get-info :version)

(assert (=> b!2224673 (= e!1421509 (and e!1421508 ((_ is LongMap!3005) lt!829605)))))

(assert (=> b!2224673 (= lt!829605 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))

(declare-fun b!2224675 () Bool)

(declare-fun res!954218 () Bool)

(declare-fun e!1421518 () Bool)

(assert (=> b!2224675 (=> (not res!954218) (not e!1421518))))

(declare-fun ctx!44 () Context!3830)

(declare-fun res!14206 () (InoxSet Context!3830))

(declare-fun a!962 () C!12880)

(declare-fun derivationStepZipperUp!31 (Context!3830 C!12880) (InoxSet Context!3830))

(assert (=> b!2224675 (= res!954218 (= res!14206 (derivationStepZipperUp!31 ctx!44 a!962)))))

(declare-fun b!2224676 () Bool)

(declare-fun e!1421511 () Bool)

(declare-fun e!1421515 () Bool)

(assert (=> b!2224676 (= e!1421511 e!1421515)))

(declare-fun e!1421512 () Bool)

(declare-fun tp!694559 () Bool)

(declare-fun setElem!19742 () Context!3830)

(declare-fun setNonEmpty!19742 () Bool)

(declare-fun inv!35447 (Context!3830) Bool)

(assert (=> setNonEmpty!19742 (= setRes!19742 (and tp!694559 (inv!35447 setElem!19742) e!1421512))))

(declare-fun setRest!19742 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19742 (= res!14206 ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19742 true) setRest!19742))))

(declare-fun res!954217 () Bool)

(assert (=> start!217092 (=> (not res!954217) (not e!1421518))))

(declare-fun validCacheMapUp!281 (MutableMap!2915) Bool)

(assert (=> start!217092 (= res!954217 (validCacheMapUp!281 (cache!3296 thiss!28682)))))

(assert (=> start!217092 e!1421518))

(declare-fun inv!35448 (CacheUp!1952) Bool)

(assert (=> start!217092 (and (inv!35448 thiss!28682) e!1421511)))

(declare-fun condSetEmpty!19742 () Bool)

(assert (=> start!217092 (= condSetEmpty!19742 (= res!14206 ((as const (Array Context!3830 Bool)) false)))))

(assert (=> start!217092 setRes!19742))

(assert (=> start!217092 (and (inv!35447 ctx!44) e!1421517)))

(declare-fun tp_is_empty!9959 () Bool)

(assert (=> start!217092 tp_is_empty!9959))

(assert (=> b!2224674 (= e!1421515 (and e!1421509 tp!694560))))

(declare-fun mapIsEmpty!14175 () Bool)

(assert (=> mapIsEmpty!14175 mapRes!14175))

(declare-fun b!2224677 () Bool)

(declare-fun e!1421510 () Bool)

(assert (=> b!2224677 (= e!1421508 e!1421510)))

(declare-fun b!2224678 () Bool)

(declare-fun tp!694561 () Bool)

(assert (=> b!2224678 (= e!1421516 (and tp!694561 mapRes!14175))))

(declare-fun condMapEmpty!14175 () Bool)

(declare-fun mapDefault!14175 () List!26202)

(assert (=> b!2224678 (= condMapEmpty!14175 (= (arr!4598 (_values!3285 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26202)) mapDefault!14175)))))

(declare-fun b!2224679 () Bool)

(assert (=> b!2224679 (= e!1421510 e!1421513)))

(declare-fun b!2224680 () Bool)

(declare-datatypes ((tuple2!25382 0))(
  ( (tuple2!25383 (_1!15075 Bool) (_2!15075 MutableMap!2915)) )
))
(declare-fun lt!829604 () tuple2!25382)

(assert (=> b!2224680 (= e!1421518 (not ((_ is HashMap!2915) (_2!15075 lt!829604))))))

(declare-fun lambda!84110 () Int)

(declare-fun forall!5327 (List!26202 Int) Bool)

(declare-datatypes ((ListMap!777 0))(
  ( (ListMap!778 (toList!1312 List!26202)) )
))
(declare-fun map!5317 (MutableMap!2915) ListMap!777)

(assert (=> b!2224680 (forall!5327 (toList!1312 (map!5317 (_2!15075 lt!829604))) lambda!84110)))

(declare-fun lt!829607 () tuple2!25378)

(declare-fun update!127 (MutableMap!2915 tuple2!25378 (InoxSet Context!3830)) tuple2!25382)

(assert (=> b!2224680 (= lt!829604 (update!127 (cache!3296 thiss!28682) lt!829607 res!14206))))

(declare-datatypes ((Unit!39098 0))(
  ( (Unit!39099) )
))
(declare-fun lt!829606 () Unit!39098)

(declare-fun lemmaUpdatePreservesForallPairs!17 (MutableMap!2915 tuple2!25378 (InoxSet Context!3830) Int) Unit!39098)

(assert (=> b!2224680 (= lt!829606 (lemmaUpdatePreservesForallPairs!17 (cache!3296 thiss!28682) lt!829607 res!14206 lambda!84110))))

(assert (=> b!2224680 (= lt!829607 (tuple2!25379 ctx!44 a!962))))

(declare-fun b!2224681 () Bool)

(declare-fun tp!694563 () Bool)

(assert (=> b!2224681 (= e!1421512 tp!694563)))

(assert (= (and start!217092 res!954217) b!2224675))

(assert (= (and b!2224675 res!954218) b!2224680))

(assert (= (and b!2224678 condMapEmpty!14175) mapIsEmpty!14175))

(assert (= (and b!2224678 (not condMapEmpty!14175)) mapNonEmpty!14175))

(assert (= b!2224672 b!2224678))

(assert (= b!2224679 b!2224672))

(assert (= b!2224677 b!2224679))

(assert (= (and b!2224673 ((_ is LongMap!3005) (v!29673 (underlying!6212 (cache!3296 thiss!28682))))) b!2224677))

(assert (= b!2224674 b!2224673))

(assert (= (and b!2224676 ((_ is HashMap!2915) (cache!3296 thiss!28682))) b!2224674))

(assert (= start!217092 b!2224676))

(assert (= (and start!217092 condSetEmpty!19742) setIsEmpty!19742))

(assert (= (and start!217092 (not condSetEmpty!19742)) setNonEmpty!19742))

(assert (= setNonEmpty!19742 b!2224681))

(assert (= start!217092 b!2224671))

(declare-fun m!2664594 () Bool)

(assert (=> b!2224675 m!2664594))

(declare-fun m!2664596 () Bool)

(assert (=> start!217092 m!2664596))

(declare-fun m!2664598 () Bool)

(assert (=> start!217092 m!2664598))

(declare-fun m!2664600 () Bool)

(assert (=> start!217092 m!2664600))

(declare-fun m!2664602 () Bool)

(assert (=> b!2224680 m!2664602))

(declare-fun m!2664604 () Bool)

(assert (=> b!2224680 m!2664604))

(declare-fun m!2664606 () Bool)

(assert (=> b!2224680 m!2664606))

(declare-fun m!2664608 () Bool)

(assert (=> b!2224680 m!2664608))

(declare-fun m!2664610 () Bool)

(assert (=> b!2224672 m!2664610))

(declare-fun m!2664612 () Bool)

(assert (=> b!2224672 m!2664612))

(declare-fun m!2664614 () Bool)

(assert (=> setNonEmpty!19742 m!2664614))

(declare-fun m!2664616 () Bool)

(assert (=> mapNonEmpty!14175 m!2664616))

(check-sat (not mapNonEmpty!14175) b_and!174471 (not b!2224680) (not b_next!65187) tp_is_empty!9959 (not b!2224678) (not setNonEmpty!19742) (not b!2224675) (not b!2224671) (not b!2224672) (not b_next!65185) (not start!217092) b_and!174469 (not b!2224681))
(check-sat b_and!174471 b_and!174469 (not b_next!65187) (not b_next!65185))
(get-model)

(declare-fun d!664435 () Bool)

(declare-fun res!954223 () Bool)

(declare-fun e!1421523 () Bool)

(assert (=> d!664435 (=> res!954223 e!1421523)))

(assert (=> d!664435 (= res!954223 ((_ is Nil!26108) (toList!1312 (map!5317 (_2!15075 lt!829604)))))))

(assert (=> d!664435 (= (forall!5327 (toList!1312 (map!5317 (_2!15075 lt!829604))) lambda!84110) e!1421523)))

(declare-fun b!2224686 () Bool)

(declare-fun e!1421524 () Bool)

(assert (=> b!2224686 (= e!1421523 e!1421524)))

(declare-fun res!954224 () Bool)

(assert (=> b!2224686 (=> (not res!954224) (not e!1421524))))

(declare-fun dynLambda!11516 (Int tuple2!25380) Bool)

(assert (=> b!2224686 (= res!954224 (dynLambda!11516 lambda!84110 (h!31509 (toList!1312 (map!5317 (_2!15075 lt!829604))))))))

(declare-fun b!2224687 () Bool)

(assert (=> b!2224687 (= e!1421524 (forall!5327 (t!199614 (toList!1312 (map!5317 (_2!15075 lt!829604)))) lambda!84110))))

(assert (= (and d!664435 (not res!954223)) b!2224686))

(assert (= (and b!2224686 res!954224) b!2224687))

(declare-fun b_lambda!71621 () Bool)

(assert (=> (not b_lambda!71621) (not b!2224686)))

(declare-fun m!2664618 () Bool)

(assert (=> b!2224686 m!2664618))

(declare-fun m!2664620 () Bool)

(assert (=> b!2224687 m!2664620))

(assert (=> b!2224680 d!664435))

(declare-fun d!664437 () Bool)

(declare-fun lt!829610 () ListMap!777)

(declare-fun invariantList!352 (List!26202) Bool)

(assert (=> d!664437 (invariantList!352 (toList!1312 lt!829610))))

(declare-datatypes ((tuple2!25384 0))(
  ( (tuple2!25385 (_1!15076 (_ BitVec 64)) (_2!15076 List!26202)) )
))
(declare-datatypes ((List!26203 0))(
  ( (Nil!26109) (Cons!26109 (h!31510 tuple2!25384) (t!199615 List!26203)) )
))
(declare-fun extractMap!98 (List!26203) ListMap!777)

(declare-datatypes ((ListLongMap!301 0))(
  ( (ListLongMap!302 (toList!1313 List!26203)) )
))
(declare-fun map!5318 (MutLongMap!3005) ListLongMap!301)

(assert (=> d!664437 (= lt!829610 (extractMap!98 (toList!1313 (map!5318 (v!29673 (underlying!6212 (_2!15075 lt!829604)))))))))

(declare-fun valid!2308 (MutableMap!2915) Bool)

(assert (=> d!664437 (valid!2308 (_2!15075 lt!829604))))

(assert (=> d!664437 (= (map!5317 (_2!15075 lt!829604)) lt!829610)))

(declare-fun bs!453488 () Bool)

(assert (= bs!453488 d!664437))

(declare-fun m!2664622 () Bool)

(assert (=> bs!453488 m!2664622))

(declare-fun m!2664624 () Bool)

(assert (=> bs!453488 m!2664624))

(declare-fun m!2664626 () Bool)

(assert (=> bs!453488 m!2664626))

(declare-fun m!2664628 () Bool)

(assert (=> bs!453488 m!2664628))

(assert (=> b!2224680 d!664437))

(declare-fun bs!453489 () Bool)

(declare-fun b!2224739 () Bool)

(declare-fun b!2224735 () Bool)

(assert (= bs!453489 (and b!2224739 b!2224735)))

(declare-fun lambda!84120 () Int)

(declare-fun lambda!84119 () Int)

(assert (=> bs!453489 (= lambda!84120 lambda!84119)))

(declare-fun bm!133120 () Bool)

(declare-fun call!133142 () List!26202)

(declare-fun lt!829725 () List!26202)

(declare-fun c!355185 () Bool)

(declare-fun lt!829763 () List!26202)

(declare-fun removePairForKey!28 (List!26202 tuple2!25378) List!26202)

(assert (=> bm!133120 (= call!133142 (removePairForKey!28 (ite c!355185 lt!829725 lt!829763) lt!829607))))

(declare-fun bm!133121 () Bool)

(declare-fun call!133134 () ListMap!777)

(declare-fun call!133155 () ListMap!777)

(assert (=> bm!133121 (= call!133134 call!133155)))

(declare-fun b!2224726 () Bool)

(declare-fun e!1421551 () Bool)

(declare-fun e!1421553 () Bool)

(assert (=> b!2224726 (= e!1421551 e!1421553)))

(declare-fun c!355190 () Bool)

(declare-fun lt!829768 () tuple2!25382)

(assert (=> b!2224726 (= c!355190 (_1!15075 lt!829768))))

(declare-fun call!133141 () Bool)

(declare-fun lt!829749 () ListMap!777)

(declare-fun bm!133122 () Bool)

(declare-fun contains!4362 (ListMap!777 tuple2!25378) Bool)

(assert (=> bm!133122 (= call!133141 (contains!4362 (ite c!355185 lt!829749 call!133134) lt!829607))))

(declare-fun bm!133123 () Bool)

(declare-fun call!133126 () Bool)

(declare-fun call!133150 () ListLongMap!301)

(declare-fun allKeysSameHashInMap!97 (ListLongMap!301 Hashable!2915) Bool)

(assert (=> bm!133123 (= call!133126 (allKeysSameHashInMap!97 call!133150 (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun bm!133124 () Bool)

(declare-fun call!133138 () (_ BitVec 64))

(declare-fun hash!568 (Hashable!2915 tuple2!25378) (_ BitVec 64))

(assert (=> bm!133124 (= call!133138 (hash!568 (hashF!4838 (cache!3296 thiss!28682)) lt!829607))))

(declare-fun bm!133125 () Bool)

(declare-fun call!133148 () Bool)

(declare-fun call!133147 () ListMap!777)

(declare-fun call!133140 () ListMap!777)

(declare-fun eq!49 (ListMap!777 ListMap!777) Bool)

(assert (=> bm!133125 (= call!133148 (eq!49 call!133147 call!133140))))

(declare-fun lt!829756 () (_ BitVec 64))

(declare-fun call!133154 () Unit!39098)

(declare-fun lt!829722 () ListLongMap!301)

(declare-fun lt!829746 () (_ BitVec 64))

(declare-fun bm!133126 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!28 (List!26203 (_ BitVec 64) List!26202 Hashable!2915) Unit!39098)

(assert (=> bm!133126 (= call!133154 (lemmaInLongMapAllKeySameHashThenForTuple!28 (toList!1313 lt!829722) (ite c!355185 lt!829746 lt!829756) (ite c!355185 lt!829725 lt!829763) (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun b!2224727 () Bool)

(declare-fun res!954239 () Bool)

(assert (=> b!2224727 (=> (not res!954239) (not e!1421551))))

(assert (=> b!2224727 (= res!954239 (valid!2308 (_2!15075 lt!829768)))))

(declare-fun lt!829753 () ListMap!777)

(declare-fun bm!133127 () Bool)

(declare-fun call!133149 () ListMap!777)

(declare-fun +!51 (ListMap!777 tuple2!25380) ListMap!777)

(assert (=> bm!133127 (= call!133149 (+!51 lt!829753 (tuple2!25381 lt!829607 res!14206)))))

(declare-fun bm!133128 () Bool)

(declare-fun call!133152 () ListMap!777)

(assert (=> bm!133128 (= call!133152 call!133155)))

(declare-fun b!2224728 () Bool)

(declare-fun e!1421557 () List!26202)

(declare-fun call!133130 () List!26202)

(assert (=> b!2224728 (= e!1421557 call!133130)))

(declare-fun b!2224729 () Bool)

(assert (=> b!2224729 (= call!133134 lt!829753)))

(declare-fun lt!829742 () Unit!39098)

(declare-fun Unit!39100 () Unit!39098)

(assert (=> b!2224729 (= lt!829742 Unit!39100)))

(declare-fun call!133125 () Bool)

(assert (=> b!2224729 call!133125))

(declare-fun e!1421556 () Unit!39098)

(declare-fun Unit!39101 () Unit!39098)

(assert (=> b!2224729 (= e!1421556 Unit!39101)))

(declare-fun lt!829766 () MutableMap!2915)

(declare-fun b!2224730 () Bool)

(declare-datatypes ((tuple2!25386 0))(
  ( (tuple2!25387 (_1!15077 Bool) (_2!15077 MutLongMap!3005)) )
))
(declare-fun lt!829741 () tuple2!25386)

(declare-fun e!1421554 () tuple2!25382)

(declare-datatypes ((tuple2!25388 0))(
  ( (tuple2!25389 (_1!15078 Unit!39098) (_2!15078 MutableMap!2915)) )
))
(declare-fun Unit!39102 () Unit!39098)

(declare-fun Unit!39103 () Unit!39098)

(assert (=> b!2224730 (= e!1421554 (tuple2!25383 (_1!15077 lt!829741) (_2!15078 (ite false (tuple2!25389 Unit!39102 (HashMap!2915 (Cell!11840 (_2!15077 lt!829741)) (hashF!4838 (cache!3296 thiss!28682)) (bvadd (_size!6058 (cache!3296 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3077 (cache!3296 thiss!28682)))) (tuple2!25389 Unit!39103 lt!829766)))))))

(assert (=> b!2224730 (= lt!829746 call!133138)))

(assert (=> b!2224730 (= lt!829725 call!133130)))

(declare-fun lt!829757 () List!26202)

(assert (=> b!2224730 (= lt!829757 (Cons!26108 (tuple2!25381 lt!829607 res!14206) call!133142))))

(declare-fun call!133151 () tuple2!25386)

(assert (=> b!2224730 (= lt!829741 call!133151)))

(assert (=> b!2224730 (= lt!829766 (HashMap!2915 (Cell!11840 (_2!15077 lt!829741)) (hashF!4838 (cache!3296 thiss!28682)) (_size!6058 (cache!3296 thiss!28682)) (defaultValue!3077 (cache!3296 thiss!28682))))))

(declare-fun c!355186 () Bool)

(assert (=> b!2224730 (= c!355186 (_1!15077 lt!829741))))

(declare-fun lt!829730 () Unit!39098)

(declare-fun e!1421555 () Unit!39098)

(assert (=> b!2224730 (= lt!829730 e!1421555)))

(declare-fun call!133137 () ListMap!777)

(declare-fun b!2224731 () Bool)

(declare-fun e!1421548 () ListMap!777)

(assert (=> b!2224731 (= e!1421548 (+!51 call!133137 (tuple2!25381 lt!829607 res!14206)))))

(declare-fun bm!133130 () Bool)

(declare-fun apply!6462 (MutLongMap!3005 (_ BitVec 64)) List!26202)

(assert (=> bm!133130 (= call!133130 (apply!6462 (v!29673 (underlying!6212 (cache!3296 thiss!28682))) (ite c!355185 lt!829746 lt!829756)))))

(declare-fun bm!133131 () Bool)

(declare-fun lt!829739 () MutableMap!2915)

(assert (=> bm!133131 (= call!133155 (map!5317 (ite c!355185 lt!829766 lt!829739)))))

(declare-fun b!2224732 () Bool)

(declare-fun e!1421549 () Bool)

(declare-fun call!133132 () Bool)

(assert (=> b!2224732 (= e!1421549 call!133132)))

(declare-fun b!2224733 () Bool)

(assert (=> b!2224733 (= e!1421548 call!133137)))

(declare-fun b!2224734 () Bool)

(declare-fun e!1421547 () Unit!39098)

(declare-fun lt!829735 () Unit!39098)

(assert (=> b!2224734 (= e!1421547 lt!829735)))

(declare-fun lt!829723 () Unit!39098)

(assert (=> b!2224734 (= lt!829723 call!133154)))

(declare-fun call!133127 () Bool)

(assert (=> b!2224734 call!133127))

(declare-fun lt!829745 () Unit!39098)

(assert (=> b!2224734 (= lt!829745 lt!829723)))

(declare-fun call!133129 () Unit!39098)

(assert (=> b!2224734 (= lt!829735 call!133129)))

(declare-fun call!133136 () Bool)

(assert (=> b!2224734 call!133136))

(declare-fun bm!133132 () Bool)

(declare-fun call!133143 () Bool)

(declare-fun call!133146 () ListMap!777)

(assert (=> bm!133132 (= call!133143 (eq!49 call!133146 e!1421548))))

(declare-fun c!355187 () Bool)

(assert (=> bm!133132 (= c!355187 c!355190)))

(declare-fun call!133128 () Bool)

(assert (=> b!2224735 call!133128))

(declare-fun lt!829732 () Unit!39098)

(declare-fun Unit!39104 () Unit!39098)

(assert (=> b!2224735 (= lt!829732 Unit!39104)))

(assert (=> b!2224735 call!133126))

(declare-fun lt!829721 () Unit!39098)

(declare-fun Unit!39105 () Unit!39098)

(assert (=> b!2224735 (= lt!829721 Unit!39105)))

(declare-fun call!133145 () Bool)

(assert (=> b!2224735 call!133145))

(declare-fun lt!829761 () Unit!39098)

(declare-fun lt!829743 () Unit!39098)

(assert (=> b!2224735 (= lt!829761 lt!829743)))

(declare-fun call!133131 () Bool)

(assert (=> b!2224735 (= call!133141 call!133131)))

(declare-fun call!133133 () Unit!39098)

(assert (=> b!2224735 (= lt!829743 call!133133)))

(declare-fun lt!829770 () ListMap!777)

(assert (=> b!2224735 (= lt!829770 call!133149)))

(assert (=> b!2224735 (= lt!829749 call!133152)))

(declare-fun lt!829775 () Unit!39098)

(declare-fun lt!829774 () Unit!39098)

(assert (=> b!2224735 (= lt!829775 lt!829774)))

(assert (=> b!2224735 call!133148))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!9 (ListLongMap!301 (_ BitVec 64) List!26202 tuple2!25378 (InoxSet Context!3830) Hashable!2915) Unit!39098)

(assert (=> b!2224735 (= lt!829774 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!9 lt!829722 lt!829746 lt!829757 lt!829607 res!14206 (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun lt!829750 () Unit!39098)

(declare-fun lt!829740 () Unit!39098)

(assert (=> b!2224735 (= lt!829750 lt!829740)))

(assert (=> b!2224735 e!1421549))

(declare-fun res!954236 () Bool)

(assert (=> b!2224735 (=> (not res!954236) (not e!1421549))))

(declare-fun call!133135 () Bool)

(assert (=> b!2224735 (= res!954236 call!133135)))

(declare-fun lt!829767 () ListLongMap!301)

(declare-fun call!133139 () ListLongMap!301)

(assert (=> b!2224735 (= lt!829767 call!133139)))

(declare-fun call!133153 () Unit!39098)

(assert (=> b!2224735 (= lt!829740 call!133153)))

(declare-fun lt!829760 () Unit!39098)

(declare-fun Unit!39106 () Unit!39098)

(assert (=> b!2224735 (= lt!829760 Unit!39106)))

(declare-fun noDuplicateKeys!34 (List!26202) Bool)

(assert (=> b!2224735 (noDuplicateKeys!34 lt!829757)))

(declare-fun lt!829738 () Unit!39098)

(declare-fun Unit!39107 () Unit!39098)

(assert (=> b!2224735 (= lt!829738 Unit!39107)))

(declare-fun containsKey!70 (List!26202 tuple2!25378) Bool)

(assert (=> b!2224735 (not (containsKey!70 call!133142 lt!829607))))

(declare-fun lt!829747 () Unit!39098)

(declare-fun Unit!39108 () Unit!39098)

(assert (=> b!2224735 (= lt!829747 Unit!39108)))

(declare-fun lt!829724 () Unit!39098)

(declare-fun lt!829728 () Unit!39098)

(assert (=> b!2224735 (= lt!829724 lt!829728)))

(assert (=> b!2224735 (noDuplicateKeys!34 call!133142)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!28 (List!26202 tuple2!25378) Unit!39098)

(assert (=> b!2224735 (= lt!829728 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!28 lt!829725 lt!829607))))

(declare-fun lt!829744 () Unit!39098)

(declare-fun lt!829734 () Unit!39098)

(assert (=> b!2224735 (= lt!829744 lt!829734)))

(assert (=> b!2224735 call!133136))

(assert (=> b!2224735 (= lt!829734 call!133129)))

(declare-fun lt!829726 () Unit!39098)

(declare-fun lt!829769 () Unit!39098)

(assert (=> b!2224735 (= lt!829726 lt!829769)))

(assert (=> b!2224735 call!133127))

(assert (=> b!2224735 (= lt!829769 call!133154)))

(declare-fun Unit!39109 () Unit!39098)

(assert (=> b!2224735 (= e!1421555 Unit!39109)))

(declare-fun bm!133133 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!28 (List!26202 tuple2!25378 (_ BitVec 64) Hashable!2915) Unit!39098)

(assert (=> bm!133133 (= call!133129 (lemmaRemovePairForKeyPreservesHash!28 (ite c!355185 lt!829725 lt!829763) lt!829607 (ite c!355185 lt!829746 lt!829756) (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun lt!829727 () tuple2!25386)

(declare-fun b!2224736 () Bool)

(declare-fun Unit!39110 () Unit!39098)

(declare-fun Unit!39111 () Unit!39098)

(assert (=> b!2224736 (= e!1421554 (tuple2!25383 (_1!15077 lt!829727) (_2!15078 (ite (_1!15077 lt!829727) (tuple2!25389 Unit!39110 (HashMap!2915 (Cell!11840 (_2!15077 lt!829727)) (hashF!4838 (cache!3296 thiss!28682)) (bvadd (_size!6058 (cache!3296 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3077 (cache!3296 thiss!28682)))) (tuple2!25389 Unit!39111 lt!829739)))))))

(assert (=> b!2224736 (= lt!829756 call!133138)))

(declare-fun c!355189 () Bool)

(declare-fun contains!4363 (MutLongMap!3005 (_ BitVec 64)) Bool)

(assert (=> b!2224736 (= c!355189 (contains!4363 (v!29673 (underlying!6212 (cache!3296 thiss!28682))) lt!829756))))

(assert (=> b!2224736 (= lt!829763 e!1421557)))

(declare-fun lt!829765 () List!26202)

(assert (=> b!2224736 (= lt!829765 (Cons!26108 (tuple2!25381 lt!829607 res!14206) lt!829763))))

(assert (=> b!2224736 (= lt!829727 call!133151)))

(assert (=> b!2224736 (= lt!829739 (HashMap!2915 (Cell!11840 (_2!15077 lt!829727)) (hashF!4838 (cache!3296 thiss!28682)) (_size!6058 (cache!3296 thiss!28682)) (defaultValue!3077 (cache!3296 thiss!28682))))))

(declare-fun c!355184 () Bool)

(assert (=> b!2224736 (= c!355184 (_1!15077 lt!829727))))

(declare-fun lt!829762 () Unit!39098)

(assert (=> b!2224736 (= lt!829762 e!1421556)))

(declare-fun b!2224737 () Bool)

(assert (=> b!2224737 (= call!133152 lt!829753)))

(declare-fun lt!829748 () Unit!39098)

(declare-fun Unit!39112 () Unit!39098)

(assert (=> b!2224737 (= lt!829748 Unit!39112)))

(assert (=> b!2224737 call!133125))

(declare-fun Unit!39113 () Unit!39098)

(assert (=> b!2224737 (= e!1421555 Unit!39113)))

(declare-fun lt!829752 () ListLongMap!301)

(declare-fun bm!133134 () Bool)

(assert (=> bm!133134 (= call!133132 (allKeysSameHashInMap!97 (ite c!355185 lt!829767 lt!829752) (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun bm!133135 () Bool)

(declare-fun +!52 (ListLongMap!301 tuple2!25384) ListLongMap!301)

(assert (=> bm!133135 (= call!133139 (+!52 lt!829722 (ite c!355185 (tuple2!25385 lt!829746 lt!829757) (tuple2!25385 lt!829756 lt!829765))))))

(declare-fun bm!133136 () Bool)

(declare-fun allKeysSameHash!32 (List!26202 (_ BitVec 64) Hashable!2915) Bool)

(assert (=> bm!133136 (= call!133127 (allKeysSameHash!32 (ite c!355185 lt!829725 lt!829763) (ite c!355185 lt!829746 lt!829756) (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun bm!133137 () Bool)

(declare-fun update!128 (MutLongMap!3005 (_ BitVec 64) List!26202) tuple2!25386)

(assert (=> bm!133137 (= call!133151 (update!128 (v!29673 (underlying!6212 (cache!3296 thiss!28682))) (ite c!355185 lt!829746 lt!829756) (ite c!355185 lt!829757 lt!829765)))))

(declare-fun bm!133138 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!28 (ListLongMap!301 (_ BitVec 64) List!26202 Hashable!2915) Unit!39098)

(assert (=> bm!133138 (= call!133153 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!28 lt!829722 (ite c!355185 lt!829746 lt!829756) (ite c!355185 lt!829757 lt!829765) (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun lt!829758 () ListMap!777)

(declare-fun bm!133139 () Bool)

(declare-fun lt!829764 () ListMap!777)

(declare-fun lemmaEquivalentThenSameContains!9 (ListMap!777 ListMap!777 tuple2!25378) Unit!39098)

(assert (=> bm!133139 (= call!133133 (lemmaEquivalentThenSameContains!9 (ite c!355185 lt!829749 lt!829764) (ite c!355185 lt!829770 lt!829758) lt!829607))))

(declare-fun bm!133140 () Bool)

(assert (=> bm!133140 (= call!133131 (contains!4362 (ite c!355185 lt!829770 lt!829758) lt!829607))))

(declare-fun b!2224738 () Bool)

(assert (=> b!2224738 (= e!1421553 call!133143)))

(declare-fun bm!133141 () Bool)

(assert (=> bm!133141 (= call!133137 (map!5317 (cache!3296 thiss!28682)))))

(assert (=> b!2224739 call!133141))

(declare-fun lt!829754 () Unit!39098)

(declare-fun Unit!39114 () Unit!39098)

(assert (=> b!2224739 (= lt!829754 Unit!39114)))

(assert (=> b!2224739 (contains!4362 call!133149 lt!829607)))

(declare-fun lt!829737 () Unit!39098)

(declare-fun lt!829751 () Unit!39098)

(assert (=> b!2224739 (= lt!829737 lt!829751)))

(assert (=> b!2224739 (= (contains!4362 lt!829764 lt!829607) call!133131)))

(assert (=> b!2224739 (= lt!829751 call!133133)))

(assert (=> b!2224739 (= lt!829758 call!133149)))

(assert (=> b!2224739 (= lt!829764 call!133134)))

(declare-fun lt!829731 () Unit!39098)

(declare-fun Unit!39115 () Unit!39098)

(assert (=> b!2224739 (= lt!829731 Unit!39115)))

(assert (=> b!2224739 call!133128))

(declare-fun lt!829773 () Unit!39098)

(declare-fun Unit!39116 () Unit!39098)

(assert (=> b!2224739 (= lt!829773 Unit!39116)))

(assert (=> b!2224739 call!133126))

(declare-fun lt!829736 () Unit!39098)

(declare-fun Unit!39117 () Unit!39098)

(assert (=> b!2224739 (= lt!829736 Unit!39117)))

(assert (=> b!2224739 call!133145))

(declare-fun lt!829755 () Unit!39098)

(declare-fun lt!829729 () Unit!39098)

(assert (=> b!2224739 (= lt!829755 lt!829729)))

(assert (=> b!2224739 call!133148))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!9 (ListLongMap!301 (_ BitVec 64) List!26202 tuple2!25378 (InoxSet Context!3830) Hashable!2915) Unit!39098)

(assert (=> b!2224739 (= lt!829729 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!9 lt!829722 lt!829756 lt!829765 lt!829607 res!14206 (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun lt!829771 () Unit!39098)

(declare-fun lt!829733 () Unit!39098)

(assert (=> b!2224739 (= lt!829771 lt!829733)))

(declare-fun e!1421550 () Bool)

(assert (=> b!2224739 e!1421550))

(declare-fun res!954238 () Bool)

(assert (=> b!2224739 (=> (not res!954238) (not e!1421550))))

(assert (=> b!2224739 (= res!954238 call!133135)))

(assert (=> b!2224739 (= lt!829752 call!133139)))

(assert (=> b!2224739 (= lt!829733 call!133153)))

(declare-fun lt!829759 () Unit!39098)

(assert (=> b!2224739 (= lt!829759 e!1421547)))

(declare-fun c!355188 () Bool)

(declare-fun isEmpty!14880 (List!26202) Bool)

(assert (=> b!2224739 (= c!355188 (not (isEmpty!14880 lt!829763)))))

(declare-fun Unit!39118 () Unit!39098)

(assert (=> b!2224739 (= e!1421556 Unit!39118)))

(declare-fun bm!133142 () Bool)

(declare-fun forall!5328 (List!26203 Int) Bool)

(assert (=> bm!133142 (= call!133135 (forall!5328 (ite c!355185 (toList!1313 lt!829767) (toList!1313 lt!829752)) (ite c!355185 lambda!84119 lambda!84120)))))

(declare-fun bm!133143 () Bool)

(assert (=> bm!133143 (= call!133150 (map!5318 (ite c!355185 (_2!15077 lt!829741) (_2!15077 lt!829727))))))

(declare-fun bm!133144 () Bool)

(assert (=> bm!133144 (= call!133146 (map!5317 (_2!15075 lt!829768)))))

(declare-fun b!2224740 () Bool)

(assert (=> b!2224740 (= e!1421550 call!133132)))

(declare-fun bm!133145 () Bool)

(assert (=> bm!133145 (= call!133125 (valid!2308 (ite c!355185 lt!829766 lt!829739)))))

(declare-fun b!2224741 () Bool)

(declare-fun Unit!39119 () Unit!39098)

(assert (=> b!2224741 (= e!1421547 Unit!39119)))

(declare-fun bm!133146 () Bool)

(declare-fun call!133144 () ListMap!777)

(assert (=> bm!133146 (= call!133140 (+!51 call!133144 (tuple2!25381 lt!829607 res!14206)))))

(declare-fun bm!133147 () Bool)

(assert (=> bm!133147 (= call!133145 (forall!5328 (toList!1313 call!133150) (ite c!355185 lambda!84119 lambda!84120)))))

(declare-fun bm!133148 () Bool)

(assert (=> bm!133148 (= call!133147 (extractMap!98 (toList!1313 call!133139)))))

(declare-fun bm!133149 () Bool)

(assert (=> bm!133149 (= call!133144 (extractMap!98 (toList!1313 lt!829722)))))

(declare-fun b!2224742 () Bool)

(declare-fun e!1421552 () Bool)

(assert (=> b!2224742 (= e!1421552 call!133143)))

(declare-fun b!2224743 () Bool)

(assert (=> b!2224743 (= e!1421557 Nil!26108)))

(declare-fun bm!133150 () Bool)

(assert (=> bm!133150 (= call!133136 (allKeysSameHash!32 call!133142 (ite c!355185 lt!829746 lt!829756) (hashF!4838 (cache!3296 thiss!28682))))))

(declare-fun b!2224744 () Bool)

(assert (=> b!2224744 (= e!1421553 e!1421552)))

(declare-fun res!954237 () Bool)

(assert (=> b!2224744 (= res!954237 (contains!4362 call!133146 lt!829607))))

(assert (=> b!2224744 (=> (not res!954237) (not e!1421552))))

(declare-fun bm!133129 () Bool)

(assert (=> bm!133129 (= call!133128 (eq!49 (ite c!355185 call!133152 call!133134) call!133149))))

(declare-fun d!664439 () Bool)

(assert (=> d!664439 e!1421551))

(declare-fun res!954235 () Bool)

(assert (=> d!664439 (=> (not res!954235) (not e!1421551))))

(assert (=> d!664439 (= res!954235 ((_ is HashMap!2915) (_2!15075 lt!829768)))))

(declare-fun lt!829772 () tuple2!25382)

(assert (=> d!664439 (= lt!829768 (tuple2!25383 (_1!15075 lt!829772) (_2!15075 lt!829772)))))

(assert (=> d!664439 (= lt!829772 e!1421554)))

(declare-fun contains!4364 (MutableMap!2915 tuple2!25378) Bool)

(assert (=> d!664439 (= c!355185 (contains!4364 (cache!3296 thiss!28682) lt!829607))))

(assert (=> d!664439 (= lt!829722 (map!5318 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))

(assert (=> d!664439 (= lt!829753 (map!5317 (cache!3296 thiss!28682)))))

(assert (=> d!664439 (valid!2308 (cache!3296 thiss!28682))))

(assert (=> d!664439 (= (update!127 (cache!3296 thiss!28682) lt!829607 res!14206) lt!829768)))

(assert (= (and d!664439 c!355185) b!2224730))

(assert (= (and d!664439 (not c!355185)) b!2224736))

(assert (= (and b!2224730 c!355186) b!2224735))

(assert (= (and b!2224730 (not c!355186)) b!2224737))

(assert (= (and b!2224735 res!954236) b!2224732))

(assert (= (or b!2224735 b!2224737) bm!133128))

(assert (= (and b!2224736 c!355189) b!2224728))

(assert (= (and b!2224736 (not c!355189)) b!2224743))

(assert (= (and b!2224736 c!355184) b!2224739))

(assert (= (and b!2224736 (not c!355184)) b!2224729))

(assert (= (and b!2224739 c!355188) b!2224734))

(assert (= (and b!2224739 (not c!355188)) b!2224741))

(assert (= (and b!2224739 res!954238) b!2224740))

(assert (= (or b!2224739 b!2224729) bm!133121))

(assert (= (or b!2224730 b!2224728) bm!133130))

(assert (= (or b!2224735 b!2224734) bm!133133))

(assert (= (or bm!133128 bm!133121) bm!133131))

(assert (= (or b!2224730 b!2224736) bm!133124))

(assert (= (or b!2224735 b!2224734) bm!133136))

(assert (= (or b!2224735 b!2224739) bm!133138))

(assert (= (or b!2224735 b!2224739) bm!133140))

(assert (= (or b!2224735 b!2224739) bm!133122))

(assert (= (or b!2224735 b!2224739) bm!133142))

(assert (= (or b!2224735 b!2224739) bm!133127))

(assert (= (or b!2224735 b!2224734) bm!133126))

(assert (= (or b!2224735 b!2224730 b!2224734) bm!133120))

(assert (= (or b!2224730 b!2224736) bm!133137))

(assert (= (or b!2224737 b!2224729) bm!133145))

(assert (= (or b!2224732 b!2224740) bm!133134))

(assert (= (or b!2224735 b!2224739) bm!133139))

(assert (= (or b!2224735 b!2224739) bm!133149))

(assert (= (or b!2224735 b!2224739) bm!133135))

(assert (= (or b!2224735 b!2224739) bm!133143))

(assert (= (or b!2224735 b!2224734) bm!133150))

(assert (= (or b!2224735 b!2224739) bm!133146))

(assert (= (or b!2224735 b!2224739) bm!133147))

(assert (= (or b!2224735 b!2224739) bm!133129))

(assert (= (or b!2224735 b!2224739) bm!133123))

(assert (= (or b!2224735 b!2224739) bm!133148))

(assert (= (or b!2224735 b!2224739) bm!133125))

(assert (= (and d!664439 res!954235) b!2224727))

(assert (= (and b!2224727 res!954239) b!2224726))

(assert (= (and b!2224726 c!355190) b!2224744))

(assert (= (and b!2224726 (not c!355190)) b!2224738))

(assert (= (and b!2224744 res!954237) b!2224742))

(assert (= (or b!2224744 b!2224742 b!2224738) bm!133144))

(assert (= (or b!2224742 b!2224738) bm!133141))

(assert (= (or b!2224742 b!2224738) bm!133132))

(assert (= (and bm!133132 c!355187) b!2224731))

(assert (= (and bm!133132 (not c!355187)) b!2224733))

(declare-fun m!2664630 () Bool)

(assert (=> bm!133140 m!2664630))

(declare-fun m!2664632 () Bool)

(assert (=> b!2224727 m!2664632))

(declare-fun m!2664634 () Bool)

(assert (=> bm!133141 m!2664634))

(declare-fun m!2664636 () Bool)

(assert (=> bm!133133 m!2664636))

(declare-fun m!2664638 () Bool)

(assert (=> bm!133131 m!2664638))

(declare-fun m!2664640 () Bool)

(assert (=> bm!133127 m!2664640))

(declare-fun m!2664642 () Bool)

(assert (=> bm!133129 m!2664642))

(declare-fun m!2664644 () Bool)

(assert (=> b!2224735 m!2664644))

(declare-fun m!2664646 () Bool)

(assert (=> b!2224735 m!2664646))

(declare-fun m!2664648 () Bool)

(assert (=> b!2224735 m!2664648))

(declare-fun m!2664650 () Bool)

(assert (=> b!2224735 m!2664650))

(declare-fun m!2664652 () Bool)

(assert (=> b!2224735 m!2664652))

(declare-fun m!2664654 () Bool)

(assert (=> bm!133138 m!2664654))

(declare-fun m!2664656 () Bool)

(assert (=> bm!133150 m!2664656))

(declare-fun m!2664658 () Bool)

(assert (=> bm!133123 m!2664658))

(declare-fun m!2664660 () Bool)

(assert (=> bm!133136 m!2664660))

(declare-fun m!2664662 () Bool)

(assert (=> b!2224744 m!2664662))

(declare-fun m!2664664 () Bool)

(assert (=> bm!133146 m!2664664))

(declare-fun m!2664666 () Bool)

(assert (=> bm!133132 m!2664666))

(declare-fun m!2664668 () Bool)

(assert (=> bm!133134 m!2664668))

(declare-fun m!2664670 () Bool)

(assert (=> bm!133139 m!2664670))

(declare-fun m!2664672 () Bool)

(assert (=> bm!133125 m!2664672))

(declare-fun m!2664674 () Bool)

(assert (=> bm!133144 m!2664674))

(declare-fun m!2664676 () Bool)

(assert (=> bm!133124 m!2664676))

(declare-fun m!2664678 () Bool)

(assert (=> bm!133120 m!2664678))

(declare-fun m!2664680 () Bool)

(assert (=> bm!133145 m!2664680))

(declare-fun m!2664682 () Bool)

(assert (=> bm!133142 m!2664682))

(declare-fun m!2664684 () Bool)

(assert (=> bm!133126 m!2664684))

(declare-fun m!2664686 () Bool)

(assert (=> bm!133137 m!2664686))

(declare-fun m!2664688 () Bool)

(assert (=> bm!133130 m!2664688))

(declare-fun m!2664690 () Bool)

(assert (=> b!2224731 m!2664690))

(declare-fun m!2664692 () Bool)

(assert (=> bm!133147 m!2664692))

(declare-fun m!2664694 () Bool)

(assert (=> d!664439 m!2664694))

(declare-fun m!2664696 () Bool)

(assert (=> d!664439 m!2664696))

(assert (=> d!664439 m!2664634))

(declare-fun m!2664698 () Bool)

(assert (=> d!664439 m!2664698))

(declare-fun m!2664700 () Bool)

(assert (=> bm!133148 m!2664700))

(declare-fun m!2664702 () Bool)

(assert (=> bm!133122 m!2664702))

(declare-fun m!2664704 () Bool)

(assert (=> b!2224736 m!2664704))

(declare-fun m!2664706 () Bool)

(assert (=> b!2224739 m!2664706))

(declare-fun m!2664708 () Bool)

(assert (=> b!2224739 m!2664708))

(declare-fun m!2664710 () Bool)

(assert (=> b!2224739 m!2664710))

(declare-fun m!2664712 () Bool)

(assert (=> b!2224739 m!2664712))

(declare-fun m!2664714 () Bool)

(assert (=> bm!133149 m!2664714))

(declare-fun m!2664716 () Bool)

(assert (=> bm!133135 m!2664716))

(declare-fun m!2664718 () Bool)

(assert (=> bm!133143 m!2664718))

(assert (=> b!2224680 d!664439))

(declare-fun d!664441 () Bool)

(declare-fun e!1421560 () Bool)

(assert (=> d!664441 e!1421560))

(declare-fun res!954242 () Bool)

(assert (=> d!664441 (=> (not res!954242) (not e!1421560))))

(assert (=> d!664441 (= res!954242 (and (or (not ((_ is HashMap!2915) (cache!3296 thiss!28682))) ((_ is HashMap!2915) (cache!3296 thiss!28682))) ((_ is HashMap!2915) (cache!3296 thiss!28682))))))

(declare-fun lt!829789 () Unit!39098)

(declare-fun choose!13110 (MutableMap!2915 tuple2!25378 (InoxSet Context!3830) Int) Unit!39098)

(assert (=> d!664441 (= lt!829789 (choose!13110 (cache!3296 thiss!28682) lt!829607 res!14206 lambda!84110))))

(assert (=> d!664441 (valid!2308 (cache!3296 thiss!28682))))

(assert (=> d!664441 (= (lemmaUpdatePreservesForallPairs!17 (cache!3296 thiss!28682) lt!829607 res!14206 lambda!84110) lt!829789)))

(declare-fun b!2224747 () Bool)

(declare-fun lt!829793 () MutableMap!2915)

(assert (=> b!2224747 (= e!1421560 (forall!5327 (toList!1312 (map!5317 lt!829793)) lambda!84110))))

(assert (=> b!2224747 ((_ is HashMap!2915) lt!829793)))

(declare-fun lt!829791 () MutableMap!2915)

(assert (=> b!2224747 (= lt!829793 lt!829791)))

(assert (=> b!2224747 ((_ is HashMap!2915) lt!829791)))

(declare-fun lt!829788 () MutableMap!2915)

(assert (=> b!2224747 (= lt!829791 lt!829788)))

(assert (=> b!2224747 ((_ is HashMap!2915) lt!829788)))

(declare-fun lt!829790 () tuple2!25382)

(assert (=> b!2224747 (= lt!829788 (_2!15075 lt!829790))))

(assert (=> b!2224747 ((_ is HashMap!2915) (_2!15075 lt!829790))))

(declare-fun lt!829792 () tuple2!25382)

(assert (=> b!2224747 (= lt!829790 lt!829792)))

(assert (=> b!2224747 ((_ is HashMap!2915) (_2!15075 lt!829792))))

(assert (=> b!2224747 (= lt!829792 (update!127 (cache!3296 thiss!28682) lt!829607 res!14206))))

(assert (= (and d!664441 res!954242) b!2224747))

(declare-fun m!2664720 () Bool)

(assert (=> d!664441 m!2664720))

(assert (=> d!664441 m!2664698))

(declare-fun m!2664722 () Bool)

(assert (=> b!2224747 m!2664722))

(declare-fun m!2664724 () Bool)

(assert (=> b!2224747 m!2664724))

(assert (=> b!2224747 m!2664606))

(assert (=> b!2224680 d!664441))

(declare-fun b!2224758 () Bool)

(declare-fun e!1421569 () (InoxSet Context!3830))

(assert (=> b!2224758 (= e!1421569 ((as const (Array Context!3830 Bool)) false))))

(declare-fun b!2224759 () Bool)

(declare-fun e!1421568 () Bool)

(declare-fun nullable!1736 (Regex!6367) Bool)

(assert (=> b!2224759 (= e!1421568 (nullable!1736 (h!31508 (exprs!2415 ctx!44))))))

(declare-fun e!1421567 () (InoxSet Context!3830))

(declare-fun b!2224760 () Bool)

(declare-fun call!133158 () (InoxSet Context!3830))

(assert (=> b!2224760 (= e!1421567 ((_ map or) call!133158 (derivationStepZipperUp!31 (Context!3831 (t!199613 (exprs!2415 ctx!44))) a!962)))))

(declare-fun b!2224761 () Bool)

(assert (=> b!2224761 (= e!1421567 e!1421569)))

(declare-fun c!355196 () Bool)

(assert (=> b!2224761 (= c!355196 ((_ is Cons!26107) (exprs!2415 ctx!44)))))

(declare-fun bm!133153 () Bool)

(declare-fun derivationStepZipperDown!27 (Regex!6367 Context!3830 C!12880) (InoxSet Context!3830))

(assert (=> bm!133153 (= call!133158 (derivationStepZipperDown!27 (h!31508 (exprs!2415 ctx!44)) (Context!3831 (t!199613 (exprs!2415 ctx!44))) a!962))))

(declare-fun d!664443 () Bool)

(declare-fun c!355195 () Bool)

(assert (=> d!664443 (= c!355195 e!1421568)))

(declare-fun res!954245 () Bool)

(assert (=> d!664443 (=> (not res!954245) (not e!1421568))))

(assert (=> d!664443 (= res!954245 ((_ is Cons!26107) (exprs!2415 ctx!44)))))

(assert (=> d!664443 (= (derivationStepZipperUp!31 ctx!44 a!962) e!1421567)))

(declare-fun b!2224762 () Bool)

(assert (=> b!2224762 (= e!1421569 call!133158)))

(assert (= (and d!664443 res!954245) b!2224759))

(assert (= (and d!664443 c!355195) b!2224760))

(assert (= (and d!664443 (not c!355195)) b!2224761))

(assert (= (and b!2224761 c!355196) b!2224762))

(assert (= (and b!2224761 (not c!355196)) b!2224758))

(assert (= (or b!2224760 b!2224762) bm!133153))

(declare-fun m!2664726 () Bool)

(assert (=> b!2224759 m!2664726))

(declare-fun m!2664728 () Bool)

(assert (=> b!2224760 m!2664728))

(declare-fun m!2664730 () Bool)

(assert (=> bm!133153 m!2664730))

(assert (=> b!2224675 d!664443))

(declare-fun d!664445 () Bool)

(assert (=> d!664445 (= (array_inv!3301 (_keys!3302 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) (bvsge (size!20378 (_keys!3302 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224672 d!664445))

(declare-fun d!664447 () Bool)

(assert (=> d!664447 (= (array_inv!3302 (_values!3285 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) (bvsge (size!20379 (_values!3285 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224672 d!664447))

(declare-fun bs!453490 () Bool)

(declare-fun b!2224768 () Bool)

(assert (= bs!453490 (and b!2224768 b!2224680)))

(declare-fun lambda!84123 () Int)

(assert (=> bs!453490 (= lambda!84123 lambda!84110)))

(declare-fun d!664449 () Bool)

(declare-fun res!954250 () Bool)

(declare-fun e!1421572 () Bool)

(assert (=> d!664449 (=> (not res!954250) (not e!1421572))))

(assert (=> d!664449 (= res!954250 (valid!2308 (cache!3296 thiss!28682)))))

(assert (=> d!664449 (= (validCacheMapUp!281 (cache!3296 thiss!28682)) e!1421572)))

(declare-fun b!2224767 () Bool)

(declare-fun res!954251 () Bool)

(assert (=> b!2224767 (=> (not res!954251) (not e!1421572))))

(assert (=> b!2224767 (= res!954251 (invariantList!352 (toList!1312 (map!5317 (cache!3296 thiss!28682)))))))

(assert (=> b!2224768 (= e!1421572 (forall!5327 (toList!1312 (map!5317 (cache!3296 thiss!28682))) lambda!84123))))

(assert (= (and d!664449 res!954250) b!2224767))

(assert (= (and b!2224767 res!954251) b!2224768))

(assert (=> d!664449 m!2664698))

(assert (=> b!2224767 m!2664634))

(declare-fun m!2664733 () Bool)

(assert (=> b!2224767 m!2664733))

(assert (=> b!2224768 m!2664634))

(declare-fun m!2664735 () Bool)

(assert (=> b!2224768 m!2664735))

(assert (=> start!217092 d!664449))

(declare-fun d!664451 () Bool)

(declare-fun res!954254 () Bool)

(declare-fun e!1421575 () Bool)

(assert (=> d!664451 (=> (not res!954254) (not e!1421575))))

(assert (=> d!664451 (= res!954254 ((_ is HashMap!2915) (cache!3296 thiss!28682)))))

(assert (=> d!664451 (= (inv!35448 thiss!28682) e!1421575)))

(declare-fun b!2224771 () Bool)

(assert (=> b!2224771 (= e!1421575 (validCacheMapUp!281 (cache!3296 thiss!28682)))))

(assert (= (and d!664451 res!954254) b!2224771))

(assert (=> b!2224771 m!2664596))

(assert (=> start!217092 d!664451))

(declare-fun d!664453 () Bool)

(declare-fun lambda!84126 () Int)

(declare-fun forall!5329 (List!26201 Int) Bool)

(assert (=> d!664453 (= (inv!35447 ctx!44) (forall!5329 (exprs!2415 ctx!44) lambda!84126))))

(declare-fun bs!453491 () Bool)

(assert (= bs!453491 d!664453))

(declare-fun m!2664737 () Bool)

(assert (=> bs!453491 m!2664737))

(assert (=> start!217092 d!664453))

(declare-fun bs!453492 () Bool)

(declare-fun d!664455 () Bool)

(assert (= bs!453492 (and d!664455 d!664453)))

(declare-fun lambda!84127 () Int)

(assert (=> bs!453492 (= lambda!84127 lambda!84126)))

(assert (=> d!664455 (= (inv!35447 setElem!19742) (forall!5329 (exprs!2415 setElem!19742) lambda!84127))))

(declare-fun bs!453493 () Bool)

(assert (= bs!453493 d!664455))

(declare-fun m!2664739 () Bool)

(assert (=> bs!453493 m!2664739))

(assert (=> setNonEmpty!19742 d!664455))

(declare-fun setIsEmpty!19745 () Bool)

(declare-fun setRes!19745 () Bool)

(assert (=> setIsEmpty!19745 setRes!19745))

(declare-fun e!1421584 () Bool)

(assert (=> b!2224678 (= tp!694561 e!1421584)))

(declare-fun b!2224780 () Bool)

(declare-fun e!1421583 () Bool)

(declare-fun tp!694579 () Bool)

(assert (=> b!2224780 (= e!1421583 tp!694579)))

(declare-fun setElem!19745 () Context!3830)

(declare-fun setNonEmpty!19745 () Bool)

(declare-fun tp!694580 () Bool)

(assert (=> setNonEmpty!19745 (= setRes!19745 (and tp!694580 (inv!35447 setElem!19745) e!1421583))))

(declare-fun setRest!19745 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19745 (= (_2!15074 (h!31509 mapDefault!14175)) ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19745 true) setRest!19745))))

(declare-fun b!2224781 () Bool)

(declare-fun e!1421582 () Bool)

(declare-fun tp!694578 () Bool)

(assert (=> b!2224781 (= e!1421582 tp!694578)))

(declare-fun tp!694577 () Bool)

(declare-fun b!2224782 () Bool)

(assert (=> b!2224782 (= e!1421584 (and (inv!35447 (_1!15073 (_1!15074 (h!31509 mapDefault!14175)))) e!1421582 tp_is_empty!9959 setRes!19745 tp!694577))))

(declare-fun condSetEmpty!19745 () Bool)

(assert (=> b!2224782 (= condSetEmpty!19745 (= (_2!15074 (h!31509 mapDefault!14175)) ((as const (Array Context!3830 Bool)) false)))))

(assert (= b!2224782 b!2224781))

(assert (= (and b!2224782 condSetEmpty!19745) setIsEmpty!19745))

(assert (= (and b!2224782 (not condSetEmpty!19745)) setNonEmpty!19745))

(assert (= setNonEmpty!19745 b!2224780))

(assert (= (and b!2224678 ((_ is Cons!26108) mapDefault!14175)) b!2224782))

(declare-fun m!2664741 () Bool)

(assert (=> setNonEmpty!19745 m!2664741))

(declare-fun m!2664743 () Bool)

(assert (=> b!2224782 m!2664743))

(declare-fun setIsEmpty!19750 () Bool)

(declare-fun setRes!19750 () Bool)

(assert (=> setIsEmpty!19750 setRes!19750))

(declare-fun mapIsEmpty!14178 () Bool)

(declare-fun mapRes!14178 () Bool)

(assert (=> mapIsEmpty!14178 mapRes!14178))

(declare-fun mapNonEmpty!14178 () Bool)

(declare-fun tp!694601 () Bool)

(declare-fun e!1421602 () Bool)

(assert (=> mapNonEmpty!14178 (= mapRes!14178 (and tp!694601 e!1421602))))

(declare-fun mapRest!14178 () (Array (_ BitVec 32) List!26202))

(declare-fun mapValue!14178 () List!26202)

(declare-fun mapKey!14178 () (_ BitVec 32))

(assert (=> mapNonEmpty!14178 (= mapRest!14175 (store mapRest!14178 mapKey!14178 mapValue!14178))))

(declare-fun b!2224797 () Bool)

(declare-fun e!1421599 () Bool)

(declare-fun tp!694605 () Bool)

(assert (=> b!2224797 (= e!1421599 tp!694605)))

(declare-fun b!2224798 () Bool)

(declare-fun e!1421598 () Bool)

(declare-fun tp!694600 () Bool)

(assert (=> b!2224798 (= e!1421598 tp!694600)))

(declare-fun e!1421597 () Bool)

(declare-fun b!2224799 () Bool)

(declare-fun mapDefault!14178 () List!26202)

(declare-fun setRes!19751 () Bool)

(declare-fun tp!694604 () Bool)

(assert (=> b!2224799 (= e!1421597 (and (inv!35447 (_1!15073 (_1!15074 (h!31509 mapDefault!14178)))) e!1421599 tp_is_empty!9959 setRes!19751 tp!694604))))

(declare-fun condSetEmpty!19751 () Bool)

(assert (=> b!2224799 (= condSetEmpty!19751 (= (_2!15074 (h!31509 mapDefault!14178)) ((as const (Array Context!3830 Bool)) false)))))

(declare-fun condMapEmpty!14178 () Bool)

(assert (=> mapNonEmpty!14175 (= condMapEmpty!14178 (= mapRest!14175 ((as const (Array (_ BitVec 32) List!26202)) mapDefault!14178)))))

(assert (=> mapNonEmpty!14175 (= tp!694567 (and e!1421597 mapRes!14178))))

(declare-fun e!1421601 () Bool)

(declare-fun setNonEmpty!19750 () Bool)

(declare-fun tp!694603 () Bool)

(declare-fun setElem!19750 () Context!3830)

(assert (=> setNonEmpty!19750 (= setRes!19751 (and tp!694603 (inv!35447 setElem!19750) e!1421601))))

(declare-fun setRest!19750 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19750 (= (_2!15074 (h!31509 mapDefault!14178)) ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19750 true) setRest!19750))))

(declare-fun b!2224800 () Bool)

(declare-fun tp!694602 () Bool)

(assert (=> b!2224800 (= e!1421602 (and (inv!35447 (_1!15073 (_1!15074 (h!31509 mapValue!14178)))) e!1421598 tp_is_empty!9959 setRes!19750 tp!694602))))

(declare-fun condSetEmpty!19750 () Bool)

(assert (=> b!2224800 (= condSetEmpty!19750 (= (_2!15074 (h!31509 mapValue!14178)) ((as const (Array Context!3830 Bool)) false)))))

(declare-fun b!2224801 () Bool)

(declare-fun e!1421600 () Bool)

(declare-fun tp!694606 () Bool)

(assert (=> b!2224801 (= e!1421600 tp!694606)))

(declare-fun b!2224802 () Bool)

(declare-fun tp!694599 () Bool)

(assert (=> b!2224802 (= e!1421601 tp!694599)))

(declare-fun setIsEmpty!19751 () Bool)

(assert (=> setIsEmpty!19751 setRes!19751))

(declare-fun setNonEmpty!19751 () Bool)

(declare-fun tp!694607 () Bool)

(declare-fun setElem!19751 () Context!3830)

(assert (=> setNonEmpty!19751 (= setRes!19750 (and tp!694607 (inv!35447 setElem!19751) e!1421600))))

(declare-fun setRest!19751 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19751 (= (_2!15074 (h!31509 mapValue!14178)) ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19751 true) setRest!19751))))

(assert (= (and mapNonEmpty!14175 condMapEmpty!14178) mapIsEmpty!14178))

(assert (= (and mapNonEmpty!14175 (not condMapEmpty!14178)) mapNonEmpty!14178))

(assert (= b!2224800 b!2224798))

(assert (= (and b!2224800 condSetEmpty!19750) setIsEmpty!19750))

(assert (= (and b!2224800 (not condSetEmpty!19750)) setNonEmpty!19751))

(assert (= setNonEmpty!19751 b!2224801))

(assert (= (and mapNonEmpty!14178 ((_ is Cons!26108) mapValue!14178)) b!2224800))

(assert (= b!2224799 b!2224797))

(assert (= (and b!2224799 condSetEmpty!19751) setIsEmpty!19751))

(assert (= (and b!2224799 (not condSetEmpty!19751)) setNonEmpty!19750))

(assert (= setNonEmpty!19750 b!2224802))

(assert (= (and mapNonEmpty!14175 ((_ is Cons!26108) mapDefault!14178)) b!2224799))

(declare-fun m!2664745 () Bool)

(assert (=> setNonEmpty!19750 m!2664745))

(declare-fun m!2664747 () Bool)

(assert (=> mapNonEmpty!14178 m!2664747))

(declare-fun m!2664749 () Bool)

(assert (=> b!2224799 m!2664749))

(declare-fun m!2664751 () Bool)

(assert (=> setNonEmpty!19751 m!2664751))

(declare-fun m!2664753 () Bool)

(assert (=> b!2224800 m!2664753))

(declare-fun setIsEmpty!19752 () Bool)

(declare-fun setRes!19752 () Bool)

(assert (=> setIsEmpty!19752 setRes!19752))

(declare-fun e!1421605 () Bool)

(assert (=> mapNonEmpty!14175 (= tp!694566 e!1421605)))

(declare-fun b!2224803 () Bool)

(declare-fun e!1421604 () Bool)

(declare-fun tp!694610 () Bool)

(assert (=> b!2224803 (= e!1421604 tp!694610)))

(declare-fun setNonEmpty!19752 () Bool)

(declare-fun tp!694611 () Bool)

(declare-fun setElem!19752 () Context!3830)

(assert (=> setNonEmpty!19752 (= setRes!19752 (and tp!694611 (inv!35447 setElem!19752) e!1421604))))

(declare-fun setRest!19752 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19752 (= (_2!15074 (h!31509 mapValue!14175)) ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19752 true) setRest!19752))))

(declare-fun b!2224804 () Bool)

(declare-fun e!1421603 () Bool)

(declare-fun tp!694609 () Bool)

(assert (=> b!2224804 (= e!1421603 tp!694609)))

(declare-fun b!2224805 () Bool)

(declare-fun tp!694608 () Bool)

(assert (=> b!2224805 (= e!1421605 (and (inv!35447 (_1!15073 (_1!15074 (h!31509 mapValue!14175)))) e!1421603 tp_is_empty!9959 setRes!19752 tp!694608))))

(declare-fun condSetEmpty!19752 () Bool)

(assert (=> b!2224805 (= condSetEmpty!19752 (= (_2!15074 (h!31509 mapValue!14175)) ((as const (Array Context!3830 Bool)) false)))))

(assert (= b!2224805 b!2224804))

(assert (= (and b!2224805 condSetEmpty!19752) setIsEmpty!19752))

(assert (= (and b!2224805 (not condSetEmpty!19752)) setNonEmpty!19752))

(assert (= setNonEmpty!19752 b!2224803))

(assert (= (and mapNonEmpty!14175 ((_ is Cons!26108) mapValue!14175)) b!2224805))

(declare-fun m!2664755 () Bool)

(assert (=> setNonEmpty!19752 m!2664755))

(declare-fun m!2664757 () Bool)

(assert (=> b!2224805 m!2664757))

(declare-fun b!2224810 () Bool)

(declare-fun e!1421608 () Bool)

(declare-fun tp!694616 () Bool)

(declare-fun tp!694617 () Bool)

(assert (=> b!2224810 (= e!1421608 (and tp!694616 tp!694617))))

(assert (=> b!2224671 (= tp!694564 e!1421608)))

(assert (= (and b!2224671 ((_ is Cons!26107) (exprs!2415 ctx!44))) b!2224810))

(declare-fun setIsEmpty!19753 () Bool)

(declare-fun setRes!19753 () Bool)

(assert (=> setIsEmpty!19753 setRes!19753))

(declare-fun e!1421611 () Bool)

(assert (=> b!2224672 (= tp!694568 e!1421611)))

(declare-fun b!2224811 () Bool)

(declare-fun e!1421610 () Bool)

(declare-fun tp!694620 () Bool)

(assert (=> b!2224811 (= e!1421610 tp!694620)))

(declare-fun tp!694621 () Bool)

(declare-fun setNonEmpty!19753 () Bool)

(declare-fun setElem!19753 () Context!3830)

(assert (=> setNonEmpty!19753 (= setRes!19753 (and tp!694621 (inv!35447 setElem!19753) e!1421610))))

(declare-fun setRest!19753 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19753 (= (_2!15074 (h!31509 (zeroValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19753 true) setRest!19753))))

(declare-fun b!2224812 () Bool)

(declare-fun e!1421609 () Bool)

(declare-fun tp!694619 () Bool)

(assert (=> b!2224812 (= e!1421609 tp!694619)))

(declare-fun b!2224813 () Bool)

(declare-fun tp!694618 () Bool)

(assert (=> b!2224813 (= e!1421611 (and (inv!35447 (_1!15073 (_1!15074 (h!31509 (zeroValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))))) e!1421609 tp_is_empty!9959 setRes!19753 tp!694618))))

(declare-fun condSetEmpty!19753 () Bool)

(assert (=> b!2224813 (= condSetEmpty!19753 (= (_2!15074 (h!31509 (zeroValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))) ((as const (Array Context!3830 Bool)) false)))))

(assert (= b!2224813 b!2224812))

(assert (= (and b!2224813 condSetEmpty!19753) setIsEmpty!19753))

(assert (= (and b!2224813 (not condSetEmpty!19753)) setNonEmpty!19753))

(assert (= setNonEmpty!19753 b!2224811))

(assert (= (and b!2224672 ((_ is Cons!26108) (zeroValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))) b!2224813))

(declare-fun m!2664759 () Bool)

(assert (=> setNonEmpty!19753 m!2664759))

(declare-fun m!2664761 () Bool)

(assert (=> b!2224813 m!2664761))

(declare-fun setIsEmpty!19754 () Bool)

(declare-fun setRes!19754 () Bool)

(assert (=> setIsEmpty!19754 setRes!19754))

(declare-fun e!1421614 () Bool)

(assert (=> b!2224672 (= tp!694565 e!1421614)))

(declare-fun b!2224814 () Bool)

(declare-fun e!1421613 () Bool)

(declare-fun tp!694624 () Bool)

(assert (=> b!2224814 (= e!1421613 tp!694624)))

(declare-fun tp!694625 () Bool)

(declare-fun setElem!19754 () Context!3830)

(declare-fun setNonEmpty!19754 () Bool)

(assert (=> setNonEmpty!19754 (= setRes!19754 (and tp!694625 (inv!35447 setElem!19754) e!1421613))))

(declare-fun setRest!19754 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19754 (= (_2!15074 (h!31509 (minValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19754 true) setRest!19754))))

(declare-fun b!2224815 () Bool)

(declare-fun e!1421612 () Bool)

(declare-fun tp!694623 () Bool)

(assert (=> b!2224815 (= e!1421612 tp!694623)))

(declare-fun tp!694622 () Bool)

(declare-fun b!2224816 () Bool)

(assert (=> b!2224816 (= e!1421614 (and (inv!35447 (_1!15073 (_1!15074 (h!31509 (minValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))))) e!1421612 tp_is_empty!9959 setRes!19754 tp!694622))))

(declare-fun condSetEmpty!19754 () Bool)

(assert (=> b!2224816 (= condSetEmpty!19754 (= (_2!15074 (h!31509 (minValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))) ((as const (Array Context!3830 Bool)) false)))))

(assert (= b!2224816 b!2224815))

(assert (= (and b!2224816 condSetEmpty!19754) setIsEmpty!19754))

(assert (= (and b!2224816 (not condSetEmpty!19754)) setNonEmpty!19754))

(assert (= setNonEmpty!19754 b!2224814))

(assert (= (and b!2224672 ((_ is Cons!26108) (minValue!3263 (v!29672 (underlying!6211 (v!29673 (underlying!6212 (cache!3296 thiss!28682)))))))) b!2224816))

(declare-fun m!2664763 () Bool)

(assert (=> setNonEmpty!19754 m!2664763))

(declare-fun m!2664765 () Bool)

(assert (=> b!2224816 m!2664765))

(declare-fun condSetEmpty!19757 () Bool)

(assert (=> setNonEmpty!19742 (= condSetEmpty!19757 (= setRest!19742 ((as const (Array Context!3830 Bool)) false)))))

(declare-fun setRes!19757 () Bool)

(assert (=> setNonEmpty!19742 (= tp!694559 setRes!19757)))

(declare-fun setIsEmpty!19757 () Bool)

(assert (=> setIsEmpty!19757 setRes!19757))

(declare-fun e!1421617 () Bool)

(declare-fun setNonEmpty!19757 () Bool)

(declare-fun setElem!19757 () Context!3830)

(declare-fun tp!694631 () Bool)

(assert (=> setNonEmpty!19757 (= setRes!19757 (and tp!694631 (inv!35447 setElem!19757) e!1421617))))

(declare-fun setRest!19757 () (InoxSet Context!3830))

(assert (=> setNonEmpty!19757 (= setRest!19742 ((_ map or) (store ((as const (Array Context!3830 Bool)) false) setElem!19757 true) setRest!19757))))

(declare-fun b!2224821 () Bool)

(declare-fun tp!694630 () Bool)

(assert (=> b!2224821 (= e!1421617 tp!694630)))

(assert (= (and setNonEmpty!19742 condSetEmpty!19757) setIsEmpty!19757))

(assert (= (and setNonEmpty!19742 (not condSetEmpty!19757)) setNonEmpty!19757))

(assert (= setNonEmpty!19757 b!2224821))

(declare-fun m!2664767 () Bool)

(assert (=> setNonEmpty!19757 m!2664767))

(declare-fun b!2224822 () Bool)

(declare-fun e!1421618 () Bool)

(declare-fun tp!694632 () Bool)

(declare-fun tp!694633 () Bool)

(assert (=> b!2224822 (= e!1421618 (and tp!694632 tp!694633))))

(assert (=> b!2224681 (= tp!694563 e!1421618)))

(assert (= (and b!2224681 ((_ is Cons!26107) (exprs!2415 setElem!19742))) b!2224822))

(declare-fun b_lambda!71623 () Bool)

(assert (= b_lambda!71621 (or b!2224680 b_lambda!71623)))

(declare-fun bs!453494 () Bool)

(declare-fun d!664457 () Bool)

(assert (= bs!453494 (and d!664457 b!2224680)))

(assert (=> bs!453494 (= (dynLambda!11516 lambda!84110 (h!31509 (toList!1312 (map!5317 (_2!15075 lt!829604))))) (= (_2!15074 (h!31509 (toList!1312 (map!5317 (_2!15075 lt!829604))))) (derivationStepZipperUp!31 (_1!15073 (_1!15074 (h!31509 (toList!1312 (map!5317 (_2!15075 lt!829604)))))) (_2!15073 (_1!15074 (h!31509 (toList!1312 (map!5317 (_2!15075 lt!829604)))))))))))

(declare-fun m!2664769 () Bool)

(assert (=> bs!453494 m!2664769))

(assert (=> b!2224686 d!664457))

(check-sat (not b!2224811) (not bm!133122) (not b!2224731) (not bm!133144) (not bm!133126) (not bm!133137) (not bm!133125) (not bm!133130) (not b!2224814) (not b!2224821) (not bm!133124) (not b!2224780) (not b!2224687) (not bm!133129) (not b!2224771) (not bm!133127) (not bm!133120) (not bm!133138) (not setNonEmpty!19750) (not d!664453) (not setNonEmpty!19751) (not b!2224781) (not bm!133134) (not bs!453494) (not d!664449) (not bm!133135) (not mapNonEmpty!14178) (not b!2224739) (not b_lambda!71623) (not b!2224760) (not b!2224805) (not bm!133131) (not bm!133147) b_and!174471 (not d!664439) (not bm!133142) (not b!2224744) (not b!2224810) (not setNonEmpty!19757) (not setNonEmpty!19745) (not b!2224767) (not bm!133150) (not b!2224802) (not b!2224815) (not b!2224759) (not bm!133132) (not setNonEmpty!19752) (not bm!133141) (not b!2224800) (not bm!133149) (not bm!133140) (not bm!133139) (not b_next!65187) (not b!2224813) (not b!2224816) (not b_next!65185) (not bm!133143) (not b!2224735) (not b!2224822) (not bm!133133) (not b!2224812) tp_is_empty!9959 (not setNonEmpty!19753) (not setNonEmpty!19754) (not b!2224801) (not d!664437) (not b!2224768) (not bm!133136) b_and!174469 (not d!664441) (not b!2224799) (not bm!133153) (not bm!133148) (not b!2224798) (not bm!133146) (not b!2224804) (not b!2224736) (not bm!133123) (not d!664455) (not b!2224747) (not b!2224803) (not bm!133145) (not b!2224797) (not b!2224782) (not b!2224727))
(check-sat b_and!174471 b_and!174469 (not b_next!65187) (not b_next!65185))

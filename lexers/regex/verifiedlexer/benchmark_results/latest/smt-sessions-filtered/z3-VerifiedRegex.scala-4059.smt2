; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218274 () Bool)

(assert start!218274)

(declare-fun b!2240488 () Bool)

(declare-fun b_free!65049 () Bool)

(declare-fun b_next!65753 () Bool)

(assert (=> b!2240488 (= b_free!65049 (not b_next!65753))))

(declare-fun tp!706119 () Bool)

(declare-fun b_and!175061 () Bool)

(assert (=> b!2240488 (= tp!706119 b_and!175061)))

(declare-fun b!2240489 () Bool)

(declare-fun b_free!65051 () Bool)

(declare-fun b_next!65755 () Bool)

(assert (=> b!2240489 (= b_free!65051 (not b_next!65755))))

(declare-fun tp!706113 () Bool)

(declare-fun b_and!175063 () Bool)

(assert (=> b!2240489 (= tp!706113 b_and!175063)))

(declare-fun b!2240483 () Bool)

(declare-fun e!1432466 () Bool)

(declare-fun e!1432469 () Bool)

(assert (=> b!2240483 (= e!1432466 e!1432469)))

(declare-fun b!2240484 () Bool)

(declare-fun e!1432463 () Bool)

(declare-datatypes ((C!13164 0))(
  ( (C!13165 (val!7630 Int)) )
))
(declare-datatypes ((Regex!6509 0))(
  ( (ElementMatch!6509 (c!356769 C!13164)) (Concat!10847 (regOne!13530 Regex!6509) (regTwo!13530 Regex!6509)) (EmptyExpr!6509) (Star!6509 (reg!6838 Regex!6509)) (EmptyLang!6509) (Union!6509 (regOne!13531 Regex!6509) (regTwo!13531 Regex!6509)) )
))
(declare-datatypes ((List!26511 0))(
  ( (Nil!26417) (Cons!26417 (h!31818 Regex!6509) (t!199943 List!26511)) )
))
(declare-datatypes ((Context!4114 0))(
  ( (Context!4115 (exprs!2557 List!26511)) )
))
(declare-datatypes ((tuple2!25836 0))(
  ( (tuple2!25837 (_1!15428 Context!4114) (_2!15428 C!13164)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25838 0))(
  ( (tuple2!25839 (_1!15429 tuple2!25836) (_2!15429 (InoxSet Context!4114))) )
))
(declare-datatypes ((List!26512 0))(
  ( (Nil!26418) (Cons!26418 (h!31819 tuple2!25838) (t!199944 List!26512)) )
))
(declare-datatypes ((array!10996 0))(
  ( (array!10997 (arr!4881 (Array (_ BitVec 32) (_ BitVec 64))) (size!20662 (_ BitVec 32))) )
))
(declare-datatypes ((array!10998 0))(
  ( (array!10999 (arr!4882 (Array (_ BitVec 32) List!26512)) (size!20663 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6294 0))(
  ( (LongMapFixedSize!6295 (defaultEntry!3512 Int) (mask!7755 (_ BitVec 32)) (extraKeys!3395 (_ BitVec 32)) (zeroValue!3405 List!26512) (minValue!3405 List!26512) (_size!6341 (_ BitVec 32)) (_keys!3444 array!10996) (_values!3427 array!10998) (_vacant!3208 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12405 0))(
  ( (Cell!12406 (v!30043 LongMapFixedSize!6294)) )
))
(declare-datatypes ((MutLongMap!3147 0))(
  ( (LongMap!3147 (underlying!6495 Cell!12405)) (MutLongMapExt!3146 (__x!17667 Int)) )
))
(declare-datatypes ((Hashable!3057 0))(
  ( (HashableExt!3056 (__x!17668 Int)) )
))
(declare-datatypes ((Cell!12407 0))(
  ( (Cell!12408 (v!30044 MutLongMap!3147)) )
))
(declare-datatypes ((MutableMap!3057 0))(
  ( (MutableMapExt!3056 (__x!17669 Int)) (HashMap!3057 (underlying!6496 Cell!12407) (hashF!4980 Hashable!3057) (_size!6342 (_ BitVec 32)) (defaultValue!3219 Int)) )
))
(declare-datatypes ((CacheUp!1984 0))(
  ( (CacheUp!1985 (cache!3438 MutableMap!3057)) )
))
(declare-fun thiss!28657 () CacheUp!1984)

(declare-fun valid!2368 (MutableMap!3057) Bool)

(assert (=> b!2240484 (= e!1432463 (not (valid!2368 (cache!3438 thiss!28657))))))

(declare-fun b!2240485 () Bool)

(declare-fun e!1432468 () Bool)

(assert (=> b!2240485 (= e!1432468 e!1432463)))

(declare-fun res!957716 () Bool)

(assert (=> b!2240485 (=> (not res!957716) (not e!1432463))))

(get-info :version)

(assert (=> b!2240485 (= res!957716 ((_ is HashMap!3057) (cache!3438 thiss!28657)))))

(declare-datatypes ((Unit!39389 0))(
  ( (Unit!39390) )
))
(declare-fun lt!833645 () Unit!39389)

(declare-fun a!949 () C!13164)

(declare-fun ctx!40 () Context!4114)

(declare-fun lemmaIfInCacheThenValid!38 (CacheUp!1984 Context!4114 C!13164) Unit!39389)

(assert (=> b!2240485 (= lt!833645 (lemmaIfInCacheThenValid!38 thiss!28657 ctx!40 a!949))))

(declare-fun mapNonEmpty!14753 () Bool)

(declare-fun mapRes!14753 () Bool)

(declare-fun tp!706114 () Bool)

(declare-fun tp!706116 () Bool)

(assert (=> mapNonEmpty!14753 (= mapRes!14753 (and tp!706114 tp!706116))))

(declare-fun mapKey!14753 () (_ BitVec 32))

(declare-fun mapRest!14753 () (Array (_ BitVec 32) List!26512))

(declare-fun mapValue!14753 () List!26512)

(assert (=> mapNonEmpty!14753 (= (arr!4882 (_values!3427 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) (store mapRest!14753 mapKey!14753 mapValue!14753))))

(declare-fun b!2240486 () Bool)

(declare-fun e!1432472 () Bool)

(declare-fun e!1432473 () Bool)

(declare-fun lt!833646 () MutLongMap!3147)

(assert (=> b!2240486 (= e!1432472 (and e!1432473 ((_ is LongMap!3147) lt!833646)))))

(assert (=> b!2240486 (= lt!833646 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))

(declare-fun b!2240487 () Bool)

(declare-fun e!1432465 () Bool)

(declare-fun e!1432467 () Bool)

(assert (=> b!2240487 (= e!1432465 e!1432467)))

(declare-fun e!1432464 () Bool)

(declare-fun tp!706115 () Bool)

(declare-fun tp!706118 () Bool)

(declare-fun array_inv!3503 (array!10996) Bool)

(declare-fun array_inv!3504 (array!10998) Bool)

(assert (=> b!2240488 (= e!1432469 (and tp!706119 tp!706115 tp!706118 (array_inv!3503 (_keys!3444 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) (array_inv!3504 (_values!3427 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) e!1432464))))

(declare-fun res!957715 () Bool)

(assert (=> start!218274 (=> (not res!957715) (not e!1432468))))

(declare-fun validCacheMapUp!293 (MutableMap!3057) Bool)

(assert (=> start!218274 (= res!957715 (validCacheMapUp!293 (cache!3438 thiss!28657)))))

(assert (=> start!218274 e!1432468))

(declare-fun inv!35879 (CacheUp!1984) Bool)

(assert (=> start!218274 (and (inv!35879 thiss!28657) e!1432465)))

(declare-fun e!1432471 () Bool)

(declare-fun inv!35880 (Context!4114) Bool)

(assert (=> start!218274 (and (inv!35880 ctx!40) e!1432471)))

(declare-fun tp_is_empty!10239 () Bool)

(assert (=> start!218274 tp_is_empty!10239))

(assert (=> b!2240489 (= e!1432467 (and e!1432472 tp!706113))))

(declare-fun b!2240490 () Bool)

(declare-fun tp!706112 () Bool)

(assert (=> b!2240490 (= e!1432464 (and tp!706112 mapRes!14753))))

(declare-fun condMapEmpty!14753 () Bool)

(declare-fun mapDefault!14753 () List!26512)

(assert (=> b!2240490 (= condMapEmpty!14753 (= (arr!4882 (_values!3427 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) ((as const (Array (_ BitVec 32) List!26512)) mapDefault!14753)))))

(declare-fun b!2240491 () Bool)

(assert (=> b!2240491 (= e!1432473 e!1432466)))

(declare-fun b!2240492 () Bool)

(declare-fun res!957714 () Bool)

(assert (=> b!2240492 (=> (not res!957714) (not e!1432468))))

(declare-fun contains!4473 (MutableMap!3057 tuple2!25836) Bool)

(assert (=> b!2240492 (= res!957714 (contains!4473 (cache!3438 thiss!28657) (tuple2!25837 ctx!40 a!949)))))

(declare-fun mapIsEmpty!14753 () Bool)

(assert (=> mapIsEmpty!14753 mapRes!14753))

(declare-fun b!2240493 () Bool)

(declare-fun tp!706117 () Bool)

(assert (=> b!2240493 (= e!1432471 tp!706117)))

(assert (= (and start!218274 res!957715) b!2240492))

(assert (= (and b!2240492 res!957714) b!2240485))

(assert (= (and b!2240485 res!957716) b!2240484))

(assert (= (and b!2240490 condMapEmpty!14753) mapIsEmpty!14753))

(assert (= (and b!2240490 (not condMapEmpty!14753)) mapNonEmpty!14753))

(assert (= b!2240488 b!2240490))

(assert (= b!2240483 b!2240488))

(assert (= b!2240491 b!2240483))

(assert (= (and b!2240486 ((_ is LongMap!3147) (v!30044 (underlying!6496 (cache!3438 thiss!28657))))) b!2240491))

(assert (= b!2240489 b!2240486))

(assert (= (and b!2240487 ((_ is HashMap!3057) (cache!3438 thiss!28657))) b!2240489))

(assert (= start!218274 b!2240487))

(assert (= start!218274 b!2240493))

(declare-fun m!2672827 () Bool)

(assert (=> b!2240485 m!2672827))

(declare-fun m!2672829 () Bool)

(assert (=> b!2240492 m!2672829))

(declare-fun m!2672831 () Bool)

(assert (=> b!2240484 m!2672831))

(declare-fun m!2672833 () Bool)

(assert (=> mapNonEmpty!14753 m!2672833))

(declare-fun m!2672835 () Bool)

(assert (=> b!2240488 m!2672835))

(declare-fun m!2672837 () Bool)

(assert (=> b!2240488 m!2672837))

(declare-fun m!2672839 () Bool)

(assert (=> start!218274 m!2672839))

(declare-fun m!2672841 () Bool)

(assert (=> start!218274 m!2672841))

(declare-fun m!2672843 () Bool)

(assert (=> start!218274 m!2672843))

(check-sat b_and!175063 (not b!2240492) b_and!175061 (not b_next!65753) (not b!2240493) (not mapNonEmpty!14753) (not b_next!65755) (not b!2240485) (not b!2240484) (not b!2240488) (not b!2240490) (not start!218274) tp_is_empty!10239)
(check-sat b_and!175061 b_and!175063 (not b_next!65755) (not b_next!65753))
(get-model)

(declare-fun b!2240516 () Bool)

(declare-fun e!1432494 () Unit!39389)

(declare-fun lt!833687 () Unit!39389)

(assert (=> b!2240516 (= e!1432494 lt!833687)))

(declare-datatypes ((tuple2!25840 0))(
  ( (tuple2!25841 (_1!15430 (_ BitVec 64)) (_2!15430 List!26512)) )
))
(declare-datatypes ((List!26513 0))(
  ( (Nil!26419) (Cons!26419 (h!31820 tuple2!25840) (t!199945 List!26513)) )
))
(declare-datatypes ((ListLongMap!353 0))(
  ( (ListLongMap!354 (toList!1384 List!26513)) )
))
(declare-fun lt!833703 () ListLongMap!353)

(declare-fun call!135209 () ListLongMap!353)

(assert (=> b!2240516 (= lt!833703 call!135209)))

(declare-fun lemmaInGenericMapThenInLongMap!41 (ListLongMap!353 tuple2!25836 Hashable!3057) Unit!39389)

(assert (=> b!2240516 (= lt!833687 (lemmaInGenericMapThenInLongMap!41 lt!833703 (tuple2!25837 ctx!40 a!949) (hashF!4980 (cache!3438 thiss!28657))))))

(declare-fun res!957725 () Bool)

(declare-fun call!135211 () Bool)

(assert (=> b!2240516 (= res!957725 call!135211)))

(declare-fun e!1432489 () Bool)

(assert (=> b!2240516 (=> (not res!957725) (not e!1432489))))

(assert (=> b!2240516 e!1432489))

(declare-fun b!2240517 () Bool)

(declare-fun e!1432490 () Bool)

(declare-fun call!135208 () Bool)

(assert (=> b!2240517 (= e!1432490 call!135208)))

(declare-fun b!2240518 () Bool)

(declare-fun e!1432493 () Unit!39389)

(declare-fun Unit!39391 () Unit!39389)

(assert (=> b!2240518 (= e!1432493 Unit!39391)))

(declare-fun b!2240519 () Bool)

(declare-fun lambda!84740 () Int)

(declare-fun e!1432491 () Unit!39389)

(declare-fun lt!833699 () (_ BitVec 64))

(declare-fun forallContained!788 (List!26513 Int tuple2!25840) Unit!39389)

(declare-fun map!5460 (MutLongMap!3147) ListLongMap!353)

(declare-fun apply!6515 (MutLongMap!3147 (_ BitVec 64)) List!26512)

(assert (=> b!2240519 (= e!1432491 (forallContained!788 (toList!1384 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))) lambda!84740 (tuple2!25841 lt!833699 (apply!6515 (v!30044 (underlying!6496 (cache!3438 thiss!28657))) lt!833699))))))

(declare-fun c!356780 () Bool)

(declare-fun contains!4474 (List!26513 tuple2!25840) Bool)

(assert (=> b!2240519 (= c!356780 (not (contains!4474 (toList!1384 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))) (tuple2!25841 lt!833699 (apply!6515 (v!30044 (underlying!6496 (cache!3438 thiss!28657))) lt!833699)))))))

(declare-fun lt!833697 () Unit!39389)

(assert (=> b!2240519 (= lt!833697 e!1432493)))

(declare-fun bm!135203 () Bool)

(declare-fun c!356778 () Bool)

(declare-fun call!135212 () (_ BitVec 64))

(declare-fun contains!4475 (ListLongMap!353 (_ BitVec 64)) Bool)

(assert (=> bm!135203 (= call!135211 (contains!4475 (ite c!356778 lt!833703 call!135209) call!135212))))

(declare-fun b!2240520 () Bool)

(declare-fun Unit!39392 () Unit!39389)

(assert (=> b!2240520 (= e!1432491 Unit!39392)))

(declare-fun b!2240521 () Bool)

(declare-fun e!1432488 () Unit!39389)

(declare-fun Unit!39393 () Unit!39389)

(assert (=> b!2240521 (= e!1432488 Unit!39393)))

(declare-fun b!2240522 () Bool)

(assert (=> b!2240522 (= e!1432489 call!135208)))

(declare-fun b!2240523 () Bool)

(assert (=> b!2240523 false))

(declare-fun lt!833704 () Unit!39389)

(declare-fun lt!833705 () Unit!39389)

(assert (=> b!2240523 (= lt!833704 lt!833705)))

(declare-fun lt!833701 () List!26513)

(declare-fun lt!833700 () List!26512)

(assert (=> b!2240523 (contains!4474 lt!833701 (tuple2!25841 lt!833699 lt!833700))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!42 (List!26513 (_ BitVec 64) List!26512) Unit!39389)

(assert (=> b!2240523 (= lt!833705 (lemmaGetValueByKeyImpliesContainsTuple!42 lt!833701 lt!833699 lt!833700))))

(assert (=> b!2240523 (= lt!833700 (apply!6515 (v!30044 (underlying!6496 (cache!3438 thiss!28657))) lt!833699))))

(assert (=> b!2240523 (= lt!833701 (toList!1384 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))))

(declare-fun lt!833696 () Unit!39389)

(declare-fun lt!833689 () Unit!39389)

(assert (=> b!2240523 (= lt!833696 lt!833689)))

(declare-fun lt!833694 () List!26513)

(declare-datatypes ((Option!5152 0))(
  ( (None!5151) (Some!5151 (v!30045 List!26512)) )
))
(declare-fun isDefined!4160 (Option!5152) Bool)

(declare-fun getValueByKey!91 (List!26513 (_ BitVec 64)) Option!5152)

(assert (=> b!2240523 (isDefined!4160 (getValueByKey!91 lt!833694 lt!833699))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!59 (List!26513 (_ BitVec 64)) Unit!39389)

(assert (=> b!2240523 (= lt!833689 (lemmaContainsKeyImpliesGetValueByKeyDefined!59 lt!833694 lt!833699))))

(assert (=> b!2240523 (= lt!833694 (toList!1384 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))))

(declare-fun lt!833706 () Unit!39389)

(declare-fun lt!833702 () Unit!39389)

(assert (=> b!2240523 (= lt!833706 lt!833702)))

(declare-fun lt!833690 () List!26513)

(declare-fun containsKey!90 (List!26513 (_ BitVec 64)) Bool)

(assert (=> b!2240523 (containsKey!90 lt!833690 lt!833699)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!42 (List!26513 (_ BitVec 64)) Unit!39389)

(assert (=> b!2240523 (= lt!833702 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!42 lt!833690 lt!833699))))

(assert (=> b!2240523 (= lt!833690 (toList!1384 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))))

(declare-fun Unit!39394 () Unit!39389)

(assert (=> b!2240523 (= e!1432493 Unit!39394)))

(declare-fun bm!135204 () Bool)

(assert (=> bm!135204 (= call!135209 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))

(declare-fun lt!833698 () Bool)

(declare-fun d!665736 () Bool)

(declare-datatypes ((ListMap!869 0))(
  ( (ListMap!870 (toList!1385 List!26512)) )
))
(declare-fun contains!4476 (ListMap!869 tuple2!25836) Bool)

(declare-fun map!5461 (MutableMap!3057) ListMap!869)

(assert (=> d!665736 (= lt!833698 (contains!4476 (map!5461 (cache!3438 thiss!28657)) (tuple2!25837 ctx!40 a!949)))))

(declare-fun e!1432492 () Bool)

(assert (=> d!665736 (= lt!833698 e!1432492)))

(declare-fun res!957724 () Bool)

(assert (=> d!665736 (=> (not res!957724) (not e!1432492))))

(declare-fun contains!4477 (MutLongMap!3147 (_ BitVec 64)) Bool)

(assert (=> d!665736 (= res!957724 (contains!4477 (v!30044 (underlying!6496 (cache!3438 thiss!28657))) lt!833699))))

(declare-fun lt!833695 () Unit!39389)

(assert (=> d!665736 (= lt!833695 e!1432494)))

(declare-fun extractMap!121 (List!26513) ListMap!869)

(assert (=> d!665736 (= c!356778 (contains!4476 (extractMap!121 (toList!1384 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))) (tuple2!25837 ctx!40 a!949)))))

(declare-fun lt!833688 () Unit!39389)

(assert (=> d!665736 (= lt!833688 e!1432491)))

(declare-fun c!356781 () Bool)

(assert (=> d!665736 (= c!356781 (contains!4477 (v!30044 (underlying!6496 (cache!3438 thiss!28657))) lt!833699))))

(declare-fun hash!588 (Hashable!3057 tuple2!25836) (_ BitVec 64))

(assert (=> d!665736 (= lt!833699 (hash!588 (hashF!4980 (cache!3438 thiss!28657)) (tuple2!25837 ctx!40 a!949)))))

(assert (=> d!665736 (valid!2368 (cache!3438 thiss!28657))))

(assert (=> d!665736 (= (contains!4473 (cache!3438 thiss!28657) (tuple2!25837 ctx!40 a!949)) lt!833698)))

(declare-fun call!135210 () List!26512)

(declare-datatypes ((Option!5153 0))(
  ( (None!5152) (Some!5152 (v!30046 tuple2!25838)) )
))
(declare-fun call!135213 () Option!5153)

(declare-fun bm!135205 () Bool)

(declare-fun getPair!41 (List!26512 tuple2!25836) Option!5153)

(assert (=> bm!135205 (= call!135213 (getPair!41 call!135210 (tuple2!25837 ctx!40 a!949)))))

(declare-fun b!2240524 () Bool)

(assert (=> b!2240524 false))

(declare-fun lt!833691 () Unit!39389)

(declare-fun lt!833693 () Unit!39389)

(assert (=> b!2240524 (= lt!833691 lt!833693)))

(declare-fun lt!833692 () ListLongMap!353)

(assert (=> b!2240524 (contains!4476 (extractMap!121 (toList!1384 lt!833692)) (tuple2!25837 ctx!40 a!949))))

(declare-fun lemmaInLongMapThenInGenericMap!41 (ListLongMap!353 tuple2!25836 Hashable!3057) Unit!39389)

(assert (=> b!2240524 (= lt!833693 (lemmaInLongMapThenInGenericMap!41 lt!833692 (tuple2!25837 ctx!40 a!949) (hashF!4980 (cache!3438 thiss!28657))))))

(assert (=> b!2240524 (= lt!833692 call!135209)))

(declare-fun Unit!39395 () Unit!39389)

(assert (=> b!2240524 (= e!1432488 Unit!39395)))

(declare-fun b!2240525 () Bool)

(declare-fun isDefined!4161 (Option!5153) Bool)

(assert (=> b!2240525 (= e!1432492 (isDefined!4161 (getPair!41 (apply!6515 (v!30044 (underlying!6496 (cache!3438 thiss!28657))) lt!833699) (tuple2!25837 ctx!40 a!949))))))

(declare-fun b!2240526 () Bool)

(assert (=> b!2240526 (= e!1432494 e!1432488)))

(declare-fun res!957723 () Bool)

(assert (=> b!2240526 (= res!957723 call!135211)))

(assert (=> b!2240526 (=> (not res!957723) (not e!1432490))))

(declare-fun c!356779 () Bool)

(assert (=> b!2240526 (= c!356779 e!1432490)))

(declare-fun bm!135206 () Bool)

(assert (=> bm!135206 (= call!135208 (isDefined!4161 call!135213))))

(declare-fun bm!135207 () Bool)

(declare-fun apply!6516 (ListLongMap!353 (_ BitVec 64)) List!26512)

(assert (=> bm!135207 (= call!135210 (apply!6516 (ite c!356778 lt!833703 call!135209) call!135212))))

(declare-fun bm!135208 () Bool)

(assert (=> bm!135208 (= call!135212 (hash!588 (hashF!4980 (cache!3438 thiss!28657)) (tuple2!25837 ctx!40 a!949)))))

(assert (= (and d!665736 c!356781) b!2240519))

(assert (= (and d!665736 (not c!356781)) b!2240520))

(assert (= (and b!2240519 c!356780) b!2240523))

(assert (= (and b!2240519 (not c!356780)) b!2240518))

(assert (= (and d!665736 c!356778) b!2240516))

(assert (= (and d!665736 (not c!356778)) b!2240526))

(assert (= (and b!2240516 res!957725) b!2240522))

(assert (= (and b!2240526 res!957723) b!2240517))

(assert (= (and b!2240526 c!356779) b!2240524))

(assert (= (and b!2240526 (not c!356779)) b!2240521))

(assert (= (or b!2240516 b!2240526 b!2240517 b!2240524) bm!135204))

(assert (= (or b!2240516 b!2240522 b!2240526 b!2240517) bm!135208))

(assert (= (or b!2240522 b!2240517) bm!135207))

(assert (= (or b!2240516 b!2240526) bm!135203))

(assert (= (or b!2240522 b!2240517) bm!135205))

(assert (= (or b!2240522 b!2240517) bm!135206))

(assert (= (and d!665736 res!957724) b!2240525))

(declare-fun m!2672845 () Bool)

(assert (=> b!2240524 m!2672845))

(assert (=> b!2240524 m!2672845))

(declare-fun m!2672847 () Bool)

(assert (=> b!2240524 m!2672847))

(declare-fun m!2672849 () Bool)

(assert (=> b!2240524 m!2672849))

(declare-fun m!2672851 () Bool)

(assert (=> b!2240523 m!2672851))

(declare-fun m!2672853 () Bool)

(assert (=> b!2240523 m!2672853))

(declare-fun m!2672855 () Bool)

(assert (=> b!2240523 m!2672855))

(declare-fun m!2672857 () Bool)

(assert (=> b!2240523 m!2672857))

(declare-fun m!2672859 () Bool)

(assert (=> b!2240523 m!2672859))

(declare-fun m!2672861 () Bool)

(assert (=> b!2240523 m!2672861))

(declare-fun m!2672863 () Bool)

(assert (=> b!2240523 m!2672863))

(declare-fun m!2672865 () Bool)

(assert (=> b!2240523 m!2672865))

(declare-fun m!2672867 () Bool)

(assert (=> b!2240523 m!2672867))

(assert (=> b!2240523 m!2672861))

(declare-fun m!2672869 () Bool)

(assert (=> bm!135206 m!2672869))

(declare-fun m!2672871 () Bool)

(assert (=> bm!135207 m!2672871))

(declare-fun m!2672873 () Bool)

(assert (=> b!2240516 m!2672873))

(declare-fun m!2672875 () Bool)

(assert (=> bm!135203 m!2672875))

(assert (=> b!2240519 m!2672855))

(assert (=> b!2240519 m!2672865))

(declare-fun m!2672877 () Bool)

(assert (=> b!2240519 m!2672877))

(declare-fun m!2672879 () Bool)

(assert (=> b!2240519 m!2672879))

(declare-fun m!2672881 () Bool)

(assert (=> d!665736 m!2672881))

(declare-fun m!2672883 () Bool)

(assert (=> d!665736 m!2672883))

(assert (=> d!665736 m!2672831))

(assert (=> d!665736 m!2672881))

(declare-fun m!2672885 () Bool)

(assert (=> d!665736 m!2672885))

(declare-fun m!2672887 () Bool)

(assert (=> d!665736 m!2672887))

(assert (=> d!665736 m!2672855))

(declare-fun m!2672889 () Bool)

(assert (=> d!665736 m!2672889))

(assert (=> d!665736 m!2672885))

(declare-fun m!2672891 () Bool)

(assert (=> d!665736 m!2672891))

(assert (=> bm!135204 m!2672855))

(assert (=> b!2240525 m!2672865))

(assert (=> b!2240525 m!2672865))

(declare-fun m!2672893 () Bool)

(assert (=> b!2240525 m!2672893))

(assert (=> b!2240525 m!2672893))

(declare-fun m!2672895 () Bool)

(assert (=> b!2240525 m!2672895))

(assert (=> bm!135208 m!2672889))

(declare-fun m!2672897 () Bool)

(assert (=> bm!135205 m!2672897))

(assert (=> b!2240492 d!665736))

(declare-fun d!665738 () Bool)

(assert (=> d!665738 (= (array_inv!3503 (_keys!3444 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) (bvsge (size!20662 (_keys!3444 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240488 d!665738))

(declare-fun d!665740 () Bool)

(assert (=> d!665740 (= (array_inv!3504 (_values!3427 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) (bvsge (size!20663 (_values!3427 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240488 d!665740))

(declare-fun bs!454303 () Bool)

(declare-fun b!2240531 () Bool)

(assert (= bs!454303 (and b!2240531 b!2240519)))

(declare-fun lambda!84743 () Int)

(assert (=> bs!454303 (= lambda!84743 lambda!84740)))

(declare-fun d!665742 () Bool)

(declare-fun res!957730 () Bool)

(declare-fun e!1432497 () Bool)

(assert (=> d!665742 (=> (not res!957730) (not e!1432497))))

(declare-fun valid!2369 (MutLongMap!3147) Bool)

(assert (=> d!665742 (= res!957730 (valid!2369 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))

(assert (=> d!665742 (= (valid!2368 (cache!3438 thiss!28657)) e!1432497)))

(declare-fun res!957731 () Bool)

(assert (=> b!2240531 (=> (not res!957731) (not e!1432497))))

(declare-fun forall!5437 (List!26513 Int) Bool)

(assert (=> b!2240531 (= res!957731 (forall!5437 (toList!1384 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657))))) lambda!84743))))

(declare-fun b!2240532 () Bool)

(declare-fun allKeysSameHashInMap!115 (ListLongMap!353 Hashable!3057) Bool)

(assert (=> b!2240532 (= e!1432497 (allKeysSameHashInMap!115 (map!5460 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))) (hashF!4980 (cache!3438 thiss!28657))))))

(assert (= (and d!665742 res!957730) b!2240531))

(assert (= (and b!2240531 res!957731) b!2240532))

(declare-fun m!2672899 () Bool)

(assert (=> d!665742 m!2672899))

(assert (=> b!2240531 m!2672855))

(declare-fun m!2672901 () Bool)

(assert (=> b!2240531 m!2672901))

(assert (=> b!2240532 m!2672855))

(assert (=> b!2240532 m!2672855))

(declare-fun m!2672903 () Bool)

(assert (=> b!2240532 m!2672903))

(assert (=> b!2240484 d!665742))

(declare-fun d!665744 () Bool)

(declare-fun e!1432505 () Bool)

(assert (=> d!665744 e!1432505))

(declare-fun res!957734 () Bool)

(assert (=> d!665744 (=> res!957734 e!1432505)))

(assert (=> d!665744 (= res!957734 (not (contains!4473 (cache!3438 thiss!28657) (tuple2!25837 ctx!40 a!949))))))

(declare-fun lt!833723 () Unit!39389)

(declare-fun e!1432506 () Unit!39389)

(assert (=> d!665744 (= lt!833723 e!1432506)))

(declare-fun c!356784 () Bool)

(assert (=> d!665744 (= c!356784 (contains!4473 (cache!3438 thiss!28657) (tuple2!25837 ctx!40 a!949)))))

(assert (=> d!665744 (validCacheMapUp!293 (cache!3438 thiss!28657))))

(assert (=> d!665744 (= (lemmaIfInCacheThenValid!38 thiss!28657 ctx!40 a!949) lt!833723)))

(declare-fun b!2240539 () Bool)

(declare-fun lt!833725 () Unit!39389)

(assert (=> b!2240539 (= e!1432506 lt!833725)))

(declare-fun lt!833724 () tuple2!25836)

(assert (=> b!2240539 (= lt!833724 (tuple2!25837 ctx!40 a!949))))

(declare-fun lambda!84746 () Int)

(declare-fun lemmaForallPairsThenForLookup!34 (MutableMap!3057 tuple2!25836 Int) Unit!39389)

(assert (=> b!2240539 (= lt!833725 (lemmaForallPairsThenForLookup!34 (cache!3438 thiss!28657) lt!833724 lambda!84746))))

(declare-fun lt!833722 () tuple2!25838)

(declare-fun apply!6517 (MutableMap!3057 tuple2!25836) (InoxSet Context!4114))

(assert (=> b!2240539 (= lt!833722 (tuple2!25839 lt!833724 (apply!6517 (cache!3438 thiss!28657) lt!833724)))))

(declare-fun lt!833721 () tuple2!25836)

(assert (=> b!2240539 (= lt!833721 lt!833724)))

(declare-fun lt!833726 () (InoxSet Context!4114))

(assert (=> b!2240539 (= lt!833726 (apply!6517 (cache!3438 thiss!28657) lt!833724))))

(declare-fun lt!833727 () (InoxSet Context!4114))

(assert (=> b!2240539 (= lt!833727 (apply!6517 (cache!3438 thiss!28657) lt!833724))))

(declare-fun derivationStepZipperUp!40 (Context!4114 C!13164) (InoxSet Context!4114))

(assert (=> b!2240539 (= (apply!6517 (cache!3438 thiss!28657) lt!833724) (derivationStepZipperUp!40 (_1!15428 lt!833724) (_2!15428 lt!833724)))))

(declare-fun b!2240540 () Bool)

(declare-fun Unit!39396 () Unit!39389)

(assert (=> b!2240540 (= e!1432506 Unit!39396)))

(declare-fun b!2240541 () Bool)

(assert (=> b!2240541 (= e!1432505 (= (derivationStepZipperUp!40 ctx!40 a!949) (apply!6517 (cache!3438 thiss!28657) (tuple2!25837 ctx!40 a!949))))))

(assert (= (and d!665744 c!356784) b!2240539))

(assert (= (and d!665744 (not c!356784)) b!2240540))

(assert (= (and d!665744 (not res!957734)) b!2240541))

(assert (=> d!665744 m!2672829))

(assert (=> d!665744 m!2672839))

(declare-fun m!2672905 () Bool)

(assert (=> b!2240539 m!2672905))

(declare-fun m!2672907 () Bool)

(assert (=> b!2240539 m!2672907))

(declare-fun m!2672909 () Bool)

(assert (=> b!2240539 m!2672909))

(declare-fun m!2672911 () Bool)

(assert (=> b!2240541 m!2672911))

(declare-fun m!2672913 () Bool)

(assert (=> b!2240541 m!2672913))

(assert (=> b!2240485 d!665744))

(declare-fun bs!454304 () Bool)

(declare-fun b!2240547 () Bool)

(assert (= bs!454304 (and b!2240547 b!2240539)))

(declare-fun lambda!84749 () Int)

(assert (=> bs!454304 (= lambda!84749 lambda!84746)))

(declare-fun d!665746 () Bool)

(declare-fun res!957739 () Bool)

(declare-fun e!1432509 () Bool)

(assert (=> d!665746 (=> (not res!957739) (not e!1432509))))

(assert (=> d!665746 (= res!957739 (valid!2368 (cache!3438 thiss!28657)))))

(assert (=> d!665746 (= (validCacheMapUp!293 (cache!3438 thiss!28657)) e!1432509)))

(declare-fun b!2240546 () Bool)

(declare-fun res!957740 () Bool)

(assert (=> b!2240546 (=> (not res!957740) (not e!1432509))))

(declare-fun invariantList!387 (List!26512) Bool)

(assert (=> b!2240546 (= res!957740 (invariantList!387 (toList!1385 (map!5461 (cache!3438 thiss!28657)))))))

(declare-fun forall!5438 (List!26512 Int) Bool)

(assert (=> b!2240547 (= e!1432509 (forall!5438 (toList!1385 (map!5461 (cache!3438 thiss!28657))) lambda!84749))))

(assert (= (and d!665746 res!957739) b!2240546))

(assert (= (and b!2240546 res!957740) b!2240547))

(assert (=> d!665746 m!2672831))

(assert (=> b!2240546 m!2672885))

(declare-fun m!2672916 () Bool)

(assert (=> b!2240546 m!2672916))

(assert (=> b!2240547 m!2672885))

(declare-fun m!2672918 () Bool)

(assert (=> b!2240547 m!2672918))

(assert (=> start!218274 d!665746))

(declare-fun d!665748 () Bool)

(declare-fun res!957743 () Bool)

(declare-fun e!1432512 () Bool)

(assert (=> d!665748 (=> (not res!957743) (not e!1432512))))

(assert (=> d!665748 (= res!957743 ((_ is HashMap!3057) (cache!3438 thiss!28657)))))

(assert (=> d!665748 (= (inv!35879 thiss!28657) e!1432512)))

(declare-fun b!2240550 () Bool)

(assert (=> b!2240550 (= e!1432512 (validCacheMapUp!293 (cache!3438 thiss!28657)))))

(assert (= (and d!665748 res!957743) b!2240550))

(assert (=> b!2240550 m!2672839))

(assert (=> start!218274 d!665748))

(declare-fun d!665750 () Bool)

(declare-fun lambda!84752 () Int)

(declare-fun forall!5439 (List!26511 Int) Bool)

(assert (=> d!665750 (= (inv!35880 ctx!40) (forall!5439 (exprs!2557 ctx!40) lambda!84752))))

(declare-fun bs!454305 () Bool)

(assert (= bs!454305 d!665750))

(declare-fun m!2672920 () Bool)

(assert (=> bs!454305 m!2672920))

(assert (=> start!218274 d!665750))

(declare-fun b!2240555 () Bool)

(declare-fun e!1432515 () Bool)

(declare-fun tp!706124 () Bool)

(declare-fun tp!706125 () Bool)

(assert (=> b!2240555 (= e!1432515 (and tp!706124 tp!706125))))

(assert (=> b!2240493 (= tp!706117 e!1432515)))

(assert (= (and b!2240493 ((_ is Cons!26417) (exprs!2557 ctx!40))) b!2240555))

(declare-fun tp!706134 () Bool)

(declare-fun e!1432522 () Bool)

(declare-fun setNonEmpty!20566 () Bool)

(declare-fun setRes!20566 () Bool)

(declare-fun setElem!20566 () Context!4114)

(assert (=> setNonEmpty!20566 (= setRes!20566 (and tp!706134 (inv!35880 setElem!20566) e!1432522))))

(declare-fun setRest!20566 () (InoxSet Context!4114))

(assert (=> setNonEmpty!20566 (= (_2!15429 (h!31819 (zeroValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4114 Bool)) false) setElem!20566 true) setRest!20566))))

(declare-fun tp!706137 () Bool)

(declare-fun b!2240564 () Bool)

(declare-fun e!1432523 () Bool)

(declare-fun e!1432524 () Bool)

(assert (=> b!2240564 (= e!1432524 (and (inv!35880 (_1!15428 (_1!15429 (h!31819 (zeroValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))))) e!1432523 tp_is_empty!10239 setRes!20566 tp!706137))))

(declare-fun condSetEmpty!20566 () Bool)

(assert (=> b!2240564 (= condSetEmpty!20566 (= (_2!15429 (h!31819 (zeroValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))) ((as const (Array Context!4114 Bool)) false)))))

(declare-fun b!2240565 () Bool)

(declare-fun tp!706135 () Bool)

(assert (=> b!2240565 (= e!1432523 tp!706135)))

(declare-fun b!2240566 () Bool)

(declare-fun tp!706136 () Bool)

(assert (=> b!2240566 (= e!1432522 tp!706136)))

(assert (=> b!2240488 (= tp!706115 e!1432524)))

(declare-fun setIsEmpty!20566 () Bool)

(assert (=> setIsEmpty!20566 setRes!20566))

(assert (= b!2240564 b!2240565))

(assert (= (and b!2240564 condSetEmpty!20566) setIsEmpty!20566))

(assert (= (and b!2240564 (not condSetEmpty!20566)) setNonEmpty!20566))

(assert (= setNonEmpty!20566 b!2240566))

(assert (= (and b!2240488 ((_ is Cons!26418) (zeroValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))) b!2240564))

(declare-fun m!2672922 () Bool)

(assert (=> setNonEmpty!20566 m!2672922))

(declare-fun m!2672924 () Bool)

(assert (=> b!2240564 m!2672924))

(declare-fun setRes!20567 () Bool)

(declare-fun setElem!20567 () Context!4114)

(declare-fun tp!706138 () Bool)

(declare-fun e!1432525 () Bool)

(declare-fun setNonEmpty!20567 () Bool)

(assert (=> setNonEmpty!20567 (= setRes!20567 (and tp!706138 (inv!35880 setElem!20567) e!1432525))))

(declare-fun setRest!20567 () (InoxSet Context!4114))

(assert (=> setNonEmpty!20567 (= (_2!15429 (h!31819 (minValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4114 Bool)) false) setElem!20567 true) setRest!20567))))

(declare-fun e!1432526 () Bool)

(declare-fun tp!706141 () Bool)

(declare-fun e!1432527 () Bool)

(declare-fun b!2240567 () Bool)

(assert (=> b!2240567 (= e!1432527 (and (inv!35880 (_1!15428 (_1!15429 (h!31819 (minValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))))) e!1432526 tp_is_empty!10239 setRes!20567 tp!706141))))

(declare-fun condSetEmpty!20567 () Bool)

(assert (=> b!2240567 (= condSetEmpty!20567 (= (_2!15429 (h!31819 (minValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))) ((as const (Array Context!4114 Bool)) false)))))

(declare-fun b!2240568 () Bool)

(declare-fun tp!706139 () Bool)

(assert (=> b!2240568 (= e!1432526 tp!706139)))

(declare-fun b!2240569 () Bool)

(declare-fun tp!706140 () Bool)

(assert (=> b!2240569 (= e!1432525 tp!706140)))

(assert (=> b!2240488 (= tp!706118 e!1432527)))

(declare-fun setIsEmpty!20567 () Bool)

(assert (=> setIsEmpty!20567 setRes!20567))

(assert (= b!2240567 b!2240568))

(assert (= (and b!2240567 condSetEmpty!20567) setIsEmpty!20567))

(assert (= (and b!2240567 (not condSetEmpty!20567)) setNonEmpty!20567))

(assert (= setNonEmpty!20567 b!2240569))

(assert (= (and b!2240488 ((_ is Cons!26418) (minValue!3405 (v!30043 (underlying!6495 (v!30044 (underlying!6496 (cache!3438 thiss!28657)))))))) b!2240567))

(declare-fun m!2672926 () Bool)

(assert (=> setNonEmpty!20567 m!2672926))

(declare-fun m!2672928 () Bool)

(assert (=> b!2240567 m!2672928))

(declare-fun setNonEmpty!20568 () Bool)

(declare-fun e!1432528 () Bool)

(declare-fun tp!706142 () Bool)

(declare-fun setElem!20568 () Context!4114)

(declare-fun setRes!20568 () Bool)

(assert (=> setNonEmpty!20568 (= setRes!20568 (and tp!706142 (inv!35880 setElem!20568) e!1432528))))

(declare-fun setRest!20568 () (InoxSet Context!4114))

(assert (=> setNonEmpty!20568 (= (_2!15429 (h!31819 mapDefault!14753)) ((_ map or) (store ((as const (Array Context!4114 Bool)) false) setElem!20568 true) setRest!20568))))

(declare-fun tp!706145 () Bool)

(declare-fun e!1432530 () Bool)

(declare-fun b!2240570 () Bool)

(declare-fun e!1432529 () Bool)

(assert (=> b!2240570 (= e!1432530 (and (inv!35880 (_1!15428 (_1!15429 (h!31819 mapDefault!14753)))) e!1432529 tp_is_empty!10239 setRes!20568 tp!706145))))

(declare-fun condSetEmpty!20568 () Bool)

(assert (=> b!2240570 (= condSetEmpty!20568 (= (_2!15429 (h!31819 mapDefault!14753)) ((as const (Array Context!4114 Bool)) false)))))

(declare-fun b!2240571 () Bool)

(declare-fun tp!706143 () Bool)

(assert (=> b!2240571 (= e!1432529 tp!706143)))

(declare-fun b!2240572 () Bool)

(declare-fun tp!706144 () Bool)

(assert (=> b!2240572 (= e!1432528 tp!706144)))

(assert (=> b!2240490 (= tp!706112 e!1432530)))

(declare-fun setIsEmpty!20568 () Bool)

(assert (=> setIsEmpty!20568 setRes!20568))

(assert (= b!2240570 b!2240571))

(assert (= (and b!2240570 condSetEmpty!20568) setIsEmpty!20568))

(assert (= (and b!2240570 (not condSetEmpty!20568)) setNonEmpty!20568))

(assert (= setNonEmpty!20568 b!2240572))

(assert (= (and b!2240490 ((_ is Cons!26418) mapDefault!14753)) b!2240570))

(declare-fun m!2672930 () Bool)

(assert (=> setNonEmpty!20568 m!2672930))

(declare-fun m!2672932 () Bool)

(assert (=> b!2240570 m!2672932))

(declare-fun b!2240587 () Bool)

(declare-fun e!1432546 () Bool)

(declare-fun tp!706167 () Bool)

(assert (=> b!2240587 (= e!1432546 tp!706167)))

(declare-fun b!2240588 () Bool)

(declare-fun e!1432544 () Bool)

(declare-fun tp!706171 () Bool)

(assert (=> b!2240588 (= e!1432544 tp!706171)))

(declare-fun setIsEmpty!20573 () Bool)

(declare-fun setRes!20573 () Bool)

(assert (=> setIsEmpty!20573 setRes!20573))

(declare-fun e!1432543 () Bool)

(declare-fun tp!706166 () Bool)

(declare-fun mapDefault!14756 () List!26512)

(declare-fun setRes!20574 () Bool)

(declare-fun e!1432545 () Bool)

(declare-fun b!2240589 () Bool)

(assert (=> b!2240589 (= e!1432545 (and (inv!35880 (_1!15428 (_1!15429 (h!31819 mapDefault!14756)))) e!1432543 tp_is_empty!10239 setRes!20574 tp!706166))))

(declare-fun condSetEmpty!20574 () Bool)

(assert (=> b!2240589 (= condSetEmpty!20574 (= (_2!15429 (h!31819 mapDefault!14756)) ((as const (Array Context!4114 Bool)) false)))))

(declare-fun condMapEmpty!14756 () Bool)

(assert (=> mapNonEmpty!14753 (= condMapEmpty!14756 (= mapRest!14753 ((as const (Array (_ BitVec 32) List!26512)) mapDefault!14756)))))

(declare-fun mapRes!14756 () Bool)

(assert (=> mapNonEmpty!14753 (= tp!706114 (and e!1432545 mapRes!14756))))

(declare-fun setNonEmpty!20573 () Bool)

(declare-fun tp!706165 () Bool)

(declare-fun setElem!20574 () Context!4114)

(assert (=> setNonEmpty!20573 (= setRes!20573 (and tp!706165 (inv!35880 setElem!20574) e!1432544))))

(declare-fun mapValue!14756 () List!26512)

(declare-fun setRest!20574 () (InoxSet Context!4114))

(assert (=> setNonEmpty!20573 (= (_2!15429 (h!31819 mapValue!14756)) ((_ map or) (store ((as const (Array Context!4114 Bool)) false) setElem!20574 true) setRest!20574))))

(declare-fun tp!706170 () Bool)

(declare-fun setNonEmpty!20574 () Bool)

(declare-fun setElem!20573 () Context!4114)

(assert (=> setNonEmpty!20574 (= setRes!20574 (and tp!706170 (inv!35880 setElem!20573) e!1432546))))

(declare-fun setRest!20573 () (InoxSet Context!4114))

(assert (=> setNonEmpty!20574 (= (_2!15429 (h!31819 mapDefault!14756)) ((_ map or) (store ((as const (Array Context!4114 Bool)) false) setElem!20573 true) setRest!20573))))

(declare-fun b!2240590 () Bool)

(declare-fun tp!706172 () Bool)

(assert (=> b!2240590 (= e!1432543 tp!706172)))

(declare-fun b!2240591 () Bool)

(declare-fun e!1432548 () Bool)

(declare-fun tp!706168 () Bool)

(assert (=> b!2240591 (= e!1432548 tp!706168)))

(declare-fun setIsEmpty!20574 () Bool)

(assert (=> setIsEmpty!20574 setRes!20574))

(declare-fun mapIsEmpty!14756 () Bool)

(assert (=> mapIsEmpty!14756 mapRes!14756))

(declare-fun mapNonEmpty!14756 () Bool)

(declare-fun tp!706169 () Bool)

(declare-fun e!1432547 () Bool)

(assert (=> mapNonEmpty!14756 (= mapRes!14756 (and tp!706169 e!1432547))))

(declare-fun mapKey!14756 () (_ BitVec 32))

(declare-fun mapRest!14756 () (Array (_ BitVec 32) List!26512))

(assert (=> mapNonEmpty!14756 (= mapRest!14753 (store mapRest!14756 mapKey!14756 mapValue!14756))))

(declare-fun tp!706164 () Bool)

(declare-fun b!2240592 () Bool)

(assert (=> b!2240592 (= e!1432547 (and (inv!35880 (_1!15428 (_1!15429 (h!31819 mapValue!14756)))) e!1432548 tp_is_empty!10239 setRes!20573 tp!706164))))

(declare-fun condSetEmpty!20573 () Bool)

(assert (=> b!2240592 (= condSetEmpty!20573 (= (_2!15429 (h!31819 mapValue!14756)) ((as const (Array Context!4114 Bool)) false)))))

(assert (= (and mapNonEmpty!14753 condMapEmpty!14756) mapIsEmpty!14756))

(assert (= (and mapNonEmpty!14753 (not condMapEmpty!14756)) mapNonEmpty!14756))

(assert (= b!2240592 b!2240591))

(assert (= (and b!2240592 condSetEmpty!20573) setIsEmpty!20573))

(assert (= (and b!2240592 (not condSetEmpty!20573)) setNonEmpty!20573))

(assert (= setNonEmpty!20573 b!2240588))

(assert (= (and mapNonEmpty!14756 ((_ is Cons!26418) mapValue!14756)) b!2240592))

(assert (= b!2240589 b!2240590))

(assert (= (and b!2240589 condSetEmpty!20574) setIsEmpty!20574))

(assert (= (and b!2240589 (not condSetEmpty!20574)) setNonEmpty!20574))

(assert (= setNonEmpty!20574 b!2240587))

(assert (= (and mapNonEmpty!14753 ((_ is Cons!26418) mapDefault!14756)) b!2240589))

(declare-fun m!2672934 () Bool)

(assert (=> b!2240592 m!2672934))

(declare-fun m!2672936 () Bool)

(assert (=> mapNonEmpty!14756 m!2672936))

(declare-fun m!2672938 () Bool)

(assert (=> setNonEmpty!20574 m!2672938))

(declare-fun m!2672940 () Bool)

(assert (=> setNonEmpty!20573 m!2672940))

(declare-fun m!2672942 () Bool)

(assert (=> b!2240589 m!2672942))

(declare-fun setRes!20575 () Bool)

(declare-fun e!1432549 () Bool)

(declare-fun setNonEmpty!20575 () Bool)

(declare-fun setElem!20575 () Context!4114)

(declare-fun tp!706173 () Bool)

(assert (=> setNonEmpty!20575 (= setRes!20575 (and tp!706173 (inv!35880 setElem!20575) e!1432549))))

(declare-fun setRest!20575 () (InoxSet Context!4114))

(assert (=> setNonEmpty!20575 (= (_2!15429 (h!31819 mapValue!14753)) ((_ map or) (store ((as const (Array Context!4114 Bool)) false) setElem!20575 true) setRest!20575))))

(declare-fun b!2240593 () Bool)

(declare-fun e!1432551 () Bool)

(declare-fun e!1432550 () Bool)

(declare-fun tp!706176 () Bool)

(assert (=> b!2240593 (= e!1432551 (and (inv!35880 (_1!15428 (_1!15429 (h!31819 mapValue!14753)))) e!1432550 tp_is_empty!10239 setRes!20575 tp!706176))))

(declare-fun condSetEmpty!20575 () Bool)

(assert (=> b!2240593 (= condSetEmpty!20575 (= (_2!15429 (h!31819 mapValue!14753)) ((as const (Array Context!4114 Bool)) false)))))

(declare-fun b!2240594 () Bool)

(declare-fun tp!706174 () Bool)

(assert (=> b!2240594 (= e!1432550 tp!706174)))

(declare-fun b!2240595 () Bool)

(declare-fun tp!706175 () Bool)

(assert (=> b!2240595 (= e!1432549 tp!706175)))

(assert (=> mapNonEmpty!14753 (= tp!706116 e!1432551)))

(declare-fun setIsEmpty!20575 () Bool)

(assert (=> setIsEmpty!20575 setRes!20575))

(assert (= b!2240593 b!2240594))

(assert (= (and b!2240593 condSetEmpty!20575) setIsEmpty!20575))

(assert (= (and b!2240593 (not condSetEmpty!20575)) setNonEmpty!20575))

(assert (= setNonEmpty!20575 b!2240595))

(assert (= (and mapNonEmpty!14753 ((_ is Cons!26418) mapValue!14753)) b!2240593))

(declare-fun m!2672944 () Bool)

(assert (=> setNonEmpty!20575 m!2672944))

(declare-fun m!2672946 () Bool)

(assert (=> b!2240593 m!2672946))

(check-sat (not d!665742) (not b!2240547) (not b!2240593) (not b!2240570) (not b!2240532) (not b!2240595) (not bm!135203) (not b!2240568) (not b!2240541) (not bm!135207) b_and!175063 (not setNonEmpty!20568) (not b!2240589) (not b!2240523) (not bm!135208) (not b!2240587) (not bm!135205) (not b!2240555) b_and!175061 (not b!2240519) (not d!665746) tp_is_empty!10239 (not b!2240539) (not b!2240569) (not b!2240590) (not b!2240567) (not b_next!65753) (not b!2240592) (not b!2240516) (not b!2240525) (not bm!135204) (not b!2240546) (not b!2240550) (not b!2240566) (not b!2240565) (not b!2240531) (not b!2240572) (not b!2240564) (not d!665750) (not b_next!65755) (not setNonEmpty!20566) (not b!2240591) (not setNonEmpty!20575) (not setNonEmpty!20567) (not b!2240588) (not setNonEmpty!20574) (not b!2240524) (not setNonEmpty!20573) (not bm!135206) (not b!2240571) (not mapNonEmpty!14756) (not b!2240594) (not d!665744) (not d!665736))
(check-sat b_and!175061 b_and!175063 (not b_next!65755) (not b_next!65753))

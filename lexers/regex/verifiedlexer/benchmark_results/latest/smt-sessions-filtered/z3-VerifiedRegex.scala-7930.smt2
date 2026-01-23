; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413028 () Bool)

(assert start!413028)

(declare-fun b!4301257 () Bool)

(declare-fun b_free!128123 () Bool)

(declare-fun b_next!128827 () Bool)

(assert (=> b!4301257 (= b_free!128123 (not b_next!128827))))

(declare-fun tp!1321630 () Bool)

(declare-fun b_and!339495 () Bool)

(assert (=> b!4301257 (= tp!1321630 b_and!339495)))

(declare-fun b!4301265 () Bool)

(declare-fun b_free!128125 () Bool)

(declare-fun b_next!128829 () Bool)

(assert (=> b!4301265 (= b_free!128125 (not b_next!128829))))

(declare-fun tp!1321624 () Bool)

(declare-fun b_and!339497 () Bool)

(assert (=> b!4301265 (= tp!1321624 b_and!339497)))

(declare-fun e!2673762 () Bool)

(declare-fun e!2673763 () Bool)

(declare-fun tp!1321629 () Bool)

(declare-fun tp!1321626 () Bool)

(declare-datatypes ((V!9301 0))(
  ( (V!9302 (val!15537 Int)) )
))
(declare-datatypes ((K!9099 0))(
  ( (K!9100 (val!15538 Int)) )
))
(declare-datatypes ((tuple2!45988 0))(
  ( (tuple2!45989 (_1!26273 K!9099) (_2!26273 V!9301)) )
))
(declare-datatypes ((List!48095 0))(
  ( (Nil!47971) (Cons!47971 (h!53391 tuple2!45988) (t!354858 List!48095)) )
))
(declare-datatypes ((array!16282 0))(
  ( (array!16283 (arr!7267 (Array (_ BitVec 32) (_ BitVec 64))) (size!35306 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4457 0))(
  ( (HashableExt!4456 (__x!29648 Int)) )
))
(declare-datatypes ((array!16284 0))(
  ( (array!16285 (arr!7268 (Array (_ BitVec 32) List!48095)) (size!35307 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9082 0))(
  ( (LongMapFixedSize!9083 (defaultEntry!4926 Int) (mask!13040 (_ BitVec 32)) (extraKeys!4790 (_ BitVec 32)) (zeroValue!4800 List!48095) (minValue!4800 List!48095) (_size!9125 (_ BitVec 32)) (_keys!4841 array!16282) (_values!4822 array!16284) (_vacant!4602 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17973 0))(
  ( (Cell!17974 (v!41957 LongMapFixedSize!9082)) )
))
(declare-datatypes ((MutLongMap!4541 0))(
  ( (LongMap!4541 (underlying!9311 Cell!17973)) (MutLongMapExt!4540 (__x!29649 Int)) )
))
(declare-datatypes ((Cell!17975 0))(
  ( (Cell!17976 (v!41958 MutLongMap!4541)) )
))
(declare-datatypes ((MutableMap!4447 0))(
  ( (MutableMapExt!4446 (__x!29650 Int)) (HashMap!4447 (underlying!9312 Cell!17975) (hashF!6489 Hashable!4457) (_size!9126 (_ BitVec 32)) (defaultValue!4618 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4447)

(declare-fun array_inv!5211 (array!16282) Bool)

(declare-fun array_inv!5212 (array!16284) Bool)

(assert (=> b!4301257 (= e!2673763 (and tp!1321630 tp!1321626 tp!1321629 (array_inv!5211 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (array_inv!5212 (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) e!2673762))))

(declare-fun b!4301258 () Bool)

(declare-fun tp!1321627 () Bool)

(declare-fun mapRes!20388 () Bool)

(assert (=> b!4301258 (= e!2673762 (and tp!1321627 mapRes!20388))))

(declare-fun condMapEmpty!20388 () Bool)

(declare-fun mapDefault!20388 () List!48095)

(assert (=> b!4301258 (= condMapEmpty!20388 (= (arr!7268 (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48095)) mapDefault!20388)))))

(declare-fun res!1762844 () Bool)

(declare-fun e!2673761 () Bool)

(assert (=> start!413028 (=> (not res!1762844) (not e!2673761))))

(get-info :version)

(assert (=> start!413028 (= res!1762844 ((_ is HashMap!4447) thiss!42308))))

(assert (=> start!413028 e!2673761))

(declare-fun e!2673758 () Bool)

(assert (=> start!413028 e!2673758))

(declare-fun tp_is_empty!23309 () Bool)

(assert (=> start!413028 tp_is_empty!23309))

(declare-fun b!4301259 () Bool)

(declare-fun e!2673759 () Bool)

(declare-fun e!2673764 () Bool)

(assert (=> b!4301259 (= e!2673759 e!2673764)))

(declare-fun b!4301260 () Bool)

(declare-fun e!2673760 () Bool)

(declare-fun lt!1523279 () MutLongMap!4541)

(assert (=> b!4301260 (= e!2673760 (and e!2673759 ((_ is LongMap!4541) lt!1523279)))))

(assert (=> b!4301260 (= lt!1523279 (v!41958 (underlying!9312 thiss!42308)))))

(declare-fun mapIsEmpty!20388 () Bool)

(assert (=> mapIsEmpty!20388 mapRes!20388))

(declare-fun b!4301261 () Bool)

(assert (=> b!4301261 (= e!2673764 e!2673763)))

(declare-fun b!4301262 () Bool)

(declare-fun res!1762846 () Bool)

(assert (=> b!4301262 (=> (not res!1762846) (not e!2673761))))

(declare-fun valid!3525 (MutableMap!4447) Bool)

(assert (=> b!4301262 (= res!1762846 (valid!3525 thiss!42308))))

(declare-fun mapNonEmpty!20388 () Bool)

(declare-fun tp!1321628 () Bool)

(declare-fun tp!1321625 () Bool)

(assert (=> mapNonEmpty!20388 (= mapRes!20388 (and tp!1321628 tp!1321625))))

(declare-fun mapRest!20388 () (Array (_ BitVec 32) List!48095))

(declare-fun mapValue!20388 () List!48095)

(declare-fun mapKey!20388 () (_ BitVec 32))

(assert (=> mapNonEmpty!20388 (= (arr!7268 (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (store mapRest!20388 mapKey!20388 mapValue!20388))))

(declare-fun b!4301263 () Bool)

(declare-fun e!2673756 () Bool)

(assert (=> b!4301263 (= e!2673761 e!2673756)))

(declare-fun res!1762845 () Bool)

(assert (=> b!4301263 (=> (not res!1762845) (not e!2673756))))

(declare-fun key!2048 () K!9099)

(declare-fun contains!9891 (MutableMap!4447 K!9099) Bool)

(assert (=> b!4301263 (= res!1762845 (contains!9891 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!45990 0))(
  ( (tuple2!45991 (_1!26274 (_ BitVec 64)) (_2!26274 List!48095)) )
))
(declare-datatypes ((List!48096 0))(
  ( (Nil!47972) (Cons!47972 (h!53392 tuple2!45990) (t!354859 List!48096)) )
))
(declare-datatypes ((ListLongMap!823 0))(
  ( (ListLongMap!824 (toList!2217 List!48096)) )
))
(declare-fun lt!1523278 () ListLongMap!823)

(declare-fun map!9930 (MutLongMap!4541) ListLongMap!823)

(assert (=> b!4301263 (= lt!1523278 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))

(declare-datatypes ((ListMap!1505 0))(
  ( (ListMap!1506 (toList!2218 List!48095)) )
))
(declare-fun lt!1523280 () ListMap!1505)

(declare-fun map!9931 (MutableMap!4447) ListMap!1505)

(assert (=> b!4301263 (= lt!1523280 (map!9931 thiss!42308))))

(declare-fun b!4301264 () Bool)

(declare-fun noDuplicateKeys!156 (List!48095) Bool)

(declare-fun apply!10883 (MutLongMap!4541 (_ BitVec 64)) List!48095)

(declare-fun hash!845 (Hashable!4457 K!9099) (_ BitVec 64))

(assert (=> b!4301264 (= e!2673756 (not (noDuplicateKeys!156 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))

(assert (=> b!4301265 (= e!2673758 (and e!2673760 tp!1321624))))

(assert (= (and start!413028 res!1762844) b!4301262))

(assert (= (and b!4301262 res!1762846) b!4301263))

(assert (= (and b!4301263 res!1762845) b!4301264))

(assert (= (and b!4301258 condMapEmpty!20388) mapIsEmpty!20388))

(assert (= (and b!4301258 (not condMapEmpty!20388)) mapNonEmpty!20388))

(assert (= b!4301257 b!4301258))

(assert (= b!4301261 b!4301257))

(assert (= b!4301259 b!4301261))

(assert (= (and b!4301260 ((_ is LongMap!4541) (v!41958 (underlying!9312 thiss!42308)))) b!4301259))

(assert (= b!4301265 b!4301260))

(assert (= (and start!413028 ((_ is HashMap!4447) thiss!42308)) b!4301265))

(declare-fun m!4893447 () Bool)

(assert (=> mapNonEmpty!20388 m!4893447))

(declare-fun m!4893449 () Bool)

(assert (=> b!4301264 m!4893449))

(assert (=> b!4301264 m!4893449))

(declare-fun m!4893451 () Bool)

(assert (=> b!4301264 m!4893451))

(assert (=> b!4301264 m!4893451))

(declare-fun m!4893453 () Bool)

(assert (=> b!4301264 m!4893453))

(declare-fun m!4893455 () Bool)

(assert (=> b!4301263 m!4893455))

(declare-fun m!4893457 () Bool)

(assert (=> b!4301263 m!4893457))

(declare-fun m!4893459 () Bool)

(assert (=> b!4301263 m!4893459))

(declare-fun m!4893461 () Bool)

(assert (=> b!4301262 m!4893461))

(declare-fun m!4893463 () Bool)

(assert (=> b!4301257 m!4893463))

(declare-fun m!4893465 () Bool)

(assert (=> b!4301257 m!4893465))

(check-sat b_and!339497 (not b!4301262) (not b!4301257) (not b_next!128827) (not b_next!128829) tp_is_empty!23309 (not b!4301258) b_and!339495 (not mapNonEmpty!20388) (not b!4301263) (not b!4301264))
(check-sat b_and!339495 b_and!339497 (not b_next!128829) (not b_next!128827))
(get-model)

(declare-fun d!1266755 () Bool)

(assert (=> d!1266755 (= (array_inv!5211 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (bvsge (size!35306 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4301257 d!1266755))

(declare-fun d!1266757 () Bool)

(assert (=> d!1266757 (= (array_inv!5212 (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (bvsge (size!35307 (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4301257 d!1266757))

(declare-fun d!1266759 () Bool)

(declare-fun res!1762851 () Bool)

(declare-fun e!2673767 () Bool)

(assert (=> d!1266759 (=> (not res!1762851) (not e!2673767))))

(declare-fun valid!3526 (MutLongMap!4541) Bool)

(assert (=> d!1266759 (= res!1762851 (valid!3526 (v!41958 (underlying!9312 thiss!42308))))))

(assert (=> d!1266759 (= (valid!3525 thiss!42308) e!2673767)))

(declare-fun b!4301270 () Bool)

(declare-fun res!1762852 () Bool)

(assert (=> b!4301270 (=> (not res!1762852) (not e!2673767))))

(declare-fun lambda!132040 () Int)

(declare-fun forall!8645 (List!48096 Int) Bool)

(assert (=> b!4301270 (= res!1762852 (forall!8645 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132040))))

(declare-fun b!4301271 () Bool)

(declare-fun allKeysSameHashInMap!278 (ListLongMap!823 Hashable!4457) Bool)

(assert (=> b!4301271 (= e!2673767 (allKeysSameHashInMap!278 (map!9930 (v!41958 (underlying!9312 thiss!42308))) (hashF!6489 thiss!42308)))))

(assert (= (and d!1266759 res!1762851) b!4301270))

(assert (= (and b!4301270 res!1762852) b!4301271))

(declare-fun m!4893467 () Bool)

(assert (=> d!1266759 m!4893467))

(assert (=> b!4301270 m!4893457))

(declare-fun m!4893469 () Bool)

(assert (=> b!4301270 m!4893469))

(assert (=> b!4301271 m!4893457))

(assert (=> b!4301271 m!4893457))

(declare-fun m!4893471 () Bool)

(assert (=> b!4301271 m!4893471))

(assert (=> b!4301262 d!1266759))

(declare-fun bs!604028 () Bool)

(declare-fun b!4301295 () Bool)

(assert (= bs!604028 (and b!4301295 b!4301270)))

(declare-fun lambda!132043 () Int)

(assert (=> bs!604028 (= lambda!132043 lambda!132040)))

(declare-fun d!1266761 () Bool)

(declare-fun lt!1523333 () Bool)

(declare-fun contains!9892 (ListMap!1505 K!9099) Bool)

(assert (=> d!1266761 (= lt!1523333 (contains!9892 (map!9931 thiss!42308) key!2048))))

(declare-fun e!2673788 () Bool)

(assert (=> d!1266761 (= lt!1523333 e!2673788)))

(declare-fun res!1762860 () Bool)

(assert (=> d!1266761 (=> (not res!1762860) (not e!2673788))))

(declare-fun lt!1523338 () (_ BitVec 64))

(declare-fun contains!9893 (MutLongMap!4541 (_ BitVec 64)) Bool)

(assert (=> d!1266761 (= res!1762860 (contains!9893 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))

(declare-datatypes ((Unit!66949 0))(
  ( (Unit!66950) )
))
(declare-fun lt!1523331 () Unit!66949)

(declare-fun e!2673784 () Unit!66949)

(assert (=> d!1266761 (= lt!1523331 e!2673784)))

(declare-fun c!731607 () Bool)

(declare-fun extractMap!278 (List!48096) ListMap!1505)

(assert (=> d!1266761 (= c!731607 (contains!9892 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) key!2048))))

(declare-fun lt!1523324 () Unit!66949)

(declare-fun e!2673787 () Unit!66949)

(assert (=> d!1266761 (= lt!1523324 e!2673787)))

(declare-fun c!731608 () Bool)

(assert (=> d!1266761 (= c!731608 (contains!9893 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))

(assert (=> d!1266761 (= lt!1523338 (hash!845 (hashF!6489 thiss!42308) key!2048))))

(assert (=> d!1266761 (valid!3525 thiss!42308)))

(assert (=> d!1266761 (= (contains!9891 thiss!42308 key!2048) lt!1523333)))

(declare-fun b!4301294 () Bool)

(declare-fun e!2673785 () Bool)

(declare-fun call!296625 () Bool)

(assert (=> b!4301294 (= e!2673785 call!296625)))

(declare-fun forallContained!1473 (List!48096 Int tuple2!45990) Unit!66949)

(assert (=> b!4301295 (= e!2673787 (forallContained!1473 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132043 (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))))

(declare-fun c!731609 () Bool)

(declare-fun contains!9894 (List!48096 tuple2!45990) Bool)

(assert (=> b!4301295 (= c!731609 (not (contains!9894 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338)))))))

(declare-fun lt!1523339 () Unit!66949)

(declare-fun e!2673783 () Unit!66949)

(assert (=> b!4301295 (= lt!1523339 e!2673783)))

(declare-fun b!4301296 () Bool)

(declare-fun e!2673782 () Unit!66949)

(declare-fun Unit!66951 () Unit!66949)

(assert (=> b!4301296 (= e!2673782 Unit!66951)))

(declare-fun bm!296618 () Bool)

(declare-datatypes ((Option!10170 0))(
  ( (None!10169) (Some!10169 (v!41959 tuple2!45988)) )
))
(declare-fun call!296628 () Option!10170)

(declare-fun call!296627 () List!48095)

(declare-fun getPair!111 (List!48095 K!9099) Option!10170)

(assert (=> bm!296618 (= call!296628 (getPair!111 call!296627 key!2048))))

(declare-fun bm!296619 () Bool)

(declare-fun isDefined!7479 (Option!10170) Bool)

(assert (=> bm!296619 (= call!296625 (isDefined!7479 call!296628))))

(declare-fun b!4301297 () Bool)

(assert (=> b!4301297 false))

(declare-fun lt!1523332 () Unit!66949)

(declare-fun lt!1523335 () Unit!66949)

(assert (=> b!4301297 (= lt!1523332 lt!1523335)))

(declare-fun lt!1523328 () ListLongMap!823)

(assert (=> b!4301297 (contains!9892 (extractMap!278 (toList!2217 lt!1523328)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!111 (ListLongMap!823 K!9099 Hashable!4457) Unit!66949)

(assert (=> b!4301297 (= lt!1523335 (lemmaInLongMapThenInGenericMap!111 lt!1523328 key!2048 (hashF!6489 thiss!42308)))))

(declare-fun call!296623 () ListLongMap!823)

(assert (=> b!4301297 (= lt!1523328 call!296623)))

(declare-fun Unit!66952 () Unit!66949)

(assert (=> b!4301297 (= e!2673782 Unit!66952)))

(declare-fun b!4301298 () Bool)

(assert (=> b!4301298 false))

(declare-fun lt!1523321 () Unit!66949)

(declare-fun lt!1523340 () Unit!66949)

(assert (=> b!4301298 (= lt!1523321 lt!1523340)))

(declare-fun lt!1523325 () List!48096)

(declare-fun lt!1523323 () List!48095)

(assert (=> b!4301298 (contains!9894 lt!1523325 (tuple2!45991 lt!1523338 lt!1523323))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!117 (List!48096 (_ BitVec 64) List!48095) Unit!66949)

(assert (=> b!4301298 (= lt!1523340 (lemmaGetValueByKeyImpliesContainsTuple!117 lt!1523325 lt!1523338 lt!1523323))))

(assert (=> b!4301298 (= lt!1523323 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))

(assert (=> b!4301298 (= lt!1523325 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))))

(declare-fun lt!1523330 () Unit!66949)

(declare-fun lt!1523329 () Unit!66949)

(assert (=> b!4301298 (= lt!1523330 lt!1523329)))

(declare-fun lt!1523327 () List!48096)

(declare-datatypes ((Option!10171 0))(
  ( (None!10170) (Some!10170 (v!41960 List!48095)) )
))
(declare-fun isDefined!7480 (Option!10171) Bool)

(declare-fun getValueByKey!218 (List!48096 (_ BitVec 64)) Option!10171)

(assert (=> b!4301298 (isDefined!7480 (getValueByKey!218 lt!1523327 lt!1523338))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!145 (List!48096 (_ BitVec 64)) Unit!66949)

(assert (=> b!4301298 (= lt!1523329 (lemmaContainsKeyImpliesGetValueByKeyDefined!145 lt!1523327 lt!1523338))))

(assert (=> b!4301298 (= lt!1523327 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))))

(declare-fun lt!1523336 () Unit!66949)

(declare-fun lt!1523334 () Unit!66949)

(assert (=> b!4301298 (= lt!1523336 lt!1523334)))

(declare-fun lt!1523326 () List!48096)

(declare-fun containsKey!243 (List!48096 (_ BitVec 64)) Bool)

(assert (=> b!4301298 (containsKey!243 lt!1523326 lt!1523338)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!112 (List!48096 (_ BitVec 64)) Unit!66949)

(assert (=> b!4301298 (= lt!1523334 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!112 lt!1523326 lt!1523338))))

(assert (=> b!4301298 (= lt!1523326 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))))

(declare-fun Unit!66953 () Unit!66949)

(assert (=> b!4301298 (= e!2673783 Unit!66953)))

(declare-fun b!4301299 () Bool)

(assert (=> b!4301299 (= e!2673784 e!2673782)))

(declare-fun res!1762861 () Bool)

(declare-fun call!296624 () Bool)

(assert (=> b!4301299 (= res!1762861 call!296624)))

(assert (=> b!4301299 (=> (not res!1762861) (not e!2673785))))

(declare-fun c!731606 () Bool)

(assert (=> b!4301299 (= c!731606 e!2673785)))

(declare-fun bm!296620 () Bool)

(declare-fun call!296626 () (_ BitVec 64))

(assert (=> bm!296620 (= call!296626 (hash!845 (hashF!6489 thiss!42308) key!2048))))

(declare-fun b!4301300 () Bool)

(declare-fun lt!1523337 () Unit!66949)

(assert (=> b!4301300 (= e!2673784 lt!1523337)))

(declare-fun lt!1523322 () ListLongMap!823)

(assert (=> b!4301300 (= lt!1523322 call!296623)))

(declare-fun lemmaInGenericMapThenInLongMap!111 (ListLongMap!823 K!9099 Hashable!4457) Unit!66949)

(assert (=> b!4301300 (= lt!1523337 (lemmaInGenericMapThenInLongMap!111 lt!1523322 key!2048 (hashF!6489 thiss!42308)))))

(declare-fun res!1762859 () Bool)

(assert (=> b!4301300 (= res!1762859 call!296624)))

(declare-fun e!2673786 () Bool)

(assert (=> b!4301300 (=> (not res!1762859) (not e!2673786))))

(assert (=> b!4301300 e!2673786))

(declare-fun b!4301301 () Bool)

(declare-fun Unit!66954 () Unit!66949)

(assert (=> b!4301301 (= e!2673783 Unit!66954)))

(declare-fun bm!296621 () Bool)

(declare-fun apply!10884 (ListLongMap!823 (_ BitVec 64)) List!48095)

(assert (=> bm!296621 (= call!296627 (apply!10884 (ite c!731607 lt!1523322 call!296623) call!296626))))

(declare-fun bm!296622 () Bool)

(declare-fun contains!9895 (ListLongMap!823 (_ BitVec 64)) Bool)

(assert (=> bm!296622 (= call!296624 (contains!9895 (ite c!731607 lt!1523322 call!296623) call!296626))))

(declare-fun b!4301302 () Bool)

(declare-fun Unit!66955 () Unit!66949)

(assert (=> b!4301302 (= e!2673787 Unit!66955)))

(declare-fun b!4301303 () Bool)

(assert (=> b!4301303 (= e!2673788 (isDefined!7479 (getPair!111 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) key!2048)))))

(declare-fun b!4301304 () Bool)

(assert (=> b!4301304 (= e!2673786 call!296625)))

(declare-fun bm!296623 () Bool)

(assert (=> bm!296623 (= call!296623 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))

(assert (= (and d!1266761 c!731608) b!4301295))

(assert (= (and d!1266761 (not c!731608)) b!4301302))

(assert (= (and b!4301295 c!731609) b!4301298))

(assert (= (and b!4301295 (not c!731609)) b!4301301))

(assert (= (and d!1266761 c!731607) b!4301300))

(assert (= (and d!1266761 (not c!731607)) b!4301299))

(assert (= (and b!4301300 res!1762859) b!4301304))

(assert (= (and b!4301299 res!1762861) b!4301294))

(assert (= (and b!4301299 c!731606) b!4301297))

(assert (= (and b!4301299 (not c!731606)) b!4301296))

(assert (= (or b!4301300 b!4301304 b!4301299 b!4301294) bm!296620))

(assert (= (or b!4301300 b!4301299 b!4301294 b!4301297) bm!296623))

(assert (= (or b!4301304 b!4301294) bm!296621))

(assert (= (or b!4301300 b!4301299) bm!296622))

(assert (= (or b!4301304 b!4301294) bm!296618))

(assert (= (or b!4301304 b!4301294) bm!296619))

(assert (= (and d!1266761 res!1762860) b!4301303))

(declare-fun m!4893473 () Bool)

(assert (=> b!4301298 m!4893473))

(declare-fun m!4893475 () Bool)

(assert (=> b!4301298 m!4893475))

(declare-fun m!4893477 () Bool)

(assert (=> b!4301298 m!4893477))

(declare-fun m!4893479 () Bool)

(assert (=> b!4301298 m!4893479))

(assert (=> b!4301298 m!4893473))

(declare-fun m!4893481 () Bool)

(assert (=> b!4301298 m!4893481))

(assert (=> b!4301298 m!4893457))

(declare-fun m!4893483 () Bool)

(assert (=> b!4301298 m!4893483))

(declare-fun m!4893485 () Bool)

(assert (=> b!4301298 m!4893485))

(declare-fun m!4893487 () Bool)

(assert (=> b!4301298 m!4893487))

(declare-fun m!4893489 () Bool)

(assert (=> bm!296621 m!4893489))

(declare-fun m!4893491 () Bool)

(assert (=> bm!296622 m!4893491))

(declare-fun m!4893493 () Bool)

(assert (=> b!4301300 m!4893493))

(declare-fun m!4893495 () Bool)

(assert (=> d!1266761 m!4893495))

(declare-fun m!4893497 () Bool)

(assert (=> d!1266761 m!4893497))

(assert (=> d!1266761 m!4893449))

(assert (=> d!1266761 m!4893495))

(declare-fun m!4893499 () Bool)

(assert (=> d!1266761 m!4893499))

(assert (=> d!1266761 m!4893461))

(assert (=> d!1266761 m!4893457))

(assert (=> d!1266761 m!4893459))

(assert (=> d!1266761 m!4893459))

(declare-fun m!4893501 () Bool)

(assert (=> d!1266761 m!4893501))

(declare-fun m!4893503 () Bool)

(assert (=> bm!296618 m!4893503))

(assert (=> b!4301295 m!4893457))

(assert (=> b!4301295 m!4893487))

(declare-fun m!4893505 () Bool)

(assert (=> b!4301295 m!4893505))

(declare-fun m!4893507 () Bool)

(assert (=> b!4301295 m!4893507))

(assert (=> bm!296623 m!4893457))

(assert (=> bm!296620 m!4893449))

(assert (=> b!4301303 m!4893487))

(assert (=> b!4301303 m!4893487))

(declare-fun m!4893509 () Bool)

(assert (=> b!4301303 m!4893509))

(assert (=> b!4301303 m!4893509))

(declare-fun m!4893511 () Bool)

(assert (=> b!4301303 m!4893511))

(declare-fun m!4893513 () Bool)

(assert (=> bm!296619 m!4893513))

(declare-fun m!4893515 () Bool)

(assert (=> b!4301297 m!4893515))

(assert (=> b!4301297 m!4893515))

(declare-fun m!4893517 () Bool)

(assert (=> b!4301297 m!4893517))

(declare-fun m!4893519 () Bool)

(assert (=> b!4301297 m!4893519))

(assert (=> b!4301263 d!1266761))

(declare-fun d!1266763 () Bool)

(declare-fun map!9932 (LongMapFixedSize!9082) ListLongMap!823)

(assert (=> d!1266763 (= (map!9930 (v!41958 (underlying!9312 thiss!42308))) (map!9932 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))))))

(declare-fun bs!604029 () Bool)

(assert (= bs!604029 d!1266763))

(declare-fun m!4893521 () Bool)

(assert (=> bs!604029 m!4893521))

(assert (=> b!4301263 d!1266763))

(declare-fun d!1266765 () Bool)

(declare-fun lt!1523343 () ListMap!1505)

(declare-fun invariantList!550 (List!48095) Bool)

(assert (=> d!1266765 (invariantList!550 (toList!2218 lt!1523343))))

(assert (=> d!1266765 (= lt!1523343 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))

(assert (=> d!1266765 (valid!3525 thiss!42308)))

(assert (=> d!1266765 (= (map!9931 thiss!42308) lt!1523343)))

(declare-fun bs!604030 () Bool)

(assert (= bs!604030 d!1266765))

(declare-fun m!4893523 () Bool)

(assert (=> bs!604030 m!4893523))

(assert (=> bs!604030 m!4893457))

(assert (=> bs!604030 m!4893495))

(assert (=> bs!604030 m!4893461))

(assert (=> b!4301263 d!1266765))

(declare-fun d!1266767 () Bool)

(declare-fun res!1762866 () Bool)

(declare-fun e!2673793 () Bool)

(assert (=> d!1266767 (=> res!1762866 e!2673793)))

(assert (=> d!1266767 (= res!1762866 (not ((_ is Cons!47971) (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))

(assert (=> d!1266767 (= (noDuplicateKeys!156 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))) e!2673793)))

(declare-fun b!4301309 () Bool)

(declare-fun e!2673794 () Bool)

(assert (=> b!4301309 (= e!2673793 e!2673794)))

(declare-fun res!1762867 () Bool)

(assert (=> b!4301309 (=> (not res!1762867) (not e!2673794))))

(declare-fun containsKey!244 (List!48095 K!9099) Bool)

(assert (=> b!4301309 (= res!1762867 (not (containsKey!244 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))) (_1!26273 (h!53391 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))))

(declare-fun b!4301310 () Bool)

(assert (=> b!4301310 (= e!2673794 (noDuplicateKeys!156 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))

(assert (= (and d!1266767 (not res!1762866)) b!4301309))

(assert (= (and b!4301309 res!1762867) b!4301310))

(declare-fun m!4893525 () Bool)

(assert (=> b!4301309 m!4893525))

(declare-fun m!4893527 () Bool)

(assert (=> b!4301310 m!4893527))

(assert (=> b!4301264 d!1266767))

(declare-fun d!1266769 () Bool)

(declare-fun e!2673797 () Bool)

(assert (=> d!1266769 e!2673797))

(declare-fun c!731612 () Bool)

(assert (=> d!1266769 (= c!731612 (contains!9893 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun lt!1523346 () List!48095)

(declare-fun apply!10885 (LongMapFixedSize!9082 (_ BitVec 64)) List!48095)

(assert (=> d!1266769 (= lt!1523346 (apply!10885 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(assert (=> d!1266769 (valid!3526 (v!41958 (underlying!9312 thiss!42308)))))

(assert (=> d!1266769 (= (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)) lt!1523346)))

(declare-fun b!4301315 () Bool)

(declare-fun get!15512 (Option!10171) List!48095)

(assert (=> b!4301315 (= e!2673797 (= lt!1523346 (get!15512 (getValueByKey!218 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))

(declare-fun b!4301316 () Bool)

(declare-fun dynLambda!20366 (Int (_ BitVec 64)) List!48095)

(assert (=> b!4301316 (= e!2673797 (= lt!1523346 (dynLambda!20366 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048))))))

(assert (=> b!4301316 ((_ is LongMap!4541) (v!41958 (underlying!9312 thiss!42308)))))

(assert (= (and d!1266769 c!731612) b!4301315))

(assert (= (and d!1266769 (not c!731612)) b!4301316))

(declare-fun b_lambda!126407 () Bool)

(assert (=> (not b_lambda!126407) (not b!4301316)))

(declare-fun t!354861 () Bool)

(declare-fun tb!257249 () Bool)

(assert (=> (and b!4301257 (= (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) t!354861) tb!257249))

(assert (=> b!4301316 t!354861))

(declare-fun result!314558 () Bool)

(declare-fun b_and!339499 () Bool)

(assert (= b_and!339495 (and (=> t!354861 result!314558) b_and!339499)))

(assert (=> d!1266769 m!4893449))

(declare-fun m!4893529 () Bool)

(assert (=> d!1266769 m!4893529))

(assert (=> d!1266769 m!4893449))

(declare-fun m!4893531 () Bool)

(assert (=> d!1266769 m!4893531))

(assert (=> d!1266769 m!4893467))

(assert (=> b!4301315 m!4893457))

(assert (=> b!4301315 m!4893449))

(declare-fun m!4893533 () Bool)

(assert (=> b!4301315 m!4893533))

(assert (=> b!4301315 m!4893533))

(declare-fun m!4893535 () Bool)

(assert (=> b!4301315 m!4893535))

(assert (=> b!4301316 m!4893449))

(declare-fun m!4893537 () Bool)

(assert (=> b!4301316 m!4893537))

(assert (=> b!4301264 d!1266769))

(declare-fun d!1266771 () Bool)

(declare-fun hash!846 (Hashable!4457 K!9099) (_ BitVec 64))

(assert (=> d!1266771 (= (hash!845 (hashF!6489 thiss!42308) key!2048) (hash!846 (hashF!6489 thiss!42308) key!2048))))

(declare-fun bs!604031 () Bool)

(assert (= bs!604031 d!1266771))

(declare-fun m!4893539 () Bool)

(assert (=> bs!604031 m!4893539))

(assert (=> b!4301264 d!1266771))

(declare-fun e!2673800 () Bool)

(declare-fun b!4301321 () Bool)

(declare-fun tp!1321633 () Bool)

(declare-fun tp_is_empty!23311 () Bool)

(assert (=> b!4301321 (= e!2673800 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321633))))

(assert (=> b!4301257 (= tp!1321626 e!2673800)))

(assert (= (and b!4301257 ((_ is Cons!47971) (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))))) b!4301321))

(declare-fun e!2673801 () Bool)

(declare-fun b!4301322 () Bool)

(declare-fun tp!1321634 () Bool)

(assert (=> b!4301322 (= e!2673801 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321634))))

(assert (=> b!4301257 (= tp!1321629 e!2673801)))

(assert (= (and b!4301257 ((_ is Cons!47971) (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))))) b!4301322))

(declare-fun tp!1321635 () Bool)

(declare-fun b!4301323 () Bool)

(declare-fun e!2673802 () Bool)

(assert (=> b!4301323 (= e!2673802 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321635))))

(assert (=> b!4301258 (= tp!1321627 e!2673802)))

(assert (= (and b!4301258 ((_ is Cons!47971) mapDefault!20388)) b!4301323))

(declare-fun mapIsEmpty!20391 () Bool)

(declare-fun mapRes!20391 () Bool)

(assert (=> mapIsEmpty!20391 mapRes!20391))

(declare-fun b!4301330 () Bool)

(declare-fun tp!1321643 () Bool)

(declare-fun e!2673808 () Bool)

(assert (=> b!4301330 (= e!2673808 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321643))))

(declare-fun mapNonEmpty!20391 () Bool)

(declare-fun tp!1321642 () Bool)

(assert (=> mapNonEmpty!20391 (= mapRes!20391 (and tp!1321642 e!2673808))))

(declare-fun mapKey!20391 () (_ BitVec 32))

(declare-fun mapRest!20391 () (Array (_ BitVec 32) List!48095))

(declare-fun mapValue!20391 () List!48095)

(assert (=> mapNonEmpty!20391 (= mapRest!20388 (store mapRest!20391 mapKey!20391 mapValue!20391))))

(declare-fun tp!1321644 () Bool)

(declare-fun e!2673807 () Bool)

(declare-fun b!4301331 () Bool)

(assert (=> b!4301331 (= e!2673807 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321644))))

(declare-fun condMapEmpty!20391 () Bool)

(declare-fun mapDefault!20391 () List!48095)

(assert (=> mapNonEmpty!20388 (= condMapEmpty!20391 (= mapRest!20388 ((as const (Array (_ BitVec 32) List!48095)) mapDefault!20391)))))

(assert (=> mapNonEmpty!20388 (= tp!1321628 (and e!2673807 mapRes!20391))))

(assert (= (and mapNonEmpty!20388 condMapEmpty!20391) mapIsEmpty!20391))

(assert (= (and mapNonEmpty!20388 (not condMapEmpty!20391)) mapNonEmpty!20391))

(assert (= (and mapNonEmpty!20391 ((_ is Cons!47971) mapValue!20391)) b!4301330))

(assert (= (and mapNonEmpty!20388 ((_ is Cons!47971) mapDefault!20391)) b!4301331))

(declare-fun m!4893541 () Bool)

(assert (=> mapNonEmpty!20391 m!4893541))

(declare-fun e!2673809 () Bool)

(declare-fun b!4301332 () Bool)

(declare-fun tp!1321645 () Bool)

(assert (=> b!4301332 (= e!2673809 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321645))))

(assert (=> mapNonEmpty!20388 (= tp!1321625 e!2673809)))

(assert (= (and mapNonEmpty!20388 ((_ is Cons!47971) mapValue!20388)) b!4301332))

(declare-fun b_lambda!126409 () Bool)

(assert (= b_lambda!126407 (or (and b!4301257 b_free!128123) b_lambda!126409)))

(check-sat tp_is_empty!23309 (not b!4301310) (not b!4301323) (not b!4301331) (not b!4301300) (not bm!296618) (not d!1266765) (not d!1266769) (not d!1266759) (not tb!257249) (not b!4301297) tp_is_empty!23311 (not b!4301298) (not b_next!128829) (not d!1266771) (not bm!296620) (not bm!296622) b_and!339497 (not b!4301332) (not b!4301295) (not b!4301330) (not b!4301270) (not b!4301271) (not mapNonEmpty!20391) (not b!4301309) (not d!1266761) (not bm!296621) (not b_next!128827) (not b!4301315) (not bm!296623) (not bm!296619) (not b!4301321) (not d!1266763) (not b!4301303) (not b_lambda!126409) b_and!339499 (not b!4301322))
(check-sat b_and!339499 b_and!339497 (not b_next!128829) (not b_next!128827))
(get-model)

(declare-fun d!1266773 () Bool)

(declare-fun res!1762872 () Bool)

(declare-fun e!2673814 () Bool)

(assert (=> d!1266773 (=> res!1762872 e!2673814)))

(assert (=> d!1266773 (= res!1762872 (and ((_ is Cons!47971) (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))) (= (_1!26273 (h!53391 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))))) (_1!26273 (h!53391 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))))

(assert (=> d!1266773 (= (containsKey!244 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))) (_1!26273 (h!53391 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))))) e!2673814)))

(declare-fun b!4301337 () Bool)

(declare-fun e!2673815 () Bool)

(assert (=> b!4301337 (= e!2673814 e!2673815)))

(declare-fun res!1762873 () Bool)

(assert (=> b!4301337 (=> (not res!1762873) (not e!2673815))))

(assert (=> b!4301337 (= res!1762873 ((_ is Cons!47971) (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))

(declare-fun b!4301338 () Bool)

(assert (=> b!4301338 (= e!2673815 (containsKey!244 (t!354858 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))) (_1!26273 (h!53391 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))))))))

(assert (= (and d!1266773 (not res!1762872)) b!4301337))

(assert (= (and b!4301337 res!1762873) b!4301338))

(declare-fun m!4893543 () Bool)

(assert (=> b!4301338 m!4893543))

(assert (=> b!4301309 d!1266773))

(declare-fun d!1266775 () Bool)

(assert (=> d!1266775 (= (apply!10884 (ite c!731607 lt!1523322 call!296623) call!296626) (get!15512 (getValueByKey!218 (toList!2217 (ite c!731607 lt!1523322 call!296623)) call!296626)))))

(declare-fun bs!604032 () Bool)

(assert (= bs!604032 d!1266775))

(declare-fun m!4893545 () Bool)

(assert (=> bs!604032 m!4893545))

(assert (=> bs!604032 m!4893545))

(declare-fun m!4893547 () Bool)

(assert (=> bs!604032 m!4893547))

(assert (=> bm!296621 d!1266775))

(declare-fun d!1266777 () Bool)

(declare-fun dynLambda!20367 (Int tuple2!45990) Bool)

(assert (=> d!1266777 (dynLambda!20367 lambda!132043 (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338)))))

(declare-fun lt!1523349 () Unit!66949)

(declare-fun choose!26174 (List!48096 Int tuple2!45990) Unit!66949)

(assert (=> d!1266777 (= lt!1523349 (choose!26174 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132043 (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))))

(declare-fun e!2673818 () Bool)

(assert (=> d!1266777 e!2673818))

(declare-fun res!1762876 () Bool)

(assert (=> d!1266777 (=> (not res!1762876) (not e!2673818))))

(assert (=> d!1266777 (= res!1762876 (forall!8645 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132043))))

(assert (=> d!1266777 (= (forallContained!1473 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132043 (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))) lt!1523349)))

(declare-fun b!4301341 () Bool)

(assert (=> b!4301341 (= e!2673818 (contains!9894 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))))

(assert (= (and d!1266777 res!1762876) b!4301341))

(declare-fun b_lambda!126411 () Bool)

(assert (=> (not b_lambda!126411) (not d!1266777)))

(declare-fun m!4893549 () Bool)

(assert (=> d!1266777 m!4893549))

(declare-fun m!4893551 () Bool)

(assert (=> d!1266777 m!4893551))

(declare-fun m!4893553 () Bool)

(assert (=> d!1266777 m!4893553))

(assert (=> b!4301341 m!4893507))

(assert (=> b!4301295 d!1266777))

(assert (=> b!4301295 d!1266763))

(declare-fun d!1266779 () Bool)

(declare-fun e!2673819 () Bool)

(assert (=> d!1266779 e!2673819))

(declare-fun c!731613 () Bool)

(assert (=> d!1266779 (= c!731613 (contains!9893 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))

(declare-fun lt!1523350 () List!48095)

(assert (=> d!1266779 (= lt!1523350 (apply!10885 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))) lt!1523338))))

(assert (=> d!1266779 (valid!3526 (v!41958 (underlying!9312 thiss!42308)))))

(assert (=> d!1266779 (= (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) lt!1523350)))

(declare-fun b!4301342 () Bool)

(assert (=> b!4301342 (= e!2673819 (= lt!1523350 (get!15512 (getValueByKey!218 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lt!1523338))))))

(declare-fun b!4301343 () Bool)

(assert (=> b!4301343 (= e!2673819 (= lt!1523350 (dynLambda!20366 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) lt!1523338)))))

(assert (=> b!4301343 ((_ is LongMap!4541) (v!41958 (underlying!9312 thiss!42308)))))

(assert (= (and d!1266779 c!731613) b!4301342))

(assert (= (and d!1266779 (not c!731613)) b!4301343))

(declare-fun b_lambda!126413 () Bool)

(assert (=> (not b_lambda!126413) (not b!4301343)))

(declare-fun t!354863 () Bool)

(declare-fun tb!257251 () Bool)

(assert (=> (and b!4301257 (= (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) t!354863) tb!257251))

(assert (=> b!4301343 t!354863))

(declare-fun result!314564 () Bool)

(declare-fun b_and!339501 () Bool)

(assert (= b_and!339499 (and (=> t!354863 result!314564) b_and!339501)))

(assert (=> d!1266779 m!4893497))

(declare-fun m!4893555 () Bool)

(assert (=> d!1266779 m!4893555))

(assert (=> d!1266779 m!4893467))

(assert (=> b!4301342 m!4893457))

(declare-fun m!4893557 () Bool)

(assert (=> b!4301342 m!4893557))

(assert (=> b!4301342 m!4893557))

(declare-fun m!4893559 () Bool)

(assert (=> b!4301342 m!4893559))

(declare-fun m!4893561 () Bool)

(assert (=> b!4301343 m!4893561))

(assert (=> b!4301295 d!1266779))

(declare-fun d!1266781 () Bool)

(declare-fun lt!1523353 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7540 (List!48096) (InoxSet tuple2!45990))

(assert (=> d!1266781 (= lt!1523353 (select (content!7540 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))))

(declare-fun e!2673824 () Bool)

(assert (=> d!1266781 (= lt!1523353 e!2673824)))

(declare-fun res!1762882 () Bool)

(assert (=> d!1266781 (=> (not res!1762882) (not e!2673824))))

(assert (=> d!1266781 (= res!1762882 ((_ is Cons!47972) (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))

(assert (=> d!1266781 (= (contains!9894 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))) lt!1523353)))

(declare-fun b!4301348 () Bool)

(declare-fun e!2673825 () Bool)

(assert (=> b!4301348 (= e!2673824 e!2673825)))

(declare-fun res!1762881 () Bool)

(assert (=> b!4301348 (=> res!1762881 e!2673825)))

(assert (=> b!4301348 (= res!1762881 (= (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))))

(declare-fun b!4301349 () Bool)

(assert (=> b!4301349 (= e!2673825 (contains!9894 (t!354859 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))))

(assert (= (and d!1266781 res!1762882) b!4301348))

(assert (= (and b!4301348 (not res!1762881)) b!4301349))

(declare-fun m!4893563 () Bool)

(assert (=> d!1266781 m!4893563))

(declare-fun m!4893565 () Bool)

(assert (=> d!1266781 m!4893565))

(declare-fun m!4893567 () Bool)

(assert (=> b!4301349 m!4893567))

(assert (=> b!4301295 d!1266781))

(declare-fun d!1266783 () Bool)

(declare-fun res!1762883 () Bool)

(declare-fun e!2673826 () Bool)

(assert (=> d!1266783 (=> res!1762883 e!2673826)))

(assert (=> d!1266783 (= res!1762883 (not ((_ is Cons!47971) (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))))))))

(assert (=> d!1266783 (= (noDuplicateKeys!156 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))) e!2673826)))

(declare-fun b!4301350 () Bool)

(declare-fun e!2673827 () Bool)

(assert (=> b!4301350 (= e!2673826 e!2673827)))

(declare-fun res!1762884 () Bool)

(assert (=> b!4301350 (=> (not res!1762884) (not e!2673827))))

(assert (=> b!4301350 (= res!1762884 (not (containsKey!244 (t!354858 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)))) (_1!26273 (h!53391 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))))))))))

(declare-fun b!4301351 () Bool)

(assert (=> b!4301351 (= e!2673827 (noDuplicateKeys!156 (t!354858 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048))))))))

(assert (= (and d!1266783 (not res!1762883)) b!4301350))

(assert (= (and b!4301350 res!1762884) b!4301351))

(declare-fun m!4893569 () Bool)

(assert (=> b!4301350 m!4893569))

(declare-fun m!4893571 () Bool)

(assert (=> b!4301351 m!4893571))

(assert (=> b!4301310 d!1266783))

(declare-fun d!1266785 () Bool)

(declare-fun e!2673833 () Bool)

(assert (=> d!1266785 e!2673833))

(declare-fun res!1762887 () Bool)

(assert (=> d!1266785 (=> res!1762887 e!2673833)))

(declare-fun lt!1523364 () Bool)

(assert (=> d!1266785 (= res!1762887 (not lt!1523364))))

(declare-fun lt!1523363 () Bool)

(assert (=> d!1266785 (= lt!1523364 lt!1523363)))

(declare-fun lt!1523365 () Unit!66949)

(declare-fun e!2673832 () Unit!66949)

(assert (=> d!1266785 (= lt!1523365 e!2673832)))

(declare-fun c!731616 () Bool)

(assert (=> d!1266785 (= c!731616 lt!1523363)))

(assert (=> d!1266785 (= lt!1523363 (containsKey!243 (toList!2217 (ite c!731607 lt!1523322 call!296623)) call!296626))))

(assert (=> d!1266785 (= (contains!9895 (ite c!731607 lt!1523322 call!296623) call!296626) lt!1523364)))

(declare-fun b!4301358 () Bool)

(declare-fun lt!1523362 () Unit!66949)

(assert (=> b!4301358 (= e!2673832 lt!1523362)))

(assert (=> b!4301358 (= lt!1523362 (lemmaContainsKeyImpliesGetValueByKeyDefined!145 (toList!2217 (ite c!731607 lt!1523322 call!296623)) call!296626))))

(assert (=> b!4301358 (isDefined!7480 (getValueByKey!218 (toList!2217 (ite c!731607 lt!1523322 call!296623)) call!296626))))

(declare-fun b!4301359 () Bool)

(declare-fun Unit!66956 () Unit!66949)

(assert (=> b!4301359 (= e!2673832 Unit!66956)))

(declare-fun b!4301360 () Bool)

(assert (=> b!4301360 (= e!2673833 (isDefined!7480 (getValueByKey!218 (toList!2217 (ite c!731607 lt!1523322 call!296623)) call!296626)))))

(assert (= (and d!1266785 c!731616) b!4301358))

(assert (= (and d!1266785 (not c!731616)) b!4301359))

(assert (= (and d!1266785 (not res!1762887)) b!4301360))

(declare-fun m!4893573 () Bool)

(assert (=> d!1266785 m!4893573))

(declare-fun m!4893575 () Bool)

(assert (=> b!4301358 m!4893575))

(assert (=> b!4301358 m!4893545))

(assert (=> b!4301358 m!4893545))

(declare-fun m!4893577 () Bool)

(assert (=> b!4301358 m!4893577))

(assert (=> b!4301360 m!4893545))

(assert (=> b!4301360 m!4893545))

(assert (=> b!4301360 m!4893577))

(assert (=> bm!296622 d!1266785))

(declare-fun d!1266787 () Bool)

(declare-fun noDuplicatedKeys!95 (List!48095) Bool)

(assert (=> d!1266787 (= (invariantList!550 (toList!2218 lt!1523343)) (noDuplicatedKeys!95 (toList!2218 lt!1523343)))))

(declare-fun bs!604033 () Bool)

(assert (= bs!604033 d!1266787))

(declare-fun m!4893579 () Bool)

(assert (=> bs!604033 m!4893579))

(assert (=> d!1266765 d!1266787))

(declare-fun bs!604034 () Bool)

(declare-fun d!1266789 () Bool)

(assert (= bs!604034 (and d!1266789 b!4301270)))

(declare-fun lambda!132046 () Int)

(assert (=> bs!604034 (= lambda!132046 lambda!132040)))

(declare-fun bs!604035 () Bool)

(assert (= bs!604035 (and d!1266789 b!4301295)))

(assert (=> bs!604035 (= lambda!132046 lambda!132043)))

(declare-fun lt!1523368 () ListMap!1505)

(assert (=> d!1266789 (invariantList!550 (toList!2218 lt!1523368))))

(declare-fun e!2673836 () ListMap!1505)

(assert (=> d!1266789 (= lt!1523368 e!2673836)))

(declare-fun c!731619 () Bool)

(assert (=> d!1266789 (= c!731619 ((_ is Cons!47972) (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))

(assert (=> d!1266789 (forall!8645 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132046)))

(assert (=> d!1266789 (= (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) lt!1523368)))

(declare-fun b!4301365 () Bool)

(declare-fun addToMapMapFromBucket!23 (List!48095 ListMap!1505) ListMap!1505)

(assert (=> b!4301365 (= e!2673836 (addToMapMapFromBucket!23 (_2!26274 (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) (extractMap!278 (t!354859 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))))

(declare-fun b!4301366 () Bool)

(assert (=> b!4301366 (= e!2673836 (ListMap!1506 Nil!47971))))

(assert (= (and d!1266789 c!731619) b!4301365))

(assert (= (and d!1266789 (not c!731619)) b!4301366))

(declare-fun m!4893581 () Bool)

(assert (=> d!1266789 m!4893581))

(declare-fun m!4893583 () Bool)

(assert (=> d!1266789 m!4893583))

(declare-fun m!4893585 () Bool)

(assert (=> b!4301365 m!4893585))

(assert (=> b!4301365 m!4893585))

(declare-fun m!4893587 () Bool)

(assert (=> b!4301365 m!4893587))

(assert (=> d!1266765 d!1266789))

(assert (=> d!1266765 d!1266763))

(assert (=> d!1266765 d!1266759))

(declare-fun d!1266791 () Bool)

(declare-fun e!2673849 () Bool)

(assert (=> d!1266791 e!2673849))

(declare-fun res!1762896 () Bool)

(assert (=> d!1266791 (=> res!1762896 e!2673849)))

(declare-fun e!2673848 () Bool)

(assert (=> d!1266791 (= res!1762896 e!2673848)))

(declare-fun res!1762899 () Bool)

(assert (=> d!1266791 (=> (not res!1762899) (not e!2673848))))

(declare-fun lt!1523371 () Option!10170)

(declare-fun isEmpty!28052 (Option!10170) Bool)

(assert (=> d!1266791 (= res!1762899 (isEmpty!28052 lt!1523371))))

(declare-fun e!2673850 () Option!10170)

(assert (=> d!1266791 (= lt!1523371 e!2673850)))

(declare-fun c!731625 () Bool)

(assert (=> d!1266791 (= c!731625 (and ((_ is Cons!47971) call!296627) (= (_1!26273 (h!53391 call!296627)) key!2048)))))

(assert (=> d!1266791 (noDuplicateKeys!156 call!296627)))

(assert (=> d!1266791 (= (getPair!111 call!296627 key!2048) lt!1523371)))

(declare-fun b!4301383 () Bool)

(declare-fun e!2673851 () Option!10170)

(assert (=> b!4301383 (= e!2673851 None!10169)))

(declare-fun b!4301384 () Bool)

(declare-fun res!1762897 () Bool)

(declare-fun e!2673847 () Bool)

(assert (=> b!4301384 (=> (not res!1762897) (not e!2673847))))

(declare-fun get!15513 (Option!10170) tuple2!45988)

(assert (=> b!4301384 (= res!1762897 (= (_1!26273 (get!15513 lt!1523371)) key!2048))))

(declare-fun b!4301385 () Bool)

(assert (=> b!4301385 (= e!2673848 (not (containsKey!244 call!296627 key!2048)))))

(declare-fun b!4301386 () Bool)

(assert (=> b!4301386 (= e!2673850 (Some!10169 (h!53391 call!296627)))))

(declare-fun b!4301387 () Bool)

(assert (=> b!4301387 (= e!2673850 e!2673851)))

(declare-fun c!731624 () Bool)

(assert (=> b!4301387 (= c!731624 ((_ is Cons!47971) call!296627))))

(declare-fun b!4301388 () Bool)

(assert (=> b!4301388 (= e!2673849 e!2673847)))

(declare-fun res!1762898 () Bool)

(assert (=> b!4301388 (=> (not res!1762898) (not e!2673847))))

(assert (=> b!4301388 (= res!1762898 (isDefined!7479 lt!1523371))))

(declare-fun b!4301389 () Bool)

(assert (=> b!4301389 (= e!2673851 (getPair!111 (t!354858 call!296627) key!2048))))

(declare-fun b!4301390 () Bool)

(declare-fun contains!9896 (List!48095 tuple2!45988) Bool)

(assert (=> b!4301390 (= e!2673847 (contains!9896 call!296627 (get!15513 lt!1523371)))))

(assert (= (and d!1266791 c!731625) b!4301386))

(assert (= (and d!1266791 (not c!731625)) b!4301387))

(assert (= (and b!4301387 c!731624) b!4301389))

(assert (= (and b!4301387 (not c!731624)) b!4301383))

(assert (= (and d!1266791 res!1762899) b!4301385))

(assert (= (and d!1266791 (not res!1762896)) b!4301388))

(assert (= (and b!4301388 res!1762898) b!4301384))

(assert (= (and b!4301384 res!1762897) b!4301390))

(declare-fun m!4893589 () Bool)

(assert (=> b!4301390 m!4893589))

(assert (=> b!4301390 m!4893589))

(declare-fun m!4893591 () Bool)

(assert (=> b!4301390 m!4893591))

(assert (=> b!4301384 m!4893589))

(declare-fun m!4893593 () Bool)

(assert (=> d!1266791 m!4893593))

(declare-fun m!4893595 () Bool)

(assert (=> d!1266791 m!4893595))

(declare-fun m!4893597 () Bool)

(assert (=> b!4301385 m!4893597))

(declare-fun m!4893599 () Bool)

(assert (=> b!4301389 m!4893599))

(declare-fun m!4893601 () Bool)

(assert (=> b!4301388 m!4893601))

(assert (=> bm!296618 d!1266791))

(declare-fun d!1266793 () Bool)

(assert (=> d!1266793 (= (isDefined!7479 (getPair!111 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) key!2048)) (not (isEmpty!28052 (getPair!111 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) key!2048))))))

(declare-fun bs!604036 () Bool)

(assert (= bs!604036 d!1266793))

(assert (=> bs!604036 m!4893509))

(declare-fun m!4893603 () Bool)

(assert (=> bs!604036 m!4893603))

(assert (=> b!4301303 d!1266793))

(declare-fun d!1266795 () Bool)

(declare-fun e!2673854 () Bool)

(assert (=> d!1266795 e!2673854))

(declare-fun res!1762900 () Bool)

(assert (=> d!1266795 (=> res!1762900 e!2673854)))

(declare-fun e!2673853 () Bool)

(assert (=> d!1266795 (= res!1762900 e!2673853)))

(declare-fun res!1762903 () Bool)

(assert (=> d!1266795 (=> (not res!1762903) (not e!2673853))))

(declare-fun lt!1523372 () Option!10170)

(assert (=> d!1266795 (= res!1762903 (isEmpty!28052 lt!1523372))))

(declare-fun e!2673855 () Option!10170)

(assert (=> d!1266795 (= lt!1523372 e!2673855)))

(declare-fun c!731627 () Bool)

(assert (=> d!1266795 (= c!731627 (and ((_ is Cons!47971) (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338)) (= (_1!26273 (h!53391 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))) key!2048)))))

(assert (=> d!1266795 (noDuplicateKeys!156 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))

(assert (=> d!1266795 (= (getPair!111 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) key!2048) lt!1523372)))

(declare-fun b!4301391 () Bool)

(declare-fun e!2673856 () Option!10170)

(assert (=> b!4301391 (= e!2673856 None!10169)))

(declare-fun b!4301392 () Bool)

(declare-fun res!1762901 () Bool)

(declare-fun e!2673852 () Bool)

(assert (=> b!4301392 (=> (not res!1762901) (not e!2673852))))

(assert (=> b!4301392 (= res!1762901 (= (_1!26273 (get!15513 lt!1523372)) key!2048))))

(declare-fun b!4301393 () Bool)

(assert (=> b!4301393 (= e!2673853 (not (containsKey!244 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) key!2048)))))

(declare-fun b!4301394 () Bool)

(assert (=> b!4301394 (= e!2673855 (Some!10169 (h!53391 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))))))

(declare-fun b!4301395 () Bool)

(assert (=> b!4301395 (= e!2673855 e!2673856)))

(declare-fun c!731626 () Bool)

(assert (=> b!4301395 (= c!731626 ((_ is Cons!47971) (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338)))))

(declare-fun b!4301396 () Bool)

(assert (=> b!4301396 (= e!2673854 e!2673852)))

(declare-fun res!1762902 () Bool)

(assert (=> b!4301396 (=> (not res!1762902) (not e!2673852))))

(assert (=> b!4301396 (= res!1762902 (isDefined!7479 lt!1523372))))

(declare-fun b!4301397 () Bool)

(assert (=> b!4301397 (= e!2673856 (getPair!111 (t!354858 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338)) key!2048))))

(declare-fun b!4301398 () Bool)

(assert (=> b!4301398 (= e!2673852 (contains!9896 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) (get!15513 lt!1523372)))))

(assert (= (and d!1266795 c!731627) b!4301394))

(assert (= (and d!1266795 (not c!731627)) b!4301395))

(assert (= (and b!4301395 c!731626) b!4301397))

(assert (= (and b!4301395 (not c!731626)) b!4301391))

(assert (= (and d!1266795 res!1762903) b!4301393))

(assert (= (and d!1266795 (not res!1762900)) b!4301396))

(assert (= (and b!4301396 res!1762902) b!4301392))

(assert (= (and b!4301392 res!1762901) b!4301398))

(declare-fun m!4893605 () Bool)

(assert (=> b!4301398 m!4893605))

(assert (=> b!4301398 m!4893487))

(assert (=> b!4301398 m!4893605))

(declare-fun m!4893607 () Bool)

(assert (=> b!4301398 m!4893607))

(assert (=> b!4301392 m!4893605))

(declare-fun m!4893609 () Bool)

(assert (=> d!1266795 m!4893609))

(assert (=> d!1266795 m!4893487))

(declare-fun m!4893611 () Bool)

(assert (=> d!1266795 m!4893611))

(assert (=> b!4301393 m!4893487))

(declare-fun m!4893613 () Bool)

(assert (=> b!4301393 m!4893613))

(declare-fun m!4893615 () Bool)

(assert (=> b!4301397 m!4893615))

(declare-fun m!4893617 () Bool)

(assert (=> b!4301396 m!4893617))

(assert (=> b!4301303 d!1266795))

(assert (=> b!4301303 d!1266779))

(declare-fun d!1266797 () Bool)

(assert (=> d!1266797 (= (get!15512 (getValueByKey!218 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048))) (v!41960 (getValueByKey!218 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048))))))

(assert (=> b!4301315 d!1266797))

(declare-fun d!1266799 () Bool)

(declare-fun c!731632 () Bool)

(assert (=> d!1266799 (= c!731632 (and ((_ is Cons!47972) (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) (= (_1!26274 (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) (hash!845 (hashF!6489 thiss!42308) key!2048))))))

(declare-fun e!2673861 () Option!10171)

(assert (=> d!1266799 (= (getValueByKey!218 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048)) e!2673861)))

(declare-fun b!4301410 () Bool)

(declare-fun e!2673862 () Option!10171)

(assert (=> b!4301410 (= e!2673862 None!10170)))

(declare-fun b!4301407 () Bool)

(assert (=> b!4301407 (= e!2673861 (Some!10170 (_2!26274 (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))))

(declare-fun b!4301408 () Bool)

(assert (=> b!4301408 (= e!2673861 e!2673862)))

(declare-fun c!731633 () Bool)

(assert (=> b!4301408 (= c!731633 (and ((_ is Cons!47972) (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) (not (= (_1!26274 (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))

(declare-fun b!4301409 () Bool)

(assert (=> b!4301409 (= e!2673862 (getValueByKey!218 (t!354859 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(assert (= (and d!1266799 c!731632) b!4301407))

(assert (= (and d!1266799 (not c!731632)) b!4301408))

(assert (= (and b!4301408 c!731633) b!4301409))

(assert (= (and b!4301408 (not c!731633)) b!4301410))

(assert (=> b!4301409 m!4893449))

(declare-fun m!4893619 () Bool)

(assert (=> b!4301409 m!4893619))

(assert (=> b!4301315 d!1266799))

(assert (=> b!4301315 d!1266763))

(declare-fun d!1266801 () Bool)

(assert (=> d!1266801 (= (isDefined!7479 call!296628) (not (isEmpty!28052 call!296628)))))

(declare-fun bs!604037 () Bool)

(assert (= bs!604037 d!1266801))

(declare-fun m!4893621 () Bool)

(assert (=> bs!604037 m!4893621))

(assert (=> bm!296619 d!1266801))

(declare-fun d!1266803 () Bool)

(declare-fun getCurrentListMap!16 (array!16282 array!16284 (_ BitVec 32) (_ BitVec 32) List!48095 List!48095 (_ BitVec 32) Int) ListLongMap!823)

(assert (=> d!1266803 (= (map!9932 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (getCurrentListMap!16 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun bs!604038 () Bool)

(assert (= bs!604038 d!1266803))

(declare-fun m!4893623 () Bool)

(assert (=> bs!604038 m!4893623))

(assert (=> d!1266763 d!1266803))

(declare-fun d!1266805 () Bool)

(declare-fun valid!3527 (LongMapFixedSize!9082) Bool)

(assert (=> d!1266805 (= (valid!3526 (v!41958 (underlying!9312 thiss!42308))) (valid!3527 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))))))

(declare-fun bs!604039 () Bool)

(assert (= bs!604039 d!1266805))

(declare-fun m!4893625 () Bool)

(assert (=> bs!604039 m!4893625))

(assert (=> d!1266759 d!1266805))

(declare-fun b!4301429 () Bool)

(declare-fun e!2673879 () Unit!66949)

(declare-fun lt!1523392 () Unit!66949)

(assert (=> b!4301429 (= e!2673879 lt!1523392)))

(declare-fun lt!1523389 () Unit!66949)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!146 (List!48095 K!9099) Unit!66949)

(assert (=> b!4301429 (= lt!1523389 (lemmaContainsKeyImpliesGetValueByKeyDefined!146 (toList!2218 (extractMap!278 (toList!2217 lt!1523328))) key!2048))))

(declare-datatypes ((Option!10172 0))(
  ( (None!10171) (Some!10171 (v!41963 V!9301)) )
))
(declare-fun isDefined!7481 (Option!10172) Bool)

(declare-fun getValueByKey!219 (List!48095 K!9099) Option!10172)

(assert (=> b!4301429 (isDefined!7481 (getValueByKey!219 (toList!2218 (extractMap!278 (toList!2217 lt!1523328))) key!2048))))

(declare-fun lt!1523390 () Unit!66949)

(assert (=> b!4301429 (= lt!1523390 lt!1523389)))

(declare-fun lemmaInListThenGetKeysListContains!33 (List!48095 K!9099) Unit!66949)

(assert (=> b!4301429 (= lt!1523392 (lemmaInListThenGetKeysListContains!33 (toList!2218 (extractMap!278 (toList!2217 lt!1523328))) key!2048))))

(declare-fun call!296631 () Bool)

(assert (=> b!4301429 call!296631))

(declare-fun b!4301430 () Bool)

(declare-fun e!2673877 () Unit!66949)

(assert (=> b!4301430 (= e!2673879 e!2673877)))

(declare-fun c!731642 () Bool)

(assert (=> b!4301430 (= c!731642 call!296631)))

(declare-fun b!4301431 () Bool)

(declare-fun Unit!66957 () Unit!66949)

(assert (=> b!4301431 (= e!2673877 Unit!66957)))

(declare-fun b!4301432 () Bool)

(declare-fun e!2673878 () Bool)

(declare-datatypes ((List!48097 0))(
  ( (Nil!47973) (Cons!47973 (h!53393 K!9099) (t!354864 List!48097)) )
))
(declare-fun contains!9897 (List!48097 K!9099) Bool)

(declare-fun keys!15941 (ListMap!1505) List!48097)

(assert (=> b!4301432 (= e!2673878 (contains!9897 (keys!15941 (extractMap!278 (toList!2217 lt!1523328))) key!2048))))

(declare-fun bm!296626 () Bool)

(declare-fun e!2673876 () List!48097)

(assert (=> bm!296626 (= call!296631 (contains!9897 e!2673876 key!2048))))

(declare-fun c!731641 () Bool)

(declare-fun c!731640 () Bool)

(assert (=> bm!296626 (= c!731641 c!731640)))

(declare-fun b!4301433 () Bool)

(declare-fun e!2673880 () Bool)

(assert (=> b!4301433 (= e!2673880 (not (contains!9897 (keys!15941 (extractMap!278 (toList!2217 lt!1523328))) key!2048)))))

(declare-fun b!4301434 () Bool)

(assert (=> b!4301434 (= e!2673876 (keys!15941 (extractMap!278 (toList!2217 lt!1523328))))))

(declare-fun b!4301436 () Bool)

(assert (=> b!4301436 false))

(declare-fun lt!1523391 () Unit!66949)

(declare-fun lt!1523395 () Unit!66949)

(assert (=> b!4301436 (= lt!1523391 lt!1523395)))

(declare-fun containsKey!245 (List!48095 K!9099) Bool)

(assert (=> b!4301436 (containsKey!245 (toList!2218 (extractMap!278 (toList!2217 lt!1523328))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!33 (List!48095 K!9099) Unit!66949)

(assert (=> b!4301436 (= lt!1523395 (lemmaInGetKeysListThenContainsKey!33 (toList!2218 (extractMap!278 (toList!2217 lt!1523328))) key!2048))))

(declare-fun Unit!66958 () Unit!66949)

(assert (=> b!4301436 (= e!2673877 Unit!66958)))

(declare-fun b!4301437 () Bool)

(declare-fun e!2673875 () Bool)

(assert (=> b!4301437 (= e!2673875 e!2673878)))

(declare-fun res!1762912 () Bool)

(assert (=> b!4301437 (=> (not res!1762912) (not e!2673878))))

(assert (=> b!4301437 (= res!1762912 (isDefined!7481 (getValueByKey!219 (toList!2218 (extractMap!278 (toList!2217 lt!1523328))) key!2048)))))

(declare-fun b!4301435 () Bool)

(declare-fun getKeysList!36 (List!48095) List!48097)

(assert (=> b!4301435 (= e!2673876 (getKeysList!36 (toList!2218 (extractMap!278 (toList!2217 lt!1523328)))))))

(declare-fun d!1266807 () Bool)

(assert (=> d!1266807 e!2673875))

(declare-fun res!1762910 () Bool)

(assert (=> d!1266807 (=> res!1762910 e!2673875)))

(assert (=> d!1266807 (= res!1762910 e!2673880)))

(declare-fun res!1762911 () Bool)

(assert (=> d!1266807 (=> (not res!1762911) (not e!2673880))))

(declare-fun lt!1523396 () Bool)

(assert (=> d!1266807 (= res!1762911 (not lt!1523396))))

(declare-fun lt!1523394 () Bool)

(assert (=> d!1266807 (= lt!1523396 lt!1523394)))

(declare-fun lt!1523393 () Unit!66949)

(assert (=> d!1266807 (= lt!1523393 e!2673879)))

(assert (=> d!1266807 (= c!731640 lt!1523394)))

(assert (=> d!1266807 (= lt!1523394 (containsKey!245 (toList!2218 (extractMap!278 (toList!2217 lt!1523328))) key!2048))))

(assert (=> d!1266807 (= (contains!9892 (extractMap!278 (toList!2217 lt!1523328)) key!2048) lt!1523396)))

(assert (= (and d!1266807 c!731640) b!4301429))

(assert (= (and d!1266807 (not c!731640)) b!4301430))

(assert (= (and b!4301430 c!731642) b!4301436))

(assert (= (and b!4301430 (not c!731642)) b!4301431))

(assert (= (or b!4301429 b!4301430) bm!296626))

(assert (= (and bm!296626 c!731641) b!4301435))

(assert (= (and bm!296626 (not c!731641)) b!4301434))

(assert (= (and d!1266807 res!1762911) b!4301433))

(assert (= (and d!1266807 (not res!1762910)) b!4301437))

(assert (= (and b!4301437 res!1762912) b!4301432))

(declare-fun m!4893627 () Bool)

(assert (=> d!1266807 m!4893627))

(declare-fun m!4893629 () Bool)

(assert (=> b!4301429 m!4893629))

(declare-fun m!4893631 () Bool)

(assert (=> b!4301429 m!4893631))

(assert (=> b!4301429 m!4893631))

(declare-fun m!4893633 () Bool)

(assert (=> b!4301429 m!4893633))

(declare-fun m!4893635 () Bool)

(assert (=> b!4301429 m!4893635))

(assert (=> b!4301437 m!4893631))

(assert (=> b!4301437 m!4893631))

(assert (=> b!4301437 m!4893633))

(assert (=> b!4301436 m!4893627))

(declare-fun m!4893637 () Bool)

(assert (=> b!4301436 m!4893637))

(declare-fun m!4893639 () Bool)

(assert (=> bm!296626 m!4893639))

(declare-fun m!4893641 () Bool)

(assert (=> b!4301435 m!4893641))

(assert (=> b!4301434 m!4893515))

(declare-fun m!4893643 () Bool)

(assert (=> b!4301434 m!4893643))

(assert (=> b!4301432 m!4893515))

(assert (=> b!4301432 m!4893643))

(assert (=> b!4301432 m!4893643))

(declare-fun m!4893645 () Bool)

(assert (=> b!4301432 m!4893645))

(assert (=> b!4301433 m!4893515))

(assert (=> b!4301433 m!4893643))

(assert (=> b!4301433 m!4893643))

(assert (=> b!4301433 m!4893645))

(assert (=> b!4301297 d!1266807))

(declare-fun bs!604040 () Bool)

(declare-fun d!1266809 () Bool)

(assert (= bs!604040 (and d!1266809 b!4301270)))

(declare-fun lambda!132047 () Int)

(assert (=> bs!604040 (= lambda!132047 lambda!132040)))

(declare-fun bs!604041 () Bool)

(assert (= bs!604041 (and d!1266809 b!4301295)))

(assert (=> bs!604041 (= lambda!132047 lambda!132043)))

(declare-fun bs!604042 () Bool)

(assert (= bs!604042 (and d!1266809 d!1266789)))

(assert (=> bs!604042 (= lambda!132047 lambda!132046)))

(declare-fun lt!1523397 () ListMap!1505)

(assert (=> d!1266809 (invariantList!550 (toList!2218 lt!1523397))))

(declare-fun e!2673881 () ListMap!1505)

(assert (=> d!1266809 (= lt!1523397 e!2673881)))

(declare-fun c!731643 () Bool)

(assert (=> d!1266809 (= c!731643 ((_ is Cons!47972) (toList!2217 lt!1523328)))))

(assert (=> d!1266809 (forall!8645 (toList!2217 lt!1523328) lambda!132047)))

(assert (=> d!1266809 (= (extractMap!278 (toList!2217 lt!1523328)) lt!1523397)))

(declare-fun b!4301438 () Bool)

(assert (=> b!4301438 (= e!2673881 (addToMapMapFromBucket!23 (_2!26274 (h!53392 (toList!2217 lt!1523328))) (extractMap!278 (t!354859 (toList!2217 lt!1523328)))))))

(declare-fun b!4301439 () Bool)

(assert (=> b!4301439 (= e!2673881 (ListMap!1506 Nil!47971))))

(assert (= (and d!1266809 c!731643) b!4301438))

(assert (= (and d!1266809 (not c!731643)) b!4301439))

(declare-fun m!4893647 () Bool)

(assert (=> d!1266809 m!4893647))

(declare-fun m!4893649 () Bool)

(assert (=> d!1266809 m!4893649))

(declare-fun m!4893651 () Bool)

(assert (=> b!4301438 m!4893651))

(assert (=> b!4301438 m!4893651))

(declare-fun m!4893653 () Bool)

(assert (=> b!4301438 m!4893653))

(assert (=> b!4301297 d!1266809))

(declare-fun bs!604043 () Bool)

(declare-fun d!1266811 () Bool)

(assert (= bs!604043 (and d!1266811 b!4301270)))

(declare-fun lambda!132050 () Int)

(assert (=> bs!604043 (= lambda!132050 lambda!132040)))

(declare-fun bs!604044 () Bool)

(assert (= bs!604044 (and d!1266811 b!4301295)))

(assert (=> bs!604044 (= lambda!132050 lambda!132043)))

(declare-fun bs!604045 () Bool)

(assert (= bs!604045 (and d!1266811 d!1266789)))

(assert (=> bs!604045 (= lambda!132050 lambda!132046)))

(declare-fun bs!604046 () Bool)

(assert (= bs!604046 (and d!1266811 d!1266809)))

(assert (=> bs!604046 (= lambda!132050 lambda!132047)))

(assert (=> d!1266811 (contains!9892 (extractMap!278 (toList!2217 lt!1523328)) key!2048)))

(declare-fun lt!1523400 () Unit!66949)

(declare-fun choose!26175 (ListLongMap!823 K!9099 Hashable!4457) Unit!66949)

(assert (=> d!1266811 (= lt!1523400 (choose!26175 lt!1523328 key!2048 (hashF!6489 thiss!42308)))))

(assert (=> d!1266811 (forall!8645 (toList!2217 lt!1523328) lambda!132050)))

(assert (=> d!1266811 (= (lemmaInLongMapThenInGenericMap!111 lt!1523328 key!2048 (hashF!6489 thiss!42308)) lt!1523400)))

(declare-fun bs!604047 () Bool)

(assert (= bs!604047 d!1266811))

(assert (=> bs!604047 m!4893515))

(assert (=> bs!604047 m!4893515))

(assert (=> bs!604047 m!4893517))

(declare-fun m!4893655 () Bool)

(assert (=> bs!604047 m!4893655))

(declare-fun m!4893657 () Bool)

(assert (=> bs!604047 m!4893657))

(assert (=> b!4301297 d!1266811))

(assert (=> bm!296623 d!1266763))

(declare-fun d!1266813 () Bool)

(declare-fun choose!26176 (Hashable!4457 K!9099) (_ BitVec 64))

(assert (=> d!1266813 (= (hash!846 (hashF!6489 thiss!42308) key!2048) (choose!26176 (hashF!6489 thiss!42308) key!2048))))

(declare-fun bs!604048 () Bool)

(assert (= bs!604048 d!1266813))

(declare-fun m!4893659 () Bool)

(assert (=> bs!604048 m!4893659))

(assert (=> d!1266771 d!1266813))

(declare-fun d!1266815 () Bool)

(declare-fun c!731644 () Bool)

(assert (=> d!1266815 (= c!731644 (and ((_ is Cons!47972) lt!1523327) (= (_1!26274 (h!53392 lt!1523327)) lt!1523338)))))

(declare-fun e!2673882 () Option!10171)

(assert (=> d!1266815 (= (getValueByKey!218 lt!1523327 lt!1523338) e!2673882)))

(declare-fun b!4301443 () Bool)

(declare-fun e!2673883 () Option!10171)

(assert (=> b!4301443 (= e!2673883 None!10170)))

(declare-fun b!4301440 () Bool)

(assert (=> b!4301440 (= e!2673882 (Some!10170 (_2!26274 (h!53392 lt!1523327))))))

(declare-fun b!4301441 () Bool)

(assert (=> b!4301441 (= e!2673882 e!2673883)))

(declare-fun c!731645 () Bool)

(assert (=> b!4301441 (= c!731645 (and ((_ is Cons!47972) lt!1523327) (not (= (_1!26274 (h!53392 lt!1523327)) lt!1523338))))))

(declare-fun b!4301442 () Bool)

(assert (=> b!4301442 (= e!2673883 (getValueByKey!218 (t!354859 lt!1523327) lt!1523338))))

(assert (= (and d!1266815 c!731644) b!4301440))

(assert (= (and d!1266815 (not c!731644)) b!4301441))

(assert (= (and b!4301441 c!731645) b!4301442))

(assert (= (and b!4301441 (not c!731645)) b!4301443))

(declare-fun m!4893661 () Bool)

(assert (=> b!4301442 m!4893661))

(assert (=> b!4301298 d!1266815))

(declare-fun d!1266817 () Bool)

(assert (=> d!1266817 (isDefined!7480 (getValueByKey!218 lt!1523327 lt!1523338))))

(declare-fun lt!1523403 () Unit!66949)

(declare-fun choose!26177 (List!48096 (_ BitVec 64)) Unit!66949)

(assert (=> d!1266817 (= lt!1523403 (choose!26177 lt!1523327 lt!1523338))))

(declare-fun e!2673886 () Bool)

(assert (=> d!1266817 e!2673886))

(declare-fun res!1762915 () Bool)

(assert (=> d!1266817 (=> (not res!1762915) (not e!2673886))))

(declare-fun isStrictlySorted!12 (List!48096) Bool)

(assert (=> d!1266817 (= res!1762915 (isStrictlySorted!12 lt!1523327))))

(assert (=> d!1266817 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!145 lt!1523327 lt!1523338) lt!1523403)))

(declare-fun b!4301446 () Bool)

(assert (=> b!4301446 (= e!2673886 (containsKey!243 lt!1523327 lt!1523338))))

(assert (= (and d!1266817 res!1762915) b!4301446))

(assert (=> d!1266817 m!4893473))

(assert (=> d!1266817 m!4893473))

(assert (=> d!1266817 m!4893481))

(declare-fun m!4893663 () Bool)

(assert (=> d!1266817 m!4893663))

(declare-fun m!4893665 () Bool)

(assert (=> d!1266817 m!4893665))

(declare-fun m!4893667 () Bool)

(assert (=> b!4301446 m!4893667))

(assert (=> b!4301298 d!1266817))

(declare-fun d!1266819 () Bool)

(declare-fun isEmpty!28053 (Option!10171) Bool)

(assert (=> d!1266819 (= (isDefined!7480 (getValueByKey!218 lt!1523327 lt!1523338)) (not (isEmpty!28053 (getValueByKey!218 lt!1523327 lt!1523338))))))

(declare-fun bs!604049 () Bool)

(assert (= bs!604049 d!1266819))

(assert (=> bs!604049 m!4893473))

(declare-fun m!4893669 () Bool)

(assert (=> bs!604049 m!4893669))

(assert (=> b!4301298 d!1266819))

(declare-fun d!1266821 () Bool)

(assert (=> d!1266821 (containsKey!243 lt!1523326 lt!1523338)))

(declare-fun lt!1523406 () Unit!66949)

(declare-fun choose!26178 (List!48096 (_ BitVec 64)) Unit!66949)

(assert (=> d!1266821 (= lt!1523406 (choose!26178 lt!1523326 lt!1523338))))

(declare-fun e!2673889 () Bool)

(assert (=> d!1266821 e!2673889))

(declare-fun res!1762918 () Bool)

(assert (=> d!1266821 (=> (not res!1762918) (not e!2673889))))

(assert (=> d!1266821 (= res!1762918 (isStrictlySorted!12 lt!1523326))))

(assert (=> d!1266821 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!112 lt!1523326 lt!1523338) lt!1523406)))

(declare-fun b!4301449 () Bool)

(assert (=> b!4301449 (= e!2673889 (isDefined!7480 (getValueByKey!218 lt!1523326 lt!1523338)))))

(assert (= (and d!1266821 res!1762918) b!4301449))

(assert (=> d!1266821 m!4893483))

(declare-fun m!4893671 () Bool)

(assert (=> d!1266821 m!4893671))

(declare-fun m!4893673 () Bool)

(assert (=> d!1266821 m!4893673))

(declare-fun m!4893675 () Bool)

(assert (=> b!4301449 m!4893675))

(assert (=> b!4301449 m!4893675))

(declare-fun m!4893677 () Bool)

(assert (=> b!4301449 m!4893677))

(assert (=> b!4301298 d!1266821))

(declare-fun d!1266823 () Bool)

(declare-fun lt!1523407 () Bool)

(assert (=> d!1266823 (= lt!1523407 (select (content!7540 lt!1523325) (tuple2!45991 lt!1523338 lt!1523323)))))

(declare-fun e!2673890 () Bool)

(assert (=> d!1266823 (= lt!1523407 e!2673890)))

(declare-fun res!1762920 () Bool)

(assert (=> d!1266823 (=> (not res!1762920) (not e!2673890))))

(assert (=> d!1266823 (= res!1762920 ((_ is Cons!47972) lt!1523325))))

(assert (=> d!1266823 (= (contains!9894 lt!1523325 (tuple2!45991 lt!1523338 lt!1523323)) lt!1523407)))

(declare-fun b!4301450 () Bool)

(declare-fun e!2673891 () Bool)

(assert (=> b!4301450 (= e!2673890 e!2673891)))

(declare-fun res!1762919 () Bool)

(assert (=> b!4301450 (=> res!1762919 e!2673891)))

(assert (=> b!4301450 (= res!1762919 (= (h!53392 lt!1523325) (tuple2!45991 lt!1523338 lt!1523323)))))

(declare-fun b!4301451 () Bool)

(assert (=> b!4301451 (= e!2673891 (contains!9894 (t!354859 lt!1523325) (tuple2!45991 lt!1523338 lt!1523323)))))

(assert (= (and d!1266823 res!1762920) b!4301450))

(assert (= (and b!4301450 (not res!1762919)) b!4301451))

(declare-fun m!4893679 () Bool)

(assert (=> d!1266823 m!4893679))

(declare-fun m!4893681 () Bool)

(assert (=> d!1266823 m!4893681))

(declare-fun m!4893683 () Bool)

(assert (=> b!4301451 m!4893683))

(assert (=> b!4301298 d!1266823))

(assert (=> b!4301298 d!1266779))

(declare-fun d!1266825 () Bool)

(assert (=> d!1266825 (contains!9894 lt!1523325 (tuple2!45991 lt!1523338 lt!1523323))))

(declare-fun lt!1523410 () Unit!66949)

(declare-fun choose!26179 (List!48096 (_ BitVec 64) List!48095) Unit!66949)

(assert (=> d!1266825 (= lt!1523410 (choose!26179 lt!1523325 lt!1523338 lt!1523323))))

(declare-fun e!2673894 () Bool)

(assert (=> d!1266825 e!2673894))

(declare-fun res!1762923 () Bool)

(assert (=> d!1266825 (=> (not res!1762923) (not e!2673894))))

(assert (=> d!1266825 (= res!1762923 (isStrictlySorted!12 lt!1523325))))

(assert (=> d!1266825 (= (lemmaGetValueByKeyImpliesContainsTuple!117 lt!1523325 lt!1523338 lt!1523323) lt!1523410)))

(declare-fun b!4301454 () Bool)

(assert (=> b!4301454 (= e!2673894 (= (getValueByKey!218 lt!1523325 lt!1523338) (Some!10170 lt!1523323)))))

(assert (= (and d!1266825 res!1762923) b!4301454))

(assert (=> d!1266825 m!4893485))

(declare-fun m!4893685 () Bool)

(assert (=> d!1266825 m!4893685))

(declare-fun m!4893687 () Bool)

(assert (=> d!1266825 m!4893687))

(declare-fun m!4893689 () Bool)

(assert (=> b!4301454 m!4893689))

(assert (=> b!4301298 d!1266825))

(assert (=> b!4301298 d!1266763))

(declare-fun d!1266827 () Bool)

(declare-fun res!1762928 () Bool)

(declare-fun e!2673899 () Bool)

(assert (=> d!1266827 (=> res!1762928 e!2673899)))

(assert (=> d!1266827 (= res!1762928 (and ((_ is Cons!47972) lt!1523326) (= (_1!26274 (h!53392 lt!1523326)) lt!1523338)))))

(assert (=> d!1266827 (= (containsKey!243 lt!1523326 lt!1523338) e!2673899)))

(declare-fun b!4301459 () Bool)

(declare-fun e!2673900 () Bool)

(assert (=> b!4301459 (= e!2673899 e!2673900)))

(declare-fun res!1762929 () Bool)

(assert (=> b!4301459 (=> (not res!1762929) (not e!2673900))))

(assert (=> b!4301459 (= res!1762929 (and (or (not ((_ is Cons!47972) lt!1523326)) (bvsle (_1!26274 (h!53392 lt!1523326)) lt!1523338)) ((_ is Cons!47972) lt!1523326) (bvslt (_1!26274 (h!53392 lt!1523326)) lt!1523338)))))

(declare-fun b!4301460 () Bool)

(assert (=> b!4301460 (= e!2673900 (containsKey!243 (t!354859 lt!1523326) lt!1523338))))

(assert (= (and d!1266827 (not res!1762928)) b!4301459))

(assert (= (and b!4301459 res!1762929) b!4301460))

(declare-fun m!4893691 () Bool)

(assert (=> b!4301460 m!4893691))

(assert (=> b!4301298 d!1266827))

(declare-fun d!1266829 () Bool)

(declare-fun lt!1523413 () Bool)

(assert (=> d!1266829 (= lt!1523413 (contains!9895 (map!9930 (v!41958 (underlying!9312 thiss!42308))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun contains!9898 (LongMapFixedSize!9082 (_ BitVec 64)) Bool)

(assert (=> d!1266829 (= lt!1523413 (contains!9898 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(assert (=> d!1266829 (valid!3526 (v!41958 (underlying!9312 thiss!42308)))))

(assert (=> d!1266829 (= (contains!9893 (v!41958 (underlying!9312 thiss!42308)) (hash!845 (hashF!6489 thiss!42308) key!2048)) lt!1523413)))

(declare-fun bs!604050 () Bool)

(assert (= bs!604050 d!1266829))

(assert (=> bs!604050 m!4893457))

(assert (=> bs!604050 m!4893457))

(assert (=> bs!604050 m!4893449))

(declare-fun m!4893693 () Bool)

(assert (=> bs!604050 m!4893693))

(assert (=> bs!604050 m!4893449))

(declare-fun m!4893695 () Bool)

(assert (=> bs!604050 m!4893695))

(assert (=> bs!604050 m!4893467))

(assert (=> d!1266769 d!1266829))

(declare-fun lt!1523439 () List!48095)

(declare-fun b!4301497 () Bool)

(declare-fun e!2673930 () Bool)

(assert (=> b!4301497 (= e!2673930 (= lt!1523439 (get!15512 (getValueByKey!218 (toList!2217 (map!9932 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))))

(declare-fun b!4301498 () Bool)

(declare-fun e!2673933 () List!48095)

(assert (=> b!4301498 (= e!2673933 (dynLambda!20366 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun bm!296635 () Bool)

(declare-fun call!296641 () ListLongMap!823)

(declare-fun call!296643 () ListLongMap!823)

(assert (=> bm!296635 (= call!296641 call!296643)))

(declare-fun b!4301499 () Bool)

(declare-fun e!2673927 () List!48095)

(assert (=> b!4301499 (= e!2673927 (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))))))

(declare-fun bm!296636 () Bool)

(assert (=> bm!296636 (= call!296643 (getCurrentListMap!16 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun b!4301500 () Bool)

(declare-fun e!2673925 () Bool)

(declare-fun call!296642 () List!48095)

(assert (=> b!4301500 (= e!2673925 (= call!296642 (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun b!4301501 () Bool)

(declare-fun e!2673931 () List!48095)

(assert (=> b!4301501 (= e!2673931 (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))))))

(declare-fun b!4301502 () Bool)

(assert (=> b!4301502 (= e!2673931 (dynLambda!20366 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun b!4301503 () Bool)

(declare-fun lt!1523442 () Unit!66949)

(declare-fun lt!1523445 () Unit!66949)

(assert (=> b!4301503 (= lt!1523442 lt!1523445)))

(declare-fun e!2673924 () Bool)

(assert (=> b!4301503 e!2673924))

(declare-fun c!731661 () Bool)

(assert (=> b!4301503 (= c!731661 (= (hash!845 (hashF!6489 thiss!42308) key!2048) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!13 0))(
  ( (Found!13 (index!1431 (_ BitVec 32))) (Undefined!13) (MissingZero!13 (index!1432 (_ BitVec 32))) (MissingVacant!13 (index!1433 (_ BitVec 32))) (Intermediate!13 (undefined!94 Bool) (index!1434 (_ BitVec 32)) (x!746682 (_ BitVec 32))) )
))
(declare-fun lt!1523438 () SeekEntryResult!13)

(declare-fun lemmaKeyInListMapThenSameValueInArray!3 (array!16282 array!16284 (_ BitVec 32) (_ BitVec 32) List!48095 List!48095 (_ BitVec 64) (_ BitVec 32) Int) Unit!66949)

(assert (=> b!4301503 (= lt!1523445 (lemmaKeyInListMapThenSameValueInArray!3 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048) (index!1431 lt!1523438) (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun lt!1523437 () Unit!66949)

(declare-fun lt!1523436 () Unit!66949)

(assert (=> b!4301503 (= lt!1523437 lt!1523436)))

(assert (=> b!4301503 (contains!9895 (getCurrentListMap!16 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (select (arr!7267 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (index!1431 lt!1523438)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!6 (array!16282 array!16284 (_ BitVec 32) (_ BitVec 32) List!48095 List!48095 (_ BitVec 32) Int) Unit!66949)

(assert (=> b!4301503 (= lt!1523436 (lemmaValidKeyInArrayIsInListMap!6 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (index!1431 lt!1523438) (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun lt!1523444 () Unit!66949)

(declare-fun lt!1523443 () Unit!66949)

(assert (=> b!4301503 (= lt!1523444 lt!1523443)))

(declare-fun arrayContainsKey!0 (array!16282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4301503 (arrayContainsKey!0 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16282 (_ BitVec 64) (_ BitVec 32)) Unit!66949)

(assert (=> b!4301503 (= lt!1523443 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048) (index!1431 lt!1523438)))))

(assert (=> b!4301503 (= e!2673933 (select (arr!7268 (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (index!1431 lt!1523438)))))

(declare-fun e!2673932 () Bool)

(declare-fun b!4301504 () Bool)

(assert (=> b!4301504 (= e!2673932 (= call!296642 (select (arr!7268 (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))) (index!1431 lt!1523438))))))

(declare-fun d!1266831 () Bool)

(assert (=> d!1266831 e!2673930))

(declare-fun c!731665 () Bool)

(assert (=> d!1266831 (= c!731665 (contains!9898 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun e!2673928 () List!48095)

(assert (=> d!1266831 (= lt!1523439 e!2673928)))

(declare-fun c!731660 () Bool)

(assert (=> d!1266831 (= c!731660 (= (hash!845 (hashF!6489 thiss!42308) key!2048) (bvneg (hash!845 (hashF!6489 thiss!42308) key!2048))))))

(assert (=> d!1266831 (valid!3527 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))

(assert (=> d!1266831 (= (apply!10885 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))) (hash!845 (hashF!6489 thiss!42308) key!2048)) lt!1523439)))

(declare-fun b!4301505 () Bool)

(declare-fun res!1762940 () Bool)

(assert (=> b!4301505 (=> (not res!1762940) (not e!2673925))))

(assert (=> b!4301505 (= res!1762940 (not (= (bvand (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2673926 () Bool)

(assert (=> b!4301505 (= e!2673926 e!2673925)))

(declare-fun b!4301506 () Bool)

(assert (=> b!4301506 (= e!2673928 e!2673927)))

(declare-fun c!731664 () Bool)

(assert (=> b!4301506 (= c!731664 (and (= (hash!845 (hashF!6489 thiss!42308) key!2048) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4301507 () Bool)

(declare-fun c!731662 () Bool)

(assert (=> b!4301507 (= c!731662 (and (= (hash!845 (hashF!6489 thiss!42308) key!2048) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4301507 (= e!2673927 e!2673931)))

(declare-fun b!4301508 () Bool)

(assert (=> b!4301508 (= e!2673930 (= lt!1523439 (dynLambda!20366 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048))))))

(declare-fun b!4301509 () Bool)

(declare-fun res!1762938 () Bool)

(assert (=> b!4301509 (=> (not res!1762938) (not e!2673932))))

(assert (=> b!4301509 (= res!1762938 (arrayContainsKey!0 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048) #b00000000000000000000000000000000))))

(assert (=> b!4301509 (= e!2673926 e!2673932)))

(declare-fun b!4301510 () Bool)

(assert (=> b!4301510 (= e!2673928 e!2673933)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!16282 (_ BitVec 32)) SeekEntryResult!13)

(assert (=> b!4301510 (= lt!1523438 (seekEntry!0 (hash!845 (hashF!6489 thiss!42308) key!2048) (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun lt!1523446 () Unit!66949)

(declare-fun lemmaSeekEntryGivesInRangeIndex!3 (array!16282 array!16284 (_ BitVec 32) (_ BitVec 32) List!48095 List!48095 (_ BitVec 64)) Unit!66949)

(assert (=> b!4301510 (= lt!1523446 (lemmaSeekEntryGivesInRangeIndex!3 (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (_values!4822 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun lt!1523440 () SeekEntryResult!13)

(assert (=> b!4301510 (= lt!1523440 (seekEntry!0 (hash!845 (hashF!6489 thiss!42308) key!2048) (_keys!4841 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun res!1762941 () Bool)

(assert (=> b!4301510 (= res!1762941 (not ((_ is Found!13) lt!1523440)))))

(declare-fun e!2673929 () Bool)

(assert (=> b!4301510 (=> res!1762941 e!2673929)))

(assert (=> b!4301510 e!2673929))

(declare-fun lt!1523441 () Unit!66949)

(assert (=> b!4301510 (= lt!1523441 lt!1523446)))

(declare-fun c!731666 () Bool)

(assert (=> b!4301510 (= c!731666 ((_ is Found!13) lt!1523438))))

(declare-fun b!4301511 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4301511 (= e!2673929 (inRange!0 (index!1431 lt!1523440) (mask!13040 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun b!4301512 () Bool)

(declare-fun e!2673923 () Bool)

(declare-fun call!296640 () List!48095)

(assert (=> b!4301512 (= e!2673923 (= call!296640 (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun bm!296637 () Bool)

(assert (=> bm!296637 (= call!296640 (apply!10884 (ite c!731661 call!296643 call!296641) (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun bm!296638 () Bool)

(assert (=> bm!296638 (= call!296642 call!296640)))

(declare-fun b!4301513 () Bool)

(assert (=> b!4301513 (= e!2673924 e!2673923)))

(declare-fun res!1762939 () Bool)

(assert (=> b!4301513 (= res!1762939 (not (= (bvand (extraKeys!4790 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4301513 (=> (not res!1762939) (not e!2673923))))

(declare-fun b!4301514 () Bool)

(assert (=> b!4301514 (= e!2673924 e!2673926)))

(declare-fun c!731663 () Bool)

(assert (=> b!4301514 (= c!731663 (= (hash!845 (hashF!6489 thiss!42308) key!2048) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!1266831 c!731660) b!4301506))

(assert (= (and d!1266831 (not c!731660)) b!4301510))

(assert (= (and b!4301506 c!731664) b!4301499))

(assert (= (and b!4301506 (not c!731664)) b!4301507))

(assert (= (and b!4301507 c!731662) b!4301501))

(assert (= (and b!4301507 (not c!731662)) b!4301502))

(assert (= (and b!4301510 (not res!1762941)) b!4301511))

(assert (= (and b!4301510 c!731666) b!4301503))

(assert (= (and b!4301510 (not c!731666)) b!4301498))

(assert (= (and b!4301503 c!731661) b!4301513))

(assert (= (and b!4301503 (not c!731661)) b!4301514))

(assert (= (and b!4301513 res!1762939) b!4301512))

(assert (= (and b!4301514 c!731663) b!4301505))

(assert (= (and b!4301514 (not c!731663)) b!4301509))

(assert (= (and b!4301505 res!1762940) b!4301500))

(assert (= (and b!4301509 res!1762938) b!4301504))

(assert (= (or b!4301500 b!4301504) bm!296635))

(assert (= (or b!4301500 b!4301504) bm!296638))

(assert (= (or b!4301512 bm!296635) bm!296636))

(assert (= (or b!4301512 bm!296638) bm!296637))

(assert (= (and d!1266831 c!731665) b!4301497))

(assert (= (and d!1266831 (not c!731665)) b!4301508))

(declare-fun b_lambda!126415 () Bool)

(assert (=> (not b_lambda!126415) (not b!4301498)))

(assert (=> b!4301498 t!354861))

(declare-fun b_and!339503 () Bool)

(assert (= b_and!339501 (and (=> t!354861 result!314558) b_and!339503)))

(declare-fun b_lambda!126417 () Bool)

(assert (=> (not b_lambda!126417) (not b!4301502)))

(assert (=> b!4301502 t!354861))

(declare-fun b_and!339505 () Bool)

(assert (= b_and!339503 (and (=> t!354861 result!314558) b_and!339505)))

(declare-fun b_lambda!126419 () Bool)

(assert (=> (not b_lambda!126419) (not b!4301508)))

(assert (=> b!4301508 t!354861))

(declare-fun b_and!339507 () Bool)

(assert (= b_and!339505 (and (=> t!354861 result!314558) b_and!339507)))

(declare-fun m!4893697 () Bool)

(assert (=> b!4301504 m!4893697))

(assert (=> b!4301508 m!4893449))

(assert (=> b!4301508 m!4893537))

(assert (=> d!1266831 m!4893449))

(assert (=> d!1266831 m!4893695))

(assert (=> d!1266831 m!4893625))

(declare-fun m!4893699 () Bool)

(assert (=> b!4301511 m!4893699))

(assert (=> b!4301510 m!4893449))

(declare-fun m!4893701 () Bool)

(assert (=> b!4301510 m!4893701))

(assert (=> b!4301510 m!4893449))

(declare-fun m!4893703 () Bool)

(assert (=> b!4301510 m!4893703))

(assert (=> bm!296637 m!4893449))

(declare-fun m!4893705 () Bool)

(assert (=> bm!296637 m!4893705))

(assert (=> b!4301497 m!4893521))

(assert (=> b!4301497 m!4893449))

(declare-fun m!4893707 () Bool)

(assert (=> b!4301497 m!4893707))

(assert (=> b!4301497 m!4893707))

(declare-fun m!4893709 () Bool)

(assert (=> b!4301497 m!4893709))

(declare-fun m!4893711 () Bool)

(assert (=> b!4301503 m!4893711))

(assert (=> b!4301503 m!4893623))

(assert (=> b!4301503 m!4893711))

(declare-fun m!4893713 () Bool)

(assert (=> b!4301503 m!4893713))

(assert (=> b!4301503 m!4893449))

(declare-fun m!4893715 () Bool)

(assert (=> b!4301503 m!4893715))

(assert (=> b!4301503 m!4893623))

(assert (=> b!4301503 m!4893449))

(declare-fun m!4893717 () Bool)

(assert (=> b!4301503 m!4893717))

(declare-fun m!4893719 () Bool)

(assert (=> b!4301503 m!4893719))

(assert (=> b!4301503 m!4893449))

(declare-fun m!4893721 () Bool)

(assert (=> b!4301503 m!4893721))

(assert (=> b!4301503 m!4893697))

(assert (=> b!4301509 m!4893449))

(assert (=> b!4301509 m!4893715))

(assert (=> bm!296636 m!4893623))

(assert (=> b!4301502 m!4893449))

(assert (=> b!4301502 m!4893537))

(assert (=> b!4301498 m!4893449))

(assert (=> b!4301498 m!4893537))

(assert (=> d!1266769 d!1266831))

(assert (=> d!1266769 d!1266805))

(assert (=> d!1266761 d!1266771))

(declare-fun b!4301515 () Bool)

(declare-fun e!2673938 () Unit!66949)

(declare-fun lt!1523450 () Unit!66949)

(assert (=> b!4301515 (= e!2673938 lt!1523450)))

(declare-fun lt!1523447 () Unit!66949)

(assert (=> b!4301515 (= lt!1523447 (lemmaContainsKeyImpliesGetValueByKeyDefined!146 (toList!2218 (map!9931 thiss!42308)) key!2048))))

(assert (=> b!4301515 (isDefined!7481 (getValueByKey!219 (toList!2218 (map!9931 thiss!42308)) key!2048))))

(declare-fun lt!1523448 () Unit!66949)

(assert (=> b!4301515 (= lt!1523448 lt!1523447)))

(assert (=> b!4301515 (= lt!1523450 (lemmaInListThenGetKeysListContains!33 (toList!2218 (map!9931 thiss!42308)) key!2048))))

(declare-fun call!296644 () Bool)

(assert (=> b!4301515 call!296644))

(declare-fun b!4301516 () Bool)

(declare-fun e!2673936 () Unit!66949)

(assert (=> b!4301516 (= e!2673938 e!2673936)))

(declare-fun c!731669 () Bool)

(assert (=> b!4301516 (= c!731669 call!296644)))

(declare-fun b!4301517 () Bool)

(declare-fun Unit!66959 () Unit!66949)

(assert (=> b!4301517 (= e!2673936 Unit!66959)))

(declare-fun b!4301518 () Bool)

(declare-fun e!2673937 () Bool)

(assert (=> b!4301518 (= e!2673937 (contains!9897 (keys!15941 (map!9931 thiss!42308)) key!2048))))

(declare-fun bm!296639 () Bool)

(declare-fun e!2673935 () List!48097)

(assert (=> bm!296639 (= call!296644 (contains!9897 e!2673935 key!2048))))

(declare-fun c!731668 () Bool)

(declare-fun c!731667 () Bool)

(assert (=> bm!296639 (= c!731668 c!731667)))

(declare-fun b!4301519 () Bool)

(declare-fun e!2673939 () Bool)

(assert (=> b!4301519 (= e!2673939 (not (contains!9897 (keys!15941 (map!9931 thiss!42308)) key!2048)))))

(declare-fun b!4301520 () Bool)

(assert (=> b!4301520 (= e!2673935 (keys!15941 (map!9931 thiss!42308)))))

(declare-fun b!4301522 () Bool)

(assert (=> b!4301522 false))

(declare-fun lt!1523449 () Unit!66949)

(declare-fun lt!1523453 () Unit!66949)

(assert (=> b!4301522 (= lt!1523449 lt!1523453)))

(assert (=> b!4301522 (containsKey!245 (toList!2218 (map!9931 thiss!42308)) key!2048)))

(assert (=> b!4301522 (= lt!1523453 (lemmaInGetKeysListThenContainsKey!33 (toList!2218 (map!9931 thiss!42308)) key!2048))))

(declare-fun Unit!66960 () Unit!66949)

(assert (=> b!4301522 (= e!2673936 Unit!66960)))

(declare-fun b!4301523 () Bool)

(declare-fun e!2673934 () Bool)

(assert (=> b!4301523 (= e!2673934 e!2673937)))

(declare-fun res!1762944 () Bool)

(assert (=> b!4301523 (=> (not res!1762944) (not e!2673937))))

(assert (=> b!4301523 (= res!1762944 (isDefined!7481 (getValueByKey!219 (toList!2218 (map!9931 thiss!42308)) key!2048)))))

(declare-fun b!4301521 () Bool)

(assert (=> b!4301521 (= e!2673935 (getKeysList!36 (toList!2218 (map!9931 thiss!42308))))))

(declare-fun d!1266833 () Bool)

(assert (=> d!1266833 e!2673934))

(declare-fun res!1762942 () Bool)

(assert (=> d!1266833 (=> res!1762942 e!2673934)))

(assert (=> d!1266833 (= res!1762942 e!2673939)))

(declare-fun res!1762943 () Bool)

(assert (=> d!1266833 (=> (not res!1762943) (not e!2673939))))

(declare-fun lt!1523454 () Bool)

(assert (=> d!1266833 (= res!1762943 (not lt!1523454))))

(declare-fun lt!1523452 () Bool)

(assert (=> d!1266833 (= lt!1523454 lt!1523452)))

(declare-fun lt!1523451 () Unit!66949)

(assert (=> d!1266833 (= lt!1523451 e!2673938)))

(assert (=> d!1266833 (= c!731667 lt!1523452)))

(assert (=> d!1266833 (= lt!1523452 (containsKey!245 (toList!2218 (map!9931 thiss!42308)) key!2048))))

(assert (=> d!1266833 (= (contains!9892 (map!9931 thiss!42308) key!2048) lt!1523454)))

(assert (= (and d!1266833 c!731667) b!4301515))

(assert (= (and d!1266833 (not c!731667)) b!4301516))

(assert (= (and b!4301516 c!731669) b!4301522))

(assert (= (and b!4301516 (not c!731669)) b!4301517))

(assert (= (or b!4301515 b!4301516) bm!296639))

(assert (= (and bm!296639 c!731668) b!4301521))

(assert (= (and bm!296639 (not c!731668)) b!4301520))

(assert (= (and d!1266833 res!1762943) b!4301519))

(assert (= (and d!1266833 (not res!1762942)) b!4301523))

(assert (= (and b!4301523 res!1762944) b!4301518))

(declare-fun m!4893723 () Bool)

(assert (=> d!1266833 m!4893723))

(declare-fun m!4893725 () Bool)

(assert (=> b!4301515 m!4893725))

(declare-fun m!4893727 () Bool)

(assert (=> b!4301515 m!4893727))

(assert (=> b!4301515 m!4893727))

(declare-fun m!4893729 () Bool)

(assert (=> b!4301515 m!4893729))

(declare-fun m!4893731 () Bool)

(assert (=> b!4301515 m!4893731))

(assert (=> b!4301523 m!4893727))

(assert (=> b!4301523 m!4893727))

(assert (=> b!4301523 m!4893729))

(assert (=> b!4301522 m!4893723))

(declare-fun m!4893733 () Bool)

(assert (=> b!4301522 m!4893733))

(declare-fun m!4893735 () Bool)

(assert (=> bm!296639 m!4893735))

(declare-fun m!4893737 () Bool)

(assert (=> b!4301521 m!4893737))

(assert (=> b!4301520 m!4893459))

(declare-fun m!4893739 () Bool)

(assert (=> b!4301520 m!4893739))

(assert (=> b!4301518 m!4893459))

(assert (=> b!4301518 m!4893739))

(assert (=> b!4301518 m!4893739))

(declare-fun m!4893741 () Bool)

(assert (=> b!4301518 m!4893741))

(assert (=> b!4301519 m!4893459))

(assert (=> b!4301519 m!4893739))

(assert (=> b!4301519 m!4893739))

(assert (=> b!4301519 m!4893741))

(assert (=> d!1266761 d!1266833))

(declare-fun d!1266835 () Bool)

(declare-fun lt!1523455 () Bool)

(assert (=> d!1266835 (= lt!1523455 (contains!9895 (map!9930 (v!41958 (underlying!9312 thiss!42308))) lt!1523338))))

(assert (=> d!1266835 (= lt!1523455 (contains!9898 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))) lt!1523338))))

(assert (=> d!1266835 (valid!3526 (v!41958 (underlying!9312 thiss!42308)))))

(assert (=> d!1266835 (= (contains!9893 (v!41958 (underlying!9312 thiss!42308)) lt!1523338) lt!1523455)))

(declare-fun bs!604051 () Bool)

(assert (= bs!604051 d!1266835))

(assert (=> bs!604051 m!4893457))

(assert (=> bs!604051 m!4893457))

(declare-fun m!4893743 () Bool)

(assert (=> bs!604051 m!4893743))

(declare-fun m!4893745 () Bool)

(assert (=> bs!604051 m!4893745))

(assert (=> bs!604051 m!4893467))

(assert (=> d!1266761 d!1266835))

(declare-fun b!4301524 () Bool)

(declare-fun e!2673944 () Unit!66949)

(declare-fun lt!1523459 () Unit!66949)

(assert (=> b!4301524 (= e!2673944 lt!1523459)))

(declare-fun lt!1523456 () Unit!66949)

(assert (=> b!4301524 (= lt!1523456 (lemmaContainsKeyImpliesGetValueByKeyDefined!146 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048))))

(assert (=> b!4301524 (isDefined!7481 (getValueByKey!219 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048))))

(declare-fun lt!1523457 () Unit!66949)

(assert (=> b!4301524 (= lt!1523457 lt!1523456)))

(assert (=> b!4301524 (= lt!1523459 (lemmaInListThenGetKeysListContains!33 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048))))

(declare-fun call!296645 () Bool)

(assert (=> b!4301524 call!296645))

(declare-fun b!4301525 () Bool)

(declare-fun e!2673942 () Unit!66949)

(assert (=> b!4301525 (= e!2673944 e!2673942)))

(declare-fun c!731672 () Bool)

(assert (=> b!4301525 (= c!731672 call!296645)))

(declare-fun b!4301526 () Bool)

(declare-fun Unit!66961 () Unit!66949)

(assert (=> b!4301526 (= e!2673942 Unit!66961)))

(declare-fun b!4301527 () Bool)

(declare-fun e!2673943 () Bool)

(assert (=> b!4301527 (= e!2673943 (contains!9897 (keys!15941 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048))))

(declare-fun bm!296640 () Bool)

(declare-fun e!2673941 () List!48097)

(assert (=> bm!296640 (= call!296645 (contains!9897 e!2673941 key!2048))))

(declare-fun c!731671 () Bool)

(declare-fun c!731670 () Bool)

(assert (=> bm!296640 (= c!731671 c!731670)))

(declare-fun b!4301528 () Bool)

(declare-fun e!2673945 () Bool)

(assert (=> b!4301528 (= e!2673945 (not (contains!9897 (keys!15941 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048)))))

(declare-fun b!4301529 () Bool)

(assert (=> b!4301529 (= e!2673941 (keys!15941 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun b!4301531 () Bool)

(assert (=> b!4301531 false))

(declare-fun lt!1523458 () Unit!66949)

(declare-fun lt!1523462 () Unit!66949)

(assert (=> b!4301531 (= lt!1523458 lt!1523462)))

(assert (=> b!4301531 (containsKey!245 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048)))

(assert (=> b!4301531 (= lt!1523462 (lemmaInGetKeysListThenContainsKey!33 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048))))

(declare-fun Unit!66962 () Unit!66949)

(assert (=> b!4301531 (= e!2673942 Unit!66962)))

(declare-fun b!4301532 () Bool)

(declare-fun e!2673940 () Bool)

(assert (=> b!4301532 (= e!2673940 e!2673943)))

(declare-fun res!1762947 () Bool)

(assert (=> b!4301532 (=> (not res!1762947) (not e!2673943))))

(assert (=> b!4301532 (= res!1762947 (isDefined!7481 (getValueByKey!219 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048)))))

(declare-fun b!4301530 () Bool)

(assert (=> b!4301530 (= e!2673941 (getKeysList!36 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))))

(declare-fun d!1266837 () Bool)

(assert (=> d!1266837 e!2673940))

(declare-fun res!1762945 () Bool)

(assert (=> d!1266837 (=> res!1762945 e!2673940)))

(assert (=> d!1266837 (= res!1762945 e!2673945)))

(declare-fun res!1762946 () Bool)

(assert (=> d!1266837 (=> (not res!1762946) (not e!2673945))))

(declare-fun lt!1523463 () Bool)

(assert (=> d!1266837 (= res!1762946 (not lt!1523463))))

(declare-fun lt!1523461 () Bool)

(assert (=> d!1266837 (= lt!1523463 lt!1523461)))

(declare-fun lt!1523460 () Unit!66949)

(assert (=> d!1266837 (= lt!1523460 e!2673944)))

(assert (=> d!1266837 (= c!731670 lt!1523461)))

(assert (=> d!1266837 (= lt!1523461 (containsKey!245 (toList!2218 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) key!2048))))

(assert (=> d!1266837 (= (contains!9892 (extractMap!278 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) key!2048) lt!1523463)))

(assert (= (and d!1266837 c!731670) b!4301524))

(assert (= (and d!1266837 (not c!731670)) b!4301525))

(assert (= (and b!4301525 c!731672) b!4301531))

(assert (= (and b!4301525 (not c!731672)) b!4301526))

(assert (= (or b!4301524 b!4301525) bm!296640))

(assert (= (and bm!296640 c!731671) b!4301530))

(assert (= (and bm!296640 (not c!731671)) b!4301529))

(assert (= (and d!1266837 res!1762946) b!4301528))

(assert (= (and d!1266837 (not res!1762945)) b!4301532))

(assert (= (and b!4301532 res!1762947) b!4301527))

(declare-fun m!4893747 () Bool)

(assert (=> d!1266837 m!4893747))

(declare-fun m!4893749 () Bool)

(assert (=> b!4301524 m!4893749))

(declare-fun m!4893751 () Bool)

(assert (=> b!4301524 m!4893751))

(assert (=> b!4301524 m!4893751))

(declare-fun m!4893753 () Bool)

(assert (=> b!4301524 m!4893753))

(declare-fun m!4893755 () Bool)

(assert (=> b!4301524 m!4893755))

(assert (=> b!4301532 m!4893751))

(assert (=> b!4301532 m!4893751))

(assert (=> b!4301532 m!4893753))

(assert (=> b!4301531 m!4893747))

(declare-fun m!4893757 () Bool)

(assert (=> b!4301531 m!4893757))

(declare-fun m!4893759 () Bool)

(assert (=> bm!296640 m!4893759))

(declare-fun m!4893761 () Bool)

(assert (=> b!4301530 m!4893761))

(assert (=> b!4301529 m!4893495))

(declare-fun m!4893763 () Bool)

(assert (=> b!4301529 m!4893763))

(assert (=> b!4301527 m!4893495))

(assert (=> b!4301527 m!4893763))

(assert (=> b!4301527 m!4893763))

(declare-fun m!4893765 () Bool)

(assert (=> b!4301527 m!4893765))

(assert (=> b!4301528 m!4893495))

(assert (=> b!4301528 m!4893763))

(assert (=> b!4301528 m!4893763))

(assert (=> b!4301528 m!4893765))

(assert (=> d!1266761 d!1266837))

(assert (=> d!1266761 d!1266759))

(assert (=> d!1266761 d!1266765))

(assert (=> d!1266761 d!1266789))

(assert (=> d!1266761 d!1266763))

(assert (=> bm!296620 d!1266771))

(declare-fun d!1266839 () Bool)

(declare-fun res!1762952 () Bool)

(declare-fun e!2673950 () Bool)

(assert (=> d!1266839 (=> res!1762952 e!2673950)))

(assert (=> d!1266839 (= res!1762952 ((_ is Nil!47972) (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))

(assert (=> d!1266839 (= (forall!8645 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132040) e!2673950)))

(declare-fun b!4301537 () Bool)

(declare-fun e!2673951 () Bool)

(assert (=> b!4301537 (= e!2673950 e!2673951)))

(declare-fun res!1762953 () Bool)

(assert (=> b!4301537 (=> (not res!1762953) (not e!2673951))))

(assert (=> b!4301537 (= res!1762953 (dynLambda!20367 lambda!132040 (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))))))

(declare-fun b!4301538 () Bool)

(assert (=> b!4301538 (= e!2673951 (forall!8645 (t!354859 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))) lambda!132040))))

(assert (= (and d!1266839 (not res!1762952)) b!4301537))

(assert (= (and b!4301537 res!1762953) b!4301538))

(declare-fun b_lambda!126421 () Bool)

(assert (=> (not b_lambda!126421) (not b!4301537)))

(declare-fun m!4893767 () Bool)

(assert (=> b!4301537 m!4893767))

(declare-fun m!4893769 () Bool)

(assert (=> b!4301538 m!4893769))

(assert (=> b!4301270 d!1266839))

(assert (=> b!4301270 d!1266763))

(declare-fun bs!604052 () Bool)

(declare-fun d!1266841 () Bool)

(assert (= bs!604052 (and d!1266841 d!1266811)))

(declare-fun lambda!132053 () Int)

(assert (=> bs!604052 (= lambda!132053 lambda!132050)))

(declare-fun bs!604053 () Bool)

(assert (= bs!604053 (and d!1266841 b!4301270)))

(assert (=> bs!604053 (= lambda!132053 lambda!132040)))

(declare-fun bs!604054 () Bool)

(assert (= bs!604054 (and d!1266841 d!1266809)))

(assert (=> bs!604054 (= lambda!132053 lambda!132047)))

(declare-fun bs!604055 () Bool)

(assert (= bs!604055 (and d!1266841 d!1266789)))

(assert (=> bs!604055 (= lambda!132053 lambda!132046)))

(declare-fun bs!604056 () Bool)

(assert (= bs!604056 (and d!1266841 b!4301295)))

(assert (=> bs!604056 (= lambda!132053 lambda!132043)))

(declare-fun e!2673954 () Bool)

(assert (=> d!1266841 e!2673954))

(declare-fun res!1762956 () Bool)

(assert (=> d!1266841 (=> (not res!1762956) (not e!2673954))))

(assert (=> d!1266841 (= res!1762956 (contains!9895 lt!1523322 (hash!845 (hashF!6489 thiss!42308) key!2048)))))

(declare-fun lt!1523466 () Unit!66949)

(declare-fun choose!26180 (ListLongMap!823 K!9099 Hashable!4457) Unit!66949)

(assert (=> d!1266841 (= lt!1523466 (choose!26180 lt!1523322 key!2048 (hashF!6489 thiss!42308)))))

(assert (=> d!1266841 (forall!8645 (toList!2217 lt!1523322) lambda!132053)))

(assert (=> d!1266841 (= (lemmaInGenericMapThenInLongMap!111 lt!1523322 key!2048 (hashF!6489 thiss!42308)) lt!1523466)))

(declare-fun b!4301541 () Bool)

(assert (=> b!4301541 (= e!2673954 (isDefined!7479 (getPair!111 (apply!10884 lt!1523322 (hash!845 (hashF!6489 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1266841 res!1762956) b!4301541))

(assert (=> d!1266841 m!4893449))

(assert (=> d!1266841 m!4893449))

(declare-fun m!4893771 () Bool)

(assert (=> d!1266841 m!4893771))

(declare-fun m!4893773 () Bool)

(assert (=> d!1266841 m!4893773))

(declare-fun m!4893775 () Bool)

(assert (=> d!1266841 m!4893775))

(assert (=> b!4301541 m!4893449))

(assert (=> b!4301541 m!4893449))

(declare-fun m!4893777 () Bool)

(assert (=> b!4301541 m!4893777))

(assert (=> b!4301541 m!4893777))

(declare-fun m!4893779 () Bool)

(assert (=> b!4301541 m!4893779))

(assert (=> b!4301541 m!4893779))

(declare-fun m!4893781 () Bool)

(assert (=> b!4301541 m!4893781))

(assert (=> b!4301300 d!1266841))

(declare-fun bs!604057 () Bool)

(declare-fun d!1266843 () Bool)

(assert (= bs!604057 (and d!1266843 d!1266811)))

(declare-fun lambda!132056 () Int)

(assert (=> bs!604057 (not (= lambda!132056 lambda!132050))))

(declare-fun bs!604058 () Bool)

(assert (= bs!604058 (and d!1266843 b!4301270)))

(assert (=> bs!604058 (not (= lambda!132056 lambda!132040))))

(declare-fun bs!604059 () Bool)

(assert (= bs!604059 (and d!1266843 d!1266809)))

(assert (=> bs!604059 (not (= lambda!132056 lambda!132047))))

(declare-fun bs!604060 () Bool)

(assert (= bs!604060 (and d!1266843 d!1266789)))

(assert (=> bs!604060 (not (= lambda!132056 lambda!132046))))

(declare-fun bs!604061 () Bool)

(assert (= bs!604061 (and d!1266843 b!4301295)))

(assert (=> bs!604061 (not (= lambda!132056 lambda!132043))))

(declare-fun bs!604062 () Bool)

(assert (= bs!604062 (and d!1266843 d!1266841)))

(assert (=> bs!604062 (not (= lambda!132056 lambda!132053))))

(assert (=> d!1266843 true))

(assert (=> d!1266843 (= (allKeysSameHashInMap!278 (map!9930 (v!41958 (underlying!9312 thiss!42308))) (hashF!6489 thiss!42308)) (forall!8645 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))) lambda!132056))))

(declare-fun bs!604063 () Bool)

(assert (= bs!604063 d!1266843))

(declare-fun m!4893783 () Bool)

(assert (=> bs!604063 m!4893783))

(assert (=> b!4301271 d!1266843))

(assert (=> b!4301271 d!1266763))

(declare-fun mapIsEmpty!20392 () Bool)

(declare-fun mapRes!20392 () Bool)

(assert (=> mapIsEmpty!20392 mapRes!20392))

(declare-fun tp!1321647 () Bool)

(declare-fun e!2673956 () Bool)

(declare-fun b!4301544 () Bool)

(assert (=> b!4301544 (= e!2673956 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321647))))

(declare-fun mapNonEmpty!20392 () Bool)

(declare-fun tp!1321646 () Bool)

(assert (=> mapNonEmpty!20392 (= mapRes!20392 (and tp!1321646 e!2673956))))

(declare-fun mapRest!20392 () (Array (_ BitVec 32) List!48095))

(declare-fun mapValue!20392 () List!48095)

(declare-fun mapKey!20392 () (_ BitVec 32))

(assert (=> mapNonEmpty!20392 (= mapRest!20391 (store mapRest!20392 mapKey!20392 mapValue!20392))))

(declare-fun e!2673955 () Bool)

(declare-fun b!4301545 () Bool)

(declare-fun tp!1321648 () Bool)

(assert (=> b!4301545 (= e!2673955 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321648))))

(declare-fun condMapEmpty!20392 () Bool)

(declare-fun mapDefault!20392 () List!48095)

(assert (=> mapNonEmpty!20391 (= condMapEmpty!20392 (= mapRest!20391 ((as const (Array (_ BitVec 32) List!48095)) mapDefault!20392)))))

(assert (=> mapNonEmpty!20391 (= tp!1321642 (and e!2673955 mapRes!20392))))

(assert (= (and mapNonEmpty!20391 condMapEmpty!20392) mapIsEmpty!20392))

(assert (= (and mapNonEmpty!20391 (not condMapEmpty!20392)) mapNonEmpty!20392))

(assert (= (and mapNonEmpty!20392 ((_ is Cons!47971) mapValue!20392)) b!4301544))

(assert (= (and mapNonEmpty!20391 ((_ is Cons!47971) mapDefault!20392)) b!4301545))

(declare-fun m!4893785 () Bool)

(assert (=> mapNonEmpty!20392 m!4893785))

(declare-fun e!2673957 () Bool)

(declare-fun tp!1321649 () Bool)

(declare-fun b!4301546 () Bool)

(assert (=> b!4301546 (= e!2673957 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321649))))

(assert (=> tb!257249 (= result!314558 e!2673957)))

(assert (= (and tb!257249 ((_ is Cons!47971) (dynLambda!20366 (defaultEntry!4926 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308))))) (hash!845 (hashF!6489 thiss!42308) key!2048)))) b!4301546))

(declare-fun tp!1321650 () Bool)

(declare-fun b!4301547 () Bool)

(declare-fun e!2673958 () Bool)

(assert (=> b!4301547 (= e!2673958 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321650))))

(assert (=> b!4301330 (= tp!1321643 e!2673958)))

(assert (= (and b!4301330 ((_ is Cons!47971) (t!354858 mapValue!20391))) b!4301547))

(declare-fun b!4301548 () Bool)

(declare-fun e!2673959 () Bool)

(declare-fun tp!1321651 () Bool)

(assert (=> b!4301548 (= e!2673959 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321651))))

(assert (=> b!4301322 (= tp!1321634 e!2673959)))

(assert (= (and b!4301322 ((_ is Cons!47971) (t!354858 (minValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))) b!4301548))

(declare-fun e!2673960 () Bool)

(declare-fun tp!1321652 () Bool)

(declare-fun b!4301549 () Bool)

(assert (=> b!4301549 (= e!2673960 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321652))))

(assert (=> b!4301332 (= tp!1321645 e!2673960)))

(assert (= (and b!4301332 ((_ is Cons!47971) (t!354858 mapValue!20388))) b!4301549))

(declare-fun e!2673961 () Bool)

(declare-fun b!4301550 () Bool)

(declare-fun tp!1321653 () Bool)

(assert (=> b!4301550 (= e!2673961 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321653))))

(assert (=> b!4301331 (= tp!1321644 e!2673961)))

(assert (= (and b!4301331 ((_ is Cons!47971) (t!354858 mapDefault!20391))) b!4301550))

(declare-fun tp!1321654 () Bool)

(declare-fun e!2673962 () Bool)

(declare-fun b!4301551 () Bool)

(assert (=> b!4301551 (= e!2673962 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321654))))

(assert (=> b!4301321 (= tp!1321633 e!2673962)))

(assert (= (and b!4301321 ((_ is Cons!47971) (t!354858 (zeroValue!4800 (v!41957 (underlying!9311 (v!41958 (underlying!9312 thiss!42308)))))))) b!4301551))

(declare-fun tp!1321655 () Bool)

(declare-fun e!2673963 () Bool)

(declare-fun b!4301552 () Bool)

(assert (=> b!4301552 (= e!2673963 (and tp_is_empty!23309 tp_is_empty!23311 tp!1321655))))

(assert (=> b!4301323 (= tp!1321635 e!2673963)))

(assert (= (and b!4301323 ((_ is Cons!47971) (t!354858 mapDefault!20388))) b!4301552))

(declare-fun b_lambda!126423 () Bool)

(assert (= b_lambda!126415 (or (and b!4301257 b_free!128123) b_lambda!126423)))

(declare-fun b_lambda!126425 () Bool)

(assert (= b_lambda!126421 (or b!4301270 b_lambda!126425)))

(declare-fun bs!604064 () Bool)

(declare-fun d!1266845 () Bool)

(assert (= bs!604064 (and d!1266845 b!4301270)))

(assert (=> bs!604064 (= (dynLambda!20367 lambda!132040 (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308)))))) (noDuplicateKeys!156 (_2!26274 (h!53392 (toList!2217 (map!9930 (v!41958 (underlying!9312 thiss!42308))))))))))

(declare-fun m!4893787 () Bool)

(assert (=> bs!604064 m!4893787))

(assert (=> b!4301537 d!1266845))

(declare-fun b_lambda!126427 () Bool)

(assert (= b_lambda!126417 (or (and b!4301257 b_free!128123) b_lambda!126427)))

(declare-fun b_lambda!126429 () Bool)

(assert (= b_lambda!126413 (or (and b!4301257 b_free!128123) b_lambda!126429)))

(declare-fun b_lambda!126431 () Bool)

(assert (= b_lambda!126419 (or (and b!4301257 b_free!128123) b_lambda!126431)))

(declare-fun b_lambda!126433 () Bool)

(assert (= b_lambda!126411 (or b!4301295 b_lambda!126433)))

(declare-fun bs!604065 () Bool)

(declare-fun d!1266847 () Bool)

(assert (= bs!604065 (and d!1266847 b!4301295)))

(assert (=> bs!604065 (= (dynLambda!20367 lambda!132043 (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338))) (noDuplicateKeys!156 (_2!26274 (tuple2!45991 lt!1523338 (apply!10883 (v!41958 (underlying!9312 thiss!42308)) lt!1523338)))))))

(declare-fun m!4893789 () Bool)

(assert (=> bs!604065 m!4893789))

(assert (=> d!1266777 d!1266847))

(check-sat (not d!1266813) (not bm!296639) (not b!4301519) (not b!4301551) (not b!4301409) (not b!4301389) tp_is_empty!23309 (not b!4301546) (not b!4301497) (not b!4301438) (not b!4301538) (not b!4301518) (not bm!296626) (not b!4301531) (not b!4301437) (not b!4301545) (not b!4301520) (not d!1266817) b_and!339497 (not b!4301454) (not b!4301351) (not b!4301541) (not b!4301432) (not b!4301522) (not b!4301528) (not d!1266843) (not b!4301390) (not b_lambda!126423) (not bm!296640) (not d!1266775) (not b!4301552) (not b!4301392) (not b!4301460) (not b!4301365) (not d!1266787) (not b!4301396) (not b!4301511) (not b!4301388) (not b!4301442) (not bs!604065) (not d!1266795) (not d!1266805) (not b!4301527) (not d!1266823) (not b!4301523) (not d!1266819) (not d!1266803) (not d!1266829) (not b!4301397) (not b!4301521) b_and!339507 (not b!4301385) (not b_lambda!126433) (not b!4301342) (not d!1266837) (not bs!604064) (not d!1266801) (not d!1266831) (not b_lambda!126429) (not bm!296636) (not b!4301451) (not b!4301434) (not mapNonEmpty!20392) (not b_lambda!126427) (not b!4301384) (not d!1266841) (not b!4301544) (not b!4301548) (not b!4301549) (not b!4301360) (not b!4301350) (not d!1266811) (not b!4301524) (not d!1266789) (not b_lambda!126431) (not b!4301446) (not b!4301349) (not b!4301338) (not d!1266779) (not b!4301436) (not d!1266781) (not bm!296637) (not b!4301341) (not d!1266825) (not b_next!128827) (not b!4301550) (not b!4301358) (not d!1266777) (not b!4301510) (not d!1266785) (not b!4301435) tp_is_empty!23311 (not b!4301398) (not d!1266793) (not b!4301503) (not b!4301433) (not b!4301449) (not b!4301547) (not b_lambda!126409) (not b!4301530) (not b!4301532) (not d!1266835) (not b!4301393) (not b!4301509) (not d!1266821) (not d!1266833) (not d!1266791) (not b!4301515) (not b_lambda!126425) (not b!4301429) (not d!1266809) (not b!4301529) (not b_next!128829) (not d!1266807) (not tb!257251))
(check-sat b_and!339507 b_and!339497 (not b_next!128829) (not b_next!128827))

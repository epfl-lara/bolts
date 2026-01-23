; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242520 () Bool)

(assert start!242520)

(declare-fun b!2484101 () Bool)

(declare-fun b_free!72433 () Bool)

(declare-fun b_next!73137 () Bool)

(assert (=> b!2484101 (= b_free!72433 (not b_next!73137))))

(declare-fun tp!795237 () Bool)

(declare-fun b_and!188701 () Bool)

(assert (=> b!2484101 (= tp!795237 b_and!188701)))

(declare-fun b!2484107 () Bool)

(declare-fun b_free!72435 () Bool)

(declare-fun b_next!73139 () Bool)

(assert (=> b!2484107 (= b_free!72435 (not b_next!73139))))

(declare-fun tp!795242 () Bool)

(declare-fun b_and!188703 () Bool)

(assert (=> b!2484107 (= tp!795242 b_and!188703)))

(declare-fun b!2484099 () Bool)

(declare-fun res!1051430 () Bool)

(declare-fun e!1577109 () Bool)

(assert (=> b!2484099 (=> (not res!1051430) (not e!1577109))))

(declare-datatypes ((Hashable!3304 0))(
  ( (HashableExt!3303 (__x!19088 Int)) )
))
(declare-datatypes ((K!5570 0))(
  ( (K!5571 (val!8931 Int)) )
))
(declare-datatypes ((V!5772 0))(
  ( (V!5773 (val!8932 Int)) )
))
(declare-datatypes ((tuple2!29010 0))(
  ( (tuple2!29011 (_1!17047 K!5570) (_2!17047 V!5772)) )
))
(declare-datatypes ((List!29263 0))(
  ( (Nil!29163) (Cons!29163 (h!34572 tuple2!29010) (t!210936 List!29263)) )
))
(declare-datatypes ((array!12053 0))(
  ( (array!12054 (arr!5378 (Array (_ BitVec 32) List!29263)) (size!22797 (_ BitVec 32))) )
))
(declare-datatypes ((array!12055 0))(
  ( (array!12056 (arr!5379 (Array (_ BitVec 32) (_ BitVec 64))) (size!22798 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6788 0))(
  ( (LongMapFixedSize!6789 (defaultEntry!3768 Int) (mask!8580 (_ BitVec 32)) (extraKeys!3642 (_ BitVec 32)) (zeroValue!3652 List!29263) (minValue!3652 List!29263) (_size!6835 (_ BitVec 32)) (_keys!3691 array!12055) (_values!3674 array!12053) (_vacant!3455 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13393 0))(
  ( (Cell!13394 (v!31556 LongMapFixedSize!6788)) )
))
(declare-datatypes ((MutLongMap!3394 0))(
  ( (LongMap!3394 (underlying!6995 Cell!13393)) (MutLongMapExt!3393 (__x!19089 Int)) )
))
(declare-datatypes ((Cell!13395 0))(
  ( (Cell!13396 (v!31557 MutLongMap!3394)) )
))
(declare-datatypes ((MutableMap!3304 0))(
  ( (MutableMapExt!3303 (__x!19090 Int)) (HashMap!3304 (underlying!6996 Cell!13395) (hashF!5276 Hashable!3304) (_size!6836 (_ BitVec 32)) (defaultValue!3466 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3304)

(declare-fun key!2246 () K!5570)

(declare-fun contains!5162 (MutableMap!3304 K!5570) Bool)

(assert (=> b!2484099 (= res!1051430 (contains!5162 thiss!42540 key!2246))))

(declare-fun b!2484100 () Bool)

(declare-fun res!1051432 () Bool)

(assert (=> b!2484100 (=> (not res!1051432) (not e!1577109))))

(declare-fun valid!2602 (MutableMap!3304) Bool)

(assert (=> b!2484100 (= res!1051432 (valid!2602 thiss!42540))))

(declare-fun mapNonEmpty!15672 () Bool)

(declare-fun mapRes!15672 () Bool)

(declare-fun tp!795243 () Bool)

(declare-fun tp!795239 () Bool)

(assert (=> mapNonEmpty!15672 (= mapRes!15672 (and tp!795243 tp!795239))))

(declare-fun mapKey!15672 () (_ BitVec 32))

(declare-fun mapRest!15672 () (Array (_ BitVec 32) List!29263))

(declare-fun mapValue!15672 () List!29263)

(assert (=> mapNonEmpty!15672 (= (arr!5378 (_values!3674 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) (store mapRest!15672 mapKey!15672 mapValue!15672))))

(declare-fun tp!795241 () Bool)

(declare-fun e!1577111 () Bool)

(declare-fun tp!795240 () Bool)

(declare-fun e!1577117 () Bool)

(declare-fun array_inv!3863 (array!12055) Bool)

(declare-fun array_inv!3864 (array!12053) Bool)

(assert (=> b!2484101 (= e!1577117 (and tp!795237 tp!795241 tp!795240 (array_inv!3863 (_keys!3691 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) (array_inv!3864 (_values!3674 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) e!1577111))))

(declare-fun b!2484102 () Bool)

(declare-fun tp!795238 () Bool)

(assert (=> b!2484102 (= e!1577111 (and tp!795238 mapRes!15672))))

(declare-fun condMapEmpty!15672 () Bool)

(declare-fun mapDefault!15672 () List!29263)

(assert (=> b!2484102 (= condMapEmpty!15672 (= (arr!5378 (_values!3674 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29263)) mapDefault!15672)))))

(declare-fun res!1051433 () Bool)

(assert (=> start!242520 (=> (not res!1051433) (not e!1577109))))

(get-info :version)

(assert (=> start!242520 (= res!1051433 ((_ is HashMap!3304) thiss!42540))))

(assert (=> start!242520 e!1577109))

(declare-fun e!1577115 () Bool)

(assert (=> start!242520 e!1577115))

(declare-fun tp_is_empty!12331 () Bool)

(assert (=> start!242520 tp_is_empty!12331))

(declare-fun mapIsEmpty!15672 () Bool)

(assert (=> mapIsEmpty!15672 mapRes!15672))

(declare-fun b!2484103 () Bool)

(declare-fun e!1577114 () Bool)

(declare-datatypes ((tuple2!29012 0))(
  ( (tuple2!29013 (_1!17048 (_ BitVec 64)) (_2!17048 List!29263)) )
))
(declare-datatypes ((List!29264 0))(
  ( (Nil!29164) (Cons!29164 (h!34573 tuple2!29012) (t!210937 List!29264)) )
))
(declare-datatypes ((ListLongMap!575 0))(
  ( (ListLongMap!576 (toList!1626 List!29264)) )
))
(declare-fun lt!890217 () ListLongMap!575)

(declare-datatypes ((Unit!42737 0))(
  ( (Unit!42738) )
))
(declare-datatypes ((tuple2!29014 0))(
  ( (tuple2!29015 (_1!17049 Unit!42737) (_2!17049 MutableMap!3304)) )
))
(declare-fun lt!890219 () tuple2!29014)

(declare-fun allKeysSameHashInMap!173 (ListLongMap!575 Hashable!3304) Bool)

(assert (=> b!2484103 (= e!1577114 (allKeysSameHashInMap!173 lt!890217 (hashF!5276 (_2!17049 lt!890219))))))

(declare-fun b!2484104 () Bool)

(declare-fun e!1577116 () Bool)

(declare-fun e!1577108 () Bool)

(declare-fun lt!890216 () MutLongMap!3394)

(assert (=> b!2484104 (= e!1577116 (and e!1577108 ((_ is LongMap!3394) lt!890216)))))

(assert (=> b!2484104 (= lt!890216 (v!31557 (underlying!6996 thiss!42540)))))

(declare-fun b!2484105 () Bool)

(declare-fun e!1577112 () Bool)

(assert (=> b!2484105 (= e!1577112 e!1577114)))

(declare-fun res!1051429 () Bool)

(assert (=> b!2484105 (=> res!1051429 e!1577114)))

(declare-fun lambda!94226 () Int)

(declare-fun forall!5984 (List!29264 Int) Bool)

(assert (=> b!2484105 (= res!1051429 (not (forall!5984 (toList!1626 lt!890217) lambda!94226)))))

(declare-fun lt!890215 () List!29263)

(declare-fun lt!890208 () (_ BitVec 64))

(declare-fun allKeysSameHash!73 (List!29263 (_ BitVec 64) Hashable!3304) Bool)

(assert (=> b!2484105 (allKeysSameHash!73 lt!890215 lt!890208 (hashF!5276 (_2!17049 lt!890219)))))

(declare-fun lt!890210 () Unit!42737)

(declare-fun lt!890209 () List!29263)

(declare-fun lemmaRemovePairForKeyPreservesHash!62 (List!29263 K!5570 (_ BitVec 64) Hashable!3304) Unit!42737)

(assert (=> b!2484105 (= lt!890210 (lemmaRemovePairForKeyPreservesHash!62 lt!890209 key!2246 lt!890208 (hashF!5276 (_2!17049 lt!890219))))))

(assert (=> b!2484105 (allKeysSameHash!73 lt!890209 lt!890208 (hashF!5276 (_2!17049 lt!890219)))))

(declare-fun lt!890211 () Unit!42737)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!66 (List!29264 (_ BitVec 64) List!29263 Hashable!3304) Unit!42737)

(assert (=> b!2484105 (= lt!890211 (lemmaInLongMapAllKeySameHashThenForTuple!66 (toList!1626 lt!890217) lt!890208 lt!890209 (hashF!5276 (_2!17049 lt!890219))))))

(declare-fun b!2484106 () Bool)

(declare-fun e!1577113 () Bool)

(assert (=> b!2484106 (= e!1577113 e!1577117)))

(assert (=> b!2484107 (= e!1577115 (and e!1577116 tp!795242))))

(declare-fun b!2484108 () Bool)

(assert (=> b!2484108 (= e!1577109 (not e!1577112))))

(declare-fun res!1051431 () Bool)

(assert (=> b!2484108 (=> res!1051431 e!1577112)))

(declare-datatypes ((tuple2!29016 0))(
  ( (tuple2!29017 (_1!17050 Bool) (_2!17050 MutLongMap!3394)) )
))
(declare-fun lt!890213 () tuple2!29016)

(assert (=> b!2484108 (= res!1051431 (not (_1!17050 lt!890213)))))

(declare-fun noDuplicateKeys!99 (List!29263) Bool)

(assert (=> b!2484108 (noDuplicateKeys!99 lt!890215)))

(declare-fun lt!890218 () Unit!42737)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!79 (List!29263 K!5570) Unit!42737)

(assert (=> b!2484108 (= lt!890218 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!79 lt!890209 key!2246))))

(declare-fun lt!890214 () Cell!13395)

(declare-fun Unit!42739 () Unit!42737)

(declare-fun Unit!42740 () Unit!42737)

(assert (=> b!2484108 (= lt!890219 (ite (_1!17050 lt!890213) (tuple2!29015 Unit!42739 (HashMap!3304 lt!890214 (hashF!5276 thiss!42540) (bvsub (_size!6836 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3466 thiss!42540))) (tuple2!29015 Unit!42740 (HashMap!3304 lt!890214 (hashF!5276 thiss!42540) (_size!6836 thiss!42540) (defaultValue!3466 thiss!42540)))))))

(assert (=> b!2484108 (= lt!890214 (Cell!13396 (_2!17050 lt!890213)))))

(declare-fun update!212 (MutLongMap!3394 (_ BitVec 64) List!29263) tuple2!29016)

(assert (=> b!2484108 (= lt!890213 (update!212 (v!31557 (underlying!6996 thiss!42540)) lt!890208 lt!890215))))

(declare-fun removePairForKey!91 (List!29263 K!5570) List!29263)

(assert (=> b!2484108 (= lt!890215 (removePairForKey!91 lt!890209 key!2246))))

(declare-datatypes ((ListMap!1107 0))(
  ( (ListMap!1108 (toList!1627 List!29263)) )
))
(declare-fun lt!890207 () ListMap!1107)

(declare-fun map!6265 (MutableMap!3304) ListMap!1107)

(assert (=> b!2484108 (= lt!890207 (map!6265 thiss!42540))))

(declare-fun lt!890212 () Unit!42737)

(declare-fun forallContained!880 (List!29264 Int tuple2!29012) Unit!42737)

(assert (=> b!2484108 (= lt!890212 (forallContained!880 (toList!1626 lt!890217) lambda!94226 (tuple2!29013 lt!890208 lt!890209)))))

(declare-fun map!6266 (MutLongMap!3394) ListLongMap!575)

(assert (=> b!2484108 (= lt!890217 (map!6266 (v!31557 (underlying!6996 thiss!42540))))))

(declare-fun apply!6954 (MutLongMap!3394 (_ BitVec 64)) List!29263)

(assert (=> b!2484108 (= lt!890209 (apply!6954 (v!31557 (underlying!6996 thiss!42540)) lt!890208))))

(declare-fun hash!722 (Hashable!3304 K!5570) (_ BitVec 64))

(assert (=> b!2484108 (= lt!890208 (hash!722 (hashF!5276 thiss!42540) key!2246))))

(declare-fun b!2484109 () Bool)

(assert (=> b!2484109 (= e!1577108 e!1577113)))

(assert (= (and start!242520 res!1051433) b!2484100))

(assert (= (and b!2484100 res!1051432) b!2484099))

(assert (= (and b!2484099 res!1051430) b!2484108))

(assert (= (and b!2484108 (not res!1051431)) b!2484105))

(assert (= (and b!2484105 (not res!1051429)) b!2484103))

(assert (= (and b!2484102 condMapEmpty!15672) mapIsEmpty!15672))

(assert (= (and b!2484102 (not condMapEmpty!15672)) mapNonEmpty!15672))

(assert (= b!2484101 b!2484102))

(assert (= b!2484106 b!2484101))

(assert (= b!2484109 b!2484106))

(assert (= (and b!2484104 ((_ is LongMap!3394) (v!31557 (underlying!6996 thiss!42540)))) b!2484109))

(assert (= b!2484107 b!2484104))

(assert (= (and start!242520 ((_ is HashMap!3304) thiss!42540)) b!2484107))

(declare-fun m!2851995 () Bool)

(assert (=> b!2484103 m!2851995))

(declare-fun m!2851997 () Bool)

(assert (=> b!2484099 m!2851997))

(declare-fun m!2851999 () Bool)

(assert (=> mapNonEmpty!15672 m!2851999))

(declare-fun m!2852001 () Bool)

(assert (=> b!2484108 m!2852001))

(declare-fun m!2852003 () Bool)

(assert (=> b!2484108 m!2852003))

(declare-fun m!2852005 () Bool)

(assert (=> b!2484108 m!2852005))

(declare-fun m!2852007 () Bool)

(assert (=> b!2484108 m!2852007))

(declare-fun m!2852009 () Bool)

(assert (=> b!2484108 m!2852009))

(declare-fun m!2852011 () Bool)

(assert (=> b!2484108 m!2852011))

(declare-fun m!2852013 () Bool)

(assert (=> b!2484108 m!2852013))

(declare-fun m!2852015 () Bool)

(assert (=> b!2484108 m!2852015))

(declare-fun m!2852017 () Bool)

(assert (=> b!2484108 m!2852017))

(declare-fun m!2852019 () Bool)

(assert (=> b!2484101 m!2852019))

(declare-fun m!2852021 () Bool)

(assert (=> b!2484101 m!2852021))

(declare-fun m!2852023 () Bool)

(assert (=> b!2484100 m!2852023))

(declare-fun m!2852025 () Bool)

(assert (=> b!2484105 m!2852025))

(declare-fun m!2852027 () Bool)

(assert (=> b!2484105 m!2852027))

(declare-fun m!2852029 () Bool)

(assert (=> b!2484105 m!2852029))

(declare-fun m!2852031 () Bool)

(assert (=> b!2484105 m!2852031))

(declare-fun m!2852033 () Bool)

(assert (=> b!2484105 m!2852033))

(check-sat (not b!2484108) (not b!2484105) b_and!188703 tp_is_empty!12331 (not b!2484101) (not b_next!73139) (not b!2484103) b_and!188701 (not b!2484099) (not b!2484102) (not b_next!73137) (not mapNonEmpty!15672) (not b!2484100))
(check-sat b_and!188703 b_and!188701 (not b_next!73137) (not b_next!73139))
(get-model)

(declare-fun bs!467678 () Bool)

(declare-fun d!713280 () Bool)

(assert (= bs!467678 (and d!713280 b!2484108)))

(declare-fun lambda!94229 () Int)

(assert (=> bs!467678 (not (= lambda!94229 lambda!94226))))

(assert (=> d!713280 true))

(assert (=> d!713280 (= (allKeysSameHashInMap!173 lt!890217 (hashF!5276 (_2!17049 lt!890219))) (forall!5984 (toList!1626 lt!890217) lambda!94229))))

(declare-fun bs!467679 () Bool)

(assert (= bs!467679 d!713280))

(declare-fun m!2852035 () Bool)

(assert (=> bs!467679 m!2852035))

(assert (=> b!2484103 d!713280))

(declare-fun bs!467680 () Bool)

(declare-fun b!2484116 () Bool)

(assert (= bs!467680 (and b!2484116 b!2484108)))

(declare-fun lambda!94232 () Int)

(assert (=> bs!467680 (= lambda!94232 lambda!94226)))

(declare-fun bs!467681 () Bool)

(assert (= bs!467681 (and b!2484116 d!713280)))

(assert (=> bs!467681 (not (= lambda!94232 lambda!94229))))

(declare-fun d!713282 () Bool)

(declare-fun res!1051438 () Bool)

(declare-fun e!1577120 () Bool)

(assert (=> d!713282 (=> (not res!1051438) (not e!1577120))))

(declare-fun valid!2603 (MutLongMap!3394) Bool)

(assert (=> d!713282 (= res!1051438 (valid!2603 (v!31557 (underlying!6996 thiss!42540))))))

(assert (=> d!713282 (= (valid!2602 thiss!42540) e!1577120)))

(declare-fun res!1051439 () Bool)

(assert (=> b!2484116 (=> (not res!1051439) (not e!1577120))))

(assert (=> b!2484116 (= res!1051439 (forall!5984 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540)))) lambda!94232))))

(declare-fun b!2484117 () Bool)

(assert (=> b!2484117 (= e!1577120 (allKeysSameHashInMap!173 (map!6266 (v!31557 (underlying!6996 thiss!42540))) (hashF!5276 thiss!42540)))))

(assert (= (and d!713282 res!1051438) b!2484116))

(assert (= (and b!2484116 res!1051439) b!2484117))

(declare-fun m!2852037 () Bool)

(assert (=> d!713282 m!2852037))

(assert (=> b!2484116 m!2852001))

(declare-fun m!2852039 () Bool)

(assert (=> b!2484116 m!2852039))

(assert (=> b!2484117 m!2852001))

(assert (=> b!2484117 m!2852001))

(declare-fun m!2852041 () Bool)

(assert (=> b!2484117 m!2852041))

(assert (=> b!2484100 d!713282))

(declare-fun bs!467682 () Bool)

(declare-fun b!2484143 () Bool)

(assert (= bs!467682 (and b!2484143 b!2484108)))

(declare-fun lambda!94235 () Int)

(assert (=> bs!467682 (= lambda!94235 lambda!94226)))

(declare-fun bs!467683 () Bool)

(assert (= bs!467683 (and b!2484143 d!713280)))

(assert (=> bs!467683 (not (= lambda!94235 lambda!94229))))

(declare-fun bs!467684 () Bool)

(assert (= bs!467684 (and b!2484143 b!2484116)))

(assert (=> bs!467684 (= lambda!94235 lambda!94232)))

(declare-fun b!2484140 () Bool)

(declare-fun e!1577138 () Unit!42737)

(declare-fun e!1577139 () Unit!42737)

(assert (=> b!2484140 (= e!1577138 e!1577139)))

(declare-fun res!1051448 () Bool)

(declare-fun call!152275 () Bool)

(assert (=> b!2484140 (= res!1051448 call!152275)))

(declare-fun e!1577135 () Bool)

(assert (=> b!2484140 (=> (not res!1051448) (not e!1577135))))

(declare-fun c!394894 () Bool)

(assert (=> b!2484140 (= c!394894 e!1577135)))

(declare-fun b!2484141 () Bool)

(declare-fun lt!890276 () Unit!42737)

(assert (=> b!2484141 (= e!1577138 lt!890276)))

(declare-fun lt!890261 () ListLongMap!575)

(declare-fun call!152277 () ListLongMap!575)

(assert (=> b!2484141 (= lt!890261 call!152277)))

(declare-fun lemmaInGenericMapThenInLongMap!77 (ListLongMap!575 K!5570 Hashable!3304) Unit!42737)

(assert (=> b!2484141 (= lt!890276 (lemmaInGenericMapThenInLongMap!77 lt!890261 key!2246 (hashF!5276 thiss!42540)))))

(declare-fun res!1051446 () Bool)

(assert (=> b!2484141 (= res!1051446 call!152275)))

(declare-fun e!1577140 () Bool)

(assert (=> b!2484141 (=> (not res!1051446) (not e!1577140))))

(assert (=> b!2484141 e!1577140))

(declare-fun b!2484142 () Bool)

(declare-fun e!1577141 () Unit!42737)

(declare-fun Unit!42741 () Unit!42737)

(assert (=> b!2484142 (= e!1577141 Unit!42741)))

(declare-fun bm!152270 () Bool)

(declare-fun call!152280 () Bool)

(declare-datatypes ((Option!5766 0))(
  ( (None!5765) (Some!5765 (v!31562 tuple2!29010)) )
))
(declare-fun call!152278 () Option!5766)

(declare-fun isDefined!4588 (Option!5766) Bool)

(assert (=> bm!152270 (= call!152280 (isDefined!4588 call!152278))))

(declare-fun d!713284 () Bool)

(declare-fun lt!890265 () Bool)

(declare-fun contains!5163 (ListMap!1107 K!5570) Bool)

(assert (=> d!713284 (= lt!890265 (contains!5163 (map!6265 thiss!42540) key!2246))))

(declare-fun e!1577136 () Bool)

(assert (=> d!713284 (= lt!890265 e!1577136)))

(declare-fun res!1051447 () Bool)

(assert (=> d!713284 (=> (not res!1051447) (not e!1577136))))

(declare-fun lt!890263 () (_ BitVec 64))

(declare-fun contains!5164 (MutLongMap!3394 (_ BitVec 64)) Bool)

(assert (=> d!713284 (= res!1051447 (contains!5164 (v!31557 (underlying!6996 thiss!42540)) lt!890263))))

(declare-fun lt!890278 () Unit!42737)

(assert (=> d!713284 (= lt!890278 e!1577138)))

(declare-fun c!394895 () Bool)

(declare-fun extractMap!182 (List!29264) ListMap!1107)

(assert (=> d!713284 (= c!394895 (contains!5163 (extractMap!182 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540))))) key!2246))))

(declare-fun lt!890271 () Unit!42737)

(assert (=> d!713284 (= lt!890271 e!1577141)))

(declare-fun c!394892 () Bool)

(assert (=> d!713284 (= c!394892 (contains!5164 (v!31557 (underlying!6996 thiss!42540)) lt!890263))))

(assert (=> d!713284 (= lt!890263 (hash!722 (hashF!5276 thiss!42540) key!2246))))

(assert (=> d!713284 (valid!2602 thiss!42540)))

(assert (=> d!713284 (= (contains!5162 thiss!42540 key!2246) lt!890265)))

(assert (=> b!2484143 (= e!1577141 (forallContained!880 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540)))) lambda!94235 (tuple2!29013 lt!890263 (apply!6954 (v!31557 (underlying!6996 thiss!42540)) lt!890263))))))

(declare-fun c!394893 () Bool)

(declare-fun contains!5165 (List!29264 tuple2!29012) Bool)

(assert (=> b!2484143 (= c!394893 (not (contains!5165 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540)))) (tuple2!29013 lt!890263 (apply!6954 (v!31557 (underlying!6996 thiss!42540)) lt!890263)))))))

(declare-fun lt!890264 () Unit!42737)

(declare-fun e!1577137 () Unit!42737)

(assert (=> b!2484143 (= lt!890264 e!1577137)))

(declare-fun b!2484144 () Bool)

(declare-fun getPair!77 (List!29263 K!5570) Option!5766)

(assert (=> b!2484144 (= e!1577136 (isDefined!4588 (getPair!77 (apply!6954 (v!31557 (underlying!6996 thiss!42540)) lt!890263) key!2246)))))

(declare-fun call!152279 () (_ BitVec 64))

(declare-fun call!152276 () List!29263)

(declare-fun bm!152271 () Bool)

(declare-fun apply!6955 (ListLongMap!575 (_ BitVec 64)) List!29263)

(assert (=> bm!152271 (= call!152276 (apply!6955 (ite c!394895 lt!890261 call!152277) call!152279))))

(declare-fun bm!152272 () Bool)

(assert (=> bm!152272 (= call!152277 (map!6266 (v!31557 (underlying!6996 thiss!42540))))))

(declare-fun bm!152273 () Bool)

(assert (=> bm!152273 (= call!152278 (getPair!77 call!152276 key!2246))))

(declare-fun b!2484145 () Bool)

(declare-fun Unit!42742 () Unit!42737)

(assert (=> b!2484145 (= e!1577137 Unit!42742)))

(declare-fun b!2484146 () Bool)

(declare-fun Unit!42743 () Unit!42737)

(assert (=> b!2484146 (= e!1577139 Unit!42743)))

(declare-fun b!2484147 () Bool)

(assert (=> b!2484147 false))

(declare-fun lt!890279 () Unit!42737)

(declare-fun lt!890269 () Unit!42737)

(assert (=> b!2484147 (= lt!890279 lt!890269)))

(declare-fun lt!890268 () List!29264)

(declare-fun lt!890272 () List!29263)

(assert (=> b!2484147 (contains!5165 lt!890268 (tuple2!29013 lt!890263 lt!890272))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!82 (List!29264 (_ BitVec 64) List!29263) Unit!42737)

(assert (=> b!2484147 (= lt!890269 (lemmaGetValueByKeyImpliesContainsTuple!82 lt!890268 lt!890263 lt!890272))))

(assert (=> b!2484147 (= lt!890272 (apply!6954 (v!31557 (underlying!6996 thiss!42540)) lt!890263))))

(assert (=> b!2484147 (= lt!890268 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540)))))))

(declare-fun lt!890277 () Unit!42737)

(declare-fun lt!890260 () Unit!42737)

(assert (=> b!2484147 (= lt!890277 lt!890260)))

(declare-fun lt!890267 () List!29264)

(declare-datatypes ((Option!5767 0))(
  ( (None!5766) (Some!5766 (v!31563 List!29263)) )
))
(declare-fun isDefined!4589 (Option!5767) Bool)

(declare-fun getValueByKey!146 (List!29264 (_ BitVec 64)) Option!5767)

(assert (=> b!2484147 (isDefined!4589 (getValueByKey!146 lt!890267 lt!890263))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!103 (List!29264 (_ BitVec 64)) Unit!42737)

(assert (=> b!2484147 (= lt!890260 (lemmaContainsKeyImpliesGetValueByKeyDefined!103 lt!890267 lt!890263))))

(assert (=> b!2484147 (= lt!890267 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540)))))))

(declare-fun lt!890262 () Unit!42737)

(declare-fun lt!890274 () Unit!42737)

(assert (=> b!2484147 (= lt!890262 lt!890274)))

(declare-fun lt!890273 () List!29264)

(declare-fun containsKey!150 (List!29264 (_ BitVec 64)) Bool)

(assert (=> b!2484147 (containsKey!150 lt!890273 lt!890263)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!78 (List!29264 (_ BitVec 64)) Unit!42737)

(assert (=> b!2484147 (= lt!890274 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!78 lt!890273 lt!890263))))

(assert (=> b!2484147 (= lt!890273 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540)))))))

(declare-fun Unit!42744 () Unit!42737)

(assert (=> b!2484147 (= e!1577137 Unit!42744)))

(declare-fun bm!152274 () Bool)

(declare-fun contains!5166 (ListLongMap!575 (_ BitVec 64)) Bool)

(assert (=> bm!152274 (= call!152275 (contains!5166 (ite c!394895 lt!890261 call!152277) call!152279))))

(declare-fun b!2484148 () Bool)

(assert (=> b!2484148 (= e!1577140 call!152280)))

(declare-fun b!2484149 () Bool)

(assert (=> b!2484149 (= e!1577135 call!152280)))

(declare-fun b!2484150 () Bool)

(assert (=> b!2484150 false))

(declare-fun lt!890270 () Unit!42737)

(declare-fun lt!890275 () Unit!42737)

(assert (=> b!2484150 (= lt!890270 lt!890275)))

(declare-fun lt!890266 () ListLongMap!575)

(assert (=> b!2484150 (contains!5163 (extractMap!182 (toList!1626 lt!890266)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!77 (ListLongMap!575 K!5570 Hashable!3304) Unit!42737)

(assert (=> b!2484150 (= lt!890275 (lemmaInLongMapThenInGenericMap!77 lt!890266 key!2246 (hashF!5276 thiss!42540)))))

(assert (=> b!2484150 (= lt!890266 call!152277)))

(declare-fun Unit!42745 () Unit!42737)

(assert (=> b!2484150 (= e!1577139 Unit!42745)))

(declare-fun bm!152275 () Bool)

(assert (=> bm!152275 (= call!152279 (hash!722 (hashF!5276 thiss!42540) key!2246))))

(assert (= (and d!713284 c!394892) b!2484143))

(assert (= (and d!713284 (not c!394892)) b!2484142))

(assert (= (and b!2484143 c!394893) b!2484147))

(assert (= (and b!2484143 (not c!394893)) b!2484145))

(assert (= (and d!713284 c!394895) b!2484141))

(assert (= (and d!713284 (not c!394895)) b!2484140))

(assert (= (and b!2484141 res!1051446) b!2484148))

(assert (= (and b!2484140 res!1051448) b!2484149))

(assert (= (and b!2484140 c!394894) b!2484150))

(assert (= (and b!2484140 (not c!394894)) b!2484146))

(assert (= (or b!2484141 b!2484140 b!2484149 b!2484150) bm!152272))

(assert (= (or b!2484141 b!2484148 b!2484140 b!2484149) bm!152275))

(assert (= (or b!2484148 b!2484149) bm!152271))

(assert (= (or b!2484141 b!2484140) bm!152274))

(assert (= (or b!2484148 b!2484149) bm!152273))

(assert (= (or b!2484148 b!2484149) bm!152270))

(assert (= (and d!713284 res!1051447) b!2484144))

(assert (=> bm!152272 m!2852001))

(declare-fun m!2852043 () Bool)

(assert (=> b!2484150 m!2852043))

(assert (=> b!2484150 m!2852043))

(declare-fun m!2852045 () Bool)

(assert (=> b!2484150 m!2852045))

(declare-fun m!2852047 () Bool)

(assert (=> b!2484150 m!2852047))

(declare-fun m!2852049 () Bool)

(assert (=> bm!152274 m!2852049))

(declare-fun m!2852051 () Bool)

(assert (=> b!2484147 m!2852051))

(assert (=> b!2484147 m!2852001))

(declare-fun m!2852053 () Bool)

(assert (=> b!2484147 m!2852053))

(declare-fun m!2852055 () Bool)

(assert (=> b!2484147 m!2852055))

(declare-fun m!2852057 () Bool)

(assert (=> b!2484147 m!2852057))

(declare-fun m!2852059 () Bool)

(assert (=> b!2484147 m!2852059))

(declare-fun m!2852061 () Bool)

(assert (=> b!2484147 m!2852061))

(assert (=> b!2484147 m!2852055))

(declare-fun m!2852063 () Bool)

(assert (=> b!2484147 m!2852063))

(declare-fun m!2852065 () Bool)

(assert (=> b!2484147 m!2852065))

(declare-fun m!2852067 () Bool)

(assert (=> b!2484141 m!2852067))

(declare-fun m!2852069 () Bool)

(assert (=> bm!152270 m!2852069))

(assert (=> b!2484143 m!2852001))

(assert (=> b!2484143 m!2852057))

(declare-fun m!2852071 () Bool)

(assert (=> b!2484143 m!2852071))

(declare-fun m!2852073 () Bool)

(assert (=> b!2484143 m!2852073))

(assert (=> d!713284 m!2852001))

(assert (=> d!713284 m!2852009))

(declare-fun m!2852075 () Bool)

(assert (=> d!713284 m!2852075))

(declare-fun m!2852077 () Bool)

(assert (=> d!713284 m!2852077))

(assert (=> d!713284 m!2852077))

(declare-fun m!2852079 () Bool)

(assert (=> d!713284 m!2852079))

(assert (=> d!713284 m!2852023))

(assert (=> d!713284 m!2852007))

(declare-fun m!2852081 () Bool)

(assert (=> d!713284 m!2852081))

(assert (=> d!713284 m!2852007))

(declare-fun m!2852083 () Bool)

(assert (=> bm!152271 m!2852083))

(assert (=> b!2484144 m!2852057))

(assert (=> b!2484144 m!2852057))

(declare-fun m!2852085 () Bool)

(assert (=> b!2484144 m!2852085))

(assert (=> b!2484144 m!2852085))

(declare-fun m!2852087 () Bool)

(assert (=> b!2484144 m!2852087))

(assert (=> bm!152275 m!2852009))

(declare-fun m!2852089 () Bool)

(assert (=> bm!152273 m!2852089))

(assert (=> b!2484099 d!713284))

(declare-fun d!713286 () Bool)

(declare-fun e!1577144 () Bool)

(assert (=> d!713286 e!1577144))

(declare-fun c!394898 () Bool)

(assert (=> d!713286 (= c!394898 (contains!5164 (v!31557 (underlying!6996 thiss!42540)) lt!890208))))

(declare-fun lt!890282 () List!29263)

(declare-fun apply!6956 (LongMapFixedSize!6788 (_ BitVec 64)) List!29263)

(assert (=> d!713286 (= lt!890282 (apply!6956 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))) lt!890208))))

(assert (=> d!713286 (valid!2603 (v!31557 (underlying!6996 thiss!42540)))))

(assert (=> d!713286 (= (apply!6954 (v!31557 (underlying!6996 thiss!42540)) lt!890208) lt!890282)))

(declare-fun b!2484155 () Bool)

(declare-fun get!8999 (Option!5767) List!29263)

(assert (=> b!2484155 (= e!1577144 (= lt!890282 (get!8999 (getValueByKey!146 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540)))) lt!890208))))))

(declare-fun b!2484156 () Bool)

(declare-fun dynLambda!12490 (Int (_ BitVec 64)) List!29263)

(assert (=> b!2484156 (= e!1577144 (= lt!890282 (dynLambda!12490 (defaultEntry!3768 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540))))) lt!890208)))))

(assert (=> b!2484156 ((_ is LongMap!3394) (v!31557 (underlying!6996 thiss!42540)))))

(assert (= (and d!713286 c!394898) b!2484155))

(assert (= (and d!713286 (not c!394898)) b!2484156))

(declare-fun b_lambda!76227 () Bool)

(assert (=> (not b_lambda!76227) (not b!2484156)))

(declare-fun t!210939 () Bool)

(declare-fun tb!140391 () Bool)

(assert (=> (and b!2484101 (= (defaultEntry!3768 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540))))) (defaultEntry!3768 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) t!210939) tb!140391))

(assert (=> b!2484156 t!210939))

(declare-fun result!173368 () Bool)

(declare-fun b_and!188705 () Bool)

(assert (= b_and!188701 (and (=> t!210939 result!173368) b_and!188705)))

(declare-fun m!2852091 () Bool)

(assert (=> d!713286 m!2852091))

(declare-fun m!2852093 () Bool)

(assert (=> d!713286 m!2852093))

(assert (=> d!713286 m!2852037))

(assert (=> b!2484155 m!2852001))

(declare-fun m!2852095 () Bool)

(assert (=> b!2484155 m!2852095))

(assert (=> b!2484155 m!2852095))

(declare-fun m!2852097 () Bool)

(assert (=> b!2484155 m!2852097))

(declare-fun m!2852099 () Bool)

(assert (=> b!2484156 m!2852099))

(assert (=> b!2484108 d!713286))

(declare-fun b!2484168 () Bool)

(declare-fun e!1577150 () List!29263)

(assert (=> b!2484168 (= e!1577150 Nil!29163)))

(declare-fun d!713288 () Bool)

(declare-fun lt!890285 () List!29263)

(declare-fun containsKey!151 (List!29263 K!5570) Bool)

(assert (=> d!713288 (not (containsKey!151 lt!890285 key!2246))))

(declare-fun e!1577149 () List!29263)

(assert (=> d!713288 (= lt!890285 e!1577149)))

(declare-fun c!394904 () Bool)

(assert (=> d!713288 (= c!394904 (and ((_ is Cons!29163) lt!890209) (= (_1!17047 (h!34572 lt!890209)) key!2246)))))

(assert (=> d!713288 (noDuplicateKeys!99 lt!890209)))

(assert (=> d!713288 (= (removePairForKey!91 lt!890209 key!2246) lt!890285)))

(declare-fun b!2484167 () Bool)

(assert (=> b!2484167 (= e!1577150 (Cons!29163 (h!34572 lt!890209) (removePairForKey!91 (t!210936 lt!890209) key!2246)))))

(declare-fun b!2484165 () Bool)

(assert (=> b!2484165 (= e!1577149 (t!210936 lt!890209))))

(declare-fun b!2484166 () Bool)

(assert (=> b!2484166 (= e!1577149 e!1577150)))

(declare-fun c!394903 () Bool)

(assert (=> b!2484166 (= c!394903 ((_ is Cons!29163) lt!890209))))

(assert (= (and d!713288 c!394904) b!2484165))

(assert (= (and d!713288 (not c!394904)) b!2484166))

(assert (= (and b!2484166 c!394903) b!2484167))

(assert (= (and b!2484166 (not c!394903)) b!2484168))

(declare-fun m!2852101 () Bool)

(assert (=> d!713288 m!2852101))

(declare-fun m!2852103 () Bool)

(assert (=> d!713288 m!2852103))

(declare-fun m!2852105 () Bool)

(assert (=> b!2484167 m!2852105))

(assert (=> b!2484108 d!713288))

(declare-fun d!713290 () Bool)

(declare-fun hash!725 (Hashable!3304 K!5570) (_ BitVec 64))

(assert (=> d!713290 (= (hash!722 (hashF!5276 thiss!42540) key!2246) (hash!725 (hashF!5276 thiss!42540) key!2246))))

(declare-fun bs!467685 () Bool)

(assert (= bs!467685 d!713290))

(declare-fun m!2852107 () Bool)

(assert (=> bs!467685 m!2852107))

(assert (=> b!2484108 d!713290))

(declare-fun d!713292 () Bool)

(assert (=> d!713292 (noDuplicateKeys!99 (removePairForKey!91 lt!890209 key!2246))))

(declare-fun lt!890288 () Unit!42737)

(declare-fun choose!14667 (List!29263 K!5570) Unit!42737)

(assert (=> d!713292 (= lt!890288 (choose!14667 lt!890209 key!2246))))

(assert (=> d!713292 (noDuplicateKeys!99 lt!890209)))

(assert (=> d!713292 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!79 lt!890209 key!2246) lt!890288)))

(declare-fun bs!467686 () Bool)

(assert (= bs!467686 d!713292))

(assert (=> bs!467686 m!2852013))

(assert (=> bs!467686 m!2852013))

(declare-fun m!2852109 () Bool)

(assert (=> bs!467686 m!2852109))

(declare-fun m!2852111 () Bool)

(assert (=> bs!467686 m!2852111))

(assert (=> bs!467686 m!2852103))

(assert (=> b!2484108 d!713292))

(declare-fun d!713294 () Bool)

(declare-fun map!6267 (LongMapFixedSize!6788) ListLongMap!575)

(assert (=> d!713294 (= (map!6266 (v!31557 (underlying!6996 thiss!42540))) (map!6267 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540))))))))

(declare-fun bs!467687 () Bool)

(assert (= bs!467687 d!713294))

(declare-fun m!2852113 () Bool)

(assert (=> bs!467687 m!2852113))

(assert (=> b!2484108 d!713294))

(declare-fun d!713296 () Bool)

(declare-fun dynLambda!12491 (Int tuple2!29012) Bool)

(assert (=> d!713296 (dynLambda!12491 lambda!94226 (tuple2!29013 lt!890208 lt!890209))))

(declare-fun lt!890291 () Unit!42737)

(declare-fun choose!14668 (List!29264 Int tuple2!29012) Unit!42737)

(assert (=> d!713296 (= lt!890291 (choose!14668 (toList!1626 lt!890217) lambda!94226 (tuple2!29013 lt!890208 lt!890209)))))

(declare-fun e!1577153 () Bool)

(assert (=> d!713296 e!1577153))

(declare-fun res!1051451 () Bool)

(assert (=> d!713296 (=> (not res!1051451) (not e!1577153))))

(assert (=> d!713296 (= res!1051451 (forall!5984 (toList!1626 lt!890217) lambda!94226))))

(assert (=> d!713296 (= (forallContained!880 (toList!1626 lt!890217) lambda!94226 (tuple2!29013 lt!890208 lt!890209)) lt!890291)))

(declare-fun b!2484171 () Bool)

(assert (=> b!2484171 (= e!1577153 (contains!5165 (toList!1626 lt!890217) (tuple2!29013 lt!890208 lt!890209)))))

(assert (= (and d!713296 res!1051451) b!2484171))

(declare-fun b_lambda!76229 () Bool)

(assert (=> (not b_lambda!76229) (not d!713296)))

(declare-fun m!2852115 () Bool)

(assert (=> d!713296 m!2852115))

(declare-fun m!2852117 () Bool)

(assert (=> d!713296 m!2852117))

(assert (=> d!713296 m!2852027))

(declare-fun m!2852119 () Bool)

(assert (=> b!2484171 m!2852119))

(assert (=> b!2484108 d!713296))

(declare-fun d!713298 () Bool)

(declare-fun e!1577165 () Bool)

(assert (=> d!713298 e!1577165))

(declare-fun res!1051459 () Bool)

(assert (=> d!713298 (=> (not res!1051459) (not e!1577165))))

(declare-fun lt!890301 () tuple2!29016)

(assert (=> d!713298 (= res!1051459 ((_ is LongMap!3394) (_2!17050 lt!890301)))))

(declare-fun e!1577167 () tuple2!29016)

(assert (=> d!713298 (= lt!890301 e!1577167)))

(declare-fun c!394913 () Bool)

(declare-fun lt!890303 () tuple2!29016)

(assert (=> d!713298 (= c!394913 (_1!17050 lt!890303))))

(declare-fun e!1577166 () tuple2!29016)

(assert (=> d!713298 (= lt!890303 e!1577166)))

(declare-fun c!394912 () Bool)

(declare-fun imbalanced!21 (MutLongMap!3394) Bool)

(assert (=> d!713298 (= c!394912 (imbalanced!21 (v!31557 (underlying!6996 thiss!42540))))))

(assert (=> d!713298 (valid!2603 (v!31557 (underlying!6996 thiss!42540)))))

(assert (=> d!713298 (= (update!212 (v!31557 (underlying!6996 thiss!42540)) lt!890208 lt!890215) lt!890301)))

(declare-fun e!1577168 () Bool)

(declare-fun call!152286 () ListLongMap!575)

(declare-fun b!2484190 () Bool)

(declare-fun call!152285 () ListLongMap!575)

(declare-fun +!91 (ListLongMap!575 tuple2!29012) ListLongMap!575)

(assert (=> b!2484190 (= e!1577168 (= call!152286 (+!91 call!152285 (tuple2!29013 lt!890208 lt!890215))))))

(declare-fun b!2484191 () Bool)

(declare-datatypes ((tuple2!29018 0))(
  ( (tuple2!29019 (_1!17051 Bool) (_2!17051 LongMapFixedSize!6788)) )
))
(declare-fun lt!890300 () tuple2!29018)

(assert (=> b!2484191 (= e!1577167 (tuple2!29017 (_1!17051 lt!890300) (LongMap!3394 (Cell!13394 (_2!17051 lt!890300)))))))

(declare-fun update!213 (LongMapFixedSize!6788 (_ BitVec 64) List!29263) tuple2!29018)

(assert (=> b!2484191 (= lt!890300 (update!213 (v!31556 (underlying!6995 (_2!17050 lt!890303))) lt!890208 lt!890215))))

(declare-fun b!2484192 () Bool)

(assert (=> b!2484192 (= e!1577166 (tuple2!29017 true (v!31557 (underlying!6996 thiss!42540))))))

(declare-fun b!2484193 () Bool)

(declare-fun lt!890302 () tuple2!29016)

(assert (=> b!2484193 (= e!1577166 (tuple2!29017 (_1!17050 lt!890302) (_2!17050 lt!890302)))))

(declare-fun repack!25 (MutLongMap!3394) tuple2!29016)

(assert (=> b!2484193 (= lt!890302 (repack!25 (v!31557 (underlying!6996 thiss!42540))))))

(declare-fun bm!152280 () Bool)

(assert (=> bm!152280 (= call!152286 (map!6266 (_2!17050 lt!890301)))))

(declare-fun b!2484194 () Bool)

(declare-fun e!1577164 () Bool)

(assert (=> b!2484194 (= e!1577165 e!1577164)))

(declare-fun c!394911 () Bool)

(assert (=> b!2484194 (= c!394911 (_1!17050 lt!890301))))

(declare-fun b!2484195 () Bool)

(assert (=> b!2484195 (= e!1577167 (tuple2!29017 false (_2!17050 lt!890303)))))

(declare-fun b!2484196 () Bool)

(assert (=> b!2484196 (= e!1577164 e!1577168)))

(declare-fun res!1051458 () Bool)

(assert (=> b!2484196 (= res!1051458 (contains!5166 call!152286 lt!890208))))

(assert (=> b!2484196 (=> (not res!1051458) (not e!1577168))))

(declare-fun b!2484197 () Bool)

(declare-fun res!1051460 () Bool)

(assert (=> b!2484197 (=> (not res!1051460) (not e!1577165))))

(assert (=> b!2484197 (= res!1051460 (valid!2603 (_2!17050 lt!890301)))))

(declare-fun b!2484198 () Bool)

(assert (=> b!2484198 (= e!1577164 (= call!152286 call!152285))))

(declare-fun bm!152281 () Bool)

(assert (=> bm!152281 (= call!152285 (map!6266 (v!31557 (underlying!6996 thiss!42540))))))

(assert (= (and d!713298 c!394912) b!2484193))

(assert (= (and d!713298 (not c!394912)) b!2484192))

(assert (= (and d!713298 c!394913) b!2484191))

(assert (= (and d!713298 (not c!394913)) b!2484195))

(assert (= (and d!713298 res!1051459) b!2484197))

(assert (= (and b!2484197 res!1051460) b!2484194))

(assert (= (and b!2484194 c!394911) b!2484196))

(assert (= (and b!2484194 (not c!394911)) b!2484198))

(assert (= (and b!2484196 res!1051458) b!2484190))

(assert (= (or b!2484196 b!2484190 b!2484198) bm!152280))

(assert (= (or b!2484190 b!2484198) bm!152281))

(declare-fun m!2852121 () Bool)

(assert (=> d!713298 m!2852121))

(assert (=> d!713298 m!2852037))

(declare-fun m!2852123 () Bool)

(assert (=> b!2484190 m!2852123))

(declare-fun m!2852125 () Bool)

(assert (=> b!2484191 m!2852125))

(declare-fun m!2852127 () Bool)

(assert (=> b!2484197 m!2852127))

(declare-fun m!2852129 () Bool)

(assert (=> bm!152280 m!2852129))

(assert (=> bm!152281 m!2852001))

(declare-fun m!2852131 () Bool)

(assert (=> b!2484193 m!2852131))

(declare-fun m!2852133 () Bool)

(assert (=> b!2484196 m!2852133))

(assert (=> b!2484108 d!713298))

(declare-fun d!713300 () Bool)

(declare-fun res!1051465 () Bool)

(declare-fun e!1577173 () Bool)

(assert (=> d!713300 (=> res!1051465 e!1577173)))

(assert (=> d!713300 (= res!1051465 (not ((_ is Cons!29163) lt!890215)))))

(assert (=> d!713300 (= (noDuplicateKeys!99 lt!890215) e!1577173)))

(declare-fun b!2484203 () Bool)

(declare-fun e!1577174 () Bool)

(assert (=> b!2484203 (= e!1577173 e!1577174)))

(declare-fun res!1051466 () Bool)

(assert (=> b!2484203 (=> (not res!1051466) (not e!1577174))))

(assert (=> b!2484203 (= res!1051466 (not (containsKey!151 (t!210936 lt!890215) (_1!17047 (h!34572 lt!890215)))))))

(declare-fun b!2484204 () Bool)

(assert (=> b!2484204 (= e!1577174 (noDuplicateKeys!99 (t!210936 lt!890215)))))

(assert (= (and d!713300 (not res!1051465)) b!2484203))

(assert (= (and b!2484203 res!1051466) b!2484204))

(declare-fun m!2852135 () Bool)

(assert (=> b!2484203 m!2852135))

(declare-fun m!2852137 () Bool)

(assert (=> b!2484204 m!2852137))

(assert (=> b!2484108 d!713300))

(declare-fun d!713302 () Bool)

(declare-fun lt!890306 () ListMap!1107)

(declare-fun invariantList!416 (List!29263) Bool)

(assert (=> d!713302 (invariantList!416 (toList!1627 lt!890306))))

(assert (=> d!713302 (= lt!890306 (extractMap!182 (toList!1626 (map!6266 (v!31557 (underlying!6996 thiss!42540))))))))

(assert (=> d!713302 (valid!2602 thiss!42540)))

(assert (=> d!713302 (= (map!6265 thiss!42540) lt!890306)))

(declare-fun bs!467688 () Bool)

(assert (= bs!467688 d!713302))

(declare-fun m!2852139 () Bool)

(assert (=> bs!467688 m!2852139))

(assert (=> bs!467688 m!2852001))

(assert (=> bs!467688 m!2852077))

(assert (=> bs!467688 m!2852023))

(assert (=> b!2484108 d!713302))

(declare-fun bs!467689 () Bool)

(declare-fun d!713304 () Bool)

(assert (= bs!467689 (and d!713304 b!2484108)))

(declare-fun lambda!94238 () Int)

(assert (=> bs!467689 (not (= lambda!94238 lambda!94226))))

(declare-fun bs!467690 () Bool)

(assert (= bs!467690 (and d!713304 d!713280)))

(assert (=> bs!467690 (= lambda!94238 lambda!94229)))

(declare-fun bs!467691 () Bool)

(assert (= bs!467691 (and d!713304 b!2484116)))

(assert (=> bs!467691 (not (= lambda!94238 lambda!94232))))

(declare-fun bs!467692 () Bool)

(assert (= bs!467692 (and d!713304 b!2484143)))

(assert (=> bs!467692 (not (= lambda!94238 lambda!94235))))

(assert (=> d!713304 true))

(assert (=> d!713304 (allKeysSameHash!73 lt!890209 lt!890208 (hashF!5276 (_2!17049 lt!890219)))))

(declare-fun lt!890309 () Unit!42737)

(declare-fun choose!14669 (List!29264 (_ BitVec 64) List!29263 Hashable!3304) Unit!42737)

(assert (=> d!713304 (= lt!890309 (choose!14669 (toList!1626 lt!890217) lt!890208 lt!890209 (hashF!5276 (_2!17049 lt!890219))))))

(assert (=> d!713304 (forall!5984 (toList!1626 lt!890217) lambda!94238)))

(assert (=> d!713304 (= (lemmaInLongMapAllKeySameHashThenForTuple!66 (toList!1626 lt!890217) lt!890208 lt!890209 (hashF!5276 (_2!17049 lt!890219))) lt!890309)))

(declare-fun bs!467693 () Bool)

(assert (= bs!467693 d!713304))

(assert (=> bs!467693 m!2852025))

(declare-fun m!2852141 () Bool)

(assert (=> bs!467693 m!2852141))

(declare-fun m!2852143 () Bool)

(assert (=> bs!467693 m!2852143))

(assert (=> b!2484105 d!713304))

(declare-fun d!713306 () Bool)

(assert (=> d!713306 true))

(assert (=> d!713306 true))

(declare-fun lambda!94241 () Int)

(declare-fun forall!5985 (List!29263 Int) Bool)

(assert (=> d!713306 (= (allKeysSameHash!73 lt!890209 lt!890208 (hashF!5276 (_2!17049 lt!890219))) (forall!5985 lt!890209 lambda!94241))))

(declare-fun bs!467694 () Bool)

(assert (= bs!467694 d!713306))

(declare-fun m!2852145 () Bool)

(assert (=> bs!467694 m!2852145))

(assert (=> b!2484105 d!713306))

(declare-fun bs!467695 () Bool)

(declare-fun d!713308 () Bool)

(assert (= bs!467695 (and d!713308 d!713306)))

(declare-fun lambda!94242 () Int)

(assert (=> bs!467695 (= lambda!94242 lambda!94241)))

(assert (=> d!713308 true))

(assert (=> d!713308 true))

(assert (=> d!713308 (= (allKeysSameHash!73 lt!890215 lt!890208 (hashF!5276 (_2!17049 lt!890219))) (forall!5985 lt!890215 lambda!94242))))

(declare-fun bs!467696 () Bool)

(assert (= bs!467696 d!713308))

(declare-fun m!2852147 () Bool)

(assert (=> bs!467696 m!2852147))

(assert (=> b!2484105 d!713308))

(declare-fun d!713310 () Bool)

(assert (=> d!713310 (allKeysSameHash!73 (removePairForKey!91 lt!890209 key!2246) lt!890208 (hashF!5276 (_2!17049 lt!890219)))))

(declare-fun lt!890312 () Unit!42737)

(declare-fun choose!14670 (List!29263 K!5570 (_ BitVec 64) Hashable!3304) Unit!42737)

(assert (=> d!713310 (= lt!890312 (choose!14670 lt!890209 key!2246 lt!890208 (hashF!5276 (_2!17049 lt!890219))))))

(assert (=> d!713310 (noDuplicateKeys!99 lt!890209)))

(assert (=> d!713310 (= (lemmaRemovePairForKeyPreservesHash!62 lt!890209 key!2246 lt!890208 (hashF!5276 (_2!17049 lt!890219))) lt!890312)))

(declare-fun bs!467697 () Bool)

(assert (= bs!467697 d!713310))

(assert (=> bs!467697 m!2852013))

(assert (=> bs!467697 m!2852013))

(declare-fun m!2852149 () Bool)

(assert (=> bs!467697 m!2852149))

(declare-fun m!2852151 () Bool)

(assert (=> bs!467697 m!2852151))

(assert (=> bs!467697 m!2852103))

(assert (=> b!2484105 d!713310))

(declare-fun d!713312 () Bool)

(declare-fun res!1051471 () Bool)

(declare-fun e!1577179 () Bool)

(assert (=> d!713312 (=> res!1051471 e!1577179)))

(assert (=> d!713312 (= res!1051471 ((_ is Nil!29164) (toList!1626 lt!890217)))))

(assert (=> d!713312 (= (forall!5984 (toList!1626 lt!890217) lambda!94226) e!1577179)))

(declare-fun b!2484213 () Bool)

(declare-fun e!1577180 () Bool)

(assert (=> b!2484213 (= e!1577179 e!1577180)))

(declare-fun res!1051472 () Bool)

(assert (=> b!2484213 (=> (not res!1051472) (not e!1577180))))

(assert (=> b!2484213 (= res!1051472 (dynLambda!12491 lambda!94226 (h!34573 (toList!1626 lt!890217))))))

(declare-fun b!2484214 () Bool)

(assert (=> b!2484214 (= e!1577180 (forall!5984 (t!210937 (toList!1626 lt!890217)) lambda!94226))))

(assert (= (and d!713312 (not res!1051471)) b!2484213))

(assert (= (and b!2484213 res!1051472) b!2484214))

(declare-fun b_lambda!76231 () Bool)

(assert (=> (not b_lambda!76231) (not b!2484213)))

(declare-fun m!2852153 () Bool)

(assert (=> b!2484213 m!2852153))

(declare-fun m!2852155 () Bool)

(assert (=> b!2484214 m!2852155))

(assert (=> b!2484105 d!713312))

(declare-fun d!713314 () Bool)

(assert (=> d!713314 (= (array_inv!3863 (_keys!3691 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) (bvsge (size!22798 (_keys!3691 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484101 d!713314))

(declare-fun d!713316 () Bool)

(assert (=> d!713316 (= (array_inv!3864 (_values!3674 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) (bvsge (size!22797 (_values!3674 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484101 d!713316))

(declare-fun tp_is_empty!12333 () Bool)

(declare-fun e!1577183 () Bool)

(declare-fun tp!795246 () Bool)

(declare-fun b!2484219 () Bool)

(assert (=> b!2484219 (= e!1577183 (and tp_is_empty!12331 tp_is_empty!12333 tp!795246))))

(assert (=> b!2484102 (= tp!795238 e!1577183)))

(assert (= (and b!2484102 ((_ is Cons!29163) mapDefault!15672)) b!2484219))

(declare-fun e!1577184 () Bool)

(declare-fun b!2484220 () Bool)

(declare-fun tp!795247 () Bool)

(assert (=> b!2484220 (= e!1577184 (and tp_is_empty!12331 tp_is_empty!12333 tp!795247))))

(assert (=> b!2484101 (= tp!795241 e!1577184)))

(assert (= (and b!2484101 ((_ is Cons!29163) (zeroValue!3652 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540))))))) b!2484220))

(declare-fun tp!795248 () Bool)

(declare-fun e!1577185 () Bool)

(declare-fun b!2484221 () Bool)

(assert (=> b!2484221 (= e!1577185 (and tp_is_empty!12331 tp_is_empty!12333 tp!795248))))

(assert (=> b!2484101 (= tp!795240 e!1577185)))

(assert (= (and b!2484101 ((_ is Cons!29163) (minValue!3652 (v!31556 (underlying!6995 (v!31557 (underlying!6996 thiss!42540))))))) b!2484221))

(declare-fun mapIsEmpty!15675 () Bool)

(declare-fun mapRes!15675 () Bool)

(assert (=> mapIsEmpty!15675 mapRes!15675))

(declare-fun condMapEmpty!15675 () Bool)

(declare-fun mapDefault!15675 () List!29263)

(assert (=> mapNonEmpty!15672 (= condMapEmpty!15675 (= mapRest!15672 ((as const (Array (_ BitVec 32) List!29263)) mapDefault!15675)))))

(declare-fun e!1577190 () Bool)

(assert (=> mapNonEmpty!15672 (= tp!795243 (and e!1577190 mapRes!15675))))

(declare-fun b!2484229 () Bool)

(declare-fun tp!795257 () Bool)

(assert (=> b!2484229 (= e!1577190 (and tp_is_empty!12331 tp_is_empty!12333 tp!795257))))

(declare-fun mapNonEmpty!15675 () Bool)

(declare-fun tp!795256 () Bool)

(declare-fun e!1577191 () Bool)

(assert (=> mapNonEmpty!15675 (= mapRes!15675 (and tp!795256 e!1577191))))

(declare-fun mapKey!15675 () (_ BitVec 32))

(declare-fun mapValue!15675 () List!29263)

(declare-fun mapRest!15675 () (Array (_ BitVec 32) List!29263))

(assert (=> mapNonEmpty!15675 (= mapRest!15672 (store mapRest!15675 mapKey!15675 mapValue!15675))))

(declare-fun b!2484228 () Bool)

(declare-fun tp!795255 () Bool)

(assert (=> b!2484228 (= e!1577191 (and tp_is_empty!12331 tp_is_empty!12333 tp!795255))))

(assert (= (and mapNonEmpty!15672 condMapEmpty!15675) mapIsEmpty!15675))

(assert (= (and mapNonEmpty!15672 (not condMapEmpty!15675)) mapNonEmpty!15675))

(assert (= (and mapNonEmpty!15675 ((_ is Cons!29163) mapValue!15675)) b!2484228))

(assert (= (and mapNonEmpty!15672 ((_ is Cons!29163) mapDefault!15675)) b!2484229))

(declare-fun m!2852157 () Bool)

(assert (=> mapNonEmpty!15675 m!2852157))

(declare-fun b!2484230 () Bool)

(declare-fun tp!795258 () Bool)

(declare-fun e!1577192 () Bool)

(assert (=> b!2484230 (= e!1577192 (and tp_is_empty!12331 tp_is_empty!12333 tp!795258))))

(assert (=> mapNonEmpty!15672 (= tp!795239 e!1577192)))

(assert (= (and mapNonEmpty!15672 ((_ is Cons!29163) mapValue!15672)) b!2484230))

(declare-fun b_lambda!76233 () Bool)

(assert (= b_lambda!76231 (or b!2484108 b_lambda!76233)))

(declare-fun bs!467698 () Bool)

(declare-fun d!713318 () Bool)

(assert (= bs!467698 (and d!713318 b!2484108)))

(assert (=> bs!467698 (= (dynLambda!12491 lambda!94226 (h!34573 (toList!1626 lt!890217))) (noDuplicateKeys!99 (_2!17048 (h!34573 (toList!1626 lt!890217)))))))

(declare-fun m!2852159 () Bool)

(assert (=> bs!467698 m!2852159))

(assert (=> b!2484213 d!713318))

(declare-fun b_lambda!76235 () Bool)

(assert (= b_lambda!76227 (or (and b!2484101 b_free!72433) b_lambda!76235)))

(declare-fun b_lambda!76237 () Bool)

(assert (= b_lambda!76229 (or b!2484108 b_lambda!76237)))

(declare-fun bs!467699 () Bool)

(declare-fun d!713320 () Bool)

(assert (= bs!467699 (and d!713320 b!2484108)))

(assert (=> bs!467699 (= (dynLambda!12491 lambda!94226 (tuple2!29013 lt!890208 lt!890209)) (noDuplicateKeys!99 (_2!17048 (tuple2!29013 lt!890208 lt!890209))))))

(declare-fun m!2852161 () Bool)

(assert (=> bs!467699 m!2852161))

(assert (=> d!713296 d!713320))

(check-sat (not b!2484228) (not b!2484229) b_and!188703 (not bm!152270) (not d!713302) (not tb!140391) (not b_next!73139) (not d!713308) (not d!713310) tp_is_empty!12333 (not d!713304) (not b!2484197) (not bm!152280) (not b!2484155) (not bm!152273) (not b_lambda!76235) (not b!2484221) (not b!2484220) (not bm!152272) (not bm!152281) (not b!2484117) (not b!2484219) (not bs!467699) (not b!2484193) (not d!713286) (not b!2484116) (not b!2484150) (not b!2484204) tp_is_empty!12331 (not bm!152274) (not b!2484147) (not bm!152275) (not d!713306) (not d!713296) (not b!2484167) (not b!2484230) (not d!713290) (not d!713298) (not d!713288) (not b!2484141) (not b!2484143) (not b_lambda!76237) (not b!2484214) (not b!2484196) (not b!2484190) (not d!713292) (not d!713280) (not b!2484144) (not d!713282) (not b!2484171) (not b!2484203) (not b_lambda!76233) (not bm!152271) (not bs!467698) (not b!2484191) (not d!713294) b_and!188705 (not b_next!73137) (not d!713284) (not mapNonEmpty!15675))
(check-sat b_and!188703 b_and!188705 (not b_next!73137) (not b_next!73139))

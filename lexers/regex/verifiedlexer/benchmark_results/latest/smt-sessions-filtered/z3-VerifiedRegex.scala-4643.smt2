; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242660 () Bool)

(assert start!242660)

(declare-fun b!2484900 () Bool)

(declare-fun b_free!72481 () Bool)

(declare-fun b_next!73185 () Bool)

(assert (=> b!2484900 (= b_free!72481 (not b_next!73185))))

(declare-fun tp!795535 () Bool)

(declare-fun b_and!188755 () Bool)

(assert (=> b!2484900 (= tp!795535 b_and!188755)))

(declare-fun b!2484895 () Bool)

(declare-fun b_free!72483 () Bool)

(declare-fun b_next!73187 () Bool)

(assert (=> b!2484895 (= b_free!72483 (not b_next!73187))))

(declare-fun tp!795540 () Bool)

(declare-fun b_and!188757 () Bool)

(assert (=> b!2484895 (= tp!795540 b_and!188757)))

(declare-fun mapIsEmpty!15717 () Bool)

(declare-fun mapRes!15717 () Bool)

(assert (=> mapIsEmpty!15717 mapRes!15717))

(declare-fun b!2484891 () Bool)

(declare-fun e!1577721 () Bool)

(declare-datatypes ((Unit!42794 0))(
  ( (Unit!42795) )
))
(declare-datatypes ((Hashable!3316 0))(
  ( (HashableExt!3315 (__x!19124 Int)) )
))
(declare-datatypes ((V!5802 0))(
  ( (V!5803 (val!8955 Int)) )
))
(declare-datatypes ((K!5600 0))(
  ( (K!5601 (val!8956 Int)) )
))
(declare-datatypes ((tuple2!29104 0))(
  ( (tuple2!29105 (_1!17094 K!5600) (_2!17094 V!5802)) )
))
(declare-datatypes ((List!29286 0))(
  ( (Nil!29186) (Cons!29186 (h!34598 tuple2!29104) (t!210965 List!29286)) )
))
(declare-datatypes ((array!12107 0))(
  ( (array!12108 (arr!5402 (Array (_ BitVec 32) List!29286)) (size!22821 (_ BitVec 32))) )
))
(declare-datatypes ((array!12109 0))(
  ( (array!12110 (arr!5403 (Array (_ BitVec 32) (_ BitVec 64))) (size!22822 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6812 0))(
  ( (LongMapFixedSize!6813 (defaultEntry!3780 Int) (mask!8598 (_ BitVec 32)) (extraKeys!3654 (_ BitVec 32)) (zeroValue!3664 List!29286) (minValue!3664 List!29286) (_size!6859 (_ BitVec 32)) (_keys!3703 array!12109) (_values!3686 array!12107) (_vacant!3467 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13441 0))(
  ( (Cell!13442 (v!31598 LongMapFixedSize!6812)) )
))
(declare-datatypes ((MutLongMap!3406 0))(
  ( (LongMap!3406 (underlying!7019 Cell!13441)) (MutLongMapExt!3405 (__x!19125 Int)) )
))
(declare-datatypes ((Cell!13443 0))(
  ( (Cell!13444 (v!31599 MutLongMap!3406)) )
))
(declare-datatypes ((MutableMap!3316 0))(
  ( (MutableMapExt!3315 (__x!19126 Int)) (HashMap!3316 (underlying!7020 Cell!13443) (hashF!5302 Hashable!3316) (_size!6860 (_ BitVec 32)) (defaultValue!3478 Int)) )
))
(declare-datatypes ((tuple2!29106 0))(
  ( (tuple2!29107 (_1!17095 Unit!42794) (_2!17095 MutableMap!3316)) )
))
(declare-fun lt!891074 () tuple2!29106)

(declare-fun valid!2614 (MutableMap!3316) Bool)

(assert (=> b!2484891 (= e!1577721 (valid!2614 (_2!17095 lt!891074)))))

(declare-fun e!1577722 () Bool)

(assert (=> b!2484891 e!1577722))

(declare-fun res!1051764 () Bool)

(assert (=> b!2484891 (=> (not res!1051764) (not e!1577722))))

(declare-datatypes ((tuple2!29108 0))(
  ( (tuple2!29109 (_1!17096 (_ BitVec 64)) (_2!17096 List!29286)) )
))
(declare-datatypes ((List!29287 0))(
  ( (Nil!29187) (Cons!29187 (h!34599 tuple2!29108) (t!210966 List!29287)) )
))
(declare-datatypes ((ListLongMap!597 0))(
  ( (ListLongMap!598 (toList!1647 List!29287)) )
))
(declare-fun lt!891070 () ListLongMap!597)

(declare-fun lambda!94361 () Int)

(declare-fun forall!5996 (List!29287 Int) Bool)

(assert (=> b!2484891 (= res!1051764 (forall!5996 (toList!1647 lt!891070) lambda!94361))))

(declare-fun map!6294 (MutLongMap!3406) ListLongMap!597)

(assert (=> b!2484891 (= lt!891070 (map!6294 (v!31599 (underlying!7020 (_2!17095 lt!891074)))))))

(declare-fun e!1577719 () Bool)

(assert (=> b!2484891 e!1577719))

(declare-fun res!1051762 () Bool)

(assert (=> b!2484891 (=> (not res!1051762) (not e!1577719))))

(declare-fun lt!891073 () ListLongMap!597)

(assert (=> b!2484891 (= res!1051762 (forall!5996 (toList!1647 lt!891073) lambda!94361))))

(declare-fun lt!891072 () List!29286)

(declare-fun lt!891075 () (_ BitVec 64))

(declare-fun lt!891080 () ListLongMap!597)

(declare-fun +!99 (ListLongMap!597 tuple2!29108) ListLongMap!597)

(assert (=> b!2484891 (= lt!891073 (+!99 lt!891080 (tuple2!29109 lt!891075 lt!891072)))))

(declare-fun lt!891071 () Unit!42794)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!62 (ListLongMap!597 (_ BitVec 64) List!29286 Hashable!3316) Unit!42794)

(assert (=> b!2484891 (= lt!891071 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!62 lt!891080 lt!891075 lt!891072 (hashF!5302 (_2!17095 lt!891074))))))

(declare-fun allKeysSameHash!82 (List!29286 (_ BitVec 64) Hashable!3316) Bool)

(assert (=> b!2484891 (allKeysSameHash!82 lt!891072 lt!891075 (hashF!5302 (_2!17095 lt!891074)))))

(declare-fun lt!891067 () List!29286)

(declare-fun key!2246 () K!5600)

(declare-fun lt!891069 () Unit!42794)

(declare-fun lemmaRemovePairForKeyPreservesHash!71 (List!29286 K!5600 (_ BitVec 64) Hashable!3316) Unit!42794)

(assert (=> b!2484891 (= lt!891069 (lemmaRemovePairForKeyPreservesHash!71 lt!891067 key!2246 lt!891075 (hashF!5302 (_2!17095 lt!891074))))))

(assert (=> b!2484891 (allKeysSameHash!82 lt!891067 lt!891075 (hashF!5302 (_2!17095 lt!891074)))))

(declare-fun lt!891077 () Unit!42794)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!75 (List!29287 (_ BitVec 64) List!29286 Hashable!3316) Unit!42794)

(assert (=> b!2484891 (= lt!891077 (lemmaInLongMapAllKeySameHashThenForTuple!75 (toList!1647 lt!891080) lt!891075 lt!891067 (hashF!5302 (_2!17095 lt!891074))))))

(declare-fun b!2484892 () Bool)

(declare-fun res!1051759 () Bool)

(declare-fun e!1577720 () Bool)

(assert (=> b!2484892 (=> (not res!1051759) (not e!1577720))))

(declare-fun thiss!42540 () MutableMap!3316)

(assert (=> b!2484892 (= res!1051759 (valid!2614 thiss!42540))))

(declare-fun b!2484893 () Bool)

(declare-fun res!1051760 () Bool)

(assert (=> b!2484893 (=> (not res!1051760) (not e!1577720))))

(declare-fun contains!5182 (MutableMap!3316 K!5600) Bool)

(assert (=> b!2484893 (= res!1051760 (contains!5182 thiss!42540 key!2246))))

(declare-fun b!2484894 () Bool)

(declare-fun e!1577723 () Bool)

(declare-fun tp!795539 () Bool)

(assert (=> b!2484894 (= e!1577723 (and tp!795539 mapRes!15717))))

(declare-fun condMapEmpty!15717 () Bool)

(declare-fun mapDefault!15717 () List!29286)

(assert (=> b!2484894 (= condMapEmpty!15717 (= (arr!5402 (_values!3686 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29286)) mapDefault!15717)))))

(declare-fun e!1577714 () Bool)

(declare-fun e!1577717 () Bool)

(assert (=> b!2484895 (= e!1577714 (and e!1577717 tp!795540))))

(declare-fun b!2484896 () Bool)

(declare-fun allKeysSameHashInMap!183 (ListLongMap!597 Hashable!3316) Bool)

(assert (=> b!2484896 (= e!1577719 (allKeysSameHashInMap!183 lt!891073 (hashF!5302 (_2!17095 lt!891074))))))

(declare-fun b!2484897 () Bool)

(assert (=> b!2484897 (= e!1577720 (not e!1577721))))

(declare-fun res!1051763 () Bool)

(assert (=> b!2484897 (=> res!1051763 e!1577721)))

(declare-datatypes ((tuple2!29110 0))(
  ( (tuple2!29111 (_1!17097 Bool) (_2!17097 MutLongMap!3406)) )
))
(declare-fun lt!891066 () tuple2!29110)

(assert (=> b!2484897 (= res!1051763 (not (_1!17097 lt!891066)))))

(declare-fun noDuplicateKeys!109 (List!29286) Bool)

(assert (=> b!2484897 (noDuplicateKeys!109 lt!891072)))

(declare-fun lt!891078 () Unit!42794)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!89 (List!29286 K!5600) Unit!42794)

(assert (=> b!2484897 (= lt!891078 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!89 lt!891067 key!2246))))

(declare-fun lt!891068 () Cell!13443)

(declare-fun Unit!42796 () Unit!42794)

(declare-fun Unit!42797 () Unit!42794)

(assert (=> b!2484897 (= lt!891074 (ite (_1!17097 lt!891066) (tuple2!29107 Unit!42796 (HashMap!3316 lt!891068 (hashF!5302 thiss!42540) (bvsub (_size!6860 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3478 thiss!42540))) (tuple2!29107 Unit!42797 (HashMap!3316 lt!891068 (hashF!5302 thiss!42540) (_size!6860 thiss!42540) (defaultValue!3478 thiss!42540)))))))

(assert (=> b!2484897 (= lt!891068 (Cell!13444 (_2!17097 lt!891066)))))

(declare-fun update!225 (MutLongMap!3406 (_ BitVec 64) List!29286) tuple2!29110)

(assert (=> b!2484897 (= lt!891066 (update!225 (v!31599 (underlying!7020 thiss!42540)) lt!891075 lt!891072))))

(declare-fun removePairForKey!101 (List!29286 K!5600) List!29286)

(assert (=> b!2484897 (= lt!891072 (removePairForKey!101 lt!891067 key!2246))))

(declare-datatypes ((ListMap!1127 0))(
  ( (ListMap!1128 (toList!1648 List!29286)) )
))
(declare-fun lt!891065 () ListMap!1127)

(declare-fun map!6295 (MutableMap!3316) ListMap!1127)

(assert (=> b!2484897 (= lt!891065 (map!6295 thiss!42540))))

(declare-fun lt!891076 () Unit!42794)

(declare-fun forallContained!890 (List!29287 Int tuple2!29108) Unit!42794)

(assert (=> b!2484897 (= lt!891076 (forallContained!890 (toList!1647 lt!891080) lambda!94361 (tuple2!29109 lt!891075 lt!891067)))))

(assert (=> b!2484897 (= lt!891080 (map!6294 (v!31599 (underlying!7020 thiss!42540))))))

(declare-fun apply!6970 (MutLongMap!3406 (_ BitVec 64)) List!29286)

(assert (=> b!2484897 (= lt!891067 (apply!6970 (v!31599 (underlying!7020 thiss!42540)) lt!891075))))

(declare-fun hash!743 (Hashable!3316 K!5600) (_ BitVec 64))

(assert (=> b!2484897 (= lt!891075 (hash!743 (hashF!5302 thiss!42540) key!2246))))

(declare-fun b!2484898 () Bool)

(declare-fun e!1577716 () Bool)

(declare-fun lt!891079 () MutLongMap!3406)

(get-info :version)

(assert (=> b!2484898 (= e!1577717 (and e!1577716 ((_ is LongMap!3406) lt!891079)))))

(assert (=> b!2484898 (= lt!891079 (v!31599 (underlying!7020 thiss!42540)))))

(declare-fun b!2484899 () Bool)

(declare-fun e!1577724 () Bool)

(declare-fun e!1577715 () Bool)

(assert (=> b!2484899 (= e!1577724 e!1577715)))

(declare-fun b!2484901 () Bool)

(assert (=> b!2484901 (= e!1577722 (allKeysSameHashInMap!183 lt!891070 (hashF!5302 (_2!17095 lt!891074))))))

(declare-fun b!2484902 () Bool)

(assert (=> b!2484902 (= e!1577716 e!1577724)))

(declare-fun mapNonEmpty!15717 () Bool)

(declare-fun tp!795534 () Bool)

(declare-fun tp!795536 () Bool)

(assert (=> mapNonEmpty!15717 (= mapRes!15717 (and tp!795534 tp!795536))))

(declare-fun mapKey!15717 () (_ BitVec 32))

(declare-fun mapValue!15717 () List!29286)

(declare-fun mapRest!15717 () (Array (_ BitVec 32) List!29286))

(assert (=> mapNonEmpty!15717 (= (arr!5402 (_values!3686 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) (store mapRest!15717 mapKey!15717 mapValue!15717))))

(declare-fun tp!795537 () Bool)

(declare-fun tp!795538 () Bool)

(declare-fun array_inv!3881 (array!12109) Bool)

(declare-fun array_inv!3882 (array!12107) Bool)

(assert (=> b!2484900 (= e!1577715 (and tp!795535 tp!795538 tp!795537 (array_inv!3881 (_keys!3703 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) (array_inv!3882 (_values!3686 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) e!1577723))))

(declare-fun res!1051761 () Bool)

(assert (=> start!242660 (=> (not res!1051761) (not e!1577720))))

(assert (=> start!242660 (= res!1051761 ((_ is HashMap!3316) thiss!42540))))

(assert (=> start!242660 e!1577720))

(assert (=> start!242660 e!1577714))

(declare-fun tp_is_empty!12361 () Bool)

(assert (=> start!242660 tp_is_empty!12361))

(assert (= (and start!242660 res!1051761) b!2484892))

(assert (= (and b!2484892 res!1051759) b!2484893))

(assert (= (and b!2484893 res!1051760) b!2484897))

(assert (= (and b!2484897 (not res!1051763)) b!2484891))

(assert (= (and b!2484891 res!1051762) b!2484896))

(assert (= (and b!2484891 res!1051764) b!2484901))

(assert (= (and b!2484894 condMapEmpty!15717) mapIsEmpty!15717))

(assert (= (and b!2484894 (not condMapEmpty!15717)) mapNonEmpty!15717))

(assert (= b!2484900 b!2484894))

(assert (= b!2484899 b!2484900))

(assert (= b!2484902 b!2484899))

(assert (= (and b!2484898 ((_ is LongMap!3406) (v!31599 (underlying!7020 thiss!42540)))) b!2484902))

(assert (= b!2484895 b!2484898))

(assert (= (and start!242660 ((_ is HashMap!3316) thiss!42540)) b!2484895))

(declare-fun m!2852995 () Bool)

(assert (=> b!2484901 m!2852995))

(declare-fun m!2852997 () Bool)

(assert (=> b!2484892 m!2852997))

(declare-fun m!2852999 () Bool)

(assert (=> b!2484900 m!2852999))

(declare-fun m!2853001 () Bool)

(assert (=> b!2484900 m!2853001))

(declare-fun m!2853003 () Bool)

(assert (=> mapNonEmpty!15717 m!2853003))

(declare-fun m!2853005 () Bool)

(assert (=> b!2484891 m!2853005))

(declare-fun m!2853007 () Bool)

(assert (=> b!2484891 m!2853007))

(declare-fun m!2853009 () Bool)

(assert (=> b!2484891 m!2853009))

(declare-fun m!2853011 () Bool)

(assert (=> b!2484891 m!2853011))

(declare-fun m!2853013 () Bool)

(assert (=> b!2484891 m!2853013))

(declare-fun m!2853015 () Bool)

(assert (=> b!2484891 m!2853015))

(declare-fun m!2853017 () Bool)

(assert (=> b!2484891 m!2853017))

(declare-fun m!2853019 () Bool)

(assert (=> b!2484891 m!2853019))

(declare-fun m!2853021 () Bool)

(assert (=> b!2484891 m!2853021))

(declare-fun m!2853023 () Bool)

(assert (=> b!2484891 m!2853023))

(declare-fun m!2853025 () Bool)

(assert (=> b!2484896 m!2853025))

(declare-fun m!2853027 () Bool)

(assert (=> b!2484893 m!2853027))

(declare-fun m!2853029 () Bool)

(assert (=> b!2484897 m!2853029))

(declare-fun m!2853031 () Bool)

(assert (=> b!2484897 m!2853031))

(declare-fun m!2853033 () Bool)

(assert (=> b!2484897 m!2853033))

(declare-fun m!2853035 () Bool)

(assert (=> b!2484897 m!2853035))

(declare-fun m!2853037 () Bool)

(assert (=> b!2484897 m!2853037))

(declare-fun m!2853039 () Bool)

(assert (=> b!2484897 m!2853039))

(declare-fun m!2853041 () Bool)

(assert (=> b!2484897 m!2853041))

(declare-fun m!2853043 () Bool)

(assert (=> b!2484897 m!2853043))

(declare-fun m!2853045 () Bool)

(assert (=> b!2484897 m!2853045))

(check-sat (not b!2484892) (not b_next!73185) (not b!2484897) (not mapNonEmpty!15717) b_and!188757 tp_is_empty!12361 (not b!2484900) (not b!2484891) (not b!2484896) (not b!2484894) (not b!2484893) (not b!2484901) (not b_next!73187) b_and!188755)
(check-sat b_and!188757 b_and!188755 (not b_next!73185) (not b_next!73187))
(get-model)

(declare-fun bs!467777 () Bool)

(declare-fun b!2484930 () Bool)

(assert (= bs!467777 (and b!2484930 b!2484897)))

(declare-fun lambda!94364 () Int)

(assert (=> bs!467777 (= lambda!94364 lambda!94361)))

(declare-fun b!2484925 () Bool)

(declare-fun e!1577745 () Unit!42794)

(declare-fun lt!891121 () Unit!42794)

(assert (=> b!2484925 (= e!1577745 lt!891121)))

(declare-fun lt!891137 () ListLongMap!597)

(declare-fun call!152350 () ListLongMap!597)

(assert (=> b!2484925 (= lt!891137 call!152350)))

(declare-fun lemmaInGenericMapThenInLongMap!80 (ListLongMap!597 K!5600 Hashable!3316) Unit!42794)

(assert (=> b!2484925 (= lt!891121 (lemmaInGenericMapThenInLongMap!80 lt!891137 key!2246 (hashF!5302 thiss!42540)))))

(declare-fun res!1051773 () Bool)

(declare-fun call!152347 () Bool)

(assert (=> b!2484925 (= res!1051773 call!152347)))

(declare-fun e!1577742 () Bool)

(assert (=> b!2484925 (=> (not res!1051773) (not e!1577742))))

(assert (=> b!2484925 e!1577742))

(declare-fun b!2484926 () Bool)

(declare-fun e!1577744 () Unit!42794)

(declare-fun Unit!42798 () Unit!42794)

(assert (=> b!2484926 (= e!1577744 Unit!42798)))

(declare-fun b!2484927 () Bool)

(declare-fun call!152349 () Bool)

(assert (=> b!2484927 (= e!1577742 call!152349)))

(declare-fun b!2484928 () Bool)

(declare-fun e!1577739 () Bool)

(assert (=> b!2484928 (= e!1577739 call!152349)))

(declare-fun b!2484929 () Bool)

(declare-fun e!1577740 () Unit!42794)

(declare-fun Unit!42799 () Unit!42794)

(assert (=> b!2484929 (= e!1577740 Unit!42799)))

(declare-fun bm!152342 () Bool)

(assert (=> bm!152342 (= call!152350 (map!6294 (v!31599 (underlying!7020 thiss!42540))))))

(declare-fun bm!152343 () Bool)

(declare-datatypes ((Option!5772 0))(
  ( (None!5771) (Some!5771 (v!31604 tuple2!29104)) )
))
(declare-fun call!152352 () Option!5772)

(declare-fun call!152351 () List!29286)

(declare-fun getPair!80 (List!29286 K!5600) Option!5772)

(assert (=> bm!152343 (= call!152352 (getPair!80 call!152351 key!2246))))

(declare-fun bm!152344 () Bool)

(declare-fun isDefined!4594 (Option!5772) Bool)

(assert (=> bm!152344 (= call!152349 (isDefined!4594 call!152352))))

(declare-fun d!713434 () Bool)

(declare-fun lt!891128 () Bool)

(declare-fun contains!5183 (ListMap!1127 K!5600) Bool)

(assert (=> d!713434 (= lt!891128 (contains!5183 (map!6295 thiss!42540) key!2246))))

(declare-fun e!1577741 () Bool)

(assert (=> d!713434 (= lt!891128 e!1577741)))

(declare-fun res!1051771 () Bool)

(assert (=> d!713434 (=> (not res!1051771) (not e!1577741))))

(declare-fun lt!891130 () (_ BitVec 64))

(declare-fun contains!5184 (MutLongMap!3406 (_ BitVec 64)) Bool)

(assert (=> d!713434 (= res!1051771 (contains!5184 (v!31599 (underlying!7020 thiss!42540)) lt!891130))))

(declare-fun lt!891133 () Unit!42794)

(assert (=> d!713434 (= lt!891133 e!1577745)))

(declare-fun c!394984 () Bool)

(declare-fun extractMap!185 (List!29287) ListMap!1127)

(assert (=> d!713434 (= c!394984 (contains!5183 (extractMap!185 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540))))) key!2246))))

(declare-fun lt!891126 () Unit!42794)

(assert (=> d!713434 (= lt!891126 e!1577744)))

(declare-fun c!394983 () Bool)

(assert (=> d!713434 (= c!394983 (contains!5184 (v!31599 (underlying!7020 thiss!42540)) lt!891130))))

(assert (=> d!713434 (= lt!891130 (hash!743 (hashF!5302 thiss!42540) key!2246))))

(assert (=> d!713434 (valid!2614 thiss!42540)))

(assert (=> d!713434 (= (contains!5182 thiss!42540 key!2246) lt!891128)))

(assert (=> b!2484930 (= e!1577744 (forallContained!890 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540)))) lambda!94364 (tuple2!29109 lt!891130 (apply!6970 (v!31599 (underlying!7020 thiss!42540)) lt!891130))))))

(declare-fun c!394982 () Bool)

(declare-fun contains!5185 (List!29287 tuple2!29108) Bool)

(assert (=> b!2484930 (= c!394982 (not (contains!5185 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540)))) (tuple2!29109 lt!891130 (apply!6970 (v!31599 (underlying!7020 thiss!42540)) lt!891130)))))))

(declare-fun lt!891131 () Unit!42794)

(declare-fun e!1577743 () Unit!42794)

(assert (=> b!2484930 (= lt!891131 e!1577743)))

(declare-fun b!2484931 () Bool)

(assert (=> b!2484931 (= e!1577745 e!1577740)))

(declare-fun res!1051772 () Bool)

(assert (=> b!2484931 (= res!1051772 call!152347)))

(assert (=> b!2484931 (=> (not res!1051772) (not e!1577739))))

(declare-fun c!394985 () Bool)

(assert (=> b!2484931 (= c!394985 e!1577739)))

(declare-fun b!2484932 () Bool)

(assert (=> b!2484932 false))

(declare-fun lt!891122 () Unit!42794)

(declare-fun lt!891132 () Unit!42794)

(assert (=> b!2484932 (= lt!891122 lt!891132)))

(declare-fun lt!891124 () ListLongMap!597)

(assert (=> b!2484932 (contains!5183 (extractMap!185 (toList!1647 lt!891124)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!80 (ListLongMap!597 K!5600 Hashable!3316) Unit!42794)

(assert (=> b!2484932 (= lt!891132 (lemmaInLongMapThenInGenericMap!80 lt!891124 key!2246 (hashF!5302 thiss!42540)))))

(assert (=> b!2484932 (= lt!891124 call!152350)))

(declare-fun Unit!42800 () Unit!42794)

(assert (=> b!2484932 (= e!1577740 Unit!42800)))

(declare-fun call!152348 () (_ BitVec 64))

(declare-fun bm!152345 () Bool)

(declare-fun apply!6971 (ListLongMap!597 (_ BitVec 64)) List!29286)

(assert (=> bm!152345 (= call!152351 (apply!6971 (ite c!394984 lt!891137 call!152350) call!152348))))

(declare-fun b!2484933 () Bool)

(assert (=> b!2484933 (= e!1577741 (isDefined!4594 (getPair!80 (apply!6970 (v!31599 (underlying!7020 thiss!42540)) lt!891130) key!2246)))))

(declare-fun bm!152346 () Bool)

(declare-fun contains!5186 (ListLongMap!597 (_ BitVec 64)) Bool)

(assert (=> bm!152346 (= call!152347 (contains!5186 (ite c!394984 lt!891137 call!152350) call!152348))))

(declare-fun b!2484934 () Bool)

(declare-fun Unit!42801 () Unit!42794)

(assert (=> b!2484934 (= e!1577743 Unit!42801)))

(declare-fun b!2484935 () Bool)

(assert (=> b!2484935 false))

(declare-fun lt!891138 () Unit!42794)

(declare-fun lt!891127 () Unit!42794)

(assert (=> b!2484935 (= lt!891138 lt!891127)))

(declare-fun lt!891136 () List!29287)

(declare-fun lt!891125 () List!29286)

(assert (=> b!2484935 (contains!5185 lt!891136 (tuple2!29109 lt!891130 lt!891125))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!85 (List!29287 (_ BitVec 64) List!29286) Unit!42794)

(assert (=> b!2484935 (= lt!891127 (lemmaGetValueByKeyImpliesContainsTuple!85 lt!891136 lt!891130 lt!891125))))

(assert (=> b!2484935 (= lt!891125 (apply!6970 (v!31599 (underlying!7020 thiss!42540)) lt!891130))))

(assert (=> b!2484935 (= lt!891136 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540)))))))

(declare-fun lt!891123 () Unit!42794)

(declare-fun lt!891135 () Unit!42794)

(assert (=> b!2484935 (= lt!891123 lt!891135)))

(declare-fun lt!891129 () List!29287)

(declare-datatypes ((Option!5773 0))(
  ( (None!5772) (Some!5772 (v!31605 List!29286)) )
))
(declare-fun isDefined!4595 (Option!5773) Bool)

(declare-fun getValueByKey!149 (List!29287 (_ BitVec 64)) Option!5773)

(assert (=> b!2484935 (isDefined!4595 (getValueByKey!149 lt!891129 lt!891130))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!106 (List!29287 (_ BitVec 64)) Unit!42794)

(assert (=> b!2484935 (= lt!891135 (lemmaContainsKeyImpliesGetValueByKeyDefined!106 lt!891129 lt!891130))))

(assert (=> b!2484935 (= lt!891129 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540)))))))

(declare-fun lt!891140 () Unit!42794)

(declare-fun lt!891134 () Unit!42794)

(assert (=> b!2484935 (= lt!891140 lt!891134)))

(declare-fun lt!891139 () List!29287)

(declare-fun containsKey!156 (List!29287 (_ BitVec 64)) Bool)

(assert (=> b!2484935 (containsKey!156 lt!891139 lt!891130)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!81 (List!29287 (_ BitVec 64)) Unit!42794)

(assert (=> b!2484935 (= lt!891134 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!81 lt!891139 lt!891130))))

(assert (=> b!2484935 (= lt!891139 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540)))))))

(declare-fun Unit!42802 () Unit!42794)

(assert (=> b!2484935 (= e!1577743 Unit!42802)))

(declare-fun bm!152347 () Bool)

(assert (=> bm!152347 (= call!152348 (hash!743 (hashF!5302 thiss!42540) key!2246))))

(assert (= (and d!713434 c!394983) b!2484930))

(assert (= (and d!713434 (not c!394983)) b!2484926))

(assert (= (and b!2484930 c!394982) b!2484935))

(assert (= (and b!2484930 (not c!394982)) b!2484934))

(assert (= (and d!713434 c!394984) b!2484925))

(assert (= (and d!713434 (not c!394984)) b!2484931))

(assert (= (and b!2484925 res!1051773) b!2484927))

(assert (= (and b!2484931 res!1051772) b!2484928))

(assert (= (and b!2484931 c!394985) b!2484932))

(assert (= (and b!2484931 (not c!394985)) b!2484929))

(assert (= (or b!2484925 b!2484931 b!2484928 b!2484932) bm!152342))

(assert (= (or b!2484925 b!2484927 b!2484931 b!2484928) bm!152347))

(assert (= (or b!2484927 b!2484928) bm!152345))

(assert (= (or b!2484925 b!2484931) bm!152346))

(assert (= (or b!2484927 b!2484928) bm!152343))

(assert (= (or b!2484927 b!2484928) bm!152344))

(assert (= (and d!713434 res!1051771) b!2484933))

(declare-fun m!2853047 () Bool)

(assert (=> bm!152346 m!2853047))

(declare-fun m!2853049 () Bool)

(assert (=> bm!152343 m!2853049))

(declare-fun m!2853051 () Bool)

(assert (=> bm!152345 m!2853051))

(declare-fun m!2853053 () Bool)

(assert (=> b!2484925 m!2853053))

(assert (=> bm!152347 m!2853041))

(declare-fun m!2853055 () Bool)

(assert (=> b!2484933 m!2853055))

(assert (=> b!2484933 m!2853055))

(declare-fun m!2853057 () Bool)

(assert (=> b!2484933 m!2853057))

(assert (=> b!2484933 m!2853057))

(declare-fun m!2853059 () Bool)

(assert (=> b!2484933 m!2853059))

(assert (=> d!713434 m!2853029))

(assert (=> d!713434 m!2853041))

(declare-fun m!2853061 () Bool)

(assert (=> d!713434 m!2853061))

(declare-fun m!2853063 () Bool)

(assert (=> d!713434 m!2853063))

(declare-fun m!2853065 () Bool)

(assert (=> d!713434 m!2853065))

(assert (=> d!713434 m!2852997))

(assert (=> d!713434 m!2853061))

(assert (=> d!713434 m!2853037))

(assert (=> d!713434 m!2853037))

(declare-fun m!2853067 () Bool)

(assert (=> d!713434 m!2853067))

(assert (=> b!2484930 m!2853029))

(assert (=> b!2484930 m!2853055))

(declare-fun m!2853069 () Bool)

(assert (=> b!2484930 m!2853069))

(declare-fun m!2853071 () Bool)

(assert (=> b!2484930 m!2853071))

(declare-fun m!2853073 () Bool)

(assert (=> b!2484932 m!2853073))

(assert (=> b!2484932 m!2853073))

(declare-fun m!2853075 () Bool)

(assert (=> b!2484932 m!2853075))

(declare-fun m!2853077 () Bool)

(assert (=> b!2484932 m!2853077))

(declare-fun m!2853079 () Bool)

(assert (=> b!2484935 m!2853079))

(assert (=> b!2484935 m!2853029))

(declare-fun m!2853081 () Bool)

(assert (=> b!2484935 m!2853081))

(declare-fun m!2853083 () Bool)

(assert (=> b!2484935 m!2853083))

(assert (=> b!2484935 m!2853055))

(assert (=> b!2484935 m!2853081))

(declare-fun m!2853085 () Bool)

(assert (=> b!2484935 m!2853085))

(declare-fun m!2853087 () Bool)

(assert (=> b!2484935 m!2853087))

(declare-fun m!2853089 () Bool)

(assert (=> b!2484935 m!2853089))

(declare-fun m!2853091 () Bool)

(assert (=> b!2484935 m!2853091))

(declare-fun m!2853093 () Bool)

(assert (=> bm!152344 m!2853093))

(assert (=> bm!152342 m!2853029))

(assert (=> b!2484893 d!713434))

(declare-fun bs!467778 () Bool)

(declare-fun b!2484940 () Bool)

(assert (= bs!467778 (and b!2484940 b!2484897)))

(declare-fun lambda!94367 () Int)

(assert (=> bs!467778 (= lambda!94367 lambda!94361)))

(declare-fun bs!467779 () Bool)

(assert (= bs!467779 (and b!2484940 b!2484930)))

(assert (=> bs!467779 (= lambda!94367 lambda!94364)))

(declare-fun d!713436 () Bool)

(declare-fun res!1051778 () Bool)

(declare-fun e!1577748 () Bool)

(assert (=> d!713436 (=> (not res!1051778) (not e!1577748))))

(declare-fun valid!2615 (MutLongMap!3406) Bool)

(assert (=> d!713436 (= res!1051778 (valid!2615 (v!31599 (underlying!7020 thiss!42540))))))

(assert (=> d!713436 (= (valid!2614 thiss!42540) e!1577748)))

(declare-fun res!1051779 () Bool)

(assert (=> b!2484940 (=> (not res!1051779) (not e!1577748))))

(assert (=> b!2484940 (= res!1051779 (forall!5996 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540)))) lambda!94367))))

(declare-fun b!2484941 () Bool)

(assert (=> b!2484941 (= e!1577748 (allKeysSameHashInMap!183 (map!6294 (v!31599 (underlying!7020 thiss!42540))) (hashF!5302 thiss!42540)))))

(assert (= (and d!713436 res!1051778) b!2484940))

(assert (= (and b!2484940 res!1051779) b!2484941))

(declare-fun m!2853095 () Bool)

(assert (=> d!713436 m!2853095))

(assert (=> b!2484940 m!2853029))

(declare-fun m!2853097 () Bool)

(assert (=> b!2484940 m!2853097))

(assert (=> b!2484941 m!2853029))

(assert (=> b!2484941 m!2853029))

(declare-fun m!2853099 () Bool)

(assert (=> b!2484941 m!2853099))

(assert (=> b!2484892 d!713436))

(declare-fun bm!152352 () Bool)

(declare-fun call!152358 () ListLongMap!597)

(assert (=> bm!152352 (= call!152358 (map!6294 (v!31599 (underlying!7020 thiss!42540))))))

(declare-fun b!2484960 () Bool)

(declare-fun e!1577763 () Bool)

(declare-fun e!1577762 () Bool)

(assert (=> b!2484960 (= e!1577763 e!1577762)))

(declare-fun c!394992 () Bool)

(declare-fun lt!891151 () tuple2!29110)

(assert (=> b!2484960 (= c!394992 (_1!17097 lt!891151))))

(declare-fun b!2484962 () Bool)

(declare-fun e!1577761 () tuple2!29110)

(declare-datatypes ((tuple2!29112 0))(
  ( (tuple2!29113 (_1!17098 Bool) (_2!17098 LongMapFixedSize!6812)) )
))
(declare-fun lt!891150 () tuple2!29112)

(assert (=> b!2484962 (= e!1577761 (tuple2!29111 (_1!17098 lt!891150) (LongMap!3406 (Cell!13442 (_2!17098 lt!891150)))))))

(declare-fun lt!891149 () tuple2!29110)

(declare-fun update!226 (LongMapFixedSize!6812 (_ BitVec 64) List!29286) tuple2!29112)

(assert (=> b!2484962 (= lt!891150 (update!226 (v!31598 (underlying!7019 (_2!17097 lt!891149))) lt!891075 lt!891072))))

(declare-fun b!2484963 () Bool)

(declare-fun call!152357 () ListLongMap!597)

(assert (=> b!2484963 (= e!1577762 (= call!152357 call!152358))))

(declare-fun b!2484964 () Bool)

(declare-fun e!1577759 () Bool)

(assert (=> b!2484964 (= e!1577759 (= call!152357 (+!99 call!152358 (tuple2!29109 lt!891075 lt!891072))))))

(declare-fun b!2484965 () Bool)

(assert (=> b!2484965 (= e!1577762 e!1577759)))

(declare-fun res!1051787 () Bool)

(assert (=> b!2484965 (= res!1051787 (contains!5186 call!152357 lt!891075))))

(assert (=> b!2484965 (=> (not res!1051787) (not e!1577759))))

(declare-fun b!2484966 () Bool)

(declare-fun res!1051788 () Bool)

(assert (=> b!2484966 (=> (not res!1051788) (not e!1577763))))

(assert (=> b!2484966 (= res!1051788 (valid!2615 (_2!17097 lt!891151)))))

(declare-fun b!2484967 () Bool)

(declare-fun e!1577760 () tuple2!29110)

(declare-fun lt!891152 () tuple2!29110)

(assert (=> b!2484967 (= e!1577760 (tuple2!29111 (_1!17097 lt!891152) (_2!17097 lt!891152)))))

(declare-fun repack!28 (MutLongMap!3406) tuple2!29110)

(assert (=> b!2484967 (= lt!891152 (repack!28 (v!31599 (underlying!7020 thiss!42540))))))

(declare-fun d!713438 () Bool)

(assert (=> d!713438 e!1577763))

(declare-fun res!1051786 () Bool)

(assert (=> d!713438 (=> (not res!1051786) (not e!1577763))))

(assert (=> d!713438 (= res!1051786 ((_ is LongMap!3406) (_2!17097 lt!891151)))))

(assert (=> d!713438 (= lt!891151 e!1577761)))

(declare-fun c!394994 () Bool)

(assert (=> d!713438 (= c!394994 (_1!17097 lt!891149))))

(assert (=> d!713438 (= lt!891149 e!1577760)))

(declare-fun c!394993 () Bool)

(declare-fun imbalanced!24 (MutLongMap!3406) Bool)

(assert (=> d!713438 (= c!394993 (imbalanced!24 (v!31599 (underlying!7020 thiss!42540))))))

(assert (=> d!713438 (valid!2615 (v!31599 (underlying!7020 thiss!42540)))))

(assert (=> d!713438 (= (update!225 (v!31599 (underlying!7020 thiss!42540)) lt!891075 lt!891072) lt!891151)))

(declare-fun b!2484961 () Bool)

(assert (=> b!2484961 (= e!1577760 (tuple2!29111 true (v!31599 (underlying!7020 thiss!42540))))))

(declare-fun bm!152353 () Bool)

(assert (=> bm!152353 (= call!152357 (map!6294 (_2!17097 lt!891151)))))

(declare-fun b!2484968 () Bool)

(assert (=> b!2484968 (= e!1577761 (tuple2!29111 false (_2!17097 lt!891149)))))

(assert (= (and d!713438 c!394993) b!2484967))

(assert (= (and d!713438 (not c!394993)) b!2484961))

(assert (= (and d!713438 c!394994) b!2484962))

(assert (= (and d!713438 (not c!394994)) b!2484968))

(assert (= (and d!713438 res!1051786) b!2484966))

(assert (= (and b!2484966 res!1051788) b!2484960))

(assert (= (and b!2484960 c!394992) b!2484965))

(assert (= (and b!2484960 (not c!394992)) b!2484963))

(assert (= (and b!2484965 res!1051787) b!2484964))

(assert (= (or b!2484965 b!2484964 b!2484963) bm!152353))

(assert (= (or b!2484964 b!2484963) bm!152352))

(declare-fun m!2853101 () Bool)

(assert (=> d!713438 m!2853101))

(assert (=> d!713438 m!2853095))

(declare-fun m!2853103 () Bool)

(assert (=> b!2484964 m!2853103))

(declare-fun m!2853105 () Bool)

(assert (=> b!2484962 m!2853105))

(declare-fun m!2853107 () Bool)

(assert (=> b!2484967 m!2853107))

(declare-fun m!2853109 () Bool)

(assert (=> b!2484966 m!2853109))

(declare-fun m!2853111 () Bool)

(assert (=> b!2484965 m!2853111))

(declare-fun m!2853113 () Bool)

(assert (=> bm!152353 m!2853113))

(assert (=> bm!152352 m!2853029))

(assert (=> b!2484897 d!713438))

(declare-fun d!713440 () Bool)

(declare-fun hash!747 (Hashable!3316 K!5600) (_ BitVec 64))

(assert (=> d!713440 (= (hash!743 (hashF!5302 thiss!42540) key!2246) (hash!747 (hashF!5302 thiss!42540) key!2246))))

(declare-fun bs!467780 () Bool)

(assert (= bs!467780 d!713440))

(declare-fun m!2853115 () Bool)

(assert (=> bs!467780 m!2853115))

(assert (=> b!2484897 d!713440))

(declare-fun d!713442 () Bool)

(declare-fun dynLambda!12496 (Int tuple2!29108) Bool)

(assert (=> d!713442 (dynLambda!12496 lambda!94361 (tuple2!29109 lt!891075 lt!891067))))

(declare-fun lt!891155 () Unit!42794)

(declare-fun choose!14681 (List!29287 Int tuple2!29108) Unit!42794)

(assert (=> d!713442 (= lt!891155 (choose!14681 (toList!1647 lt!891080) lambda!94361 (tuple2!29109 lt!891075 lt!891067)))))

(declare-fun e!1577766 () Bool)

(assert (=> d!713442 e!1577766))

(declare-fun res!1051791 () Bool)

(assert (=> d!713442 (=> (not res!1051791) (not e!1577766))))

(assert (=> d!713442 (= res!1051791 (forall!5996 (toList!1647 lt!891080) lambda!94361))))

(assert (=> d!713442 (= (forallContained!890 (toList!1647 lt!891080) lambda!94361 (tuple2!29109 lt!891075 lt!891067)) lt!891155)))

(declare-fun b!2484971 () Bool)

(assert (=> b!2484971 (= e!1577766 (contains!5185 (toList!1647 lt!891080) (tuple2!29109 lt!891075 lt!891067)))))

(assert (= (and d!713442 res!1051791) b!2484971))

(declare-fun b_lambda!76271 () Bool)

(assert (=> (not b_lambda!76271) (not d!713442)))

(declare-fun m!2853117 () Bool)

(assert (=> d!713442 m!2853117))

(declare-fun m!2853119 () Bool)

(assert (=> d!713442 m!2853119))

(declare-fun m!2853121 () Bool)

(assert (=> d!713442 m!2853121))

(declare-fun m!2853123 () Bool)

(assert (=> b!2484971 m!2853123))

(assert (=> b!2484897 d!713442))

(declare-fun d!713444 () Bool)

(declare-fun res!1051796 () Bool)

(declare-fun e!1577771 () Bool)

(assert (=> d!713444 (=> res!1051796 e!1577771)))

(assert (=> d!713444 (= res!1051796 (not ((_ is Cons!29186) lt!891072)))))

(assert (=> d!713444 (= (noDuplicateKeys!109 lt!891072) e!1577771)))

(declare-fun b!2484976 () Bool)

(declare-fun e!1577772 () Bool)

(assert (=> b!2484976 (= e!1577771 e!1577772)))

(declare-fun res!1051797 () Bool)

(assert (=> b!2484976 (=> (not res!1051797) (not e!1577772))))

(declare-fun containsKey!157 (List!29286 K!5600) Bool)

(assert (=> b!2484976 (= res!1051797 (not (containsKey!157 (t!210965 lt!891072) (_1!17094 (h!34598 lt!891072)))))))

(declare-fun b!2484977 () Bool)

(assert (=> b!2484977 (= e!1577772 (noDuplicateKeys!109 (t!210965 lt!891072)))))

(assert (= (and d!713444 (not res!1051796)) b!2484976))

(assert (= (and b!2484976 res!1051797) b!2484977))

(declare-fun m!2853125 () Bool)

(assert (=> b!2484976 m!2853125))

(declare-fun m!2853127 () Bool)

(assert (=> b!2484977 m!2853127))

(assert (=> b!2484897 d!713444))

(declare-fun d!713446 () Bool)

(declare-fun map!6296 (LongMapFixedSize!6812) ListLongMap!597)

(assert (=> d!713446 (= (map!6294 (v!31599 (underlying!7020 thiss!42540))) (map!6296 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540))))))))

(declare-fun bs!467781 () Bool)

(assert (= bs!467781 d!713446))

(declare-fun m!2853129 () Bool)

(assert (=> bs!467781 m!2853129))

(assert (=> b!2484897 d!713446))

(declare-fun d!713448 () Bool)

(declare-fun e!1577775 () Bool)

(assert (=> d!713448 e!1577775))

(declare-fun c!394997 () Bool)

(assert (=> d!713448 (= c!394997 (contains!5184 (v!31599 (underlying!7020 thiss!42540)) lt!891075))))

(declare-fun lt!891158 () List!29286)

(declare-fun apply!6972 (LongMapFixedSize!6812 (_ BitVec 64)) List!29286)

(assert (=> d!713448 (= lt!891158 (apply!6972 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))) lt!891075))))

(assert (=> d!713448 (valid!2615 (v!31599 (underlying!7020 thiss!42540)))))

(assert (=> d!713448 (= (apply!6970 (v!31599 (underlying!7020 thiss!42540)) lt!891075) lt!891158)))

(declare-fun b!2484982 () Bool)

(declare-fun get!9008 (Option!5773) List!29286)

(assert (=> b!2484982 (= e!1577775 (= lt!891158 (get!9008 (getValueByKey!149 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540)))) lt!891075))))))

(declare-fun b!2484983 () Bool)

(declare-fun dynLambda!12497 (Int (_ BitVec 64)) List!29286)

(assert (=> b!2484983 (= e!1577775 (= lt!891158 (dynLambda!12497 (defaultEntry!3780 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540))))) lt!891075)))))

(assert (=> b!2484983 ((_ is LongMap!3406) (v!31599 (underlying!7020 thiss!42540)))))

(assert (= (and d!713448 c!394997) b!2484982))

(assert (= (and d!713448 (not c!394997)) b!2484983))

(declare-fun b_lambda!76273 () Bool)

(assert (=> (not b_lambda!76273) (not b!2484983)))

(declare-fun t!210968 () Bool)

(declare-fun tb!140397 () Bool)

(assert (=> (and b!2484900 (= (defaultEntry!3780 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540))))) (defaultEntry!3780 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) t!210968) tb!140397))

(assert (=> b!2484983 t!210968))

(declare-fun result!173386 () Bool)

(declare-fun b_and!188759 () Bool)

(assert (= b_and!188755 (and (=> t!210968 result!173386) b_and!188759)))

(declare-fun m!2853131 () Bool)

(assert (=> d!713448 m!2853131))

(declare-fun m!2853133 () Bool)

(assert (=> d!713448 m!2853133))

(assert (=> d!713448 m!2853095))

(assert (=> b!2484982 m!2853029))

(declare-fun m!2853135 () Bool)

(assert (=> b!2484982 m!2853135))

(assert (=> b!2484982 m!2853135))

(declare-fun m!2853137 () Bool)

(assert (=> b!2484982 m!2853137))

(declare-fun m!2853139 () Bool)

(assert (=> b!2484983 m!2853139))

(assert (=> b!2484897 d!713448))

(declare-fun d!713450 () Bool)

(assert (=> d!713450 (noDuplicateKeys!109 (removePairForKey!101 lt!891067 key!2246))))

(declare-fun lt!891161 () Unit!42794)

(declare-fun choose!14682 (List!29286 K!5600) Unit!42794)

(assert (=> d!713450 (= lt!891161 (choose!14682 lt!891067 key!2246))))

(assert (=> d!713450 (noDuplicateKeys!109 lt!891067)))

(assert (=> d!713450 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!89 lt!891067 key!2246) lt!891161)))

(declare-fun bs!467782 () Bool)

(assert (= bs!467782 d!713450))

(assert (=> bs!467782 m!2853043))

(assert (=> bs!467782 m!2853043))

(declare-fun m!2853141 () Bool)

(assert (=> bs!467782 m!2853141))

(declare-fun m!2853143 () Bool)

(assert (=> bs!467782 m!2853143))

(declare-fun m!2853145 () Bool)

(assert (=> bs!467782 m!2853145))

(assert (=> b!2484897 d!713450))

(declare-fun d!713452 () Bool)

(declare-fun lt!891164 () ListMap!1127)

(declare-fun invariantList!419 (List!29286) Bool)

(assert (=> d!713452 (invariantList!419 (toList!1648 lt!891164))))

(assert (=> d!713452 (= lt!891164 (extractMap!185 (toList!1647 (map!6294 (v!31599 (underlying!7020 thiss!42540))))))))

(assert (=> d!713452 (valid!2614 thiss!42540)))

(assert (=> d!713452 (= (map!6295 thiss!42540) lt!891164)))

(declare-fun bs!467783 () Bool)

(assert (= bs!467783 d!713452))

(declare-fun m!2853147 () Bool)

(assert (=> bs!467783 m!2853147))

(assert (=> bs!467783 m!2853029))

(assert (=> bs!467783 m!2853061))

(assert (=> bs!467783 m!2852997))

(assert (=> b!2484897 d!713452))

(declare-fun b!2484995 () Bool)

(declare-fun e!1577781 () List!29286)

(assert (=> b!2484995 (= e!1577781 Nil!29186)))

(declare-fun b!2484994 () Bool)

(assert (=> b!2484994 (= e!1577781 (Cons!29186 (h!34598 lt!891067) (removePairForKey!101 (t!210965 lt!891067) key!2246)))))

(declare-fun b!2484992 () Bool)

(declare-fun e!1577780 () List!29286)

(assert (=> b!2484992 (= e!1577780 (t!210965 lt!891067))))

(declare-fun d!713454 () Bool)

(declare-fun lt!891167 () List!29286)

(assert (=> d!713454 (not (containsKey!157 lt!891167 key!2246))))

(assert (=> d!713454 (= lt!891167 e!1577780)))

(declare-fun c!395003 () Bool)

(assert (=> d!713454 (= c!395003 (and ((_ is Cons!29186) lt!891067) (= (_1!17094 (h!34598 lt!891067)) key!2246)))))

(assert (=> d!713454 (noDuplicateKeys!109 lt!891067)))

(assert (=> d!713454 (= (removePairForKey!101 lt!891067 key!2246) lt!891167)))

(declare-fun b!2484993 () Bool)

(assert (=> b!2484993 (= e!1577780 e!1577781)))

(declare-fun c!395002 () Bool)

(assert (=> b!2484993 (= c!395002 ((_ is Cons!29186) lt!891067))))

(assert (= (and d!713454 c!395003) b!2484992))

(assert (= (and d!713454 (not c!395003)) b!2484993))

(assert (= (and b!2484993 c!395002) b!2484994))

(assert (= (and b!2484993 (not c!395002)) b!2484995))

(declare-fun m!2853149 () Bool)

(assert (=> b!2484994 m!2853149))

(declare-fun m!2853151 () Bool)

(assert (=> d!713454 m!2853151))

(assert (=> d!713454 m!2853145))

(assert (=> b!2484897 d!713454))

(declare-fun d!713456 () Bool)

(assert (=> d!713456 (= (map!6294 (v!31599 (underlying!7020 (_2!17095 lt!891074)))) (map!6296 (v!31598 (underlying!7019 (v!31599 (underlying!7020 (_2!17095 lt!891074)))))))))

(declare-fun bs!467784 () Bool)

(assert (= bs!467784 d!713456))

(declare-fun m!2853153 () Bool)

(assert (=> bs!467784 m!2853153))

(assert (=> b!2484891 d!713456))

(declare-fun bs!467785 () Bool)

(declare-fun d!713458 () Bool)

(assert (= bs!467785 (and d!713458 b!2484897)))

(declare-fun lambda!94372 () Int)

(assert (=> bs!467785 (= lambda!94372 lambda!94361)))

(declare-fun bs!467786 () Bool)

(assert (= bs!467786 (and d!713458 b!2484930)))

(assert (=> bs!467786 (= lambda!94372 lambda!94364)))

(declare-fun bs!467787 () Bool)

(assert (= bs!467787 (and d!713458 b!2484940)))

(assert (=> bs!467787 (= lambda!94372 lambda!94367)))

(declare-fun e!1577784 () Bool)

(assert (=> d!713458 e!1577784))

(declare-fun res!1051800 () Bool)

(assert (=> d!713458 (=> (not res!1051800) (not e!1577784))))

(declare-fun lt!891173 () ListLongMap!597)

(assert (=> d!713458 (= res!1051800 (forall!5996 (toList!1647 lt!891173) lambda!94372))))

(assert (=> d!713458 (= lt!891173 (+!99 lt!891080 (tuple2!29109 lt!891075 lt!891072)))))

(declare-fun lt!891172 () Unit!42794)

(declare-fun choose!14683 (ListLongMap!597 (_ BitVec 64) List!29286 Hashable!3316) Unit!42794)

(assert (=> d!713458 (= lt!891172 (choose!14683 lt!891080 lt!891075 lt!891072 (hashF!5302 (_2!17095 lt!891074))))))

(assert (=> d!713458 (forall!5996 (toList!1647 lt!891080) lambda!94372)))

(assert (=> d!713458 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!62 lt!891080 lt!891075 lt!891072 (hashF!5302 (_2!17095 lt!891074))) lt!891172)))

(declare-fun b!2484998 () Bool)

(assert (=> b!2484998 (= e!1577784 (allKeysSameHashInMap!183 lt!891173 (hashF!5302 (_2!17095 lt!891074))))))

(assert (= (and d!713458 res!1051800) b!2484998))

(declare-fun m!2853155 () Bool)

(assert (=> d!713458 m!2853155))

(assert (=> d!713458 m!2853023))

(declare-fun m!2853157 () Bool)

(assert (=> d!713458 m!2853157))

(declare-fun m!2853159 () Bool)

(assert (=> d!713458 m!2853159))

(declare-fun m!2853161 () Bool)

(assert (=> b!2484998 m!2853161))

(assert (=> b!2484891 d!713458))

(declare-fun bs!467788 () Bool)

(declare-fun d!713460 () Bool)

(assert (= bs!467788 (and d!713460 b!2484897)))

(declare-fun lambda!94375 () Int)

(assert (=> bs!467788 (not (= lambda!94375 lambda!94361))))

(declare-fun bs!467789 () Bool)

(assert (= bs!467789 (and d!713460 b!2484930)))

(assert (=> bs!467789 (not (= lambda!94375 lambda!94364))))

(declare-fun bs!467790 () Bool)

(assert (= bs!467790 (and d!713460 b!2484940)))

(assert (=> bs!467790 (not (= lambda!94375 lambda!94367))))

(declare-fun bs!467791 () Bool)

(assert (= bs!467791 (and d!713460 d!713458)))

(assert (=> bs!467791 (not (= lambda!94375 lambda!94372))))

(assert (=> d!713460 true))

(assert (=> d!713460 (allKeysSameHash!82 lt!891067 lt!891075 (hashF!5302 (_2!17095 lt!891074)))))

(declare-fun lt!891176 () Unit!42794)

(declare-fun choose!14684 (List!29287 (_ BitVec 64) List!29286 Hashable!3316) Unit!42794)

(assert (=> d!713460 (= lt!891176 (choose!14684 (toList!1647 lt!891080) lt!891075 lt!891067 (hashF!5302 (_2!17095 lt!891074))))))

(assert (=> d!713460 (forall!5996 (toList!1647 lt!891080) lambda!94375)))

(assert (=> d!713460 (= (lemmaInLongMapAllKeySameHashThenForTuple!75 (toList!1647 lt!891080) lt!891075 lt!891067 (hashF!5302 (_2!17095 lt!891074))) lt!891176)))

(declare-fun bs!467792 () Bool)

(assert (= bs!467792 d!713460))

(assert (=> bs!467792 m!2853021))

(declare-fun m!2853163 () Bool)

(assert (=> bs!467792 m!2853163))

(declare-fun m!2853165 () Bool)

(assert (=> bs!467792 m!2853165))

(assert (=> b!2484891 d!713460))

(declare-fun d!713462 () Bool)

(declare-fun res!1051805 () Bool)

(declare-fun e!1577789 () Bool)

(assert (=> d!713462 (=> res!1051805 e!1577789)))

(assert (=> d!713462 (= res!1051805 ((_ is Nil!29187) (toList!1647 lt!891070)))))

(assert (=> d!713462 (= (forall!5996 (toList!1647 lt!891070) lambda!94361) e!1577789)))

(declare-fun b!2485005 () Bool)

(declare-fun e!1577790 () Bool)

(assert (=> b!2485005 (= e!1577789 e!1577790)))

(declare-fun res!1051806 () Bool)

(assert (=> b!2485005 (=> (not res!1051806) (not e!1577790))))

(assert (=> b!2485005 (= res!1051806 (dynLambda!12496 lambda!94361 (h!34599 (toList!1647 lt!891070))))))

(declare-fun b!2485006 () Bool)

(assert (=> b!2485006 (= e!1577790 (forall!5996 (t!210966 (toList!1647 lt!891070)) lambda!94361))))

(assert (= (and d!713462 (not res!1051805)) b!2485005))

(assert (= (and b!2485005 res!1051806) b!2485006))

(declare-fun b_lambda!76275 () Bool)

(assert (=> (not b_lambda!76275) (not b!2485005)))

(declare-fun m!2853167 () Bool)

(assert (=> b!2485005 m!2853167))

(declare-fun m!2853169 () Bool)

(assert (=> b!2485006 m!2853169))

(assert (=> b!2484891 d!713462))

(declare-fun d!713464 () Bool)

(declare-fun res!1051807 () Bool)

(declare-fun e!1577791 () Bool)

(assert (=> d!713464 (=> res!1051807 e!1577791)))

(assert (=> d!713464 (= res!1051807 ((_ is Nil!29187) (toList!1647 lt!891073)))))

(assert (=> d!713464 (= (forall!5996 (toList!1647 lt!891073) lambda!94361) e!1577791)))

(declare-fun b!2485007 () Bool)

(declare-fun e!1577792 () Bool)

(assert (=> b!2485007 (= e!1577791 e!1577792)))

(declare-fun res!1051808 () Bool)

(assert (=> b!2485007 (=> (not res!1051808) (not e!1577792))))

(assert (=> b!2485007 (= res!1051808 (dynLambda!12496 lambda!94361 (h!34599 (toList!1647 lt!891073))))))

(declare-fun b!2485008 () Bool)

(assert (=> b!2485008 (= e!1577792 (forall!5996 (t!210966 (toList!1647 lt!891073)) lambda!94361))))

(assert (= (and d!713464 (not res!1051807)) b!2485007))

(assert (= (and b!2485007 res!1051808) b!2485008))

(declare-fun b_lambda!76277 () Bool)

(assert (=> (not b_lambda!76277) (not b!2485007)))

(declare-fun m!2853171 () Bool)

(assert (=> b!2485007 m!2853171))

(declare-fun m!2853173 () Bool)

(assert (=> b!2485008 m!2853173))

(assert (=> b!2484891 d!713464))

(declare-fun d!713466 () Bool)

(assert (=> d!713466 true))

(assert (=> d!713466 true))

(declare-fun lambda!94378 () Int)

(declare-fun forall!5997 (List!29286 Int) Bool)

(assert (=> d!713466 (= (allKeysSameHash!82 lt!891072 lt!891075 (hashF!5302 (_2!17095 lt!891074))) (forall!5997 lt!891072 lambda!94378))))

(declare-fun bs!467793 () Bool)

(assert (= bs!467793 d!713466))

(declare-fun m!2853175 () Bool)

(assert (=> bs!467793 m!2853175))

(assert (=> b!2484891 d!713466))

(declare-fun bs!467794 () Bool)

(declare-fun d!713468 () Bool)

(assert (= bs!467794 (and d!713468 d!713466)))

(declare-fun lambda!94379 () Int)

(assert (=> bs!467794 (= lambda!94379 lambda!94378)))

(assert (=> d!713468 true))

(assert (=> d!713468 true))

(assert (=> d!713468 (= (allKeysSameHash!82 lt!891067 lt!891075 (hashF!5302 (_2!17095 lt!891074))) (forall!5997 lt!891067 lambda!94379))))

(declare-fun bs!467795 () Bool)

(assert (= bs!467795 d!713468))

(declare-fun m!2853177 () Bool)

(assert (=> bs!467795 m!2853177))

(assert (=> b!2484891 d!713468))

(declare-fun d!713470 () Bool)

(assert (=> d!713470 (allKeysSameHash!82 (removePairForKey!101 lt!891067 key!2246) lt!891075 (hashF!5302 (_2!17095 lt!891074)))))

(declare-fun lt!891179 () Unit!42794)

(declare-fun choose!14685 (List!29286 K!5600 (_ BitVec 64) Hashable!3316) Unit!42794)

(assert (=> d!713470 (= lt!891179 (choose!14685 lt!891067 key!2246 lt!891075 (hashF!5302 (_2!17095 lt!891074))))))

(assert (=> d!713470 (noDuplicateKeys!109 lt!891067)))

(assert (=> d!713470 (= (lemmaRemovePairForKeyPreservesHash!71 lt!891067 key!2246 lt!891075 (hashF!5302 (_2!17095 lt!891074))) lt!891179)))

(declare-fun bs!467796 () Bool)

(assert (= bs!467796 d!713470))

(assert (=> bs!467796 m!2853043))

(assert (=> bs!467796 m!2853043))

(declare-fun m!2853179 () Bool)

(assert (=> bs!467796 m!2853179))

(declare-fun m!2853181 () Bool)

(assert (=> bs!467796 m!2853181))

(assert (=> bs!467796 m!2853145))

(assert (=> b!2484891 d!713470))

(declare-fun d!713472 () Bool)

(declare-fun e!1577795 () Bool)

(assert (=> d!713472 e!1577795))

(declare-fun res!1051814 () Bool)

(assert (=> d!713472 (=> (not res!1051814) (not e!1577795))))

(declare-fun lt!891191 () ListLongMap!597)

(assert (=> d!713472 (= res!1051814 (contains!5186 lt!891191 (_1!17096 (tuple2!29109 lt!891075 lt!891072))))))

(declare-fun lt!891190 () List!29287)

(assert (=> d!713472 (= lt!891191 (ListLongMap!598 lt!891190))))

(declare-fun lt!891189 () Unit!42794)

(declare-fun lt!891188 () Unit!42794)

(assert (=> d!713472 (= lt!891189 lt!891188)))

(assert (=> d!713472 (= (getValueByKey!149 lt!891190 (_1!17096 (tuple2!29109 lt!891075 lt!891072))) (Some!5772 (_2!17096 (tuple2!29109 lt!891075 lt!891072))))))

(declare-fun lemmaContainsTupThenGetReturnValue!23 (List!29287 (_ BitVec 64) List!29286) Unit!42794)

(assert (=> d!713472 (= lt!891188 (lemmaContainsTupThenGetReturnValue!23 lt!891190 (_1!17096 (tuple2!29109 lt!891075 lt!891072)) (_2!17096 (tuple2!29109 lt!891075 lt!891072))))))

(declare-fun insertStrictlySorted!17 (List!29287 (_ BitVec 64) List!29286) List!29287)

(assert (=> d!713472 (= lt!891190 (insertStrictlySorted!17 (toList!1647 lt!891080) (_1!17096 (tuple2!29109 lt!891075 lt!891072)) (_2!17096 (tuple2!29109 lt!891075 lt!891072))))))

(assert (=> d!713472 (= (+!99 lt!891080 (tuple2!29109 lt!891075 lt!891072)) lt!891191)))

(declare-fun b!2485017 () Bool)

(declare-fun res!1051813 () Bool)

(assert (=> b!2485017 (=> (not res!1051813) (not e!1577795))))

(assert (=> b!2485017 (= res!1051813 (= (getValueByKey!149 (toList!1647 lt!891191) (_1!17096 (tuple2!29109 lt!891075 lt!891072))) (Some!5772 (_2!17096 (tuple2!29109 lt!891075 lt!891072)))))))

(declare-fun b!2485018 () Bool)

(assert (=> b!2485018 (= e!1577795 (contains!5185 (toList!1647 lt!891191) (tuple2!29109 lt!891075 lt!891072)))))

(assert (= (and d!713472 res!1051814) b!2485017))

(assert (= (and b!2485017 res!1051813) b!2485018))

(declare-fun m!2853183 () Bool)

(assert (=> d!713472 m!2853183))

(declare-fun m!2853185 () Bool)

(assert (=> d!713472 m!2853185))

(declare-fun m!2853187 () Bool)

(assert (=> d!713472 m!2853187))

(declare-fun m!2853189 () Bool)

(assert (=> d!713472 m!2853189))

(declare-fun m!2853191 () Bool)

(assert (=> b!2485017 m!2853191))

(declare-fun m!2853193 () Bool)

(assert (=> b!2485018 m!2853193))

(assert (=> b!2484891 d!713472))

(declare-fun bs!467797 () Bool)

(declare-fun b!2485019 () Bool)

(assert (= bs!467797 (and b!2485019 b!2484930)))

(declare-fun lambda!94380 () Int)

(assert (=> bs!467797 (= lambda!94380 lambda!94364)))

(declare-fun bs!467798 () Bool)

(assert (= bs!467798 (and b!2485019 b!2484897)))

(assert (=> bs!467798 (= lambda!94380 lambda!94361)))

(declare-fun bs!467799 () Bool)

(assert (= bs!467799 (and b!2485019 d!713460)))

(assert (=> bs!467799 (not (= lambda!94380 lambda!94375))))

(declare-fun bs!467800 () Bool)

(assert (= bs!467800 (and b!2485019 b!2484940)))

(assert (=> bs!467800 (= lambda!94380 lambda!94367)))

(declare-fun bs!467801 () Bool)

(assert (= bs!467801 (and b!2485019 d!713458)))

(assert (=> bs!467801 (= lambda!94380 lambda!94372)))

(declare-fun d!713474 () Bool)

(declare-fun res!1051815 () Bool)

(declare-fun e!1577796 () Bool)

(assert (=> d!713474 (=> (not res!1051815) (not e!1577796))))

(assert (=> d!713474 (= res!1051815 (valid!2615 (v!31599 (underlying!7020 (_2!17095 lt!891074)))))))

(assert (=> d!713474 (= (valid!2614 (_2!17095 lt!891074)) e!1577796)))

(declare-fun res!1051816 () Bool)

(assert (=> b!2485019 (=> (not res!1051816) (not e!1577796))))

(assert (=> b!2485019 (= res!1051816 (forall!5996 (toList!1647 (map!6294 (v!31599 (underlying!7020 (_2!17095 lt!891074))))) lambda!94380))))

(declare-fun b!2485020 () Bool)

(assert (=> b!2485020 (= e!1577796 (allKeysSameHashInMap!183 (map!6294 (v!31599 (underlying!7020 (_2!17095 lt!891074)))) (hashF!5302 (_2!17095 lt!891074))))))

(assert (= (and d!713474 res!1051815) b!2485019))

(assert (= (and b!2485019 res!1051816) b!2485020))

(declare-fun m!2853195 () Bool)

(assert (=> d!713474 m!2853195))

(assert (=> b!2485019 m!2853011))

(declare-fun m!2853197 () Bool)

(assert (=> b!2485019 m!2853197))

(assert (=> b!2485020 m!2853011))

(assert (=> b!2485020 m!2853011))

(declare-fun m!2853199 () Bool)

(assert (=> b!2485020 m!2853199))

(assert (=> b!2484891 d!713474))

(declare-fun bs!467802 () Bool)

(declare-fun d!713476 () Bool)

(assert (= bs!467802 (and d!713476 b!2484930)))

(declare-fun lambda!94383 () Int)

(assert (=> bs!467802 (not (= lambda!94383 lambda!94364))))

(declare-fun bs!467803 () Bool)

(assert (= bs!467803 (and d!713476 b!2484897)))

(assert (=> bs!467803 (not (= lambda!94383 lambda!94361))))

(declare-fun bs!467804 () Bool)

(assert (= bs!467804 (and d!713476 d!713460)))

(assert (=> bs!467804 (= lambda!94383 lambda!94375)))

(declare-fun bs!467805 () Bool)

(assert (= bs!467805 (and d!713476 b!2485019)))

(assert (=> bs!467805 (not (= lambda!94383 lambda!94380))))

(declare-fun bs!467806 () Bool)

(assert (= bs!467806 (and d!713476 b!2484940)))

(assert (=> bs!467806 (not (= lambda!94383 lambda!94367))))

(declare-fun bs!467807 () Bool)

(assert (= bs!467807 (and d!713476 d!713458)))

(assert (=> bs!467807 (not (= lambda!94383 lambda!94372))))

(assert (=> d!713476 true))

(assert (=> d!713476 (= (allKeysSameHashInMap!183 lt!891073 (hashF!5302 (_2!17095 lt!891074))) (forall!5996 (toList!1647 lt!891073) lambda!94383))))

(declare-fun bs!467808 () Bool)

(assert (= bs!467808 d!713476))

(declare-fun m!2853201 () Bool)

(assert (=> bs!467808 m!2853201))

(assert (=> b!2484896 d!713476))

(declare-fun bs!467809 () Bool)

(declare-fun d!713478 () Bool)

(assert (= bs!467809 (and d!713478 b!2484930)))

(declare-fun lambda!94384 () Int)

(assert (=> bs!467809 (not (= lambda!94384 lambda!94364))))

(declare-fun bs!467810 () Bool)

(assert (= bs!467810 (and d!713478 b!2484897)))

(assert (=> bs!467810 (not (= lambda!94384 lambda!94361))))

(declare-fun bs!467811 () Bool)

(assert (= bs!467811 (and d!713478 d!713460)))

(assert (=> bs!467811 (= lambda!94384 lambda!94375)))

(declare-fun bs!467812 () Bool)

(assert (= bs!467812 (and d!713478 d!713476)))

(assert (=> bs!467812 (= lambda!94384 lambda!94383)))

(declare-fun bs!467813 () Bool)

(assert (= bs!467813 (and d!713478 b!2485019)))

(assert (=> bs!467813 (not (= lambda!94384 lambda!94380))))

(declare-fun bs!467814 () Bool)

(assert (= bs!467814 (and d!713478 b!2484940)))

(assert (=> bs!467814 (not (= lambda!94384 lambda!94367))))

(declare-fun bs!467815 () Bool)

(assert (= bs!467815 (and d!713478 d!713458)))

(assert (=> bs!467815 (not (= lambda!94384 lambda!94372))))

(assert (=> d!713478 true))

(assert (=> d!713478 (= (allKeysSameHashInMap!183 lt!891070 (hashF!5302 (_2!17095 lt!891074))) (forall!5996 (toList!1647 lt!891070) lambda!94384))))

(declare-fun bs!467816 () Bool)

(assert (= bs!467816 d!713478))

(declare-fun m!2853203 () Bool)

(assert (=> bs!467816 m!2853203))

(assert (=> b!2484901 d!713478))

(declare-fun d!713480 () Bool)

(assert (=> d!713480 (= (array_inv!3881 (_keys!3703 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) (bvsge (size!22822 (_keys!3703 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484900 d!713480))

(declare-fun d!713482 () Bool)

(assert (=> d!713482 (= (array_inv!3882 (_values!3686 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) (bvsge (size!22821 (_values!3686 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484900 d!713482))

(declare-fun e!1577799 () Bool)

(declare-fun tp!795543 () Bool)

(declare-fun b!2485025 () Bool)

(declare-fun tp_is_empty!12363 () Bool)

(assert (=> b!2485025 (= e!1577799 (and tp_is_empty!12361 tp_is_empty!12363 tp!795543))))

(assert (=> b!2484894 (= tp!795539 e!1577799)))

(assert (= (and b!2484894 ((_ is Cons!29186) mapDefault!15717)) b!2485025))

(declare-fun tp!795550 () Bool)

(declare-fun b!2485033 () Bool)

(declare-fun e!1577805 () Bool)

(assert (=> b!2485033 (= e!1577805 (and tp_is_empty!12361 tp_is_empty!12363 tp!795550))))

(declare-fun condMapEmpty!15720 () Bool)

(declare-fun mapDefault!15720 () List!29286)

(assert (=> mapNonEmpty!15717 (= condMapEmpty!15720 (= mapRest!15717 ((as const (Array (_ BitVec 32) List!29286)) mapDefault!15720)))))

(declare-fun mapRes!15720 () Bool)

(assert (=> mapNonEmpty!15717 (= tp!795534 (and e!1577805 mapRes!15720))))

(declare-fun mapNonEmpty!15720 () Bool)

(declare-fun tp!795551 () Bool)

(declare-fun e!1577804 () Bool)

(assert (=> mapNonEmpty!15720 (= mapRes!15720 (and tp!795551 e!1577804))))

(declare-fun mapValue!15720 () List!29286)

(declare-fun mapRest!15720 () (Array (_ BitVec 32) List!29286))

(declare-fun mapKey!15720 () (_ BitVec 32))

(assert (=> mapNonEmpty!15720 (= mapRest!15717 (store mapRest!15720 mapKey!15720 mapValue!15720))))

(declare-fun tp!795552 () Bool)

(declare-fun b!2485032 () Bool)

(assert (=> b!2485032 (= e!1577804 (and tp_is_empty!12361 tp_is_empty!12363 tp!795552))))

(declare-fun mapIsEmpty!15720 () Bool)

(assert (=> mapIsEmpty!15720 mapRes!15720))

(assert (= (and mapNonEmpty!15717 condMapEmpty!15720) mapIsEmpty!15720))

(assert (= (and mapNonEmpty!15717 (not condMapEmpty!15720)) mapNonEmpty!15720))

(assert (= (and mapNonEmpty!15720 ((_ is Cons!29186) mapValue!15720)) b!2485032))

(assert (= (and mapNonEmpty!15717 ((_ is Cons!29186) mapDefault!15720)) b!2485033))

(declare-fun m!2853205 () Bool)

(assert (=> mapNonEmpty!15720 m!2853205))

(declare-fun e!1577806 () Bool)

(declare-fun tp!795553 () Bool)

(declare-fun b!2485034 () Bool)

(assert (=> b!2485034 (= e!1577806 (and tp_is_empty!12361 tp_is_empty!12363 tp!795553))))

(assert (=> mapNonEmpty!15717 (= tp!795536 e!1577806)))

(assert (= (and mapNonEmpty!15717 ((_ is Cons!29186) mapValue!15717)) b!2485034))

(declare-fun e!1577807 () Bool)

(declare-fun tp!795554 () Bool)

(declare-fun b!2485035 () Bool)

(assert (=> b!2485035 (= e!1577807 (and tp_is_empty!12361 tp_is_empty!12363 tp!795554))))

(assert (=> b!2484900 (= tp!795538 e!1577807)))

(assert (= (and b!2484900 ((_ is Cons!29186) (zeroValue!3664 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540))))))) b!2485035))

(declare-fun e!1577808 () Bool)

(declare-fun tp!795555 () Bool)

(declare-fun b!2485036 () Bool)

(assert (=> b!2485036 (= e!1577808 (and tp_is_empty!12361 tp_is_empty!12363 tp!795555))))

(assert (=> b!2484900 (= tp!795537 e!1577808)))

(assert (= (and b!2484900 ((_ is Cons!29186) (minValue!3664 (v!31598 (underlying!7019 (v!31599 (underlying!7020 thiss!42540))))))) b!2485036))

(declare-fun b_lambda!76279 () Bool)

(assert (= b_lambda!76273 (or (and b!2484900 b_free!72481) b_lambda!76279)))

(declare-fun b_lambda!76281 () Bool)

(assert (= b_lambda!76275 (or b!2484897 b_lambda!76281)))

(declare-fun bs!467817 () Bool)

(declare-fun d!713484 () Bool)

(assert (= bs!467817 (and d!713484 b!2484897)))

(assert (=> bs!467817 (= (dynLambda!12496 lambda!94361 (h!34599 (toList!1647 lt!891070))) (noDuplicateKeys!109 (_2!17096 (h!34599 (toList!1647 lt!891070)))))))

(declare-fun m!2853207 () Bool)

(assert (=> bs!467817 m!2853207))

(assert (=> b!2485005 d!713484))

(declare-fun b_lambda!76283 () Bool)

(assert (= b_lambda!76277 (or b!2484897 b_lambda!76283)))

(declare-fun bs!467818 () Bool)

(declare-fun d!713486 () Bool)

(assert (= bs!467818 (and d!713486 b!2484897)))

(assert (=> bs!467818 (= (dynLambda!12496 lambda!94361 (h!34599 (toList!1647 lt!891073))) (noDuplicateKeys!109 (_2!17096 (h!34599 (toList!1647 lt!891073)))))))

(declare-fun m!2853209 () Bool)

(assert (=> bs!467818 m!2853209))

(assert (=> b!2485007 d!713486))

(declare-fun b_lambda!76285 () Bool)

(assert (= b_lambda!76271 (or b!2484897 b_lambda!76285)))

(declare-fun bs!467819 () Bool)

(declare-fun d!713488 () Bool)

(assert (= bs!467819 (and d!713488 b!2484897)))

(assert (=> bs!467819 (= (dynLambda!12496 lambda!94361 (tuple2!29109 lt!891075 lt!891067)) (noDuplicateKeys!109 (_2!17096 (tuple2!29109 lt!891075 lt!891067))))))

(declare-fun m!2853211 () Bool)

(assert (=> bs!467819 m!2853211))

(assert (=> d!713442 d!713488))

(check-sat (not b_lambda!76285) (not bs!467817) (not d!713450) b_and!188759 (not d!713434) (not b!2485017) (not b!2484966) (not b_lambda!76283) (not d!713474) (not d!713468) (not bm!152352) (not d!713472) (not b_lambda!76281) (not b!2484932) (not b!2484982) (not d!713470) (not b!2485035) (not bm!152353) (not bm!152347) (not b_next!73187) (not b!2484935) (not b_next!73185) (not bs!467818) (not b!2484962) (not b!2485018) (not bm!152343) (not d!713448) (not d!713456) (not b!2485036) (not b!2485025) (not d!713454) (not b!2484940) (not b!2484971) (not d!713476) (not d!713436) (not mapNonEmpty!15720) (not b!2484967) (not d!713446) (not b!2484933) (not b!2484930) (not d!713460) (not bm!152342) (not b!2485006) (not b!2485020) (not b_lambda!76279) (not bs!467819) (not b!2485033) b_and!188757 (not tb!140397) (not d!713452) (not b!2484964) (not b!2484994) (not d!713466) (not bm!152346) (not b!2484941) (not b!2485032) tp_is_empty!12363 (not d!713440) (not d!713478) (not bm!152345) (not b!2485019) (not b!2484998) (not b!2484965) (not b!2484925) tp_is_empty!12361 (not b!2484977) (not d!713458) (not b!2484976) (not d!713442) (not b!2485008) (not bm!152344) (not d!713438) (not b!2485034))
(check-sat b_and!188757 b_and!188759 (not b_next!73185) (not b_next!73187))

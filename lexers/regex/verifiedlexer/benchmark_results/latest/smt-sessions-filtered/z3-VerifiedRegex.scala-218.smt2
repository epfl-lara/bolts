; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3426 () Bool)

(assert start!3426)

(declare-fun b!48704 () Bool)

(declare-fun b_free!1389 () Bool)

(declare-fun b_next!1389 () Bool)

(assert (=> b!48704 (= b_free!1389 (not b_next!1389))))

(declare-fun tp!32820 () Bool)

(declare-fun b_and!1425 () Bool)

(assert (=> b!48704 (= tp!32820 b_and!1425)))

(declare-fun b!48709 () Bool)

(declare-fun b_free!1391 () Bool)

(declare-fun b_next!1391 () Bool)

(assert (=> b!48709 (= b_free!1391 (not b_next!1391))))

(declare-fun tp!32823 () Bool)

(declare-fun b_and!1427 () Bool)

(assert (=> b!48709 (= tp!32823 b_and!1427)))

(declare-fun b!48702 () Bool)

(declare-fun e!28399 () Bool)

(declare-fun e!28401 () Bool)

(assert (=> b!48702 (= e!28399 e!28401)))

(declare-fun b!48703 () Bool)

(declare-fun e!28396 () Bool)

(assert (=> b!48703 (= e!28396 e!28399)))

(declare-fun res!32206 () Bool)

(declare-fun e!28398 () Bool)

(assert (=> start!3426 (=> (not res!32206) (not e!28398))))

(declare-datatypes ((K!615 0))(
  ( (K!616 (val!292 Int)) )
))
(declare-datatypes ((V!669 0))(
  ( (V!670 (val!293 Int)) )
))
(declare-datatypes ((tuple2!1102 0))(
  ( (tuple2!1103 (_1!758 K!615) (_2!758 V!669)) )
))
(declare-datatypes ((List!846 0))(
  ( (Nil!840) (Cons!840 (h!6236 tuple2!1102) (t!17043 List!846)) )
))
(declare-datatypes ((array!1048 0))(
  ( (array!1049 (arr!492 (Array (_ BitVec 32) (_ BitVec 64))) (size!841 (_ BitVec 32))) )
))
(declare-datatypes ((array!1050 0))(
  ( (array!1051 (arr!493 (Array (_ BitVec 32) List!846)) (size!842 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!606 0))(
  ( (LongMapFixedSize!607 (defaultEntry!642 Int) (mask!1046 (_ BitVec 32)) (extraKeys!549 (_ BitVec 32)) (zeroValue!559 List!846) (minValue!559 List!846) (_size!739 (_ BitVec 32)) (_keys!594 array!1048) (_values!581 array!1050) (_vacant!364 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1201 0))(
  ( (Cell!1202 (v!12624 LongMapFixedSize!606)) )
))
(declare-datatypes ((MutLongMap!303 0))(
  ( (LongMap!303 (underlying!805 Cell!1201)) (MutLongMapExt!302 (__x!1422 Int)) )
))
(declare-datatypes ((Hashable!299 0))(
  ( (HashableExt!298 (__x!1423 Int)) )
))
(declare-datatypes ((Cell!1203 0))(
  ( (Cell!1204 (v!12625 MutLongMap!303)) )
))
(declare-datatypes ((MutableMap!299 0))(
  ( (MutableMapExt!298 (__x!1424 Int)) (HashMap!299 (underlying!806 Cell!1203) (hashF!2168 Hashable!299) (_size!740 (_ BitVec 32)) (defaultValue!448 Int)) )
))
(declare-fun thiss!47822 () MutableMap!299)

(declare-fun valid!281 (MutableMap!299) Bool)

(assert (=> start!3426 (= res!32206 (valid!281 thiss!47822))))

(assert (=> start!3426 e!28398))

(declare-fun e!28395 () Bool)

(assert (=> start!3426 e!28395))

(declare-fun tp_is_empty!495 () Bool)

(assert (=> start!3426 tp_is_empty!495))

(declare-fun tp_is_empty!497 () Bool)

(assert (=> start!3426 tp_is_empty!497))

(declare-fun e!28397 () Bool)

(declare-fun tp!32825 () Bool)

(declare-fun tp!32822 () Bool)

(declare-fun array_inv!335 (array!1048) Bool)

(declare-fun array_inv!336 (array!1050) Bool)

(assert (=> b!48704 (= e!28401 (and tp!32820 tp!32825 tp!32822 (array_inv!335 (_keys!594 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) (array_inv!336 (_values!581 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) e!28397))))

(declare-fun b!48705 () Bool)

(declare-fun e!28394 () Bool)

(declare-fun lt!7042 () MutLongMap!303)

(get-info :version)

(assert (=> b!48705 (= e!28394 (and e!28396 ((_ is LongMap!303) lt!7042)))))

(assert (=> b!48705 (= lt!7042 (v!12625 (underlying!806 thiss!47822)))))

(declare-fun v!11804 () V!669)

(declare-fun b!48706 () Bool)

(declare-fun key!7227 () K!615)

(declare-datatypes ((tuple2!1104 0))(
  ( (tuple2!1105 (_1!759 Bool) (_2!759 MutableMap!299)) )
))
(declare-fun update!37 (MutableMap!299 K!615 V!669) tuple2!1104)

(assert (=> b!48706 (= e!28398 (not ((_ is HashMap!299) (_2!759 (update!37 thiss!47822 key!7227 v!11804)))))))

(declare-fun b!48707 () Bool)

(declare-fun res!32207 () Bool)

(assert (=> b!48707 (=> (not res!32207) (not e!28398))))

(assert (=> b!48707 (= res!32207 (not ((_ is MutableMapExt!298) thiss!47822)))))

(declare-fun mapIsEmpty!1189 () Bool)

(declare-fun mapRes!1189 () Bool)

(assert (=> mapIsEmpty!1189 mapRes!1189))

(declare-fun b!48708 () Bool)

(declare-fun tp!32821 () Bool)

(assert (=> b!48708 (= e!28397 (and tp!32821 mapRes!1189))))

(declare-fun condMapEmpty!1189 () Bool)

(declare-fun mapDefault!1189 () List!846)

(assert (=> b!48708 (= condMapEmpty!1189 (= (arr!493 (_values!581 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!846)) mapDefault!1189)))))

(declare-fun mapNonEmpty!1189 () Bool)

(declare-fun tp!32824 () Bool)

(declare-fun tp!32819 () Bool)

(assert (=> mapNonEmpty!1189 (= mapRes!1189 (and tp!32824 tp!32819))))

(declare-fun mapRest!1189 () (Array (_ BitVec 32) List!846))

(declare-fun mapValue!1189 () List!846)

(declare-fun mapKey!1189 () (_ BitVec 32))

(assert (=> mapNonEmpty!1189 (= (arr!493 (_values!581 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) (store mapRest!1189 mapKey!1189 mapValue!1189))))

(assert (=> b!48709 (= e!28395 (and e!28394 tp!32823))))

(assert (= (and start!3426 res!32206) b!48707))

(assert (= (and b!48707 res!32207) b!48706))

(assert (= (and b!48708 condMapEmpty!1189) mapIsEmpty!1189))

(assert (= (and b!48708 (not condMapEmpty!1189)) mapNonEmpty!1189))

(assert (= b!48704 b!48708))

(assert (= b!48702 b!48704))

(assert (= b!48703 b!48702))

(assert (= (and b!48705 ((_ is LongMap!303) (v!12625 (underlying!806 thiss!47822)))) b!48703))

(assert (= b!48709 b!48705))

(assert (= (and start!3426 ((_ is HashMap!299) thiss!47822)) b!48709))

(declare-fun m!22330 () Bool)

(assert (=> start!3426 m!22330))

(declare-fun m!22332 () Bool)

(assert (=> b!48704 m!22332))

(declare-fun m!22334 () Bool)

(assert (=> b!48704 m!22334))

(declare-fun m!22336 () Bool)

(assert (=> b!48706 m!22336))

(declare-fun m!22338 () Bool)

(assert (=> mapNonEmpty!1189 m!22338))

(check-sat (not start!3426) (not b!48706) tp_is_empty!497 (not b_next!1389) b_and!1425 tp_is_empty!495 b_and!1427 (not b!48708) (not b!48704) (not b_next!1391) (not mapNonEmpty!1189))
(check-sat b_and!1425 b_and!1427 (not b_next!1391) (not b_next!1389))
(get-model)

(declare-fun d!5839 () Bool)

(declare-fun c!16360 () Bool)

(assert (=> d!5839 (= c!16360 ((_ is MutableMapExt!298) thiss!47822))))

(declare-fun e!28404 () Bool)

(assert (=> d!5839 (= (valid!281 thiss!47822) e!28404)))

(declare-fun b!48714 () Bool)

(declare-fun valid!282 (MutableMap!299) Bool)

(assert (=> b!48714 (= e!28404 (valid!282 thiss!47822))))

(declare-fun b!48715 () Bool)

(declare-fun valid!283 (MutableMap!299) Bool)

(assert (=> b!48715 (= e!28404 (valid!283 thiss!47822))))

(assert (= (and d!5839 c!16360) b!48714))

(assert (= (and d!5839 (not c!16360)) b!48715))

(declare-fun m!22340 () Bool)

(assert (=> b!48714 m!22340))

(declare-fun m!22342 () Bool)

(assert (=> b!48715 m!22342))

(assert (=> start!3426 d!5839))

(declare-fun bs!6446 () Bool)

(declare-fun b!48766 () Bool)

(declare-fun b!48754 () Bool)

(assert (= bs!6446 (and b!48766 b!48754)))

(declare-fun lambda!913 () Int)

(declare-fun lambda!912 () Int)

(assert (=> bs!6446 (= lambda!913 lambda!912)))

(declare-fun bm!3145 () Bool)

(declare-fun lt!7153 () tuple2!1104)

(declare-datatypes ((ListMap!75 0))(
  ( (ListMap!76 (toList!192 List!846)) )
))
(declare-fun call!3152 () ListMap!75)

(declare-fun c!16379 () Bool)

(declare-fun map!283 (MutableMap!299) ListMap!75)

(assert (=> bm!3145 (= call!3152 (map!283 (ite c!16379 thiss!47822 (_2!759 lt!7153))))))

(declare-datatypes ((tuple2!1106 0))(
  ( (tuple2!1107 (_1!760 (_ BitVec 64)) (_2!760 List!846)) )
))
(declare-datatypes ((List!847 0))(
  ( (Nil!841) (Cons!841 (h!6237 tuple2!1106) (t!17044 List!847)) )
))
(declare-datatypes ((ListLongMap!25 0))(
  ( (ListLongMap!26 (toList!193 List!847)) )
))
(declare-fun lt!7195 () ListLongMap!25)

(declare-fun lt!7157 () ListLongMap!25)

(declare-fun call!3173 () Bool)

(declare-fun c!16375 () Bool)

(declare-fun bm!3146 () Bool)

(declare-fun allKeysSameHashInMap!11 (ListLongMap!25 Hashable!299) Bool)

(assert (=> bm!3146 (= call!3173 (allKeysSameHashInMap!11 (ite c!16375 lt!7195 lt!7157) (hashF!2168 thiss!47822)))))

(declare-fun call!3171 () Bool)

(assert (=> b!48754 call!3171))

(declare-datatypes ((Unit!381 0))(
  ( (Unit!382) )
))
(declare-fun lt!7176 () Unit!381)

(declare-fun Unit!383 () Unit!381)

(assert (=> b!48754 (= lt!7176 Unit!383)))

(declare-fun call!3166 () Bool)

(assert (=> b!48754 call!3166))

(declare-fun lt!7207 () Unit!381)

(declare-fun Unit!384 () Unit!381)

(assert (=> b!48754 (= lt!7207 Unit!384)))

(declare-fun call!3180 () Bool)

(assert (=> b!48754 call!3180))

(declare-fun lt!7159 () Unit!381)

(declare-fun lt!7177 () Unit!381)

(assert (=> b!48754 (= lt!7159 lt!7177)))

(declare-fun call!3178 () Bool)

(declare-fun call!3174 () Bool)

(assert (=> b!48754 (= call!3178 call!3174)))

(declare-fun call!3153 () Unit!381)

(assert (=> b!48754 (= lt!7177 call!3153)))

(declare-fun lt!7165 () ListMap!75)

(declare-fun call!3156 () ListMap!75)

(assert (=> b!48754 (= lt!7165 call!3156)))

(declare-fun lt!7158 () ListMap!75)

(declare-fun call!3164 () ListMap!75)

(assert (=> b!48754 (= lt!7158 call!3164)))

(declare-fun lt!7156 () Unit!381)

(declare-fun lt!7190 () Unit!381)

(assert (=> b!48754 (= lt!7156 lt!7190)))

(declare-fun call!3177 () Bool)

(assert (=> b!48754 call!3177))

(declare-fun lt!7183 () ListLongMap!25)

(declare-fun lt!7204 () (_ BitVec 64))

(declare-fun lt!7206 () List!846)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!1 (ListLongMap!25 (_ BitVec 64) List!846 K!615 V!669 Hashable!299) Unit!381)

(assert (=> b!48754 (= lt!7190 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!1 lt!7183 lt!7204 lt!7206 key!7227 v!11804 (hashF!2168 thiss!47822)))))

(declare-fun lt!7166 () Unit!381)

(declare-fun lt!7175 () Unit!381)

(assert (=> b!48754 (= lt!7166 lt!7175)))

(declare-fun e!28432 () Bool)

(assert (=> b!48754 e!28432))

(declare-fun res!32218 () Bool)

(assert (=> b!48754 (=> (not res!32218) (not e!28432))))

(declare-fun call!3167 () Bool)

(assert (=> b!48754 (= res!32218 call!3167)))

(declare-fun call!3179 () ListLongMap!25)

(assert (=> b!48754 (= lt!7195 call!3179)))

(declare-fun call!3155 () Unit!381)

(assert (=> b!48754 (= lt!7175 call!3155)))

(declare-fun lt!7160 () Unit!381)

(declare-fun Unit!385 () Unit!381)

(assert (=> b!48754 (= lt!7160 Unit!385)))

(declare-fun noDuplicateKeys!3 (List!846) Bool)

(assert (=> b!48754 (noDuplicateKeys!3 lt!7206)))

(declare-fun lt!7185 () Unit!381)

(declare-fun Unit!386 () Unit!381)

(assert (=> b!48754 (= lt!7185 Unit!386)))

(declare-fun call!3176 () List!846)

(declare-fun containsKey!6 (List!846 K!615) Bool)

(assert (=> b!48754 (not (containsKey!6 call!3176 key!7227))))

(declare-fun lt!7178 () Unit!381)

(declare-fun Unit!387 () Unit!381)

(assert (=> b!48754 (= lt!7178 Unit!387)))

(declare-fun lt!7202 () Unit!381)

(declare-fun lt!7155 () Unit!381)

(assert (=> b!48754 (= lt!7202 lt!7155)))

(assert (=> b!48754 (noDuplicateKeys!3 call!3176)))

(declare-fun lt!7169 () List!846)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!1 (List!846 K!615) Unit!381)

(assert (=> b!48754 (= lt!7155 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!1 lt!7169 key!7227))))

(declare-fun lt!7191 () Unit!381)

(declare-fun lt!7172 () Unit!381)

(assert (=> b!48754 (= lt!7191 lt!7172)))

(declare-fun call!3170 () Bool)

(assert (=> b!48754 call!3170))

(declare-fun call!3162 () Unit!381)

(assert (=> b!48754 (= lt!7172 call!3162)))

(declare-fun lt!7173 () Unit!381)

(declare-fun lt!7167 () Unit!381)

(assert (=> b!48754 (= lt!7173 lt!7167)))

(declare-fun call!3165 () Bool)

(assert (=> b!48754 call!3165))

(declare-fun call!3158 () Unit!381)

(assert (=> b!48754 (= lt!7167 call!3158)))

(declare-fun e!28428 () Unit!381)

(declare-fun Unit!388 () Unit!381)

(assert (=> b!48754 (= e!28428 Unit!388)))

(declare-fun b!48755 () Bool)

(declare-fun e!28431 () Bool)

(declare-fun e!28430 () Bool)

(assert (=> b!48755 (= e!28431 e!28430)))

(assert (=> b!48755 (= c!16379 (_1!759 lt!7153))))

(declare-fun bm!3147 () Bool)

(declare-fun lt!7161 () List!846)

(declare-fun removePairForKey!1 (List!846 K!615) List!846)

(assert (=> bm!3147 (= call!3176 (removePairForKey!1 (ite c!16375 lt!7169 lt!7161) key!7227))))

(declare-fun call!3160 () ListMap!75)

(declare-fun bm!3148 () Bool)

(declare-fun eq!4 (ListMap!75 ListMap!75) Bool)

(assert (=> bm!3148 (= call!3171 (eq!4 (ite c!16375 call!3164 call!3160) call!3156))))

(declare-fun b!48756 () Bool)

(declare-fun e!28436 () Bool)

(assert (=> b!48756 (= e!28430 e!28436)))

(declare-fun res!32219 () Bool)

(declare-fun call!3169 () ListMap!75)

(declare-fun contains!41 (ListMap!75 K!615) Bool)

(assert (=> b!48756 (= res!32219 (contains!41 call!3169 key!7227))))

(assert (=> b!48756 (=> (not res!32219) (not e!28436))))

(declare-fun b!48757 () Bool)

(declare-fun res!32221 () Bool)

(assert (=> b!48757 (=> (not res!32221) (not e!28431))))

(assert (=> b!48757 (= res!32221 (valid!283 (_2!759 lt!7153)))))

(declare-fun b!48758 () Bool)

(declare-fun e!28437 () List!846)

(assert (=> b!48758 (= e!28437 Nil!840)))

(declare-fun b!48759 () Bool)

(declare-fun call!3150 () List!846)

(assert (=> b!48759 (= e!28437 call!3150)))

(declare-fun lt!7171 () (_ BitVec 64))

(declare-fun bm!3150 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!1 (List!847 (_ BitVec 64) List!846 Hashable!299) Unit!381)

(assert (=> bm!3150 (= call!3158 (lemmaInLongMapAllKeySameHashThenForTuple!1 (toList!193 lt!7183) (ite c!16375 lt!7204 lt!7171) (ite c!16375 lt!7169 lt!7161) (hashF!2168 thiss!47822)))))

(declare-fun bm!3151 () Bool)

(declare-fun call!3175 () ListMap!75)

(assert (=> bm!3151 (= call!3160 call!3175)))

(declare-fun lt!7163 () ListMap!75)

(declare-fun bm!3152 () Bool)

(assert (=> bm!3152 (= call!3174 (contains!41 (ite c!16375 lt!7165 lt!7163) key!7227))))

(declare-fun bm!3153 () Bool)

(declare-fun call!3161 () (_ BitVec 64))

(declare-fun hash!494 (Hashable!299 K!615) (_ BitVec 64))

(assert (=> bm!3153 (= call!3161 (hash!494 (hashF!2168 thiss!47822) key!7227))))

(declare-fun bm!3154 () Bool)

(declare-fun allKeysSameHash!2 (List!846 (_ BitVec 64) Hashable!299) Bool)

(assert (=> bm!3154 (= call!3165 (allKeysSameHash!2 (ite c!16375 lt!7169 lt!7161) (ite c!16375 lt!7204 lt!7171) (hashF!2168 thiss!47822)))))

(declare-fun bm!3155 () Bool)

(declare-fun lt!7188 () List!846)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!1 (ListLongMap!25 (_ BitVec 64) List!846 Hashable!299) Unit!381)

(assert (=> bm!3155 (= call!3155 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!1 lt!7183 (ite c!16375 lt!7204 lt!7171) (ite c!16375 lt!7206 lt!7188) (hashF!2168 thiss!47822)))))

(declare-fun bm!3156 () Bool)

(assert (=> bm!3156 (= call!3164 call!3175)))

(declare-fun lt!7174 () MutableMap!299)

(declare-fun lt!7189 () MutableMap!299)

(declare-fun call!3163 () Bool)

(declare-fun bm!3157 () Bool)

(assert (=> bm!3157 (= call!3163 (valid!283 (ite c!16375 lt!7174 lt!7189)))))

(declare-fun b!48760 () Bool)

(assert (=> b!48760 (= e!28432 call!3173)))

(declare-fun bm!3158 () Bool)

(declare-fun apply!22 (MutLongMap!303 (_ BitVec 64)) List!846)

(assert (=> bm!3158 (= call!3150 (apply!22 (v!12625 (underlying!806 thiss!47822)) (ite c!16375 lt!7204 lt!7171)))))

(declare-fun bm!3159 () Bool)

(declare-fun call!3154 () ListMap!75)

(declare-fun call!3168 () ListMap!75)

(assert (=> bm!3159 (= call!3177 (eq!4 call!3154 call!3168))))

(declare-fun b!48761 () Bool)

(declare-fun e!28434 () Unit!381)

(declare-fun lt!7205 () Unit!381)

(assert (=> b!48761 (= e!28434 lt!7205)))

(declare-fun lt!7170 () Unit!381)

(assert (=> b!48761 (= lt!7170 call!3158)))

(assert (=> b!48761 call!3165))

(declare-fun lt!7186 () Unit!381)

(assert (=> b!48761 (= lt!7186 lt!7170)))

(assert (=> b!48761 (= lt!7205 call!3162)))

(assert (=> b!48761 call!3170))

(declare-datatypes ((tuple2!1108 0))(
  ( (tuple2!1109 (_1!761 Bool) (_2!761 MutLongMap!303)) )
))
(declare-fun call!3157 () tuple2!1108)

(declare-fun bm!3160 () Bool)

(declare-fun update!38 (MutLongMap!303 (_ BitVec 64) List!846) tuple2!1108)

(assert (=> bm!3160 (= call!3157 (update!38 (v!12625 (underlying!806 thiss!47822)) (ite c!16375 lt!7204 lt!7171) (ite c!16375 lt!7206 lt!7188)))))

(declare-fun bm!3161 () Bool)

(declare-fun +!6 (ListLongMap!25 tuple2!1106) ListLongMap!25)

(assert (=> bm!3161 (= call!3179 (+!6 lt!7183 (ite c!16375 (tuple2!1107 lt!7204 lt!7206) (tuple2!1107 lt!7171 lt!7188))))))

(declare-fun bm!3162 () Bool)

(declare-fun lt!7200 () ListMap!75)

(declare-fun +!7 (ListMap!75 tuple2!1102) ListMap!75)

(assert (=> bm!3162 (= call!3156 (+!7 lt!7200 (tuple2!1103 key!7227 v!11804)))))

(declare-fun bm!3163 () Bool)

(declare-fun extractMap!7 (List!847) ListMap!75)

(assert (=> bm!3163 (= call!3154 (extractMap!7 (toList!193 call!3179)))))

(declare-fun lt!7201 () ListMap!75)

(declare-fun bm!3164 () Bool)

(declare-fun lemmaEquivalentThenSameContains!1 (ListMap!75 ListMap!75 K!615) Unit!381)

(assert (=> bm!3164 (= call!3153 (lemmaEquivalentThenSameContains!1 (ite c!16375 lt!7158 lt!7201) (ite c!16375 lt!7165 lt!7163) key!7227))))

(declare-fun b!48762 () Bool)

(declare-fun e!28435 () ListMap!75)

(assert (=> b!48762 (= e!28435 call!3169)))

(declare-fun bm!3165 () Bool)

(declare-fun call!3151 () Bool)

(assert (=> bm!3165 (= call!3151 (eq!4 (ite c!16379 call!3169 call!3152) e!28435))))

(declare-fun c!16380 () Bool)

(assert (=> bm!3165 (= c!16380 c!16379)))

(declare-fun bm!3166 () Bool)

(assert (=> bm!3166 (= call!3169 (map!283 (ite c!16379 (_2!759 lt!7153) thiss!47822)))))

(declare-fun bm!3167 () Bool)

(declare-fun forall!105 (List!847 Int) Bool)

(assert (=> bm!3167 (= call!3167 (forall!105 (ite c!16375 (toList!193 lt!7195) (toList!193 lt!7157)) (ite c!16375 lambda!912 lambda!913)))))

(declare-fun lt!7154 () tuple2!1108)

(declare-fun e!28429 () tuple2!1104)

(declare-fun b!48763 () Bool)

(declare-datatypes ((tuple2!1110 0))(
  ( (tuple2!1111 (_1!762 Unit!381) (_2!762 MutableMap!299)) )
))
(declare-fun Unit!389 () Unit!381)

(declare-fun Unit!390 () Unit!381)

(assert (=> b!48763 (= e!28429 (tuple2!1105 (_1!761 lt!7154) (_2!762 (ite false (tuple2!1111 Unit!389 (HashMap!299 (Cell!1204 (_2!761 lt!7154)) (hashF!2168 thiss!47822) (bvadd (_size!740 thiss!47822) #b00000000000000000000000000000001) (defaultValue!448 thiss!47822))) (tuple2!1111 Unit!390 lt!7174)))))))

(assert (=> b!48763 (= lt!7204 call!3161)))

(assert (=> b!48763 (= lt!7169 call!3150)))

(assert (=> b!48763 (= lt!7206 (Cons!840 (tuple2!1103 key!7227 v!11804) call!3176))))

(assert (=> b!48763 (= lt!7154 call!3157)))

(assert (=> b!48763 (= lt!7174 (HashMap!299 (Cell!1204 (_2!761 lt!7154)) (hashF!2168 thiss!47822) (_size!740 thiss!47822) (defaultValue!448 thiss!47822)))))

(declare-fun c!16378 () Bool)

(assert (=> b!48763 (= c!16378 (_1!761 lt!7154))))

(declare-fun lt!7184 () Unit!381)

(assert (=> b!48763 (= lt!7184 e!28428)))

(declare-fun b!48764 () Bool)

(assert (=> b!48764 (= e!28436 call!3151)))

(declare-fun b!48765 () Bool)

(declare-fun e!28433 () Bool)

(assert (=> b!48765 (= e!28433 call!3173)))

(assert (=> b!48766 (contains!41 call!3160 key!7227)))

(declare-fun lt!7198 () Unit!381)

(declare-fun Unit!391 () Unit!381)

(assert (=> b!48766 (= lt!7198 Unit!391)))

(assert (=> b!48766 (contains!41 call!3156 key!7227)))

(declare-fun lt!7199 () Unit!381)

(declare-fun lt!7180 () Unit!381)

(assert (=> b!48766 (= lt!7199 lt!7180)))

(assert (=> b!48766 (= call!3178 call!3174)))

(assert (=> b!48766 (= lt!7180 call!3153)))

(assert (=> b!48766 (= lt!7163 call!3156)))

(assert (=> b!48766 (= lt!7201 call!3160)))

(declare-fun lt!7164 () Unit!381)

(declare-fun Unit!392 () Unit!381)

(assert (=> b!48766 (= lt!7164 Unit!392)))

(assert (=> b!48766 call!3171))

(declare-fun lt!7181 () Unit!381)

(declare-fun Unit!393 () Unit!381)

(assert (=> b!48766 (= lt!7181 Unit!393)))

(assert (=> b!48766 call!3166))

(declare-fun lt!7162 () Unit!381)

(declare-fun Unit!394 () Unit!381)

(assert (=> b!48766 (= lt!7162 Unit!394)))

(assert (=> b!48766 call!3180))

(declare-fun lt!7203 () Unit!381)

(declare-fun lt!7196 () Unit!381)

(assert (=> b!48766 (= lt!7203 lt!7196)))

(assert (=> b!48766 call!3177))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!1 (ListLongMap!25 (_ BitVec 64) List!846 K!615 V!669 Hashable!299) Unit!381)

(assert (=> b!48766 (= lt!7196 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!1 lt!7183 lt!7171 lt!7188 key!7227 v!11804 (hashF!2168 thiss!47822)))))

(declare-fun lt!7187 () Unit!381)

(declare-fun lt!7192 () Unit!381)

(assert (=> b!48766 (= lt!7187 lt!7192)))

(assert (=> b!48766 e!28433))

(declare-fun res!32220 () Bool)

(assert (=> b!48766 (=> (not res!32220) (not e!28433))))

(assert (=> b!48766 (= res!32220 call!3167)))

(assert (=> b!48766 (= lt!7157 call!3179)))

(assert (=> b!48766 (= lt!7192 call!3155)))

(declare-fun lt!7182 () Unit!381)

(assert (=> b!48766 (= lt!7182 e!28434)))

(declare-fun c!16381 () Bool)

(declare-fun isEmpty!163 (List!846) Bool)

(assert (=> b!48766 (= c!16381 (not (isEmpty!163 lt!7161)))))

(declare-fun e!28427 () Unit!381)

(declare-fun Unit!395 () Unit!381)

(assert (=> b!48766 (= e!28427 Unit!395)))

(declare-fun call!3159 () ListLongMap!25)

(declare-fun lt!7179 () tuple2!1108)

(declare-fun bm!3168 () Bool)

(declare-fun map!284 (MutLongMap!303) ListLongMap!25)

(assert (=> bm!3168 (= call!3159 (map!284 (ite c!16375 (_2!761 lt!7154) (_2!761 lt!7179))))))

(declare-fun bm!3169 () Bool)

(assert (=> bm!3169 (= call!3166 (allKeysSameHashInMap!11 call!3159 (hashF!2168 thiss!47822)))))

(declare-fun bm!3149 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!1 (List!846 K!615 (_ BitVec 64) Hashable!299) Unit!381)

(assert (=> bm!3149 (= call!3162 (lemmaRemovePairForKeyPreservesHash!1 (ite c!16375 lt!7169 lt!7161) key!7227 (ite c!16375 lt!7204 lt!7171) (hashF!2168 thiss!47822)))))

(declare-fun d!5841 () Bool)

(assert (=> d!5841 e!28431))

(declare-fun res!32222 () Bool)

(assert (=> d!5841 (=> (not res!32222) (not e!28431))))

(assert (=> d!5841 (= res!32222 ((_ is HashMap!299) (_2!759 lt!7153)))))

(declare-fun lt!7193 () tuple2!1104)

(assert (=> d!5841 (= lt!7153 (tuple2!1105 (_1!759 lt!7193) (_2!759 lt!7193)))))

(assert (=> d!5841 (= lt!7193 e!28429)))

(declare-fun contains!42 (MutableMap!299 K!615) Bool)

(assert (=> d!5841 (= c!16375 (contains!42 thiss!47822 key!7227))))

(assert (=> d!5841 (= lt!7183 (map!284 (v!12625 (underlying!806 thiss!47822))))))

(assert (=> d!5841 (= lt!7200 (map!283 thiss!47822))))

(assert (=> d!5841 (valid!283 thiss!47822)))

(assert (=> d!5841 (= (update!37 thiss!47822 key!7227 v!11804) lt!7153)))

(declare-fun b!48767 () Bool)

(declare-fun Unit!396 () Unit!381)

(declare-fun Unit!397 () Unit!381)

(assert (=> b!48767 (= e!28429 (tuple2!1105 (_1!761 lt!7179) (_2!762 (ite (_1!761 lt!7179) (tuple2!1111 Unit!396 (HashMap!299 (Cell!1204 (_2!761 lt!7179)) (hashF!2168 thiss!47822) (bvadd (_size!740 thiss!47822) #b00000000000000000000000000000001) (defaultValue!448 thiss!47822))) (tuple2!1111 Unit!397 lt!7189)))))))

(assert (=> b!48767 (= lt!7171 call!3161)))

(declare-fun c!16376 () Bool)

(declare-fun contains!43 (MutLongMap!303 (_ BitVec 64)) Bool)

(assert (=> b!48767 (= c!16376 (contains!43 (v!12625 (underlying!806 thiss!47822)) lt!7171))))

(assert (=> b!48767 (= lt!7161 e!28437)))

(assert (=> b!48767 (= lt!7188 (Cons!840 (tuple2!1103 key!7227 v!11804) lt!7161))))

(assert (=> b!48767 (= lt!7179 call!3157)))

(assert (=> b!48767 (= lt!7189 (HashMap!299 (Cell!1204 (_2!761 lt!7179)) (hashF!2168 thiss!47822) (_size!740 thiss!47822) (defaultValue!448 thiss!47822)))))

(declare-fun c!16377 () Bool)

(assert (=> b!48767 (= c!16377 (_1!761 lt!7179))))

(declare-fun lt!7168 () Unit!381)

(assert (=> b!48767 (= lt!7168 e!28427)))

(declare-fun b!48768 () Bool)

(assert (=> b!48768 (= e!28430 call!3151)))

(declare-fun bm!3170 () Bool)

(assert (=> bm!3170 (= call!3175 (map!283 (ite c!16375 lt!7174 lt!7189)))))

(declare-fun bm!3171 () Bool)

(assert (=> bm!3171 (= call!3180 (forall!105 (toList!193 call!3159) (ite c!16375 lambda!912 lambda!913)))))

(declare-fun b!48769 () Bool)

(assert (=> b!48769 (= call!3164 lt!7200)))

(declare-fun lt!7194 () Unit!381)

(declare-fun Unit!398 () Unit!381)

(assert (=> b!48769 (= lt!7194 Unit!398)))

(assert (=> b!48769 call!3163))

(declare-fun Unit!399 () Unit!381)

(assert (=> b!48769 (= e!28428 Unit!399)))

(declare-fun b!48770 () Bool)

(assert (=> b!48770 (= call!3160 lt!7200)))

(declare-fun lt!7197 () Unit!381)

(declare-fun Unit!400 () Unit!381)

(assert (=> b!48770 (= lt!7197 Unit!400)))

(assert (=> b!48770 call!3163))

(declare-fun Unit!401 () Unit!381)

(assert (=> b!48770 (= e!28427 Unit!401)))

(declare-fun bm!3172 () Bool)

(assert (=> bm!3172 (= call!3178 (contains!41 (ite c!16375 lt!7158 lt!7201) key!7227))))

(declare-fun bm!3173 () Bool)

(assert (=> bm!3173 (= call!3170 (allKeysSameHash!2 call!3176 (ite c!16375 lt!7204 lt!7171) (hashF!2168 thiss!47822)))))

(declare-fun b!48771 () Bool)

(assert (=> b!48771 (= e!28435 (+!7 call!3152 (tuple2!1103 key!7227 v!11804)))))

(declare-fun b!48772 () Bool)

(declare-fun Unit!402 () Unit!381)

(assert (=> b!48772 (= e!28434 Unit!402)))

(declare-fun call!3172 () ListMap!75)

(declare-fun bm!3174 () Bool)

(assert (=> bm!3174 (= call!3168 (+!7 call!3172 (tuple2!1103 key!7227 v!11804)))))

(declare-fun bm!3175 () Bool)

(assert (=> bm!3175 (= call!3172 (extractMap!7 (toList!193 lt!7183)))))

(assert (= (and d!5841 c!16375) b!48763))

(assert (= (and d!5841 (not c!16375)) b!48767))

(assert (= (and b!48763 c!16378) b!48754))

(assert (= (and b!48763 (not c!16378)) b!48769))

(assert (= (and b!48754 res!32218) b!48760))

(assert (= (or b!48754 b!48769) bm!3156))

(assert (= (and b!48767 c!16376) b!48759))

(assert (= (and b!48767 (not c!16376)) b!48758))

(assert (= (and b!48767 c!16377) b!48766))

(assert (= (and b!48767 (not c!16377)) b!48770))

(assert (= (and b!48766 c!16381) b!48761))

(assert (= (and b!48766 (not c!16381)) b!48772))

(assert (= (and b!48766 res!32220) b!48765))

(assert (= (or b!48766 b!48770) bm!3151))

(assert (= (or b!48754 b!48766) bm!3152))

(assert (= (or b!48754 b!48766) bm!3164))

(assert (= (or b!48754 b!48761) bm!3150))

(assert (= (or b!48760 b!48765) bm!3146))

(assert (= (or bm!3156 bm!3151) bm!3170))

(assert (= (or b!48754 b!48763 b!48761) bm!3147))

(assert (= (or b!48754 b!48761) bm!3149))

(assert (= (or b!48754 b!48766) bm!3161))

(assert (= (or b!48754 b!48766) bm!3172))

(assert (= (or b!48754 b!48766) bm!3162))

(assert (= (or b!48754 b!48766) bm!3175))

(assert (= (or b!48769 b!48770) bm!3157))

(assert (= (or b!48763 b!48767) bm!3153))

(assert (= (or b!48754 b!48761) bm!3154))

(assert (= (or b!48754 b!48766) bm!3168))

(assert (= (or b!48763 b!48767) bm!3160))

(assert (= (or b!48754 b!48766) bm!3167))

(assert (= (or b!48763 b!48759) bm!3158))

(assert (= (or b!48754 b!48766) bm!3155))

(assert (= (or b!48754 b!48761) bm!3173))

(assert (= (or b!48754 b!48766) bm!3148))

(assert (= (or b!48754 b!48766) bm!3163))

(assert (= (or b!48754 b!48766) bm!3174))

(assert (= (or b!48754 b!48766) bm!3169))

(assert (= (or b!48754 b!48766) bm!3171))

(assert (= (or b!48754 b!48766) bm!3159))

(assert (= (and d!5841 res!32222) b!48757))

(assert (= (and b!48757 res!32221) b!48755))

(assert (= (and b!48755 c!16379) b!48756))

(assert (= (and b!48755 (not c!16379)) b!48768))

(assert (= (and b!48756 res!32219) b!48764))

(assert (= (or b!48756 b!48764 b!48768) bm!3166))

(assert (= (or b!48764 b!48768) bm!3145))

(assert (= (or b!48764 b!48768) bm!3165))

(assert (= (and bm!3165 c!16380) b!48771))

(assert (= (and bm!3165 (not c!16380)) b!48762))

(declare-fun m!22344 () Bool)

(assert (=> bm!3155 m!22344))

(declare-fun m!22346 () Bool)

(assert (=> bm!3166 m!22346))

(declare-fun m!22348 () Bool)

(assert (=> bm!3165 m!22348))

(declare-fun m!22350 () Bool)

(assert (=> bm!3174 m!22350))

(declare-fun m!22352 () Bool)

(assert (=> b!48754 m!22352))

(declare-fun m!22354 () Bool)

(assert (=> b!48754 m!22354))

(declare-fun m!22356 () Bool)

(assert (=> b!48754 m!22356))

(declare-fun m!22358 () Bool)

(assert (=> b!48754 m!22358))

(declare-fun m!22360 () Bool)

(assert (=> b!48754 m!22360))

(declare-fun m!22362 () Bool)

(assert (=> bm!3145 m!22362))

(declare-fun m!22364 () Bool)

(assert (=> bm!3161 m!22364))

(declare-fun m!22366 () Bool)

(assert (=> bm!3159 m!22366))

(declare-fun m!22368 () Bool)

(assert (=> bm!3152 m!22368))

(declare-fun m!22370 () Bool)

(assert (=> bm!3167 m!22370))

(declare-fun m!22372 () Bool)

(assert (=> bm!3153 m!22372))

(declare-fun m!22374 () Bool)

(assert (=> bm!3162 m!22374))

(declare-fun m!22376 () Bool)

(assert (=> bm!3169 m!22376))

(declare-fun m!22378 () Bool)

(assert (=> bm!3171 m!22378))

(declare-fun m!22380 () Bool)

(assert (=> bm!3158 m!22380))

(declare-fun m!22382 () Bool)

(assert (=> bm!3149 m!22382))

(declare-fun m!22384 () Bool)

(assert (=> bm!3175 m!22384))

(declare-fun m!22386 () Bool)

(assert (=> b!48767 m!22386))

(declare-fun m!22388 () Bool)

(assert (=> b!48756 m!22388))

(declare-fun m!22390 () Bool)

(assert (=> bm!3146 m!22390))

(declare-fun m!22392 () Bool)

(assert (=> bm!3163 m!22392))

(declare-fun m!22394 () Bool)

(assert (=> d!5841 m!22394))

(declare-fun m!22396 () Bool)

(assert (=> d!5841 m!22396))

(declare-fun m!22398 () Bool)

(assert (=> d!5841 m!22398))

(assert (=> d!5841 m!22342))

(declare-fun m!22400 () Bool)

(assert (=> bm!3172 m!22400))

(declare-fun m!22402 () Bool)

(assert (=> bm!3173 m!22402))

(declare-fun m!22404 () Bool)

(assert (=> b!48766 m!22404))

(declare-fun m!22406 () Bool)

(assert (=> b!48766 m!22406))

(declare-fun m!22408 () Bool)

(assert (=> b!48766 m!22408))

(declare-fun m!22410 () Bool)

(assert (=> b!48766 m!22410))

(declare-fun m!22412 () Bool)

(assert (=> bm!3157 m!22412))

(declare-fun m!22414 () Bool)

(assert (=> bm!3148 m!22414))

(declare-fun m!22416 () Bool)

(assert (=> bm!3150 m!22416))

(declare-fun m!22418 () Bool)

(assert (=> bm!3154 m!22418))

(declare-fun m!22420 () Bool)

(assert (=> b!48771 m!22420))

(declare-fun m!22422 () Bool)

(assert (=> bm!3147 m!22422))

(declare-fun m!22424 () Bool)

(assert (=> bm!3160 m!22424))

(declare-fun m!22426 () Bool)

(assert (=> bm!3164 m!22426))

(declare-fun m!22428 () Bool)

(assert (=> bm!3168 m!22428))

(declare-fun m!22430 () Bool)

(assert (=> bm!3170 m!22430))

(declare-fun m!22432 () Bool)

(assert (=> b!48757 m!22432))

(assert (=> b!48706 d!5841))

(declare-fun d!5843 () Bool)

(assert (=> d!5843 (= (array_inv!335 (_keys!594 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) (bvsge (size!841 (_keys!594 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48704 d!5843))

(declare-fun d!5845 () Bool)

(assert (=> d!5845 (= (array_inv!336 (_values!581 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) (bvsge (size!842 (_values!581 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48704 d!5845))

(declare-fun mapNonEmpty!1192 () Bool)

(declare-fun mapRes!1192 () Bool)

(declare-fun tp!32834 () Bool)

(declare-fun e!28442 () Bool)

(assert (=> mapNonEmpty!1192 (= mapRes!1192 (and tp!32834 e!28442))))

(declare-fun mapRest!1192 () (Array (_ BitVec 32) List!846))

(declare-fun mapKey!1192 () (_ BitVec 32))

(declare-fun mapValue!1192 () List!846)

(assert (=> mapNonEmpty!1192 (= mapRest!1189 (store mapRest!1192 mapKey!1192 mapValue!1192))))

(declare-fun tp!32833 () Bool)

(declare-fun b!48779 () Bool)

(assert (=> b!48779 (= e!28442 (and tp_is_empty!495 tp_is_empty!497 tp!32833))))

(declare-fun condMapEmpty!1192 () Bool)

(declare-fun mapDefault!1192 () List!846)

(assert (=> mapNonEmpty!1189 (= condMapEmpty!1192 (= mapRest!1189 ((as const (Array (_ BitVec 32) List!846)) mapDefault!1192)))))

(declare-fun e!28443 () Bool)

(assert (=> mapNonEmpty!1189 (= tp!32824 (and e!28443 mapRes!1192))))

(declare-fun mapIsEmpty!1192 () Bool)

(assert (=> mapIsEmpty!1192 mapRes!1192))

(declare-fun tp!32832 () Bool)

(declare-fun b!48780 () Bool)

(assert (=> b!48780 (= e!28443 (and tp_is_empty!495 tp_is_empty!497 tp!32832))))

(assert (= (and mapNonEmpty!1189 condMapEmpty!1192) mapIsEmpty!1192))

(assert (= (and mapNonEmpty!1189 (not condMapEmpty!1192)) mapNonEmpty!1192))

(assert (= (and mapNonEmpty!1192 ((_ is Cons!840) mapValue!1192)) b!48779))

(assert (= (and mapNonEmpty!1189 ((_ is Cons!840) mapDefault!1192)) b!48780))

(declare-fun m!22434 () Bool)

(assert (=> mapNonEmpty!1192 m!22434))

(declare-fun b!48785 () Bool)

(declare-fun e!28446 () Bool)

(declare-fun tp!32837 () Bool)

(assert (=> b!48785 (= e!28446 (and tp_is_empty!495 tp_is_empty!497 tp!32837))))

(assert (=> mapNonEmpty!1189 (= tp!32819 e!28446)))

(assert (= (and mapNonEmpty!1189 ((_ is Cons!840) mapValue!1189)) b!48785))

(declare-fun e!28447 () Bool)

(declare-fun tp!32838 () Bool)

(declare-fun b!48786 () Bool)

(assert (=> b!48786 (= e!28447 (and tp_is_empty!495 tp_is_empty!497 tp!32838))))

(assert (=> b!48708 (= tp!32821 e!28447)))

(assert (= (and b!48708 ((_ is Cons!840) mapDefault!1189)) b!48786))

(declare-fun tp!32839 () Bool)

(declare-fun e!28448 () Bool)

(declare-fun b!48787 () Bool)

(assert (=> b!48787 (= e!28448 (and tp_is_empty!495 tp_is_empty!497 tp!32839))))

(assert (=> b!48704 (= tp!32825 e!28448)))

(assert (= (and b!48704 ((_ is Cons!840) (zeroValue!559 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822))))))) b!48787))

(declare-fun b!48788 () Bool)

(declare-fun tp!32840 () Bool)

(declare-fun e!28449 () Bool)

(assert (=> b!48788 (= e!28449 (and tp_is_empty!495 tp_is_empty!497 tp!32840))))

(assert (=> b!48704 (= tp!32822 e!28449)))

(assert (= (and b!48704 ((_ is Cons!840) (minValue!559 (v!12624 (underlying!805 (v!12625 (underlying!806 thiss!47822))))))) b!48788))

(check-sat (not bm!3173) (not bm!3163) (not bm!3154) (not b!48785) (not bm!3159) (not b!48715) (not b!48756) (not bm!3162) (not b!48786) (not b!48771) (not b!48757) (not bm!3150) (not bm!3175) (not bm!3157) (not bm!3148) (not b!48754) (not bm!3166) (not b!48714) (not bm!3168) tp_is_empty!497 (not bm!3167) (not b_next!1389) b_and!1425 (not bm!3153) (not mapNonEmpty!1192) (not b!48767) tp_is_empty!495 (not bm!3158) (not bm!3149) (not bm!3160) (not b!48788) b_and!1427 (not bm!3169) (not bm!3172) (not b!48766) (not bm!3165) (not bm!3146) (not b!48787) (not b_next!1391) (not bm!3174) (not b!48779) (not bm!3164) (not d!5841) (not bm!3170) (not bm!3155) (not bm!3171) (not bm!3145) (not bm!3161) (not bm!3152) (not b!48780) (not bm!3147))
(check-sat b_and!1425 b_and!1427 (not b_next!1391) (not b_next!1389))

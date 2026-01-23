; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243048 () Bool)

(assert start!243048)

(declare-fun b!2487239 () Bool)

(declare-fun b_free!72577 () Bool)

(declare-fun b_next!73281 () Bool)

(assert (=> b!2487239 (= b_free!72577 (not b_next!73281))))

(declare-fun tp!796159 () Bool)

(declare-fun b_and!188867 () Bool)

(assert (=> b!2487239 (= tp!796159 b_and!188867)))

(declare-fun b!2487238 () Bool)

(declare-fun b_free!72579 () Bool)

(declare-fun b_next!73283 () Bool)

(assert (=> b!2487238 (= b_free!72579 (not b_next!73283))))

(declare-fun tp!796164 () Bool)

(declare-fun b_and!188869 () Bool)

(assert (=> b!2487238 (= tp!796164 b_and!188869)))

(declare-fun b!2487237 () Bool)

(declare-fun e!1579367 () Bool)

(declare-fun e!1579365 () Bool)

(assert (=> b!2487237 (= e!1579367 (not e!1579365))))

(declare-fun res!1052877 () Bool)

(assert (=> b!2487237 (=> res!1052877 e!1579365)))

(declare-datatypes ((K!5660 0))(
  ( (K!5661 (val!9003 Int)) )
))
(declare-datatypes ((V!5862 0))(
  ( (V!5863 (val!9004 Int)) )
))
(declare-datatypes ((tuple2!29290 0))(
  ( (tuple2!29291 (_1!17187 K!5660) (_2!17187 V!5862)) )
))
(declare-datatypes ((List!29338 0))(
  ( (Nil!29238) (Cons!29238 (h!34657 tuple2!29290) (t!211033 List!29338)) )
))
(declare-datatypes ((array!12219 0))(
  ( (array!12220 (arr!5450 (Array (_ BitVec 32) List!29338)) (size!22869 (_ BitVec 32))) )
))
(declare-datatypes ((array!12221 0))(
  ( (array!12222 (arr!5451 (Array (_ BitVec 32) (_ BitVec 64))) (size!22870 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6860 0))(
  ( (LongMapFixedSize!6861 (defaultEntry!3804 Int) (mask!8634 (_ BitVec 32)) (extraKeys!3678 (_ BitVec 32)) (zeroValue!3688 List!29338) (minValue!3688 List!29338) (_size!6907 (_ BitVec 32)) (_keys!3727 array!12221) (_values!3710 array!12219) (_vacant!3491 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13537 0))(
  ( (Cell!13538 (v!31702 LongMapFixedSize!6860)) )
))
(declare-datatypes ((MutLongMap!3430 0))(
  ( (LongMap!3430 (underlying!7067 Cell!13537)) (MutLongMapExt!3429 (__x!19196 Int)) )
))
(declare-datatypes ((tuple2!29292 0))(
  ( (tuple2!29293 (_1!17188 Bool) (_2!17188 MutLongMap!3430)) )
))
(declare-fun lt!893303 () tuple2!29292)

(assert (=> b!2487237 (= res!1052877 (_1!17188 lt!893303))))

(declare-fun e!1579361 () Bool)

(assert (=> b!2487237 e!1579361))

(declare-fun res!1052874 () Bool)

(assert (=> b!2487237 (=> (not res!1052874) (not e!1579361))))

(declare-fun lt!893302 () List!29338)

(declare-fun noDuplicateKeys!126 (List!29338) Bool)

(assert (=> b!2487237 (= res!1052874 (noDuplicateKeys!126 lt!893302))))

(declare-datatypes ((Unit!42927 0))(
  ( (Unit!42928) )
))
(declare-fun lt!893295 () Unit!42927)

(declare-fun lt!893296 () List!29338)

(declare-fun key!2246 () K!5660)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!106 (List!29338 K!5660) Unit!42927)

(assert (=> b!2487237 (= lt!893295 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!106 lt!893296 key!2246))))

(declare-datatypes ((Cell!13539 0))(
  ( (Cell!13540 (v!31703 MutLongMap!3430)) )
))
(declare-fun lt!893300 () Cell!13539)

(declare-datatypes ((Hashable!3340 0))(
  ( (HashableExt!3339 (__x!19197 Int)) )
))
(declare-datatypes ((MutableMap!3340 0))(
  ( (MutableMapExt!3339 (__x!19198 Int)) (HashMap!3340 (underlying!7068 Cell!13539) (hashF!5363 Hashable!3340) (_size!6908 (_ BitVec 32)) (defaultValue!3502 Int)) )
))
(declare-datatypes ((tuple2!29294 0))(
  ( (tuple2!29295 (_1!17189 Unit!42927) (_2!17189 MutableMap!3340)) )
))
(declare-fun lt!893297 () tuple2!29294)

(declare-fun thiss!42540 () MutableMap!3340)

(declare-fun Unit!42929 () Unit!42927)

(declare-fun Unit!42930 () Unit!42927)

(assert (=> b!2487237 (= lt!893297 (ite (_1!17188 lt!893303) (tuple2!29295 Unit!42929 (HashMap!3340 lt!893300 (hashF!5363 thiss!42540) (bvsub (_size!6908 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3502 thiss!42540))) (tuple2!29295 Unit!42930 (HashMap!3340 lt!893300 (hashF!5363 thiss!42540) (_size!6908 thiss!42540) (defaultValue!3502 thiss!42540)))))))

(assert (=> b!2487237 (= lt!893300 (Cell!13540 (_2!17188 lt!893303)))))

(declare-fun lt!893294 () (_ BitVec 64))

(declare-fun update!250 (MutLongMap!3430 (_ BitVec 64) List!29338) tuple2!29292)

(assert (=> b!2487237 (= lt!893303 (update!250 (v!31703 (underlying!7068 thiss!42540)) lt!893294 lt!893302))))

(declare-fun removePairForKey!118 (List!29338 K!5660) List!29338)

(assert (=> b!2487237 (= lt!893302 (removePairForKey!118 lt!893296 key!2246))))

(declare-datatypes ((ListMap!1169 0))(
  ( (ListMap!1170 (toList!1690 List!29338)) )
))
(declare-fun lt!893298 () ListMap!1169)

(declare-fun map!6351 (MutableMap!3340) ListMap!1169)

(assert (=> b!2487237 (= lt!893298 (map!6351 thiss!42540))))

(declare-fun lt!893301 () Unit!42927)

(declare-fun lambda!94736 () Int)

(declare-datatypes ((tuple2!29296 0))(
  ( (tuple2!29297 (_1!17190 (_ BitVec 64)) (_2!17190 List!29338)) )
))
(declare-datatypes ((List!29339 0))(
  ( (Nil!29239) (Cons!29239 (h!34658 tuple2!29296) (t!211034 List!29339)) )
))
(declare-fun forallContained!907 (List!29339 Int tuple2!29296) Unit!42927)

(declare-datatypes ((ListLongMap!641 0))(
  ( (ListLongMap!642 (toList!1691 List!29339)) )
))
(declare-fun map!6352 (MutLongMap!3430) ListLongMap!641)

(assert (=> b!2487237 (= lt!893301 (forallContained!907 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) lambda!94736 (tuple2!29297 lt!893294 lt!893296)))))

(declare-fun apply!7004 (MutLongMap!3430 (_ BitVec 64)) List!29338)

(assert (=> b!2487237 (= lt!893296 (apply!7004 (v!31703 (underlying!7068 thiss!42540)) lt!893294))))

(declare-fun hash!791 (Hashable!3340 K!5660) (_ BitVec 64))

(assert (=> b!2487237 (= lt!893294 (hash!791 (hashF!5363 thiss!42540) key!2246))))

(declare-fun mapIsEmpty!15813 () Bool)

(declare-fun mapRes!15813 () Bool)

(assert (=> mapIsEmpty!15813 mapRes!15813))

(declare-fun e!1579369 () Bool)

(declare-fun e!1579360 () Bool)

(assert (=> b!2487238 (= e!1579369 (and e!1579360 tp!796164))))

(declare-fun e!1579364 () Bool)

(declare-fun tp!796160 () Bool)

(declare-fun tp!796162 () Bool)

(declare-fun e!1579366 () Bool)

(declare-fun array_inv!3915 (array!12221) Bool)

(declare-fun array_inv!3916 (array!12219) Bool)

(assert (=> b!2487239 (= e!1579364 (and tp!796159 tp!796160 tp!796162 (array_inv!3915 (_keys!3727 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) (array_inv!3916 (_values!3710 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) e!1579366))))

(declare-fun b!2487240 () Bool)

(declare-fun e!1579368 () Bool)

(declare-fun valid!2641 (MutableMap!3340) Bool)

(assert (=> b!2487240 (= e!1579368 (valid!2641 (_2!17189 lt!893297)))))

(declare-fun res!1052875 () Bool)

(assert (=> start!243048 (=> (not res!1052875) (not e!1579367))))

(get-info :version)

(assert (=> start!243048 (= res!1052875 ((_ is HashMap!3340) thiss!42540))))

(assert (=> start!243048 e!1579367))

(assert (=> start!243048 e!1579369))

(declare-fun tp_is_empty!12425 () Bool)

(assert (=> start!243048 tp_is_empty!12425))

(declare-fun b!2487241 () Bool)

(assert (=> b!2487241 (= e!1579365 (= (map!6351 (_2!17189 lt!893297)) lt!893298))))

(declare-fun mapNonEmpty!15813 () Bool)

(declare-fun tp!796158 () Bool)

(declare-fun tp!796163 () Bool)

(assert (=> mapNonEmpty!15813 (= mapRes!15813 (and tp!796158 tp!796163))))

(declare-fun mapRest!15813 () (Array (_ BitVec 32) List!29338))

(declare-fun mapKey!15813 () (_ BitVec 32))

(declare-fun mapValue!15813 () List!29338)

(assert (=> mapNonEmpty!15813 (= (arr!5450 (_values!3710 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) (store mapRest!15813 mapKey!15813 mapValue!15813))))

(declare-fun b!2487242 () Bool)

(declare-fun res!1052878 () Bool)

(assert (=> b!2487242 (=> (not res!1052878) (not e!1579367))))

(declare-fun contains!5253 (MutableMap!3340 K!5660) Bool)

(assert (=> b!2487242 (= res!1052878 (contains!5253 thiss!42540 key!2246))))

(declare-fun b!2487243 () Bool)

(declare-fun e!1579370 () Bool)

(assert (=> b!2487243 (= e!1579370 e!1579364)))

(declare-fun b!2487244 () Bool)

(declare-fun res!1052876 () Bool)

(assert (=> b!2487244 (=> (not res!1052876) (not e!1579367))))

(assert (=> b!2487244 (= res!1052876 (valid!2641 thiss!42540))))

(declare-fun b!2487245 () Bool)

(declare-fun e!1579362 () Bool)

(assert (=> b!2487245 (= e!1579362 e!1579370)))

(declare-fun b!2487246 () Bool)

(assert (=> b!2487246 (= e!1579361 e!1579368)))

(declare-fun res!1052873 () Bool)

(assert (=> b!2487246 (=> res!1052873 e!1579368)))

(assert (=> b!2487246 (= res!1052873 (_1!17188 lt!893303))))

(declare-fun b!2487247 () Bool)

(declare-fun tp!796161 () Bool)

(assert (=> b!2487247 (= e!1579366 (and tp!796161 mapRes!15813))))

(declare-fun condMapEmpty!15813 () Bool)

(declare-fun mapDefault!15813 () List!29338)

(assert (=> b!2487247 (= condMapEmpty!15813 (= (arr!5450 (_values!3710 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29338)) mapDefault!15813)))))

(declare-fun b!2487248 () Bool)

(declare-fun lt!893299 () MutLongMap!3430)

(assert (=> b!2487248 (= e!1579360 (and e!1579362 ((_ is LongMap!3430) lt!893299)))))

(assert (=> b!2487248 (= lt!893299 (v!31703 (underlying!7068 thiss!42540)))))

(assert (= (and start!243048 res!1052875) b!2487244))

(assert (= (and b!2487244 res!1052876) b!2487242))

(assert (= (and b!2487242 res!1052878) b!2487237))

(assert (= (and b!2487237 res!1052874) b!2487246))

(assert (= (and b!2487246 (not res!1052873)) b!2487240))

(assert (= (and b!2487237 (not res!1052877)) b!2487241))

(assert (= (and b!2487247 condMapEmpty!15813) mapIsEmpty!15813))

(assert (= (and b!2487247 (not condMapEmpty!15813)) mapNonEmpty!15813))

(assert (= b!2487239 b!2487247))

(assert (= b!2487243 b!2487239))

(assert (= b!2487245 b!2487243))

(assert (= (and b!2487248 ((_ is LongMap!3430) (v!31703 (underlying!7068 thiss!42540)))) b!2487245))

(assert (= b!2487238 b!2487248))

(assert (= (and start!243048 ((_ is HashMap!3340) thiss!42540)) b!2487238))

(declare-fun m!2855993 () Bool)

(assert (=> b!2487241 m!2855993))

(declare-fun m!2855995 () Bool)

(assert (=> b!2487242 m!2855995))

(declare-fun m!2855997 () Bool)

(assert (=> b!2487244 m!2855997))

(declare-fun m!2855999 () Bool)

(assert (=> b!2487239 m!2855999))

(declare-fun m!2856001 () Bool)

(assert (=> b!2487239 m!2856001))

(declare-fun m!2856003 () Bool)

(assert (=> b!2487240 m!2856003))

(declare-fun m!2856005 () Bool)

(assert (=> b!2487237 m!2856005))

(declare-fun m!2856007 () Bool)

(assert (=> b!2487237 m!2856007))

(declare-fun m!2856009 () Bool)

(assert (=> b!2487237 m!2856009))

(declare-fun m!2856011 () Bool)

(assert (=> b!2487237 m!2856011))

(declare-fun m!2856013 () Bool)

(assert (=> b!2487237 m!2856013))

(declare-fun m!2856015 () Bool)

(assert (=> b!2487237 m!2856015))

(declare-fun m!2856017 () Bool)

(assert (=> b!2487237 m!2856017))

(declare-fun m!2856019 () Bool)

(assert (=> b!2487237 m!2856019))

(declare-fun m!2856021 () Bool)

(assert (=> b!2487237 m!2856021))

(declare-fun m!2856023 () Bool)

(assert (=> mapNonEmpty!15813 m!2856023))

(check-sat (not b!2487242) tp_is_empty!12425 (not b!2487239) b_and!188867 (not b_next!73281) (not b!2487247) (not b_next!73283) (not b!2487237) (not b!2487240) (not b!2487244) (not b!2487241) (not mapNonEmpty!15813) b_and!188869)
(check-sat b_and!188869 b_and!188867 (not b_next!73281) (not b_next!73283))
(get-model)

(declare-fun bs!468207 () Bool)

(declare-fun b!2487279 () Bool)

(assert (= bs!468207 (and b!2487279 b!2487237)))

(declare-fun lambda!94739 () Int)

(assert (=> bs!468207 (= lambda!94739 lambda!94736)))

(declare-fun bm!152554 () Bool)

(declare-datatypes ((Option!5794 0))(
  ( (None!5793) (Some!5793 (v!31708 tuple2!29290)) )
))
(declare-fun call!152563 () Option!5794)

(declare-fun call!152559 () List!29338)

(declare-fun getPair!88 (List!29338 K!5660) Option!5794)

(assert (=> bm!152554 (= call!152563 (getPair!88 call!152559 key!2246))))

(declare-fun call!152560 () (_ BitVec 64))

(declare-fun c!395299 () Bool)

(declare-fun call!152562 () ListLongMap!641)

(declare-fun bm!152555 () Bool)

(declare-fun lt!893363 () ListLongMap!641)

(declare-fun apply!7005 (ListLongMap!641 (_ BitVec 64)) List!29338)

(assert (=> bm!152555 (= call!152559 (apply!7005 (ite c!395299 lt!893363 call!152562) call!152560))))

(declare-fun b!2487271 () Bool)

(declare-fun e!1579390 () Unit!42927)

(declare-fun e!1579389 () Unit!42927)

(assert (=> b!2487271 (= e!1579390 e!1579389)))

(declare-fun res!1052885 () Bool)

(declare-fun call!152564 () Bool)

(assert (=> b!2487271 (= res!1052885 call!152564)))

(declare-fun e!1579388 () Bool)

(assert (=> b!2487271 (=> (not res!1052885) (not e!1579388))))

(declare-fun c!395297 () Bool)

(assert (=> b!2487271 (= c!395297 e!1579388)))

(declare-fun d!713944 () Bool)

(declare-fun lt!893361 () Bool)

(declare-fun contains!5254 (ListMap!1169 K!5660) Bool)

(assert (=> d!713944 (= lt!893361 (contains!5254 (map!6351 thiss!42540) key!2246))))

(declare-fun e!1579387 () Bool)

(assert (=> d!713944 (= lt!893361 e!1579387)))

(declare-fun res!1052886 () Bool)

(assert (=> d!713944 (=> (not res!1052886) (not e!1579387))))

(declare-fun lt!893351 () (_ BitVec 64))

(declare-fun contains!5255 (MutLongMap!3430 (_ BitVec 64)) Bool)

(assert (=> d!713944 (= res!1052886 (contains!5255 (v!31703 (underlying!7068 thiss!42540)) lt!893351))))

(declare-fun lt!893349 () Unit!42927)

(assert (=> d!713944 (= lt!893349 e!1579390)))

(declare-fun extractMap!198 (List!29339) ListMap!1169)

(assert (=> d!713944 (= c!395299 (contains!5254 (extractMap!198 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540))))) key!2246))))

(declare-fun lt!893346 () Unit!42927)

(declare-fun e!1579391 () Unit!42927)

(assert (=> d!713944 (= lt!893346 e!1579391)))

(declare-fun c!395298 () Bool)

(assert (=> d!713944 (= c!395298 (contains!5255 (v!31703 (underlying!7068 thiss!42540)) lt!893351))))

(assert (=> d!713944 (= lt!893351 (hash!791 (hashF!5363 thiss!42540) key!2246))))

(assert (=> d!713944 (valid!2641 thiss!42540)))

(assert (=> d!713944 (= (contains!5253 thiss!42540 key!2246) lt!893361)))

(declare-fun b!2487272 () Bool)

(declare-fun isDefined!4616 (Option!5794) Bool)

(assert (=> b!2487272 (= e!1579387 (isDefined!4616 (getPair!88 (apply!7004 (v!31703 (underlying!7068 thiss!42540)) lt!893351) key!2246)))))

(declare-fun b!2487273 () Bool)

(declare-fun e!1579386 () Bool)

(declare-fun call!152561 () Bool)

(assert (=> b!2487273 (= e!1579386 call!152561)))

(declare-fun b!2487274 () Bool)

(declare-fun lt!893355 () Unit!42927)

(assert (=> b!2487274 (= e!1579390 lt!893355)))

(assert (=> b!2487274 (= lt!893363 call!152562)))

(declare-fun lemmaInGenericMapThenInLongMap!88 (ListLongMap!641 K!5660 Hashable!3340) Unit!42927)

(assert (=> b!2487274 (= lt!893355 (lemmaInGenericMapThenInLongMap!88 lt!893363 key!2246 (hashF!5363 thiss!42540)))))

(declare-fun res!1052887 () Bool)

(assert (=> b!2487274 (= res!1052887 call!152564)))

(assert (=> b!2487274 (=> (not res!1052887) (not e!1579386))))

(assert (=> b!2487274 e!1579386))

(declare-fun b!2487275 () Bool)

(declare-fun Unit!42931 () Unit!42927)

(assert (=> b!2487275 (= e!1579389 Unit!42931)))

(declare-fun bm!152556 () Bool)

(assert (=> bm!152556 (= call!152562 (map!6352 (v!31703 (underlying!7068 thiss!42540))))))

(declare-fun b!2487276 () Bool)

(declare-fun Unit!42932 () Unit!42927)

(assert (=> b!2487276 (= e!1579391 Unit!42932)))

(declare-fun bm!152557 () Bool)

(assert (=> bm!152557 (= call!152561 (isDefined!4616 call!152563))))

(declare-fun b!2487277 () Bool)

(assert (=> b!2487277 false))

(declare-fun lt!893360 () Unit!42927)

(declare-fun lt!893353 () Unit!42927)

(assert (=> b!2487277 (= lt!893360 lt!893353)))

(declare-fun lt!893357 () ListLongMap!641)

(assert (=> b!2487277 (contains!5254 (extractMap!198 (toList!1691 lt!893357)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!88 (ListLongMap!641 K!5660 Hashable!3340) Unit!42927)

(assert (=> b!2487277 (= lt!893353 (lemmaInLongMapThenInGenericMap!88 lt!893357 key!2246 (hashF!5363 thiss!42540)))))

(assert (=> b!2487277 (= lt!893357 call!152562)))

(declare-fun Unit!42933 () Unit!42927)

(assert (=> b!2487277 (= e!1579389 Unit!42933)))

(declare-fun bm!152558 () Bool)

(declare-fun contains!5256 (ListLongMap!641 (_ BitVec 64)) Bool)

(assert (=> bm!152558 (= call!152564 (contains!5256 (ite c!395299 lt!893363 call!152562) call!152560))))

(declare-fun bm!152559 () Bool)

(assert (=> bm!152559 (= call!152560 (hash!791 (hashF!5363 thiss!42540) key!2246))))

(declare-fun b!2487278 () Bool)

(assert (=> b!2487278 (= e!1579388 call!152561)))

(assert (=> b!2487279 (= e!1579391 (forallContained!907 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) lambda!94739 (tuple2!29297 lt!893351 (apply!7004 (v!31703 (underlying!7068 thiss!42540)) lt!893351))))))

(declare-fun c!395300 () Bool)

(declare-fun contains!5257 (List!29339 tuple2!29296) Bool)

(assert (=> b!2487279 (= c!395300 (not (contains!5257 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) (tuple2!29297 lt!893351 (apply!7004 (v!31703 (underlying!7068 thiss!42540)) lt!893351)))))))

(declare-fun lt!893359 () Unit!42927)

(declare-fun e!1579385 () Unit!42927)

(assert (=> b!2487279 (= lt!893359 e!1579385)))

(declare-fun b!2487280 () Bool)

(assert (=> b!2487280 false))

(declare-fun lt!893358 () Unit!42927)

(declare-fun lt!893362 () Unit!42927)

(assert (=> b!2487280 (= lt!893358 lt!893362)))

(declare-fun lt!893356 () List!29339)

(declare-fun lt!893354 () List!29338)

(assert (=> b!2487280 (contains!5257 lt!893356 (tuple2!29297 lt!893351 lt!893354))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!94 (List!29339 (_ BitVec 64) List!29338) Unit!42927)

(assert (=> b!2487280 (= lt!893362 (lemmaGetValueByKeyImpliesContainsTuple!94 lt!893356 lt!893351 lt!893354))))

(assert (=> b!2487280 (= lt!893354 (apply!7004 (v!31703 (underlying!7068 thiss!42540)) lt!893351))))

(assert (=> b!2487280 (= lt!893356 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))))))

(declare-fun lt!893348 () Unit!42927)

(declare-fun lt!893350 () Unit!42927)

(assert (=> b!2487280 (= lt!893348 lt!893350)))

(declare-fun lt!893344 () List!29339)

(declare-datatypes ((Option!5795 0))(
  ( (None!5794) (Some!5794 (v!31709 List!29338)) )
))
(declare-fun isDefined!4617 (Option!5795) Bool)

(declare-fun getValueByKey!163 (List!29339 (_ BitVec 64)) Option!5795)

(assert (=> b!2487280 (isDefined!4617 (getValueByKey!163 lt!893344 lt!893351))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!120 (List!29339 (_ BitVec 64)) Unit!42927)

(assert (=> b!2487280 (= lt!893350 (lemmaContainsKeyImpliesGetValueByKeyDefined!120 lt!893344 lt!893351))))

(assert (=> b!2487280 (= lt!893344 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))))))

(declare-fun lt!893347 () Unit!42927)

(declare-fun lt!893345 () Unit!42927)

(assert (=> b!2487280 (= lt!893347 lt!893345)))

(declare-fun lt!893352 () List!29339)

(declare-fun containsKey!178 (List!29339 (_ BitVec 64)) Bool)

(assert (=> b!2487280 (containsKey!178 lt!893352 lt!893351)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!89 (List!29339 (_ BitVec 64)) Unit!42927)

(assert (=> b!2487280 (= lt!893345 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!89 lt!893352 lt!893351))))

(assert (=> b!2487280 (= lt!893352 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))))))

(declare-fun Unit!42934 () Unit!42927)

(assert (=> b!2487280 (= e!1579385 Unit!42934)))

(declare-fun b!2487281 () Bool)

(declare-fun Unit!42935 () Unit!42927)

(assert (=> b!2487281 (= e!1579385 Unit!42935)))

(assert (= (and d!713944 c!395298) b!2487279))

(assert (= (and d!713944 (not c!395298)) b!2487276))

(assert (= (and b!2487279 c!395300) b!2487280))

(assert (= (and b!2487279 (not c!395300)) b!2487281))

(assert (= (and d!713944 c!395299) b!2487274))

(assert (= (and d!713944 (not c!395299)) b!2487271))

(assert (= (and b!2487274 res!1052887) b!2487273))

(assert (= (and b!2487271 res!1052885) b!2487278))

(assert (= (and b!2487271 c!395297) b!2487277))

(assert (= (and b!2487271 (not c!395297)) b!2487275))

(assert (= (or b!2487274 b!2487273 b!2487271 b!2487278) bm!152559))

(assert (= (or b!2487274 b!2487271 b!2487278 b!2487277) bm!152556))

(assert (= (or b!2487274 b!2487271) bm!152558))

(assert (= (or b!2487273 b!2487278) bm!152555))

(assert (= (or b!2487273 b!2487278) bm!152554))

(assert (= (or b!2487273 b!2487278) bm!152557))

(assert (= (and d!713944 res!1052886) b!2487272))

(declare-fun m!2856025 () Bool)

(assert (=> bm!152557 m!2856025))

(declare-fun m!2856027 () Bool)

(assert (=> bm!152558 m!2856027))

(declare-fun m!2856029 () Bool)

(assert (=> b!2487274 m!2856029))

(assert (=> b!2487279 m!2856007))

(declare-fun m!2856031 () Bool)

(assert (=> b!2487279 m!2856031))

(declare-fun m!2856033 () Bool)

(assert (=> b!2487279 m!2856033))

(declare-fun m!2856035 () Bool)

(assert (=> b!2487279 m!2856035))

(assert (=> bm!152559 m!2856013))

(assert (=> bm!152556 m!2856007))

(declare-fun m!2856037 () Bool)

(assert (=> bm!152555 m!2856037))

(declare-fun m!2856039 () Bool)

(assert (=> b!2487280 m!2856039))

(declare-fun m!2856041 () Bool)

(assert (=> b!2487280 m!2856041))

(declare-fun m!2856043 () Bool)

(assert (=> b!2487280 m!2856043))

(declare-fun m!2856045 () Bool)

(assert (=> b!2487280 m!2856045))

(declare-fun m!2856047 () Bool)

(assert (=> b!2487280 m!2856047))

(declare-fun m!2856049 () Bool)

(assert (=> b!2487280 m!2856049))

(assert (=> b!2487280 m!2856031))

(assert (=> b!2487280 m!2856039))

(declare-fun m!2856051 () Bool)

(assert (=> b!2487280 m!2856051))

(assert (=> b!2487280 m!2856007))

(assert (=> b!2487272 m!2856031))

(assert (=> b!2487272 m!2856031))

(declare-fun m!2856053 () Bool)

(assert (=> b!2487272 m!2856053))

(assert (=> b!2487272 m!2856053))

(declare-fun m!2856055 () Bool)

(assert (=> b!2487272 m!2856055))

(declare-fun m!2856057 () Bool)

(assert (=> d!713944 m!2856057))

(assert (=> d!713944 m!2856013))

(assert (=> d!713944 m!2856007))

(declare-fun m!2856059 () Bool)

(assert (=> d!713944 m!2856059))

(assert (=> d!713944 m!2856059))

(declare-fun m!2856061 () Bool)

(assert (=> d!713944 m!2856061))

(assert (=> d!713944 m!2856011))

(declare-fun m!2856063 () Bool)

(assert (=> d!713944 m!2856063))

(assert (=> d!713944 m!2855997))

(assert (=> d!713944 m!2856011))

(declare-fun m!2856065 () Bool)

(assert (=> bm!152554 m!2856065))

(declare-fun m!2856067 () Bool)

(assert (=> b!2487277 m!2856067))

(assert (=> b!2487277 m!2856067))

(declare-fun m!2856069 () Bool)

(assert (=> b!2487277 m!2856069))

(declare-fun m!2856071 () Bool)

(assert (=> b!2487277 m!2856071))

(assert (=> b!2487242 d!713944))

(declare-fun d!713946 () Bool)

(declare-fun lt!893366 () ListMap!1169)

(declare-fun invariantList!427 (List!29338) Bool)

(assert (=> d!713946 (invariantList!427 (toList!1690 lt!893366))))

(assert (=> d!713946 (= lt!893366 (extractMap!198 (toList!1691 (map!6352 (v!31703 (underlying!7068 (_2!17189 lt!893297)))))))))

(assert (=> d!713946 (valid!2641 (_2!17189 lt!893297))))

(assert (=> d!713946 (= (map!6351 (_2!17189 lt!893297)) lt!893366)))

(declare-fun bs!468208 () Bool)

(assert (= bs!468208 d!713946))

(declare-fun m!2856073 () Bool)

(assert (=> bs!468208 m!2856073))

(declare-fun m!2856075 () Bool)

(assert (=> bs!468208 m!2856075))

(declare-fun m!2856077 () Bool)

(assert (=> bs!468208 m!2856077))

(assert (=> bs!468208 m!2856003))

(assert (=> b!2487241 d!713946))

(declare-fun b!2487293 () Bool)

(declare-fun e!1579396 () List!29338)

(assert (=> b!2487293 (= e!1579396 Nil!29238)))

(declare-fun b!2487291 () Bool)

(declare-fun e!1579397 () List!29338)

(assert (=> b!2487291 (= e!1579397 e!1579396)))

(declare-fun c!395305 () Bool)

(assert (=> b!2487291 (= c!395305 ((_ is Cons!29238) lt!893296))))

(declare-fun b!2487292 () Bool)

(assert (=> b!2487292 (= e!1579396 (Cons!29238 (h!34657 lt!893296) (removePairForKey!118 (t!211033 lt!893296) key!2246)))))

(declare-fun b!2487290 () Bool)

(assert (=> b!2487290 (= e!1579397 (t!211033 lt!893296))))

(declare-fun d!713948 () Bool)

(declare-fun lt!893369 () List!29338)

(declare-fun containsKey!179 (List!29338 K!5660) Bool)

(assert (=> d!713948 (not (containsKey!179 lt!893369 key!2246))))

(assert (=> d!713948 (= lt!893369 e!1579397)))

(declare-fun c!395306 () Bool)

(assert (=> d!713948 (= c!395306 (and ((_ is Cons!29238) lt!893296) (= (_1!17187 (h!34657 lt!893296)) key!2246)))))

(assert (=> d!713948 (noDuplicateKeys!126 lt!893296)))

(assert (=> d!713948 (= (removePairForKey!118 lt!893296 key!2246) lt!893369)))

(assert (= (and d!713948 c!395306) b!2487290))

(assert (= (and d!713948 (not c!395306)) b!2487291))

(assert (= (and b!2487291 c!395305) b!2487292))

(assert (= (and b!2487291 (not c!395305)) b!2487293))

(declare-fun m!2856079 () Bool)

(assert (=> b!2487292 m!2856079))

(declare-fun m!2856081 () Bool)

(assert (=> d!713948 m!2856081))

(declare-fun m!2856083 () Bool)

(assert (=> d!713948 m!2856083))

(assert (=> b!2487237 d!713948))

(declare-fun d!713950 () Bool)

(declare-fun dynLambda!12512 (Int tuple2!29296) Bool)

(assert (=> d!713950 (dynLambda!12512 lambda!94736 (tuple2!29297 lt!893294 lt!893296))))

(declare-fun lt!893372 () Unit!42927)

(declare-fun choose!14721 (List!29339 Int tuple2!29296) Unit!42927)

(assert (=> d!713950 (= lt!893372 (choose!14721 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) lambda!94736 (tuple2!29297 lt!893294 lt!893296)))))

(declare-fun e!1579400 () Bool)

(assert (=> d!713950 e!1579400))

(declare-fun res!1052890 () Bool)

(assert (=> d!713950 (=> (not res!1052890) (not e!1579400))))

(declare-fun forall!6021 (List!29339 Int) Bool)

(assert (=> d!713950 (= res!1052890 (forall!6021 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) lambda!94736))))

(assert (=> d!713950 (= (forallContained!907 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) lambda!94736 (tuple2!29297 lt!893294 lt!893296)) lt!893372)))

(declare-fun b!2487296 () Bool)

(assert (=> b!2487296 (= e!1579400 (contains!5257 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) (tuple2!29297 lt!893294 lt!893296)))))

(assert (= (and d!713950 res!1052890) b!2487296))

(declare-fun b_lambda!76411 () Bool)

(assert (=> (not b_lambda!76411) (not d!713950)))

(declare-fun m!2856085 () Bool)

(assert (=> d!713950 m!2856085))

(declare-fun m!2856087 () Bool)

(assert (=> d!713950 m!2856087))

(declare-fun m!2856089 () Bool)

(assert (=> d!713950 m!2856089))

(declare-fun m!2856091 () Bool)

(assert (=> b!2487296 m!2856091))

(assert (=> b!2487237 d!713950))

(declare-fun d!713952 () Bool)

(assert (=> d!713952 (noDuplicateKeys!126 (removePairForKey!118 lt!893296 key!2246))))

(declare-fun lt!893375 () Unit!42927)

(declare-fun choose!14722 (List!29338 K!5660) Unit!42927)

(assert (=> d!713952 (= lt!893375 (choose!14722 lt!893296 key!2246))))

(assert (=> d!713952 (noDuplicateKeys!126 lt!893296)))

(assert (=> d!713952 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!106 lt!893296 key!2246) lt!893375)))

(declare-fun bs!468209 () Bool)

(assert (= bs!468209 d!713952))

(assert (=> bs!468209 m!2856005))

(assert (=> bs!468209 m!2856005))

(declare-fun m!2856093 () Bool)

(assert (=> bs!468209 m!2856093))

(declare-fun m!2856095 () Bool)

(assert (=> bs!468209 m!2856095))

(assert (=> bs!468209 m!2856083))

(assert (=> b!2487237 d!713952))

(declare-fun d!713954 () Bool)

(declare-fun hash!792 (Hashable!3340 K!5660) (_ BitVec 64))

(assert (=> d!713954 (= (hash!791 (hashF!5363 thiss!42540) key!2246) (hash!792 (hashF!5363 thiss!42540) key!2246))))

(declare-fun bs!468210 () Bool)

(assert (= bs!468210 d!713954))

(declare-fun m!2856097 () Bool)

(assert (=> bs!468210 m!2856097))

(assert (=> b!2487237 d!713954))

(declare-fun d!713956 () Bool)

(declare-fun e!1579412 () Bool)

(assert (=> d!713956 e!1579412))

(declare-fun res!1052897 () Bool)

(assert (=> d!713956 (=> (not res!1052897) (not e!1579412))))

(declare-fun lt!893385 () tuple2!29292)

(assert (=> d!713956 (= res!1052897 ((_ is LongMap!3430) (_2!17188 lt!893385)))))

(declare-fun e!1579411 () tuple2!29292)

(assert (=> d!713956 (= lt!893385 e!1579411)))

(declare-fun c!395313 () Bool)

(declare-fun lt!893386 () tuple2!29292)

(assert (=> d!713956 (= c!395313 (_1!17188 lt!893386))))

(declare-fun e!1579413 () tuple2!29292)

(assert (=> d!713956 (= lt!893386 e!1579413)))

(declare-fun c!395315 () Bool)

(declare-fun imbalanced!32 (MutLongMap!3430) Bool)

(assert (=> d!713956 (= c!395315 (imbalanced!32 (v!31703 (underlying!7068 thiss!42540))))))

(declare-fun valid!2642 (MutLongMap!3430) Bool)

(assert (=> d!713956 (valid!2642 (v!31703 (underlying!7068 thiss!42540)))))

(assert (=> d!713956 (= (update!250 (v!31703 (underlying!7068 thiss!42540)) lt!893294 lt!893302) lt!893385)))

(declare-fun b!2487315 () Bool)

(declare-fun e!1579415 () Bool)

(declare-fun call!152569 () ListLongMap!641)

(declare-fun call!152570 () ListLongMap!641)

(assert (=> b!2487315 (= e!1579415 (= call!152569 call!152570))))

(declare-fun b!2487316 () Bool)

(declare-fun res!1052899 () Bool)

(assert (=> b!2487316 (=> (not res!1052899) (not e!1579412))))

(assert (=> b!2487316 (= res!1052899 (valid!2642 (_2!17188 lt!893385)))))

(declare-fun b!2487317 () Bool)

(assert (=> b!2487317 (= e!1579412 e!1579415)))

(declare-fun c!395314 () Bool)

(assert (=> b!2487317 (= c!395314 (_1!17188 lt!893385))))

(declare-fun b!2487318 () Bool)

(declare-fun e!1579414 () Bool)

(assert (=> b!2487318 (= e!1579415 e!1579414)))

(declare-fun res!1052898 () Bool)

(assert (=> b!2487318 (= res!1052898 (contains!5256 call!152569 lt!893294))))

(assert (=> b!2487318 (=> (not res!1052898) (not e!1579414))))

(declare-fun bm!152564 () Bool)

(assert (=> bm!152564 (= call!152569 (map!6352 (_2!17188 lt!893385)))))

(declare-fun b!2487319 () Bool)

(declare-fun lt!893387 () tuple2!29292)

(assert (=> b!2487319 (= e!1579413 (tuple2!29293 (_1!17188 lt!893387) (_2!17188 lt!893387)))))

(declare-fun repack!36 (MutLongMap!3430) tuple2!29292)

(assert (=> b!2487319 (= lt!893387 (repack!36 (v!31703 (underlying!7068 thiss!42540))))))

(declare-fun bm!152565 () Bool)

(assert (=> bm!152565 (= call!152570 (map!6352 (v!31703 (underlying!7068 thiss!42540))))))

(declare-fun b!2487320 () Bool)

(declare-datatypes ((tuple2!29298 0))(
  ( (tuple2!29299 (_1!17191 Bool) (_2!17191 LongMapFixedSize!6860)) )
))
(declare-fun lt!893384 () tuple2!29298)

(assert (=> b!2487320 (= e!1579411 (tuple2!29293 (_1!17191 lt!893384) (LongMap!3430 (Cell!13538 (_2!17191 lt!893384)))))))

(declare-fun update!251 (LongMapFixedSize!6860 (_ BitVec 64) List!29338) tuple2!29298)

(assert (=> b!2487320 (= lt!893384 (update!251 (v!31702 (underlying!7067 (_2!17188 lt!893386))) lt!893294 lt!893302))))

(declare-fun b!2487321 () Bool)

(assert (=> b!2487321 (= e!1579411 (tuple2!29293 false (_2!17188 lt!893386)))))

(declare-fun b!2487322 () Bool)

(declare-fun +!117 (ListLongMap!641 tuple2!29296) ListLongMap!641)

(assert (=> b!2487322 (= e!1579414 (= call!152569 (+!117 call!152570 (tuple2!29297 lt!893294 lt!893302))))))

(declare-fun b!2487323 () Bool)

(assert (=> b!2487323 (= e!1579413 (tuple2!29293 true (v!31703 (underlying!7068 thiss!42540))))))

(assert (= (and d!713956 c!395315) b!2487319))

(assert (= (and d!713956 (not c!395315)) b!2487323))

(assert (= (and d!713956 c!395313) b!2487320))

(assert (= (and d!713956 (not c!395313)) b!2487321))

(assert (= (and d!713956 res!1052897) b!2487316))

(assert (= (and b!2487316 res!1052899) b!2487317))

(assert (= (and b!2487317 c!395314) b!2487318))

(assert (= (and b!2487317 (not c!395314)) b!2487315))

(assert (= (and b!2487318 res!1052898) b!2487322))

(assert (= (or b!2487318 b!2487322 b!2487315) bm!152564))

(assert (= (or b!2487322 b!2487315) bm!152565))

(declare-fun m!2856099 () Bool)

(assert (=> b!2487320 m!2856099))

(declare-fun m!2856101 () Bool)

(assert (=> b!2487322 m!2856101))

(declare-fun m!2856103 () Bool)

(assert (=> bm!152564 m!2856103))

(declare-fun m!2856105 () Bool)

(assert (=> b!2487318 m!2856105))

(declare-fun m!2856107 () Bool)

(assert (=> b!2487316 m!2856107))

(assert (=> bm!152565 m!2856007))

(declare-fun m!2856109 () Bool)

(assert (=> d!713956 m!2856109))

(declare-fun m!2856111 () Bool)

(assert (=> d!713956 m!2856111))

(declare-fun m!2856113 () Bool)

(assert (=> b!2487319 m!2856113))

(assert (=> b!2487237 d!713956))

(declare-fun d!713958 () Bool)

(declare-fun res!1052904 () Bool)

(declare-fun e!1579420 () Bool)

(assert (=> d!713958 (=> res!1052904 e!1579420)))

(assert (=> d!713958 (= res!1052904 (not ((_ is Cons!29238) lt!893302)))))

(assert (=> d!713958 (= (noDuplicateKeys!126 lt!893302) e!1579420)))

(declare-fun b!2487328 () Bool)

(declare-fun e!1579421 () Bool)

(assert (=> b!2487328 (= e!1579420 e!1579421)))

(declare-fun res!1052905 () Bool)

(assert (=> b!2487328 (=> (not res!1052905) (not e!1579421))))

(assert (=> b!2487328 (= res!1052905 (not (containsKey!179 (t!211033 lt!893302) (_1!17187 (h!34657 lt!893302)))))))

(declare-fun b!2487329 () Bool)

(assert (=> b!2487329 (= e!1579421 (noDuplicateKeys!126 (t!211033 lt!893302)))))

(assert (= (and d!713958 (not res!1052904)) b!2487328))

(assert (= (and b!2487328 res!1052905) b!2487329))

(declare-fun m!2856115 () Bool)

(assert (=> b!2487328 m!2856115))

(declare-fun m!2856117 () Bool)

(assert (=> b!2487329 m!2856117))

(assert (=> b!2487237 d!713958))

(declare-fun d!713960 () Bool)

(declare-fun map!6353 (LongMapFixedSize!6860) ListLongMap!641)

(assert (=> d!713960 (= (map!6352 (v!31703 (underlying!7068 thiss!42540))) (map!6353 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540))))))))

(declare-fun bs!468211 () Bool)

(assert (= bs!468211 d!713960))

(declare-fun m!2856119 () Bool)

(assert (=> bs!468211 m!2856119))

(assert (=> b!2487237 d!713960))

(declare-fun d!713962 () Bool)

(declare-fun e!1579424 () Bool)

(assert (=> d!713962 e!1579424))

(declare-fun c!395318 () Bool)

(assert (=> d!713962 (= c!395318 (contains!5255 (v!31703 (underlying!7068 thiss!42540)) lt!893294))))

(declare-fun lt!893390 () List!29338)

(declare-fun apply!7006 (LongMapFixedSize!6860 (_ BitVec 64)) List!29338)

(assert (=> d!713962 (= lt!893390 (apply!7006 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))) lt!893294))))

(assert (=> d!713962 (valid!2642 (v!31703 (underlying!7068 thiss!42540)))))

(assert (=> d!713962 (= (apply!7004 (v!31703 (underlying!7068 thiss!42540)) lt!893294) lt!893390)))

(declare-fun b!2487334 () Bool)

(declare-fun get!9028 (Option!5795) List!29338)

(assert (=> b!2487334 (= e!1579424 (= lt!893390 (get!9028 (getValueByKey!163 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) lt!893294))))))

(declare-fun b!2487335 () Bool)

(declare-fun dynLambda!12513 (Int (_ BitVec 64)) List!29338)

(assert (=> b!2487335 (= e!1579424 (= lt!893390 (dynLambda!12513 (defaultEntry!3804 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540))))) lt!893294)))))

(assert (=> b!2487335 ((_ is LongMap!3430) (v!31703 (underlying!7068 thiss!42540)))))

(assert (= (and d!713962 c!395318) b!2487334))

(assert (= (and d!713962 (not c!395318)) b!2487335))

(declare-fun b_lambda!76413 () Bool)

(assert (=> (not b_lambda!76413) (not b!2487335)))

(declare-fun t!211036 () Bool)

(declare-fun tb!140413 () Bool)

(assert (=> (and b!2487239 (= (defaultEntry!3804 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540))))) (defaultEntry!3804 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) t!211036) tb!140413))

(assert (=> b!2487335 t!211036))

(declare-fun result!173434 () Bool)

(declare-fun b_and!188871 () Bool)

(assert (= b_and!188867 (and (=> t!211036 result!173434) b_and!188871)))

(declare-fun m!2856121 () Bool)

(assert (=> d!713962 m!2856121))

(declare-fun m!2856123 () Bool)

(assert (=> d!713962 m!2856123))

(assert (=> d!713962 m!2856111))

(assert (=> b!2487334 m!2856007))

(declare-fun m!2856125 () Bool)

(assert (=> b!2487334 m!2856125))

(assert (=> b!2487334 m!2856125))

(declare-fun m!2856127 () Bool)

(assert (=> b!2487334 m!2856127))

(declare-fun m!2856129 () Bool)

(assert (=> b!2487335 m!2856129))

(assert (=> b!2487237 d!713962))

(declare-fun d!713964 () Bool)

(declare-fun lt!893391 () ListMap!1169)

(assert (=> d!713964 (invariantList!427 (toList!1690 lt!893391))))

(assert (=> d!713964 (= lt!893391 (extractMap!198 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540))))))))

(assert (=> d!713964 (valid!2641 thiss!42540)))

(assert (=> d!713964 (= (map!6351 thiss!42540) lt!893391)))

(declare-fun bs!468212 () Bool)

(assert (= bs!468212 d!713964))

(declare-fun m!2856131 () Bool)

(assert (=> bs!468212 m!2856131))

(assert (=> bs!468212 m!2856007))

(assert (=> bs!468212 m!2856059))

(assert (=> bs!468212 m!2855997))

(assert (=> b!2487237 d!713964))

(declare-fun d!713966 () Bool)

(assert (=> d!713966 (= (array_inv!3915 (_keys!3727 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) (bvsge (size!22870 (_keys!3727 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2487239 d!713966))

(declare-fun d!713968 () Bool)

(assert (=> d!713968 (= (array_inv!3916 (_values!3710 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) (bvsge (size!22869 (_values!3710 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2487239 d!713968))

(declare-fun bs!468213 () Bool)

(declare-fun b!2487340 () Bool)

(assert (= bs!468213 (and b!2487340 b!2487237)))

(declare-fun lambda!94742 () Int)

(assert (=> bs!468213 (= lambda!94742 lambda!94736)))

(declare-fun bs!468214 () Bool)

(assert (= bs!468214 (and b!2487340 b!2487279)))

(assert (=> bs!468214 (= lambda!94742 lambda!94739)))

(declare-fun d!713970 () Bool)

(declare-fun res!1052910 () Bool)

(declare-fun e!1579427 () Bool)

(assert (=> d!713970 (=> (not res!1052910) (not e!1579427))))

(assert (=> d!713970 (= res!1052910 (valid!2642 (v!31703 (underlying!7068 thiss!42540))))))

(assert (=> d!713970 (= (valid!2641 thiss!42540) e!1579427)))

(declare-fun res!1052911 () Bool)

(assert (=> b!2487340 (=> (not res!1052911) (not e!1579427))))

(assert (=> b!2487340 (= res!1052911 (forall!6021 (toList!1691 (map!6352 (v!31703 (underlying!7068 thiss!42540)))) lambda!94742))))

(declare-fun b!2487341 () Bool)

(declare-fun allKeysSameHashInMap!203 (ListLongMap!641 Hashable!3340) Bool)

(assert (=> b!2487341 (= e!1579427 (allKeysSameHashInMap!203 (map!6352 (v!31703 (underlying!7068 thiss!42540))) (hashF!5363 thiss!42540)))))

(assert (= (and d!713970 res!1052910) b!2487340))

(assert (= (and b!2487340 res!1052911) b!2487341))

(assert (=> d!713970 m!2856111))

(assert (=> b!2487340 m!2856007))

(declare-fun m!2856133 () Bool)

(assert (=> b!2487340 m!2856133))

(assert (=> b!2487341 m!2856007))

(assert (=> b!2487341 m!2856007))

(declare-fun m!2856135 () Bool)

(assert (=> b!2487341 m!2856135))

(assert (=> b!2487244 d!713970))

(declare-fun bs!468215 () Bool)

(declare-fun b!2487342 () Bool)

(assert (= bs!468215 (and b!2487342 b!2487237)))

(declare-fun lambda!94743 () Int)

(assert (=> bs!468215 (= lambda!94743 lambda!94736)))

(declare-fun bs!468216 () Bool)

(assert (= bs!468216 (and b!2487342 b!2487279)))

(assert (=> bs!468216 (= lambda!94743 lambda!94739)))

(declare-fun bs!468217 () Bool)

(assert (= bs!468217 (and b!2487342 b!2487340)))

(assert (=> bs!468217 (= lambda!94743 lambda!94742)))

(declare-fun d!713972 () Bool)

(declare-fun res!1052912 () Bool)

(declare-fun e!1579428 () Bool)

(assert (=> d!713972 (=> (not res!1052912) (not e!1579428))))

(assert (=> d!713972 (= res!1052912 (valid!2642 (v!31703 (underlying!7068 (_2!17189 lt!893297)))))))

(assert (=> d!713972 (= (valid!2641 (_2!17189 lt!893297)) e!1579428)))

(declare-fun res!1052913 () Bool)

(assert (=> b!2487342 (=> (not res!1052913) (not e!1579428))))

(assert (=> b!2487342 (= res!1052913 (forall!6021 (toList!1691 (map!6352 (v!31703 (underlying!7068 (_2!17189 lt!893297))))) lambda!94743))))

(declare-fun b!2487343 () Bool)

(assert (=> b!2487343 (= e!1579428 (allKeysSameHashInMap!203 (map!6352 (v!31703 (underlying!7068 (_2!17189 lt!893297)))) (hashF!5363 (_2!17189 lt!893297))))))

(assert (= (and d!713972 res!1052912) b!2487342))

(assert (= (and b!2487342 res!1052913) b!2487343))

(declare-fun m!2856137 () Bool)

(assert (=> d!713972 m!2856137))

(assert (=> b!2487342 m!2856075))

(declare-fun m!2856139 () Bool)

(assert (=> b!2487342 m!2856139))

(assert (=> b!2487343 m!2856075))

(assert (=> b!2487343 m!2856075))

(declare-fun m!2856141 () Bool)

(assert (=> b!2487343 m!2856141))

(assert (=> b!2487240 d!713972))

(declare-fun mapNonEmpty!15816 () Bool)

(declare-fun mapRes!15816 () Bool)

(declare-fun tp!796173 () Bool)

(declare-fun e!1579433 () Bool)

(assert (=> mapNonEmpty!15816 (= mapRes!15816 (and tp!796173 e!1579433))))

(declare-fun mapValue!15816 () List!29338)

(declare-fun mapRest!15816 () (Array (_ BitVec 32) List!29338))

(declare-fun mapKey!15816 () (_ BitVec 32))

(assert (=> mapNonEmpty!15816 (= mapRest!15813 (store mapRest!15816 mapKey!15816 mapValue!15816))))

(declare-fun tp_is_empty!12427 () Bool)

(declare-fun b!2487350 () Bool)

(declare-fun tp!796172 () Bool)

(assert (=> b!2487350 (= e!1579433 (and tp_is_empty!12425 tp_is_empty!12427 tp!796172))))

(declare-fun b!2487351 () Bool)

(declare-fun e!1579434 () Bool)

(declare-fun tp!796171 () Bool)

(assert (=> b!2487351 (= e!1579434 (and tp_is_empty!12425 tp_is_empty!12427 tp!796171))))

(declare-fun mapIsEmpty!15816 () Bool)

(assert (=> mapIsEmpty!15816 mapRes!15816))

(declare-fun condMapEmpty!15816 () Bool)

(declare-fun mapDefault!15816 () List!29338)

(assert (=> mapNonEmpty!15813 (= condMapEmpty!15816 (= mapRest!15813 ((as const (Array (_ BitVec 32) List!29338)) mapDefault!15816)))))

(assert (=> mapNonEmpty!15813 (= tp!796158 (and e!1579434 mapRes!15816))))

(assert (= (and mapNonEmpty!15813 condMapEmpty!15816) mapIsEmpty!15816))

(assert (= (and mapNonEmpty!15813 (not condMapEmpty!15816)) mapNonEmpty!15816))

(assert (= (and mapNonEmpty!15816 ((_ is Cons!29238) mapValue!15816)) b!2487350))

(assert (= (and mapNonEmpty!15813 ((_ is Cons!29238) mapDefault!15816)) b!2487351))

(declare-fun m!2856143 () Bool)

(assert (=> mapNonEmpty!15816 m!2856143))

(declare-fun e!1579437 () Bool)

(declare-fun tp!796176 () Bool)

(declare-fun b!2487356 () Bool)

(assert (=> b!2487356 (= e!1579437 (and tp_is_empty!12425 tp_is_empty!12427 tp!796176))))

(assert (=> mapNonEmpty!15813 (= tp!796163 e!1579437)))

(assert (= (and mapNonEmpty!15813 ((_ is Cons!29238) mapValue!15813)) b!2487356))

(declare-fun e!1579438 () Bool)

(declare-fun tp!796177 () Bool)

(declare-fun b!2487357 () Bool)

(assert (=> b!2487357 (= e!1579438 (and tp_is_empty!12425 tp_is_empty!12427 tp!796177))))

(assert (=> b!2487247 (= tp!796161 e!1579438)))

(assert (= (and b!2487247 ((_ is Cons!29238) mapDefault!15813)) b!2487357))

(declare-fun tp!796178 () Bool)

(declare-fun e!1579439 () Bool)

(declare-fun b!2487358 () Bool)

(assert (=> b!2487358 (= e!1579439 (and tp_is_empty!12425 tp_is_empty!12427 tp!796178))))

(assert (=> b!2487239 (= tp!796160 e!1579439)))

(assert (= (and b!2487239 ((_ is Cons!29238) (zeroValue!3688 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540))))))) b!2487358))

(declare-fun b!2487359 () Bool)

(declare-fun tp!796179 () Bool)

(declare-fun e!1579440 () Bool)

(assert (=> b!2487359 (= e!1579440 (and tp_is_empty!12425 tp_is_empty!12427 tp!796179))))

(assert (=> b!2487239 (= tp!796162 e!1579440)))

(assert (= (and b!2487239 ((_ is Cons!29238) (minValue!3688 (v!31702 (underlying!7067 (v!31703 (underlying!7068 thiss!42540))))))) b!2487359))

(declare-fun b_lambda!76415 () Bool)

(assert (= b_lambda!76413 (or (and b!2487239 b_free!72577) b_lambda!76415)))

(declare-fun b_lambda!76417 () Bool)

(assert (= b_lambda!76411 (or b!2487237 b_lambda!76417)))

(declare-fun bs!468218 () Bool)

(declare-fun d!713974 () Bool)

(assert (= bs!468218 (and d!713974 b!2487237)))

(assert (=> bs!468218 (= (dynLambda!12512 lambda!94736 (tuple2!29297 lt!893294 lt!893296)) (noDuplicateKeys!126 (_2!17190 (tuple2!29297 lt!893294 lt!893296))))))

(declare-fun m!2856145 () Bool)

(assert (=> bs!468218 m!2856145))

(assert (=> d!713950 d!713974))

(check-sat (not bm!152555) (not b_lambda!76417) (not d!713962) (not b_next!73281) (not b!2487320) (not b!2487329) (not mapNonEmpty!15816) (not d!713948) (not d!713954) (not b!2487341) (not b!2487319) (not b_next!73283) tp_is_empty!12427 (not b!2487274) (not d!713960) (not bm!152565) (not b!2487322) (not b_lambda!76415) (not bm!152557) (not tb!140413) (not bm!152558) (not b!2487272) (not d!713946) (not d!713970) (not b!2487340) b_and!188871 (not bm!152554) tp_is_empty!12425 (not bm!152564) (not b!2487292) (not b!2487328) (not d!713964) (not b!2487343) (not b!2487350) (not b!2487280) (not b!2487316) (not d!713956) (not b!2487342) (not bm!152559) (not d!713944) (not b!2487359) (not bm!152556) (not b!2487318) (not b!2487357) (not d!713950) (not b!2487334) (not bs!468218) (not b!2487279) (not b!2487351) (not b!2487356) (not b!2487358) (not d!713952) (not b!2487296) (not b!2487277) b_and!188869 (not d!713972))
(check-sat b_and!188869 b_and!188871 (not b_next!73281) (not b_next!73283))

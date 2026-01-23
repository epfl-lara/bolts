; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416506 () Bool)

(assert start!416506)

(declare-fun b!4325162 () Bool)

(declare-fun b_free!129043 () Bool)

(declare-fun b_next!129747 () Bool)

(assert (=> b!4325162 (= b_free!129043 (not b_next!129747))))

(declare-fun tp!1327450 () Bool)

(declare-fun b_and!340623 () Bool)

(assert (=> b!4325162 (= tp!1327450 b_and!340623)))

(declare-fun b!4325158 () Bool)

(declare-fun b_free!129045 () Bool)

(declare-fun b_next!129749 () Bool)

(assert (=> b!4325158 (= b_free!129045 (not b_next!129749))))

(declare-fun tp!1327455 () Bool)

(declare-fun b_and!340625 () Bool)

(assert (=> b!4325158 (= tp!1327455 b_and!340625)))

(declare-fun b!4325153 () Bool)

(declare-fun e!2691101 () Bool)

(declare-fun e!2691094 () Bool)

(assert (=> b!4325153 (= e!2691101 e!2691094)))

(declare-fun b!4325154 () Bool)

(declare-fun e!2691100 () Bool)

(assert (=> b!4325154 (= e!2691100 e!2691101)))

(declare-fun b!4325155 () Bool)

(declare-fun e!2691095 () Bool)

(declare-fun e!2691091 () Bool)

(assert (=> b!4325155 (= e!2691095 e!2691091)))

(declare-fun res!1772522 () Bool)

(assert (=> b!4325155 (=> (not res!1772522) (not e!2691091))))

(declare-datatypes ((V!9876 0))(
  ( (V!9877 (val!15997 Int)) )
))
(declare-datatypes ((K!9674 0))(
  ( (K!9675 (val!15998 Int)) )
))
(declare-datatypes ((tuple2!47304 0))(
  ( (tuple2!47305 (_1!26940 K!9674) (_2!26940 V!9876)) )
))
(declare-datatypes ((List!48542 0))(
  ( (Nil!48418) (Cons!48418 (h!53885 tuple2!47304) (t!355442 List!48542)) )
))
(declare-datatypes ((array!17318 0))(
  ( (array!17319 (arr!7727 (Array (_ BitVec 32) (_ BitVec 64))) (size!35766 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4687 0))(
  ( (HashableExt!4686 (__x!30338 Int)) )
))
(declare-datatypes ((array!17320 0))(
  ( (array!17321 (arr!7728 (Array (_ BitVec 32) List!48542)) (size!35767 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9542 0))(
  ( (LongMapFixedSize!9543 (defaultEntry!5176 Int) (mask!13419 (_ BitVec 32)) (extraKeys!5036 (_ BitVec 32)) (zeroValue!5048 List!48542) (minValue!5048 List!48542) (_size!9587 (_ BitVec 32)) (_keys!5097 array!17318) (_values!5072 array!17320) (_vacant!4834 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18893 0))(
  ( (Cell!18894 (v!42855 LongMapFixedSize!9542)) )
))
(declare-datatypes ((MutLongMap!4771 0))(
  ( (LongMap!4771 (underlying!9771 Cell!18893)) (MutLongMapExt!4770 (__x!30339 Int)) )
))
(declare-datatypes ((Cell!18895 0))(
  ( (Cell!18896 (v!42856 MutLongMap!4771)) )
))
(declare-datatypes ((MutableMap!4677 0))(
  ( (MutableMapExt!4676 (__x!30340 Int)) (HashMap!4677 (underlying!9772 Cell!18895) (hashF!6987 Hashable!4687) (_size!9588 (_ BitVec 32)) (defaultValue!4848 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4677)

(declare-fun key!2048 () K!9674)

(declare-fun contains!10492 (MutableMap!4677 K!9674) Bool)

(assert (=> b!4325155 (= res!1772522 (not (contains!10492 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47306 0))(
  ( (tuple2!47307 (_1!26941 (_ BitVec 64)) (_2!26941 List!48542)) )
))
(declare-datatypes ((List!48543 0))(
  ( (Nil!48419) (Cons!48419 (h!53886 tuple2!47306) (t!355443 List!48543)) )
))
(declare-datatypes ((ListLongMap!1205 0))(
  ( (ListLongMap!1206 (toList!2588 List!48543)) )
))
(declare-fun lt!1542444 () ListLongMap!1205)

(declare-fun map!10454 (MutLongMap!4771) ListLongMap!1205)

(assert (=> b!4325155 (= lt!1542444 (map!10454 (v!42856 (underlying!9772 thiss!42308))))))

(declare-datatypes ((ListMap!1865 0))(
  ( (ListMap!1866 (toList!2589 List!48542)) )
))
(declare-fun lt!1542434 () ListMap!1865)

(declare-fun map!10455 (MutableMap!4677) ListMap!1865)

(assert (=> b!4325155 (= lt!1542434 (map!10455 thiss!42308))))

(declare-fun mapNonEmpty!21264 () Bool)

(declare-fun mapRes!21264 () Bool)

(declare-fun tp!1327454 () Bool)

(declare-fun tp!1327456 () Bool)

(assert (=> mapNonEmpty!21264 (= mapRes!21264 (and tp!1327454 tp!1327456))))

(declare-fun mapValue!21264 () List!48542)

(declare-fun mapKey!21264 () (_ BitVec 32))

(declare-fun mapRest!21264 () (Array (_ BitVec 32) List!48542))

(assert (=> mapNonEmpty!21264 (= (arr!7728 (_values!5072 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) (store mapRest!21264 mapKey!21264 mapValue!21264))))

(declare-fun b!4325156 () Bool)

(declare-datatypes ((Unit!67963 0))(
  ( (Unit!67964) )
))
(declare-fun e!2691098 () Unit!67963)

(declare-fun lt!1542438 () Unit!67963)

(assert (=> b!4325156 (= e!2691098 lt!1542438)))

(declare-fun lt!1542437 () List!48542)

(declare-fun lt!1542435 () (_ BitVec 64))

(declare-fun lt!1542439 () Unit!67963)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!245 (List!48543 (_ BitVec 64) List!48542 Hashable!4687) Unit!67963)

(assert (=> b!4325156 (= lt!1542439 (lemmaInLongMapAllKeySameHashThenForTuple!245 (toList!2588 lt!1542444) lt!1542435 lt!1542437 (hashF!6987 thiss!42308)))))

(declare-fun allKeysSameHash!260 (List!48542 (_ BitVec 64) Hashable!4687) Bool)

(assert (=> b!4325156 (allKeysSameHash!260 lt!1542437 lt!1542435 (hashF!6987 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!236 (List!48542 K!9674 (_ BitVec 64) Hashable!4687) Unit!67963)

(assert (=> b!4325156 (= lt!1542438 (lemmaRemovePairForKeyPreservesHash!236 lt!1542437 key!2048 lt!1542435 (hashF!6987 thiss!42308)))))

(declare-fun removePairForKey!283 (List!48542 K!9674) List!48542)

(assert (=> b!4325156 (allKeysSameHash!260 (removePairForKey!283 lt!1542437 key!2048) lt!1542435 (hashF!6987 thiss!42308))))

(declare-fun b!4325157 () Bool)

(declare-fun e!2691099 () Bool)

(declare-fun tp!1327451 () Bool)

(assert (=> b!4325157 (= e!2691099 (and tp!1327451 mapRes!21264))))

(declare-fun condMapEmpty!21264 () Bool)

(declare-fun mapDefault!21264 () List!48542)

(assert (=> b!4325157 (= condMapEmpty!21264 (= (arr!7728 (_values!5072 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48542)) mapDefault!21264)))))

(declare-fun e!2691090 () Bool)

(declare-fun e!2691089 () Bool)

(assert (=> b!4325158 (= e!2691090 (and e!2691089 tp!1327455))))

(declare-fun b!4325159 () Bool)

(declare-fun e!2691092 () Bool)

(declare-fun lt!1542446 () ListLongMap!1205)

(declare-fun allKeysSameHashInMap!402 (ListLongMap!1205 Hashable!4687) Bool)

(assert (=> b!4325159 (= e!2691092 (allKeysSameHashInMap!402 lt!1542446 (hashF!6987 thiss!42308)))))

(declare-fun b!4325160 () Bool)

(declare-fun e!2691097 () List!48542)

(assert (=> b!4325160 (= e!2691097 Nil!48418)))

(declare-fun b!4325161 () Bool)

(declare-fun res!1772518 () Bool)

(assert (=> b!4325161 (=> (not res!1772518) (not e!2691095))))

(declare-fun valid!3786 (MutableMap!4677) Bool)

(assert (=> b!4325161 (= res!1772518 (valid!3786 thiss!42308))))

(declare-fun tp!1327453 () Bool)

(declare-fun tp!1327452 () Bool)

(declare-fun array_inv!5567 (array!17318) Bool)

(declare-fun array_inv!5568 (array!17320) Bool)

(assert (=> b!4325162 (= e!2691094 (and tp!1327450 tp!1327453 tp!1327452 (array_inv!5567 (_keys!5097 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) (array_inv!5568 (_values!5072 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) e!2691099))))

(declare-fun b!4325163 () Bool)

(declare-fun e!2691093 () Bool)

(assert (=> b!4325163 (= e!2691091 e!2691093)))

(declare-fun res!1772521 () Bool)

(assert (=> b!4325163 (=> (not res!1772521) (not e!2691093))))

(declare-datatypes ((tuple2!47308 0))(
  ( (tuple2!47309 (_1!26942 Bool) (_2!26942 MutLongMap!4771)) )
))
(declare-fun lt!1542432 () tuple2!47308)

(assert (=> b!4325163 (= res!1772521 (_1!26942 lt!1542432))))

(declare-fun lt!1542448 () List!48542)

(declare-fun update!550 (MutLongMap!4771 (_ BitVec 64) List!48542) tuple2!47308)

(assert (=> b!4325163 (= lt!1542432 (update!550 (v!42856 (underlying!9772 thiss!42308)) lt!1542435 lt!1542448))))

(declare-fun lt!1542449 () tuple2!47304)

(assert (=> b!4325163 (= lt!1542448 (Cons!48418 lt!1542449 lt!1542437))))

(declare-fun v!9179 () V!9876)

(assert (=> b!4325163 (= lt!1542449 (tuple2!47305 key!2048 v!9179))))

(assert (=> b!4325163 (= lt!1542437 e!2691097)))

(declare-fun c!735834 () Bool)

(declare-fun contains!10493 (MutLongMap!4771 (_ BitVec 64)) Bool)

(assert (=> b!4325163 (= c!735834 (contains!10493 (v!42856 (underlying!9772 thiss!42308)) lt!1542435))))

(declare-fun hash!1226 (Hashable!4687 K!9674) (_ BitVec 64))

(assert (=> b!4325163 (= lt!1542435 (hash!1226 (hashF!6987 thiss!42308) key!2048))))

(declare-fun b!4325164 () Bool)

(declare-fun Unit!67965 () Unit!67963)

(assert (=> b!4325164 (= e!2691098 Unit!67965)))

(declare-fun res!1772519 () Bool)

(assert (=> start!416506 (=> (not res!1772519) (not e!2691095))))

(get-info :version)

(assert (=> start!416506 (= res!1772519 ((_ is HashMap!4677) thiss!42308))))

(assert (=> start!416506 e!2691095))

(assert (=> start!416506 e!2691090))

(declare-fun tp_is_empty!24181 () Bool)

(assert (=> start!416506 tp_is_empty!24181))

(declare-fun tp_is_empty!24183 () Bool)

(assert (=> start!416506 tp_is_empty!24183))

(declare-fun b!4325165 () Bool)

(declare-fun lt!1542431 () MutLongMap!4771)

(assert (=> b!4325165 (= e!2691089 (and e!2691100 ((_ is LongMap!4771) lt!1542431)))))

(assert (=> b!4325165 (= lt!1542431 (v!42856 (underlying!9772 thiss!42308)))))

(declare-fun mapIsEmpty!21264 () Bool)

(assert (=> mapIsEmpty!21264 mapRes!21264))

(declare-fun b!4325166 () Bool)

(declare-fun lt!1542430 () Bool)

(assert (=> b!4325166 (= e!2691093 (not lt!1542430))))

(declare-fun lt!1542436 () Bool)

(assert (=> b!4325166 (= lt!1542436 lt!1542430)))

(declare-fun lt!1542433 () ListMap!1865)

(declare-fun contains!10494 (ListMap!1865 K!9674) Bool)

(assert (=> b!4325166 (= lt!1542430 (contains!10494 lt!1542433 key!2048))))

(declare-fun lt!1542440 () ListMap!1865)

(assert (=> b!4325166 (= lt!1542436 (contains!10494 lt!1542440 key!2048))))

(declare-fun lt!1542441 () Unit!67963)

(declare-fun lemmaEquivalentThenSameContains!67 (ListMap!1865 ListMap!1865 K!9674) Unit!67963)

(assert (=> b!4325166 (= lt!1542441 (lemmaEquivalentThenSameContains!67 lt!1542440 lt!1542433 key!2048))))

(declare-fun eq!162 (ListMap!1865 ListMap!1865) Bool)

(assert (=> b!4325166 (eq!162 lt!1542440 lt!1542433)))

(declare-fun +!356 (ListMap!1865 tuple2!47304) ListMap!1865)

(assert (=> b!4325166 (= lt!1542433 (+!356 lt!1542434 lt!1542449))))

(assert (=> b!4325166 (= lt!1542440 (map!10455 (HashMap!4677 (Cell!18896 (_2!26942 lt!1542432)) (hashF!6987 thiss!42308) (_size!9588 thiss!42308) (defaultValue!4848 thiss!42308))))))

(assert (=> b!4325166 e!2691092))

(declare-fun res!1772523 () Bool)

(assert (=> b!4325166 (=> (not res!1772523) (not e!2691092))))

(declare-fun lambda!134257 () Int)

(declare-fun forall!8835 (List!48543 Int) Bool)

(assert (=> b!4325166 (= res!1772523 (forall!8835 (toList!2588 lt!1542446) lambda!134257))))

(assert (=> b!4325166 (= lt!1542446 (map!10454 (_2!26942 lt!1542432)))))

(declare-fun lt!1542442 () ListLongMap!1205)

(declare-fun extractMap!382 (List!48543) ListMap!1865)

(assert (=> b!4325166 (eq!162 (extractMap!382 (toList!2588 lt!1542442)) (+!356 (extractMap!382 (toList!2588 lt!1542444)) lt!1542449))))

(declare-fun lt!1542443 () Unit!67963)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!67 (ListLongMap!1205 (_ BitVec 64) List!48542 K!9674 V!9876 Hashable!4687) Unit!67963)

(assert (=> b!4325166 (= lt!1542443 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!67 lt!1542444 lt!1542435 lt!1542448 key!2048 v!9179 (hashF!6987 thiss!42308)))))

(declare-fun e!2691096 () Bool)

(assert (=> b!4325166 e!2691096))

(declare-fun res!1772520 () Bool)

(assert (=> b!4325166 (=> (not res!1772520) (not e!2691096))))

(assert (=> b!4325166 (= res!1772520 (forall!8835 (toList!2588 lt!1542442) lambda!134257))))

(declare-fun +!357 (ListLongMap!1205 tuple2!47306) ListLongMap!1205)

(assert (=> b!4325166 (= lt!1542442 (+!357 lt!1542444 (tuple2!47307 lt!1542435 lt!1542448)))))

(declare-fun lt!1542445 () Unit!67963)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!195 (ListLongMap!1205 (_ BitVec 64) List!48542 Hashable!4687) Unit!67963)

(assert (=> b!4325166 (= lt!1542445 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!195 lt!1542444 lt!1542435 lt!1542448 (hashF!6987 thiss!42308)))))

(declare-fun lt!1542447 () Unit!67963)

(assert (=> b!4325166 (= lt!1542447 e!2691098)))

(declare-fun c!735835 () Bool)

(declare-fun isEmpty!28139 (List!48542) Bool)

(assert (=> b!4325166 (= c!735835 (not (isEmpty!28139 lt!1542437)))))

(declare-fun b!4325167 () Bool)

(assert (=> b!4325167 (= e!2691096 (allKeysSameHashInMap!402 lt!1542442 (hashF!6987 thiss!42308)))))

(declare-fun b!4325168 () Bool)

(declare-fun apply!11168 (MutLongMap!4771 (_ BitVec 64)) List!48542)

(assert (=> b!4325168 (= e!2691097 (apply!11168 (v!42856 (underlying!9772 thiss!42308)) lt!1542435))))

(assert (= (and start!416506 res!1772519) b!4325161))

(assert (= (and b!4325161 res!1772518) b!4325155))

(assert (= (and b!4325155 res!1772522) b!4325163))

(assert (= (and b!4325163 c!735834) b!4325168))

(assert (= (and b!4325163 (not c!735834)) b!4325160))

(assert (= (and b!4325163 res!1772521) b!4325166))

(assert (= (and b!4325166 c!735835) b!4325156))

(assert (= (and b!4325166 (not c!735835)) b!4325164))

(assert (= (and b!4325166 res!1772520) b!4325167))

(assert (= (and b!4325166 res!1772523) b!4325159))

(assert (= (and b!4325157 condMapEmpty!21264) mapIsEmpty!21264))

(assert (= (and b!4325157 (not condMapEmpty!21264)) mapNonEmpty!21264))

(assert (= b!4325162 b!4325157))

(assert (= b!4325153 b!4325162))

(assert (= b!4325154 b!4325153))

(assert (= (and b!4325165 ((_ is LongMap!4771) (v!42856 (underlying!9772 thiss!42308)))) b!4325154))

(assert (= b!4325158 b!4325165))

(assert (= (and start!416506 ((_ is HashMap!4677) thiss!42308)) b!4325158))

(declare-fun m!4919975 () Bool)

(assert (=> b!4325163 m!4919975))

(declare-fun m!4919977 () Bool)

(assert (=> b!4325163 m!4919977))

(declare-fun m!4919979 () Bool)

(assert (=> b!4325163 m!4919979))

(declare-fun m!4919981 () Bool)

(assert (=> b!4325161 m!4919981))

(declare-fun m!4919983 () Bool)

(assert (=> b!4325162 m!4919983))

(declare-fun m!4919985 () Bool)

(assert (=> b!4325162 m!4919985))

(declare-fun m!4919987 () Bool)

(assert (=> b!4325156 m!4919987))

(declare-fun m!4919989 () Bool)

(assert (=> b!4325156 m!4919989))

(declare-fun m!4919991 () Bool)

(assert (=> b!4325156 m!4919991))

(assert (=> b!4325156 m!4919987))

(declare-fun m!4919993 () Bool)

(assert (=> b!4325156 m!4919993))

(declare-fun m!4919995 () Bool)

(assert (=> b!4325156 m!4919995))

(declare-fun m!4919997 () Bool)

(assert (=> b!4325168 m!4919997))

(declare-fun m!4919999 () Bool)

(assert (=> mapNonEmpty!21264 m!4919999))

(declare-fun m!4920001 () Bool)

(assert (=> b!4325159 m!4920001))

(declare-fun m!4920003 () Bool)

(assert (=> b!4325155 m!4920003))

(declare-fun m!4920005 () Bool)

(assert (=> b!4325155 m!4920005))

(declare-fun m!4920007 () Bool)

(assert (=> b!4325155 m!4920007))

(declare-fun m!4920009 () Bool)

(assert (=> b!4325167 m!4920009))

(declare-fun m!4920011 () Bool)

(assert (=> b!4325166 m!4920011))

(declare-fun m!4920013 () Bool)

(assert (=> b!4325166 m!4920013))

(declare-fun m!4920015 () Bool)

(assert (=> b!4325166 m!4920015))

(declare-fun m!4920017 () Bool)

(assert (=> b!4325166 m!4920017))

(declare-fun m!4920019 () Bool)

(assert (=> b!4325166 m!4920019))

(declare-fun m!4920021 () Bool)

(assert (=> b!4325166 m!4920021))

(declare-fun m!4920023 () Bool)

(assert (=> b!4325166 m!4920023))

(declare-fun m!4920025 () Bool)

(assert (=> b!4325166 m!4920025))

(declare-fun m!4920027 () Bool)

(assert (=> b!4325166 m!4920027))

(assert (=> b!4325166 m!4920015))

(declare-fun m!4920029 () Bool)

(assert (=> b!4325166 m!4920029))

(declare-fun m!4920031 () Bool)

(assert (=> b!4325166 m!4920031))

(declare-fun m!4920033 () Bool)

(assert (=> b!4325166 m!4920033))

(declare-fun m!4920035 () Bool)

(assert (=> b!4325166 m!4920035))

(declare-fun m!4920037 () Bool)

(assert (=> b!4325166 m!4920037))

(declare-fun m!4920039 () Bool)

(assert (=> b!4325166 m!4920039))

(declare-fun m!4920041 () Bool)

(assert (=> b!4325166 m!4920041))

(assert (=> b!4325166 m!4920021))

(assert (=> b!4325166 m!4920029))

(declare-fun m!4920043 () Bool)

(assert (=> b!4325166 m!4920043))

(check-sat (not b!4325166) (not b!4325167) (not b!4325168) (not b_next!129747) (not b_next!129749) (not b!4325161) (not b!4325163) (not b!4325156) (not b!4325159) tp_is_empty!24181 b_and!340625 (not b!4325157) tp_is_empty!24183 b_and!340623 (not mapNonEmpty!21264) (not b!4325155) (not b!4325162))
(check-sat b_and!340623 b_and!340625 (not b_next!129749) (not b_next!129747))
(get-model)

(declare-fun bs!607314 () Bool)

(declare-fun b!4325200 () Bool)

(assert (= bs!607314 (and b!4325200 b!4325166)))

(declare-fun lambda!134260 () Int)

(assert (=> bs!607314 (= lambda!134260 lambda!134257)))

(declare-fun bm!300109 () Bool)

(declare-fun call!300115 () ListLongMap!1205)

(assert (=> bm!300109 (= call!300115 (map!10454 (v!42856 (underlying!9772 thiss!42308))))))

(declare-fun c!735845 () Bool)

(declare-fun call!300119 () (_ BitVec 64))

(declare-fun bm!300110 () Bool)

(declare-fun call!300114 () List!48542)

(declare-fun lt!1542503 () ListLongMap!1205)

(declare-fun apply!11169 (ListLongMap!1205 (_ BitVec 64)) List!48542)

(assert (=> bm!300110 (= call!300114 (apply!11169 (ite c!735845 lt!1542503 call!300115) call!300119))))

(declare-fun b!4325191 () Bool)

(declare-fun e!2691122 () Unit!67963)

(declare-fun Unit!67966 () Unit!67963)

(assert (=> b!4325191 (= e!2691122 Unit!67966)))

(declare-fun bm!300111 () Bool)

(declare-fun call!300116 () Bool)

(declare-datatypes ((Option!10321 0))(
  ( (None!10320) (Some!10320 (v!42861 tuple2!47304)) )
))
(declare-fun call!300118 () Option!10321)

(declare-fun isDefined!7619 (Option!10321) Bool)

(assert (=> bm!300111 (= call!300116 (isDefined!7619 call!300118))))

(declare-fun b!4325192 () Bool)

(declare-fun e!2691119 () Bool)

(assert (=> b!4325192 (= e!2691119 call!300116)))

(declare-fun b!4325193 () Bool)

(declare-fun e!2691120 () Unit!67963)

(declare-fun lt!1542501 () Unit!67963)

(assert (=> b!4325193 (= e!2691120 lt!1542501)))

(assert (=> b!4325193 (= lt!1542503 call!300115)))

(declare-fun lemmaInGenericMapThenInLongMap!169 (ListLongMap!1205 K!9674 Hashable!4687) Unit!67963)

(assert (=> b!4325193 (= lt!1542501 (lemmaInGenericMapThenInLongMap!169 lt!1542503 key!2048 (hashF!6987 thiss!42308)))))

(declare-fun res!1772530 () Bool)

(declare-fun call!300117 () Bool)

(assert (=> b!4325193 (= res!1772530 call!300117)))

(assert (=> b!4325193 (=> (not res!1772530) (not e!2691119))))

(assert (=> b!4325193 e!2691119))

(declare-fun bm!300112 () Bool)

(declare-fun contains!10495 (ListLongMap!1205 (_ BitVec 64)) Bool)

(assert (=> bm!300112 (= call!300117 (contains!10495 (ite c!735845 lt!1542503 call!300115) call!300119))))

(declare-fun b!4325194 () Bool)

(assert (=> b!4325194 false))

(declare-fun lt!1542496 () Unit!67963)

(declare-fun lt!1542493 () Unit!67963)

(assert (=> b!4325194 (= lt!1542496 lt!1542493)))

(declare-fun lt!1542504 () List!48543)

(declare-fun lt!1542508 () (_ BitVec 64))

(declare-fun lt!1542505 () List!48542)

(declare-fun contains!10496 (List!48543 tuple2!47306) Bool)

(assert (=> b!4325194 (contains!10496 lt!1542504 (tuple2!47307 lt!1542508 lt!1542505))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!181 (List!48543 (_ BitVec 64) List!48542) Unit!67963)

(assert (=> b!4325194 (= lt!1542493 (lemmaGetValueByKeyImpliesContainsTuple!181 lt!1542504 lt!1542508 lt!1542505))))

(assert (=> b!4325194 (= lt!1542505 (apply!11168 (v!42856 (underlying!9772 thiss!42308)) lt!1542508))))

(assert (=> b!4325194 (= lt!1542504 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308)))))))

(declare-fun lt!1542491 () Unit!67963)

(declare-fun lt!1542498 () Unit!67963)

(assert (=> b!4325194 (= lt!1542491 lt!1542498)))

(declare-fun lt!1542494 () List!48543)

(declare-datatypes ((Option!10322 0))(
  ( (None!10321) (Some!10321 (v!42862 List!48542)) )
))
(declare-fun isDefined!7620 (Option!10322) Bool)

(declare-fun getValueByKey!311 (List!48543 (_ BitVec 64)) Option!10322)

(assert (=> b!4325194 (isDefined!7620 (getValueByKey!311 lt!1542494 lt!1542508))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!227 (List!48543 (_ BitVec 64)) Unit!67963)

(assert (=> b!4325194 (= lt!1542498 (lemmaContainsKeyImpliesGetValueByKeyDefined!227 lt!1542494 lt!1542508))))

(assert (=> b!4325194 (= lt!1542494 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308)))))))

(declare-fun lt!1542502 () Unit!67963)

(declare-fun lt!1542507 () Unit!67963)

(assert (=> b!4325194 (= lt!1542502 lt!1542507)))

(declare-fun lt!1542490 () List!48543)

(declare-fun containsKey!418 (List!48543 (_ BitVec 64)) Bool)

(assert (=> b!4325194 (containsKey!418 lt!1542490 lt!1542508)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!170 (List!48543 (_ BitVec 64)) Unit!67963)

(assert (=> b!4325194 (= lt!1542507 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!170 lt!1542490 lt!1542508))))

(assert (=> b!4325194 (= lt!1542490 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308)))))))

(declare-fun e!2691121 () Unit!67963)

(declare-fun Unit!67967 () Unit!67963)

(assert (=> b!4325194 (= e!2691121 Unit!67967)))

(declare-fun b!4325195 () Bool)

(declare-fun e!2691123 () Unit!67963)

(declare-fun Unit!67968 () Unit!67963)

(assert (=> b!4325195 (= e!2691123 Unit!67968)))

(declare-fun b!4325196 () Bool)

(assert (=> b!4325196 (= e!2691120 e!2691122)))

(declare-fun res!1772531 () Bool)

(assert (=> b!4325196 (= res!1772531 call!300117)))

(declare-fun e!2691117 () Bool)

(assert (=> b!4325196 (=> (not res!1772531) (not e!2691117))))

(declare-fun c!735846 () Bool)

(assert (=> b!4325196 (= c!735846 e!2691117)))

(declare-fun b!4325197 () Bool)

(declare-fun e!2691118 () Bool)

(declare-fun getPair!169 (List!48542 K!9674) Option!10321)

(assert (=> b!4325197 (= e!2691118 (isDefined!7619 (getPair!169 (apply!11168 (v!42856 (underlying!9772 thiss!42308)) lt!1542508) key!2048)))))

(declare-fun bm!300113 () Bool)

(assert (=> bm!300113 (= call!300118 (getPair!169 call!300114 key!2048))))

(declare-fun b!4325198 () Bool)

(declare-fun Unit!67969 () Unit!67963)

(assert (=> b!4325198 (= e!2691121 Unit!67969)))

(declare-fun b!4325199 () Bool)

(assert (=> b!4325199 false))

(declare-fun lt!1542509 () Unit!67963)

(declare-fun lt!1542497 () Unit!67963)

(assert (=> b!4325199 (= lt!1542509 lt!1542497)))

(declare-fun lt!1542495 () ListLongMap!1205)

(assert (=> b!4325199 (contains!10494 (extractMap!382 (toList!2588 lt!1542495)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!169 (ListLongMap!1205 K!9674 Hashable!4687) Unit!67963)

(assert (=> b!4325199 (= lt!1542497 (lemmaInLongMapThenInGenericMap!169 lt!1542495 key!2048 (hashF!6987 thiss!42308)))))

(assert (=> b!4325199 (= lt!1542495 call!300115)))

(declare-fun Unit!67970 () Unit!67963)

(assert (=> b!4325199 (= e!2691122 Unit!67970)))

(declare-fun d!1271740 () Bool)

(declare-fun lt!1542506 () Bool)

(assert (=> d!1271740 (= lt!1542506 (contains!10494 (map!10455 thiss!42308) key!2048))))

(assert (=> d!1271740 (= lt!1542506 e!2691118)))

(declare-fun res!1772532 () Bool)

(assert (=> d!1271740 (=> (not res!1772532) (not e!2691118))))

(assert (=> d!1271740 (= res!1772532 (contains!10493 (v!42856 (underlying!9772 thiss!42308)) lt!1542508))))

(declare-fun lt!1542492 () Unit!67963)

(assert (=> d!1271740 (= lt!1542492 e!2691120)))

(assert (=> d!1271740 (= c!735845 (contains!10494 (extractMap!382 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308))))) key!2048))))

(declare-fun lt!1542500 () Unit!67963)

(assert (=> d!1271740 (= lt!1542500 e!2691123)))

(declare-fun c!735844 () Bool)

(assert (=> d!1271740 (= c!735844 (contains!10493 (v!42856 (underlying!9772 thiss!42308)) lt!1542508))))

(assert (=> d!1271740 (= lt!1542508 (hash!1226 (hashF!6987 thiss!42308) key!2048))))

(assert (=> d!1271740 (valid!3786 thiss!42308)))

(assert (=> d!1271740 (= (contains!10492 thiss!42308 key!2048) lt!1542506)))

(declare-fun forallContained!1543 (List!48543 Int tuple2!47306) Unit!67963)

(assert (=> b!4325200 (= e!2691123 (forallContained!1543 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308)))) lambda!134260 (tuple2!47307 lt!1542508 (apply!11168 (v!42856 (underlying!9772 thiss!42308)) lt!1542508))))))

(declare-fun c!735847 () Bool)

(assert (=> b!4325200 (= c!735847 (not (contains!10496 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308)))) (tuple2!47307 lt!1542508 (apply!11168 (v!42856 (underlying!9772 thiss!42308)) lt!1542508)))))))

(declare-fun lt!1542499 () Unit!67963)

(assert (=> b!4325200 (= lt!1542499 e!2691121)))

(declare-fun bm!300114 () Bool)

(assert (=> bm!300114 (= call!300119 (hash!1226 (hashF!6987 thiss!42308) key!2048))))

(declare-fun b!4325201 () Bool)

(assert (=> b!4325201 (= e!2691117 call!300116)))

(assert (= (and d!1271740 c!735844) b!4325200))

(assert (= (and d!1271740 (not c!735844)) b!4325195))

(assert (= (and b!4325200 c!735847) b!4325194))

(assert (= (and b!4325200 (not c!735847)) b!4325198))

(assert (= (and d!1271740 c!735845) b!4325193))

(assert (= (and d!1271740 (not c!735845)) b!4325196))

(assert (= (and b!4325193 res!1772530) b!4325192))

(assert (= (and b!4325196 res!1772531) b!4325201))

(assert (= (and b!4325196 c!735846) b!4325199))

(assert (= (and b!4325196 (not c!735846)) b!4325191))

(assert (= (or b!4325193 b!4325196 b!4325201 b!4325199) bm!300109))

(assert (= (or b!4325193 b!4325192 b!4325196 b!4325201) bm!300114))

(assert (= (or b!4325193 b!4325196) bm!300112))

(assert (= (or b!4325192 b!4325201) bm!300110))

(assert (= (or b!4325192 b!4325201) bm!300113))

(assert (= (or b!4325192 b!4325201) bm!300111))

(assert (= (and d!1271740 res!1772532) b!4325197))

(declare-fun m!4920045 () Bool)

(assert (=> bm!300113 m!4920045))

(declare-fun m!4920047 () Bool)

(assert (=> b!4325193 m!4920047))

(assert (=> bm!300109 m!4920005))

(assert (=> d!1271740 m!4920007))

(declare-fun m!4920049 () Bool)

(assert (=> d!1271740 m!4920049))

(assert (=> d!1271740 m!4919981))

(assert (=> d!1271740 m!4920007))

(declare-fun m!4920051 () Bool)

(assert (=> d!1271740 m!4920051))

(declare-fun m!4920053 () Bool)

(assert (=> d!1271740 m!4920053))

(assert (=> d!1271740 m!4920005))

(declare-fun m!4920055 () Bool)

(assert (=> d!1271740 m!4920055))

(assert (=> d!1271740 m!4919979))

(assert (=> d!1271740 m!4920051))

(declare-fun m!4920057 () Bool)

(assert (=> bm!300112 m!4920057))

(declare-fun m!4920059 () Bool)

(assert (=> b!4325199 m!4920059))

(assert (=> b!4325199 m!4920059))

(declare-fun m!4920061 () Bool)

(assert (=> b!4325199 m!4920061))

(declare-fun m!4920063 () Bool)

(assert (=> b!4325199 m!4920063))

(declare-fun m!4920065 () Bool)

(assert (=> b!4325197 m!4920065))

(assert (=> b!4325197 m!4920065))

(declare-fun m!4920067 () Bool)

(assert (=> b!4325197 m!4920067))

(assert (=> b!4325197 m!4920067))

(declare-fun m!4920069 () Bool)

(assert (=> b!4325197 m!4920069))

(assert (=> bm!300114 m!4919979))

(declare-fun m!4920071 () Bool)

(assert (=> b!4325194 m!4920071))

(declare-fun m!4920073 () Bool)

(assert (=> b!4325194 m!4920073))

(declare-fun m!4920075 () Bool)

(assert (=> b!4325194 m!4920075))

(assert (=> b!4325194 m!4920005))

(assert (=> b!4325194 m!4920065))

(declare-fun m!4920077 () Bool)

(assert (=> b!4325194 m!4920077))

(assert (=> b!4325194 m!4920071))

(declare-fun m!4920079 () Bool)

(assert (=> b!4325194 m!4920079))

(declare-fun m!4920081 () Bool)

(assert (=> b!4325194 m!4920081))

(declare-fun m!4920083 () Bool)

(assert (=> b!4325194 m!4920083))

(declare-fun m!4920085 () Bool)

(assert (=> bm!300110 m!4920085))

(assert (=> b!4325200 m!4920005))

(assert (=> b!4325200 m!4920065))

(declare-fun m!4920087 () Bool)

(assert (=> b!4325200 m!4920087))

(declare-fun m!4920089 () Bool)

(assert (=> b!4325200 m!4920089))

(declare-fun m!4920091 () Bool)

(assert (=> bm!300111 m!4920091))

(assert (=> b!4325155 d!1271740))

(declare-fun d!1271742 () Bool)

(declare-fun map!10456 (LongMapFixedSize!9542) ListLongMap!1205)

(assert (=> d!1271742 (= (map!10454 (v!42856 (underlying!9772 thiss!42308))) (map!10456 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308))))))))

(declare-fun bs!607315 () Bool)

(assert (= bs!607315 d!1271742))

(declare-fun m!4920093 () Bool)

(assert (=> bs!607315 m!4920093))

(assert (=> b!4325155 d!1271742))

(declare-fun d!1271744 () Bool)

(declare-fun lt!1542512 () ListMap!1865)

(declare-fun invariantList!608 (List!48542) Bool)

(assert (=> d!1271744 (invariantList!608 (toList!2589 lt!1542512))))

(assert (=> d!1271744 (= lt!1542512 (extractMap!382 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308))))))))

(assert (=> d!1271744 (valid!3786 thiss!42308)))

(assert (=> d!1271744 (= (map!10455 thiss!42308) lt!1542512)))

(declare-fun bs!607316 () Bool)

(assert (= bs!607316 d!1271744))

(declare-fun m!4920095 () Bool)

(assert (=> bs!607316 m!4920095))

(assert (=> bs!607316 m!4920005))

(assert (=> bs!607316 m!4920051))

(assert (=> bs!607316 m!4919981))

(assert (=> b!4325155 d!1271744))

(declare-fun bs!607317 () Bool)

(declare-fun d!1271746 () Bool)

(assert (= bs!607317 (and d!1271746 b!4325166)))

(declare-fun lambda!134263 () Int)

(assert (=> bs!607317 (not (= lambda!134263 lambda!134257))))

(declare-fun bs!607318 () Bool)

(assert (= bs!607318 (and d!1271746 b!4325200)))

(assert (=> bs!607318 (not (= lambda!134263 lambda!134260))))

(assert (=> d!1271746 true))

(assert (=> d!1271746 (= (allKeysSameHashInMap!402 lt!1542446 (hashF!6987 thiss!42308)) (forall!8835 (toList!2588 lt!1542446) lambda!134263))))

(declare-fun bs!607319 () Bool)

(assert (= bs!607319 d!1271746))

(declare-fun m!4920097 () Bool)

(assert (=> bs!607319 m!4920097))

(assert (=> b!4325159 d!1271746))

(declare-fun d!1271748 () Bool)

(declare-fun e!2691126 () Bool)

(assert (=> d!1271748 e!2691126))

(declare-fun c!735850 () Bool)

(assert (=> d!1271748 (= c!735850 (contains!10493 (v!42856 (underlying!9772 thiss!42308)) lt!1542435))))

(declare-fun lt!1542515 () List!48542)

(declare-fun apply!11170 (LongMapFixedSize!9542 (_ BitVec 64)) List!48542)

(assert (=> d!1271748 (= lt!1542515 (apply!11170 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))) lt!1542435))))

(declare-fun valid!3787 (MutLongMap!4771) Bool)

(assert (=> d!1271748 (valid!3787 (v!42856 (underlying!9772 thiss!42308)))))

(assert (=> d!1271748 (= (apply!11168 (v!42856 (underlying!9772 thiss!42308)) lt!1542435) lt!1542515)))

(declare-fun b!4325208 () Bool)

(declare-fun get!15693 (Option!10322) List!48542)

(assert (=> b!4325208 (= e!2691126 (= lt!1542515 (get!15693 (getValueByKey!311 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308)))) lt!1542435))))))

(declare-fun b!4325209 () Bool)

(declare-fun dynLambda!20522 (Int (_ BitVec 64)) List!48542)

(assert (=> b!4325209 (= e!2691126 (= lt!1542515 (dynLambda!20522 (defaultEntry!5176 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308))))) lt!1542435)))))

(assert (=> b!4325209 ((_ is LongMap!4771) (v!42856 (underlying!9772 thiss!42308)))))

(assert (= (and d!1271748 c!735850) b!4325208))

(assert (= (and d!1271748 (not c!735850)) b!4325209))

(declare-fun b_lambda!127527 () Bool)

(assert (=> (not b_lambda!127527) (not b!4325209)))

(declare-fun t!355445 () Bool)

(declare-fun tb!257385 () Bool)

(assert (=> (and b!4325162 (= (defaultEntry!5176 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308))))) (defaultEntry!5176 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) t!355445) tb!257385))

(assert (=> b!4325209 t!355445))

(declare-fun result!314926 () Bool)

(declare-fun b_and!340627 () Bool)

(assert (= b_and!340623 (and (=> t!355445 result!314926) b_and!340627)))

(assert (=> d!1271748 m!4919977))

(declare-fun m!4920099 () Bool)

(assert (=> d!1271748 m!4920099))

(declare-fun m!4920101 () Bool)

(assert (=> d!1271748 m!4920101))

(assert (=> b!4325208 m!4920005))

(declare-fun m!4920103 () Bool)

(assert (=> b!4325208 m!4920103))

(assert (=> b!4325208 m!4920103))

(declare-fun m!4920105 () Bool)

(assert (=> b!4325208 m!4920105))

(declare-fun m!4920107 () Bool)

(assert (=> b!4325209 m!4920107))

(assert (=> b!4325168 d!1271748))

(declare-fun d!1271750 () Bool)

(assert (=> d!1271750 (= (array_inv!5567 (_keys!5097 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) (bvsge (size!35766 (_keys!5097 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4325162 d!1271750))

(declare-fun d!1271752 () Bool)

(assert (=> d!1271752 (= (array_inv!5568 (_values!5072 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) (bvsge (size!35767 (_values!5072 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4325162 d!1271752))

(declare-fun d!1271754 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7578 (List!48542) (InoxSet tuple2!47304))

(assert (=> d!1271754 (= (eq!162 lt!1542440 lt!1542433) (= (content!7578 (toList!2589 lt!1542440)) (content!7578 (toList!2589 lt!1542433))))))

(declare-fun bs!607320 () Bool)

(assert (= bs!607320 d!1271754))

(declare-fun m!4920109 () Bool)

(assert (=> bs!607320 m!4920109))

(declare-fun m!4920111 () Bool)

(assert (=> bs!607320 m!4920111))

(assert (=> b!4325166 d!1271754))

(declare-fun d!1271756 () Bool)

(assert (=> d!1271756 (= (eq!162 (extractMap!382 (toList!2588 lt!1542442)) (+!356 (extractMap!382 (toList!2588 lt!1542444)) lt!1542449)) (= (content!7578 (toList!2589 (extractMap!382 (toList!2588 lt!1542442)))) (content!7578 (toList!2589 (+!356 (extractMap!382 (toList!2588 lt!1542444)) lt!1542449)))))))

(declare-fun bs!607321 () Bool)

(assert (= bs!607321 d!1271756))

(declare-fun m!4920113 () Bool)

(assert (=> bs!607321 m!4920113))

(declare-fun m!4920115 () Bool)

(assert (=> bs!607321 m!4920115))

(assert (=> b!4325166 d!1271756))

(declare-fun bs!607322 () Bool)

(declare-fun d!1271758 () Bool)

(assert (= bs!607322 (and d!1271758 b!4325166)))

(declare-fun lambda!134266 () Int)

(assert (=> bs!607322 (= lambda!134266 lambda!134257)))

(declare-fun bs!607323 () Bool)

(assert (= bs!607323 (and d!1271758 b!4325200)))

(assert (=> bs!607323 (= lambda!134266 lambda!134260)))

(declare-fun bs!607324 () Bool)

(assert (= bs!607324 (and d!1271758 d!1271746)))

(assert (=> bs!607324 (not (= lambda!134266 lambda!134263))))

(declare-fun lt!1542518 () ListMap!1865)

(assert (=> d!1271758 (invariantList!608 (toList!2589 lt!1542518))))

(declare-fun e!2691129 () ListMap!1865)

(assert (=> d!1271758 (= lt!1542518 e!2691129)))

(declare-fun c!735853 () Bool)

(assert (=> d!1271758 (= c!735853 ((_ is Cons!48419) (toList!2588 lt!1542444)))))

(assert (=> d!1271758 (forall!8835 (toList!2588 lt!1542444) lambda!134266)))

(assert (=> d!1271758 (= (extractMap!382 (toList!2588 lt!1542444)) lt!1542518)))

(declare-fun b!4325214 () Bool)

(declare-fun addToMapMapFromBucket!58 (List!48542 ListMap!1865) ListMap!1865)

(assert (=> b!4325214 (= e!2691129 (addToMapMapFromBucket!58 (_2!26941 (h!53886 (toList!2588 lt!1542444))) (extractMap!382 (t!355443 (toList!2588 lt!1542444)))))))

(declare-fun b!4325215 () Bool)

(assert (=> b!4325215 (= e!2691129 (ListMap!1866 Nil!48418))))

(assert (= (and d!1271758 c!735853) b!4325214))

(assert (= (and d!1271758 (not c!735853)) b!4325215))

(declare-fun m!4920117 () Bool)

(assert (=> d!1271758 m!4920117))

(declare-fun m!4920119 () Bool)

(assert (=> d!1271758 m!4920119))

(declare-fun m!4920121 () Bool)

(assert (=> b!4325214 m!4920121))

(assert (=> b!4325214 m!4920121))

(declare-fun m!4920123 () Bool)

(assert (=> b!4325214 m!4920123))

(assert (=> b!4325166 d!1271758))

(declare-fun d!1271760 () Bool)

(declare-fun e!2691132 () Bool)

(assert (=> d!1271760 e!2691132))

(declare-fun res!1772537 () Bool)

(assert (=> d!1271760 (=> (not res!1772537) (not e!2691132))))

(declare-fun lt!1542529 () ListLongMap!1205)

(assert (=> d!1271760 (= res!1772537 (contains!10495 lt!1542529 (_1!26941 (tuple2!47307 lt!1542435 lt!1542448))))))

(declare-fun lt!1542527 () List!48543)

(assert (=> d!1271760 (= lt!1542529 (ListLongMap!1206 lt!1542527))))

(declare-fun lt!1542530 () Unit!67963)

(declare-fun lt!1542528 () Unit!67963)

(assert (=> d!1271760 (= lt!1542530 lt!1542528)))

(assert (=> d!1271760 (= (getValueByKey!311 lt!1542527 (_1!26941 (tuple2!47307 lt!1542435 lt!1542448))) (Some!10321 (_2!26941 (tuple2!47307 lt!1542435 lt!1542448))))))

(declare-fun lemmaContainsTupThenGetReturnValue!106 (List!48543 (_ BitVec 64) List!48542) Unit!67963)

(assert (=> d!1271760 (= lt!1542528 (lemmaContainsTupThenGetReturnValue!106 lt!1542527 (_1!26941 (tuple2!47307 lt!1542435 lt!1542448)) (_2!26941 (tuple2!47307 lt!1542435 lt!1542448))))))

(declare-fun insertStrictlySorted!63 (List!48543 (_ BitVec 64) List!48542) List!48543)

(assert (=> d!1271760 (= lt!1542527 (insertStrictlySorted!63 (toList!2588 lt!1542444) (_1!26941 (tuple2!47307 lt!1542435 lt!1542448)) (_2!26941 (tuple2!47307 lt!1542435 lt!1542448))))))

(assert (=> d!1271760 (= (+!357 lt!1542444 (tuple2!47307 lt!1542435 lt!1542448)) lt!1542529)))

(declare-fun b!4325220 () Bool)

(declare-fun res!1772538 () Bool)

(assert (=> b!4325220 (=> (not res!1772538) (not e!2691132))))

(assert (=> b!4325220 (= res!1772538 (= (getValueByKey!311 (toList!2588 lt!1542529) (_1!26941 (tuple2!47307 lt!1542435 lt!1542448))) (Some!10321 (_2!26941 (tuple2!47307 lt!1542435 lt!1542448)))))))

(declare-fun b!4325221 () Bool)

(assert (=> b!4325221 (= e!2691132 (contains!10496 (toList!2588 lt!1542529) (tuple2!47307 lt!1542435 lt!1542448)))))

(assert (= (and d!1271760 res!1772537) b!4325220))

(assert (= (and b!4325220 res!1772538) b!4325221))

(declare-fun m!4920125 () Bool)

(assert (=> d!1271760 m!4920125))

(declare-fun m!4920127 () Bool)

(assert (=> d!1271760 m!4920127))

(declare-fun m!4920129 () Bool)

(assert (=> d!1271760 m!4920129))

(declare-fun m!4920131 () Bool)

(assert (=> d!1271760 m!4920131))

(declare-fun m!4920133 () Bool)

(assert (=> b!4325220 m!4920133))

(declare-fun m!4920135 () Bool)

(assert (=> b!4325221 m!4920135))

(assert (=> b!4325166 d!1271760))

(declare-fun d!1271762 () Bool)

(declare-fun res!1772543 () Bool)

(declare-fun e!2691137 () Bool)

(assert (=> d!1271762 (=> res!1772543 e!2691137)))

(assert (=> d!1271762 (= res!1772543 ((_ is Nil!48419) (toList!2588 lt!1542446)))))

(assert (=> d!1271762 (= (forall!8835 (toList!2588 lt!1542446) lambda!134257) e!2691137)))

(declare-fun b!4325226 () Bool)

(declare-fun e!2691138 () Bool)

(assert (=> b!4325226 (= e!2691137 e!2691138)))

(declare-fun res!1772544 () Bool)

(assert (=> b!4325226 (=> (not res!1772544) (not e!2691138))))

(declare-fun dynLambda!20523 (Int tuple2!47306) Bool)

(assert (=> b!4325226 (= res!1772544 (dynLambda!20523 lambda!134257 (h!53886 (toList!2588 lt!1542446))))))

(declare-fun b!4325227 () Bool)

(assert (=> b!4325227 (= e!2691138 (forall!8835 (t!355443 (toList!2588 lt!1542446)) lambda!134257))))

(assert (= (and d!1271762 (not res!1772543)) b!4325226))

(assert (= (and b!4325226 res!1772544) b!4325227))

(declare-fun b_lambda!127529 () Bool)

(assert (=> (not b_lambda!127529) (not b!4325226)))

(declare-fun m!4920137 () Bool)

(assert (=> b!4325226 m!4920137))

(declare-fun m!4920139 () Bool)

(assert (=> b!4325227 m!4920139))

(assert (=> b!4325166 d!1271762))

(declare-fun b!4325246 () Bool)

(declare-datatypes ((List!48544 0))(
  ( (Nil!48420) (Cons!48420 (h!53888 K!9674) (t!355446 List!48544)) )
))
(declare-fun e!2691152 () List!48544)

(declare-fun getKeysList!60 (List!48542) List!48544)

(assert (=> b!4325246 (= e!2691152 (getKeysList!60 (toList!2589 lt!1542433)))))

(declare-fun b!4325247 () Bool)

(declare-fun e!2691156 () Unit!67963)

(declare-fun Unit!67971 () Unit!67963)

(assert (=> b!4325247 (= e!2691156 Unit!67971)))

(declare-fun b!4325248 () Bool)

(declare-fun keys!16195 (ListMap!1865) List!48544)

(assert (=> b!4325248 (= e!2691152 (keys!16195 lt!1542433))))

(declare-fun b!4325249 () Bool)

(declare-fun e!2691153 () Unit!67963)

(declare-fun lt!1542554 () Unit!67963)

(assert (=> b!4325249 (= e!2691153 lt!1542554)))

(declare-fun lt!1542549 () Unit!67963)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!228 (List!48542 K!9674) Unit!67963)

(assert (=> b!4325249 (= lt!1542549 (lemmaContainsKeyImpliesGetValueByKeyDefined!228 (toList!2589 lt!1542433) key!2048))))

(declare-datatypes ((Option!10323 0))(
  ( (None!10322) (Some!10322 (v!42863 V!9876)) )
))
(declare-fun isDefined!7621 (Option!10323) Bool)

(declare-fun getValueByKey!312 (List!48542 K!9674) Option!10323)

(assert (=> b!4325249 (isDefined!7621 (getValueByKey!312 (toList!2589 lt!1542433) key!2048))))

(declare-fun lt!1542553 () Unit!67963)

(assert (=> b!4325249 (= lt!1542553 lt!1542549)))

(declare-fun lemmaInListThenGetKeysListContains!57 (List!48542 K!9674) Unit!67963)

(assert (=> b!4325249 (= lt!1542554 (lemmaInListThenGetKeysListContains!57 (toList!2589 lt!1542433) key!2048))))

(declare-fun call!300122 () Bool)

(assert (=> b!4325249 call!300122))

(declare-fun b!4325250 () Bool)

(assert (=> b!4325250 (= e!2691153 e!2691156)))

(declare-fun c!735860 () Bool)

(assert (=> b!4325250 (= c!735860 call!300122)))

(declare-fun bm!300117 () Bool)

(declare-fun contains!10497 (List!48544 K!9674) Bool)

(assert (=> bm!300117 (= call!300122 (contains!10497 e!2691152 key!2048))))

(declare-fun c!735861 () Bool)

(declare-fun c!735862 () Bool)

(assert (=> bm!300117 (= c!735861 c!735862)))

(declare-fun b!4325251 () Bool)

(declare-fun e!2691151 () Bool)

(declare-fun e!2691154 () Bool)

(assert (=> b!4325251 (= e!2691151 e!2691154)))

(declare-fun res!1772553 () Bool)

(assert (=> b!4325251 (=> (not res!1772553) (not e!2691154))))

(assert (=> b!4325251 (= res!1772553 (isDefined!7621 (getValueByKey!312 (toList!2589 lt!1542433) key!2048)))))

(declare-fun b!4325252 () Bool)

(assert (=> b!4325252 (= e!2691154 (contains!10497 (keys!16195 lt!1542433) key!2048))))

(declare-fun d!1271764 () Bool)

(assert (=> d!1271764 e!2691151))

(declare-fun res!1772551 () Bool)

(assert (=> d!1271764 (=> res!1772551 e!2691151)))

(declare-fun e!2691155 () Bool)

(assert (=> d!1271764 (= res!1772551 e!2691155)))

(declare-fun res!1772552 () Bool)

(assert (=> d!1271764 (=> (not res!1772552) (not e!2691155))))

(declare-fun lt!1542551 () Bool)

(assert (=> d!1271764 (= res!1772552 (not lt!1542551))))

(declare-fun lt!1542548 () Bool)

(assert (=> d!1271764 (= lt!1542551 lt!1542548)))

(declare-fun lt!1542550 () Unit!67963)

(assert (=> d!1271764 (= lt!1542550 e!2691153)))

(assert (=> d!1271764 (= c!735862 lt!1542548)))

(declare-fun containsKey!419 (List!48542 K!9674) Bool)

(assert (=> d!1271764 (= lt!1542548 (containsKey!419 (toList!2589 lt!1542433) key!2048))))

(assert (=> d!1271764 (= (contains!10494 lt!1542433 key!2048) lt!1542551)))

(declare-fun b!4325253 () Bool)

(assert (=> b!4325253 false))

(declare-fun lt!1542547 () Unit!67963)

(declare-fun lt!1542552 () Unit!67963)

(assert (=> b!4325253 (= lt!1542547 lt!1542552)))

(assert (=> b!4325253 (containsKey!419 (toList!2589 lt!1542433) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!57 (List!48542 K!9674) Unit!67963)

(assert (=> b!4325253 (= lt!1542552 (lemmaInGetKeysListThenContainsKey!57 (toList!2589 lt!1542433) key!2048))))

(declare-fun Unit!67972 () Unit!67963)

(assert (=> b!4325253 (= e!2691156 Unit!67972)))

(declare-fun b!4325254 () Bool)

(assert (=> b!4325254 (= e!2691155 (not (contains!10497 (keys!16195 lt!1542433) key!2048)))))

(assert (= (and d!1271764 c!735862) b!4325249))

(assert (= (and d!1271764 (not c!735862)) b!4325250))

(assert (= (and b!4325250 c!735860) b!4325253))

(assert (= (and b!4325250 (not c!735860)) b!4325247))

(assert (= (or b!4325249 b!4325250) bm!300117))

(assert (= (and bm!300117 c!735861) b!4325246))

(assert (= (and bm!300117 (not c!735861)) b!4325248))

(assert (= (and d!1271764 res!1772552) b!4325254))

(assert (= (and d!1271764 (not res!1772551)) b!4325251))

(assert (= (and b!4325251 res!1772553) b!4325252))

(declare-fun m!4920141 () Bool)

(assert (=> b!4325253 m!4920141))

(declare-fun m!4920143 () Bool)

(assert (=> b!4325253 m!4920143))

(declare-fun m!4920145 () Bool)

(assert (=> b!4325254 m!4920145))

(assert (=> b!4325254 m!4920145))

(declare-fun m!4920147 () Bool)

(assert (=> b!4325254 m!4920147))

(declare-fun m!4920149 () Bool)

(assert (=> b!4325251 m!4920149))

(assert (=> b!4325251 m!4920149))

(declare-fun m!4920151 () Bool)

(assert (=> b!4325251 m!4920151))

(assert (=> b!4325252 m!4920145))

(assert (=> b!4325252 m!4920145))

(assert (=> b!4325252 m!4920147))

(assert (=> d!1271764 m!4920141))

(declare-fun m!4920153 () Bool)

(assert (=> bm!300117 m!4920153))

(assert (=> b!4325248 m!4920145))

(declare-fun m!4920155 () Bool)

(assert (=> b!4325249 m!4920155))

(assert (=> b!4325249 m!4920149))

(assert (=> b!4325249 m!4920149))

(assert (=> b!4325249 m!4920151))

(declare-fun m!4920157 () Bool)

(assert (=> b!4325249 m!4920157))

(declare-fun m!4920159 () Bool)

(assert (=> b!4325246 m!4920159))

(assert (=> b!4325166 d!1271764))

(declare-fun b!4325255 () Bool)

(declare-fun e!2691158 () List!48544)

(assert (=> b!4325255 (= e!2691158 (getKeysList!60 (toList!2589 lt!1542440)))))

(declare-fun b!4325256 () Bool)

(declare-fun e!2691162 () Unit!67963)

(declare-fun Unit!67973 () Unit!67963)

(assert (=> b!4325256 (= e!2691162 Unit!67973)))

(declare-fun b!4325257 () Bool)

(assert (=> b!4325257 (= e!2691158 (keys!16195 lt!1542440))))

(declare-fun b!4325258 () Bool)

(declare-fun e!2691159 () Unit!67963)

(declare-fun lt!1542562 () Unit!67963)

(assert (=> b!4325258 (= e!2691159 lt!1542562)))

(declare-fun lt!1542557 () Unit!67963)

(assert (=> b!4325258 (= lt!1542557 (lemmaContainsKeyImpliesGetValueByKeyDefined!228 (toList!2589 lt!1542440) key!2048))))

(assert (=> b!4325258 (isDefined!7621 (getValueByKey!312 (toList!2589 lt!1542440) key!2048))))

(declare-fun lt!1542561 () Unit!67963)

(assert (=> b!4325258 (= lt!1542561 lt!1542557)))

(assert (=> b!4325258 (= lt!1542562 (lemmaInListThenGetKeysListContains!57 (toList!2589 lt!1542440) key!2048))))

(declare-fun call!300123 () Bool)

(assert (=> b!4325258 call!300123))

(declare-fun b!4325259 () Bool)

(assert (=> b!4325259 (= e!2691159 e!2691162)))

(declare-fun c!735863 () Bool)

(assert (=> b!4325259 (= c!735863 call!300123)))

(declare-fun bm!300118 () Bool)

(assert (=> bm!300118 (= call!300123 (contains!10497 e!2691158 key!2048))))

(declare-fun c!735864 () Bool)

(declare-fun c!735865 () Bool)

(assert (=> bm!300118 (= c!735864 c!735865)))

(declare-fun b!4325260 () Bool)

(declare-fun e!2691157 () Bool)

(declare-fun e!2691160 () Bool)

(assert (=> b!4325260 (= e!2691157 e!2691160)))

(declare-fun res!1772556 () Bool)

(assert (=> b!4325260 (=> (not res!1772556) (not e!2691160))))

(assert (=> b!4325260 (= res!1772556 (isDefined!7621 (getValueByKey!312 (toList!2589 lt!1542440) key!2048)))))

(declare-fun b!4325261 () Bool)

(assert (=> b!4325261 (= e!2691160 (contains!10497 (keys!16195 lt!1542440) key!2048))))

(declare-fun d!1271766 () Bool)

(assert (=> d!1271766 e!2691157))

(declare-fun res!1772554 () Bool)

(assert (=> d!1271766 (=> res!1772554 e!2691157)))

(declare-fun e!2691161 () Bool)

(assert (=> d!1271766 (= res!1772554 e!2691161)))

(declare-fun res!1772555 () Bool)

(assert (=> d!1271766 (=> (not res!1772555) (not e!2691161))))

(declare-fun lt!1542559 () Bool)

(assert (=> d!1271766 (= res!1772555 (not lt!1542559))))

(declare-fun lt!1542556 () Bool)

(assert (=> d!1271766 (= lt!1542559 lt!1542556)))

(declare-fun lt!1542558 () Unit!67963)

(assert (=> d!1271766 (= lt!1542558 e!2691159)))

(assert (=> d!1271766 (= c!735865 lt!1542556)))

(assert (=> d!1271766 (= lt!1542556 (containsKey!419 (toList!2589 lt!1542440) key!2048))))

(assert (=> d!1271766 (= (contains!10494 lt!1542440 key!2048) lt!1542559)))

(declare-fun b!4325262 () Bool)

(assert (=> b!4325262 false))

(declare-fun lt!1542555 () Unit!67963)

(declare-fun lt!1542560 () Unit!67963)

(assert (=> b!4325262 (= lt!1542555 lt!1542560)))

(assert (=> b!4325262 (containsKey!419 (toList!2589 lt!1542440) key!2048)))

(assert (=> b!4325262 (= lt!1542560 (lemmaInGetKeysListThenContainsKey!57 (toList!2589 lt!1542440) key!2048))))

(declare-fun Unit!67974 () Unit!67963)

(assert (=> b!4325262 (= e!2691162 Unit!67974)))

(declare-fun b!4325263 () Bool)

(assert (=> b!4325263 (= e!2691161 (not (contains!10497 (keys!16195 lt!1542440) key!2048)))))

(assert (= (and d!1271766 c!735865) b!4325258))

(assert (= (and d!1271766 (not c!735865)) b!4325259))

(assert (= (and b!4325259 c!735863) b!4325262))

(assert (= (and b!4325259 (not c!735863)) b!4325256))

(assert (= (or b!4325258 b!4325259) bm!300118))

(assert (= (and bm!300118 c!735864) b!4325255))

(assert (= (and bm!300118 (not c!735864)) b!4325257))

(assert (= (and d!1271766 res!1772555) b!4325263))

(assert (= (and d!1271766 (not res!1772554)) b!4325260))

(assert (= (and b!4325260 res!1772556) b!4325261))

(declare-fun m!4920161 () Bool)

(assert (=> b!4325262 m!4920161))

(declare-fun m!4920163 () Bool)

(assert (=> b!4325262 m!4920163))

(declare-fun m!4920165 () Bool)

(assert (=> b!4325263 m!4920165))

(assert (=> b!4325263 m!4920165))

(declare-fun m!4920167 () Bool)

(assert (=> b!4325263 m!4920167))

(declare-fun m!4920169 () Bool)

(assert (=> b!4325260 m!4920169))

(assert (=> b!4325260 m!4920169))

(declare-fun m!4920171 () Bool)

(assert (=> b!4325260 m!4920171))

(assert (=> b!4325261 m!4920165))

(assert (=> b!4325261 m!4920165))

(assert (=> b!4325261 m!4920167))

(assert (=> d!1271766 m!4920161))

(declare-fun m!4920173 () Bool)

(assert (=> bm!300118 m!4920173))

(assert (=> b!4325257 m!4920165))

(declare-fun m!4920175 () Bool)

(assert (=> b!4325258 m!4920175))

(assert (=> b!4325258 m!4920169))

(assert (=> b!4325258 m!4920169))

(assert (=> b!4325258 m!4920171))

(declare-fun m!4920177 () Bool)

(assert (=> b!4325258 m!4920177))

(declare-fun m!4920179 () Bool)

(assert (=> b!4325255 m!4920179))

(assert (=> b!4325166 d!1271766))

(declare-fun bs!607325 () Bool)

(declare-fun d!1271768 () Bool)

(assert (= bs!607325 (and d!1271768 b!4325166)))

(declare-fun lambda!134271 () Int)

(assert (=> bs!607325 (= lambda!134271 lambda!134257)))

(declare-fun bs!607326 () Bool)

(assert (= bs!607326 (and d!1271768 b!4325200)))

(assert (=> bs!607326 (= lambda!134271 lambda!134260)))

(declare-fun bs!607327 () Bool)

(assert (= bs!607327 (and d!1271768 d!1271746)))

(assert (=> bs!607327 (not (= lambda!134271 lambda!134263))))

(declare-fun bs!607328 () Bool)

(assert (= bs!607328 (and d!1271768 d!1271758)))

(assert (=> bs!607328 (= lambda!134271 lambda!134266)))

(declare-fun e!2691165 () Bool)

(assert (=> d!1271768 e!2691165))

(declare-fun res!1772559 () Bool)

(assert (=> d!1271768 (=> (not res!1772559) (not e!2691165))))

(declare-fun lt!1542568 () ListLongMap!1205)

(assert (=> d!1271768 (= res!1772559 (forall!8835 (toList!2588 lt!1542568) lambda!134271))))

(assert (=> d!1271768 (= lt!1542568 (+!357 lt!1542444 (tuple2!47307 lt!1542435 lt!1542448)))))

(declare-fun lt!1542567 () Unit!67963)

(declare-fun choose!26448 (ListLongMap!1205 (_ BitVec 64) List!48542 Hashable!4687) Unit!67963)

(assert (=> d!1271768 (= lt!1542567 (choose!26448 lt!1542444 lt!1542435 lt!1542448 (hashF!6987 thiss!42308)))))

(assert (=> d!1271768 (forall!8835 (toList!2588 lt!1542444) lambda!134271)))

(assert (=> d!1271768 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!195 lt!1542444 lt!1542435 lt!1542448 (hashF!6987 thiss!42308)) lt!1542567)))

(declare-fun b!4325266 () Bool)

(assert (=> b!4325266 (= e!2691165 (allKeysSameHashInMap!402 lt!1542568 (hashF!6987 thiss!42308)))))

(assert (= (and d!1271768 res!1772559) b!4325266))

(declare-fun m!4920181 () Bool)

(assert (=> d!1271768 m!4920181))

(assert (=> d!1271768 m!4920011))

(declare-fun m!4920183 () Bool)

(assert (=> d!1271768 m!4920183))

(declare-fun m!4920185 () Bool)

(assert (=> d!1271768 m!4920185))

(declare-fun m!4920187 () Bool)

(assert (=> b!4325266 m!4920187))

(assert (=> b!4325166 d!1271768))

(declare-fun d!1271770 () Bool)

(assert (=> d!1271770 (= (contains!10494 lt!1542440 key!2048) (contains!10494 lt!1542433 key!2048))))

(declare-fun lt!1542571 () Unit!67963)

(declare-fun choose!26449 (ListMap!1865 ListMap!1865 K!9674) Unit!67963)

(assert (=> d!1271770 (= lt!1542571 (choose!26449 lt!1542440 lt!1542433 key!2048))))

(assert (=> d!1271770 (eq!162 lt!1542440 lt!1542433)))

(assert (=> d!1271770 (= (lemmaEquivalentThenSameContains!67 lt!1542440 lt!1542433 key!2048) lt!1542571)))

(declare-fun bs!607329 () Bool)

(assert (= bs!607329 d!1271770))

(assert (=> bs!607329 m!4920013))

(assert (=> bs!607329 m!4920017))

(declare-fun m!4920189 () Bool)

(assert (=> bs!607329 m!4920189))

(assert (=> bs!607329 m!4920033))

(assert (=> b!4325166 d!1271770))

(declare-fun d!1271772 () Bool)

(declare-fun e!2691168 () Bool)

(assert (=> d!1271772 e!2691168))

(declare-fun res!1772565 () Bool)

(assert (=> d!1271772 (=> (not res!1772565) (not e!2691168))))

(declare-fun lt!1542581 () ListMap!1865)

(assert (=> d!1271772 (= res!1772565 (contains!10494 lt!1542581 (_1!26940 lt!1542449)))))

(declare-fun lt!1542580 () List!48542)

(assert (=> d!1271772 (= lt!1542581 (ListMap!1866 lt!1542580))))

(declare-fun lt!1542582 () Unit!67963)

(declare-fun lt!1542583 () Unit!67963)

(assert (=> d!1271772 (= lt!1542582 lt!1542583)))

(assert (=> d!1271772 (= (getValueByKey!312 lt!1542580 (_1!26940 lt!1542449)) (Some!10322 (_2!26940 lt!1542449)))))

(declare-fun lemmaContainsTupThenGetReturnValue!107 (List!48542 K!9674 V!9876) Unit!67963)

(assert (=> d!1271772 (= lt!1542583 (lemmaContainsTupThenGetReturnValue!107 lt!1542580 (_1!26940 lt!1542449) (_2!26940 lt!1542449)))))

(declare-fun insertNoDuplicatedKeys!52 (List!48542 K!9674 V!9876) List!48542)

(assert (=> d!1271772 (= lt!1542580 (insertNoDuplicatedKeys!52 (toList!2589 lt!1542434) (_1!26940 lt!1542449) (_2!26940 lt!1542449)))))

(assert (=> d!1271772 (= (+!356 lt!1542434 lt!1542449) lt!1542581)))

(declare-fun b!4325271 () Bool)

(declare-fun res!1772564 () Bool)

(assert (=> b!4325271 (=> (not res!1772564) (not e!2691168))))

(assert (=> b!4325271 (= res!1772564 (= (getValueByKey!312 (toList!2589 lt!1542581) (_1!26940 lt!1542449)) (Some!10322 (_2!26940 lt!1542449))))))

(declare-fun b!4325272 () Bool)

(declare-fun contains!10498 (List!48542 tuple2!47304) Bool)

(assert (=> b!4325272 (= e!2691168 (contains!10498 (toList!2589 lt!1542581) lt!1542449))))

(assert (= (and d!1271772 res!1772565) b!4325271))

(assert (= (and b!4325271 res!1772564) b!4325272))

(declare-fun m!4920191 () Bool)

(assert (=> d!1271772 m!4920191))

(declare-fun m!4920193 () Bool)

(assert (=> d!1271772 m!4920193))

(declare-fun m!4920195 () Bool)

(assert (=> d!1271772 m!4920195))

(declare-fun m!4920197 () Bool)

(assert (=> d!1271772 m!4920197))

(declare-fun m!4920199 () Bool)

(assert (=> b!4325271 m!4920199))

(declare-fun m!4920201 () Bool)

(assert (=> b!4325272 m!4920201))

(assert (=> b!4325166 d!1271772))

(declare-fun d!1271774 () Bool)

(assert (=> d!1271774 (= (map!10454 (_2!26942 lt!1542432)) (map!10456 (v!42855 (underlying!9771 (_2!26942 lt!1542432)))))))

(declare-fun bs!607330 () Bool)

(assert (= bs!607330 d!1271774))

(declare-fun m!4920203 () Bool)

(assert (=> bs!607330 m!4920203))

(assert (=> b!4325166 d!1271774))

(declare-fun d!1271776 () Bool)

(declare-fun lt!1542584 () ListMap!1865)

(assert (=> d!1271776 (invariantList!608 (toList!2589 lt!1542584))))

(assert (=> d!1271776 (= lt!1542584 (extractMap!382 (toList!2588 (map!10454 (v!42856 (underlying!9772 (HashMap!4677 (Cell!18896 (_2!26942 lt!1542432)) (hashF!6987 thiss!42308) (_size!9588 thiss!42308) (defaultValue!4848 thiss!42308))))))))))

(assert (=> d!1271776 (valid!3786 (HashMap!4677 (Cell!18896 (_2!26942 lt!1542432)) (hashF!6987 thiss!42308) (_size!9588 thiss!42308) (defaultValue!4848 thiss!42308)))))

(assert (=> d!1271776 (= (map!10455 (HashMap!4677 (Cell!18896 (_2!26942 lt!1542432)) (hashF!6987 thiss!42308) (_size!9588 thiss!42308) (defaultValue!4848 thiss!42308))) lt!1542584)))

(declare-fun bs!607331 () Bool)

(assert (= bs!607331 d!1271776))

(declare-fun m!4920205 () Bool)

(assert (=> bs!607331 m!4920205))

(declare-fun m!4920207 () Bool)

(assert (=> bs!607331 m!4920207))

(declare-fun m!4920209 () Bool)

(assert (=> bs!607331 m!4920209))

(declare-fun m!4920211 () Bool)

(assert (=> bs!607331 m!4920211))

(assert (=> b!4325166 d!1271776))

(declare-fun bs!607332 () Bool)

(declare-fun d!1271778 () Bool)

(assert (= bs!607332 (and d!1271778 d!1271758)))

(declare-fun lambda!134274 () Int)

(assert (=> bs!607332 (= lambda!134274 lambda!134266)))

(declare-fun bs!607333 () Bool)

(assert (= bs!607333 (and d!1271778 b!4325166)))

(assert (=> bs!607333 (= lambda!134274 lambda!134257)))

(declare-fun bs!607334 () Bool)

(assert (= bs!607334 (and d!1271778 d!1271768)))

(assert (=> bs!607334 (= lambda!134274 lambda!134271)))

(declare-fun bs!607335 () Bool)

(assert (= bs!607335 (and d!1271778 b!4325200)))

(assert (=> bs!607335 (= lambda!134274 lambda!134260)))

(declare-fun bs!607336 () Bool)

(assert (= bs!607336 (and d!1271778 d!1271746)))

(assert (=> bs!607336 (not (= lambda!134274 lambda!134263))))

(assert (=> d!1271778 (eq!162 (extractMap!382 (toList!2588 (+!357 lt!1542444 (tuple2!47307 lt!1542435 lt!1542448)))) (+!356 (extractMap!382 (toList!2588 lt!1542444)) (tuple2!47305 key!2048 v!9179)))))

(declare-fun lt!1542587 () Unit!67963)

(declare-fun choose!26450 (ListLongMap!1205 (_ BitVec 64) List!48542 K!9674 V!9876 Hashable!4687) Unit!67963)

(assert (=> d!1271778 (= lt!1542587 (choose!26450 lt!1542444 lt!1542435 lt!1542448 key!2048 v!9179 (hashF!6987 thiss!42308)))))

(assert (=> d!1271778 (forall!8835 (toList!2588 lt!1542444) lambda!134274)))

(assert (=> d!1271778 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!67 lt!1542444 lt!1542435 lt!1542448 key!2048 v!9179 (hashF!6987 thiss!42308)) lt!1542587)))

(declare-fun bs!607337 () Bool)

(assert (= bs!607337 d!1271778))

(declare-fun m!4920213 () Bool)

(assert (=> bs!607337 m!4920213))

(assert (=> bs!607337 m!4920021))

(declare-fun m!4920215 () Bool)

(assert (=> bs!607337 m!4920215))

(assert (=> bs!607337 m!4920021))

(declare-fun m!4920217 () Bool)

(assert (=> bs!607337 m!4920217))

(declare-fun m!4920219 () Bool)

(assert (=> bs!607337 m!4920219))

(assert (=> bs!607337 m!4920217))

(assert (=> bs!607337 m!4920215))

(declare-fun m!4920221 () Bool)

(assert (=> bs!607337 m!4920221))

(assert (=> bs!607337 m!4920011))

(assert (=> b!4325166 d!1271778))

(declare-fun bs!607338 () Bool)

(declare-fun d!1271780 () Bool)

(assert (= bs!607338 (and d!1271780 d!1271758)))

(declare-fun lambda!134275 () Int)

(assert (=> bs!607338 (= lambda!134275 lambda!134266)))

(declare-fun bs!607339 () Bool)

(assert (= bs!607339 (and d!1271780 b!4325166)))

(assert (=> bs!607339 (= lambda!134275 lambda!134257)))

(declare-fun bs!607340 () Bool)

(assert (= bs!607340 (and d!1271780 d!1271768)))

(assert (=> bs!607340 (= lambda!134275 lambda!134271)))

(declare-fun bs!607341 () Bool)

(assert (= bs!607341 (and d!1271780 b!4325200)))

(assert (=> bs!607341 (= lambda!134275 lambda!134260)))

(declare-fun bs!607342 () Bool)

(assert (= bs!607342 (and d!1271780 d!1271746)))

(assert (=> bs!607342 (not (= lambda!134275 lambda!134263))))

(declare-fun bs!607343 () Bool)

(assert (= bs!607343 (and d!1271780 d!1271778)))

(assert (=> bs!607343 (= lambda!134275 lambda!134274)))

(declare-fun lt!1542588 () ListMap!1865)

(assert (=> d!1271780 (invariantList!608 (toList!2589 lt!1542588))))

(declare-fun e!2691169 () ListMap!1865)

(assert (=> d!1271780 (= lt!1542588 e!2691169)))

(declare-fun c!735866 () Bool)

(assert (=> d!1271780 (= c!735866 ((_ is Cons!48419) (toList!2588 lt!1542442)))))

(assert (=> d!1271780 (forall!8835 (toList!2588 lt!1542442) lambda!134275)))

(assert (=> d!1271780 (= (extractMap!382 (toList!2588 lt!1542442)) lt!1542588)))

(declare-fun b!4325273 () Bool)

(assert (=> b!4325273 (= e!2691169 (addToMapMapFromBucket!58 (_2!26941 (h!53886 (toList!2588 lt!1542442))) (extractMap!382 (t!355443 (toList!2588 lt!1542442)))))))

(declare-fun b!4325274 () Bool)

(assert (=> b!4325274 (= e!2691169 (ListMap!1866 Nil!48418))))

(assert (= (and d!1271780 c!735866) b!4325273))

(assert (= (and d!1271780 (not c!735866)) b!4325274))

(declare-fun m!4920223 () Bool)

(assert (=> d!1271780 m!4920223))

(declare-fun m!4920225 () Bool)

(assert (=> d!1271780 m!4920225))

(declare-fun m!4920227 () Bool)

(assert (=> b!4325273 m!4920227))

(assert (=> b!4325273 m!4920227))

(declare-fun m!4920229 () Bool)

(assert (=> b!4325273 m!4920229))

(assert (=> b!4325166 d!1271780))

(declare-fun d!1271782 () Bool)

(assert (=> d!1271782 (= (isEmpty!28139 lt!1542437) ((_ is Nil!48418) lt!1542437))))

(assert (=> b!4325166 d!1271782))

(declare-fun d!1271784 () Bool)

(declare-fun res!1772566 () Bool)

(declare-fun e!2691170 () Bool)

(assert (=> d!1271784 (=> res!1772566 e!2691170)))

(assert (=> d!1271784 (= res!1772566 ((_ is Nil!48419) (toList!2588 lt!1542442)))))

(assert (=> d!1271784 (= (forall!8835 (toList!2588 lt!1542442) lambda!134257) e!2691170)))

(declare-fun b!4325275 () Bool)

(declare-fun e!2691171 () Bool)

(assert (=> b!4325275 (= e!2691170 e!2691171)))

(declare-fun res!1772567 () Bool)

(assert (=> b!4325275 (=> (not res!1772567) (not e!2691171))))

(assert (=> b!4325275 (= res!1772567 (dynLambda!20523 lambda!134257 (h!53886 (toList!2588 lt!1542442))))))

(declare-fun b!4325276 () Bool)

(assert (=> b!4325276 (= e!2691171 (forall!8835 (t!355443 (toList!2588 lt!1542442)) lambda!134257))))

(assert (= (and d!1271784 (not res!1772566)) b!4325275))

(assert (= (and b!4325275 res!1772567) b!4325276))

(declare-fun b_lambda!127531 () Bool)

(assert (=> (not b_lambda!127531) (not b!4325275)))

(declare-fun m!4920231 () Bool)

(assert (=> b!4325275 m!4920231))

(declare-fun m!4920233 () Bool)

(assert (=> b!4325276 m!4920233))

(assert (=> b!4325166 d!1271784))

(declare-fun d!1271786 () Bool)

(declare-fun e!2691172 () Bool)

(assert (=> d!1271786 e!2691172))

(declare-fun res!1772569 () Bool)

(assert (=> d!1271786 (=> (not res!1772569) (not e!2691172))))

(declare-fun lt!1542590 () ListMap!1865)

(assert (=> d!1271786 (= res!1772569 (contains!10494 lt!1542590 (_1!26940 lt!1542449)))))

(declare-fun lt!1542589 () List!48542)

(assert (=> d!1271786 (= lt!1542590 (ListMap!1866 lt!1542589))))

(declare-fun lt!1542591 () Unit!67963)

(declare-fun lt!1542592 () Unit!67963)

(assert (=> d!1271786 (= lt!1542591 lt!1542592)))

(assert (=> d!1271786 (= (getValueByKey!312 lt!1542589 (_1!26940 lt!1542449)) (Some!10322 (_2!26940 lt!1542449)))))

(assert (=> d!1271786 (= lt!1542592 (lemmaContainsTupThenGetReturnValue!107 lt!1542589 (_1!26940 lt!1542449) (_2!26940 lt!1542449)))))

(assert (=> d!1271786 (= lt!1542589 (insertNoDuplicatedKeys!52 (toList!2589 (extractMap!382 (toList!2588 lt!1542444))) (_1!26940 lt!1542449) (_2!26940 lt!1542449)))))

(assert (=> d!1271786 (= (+!356 (extractMap!382 (toList!2588 lt!1542444)) lt!1542449) lt!1542590)))

(declare-fun b!4325277 () Bool)

(declare-fun res!1772568 () Bool)

(assert (=> b!4325277 (=> (not res!1772568) (not e!2691172))))

(assert (=> b!4325277 (= res!1772568 (= (getValueByKey!312 (toList!2589 lt!1542590) (_1!26940 lt!1542449)) (Some!10322 (_2!26940 lt!1542449))))))

(declare-fun b!4325278 () Bool)

(assert (=> b!4325278 (= e!2691172 (contains!10498 (toList!2589 lt!1542590) lt!1542449))))

(assert (= (and d!1271786 res!1772569) b!4325277))

(assert (= (and b!4325277 res!1772568) b!4325278))

(declare-fun m!4920235 () Bool)

(assert (=> d!1271786 m!4920235))

(declare-fun m!4920237 () Bool)

(assert (=> d!1271786 m!4920237))

(declare-fun m!4920239 () Bool)

(assert (=> d!1271786 m!4920239))

(declare-fun m!4920241 () Bool)

(assert (=> d!1271786 m!4920241))

(declare-fun m!4920243 () Bool)

(assert (=> b!4325277 m!4920243))

(declare-fun m!4920245 () Bool)

(assert (=> b!4325278 m!4920245))

(assert (=> b!4325166 d!1271786))

(declare-fun b!4325289 () Bool)

(declare-fun e!2691177 () List!48542)

(assert (=> b!4325289 (= e!2691177 (Cons!48418 (h!53885 lt!1542437) (removePairForKey!283 (t!355442 lt!1542437) key!2048)))))

(declare-fun b!4325288 () Bool)

(declare-fun e!2691178 () List!48542)

(assert (=> b!4325288 (= e!2691178 e!2691177)))

(declare-fun c!735872 () Bool)

(assert (=> b!4325288 (= c!735872 ((_ is Cons!48418) lt!1542437))))

(declare-fun b!4325287 () Bool)

(assert (=> b!4325287 (= e!2691178 (t!355442 lt!1542437))))

(declare-fun b!4325290 () Bool)

(assert (=> b!4325290 (= e!2691177 Nil!48418)))

(declare-fun d!1271788 () Bool)

(declare-fun lt!1542595 () List!48542)

(declare-fun containsKey!420 (List!48542 K!9674) Bool)

(assert (=> d!1271788 (not (containsKey!420 lt!1542595 key!2048))))

(assert (=> d!1271788 (= lt!1542595 e!2691178)))

(declare-fun c!735871 () Bool)

(assert (=> d!1271788 (= c!735871 (and ((_ is Cons!48418) lt!1542437) (= (_1!26940 (h!53885 lt!1542437)) key!2048)))))

(declare-fun noDuplicateKeys!269 (List!48542) Bool)

(assert (=> d!1271788 (noDuplicateKeys!269 lt!1542437)))

(assert (=> d!1271788 (= (removePairForKey!283 lt!1542437 key!2048) lt!1542595)))

(assert (= (and d!1271788 c!735871) b!4325287))

(assert (= (and d!1271788 (not c!735871)) b!4325288))

(assert (= (and b!4325288 c!735872) b!4325289))

(assert (= (and b!4325288 (not c!735872)) b!4325290))

(declare-fun m!4920247 () Bool)

(assert (=> b!4325289 m!4920247))

(declare-fun m!4920249 () Bool)

(assert (=> d!1271788 m!4920249))

(declare-fun m!4920251 () Bool)

(assert (=> d!1271788 m!4920251))

(assert (=> b!4325156 d!1271788))

(declare-fun d!1271790 () Bool)

(assert (=> d!1271790 (allKeysSameHash!260 (removePairForKey!283 lt!1542437 key!2048) lt!1542435 (hashF!6987 thiss!42308))))

(declare-fun lt!1542598 () Unit!67963)

(declare-fun choose!26451 (List!48542 K!9674 (_ BitVec 64) Hashable!4687) Unit!67963)

(assert (=> d!1271790 (= lt!1542598 (choose!26451 lt!1542437 key!2048 lt!1542435 (hashF!6987 thiss!42308)))))

(assert (=> d!1271790 (noDuplicateKeys!269 lt!1542437)))

(assert (=> d!1271790 (= (lemmaRemovePairForKeyPreservesHash!236 lt!1542437 key!2048 lt!1542435 (hashF!6987 thiss!42308)) lt!1542598)))

(declare-fun bs!607344 () Bool)

(assert (= bs!607344 d!1271790))

(assert (=> bs!607344 m!4919987))

(assert (=> bs!607344 m!4919987))

(assert (=> bs!607344 m!4919989))

(declare-fun m!4920253 () Bool)

(assert (=> bs!607344 m!4920253))

(assert (=> bs!607344 m!4920251))

(assert (=> b!4325156 d!1271790))

(declare-fun d!1271792 () Bool)

(assert (=> d!1271792 true))

(assert (=> d!1271792 true))

(declare-fun lambda!134278 () Int)

(declare-fun forall!8836 (List!48542 Int) Bool)

(assert (=> d!1271792 (= (allKeysSameHash!260 (removePairForKey!283 lt!1542437 key!2048) lt!1542435 (hashF!6987 thiss!42308)) (forall!8836 (removePairForKey!283 lt!1542437 key!2048) lambda!134278))))

(declare-fun bs!607345 () Bool)

(assert (= bs!607345 d!1271792))

(assert (=> bs!607345 m!4919987))

(declare-fun m!4920255 () Bool)

(assert (=> bs!607345 m!4920255))

(assert (=> b!4325156 d!1271792))

(declare-fun bs!607346 () Bool)

(declare-fun d!1271794 () Bool)

(assert (= bs!607346 (and d!1271794 d!1271792)))

(declare-fun lambda!134279 () Int)

(assert (=> bs!607346 (= lambda!134279 lambda!134278)))

(assert (=> d!1271794 true))

(assert (=> d!1271794 true))

(assert (=> d!1271794 (= (allKeysSameHash!260 lt!1542437 lt!1542435 (hashF!6987 thiss!42308)) (forall!8836 lt!1542437 lambda!134279))))

(declare-fun bs!607347 () Bool)

(assert (= bs!607347 d!1271794))

(declare-fun m!4920257 () Bool)

(assert (=> bs!607347 m!4920257))

(assert (=> b!4325156 d!1271794))

(declare-fun bs!607348 () Bool)

(declare-fun d!1271796 () Bool)

(assert (= bs!607348 (and d!1271796 d!1271758)))

(declare-fun lambda!134282 () Int)

(assert (=> bs!607348 (not (= lambda!134282 lambda!134266))))

(declare-fun bs!607349 () Bool)

(assert (= bs!607349 (and d!1271796 b!4325166)))

(assert (=> bs!607349 (not (= lambda!134282 lambda!134257))))

(declare-fun bs!607350 () Bool)

(assert (= bs!607350 (and d!1271796 d!1271768)))

(assert (=> bs!607350 (not (= lambda!134282 lambda!134271))))

(declare-fun bs!607351 () Bool)

(assert (= bs!607351 (and d!1271796 b!4325200)))

(assert (=> bs!607351 (not (= lambda!134282 lambda!134260))))

(declare-fun bs!607352 () Bool)

(assert (= bs!607352 (and d!1271796 d!1271746)))

(assert (=> bs!607352 (= lambda!134282 lambda!134263)))

(declare-fun bs!607353 () Bool)

(assert (= bs!607353 (and d!1271796 d!1271778)))

(assert (=> bs!607353 (not (= lambda!134282 lambda!134274))))

(declare-fun bs!607354 () Bool)

(assert (= bs!607354 (and d!1271796 d!1271780)))

(assert (=> bs!607354 (not (= lambda!134282 lambda!134275))))

(assert (=> d!1271796 true))

(assert (=> d!1271796 (allKeysSameHash!260 lt!1542437 lt!1542435 (hashF!6987 thiss!42308))))

(declare-fun lt!1542601 () Unit!67963)

(declare-fun choose!26452 (List!48543 (_ BitVec 64) List!48542 Hashable!4687) Unit!67963)

(assert (=> d!1271796 (= lt!1542601 (choose!26452 (toList!2588 lt!1542444) lt!1542435 lt!1542437 (hashF!6987 thiss!42308)))))

(assert (=> d!1271796 (forall!8835 (toList!2588 lt!1542444) lambda!134282)))

(assert (=> d!1271796 (= (lemmaInLongMapAllKeySameHashThenForTuple!245 (toList!2588 lt!1542444) lt!1542435 lt!1542437 (hashF!6987 thiss!42308)) lt!1542601)))

(declare-fun bs!607355 () Bool)

(assert (= bs!607355 d!1271796))

(assert (=> bs!607355 m!4919995))

(declare-fun m!4920259 () Bool)

(assert (=> bs!607355 m!4920259))

(declare-fun m!4920261 () Bool)

(assert (=> bs!607355 m!4920261))

(assert (=> b!4325156 d!1271796))

(declare-fun bs!607356 () Bool)

(declare-fun b!4325299 () Bool)

(assert (= bs!607356 (and b!4325299 d!1271796)))

(declare-fun lambda!134285 () Int)

(assert (=> bs!607356 (not (= lambda!134285 lambda!134282))))

(declare-fun bs!607357 () Bool)

(assert (= bs!607357 (and b!4325299 d!1271758)))

(assert (=> bs!607357 (= lambda!134285 lambda!134266)))

(declare-fun bs!607358 () Bool)

(assert (= bs!607358 (and b!4325299 b!4325166)))

(assert (=> bs!607358 (= lambda!134285 lambda!134257)))

(declare-fun bs!607359 () Bool)

(assert (= bs!607359 (and b!4325299 d!1271768)))

(assert (=> bs!607359 (= lambda!134285 lambda!134271)))

(declare-fun bs!607360 () Bool)

(assert (= bs!607360 (and b!4325299 b!4325200)))

(assert (=> bs!607360 (= lambda!134285 lambda!134260)))

(declare-fun bs!607361 () Bool)

(assert (= bs!607361 (and b!4325299 d!1271746)))

(assert (=> bs!607361 (not (= lambda!134285 lambda!134263))))

(declare-fun bs!607362 () Bool)

(assert (= bs!607362 (and b!4325299 d!1271778)))

(assert (=> bs!607362 (= lambda!134285 lambda!134274)))

(declare-fun bs!607363 () Bool)

(assert (= bs!607363 (and b!4325299 d!1271780)))

(assert (=> bs!607363 (= lambda!134285 lambda!134275)))

(declare-fun d!1271798 () Bool)

(declare-fun res!1772574 () Bool)

(declare-fun e!2691181 () Bool)

(assert (=> d!1271798 (=> (not res!1772574) (not e!2691181))))

(assert (=> d!1271798 (= res!1772574 (valid!3787 (v!42856 (underlying!9772 thiss!42308))))))

(assert (=> d!1271798 (= (valid!3786 thiss!42308) e!2691181)))

(declare-fun res!1772575 () Bool)

(assert (=> b!4325299 (=> (not res!1772575) (not e!2691181))))

(assert (=> b!4325299 (= res!1772575 (forall!8835 (toList!2588 (map!10454 (v!42856 (underlying!9772 thiss!42308)))) lambda!134285))))

(declare-fun b!4325300 () Bool)

(assert (=> b!4325300 (= e!2691181 (allKeysSameHashInMap!402 (map!10454 (v!42856 (underlying!9772 thiss!42308))) (hashF!6987 thiss!42308)))))

(assert (= (and d!1271798 res!1772574) b!4325299))

(assert (= (and b!4325299 res!1772575) b!4325300))

(assert (=> d!1271798 m!4920101))

(assert (=> b!4325299 m!4920005))

(declare-fun m!4920263 () Bool)

(assert (=> b!4325299 m!4920263))

(assert (=> b!4325300 m!4920005))

(assert (=> b!4325300 m!4920005))

(declare-fun m!4920265 () Bool)

(assert (=> b!4325300 m!4920265))

(assert (=> b!4325161 d!1271798))

(declare-fun b!4325319 () Bool)

(declare-fun res!1772582 () Bool)

(declare-fun e!2691194 () Bool)

(assert (=> b!4325319 (=> (not res!1772582) (not e!2691194))))

(declare-fun lt!1542612 () tuple2!47308)

(assert (=> b!4325319 (= res!1772582 (valid!3787 (_2!26942 lt!1542612)))))

(declare-fun b!4325320 () Bool)

(declare-fun e!2691193 () Bool)

(declare-fun e!2691196 () Bool)

(assert (=> b!4325320 (= e!2691193 e!2691196)))

(declare-fun res!1772583 () Bool)

(declare-fun call!300129 () ListLongMap!1205)

(assert (=> b!4325320 (= res!1772583 (contains!10495 call!300129 lt!1542435))))

(assert (=> b!4325320 (=> (not res!1772583) (not e!2691196))))

(declare-fun b!4325321 () Bool)

(declare-fun e!2691192 () tuple2!47308)

(declare-fun lt!1542613 () tuple2!47308)

(assert (=> b!4325321 (= e!2691192 (tuple2!47309 (_1!26942 lt!1542613) (_2!26942 lt!1542613)))))

(declare-fun repack!91 (MutLongMap!4771) tuple2!47308)

(assert (=> b!4325321 (= lt!1542613 (repack!91 (v!42856 (underlying!9772 thiss!42308))))))

(declare-fun b!4325322 () Bool)

(declare-fun call!300128 () ListLongMap!1205)

(assert (=> b!4325322 (= e!2691193 (= call!300129 call!300128))))

(declare-fun b!4325323 () Bool)

(assert (=> b!4325323 (= e!2691192 (tuple2!47309 true (v!42856 (underlying!9772 thiss!42308))))))

(declare-fun b!4325324 () Bool)

(declare-fun e!2691195 () tuple2!47308)

(declare-datatypes ((tuple2!47310 0))(
  ( (tuple2!47311 (_1!26943 Bool) (_2!26943 LongMapFixedSize!9542)) )
))
(declare-fun lt!1542611 () tuple2!47310)

(assert (=> b!4325324 (= e!2691195 (tuple2!47309 (_1!26943 lt!1542611) (LongMap!4771 (Cell!18894 (_2!26943 lt!1542611)))))))

(declare-fun lt!1542610 () tuple2!47308)

(declare-fun update!551 (LongMapFixedSize!9542 (_ BitVec 64) List!48542) tuple2!47310)

(assert (=> b!4325324 (= lt!1542611 (update!551 (v!42855 (underlying!9771 (_2!26942 lt!1542610))) lt!1542435 lt!1542448))))

(declare-fun d!1271800 () Bool)

(assert (=> d!1271800 e!2691194))

(declare-fun res!1772584 () Bool)

(assert (=> d!1271800 (=> (not res!1772584) (not e!2691194))))

(assert (=> d!1271800 (= res!1772584 ((_ is LongMap!4771) (_2!26942 lt!1542612)))))

(assert (=> d!1271800 (= lt!1542612 e!2691195)))

(declare-fun c!735881 () Bool)

(assert (=> d!1271800 (= c!735881 (_1!26942 lt!1542610))))

(assert (=> d!1271800 (= lt!1542610 e!2691192)))

(declare-fun c!735880 () Bool)

(declare-fun imbalanced!87 (MutLongMap!4771) Bool)

(assert (=> d!1271800 (= c!735880 (imbalanced!87 (v!42856 (underlying!9772 thiss!42308))))))

(assert (=> d!1271800 (valid!3787 (v!42856 (underlying!9772 thiss!42308)))))

(assert (=> d!1271800 (= (update!550 (v!42856 (underlying!9772 thiss!42308)) lt!1542435 lt!1542448) lt!1542612)))

(declare-fun b!4325325 () Bool)

(assert (=> b!4325325 (= e!2691195 (tuple2!47309 false (_2!26942 lt!1542610)))))

(declare-fun b!4325326 () Bool)

(assert (=> b!4325326 (= e!2691196 (= call!300129 (+!357 call!300128 (tuple2!47307 lt!1542435 lt!1542448))))))

(declare-fun bm!300123 () Bool)

(assert (=> bm!300123 (= call!300128 (map!10454 (v!42856 (underlying!9772 thiss!42308))))))

(declare-fun bm!300124 () Bool)

(assert (=> bm!300124 (= call!300129 (map!10454 (_2!26942 lt!1542612)))))

(declare-fun b!4325327 () Bool)

(assert (=> b!4325327 (= e!2691194 e!2691193)))

(declare-fun c!735879 () Bool)

(assert (=> b!4325327 (= c!735879 (_1!26942 lt!1542612))))

(assert (= (and d!1271800 c!735880) b!4325321))

(assert (= (and d!1271800 (not c!735880)) b!4325323))

(assert (= (and d!1271800 c!735881) b!4325324))

(assert (= (and d!1271800 (not c!735881)) b!4325325))

(assert (= (and d!1271800 res!1772584) b!4325319))

(assert (= (and b!4325319 res!1772582) b!4325327))

(assert (= (and b!4325327 c!735879) b!4325320))

(assert (= (and b!4325327 (not c!735879)) b!4325322))

(assert (= (and b!4325320 res!1772583) b!4325326))

(assert (= (or b!4325320 b!4325326 b!4325322) bm!300124))

(assert (= (or b!4325326 b!4325322) bm!300123))

(declare-fun m!4920267 () Bool)

(assert (=> b!4325321 m!4920267))

(declare-fun m!4920269 () Bool)

(assert (=> b!4325326 m!4920269))

(declare-fun m!4920271 () Bool)

(assert (=> bm!300124 m!4920271))

(declare-fun m!4920273 () Bool)

(assert (=> b!4325320 m!4920273))

(declare-fun m!4920275 () Bool)

(assert (=> b!4325324 m!4920275))

(declare-fun m!4920277 () Bool)

(assert (=> b!4325319 m!4920277))

(assert (=> bm!300123 m!4920005))

(declare-fun m!4920279 () Bool)

(assert (=> d!1271800 m!4920279))

(assert (=> d!1271800 m!4920101))

(assert (=> b!4325163 d!1271800))

(declare-fun d!1271802 () Bool)

(declare-fun lt!1542616 () Bool)

(assert (=> d!1271802 (= lt!1542616 (contains!10495 (map!10454 (v!42856 (underlying!9772 thiss!42308))) lt!1542435))))

(declare-fun contains!10499 (LongMapFixedSize!9542 (_ BitVec 64)) Bool)

(assert (=> d!1271802 (= lt!1542616 (contains!10499 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308)))) lt!1542435))))

(assert (=> d!1271802 (valid!3787 (v!42856 (underlying!9772 thiss!42308)))))

(assert (=> d!1271802 (= (contains!10493 (v!42856 (underlying!9772 thiss!42308)) lt!1542435) lt!1542616)))

(declare-fun bs!607364 () Bool)

(assert (= bs!607364 d!1271802))

(assert (=> bs!607364 m!4920005))

(assert (=> bs!607364 m!4920005))

(declare-fun m!4920281 () Bool)

(assert (=> bs!607364 m!4920281))

(declare-fun m!4920283 () Bool)

(assert (=> bs!607364 m!4920283))

(assert (=> bs!607364 m!4920101))

(assert (=> b!4325163 d!1271802))

(declare-fun d!1271804 () Bool)

(declare-fun hash!1231 (Hashable!4687 K!9674) (_ BitVec 64))

(assert (=> d!1271804 (= (hash!1226 (hashF!6987 thiss!42308) key!2048) (hash!1231 (hashF!6987 thiss!42308) key!2048))))

(declare-fun bs!607365 () Bool)

(assert (= bs!607365 d!1271804))

(declare-fun m!4920285 () Bool)

(assert (=> bs!607365 m!4920285))

(assert (=> b!4325163 d!1271804))

(declare-fun bs!607366 () Bool)

(declare-fun d!1271806 () Bool)

(assert (= bs!607366 (and d!1271806 d!1271796)))

(declare-fun lambda!134286 () Int)

(assert (=> bs!607366 (= lambda!134286 lambda!134282)))

(declare-fun bs!607367 () Bool)

(assert (= bs!607367 (and d!1271806 d!1271758)))

(assert (=> bs!607367 (not (= lambda!134286 lambda!134266))))

(declare-fun bs!607368 () Bool)

(assert (= bs!607368 (and d!1271806 d!1271768)))

(assert (=> bs!607368 (not (= lambda!134286 lambda!134271))))

(declare-fun bs!607369 () Bool)

(assert (= bs!607369 (and d!1271806 b!4325200)))

(assert (=> bs!607369 (not (= lambda!134286 lambda!134260))))

(declare-fun bs!607370 () Bool)

(assert (= bs!607370 (and d!1271806 d!1271746)))

(assert (=> bs!607370 (= lambda!134286 lambda!134263)))

(declare-fun bs!607371 () Bool)

(assert (= bs!607371 (and d!1271806 d!1271778)))

(assert (=> bs!607371 (not (= lambda!134286 lambda!134274))))

(declare-fun bs!607372 () Bool)

(assert (= bs!607372 (and d!1271806 d!1271780)))

(assert (=> bs!607372 (not (= lambda!134286 lambda!134275))))

(declare-fun bs!607373 () Bool)

(assert (= bs!607373 (and d!1271806 b!4325299)))

(assert (=> bs!607373 (not (= lambda!134286 lambda!134285))))

(declare-fun bs!607374 () Bool)

(assert (= bs!607374 (and d!1271806 b!4325166)))

(assert (=> bs!607374 (not (= lambda!134286 lambda!134257))))

(assert (=> d!1271806 true))

(assert (=> d!1271806 (= (allKeysSameHashInMap!402 lt!1542442 (hashF!6987 thiss!42308)) (forall!8835 (toList!2588 lt!1542442) lambda!134286))))

(declare-fun bs!607375 () Bool)

(assert (= bs!607375 d!1271806))

(declare-fun m!4920287 () Bool)

(assert (=> bs!607375 m!4920287))

(assert (=> b!4325167 d!1271806))

(declare-fun mapIsEmpty!21267 () Bool)

(declare-fun mapRes!21267 () Bool)

(assert (=> mapIsEmpty!21267 mapRes!21267))

(declare-fun e!2691201 () Bool)

(declare-fun tp!1327463 () Bool)

(declare-fun b!4325335 () Bool)

(assert (=> b!4325335 (= e!2691201 (and tp_is_empty!24183 tp_is_empty!24181 tp!1327463))))

(declare-fun mapNonEmpty!21267 () Bool)

(declare-fun tp!1327465 () Bool)

(declare-fun e!2691202 () Bool)

(assert (=> mapNonEmpty!21267 (= mapRes!21267 (and tp!1327465 e!2691202))))

(declare-fun mapValue!21267 () List!48542)

(declare-fun mapRest!21267 () (Array (_ BitVec 32) List!48542))

(declare-fun mapKey!21267 () (_ BitVec 32))

(assert (=> mapNonEmpty!21267 (= mapRest!21264 (store mapRest!21267 mapKey!21267 mapValue!21267))))

(declare-fun condMapEmpty!21267 () Bool)

(declare-fun mapDefault!21267 () List!48542)

(assert (=> mapNonEmpty!21264 (= condMapEmpty!21267 (= mapRest!21264 ((as const (Array (_ BitVec 32) List!48542)) mapDefault!21267)))))

(assert (=> mapNonEmpty!21264 (= tp!1327454 (and e!2691201 mapRes!21267))))

(declare-fun tp!1327464 () Bool)

(declare-fun b!4325334 () Bool)

(assert (=> b!4325334 (= e!2691202 (and tp_is_empty!24183 tp_is_empty!24181 tp!1327464))))

(assert (= (and mapNonEmpty!21264 condMapEmpty!21267) mapIsEmpty!21267))

(assert (= (and mapNonEmpty!21264 (not condMapEmpty!21267)) mapNonEmpty!21267))

(assert (= (and mapNonEmpty!21267 ((_ is Cons!48418) mapValue!21267)) b!4325334))

(assert (= (and mapNonEmpty!21264 ((_ is Cons!48418) mapDefault!21267)) b!4325335))

(declare-fun m!4920289 () Bool)

(assert (=> mapNonEmpty!21267 m!4920289))

(declare-fun e!2691205 () Bool)

(declare-fun tp!1327468 () Bool)

(declare-fun b!4325340 () Bool)

(assert (=> b!4325340 (= e!2691205 (and tp_is_empty!24183 tp_is_empty!24181 tp!1327468))))

(assert (=> mapNonEmpty!21264 (= tp!1327456 e!2691205)))

(assert (= (and mapNonEmpty!21264 ((_ is Cons!48418) mapValue!21264)) b!4325340))

(declare-fun e!2691206 () Bool)

(declare-fun tp!1327469 () Bool)

(declare-fun b!4325341 () Bool)

(assert (=> b!4325341 (= e!2691206 (and tp_is_empty!24183 tp_is_empty!24181 tp!1327469))))

(assert (=> b!4325162 (= tp!1327453 e!2691206)))

(assert (= (and b!4325162 ((_ is Cons!48418) (zeroValue!5048 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308))))))) b!4325341))

(declare-fun e!2691207 () Bool)

(declare-fun b!4325342 () Bool)

(declare-fun tp!1327470 () Bool)

(assert (=> b!4325342 (= e!2691207 (and tp_is_empty!24183 tp_is_empty!24181 tp!1327470))))

(assert (=> b!4325162 (= tp!1327452 e!2691207)))

(assert (= (and b!4325162 ((_ is Cons!48418) (minValue!5048 (v!42855 (underlying!9771 (v!42856 (underlying!9772 thiss!42308))))))) b!4325342))

(declare-fun b!4325343 () Bool)

(declare-fun tp!1327471 () Bool)

(declare-fun e!2691208 () Bool)

(assert (=> b!4325343 (= e!2691208 (and tp_is_empty!24183 tp_is_empty!24181 tp!1327471))))

(assert (=> b!4325157 (= tp!1327451 e!2691208)))

(assert (= (and b!4325157 ((_ is Cons!48418) mapDefault!21264)) b!4325343))

(declare-fun b_lambda!127533 () Bool)

(assert (= b_lambda!127527 (or (and b!4325162 b_free!129043) b_lambda!127533)))

(declare-fun b_lambda!127535 () Bool)

(assert (= b_lambda!127531 (or b!4325166 b_lambda!127535)))

(declare-fun bs!607376 () Bool)

(declare-fun d!1271808 () Bool)

(assert (= bs!607376 (and d!1271808 b!4325166)))

(assert (=> bs!607376 (= (dynLambda!20523 lambda!134257 (h!53886 (toList!2588 lt!1542442))) (noDuplicateKeys!269 (_2!26941 (h!53886 (toList!2588 lt!1542442)))))))

(declare-fun m!4920291 () Bool)

(assert (=> bs!607376 m!4920291))

(assert (=> b!4325275 d!1271808))

(declare-fun b_lambda!127537 () Bool)

(assert (= b_lambda!127529 (or b!4325166 b_lambda!127537)))

(declare-fun bs!607377 () Bool)

(declare-fun d!1271810 () Bool)

(assert (= bs!607377 (and d!1271810 b!4325166)))

(assert (=> bs!607377 (= (dynLambda!20523 lambda!134257 (h!53886 (toList!2588 lt!1542446))) (noDuplicateKeys!269 (_2!26941 (h!53886 (toList!2588 lt!1542446)))))))

(declare-fun m!4920293 () Bool)

(assert (=> bs!607377 m!4920293))

(assert (=> b!4325226 d!1271810))

(check-sat (not d!1271780) (not b!4325220) (not b!4325278) (not d!1271760) (not b_lambda!127533) (not bm!300112) (not b!4325251) (not b!4325208) (not d!1271800) (not b!4325214) (not b!4325341) (not bm!300117) (not b!4325255) (not b!4325334) (not d!1271786) (not b!4325260) (not b!4325299) (not d!1271768) (not d!1271776) (not d!1271770) (not b!4325262) (not b!4325289) (not b!4325193) (not b!4325319) (not b!4325258) (not b!4325227) (not b_next!129747) (not d!1271758) (not b!4325335) (not b!4325253) (not b!4325324) (not tb!257385) (not b!4325343) (not bm!300118) (not bm!300123) (not b!4325199) (not d!1271778) (not b!4325320) (not b!4325277) (not d!1271756) tp_is_empty!24181 b_and!340625 (not b!4325271) (not b!4325254) (not b!4325263) (not bs!607376) (not d!1271794) (not d!1271788) (not b!4325326) (not b!4325200) (not b!4325252) (not d!1271798) (not b!4325342) (not b!4325321) (not b!4325221) (not d!1271790) (not bs!607377) (not b_next!129749) (not d!1271754) (not bm!300111) (not d!1271772) (not b!4325194) (not bm!300114) b_and!340627 (not d!1271796) (not d!1271774) (not d!1271764) (not b!4325272) (not d!1271766) (not d!1271744) (not b!4325246) (not b!4325273) (not d!1271740) (not b!4325249) (not d!1271742) tp_is_empty!24183 (not d!1271792) (not b_lambda!127535) (not bm!300124) (not bm!300109) (not b!4325266) (not b_lambda!127537) (not b!4325276) (not d!1271806) (not b!4325261) (not bm!300113) (not b!4325340) (not bm!300110) (not b!4325197) (not b!4325300) (not d!1271748) (not d!1271804) (not mapNonEmpty!21267) (not b!4325248) (not d!1271746) (not d!1271802) (not b!4325257))
(check-sat b_and!340627 b_and!340625 (not b_next!129749) (not b_next!129747))

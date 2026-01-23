; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414356 () Bool)

(assert start!414356)

(declare-fun b!4311089 () Bool)

(declare-fun b_free!128659 () Bool)

(declare-fun b_next!129363 () Bool)

(assert (=> b!4311089 (= b_free!128659 (not b_next!129363))))

(declare-fun tp!1324851 () Bool)

(declare-fun b_and!340095 () Bool)

(assert (=> b!4311089 (= tp!1324851 b_and!340095)))

(declare-fun b!4311080 () Bool)

(declare-fun b_free!128661 () Bool)

(declare-fun b_next!129365 () Bool)

(assert (=> b!4311080 (= b_free!128661 (not b_next!129365))))

(declare-fun tp!1324848 () Bool)

(declare-fun b_and!340097 () Bool)

(assert (=> b!4311080 (= tp!1324848 b_and!340097)))

(declare-fun b!4311079 () Bool)

(declare-fun e!2681253 () Bool)

(declare-fun tp!1324850 () Bool)

(declare-fun mapRes!20870 () Bool)

(assert (=> b!4311079 (= e!2681253 (and tp!1324850 mapRes!20870))))

(declare-fun condMapEmpty!20870 () Bool)

(declare-datatypes ((V!9636 0))(
  ( (V!9637 (val!15805 Int)) )
))
(declare-datatypes ((K!9434 0))(
  ( (K!9435 (val!15806 Int)) )
))
(declare-datatypes ((tuple2!46704 0))(
  ( (tuple2!46705 (_1!26632 K!9434) (_2!26632 V!9636)) )
))
(declare-datatypes ((List!48342 0))(
  ( (Nil!48218) (Cons!48218 (h!53657 tuple2!46704) (t!355157 List!48342)) )
))
(declare-datatypes ((array!16870 0))(
  ( (array!16871 (arr!7535 (Array (_ BitVec 32) (_ BitVec 64))) (size!35574 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4591 0))(
  ( (HashableExt!4590 (__x!30050 Int)) )
))
(declare-datatypes ((array!16872 0))(
  ( (array!16873 (arr!7536 (Array (_ BitVec 32) List!48342)) (size!35575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9350 0))(
  ( (LongMapFixedSize!9351 (defaultEntry!5060 Int) (mask!13241 (_ BitVec 32)) (extraKeys!4924 (_ BitVec 32)) (zeroValue!4934 List!48342) (minValue!4934 List!48342) (_size!9393 (_ BitVec 32)) (_keys!4975 array!16870) (_values!4956 array!16872) (_vacant!4736 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18509 0))(
  ( (Cell!18510 (v!42389 LongMapFixedSize!9350)) )
))
(declare-datatypes ((MutLongMap!4675 0))(
  ( (LongMap!4675 (underlying!9579 Cell!18509)) (MutLongMapExt!4674 (__x!30051 Int)) )
))
(declare-datatypes ((Cell!18511 0))(
  ( (Cell!18512 (v!42390 MutLongMap!4675)) )
))
(declare-datatypes ((MutableMap!4581 0))(
  ( (MutableMapExt!4580 (__x!30052 Int)) (HashMap!4581 (underlying!9580 Cell!18511) (hashF!6722 Hashable!4591) (_size!9394 (_ BitVec 32)) (defaultValue!4752 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4581)

(declare-fun mapDefault!20870 () List!48342)

(assert (=> b!4311079 (= condMapEmpty!20870 (= (arr!7536 (_values!4956 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48342)) mapDefault!20870)))))

(declare-fun e!2681256 () Bool)

(declare-fun e!2681257 () Bool)

(assert (=> b!4311080 (= e!2681256 (and e!2681257 tp!1324848))))

(declare-fun b!4311081 () Bool)

(declare-fun e!2681255 () Bool)

(declare-fun lt!1531460 () List!48342)

(declare-fun noDuplicateKeys!218 (List!48342) Bool)

(assert (=> b!4311081 (= e!2681255 (noDuplicateKeys!218 lt!1531460))))

(declare-fun b!4311082 () Bool)

(declare-fun e!2681261 () Bool)

(declare-fun e!2681259 () Bool)

(assert (=> b!4311082 (= e!2681261 e!2681259)))

(declare-fun res!1766821 () Bool)

(assert (=> b!4311082 (=> (not res!1766821) (not e!2681259))))

(declare-fun lt!1531459 () (_ BitVec 64))

(declare-datatypes ((tuple2!46706 0))(
  ( (tuple2!46707 (_1!26633 Bool) (_2!26633 MutLongMap!4675)) )
))
(declare-fun update!446 (MutLongMap!4675 (_ BitVec 64) List!48342) tuple2!46706)

(assert (=> b!4311082 (= res!1766821 (_1!26633 (update!446 (v!42390 (underlying!9580 thiss!42308)) lt!1531459 lt!1531460)))))

(declare-fun v!9179 () V!9636)

(declare-fun lt!1531457 () List!48342)

(declare-fun key!2048 () K!9434)

(assert (=> b!4311082 (= lt!1531460 (Cons!48218 (tuple2!46705 key!2048 v!9179) lt!1531457))))

(declare-fun lt!1531456 () List!48342)

(declare-fun removePairForKey!218 (List!48342 K!9434) List!48342)

(assert (=> b!4311082 (= lt!1531457 (removePairForKey!218 lt!1531456 key!2048))))

(declare-fun apply!11029 (MutLongMap!4675 (_ BitVec 64)) List!48342)

(assert (=> b!4311082 (= lt!1531456 (apply!11029 (v!42390 (underlying!9580 thiss!42308)) lt!1531459))))

(declare-fun hash!1023 (Hashable!4591 K!9434) (_ BitVec 64))

(assert (=> b!4311082 (= lt!1531459 (hash!1023 (hashF!6722 thiss!42308) key!2048))))

(declare-fun b!4311083 () Bool)

(declare-fun res!1766819 () Bool)

(assert (=> b!4311083 (=> (not res!1766819) (not e!2681255))))

(declare-fun containsKey!321 (List!48342 K!9434) Bool)

(assert (=> b!4311083 (= res!1766819 (not (containsKey!321 lt!1531457 key!2048)))))

(declare-fun res!1766820 () Bool)

(declare-fun e!2681263 () Bool)

(assert (=> start!414356 (=> (not res!1766820) (not e!2681263))))

(get-info :version)

(assert (=> start!414356 (= res!1766820 ((_ is HashMap!4581) thiss!42308))))

(assert (=> start!414356 e!2681263))

(assert (=> start!414356 e!2681256))

(declare-fun tp_is_empty!23805 () Bool)

(assert (=> start!414356 tp_is_empty!23805))

(declare-fun tp_is_empty!23807 () Bool)

(assert (=> start!414356 tp_is_empty!23807))

(declare-fun b!4311084 () Bool)

(assert (=> b!4311084 (= e!2681263 e!2681261)))

(declare-fun res!1766818 () Bool)

(assert (=> b!4311084 (=> (not res!1766818) (not e!2681261))))

(declare-fun contains!10196 (MutableMap!4581 K!9434) Bool)

(assert (=> b!4311084 (= res!1766818 (contains!10196 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46708 0))(
  ( (tuple2!46709 (_1!26634 (_ BitVec 64)) (_2!26634 List!48342)) )
))
(declare-datatypes ((List!48343 0))(
  ( (Nil!48219) (Cons!48219 (h!53658 tuple2!46708) (t!355158 List!48343)) )
))
(declare-datatypes ((ListLongMap!1033 0))(
  ( (ListLongMap!1034 (toList!2421 List!48343)) )
))
(declare-fun lt!1531452 () ListLongMap!1033)

(declare-fun map!10215 (MutLongMap!4675) ListLongMap!1033)

(assert (=> b!4311084 (= lt!1531452 (map!10215 (v!42390 (underlying!9580 thiss!42308))))))

(declare-datatypes ((ListMap!1703 0))(
  ( (ListMap!1704 (toList!2422 List!48342)) )
))
(declare-fun lt!1531458 () ListMap!1703)

(declare-fun map!10216 (MutableMap!4581) ListMap!1703)

(assert (=> b!4311084 (= lt!1531458 (map!10216 thiss!42308))))

(declare-fun b!4311085 () Bool)

(declare-fun e!2681254 () Bool)

(declare-fun lt!1531454 () MutLongMap!4675)

(assert (=> b!4311085 (= e!2681257 (and e!2681254 ((_ is LongMap!4675) lt!1531454)))))

(assert (=> b!4311085 (= lt!1531454 (v!42390 (underlying!9580 thiss!42308)))))

(declare-fun b!4311086 () Bool)

(declare-fun res!1766817 () Bool)

(assert (=> b!4311086 (=> (not res!1766817) (not e!2681263))))

(declare-fun valid!3664 (MutableMap!4581) Bool)

(assert (=> b!4311086 (= res!1766817 (valid!3664 thiss!42308))))

(declare-fun b!4311087 () Bool)

(declare-fun lambda!132967 () Int)

(declare-fun forall!8738 (List!48343 Int) Bool)

(assert (=> b!4311087 (= e!2681259 (not (forall!8738 (toList!2421 lt!1531452) lambda!132967)))))

(assert (=> b!4311087 e!2681255))

(declare-fun res!1766816 () Bool)

(assert (=> b!4311087 (=> (not res!1766816) (not e!2681255))))

(assert (=> b!4311087 (= res!1766816 (noDuplicateKeys!218 lt!1531457))))

(declare-datatypes ((Unit!67350 0))(
  ( (Unit!67351) )
))
(declare-fun lt!1531455 () Unit!67350)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!168 (List!48342 K!9434) Unit!67350)

(assert (=> b!4311087 (= lt!1531455 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!168 lt!1531456 key!2048))))

(declare-fun allKeysSameHash!193 (List!48342 (_ BitVec 64) Hashable!4591) Bool)

(assert (=> b!4311087 (allKeysSameHash!193 lt!1531457 lt!1531459 (hashF!6722 thiss!42308))))

(declare-fun lt!1531451 () Unit!67350)

(declare-fun lemmaRemovePairForKeyPreservesHash!173 (List!48342 K!9434 (_ BitVec 64) Hashable!4591) Unit!67350)

(assert (=> b!4311087 (= lt!1531451 (lemmaRemovePairForKeyPreservesHash!173 lt!1531456 key!2048 lt!1531459 (hashF!6722 thiss!42308)))))

(assert (=> b!4311087 (allKeysSameHash!193 lt!1531456 lt!1531459 (hashF!6722 thiss!42308))))

(declare-fun lt!1531453 () Unit!67350)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!180 (List!48343 (_ BitVec 64) List!48342 Hashable!4591) Unit!67350)

(assert (=> b!4311087 (= lt!1531453 (lemmaInLongMapAllKeySameHashThenForTuple!180 (toList!2421 lt!1531452) lt!1531459 lt!1531456 (hashF!6722 thiss!42308)))))

(declare-fun mapIsEmpty!20870 () Bool)

(assert (=> mapIsEmpty!20870 mapRes!20870))

(declare-fun b!4311088 () Bool)

(declare-fun e!2681260 () Bool)

(assert (=> b!4311088 (= e!2681254 e!2681260)))

(declare-fun mapNonEmpty!20870 () Bool)

(declare-fun tp!1324849 () Bool)

(declare-fun tp!1324852 () Bool)

(assert (=> mapNonEmpty!20870 (= mapRes!20870 (and tp!1324849 tp!1324852))))

(declare-fun mapRest!20870 () (Array (_ BitVec 32) List!48342))

(declare-fun mapValue!20870 () List!48342)

(declare-fun mapKey!20870 () (_ BitVec 32))

(assert (=> mapNonEmpty!20870 (= (arr!7536 (_values!4956 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) (store mapRest!20870 mapKey!20870 mapValue!20870))))

(declare-fun e!2681262 () Bool)

(declare-fun tp!1324853 () Bool)

(declare-fun tp!1324854 () Bool)

(declare-fun array_inv!5409 (array!16870) Bool)

(declare-fun array_inv!5410 (array!16872) Bool)

(assert (=> b!4311089 (= e!2681262 (and tp!1324851 tp!1324853 tp!1324854 (array_inv!5409 (_keys!4975 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) (array_inv!5410 (_values!4956 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) e!2681253))))

(declare-fun b!4311090 () Bool)

(assert (=> b!4311090 (= e!2681260 e!2681262)))

(assert (= (and start!414356 res!1766820) b!4311086))

(assert (= (and b!4311086 res!1766817) b!4311084))

(assert (= (and b!4311084 res!1766818) b!4311082))

(assert (= (and b!4311082 res!1766821) b!4311087))

(assert (= (and b!4311087 res!1766816) b!4311083))

(assert (= (and b!4311083 res!1766819) b!4311081))

(assert (= (and b!4311079 condMapEmpty!20870) mapIsEmpty!20870))

(assert (= (and b!4311079 (not condMapEmpty!20870)) mapNonEmpty!20870))

(assert (= b!4311089 b!4311079))

(assert (= b!4311090 b!4311089))

(assert (= b!4311088 b!4311090))

(assert (= (and b!4311085 ((_ is LongMap!4675) (v!42390 (underlying!9580 thiss!42308)))) b!4311088))

(assert (= b!4311080 b!4311085))

(assert (= (and start!414356 ((_ is HashMap!4581) thiss!42308)) b!4311080))

(declare-fun m!4904019 () Bool)

(assert (=> b!4311084 m!4904019))

(declare-fun m!4904021 () Bool)

(assert (=> b!4311084 m!4904021))

(declare-fun m!4904023 () Bool)

(assert (=> b!4311084 m!4904023))

(declare-fun m!4904025 () Bool)

(assert (=> b!4311083 m!4904025))

(declare-fun m!4904027 () Bool)

(assert (=> b!4311082 m!4904027))

(declare-fun m!4904029 () Bool)

(assert (=> b!4311082 m!4904029))

(declare-fun m!4904031 () Bool)

(assert (=> b!4311082 m!4904031))

(declare-fun m!4904033 () Bool)

(assert (=> b!4311082 m!4904033))

(declare-fun m!4904035 () Bool)

(assert (=> mapNonEmpty!20870 m!4904035))

(declare-fun m!4904037 () Bool)

(assert (=> b!4311087 m!4904037))

(declare-fun m!4904039 () Bool)

(assert (=> b!4311087 m!4904039))

(declare-fun m!4904041 () Bool)

(assert (=> b!4311087 m!4904041))

(declare-fun m!4904043 () Bool)

(assert (=> b!4311087 m!4904043))

(declare-fun m!4904045 () Bool)

(assert (=> b!4311087 m!4904045))

(declare-fun m!4904047 () Bool)

(assert (=> b!4311087 m!4904047))

(declare-fun m!4904049 () Bool)

(assert (=> b!4311087 m!4904049))

(declare-fun m!4904051 () Bool)

(assert (=> b!4311089 m!4904051))

(declare-fun m!4904053 () Bool)

(assert (=> b!4311089 m!4904053))

(declare-fun m!4904055 () Bool)

(assert (=> b!4311081 m!4904055))

(declare-fun m!4904057 () Bool)

(assert (=> b!4311086 m!4904057))

(check-sat (not b!4311081) (not b!4311087) (not b!4311079) (not mapNonEmpty!20870) (not b_next!129365) tp_is_empty!23805 b_and!340095 (not b!4311086) (not b!4311082) (not b_next!129363) (not b!4311083) (not b!4311089) b_and!340097 (not b!4311084) tp_is_empty!23807)
(check-sat b_and!340095 b_and!340097 (not b_next!129365) (not b_next!129363))
(get-model)

(declare-fun bs!605106 () Bool)

(declare-fun b!4311122 () Bool)

(assert (= bs!605106 (and b!4311122 b!4311087)))

(declare-fun lambda!132970 () Int)

(assert (=> bs!605106 (= lambda!132970 lambda!132967)))

(declare-fun call!298034 () ListLongMap!1033)

(declare-fun bm!298026 () Bool)

(declare-fun call!298036 () (_ BitVec 64))

(declare-fun call!298031 () List!48342)

(declare-fun c!732949 () Bool)

(declare-fun lt!1531514 () ListLongMap!1033)

(declare-fun apply!11030 (ListLongMap!1033 (_ BitVec 64)) List!48342)

(assert (=> bm!298026 (= call!298031 (apply!11030 (ite c!732949 lt!1531514 call!298034) call!298036))))

(declare-fun b!4311113 () Bool)

(declare-fun e!2681284 () Unit!67350)

(declare-fun lt!1531513 () Unit!67350)

(assert (=> b!4311113 (= e!2681284 lt!1531513)))

(assert (=> b!4311113 (= lt!1531514 call!298034)))

(declare-fun lemmaInGenericMapThenInLongMap!137 (ListLongMap!1033 K!9434 Hashable!4591) Unit!67350)

(assert (=> b!4311113 (= lt!1531513 (lemmaInGenericMapThenInLongMap!137 lt!1531514 key!2048 (hashF!6722 thiss!42308)))))

(declare-fun res!1766828 () Bool)

(declare-fun call!298033 () Bool)

(assert (=> b!4311113 (= res!1766828 call!298033)))

(declare-fun e!2681278 () Bool)

(assert (=> b!4311113 (=> (not res!1766828) (not e!2681278))))

(assert (=> b!4311113 e!2681278))

(declare-fun bm!298027 () Bool)

(declare-datatypes ((Option!10237 0))(
  ( (None!10236) (Some!10236 (v!42395 tuple2!46704)) )
))
(declare-fun call!298035 () Option!10237)

(declare-fun getPair!137 (List!48342 K!9434) Option!10237)

(assert (=> bm!298027 (= call!298035 (getPair!137 call!298031 key!2048))))

(declare-fun b!4311114 () Bool)

(assert (=> b!4311114 false))

(declare-fun lt!1531511 () Unit!67350)

(declare-fun lt!1531520 () Unit!67350)

(assert (=> b!4311114 (= lt!1531511 lt!1531520)))

(declare-fun lt!1531509 () List!48343)

(declare-fun lt!1531519 () (_ BitVec 64))

(declare-fun lt!1531515 () List!48342)

(declare-fun contains!10197 (List!48343 tuple2!46708) Bool)

(assert (=> b!4311114 (contains!10197 lt!1531509 (tuple2!46709 lt!1531519 lt!1531515))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!148 (List!48343 (_ BitVec 64) List!48342) Unit!67350)

(assert (=> b!4311114 (= lt!1531520 (lemmaGetValueByKeyImpliesContainsTuple!148 lt!1531509 lt!1531519 lt!1531515))))

(assert (=> b!4311114 (= lt!1531515 (apply!11029 (v!42390 (underlying!9580 thiss!42308)) lt!1531519))))

(assert (=> b!4311114 (= lt!1531509 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308)))))))

(declare-fun lt!1531501 () Unit!67350)

(declare-fun lt!1531504 () Unit!67350)

(assert (=> b!4311114 (= lt!1531501 lt!1531504)))

(declare-fun lt!1531510 () List!48343)

(declare-datatypes ((Option!10238 0))(
  ( (None!10237) (Some!10237 (v!42396 List!48342)) )
))
(declare-fun isDefined!7539 (Option!10238) Bool)

(declare-fun getValueByKey!259 (List!48343 (_ BitVec 64)) Option!10238)

(assert (=> b!4311114 (isDefined!7539 (getValueByKey!259 lt!1531510 lt!1531519))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!179 (List!48343 (_ BitVec 64)) Unit!67350)

(assert (=> b!4311114 (= lt!1531504 (lemmaContainsKeyImpliesGetValueByKeyDefined!179 lt!1531510 lt!1531519))))

(assert (=> b!4311114 (= lt!1531510 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308)))))))

(declare-fun lt!1531507 () Unit!67350)

(declare-fun lt!1531502 () Unit!67350)

(assert (=> b!4311114 (= lt!1531507 lt!1531502)))

(declare-fun lt!1531508 () List!48343)

(declare-fun containsKey!322 (List!48343 (_ BitVec 64)) Bool)

(assert (=> b!4311114 (containsKey!322 lt!1531508 lt!1531519)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!138 (List!48343 (_ BitVec 64)) Unit!67350)

(assert (=> b!4311114 (= lt!1531502 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!138 lt!1531508 lt!1531519))))

(assert (=> b!4311114 (= lt!1531508 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308)))))))

(declare-fun e!2681279 () Unit!67350)

(declare-fun Unit!67352 () Unit!67350)

(assert (=> b!4311114 (= e!2681279 Unit!67352)))

(declare-fun bm!298028 () Bool)

(assert (=> bm!298028 (= call!298036 (hash!1023 (hashF!6722 thiss!42308) key!2048))))

(declare-fun b!4311115 () Bool)

(declare-fun e!2681281 () Unit!67350)

(declare-fun Unit!67353 () Unit!67350)

(assert (=> b!4311115 (= e!2681281 Unit!67353)))

(declare-fun b!4311116 () Bool)

(declare-fun call!298032 () Bool)

(assert (=> b!4311116 (= e!2681278 call!298032)))

(declare-fun b!4311117 () Bool)

(declare-fun e!2681282 () Bool)

(assert (=> b!4311117 (= e!2681282 call!298032)))

(declare-fun d!1268158 () Bool)

(declare-fun lt!1531506 () Bool)

(declare-fun contains!10198 (ListMap!1703 K!9434) Bool)

(assert (=> d!1268158 (= lt!1531506 (contains!10198 (map!10216 thiss!42308) key!2048))))

(declare-fun e!2681283 () Bool)

(assert (=> d!1268158 (= lt!1531506 e!2681283)))

(declare-fun res!1766829 () Bool)

(assert (=> d!1268158 (=> (not res!1766829) (not e!2681283))))

(declare-fun contains!10199 (MutLongMap!4675 (_ BitVec 64)) Bool)

(assert (=> d!1268158 (= res!1766829 (contains!10199 (v!42390 (underlying!9580 thiss!42308)) lt!1531519))))

(declare-fun lt!1531503 () Unit!67350)

(assert (=> d!1268158 (= lt!1531503 e!2681284)))

(declare-fun extractMap!332 (List!48343) ListMap!1703)

(assert (=> d!1268158 (= c!732949 (contains!10198 (extractMap!332 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308))))) key!2048))))

(declare-fun lt!1531505 () Unit!67350)

(assert (=> d!1268158 (= lt!1531505 e!2681281)))

(declare-fun c!732948 () Bool)

(assert (=> d!1268158 (= c!732948 (contains!10199 (v!42390 (underlying!9580 thiss!42308)) lt!1531519))))

(assert (=> d!1268158 (= lt!1531519 (hash!1023 (hashF!6722 thiss!42308) key!2048))))

(assert (=> d!1268158 (valid!3664 thiss!42308)))

(assert (=> d!1268158 (= (contains!10196 thiss!42308 key!2048) lt!1531506)))

(declare-fun bm!298029 () Bool)

(declare-fun contains!10200 (ListLongMap!1033 (_ BitVec 64)) Bool)

(assert (=> bm!298029 (= call!298033 (contains!10200 (ite c!732949 lt!1531514 call!298034) call!298036))))

(declare-fun b!4311118 () Bool)

(declare-fun e!2681280 () Unit!67350)

(declare-fun Unit!67354 () Unit!67350)

(assert (=> b!4311118 (= e!2681280 Unit!67354)))

(declare-fun b!4311119 () Bool)

(assert (=> b!4311119 (= e!2681284 e!2681280)))

(declare-fun res!1766830 () Bool)

(assert (=> b!4311119 (= res!1766830 call!298033)))

(assert (=> b!4311119 (=> (not res!1766830) (not e!2681282))))

(declare-fun c!732950 () Bool)

(assert (=> b!4311119 (= c!732950 e!2681282)))

(declare-fun bm!298030 () Bool)

(declare-fun isDefined!7540 (Option!10237) Bool)

(assert (=> bm!298030 (= call!298032 (isDefined!7540 call!298035))))

(declare-fun b!4311120 () Bool)

(declare-fun Unit!67355 () Unit!67350)

(assert (=> b!4311120 (= e!2681279 Unit!67355)))

(declare-fun b!4311121 () Bool)

(assert (=> b!4311121 false))

(declare-fun lt!1531518 () Unit!67350)

(declare-fun lt!1531512 () Unit!67350)

(assert (=> b!4311121 (= lt!1531518 lt!1531512)))

(declare-fun lt!1531516 () ListLongMap!1033)

(assert (=> b!4311121 (contains!10198 (extractMap!332 (toList!2421 lt!1531516)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!137 (ListLongMap!1033 K!9434 Hashable!4591) Unit!67350)

(assert (=> b!4311121 (= lt!1531512 (lemmaInLongMapThenInGenericMap!137 lt!1531516 key!2048 (hashF!6722 thiss!42308)))))

(assert (=> b!4311121 (= lt!1531516 call!298034)))

(declare-fun Unit!67356 () Unit!67350)

(assert (=> b!4311121 (= e!2681280 Unit!67356)))

(declare-fun forallContained!1504 (List!48343 Int tuple2!46708) Unit!67350)

(assert (=> b!4311122 (= e!2681281 (forallContained!1504 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308)))) lambda!132970 (tuple2!46709 lt!1531519 (apply!11029 (v!42390 (underlying!9580 thiss!42308)) lt!1531519))))))

(declare-fun c!732951 () Bool)

(assert (=> b!4311122 (= c!732951 (not (contains!10197 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308)))) (tuple2!46709 lt!1531519 (apply!11029 (v!42390 (underlying!9580 thiss!42308)) lt!1531519)))))))

(declare-fun lt!1531517 () Unit!67350)

(assert (=> b!4311122 (= lt!1531517 e!2681279)))

(declare-fun bm!298031 () Bool)

(assert (=> bm!298031 (= call!298034 (map!10215 (v!42390 (underlying!9580 thiss!42308))))))

(declare-fun b!4311123 () Bool)

(assert (=> b!4311123 (= e!2681283 (isDefined!7540 (getPair!137 (apply!11029 (v!42390 (underlying!9580 thiss!42308)) lt!1531519) key!2048)))))

(assert (= (and d!1268158 c!732948) b!4311122))

(assert (= (and d!1268158 (not c!732948)) b!4311115))

(assert (= (and b!4311122 c!732951) b!4311114))

(assert (= (and b!4311122 (not c!732951)) b!4311120))

(assert (= (and d!1268158 c!732949) b!4311113))

(assert (= (and d!1268158 (not c!732949)) b!4311119))

(assert (= (and b!4311113 res!1766828) b!4311116))

(assert (= (and b!4311119 res!1766830) b!4311117))

(assert (= (and b!4311119 c!732950) b!4311121))

(assert (= (and b!4311119 (not c!732950)) b!4311118))

(assert (= (or b!4311113 b!4311119 b!4311117 b!4311121) bm!298031))

(assert (= (or b!4311113 b!4311116 b!4311119 b!4311117) bm!298028))

(assert (= (or b!4311113 b!4311119) bm!298029))

(assert (= (or b!4311116 b!4311117) bm!298026))

(assert (= (or b!4311116 b!4311117) bm!298027))

(assert (= (or b!4311116 b!4311117) bm!298030))

(assert (= (and d!1268158 res!1766829) b!4311123))

(assert (=> bm!298028 m!4904033))

(assert (=> b!4311122 m!4904021))

(declare-fun m!4904059 () Bool)

(assert (=> b!4311122 m!4904059))

(declare-fun m!4904061 () Bool)

(assert (=> b!4311122 m!4904061))

(declare-fun m!4904063 () Bool)

(assert (=> b!4311122 m!4904063))

(declare-fun m!4904065 () Bool)

(assert (=> b!4311113 m!4904065))

(assert (=> d!1268158 m!4904023))

(assert (=> d!1268158 m!4904057))

(assert (=> d!1268158 m!4904033))

(assert (=> d!1268158 m!4904021))

(declare-fun m!4904067 () Bool)

(assert (=> d!1268158 m!4904067))

(declare-fun m!4904069 () Bool)

(assert (=> d!1268158 m!4904069))

(assert (=> d!1268158 m!4904067))

(declare-fun m!4904071 () Bool)

(assert (=> d!1268158 m!4904071))

(assert (=> d!1268158 m!4904023))

(declare-fun m!4904073 () Bool)

(assert (=> d!1268158 m!4904073))

(declare-fun m!4904075 () Bool)

(assert (=> bm!298030 m!4904075))

(declare-fun m!4904077 () Bool)

(assert (=> bm!298026 m!4904077))

(declare-fun m!4904079 () Bool)

(assert (=> b!4311121 m!4904079))

(assert (=> b!4311121 m!4904079))

(declare-fun m!4904081 () Bool)

(assert (=> b!4311121 m!4904081))

(declare-fun m!4904083 () Bool)

(assert (=> b!4311121 m!4904083))

(assert (=> b!4311114 m!4904059))

(declare-fun m!4904085 () Bool)

(assert (=> b!4311114 m!4904085))

(declare-fun m!4904087 () Bool)

(assert (=> b!4311114 m!4904087))

(assert (=> b!4311114 m!4904085))

(declare-fun m!4904089 () Bool)

(assert (=> b!4311114 m!4904089))

(declare-fun m!4904091 () Bool)

(assert (=> b!4311114 m!4904091))

(declare-fun m!4904093 () Bool)

(assert (=> b!4311114 m!4904093))

(declare-fun m!4904095 () Bool)

(assert (=> b!4311114 m!4904095))

(assert (=> b!4311114 m!4904021))

(declare-fun m!4904097 () Bool)

(assert (=> b!4311114 m!4904097))

(assert (=> bm!298031 m!4904021))

(assert (=> b!4311123 m!4904059))

(assert (=> b!4311123 m!4904059))

(declare-fun m!4904099 () Bool)

(assert (=> b!4311123 m!4904099))

(assert (=> b!4311123 m!4904099))

(declare-fun m!4904101 () Bool)

(assert (=> b!4311123 m!4904101))

(declare-fun m!4904103 () Bool)

(assert (=> bm!298027 m!4904103))

(declare-fun m!4904105 () Bool)

(assert (=> bm!298029 m!4904105))

(assert (=> b!4311084 d!1268158))

(declare-fun d!1268160 () Bool)

(declare-fun map!10217 (LongMapFixedSize!9350) ListLongMap!1033)

(assert (=> d!1268160 (= (map!10215 (v!42390 (underlying!9580 thiss!42308))) (map!10217 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308))))))))

(declare-fun bs!605107 () Bool)

(assert (= bs!605107 d!1268160))

(declare-fun m!4904107 () Bool)

(assert (=> bs!605107 m!4904107))

(assert (=> b!4311084 d!1268160))

(declare-fun d!1268162 () Bool)

(declare-fun lt!1531523 () ListMap!1703)

(declare-fun invariantList!576 (List!48342) Bool)

(assert (=> d!1268162 (invariantList!576 (toList!2422 lt!1531523))))

(assert (=> d!1268162 (= lt!1531523 (extractMap!332 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308))))))))

(assert (=> d!1268162 (valid!3664 thiss!42308)))

(assert (=> d!1268162 (= (map!10216 thiss!42308) lt!1531523)))

(declare-fun bs!605108 () Bool)

(assert (= bs!605108 d!1268162))

(declare-fun m!4904109 () Bool)

(assert (=> bs!605108 m!4904109))

(assert (=> bs!605108 m!4904021))

(assert (=> bs!605108 m!4904067))

(assert (=> bs!605108 m!4904057))

(assert (=> b!4311084 d!1268162))

(declare-fun b!4311142 () Bool)

(declare-fun e!2681298 () tuple2!46706)

(declare-fun lt!1531533 () tuple2!46706)

(assert (=> b!4311142 (= e!2681298 (tuple2!46707 (_1!26633 lt!1531533) (_2!26633 lt!1531533)))))

(declare-fun repack!59 (MutLongMap!4675) tuple2!46706)

(assert (=> b!4311142 (= lt!1531533 (repack!59 (v!42390 (underlying!9580 thiss!42308))))))

(declare-fun bm!298036 () Bool)

(declare-fun call!298042 () ListLongMap!1033)

(declare-fun lt!1531534 () tuple2!46706)

(assert (=> bm!298036 (= call!298042 (map!10215 (_2!26633 lt!1531534)))))

(declare-fun b!4311143 () Bool)

(declare-fun e!2681297 () Bool)

(declare-fun e!2681299 () Bool)

(assert (=> b!4311143 (= e!2681297 e!2681299)))

(declare-fun res!1766837 () Bool)

(assert (=> b!4311143 (= res!1766837 (contains!10200 call!298042 lt!1531459))))

(assert (=> b!4311143 (=> (not res!1766837) (not e!2681299))))

(declare-fun b!4311144 () Bool)

(declare-fun e!2681295 () tuple2!46706)

(declare-fun lt!1531532 () tuple2!46706)

(assert (=> b!4311144 (= e!2681295 (tuple2!46707 false (_2!26633 lt!1531532)))))

(declare-fun call!298041 () ListLongMap!1033)

(declare-fun b!4311145 () Bool)

(declare-fun +!272 (ListLongMap!1033 tuple2!46708) ListLongMap!1033)

(assert (=> b!4311145 (= e!2681299 (= call!298042 (+!272 call!298041 (tuple2!46709 lt!1531459 lt!1531460))))))

(declare-fun bm!298037 () Bool)

(assert (=> bm!298037 (= call!298041 (map!10215 (v!42390 (underlying!9580 thiss!42308))))))

(declare-fun d!1268164 () Bool)

(declare-fun e!2681296 () Bool)

(assert (=> d!1268164 e!2681296))

(declare-fun res!1766839 () Bool)

(assert (=> d!1268164 (=> (not res!1766839) (not e!2681296))))

(assert (=> d!1268164 (= res!1766839 ((_ is LongMap!4675) (_2!26633 lt!1531534)))))

(assert (=> d!1268164 (= lt!1531534 e!2681295)))

(declare-fun c!732958 () Bool)

(assert (=> d!1268164 (= c!732958 (_1!26633 lt!1531532))))

(assert (=> d!1268164 (= lt!1531532 e!2681298)))

(declare-fun c!732959 () Bool)

(declare-fun imbalanced!55 (MutLongMap!4675) Bool)

(assert (=> d!1268164 (= c!732959 (imbalanced!55 (v!42390 (underlying!9580 thiss!42308))))))

(declare-fun valid!3665 (MutLongMap!4675) Bool)

(assert (=> d!1268164 (valid!3665 (v!42390 (underlying!9580 thiss!42308)))))

(assert (=> d!1268164 (= (update!446 (v!42390 (underlying!9580 thiss!42308)) lt!1531459 lt!1531460) lt!1531534)))

(declare-fun b!4311146 () Bool)

(assert (=> b!4311146 (= e!2681298 (tuple2!46707 true (v!42390 (underlying!9580 thiss!42308))))))

(declare-fun b!4311147 () Bool)

(declare-datatypes ((tuple2!46710 0))(
  ( (tuple2!46711 (_1!26635 Bool) (_2!26635 LongMapFixedSize!9350)) )
))
(declare-fun lt!1531535 () tuple2!46710)

(assert (=> b!4311147 (= e!2681295 (tuple2!46707 (_1!26635 lt!1531535) (LongMap!4675 (Cell!18510 (_2!26635 lt!1531535)))))))

(declare-fun update!447 (LongMapFixedSize!9350 (_ BitVec 64) List!48342) tuple2!46710)

(assert (=> b!4311147 (= lt!1531535 (update!447 (v!42389 (underlying!9579 (_2!26633 lt!1531532))) lt!1531459 lt!1531460))))

(declare-fun b!4311148 () Bool)

(assert (=> b!4311148 (= e!2681296 e!2681297)))

(declare-fun c!732960 () Bool)

(assert (=> b!4311148 (= c!732960 (_1!26633 lt!1531534))))

(declare-fun b!4311149 () Bool)

(declare-fun res!1766838 () Bool)

(assert (=> b!4311149 (=> (not res!1766838) (not e!2681296))))

(assert (=> b!4311149 (= res!1766838 (valid!3665 (_2!26633 lt!1531534)))))

(declare-fun b!4311150 () Bool)

(assert (=> b!4311150 (= e!2681297 (= call!298042 call!298041))))

(assert (= (and d!1268164 c!732959) b!4311142))

(assert (= (and d!1268164 (not c!732959)) b!4311146))

(assert (= (and d!1268164 c!732958) b!4311147))

(assert (= (and d!1268164 (not c!732958)) b!4311144))

(assert (= (and d!1268164 res!1766839) b!4311149))

(assert (= (and b!4311149 res!1766838) b!4311148))

(assert (= (and b!4311148 c!732960) b!4311143))

(assert (= (and b!4311148 (not c!732960)) b!4311150))

(assert (= (and b!4311143 res!1766837) b!4311145))

(assert (= (or b!4311143 b!4311145 b!4311150) bm!298036))

(assert (= (or b!4311145 b!4311150) bm!298037))

(declare-fun m!4904111 () Bool)

(assert (=> b!4311149 m!4904111))

(declare-fun m!4904113 () Bool)

(assert (=> bm!298036 m!4904113))

(assert (=> bm!298037 m!4904021))

(declare-fun m!4904115 () Bool)

(assert (=> b!4311143 m!4904115))

(declare-fun m!4904117 () Bool)

(assert (=> b!4311145 m!4904117))

(declare-fun m!4904119 () Bool)

(assert (=> b!4311142 m!4904119))

(declare-fun m!4904121 () Bool)

(assert (=> d!1268164 m!4904121))

(declare-fun m!4904123 () Bool)

(assert (=> d!1268164 m!4904123))

(declare-fun m!4904125 () Bool)

(assert (=> b!4311147 m!4904125))

(assert (=> b!4311082 d!1268164))

(declare-fun b!4311160 () Bool)

(declare-fun e!2681304 () List!48342)

(declare-fun e!2681305 () List!48342)

(assert (=> b!4311160 (= e!2681304 e!2681305)))

(declare-fun c!732965 () Bool)

(assert (=> b!4311160 (= c!732965 ((_ is Cons!48218) lt!1531456))))

(declare-fun b!4311162 () Bool)

(assert (=> b!4311162 (= e!2681305 Nil!48218)))

(declare-fun d!1268166 () Bool)

(declare-fun lt!1531538 () List!48342)

(assert (=> d!1268166 (not (containsKey!321 lt!1531538 key!2048))))

(assert (=> d!1268166 (= lt!1531538 e!2681304)))

(declare-fun c!732966 () Bool)

(assert (=> d!1268166 (= c!732966 (and ((_ is Cons!48218) lt!1531456) (= (_1!26632 (h!53657 lt!1531456)) key!2048)))))

(assert (=> d!1268166 (noDuplicateKeys!218 lt!1531456)))

(assert (=> d!1268166 (= (removePairForKey!218 lt!1531456 key!2048) lt!1531538)))

(declare-fun b!4311159 () Bool)

(assert (=> b!4311159 (= e!2681304 (t!355157 lt!1531456))))

(declare-fun b!4311161 () Bool)

(assert (=> b!4311161 (= e!2681305 (Cons!48218 (h!53657 lt!1531456) (removePairForKey!218 (t!355157 lt!1531456) key!2048)))))

(assert (= (and d!1268166 c!732966) b!4311159))

(assert (= (and d!1268166 (not c!732966)) b!4311160))

(assert (= (and b!4311160 c!732965) b!4311161))

(assert (= (and b!4311160 (not c!732965)) b!4311162))

(declare-fun m!4904127 () Bool)

(assert (=> d!1268166 m!4904127))

(declare-fun m!4904129 () Bool)

(assert (=> d!1268166 m!4904129))

(declare-fun m!4904131 () Bool)

(assert (=> b!4311161 m!4904131))

(assert (=> b!4311082 d!1268166))

(declare-fun d!1268168 () Bool)

(declare-fun e!2681308 () Bool)

(assert (=> d!1268168 e!2681308))

(declare-fun c!732969 () Bool)

(assert (=> d!1268168 (= c!732969 (contains!10199 (v!42390 (underlying!9580 thiss!42308)) lt!1531459))))

(declare-fun lt!1531541 () List!48342)

(declare-fun apply!11031 (LongMapFixedSize!9350 (_ BitVec 64)) List!48342)

(assert (=> d!1268168 (= lt!1531541 (apply!11031 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))) lt!1531459))))

(assert (=> d!1268168 (valid!3665 (v!42390 (underlying!9580 thiss!42308)))))

(assert (=> d!1268168 (= (apply!11029 (v!42390 (underlying!9580 thiss!42308)) lt!1531459) lt!1531541)))

(declare-fun b!4311167 () Bool)

(declare-fun get!15605 (Option!10238) List!48342)

(assert (=> b!4311167 (= e!2681308 (= lt!1531541 (get!15605 (getValueByKey!259 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308)))) lt!1531459))))))

(declare-fun b!4311168 () Bool)

(declare-fun dynLambda!20442 (Int (_ BitVec 64)) List!48342)

(assert (=> b!4311168 (= e!2681308 (= lt!1531541 (dynLambda!20442 (defaultEntry!5060 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308))))) lt!1531459)))))

(assert (=> b!4311168 ((_ is LongMap!4675) (v!42390 (underlying!9580 thiss!42308)))))

(assert (= (and d!1268168 c!732969) b!4311167))

(assert (= (and d!1268168 (not c!732969)) b!4311168))

(declare-fun b_lambda!126647 () Bool)

(assert (=> (not b_lambda!126647) (not b!4311168)))

(declare-fun t!355160 () Bool)

(declare-fun tb!257301 () Bool)

(assert (=> (and b!4311089 (= (defaultEntry!5060 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308))))) (defaultEntry!5060 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) t!355160) tb!257301))

(assert (=> b!4311168 t!355160))

(declare-fun result!314714 () Bool)

(declare-fun b_and!340099 () Bool)

(assert (= b_and!340095 (and (=> t!355160 result!314714) b_and!340099)))

(declare-fun m!4904133 () Bool)

(assert (=> d!1268168 m!4904133))

(declare-fun m!4904135 () Bool)

(assert (=> d!1268168 m!4904135))

(assert (=> d!1268168 m!4904123))

(assert (=> b!4311167 m!4904021))

(declare-fun m!4904137 () Bool)

(assert (=> b!4311167 m!4904137))

(assert (=> b!4311167 m!4904137))

(declare-fun m!4904139 () Bool)

(assert (=> b!4311167 m!4904139))

(declare-fun m!4904141 () Bool)

(assert (=> b!4311168 m!4904141))

(assert (=> b!4311082 d!1268168))

(declare-fun d!1268170 () Bool)

(declare-fun hash!1026 (Hashable!4591 K!9434) (_ BitVec 64))

(assert (=> d!1268170 (= (hash!1023 (hashF!6722 thiss!42308) key!2048) (hash!1026 (hashF!6722 thiss!42308) key!2048))))

(declare-fun bs!605109 () Bool)

(assert (= bs!605109 d!1268170))

(declare-fun m!4904143 () Bool)

(assert (=> bs!605109 m!4904143))

(assert (=> b!4311082 d!1268170))

(declare-fun d!1268172 () Bool)

(declare-fun res!1766844 () Bool)

(declare-fun e!2681313 () Bool)

(assert (=> d!1268172 (=> res!1766844 e!2681313)))

(assert (=> d!1268172 (= res!1766844 (and ((_ is Cons!48218) lt!1531457) (= (_1!26632 (h!53657 lt!1531457)) key!2048)))))

(assert (=> d!1268172 (= (containsKey!321 lt!1531457 key!2048) e!2681313)))

(declare-fun b!4311173 () Bool)

(declare-fun e!2681314 () Bool)

(assert (=> b!4311173 (= e!2681313 e!2681314)))

(declare-fun res!1766845 () Bool)

(assert (=> b!4311173 (=> (not res!1766845) (not e!2681314))))

(assert (=> b!4311173 (= res!1766845 ((_ is Cons!48218) lt!1531457))))

(declare-fun b!4311174 () Bool)

(assert (=> b!4311174 (= e!2681314 (containsKey!321 (t!355157 lt!1531457) key!2048))))

(assert (= (and d!1268172 (not res!1766844)) b!4311173))

(assert (= (and b!4311173 res!1766845) b!4311174))

(declare-fun m!4904145 () Bool)

(assert (=> b!4311174 m!4904145))

(assert (=> b!4311083 d!1268172))

(declare-fun bs!605110 () Bool)

(declare-fun b!4311179 () Bool)

(assert (= bs!605110 (and b!4311179 b!4311087)))

(declare-fun lambda!132973 () Int)

(assert (=> bs!605110 (= lambda!132973 lambda!132967)))

(declare-fun bs!605111 () Bool)

(assert (= bs!605111 (and b!4311179 b!4311122)))

(assert (=> bs!605111 (= lambda!132973 lambda!132970)))

(declare-fun d!1268174 () Bool)

(declare-fun res!1766850 () Bool)

(declare-fun e!2681317 () Bool)

(assert (=> d!1268174 (=> (not res!1766850) (not e!2681317))))

(assert (=> d!1268174 (= res!1766850 (valid!3665 (v!42390 (underlying!9580 thiss!42308))))))

(assert (=> d!1268174 (= (valid!3664 thiss!42308) e!2681317)))

(declare-fun res!1766851 () Bool)

(assert (=> b!4311179 (=> (not res!1766851) (not e!2681317))))

(assert (=> b!4311179 (= res!1766851 (forall!8738 (toList!2421 (map!10215 (v!42390 (underlying!9580 thiss!42308)))) lambda!132973))))

(declare-fun b!4311180 () Bool)

(declare-fun allKeysSameHashInMap!340 (ListLongMap!1033 Hashable!4591) Bool)

(assert (=> b!4311180 (= e!2681317 (allKeysSameHashInMap!340 (map!10215 (v!42390 (underlying!9580 thiss!42308))) (hashF!6722 thiss!42308)))))

(assert (= (and d!1268174 res!1766850) b!4311179))

(assert (= (and b!4311179 res!1766851) b!4311180))

(assert (=> d!1268174 m!4904123))

(assert (=> b!4311179 m!4904021))

(declare-fun m!4904147 () Bool)

(assert (=> b!4311179 m!4904147))

(assert (=> b!4311180 m!4904021))

(assert (=> b!4311180 m!4904021))

(declare-fun m!4904149 () Bool)

(assert (=> b!4311180 m!4904149))

(assert (=> b!4311086 d!1268174))

(declare-fun d!1268176 () Bool)

(declare-fun res!1766856 () Bool)

(declare-fun e!2681322 () Bool)

(assert (=> d!1268176 (=> res!1766856 e!2681322)))

(assert (=> d!1268176 (= res!1766856 (not ((_ is Cons!48218) lt!1531460)))))

(assert (=> d!1268176 (= (noDuplicateKeys!218 lt!1531460) e!2681322)))

(declare-fun b!4311185 () Bool)

(declare-fun e!2681323 () Bool)

(assert (=> b!4311185 (= e!2681322 e!2681323)))

(declare-fun res!1766857 () Bool)

(assert (=> b!4311185 (=> (not res!1766857) (not e!2681323))))

(assert (=> b!4311185 (= res!1766857 (not (containsKey!321 (t!355157 lt!1531460) (_1!26632 (h!53657 lt!1531460)))))))

(declare-fun b!4311186 () Bool)

(assert (=> b!4311186 (= e!2681323 (noDuplicateKeys!218 (t!355157 lt!1531460)))))

(assert (= (and d!1268176 (not res!1766856)) b!4311185))

(assert (= (and b!4311185 res!1766857) b!4311186))

(declare-fun m!4904151 () Bool)

(assert (=> b!4311185 m!4904151))

(declare-fun m!4904153 () Bool)

(assert (=> b!4311186 m!4904153))

(assert (=> b!4311081 d!1268176))

(declare-fun d!1268178 () Bool)

(declare-fun res!1766862 () Bool)

(declare-fun e!2681328 () Bool)

(assert (=> d!1268178 (=> res!1766862 e!2681328)))

(assert (=> d!1268178 (= res!1766862 ((_ is Nil!48219) (toList!2421 lt!1531452)))))

(assert (=> d!1268178 (= (forall!8738 (toList!2421 lt!1531452) lambda!132967) e!2681328)))

(declare-fun b!4311191 () Bool)

(declare-fun e!2681329 () Bool)

(assert (=> b!4311191 (= e!2681328 e!2681329)))

(declare-fun res!1766863 () Bool)

(assert (=> b!4311191 (=> (not res!1766863) (not e!2681329))))

(declare-fun dynLambda!20443 (Int tuple2!46708) Bool)

(assert (=> b!4311191 (= res!1766863 (dynLambda!20443 lambda!132967 (h!53658 (toList!2421 lt!1531452))))))

(declare-fun b!4311192 () Bool)

(assert (=> b!4311192 (= e!2681329 (forall!8738 (t!355158 (toList!2421 lt!1531452)) lambda!132967))))

(assert (= (and d!1268178 (not res!1766862)) b!4311191))

(assert (= (and b!4311191 res!1766863) b!4311192))

(declare-fun b_lambda!126649 () Bool)

(assert (=> (not b_lambda!126649) (not b!4311191)))

(declare-fun m!4904155 () Bool)

(assert (=> b!4311191 m!4904155))

(declare-fun m!4904157 () Bool)

(assert (=> b!4311192 m!4904157))

(assert (=> b!4311087 d!1268178))

(declare-fun d!1268180 () Bool)

(assert (=> d!1268180 true))

(assert (=> d!1268180 true))

(declare-fun lambda!132976 () Int)

(declare-fun forall!8739 (List!48342 Int) Bool)

(assert (=> d!1268180 (= (allKeysSameHash!193 lt!1531456 lt!1531459 (hashF!6722 thiss!42308)) (forall!8739 lt!1531456 lambda!132976))))

(declare-fun bs!605112 () Bool)

(assert (= bs!605112 d!1268180))

(declare-fun m!4904159 () Bool)

(assert (=> bs!605112 m!4904159))

(assert (=> b!4311087 d!1268180))

(declare-fun d!1268182 () Bool)

(declare-fun res!1766864 () Bool)

(declare-fun e!2681330 () Bool)

(assert (=> d!1268182 (=> res!1766864 e!2681330)))

(assert (=> d!1268182 (= res!1766864 (not ((_ is Cons!48218) lt!1531457)))))

(assert (=> d!1268182 (= (noDuplicateKeys!218 lt!1531457) e!2681330)))

(declare-fun b!4311197 () Bool)

(declare-fun e!2681331 () Bool)

(assert (=> b!4311197 (= e!2681330 e!2681331)))

(declare-fun res!1766865 () Bool)

(assert (=> b!4311197 (=> (not res!1766865) (not e!2681331))))

(assert (=> b!4311197 (= res!1766865 (not (containsKey!321 (t!355157 lt!1531457) (_1!26632 (h!53657 lt!1531457)))))))

(declare-fun b!4311198 () Bool)

(assert (=> b!4311198 (= e!2681331 (noDuplicateKeys!218 (t!355157 lt!1531457)))))

(assert (= (and d!1268182 (not res!1766864)) b!4311197))

(assert (= (and b!4311197 res!1766865) b!4311198))

(declare-fun m!4904161 () Bool)

(assert (=> b!4311197 m!4904161))

(declare-fun m!4904163 () Bool)

(assert (=> b!4311198 m!4904163))

(assert (=> b!4311087 d!1268182))

(declare-fun bs!605113 () Bool)

(declare-fun d!1268184 () Bool)

(assert (= bs!605113 (and d!1268184 d!1268180)))

(declare-fun lambda!132977 () Int)

(assert (=> bs!605113 (= lambda!132977 lambda!132976)))

(assert (=> d!1268184 true))

(assert (=> d!1268184 true))

(assert (=> d!1268184 (= (allKeysSameHash!193 lt!1531457 lt!1531459 (hashF!6722 thiss!42308)) (forall!8739 lt!1531457 lambda!132977))))

(declare-fun bs!605114 () Bool)

(assert (= bs!605114 d!1268184))

(declare-fun m!4904165 () Bool)

(assert (=> bs!605114 m!4904165))

(assert (=> b!4311087 d!1268184))

(declare-fun bs!605115 () Bool)

(declare-fun d!1268186 () Bool)

(assert (= bs!605115 (and d!1268186 b!4311087)))

(declare-fun lambda!132980 () Int)

(assert (=> bs!605115 (not (= lambda!132980 lambda!132967))))

(declare-fun bs!605116 () Bool)

(assert (= bs!605116 (and d!1268186 b!4311122)))

(assert (=> bs!605116 (not (= lambda!132980 lambda!132970))))

(declare-fun bs!605117 () Bool)

(assert (= bs!605117 (and d!1268186 b!4311179)))

(assert (=> bs!605117 (not (= lambda!132980 lambda!132973))))

(assert (=> d!1268186 true))

(assert (=> d!1268186 (allKeysSameHash!193 lt!1531456 lt!1531459 (hashF!6722 thiss!42308))))

(declare-fun lt!1531544 () Unit!67350)

(declare-fun choose!26264 (List!48343 (_ BitVec 64) List!48342 Hashable!4591) Unit!67350)

(assert (=> d!1268186 (= lt!1531544 (choose!26264 (toList!2421 lt!1531452) lt!1531459 lt!1531456 (hashF!6722 thiss!42308)))))

(assert (=> d!1268186 (forall!8738 (toList!2421 lt!1531452) lambda!132980)))

(assert (=> d!1268186 (= (lemmaInLongMapAllKeySameHashThenForTuple!180 (toList!2421 lt!1531452) lt!1531459 lt!1531456 (hashF!6722 thiss!42308)) lt!1531544)))

(declare-fun bs!605118 () Bool)

(assert (= bs!605118 d!1268186))

(assert (=> bs!605118 m!4904043))

(declare-fun m!4904167 () Bool)

(assert (=> bs!605118 m!4904167))

(declare-fun m!4904169 () Bool)

(assert (=> bs!605118 m!4904169))

(assert (=> b!4311087 d!1268186))

(declare-fun d!1268188 () Bool)

(assert (=> d!1268188 (allKeysSameHash!193 (removePairForKey!218 lt!1531456 key!2048) lt!1531459 (hashF!6722 thiss!42308))))

(declare-fun lt!1531547 () Unit!67350)

(declare-fun choose!26265 (List!48342 K!9434 (_ BitVec 64) Hashable!4591) Unit!67350)

(assert (=> d!1268188 (= lt!1531547 (choose!26265 lt!1531456 key!2048 lt!1531459 (hashF!6722 thiss!42308)))))

(assert (=> d!1268188 (noDuplicateKeys!218 lt!1531456)))

(assert (=> d!1268188 (= (lemmaRemovePairForKeyPreservesHash!173 lt!1531456 key!2048 lt!1531459 (hashF!6722 thiss!42308)) lt!1531547)))

(declare-fun bs!605119 () Bool)

(assert (= bs!605119 d!1268188))

(assert (=> bs!605119 m!4904029))

(assert (=> bs!605119 m!4904029))

(declare-fun m!4904171 () Bool)

(assert (=> bs!605119 m!4904171))

(declare-fun m!4904173 () Bool)

(assert (=> bs!605119 m!4904173))

(assert (=> bs!605119 m!4904129))

(assert (=> b!4311087 d!1268188))

(declare-fun d!1268190 () Bool)

(assert (=> d!1268190 (noDuplicateKeys!218 (removePairForKey!218 lt!1531456 key!2048))))

(declare-fun lt!1531550 () Unit!67350)

(declare-fun choose!26266 (List!48342 K!9434) Unit!67350)

(assert (=> d!1268190 (= lt!1531550 (choose!26266 lt!1531456 key!2048))))

(assert (=> d!1268190 (noDuplicateKeys!218 lt!1531456)))

(assert (=> d!1268190 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!168 lt!1531456 key!2048) lt!1531550)))

(declare-fun bs!605120 () Bool)

(assert (= bs!605120 d!1268190))

(assert (=> bs!605120 m!4904029))

(assert (=> bs!605120 m!4904029))

(declare-fun m!4904175 () Bool)

(assert (=> bs!605120 m!4904175))

(declare-fun m!4904177 () Bool)

(assert (=> bs!605120 m!4904177))

(assert (=> bs!605120 m!4904129))

(assert (=> b!4311087 d!1268190))

(declare-fun d!1268192 () Bool)

(assert (=> d!1268192 (= (array_inv!5409 (_keys!4975 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) (bvsge (size!35574 (_keys!4975 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4311089 d!1268192))

(declare-fun d!1268194 () Bool)

(assert (=> d!1268194 (= (array_inv!5410 (_values!4956 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) (bvsge (size!35575 (_values!4956 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4311089 d!1268194))

(declare-fun b!4311205 () Bool)

(declare-fun e!2681334 () Bool)

(declare-fun tp!1324857 () Bool)

(assert (=> b!4311205 (= e!2681334 (and tp_is_empty!23805 tp_is_empty!23807 tp!1324857))))

(assert (=> b!4311079 (= tp!1324850 e!2681334)))

(assert (= (and b!4311079 ((_ is Cons!48218) mapDefault!20870)) b!4311205))

(declare-fun mapIsEmpty!20873 () Bool)

(declare-fun mapRes!20873 () Bool)

(assert (=> mapIsEmpty!20873 mapRes!20873))

(declare-fun tp!1324864 () Bool)

(declare-fun b!4311212 () Bool)

(declare-fun e!2681340 () Bool)

(assert (=> b!4311212 (= e!2681340 (and tp_is_empty!23805 tp_is_empty!23807 tp!1324864))))

(declare-fun mapNonEmpty!20873 () Bool)

(declare-fun tp!1324865 () Bool)

(assert (=> mapNonEmpty!20873 (= mapRes!20873 (and tp!1324865 e!2681340))))

(declare-fun mapValue!20873 () List!48342)

(declare-fun mapRest!20873 () (Array (_ BitVec 32) List!48342))

(declare-fun mapKey!20873 () (_ BitVec 32))

(assert (=> mapNonEmpty!20873 (= mapRest!20870 (store mapRest!20873 mapKey!20873 mapValue!20873))))

(declare-fun e!2681339 () Bool)

(declare-fun b!4311213 () Bool)

(declare-fun tp!1324866 () Bool)

(assert (=> b!4311213 (= e!2681339 (and tp_is_empty!23805 tp_is_empty!23807 tp!1324866))))

(declare-fun condMapEmpty!20873 () Bool)

(declare-fun mapDefault!20873 () List!48342)

(assert (=> mapNonEmpty!20870 (= condMapEmpty!20873 (= mapRest!20870 ((as const (Array (_ BitVec 32) List!48342)) mapDefault!20873)))))

(assert (=> mapNonEmpty!20870 (= tp!1324849 (and e!2681339 mapRes!20873))))

(assert (= (and mapNonEmpty!20870 condMapEmpty!20873) mapIsEmpty!20873))

(assert (= (and mapNonEmpty!20870 (not condMapEmpty!20873)) mapNonEmpty!20873))

(assert (= (and mapNonEmpty!20873 ((_ is Cons!48218) mapValue!20873)) b!4311212))

(assert (= (and mapNonEmpty!20870 ((_ is Cons!48218) mapDefault!20873)) b!4311213))

(declare-fun m!4904179 () Bool)

(assert (=> mapNonEmpty!20873 m!4904179))

(declare-fun b!4311214 () Bool)

(declare-fun tp!1324867 () Bool)

(declare-fun e!2681341 () Bool)

(assert (=> b!4311214 (= e!2681341 (and tp_is_empty!23805 tp_is_empty!23807 tp!1324867))))

(assert (=> mapNonEmpty!20870 (= tp!1324852 e!2681341)))

(assert (= (and mapNonEmpty!20870 ((_ is Cons!48218) mapValue!20870)) b!4311214))

(declare-fun b!4311215 () Bool)

(declare-fun e!2681342 () Bool)

(declare-fun tp!1324868 () Bool)

(assert (=> b!4311215 (= e!2681342 (and tp_is_empty!23805 tp_is_empty!23807 tp!1324868))))

(assert (=> b!4311089 (= tp!1324853 e!2681342)))

(assert (= (and b!4311089 ((_ is Cons!48218) (zeroValue!4934 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308))))))) b!4311215))

(declare-fun tp!1324869 () Bool)

(declare-fun e!2681343 () Bool)

(declare-fun b!4311216 () Bool)

(assert (=> b!4311216 (= e!2681343 (and tp_is_empty!23805 tp_is_empty!23807 tp!1324869))))

(assert (=> b!4311089 (= tp!1324854 e!2681343)))

(assert (= (and b!4311089 ((_ is Cons!48218) (minValue!4934 (v!42389 (underlying!9579 (v!42390 (underlying!9580 thiss!42308))))))) b!4311216))

(declare-fun b_lambda!126651 () Bool)

(assert (= b_lambda!126647 (or (and b!4311089 b_free!128659) b_lambda!126651)))

(declare-fun b_lambda!126653 () Bool)

(assert (= b_lambda!126649 (or b!4311087 b_lambda!126653)))

(declare-fun bs!605121 () Bool)

(declare-fun d!1268196 () Bool)

(assert (= bs!605121 (and d!1268196 b!4311087)))

(assert (=> bs!605121 (= (dynLambda!20443 lambda!132967 (h!53658 (toList!2421 lt!1531452))) (noDuplicateKeys!218 (_2!26634 (h!53658 (toList!2421 lt!1531452)))))))

(declare-fun m!4904181 () Bool)

(assert (=> bs!605121 m!4904181))

(assert (=> b!4311191 d!1268196))

(check-sat (not bm!298026) (not bm!298036) (not b!4311179) (not d!1268180) (not b!4311215) (not b!4311180) (not d!1268174) (not b!4311123) (not d!1268164) (not bm!298037) (not d!1268170) (not d!1268188) (not b!4311174) (not b!4311142) (not d!1268186) (not b!4311213) (not b!4311186) (not b!4311122) (not b!4311205) (not d!1268162) tp_is_empty!23807 (not mapNonEmpty!20873) (not d!1268184) (not b!4311143) (not b!4311147) (not tb!257301) (not d!1268168) (not d!1268190) (not b!4311185) (not b!4311198) (not d!1268166) (not b!4311216) (not bm!298031) (not bm!298027) (not b!4311113) (not b_lambda!126653) (not b!4311121) (not b!4311214) (not b_next!129365) (not d!1268160) tp_is_empty!23805 (not bm!298030) (not b!4311197) (not bs!605121) (not b_lambda!126651) (not b!4311192) (not b!4311161) b_and!340099 (not b!4311212) (not bm!298029) (not b_next!129363) (not b!4311167) (not d!1268158) (not b!4311149) (not b!4311145) (not bm!298028) b_and!340097 (not b!4311114))
(check-sat b_and!340099 b_and!340097 (not b_next!129365) (not b_next!129363))

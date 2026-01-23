; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414544 () Bool)

(assert start!414544)

(declare-fun b!4312255 () Bool)

(declare-fun b_free!128699 () Bool)

(declare-fun b_next!129403 () Bool)

(assert (=> b!4312255 (= b_free!128699 (not b_next!129403))))

(declare-fun tp!1325114 () Bool)

(declare-fun b_and!340149 () Bool)

(assert (=> b!4312255 (= tp!1325114 b_and!340149)))

(declare-fun b!4312266 () Bool)

(declare-fun b_free!128701 () Bool)

(declare-fun b_next!129405 () Bool)

(assert (=> b!4312266 (= b_free!128701 (not b_next!129405))))

(declare-fun tp!1325113 () Bool)

(declare-fun b_and!340151 () Bool)

(assert (=> b!4312266 (= tp!1325113 b_and!340151)))

(declare-fun tp!1325119 () Bool)

(declare-fun tp!1325116 () Bool)

(declare-fun e!2682118 () Bool)

(declare-fun e!2682126 () Bool)

(declare-datatypes ((V!9661 0))(
  ( (V!9662 (val!15825 Int)) )
))
(declare-datatypes ((K!9459 0))(
  ( (K!9460 (val!15826 Int)) )
))
(declare-datatypes ((tuple2!46768 0))(
  ( (tuple2!46769 (_1!26665 K!9459) (_2!26665 V!9661)) )
))
(declare-datatypes ((List!48363 0))(
  ( (Nil!48239) (Cons!48239 (h!53681 tuple2!46768) (t!355186 List!48363)) )
))
(declare-datatypes ((array!16916 0))(
  ( (array!16917 (arr!7555 (Array (_ BitVec 32) (_ BitVec 64))) (size!35594 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4601 0))(
  ( (HashableExt!4600 (__x!30080 Int)) )
))
(declare-datatypes ((array!16918 0))(
  ( (array!16919 (arr!7556 (Array (_ BitVec 32) List!48363)) (size!35595 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9370 0))(
  ( (LongMapFixedSize!9371 (defaultEntry!5070 Int) (mask!13256 (_ BitVec 32)) (extraKeys!4934 (_ BitVec 32)) (zeroValue!4944 List!48363) (minValue!4944 List!48363) (_size!9413 (_ BitVec 32)) (_keys!4985 array!16916) (_values!4966 array!16918) (_vacant!4746 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18549 0))(
  ( (Cell!18550 (v!42434 LongMapFixedSize!9370)) )
))
(declare-datatypes ((MutLongMap!4685 0))(
  ( (LongMap!4685 (underlying!9599 Cell!18549)) (MutLongMapExt!4684 (__x!30081 Int)) )
))
(declare-datatypes ((Cell!18551 0))(
  ( (Cell!18552 (v!42435 MutLongMap!4685)) )
))
(declare-datatypes ((MutableMap!4591 0))(
  ( (MutableMapExt!4590 (__x!30082 Int)) (HashMap!4591 (underlying!9600 Cell!18551) (hashF!6747 Hashable!4601) (_size!9414 (_ BitVec 32)) (defaultValue!4762 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4591)

(declare-fun array_inv!5425 (array!16916) Bool)

(declare-fun array_inv!5426 (array!16918) Bool)

(assert (=> b!4312255 (= e!2682118 (and tp!1325114 tp!1325119 tp!1325116 (array_inv!5425 (_keys!4985 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) (array_inv!5426 (_values!4966 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) e!2682126))))

(declare-fun b!4312256 () Bool)

(declare-fun e!2682117 () Bool)

(assert (=> b!4312256 (= e!2682117 e!2682118)))

(declare-fun b!4312257 () Bool)

(declare-fun e!2682122 () Bool)

(declare-fun e!2682119 () Bool)

(assert (=> b!4312257 (= e!2682122 e!2682119)))

(declare-fun res!1767329 () Bool)

(assert (=> b!4312257 (=> (not res!1767329) (not e!2682119))))

(declare-fun key!2048 () K!9459)

(declare-fun contains!10220 (MutableMap!4591 K!9459) Bool)

(assert (=> b!4312257 (= res!1767329 (contains!10220 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46770 0))(
  ( (tuple2!46771 (_1!26666 (_ BitVec 64)) (_2!26666 List!48363)) )
))
(declare-datatypes ((List!48364 0))(
  ( (Nil!48240) (Cons!48240 (h!53682 tuple2!46770) (t!355187 List!48364)) )
))
(declare-datatypes ((ListLongMap!1053 0))(
  ( (ListLongMap!1054 (toList!2440 List!48364)) )
))
(declare-fun lt!1532307 () ListLongMap!1053)

(declare-fun map!10241 (MutLongMap!4685) ListLongMap!1053)

(assert (=> b!4312257 (= lt!1532307 (map!10241 (v!42435 (underlying!9600 thiss!42308))))))

(declare-datatypes ((ListMap!1721 0))(
  ( (ListMap!1722 (toList!2441 List!48363)) )
))
(declare-fun lt!1532300 () ListMap!1721)

(declare-fun map!10242 (MutableMap!4591) ListMap!1721)

(assert (=> b!4312257 (= lt!1532300 (map!10242 thiss!42308))))

(declare-fun res!1767333 () Bool)

(assert (=> start!414544 (=> (not res!1767333) (not e!2682122))))

(get-info :version)

(assert (=> start!414544 (= res!1767333 ((_ is HashMap!4591) thiss!42308))))

(assert (=> start!414544 e!2682122))

(declare-fun e!2682121 () Bool)

(assert (=> start!414544 e!2682121))

(declare-fun tp_is_empty!23845 () Bool)

(assert (=> start!414544 tp_is_empty!23845))

(declare-fun tp_is_empty!23847 () Bool)

(assert (=> start!414544 tp_is_empty!23847))

(declare-fun mapIsEmpty!20910 () Bool)

(declare-fun mapRes!20910 () Bool)

(assert (=> mapIsEmpty!20910 mapRes!20910))

(declare-fun b!4312258 () Bool)

(declare-fun res!1767334 () Bool)

(assert (=> b!4312258 (=> (not res!1767334) (not e!2682122))))

(declare-fun valid!3677 (MutableMap!4591) Bool)

(assert (=> b!4312258 (= res!1767334 (valid!3677 thiss!42308))))

(declare-fun b!4312259 () Bool)

(declare-fun e!2682124 () Bool)

(declare-fun lambda!133059 () Int)

(declare-fun forall!8749 (List!48364 Int) Bool)

(assert (=> b!4312259 (= e!2682124 (not (forall!8749 (toList!2440 lt!1532307) lambda!133059)))))

(declare-fun e!2682125 () Bool)

(assert (=> b!4312259 e!2682125))

(declare-fun res!1767332 () Bool)

(assert (=> b!4312259 (=> (not res!1767332) (not e!2682125))))

(declare-fun lt!1532302 () ListLongMap!1053)

(assert (=> b!4312259 (= res!1767332 (forall!8749 (toList!2440 lt!1532302) lambda!133059))))

(declare-fun lt!1532299 () List!48363)

(declare-fun lt!1532306 () (_ BitVec 64))

(declare-fun +!278 (ListLongMap!1053 tuple2!46770) ListLongMap!1053)

(assert (=> b!4312259 (= lt!1532302 (+!278 lt!1532307 (tuple2!46771 lt!1532306 lt!1532299)))))

(declare-datatypes ((Unit!67391 0))(
  ( (Unit!67392) )
))
(declare-fun lt!1532308 () Unit!67391)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!150 (ListLongMap!1053 (_ BitVec 64) List!48363 Hashable!4601) Unit!67391)

(assert (=> b!4312259 (= lt!1532308 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!150 lt!1532307 lt!1532306 lt!1532299 (hashF!6747 thiss!42308)))))

(declare-fun e!2682120 () Bool)

(assert (=> b!4312259 e!2682120))

(declare-fun res!1767330 () Bool)

(assert (=> b!4312259 (=> (not res!1767330) (not e!2682120))))

(declare-fun lt!1532297 () List!48363)

(declare-fun noDuplicateKeys!228 (List!48363) Bool)

(assert (=> b!4312259 (= res!1767330 (noDuplicateKeys!228 lt!1532297))))

(declare-fun lt!1532305 () Unit!67391)

(declare-fun lt!1532303 () List!48363)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!176 (List!48363 K!9459) Unit!67391)

(assert (=> b!4312259 (= lt!1532305 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!176 lt!1532303 key!2048))))

(declare-fun allKeysSameHash!201 (List!48363 (_ BitVec 64) Hashable!4601) Bool)

(assert (=> b!4312259 (allKeysSameHash!201 lt!1532297 lt!1532306 (hashF!6747 thiss!42308))))

(declare-fun lt!1532298 () Unit!67391)

(declare-fun lemmaRemovePairForKeyPreservesHash!181 (List!48363 K!9459 (_ BitVec 64) Hashable!4601) Unit!67391)

(assert (=> b!4312259 (= lt!1532298 (lemmaRemovePairForKeyPreservesHash!181 lt!1532303 key!2048 lt!1532306 (hashF!6747 thiss!42308)))))

(assert (=> b!4312259 (allKeysSameHash!201 lt!1532303 lt!1532306 (hashF!6747 thiss!42308))))

(declare-fun lt!1532304 () Unit!67391)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!188 (List!48364 (_ BitVec 64) List!48363 Hashable!4601) Unit!67391)

(assert (=> b!4312259 (= lt!1532304 (lemmaInLongMapAllKeySameHashThenForTuple!188 (toList!2440 lt!1532307) lt!1532306 lt!1532303 (hashF!6747 thiss!42308)))))

(declare-fun b!4312260 () Bool)

(declare-fun e!2682127 () Bool)

(assert (=> b!4312260 (= e!2682127 e!2682117)))

(declare-fun b!4312261 () Bool)

(declare-fun tp!1325115 () Bool)

(assert (=> b!4312261 (= e!2682126 (and tp!1325115 mapRes!20910))))

(declare-fun condMapEmpty!20910 () Bool)

(declare-fun mapDefault!20910 () List!48363)

(assert (=> b!4312261 (= condMapEmpty!20910 (= (arr!7556 (_values!4966 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48363)) mapDefault!20910)))))

(declare-fun b!4312262 () Bool)

(declare-fun e!2682116 () Bool)

(declare-fun lt!1532301 () MutLongMap!4685)

(assert (=> b!4312262 (= e!2682116 (and e!2682127 ((_ is LongMap!4685) lt!1532301)))))

(assert (=> b!4312262 (= lt!1532301 (v!42435 (underlying!9600 thiss!42308)))))

(declare-fun b!4312263 () Bool)

(declare-fun res!1767335 () Bool)

(assert (=> b!4312263 (=> (not res!1767335) (not e!2682120))))

(declare-fun containsKey!333 (List!48363 K!9459) Bool)

(assert (=> b!4312263 (= res!1767335 (not (containsKey!333 lt!1532297 key!2048)))))

(declare-fun b!4312264 () Bool)

(assert (=> b!4312264 (= e!2682119 e!2682124)))

(declare-fun res!1767331 () Bool)

(assert (=> b!4312264 (=> (not res!1767331) (not e!2682124))))

(declare-datatypes ((tuple2!46772 0))(
  ( (tuple2!46773 (_1!26667 Bool) (_2!26667 MutLongMap!4685)) )
))
(declare-fun update!457 (MutLongMap!4685 (_ BitVec 64) List!48363) tuple2!46772)

(assert (=> b!4312264 (= res!1767331 (_1!26667 (update!457 (v!42435 (underlying!9600 thiss!42308)) lt!1532306 lt!1532299)))))

(declare-fun v!9179 () V!9661)

(assert (=> b!4312264 (= lt!1532299 (Cons!48239 (tuple2!46769 key!2048 v!9179) lt!1532297))))

(declare-fun removePairForKey!226 (List!48363 K!9459) List!48363)

(assert (=> b!4312264 (= lt!1532297 (removePairForKey!226 lt!1532303 key!2048))))

(declare-fun apply!11043 (MutLongMap!4685 (_ BitVec 64)) List!48363)

(assert (=> b!4312264 (= lt!1532303 (apply!11043 (v!42435 (underlying!9600 thiss!42308)) lt!1532306))))

(declare-fun hash!1042 (Hashable!4601 K!9459) (_ BitVec 64))

(assert (=> b!4312264 (= lt!1532306 (hash!1042 (hashF!6747 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!20910 () Bool)

(declare-fun tp!1325117 () Bool)

(declare-fun tp!1325118 () Bool)

(assert (=> mapNonEmpty!20910 (= mapRes!20910 (and tp!1325117 tp!1325118))))

(declare-fun mapValue!20910 () List!48363)

(declare-fun mapRest!20910 () (Array (_ BitVec 32) List!48363))

(declare-fun mapKey!20910 () (_ BitVec 32))

(assert (=> mapNonEmpty!20910 (= (arr!7556 (_values!4966 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) (store mapRest!20910 mapKey!20910 mapValue!20910))))

(declare-fun b!4312265 () Bool)

(assert (=> b!4312265 (= e!2682120 (noDuplicateKeys!228 lt!1532299))))

(assert (=> b!4312266 (= e!2682121 (and e!2682116 tp!1325113))))

(declare-fun b!4312267 () Bool)

(declare-fun allKeysSameHashInMap!347 (ListLongMap!1053 Hashable!4601) Bool)

(assert (=> b!4312267 (= e!2682125 (allKeysSameHashInMap!347 lt!1532302 (hashF!6747 thiss!42308)))))

(assert (= (and start!414544 res!1767333) b!4312258))

(assert (= (and b!4312258 res!1767334) b!4312257))

(assert (= (and b!4312257 res!1767329) b!4312264))

(assert (= (and b!4312264 res!1767331) b!4312259))

(assert (= (and b!4312259 res!1767330) b!4312263))

(assert (= (and b!4312263 res!1767335) b!4312265))

(assert (= (and b!4312259 res!1767332) b!4312267))

(assert (= (and b!4312261 condMapEmpty!20910) mapIsEmpty!20910))

(assert (= (and b!4312261 (not condMapEmpty!20910)) mapNonEmpty!20910))

(assert (= b!4312255 b!4312261))

(assert (= b!4312256 b!4312255))

(assert (= b!4312260 b!4312256))

(assert (= (and b!4312262 ((_ is LongMap!4685) (v!42435 (underlying!9600 thiss!42308)))) b!4312260))

(assert (= b!4312266 b!4312262))

(assert (= (and start!414544 ((_ is HashMap!4591) thiss!42308)) b!4312266))

(declare-fun m!4905239 () Bool)

(assert (=> b!4312257 m!4905239))

(declare-fun m!4905241 () Bool)

(assert (=> b!4312257 m!4905241))

(declare-fun m!4905243 () Bool)

(assert (=> b!4312257 m!4905243))

(declare-fun m!4905245 () Bool)

(assert (=> b!4312264 m!4905245))

(declare-fun m!4905247 () Bool)

(assert (=> b!4312264 m!4905247))

(declare-fun m!4905249 () Bool)

(assert (=> b!4312264 m!4905249))

(declare-fun m!4905251 () Bool)

(assert (=> b!4312264 m!4905251))

(declare-fun m!4905253 () Bool)

(assert (=> b!4312255 m!4905253))

(declare-fun m!4905255 () Bool)

(assert (=> b!4312255 m!4905255))

(declare-fun m!4905257 () Bool)

(assert (=> b!4312259 m!4905257))

(declare-fun m!4905259 () Bool)

(assert (=> b!4312259 m!4905259))

(declare-fun m!4905261 () Bool)

(assert (=> b!4312259 m!4905261))

(declare-fun m!4905263 () Bool)

(assert (=> b!4312259 m!4905263))

(declare-fun m!4905265 () Bool)

(assert (=> b!4312259 m!4905265))

(declare-fun m!4905267 () Bool)

(assert (=> b!4312259 m!4905267))

(declare-fun m!4905269 () Bool)

(assert (=> b!4312259 m!4905269))

(declare-fun m!4905271 () Bool)

(assert (=> b!4312259 m!4905271))

(declare-fun m!4905273 () Bool)

(assert (=> b!4312259 m!4905273))

(declare-fun m!4905275 () Bool)

(assert (=> b!4312259 m!4905275))

(declare-fun m!4905277 () Bool)

(assert (=> b!4312265 m!4905277))

(declare-fun m!4905279 () Bool)

(assert (=> b!4312258 m!4905279))

(declare-fun m!4905281 () Bool)

(assert (=> mapNonEmpty!20910 m!4905281))

(declare-fun m!4905283 () Bool)

(assert (=> b!4312263 m!4905283))

(declare-fun m!4905285 () Bool)

(assert (=> b!4312267 m!4905285))

(check-sat tp_is_empty!23847 (not b!4312257) (not b!4312267) (not b!4312265) (not b!4312258) (not b!4312261) (not mapNonEmpty!20910) (not b!4312259) (not b!4312255) (not b_next!129405) b_and!340149 (not b!4312263) tp_is_empty!23845 (not b_next!129403) b_and!340151 (not b!4312264))
(check-sat b_and!340149 b_and!340151 (not b_next!129405) (not b_next!129403))
(get-model)

(declare-fun bs!605241 () Bool)

(declare-fun d!1268427 () Bool)

(assert (= bs!605241 (and d!1268427 b!4312259)))

(declare-fun lambda!133062 () Int)

(assert (=> bs!605241 (not (= lambda!133062 lambda!133059))))

(assert (=> d!1268427 true))

(assert (=> d!1268427 (= (allKeysSameHashInMap!347 lt!1532302 (hashF!6747 thiss!42308)) (forall!8749 (toList!2440 lt!1532302) lambda!133062))))

(declare-fun bs!605242 () Bool)

(assert (= bs!605242 d!1268427))

(declare-fun m!4905287 () Bool)

(assert (=> bs!605242 m!4905287))

(assert (=> b!4312267 d!1268427))

(declare-fun d!1268429 () Bool)

(declare-fun res!1767340 () Bool)

(declare-fun e!2682132 () Bool)

(assert (=> d!1268429 (=> res!1767340 e!2682132)))

(assert (=> d!1268429 (= res!1767340 (and ((_ is Cons!48239) lt!1532297) (= (_1!26665 (h!53681 lt!1532297)) key!2048)))))

(assert (=> d!1268429 (= (containsKey!333 lt!1532297 key!2048) e!2682132)))

(declare-fun b!4312274 () Bool)

(declare-fun e!2682133 () Bool)

(assert (=> b!4312274 (= e!2682132 e!2682133)))

(declare-fun res!1767341 () Bool)

(assert (=> b!4312274 (=> (not res!1767341) (not e!2682133))))

(assert (=> b!4312274 (= res!1767341 ((_ is Cons!48239) lt!1532297))))

(declare-fun b!4312275 () Bool)

(assert (=> b!4312275 (= e!2682133 (containsKey!333 (t!355186 lt!1532297) key!2048))))

(assert (= (and d!1268429 (not res!1767340)) b!4312274))

(assert (= (and b!4312274 res!1767341) b!4312275))

(declare-fun m!4905289 () Bool)

(assert (=> b!4312275 m!4905289))

(assert (=> b!4312263 d!1268429))

(declare-fun d!1268431 () Bool)

(declare-fun res!1767346 () Bool)

(declare-fun e!2682138 () Bool)

(assert (=> d!1268431 (=> res!1767346 e!2682138)))

(assert (=> d!1268431 (= res!1767346 (not ((_ is Cons!48239) lt!1532299)))))

(assert (=> d!1268431 (= (noDuplicateKeys!228 lt!1532299) e!2682138)))

(declare-fun b!4312280 () Bool)

(declare-fun e!2682139 () Bool)

(assert (=> b!4312280 (= e!2682138 e!2682139)))

(declare-fun res!1767347 () Bool)

(assert (=> b!4312280 (=> (not res!1767347) (not e!2682139))))

(assert (=> b!4312280 (= res!1767347 (not (containsKey!333 (t!355186 lt!1532299) (_1!26665 (h!53681 lt!1532299)))))))

(declare-fun b!4312281 () Bool)

(assert (=> b!4312281 (= e!2682139 (noDuplicateKeys!228 (t!355186 lt!1532299)))))

(assert (= (and d!1268431 (not res!1767346)) b!4312280))

(assert (= (and b!4312280 res!1767347) b!4312281))

(declare-fun m!4905291 () Bool)

(assert (=> b!4312280 m!4905291))

(declare-fun m!4905293 () Bool)

(assert (=> b!4312281 m!4905293))

(assert (=> b!4312265 d!1268431))

(declare-fun bs!605243 () Bool)

(declare-fun b!4312305 () Bool)

(assert (= bs!605243 (and b!4312305 b!4312259)))

(declare-fun lambda!133065 () Int)

(assert (=> bs!605243 (= lambda!133065 lambda!133059)))

(declare-fun bs!605244 () Bool)

(assert (= bs!605244 (and b!4312305 d!1268427)))

(assert (=> bs!605244 (not (= lambda!133065 lambda!133062))))

(declare-fun b!4312304 () Bool)

(declare-fun e!2682159 () Unit!67391)

(declare-fun Unit!67393 () Unit!67391)

(assert (=> b!4312304 (= e!2682159 Unit!67393)))

(declare-fun bm!298199 () Bool)

(declare-fun call!298207 () (_ BitVec 64))

(assert (=> bm!298199 (= call!298207 (hash!1042 (hashF!6747 thiss!42308) key!2048))))

(declare-fun lt!1532359 () ListLongMap!1053)

(declare-fun call!298208 () List!48363)

(declare-fun call!298209 () ListLongMap!1053)

(declare-fun c!733154 () Bool)

(declare-fun bm!298200 () Bool)

(declare-fun apply!11044 (ListLongMap!1053 (_ BitVec 64)) List!48363)

(assert (=> bm!298200 (= call!298208 (apply!11044 (ite c!733154 lt!1532359 call!298209) call!298207))))

(declare-fun lt!1532354 () (_ BitVec 64))

(declare-fun e!2682155 () Unit!67391)

(declare-fun forallContained!1507 (List!48364 Int tuple2!46770) Unit!67391)

(assert (=> b!4312305 (= e!2682155 (forallContained!1507 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308)))) lambda!133065 (tuple2!46771 lt!1532354 (apply!11043 (v!42435 (underlying!9600 thiss!42308)) lt!1532354))))))

(declare-fun c!733153 () Bool)

(declare-fun contains!10221 (List!48364 tuple2!46770) Bool)

(assert (=> b!4312305 (= c!733153 (not (contains!10221 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308)))) (tuple2!46771 lt!1532354 (apply!11043 (v!42435 (underlying!9600 thiss!42308)) lt!1532354)))))))

(declare-fun lt!1532357 () Unit!67391)

(declare-fun e!2682157 () Unit!67391)

(assert (=> b!4312305 (= lt!1532357 e!2682157)))

(declare-fun b!4312306 () Bool)

(declare-fun e!2682160 () Unit!67391)

(assert (=> b!4312306 (= e!2682160 e!2682159)))

(declare-fun res!1767355 () Bool)

(declare-fun call!298204 () Bool)

(assert (=> b!4312306 (= res!1767355 call!298204)))

(declare-fun e!2682154 () Bool)

(assert (=> b!4312306 (=> (not res!1767355) (not e!2682154))))

(declare-fun c!733152 () Bool)

(assert (=> b!4312306 (= c!733152 e!2682154)))

(declare-fun b!4312307 () Bool)

(declare-fun e!2682158 () Bool)

(declare-fun call!298205 () Bool)

(assert (=> b!4312307 (= e!2682158 call!298205)))

(declare-fun b!4312308 () Bool)

(declare-fun Unit!67394 () Unit!67391)

(assert (=> b!4312308 (= e!2682157 Unit!67394)))

(declare-fun b!4312309 () Bool)

(assert (=> b!4312309 false))

(declare-fun lt!1532365 () Unit!67391)

(declare-fun lt!1532363 () Unit!67391)

(assert (=> b!4312309 (= lt!1532365 lt!1532363)))

(declare-fun lt!1532349 () List!48364)

(declare-fun lt!1532356 () List!48363)

(assert (=> b!4312309 (contains!10221 lt!1532349 (tuple2!46771 lt!1532354 lt!1532356))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!151 (List!48364 (_ BitVec 64) List!48363) Unit!67391)

(assert (=> b!4312309 (= lt!1532363 (lemmaGetValueByKeyImpliesContainsTuple!151 lt!1532349 lt!1532354 lt!1532356))))

(assert (=> b!4312309 (= lt!1532356 (apply!11043 (v!42435 (underlying!9600 thiss!42308)) lt!1532354))))

(assert (=> b!4312309 (= lt!1532349 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308)))))))

(declare-fun lt!1532358 () Unit!67391)

(declare-fun lt!1532351 () Unit!67391)

(assert (=> b!4312309 (= lt!1532358 lt!1532351)))

(declare-fun lt!1532361 () List!48364)

(declare-datatypes ((Option!10244 0))(
  ( (None!10243) (Some!10243 (v!42440 List!48363)) )
))
(declare-fun isDefined!7546 (Option!10244) Bool)

(declare-fun getValueByKey!263 (List!48364 (_ BitVec 64)) Option!10244)

(assert (=> b!4312309 (isDefined!7546 (getValueByKey!263 lt!1532361 lt!1532354))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!183 (List!48364 (_ BitVec 64)) Unit!67391)

(assert (=> b!4312309 (= lt!1532351 (lemmaContainsKeyImpliesGetValueByKeyDefined!183 lt!1532361 lt!1532354))))

(assert (=> b!4312309 (= lt!1532361 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308)))))))

(declare-fun lt!1532355 () Unit!67391)

(declare-fun lt!1532350 () Unit!67391)

(assert (=> b!4312309 (= lt!1532355 lt!1532350)))

(declare-fun lt!1532367 () List!48364)

(declare-fun containsKey!334 (List!48364 (_ BitVec 64)) Bool)

(assert (=> b!4312309 (containsKey!334 lt!1532367 lt!1532354)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!141 (List!48364 (_ BitVec 64)) Unit!67391)

(assert (=> b!4312309 (= lt!1532350 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!141 lt!1532367 lt!1532354))))

(assert (=> b!4312309 (= lt!1532367 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308)))))))

(declare-fun Unit!67395 () Unit!67391)

(assert (=> b!4312309 (= e!2682157 Unit!67395)))

(declare-fun bm!298202 () Bool)

(declare-datatypes ((Option!10245 0))(
  ( (None!10244) (Some!10244 (v!42441 tuple2!46768)) )
))
(declare-fun call!298206 () Option!10245)

(declare-fun getPair!140 (List!48363 K!9459) Option!10245)

(assert (=> bm!298202 (= call!298206 (getPair!140 call!298208 key!2048))))

(declare-fun bm!298203 () Bool)

(declare-fun contains!10222 (ListLongMap!1053 (_ BitVec 64)) Bool)

(assert (=> bm!298203 (= call!298204 (contains!10222 (ite c!733154 lt!1532359 call!298209) call!298207))))

(declare-fun e!2682156 () Bool)

(declare-fun b!4312310 () Bool)

(declare-fun isDefined!7547 (Option!10245) Bool)

(assert (=> b!4312310 (= e!2682156 (isDefined!7547 (getPair!140 (apply!11043 (v!42435 (underlying!9600 thiss!42308)) lt!1532354) key!2048)))))

(declare-fun b!4312311 () Bool)

(assert (=> b!4312311 false))

(declare-fun lt!1532368 () Unit!67391)

(declare-fun lt!1532360 () Unit!67391)

(assert (=> b!4312311 (= lt!1532368 lt!1532360)))

(declare-fun lt!1532352 () ListLongMap!1053)

(declare-fun contains!10223 (ListMap!1721 K!9459) Bool)

(declare-fun extractMap!335 (List!48364) ListMap!1721)

(assert (=> b!4312311 (contains!10223 (extractMap!335 (toList!2440 lt!1532352)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!140 (ListLongMap!1053 K!9459 Hashable!4601) Unit!67391)

(assert (=> b!4312311 (= lt!1532360 (lemmaInLongMapThenInGenericMap!140 lt!1532352 key!2048 (hashF!6747 thiss!42308)))))

(assert (=> b!4312311 (= lt!1532352 call!298209)))

(declare-fun Unit!67396 () Unit!67391)

(assert (=> b!4312311 (= e!2682159 Unit!67396)))

(declare-fun b!4312312 () Bool)

(assert (=> b!4312312 (= e!2682154 call!298205)))

(declare-fun b!4312313 () Bool)

(declare-fun lt!1532353 () Unit!67391)

(assert (=> b!4312313 (= e!2682160 lt!1532353)))

(assert (=> b!4312313 (= lt!1532359 call!298209)))

(declare-fun lemmaInGenericMapThenInLongMap!140 (ListLongMap!1053 K!9459 Hashable!4601) Unit!67391)

(assert (=> b!4312313 (= lt!1532353 (lemmaInGenericMapThenInLongMap!140 lt!1532359 key!2048 (hashF!6747 thiss!42308)))))

(declare-fun res!1767354 () Bool)

(assert (=> b!4312313 (= res!1767354 call!298204)))

(assert (=> b!4312313 (=> (not res!1767354) (not e!2682158))))

(assert (=> b!4312313 e!2682158))

(declare-fun d!1268433 () Bool)

(declare-fun lt!1532362 () Bool)

(assert (=> d!1268433 (= lt!1532362 (contains!10223 (map!10242 thiss!42308) key!2048))))

(assert (=> d!1268433 (= lt!1532362 e!2682156)))

(declare-fun res!1767356 () Bool)

(assert (=> d!1268433 (=> (not res!1767356) (not e!2682156))))

(declare-fun contains!10224 (MutLongMap!4685 (_ BitVec 64)) Bool)

(assert (=> d!1268433 (= res!1767356 (contains!10224 (v!42435 (underlying!9600 thiss!42308)) lt!1532354))))

(declare-fun lt!1532366 () Unit!67391)

(assert (=> d!1268433 (= lt!1532366 e!2682160)))

(assert (=> d!1268433 (= c!733154 (contains!10223 (extractMap!335 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308))))) key!2048))))

(declare-fun lt!1532364 () Unit!67391)

(assert (=> d!1268433 (= lt!1532364 e!2682155)))

(declare-fun c!733155 () Bool)

(assert (=> d!1268433 (= c!733155 (contains!10224 (v!42435 (underlying!9600 thiss!42308)) lt!1532354))))

(assert (=> d!1268433 (= lt!1532354 (hash!1042 (hashF!6747 thiss!42308) key!2048))))

(assert (=> d!1268433 (valid!3677 thiss!42308)))

(assert (=> d!1268433 (= (contains!10220 thiss!42308 key!2048) lt!1532362)))

(declare-fun bm!298201 () Bool)

(assert (=> bm!298201 (= call!298209 (map!10241 (v!42435 (underlying!9600 thiss!42308))))))

(declare-fun bm!298204 () Bool)

(assert (=> bm!298204 (= call!298205 (isDefined!7547 call!298206))))

(declare-fun b!4312314 () Bool)

(declare-fun Unit!67397 () Unit!67391)

(assert (=> b!4312314 (= e!2682155 Unit!67397)))

(assert (= (and d!1268433 c!733155) b!4312305))

(assert (= (and d!1268433 (not c!733155)) b!4312314))

(assert (= (and b!4312305 c!733153) b!4312309))

(assert (= (and b!4312305 (not c!733153)) b!4312308))

(assert (= (and d!1268433 c!733154) b!4312313))

(assert (= (and d!1268433 (not c!733154)) b!4312306))

(assert (= (and b!4312313 res!1767354) b!4312307))

(assert (= (and b!4312306 res!1767355) b!4312312))

(assert (= (and b!4312306 c!733152) b!4312311))

(assert (= (and b!4312306 (not c!733152)) b!4312304))

(assert (= (or b!4312313 b!4312306 b!4312312 b!4312311) bm!298201))

(assert (= (or b!4312313 b!4312307 b!4312306 b!4312312) bm!298199))

(assert (= (or b!4312307 b!4312312) bm!298200))

(assert (= (or b!4312313 b!4312306) bm!298203))

(assert (= (or b!4312307 b!4312312) bm!298202))

(assert (= (or b!4312307 b!4312312) bm!298204))

(assert (= (and d!1268433 res!1767356) b!4312310))

(declare-fun m!4905295 () Bool)

(assert (=> bm!298200 m!4905295))

(declare-fun m!4905297 () Bool)

(assert (=> b!4312313 m!4905297))

(assert (=> bm!298199 m!4905251))

(declare-fun m!4905299 () Bool)

(assert (=> b!4312309 m!4905299))

(declare-fun m!4905301 () Bool)

(assert (=> b!4312309 m!4905301))

(declare-fun m!4905303 () Bool)

(assert (=> b!4312309 m!4905303))

(declare-fun m!4905305 () Bool)

(assert (=> b!4312309 m!4905305))

(declare-fun m!4905307 () Bool)

(assert (=> b!4312309 m!4905307))

(assert (=> b!4312309 m!4905241))

(declare-fun m!4905309 () Bool)

(assert (=> b!4312309 m!4905309))

(declare-fun m!4905311 () Bool)

(assert (=> b!4312309 m!4905311))

(declare-fun m!4905313 () Bool)

(assert (=> b!4312309 m!4905313))

(assert (=> b!4312309 m!4905309))

(assert (=> b!4312305 m!4905241))

(assert (=> b!4312305 m!4905305))

(declare-fun m!4905315 () Bool)

(assert (=> b!4312305 m!4905315))

(declare-fun m!4905317 () Bool)

(assert (=> b!4312305 m!4905317))

(declare-fun m!4905319 () Bool)

(assert (=> bm!298204 m!4905319))

(declare-fun m!4905321 () Bool)

(assert (=> b!4312311 m!4905321))

(assert (=> b!4312311 m!4905321))

(declare-fun m!4905323 () Bool)

(assert (=> b!4312311 m!4905323))

(declare-fun m!4905325 () Bool)

(assert (=> b!4312311 m!4905325))

(declare-fun m!4905327 () Bool)

(assert (=> bm!298202 m!4905327))

(declare-fun m!4905329 () Bool)

(assert (=> bm!298203 m!4905329))

(assert (=> b!4312310 m!4905305))

(assert (=> b!4312310 m!4905305))

(declare-fun m!4905331 () Bool)

(assert (=> b!4312310 m!4905331))

(assert (=> b!4312310 m!4905331))

(declare-fun m!4905333 () Bool)

(assert (=> b!4312310 m!4905333))

(assert (=> d!1268433 m!4905279))

(assert (=> d!1268433 m!4905241))

(assert (=> d!1268433 m!4905251))

(declare-fun m!4905335 () Bool)

(assert (=> d!1268433 m!4905335))

(assert (=> d!1268433 m!4905243))

(declare-fun m!4905337 () Bool)

(assert (=> d!1268433 m!4905337))

(declare-fun m!4905339 () Bool)

(assert (=> d!1268433 m!4905339))

(declare-fun m!4905341 () Bool)

(assert (=> d!1268433 m!4905341))

(assert (=> d!1268433 m!4905339))

(assert (=> d!1268433 m!4905243))

(assert (=> bm!298201 m!4905241))

(assert (=> b!4312257 d!1268433))

(declare-fun d!1268435 () Bool)

(declare-fun map!10243 (LongMapFixedSize!9370) ListLongMap!1053)

(assert (=> d!1268435 (= (map!10241 (v!42435 (underlying!9600 thiss!42308))) (map!10243 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308))))))))

(declare-fun bs!605245 () Bool)

(assert (= bs!605245 d!1268435))

(declare-fun m!4905343 () Bool)

(assert (=> bs!605245 m!4905343))

(assert (=> b!4312257 d!1268435))

(declare-fun d!1268437 () Bool)

(declare-fun lt!1532371 () ListMap!1721)

(declare-fun invariantList!579 (List!48363) Bool)

(assert (=> d!1268437 (invariantList!579 (toList!2441 lt!1532371))))

(assert (=> d!1268437 (= lt!1532371 (extractMap!335 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308))))))))

(assert (=> d!1268437 (valid!3677 thiss!42308)))

(assert (=> d!1268437 (= (map!10242 thiss!42308) lt!1532371)))

(declare-fun bs!605246 () Bool)

(assert (= bs!605246 d!1268437))

(declare-fun m!4905345 () Bool)

(assert (=> bs!605246 m!4905345))

(assert (=> bs!605246 m!4905241))

(assert (=> bs!605246 m!4905339))

(assert (=> bs!605246 m!4905279))

(assert (=> b!4312257 d!1268437))

(declare-fun d!1268439 () Bool)

(assert (=> d!1268439 (= (array_inv!5425 (_keys!4985 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) (bvsge (size!35594 (_keys!4985 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4312255 d!1268439))

(declare-fun d!1268441 () Bool)

(assert (=> d!1268441 (= (array_inv!5426 (_values!4966 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) (bvsge (size!35595 (_values!4966 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4312255 d!1268441))

(declare-fun bs!605247 () Bool)

(declare-fun b!4312319 () Bool)

(assert (= bs!605247 (and b!4312319 b!4312259)))

(declare-fun lambda!133068 () Int)

(assert (=> bs!605247 (= lambda!133068 lambda!133059)))

(declare-fun bs!605248 () Bool)

(assert (= bs!605248 (and b!4312319 d!1268427)))

(assert (=> bs!605248 (not (= lambda!133068 lambda!133062))))

(declare-fun bs!605249 () Bool)

(assert (= bs!605249 (and b!4312319 b!4312305)))

(assert (=> bs!605249 (= lambda!133068 lambda!133065)))

(declare-fun d!1268443 () Bool)

(declare-fun res!1767361 () Bool)

(declare-fun e!2682163 () Bool)

(assert (=> d!1268443 (=> (not res!1767361) (not e!2682163))))

(declare-fun valid!3678 (MutLongMap!4685) Bool)

(assert (=> d!1268443 (= res!1767361 (valid!3678 (v!42435 (underlying!9600 thiss!42308))))))

(assert (=> d!1268443 (= (valid!3677 thiss!42308) e!2682163)))

(declare-fun res!1767362 () Bool)

(assert (=> b!4312319 (=> (not res!1767362) (not e!2682163))))

(assert (=> b!4312319 (= res!1767362 (forall!8749 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308)))) lambda!133068))))

(declare-fun b!4312320 () Bool)

(assert (=> b!4312320 (= e!2682163 (allKeysSameHashInMap!347 (map!10241 (v!42435 (underlying!9600 thiss!42308))) (hashF!6747 thiss!42308)))))

(assert (= (and d!1268443 res!1767361) b!4312319))

(assert (= (and b!4312319 res!1767362) b!4312320))

(declare-fun m!4905347 () Bool)

(assert (=> d!1268443 m!4905347))

(assert (=> b!4312319 m!4905241))

(declare-fun m!4905349 () Bool)

(assert (=> b!4312319 m!4905349))

(assert (=> b!4312320 m!4905241))

(assert (=> b!4312320 m!4905241))

(declare-fun m!4905351 () Bool)

(assert (=> b!4312320 m!4905351))

(assert (=> b!4312258 d!1268443))

(declare-fun b!4312339 () Bool)

(declare-fun e!2682178 () Bool)

(declare-fun call!298215 () ListLongMap!1053)

(declare-fun call!298214 () ListLongMap!1053)

(assert (=> b!4312339 (= e!2682178 (= call!298215 call!298214))))

(declare-fun b!4312340 () Bool)

(declare-fun e!2682174 () tuple2!46772)

(declare-datatypes ((tuple2!46774 0))(
  ( (tuple2!46775 (_1!26668 Bool) (_2!26668 LongMapFixedSize!9370)) )
))
(declare-fun lt!1532380 () tuple2!46774)

(assert (=> b!4312340 (= e!2682174 (tuple2!46773 (_1!26668 lt!1532380) (LongMap!4685 (Cell!18550 (_2!26668 lt!1532380)))))))

(declare-fun lt!1532382 () tuple2!46772)

(declare-fun update!458 (LongMapFixedSize!9370 (_ BitVec 64) List!48363) tuple2!46774)

(assert (=> b!4312340 (= lt!1532380 (update!458 (v!42434 (underlying!9599 (_2!26667 lt!1532382))) lt!1532306 lt!1532299))))

(declare-fun b!4312341 () Bool)

(assert (=> b!4312341 (= e!2682174 (tuple2!46773 false (_2!26667 lt!1532382)))))

(declare-fun b!4312342 () Bool)

(declare-fun res!1767369 () Bool)

(declare-fun e!2682176 () Bool)

(assert (=> b!4312342 (=> (not res!1767369) (not e!2682176))))

(declare-fun lt!1532381 () tuple2!46772)

(assert (=> b!4312342 (= res!1767369 (valid!3678 (_2!26667 lt!1532381)))))

(declare-fun b!4312343 () Bool)

(assert (=> b!4312343 (= e!2682176 e!2682178)))

(declare-fun c!733162 () Bool)

(assert (=> b!4312343 (= c!733162 (_1!26667 lt!1532381))))

(declare-fun b!4312344 () Bool)

(declare-fun e!2682175 () tuple2!46772)

(declare-fun lt!1532383 () tuple2!46772)

(assert (=> b!4312344 (= e!2682175 (tuple2!46773 (_1!26667 lt!1532383) (_2!26667 lt!1532383)))))

(declare-fun repack!62 (MutLongMap!4685) tuple2!46772)

(assert (=> b!4312344 (= lt!1532383 (repack!62 (v!42435 (underlying!9600 thiss!42308))))))

(declare-fun e!2682177 () Bool)

(declare-fun b!4312345 () Bool)

(assert (=> b!4312345 (= e!2682177 (= call!298215 (+!278 call!298214 (tuple2!46771 lt!1532306 lt!1532299))))))

(declare-fun bm!298209 () Bool)

(assert (=> bm!298209 (= call!298214 (map!10241 (v!42435 (underlying!9600 thiss!42308))))))

(declare-fun d!1268445 () Bool)

(assert (=> d!1268445 e!2682176))

(declare-fun res!1767371 () Bool)

(assert (=> d!1268445 (=> (not res!1767371) (not e!2682176))))

(assert (=> d!1268445 (= res!1767371 ((_ is LongMap!4685) (_2!26667 lt!1532381)))))

(assert (=> d!1268445 (= lt!1532381 e!2682174)))

(declare-fun c!733164 () Bool)

(assert (=> d!1268445 (= c!733164 (_1!26667 lt!1532382))))

(assert (=> d!1268445 (= lt!1532382 e!2682175)))

(declare-fun c!733163 () Bool)

(declare-fun imbalanced!58 (MutLongMap!4685) Bool)

(assert (=> d!1268445 (= c!733163 (imbalanced!58 (v!42435 (underlying!9600 thiss!42308))))))

(assert (=> d!1268445 (valid!3678 (v!42435 (underlying!9600 thiss!42308)))))

(assert (=> d!1268445 (= (update!457 (v!42435 (underlying!9600 thiss!42308)) lt!1532306 lt!1532299) lt!1532381)))

(declare-fun b!4312346 () Bool)

(assert (=> b!4312346 (= e!2682175 (tuple2!46773 true (v!42435 (underlying!9600 thiss!42308))))))

(declare-fun b!4312347 () Bool)

(assert (=> b!4312347 (= e!2682178 e!2682177)))

(declare-fun res!1767370 () Bool)

(assert (=> b!4312347 (= res!1767370 (contains!10222 call!298215 lt!1532306))))

(assert (=> b!4312347 (=> (not res!1767370) (not e!2682177))))

(declare-fun bm!298210 () Bool)

(assert (=> bm!298210 (= call!298215 (map!10241 (_2!26667 lt!1532381)))))

(assert (= (and d!1268445 c!733163) b!4312344))

(assert (= (and d!1268445 (not c!733163)) b!4312346))

(assert (= (and d!1268445 c!733164) b!4312340))

(assert (= (and d!1268445 (not c!733164)) b!4312341))

(assert (= (and d!1268445 res!1767371) b!4312342))

(assert (= (and b!4312342 res!1767369) b!4312343))

(assert (= (and b!4312343 c!733162) b!4312347))

(assert (= (and b!4312343 (not c!733162)) b!4312339))

(assert (= (and b!4312347 res!1767370) b!4312345))

(assert (= (or b!4312347 b!4312345 b!4312339) bm!298210))

(assert (= (or b!4312345 b!4312339) bm!298209))

(declare-fun m!4905353 () Bool)

(assert (=> b!4312340 m!4905353))

(declare-fun m!4905355 () Bool)

(assert (=> d!1268445 m!4905355))

(assert (=> d!1268445 m!4905347))

(declare-fun m!4905357 () Bool)

(assert (=> b!4312342 m!4905357))

(declare-fun m!4905359 () Bool)

(assert (=> b!4312344 m!4905359))

(assert (=> bm!298209 m!4905241))

(declare-fun m!4905361 () Bool)

(assert (=> b!4312347 m!4905361))

(declare-fun m!4905363 () Bool)

(assert (=> bm!298210 m!4905363))

(declare-fun m!4905365 () Bool)

(assert (=> b!4312345 m!4905365))

(assert (=> b!4312264 d!1268445))

(declare-fun d!1268447 () Bool)

(declare-fun lt!1532386 () List!48363)

(assert (=> d!1268447 (not (containsKey!333 lt!1532386 key!2048))))

(declare-fun e!2682184 () List!48363)

(assert (=> d!1268447 (= lt!1532386 e!2682184)))

(declare-fun c!733170 () Bool)

(assert (=> d!1268447 (= c!733170 (and ((_ is Cons!48239) lt!1532303) (= (_1!26665 (h!53681 lt!1532303)) key!2048)))))

(assert (=> d!1268447 (noDuplicateKeys!228 lt!1532303)))

(assert (=> d!1268447 (= (removePairForKey!226 lt!1532303 key!2048) lt!1532386)))

(declare-fun b!4312359 () Bool)

(declare-fun e!2682183 () List!48363)

(assert (=> b!4312359 (= e!2682183 Nil!48239)))

(declare-fun b!4312358 () Bool)

(assert (=> b!4312358 (= e!2682183 (Cons!48239 (h!53681 lt!1532303) (removePairForKey!226 (t!355186 lt!1532303) key!2048)))))

(declare-fun b!4312356 () Bool)

(assert (=> b!4312356 (= e!2682184 (t!355186 lt!1532303))))

(declare-fun b!4312357 () Bool)

(assert (=> b!4312357 (= e!2682184 e!2682183)))

(declare-fun c!733169 () Bool)

(assert (=> b!4312357 (= c!733169 ((_ is Cons!48239) lt!1532303))))

(assert (= (and d!1268447 c!733170) b!4312356))

(assert (= (and d!1268447 (not c!733170)) b!4312357))

(assert (= (and b!4312357 c!733169) b!4312358))

(assert (= (and b!4312357 (not c!733169)) b!4312359))

(declare-fun m!4905367 () Bool)

(assert (=> d!1268447 m!4905367))

(declare-fun m!4905369 () Bool)

(assert (=> d!1268447 m!4905369))

(declare-fun m!4905371 () Bool)

(assert (=> b!4312358 m!4905371))

(assert (=> b!4312264 d!1268447))

(declare-fun d!1268449 () Bool)

(declare-fun e!2682187 () Bool)

(assert (=> d!1268449 e!2682187))

(declare-fun c!733173 () Bool)

(assert (=> d!1268449 (= c!733173 (contains!10224 (v!42435 (underlying!9600 thiss!42308)) lt!1532306))))

(declare-fun lt!1532389 () List!48363)

(declare-fun apply!11045 (LongMapFixedSize!9370 (_ BitVec 64)) List!48363)

(assert (=> d!1268449 (= lt!1532389 (apply!11045 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))) lt!1532306))))

(assert (=> d!1268449 (valid!3678 (v!42435 (underlying!9600 thiss!42308)))))

(assert (=> d!1268449 (= (apply!11043 (v!42435 (underlying!9600 thiss!42308)) lt!1532306) lt!1532389)))

(declare-fun b!4312364 () Bool)

(declare-fun get!15614 (Option!10244) List!48363)

(assert (=> b!4312364 (= e!2682187 (= lt!1532389 (get!15614 (getValueByKey!263 (toList!2440 (map!10241 (v!42435 (underlying!9600 thiss!42308)))) lt!1532306))))))

(declare-fun b!4312365 () Bool)

(declare-fun dynLambda!20449 (Int (_ BitVec 64)) List!48363)

(assert (=> b!4312365 (= e!2682187 (= lt!1532389 (dynLambda!20449 (defaultEntry!5070 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308))))) lt!1532306)))))

(assert (=> b!4312365 ((_ is LongMap!4685) (v!42435 (underlying!9600 thiss!42308)))))

(assert (= (and d!1268449 c!733173) b!4312364))

(assert (= (and d!1268449 (not c!733173)) b!4312365))

(declare-fun b_lambda!126719 () Bool)

(assert (=> (not b_lambda!126719) (not b!4312365)))

(declare-fun t!355189 () Bool)

(declare-fun tb!257309 () Bool)

(assert (=> (and b!4312255 (= (defaultEntry!5070 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308))))) (defaultEntry!5070 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308)))))) t!355189) tb!257309))

(assert (=> b!4312365 t!355189))

(declare-fun result!314734 () Bool)

(declare-fun b_and!340153 () Bool)

(assert (= b_and!340149 (and (=> t!355189 result!314734) b_and!340153)))

(declare-fun m!4905373 () Bool)

(assert (=> d!1268449 m!4905373))

(declare-fun m!4905375 () Bool)

(assert (=> d!1268449 m!4905375))

(assert (=> d!1268449 m!4905347))

(assert (=> b!4312364 m!4905241))

(declare-fun m!4905377 () Bool)

(assert (=> b!4312364 m!4905377))

(assert (=> b!4312364 m!4905377))

(declare-fun m!4905379 () Bool)

(assert (=> b!4312364 m!4905379))

(declare-fun m!4905381 () Bool)

(assert (=> b!4312365 m!4905381))

(assert (=> b!4312264 d!1268449))

(declare-fun d!1268451 () Bool)

(declare-fun hash!1046 (Hashable!4601 K!9459) (_ BitVec 64))

(assert (=> d!1268451 (= (hash!1042 (hashF!6747 thiss!42308) key!2048) (hash!1046 (hashF!6747 thiss!42308) key!2048))))

(declare-fun bs!605250 () Bool)

(assert (= bs!605250 d!1268451))

(declare-fun m!4905383 () Bool)

(assert (=> bs!605250 m!4905383))

(assert (=> b!4312264 d!1268451))

(declare-fun d!1268453 () Bool)

(assert (=> d!1268453 (allKeysSameHash!201 (removePairForKey!226 lt!1532303 key!2048) lt!1532306 (hashF!6747 thiss!42308))))

(declare-fun lt!1532392 () Unit!67391)

(declare-fun choose!26280 (List!48363 K!9459 (_ BitVec 64) Hashable!4601) Unit!67391)

(assert (=> d!1268453 (= lt!1532392 (choose!26280 lt!1532303 key!2048 lt!1532306 (hashF!6747 thiss!42308)))))

(assert (=> d!1268453 (noDuplicateKeys!228 lt!1532303)))

(assert (=> d!1268453 (= (lemmaRemovePairForKeyPreservesHash!181 lt!1532303 key!2048 lt!1532306 (hashF!6747 thiss!42308)) lt!1532392)))

(declare-fun bs!605251 () Bool)

(assert (= bs!605251 d!1268453))

(assert (=> bs!605251 m!4905247))

(assert (=> bs!605251 m!4905247))

(declare-fun m!4905385 () Bool)

(assert (=> bs!605251 m!4905385))

(declare-fun m!4905387 () Bool)

(assert (=> bs!605251 m!4905387))

(assert (=> bs!605251 m!4905369))

(assert (=> b!4312259 d!1268453))

(declare-fun d!1268455 () Bool)

(declare-fun res!1767372 () Bool)

(declare-fun e!2682188 () Bool)

(assert (=> d!1268455 (=> res!1767372 e!2682188)))

(assert (=> d!1268455 (= res!1767372 (not ((_ is Cons!48239) lt!1532297)))))

(assert (=> d!1268455 (= (noDuplicateKeys!228 lt!1532297) e!2682188)))

(declare-fun b!4312366 () Bool)

(declare-fun e!2682189 () Bool)

(assert (=> b!4312366 (= e!2682188 e!2682189)))

(declare-fun res!1767373 () Bool)

(assert (=> b!4312366 (=> (not res!1767373) (not e!2682189))))

(assert (=> b!4312366 (= res!1767373 (not (containsKey!333 (t!355186 lt!1532297) (_1!26665 (h!53681 lt!1532297)))))))

(declare-fun b!4312367 () Bool)

(assert (=> b!4312367 (= e!2682189 (noDuplicateKeys!228 (t!355186 lt!1532297)))))

(assert (= (and d!1268455 (not res!1767372)) b!4312366))

(assert (= (and b!4312366 res!1767373) b!4312367))

(declare-fun m!4905389 () Bool)

(assert (=> b!4312366 m!4905389))

(declare-fun m!4905391 () Bool)

(assert (=> b!4312367 m!4905391))

(assert (=> b!4312259 d!1268455))

(declare-fun bs!605252 () Bool)

(declare-fun d!1268457 () Bool)

(assert (= bs!605252 (and d!1268457 b!4312259)))

(declare-fun lambda!133073 () Int)

(assert (=> bs!605252 (= lambda!133073 lambda!133059)))

(declare-fun bs!605253 () Bool)

(assert (= bs!605253 (and d!1268457 d!1268427)))

(assert (=> bs!605253 (not (= lambda!133073 lambda!133062))))

(declare-fun bs!605254 () Bool)

(assert (= bs!605254 (and d!1268457 b!4312305)))

(assert (=> bs!605254 (= lambda!133073 lambda!133065)))

(declare-fun bs!605255 () Bool)

(assert (= bs!605255 (and d!1268457 b!4312319)))

(assert (=> bs!605255 (= lambda!133073 lambda!133068)))

(declare-fun e!2682192 () Bool)

(assert (=> d!1268457 e!2682192))

(declare-fun res!1767376 () Bool)

(assert (=> d!1268457 (=> (not res!1767376) (not e!2682192))))

(declare-fun lt!1532398 () ListLongMap!1053)

(assert (=> d!1268457 (= res!1767376 (forall!8749 (toList!2440 lt!1532398) lambda!133073))))

(assert (=> d!1268457 (= lt!1532398 (+!278 lt!1532307 (tuple2!46771 lt!1532306 lt!1532299)))))

(declare-fun lt!1532397 () Unit!67391)

(declare-fun choose!26281 (ListLongMap!1053 (_ BitVec 64) List!48363 Hashable!4601) Unit!67391)

(assert (=> d!1268457 (= lt!1532397 (choose!26281 lt!1532307 lt!1532306 lt!1532299 (hashF!6747 thiss!42308)))))

(assert (=> d!1268457 (forall!8749 (toList!2440 lt!1532307) lambda!133073)))

(assert (=> d!1268457 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!150 lt!1532307 lt!1532306 lt!1532299 (hashF!6747 thiss!42308)) lt!1532397)))

(declare-fun b!4312370 () Bool)

(assert (=> b!4312370 (= e!2682192 (allKeysSameHashInMap!347 lt!1532398 (hashF!6747 thiss!42308)))))

(assert (= (and d!1268457 res!1767376) b!4312370))

(declare-fun m!4905393 () Bool)

(assert (=> d!1268457 m!4905393))

(assert (=> d!1268457 m!4905267))

(declare-fun m!4905395 () Bool)

(assert (=> d!1268457 m!4905395))

(declare-fun m!4905397 () Bool)

(assert (=> d!1268457 m!4905397))

(declare-fun m!4905399 () Bool)

(assert (=> b!4312370 m!4905399))

(assert (=> b!4312259 d!1268457))

(declare-fun d!1268459 () Bool)

(assert (=> d!1268459 true))

(assert (=> d!1268459 true))

(declare-fun lambda!133076 () Int)

(declare-fun forall!8750 (List!48363 Int) Bool)

(assert (=> d!1268459 (= (allKeysSameHash!201 lt!1532303 lt!1532306 (hashF!6747 thiss!42308)) (forall!8750 lt!1532303 lambda!133076))))

(declare-fun bs!605256 () Bool)

(assert (= bs!605256 d!1268459))

(declare-fun m!4905401 () Bool)

(assert (=> bs!605256 m!4905401))

(assert (=> b!4312259 d!1268459))

(declare-fun d!1268461 () Bool)

(declare-fun res!1767381 () Bool)

(declare-fun e!2682197 () Bool)

(assert (=> d!1268461 (=> res!1767381 e!2682197)))

(assert (=> d!1268461 (= res!1767381 ((_ is Nil!48240) (toList!2440 lt!1532302)))))

(assert (=> d!1268461 (= (forall!8749 (toList!2440 lt!1532302) lambda!133059) e!2682197)))

(declare-fun b!4312379 () Bool)

(declare-fun e!2682198 () Bool)

(assert (=> b!4312379 (= e!2682197 e!2682198)))

(declare-fun res!1767382 () Bool)

(assert (=> b!4312379 (=> (not res!1767382) (not e!2682198))))

(declare-fun dynLambda!20450 (Int tuple2!46770) Bool)

(assert (=> b!4312379 (= res!1767382 (dynLambda!20450 lambda!133059 (h!53682 (toList!2440 lt!1532302))))))

(declare-fun b!4312380 () Bool)

(assert (=> b!4312380 (= e!2682198 (forall!8749 (t!355187 (toList!2440 lt!1532302)) lambda!133059))))

(assert (= (and d!1268461 (not res!1767381)) b!4312379))

(assert (= (and b!4312379 res!1767382) b!4312380))

(declare-fun b_lambda!126721 () Bool)

(assert (=> (not b_lambda!126721) (not b!4312379)))

(declare-fun m!4905403 () Bool)

(assert (=> b!4312379 m!4905403))

(declare-fun m!4905405 () Bool)

(assert (=> b!4312380 m!4905405))

(assert (=> b!4312259 d!1268461))

(declare-fun bs!605257 () Bool)

(declare-fun d!1268463 () Bool)

(assert (= bs!605257 (and d!1268463 d!1268457)))

(declare-fun lambda!133079 () Int)

(assert (=> bs!605257 (not (= lambda!133079 lambda!133073))))

(declare-fun bs!605258 () Bool)

(assert (= bs!605258 (and d!1268463 b!4312259)))

(assert (=> bs!605258 (not (= lambda!133079 lambda!133059))))

(declare-fun bs!605259 () Bool)

(assert (= bs!605259 (and d!1268463 b!4312319)))

(assert (=> bs!605259 (not (= lambda!133079 lambda!133068))))

(declare-fun bs!605260 () Bool)

(assert (= bs!605260 (and d!1268463 b!4312305)))

(assert (=> bs!605260 (not (= lambda!133079 lambda!133065))))

(declare-fun bs!605261 () Bool)

(assert (= bs!605261 (and d!1268463 d!1268427)))

(assert (=> bs!605261 (= lambda!133079 lambda!133062)))

(assert (=> d!1268463 true))

(assert (=> d!1268463 (allKeysSameHash!201 lt!1532303 lt!1532306 (hashF!6747 thiss!42308))))

(declare-fun lt!1532401 () Unit!67391)

(declare-fun choose!26282 (List!48364 (_ BitVec 64) List!48363 Hashable!4601) Unit!67391)

(assert (=> d!1268463 (= lt!1532401 (choose!26282 (toList!2440 lt!1532307) lt!1532306 lt!1532303 (hashF!6747 thiss!42308)))))

(assert (=> d!1268463 (forall!8749 (toList!2440 lt!1532307) lambda!133079)))

(assert (=> d!1268463 (= (lemmaInLongMapAllKeySameHashThenForTuple!188 (toList!2440 lt!1532307) lt!1532306 lt!1532303 (hashF!6747 thiss!42308)) lt!1532401)))

(declare-fun bs!605262 () Bool)

(assert (= bs!605262 d!1268463))

(assert (=> bs!605262 m!4905273))

(declare-fun m!4905407 () Bool)

(assert (=> bs!605262 m!4905407))

(declare-fun m!4905409 () Bool)

(assert (=> bs!605262 m!4905409))

(assert (=> b!4312259 d!1268463))

(declare-fun d!1268465 () Bool)

(assert (=> d!1268465 (noDuplicateKeys!228 (removePairForKey!226 lt!1532303 key!2048))))

(declare-fun lt!1532404 () Unit!67391)

(declare-fun choose!26283 (List!48363 K!9459) Unit!67391)

(assert (=> d!1268465 (= lt!1532404 (choose!26283 lt!1532303 key!2048))))

(assert (=> d!1268465 (noDuplicateKeys!228 lt!1532303)))

(assert (=> d!1268465 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!176 lt!1532303 key!2048) lt!1532404)))

(declare-fun bs!605263 () Bool)

(assert (= bs!605263 d!1268465))

(assert (=> bs!605263 m!4905247))

(assert (=> bs!605263 m!4905247))

(declare-fun m!4905411 () Bool)

(assert (=> bs!605263 m!4905411))

(declare-fun m!4905413 () Bool)

(assert (=> bs!605263 m!4905413))

(assert (=> bs!605263 m!4905369))

(assert (=> b!4312259 d!1268465))

(declare-fun d!1268467 () Bool)

(declare-fun e!2682201 () Bool)

(assert (=> d!1268467 e!2682201))

(declare-fun res!1767387 () Bool)

(assert (=> d!1268467 (=> (not res!1767387) (not e!2682201))))

(declare-fun lt!1532413 () ListLongMap!1053)

(assert (=> d!1268467 (= res!1767387 (contains!10222 lt!1532413 (_1!26666 (tuple2!46771 lt!1532306 lt!1532299))))))

(declare-fun lt!1532416 () List!48364)

(assert (=> d!1268467 (= lt!1532413 (ListLongMap!1054 lt!1532416))))

(declare-fun lt!1532415 () Unit!67391)

(declare-fun lt!1532414 () Unit!67391)

(assert (=> d!1268467 (= lt!1532415 lt!1532414)))

(assert (=> d!1268467 (= (getValueByKey!263 lt!1532416 (_1!26666 (tuple2!46771 lt!1532306 lt!1532299))) (Some!10243 (_2!26666 (tuple2!46771 lt!1532306 lt!1532299))))))

(declare-fun lemmaContainsTupThenGetReturnValue!76 (List!48364 (_ BitVec 64) List!48363) Unit!67391)

(assert (=> d!1268467 (= lt!1532414 (lemmaContainsTupThenGetReturnValue!76 lt!1532416 (_1!26666 (tuple2!46771 lt!1532306 lt!1532299)) (_2!26666 (tuple2!46771 lt!1532306 lt!1532299))))))

(declare-fun insertStrictlySorted!40 (List!48364 (_ BitVec 64) List!48363) List!48364)

(assert (=> d!1268467 (= lt!1532416 (insertStrictlySorted!40 (toList!2440 lt!1532307) (_1!26666 (tuple2!46771 lt!1532306 lt!1532299)) (_2!26666 (tuple2!46771 lt!1532306 lt!1532299))))))

(assert (=> d!1268467 (= (+!278 lt!1532307 (tuple2!46771 lt!1532306 lt!1532299)) lt!1532413)))

(declare-fun b!4312385 () Bool)

(declare-fun res!1767388 () Bool)

(assert (=> b!4312385 (=> (not res!1767388) (not e!2682201))))

(assert (=> b!4312385 (= res!1767388 (= (getValueByKey!263 (toList!2440 lt!1532413) (_1!26666 (tuple2!46771 lt!1532306 lt!1532299))) (Some!10243 (_2!26666 (tuple2!46771 lt!1532306 lt!1532299)))))))

(declare-fun b!4312386 () Bool)

(assert (=> b!4312386 (= e!2682201 (contains!10221 (toList!2440 lt!1532413) (tuple2!46771 lt!1532306 lt!1532299)))))

(assert (= (and d!1268467 res!1767387) b!4312385))

(assert (= (and b!4312385 res!1767388) b!4312386))

(declare-fun m!4905415 () Bool)

(assert (=> d!1268467 m!4905415))

(declare-fun m!4905417 () Bool)

(assert (=> d!1268467 m!4905417))

(declare-fun m!4905419 () Bool)

(assert (=> d!1268467 m!4905419))

(declare-fun m!4905421 () Bool)

(assert (=> d!1268467 m!4905421))

(declare-fun m!4905423 () Bool)

(assert (=> b!4312385 m!4905423))

(declare-fun m!4905425 () Bool)

(assert (=> b!4312386 m!4905425))

(assert (=> b!4312259 d!1268467))

(declare-fun bs!605264 () Bool)

(declare-fun d!1268469 () Bool)

(assert (= bs!605264 (and d!1268469 d!1268459)))

(declare-fun lambda!133080 () Int)

(assert (=> bs!605264 (= lambda!133080 lambda!133076)))

(assert (=> d!1268469 true))

(assert (=> d!1268469 true))

(assert (=> d!1268469 (= (allKeysSameHash!201 lt!1532297 lt!1532306 (hashF!6747 thiss!42308)) (forall!8750 lt!1532297 lambda!133080))))

(declare-fun bs!605265 () Bool)

(assert (= bs!605265 d!1268469))

(declare-fun m!4905427 () Bool)

(assert (=> bs!605265 m!4905427))

(assert (=> b!4312259 d!1268469))

(declare-fun d!1268471 () Bool)

(declare-fun res!1767389 () Bool)

(declare-fun e!2682202 () Bool)

(assert (=> d!1268471 (=> res!1767389 e!2682202)))

(assert (=> d!1268471 (= res!1767389 ((_ is Nil!48240) (toList!2440 lt!1532307)))))

(assert (=> d!1268471 (= (forall!8749 (toList!2440 lt!1532307) lambda!133059) e!2682202)))

(declare-fun b!4312387 () Bool)

(declare-fun e!2682203 () Bool)

(assert (=> b!4312387 (= e!2682202 e!2682203)))

(declare-fun res!1767390 () Bool)

(assert (=> b!4312387 (=> (not res!1767390) (not e!2682203))))

(assert (=> b!4312387 (= res!1767390 (dynLambda!20450 lambda!133059 (h!53682 (toList!2440 lt!1532307))))))

(declare-fun b!4312388 () Bool)

(assert (=> b!4312388 (= e!2682203 (forall!8749 (t!355187 (toList!2440 lt!1532307)) lambda!133059))))

(assert (= (and d!1268471 (not res!1767389)) b!4312387))

(assert (= (and b!4312387 res!1767390) b!4312388))

(declare-fun b_lambda!126723 () Bool)

(assert (=> (not b_lambda!126723) (not b!4312387)))

(declare-fun m!4905429 () Bool)

(assert (=> b!4312387 m!4905429))

(declare-fun m!4905431 () Bool)

(assert (=> b!4312388 m!4905431))

(assert (=> b!4312259 d!1268471))

(declare-fun b!4312393 () Bool)

(declare-fun e!2682206 () Bool)

(declare-fun tp!1325122 () Bool)

(assert (=> b!4312393 (= e!2682206 (and tp_is_empty!23845 tp_is_empty!23847 tp!1325122))))

(assert (=> b!4312261 (= tp!1325115 e!2682206)))

(assert (= (and b!4312261 ((_ is Cons!48239) mapDefault!20910)) b!4312393))

(declare-fun e!2682207 () Bool)

(declare-fun b!4312394 () Bool)

(declare-fun tp!1325123 () Bool)

(assert (=> b!4312394 (= e!2682207 (and tp_is_empty!23845 tp_is_empty!23847 tp!1325123))))

(assert (=> b!4312255 (= tp!1325119 e!2682207)))

(assert (= (and b!4312255 ((_ is Cons!48239) (zeroValue!4944 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308))))))) b!4312394))

(declare-fun e!2682208 () Bool)

(declare-fun b!4312395 () Bool)

(declare-fun tp!1325124 () Bool)

(assert (=> b!4312395 (= e!2682208 (and tp_is_empty!23845 tp_is_empty!23847 tp!1325124))))

(assert (=> b!4312255 (= tp!1325116 e!2682208)))

(assert (= (and b!4312255 ((_ is Cons!48239) (minValue!4944 (v!42434 (underlying!9599 (v!42435 (underlying!9600 thiss!42308))))))) b!4312395))

(declare-fun b!4312403 () Bool)

(declare-fun e!2682213 () Bool)

(declare-fun tp!1325132 () Bool)

(assert (=> b!4312403 (= e!2682213 (and tp_is_empty!23845 tp_is_empty!23847 tp!1325132))))

(declare-fun tp!1325133 () Bool)

(declare-fun b!4312402 () Bool)

(declare-fun e!2682214 () Bool)

(assert (=> b!4312402 (= e!2682214 (and tp_is_empty!23845 tp_is_empty!23847 tp!1325133))))

(declare-fun mapIsEmpty!20913 () Bool)

(declare-fun mapRes!20913 () Bool)

(assert (=> mapIsEmpty!20913 mapRes!20913))

(declare-fun condMapEmpty!20913 () Bool)

(declare-fun mapDefault!20913 () List!48363)

(assert (=> mapNonEmpty!20910 (= condMapEmpty!20913 (= mapRest!20910 ((as const (Array (_ BitVec 32) List!48363)) mapDefault!20913)))))

(assert (=> mapNonEmpty!20910 (= tp!1325117 (and e!2682213 mapRes!20913))))

(declare-fun mapNonEmpty!20913 () Bool)

(declare-fun tp!1325131 () Bool)

(assert (=> mapNonEmpty!20913 (= mapRes!20913 (and tp!1325131 e!2682214))))

(declare-fun mapValue!20913 () List!48363)

(declare-fun mapRest!20913 () (Array (_ BitVec 32) List!48363))

(declare-fun mapKey!20913 () (_ BitVec 32))

(assert (=> mapNonEmpty!20913 (= mapRest!20910 (store mapRest!20913 mapKey!20913 mapValue!20913))))

(assert (= (and mapNonEmpty!20910 condMapEmpty!20913) mapIsEmpty!20913))

(assert (= (and mapNonEmpty!20910 (not condMapEmpty!20913)) mapNonEmpty!20913))

(assert (= (and mapNonEmpty!20913 ((_ is Cons!48239) mapValue!20913)) b!4312402))

(assert (= (and mapNonEmpty!20910 ((_ is Cons!48239) mapDefault!20913)) b!4312403))

(declare-fun m!4905433 () Bool)

(assert (=> mapNonEmpty!20913 m!4905433))

(declare-fun b!4312404 () Bool)

(declare-fun tp!1325134 () Bool)

(declare-fun e!2682215 () Bool)

(assert (=> b!4312404 (= e!2682215 (and tp_is_empty!23845 tp_is_empty!23847 tp!1325134))))

(assert (=> mapNonEmpty!20910 (= tp!1325118 e!2682215)))

(assert (= (and mapNonEmpty!20910 ((_ is Cons!48239) mapValue!20910)) b!4312404))

(declare-fun b_lambda!126725 () Bool)

(assert (= b_lambda!126723 (or b!4312259 b_lambda!126725)))

(declare-fun bs!605266 () Bool)

(declare-fun d!1268473 () Bool)

(assert (= bs!605266 (and d!1268473 b!4312259)))

(assert (=> bs!605266 (= (dynLambda!20450 lambda!133059 (h!53682 (toList!2440 lt!1532307))) (noDuplicateKeys!228 (_2!26666 (h!53682 (toList!2440 lt!1532307)))))))

(declare-fun m!4905435 () Bool)

(assert (=> bs!605266 m!4905435))

(assert (=> b!4312387 d!1268473))

(declare-fun b_lambda!126727 () Bool)

(assert (= b_lambda!126721 (or b!4312259 b_lambda!126727)))

(declare-fun bs!605267 () Bool)

(declare-fun d!1268475 () Bool)

(assert (= bs!605267 (and d!1268475 b!4312259)))

(assert (=> bs!605267 (= (dynLambda!20450 lambda!133059 (h!53682 (toList!2440 lt!1532302))) (noDuplicateKeys!228 (_2!26666 (h!53682 (toList!2440 lt!1532302)))))))

(declare-fun m!4905437 () Bool)

(assert (=> bs!605267 m!4905437))

(assert (=> b!4312379 d!1268475))

(declare-fun b_lambda!126729 () Bool)

(assert (= b_lambda!126719 (or (and b!4312255 b_free!128699) b_lambda!126729)))

(check-sat (not b!4312366) tp_is_empty!23847 (not b_lambda!126727) (not bs!605267) (not b!4312402) (not d!1268469) (not b!4312310) (not b!4312340) (not d!1268445) (not b!4312403) (not b!4312385) (not b!4312281) (not d!1268427) (not b!4312388) (not tb!257309) (not b_lambda!126725) (not d!1268457) (not b!4312344) (not d!1268465) (not b_next!129405) (not b!4312393) (not b!4312345) (not b!4312367) (not d!1268453) (not b!4312320) (not b_lambda!126729) (not d!1268435) (not b!4312342) (not d!1268433) b_and!340153 (not b!4312347) (not b!4312311) (not b!4312313) (not d!1268463) (not bm!298210) (not d!1268449) (not bm!298209) (not mapNonEmpty!20913) (not bm!298204) (not b!4312395) (not b!4312275) (not b!4312305) (not b!4312370) (not b!4312280) (not bs!605266) (not b!4312364) (not bm!298200) (not b!4312380) (not b!4312358) (not d!1268459) (not bm!298202) tp_is_empty!23845 (not b!4312309) (not b_next!129403) (not d!1268467) (not bm!298199) (not d!1268437) (not bm!298203) (not b!4312404) (not bm!298201) (not b!4312386) (not d!1268447) (not b!4312319) (not d!1268451) b_and!340151 (not b!4312394) (not d!1268443))
(check-sat b_and!340153 b_and!340151 (not b_next!129405) (not b_next!129403))

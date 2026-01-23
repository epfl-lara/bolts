; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414394 () Bool)

(assert start!414394)

(declare-fun b!4311283 () Bool)

(declare-fun b_free!128667 () Bool)

(declare-fun b_next!129371 () Bool)

(assert (=> b!4311283 (= b_free!128667 (not b_next!129371))))

(declare-fun tp!1324906 () Bool)

(declare-fun b_and!340105 () Bool)

(assert (=> b!4311283 (= tp!1324906 b_and!340105)))

(declare-fun b!4311294 () Bool)

(declare-fun b_free!128669 () Bool)

(declare-fun b_next!129373 () Bool)

(assert (=> b!4311294 (= b_free!128669 (not b_next!129373))))

(declare-fun tp!1324909 () Bool)

(declare-fun b_and!340107 () Bool)

(assert (=> b!4311294 (= tp!1324909 b_and!340107)))

(declare-fun b!4311282 () Bool)

(declare-fun res!1766906 () Bool)

(declare-fun e!2681405 () Bool)

(assert (=> b!4311282 (=> (not res!1766906) (not e!2681405))))

(declare-datatypes ((K!9439 0))(
  ( (K!9440 (val!15809 Int)) )
))
(declare-datatypes ((V!9641 0))(
  ( (V!9642 (val!15810 Int)) )
))
(declare-datatypes ((tuple2!46718 0))(
  ( (tuple2!46719 (_1!26639 K!9439) (_2!26639 V!9641)) )
))
(declare-datatypes ((List!48346 0))(
  ( (Nil!48222) (Cons!48222 (h!53662 tuple2!46718) (t!355163 List!48346)) )
))
(declare-fun lt!1531607 () List!48346)

(declare-fun key!2048 () K!9439)

(declare-fun containsKey!324 (List!48346 K!9439) Bool)

(assert (=> b!4311282 (= res!1766906 (not (containsKey!324 lt!1531607 key!2048)))))

(declare-fun mapNonEmpty!20879 () Bool)

(declare-fun mapRes!20879 () Bool)

(declare-fun tp!1324911 () Bool)

(declare-fun tp!1324910 () Bool)

(assert (=> mapNonEmpty!20879 (= mapRes!20879 (and tp!1324911 tp!1324910))))

(declare-fun mapRest!20879 () (Array (_ BitVec 32) List!48346))

(declare-fun mapValue!20879 () List!48346)

(declare-fun mapKey!20879 () (_ BitVec 32))

(declare-datatypes ((array!16880 0))(
  ( (array!16881 (arr!7539 (Array (_ BitVec 32) (_ BitVec 64))) (size!35578 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4593 0))(
  ( (HashableExt!4592 (__x!30056 Int)) )
))
(declare-datatypes ((array!16882 0))(
  ( (array!16883 (arr!7540 (Array (_ BitVec 32) List!48346)) (size!35579 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9354 0))(
  ( (LongMapFixedSize!9355 (defaultEntry!5062 Int) (mask!13244 (_ BitVec 32)) (extraKeys!4926 (_ BitVec 32)) (zeroValue!4936 List!48346) (minValue!4936 List!48346) (_size!9397 (_ BitVec 32)) (_keys!4977 array!16880) (_values!4958 array!16882) (_vacant!4738 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18517 0))(
  ( (Cell!18518 (v!42399 LongMapFixedSize!9354)) )
))
(declare-datatypes ((MutLongMap!4677 0))(
  ( (LongMap!4677 (underlying!9583 Cell!18517)) (MutLongMapExt!4676 (__x!30057 Int)) )
))
(declare-datatypes ((Cell!18519 0))(
  ( (Cell!18520 (v!42400 MutLongMap!4677)) )
))
(declare-datatypes ((MutableMap!4583 0))(
  ( (MutableMapExt!4582 (__x!30058 Int)) (HashMap!4583 (underlying!9584 Cell!18519) (hashF!6727 Hashable!4593) (_size!9398 (_ BitVec 32)) (defaultValue!4754 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4583)

(assert (=> mapNonEmpty!20879 (= (arr!7540 (_values!4958 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) (store mapRest!20879 mapKey!20879 mapValue!20879))))

(declare-fun tp!1324905 () Bool)

(declare-fun e!2681412 () Bool)

(declare-fun tp!1324907 () Bool)

(declare-fun e!2681415 () Bool)

(declare-fun array_inv!5413 (array!16880) Bool)

(declare-fun array_inv!5414 (array!16882) Bool)

(assert (=> b!4311283 (= e!2681412 (and tp!1324906 tp!1324907 tp!1324905 (array_inv!5413 (_keys!4977 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) (array_inv!5414 (_values!4958 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) e!2681415))))

(declare-fun b!4311284 () Bool)

(declare-fun e!2681406 () Bool)

(declare-fun e!2681413 () Bool)

(declare-fun lt!1531610 () MutLongMap!4677)

(get-info :version)

(assert (=> b!4311284 (= e!2681406 (and e!2681413 ((_ is LongMap!4677) lt!1531610)))))

(assert (=> b!4311284 (= lt!1531610 (v!42400 (underlying!9584 thiss!42308)))))

(declare-fun b!4311285 () Bool)

(declare-fun lt!1531605 () List!48346)

(declare-fun noDuplicateKeys!220 (List!48346) Bool)

(assert (=> b!4311285 (= e!2681405 (noDuplicateKeys!220 lt!1531605))))

(declare-fun b!4311286 () Bool)

(declare-fun e!2681409 () Bool)

(declare-fun e!2681407 () Bool)

(assert (=> b!4311286 (= e!2681409 (not e!2681407))))

(declare-fun res!1766904 () Bool)

(assert (=> b!4311286 (=> res!1766904 e!2681407)))

(declare-datatypes ((tuple2!46720 0))(
  ( (tuple2!46721 (_1!26640 (_ BitVec 64)) (_2!26640 List!48346)) )
))
(declare-datatypes ((List!48347 0))(
  ( (Nil!48223) (Cons!48223 (h!53663 tuple2!46720) (t!355164 List!48347)) )
))
(declare-datatypes ((ListLongMap!1037 0))(
  ( (ListLongMap!1038 (toList!2425 List!48347)) )
))
(declare-fun lt!1531604 () ListLongMap!1037)

(declare-fun lambda!132986 () Int)

(declare-fun forall!8740 (List!48347 Int) Bool)

(assert (=> b!4311286 (= res!1766904 (not (forall!8740 (toList!2425 lt!1531604) lambda!132986)))))

(assert (=> b!4311286 e!2681405))

(declare-fun res!1766902 () Bool)

(assert (=> b!4311286 (=> (not res!1766902) (not e!2681405))))

(assert (=> b!4311286 (= res!1766902 (noDuplicateKeys!220 lt!1531607))))

(declare-datatypes ((Unit!67357 0))(
  ( (Unit!67358) )
))
(declare-fun lt!1531601 () Unit!67357)

(declare-fun lt!1531603 () List!48346)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!169 (List!48346 K!9439) Unit!67357)

(assert (=> b!4311286 (= lt!1531601 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!169 lt!1531603 key!2048))))

(declare-fun lt!1531609 () (_ BitVec 64))

(declare-fun allKeysSameHash!194 (List!48346 (_ BitVec 64) Hashable!4593) Bool)

(assert (=> b!4311286 (allKeysSameHash!194 lt!1531607 lt!1531609 (hashF!6727 thiss!42308))))

(declare-fun lt!1531606 () Unit!67357)

(declare-fun lemmaRemovePairForKeyPreservesHash!174 (List!48346 K!9439 (_ BitVec 64) Hashable!4593) Unit!67357)

(assert (=> b!4311286 (= lt!1531606 (lemmaRemovePairForKeyPreservesHash!174 lt!1531603 key!2048 lt!1531609 (hashF!6727 thiss!42308)))))

(assert (=> b!4311286 (allKeysSameHash!194 lt!1531603 lt!1531609 (hashF!6727 thiss!42308))))

(declare-fun lt!1531608 () Unit!67357)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!181 (List!48347 (_ BitVec 64) List!48346 Hashable!4593) Unit!67357)

(assert (=> b!4311286 (= lt!1531608 (lemmaInLongMapAllKeySameHashThenForTuple!181 (toList!2425 lt!1531604) lt!1531609 lt!1531603 (hashF!6727 thiss!42308)))))

(declare-fun b!4311287 () Bool)

(declare-fun e!2681414 () Bool)

(assert (=> b!4311287 (= e!2681413 e!2681414)))

(declare-fun b!4311288 () Bool)

(declare-fun res!1766901 () Bool)

(declare-fun e!2681408 () Bool)

(assert (=> b!4311288 (=> (not res!1766901) (not e!2681408))))

(declare-fun valid!3666 (MutableMap!4583) Bool)

(assert (=> b!4311288 (= res!1766901 (valid!3666 thiss!42308))))

(declare-fun b!4311289 () Bool)

(declare-fun e!2681411 () Bool)

(assert (=> b!4311289 (= e!2681408 e!2681411)))

(declare-fun res!1766905 () Bool)

(assert (=> b!4311289 (=> (not res!1766905) (not e!2681411))))

(declare-fun contains!10202 (MutableMap!4583 K!9439) Bool)

(assert (=> b!4311289 (= res!1766905 (contains!10202 thiss!42308 key!2048))))

(declare-fun map!10221 (MutLongMap!4677) ListLongMap!1037)

(assert (=> b!4311289 (= lt!1531604 (map!10221 (v!42400 (underlying!9584 thiss!42308))))))

(declare-datatypes ((ListMap!1707 0))(
  ( (ListMap!1708 (toList!2426 List!48346)) )
))
(declare-fun lt!1531602 () ListMap!1707)

(declare-fun map!10222 (MutableMap!4583) ListMap!1707)

(assert (=> b!4311289 (= lt!1531602 (map!10222 thiss!42308))))

(declare-fun b!4311290 () Bool)

(assert (=> b!4311290 (= e!2681411 e!2681409)))

(declare-fun res!1766903 () Bool)

(assert (=> b!4311290 (=> (not res!1766903) (not e!2681409))))

(declare-datatypes ((tuple2!46722 0))(
  ( (tuple2!46723 (_1!26641 Bool) (_2!26641 MutLongMap!4677)) )
))
(declare-fun update!449 (MutLongMap!4677 (_ BitVec 64) List!48346) tuple2!46722)

(assert (=> b!4311290 (= res!1766903 (_1!26641 (update!449 (v!42400 (underlying!9584 thiss!42308)) lt!1531609 lt!1531605)))))

(declare-fun v!9179 () V!9641)

(assert (=> b!4311290 (= lt!1531605 (Cons!48222 (tuple2!46719 key!2048 v!9179) lt!1531607))))

(declare-fun removePairForKey!220 (List!48346 K!9439) List!48346)

(assert (=> b!4311290 (= lt!1531607 (removePairForKey!220 lt!1531603 key!2048))))

(declare-fun apply!11033 (MutLongMap!4677 (_ BitVec 64)) List!48346)

(assert (=> b!4311290 (= lt!1531603 (apply!11033 (v!42400 (underlying!9584 thiss!42308)) lt!1531609))))

(declare-fun hash!1028 (Hashable!4593 K!9439) (_ BitVec 64))

(assert (=> b!4311290 (= lt!1531609 (hash!1028 (hashF!6727 thiss!42308) key!2048))))

(declare-fun b!4311291 () Bool)

(assert (=> b!4311291 (= e!2681414 e!2681412)))

(declare-fun res!1766907 () Bool)

(assert (=> start!414394 (=> (not res!1766907) (not e!2681408))))

(assert (=> start!414394 (= res!1766907 ((_ is HashMap!4583) thiss!42308))))

(assert (=> start!414394 e!2681408))

(declare-fun e!2681404 () Bool)

(assert (=> start!414394 e!2681404))

(declare-fun tp_is_empty!23813 () Bool)

(assert (=> start!414394 tp_is_empty!23813))

(declare-fun tp_is_empty!23815 () Bool)

(assert (=> start!414394 tp_is_empty!23815))

(declare-fun b!4311292 () Bool)

(declare-fun allKeysSameHashInMap!341 (ListLongMap!1037 Hashable!4593) Bool)

(assert (=> b!4311292 (= e!2681407 (allKeysSameHashInMap!341 lt!1531604 (hashF!6727 thiss!42308)))))

(declare-fun mapIsEmpty!20879 () Bool)

(assert (=> mapIsEmpty!20879 mapRes!20879))

(declare-fun b!4311293 () Bool)

(declare-fun tp!1324908 () Bool)

(assert (=> b!4311293 (= e!2681415 (and tp!1324908 mapRes!20879))))

(declare-fun condMapEmpty!20879 () Bool)

(declare-fun mapDefault!20879 () List!48346)

(assert (=> b!4311293 (= condMapEmpty!20879 (= (arr!7540 (_values!4958 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48346)) mapDefault!20879)))))

(assert (=> b!4311294 (= e!2681404 (and e!2681406 tp!1324909))))

(assert (= (and start!414394 res!1766907) b!4311288))

(assert (= (and b!4311288 res!1766901) b!4311289))

(assert (= (and b!4311289 res!1766905) b!4311290))

(assert (= (and b!4311290 res!1766903) b!4311286))

(assert (= (and b!4311286 res!1766902) b!4311282))

(assert (= (and b!4311282 res!1766906) b!4311285))

(assert (= (and b!4311286 (not res!1766904)) b!4311292))

(assert (= (and b!4311293 condMapEmpty!20879) mapIsEmpty!20879))

(assert (= (and b!4311293 (not condMapEmpty!20879)) mapNonEmpty!20879))

(assert (= b!4311283 b!4311293))

(assert (= b!4311291 b!4311283))

(assert (= b!4311287 b!4311291))

(assert (= (and b!4311284 ((_ is LongMap!4677) (v!42400 (underlying!9584 thiss!42308)))) b!4311287))

(assert (= b!4311294 b!4311284))

(assert (= (and start!414394 ((_ is HashMap!4583) thiss!42308)) b!4311294))

(declare-fun m!4904225 () Bool)

(assert (=> b!4311286 m!4904225))

(declare-fun m!4904227 () Bool)

(assert (=> b!4311286 m!4904227))

(declare-fun m!4904229 () Bool)

(assert (=> b!4311286 m!4904229))

(declare-fun m!4904231 () Bool)

(assert (=> b!4311286 m!4904231))

(declare-fun m!4904233 () Bool)

(assert (=> b!4311286 m!4904233))

(declare-fun m!4904235 () Bool)

(assert (=> b!4311286 m!4904235))

(declare-fun m!4904237 () Bool)

(assert (=> b!4311286 m!4904237))

(declare-fun m!4904239 () Bool)

(assert (=> mapNonEmpty!20879 m!4904239))

(declare-fun m!4904241 () Bool)

(assert (=> b!4311285 m!4904241))

(declare-fun m!4904243 () Bool)

(assert (=> b!4311288 m!4904243))

(declare-fun m!4904245 () Bool)

(assert (=> b!4311290 m!4904245))

(declare-fun m!4904247 () Bool)

(assert (=> b!4311290 m!4904247))

(declare-fun m!4904249 () Bool)

(assert (=> b!4311290 m!4904249))

(declare-fun m!4904251 () Bool)

(assert (=> b!4311290 m!4904251))

(declare-fun m!4904253 () Bool)

(assert (=> b!4311292 m!4904253))

(declare-fun m!4904255 () Bool)

(assert (=> b!4311283 m!4904255))

(declare-fun m!4904257 () Bool)

(assert (=> b!4311283 m!4904257))

(declare-fun m!4904259 () Bool)

(assert (=> b!4311282 m!4904259))

(declare-fun m!4904261 () Bool)

(assert (=> b!4311289 m!4904261))

(declare-fun m!4904263 () Bool)

(assert (=> b!4311289 m!4904263))

(declare-fun m!4904265 () Bool)

(assert (=> b!4311289 m!4904265))

(check-sat b_and!340107 tp_is_empty!23815 (not b_next!129373) (not mapNonEmpty!20879) (not b_next!129371) (not b!4311288) (not b!4311293) (not b!4311286) b_and!340105 (not b!4311290) (not b!4311292) (not b!4311282) tp_is_empty!23813 (not b!4311285) (not b!4311289) (not b!4311283))
(check-sat b_and!340105 b_and!340107 (not b_next!129373) (not b_next!129371))
(get-model)

(declare-fun b!4311313 () Bool)

(declare-fun e!2681427 () Bool)

(declare-fun call!298047 () ListLongMap!1037)

(declare-fun call!298048 () ListLongMap!1037)

(assert (=> b!4311313 (= e!2681427 (= call!298047 call!298048))))

(declare-fun bm!298042 () Bool)

(assert (=> bm!298042 (= call!298048 (map!10221 (v!42400 (underlying!9584 thiss!42308))))))

(declare-fun b!4311315 () Bool)

(declare-fun e!2681426 () tuple2!46722)

(declare-fun lt!1531620 () tuple2!46722)

(assert (=> b!4311315 (= e!2681426 (tuple2!46723 false (_2!26641 lt!1531620)))))

(declare-fun b!4311316 () Bool)

(declare-fun e!2681428 () Bool)

(assert (=> b!4311316 (= e!2681428 e!2681427)))

(declare-fun c!732978 () Bool)

(declare-fun lt!1531621 () tuple2!46722)

(assert (=> b!4311316 (= c!732978 (_1!26641 lt!1531621))))

(declare-fun bm!298043 () Bool)

(assert (=> bm!298043 (= call!298047 (map!10221 (_2!26641 lt!1531621)))))

(declare-fun b!4311317 () Bool)

(declare-fun res!1766915 () Bool)

(assert (=> b!4311317 (=> (not res!1766915) (not e!2681428))))

(declare-fun valid!3667 (MutLongMap!4677) Bool)

(assert (=> b!4311317 (= res!1766915 (valid!3667 (_2!26641 lt!1531621)))))

(declare-fun b!4311314 () Bool)

(declare-fun e!2681429 () tuple2!46722)

(declare-fun lt!1531619 () tuple2!46722)

(assert (=> b!4311314 (= e!2681429 (tuple2!46723 (_1!26641 lt!1531619) (_2!26641 lt!1531619)))))

(declare-fun repack!60 (MutLongMap!4677) tuple2!46722)

(assert (=> b!4311314 (= lt!1531619 (repack!60 (v!42400 (underlying!9584 thiss!42308))))))

(declare-fun d!1268199 () Bool)

(assert (=> d!1268199 e!2681428))

(declare-fun res!1766916 () Bool)

(assert (=> d!1268199 (=> (not res!1766916) (not e!2681428))))

(assert (=> d!1268199 (= res!1766916 ((_ is LongMap!4677) (_2!26641 lt!1531621)))))

(assert (=> d!1268199 (= lt!1531621 e!2681426)))

(declare-fun c!732976 () Bool)

(assert (=> d!1268199 (= c!732976 (_1!26641 lt!1531620))))

(assert (=> d!1268199 (= lt!1531620 e!2681429)))

(declare-fun c!732977 () Bool)

(declare-fun imbalanced!56 (MutLongMap!4677) Bool)

(assert (=> d!1268199 (= c!732977 (imbalanced!56 (v!42400 (underlying!9584 thiss!42308))))))

(assert (=> d!1268199 (valid!3667 (v!42400 (underlying!9584 thiss!42308)))))

(assert (=> d!1268199 (= (update!449 (v!42400 (underlying!9584 thiss!42308)) lt!1531609 lt!1531605) lt!1531621)))

(declare-fun b!4311318 () Bool)

(assert (=> b!4311318 (= e!2681429 (tuple2!46723 true (v!42400 (underlying!9584 thiss!42308))))))

(declare-fun b!4311319 () Bool)

(declare-fun e!2681430 () Bool)

(assert (=> b!4311319 (= e!2681427 e!2681430)))

(declare-fun res!1766914 () Bool)

(declare-fun contains!10203 (ListLongMap!1037 (_ BitVec 64)) Bool)

(assert (=> b!4311319 (= res!1766914 (contains!10203 call!298047 lt!1531609))))

(assert (=> b!4311319 (=> (not res!1766914) (not e!2681430))))

(declare-fun b!4311320 () Bool)

(declare-datatypes ((tuple2!46724 0))(
  ( (tuple2!46725 (_1!26642 Bool) (_2!26642 LongMapFixedSize!9354)) )
))
(declare-fun lt!1531622 () tuple2!46724)

(assert (=> b!4311320 (= e!2681426 (tuple2!46723 (_1!26642 lt!1531622) (LongMap!4677 (Cell!18518 (_2!26642 lt!1531622)))))))

(declare-fun update!450 (LongMapFixedSize!9354 (_ BitVec 64) List!48346) tuple2!46724)

(assert (=> b!4311320 (= lt!1531622 (update!450 (v!42399 (underlying!9583 (_2!26641 lt!1531620))) lt!1531609 lt!1531605))))

(declare-fun b!4311321 () Bool)

(declare-fun +!273 (ListLongMap!1037 tuple2!46720) ListLongMap!1037)

(assert (=> b!4311321 (= e!2681430 (= call!298047 (+!273 call!298048 (tuple2!46721 lt!1531609 lt!1531605))))))

(assert (= (and d!1268199 c!732977) b!4311314))

(assert (= (and d!1268199 (not c!732977)) b!4311318))

(assert (= (and d!1268199 c!732976) b!4311320))

(assert (= (and d!1268199 (not c!732976)) b!4311315))

(assert (= (and d!1268199 res!1766916) b!4311317))

(assert (= (and b!4311317 res!1766915) b!4311316))

(assert (= (and b!4311316 c!732978) b!4311319))

(assert (= (and b!4311316 (not c!732978)) b!4311313))

(assert (= (and b!4311319 res!1766914) b!4311321))

(assert (= (or b!4311321 b!4311313) bm!298042))

(assert (= (or b!4311319 b!4311321 b!4311313) bm!298043))

(assert (=> bm!298042 m!4904263))

(declare-fun m!4904267 () Bool)

(assert (=> b!4311314 m!4904267))

(declare-fun m!4904269 () Bool)

(assert (=> b!4311317 m!4904269))

(declare-fun m!4904271 () Bool)

(assert (=> d!1268199 m!4904271))

(declare-fun m!4904273 () Bool)

(assert (=> d!1268199 m!4904273))

(declare-fun m!4904275 () Bool)

(assert (=> b!4311319 m!4904275))

(declare-fun m!4904277 () Bool)

(assert (=> b!4311321 m!4904277))

(declare-fun m!4904279 () Bool)

(assert (=> b!4311320 m!4904279))

(declare-fun m!4904281 () Bool)

(assert (=> bm!298043 m!4904281))

(assert (=> b!4311290 d!1268199))

(declare-fun b!4311333 () Bool)

(declare-fun e!2681436 () List!48346)

(assert (=> b!4311333 (= e!2681436 Nil!48222)))

(declare-fun b!4311332 () Bool)

(assert (=> b!4311332 (= e!2681436 (Cons!48222 (h!53662 lt!1531603) (removePairForKey!220 (t!355163 lt!1531603) key!2048)))))

(declare-fun b!4311331 () Bool)

(declare-fun e!2681435 () List!48346)

(assert (=> b!4311331 (= e!2681435 e!2681436)))

(declare-fun c!732984 () Bool)

(assert (=> b!4311331 (= c!732984 ((_ is Cons!48222) lt!1531603))))

(declare-fun d!1268201 () Bool)

(declare-fun lt!1531625 () List!48346)

(assert (=> d!1268201 (not (containsKey!324 lt!1531625 key!2048))))

(assert (=> d!1268201 (= lt!1531625 e!2681435)))

(declare-fun c!732983 () Bool)

(assert (=> d!1268201 (= c!732983 (and ((_ is Cons!48222) lt!1531603) (= (_1!26639 (h!53662 lt!1531603)) key!2048)))))

(assert (=> d!1268201 (noDuplicateKeys!220 lt!1531603)))

(assert (=> d!1268201 (= (removePairForKey!220 lt!1531603 key!2048) lt!1531625)))

(declare-fun b!4311330 () Bool)

(assert (=> b!4311330 (= e!2681435 (t!355163 lt!1531603))))

(assert (= (and d!1268201 c!732983) b!4311330))

(assert (= (and d!1268201 (not c!732983)) b!4311331))

(assert (= (and b!4311331 c!732984) b!4311332))

(assert (= (and b!4311331 (not c!732984)) b!4311333))

(declare-fun m!4904283 () Bool)

(assert (=> b!4311332 m!4904283))

(declare-fun m!4904285 () Bool)

(assert (=> d!1268201 m!4904285))

(declare-fun m!4904287 () Bool)

(assert (=> d!1268201 m!4904287))

(assert (=> b!4311290 d!1268201))

(declare-fun d!1268203 () Bool)

(declare-fun e!2681439 () Bool)

(assert (=> d!1268203 e!2681439))

(declare-fun c!732987 () Bool)

(declare-fun contains!10204 (MutLongMap!4677 (_ BitVec 64)) Bool)

(assert (=> d!1268203 (= c!732987 (contains!10204 (v!42400 (underlying!9584 thiss!42308)) lt!1531609))))

(declare-fun lt!1531628 () List!48346)

(declare-fun apply!11034 (LongMapFixedSize!9354 (_ BitVec 64)) List!48346)

(assert (=> d!1268203 (= lt!1531628 (apply!11034 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))) lt!1531609))))

(assert (=> d!1268203 (valid!3667 (v!42400 (underlying!9584 thiss!42308)))))

(assert (=> d!1268203 (= (apply!11033 (v!42400 (underlying!9584 thiss!42308)) lt!1531609) lt!1531628)))

(declare-fun b!4311338 () Bool)

(declare-datatypes ((Option!10239 0))(
  ( (None!10238) (Some!10238 (v!42405 List!48346)) )
))
(declare-fun get!15607 (Option!10239) List!48346)

(declare-fun getValueByKey!260 (List!48347 (_ BitVec 64)) Option!10239)

(assert (=> b!4311338 (= e!2681439 (= lt!1531628 (get!15607 (getValueByKey!260 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308)))) lt!1531609))))))

(declare-fun b!4311339 () Bool)

(declare-fun dynLambda!20444 (Int (_ BitVec 64)) List!48346)

(assert (=> b!4311339 (= e!2681439 (= lt!1531628 (dynLambda!20444 (defaultEntry!5062 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308))))) lt!1531609)))))

(assert (=> b!4311339 ((_ is LongMap!4677) (v!42400 (underlying!9584 thiss!42308)))))

(assert (= (and d!1268203 c!732987) b!4311338))

(assert (= (and d!1268203 (not c!732987)) b!4311339))

(declare-fun b_lambda!126655 () Bool)

(assert (=> (not b_lambda!126655) (not b!4311339)))

(declare-fun t!355166 () Bool)

(declare-fun tb!257303 () Bool)

(assert (=> (and b!4311283 (= (defaultEntry!5062 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308))))) (defaultEntry!5062 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) t!355166) tb!257303))

(assert (=> b!4311339 t!355166))

(declare-fun result!314720 () Bool)

(declare-fun b_and!340109 () Bool)

(assert (= b_and!340105 (and (=> t!355166 result!314720) b_and!340109)))

(declare-fun m!4904289 () Bool)

(assert (=> d!1268203 m!4904289))

(declare-fun m!4904291 () Bool)

(assert (=> d!1268203 m!4904291))

(assert (=> d!1268203 m!4904273))

(assert (=> b!4311338 m!4904263))

(declare-fun m!4904293 () Bool)

(assert (=> b!4311338 m!4904293))

(assert (=> b!4311338 m!4904293))

(declare-fun m!4904295 () Bool)

(assert (=> b!4311338 m!4904295))

(declare-fun m!4904297 () Bool)

(assert (=> b!4311339 m!4904297))

(assert (=> b!4311290 d!1268203))

(declare-fun d!1268205 () Bool)

(declare-fun hash!1031 (Hashable!4593 K!9439) (_ BitVec 64))

(assert (=> d!1268205 (= (hash!1028 (hashF!6727 thiss!42308) key!2048) (hash!1031 (hashF!6727 thiss!42308) key!2048))))

(declare-fun bs!605124 () Bool)

(assert (= bs!605124 d!1268205))

(declare-fun m!4904299 () Bool)

(assert (=> bs!605124 m!4904299))

(assert (=> b!4311290 d!1268205))

(declare-fun bs!605125 () Bool)

(declare-fun b!4311364 () Bool)

(assert (= bs!605125 (and b!4311364 b!4311286)))

(declare-fun lambda!132989 () Int)

(assert (=> bs!605125 (= lambda!132989 lambda!132986)))

(declare-fun b!4311362 () Bool)

(assert (=> b!4311362 false))

(declare-fun lt!1531675 () Unit!67357)

(declare-fun lt!1531671 () Unit!67357)

(assert (=> b!4311362 (= lt!1531675 lt!1531671)))

(declare-fun lt!1531677 () ListLongMap!1037)

(declare-fun contains!10205 (ListMap!1707 K!9439) Bool)

(declare-fun extractMap!333 (List!48347) ListMap!1707)

(assert (=> b!4311362 (contains!10205 (extractMap!333 (toList!2425 lt!1531677)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!138 (ListLongMap!1037 K!9439 Hashable!4593) Unit!67357)

(assert (=> b!4311362 (= lt!1531671 (lemmaInLongMapThenInGenericMap!138 lt!1531677 key!2048 (hashF!6727 thiss!42308)))))

(declare-fun call!298065 () ListLongMap!1037)

(assert (=> b!4311362 (= lt!1531677 call!298065)))

(declare-fun e!2681460 () Unit!67357)

(declare-fun Unit!67359 () Unit!67357)

(assert (=> b!4311362 (= e!2681460 Unit!67359)))

(declare-fun b!4311363 () Bool)

(declare-fun Unit!67360 () Unit!67357)

(assert (=> b!4311363 (= e!2681460 Unit!67360)))

(declare-fun e!2681458 () Unit!67357)

(declare-fun lt!1531681 () (_ BitVec 64))

(declare-fun forallContained!1505 (List!48347 Int tuple2!46720) Unit!67357)

(assert (=> b!4311364 (= e!2681458 (forallContained!1505 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308)))) lambda!132989 (tuple2!46721 lt!1531681 (apply!11033 (v!42400 (underlying!9584 thiss!42308)) lt!1531681))))))

(declare-fun c!732997 () Bool)

(declare-fun contains!10206 (List!48347 tuple2!46720) Bool)

(assert (=> b!4311364 (= c!732997 (not (contains!10206 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308)))) (tuple2!46721 lt!1531681 (apply!11033 (v!42400 (underlying!9584 thiss!42308)) lt!1531681)))))))

(declare-fun lt!1531682 () Unit!67357)

(declare-fun e!2681457 () Unit!67357)

(assert (=> b!4311364 (= lt!1531682 e!2681457)))

(declare-fun b!4311365 () Bool)

(declare-fun e!2681459 () Unit!67357)

(assert (=> b!4311365 (= e!2681459 e!2681460)))

(declare-fun res!1766923 () Bool)

(declare-fun call!298063 () Bool)

(assert (=> b!4311365 (= res!1766923 call!298063)))

(declare-fun e!2681456 () Bool)

(assert (=> b!4311365 (=> (not res!1766923) (not e!2681456))))

(declare-fun c!732996 () Bool)

(assert (=> b!4311365 (= c!732996 e!2681456)))

(declare-fun b!4311366 () Bool)

(declare-fun lt!1531670 () Unit!67357)

(assert (=> b!4311366 (= e!2681459 lt!1531670)))

(declare-fun lt!1531674 () ListLongMap!1037)

(assert (=> b!4311366 (= lt!1531674 call!298065)))

(declare-fun lemmaInGenericMapThenInLongMap!138 (ListLongMap!1037 K!9439 Hashable!4593) Unit!67357)

(assert (=> b!4311366 (= lt!1531670 (lemmaInGenericMapThenInLongMap!138 lt!1531674 key!2048 (hashF!6727 thiss!42308)))))

(declare-fun res!1766924 () Bool)

(assert (=> b!4311366 (= res!1766924 call!298063)))

(declare-fun e!2681455 () Bool)

(assert (=> b!4311366 (=> (not res!1766924) (not e!2681455))))

(assert (=> b!4311366 e!2681455))

(declare-fun bm!298056 () Bool)

(declare-fun call!298066 () Bool)

(declare-datatypes ((Option!10240 0))(
  ( (None!10239) (Some!10239 (v!42406 tuple2!46718)) )
))
(declare-fun call!298062 () Option!10240)

(declare-fun isDefined!7541 (Option!10240) Bool)

(assert (=> bm!298056 (= call!298066 (isDefined!7541 call!298062))))

(declare-fun b!4311367 () Bool)

(assert (=> b!4311367 (= e!2681456 call!298066)))

(declare-fun bm!298057 () Bool)

(assert (=> bm!298057 (= call!298065 (map!10221 (v!42400 (underlying!9584 thiss!42308))))))

(declare-fun b!4311368 () Bool)

(declare-fun e!2681454 () Bool)

(declare-fun getPair!138 (List!48346 K!9439) Option!10240)

(assert (=> b!4311368 (= e!2681454 (isDefined!7541 (getPair!138 (apply!11033 (v!42400 (underlying!9584 thiss!42308)) lt!1531681) key!2048)))))

(declare-fun b!4311369 () Bool)

(declare-fun Unit!67361 () Unit!67357)

(assert (=> b!4311369 (= e!2681458 Unit!67361)))

(declare-fun d!1268207 () Bool)

(declare-fun lt!1531685 () Bool)

(assert (=> d!1268207 (= lt!1531685 (contains!10205 (map!10222 thiss!42308) key!2048))))

(assert (=> d!1268207 (= lt!1531685 e!2681454)))

(declare-fun res!1766925 () Bool)

(assert (=> d!1268207 (=> (not res!1766925) (not e!2681454))))

(assert (=> d!1268207 (= res!1766925 (contains!10204 (v!42400 (underlying!9584 thiss!42308)) lt!1531681))))

(declare-fun lt!1531678 () Unit!67357)

(assert (=> d!1268207 (= lt!1531678 e!2681459)))

(declare-fun c!732998 () Bool)

(assert (=> d!1268207 (= c!732998 (contains!10205 (extractMap!333 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308))))) key!2048))))

(declare-fun lt!1531672 () Unit!67357)

(assert (=> d!1268207 (= lt!1531672 e!2681458)))

(declare-fun c!732999 () Bool)

(assert (=> d!1268207 (= c!732999 (contains!10204 (v!42400 (underlying!9584 thiss!42308)) lt!1531681))))

(assert (=> d!1268207 (= lt!1531681 (hash!1028 (hashF!6727 thiss!42308) key!2048))))

(assert (=> d!1268207 (valid!3666 thiss!42308)))

(assert (=> d!1268207 (= (contains!10202 thiss!42308 key!2048) lt!1531685)))

(declare-fun b!4311370 () Bool)

(assert (=> b!4311370 false))

(declare-fun lt!1531684 () Unit!67357)

(declare-fun lt!1531676 () Unit!67357)

(assert (=> b!4311370 (= lt!1531684 lt!1531676)))

(declare-fun lt!1531688 () List!48347)

(declare-fun lt!1531669 () List!48346)

(assert (=> b!4311370 (contains!10206 lt!1531688 (tuple2!46721 lt!1531681 lt!1531669))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!149 (List!48347 (_ BitVec 64) List!48346) Unit!67357)

(assert (=> b!4311370 (= lt!1531676 (lemmaGetValueByKeyImpliesContainsTuple!149 lt!1531688 lt!1531681 lt!1531669))))

(assert (=> b!4311370 (= lt!1531669 (apply!11033 (v!42400 (underlying!9584 thiss!42308)) lt!1531681))))

(assert (=> b!4311370 (= lt!1531688 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308)))))))

(declare-fun lt!1531673 () Unit!67357)

(declare-fun lt!1531679 () Unit!67357)

(assert (=> b!4311370 (= lt!1531673 lt!1531679)))

(declare-fun lt!1531683 () List!48347)

(declare-fun isDefined!7542 (Option!10239) Bool)

(assert (=> b!4311370 (isDefined!7542 (getValueByKey!260 lt!1531683 lt!1531681))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!180 (List!48347 (_ BitVec 64)) Unit!67357)

(assert (=> b!4311370 (= lt!1531679 (lemmaContainsKeyImpliesGetValueByKeyDefined!180 lt!1531683 lt!1531681))))

(assert (=> b!4311370 (= lt!1531683 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308)))))))

(declare-fun lt!1531686 () Unit!67357)

(declare-fun lt!1531687 () Unit!67357)

(assert (=> b!4311370 (= lt!1531686 lt!1531687)))

(declare-fun lt!1531680 () List!48347)

(declare-fun containsKey!325 (List!48347 (_ BitVec 64)) Bool)

(assert (=> b!4311370 (containsKey!325 lt!1531680 lt!1531681)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!139 (List!48347 (_ BitVec 64)) Unit!67357)

(assert (=> b!4311370 (= lt!1531687 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!139 lt!1531680 lt!1531681))))

(assert (=> b!4311370 (= lt!1531680 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308)))))))

(declare-fun Unit!67362 () Unit!67357)

(assert (=> b!4311370 (= e!2681457 Unit!67362)))

(declare-fun bm!298058 () Bool)

(declare-fun call!298061 () List!48346)

(assert (=> bm!298058 (= call!298062 (getPair!138 call!298061 key!2048))))

(declare-fun b!4311371 () Bool)

(declare-fun Unit!67363 () Unit!67357)

(assert (=> b!4311371 (= e!2681457 Unit!67363)))

(declare-fun bm!298059 () Bool)

(declare-fun call!298064 () (_ BitVec 64))

(assert (=> bm!298059 (= call!298063 (contains!10203 (ite c!732998 lt!1531674 call!298065) call!298064))))

(declare-fun bm!298060 () Bool)

(declare-fun apply!11035 (ListLongMap!1037 (_ BitVec 64)) List!48346)

(assert (=> bm!298060 (= call!298061 (apply!11035 (ite c!732998 lt!1531674 call!298065) call!298064))))

(declare-fun bm!298061 () Bool)

(assert (=> bm!298061 (= call!298064 (hash!1028 (hashF!6727 thiss!42308) key!2048))))

(declare-fun b!4311372 () Bool)

(assert (=> b!4311372 (= e!2681455 call!298066)))

(assert (= (and d!1268207 c!732999) b!4311364))

(assert (= (and d!1268207 (not c!732999)) b!4311369))

(assert (= (and b!4311364 c!732997) b!4311370))

(assert (= (and b!4311364 (not c!732997)) b!4311371))

(assert (= (and d!1268207 c!732998) b!4311366))

(assert (= (and d!1268207 (not c!732998)) b!4311365))

(assert (= (and b!4311366 res!1766924) b!4311372))

(assert (= (and b!4311365 res!1766923) b!4311367))

(assert (= (and b!4311365 c!732996) b!4311362))

(assert (= (and b!4311365 (not c!732996)) b!4311363))

(assert (= (or b!4311366 b!4311372 b!4311365 b!4311367) bm!298061))

(assert (= (or b!4311366 b!4311365 b!4311367 b!4311362) bm!298057))

(assert (= (or b!4311366 b!4311365) bm!298059))

(assert (= (or b!4311372 b!4311367) bm!298060))

(assert (= (or b!4311372 b!4311367) bm!298058))

(assert (= (or b!4311372 b!4311367) bm!298056))

(assert (= (and d!1268207 res!1766925) b!4311368))

(declare-fun m!4904301 () Bool)

(assert (=> b!4311370 m!4904301))

(declare-fun m!4904303 () Bool)

(assert (=> b!4311370 m!4904303))

(declare-fun m!4904305 () Bool)

(assert (=> b!4311370 m!4904305))

(declare-fun m!4904307 () Bool)

(assert (=> b!4311370 m!4904307))

(declare-fun m!4904309 () Bool)

(assert (=> b!4311370 m!4904309))

(assert (=> b!4311370 m!4904263))

(declare-fun m!4904311 () Bool)

(assert (=> b!4311370 m!4904311))

(assert (=> b!4311370 m!4904307))

(declare-fun m!4904313 () Bool)

(assert (=> b!4311370 m!4904313))

(declare-fun m!4904315 () Bool)

(assert (=> b!4311370 m!4904315))

(assert (=> b!4311368 m!4904315))

(assert (=> b!4311368 m!4904315))

(declare-fun m!4904317 () Bool)

(assert (=> b!4311368 m!4904317))

(assert (=> b!4311368 m!4904317))

(declare-fun m!4904319 () Bool)

(assert (=> b!4311368 m!4904319))

(declare-fun m!4904321 () Bool)

(assert (=> b!4311362 m!4904321))

(assert (=> b!4311362 m!4904321))

(declare-fun m!4904323 () Bool)

(assert (=> b!4311362 m!4904323))

(declare-fun m!4904325 () Bool)

(assert (=> b!4311362 m!4904325))

(declare-fun m!4904327 () Bool)

(assert (=> bm!298059 m!4904327))

(assert (=> d!1268207 m!4904265))

(declare-fun m!4904329 () Bool)

(assert (=> d!1268207 m!4904329))

(assert (=> d!1268207 m!4904251))

(declare-fun m!4904331 () Bool)

(assert (=> d!1268207 m!4904331))

(declare-fun m!4904333 () Bool)

(assert (=> d!1268207 m!4904333))

(assert (=> d!1268207 m!4904243))

(assert (=> d!1268207 m!4904331))

(assert (=> d!1268207 m!4904265))

(declare-fun m!4904335 () Bool)

(assert (=> d!1268207 m!4904335))

(assert (=> d!1268207 m!4904263))

(declare-fun m!4904337 () Bool)

(assert (=> bm!298056 m!4904337))

(declare-fun m!4904339 () Bool)

(assert (=> bm!298058 m!4904339))

(assert (=> bm!298061 m!4904251))

(declare-fun m!4904341 () Bool)

(assert (=> bm!298060 m!4904341))

(assert (=> bm!298057 m!4904263))

(assert (=> b!4311364 m!4904263))

(assert (=> b!4311364 m!4904315))

(declare-fun m!4904343 () Bool)

(assert (=> b!4311364 m!4904343))

(declare-fun m!4904345 () Bool)

(assert (=> b!4311364 m!4904345))

(declare-fun m!4904347 () Bool)

(assert (=> b!4311366 m!4904347))

(assert (=> b!4311289 d!1268207))

(declare-fun d!1268209 () Bool)

(declare-fun map!10223 (LongMapFixedSize!9354) ListLongMap!1037)

(assert (=> d!1268209 (= (map!10221 (v!42400 (underlying!9584 thiss!42308))) (map!10223 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308))))))))

(declare-fun bs!605126 () Bool)

(assert (= bs!605126 d!1268209))

(declare-fun m!4904349 () Bool)

(assert (=> bs!605126 m!4904349))

(assert (=> b!4311289 d!1268209))

(declare-fun d!1268211 () Bool)

(declare-fun lt!1531691 () ListMap!1707)

(declare-fun invariantList!577 (List!48346) Bool)

(assert (=> d!1268211 (invariantList!577 (toList!2426 lt!1531691))))

(assert (=> d!1268211 (= lt!1531691 (extractMap!333 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308))))))))

(assert (=> d!1268211 (valid!3666 thiss!42308)))

(assert (=> d!1268211 (= (map!10222 thiss!42308) lt!1531691)))

(declare-fun bs!605127 () Bool)

(assert (= bs!605127 d!1268211))

(declare-fun m!4904351 () Bool)

(assert (=> bs!605127 m!4904351))

(assert (=> bs!605127 m!4904263))

(assert (=> bs!605127 m!4904331))

(assert (=> bs!605127 m!4904243))

(assert (=> b!4311289 d!1268211))

(declare-fun d!1268213 () Bool)

(assert (=> d!1268213 true))

(assert (=> d!1268213 true))

(declare-fun lambda!132992 () Int)

(declare-fun forall!8741 (List!48346 Int) Bool)

(assert (=> d!1268213 (= (allKeysSameHash!194 lt!1531603 lt!1531609 (hashF!6727 thiss!42308)) (forall!8741 lt!1531603 lambda!132992))))

(declare-fun bs!605128 () Bool)

(assert (= bs!605128 d!1268213))

(declare-fun m!4904353 () Bool)

(assert (=> bs!605128 m!4904353))

(assert (=> b!4311286 d!1268213))

(declare-fun bs!605129 () Bool)

(declare-fun d!1268215 () Bool)

(assert (= bs!605129 (and d!1268215 b!4311286)))

(declare-fun lambda!132995 () Int)

(assert (=> bs!605129 (not (= lambda!132995 lambda!132986))))

(declare-fun bs!605130 () Bool)

(assert (= bs!605130 (and d!1268215 b!4311364)))

(assert (=> bs!605130 (not (= lambda!132995 lambda!132989))))

(assert (=> d!1268215 true))

(assert (=> d!1268215 (allKeysSameHash!194 lt!1531603 lt!1531609 (hashF!6727 thiss!42308))))

(declare-fun lt!1531694 () Unit!67357)

(declare-fun choose!26267 (List!48347 (_ BitVec 64) List!48346 Hashable!4593) Unit!67357)

(assert (=> d!1268215 (= lt!1531694 (choose!26267 (toList!2425 lt!1531604) lt!1531609 lt!1531603 (hashF!6727 thiss!42308)))))

(assert (=> d!1268215 (forall!8740 (toList!2425 lt!1531604) lambda!132995)))

(assert (=> d!1268215 (= (lemmaInLongMapAllKeySameHashThenForTuple!181 (toList!2425 lt!1531604) lt!1531609 lt!1531603 (hashF!6727 thiss!42308)) lt!1531694)))

(declare-fun bs!605131 () Bool)

(assert (= bs!605131 d!1268215))

(assert (=> bs!605131 m!4904225))

(declare-fun m!4904355 () Bool)

(assert (=> bs!605131 m!4904355))

(declare-fun m!4904357 () Bool)

(assert (=> bs!605131 m!4904357))

(assert (=> b!4311286 d!1268215))

(declare-fun d!1268217 () Bool)

(assert (=> d!1268217 (noDuplicateKeys!220 (removePairForKey!220 lt!1531603 key!2048))))

(declare-fun lt!1531697 () Unit!67357)

(declare-fun choose!26268 (List!48346 K!9439) Unit!67357)

(assert (=> d!1268217 (= lt!1531697 (choose!26268 lt!1531603 key!2048))))

(assert (=> d!1268217 (noDuplicateKeys!220 lt!1531603)))

(assert (=> d!1268217 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!169 lt!1531603 key!2048) lt!1531697)))

(declare-fun bs!605132 () Bool)

(assert (= bs!605132 d!1268217))

(assert (=> bs!605132 m!4904247))

(assert (=> bs!605132 m!4904247))

(declare-fun m!4904359 () Bool)

(assert (=> bs!605132 m!4904359))

(declare-fun m!4904361 () Bool)

(assert (=> bs!605132 m!4904361))

(assert (=> bs!605132 m!4904287))

(assert (=> b!4311286 d!1268217))

(declare-fun d!1268219 () Bool)

(declare-fun res!1766930 () Bool)

(declare-fun e!2681465 () Bool)

(assert (=> d!1268219 (=> res!1766930 e!2681465)))

(assert (=> d!1268219 (= res!1766930 ((_ is Nil!48223) (toList!2425 lt!1531604)))))

(assert (=> d!1268219 (= (forall!8740 (toList!2425 lt!1531604) lambda!132986) e!2681465)))

(declare-fun b!4311383 () Bool)

(declare-fun e!2681466 () Bool)

(assert (=> b!4311383 (= e!2681465 e!2681466)))

(declare-fun res!1766931 () Bool)

(assert (=> b!4311383 (=> (not res!1766931) (not e!2681466))))

(declare-fun dynLambda!20445 (Int tuple2!46720) Bool)

(assert (=> b!4311383 (= res!1766931 (dynLambda!20445 lambda!132986 (h!53663 (toList!2425 lt!1531604))))))

(declare-fun b!4311384 () Bool)

(assert (=> b!4311384 (= e!2681466 (forall!8740 (t!355164 (toList!2425 lt!1531604)) lambda!132986))))

(assert (= (and d!1268219 (not res!1766930)) b!4311383))

(assert (= (and b!4311383 res!1766931) b!4311384))

(declare-fun b_lambda!126657 () Bool)

(assert (=> (not b_lambda!126657) (not b!4311383)))

(declare-fun m!4904363 () Bool)

(assert (=> b!4311383 m!4904363))

(declare-fun m!4904365 () Bool)

(assert (=> b!4311384 m!4904365))

(assert (=> b!4311286 d!1268219))

(declare-fun bs!605133 () Bool)

(declare-fun d!1268221 () Bool)

(assert (= bs!605133 (and d!1268221 d!1268213)))

(declare-fun lambda!132996 () Int)

(assert (=> bs!605133 (= lambda!132996 lambda!132992)))

(assert (=> d!1268221 true))

(assert (=> d!1268221 true))

(assert (=> d!1268221 (= (allKeysSameHash!194 lt!1531607 lt!1531609 (hashF!6727 thiss!42308)) (forall!8741 lt!1531607 lambda!132996))))

(declare-fun bs!605134 () Bool)

(assert (= bs!605134 d!1268221))

(declare-fun m!4904367 () Bool)

(assert (=> bs!605134 m!4904367))

(assert (=> b!4311286 d!1268221))

(declare-fun d!1268223 () Bool)

(declare-fun res!1766936 () Bool)

(declare-fun e!2681471 () Bool)

(assert (=> d!1268223 (=> res!1766936 e!2681471)))

(assert (=> d!1268223 (= res!1766936 (not ((_ is Cons!48222) lt!1531607)))))

(assert (=> d!1268223 (= (noDuplicateKeys!220 lt!1531607) e!2681471)))

(declare-fun b!4311389 () Bool)

(declare-fun e!2681472 () Bool)

(assert (=> b!4311389 (= e!2681471 e!2681472)))

(declare-fun res!1766937 () Bool)

(assert (=> b!4311389 (=> (not res!1766937) (not e!2681472))))

(assert (=> b!4311389 (= res!1766937 (not (containsKey!324 (t!355163 lt!1531607) (_1!26639 (h!53662 lt!1531607)))))))

(declare-fun b!4311390 () Bool)

(assert (=> b!4311390 (= e!2681472 (noDuplicateKeys!220 (t!355163 lt!1531607)))))

(assert (= (and d!1268223 (not res!1766936)) b!4311389))

(assert (= (and b!4311389 res!1766937) b!4311390))

(declare-fun m!4904369 () Bool)

(assert (=> b!4311389 m!4904369))

(declare-fun m!4904371 () Bool)

(assert (=> b!4311390 m!4904371))

(assert (=> b!4311286 d!1268223))

(declare-fun d!1268225 () Bool)

(assert (=> d!1268225 (allKeysSameHash!194 (removePairForKey!220 lt!1531603 key!2048) lt!1531609 (hashF!6727 thiss!42308))))

(declare-fun lt!1531700 () Unit!67357)

(declare-fun choose!26269 (List!48346 K!9439 (_ BitVec 64) Hashable!4593) Unit!67357)

(assert (=> d!1268225 (= lt!1531700 (choose!26269 lt!1531603 key!2048 lt!1531609 (hashF!6727 thiss!42308)))))

(assert (=> d!1268225 (noDuplicateKeys!220 lt!1531603)))

(assert (=> d!1268225 (= (lemmaRemovePairForKeyPreservesHash!174 lt!1531603 key!2048 lt!1531609 (hashF!6727 thiss!42308)) lt!1531700)))

(declare-fun bs!605135 () Bool)

(assert (= bs!605135 d!1268225))

(assert (=> bs!605135 m!4904247))

(assert (=> bs!605135 m!4904247))

(declare-fun m!4904373 () Bool)

(assert (=> bs!605135 m!4904373))

(declare-fun m!4904375 () Bool)

(assert (=> bs!605135 m!4904375))

(assert (=> bs!605135 m!4904287))

(assert (=> b!4311286 d!1268225))

(declare-fun d!1268227 () Bool)

(declare-fun res!1766938 () Bool)

(declare-fun e!2681473 () Bool)

(assert (=> d!1268227 (=> res!1766938 e!2681473)))

(assert (=> d!1268227 (= res!1766938 (not ((_ is Cons!48222) lt!1531605)))))

(assert (=> d!1268227 (= (noDuplicateKeys!220 lt!1531605) e!2681473)))

(declare-fun b!4311391 () Bool)

(declare-fun e!2681474 () Bool)

(assert (=> b!4311391 (= e!2681473 e!2681474)))

(declare-fun res!1766939 () Bool)

(assert (=> b!4311391 (=> (not res!1766939) (not e!2681474))))

(assert (=> b!4311391 (= res!1766939 (not (containsKey!324 (t!355163 lt!1531605) (_1!26639 (h!53662 lt!1531605)))))))

(declare-fun b!4311392 () Bool)

(assert (=> b!4311392 (= e!2681474 (noDuplicateKeys!220 (t!355163 lt!1531605)))))

(assert (= (and d!1268227 (not res!1766938)) b!4311391))

(assert (= (and b!4311391 res!1766939) b!4311392))

(declare-fun m!4904377 () Bool)

(assert (=> b!4311391 m!4904377))

(declare-fun m!4904379 () Bool)

(assert (=> b!4311392 m!4904379))

(assert (=> b!4311285 d!1268227))

(declare-fun bs!605136 () Bool)

(declare-fun d!1268229 () Bool)

(assert (= bs!605136 (and d!1268229 b!4311286)))

(declare-fun lambda!132999 () Int)

(assert (=> bs!605136 (not (= lambda!132999 lambda!132986))))

(declare-fun bs!605137 () Bool)

(assert (= bs!605137 (and d!1268229 b!4311364)))

(assert (=> bs!605137 (not (= lambda!132999 lambda!132989))))

(declare-fun bs!605138 () Bool)

(assert (= bs!605138 (and d!1268229 d!1268215)))

(assert (=> bs!605138 (= lambda!132999 lambda!132995)))

(assert (=> d!1268229 true))

(assert (=> d!1268229 (= (allKeysSameHashInMap!341 lt!1531604 (hashF!6727 thiss!42308)) (forall!8740 (toList!2425 lt!1531604) lambda!132999))))

(declare-fun bs!605139 () Bool)

(assert (= bs!605139 d!1268229))

(declare-fun m!4904381 () Bool)

(assert (=> bs!605139 m!4904381))

(assert (=> b!4311292 d!1268229))

(declare-fun d!1268231 () Bool)

(declare-fun res!1766944 () Bool)

(declare-fun e!2681479 () Bool)

(assert (=> d!1268231 (=> res!1766944 e!2681479)))

(assert (=> d!1268231 (= res!1766944 (and ((_ is Cons!48222) lt!1531607) (= (_1!26639 (h!53662 lt!1531607)) key!2048)))))

(assert (=> d!1268231 (= (containsKey!324 lt!1531607 key!2048) e!2681479)))

(declare-fun b!4311397 () Bool)

(declare-fun e!2681480 () Bool)

(assert (=> b!4311397 (= e!2681479 e!2681480)))

(declare-fun res!1766945 () Bool)

(assert (=> b!4311397 (=> (not res!1766945) (not e!2681480))))

(assert (=> b!4311397 (= res!1766945 ((_ is Cons!48222) lt!1531607))))

(declare-fun b!4311398 () Bool)

(assert (=> b!4311398 (= e!2681480 (containsKey!324 (t!355163 lt!1531607) key!2048))))

(assert (= (and d!1268231 (not res!1766944)) b!4311397))

(assert (= (and b!4311397 res!1766945) b!4311398))

(declare-fun m!4904383 () Bool)

(assert (=> b!4311398 m!4904383))

(assert (=> b!4311282 d!1268231))

(declare-fun d!1268233 () Bool)

(assert (=> d!1268233 (= (array_inv!5413 (_keys!4977 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) (bvsge (size!35578 (_keys!4977 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4311283 d!1268233))

(declare-fun d!1268235 () Bool)

(assert (=> d!1268235 (= (array_inv!5414 (_values!4958 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) (bvsge (size!35579 (_values!4958 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4311283 d!1268235))

(declare-fun bs!605140 () Bool)

(declare-fun b!4311403 () Bool)

(assert (= bs!605140 (and b!4311403 b!4311286)))

(declare-fun lambda!133002 () Int)

(assert (=> bs!605140 (= lambda!133002 lambda!132986)))

(declare-fun bs!605141 () Bool)

(assert (= bs!605141 (and b!4311403 b!4311364)))

(assert (=> bs!605141 (= lambda!133002 lambda!132989)))

(declare-fun bs!605142 () Bool)

(assert (= bs!605142 (and b!4311403 d!1268215)))

(assert (=> bs!605142 (not (= lambda!133002 lambda!132995))))

(declare-fun bs!605143 () Bool)

(assert (= bs!605143 (and b!4311403 d!1268229)))

(assert (=> bs!605143 (not (= lambda!133002 lambda!132999))))

(declare-fun d!1268237 () Bool)

(declare-fun res!1766950 () Bool)

(declare-fun e!2681483 () Bool)

(assert (=> d!1268237 (=> (not res!1766950) (not e!2681483))))

(assert (=> d!1268237 (= res!1766950 (valid!3667 (v!42400 (underlying!9584 thiss!42308))))))

(assert (=> d!1268237 (= (valid!3666 thiss!42308) e!2681483)))

(declare-fun res!1766951 () Bool)

(assert (=> b!4311403 (=> (not res!1766951) (not e!2681483))))

(assert (=> b!4311403 (= res!1766951 (forall!8740 (toList!2425 (map!10221 (v!42400 (underlying!9584 thiss!42308)))) lambda!133002))))

(declare-fun b!4311404 () Bool)

(assert (=> b!4311404 (= e!2681483 (allKeysSameHashInMap!341 (map!10221 (v!42400 (underlying!9584 thiss!42308))) (hashF!6727 thiss!42308)))))

(assert (= (and d!1268237 res!1766950) b!4311403))

(assert (= (and b!4311403 res!1766951) b!4311404))

(assert (=> d!1268237 m!4904273))

(assert (=> b!4311403 m!4904263))

(declare-fun m!4904385 () Bool)

(assert (=> b!4311403 m!4904385))

(assert (=> b!4311404 m!4904263))

(assert (=> b!4311404 m!4904263))

(declare-fun m!4904387 () Bool)

(assert (=> b!4311404 m!4904387))

(assert (=> b!4311288 d!1268237))

(declare-fun tp!1324919 () Bool)

(declare-fun e!2681489 () Bool)

(declare-fun b!4311412 () Bool)

(assert (=> b!4311412 (= e!2681489 (and tp_is_empty!23813 tp_is_empty!23815 tp!1324919))))

(declare-fun mapNonEmpty!20882 () Bool)

(declare-fun mapRes!20882 () Bool)

(declare-fun tp!1324920 () Bool)

(declare-fun e!2681488 () Bool)

(assert (=> mapNonEmpty!20882 (= mapRes!20882 (and tp!1324920 e!2681488))))

(declare-fun mapRest!20882 () (Array (_ BitVec 32) List!48346))

(declare-fun mapValue!20882 () List!48346)

(declare-fun mapKey!20882 () (_ BitVec 32))

(assert (=> mapNonEmpty!20882 (= mapRest!20879 (store mapRest!20882 mapKey!20882 mapValue!20882))))

(declare-fun tp!1324918 () Bool)

(declare-fun b!4311411 () Bool)

(assert (=> b!4311411 (= e!2681488 (and tp_is_empty!23813 tp_is_empty!23815 tp!1324918))))

(declare-fun mapIsEmpty!20882 () Bool)

(assert (=> mapIsEmpty!20882 mapRes!20882))

(declare-fun condMapEmpty!20882 () Bool)

(declare-fun mapDefault!20882 () List!48346)

(assert (=> mapNonEmpty!20879 (= condMapEmpty!20882 (= mapRest!20879 ((as const (Array (_ BitVec 32) List!48346)) mapDefault!20882)))))

(assert (=> mapNonEmpty!20879 (= tp!1324911 (and e!2681489 mapRes!20882))))

(assert (= (and mapNonEmpty!20879 condMapEmpty!20882) mapIsEmpty!20882))

(assert (= (and mapNonEmpty!20879 (not condMapEmpty!20882)) mapNonEmpty!20882))

(assert (= (and mapNonEmpty!20882 ((_ is Cons!48222) mapValue!20882)) b!4311411))

(assert (= (and mapNonEmpty!20879 ((_ is Cons!48222) mapDefault!20882)) b!4311412))

(declare-fun m!4904389 () Bool)

(assert (=> mapNonEmpty!20882 m!4904389))

(declare-fun b!4311417 () Bool)

(declare-fun tp!1324923 () Bool)

(declare-fun e!2681492 () Bool)

(assert (=> b!4311417 (= e!2681492 (and tp_is_empty!23813 tp_is_empty!23815 tp!1324923))))

(assert (=> mapNonEmpty!20879 (= tp!1324910 e!2681492)))

(assert (= (and mapNonEmpty!20879 ((_ is Cons!48222) mapValue!20879)) b!4311417))

(declare-fun tp!1324924 () Bool)

(declare-fun b!4311418 () Bool)

(declare-fun e!2681493 () Bool)

(assert (=> b!4311418 (= e!2681493 (and tp_is_empty!23813 tp_is_empty!23815 tp!1324924))))

(assert (=> b!4311293 (= tp!1324908 e!2681493)))

(assert (= (and b!4311293 ((_ is Cons!48222) mapDefault!20879)) b!4311418))

(declare-fun b!4311419 () Bool)

(declare-fun tp!1324925 () Bool)

(declare-fun e!2681494 () Bool)

(assert (=> b!4311419 (= e!2681494 (and tp_is_empty!23813 tp_is_empty!23815 tp!1324925))))

(assert (=> b!4311283 (= tp!1324907 e!2681494)))

(assert (= (and b!4311283 ((_ is Cons!48222) (zeroValue!4936 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308))))))) b!4311419))

(declare-fun b!4311420 () Bool)

(declare-fun tp!1324926 () Bool)

(declare-fun e!2681495 () Bool)

(assert (=> b!4311420 (= e!2681495 (and tp_is_empty!23813 tp_is_empty!23815 tp!1324926))))

(assert (=> b!4311283 (= tp!1324905 e!2681495)))

(assert (= (and b!4311283 ((_ is Cons!48222) (minValue!4936 (v!42399 (underlying!9583 (v!42400 (underlying!9584 thiss!42308))))))) b!4311420))

(declare-fun b_lambda!126659 () Bool)

(assert (= b_lambda!126657 (or b!4311286 b_lambda!126659)))

(declare-fun bs!605144 () Bool)

(declare-fun d!1268239 () Bool)

(assert (= bs!605144 (and d!1268239 b!4311286)))

(assert (=> bs!605144 (= (dynLambda!20445 lambda!132986 (h!53663 (toList!2425 lt!1531604))) (noDuplicateKeys!220 (_2!26640 (h!53663 (toList!2425 lt!1531604)))))))

(declare-fun m!4904391 () Bool)

(assert (=> bs!605144 m!4904391))

(assert (=> b!4311383 d!1268239))

(declare-fun b_lambda!126661 () Bool)

(assert (= b_lambda!126655 (or (and b!4311283 b_free!128667) b_lambda!126661)))

(check-sat (not bm!298059) (not b_next!129371) (not bm!298056) (not b!4311389) (not b!4311411) (not b!4311319) (not d!1268205) (not b!4311321) b_and!340107 (not b!4311338) (not bm!298057) (not b!4311420) (not d!1268221) (not mapNonEmpty!20882) tp_is_empty!23815 (not b_next!129373) (not b!4311398) (not b!4311332) (not b!4311419) b_and!340109 (not d!1268225) (not tb!257303) (not b_lambda!126661) (not bm!298043) (not bm!298061) (not b!4311403) (not b!4311362) (not b!4311412) (not b!4311392) (not b!4311418) (not d!1268203) tp_is_empty!23813 (not b!4311364) (not d!1268237) (not d!1268213) (not b!4311317) (not d!1268201) (not d!1268215) (not bm!298060) (not b_lambda!126659) (not b!4311390) (not b!4311320) (not bm!298058) (not bs!605144) (not d!1268209) (not d!1268229) (not d!1268199) (not b!4311404) (not b!4311366) (not bm!298042) (not d!1268217) (not b!4311314) (not b!4311384) (not b!4311417) (not d!1268207) (not b!4311370) (not d!1268211) (not b!4311368) (not b!4311391))
(check-sat b_and!340109 b_and!340107 (not b_next!129373) (not b_next!129371))

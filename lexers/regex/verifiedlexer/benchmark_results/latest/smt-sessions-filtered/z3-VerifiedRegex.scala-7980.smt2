; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414042 () Bool)

(assert start!414042)

(declare-fun b!4308472 () Bool)

(declare-fun b_free!128523 () Bool)

(declare-fun b_next!129227 () Bool)

(assert (=> b!4308472 (= b_free!128523 (not b_next!129227))))

(declare-fun tp!1324019 () Bool)

(declare-fun b_and!339937 () Bool)

(assert (=> b!4308472 (= tp!1324019 b_and!339937)))

(declare-fun b!4308477 () Bool)

(declare-fun b_free!128525 () Bool)

(declare-fun b_next!129229 () Bool)

(assert (=> b!4308477 (= b_free!128525 (not b_next!129229))))

(declare-fun tp!1324023 () Bool)

(declare-fun b_and!339939 () Bool)

(assert (=> b!4308477 (= tp!1324023 b_and!339939)))

(declare-fun bs!604961 () Bool)

(declare-fun b!4308487 () Bool)

(declare-fun b!4308469 () Bool)

(assert (= bs!604961 (and b!4308487 b!4308469)))

(declare-fun lambda!132804 () Int)

(declare-fun lambda!132803 () Int)

(assert (=> bs!604961 (= lambda!132804 lambda!132803)))

(declare-datatypes ((V!9551 0))(
  ( (V!9552 (val!15737 Int)) )
))
(declare-datatypes ((K!9349 0))(
  ( (K!9350 (val!15738 Int)) )
))
(declare-datatypes ((tuple2!46508 0))(
  ( (tuple2!46509 (_1!26533 K!9349) (_2!26533 V!9551)) )
))
(declare-datatypes ((List!48282 0))(
  ( (Nil!48158) (Cons!48158 (h!53592 tuple2!46508) (t!355081 List!48282)) )
))
(declare-datatypes ((array!16720 0))(
  ( (array!16721 (arr!7467 (Array (_ BitVec 32) (_ BitVec 64))) (size!35506 (_ BitVec 32))) )
))
(declare-datatypes ((array!16722 0))(
  ( (array!16723 (arr!7468 (Array (_ BitVec 32) List!48282)) (size!35507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9282 0))(
  ( (LongMapFixedSize!9283 (defaultEntry!5026 Int) (mask!13190 (_ BitVec 32)) (extraKeys!4890 (_ BitVec 32)) (zeroValue!4900 List!48282) (minValue!4900 List!48282) (_size!9325 (_ BitVec 32)) (_keys!4941 array!16720) (_values!4922 array!16722) (_vacant!4702 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18373 0))(
  ( (Cell!18374 (v!42271 LongMapFixedSize!9282)) )
))
(declare-datatypes ((MutLongMap!4641 0))(
  ( (LongMap!4641 (underlying!9511 Cell!18373)) (MutLongMapExt!4640 (__x!29948 Int)) )
))
(declare-datatypes ((tuple2!46510 0))(
  ( (tuple2!46511 (_1!26534 Bool) (_2!26534 MutLongMap!4641)) )
))
(declare-fun lt!1529220 () tuple2!46510)

(declare-datatypes ((tuple2!46512 0))(
  ( (tuple2!46513 (_1!26535 (_ BitVec 64)) (_2!26535 List!48282)) )
))
(declare-datatypes ((List!48283 0))(
  ( (Nil!48159) (Cons!48159 (h!53593 tuple2!46512) (t!355082 List!48283)) )
))
(declare-datatypes ((ListLongMap!983 0))(
  ( (ListLongMap!984 (toList!2370 List!48283)) )
))
(declare-fun call!297230 () ListLongMap!983)

(declare-fun lt!1529214 () tuple2!46510)

(declare-fun bm!297213 () Bool)

(declare-fun c!732526 () Bool)

(declare-fun map!10140 (MutLongMap!4641) ListLongMap!983)

(assert (=> bm!297213 (= call!297230 (map!10140 (ite c!732526 (_2!26534 lt!1529214) (_2!26534 lt!1529220))))))

(declare-fun lt!1529235 () List!48282)

(declare-fun lt!1529243 () (_ BitVec 64))

(declare-fun bm!297214 () Bool)

(declare-fun lt!1529211 () (_ BitVec 64))

(declare-datatypes ((Hashable!4557 0))(
  ( (HashableExt!4556 (__x!29949 Int)) )
))
(declare-datatypes ((Cell!18375 0))(
  ( (Cell!18376 (v!42272 MutLongMap!4641)) )
))
(declare-datatypes ((MutableMap!4547 0))(
  ( (MutableMapExt!4546 (__x!29950 Int)) (HashMap!4547 (underlying!9512 Cell!18375) (hashF!6673 Hashable!4557) (_size!9326 (_ BitVec 32)) (defaultValue!4718 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4547)

(declare-fun call!297243 () List!48282)

(declare-fun call!297244 () Bool)

(declare-fun allKeysSameHash!176 (List!48282 (_ BitVec 64) Hashable!4557) Bool)

(assert (=> bm!297214 (= call!297244 (allKeysSameHash!176 (ite c!732526 lt!1529235 call!297243) (ite c!732526 lt!1529211 lt!1529243) (hashF!6673 thiss!42308)))))

(declare-fun lt!1529237 () ListLongMap!983)

(declare-fun bm!297215 () Bool)

(declare-datatypes ((ListMap!1651 0))(
  ( (ListMap!1652 (toList!2371 List!48282)) )
))
(declare-fun call!297242 () ListMap!1651)

(declare-fun lt!1529231 () ListLongMap!983)

(declare-fun extractMap!319 (List!48283) ListMap!1651)

(assert (=> bm!297215 (= call!297242 (extractMap!319 (ite c!732526 (toList!2370 lt!1529231) (toList!2370 lt!1529237))))))

(declare-datatypes ((Unit!67217 0))(
  ( (Unit!67218) )
))
(declare-fun call!297221 () Unit!67217)

(declare-fun lt!1529223 () List!48282)

(declare-fun bm!297216 () Bool)

(declare-fun lt!1529246 () List!48282)

(declare-fun key!2048 () K!9349)

(declare-fun lemmaRemovePairForKeyPreservesHash!160 (List!48282 K!9349 (_ BitVec 64) Hashable!4557) Unit!67217)

(assert (=> bm!297216 (= call!297221 (lemmaRemovePairForKeyPreservesHash!160 (ite c!732526 lt!1529223 lt!1529246) key!2048 (ite c!732526 lt!1529211 lt!1529243) (hashF!6673 thiss!42308)))))

(declare-fun b!4308465 () Bool)

(declare-fun e!2679272 () Bool)

(declare-fun call!297241 () Bool)

(assert (=> b!4308465 (= e!2679272 call!297241)))

(declare-fun b!4308466 () Bool)

(declare-fun e!2679284 () List!48282)

(declare-fun call!297222 () List!48282)

(assert (=> b!4308466 (= e!2679284 call!297222)))

(declare-fun bm!297217 () Bool)

(declare-fun call!297232 () ListMap!1651)

(declare-fun call!297239 () ListMap!1651)

(assert (=> bm!297217 (= call!297232 call!297239)))

(declare-fun lt!1529230 () ListLongMap!983)

(declare-fun call!297218 () Bool)

(declare-fun bm!297219 () Bool)

(declare-fun forall!8718 (List!48283 Int) Bool)

(assert (=> bm!297219 (= call!297218 (forall!8718 (ite c!732526 (toList!2370 lt!1529230) (toList!2370 lt!1529237)) (ite c!732526 lambda!132803 lambda!132804)))))

(declare-fun call!297226 () tuple2!46510)

(declare-fun bm!297220 () Bool)

(declare-fun lt!1529229 () List!48282)

(declare-fun lt!1529215 () List!48282)

(declare-fun update!421 (MutLongMap!4641 (_ BitVec 64) List!48282) tuple2!46510)

(assert (=> bm!297220 (= call!297226 (update!421 (v!42272 (underlying!9512 thiss!42308)) (ite c!732526 lt!1529211 lt!1529243) (ite c!732526 lt!1529229 lt!1529215)))))

(declare-fun b!4308467 () Bool)

(declare-fun e!2679282 () Bool)

(declare-fun e!2679279 () Bool)

(declare-fun lt!1529242 () MutLongMap!4641)

(get-info :version)

(assert (=> b!4308467 (= e!2679282 (and e!2679279 ((_ is LongMap!4641) lt!1529242)))))

(assert (=> b!4308467 (= lt!1529242 (v!42272 (underlying!9512 thiss!42308)))))

(declare-fun lt!1529218 () ListMap!1651)

(declare-fun bm!297221 () Bool)

(declare-fun lt!1529239 () ListMap!1651)

(declare-fun call!297224 () Bool)

(declare-fun contains!10126 (ListMap!1651 K!9349) Bool)

(assert (=> bm!297221 (= call!297224 (contains!10126 (ite c!732526 lt!1529239 lt!1529218) key!2048))))

(declare-fun bm!297222 () Bool)

(declare-fun call!297225 () ListMap!1651)

(assert (=> bm!297222 (= call!297225 call!297239)))

(declare-fun bm!297223 () Bool)

(declare-fun lt!1529233 () ListLongMap!983)

(declare-fun lt!1529205 () ListLongMap!983)

(declare-fun allKeysSameHashInMap!328 (ListLongMap!983 Hashable!4557) Bool)

(assert (=> bm!297223 (= call!297241 (allKeysSameHashInMap!328 (ite c!732526 lt!1529205 lt!1529233) (hashF!6673 thiss!42308)))))

(declare-fun b!4308468 () Bool)

(declare-fun e!2679268 () Bool)

(declare-fun tp!1324022 () Bool)

(declare-fun mapRes!20746 () Bool)

(assert (=> b!4308468 (= e!2679268 (and tp!1324022 mapRes!20746))))

(declare-fun condMapEmpty!20746 () Bool)

(declare-fun mapDefault!20746 () List!48282)

(assert (=> b!4308468 (= condMapEmpty!20746 (= (arr!7468 (_values!4922 (v!42271 (underlying!9511 (v!42272 (underlying!9512 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48282)) mapDefault!20746)))))

(declare-fun e!2679283 () Bool)

(assert (=> b!4308469 e!2679283))

(declare-fun res!1765869 () Bool)

(assert (=> b!4308469 (=> (not res!1765869) (not e!2679283))))

(declare-fun call!297229 () Bool)

(assert (=> b!4308469 (= res!1765869 call!297229)))

(assert (=> b!4308469 (= lt!1529205 call!297230)))

(declare-fun call!297238 () Bool)

(assert (=> b!4308469 (= call!297224 call!297238)))

(declare-fun lt!1529224 () Unit!67217)

(declare-fun call!297228 () Unit!67217)

(assert (=> b!4308469 (= lt!1529224 call!297228)))

(declare-fun lt!1529227 () ListMap!1651)

(declare-fun call!297234 () ListMap!1651)

(assert (=> b!4308469 (= lt!1529227 call!297234)))

(assert (=> b!4308469 (= lt!1529239 call!297225)))

(declare-fun call!297237 () Bool)

(assert (=> b!4308469 call!297237))

(declare-fun lt!1529232 () Unit!67217)

(declare-fun v!9179 () V!9551)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!55 (ListLongMap!983 (_ BitVec 64) List!48282 K!9349 V!9551 Hashable!4557) Unit!67217)

(assert (=> b!4308469 (= lt!1529232 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!55 lt!1529231 lt!1529211 lt!1529229 key!2048 v!9179 (hashF!6673 thiss!42308)))))

(declare-fun e!2679271 () Bool)

(assert (=> b!4308469 e!2679271))

(declare-fun res!1765867 () Bool)

(assert (=> b!4308469 (=> (not res!1765867) (not e!2679271))))

(assert (=> b!4308469 (= res!1765867 call!297218)))

(declare-fun call!297219 () ListLongMap!983)

(assert (=> b!4308469 (= lt!1529230 call!297219)))

(declare-fun lt!1529226 () Unit!67217)

(declare-fun call!297233 () Unit!67217)

(assert (=> b!4308469 (= lt!1529226 call!297233)))

(declare-fun e!2679285 () Bool)

(assert (=> b!4308469 e!2679285))

(declare-fun res!1765865 () Bool)

(assert (=> b!4308469 (=> (not res!1765865) (not e!2679285))))

(declare-fun noDuplicateKeys!201 (List!48282) Bool)

(assert (=> b!4308469 (= res!1765865 (noDuplicateKeys!201 lt!1529235))))

(declare-fun lt!1529209 () Unit!67217)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!158 (List!48282 K!9349) Unit!67217)

(assert (=> b!4308469 (= lt!1529209 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!158 lt!1529223 key!2048))))

(assert (=> b!4308469 call!297244))

(declare-fun lt!1529221 () Unit!67217)

(assert (=> b!4308469 (= lt!1529221 call!297221)))

(declare-fun call!297235 () Bool)

(assert (=> b!4308469 call!297235))

(declare-fun lt!1529236 () Unit!67217)

(declare-fun call!297220 () Unit!67217)

(assert (=> b!4308469 (= lt!1529236 call!297220)))

(declare-fun e!2679278 () Unit!67217)

(declare-fun Unit!67219 () Unit!67217)

(assert (=> b!4308469 (= e!2679278 Unit!67219)))

(declare-fun b!4308470 () Bool)

(declare-fun res!1765868 () Bool)

(assert (=> b!4308470 (=> (not res!1765868) (not e!2679283))))

(assert (=> b!4308470 (= res!1765868 call!297241)))

(declare-fun b!4308471 () Bool)

(declare-fun res!1765866 () Bool)

(assert (=> b!4308471 (=> (not res!1765866) (not e!2679285))))

(declare-fun containsKey!299 (List!48282 K!9349) Bool)

(assert (=> b!4308471 (= res!1765866 (not (containsKey!299 lt!1529235 key!2048)))))

(declare-fun bm!297224 () Bool)

(declare-fun removePairForKey!200 (List!48282 K!9349) List!48282)

(assert (=> bm!297224 (= call!297243 (removePairForKey!200 (ite c!732526 lt!1529223 lt!1529246) key!2048))))

(declare-fun lt!1529245 () tuple2!46508)

(declare-fun bm!297225 () Bool)

(declare-fun call!297240 () ListMap!1651)

(declare-fun call!297231 () ListMap!1651)

(declare-fun lt!1529204 () tuple2!46508)

(declare-fun +!252 (ListMap!1651 tuple2!46508) ListMap!1651)

(assert (=> bm!297225 (= call!297240 (+!252 (ite c!732526 call!297242 call!297231) (ite c!732526 lt!1529204 lt!1529245)))))

(declare-fun tp!1324025 () Bool)

(declare-fun tp!1324020 () Bool)

(declare-fun e!2679280 () Bool)

(declare-fun array_inv!5355 (array!16720) Bool)

(declare-fun array_inv!5356 (array!16722) Bool)

(assert (=> b!4308472 (= e!2679280 (and tp!1324019 tp!1324025 tp!1324020 (array_inv!5355 (_keys!4941 (v!42271 (underlying!9511 (v!42272 (underlying!9512 thiss!42308)))))) (array_inv!5356 (_values!4922 (v!42271 (underlying!9511 (v!42272 (underlying!9512 thiss!42308)))))) e!2679268))))

(declare-fun b!4308473 () Bool)

(declare-fun call!297236 () Bool)

(assert (=> b!4308473 (= e!2679283 call!297236)))

(declare-fun b!4308474 () Bool)

(declare-fun res!1765872 () Bool)

(declare-fun e!2679276 () Bool)

(assert (=> b!4308474 (=> (not res!1765872) (not e!2679276))))

(declare-fun valid!3629 (MutableMap!4547) Bool)

(assert (=> b!4308474 (= res!1765872 (valid!3629 thiss!42308))))

(declare-fun bm!297226 () Bool)

(declare-fun lt!1529238 () MutableMap!4547)

(declare-fun call!297227 () Bool)

(declare-fun lt!1529222 () MutableMap!4547)

(assert (=> bm!297226 (= call!297227 (valid!3629 (ite c!732526 lt!1529238 lt!1529222)))))

(declare-fun b!4308475 () Bool)

(assert (=> b!4308475 (= e!2679276 false)))

(declare-datatypes ((tuple2!46514 0))(
  ( (tuple2!46515 (_1!26536 Bool) (_2!26536 MutableMap!4547)) )
))
(declare-fun lt!1529208 () tuple2!46514)

(declare-fun e!2679281 () tuple2!46514)

(assert (=> b!4308475 (= lt!1529208 e!2679281)))

(declare-fun lt!1529207 () Bool)

(assert (=> b!4308475 (= c!732526 lt!1529207)))

(declare-fun contains!10127 (MutableMap!4547 K!9349) Bool)

(assert (=> b!4308475 (= lt!1529207 (contains!10127 thiss!42308 key!2048))))

(assert (=> b!4308475 (= lt!1529231 (map!10140 (v!42272 (underlying!9512 thiss!42308))))))

(declare-fun lt!1529212 () ListMap!1651)

(declare-fun map!10141 (MutableMap!4547) ListMap!1651)

(assert (=> b!4308475 (= lt!1529212 (map!10141 thiss!42308))))

(declare-fun bm!297227 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!166 (List!48283 (_ BitVec 64) List!48282 Hashable!4557) Unit!67217)

(assert (=> bm!297227 (= call!297220 (lemmaInLongMapAllKeySameHashThenForTuple!166 (toList!2370 lt!1529231) (ite c!732526 lt!1529211 lt!1529243) (ite c!732526 lt!1529223 lt!1529246) (hashF!6673 thiss!42308)))))

(declare-fun b!4308476 () Bool)

(declare-fun e!2679274 () Unit!67217)

(declare-fun Unit!67220 () Unit!67217)

(assert (=> b!4308476 (= e!2679274 Unit!67220)))

(declare-fun e!2679275 () Bool)

(assert (=> b!4308477 (= e!2679275 (and e!2679282 tp!1324023))))

(declare-fun b!4308478 () Bool)

(assert (=> b!4308478 (= e!2679285 (noDuplicateKeys!201 lt!1529229))))

(declare-fun mapIsEmpty!20746 () Bool)

(assert (=> mapIsEmpty!20746 mapRes!20746))

(declare-fun bm!297228 () Bool)

(declare-fun apply!10996 (MutLongMap!4641 (_ BitVec 64)) List!48282)

(assert (=> bm!297228 (= call!297222 (apply!10996 (v!42272 (underlying!9512 thiss!42308)) (ite c!732526 lt!1529211 lt!1529243)))))

(declare-fun b!4308479 () Bool)

(declare-fun e!2679273 () Bool)

(assert (=> b!4308479 e!2679273))

(declare-fun res!1765873 () Bool)

(assert (=> b!4308479 (=> (not res!1765873) (not e!2679273))))

(assert (=> b!4308479 (= res!1765873 call!297227)))

(declare-fun Unit!67221 () Unit!67217)

(assert (=> b!4308479 (= e!2679278 Unit!67221)))

(declare-fun bm!297229 () Bool)

(declare-fun call!297245 () (_ BitVec 64))

(declare-fun hash!989 (Hashable!4557 K!9349) (_ BitVec 64))

(assert (=> bm!297229 (= call!297245 (hash!989 (hashF!6673 thiss!42308) key!2048))))

(declare-fun bm!297230 () Bool)

(assert (=> bm!297230 (= call!297229 (forall!8718 (ite c!732526 (toList!2370 lt!1529205) (toList!2370 lt!1529233)) (ite c!732526 lambda!132803 lambda!132804)))))

(declare-fun lt!1529240 () Cell!18375)

(declare-fun b!4308480 () Bool)

(declare-datatypes ((tuple2!46516 0))(
  ( (tuple2!46517 (_1!26537 Unit!67217) (_2!26537 MutableMap!4547)) )
))
(declare-fun Unit!67222 () Unit!67217)

(declare-fun Unit!67223 () Unit!67217)

(assert (=> b!4308480 (= e!2679281 (tuple2!46515 (_1!26534 lt!1529214) (_2!26537 (ite (and (_1!26534 lt!1529214) (not lt!1529207)) (tuple2!46517 Unit!67222 (HashMap!4547 lt!1529240 (hashF!6673 thiss!42308) (bvadd (_size!9326 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4718 thiss!42308))) (tuple2!46517 Unit!67223 lt!1529238)))))))

(assert (=> b!4308480 (= lt!1529211 call!297245)))

(assert (=> b!4308480 (= lt!1529223 call!297222)))

(assert (=> b!4308480 (= lt!1529204 (tuple2!46509 key!2048 v!9179))))

(assert (=> b!4308480 (= lt!1529235 call!297243)))

(assert (=> b!4308480 (= lt!1529229 (Cons!48158 lt!1529204 lt!1529235))))

(assert (=> b!4308480 (= lt!1529214 call!297226)))

(assert (=> b!4308480 (= lt!1529240 (Cell!18376 (_2!26534 lt!1529214)))))

(assert (=> b!4308480 (= lt!1529238 (HashMap!4547 lt!1529240 (hashF!6673 thiss!42308) (_size!9326 thiss!42308) (defaultValue!4718 thiss!42308)))))

(declare-fun c!732528 () Bool)

(assert (=> b!4308480 (= c!732528 (_1!26534 lt!1529214))))

(declare-fun lt!1529216 () Unit!67217)

(assert (=> b!4308480 (= lt!1529216 e!2679278)))

(declare-fun b!4308481 () Bool)

(declare-fun e!2679286 () Bool)

(assert (=> b!4308481 e!2679286))

(declare-fun res!1765875 () Bool)

(assert (=> b!4308481 (=> (not res!1765875) (not e!2679286))))

(assert (=> b!4308481 (= res!1765875 call!297227)))

(declare-fun e!2679270 () Unit!67217)

(declare-fun Unit!67224 () Unit!67217)

(assert (=> b!4308481 (= e!2679270 Unit!67224)))

(declare-fun b!4308482 () Bool)

(declare-fun lt!1529213 () Unit!67217)

(assert (=> b!4308482 (= e!2679274 lt!1529213)))

(declare-fun lt!1529217 () Unit!67217)

(assert (=> b!4308482 (= lt!1529217 call!297220)))

(assert (=> b!4308482 call!297235))

(assert (=> b!4308482 (= lt!1529213 call!297221)))

(assert (=> b!4308482 call!297244))

(declare-fun bm!297231 () Bool)

(declare-fun call!297223 () Bool)

(assert (=> bm!297231 (= call!297223 (allKeysSameHashInMap!328 (ite c!732526 lt!1529230 lt!1529237) (hashF!6673 thiss!42308)))))

(declare-fun b!4308483 () Bool)

(declare-fun e!2679269 () Bool)

(assert (=> b!4308483 (= e!2679269 e!2679280)))

(declare-fun bm!297232 () Bool)

(assert (=> bm!297232 (= call!297231 (extractMap!319 (ite c!732526 (toList!2370 lt!1529230) (toList!2370 lt!1529231))))))

(declare-fun b!4308484 () Bool)

(declare-fun lt!1529219 () Cell!18375)

(declare-fun Unit!67225 () Unit!67217)

(declare-fun Unit!67226 () Unit!67217)

(assert (=> b!4308484 (= e!2679281 (tuple2!46515 (_1!26534 lt!1529220) (_2!26537 (ite (and (_1!26534 lt!1529220) (not lt!1529207)) (tuple2!46517 Unit!67225 (HashMap!4547 lt!1529219 (hashF!6673 thiss!42308) (bvadd (_size!9326 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4718 thiss!42308))) (tuple2!46517 Unit!67226 lt!1529222)))))))

(assert (=> b!4308484 (= lt!1529243 call!297245)))

(declare-fun c!732524 () Bool)

(declare-fun contains!10128 (MutLongMap!4641 (_ BitVec 64)) Bool)

(assert (=> b!4308484 (= c!732524 (contains!10128 (v!42272 (underlying!9512 thiss!42308)) lt!1529243))))

(assert (=> b!4308484 (= lt!1529246 e!2679284)))

(assert (=> b!4308484 (= lt!1529245 (tuple2!46509 key!2048 v!9179))))

(assert (=> b!4308484 (= lt!1529215 (Cons!48158 lt!1529245 lt!1529246))))

(assert (=> b!4308484 (= lt!1529220 call!297226)))

(assert (=> b!4308484 (= lt!1529219 (Cell!18376 (_2!26534 lt!1529220)))))

(assert (=> b!4308484 (= lt!1529222 (HashMap!4547 lt!1529219 (hashF!6673 thiss!42308) (_size!9326 thiss!42308) (defaultValue!4718 thiss!42308)))))

(declare-fun c!732527 () Bool)

(assert (=> b!4308484 (= c!732527 (_1!26534 lt!1529220))))

(declare-fun lt!1529244 () Unit!67217)

(assert (=> b!4308484 (= lt!1529244 e!2679270)))

(declare-fun mapNonEmpty!20746 () Bool)

(declare-fun tp!1324024 () Bool)

(declare-fun tp!1324021 () Bool)

(assert (=> mapNonEmpty!20746 (= mapRes!20746 (and tp!1324024 tp!1324021))))

(declare-fun mapKey!20746 () (_ BitVec 32))

(declare-fun mapValue!20746 () List!48282)

(declare-fun mapRest!20746 () (Array (_ BitVec 32) List!48282))

(assert (=> mapNonEmpty!20746 (= (arr!7468 (_values!4922 (v!42271 (underlying!9511 (v!42272 (underlying!9512 thiss!42308)))))) (store mapRest!20746 mapKey!20746 mapValue!20746))))

(declare-fun b!4308485 () Bool)

(assert (=> b!4308485 (= e!2679279 e!2679269)))

(declare-fun res!1765871 () Bool)

(assert (=> start!414042 (=> (not res!1765871) (not e!2679276))))

(assert (=> start!414042 (= res!1765871 ((_ is HashMap!4547) thiss!42308))))

(assert (=> start!414042 e!2679276))

(assert (=> start!414042 e!2679275))

(declare-fun tp_is_empty!23685 () Bool)

(assert (=> start!414042 tp_is_empty!23685))

(declare-fun tp_is_empty!23687 () Bool)

(assert (=> start!414042 tp_is_empty!23687))

(declare-fun bm!297218 () Bool)

(assert (=> bm!297218 (= call!297234 (+!252 lt!1529212 (ite c!732526 lt!1529204 lt!1529245)))))

(declare-fun b!4308486 () Bool)

(assert (=> b!4308486 (= e!2679286 (= call!297232 lt!1529212))))

(declare-fun lt!1529247 () ListMap!1651)

(declare-fun bm!297233 () Bool)

(assert (=> bm!297233 (= call!297238 (contains!10126 (ite c!732526 lt!1529227 lt!1529247) key!2048))))

(declare-fun bm!297234 () Bool)

(declare-fun lemmaEquivalentThenSameContains!51 (ListMap!1651 ListMap!1651 K!9349) Unit!67217)

(assert (=> bm!297234 (= call!297228 (lemmaEquivalentThenSameContains!51 (ite c!732526 lt!1529239 lt!1529218) (ite c!732526 lt!1529227 lt!1529247) key!2048))))

(declare-fun bm!297235 () Bool)

(declare-fun eq!136 (ListMap!1651 ListMap!1651) Bool)

(assert (=> bm!297235 (= call!297237 (eq!136 (ite c!732526 call!297231 call!297242) call!297240))))

(declare-fun bm!297236 () Bool)

(declare-fun +!253 (ListLongMap!983 tuple2!46512) ListLongMap!983)

(assert (=> bm!297236 (= call!297219 (+!253 lt!1529231 (ite c!732526 (tuple2!46513 lt!1529211 lt!1529229) (tuple2!46513 lt!1529243 lt!1529215))))))

(declare-fun lt!1529228 () Bool)

(declare-fun lt!1529225 () Bool)

(assert (=> b!4308487 (and (= lt!1529228 lt!1529225) lt!1529225 lt!1529228)))

(assert (=> b!4308487 (= lt!1529225 call!297238)))

(assert (=> b!4308487 (= lt!1529228 call!297224)))

(declare-fun lt!1529241 () Unit!67217)

(assert (=> b!4308487 (= lt!1529241 call!297228)))

(assert (=> b!4308487 call!297236))

(assert (=> b!4308487 (= lt!1529247 call!297234)))

(assert (=> b!4308487 (= lt!1529218 call!297232)))

(assert (=> b!4308487 e!2679272))

(declare-fun res!1765870 () Bool)

(assert (=> b!4308487 (=> (not res!1765870) (not e!2679272))))

(assert (=> b!4308487 (= res!1765870 call!297229)))

(assert (=> b!4308487 (= lt!1529233 call!297230)))

(assert (=> b!4308487 call!297237))

(declare-fun lt!1529210 () Unit!67217)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!53 (ListLongMap!983 (_ BitVec 64) List!48282 K!9349 V!9551 Hashable!4557) Unit!67217)

(assert (=> b!4308487 (= lt!1529210 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!53 lt!1529231 lt!1529243 lt!1529215 key!2048 v!9179 (hashF!6673 thiss!42308)))))

(declare-fun e!2679277 () Bool)

(assert (=> b!4308487 e!2679277))

(declare-fun res!1765874 () Bool)

(assert (=> b!4308487 (=> (not res!1765874) (not e!2679277))))

(assert (=> b!4308487 (= res!1765874 call!297218)))

(assert (=> b!4308487 (= lt!1529237 call!297219)))

(declare-fun lt!1529234 () Unit!67217)

(assert (=> b!4308487 (= lt!1529234 call!297233)))

(declare-fun lt!1529206 () Unit!67217)

(assert (=> b!4308487 (= lt!1529206 e!2679274)))

(declare-fun c!732525 () Bool)

(declare-fun isEmpty!28079 (List!48282) Bool)

(assert (=> b!4308487 (= c!732525 (not (isEmpty!28079 lt!1529246)))))

(declare-fun Unit!67227 () Unit!67217)

(assert (=> b!4308487 (= e!2679270 Unit!67227)))

(declare-fun bm!297237 () Bool)

(assert (=> bm!297237 (= call!297239 (map!10141 (ite c!732526 lt!1529238 lt!1529222)))))

(declare-fun bm!297238 () Bool)

(assert (=> bm!297238 (= call!297236 (eq!136 (ite c!732526 lt!1529239 lt!1529218) (ite c!732526 lt!1529227 lt!1529247)))))

(declare-fun b!4308488 () Bool)

(assert (=> b!4308488 (= e!2679273 (= call!297225 lt!1529212))))

(declare-fun b!4308489 () Bool)

(assert (=> b!4308489 (= e!2679277 call!297223)))

(declare-fun bm!297239 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!142 (ListLongMap!983 (_ BitVec 64) List!48282 Hashable!4557) Unit!67217)

(assert (=> bm!297239 (= call!297233 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!142 lt!1529231 (ite c!732526 lt!1529211 lt!1529243) (ite c!732526 lt!1529229 lt!1529215) (hashF!6673 thiss!42308)))))

(declare-fun bm!297240 () Bool)

(assert (=> bm!297240 (= call!297235 (allKeysSameHash!176 (ite c!732526 lt!1529223 lt!1529246) (ite c!732526 lt!1529211 lt!1529243) (hashF!6673 thiss!42308)))))

(declare-fun b!4308490 () Bool)

(assert (=> b!4308490 (= e!2679271 call!297223)))

(declare-fun b!4308491 () Bool)

(assert (=> b!4308491 (= e!2679284 Nil!48158)))

(assert (= (and start!414042 res!1765871) b!4308474))

(assert (= (and b!4308474 res!1765872) b!4308475))

(assert (= (and b!4308475 c!732526) b!4308480))

(assert (= (and b!4308475 (not c!732526)) b!4308484))

(assert (= (and b!4308480 c!732528) b!4308469))

(assert (= (and b!4308480 (not c!732528)) b!4308479))

(assert (= (and b!4308469 res!1765865) b!4308471))

(assert (= (and b!4308471 res!1765866) b!4308478))

(assert (= (and b!4308469 res!1765867) b!4308490))

(assert (= (and b!4308469 res!1765869) b!4308470))

(assert (= (and b!4308470 res!1765868) b!4308473))

(assert (= (and b!4308479 res!1765873) b!4308488))

(assert (= (or b!4308469 b!4308488) bm!297222))

(assert (= (and b!4308484 c!732524) b!4308466))

(assert (= (and b!4308484 (not c!732524)) b!4308491))

(assert (= (and b!4308484 c!732527) b!4308487))

(assert (= (and b!4308484 (not c!732527)) b!4308481))

(assert (= (and b!4308487 c!732525) b!4308482))

(assert (= (and b!4308487 (not c!732525)) b!4308476))

(assert (= (and b!4308487 res!1765874) b!4308489))

(assert (= (and b!4308487 res!1765870) b!4308465))

(assert (= (and b!4308481 res!1765875) b!4308486))

(assert (= (or b!4308487 b!4308486) bm!297217))

(assert (= (or b!4308469 b!4308482) bm!297216))

(assert (= (or b!4308480 b!4308482) bm!297224))

(assert (= (or b!4308490 b!4308489) bm!297231))

(assert (= (or bm!297222 bm!297217) bm!297237))

(assert (= (or b!4308480 b!4308466) bm!297228))

(assert (= (or b!4308469 b!4308487) bm!297234))

(assert (= (or b!4308473 b!4308487) bm!297238))

(assert (= (or b!4308469 b!4308487) bm!297232))

(assert (= (or b!4308469 b!4308487) bm!297221))

(assert (= (or b!4308469 b!4308487) bm!297213))

(assert (= (or b!4308480 b!4308484) bm!297220))

(assert (= (or b!4308469 b!4308482) bm!297240))

(assert (= (or b!4308469 b!4308487) bm!297230))

(assert (= (or b!4308469 b!4308487) bm!297218))

(assert (= (or b!4308469 b!4308487) bm!297239))

(assert (= (or b!4308469 b!4308487) bm!297215))

(assert (= (or b!4308469 b!4308487) bm!297219))

(assert (= (or b!4308469 b!4308487) bm!297236))

(assert (= (or b!4308469 b!4308482) bm!297227))

(assert (= (or b!4308480 b!4308484) bm!297229))

(assert (= (or b!4308479 b!4308481) bm!297226))

(assert (= (or b!4308470 b!4308465) bm!297223))

(assert (= (or b!4308469 b!4308487) bm!297233))

(assert (= (or b!4308469 b!4308482) bm!297214))

(assert (= (or b!4308469 b!4308487) bm!297225))

(assert (= (or b!4308469 b!4308487) bm!297235))

(assert (= (and b!4308468 condMapEmpty!20746) mapIsEmpty!20746))

(assert (= (and b!4308468 (not condMapEmpty!20746)) mapNonEmpty!20746))

(assert (= b!4308472 b!4308468))

(assert (= b!4308483 b!4308472))

(assert (= b!4308485 b!4308483))

(assert (= (and b!4308467 ((_ is LongMap!4641) (v!42272 (underlying!9512 thiss!42308)))) b!4308485))

(assert (= b!4308477 b!4308467))

(assert (= (and start!414042 ((_ is HashMap!4547) thiss!42308)) b!4308477))

(declare-fun m!4901595 () Bool)

(assert (=> bm!297221 m!4901595))

(declare-fun m!4901597 () Bool)

(assert (=> bm!297214 m!4901597))

(declare-fun m!4901599 () Bool)

(assert (=> bm!297234 m!4901599))

(declare-fun m!4901601 () Bool)

(assert (=> b!4308475 m!4901601))

(declare-fun m!4901603 () Bool)

(assert (=> b!4308475 m!4901603))

(declare-fun m!4901605 () Bool)

(assert (=> b!4308475 m!4901605))

(declare-fun m!4901607 () Bool)

(assert (=> bm!297223 m!4901607))

(declare-fun m!4901609 () Bool)

(assert (=> bm!297213 m!4901609))

(declare-fun m!4901611 () Bool)

(assert (=> bm!297238 m!4901611))

(declare-fun m!4901613 () Bool)

(assert (=> bm!297215 m!4901613))

(declare-fun m!4901615 () Bool)

(assert (=> bm!297230 m!4901615))

(declare-fun m!4901617 () Bool)

(assert (=> bm!297227 m!4901617))

(declare-fun m!4901619 () Bool)

(assert (=> bm!297228 m!4901619))

(declare-fun m!4901621 () Bool)

(assert (=> bm!297237 m!4901621))

(declare-fun m!4901623 () Bool)

(assert (=> bm!297231 m!4901623))

(declare-fun m!4901625 () Bool)

(assert (=> bm!297239 m!4901625))

(declare-fun m!4901627 () Bool)

(assert (=> bm!297224 m!4901627))

(declare-fun m!4901629 () Bool)

(assert (=> bm!297229 m!4901629))

(declare-fun m!4901631 () Bool)

(assert (=> mapNonEmpty!20746 m!4901631))

(declare-fun m!4901633 () Bool)

(assert (=> bm!297219 m!4901633))

(declare-fun m!4901635 () Bool)

(assert (=> b!4308471 m!4901635))

(declare-fun m!4901637 () Bool)

(assert (=> b!4308478 m!4901637))

(declare-fun m!4901639 () Bool)

(assert (=> bm!297218 m!4901639))

(declare-fun m!4901641 () Bool)

(assert (=> b!4308474 m!4901641))

(declare-fun m!4901643 () Bool)

(assert (=> bm!297216 m!4901643))

(declare-fun m!4901645 () Bool)

(assert (=> bm!297235 m!4901645))

(declare-fun m!4901647 () Bool)

(assert (=> bm!297225 m!4901647))

(declare-fun m!4901649 () Bool)

(assert (=> bm!297226 m!4901649))

(declare-fun m!4901651 () Bool)

(assert (=> b!4308472 m!4901651))

(declare-fun m!4901653 () Bool)

(assert (=> b!4308472 m!4901653))

(declare-fun m!4901655 () Bool)

(assert (=> bm!297220 m!4901655))

(declare-fun m!4901657 () Bool)

(assert (=> b!4308484 m!4901657))

(declare-fun m!4901659 () Bool)

(assert (=> bm!297240 m!4901659))

(declare-fun m!4901661 () Bool)

(assert (=> bm!297236 m!4901661))

(declare-fun m!4901663 () Bool)

(assert (=> bm!297232 m!4901663))

(declare-fun m!4901665 () Bool)

(assert (=> b!4308469 m!4901665))

(declare-fun m!4901667 () Bool)

(assert (=> b!4308469 m!4901667))

(declare-fun m!4901669 () Bool)

(assert (=> b!4308469 m!4901669))

(declare-fun m!4901671 () Bool)

(assert (=> bm!297233 m!4901671))

(declare-fun m!4901673 () Bool)

(assert (=> b!4308487 m!4901673))

(declare-fun m!4901675 () Bool)

(assert (=> b!4308487 m!4901675))

(check-sat (not bm!297216) (not b!4308478) (not bm!297239) (not bm!297235) (not bm!297240) (not mapNonEmpty!20746) (not bm!297213) b_and!339937 (not bm!297226) tp_is_empty!23685 (not bm!297225) (not bm!297228) (not b!4308474) (not b!4308484) (not bm!297227) (not bm!297229) (not b!4308475) (not b_next!129227) (not b!4308487) b_and!339939 (not bm!297218) (not bm!297215) (not bm!297220) (not bm!297219) (not bm!297224) (not bm!297233) (not b!4308469) (not bm!297221) (not b_next!129229) (not bm!297234) (not bm!297237) (not bm!297214) (not b!4308472) (not bm!297236) (not bm!297238) (not b!4308468) (not b!4308471) (not bm!297232) (not bm!297230) (not bm!297231) tp_is_empty!23687 (not bm!297223))
(check-sat b_and!339937 b_and!339939 (not b_next!129229) (not b_next!129227))

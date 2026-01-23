; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416560 () Bool)

(assert start!416560)

(declare-fun b!4325430 () Bool)

(declare-fun b_free!129051 () Bool)

(declare-fun b_next!129755 () Bool)

(assert (=> b!4325430 (= b_free!129051 (not b_next!129755))))

(declare-fun tp!1327513 () Bool)

(declare-fun b_and!340633 () Bool)

(assert (=> b!4325430 (= tp!1327513 b_and!340633)))

(declare-fun b!4325438 () Bool)

(declare-fun b_free!129053 () Bool)

(declare-fun b_next!129757 () Bool)

(assert (=> b!4325438 (= b_free!129053 (not b_next!129757))))

(declare-fun tp!1327511 () Bool)

(declare-fun b_and!340635 () Bool)

(assert (=> b!4325438 (= tp!1327511 b_and!340635)))

(declare-fun b!4325424 () Bool)

(declare-fun e!2691286 () Bool)

(declare-fun e!2691281 () Bool)

(assert (=> b!4325424 (= e!2691286 e!2691281)))

(declare-fun mapNonEmpty!21273 () Bool)

(declare-fun mapRes!21273 () Bool)

(declare-fun tp!1327507 () Bool)

(declare-fun tp!1327512 () Bool)

(assert (=> mapNonEmpty!21273 (= mapRes!21273 (and tp!1327507 tp!1327512))))

(declare-datatypes ((K!9679 0))(
  ( (K!9680 (val!16001 Int)) )
))
(declare-datatypes ((V!9881 0))(
  ( (V!9882 (val!16002 Int)) )
))
(declare-datatypes ((tuple2!47316 0))(
  ( (tuple2!47317 (_1!26946 K!9679) (_2!26946 V!9881)) )
))
(declare-datatypes ((List!48547 0))(
  ( (Nil!48423) (Cons!48423 (h!53891 tuple2!47316) (t!355449 List!48547)) )
))
(declare-fun mapValue!21273 () List!48547)

(declare-fun mapRest!21273 () (Array (_ BitVec 32) List!48547))

(declare-fun mapKey!21273 () (_ BitVec 32))

(declare-datatypes ((array!17328 0))(
  ( (array!17329 (arr!7731 (Array (_ BitVec 32) (_ BitVec 64))) (size!35770 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4689 0))(
  ( (HashableExt!4688 (__x!30344 Int)) )
))
(declare-datatypes ((array!17330 0))(
  ( (array!17331 (arr!7732 (Array (_ BitVec 32) List!48547)) (size!35771 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9546 0))(
  ( (LongMapFixedSize!9547 (defaultEntry!5178 Int) (mask!13422 (_ BitVec 32)) (extraKeys!5038 (_ BitVec 32)) (zeroValue!5050 List!48547) (minValue!5050 List!48547) (_size!9591 (_ BitVec 32)) (_keys!5099 array!17328) (_values!5074 array!17330) (_vacant!4836 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18901 0))(
  ( (Cell!18902 (v!42866 LongMapFixedSize!9546)) )
))
(declare-datatypes ((MutLongMap!4773 0))(
  ( (LongMap!4773 (underlying!9775 Cell!18901)) (MutLongMapExt!4772 (__x!30345 Int)) )
))
(declare-datatypes ((Cell!18903 0))(
  ( (Cell!18904 (v!42867 MutLongMap!4773)) )
))
(declare-datatypes ((MutableMap!4679 0))(
  ( (MutableMapExt!4678 (__x!30346 Int)) (HashMap!4679 (underlying!9776 Cell!18903) (hashF!6995 Hashable!4689) (_size!9592 (_ BitVec 32)) (defaultValue!4850 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4679)

(assert (=> mapNonEmpty!21273 (= (arr!7732 (_values!5074 (v!42866 (underlying!9775 (v!42867 (underlying!9776 thiss!42308)))))) (store mapRest!21273 mapKey!21273 mapValue!21273))))

(declare-fun b!4325425 () Bool)

(declare-fun e!2691287 () Bool)

(assert (=> b!4325425 (= e!2691287 e!2691286)))

(declare-fun b!4325426 () Bool)

(declare-fun e!2691283 () Bool)

(declare-datatypes ((tuple2!47318 0))(
  ( (tuple2!47319 (_1!26947 (_ BitVec 64)) (_2!26947 List!48547)) )
))
(declare-datatypes ((List!48548 0))(
  ( (Nil!48424) (Cons!48424 (h!53892 tuple2!47318) (t!355450 List!48548)) )
))
(declare-datatypes ((ListLongMap!1209 0))(
  ( (ListLongMap!1210 (toList!2592 List!48548)) )
))
(declare-fun lt!1542721 () ListLongMap!1209)

(declare-fun allKeysSameHashInMap!404 (ListLongMap!1209 Hashable!4689) Bool)

(assert (=> b!4325426 (= e!2691283 (allKeysSameHashInMap!404 lt!1542721 (hashF!6995 thiss!42308)))))

(declare-fun b!4325427 () Bool)

(declare-fun e!2691279 () Bool)

(declare-fun lt!1542724 () MutLongMap!4773)

(get-info :version)

(assert (=> b!4325427 (= e!2691279 (and e!2691287 ((_ is LongMap!4773) lt!1542724)))))

(assert (=> b!4325427 (= lt!1542724 (v!42867 (underlying!9776 thiss!42308)))))

(declare-fun b!4325428 () Bool)

(declare-fun e!2691280 () Bool)

(declare-fun lt!1542725 () ListLongMap!1209)

(assert (=> b!4325428 (= e!2691280 (allKeysSameHashInMap!404 lt!1542725 (hashF!6995 thiss!42308)))))

(declare-fun b!4325429 () Bool)

(declare-fun e!2691290 () Bool)

(declare-fun lt!1542726 () Bool)

(assert (=> b!4325429 (= e!2691290 (not lt!1542726))))

(declare-fun lt!1542730 () Bool)

(assert (=> b!4325429 (and (= lt!1542726 lt!1542730) lt!1542730)))

(declare-datatypes ((ListMap!1869 0))(
  ( (ListMap!1870 (toList!2593 List!48547)) )
))
(declare-fun lt!1542723 () ListMap!1869)

(declare-fun key!2048 () K!9679)

(declare-fun contains!10501 (ListMap!1869 K!9679) Bool)

(assert (=> b!4325429 (= lt!1542730 (contains!10501 lt!1542723 key!2048))))

(declare-fun lt!1542717 () ListMap!1869)

(assert (=> b!4325429 (= lt!1542726 (contains!10501 lt!1542717 key!2048))))

(declare-datatypes ((Unit!67978 0))(
  ( (Unit!67979) )
))
(declare-fun lt!1542720 () Unit!67978)

(declare-fun lemmaEquivalentThenSameContains!68 (ListMap!1869 ListMap!1869 K!9679) Unit!67978)

(assert (=> b!4325429 (= lt!1542720 (lemmaEquivalentThenSameContains!68 lt!1542717 lt!1542723 key!2048))))

(declare-fun eq!163 (ListMap!1869 ListMap!1869) Bool)

(assert (=> b!4325429 (eq!163 lt!1542717 lt!1542723)))

(declare-fun lt!1542735 () ListMap!1869)

(declare-fun lt!1542728 () tuple2!47316)

(declare-fun +!358 (ListMap!1869 tuple2!47316) ListMap!1869)

(assert (=> b!4325429 (= lt!1542723 (+!358 lt!1542735 lt!1542728))))

(declare-datatypes ((tuple2!47320 0))(
  ( (tuple2!47321 (_1!26948 Bool) (_2!26948 MutLongMap!4773)) )
))
(declare-fun lt!1542732 () tuple2!47320)

(declare-fun map!10460 (MutableMap!4679) ListMap!1869)

(assert (=> b!4325429 (= lt!1542717 (map!10460 (HashMap!4679 (Cell!18904 (_2!26948 lt!1542732)) (hashF!6995 thiss!42308) (_size!9592 thiss!42308) (defaultValue!4850 thiss!42308))))))

(assert (=> b!4325429 e!2691280))

(declare-fun res!1772619 () Bool)

(assert (=> b!4325429 (=> (not res!1772619) (not e!2691280))))

(declare-fun lambda!134296 () Int)

(declare-fun forall!8837 (List!48548 Int) Bool)

(assert (=> b!4325429 (= res!1772619 (forall!8837 (toList!2592 lt!1542725) lambda!134296))))

(declare-fun map!10461 (MutLongMap!4773) ListLongMap!1209)

(assert (=> b!4325429 (= lt!1542725 (map!10461 (_2!26948 lt!1542732)))))

(declare-fun lt!1542733 () ListLongMap!1209)

(declare-fun extractMap!383 (List!48548) ListMap!1869)

(assert (=> b!4325429 (eq!163 (extractMap!383 (toList!2592 lt!1542721)) (+!358 (extractMap!383 (toList!2592 lt!1542733)) lt!1542728))))

(declare-fun lt!1542718 () List!48547)

(declare-fun v!9179 () V!9881)

(declare-fun lt!1542719 () (_ BitVec 64))

(declare-fun lt!1542729 () Unit!67978)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!68 (ListLongMap!1209 (_ BitVec 64) List!48547 K!9679 V!9881 Hashable!4689) Unit!67978)

(assert (=> b!4325429 (= lt!1542729 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!68 lt!1542733 lt!1542719 lt!1542718 key!2048 v!9179 (hashF!6995 thiss!42308)))))

(assert (=> b!4325429 e!2691283))

(declare-fun res!1772618 () Bool)

(assert (=> b!4325429 (=> (not res!1772618) (not e!2691283))))

(assert (=> b!4325429 (= res!1772618 (forall!8837 (toList!2592 lt!1542721) lambda!134296))))

(declare-fun +!359 (ListLongMap!1209 tuple2!47318) ListLongMap!1209)

(assert (=> b!4325429 (= lt!1542721 (+!359 lt!1542733 (tuple2!47319 lt!1542719 lt!1542718)))))

(declare-fun lt!1542736 () Unit!67978)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!196 (ListLongMap!1209 (_ BitVec 64) List!48547 Hashable!4689) Unit!67978)

(assert (=> b!4325429 (= lt!1542736 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!196 lt!1542733 lt!1542719 lt!1542718 (hashF!6995 thiss!42308)))))

(declare-fun lt!1542731 () Unit!67978)

(declare-fun e!2691288 () Unit!67978)

(assert (=> b!4325429 (= lt!1542731 e!2691288)))

(declare-fun c!735893 () Bool)

(declare-fun lt!1542722 () List!48547)

(declare-fun isEmpty!28140 (List!48547) Bool)

(assert (=> b!4325429 (= c!735893 (not (isEmpty!28140 lt!1542722)))))

(declare-fun e!2691289 () Bool)

(declare-fun tp!1327508 () Bool)

(declare-fun tp!1327510 () Bool)

(declare-fun array_inv!5571 (array!17328) Bool)

(declare-fun array_inv!5572 (array!17330) Bool)

(assert (=> b!4325430 (= e!2691281 (and tp!1327513 tp!1327508 tp!1327510 (array_inv!5571 (_keys!5099 (v!42866 (underlying!9775 (v!42867 (underlying!9776 thiss!42308)))))) (array_inv!5572 (_values!5074 (v!42866 (underlying!9775 (v!42867 (underlying!9776 thiss!42308)))))) e!2691289))))

(declare-fun b!4325431 () Bool)

(declare-fun e!2691285 () Bool)

(declare-fun e!2691284 () Bool)

(assert (=> b!4325431 (= e!2691285 e!2691284)))

(declare-fun res!1772620 () Bool)

(assert (=> b!4325431 (=> (not res!1772620) (not e!2691284))))

(declare-fun contains!10502 (MutableMap!4679 K!9679) Bool)

(assert (=> b!4325431 (= res!1772620 (not (contains!10502 thiss!42308 key!2048)))))

(assert (=> b!4325431 (= lt!1542733 (map!10461 (v!42867 (underlying!9776 thiss!42308))))))

(assert (=> b!4325431 (= lt!1542735 (map!10460 thiss!42308))))

(declare-fun res!1772616 () Bool)

(assert (=> start!416560 (=> (not res!1772616) (not e!2691285))))

(assert (=> start!416560 (= res!1772616 ((_ is HashMap!4679) thiss!42308))))

(assert (=> start!416560 e!2691285))

(declare-fun e!2691282 () Bool)

(assert (=> start!416560 e!2691282))

(declare-fun tp_is_empty!24189 () Bool)

(assert (=> start!416560 tp_is_empty!24189))

(declare-fun tp_is_empty!24191 () Bool)

(assert (=> start!416560 tp_is_empty!24191))

(declare-fun b!4325432 () Bool)

(declare-fun Unit!67980 () Unit!67978)

(assert (=> b!4325432 (= e!2691288 Unit!67980)))

(declare-fun mapIsEmpty!21273 () Bool)

(assert (=> mapIsEmpty!21273 mapRes!21273))

(declare-fun b!4325433 () Bool)

(declare-fun e!2691291 () List!48547)

(declare-fun apply!11171 (MutLongMap!4773 (_ BitVec 64)) List!48547)

(assert (=> b!4325433 (= e!2691291 (apply!11171 (v!42867 (underlying!9776 thiss!42308)) lt!1542719))))

(declare-fun b!4325434 () Bool)

(assert (=> b!4325434 (= e!2691291 Nil!48423)))

(declare-fun b!4325435 () Bool)

(assert (=> b!4325435 (= e!2691284 e!2691290)))

(declare-fun res!1772617 () Bool)

(assert (=> b!4325435 (=> (not res!1772617) (not e!2691290))))

(assert (=> b!4325435 (= res!1772617 (_1!26948 lt!1542732))))

(declare-fun update!552 (MutLongMap!4773 (_ BitVec 64) List!48547) tuple2!47320)

(assert (=> b!4325435 (= lt!1542732 (update!552 (v!42867 (underlying!9776 thiss!42308)) lt!1542719 lt!1542718))))

(assert (=> b!4325435 (= lt!1542718 (Cons!48423 lt!1542728 lt!1542722))))

(assert (=> b!4325435 (= lt!1542728 (tuple2!47317 key!2048 v!9179))))

(assert (=> b!4325435 (= lt!1542722 e!2691291)))

(declare-fun c!735892 () Bool)

(declare-fun contains!10503 (MutLongMap!4773 (_ BitVec 64)) Bool)

(assert (=> b!4325435 (= c!735892 (contains!10503 (v!42867 (underlying!9776 thiss!42308)) lt!1542719))))

(declare-fun hash!1232 (Hashable!4689 K!9679) (_ BitVec 64))

(assert (=> b!4325435 (= lt!1542719 (hash!1232 (hashF!6995 thiss!42308) key!2048))))

(declare-fun b!4325436 () Bool)

(declare-fun lt!1542734 () Unit!67978)

(assert (=> b!4325436 (= e!2691288 lt!1542734)))

(declare-fun lt!1542727 () Unit!67978)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!247 (List!48548 (_ BitVec 64) List!48547 Hashable!4689) Unit!67978)

(assert (=> b!4325436 (= lt!1542727 (lemmaInLongMapAllKeySameHashThenForTuple!247 (toList!2592 lt!1542733) lt!1542719 lt!1542722 (hashF!6995 thiss!42308)))))

(declare-fun allKeysSameHash!262 (List!48547 (_ BitVec 64) Hashable!4689) Bool)

(assert (=> b!4325436 (allKeysSameHash!262 lt!1542722 lt!1542719 (hashF!6995 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!238 (List!48547 K!9679 (_ BitVec 64) Hashable!4689) Unit!67978)

(assert (=> b!4325436 (= lt!1542734 (lemmaRemovePairForKeyPreservesHash!238 lt!1542722 key!2048 lt!1542719 (hashF!6995 thiss!42308)))))

(declare-fun removePairForKey!285 (List!48547 K!9679) List!48547)

(assert (=> b!4325436 (allKeysSameHash!262 (removePairForKey!285 lt!1542722 key!2048) lt!1542719 (hashF!6995 thiss!42308))))

(declare-fun b!4325437 () Bool)

(declare-fun res!1772615 () Bool)

(assert (=> b!4325437 (=> (not res!1772615) (not e!2691285))))

(declare-fun valid!3789 (MutableMap!4679) Bool)

(assert (=> b!4325437 (= res!1772615 (valid!3789 thiss!42308))))

(assert (=> b!4325438 (= e!2691282 (and e!2691279 tp!1327511))))

(declare-fun b!4325439 () Bool)

(declare-fun tp!1327509 () Bool)

(assert (=> b!4325439 (= e!2691289 (and tp!1327509 mapRes!21273))))

(declare-fun condMapEmpty!21273 () Bool)

(declare-fun mapDefault!21273 () List!48547)

(assert (=> b!4325439 (= condMapEmpty!21273 (= (arr!7732 (_values!5074 (v!42866 (underlying!9775 (v!42867 (underlying!9776 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48547)) mapDefault!21273)))))

(assert (= (and start!416560 res!1772616) b!4325437))

(assert (= (and b!4325437 res!1772615) b!4325431))

(assert (= (and b!4325431 res!1772620) b!4325435))

(assert (= (and b!4325435 c!735892) b!4325433))

(assert (= (and b!4325435 (not c!735892)) b!4325434))

(assert (= (and b!4325435 res!1772617) b!4325429))

(assert (= (and b!4325429 c!735893) b!4325436))

(assert (= (and b!4325429 (not c!735893)) b!4325432))

(assert (= (and b!4325429 res!1772618) b!4325426))

(assert (= (and b!4325429 res!1772619) b!4325428))

(assert (= (and b!4325439 condMapEmpty!21273) mapIsEmpty!21273))

(assert (= (and b!4325439 (not condMapEmpty!21273)) mapNonEmpty!21273))

(assert (= b!4325430 b!4325439))

(assert (= b!4325424 b!4325430))

(assert (= b!4325425 b!4325424))

(assert (= (and b!4325427 ((_ is LongMap!4773) (v!42867 (underlying!9776 thiss!42308)))) b!4325425))

(assert (= b!4325438 b!4325427))

(assert (= (and start!416560 ((_ is HashMap!4679) thiss!42308)) b!4325438))

(declare-fun m!4920365 () Bool)

(assert (=> b!4325436 m!4920365))

(declare-fun m!4920367 () Bool)

(assert (=> b!4325436 m!4920367))

(declare-fun m!4920369 () Bool)

(assert (=> b!4325436 m!4920369))

(assert (=> b!4325436 m!4920367))

(declare-fun m!4920371 () Bool)

(assert (=> b!4325436 m!4920371))

(declare-fun m!4920373 () Bool)

(assert (=> b!4325436 m!4920373))

(declare-fun m!4920375 () Bool)

(assert (=> b!4325430 m!4920375))

(declare-fun m!4920377 () Bool)

(assert (=> b!4325430 m!4920377))

(declare-fun m!4920379 () Bool)

(assert (=> b!4325426 m!4920379))

(declare-fun m!4920381 () Bool)

(assert (=> b!4325428 m!4920381))

(declare-fun m!4920383 () Bool)

(assert (=> b!4325431 m!4920383))

(declare-fun m!4920385 () Bool)

(assert (=> b!4325431 m!4920385))

(declare-fun m!4920387 () Bool)

(assert (=> b!4325431 m!4920387))

(declare-fun m!4920389 () Bool)

(assert (=> mapNonEmpty!21273 m!4920389))

(declare-fun m!4920391 () Bool)

(assert (=> b!4325433 m!4920391))

(declare-fun m!4920393 () Bool)

(assert (=> b!4325435 m!4920393))

(declare-fun m!4920395 () Bool)

(assert (=> b!4325435 m!4920395))

(declare-fun m!4920397 () Bool)

(assert (=> b!4325435 m!4920397))

(declare-fun m!4920399 () Bool)

(assert (=> b!4325437 m!4920399))

(declare-fun m!4920401 () Bool)

(assert (=> b!4325429 m!4920401))

(declare-fun m!4920403 () Bool)

(assert (=> b!4325429 m!4920403))

(declare-fun m!4920405 () Bool)

(assert (=> b!4325429 m!4920405))

(declare-fun m!4920407 () Bool)

(assert (=> b!4325429 m!4920407))

(declare-fun m!4920409 () Bool)

(assert (=> b!4325429 m!4920409))

(declare-fun m!4920411 () Bool)

(assert (=> b!4325429 m!4920411))

(declare-fun m!4920413 () Bool)

(assert (=> b!4325429 m!4920413))

(declare-fun m!4920415 () Bool)

(assert (=> b!4325429 m!4920415))

(assert (=> b!4325429 m!4920413))

(declare-fun m!4920417 () Bool)

(assert (=> b!4325429 m!4920417))

(declare-fun m!4920419 () Bool)

(assert (=> b!4325429 m!4920419))

(declare-fun m!4920421 () Bool)

(assert (=> b!4325429 m!4920421))

(declare-fun m!4920423 () Bool)

(assert (=> b!4325429 m!4920423))

(assert (=> b!4325429 m!4920403))

(assert (=> b!4325429 m!4920415))

(declare-fun m!4920425 () Bool)

(assert (=> b!4325429 m!4920425))

(declare-fun m!4920427 () Bool)

(assert (=> b!4325429 m!4920427))

(declare-fun m!4920429 () Bool)

(assert (=> b!4325429 m!4920429))

(declare-fun m!4920431 () Bool)

(assert (=> b!4325429 m!4920431))

(declare-fun m!4920433 () Bool)

(assert (=> b!4325429 m!4920433))

(check-sat (not b!4325436) (not b!4325433) b_and!340635 tp_is_empty!24189 (not b_next!129757) b_and!340633 (not mapNonEmpty!21273) (not b!4325426) (not b!4325429) (not b!4325439) tp_is_empty!24191 (not b!4325431) (not b!4325435) (not b!4325437) (not b_next!129755) (not b!4325428) (not b!4325430))
(check-sat b_and!340633 b_and!340635 (not b_next!129757) (not b_next!129755))

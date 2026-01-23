; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414902 () Bool)

(assert start!414902)

(declare-fun b!4314347 () Bool)

(declare-fun b_free!128755 () Bool)

(declare-fun b_next!129459 () Bool)

(assert (=> b!4314347 (= b_free!128755 (not b_next!129459))))

(declare-fun tp!1325512 () Bool)

(declare-fun b_and!340225 () Bool)

(assert (=> b!4314347 (= tp!1325512 b_and!340225)))

(declare-fun b!4314346 () Bool)

(declare-fun b_free!128757 () Bool)

(declare-fun b_next!129461 () Bool)

(assert (=> b!4314346 (= b_free!128757 (not b_next!129461))))

(declare-fun tp!1325508 () Bool)

(declare-fun b_and!340227 () Bool)

(assert (=> b!4314346 (= tp!1325508 b_and!340227)))

(declare-fun b!4314338 () Bool)

(declare-fun res!1768316 () Bool)

(declare-fun e!2683585 () Bool)

(assert (=> b!4314338 (=> (not res!1768316) (not e!2683585))))

(declare-datatypes ((V!9696 0))(
  ( (V!9697 (val!15853 Int)) )
))
(declare-datatypes ((K!9494 0))(
  ( (K!9495 (val!15854 Int)) )
))
(declare-datatypes ((tuple2!46862 0))(
  ( (tuple2!46863 (_1!26713 K!9494) (_2!26713 V!9696)) )
))
(declare-datatypes ((List!48395 0))(
  ( (Nil!48271) (Cons!48271 (h!53719 tuple2!46862) (t!355232 List!48395)) )
))
(declare-datatypes ((array!16984 0))(
  ( (array!16985 (arr!7583 (Array (_ BitVec 32) (_ BitVec 64))) (size!35622 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4615 0))(
  ( (HashableExt!4614 (__x!30122 Int)) )
))
(declare-datatypes ((array!16986 0))(
  ( (array!16987 (arr!7584 (Array (_ BitVec 32) List!48395)) (size!35623 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9398 0))(
  ( (LongMapFixedSize!9399 (defaultEntry!5084 Int) (mask!13277 (_ BitVec 32)) (extraKeys!4948 (_ BitVec 32)) (zeroValue!4958 List!48395) (minValue!4958 List!48395) (_size!9441 (_ BitVec 32)) (_keys!4999 array!16984) (_values!4980 array!16986) (_vacant!4760 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18605 0))(
  ( (Cell!18606 (v!42510 LongMapFixedSize!9398)) )
))
(declare-datatypes ((MutLongMap!4699 0))(
  ( (LongMap!4699 (underlying!9627 Cell!18605)) (MutLongMapExt!4698 (__x!30123 Int)) )
))
(declare-datatypes ((Cell!18607 0))(
  ( (Cell!18608 (v!42511 MutLongMap!4699)) )
))
(declare-datatypes ((MutableMap!4605 0))(
  ( (MutableMapExt!4604 (__x!30124 Int)) (HashMap!4605 (underlying!9628 Cell!18607) (hashF!6796 Hashable!4615) (_size!9442 (_ BitVec 32)) (defaultValue!4776 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4605)

(declare-fun valid!3698 (MutableMap!4605) Bool)

(assert (=> b!4314338 (= res!1768316 (valid!3698 thiss!42308))))

(declare-fun b!4314339 () Bool)

(declare-fun res!1768315 () Bool)

(declare-fun e!2683582 () Bool)

(assert (=> b!4314339 (=> res!1768315 e!2683582)))

(declare-datatypes ((tuple2!46864 0))(
  ( (tuple2!46865 (_1!26714 (_ BitVec 64)) (_2!26714 List!48395)) )
))
(declare-datatypes ((List!48396 0))(
  ( (Nil!48272) (Cons!48272 (h!53720 tuple2!46864) (t!355233 List!48396)) )
))
(declare-datatypes ((ListLongMap!1081 0))(
  ( (ListLongMap!1082 (toList!2467 List!48396)) )
))
(declare-fun lt!1533884 () ListLongMap!1081)

(declare-fun allKeysSameHashInMap!360 (ListLongMap!1081 Hashable!4615) Bool)

(assert (=> b!4314339 (= res!1768315 (not (allKeysSameHashInMap!360 lt!1533884 (hashF!6796 thiss!42308))))))

(declare-fun mapIsEmpty!20971 () Bool)

(declare-fun mapRes!20971 () Bool)

(assert (=> mapIsEmpty!20971 mapRes!20971))

(declare-fun b!4314340 () Bool)

(declare-fun e!2683587 () Bool)

(declare-fun e!2683588 () Bool)

(assert (=> b!4314340 (= e!2683587 e!2683588)))

(declare-fun b!4314341 () Bool)

(declare-fun e!2683579 () Bool)

(declare-fun e!2683580 () Bool)

(declare-fun lt!1533873 () MutLongMap!4699)

(get-info :version)

(assert (=> b!4314341 (= e!2683579 (and e!2683580 ((_ is LongMap!4699) lt!1533873)))))

(assert (=> b!4314341 (= lt!1533873 (v!42511 (underlying!9628 thiss!42308)))))

(declare-fun b!4314342 () Bool)

(declare-fun e!2683590 () Bool)

(declare-fun lt!1533876 () List!48395)

(declare-fun noDuplicateKeys!240 (List!48395) Bool)

(assert (=> b!4314342 (= e!2683590 (noDuplicateKeys!240 lt!1533876))))

(declare-fun b!4314343 () Bool)

(declare-fun res!1768319 () Bool)

(assert (=> b!4314343 (=> res!1768319 e!2683582)))

(declare-fun lt!1533889 () (_ BitVec 64))

(declare-fun contains!10267 (ListLongMap!1081 (_ BitVec 64)) Bool)

(assert (=> b!4314343 (= res!1768319 (not (contains!10267 lt!1533884 lt!1533889)))))

(declare-fun b!4314344 () Bool)

(declare-fun res!1768314 () Bool)

(assert (=> b!4314344 (=> (not res!1768314) (not e!2683590))))

(declare-fun lt!1533877 () List!48395)

(declare-fun key!2048 () K!9494)

(declare-fun containsKey!354 (List!48395 K!9494) Bool)

(assert (=> b!4314344 (= res!1768314 (not (containsKey!354 lt!1533877 key!2048)))))

(declare-fun b!4314345 () Bool)

(declare-fun e!2683581 () Bool)

(declare-fun tp!1325507 () Bool)

(assert (=> b!4314345 (= e!2683581 (and tp!1325507 mapRes!20971))))

(declare-fun condMapEmpty!20971 () Bool)

(declare-fun mapDefault!20971 () List!48395)

(assert (=> b!4314345 (= condMapEmpty!20971 (= (arr!7584 (_values!4980 (v!42510 (underlying!9627 (v!42511 (underlying!9628 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48395)) mapDefault!20971)))))

(declare-fun e!2683589 () Bool)

(assert (=> b!4314346 (= e!2683589 (and e!2683579 tp!1325508))))

(declare-fun res!1768310 () Bool)

(assert (=> start!414902 (=> (not res!1768310) (not e!2683585))))

(assert (=> start!414902 (= res!1768310 ((_ is HashMap!4605) thiss!42308))))

(assert (=> start!414902 e!2683585))

(assert (=> start!414902 e!2683589))

(declare-fun tp_is_empty!23901 () Bool)

(assert (=> start!414902 tp_is_empty!23901))

(declare-fun tp_is_empty!23903 () Bool)

(assert (=> start!414902 tp_is_empty!23903))

(declare-fun mapNonEmpty!20971 () Bool)

(declare-fun tp!1325511 () Bool)

(declare-fun tp!1325510 () Bool)

(assert (=> mapNonEmpty!20971 (= mapRes!20971 (and tp!1325511 tp!1325510))))

(declare-fun mapRest!20971 () (Array (_ BitVec 32) List!48395))

(declare-fun mapKey!20971 () (_ BitVec 32))

(declare-fun mapValue!20971 () List!48395)

(assert (=> mapNonEmpty!20971 (= (arr!7584 (_values!4980 (v!42510 (underlying!9627 (v!42511 (underlying!9628 thiss!42308)))))) (store mapRest!20971 mapKey!20971 mapValue!20971))))

(declare-fun tp!1325513 () Bool)

(declare-fun tp!1325509 () Bool)

(declare-fun array_inv!5451 (array!16984) Bool)

(declare-fun array_inv!5452 (array!16986) Bool)

(assert (=> b!4314347 (= e!2683588 (and tp!1325512 tp!1325509 tp!1325513 (array_inv!5451 (_keys!4999 (v!42510 (underlying!9627 (v!42511 (underlying!9628 thiss!42308)))))) (array_inv!5452 (_values!4980 (v!42510 (underlying!9627 (v!42511 (underlying!9628 thiss!42308)))))) e!2683581))))

(declare-fun b!4314348 () Bool)

(assert (=> b!4314348 (= e!2683580 e!2683587)))

(declare-fun b!4314349 () Bool)

(assert (=> b!4314349 (= e!2683582 true)))

(declare-fun lt!1533882 () List!48395)

(declare-fun lt!1533888 () List!48395)

(declare-fun removePairForKey!238 (List!48395 K!9494) List!48395)

(assert (=> b!4314349 (= lt!1533882 (removePairForKey!238 lt!1533888 key!2048))))

(declare-fun lt!1533874 () tuple2!46864)

(declare-datatypes ((Unit!67464 0))(
  ( (Unit!67465) )
))
(declare-fun lt!1533881 () Unit!67464)

(declare-fun lambda!133297 () Int)

(declare-fun forallContained!1513 (List!48396 Int tuple2!46864) Unit!67464)

(assert (=> b!4314349 (= lt!1533881 (forallContained!1513 (toList!2467 lt!1533884) lambda!133297 lt!1533874))))

(declare-fun contains!10268 (List!48396 tuple2!46864) Bool)

(assert (=> b!4314349 (contains!10268 (toList!2467 lt!1533884) lt!1533874)))

(assert (=> b!4314349 (= lt!1533874 (tuple2!46865 lt!1533889 lt!1533888))))

(declare-fun lt!1533886 () Unit!67464)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!157 (List!48396 (_ BitVec 64) List!48395) Unit!67464)

(assert (=> b!4314349 (= lt!1533886 (lemmaGetValueByKeyImpliesContainsTuple!157 (toList!2467 lt!1533884) lt!1533889 lt!1533888))))

(declare-fun apply!11067 (ListLongMap!1081 (_ BitVec 64)) List!48395)

(assert (=> b!4314349 (= lt!1533888 (apply!11067 lt!1533884 lt!1533889))))

(declare-fun b!4314350 () Bool)

(declare-fun e!2683584 () Bool)

(declare-fun lt!1533885 () ListLongMap!1081)

(assert (=> b!4314350 (= e!2683584 (allKeysSameHashInMap!360 lt!1533885 (hashF!6796 thiss!42308)))))

(declare-fun b!4314351 () Bool)

(declare-fun res!1768311 () Bool)

(assert (=> b!4314351 (=> res!1768311 e!2683582)))

(declare-fun allKeysSameHash!213 (List!48395 (_ BitVec 64) Hashable!4615) Bool)

(assert (=> b!4314351 (= res!1768311 (not (allKeysSameHash!213 lt!1533876 lt!1533889 (hashF!6796 thiss!42308))))))

(declare-fun b!4314352 () Bool)

(declare-fun e!2683591 () Bool)

(assert (=> b!4314352 (= e!2683591 (not e!2683582))))

(declare-fun res!1768317 () Bool)

(assert (=> b!4314352 (=> res!1768317 e!2683582)))

(declare-fun forall!8767 (List!48396 Int) Bool)

(assert (=> b!4314352 (= res!1768317 (not (forall!8767 (toList!2467 lt!1533884) lambda!133297)))))

(assert (=> b!4314352 e!2683584))

(declare-fun res!1768313 () Bool)

(assert (=> b!4314352 (=> (not res!1768313) (not e!2683584))))

(assert (=> b!4314352 (= res!1768313 (forall!8767 (toList!2467 lt!1533885) lambda!133297))))

(declare-fun +!290 (ListLongMap!1081 tuple2!46864) ListLongMap!1081)

(assert (=> b!4314352 (= lt!1533885 (+!290 lt!1533884 (tuple2!46865 lt!1533889 lt!1533876)))))

(declare-fun lt!1533883 () Unit!67464)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!162 (ListLongMap!1081 (_ BitVec 64) List!48395 Hashable!4615) Unit!67464)

(assert (=> b!4314352 (= lt!1533883 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!162 lt!1533884 lt!1533889 lt!1533876 (hashF!6796 thiss!42308)))))

(assert (=> b!4314352 e!2683590))

(declare-fun res!1768309 () Bool)

(assert (=> b!4314352 (=> (not res!1768309) (not e!2683590))))

(assert (=> b!4314352 (= res!1768309 (noDuplicateKeys!240 lt!1533877))))

(declare-fun lt!1533887 () Unit!67464)

(declare-fun lt!1533878 () List!48395)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!188 (List!48395 K!9494) Unit!67464)

(assert (=> b!4314352 (= lt!1533887 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!188 lt!1533878 key!2048))))

(assert (=> b!4314352 (allKeysSameHash!213 lt!1533877 lt!1533889 (hashF!6796 thiss!42308))))

(declare-fun lt!1533875 () Unit!67464)

(declare-fun lemmaRemovePairForKeyPreservesHash!193 (List!48395 K!9494 (_ BitVec 64) Hashable!4615) Unit!67464)

(assert (=> b!4314352 (= lt!1533875 (lemmaRemovePairForKeyPreservesHash!193 lt!1533878 key!2048 lt!1533889 (hashF!6796 thiss!42308)))))

(assert (=> b!4314352 (allKeysSameHash!213 lt!1533878 lt!1533889 (hashF!6796 thiss!42308))))

(declare-fun lt!1533879 () Unit!67464)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!200 (List!48396 (_ BitVec 64) List!48395 Hashable!4615) Unit!67464)

(assert (=> b!4314352 (= lt!1533879 (lemmaInLongMapAllKeySameHashThenForTuple!200 (toList!2467 lt!1533884) lt!1533889 lt!1533878 (hashF!6796 thiss!42308)))))

(declare-fun b!4314353 () Bool)

(declare-fun e!2683583 () Bool)

(assert (=> b!4314353 (= e!2683583 e!2683591)))

(declare-fun res!1768318 () Bool)

(assert (=> b!4314353 (=> (not res!1768318) (not e!2683591))))

(declare-datatypes ((tuple2!46866 0))(
  ( (tuple2!46867 (_1!26715 Bool) (_2!26715 MutLongMap!4699)) )
))
(declare-fun update!475 (MutLongMap!4699 (_ BitVec 64) List!48395) tuple2!46866)

(assert (=> b!4314353 (= res!1768318 (_1!26715 (update!475 (v!42511 (underlying!9628 thiss!42308)) lt!1533889 lt!1533876)))))

(declare-fun v!9179 () V!9696)

(assert (=> b!4314353 (= lt!1533876 (Cons!48271 (tuple2!46863 key!2048 v!9179) lt!1533877))))

(assert (=> b!4314353 (= lt!1533877 (removePairForKey!238 lt!1533878 key!2048))))

(declare-fun apply!11068 (MutLongMap!4699 (_ BitVec 64)) List!48395)

(assert (=> b!4314353 (= lt!1533878 (apply!11068 (v!42511 (underlying!9628 thiss!42308)) lt!1533889))))

(declare-fun hash!1081 (Hashable!4615 K!9494) (_ BitVec 64))

(assert (=> b!4314353 (= lt!1533889 (hash!1081 (hashF!6796 thiss!42308) key!2048))))

(declare-fun b!4314354 () Bool)

(declare-fun res!1768320 () Bool)

(assert (=> b!4314354 (=> res!1768320 e!2683582)))

(declare-datatypes ((ListMap!1747 0))(
  ( (ListMap!1748 (toList!2468 List!48395)) )
))
(declare-fun contains!10269 (ListMap!1747 K!9494) Bool)

(declare-fun extractMap!344 (List!48396) ListMap!1747)

(assert (=> b!4314354 (= res!1768320 (not (contains!10269 (extractMap!344 (toList!2467 lt!1533884)) key!2048)))))

(declare-fun b!4314355 () Bool)

(assert (=> b!4314355 (= e!2683585 e!2683583)))

(declare-fun res!1768312 () Bool)

(assert (=> b!4314355 (=> (not res!1768312) (not e!2683583))))

(declare-fun contains!10270 (MutableMap!4605 K!9494) Bool)

(assert (=> b!4314355 (= res!1768312 (contains!10270 thiss!42308 key!2048))))

(declare-fun map!10278 (MutLongMap!4699) ListLongMap!1081)

(assert (=> b!4314355 (= lt!1533884 (map!10278 (v!42511 (underlying!9628 thiss!42308))))))

(declare-fun lt!1533880 () ListMap!1747)

(declare-fun map!10279 (MutableMap!4605) ListMap!1747)

(assert (=> b!4314355 (= lt!1533880 (map!10279 thiss!42308))))

(assert (= (and start!414902 res!1768310) b!4314338))

(assert (= (and b!4314338 res!1768316) b!4314355))

(assert (= (and b!4314355 res!1768312) b!4314353))

(assert (= (and b!4314353 res!1768318) b!4314352))

(assert (= (and b!4314352 res!1768309) b!4314344))

(assert (= (and b!4314344 res!1768314) b!4314342))

(assert (= (and b!4314352 res!1768313) b!4314350))

(assert (= (and b!4314352 (not res!1768317)) b!4314339))

(assert (= (and b!4314339 (not res!1768315)) b!4314351))

(assert (= (and b!4314351 (not res!1768311)) b!4314354))

(assert (= (and b!4314354 (not res!1768320)) b!4314343))

(assert (= (and b!4314343 (not res!1768319)) b!4314349))

(assert (= (and b!4314345 condMapEmpty!20971) mapIsEmpty!20971))

(assert (= (and b!4314345 (not condMapEmpty!20971)) mapNonEmpty!20971))

(assert (= b!4314347 b!4314345))

(assert (= b!4314340 b!4314347))

(assert (= b!4314348 b!4314340))

(assert (= (and b!4314341 ((_ is LongMap!4699) (v!42511 (underlying!9628 thiss!42308)))) b!4314348))

(assert (= b!4314346 b!4314341))

(assert (= (and start!414902 ((_ is HashMap!4605) thiss!42308)) b!4314346))

(declare-fun m!4907553 () Bool)

(assert (=> b!4314353 m!4907553))

(declare-fun m!4907555 () Bool)

(assert (=> b!4314353 m!4907555))

(declare-fun m!4907557 () Bool)

(assert (=> b!4314353 m!4907557))

(declare-fun m!4907559 () Bool)

(assert (=> b!4314353 m!4907559))

(declare-fun m!4907561 () Bool)

(assert (=> b!4314347 m!4907561))

(declare-fun m!4907563 () Bool)

(assert (=> b!4314347 m!4907563))

(declare-fun m!4907565 () Bool)

(assert (=> b!4314342 m!4907565))

(declare-fun m!4907567 () Bool)

(assert (=> b!4314351 m!4907567))

(declare-fun m!4907569 () Bool)

(assert (=> b!4314339 m!4907569))

(declare-fun m!4907571 () Bool)

(assert (=> b!4314349 m!4907571))

(declare-fun m!4907573 () Bool)

(assert (=> b!4314349 m!4907573))

(declare-fun m!4907575 () Bool)

(assert (=> b!4314349 m!4907575))

(declare-fun m!4907577 () Bool)

(assert (=> b!4314349 m!4907577))

(declare-fun m!4907579 () Bool)

(assert (=> b!4314349 m!4907579))

(declare-fun m!4907581 () Bool)

(assert (=> b!4314343 m!4907581))

(declare-fun m!4907583 () Bool)

(assert (=> b!4314355 m!4907583))

(declare-fun m!4907585 () Bool)

(assert (=> b!4314355 m!4907585))

(declare-fun m!4907587 () Bool)

(assert (=> b!4314355 m!4907587))

(declare-fun m!4907589 () Bool)

(assert (=> b!4314338 m!4907589))

(declare-fun m!4907591 () Bool)

(assert (=> b!4314354 m!4907591))

(assert (=> b!4314354 m!4907591))

(declare-fun m!4907593 () Bool)

(assert (=> b!4314354 m!4907593))

(declare-fun m!4907595 () Bool)

(assert (=> b!4314352 m!4907595))

(declare-fun m!4907597 () Bool)

(assert (=> b!4314352 m!4907597))

(declare-fun m!4907599 () Bool)

(assert (=> b!4314352 m!4907599))

(declare-fun m!4907601 () Bool)

(assert (=> b!4314352 m!4907601))

(declare-fun m!4907603 () Bool)

(assert (=> b!4314352 m!4907603))

(declare-fun m!4907605 () Bool)

(assert (=> b!4314352 m!4907605))

(declare-fun m!4907607 () Bool)

(assert (=> b!4314352 m!4907607))

(declare-fun m!4907609 () Bool)

(assert (=> b!4314352 m!4907609))

(declare-fun m!4907611 () Bool)

(assert (=> b!4314352 m!4907611))

(declare-fun m!4907613 () Bool)

(assert (=> b!4314352 m!4907613))

(declare-fun m!4907615 () Bool)

(assert (=> mapNonEmpty!20971 m!4907615))

(declare-fun m!4907617 () Bool)

(assert (=> b!4314344 m!4907617))

(declare-fun m!4907619 () Bool)

(assert (=> b!4314350 m!4907619))

(check-sat (not b!4314349) (not b!4314354) (not b!4314344) tp_is_empty!23903 b_and!340225 (not b!4314338) (not b_next!129459) (not b!4314350) b_and!340227 (not b!4314345) (not b_next!129461) (not b!4314352) (not b!4314347) (not b!4314339) (not b!4314351) (not b!4314355) (not b!4314343) tp_is_empty!23901 (not b!4314353) (not mapNonEmpty!20971) (not b!4314342))
(check-sat b_and!340225 b_and!340227 (not b_next!129461) (not b_next!129459))

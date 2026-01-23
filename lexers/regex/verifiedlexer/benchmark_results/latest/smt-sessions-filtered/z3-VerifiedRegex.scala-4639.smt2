; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242564 () Bool)

(assert start!242564)

(declare-fun b!2484357 () Bool)

(declare-fun b_free!72449 () Bool)

(declare-fun b_next!73153 () Bool)

(assert (=> b!2484357 (= b_free!72449 (not b_next!73153))))

(declare-fun tp!795337 () Bool)

(declare-fun b_and!188719 () Bool)

(assert (=> b!2484357 (= tp!795337 b_and!188719)))

(declare-fun b!2484355 () Bool)

(declare-fun b_free!72451 () Bool)

(declare-fun b_next!73155 () Bool)

(assert (=> b!2484355 (= b_free!72451 (not b_next!73155))))

(declare-fun tp!795340 () Bool)

(declare-fun b_and!188721 () Bool)

(assert (=> b!2484355 (= tp!795340 b_and!188721)))

(declare-fun b!2484352 () Bool)

(declare-fun e!1577311 () Bool)

(declare-fun e!1577307 () Bool)

(assert (=> b!2484352 (= e!1577311 e!1577307)))

(declare-fun b!2484353 () Bool)

(declare-fun res!1051530 () Bool)

(declare-fun e!1577310 () Bool)

(assert (=> b!2484353 (=> (not res!1051530) (not e!1577310))))

(declare-datatypes ((Hashable!3308 0))(
  ( (HashableExt!3307 (__x!19100 Int)) )
))
(declare-datatypes ((K!5580 0))(
  ( (K!5581 (val!8939 Int)) )
))
(declare-datatypes ((V!5782 0))(
  ( (V!5783 (val!8940 Int)) )
))
(declare-datatypes ((tuple2!29036 0))(
  ( (tuple2!29037 (_1!17060 K!5580) (_2!17060 V!5782)) )
))
(declare-datatypes ((List!29270 0))(
  ( (Nil!29170) (Cons!29170 (h!34580 tuple2!29036) (t!210945 List!29270)) )
))
(declare-datatypes ((array!12071 0))(
  ( (array!12072 (arr!5386 (Array (_ BitVec 32) List!29270)) (size!22805 (_ BitVec 32))) )
))
(declare-datatypes ((array!12073 0))(
  ( (array!12074 (arr!5387 (Array (_ BitVec 32) (_ BitVec 64))) (size!22806 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6796 0))(
  ( (LongMapFixedSize!6797 (defaultEntry!3772 Int) (mask!8586 (_ BitVec 32)) (extraKeys!3646 (_ BitVec 32)) (zeroValue!3656 List!29270) (minValue!3656 List!29270) (_size!6843 (_ BitVec 32)) (_keys!3695 array!12073) (_values!3678 array!12071) (_vacant!3459 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13409 0))(
  ( (Cell!13410 (v!31570 LongMapFixedSize!6796)) )
))
(declare-datatypes ((MutLongMap!3398 0))(
  ( (LongMap!3398 (underlying!7003 Cell!13409)) (MutLongMapExt!3397 (__x!19101 Int)) )
))
(declare-datatypes ((Cell!13411 0))(
  ( (Cell!13412 (v!31571 MutLongMap!3398)) )
))
(declare-datatypes ((MutableMap!3308 0))(
  ( (MutableMapExt!3307 (__x!19102 Int)) (HashMap!3308 (underlying!7004 Cell!13411) (hashF!5284 Hashable!3308) (_size!6844 (_ BitVec 32)) (defaultValue!3470 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3308)

(declare-fun key!2246 () K!5580)

(declare-fun contains!5168 (MutableMap!3308 K!5580) Bool)

(assert (=> b!2484353 (= res!1051530 (contains!5168 thiss!42540 key!2246))))

(declare-fun b!2484354 () Bool)

(declare-fun e!1577308 () Bool)

(assert (=> b!2484354 (= e!1577310 (not e!1577308))))

(declare-fun res!1051531 () Bool)

(assert (=> b!2484354 (=> res!1051531 e!1577308)))

(declare-datatypes ((tuple2!29038 0))(
  ( (tuple2!29039 (_1!17061 Bool) (_2!17061 MutLongMap!3398)) )
))
(declare-fun lt!890480 () tuple2!29038)

(assert (=> b!2484354 (= res!1051531 (not (_1!17061 lt!890480)))))

(declare-fun lt!890476 () List!29270)

(declare-fun noDuplicateKeys!101 (List!29270) Bool)

(assert (=> b!2484354 (noDuplicateKeys!101 lt!890476)))

(declare-datatypes ((Unit!42752 0))(
  ( (Unit!42753) )
))
(declare-fun lt!890473 () Unit!42752)

(declare-fun lt!890479 () List!29270)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!81 (List!29270 K!5580) Unit!42752)

(assert (=> b!2484354 (= lt!890473 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!81 lt!890479 key!2246))))

(declare-fun lt!890478 () Cell!13411)

(declare-datatypes ((tuple2!29040 0))(
  ( (tuple2!29041 (_1!17062 Unit!42752) (_2!17062 MutableMap!3308)) )
))
(declare-fun lt!890475 () tuple2!29040)

(declare-fun Unit!42754 () Unit!42752)

(declare-fun Unit!42755 () Unit!42752)

(assert (=> b!2484354 (= lt!890475 (ite (_1!17061 lt!890480) (tuple2!29041 Unit!42754 (HashMap!3308 lt!890478 (hashF!5284 thiss!42540) (bvsub (_size!6844 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3470 thiss!42540))) (tuple2!29041 Unit!42755 (HashMap!3308 lt!890478 (hashF!5284 thiss!42540) (_size!6844 thiss!42540) (defaultValue!3470 thiss!42540)))))))

(assert (=> b!2484354 (= lt!890478 (Cell!13412 (_2!17061 lt!890480)))))

(declare-fun lt!890477 () (_ BitVec 64))

(declare-fun update!215 (MutLongMap!3398 (_ BitVec 64) List!29270) tuple2!29038)

(assert (=> b!2484354 (= lt!890480 (update!215 (v!31571 (underlying!7004 thiss!42540)) lt!890477 lt!890476))))

(declare-fun removePairForKey!93 (List!29270 K!5580) List!29270)

(assert (=> b!2484354 (= lt!890476 (removePairForKey!93 lt!890479 key!2246))))

(declare-datatypes ((ListMap!1111 0))(
  ( (ListMap!1112 (toList!1631 List!29270)) )
))
(declare-fun lt!890483 () ListMap!1111)

(declare-fun map!6272 (MutableMap!3308) ListMap!1111)

(assert (=> b!2484354 (= lt!890483 (map!6272 thiss!42540))))

(declare-datatypes ((tuple2!29042 0))(
  ( (tuple2!29043 (_1!17063 (_ BitVec 64)) (_2!17063 List!29270)) )
))
(declare-datatypes ((List!29271 0))(
  ( (Nil!29171) (Cons!29171 (h!34581 tuple2!29042) (t!210946 List!29271)) )
))
(declare-datatypes ((ListLongMap!581 0))(
  ( (ListLongMap!582 (toList!1632 List!29271)) )
))
(declare-fun lt!890484 () ListLongMap!581)

(declare-fun lambda!94262 () Int)

(declare-fun lt!890474 () Unit!42752)

(declare-fun forallContained!882 (List!29271 Int tuple2!29042) Unit!42752)

(assert (=> b!2484354 (= lt!890474 (forallContained!882 (toList!1632 lt!890484) lambda!94262 (tuple2!29043 lt!890477 lt!890479)))))

(declare-fun map!6273 (MutLongMap!3398) ListLongMap!581)

(assert (=> b!2484354 (= lt!890484 (map!6273 (v!31571 (underlying!7004 thiss!42540))))))

(declare-fun apply!6958 (MutLongMap!3398 (_ BitVec 64)) List!29270)

(assert (=> b!2484354 (= lt!890479 (apply!6958 (v!31571 (underlying!7004 thiss!42540)) lt!890477))))

(declare-fun hash!727 (Hashable!3308 K!5580) (_ BitVec 64))

(assert (=> b!2484354 (= lt!890477 (hash!727 (hashF!5284 thiss!42540) key!2246))))

(declare-fun e!1577305 () Bool)

(declare-fun e!1577304 () Bool)

(assert (=> b!2484355 (= e!1577305 (and e!1577304 tp!795340))))

(declare-fun res!1051528 () Bool)

(assert (=> start!242564 (=> (not res!1051528) (not e!1577310))))

(get-info :version)

(assert (=> start!242564 (= res!1051528 ((_ is HashMap!3308) thiss!42540))))

(assert (=> start!242564 e!1577310))

(assert (=> start!242564 e!1577305))

(declare-fun tp_is_empty!12341 () Bool)

(assert (=> start!242564 tp_is_empty!12341))

(declare-fun b!2484356 () Bool)

(declare-fun e!1577306 () Bool)

(declare-fun lt!890485 () MutLongMap!3398)

(assert (=> b!2484356 (= e!1577304 (and e!1577306 ((_ is LongMap!3398) lt!890485)))))

(assert (=> b!2484356 (= lt!890485 (v!31571 (underlying!7004 thiss!42540)))))

(declare-fun tp!795338 () Bool)

(declare-fun tp!795341 () Bool)

(declare-fun e!1577303 () Bool)

(declare-fun array_inv!3869 (array!12073) Bool)

(declare-fun array_inv!3870 (array!12071) Bool)

(assert (=> b!2484357 (= e!1577307 (and tp!795337 tp!795338 tp!795341 (array_inv!3869 (_keys!3695 (v!31570 (underlying!7003 (v!31571 (underlying!7004 thiss!42540)))))) (array_inv!3870 (_values!3678 (v!31570 (underlying!7003 (v!31571 (underlying!7004 thiss!42540)))))) e!1577303))))

(declare-fun b!2484358 () Bool)

(assert (=> b!2484358 (= e!1577308 ((_ is HashMap!3308) (_2!17062 lt!890475)))))

(declare-fun e!1577309 () Bool)

(assert (=> b!2484358 e!1577309))

(declare-fun res!1051529 () Bool)

(assert (=> b!2484358 (=> (not res!1051529) (not e!1577309))))

(declare-fun lt!890472 () ListLongMap!581)

(declare-fun forall!5987 (List!29271 Int) Bool)

(assert (=> b!2484358 (= res!1051529 (forall!5987 (toList!1632 lt!890472) lambda!94262))))

(declare-fun +!92 (ListLongMap!581 tuple2!29042) ListLongMap!581)

(assert (=> b!2484358 (= lt!890472 (+!92 lt!890484 (tuple2!29043 lt!890477 lt!890476)))))

(declare-fun lt!890486 () Unit!42752)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!55 (ListLongMap!581 (_ BitVec 64) List!29270 Hashable!3308) Unit!42752)

(assert (=> b!2484358 (= lt!890486 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!55 lt!890484 lt!890477 lt!890476 (hashF!5284 (_2!17062 lt!890475))))))

(declare-fun allKeysSameHash!75 (List!29270 (_ BitVec 64) Hashable!3308) Bool)

(assert (=> b!2484358 (allKeysSameHash!75 lt!890476 lt!890477 (hashF!5284 (_2!17062 lt!890475)))))

(declare-fun lt!890481 () Unit!42752)

(declare-fun lemmaRemovePairForKeyPreservesHash!64 (List!29270 K!5580 (_ BitVec 64) Hashable!3308) Unit!42752)

(assert (=> b!2484358 (= lt!890481 (lemmaRemovePairForKeyPreservesHash!64 lt!890479 key!2246 lt!890477 (hashF!5284 (_2!17062 lt!890475))))))

(assert (=> b!2484358 (allKeysSameHash!75 lt!890479 lt!890477 (hashF!5284 (_2!17062 lt!890475)))))

(declare-fun lt!890482 () Unit!42752)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!68 (List!29271 (_ BitVec 64) List!29270 Hashable!3308) Unit!42752)

(assert (=> b!2484358 (= lt!890482 (lemmaInLongMapAllKeySameHashThenForTuple!68 (toList!1632 lt!890484) lt!890477 lt!890479 (hashF!5284 (_2!17062 lt!890475))))))

(declare-fun b!2484359 () Bool)

(assert (=> b!2484359 (= e!1577306 e!1577311)))

(declare-fun b!2484360 () Bool)

(declare-fun allKeysSameHashInMap!176 (ListLongMap!581 Hashable!3308) Bool)

(assert (=> b!2484360 (= e!1577309 (allKeysSameHashInMap!176 lt!890472 (hashF!5284 (_2!17062 lt!890475))))))

(declare-fun b!2484361 () Bool)

(declare-fun tp!795336 () Bool)

(declare-fun mapRes!15687 () Bool)

(assert (=> b!2484361 (= e!1577303 (and tp!795336 mapRes!15687))))

(declare-fun condMapEmpty!15687 () Bool)

(declare-fun mapDefault!15687 () List!29270)

(assert (=> b!2484361 (= condMapEmpty!15687 (= (arr!5386 (_values!3678 (v!31570 (underlying!7003 (v!31571 (underlying!7004 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29270)) mapDefault!15687)))))

(declare-fun mapNonEmpty!15687 () Bool)

(declare-fun tp!795339 () Bool)

(declare-fun tp!795342 () Bool)

(assert (=> mapNonEmpty!15687 (= mapRes!15687 (and tp!795339 tp!795342))))

(declare-fun mapValue!15687 () List!29270)

(declare-fun mapRest!15687 () (Array (_ BitVec 32) List!29270))

(declare-fun mapKey!15687 () (_ BitVec 32))

(assert (=> mapNonEmpty!15687 (= (arr!5386 (_values!3678 (v!31570 (underlying!7003 (v!31571 (underlying!7004 thiss!42540)))))) (store mapRest!15687 mapKey!15687 mapValue!15687))))

(declare-fun b!2484362 () Bool)

(declare-fun res!1051532 () Bool)

(assert (=> b!2484362 (=> (not res!1051532) (not e!1577310))))

(declare-fun valid!2606 (MutableMap!3308) Bool)

(assert (=> b!2484362 (= res!1051532 (valid!2606 thiss!42540))))

(declare-fun mapIsEmpty!15687 () Bool)

(assert (=> mapIsEmpty!15687 mapRes!15687))

(assert (= (and start!242564 res!1051528) b!2484362))

(assert (= (and b!2484362 res!1051532) b!2484353))

(assert (= (and b!2484353 res!1051530) b!2484354))

(assert (= (and b!2484354 (not res!1051531)) b!2484358))

(assert (= (and b!2484358 res!1051529) b!2484360))

(assert (= (and b!2484361 condMapEmpty!15687) mapIsEmpty!15687))

(assert (= (and b!2484361 (not condMapEmpty!15687)) mapNonEmpty!15687))

(assert (= b!2484357 b!2484361))

(assert (= b!2484352 b!2484357))

(assert (= b!2484359 b!2484352))

(assert (= (and b!2484356 ((_ is LongMap!3398) (v!31571 (underlying!7004 thiss!42540)))) b!2484359))

(assert (= b!2484355 b!2484356))

(assert (= (and start!242564 ((_ is HashMap!3308) thiss!42540)) b!2484355))

(declare-fun m!2852287 () Bool)

(assert (=> b!2484362 m!2852287))

(declare-fun m!2852289 () Bool)

(assert (=> b!2484354 m!2852289))

(declare-fun m!2852291 () Bool)

(assert (=> b!2484354 m!2852291))

(declare-fun m!2852293 () Bool)

(assert (=> b!2484354 m!2852293))

(declare-fun m!2852295 () Bool)

(assert (=> b!2484354 m!2852295))

(declare-fun m!2852297 () Bool)

(assert (=> b!2484354 m!2852297))

(declare-fun m!2852299 () Bool)

(assert (=> b!2484354 m!2852299))

(declare-fun m!2852301 () Bool)

(assert (=> b!2484354 m!2852301))

(declare-fun m!2852303 () Bool)

(assert (=> b!2484354 m!2852303))

(declare-fun m!2852305 () Bool)

(assert (=> b!2484354 m!2852305))

(declare-fun m!2852307 () Bool)

(assert (=> b!2484358 m!2852307))

(declare-fun m!2852309 () Bool)

(assert (=> b!2484358 m!2852309))

(declare-fun m!2852311 () Bool)

(assert (=> b!2484358 m!2852311))

(declare-fun m!2852313 () Bool)

(assert (=> b!2484358 m!2852313))

(declare-fun m!2852315 () Bool)

(assert (=> b!2484358 m!2852315))

(declare-fun m!2852317 () Bool)

(assert (=> b!2484358 m!2852317))

(declare-fun m!2852319 () Bool)

(assert (=> b!2484358 m!2852319))

(declare-fun m!2852321 () Bool)

(assert (=> mapNonEmpty!15687 m!2852321))

(declare-fun m!2852323 () Bool)

(assert (=> b!2484360 m!2852323))

(declare-fun m!2852325 () Bool)

(assert (=> b!2484357 m!2852325))

(declare-fun m!2852327 () Bool)

(assert (=> b!2484357 m!2852327))

(declare-fun m!2852329 () Bool)

(assert (=> b!2484353 m!2852329))

(check-sat (not b_next!73153) (not b!2484354) (not b!2484358) b_and!188721 (not b!2484362) tp_is_empty!12341 (not b!2484361) (not b!2484353) (not b_next!73155) (not b!2484360) (not b!2484357) (not mapNonEmpty!15687) b_and!188719)
(check-sat b_and!188721 b_and!188719 (not b_next!73153) (not b_next!73155))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413192 () Bool)

(assert start!413192)

(declare-fun b!4302632 () Bool)

(declare-fun b_free!128211 () Bool)

(declare-fun b_next!128915 () Bool)

(assert (=> b!4302632 (= b_free!128211 (not b_next!128915))))

(declare-fun tp!1322142 () Bool)

(declare-fun b_and!339597 () Bool)

(assert (=> b!4302632 (= tp!1322142 b_and!339597)))

(declare-fun b!4302642 () Bool)

(declare-fun b_free!128213 () Bool)

(declare-fun b_next!128917 () Bool)

(assert (=> b!4302642 (= b_free!128213 (not b_next!128917))))

(declare-fun tp!1322144 () Bool)

(declare-fun b_and!339599 () Bool)

(assert (=> b!4302642 (= tp!1322144 b_and!339599)))

(declare-fun b!4302629 () Bool)

(declare-fun e!2674860 () Bool)

(declare-fun e!2674859 () Bool)

(declare-datatypes ((V!9356 0))(
  ( (V!9357 (val!15581 Int)) )
))
(declare-datatypes ((K!9154 0))(
  ( (K!9155 (val!15582 Int)) )
))
(declare-datatypes ((tuple2!46098 0))(
  ( (tuple2!46099 (_1!26328 K!9154) (_2!26328 V!9356)) )
))
(declare-datatypes ((List!48136 0))(
  ( (Nil!48012) (Cons!48012 (h!53433 tuple2!46098) (t!354907 List!48136)) )
))
(declare-datatypes ((array!16376 0))(
  ( (array!16377 (arr!7311 (Array (_ BitVec 32) (_ BitVec 64))) (size!35350 (_ BitVec 32))) )
))
(declare-datatypes ((array!16378 0))(
  ( (array!16379 (arr!7312 (Array (_ BitVec 32) List!48136)) (size!35351 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9126 0))(
  ( (LongMapFixedSize!9127 (defaultEntry!4948 Int) (mask!13073 (_ BitVec 32)) (extraKeys!4812 (_ BitVec 32)) (zeroValue!4822 List!48136) (minValue!4822 List!48136) (_size!9169 (_ BitVec 32)) (_keys!4863 array!16376) (_values!4844 array!16378) (_vacant!4624 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18061 0))(
  ( (Cell!18062 (v!42014 LongMapFixedSize!9126)) )
))
(declare-datatypes ((MutLongMap!4563 0))(
  ( (LongMap!4563 (underlying!9355 Cell!18061)) (MutLongMapExt!4562 (__x!29714 Int)) )
))
(declare-fun lt!1524195 () MutLongMap!4563)

(get-info :version)

(assert (=> b!4302629 (= e!2674860 (and e!2674859 ((_ is LongMap!4563) lt!1524195)))))

(declare-datatypes ((Hashable!4479 0))(
  ( (HashableExt!4478 (__x!29715 Int)) )
))
(declare-datatypes ((Cell!18063 0))(
  ( (Cell!18064 (v!42015 MutLongMap!4563)) )
))
(declare-datatypes ((MutableMap!4469 0))(
  ( (MutableMapExt!4468 (__x!29716 Int)) (HashMap!4469 (underlying!9356 Cell!18063) (hashF!6517 Hashable!4479) (_size!9170 (_ BitVec 32)) (defaultValue!4640 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4469)

(assert (=> b!4302629 (= lt!1524195 (v!42015 (underlying!9356 thiss!42308)))))

(declare-fun b!4302630 () Bool)

(declare-fun e!2674856 () Bool)

(declare-fun lt!1524199 () List!48136)

(declare-fun noDuplicateKeys!168 (List!48136) Bool)

(assert (=> b!4302630 (= e!2674856 (noDuplicateKeys!168 lt!1524199))))

(declare-fun b!4302631 () Bool)

(declare-fun e!2674855 () Bool)

(declare-fun e!2674853 () Bool)

(assert (=> b!4302631 (= e!2674855 e!2674853)))

(declare-fun tp!1322143 () Bool)

(declare-fun e!2674858 () Bool)

(declare-fun tp!1322145 () Bool)

(declare-fun array_inv!5245 (array!16376) Bool)

(declare-fun array_inv!5246 (array!16378) Bool)

(assert (=> b!4302632 (= e!2674853 (and tp!1322142 tp!1322145 tp!1322143 (array_inv!5245 (_keys!4863 (v!42014 (underlying!9355 (v!42015 (underlying!9356 thiss!42308)))))) (array_inv!5246 (_values!4844 (v!42014 (underlying!9355 (v!42015 (underlying!9356 thiss!42308)))))) e!2674858))))

(declare-fun mapNonEmpty!20464 () Bool)

(declare-fun mapRes!20464 () Bool)

(declare-fun tp!1322141 () Bool)

(declare-fun tp!1322146 () Bool)

(assert (=> mapNonEmpty!20464 (= mapRes!20464 (and tp!1322141 tp!1322146))))

(declare-fun mapValue!20464 () List!48136)

(declare-fun mapKey!20464 () (_ BitVec 32))

(declare-fun mapRest!20464 () (Array (_ BitVec 32) List!48136))

(assert (=> mapNonEmpty!20464 (= (arr!7312 (_values!4844 (v!42014 (underlying!9355 (v!42015 (underlying!9356 thiss!42308)))))) (store mapRest!20464 mapKey!20464 mapValue!20464))))

(declare-fun b!4302633 () Bool)

(declare-fun res!1763442 () Bool)

(declare-fun e!2674857 () Bool)

(assert (=> b!4302633 (=> res!1763442 e!2674857)))

(declare-fun lt!1524197 () (_ BitVec 64))

(declare-fun allKeysSameHash!138 (List!48136 (_ BitVec 64) Hashable!4479) Bool)

(assert (=> b!4302633 (= res!1763442 (not (allKeysSameHash!138 lt!1524199 lt!1524197 (hashF!6517 thiss!42308))))))

(declare-fun b!4302634 () Bool)

(declare-fun e!2674861 () Bool)

(declare-fun e!2674850 () Bool)

(assert (=> b!4302634 (= e!2674861 e!2674850)))

(declare-fun res!1763443 () Bool)

(assert (=> b!4302634 (=> (not res!1763443) (not e!2674850))))

(declare-datatypes ((tuple2!46100 0))(
  ( (tuple2!46101 (_1!26329 Bool) (_2!26329 MutLongMap!4563)) )
))
(declare-fun update!360 (MutLongMap!4563 (_ BitVec 64) List!48136) tuple2!46100)

(assert (=> b!4302634 (= res!1763443 (_1!26329 (update!360 (v!42015 (underlying!9356 thiss!42308)) lt!1524197 lt!1524199)))))

(declare-fun lt!1524200 () List!48136)

(declare-fun v!9179 () V!9356)

(declare-fun key!2048 () K!9154)

(assert (=> b!4302634 (= lt!1524199 (Cons!48012 (tuple2!46099 key!2048 v!9179) lt!1524200))))

(declare-fun lt!1524203 () List!48136)

(declare-fun removePairForKey!162 (List!48136 K!9154) List!48136)

(assert (=> b!4302634 (= lt!1524200 (removePairForKey!162 lt!1524203 key!2048))))

(declare-fun apply!10910 (MutLongMap!4563 (_ BitVec 64)) List!48136)

(assert (=> b!4302634 (= lt!1524203 (apply!10910 (v!42015 (underlying!9356 thiss!42308)) lt!1524197))))

(declare-fun hash!868 (Hashable!4479 K!9154) (_ BitVec 64))

(assert (=> b!4302634 (= lt!1524197 (hash!868 (hashF!6517 thiss!42308) key!2048))))

(declare-fun res!1763444 () Bool)

(declare-fun e!2674854 () Bool)

(assert (=> start!413192 (=> (not res!1763444) (not e!2674854))))

(assert (=> start!413192 (= res!1763444 ((_ is HashMap!4469) thiss!42308))))

(assert (=> start!413192 e!2674854))

(declare-fun e!2674862 () Bool)

(assert (=> start!413192 e!2674862))

(declare-fun tp_is_empty!23391 () Bool)

(assert (=> start!413192 tp_is_empty!23391))

(declare-fun tp_is_empty!23393 () Bool)

(assert (=> start!413192 tp_is_empty!23393))

(declare-fun b!4302635 () Bool)

(assert (=> b!4302635 (= e!2674859 e!2674855)))

(declare-fun b!4302636 () Bool)

(assert (=> b!4302636 (= e!2674850 (not e!2674857))))

(declare-fun res!1763439 () Bool)

(assert (=> b!4302636 (=> res!1763439 e!2674857)))

(declare-datatypes ((tuple2!46102 0))(
  ( (tuple2!46103 (_1!26330 (_ BitVec 64)) (_2!26330 List!48136)) )
))
(declare-datatypes ((List!48137 0))(
  ( (Nil!48013) (Cons!48013 (h!53434 tuple2!46102) (t!354908 List!48137)) )
))
(declare-datatypes ((ListLongMap!859 0))(
  ( (ListLongMap!860 (toList!2251 List!48137)) )
))
(declare-fun lt!1524193 () ListLongMap!859)

(declare-fun lambda!132139 () Int)

(declare-fun forall!8660 (List!48137 Int) Bool)

(assert (=> b!4302636 (= res!1763439 (not (forall!8660 (toList!2251 lt!1524193) lambda!132139)))))

(declare-fun e!2674851 () Bool)

(assert (=> b!4302636 e!2674851))

(declare-fun res!1763446 () Bool)

(assert (=> b!4302636 (=> (not res!1763446) (not e!2674851))))

(declare-fun lt!1524205 () ListLongMap!859)

(assert (=> b!4302636 (= res!1763446 (forall!8660 (toList!2251 lt!1524205) lambda!132139))))

(declare-fun +!191 (ListLongMap!859 tuple2!46102) ListLongMap!859)

(assert (=> b!4302636 (= lt!1524205 (+!191 lt!1524193 (tuple2!46103 lt!1524197 lt!1524199)))))

(declare-datatypes ((Unit!66995 0))(
  ( (Unit!66996) )
))
(declare-fun lt!1524196 () Unit!66995)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!109 (ListLongMap!859 (_ BitVec 64) List!48136 Hashable!4479) Unit!66995)

(assert (=> b!4302636 (= lt!1524196 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!109 lt!1524193 lt!1524197 lt!1524199 (hashF!6517 thiss!42308)))))

(assert (=> b!4302636 e!2674856))

(declare-fun res!1763438 () Bool)

(assert (=> b!4302636 (=> (not res!1763438) (not e!2674856))))

(assert (=> b!4302636 (= res!1763438 (noDuplicateKeys!168 lt!1524200))))

(declare-fun lt!1524194 () Unit!66995)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!141 (List!48136 K!9154) Unit!66995)

(assert (=> b!4302636 (= lt!1524194 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!141 lt!1524203 key!2048))))

(assert (=> b!4302636 (allKeysSameHash!138 lt!1524200 lt!1524197 (hashF!6517 thiss!42308))))

(declare-fun lt!1524206 () Unit!66995)

(declare-fun lemmaRemovePairForKeyPreservesHash!124 (List!48136 K!9154 (_ BitVec 64) Hashable!4479) Unit!66995)

(assert (=> b!4302636 (= lt!1524206 (lemmaRemovePairForKeyPreservesHash!124 lt!1524203 key!2048 lt!1524197 (hashF!6517 thiss!42308)))))

(assert (=> b!4302636 (allKeysSameHash!138 lt!1524203 lt!1524197 (hashF!6517 thiss!42308))))

(declare-fun lt!1524198 () Unit!66995)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!129 (List!48137 (_ BitVec 64) List!48136 Hashable!4479) Unit!66995)

(assert (=> b!4302636 (= lt!1524198 (lemmaInLongMapAllKeySameHashThenForTuple!129 (toList!2251 lt!1524193) lt!1524197 lt!1524203 (hashF!6517 thiss!42308)))))

(declare-fun b!4302637 () Bool)

(declare-fun tp!1322147 () Bool)

(assert (=> b!4302637 (= e!2674858 (and tp!1322147 mapRes!20464))))

(declare-fun condMapEmpty!20464 () Bool)

(declare-fun mapDefault!20464 () List!48136)

(assert (=> b!4302637 (= condMapEmpty!20464 (= (arr!7312 (_values!4844 (v!42014 (underlying!9355 (v!42015 (underlying!9356 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48136)) mapDefault!20464)))))

(declare-fun b!4302638 () Bool)

(declare-fun res!1763445 () Bool)

(assert (=> b!4302638 (=> (not res!1763445) (not e!2674854))))

(declare-fun valid!3547 (MutableMap!4469) Bool)

(assert (=> b!4302638 (= res!1763445 (valid!3547 thiss!42308))))

(declare-fun b!4302639 () Bool)

(declare-fun e!2674852 () Bool)

(assert (=> b!4302639 (= e!2674857 e!2674852)))

(declare-fun res!1763437 () Bool)

(assert (=> b!4302639 (=> res!1763437 e!2674852)))

(declare-fun lt!1524204 () List!48136)

(assert (=> b!4302639 (= res!1763437 (not (= lt!1524200 (removePairForKey!162 lt!1524204 key!2048))))))

(declare-fun lt!1524201 () tuple2!46102)

(declare-fun lt!1524202 () Unit!66995)

(declare-fun forallContained!1479 (List!48137 Int tuple2!46102) Unit!66995)

(assert (=> b!4302639 (= lt!1524202 (forallContained!1479 (toList!2251 lt!1524193) lambda!132139 lt!1524201))))

(declare-fun contains!9933 (List!48137 tuple2!46102) Bool)

(assert (=> b!4302639 (contains!9933 (toList!2251 lt!1524193) lt!1524201)))

(assert (=> b!4302639 (= lt!1524201 (tuple2!46103 lt!1524197 lt!1524204))))

(declare-fun lt!1524192 () Unit!66995)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!123 (List!48137 (_ BitVec 64) List!48136) Unit!66995)

(assert (=> b!4302639 (= lt!1524192 (lemmaGetValueByKeyImpliesContainsTuple!123 (toList!2251 lt!1524193) lt!1524197 lt!1524204))))

(declare-fun apply!10911 (ListLongMap!859 (_ BitVec 64)) List!48136)

(assert (=> b!4302639 (= lt!1524204 (apply!10911 lt!1524193 lt!1524197))))

(declare-fun b!4302640 () Bool)

(declare-fun res!1763441 () Bool)

(assert (=> b!4302640 (=> res!1763441 e!2674857)))

(declare-datatypes ((ListMap!1537 0))(
  ( (ListMap!1538 (toList!2252 List!48136)) )
))
(declare-fun contains!9934 (ListMap!1537 K!9154) Bool)

(declare-fun extractMap!282 (List!48137) ListMap!1537)

(assert (=> b!4302640 (= res!1763441 (not (contains!9934 (extractMap!282 (toList!2251 lt!1524193)) key!2048)))))

(declare-fun b!4302641 () Bool)

(declare-fun allKeysSameHashInMap!287 (ListLongMap!859 Hashable!4479) Bool)

(assert (=> b!4302641 (= e!2674851 (allKeysSameHashInMap!287 lt!1524205 (hashF!6517 thiss!42308)))))

(assert (=> b!4302642 (= e!2674862 (and e!2674860 tp!1322144))))

(declare-fun b!4302643 () Bool)

(declare-fun res!1763435 () Bool)

(assert (=> b!4302643 (=> (not res!1763435) (not e!2674856))))

(declare-fun containsKey!255 (List!48136 K!9154) Bool)

(assert (=> b!4302643 (= res!1763435 (not (containsKey!255 lt!1524200 key!2048)))))

(declare-fun mapIsEmpty!20464 () Bool)

(assert (=> mapIsEmpty!20464 mapRes!20464))

(declare-fun b!4302644 () Bool)

(declare-fun res!1763447 () Bool)

(assert (=> b!4302644 (=> res!1763447 e!2674857)))

(declare-fun contains!9935 (ListLongMap!859 (_ BitVec 64)) Bool)

(assert (=> b!4302644 (= res!1763447 (not (contains!9935 lt!1524193 lt!1524197)))))

(declare-fun b!4302645 () Bool)

(assert (=> b!4302645 (= e!2674852 true)))

(declare-fun b!4302646 () Bool)

(declare-fun res!1763436 () Bool)

(assert (=> b!4302646 (=> res!1763436 e!2674857)))

(assert (=> b!4302646 (= res!1763436 (not (allKeysSameHashInMap!287 lt!1524193 (hashF!6517 thiss!42308))))))

(declare-fun b!4302647 () Bool)

(assert (=> b!4302647 (= e!2674854 e!2674861)))

(declare-fun res!1763440 () Bool)

(assert (=> b!4302647 (=> (not res!1763440) (not e!2674861))))

(declare-fun contains!9936 (MutableMap!4469 K!9154) Bool)

(assert (=> b!4302647 (= res!1763440 (contains!9936 thiss!42308 key!2048))))

(declare-fun map!9976 (MutLongMap!4563) ListLongMap!859)

(assert (=> b!4302647 (= lt!1524193 (map!9976 (v!42015 (underlying!9356 thiss!42308))))))

(declare-fun lt!1524207 () ListMap!1537)

(declare-fun map!9977 (MutableMap!4469) ListMap!1537)

(assert (=> b!4302647 (= lt!1524207 (map!9977 thiss!42308))))

(assert (= (and start!413192 res!1763444) b!4302638))

(assert (= (and b!4302638 res!1763445) b!4302647))

(assert (= (and b!4302647 res!1763440) b!4302634))

(assert (= (and b!4302634 res!1763443) b!4302636))

(assert (= (and b!4302636 res!1763438) b!4302643))

(assert (= (and b!4302643 res!1763435) b!4302630))

(assert (= (and b!4302636 res!1763446) b!4302641))

(assert (= (and b!4302636 (not res!1763439)) b!4302646))

(assert (= (and b!4302646 (not res!1763436)) b!4302633))

(assert (= (and b!4302633 (not res!1763442)) b!4302640))

(assert (= (and b!4302640 (not res!1763441)) b!4302644))

(assert (= (and b!4302644 (not res!1763447)) b!4302639))

(assert (= (and b!4302639 (not res!1763437)) b!4302645))

(assert (= (and b!4302637 condMapEmpty!20464) mapIsEmpty!20464))

(assert (= (and b!4302637 (not condMapEmpty!20464)) mapNonEmpty!20464))

(assert (= b!4302632 b!4302637))

(assert (= b!4302631 b!4302632))

(assert (= b!4302635 b!4302631))

(assert (= (and b!4302629 ((_ is LongMap!4563) (v!42015 (underlying!9356 thiss!42308)))) b!4302635))

(assert (= b!4302642 b!4302629))

(assert (= (and start!413192 ((_ is HashMap!4469) thiss!42308)) b!4302642))

(declare-fun m!4894739 () Bool)

(assert (=> b!4302636 m!4894739))

(declare-fun m!4894741 () Bool)

(assert (=> b!4302636 m!4894741))

(declare-fun m!4894743 () Bool)

(assert (=> b!4302636 m!4894743))

(declare-fun m!4894745 () Bool)

(assert (=> b!4302636 m!4894745))

(declare-fun m!4894747 () Bool)

(assert (=> b!4302636 m!4894747))

(declare-fun m!4894749 () Bool)

(assert (=> b!4302636 m!4894749))

(declare-fun m!4894751 () Bool)

(assert (=> b!4302636 m!4894751))

(declare-fun m!4894753 () Bool)

(assert (=> b!4302636 m!4894753))

(declare-fun m!4894755 () Bool)

(assert (=> b!4302636 m!4894755))

(declare-fun m!4894757 () Bool)

(assert (=> b!4302636 m!4894757))

(declare-fun m!4894759 () Bool)

(assert (=> b!4302640 m!4894759))

(assert (=> b!4302640 m!4894759))

(declare-fun m!4894761 () Bool)

(assert (=> b!4302640 m!4894761))

(declare-fun m!4894763 () Bool)

(assert (=> b!4302632 m!4894763))

(declare-fun m!4894765 () Bool)

(assert (=> b!4302632 m!4894765))

(declare-fun m!4894767 () Bool)

(assert (=> b!4302644 m!4894767))

(declare-fun m!4894769 () Bool)

(assert (=> mapNonEmpty!20464 m!4894769))

(declare-fun m!4894771 () Bool)

(assert (=> b!4302647 m!4894771))

(declare-fun m!4894773 () Bool)

(assert (=> b!4302647 m!4894773))

(declare-fun m!4894775 () Bool)

(assert (=> b!4302647 m!4894775))

(declare-fun m!4894777 () Bool)

(assert (=> b!4302638 m!4894777))

(declare-fun m!4894779 () Bool)

(assert (=> b!4302634 m!4894779))

(declare-fun m!4894781 () Bool)

(assert (=> b!4302634 m!4894781))

(declare-fun m!4894783 () Bool)

(assert (=> b!4302634 m!4894783))

(declare-fun m!4894785 () Bool)

(assert (=> b!4302634 m!4894785))

(declare-fun m!4894787 () Bool)

(assert (=> b!4302641 m!4894787))

(declare-fun m!4894789 () Bool)

(assert (=> b!4302646 m!4894789))

(declare-fun m!4894791 () Bool)

(assert (=> b!4302633 m!4894791))

(declare-fun m!4894793 () Bool)

(assert (=> b!4302643 m!4894793))

(declare-fun m!4894795 () Bool)

(assert (=> b!4302639 m!4894795))

(declare-fun m!4894797 () Bool)

(assert (=> b!4302639 m!4894797))

(declare-fun m!4894799 () Bool)

(assert (=> b!4302639 m!4894799))

(declare-fun m!4894801 () Bool)

(assert (=> b!4302639 m!4894801))

(declare-fun m!4894803 () Bool)

(assert (=> b!4302639 m!4894803))

(declare-fun m!4894805 () Bool)

(assert (=> b!4302630 m!4894805))

(check-sat (not b_next!128915) tp_is_empty!23391 (not b!4302630) (not b!4302640) (not b!4302641) b_and!339597 tp_is_empty!23393 (not b!4302638) (not mapNonEmpty!20464) (not b!4302634) (not b!4302647) b_and!339599 (not b!4302637) (not b!4302633) (not b!4302632) (not b!4302646) (not b!4302639) (not b!4302643) (not b!4302644) (not b!4302636) (not b_next!128917))
(check-sat b_and!339597 b_and!339599 (not b_next!128917) (not b_next!128915))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413430 () Bool)

(assert start!413430)

(declare-fun b!4304039 () Bool)

(declare-fun b_free!128275 () Bool)

(declare-fun b_next!128979 () Bool)

(assert (=> b!4304039 (= b_free!128275 (not b_next!128979))))

(declare-fun tp!1322541 () Bool)

(declare-fun b_and!339669 () Bool)

(assert (=> b!4304039 (= tp!1322541 b_and!339669)))

(declare-fun b!4304038 () Bool)

(declare-fun b_free!128277 () Bool)

(declare-fun b_next!128981 () Bool)

(assert (=> b!4304038 (= b_free!128277 (not b_next!128981))))

(declare-fun tp!1322538 () Bool)

(declare-fun b_and!339671 () Bool)

(assert (=> b!4304038 (= tp!1322538 b_and!339671)))

(declare-fun b!4304037 () Bool)

(declare-fun e!2675922 () Bool)

(declare-datatypes ((K!9194 0))(
  ( (K!9195 (val!15613 Int)) )
))
(declare-datatypes ((V!9396 0))(
  ( (V!9397 (val!15614 Int)) )
))
(declare-datatypes ((tuple2!46190 0))(
  ( (tuple2!46191 (_1!26374 K!9194) (_2!26374 V!9396)) )
))
(declare-datatypes ((List!48168 0))(
  ( (Nil!48044) (Cons!48044 (h!53469 tuple2!46190) (t!354947 List!48168)) )
))
(declare-fun lt!1525630 () List!48168)

(declare-fun noDuplicateKeys!180 (List!48168) Bool)

(assert (=> b!4304037 (= e!2675922 (noDuplicateKeys!180 lt!1525630))))

(declare-fun e!2675919 () Bool)

(declare-fun e!2675913 () Bool)

(assert (=> b!4304038 (= e!2675919 (and e!2675913 tp!1322538))))

(declare-fun e!2675923 () Bool)

(declare-fun e!2675915 () Bool)

(declare-fun tp!1322539 () Bool)

(declare-datatypes ((array!16448 0))(
  ( (array!16449 (arr!7343 (Array (_ BitVec 32) (_ BitVec 64))) (size!35382 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4495 0))(
  ( (HashableExt!4494 (__x!29762 Int)) )
))
(declare-datatypes ((array!16450 0))(
  ( (array!16451 (arr!7344 (Array (_ BitVec 32) List!48168)) (size!35383 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9158 0))(
  ( (LongMapFixedSize!9159 (defaultEntry!4964 Int) (mask!13097 (_ BitVec 32)) (extraKeys!4828 (_ BitVec 32)) (zeroValue!4838 List!48168) (minValue!4838 List!48168) (_size!9201 (_ BitVec 32)) (_keys!4879 array!16448) (_values!4860 array!16450) (_vacant!4640 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18125 0))(
  ( (Cell!18126 (v!42074 LongMapFixedSize!9158)) )
))
(declare-datatypes ((MutLongMap!4579 0))(
  ( (LongMap!4579 (underlying!9387 Cell!18125)) (MutLongMapExt!4578 (__x!29763 Int)) )
))
(declare-datatypes ((Cell!18127 0))(
  ( (Cell!18128 (v!42075 MutLongMap!4579)) )
))
(declare-datatypes ((MutableMap!4485 0))(
  ( (MutableMapExt!4484 (__x!29764 Int)) (HashMap!4485 (underlying!9388 Cell!18127) (hashF!6557 Hashable!4495) (_size!9202 (_ BitVec 32)) (defaultValue!4656 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4485)

(declare-fun tp!1322537 () Bool)

(declare-fun array_inv!5267 (array!16448) Bool)

(declare-fun array_inv!5268 (array!16450) Bool)

(assert (=> b!4304039 (= e!2675923 (and tp!1322541 tp!1322539 tp!1322537 (array_inv!5267 (_keys!4879 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) (array_inv!5268 (_values!4860 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) e!2675915))))

(declare-fun mapIsEmpty!20524 () Bool)

(declare-fun mapRes!20524 () Bool)

(assert (=> mapIsEmpty!20524 mapRes!20524))

(declare-fun mapNonEmpty!20524 () Bool)

(declare-fun tp!1322540 () Bool)

(declare-fun tp!1322543 () Bool)

(assert (=> mapNonEmpty!20524 (= mapRes!20524 (and tp!1322540 tp!1322543))))

(declare-fun mapKey!20524 () (_ BitVec 32))

(declare-fun mapRest!20524 () (Array (_ BitVec 32) List!48168))

(declare-fun mapValue!20524 () List!48168)

(assert (=> mapNonEmpty!20524 (= (arr!7344 (_values!4860 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) (store mapRest!20524 mapKey!20524 mapValue!20524))))

(declare-fun b!4304040 () Bool)

(declare-fun res!1764126 () Bool)

(declare-fun e!2675911 () Bool)

(assert (=> b!4304040 (=> (not res!1764126) (not e!2675911))))

(declare-fun valid!3563 (MutableMap!4485) Bool)

(assert (=> b!4304040 (= res!1764126 (valid!3563 thiss!42308))))

(declare-fun b!4304041 () Bool)

(declare-fun e!2675921 () Bool)

(declare-datatypes ((tuple2!46192 0))(
  ( (tuple2!46193 (_1!26375 Bool) (_2!26375 MutLongMap!4579)) )
))
(declare-fun lt!1525638 () tuple2!46192)

(declare-fun valid!3564 (MutLongMap!4579) Bool)

(assert (=> b!4304041 (= e!2675921 (valid!3564 (_2!26375 lt!1525638)))))

(declare-fun res!1764128 () Bool)

(assert (=> start!413430 (=> (not res!1764128) (not e!2675911))))

(get-info :version)

(assert (=> start!413430 (= res!1764128 ((_ is HashMap!4485) thiss!42308))))

(assert (=> start!413430 e!2675911))

(assert (=> start!413430 e!2675919))

(declare-fun tp_is_empty!23455 () Bool)

(assert (=> start!413430 tp_is_empty!23455))

(declare-fun tp_is_empty!23457 () Bool)

(assert (=> start!413430 tp_is_empty!23457))

(declare-fun b!4304042 () Bool)

(declare-fun e!2675917 () Bool)

(declare-fun lambda!132324 () Int)

(declare-datatypes ((tuple2!46194 0))(
  ( (tuple2!46195 (_1!26376 (_ BitVec 64)) (_2!26376 List!48168)) )
))
(declare-datatypes ((List!48169 0))(
  ( (Nil!48045) (Cons!48045 (h!53470 tuple2!46194) (t!354948 List!48169)) )
))
(declare-fun forall!8677 (List!48169 Int) Bool)

(declare-datatypes ((ListLongMap!885 0))(
  ( (ListLongMap!886 (toList!2276 List!48169)) )
))
(declare-fun map!10011 (MutLongMap!4579) ListLongMap!885)

(assert (=> b!4304042 (= e!2675917 (forall!8677 (toList!2276 (map!10011 (_2!26375 lt!1525638))) lambda!132324))))

(declare-fun b!4304043 () Bool)

(declare-fun e!2675920 () Bool)

(assert (=> b!4304043 (= e!2675911 e!2675920)))

(declare-fun res!1764129 () Bool)

(assert (=> b!4304043 (=> (not res!1764129) (not e!2675920))))

(declare-fun key!2048 () K!9194)

(declare-fun contains!9974 (MutableMap!4485 K!9194) Bool)

(assert (=> b!4304043 (= res!1764129 (contains!9974 thiss!42308 key!2048))))

(declare-fun lt!1525639 () ListLongMap!885)

(assert (=> b!4304043 (= lt!1525639 (map!10011 (v!42075 (underlying!9388 thiss!42308))))))

(declare-datatypes ((ListMap!1561 0))(
  ( (ListMap!1562 (toList!2277 List!48168)) )
))
(declare-fun lt!1525622 () ListMap!1561)

(declare-fun map!10012 (MutableMap!4485) ListMap!1561)

(assert (=> b!4304043 (= lt!1525622 (map!10012 thiss!42308))))

(declare-fun b!4304044 () Bool)

(declare-fun e!2675918 () Bool)

(assert (=> b!4304044 (= e!2675920 e!2675918)))

(declare-fun res!1764127 () Bool)

(assert (=> b!4304044 (=> (not res!1764127) (not e!2675918))))

(assert (=> b!4304044 (= res!1764127 (_1!26375 lt!1525638))))

(declare-fun lt!1525625 () (_ BitVec 64))

(declare-fun update!376 (MutLongMap!4579 (_ BitVec 64) List!48168) tuple2!46192)

(assert (=> b!4304044 (= lt!1525638 (update!376 (v!42075 (underlying!9388 thiss!42308)) lt!1525625 lt!1525630))))

(declare-fun lt!1525631 () tuple2!46190)

(declare-fun lt!1525635 () List!48168)

(assert (=> b!4304044 (= lt!1525630 (Cons!48044 lt!1525631 lt!1525635))))

(declare-fun lt!1525636 () List!48168)

(declare-fun removePairForKey!174 (List!48168 K!9194) List!48168)

(assert (=> b!4304044 (= lt!1525635 (removePairForKey!174 lt!1525636 key!2048))))

(declare-fun v!9179 () V!9396)

(assert (=> b!4304044 (= lt!1525631 (tuple2!46191 key!2048 v!9179))))

(declare-fun apply!10932 (MutLongMap!4579 (_ BitVec 64)) List!48168)

(assert (=> b!4304044 (= lt!1525636 (apply!10932 (v!42075 (underlying!9388 thiss!42308)) lt!1525625))))

(declare-fun hash!900 (Hashable!4495 K!9194) (_ BitVec 64))

(assert (=> b!4304044 (= lt!1525625 (hash!900 (hashF!6557 thiss!42308) key!2048))))

(declare-fun b!4304045 () Bool)

(declare-fun e!2675912 () Bool)

(declare-fun lt!1525624 () MutLongMap!4579)

(assert (=> b!4304045 (= e!2675913 (and e!2675912 ((_ is LongMap!4579) lt!1525624)))))

(assert (=> b!4304045 (= lt!1525624 (v!42075 (underlying!9388 thiss!42308)))))

(declare-fun b!4304046 () Bool)

(declare-fun e!2675924 () Bool)

(declare-fun lt!1525628 () ListLongMap!885)

(declare-fun allKeysSameHashInMap!298 (ListLongMap!885 Hashable!4495) Bool)

(assert (=> b!4304046 (= e!2675924 (allKeysSameHashInMap!298 lt!1525628 (hashF!6557 thiss!42308)))))

(declare-fun b!4304047 () Bool)

(declare-fun e!2675914 () Bool)

(assert (=> b!4304047 (= e!2675912 e!2675914)))

(declare-fun b!4304048 () Bool)

(declare-fun tp!1322542 () Bool)

(assert (=> b!4304048 (= e!2675915 (and tp!1322542 mapRes!20524))))

(declare-fun condMapEmpty!20524 () Bool)

(declare-fun mapDefault!20524 () List!48168)

(assert (=> b!4304048 (= condMapEmpty!20524 (= (arr!7344 (_values!4860 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48168)) mapDefault!20524)))))

(declare-fun b!4304049 () Bool)

(assert (=> b!4304049 (= e!2675918 (not e!2675921))))

(declare-fun res!1764125 () Bool)

(assert (=> b!4304049 (=> res!1764125 e!2675921)))

(assert (=> b!4304049 (= res!1764125 (not ((_ is LongMap!4579) (_2!26375 lt!1525638))))))

(assert (=> b!4304049 e!2675917))

(declare-fun res!1764131 () Bool)

(assert (=> b!4304049 (=> (not res!1764131) (not e!2675917))))

(declare-fun lt!1525623 () ListMap!1561)

(declare-fun lt!1525637 () ListMap!1561)

(declare-fun contains!9975 (ListMap!1561 K!9194) Bool)

(assert (=> b!4304049 (= res!1764131 (= (contains!9975 lt!1525637 key!2048) (contains!9975 lt!1525623 key!2048)))))

(declare-datatypes ((Unit!67051 0))(
  ( (Unit!67052) )
))
(declare-fun lt!1525634 () Unit!67051)

(declare-fun lemmaEquivalentThenSameContains!45 (ListMap!1561 ListMap!1561 K!9194) Unit!67051)

(assert (=> b!4304049 (= lt!1525634 (lemmaEquivalentThenSameContains!45 lt!1525637 lt!1525623 key!2048))))

(declare-fun +!213 (ListMap!1561 tuple2!46190) ListMap!1561)

(assert (=> b!4304049 (= lt!1525623 (+!213 lt!1525622 lt!1525631))))

(assert (=> b!4304049 (= lt!1525637 (map!10012 (HashMap!4485 (Cell!18128 (_2!26375 lt!1525638)) (hashF!6557 thiss!42308) (_size!9202 thiss!42308) (defaultValue!4656 thiss!42308))))))

(declare-fun eq!118 (ListMap!1561 ListMap!1561) Bool)

(declare-fun extractMap!294 (List!48169) ListMap!1561)

(assert (=> b!4304049 (eq!118 (extractMap!294 (toList!2276 lt!1525628)) (+!213 (extractMap!294 (toList!2276 lt!1525639)) lt!1525631))))

(declare-fun lt!1525629 () Unit!67051)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!50 (ListLongMap!885 (_ BitVec 64) List!48168 K!9194 V!9396 Hashable!4495) Unit!67051)

(assert (=> b!4304049 (= lt!1525629 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!50 lt!1525639 lt!1525625 lt!1525630 key!2048 v!9179 (hashF!6557 thiss!42308)))))

(assert (=> b!4304049 e!2675924))

(declare-fun res!1764124 () Bool)

(assert (=> b!4304049 (=> (not res!1764124) (not e!2675924))))

(assert (=> b!4304049 (= res!1764124 (forall!8677 (toList!2276 lt!1525628) lambda!132324))))

(declare-fun +!214 (ListLongMap!885 tuple2!46194) ListLongMap!885)

(assert (=> b!4304049 (= lt!1525628 (+!214 lt!1525639 (tuple2!46195 lt!1525625 lt!1525630)))))

(declare-fun lt!1525633 () Unit!67051)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!121 (ListLongMap!885 (_ BitVec 64) List!48168 Hashable!4495) Unit!67051)

(assert (=> b!4304049 (= lt!1525633 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!121 lt!1525639 lt!1525625 lt!1525630 (hashF!6557 thiss!42308)))))

(assert (=> b!4304049 e!2675922))

(declare-fun res!1764130 () Bool)

(assert (=> b!4304049 (=> (not res!1764130) (not e!2675922))))

(assert (=> b!4304049 (= res!1764130 (noDuplicateKeys!180 lt!1525635))))

(declare-fun lt!1525632 () Unit!67051)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!153 (List!48168 K!9194) Unit!67051)

(assert (=> b!4304049 (= lt!1525632 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!153 lt!1525636 key!2048))))

(declare-fun allKeysSameHash!150 (List!48168 (_ BitVec 64) Hashable!4495) Bool)

(assert (=> b!4304049 (allKeysSameHash!150 lt!1525635 lt!1525625 (hashF!6557 thiss!42308))))

(declare-fun lt!1525627 () Unit!67051)

(declare-fun lemmaRemovePairForKeyPreservesHash!136 (List!48168 K!9194 (_ BitVec 64) Hashable!4495) Unit!67051)

(assert (=> b!4304049 (= lt!1525627 (lemmaRemovePairForKeyPreservesHash!136 lt!1525636 key!2048 lt!1525625 (hashF!6557 thiss!42308)))))

(assert (=> b!4304049 (allKeysSameHash!150 lt!1525636 lt!1525625 (hashF!6557 thiss!42308))))

(declare-fun lt!1525626 () Unit!67051)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!141 (List!48169 (_ BitVec 64) List!48168 Hashable!4495) Unit!67051)

(assert (=> b!4304049 (= lt!1525626 (lemmaInLongMapAllKeySameHashThenForTuple!141 (toList!2276 lt!1525639) lt!1525625 lt!1525636 (hashF!6557 thiss!42308)))))

(declare-fun b!4304050 () Bool)

(declare-fun res!1764123 () Bool)

(assert (=> b!4304050 (=> (not res!1764123) (not e!2675922))))

(declare-fun containsKey!272 (List!48168 K!9194) Bool)

(assert (=> b!4304050 (= res!1764123 (not (containsKey!272 lt!1525635 key!2048)))))

(declare-fun b!4304051 () Bool)

(assert (=> b!4304051 (= e!2675914 e!2675923)))

(assert (= (and start!413430 res!1764128) b!4304040))

(assert (= (and b!4304040 res!1764126) b!4304043))

(assert (= (and b!4304043 res!1764129) b!4304044))

(assert (= (and b!4304044 res!1764127) b!4304049))

(assert (= (and b!4304049 res!1764130) b!4304050))

(assert (= (and b!4304050 res!1764123) b!4304037))

(assert (= (and b!4304049 res!1764124) b!4304046))

(assert (= (and b!4304049 res!1764131) b!4304042))

(assert (= (and b!4304049 (not res!1764125)) b!4304041))

(assert (= (and b!4304048 condMapEmpty!20524) mapIsEmpty!20524))

(assert (= (and b!4304048 (not condMapEmpty!20524)) mapNonEmpty!20524))

(assert (= b!4304039 b!4304048))

(assert (= b!4304051 b!4304039))

(assert (= b!4304047 b!4304051))

(assert (= (and b!4304045 ((_ is LongMap!4579) (v!42075 (underlying!9388 thiss!42308)))) b!4304047))

(assert (= b!4304038 b!4304045))

(assert (= (and start!413430 ((_ is HashMap!4485) thiss!42308)) b!4304038))

(declare-fun m!4896737 () Bool)

(assert (=> b!4304049 m!4896737))

(declare-fun m!4896739 () Bool)

(assert (=> b!4304049 m!4896739))

(declare-fun m!4896741 () Bool)

(assert (=> b!4304049 m!4896741))

(declare-fun m!4896743 () Bool)

(assert (=> b!4304049 m!4896743))

(assert (=> b!4304049 m!4896739))

(declare-fun m!4896745 () Bool)

(assert (=> b!4304049 m!4896745))

(declare-fun m!4896747 () Bool)

(assert (=> b!4304049 m!4896747))

(declare-fun m!4896749 () Bool)

(assert (=> b!4304049 m!4896749))

(declare-fun m!4896751 () Bool)

(assert (=> b!4304049 m!4896751))

(declare-fun m!4896753 () Bool)

(assert (=> b!4304049 m!4896753))

(declare-fun m!4896755 () Bool)

(assert (=> b!4304049 m!4896755))

(declare-fun m!4896757 () Bool)

(assert (=> b!4304049 m!4896757))

(declare-fun m!4896759 () Bool)

(assert (=> b!4304049 m!4896759))

(declare-fun m!4896761 () Bool)

(assert (=> b!4304049 m!4896761))

(declare-fun m!4896763 () Bool)

(assert (=> b!4304049 m!4896763))

(declare-fun m!4896765 () Bool)

(assert (=> b!4304049 m!4896765))

(declare-fun m!4896767 () Bool)

(assert (=> b!4304049 m!4896767))

(assert (=> b!4304049 m!4896743))

(declare-fun m!4896769 () Bool)

(assert (=> b!4304049 m!4896769))

(assert (=> b!4304049 m!4896737))

(declare-fun m!4896771 () Bool)

(assert (=> b!4304049 m!4896771))

(declare-fun m!4896773 () Bool)

(assert (=> b!4304049 m!4896773))

(declare-fun m!4896775 () Bool)

(assert (=> b!4304050 m!4896775))

(declare-fun m!4896777 () Bool)

(assert (=> b!4304042 m!4896777))

(declare-fun m!4896779 () Bool)

(assert (=> b!4304042 m!4896779))

(declare-fun m!4896781 () Bool)

(assert (=> b!4304040 m!4896781))

(declare-fun m!4896783 () Bool)

(assert (=> mapNonEmpty!20524 m!4896783))

(declare-fun m!4896785 () Bool)

(assert (=> b!4304041 m!4896785))

(declare-fun m!4896787 () Bool)

(assert (=> b!4304037 m!4896787))

(declare-fun m!4896789 () Bool)

(assert (=> b!4304046 m!4896789))

(declare-fun m!4896791 () Bool)

(assert (=> b!4304039 m!4896791))

(declare-fun m!4896793 () Bool)

(assert (=> b!4304039 m!4896793))

(declare-fun m!4896795 () Bool)

(assert (=> b!4304043 m!4896795))

(declare-fun m!4896797 () Bool)

(assert (=> b!4304043 m!4896797))

(declare-fun m!4896799 () Bool)

(assert (=> b!4304043 m!4896799))

(declare-fun m!4896801 () Bool)

(assert (=> b!4304044 m!4896801))

(declare-fun m!4896803 () Bool)

(assert (=> b!4304044 m!4896803))

(declare-fun m!4896805 () Bool)

(assert (=> b!4304044 m!4896805))

(declare-fun m!4896807 () Bool)

(assert (=> b!4304044 m!4896807))

(check-sat (not b!4304046) (not b!4304049) (not b!4304037) tp_is_empty!23455 (not b_next!128979) (not b!4304050) (not b_next!128981) (not b!4304043) b_and!339669 (not b!4304044) (not b!4304042) (not b!4304040) (not b!4304039) b_and!339671 (not mapNonEmpty!20524) (not b!4304048) (not b!4304041) tp_is_empty!23457)
(check-sat b_and!339669 b_and!339671 (not b_next!128981) (not b_next!128979))
(get-model)

(declare-fun d!1267186 () Bool)

(declare-fun res!1764136 () Bool)

(declare-fun e!2675929 () Bool)

(assert (=> d!1267186 (=> res!1764136 e!2675929)))

(assert (=> d!1267186 (= res!1764136 ((_ is Nil!48045) (toList!2276 (map!10011 (_2!26375 lt!1525638)))))))

(assert (=> d!1267186 (= (forall!8677 (toList!2276 (map!10011 (_2!26375 lt!1525638))) lambda!132324) e!2675929)))

(declare-fun b!4304056 () Bool)

(declare-fun e!2675930 () Bool)

(assert (=> b!4304056 (= e!2675929 e!2675930)))

(declare-fun res!1764137 () Bool)

(assert (=> b!4304056 (=> (not res!1764137) (not e!2675930))))

(declare-fun dynLambda!20390 (Int tuple2!46194) Bool)

(assert (=> b!4304056 (= res!1764137 (dynLambda!20390 lambda!132324 (h!53470 (toList!2276 (map!10011 (_2!26375 lt!1525638))))))))

(declare-fun b!4304057 () Bool)

(assert (=> b!4304057 (= e!2675930 (forall!8677 (t!354948 (toList!2276 (map!10011 (_2!26375 lt!1525638)))) lambda!132324))))

(assert (= (and d!1267186 (not res!1764136)) b!4304056))

(assert (= (and b!4304056 res!1764137) b!4304057))

(declare-fun b_lambda!126479 () Bool)

(assert (=> (not b_lambda!126479) (not b!4304056)))

(declare-fun m!4896809 () Bool)

(assert (=> b!4304056 m!4896809))

(declare-fun m!4896811 () Bool)

(assert (=> b!4304057 m!4896811))

(assert (=> b!4304042 d!1267186))

(declare-fun d!1267188 () Bool)

(declare-fun map!10013 (LongMapFixedSize!9158) ListLongMap!885)

(assert (=> d!1267188 (= (map!10011 (_2!26375 lt!1525638)) (map!10013 (v!42074 (underlying!9387 (_2!26375 lt!1525638)))))))

(declare-fun bs!604335 () Bool)

(assert (= bs!604335 d!1267188))

(declare-fun m!4896813 () Bool)

(assert (=> bs!604335 m!4896813))

(assert (=> b!4304042 d!1267188))

(declare-fun d!1267190 () Bool)

(assert (=> d!1267190 (= (array_inv!5267 (_keys!4879 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) (bvsge (size!35382 (_keys!4879 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304039 d!1267190))

(declare-fun d!1267192 () Bool)

(assert (=> d!1267192 (= (array_inv!5268 (_values!4860 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) (bvsge (size!35383 (_values!4860 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304039 d!1267192))

(declare-fun d!1267194 () Bool)

(declare-fun res!1764142 () Bool)

(declare-fun e!2675935 () Bool)

(assert (=> d!1267194 (=> res!1764142 e!2675935)))

(assert (=> d!1267194 (= res!1764142 (not ((_ is Cons!48044) lt!1525635)))))

(assert (=> d!1267194 (= (noDuplicateKeys!180 lt!1525635) e!2675935)))

(declare-fun b!4304062 () Bool)

(declare-fun e!2675936 () Bool)

(assert (=> b!4304062 (= e!2675935 e!2675936)))

(declare-fun res!1764143 () Bool)

(assert (=> b!4304062 (=> (not res!1764143) (not e!2675936))))

(assert (=> b!4304062 (= res!1764143 (not (containsKey!272 (t!354947 lt!1525635) (_1!26374 (h!53469 lt!1525635)))))))

(declare-fun b!4304063 () Bool)

(assert (=> b!4304063 (= e!2675936 (noDuplicateKeys!180 (t!354947 lt!1525635)))))

(assert (= (and d!1267194 (not res!1764142)) b!4304062))

(assert (= (and b!4304062 res!1764143) b!4304063))

(declare-fun m!4896815 () Bool)

(assert (=> b!4304062 m!4896815))

(declare-fun m!4896817 () Bool)

(assert (=> b!4304063 m!4896817))

(assert (=> b!4304049 d!1267194))

(declare-fun bs!604336 () Bool)

(declare-fun d!1267196 () Bool)

(assert (= bs!604336 (and d!1267196 b!4304049)))

(declare-fun lambda!132329 () Int)

(assert (=> bs!604336 (= lambda!132329 lambda!132324)))

(declare-fun e!2675939 () Bool)

(assert (=> d!1267196 e!2675939))

(declare-fun res!1764146 () Bool)

(assert (=> d!1267196 (=> (not res!1764146) (not e!2675939))))

(declare-fun lt!1525645 () ListLongMap!885)

(assert (=> d!1267196 (= res!1764146 (forall!8677 (toList!2276 lt!1525645) lambda!132329))))

(assert (=> d!1267196 (= lt!1525645 (+!214 lt!1525639 (tuple2!46195 lt!1525625 lt!1525630)))))

(declare-fun lt!1525644 () Unit!67051)

(declare-fun choose!26207 (ListLongMap!885 (_ BitVec 64) List!48168 Hashable!4495) Unit!67051)

(assert (=> d!1267196 (= lt!1525644 (choose!26207 lt!1525639 lt!1525625 lt!1525630 (hashF!6557 thiss!42308)))))

(assert (=> d!1267196 (forall!8677 (toList!2276 lt!1525639) lambda!132329)))

(assert (=> d!1267196 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!121 lt!1525639 lt!1525625 lt!1525630 (hashF!6557 thiss!42308)) lt!1525644)))

(declare-fun b!4304066 () Bool)

(assert (=> b!4304066 (= e!2675939 (allKeysSameHashInMap!298 lt!1525645 (hashF!6557 thiss!42308)))))

(assert (= (and d!1267196 res!1764146) b!4304066))

(declare-fun m!4896819 () Bool)

(assert (=> d!1267196 m!4896819))

(assert (=> d!1267196 m!4896751))

(declare-fun m!4896821 () Bool)

(assert (=> d!1267196 m!4896821))

(declare-fun m!4896823 () Bool)

(assert (=> d!1267196 m!4896823))

(declare-fun m!4896825 () Bool)

(assert (=> b!4304066 m!4896825))

(assert (=> b!4304049 d!1267196))

(declare-fun bs!604337 () Bool)

(declare-fun d!1267198 () Bool)

(assert (= bs!604337 (and d!1267198 b!4304049)))

(declare-fun lambda!132332 () Int)

(assert (=> bs!604337 (not (= lambda!132332 lambda!132324))))

(declare-fun bs!604338 () Bool)

(assert (= bs!604338 (and d!1267198 d!1267196)))

(assert (=> bs!604338 (not (= lambda!132332 lambda!132329))))

(assert (=> d!1267198 true))

(assert (=> d!1267198 (allKeysSameHash!150 lt!1525636 lt!1525625 (hashF!6557 thiss!42308))))

(declare-fun lt!1525648 () Unit!67051)

(declare-fun choose!26208 (List!48169 (_ BitVec 64) List!48168 Hashable!4495) Unit!67051)

(assert (=> d!1267198 (= lt!1525648 (choose!26208 (toList!2276 lt!1525639) lt!1525625 lt!1525636 (hashF!6557 thiss!42308)))))

(assert (=> d!1267198 (forall!8677 (toList!2276 lt!1525639) lambda!132332)))

(assert (=> d!1267198 (= (lemmaInLongMapAllKeySameHashThenForTuple!141 (toList!2276 lt!1525639) lt!1525625 lt!1525636 (hashF!6557 thiss!42308)) lt!1525648)))

(declare-fun bs!604339 () Bool)

(assert (= bs!604339 d!1267198))

(assert (=> bs!604339 m!4896747))

(declare-fun m!4896827 () Bool)

(assert (=> bs!604339 m!4896827))

(declare-fun m!4896829 () Bool)

(assert (=> bs!604339 m!4896829))

(assert (=> b!4304049 d!1267198))

(declare-fun d!1267200 () Bool)

(declare-fun e!2675942 () Bool)

(assert (=> d!1267200 e!2675942))

(declare-fun res!1764152 () Bool)

(assert (=> d!1267200 (=> (not res!1764152) (not e!2675942))))

(declare-fun lt!1525659 () ListLongMap!885)

(declare-fun contains!9976 (ListLongMap!885 (_ BitVec 64)) Bool)

(assert (=> d!1267200 (= res!1764152 (contains!9976 lt!1525659 (_1!26376 (tuple2!46195 lt!1525625 lt!1525630))))))

(declare-fun lt!1525658 () List!48169)

(assert (=> d!1267200 (= lt!1525659 (ListLongMap!886 lt!1525658))))

(declare-fun lt!1525657 () Unit!67051)

(declare-fun lt!1525660 () Unit!67051)

(assert (=> d!1267200 (= lt!1525657 lt!1525660)))

(declare-datatypes ((Option!10189 0))(
  ( (None!10188) (Some!10188 (v!42080 List!48168)) )
))
(declare-fun getValueByKey!230 (List!48169 (_ BitVec 64)) Option!10189)

(assert (=> d!1267200 (= (getValueByKey!230 lt!1525658 (_1!26376 (tuple2!46195 lt!1525625 lt!1525630))) (Some!10188 (_2!26376 (tuple2!46195 lt!1525625 lt!1525630))))))

(declare-fun lemmaContainsTupThenGetReturnValue!56 (List!48169 (_ BitVec 64) List!48168) Unit!67051)

(assert (=> d!1267200 (= lt!1525660 (lemmaContainsTupThenGetReturnValue!56 lt!1525658 (_1!26376 (tuple2!46195 lt!1525625 lt!1525630)) (_2!26376 (tuple2!46195 lt!1525625 lt!1525630))))))

(declare-fun insertStrictlySorted!29 (List!48169 (_ BitVec 64) List!48168) List!48169)

(assert (=> d!1267200 (= lt!1525658 (insertStrictlySorted!29 (toList!2276 lt!1525639) (_1!26376 (tuple2!46195 lt!1525625 lt!1525630)) (_2!26376 (tuple2!46195 lt!1525625 lt!1525630))))))

(assert (=> d!1267200 (= (+!214 lt!1525639 (tuple2!46195 lt!1525625 lt!1525630)) lt!1525659)))

(declare-fun b!4304073 () Bool)

(declare-fun res!1764151 () Bool)

(assert (=> b!4304073 (=> (not res!1764151) (not e!2675942))))

(assert (=> b!4304073 (= res!1764151 (= (getValueByKey!230 (toList!2276 lt!1525659) (_1!26376 (tuple2!46195 lt!1525625 lt!1525630))) (Some!10188 (_2!26376 (tuple2!46195 lt!1525625 lt!1525630)))))))

(declare-fun b!4304074 () Bool)

(declare-fun contains!9977 (List!48169 tuple2!46194) Bool)

(assert (=> b!4304074 (= e!2675942 (contains!9977 (toList!2276 lt!1525659) (tuple2!46195 lt!1525625 lt!1525630)))))

(assert (= (and d!1267200 res!1764152) b!4304073))

(assert (= (and b!4304073 res!1764151) b!4304074))

(declare-fun m!4896831 () Bool)

(assert (=> d!1267200 m!4896831))

(declare-fun m!4896833 () Bool)

(assert (=> d!1267200 m!4896833))

(declare-fun m!4896835 () Bool)

(assert (=> d!1267200 m!4896835))

(declare-fun m!4896837 () Bool)

(assert (=> d!1267200 m!4896837))

(declare-fun m!4896839 () Bool)

(assert (=> b!4304073 m!4896839))

(declare-fun m!4896841 () Bool)

(assert (=> b!4304074 m!4896841))

(assert (=> b!4304049 d!1267200))

(declare-fun d!1267202 () Bool)

(assert (=> d!1267202 (noDuplicateKeys!180 (removePairForKey!174 lt!1525636 key!2048))))

(declare-fun lt!1525663 () Unit!67051)

(declare-fun choose!26209 (List!48168 K!9194) Unit!67051)

(assert (=> d!1267202 (= lt!1525663 (choose!26209 lt!1525636 key!2048))))

(assert (=> d!1267202 (noDuplicateKeys!180 lt!1525636)))

(assert (=> d!1267202 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!153 lt!1525636 key!2048) lt!1525663)))

(declare-fun bs!604340 () Bool)

(assert (= bs!604340 d!1267202))

(assert (=> bs!604340 m!4896803))

(assert (=> bs!604340 m!4896803))

(declare-fun m!4896843 () Bool)

(assert (=> bs!604340 m!4896843))

(declare-fun m!4896845 () Bool)

(assert (=> bs!604340 m!4896845))

(declare-fun m!4896847 () Bool)

(assert (=> bs!604340 m!4896847))

(assert (=> b!4304049 d!1267202))

(declare-fun b!4304093 () Bool)

(declare-fun e!2675958 () Unit!67051)

(declare-fun lt!1525681 () Unit!67051)

(assert (=> b!4304093 (= e!2675958 lt!1525681)))

(declare-fun lt!1525687 () Unit!67051)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!156 (List!48168 K!9194) Unit!67051)

(assert (=> b!4304093 (= lt!1525687 (lemmaContainsKeyImpliesGetValueByKeyDefined!156 (toList!2277 lt!1525623) key!2048))))

(declare-datatypes ((Option!10190 0))(
  ( (None!10189) (Some!10189 (v!42081 V!9396)) )
))
(declare-fun isDefined!7497 (Option!10190) Bool)

(declare-fun getValueByKey!231 (List!48168 K!9194) Option!10190)

(assert (=> b!4304093 (isDefined!7497 (getValueByKey!231 (toList!2277 lt!1525623) key!2048))))

(declare-fun lt!1525683 () Unit!67051)

(assert (=> b!4304093 (= lt!1525683 lt!1525687)))

(declare-fun lemmaInListThenGetKeysListContains!37 (List!48168 K!9194) Unit!67051)

(assert (=> b!4304093 (= lt!1525681 (lemmaInListThenGetKeysListContains!37 (toList!2277 lt!1525623) key!2048))))

(declare-fun call!296798 () Bool)

(assert (=> b!4304093 call!296798))

(declare-fun bm!296793 () Bool)

(declare-datatypes ((List!48170 0))(
  ( (Nil!48046) (Cons!48046 (h!53472 K!9194) (t!354951 List!48170)) )
))
(declare-fun e!2675959 () List!48170)

(declare-fun contains!9978 (List!48170 K!9194) Bool)

(assert (=> bm!296793 (= call!296798 (contains!9978 e!2675959 key!2048))))

(declare-fun c!731903 () Bool)

(declare-fun c!731904 () Bool)

(assert (=> bm!296793 (= c!731903 c!731904)))

(declare-fun b!4304094 () Bool)

(declare-fun getKeysList!40 (List!48168) List!48170)

(assert (=> b!4304094 (= e!2675959 (getKeysList!40 (toList!2277 lt!1525623)))))

(declare-fun b!4304095 () Bool)

(declare-fun e!2675960 () Bool)

(declare-fun e!2675956 () Bool)

(assert (=> b!4304095 (= e!2675960 e!2675956)))

(declare-fun res!1764161 () Bool)

(assert (=> b!4304095 (=> (not res!1764161) (not e!2675956))))

(assert (=> b!4304095 (= res!1764161 (isDefined!7497 (getValueByKey!231 (toList!2277 lt!1525623) key!2048)))))

(declare-fun d!1267204 () Bool)

(assert (=> d!1267204 e!2675960))

(declare-fun res!1764159 () Bool)

(assert (=> d!1267204 (=> res!1764159 e!2675960)))

(declare-fun e!2675955 () Bool)

(assert (=> d!1267204 (= res!1764159 e!2675955)))

(declare-fun res!1764160 () Bool)

(assert (=> d!1267204 (=> (not res!1764160) (not e!2675955))))

(declare-fun lt!1525686 () Bool)

(assert (=> d!1267204 (= res!1764160 (not lt!1525686))))

(declare-fun lt!1525685 () Bool)

(assert (=> d!1267204 (= lt!1525686 lt!1525685)))

(declare-fun lt!1525680 () Unit!67051)

(assert (=> d!1267204 (= lt!1525680 e!2675958)))

(assert (=> d!1267204 (= c!731904 lt!1525685)))

(declare-fun containsKey!273 (List!48168 K!9194) Bool)

(assert (=> d!1267204 (= lt!1525685 (containsKey!273 (toList!2277 lt!1525623) key!2048))))

(assert (=> d!1267204 (= (contains!9975 lt!1525623 key!2048) lt!1525686)))

(declare-fun b!4304096 () Bool)

(declare-fun e!2675957 () Unit!67051)

(declare-fun Unit!67053 () Unit!67051)

(assert (=> b!4304096 (= e!2675957 Unit!67053)))

(declare-fun b!4304097 () Bool)

(declare-fun keys!15983 (ListMap!1561) List!48170)

(assert (=> b!4304097 (= e!2675955 (not (contains!9978 (keys!15983 lt!1525623) key!2048)))))

(declare-fun b!4304098 () Bool)

(assert (=> b!4304098 false))

(declare-fun lt!1525682 () Unit!67051)

(declare-fun lt!1525684 () Unit!67051)

(assert (=> b!4304098 (= lt!1525682 lt!1525684)))

(assert (=> b!4304098 (containsKey!273 (toList!2277 lt!1525623) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!37 (List!48168 K!9194) Unit!67051)

(assert (=> b!4304098 (= lt!1525684 (lemmaInGetKeysListThenContainsKey!37 (toList!2277 lt!1525623) key!2048))))

(declare-fun Unit!67054 () Unit!67051)

(assert (=> b!4304098 (= e!2675957 Unit!67054)))

(declare-fun b!4304099 () Bool)

(assert (=> b!4304099 (= e!2675958 e!2675957)))

(declare-fun c!731902 () Bool)

(assert (=> b!4304099 (= c!731902 call!296798)))

(declare-fun b!4304100 () Bool)

(assert (=> b!4304100 (= e!2675956 (contains!9978 (keys!15983 lt!1525623) key!2048))))

(declare-fun b!4304101 () Bool)

(assert (=> b!4304101 (= e!2675959 (keys!15983 lt!1525623))))

(assert (= (and d!1267204 c!731904) b!4304093))

(assert (= (and d!1267204 (not c!731904)) b!4304099))

(assert (= (and b!4304099 c!731902) b!4304098))

(assert (= (and b!4304099 (not c!731902)) b!4304096))

(assert (= (or b!4304093 b!4304099) bm!296793))

(assert (= (and bm!296793 c!731903) b!4304094))

(assert (= (and bm!296793 (not c!731903)) b!4304101))

(assert (= (and d!1267204 res!1764160) b!4304097))

(assert (= (and d!1267204 (not res!1764159)) b!4304095))

(assert (= (and b!4304095 res!1764161) b!4304100))

(declare-fun m!4896849 () Bool)

(assert (=> bm!296793 m!4896849))

(declare-fun m!4896851 () Bool)

(assert (=> b!4304098 m!4896851))

(declare-fun m!4896853 () Bool)

(assert (=> b!4304098 m!4896853))

(declare-fun m!4896855 () Bool)

(assert (=> b!4304093 m!4896855))

(declare-fun m!4896857 () Bool)

(assert (=> b!4304093 m!4896857))

(assert (=> b!4304093 m!4896857))

(declare-fun m!4896859 () Bool)

(assert (=> b!4304093 m!4896859))

(declare-fun m!4896861 () Bool)

(assert (=> b!4304093 m!4896861))

(declare-fun m!4896863 () Bool)

(assert (=> b!4304100 m!4896863))

(assert (=> b!4304100 m!4896863))

(declare-fun m!4896865 () Bool)

(assert (=> b!4304100 m!4896865))

(declare-fun m!4896867 () Bool)

(assert (=> b!4304094 m!4896867))

(assert (=> b!4304097 m!4896863))

(assert (=> b!4304097 m!4896863))

(assert (=> b!4304097 m!4896865))

(assert (=> d!1267204 m!4896851))

(assert (=> b!4304101 m!4896863))

(assert (=> b!4304095 m!4896857))

(assert (=> b!4304095 m!4896857))

(assert (=> b!4304095 m!4896859))

(assert (=> b!4304049 d!1267204))

(declare-fun d!1267206 () Bool)

(declare-fun res!1764162 () Bool)

(declare-fun e!2675961 () Bool)

(assert (=> d!1267206 (=> res!1764162 e!2675961)))

(assert (=> d!1267206 (= res!1764162 ((_ is Nil!48045) (toList!2276 lt!1525628)))))

(assert (=> d!1267206 (= (forall!8677 (toList!2276 lt!1525628) lambda!132324) e!2675961)))

(declare-fun b!4304102 () Bool)

(declare-fun e!2675962 () Bool)

(assert (=> b!4304102 (= e!2675961 e!2675962)))

(declare-fun res!1764163 () Bool)

(assert (=> b!4304102 (=> (not res!1764163) (not e!2675962))))

(assert (=> b!4304102 (= res!1764163 (dynLambda!20390 lambda!132324 (h!53470 (toList!2276 lt!1525628))))))

(declare-fun b!4304103 () Bool)

(assert (=> b!4304103 (= e!2675962 (forall!8677 (t!354948 (toList!2276 lt!1525628)) lambda!132324))))

(assert (= (and d!1267206 (not res!1764162)) b!4304102))

(assert (= (and b!4304102 res!1764163) b!4304103))

(declare-fun b_lambda!126481 () Bool)

(assert (=> (not b_lambda!126481) (not b!4304102)))

(declare-fun m!4896869 () Bool)

(assert (=> b!4304102 m!4896869))

(declare-fun m!4896871 () Bool)

(assert (=> b!4304103 m!4896871))

(assert (=> b!4304049 d!1267206))

(declare-fun b!4304104 () Bool)

(declare-fun e!2675966 () Unit!67051)

(declare-fun lt!1525689 () Unit!67051)

(assert (=> b!4304104 (= e!2675966 lt!1525689)))

(declare-fun lt!1525695 () Unit!67051)

(assert (=> b!4304104 (= lt!1525695 (lemmaContainsKeyImpliesGetValueByKeyDefined!156 (toList!2277 lt!1525637) key!2048))))

(assert (=> b!4304104 (isDefined!7497 (getValueByKey!231 (toList!2277 lt!1525637) key!2048))))

(declare-fun lt!1525691 () Unit!67051)

(assert (=> b!4304104 (= lt!1525691 lt!1525695)))

(assert (=> b!4304104 (= lt!1525689 (lemmaInListThenGetKeysListContains!37 (toList!2277 lt!1525637) key!2048))))

(declare-fun call!296799 () Bool)

(assert (=> b!4304104 call!296799))

(declare-fun bm!296794 () Bool)

(declare-fun e!2675967 () List!48170)

(assert (=> bm!296794 (= call!296799 (contains!9978 e!2675967 key!2048))))

(declare-fun c!731906 () Bool)

(declare-fun c!731907 () Bool)

(assert (=> bm!296794 (= c!731906 c!731907)))

(declare-fun b!4304105 () Bool)

(assert (=> b!4304105 (= e!2675967 (getKeysList!40 (toList!2277 lt!1525637)))))

(declare-fun b!4304106 () Bool)

(declare-fun e!2675968 () Bool)

(declare-fun e!2675964 () Bool)

(assert (=> b!4304106 (= e!2675968 e!2675964)))

(declare-fun res!1764166 () Bool)

(assert (=> b!4304106 (=> (not res!1764166) (not e!2675964))))

(assert (=> b!4304106 (= res!1764166 (isDefined!7497 (getValueByKey!231 (toList!2277 lt!1525637) key!2048)))))

(declare-fun d!1267208 () Bool)

(assert (=> d!1267208 e!2675968))

(declare-fun res!1764164 () Bool)

(assert (=> d!1267208 (=> res!1764164 e!2675968)))

(declare-fun e!2675963 () Bool)

(assert (=> d!1267208 (= res!1764164 e!2675963)))

(declare-fun res!1764165 () Bool)

(assert (=> d!1267208 (=> (not res!1764165) (not e!2675963))))

(declare-fun lt!1525694 () Bool)

(assert (=> d!1267208 (= res!1764165 (not lt!1525694))))

(declare-fun lt!1525693 () Bool)

(assert (=> d!1267208 (= lt!1525694 lt!1525693)))

(declare-fun lt!1525688 () Unit!67051)

(assert (=> d!1267208 (= lt!1525688 e!2675966)))

(assert (=> d!1267208 (= c!731907 lt!1525693)))

(assert (=> d!1267208 (= lt!1525693 (containsKey!273 (toList!2277 lt!1525637) key!2048))))

(assert (=> d!1267208 (= (contains!9975 lt!1525637 key!2048) lt!1525694)))

(declare-fun b!4304107 () Bool)

(declare-fun e!2675965 () Unit!67051)

(declare-fun Unit!67055 () Unit!67051)

(assert (=> b!4304107 (= e!2675965 Unit!67055)))

(declare-fun b!4304108 () Bool)

(assert (=> b!4304108 (= e!2675963 (not (contains!9978 (keys!15983 lt!1525637) key!2048)))))

(declare-fun b!4304109 () Bool)

(assert (=> b!4304109 false))

(declare-fun lt!1525690 () Unit!67051)

(declare-fun lt!1525692 () Unit!67051)

(assert (=> b!4304109 (= lt!1525690 lt!1525692)))

(assert (=> b!4304109 (containsKey!273 (toList!2277 lt!1525637) key!2048)))

(assert (=> b!4304109 (= lt!1525692 (lemmaInGetKeysListThenContainsKey!37 (toList!2277 lt!1525637) key!2048))))

(declare-fun Unit!67056 () Unit!67051)

(assert (=> b!4304109 (= e!2675965 Unit!67056)))

(declare-fun b!4304110 () Bool)

(assert (=> b!4304110 (= e!2675966 e!2675965)))

(declare-fun c!731905 () Bool)

(assert (=> b!4304110 (= c!731905 call!296799)))

(declare-fun b!4304111 () Bool)

(assert (=> b!4304111 (= e!2675964 (contains!9978 (keys!15983 lt!1525637) key!2048))))

(declare-fun b!4304112 () Bool)

(assert (=> b!4304112 (= e!2675967 (keys!15983 lt!1525637))))

(assert (= (and d!1267208 c!731907) b!4304104))

(assert (= (and d!1267208 (not c!731907)) b!4304110))

(assert (= (and b!4304110 c!731905) b!4304109))

(assert (= (and b!4304110 (not c!731905)) b!4304107))

(assert (= (or b!4304104 b!4304110) bm!296794))

(assert (= (and bm!296794 c!731906) b!4304105))

(assert (= (and bm!296794 (not c!731906)) b!4304112))

(assert (= (and d!1267208 res!1764165) b!4304108))

(assert (= (and d!1267208 (not res!1764164)) b!4304106))

(assert (= (and b!4304106 res!1764166) b!4304111))

(declare-fun m!4896873 () Bool)

(assert (=> bm!296794 m!4896873))

(declare-fun m!4896875 () Bool)

(assert (=> b!4304109 m!4896875))

(declare-fun m!4896877 () Bool)

(assert (=> b!4304109 m!4896877))

(declare-fun m!4896879 () Bool)

(assert (=> b!4304104 m!4896879))

(declare-fun m!4896881 () Bool)

(assert (=> b!4304104 m!4896881))

(assert (=> b!4304104 m!4896881))

(declare-fun m!4896883 () Bool)

(assert (=> b!4304104 m!4896883))

(declare-fun m!4896885 () Bool)

(assert (=> b!4304104 m!4896885))

(declare-fun m!4896887 () Bool)

(assert (=> b!4304111 m!4896887))

(assert (=> b!4304111 m!4896887))

(declare-fun m!4896889 () Bool)

(assert (=> b!4304111 m!4896889))

(declare-fun m!4896891 () Bool)

(assert (=> b!4304105 m!4896891))

(assert (=> b!4304108 m!4896887))

(assert (=> b!4304108 m!4896887))

(assert (=> b!4304108 m!4896889))

(assert (=> d!1267208 m!4896875))

(assert (=> b!4304112 m!4896887))

(assert (=> b!4304106 m!4896881))

(assert (=> b!4304106 m!4896881))

(assert (=> b!4304106 m!4896883))

(assert (=> b!4304049 d!1267208))

(declare-fun d!1267210 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7545 (List!48168) (InoxSet tuple2!46190))

(assert (=> d!1267210 (= (eq!118 (extractMap!294 (toList!2276 lt!1525628)) (+!213 (extractMap!294 (toList!2276 lt!1525639)) lt!1525631)) (= (content!7545 (toList!2277 (extractMap!294 (toList!2276 lt!1525628)))) (content!7545 (toList!2277 (+!213 (extractMap!294 (toList!2276 lt!1525639)) lt!1525631)))))))

(declare-fun bs!604341 () Bool)

(assert (= bs!604341 d!1267210))

(declare-fun m!4896893 () Bool)

(assert (=> bs!604341 m!4896893))

(declare-fun m!4896895 () Bool)

(assert (=> bs!604341 m!4896895))

(assert (=> b!4304049 d!1267210))

(declare-fun d!1267212 () Bool)

(declare-fun e!2675971 () Bool)

(assert (=> d!1267212 e!2675971))

(declare-fun res!1764171 () Bool)

(assert (=> d!1267212 (=> (not res!1764171) (not e!2675971))))

(declare-fun lt!1525704 () ListMap!1561)

(assert (=> d!1267212 (= res!1764171 (contains!9975 lt!1525704 (_1!26374 lt!1525631)))))

(declare-fun lt!1525705 () List!48168)

(assert (=> d!1267212 (= lt!1525704 (ListMap!1562 lt!1525705))))

(declare-fun lt!1525706 () Unit!67051)

(declare-fun lt!1525707 () Unit!67051)

(assert (=> d!1267212 (= lt!1525706 lt!1525707)))

(assert (=> d!1267212 (= (getValueByKey!231 lt!1525705 (_1!26374 lt!1525631)) (Some!10189 (_2!26374 lt!1525631)))))

(declare-fun lemmaContainsTupThenGetReturnValue!57 (List!48168 K!9194 V!9396) Unit!67051)

(assert (=> d!1267212 (= lt!1525707 (lemmaContainsTupThenGetReturnValue!57 lt!1525705 (_1!26374 lt!1525631) (_2!26374 lt!1525631)))))

(declare-fun insertNoDuplicatedKeys!36 (List!48168 K!9194 V!9396) List!48168)

(assert (=> d!1267212 (= lt!1525705 (insertNoDuplicatedKeys!36 (toList!2277 lt!1525622) (_1!26374 lt!1525631) (_2!26374 lt!1525631)))))

(assert (=> d!1267212 (= (+!213 lt!1525622 lt!1525631) lt!1525704)))

(declare-fun b!4304117 () Bool)

(declare-fun res!1764172 () Bool)

(assert (=> b!4304117 (=> (not res!1764172) (not e!2675971))))

(assert (=> b!4304117 (= res!1764172 (= (getValueByKey!231 (toList!2277 lt!1525704) (_1!26374 lt!1525631)) (Some!10189 (_2!26374 lt!1525631))))))

(declare-fun b!4304118 () Bool)

(declare-fun contains!9979 (List!48168 tuple2!46190) Bool)

(assert (=> b!4304118 (= e!2675971 (contains!9979 (toList!2277 lt!1525704) lt!1525631))))

(assert (= (and d!1267212 res!1764171) b!4304117))

(assert (= (and b!4304117 res!1764172) b!4304118))

(declare-fun m!4896897 () Bool)

(assert (=> d!1267212 m!4896897))

(declare-fun m!4896899 () Bool)

(assert (=> d!1267212 m!4896899))

(declare-fun m!4896901 () Bool)

(assert (=> d!1267212 m!4896901))

(declare-fun m!4896903 () Bool)

(assert (=> d!1267212 m!4896903))

(declare-fun m!4896905 () Bool)

(assert (=> b!4304117 m!4896905))

(declare-fun m!4896907 () Bool)

(assert (=> b!4304118 m!4896907))

(assert (=> b!4304049 d!1267212))

(declare-fun d!1267214 () Bool)

(assert (=> d!1267214 (= (contains!9975 lt!1525637 key!2048) (contains!9975 lt!1525623 key!2048))))

(declare-fun lt!1525710 () Unit!67051)

(declare-fun choose!26210 (ListMap!1561 ListMap!1561 K!9194) Unit!67051)

(assert (=> d!1267214 (= lt!1525710 (choose!26210 lt!1525637 lt!1525623 key!2048))))

(assert (=> d!1267214 (eq!118 lt!1525637 lt!1525623)))

(assert (=> d!1267214 (= (lemmaEquivalentThenSameContains!45 lt!1525637 lt!1525623 key!2048) lt!1525710)))

(declare-fun bs!604342 () Bool)

(assert (= bs!604342 d!1267214))

(assert (=> bs!604342 m!4896763))

(assert (=> bs!604342 m!4896749))

(declare-fun m!4896909 () Bool)

(assert (=> bs!604342 m!4896909))

(declare-fun m!4896911 () Bool)

(assert (=> bs!604342 m!4896911))

(assert (=> b!4304049 d!1267214))

(declare-fun d!1267216 () Bool)

(assert (=> d!1267216 (allKeysSameHash!150 (removePairForKey!174 lt!1525636 key!2048) lt!1525625 (hashF!6557 thiss!42308))))

(declare-fun lt!1525713 () Unit!67051)

(declare-fun choose!26211 (List!48168 K!9194 (_ BitVec 64) Hashable!4495) Unit!67051)

(assert (=> d!1267216 (= lt!1525713 (choose!26211 lt!1525636 key!2048 lt!1525625 (hashF!6557 thiss!42308)))))

(assert (=> d!1267216 (noDuplicateKeys!180 lt!1525636)))

(assert (=> d!1267216 (= (lemmaRemovePairForKeyPreservesHash!136 lt!1525636 key!2048 lt!1525625 (hashF!6557 thiss!42308)) lt!1525713)))

(declare-fun bs!604343 () Bool)

(assert (= bs!604343 d!1267216))

(assert (=> bs!604343 m!4896803))

(assert (=> bs!604343 m!4896803))

(declare-fun m!4896913 () Bool)

(assert (=> bs!604343 m!4896913))

(declare-fun m!4896915 () Bool)

(assert (=> bs!604343 m!4896915))

(assert (=> bs!604343 m!4896847))

(assert (=> b!4304049 d!1267216))

(declare-fun d!1267218 () Bool)

(declare-fun e!2675972 () Bool)

(assert (=> d!1267218 e!2675972))

(declare-fun res!1764173 () Bool)

(assert (=> d!1267218 (=> (not res!1764173) (not e!2675972))))

(declare-fun lt!1525714 () ListMap!1561)

(assert (=> d!1267218 (= res!1764173 (contains!9975 lt!1525714 (_1!26374 lt!1525631)))))

(declare-fun lt!1525715 () List!48168)

(assert (=> d!1267218 (= lt!1525714 (ListMap!1562 lt!1525715))))

(declare-fun lt!1525716 () Unit!67051)

(declare-fun lt!1525717 () Unit!67051)

(assert (=> d!1267218 (= lt!1525716 lt!1525717)))

(assert (=> d!1267218 (= (getValueByKey!231 lt!1525715 (_1!26374 lt!1525631)) (Some!10189 (_2!26374 lt!1525631)))))

(assert (=> d!1267218 (= lt!1525717 (lemmaContainsTupThenGetReturnValue!57 lt!1525715 (_1!26374 lt!1525631) (_2!26374 lt!1525631)))))

(assert (=> d!1267218 (= lt!1525715 (insertNoDuplicatedKeys!36 (toList!2277 (extractMap!294 (toList!2276 lt!1525639))) (_1!26374 lt!1525631) (_2!26374 lt!1525631)))))

(assert (=> d!1267218 (= (+!213 (extractMap!294 (toList!2276 lt!1525639)) lt!1525631) lt!1525714)))

(declare-fun b!4304119 () Bool)

(declare-fun res!1764174 () Bool)

(assert (=> b!4304119 (=> (not res!1764174) (not e!2675972))))

(assert (=> b!4304119 (= res!1764174 (= (getValueByKey!231 (toList!2277 lt!1525714) (_1!26374 lt!1525631)) (Some!10189 (_2!26374 lt!1525631))))))

(declare-fun b!4304120 () Bool)

(assert (=> b!4304120 (= e!2675972 (contains!9979 (toList!2277 lt!1525714) lt!1525631))))

(assert (= (and d!1267218 res!1764173) b!4304119))

(assert (= (and b!4304119 res!1764174) b!4304120))

(declare-fun m!4896917 () Bool)

(assert (=> d!1267218 m!4896917))

(declare-fun m!4896919 () Bool)

(assert (=> d!1267218 m!4896919))

(declare-fun m!4896921 () Bool)

(assert (=> d!1267218 m!4896921))

(declare-fun m!4896923 () Bool)

(assert (=> d!1267218 m!4896923))

(declare-fun m!4896925 () Bool)

(assert (=> b!4304119 m!4896925))

(declare-fun m!4896927 () Bool)

(assert (=> b!4304120 m!4896927))

(assert (=> b!4304049 d!1267218))

(declare-fun d!1267220 () Bool)

(assert (=> d!1267220 true))

(assert (=> d!1267220 true))

(declare-fun lambda!132335 () Int)

(declare-fun forall!8678 (List!48168 Int) Bool)

(assert (=> d!1267220 (= (allKeysSameHash!150 lt!1525635 lt!1525625 (hashF!6557 thiss!42308)) (forall!8678 lt!1525635 lambda!132335))))

(declare-fun bs!604344 () Bool)

(assert (= bs!604344 d!1267220))

(declare-fun m!4896929 () Bool)

(assert (=> bs!604344 m!4896929))

(assert (=> b!4304049 d!1267220))

(declare-fun bs!604345 () Bool)

(declare-fun d!1267222 () Bool)

(assert (= bs!604345 (and d!1267222 b!4304049)))

(declare-fun lambda!132338 () Int)

(assert (=> bs!604345 (= lambda!132338 lambda!132324)))

(declare-fun bs!604346 () Bool)

(assert (= bs!604346 (and d!1267222 d!1267196)))

(assert (=> bs!604346 (= lambda!132338 lambda!132329)))

(declare-fun bs!604347 () Bool)

(assert (= bs!604347 (and d!1267222 d!1267198)))

(assert (=> bs!604347 (not (= lambda!132338 lambda!132332))))

(declare-fun lt!1525720 () ListMap!1561)

(declare-fun invariantList!557 (List!48168) Bool)

(assert (=> d!1267222 (invariantList!557 (toList!2277 lt!1525720))))

(declare-fun e!2675975 () ListMap!1561)

(assert (=> d!1267222 (= lt!1525720 e!2675975)))

(declare-fun c!731910 () Bool)

(assert (=> d!1267222 (= c!731910 ((_ is Cons!48045) (toList!2276 lt!1525628)))))

(assert (=> d!1267222 (forall!8677 (toList!2276 lt!1525628) lambda!132338)))

(assert (=> d!1267222 (= (extractMap!294 (toList!2276 lt!1525628)) lt!1525720)))

(declare-fun b!4304129 () Bool)

(declare-fun addToMapMapFromBucket!28 (List!48168 ListMap!1561) ListMap!1561)

(assert (=> b!4304129 (= e!2675975 (addToMapMapFromBucket!28 (_2!26376 (h!53470 (toList!2276 lt!1525628))) (extractMap!294 (t!354948 (toList!2276 lt!1525628)))))))

(declare-fun b!4304130 () Bool)

(assert (=> b!4304130 (= e!2675975 (ListMap!1562 Nil!48044))))

(assert (= (and d!1267222 c!731910) b!4304129))

(assert (= (and d!1267222 (not c!731910)) b!4304130))

(declare-fun m!4896931 () Bool)

(assert (=> d!1267222 m!4896931))

(declare-fun m!4896933 () Bool)

(assert (=> d!1267222 m!4896933))

(declare-fun m!4896935 () Bool)

(assert (=> b!4304129 m!4896935))

(assert (=> b!4304129 m!4896935))

(declare-fun m!4896937 () Bool)

(assert (=> b!4304129 m!4896937))

(assert (=> b!4304049 d!1267222))

(declare-fun bs!604348 () Bool)

(declare-fun d!1267224 () Bool)

(assert (= bs!604348 (and d!1267224 b!4304049)))

(declare-fun lambda!132339 () Int)

(assert (=> bs!604348 (= lambda!132339 lambda!132324)))

(declare-fun bs!604349 () Bool)

(assert (= bs!604349 (and d!1267224 d!1267196)))

(assert (=> bs!604349 (= lambda!132339 lambda!132329)))

(declare-fun bs!604350 () Bool)

(assert (= bs!604350 (and d!1267224 d!1267198)))

(assert (=> bs!604350 (not (= lambda!132339 lambda!132332))))

(declare-fun bs!604351 () Bool)

(assert (= bs!604351 (and d!1267224 d!1267222)))

(assert (=> bs!604351 (= lambda!132339 lambda!132338)))

(declare-fun lt!1525721 () ListMap!1561)

(assert (=> d!1267224 (invariantList!557 (toList!2277 lt!1525721))))

(declare-fun e!2675976 () ListMap!1561)

(assert (=> d!1267224 (= lt!1525721 e!2675976)))

(declare-fun c!731911 () Bool)

(assert (=> d!1267224 (= c!731911 ((_ is Cons!48045) (toList!2276 lt!1525639)))))

(assert (=> d!1267224 (forall!8677 (toList!2276 lt!1525639) lambda!132339)))

(assert (=> d!1267224 (= (extractMap!294 (toList!2276 lt!1525639)) lt!1525721)))

(declare-fun b!4304131 () Bool)

(assert (=> b!4304131 (= e!2675976 (addToMapMapFromBucket!28 (_2!26376 (h!53470 (toList!2276 lt!1525639))) (extractMap!294 (t!354948 (toList!2276 lt!1525639)))))))

(declare-fun b!4304132 () Bool)

(assert (=> b!4304132 (= e!2675976 (ListMap!1562 Nil!48044))))

(assert (= (and d!1267224 c!731911) b!4304131))

(assert (= (and d!1267224 (not c!731911)) b!4304132))

(declare-fun m!4896939 () Bool)

(assert (=> d!1267224 m!4896939))

(declare-fun m!4896941 () Bool)

(assert (=> d!1267224 m!4896941))

(declare-fun m!4896943 () Bool)

(assert (=> b!4304131 m!4896943))

(assert (=> b!4304131 m!4896943))

(declare-fun m!4896945 () Bool)

(assert (=> b!4304131 m!4896945))

(assert (=> b!4304049 d!1267224))

(declare-fun bs!604352 () Bool)

(declare-fun d!1267226 () Bool)

(assert (= bs!604352 (and d!1267226 d!1267220)))

(declare-fun lambda!132340 () Int)

(assert (=> bs!604352 (= lambda!132340 lambda!132335)))

(assert (=> d!1267226 true))

(assert (=> d!1267226 true))

(assert (=> d!1267226 (= (allKeysSameHash!150 lt!1525636 lt!1525625 (hashF!6557 thiss!42308)) (forall!8678 lt!1525636 lambda!132340))))

(declare-fun bs!604353 () Bool)

(assert (= bs!604353 d!1267226))

(declare-fun m!4896947 () Bool)

(assert (=> bs!604353 m!4896947))

(assert (=> b!4304049 d!1267226))

(declare-fun bs!604354 () Bool)

(declare-fun d!1267228 () Bool)

(assert (= bs!604354 (and d!1267228 d!1267196)))

(declare-fun lambda!132343 () Int)

(assert (=> bs!604354 (= lambda!132343 lambda!132329)))

(declare-fun bs!604355 () Bool)

(assert (= bs!604355 (and d!1267228 d!1267198)))

(assert (=> bs!604355 (not (= lambda!132343 lambda!132332))))

(declare-fun bs!604356 () Bool)

(assert (= bs!604356 (and d!1267228 d!1267222)))

(assert (=> bs!604356 (= lambda!132343 lambda!132338)))

(declare-fun bs!604357 () Bool)

(assert (= bs!604357 (and d!1267228 b!4304049)))

(assert (=> bs!604357 (= lambda!132343 lambda!132324)))

(declare-fun bs!604358 () Bool)

(assert (= bs!604358 (and d!1267228 d!1267224)))

(assert (=> bs!604358 (= lambda!132343 lambda!132339)))

(assert (=> d!1267228 (eq!118 (extractMap!294 (toList!2276 (+!214 lt!1525639 (tuple2!46195 lt!1525625 lt!1525630)))) (+!213 (extractMap!294 (toList!2276 lt!1525639)) (tuple2!46191 key!2048 v!9179)))))

(declare-fun lt!1525724 () Unit!67051)

(declare-fun choose!26212 (ListLongMap!885 (_ BitVec 64) List!48168 K!9194 V!9396 Hashable!4495) Unit!67051)

(assert (=> d!1267228 (= lt!1525724 (choose!26212 lt!1525639 lt!1525625 lt!1525630 key!2048 v!9179 (hashF!6557 thiss!42308)))))

(assert (=> d!1267228 (forall!8677 (toList!2276 lt!1525639) lambda!132343)))

(assert (=> d!1267228 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!50 lt!1525639 lt!1525625 lt!1525630 key!2048 v!9179 (hashF!6557 thiss!42308)) lt!1525724)))

(declare-fun bs!604359 () Bool)

(assert (= bs!604359 d!1267228))

(declare-fun m!4896949 () Bool)

(assert (=> bs!604359 m!4896949))

(declare-fun m!4896951 () Bool)

(assert (=> bs!604359 m!4896951))

(assert (=> bs!604359 m!4896951))

(declare-fun m!4896953 () Bool)

(assert (=> bs!604359 m!4896953))

(declare-fun m!4896955 () Bool)

(assert (=> bs!604359 m!4896955))

(assert (=> bs!604359 m!4896737))

(assert (=> bs!604359 m!4896751))

(assert (=> bs!604359 m!4896737))

(assert (=> bs!604359 m!4896953))

(declare-fun m!4896957 () Bool)

(assert (=> bs!604359 m!4896957))

(assert (=> b!4304049 d!1267228))

(declare-fun d!1267230 () Bool)

(declare-fun lt!1525727 () ListMap!1561)

(assert (=> d!1267230 (invariantList!557 (toList!2277 lt!1525727))))

(assert (=> d!1267230 (= lt!1525727 (extractMap!294 (toList!2276 (map!10011 (v!42075 (underlying!9388 (HashMap!4485 (Cell!18128 (_2!26375 lt!1525638)) (hashF!6557 thiss!42308) (_size!9202 thiss!42308) (defaultValue!4656 thiss!42308))))))))))

(assert (=> d!1267230 (valid!3563 (HashMap!4485 (Cell!18128 (_2!26375 lt!1525638)) (hashF!6557 thiss!42308) (_size!9202 thiss!42308) (defaultValue!4656 thiss!42308)))))

(assert (=> d!1267230 (= (map!10012 (HashMap!4485 (Cell!18128 (_2!26375 lt!1525638)) (hashF!6557 thiss!42308) (_size!9202 thiss!42308) (defaultValue!4656 thiss!42308))) lt!1525727)))

(declare-fun bs!604360 () Bool)

(assert (= bs!604360 d!1267230))

(declare-fun m!4896959 () Bool)

(assert (=> bs!604360 m!4896959))

(declare-fun m!4896961 () Bool)

(assert (=> bs!604360 m!4896961))

(declare-fun m!4896963 () Bool)

(assert (=> bs!604360 m!4896963))

(declare-fun m!4896965 () Bool)

(assert (=> bs!604360 m!4896965))

(assert (=> b!4304049 d!1267230))

(declare-fun bs!604361 () Bool)

(declare-fun b!4304157 () Bool)

(assert (= bs!604361 (and b!4304157 d!1267196)))

(declare-fun lambda!132346 () Int)

(assert (=> bs!604361 (= lambda!132346 lambda!132329)))

(declare-fun bs!604362 () Bool)

(assert (= bs!604362 (and b!4304157 d!1267198)))

(assert (=> bs!604362 (not (= lambda!132346 lambda!132332))))

(declare-fun bs!604363 () Bool)

(assert (= bs!604363 (and b!4304157 d!1267222)))

(assert (=> bs!604363 (= lambda!132346 lambda!132338)))

(declare-fun bs!604364 () Bool)

(assert (= bs!604364 (and b!4304157 b!4304049)))

(assert (=> bs!604364 (= lambda!132346 lambda!132324)))

(declare-fun bs!604365 () Bool)

(assert (= bs!604365 (and b!4304157 d!1267228)))

(assert (=> bs!604365 (= lambda!132346 lambda!132343)))

(declare-fun bs!604366 () Bool)

(assert (= bs!604366 (and b!4304157 d!1267224)))

(assert (=> bs!604366 (= lambda!132346 lambda!132339)))

(declare-fun b!4304155 () Bool)

(declare-fun e!2675991 () Unit!67051)

(declare-fun lt!1525770 () Unit!67051)

(assert (=> b!4304155 (= e!2675991 lt!1525770)))

(declare-fun lt!1525787 () ListLongMap!885)

(declare-fun call!296813 () ListLongMap!885)

(assert (=> b!4304155 (= lt!1525787 call!296813)))

(declare-fun lemmaInGenericMapThenInLongMap!118 (ListLongMap!885 K!9194 Hashable!4495) Unit!67051)

(assert (=> b!4304155 (= lt!1525770 (lemmaInGenericMapThenInLongMap!118 lt!1525787 key!2048 (hashF!6557 thiss!42308)))))

(declare-fun res!1764181 () Bool)

(declare-fun call!296815 () Bool)

(assert (=> b!4304155 (= res!1764181 call!296815)))

(declare-fun e!2675993 () Bool)

(assert (=> b!4304155 (=> (not res!1764181) (not e!2675993))))

(assert (=> b!4304155 e!2675993))

(declare-fun bm!296807 () Bool)

(declare-fun call!296816 () Bool)

(declare-datatypes ((Option!10191 0))(
  ( (None!10190) (Some!10190 (v!42082 tuple2!46190)) )
))
(declare-fun call!296817 () Option!10191)

(declare-fun isDefined!7498 (Option!10191) Bool)

(assert (=> bm!296807 (= call!296816 (isDefined!7498 call!296817))))

(declare-fun b!4304156 () Bool)

(declare-fun e!2675994 () Unit!67051)

(declare-fun Unit!67057 () Unit!67051)

(assert (=> b!4304156 (= e!2675994 Unit!67057)))

(declare-fun bm!296808 () Bool)

(declare-fun call!296814 () List!48168)

(declare-fun getPair!118 (List!48168 K!9194) Option!10191)

(assert (=> bm!296808 (= call!296817 (getPair!118 call!296814 key!2048))))

(declare-fun lt!1525779 () (_ BitVec 64))

(declare-fun e!2675997 () Unit!67051)

(declare-fun forallContained!1485 (List!48169 Int tuple2!46194) Unit!67051)

(assert (=> b!4304157 (= e!2675997 (forallContained!1485 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308)))) lambda!132346 (tuple2!46195 lt!1525779 (apply!10932 (v!42075 (underlying!9388 thiss!42308)) lt!1525779))))))

(declare-fun c!731923 () Bool)

(assert (=> b!4304157 (= c!731923 (not (contains!9977 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308)))) (tuple2!46195 lt!1525779 (apply!10932 (v!42075 (underlying!9388 thiss!42308)) lt!1525779)))))))

(declare-fun lt!1525774 () Unit!67051)

(declare-fun e!2675996 () Unit!67051)

(assert (=> b!4304157 (= lt!1525774 e!2675996)))

(declare-fun b!4304158 () Bool)

(assert (=> b!4304158 (= e!2675991 e!2675994)))

(declare-fun res!1764183 () Bool)

(assert (=> b!4304158 (= res!1764183 call!296815)))

(declare-fun e!2675995 () Bool)

(assert (=> b!4304158 (=> (not res!1764183) (not e!2675995))))

(declare-fun c!731920 () Bool)

(assert (=> b!4304158 (= c!731920 e!2675995)))

(declare-fun b!4304159 () Bool)

(declare-fun e!2675992 () Bool)

(assert (=> b!4304159 (= e!2675992 (isDefined!7498 (getPair!118 (apply!10932 (v!42075 (underlying!9388 thiss!42308)) lt!1525779) key!2048)))))

(declare-fun b!4304160 () Bool)

(assert (=> b!4304160 false))

(declare-fun lt!1525771 () Unit!67051)

(declare-fun lt!1525781 () Unit!67051)

(assert (=> b!4304160 (= lt!1525771 lt!1525781)))

(declare-fun lt!1525784 () List!48169)

(declare-fun lt!1525772 () List!48168)

(assert (=> b!4304160 (contains!9977 lt!1525784 (tuple2!46195 lt!1525779 lt!1525772))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!129 (List!48169 (_ BitVec 64) List!48168) Unit!67051)

(assert (=> b!4304160 (= lt!1525781 (lemmaGetValueByKeyImpliesContainsTuple!129 lt!1525784 lt!1525779 lt!1525772))))

(assert (=> b!4304160 (= lt!1525772 (apply!10932 (v!42075 (underlying!9388 thiss!42308)) lt!1525779))))

(assert (=> b!4304160 (= lt!1525784 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308)))))))

(declare-fun lt!1525769 () Unit!67051)

(declare-fun lt!1525785 () Unit!67051)

(assert (=> b!4304160 (= lt!1525769 lt!1525785)))

(declare-fun lt!1525782 () List!48169)

(declare-fun isDefined!7499 (Option!10189) Bool)

(assert (=> b!4304160 (isDefined!7499 (getValueByKey!230 lt!1525782 lt!1525779))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!157 (List!48169 (_ BitVec 64)) Unit!67051)

(assert (=> b!4304160 (= lt!1525785 (lemmaContainsKeyImpliesGetValueByKeyDefined!157 lt!1525782 lt!1525779))))

(assert (=> b!4304160 (= lt!1525782 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308)))))))

(declare-fun lt!1525768 () Unit!67051)

(declare-fun lt!1525776 () Unit!67051)

(assert (=> b!4304160 (= lt!1525768 lt!1525776)))

(declare-fun lt!1525786 () List!48169)

(declare-fun containsKey!274 (List!48169 (_ BitVec 64)) Bool)

(assert (=> b!4304160 (containsKey!274 lt!1525786 lt!1525779)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!119 (List!48169 (_ BitVec 64)) Unit!67051)

(assert (=> b!4304160 (= lt!1525776 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!119 lt!1525786 lt!1525779))))

(assert (=> b!4304160 (= lt!1525786 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308)))))))

(declare-fun Unit!67058 () Unit!67051)

(assert (=> b!4304160 (= e!2675996 Unit!67058)))

(declare-fun d!1267232 () Bool)

(declare-fun lt!1525775 () Bool)

(assert (=> d!1267232 (= lt!1525775 (contains!9975 (map!10012 thiss!42308) key!2048))))

(assert (=> d!1267232 (= lt!1525775 e!2675992)))

(declare-fun res!1764182 () Bool)

(assert (=> d!1267232 (=> (not res!1764182) (not e!2675992))))

(declare-fun contains!9980 (MutLongMap!4579 (_ BitVec 64)) Bool)

(assert (=> d!1267232 (= res!1764182 (contains!9980 (v!42075 (underlying!9388 thiss!42308)) lt!1525779))))

(declare-fun lt!1525783 () Unit!67051)

(assert (=> d!1267232 (= lt!1525783 e!2675991)))

(declare-fun c!731922 () Bool)

(assert (=> d!1267232 (= c!731922 (contains!9975 (extractMap!294 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308))))) key!2048))))

(declare-fun lt!1525778 () Unit!67051)

(assert (=> d!1267232 (= lt!1525778 e!2675997)))

(declare-fun c!731921 () Bool)

(assert (=> d!1267232 (= c!731921 (contains!9980 (v!42075 (underlying!9388 thiss!42308)) lt!1525779))))

(assert (=> d!1267232 (= lt!1525779 (hash!900 (hashF!6557 thiss!42308) key!2048))))

(assert (=> d!1267232 (valid!3563 thiss!42308)))

(assert (=> d!1267232 (= (contains!9974 thiss!42308 key!2048) lt!1525775)))

(declare-fun bm!296809 () Bool)

(declare-fun call!296812 () (_ BitVec 64))

(declare-fun apply!10933 (ListLongMap!885 (_ BitVec 64)) List!48168)

(assert (=> bm!296809 (= call!296814 (apply!10933 (ite c!731922 lt!1525787 call!296813) call!296812))))

(declare-fun bm!296810 () Bool)

(assert (=> bm!296810 (= call!296815 (contains!9976 (ite c!731922 lt!1525787 call!296813) call!296812))))

(declare-fun b!4304161 () Bool)

(assert (=> b!4304161 false))

(declare-fun lt!1525773 () Unit!67051)

(declare-fun lt!1525780 () Unit!67051)

(assert (=> b!4304161 (= lt!1525773 lt!1525780)))

(declare-fun lt!1525777 () ListLongMap!885)

(assert (=> b!4304161 (contains!9975 (extractMap!294 (toList!2276 lt!1525777)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!118 (ListLongMap!885 K!9194 Hashable!4495) Unit!67051)

(assert (=> b!4304161 (= lt!1525780 (lemmaInLongMapThenInGenericMap!118 lt!1525777 key!2048 (hashF!6557 thiss!42308)))))

(assert (=> b!4304161 (= lt!1525777 call!296813)))

(declare-fun Unit!67059 () Unit!67051)

(assert (=> b!4304161 (= e!2675994 Unit!67059)))

(declare-fun b!4304162 () Bool)

(declare-fun Unit!67060 () Unit!67051)

(assert (=> b!4304162 (= e!2675997 Unit!67060)))

(declare-fun b!4304163 () Bool)

(assert (=> b!4304163 (= e!2675995 call!296816)))

(declare-fun bm!296811 () Bool)

(assert (=> bm!296811 (= call!296813 (map!10011 (v!42075 (underlying!9388 thiss!42308))))))

(declare-fun b!4304164 () Bool)

(assert (=> b!4304164 (= e!2675993 call!296816)))

(declare-fun b!4304165 () Bool)

(declare-fun Unit!67061 () Unit!67051)

(assert (=> b!4304165 (= e!2675996 Unit!67061)))

(declare-fun bm!296812 () Bool)

(assert (=> bm!296812 (= call!296812 (hash!900 (hashF!6557 thiss!42308) key!2048))))

(assert (= (and d!1267232 c!731921) b!4304157))

(assert (= (and d!1267232 (not c!731921)) b!4304162))

(assert (= (and b!4304157 c!731923) b!4304160))

(assert (= (and b!4304157 (not c!731923)) b!4304165))

(assert (= (and d!1267232 c!731922) b!4304155))

(assert (= (and d!1267232 (not c!731922)) b!4304158))

(assert (= (and b!4304155 res!1764181) b!4304164))

(assert (= (and b!4304158 res!1764183) b!4304163))

(assert (= (and b!4304158 c!731920) b!4304161))

(assert (= (and b!4304158 (not c!731920)) b!4304156))

(assert (= (or b!4304155 b!4304164 b!4304158 b!4304163) bm!296812))

(assert (= (or b!4304155 b!4304158 b!4304163 b!4304161) bm!296811))

(assert (= (or b!4304155 b!4304158) bm!296810))

(assert (= (or b!4304164 b!4304163) bm!296809))

(assert (= (or b!4304164 b!4304163) bm!296808))

(assert (= (or b!4304164 b!4304163) bm!296807))

(assert (= (and d!1267232 res!1764182) b!4304159))

(declare-fun m!4896967 () Bool)

(assert (=> b!4304155 m!4896967))

(assert (=> bm!296811 m!4896797))

(declare-fun m!4896969 () Bool)

(assert (=> bm!296810 m!4896969))

(declare-fun m!4896971 () Bool)

(assert (=> b!4304159 m!4896971))

(assert (=> b!4304159 m!4896971))

(declare-fun m!4896973 () Bool)

(assert (=> b!4304159 m!4896973))

(assert (=> b!4304159 m!4896973))

(declare-fun m!4896975 () Bool)

(assert (=> b!4304159 m!4896975))

(declare-fun m!4896977 () Bool)

(assert (=> bm!296807 m!4896977))

(assert (=> bm!296812 m!4896807))

(declare-fun m!4896979 () Bool)

(assert (=> b!4304160 m!4896979))

(declare-fun m!4896981 () Bool)

(assert (=> b!4304160 m!4896981))

(assert (=> b!4304160 m!4896971))

(declare-fun m!4896983 () Bool)

(assert (=> b!4304160 m!4896983))

(declare-fun m!4896985 () Bool)

(assert (=> b!4304160 m!4896985))

(declare-fun m!4896987 () Bool)

(assert (=> b!4304160 m!4896987))

(assert (=> b!4304160 m!4896985))

(declare-fun m!4896989 () Bool)

(assert (=> b!4304160 m!4896989))

(declare-fun m!4896991 () Bool)

(assert (=> b!4304160 m!4896991))

(assert (=> b!4304160 m!4896797))

(declare-fun m!4896993 () Bool)

(assert (=> bm!296809 m!4896993))

(declare-fun m!4896995 () Bool)

(assert (=> b!4304161 m!4896995))

(assert (=> b!4304161 m!4896995))

(declare-fun m!4896997 () Bool)

(assert (=> b!4304161 m!4896997))

(declare-fun m!4896999 () Bool)

(assert (=> b!4304161 m!4896999))

(assert (=> b!4304157 m!4896797))

(assert (=> b!4304157 m!4896971))

(declare-fun m!4897001 () Bool)

(assert (=> b!4304157 m!4897001))

(declare-fun m!4897003 () Bool)

(assert (=> b!4304157 m!4897003))

(declare-fun m!4897005 () Bool)

(assert (=> bm!296808 m!4897005))

(assert (=> d!1267232 m!4896797))

(declare-fun m!4897007 () Bool)

(assert (=> d!1267232 m!4897007))

(declare-fun m!4897009 () Bool)

(assert (=> d!1267232 m!4897009))

(declare-fun m!4897011 () Bool)

(assert (=> d!1267232 m!4897011))

(assert (=> d!1267232 m!4896799))

(declare-fun m!4897013 () Bool)

(assert (=> d!1267232 m!4897013))

(assert (=> d!1267232 m!4897009))

(assert (=> d!1267232 m!4896807))

(assert (=> d!1267232 m!4896781))

(assert (=> d!1267232 m!4896799))

(assert (=> b!4304043 d!1267232))

(declare-fun d!1267234 () Bool)

(assert (=> d!1267234 (= (map!10011 (v!42075 (underlying!9388 thiss!42308))) (map!10013 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308))))))))

(declare-fun bs!604367 () Bool)

(assert (= bs!604367 d!1267234))

(declare-fun m!4897015 () Bool)

(assert (=> bs!604367 m!4897015))

(assert (=> b!4304043 d!1267234))

(declare-fun d!1267236 () Bool)

(declare-fun lt!1525788 () ListMap!1561)

(assert (=> d!1267236 (invariantList!557 (toList!2277 lt!1525788))))

(assert (=> d!1267236 (= lt!1525788 (extractMap!294 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308))))))))

(assert (=> d!1267236 (valid!3563 thiss!42308)))

(assert (=> d!1267236 (= (map!10012 thiss!42308) lt!1525788)))

(declare-fun bs!604368 () Bool)

(assert (= bs!604368 d!1267236))

(declare-fun m!4897017 () Bool)

(assert (=> bs!604368 m!4897017))

(assert (=> bs!604368 m!4896797))

(assert (=> bs!604368 m!4897009))

(assert (=> bs!604368 m!4896781))

(assert (=> b!4304043 d!1267236))

(declare-fun d!1267238 () Bool)

(declare-fun res!1764188 () Bool)

(declare-fun e!2676002 () Bool)

(assert (=> d!1267238 (=> res!1764188 e!2676002)))

(assert (=> d!1267238 (= res!1764188 (and ((_ is Cons!48044) lt!1525635) (= (_1!26374 (h!53469 lt!1525635)) key!2048)))))

(assert (=> d!1267238 (= (containsKey!272 lt!1525635 key!2048) e!2676002)))

(declare-fun b!4304170 () Bool)

(declare-fun e!2676003 () Bool)

(assert (=> b!4304170 (= e!2676002 e!2676003)))

(declare-fun res!1764189 () Bool)

(assert (=> b!4304170 (=> (not res!1764189) (not e!2676003))))

(assert (=> b!4304170 (= res!1764189 ((_ is Cons!48044) lt!1525635))))

(declare-fun b!4304171 () Bool)

(assert (=> b!4304171 (= e!2676003 (containsKey!272 (t!354947 lt!1525635) key!2048))))

(assert (= (and d!1267238 (not res!1764188)) b!4304170))

(assert (= (and b!4304170 res!1764189) b!4304171))

(declare-fun m!4897019 () Bool)

(assert (=> b!4304171 m!4897019))

(assert (=> b!4304050 d!1267238))

(declare-fun call!296823 () ListLongMap!885)

(declare-fun e!2676014 () Bool)

(declare-fun call!296822 () ListLongMap!885)

(declare-fun b!4304190 () Bool)

(assert (=> b!4304190 (= e!2676014 (= call!296822 (+!214 call!296823 (tuple2!46195 lt!1525625 lt!1525630))))))

(declare-fun bm!296817 () Bool)

(assert (=> bm!296817 (= call!296823 (map!10011 (v!42075 (underlying!9388 thiss!42308))))))

(declare-fun b!4304191 () Bool)

(declare-fun e!2676017 () tuple2!46192)

(declare-datatypes ((tuple2!46196 0))(
  ( (tuple2!46197 (_1!26377 Bool) (_2!26377 LongMapFixedSize!9158)) )
))
(declare-fun lt!1525798 () tuple2!46196)

(assert (=> b!4304191 (= e!2676017 (tuple2!46193 (_1!26377 lt!1525798) (LongMap!4579 (Cell!18126 (_2!26377 lt!1525798)))))))

(declare-fun lt!1525799 () tuple2!46192)

(declare-fun update!377 (LongMapFixedSize!9158 (_ BitVec 64) List!48168) tuple2!46196)

(assert (=> b!4304191 (= lt!1525798 (update!377 (v!42074 (underlying!9387 (_2!26375 lt!1525799))) lt!1525625 lt!1525630))))

(declare-fun b!4304193 () Bool)

(declare-fun e!2676015 () Bool)

(declare-fun e!2676016 () Bool)

(assert (=> b!4304193 (= e!2676015 e!2676016)))

(declare-fun c!731932 () Bool)

(declare-fun lt!1525797 () tuple2!46192)

(assert (=> b!4304193 (= c!731932 (_1!26375 lt!1525797))))

(declare-fun b!4304194 () Bool)

(declare-fun e!2676018 () tuple2!46192)

(declare-fun lt!1525800 () tuple2!46192)

(assert (=> b!4304194 (= e!2676018 (tuple2!46193 (_1!26375 lt!1525800) (_2!26375 lt!1525800)))))

(declare-fun repack!43 (MutLongMap!4579) tuple2!46192)

(assert (=> b!4304194 (= lt!1525800 (repack!43 (v!42075 (underlying!9388 thiss!42308))))))

(declare-fun b!4304195 () Bool)

(assert (=> b!4304195 (= e!2676017 (tuple2!46193 false (_2!26375 lt!1525799)))))

(declare-fun b!4304196 () Bool)

(assert (=> b!4304196 (= e!2676018 (tuple2!46193 true (v!42075 (underlying!9388 thiss!42308))))))

(declare-fun b!4304197 () Bool)

(assert (=> b!4304197 (= e!2676016 (= call!296822 call!296823))))

(declare-fun b!4304192 () Bool)

(assert (=> b!4304192 (= e!2676016 e!2676014)))

(declare-fun res!1764198 () Bool)

(assert (=> b!4304192 (= res!1764198 (contains!9976 call!296822 lt!1525625))))

(assert (=> b!4304192 (=> (not res!1764198) (not e!2676014))))

(declare-fun d!1267240 () Bool)

(assert (=> d!1267240 e!2676015))

(declare-fun res!1764196 () Bool)

(assert (=> d!1267240 (=> (not res!1764196) (not e!2676015))))

(assert (=> d!1267240 (= res!1764196 ((_ is LongMap!4579) (_2!26375 lt!1525797)))))

(assert (=> d!1267240 (= lt!1525797 e!2676017)))

(declare-fun c!731931 () Bool)

(assert (=> d!1267240 (= c!731931 (_1!26375 lt!1525799))))

(assert (=> d!1267240 (= lt!1525799 e!2676018)))

(declare-fun c!731930 () Bool)

(declare-fun imbalanced!39 (MutLongMap!4579) Bool)

(assert (=> d!1267240 (= c!731930 (imbalanced!39 (v!42075 (underlying!9388 thiss!42308))))))

(assert (=> d!1267240 (valid!3564 (v!42075 (underlying!9388 thiss!42308)))))

(assert (=> d!1267240 (= (update!376 (v!42075 (underlying!9388 thiss!42308)) lt!1525625 lt!1525630) lt!1525797)))

(declare-fun bm!296818 () Bool)

(assert (=> bm!296818 (= call!296822 (map!10011 (_2!26375 lt!1525797)))))

(declare-fun b!4304198 () Bool)

(declare-fun res!1764197 () Bool)

(assert (=> b!4304198 (=> (not res!1764197) (not e!2676015))))

(assert (=> b!4304198 (= res!1764197 (valid!3564 (_2!26375 lt!1525797)))))

(assert (= (and d!1267240 c!731930) b!4304194))

(assert (= (and d!1267240 (not c!731930)) b!4304196))

(assert (= (and d!1267240 c!731931) b!4304191))

(assert (= (and d!1267240 (not c!731931)) b!4304195))

(assert (= (and d!1267240 res!1764196) b!4304198))

(assert (= (and b!4304198 res!1764197) b!4304193))

(assert (= (and b!4304193 c!731932) b!4304192))

(assert (= (and b!4304193 (not c!731932)) b!4304197))

(assert (= (and b!4304192 res!1764198) b!4304190))

(assert (= (or b!4304192 b!4304190 b!4304197) bm!296818))

(assert (= (or b!4304190 b!4304197) bm!296817))

(assert (=> bm!296817 m!4896797))

(declare-fun m!4897021 () Bool)

(assert (=> bm!296818 m!4897021))

(declare-fun m!4897023 () Bool)

(assert (=> b!4304190 m!4897023))

(declare-fun m!4897025 () Bool)

(assert (=> b!4304198 m!4897025))

(declare-fun m!4897027 () Bool)

(assert (=> b!4304191 m!4897027))

(declare-fun m!4897029 () Bool)

(assert (=> b!4304192 m!4897029))

(declare-fun m!4897031 () Bool)

(assert (=> b!4304194 m!4897031))

(declare-fun m!4897033 () Bool)

(assert (=> d!1267240 m!4897033))

(declare-fun m!4897035 () Bool)

(assert (=> d!1267240 m!4897035))

(assert (=> b!4304044 d!1267240))

(declare-fun b!4304210 () Bool)

(declare-fun e!2676023 () List!48168)

(assert (=> b!4304210 (= e!2676023 Nil!48044)))

(declare-fun b!4304209 () Bool)

(assert (=> b!4304209 (= e!2676023 (Cons!48044 (h!53469 lt!1525636) (removePairForKey!174 (t!354947 lt!1525636) key!2048)))))

(declare-fun b!4304207 () Bool)

(declare-fun e!2676024 () List!48168)

(assert (=> b!4304207 (= e!2676024 (t!354947 lt!1525636))))

(declare-fun d!1267242 () Bool)

(declare-fun lt!1525803 () List!48168)

(assert (=> d!1267242 (not (containsKey!272 lt!1525803 key!2048))))

(assert (=> d!1267242 (= lt!1525803 e!2676024)))

(declare-fun c!731937 () Bool)

(assert (=> d!1267242 (= c!731937 (and ((_ is Cons!48044) lt!1525636) (= (_1!26374 (h!53469 lt!1525636)) key!2048)))))

(assert (=> d!1267242 (noDuplicateKeys!180 lt!1525636)))

(assert (=> d!1267242 (= (removePairForKey!174 lt!1525636 key!2048) lt!1525803)))

(declare-fun b!4304208 () Bool)

(assert (=> b!4304208 (= e!2676024 e!2676023)))

(declare-fun c!731938 () Bool)

(assert (=> b!4304208 (= c!731938 ((_ is Cons!48044) lt!1525636))))

(assert (= (and d!1267242 c!731937) b!4304207))

(assert (= (and d!1267242 (not c!731937)) b!4304208))

(assert (= (and b!4304208 c!731938) b!4304209))

(assert (= (and b!4304208 (not c!731938)) b!4304210))

(declare-fun m!4897037 () Bool)

(assert (=> b!4304209 m!4897037))

(declare-fun m!4897039 () Bool)

(assert (=> d!1267242 m!4897039))

(assert (=> d!1267242 m!4896847))

(assert (=> b!4304044 d!1267242))

(declare-fun d!1267244 () Bool)

(declare-fun e!2676027 () Bool)

(assert (=> d!1267244 e!2676027))

(declare-fun c!731941 () Bool)

(assert (=> d!1267244 (= c!731941 (contains!9980 (v!42075 (underlying!9388 thiss!42308)) lt!1525625))))

(declare-fun lt!1525806 () List!48168)

(declare-fun apply!10934 (LongMapFixedSize!9158 (_ BitVec 64)) List!48168)

(assert (=> d!1267244 (= lt!1525806 (apply!10934 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))) lt!1525625))))

(assert (=> d!1267244 (valid!3564 (v!42075 (underlying!9388 thiss!42308)))))

(assert (=> d!1267244 (= (apply!10932 (v!42075 (underlying!9388 thiss!42308)) lt!1525625) lt!1525806)))

(declare-fun b!4304215 () Bool)

(declare-fun get!15539 (Option!10189) List!48168)

(assert (=> b!4304215 (= e!2676027 (= lt!1525806 (get!15539 (getValueByKey!230 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308)))) lt!1525625))))))

(declare-fun b!4304216 () Bool)

(declare-fun dynLambda!20391 (Int (_ BitVec 64)) List!48168)

(assert (=> b!4304216 (= e!2676027 (= lt!1525806 (dynLambda!20391 (defaultEntry!4964 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308))))) lt!1525625)))))

(assert (=> b!4304216 ((_ is LongMap!4579) (v!42075 (underlying!9388 thiss!42308)))))

(assert (= (and d!1267244 c!731941) b!4304215))

(assert (= (and d!1267244 (not c!731941)) b!4304216))

(declare-fun b_lambda!126483 () Bool)

(assert (=> (not b_lambda!126483) (not b!4304216)))

(declare-fun t!354950 () Bool)

(declare-fun tb!257265 () Bool)

(assert (=> (and b!4304039 (= (defaultEntry!4964 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308))))) (defaultEntry!4964 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308)))))) t!354950) tb!257265))

(assert (=> b!4304216 t!354950))

(declare-fun result!314602 () Bool)

(declare-fun b_and!339673 () Bool)

(assert (= b_and!339669 (and (=> t!354950 result!314602) b_and!339673)))

(declare-fun m!4897041 () Bool)

(assert (=> d!1267244 m!4897041))

(declare-fun m!4897043 () Bool)

(assert (=> d!1267244 m!4897043))

(assert (=> d!1267244 m!4897035))

(assert (=> b!4304215 m!4896797))

(declare-fun m!4897045 () Bool)

(assert (=> b!4304215 m!4897045))

(assert (=> b!4304215 m!4897045))

(declare-fun m!4897047 () Bool)

(assert (=> b!4304215 m!4897047))

(declare-fun m!4897049 () Bool)

(assert (=> b!4304216 m!4897049))

(assert (=> b!4304044 d!1267244))

(declare-fun d!1267246 () Bool)

(declare-fun hash!905 (Hashable!4495 K!9194) (_ BitVec 64))

(assert (=> d!1267246 (= (hash!900 (hashF!6557 thiss!42308) key!2048) (hash!905 (hashF!6557 thiss!42308) key!2048))))

(declare-fun bs!604369 () Bool)

(assert (= bs!604369 d!1267246))

(declare-fun m!4897051 () Bool)

(assert (=> bs!604369 m!4897051))

(assert (=> b!4304044 d!1267246))

(declare-fun bs!604370 () Bool)

(declare-fun d!1267248 () Bool)

(assert (= bs!604370 (and d!1267248 d!1267196)))

(declare-fun lambda!132349 () Int)

(assert (=> bs!604370 (not (= lambda!132349 lambda!132329))))

(declare-fun bs!604371 () Bool)

(assert (= bs!604371 (and d!1267248 d!1267198)))

(assert (=> bs!604371 (= lambda!132349 lambda!132332)))

(declare-fun bs!604372 () Bool)

(assert (= bs!604372 (and d!1267248 b!4304049)))

(assert (=> bs!604372 (not (= lambda!132349 lambda!132324))))

(declare-fun bs!604373 () Bool)

(assert (= bs!604373 (and d!1267248 d!1267228)))

(assert (=> bs!604373 (not (= lambda!132349 lambda!132343))))

(declare-fun bs!604374 () Bool)

(assert (= bs!604374 (and d!1267248 d!1267224)))

(assert (=> bs!604374 (not (= lambda!132349 lambda!132339))))

(declare-fun bs!604375 () Bool)

(assert (= bs!604375 (and d!1267248 d!1267222)))

(assert (=> bs!604375 (not (= lambda!132349 lambda!132338))))

(declare-fun bs!604376 () Bool)

(assert (= bs!604376 (and d!1267248 b!4304157)))

(assert (=> bs!604376 (not (= lambda!132349 lambda!132346))))

(assert (=> d!1267248 true))

(assert (=> d!1267248 (= (allKeysSameHashInMap!298 lt!1525628 (hashF!6557 thiss!42308)) (forall!8677 (toList!2276 lt!1525628) lambda!132349))))

(declare-fun bs!604377 () Bool)

(assert (= bs!604377 d!1267248))

(declare-fun m!4897053 () Bool)

(assert (=> bs!604377 m!4897053))

(assert (=> b!4304046 d!1267248))

(declare-fun d!1267250 () Bool)

(declare-fun valid!3565 (LongMapFixedSize!9158) Bool)

(assert (=> d!1267250 (= (valid!3564 (_2!26375 lt!1525638)) (valid!3565 (v!42074 (underlying!9387 (_2!26375 lt!1525638)))))))

(declare-fun bs!604378 () Bool)

(assert (= bs!604378 d!1267250))

(declare-fun m!4897055 () Bool)

(assert (=> bs!604378 m!4897055))

(assert (=> b!4304041 d!1267250))

(declare-fun bs!604379 () Bool)

(declare-fun b!4304221 () Bool)

(assert (= bs!604379 (and b!4304221 d!1267196)))

(declare-fun lambda!132352 () Int)

(assert (=> bs!604379 (= lambda!132352 lambda!132329)))

(declare-fun bs!604380 () Bool)

(assert (= bs!604380 (and b!4304221 d!1267198)))

(assert (=> bs!604380 (not (= lambda!132352 lambda!132332))))

(declare-fun bs!604381 () Bool)

(assert (= bs!604381 (and b!4304221 b!4304049)))

(assert (=> bs!604381 (= lambda!132352 lambda!132324)))

(declare-fun bs!604382 () Bool)

(assert (= bs!604382 (and b!4304221 d!1267228)))

(assert (=> bs!604382 (= lambda!132352 lambda!132343)))

(declare-fun bs!604383 () Bool)

(assert (= bs!604383 (and b!4304221 d!1267224)))

(assert (=> bs!604383 (= lambda!132352 lambda!132339)))

(declare-fun bs!604384 () Bool)

(assert (= bs!604384 (and b!4304221 d!1267248)))

(assert (=> bs!604384 (not (= lambda!132352 lambda!132349))))

(declare-fun bs!604385 () Bool)

(assert (= bs!604385 (and b!4304221 d!1267222)))

(assert (=> bs!604385 (= lambda!132352 lambda!132338)))

(declare-fun bs!604386 () Bool)

(assert (= bs!604386 (and b!4304221 b!4304157)))

(assert (=> bs!604386 (= lambda!132352 lambda!132346)))

(declare-fun d!1267252 () Bool)

(declare-fun res!1764203 () Bool)

(declare-fun e!2676030 () Bool)

(assert (=> d!1267252 (=> (not res!1764203) (not e!2676030))))

(assert (=> d!1267252 (= res!1764203 (valid!3564 (v!42075 (underlying!9388 thiss!42308))))))

(assert (=> d!1267252 (= (valid!3563 thiss!42308) e!2676030)))

(declare-fun res!1764204 () Bool)

(assert (=> b!4304221 (=> (not res!1764204) (not e!2676030))))

(assert (=> b!4304221 (= res!1764204 (forall!8677 (toList!2276 (map!10011 (v!42075 (underlying!9388 thiss!42308)))) lambda!132352))))

(declare-fun b!4304222 () Bool)

(assert (=> b!4304222 (= e!2676030 (allKeysSameHashInMap!298 (map!10011 (v!42075 (underlying!9388 thiss!42308))) (hashF!6557 thiss!42308)))))

(assert (= (and d!1267252 res!1764203) b!4304221))

(assert (= (and b!4304221 res!1764204) b!4304222))

(assert (=> d!1267252 m!4897035))

(assert (=> b!4304221 m!4896797))

(declare-fun m!4897057 () Bool)

(assert (=> b!4304221 m!4897057))

(assert (=> b!4304222 m!4896797))

(assert (=> b!4304222 m!4896797))

(declare-fun m!4897059 () Bool)

(assert (=> b!4304222 m!4897059))

(assert (=> b!4304040 d!1267252))

(declare-fun d!1267254 () Bool)

(declare-fun res!1764205 () Bool)

(declare-fun e!2676031 () Bool)

(assert (=> d!1267254 (=> res!1764205 e!2676031)))

(assert (=> d!1267254 (= res!1764205 (not ((_ is Cons!48044) lt!1525630)))))

(assert (=> d!1267254 (= (noDuplicateKeys!180 lt!1525630) e!2676031)))

(declare-fun b!4304223 () Bool)

(declare-fun e!2676032 () Bool)

(assert (=> b!4304223 (= e!2676031 e!2676032)))

(declare-fun res!1764206 () Bool)

(assert (=> b!4304223 (=> (not res!1764206) (not e!2676032))))

(assert (=> b!4304223 (= res!1764206 (not (containsKey!272 (t!354947 lt!1525630) (_1!26374 (h!53469 lt!1525630)))))))

(declare-fun b!4304224 () Bool)

(assert (=> b!4304224 (= e!2676032 (noDuplicateKeys!180 (t!354947 lt!1525630)))))

(assert (= (and d!1267254 (not res!1764205)) b!4304223))

(assert (= (and b!4304223 res!1764206) b!4304224))

(declare-fun m!4897061 () Bool)

(assert (=> b!4304223 m!4897061))

(declare-fun m!4897063 () Bool)

(assert (=> b!4304224 m!4897063))

(assert (=> b!4304037 d!1267254))

(declare-fun b!4304229 () Bool)

(declare-fun e!2676035 () Bool)

(declare-fun tp!1322546 () Bool)

(assert (=> b!4304229 (= e!2676035 (and tp_is_empty!23457 tp_is_empty!23455 tp!1322546))))

(assert (=> b!4304039 (= tp!1322539 e!2676035)))

(assert (= (and b!4304039 ((_ is Cons!48044) (zeroValue!4838 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308))))))) b!4304229))

(declare-fun e!2676036 () Bool)

(declare-fun b!4304230 () Bool)

(declare-fun tp!1322547 () Bool)

(assert (=> b!4304230 (= e!2676036 (and tp_is_empty!23457 tp_is_empty!23455 tp!1322547))))

(assert (=> b!4304039 (= tp!1322537 e!2676036)))

(assert (= (and b!4304039 ((_ is Cons!48044) (minValue!4838 (v!42074 (underlying!9387 (v!42075 (underlying!9388 thiss!42308))))))) b!4304230))

(declare-fun tp!1322548 () Bool)

(declare-fun e!2676037 () Bool)

(declare-fun b!4304231 () Bool)

(assert (=> b!4304231 (= e!2676037 (and tp_is_empty!23457 tp_is_empty!23455 tp!1322548))))

(assert (=> b!4304048 (= tp!1322542 e!2676037)))

(assert (= (and b!4304048 ((_ is Cons!48044) mapDefault!20524)) b!4304231))

(declare-fun mapIsEmpty!20527 () Bool)

(declare-fun mapRes!20527 () Bool)

(assert (=> mapIsEmpty!20527 mapRes!20527))

(declare-fun mapNonEmpty!20527 () Bool)

(declare-fun tp!1322557 () Bool)

(declare-fun e!2676042 () Bool)

(assert (=> mapNonEmpty!20527 (= mapRes!20527 (and tp!1322557 e!2676042))))

(declare-fun mapValue!20527 () List!48168)

(declare-fun mapKey!20527 () (_ BitVec 32))

(declare-fun mapRest!20527 () (Array (_ BitVec 32) List!48168))

(assert (=> mapNonEmpty!20527 (= mapRest!20524 (store mapRest!20527 mapKey!20527 mapValue!20527))))

(declare-fun b!4304238 () Bool)

(declare-fun tp!1322556 () Bool)

(assert (=> b!4304238 (= e!2676042 (and tp_is_empty!23457 tp_is_empty!23455 tp!1322556))))

(declare-fun condMapEmpty!20527 () Bool)

(declare-fun mapDefault!20527 () List!48168)

(assert (=> mapNonEmpty!20524 (= condMapEmpty!20527 (= mapRest!20524 ((as const (Array (_ BitVec 32) List!48168)) mapDefault!20527)))))

(declare-fun e!2676043 () Bool)

(assert (=> mapNonEmpty!20524 (= tp!1322540 (and e!2676043 mapRes!20527))))

(declare-fun tp!1322555 () Bool)

(declare-fun b!4304239 () Bool)

(assert (=> b!4304239 (= e!2676043 (and tp_is_empty!23457 tp_is_empty!23455 tp!1322555))))

(assert (= (and mapNonEmpty!20524 condMapEmpty!20527) mapIsEmpty!20527))

(assert (= (and mapNonEmpty!20524 (not condMapEmpty!20527)) mapNonEmpty!20527))

(assert (= (and mapNonEmpty!20527 ((_ is Cons!48044) mapValue!20527)) b!4304238))

(assert (= (and mapNonEmpty!20524 ((_ is Cons!48044) mapDefault!20527)) b!4304239))

(declare-fun m!4897065 () Bool)

(assert (=> mapNonEmpty!20527 m!4897065))

(declare-fun e!2676044 () Bool)

(declare-fun tp!1322558 () Bool)

(declare-fun b!4304240 () Bool)

(assert (=> b!4304240 (= e!2676044 (and tp_is_empty!23457 tp_is_empty!23455 tp!1322558))))

(assert (=> mapNonEmpty!20524 (= tp!1322543 e!2676044)))

(assert (= (and mapNonEmpty!20524 ((_ is Cons!48044) mapValue!20524)) b!4304240))

(declare-fun b_lambda!126485 () Bool)

(assert (= b_lambda!126483 (or (and b!4304039 b_free!128275) b_lambda!126485)))

(declare-fun b_lambda!126487 () Bool)

(assert (= b_lambda!126481 (or b!4304049 b_lambda!126487)))

(declare-fun bs!604387 () Bool)

(declare-fun d!1267256 () Bool)

(assert (= bs!604387 (and d!1267256 b!4304049)))

(assert (=> bs!604387 (= (dynLambda!20390 lambda!132324 (h!53470 (toList!2276 lt!1525628))) (noDuplicateKeys!180 (_2!26376 (h!53470 (toList!2276 lt!1525628)))))))

(declare-fun m!4897067 () Bool)

(assert (=> bs!604387 m!4897067))

(assert (=> b!4304102 d!1267256))

(declare-fun b_lambda!126489 () Bool)

(assert (= b_lambda!126479 (or b!4304049 b_lambda!126489)))

(declare-fun bs!604388 () Bool)

(declare-fun d!1267258 () Bool)

(assert (= bs!604388 (and d!1267258 b!4304049)))

(assert (=> bs!604388 (= (dynLambda!20390 lambda!132324 (h!53470 (toList!2276 (map!10011 (_2!26375 lt!1525638))))) (noDuplicateKeys!180 (_2!26376 (h!53470 (toList!2276 (map!10011 (_2!26375 lt!1525638)))))))))

(declare-fun m!4897069 () Bool)

(assert (=> bs!604388 m!4897069))

(assert (=> b!4304056 d!1267258))

(check-sat (not b!4304231) (not d!1267242) (not b!4304063) tp_is_empty!23455 (not b!4304119) (not b!4304100) (not tb!257265) (not b!4304073) (not d!1267252) (not b_lambda!126487) (not bs!604387) (not d!1267248) (not b!4304215) (not d!1267222) (not b!4304192) (not d!1267214) (not b!4304155) (not b_lambda!126485) (not d!1267240) (not b!4304223) (not b!4304190) (not b_next!128979) (not b!4304131) (not d!1267210) (not b!4304160) (not bm!296809) (not bs!604388) (not b!4304062) (not d!1267216) (not b!4304095) (not d!1267188) (not b_next!128981) (not d!1267218) (not b!4304109) (not b!4304229) (not bm!296794) (not d!1267208) (not d!1267246) (not b!4304101) (not b!4304191) (not b!4304194) (not bm!296793) (not b!4304198) (not b!4304093) (not bm!296817) (not b!4304161) (not bm!296811) (not b!4304111) (not bm!296818) (not b!4304066) (not d!1267224) (not b!4304103) (not d!1267220) (not d!1267196) (not b!4304098) (not b_lambda!126489) (not d!1267232) (not b!4304240) (not d!1267236) (not b!4304221) (not b!4304129) (not b!4304112) (not d!1267204) (not b!4304104) (not d!1267250) (not d!1267228) (not b!4304238) (not b!4304105) (not bm!296810) (not b!4304120) (not b!4304171) (not d!1267212) (not b!4304094) (not b!4304157) (not b!4304222) (not bm!296812) (not d!1267198) (not b!4304074) (not b!4304224) b_and!339673 (not d!1267230) tp_is_empty!23457 (not d!1267234) (not b!4304097) (not bm!296808) (not b!4304057) (not b!4304117) (not b!4304230) (not d!1267226) (not b!4304239) (not b!4304106) (not b!4304108) (not bm!296807) (not d!1267202) (not d!1267244) (not mapNonEmpty!20527) (not b!4304209) (not d!1267200) (not b!4304159) b_and!339671 (not b!4304118))
(check-sat b_and!339673 b_and!339671 (not b_next!128981) (not b_next!128979))

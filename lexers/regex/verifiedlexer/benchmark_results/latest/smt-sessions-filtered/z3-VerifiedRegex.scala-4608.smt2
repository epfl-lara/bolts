; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242046 () Bool)

(assert start!242046)

(declare-fun b!2480396 () Bool)

(declare-fun b_free!72201 () Bool)

(declare-fun b_next!72905 () Bool)

(assert (=> b!2480396 (= b_free!72201 (not b_next!72905))))

(declare-fun tp!793853 () Bool)

(declare-fun b_and!188447 () Bool)

(assert (=> b!2480396 (= tp!793853 b_and!188447)))

(declare-fun b!2480398 () Bool)

(declare-fun b_free!72203 () Bool)

(declare-fun b_next!72907 () Bool)

(assert (=> b!2480398 (= b_free!72203 (not b_next!72907))))

(declare-fun tp!793854 () Bool)

(declare-fun b_and!188449 () Bool)

(assert (=> b!2480398 (= tp!793854 b_and!188449)))

(declare-fun b!2480392 () Bool)

(declare-fun res!1050011 () Bool)

(declare-fun e!1574281 () Bool)

(assert (=> b!2480392 (=> (not res!1050011) (not e!1574281))))

(declare-datatypes ((V!5627 0))(
  ( (V!5628 (val!8815 Int)) )
))
(declare-datatypes ((K!5425 0))(
  ( (K!5426 (val!8816 Int)) )
))
(declare-datatypes ((tuple2!28690 0))(
  ( (tuple2!28691 (_1!16886 K!5425) (_2!16886 V!5627)) )
))
(declare-datatypes ((List!29159 0))(
  ( (Nil!29059) (Cons!29059 (h!34465 tuple2!28690) (t!210816 List!29159)) )
))
(declare-datatypes ((tuple2!28692 0))(
  ( (tuple2!28693 (_1!16887 (_ BitVec 64)) (_2!16887 List!29159)) )
))
(declare-datatypes ((List!29160 0))(
  ( (Nil!29060) (Cons!29060 (h!34466 tuple2!28692) (t!210817 List!29160)) )
))
(declare-datatypes ((ListLongMap!489 0))(
  ( (ListLongMap!490 (toList!1544 List!29160)) )
))
(declare-fun lt!887490 () ListLongMap!489)

(declare-datatypes ((Unit!42519 0))(
  ( (Unit!42520) )
))
(declare-datatypes ((Hashable!3246 0))(
  ( (HashableExt!3245 (__x!18914 Int)) )
))
(declare-datatypes ((array!11801 0))(
  ( (array!11802 (arr!5262 (Array (_ BitVec 32) List!29159)) (size!22681 (_ BitVec 32))) )
))
(declare-datatypes ((array!11803 0))(
  ( (array!11804 (arr!5263 (Array (_ BitVec 32) (_ BitVec 64))) (size!22682 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6672 0))(
  ( (LongMapFixedSize!6673 (defaultEntry!3710 Int) (mask!8493 (_ BitVec 32)) (extraKeys!3584 (_ BitVec 32)) (zeroValue!3594 List!29159) (minValue!3594 List!29159) (_size!6719 (_ BitVec 32)) (_keys!3633 array!11803) (_values!3616 array!11801) (_vacant!3397 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13161 0))(
  ( (Cell!13162 (v!31384 LongMapFixedSize!6672)) )
))
(declare-datatypes ((MutLongMap!3336 0))(
  ( (LongMap!3336 (underlying!6879 Cell!13161)) (MutLongMapExt!3335 (__x!18915 Int)) )
))
(declare-datatypes ((Cell!13163 0))(
  ( (Cell!13164 (v!31385 MutLongMap!3336)) )
))
(declare-datatypes ((MutableMap!3246 0))(
  ( (MutableMapExt!3245 (__x!18916 Int)) (HashMap!3246 (underlying!6880 Cell!13163) (hashF!5204 Hashable!3246) (_size!6720 (_ BitVec 32)) (defaultValue!3408 Int)) )
))
(declare-datatypes ((tuple2!28694 0))(
  ( (tuple2!28695 (_1!16888 Unit!42519) (_2!16888 MutableMap!3246)) )
))
(declare-fun lt!887483 () tuple2!28694)

(declare-fun allKeysSameHashInMap!155 (ListLongMap!489 Hashable!3246) Bool)

(assert (=> b!2480392 (= res!1050011 (allKeysSameHashInMap!155 lt!887490 (hashF!5204 (_2!16888 lt!887483))))))

(declare-fun b!2480393 () Bool)

(declare-fun e!1574283 () Bool)

(declare-fun tp!793850 () Bool)

(declare-fun mapRes!15466 () Bool)

(assert (=> b!2480393 (= e!1574283 (and tp!793850 mapRes!15466))))

(declare-fun condMapEmpty!15466 () Bool)

(declare-fun thiss!42540 () MutableMap!3246)

(declare-fun mapDefault!15466 () List!29159)

(assert (=> b!2480393 (= condMapEmpty!15466 (= (arr!5262 (_values!3616 (v!31384 (underlying!6879 (v!31385 (underlying!6880 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29159)) mapDefault!15466)))))

(declare-fun mapIsEmpty!15466 () Bool)

(assert (=> mapIsEmpty!15466 mapRes!15466))

(declare-fun b!2480394 () Bool)

(declare-fun res!1050008 () Bool)

(assert (=> b!2480394 (=> (not res!1050008) (not e!1574281))))

(declare-fun valid!2546 (MutableMap!3246) Bool)

(assert (=> b!2480394 (= res!1050008 (valid!2546 (_2!16888 lt!887483)))))

(declare-fun b!2480395 () Bool)

(declare-fun res!1050013 () Bool)

(declare-fun e!1574279 () Bool)

(assert (=> b!2480395 (=> (not res!1050013) (not e!1574279))))

(declare-fun key!2246 () K!5425)

(declare-fun contains!5066 (MutableMap!3246 K!5425) Bool)

(assert (=> b!2480395 (= res!1050013 (contains!5066 thiss!42540 key!2246))))

(declare-fun mapNonEmpty!15466 () Bool)

(declare-fun tp!793852 () Bool)

(declare-fun tp!793851 () Bool)

(assert (=> mapNonEmpty!15466 (= mapRes!15466 (and tp!793852 tp!793851))))

(declare-fun mapKey!15466 () (_ BitVec 32))

(declare-fun mapRest!15466 () (Array (_ BitVec 32) List!29159))

(declare-fun mapValue!15466 () List!29159)

(assert (=> mapNonEmpty!15466 (= (arr!5262 (_values!3616 (v!31384 (underlying!6879 (v!31385 (underlying!6880 thiss!42540)))))) (store mapRest!15466 mapKey!15466 mapValue!15466))))

(declare-fun tp!793855 () Bool)

(declare-fun tp!793856 () Bool)

(declare-fun e!1574273 () Bool)

(declare-fun array_inv!3775 (array!11803) Bool)

(declare-fun array_inv!3776 (array!11801) Bool)

(assert (=> b!2480396 (= e!1574273 (and tp!793853 tp!793855 tp!793856 (array_inv!3775 (_keys!3633 (v!31384 (underlying!6879 (v!31385 (underlying!6880 thiss!42540)))))) (array_inv!3776 (_values!3616 (v!31384 (underlying!6879 (v!31385 (underlying!6880 thiss!42540)))))) e!1574283))))

(declare-fun res!1050007 () Bool)

(assert (=> start!242046 (=> (not res!1050007) (not e!1574279))))

(get-info :version)

(assert (=> start!242046 (= res!1050007 ((_ is HashMap!3246) thiss!42540))))

(assert (=> start!242046 e!1574279))

(declare-fun e!1574276 () Bool)

(assert (=> start!242046 e!1574276))

(declare-fun tp_is_empty!12195 () Bool)

(assert (=> start!242046 tp_is_empty!12195))

(declare-fun b!2480397 () Bool)

(declare-fun res!1050010 () Bool)

(assert (=> b!2480397 (=> (not res!1050010) (not e!1574279))))

(assert (=> b!2480397 (= res!1050010 (valid!2546 thiss!42540))))

(declare-fun e!1574280 () Bool)

(assert (=> b!2480398 (= e!1574276 (and e!1574280 tp!793854))))

(declare-fun b!2480399 () Bool)

(declare-fun e!1574274 () Bool)

(assert (=> b!2480399 (= e!1574274 true)))

(declare-fun lt!887492 () ListLongMap!489)

(declare-fun lt!887486 () ListLongMap!489)

(declare-datatypes ((ListMap!1029 0))(
  ( (ListMap!1030 (toList!1545 List!29159)) )
))
(declare-fun eq!62 (ListMap!1029 ListMap!1029) Bool)

(declare-fun extractMap!163 (List!29160) ListMap!1029)

(declare-fun -!118 (ListMap!1029 K!5425) ListMap!1029)

(assert (=> b!2480399 (eq!62 (extractMap!163 (toList!1544 lt!887492)) (-!118 (extractMap!163 (toList!1544 lt!887486)) key!2246))))

(declare-fun lt!887487 () Unit!42519)

(declare-fun lt!887493 () List!29159)

(declare-fun lt!887482 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!24 (ListLongMap!489 (_ BitVec 64) List!29159 K!5425 Hashable!3246) Unit!42519)

(assert (=> b!2480399 (= lt!887487 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!24 lt!887486 lt!887482 lt!887493 key!2246 (hashF!5204 (_2!16888 lt!887483))))))

(assert (=> b!2480399 e!1574281))

(declare-fun res!1050014 () Bool)

(assert (=> b!2480399 (=> (not res!1050014) (not e!1574281))))

(declare-fun lambda!93866 () Int)

(declare-fun forall!5960 (List!29160 Int) Bool)

(assert (=> b!2480399 (= res!1050014 (forall!5960 (toList!1544 lt!887490) lambda!93866))))

(declare-fun map!6147 (MutLongMap!3336) ListLongMap!489)

(assert (=> b!2480399 (= lt!887490 (map!6147 (v!31385 (underlying!6880 (_2!16888 lt!887483)))))))

(declare-fun e!1574277 () Bool)

(assert (=> b!2480399 e!1574277))

(declare-fun res!1050012 () Bool)

(assert (=> b!2480399 (=> (not res!1050012) (not e!1574277))))

(assert (=> b!2480399 (= res!1050012 (forall!5960 (toList!1544 lt!887492) lambda!93866))))

(declare-fun +!77 (ListLongMap!489 tuple2!28692) ListLongMap!489)

(assert (=> b!2480399 (= lt!887492 (+!77 lt!887486 (tuple2!28693 lt!887482 lt!887493)))))

(declare-fun lt!887494 () Unit!42519)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!48 (ListLongMap!489 (_ BitVec 64) List!29159 Hashable!3246) Unit!42519)

(assert (=> b!2480399 (= lt!887494 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!48 lt!887486 lt!887482 lt!887493 (hashF!5204 (_2!16888 lt!887483))))))

(declare-fun allKeysSameHash!58 (List!29159 (_ BitVec 64) Hashable!3246) Bool)

(assert (=> b!2480399 (allKeysSameHash!58 lt!887493 lt!887482 (hashF!5204 (_2!16888 lt!887483)))))

(declare-fun lt!887484 () List!29159)

(declare-fun lt!887480 () Unit!42519)

(declare-fun lemmaRemovePairForKeyPreservesHash!52 (List!29159 K!5425 (_ BitVec 64) Hashable!3246) Unit!42519)

(assert (=> b!2480399 (= lt!887480 (lemmaRemovePairForKeyPreservesHash!52 lt!887484 key!2246 lt!887482 (hashF!5204 (_2!16888 lt!887483))))))

(assert (=> b!2480399 (allKeysSameHash!58 lt!887484 lt!887482 (hashF!5204 (_2!16888 lt!887483)))))

(declare-fun lt!887481 () Unit!42519)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!54 (List!29160 (_ BitVec 64) List!29159 Hashable!3246) Unit!42519)

(assert (=> b!2480399 (= lt!887481 (lemmaInLongMapAllKeySameHashThenForTuple!54 (toList!1544 lt!887486) lt!887482 lt!887484 (hashF!5204 (_2!16888 lt!887483))))))

(declare-fun b!2480400 () Bool)

(declare-fun lt!887488 () ListMap!1029)

(declare-fun contains!5067 (ListMap!1029 K!5425) Bool)

(assert (=> b!2480400 (= e!1574281 (contains!5067 lt!887488 key!2246))))

(declare-fun b!2480401 () Bool)

(declare-fun e!1574282 () Bool)

(declare-fun e!1574278 () Bool)

(assert (=> b!2480401 (= e!1574282 e!1574278)))

(declare-fun b!2480402 () Bool)

(declare-fun lt!887491 () MutLongMap!3336)

(assert (=> b!2480402 (= e!1574280 (and e!1574282 ((_ is LongMap!3336) lt!887491)))))

(assert (=> b!2480402 (= lt!887491 (v!31385 (underlying!6880 thiss!42540)))))

(declare-fun b!2480403 () Bool)

(assert (=> b!2480403 (= e!1574279 (not e!1574274))))

(declare-fun res!1050009 () Bool)

(assert (=> b!2480403 (=> res!1050009 e!1574274)))

(declare-datatypes ((tuple2!28696 0))(
  ( (tuple2!28697 (_1!16889 Bool) (_2!16889 MutLongMap!3336)) )
))
(declare-fun lt!887496 () tuple2!28696)

(assert (=> b!2480403 (= res!1050009 (not (_1!16889 lt!887496)))))

(declare-fun noDuplicateKeys!71 (List!29159) Bool)

(assert (=> b!2480403 (noDuplicateKeys!71 lt!887493)))

(declare-fun lt!887489 () Unit!42519)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!57 (List!29159 K!5425) Unit!42519)

(assert (=> b!2480403 (= lt!887489 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!57 lt!887484 key!2246))))

(declare-fun lt!887485 () Cell!13163)

(declare-fun Unit!42521 () Unit!42519)

(declare-fun Unit!42522 () Unit!42519)

(assert (=> b!2480403 (= lt!887483 (ite (_1!16889 lt!887496) (tuple2!28695 Unit!42521 (HashMap!3246 lt!887485 (hashF!5204 thiss!42540) (bvsub (_size!6720 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3408 thiss!42540))) (tuple2!28695 Unit!42522 (HashMap!3246 lt!887485 (hashF!5204 thiss!42540) (_size!6720 thiss!42540) (defaultValue!3408 thiss!42540)))))))

(assert (=> b!2480403 (= lt!887485 (Cell!13164 (_2!16889 lt!887496)))))

(declare-fun update!178 (MutLongMap!3336 (_ BitVec 64) List!29159) tuple2!28696)

(assert (=> b!2480403 (= lt!887496 (update!178 (v!31385 (underlying!6880 thiss!42540)) lt!887482 lt!887493))))

(declare-fun removePairForKey!61 (List!29159 K!5425) List!29159)

(assert (=> b!2480403 (= lt!887493 (removePairForKey!61 lt!887484 key!2246))))

(declare-fun map!6148 (MutableMap!3246) ListMap!1029)

(assert (=> b!2480403 (= lt!887488 (map!6148 thiss!42540))))

(declare-fun lt!887495 () Unit!42519)

(declare-fun forallContained!842 (List!29160 Int tuple2!28692) Unit!42519)

(assert (=> b!2480403 (= lt!887495 (forallContained!842 (toList!1544 lt!887486) lambda!93866 (tuple2!28693 lt!887482 lt!887484)))))

(assert (=> b!2480403 (= lt!887486 (map!6147 (v!31385 (underlying!6880 thiss!42540))))))

(declare-fun apply!6899 (MutLongMap!3336 (_ BitVec 64)) List!29159)

(assert (=> b!2480403 (= lt!887484 (apply!6899 (v!31385 (underlying!6880 thiss!42540)) lt!887482))))

(declare-fun hash!674 (Hashable!3246 K!5425) (_ BitVec 64))

(assert (=> b!2480403 (= lt!887482 (hash!674 (hashF!5204 thiss!42540) key!2246))))

(declare-fun b!2480404 () Bool)

(assert (=> b!2480404 (= e!1574278 e!1574273)))

(declare-fun b!2480405 () Bool)

(assert (=> b!2480405 (= e!1574277 (allKeysSameHashInMap!155 lt!887492 (hashF!5204 (_2!16888 lt!887483))))))

(assert (= (and start!242046 res!1050007) b!2480397))

(assert (= (and b!2480397 res!1050010) b!2480395))

(assert (= (and b!2480395 res!1050013) b!2480403))

(assert (= (and b!2480403 (not res!1050009)) b!2480399))

(assert (= (and b!2480399 res!1050012) b!2480405))

(assert (= (and b!2480399 res!1050014) b!2480392))

(assert (= (and b!2480392 res!1050011) b!2480394))

(assert (= (and b!2480394 res!1050008) b!2480400))

(assert (= (and b!2480393 condMapEmpty!15466) mapIsEmpty!15466))

(assert (= (and b!2480393 (not condMapEmpty!15466)) mapNonEmpty!15466))

(assert (= b!2480396 b!2480393))

(assert (= b!2480404 b!2480396))

(assert (= b!2480401 b!2480404))

(assert (= (and b!2480402 ((_ is LongMap!3336) (v!31385 (underlying!6880 thiss!42540)))) b!2480401))

(assert (= b!2480398 b!2480402))

(assert (= (and start!242046 ((_ is HashMap!3246) thiss!42540)) b!2480398))

(declare-fun m!2848413 () Bool)

(assert (=> b!2480394 m!2848413))

(declare-fun m!2848415 () Bool)

(assert (=> b!2480405 m!2848415))

(declare-fun m!2848417 () Bool)

(assert (=> b!2480396 m!2848417))

(declare-fun m!2848419 () Bool)

(assert (=> b!2480396 m!2848419))

(declare-fun m!2848421 () Bool)

(assert (=> b!2480392 m!2848421))

(declare-fun m!2848423 () Bool)

(assert (=> b!2480399 m!2848423))

(declare-fun m!2848425 () Bool)

(assert (=> b!2480399 m!2848425))

(declare-fun m!2848427 () Bool)

(assert (=> b!2480399 m!2848427))

(declare-fun m!2848429 () Bool)

(assert (=> b!2480399 m!2848429))

(declare-fun m!2848431 () Bool)

(assert (=> b!2480399 m!2848431))

(declare-fun m!2848433 () Bool)

(assert (=> b!2480399 m!2848433))

(declare-fun m!2848435 () Bool)

(assert (=> b!2480399 m!2848435))

(declare-fun m!2848437 () Bool)

(assert (=> b!2480399 m!2848437))

(declare-fun m!2848439 () Bool)

(assert (=> b!2480399 m!2848439))

(declare-fun m!2848441 () Bool)

(assert (=> b!2480399 m!2848441))

(declare-fun m!2848443 () Bool)

(assert (=> b!2480399 m!2848443))

(assert (=> b!2480399 m!2848435))

(assert (=> b!2480399 m!2848429))

(declare-fun m!2848445 () Bool)

(assert (=> b!2480399 m!2848445))

(declare-fun m!2848447 () Bool)

(assert (=> b!2480399 m!2848447))

(assert (=> b!2480399 m!2848427))

(declare-fun m!2848449 () Bool)

(assert (=> b!2480399 m!2848449))

(declare-fun m!2848451 () Bool)

(assert (=> b!2480395 m!2848451))

(declare-fun m!2848453 () Bool)

(assert (=> b!2480403 m!2848453))

(declare-fun m!2848455 () Bool)

(assert (=> b!2480403 m!2848455))

(declare-fun m!2848457 () Bool)

(assert (=> b!2480403 m!2848457))

(declare-fun m!2848459 () Bool)

(assert (=> b!2480403 m!2848459))

(declare-fun m!2848461 () Bool)

(assert (=> b!2480403 m!2848461))

(declare-fun m!2848463 () Bool)

(assert (=> b!2480403 m!2848463))

(declare-fun m!2848465 () Bool)

(assert (=> b!2480403 m!2848465))

(declare-fun m!2848467 () Bool)

(assert (=> b!2480403 m!2848467))

(declare-fun m!2848469 () Bool)

(assert (=> b!2480403 m!2848469))

(declare-fun m!2848471 () Bool)

(assert (=> mapNonEmpty!15466 m!2848471))

(declare-fun m!2848473 () Bool)

(assert (=> b!2480400 m!2848473))

(declare-fun m!2848475 () Bool)

(assert (=> b!2480397 m!2848475))

(check-sat (not mapNonEmpty!15466) (not b!2480400) tp_is_empty!12195 (not b!2480397) (not b!2480405) b_and!188449 (not b!2480395) (not b_next!72905) (not b!2480392) (not b!2480393) (not b!2480403) b_and!188447 (not b!2480396) (not b_next!72907) (not b!2480394) (not b!2480399))
(check-sat b_and!188449 b_and!188447 (not b_next!72905) (not b_next!72907))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241980 () Bool)

(assert start!241980)

(declare-fun b!2479678 () Bool)

(declare-fun b_free!72153 () Bool)

(declare-fun b_next!72857 () Bool)

(assert (=> b!2479678 (= b_free!72153 (not b_next!72857))))

(declare-fun tp!793585 () Bool)

(declare-fun b_and!188397 () Bool)

(assert (=> b!2479678 (= tp!793585 b_and!188397)))

(declare-fun b!2479673 () Bool)

(declare-fun b_free!72155 () Bool)

(declare-fun b_next!72859 () Bool)

(assert (=> b!2479673 (= b_free!72155 (not b_next!72859))))

(declare-fun tp!793584 () Bool)

(declare-fun b_and!188399 () Bool)

(assert (=> b!2479673 (= tp!793584 b_and!188399)))

(declare-fun mapIsEmpty!15427 () Bool)

(declare-fun mapRes!15427 () Bool)

(assert (=> mapIsEmpty!15427 mapRes!15427))

(declare-fun e!1573741 () Bool)

(declare-fun e!1573750 () Bool)

(assert (=> b!2479673 (= e!1573741 (and e!1573750 tp!793584))))

(declare-fun b!2479674 () Bool)

(declare-fun e!1573749 () Bool)

(declare-datatypes ((K!5395 0))(
  ( (K!5396 (val!8791 Int)) )
))
(declare-datatypes ((V!5597 0))(
  ( (V!5598 (val!8792 Int)) )
))
(declare-datatypes ((tuple2!28604 0))(
  ( (tuple2!28605 (_1!16843 K!5395) (_2!16843 V!5597)) )
))
(declare-datatypes ((List!29136 0))(
  ( (Nil!29036) (Cons!29036 (h!34441 tuple2!28604) (t!210791 List!29136)) )
))
(declare-datatypes ((array!11751 0))(
  ( (array!11752 (arr!5238 (Array (_ BitVec 32) List!29136)) (size!22657 (_ BitVec 32))) )
))
(declare-datatypes ((array!11753 0))(
  ( (array!11754 (arr!5239 (Array (_ BitVec 32) (_ BitVec 64))) (size!22658 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6648 0))(
  ( (LongMapFixedSize!6649 (defaultEntry!3698 Int) (mask!8475 (_ BitVec 32)) (extraKeys!3572 (_ BitVec 32)) (zeroValue!3582 List!29136) (minValue!3582 List!29136) (_size!6695 (_ BitVec 32)) (_keys!3621 array!11753) (_values!3604 array!11751) (_vacant!3385 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13113 0))(
  ( (Cell!13114 (v!31354 LongMapFixedSize!6648)) )
))
(declare-datatypes ((MutLongMap!3324 0))(
  ( (LongMap!3324 (underlying!6855 Cell!13113)) (MutLongMapExt!3323 (__x!18878 Int)) )
))
(declare-fun lt!886673 () MutLongMap!3324)

(get-info :version)

(assert (=> b!2479674 (= e!1573750 (and e!1573749 ((_ is LongMap!3324) lt!886673)))))

(declare-datatypes ((Hashable!3234 0))(
  ( (HashableExt!3233 (__x!18879 Int)) )
))
(declare-datatypes ((Cell!13115 0))(
  ( (Cell!13116 (v!31355 MutLongMap!3324)) )
))
(declare-datatypes ((MutableMap!3234 0))(
  ( (MutableMapExt!3233 (__x!18880 Int)) (HashMap!3234 (underlying!6856 Cell!13115) (hashF!5187 Hashable!3234) (_size!6696 (_ BitVec 32)) (defaultValue!3396 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3234)

(assert (=> b!2479674 (= lt!886673 (v!31355 (underlying!6856 thiss!42540)))))

(declare-fun b!2479675 () Bool)

(declare-fun e!1573746 () Bool)

(declare-datatypes ((Unit!42476 0))(
  ( (Unit!42477) )
))
(declare-datatypes ((tuple2!28606 0))(
  ( (tuple2!28607 (_1!16844 Unit!42476) (_2!16844 MutableMap!3234)) )
))
(declare-fun lt!886676 () tuple2!28606)

(declare-fun valid!2536 (MutLongMap!3324) Bool)

(assert (=> b!2479675 (= e!1573746 (valid!2536 (v!31355 (underlying!6856 (_2!16844 lt!886676)))))))

(declare-fun b!2479676 () Bool)

(declare-fun e!1573740 () Bool)

(assert (=> b!2479676 (= e!1573740 e!1573746)))

(declare-fun res!1049589 () Bool)

(assert (=> b!2479676 (=> res!1049589 e!1573746)))

(assert (=> b!2479676 (= res!1049589 (not ((_ is LongMap!3324) (v!31355 (underlying!6856 (_2!16844 lt!886676))))))))

(declare-fun e!1573742 () Bool)

(assert (=> b!2479676 e!1573742))

(declare-fun res!1049586 () Bool)

(assert (=> b!2479676 (=> (not res!1049586) (not e!1573742))))

(declare-datatypes ((tuple2!28608 0))(
  ( (tuple2!28609 (_1!16845 (_ BitVec 64)) (_2!16845 List!29136)) )
))
(declare-datatypes ((List!29137 0))(
  ( (Nil!29037) (Cons!29037 (h!34442 tuple2!28608) (t!210792 List!29137)) )
))
(declare-datatypes ((ListLongMap!467 0))(
  ( (ListLongMap!468 (toList!1522 List!29137)) )
))
(declare-fun lt!886683 () ListLongMap!467)

(declare-fun lambda!93725 () Int)

(declare-fun forall!5951 (List!29137 Int) Bool)

(assert (=> b!2479676 (= res!1049586 (forall!5951 (toList!1522 lt!886683) lambda!93725))))

(declare-fun lt!886682 () (_ BitVec 64))

(declare-fun lt!886672 () ListLongMap!467)

(declare-fun lt!886681 () List!29136)

(declare-fun +!69 (ListLongMap!467 tuple2!28608) ListLongMap!467)

(assert (=> b!2479676 (= lt!886683 (+!69 lt!886672 (tuple2!28609 lt!886682 lt!886681)))))

(declare-fun lt!886675 () Unit!42476)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!40 (ListLongMap!467 (_ BitVec 64) List!29136 Hashable!3234) Unit!42476)

(assert (=> b!2479676 (= lt!886675 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!40 lt!886672 lt!886682 lt!886681 (hashF!5187 (_2!16844 lt!886676))))))

(declare-fun allKeysSameHash!50 (List!29136 (_ BitVec 64) Hashable!3234) Bool)

(assert (=> b!2479676 (allKeysSameHash!50 lt!886681 lt!886682 (hashF!5187 (_2!16844 lt!886676)))))

(declare-fun lt!886677 () Unit!42476)

(declare-fun lt!886679 () List!29136)

(declare-fun key!2246 () K!5395)

(declare-fun lemmaRemovePairForKeyPreservesHash!44 (List!29136 K!5395 (_ BitVec 64) Hashable!3234) Unit!42476)

(assert (=> b!2479676 (= lt!886677 (lemmaRemovePairForKeyPreservesHash!44 lt!886679 key!2246 lt!886682 (hashF!5187 (_2!16844 lt!886676))))))

(assert (=> b!2479676 (allKeysSameHash!50 lt!886679 lt!886682 (hashF!5187 (_2!16844 lt!886676)))))

(declare-fun lt!886669 () Unit!42476)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!46 (List!29137 (_ BitVec 64) List!29136 Hashable!3234) Unit!42476)

(assert (=> b!2479676 (= lt!886669 (lemmaInLongMapAllKeySameHashThenForTuple!46 (toList!1522 lt!886672) lt!886682 lt!886679 (hashF!5187 (_2!16844 lt!886676))))))

(declare-fun b!2479677 () Bool)

(declare-fun e!1573745 () Bool)

(assert (=> b!2479677 (= e!1573745 (not e!1573740))))

(declare-fun res!1049591 () Bool)

(assert (=> b!2479677 (=> res!1049591 e!1573740)))

(declare-datatypes ((tuple2!28610 0))(
  ( (tuple2!28611 (_1!16846 Bool) (_2!16846 MutLongMap!3324)) )
))
(declare-fun lt!886674 () tuple2!28610)

(assert (=> b!2479677 (= res!1049591 (not (_1!16846 lt!886674)))))

(declare-fun noDuplicateKeys!63 (List!29136) Bool)

(assert (=> b!2479677 (noDuplicateKeys!63 lt!886681)))

(declare-fun lt!886670 () Unit!42476)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!49 (List!29136 K!5395) Unit!42476)

(assert (=> b!2479677 (= lt!886670 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!49 lt!886679 key!2246))))

(declare-fun lt!886680 () Cell!13115)

(declare-fun Unit!42478 () Unit!42476)

(declare-fun Unit!42479 () Unit!42476)

(assert (=> b!2479677 (= lt!886676 (ite (_1!16846 lt!886674) (tuple2!28607 Unit!42478 (HashMap!3234 lt!886680 (hashF!5187 thiss!42540) (bvsub (_size!6696 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3396 thiss!42540))) (tuple2!28607 Unit!42479 (HashMap!3234 lt!886680 (hashF!5187 thiss!42540) (_size!6696 thiss!42540) (defaultValue!3396 thiss!42540)))))))

(assert (=> b!2479677 (= lt!886680 (Cell!13116 (_2!16846 lt!886674)))))

(declare-fun update!169 (MutLongMap!3324 (_ BitVec 64) List!29136) tuple2!28610)

(assert (=> b!2479677 (= lt!886674 (update!169 (v!31355 (underlying!6856 thiss!42540)) lt!886682 lt!886681))))

(declare-fun removePairForKey!53 (List!29136 K!5395) List!29136)

(assert (=> b!2479677 (= lt!886681 (removePairForKey!53 lt!886679 key!2246))))

(declare-datatypes ((ListMap!1007 0))(
  ( (ListMap!1008 (toList!1523 List!29136)) )
))
(declare-fun lt!886678 () ListMap!1007)

(declare-fun map!6124 (MutableMap!3234) ListMap!1007)

(assert (=> b!2479677 (= lt!886678 (map!6124 thiss!42540))))

(declare-fun lt!886671 () Unit!42476)

(declare-fun forallContained!834 (List!29137 Int tuple2!28608) Unit!42476)

(assert (=> b!2479677 (= lt!886671 (forallContained!834 (toList!1522 lt!886672) lambda!93725 (tuple2!28609 lt!886682 lt!886679)))))

(declare-fun map!6125 (MutLongMap!3324) ListLongMap!467)

(assert (=> b!2479677 (= lt!886672 (map!6125 (v!31355 (underlying!6856 thiss!42540))))))

(declare-fun apply!6885 (MutLongMap!3324 (_ BitVec 64)) List!29136)

(assert (=> b!2479677 (= lt!886679 (apply!6885 (v!31355 (underlying!6856 thiss!42540)) lt!886682))))

(declare-fun hash!662 (Hashable!3234 K!5395) (_ BitVec 64))

(assert (=> b!2479677 (= lt!886682 (hash!662 (hashF!5187 thiss!42540) key!2246))))

(declare-fun e!1573748 () Bool)

(declare-fun tp!793588 () Bool)

(declare-fun e!1573744 () Bool)

(declare-fun tp!793589 () Bool)

(declare-fun array_inv!3757 (array!11753) Bool)

(declare-fun array_inv!3758 (array!11751) Bool)

(assert (=> b!2479678 (= e!1573744 (and tp!793585 tp!793589 tp!793588 (array_inv!3757 (_keys!3621 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) (array_inv!3758 (_values!3604 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) e!1573748))))

(declare-fun b!2479679 () Bool)

(declare-fun res!1049592 () Bool)

(assert (=> b!2479679 (=> (not res!1049592) (not e!1573745))))

(declare-fun valid!2537 (MutableMap!3234) Bool)

(assert (=> b!2479679 (= res!1049592 (valid!2537 thiss!42540))))

(declare-fun b!2479680 () Bool)

(assert (=> b!2479680 (= e!1573742 (forall!5951 (toList!1522 (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676))))) lambda!93725))))

(declare-fun b!2479681 () Bool)

(declare-fun e!1573743 () Bool)

(assert (=> b!2479681 (= e!1573749 e!1573743)))

(declare-fun mapNonEmpty!15427 () Bool)

(declare-fun tp!793587 () Bool)

(declare-fun tp!793583 () Bool)

(assert (=> mapNonEmpty!15427 (= mapRes!15427 (and tp!793587 tp!793583))))

(declare-fun mapKey!15427 () (_ BitVec 32))

(declare-fun mapRest!15427 () (Array (_ BitVec 32) List!29136))

(declare-fun mapValue!15427 () List!29136)

(assert (=> mapNonEmpty!15427 (= (arr!5238 (_values!3604 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) (store mapRest!15427 mapKey!15427 mapValue!15427))))

(declare-fun b!2479682 () Bool)

(declare-fun res!1049590 () Bool)

(assert (=> b!2479682 (=> (not res!1049590) (not e!1573745))))

(declare-fun contains!5037 (MutableMap!3234 K!5395) Bool)

(assert (=> b!2479682 (= res!1049590 (contains!5037 thiss!42540 key!2246))))

(declare-fun b!2479683 () Bool)

(declare-fun res!1049588 () Bool)

(assert (=> b!2479683 (=> (not res!1049588) (not e!1573742))))

(declare-fun allKeysSameHashInMap!144 (ListLongMap!467 Hashable!3234) Bool)

(assert (=> b!2479683 (= res!1049588 (allKeysSameHashInMap!144 lt!886683 (hashF!5187 (_2!16844 lt!886676))))))

(declare-fun res!1049587 () Bool)

(assert (=> start!241980 (=> (not res!1049587) (not e!1573745))))

(assert (=> start!241980 (= res!1049587 ((_ is HashMap!3234) thiss!42540))))

(assert (=> start!241980 e!1573745))

(assert (=> start!241980 e!1573741))

(declare-fun tp_is_empty!12169 () Bool)

(assert (=> start!241980 tp_is_empty!12169))

(declare-fun b!2479684 () Bool)

(assert (=> b!2479684 (= e!1573743 e!1573744)))

(declare-fun b!2479685 () Bool)

(declare-fun tp!793586 () Bool)

(assert (=> b!2479685 (= e!1573748 (and tp!793586 mapRes!15427))))

(declare-fun condMapEmpty!15427 () Bool)

(declare-fun mapDefault!15427 () List!29136)

(assert (=> b!2479685 (= condMapEmpty!15427 (= (arr!5238 (_values!3604 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29136)) mapDefault!15427)))))

(assert (= (and start!241980 res!1049587) b!2479679))

(assert (= (and b!2479679 res!1049592) b!2479682))

(assert (= (and b!2479682 res!1049590) b!2479677))

(assert (= (and b!2479677 (not res!1049591)) b!2479676))

(assert (= (and b!2479676 res!1049586) b!2479683))

(assert (= (and b!2479683 res!1049588) b!2479680))

(assert (= (and b!2479676 (not res!1049589)) b!2479675))

(assert (= (and b!2479685 condMapEmpty!15427) mapIsEmpty!15427))

(assert (= (and b!2479685 (not condMapEmpty!15427)) mapNonEmpty!15427))

(assert (= b!2479678 b!2479685))

(assert (= b!2479684 b!2479678))

(assert (= b!2479681 b!2479684))

(assert (= (and b!2479674 ((_ is LongMap!3324) (v!31355 (underlying!6856 thiss!42540)))) b!2479681))

(assert (= b!2479673 b!2479674))

(assert (= (and start!241980 ((_ is HashMap!3234) thiss!42540)) b!2479673))

(declare-fun m!2847443 () Bool)

(assert (=> b!2479675 m!2847443))

(declare-fun m!2847445 () Bool)

(assert (=> mapNonEmpty!15427 m!2847445))

(declare-fun m!2847447 () Bool)

(assert (=> b!2479682 m!2847447))

(declare-fun m!2847449 () Bool)

(assert (=> b!2479676 m!2847449))

(declare-fun m!2847451 () Bool)

(assert (=> b!2479676 m!2847451))

(declare-fun m!2847453 () Bool)

(assert (=> b!2479676 m!2847453))

(declare-fun m!2847455 () Bool)

(assert (=> b!2479676 m!2847455))

(declare-fun m!2847457 () Bool)

(assert (=> b!2479676 m!2847457))

(declare-fun m!2847459 () Bool)

(assert (=> b!2479676 m!2847459))

(declare-fun m!2847461 () Bool)

(assert (=> b!2479676 m!2847461))

(declare-fun m!2847463 () Bool)

(assert (=> b!2479680 m!2847463))

(declare-fun m!2847465 () Bool)

(assert (=> b!2479680 m!2847465))

(declare-fun m!2847467 () Bool)

(assert (=> b!2479678 m!2847467))

(declare-fun m!2847469 () Bool)

(assert (=> b!2479678 m!2847469))

(declare-fun m!2847471 () Bool)

(assert (=> b!2479677 m!2847471))

(declare-fun m!2847473 () Bool)

(assert (=> b!2479677 m!2847473))

(declare-fun m!2847475 () Bool)

(assert (=> b!2479677 m!2847475))

(declare-fun m!2847477 () Bool)

(assert (=> b!2479677 m!2847477))

(declare-fun m!2847479 () Bool)

(assert (=> b!2479677 m!2847479))

(declare-fun m!2847481 () Bool)

(assert (=> b!2479677 m!2847481))

(declare-fun m!2847483 () Bool)

(assert (=> b!2479677 m!2847483))

(declare-fun m!2847485 () Bool)

(assert (=> b!2479677 m!2847485))

(declare-fun m!2847487 () Bool)

(assert (=> b!2479677 m!2847487))

(declare-fun m!2847489 () Bool)

(assert (=> b!2479683 m!2847489))

(declare-fun m!2847491 () Bool)

(assert (=> b!2479679 m!2847491))

(check-sat (not b!2479680) b_and!188397 b_and!188399 (not mapNonEmpty!15427) (not b!2479675) (not b!2479685) (not b!2479682) (not b!2479679) (not b!2479683) (not b_next!72859) tp_is_empty!12169 (not b!2479676) (not b!2479677) (not b!2479678) (not b_next!72857))
(check-sat b_and!188399 b_and!188397 (not b_next!72857) (not b_next!72859))
(get-model)

(declare-fun d!712709 () Bool)

(assert (=> d!712709 (allKeysSameHash!50 (removePairForKey!53 lt!886679 key!2246) lt!886682 (hashF!5187 (_2!16844 lt!886676)))))

(declare-fun lt!886686 () Unit!42476)

(declare-fun choose!14633 (List!29136 K!5395 (_ BitVec 64) Hashable!3234) Unit!42476)

(assert (=> d!712709 (= lt!886686 (choose!14633 lt!886679 key!2246 lt!886682 (hashF!5187 (_2!16844 lt!886676))))))

(assert (=> d!712709 (noDuplicateKeys!63 lt!886679)))

(assert (=> d!712709 (= (lemmaRemovePairForKeyPreservesHash!44 lt!886679 key!2246 lt!886682 (hashF!5187 (_2!16844 lt!886676))) lt!886686)))

(declare-fun bs!467344 () Bool)

(assert (= bs!467344 d!712709))

(assert (=> bs!467344 m!2847471))

(assert (=> bs!467344 m!2847471))

(declare-fun m!2847493 () Bool)

(assert (=> bs!467344 m!2847493))

(declare-fun m!2847495 () Bool)

(assert (=> bs!467344 m!2847495))

(declare-fun m!2847497 () Bool)

(assert (=> bs!467344 m!2847497))

(assert (=> b!2479676 d!712709))

(declare-fun bs!467345 () Bool)

(declare-fun d!712711 () Bool)

(assert (= bs!467345 (and d!712711 b!2479677)))

(declare-fun lambda!93728 () Int)

(assert (=> bs!467345 (not (= lambda!93728 lambda!93725))))

(assert (=> d!712711 true))

(assert (=> d!712711 (allKeysSameHash!50 lt!886679 lt!886682 (hashF!5187 (_2!16844 lt!886676)))))

(declare-fun lt!886689 () Unit!42476)

(declare-fun choose!14634 (List!29137 (_ BitVec 64) List!29136 Hashable!3234) Unit!42476)

(assert (=> d!712711 (= lt!886689 (choose!14634 (toList!1522 lt!886672) lt!886682 lt!886679 (hashF!5187 (_2!16844 lt!886676))))))

(assert (=> d!712711 (forall!5951 (toList!1522 lt!886672) lambda!93728)))

(assert (=> d!712711 (= (lemmaInLongMapAllKeySameHashThenForTuple!46 (toList!1522 lt!886672) lt!886682 lt!886679 (hashF!5187 (_2!16844 lt!886676))) lt!886689)))

(declare-fun bs!467346 () Bool)

(assert (= bs!467346 d!712711))

(assert (=> bs!467346 m!2847459))

(declare-fun m!2847499 () Bool)

(assert (=> bs!467346 m!2847499))

(declare-fun m!2847501 () Bool)

(assert (=> bs!467346 m!2847501))

(assert (=> b!2479676 d!712711))

(declare-fun d!712713 () Bool)

(assert (=> d!712713 true))

(assert (=> d!712713 true))

(declare-fun lambda!93731 () Int)

(declare-fun forall!5952 (List!29136 Int) Bool)

(assert (=> d!712713 (= (allKeysSameHash!50 lt!886681 lt!886682 (hashF!5187 (_2!16844 lt!886676))) (forall!5952 lt!886681 lambda!93731))))

(declare-fun bs!467347 () Bool)

(assert (= bs!467347 d!712713))

(declare-fun m!2847503 () Bool)

(assert (=> bs!467347 m!2847503))

(assert (=> b!2479676 d!712713))

(declare-fun d!712715 () Bool)

(declare-fun e!1573753 () Bool)

(assert (=> d!712715 e!1573753))

(declare-fun res!1049598 () Bool)

(assert (=> d!712715 (=> (not res!1049598) (not e!1573753))))

(declare-fun lt!886699 () ListLongMap!467)

(declare-fun contains!5038 (ListLongMap!467 (_ BitVec 64)) Bool)

(assert (=> d!712715 (= res!1049598 (contains!5038 lt!886699 (_1!16845 (tuple2!28609 lt!886682 lt!886681))))))

(declare-fun lt!886700 () List!29137)

(assert (=> d!712715 (= lt!886699 (ListLongMap!468 lt!886700))))

(declare-fun lt!886701 () Unit!42476)

(declare-fun lt!886698 () Unit!42476)

(assert (=> d!712715 (= lt!886701 lt!886698)))

(declare-datatypes ((Option!5742 0))(
  ( (None!5741) (Some!5741 (v!31360 List!29136)) )
))
(declare-fun getValueByKey!133 (List!29137 (_ BitVec 64)) Option!5742)

(assert (=> d!712715 (= (getValueByKey!133 lt!886700 (_1!16845 (tuple2!28609 lt!886682 lt!886681))) (Some!5741 (_2!16845 (tuple2!28609 lt!886682 lt!886681))))))

(declare-fun lemmaContainsTupThenGetReturnValue!19 (List!29137 (_ BitVec 64) List!29136) Unit!42476)

(assert (=> d!712715 (= lt!886698 (lemmaContainsTupThenGetReturnValue!19 lt!886700 (_1!16845 (tuple2!28609 lt!886682 lt!886681)) (_2!16845 (tuple2!28609 lt!886682 lt!886681))))))

(declare-fun insertStrictlySorted!13 (List!29137 (_ BitVec 64) List!29136) List!29137)

(assert (=> d!712715 (= lt!886700 (insertStrictlySorted!13 (toList!1522 lt!886672) (_1!16845 (tuple2!28609 lt!886682 lt!886681)) (_2!16845 (tuple2!28609 lt!886682 lt!886681))))))

(assert (=> d!712715 (= (+!69 lt!886672 (tuple2!28609 lt!886682 lt!886681)) lt!886699)))

(declare-fun b!2479696 () Bool)

(declare-fun res!1049597 () Bool)

(assert (=> b!2479696 (=> (not res!1049597) (not e!1573753))))

(assert (=> b!2479696 (= res!1049597 (= (getValueByKey!133 (toList!1522 lt!886699) (_1!16845 (tuple2!28609 lt!886682 lt!886681))) (Some!5741 (_2!16845 (tuple2!28609 lt!886682 lt!886681)))))))

(declare-fun b!2479697 () Bool)

(declare-fun contains!5039 (List!29137 tuple2!28608) Bool)

(assert (=> b!2479697 (= e!1573753 (contains!5039 (toList!1522 lt!886699) (tuple2!28609 lt!886682 lt!886681)))))

(assert (= (and d!712715 res!1049598) b!2479696))

(assert (= (and b!2479696 res!1049597) b!2479697))

(declare-fun m!2847505 () Bool)

(assert (=> d!712715 m!2847505))

(declare-fun m!2847507 () Bool)

(assert (=> d!712715 m!2847507))

(declare-fun m!2847509 () Bool)

(assert (=> d!712715 m!2847509))

(declare-fun m!2847511 () Bool)

(assert (=> d!712715 m!2847511))

(declare-fun m!2847513 () Bool)

(assert (=> b!2479696 m!2847513))

(declare-fun m!2847515 () Bool)

(assert (=> b!2479697 m!2847515))

(assert (=> b!2479676 d!712715))

(declare-fun d!712717 () Bool)

(declare-fun res!1049603 () Bool)

(declare-fun e!1573758 () Bool)

(assert (=> d!712717 (=> res!1049603 e!1573758)))

(assert (=> d!712717 (= res!1049603 ((_ is Nil!29037) (toList!1522 lt!886683)))))

(assert (=> d!712717 (= (forall!5951 (toList!1522 lt!886683) lambda!93725) e!1573758)))

(declare-fun b!2479702 () Bool)

(declare-fun e!1573759 () Bool)

(assert (=> b!2479702 (= e!1573758 e!1573759)))

(declare-fun res!1049604 () Bool)

(assert (=> b!2479702 (=> (not res!1049604) (not e!1573759))))

(declare-fun dynLambda!12460 (Int tuple2!28608) Bool)

(assert (=> b!2479702 (= res!1049604 (dynLambda!12460 lambda!93725 (h!34442 (toList!1522 lt!886683))))))

(declare-fun b!2479703 () Bool)

(assert (=> b!2479703 (= e!1573759 (forall!5951 (t!210792 (toList!1522 lt!886683)) lambda!93725))))

(assert (= (and d!712717 (not res!1049603)) b!2479702))

(assert (= (and b!2479702 res!1049604) b!2479703))

(declare-fun b_lambda!76079 () Bool)

(assert (=> (not b_lambda!76079) (not b!2479702)))

(declare-fun m!2847517 () Bool)

(assert (=> b!2479702 m!2847517))

(declare-fun m!2847519 () Bool)

(assert (=> b!2479703 m!2847519))

(assert (=> b!2479676 d!712717))

(declare-fun bs!467348 () Bool)

(declare-fun d!712719 () Bool)

(assert (= bs!467348 (and d!712719 b!2479677)))

(declare-fun lambda!93736 () Int)

(assert (=> bs!467348 (= lambda!93736 lambda!93725)))

(declare-fun bs!467349 () Bool)

(assert (= bs!467349 (and d!712719 d!712711)))

(assert (=> bs!467349 (not (= lambda!93736 lambda!93728))))

(declare-fun e!1573762 () Bool)

(assert (=> d!712719 e!1573762))

(declare-fun res!1049607 () Bool)

(assert (=> d!712719 (=> (not res!1049607) (not e!1573762))))

(declare-fun lt!886707 () ListLongMap!467)

(assert (=> d!712719 (= res!1049607 (forall!5951 (toList!1522 lt!886707) lambda!93736))))

(assert (=> d!712719 (= lt!886707 (+!69 lt!886672 (tuple2!28609 lt!886682 lt!886681)))))

(declare-fun lt!886706 () Unit!42476)

(declare-fun choose!14635 (ListLongMap!467 (_ BitVec 64) List!29136 Hashable!3234) Unit!42476)

(assert (=> d!712719 (= lt!886706 (choose!14635 lt!886672 lt!886682 lt!886681 (hashF!5187 (_2!16844 lt!886676))))))

(assert (=> d!712719 (forall!5951 (toList!1522 lt!886672) lambda!93736)))

(assert (=> d!712719 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!40 lt!886672 lt!886682 lt!886681 (hashF!5187 (_2!16844 lt!886676))) lt!886706)))

(declare-fun b!2479706 () Bool)

(assert (=> b!2479706 (= e!1573762 (allKeysSameHashInMap!144 lt!886707 (hashF!5187 (_2!16844 lt!886676))))))

(assert (= (and d!712719 res!1049607) b!2479706))

(declare-fun m!2847521 () Bool)

(assert (=> d!712719 m!2847521))

(assert (=> d!712719 m!2847455))

(declare-fun m!2847523 () Bool)

(assert (=> d!712719 m!2847523))

(declare-fun m!2847525 () Bool)

(assert (=> d!712719 m!2847525))

(declare-fun m!2847527 () Bool)

(assert (=> b!2479706 m!2847527))

(assert (=> b!2479676 d!712719))

(declare-fun bs!467350 () Bool)

(declare-fun d!712721 () Bool)

(assert (= bs!467350 (and d!712721 d!712713)))

(declare-fun lambda!93737 () Int)

(assert (=> bs!467350 (= lambda!93737 lambda!93731)))

(assert (=> d!712721 true))

(assert (=> d!712721 true))

(assert (=> d!712721 (= (allKeysSameHash!50 lt!886679 lt!886682 (hashF!5187 (_2!16844 lt!886676))) (forall!5952 lt!886679 lambda!93737))))

(declare-fun bs!467351 () Bool)

(assert (= bs!467351 d!712721))

(declare-fun m!2847529 () Bool)

(assert (=> bs!467351 m!2847529))

(assert (=> b!2479676 d!712721))

(declare-fun d!712723 () Bool)

(assert (=> d!712723 (dynLambda!12460 lambda!93725 (tuple2!28609 lt!886682 lt!886679))))

(declare-fun lt!886710 () Unit!42476)

(declare-fun choose!14636 (List!29137 Int tuple2!28608) Unit!42476)

(assert (=> d!712723 (= lt!886710 (choose!14636 (toList!1522 lt!886672) lambda!93725 (tuple2!28609 lt!886682 lt!886679)))))

(declare-fun e!1573765 () Bool)

(assert (=> d!712723 e!1573765))

(declare-fun res!1049610 () Bool)

(assert (=> d!712723 (=> (not res!1049610) (not e!1573765))))

(assert (=> d!712723 (= res!1049610 (forall!5951 (toList!1522 lt!886672) lambda!93725))))

(assert (=> d!712723 (= (forallContained!834 (toList!1522 lt!886672) lambda!93725 (tuple2!28609 lt!886682 lt!886679)) lt!886710)))

(declare-fun b!2479709 () Bool)

(assert (=> b!2479709 (= e!1573765 (contains!5039 (toList!1522 lt!886672) (tuple2!28609 lt!886682 lt!886679)))))

(assert (= (and d!712723 res!1049610) b!2479709))

(declare-fun b_lambda!76081 () Bool)

(assert (=> (not b_lambda!76081) (not d!712723)))

(declare-fun m!2847531 () Bool)

(assert (=> d!712723 m!2847531))

(declare-fun m!2847533 () Bool)

(assert (=> d!712723 m!2847533))

(declare-fun m!2847535 () Bool)

(assert (=> d!712723 m!2847535))

(declare-fun m!2847537 () Bool)

(assert (=> b!2479709 m!2847537))

(assert (=> b!2479677 d!712723))

(declare-fun d!712725 () Bool)

(declare-fun hash!666 (Hashable!3234 K!5395) (_ BitVec 64))

(assert (=> d!712725 (= (hash!662 (hashF!5187 thiss!42540) key!2246) (hash!666 (hashF!5187 thiss!42540) key!2246))))

(declare-fun bs!467352 () Bool)

(assert (= bs!467352 d!712725))

(declare-fun m!2847539 () Bool)

(assert (=> bs!467352 m!2847539))

(assert (=> b!2479677 d!712725))

(declare-fun d!712727 () Bool)

(declare-fun res!1049615 () Bool)

(declare-fun e!1573770 () Bool)

(assert (=> d!712727 (=> res!1049615 e!1573770)))

(assert (=> d!712727 (= res!1049615 (not ((_ is Cons!29036) lt!886681)))))

(assert (=> d!712727 (= (noDuplicateKeys!63 lt!886681) e!1573770)))

(declare-fun b!2479714 () Bool)

(declare-fun e!1573771 () Bool)

(assert (=> b!2479714 (= e!1573770 e!1573771)))

(declare-fun res!1049616 () Bool)

(assert (=> b!2479714 (=> (not res!1049616) (not e!1573771))))

(declare-fun containsKey!129 (List!29136 K!5395) Bool)

(assert (=> b!2479714 (= res!1049616 (not (containsKey!129 (t!210791 lt!886681) (_1!16843 (h!34441 lt!886681)))))))

(declare-fun b!2479715 () Bool)

(assert (=> b!2479715 (= e!1573771 (noDuplicateKeys!63 (t!210791 lt!886681)))))

(assert (= (and d!712727 (not res!1049615)) b!2479714))

(assert (= (and b!2479714 res!1049616) b!2479715))

(declare-fun m!2847541 () Bool)

(assert (=> b!2479714 m!2847541))

(declare-fun m!2847543 () Bool)

(assert (=> b!2479715 m!2847543))

(assert (=> b!2479677 d!712727))

(declare-fun d!712729 () Bool)

(declare-fun map!6126 (LongMapFixedSize!6648) ListLongMap!467)

(assert (=> d!712729 (= (map!6125 (v!31355 (underlying!6856 thiss!42540))) (map!6126 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540))))))))

(declare-fun bs!467353 () Bool)

(assert (= bs!467353 d!712729))

(declare-fun m!2847545 () Bool)

(assert (=> bs!467353 m!2847545))

(assert (=> b!2479677 d!712729))

(declare-fun b!2479724 () Bool)

(declare-fun e!1573777 () List!29136)

(assert (=> b!2479724 (= e!1573777 (t!210791 lt!886679))))

(declare-fun b!2479727 () Bool)

(declare-fun e!1573776 () List!29136)

(assert (=> b!2479727 (= e!1573776 Nil!29036)))

(declare-fun b!2479726 () Bool)

(assert (=> b!2479726 (= e!1573776 (Cons!29036 (h!34441 lt!886679) (removePairForKey!53 (t!210791 lt!886679) key!2246)))))

(declare-fun d!712731 () Bool)

(declare-fun lt!886713 () List!29136)

(assert (=> d!712731 (not (containsKey!129 lt!886713 key!2246))))

(assert (=> d!712731 (= lt!886713 e!1573777)))

(declare-fun c!394425 () Bool)

(assert (=> d!712731 (= c!394425 (and ((_ is Cons!29036) lt!886679) (= (_1!16843 (h!34441 lt!886679)) key!2246)))))

(assert (=> d!712731 (noDuplicateKeys!63 lt!886679)))

(assert (=> d!712731 (= (removePairForKey!53 lt!886679 key!2246) lt!886713)))

(declare-fun b!2479725 () Bool)

(assert (=> b!2479725 (= e!1573777 e!1573776)))

(declare-fun c!394424 () Bool)

(assert (=> b!2479725 (= c!394424 ((_ is Cons!29036) lt!886679))))

(assert (= (and d!712731 c!394425) b!2479724))

(assert (= (and d!712731 (not c!394425)) b!2479725))

(assert (= (and b!2479725 c!394424) b!2479726))

(assert (= (and b!2479725 (not c!394424)) b!2479727))

(declare-fun m!2847547 () Bool)

(assert (=> b!2479726 m!2847547))

(declare-fun m!2847549 () Bool)

(assert (=> d!712731 m!2847549))

(assert (=> d!712731 m!2847497))

(assert (=> b!2479677 d!712731))

(declare-fun d!712733 () Bool)

(declare-fun lt!886716 () ListMap!1007)

(declare-fun invariantList!407 (List!29136) Bool)

(assert (=> d!712733 (invariantList!407 (toList!1523 lt!886716))))

(declare-fun extractMap!154 (List!29137) ListMap!1007)

(assert (=> d!712733 (= lt!886716 (extractMap!154 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540))))))))

(assert (=> d!712733 (valid!2537 thiss!42540)))

(assert (=> d!712733 (= (map!6124 thiss!42540) lt!886716)))

(declare-fun bs!467354 () Bool)

(assert (= bs!467354 d!712733))

(declare-fun m!2847551 () Bool)

(assert (=> bs!467354 m!2847551))

(assert (=> bs!467354 m!2847477))

(declare-fun m!2847553 () Bool)

(assert (=> bs!467354 m!2847553))

(assert (=> bs!467354 m!2847491))

(assert (=> b!2479677 d!712733))

(declare-fun d!712735 () Bool)

(assert (=> d!712735 (noDuplicateKeys!63 (removePairForKey!53 lt!886679 key!2246))))

(declare-fun lt!886719 () Unit!42476)

(declare-fun choose!14637 (List!29136 K!5395) Unit!42476)

(assert (=> d!712735 (= lt!886719 (choose!14637 lt!886679 key!2246))))

(assert (=> d!712735 (noDuplicateKeys!63 lt!886679)))

(assert (=> d!712735 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!49 lt!886679 key!2246) lt!886719)))

(declare-fun bs!467355 () Bool)

(assert (= bs!467355 d!712735))

(assert (=> bs!467355 m!2847471))

(assert (=> bs!467355 m!2847471))

(declare-fun m!2847555 () Bool)

(assert (=> bs!467355 m!2847555))

(declare-fun m!2847557 () Bool)

(assert (=> bs!467355 m!2847557))

(assert (=> bs!467355 m!2847497))

(assert (=> b!2479677 d!712735))

(declare-fun d!712737 () Bool)

(declare-fun e!1573780 () Bool)

(assert (=> d!712737 e!1573780))

(declare-fun c!394428 () Bool)

(declare-fun contains!5040 (MutLongMap!3324 (_ BitVec 64)) Bool)

(assert (=> d!712737 (= c!394428 (contains!5040 (v!31355 (underlying!6856 thiss!42540)) lt!886682))))

(declare-fun lt!886722 () List!29136)

(declare-fun apply!6886 (LongMapFixedSize!6648 (_ BitVec 64)) List!29136)

(assert (=> d!712737 (= lt!886722 (apply!6886 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))) lt!886682))))

(assert (=> d!712737 (valid!2536 (v!31355 (underlying!6856 thiss!42540)))))

(assert (=> d!712737 (= (apply!6885 (v!31355 (underlying!6856 thiss!42540)) lt!886682) lt!886722)))

(declare-fun b!2479732 () Bool)

(declare-fun get!8954 (Option!5742) List!29136)

(assert (=> b!2479732 (= e!1573780 (= lt!886722 (get!8954 (getValueByKey!133 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540)))) lt!886682))))))

(declare-fun b!2479733 () Bool)

(declare-fun dynLambda!12461 (Int (_ BitVec 64)) List!29136)

(assert (=> b!2479733 (= e!1573780 (= lt!886722 (dynLambda!12461 (defaultEntry!3698 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540))))) lt!886682)))))

(assert (=> b!2479733 ((_ is LongMap!3324) (v!31355 (underlying!6856 thiss!42540)))))

(assert (= (and d!712737 c!394428) b!2479732))

(assert (= (and d!712737 (not c!394428)) b!2479733))

(declare-fun b_lambda!76083 () Bool)

(assert (=> (not b_lambda!76083) (not b!2479733)))

(declare-fun t!210794 () Bool)

(declare-fun tb!140373 () Bool)

(assert (=> (and b!2479678 (= (defaultEntry!3698 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540))))) (defaultEntry!3698 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) t!210794) tb!140373))

(assert (=> b!2479733 t!210794))

(declare-fun result!173306 () Bool)

(declare-fun b_and!188401 () Bool)

(assert (= b_and!188397 (and (=> t!210794 result!173306) b_and!188401)))

(declare-fun m!2847559 () Bool)

(assert (=> d!712737 m!2847559))

(declare-fun m!2847561 () Bool)

(assert (=> d!712737 m!2847561))

(declare-fun m!2847563 () Bool)

(assert (=> d!712737 m!2847563))

(assert (=> b!2479732 m!2847477))

(declare-fun m!2847565 () Bool)

(assert (=> b!2479732 m!2847565))

(assert (=> b!2479732 m!2847565))

(declare-fun m!2847567 () Bool)

(assert (=> b!2479732 m!2847567))

(declare-fun m!2847569 () Bool)

(assert (=> b!2479733 m!2847569))

(assert (=> b!2479677 d!712737))

(declare-fun b!2479752 () Bool)

(declare-fun e!1573793 () tuple2!28610)

(assert (=> b!2479752 (= e!1573793 (tuple2!28611 true (v!31355 (underlying!6856 thiss!42540))))))

(declare-fun bm!151906 () Bool)

(declare-fun call!151912 () ListLongMap!467)

(declare-fun lt!886733 () tuple2!28610)

(assert (=> bm!151906 (= call!151912 (map!6125 (_2!16846 lt!886733)))))

(declare-fun b!2479753 () Bool)

(declare-fun e!1573795 () Bool)

(declare-fun call!151911 () ListLongMap!467)

(assert (=> b!2479753 (= e!1573795 (= call!151912 (+!69 call!151911 (tuple2!28609 lt!886682 lt!886681))))))

(declare-fun b!2479754 () Bool)

(declare-fun e!1573792 () tuple2!28610)

(declare-datatypes ((tuple2!28612 0))(
  ( (tuple2!28613 (_1!16847 Bool) (_2!16847 LongMapFixedSize!6648)) )
))
(declare-fun lt!886731 () tuple2!28612)

(assert (=> b!2479754 (= e!1573792 (tuple2!28611 (_1!16847 lt!886731) (LongMap!3324 (Cell!13114 (_2!16847 lt!886731)))))))

(declare-fun lt!886732 () tuple2!28610)

(declare-fun update!170 (LongMapFixedSize!6648 (_ BitVec 64) List!29136) tuple2!28612)

(assert (=> b!2479754 (= lt!886731 (update!170 (v!31354 (underlying!6855 (_2!16846 lt!886732))) lt!886682 lt!886681))))

(declare-fun b!2479755 () Bool)

(declare-fun lt!886734 () tuple2!28610)

(assert (=> b!2479755 (= e!1573793 (tuple2!28611 (_1!16846 lt!886734) (_2!16846 lt!886734)))))

(declare-fun repack!18 (MutLongMap!3324) tuple2!28610)

(assert (=> b!2479755 (= lt!886734 (repack!18 (v!31355 (underlying!6856 thiss!42540))))))

(declare-fun b!2479756 () Bool)

(declare-fun e!1573794 () Bool)

(assert (=> b!2479756 (= e!1573794 (= call!151912 call!151911))))

(declare-fun b!2479757 () Bool)

(assert (=> b!2479757 (= e!1573792 (tuple2!28611 false (_2!16846 lt!886732)))))

(declare-fun b!2479758 () Bool)

(assert (=> b!2479758 (= e!1573794 e!1573795)))

(declare-fun res!1049625 () Bool)

(assert (=> b!2479758 (= res!1049625 (contains!5038 call!151912 lt!886682))))

(assert (=> b!2479758 (=> (not res!1049625) (not e!1573795))))

(declare-fun b!2479759 () Bool)

(declare-fun e!1573791 () Bool)

(assert (=> b!2479759 (= e!1573791 e!1573794)))

(declare-fun c!394437 () Bool)

(assert (=> b!2479759 (= c!394437 (_1!16846 lt!886733))))

(declare-fun b!2479760 () Bool)

(declare-fun res!1049623 () Bool)

(assert (=> b!2479760 (=> (not res!1049623) (not e!1573791))))

(assert (=> b!2479760 (= res!1049623 (valid!2536 (_2!16846 lt!886733)))))

(declare-fun bm!151907 () Bool)

(assert (=> bm!151907 (= call!151911 (map!6125 (v!31355 (underlying!6856 thiss!42540))))))

(declare-fun d!712739 () Bool)

(assert (=> d!712739 e!1573791))

(declare-fun res!1049624 () Bool)

(assert (=> d!712739 (=> (not res!1049624) (not e!1573791))))

(assert (=> d!712739 (= res!1049624 ((_ is LongMap!3324) (_2!16846 lt!886733)))))

(assert (=> d!712739 (= lt!886733 e!1573792)))

(declare-fun c!394435 () Bool)

(assert (=> d!712739 (= c!394435 (_1!16846 lt!886732))))

(assert (=> d!712739 (= lt!886732 e!1573793)))

(declare-fun c!394436 () Bool)

(declare-fun imbalanced!14 (MutLongMap!3324) Bool)

(assert (=> d!712739 (= c!394436 (imbalanced!14 (v!31355 (underlying!6856 thiss!42540))))))

(assert (=> d!712739 (valid!2536 (v!31355 (underlying!6856 thiss!42540)))))

(assert (=> d!712739 (= (update!169 (v!31355 (underlying!6856 thiss!42540)) lt!886682 lt!886681) lt!886733)))

(assert (= (and d!712739 c!394436) b!2479755))

(assert (= (and d!712739 (not c!394436)) b!2479752))

(assert (= (and d!712739 c!394435) b!2479754))

(assert (= (and d!712739 (not c!394435)) b!2479757))

(assert (= (and d!712739 res!1049624) b!2479760))

(assert (= (and b!2479760 res!1049623) b!2479759))

(assert (= (and b!2479759 c!394437) b!2479758))

(assert (= (and b!2479759 (not c!394437)) b!2479756))

(assert (= (and b!2479758 res!1049625) b!2479753))

(assert (= (or b!2479758 b!2479753 b!2479756) bm!151906))

(assert (= (or b!2479753 b!2479756) bm!151907))

(assert (=> bm!151907 m!2847477))

(declare-fun m!2847571 () Bool)

(assert (=> bm!151906 m!2847571))

(declare-fun m!2847573 () Bool)

(assert (=> b!2479754 m!2847573))

(declare-fun m!2847575 () Bool)

(assert (=> d!712739 m!2847575))

(assert (=> d!712739 m!2847563))

(declare-fun m!2847577 () Bool)

(assert (=> b!2479758 m!2847577))

(declare-fun m!2847579 () Bool)

(assert (=> b!2479760 m!2847579))

(declare-fun m!2847581 () Bool)

(assert (=> b!2479755 m!2847581))

(declare-fun m!2847583 () Bool)

(assert (=> b!2479753 m!2847583))

(assert (=> b!2479677 d!712739))

(declare-fun bs!467356 () Bool)

(declare-fun b!2479792 () Bool)

(assert (= bs!467356 (and b!2479792 b!2479677)))

(declare-fun lambda!93740 () Int)

(assert (=> bs!467356 (= lambda!93740 lambda!93725)))

(declare-fun bs!467357 () Bool)

(assert (= bs!467357 (and b!2479792 d!712711)))

(assert (=> bs!467357 (not (= lambda!93740 lambda!93728))))

(declare-fun bs!467358 () Bool)

(assert (= bs!467358 (and b!2479792 d!712719)))

(assert (=> bs!467358 (= lambda!93740 lambda!93736)))

(declare-fun b!2479783 () Bool)

(assert (=> b!2479783 false))

(declare-fun lt!886790 () Unit!42476)

(declare-fun lt!886778 () Unit!42476)

(assert (=> b!2479783 (= lt!886790 lt!886778)))

(declare-fun lt!886775 () ListLongMap!467)

(declare-fun contains!5041 (ListMap!1007 K!5395) Bool)

(assert (=> b!2479783 (contains!5041 (extractMap!154 (toList!1522 lt!886775)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!66 (ListLongMap!467 K!5395 Hashable!3234) Unit!42476)

(assert (=> b!2479783 (= lt!886778 (lemmaInLongMapThenInGenericMap!66 lt!886775 key!2246 (hashF!5187 thiss!42540)))))

(declare-fun call!151927 () ListLongMap!467)

(assert (=> b!2479783 (= lt!886775 call!151927)))

(declare-fun e!1573811 () Unit!42476)

(declare-fun Unit!42480 () Unit!42476)

(assert (=> b!2479783 (= e!1573811 Unit!42480)))

(declare-fun bm!151920 () Bool)

(declare-fun call!151929 () Bool)

(declare-datatypes ((Option!5743 0))(
  ( (None!5742) (Some!5742 (v!31361 tuple2!28604)) )
))
(declare-fun call!151928 () Option!5743)

(declare-fun isDefined!4564 (Option!5743) Bool)

(assert (=> bm!151920 (= call!151929 (isDefined!4564 call!151928))))

(declare-fun b!2479784 () Bool)

(declare-fun e!1573812 () Unit!42476)

(declare-fun lt!886787 () Unit!42476)

(assert (=> b!2479784 (= e!1573812 lt!886787)))

(declare-fun lt!886792 () ListLongMap!467)

(assert (=> b!2479784 (= lt!886792 call!151927)))

(declare-fun lemmaInGenericMapThenInLongMap!66 (ListLongMap!467 K!5395 Hashable!3234) Unit!42476)

(assert (=> b!2479784 (= lt!886787 (lemmaInGenericMapThenInLongMap!66 lt!886792 key!2246 (hashF!5187 thiss!42540)))))

(declare-fun res!1049634 () Bool)

(declare-fun call!151930 () Bool)

(assert (=> b!2479784 (= res!1049634 call!151930)))

(declare-fun e!1573810 () Bool)

(assert (=> b!2479784 (=> (not res!1049634) (not e!1573810))))

(assert (=> b!2479784 e!1573810))

(declare-fun bm!151921 () Bool)

(declare-fun call!151925 () (_ BitVec 64))

(assert (=> bm!151921 (= call!151925 (hash!662 (hashF!5187 thiss!42540) key!2246))))

(declare-fun b!2479785 () Bool)

(assert (=> b!2479785 false))

(declare-fun lt!886779 () Unit!42476)

(declare-fun lt!886776 () Unit!42476)

(assert (=> b!2479785 (= lt!886779 lt!886776)))

(declare-fun lt!886793 () List!29137)

(declare-fun lt!886794 () (_ BitVec 64))

(declare-fun lt!886780 () List!29136)

(assert (=> b!2479785 (contains!5039 lt!886793 (tuple2!28609 lt!886794 lt!886780))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!67 (List!29137 (_ BitVec 64) List!29136) Unit!42476)

(assert (=> b!2479785 (= lt!886776 (lemmaGetValueByKeyImpliesContainsTuple!67 lt!886793 lt!886794 lt!886780))))

(assert (=> b!2479785 (= lt!886780 (apply!6885 (v!31355 (underlying!6856 thiss!42540)) lt!886794))))

(assert (=> b!2479785 (= lt!886793 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540)))))))

(declare-fun lt!886789 () Unit!42476)

(declare-fun lt!886781 () Unit!42476)

(assert (=> b!2479785 (= lt!886789 lt!886781)))

(declare-fun lt!886783 () List!29137)

(declare-fun isDefined!4565 (Option!5742) Bool)

(assert (=> b!2479785 (isDefined!4565 (getValueByKey!133 lt!886783 lt!886794))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!90 (List!29137 (_ BitVec 64)) Unit!42476)

(assert (=> b!2479785 (= lt!886781 (lemmaContainsKeyImpliesGetValueByKeyDefined!90 lt!886783 lt!886794))))

(assert (=> b!2479785 (= lt!886783 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540)))))))

(declare-fun lt!886786 () Unit!42476)

(declare-fun lt!886788 () Unit!42476)

(assert (=> b!2479785 (= lt!886786 lt!886788)))

(declare-fun lt!886777 () List!29137)

(declare-fun containsKey!130 (List!29137 (_ BitVec 64)) Bool)

(assert (=> b!2479785 (containsKey!130 lt!886777 lt!886794)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!67 (List!29137 (_ BitVec 64)) Unit!42476)

(assert (=> b!2479785 (= lt!886788 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!67 lt!886777 lt!886794))))

(assert (=> b!2479785 (= lt!886777 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540)))))))

(declare-fun e!1573815 () Unit!42476)

(declare-fun Unit!42481 () Unit!42476)

(assert (=> b!2479785 (= e!1573815 Unit!42481)))

(declare-fun b!2479786 () Bool)

(declare-fun e!1573813 () Bool)

(declare-fun getPair!66 (List!29136 K!5395) Option!5743)

(assert (=> b!2479786 (= e!1573813 (isDefined!4564 (getPair!66 (apply!6885 (v!31355 (underlying!6856 thiss!42540)) lt!886794) key!2246)))))

(declare-fun b!2479787 () Bool)

(declare-fun e!1573814 () Unit!42476)

(declare-fun Unit!42482 () Unit!42476)

(assert (=> b!2479787 (= e!1573814 Unit!42482)))

(declare-fun c!394446 () Bool)

(declare-fun bm!151922 () Bool)

(assert (=> bm!151922 (= call!151930 (contains!5038 (ite c!394446 lt!886792 call!151927) call!151925))))

(declare-fun b!2479788 () Bool)

(declare-fun e!1573816 () Bool)

(assert (=> b!2479788 (= e!1573816 call!151929)))

(declare-fun call!151926 () List!29136)

(declare-fun bm!151923 () Bool)

(declare-fun apply!6887 (ListLongMap!467 (_ BitVec 64)) List!29136)

(assert (=> bm!151923 (= call!151926 (apply!6887 (ite c!394446 lt!886792 call!151927) call!151925))))

(declare-fun b!2479790 () Bool)

(declare-fun Unit!42483 () Unit!42476)

(assert (=> b!2479790 (= e!1573815 Unit!42483)))

(declare-fun b!2479791 () Bool)

(assert (=> b!2479791 (= e!1573812 e!1573811)))

(declare-fun res!1049632 () Bool)

(assert (=> b!2479791 (= res!1049632 call!151930)))

(assert (=> b!2479791 (=> (not res!1049632) (not e!1573816))))

(declare-fun c!394448 () Bool)

(assert (=> b!2479791 (= c!394448 e!1573816)))

(declare-fun d!712741 () Bool)

(declare-fun lt!886791 () Bool)

(assert (=> d!712741 (= lt!886791 (contains!5041 (map!6124 thiss!42540) key!2246))))

(assert (=> d!712741 (= lt!886791 e!1573813)))

(declare-fun res!1049633 () Bool)

(assert (=> d!712741 (=> (not res!1049633) (not e!1573813))))

(assert (=> d!712741 (= res!1049633 (contains!5040 (v!31355 (underlying!6856 thiss!42540)) lt!886794))))

(declare-fun lt!886782 () Unit!42476)

(assert (=> d!712741 (= lt!886782 e!1573812)))

(assert (=> d!712741 (= c!394446 (contains!5041 (extractMap!154 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540))))) key!2246))))

(declare-fun lt!886784 () Unit!42476)

(assert (=> d!712741 (= lt!886784 e!1573814)))

(declare-fun c!394447 () Bool)

(assert (=> d!712741 (= c!394447 (contains!5040 (v!31355 (underlying!6856 thiss!42540)) lt!886794))))

(assert (=> d!712741 (= lt!886794 (hash!662 (hashF!5187 thiss!42540) key!2246))))

(assert (=> d!712741 (valid!2537 thiss!42540)))

(assert (=> d!712741 (= (contains!5037 thiss!42540 key!2246) lt!886791)))

(declare-fun b!2479789 () Bool)

(declare-fun Unit!42484 () Unit!42476)

(assert (=> b!2479789 (= e!1573811 Unit!42484)))

(declare-fun bm!151924 () Bool)

(assert (=> bm!151924 (= call!151927 (map!6125 (v!31355 (underlying!6856 thiss!42540))))))

(declare-fun bm!151925 () Bool)

(assert (=> bm!151925 (= call!151928 (getPair!66 call!151926 key!2246))))

(assert (=> b!2479792 (= e!1573814 (forallContained!834 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540)))) lambda!93740 (tuple2!28609 lt!886794 (apply!6885 (v!31355 (underlying!6856 thiss!42540)) lt!886794))))))

(declare-fun c!394449 () Bool)

(assert (=> b!2479792 (= c!394449 (not (contains!5039 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540)))) (tuple2!28609 lt!886794 (apply!6885 (v!31355 (underlying!6856 thiss!42540)) lt!886794)))))))

(declare-fun lt!886785 () Unit!42476)

(assert (=> b!2479792 (= lt!886785 e!1573815)))

(declare-fun b!2479793 () Bool)

(assert (=> b!2479793 (= e!1573810 call!151929)))

(assert (= (and d!712741 c!394447) b!2479792))

(assert (= (and d!712741 (not c!394447)) b!2479787))

(assert (= (and b!2479792 c!394449) b!2479785))

(assert (= (and b!2479792 (not c!394449)) b!2479790))

(assert (= (and d!712741 c!394446) b!2479784))

(assert (= (and d!712741 (not c!394446)) b!2479791))

(assert (= (and b!2479784 res!1049634) b!2479793))

(assert (= (and b!2479791 res!1049632) b!2479788))

(assert (= (and b!2479791 c!394448) b!2479783))

(assert (= (and b!2479791 (not c!394448)) b!2479789))

(assert (= (or b!2479784 b!2479793 b!2479791 b!2479788) bm!151921))

(assert (= (or b!2479784 b!2479791 b!2479788 b!2479783) bm!151924))

(assert (= (or b!2479793 b!2479788) bm!151923))

(assert (= (or b!2479784 b!2479791) bm!151922))

(assert (= (or b!2479793 b!2479788) bm!151925))

(assert (= (or b!2479793 b!2479788) bm!151920))

(assert (= (and d!712741 res!1049633) b!2479786))

(declare-fun m!2847585 () Bool)

(assert (=> b!2479785 m!2847585))

(declare-fun m!2847587 () Bool)

(assert (=> b!2479785 m!2847587))

(assert (=> b!2479785 m!2847585))

(declare-fun m!2847589 () Bool)

(assert (=> b!2479785 m!2847589))

(declare-fun m!2847591 () Bool)

(assert (=> b!2479785 m!2847591))

(assert (=> b!2479785 m!2847477))

(declare-fun m!2847593 () Bool)

(assert (=> b!2479785 m!2847593))

(declare-fun m!2847595 () Bool)

(assert (=> b!2479785 m!2847595))

(declare-fun m!2847597 () Bool)

(assert (=> b!2479785 m!2847597))

(declare-fun m!2847599 () Bool)

(assert (=> b!2479785 m!2847599))

(declare-fun m!2847601 () Bool)

(assert (=> bm!151920 m!2847601))

(assert (=> bm!151921 m!2847481))

(assert (=> b!2479792 m!2847477))

(assert (=> b!2479792 m!2847589))

(declare-fun m!2847603 () Bool)

(assert (=> b!2479792 m!2847603))

(declare-fun m!2847605 () Bool)

(assert (=> b!2479792 m!2847605))

(declare-fun m!2847607 () Bool)

(assert (=> bm!151923 m!2847607))

(assert (=> bm!151924 m!2847477))

(declare-fun m!2847609 () Bool)

(assert (=> d!712741 m!2847609))

(assert (=> d!712741 m!2847477))

(assert (=> d!712741 m!2847479))

(declare-fun m!2847611 () Bool)

(assert (=> d!712741 m!2847611))

(assert (=> d!712741 m!2847479))

(assert (=> d!712741 m!2847481))

(assert (=> d!712741 m!2847553))

(assert (=> d!712741 m!2847553))

(declare-fun m!2847613 () Bool)

(assert (=> d!712741 m!2847613))

(assert (=> d!712741 m!2847491))

(declare-fun m!2847615 () Bool)

(assert (=> bm!151925 m!2847615))

(declare-fun m!2847617 () Bool)

(assert (=> bm!151922 m!2847617))

(assert (=> b!2479786 m!2847589))

(assert (=> b!2479786 m!2847589))

(declare-fun m!2847619 () Bool)

(assert (=> b!2479786 m!2847619))

(assert (=> b!2479786 m!2847619))

(declare-fun m!2847621 () Bool)

(assert (=> b!2479786 m!2847621))

(declare-fun m!2847623 () Bool)

(assert (=> b!2479784 m!2847623))

(declare-fun m!2847625 () Bool)

(assert (=> b!2479783 m!2847625))

(assert (=> b!2479783 m!2847625))

(declare-fun m!2847627 () Bool)

(assert (=> b!2479783 m!2847627))

(declare-fun m!2847629 () Bool)

(assert (=> b!2479783 m!2847629))

(assert (=> b!2479682 d!712741))

(declare-fun d!712743 () Bool)

(assert (=> d!712743 (= (array_inv!3757 (_keys!3621 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) (bvsge (size!22658 (_keys!3621 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479678 d!712743))

(declare-fun d!712745 () Bool)

(assert (=> d!712745 (= (array_inv!3758 (_values!3604 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) (bvsge (size!22657 (_values!3604 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479678 d!712745))

(declare-fun bs!467359 () Bool)

(declare-fun d!712747 () Bool)

(assert (= bs!467359 (and d!712747 b!2479677)))

(declare-fun lambda!93743 () Int)

(assert (=> bs!467359 (not (= lambda!93743 lambda!93725))))

(declare-fun bs!467360 () Bool)

(assert (= bs!467360 (and d!712747 d!712711)))

(assert (=> bs!467360 (= lambda!93743 lambda!93728)))

(declare-fun bs!467361 () Bool)

(assert (= bs!467361 (and d!712747 d!712719)))

(assert (=> bs!467361 (not (= lambda!93743 lambda!93736))))

(declare-fun bs!467362 () Bool)

(assert (= bs!467362 (and d!712747 b!2479792)))

(assert (=> bs!467362 (not (= lambda!93743 lambda!93740))))

(assert (=> d!712747 true))

(assert (=> d!712747 (= (allKeysSameHashInMap!144 lt!886683 (hashF!5187 (_2!16844 lt!886676))) (forall!5951 (toList!1522 lt!886683) lambda!93743))))

(declare-fun bs!467363 () Bool)

(assert (= bs!467363 d!712747))

(declare-fun m!2847631 () Bool)

(assert (=> bs!467363 m!2847631))

(assert (=> b!2479683 d!712747))

(declare-fun bs!467364 () Bool)

(declare-fun b!2479798 () Bool)

(assert (= bs!467364 (and b!2479798 b!2479677)))

(declare-fun lambda!93746 () Int)

(assert (=> bs!467364 (= lambda!93746 lambda!93725)))

(declare-fun bs!467365 () Bool)

(assert (= bs!467365 (and b!2479798 b!2479792)))

(assert (=> bs!467365 (= lambda!93746 lambda!93740)))

(declare-fun bs!467366 () Bool)

(assert (= bs!467366 (and b!2479798 d!712747)))

(assert (=> bs!467366 (not (= lambda!93746 lambda!93743))))

(declare-fun bs!467367 () Bool)

(assert (= bs!467367 (and b!2479798 d!712711)))

(assert (=> bs!467367 (not (= lambda!93746 lambda!93728))))

(declare-fun bs!467368 () Bool)

(assert (= bs!467368 (and b!2479798 d!712719)))

(assert (=> bs!467368 (= lambda!93746 lambda!93736)))

(declare-fun d!712749 () Bool)

(declare-fun res!1049639 () Bool)

(declare-fun e!1573819 () Bool)

(assert (=> d!712749 (=> (not res!1049639) (not e!1573819))))

(assert (=> d!712749 (= res!1049639 (valid!2536 (v!31355 (underlying!6856 thiss!42540))))))

(assert (=> d!712749 (= (valid!2537 thiss!42540) e!1573819)))

(declare-fun res!1049640 () Bool)

(assert (=> b!2479798 (=> (not res!1049640) (not e!1573819))))

(assert (=> b!2479798 (= res!1049640 (forall!5951 (toList!1522 (map!6125 (v!31355 (underlying!6856 thiss!42540)))) lambda!93746))))

(declare-fun b!2479799 () Bool)

(assert (=> b!2479799 (= e!1573819 (allKeysSameHashInMap!144 (map!6125 (v!31355 (underlying!6856 thiss!42540))) (hashF!5187 thiss!42540)))))

(assert (= (and d!712749 res!1049639) b!2479798))

(assert (= (and b!2479798 res!1049640) b!2479799))

(assert (=> d!712749 m!2847563))

(assert (=> b!2479798 m!2847477))

(declare-fun m!2847633 () Bool)

(assert (=> b!2479798 m!2847633))

(assert (=> b!2479799 m!2847477))

(assert (=> b!2479799 m!2847477))

(declare-fun m!2847635 () Bool)

(assert (=> b!2479799 m!2847635))

(assert (=> b!2479679 d!712749))

(declare-fun d!712751 () Bool)

(declare-fun res!1049641 () Bool)

(declare-fun e!1573820 () Bool)

(assert (=> d!712751 (=> res!1049641 e!1573820)))

(assert (=> d!712751 (= res!1049641 ((_ is Nil!29037) (toList!1522 (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676)))))))))

(assert (=> d!712751 (= (forall!5951 (toList!1522 (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676))))) lambda!93725) e!1573820)))

(declare-fun b!2479800 () Bool)

(declare-fun e!1573821 () Bool)

(assert (=> b!2479800 (= e!1573820 e!1573821)))

(declare-fun res!1049642 () Bool)

(assert (=> b!2479800 (=> (not res!1049642) (not e!1573821))))

(assert (=> b!2479800 (= res!1049642 (dynLambda!12460 lambda!93725 (h!34442 (toList!1522 (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676))))))))))

(declare-fun b!2479801 () Bool)

(assert (=> b!2479801 (= e!1573821 (forall!5951 (t!210792 (toList!1522 (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676)))))) lambda!93725))))

(assert (= (and d!712751 (not res!1049641)) b!2479800))

(assert (= (and b!2479800 res!1049642) b!2479801))

(declare-fun b_lambda!76085 () Bool)

(assert (=> (not b_lambda!76085) (not b!2479800)))

(declare-fun m!2847637 () Bool)

(assert (=> b!2479800 m!2847637))

(declare-fun m!2847639 () Bool)

(assert (=> b!2479801 m!2847639))

(assert (=> b!2479680 d!712751))

(declare-fun d!712753 () Bool)

(assert (=> d!712753 (= (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676)))) (map!6126 (v!31354 (underlying!6855 (v!31355 (underlying!6856 (_2!16844 lt!886676)))))))))

(declare-fun bs!467369 () Bool)

(assert (= bs!467369 d!712753))

(declare-fun m!2847641 () Bool)

(assert (=> bs!467369 m!2847641))

(assert (=> b!2479680 d!712753))

(declare-fun d!712755 () Bool)

(declare-fun valid!2538 (LongMapFixedSize!6648) Bool)

(assert (=> d!712755 (= (valid!2536 (v!31355 (underlying!6856 (_2!16844 lt!886676)))) (valid!2538 (v!31354 (underlying!6855 (v!31355 (underlying!6856 (_2!16844 lt!886676)))))))))

(declare-fun bs!467370 () Bool)

(assert (= bs!467370 d!712755))

(declare-fun m!2847643 () Bool)

(assert (=> bs!467370 m!2847643))

(assert (=> b!2479675 d!712755))

(declare-fun b!2479806 () Bool)

(declare-fun e!1573824 () Bool)

(declare-fun tp_is_empty!12171 () Bool)

(declare-fun tp!793592 () Bool)

(assert (=> b!2479806 (= e!1573824 (and tp_is_empty!12169 tp_is_empty!12171 tp!793592))))

(assert (=> b!2479685 (= tp!793586 e!1573824)))

(assert (= (and b!2479685 ((_ is Cons!29036) mapDefault!15427)) b!2479806))

(declare-fun tp!793599 () Bool)

(declare-fun e!1573830 () Bool)

(declare-fun b!2479814 () Bool)

(assert (=> b!2479814 (= e!1573830 (and tp_is_empty!12169 tp_is_empty!12171 tp!793599))))

(declare-fun mapNonEmpty!15430 () Bool)

(declare-fun mapRes!15430 () Bool)

(declare-fun tp!793601 () Bool)

(declare-fun e!1573829 () Bool)

(assert (=> mapNonEmpty!15430 (= mapRes!15430 (and tp!793601 e!1573829))))

(declare-fun mapRest!15430 () (Array (_ BitVec 32) List!29136))

(declare-fun mapKey!15430 () (_ BitVec 32))

(declare-fun mapValue!15430 () List!29136)

(assert (=> mapNonEmpty!15430 (= mapRest!15427 (store mapRest!15430 mapKey!15430 mapValue!15430))))

(declare-fun tp!793600 () Bool)

(declare-fun b!2479813 () Bool)

(assert (=> b!2479813 (= e!1573829 (and tp_is_empty!12169 tp_is_empty!12171 tp!793600))))

(declare-fun mapIsEmpty!15430 () Bool)

(assert (=> mapIsEmpty!15430 mapRes!15430))

(declare-fun condMapEmpty!15430 () Bool)

(declare-fun mapDefault!15430 () List!29136)

(assert (=> mapNonEmpty!15427 (= condMapEmpty!15430 (= mapRest!15427 ((as const (Array (_ BitVec 32) List!29136)) mapDefault!15430)))))

(assert (=> mapNonEmpty!15427 (= tp!793587 (and e!1573830 mapRes!15430))))

(assert (= (and mapNonEmpty!15427 condMapEmpty!15430) mapIsEmpty!15430))

(assert (= (and mapNonEmpty!15427 (not condMapEmpty!15430)) mapNonEmpty!15430))

(assert (= (and mapNonEmpty!15430 ((_ is Cons!29036) mapValue!15430)) b!2479813))

(assert (= (and mapNonEmpty!15427 ((_ is Cons!29036) mapDefault!15430)) b!2479814))

(declare-fun m!2847645 () Bool)

(assert (=> mapNonEmpty!15430 m!2847645))

(declare-fun e!1573831 () Bool)

(declare-fun b!2479815 () Bool)

(declare-fun tp!793602 () Bool)

(assert (=> b!2479815 (= e!1573831 (and tp_is_empty!12169 tp_is_empty!12171 tp!793602))))

(assert (=> mapNonEmpty!15427 (= tp!793583 e!1573831)))

(assert (= (and mapNonEmpty!15427 ((_ is Cons!29036) mapValue!15427)) b!2479815))

(declare-fun tp!793603 () Bool)

(declare-fun b!2479816 () Bool)

(declare-fun e!1573832 () Bool)

(assert (=> b!2479816 (= e!1573832 (and tp_is_empty!12169 tp_is_empty!12171 tp!793603))))

(assert (=> b!2479678 (= tp!793589 e!1573832)))

(assert (= (and b!2479678 ((_ is Cons!29036) (zeroValue!3582 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540))))))) b!2479816))

(declare-fun e!1573833 () Bool)

(declare-fun tp!793604 () Bool)

(declare-fun b!2479817 () Bool)

(assert (=> b!2479817 (= e!1573833 (and tp_is_empty!12169 tp_is_empty!12171 tp!793604))))

(assert (=> b!2479678 (= tp!793588 e!1573833)))

(assert (= (and b!2479678 ((_ is Cons!29036) (minValue!3582 (v!31354 (underlying!6855 (v!31355 (underlying!6856 thiss!42540))))))) b!2479817))

(declare-fun b_lambda!76087 () Bool)

(assert (= b_lambda!76079 (or b!2479677 b_lambda!76087)))

(declare-fun bs!467371 () Bool)

(declare-fun d!712757 () Bool)

(assert (= bs!467371 (and d!712757 b!2479677)))

(assert (=> bs!467371 (= (dynLambda!12460 lambda!93725 (h!34442 (toList!1522 lt!886683))) (noDuplicateKeys!63 (_2!16845 (h!34442 (toList!1522 lt!886683)))))))

(declare-fun m!2847647 () Bool)

(assert (=> bs!467371 m!2847647))

(assert (=> b!2479702 d!712757))

(declare-fun b_lambda!76089 () Bool)

(assert (= b_lambda!76083 (or (and b!2479678 b_free!72153) b_lambda!76089)))

(declare-fun b_lambda!76091 () Bool)

(assert (= b_lambda!76085 (or b!2479677 b_lambda!76091)))

(declare-fun bs!467372 () Bool)

(declare-fun d!712759 () Bool)

(assert (= bs!467372 (and d!712759 b!2479677)))

(assert (=> bs!467372 (= (dynLambda!12460 lambda!93725 (h!34442 (toList!1522 (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676))))))) (noDuplicateKeys!63 (_2!16845 (h!34442 (toList!1522 (map!6125 (v!31355 (underlying!6856 (_2!16844 lt!886676)))))))))))

(declare-fun m!2847649 () Bool)

(assert (=> bs!467372 m!2847649))

(assert (=> b!2479800 d!712759))

(declare-fun b_lambda!76093 () Bool)

(assert (= b_lambda!76081 (or b!2479677 b_lambda!76093)))

(declare-fun bs!467373 () Bool)

(declare-fun d!712761 () Bool)

(assert (= bs!467373 (and d!712761 b!2479677)))

(assert (=> bs!467373 (= (dynLambda!12460 lambda!93725 (tuple2!28609 lt!886682 lt!886679)) (noDuplicateKeys!63 (_2!16845 (tuple2!28609 lt!886682 lt!886679))))))

(declare-fun m!2847651 () Bool)

(assert (=> bs!467373 m!2847651))

(assert (=> d!712723 d!712761))

(check-sat (not b!2479816) (not bm!151907) (not b!2479814) (not b!2479783) (not bs!467373) (not b!2479815) (not d!712755) (not d!712725) (not b!2479786) (not d!712713) (not b!2479758) (not d!712753) (not bm!151921) (not b!2479784) (not b!2479706) (not d!712735) (not b_lambda!76091) (not d!712733) (not bm!151925) (not b!2479801) (not bm!151906) (not b!2479799) (not d!712721) (not b_lambda!76089) (not d!712731) (not bm!151920) (not mapNonEmpty!15430) (not b!2479715) (not b!2479785) (not d!712749) b_and!188399 (not b!2479817) (not d!712711) (not b_lambda!76087) (not d!712719) (not b_next!72859) tp_is_empty!12169 (not b!2479726) (not b!2479753) (not d!712747) (not bm!151923) (not b_lambda!76093) (not b!2479792) (not bm!151922) b_and!188401 (not tb!140373) (not d!712741) tp_is_empty!12171 (not b!2479806) (not d!712739) (not d!712737) (not b!2479696) (not b!2479703) (not b!2479732) (not b!2479813) (not b!2479714) (not b!2479754) (not d!712709) (not bs!467371) (not bm!151924) (not d!712715) (not d!712729) (not b!2479798) (not d!712723) (not bs!467372) (not b!2479760) (not b!2479755) (not b_next!72857) (not b!2479697) (not b!2479709))
(check-sat b_and!188399 b_and!188401 (not b_next!72857) (not b_next!72859))

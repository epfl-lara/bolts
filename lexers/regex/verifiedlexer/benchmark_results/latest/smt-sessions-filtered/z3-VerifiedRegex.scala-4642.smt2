; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242616 () Bool)

(assert start!242616)

(declare-fun b!2484693 () Bool)

(declare-fun b_free!72473 () Bool)

(declare-fun b_next!73177 () Bool)

(assert (=> b!2484693 (= b_free!72473 (not b_next!73177))))

(declare-fun tp!795478 () Bool)

(declare-fun b_and!188745 () Bool)

(assert (=> b!2484693 (= tp!795478 b_and!188745)))

(declare-fun b!2484694 () Bool)

(declare-fun b_free!72475 () Bool)

(declare-fun b_next!73179 () Bool)

(assert (=> b!2484694 (= b_free!72475 (not b_next!73179))))

(declare-fun tp!795481 () Bool)

(declare-fun b_and!188747 () Bool)

(assert (=> b!2484694 (= tp!795481 b_and!188747)))

(declare-fun b!2484688 () Bool)

(declare-fun e!1577568 () Bool)

(declare-datatypes ((V!5797 0))(
  ( (V!5798 (val!8951 Int)) )
))
(declare-datatypes ((K!5595 0))(
  ( (K!5596 (val!8952 Int)) )
))
(declare-datatypes ((tuple2!29086 0))(
  ( (tuple2!29087 (_1!17085 K!5595) (_2!17085 V!5797)) )
))
(declare-datatypes ((List!29282 0))(
  ( (Nil!29182) (Cons!29182 (h!34593 tuple2!29086) (t!210959 List!29282)) )
))
(declare-datatypes ((tuple2!29088 0))(
  ( (tuple2!29089 (_1!17086 (_ BitVec 64)) (_2!17086 List!29282)) )
))
(declare-datatypes ((List!29283 0))(
  ( (Nil!29183) (Cons!29183 (h!34594 tuple2!29088) (t!210960 List!29283)) )
))
(declare-datatypes ((ListLongMap!593 0))(
  ( (ListLongMap!594 (toList!1643 List!29283)) )
))
(declare-fun lt!890868 () ListLongMap!593)

(declare-datatypes ((Unit!42781 0))(
  ( (Unit!42782) )
))
(declare-datatypes ((Hashable!3314 0))(
  ( (HashableExt!3313 (__x!19118 Int)) )
))
(declare-datatypes ((array!12097 0))(
  ( (array!12098 (arr!5398 (Array (_ BitVec 32) List!29282)) (size!22817 (_ BitVec 32))) )
))
(declare-datatypes ((array!12099 0))(
  ( (array!12100 (arr!5399 (Array (_ BitVec 32) (_ BitVec 64))) (size!22818 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6808 0))(
  ( (LongMapFixedSize!6809 (defaultEntry!3778 Int) (mask!8595 (_ BitVec 32)) (extraKeys!3652 (_ BitVec 32)) (zeroValue!3662 List!29282) (minValue!3662 List!29282) (_size!6855 (_ BitVec 32)) (_keys!3701 array!12099) (_values!3684 array!12097) (_vacant!3465 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13433 0))(
  ( (Cell!13434 (v!31588 LongMapFixedSize!6808)) )
))
(declare-datatypes ((MutLongMap!3404 0))(
  ( (LongMap!3404 (underlying!7015 Cell!13433)) (MutLongMapExt!3403 (__x!19119 Int)) )
))
(declare-datatypes ((Cell!13435 0))(
  ( (Cell!13436 (v!31589 MutLongMap!3404)) )
))
(declare-datatypes ((MutableMap!3314 0))(
  ( (MutableMapExt!3313 (__x!19120 Int)) (HashMap!3314 (underlying!7016 Cell!13435) (hashF!5295 Hashable!3314) (_size!6856 (_ BitVec 32)) (defaultValue!3476 Int)) )
))
(declare-datatypes ((tuple2!29090 0))(
  ( (tuple2!29091 (_1!17087 Unit!42781) (_2!17087 MutableMap!3314)) )
))
(declare-fun lt!890867 () tuple2!29090)

(declare-fun allKeysSameHashInMap!182 (ListLongMap!593 Hashable!3314) Bool)

(assert (=> b!2484688 (= e!1577568 (allKeysSameHashInMap!182 lt!890868 (hashF!5295 (_2!17087 lt!890867))))))

(declare-fun lambda!94325 () Int)

(declare-fun forall!5994 (List!29283 Int) Bool)

(assert (=> b!2484688 (forall!5994 (toList!1643 lt!890868) lambda!94325)))

(declare-fun map!6288 (MutLongMap!3404) ListLongMap!593)

(assert (=> b!2484688 (= lt!890868 (map!6288 (v!31589 (underlying!7016 (_2!17087 lt!890867)))))))

(declare-fun e!1577569 () Bool)

(assert (=> b!2484688 e!1577569))

(declare-fun res!1051677 () Bool)

(assert (=> b!2484688 (=> (not res!1051677) (not e!1577569))))

(declare-fun lt!890862 () ListLongMap!593)

(assert (=> b!2484688 (= res!1051677 (forall!5994 (toList!1643 lt!890862) lambda!94325))))

(declare-fun lt!890873 () (_ BitVec 64))

(declare-fun lt!890861 () List!29282)

(declare-fun lt!890865 () ListLongMap!593)

(declare-fun +!98 (ListLongMap!593 tuple2!29088) ListLongMap!593)

(assert (=> b!2484688 (= lt!890862 (+!98 lt!890865 (tuple2!29089 lt!890873 lt!890861)))))

(declare-fun lt!890864 () Unit!42781)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!61 (ListLongMap!593 (_ BitVec 64) List!29282 Hashable!3314) Unit!42781)

(assert (=> b!2484688 (= lt!890864 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!61 lt!890865 lt!890873 lt!890861 (hashF!5295 (_2!17087 lt!890867))))))

(declare-fun allKeysSameHash!81 (List!29282 (_ BitVec 64) Hashable!3314) Bool)

(assert (=> b!2484688 (allKeysSameHash!81 lt!890861 lt!890873 (hashF!5295 (_2!17087 lt!890867)))))

(declare-fun lt!890858 () List!29282)

(declare-fun key!2246 () K!5595)

(declare-fun lt!890859 () Unit!42781)

(declare-fun lemmaRemovePairForKeyPreservesHash!70 (List!29282 K!5595 (_ BitVec 64) Hashable!3314) Unit!42781)

(assert (=> b!2484688 (= lt!890859 (lemmaRemovePairForKeyPreservesHash!70 lt!890858 key!2246 lt!890873 (hashF!5295 (_2!17087 lt!890867))))))

(assert (=> b!2484688 (allKeysSameHash!81 lt!890858 lt!890873 (hashF!5295 (_2!17087 lt!890867)))))

(declare-fun lt!890870 () Unit!42781)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!74 (List!29283 (_ BitVec 64) List!29282 Hashable!3314) Unit!42781)

(assert (=> b!2484688 (= lt!890870 (lemmaInLongMapAllKeySameHashThenForTuple!74 (toList!1643 lt!890865) lt!890873 lt!890858 (hashF!5295 (_2!17087 lt!890867))))))

(declare-fun mapNonEmpty!15708 () Bool)

(declare-fun mapRes!15708 () Bool)

(declare-fun tp!795480 () Bool)

(declare-fun tp!795477 () Bool)

(assert (=> mapNonEmpty!15708 (= mapRes!15708 (and tp!795480 tp!795477))))

(declare-fun mapValue!15708 () List!29282)

(declare-fun thiss!42540 () MutableMap!3314)

(declare-fun mapKey!15708 () (_ BitVec 32))

(declare-fun mapRest!15708 () (Array (_ BitVec 32) List!29282))

(assert (=> mapNonEmpty!15708 (= (arr!5398 (_values!3684 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) (store mapRest!15708 mapKey!15708 mapValue!15708))))

(declare-fun b!2484690 () Bool)

(declare-fun res!1051675 () Bool)

(declare-fun e!1577571 () Bool)

(assert (=> b!2484690 (=> (not res!1051675) (not e!1577571))))

(declare-fun valid!2612 (MutableMap!3314) Bool)

(assert (=> b!2484690 (= res!1051675 (valid!2612 thiss!42540))))

(declare-fun mapIsEmpty!15708 () Bool)

(assert (=> mapIsEmpty!15708 mapRes!15708))

(declare-fun b!2484691 () Bool)

(assert (=> b!2484691 (= e!1577571 (not e!1577568))))

(declare-fun res!1051674 () Bool)

(assert (=> b!2484691 (=> res!1051674 e!1577568)))

(declare-datatypes ((tuple2!29092 0))(
  ( (tuple2!29093 (_1!17088 Bool) (_2!17088 MutLongMap!3404)) )
))
(declare-fun lt!890872 () tuple2!29092)

(assert (=> b!2484691 (= res!1051674 (not (_1!17088 lt!890872)))))

(declare-fun noDuplicateKeys!107 (List!29282) Bool)

(assert (=> b!2484691 (noDuplicateKeys!107 lt!890861)))

(declare-fun lt!890869 () Unit!42781)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!87 (List!29282 K!5595) Unit!42781)

(assert (=> b!2484691 (= lt!890869 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!87 lt!890858 key!2246))))

(declare-fun lt!890871 () Cell!13435)

(declare-fun Unit!42783 () Unit!42781)

(declare-fun Unit!42784 () Unit!42781)

(assert (=> b!2484691 (= lt!890867 (ite (_1!17088 lt!890872) (tuple2!29091 Unit!42783 (HashMap!3314 lt!890871 (hashF!5295 thiss!42540) (bvsub (_size!6856 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3476 thiss!42540))) (tuple2!29091 Unit!42784 (HashMap!3314 lt!890871 (hashF!5295 thiss!42540) (_size!6856 thiss!42540) (defaultValue!3476 thiss!42540)))))))

(assert (=> b!2484691 (= lt!890871 (Cell!13436 (_2!17088 lt!890872)))))

(declare-fun update!222 (MutLongMap!3404 (_ BitVec 64) List!29282) tuple2!29092)

(assert (=> b!2484691 (= lt!890872 (update!222 (v!31589 (underlying!7016 thiss!42540)) lt!890873 lt!890861))))

(declare-fun removePairForKey!99 (List!29282 K!5595) List!29282)

(assert (=> b!2484691 (= lt!890861 (removePairForKey!99 lt!890858 key!2246))))

(declare-datatypes ((ListMap!1123 0))(
  ( (ListMap!1124 (toList!1644 List!29282)) )
))
(declare-fun lt!890863 () ListMap!1123)

(declare-fun map!6289 (MutableMap!3314) ListMap!1123)

(assert (=> b!2484691 (= lt!890863 (map!6289 thiss!42540))))

(declare-fun lt!890860 () Unit!42781)

(declare-fun forallContained!888 (List!29283 Int tuple2!29088) Unit!42781)

(assert (=> b!2484691 (= lt!890860 (forallContained!888 (toList!1643 lt!890865) lambda!94325 (tuple2!29089 lt!890873 lt!890858)))))

(assert (=> b!2484691 (= lt!890865 (map!6288 (v!31589 (underlying!7016 thiss!42540))))))

(declare-fun apply!6966 (MutLongMap!3404 (_ BitVec 64)) List!29282)

(assert (=> b!2484691 (= lt!890858 (apply!6966 (v!31589 (underlying!7016 thiss!42540)) lt!890873))))

(declare-fun hash!737 (Hashable!3314 K!5595) (_ BitVec 64))

(assert (=> b!2484691 (= lt!890873 (hash!737 (hashF!5295 thiss!42540) key!2246))))

(declare-fun b!2484692 () Bool)

(declare-fun e!1577573 () Bool)

(declare-fun e!1577570 () Bool)

(assert (=> b!2484692 (= e!1577573 e!1577570)))

(declare-fun e!1577566 () Bool)

(declare-fun e!1577572 () Bool)

(declare-fun tp!795482 () Bool)

(declare-fun tp!795483 () Bool)

(declare-fun array_inv!3879 (array!12099) Bool)

(declare-fun array_inv!3880 (array!12097) Bool)

(assert (=> b!2484693 (= e!1577566 (and tp!795478 tp!795483 tp!795482 (array_inv!3879 (_keys!3701 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) (array_inv!3880 (_values!3684 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) e!1577572))))

(declare-fun e!1577567 () Bool)

(declare-fun e!1577575 () Bool)

(assert (=> b!2484694 (= e!1577567 (and e!1577575 tp!795481))))

(declare-fun b!2484695 () Bool)

(declare-fun tp!795479 () Bool)

(assert (=> b!2484695 (= e!1577572 (and tp!795479 mapRes!15708))))

(declare-fun condMapEmpty!15708 () Bool)

(declare-fun mapDefault!15708 () List!29282)

(assert (=> b!2484695 (= condMapEmpty!15708 (= (arr!5398 (_values!3684 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29282)) mapDefault!15708)))))

(declare-fun b!2484696 () Bool)

(assert (=> b!2484696 (= e!1577570 e!1577566)))

(declare-fun res!1051678 () Bool)

(assert (=> start!242616 (=> (not res!1051678) (not e!1577571))))

(get-info :version)

(assert (=> start!242616 (= res!1051678 ((_ is HashMap!3314) thiss!42540))))

(assert (=> start!242616 e!1577571))

(assert (=> start!242616 e!1577567))

(declare-fun tp_is_empty!12355 () Bool)

(assert (=> start!242616 tp_is_empty!12355))

(declare-fun b!2484689 () Bool)

(assert (=> b!2484689 (= e!1577569 (allKeysSameHashInMap!182 lt!890862 (hashF!5295 (_2!17087 lt!890867))))))

(declare-fun b!2484697 () Bool)

(declare-fun lt!890866 () MutLongMap!3404)

(assert (=> b!2484697 (= e!1577575 (and e!1577573 ((_ is LongMap!3404) lt!890866)))))

(assert (=> b!2484697 (= lt!890866 (v!31589 (underlying!7016 thiss!42540)))))

(declare-fun b!2484698 () Bool)

(declare-fun res!1051676 () Bool)

(assert (=> b!2484698 (=> (not res!1051676) (not e!1577571))))

(declare-fun contains!5177 (MutableMap!3314 K!5595) Bool)

(assert (=> b!2484698 (= res!1051676 (contains!5177 thiss!42540 key!2246))))

(assert (= (and start!242616 res!1051678) b!2484690))

(assert (= (and b!2484690 res!1051675) b!2484698))

(assert (= (and b!2484698 res!1051676) b!2484691))

(assert (= (and b!2484691 (not res!1051674)) b!2484688))

(assert (= (and b!2484688 res!1051677) b!2484689))

(assert (= (and b!2484695 condMapEmpty!15708) mapIsEmpty!15708))

(assert (= (and b!2484695 (not condMapEmpty!15708)) mapNonEmpty!15708))

(assert (= b!2484693 b!2484695))

(assert (= b!2484696 b!2484693))

(assert (= b!2484692 b!2484696))

(assert (= (and b!2484697 ((_ is LongMap!3404) (v!31589 (underlying!7016 thiss!42540)))) b!2484692))

(assert (= b!2484694 b!2484697))

(assert (= (and start!242616 ((_ is HashMap!3314) thiss!42540)) b!2484694))

(declare-fun m!2852733 () Bool)

(assert (=> b!2484691 m!2852733))

(declare-fun m!2852735 () Bool)

(assert (=> b!2484691 m!2852735))

(declare-fun m!2852737 () Bool)

(assert (=> b!2484691 m!2852737))

(declare-fun m!2852739 () Bool)

(assert (=> b!2484691 m!2852739))

(declare-fun m!2852741 () Bool)

(assert (=> b!2484691 m!2852741))

(declare-fun m!2852743 () Bool)

(assert (=> b!2484691 m!2852743))

(declare-fun m!2852745 () Bool)

(assert (=> b!2484691 m!2852745))

(declare-fun m!2852747 () Bool)

(assert (=> b!2484691 m!2852747))

(declare-fun m!2852749 () Bool)

(assert (=> b!2484691 m!2852749))

(declare-fun m!2852751 () Bool)

(assert (=> b!2484690 m!2852751))

(declare-fun m!2852753 () Bool)

(assert (=> b!2484698 m!2852753))

(declare-fun m!2852755 () Bool)

(assert (=> b!2484693 m!2852755))

(declare-fun m!2852757 () Bool)

(assert (=> b!2484693 m!2852757))

(declare-fun m!2852759 () Bool)

(assert (=> b!2484689 m!2852759))

(declare-fun m!2852761 () Bool)

(assert (=> mapNonEmpty!15708 m!2852761))

(declare-fun m!2852763 () Bool)

(assert (=> b!2484688 m!2852763))

(declare-fun m!2852765 () Bool)

(assert (=> b!2484688 m!2852765))

(declare-fun m!2852767 () Bool)

(assert (=> b!2484688 m!2852767))

(declare-fun m!2852769 () Bool)

(assert (=> b!2484688 m!2852769))

(declare-fun m!2852771 () Bool)

(assert (=> b!2484688 m!2852771))

(declare-fun m!2852773 () Bool)

(assert (=> b!2484688 m!2852773))

(declare-fun m!2852775 () Bool)

(assert (=> b!2484688 m!2852775))

(declare-fun m!2852777 () Bool)

(assert (=> b!2484688 m!2852777))

(declare-fun m!2852779 () Bool)

(assert (=> b!2484688 m!2852779))

(declare-fun m!2852781 () Bool)

(assert (=> b!2484688 m!2852781))

(check-sat b_and!188747 tp_is_empty!12355 (not b_next!73177) (not b!2484688) (not mapNonEmpty!15708) (not b!2484693) (not b!2484689) (not b_next!73179) b_and!188745 (not b!2484695) (not b!2484698) (not b!2484690) (not b!2484691))
(check-sat b_and!188747 b_and!188745 (not b_next!73177) (not b_next!73179))
(get-model)

(declare-fun b!2484717 () Bool)

(declare-fun e!1577587 () Bool)

(declare-fun e!1577589 () Bool)

(assert (=> b!2484717 (= e!1577587 e!1577589)))

(declare-fun c!394952 () Bool)

(declare-fun lt!890884 () tuple2!29092)

(assert (=> b!2484717 (= c!394952 (_1!17088 lt!890884))))

(declare-fun b!2484718 () Bool)

(declare-fun e!1577588 () tuple2!29092)

(declare-fun lt!890882 () tuple2!29092)

(assert (=> b!2484718 (= e!1577588 (tuple2!29093 false (_2!17088 lt!890882)))))

(declare-fun b!2484719 () Bool)

(declare-fun e!1577590 () tuple2!29092)

(declare-fun lt!890883 () tuple2!29092)

(assert (=> b!2484719 (= e!1577590 (tuple2!29093 (_1!17088 lt!890883) (_2!17088 lt!890883)))))

(declare-fun repack!27 (MutLongMap!3404) tuple2!29092)

(assert (=> b!2484719 (= lt!890883 (repack!27 (v!31589 (underlying!7016 thiss!42540))))))

(declare-fun b!2484720 () Bool)

(assert (=> b!2484720 (= e!1577590 (tuple2!29093 true (v!31589 (underlying!7016 thiss!42540))))))

(declare-fun b!2484721 () Bool)

(declare-fun call!152316 () ListLongMap!593)

(declare-fun call!152315 () ListLongMap!593)

(assert (=> b!2484721 (= e!1577589 (= call!152316 call!152315))))

(declare-fun bm!152310 () Bool)

(assert (=> bm!152310 (= call!152316 (map!6288 (_2!17088 lt!890884)))))

(declare-fun b!2484722 () Bool)

(declare-fun res!1051686 () Bool)

(assert (=> b!2484722 (=> (not res!1051686) (not e!1577587))))

(declare-fun valid!2613 (MutLongMap!3404) Bool)

(assert (=> b!2484722 (= res!1051686 (valid!2613 (_2!17088 lt!890884)))))

(declare-fun b!2484723 () Bool)

(declare-fun e!1577586 () Bool)

(assert (=> b!2484723 (= e!1577589 e!1577586)))

(declare-fun res!1051685 () Bool)

(declare-fun contains!5178 (ListLongMap!593 (_ BitVec 64)) Bool)

(assert (=> b!2484723 (= res!1051685 (contains!5178 call!152316 lt!890873))))

(assert (=> b!2484723 (=> (not res!1051685) (not e!1577586))))

(declare-fun b!2484724 () Bool)

(declare-datatypes ((tuple2!29094 0))(
  ( (tuple2!29095 (_1!17089 Bool) (_2!17089 LongMapFixedSize!6808)) )
))
(declare-fun lt!890885 () tuple2!29094)

(assert (=> b!2484724 (= e!1577588 (tuple2!29093 (_1!17089 lt!890885) (LongMap!3404 (Cell!13434 (_2!17089 lt!890885)))))))

(declare-fun update!223 (LongMapFixedSize!6808 (_ BitVec 64) List!29282) tuple2!29094)

(assert (=> b!2484724 (= lt!890885 (update!223 (v!31588 (underlying!7015 (_2!17088 lt!890882))) lt!890873 lt!890861))))

(declare-fun bm!152311 () Bool)

(assert (=> bm!152311 (= call!152315 (map!6288 (v!31589 (underlying!7016 thiss!42540))))))

(declare-fun b!2484725 () Bool)

(assert (=> b!2484725 (= e!1577586 (= call!152316 (+!98 call!152315 (tuple2!29089 lt!890873 lt!890861))))))

(declare-fun d!713379 () Bool)

(assert (=> d!713379 e!1577587))

(declare-fun res!1051687 () Bool)

(assert (=> d!713379 (=> (not res!1051687) (not e!1577587))))

(assert (=> d!713379 (= res!1051687 ((_ is LongMap!3404) (_2!17088 lt!890884)))))

(assert (=> d!713379 (= lt!890884 e!1577588)))

(declare-fun c!394951 () Bool)

(assert (=> d!713379 (= c!394951 (_1!17088 lt!890882))))

(assert (=> d!713379 (= lt!890882 e!1577590)))

(declare-fun c!394950 () Bool)

(declare-fun imbalanced!23 (MutLongMap!3404) Bool)

(assert (=> d!713379 (= c!394950 (imbalanced!23 (v!31589 (underlying!7016 thiss!42540))))))

(assert (=> d!713379 (valid!2613 (v!31589 (underlying!7016 thiss!42540)))))

(assert (=> d!713379 (= (update!222 (v!31589 (underlying!7016 thiss!42540)) lt!890873 lt!890861) lt!890884)))

(assert (= (and d!713379 c!394950) b!2484719))

(assert (= (and d!713379 (not c!394950)) b!2484720))

(assert (= (and d!713379 c!394951) b!2484724))

(assert (= (and d!713379 (not c!394951)) b!2484718))

(assert (= (and d!713379 res!1051687) b!2484722))

(assert (= (and b!2484722 res!1051686) b!2484717))

(assert (= (and b!2484717 c!394952) b!2484723))

(assert (= (and b!2484717 (not c!394952)) b!2484721))

(assert (= (and b!2484723 res!1051685) b!2484725))

(assert (= (or b!2484723 b!2484725 b!2484721) bm!152310))

(assert (= (or b!2484725 b!2484721) bm!152311))

(declare-fun m!2852783 () Bool)

(assert (=> b!2484719 m!2852783))

(declare-fun m!2852785 () Bool)

(assert (=> bm!152310 m!2852785))

(declare-fun m!2852787 () Bool)

(assert (=> b!2484724 m!2852787))

(declare-fun m!2852789 () Bool)

(assert (=> b!2484723 m!2852789))

(declare-fun m!2852791 () Bool)

(assert (=> b!2484725 m!2852791))

(declare-fun m!2852793 () Bool)

(assert (=> b!2484722 m!2852793))

(assert (=> bm!152311 m!2852749))

(declare-fun m!2852795 () Bool)

(assert (=> d!713379 m!2852795))

(declare-fun m!2852797 () Bool)

(assert (=> d!713379 m!2852797))

(assert (=> b!2484691 d!713379))

(declare-fun d!713381 () Bool)

(declare-fun e!1577593 () Bool)

(assert (=> d!713381 e!1577593))

(declare-fun c!394955 () Bool)

(declare-fun contains!5179 (MutLongMap!3404 (_ BitVec 64)) Bool)

(assert (=> d!713381 (= c!394955 (contains!5179 (v!31589 (underlying!7016 thiss!42540)) lt!890873))))

(declare-fun lt!890888 () List!29282)

(declare-fun apply!6967 (LongMapFixedSize!6808 (_ BitVec 64)) List!29282)

(assert (=> d!713381 (= lt!890888 (apply!6967 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))) lt!890873))))

(assert (=> d!713381 (valid!2613 (v!31589 (underlying!7016 thiss!42540)))))

(assert (=> d!713381 (= (apply!6966 (v!31589 (underlying!7016 thiss!42540)) lt!890873) lt!890888)))

(declare-fun b!2484730 () Bool)

(declare-datatypes ((Option!5770 0))(
  ( (None!5769) (Some!5769 (v!31594 List!29282)) )
))
(declare-fun get!9006 (Option!5770) List!29282)

(declare-fun getValueByKey!148 (List!29283 (_ BitVec 64)) Option!5770)

(assert (=> b!2484730 (= e!1577593 (= lt!890888 (get!9006 (getValueByKey!148 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540)))) lt!890873))))))

(declare-fun b!2484731 () Bool)

(declare-fun dynLambda!12494 (Int (_ BitVec 64)) List!29282)

(assert (=> b!2484731 (= e!1577593 (= lt!890888 (dynLambda!12494 (defaultEntry!3778 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540))))) lt!890873)))))

(assert (=> b!2484731 ((_ is LongMap!3404) (v!31589 (underlying!7016 thiss!42540)))))

(assert (= (and d!713381 c!394955) b!2484730))

(assert (= (and d!713381 (not c!394955)) b!2484731))

(declare-fun b_lambda!76255 () Bool)

(assert (=> (not b_lambda!76255) (not b!2484731)))

(declare-fun t!210962 () Bool)

(declare-fun tb!140395 () Bool)

(assert (=> (and b!2484693 (= (defaultEntry!3778 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540))))) (defaultEntry!3778 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) t!210962) tb!140395))

(assert (=> b!2484731 t!210962))

(declare-fun result!173380 () Bool)

(declare-fun b_and!188749 () Bool)

(assert (= b_and!188745 (and (=> t!210962 result!173380) b_and!188749)))

(declare-fun m!2852799 () Bool)

(assert (=> d!713381 m!2852799))

(declare-fun m!2852801 () Bool)

(assert (=> d!713381 m!2852801))

(assert (=> d!713381 m!2852797))

(assert (=> b!2484730 m!2852749))

(declare-fun m!2852803 () Bool)

(assert (=> b!2484730 m!2852803))

(assert (=> b!2484730 m!2852803))

(declare-fun m!2852805 () Bool)

(assert (=> b!2484730 m!2852805))

(declare-fun m!2852807 () Bool)

(assert (=> b!2484731 m!2852807))

(assert (=> b!2484691 d!713381))

(declare-fun b!2484740 () Bool)

(declare-fun e!1577599 () List!29282)

(assert (=> b!2484740 (= e!1577599 (t!210959 lt!890858))))

(declare-fun d!713383 () Bool)

(declare-fun lt!890891 () List!29282)

(declare-fun containsKey!154 (List!29282 K!5595) Bool)

(assert (=> d!713383 (not (containsKey!154 lt!890891 key!2246))))

(assert (=> d!713383 (= lt!890891 e!1577599)))

(declare-fun c!394961 () Bool)

(assert (=> d!713383 (= c!394961 (and ((_ is Cons!29182) lt!890858) (= (_1!17085 (h!34593 lt!890858)) key!2246)))))

(assert (=> d!713383 (noDuplicateKeys!107 lt!890858)))

(assert (=> d!713383 (= (removePairForKey!99 lt!890858 key!2246) lt!890891)))

(declare-fun b!2484743 () Bool)

(declare-fun e!1577598 () List!29282)

(assert (=> b!2484743 (= e!1577598 Nil!29182)))

(declare-fun b!2484741 () Bool)

(assert (=> b!2484741 (= e!1577599 e!1577598)))

(declare-fun c!394960 () Bool)

(assert (=> b!2484741 (= c!394960 ((_ is Cons!29182) lt!890858))))

(declare-fun b!2484742 () Bool)

(assert (=> b!2484742 (= e!1577598 (Cons!29182 (h!34593 lt!890858) (removePairForKey!99 (t!210959 lt!890858) key!2246)))))

(assert (= (and d!713383 c!394961) b!2484740))

(assert (= (and d!713383 (not c!394961)) b!2484741))

(assert (= (and b!2484741 c!394960) b!2484742))

(assert (= (and b!2484741 (not c!394960)) b!2484743))

(declare-fun m!2852809 () Bool)

(assert (=> d!713383 m!2852809))

(declare-fun m!2852811 () Bool)

(assert (=> d!713383 m!2852811))

(declare-fun m!2852813 () Bool)

(assert (=> b!2484742 m!2852813))

(assert (=> b!2484691 d!713383))

(declare-fun d!713385 () Bool)

(declare-fun hash!741 (Hashable!3314 K!5595) (_ BitVec 64))

(assert (=> d!713385 (= (hash!737 (hashF!5295 thiss!42540) key!2246) (hash!741 (hashF!5295 thiss!42540) key!2246))))

(declare-fun bs!467739 () Bool)

(assert (= bs!467739 d!713385))

(declare-fun m!2852815 () Bool)

(assert (=> bs!467739 m!2852815))

(assert (=> b!2484691 d!713385))

(declare-fun d!713387 () Bool)

(declare-fun res!1051692 () Bool)

(declare-fun e!1577604 () Bool)

(assert (=> d!713387 (=> res!1051692 e!1577604)))

(assert (=> d!713387 (= res!1051692 (not ((_ is Cons!29182) lt!890861)))))

(assert (=> d!713387 (= (noDuplicateKeys!107 lt!890861) e!1577604)))

(declare-fun b!2484748 () Bool)

(declare-fun e!1577605 () Bool)

(assert (=> b!2484748 (= e!1577604 e!1577605)))

(declare-fun res!1051693 () Bool)

(assert (=> b!2484748 (=> (not res!1051693) (not e!1577605))))

(assert (=> b!2484748 (= res!1051693 (not (containsKey!154 (t!210959 lt!890861) (_1!17085 (h!34593 lt!890861)))))))

(declare-fun b!2484749 () Bool)

(assert (=> b!2484749 (= e!1577605 (noDuplicateKeys!107 (t!210959 lt!890861)))))

(assert (= (and d!713387 (not res!1051692)) b!2484748))

(assert (= (and b!2484748 res!1051693) b!2484749))

(declare-fun m!2852817 () Bool)

(assert (=> b!2484748 m!2852817))

(declare-fun m!2852819 () Bool)

(assert (=> b!2484749 m!2852819))

(assert (=> b!2484691 d!713387))

(declare-fun d!713389 () Bool)

(declare-fun lt!890894 () ListMap!1123)

(declare-fun invariantList!418 (List!29282) Bool)

(assert (=> d!713389 (invariantList!418 (toList!1644 lt!890894))))

(declare-fun extractMap!184 (List!29283) ListMap!1123)

(assert (=> d!713389 (= lt!890894 (extractMap!184 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540))))))))

(assert (=> d!713389 (valid!2612 thiss!42540)))

(assert (=> d!713389 (= (map!6289 thiss!42540) lt!890894)))

(declare-fun bs!467740 () Bool)

(assert (= bs!467740 d!713389))

(declare-fun m!2852821 () Bool)

(assert (=> bs!467740 m!2852821))

(assert (=> bs!467740 m!2852749))

(declare-fun m!2852823 () Bool)

(assert (=> bs!467740 m!2852823))

(assert (=> bs!467740 m!2852751))

(assert (=> b!2484691 d!713389))

(declare-fun d!713391 () Bool)

(declare-fun dynLambda!12495 (Int tuple2!29088) Bool)

(assert (=> d!713391 (dynLambda!12495 lambda!94325 (tuple2!29089 lt!890873 lt!890858))))

(declare-fun lt!890897 () Unit!42781)

(declare-fun choose!14676 (List!29283 Int tuple2!29088) Unit!42781)

(assert (=> d!713391 (= lt!890897 (choose!14676 (toList!1643 lt!890865) lambda!94325 (tuple2!29089 lt!890873 lt!890858)))))

(declare-fun e!1577608 () Bool)

(assert (=> d!713391 e!1577608))

(declare-fun res!1051696 () Bool)

(assert (=> d!713391 (=> (not res!1051696) (not e!1577608))))

(assert (=> d!713391 (= res!1051696 (forall!5994 (toList!1643 lt!890865) lambda!94325))))

(assert (=> d!713391 (= (forallContained!888 (toList!1643 lt!890865) lambda!94325 (tuple2!29089 lt!890873 lt!890858)) lt!890897)))

(declare-fun b!2484752 () Bool)

(declare-fun contains!5180 (List!29283 tuple2!29088) Bool)

(assert (=> b!2484752 (= e!1577608 (contains!5180 (toList!1643 lt!890865) (tuple2!29089 lt!890873 lt!890858)))))

(assert (= (and d!713391 res!1051696) b!2484752))

(declare-fun b_lambda!76257 () Bool)

(assert (=> (not b_lambda!76257) (not d!713391)))

(declare-fun m!2852825 () Bool)

(assert (=> d!713391 m!2852825))

(declare-fun m!2852827 () Bool)

(assert (=> d!713391 m!2852827))

(declare-fun m!2852829 () Bool)

(assert (=> d!713391 m!2852829))

(declare-fun m!2852831 () Bool)

(assert (=> b!2484752 m!2852831))

(assert (=> b!2484691 d!713391))

(declare-fun d!713393 () Bool)

(assert (=> d!713393 (noDuplicateKeys!107 (removePairForKey!99 lt!890858 key!2246))))

(declare-fun lt!890900 () Unit!42781)

(declare-fun choose!14677 (List!29282 K!5595) Unit!42781)

(assert (=> d!713393 (= lt!890900 (choose!14677 lt!890858 key!2246))))

(assert (=> d!713393 (noDuplicateKeys!107 lt!890858)))

(assert (=> d!713393 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!87 lt!890858 key!2246) lt!890900)))

(declare-fun bs!467741 () Bool)

(assert (= bs!467741 d!713393))

(assert (=> bs!467741 m!2852745))

(assert (=> bs!467741 m!2852745))

(declare-fun m!2852833 () Bool)

(assert (=> bs!467741 m!2852833))

(declare-fun m!2852835 () Bool)

(assert (=> bs!467741 m!2852835))

(assert (=> bs!467741 m!2852811))

(assert (=> b!2484691 d!713393))

(declare-fun d!713395 () Bool)

(declare-fun map!6290 (LongMapFixedSize!6808) ListLongMap!593)

(assert (=> d!713395 (= (map!6288 (v!31589 (underlying!7016 thiss!42540))) (map!6290 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540))))))))

(declare-fun bs!467742 () Bool)

(assert (= bs!467742 d!713395))

(declare-fun m!2852837 () Bool)

(assert (=> bs!467742 m!2852837))

(assert (=> b!2484691 d!713395))

(declare-fun d!713397 () Bool)

(assert (=> d!713397 (= (map!6288 (v!31589 (underlying!7016 (_2!17087 lt!890867)))) (map!6290 (v!31588 (underlying!7015 (v!31589 (underlying!7016 (_2!17087 lt!890867)))))))))

(declare-fun bs!467743 () Bool)

(assert (= bs!467743 d!713397))

(declare-fun m!2852839 () Bool)

(assert (=> bs!467743 m!2852839))

(assert (=> b!2484688 d!713397))

(declare-fun bs!467744 () Bool)

(declare-fun d!713399 () Bool)

(assert (= bs!467744 (and d!713399 b!2484691)))

(declare-fun lambda!94330 () Int)

(assert (=> bs!467744 (= lambda!94330 lambda!94325)))

(declare-fun e!1577611 () Bool)

(assert (=> d!713399 e!1577611))

(declare-fun res!1051699 () Bool)

(assert (=> d!713399 (=> (not res!1051699) (not e!1577611))))

(declare-fun lt!890906 () ListLongMap!593)

(assert (=> d!713399 (= res!1051699 (forall!5994 (toList!1643 lt!890906) lambda!94330))))

(assert (=> d!713399 (= lt!890906 (+!98 lt!890865 (tuple2!29089 lt!890873 lt!890861)))))

(declare-fun lt!890905 () Unit!42781)

(declare-fun choose!14678 (ListLongMap!593 (_ BitVec 64) List!29282 Hashable!3314) Unit!42781)

(assert (=> d!713399 (= lt!890905 (choose!14678 lt!890865 lt!890873 lt!890861 (hashF!5295 (_2!17087 lt!890867))))))

(assert (=> d!713399 (forall!5994 (toList!1643 lt!890865) lambda!94330)))

(assert (=> d!713399 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!61 lt!890865 lt!890873 lt!890861 (hashF!5295 (_2!17087 lt!890867))) lt!890905)))

(declare-fun b!2484755 () Bool)

(assert (=> b!2484755 (= e!1577611 (allKeysSameHashInMap!182 lt!890906 (hashF!5295 (_2!17087 lt!890867))))))

(assert (= (and d!713399 res!1051699) b!2484755))

(declare-fun m!2852841 () Bool)

(assert (=> d!713399 m!2852841))

(assert (=> d!713399 m!2852763))

(declare-fun m!2852843 () Bool)

(assert (=> d!713399 m!2852843))

(declare-fun m!2852845 () Bool)

(assert (=> d!713399 m!2852845))

(declare-fun m!2852847 () Bool)

(assert (=> b!2484755 m!2852847))

(assert (=> b!2484688 d!713399))

(declare-fun d!713401 () Bool)

(assert (=> d!713401 true))

(assert (=> d!713401 true))

(declare-fun lambda!94333 () Int)

(declare-fun forall!5995 (List!29282 Int) Bool)

(assert (=> d!713401 (= (allKeysSameHash!81 lt!890858 lt!890873 (hashF!5295 (_2!17087 lt!890867))) (forall!5995 lt!890858 lambda!94333))))

(declare-fun bs!467745 () Bool)

(assert (= bs!467745 d!713401))

(declare-fun m!2852849 () Bool)

(assert (=> bs!467745 m!2852849))

(assert (=> b!2484688 d!713401))

(declare-fun d!713403 () Bool)

(declare-fun res!1051704 () Bool)

(declare-fun e!1577616 () Bool)

(assert (=> d!713403 (=> res!1051704 e!1577616)))

(assert (=> d!713403 (= res!1051704 ((_ is Nil!29183) (toList!1643 lt!890862)))))

(assert (=> d!713403 (= (forall!5994 (toList!1643 lt!890862) lambda!94325) e!1577616)))

(declare-fun b!2484764 () Bool)

(declare-fun e!1577617 () Bool)

(assert (=> b!2484764 (= e!1577616 e!1577617)))

(declare-fun res!1051705 () Bool)

(assert (=> b!2484764 (=> (not res!1051705) (not e!1577617))))

(assert (=> b!2484764 (= res!1051705 (dynLambda!12495 lambda!94325 (h!34594 (toList!1643 lt!890862))))))

(declare-fun b!2484765 () Bool)

(assert (=> b!2484765 (= e!1577617 (forall!5994 (t!210960 (toList!1643 lt!890862)) lambda!94325))))

(assert (= (and d!713403 (not res!1051704)) b!2484764))

(assert (= (and b!2484764 res!1051705) b!2484765))

(declare-fun b_lambda!76259 () Bool)

(assert (=> (not b_lambda!76259) (not b!2484764)))

(declare-fun m!2852851 () Bool)

(assert (=> b!2484764 m!2852851))

(declare-fun m!2852853 () Bool)

(assert (=> b!2484765 m!2852853))

(assert (=> b!2484688 d!713403))

(declare-fun d!713405 () Bool)

(assert (=> d!713405 (allKeysSameHash!81 (removePairForKey!99 lt!890858 key!2246) lt!890873 (hashF!5295 (_2!17087 lt!890867)))))

(declare-fun lt!890909 () Unit!42781)

(declare-fun choose!14679 (List!29282 K!5595 (_ BitVec 64) Hashable!3314) Unit!42781)

(assert (=> d!713405 (= lt!890909 (choose!14679 lt!890858 key!2246 lt!890873 (hashF!5295 (_2!17087 lt!890867))))))

(assert (=> d!713405 (noDuplicateKeys!107 lt!890858)))

(assert (=> d!713405 (= (lemmaRemovePairForKeyPreservesHash!70 lt!890858 key!2246 lt!890873 (hashF!5295 (_2!17087 lt!890867))) lt!890909)))

(declare-fun bs!467746 () Bool)

(assert (= bs!467746 d!713405))

(assert (=> bs!467746 m!2852745))

(assert (=> bs!467746 m!2852745))

(declare-fun m!2852855 () Bool)

(assert (=> bs!467746 m!2852855))

(declare-fun m!2852857 () Bool)

(assert (=> bs!467746 m!2852857))

(assert (=> bs!467746 m!2852811))

(assert (=> b!2484688 d!713405))

(declare-fun d!713407 () Bool)

(declare-fun e!1577620 () Bool)

(assert (=> d!713407 e!1577620))

(declare-fun res!1051711 () Bool)

(assert (=> d!713407 (=> (not res!1051711) (not e!1577620))))

(declare-fun lt!890921 () ListLongMap!593)

(assert (=> d!713407 (= res!1051711 (contains!5178 lt!890921 (_1!17086 (tuple2!29089 lt!890873 lt!890861))))))

(declare-fun lt!890919 () List!29283)

(assert (=> d!713407 (= lt!890921 (ListLongMap!594 lt!890919))))

(declare-fun lt!890918 () Unit!42781)

(declare-fun lt!890920 () Unit!42781)

(assert (=> d!713407 (= lt!890918 lt!890920)))

(assert (=> d!713407 (= (getValueByKey!148 lt!890919 (_1!17086 (tuple2!29089 lt!890873 lt!890861))) (Some!5769 (_2!17086 (tuple2!29089 lt!890873 lt!890861))))))

(declare-fun lemmaContainsTupThenGetReturnValue!22 (List!29283 (_ BitVec 64) List!29282) Unit!42781)

(assert (=> d!713407 (= lt!890920 (lemmaContainsTupThenGetReturnValue!22 lt!890919 (_1!17086 (tuple2!29089 lt!890873 lt!890861)) (_2!17086 (tuple2!29089 lt!890873 lt!890861))))))

(declare-fun insertStrictlySorted!16 (List!29283 (_ BitVec 64) List!29282) List!29283)

(assert (=> d!713407 (= lt!890919 (insertStrictlySorted!16 (toList!1643 lt!890865) (_1!17086 (tuple2!29089 lt!890873 lt!890861)) (_2!17086 (tuple2!29089 lt!890873 lt!890861))))))

(assert (=> d!713407 (= (+!98 lt!890865 (tuple2!29089 lt!890873 lt!890861)) lt!890921)))

(declare-fun b!2484770 () Bool)

(declare-fun res!1051710 () Bool)

(assert (=> b!2484770 (=> (not res!1051710) (not e!1577620))))

(assert (=> b!2484770 (= res!1051710 (= (getValueByKey!148 (toList!1643 lt!890921) (_1!17086 (tuple2!29089 lt!890873 lt!890861))) (Some!5769 (_2!17086 (tuple2!29089 lt!890873 lt!890861)))))))

(declare-fun b!2484771 () Bool)

(assert (=> b!2484771 (= e!1577620 (contains!5180 (toList!1643 lt!890921) (tuple2!29089 lt!890873 lt!890861)))))

(assert (= (and d!713407 res!1051711) b!2484770))

(assert (= (and b!2484770 res!1051710) b!2484771))

(declare-fun m!2852859 () Bool)

(assert (=> d!713407 m!2852859))

(declare-fun m!2852861 () Bool)

(assert (=> d!713407 m!2852861))

(declare-fun m!2852863 () Bool)

(assert (=> d!713407 m!2852863))

(declare-fun m!2852865 () Bool)

(assert (=> d!713407 m!2852865))

(declare-fun m!2852867 () Bool)

(assert (=> b!2484770 m!2852867))

(declare-fun m!2852869 () Bool)

(assert (=> b!2484771 m!2852869))

(assert (=> b!2484688 d!713407))

(declare-fun bs!467747 () Bool)

(declare-fun d!713409 () Bool)

(assert (= bs!467747 (and d!713409 d!713401)))

(declare-fun lambda!94334 () Int)

(assert (=> bs!467747 (= lambda!94334 lambda!94333)))

(assert (=> d!713409 true))

(assert (=> d!713409 true))

(assert (=> d!713409 (= (allKeysSameHash!81 lt!890861 lt!890873 (hashF!5295 (_2!17087 lt!890867))) (forall!5995 lt!890861 lambda!94334))))

(declare-fun bs!467748 () Bool)

(assert (= bs!467748 d!713409))

(declare-fun m!2852871 () Bool)

(assert (=> bs!467748 m!2852871))

(assert (=> b!2484688 d!713409))

(declare-fun d!713411 () Bool)

(declare-fun res!1051712 () Bool)

(declare-fun e!1577621 () Bool)

(assert (=> d!713411 (=> res!1051712 e!1577621)))

(assert (=> d!713411 (= res!1051712 ((_ is Nil!29183) (toList!1643 lt!890868)))))

(assert (=> d!713411 (= (forall!5994 (toList!1643 lt!890868) lambda!94325) e!1577621)))

(declare-fun b!2484772 () Bool)

(declare-fun e!1577622 () Bool)

(assert (=> b!2484772 (= e!1577621 e!1577622)))

(declare-fun res!1051713 () Bool)

(assert (=> b!2484772 (=> (not res!1051713) (not e!1577622))))

(assert (=> b!2484772 (= res!1051713 (dynLambda!12495 lambda!94325 (h!34594 (toList!1643 lt!890868))))))

(declare-fun b!2484773 () Bool)

(assert (=> b!2484773 (= e!1577622 (forall!5994 (t!210960 (toList!1643 lt!890868)) lambda!94325))))

(assert (= (and d!713411 (not res!1051712)) b!2484772))

(assert (= (and b!2484772 res!1051713) b!2484773))

(declare-fun b_lambda!76261 () Bool)

(assert (=> (not b_lambda!76261) (not b!2484772)))

(declare-fun m!2852873 () Bool)

(assert (=> b!2484772 m!2852873))

(declare-fun m!2852875 () Bool)

(assert (=> b!2484773 m!2852875))

(assert (=> b!2484688 d!713411))

(declare-fun bs!467749 () Bool)

(declare-fun d!713413 () Bool)

(assert (= bs!467749 (and d!713413 b!2484691)))

(declare-fun lambda!94337 () Int)

(assert (=> bs!467749 (not (= lambda!94337 lambda!94325))))

(declare-fun bs!467750 () Bool)

(assert (= bs!467750 (and d!713413 d!713399)))

(assert (=> bs!467750 (not (= lambda!94337 lambda!94330))))

(assert (=> d!713413 true))

(assert (=> d!713413 (= (allKeysSameHashInMap!182 lt!890868 (hashF!5295 (_2!17087 lt!890867))) (forall!5994 (toList!1643 lt!890868) lambda!94337))))

(declare-fun bs!467751 () Bool)

(assert (= bs!467751 d!713413))

(declare-fun m!2852877 () Bool)

(assert (=> bs!467751 m!2852877))

(assert (=> b!2484688 d!713413))

(declare-fun bs!467752 () Bool)

(declare-fun d!713415 () Bool)

(assert (= bs!467752 (and d!713415 b!2484691)))

(declare-fun lambda!94340 () Int)

(assert (=> bs!467752 (not (= lambda!94340 lambda!94325))))

(declare-fun bs!467753 () Bool)

(assert (= bs!467753 (and d!713415 d!713399)))

(assert (=> bs!467753 (not (= lambda!94340 lambda!94330))))

(declare-fun bs!467754 () Bool)

(assert (= bs!467754 (and d!713415 d!713413)))

(assert (=> bs!467754 (= lambda!94340 lambda!94337)))

(assert (=> d!713415 true))

(assert (=> d!713415 (allKeysSameHash!81 lt!890858 lt!890873 (hashF!5295 (_2!17087 lt!890867)))))

(declare-fun lt!890924 () Unit!42781)

(declare-fun choose!14680 (List!29283 (_ BitVec 64) List!29282 Hashable!3314) Unit!42781)

(assert (=> d!713415 (= lt!890924 (choose!14680 (toList!1643 lt!890865) lt!890873 lt!890858 (hashF!5295 (_2!17087 lt!890867))))))

(assert (=> d!713415 (forall!5994 (toList!1643 lt!890865) lambda!94340)))

(assert (=> d!713415 (= (lemmaInLongMapAllKeySameHashThenForTuple!74 (toList!1643 lt!890865) lt!890873 lt!890858 (hashF!5295 (_2!17087 lt!890867))) lt!890924)))

(declare-fun bs!467755 () Bool)

(assert (= bs!467755 d!713415))

(assert (=> bs!467755 m!2852769))

(declare-fun m!2852879 () Bool)

(assert (=> bs!467755 m!2852879))

(declare-fun m!2852881 () Bool)

(assert (=> bs!467755 m!2852881))

(assert (=> b!2484688 d!713415))

(declare-fun bs!467756 () Bool)

(declare-fun d!713417 () Bool)

(assert (= bs!467756 (and d!713417 b!2484691)))

(declare-fun lambda!94341 () Int)

(assert (=> bs!467756 (not (= lambda!94341 lambda!94325))))

(declare-fun bs!467757 () Bool)

(assert (= bs!467757 (and d!713417 d!713399)))

(assert (=> bs!467757 (not (= lambda!94341 lambda!94330))))

(declare-fun bs!467758 () Bool)

(assert (= bs!467758 (and d!713417 d!713413)))

(assert (=> bs!467758 (= lambda!94341 lambda!94337)))

(declare-fun bs!467759 () Bool)

(assert (= bs!467759 (and d!713417 d!713415)))

(assert (=> bs!467759 (= lambda!94341 lambda!94340)))

(assert (=> d!713417 true))

(assert (=> d!713417 (= (allKeysSameHashInMap!182 lt!890862 (hashF!5295 (_2!17087 lt!890867))) (forall!5994 (toList!1643 lt!890862) lambda!94341))))

(declare-fun bs!467760 () Bool)

(assert (= bs!467760 d!713417))

(declare-fun m!2852883 () Bool)

(assert (=> bs!467760 m!2852883))

(assert (=> b!2484689 d!713417))

(declare-fun bs!467761 () Bool)

(declare-fun b!2484807 () Bool)

(assert (= bs!467761 (and b!2484807 b!2484691)))

(declare-fun lambda!94344 () Int)

(assert (=> bs!467761 (= lambda!94344 lambda!94325)))

(declare-fun bs!467762 () Bool)

(assert (= bs!467762 (and b!2484807 d!713417)))

(assert (=> bs!467762 (not (= lambda!94344 lambda!94341))))

(declare-fun bs!467763 () Bool)

(assert (= bs!467763 (and b!2484807 d!713413)))

(assert (=> bs!467763 (not (= lambda!94344 lambda!94337))))

(declare-fun bs!467764 () Bool)

(assert (= bs!467764 (and b!2484807 d!713399)))

(assert (=> bs!467764 (= lambda!94344 lambda!94330)))

(declare-fun bs!467765 () Bool)

(assert (= bs!467765 (and b!2484807 d!713415)))

(assert (=> bs!467765 (not (= lambda!94344 lambda!94340))))

(declare-fun b!2484798 () Bool)

(declare-fun e!1577640 () Unit!42781)

(declare-fun Unit!42785 () Unit!42781)

(assert (=> b!2484798 (= e!1577640 Unit!42785)))

(declare-fun bm!152324 () Bool)

(declare-fun call!152331 () Bool)

(declare-datatypes ((Option!5771 0))(
  ( (None!5770) (Some!5770 (v!31595 tuple2!29086)) )
))
(declare-fun call!152330 () Option!5771)

(declare-fun isDefined!4592 (Option!5771) Bool)

(assert (=> bm!152324 (= call!152331 (isDefined!4592 call!152330))))

(declare-fun bm!152325 () Bool)

(declare-fun call!152332 () List!29282)

(declare-fun getPair!79 (List!29282 K!5595) Option!5771)

(assert (=> bm!152325 (= call!152330 (getPair!79 call!152332 key!2246))))

(declare-fun b!2484800 () Bool)

(declare-fun e!1577638 () Bool)

(declare-fun lt!890982 () (_ BitVec 64))

(assert (=> b!2484800 (= e!1577638 (isDefined!4592 (getPair!79 (apply!6966 (v!31589 (underlying!7016 thiss!42540)) lt!890982) key!2246)))))

(declare-fun bm!152326 () Bool)

(declare-fun call!152333 () ListLongMap!593)

(assert (=> bm!152326 (= call!152333 (map!6288 (v!31589 (underlying!7016 thiss!42540))))))

(declare-fun b!2484801 () Bool)

(assert (=> b!2484801 false))

(declare-fun lt!890977 () Unit!42781)

(declare-fun lt!890980 () Unit!42781)

(assert (=> b!2484801 (= lt!890977 lt!890980)))

(declare-fun lt!890974 () ListLongMap!593)

(declare-fun contains!5181 (ListMap!1123 K!5595) Bool)

(assert (=> b!2484801 (contains!5181 (extractMap!184 (toList!1643 lt!890974)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!79 (ListLongMap!593 K!5595 Hashable!3314) Unit!42781)

(assert (=> b!2484801 (= lt!890980 (lemmaInLongMapThenInGenericMap!79 lt!890974 key!2246 (hashF!5295 thiss!42540)))))

(assert (=> b!2484801 (= lt!890974 call!152333)))

(declare-fun e!1577642 () Unit!42781)

(declare-fun Unit!42786 () Unit!42781)

(assert (=> b!2484801 (= e!1577642 Unit!42786)))

(declare-fun b!2484802 () Bool)

(declare-fun e!1577637 () Unit!42781)

(assert (=> b!2484802 (= e!1577637 e!1577642)))

(declare-fun res!1051720 () Bool)

(declare-fun call!152329 () Bool)

(assert (=> b!2484802 (= res!1051720 call!152329)))

(declare-fun e!1577641 () Bool)

(assert (=> b!2484802 (=> (not res!1051720) (not e!1577641))))

(declare-fun c!394973 () Bool)

(assert (=> b!2484802 (= c!394973 e!1577641)))

(declare-fun b!2484803 () Bool)

(declare-fun e!1577643 () Unit!42781)

(declare-fun Unit!42787 () Unit!42781)

(assert (=> b!2484803 (= e!1577643 Unit!42787)))

(declare-fun b!2484804 () Bool)

(assert (=> b!2484804 (= e!1577641 call!152331)))

(declare-fun d!713419 () Bool)

(declare-fun lt!890979 () Bool)

(assert (=> d!713419 (= lt!890979 (contains!5181 (map!6289 thiss!42540) key!2246))))

(assert (=> d!713419 (= lt!890979 e!1577638)))

(declare-fun res!1051722 () Bool)

(assert (=> d!713419 (=> (not res!1051722) (not e!1577638))))

(assert (=> d!713419 (= res!1051722 (contains!5179 (v!31589 (underlying!7016 thiss!42540)) lt!890982))))

(declare-fun lt!890975 () Unit!42781)

(assert (=> d!713419 (= lt!890975 e!1577637)))

(declare-fun c!394972 () Bool)

(assert (=> d!713419 (= c!394972 (contains!5181 (extractMap!184 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540))))) key!2246))))

(declare-fun lt!890984 () Unit!42781)

(assert (=> d!713419 (= lt!890984 e!1577643)))

(declare-fun c!394970 () Bool)

(assert (=> d!713419 (= c!394970 (contains!5179 (v!31589 (underlying!7016 thiss!42540)) lt!890982))))

(assert (=> d!713419 (= lt!890982 (hash!737 (hashF!5295 thiss!42540) key!2246))))

(assert (=> d!713419 (valid!2612 thiss!42540)))

(assert (=> d!713419 (= (contains!5177 thiss!42540 key!2246) lt!890979)))

(declare-fun b!2484799 () Bool)

(declare-fun lt!890966 () Unit!42781)

(assert (=> b!2484799 (= e!1577637 lt!890966)))

(declare-fun lt!890968 () ListLongMap!593)

(assert (=> b!2484799 (= lt!890968 call!152333)))

(declare-fun lemmaInGenericMapThenInLongMap!79 (ListLongMap!593 K!5595 Hashable!3314) Unit!42781)

(assert (=> b!2484799 (= lt!890966 (lemmaInGenericMapThenInLongMap!79 lt!890968 key!2246 (hashF!5295 thiss!42540)))))

(declare-fun res!1051721 () Bool)

(assert (=> b!2484799 (= res!1051721 call!152329)))

(declare-fun e!1577639 () Bool)

(assert (=> b!2484799 (=> (not res!1051721) (not e!1577639))))

(assert (=> b!2484799 e!1577639))

(declare-fun b!2484805 () Bool)

(assert (=> b!2484805 (= e!1577639 call!152331)))

(declare-fun bm!152327 () Bool)

(declare-fun call!152334 () (_ BitVec 64))

(declare-fun apply!6968 (ListLongMap!593 (_ BitVec 64)) List!29282)

(assert (=> bm!152327 (= call!152332 (apply!6968 (ite c!394972 lt!890968 call!152333) call!152334))))

(declare-fun b!2484806 () Bool)

(declare-fun Unit!42788 () Unit!42781)

(assert (=> b!2484806 (= e!1577642 Unit!42788)))

(assert (=> b!2484807 (= e!1577643 (forallContained!888 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540)))) lambda!94344 (tuple2!29089 lt!890982 (apply!6966 (v!31589 (underlying!7016 thiss!42540)) lt!890982))))))

(declare-fun c!394971 () Bool)

(assert (=> b!2484807 (= c!394971 (not (contains!5180 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540)))) (tuple2!29089 lt!890982 (apply!6966 (v!31589 (underlying!7016 thiss!42540)) lt!890982)))))))

(declare-fun lt!890972 () Unit!42781)

(assert (=> b!2484807 (= lt!890972 e!1577640)))

(declare-fun bm!152328 () Bool)

(assert (=> bm!152328 (= call!152329 (contains!5178 (ite c!394972 lt!890968 call!152333) call!152334))))

(declare-fun b!2484808 () Bool)

(assert (=> b!2484808 false))

(declare-fun lt!890973 () Unit!42781)

(declare-fun lt!890969 () Unit!42781)

(assert (=> b!2484808 (= lt!890973 lt!890969)))

(declare-fun lt!890967 () List!29283)

(declare-fun lt!890976 () List!29282)

(assert (=> b!2484808 (contains!5180 lt!890967 (tuple2!29089 lt!890982 lt!890976))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!84 (List!29283 (_ BitVec 64) List!29282) Unit!42781)

(assert (=> b!2484808 (= lt!890969 (lemmaGetValueByKeyImpliesContainsTuple!84 lt!890967 lt!890982 lt!890976))))

(assert (=> b!2484808 (= lt!890976 (apply!6966 (v!31589 (underlying!7016 thiss!42540)) lt!890982))))

(assert (=> b!2484808 (= lt!890967 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540)))))))

(declare-fun lt!890971 () Unit!42781)

(declare-fun lt!890965 () Unit!42781)

(assert (=> b!2484808 (= lt!890971 lt!890965)))

(declare-fun lt!890970 () List!29283)

(declare-fun isDefined!4593 (Option!5770) Bool)

(assert (=> b!2484808 (isDefined!4593 (getValueByKey!148 lt!890970 lt!890982))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!105 (List!29283 (_ BitVec 64)) Unit!42781)

(assert (=> b!2484808 (= lt!890965 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 lt!890970 lt!890982))))

(assert (=> b!2484808 (= lt!890970 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540)))))))

(declare-fun lt!890981 () Unit!42781)

(declare-fun lt!890978 () Unit!42781)

(assert (=> b!2484808 (= lt!890981 lt!890978)))

(declare-fun lt!890983 () List!29283)

(declare-fun containsKey!155 (List!29283 (_ BitVec 64)) Bool)

(assert (=> b!2484808 (containsKey!155 lt!890983 lt!890982)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!80 (List!29283 (_ BitVec 64)) Unit!42781)

(assert (=> b!2484808 (= lt!890978 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!80 lt!890983 lt!890982))))

(assert (=> b!2484808 (= lt!890983 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540)))))))

(declare-fun Unit!42789 () Unit!42781)

(assert (=> b!2484808 (= e!1577640 Unit!42789)))

(declare-fun bm!152329 () Bool)

(assert (=> bm!152329 (= call!152334 (hash!737 (hashF!5295 thiss!42540) key!2246))))

(assert (= (and d!713419 c!394970) b!2484807))

(assert (= (and d!713419 (not c!394970)) b!2484803))

(assert (= (and b!2484807 c!394971) b!2484808))

(assert (= (and b!2484807 (not c!394971)) b!2484798))

(assert (= (and d!713419 c!394972) b!2484799))

(assert (= (and d!713419 (not c!394972)) b!2484802))

(assert (= (and b!2484799 res!1051721) b!2484805))

(assert (= (and b!2484802 res!1051720) b!2484804))

(assert (= (and b!2484802 c!394973) b!2484801))

(assert (= (and b!2484802 (not c!394973)) b!2484806))

(assert (= (or b!2484799 b!2484805 b!2484802 b!2484804) bm!152329))

(assert (= (or b!2484799 b!2484802 b!2484804 b!2484801) bm!152326))

(assert (= (or b!2484805 b!2484804) bm!152327))

(assert (= (or b!2484799 b!2484802) bm!152328))

(assert (= (or b!2484805 b!2484804) bm!152325))

(assert (= (or b!2484805 b!2484804) bm!152324))

(assert (= (and d!713419 res!1051722) b!2484800))

(declare-fun m!2852885 () Bool)

(assert (=> bm!152327 m!2852885))

(declare-fun m!2852887 () Bool)

(assert (=> bm!152325 m!2852887))

(declare-fun m!2852889 () Bool)

(assert (=> bm!152324 m!2852889))

(declare-fun m!2852891 () Bool)

(assert (=> bm!152328 m!2852891))

(assert (=> b!2484807 m!2852749))

(declare-fun m!2852893 () Bool)

(assert (=> b!2484807 m!2852893))

(declare-fun m!2852895 () Bool)

(assert (=> b!2484807 m!2852895))

(declare-fun m!2852897 () Bool)

(assert (=> b!2484807 m!2852897))

(assert (=> bm!152326 m!2852749))

(declare-fun m!2852899 () Bool)

(assert (=> b!2484808 m!2852899))

(declare-fun m!2852901 () Bool)

(assert (=> b!2484808 m!2852901))

(declare-fun m!2852903 () Bool)

(assert (=> b!2484808 m!2852903))

(declare-fun m!2852905 () Bool)

(assert (=> b!2484808 m!2852905))

(assert (=> b!2484808 m!2852893))

(assert (=> b!2484808 m!2852749))

(assert (=> b!2484808 m!2852903))

(declare-fun m!2852907 () Bool)

(assert (=> b!2484808 m!2852907))

(declare-fun m!2852909 () Bool)

(assert (=> b!2484808 m!2852909))

(declare-fun m!2852911 () Bool)

(assert (=> b!2484808 m!2852911))

(declare-fun m!2852913 () Bool)

(assert (=> b!2484801 m!2852913))

(assert (=> b!2484801 m!2852913))

(declare-fun m!2852915 () Bool)

(assert (=> b!2484801 m!2852915))

(declare-fun m!2852917 () Bool)

(assert (=> b!2484801 m!2852917))

(assert (=> bm!152329 m!2852741))

(declare-fun m!2852919 () Bool)

(assert (=> b!2484799 m!2852919))

(assert (=> b!2484800 m!2852893))

(assert (=> b!2484800 m!2852893))

(declare-fun m!2852921 () Bool)

(assert (=> b!2484800 m!2852921))

(assert (=> b!2484800 m!2852921))

(declare-fun m!2852923 () Bool)

(assert (=> b!2484800 m!2852923))

(assert (=> d!713419 m!2852739))

(declare-fun m!2852925 () Bool)

(assert (=> d!713419 m!2852925))

(assert (=> d!713419 m!2852751))

(assert (=> d!713419 m!2852739))

(declare-fun m!2852927 () Bool)

(assert (=> d!713419 m!2852927))

(assert (=> d!713419 m!2852741))

(assert (=> d!713419 m!2852749))

(assert (=> d!713419 m!2852823))

(declare-fun m!2852929 () Bool)

(assert (=> d!713419 m!2852929))

(assert (=> d!713419 m!2852823))

(assert (=> b!2484698 d!713419))

(declare-fun d!713421 () Bool)

(assert (=> d!713421 (= (array_inv!3879 (_keys!3701 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) (bvsge (size!22818 (_keys!3701 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484693 d!713421))

(declare-fun d!713423 () Bool)

(assert (=> d!713423 (= (array_inv!3880 (_values!3684 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) (bvsge (size!22817 (_values!3684 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484693 d!713423))

(declare-fun bs!467766 () Bool)

(declare-fun b!2484813 () Bool)

(assert (= bs!467766 (and b!2484813 b!2484691)))

(declare-fun lambda!94347 () Int)

(assert (=> bs!467766 (= lambda!94347 lambda!94325)))

(declare-fun bs!467767 () Bool)

(assert (= bs!467767 (and b!2484813 d!713417)))

(assert (=> bs!467767 (not (= lambda!94347 lambda!94341))))

(declare-fun bs!467768 () Bool)

(assert (= bs!467768 (and b!2484813 d!713413)))

(assert (=> bs!467768 (not (= lambda!94347 lambda!94337))))

(declare-fun bs!467769 () Bool)

(assert (= bs!467769 (and b!2484813 b!2484807)))

(assert (=> bs!467769 (= lambda!94347 lambda!94344)))

(declare-fun bs!467770 () Bool)

(assert (= bs!467770 (and b!2484813 d!713399)))

(assert (=> bs!467770 (= lambda!94347 lambda!94330)))

(declare-fun bs!467771 () Bool)

(assert (= bs!467771 (and b!2484813 d!713415)))

(assert (=> bs!467771 (not (= lambda!94347 lambda!94340))))

(declare-fun d!713425 () Bool)

(declare-fun res!1051727 () Bool)

(declare-fun e!1577646 () Bool)

(assert (=> d!713425 (=> (not res!1051727) (not e!1577646))))

(assert (=> d!713425 (= res!1051727 (valid!2613 (v!31589 (underlying!7016 thiss!42540))))))

(assert (=> d!713425 (= (valid!2612 thiss!42540) e!1577646)))

(declare-fun res!1051728 () Bool)

(assert (=> b!2484813 (=> (not res!1051728) (not e!1577646))))

(assert (=> b!2484813 (= res!1051728 (forall!5994 (toList!1643 (map!6288 (v!31589 (underlying!7016 thiss!42540)))) lambda!94347))))

(declare-fun b!2484814 () Bool)

(assert (=> b!2484814 (= e!1577646 (allKeysSameHashInMap!182 (map!6288 (v!31589 (underlying!7016 thiss!42540))) (hashF!5295 thiss!42540)))))

(assert (= (and d!713425 res!1051727) b!2484813))

(assert (= (and b!2484813 res!1051728) b!2484814))

(assert (=> d!713425 m!2852797))

(assert (=> b!2484813 m!2852749))

(declare-fun m!2852931 () Bool)

(assert (=> b!2484813 m!2852931))

(assert (=> b!2484814 m!2852749))

(assert (=> b!2484814 m!2852749))

(declare-fun m!2852933 () Bool)

(assert (=> b!2484814 m!2852933))

(assert (=> b!2484690 d!713425))

(declare-fun tp!795486 () Bool)

(declare-fun b!2484819 () Bool)

(declare-fun e!1577649 () Bool)

(declare-fun tp_is_empty!12357 () Bool)

(assert (=> b!2484819 (= e!1577649 (and tp_is_empty!12355 tp_is_empty!12357 tp!795486))))

(assert (=> b!2484693 (= tp!795483 e!1577649)))

(assert (= (and b!2484693 ((_ is Cons!29182) (zeroValue!3662 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540))))))) b!2484819))

(declare-fun e!1577650 () Bool)

(declare-fun tp!795487 () Bool)

(declare-fun b!2484820 () Bool)

(assert (=> b!2484820 (= e!1577650 (and tp_is_empty!12355 tp_is_empty!12357 tp!795487))))

(assert (=> b!2484693 (= tp!795482 e!1577650)))

(assert (= (and b!2484693 ((_ is Cons!29182) (minValue!3662 (v!31588 (underlying!7015 (v!31589 (underlying!7016 thiss!42540))))))) b!2484820))

(declare-fun mapNonEmpty!15711 () Bool)

(declare-fun mapRes!15711 () Bool)

(declare-fun tp!795496 () Bool)

(declare-fun e!1577655 () Bool)

(assert (=> mapNonEmpty!15711 (= mapRes!15711 (and tp!795496 e!1577655))))

(declare-fun mapRest!15711 () (Array (_ BitVec 32) List!29282))

(declare-fun mapKey!15711 () (_ BitVec 32))

(declare-fun mapValue!15711 () List!29282)

(assert (=> mapNonEmpty!15711 (= mapRest!15708 (store mapRest!15711 mapKey!15711 mapValue!15711))))

(declare-fun tp!795495 () Bool)

(declare-fun b!2484827 () Bool)

(assert (=> b!2484827 (= e!1577655 (and tp_is_empty!12355 tp_is_empty!12357 tp!795495))))

(declare-fun mapIsEmpty!15711 () Bool)

(assert (=> mapIsEmpty!15711 mapRes!15711))

(declare-fun condMapEmpty!15711 () Bool)

(declare-fun mapDefault!15711 () List!29282)

(assert (=> mapNonEmpty!15708 (= condMapEmpty!15711 (= mapRest!15708 ((as const (Array (_ BitVec 32) List!29282)) mapDefault!15711)))))

(declare-fun e!1577656 () Bool)

(assert (=> mapNonEmpty!15708 (= tp!795480 (and e!1577656 mapRes!15711))))

(declare-fun b!2484828 () Bool)

(declare-fun tp!795494 () Bool)

(assert (=> b!2484828 (= e!1577656 (and tp_is_empty!12355 tp_is_empty!12357 tp!795494))))

(assert (= (and mapNonEmpty!15708 condMapEmpty!15711) mapIsEmpty!15711))

(assert (= (and mapNonEmpty!15708 (not condMapEmpty!15711)) mapNonEmpty!15711))

(assert (= (and mapNonEmpty!15711 ((_ is Cons!29182) mapValue!15711)) b!2484827))

(assert (= (and mapNonEmpty!15708 ((_ is Cons!29182) mapDefault!15711)) b!2484828))

(declare-fun m!2852935 () Bool)

(assert (=> mapNonEmpty!15711 m!2852935))

(declare-fun b!2484829 () Bool)

(declare-fun e!1577657 () Bool)

(declare-fun tp!795497 () Bool)

(assert (=> b!2484829 (= e!1577657 (and tp_is_empty!12355 tp_is_empty!12357 tp!795497))))

(assert (=> mapNonEmpty!15708 (= tp!795477 e!1577657)))

(assert (= (and mapNonEmpty!15708 ((_ is Cons!29182) mapValue!15708)) b!2484829))

(declare-fun b!2484830 () Bool)

(declare-fun tp!795498 () Bool)

(declare-fun e!1577658 () Bool)

(assert (=> b!2484830 (= e!1577658 (and tp_is_empty!12355 tp_is_empty!12357 tp!795498))))

(assert (=> b!2484695 (= tp!795479 e!1577658)))

(assert (= (and b!2484695 ((_ is Cons!29182) mapDefault!15708)) b!2484830))

(declare-fun b_lambda!76263 () Bool)

(assert (= b_lambda!76255 (or (and b!2484693 b_free!72473) b_lambda!76263)))

(declare-fun b_lambda!76265 () Bool)

(assert (= b_lambda!76257 (or b!2484691 b_lambda!76265)))

(declare-fun bs!467772 () Bool)

(declare-fun d!713427 () Bool)

(assert (= bs!467772 (and d!713427 b!2484691)))

(assert (=> bs!467772 (= (dynLambda!12495 lambda!94325 (tuple2!29089 lt!890873 lt!890858)) (noDuplicateKeys!107 (_2!17086 (tuple2!29089 lt!890873 lt!890858))))))

(declare-fun m!2852937 () Bool)

(assert (=> bs!467772 m!2852937))

(assert (=> d!713391 d!713427))

(declare-fun b_lambda!76267 () Bool)

(assert (= b_lambda!76261 (or b!2484691 b_lambda!76267)))

(declare-fun bs!467773 () Bool)

(declare-fun d!713429 () Bool)

(assert (= bs!467773 (and d!713429 b!2484691)))

(assert (=> bs!467773 (= (dynLambda!12495 lambda!94325 (h!34594 (toList!1643 lt!890868))) (noDuplicateKeys!107 (_2!17086 (h!34594 (toList!1643 lt!890868)))))))

(declare-fun m!2852939 () Bool)

(assert (=> bs!467773 m!2852939))

(assert (=> b!2484772 d!713429))

(declare-fun b_lambda!76269 () Bool)

(assert (= b_lambda!76259 (or b!2484691 b_lambda!76269)))

(declare-fun bs!467774 () Bool)

(declare-fun d!713431 () Bool)

(assert (= bs!467774 (and d!713431 b!2484691)))

(assert (=> bs!467774 (= (dynLambda!12495 lambda!94325 (h!34594 (toList!1643 lt!890862))) (noDuplicateKeys!107 (_2!17086 (h!34594 (toList!1643 lt!890862)))))))

(declare-fun m!2852941 () Bool)

(assert (=> bs!467774 m!2852941))

(assert (=> b!2484764 d!713431))

(check-sat (not b!2484770) (not d!713417) b_and!188749 (not tb!140395) (not b!2484828) (not b!2484799) (not b_next!73179) (not d!713405) (not d!713415) tp_is_empty!12357 (not bs!467774) b_and!188747 (not bm!152328) (not b_lambda!76267) (not d!713419) (not b!2484730) (not b!2484819) tp_is_empty!12355 (not b!2484749) (not b!2484814) (not d!713401) (not b!2484830) (not mapNonEmpty!15711) (not bm!152311) (not b_next!73177) (not b!2484755) (not d!713389) (not b!2484752) (not b!2484724) (not d!713395) (not b!2484807) (not b_lambda!76263) (not d!713397) (not d!713413) (not b!2484742) (not bs!467772) (not b!2484722) (not d!713407) (not b_lambda!76265) (not d!713409) (not b_lambda!76269) (not b!2484765) (not bs!467773) (not d!713399) (not d!713425) (not bm!152329) (not d!713383) (not d!713381) (not bm!152326) (not b!2484773) (not d!713393) (not b!2484748) (not b!2484771) (not b!2484829) (not b!2484725) (not bm!152327) (not b!2484813) (not b!2484820) (not d!713379) (not b!2484808) (not d!713385) (not b!2484719) (not bm!152310) (not bm!152324) (not b!2484801) (not bm!152325) (not b!2484800) (not d!713391) (not b!2484723) (not b!2484827))
(check-sat b_and!188747 b_and!188749 (not b_next!73177) (not b_next!73179))

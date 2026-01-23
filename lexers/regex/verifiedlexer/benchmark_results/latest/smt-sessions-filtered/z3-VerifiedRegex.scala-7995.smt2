; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414316 () Bool)

(assert start!414316)

(declare-fun b!4310817 () Bool)

(declare-fun b_free!128643 () Bool)

(declare-fun b_next!129347 () Bool)

(assert (=> b!4310817 (= b_free!128643 (not b_next!129347))))

(declare-fun tp!1324750 () Bool)

(declare-fun b_and!340077 () Bool)

(assert (=> b!4310817 (= tp!1324750 b_and!340077)))

(declare-fun b!4310821 () Bool)

(declare-fun b_free!128645 () Bool)

(declare-fun b_next!129349 () Bool)

(assert (=> b!4310821 (= b_free!128645 (not b_next!129349))))

(declare-fun tp!1324751 () Bool)

(declare-fun b_and!340079 () Bool)

(assert (=> b!4310821 (= tp!1324751 b_and!340079)))

(declare-fun mapIsEmpty!20855 () Bool)

(declare-fun mapRes!20855 () Bool)

(assert (=> mapIsEmpty!20855 mapRes!20855))

(declare-fun b!4310816 () Bool)

(declare-fun e!2681049 () Bool)

(declare-fun tp!1324755 () Bool)

(assert (=> b!4310816 (= e!2681049 (and tp!1324755 mapRes!20855))))

(declare-fun condMapEmpty!20855 () Bool)

(declare-datatypes ((V!9626 0))(
  ( (V!9627 (val!15797 Int)) )
))
(declare-datatypes ((K!9424 0))(
  ( (K!9425 (val!15798 Int)) )
))
(declare-datatypes ((tuple2!46682 0))(
  ( (tuple2!46683 (_1!26621 K!9424) (_2!26621 V!9626)) )
))
(declare-datatypes ((List!48334 0))(
  ( (Nil!48210) (Cons!48210 (h!53648 tuple2!46682) (t!355147 List!48334)) )
))
(declare-datatypes ((array!16852 0))(
  ( (array!16853 (arr!7527 (Array (_ BitVec 32) (_ BitVec 64))) (size!35566 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4587 0))(
  ( (HashableExt!4586 (__x!30038 Int)) )
))
(declare-datatypes ((array!16854 0))(
  ( (array!16855 (arr!7528 (Array (_ BitVec 32) List!48334)) (size!35567 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9342 0))(
  ( (LongMapFixedSize!9343 (defaultEntry!5056 Int) (mask!13235 (_ BitVec 32)) (extraKeys!4920 (_ BitVec 32)) (zeroValue!4930 List!48334) (minValue!4930 List!48334) (_size!9385 (_ BitVec 32)) (_keys!4971 array!16852) (_values!4952 array!16854) (_vacant!4732 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18493 0))(
  ( (Cell!18494 (v!42375 LongMapFixedSize!9342)) )
))
(declare-datatypes ((MutLongMap!4671 0))(
  ( (LongMap!4671 (underlying!9571 Cell!18493)) (MutLongMapExt!4670 (__x!30039 Int)) )
))
(declare-datatypes ((Cell!18495 0))(
  ( (Cell!18496 (v!42376 MutLongMap!4671)) )
))
(declare-datatypes ((MutableMap!4577 0))(
  ( (MutableMapExt!4576 (__x!30040 Int)) (HashMap!4577 (underlying!9572 Cell!18495) (hashF!6715 Hashable!4587) (_size!9386 (_ BitVec 32)) (defaultValue!4748 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4577)

(declare-fun mapDefault!20855 () List!48334)

(assert (=> b!4310816 (= condMapEmpty!20855 (= (arr!7528 (_values!4952 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48334)) mapDefault!20855)))))

(declare-fun e!2681047 () Bool)

(declare-fun tp!1324754 () Bool)

(declare-fun tp!1324753 () Bool)

(declare-fun array_inv!5401 (array!16852) Bool)

(declare-fun array_inv!5402 (array!16854) Bool)

(assert (=> b!4310817 (= e!2681047 (and tp!1324750 tp!1324754 tp!1324753 (array_inv!5401 (_keys!4971 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) (array_inv!5402 (_values!4952 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) e!2681049))))

(declare-fun b!4310818 () Bool)

(declare-fun e!2681052 () Bool)

(declare-fun e!2681057 () Bool)

(assert (=> b!4310818 (= e!2681052 e!2681057)))

(declare-fun res!1766710 () Bool)

(assert (=> b!4310818 (=> (not res!1766710) (not e!2681057))))

(declare-fun key!2048 () K!9424)

(declare-fun contains!10188 (MutableMap!4577 K!9424) Bool)

(assert (=> b!4310818 (= res!1766710 (contains!10188 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46684 0))(
  ( (tuple2!46685 (_1!26622 (_ BitVec 64)) (_2!26622 List!48334)) )
))
(declare-datatypes ((List!48335 0))(
  ( (Nil!48211) (Cons!48211 (h!53649 tuple2!46684) (t!355148 List!48335)) )
))
(declare-datatypes ((ListLongMap!1025 0))(
  ( (ListLongMap!1026 (toList!2413 List!48335)) )
))
(declare-fun lt!1531245 () ListLongMap!1025)

(declare-fun map!10204 (MutLongMap!4671) ListLongMap!1025)

(assert (=> b!4310818 (= lt!1531245 (map!10204 (v!42376 (underlying!9572 thiss!42308))))))

(declare-datatypes ((ListMap!1695 0))(
  ( (ListMap!1696 (toList!2414 List!48334)) )
))
(declare-fun lt!1531241 () ListMap!1695)

(declare-fun map!10205 (MutableMap!4577) ListMap!1695)

(assert (=> b!4310818 (= lt!1531241 (map!10205 thiss!42308))))

(declare-fun b!4310819 () Bool)

(declare-fun e!2681056 () Bool)

(declare-fun e!2681048 () Bool)

(declare-fun lt!1531246 () MutLongMap!4671)

(get-info :version)

(assert (=> b!4310819 (= e!2681056 (and e!2681048 ((_ is LongMap!4671) lt!1531246)))))

(assert (=> b!4310819 (= lt!1531246 (v!42376 (underlying!9572 thiss!42308)))))

(declare-fun b!4310820 () Bool)

(declare-fun e!2681053 () Bool)

(declare-fun lt!1531247 () List!48334)

(declare-fun containsKey!318 (List!48334 K!9424) Bool)

(assert (=> b!4310820 (= e!2681053 (not (containsKey!318 lt!1531247 key!2048)))))

(declare-fun e!2681055 () Bool)

(assert (=> b!4310821 (= e!2681055 (and e!2681056 tp!1324751))))

(declare-fun res!1766711 () Bool)

(assert (=> start!414316 (=> (not res!1766711) (not e!2681052))))

(assert (=> start!414316 (= res!1766711 ((_ is HashMap!4577) thiss!42308))))

(assert (=> start!414316 e!2681052))

(assert (=> start!414316 e!2681055))

(declare-fun tp_is_empty!23789 () Bool)

(assert (=> start!414316 tp_is_empty!23789))

(declare-fun tp_is_empty!23791 () Bool)

(assert (=> start!414316 tp_is_empty!23791))

(declare-fun b!4310822 () Bool)

(declare-fun e!2681054 () Bool)

(assert (=> b!4310822 (= e!2681054 e!2681047)))

(declare-fun b!4310823 () Bool)

(declare-fun res!1766708 () Bool)

(assert (=> b!4310823 (=> (not res!1766708) (not e!2681052))))

(declare-fun valid!3660 (MutableMap!4577) Bool)

(assert (=> b!4310823 (= res!1766708 (valid!3660 thiss!42308))))

(declare-fun b!4310824 () Bool)

(declare-fun e!2681051 () Bool)

(declare-fun lt!1531249 () List!48334)

(declare-fun noDuplicateKeys!215 (List!48334) Bool)

(assert (=> b!4310824 (= e!2681051 (not (noDuplicateKeys!215 lt!1531249)))))

(assert (=> b!4310824 e!2681053))

(declare-fun res!1766709 () Bool)

(assert (=> b!4310824 (=> (not res!1766709) (not e!2681053))))

(assert (=> b!4310824 (= res!1766709 (noDuplicateKeys!215 lt!1531247))))

(declare-datatypes ((Unit!67341 0))(
  ( (Unit!67342) )
))
(declare-fun lt!1531244 () Unit!67341)

(declare-fun lt!1531242 () List!48334)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!166 (List!48334 K!9424) Unit!67341)

(assert (=> b!4310824 (= lt!1531244 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!166 lt!1531242 key!2048))))

(declare-fun lt!1531243 () (_ BitVec 64))

(declare-fun allKeysSameHash!191 (List!48334 (_ BitVec 64) Hashable!4587) Bool)

(assert (=> b!4310824 (allKeysSameHash!191 lt!1531247 lt!1531243 (hashF!6715 thiss!42308))))

(declare-fun lt!1531248 () Unit!67341)

(declare-fun lemmaRemovePairForKeyPreservesHash!171 (List!48334 K!9424 (_ BitVec 64) Hashable!4587) Unit!67341)

(assert (=> b!4310824 (= lt!1531248 (lemmaRemovePairForKeyPreservesHash!171 lt!1531242 key!2048 lt!1531243 (hashF!6715 thiss!42308)))))

(assert (=> b!4310824 (allKeysSameHash!191 lt!1531242 lt!1531243 (hashF!6715 thiss!42308))))

(declare-fun lt!1531250 () Unit!67341)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!178 (List!48335 (_ BitVec 64) List!48334 Hashable!4587) Unit!67341)

(assert (=> b!4310824 (= lt!1531250 (lemmaInLongMapAllKeySameHashThenForTuple!178 (toList!2413 lt!1531245) lt!1531243 lt!1531242 (hashF!6715 thiss!42308)))))

(declare-fun b!4310825 () Bool)

(assert (=> b!4310825 (= e!2681048 e!2681054)))

(declare-fun b!4310826 () Bool)

(assert (=> b!4310826 (= e!2681057 e!2681051)))

(declare-fun res!1766707 () Bool)

(assert (=> b!4310826 (=> (not res!1766707) (not e!2681051))))

(declare-datatypes ((tuple2!46686 0))(
  ( (tuple2!46687 (_1!26623 Bool) (_2!26623 MutLongMap!4671)) )
))
(declare-fun update!443 (MutLongMap!4671 (_ BitVec 64) List!48334) tuple2!46686)

(assert (=> b!4310826 (= res!1766707 (_1!26623 (update!443 (v!42376 (underlying!9572 thiss!42308)) lt!1531243 lt!1531249)))))

(declare-fun v!9179 () V!9626)

(assert (=> b!4310826 (= lt!1531249 (Cons!48210 (tuple2!46683 key!2048 v!9179) lt!1531247))))

(declare-fun removePairForKey!216 (List!48334 K!9424) List!48334)

(assert (=> b!4310826 (= lt!1531247 (removePairForKey!216 lt!1531242 key!2048))))

(declare-fun apply!11025 (MutLongMap!4671 (_ BitVec 64)) List!48334)

(assert (=> b!4310826 (= lt!1531242 (apply!11025 (v!42376 (underlying!9572 thiss!42308)) lt!1531243))))

(declare-fun hash!1018 (Hashable!4587 K!9424) (_ BitVec 64))

(assert (=> b!4310826 (= lt!1531243 (hash!1018 (hashF!6715 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!20855 () Bool)

(declare-fun tp!1324752 () Bool)

(declare-fun tp!1324749 () Bool)

(assert (=> mapNonEmpty!20855 (= mapRes!20855 (and tp!1324752 tp!1324749))))

(declare-fun mapKey!20855 () (_ BitVec 32))

(declare-fun mapRest!20855 () (Array (_ BitVec 32) List!48334))

(declare-fun mapValue!20855 () List!48334)

(assert (=> mapNonEmpty!20855 (= (arr!7528 (_values!4952 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) (store mapRest!20855 mapKey!20855 mapValue!20855))))

(assert (= (and start!414316 res!1766711) b!4310823))

(assert (= (and b!4310823 res!1766708) b!4310818))

(assert (= (and b!4310818 res!1766710) b!4310826))

(assert (= (and b!4310826 res!1766707) b!4310824))

(assert (= (and b!4310824 res!1766709) b!4310820))

(assert (= (and b!4310816 condMapEmpty!20855) mapIsEmpty!20855))

(assert (= (and b!4310816 (not condMapEmpty!20855)) mapNonEmpty!20855))

(assert (= b!4310817 b!4310816))

(assert (= b!4310822 b!4310817))

(assert (= b!4310825 b!4310822))

(assert (= (and b!4310819 ((_ is LongMap!4671) (v!42376 (underlying!9572 thiss!42308)))) b!4310825))

(assert (= b!4310821 b!4310819))

(assert (= (and start!414316 ((_ is HashMap!4577) thiss!42308)) b!4310821))

(declare-fun m!4903745 () Bool)

(assert (=> b!4310818 m!4903745))

(declare-fun m!4903747 () Bool)

(assert (=> b!4310818 m!4903747))

(declare-fun m!4903749 () Bool)

(assert (=> b!4310818 m!4903749))

(declare-fun m!4903751 () Bool)

(assert (=> b!4310820 m!4903751))

(declare-fun m!4903753 () Bool)

(assert (=> b!4310826 m!4903753))

(declare-fun m!4903755 () Bool)

(assert (=> b!4310826 m!4903755))

(declare-fun m!4903757 () Bool)

(assert (=> b!4310826 m!4903757))

(declare-fun m!4903759 () Bool)

(assert (=> b!4310826 m!4903759))

(declare-fun m!4903761 () Bool)

(assert (=> b!4310823 m!4903761))

(declare-fun m!4903763 () Bool)

(assert (=> mapNonEmpty!20855 m!4903763))

(declare-fun m!4903765 () Bool)

(assert (=> b!4310817 m!4903765))

(declare-fun m!4903767 () Bool)

(assert (=> b!4310817 m!4903767))

(declare-fun m!4903769 () Bool)

(assert (=> b!4310824 m!4903769))

(declare-fun m!4903771 () Bool)

(assert (=> b!4310824 m!4903771))

(declare-fun m!4903773 () Bool)

(assert (=> b!4310824 m!4903773))

(declare-fun m!4903775 () Bool)

(assert (=> b!4310824 m!4903775))

(declare-fun m!4903777 () Bool)

(assert (=> b!4310824 m!4903777))

(declare-fun m!4903779 () Bool)

(assert (=> b!4310824 m!4903779))

(declare-fun m!4903781 () Bool)

(assert (=> b!4310824 m!4903781))

(check-sat (not b!4310817) (not b_next!129347) (not b!4310820) tp_is_empty!23789 (not mapNonEmpty!20855) (not b!4310816) tp_is_empty!23791 (not b!4310823) b_and!340079 (not b_next!129349) (not b!4310818) (not b!4310826) (not b!4310824) b_and!340077)
(check-sat b_and!340077 b_and!340079 (not b_next!129349) (not b_next!129347))
(get-model)

(declare-fun d!1268120 () Bool)

(assert (=> d!1268120 (= (array_inv!5401 (_keys!4971 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) (bvsge (size!35566 (_keys!4971 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310817 d!1268120))

(declare-fun d!1268122 () Bool)

(assert (=> d!1268122 (= (array_inv!5402 (_values!4952 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) (bvsge (size!35567 (_values!4952 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310817 d!1268122))

(declare-fun b!4310845 () Bool)

(declare-fun e!2681069 () tuple2!46686)

(declare-datatypes ((tuple2!46688 0))(
  ( (tuple2!46689 (_1!26624 Bool) (_2!26624 LongMapFixedSize!9342)) )
))
(declare-fun lt!1531260 () tuple2!46688)

(assert (=> b!4310845 (= e!2681069 (tuple2!46687 (_1!26624 lt!1531260) (LongMap!4671 (Cell!18494 (_2!26624 lt!1531260)))))))

(declare-fun lt!1531259 () tuple2!46686)

(declare-fun update!444 (LongMapFixedSize!9342 (_ BitVec 64) List!48334) tuple2!46688)

(assert (=> b!4310845 (= lt!1531260 (update!444 (v!42375 (underlying!9571 (_2!26623 lt!1531259))) lt!1531243 lt!1531249))))

(declare-fun b!4310846 () Bool)

(declare-fun e!2681072 () Bool)

(declare-fun e!2681068 () Bool)

(assert (=> b!4310846 (= e!2681072 e!2681068)))

(declare-fun res!1766720 () Bool)

(declare-fun call!297999 () ListLongMap!1025)

(declare-fun contains!10189 (ListLongMap!1025 (_ BitVec 64)) Bool)

(assert (=> b!4310846 (= res!1766720 (contains!10189 call!297999 lt!1531243))))

(assert (=> b!4310846 (=> (not res!1766720) (not e!2681068))))

(declare-fun b!4310847 () Bool)

(declare-fun e!2681071 () Bool)

(assert (=> b!4310847 (= e!2681071 e!2681072)))

(declare-fun c!732917 () Bool)

(declare-fun lt!1531262 () tuple2!46686)

(assert (=> b!4310847 (= c!732917 (_1!26623 lt!1531262))))

(declare-fun call!298000 () ListLongMap!1025)

(declare-fun b!4310848 () Bool)

(declare-fun +!271 (ListLongMap!1025 tuple2!46684) ListLongMap!1025)

(assert (=> b!4310848 (= e!2681068 (= call!297999 (+!271 call!298000 (tuple2!46685 lt!1531243 lt!1531249))))))

(declare-fun b!4310849 () Bool)

(declare-fun e!2681070 () tuple2!46686)

(declare-fun lt!1531261 () tuple2!46686)

(assert (=> b!4310849 (= e!2681070 (tuple2!46687 (_1!26623 lt!1531261) (_2!26623 lt!1531261)))))

(declare-fun repack!58 (MutLongMap!4671) tuple2!46686)

(assert (=> b!4310849 (= lt!1531261 (repack!58 (v!42376 (underlying!9572 thiss!42308))))))

(declare-fun bm!297994 () Bool)

(assert (=> bm!297994 (= call!298000 (map!10204 (ite c!732917 (v!42376 (underlying!9572 thiss!42308)) (_2!26623 lt!1531262))))))

(declare-fun d!1268124 () Bool)

(assert (=> d!1268124 e!2681071))

(declare-fun res!1766719 () Bool)

(assert (=> d!1268124 (=> (not res!1766719) (not e!2681071))))

(assert (=> d!1268124 (= res!1766719 ((_ is LongMap!4671) (_2!26623 lt!1531262)))))

(assert (=> d!1268124 (= lt!1531262 e!2681069)))

(declare-fun c!732916 () Bool)

(assert (=> d!1268124 (= c!732916 (_1!26623 lt!1531259))))

(assert (=> d!1268124 (= lt!1531259 e!2681070)))

(declare-fun c!732918 () Bool)

(declare-fun imbalanced!54 (MutLongMap!4671) Bool)

(assert (=> d!1268124 (= c!732918 (imbalanced!54 (v!42376 (underlying!9572 thiss!42308))))))

(declare-fun valid!3661 (MutLongMap!4671) Bool)

(assert (=> d!1268124 (valid!3661 (v!42376 (underlying!9572 thiss!42308)))))

(assert (=> d!1268124 (= (update!443 (v!42376 (underlying!9572 thiss!42308)) lt!1531243 lt!1531249) lt!1531262)))

(declare-fun b!4310850 () Bool)

(declare-fun res!1766718 () Bool)

(assert (=> b!4310850 (=> (not res!1766718) (not e!2681071))))

(assert (=> b!4310850 (= res!1766718 (valid!3661 (_2!26623 lt!1531262)))))

(declare-fun b!4310851 () Bool)

(assert (=> b!4310851 (= e!2681069 (tuple2!46687 false (_2!26623 lt!1531259)))))

(declare-fun b!4310852 () Bool)

(assert (=> b!4310852 (= e!2681072 (= call!298000 call!297999))))

(declare-fun b!4310853 () Bool)

(assert (=> b!4310853 (= e!2681070 (tuple2!46687 true (v!42376 (underlying!9572 thiss!42308))))))

(declare-fun bm!297995 () Bool)

(assert (=> bm!297995 (= call!297999 (map!10204 (ite c!732917 (_2!26623 lt!1531262) (v!42376 (underlying!9572 thiss!42308)))))))

(assert (= (and d!1268124 c!732918) b!4310849))

(assert (= (and d!1268124 (not c!732918)) b!4310853))

(assert (= (and d!1268124 c!732916) b!4310845))

(assert (= (and d!1268124 (not c!732916)) b!4310851))

(assert (= (and d!1268124 res!1766719) b!4310850))

(assert (= (and b!4310850 res!1766718) b!4310847))

(assert (= (and b!4310847 c!732917) b!4310846))

(assert (= (and b!4310847 (not c!732917)) b!4310852))

(assert (= (and b!4310846 res!1766720) b!4310848))

(assert (= (or b!4310848 b!4310852) bm!297994))

(assert (= (or b!4310846 b!4310848 b!4310852) bm!297995))

(declare-fun m!4903783 () Bool)

(assert (=> b!4310849 m!4903783))

(declare-fun m!4903785 () Bool)

(assert (=> bm!297995 m!4903785))

(declare-fun m!4903787 () Bool)

(assert (=> b!4310848 m!4903787))

(declare-fun m!4903789 () Bool)

(assert (=> b!4310850 m!4903789))

(declare-fun m!4903791 () Bool)

(assert (=> bm!297994 m!4903791))

(declare-fun m!4903793 () Bool)

(assert (=> b!4310845 m!4903793))

(declare-fun m!4903795 () Bool)

(assert (=> d!1268124 m!4903795))

(declare-fun m!4903797 () Bool)

(assert (=> d!1268124 m!4903797))

(declare-fun m!4903799 () Bool)

(assert (=> b!4310846 m!4903799))

(assert (=> b!4310826 d!1268124))

(declare-fun b!4310864 () Bool)

(declare-fun e!2681078 () List!48334)

(assert (=> b!4310864 (= e!2681078 (Cons!48210 (h!53648 lt!1531242) (removePairForKey!216 (t!355147 lt!1531242) key!2048)))))

(declare-fun b!4310865 () Bool)

(assert (=> b!4310865 (= e!2681078 Nil!48210)))

(declare-fun b!4310862 () Bool)

(declare-fun e!2681077 () List!48334)

(assert (=> b!4310862 (= e!2681077 (t!355147 lt!1531242))))

(declare-fun d!1268126 () Bool)

(declare-fun lt!1531265 () List!48334)

(assert (=> d!1268126 (not (containsKey!318 lt!1531265 key!2048))))

(assert (=> d!1268126 (= lt!1531265 e!2681077)))

(declare-fun c!732923 () Bool)

(assert (=> d!1268126 (= c!732923 (and ((_ is Cons!48210) lt!1531242) (= (_1!26621 (h!53648 lt!1531242)) key!2048)))))

(assert (=> d!1268126 (noDuplicateKeys!215 lt!1531242)))

(assert (=> d!1268126 (= (removePairForKey!216 lt!1531242 key!2048) lt!1531265)))

(declare-fun b!4310863 () Bool)

(assert (=> b!4310863 (= e!2681077 e!2681078)))

(declare-fun c!732924 () Bool)

(assert (=> b!4310863 (= c!732924 ((_ is Cons!48210) lt!1531242))))

(assert (= (and d!1268126 c!732923) b!4310862))

(assert (= (and d!1268126 (not c!732923)) b!4310863))

(assert (= (and b!4310863 c!732924) b!4310864))

(assert (= (and b!4310863 (not c!732924)) b!4310865))

(declare-fun m!4903801 () Bool)

(assert (=> b!4310864 m!4903801))

(declare-fun m!4903803 () Bool)

(assert (=> d!1268126 m!4903803))

(declare-fun m!4903805 () Bool)

(assert (=> d!1268126 m!4903805))

(assert (=> b!4310826 d!1268126))

(declare-fun d!1268128 () Bool)

(declare-fun e!2681081 () Bool)

(assert (=> d!1268128 e!2681081))

(declare-fun c!732927 () Bool)

(declare-fun contains!10190 (MutLongMap!4671 (_ BitVec 64)) Bool)

(assert (=> d!1268128 (= c!732927 (contains!10190 (v!42376 (underlying!9572 thiss!42308)) lt!1531243))))

(declare-fun lt!1531268 () List!48334)

(declare-fun apply!11026 (LongMapFixedSize!9342 (_ BitVec 64)) List!48334)

(assert (=> d!1268128 (= lt!1531268 (apply!11026 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))) lt!1531243))))

(assert (=> d!1268128 (valid!3661 (v!42376 (underlying!9572 thiss!42308)))))

(assert (=> d!1268128 (= (apply!11025 (v!42376 (underlying!9572 thiss!42308)) lt!1531243) lt!1531268)))

(declare-fun b!4310870 () Bool)

(declare-datatypes ((Option!10235 0))(
  ( (None!10234) (Some!10234 (v!42381 List!48334)) )
))
(declare-fun get!15602 (Option!10235) List!48334)

(declare-fun getValueByKey!258 (List!48335 (_ BitVec 64)) Option!10235)

(assert (=> b!4310870 (= e!2681081 (= lt!1531268 (get!15602 (getValueByKey!258 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308)))) lt!1531243))))))

(declare-fun b!4310871 () Bool)

(declare-fun dynLambda!20441 (Int (_ BitVec 64)) List!48334)

(assert (=> b!4310871 (= e!2681081 (= lt!1531268 (dynLambda!20441 (defaultEntry!5056 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308))))) lt!1531243)))))

(assert (=> b!4310871 ((_ is LongMap!4671) (v!42376 (underlying!9572 thiss!42308)))))

(assert (= (and d!1268128 c!732927) b!4310870))

(assert (= (and d!1268128 (not c!732927)) b!4310871))

(declare-fun b_lambda!126643 () Bool)

(assert (=> (not b_lambda!126643) (not b!4310871)))

(declare-fun t!355150 () Bool)

(declare-fun tb!257299 () Bool)

(assert (=> (and b!4310817 (= (defaultEntry!5056 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308))))) (defaultEntry!5056 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308)))))) t!355150) tb!257299))

(assert (=> b!4310871 t!355150))

(declare-fun result!314708 () Bool)

(declare-fun b_and!340081 () Bool)

(assert (= b_and!340077 (and (=> t!355150 result!314708) b_and!340081)))

(declare-fun m!4903807 () Bool)

(assert (=> d!1268128 m!4903807))

(declare-fun m!4903809 () Bool)

(assert (=> d!1268128 m!4903809))

(assert (=> d!1268128 m!4903797))

(assert (=> b!4310870 m!4903747))

(declare-fun m!4903811 () Bool)

(assert (=> b!4310870 m!4903811))

(assert (=> b!4310870 m!4903811))

(declare-fun m!4903813 () Bool)

(assert (=> b!4310870 m!4903813))

(declare-fun m!4903815 () Bool)

(assert (=> b!4310871 m!4903815))

(assert (=> b!4310826 d!1268128))

(declare-fun d!1268130 () Bool)

(declare-fun hash!1021 (Hashable!4587 K!9424) (_ BitVec 64))

(assert (=> d!1268130 (= (hash!1018 (hashF!6715 thiss!42308) key!2048) (hash!1021 (hashF!6715 thiss!42308) key!2048))))

(declare-fun bs!605090 () Bool)

(assert (= bs!605090 d!1268130))

(declare-fun m!4903817 () Bool)

(assert (=> bs!605090 m!4903817))

(assert (=> b!4310826 d!1268130))

(declare-fun d!1268132 () Bool)

(declare-fun res!1766725 () Bool)

(declare-fun e!2681086 () Bool)

(assert (=> d!1268132 (=> res!1766725 e!2681086)))

(assert (=> d!1268132 (= res!1766725 (and ((_ is Cons!48210) lt!1531247) (= (_1!26621 (h!53648 lt!1531247)) key!2048)))))

(assert (=> d!1268132 (= (containsKey!318 lt!1531247 key!2048) e!2681086)))

(declare-fun b!4310876 () Bool)

(declare-fun e!2681087 () Bool)

(assert (=> b!4310876 (= e!2681086 e!2681087)))

(declare-fun res!1766726 () Bool)

(assert (=> b!4310876 (=> (not res!1766726) (not e!2681087))))

(assert (=> b!4310876 (= res!1766726 ((_ is Cons!48210) lt!1531247))))

(declare-fun b!4310877 () Bool)

(assert (=> b!4310877 (= e!2681087 (containsKey!318 (t!355147 lt!1531247) key!2048))))

(assert (= (and d!1268132 (not res!1766725)) b!4310876))

(assert (= (and b!4310876 res!1766726) b!4310877))

(declare-fun m!4903819 () Bool)

(assert (=> b!4310877 m!4903819))

(assert (=> b!4310820 d!1268132))

(declare-fun d!1268134 () Bool)

(declare-fun res!1766731 () Bool)

(declare-fun e!2681092 () Bool)

(assert (=> d!1268134 (=> res!1766731 e!2681092)))

(assert (=> d!1268134 (= res!1766731 (not ((_ is Cons!48210) lt!1531247)))))

(assert (=> d!1268134 (= (noDuplicateKeys!215 lt!1531247) e!2681092)))

(declare-fun b!4310882 () Bool)

(declare-fun e!2681093 () Bool)

(assert (=> b!4310882 (= e!2681092 e!2681093)))

(declare-fun res!1766732 () Bool)

(assert (=> b!4310882 (=> (not res!1766732) (not e!2681093))))

(assert (=> b!4310882 (= res!1766732 (not (containsKey!318 (t!355147 lt!1531247) (_1!26621 (h!53648 lt!1531247)))))))

(declare-fun b!4310883 () Bool)

(assert (=> b!4310883 (= e!2681093 (noDuplicateKeys!215 (t!355147 lt!1531247)))))

(assert (= (and d!1268134 (not res!1766731)) b!4310882))

(assert (= (and b!4310882 res!1766732) b!4310883))

(declare-fun m!4903821 () Bool)

(assert (=> b!4310882 m!4903821))

(declare-fun m!4903823 () Bool)

(assert (=> b!4310883 m!4903823))

(assert (=> b!4310824 d!1268134))

(declare-fun d!1268136 () Bool)

(assert (=> d!1268136 true))

(assert (=> d!1268136 (allKeysSameHash!191 lt!1531242 lt!1531243 (hashF!6715 thiss!42308))))

(declare-fun lt!1531271 () Unit!67341)

(declare-fun choose!26261 (List!48335 (_ BitVec 64) List!48334 Hashable!4587) Unit!67341)

(assert (=> d!1268136 (= lt!1531271 (choose!26261 (toList!2413 lt!1531245) lt!1531243 lt!1531242 (hashF!6715 thiss!42308)))))

(declare-fun lambda!132951 () Int)

(declare-fun forall!8736 (List!48335 Int) Bool)

(assert (=> d!1268136 (forall!8736 (toList!2413 lt!1531245) lambda!132951)))

(assert (=> d!1268136 (= (lemmaInLongMapAllKeySameHashThenForTuple!178 (toList!2413 lt!1531245) lt!1531243 lt!1531242 (hashF!6715 thiss!42308)) lt!1531271)))

(declare-fun bs!605091 () Bool)

(assert (= bs!605091 d!1268136))

(assert (=> bs!605091 m!4903773))

(declare-fun m!4903825 () Bool)

(assert (=> bs!605091 m!4903825))

(declare-fun m!4903827 () Bool)

(assert (=> bs!605091 m!4903827))

(assert (=> b!4310824 d!1268136))

(declare-fun d!1268138 () Bool)

(declare-fun res!1766733 () Bool)

(declare-fun e!2681094 () Bool)

(assert (=> d!1268138 (=> res!1766733 e!2681094)))

(assert (=> d!1268138 (= res!1766733 (not ((_ is Cons!48210) lt!1531249)))))

(assert (=> d!1268138 (= (noDuplicateKeys!215 lt!1531249) e!2681094)))

(declare-fun b!4310886 () Bool)

(declare-fun e!2681095 () Bool)

(assert (=> b!4310886 (= e!2681094 e!2681095)))

(declare-fun res!1766734 () Bool)

(assert (=> b!4310886 (=> (not res!1766734) (not e!2681095))))

(assert (=> b!4310886 (= res!1766734 (not (containsKey!318 (t!355147 lt!1531249) (_1!26621 (h!53648 lt!1531249)))))))

(declare-fun b!4310887 () Bool)

(assert (=> b!4310887 (= e!2681095 (noDuplicateKeys!215 (t!355147 lt!1531249)))))

(assert (= (and d!1268138 (not res!1766733)) b!4310886))

(assert (= (and b!4310886 res!1766734) b!4310887))

(declare-fun m!4903829 () Bool)

(assert (=> b!4310886 m!4903829))

(declare-fun m!4903831 () Bool)

(assert (=> b!4310887 m!4903831))

(assert (=> b!4310824 d!1268138))

(declare-fun d!1268140 () Bool)

(assert (=> d!1268140 (noDuplicateKeys!215 (removePairForKey!216 lt!1531242 key!2048))))

(declare-fun lt!1531274 () Unit!67341)

(declare-fun choose!26262 (List!48334 K!9424) Unit!67341)

(assert (=> d!1268140 (= lt!1531274 (choose!26262 lt!1531242 key!2048))))

(assert (=> d!1268140 (noDuplicateKeys!215 lt!1531242)))

(assert (=> d!1268140 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!166 lt!1531242 key!2048) lt!1531274)))

(declare-fun bs!605092 () Bool)

(assert (= bs!605092 d!1268140))

(assert (=> bs!605092 m!4903755))

(assert (=> bs!605092 m!4903755))

(declare-fun m!4903833 () Bool)

(assert (=> bs!605092 m!4903833))

(declare-fun m!4903835 () Bool)

(assert (=> bs!605092 m!4903835))

(assert (=> bs!605092 m!4903805))

(assert (=> b!4310824 d!1268140))

(declare-fun d!1268142 () Bool)

(assert (=> d!1268142 true))

(assert (=> d!1268142 true))

(declare-fun lambda!132954 () Int)

(declare-fun forall!8737 (List!48334 Int) Bool)

(assert (=> d!1268142 (= (allKeysSameHash!191 lt!1531247 lt!1531243 (hashF!6715 thiss!42308)) (forall!8737 lt!1531247 lambda!132954))))

(declare-fun bs!605093 () Bool)

(assert (= bs!605093 d!1268142))

(declare-fun m!4903837 () Bool)

(assert (=> bs!605093 m!4903837))

(assert (=> b!4310824 d!1268142))

(declare-fun d!1268144 () Bool)

(assert (=> d!1268144 (allKeysSameHash!191 (removePairForKey!216 lt!1531242 key!2048) lt!1531243 (hashF!6715 thiss!42308))))

(declare-fun lt!1531277 () Unit!67341)

(declare-fun choose!26263 (List!48334 K!9424 (_ BitVec 64) Hashable!4587) Unit!67341)

(assert (=> d!1268144 (= lt!1531277 (choose!26263 lt!1531242 key!2048 lt!1531243 (hashF!6715 thiss!42308)))))

(assert (=> d!1268144 (noDuplicateKeys!215 lt!1531242)))

(assert (=> d!1268144 (= (lemmaRemovePairForKeyPreservesHash!171 lt!1531242 key!2048 lt!1531243 (hashF!6715 thiss!42308)) lt!1531277)))

(declare-fun bs!605094 () Bool)

(assert (= bs!605094 d!1268144))

(assert (=> bs!605094 m!4903755))

(assert (=> bs!605094 m!4903755))

(declare-fun m!4903839 () Bool)

(assert (=> bs!605094 m!4903839))

(declare-fun m!4903841 () Bool)

(assert (=> bs!605094 m!4903841))

(assert (=> bs!605094 m!4903805))

(assert (=> b!4310824 d!1268144))

(declare-fun bs!605095 () Bool)

(declare-fun d!1268146 () Bool)

(assert (= bs!605095 (and d!1268146 d!1268142)))

(declare-fun lambda!132955 () Int)

(assert (=> bs!605095 (= lambda!132955 lambda!132954)))

(assert (=> d!1268146 true))

(assert (=> d!1268146 true))

(assert (=> d!1268146 (= (allKeysSameHash!191 lt!1531242 lt!1531243 (hashF!6715 thiss!42308)) (forall!8737 lt!1531242 lambda!132955))))

(declare-fun bs!605096 () Bool)

(assert (= bs!605096 d!1268146))

(declare-fun m!4903843 () Bool)

(assert (=> bs!605096 m!4903843))

(assert (=> b!4310824 d!1268146))

(declare-fun bs!605097 () Bool)

(declare-fun b!4310896 () Bool)

(assert (= bs!605097 (and b!4310896 d!1268136)))

(declare-fun lambda!132958 () Int)

(assert (=> bs!605097 (not (= lambda!132958 lambda!132951))))

(declare-fun d!1268148 () Bool)

(declare-fun res!1766739 () Bool)

(declare-fun e!2681098 () Bool)

(assert (=> d!1268148 (=> (not res!1766739) (not e!2681098))))

(assert (=> d!1268148 (= res!1766739 (valid!3661 (v!42376 (underlying!9572 thiss!42308))))))

(assert (=> d!1268148 (= (valid!3660 thiss!42308) e!2681098)))

(declare-fun res!1766740 () Bool)

(assert (=> b!4310896 (=> (not res!1766740) (not e!2681098))))

(assert (=> b!4310896 (= res!1766740 (forall!8736 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308)))) lambda!132958))))

(declare-fun b!4310897 () Bool)

(declare-fun allKeysSameHashInMap!339 (ListLongMap!1025 Hashable!4587) Bool)

(assert (=> b!4310897 (= e!2681098 (allKeysSameHashInMap!339 (map!10204 (v!42376 (underlying!9572 thiss!42308))) (hashF!6715 thiss!42308)))))

(assert (= (and d!1268148 res!1766739) b!4310896))

(assert (= (and b!4310896 res!1766740) b!4310897))

(assert (=> d!1268148 m!4903797))

(assert (=> b!4310896 m!4903747))

(declare-fun m!4903845 () Bool)

(assert (=> b!4310896 m!4903845))

(assert (=> b!4310897 m!4903747))

(assert (=> b!4310897 m!4903747))

(declare-fun m!4903847 () Bool)

(assert (=> b!4310897 m!4903847))

(assert (=> b!4310823 d!1268148))

(declare-fun bs!605098 () Bool)

(declare-fun b!4310921 () Bool)

(assert (= bs!605098 (and b!4310921 d!1268136)))

(declare-fun lambda!132961 () Int)

(assert (=> bs!605098 (not (= lambda!132961 lambda!132951))))

(declare-fun bs!605099 () Bool)

(assert (= bs!605099 (and b!4310921 b!4310896)))

(assert (=> bs!605099 (= lambda!132961 lambda!132958)))

(declare-fun bm!298008 () Bool)

(declare-fun call!298015 () (_ BitVec 64))

(assert (=> bm!298008 (= call!298015 (hash!1018 (hashF!6715 thiss!42308) key!2048))))

(declare-fun bm!298009 () Bool)

(declare-fun call!298017 () Bool)

(declare-fun c!732937 () Bool)

(declare-fun lt!1531332 () ListLongMap!1025)

(declare-fun call!298014 () ListLongMap!1025)

(assert (=> bm!298009 (= call!298017 (contains!10189 (ite c!732937 lt!1531332 call!298014) call!298015))))

(declare-fun bm!298011 () Bool)

(assert (=> bm!298011 (= call!298014 (map!10204 (v!42376 (underlying!9572 thiss!42308))))))

(declare-fun b!4310920 () Bool)

(assert (=> b!4310920 false))

(declare-fun lt!1531331 () Unit!67341)

(declare-fun lt!1531320 () Unit!67341)

(assert (=> b!4310920 (= lt!1531331 lt!1531320)))

(declare-fun lt!1531318 () List!48335)

(declare-fun lt!1531328 () (_ BitVec 64))

(declare-fun lt!1531330 () List!48334)

(declare-fun contains!10191 (List!48335 tuple2!46684) Bool)

(assert (=> b!4310920 (contains!10191 lt!1531318 (tuple2!46685 lt!1531328 lt!1531330))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!147 (List!48335 (_ BitVec 64) List!48334) Unit!67341)

(assert (=> b!4310920 (= lt!1531320 (lemmaGetValueByKeyImpliesContainsTuple!147 lt!1531318 lt!1531328 lt!1531330))))

(assert (=> b!4310920 (= lt!1531330 (apply!11025 (v!42376 (underlying!9572 thiss!42308)) lt!1531328))))

(assert (=> b!4310920 (= lt!1531318 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308)))))))

(declare-fun lt!1531329 () Unit!67341)

(declare-fun lt!1531319 () Unit!67341)

(assert (=> b!4310920 (= lt!1531329 lt!1531319)))

(declare-fun lt!1531335 () List!48335)

(declare-fun isDefined!7537 (Option!10235) Bool)

(assert (=> b!4310920 (isDefined!7537 (getValueByKey!258 lt!1531335 lt!1531328))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!178 (List!48335 (_ BitVec 64)) Unit!67341)

(assert (=> b!4310920 (= lt!1531319 (lemmaContainsKeyImpliesGetValueByKeyDefined!178 lt!1531335 lt!1531328))))

(assert (=> b!4310920 (= lt!1531335 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308)))))))

(declare-fun lt!1531325 () Unit!67341)

(declare-fun lt!1531323 () Unit!67341)

(assert (=> b!4310920 (= lt!1531325 lt!1531323)))

(declare-fun lt!1531333 () List!48335)

(declare-fun containsKey!319 (List!48335 (_ BitVec 64)) Bool)

(assert (=> b!4310920 (containsKey!319 lt!1531333 lt!1531328)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!137 (List!48335 (_ BitVec 64)) Unit!67341)

(assert (=> b!4310920 (= lt!1531323 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!137 lt!1531333 lt!1531328))))

(assert (=> b!4310920 (= lt!1531333 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308)))))))

(declare-fun e!2681116 () Unit!67341)

(declare-fun Unit!67343 () Unit!67341)

(assert (=> b!4310920 (= e!2681116 Unit!67343)))

(declare-fun e!2681115 () Unit!67341)

(declare-fun forallContained!1503 (List!48335 Int tuple2!46684) Unit!67341)

(assert (=> b!4310921 (= e!2681115 (forallContained!1503 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308)))) lambda!132961 (tuple2!46685 lt!1531328 (apply!11025 (v!42376 (underlying!9572 thiss!42308)) lt!1531328))))))

(declare-fun c!732939 () Bool)

(assert (=> b!4310921 (= c!732939 (not (contains!10191 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308)))) (tuple2!46685 lt!1531328 (apply!11025 (v!42376 (underlying!9572 thiss!42308)) lt!1531328)))))))

(declare-fun lt!1531336 () Unit!67341)

(assert (=> b!4310921 (= lt!1531336 e!2681116)))

(declare-fun b!4310922 () Bool)

(declare-fun e!2681118 () Unit!67341)

(declare-fun Unit!67344 () Unit!67341)

(assert (=> b!4310922 (= e!2681118 Unit!67344)))

(declare-fun e!2681117 () Bool)

(declare-fun b!4310923 () Bool)

(declare-datatypes ((Option!10236 0))(
  ( (None!10235) (Some!10235 (v!42382 tuple2!46682)) )
))
(declare-fun isDefined!7538 (Option!10236) Bool)

(declare-fun getPair!136 (List!48334 K!9424) Option!10236)

(assert (=> b!4310923 (= e!2681117 (isDefined!7538 (getPair!136 (apply!11025 (v!42376 (underlying!9572 thiss!42308)) lt!1531328) key!2048)))))

(declare-fun b!4310924 () Bool)

(declare-fun e!2681114 () Unit!67341)

(declare-fun lt!1531324 () Unit!67341)

(assert (=> b!4310924 (= e!2681114 lt!1531324)))

(assert (=> b!4310924 (= lt!1531332 call!298014)))

(declare-fun lemmaInGenericMapThenInLongMap!136 (ListLongMap!1025 K!9424 Hashable!4587) Unit!67341)

(assert (=> b!4310924 (= lt!1531324 (lemmaInGenericMapThenInLongMap!136 lt!1531332 key!2048 (hashF!6715 thiss!42308)))))

(declare-fun res!1766747 () Bool)

(assert (=> b!4310924 (= res!1766747 call!298017)))

(declare-fun e!2681113 () Bool)

(assert (=> b!4310924 (=> (not res!1766747) (not e!2681113))))

(assert (=> b!4310924 e!2681113))

(declare-fun b!4310925 () Bool)

(assert (=> b!4310925 false))

(declare-fun lt!1531334 () Unit!67341)

(declare-fun lt!1531327 () Unit!67341)

(assert (=> b!4310925 (= lt!1531334 lt!1531327)))

(declare-fun lt!1531326 () ListLongMap!1025)

(declare-fun contains!10192 (ListMap!1695 K!9424) Bool)

(declare-fun extractMap!331 (List!48335) ListMap!1695)

(assert (=> b!4310925 (contains!10192 (extractMap!331 (toList!2413 lt!1531326)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!136 (ListLongMap!1025 K!9424 Hashable!4587) Unit!67341)

(assert (=> b!4310925 (= lt!1531327 (lemmaInLongMapThenInGenericMap!136 lt!1531326 key!2048 (hashF!6715 thiss!42308)))))

(assert (=> b!4310925 (= lt!1531326 call!298014)))

(declare-fun Unit!67345 () Unit!67341)

(assert (=> b!4310925 (= e!2681118 Unit!67345)))

(declare-fun b!4310926 () Bool)

(assert (=> b!4310926 (= e!2681114 e!2681118)))

(declare-fun res!1766749 () Bool)

(assert (=> b!4310926 (= res!1766749 call!298017)))

(declare-fun e!2681119 () Bool)

(assert (=> b!4310926 (=> (not res!1766749) (not e!2681119))))

(declare-fun c!732938 () Bool)

(assert (=> b!4310926 (= c!732938 e!2681119)))

(declare-fun bm!298010 () Bool)

(declare-fun call!298013 () Option!10236)

(declare-fun call!298016 () List!48334)

(assert (=> bm!298010 (= call!298013 (getPair!136 call!298016 key!2048))))

(declare-fun d!1268150 () Bool)

(declare-fun lt!1531337 () Bool)

(assert (=> d!1268150 (= lt!1531337 (contains!10192 (map!10205 thiss!42308) key!2048))))

(assert (=> d!1268150 (= lt!1531337 e!2681117)))

(declare-fun res!1766748 () Bool)

(assert (=> d!1268150 (=> (not res!1766748) (not e!2681117))))

(assert (=> d!1268150 (= res!1766748 (contains!10190 (v!42376 (underlying!9572 thiss!42308)) lt!1531328))))

(declare-fun lt!1531322 () Unit!67341)

(assert (=> d!1268150 (= lt!1531322 e!2681114)))

(assert (=> d!1268150 (= c!732937 (contains!10192 (extractMap!331 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308))))) key!2048))))

(declare-fun lt!1531321 () Unit!67341)

(assert (=> d!1268150 (= lt!1531321 e!2681115)))

(declare-fun c!732936 () Bool)

(assert (=> d!1268150 (= c!732936 (contains!10190 (v!42376 (underlying!9572 thiss!42308)) lt!1531328))))

(assert (=> d!1268150 (= lt!1531328 (hash!1018 (hashF!6715 thiss!42308) key!2048))))

(assert (=> d!1268150 (valid!3660 thiss!42308)))

(assert (=> d!1268150 (= (contains!10188 thiss!42308 key!2048) lt!1531337)))

(declare-fun b!4310927 () Bool)

(declare-fun Unit!67346 () Unit!67341)

(assert (=> b!4310927 (= e!2681116 Unit!67346)))

(declare-fun b!4310928 () Bool)

(declare-fun Unit!67347 () Unit!67341)

(assert (=> b!4310928 (= e!2681115 Unit!67347)))

(declare-fun bm!298012 () Bool)

(declare-fun call!298018 () Bool)

(assert (=> bm!298012 (= call!298018 (isDefined!7538 call!298013))))

(declare-fun b!4310929 () Bool)

(assert (=> b!4310929 (= e!2681119 call!298018)))

(declare-fun b!4310930 () Bool)

(assert (=> b!4310930 (= e!2681113 call!298018)))

(declare-fun bm!298013 () Bool)

(declare-fun apply!11027 (ListLongMap!1025 (_ BitVec 64)) List!48334)

(assert (=> bm!298013 (= call!298016 (apply!11027 (ite c!732937 lt!1531332 call!298014) call!298015))))

(assert (= (and d!1268150 c!732936) b!4310921))

(assert (= (and d!1268150 (not c!732936)) b!4310928))

(assert (= (and b!4310921 c!732939) b!4310920))

(assert (= (and b!4310921 (not c!732939)) b!4310927))

(assert (= (and d!1268150 c!732937) b!4310924))

(assert (= (and d!1268150 (not c!732937)) b!4310926))

(assert (= (and b!4310924 res!1766747) b!4310930))

(assert (= (and b!4310926 res!1766749) b!4310929))

(assert (= (and b!4310926 c!732938) b!4310925))

(assert (= (and b!4310926 (not c!732938)) b!4310922))

(assert (= (or b!4310924 b!4310930 b!4310926 b!4310929) bm!298008))

(assert (= (or b!4310924 b!4310926 b!4310929 b!4310925) bm!298011))

(assert (= (or b!4310924 b!4310926) bm!298009))

(assert (= (or b!4310930 b!4310929) bm!298013))

(assert (= (or b!4310930 b!4310929) bm!298010))

(assert (= (or b!4310930 b!4310929) bm!298012))

(assert (= (and d!1268150 res!1766748) b!4310923))

(declare-fun m!4903849 () Bool)

(assert (=> b!4310924 m!4903849))

(assert (=> d!1268150 m!4903747))

(assert (=> d!1268150 m!4903759))

(declare-fun m!4903851 () Bool)

(assert (=> d!1268150 m!4903851))

(assert (=> d!1268150 m!4903749))

(declare-fun m!4903853 () Bool)

(assert (=> d!1268150 m!4903853))

(assert (=> d!1268150 m!4903749))

(declare-fun m!4903855 () Bool)

(assert (=> d!1268150 m!4903855))

(declare-fun m!4903857 () Bool)

(assert (=> d!1268150 m!4903857))

(assert (=> d!1268150 m!4903855))

(assert (=> d!1268150 m!4903761))

(declare-fun m!4903859 () Bool)

(assert (=> bm!298009 m!4903859))

(declare-fun m!4903861 () Bool)

(assert (=> bm!298013 m!4903861))

(assert (=> b!4310921 m!4903747))

(declare-fun m!4903863 () Bool)

(assert (=> b!4310921 m!4903863))

(declare-fun m!4903865 () Bool)

(assert (=> b!4310921 m!4903865))

(declare-fun m!4903867 () Bool)

(assert (=> b!4310921 m!4903867))

(declare-fun m!4903869 () Bool)

(assert (=> bm!298010 m!4903869))

(assert (=> bm!298008 m!4903759))

(declare-fun m!4903871 () Bool)

(assert (=> b!4310925 m!4903871))

(assert (=> b!4310925 m!4903871))

(declare-fun m!4903873 () Bool)

(assert (=> b!4310925 m!4903873))

(declare-fun m!4903875 () Bool)

(assert (=> b!4310925 m!4903875))

(assert (=> b!4310920 m!4903747))

(declare-fun m!4903877 () Bool)

(assert (=> b!4310920 m!4903877))

(declare-fun m!4903879 () Bool)

(assert (=> b!4310920 m!4903879))

(declare-fun m!4903881 () Bool)

(assert (=> b!4310920 m!4903881))

(declare-fun m!4903883 () Bool)

(assert (=> b!4310920 m!4903883))

(assert (=> b!4310920 m!4903863))

(declare-fun m!4903885 () Bool)

(assert (=> b!4310920 m!4903885))

(assert (=> b!4310920 m!4903877))

(declare-fun m!4903887 () Bool)

(assert (=> b!4310920 m!4903887))

(declare-fun m!4903889 () Bool)

(assert (=> b!4310920 m!4903889))

(declare-fun m!4903891 () Bool)

(assert (=> bm!298012 m!4903891))

(assert (=> b!4310923 m!4903863))

(assert (=> b!4310923 m!4903863))

(declare-fun m!4903893 () Bool)

(assert (=> b!4310923 m!4903893))

(assert (=> b!4310923 m!4903893))

(declare-fun m!4903895 () Bool)

(assert (=> b!4310923 m!4903895))

(assert (=> bm!298011 m!4903747))

(assert (=> b!4310818 d!1268150))

(declare-fun d!1268152 () Bool)

(declare-fun map!10206 (LongMapFixedSize!9342) ListLongMap!1025)

(assert (=> d!1268152 (= (map!10204 (v!42376 (underlying!9572 thiss!42308))) (map!10206 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308))))))))

(declare-fun bs!605100 () Bool)

(assert (= bs!605100 d!1268152))

(declare-fun m!4903897 () Bool)

(assert (=> bs!605100 m!4903897))

(assert (=> b!4310818 d!1268152))

(declare-fun d!1268154 () Bool)

(declare-fun lt!1531340 () ListMap!1695)

(declare-fun invariantList!575 (List!48334) Bool)

(assert (=> d!1268154 (invariantList!575 (toList!2414 lt!1531340))))

(assert (=> d!1268154 (= lt!1531340 (extractMap!331 (toList!2413 (map!10204 (v!42376 (underlying!9572 thiss!42308))))))))

(assert (=> d!1268154 (valid!3660 thiss!42308)))

(assert (=> d!1268154 (= (map!10205 thiss!42308) lt!1531340)))

(declare-fun bs!605101 () Bool)

(assert (= bs!605101 d!1268154))

(declare-fun m!4903899 () Bool)

(assert (=> bs!605101 m!4903899))

(assert (=> bs!605101 m!4903747))

(assert (=> bs!605101 m!4903855))

(assert (=> bs!605101 m!4903761))

(assert (=> b!4310818 d!1268154))

(declare-fun e!2681122 () Bool)

(declare-fun tp!1324758 () Bool)

(declare-fun b!4310935 () Bool)

(assert (=> b!4310935 (= e!2681122 (and tp_is_empty!23789 tp_is_empty!23791 tp!1324758))))

(assert (=> b!4310817 (= tp!1324754 e!2681122)))

(assert (= (and b!4310817 ((_ is Cons!48210) (zeroValue!4930 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308))))))) b!4310935))

(declare-fun b!4310936 () Bool)

(declare-fun tp!1324759 () Bool)

(declare-fun e!2681123 () Bool)

(assert (=> b!4310936 (= e!2681123 (and tp_is_empty!23789 tp_is_empty!23791 tp!1324759))))

(assert (=> b!4310817 (= tp!1324753 e!2681123)))

(assert (= (and b!4310817 ((_ is Cons!48210) (minValue!4930 (v!42375 (underlying!9571 (v!42376 (underlying!9572 thiss!42308))))))) b!4310936))

(declare-fun mapIsEmpty!20858 () Bool)

(declare-fun mapRes!20858 () Bool)

(assert (=> mapIsEmpty!20858 mapRes!20858))

(declare-fun condMapEmpty!20858 () Bool)

(declare-fun mapDefault!20858 () List!48334)

(assert (=> mapNonEmpty!20855 (= condMapEmpty!20858 (= mapRest!20855 ((as const (Array (_ BitVec 32) List!48334)) mapDefault!20858)))))

(declare-fun e!2681129 () Bool)

(assert (=> mapNonEmpty!20855 (= tp!1324752 (and e!2681129 mapRes!20858))))

(declare-fun b!4310944 () Bool)

(declare-fun tp!1324768 () Bool)

(assert (=> b!4310944 (= e!2681129 (and tp_is_empty!23789 tp_is_empty!23791 tp!1324768))))

(declare-fun tp!1324767 () Bool)

(declare-fun b!4310943 () Bool)

(declare-fun e!2681128 () Bool)

(assert (=> b!4310943 (= e!2681128 (and tp_is_empty!23789 tp_is_empty!23791 tp!1324767))))

(declare-fun mapNonEmpty!20858 () Bool)

(declare-fun tp!1324766 () Bool)

(assert (=> mapNonEmpty!20858 (= mapRes!20858 (and tp!1324766 e!2681128))))

(declare-fun mapValue!20858 () List!48334)

(declare-fun mapKey!20858 () (_ BitVec 32))

(declare-fun mapRest!20858 () (Array (_ BitVec 32) List!48334))

(assert (=> mapNonEmpty!20858 (= mapRest!20855 (store mapRest!20858 mapKey!20858 mapValue!20858))))

(assert (= (and mapNonEmpty!20855 condMapEmpty!20858) mapIsEmpty!20858))

(assert (= (and mapNonEmpty!20855 (not condMapEmpty!20858)) mapNonEmpty!20858))

(assert (= (and mapNonEmpty!20858 ((_ is Cons!48210) mapValue!20858)) b!4310943))

(assert (= (and mapNonEmpty!20855 ((_ is Cons!48210) mapDefault!20858)) b!4310944))

(declare-fun m!4903901 () Bool)

(assert (=> mapNonEmpty!20858 m!4903901))

(declare-fun tp!1324769 () Bool)

(declare-fun e!2681130 () Bool)

(declare-fun b!4310945 () Bool)

(assert (=> b!4310945 (= e!2681130 (and tp_is_empty!23789 tp_is_empty!23791 tp!1324769))))

(assert (=> mapNonEmpty!20855 (= tp!1324749 e!2681130)))

(assert (= (and mapNonEmpty!20855 ((_ is Cons!48210) mapValue!20855)) b!4310945))

(declare-fun e!2681131 () Bool)

(declare-fun tp!1324770 () Bool)

(declare-fun b!4310946 () Bool)

(assert (=> b!4310946 (= e!2681131 (and tp_is_empty!23789 tp_is_empty!23791 tp!1324770))))

(assert (=> b!4310816 (= tp!1324755 e!2681131)))

(assert (= (and b!4310816 ((_ is Cons!48210) mapDefault!20855)) b!4310946))

(declare-fun b_lambda!126645 () Bool)

(assert (= b_lambda!126643 (or (and b!4310817 b_free!128643) b_lambda!126645)))

(check-sat (not b!4310923) (not bm!298013) (not b!4310924) (not b!4310897) tp_is_empty!23791 (not b!4310946) (not d!1268148) b_and!340081 (not b!4310848) (not d!1268154) (not d!1268146) (not b!4310845) (not b_lambda!126645) (not d!1268124) (not b!4310935) (not b!4310882) (not b!4310887) (not b_next!129347) (not tb!257299) (not b!4310920) (not mapNonEmpty!20858) tp_is_empty!23789 (not b!4310849) (not bm!298012) (not d!1268144) (not d!1268126) (not d!1268130) (not b!4310877) (not b!4310925) (not b!4310945) (not b!4310921) (not bm!298008) (not d!1268142) (not d!1268128) (not b!4310846) (not b!4310850) (not b!4310944) (not bm!297995) (not bm!297994) (not bm!298009) (not b!4310886) (not b!4310864) (not b!4310936) (not b!4310870) (not d!1268150) b_and!340079 (not bm!298011) (not d!1268140) (not d!1268152) (not bm!298010) (not b!4310896) (not b_next!129349) (not b!4310883) (not b!4310943) (not d!1268136))
(check-sat b_and!340081 b_and!340079 (not b_next!129349) (not b_next!129347))

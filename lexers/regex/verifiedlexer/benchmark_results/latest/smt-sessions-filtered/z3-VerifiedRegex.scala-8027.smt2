; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415438 () Bool)

(assert start!415438)

(declare-fun b!4317931 () Bool)

(declare-fun b_free!128899 () Bool)

(declare-fun b_next!129603 () Bool)

(assert (=> b!4317931 (= b_free!128899 (not b_next!129603))))

(declare-fun tp!1326436 () Bool)

(declare-fun b_and!340405 () Bool)

(assert (=> b!4317931 (= tp!1326436 b_and!340405)))

(declare-fun b!4317930 () Bool)

(declare-fun b_free!128901 () Bool)

(declare-fun b_next!129605 () Bool)

(assert (=> b!4317930 (= b_free!128901 (not b_next!129605))))

(declare-fun tp!1326438 () Bool)

(declare-fun b_and!340407 () Bool)

(assert (=> b!4317930 (= tp!1326438 b_and!340407)))

(declare-fun e!2686216 () Bool)

(declare-fun e!2686218 () Bool)

(assert (=> b!4317930 (= e!2686216 (and e!2686218 tp!1326438))))

(declare-fun e!2686214 () Bool)

(declare-fun e!2686212 () Bool)

(declare-fun tp!1326439 () Bool)

(declare-datatypes ((V!9786 0))(
  ( (V!9787 (val!15925 Int)) )
))
(declare-datatypes ((K!9584 0))(
  ( (K!9585 (val!15926 Int)) )
))
(declare-datatypes ((tuple2!47068 0))(
  ( (tuple2!47069 (_1!26818 K!9584) (_2!26818 V!9786)) )
))
(declare-datatypes ((List!48464 0))(
  ( (Nil!48340) (Cons!48340 (h!53794 tuple2!47068) (t!355325 List!48464)) )
))
(declare-datatypes ((array!17148 0))(
  ( (array!17149 (arr!7655 (Array (_ BitVec 32) (_ BitVec 64))) (size!35694 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4651 0))(
  ( (HashableExt!4650 (__x!30230 Int)) )
))
(declare-datatypes ((array!17150 0))(
  ( (array!17151 (arr!7656 (Array (_ BitVec 32) List!48464)) (size!35695 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9470 0))(
  ( (LongMapFixedSize!9471 (defaultEntry!5120 Int) (mask!13331 (_ BitVec 32)) (extraKeys!4984 (_ BitVec 32)) (zeroValue!4994 List!48464) (minValue!4994 List!48464) (_size!9513 (_ BitVec 32)) (_keys!5035 array!17148) (_values!5016 array!17150) (_vacant!4796 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18749 0))(
  ( (Cell!18750 (v!42661 LongMapFixedSize!9470)) )
))
(declare-datatypes ((MutLongMap!4735 0))(
  ( (LongMap!4735 (underlying!9699 Cell!18749)) (MutLongMapExt!4734 (__x!30231 Int)) )
))
(declare-datatypes ((Cell!18751 0))(
  ( (Cell!18752 (v!42662 MutLongMap!4735)) )
))
(declare-datatypes ((MutableMap!4641 0))(
  ( (MutableMapExt!4640 (__x!30232 Int)) (HashMap!4641 (underlying!9700 Cell!18751) (hashF!6866 Hashable!4651) (_size!9514 (_ BitVec 32)) (defaultValue!4812 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4641)

(declare-fun tp!1326437 () Bool)

(declare-fun array_inv!5507 (array!17148) Bool)

(declare-fun array_inv!5508 (array!17150) Bool)

(assert (=> b!4317931 (= e!2686214 (and tp!1326436 tp!1326439 tp!1326437 (array_inv!5507 (_keys!5035 (v!42661 (underlying!9699 (v!42662 (underlying!9700 thiss!42308)))))) (array_inv!5508 (_values!5016 (v!42661 (underlying!9699 (v!42662 (underlying!9700 thiss!42308)))))) e!2686212))))

(declare-fun b!4317932 () Bool)

(declare-fun res!1769690 () Bool)

(declare-fun e!2686221 () Bool)

(assert (=> b!4317932 (=> (not res!1769690) (not e!2686221))))

(declare-fun valid!3741 (MutableMap!4641) Bool)

(assert (=> b!4317932 (= res!1769690 (valid!3741 thiss!42308))))

(declare-fun b!4317933 () Bool)

(declare-fun e!2686217 () Bool)

(assert (=> b!4317933 (= e!2686217 false)))

(declare-datatypes ((Unit!67601 0))(
  ( (Unit!67602) )
))
(declare-fun lt!1536840 () Unit!67601)

(declare-fun e!2686210 () Unit!67601)

(assert (=> b!4317933 (= lt!1536840 e!2686210)))

(declare-fun c!734141 () Bool)

(declare-fun lt!1536839 () List!48464)

(declare-fun isEmpty!28100 (List!48464) Bool)

(assert (=> b!4317933 (= c!734141 (not (isEmpty!28100 lt!1536839)))))

(declare-fun mapIsEmpty!21111 () Bool)

(declare-fun mapRes!21111 () Bool)

(assert (=> mapIsEmpty!21111 mapRes!21111))

(declare-fun b!4317934 () Bool)

(declare-fun e!2686215 () List!48464)

(assert (=> b!4317934 (= e!2686215 Nil!48340)))

(declare-fun b!4317935 () Bool)

(declare-fun Unit!67603 () Unit!67601)

(assert (=> b!4317935 (= e!2686210 Unit!67603)))

(declare-fun b!4317936 () Bool)

(declare-fun e!2686213 () Bool)

(assert (=> b!4317936 (= e!2686213 e!2686214)))

(declare-fun b!4317937 () Bool)

(declare-fun lt!1536842 () (_ BitVec 64))

(declare-fun apply!11113 (MutLongMap!4735 (_ BitVec 64)) List!48464)

(assert (=> b!4317937 (= e!2686215 (apply!11113 (v!42662 (underlying!9700 thiss!42308)) lt!1536842))))

(declare-fun b!4317938 () Bool)

(declare-fun e!2686211 () Bool)

(assert (=> b!4317938 (= e!2686211 e!2686213)))

(declare-fun b!4317939 () Bool)

(declare-fun e!2686219 () Bool)

(assert (=> b!4317939 (= e!2686221 e!2686219)))

(declare-fun res!1769688 () Bool)

(assert (=> b!4317939 (=> (not res!1769688) (not e!2686219))))

(declare-fun key!2048 () K!9584)

(declare-fun contains!10367 (MutableMap!4641 K!9584) Bool)

(assert (=> b!4317939 (= res!1769688 (not (contains!10367 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47070 0))(
  ( (tuple2!47071 (_1!26819 (_ BitVec 64)) (_2!26819 List!48464)) )
))
(declare-datatypes ((List!48465 0))(
  ( (Nil!48341) (Cons!48341 (h!53795 tuple2!47070) (t!355326 List!48465)) )
))
(declare-datatypes ((ListLongMap!1137 0))(
  ( (ListLongMap!1138 (toList!2522 List!48465)) )
))
(declare-fun lt!1536837 () ListLongMap!1137)

(declare-fun map!10359 (MutLongMap!4735) ListLongMap!1137)

(assert (=> b!4317939 (= lt!1536837 (map!10359 (v!42662 (underlying!9700 thiss!42308))))))

(declare-datatypes ((ListMap!1801 0))(
  ( (ListMap!1802 (toList!2523 List!48464)) )
))
(declare-fun lt!1536843 () ListMap!1801)

(declare-fun map!10360 (MutableMap!4641) ListMap!1801)

(assert (=> b!4317939 (= lt!1536843 (map!10360 thiss!42308))))

(declare-fun b!4317940 () Bool)

(declare-fun lt!1536836 () MutLongMap!4735)

(get-info :version)

(assert (=> b!4317940 (= e!2686218 (and e!2686211 ((_ is LongMap!4735) lt!1536836)))))

(assert (=> b!4317940 (= lt!1536836 (v!42662 (underlying!9700 thiss!42308)))))

(declare-fun b!4317941 () Bool)

(declare-fun lt!1536838 () Unit!67601)

(assert (=> b!4317941 (= e!2686210 lt!1536838)))

(declare-fun lt!1536841 () Unit!67601)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!214 (List!48465 (_ BitVec 64) List!48464 Hashable!4651) Unit!67601)

(assert (=> b!4317941 (= lt!1536841 (lemmaInLongMapAllKeySameHashThenForTuple!214 (toList!2522 lt!1536837) lt!1536842 lt!1536839 (hashF!6866 thiss!42308)))))

(declare-fun allKeysSameHash!229 (List!48464 (_ BitVec 64) Hashable!4651) Bool)

(assert (=> b!4317941 (allKeysSameHash!229 lt!1536839 lt!1536842 (hashF!6866 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!205 (List!48464 K!9584 (_ BitVec 64) Hashable!4651) Unit!67601)

(assert (=> b!4317941 (= lt!1536838 (lemmaRemovePairForKeyPreservesHash!205 lt!1536839 key!2048 lt!1536842 (hashF!6866 thiss!42308)))))

(declare-fun removePairForKey!252 (List!48464 K!9584) List!48464)

(assert (=> b!4317941 (allKeysSameHash!229 (removePairForKey!252 lt!1536839 key!2048) lt!1536842 (hashF!6866 thiss!42308))))

(declare-fun b!4317942 () Bool)

(assert (=> b!4317942 (= e!2686219 e!2686217)))

(declare-fun res!1769687 () Bool)

(assert (=> b!4317942 (=> (not res!1769687) (not e!2686217))))

(declare-fun v!9179 () V!9786)

(declare-datatypes ((tuple2!47072 0))(
  ( (tuple2!47073 (_1!26820 Bool) (_2!26820 MutLongMap!4735)) )
))
(declare-fun update!509 (MutLongMap!4735 (_ BitVec 64) List!48464) tuple2!47072)

(assert (=> b!4317942 (= res!1769687 (_1!26820 (update!509 (v!42662 (underlying!9700 thiss!42308)) lt!1536842 (Cons!48340 (tuple2!47069 key!2048 v!9179) lt!1536839))))))

(assert (=> b!4317942 (= lt!1536839 e!2686215)))

(declare-fun c!734142 () Bool)

(declare-fun contains!10368 (MutLongMap!4735 (_ BitVec 64)) Bool)

(assert (=> b!4317942 (= c!734142 (contains!10368 (v!42662 (underlying!9700 thiss!42308)) lt!1536842))))

(declare-fun hash!1137 (Hashable!4651 K!9584) (_ BitVec 64))

(assert (=> b!4317942 (= lt!1536842 (hash!1137 (hashF!6866 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!21111 () Bool)

(declare-fun tp!1326434 () Bool)

(declare-fun tp!1326433 () Bool)

(assert (=> mapNonEmpty!21111 (= mapRes!21111 (and tp!1326434 tp!1326433))))

(declare-fun mapRest!21111 () (Array (_ BitVec 32) List!48464))

(declare-fun mapValue!21111 () List!48464)

(declare-fun mapKey!21111 () (_ BitVec 32))

(assert (=> mapNonEmpty!21111 (= (arr!7656 (_values!5016 (v!42661 (underlying!9699 (v!42662 (underlying!9700 thiss!42308)))))) (store mapRest!21111 mapKey!21111 mapValue!21111))))

(declare-fun res!1769689 () Bool)

(assert (=> start!415438 (=> (not res!1769689) (not e!2686221))))

(assert (=> start!415438 (= res!1769689 ((_ is HashMap!4641) thiss!42308))))

(assert (=> start!415438 e!2686221))

(assert (=> start!415438 e!2686216))

(declare-fun tp_is_empty!24037 () Bool)

(assert (=> start!415438 tp_is_empty!24037))

(declare-fun tp_is_empty!24039 () Bool)

(assert (=> start!415438 tp_is_empty!24039))

(declare-fun b!4317943 () Bool)

(declare-fun tp!1326435 () Bool)

(assert (=> b!4317943 (= e!2686212 (and tp!1326435 mapRes!21111))))

(declare-fun condMapEmpty!21111 () Bool)

(declare-fun mapDefault!21111 () List!48464)

(assert (=> b!4317943 (= condMapEmpty!21111 (= (arr!7656 (_values!5016 (v!42661 (underlying!9699 (v!42662 (underlying!9700 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48464)) mapDefault!21111)))))

(assert (= (and start!415438 res!1769689) b!4317932))

(assert (= (and b!4317932 res!1769690) b!4317939))

(assert (= (and b!4317939 res!1769688) b!4317942))

(assert (= (and b!4317942 c!734142) b!4317937))

(assert (= (and b!4317942 (not c!734142)) b!4317934))

(assert (= (and b!4317942 res!1769687) b!4317933))

(assert (= (and b!4317933 c!734141) b!4317941))

(assert (= (and b!4317933 (not c!734141)) b!4317935))

(assert (= (and b!4317943 condMapEmpty!21111) mapIsEmpty!21111))

(assert (= (and b!4317943 (not condMapEmpty!21111)) mapNonEmpty!21111))

(assert (= b!4317931 b!4317943))

(assert (= b!4317936 b!4317931))

(assert (= b!4317938 b!4317936))

(assert (= (and b!4317940 ((_ is LongMap!4735) (v!42662 (underlying!9700 thiss!42308)))) b!4317938))

(assert (= b!4317930 b!4317940))

(assert (= (and start!415438 ((_ is HashMap!4641) thiss!42308)) b!4317930))

(declare-fun m!4911561 () Bool)

(assert (=> b!4317932 m!4911561))

(declare-fun m!4911563 () Bool)

(assert (=> b!4317942 m!4911563))

(declare-fun m!4911565 () Bool)

(assert (=> b!4317942 m!4911565))

(declare-fun m!4911567 () Bool)

(assert (=> b!4317942 m!4911567))

(declare-fun m!4911569 () Bool)

(assert (=> b!4317939 m!4911569))

(declare-fun m!4911571 () Bool)

(assert (=> b!4317939 m!4911571))

(declare-fun m!4911573 () Bool)

(assert (=> b!4317939 m!4911573))

(declare-fun m!4911575 () Bool)

(assert (=> b!4317931 m!4911575))

(declare-fun m!4911577 () Bool)

(assert (=> b!4317931 m!4911577))

(declare-fun m!4911579 () Bool)

(assert (=> mapNonEmpty!21111 m!4911579))

(declare-fun m!4911581 () Bool)

(assert (=> b!4317937 m!4911581))

(declare-fun m!4911583 () Bool)

(assert (=> b!4317933 m!4911583))

(declare-fun m!4911585 () Bool)

(assert (=> b!4317941 m!4911585))

(declare-fun m!4911587 () Bool)

(assert (=> b!4317941 m!4911587))

(declare-fun m!4911589 () Bool)

(assert (=> b!4317941 m!4911589))

(declare-fun m!4911591 () Bool)

(assert (=> b!4317941 m!4911591))

(assert (=> b!4317941 m!4911587))

(declare-fun m!4911593 () Bool)

(assert (=> b!4317941 m!4911593))

(check-sat (not b!4317933) (not b_next!129605) (not mapNonEmpty!21111) (not b!4317941) tp_is_empty!24039 b_and!340405 (not b!4317943) (not b!4317931) (not b!4317939) (not b!4317937) (not b!4317942) (not b!4317932) b_and!340407 tp_is_empty!24037 (not b_next!129603))
(check-sat b_and!340405 b_and!340407 (not b_next!129605) (not b_next!129603))

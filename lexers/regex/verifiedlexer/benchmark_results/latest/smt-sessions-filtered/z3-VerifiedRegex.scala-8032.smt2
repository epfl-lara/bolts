; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415820 () Bool)

(assert start!415820)

(declare-fun b!4320608 () Bool)

(declare-fun b_free!128939 () Bool)

(declare-fun b_next!129643 () Bool)

(assert (=> b!4320608 (= b_free!128939 (not b_next!129643))))

(declare-fun tp!1326741 () Bool)

(declare-fun b_and!340477 () Bool)

(assert (=> b!4320608 (= tp!1326741 b_and!340477)))

(declare-fun b!4320611 () Bool)

(declare-fun b_free!128941 () Bool)

(declare-fun b_next!129645 () Bool)

(assert (=> b!4320611 (= b_free!128941 (not b_next!129645))))

(declare-fun tp!1326738 () Bool)

(declare-fun b_and!340479 () Bool)

(assert (=> b!4320611 (= tp!1326738 b_and!340479)))

(declare-fun b!4320600 () Bool)

(declare-fun e!2687985 () Bool)

(declare-fun e!2687980 () Bool)

(assert (=> b!4320600 (= e!2687985 e!2687980)))

(declare-fun mapIsEmpty!21156 () Bool)

(declare-fun mapRes!21156 () Bool)

(assert (=> mapIsEmpty!21156 mapRes!21156))

(declare-fun b!4320602 () Bool)

(declare-fun e!2687974 () Bool)

(declare-fun tp!1326737 () Bool)

(assert (=> b!4320602 (= e!2687974 (and tp!1326737 mapRes!21156))))

(declare-fun condMapEmpty!21156 () Bool)

(declare-datatypes ((V!9811 0))(
  ( (V!9812 (val!15945 Int)) )
))
(declare-datatypes ((K!9609 0))(
  ( (K!9610 (val!15946 Int)) )
))
(declare-datatypes ((tuple2!47138 0))(
  ( (tuple2!47139 (_1!26855 K!9609) (_2!26855 V!9811)) )
))
(declare-datatypes ((List!48487 0))(
  ( (Nil!48363) (Cons!48363 (h!53821 tuple2!47138) (t!355362 List!48487)) )
))
(declare-datatypes ((array!17196 0))(
  ( (array!17197 (arr!7675 (Array (_ BitVec 32) (_ BitVec 64))) (size!35714 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4661 0))(
  ( (HashableExt!4660 (__x!30260 Int)) )
))
(declare-datatypes ((array!17198 0))(
  ( (array!17199 (arr!7676 (Array (_ BitVec 32) List!48487)) (size!35715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9490 0))(
  ( (LongMapFixedSize!9491 (defaultEntry!5140 Int) (mask!13363 (_ BitVec 32)) (extraKeys!5002 (_ BitVec 32)) (zeroValue!5013 List!48487) (minValue!5013 List!48487) (_size!9534 (_ BitVec 32)) (_keys!5058 array!17196) (_values!5036 array!17198) (_vacant!4807 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18789 0))(
  ( (Cell!18790 (v!42724 LongMapFixedSize!9490)) )
))
(declare-datatypes ((MutLongMap!4745 0))(
  ( (LongMap!4745 (underlying!9719 Cell!18789)) (MutLongMapExt!4744 (__x!30261 Int)) )
))
(declare-datatypes ((Cell!18791 0))(
  ( (Cell!18792 (v!42725 MutLongMap!4745)) )
))
(declare-datatypes ((MutableMap!4651 0))(
  ( (MutableMapExt!4650 (__x!30262 Int)) (HashMap!4651 (underlying!9720 Cell!18791) (hashF!6901 Hashable!4661) (_size!9535 (_ BitVec 32)) (defaultValue!4822 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4651)

(declare-fun mapDefault!21156 () List!48487)

(assert (=> b!4320602 (= condMapEmpty!21156 (= (arr!7676 (_values!5036 (v!42724 (underlying!9719 (v!42725 (underlying!9720 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48487)) mapDefault!21156)))))

(declare-fun b!4320603 () Bool)

(declare-fun e!2687979 () Bool)

(declare-fun lt!1538824 () MutLongMap!4745)

(get-info :version)

(assert (=> b!4320603 (= e!2687979 (and e!2687985 ((_ is LongMap!4745) lt!1538824)))))

(assert (=> b!4320603 (= lt!1538824 (v!42725 (underlying!9720 thiss!42308)))))

(declare-fun mapNonEmpty!21156 () Bool)

(declare-fun tp!1326739 () Bool)

(declare-fun tp!1326736 () Bool)

(assert (=> mapNonEmpty!21156 (= mapRes!21156 (and tp!1326739 tp!1326736))))

(declare-fun mapValue!21156 () List!48487)

(declare-fun mapRest!21156 () (Array (_ BitVec 32) List!48487))

(declare-fun mapKey!21156 () (_ BitVec 32))

(assert (=> mapNonEmpty!21156 (= (arr!7676 (_values!5036 (v!42724 (underlying!9719 (v!42725 (underlying!9720 thiss!42308)))))) (store mapRest!21156 mapKey!21156 mapValue!21156))))

(declare-fun b!4320604 () Bool)

(declare-fun e!2687982 () List!48487)

(assert (=> b!4320604 (= e!2687982 Nil!48363)))

(declare-fun b!4320605 () Bool)

(declare-fun lt!1538832 () (_ BitVec 64))

(declare-fun apply!11129 (MutLongMap!4745 (_ BitVec 64)) List!48487)

(assert (=> b!4320605 (= e!2687982 (apply!11129 (v!42725 (underlying!9720 thiss!42308)) lt!1538832))))

(declare-fun b!4320606 () Bool)

(declare-fun e!2687973 () Bool)

(declare-fun e!2687983 () Bool)

(assert (=> b!4320606 (= e!2687973 e!2687983)))

(declare-fun res!1770715 () Bool)

(assert (=> b!4320606 (=> (not res!1770715) (not e!2687983))))

(declare-fun lt!1538825 () List!48487)

(declare-datatypes ((tuple2!47140 0))(
  ( (tuple2!47141 (_1!26856 Bool) (_2!26856 MutLongMap!4745)) )
))
(declare-fun update!521 (MutLongMap!4745 (_ BitVec 64) List!48487) tuple2!47140)

(assert (=> b!4320606 (= res!1770715 (_1!26856 (update!521 (v!42725 (underlying!9720 thiss!42308)) lt!1538832 lt!1538825)))))

(declare-fun lt!1538834 () List!48487)

(declare-fun v!9179 () V!9811)

(declare-fun key!2048 () K!9609)

(assert (=> b!4320606 (= lt!1538825 (Cons!48363 (tuple2!47139 key!2048 v!9179) lt!1538834))))

(assert (=> b!4320606 (= lt!1538834 e!2687982)))

(declare-fun c!734812 () Bool)

(declare-fun contains!10403 (MutLongMap!4745 (_ BitVec 64)) Bool)

(assert (=> b!4320606 (= c!734812 (contains!10403 (v!42725 (underlying!9720 thiss!42308)) lt!1538832))))

(declare-fun hash!1161 (Hashable!4661 K!9609) (_ BitVec 64))

(assert (=> b!4320606 (= lt!1538832 (hash!1161 (hashF!6901 thiss!42308) key!2048))))

(declare-fun b!4320607 () Bool)

(declare-datatypes ((Unit!67735 0))(
  ( (Unit!67736) )
))
(declare-fun e!2687978 () Unit!67735)

(declare-fun lt!1538833 () Unit!67735)

(assert (=> b!4320607 (= e!2687978 lt!1538833)))

(declare-fun lt!1538831 () Unit!67735)

(declare-datatypes ((tuple2!47142 0))(
  ( (tuple2!47143 (_1!26857 (_ BitVec 64)) (_2!26857 List!48487)) )
))
(declare-datatypes ((List!48488 0))(
  ( (Nil!48364) (Cons!48364 (h!53822 tuple2!47142) (t!355363 List!48488)) )
))
(declare-datatypes ((ListLongMap!1157 0))(
  ( (ListLongMap!1158 (toList!2540 List!48488)) )
))
(declare-fun lt!1538826 () ListLongMap!1157)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!222 (List!48488 (_ BitVec 64) List!48487 Hashable!4661) Unit!67735)

(assert (=> b!4320607 (= lt!1538831 (lemmaInLongMapAllKeySameHashThenForTuple!222 (toList!2540 lt!1538826) lt!1538832 lt!1538834 (hashF!6901 thiss!42308)))))

(declare-fun allKeysSameHash!237 (List!48487 (_ BitVec 64) Hashable!4661) Bool)

(assert (=> b!4320607 (allKeysSameHash!237 lt!1538834 lt!1538832 (hashF!6901 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!213 (List!48487 K!9609 (_ BitVec 64) Hashable!4661) Unit!67735)

(assert (=> b!4320607 (= lt!1538833 (lemmaRemovePairForKeyPreservesHash!213 lt!1538834 key!2048 lt!1538832 (hashF!6901 thiss!42308)))))

(declare-fun removePairForKey!260 (List!48487 K!9609) List!48487)

(assert (=> b!4320607 (allKeysSameHash!237 (removePairForKey!260 lt!1538834 key!2048) lt!1538832 (hashF!6901 thiss!42308))))

(declare-fun tp!1326742 () Bool)

(declare-fun tp!1326740 () Bool)

(declare-fun e!2687984 () Bool)

(declare-fun array_inv!5521 (array!17196) Bool)

(declare-fun array_inv!5522 (array!17198) Bool)

(assert (=> b!4320608 (= e!2687984 (and tp!1326741 tp!1326742 tp!1326740 (array_inv!5521 (_keys!5058 (v!42724 (underlying!9719 (v!42725 (underlying!9720 thiss!42308)))))) (array_inv!5522 (_values!5036 (v!42724 (underlying!9719 (v!42725 (underlying!9720 thiss!42308)))))) e!2687974))))

(declare-fun b!4320609 () Bool)

(declare-fun res!1770714 () Bool)

(declare-fun e!2687976 () Bool)

(assert (=> b!4320609 (=> (not res!1770714) (not e!2687976))))

(declare-fun valid!3755 (MutableMap!4651) Bool)

(assert (=> b!4320609 (= res!1770714 (valid!3755 thiss!42308))))

(declare-fun b!4320610 () Bool)

(assert (=> b!4320610 (= e!2687976 e!2687973)))

(declare-fun res!1770718 () Bool)

(assert (=> b!4320610 (=> (not res!1770718) (not e!2687973))))

(declare-fun contains!10404 (MutableMap!4651 K!9609) Bool)

(assert (=> b!4320610 (= res!1770718 (not (contains!10404 thiss!42308 key!2048)))))

(declare-fun map!10385 (MutLongMap!4745) ListLongMap!1157)

(assert (=> b!4320610 (= lt!1538826 (map!10385 (v!42725 (underlying!9720 thiss!42308))))))

(declare-datatypes ((ListMap!1817 0))(
  ( (ListMap!1818 (toList!2541 List!48487)) )
))
(declare-fun lt!1538827 () ListMap!1817)

(declare-fun map!10386 (MutableMap!4651) ListMap!1817)

(assert (=> b!4320610 (= lt!1538827 (map!10386 thiss!42308))))

(declare-fun e!2687977 () Bool)

(assert (=> b!4320611 (= e!2687977 (and e!2687979 tp!1326738))))

(declare-fun b!4320612 () Bool)

(assert (=> b!4320612 (= e!2687983 (not true))))

(declare-fun e!2687975 () Bool)

(assert (=> b!4320612 e!2687975))

(declare-fun res!1770717 () Bool)

(assert (=> b!4320612 (=> (not res!1770717) (not e!2687975))))

(declare-fun lt!1538830 () ListLongMap!1157)

(declare-fun lambda!133751 () Int)

(declare-fun forall!8803 (List!48488 Int) Bool)

(assert (=> b!4320612 (= res!1770717 (forall!8803 (toList!2540 lt!1538830) lambda!133751))))

(declare-fun +!324 (ListLongMap!1157 tuple2!47142) ListLongMap!1157)

(assert (=> b!4320612 (= lt!1538830 (+!324 lt!1538826 (tuple2!47143 lt!1538832 lt!1538825)))))

(declare-fun lt!1538828 () Unit!67735)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!174 (ListLongMap!1157 (_ BitVec 64) List!48487 Hashable!4661) Unit!67735)

(assert (=> b!4320612 (= lt!1538828 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!174 lt!1538826 lt!1538832 lt!1538825 (hashF!6901 thiss!42308)))))

(declare-fun lt!1538829 () Unit!67735)

(assert (=> b!4320612 (= lt!1538829 e!2687978)))

(declare-fun c!734813 () Bool)

(declare-fun isEmpty!28112 (List!48487) Bool)

(assert (=> b!4320612 (= c!734813 (not (isEmpty!28112 lt!1538834)))))

(declare-fun b!4320601 () Bool)

(declare-fun allKeysSameHashInMap!383 (ListLongMap!1157 Hashable!4661) Bool)

(assert (=> b!4320601 (= e!2687975 (allKeysSameHashInMap!383 lt!1538830 (hashF!6901 thiss!42308)))))

(declare-fun res!1770716 () Bool)

(assert (=> start!415820 (=> (not res!1770716) (not e!2687976))))

(assert (=> start!415820 (= res!1770716 ((_ is HashMap!4651) thiss!42308))))

(assert (=> start!415820 e!2687976))

(assert (=> start!415820 e!2687977))

(declare-fun tp_is_empty!24077 () Bool)

(assert (=> start!415820 tp_is_empty!24077))

(declare-fun tp_is_empty!24079 () Bool)

(assert (=> start!415820 tp_is_empty!24079))

(declare-fun b!4320613 () Bool)

(declare-fun Unit!67737 () Unit!67735)

(assert (=> b!4320613 (= e!2687978 Unit!67737)))

(declare-fun b!4320614 () Bool)

(assert (=> b!4320614 (= e!2687980 e!2687984)))

(assert (= (and start!415820 res!1770716) b!4320609))

(assert (= (and b!4320609 res!1770714) b!4320610))

(assert (= (and b!4320610 res!1770718) b!4320606))

(assert (= (and b!4320606 c!734812) b!4320605))

(assert (= (and b!4320606 (not c!734812)) b!4320604))

(assert (= (and b!4320606 res!1770715) b!4320612))

(assert (= (and b!4320612 c!734813) b!4320607))

(assert (= (and b!4320612 (not c!734813)) b!4320613))

(assert (= (and b!4320612 res!1770717) b!4320601))

(assert (= (and b!4320602 condMapEmpty!21156) mapIsEmpty!21156))

(assert (= (and b!4320602 (not condMapEmpty!21156)) mapNonEmpty!21156))

(assert (= b!4320608 b!4320602))

(assert (= b!4320614 b!4320608))

(assert (= b!4320600 b!4320614))

(assert (= (and b!4320603 ((_ is LongMap!4745) (v!42725 (underlying!9720 thiss!42308)))) b!4320600))

(assert (= b!4320611 b!4320603))

(assert (= (and start!415820 ((_ is HashMap!4651) thiss!42308)) b!4320611))

(declare-fun m!4914563 () Bool)

(assert (=> b!4320608 m!4914563))

(declare-fun m!4914565 () Bool)

(assert (=> b!4320608 m!4914565))

(declare-fun m!4914567 () Bool)

(assert (=> b!4320610 m!4914567))

(declare-fun m!4914569 () Bool)

(assert (=> b!4320610 m!4914569))

(declare-fun m!4914571 () Bool)

(assert (=> b!4320610 m!4914571))

(declare-fun m!4914573 () Bool)

(assert (=> b!4320609 m!4914573))

(declare-fun m!4914575 () Bool)

(assert (=> b!4320607 m!4914575))

(declare-fun m!4914577 () Bool)

(assert (=> b!4320607 m!4914577))

(declare-fun m!4914579 () Bool)

(assert (=> b!4320607 m!4914579))

(declare-fun m!4914581 () Bool)

(assert (=> b!4320607 m!4914581))

(declare-fun m!4914583 () Bool)

(assert (=> b!4320607 m!4914583))

(assert (=> b!4320607 m!4914575))

(declare-fun m!4914585 () Bool)

(assert (=> mapNonEmpty!21156 m!4914585))

(declare-fun m!4914587 () Bool)

(assert (=> b!4320605 m!4914587))

(declare-fun m!4914589 () Bool)

(assert (=> b!4320601 m!4914589))

(declare-fun m!4914591 () Bool)

(assert (=> b!4320606 m!4914591))

(declare-fun m!4914593 () Bool)

(assert (=> b!4320606 m!4914593))

(declare-fun m!4914595 () Bool)

(assert (=> b!4320606 m!4914595))

(declare-fun m!4914597 () Bool)

(assert (=> b!4320612 m!4914597))

(declare-fun m!4914599 () Bool)

(assert (=> b!4320612 m!4914599))

(declare-fun m!4914601 () Bool)

(assert (=> b!4320612 m!4914601))

(declare-fun m!4914603 () Bool)

(assert (=> b!4320612 m!4914603))

(check-sat (not b_next!129645) (not b!4320602) (not b!4320610) b_and!340477 (not mapNonEmpty!21156) (not b_next!129643) (not b!4320609) (not b!4320601) b_and!340479 (not b!4320605) tp_is_empty!24079 (not b!4320607) (not b!4320612) (not b!4320608) tp_is_empty!24077 (not b!4320606))
(check-sat b_and!340477 b_and!340479 (not b_next!129645) (not b_next!129643))

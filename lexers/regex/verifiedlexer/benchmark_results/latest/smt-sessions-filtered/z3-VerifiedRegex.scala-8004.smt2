; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414632 () Bool)

(assert start!414632)

(declare-fun b!4312698 () Bool)

(declare-fun b_free!128715 () Bool)

(declare-fun b_next!129419 () Bool)

(assert (=> b!4312698 (= b_free!128715 (not b_next!129419))))

(declare-fun tp!1325229 () Bool)

(declare-fun b_and!340169 () Bool)

(assert (=> b!4312698 (= tp!1325229 b_and!340169)))

(declare-fun b!4312709 () Bool)

(declare-fun b_free!128717 () Bool)

(declare-fun b_next!129421 () Bool)

(assert (=> b!4312709 (= b_free!128717 (not b_next!129421))))

(declare-fun tp!1325232 () Bool)

(declare-fun b_and!340171 () Bool)

(assert (=> b!4312709 (= tp!1325232 b_and!340171)))

(declare-fun b!4312696 () Bool)

(declare-fun e!2682458 () Bool)

(declare-fun e!2682455 () Bool)

(assert (=> b!4312696 (= e!2682458 e!2682455)))

(declare-fun b!4312697 () Bool)

(declare-fun e!2682449 () Bool)

(declare-fun e!2682457 () Bool)

(declare-datatypes ((V!9671 0))(
  ( (V!9672 (val!15833 Int)) )
))
(declare-datatypes ((K!9469 0))(
  ( (K!9470 (val!15834 Int)) )
))
(declare-datatypes ((tuple2!46796 0))(
  ( (tuple2!46797 (_1!26679 K!9469) (_2!26679 V!9671)) )
))
(declare-datatypes ((List!48371 0))(
  ( (Nil!48247) (Cons!48247 (h!53691 tuple2!46796) (t!355198 List!48371)) )
))
(declare-datatypes ((array!16936 0))(
  ( (array!16937 (arr!7563 (Array (_ BitVec 32) (_ BitVec 64))) (size!35602 (_ BitVec 32))) )
))
(declare-datatypes ((array!16938 0))(
  ( (array!16939 (arr!7564 (Array (_ BitVec 32) List!48371)) (size!35603 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9378 0))(
  ( (LongMapFixedSize!9379 (defaultEntry!5074 Int) (mask!13262 (_ BitVec 32)) (extraKeys!4938 (_ BitVec 32)) (zeroValue!4948 List!48371) (minValue!4948 List!48371) (_size!9421 (_ BitVec 32)) (_keys!4989 array!16936) (_values!4970 array!16938) (_vacant!4750 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18565 0))(
  ( (Cell!18566 (v!42454 LongMapFixedSize!9378)) )
))
(declare-datatypes ((MutLongMap!4689 0))(
  ( (LongMap!4689 (underlying!9607 Cell!18565)) (MutLongMapExt!4688 (__x!30092 Int)) )
))
(declare-fun lt!1532669 () MutLongMap!4689)

(get-info :version)

(assert (=> b!4312697 (= e!2682449 (and e!2682457 ((_ is LongMap!4689) lt!1532669)))))

(declare-datatypes ((Hashable!4605 0))(
  ( (HashableExt!4604 (__x!30093 Int)) )
))
(declare-datatypes ((Cell!18567 0))(
  ( (Cell!18568 (v!42455 MutLongMap!4689)) )
))
(declare-datatypes ((MutableMap!4595 0))(
  ( (MutableMapExt!4594 (__x!30094 Int)) (HashMap!4595 (underlying!9608 Cell!18567) (hashF!6761 Hashable!4605) (_size!9422 (_ BitVec 32)) (defaultValue!4766 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4595)

(assert (=> b!4312697 (= lt!1532669 (v!42455 (underlying!9608 thiss!42308)))))

(declare-fun e!2682453 () Bool)

(declare-fun tp!1325231 () Bool)

(declare-fun tp!1325228 () Bool)

(declare-fun array_inv!5433 (array!16936) Bool)

(declare-fun array_inv!5434 (array!16938) Bool)

(assert (=> b!4312698 (= e!2682455 (and tp!1325229 tp!1325231 tp!1325228 (array_inv!5433 (_keys!4989 (v!42454 (underlying!9607 (v!42455 (underlying!9608 thiss!42308)))))) (array_inv!5434 (_values!4970 (v!42454 (underlying!9607 (v!42455 (underlying!9608 thiss!42308)))))) e!2682453))))

(declare-fun b!4312699 () Bool)

(declare-fun res!1767536 () Bool)

(declare-fun e!2682452 () Bool)

(assert (=> b!4312699 (=> (not res!1767536) (not e!2682452))))

(declare-fun valid!3683 (MutableMap!4595) Bool)

(assert (=> b!4312699 (= res!1767536 (valid!3683 thiss!42308))))

(declare-fun b!4312700 () Bool)

(declare-fun e!2682448 () Bool)

(assert (=> b!4312700 (= e!2682452 e!2682448)))

(declare-fun res!1767535 () Bool)

(assert (=> b!4312700 (=> (not res!1767535) (not e!2682448))))

(declare-fun key!2048 () K!9469)

(declare-fun contains!10232 (MutableMap!4595 K!9469) Bool)

(assert (=> b!4312700 (= res!1767535 (contains!10232 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46798 0))(
  ( (tuple2!46799 (_1!26680 (_ BitVec 64)) (_2!26680 List!48371)) )
))
(declare-datatypes ((List!48372 0))(
  ( (Nil!48248) (Cons!48248 (h!53692 tuple2!46798) (t!355199 List!48372)) )
))
(declare-datatypes ((ListLongMap!1061 0))(
  ( (ListLongMap!1062 (toList!2448 List!48372)) )
))
(declare-fun lt!1532664 () ListLongMap!1061)

(declare-fun map!10253 (MutLongMap!4689) ListLongMap!1061)

(assert (=> b!4312700 (= lt!1532664 (map!10253 (v!42455 (underlying!9608 thiss!42308))))))

(declare-datatypes ((ListMap!1729 0))(
  ( (ListMap!1730 (toList!2449 List!48371)) )
))
(declare-fun lt!1532671 () ListMap!1729)

(declare-fun map!10254 (MutableMap!4595) ListMap!1729)

(assert (=> b!4312700 (= lt!1532671 (map!10254 thiss!42308))))

(declare-fun mapIsEmpty!20928 () Bool)

(declare-fun mapRes!20928 () Bool)

(assert (=> mapIsEmpty!20928 mapRes!20928))

(declare-fun b!4312701 () Bool)

(declare-fun e!2682456 () Bool)

(declare-fun lt!1532663 () ListLongMap!1061)

(declare-fun allKeysSameHashInMap!351 (ListLongMap!1061 Hashable!4605) Bool)

(assert (=> b!4312701 (= e!2682456 (allKeysSameHashInMap!351 lt!1532663 (hashF!6761 thiss!42308)))))

(declare-fun b!4312702 () Bool)

(declare-fun e!2682450 () Bool)

(declare-fun lt!1532674 () List!48371)

(declare-fun noDuplicateKeys!231 (List!48371) Bool)

(assert (=> b!4312702 (= e!2682450 (noDuplicateKeys!231 lt!1532674))))

(declare-fun mapNonEmpty!20928 () Bool)

(declare-fun tp!1325227 () Bool)

(declare-fun tp!1325233 () Bool)

(assert (=> mapNonEmpty!20928 (= mapRes!20928 (and tp!1325227 tp!1325233))))

(declare-fun mapValue!20928 () List!48371)

(declare-fun mapRest!20928 () (Array (_ BitVec 32) List!48371))

(declare-fun mapKey!20928 () (_ BitVec 32))

(assert (=> mapNonEmpty!20928 (= (arr!7564 (_values!4970 (v!42454 (underlying!9607 (v!42455 (underlying!9608 thiss!42308)))))) (store mapRest!20928 mapKey!20928 mapValue!20928))))

(declare-fun b!4312704 () Bool)

(declare-fun e!2682447 () Bool)

(declare-fun e!2682454 () Bool)

(assert (=> b!4312704 (= e!2682447 (not e!2682454))))

(declare-fun res!1767539 () Bool)

(assert (=> b!4312704 (=> res!1767539 e!2682454)))

(declare-fun lambda!133122 () Int)

(declare-fun forall!8754 (List!48372 Int) Bool)

(assert (=> b!4312704 (= res!1767539 (not (forall!8754 (toList!2448 lt!1532664) lambda!133122)))))

(assert (=> b!4312704 e!2682456))

(declare-fun res!1767538 () Bool)

(assert (=> b!4312704 (=> (not res!1767538) (not e!2682456))))

(assert (=> b!4312704 (= res!1767538 (forall!8754 (toList!2448 lt!1532663) lambda!133122))))

(declare-fun lt!1532672 () (_ BitVec 64))

(declare-fun +!281 (ListLongMap!1061 tuple2!46798) ListLongMap!1061)

(assert (=> b!4312704 (= lt!1532663 (+!281 lt!1532664 (tuple2!46799 lt!1532672 lt!1532674)))))

(declare-datatypes ((Unit!67407 0))(
  ( (Unit!67408) )
))
(declare-fun lt!1532670 () Unit!67407)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!153 (ListLongMap!1061 (_ BitVec 64) List!48371 Hashable!4605) Unit!67407)

(assert (=> b!4312704 (= lt!1532670 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!153 lt!1532664 lt!1532672 lt!1532674 (hashF!6761 thiss!42308)))))

(assert (=> b!4312704 e!2682450))

(declare-fun res!1767537 () Bool)

(assert (=> b!4312704 (=> (not res!1767537) (not e!2682450))))

(declare-fun lt!1532666 () List!48371)

(assert (=> b!4312704 (= res!1767537 (noDuplicateKeys!231 lt!1532666))))

(declare-fun lt!1532673 () Unit!67407)

(declare-fun lt!1532668 () List!48371)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!179 (List!48371 K!9469) Unit!67407)

(assert (=> b!4312704 (= lt!1532673 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!179 lt!1532668 key!2048))))

(declare-fun allKeysSameHash!204 (List!48371 (_ BitVec 64) Hashable!4605) Bool)

(assert (=> b!4312704 (allKeysSameHash!204 lt!1532666 lt!1532672 (hashF!6761 thiss!42308))))

(declare-fun lt!1532665 () Unit!67407)

(declare-fun lemmaRemovePairForKeyPreservesHash!184 (List!48371 K!9469 (_ BitVec 64) Hashable!4605) Unit!67407)

(assert (=> b!4312704 (= lt!1532665 (lemmaRemovePairForKeyPreservesHash!184 lt!1532668 key!2048 lt!1532672 (hashF!6761 thiss!42308)))))

(assert (=> b!4312704 (allKeysSameHash!204 lt!1532668 lt!1532672 (hashF!6761 thiss!42308))))

(declare-fun lt!1532662 () Unit!67407)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!191 (List!48372 (_ BitVec 64) List!48371 Hashable!4605) Unit!67407)

(assert (=> b!4312704 (= lt!1532662 (lemmaInLongMapAllKeySameHashThenForTuple!191 (toList!2448 lt!1532664) lt!1532672 lt!1532668 (hashF!6761 thiss!42308)))))

(declare-fun b!4312705 () Bool)

(assert (=> b!4312705 (= e!2682454 true)))

(declare-fun lt!1532667 () Bool)

(assert (=> b!4312705 (= lt!1532667 (allKeysSameHashInMap!351 lt!1532664 (hashF!6761 thiss!42308)))))

(declare-fun b!4312706 () Bool)

(assert (=> b!4312706 (= e!2682457 e!2682458)))

(declare-fun b!4312707 () Bool)

(declare-fun tp!1325230 () Bool)

(assert (=> b!4312707 (= e!2682453 (and tp!1325230 mapRes!20928))))

(declare-fun condMapEmpty!20928 () Bool)

(declare-fun mapDefault!20928 () List!48371)

(assert (=> b!4312707 (= condMapEmpty!20928 (= (arr!7564 (_values!4970 (v!42454 (underlying!9607 (v!42455 (underlying!9608 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48371)) mapDefault!20928)))))

(declare-fun b!4312708 () Bool)

(declare-fun res!1767541 () Bool)

(assert (=> b!4312708 (=> (not res!1767541) (not e!2682450))))

(declare-fun containsKey!338 (List!48371 K!9469) Bool)

(assert (=> b!4312708 (= res!1767541 (not (containsKey!338 lt!1532666 key!2048)))))

(declare-fun e!2682459 () Bool)

(assert (=> b!4312709 (= e!2682459 (and e!2682449 tp!1325232))))

(declare-fun res!1767540 () Bool)

(assert (=> start!414632 (=> (not res!1767540) (not e!2682452))))

(assert (=> start!414632 (= res!1767540 ((_ is HashMap!4595) thiss!42308))))

(assert (=> start!414632 e!2682452))

(assert (=> start!414632 e!2682459))

(declare-fun tp_is_empty!23861 () Bool)

(assert (=> start!414632 tp_is_empty!23861))

(declare-fun tp_is_empty!23863 () Bool)

(assert (=> start!414632 tp_is_empty!23863))

(declare-fun b!4312703 () Bool)

(assert (=> b!4312703 (= e!2682448 e!2682447)))

(declare-fun res!1767534 () Bool)

(assert (=> b!4312703 (=> (not res!1767534) (not e!2682447))))

(declare-datatypes ((tuple2!46800 0))(
  ( (tuple2!46801 (_1!26681 Bool) (_2!26681 MutLongMap!4689)) )
))
(declare-fun update!463 (MutLongMap!4689 (_ BitVec 64) List!48371) tuple2!46800)

(assert (=> b!4312703 (= res!1767534 (_1!26681 (update!463 (v!42455 (underlying!9608 thiss!42308)) lt!1532672 lt!1532674)))))

(declare-fun v!9179 () V!9671)

(assert (=> b!4312703 (= lt!1532674 (Cons!48247 (tuple2!46797 key!2048 v!9179) lt!1532666))))

(declare-fun removePairForKey!230 (List!48371 K!9469) List!48371)

(assert (=> b!4312703 (= lt!1532666 (removePairForKey!230 lt!1532668 key!2048))))

(declare-fun apply!11051 (MutLongMap!4689 (_ BitVec 64)) List!48371)

(assert (=> b!4312703 (= lt!1532668 (apply!11051 (v!42455 (underlying!9608 thiss!42308)) lt!1532672))))

(declare-fun hash!1054 (Hashable!4605 K!9469) (_ BitVec 64))

(assert (=> b!4312703 (= lt!1532672 (hash!1054 (hashF!6761 thiss!42308) key!2048))))

(assert (= (and start!414632 res!1767540) b!4312699))

(assert (= (and b!4312699 res!1767536) b!4312700))

(assert (= (and b!4312700 res!1767535) b!4312703))

(assert (= (and b!4312703 res!1767534) b!4312704))

(assert (= (and b!4312704 res!1767537) b!4312708))

(assert (= (and b!4312708 res!1767541) b!4312702))

(assert (= (and b!4312704 res!1767538) b!4312701))

(assert (= (and b!4312704 (not res!1767539)) b!4312705))

(assert (= (and b!4312707 condMapEmpty!20928) mapIsEmpty!20928))

(assert (= (and b!4312707 (not condMapEmpty!20928)) mapNonEmpty!20928))

(assert (= b!4312698 b!4312707))

(assert (= b!4312696 b!4312698))

(assert (= b!4312706 b!4312696))

(assert (= (and b!4312697 ((_ is LongMap!4689) (v!42455 (underlying!9608 thiss!42308)))) b!4312706))

(assert (= b!4312709 b!4312697))

(assert (= (and start!414632 ((_ is HashMap!4595) thiss!42308)) b!4312709))

(declare-fun m!4905743 () Bool)

(assert (=> b!4312702 m!4905743))

(declare-fun m!4905745 () Bool)

(assert (=> b!4312705 m!4905745))

(declare-fun m!4905747 () Bool)

(assert (=> b!4312698 m!4905747))

(declare-fun m!4905749 () Bool)

(assert (=> b!4312698 m!4905749))

(declare-fun m!4905751 () Bool)

(assert (=> b!4312708 m!4905751))

(declare-fun m!4905753 () Bool)

(assert (=> b!4312699 m!4905753))

(declare-fun m!4905755 () Bool)

(assert (=> b!4312703 m!4905755))

(declare-fun m!4905757 () Bool)

(assert (=> b!4312703 m!4905757))

(declare-fun m!4905759 () Bool)

(assert (=> b!4312703 m!4905759))

(declare-fun m!4905761 () Bool)

(assert (=> b!4312703 m!4905761))

(declare-fun m!4905763 () Bool)

(assert (=> b!4312700 m!4905763))

(declare-fun m!4905765 () Bool)

(assert (=> b!4312700 m!4905765))

(declare-fun m!4905767 () Bool)

(assert (=> b!4312700 m!4905767))

(declare-fun m!4905769 () Bool)

(assert (=> b!4312701 m!4905769))

(declare-fun m!4905771 () Bool)

(assert (=> b!4312704 m!4905771))

(declare-fun m!4905773 () Bool)

(assert (=> b!4312704 m!4905773))

(declare-fun m!4905775 () Bool)

(assert (=> b!4312704 m!4905775))

(declare-fun m!4905777 () Bool)

(assert (=> b!4312704 m!4905777))

(declare-fun m!4905779 () Bool)

(assert (=> b!4312704 m!4905779))

(declare-fun m!4905781 () Bool)

(assert (=> b!4312704 m!4905781))

(declare-fun m!4905783 () Bool)

(assert (=> b!4312704 m!4905783))

(declare-fun m!4905785 () Bool)

(assert (=> b!4312704 m!4905785))

(declare-fun m!4905787 () Bool)

(assert (=> b!4312704 m!4905787))

(declare-fun m!4905789 () Bool)

(assert (=> b!4312704 m!4905789))

(declare-fun m!4905791 () Bool)

(assert (=> mapNonEmpty!20928 m!4905791))

(check-sat b_and!340169 (not b!4312707) (not b!4312702) b_and!340171 (not b_next!129419) (not b!4312701) (not b!4312704) (not b_next!129421) (not b!4312708) (not b!4312698) (not b!4312699) (not mapNonEmpty!20928) (not b!4312705) (not b!4312700) tp_is_empty!23863 tp_is_empty!23861 (not b!4312703))
(check-sat b_and!340169 b_and!340171 (not b_next!129421) (not b_next!129419))

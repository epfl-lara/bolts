; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242612 () Bool)

(assert start!242612)

(declare-fun b!2484626 () Bool)

(declare-fun b_free!72465 () Bool)

(declare-fun b_next!73169 () Bool)

(assert (=> b!2484626 (= b_free!72465 (not b_next!73169))))

(declare-fun tp!795439 () Bool)

(declare-fun b_and!188737 () Bool)

(assert (=> b!2484626 (= tp!795439 b_and!188737)))

(declare-fun b!2484621 () Bool)

(declare-fun b_free!72467 () Bool)

(declare-fun b_next!73171 () Bool)

(assert (=> b!2484621 (= b_free!72467 (not b_next!73171))))

(declare-fun tp!795438 () Bool)

(declare-fun b_and!188739 () Bool)

(assert (=> b!2484621 (= tp!795438 b_and!188739)))

(declare-fun mapIsEmpty!15702 () Bool)

(declare-fun mapRes!15702 () Bool)

(assert (=> mapIsEmpty!15702 mapRes!15702))

(declare-fun e!1577508 () Bool)

(declare-fun e!1577513 () Bool)

(assert (=> b!2484621 (= e!1577508 (and e!1577513 tp!795438))))

(declare-fun b!2484622 () Bool)

(declare-fun res!1051645 () Bool)

(declare-fun e!1577506 () Bool)

(assert (=> b!2484622 (=> (not res!1051645) (not e!1577506))))

(declare-datatypes ((Hashable!3312 0))(
  ( (HashableExt!3311 (__x!19112 Int)) )
))
(declare-datatypes ((K!5590 0))(
  ( (K!5591 (val!8947 Int)) )
))
(declare-datatypes ((V!5792 0))(
  ( (V!5793 (val!8948 Int)) )
))
(declare-datatypes ((tuple2!29070 0))(
  ( (tuple2!29071 (_1!17077 K!5590) (_2!17077 V!5792)) )
))
(declare-datatypes ((List!29278 0))(
  ( (Nil!29178) (Cons!29178 (h!34589 tuple2!29070) (t!210955 List!29278)) )
))
(declare-datatypes ((array!12089 0))(
  ( (array!12090 (arr!5394 (Array (_ BitVec 32) List!29278)) (size!22813 (_ BitVec 32))) )
))
(declare-datatypes ((array!12091 0))(
  ( (array!12092 (arr!5395 (Array (_ BitVec 32) (_ BitVec 64))) (size!22814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6804 0))(
  ( (LongMapFixedSize!6805 (defaultEntry!3776 Int) (mask!8592 (_ BitVec 32)) (extraKeys!3650 (_ BitVec 32)) (zeroValue!3660 List!29278) (minValue!3660 List!29278) (_size!6851 (_ BitVec 32)) (_keys!3699 array!12091) (_values!3682 array!12089) (_vacant!3463 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13425 0))(
  ( (Cell!13426 (v!31584 LongMapFixedSize!6804)) )
))
(declare-datatypes ((MutLongMap!3402 0))(
  ( (LongMap!3402 (underlying!7011 Cell!13425)) (MutLongMapExt!3401 (__x!19113 Int)) )
))
(declare-datatypes ((Cell!13427 0))(
  ( (Cell!13428 (v!31585 MutLongMap!3402)) )
))
(declare-datatypes ((MutableMap!3312 0))(
  ( (MutableMapExt!3311 (__x!19114 Int)) (HashMap!3312 (underlying!7012 Cell!13427) (hashF!5293 Hashable!3312) (_size!6852 (_ BitVec 32)) (defaultValue!3474 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3312)

(declare-fun key!2246 () K!5590)

(declare-fun contains!5176 (MutableMap!3312 K!5590) Bool)

(assert (=> b!2484622 (= res!1051645 (contains!5176 thiss!42540 key!2246))))

(declare-fun b!2484623 () Bool)

(declare-fun e!1577510 () Bool)

(declare-fun lt!890772 () MutLongMap!3402)

(get-info :version)

(assert (=> b!2484623 (= e!1577513 (and e!1577510 ((_ is LongMap!3402) lt!890772)))))

(assert (=> b!2484623 (= lt!890772 (v!31585 (underlying!7012 thiss!42540)))))

(declare-fun mapNonEmpty!15702 () Bool)

(declare-fun tp!795440 () Bool)

(declare-fun tp!795437 () Bool)

(assert (=> mapNonEmpty!15702 (= mapRes!15702 (and tp!795440 tp!795437))))

(declare-fun mapKey!15702 () (_ BitVec 32))

(declare-fun mapRest!15702 () (Array (_ BitVec 32) List!29278))

(declare-fun mapValue!15702 () List!29278)

(assert (=> mapNonEmpty!15702 (= (arr!5394 (_values!3682 (v!31584 (underlying!7011 (v!31585 (underlying!7012 thiss!42540)))))) (store mapRest!15702 mapKey!15702 mapValue!15702))))

(declare-fun res!1051647 () Bool)

(assert (=> start!242612 (=> (not res!1051647) (not e!1577506))))

(assert (=> start!242612 (= res!1051647 ((_ is HashMap!3312) thiss!42540))))

(assert (=> start!242612 e!1577506))

(assert (=> start!242612 e!1577508))

(declare-fun tp_is_empty!12351 () Bool)

(assert (=> start!242612 tp_is_empty!12351))

(declare-fun b!2484624 () Bool)

(declare-fun e!1577507 () Bool)

(declare-datatypes ((Unit!42773 0))(
  ( (Unit!42774) )
))
(declare-datatypes ((tuple2!29072 0))(
  ( (tuple2!29073 (_1!17078 Unit!42773) (_2!17078 MutableMap!3312)) )
))
(declare-fun lt!890763 () tuple2!29072)

(declare-fun lambda!94311 () Int)

(declare-datatypes ((tuple2!29074 0))(
  ( (tuple2!29075 (_1!17079 (_ BitVec 64)) (_2!17079 List!29278)) )
))
(declare-datatypes ((List!29279 0))(
  ( (Nil!29179) (Cons!29179 (h!34590 tuple2!29074) (t!210956 List!29279)) )
))
(declare-fun forall!5992 (List!29279 Int) Bool)

(declare-datatypes ((ListLongMap!589 0))(
  ( (ListLongMap!590 (toList!1639 List!29279)) )
))
(declare-fun map!6283 (MutLongMap!3402) ListLongMap!589)

(assert (=> b!2484624 (= e!1577507 (forall!5992 (toList!1639 (map!6283 (v!31585 (underlying!7012 (_2!17078 lt!890763))))) lambda!94311))))

(declare-fun b!2484625 () Bool)

(declare-fun e!1577512 () Bool)

(declare-fun tp!795436 () Bool)

(assert (=> b!2484625 (= e!1577512 (and tp!795436 mapRes!15702))))

(declare-fun condMapEmpty!15702 () Bool)

(declare-fun mapDefault!15702 () List!29278)

(assert (=> b!2484625 (= condMapEmpty!15702 (= (arr!5394 (_values!3682 (v!31584 (underlying!7011 (v!31585 (underlying!7012 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29278)) mapDefault!15702)))))

(declare-fun e!1577514 () Bool)

(declare-fun tp!795441 () Bool)

(declare-fun tp!795435 () Bool)

(declare-fun array_inv!3877 (array!12091) Bool)

(declare-fun array_inv!3878 (array!12089) Bool)

(assert (=> b!2484626 (= e!1577514 (and tp!795439 tp!795441 tp!795435 (array_inv!3877 (_keys!3699 (v!31584 (underlying!7011 (v!31585 (underlying!7012 thiss!42540)))))) (array_inv!3878 (_values!3682 (v!31584 (underlying!7011 (v!31585 (underlying!7012 thiss!42540)))))) e!1577512))))

(declare-fun b!2484627 () Bool)

(declare-fun e!1577509 () Bool)

(assert (=> b!2484627 (= e!1577509 e!1577514)))

(declare-fun b!2484628 () Bool)

(declare-fun e!1577515 () Bool)

(assert (=> b!2484628 (= e!1577506 (not e!1577515))))

(declare-fun res!1051648 () Bool)

(assert (=> b!2484628 (=> res!1051648 e!1577515)))

(declare-datatypes ((tuple2!29076 0))(
  ( (tuple2!29077 (_1!17080 Bool) (_2!17080 MutLongMap!3402)) )
))
(declare-fun lt!890764 () tuple2!29076)

(assert (=> b!2484628 (= res!1051648 (not (_1!17080 lt!890764)))))

(declare-fun lt!890771 () List!29278)

(declare-fun noDuplicateKeys!105 (List!29278) Bool)

(assert (=> b!2484628 (noDuplicateKeys!105 lt!890771)))

(declare-fun lt!890766 () Unit!42773)

(declare-fun lt!890775 () List!29278)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!85 (List!29278 K!5590) Unit!42773)

(assert (=> b!2484628 (= lt!890766 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!85 lt!890775 key!2246))))

(declare-fun lt!890768 () Cell!13427)

(declare-fun Unit!42775 () Unit!42773)

(declare-fun Unit!42776 () Unit!42773)

(assert (=> b!2484628 (= lt!890763 (ite (_1!17080 lt!890764) (tuple2!29073 Unit!42775 (HashMap!3312 lt!890768 (hashF!5293 thiss!42540) (bvsub (_size!6852 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3474 thiss!42540))) (tuple2!29073 Unit!42776 (HashMap!3312 lt!890768 (hashF!5293 thiss!42540) (_size!6852 thiss!42540) (defaultValue!3474 thiss!42540)))))))

(assert (=> b!2484628 (= lt!890768 (Cell!13428 (_2!17080 lt!890764)))))

(declare-fun lt!890773 () (_ BitVec 64))

(declare-fun update!220 (MutLongMap!3402 (_ BitVec 64) List!29278) tuple2!29076)

(assert (=> b!2484628 (= lt!890764 (update!220 (v!31585 (underlying!7012 thiss!42540)) lt!890773 lt!890771))))

(declare-fun removePairForKey!97 (List!29278 K!5590) List!29278)

(assert (=> b!2484628 (= lt!890771 (removePairForKey!97 lt!890775 key!2246))))

(declare-datatypes ((ListMap!1119 0))(
  ( (ListMap!1120 (toList!1640 List!29278)) )
))
(declare-fun lt!890765 () ListMap!1119)

(declare-fun map!6284 (MutableMap!3312) ListMap!1119)

(assert (=> b!2484628 (= lt!890765 (map!6284 thiss!42540))))

(declare-fun lt!890777 () ListLongMap!589)

(declare-fun lt!890767 () Unit!42773)

(declare-fun forallContained!886 (List!29279 Int tuple2!29074) Unit!42773)

(assert (=> b!2484628 (= lt!890767 (forallContained!886 (toList!1639 lt!890777) lambda!94311 (tuple2!29075 lt!890773 lt!890775)))))

(assert (=> b!2484628 (= lt!890777 (map!6283 (v!31585 (underlying!7012 thiss!42540))))))

(declare-fun apply!6964 (MutLongMap!3402 (_ BitVec 64)) List!29278)

(assert (=> b!2484628 (= lt!890775 (apply!6964 (v!31585 (underlying!7012 thiss!42540)) lt!890773))))

(declare-fun hash!735 (Hashable!3312 K!5590) (_ BitVec 64))

(assert (=> b!2484628 (= lt!890773 (hash!735 (hashF!5293 thiss!42540) key!2246))))

(declare-fun b!2484629 () Bool)

(assert (=> b!2484629 (= e!1577515 ((_ is HashMap!3312) (_2!17078 lt!890763)))))

(assert (=> b!2484629 e!1577507))

(declare-fun res!1051643 () Bool)

(assert (=> b!2484629 (=> (not res!1051643) (not e!1577507))))

(declare-fun lt!890776 () ListLongMap!589)

(assert (=> b!2484629 (= res!1051643 (forall!5992 (toList!1639 lt!890776) lambda!94311))))

(declare-fun +!96 (ListLongMap!589 tuple2!29074) ListLongMap!589)

(assert (=> b!2484629 (= lt!890776 (+!96 lt!890777 (tuple2!29075 lt!890773 lt!890771)))))

(declare-fun lt!890770 () Unit!42773)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!59 (ListLongMap!589 (_ BitVec 64) List!29278 Hashable!3312) Unit!42773)

(assert (=> b!2484629 (= lt!890770 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!59 lt!890777 lt!890773 lt!890771 (hashF!5293 (_2!17078 lt!890763))))))

(declare-fun allKeysSameHash!79 (List!29278 (_ BitVec 64) Hashable!3312) Bool)

(assert (=> b!2484629 (allKeysSameHash!79 lt!890771 lt!890773 (hashF!5293 (_2!17078 lt!890763)))))

(declare-fun lt!890774 () Unit!42773)

(declare-fun lemmaRemovePairForKeyPreservesHash!68 (List!29278 K!5590 (_ BitVec 64) Hashable!3312) Unit!42773)

(assert (=> b!2484629 (= lt!890774 (lemmaRemovePairForKeyPreservesHash!68 lt!890775 key!2246 lt!890773 (hashF!5293 (_2!17078 lt!890763))))))

(assert (=> b!2484629 (allKeysSameHash!79 lt!890775 lt!890773 (hashF!5293 (_2!17078 lt!890763)))))

(declare-fun lt!890769 () Unit!42773)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!72 (List!29279 (_ BitVec 64) List!29278 Hashable!3312) Unit!42773)

(assert (=> b!2484629 (= lt!890769 (lemmaInLongMapAllKeySameHashThenForTuple!72 (toList!1639 lt!890777) lt!890773 lt!890775 (hashF!5293 (_2!17078 lt!890763))))))

(declare-fun b!2484630 () Bool)

(assert (=> b!2484630 (= e!1577510 e!1577509)))

(declare-fun b!2484631 () Bool)

(declare-fun res!1051644 () Bool)

(assert (=> b!2484631 (=> (not res!1051644) (not e!1577507))))

(declare-fun allKeysSameHashInMap!180 (ListLongMap!589 Hashable!3312) Bool)

(assert (=> b!2484631 (= res!1051644 (allKeysSameHashInMap!180 lt!890776 (hashF!5293 (_2!17078 lt!890763))))))

(declare-fun b!2484632 () Bool)

(declare-fun res!1051646 () Bool)

(assert (=> b!2484632 (=> (not res!1051646) (not e!1577506))))

(declare-fun valid!2611 (MutableMap!3312) Bool)

(assert (=> b!2484632 (= res!1051646 (valid!2611 thiss!42540))))

(assert (= (and start!242612 res!1051647) b!2484632))

(assert (= (and b!2484632 res!1051646) b!2484622))

(assert (= (and b!2484622 res!1051645) b!2484628))

(assert (= (and b!2484628 (not res!1051648)) b!2484629))

(assert (= (and b!2484629 res!1051643) b!2484631))

(assert (= (and b!2484631 res!1051644) b!2484624))

(assert (= (and b!2484625 condMapEmpty!15702) mapIsEmpty!15702))

(assert (= (and b!2484625 (not condMapEmpty!15702)) mapNonEmpty!15702))

(assert (= b!2484626 b!2484625))

(assert (= b!2484627 b!2484626))

(assert (= b!2484630 b!2484627))

(assert (= (and b!2484623 ((_ is LongMap!3402) (v!31585 (underlying!7012 thiss!42540)))) b!2484630))

(assert (= b!2484621 b!2484623))

(assert (= (and start!242612 ((_ is HashMap!3312) thiss!42540)) b!2484621))

(declare-fun m!2852635 () Bool)

(assert (=> b!2484628 m!2852635))

(declare-fun m!2852637 () Bool)

(assert (=> b!2484628 m!2852637))

(declare-fun m!2852639 () Bool)

(assert (=> b!2484628 m!2852639))

(declare-fun m!2852641 () Bool)

(assert (=> b!2484628 m!2852641))

(declare-fun m!2852643 () Bool)

(assert (=> b!2484628 m!2852643))

(declare-fun m!2852645 () Bool)

(assert (=> b!2484628 m!2852645))

(declare-fun m!2852647 () Bool)

(assert (=> b!2484628 m!2852647))

(declare-fun m!2852649 () Bool)

(assert (=> b!2484628 m!2852649))

(declare-fun m!2852651 () Bool)

(assert (=> b!2484628 m!2852651))

(declare-fun m!2852653 () Bool)

(assert (=> b!2484632 m!2852653))

(declare-fun m!2852655 () Bool)

(assert (=> b!2484631 m!2852655))

(declare-fun m!2852657 () Bool)

(assert (=> b!2484629 m!2852657))

(declare-fun m!2852659 () Bool)

(assert (=> b!2484629 m!2852659))

(declare-fun m!2852661 () Bool)

(assert (=> b!2484629 m!2852661))

(declare-fun m!2852663 () Bool)

(assert (=> b!2484629 m!2852663))

(declare-fun m!2852665 () Bool)

(assert (=> b!2484629 m!2852665))

(declare-fun m!2852667 () Bool)

(assert (=> b!2484629 m!2852667))

(declare-fun m!2852669 () Bool)

(assert (=> b!2484629 m!2852669))

(declare-fun m!2852671 () Bool)

(assert (=> b!2484626 m!2852671))

(declare-fun m!2852673 () Bool)

(assert (=> b!2484626 m!2852673))

(declare-fun m!2852675 () Bool)

(assert (=> b!2484622 m!2852675))

(declare-fun m!2852677 () Bool)

(assert (=> mapNonEmpty!15702 m!2852677))

(declare-fun m!2852679 () Bool)

(assert (=> b!2484624 m!2852679))

(declare-fun m!2852681 () Bool)

(assert (=> b!2484624 m!2852681))

(check-sat (not b!2484628) (not mapNonEmpty!15702) (not b!2484622) (not b!2484625) (not b_next!73169) (not b!2484629) b_and!188737 (not b!2484631) (not b!2484624) (not b!2484632) b_and!188739 (not b!2484626) tp_is_empty!12351 (not b_next!73171))
(check-sat b_and!188739 b_and!188737 (not b_next!73169) (not b_next!73171))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415824 () Bool)

(assert start!415824)

(declare-fun b!4320700 () Bool)

(declare-fun b_free!128947 () Bool)

(declare-fun b_next!129651 () Bool)

(assert (=> b!4320700 (= b_free!128947 (not b_next!129651))))

(declare-fun tp!1326779 () Bool)

(declare-fun b_and!340485 () Bool)

(assert (=> b!4320700 (= tp!1326779 b_and!340485)))

(declare-fun b!4320695 () Bool)

(declare-fun b_free!128949 () Bool)

(declare-fun b_next!129653 () Bool)

(assert (=> b!4320695 (= b_free!128949 (not b_next!129653))))

(declare-fun tp!1326778 () Bool)

(declare-fun b_and!340487 () Bool)

(assert (=> b!4320695 (= tp!1326778 b_and!340487)))

(declare-fun b!4320690 () Bool)

(declare-datatypes ((Unit!67738 0))(
  ( (Unit!67739) )
))
(declare-fun e!2688057 () Unit!67738)

(declare-fun lt!1538891 () Unit!67738)

(assert (=> b!4320690 (= e!2688057 lt!1538891)))

(declare-fun lt!1538900 () Unit!67738)

(declare-fun lt!1538898 () (_ BitVec 64))

(declare-datatypes ((V!9816 0))(
  ( (V!9817 (val!15949 Int)) )
))
(declare-datatypes ((K!9614 0))(
  ( (K!9615 (val!15950 Int)) )
))
(declare-datatypes ((tuple2!47146 0))(
  ( (tuple2!47147 (_1!26859 K!9614) (_2!26859 V!9816)) )
))
(declare-datatypes ((List!48490 0))(
  ( (Nil!48366) (Cons!48366 (h!53824 tuple2!47146) (t!355365 List!48490)) )
))
(declare-datatypes ((array!17204 0))(
  ( (array!17205 (arr!7679 (Array (_ BitVec 32) (_ BitVec 64))) (size!35718 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4663 0))(
  ( (HashableExt!4662 (__x!30266 Int)) )
))
(declare-datatypes ((array!17206 0))(
  ( (array!17207 (arr!7680 (Array (_ BitVec 32) List!48490)) (size!35719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9494 0))(
  ( (LongMapFixedSize!9495 (defaultEntry!5142 Int) (mask!13366 (_ BitVec 32)) (extraKeys!5004 (_ BitVec 32)) (zeroValue!5015 List!48490) (minValue!5015 List!48490) (_size!9538 (_ BitVec 32)) (_keys!5060 array!17204) (_values!5038 array!17206) (_vacant!4809 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18797 0))(
  ( (Cell!18798 (v!42728 LongMapFixedSize!9494)) )
))
(declare-datatypes ((MutLongMap!4747 0))(
  ( (LongMap!4747 (underlying!9723 Cell!18797)) (MutLongMapExt!4746 (__x!30267 Int)) )
))
(declare-datatypes ((Cell!18799 0))(
  ( (Cell!18800 (v!42729 MutLongMap!4747)) )
))
(declare-datatypes ((MutableMap!4653 0))(
  ( (MutableMapExt!4652 (__x!30268 Int)) (HashMap!4653 (underlying!9724 Cell!18799) (hashF!6903 Hashable!4663) (_size!9539 (_ BitVec 32)) (defaultValue!4824 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4653)

(declare-fun lt!1538895 () List!48490)

(declare-datatypes ((tuple2!47148 0))(
  ( (tuple2!47149 (_1!26860 (_ BitVec 64)) (_2!26860 List!48490)) )
))
(declare-datatypes ((List!48491 0))(
  ( (Nil!48367) (Cons!48367 (h!53825 tuple2!47148) (t!355366 List!48491)) )
))
(declare-datatypes ((ListLongMap!1159 0))(
  ( (ListLongMap!1160 (toList!2542 List!48491)) )
))
(declare-fun lt!1538890 () ListLongMap!1159)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!223 (List!48491 (_ BitVec 64) List!48490 Hashable!4663) Unit!67738)

(assert (=> b!4320690 (= lt!1538900 (lemmaInLongMapAllKeySameHashThenForTuple!223 (toList!2542 lt!1538890) lt!1538898 lt!1538895 (hashF!6903 thiss!42308)))))

(declare-fun allKeysSameHash!238 (List!48490 (_ BitVec 64) Hashable!4663) Bool)

(assert (=> b!4320690 (allKeysSameHash!238 lt!1538895 lt!1538898 (hashF!6903 thiss!42308))))

(declare-fun key!2048 () K!9614)

(declare-fun lemmaRemovePairForKeyPreservesHash!214 (List!48490 K!9614 (_ BitVec 64) Hashable!4663) Unit!67738)

(assert (=> b!4320690 (= lt!1538891 (lemmaRemovePairForKeyPreservesHash!214 lt!1538895 key!2048 lt!1538898 (hashF!6903 thiss!42308)))))

(declare-fun removePairForKey!261 (List!48490 K!9614) List!48490)

(assert (=> b!4320690 (allKeysSameHash!238 (removePairForKey!261 lt!1538895 key!2048) lt!1538898 (hashF!6903 thiss!42308))))

(declare-fun b!4320691 () Bool)

(declare-fun e!2688053 () Bool)

(declare-fun lt!1538896 () ListLongMap!1159)

(declare-fun allKeysSameHashInMap!384 (ListLongMap!1159 Hashable!4663) Bool)

(assert (=> b!4320691 (= e!2688053 (allKeysSameHashInMap!384 lt!1538896 (hashF!6903 thiss!42308)))))

(declare-fun b!4320692 () Bool)

(declare-fun e!2688059 () Bool)

(declare-fun e!2688056 () Bool)

(assert (=> b!4320692 (= e!2688059 e!2688056)))

(declare-fun b!4320693 () Bool)

(declare-fun e!2688060 () List!48490)

(assert (=> b!4320693 (= e!2688060 Nil!48366)))

(declare-fun b!4320694 () Bool)

(declare-fun e!2688062 () Bool)

(declare-fun e!2688054 () Bool)

(assert (=> b!4320694 (= e!2688062 e!2688054)))

(declare-fun res!1770745 () Bool)

(assert (=> b!4320694 (=> (not res!1770745) (not e!2688054))))

(declare-fun lt!1538893 () List!48490)

(declare-datatypes ((tuple2!47150 0))(
  ( (tuple2!47151 (_1!26861 Bool) (_2!26861 MutLongMap!4747)) )
))
(declare-fun update!522 (MutLongMap!4747 (_ BitVec 64) List!48490) tuple2!47150)

(assert (=> b!4320694 (= res!1770745 (_1!26861 (update!522 (v!42729 (underlying!9724 thiss!42308)) lt!1538898 lt!1538893)))))

(declare-fun v!9179 () V!9816)

(assert (=> b!4320694 (= lt!1538893 (Cons!48366 (tuple2!47147 key!2048 v!9179) lt!1538895))))

(assert (=> b!4320694 (= lt!1538895 e!2688060)))

(declare-fun c!734825 () Bool)

(declare-fun contains!10405 (MutLongMap!4747 (_ BitVec 64)) Bool)

(assert (=> b!4320694 (= c!734825 (contains!10405 (v!42729 (underlying!9724 thiss!42308)) lt!1538898))))

(declare-fun hash!1162 (Hashable!4663 K!9614) (_ BitVec 64))

(assert (=> b!4320694 (= lt!1538898 (hash!1162 (hashF!6903 thiss!42308) key!2048))))

(declare-fun e!2688061 () Bool)

(declare-fun e!2688058 () Bool)

(assert (=> b!4320695 (= e!2688061 (and e!2688058 tp!1326778))))

(declare-fun b!4320696 () Bool)

(declare-fun Unit!67740 () Unit!67738)

(assert (=> b!4320696 (= e!2688057 Unit!67740)))

(declare-fun b!4320697 () Bool)

(declare-fun res!1770747 () Bool)

(declare-fun e!2688051 () Bool)

(assert (=> b!4320697 (=> (not res!1770747) (not e!2688051))))

(declare-fun valid!3757 (MutableMap!4653) Bool)

(assert (=> b!4320697 (= res!1770747 (valid!3757 thiss!42308))))

(declare-fun b!4320698 () Bool)

(declare-fun e!2688052 () Bool)

(declare-fun tp!1326781 () Bool)

(declare-fun mapRes!21162 () Bool)

(assert (=> b!4320698 (= e!2688052 (and tp!1326781 mapRes!21162))))

(declare-fun condMapEmpty!21162 () Bool)

(declare-fun mapDefault!21162 () List!48490)

(assert (=> b!4320698 (= condMapEmpty!21162 (= (arr!7680 (_values!5038 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48490)) mapDefault!21162)))))

(declare-fun b!4320699 () Bool)

(declare-fun apply!11130 (MutLongMap!4747 (_ BitVec 64)) List!48490)

(assert (=> b!4320699 (= e!2688060 (apply!11130 (v!42729 (underlying!9724 thiss!42308)) lt!1538898))))

(declare-fun mapIsEmpty!21162 () Bool)

(assert (=> mapIsEmpty!21162 mapRes!21162))

(declare-fun tp!1326782 () Bool)

(declare-fun tp!1326780 () Bool)

(declare-fun array_inv!5525 (array!17204) Bool)

(declare-fun array_inv!5526 (array!17206) Bool)

(assert (=> b!4320700 (= e!2688056 (and tp!1326779 tp!1326782 tp!1326780 (array_inv!5525 (_keys!5060 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) (array_inv!5526 (_values!5038 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) e!2688052))))

(declare-fun mapNonEmpty!21162 () Bool)

(declare-fun tp!1326783 () Bool)

(declare-fun tp!1326784 () Bool)

(assert (=> mapNonEmpty!21162 (= mapRes!21162 (and tp!1326783 tp!1326784))))

(declare-fun mapKey!21162 () (_ BitVec 32))

(declare-fun mapValue!21162 () List!48490)

(declare-fun mapRest!21162 () (Array (_ BitVec 32) List!48490))

(assert (=> mapNonEmpty!21162 (= (arr!7680 (_values!5038 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) (store mapRest!21162 mapKey!21162 mapValue!21162))))

(declare-fun b!4320701 () Bool)

(assert (=> b!4320701 (= e!2688051 e!2688062)))

(declare-fun res!1770746 () Bool)

(assert (=> b!4320701 (=> (not res!1770746) (not e!2688062))))

(declare-fun contains!10406 (MutableMap!4653 K!9614) Bool)

(assert (=> b!4320701 (= res!1770746 (not (contains!10406 thiss!42308 key!2048)))))

(declare-fun map!10388 (MutLongMap!4747) ListLongMap!1159)

(assert (=> b!4320701 (= lt!1538890 (map!10388 (v!42729 (underlying!9724 thiss!42308))))))

(declare-datatypes ((ListMap!1819 0))(
  ( (ListMap!1820 (toList!2543 List!48490)) )
))
(declare-fun lt!1538892 () ListMap!1819)

(declare-fun map!10389 (MutableMap!4653) ListMap!1819)

(assert (=> b!4320701 (= lt!1538892 (map!10389 thiss!42308))))

(declare-fun res!1770744 () Bool)

(assert (=> start!415824 (=> (not res!1770744) (not e!2688051))))

(get-info :version)

(assert (=> start!415824 (= res!1770744 ((_ is HashMap!4653) thiss!42308))))

(assert (=> start!415824 e!2688051))

(assert (=> start!415824 e!2688061))

(declare-fun tp_is_empty!24085 () Bool)

(assert (=> start!415824 tp_is_empty!24085))

(declare-fun tp_is_empty!24087 () Bool)

(assert (=> start!415824 tp_is_empty!24087))

(declare-fun b!4320702 () Bool)

(declare-fun lambda!133761 () Int)

(declare-fun forall!8804 (List!48491 Int) Bool)

(assert (=> b!4320702 (= e!2688054 (not (forall!8804 (toList!2542 lt!1538890) lambda!133761)))))

(assert (=> b!4320702 e!2688053))

(declare-fun res!1770748 () Bool)

(assert (=> b!4320702 (=> (not res!1770748) (not e!2688053))))

(assert (=> b!4320702 (= res!1770748 (forall!8804 (toList!2542 lt!1538896) lambda!133761))))

(declare-fun +!325 (ListLongMap!1159 tuple2!47148) ListLongMap!1159)

(assert (=> b!4320702 (= lt!1538896 (+!325 lt!1538890 (tuple2!47149 lt!1538898 lt!1538893)))))

(declare-fun lt!1538894 () Unit!67738)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!175 (ListLongMap!1159 (_ BitVec 64) List!48490 Hashable!4663) Unit!67738)

(assert (=> b!4320702 (= lt!1538894 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!175 lt!1538890 lt!1538898 lt!1538893 (hashF!6903 thiss!42308)))))

(declare-fun lt!1538897 () Unit!67738)

(assert (=> b!4320702 (= lt!1538897 e!2688057)))

(declare-fun c!734824 () Bool)

(declare-fun isEmpty!28113 (List!48490) Bool)

(assert (=> b!4320702 (= c!734824 (not (isEmpty!28113 lt!1538895)))))

(declare-fun b!4320703 () Bool)

(declare-fun e!2688055 () Bool)

(declare-fun lt!1538899 () MutLongMap!4747)

(assert (=> b!4320703 (= e!2688058 (and e!2688055 ((_ is LongMap!4747) lt!1538899)))))

(assert (=> b!4320703 (= lt!1538899 (v!42729 (underlying!9724 thiss!42308)))))

(declare-fun b!4320704 () Bool)

(assert (=> b!4320704 (= e!2688055 e!2688059)))

(assert (= (and start!415824 res!1770744) b!4320697))

(assert (= (and b!4320697 res!1770747) b!4320701))

(assert (= (and b!4320701 res!1770746) b!4320694))

(assert (= (and b!4320694 c!734825) b!4320699))

(assert (= (and b!4320694 (not c!734825)) b!4320693))

(assert (= (and b!4320694 res!1770745) b!4320702))

(assert (= (and b!4320702 c!734824) b!4320690))

(assert (= (and b!4320702 (not c!734824)) b!4320696))

(assert (= (and b!4320702 res!1770748) b!4320691))

(assert (= (and b!4320698 condMapEmpty!21162) mapIsEmpty!21162))

(assert (= (and b!4320698 (not condMapEmpty!21162)) mapNonEmpty!21162))

(assert (= b!4320700 b!4320698))

(assert (= b!4320692 b!4320700))

(assert (= b!4320704 b!4320692))

(assert (= (and b!4320703 ((_ is LongMap!4747) (v!42729 (underlying!9724 thiss!42308)))) b!4320704))

(assert (= b!4320695 b!4320703))

(assert (= (and start!415824 ((_ is HashMap!4653) thiss!42308)) b!4320695))

(declare-fun m!4914649 () Bool)

(assert (=> b!4320702 m!4914649))

(declare-fun m!4914651 () Bool)

(assert (=> b!4320702 m!4914651))

(declare-fun m!4914653 () Bool)

(assert (=> b!4320702 m!4914653))

(declare-fun m!4914655 () Bool)

(assert (=> b!4320702 m!4914655))

(declare-fun m!4914657 () Bool)

(assert (=> b!4320702 m!4914657))

(declare-fun m!4914659 () Bool)

(assert (=> b!4320690 m!4914659))

(assert (=> b!4320690 m!4914659))

(declare-fun m!4914661 () Bool)

(assert (=> b!4320690 m!4914661))

(declare-fun m!4914663 () Bool)

(assert (=> b!4320690 m!4914663))

(declare-fun m!4914665 () Bool)

(assert (=> b!4320690 m!4914665))

(declare-fun m!4914667 () Bool)

(assert (=> b!4320690 m!4914667))

(declare-fun m!4914669 () Bool)

(assert (=> b!4320694 m!4914669))

(declare-fun m!4914671 () Bool)

(assert (=> b!4320694 m!4914671))

(declare-fun m!4914673 () Bool)

(assert (=> b!4320694 m!4914673))

(declare-fun m!4914675 () Bool)

(assert (=> b!4320691 m!4914675))

(declare-fun m!4914677 () Bool)

(assert (=> b!4320697 m!4914677))

(declare-fun m!4914679 () Bool)

(assert (=> b!4320699 m!4914679))

(declare-fun m!4914681 () Bool)

(assert (=> b!4320701 m!4914681))

(declare-fun m!4914683 () Bool)

(assert (=> b!4320701 m!4914683))

(declare-fun m!4914685 () Bool)

(assert (=> b!4320701 m!4914685))

(declare-fun m!4914687 () Bool)

(assert (=> mapNonEmpty!21162 m!4914687))

(declare-fun m!4914689 () Bool)

(assert (=> b!4320700 m!4914689))

(declare-fun m!4914691 () Bool)

(assert (=> b!4320700 m!4914691))

(check-sat tp_is_empty!24085 (not b!4320697) tp_is_empty!24087 (not b!4320701) (not b!4320702) (not b!4320690) (not b!4320700) (not b!4320698) (not b_next!129653) (not b_next!129651) b_and!340485 b_and!340487 (not mapNonEmpty!21162) (not b!4320691) (not b!4320699) (not b!4320694))
(check-sat b_and!340485 b_and!340487 (not b_next!129653) (not b_next!129651))
(get-model)

(declare-fun bs!606396 () Bool)

(declare-fun b!4320730 () Bool)

(assert (= bs!606396 (and b!4320730 b!4320702)))

(declare-fun lambda!133764 () Int)

(assert (=> bs!606396 (= lambda!133764 lambda!133761)))

(declare-fun b!4320727 () Bool)

(assert (=> b!4320727 false))

(declare-fun lt!1538955 () Unit!67738)

(declare-fun lt!1538943 () Unit!67738)

(assert (=> b!4320727 (= lt!1538955 lt!1538943)))

(declare-fun lt!1538946 () List!48491)

(declare-fun lt!1538960 () (_ BitVec 64))

(declare-fun lt!1538957 () List!48490)

(declare-fun contains!10407 (List!48491 tuple2!47148) Bool)

(assert (=> b!4320727 (contains!10407 lt!1538946 (tuple2!47149 lt!1538960 lt!1538957))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!172 (List!48491 (_ BitVec 64) List!48490) Unit!67738)

(assert (=> b!4320727 (= lt!1538943 (lemmaGetValueByKeyImpliesContainsTuple!172 lt!1538946 lt!1538960 lt!1538957))))

(assert (=> b!4320727 (= lt!1538957 (apply!11130 (v!42729 (underlying!9724 thiss!42308)) lt!1538960))))

(assert (=> b!4320727 (= lt!1538946 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308)))))))

(declare-fun lt!1538951 () Unit!67738)

(declare-fun lt!1538959 () Unit!67738)

(assert (=> b!4320727 (= lt!1538951 lt!1538959)))

(declare-fun lt!1538949 () List!48491)

(declare-datatypes ((Option!10296 0))(
  ( (None!10295) (Some!10295 (v!42734 List!48490)) )
))
(declare-fun isDefined!7597 (Option!10296) Bool)

(declare-fun getValueByKey!295 (List!48491 (_ BitVec 64)) Option!10296)

(assert (=> b!4320727 (isDefined!7597 (getValueByKey!295 lt!1538949 lt!1538960))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!214 (List!48491 (_ BitVec 64)) Unit!67738)

(assert (=> b!4320727 (= lt!1538959 (lemmaContainsKeyImpliesGetValueByKeyDefined!214 lt!1538949 lt!1538960))))

(assert (=> b!4320727 (= lt!1538949 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308)))))))

(declare-fun lt!1538941 () Unit!67738)

(declare-fun lt!1538947 () Unit!67738)

(assert (=> b!4320727 (= lt!1538941 lt!1538947)))

(declare-fun lt!1538948 () List!48491)

(declare-fun containsKey!396 (List!48491 (_ BitVec 64)) Bool)

(assert (=> b!4320727 (containsKey!396 lt!1538948 lt!1538960)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!161 (List!48491 (_ BitVec 64)) Unit!67738)

(assert (=> b!4320727 (= lt!1538947 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!161 lt!1538948 lt!1538960))))

(assert (=> b!4320727 (= lt!1538948 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308)))))))

(declare-fun e!2688081 () Unit!67738)

(declare-fun Unit!67741 () Unit!67738)

(assert (=> b!4320727 (= e!2688081 Unit!67741)))

(declare-fun bm!299452 () Bool)

(declare-fun call!299458 () (_ BitVec 64))

(assert (=> bm!299452 (= call!299458 (hash!1162 (hashF!6903 thiss!42308) key!2048))))

(declare-fun b!4320728 () Bool)

(assert (=> b!4320728 false))

(declare-fun lt!1538954 () Unit!67738)

(declare-fun lt!1538950 () Unit!67738)

(assert (=> b!4320728 (= lt!1538954 lt!1538950)))

(declare-fun lt!1538945 () ListLongMap!1159)

(declare-fun contains!10408 (ListMap!1819 K!9614) Bool)

(declare-fun extractMap!366 (List!48491) ListMap!1819)

(assert (=> b!4320728 (contains!10408 (extractMap!366 (toList!2542 lt!1538945)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!160 (ListLongMap!1159 K!9614 Hashable!4663) Unit!67738)

(assert (=> b!4320728 (= lt!1538950 (lemmaInLongMapThenInGenericMap!160 lt!1538945 key!2048 (hashF!6903 thiss!42308)))))

(declare-fun call!299461 () ListLongMap!1159)

(assert (=> b!4320728 (= lt!1538945 call!299461)))

(declare-fun e!2688079 () Unit!67738)

(declare-fun Unit!67742 () Unit!67738)

(assert (=> b!4320728 (= e!2688079 Unit!67742)))

(declare-fun b!4320729 () Bool)

(declare-fun e!2688082 () Unit!67738)

(declare-fun Unit!67743 () Unit!67738)

(assert (=> b!4320729 (= e!2688082 Unit!67743)))

(declare-fun d!1270410 () Bool)

(declare-fun lt!1538952 () Bool)

(assert (=> d!1270410 (= lt!1538952 (contains!10408 (map!10389 thiss!42308) key!2048))))

(declare-fun e!2688083 () Bool)

(assert (=> d!1270410 (= lt!1538952 e!2688083)))

(declare-fun res!1770756 () Bool)

(assert (=> d!1270410 (=> (not res!1770756) (not e!2688083))))

(assert (=> d!1270410 (= res!1770756 (contains!10405 (v!42729 (underlying!9724 thiss!42308)) lt!1538960))))

(declare-fun lt!1538953 () Unit!67738)

(declare-fun e!2688084 () Unit!67738)

(assert (=> d!1270410 (= lt!1538953 e!2688084)))

(declare-fun c!734835 () Bool)

(assert (=> d!1270410 (= c!734835 (contains!10408 (extractMap!366 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308))))) key!2048))))

(declare-fun lt!1538956 () Unit!67738)

(assert (=> d!1270410 (= lt!1538956 e!2688082)))

(declare-fun c!734836 () Bool)

(assert (=> d!1270410 (= c!734836 (contains!10405 (v!42729 (underlying!9724 thiss!42308)) lt!1538960))))

(assert (=> d!1270410 (= lt!1538960 (hash!1162 (hashF!6903 thiss!42308) key!2048))))

(assert (=> d!1270410 (valid!3757 thiss!42308)))

(assert (=> d!1270410 (= (contains!10406 thiss!42308 key!2048) lt!1538952)))

(declare-fun bm!299453 () Bool)

(declare-datatypes ((Option!10297 0))(
  ( (None!10296) (Some!10296 (v!42735 tuple2!47146)) )
))
(declare-fun call!299459 () Option!10297)

(declare-fun call!299457 () List!48490)

(declare-fun getPair!160 (List!48490 K!9614) Option!10297)

(assert (=> bm!299453 (= call!299459 (getPair!160 call!299457 key!2048))))

(declare-fun bm!299454 () Bool)

(declare-fun lt!1538942 () ListLongMap!1159)

(declare-fun call!299460 () Bool)

(declare-fun contains!10409 (ListLongMap!1159 (_ BitVec 64)) Bool)

(assert (=> bm!299454 (= call!299460 (contains!10409 (ite c!734835 lt!1538942 call!299461) call!299458))))

(declare-fun bm!299455 () Bool)

(declare-fun call!299462 () Bool)

(declare-fun isDefined!7598 (Option!10297) Bool)

(assert (=> bm!299455 (= call!299462 (isDefined!7598 call!299459))))

(declare-fun forallContained!1530 (List!48491 Int tuple2!47148) Unit!67738)

(assert (=> b!4320730 (= e!2688082 (forallContained!1530 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308)))) lambda!133764 (tuple2!47149 lt!1538960 (apply!11130 (v!42729 (underlying!9724 thiss!42308)) lt!1538960))))))

(declare-fun c!734834 () Bool)

(assert (=> b!4320730 (= c!734834 (not (contains!10407 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308)))) (tuple2!47149 lt!1538960 (apply!11130 (v!42729 (underlying!9724 thiss!42308)) lt!1538960)))))))

(declare-fun lt!1538944 () Unit!67738)

(assert (=> b!4320730 (= lt!1538944 e!2688081)))

(declare-fun b!4320731 () Bool)

(declare-fun e!2688078 () Bool)

(assert (=> b!4320731 (= e!2688078 call!299462)))

(declare-fun b!4320732 () Bool)

(declare-fun e!2688080 () Bool)

(assert (=> b!4320732 (= e!2688080 call!299462)))

(declare-fun b!4320733 () Bool)

(declare-fun Unit!67744 () Unit!67738)

(assert (=> b!4320733 (= e!2688081 Unit!67744)))

(declare-fun bm!299456 () Bool)

(declare-fun apply!11131 (ListLongMap!1159 (_ BitVec 64)) List!48490)

(assert (=> bm!299456 (= call!299457 (apply!11131 (ite c!734835 lt!1538942 call!299461) call!299458))))

(declare-fun b!4320734 () Bool)

(assert (=> b!4320734 (= e!2688084 e!2688079)))

(declare-fun res!1770755 () Bool)

(assert (=> b!4320734 (= res!1770755 call!299460)))

(assert (=> b!4320734 (=> (not res!1770755) (not e!2688078))))

(declare-fun c!734837 () Bool)

(assert (=> b!4320734 (= c!734837 e!2688078)))

(declare-fun b!4320735 () Bool)

(declare-fun Unit!67745 () Unit!67738)

(assert (=> b!4320735 (= e!2688079 Unit!67745)))

(declare-fun b!4320736 () Bool)

(declare-fun lt!1538958 () Unit!67738)

(assert (=> b!4320736 (= e!2688084 lt!1538958)))

(assert (=> b!4320736 (= lt!1538942 call!299461)))

(declare-fun lemmaInGenericMapThenInLongMap!160 (ListLongMap!1159 K!9614 Hashable!4663) Unit!67738)

(assert (=> b!4320736 (= lt!1538958 (lemmaInGenericMapThenInLongMap!160 lt!1538942 key!2048 (hashF!6903 thiss!42308)))))

(declare-fun res!1770757 () Bool)

(assert (=> b!4320736 (= res!1770757 call!299460)))

(assert (=> b!4320736 (=> (not res!1770757) (not e!2688080))))

(assert (=> b!4320736 e!2688080))

(declare-fun b!4320737 () Bool)

(assert (=> b!4320737 (= e!2688083 (isDefined!7598 (getPair!160 (apply!11130 (v!42729 (underlying!9724 thiss!42308)) lt!1538960) key!2048)))))

(declare-fun bm!299457 () Bool)

(assert (=> bm!299457 (= call!299461 (map!10388 (v!42729 (underlying!9724 thiss!42308))))))

(assert (= (and d!1270410 c!734836) b!4320730))

(assert (= (and d!1270410 (not c!734836)) b!4320729))

(assert (= (and b!4320730 c!734834) b!4320727))

(assert (= (and b!4320730 (not c!734834)) b!4320733))

(assert (= (and d!1270410 c!734835) b!4320736))

(assert (= (and d!1270410 (not c!734835)) b!4320734))

(assert (= (and b!4320736 res!1770757) b!4320732))

(assert (= (and b!4320734 res!1770755) b!4320731))

(assert (= (and b!4320734 c!734837) b!4320728))

(assert (= (and b!4320734 (not c!734837)) b!4320735))

(assert (= (or b!4320736 b!4320732 b!4320734 b!4320731) bm!299452))

(assert (= (or b!4320736 b!4320734 b!4320731 b!4320728) bm!299457))

(assert (= (or b!4320736 b!4320734) bm!299454))

(assert (= (or b!4320732 b!4320731) bm!299456))

(assert (= (or b!4320732 b!4320731) bm!299453))

(assert (= (or b!4320732 b!4320731) bm!299455))

(assert (= (and d!1270410 res!1770756) b!4320737))

(declare-fun m!4914693 () Bool)

(assert (=> b!4320728 m!4914693))

(assert (=> b!4320728 m!4914693))

(declare-fun m!4914695 () Bool)

(assert (=> b!4320728 m!4914695))

(declare-fun m!4914697 () Bool)

(assert (=> b!4320728 m!4914697))

(declare-fun m!4914699 () Bool)

(assert (=> b!4320727 m!4914699))

(declare-fun m!4914701 () Bool)

(assert (=> b!4320727 m!4914701))

(assert (=> b!4320727 m!4914683))

(declare-fun m!4914703 () Bool)

(assert (=> b!4320727 m!4914703))

(declare-fun m!4914705 () Bool)

(assert (=> b!4320727 m!4914705))

(declare-fun m!4914707 () Bool)

(assert (=> b!4320727 m!4914707))

(declare-fun m!4914709 () Bool)

(assert (=> b!4320727 m!4914709))

(assert (=> b!4320727 m!4914707))

(declare-fun m!4914711 () Bool)

(assert (=> b!4320727 m!4914711))

(declare-fun m!4914713 () Bool)

(assert (=> b!4320727 m!4914713))

(assert (=> bm!299452 m!4914673))

(declare-fun m!4914715 () Bool)

(assert (=> bm!299455 m!4914715))

(assert (=> b!4320730 m!4914683))

(assert (=> b!4320730 m!4914703))

(declare-fun m!4914717 () Bool)

(assert (=> b!4320730 m!4914717))

(declare-fun m!4914719 () Bool)

(assert (=> b!4320730 m!4914719))

(assert (=> bm!299457 m!4914683))

(declare-fun m!4914721 () Bool)

(assert (=> bm!299456 m!4914721))

(assert (=> d!1270410 m!4914677))

(declare-fun m!4914723 () Bool)

(assert (=> d!1270410 m!4914723))

(declare-fun m!4914725 () Bool)

(assert (=> d!1270410 m!4914725))

(declare-fun m!4914727 () Bool)

(assert (=> d!1270410 m!4914727))

(assert (=> d!1270410 m!4914723))

(assert (=> d!1270410 m!4914683))

(assert (=> d!1270410 m!4914685))

(assert (=> d!1270410 m!4914673))

(assert (=> d!1270410 m!4914685))

(declare-fun m!4914729 () Bool)

(assert (=> d!1270410 m!4914729))

(assert (=> b!4320737 m!4914703))

(assert (=> b!4320737 m!4914703))

(declare-fun m!4914731 () Bool)

(assert (=> b!4320737 m!4914731))

(assert (=> b!4320737 m!4914731))

(declare-fun m!4914733 () Bool)

(assert (=> b!4320737 m!4914733))

(declare-fun m!4914735 () Bool)

(assert (=> bm!299454 m!4914735))

(declare-fun m!4914737 () Bool)

(assert (=> b!4320736 m!4914737))

(declare-fun m!4914739 () Bool)

(assert (=> bm!299453 m!4914739))

(assert (=> b!4320701 d!1270410))

(declare-fun d!1270412 () Bool)

(declare-fun map!10390 (LongMapFixedSize!9494) ListLongMap!1159)

(assert (=> d!1270412 (= (map!10388 (v!42729 (underlying!9724 thiss!42308))) (map!10390 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308))))))))

(declare-fun bs!606397 () Bool)

(assert (= bs!606397 d!1270412))

(declare-fun m!4914741 () Bool)

(assert (=> bs!606397 m!4914741))

(assert (=> b!4320701 d!1270412))

(declare-fun d!1270414 () Bool)

(declare-fun lt!1538963 () ListMap!1819)

(declare-fun invariantList!599 (List!48490) Bool)

(assert (=> d!1270414 (invariantList!599 (toList!2543 lt!1538963))))

(assert (=> d!1270414 (= lt!1538963 (extractMap!366 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308))))))))

(assert (=> d!1270414 (valid!3757 thiss!42308)))

(assert (=> d!1270414 (= (map!10389 thiss!42308) lt!1538963)))

(declare-fun bs!606398 () Bool)

(assert (= bs!606398 d!1270414))

(declare-fun m!4914743 () Bool)

(assert (=> bs!606398 m!4914743))

(assert (=> bs!606398 m!4914683))

(assert (=> bs!606398 m!4914723))

(assert (=> bs!606398 m!4914677))

(assert (=> b!4320701 d!1270414))

(declare-fun b!4320756 () Bool)

(declare-fun e!2688098 () Bool)

(declare-fun e!2688097 () Bool)

(assert (=> b!4320756 (= e!2688098 e!2688097)))

(declare-fun c!734844 () Bool)

(declare-fun lt!1538972 () tuple2!47150)

(assert (=> b!4320756 (= c!734844 (_1!26861 lt!1538972))))

(declare-fun b!4320757 () Bool)

(declare-fun e!2688096 () Bool)

(assert (=> b!4320757 (= e!2688097 e!2688096)))

(declare-fun res!1770766 () Bool)

(declare-fun call!299467 () ListLongMap!1159)

(assert (=> b!4320757 (= res!1770766 (contains!10409 call!299467 lt!1538898))))

(assert (=> b!4320757 (=> (not res!1770766) (not e!2688096))))

(declare-fun b!4320758 () Bool)

(declare-fun e!2688099 () tuple2!47150)

(declare-fun lt!1538975 () tuple2!47150)

(assert (=> b!4320758 (= e!2688099 (tuple2!47151 false (_2!26861 lt!1538975)))))

(declare-fun d!1270416 () Bool)

(assert (=> d!1270416 e!2688098))

(declare-fun res!1770765 () Bool)

(assert (=> d!1270416 (=> (not res!1770765) (not e!2688098))))

(assert (=> d!1270416 (= res!1770765 ((_ is LongMap!4747) (_2!26861 lt!1538972)))))

(assert (=> d!1270416 (= lt!1538972 e!2688099)))

(declare-fun c!734846 () Bool)

(assert (=> d!1270416 (= c!734846 (_1!26861 lt!1538975))))

(declare-fun e!2688095 () tuple2!47150)

(assert (=> d!1270416 (= lt!1538975 e!2688095)))

(declare-fun c!734845 () Bool)

(declare-fun imbalanced!78 (MutLongMap!4747) Bool)

(assert (=> d!1270416 (= c!734845 (imbalanced!78 (v!42729 (underlying!9724 thiss!42308))))))

(declare-fun valid!3758 (MutLongMap!4747) Bool)

(assert (=> d!1270416 (valid!3758 (v!42729 (underlying!9724 thiss!42308)))))

(assert (=> d!1270416 (= (update!522 (v!42729 (underlying!9724 thiss!42308)) lt!1538898 lt!1538893) lt!1538972)))

(declare-fun b!4320759 () Bool)

(declare-fun call!299468 () ListLongMap!1159)

(assert (=> b!4320759 (= e!2688097 (= call!299467 call!299468))))

(declare-fun b!4320760 () Bool)

(assert (=> b!4320760 (= e!2688095 (tuple2!47151 true (v!42729 (underlying!9724 thiss!42308))))))

(declare-fun b!4320761 () Bool)

(assert (=> b!4320761 (= e!2688096 (= call!299467 (+!325 call!299468 (tuple2!47149 lt!1538898 lt!1538893))))))

(declare-fun bm!299462 () Bool)

(assert (=> bm!299462 (= call!299467 (map!10388 (_2!26861 lt!1538972)))))

(declare-fun b!4320762 () Bool)

(declare-datatypes ((tuple2!47152 0))(
  ( (tuple2!47153 (_1!26862 Bool) (_2!26862 LongMapFixedSize!9494)) )
))
(declare-fun lt!1538973 () tuple2!47152)

(assert (=> b!4320762 (= e!2688099 (tuple2!47151 (_1!26862 lt!1538973) (LongMap!4747 (Cell!18798 (_2!26862 lt!1538973)))))))

(declare-fun update!523 (LongMapFixedSize!9494 (_ BitVec 64) List!48490) tuple2!47152)

(assert (=> b!4320762 (= lt!1538973 (update!523 (v!42728 (underlying!9723 (_2!26861 lt!1538975))) lt!1538898 lt!1538893))))

(declare-fun bm!299463 () Bool)

(assert (=> bm!299463 (= call!299468 (map!10388 (v!42729 (underlying!9724 thiss!42308))))))

(declare-fun b!4320763 () Bool)

(declare-fun res!1770764 () Bool)

(assert (=> b!4320763 (=> (not res!1770764) (not e!2688098))))

(assert (=> b!4320763 (= res!1770764 (valid!3758 (_2!26861 lt!1538972)))))

(declare-fun b!4320764 () Bool)

(declare-fun lt!1538974 () tuple2!47150)

(assert (=> b!4320764 (= e!2688095 (tuple2!47151 (_1!26861 lt!1538974) (_2!26861 lt!1538974)))))

(declare-fun repack!82 (MutLongMap!4747) tuple2!47150)

(assert (=> b!4320764 (= lt!1538974 (repack!82 (v!42729 (underlying!9724 thiss!42308))))))

(assert (= (and d!1270416 c!734845) b!4320764))

(assert (= (and d!1270416 (not c!734845)) b!4320760))

(assert (= (and d!1270416 c!734846) b!4320762))

(assert (= (and d!1270416 (not c!734846)) b!4320758))

(assert (= (and d!1270416 res!1770765) b!4320763))

(assert (= (and b!4320763 res!1770764) b!4320756))

(assert (= (and b!4320756 c!734844) b!4320757))

(assert (= (and b!4320756 (not c!734844)) b!4320759))

(assert (= (and b!4320757 res!1770766) b!4320761))

(assert (= (or b!4320757 b!4320761 b!4320759) bm!299462))

(assert (= (or b!4320761 b!4320759) bm!299463))

(assert (=> bm!299463 m!4914683))

(declare-fun m!4914745 () Bool)

(assert (=> d!1270416 m!4914745))

(declare-fun m!4914747 () Bool)

(assert (=> d!1270416 m!4914747))

(declare-fun m!4914749 () Bool)

(assert (=> b!4320762 m!4914749))

(declare-fun m!4914751 () Bool)

(assert (=> bm!299462 m!4914751))

(declare-fun m!4914753 () Bool)

(assert (=> b!4320757 m!4914753))

(declare-fun m!4914755 () Bool)

(assert (=> b!4320763 m!4914755))

(declare-fun m!4914757 () Bool)

(assert (=> b!4320764 m!4914757))

(declare-fun m!4914759 () Bool)

(assert (=> b!4320761 m!4914759))

(assert (=> b!4320694 d!1270416))

(declare-fun d!1270418 () Bool)

(declare-fun lt!1538978 () Bool)

(assert (=> d!1270418 (= lt!1538978 (contains!10409 (map!10388 (v!42729 (underlying!9724 thiss!42308))) lt!1538898))))

(declare-fun contains!10410 (LongMapFixedSize!9494 (_ BitVec 64)) Bool)

(assert (=> d!1270418 (= lt!1538978 (contains!10410 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))) lt!1538898))))

(assert (=> d!1270418 (valid!3758 (v!42729 (underlying!9724 thiss!42308)))))

(assert (=> d!1270418 (= (contains!10405 (v!42729 (underlying!9724 thiss!42308)) lt!1538898) lt!1538978)))

(declare-fun bs!606399 () Bool)

(assert (= bs!606399 d!1270418))

(assert (=> bs!606399 m!4914683))

(assert (=> bs!606399 m!4914683))

(declare-fun m!4914761 () Bool)

(assert (=> bs!606399 m!4914761))

(declare-fun m!4914763 () Bool)

(assert (=> bs!606399 m!4914763))

(assert (=> bs!606399 m!4914747))

(assert (=> b!4320694 d!1270418))

(declare-fun d!1270420 () Bool)

(declare-fun hash!1166 (Hashable!4663 K!9614) (_ BitVec 64))

(assert (=> d!1270420 (= (hash!1162 (hashF!6903 thiss!42308) key!2048) (hash!1166 (hashF!6903 thiss!42308) key!2048))))

(declare-fun bs!606400 () Bool)

(assert (= bs!606400 d!1270420))

(declare-fun m!4914765 () Bool)

(assert (=> bs!606400 m!4914765))

(assert (=> b!4320694 d!1270420))

(declare-fun d!1270422 () Bool)

(declare-fun res!1770771 () Bool)

(declare-fun e!2688104 () Bool)

(assert (=> d!1270422 (=> res!1770771 e!2688104)))

(assert (=> d!1270422 (= res!1770771 ((_ is Nil!48367) (toList!2542 lt!1538890)))))

(assert (=> d!1270422 (= (forall!8804 (toList!2542 lt!1538890) lambda!133761) e!2688104)))

(declare-fun b!4320769 () Bool)

(declare-fun e!2688105 () Bool)

(assert (=> b!4320769 (= e!2688104 e!2688105)))

(declare-fun res!1770772 () Bool)

(assert (=> b!4320769 (=> (not res!1770772) (not e!2688105))))

(declare-fun dynLambda!20502 (Int tuple2!47148) Bool)

(assert (=> b!4320769 (= res!1770772 (dynLambda!20502 lambda!133761 (h!53825 (toList!2542 lt!1538890))))))

(declare-fun b!4320770 () Bool)

(assert (=> b!4320770 (= e!2688105 (forall!8804 (t!355366 (toList!2542 lt!1538890)) lambda!133761))))

(assert (= (and d!1270422 (not res!1770771)) b!4320769))

(assert (= (and b!4320769 res!1770772) b!4320770))

(declare-fun b_lambda!127191 () Bool)

(assert (=> (not b_lambda!127191) (not b!4320769)))

(declare-fun m!4914767 () Bool)

(assert (=> b!4320769 m!4914767))

(declare-fun m!4914769 () Bool)

(assert (=> b!4320770 m!4914769))

(assert (=> b!4320702 d!1270422))

(declare-fun d!1270424 () Bool)

(declare-fun res!1770773 () Bool)

(declare-fun e!2688106 () Bool)

(assert (=> d!1270424 (=> res!1770773 e!2688106)))

(assert (=> d!1270424 (= res!1770773 ((_ is Nil!48367) (toList!2542 lt!1538896)))))

(assert (=> d!1270424 (= (forall!8804 (toList!2542 lt!1538896) lambda!133761) e!2688106)))

(declare-fun b!4320771 () Bool)

(declare-fun e!2688107 () Bool)

(assert (=> b!4320771 (= e!2688106 e!2688107)))

(declare-fun res!1770774 () Bool)

(assert (=> b!4320771 (=> (not res!1770774) (not e!2688107))))

(assert (=> b!4320771 (= res!1770774 (dynLambda!20502 lambda!133761 (h!53825 (toList!2542 lt!1538896))))))

(declare-fun b!4320772 () Bool)

(assert (=> b!4320772 (= e!2688107 (forall!8804 (t!355366 (toList!2542 lt!1538896)) lambda!133761))))

(assert (= (and d!1270424 (not res!1770773)) b!4320771))

(assert (= (and b!4320771 res!1770774) b!4320772))

(declare-fun b_lambda!127193 () Bool)

(assert (=> (not b_lambda!127193) (not b!4320771)))

(declare-fun m!4914771 () Bool)

(assert (=> b!4320771 m!4914771))

(declare-fun m!4914773 () Bool)

(assert (=> b!4320772 m!4914773))

(assert (=> b!4320702 d!1270424))

(declare-fun d!1270426 () Bool)

(assert (=> d!1270426 (= (isEmpty!28113 lt!1538895) ((_ is Nil!48366) lt!1538895))))

(assert (=> b!4320702 d!1270426))

(declare-fun d!1270428 () Bool)

(declare-fun e!2688110 () Bool)

(assert (=> d!1270428 e!2688110))

(declare-fun res!1770780 () Bool)

(assert (=> d!1270428 (=> (not res!1770780) (not e!2688110))))

(declare-fun lt!1538987 () ListLongMap!1159)

(assert (=> d!1270428 (= res!1770780 (contains!10409 lt!1538987 (_1!26860 (tuple2!47149 lt!1538898 lt!1538893))))))

(declare-fun lt!1538990 () List!48491)

(assert (=> d!1270428 (= lt!1538987 (ListLongMap!1160 lt!1538990))))

(declare-fun lt!1538988 () Unit!67738)

(declare-fun lt!1538989 () Unit!67738)

(assert (=> d!1270428 (= lt!1538988 lt!1538989)))

(assert (=> d!1270428 (= (getValueByKey!295 lt!1538990 (_1!26860 (tuple2!47149 lt!1538898 lt!1538893))) (Some!10295 (_2!26860 (tuple2!47149 lt!1538898 lt!1538893))))))

(declare-fun lemmaContainsTupThenGetReturnValue!94 (List!48491 (_ BitVec 64) List!48490) Unit!67738)

(assert (=> d!1270428 (= lt!1538989 (lemmaContainsTupThenGetReturnValue!94 lt!1538990 (_1!26860 (tuple2!47149 lt!1538898 lt!1538893)) (_2!26860 (tuple2!47149 lt!1538898 lt!1538893))))))

(declare-fun insertStrictlySorted!54 (List!48491 (_ BitVec 64) List!48490) List!48491)

(assert (=> d!1270428 (= lt!1538990 (insertStrictlySorted!54 (toList!2542 lt!1538890) (_1!26860 (tuple2!47149 lt!1538898 lt!1538893)) (_2!26860 (tuple2!47149 lt!1538898 lt!1538893))))))

(assert (=> d!1270428 (= (+!325 lt!1538890 (tuple2!47149 lt!1538898 lt!1538893)) lt!1538987)))

(declare-fun b!4320777 () Bool)

(declare-fun res!1770779 () Bool)

(assert (=> b!4320777 (=> (not res!1770779) (not e!2688110))))

(assert (=> b!4320777 (= res!1770779 (= (getValueByKey!295 (toList!2542 lt!1538987) (_1!26860 (tuple2!47149 lt!1538898 lt!1538893))) (Some!10295 (_2!26860 (tuple2!47149 lt!1538898 lt!1538893)))))))

(declare-fun b!4320778 () Bool)

(assert (=> b!4320778 (= e!2688110 (contains!10407 (toList!2542 lt!1538987) (tuple2!47149 lt!1538898 lt!1538893)))))

(assert (= (and d!1270428 res!1770780) b!4320777))

(assert (= (and b!4320777 res!1770779) b!4320778))

(declare-fun m!4914775 () Bool)

(assert (=> d!1270428 m!4914775))

(declare-fun m!4914777 () Bool)

(assert (=> d!1270428 m!4914777))

(declare-fun m!4914779 () Bool)

(assert (=> d!1270428 m!4914779))

(declare-fun m!4914781 () Bool)

(assert (=> d!1270428 m!4914781))

(declare-fun m!4914783 () Bool)

(assert (=> b!4320777 m!4914783))

(declare-fun m!4914785 () Bool)

(assert (=> b!4320778 m!4914785))

(assert (=> b!4320702 d!1270428))

(declare-fun bs!606401 () Bool)

(declare-fun d!1270430 () Bool)

(assert (= bs!606401 (and d!1270430 b!4320702)))

(declare-fun lambda!133769 () Int)

(assert (=> bs!606401 (= lambda!133769 lambda!133761)))

(declare-fun bs!606402 () Bool)

(assert (= bs!606402 (and d!1270430 b!4320730)))

(assert (=> bs!606402 (= lambda!133769 lambda!133764)))

(declare-fun e!2688113 () Bool)

(assert (=> d!1270430 e!2688113))

(declare-fun res!1770783 () Bool)

(assert (=> d!1270430 (=> (not res!1770783) (not e!2688113))))

(declare-fun lt!1538996 () ListLongMap!1159)

(assert (=> d!1270430 (= res!1770783 (forall!8804 (toList!2542 lt!1538996) lambda!133769))))

(assert (=> d!1270430 (= lt!1538996 (+!325 lt!1538890 (tuple2!47149 lt!1538898 lt!1538893)))))

(declare-fun lt!1538995 () Unit!67738)

(declare-fun choose!26387 (ListLongMap!1159 (_ BitVec 64) List!48490 Hashable!4663) Unit!67738)

(assert (=> d!1270430 (= lt!1538995 (choose!26387 lt!1538890 lt!1538898 lt!1538893 (hashF!6903 thiss!42308)))))

(assert (=> d!1270430 (forall!8804 (toList!2542 lt!1538890) lambda!133769)))

(assert (=> d!1270430 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!175 lt!1538890 lt!1538898 lt!1538893 (hashF!6903 thiss!42308)) lt!1538995)))

(declare-fun b!4320781 () Bool)

(assert (=> b!4320781 (= e!2688113 (allKeysSameHashInMap!384 lt!1538996 (hashF!6903 thiss!42308)))))

(assert (= (and d!1270430 res!1770783) b!4320781))

(declare-fun m!4914787 () Bool)

(assert (=> d!1270430 m!4914787))

(assert (=> d!1270430 m!4914651))

(declare-fun m!4914789 () Bool)

(assert (=> d!1270430 m!4914789))

(declare-fun m!4914791 () Bool)

(assert (=> d!1270430 m!4914791))

(declare-fun m!4914793 () Bool)

(assert (=> b!4320781 m!4914793))

(assert (=> b!4320702 d!1270430))

(declare-fun d!1270432 () Bool)

(declare-fun e!2688116 () Bool)

(assert (=> d!1270432 e!2688116))

(declare-fun c!734849 () Bool)

(assert (=> d!1270432 (= c!734849 (contains!10405 (v!42729 (underlying!9724 thiss!42308)) lt!1538898))))

(declare-fun lt!1538999 () List!48490)

(declare-fun apply!11132 (LongMapFixedSize!9494 (_ BitVec 64)) List!48490)

(assert (=> d!1270432 (= lt!1538999 (apply!11132 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))) lt!1538898))))

(assert (=> d!1270432 (valid!3758 (v!42729 (underlying!9724 thiss!42308)))))

(assert (=> d!1270432 (= (apply!11130 (v!42729 (underlying!9724 thiss!42308)) lt!1538898) lt!1538999)))

(declare-fun b!4320786 () Bool)

(declare-fun get!15670 (Option!10296) List!48490)

(assert (=> b!4320786 (= e!2688116 (= lt!1538999 (get!15670 (getValueByKey!295 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308)))) lt!1538898))))))

(declare-fun b!4320787 () Bool)

(declare-fun dynLambda!20503 (Int (_ BitVec 64)) List!48490)

(assert (=> b!4320787 (= e!2688116 (= lt!1538999 (dynLambda!20503 (defaultEntry!5142 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308))))) lt!1538898)))))

(assert (=> b!4320787 ((_ is LongMap!4747) (v!42729 (underlying!9724 thiss!42308)))))

(assert (= (and d!1270432 c!734849) b!4320786))

(assert (= (and d!1270432 (not c!734849)) b!4320787))

(declare-fun b_lambda!127195 () Bool)

(assert (=> (not b_lambda!127195) (not b!4320787)))

(declare-fun t!355368 () Bool)

(declare-fun tb!257361 () Bool)

(assert (=> (and b!4320700 (= (defaultEntry!5142 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308))))) (defaultEntry!5142 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) t!355368) tb!257361))

(assert (=> b!4320787 t!355368))

(declare-fun result!314866 () Bool)

(declare-fun b_and!340489 () Bool)

(assert (= b_and!340485 (and (=> t!355368 result!314866) b_and!340489)))

(assert (=> d!1270432 m!4914671))

(declare-fun m!4914795 () Bool)

(assert (=> d!1270432 m!4914795))

(assert (=> d!1270432 m!4914747))

(assert (=> b!4320786 m!4914683))

(declare-fun m!4914797 () Bool)

(assert (=> b!4320786 m!4914797))

(assert (=> b!4320786 m!4914797))

(declare-fun m!4914799 () Bool)

(assert (=> b!4320786 m!4914799))

(declare-fun m!4914801 () Bool)

(assert (=> b!4320787 m!4914801))

(assert (=> b!4320699 d!1270432))

(declare-fun d!1270434 () Bool)

(assert (=> d!1270434 true))

(assert (=> d!1270434 true))

(declare-fun lambda!133772 () Int)

(declare-fun forall!8805 (List!48490 Int) Bool)

(assert (=> d!1270434 (= (allKeysSameHash!238 lt!1538895 lt!1538898 (hashF!6903 thiss!42308)) (forall!8805 lt!1538895 lambda!133772))))

(declare-fun bs!606403 () Bool)

(assert (= bs!606403 d!1270434))

(declare-fun m!4914803 () Bool)

(assert (=> bs!606403 m!4914803))

(assert (=> b!4320690 d!1270434))

(declare-fun d!1270436 () Bool)

(assert (=> d!1270436 (allKeysSameHash!238 (removePairForKey!261 lt!1538895 key!2048) lt!1538898 (hashF!6903 thiss!42308))))

(declare-fun lt!1539002 () Unit!67738)

(declare-fun choose!26388 (List!48490 K!9614 (_ BitVec 64) Hashable!4663) Unit!67738)

(assert (=> d!1270436 (= lt!1539002 (choose!26388 lt!1538895 key!2048 lt!1538898 (hashF!6903 thiss!42308)))))

(declare-fun noDuplicateKeys!260 (List!48490) Bool)

(assert (=> d!1270436 (noDuplicateKeys!260 lt!1538895)))

(assert (=> d!1270436 (= (lemmaRemovePairForKeyPreservesHash!214 lt!1538895 key!2048 lt!1538898 (hashF!6903 thiss!42308)) lt!1539002)))

(declare-fun bs!606404 () Bool)

(assert (= bs!606404 d!1270436))

(assert (=> bs!606404 m!4914659))

(assert (=> bs!606404 m!4914659))

(assert (=> bs!606404 m!4914661))

(declare-fun m!4914805 () Bool)

(assert (=> bs!606404 m!4914805))

(declare-fun m!4914807 () Bool)

(assert (=> bs!606404 m!4914807))

(assert (=> b!4320690 d!1270436))

(declare-fun bs!606405 () Bool)

(declare-fun d!1270438 () Bool)

(assert (= bs!606405 (and d!1270438 b!4320702)))

(declare-fun lambda!133775 () Int)

(assert (=> bs!606405 (not (= lambda!133775 lambda!133761))))

(declare-fun bs!606406 () Bool)

(assert (= bs!606406 (and d!1270438 b!4320730)))

(assert (=> bs!606406 (not (= lambda!133775 lambda!133764))))

(declare-fun bs!606407 () Bool)

(assert (= bs!606407 (and d!1270438 d!1270430)))

(assert (=> bs!606407 (not (= lambda!133775 lambda!133769))))

(assert (=> d!1270438 true))

(assert (=> d!1270438 (allKeysSameHash!238 lt!1538895 lt!1538898 (hashF!6903 thiss!42308))))

(declare-fun lt!1539005 () Unit!67738)

(declare-fun choose!26389 (List!48491 (_ BitVec 64) List!48490 Hashable!4663) Unit!67738)

(assert (=> d!1270438 (= lt!1539005 (choose!26389 (toList!2542 lt!1538890) lt!1538898 lt!1538895 (hashF!6903 thiss!42308)))))

(assert (=> d!1270438 (forall!8804 (toList!2542 lt!1538890) lambda!133775)))

(assert (=> d!1270438 (= (lemmaInLongMapAllKeySameHashThenForTuple!223 (toList!2542 lt!1538890) lt!1538898 lt!1538895 (hashF!6903 thiss!42308)) lt!1539005)))

(declare-fun bs!606408 () Bool)

(assert (= bs!606408 d!1270438))

(assert (=> bs!606408 m!4914663))

(declare-fun m!4914809 () Bool)

(assert (=> bs!606408 m!4914809))

(declare-fun m!4914811 () Bool)

(assert (=> bs!606408 m!4914811))

(assert (=> b!4320690 d!1270438))

(declare-fun d!1270440 () Bool)

(declare-fun lt!1539008 () List!48490)

(declare-fun containsKey!397 (List!48490 K!9614) Bool)

(assert (=> d!1270440 (not (containsKey!397 lt!1539008 key!2048))))

(declare-fun e!2688121 () List!48490)

(assert (=> d!1270440 (= lt!1539008 e!2688121)))

(declare-fun c!734855 () Bool)

(assert (=> d!1270440 (= c!734855 (and ((_ is Cons!48366) lt!1538895) (= (_1!26859 (h!53824 lt!1538895)) key!2048)))))

(assert (=> d!1270440 (noDuplicateKeys!260 lt!1538895)))

(assert (=> d!1270440 (= (removePairForKey!261 lt!1538895 key!2048) lt!1539008)))

(declare-fun b!4320803 () Bool)

(declare-fun e!2688122 () List!48490)

(assert (=> b!4320803 (= e!2688121 e!2688122)))

(declare-fun c!734854 () Bool)

(assert (=> b!4320803 (= c!734854 ((_ is Cons!48366) lt!1538895))))

(declare-fun b!4320805 () Bool)

(assert (=> b!4320805 (= e!2688122 Nil!48366)))

(declare-fun b!4320802 () Bool)

(assert (=> b!4320802 (= e!2688121 (t!355365 lt!1538895))))

(declare-fun b!4320804 () Bool)

(assert (=> b!4320804 (= e!2688122 (Cons!48366 (h!53824 lt!1538895) (removePairForKey!261 (t!355365 lt!1538895) key!2048)))))

(assert (= (and d!1270440 c!734855) b!4320802))

(assert (= (and d!1270440 (not c!734855)) b!4320803))

(assert (= (and b!4320803 c!734854) b!4320804))

(assert (= (and b!4320803 (not c!734854)) b!4320805))

(declare-fun m!4914813 () Bool)

(assert (=> d!1270440 m!4914813))

(assert (=> d!1270440 m!4914807))

(declare-fun m!4914815 () Bool)

(assert (=> b!4320804 m!4914815))

(assert (=> b!4320690 d!1270440))

(declare-fun bs!606409 () Bool)

(declare-fun d!1270442 () Bool)

(assert (= bs!606409 (and d!1270442 d!1270434)))

(declare-fun lambda!133776 () Int)

(assert (=> bs!606409 (= lambda!133776 lambda!133772)))

(assert (=> d!1270442 true))

(assert (=> d!1270442 true))

(assert (=> d!1270442 (= (allKeysSameHash!238 (removePairForKey!261 lt!1538895 key!2048) lt!1538898 (hashF!6903 thiss!42308)) (forall!8805 (removePairForKey!261 lt!1538895 key!2048) lambda!133776))))

(declare-fun bs!606410 () Bool)

(assert (= bs!606410 d!1270442))

(assert (=> bs!606410 m!4914659))

(declare-fun m!4914817 () Bool)

(assert (=> bs!606410 m!4914817))

(assert (=> b!4320690 d!1270442))

(declare-fun d!1270444 () Bool)

(assert (=> d!1270444 (= (array_inv!5525 (_keys!5060 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) (bvsge (size!35718 (_keys!5060 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4320700 d!1270444))

(declare-fun d!1270446 () Bool)

(assert (=> d!1270446 (= (array_inv!5526 (_values!5038 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) (bvsge (size!35719 (_values!5038 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4320700 d!1270446))

(declare-fun bs!606411 () Bool)

(declare-fun b!4320810 () Bool)

(assert (= bs!606411 (and b!4320810 b!4320702)))

(declare-fun lambda!133779 () Int)

(assert (=> bs!606411 (= lambda!133779 lambda!133761)))

(declare-fun bs!606412 () Bool)

(assert (= bs!606412 (and b!4320810 b!4320730)))

(assert (=> bs!606412 (= lambda!133779 lambda!133764)))

(declare-fun bs!606413 () Bool)

(assert (= bs!606413 (and b!4320810 d!1270430)))

(assert (=> bs!606413 (= lambda!133779 lambda!133769)))

(declare-fun bs!606414 () Bool)

(assert (= bs!606414 (and b!4320810 d!1270438)))

(assert (=> bs!606414 (not (= lambda!133779 lambda!133775))))

(declare-fun d!1270448 () Bool)

(declare-fun res!1770788 () Bool)

(declare-fun e!2688125 () Bool)

(assert (=> d!1270448 (=> (not res!1770788) (not e!2688125))))

(assert (=> d!1270448 (= res!1770788 (valid!3758 (v!42729 (underlying!9724 thiss!42308))))))

(assert (=> d!1270448 (= (valid!3757 thiss!42308) e!2688125)))

(declare-fun res!1770789 () Bool)

(assert (=> b!4320810 (=> (not res!1770789) (not e!2688125))))

(assert (=> b!4320810 (= res!1770789 (forall!8804 (toList!2542 (map!10388 (v!42729 (underlying!9724 thiss!42308)))) lambda!133779))))

(declare-fun b!4320811 () Bool)

(assert (=> b!4320811 (= e!2688125 (allKeysSameHashInMap!384 (map!10388 (v!42729 (underlying!9724 thiss!42308))) (hashF!6903 thiss!42308)))))

(assert (= (and d!1270448 res!1770788) b!4320810))

(assert (= (and b!4320810 res!1770789) b!4320811))

(assert (=> d!1270448 m!4914747))

(assert (=> b!4320810 m!4914683))

(declare-fun m!4914819 () Bool)

(assert (=> b!4320810 m!4914819))

(assert (=> b!4320811 m!4914683))

(assert (=> b!4320811 m!4914683))

(declare-fun m!4914821 () Bool)

(assert (=> b!4320811 m!4914821))

(assert (=> b!4320697 d!1270448))

(declare-fun bs!606415 () Bool)

(declare-fun d!1270450 () Bool)

(assert (= bs!606415 (and d!1270450 d!1270438)))

(declare-fun lambda!133782 () Int)

(assert (=> bs!606415 (= lambda!133782 lambda!133775)))

(declare-fun bs!606416 () Bool)

(assert (= bs!606416 (and d!1270450 b!4320810)))

(assert (=> bs!606416 (not (= lambda!133782 lambda!133779))))

(declare-fun bs!606417 () Bool)

(assert (= bs!606417 (and d!1270450 d!1270430)))

(assert (=> bs!606417 (not (= lambda!133782 lambda!133769))))

(declare-fun bs!606418 () Bool)

(assert (= bs!606418 (and d!1270450 b!4320730)))

(assert (=> bs!606418 (not (= lambda!133782 lambda!133764))))

(declare-fun bs!606419 () Bool)

(assert (= bs!606419 (and d!1270450 b!4320702)))

(assert (=> bs!606419 (not (= lambda!133782 lambda!133761))))

(assert (=> d!1270450 true))

(assert (=> d!1270450 (= (allKeysSameHashInMap!384 lt!1538896 (hashF!6903 thiss!42308)) (forall!8804 (toList!2542 lt!1538896) lambda!133782))))

(declare-fun bs!606420 () Bool)

(assert (= bs!606420 d!1270450))

(declare-fun m!4914823 () Bool)

(assert (=> bs!606420 m!4914823))

(assert (=> b!4320691 d!1270450))

(declare-fun b!4320816 () Bool)

(declare-fun tp!1326787 () Bool)

(declare-fun e!2688128 () Bool)

(assert (=> b!4320816 (= e!2688128 (and tp_is_empty!24085 tp_is_empty!24087 tp!1326787))))

(assert (=> b!4320698 (= tp!1326781 e!2688128)))

(assert (= (and b!4320698 ((_ is Cons!48366) mapDefault!21162)) b!4320816))

(declare-fun tp!1326788 () Bool)

(declare-fun b!4320817 () Bool)

(declare-fun e!2688129 () Bool)

(assert (=> b!4320817 (= e!2688129 (and tp_is_empty!24085 tp_is_empty!24087 tp!1326788))))

(assert (=> b!4320700 (= tp!1326782 e!2688129)))

(assert (= (and b!4320700 ((_ is Cons!48366) (zeroValue!5015 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308))))))) b!4320817))

(declare-fun e!2688130 () Bool)

(declare-fun tp!1326789 () Bool)

(declare-fun b!4320818 () Bool)

(assert (=> b!4320818 (= e!2688130 (and tp_is_empty!24085 tp_is_empty!24087 tp!1326789))))

(assert (=> b!4320700 (= tp!1326780 e!2688130)))

(assert (= (and b!4320700 ((_ is Cons!48366) (minValue!5015 (v!42728 (underlying!9723 (v!42729 (underlying!9724 thiss!42308))))))) b!4320818))

(declare-fun mapIsEmpty!21165 () Bool)

(declare-fun mapRes!21165 () Bool)

(assert (=> mapIsEmpty!21165 mapRes!21165))

(declare-fun b!4320826 () Bool)

(declare-fun tp!1326796 () Bool)

(declare-fun e!2688136 () Bool)

(assert (=> b!4320826 (= e!2688136 (and tp_is_empty!24085 tp_is_empty!24087 tp!1326796))))

(declare-fun condMapEmpty!21165 () Bool)

(declare-fun mapDefault!21165 () List!48490)

(assert (=> mapNonEmpty!21162 (= condMapEmpty!21165 (= mapRest!21162 ((as const (Array (_ BitVec 32) List!48490)) mapDefault!21165)))))

(assert (=> mapNonEmpty!21162 (= tp!1326783 (and e!2688136 mapRes!21165))))

(declare-fun mapNonEmpty!21165 () Bool)

(declare-fun tp!1326798 () Bool)

(declare-fun e!2688135 () Bool)

(assert (=> mapNonEmpty!21165 (= mapRes!21165 (and tp!1326798 e!2688135))))

(declare-fun mapValue!21165 () List!48490)

(declare-fun mapKey!21165 () (_ BitVec 32))

(declare-fun mapRest!21165 () (Array (_ BitVec 32) List!48490))

(assert (=> mapNonEmpty!21165 (= mapRest!21162 (store mapRest!21165 mapKey!21165 mapValue!21165))))

(declare-fun b!4320825 () Bool)

(declare-fun tp!1326797 () Bool)

(assert (=> b!4320825 (= e!2688135 (and tp_is_empty!24085 tp_is_empty!24087 tp!1326797))))

(assert (= (and mapNonEmpty!21162 condMapEmpty!21165) mapIsEmpty!21165))

(assert (= (and mapNonEmpty!21162 (not condMapEmpty!21165)) mapNonEmpty!21165))

(assert (= (and mapNonEmpty!21165 ((_ is Cons!48366) mapValue!21165)) b!4320825))

(assert (= (and mapNonEmpty!21162 ((_ is Cons!48366) mapDefault!21165)) b!4320826))

(declare-fun m!4914825 () Bool)

(assert (=> mapNonEmpty!21165 m!4914825))

(declare-fun e!2688137 () Bool)

(declare-fun tp!1326799 () Bool)

(declare-fun b!4320827 () Bool)

(assert (=> b!4320827 (= e!2688137 (and tp_is_empty!24085 tp_is_empty!24087 tp!1326799))))

(assert (=> mapNonEmpty!21162 (= tp!1326784 e!2688137)))

(assert (= (and mapNonEmpty!21162 ((_ is Cons!48366) mapValue!21162)) b!4320827))

(declare-fun b_lambda!127197 () Bool)

(assert (= b_lambda!127191 (or b!4320702 b_lambda!127197)))

(declare-fun bs!606421 () Bool)

(declare-fun d!1270452 () Bool)

(assert (= bs!606421 (and d!1270452 b!4320702)))

(assert (=> bs!606421 (= (dynLambda!20502 lambda!133761 (h!53825 (toList!2542 lt!1538890))) (noDuplicateKeys!260 (_2!26860 (h!53825 (toList!2542 lt!1538890)))))))

(declare-fun m!4914827 () Bool)

(assert (=> bs!606421 m!4914827))

(assert (=> b!4320769 d!1270452))

(declare-fun b_lambda!127199 () Bool)

(assert (= b_lambda!127195 (or (and b!4320700 b_free!128947) b_lambda!127199)))

(declare-fun b_lambda!127201 () Bool)

(assert (= b_lambda!127193 (or b!4320702 b_lambda!127201)))

(declare-fun bs!606422 () Bool)

(declare-fun d!1270454 () Bool)

(assert (= bs!606422 (and d!1270454 b!4320702)))

(assert (=> bs!606422 (= (dynLambda!20502 lambda!133761 (h!53825 (toList!2542 lt!1538896))) (noDuplicateKeys!260 (_2!26860 (h!53825 (toList!2542 lt!1538896)))))))

(declare-fun m!4914829 () Bool)

(assert (=> bs!606422 m!4914829))

(assert (=> b!4320771 d!1270454))

(check-sat (not b_lambda!127197) (not b!4320818) (not b!4320770) (not bs!606422) tp_is_empty!24087 (not d!1270440) (not d!1270420) (not b_lambda!127201) (not d!1270434) (not d!1270416) (not b_lambda!127199) (not b!4320757) (not d!1270432) (not b!4320810) tp_is_empty!24085 (not d!1270442) (not b!4320786) (not d!1270414) (not d!1270430) (not d!1270412) (not b!4320777) (not b_next!129653) (not b_next!129651) b_and!340487 (not b!4320728) (not bm!299453) (not bm!299452) (not b!4320763) (not d!1270436) (not b!4320730) (not d!1270410) (not bm!299456) (not d!1270448) (not b!4320781) (not bm!299457) (not tb!257361) (not b!4320778) (not b!4320772) (not b!4320826) (not bm!299454) (not b!4320816) (not b!4320825) (not b!4320804) (not bm!299462) (not d!1270418) (not b!4320827) (not d!1270450) (not d!1270428) (not bm!299463) (not b!4320761) b_and!340489 (not d!1270438) (not b!4320764) (not bm!299455) (not b!4320736) (not mapNonEmpty!21165) (not bs!606421) (not b!4320737) (not b!4320762) (not b!4320817) (not b!4320811) (not b!4320727))
(check-sat b_and!340489 b_and!340487 (not b_next!129653) (not b_next!129651))

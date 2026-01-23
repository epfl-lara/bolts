; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415186 () Bool)

(assert start!415186)

(declare-fun b!4316077 () Bool)

(declare-fun b_free!128835 () Bool)

(declare-fun b_next!129539 () Bool)

(assert (=> b!4316077 (= b_free!128835 (not b_next!129539))))

(declare-fun tp!1326021 () Bool)

(declare-fun b_and!340317 () Bool)

(assert (=> b!4316077 (= tp!1326021 b_and!340317)))

(declare-fun b!4316071 () Bool)

(declare-fun b_free!128837 () Bool)

(declare-fun b_next!129541 () Bool)

(assert (=> b!4316071 (= b_free!128837 (not b_next!129541))))

(declare-fun tp!1326023 () Bool)

(declare-fun b_and!340319 () Bool)

(assert (=> b!4316071 (= tp!1326023 b_and!340319)))

(declare-fun b!4316065 () Bool)

(declare-fun e!2684886 () Bool)

(declare-datatypes ((K!9544 0))(
  ( (K!9545 (val!15893 Int)) )
))
(declare-datatypes ((V!9746 0))(
  ( (V!9747 (val!15894 Int)) )
))
(declare-datatypes ((tuple2!46974 0))(
  ( (tuple2!46975 (_1!26769 K!9544) (_2!26769 V!9746)) )
))
(declare-datatypes ((List!48433 0))(
  ( (Nil!48309) (Cons!48309 (h!53761 tuple2!46974) (t!355282 List!48433)) )
))
(declare-datatypes ((ListMap!1777 0))(
  ( (ListMap!1778 (toList!2497 List!48433)) )
))
(declare-fun lt!1535643 () ListMap!1777)

(declare-fun lt!1535655 () ListMap!1777)

(declare-fun eq!152 (ListMap!1777 ListMap!1777) Bool)

(assert (=> b!4316065 (= e!2684886 (eq!152 lt!1535643 lt!1535655))))

(declare-fun mapIsEmpty!21049 () Bool)

(declare-fun mapRes!21049 () Bool)

(assert (=> mapIsEmpty!21049 mapRes!21049))

(declare-fun b!4316066 () Bool)

(declare-fun e!2684898 () Bool)

(declare-fun e!2684899 () Bool)

(assert (=> b!4316066 (= e!2684898 e!2684899)))

(declare-fun b!4316067 () Bool)

(declare-fun e!2684893 () Bool)

(declare-fun tp!1326020 () Bool)

(assert (=> b!4316067 (= e!2684893 (and tp!1326020 mapRes!21049))))

(declare-fun condMapEmpty!21049 () Bool)

(declare-datatypes ((array!17076 0))(
  ( (array!17077 (arr!7623 (Array (_ BitVec 32) (_ BitVec 64))) (size!35662 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4635 0))(
  ( (HashableExt!4634 (__x!30182 Int)) )
))
(declare-datatypes ((array!17078 0))(
  ( (array!17079 (arr!7624 (Array (_ BitVec 32) List!48433)) (size!35663 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9438 0))(
  ( (LongMapFixedSize!9439 (defaultEntry!5104 Int) (mask!13307 (_ BitVec 32)) (extraKeys!4968 (_ BitVec 32)) (zeroValue!4978 List!48433) (minValue!4978 List!48433) (_size!9481 (_ BitVec 32)) (_keys!5019 array!17076) (_values!5000 array!17078) (_vacant!4780 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18685 0))(
  ( (Cell!18686 (v!42590 LongMapFixedSize!9438)) )
))
(declare-datatypes ((MutLongMap!4719 0))(
  ( (LongMap!4719 (underlying!9667 Cell!18685)) (MutLongMapExt!4718 (__x!30183 Int)) )
))
(declare-datatypes ((Cell!18687 0))(
  ( (Cell!18688 (v!42591 MutLongMap!4719)) )
))
(declare-datatypes ((MutableMap!4625 0))(
  ( (MutableMapExt!4624 (__x!30184 Int)) (HashMap!4625 (underlying!9668 Cell!18687) (hashF!6840 Hashable!4635) (_size!9482 (_ BitVec 32)) (defaultValue!4796 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4625)

(declare-fun mapDefault!21049 () List!48433)

(assert (=> b!4316067 (= condMapEmpty!21049 (= (arr!7624 (_values!5000 (v!42590 (underlying!9667 (v!42591 (underlying!9668 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48433)) mapDefault!21049)))))

(declare-fun b!4316068 () Bool)

(declare-datatypes ((Unit!67536 0))(
  ( (Unit!67537) )
))
(declare-fun e!2684890 () Unit!67536)

(declare-fun Unit!67538 () Unit!67536)

(assert (=> b!4316068 (= e!2684890 Unit!67538)))

(declare-fun res!1769073 () Bool)

(declare-fun lt!1535650 () MutableMap!4625)

(declare-fun valid!3720 (MutableMap!4625) Bool)

(assert (=> b!4316068 (= res!1769073 (valid!3720 lt!1535650))))

(declare-fun e!2684891 () Bool)

(assert (=> b!4316068 (=> (not res!1769073) (not e!2684891))))

(assert (=> b!4316068 e!2684891))

(declare-fun mapNonEmpty!21049 () Bool)

(declare-fun tp!1326018 () Bool)

(declare-fun tp!1326017 () Bool)

(assert (=> mapNonEmpty!21049 (= mapRes!21049 (and tp!1326018 tp!1326017))))

(declare-fun mapValue!21049 () List!48433)

(declare-fun mapKey!21049 () (_ BitVec 32))

(declare-fun mapRest!21049 () (Array (_ BitVec 32) List!48433))

(assert (=> mapNonEmpty!21049 (= (arr!7624 (_values!5000 (v!42590 (underlying!9667 (v!42591 (underlying!9668 thiss!42308)))))) (store mapRest!21049 mapKey!21049 mapValue!21049))))

(declare-fun b!4316069 () Bool)

(declare-fun e!2684892 () Bool)

(declare-datatypes ((tuple2!46976 0))(
  ( (tuple2!46977 (_1!26770 (_ BitVec 64)) (_2!26770 List!48433)) )
))
(declare-datatypes ((List!48434 0))(
  ( (Nil!48310) (Cons!48310 (h!53762 tuple2!46976) (t!355283 List!48434)) )
))
(declare-datatypes ((ListLongMap!1111 0))(
  ( (ListLongMap!1112 (toList!2498 List!48434)) )
))
(declare-fun lt!1535637 () ListLongMap!1111)

(declare-fun allKeysSameHashInMap!373 (ListLongMap!1111 Hashable!4635) Bool)

(assert (=> b!4316069 (= e!2684892 (allKeysSameHashInMap!373 lt!1535637 (hashF!6840 thiss!42308)))))

(declare-fun b!4316070 () Bool)

(declare-fun e!2684894 () Bool)

(declare-fun e!2684897 () Bool)

(assert (=> b!4316070 (= e!2684894 e!2684897)))

(declare-fun res!1769071 () Bool)

(assert (=> b!4316070 (=> (not res!1769071) (not e!2684897))))

(declare-fun lt!1535645 () Bool)

(assert (=> b!4316070 (= res!1769071 lt!1535645)))

(declare-fun key!2048 () K!9544)

(declare-fun contains!10319 (MutableMap!4625 K!9544) Bool)

(assert (=> b!4316070 (= lt!1535645 (contains!10319 thiss!42308 key!2048))))

(declare-fun lt!1535649 () ListLongMap!1111)

(declare-fun map!10323 (MutLongMap!4719) ListLongMap!1111)

(assert (=> b!4316070 (= lt!1535649 (map!10323 (v!42591 (underlying!9668 thiss!42308))))))

(declare-fun lt!1535644 () ListMap!1777)

(declare-fun map!10324 (MutableMap!4625) ListMap!1777)

(assert (=> b!4316070 (= lt!1535644 (map!10324 thiss!42308))))

(declare-fun e!2684888 () Bool)

(declare-fun e!2684889 () Bool)

(assert (=> b!4316071 (= e!2684888 (and e!2684889 tp!1326023))))

(declare-fun res!1769070 () Bool)

(assert (=> start!415186 (=> (not res!1769070) (not e!2684894))))

(get-info :version)

(assert (=> start!415186 (= res!1769070 ((_ is HashMap!4625) thiss!42308))))

(assert (=> start!415186 e!2684894))

(assert (=> start!415186 e!2684888))

(declare-fun tp_is_empty!23981 () Bool)

(assert (=> start!415186 tp_is_empty!23981))

(declare-fun tp_is_empty!23983 () Bool)

(assert (=> start!415186 tp_is_empty!23983))

(declare-fun b!4316072 () Bool)

(declare-fun e!2684896 () Bool)

(assert (=> b!4316072 (= e!2684899 e!2684896)))

(declare-datatypes ((tuple2!46978 0))(
  ( (tuple2!46979 (_1!26771 Bool) (_2!26771 MutLongMap!4719)) )
))
(declare-fun lt!1535641 () tuple2!46978)

(declare-fun b!4316073 () Bool)

(declare-fun lt!1535656 () Cell!18687)

(declare-datatypes ((tuple2!46980 0))(
  ( (tuple2!46981 (_1!26772 Unit!67536) (_2!26772 MutableMap!4625)) )
))
(declare-fun Unit!67539 () Unit!67536)

(declare-fun Unit!67540 () Unit!67536)

(assert (=> b!4316073 (= e!2684897 (not ((_ is HashMap!4625) (_2!26772 (ite (and (_1!26771 lt!1535641) (not lt!1535645)) (tuple2!46981 Unit!67539 (HashMap!4625 lt!1535656 (hashF!6840 thiss!42308) (bvadd (_size!9482 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4796 thiss!42308))) (tuple2!46981 Unit!67540 lt!1535650))))))))

(declare-fun lt!1535647 () Unit!67536)

(assert (=> b!4316073 (= lt!1535647 e!2684890)))

(declare-fun c!733742 () Bool)

(assert (=> b!4316073 (= c!733742 (_1!26771 lt!1535641))))

(assert (=> b!4316073 (= lt!1535650 (HashMap!4625 lt!1535656 (hashF!6840 thiss!42308) (_size!9482 thiss!42308) (defaultValue!4796 thiss!42308)))))

(assert (=> b!4316073 (= lt!1535656 (Cell!18688 (_2!26771 lt!1535641)))))

(declare-fun lt!1535653 () (_ BitVec 64))

(declare-fun lt!1535640 () List!48433)

(declare-fun update!494 (MutLongMap!4719 (_ BitVec 64) List!48433) tuple2!46978)

(assert (=> b!4316073 (= lt!1535641 (update!494 (v!42591 (underlying!9668 thiss!42308)) lt!1535653 lt!1535640))))

(declare-fun lt!1535654 () tuple2!46974)

(declare-fun lt!1535652 () List!48433)

(assert (=> b!4316073 (= lt!1535640 (Cons!48309 lt!1535654 lt!1535652))))

(declare-fun lt!1535642 () List!48433)

(declare-fun removePairForKey!251 (List!48433 K!9544) List!48433)

(assert (=> b!4316073 (= lt!1535652 (removePairForKey!251 lt!1535642 key!2048))))

(declare-fun v!9179 () V!9746)

(assert (=> b!4316073 (= lt!1535654 (tuple2!46975 key!2048 v!9179))))

(declare-fun apply!11093 (MutLongMap!4719 (_ BitVec 64)) List!48433)

(assert (=> b!4316073 (= lt!1535642 (apply!11093 (v!42591 (underlying!9668 thiss!42308)) lt!1535653))))

(declare-fun hash!1116 (Hashable!4635 K!9544) (_ BitVec 64))

(assert (=> b!4316073 (= lt!1535653 (hash!1116 (hashF!6840 thiss!42308) key!2048))))

(declare-fun b!4316074 () Bool)

(declare-fun e!2684887 () Bool)

(declare-fun noDuplicateKeys!253 (List!48433) Bool)

(assert (=> b!4316074 (= e!2684887 (noDuplicateKeys!253 lt!1535640))))

(declare-fun bm!298617 () Bool)

(declare-fun call!298622 () ListMap!1777)

(assert (=> bm!298617 (= call!298622 (map!10324 lt!1535650))))

(declare-fun b!4316075 () Bool)

(declare-fun Unit!67541 () Unit!67536)

(assert (=> b!4316075 (= e!2684890 Unit!67541)))

(declare-fun lt!1535651 () Unit!67536)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!211 (List!48434 (_ BitVec 64) List!48433 Hashable!4635) Unit!67536)

(assert (=> b!4316075 (= lt!1535651 (lemmaInLongMapAllKeySameHashThenForTuple!211 (toList!2498 lt!1535649) lt!1535653 lt!1535642 (hashF!6840 thiss!42308)))))

(declare-fun allKeysSameHash!224 (List!48433 (_ BitVec 64) Hashable!4635) Bool)

(assert (=> b!4316075 (allKeysSameHash!224 lt!1535642 lt!1535653 (hashF!6840 thiss!42308))))

(declare-fun lt!1535635 () Unit!67536)

(declare-fun lemmaRemovePairForKeyPreservesHash!204 (List!48433 K!9544 (_ BitVec 64) Hashable!4635) Unit!67536)

(assert (=> b!4316075 (= lt!1535635 (lemmaRemovePairForKeyPreservesHash!204 lt!1535642 key!2048 lt!1535653 (hashF!6840 thiss!42308)))))

(assert (=> b!4316075 (allKeysSameHash!224 lt!1535652 lt!1535653 (hashF!6840 thiss!42308))))

(declare-fun lt!1535657 () Unit!67536)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!199 (List!48433 K!9544) Unit!67536)

(assert (=> b!4316075 (= lt!1535657 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!199 lt!1535642 key!2048))))

(declare-fun res!1769077 () Bool)

(assert (=> b!4316075 (= res!1769077 (noDuplicateKeys!253 lt!1535652))))

(assert (=> b!4316075 (=> (not res!1769077) (not e!2684887))))

(assert (=> b!4316075 e!2684887))

(declare-fun lt!1535636 () Unit!67536)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!173 (ListLongMap!1111 (_ BitVec 64) List!48433 Hashable!4635) Unit!67536)

(assert (=> b!4316075 (= lt!1535636 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!173 lt!1535649 lt!1535653 lt!1535640 (hashF!6840 thiss!42308)))))

(declare-fun +!313 (ListLongMap!1111 tuple2!46976) ListLongMap!1111)

(assert (=> b!4316075 (= lt!1535637 (+!313 lt!1535649 (tuple2!46977 lt!1535653 lt!1535640)))))

(declare-fun res!1769075 () Bool)

(declare-fun lambda!133497 () Int)

(declare-fun forall!8784 (List!48434 Int) Bool)

(assert (=> b!4316075 (= res!1769075 (forall!8784 (toList!2498 lt!1535637) lambda!133497))))

(assert (=> b!4316075 (=> (not res!1769075) (not e!2684892))))

(assert (=> b!4316075 e!2684892))

(declare-fun lt!1535646 () Unit!67536)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!71 (ListLongMap!1111 (_ BitVec 64) List!48433 K!9544 V!9746 Hashable!4635) Unit!67536)

(assert (=> b!4316075 (= lt!1535646 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!71 lt!1535649 lt!1535653 lt!1535640 key!2048 v!9179 (hashF!6840 thiss!42308)))))

(declare-fun extractMap!357 (List!48434) ListMap!1777)

(declare-fun +!314 (ListMap!1777 tuple2!46974) ListMap!1777)

(assert (=> b!4316075 (eq!152 (extractMap!357 (toList!2498 lt!1535637)) (+!314 (extractMap!357 (toList!2498 lt!1535649)) lt!1535654))))

(assert (=> b!4316075 (= lt!1535643 call!298622)))

(assert (=> b!4316075 (= lt!1535655 (+!314 lt!1535644 lt!1535654))))

(declare-fun lt!1535638 () Unit!67536)

(declare-fun lemmaEquivalentThenSameContains!66 (ListMap!1777 ListMap!1777 K!9544) Unit!67536)

(assert (=> b!4316075 (= lt!1535638 (lemmaEquivalentThenSameContains!66 lt!1535643 lt!1535655 key!2048))))

(declare-fun contains!10320 (ListMap!1777 K!9544) Bool)

(assert (=> b!4316075 (= (contains!10320 lt!1535643 key!2048) (contains!10320 lt!1535655 key!2048))))

(declare-fun lt!1535639 () ListLongMap!1111)

(assert (=> b!4316075 (= lt!1535639 (map!10323 (_2!26771 lt!1535641)))))

(declare-fun res!1769078 () Bool)

(assert (=> b!4316075 (= res!1769078 (forall!8784 (toList!2498 lt!1535639) lambda!133497))))

(assert (=> b!4316075 (=> (not res!1769078) (not e!2684886))))

(assert (=> b!4316075 e!2684886))

(declare-fun b!4316076 () Bool)

(declare-fun res!1769074 () Bool)

(assert (=> b!4316076 (=> (not res!1769074) (not e!2684894))))

(assert (=> b!4316076 (= res!1769074 (valid!3720 thiss!42308))))

(declare-fun tp!1326022 () Bool)

(declare-fun tp!1326019 () Bool)

(declare-fun array_inv!5483 (array!17076) Bool)

(declare-fun array_inv!5484 (array!17078) Bool)

(assert (=> b!4316077 (= e!2684896 (and tp!1326021 tp!1326019 tp!1326022 (array_inv!5483 (_keys!5019 (v!42590 (underlying!9667 (v!42591 (underlying!9668 thiss!42308)))))) (array_inv!5484 (_values!5000 (v!42590 (underlying!9667 (v!42591 (underlying!9668 thiss!42308)))))) e!2684893))))

(declare-fun b!4316078 () Bool)

(declare-fun lt!1535648 () MutLongMap!4719)

(assert (=> b!4316078 (= e!2684889 (and e!2684898 ((_ is LongMap!4719) lt!1535648)))))

(assert (=> b!4316078 (= lt!1535648 (v!42591 (underlying!9668 thiss!42308)))))

(declare-fun b!4316079 () Bool)

(assert (=> b!4316079 (= e!2684891 (= call!298622 lt!1535644))))

(declare-fun b!4316080 () Bool)

(declare-fun res!1769076 () Bool)

(assert (=> b!4316080 (= res!1769076 (allKeysSameHashInMap!373 lt!1535639 (hashF!6840 thiss!42308)))))

(assert (=> b!4316080 (=> (not res!1769076) (not e!2684886))))

(declare-fun b!4316081 () Bool)

(declare-fun res!1769072 () Bool)

(declare-fun containsKey!377 (List!48433 K!9544) Bool)

(assert (=> b!4316081 (= res!1769072 (not (containsKey!377 lt!1535652 key!2048)))))

(assert (=> b!4316081 (=> (not res!1769072) (not e!2684887))))

(assert (= (and start!415186 res!1769070) b!4316076))

(assert (= (and b!4316076 res!1769074) b!4316070))

(assert (= (and b!4316070 res!1769071) b!4316073))

(assert (= (and b!4316073 c!733742) b!4316075))

(assert (= (and b!4316073 (not c!733742)) b!4316068))

(assert (= (and b!4316075 res!1769077) b!4316081))

(assert (= (and b!4316081 res!1769072) b!4316074))

(assert (= (and b!4316075 res!1769075) b!4316069))

(assert (= (and b!4316075 res!1769078) b!4316080))

(assert (= (and b!4316080 res!1769076) b!4316065))

(assert (= (and b!4316068 res!1769073) b!4316079))

(assert (= (or b!4316075 b!4316079) bm!298617))

(assert (= (and b!4316067 condMapEmpty!21049) mapIsEmpty!21049))

(assert (= (and b!4316067 (not condMapEmpty!21049)) mapNonEmpty!21049))

(assert (= b!4316077 b!4316067))

(assert (= b!4316072 b!4316077))

(assert (= b!4316066 b!4316072))

(assert (= (and b!4316078 ((_ is LongMap!4719) (v!42591 (underlying!9668 thiss!42308)))) b!4316066))

(assert (= b!4316071 b!4316078))

(assert (= (and start!415186 ((_ is HashMap!4625) thiss!42308)) b!4316071))

(declare-fun m!4909981 () Bool)

(assert (=> b!4316077 m!4909981))

(declare-fun m!4909983 () Bool)

(assert (=> b!4316077 m!4909983))

(declare-fun m!4909985 () Bool)

(assert (=> b!4316069 m!4909985))

(declare-fun m!4909987 () Bool)

(assert (=> b!4316081 m!4909987))

(declare-fun m!4909989 () Bool)

(assert (=> b!4316080 m!4909989))

(declare-fun m!4909991 () Bool)

(assert (=> b!4316073 m!4909991))

(declare-fun m!4909993 () Bool)

(assert (=> b!4316073 m!4909993))

(declare-fun m!4909995 () Bool)

(assert (=> b!4316073 m!4909995))

(declare-fun m!4909997 () Bool)

(assert (=> b!4316073 m!4909997))

(declare-fun m!4909999 () Bool)

(assert (=> bm!298617 m!4909999))

(declare-fun m!4910001 () Bool)

(assert (=> mapNonEmpty!21049 m!4910001))

(declare-fun m!4910003 () Bool)

(assert (=> b!4316065 m!4910003))

(declare-fun m!4910005 () Bool)

(assert (=> b!4316074 m!4910005))

(declare-fun m!4910007 () Bool)

(assert (=> b!4316070 m!4910007))

(declare-fun m!4910009 () Bool)

(assert (=> b!4316070 m!4910009))

(declare-fun m!4910011 () Bool)

(assert (=> b!4316070 m!4910011))

(declare-fun m!4910013 () Bool)

(assert (=> b!4316076 m!4910013))

(declare-fun m!4910015 () Bool)

(assert (=> b!4316068 m!4910015))

(declare-fun m!4910017 () Bool)

(assert (=> b!4316075 m!4910017))

(declare-fun m!4910019 () Bool)

(assert (=> b!4316075 m!4910019))

(declare-fun m!4910021 () Bool)

(assert (=> b!4316075 m!4910021))

(declare-fun m!4910023 () Bool)

(assert (=> b!4316075 m!4910023))

(declare-fun m!4910025 () Bool)

(assert (=> b!4316075 m!4910025))

(declare-fun m!4910027 () Bool)

(assert (=> b!4316075 m!4910027))

(declare-fun m!4910029 () Bool)

(assert (=> b!4316075 m!4910029))

(declare-fun m!4910031 () Bool)

(assert (=> b!4316075 m!4910031))

(declare-fun m!4910033 () Bool)

(assert (=> b!4316075 m!4910033))

(declare-fun m!4910035 () Bool)

(assert (=> b!4316075 m!4910035))

(declare-fun m!4910037 () Bool)

(assert (=> b!4316075 m!4910037))

(declare-fun m!4910039 () Bool)

(assert (=> b!4316075 m!4910039))

(declare-fun m!4910041 () Bool)

(assert (=> b!4316075 m!4910041))

(declare-fun m!4910043 () Bool)

(assert (=> b!4316075 m!4910043))

(declare-fun m!4910045 () Bool)

(assert (=> b!4316075 m!4910045))

(declare-fun m!4910047 () Bool)

(assert (=> b!4316075 m!4910047))

(assert (=> b!4316075 m!4910029))

(declare-fun m!4910049 () Bool)

(assert (=> b!4316075 m!4910049))

(declare-fun m!4910051 () Bool)

(assert (=> b!4316075 m!4910051))

(assert (=> b!4316075 m!4910035))

(assert (=> b!4316075 m!4910031))

(declare-fun m!4910053 () Bool)

(assert (=> b!4316075 m!4910053))

(declare-fun m!4910055 () Bool)

(assert (=> b!4316075 m!4910055))

(check-sat b_and!340317 (not b!4316067) (not b!4316080) (not b!4316073) (not b!4316068) (not b!4316074) b_and!340319 (not b!4316065) (not b!4316076) tp_is_empty!23981 tp_is_empty!23983 (not mapNonEmpty!21049) (not b!4316075) (not bm!298617) (not b!4316077) (not b_next!129539) (not b!4316069) (not b_next!129541) (not b!4316081) (not b!4316070))
(check-sat b_and!340317 b_and!340319 (not b_next!129541) (not b_next!129539))

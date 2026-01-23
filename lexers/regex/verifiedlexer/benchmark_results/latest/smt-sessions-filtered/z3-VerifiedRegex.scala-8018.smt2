; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415182 () Bool)

(assert start!415182)

(declare-fun b!4315970 () Bool)

(declare-fun b_free!128827 () Bool)

(declare-fun b_next!129531 () Bool)

(assert (=> b!4315970 (= b_free!128827 (not b_next!129531))))

(declare-fun tp!1325977 () Bool)

(declare-fun b_and!340309 () Bool)

(assert (=> b!4315970 (= tp!1325977 b_and!340309)))

(declare-fun b!4315979 () Bool)

(declare-fun b_free!128829 () Bool)

(declare-fun b_next!129533 () Bool)

(assert (=> b!4315979 (= b_free!128829 (not b_next!129533))))

(declare-fun tp!1325980 () Bool)

(declare-fun b_and!340311 () Bool)

(assert (=> b!4315979 (= tp!1325980 b_and!340311)))

(declare-fun b!4315963 () Bool)

(declare-fun e!2684806 () Bool)

(declare-fun e!2684815 () Bool)

(assert (=> b!4315963 (= e!2684806 e!2684815)))

(declare-fun b!4315964 () Bool)

(declare-fun e!2684813 () Bool)

(assert (=> b!4315964 (= e!2684813 e!2684806)))

(declare-fun b!4315965 () Bool)

(declare-datatypes ((Unit!67528 0))(
  ( (Unit!67529) )
))
(declare-fun e!2684802 () Unit!67528)

(declare-fun Unit!67530 () Unit!67528)

(assert (=> b!4315965 (= e!2684802 Unit!67530)))

(declare-datatypes ((V!9741 0))(
  ( (V!9742 (val!15889 Int)) )
))
(declare-datatypes ((K!9539 0))(
  ( (K!9540 (val!15890 Int)) )
))
(declare-datatypes ((tuple2!46962 0))(
  ( (tuple2!46963 (_1!26763 K!9539) (_2!26763 V!9741)) )
))
(declare-datatypes ((List!48429 0))(
  ( (Nil!48305) (Cons!48305 (h!53757 tuple2!46962) (t!355278 List!48429)) )
))
(declare-datatypes ((tuple2!46964 0))(
  ( (tuple2!46965 (_1!26764 (_ BitVec 64)) (_2!26764 List!48429)) )
))
(declare-datatypes ((List!48430 0))(
  ( (Nil!48306) (Cons!48306 (h!53758 tuple2!46964) (t!355279 List!48430)) )
))
(declare-datatypes ((ListLongMap!1107 0))(
  ( (ListLongMap!1108 (toList!2493 List!48430)) )
))
(declare-fun lt!1535515 () ListLongMap!1107)

(declare-fun lt!1535513 () (_ BitVec 64))

(declare-datatypes ((array!17068 0))(
  ( (array!17069 (arr!7619 (Array (_ BitVec 32) (_ BitVec 64))) (size!35658 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4633 0))(
  ( (HashableExt!4632 (__x!30176 Int)) )
))
(declare-datatypes ((array!17070 0))(
  ( (array!17071 (arr!7620 (Array (_ BitVec 32) List!48429)) (size!35659 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9434 0))(
  ( (LongMapFixedSize!9435 (defaultEntry!5102 Int) (mask!13304 (_ BitVec 32)) (extraKeys!4966 (_ BitVec 32)) (zeroValue!4976 List!48429) (minValue!4976 List!48429) (_size!9477 (_ BitVec 32)) (_keys!5017 array!17068) (_values!4998 array!17070) (_vacant!4778 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18677 0))(
  ( (Cell!18678 (v!42586 LongMapFixedSize!9434)) )
))
(declare-datatypes ((MutLongMap!4717 0))(
  ( (LongMap!4717 (underlying!9663 Cell!18677)) (MutLongMapExt!4716 (__x!30177 Int)) )
))
(declare-datatypes ((Cell!18679 0))(
  ( (Cell!18680 (v!42587 MutLongMap!4717)) )
))
(declare-datatypes ((MutableMap!4623 0))(
  ( (MutableMapExt!4622 (__x!30178 Int)) (HashMap!4623 (underlying!9664 Cell!18679) (hashF!6838 Hashable!4633) (_size!9478 (_ BitVec 32)) (defaultValue!4794 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4623)

(declare-fun lt!1535503 () List!48429)

(declare-fun lt!1535504 () Unit!67528)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!209 (List!48430 (_ BitVec 64) List!48429 Hashable!4633) Unit!67528)

(assert (=> b!4315965 (= lt!1535504 (lemmaInLongMapAllKeySameHashThenForTuple!209 (toList!2493 lt!1535515) lt!1535513 lt!1535503 (hashF!6838 thiss!42308)))))

(declare-fun allKeysSameHash!222 (List!48429 (_ BitVec 64) Hashable!4633) Bool)

(assert (=> b!4315965 (allKeysSameHash!222 lt!1535503 lt!1535513 (hashF!6838 thiss!42308))))

(declare-fun lt!1535510 () Unit!67528)

(declare-fun key!2048 () K!9539)

(declare-fun lemmaRemovePairForKeyPreservesHash!202 (List!48429 K!9539 (_ BitVec 64) Hashable!4633) Unit!67528)

(assert (=> b!4315965 (= lt!1535510 (lemmaRemovePairForKeyPreservesHash!202 lt!1535503 key!2048 lt!1535513 (hashF!6838 thiss!42308)))))

(declare-fun lt!1535519 () List!48429)

(assert (=> b!4315965 (allKeysSameHash!222 lt!1535519 lt!1535513 (hashF!6838 thiss!42308))))

(declare-fun lt!1535505 () Unit!67528)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!197 (List!48429 K!9539) Unit!67528)

(assert (=> b!4315965 (= lt!1535505 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!197 lt!1535503 key!2048))))

(declare-fun res!1769022 () Bool)

(declare-fun noDuplicateKeys!251 (List!48429) Bool)

(assert (=> b!4315965 (= res!1769022 (noDuplicateKeys!251 lt!1535519))))

(declare-fun e!2684803 () Bool)

(assert (=> b!4315965 (=> (not res!1769022) (not e!2684803))))

(assert (=> b!4315965 e!2684803))

(declare-fun lt!1535507 () Unit!67528)

(declare-fun lt!1535502 () List!48429)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!171 (ListLongMap!1107 (_ BitVec 64) List!48429 Hashable!4633) Unit!67528)

(assert (=> b!4315965 (= lt!1535507 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!171 lt!1535515 lt!1535513 lt!1535502 (hashF!6838 thiss!42308)))))

(declare-fun lt!1535514 () ListLongMap!1107)

(declare-fun +!309 (ListLongMap!1107 tuple2!46964) ListLongMap!1107)

(assert (=> b!4315965 (= lt!1535514 (+!309 lt!1535515 (tuple2!46965 lt!1535513 lt!1535502)))))

(declare-fun res!1769017 () Bool)

(declare-fun lambda!133487 () Int)

(declare-fun forall!8782 (List!48430 Int) Bool)

(assert (=> b!4315965 (= res!1769017 (forall!8782 (toList!2493 lt!1535514) lambda!133487))))

(declare-fun e!2684804 () Bool)

(assert (=> b!4315965 (=> (not res!1769017) (not e!2684804))))

(assert (=> b!4315965 e!2684804))

(declare-fun lt!1535506 () Unit!67528)

(declare-fun v!9179 () V!9741)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!69 (ListLongMap!1107 (_ BitVec 64) List!48429 K!9539 V!9741 Hashable!4633) Unit!67528)

(assert (=> b!4315965 (= lt!1535506 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!69 lt!1535515 lt!1535513 lt!1535502 key!2048 v!9179 (hashF!6838 thiss!42308)))))

(declare-fun lt!1535499 () tuple2!46962)

(declare-datatypes ((ListMap!1773 0))(
  ( (ListMap!1774 (toList!2494 List!48429)) )
))
(declare-fun eq!150 (ListMap!1773 ListMap!1773) Bool)

(declare-fun extractMap!355 (List!48430) ListMap!1773)

(declare-fun +!310 (ListMap!1773 tuple2!46962) ListMap!1773)

(assert (=> b!4315965 (eq!150 (extractMap!355 (toList!2493 lt!1535514)) (+!310 (extractMap!355 (toList!2493 lt!1535515)) lt!1535499))))

(declare-fun lt!1535508 () ListMap!1773)

(declare-fun call!298616 () ListMap!1773)

(assert (=> b!4315965 (= lt!1535508 call!298616)))

(declare-fun lt!1535512 () ListMap!1773)

(declare-fun lt!1535516 () ListMap!1773)

(assert (=> b!4315965 (= lt!1535512 (+!310 lt!1535516 lt!1535499))))

(declare-fun lt!1535517 () Unit!67528)

(declare-fun lemmaEquivalentThenSameContains!64 (ListMap!1773 ListMap!1773 K!9539) Unit!67528)

(assert (=> b!4315965 (= lt!1535517 (lemmaEquivalentThenSameContains!64 lt!1535508 lt!1535512 key!2048))))

(declare-fun contains!10316 (ListMap!1773 K!9539) Bool)

(assert (=> b!4315965 (= (contains!10316 lt!1535508 key!2048) (contains!10316 lt!1535512 key!2048))))

(declare-fun lt!1535511 () ListLongMap!1107)

(declare-datatypes ((tuple2!46966 0))(
  ( (tuple2!46967 (_1!26765 Bool) (_2!26765 MutLongMap!4717)) )
))
(declare-fun lt!1535518 () tuple2!46966)

(declare-fun map!10318 (MutLongMap!4717) ListLongMap!1107)

(assert (=> b!4315965 (= lt!1535511 (map!10318 (_2!26765 lt!1535518)))))

(declare-fun res!1769016 () Bool)

(assert (=> b!4315965 (= res!1769016 (forall!8782 (toList!2493 lt!1535511) lambda!133487))))

(declare-fun e!2684814 () Bool)

(assert (=> b!4315965 (=> (not res!1769016) (not e!2684814))))

(assert (=> b!4315965 e!2684814))

(declare-fun bm!298611 () Bool)

(declare-fun lt!1535500 () MutableMap!4623)

(declare-fun map!10319 (MutableMap!4623) ListMap!1773)

(assert (=> bm!298611 (= call!298616 (map!10319 lt!1535500))))

(declare-fun b!4315966 () Bool)

(declare-fun allKeysSameHashInMap!372 (ListLongMap!1107 Hashable!4633) Bool)

(assert (=> b!4315966 (= e!2684804 (allKeysSameHashInMap!372 lt!1535514 (hashF!6838 thiss!42308)))))

(declare-fun b!4315967 () Bool)

(declare-fun res!1769021 () Bool)

(declare-fun e!2684808 () Bool)

(assert (=> b!4315967 (=> (not res!1769021) (not e!2684808))))

(declare-fun valid!3718 (MutableMap!4623) Bool)

(assert (=> b!4315967 (= res!1769021 (valid!3718 thiss!42308))))

(declare-fun b!4315969 () Bool)

(declare-fun e!2684805 () Bool)

(assert (=> b!4315969 (= e!2684805 false)))

(declare-fun lt!1535509 () Unit!67528)

(assert (=> b!4315969 (= lt!1535509 e!2684802)))

(declare-fun c!733736 () Bool)

(assert (=> b!4315969 (= c!733736 (_1!26765 lt!1535518))))

(assert (=> b!4315969 (= lt!1535500 (HashMap!4623 (Cell!18680 (_2!26765 lt!1535518)) (hashF!6838 thiss!42308) (_size!9478 thiss!42308) (defaultValue!4794 thiss!42308)))))

(declare-fun update!493 (MutLongMap!4717 (_ BitVec 64) List!48429) tuple2!46966)

(assert (=> b!4315969 (= lt!1535518 (update!493 (v!42587 (underlying!9664 thiss!42308)) lt!1535513 lt!1535502))))

(assert (=> b!4315969 (= lt!1535502 (Cons!48305 lt!1535499 lt!1535519))))

(declare-fun removePairForKey!250 (List!48429 K!9539) List!48429)

(assert (=> b!4315969 (= lt!1535519 (removePairForKey!250 lt!1535503 key!2048))))

(assert (=> b!4315969 (= lt!1535499 (tuple2!46963 key!2048 v!9179))))

(declare-fun apply!11092 (MutLongMap!4717 (_ BitVec 64)) List!48429)

(assert (=> b!4315969 (= lt!1535503 (apply!11092 (v!42587 (underlying!9664 thiss!42308)) lt!1535513))))

(declare-fun hash!1115 (Hashable!4633 K!9539) (_ BitVec 64))

(assert (=> b!4315969 (= lt!1535513 (hash!1115 (hashF!6838 thiss!42308) key!2048))))

(declare-fun tp!1325976 () Bool)

(declare-fun tp!1325981 () Bool)

(declare-fun e!2684807 () Bool)

(declare-fun array_inv!5481 (array!17068) Bool)

(declare-fun array_inv!5482 (array!17070) Bool)

(assert (=> b!4315970 (= e!2684815 (and tp!1325977 tp!1325981 tp!1325976 (array_inv!5481 (_keys!5017 (v!42586 (underlying!9663 (v!42587 (underlying!9664 thiss!42308)))))) (array_inv!5482 (_values!4998 (v!42586 (underlying!9663 (v!42587 (underlying!9664 thiss!42308)))))) e!2684807))))

(declare-fun b!4315971 () Bool)

(declare-fun e!2684810 () Bool)

(assert (=> b!4315971 (= e!2684810 (= call!298616 lt!1535516))))

(declare-fun b!4315972 () Bool)

(assert (=> b!4315972 (= e!2684814 (eq!150 lt!1535508 lt!1535512))))

(declare-fun b!4315973 () Bool)

(assert (=> b!4315973 (= e!2684803 (noDuplicateKeys!251 lt!1535502))))

(declare-fun b!4315974 () Bool)

(declare-fun e!2684811 () Bool)

(declare-fun lt!1535501 () MutLongMap!4717)

(get-info :version)

(assert (=> b!4315974 (= e!2684811 (and e!2684813 ((_ is LongMap!4717) lt!1535501)))))

(assert (=> b!4315974 (= lt!1535501 (v!42587 (underlying!9664 thiss!42308)))))

(declare-fun b!4315975 () Bool)

(declare-fun res!1769023 () Bool)

(assert (=> b!4315975 (= res!1769023 (allKeysSameHashInMap!372 lt!1535511 (hashF!6838 thiss!42308)))))

(assert (=> b!4315975 (=> (not res!1769023) (not e!2684814))))

(declare-fun b!4315976 () Bool)

(assert (=> b!4315976 (= e!2684808 e!2684805)))

(declare-fun res!1769019 () Bool)

(assert (=> b!4315976 (=> (not res!1769019) (not e!2684805))))

(declare-fun contains!10317 (MutableMap!4623 K!9539) Bool)

(assert (=> b!4315976 (= res!1769019 (contains!10317 thiss!42308 key!2048))))

(assert (=> b!4315976 (= lt!1535515 (map!10318 (v!42587 (underlying!9664 thiss!42308))))))

(assert (=> b!4315976 (= lt!1535516 (map!10319 thiss!42308))))

(declare-fun b!4315977 () Bool)

(declare-fun Unit!67531 () Unit!67528)

(assert (=> b!4315977 (= e!2684802 Unit!67531)))

(declare-fun res!1769024 () Bool)

(assert (=> b!4315977 (= res!1769024 (valid!3718 lt!1535500))))

(assert (=> b!4315977 (=> (not res!1769024) (not e!2684810))))

(assert (=> b!4315977 e!2684810))

(declare-fun res!1769018 () Bool)

(assert (=> start!415182 (=> (not res!1769018) (not e!2684808))))

(assert (=> start!415182 (= res!1769018 ((_ is HashMap!4623) thiss!42308))))

(assert (=> start!415182 e!2684808))

(declare-fun e!2684809 () Bool)

(assert (=> start!415182 e!2684809))

(declare-fun tp_is_empty!23973 () Bool)

(assert (=> start!415182 tp_is_empty!23973))

(declare-fun tp_is_empty!23975 () Bool)

(assert (=> start!415182 tp_is_empty!23975))

(declare-fun b!4315968 () Bool)

(declare-fun tp!1325975 () Bool)

(declare-fun mapRes!21043 () Bool)

(assert (=> b!4315968 (= e!2684807 (and tp!1325975 mapRes!21043))))

(declare-fun condMapEmpty!21043 () Bool)

(declare-fun mapDefault!21043 () List!48429)

(assert (=> b!4315968 (= condMapEmpty!21043 (= (arr!7620 (_values!4998 (v!42586 (underlying!9663 (v!42587 (underlying!9664 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48429)) mapDefault!21043)))))

(declare-fun b!4315978 () Bool)

(declare-fun res!1769020 () Bool)

(declare-fun containsKey!375 (List!48429 K!9539) Bool)

(assert (=> b!4315978 (= res!1769020 (not (containsKey!375 lt!1535519 key!2048)))))

(assert (=> b!4315978 (=> (not res!1769020) (not e!2684803))))

(assert (=> b!4315979 (= e!2684809 (and e!2684811 tp!1325980))))

(declare-fun mapIsEmpty!21043 () Bool)

(assert (=> mapIsEmpty!21043 mapRes!21043))

(declare-fun mapNonEmpty!21043 () Bool)

(declare-fun tp!1325979 () Bool)

(declare-fun tp!1325978 () Bool)

(assert (=> mapNonEmpty!21043 (= mapRes!21043 (and tp!1325979 tp!1325978))))

(declare-fun mapValue!21043 () List!48429)

(declare-fun mapRest!21043 () (Array (_ BitVec 32) List!48429))

(declare-fun mapKey!21043 () (_ BitVec 32))

(assert (=> mapNonEmpty!21043 (= (arr!7620 (_values!4998 (v!42586 (underlying!9663 (v!42587 (underlying!9664 thiss!42308)))))) (store mapRest!21043 mapKey!21043 mapValue!21043))))

(assert (= (and start!415182 res!1769018) b!4315967))

(assert (= (and b!4315967 res!1769021) b!4315976))

(assert (= (and b!4315976 res!1769019) b!4315969))

(assert (= (and b!4315969 c!733736) b!4315965))

(assert (= (and b!4315969 (not c!733736)) b!4315977))

(assert (= (and b!4315965 res!1769022) b!4315978))

(assert (= (and b!4315978 res!1769020) b!4315973))

(assert (= (and b!4315965 res!1769017) b!4315966))

(assert (= (and b!4315965 res!1769016) b!4315975))

(assert (= (and b!4315975 res!1769023) b!4315972))

(assert (= (and b!4315977 res!1769024) b!4315971))

(assert (= (or b!4315965 b!4315971) bm!298611))

(assert (= (and b!4315968 condMapEmpty!21043) mapIsEmpty!21043))

(assert (= (and b!4315968 (not condMapEmpty!21043)) mapNonEmpty!21043))

(assert (= b!4315970 b!4315968))

(assert (= b!4315963 b!4315970))

(assert (= b!4315964 b!4315963))

(assert (= (and b!4315974 ((_ is LongMap!4717) (v!42587 (underlying!9664 thiss!42308)))) b!4315964))

(assert (= b!4315979 b!4315974))

(assert (= (and start!415182 ((_ is HashMap!4623) thiss!42308)) b!4315979))

(declare-fun m!4909829 () Bool)

(assert (=> b!4315973 m!4909829))

(declare-fun m!4909831 () Bool)

(assert (=> b!4315978 m!4909831))

(declare-fun m!4909833 () Bool)

(assert (=> b!4315967 m!4909833))

(declare-fun m!4909835 () Bool)

(assert (=> b!4315975 m!4909835))

(declare-fun m!4909837 () Bool)

(assert (=> b!4315970 m!4909837))

(declare-fun m!4909839 () Bool)

(assert (=> b!4315970 m!4909839))

(declare-fun m!4909841 () Bool)

(assert (=> bm!298611 m!4909841))

(declare-fun m!4909843 () Bool)

(assert (=> b!4315966 m!4909843))

(declare-fun m!4909845 () Bool)

(assert (=> b!4315969 m!4909845))

(declare-fun m!4909847 () Bool)

(assert (=> b!4315969 m!4909847))

(declare-fun m!4909849 () Bool)

(assert (=> b!4315969 m!4909849))

(declare-fun m!4909851 () Bool)

(assert (=> b!4315969 m!4909851))

(declare-fun m!4909853 () Bool)

(assert (=> b!4315976 m!4909853))

(declare-fun m!4909855 () Bool)

(assert (=> b!4315976 m!4909855))

(declare-fun m!4909857 () Bool)

(assert (=> b!4315976 m!4909857))

(declare-fun m!4909859 () Bool)

(assert (=> b!4315965 m!4909859))

(declare-fun m!4909861 () Bool)

(assert (=> b!4315965 m!4909861))

(declare-fun m!4909863 () Bool)

(assert (=> b!4315965 m!4909863))

(declare-fun m!4909865 () Bool)

(assert (=> b!4315965 m!4909865))

(declare-fun m!4909867 () Bool)

(assert (=> b!4315965 m!4909867))

(declare-fun m!4909869 () Bool)

(assert (=> b!4315965 m!4909869))

(declare-fun m!4909871 () Bool)

(assert (=> b!4315965 m!4909871))

(declare-fun m!4909873 () Bool)

(assert (=> b!4315965 m!4909873))

(assert (=> b!4315965 m!4909861))

(declare-fun m!4909875 () Bool)

(assert (=> b!4315965 m!4909875))

(declare-fun m!4909877 () Bool)

(assert (=> b!4315965 m!4909877))

(declare-fun m!4909879 () Bool)

(assert (=> b!4315965 m!4909879))

(assert (=> b!4315965 m!4909871))

(assert (=> b!4315965 m!4909875))

(declare-fun m!4909881 () Bool)

(assert (=> b!4315965 m!4909881))

(declare-fun m!4909883 () Bool)

(assert (=> b!4315965 m!4909883))

(declare-fun m!4909885 () Bool)

(assert (=> b!4315965 m!4909885))

(declare-fun m!4909887 () Bool)

(assert (=> b!4315965 m!4909887))

(declare-fun m!4909889 () Bool)

(assert (=> b!4315965 m!4909889))

(declare-fun m!4909891 () Bool)

(assert (=> b!4315965 m!4909891))

(declare-fun m!4909893 () Bool)

(assert (=> b!4315965 m!4909893))

(declare-fun m!4909895 () Bool)

(assert (=> b!4315965 m!4909895))

(declare-fun m!4909897 () Bool)

(assert (=> b!4315965 m!4909897))

(declare-fun m!4909899 () Bool)

(assert (=> b!4315972 m!4909899))

(declare-fun m!4909901 () Bool)

(assert (=> mapNonEmpty!21043 m!4909901))

(declare-fun m!4909903 () Bool)

(assert (=> b!4315977 m!4909903))

(check-sat (not b!4315967) (not b!4315976) (not b!4315972) (not mapNonEmpty!21043) tp_is_empty!23975 (not b!4315977) (not b!4315978) (not b!4315968) b_and!340309 (not b!4315975) (not bm!298611) (not b!4315969) (not b_next!129531) (not b!4315965) (not b_next!129533) (not b!4315970) tp_is_empty!23973 (not b!4315973) (not b!4315966) b_and!340311)
(check-sat b_and!340309 b_and!340311 (not b_next!129533) (not b_next!129531))

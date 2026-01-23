; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416612 () Bool)

(assert start!416612)

(declare-fun b!4325855 () Bool)

(declare-fun b_free!129075 () Bool)

(declare-fun b_next!129779 () Bool)

(assert (=> b!4325855 (= b_free!129075 (not b_next!129779))))

(declare-fun tp!1327669 () Bool)

(declare-fun b_and!340661 () Bool)

(assert (=> b!4325855 (= tp!1327669 b_and!340661)))

(declare-fun b!4325869 () Bool)

(declare-fun b_free!129077 () Bool)

(declare-fun b_next!129781 () Bool)

(assert (=> b!4325869 (= b_free!129077 (not b_next!129781))))

(declare-fun tp!1327668 () Bool)

(declare-fun b_and!340663 () Bool)

(assert (=> b!4325869 (= tp!1327668 b_and!340663)))

(declare-fun b!4325854 () Bool)

(declare-fun e!2691621 () Bool)

(declare-fun e!2691616 () Bool)

(declare-datatypes ((V!9896 0))(
  ( (V!9897 (val!16013 Int)) )
))
(declare-datatypes ((K!9694 0))(
  ( (K!9695 (val!16014 Int)) )
))
(declare-datatypes ((tuple2!47356 0))(
  ( (tuple2!47357 (_1!26966 K!9694) (_2!26966 V!9896)) )
))
(declare-datatypes ((List!48559 0))(
  ( (Nil!48435) (Cons!48435 (h!53903 tuple2!47356) (t!355465 List!48559)) )
))
(declare-datatypes ((array!17356 0))(
  ( (array!17357 (arr!7743 (Array (_ BitVec 32) (_ BitVec 64))) (size!35782 (_ BitVec 32))) )
))
(declare-datatypes ((array!17358 0))(
  ( (array!17359 (arr!7744 (Array (_ BitVec 32) List!48559)) (size!35783 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9558 0))(
  ( (LongMapFixedSize!9559 (defaultEntry!5184 Int) (mask!13431 (_ BitVec 32)) (extraKeys!5044 (_ BitVec 32)) (zeroValue!5056 List!48559) (minValue!5056 List!48559) (_size!9603 (_ BitVec 32)) (_keys!5105 array!17356) (_values!5080 array!17358) (_vacant!4842 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18925 0))(
  ( (Cell!18926 (v!42890 LongMapFixedSize!9558)) )
))
(declare-datatypes ((MutLongMap!4779 0))(
  ( (LongMap!4779 (underlying!9787 Cell!18925)) (MutLongMapExt!4778 (__x!30362 Int)) )
))
(declare-fun lt!1543077 () MutLongMap!4779)

(get-info :version)

(assert (=> b!4325854 (= e!2691621 (and e!2691616 ((_ is LongMap!4779) lt!1543077)))))

(declare-datatypes ((Hashable!4695 0))(
  ( (HashableExt!4694 (__x!30363 Int)) )
))
(declare-datatypes ((Cell!18927 0))(
  ( (Cell!18928 (v!42891 MutLongMap!4779)) )
))
(declare-datatypes ((MutableMap!4685 0))(
  ( (MutableMapExt!4684 (__x!30364 Int)) (HashMap!4685 (underlying!9788 Cell!18927) (hashF!7001 Hashable!4695) (_size!9604 (_ BitVec 32)) (defaultValue!4856 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4685)

(assert (=> b!4325854 (= lt!1543077 (v!42891 (underlying!9788 thiss!42308)))))

(declare-fun e!2691611 () Bool)

(declare-fun tp!1327667 () Bool)

(declare-fun tp!1327664 () Bool)

(declare-fun e!2691617 () Bool)

(declare-fun array_inv!5579 (array!17356) Bool)

(declare-fun array_inv!5580 (array!17358) Bool)

(assert (=> b!4325855 (= e!2691611 (and tp!1327669 tp!1327664 tp!1327667 (array_inv!5579 (_keys!5105 (v!42890 (underlying!9787 (v!42891 (underlying!9788 thiss!42308)))))) (array_inv!5580 (_values!5080 (v!42890 (underlying!9787 (v!42891 (underlying!9788 thiss!42308)))))) e!2691617))))

(declare-fun b!4325856 () Bool)

(declare-fun e!2691613 () Bool)

(declare-datatypes ((tuple2!47358 0))(
  ( (tuple2!47359 (_1!26967 (_ BitVec 64)) (_2!26967 List!48559)) )
))
(declare-datatypes ((List!48560 0))(
  ( (Nil!48436) (Cons!48436 (h!53904 tuple2!47358) (t!355466 List!48560)) )
))
(declare-datatypes ((ListLongMap!1221 0))(
  ( (ListLongMap!1222 (toList!2604 List!48560)) )
))
(declare-fun lt!1543096 () ListLongMap!1221)

(declare-fun allKeysSameHashInMap!408 (ListLongMap!1221 Hashable!4695) Bool)

(assert (=> b!4325856 (= e!2691613 (allKeysSameHashInMap!408 lt!1543096 (hashF!7001 thiss!42308)))))

(declare-fun b!4325857 () Bool)

(declare-datatypes ((Unit!67999 0))(
  ( (Unit!68000) )
))
(declare-fun e!2691614 () Unit!67999)

(declare-fun Unit!68001 () Unit!67999)

(assert (=> b!4325857 (= e!2691614 Unit!68001)))

(declare-fun c!735970 () Bool)

(declare-fun lt!1543087 () List!48559)

(declare-fun isEmpty!28142 (List!48559) Bool)

(assert (=> b!4325857 (= c!735970 (not (isEmpty!28142 lt!1543087)))))

(declare-fun lt!1543080 () Unit!67999)

(declare-fun e!2691610 () Unit!67999)

(assert (=> b!4325857 (= lt!1543080 e!2691610)))

(declare-fun lt!1543091 () Unit!67999)

(declare-fun lt!1543092 () List!48559)

(declare-fun lt!1543093 () (_ BitVec 64))

(declare-fun lt!1543079 () ListLongMap!1221)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!198 (ListLongMap!1221 (_ BitVec 64) List!48559 Hashable!4695) Unit!67999)

(assert (=> b!4325857 (= lt!1543091 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!198 lt!1543079 lt!1543093 lt!1543092 (hashF!7001 thiss!42308)))))

(declare-fun lt!1543083 () ListLongMap!1221)

(declare-fun +!364 (ListLongMap!1221 tuple2!47358) ListLongMap!1221)

(assert (=> b!4325857 (= lt!1543083 (+!364 lt!1543079 (tuple2!47359 lt!1543093 lt!1543092)))))

(declare-fun res!1772751 () Bool)

(declare-fun lambda!134320 () Int)

(declare-fun forall!8841 (List!48560 Int) Bool)

(assert (=> b!4325857 (= res!1772751 (forall!8841 (toList!2604 lt!1543083) lambda!134320))))

(declare-fun e!2691624 () Bool)

(assert (=> b!4325857 (=> (not res!1772751) (not e!2691624))))

(assert (=> b!4325857 e!2691624))

(declare-fun lt!1543095 () Unit!67999)

(declare-fun v!9179 () V!9896)

(declare-fun key!2048 () K!9694)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!70 (ListLongMap!1221 (_ BitVec 64) List!48559 K!9694 V!9896 Hashable!4695) Unit!67999)

(assert (=> b!4325857 (= lt!1543095 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!70 lt!1543079 lt!1543093 lt!1543092 key!2048 v!9179 (hashF!7001 thiss!42308)))))

(declare-fun lt!1543086 () tuple2!47356)

(declare-datatypes ((ListMap!1881 0))(
  ( (ListMap!1882 (toList!2605 List!48559)) )
))
(declare-fun eq!165 (ListMap!1881 ListMap!1881) Bool)

(declare-fun extractMap!387 (List!48560) ListMap!1881)

(declare-fun +!365 (ListMap!1881 tuple2!47356) ListMap!1881)

(assert (=> b!4325857 (eq!165 (extractMap!387 (toList!2604 lt!1543083)) (+!365 (extractMap!387 (toList!2604 lt!1543079)) lt!1543086))))

(declare-datatypes ((tuple2!47360 0))(
  ( (tuple2!47361 (_1!26968 Bool) (_2!26968 MutLongMap!4779)) )
))
(declare-fun lt!1543088 () tuple2!47360)

(declare-fun map!10477 (MutLongMap!4779) ListLongMap!1221)

(assert (=> b!4325857 (= lt!1543096 (map!10477 (_2!26968 lt!1543088)))))

(declare-fun res!1772753 () Bool)

(assert (=> b!4325857 (= res!1772753 (forall!8841 (toList!2604 lt!1543096) lambda!134320))))

(assert (=> b!4325857 (=> (not res!1772753) (not e!2691613))))

(assert (=> b!4325857 e!2691613))

(declare-fun lt!1543089 () ListMap!1881)

(declare-fun call!300183 () ListMap!1881)

(assert (=> b!4325857 (= lt!1543089 call!300183)))

(declare-fun lt!1543084 () ListMap!1881)

(declare-fun lt!1543081 () ListMap!1881)

(assert (=> b!4325857 (= lt!1543084 (+!365 lt!1543081 lt!1543086))))

(assert (=> b!4325857 (eq!165 lt!1543089 lt!1543084)))

(declare-fun lt!1543090 () Unit!67999)

(declare-fun lemmaEquivalentThenSameContains!70 (ListMap!1881 ListMap!1881 K!9694) Unit!67999)

(assert (=> b!4325857 (= lt!1543090 (lemmaEquivalentThenSameContains!70 lt!1543089 lt!1543084 key!2048))))

(declare-fun lt!1543097 () Bool)

(declare-fun contains!10522 (ListMap!1881 K!9694) Bool)

(assert (=> b!4325857 (= lt!1543097 (contains!10522 lt!1543089 key!2048))))

(declare-fun lt!1543078 () Bool)

(assert (=> b!4325857 (= lt!1543078 (contains!10522 lt!1543084 key!2048))))

(assert (=> b!4325857 (and (= lt!1543097 lt!1543078) lt!1543078 lt!1543097)))

(declare-fun res!1772754 () Bool)

(declare-fun e!2691618 () Bool)

(assert (=> start!416612 (=> (not res!1772754) (not e!2691618))))

(assert (=> start!416612 (= res!1772754 ((_ is HashMap!4685) thiss!42308))))

(assert (=> start!416612 e!2691618))

(declare-fun e!2691615 () Bool)

(assert (=> start!416612 e!2691615))

(declare-fun tp_is_empty!24213 () Bool)

(assert (=> start!416612 tp_is_empty!24213))

(declare-fun tp_is_empty!24215 () Bool)

(assert (=> start!416612 tp_is_empty!24215))

(declare-fun b!4325858 () Bool)

(declare-fun e!2691612 () List!48559)

(assert (=> b!4325858 (= e!2691612 Nil!48435)))

(declare-fun b!4325859 () Bool)

(declare-fun e!2691619 () Bool)

(assert (=> b!4325859 (= e!2691619 e!2691611)))

(declare-fun mapIsEmpty!21297 () Bool)

(declare-fun mapRes!21297 () Bool)

(assert (=> mapIsEmpty!21297 mapRes!21297))

(declare-fun b!4325860 () Bool)

(declare-fun e!2691622 () Bool)

(assert (=> b!4325860 (= e!2691622 false)))

(declare-fun lt!1543094 () Unit!67999)

(assert (=> b!4325860 (= lt!1543094 e!2691614)))

(declare-fun c!735969 () Bool)

(assert (=> b!4325860 (= c!735969 (_1!26968 lt!1543088))))

(declare-fun lt!1543085 () MutableMap!4685)

(assert (=> b!4325860 (= lt!1543085 (HashMap!4685 (Cell!18928 (_2!26968 lt!1543088)) (hashF!7001 thiss!42308) (_size!9604 thiss!42308) (defaultValue!4856 thiss!42308)))))

(declare-fun update!560 (MutLongMap!4779 (_ BitVec 64) List!48559) tuple2!47360)

(assert (=> b!4325860 (= lt!1543088 (update!560 (v!42891 (underlying!9788 thiss!42308)) lt!1543093 lt!1543092))))

(assert (=> b!4325860 (= lt!1543092 (Cons!48435 lt!1543086 lt!1543087))))

(assert (=> b!4325860 (= lt!1543086 (tuple2!47357 key!2048 v!9179))))

(assert (=> b!4325860 (= lt!1543087 e!2691612)))

(declare-fun c!735971 () Bool)

(declare-fun contains!10523 (MutLongMap!4779 (_ BitVec 64)) Bool)

(assert (=> b!4325860 (= c!735971 (contains!10523 (v!42891 (underlying!9788 thiss!42308)) lt!1543093))))

(declare-fun hash!1240 (Hashable!4695 K!9694) (_ BitVec 64))

(assert (=> b!4325860 (= lt!1543093 (hash!1240 (hashF!7001 thiss!42308) key!2048))))

(declare-fun b!4325861 () Bool)

(declare-fun allKeysSameHash!264 (List!48559 (_ BitVec 64) Hashable!4695) Bool)

(declare-fun removePairForKey!287 (List!48559 K!9694) List!48559)

(assert (=> b!4325861 (allKeysSameHash!264 (removePairForKey!287 lt!1543087 key!2048) lt!1543093 (hashF!7001 thiss!42308))))

(declare-fun lt!1543082 () Unit!67999)

(declare-fun lemmaRemovePairForKeyPreservesHash!240 (List!48559 K!9694 (_ BitVec 64) Hashable!4695) Unit!67999)

(assert (=> b!4325861 (= lt!1543082 (lemmaRemovePairForKeyPreservesHash!240 lt!1543087 key!2048 lt!1543093 (hashF!7001 thiss!42308)))))

(assert (=> b!4325861 (allKeysSameHash!264 lt!1543087 lt!1543093 (hashF!7001 thiss!42308))))

(declare-fun lt!1543076 () Unit!67999)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!249 (List!48560 (_ BitVec 64) List!48559 Hashable!4695) Unit!67999)

(assert (=> b!4325861 (= lt!1543076 (lemmaInLongMapAllKeySameHashThenForTuple!249 (toList!2604 lt!1543079) lt!1543093 lt!1543087 (hashF!7001 thiss!42308)))))

(assert (=> b!4325861 (= e!2691610 lt!1543082)))

(declare-fun b!4325862 () Bool)

(declare-fun apply!11179 (MutLongMap!4779 (_ BitVec 64)) List!48559)

(assert (=> b!4325862 (= e!2691612 (apply!11179 (v!42891 (underlying!9788 thiss!42308)) lt!1543093))))

(declare-fun b!4325863 () Bool)

(declare-fun e!2691623 () Bool)

(assert (=> b!4325863 (= e!2691623 (= call!300183 lt!1543081))))

(declare-fun b!4325864 () Bool)

(declare-fun tp!1327663 () Bool)

(assert (=> b!4325864 (= e!2691617 (and tp!1327663 mapRes!21297))))

(declare-fun condMapEmpty!21297 () Bool)

(declare-fun mapDefault!21297 () List!48559)

(assert (=> b!4325864 (= condMapEmpty!21297 (= (arr!7744 (_values!5080 (v!42890 (underlying!9787 (v!42891 (underlying!9788 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48559)) mapDefault!21297)))))

(declare-fun b!4325865 () Bool)

(declare-fun res!1772756 () Bool)

(assert (=> b!4325865 (=> (not res!1772756) (not e!2691618))))

(declare-fun valid!3797 (MutableMap!4685) Bool)

(assert (=> b!4325865 (= res!1772756 (valid!3797 thiss!42308))))

(declare-fun b!4325866 () Bool)

(declare-fun Unit!68002 () Unit!67999)

(assert (=> b!4325866 (= e!2691614 Unit!68002)))

(declare-fun res!1772755 () Bool)

(assert (=> b!4325866 (= res!1772755 (valid!3797 lt!1543085))))

(assert (=> b!4325866 (=> (not res!1772755) (not e!2691623))))

(assert (=> b!4325866 e!2691623))

(declare-fun b!4325867 () Bool)

(assert (=> b!4325867 (= e!2691618 e!2691622)))

(declare-fun res!1772752 () Bool)

(assert (=> b!4325867 (=> (not res!1772752) (not e!2691622))))

(declare-fun contains!10524 (MutableMap!4685 K!9694) Bool)

(assert (=> b!4325867 (= res!1772752 (not (contains!10524 thiss!42308 key!2048)))))

(assert (=> b!4325867 (= lt!1543079 (map!10477 (v!42891 (underlying!9788 thiss!42308))))))

(declare-fun map!10478 (MutableMap!4685) ListMap!1881)

(assert (=> b!4325867 (= lt!1543081 (map!10478 thiss!42308))))

(declare-fun b!4325868 () Bool)

(declare-fun Unit!68003 () Unit!67999)

(assert (=> b!4325868 (= e!2691610 Unit!68003)))

(assert (=> b!4325869 (= e!2691615 (and e!2691621 tp!1327668))))

(declare-fun b!4325870 () Bool)

(assert (=> b!4325870 (= e!2691624 (allKeysSameHashInMap!408 lt!1543083 (hashF!7001 thiss!42308)))))

(declare-fun bm!300178 () Bool)

(assert (=> bm!300178 (= call!300183 (map!10478 lt!1543085))))

(declare-fun mapNonEmpty!21297 () Bool)

(declare-fun tp!1327666 () Bool)

(declare-fun tp!1327665 () Bool)

(assert (=> mapNonEmpty!21297 (= mapRes!21297 (and tp!1327666 tp!1327665))))

(declare-fun mapValue!21297 () List!48559)

(declare-fun mapRest!21297 () (Array (_ BitVec 32) List!48559))

(declare-fun mapKey!21297 () (_ BitVec 32))

(assert (=> mapNonEmpty!21297 (= (arr!7744 (_values!5080 (v!42890 (underlying!9787 (v!42891 (underlying!9788 thiss!42308)))))) (store mapRest!21297 mapKey!21297 mapValue!21297))))

(declare-fun b!4325871 () Bool)

(assert (=> b!4325871 (= e!2691616 e!2691619)))

(assert (= (and start!416612 res!1772754) b!4325865))

(assert (= (and b!4325865 res!1772756) b!4325867))

(assert (= (and b!4325867 res!1772752) b!4325860))

(assert (= (and b!4325860 c!735971) b!4325862))

(assert (= (and b!4325860 (not c!735971)) b!4325858))

(assert (= (and b!4325860 c!735969) b!4325857))

(assert (= (and b!4325860 (not c!735969)) b!4325866))

(assert (= (and b!4325857 c!735970) b!4325861))

(assert (= (and b!4325857 (not c!735970)) b!4325868))

(assert (= (and b!4325857 res!1772751) b!4325870))

(assert (= (and b!4325857 res!1772753) b!4325856))

(assert (= (and b!4325866 res!1772755) b!4325863))

(assert (= (or b!4325857 b!4325863) bm!300178))

(assert (= (and b!4325864 condMapEmpty!21297) mapIsEmpty!21297))

(assert (= (and b!4325864 (not condMapEmpty!21297)) mapNonEmpty!21297))

(assert (= b!4325855 b!4325864))

(assert (= b!4325859 b!4325855))

(assert (= b!4325871 b!4325859))

(assert (= (and b!4325854 ((_ is LongMap!4779) (v!42891 (underlying!9788 thiss!42308)))) b!4325871))

(assert (= b!4325869 b!4325854))

(assert (= (and start!416612 ((_ is HashMap!4685) thiss!42308)) b!4325869))

(declare-fun m!4920803 () Bool)

(assert (=> b!4325867 m!4920803))

(declare-fun m!4920805 () Bool)

(assert (=> b!4325867 m!4920805))

(declare-fun m!4920807 () Bool)

(assert (=> b!4325867 m!4920807))

(declare-fun m!4920809 () Bool)

(assert (=> bm!300178 m!4920809))

(declare-fun m!4920811 () Bool)

(assert (=> b!4325866 m!4920811))

(declare-fun m!4920813 () Bool)

(assert (=> b!4325861 m!4920813))

(declare-fun m!4920815 () Bool)

(assert (=> b!4325861 m!4920815))

(assert (=> b!4325861 m!4920813))

(declare-fun m!4920817 () Bool)

(assert (=> b!4325861 m!4920817))

(declare-fun m!4920819 () Bool)

(assert (=> b!4325861 m!4920819))

(declare-fun m!4920821 () Bool)

(assert (=> b!4325861 m!4920821))

(declare-fun m!4920823 () Bool)

(assert (=> mapNonEmpty!21297 m!4920823))

(declare-fun m!4920825 () Bool)

(assert (=> b!4325857 m!4920825))

(declare-fun m!4920827 () Bool)

(assert (=> b!4325857 m!4920827))

(declare-fun m!4920829 () Bool)

(assert (=> b!4325857 m!4920829))

(declare-fun m!4920831 () Bool)

(assert (=> b!4325857 m!4920831))

(declare-fun m!4920833 () Bool)

(assert (=> b!4325857 m!4920833))

(declare-fun m!4920835 () Bool)

(assert (=> b!4325857 m!4920835))

(declare-fun m!4920837 () Bool)

(assert (=> b!4325857 m!4920837))

(declare-fun m!4920839 () Bool)

(assert (=> b!4325857 m!4920839))

(declare-fun m!4920841 () Bool)

(assert (=> b!4325857 m!4920841))

(declare-fun m!4920843 () Bool)

(assert (=> b!4325857 m!4920843))

(declare-fun m!4920845 () Bool)

(assert (=> b!4325857 m!4920845))

(declare-fun m!4920847 () Bool)

(assert (=> b!4325857 m!4920847))

(declare-fun m!4920849 () Bool)

(assert (=> b!4325857 m!4920849))

(declare-fun m!4920851 () Bool)

(assert (=> b!4325857 m!4920851))

(declare-fun m!4920853 () Bool)

(assert (=> b!4325857 m!4920853))

(assert (=> b!4325857 m!4920827))

(assert (=> b!4325857 m!4920847))

(assert (=> b!4325857 m!4920845))

(declare-fun m!4920855 () Bool)

(assert (=> b!4325857 m!4920855))

(declare-fun m!4920857 () Bool)

(assert (=> b!4325860 m!4920857))

(declare-fun m!4920859 () Bool)

(assert (=> b!4325860 m!4920859))

(declare-fun m!4920861 () Bool)

(assert (=> b!4325860 m!4920861))

(declare-fun m!4920863 () Bool)

(assert (=> b!4325856 m!4920863))

(declare-fun m!4920865 () Bool)

(assert (=> b!4325862 m!4920865))

(declare-fun m!4920867 () Bool)

(assert (=> b!4325870 m!4920867))

(declare-fun m!4920869 () Bool)

(assert (=> b!4325855 m!4920869))

(declare-fun m!4920871 () Bool)

(assert (=> b!4325855 m!4920871))

(declare-fun m!4920873 () Bool)

(assert (=> b!4325865 m!4920873))

(check-sat (not bm!300178) (not b!4325855) (not b!4325862) b_and!340661 (not b!4325861) (not b!4325857) (not b!4325870) tp_is_empty!24215 (not b!4325866) (not b!4325860) (not b_next!129781) tp_is_empty!24213 (not b!4325865) (not b!4325867) b_and!340663 (not b!4325864) (not b!4325856) (not mapNonEmpty!21297) (not b_next!129779))
(check-sat b_and!340661 b_and!340663 (not b_next!129781) (not b_next!129779))

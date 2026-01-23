; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414794 () Bool)

(assert start!414794)

(declare-fun b!4313753 () Bool)

(declare-fun b_free!128739 () Bool)

(declare-fun b_next!129443 () Bool)

(assert (=> b!4313753 (= b_free!128739 (not b_next!129443))))

(declare-fun tp!1325399 () Bool)

(declare-fun b_and!340205 () Bool)

(assert (=> b!4313753 (= tp!1325399 b_and!340205)))

(declare-fun b!4313758 () Bool)

(declare-fun b_free!128741 () Bool)

(declare-fun b_next!129445 () Bool)

(assert (=> b!4313758 (= b_free!128741 (not b_next!129445))))

(declare-fun tp!1325395 () Bool)

(declare-fun b_and!340207 () Bool)

(assert (=> b!4313758 (= tp!1325395 b_and!340207)))

(declare-fun b!4313749 () Bool)

(declare-fun e!2683191 () Bool)

(declare-datatypes ((K!9484 0))(
  ( (K!9485 (val!15845 Int)) )
))
(declare-datatypes ((V!9686 0))(
  ( (V!9687 (val!15846 Int)) )
))
(declare-datatypes ((tuple2!46838 0))(
  ( (tuple2!46839 (_1!26701 K!9484) (_2!26701 V!9686)) )
))
(declare-datatypes ((List!48385 0))(
  ( (Nil!48261) (Cons!48261 (h!53707 tuple2!46838) (t!355218 List!48385)) )
))
(declare-fun lt!1533379 () List!48385)

(declare-fun noDuplicateKeys!236 (List!48385) Bool)

(assert (=> b!4313749 (= e!2683191 (noDuplicateKeys!236 lt!1533379))))

(declare-fun b!4313750 () Bool)

(declare-fun e!2683179 () Bool)

(declare-datatypes ((tuple2!46840 0))(
  ( (tuple2!46841 (_1!26702 (_ BitVec 64)) (_2!26702 List!48385)) )
))
(declare-datatypes ((List!48386 0))(
  ( (Nil!48262) (Cons!48262 (h!53708 tuple2!46840) (t!355219 List!48386)) )
))
(declare-datatypes ((ListLongMap!1073 0))(
  ( (ListLongMap!1074 (toList!2460 List!48386)) )
))
(declare-fun lt!1533377 () ListLongMap!1073)

(declare-fun lt!1533387 () (_ BitVec 64))

(declare-fun contains!10252 (ListLongMap!1073 (_ BitVec 64)) Bool)

(assert (=> b!4313750 (= e!2683179 (contains!10252 lt!1533377 lt!1533387))))

(declare-fun b!4313751 () Bool)

(declare-fun e!2683183 () Bool)

(declare-fun tp!1325396 () Bool)

(declare-fun mapRes!20953 () Bool)

(assert (=> b!4313751 (= e!2683183 (and tp!1325396 mapRes!20953))))

(declare-fun condMapEmpty!20953 () Bool)

(declare-datatypes ((array!16964 0))(
  ( (array!16965 (arr!7575 (Array (_ BitVec 32) (_ BitVec 64))) (size!35614 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4611 0))(
  ( (HashableExt!4610 (__x!30110 Int)) )
))
(declare-datatypes ((array!16966 0))(
  ( (array!16967 (arr!7576 (Array (_ BitVec 32) List!48385)) (size!35615 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9390 0))(
  ( (LongMapFixedSize!9391 (defaultEntry!5080 Int) (mask!13271 (_ BitVec 32)) (extraKeys!4944 (_ BitVec 32)) (zeroValue!4954 List!48385) (minValue!4954 List!48385) (_size!9433 (_ BitVec 32)) (_keys!4995 array!16964) (_values!4976 array!16966) (_vacant!4756 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18589 0))(
  ( (Cell!18590 (v!42486 LongMapFixedSize!9390)) )
))
(declare-datatypes ((MutLongMap!4695 0))(
  ( (LongMap!4695 (underlying!9619 Cell!18589)) (MutLongMapExt!4694 (__x!30111 Int)) )
))
(declare-datatypes ((Cell!18591 0))(
  ( (Cell!18592 (v!42487 MutLongMap!4695)) )
))
(declare-datatypes ((MutableMap!4601 0))(
  ( (MutableMapExt!4600 (__x!30112 Int)) (HashMap!4601 (underlying!9620 Cell!18591) (hashF!6782 Hashable!4611) (_size!9434 (_ BitVec 32)) (defaultValue!4772 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4601)

(declare-fun mapDefault!20953 () List!48385)

(assert (=> b!4313751 (= condMapEmpty!20953 (= (arr!7576 (_values!4976 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48385)) mapDefault!20953)))))

(declare-fun e!2683182 () Bool)

(declare-fun tp!1325398 () Bool)

(declare-fun tp!1325393 () Bool)

(declare-fun array_inv!5443 (array!16964) Bool)

(declare-fun array_inv!5444 (array!16966) Bool)

(assert (=> b!4313753 (= e!2683182 (and tp!1325399 tp!1325393 tp!1325398 (array_inv!5443 (_keys!4995 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) (array_inv!5444 (_values!4976 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) e!2683183))))

(declare-fun b!4313754 () Bool)

(declare-fun e!2683190 () Bool)

(assert (=> b!4313754 (= e!2683190 e!2683182)))

(declare-fun b!4313755 () Bool)

(declare-fun e!2683187 () Bool)

(declare-fun e!2683181 () Bool)

(assert (=> b!4313755 (= e!2683187 e!2683181)))

(declare-fun res!1768028 () Bool)

(assert (=> b!4313755 (=> (not res!1768028) (not e!2683181))))

(declare-fun key!2048 () K!9484)

(declare-fun contains!10253 (MutableMap!4601 K!9484) Bool)

(assert (=> b!4313755 (= res!1768028 (contains!10253 thiss!42308 key!2048))))

(declare-fun map!10268 (MutLongMap!4695) ListLongMap!1073)

(assert (=> b!4313755 (= lt!1533377 (map!10268 (v!42487 (underlying!9620 thiss!42308))))))

(declare-datatypes ((ListMap!1741 0))(
  ( (ListMap!1742 (toList!2461 List!48385)) )
))
(declare-fun lt!1533384 () ListMap!1741)

(declare-fun map!10269 (MutableMap!4601) ListMap!1741)

(assert (=> b!4313755 (= lt!1533384 (map!10269 thiss!42308))))

(declare-fun mapNonEmpty!20953 () Bool)

(declare-fun tp!1325394 () Bool)

(declare-fun tp!1325397 () Bool)

(assert (=> mapNonEmpty!20953 (= mapRes!20953 (and tp!1325394 tp!1325397))))

(declare-fun mapKey!20953 () (_ BitVec 32))

(declare-fun mapRest!20953 () (Array (_ BitVec 32) List!48385))

(declare-fun mapValue!20953 () List!48385)

(assert (=> mapNonEmpty!20953 (= (arr!7576 (_values!4976 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) (store mapRest!20953 mapKey!20953 mapValue!20953))))

(declare-fun b!4313756 () Bool)

(declare-fun e!2683188 () Bool)

(declare-fun e!2683186 () Bool)

(declare-fun lt!1533376 () MutLongMap!4695)

(get-info :version)

(assert (=> b!4313756 (= e!2683188 (and e!2683186 ((_ is LongMap!4695) lt!1533376)))))

(assert (=> b!4313756 (= lt!1533376 (v!42487 (underlying!9620 thiss!42308)))))

(declare-fun b!4313757 () Bool)

(declare-fun e!2683189 () Bool)

(assert (=> b!4313757 (= e!2683181 e!2683189)))

(declare-fun res!1768020 () Bool)

(assert (=> b!4313757 (=> (not res!1768020) (not e!2683189))))

(declare-datatypes ((tuple2!46842 0))(
  ( (tuple2!46843 (_1!26703 Bool) (_2!26703 MutLongMap!4695)) )
))
(declare-fun update!471 (MutLongMap!4695 (_ BitVec 64) List!48385) tuple2!46842)

(assert (=> b!4313757 (= res!1768020 (_1!26703 (update!471 (v!42487 (underlying!9620 thiss!42308)) lt!1533387 lt!1533379)))))

(declare-fun lt!1533380 () List!48385)

(declare-fun v!9179 () V!9686)

(assert (=> b!4313757 (= lt!1533379 (Cons!48261 (tuple2!46839 key!2048 v!9179) lt!1533380))))

(declare-fun lt!1533382 () List!48385)

(declare-fun removePairForKey!236 (List!48385 K!9484) List!48385)

(assert (=> b!4313757 (= lt!1533380 (removePairForKey!236 lt!1533382 key!2048))))

(declare-fun apply!11061 (MutLongMap!4695 (_ BitVec 64)) List!48385)

(assert (=> b!4313757 (= lt!1533382 (apply!11061 (v!42487 (underlying!9620 thiss!42308)) lt!1533387))))

(declare-fun hash!1071 (Hashable!4611 K!9484) (_ BitVec 64))

(assert (=> b!4313757 (= lt!1533387 (hash!1071 (hashF!6782 thiss!42308) key!2048))))

(declare-fun res!1768027 () Bool)

(assert (=> start!414794 (=> (not res!1768027) (not e!2683187))))

(assert (=> start!414794 (= res!1768027 ((_ is HashMap!4601) thiss!42308))))

(assert (=> start!414794 e!2683187))

(declare-fun e!2683180 () Bool)

(assert (=> start!414794 e!2683180))

(declare-fun tp_is_empty!23885 () Bool)

(assert (=> start!414794 tp_is_empty!23885))

(declare-fun tp_is_empty!23887 () Bool)

(assert (=> start!414794 tp_is_empty!23887))

(declare-fun b!4313752 () Bool)

(declare-fun res!1768029 () Bool)

(assert (=> b!4313752 (=> res!1768029 e!2683179)))

(declare-fun contains!10254 (ListMap!1741 K!9484) Bool)

(declare-fun extractMap!341 (List!48386) ListMap!1741)

(assert (=> b!4313752 (= res!1768029 (not (contains!10254 (extractMap!341 (toList!2460 lt!1533377)) key!2048)))))

(declare-fun mapIsEmpty!20953 () Bool)

(assert (=> mapIsEmpty!20953 mapRes!20953))

(assert (=> b!4313758 (= e!2683180 (and e!2683188 tp!1325395))))

(declare-fun b!4313759 () Bool)

(declare-fun res!1768021 () Bool)

(assert (=> b!4313759 (=> res!1768021 e!2683179)))

(declare-fun allKeysSameHash!209 (List!48385 (_ BitVec 64) Hashable!4611) Bool)

(assert (=> b!4313759 (= res!1768021 (not (allKeysSameHash!209 lt!1533379 lt!1533387 (hashF!6782 thiss!42308))))))

(declare-fun b!4313760 () Bool)

(declare-fun res!1768025 () Bool)

(assert (=> b!4313760 (=> (not res!1768025) (not e!2683187))))

(declare-fun valid!3692 (MutableMap!4601) Bool)

(assert (=> b!4313760 (= res!1768025 (valid!3692 thiss!42308))))

(declare-fun b!4313761 () Bool)

(declare-fun e!2683184 () Bool)

(declare-fun lt!1533385 () ListLongMap!1073)

(declare-fun allKeysSameHashInMap!356 (ListLongMap!1073 Hashable!4611) Bool)

(assert (=> b!4313761 (= e!2683184 (allKeysSameHashInMap!356 lt!1533385 (hashF!6782 thiss!42308)))))

(declare-fun b!4313762 () Bool)

(assert (=> b!4313762 (= e!2683186 e!2683190)))

(declare-fun b!4313763 () Bool)

(declare-fun res!1768030 () Bool)

(assert (=> b!4313763 (=> res!1768030 e!2683179)))

(assert (=> b!4313763 (= res!1768030 (not (allKeysSameHashInMap!356 lt!1533377 (hashF!6782 thiss!42308))))))

(declare-fun b!4313764 () Bool)

(assert (=> b!4313764 (= e!2683189 (not e!2683179))))

(declare-fun res!1768023 () Bool)

(assert (=> b!4313764 (=> res!1768023 e!2683179)))

(declare-fun lambda!133217 () Int)

(declare-fun forall!8761 (List!48386 Int) Bool)

(assert (=> b!4313764 (= res!1768023 (not (forall!8761 (toList!2460 lt!1533377) lambda!133217)))))

(assert (=> b!4313764 e!2683184))

(declare-fun res!1768024 () Bool)

(assert (=> b!4313764 (=> (not res!1768024) (not e!2683184))))

(assert (=> b!4313764 (= res!1768024 (forall!8761 (toList!2460 lt!1533385) lambda!133217))))

(declare-fun +!286 (ListLongMap!1073 tuple2!46840) ListLongMap!1073)

(assert (=> b!4313764 (= lt!1533385 (+!286 lt!1533377 (tuple2!46841 lt!1533387 lt!1533379)))))

(declare-datatypes ((Unit!67440 0))(
  ( (Unit!67441) )
))
(declare-fun lt!1533383 () Unit!67440)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!158 (ListLongMap!1073 (_ BitVec 64) List!48385 Hashable!4611) Unit!67440)

(assert (=> b!4313764 (= lt!1533383 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!158 lt!1533377 lt!1533387 lt!1533379 (hashF!6782 thiss!42308)))))

(assert (=> b!4313764 e!2683191))

(declare-fun res!1768022 () Bool)

(assert (=> b!4313764 (=> (not res!1768022) (not e!2683191))))

(assert (=> b!4313764 (= res!1768022 (noDuplicateKeys!236 lt!1533380))))

(declare-fun lt!1533378 () Unit!67440)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!184 (List!48385 K!9484) Unit!67440)

(assert (=> b!4313764 (= lt!1533378 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!184 lt!1533382 key!2048))))

(assert (=> b!4313764 (allKeysSameHash!209 lt!1533380 lt!1533387 (hashF!6782 thiss!42308))))

(declare-fun lt!1533381 () Unit!67440)

(declare-fun lemmaRemovePairForKeyPreservesHash!189 (List!48385 K!9484 (_ BitVec 64) Hashable!4611) Unit!67440)

(assert (=> b!4313764 (= lt!1533381 (lemmaRemovePairForKeyPreservesHash!189 lt!1533382 key!2048 lt!1533387 (hashF!6782 thiss!42308)))))

(assert (=> b!4313764 (allKeysSameHash!209 lt!1533382 lt!1533387 (hashF!6782 thiss!42308))))

(declare-fun lt!1533386 () Unit!67440)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!196 (List!48386 (_ BitVec 64) List!48385 Hashable!4611) Unit!67440)

(assert (=> b!4313764 (= lt!1533386 (lemmaInLongMapAllKeySameHashThenForTuple!196 (toList!2460 lt!1533377) lt!1533387 lt!1533382 (hashF!6782 thiss!42308)))))

(declare-fun b!4313765 () Bool)

(declare-fun res!1768026 () Bool)

(assert (=> b!4313765 (=> (not res!1768026) (not e!2683191))))

(declare-fun containsKey!348 (List!48385 K!9484) Bool)

(assert (=> b!4313765 (= res!1768026 (not (containsKey!348 lt!1533380 key!2048)))))

(assert (= (and start!414794 res!1768027) b!4313760))

(assert (= (and b!4313760 res!1768025) b!4313755))

(assert (= (and b!4313755 res!1768028) b!4313757))

(assert (= (and b!4313757 res!1768020) b!4313764))

(assert (= (and b!4313764 res!1768022) b!4313765))

(assert (= (and b!4313765 res!1768026) b!4313749))

(assert (= (and b!4313764 res!1768024) b!4313761))

(assert (= (and b!4313764 (not res!1768023)) b!4313763))

(assert (= (and b!4313763 (not res!1768030)) b!4313759))

(assert (= (and b!4313759 (not res!1768021)) b!4313752))

(assert (= (and b!4313752 (not res!1768029)) b!4313750))

(assert (= (and b!4313751 condMapEmpty!20953) mapIsEmpty!20953))

(assert (= (and b!4313751 (not condMapEmpty!20953)) mapNonEmpty!20953))

(assert (= b!4313753 b!4313751))

(assert (= b!4313754 b!4313753))

(assert (= b!4313762 b!4313754))

(assert (= (and b!4313756 ((_ is LongMap!4695) (v!42487 (underlying!9620 thiss!42308)))) b!4313762))

(assert (= b!4313758 b!4313756))

(assert (= (and start!414794 ((_ is HashMap!4601) thiss!42308)) b!4313758))

(declare-fun m!4906881 () Bool)

(assert (=> b!4313750 m!4906881))

(declare-fun m!4906883 () Bool)

(assert (=> b!4313757 m!4906883))

(declare-fun m!4906885 () Bool)

(assert (=> b!4313757 m!4906885))

(declare-fun m!4906887 () Bool)

(assert (=> b!4313757 m!4906887))

(declare-fun m!4906889 () Bool)

(assert (=> b!4313757 m!4906889))

(declare-fun m!4906891 () Bool)

(assert (=> b!4313759 m!4906891))

(declare-fun m!4906893 () Bool)

(assert (=> b!4313760 m!4906893))

(declare-fun m!4906895 () Bool)

(assert (=> b!4313765 m!4906895))

(declare-fun m!4906897 () Bool)

(assert (=> b!4313753 m!4906897))

(declare-fun m!4906899 () Bool)

(assert (=> b!4313753 m!4906899))

(declare-fun m!4906901 () Bool)

(assert (=> b!4313755 m!4906901))

(declare-fun m!4906903 () Bool)

(assert (=> b!4313755 m!4906903))

(declare-fun m!4906905 () Bool)

(assert (=> b!4313755 m!4906905))

(declare-fun m!4906907 () Bool)

(assert (=> b!4313763 m!4906907))

(declare-fun m!4906909 () Bool)

(assert (=> b!4313764 m!4906909))

(declare-fun m!4906911 () Bool)

(assert (=> b!4313764 m!4906911))

(declare-fun m!4906913 () Bool)

(assert (=> b!4313764 m!4906913))

(declare-fun m!4906915 () Bool)

(assert (=> b!4313764 m!4906915))

(declare-fun m!4906917 () Bool)

(assert (=> b!4313764 m!4906917))

(declare-fun m!4906919 () Bool)

(assert (=> b!4313764 m!4906919))

(declare-fun m!4906921 () Bool)

(assert (=> b!4313764 m!4906921))

(declare-fun m!4906923 () Bool)

(assert (=> b!4313764 m!4906923))

(declare-fun m!4906925 () Bool)

(assert (=> b!4313764 m!4906925))

(declare-fun m!4906927 () Bool)

(assert (=> b!4313764 m!4906927))

(declare-fun m!4906929 () Bool)

(assert (=> b!4313752 m!4906929))

(assert (=> b!4313752 m!4906929))

(declare-fun m!4906931 () Bool)

(assert (=> b!4313752 m!4906931))

(declare-fun m!4906933 () Bool)

(assert (=> b!4313761 m!4906933))

(declare-fun m!4906935 () Bool)

(assert (=> b!4313749 m!4906935))

(declare-fun m!4906937 () Bool)

(assert (=> mapNonEmpty!20953 m!4906937))

(check-sat (not b!4313759) (not b!4313763) (not b!4313753) (not b!4313761) (not b!4313757) (not b_next!129443) (not b!4313765) (not b!4313749) tp_is_empty!23887 b_and!340207 b_and!340205 (not b!4313764) (not b!4313751) (not b!4313750) (not mapNonEmpty!20953) (not b_next!129445) tp_is_empty!23885 (not b!4313752) (not b!4313755) (not b!4313760))
(check-sat b_and!340205 b_and!340207 (not b_next!129445) (not b_next!129443))
(get-model)

(declare-fun bs!605497 () Bool)

(declare-fun b!4313770 () Bool)

(assert (= bs!605497 (and b!4313770 b!4313764)))

(declare-fun lambda!133220 () Int)

(assert (=> bs!605497 (= lambda!133220 lambda!133217)))

(declare-fun d!1268818 () Bool)

(declare-fun res!1768035 () Bool)

(declare-fun e!2683194 () Bool)

(assert (=> d!1268818 (=> (not res!1768035) (not e!2683194))))

(declare-fun valid!3693 (MutLongMap!4695) Bool)

(assert (=> d!1268818 (= res!1768035 (valid!3693 (v!42487 (underlying!9620 thiss!42308))))))

(assert (=> d!1268818 (= (valid!3692 thiss!42308) e!2683194)))

(declare-fun res!1768036 () Bool)

(assert (=> b!4313770 (=> (not res!1768036) (not e!2683194))))

(assert (=> b!4313770 (= res!1768036 (forall!8761 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308)))) lambda!133220))))

(declare-fun b!4313771 () Bool)

(assert (=> b!4313771 (= e!2683194 (allKeysSameHashInMap!356 (map!10268 (v!42487 (underlying!9620 thiss!42308))) (hashF!6782 thiss!42308)))))

(assert (= (and d!1268818 res!1768035) b!4313770))

(assert (= (and b!4313770 res!1768036) b!4313771))

(declare-fun m!4906939 () Bool)

(assert (=> d!1268818 m!4906939))

(assert (=> b!4313770 m!4906903))

(declare-fun m!4906941 () Bool)

(assert (=> b!4313770 m!4906941))

(assert (=> b!4313771 m!4906903))

(assert (=> b!4313771 m!4906903))

(declare-fun m!4906943 () Bool)

(assert (=> b!4313771 m!4906943))

(assert (=> b!4313760 d!1268818))

(declare-fun d!1268820 () Bool)

(assert (=> d!1268820 (= (array_inv!5443 (_keys!4995 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) (bvsge (size!35614 (_keys!4995 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4313753 d!1268820))

(declare-fun d!1268822 () Bool)

(assert (=> d!1268822 (= (array_inv!5444 (_values!4976 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) (bvsge (size!35615 (_values!4976 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4313753 d!1268822))

(declare-fun b!4313790 () Bool)

(declare-fun e!2683208 () Bool)

(declare-fun e!2683211 () Bool)

(assert (=> b!4313790 (= e!2683208 e!2683211)))

(declare-fun res!1768045 () Bool)

(assert (=> b!4313790 (=> (not res!1768045) (not e!2683211))))

(declare-datatypes ((Option!10254 0))(
  ( (None!10253) (Some!10253 (v!42492 V!9686)) )
))
(declare-fun isDefined!7556 (Option!10254) Bool)

(declare-fun getValueByKey!269 (List!48385 K!9484) Option!10254)

(assert (=> b!4313790 (= res!1768045 (isDefined!7556 (getValueByKey!269 (toList!2461 (extractMap!341 (toList!2460 lt!1533377))) key!2048)))))

(declare-fun b!4313791 () Bool)

(declare-datatypes ((List!48387 0))(
  ( (Nil!48263) (Cons!48263 (h!53710 K!9484) (t!355222 List!48387)) )
))
(declare-fun e!2683210 () List!48387)

(declare-fun keys!16106 (ListMap!1741) List!48387)

(assert (=> b!4313791 (= e!2683210 (keys!16106 (extractMap!341 (toList!2460 lt!1533377))))))

(declare-fun d!1268824 () Bool)

(assert (=> d!1268824 e!2683208))

(declare-fun res!1768043 () Bool)

(assert (=> d!1268824 (=> res!1768043 e!2683208)))

(declare-fun e!2683209 () Bool)

(assert (=> d!1268824 (= res!1768043 e!2683209)))

(declare-fun res!1768044 () Bool)

(assert (=> d!1268824 (=> (not res!1768044) (not e!2683209))))

(declare-fun lt!1533409 () Bool)

(assert (=> d!1268824 (= res!1768044 (not lt!1533409))))

(declare-fun lt!1533405 () Bool)

(assert (=> d!1268824 (= lt!1533409 lt!1533405)))

(declare-fun lt!1533404 () Unit!67440)

(declare-fun e!2683212 () Unit!67440)

(assert (=> d!1268824 (= lt!1533404 e!2683212)))

(declare-fun c!733413 () Bool)

(assert (=> d!1268824 (= c!733413 lt!1533405)))

(declare-fun containsKey!349 (List!48385 K!9484) Bool)

(assert (=> d!1268824 (= lt!1533405 (containsKey!349 (toList!2461 (extractMap!341 (toList!2460 lt!1533377))) key!2048))))

(assert (=> d!1268824 (= (contains!10254 (extractMap!341 (toList!2460 lt!1533377)) key!2048) lt!1533409)))

(declare-fun b!4313792 () Bool)

(declare-fun getKeysList!47 (List!48385) List!48387)

(assert (=> b!4313792 (= e!2683210 (getKeysList!47 (toList!2461 (extractMap!341 (toList!2460 lt!1533377)))))))

(declare-fun b!4313793 () Bool)

(declare-fun lt!1533406 () Unit!67440)

(assert (=> b!4313793 (= e!2683212 lt!1533406)))

(declare-fun lt!1533408 () Unit!67440)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!189 (List!48385 K!9484) Unit!67440)

(assert (=> b!4313793 (= lt!1533408 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!2461 (extractMap!341 (toList!2460 lt!1533377))) key!2048))))

(assert (=> b!4313793 (isDefined!7556 (getValueByKey!269 (toList!2461 (extractMap!341 (toList!2460 lt!1533377))) key!2048))))

(declare-fun lt!1533411 () Unit!67440)

(assert (=> b!4313793 (= lt!1533411 lt!1533408)))

(declare-fun lemmaInListThenGetKeysListContains!44 (List!48385 K!9484) Unit!67440)

(assert (=> b!4313793 (= lt!1533406 (lemmaInListThenGetKeysListContains!44 (toList!2461 (extractMap!341 (toList!2460 lt!1533377))) key!2048))))

(declare-fun call!298403 () Bool)

(assert (=> b!4313793 call!298403))

(declare-fun b!4313794 () Bool)

(declare-fun e!2683207 () Unit!67440)

(assert (=> b!4313794 (= e!2683212 e!2683207)))

(declare-fun c!733415 () Bool)

(assert (=> b!4313794 (= c!733415 call!298403)))

(declare-fun b!4313795 () Bool)

(declare-fun contains!10255 (List!48387 K!9484) Bool)

(assert (=> b!4313795 (= e!2683209 (not (contains!10255 (keys!16106 (extractMap!341 (toList!2460 lt!1533377))) key!2048)))))

(declare-fun b!4313796 () Bool)

(assert (=> b!4313796 false))

(declare-fun lt!1533407 () Unit!67440)

(declare-fun lt!1533410 () Unit!67440)

(assert (=> b!4313796 (= lt!1533407 lt!1533410)))

(assert (=> b!4313796 (containsKey!349 (toList!2461 (extractMap!341 (toList!2460 lt!1533377))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!44 (List!48385 K!9484) Unit!67440)

(assert (=> b!4313796 (= lt!1533410 (lemmaInGetKeysListThenContainsKey!44 (toList!2461 (extractMap!341 (toList!2460 lt!1533377))) key!2048))))

(declare-fun Unit!67442 () Unit!67440)

(assert (=> b!4313796 (= e!2683207 Unit!67442)))

(declare-fun bm!298398 () Bool)

(assert (=> bm!298398 (= call!298403 (contains!10255 e!2683210 key!2048))))

(declare-fun c!733414 () Bool)

(assert (=> bm!298398 (= c!733414 c!733413)))

(declare-fun b!4313797 () Bool)

(assert (=> b!4313797 (= e!2683211 (contains!10255 (keys!16106 (extractMap!341 (toList!2460 lt!1533377))) key!2048))))

(declare-fun b!4313798 () Bool)

(declare-fun Unit!67443 () Unit!67440)

(assert (=> b!4313798 (= e!2683207 Unit!67443)))

(assert (= (and d!1268824 c!733413) b!4313793))

(assert (= (and d!1268824 (not c!733413)) b!4313794))

(assert (= (and b!4313794 c!733415) b!4313796))

(assert (= (and b!4313794 (not c!733415)) b!4313798))

(assert (= (or b!4313793 b!4313794) bm!298398))

(assert (= (and bm!298398 c!733414) b!4313792))

(assert (= (and bm!298398 (not c!733414)) b!4313791))

(assert (= (and d!1268824 res!1768044) b!4313795))

(assert (= (and d!1268824 (not res!1768043)) b!4313790))

(assert (= (and b!4313790 res!1768045) b!4313797))

(declare-fun m!4906945 () Bool)

(assert (=> b!4313793 m!4906945))

(declare-fun m!4906947 () Bool)

(assert (=> b!4313793 m!4906947))

(assert (=> b!4313793 m!4906947))

(declare-fun m!4906949 () Bool)

(assert (=> b!4313793 m!4906949))

(declare-fun m!4906951 () Bool)

(assert (=> b!4313793 m!4906951))

(assert (=> b!4313795 m!4906929))

(declare-fun m!4906953 () Bool)

(assert (=> b!4313795 m!4906953))

(assert (=> b!4313795 m!4906953))

(declare-fun m!4906955 () Bool)

(assert (=> b!4313795 m!4906955))

(declare-fun m!4906957 () Bool)

(assert (=> d!1268824 m!4906957))

(declare-fun m!4906959 () Bool)

(assert (=> bm!298398 m!4906959))

(assert (=> b!4313797 m!4906929))

(assert (=> b!4313797 m!4906953))

(assert (=> b!4313797 m!4906953))

(assert (=> b!4313797 m!4906955))

(assert (=> b!4313790 m!4906947))

(assert (=> b!4313790 m!4906947))

(assert (=> b!4313790 m!4906949))

(assert (=> b!4313796 m!4906957))

(declare-fun m!4906961 () Bool)

(assert (=> b!4313796 m!4906961))

(assert (=> b!4313791 m!4906929))

(assert (=> b!4313791 m!4906953))

(declare-fun m!4906963 () Bool)

(assert (=> b!4313792 m!4906963))

(assert (=> b!4313752 d!1268824))

(declare-fun bs!605498 () Bool)

(declare-fun d!1268826 () Bool)

(assert (= bs!605498 (and d!1268826 b!4313764)))

(declare-fun lambda!133223 () Int)

(assert (=> bs!605498 (= lambda!133223 lambda!133217)))

(declare-fun bs!605499 () Bool)

(assert (= bs!605499 (and d!1268826 b!4313770)))

(assert (=> bs!605499 (= lambda!133223 lambda!133220)))

(declare-fun lt!1533414 () ListMap!1741)

(declare-fun invariantList!583 (List!48385) Bool)

(assert (=> d!1268826 (invariantList!583 (toList!2461 lt!1533414))))

(declare-fun e!2683215 () ListMap!1741)

(assert (=> d!1268826 (= lt!1533414 e!2683215)))

(declare-fun c!733418 () Bool)

(assert (=> d!1268826 (= c!733418 ((_ is Cons!48262) (toList!2460 lt!1533377)))))

(assert (=> d!1268826 (forall!8761 (toList!2460 lt!1533377) lambda!133223)))

(assert (=> d!1268826 (= (extractMap!341 (toList!2460 lt!1533377)) lt!1533414)))

(declare-fun b!4313803 () Bool)

(declare-fun addToMapMapFromBucket!41 (List!48385 ListMap!1741) ListMap!1741)

(assert (=> b!4313803 (= e!2683215 (addToMapMapFromBucket!41 (_2!26702 (h!53708 (toList!2460 lt!1533377))) (extractMap!341 (t!355219 (toList!2460 lt!1533377)))))))

(declare-fun b!4313804 () Bool)

(assert (=> b!4313804 (= e!2683215 (ListMap!1742 Nil!48261))))

(assert (= (and d!1268826 c!733418) b!4313803))

(assert (= (and d!1268826 (not c!733418)) b!4313804))

(declare-fun m!4906965 () Bool)

(assert (=> d!1268826 m!4906965))

(declare-fun m!4906967 () Bool)

(assert (=> d!1268826 m!4906967))

(declare-fun m!4906969 () Bool)

(assert (=> b!4313803 m!4906969))

(assert (=> b!4313803 m!4906969))

(declare-fun m!4906971 () Bool)

(assert (=> b!4313803 m!4906971))

(assert (=> b!4313752 d!1268826))

(declare-fun bs!605500 () Bool)

(declare-fun d!1268828 () Bool)

(assert (= bs!605500 (and d!1268828 b!4313764)))

(declare-fun lambda!133226 () Int)

(assert (=> bs!605500 (not (= lambda!133226 lambda!133217))))

(declare-fun bs!605501 () Bool)

(assert (= bs!605501 (and d!1268828 b!4313770)))

(assert (=> bs!605501 (not (= lambda!133226 lambda!133220))))

(declare-fun bs!605502 () Bool)

(assert (= bs!605502 (and d!1268828 d!1268826)))

(assert (=> bs!605502 (not (= lambda!133226 lambda!133223))))

(assert (=> d!1268828 true))

(assert (=> d!1268828 (= (allKeysSameHashInMap!356 lt!1533385 (hashF!6782 thiss!42308)) (forall!8761 (toList!2460 lt!1533385) lambda!133226))))

(declare-fun bs!605503 () Bool)

(assert (= bs!605503 d!1268828))

(declare-fun m!4906973 () Bool)

(assert (=> bs!605503 m!4906973))

(assert (=> b!4313761 d!1268828))

(declare-fun bs!605504 () Bool)

(declare-fun d!1268830 () Bool)

(assert (= bs!605504 (and d!1268830 b!4313764)))

(declare-fun lambda!133227 () Int)

(assert (=> bs!605504 (not (= lambda!133227 lambda!133217))))

(declare-fun bs!605505 () Bool)

(assert (= bs!605505 (and d!1268830 b!4313770)))

(assert (=> bs!605505 (not (= lambda!133227 lambda!133220))))

(declare-fun bs!605506 () Bool)

(assert (= bs!605506 (and d!1268830 d!1268826)))

(assert (=> bs!605506 (not (= lambda!133227 lambda!133223))))

(declare-fun bs!605507 () Bool)

(assert (= bs!605507 (and d!1268830 d!1268828)))

(assert (=> bs!605507 (= lambda!133227 lambda!133226)))

(assert (=> d!1268830 true))

(assert (=> d!1268830 (= (allKeysSameHashInMap!356 lt!1533377 (hashF!6782 thiss!42308)) (forall!8761 (toList!2460 lt!1533377) lambda!133227))))

(declare-fun bs!605508 () Bool)

(assert (= bs!605508 d!1268830))

(declare-fun m!4906975 () Bool)

(assert (=> bs!605508 m!4906975))

(assert (=> b!4313763 d!1268830))

(declare-fun d!1268832 () Bool)

(assert (=> d!1268832 true))

(assert (=> d!1268832 true))

(declare-fun lambda!133230 () Int)

(declare-fun forall!8762 (List!48385 Int) Bool)

(assert (=> d!1268832 (= (allKeysSameHash!209 lt!1533380 lt!1533387 (hashF!6782 thiss!42308)) (forall!8762 lt!1533380 lambda!133230))))

(declare-fun bs!605509 () Bool)

(assert (= bs!605509 d!1268832))

(declare-fun m!4906977 () Bool)

(assert (=> bs!605509 m!4906977))

(assert (=> b!4313764 d!1268832))

(declare-fun bs!605510 () Bool)

(declare-fun d!1268834 () Bool)

(assert (= bs!605510 (and d!1268834 d!1268828)))

(declare-fun lambda!133233 () Int)

(assert (=> bs!605510 (= lambda!133233 lambda!133226)))

(declare-fun bs!605511 () Bool)

(assert (= bs!605511 (and d!1268834 d!1268826)))

(assert (=> bs!605511 (not (= lambda!133233 lambda!133223))))

(declare-fun bs!605512 () Bool)

(assert (= bs!605512 (and d!1268834 b!4313764)))

(assert (=> bs!605512 (not (= lambda!133233 lambda!133217))))

(declare-fun bs!605513 () Bool)

(assert (= bs!605513 (and d!1268834 b!4313770)))

(assert (=> bs!605513 (not (= lambda!133233 lambda!133220))))

(declare-fun bs!605514 () Bool)

(assert (= bs!605514 (and d!1268834 d!1268830)))

(assert (=> bs!605514 (= lambda!133233 lambda!133227)))

(assert (=> d!1268834 true))

(assert (=> d!1268834 (allKeysSameHash!209 lt!1533382 lt!1533387 (hashF!6782 thiss!42308))))

(declare-fun lt!1533417 () Unit!67440)

(declare-fun choose!26304 (List!48386 (_ BitVec 64) List!48385 Hashable!4611) Unit!67440)

(assert (=> d!1268834 (= lt!1533417 (choose!26304 (toList!2460 lt!1533377) lt!1533387 lt!1533382 (hashF!6782 thiss!42308)))))

(assert (=> d!1268834 (forall!8761 (toList!2460 lt!1533377) lambda!133233)))

(assert (=> d!1268834 (= (lemmaInLongMapAllKeySameHashThenForTuple!196 (toList!2460 lt!1533377) lt!1533387 lt!1533382 (hashF!6782 thiss!42308)) lt!1533417)))

(declare-fun bs!605515 () Bool)

(assert (= bs!605515 d!1268834))

(assert (=> bs!605515 m!4906909))

(declare-fun m!4906979 () Bool)

(assert (=> bs!605515 m!4906979))

(declare-fun m!4906981 () Bool)

(assert (=> bs!605515 m!4906981))

(assert (=> b!4313764 d!1268834))

(declare-fun d!1268836 () Bool)

(declare-fun res!1768050 () Bool)

(declare-fun e!2683220 () Bool)

(assert (=> d!1268836 (=> res!1768050 e!2683220)))

(assert (=> d!1268836 (= res!1768050 (not ((_ is Cons!48261) lt!1533380)))))

(assert (=> d!1268836 (= (noDuplicateKeys!236 lt!1533380) e!2683220)))

(declare-fun b!4313815 () Bool)

(declare-fun e!2683221 () Bool)

(assert (=> b!4313815 (= e!2683220 e!2683221)))

(declare-fun res!1768051 () Bool)

(assert (=> b!4313815 (=> (not res!1768051) (not e!2683221))))

(assert (=> b!4313815 (= res!1768051 (not (containsKey!348 (t!355218 lt!1533380) (_1!26701 (h!53707 lt!1533380)))))))

(declare-fun b!4313816 () Bool)

(assert (=> b!4313816 (= e!2683221 (noDuplicateKeys!236 (t!355218 lt!1533380)))))

(assert (= (and d!1268836 (not res!1768050)) b!4313815))

(assert (= (and b!4313815 res!1768051) b!4313816))

(declare-fun m!4906983 () Bool)

(assert (=> b!4313815 m!4906983))

(declare-fun m!4906985 () Bool)

(assert (=> b!4313816 m!4906985))

(assert (=> b!4313764 d!1268836))

(declare-fun bs!605516 () Bool)

(declare-fun d!1268838 () Bool)

(assert (= bs!605516 (and d!1268838 d!1268832)))

(declare-fun lambda!133234 () Int)

(assert (=> bs!605516 (= lambda!133234 lambda!133230)))

(assert (=> d!1268838 true))

(assert (=> d!1268838 true))

(assert (=> d!1268838 (= (allKeysSameHash!209 lt!1533382 lt!1533387 (hashF!6782 thiss!42308)) (forall!8762 lt!1533382 lambda!133234))))

(declare-fun bs!605517 () Bool)

(assert (= bs!605517 d!1268838))

(declare-fun m!4906987 () Bool)

(assert (=> bs!605517 m!4906987))

(assert (=> b!4313764 d!1268838))

(declare-fun d!1268840 () Bool)

(declare-fun e!2683224 () Bool)

(assert (=> d!1268840 e!2683224))

(declare-fun res!1768056 () Bool)

(assert (=> d!1268840 (=> (not res!1768056) (not e!2683224))))

(declare-fun lt!1533426 () ListLongMap!1073)

(assert (=> d!1268840 (= res!1768056 (contains!10252 lt!1533426 (_1!26702 (tuple2!46841 lt!1533387 lt!1533379))))))

(declare-fun lt!1533429 () List!48386)

(assert (=> d!1268840 (= lt!1533426 (ListLongMap!1074 lt!1533429))))

(declare-fun lt!1533428 () Unit!67440)

(declare-fun lt!1533427 () Unit!67440)

(assert (=> d!1268840 (= lt!1533428 lt!1533427)))

(declare-datatypes ((Option!10255 0))(
  ( (None!10254) (Some!10254 (v!42493 List!48385)) )
))
(declare-fun getValueByKey!270 (List!48386 (_ BitVec 64)) Option!10255)

(assert (=> d!1268840 (= (getValueByKey!270 lt!1533429 (_1!26702 (tuple2!46841 lt!1533387 lt!1533379))) (Some!10254 (_2!26702 (tuple2!46841 lt!1533387 lt!1533379))))))

(declare-fun lemmaContainsTupThenGetReturnValue!80 (List!48386 (_ BitVec 64) List!48385) Unit!67440)

(assert (=> d!1268840 (= lt!1533427 (lemmaContainsTupThenGetReturnValue!80 lt!1533429 (_1!26702 (tuple2!46841 lt!1533387 lt!1533379)) (_2!26702 (tuple2!46841 lt!1533387 lt!1533379))))))

(declare-fun insertStrictlySorted!44 (List!48386 (_ BitVec 64) List!48385) List!48386)

(assert (=> d!1268840 (= lt!1533429 (insertStrictlySorted!44 (toList!2460 lt!1533377) (_1!26702 (tuple2!46841 lt!1533387 lt!1533379)) (_2!26702 (tuple2!46841 lt!1533387 lt!1533379))))))

(assert (=> d!1268840 (= (+!286 lt!1533377 (tuple2!46841 lt!1533387 lt!1533379)) lt!1533426)))

(declare-fun b!4313821 () Bool)

(declare-fun res!1768057 () Bool)

(assert (=> b!4313821 (=> (not res!1768057) (not e!2683224))))

(assert (=> b!4313821 (= res!1768057 (= (getValueByKey!270 (toList!2460 lt!1533426) (_1!26702 (tuple2!46841 lt!1533387 lt!1533379))) (Some!10254 (_2!26702 (tuple2!46841 lt!1533387 lt!1533379)))))))

(declare-fun b!4313822 () Bool)

(declare-fun contains!10256 (List!48386 tuple2!46840) Bool)

(assert (=> b!4313822 (= e!2683224 (contains!10256 (toList!2460 lt!1533426) (tuple2!46841 lt!1533387 lt!1533379)))))

(assert (= (and d!1268840 res!1768056) b!4313821))

(assert (= (and b!4313821 res!1768057) b!4313822))

(declare-fun m!4906989 () Bool)

(assert (=> d!1268840 m!4906989))

(declare-fun m!4906991 () Bool)

(assert (=> d!1268840 m!4906991))

(declare-fun m!4906993 () Bool)

(assert (=> d!1268840 m!4906993))

(declare-fun m!4906995 () Bool)

(assert (=> d!1268840 m!4906995))

(declare-fun m!4906997 () Bool)

(assert (=> b!4313821 m!4906997))

(declare-fun m!4906999 () Bool)

(assert (=> b!4313822 m!4906999))

(assert (=> b!4313764 d!1268840))

(declare-fun bs!605518 () Bool)

(declare-fun d!1268842 () Bool)

(assert (= bs!605518 (and d!1268842 d!1268828)))

(declare-fun lambda!133239 () Int)

(assert (=> bs!605518 (not (= lambda!133239 lambda!133226))))

(declare-fun bs!605519 () Bool)

(assert (= bs!605519 (and d!1268842 d!1268826)))

(assert (=> bs!605519 (= lambda!133239 lambda!133223)))

(declare-fun bs!605520 () Bool)

(assert (= bs!605520 (and d!1268842 d!1268834)))

(assert (=> bs!605520 (not (= lambda!133239 lambda!133233))))

(declare-fun bs!605521 () Bool)

(assert (= bs!605521 (and d!1268842 b!4313764)))

(assert (=> bs!605521 (= lambda!133239 lambda!133217)))

(declare-fun bs!605522 () Bool)

(assert (= bs!605522 (and d!1268842 b!4313770)))

(assert (=> bs!605522 (= lambda!133239 lambda!133220)))

(declare-fun bs!605523 () Bool)

(assert (= bs!605523 (and d!1268842 d!1268830)))

(assert (=> bs!605523 (not (= lambda!133239 lambda!133227))))

(declare-fun e!2683227 () Bool)

(assert (=> d!1268842 e!2683227))

(declare-fun res!1768060 () Bool)

(assert (=> d!1268842 (=> (not res!1768060) (not e!2683227))))

(declare-fun lt!1533435 () ListLongMap!1073)

(assert (=> d!1268842 (= res!1768060 (forall!8761 (toList!2460 lt!1533435) lambda!133239))))

(assert (=> d!1268842 (= lt!1533435 (+!286 lt!1533377 (tuple2!46841 lt!1533387 lt!1533379)))))

(declare-fun lt!1533434 () Unit!67440)

(declare-fun choose!26305 (ListLongMap!1073 (_ BitVec 64) List!48385 Hashable!4611) Unit!67440)

(assert (=> d!1268842 (= lt!1533434 (choose!26305 lt!1533377 lt!1533387 lt!1533379 (hashF!6782 thiss!42308)))))

(assert (=> d!1268842 (forall!8761 (toList!2460 lt!1533377) lambda!133239)))

(assert (=> d!1268842 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!158 lt!1533377 lt!1533387 lt!1533379 (hashF!6782 thiss!42308)) lt!1533434)))

(declare-fun b!4313825 () Bool)

(assert (=> b!4313825 (= e!2683227 (allKeysSameHashInMap!356 lt!1533435 (hashF!6782 thiss!42308)))))

(assert (= (and d!1268842 res!1768060) b!4313825))

(declare-fun m!4907001 () Bool)

(assert (=> d!1268842 m!4907001))

(assert (=> d!1268842 m!4906913))

(declare-fun m!4907003 () Bool)

(assert (=> d!1268842 m!4907003))

(declare-fun m!4907005 () Bool)

(assert (=> d!1268842 m!4907005))

(declare-fun m!4907007 () Bool)

(assert (=> b!4313825 m!4907007))

(assert (=> b!4313764 d!1268842))

(declare-fun d!1268844 () Bool)

(assert (=> d!1268844 (allKeysSameHash!209 (removePairForKey!236 lt!1533382 key!2048) lt!1533387 (hashF!6782 thiss!42308))))

(declare-fun lt!1533438 () Unit!67440)

(declare-fun choose!26306 (List!48385 K!9484 (_ BitVec 64) Hashable!4611) Unit!67440)

(assert (=> d!1268844 (= lt!1533438 (choose!26306 lt!1533382 key!2048 lt!1533387 (hashF!6782 thiss!42308)))))

(assert (=> d!1268844 (noDuplicateKeys!236 lt!1533382)))

(assert (=> d!1268844 (= (lemmaRemovePairForKeyPreservesHash!189 lt!1533382 key!2048 lt!1533387 (hashF!6782 thiss!42308)) lt!1533438)))

(declare-fun bs!605524 () Bool)

(assert (= bs!605524 d!1268844))

(assert (=> bs!605524 m!4906885))

(assert (=> bs!605524 m!4906885))

(declare-fun m!4907009 () Bool)

(assert (=> bs!605524 m!4907009))

(declare-fun m!4907011 () Bool)

(assert (=> bs!605524 m!4907011))

(declare-fun m!4907013 () Bool)

(assert (=> bs!605524 m!4907013))

(assert (=> b!4313764 d!1268844))

(declare-fun d!1268846 () Bool)

(declare-fun res!1768065 () Bool)

(declare-fun e!2683232 () Bool)

(assert (=> d!1268846 (=> res!1768065 e!2683232)))

(assert (=> d!1268846 (= res!1768065 ((_ is Nil!48262) (toList!2460 lt!1533385)))))

(assert (=> d!1268846 (= (forall!8761 (toList!2460 lt!1533385) lambda!133217) e!2683232)))

(declare-fun b!4313830 () Bool)

(declare-fun e!2683233 () Bool)

(assert (=> b!4313830 (= e!2683232 e!2683233)))

(declare-fun res!1768066 () Bool)

(assert (=> b!4313830 (=> (not res!1768066) (not e!2683233))))

(declare-fun dynLambda!20458 (Int tuple2!46840) Bool)

(assert (=> b!4313830 (= res!1768066 (dynLambda!20458 lambda!133217 (h!53708 (toList!2460 lt!1533385))))))

(declare-fun b!4313831 () Bool)

(assert (=> b!4313831 (= e!2683233 (forall!8761 (t!355219 (toList!2460 lt!1533385)) lambda!133217))))

(assert (= (and d!1268846 (not res!1768065)) b!4313830))

(assert (= (and b!4313830 res!1768066) b!4313831))

(declare-fun b_lambda!126831 () Bool)

(assert (=> (not b_lambda!126831) (not b!4313830)))

(declare-fun m!4907015 () Bool)

(assert (=> b!4313830 m!4907015))

(declare-fun m!4907017 () Bool)

(assert (=> b!4313831 m!4907017))

(assert (=> b!4313764 d!1268846))

(declare-fun d!1268848 () Bool)

(assert (=> d!1268848 (noDuplicateKeys!236 (removePairForKey!236 lt!1533382 key!2048))))

(declare-fun lt!1533441 () Unit!67440)

(declare-fun choose!26307 (List!48385 K!9484) Unit!67440)

(assert (=> d!1268848 (= lt!1533441 (choose!26307 lt!1533382 key!2048))))

(assert (=> d!1268848 (noDuplicateKeys!236 lt!1533382)))

(assert (=> d!1268848 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!184 lt!1533382 key!2048) lt!1533441)))

(declare-fun bs!605525 () Bool)

(assert (= bs!605525 d!1268848))

(assert (=> bs!605525 m!4906885))

(assert (=> bs!605525 m!4906885))

(declare-fun m!4907019 () Bool)

(assert (=> bs!605525 m!4907019))

(declare-fun m!4907021 () Bool)

(assert (=> bs!605525 m!4907021))

(assert (=> bs!605525 m!4907013))

(assert (=> b!4313764 d!1268848))

(declare-fun d!1268850 () Bool)

(declare-fun res!1768067 () Bool)

(declare-fun e!2683234 () Bool)

(assert (=> d!1268850 (=> res!1768067 e!2683234)))

(assert (=> d!1268850 (= res!1768067 ((_ is Nil!48262) (toList!2460 lt!1533377)))))

(assert (=> d!1268850 (= (forall!8761 (toList!2460 lt!1533377) lambda!133217) e!2683234)))

(declare-fun b!4313832 () Bool)

(declare-fun e!2683235 () Bool)

(assert (=> b!4313832 (= e!2683234 e!2683235)))

(declare-fun res!1768068 () Bool)

(assert (=> b!4313832 (=> (not res!1768068) (not e!2683235))))

(assert (=> b!4313832 (= res!1768068 (dynLambda!20458 lambda!133217 (h!53708 (toList!2460 lt!1533377))))))

(declare-fun b!4313833 () Bool)

(assert (=> b!4313833 (= e!2683235 (forall!8761 (t!355219 (toList!2460 lt!1533377)) lambda!133217))))

(assert (= (and d!1268850 (not res!1768067)) b!4313832))

(assert (= (and b!4313832 res!1768068) b!4313833))

(declare-fun b_lambda!126833 () Bool)

(assert (=> (not b_lambda!126833) (not b!4313832)))

(declare-fun m!4907023 () Bool)

(assert (=> b!4313832 m!4907023))

(declare-fun m!4907025 () Bool)

(assert (=> b!4313833 m!4907025))

(assert (=> b!4313764 d!1268850))

(declare-fun bs!605526 () Bool)

(declare-fun b!4313862 () Bool)

(assert (= bs!605526 (and b!4313862 d!1268828)))

(declare-fun lambda!133242 () Int)

(assert (=> bs!605526 (not (= lambda!133242 lambda!133226))))

(declare-fun bs!605527 () Bool)

(assert (= bs!605527 (and b!4313862 d!1268826)))

(assert (=> bs!605527 (= lambda!133242 lambda!133223)))

(declare-fun bs!605528 () Bool)

(assert (= bs!605528 (and b!4313862 d!1268834)))

(assert (=> bs!605528 (not (= lambda!133242 lambda!133233))))

(declare-fun bs!605529 () Bool)

(assert (= bs!605529 (and b!4313862 b!4313764)))

(assert (=> bs!605529 (= lambda!133242 lambda!133217)))

(declare-fun bs!605530 () Bool)

(assert (= bs!605530 (and b!4313862 d!1268842)))

(assert (=> bs!605530 (= lambda!133242 lambda!133239)))

(declare-fun bs!605531 () Bool)

(assert (= bs!605531 (and b!4313862 b!4313770)))

(assert (=> bs!605531 (= lambda!133242 lambda!133220)))

(declare-fun bs!605532 () Bool)

(assert (= bs!605532 (and b!4313862 d!1268830)))

(assert (=> bs!605532 (not (= lambda!133242 lambda!133227))))

(declare-fun bm!298411 () Bool)

(declare-fun call!298419 () (_ BitVec 64))

(assert (=> bm!298411 (= call!298419 (hash!1071 (hashF!6782 thiss!42308) key!2048))))

(declare-fun call!298421 () List!48385)

(declare-fun c!733427 () Bool)

(declare-fun bm!298412 () Bool)

(declare-fun call!298418 () ListLongMap!1073)

(declare-fun lt!1533494 () ListLongMap!1073)

(declare-fun apply!11062 (ListLongMap!1073 (_ BitVec 64)) List!48385)

(assert (=> bm!298412 (= call!298421 (apply!11062 (ite c!733427 lt!1533494 call!298418) call!298419))))

(declare-fun bm!298413 () Bool)

(declare-datatypes ((Option!10256 0))(
  ( (None!10255) (Some!10255 (v!42494 tuple2!46838)) )
))
(declare-fun call!298416 () Option!10256)

(declare-fun getPair!144 (List!48385 K!9484) Option!10256)

(assert (=> bm!298413 (= call!298416 (getPair!144 call!298421 key!2048))))

(declare-fun b!4313856 () Bool)

(declare-fun e!2683250 () Unit!67440)

(declare-fun Unit!67444 () Unit!67440)

(assert (=> b!4313856 (= e!2683250 Unit!67444)))

(declare-fun bm!298414 () Bool)

(assert (=> bm!298414 (= call!298418 (map!10268 (v!42487 (underlying!9620 thiss!42308))))))

(declare-fun bm!298415 () Bool)

(declare-fun call!298420 () Bool)

(declare-fun isDefined!7557 (Option!10256) Bool)

(assert (=> bm!298415 (= call!298420 (isDefined!7557 call!298416))))

(declare-fun b!4313857 () Bool)

(assert (=> b!4313857 false))

(declare-fun lt!1533483 () Unit!67440)

(declare-fun lt!1533493 () Unit!67440)

(assert (=> b!4313857 (= lt!1533483 lt!1533493)))

(declare-fun lt!1533490 () List!48386)

(declare-fun lt!1533499 () (_ BitVec 64))

(declare-fun lt!1533491 () List!48385)

(assert (=> b!4313857 (contains!10256 lt!1533490 (tuple2!46841 lt!1533499 lt!1533491))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!155 (List!48386 (_ BitVec 64) List!48385) Unit!67440)

(assert (=> b!4313857 (= lt!1533493 (lemmaGetValueByKeyImpliesContainsTuple!155 lt!1533490 lt!1533499 lt!1533491))))

(assert (=> b!4313857 (= lt!1533491 (apply!11061 (v!42487 (underlying!9620 thiss!42308)) lt!1533499))))

(assert (=> b!4313857 (= lt!1533490 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308)))))))

(declare-fun lt!1533486 () Unit!67440)

(declare-fun lt!1533485 () Unit!67440)

(assert (=> b!4313857 (= lt!1533486 lt!1533485)))

(declare-fun lt!1533496 () List!48386)

(declare-fun isDefined!7558 (Option!10255) Bool)

(assert (=> b!4313857 (isDefined!7558 (getValueByKey!270 lt!1533496 lt!1533499))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!190 (List!48386 (_ BitVec 64)) Unit!67440)

(assert (=> b!4313857 (= lt!1533485 (lemmaContainsKeyImpliesGetValueByKeyDefined!190 lt!1533496 lt!1533499))))

(assert (=> b!4313857 (= lt!1533496 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308)))))))

(declare-fun lt!1533500 () Unit!67440)

(declare-fun lt!1533482 () Unit!67440)

(assert (=> b!4313857 (= lt!1533500 lt!1533482)))

(declare-fun lt!1533495 () List!48386)

(declare-fun containsKey!350 (List!48386 (_ BitVec 64)) Bool)

(assert (=> b!4313857 (containsKey!350 lt!1533495 lt!1533499)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!145 (List!48386 (_ BitVec 64)) Unit!67440)

(assert (=> b!4313857 (= lt!1533482 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!145 lt!1533495 lt!1533499))))

(assert (=> b!4313857 (= lt!1533495 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308)))))))

(declare-fun Unit!67445 () Unit!67440)

(assert (=> b!4313857 (= e!2683250 Unit!67445)))

(declare-fun b!4313858 () Bool)

(declare-fun e!2683251 () Bool)

(assert (=> b!4313858 (= e!2683251 call!298420)))

(declare-fun e!2683253 () Bool)

(declare-fun b!4313859 () Bool)

(assert (=> b!4313859 (= e!2683253 (isDefined!7557 (getPair!144 (apply!11061 (v!42487 (underlying!9620 thiss!42308)) lt!1533499) key!2048)))))

(declare-fun d!1268852 () Bool)

(declare-fun lt!1533498 () Bool)

(assert (=> d!1268852 (= lt!1533498 (contains!10254 (map!10269 thiss!42308) key!2048))))

(assert (=> d!1268852 (= lt!1533498 e!2683253)))

(declare-fun res!1768075 () Bool)

(assert (=> d!1268852 (=> (not res!1768075) (not e!2683253))))

(declare-fun contains!10257 (MutLongMap!4695 (_ BitVec 64)) Bool)

(assert (=> d!1268852 (= res!1768075 (contains!10257 (v!42487 (underlying!9620 thiss!42308)) lt!1533499))))

(declare-fun lt!1533501 () Unit!67440)

(declare-fun e!2683255 () Unit!67440)

(assert (=> d!1268852 (= lt!1533501 e!2683255)))

(assert (=> d!1268852 (= c!733427 (contains!10254 (extractMap!341 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308))))) key!2048))))

(declare-fun lt!1533488 () Unit!67440)

(declare-fun e!2683256 () Unit!67440)

(assert (=> d!1268852 (= lt!1533488 e!2683256)))

(declare-fun c!733429 () Bool)

(assert (=> d!1268852 (= c!733429 (contains!10257 (v!42487 (underlying!9620 thiss!42308)) lt!1533499))))

(assert (=> d!1268852 (= lt!1533499 (hash!1071 (hashF!6782 thiss!42308) key!2048))))

(assert (=> d!1268852 (valid!3692 thiss!42308)))

(assert (=> d!1268852 (= (contains!10253 thiss!42308 key!2048) lt!1533498)))

(declare-fun b!4313860 () Bool)

(declare-fun Unit!67446 () Unit!67440)

(assert (=> b!4313860 (= e!2683256 Unit!67446)))

(declare-fun b!4313861 () Bool)

(declare-fun e!2683252 () Unit!67440)

(declare-fun Unit!67447 () Unit!67440)

(assert (=> b!4313861 (= e!2683252 Unit!67447)))

(declare-fun forallContained!1511 (List!48386 Int tuple2!46840) Unit!67440)

(assert (=> b!4313862 (= e!2683256 (forallContained!1511 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308)))) lambda!133242 (tuple2!46841 lt!1533499 (apply!11061 (v!42487 (underlying!9620 thiss!42308)) lt!1533499))))))

(declare-fun c!733430 () Bool)

(assert (=> b!4313862 (= c!733430 (not (contains!10256 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308)))) (tuple2!46841 lt!1533499 (apply!11061 (v!42487 (underlying!9620 thiss!42308)) lt!1533499)))))))

(declare-fun lt!1533489 () Unit!67440)

(assert (=> b!4313862 (= lt!1533489 e!2683250)))

(declare-fun b!4313863 () Bool)

(declare-fun e!2683254 () Bool)

(assert (=> b!4313863 (= e!2683254 call!298420)))

(declare-fun call!298417 () Bool)

(declare-fun bm!298416 () Bool)

(assert (=> bm!298416 (= call!298417 (contains!10252 (ite c!733427 lt!1533494 call!298418) call!298419))))

(declare-fun b!4313864 () Bool)

(assert (=> b!4313864 (= e!2683255 e!2683252)))

(declare-fun res!1768076 () Bool)

(assert (=> b!4313864 (= res!1768076 call!298417)))

(assert (=> b!4313864 (=> (not res!1768076) (not e!2683251))))

(declare-fun c!733428 () Bool)

(assert (=> b!4313864 (= c!733428 e!2683251)))

(declare-fun b!4313865 () Bool)

(assert (=> b!4313865 false))

(declare-fun lt!1533497 () Unit!67440)

(declare-fun lt!1533492 () Unit!67440)

(assert (=> b!4313865 (= lt!1533497 lt!1533492)))

(declare-fun lt!1533487 () ListLongMap!1073)

(assert (=> b!4313865 (contains!10254 (extractMap!341 (toList!2460 lt!1533487)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!144 (ListLongMap!1073 K!9484 Hashable!4611) Unit!67440)

(assert (=> b!4313865 (= lt!1533492 (lemmaInLongMapThenInGenericMap!144 lt!1533487 key!2048 (hashF!6782 thiss!42308)))))

(assert (=> b!4313865 (= lt!1533487 call!298418)))

(declare-fun Unit!67448 () Unit!67440)

(assert (=> b!4313865 (= e!2683252 Unit!67448)))

(declare-fun b!4313866 () Bool)

(declare-fun lt!1533484 () Unit!67440)

(assert (=> b!4313866 (= e!2683255 lt!1533484)))

(assert (=> b!4313866 (= lt!1533494 call!298418)))

(declare-fun lemmaInGenericMapThenInLongMap!144 (ListLongMap!1073 K!9484 Hashable!4611) Unit!67440)

(assert (=> b!4313866 (= lt!1533484 (lemmaInGenericMapThenInLongMap!144 lt!1533494 key!2048 (hashF!6782 thiss!42308)))))

(declare-fun res!1768077 () Bool)

(assert (=> b!4313866 (= res!1768077 call!298417)))

(assert (=> b!4313866 (=> (not res!1768077) (not e!2683254))))

(assert (=> b!4313866 e!2683254))

(assert (= (and d!1268852 c!733429) b!4313862))

(assert (= (and d!1268852 (not c!733429)) b!4313860))

(assert (= (and b!4313862 c!733430) b!4313857))

(assert (= (and b!4313862 (not c!733430)) b!4313856))

(assert (= (and d!1268852 c!733427) b!4313866))

(assert (= (and d!1268852 (not c!733427)) b!4313864))

(assert (= (and b!4313866 res!1768077) b!4313863))

(assert (= (and b!4313864 res!1768076) b!4313858))

(assert (= (and b!4313864 c!733428) b!4313865))

(assert (= (and b!4313864 (not c!733428)) b!4313861))

(assert (= (or b!4313866 b!4313864 b!4313858 b!4313865) bm!298414))

(assert (= (or b!4313866 b!4313863 b!4313864 b!4313858) bm!298411))

(assert (= (or b!4313866 b!4313864) bm!298416))

(assert (= (or b!4313863 b!4313858) bm!298412))

(assert (= (or b!4313863 b!4313858) bm!298413))

(assert (= (or b!4313863 b!4313858) bm!298415))

(assert (= (and d!1268852 res!1768075) b!4313859))

(assert (=> b!4313862 m!4906903))

(declare-fun m!4907027 () Bool)

(assert (=> b!4313862 m!4907027))

(declare-fun m!4907029 () Bool)

(assert (=> b!4313862 m!4907029))

(declare-fun m!4907031 () Bool)

(assert (=> b!4313862 m!4907031))

(declare-fun m!4907033 () Bool)

(assert (=> bm!298415 m!4907033))

(assert (=> d!1268852 m!4906889))

(declare-fun m!4907035 () Bool)

(assert (=> d!1268852 m!4907035))

(declare-fun m!4907037 () Bool)

(assert (=> d!1268852 m!4907037))

(declare-fun m!4907039 () Bool)

(assert (=> d!1268852 m!4907039))

(assert (=> d!1268852 m!4906905))

(declare-fun m!4907041 () Bool)

(assert (=> d!1268852 m!4907041))

(assert (=> d!1268852 m!4906903))

(assert (=> d!1268852 m!4907037))

(assert (=> d!1268852 m!4906905))

(assert (=> d!1268852 m!4906893))

(assert (=> bm!298414 m!4906903))

(assert (=> b!4313859 m!4907027))

(assert (=> b!4313859 m!4907027))

(declare-fun m!4907043 () Bool)

(assert (=> b!4313859 m!4907043))

(assert (=> b!4313859 m!4907043))

(declare-fun m!4907045 () Bool)

(assert (=> b!4313859 m!4907045))

(declare-fun m!4907047 () Bool)

(assert (=> b!4313866 m!4907047))

(declare-fun m!4907049 () Bool)

(assert (=> bm!298412 m!4907049))

(assert (=> bm!298411 m!4906889))

(declare-fun m!4907051 () Bool)

(assert (=> bm!298416 m!4907051))

(declare-fun m!4907053 () Bool)

(assert (=> bm!298413 m!4907053))

(declare-fun m!4907055 () Bool)

(assert (=> b!4313857 m!4907055))

(declare-fun m!4907057 () Bool)

(assert (=> b!4313857 m!4907057))

(assert (=> b!4313857 m!4907027))

(declare-fun m!4907059 () Bool)

(assert (=> b!4313857 m!4907059))

(declare-fun m!4907061 () Bool)

(assert (=> b!4313857 m!4907061))

(declare-fun m!4907063 () Bool)

(assert (=> b!4313857 m!4907063))

(assert (=> b!4313857 m!4907059))

(declare-fun m!4907065 () Bool)

(assert (=> b!4313857 m!4907065))

(declare-fun m!4907067 () Bool)

(assert (=> b!4313857 m!4907067))

(assert (=> b!4313857 m!4906903))

(declare-fun m!4907069 () Bool)

(assert (=> b!4313865 m!4907069))

(assert (=> b!4313865 m!4907069))

(declare-fun m!4907071 () Bool)

(assert (=> b!4313865 m!4907071))

(declare-fun m!4907073 () Bool)

(assert (=> b!4313865 m!4907073))

(assert (=> b!4313755 d!1268852))

(declare-fun d!1268854 () Bool)

(declare-fun map!10270 (LongMapFixedSize!9390) ListLongMap!1073)

(assert (=> d!1268854 (= (map!10268 (v!42487 (underlying!9620 thiss!42308))) (map!10270 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308))))))))

(declare-fun bs!605533 () Bool)

(assert (= bs!605533 d!1268854))

(declare-fun m!4907075 () Bool)

(assert (=> bs!605533 m!4907075))

(assert (=> b!4313755 d!1268854))

(declare-fun d!1268856 () Bool)

(declare-fun lt!1533504 () ListMap!1741)

(assert (=> d!1268856 (invariantList!583 (toList!2461 lt!1533504))))

(assert (=> d!1268856 (= lt!1533504 (extractMap!341 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308))))))))

(assert (=> d!1268856 (valid!3692 thiss!42308)))

(assert (=> d!1268856 (= (map!10269 thiss!42308) lt!1533504)))

(declare-fun bs!605534 () Bool)

(assert (= bs!605534 d!1268856))

(declare-fun m!4907077 () Bool)

(assert (=> bs!605534 m!4907077))

(assert (=> bs!605534 m!4906903))

(assert (=> bs!605534 m!4907037))

(assert (=> bs!605534 m!4906893))

(assert (=> b!4313755 d!1268856))

(declare-fun d!1268858 () Bool)

(declare-fun res!1768082 () Bool)

(declare-fun e!2683261 () Bool)

(assert (=> d!1268858 (=> res!1768082 e!2683261)))

(assert (=> d!1268858 (= res!1768082 (and ((_ is Cons!48261) lt!1533380) (= (_1!26701 (h!53707 lt!1533380)) key!2048)))))

(assert (=> d!1268858 (= (containsKey!348 lt!1533380 key!2048) e!2683261)))

(declare-fun b!4313871 () Bool)

(declare-fun e!2683262 () Bool)

(assert (=> b!4313871 (= e!2683261 e!2683262)))

(declare-fun res!1768083 () Bool)

(assert (=> b!4313871 (=> (not res!1768083) (not e!2683262))))

(assert (=> b!4313871 (= res!1768083 ((_ is Cons!48261) lt!1533380))))

(declare-fun b!4313872 () Bool)

(assert (=> b!4313872 (= e!2683262 (containsKey!348 (t!355218 lt!1533380) key!2048))))

(assert (= (and d!1268858 (not res!1768082)) b!4313871))

(assert (= (and b!4313871 res!1768083) b!4313872))

(declare-fun m!4907079 () Bool)

(assert (=> b!4313872 m!4907079))

(assert (=> b!4313765 d!1268858))

(declare-fun b!4313891 () Bool)

(declare-fun e!2683274 () Bool)

(declare-fun call!298427 () ListLongMap!1073)

(declare-fun call!298426 () ListLongMap!1073)

(assert (=> b!4313891 (= e!2683274 (= call!298427 call!298426))))

(declare-fun b!4313892 () Bool)

(declare-fun e!2683273 () tuple2!46842)

(declare-fun lt!1533515 () tuple2!46842)

(assert (=> b!4313892 (= e!2683273 (tuple2!46843 false (_2!26703 lt!1533515)))))

(declare-fun b!4313893 () Bool)

(declare-fun e!2683276 () Bool)

(assert (=> b!4313893 (= e!2683274 e!2683276)))

(declare-fun res!1768090 () Bool)

(assert (=> b!4313893 (= res!1768090 (contains!10252 call!298427 lt!1533387))))

(assert (=> b!4313893 (=> (not res!1768090) (not e!2683276))))

(declare-fun d!1268860 () Bool)

(declare-fun e!2683277 () Bool)

(assert (=> d!1268860 e!2683277))

(declare-fun res!1768091 () Bool)

(assert (=> d!1268860 (=> (not res!1768091) (not e!2683277))))

(declare-fun lt!1533516 () tuple2!46842)

(assert (=> d!1268860 (= res!1768091 ((_ is LongMap!4695) (_2!26703 lt!1533516)))))

(assert (=> d!1268860 (= lt!1533516 e!2683273)))

(declare-fun c!733438 () Bool)

(assert (=> d!1268860 (= c!733438 (_1!26703 lt!1533515))))

(declare-fun e!2683275 () tuple2!46842)

(assert (=> d!1268860 (= lt!1533515 e!2683275)))

(declare-fun c!733437 () Bool)

(declare-fun imbalanced!62 (MutLongMap!4695) Bool)

(assert (=> d!1268860 (= c!733437 (imbalanced!62 (v!42487 (underlying!9620 thiss!42308))))))

(assert (=> d!1268860 (valid!3693 (v!42487 (underlying!9620 thiss!42308)))))

(assert (=> d!1268860 (= (update!471 (v!42487 (underlying!9620 thiss!42308)) lt!1533387 lt!1533379) lt!1533516)))

(declare-fun b!4313894 () Bool)

(assert (=> b!4313894 (= e!2683275 (tuple2!46843 true (v!42487 (underlying!9620 thiss!42308))))))

(declare-fun b!4313895 () Bool)

(declare-fun lt!1533513 () tuple2!46842)

(assert (=> b!4313895 (= e!2683275 (tuple2!46843 (_1!26703 lt!1533513) (_2!26703 lt!1533513)))))

(declare-fun repack!66 (MutLongMap!4695) tuple2!46842)

(assert (=> b!4313895 (= lt!1533513 (repack!66 (v!42487 (underlying!9620 thiss!42308))))))

(declare-fun bm!298421 () Bool)

(assert (=> bm!298421 (= call!298426 (map!10268 (v!42487 (underlying!9620 thiss!42308))))))

(declare-fun b!4313896 () Bool)

(assert (=> b!4313896 (= e!2683277 e!2683274)))

(declare-fun c!733439 () Bool)

(assert (=> b!4313896 (= c!733439 (_1!26703 lt!1533516))))

(declare-fun b!4313897 () Bool)

(declare-fun res!1768092 () Bool)

(assert (=> b!4313897 (=> (not res!1768092) (not e!2683277))))

(assert (=> b!4313897 (= res!1768092 (valid!3693 (_2!26703 lt!1533516)))))

(declare-fun b!4313898 () Bool)

(assert (=> b!4313898 (= e!2683276 (= call!298427 (+!286 call!298426 (tuple2!46841 lt!1533387 lt!1533379))))))

(declare-fun bm!298422 () Bool)

(assert (=> bm!298422 (= call!298427 (map!10268 (_2!26703 lt!1533516)))))

(declare-fun b!4313899 () Bool)

(declare-datatypes ((tuple2!46844 0))(
  ( (tuple2!46845 (_1!26704 Bool) (_2!26704 LongMapFixedSize!9390)) )
))
(declare-fun lt!1533514 () tuple2!46844)

(assert (=> b!4313899 (= e!2683273 (tuple2!46843 (_1!26704 lt!1533514) (LongMap!4695 (Cell!18590 (_2!26704 lt!1533514)))))))

(declare-fun update!472 (LongMapFixedSize!9390 (_ BitVec 64) List!48385) tuple2!46844)

(assert (=> b!4313899 (= lt!1533514 (update!472 (v!42486 (underlying!9619 (_2!26703 lt!1533515))) lt!1533387 lt!1533379))))

(assert (= (and d!1268860 c!733437) b!4313895))

(assert (= (and d!1268860 (not c!733437)) b!4313894))

(assert (= (and d!1268860 c!733438) b!4313899))

(assert (= (and d!1268860 (not c!733438)) b!4313892))

(assert (= (and d!1268860 res!1768091) b!4313897))

(assert (= (and b!4313897 res!1768092) b!4313896))

(assert (= (and b!4313896 c!733439) b!4313893))

(assert (= (and b!4313896 (not c!733439)) b!4313891))

(assert (= (and b!4313893 res!1768090) b!4313898))

(assert (= (or b!4313898 b!4313891) bm!298421))

(assert (= (or b!4313893 b!4313898 b!4313891) bm!298422))

(declare-fun m!4907081 () Bool)

(assert (=> b!4313897 m!4907081))

(declare-fun m!4907083 () Bool)

(assert (=> b!4313893 m!4907083))

(declare-fun m!4907085 () Bool)

(assert (=> b!4313898 m!4907085))

(declare-fun m!4907087 () Bool)

(assert (=> bm!298422 m!4907087))

(declare-fun m!4907089 () Bool)

(assert (=> b!4313895 m!4907089))

(declare-fun m!4907091 () Bool)

(assert (=> d!1268860 m!4907091))

(assert (=> d!1268860 m!4906939))

(assert (=> bm!298421 m!4906903))

(declare-fun m!4907093 () Bool)

(assert (=> b!4313899 m!4907093))

(assert (=> b!4313757 d!1268860))

(declare-fun b!4313910 () Bool)

(declare-fun e!2683283 () List!48385)

(assert (=> b!4313910 (= e!2683283 (Cons!48261 (h!53707 lt!1533382) (removePairForKey!236 (t!355218 lt!1533382) key!2048)))))

(declare-fun b!4313908 () Bool)

(declare-fun e!2683282 () List!48385)

(assert (=> b!4313908 (= e!2683282 (t!355218 lt!1533382))))

(declare-fun d!1268862 () Bool)

(declare-fun lt!1533519 () List!48385)

(assert (=> d!1268862 (not (containsKey!348 lt!1533519 key!2048))))

(assert (=> d!1268862 (= lt!1533519 e!2683282)))

(declare-fun c!733445 () Bool)

(assert (=> d!1268862 (= c!733445 (and ((_ is Cons!48261) lt!1533382) (= (_1!26701 (h!53707 lt!1533382)) key!2048)))))

(assert (=> d!1268862 (noDuplicateKeys!236 lt!1533382)))

(assert (=> d!1268862 (= (removePairForKey!236 lt!1533382 key!2048) lt!1533519)))

(declare-fun b!4313909 () Bool)

(assert (=> b!4313909 (= e!2683282 e!2683283)))

(declare-fun c!733444 () Bool)

(assert (=> b!4313909 (= c!733444 ((_ is Cons!48261) lt!1533382))))

(declare-fun b!4313911 () Bool)

(assert (=> b!4313911 (= e!2683283 Nil!48261)))

(assert (= (and d!1268862 c!733445) b!4313908))

(assert (= (and d!1268862 (not c!733445)) b!4313909))

(assert (= (and b!4313909 c!733444) b!4313910))

(assert (= (and b!4313909 (not c!733444)) b!4313911))

(declare-fun m!4907095 () Bool)

(assert (=> b!4313910 m!4907095))

(declare-fun m!4907097 () Bool)

(assert (=> d!1268862 m!4907097))

(assert (=> d!1268862 m!4907013))

(assert (=> b!4313757 d!1268862))

(declare-fun d!1268864 () Bool)

(declare-fun e!2683286 () Bool)

(assert (=> d!1268864 e!2683286))

(declare-fun c!733448 () Bool)

(assert (=> d!1268864 (= c!733448 (contains!10257 (v!42487 (underlying!9620 thiss!42308)) lt!1533387))))

(declare-fun lt!1533522 () List!48385)

(declare-fun apply!11063 (LongMapFixedSize!9390 (_ BitVec 64)) List!48385)

(assert (=> d!1268864 (= lt!1533522 (apply!11063 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))) lt!1533387))))

(assert (=> d!1268864 (valid!3693 (v!42487 (underlying!9620 thiss!42308)))))

(assert (=> d!1268864 (= (apply!11061 (v!42487 (underlying!9620 thiss!42308)) lt!1533387) lt!1533522)))

(declare-fun b!4313916 () Bool)

(declare-fun get!15624 (Option!10255) List!48385)

(assert (=> b!4313916 (= e!2683286 (= lt!1533522 (get!15624 (getValueByKey!270 (toList!2460 (map!10268 (v!42487 (underlying!9620 thiss!42308)))) lt!1533387))))))

(declare-fun b!4313917 () Bool)

(declare-fun dynLambda!20459 (Int (_ BitVec 64)) List!48385)

(assert (=> b!4313917 (= e!2683286 (= lt!1533522 (dynLambda!20459 (defaultEntry!5080 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308))))) lt!1533387)))))

(assert (=> b!4313917 ((_ is LongMap!4695) (v!42487 (underlying!9620 thiss!42308)))))

(assert (= (and d!1268864 c!733448) b!4313916))

(assert (= (and d!1268864 (not c!733448)) b!4313917))

(declare-fun b_lambda!126835 () Bool)

(assert (=> (not b_lambda!126835) (not b!4313917)))

(declare-fun t!355221 () Bool)

(declare-fun tb!257319 () Bool)

(assert (=> (and b!4313753 (= (defaultEntry!5080 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308))))) (defaultEntry!5080 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308)))))) t!355221) tb!257319))

(assert (=> b!4313917 t!355221))

(declare-fun result!314760 () Bool)

(declare-fun b_and!340209 () Bool)

(assert (= b_and!340205 (and (=> t!355221 result!314760) b_and!340209)))

(declare-fun m!4907099 () Bool)

(assert (=> d!1268864 m!4907099))

(declare-fun m!4907101 () Bool)

(assert (=> d!1268864 m!4907101))

(assert (=> d!1268864 m!4906939))

(assert (=> b!4313916 m!4906903))

(declare-fun m!4907103 () Bool)

(assert (=> b!4313916 m!4907103))

(assert (=> b!4313916 m!4907103))

(declare-fun m!4907105 () Bool)

(assert (=> b!4313916 m!4907105))

(declare-fun m!4907107 () Bool)

(assert (=> b!4313917 m!4907107))

(assert (=> b!4313757 d!1268864))

(declare-fun d!1268866 () Bool)

(declare-fun hash!1075 (Hashable!4611 K!9484) (_ BitVec 64))

(assert (=> d!1268866 (= (hash!1071 (hashF!6782 thiss!42308) key!2048) (hash!1075 (hashF!6782 thiss!42308) key!2048))))

(declare-fun bs!605535 () Bool)

(assert (= bs!605535 d!1268866))

(declare-fun m!4907109 () Bool)

(assert (=> bs!605535 m!4907109))

(assert (=> b!4313757 d!1268866))

(declare-fun d!1268868 () Bool)

(declare-fun res!1768093 () Bool)

(declare-fun e!2683287 () Bool)

(assert (=> d!1268868 (=> res!1768093 e!2683287)))

(assert (=> d!1268868 (= res!1768093 (not ((_ is Cons!48261) lt!1533379)))))

(assert (=> d!1268868 (= (noDuplicateKeys!236 lt!1533379) e!2683287)))

(declare-fun b!4313918 () Bool)

(declare-fun e!2683288 () Bool)

(assert (=> b!4313918 (= e!2683287 e!2683288)))

(declare-fun res!1768094 () Bool)

(assert (=> b!4313918 (=> (not res!1768094) (not e!2683288))))

(assert (=> b!4313918 (= res!1768094 (not (containsKey!348 (t!355218 lt!1533379) (_1!26701 (h!53707 lt!1533379)))))))

(declare-fun b!4313919 () Bool)

(assert (=> b!4313919 (= e!2683288 (noDuplicateKeys!236 (t!355218 lt!1533379)))))

(assert (= (and d!1268868 (not res!1768093)) b!4313918))

(assert (= (and b!4313918 res!1768094) b!4313919))

(declare-fun m!4907111 () Bool)

(assert (=> b!4313918 m!4907111))

(declare-fun m!4907113 () Bool)

(assert (=> b!4313919 m!4907113))

(assert (=> b!4313749 d!1268868))

(declare-fun d!1268870 () Bool)

(declare-fun e!2683294 () Bool)

(assert (=> d!1268870 e!2683294))

(declare-fun res!1768097 () Bool)

(assert (=> d!1268870 (=> res!1768097 e!2683294)))

(declare-fun lt!1533532 () Bool)

(assert (=> d!1268870 (= res!1768097 (not lt!1533532))))

(declare-fun lt!1533534 () Bool)

(assert (=> d!1268870 (= lt!1533532 lt!1533534)))

(declare-fun lt!1533533 () Unit!67440)

(declare-fun e!2683293 () Unit!67440)

(assert (=> d!1268870 (= lt!1533533 e!2683293)))

(declare-fun c!733451 () Bool)

(assert (=> d!1268870 (= c!733451 lt!1533534)))

(assert (=> d!1268870 (= lt!1533534 (containsKey!350 (toList!2460 lt!1533377) lt!1533387))))

(assert (=> d!1268870 (= (contains!10252 lt!1533377 lt!1533387) lt!1533532)))

(declare-fun b!4313926 () Bool)

(declare-fun lt!1533531 () Unit!67440)

(assert (=> b!4313926 (= e!2683293 lt!1533531)))

(assert (=> b!4313926 (= lt!1533531 (lemmaContainsKeyImpliesGetValueByKeyDefined!190 (toList!2460 lt!1533377) lt!1533387))))

(assert (=> b!4313926 (isDefined!7558 (getValueByKey!270 (toList!2460 lt!1533377) lt!1533387))))

(declare-fun b!4313927 () Bool)

(declare-fun Unit!67449 () Unit!67440)

(assert (=> b!4313927 (= e!2683293 Unit!67449)))

(declare-fun b!4313928 () Bool)

(assert (=> b!4313928 (= e!2683294 (isDefined!7558 (getValueByKey!270 (toList!2460 lt!1533377) lt!1533387)))))

(assert (= (and d!1268870 c!733451) b!4313926))

(assert (= (and d!1268870 (not c!733451)) b!4313927))

(assert (= (and d!1268870 (not res!1768097)) b!4313928))

(declare-fun m!4907115 () Bool)

(assert (=> d!1268870 m!4907115))

(declare-fun m!4907117 () Bool)

(assert (=> b!4313926 m!4907117))

(declare-fun m!4907119 () Bool)

(assert (=> b!4313926 m!4907119))

(assert (=> b!4313926 m!4907119))

(declare-fun m!4907121 () Bool)

(assert (=> b!4313926 m!4907121))

(assert (=> b!4313928 m!4907119))

(assert (=> b!4313928 m!4907119))

(assert (=> b!4313928 m!4907121))

(assert (=> b!4313750 d!1268870))

(declare-fun bs!605536 () Bool)

(declare-fun d!1268872 () Bool)

(assert (= bs!605536 (and d!1268872 d!1268832)))

(declare-fun lambda!133243 () Int)

(assert (=> bs!605536 (= lambda!133243 lambda!133230)))

(declare-fun bs!605537 () Bool)

(assert (= bs!605537 (and d!1268872 d!1268838)))

(assert (=> bs!605537 (= lambda!133243 lambda!133234)))

(assert (=> d!1268872 true))

(assert (=> d!1268872 true))

(assert (=> d!1268872 (= (allKeysSameHash!209 lt!1533379 lt!1533387 (hashF!6782 thiss!42308)) (forall!8762 lt!1533379 lambda!133243))))

(declare-fun bs!605538 () Bool)

(assert (= bs!605538 d!1268872))

(declare-fun m!4907123 () Bool)

(assert (=> bs!605538 m!4907123))

(assert (=> b!4313759 d!1268872))

(declare-fun mapIsEmpty!20956 () Bool)

(declare-fun mapRes!20956 () Bool)

(assert (=> mapIsEmpty!20956 mapRes!20956))

(declare-fun condMapEmpty!20956 () Bool)

(declare-fun mapDefault!20956 () List!48385)

(assert (=> mapNonEmpty!20953 (= condMapEmpty!20956 (= mapRest!20953 ((as const (Array (_ BitVec 32) List!48385)) mapDefault!20956)))))

(declare-fun e!2683299 () Bool)

(assert (=> mapNonEmpty!20953 (= tp!1325394 (and e!2683299 mapRes!20956))))

(declare-fun tp!1325407 () Bool)

(declare-fun b!4313936 () Bool)

(assert (=> b!4313936 (= e!2683299 (and tp_is_empty!23885 tp_is_empty!23887 tp!1325407))))

(declare-fun tp!1325406 () Bool)

(declare-fun b!4313935 () Bool)

(declare-fun e!2683300 () Bool)

(assert (=> b!4313935 (= e!2683300 (and tp_is_empty!23885 tp_is_empty!23887 tp!1325406))))

(declare-fun mapNonEmpty!20956 () Bool)

(declare-fun tp!1325408 () Bool)

(assert (=> mapNonEmpty!20956 (= mapRes!20956 (and tp!1325408 e!2683300))))

(declare-fun mapKey!20956 () (_ BitVec 32))

(declare-fun mapRest!20956 () (Array (_ BitVec 32) List!48385))

(declare-fun mapValue!20956 () List!48385)

(assert (=> mapNonEmpty!20956 (= mapRest!20953 (store mapRest!20956 mapKey!20956 mapValue!20956))))

(assert (= (and mapNonEmpty!20953 condMapEmpty!20956) mapIsEmpty!20956))

(assert (= (and mapNonEmpty!20953 (not condMapEmpty!20956)) mapNonEmpty!20956))

(assert (= (and mapNonEmpty!20956 ((_ is Cons!48261) mapValue!20956)) b!4313935))

(assert (= (and mapNonEmpty!20953 ((_ is Cons!48261) mapDefault!20956)) b!4313936))

(declare-fun m!4907125 () Bool)

(assert (=> mapNonEmpty!20956 m!4907125))

(declare-fun tp!1325411 () Bool)

(declare-fun e!2683303 () Bool)

(declare-fun b!4313941 () Bool)

(assert (=> b!4313941 (= e!2683303 (and tp_is_empty!23885 tp_is_empty!23887 tp!1325411))))

(assert (=> mapNonEmpty!20953 (= tp!1325397 e!2683303)))

(assert (= (and mapNonEmpty!20953 ((_ is Cons!48261) mapValue!20953)) b!4313941))

(declare-fun e!2683304 () Bool)

(declare-fun tp!1325412 () Bool)

(declare-fun b!4313942 () Bool)

(assert (=> b!4313942 (= e!2683304 (and tp_is_empty!23885 tp_is_empty!23887 tp!1325412))))

(assert (=> b!4313751 (= tp!1325396 e!2683304)))

(assert (= (and b!4313751 ((_ is Cons!48261) mapDefault!20953)) b!4313942))

(declare-fun e!2683305 () Bool)

(declare-fun tp!1325413 () Bool)

(declare-fun b!4313943 () Bool)

(assert (=> b!4313943 (= e!2683305 (and tp_is_empty!23885 tp_is_empty!23887 tp!1325413))))

(assert (=> b!4313753 (= tp!1325393 e!2683305)))

(assert (= (and b!4313753 ((_ is Cons!48261) (zeroValue!4954 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308))))))) b!4313943))

(declare-fun e!2683306 () Bool)

(declare-fun b!4313944 () Bool)

(declare-fun tp!1325414 () Bool)

(assert (=> b!4313944 (= e!2683306 (and tp_is_empty!23885 tp_is_empty!23887 tp!1325414))))

(assert (=> b!4313753 (= tp!1325398 e!2683306)))

(assert (= (and b!4313753 ((_ is Cons!48261) (minValue!4954 (v!42486 (underlying!9619 (v!42487 (underlying!9620 thiss!42308))))))) b!4313944))

(declare-fun b_lambda!126837 () Bool)

(assert (= b_lambda!126831 (or b!4313764 b_lambda!126837)))

(declare-fun bs!605539 () Bool)

(declare-fun d!1268874 () Bool)

(assert (= bs!605539 (and d!1268874 b!4313764)))

(assert (=> bs!605539 (= (dynLambda!20458 lambda!133217 (h!53708 (toList!2460 lt!1533385))) (noDuplicateKeys!236 (_2!26702 (h!53708 (toList!2460 lt!1533385)))))))

(declare-fun m!4907127 () Bool)

(assert (=> bs!605539 m!4907127))

(assert (=> b!4313830 d!1268874))

(declare-fun b_lambda!126839 () Bool)

(assert (= b_lambda!126835 (or (and b!4313753 b_free!128739) b_lambda!126839)))

(declare-fun b_lambda!126841 () Bool)

(assert (= b_lambda!126833 (or b!4313764 b_lambda!126841)))

(declare-fun bs!605540 () Bool)

(declare-fun d!1268876 () Bool)

(assert (= bs!605540 (and d!1268876 b!4313764)))

(assert (=> bs!605540 (= (dynLambda!20458 lambda!133217 (h!53708 (toList!2460 lt!1533377))) (noDuplicateKeys!236 (_2!26702 (h!53708 (toList!2460 lt!1533377)))))))

(declare-fun m!4907129 () Bool)

(assert (=> bs!605540 m!4907129))

(assert (=> b!4313832 d!1268876))

(check-sat (not b!4313792) (not d!1268866) (not bs!605539) tp_is_empty!23887 (not b!4313771) (not b!4313916) (not b!4313770) (not bs!605540) (not bm!298414) (not b!4313821) (not b!4313790) (not b!4313815) (not b_lambda!126837) (not d!1268844) (not b!4313898) (not bm!298415) (not d!1268864) (not b_lambda!126839) (not d!1268832) (not b!4313791) (not b!4313943) (not b!4313831) (not b!4313862) b_and!340209 (not b!4313803) (not b!4313865) (not bm!298421) (not b!4313935) (not b!4313926) (not b!4313895) (not b!4313893) (not bm!298412) (not d!1268840) (not b!4313857) (not b!4313833) (not b!4313859) (not b_next!129443) (not b!4313936) (not b!4313796) (not d!1268818) (not b!4313918) (not b_lambda!126841) (not b!4313897) (not d!1268862) (not b!4313795) (not b!4313866) (not b!4313928) (not bm!298416) (not d!1268872) (not b_next!129445) b_and!340207 (not bm!298413) (not b!4313919) (not b!4313816) (not d!1268870) (not b!4313899) (not d!1268824) (not b!4313942) (not b!4313822) (not d!1268826) (not d!1268838) (not b!4313797) (not bm!298422) (not d!1268852) (not b!4313944) (not b!4313793) tp_is_empty!23885 (not d!1268834) (not tb!257319) (not bm!298398) (not d!1268854) (not mapNonEmpty!20956) (not b!4313825) (not d!1268860) (not d!1268830) (not bm!298411) (not d!1268828) (not b!4313910) (not d!1268848) (not b!4313941) (not d!1268842) (not b!4313872) (not d!1268856))
(check-sat b_and!340209 b_and!340207 (not b_next!129445) (not b_next!129443))

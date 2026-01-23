; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413816 () Bool)

(assert start!413816)

(declare-fun b!4306998 () Bool)

(declare-fun b_free!128451 () Bool)

(declare-fun b_next!129155 () Bool)

(assert (=> b!4306998 (= b_free!128451 (not b_next!129155))))

(declare-fun tp!1323584 () Bool)

(declare-fun b_and!339857 () Bool)

(assert (=> b!4306998 (= tp!1323584 b_and!339857)))

(declare-fun b!4307001 () Bool)

(declare-fun b_free!128453 () Bool)

(declare-fun b_next!129157 () Bool)

(assert (=> b!4307001 (= b_free!128453 (not b_next!129157))))

(declare-fun tp!1323587 () Bool)

(declare-fun b_and!339859 () Bool)

(assert (=> b!4307001 (= tp!1323587 b_and!339859)))

(declare-fun b!4306993 () Bool)

(declare-fun e!2678171 () Bool)

(declare-fun tp!1323585 () Bool)

(declare-fun mapRes!20680 () Bool)

(assert (=> b!4306993 (= e!2678171 (and tp!1323585 mapRes!20680))))

(declare-fun condMapEmpty!20680 () Bool)

(declare-datatypes ((V!9506 0))(
  ( (V!9507 (val!15701 Int)) )
))
(declare-datatypes ((K!9304 0))(
  ( (K!9305 (val!15702 Int)) )
))
(declare-datatypes ((tuple2!46398 0))(
  ( (tuple2!46399 (_1!26478 K!9304) (_2!26478 V!9506)) )
))
(declare-datatypes ((List!48247 0))(
  ( (Nil!48123) (Cons!48123 (h!53553 tuple2!46398) (t!355038 List!48247)) )
))
(declare-datatypes ((array!16640 0))(
  ( (array!16641 (arr!7431 (Array (_ BitVec 32) (_ BitVec 64))) (size!35470 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4539 0))(
  ( (HashableExt!4538 (__x!29894 Int)) )
))
(declare-datatypes ((array!16642 0))(
  ( (array!16643 (arr!7432 (Array (_ BitVec 32) List!48247)) (size!35471 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9246 0))(
  ( (LongMapFixedSize!9247 (defaultEntry!5008 Int) (mask!13163 (_ BitVec 32)) (extraKeys!4872 (_ BitVec 32)) (zeroValue!4882 List!48247) (minValue!4882 List!48247) (_size!9289 (_ BitVec 32)) (_keys!4923 array!16640) (_values!4904 array!16642) (_vacant!4684 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18301 0))(
  ( (Cell!18302 (v!42203 LongMapFixedSize!9246)) )
))
(declare-datatypes ((MutLongMap!4623 0))(
  ( (LongMap!4623 (underlying!9475 Cell!18301)) (MutLongMapExt!4622 (__x!29895 Int)) )
))
(declare-datatypes ((Cell!18303 0))(
  ( (Cell!18304 (v!42204 MutLongMap!4623)) )
))
(declare-datatypes ((MutableMap!4529 0))(
  ( (MutableMapExt!4528 (__x!29896 Int)) (HashMap!4529 (underlying!9476 Cell!18303) (hashF!6631 Hashable!4539) (_size!9290 (_ BitVec 32)) (defaultValue!4700 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4529)

(declare-fun mapDefault!20680 () List!48247)

(assert (=> b!4306993 (= condMapEmpty!20680 (= (arr!7432 (_values!4904 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48247)) mapDefault!20680)))))

(declare-fun b!4306994 () Bool)

(declare-fun res!1765325 () Bool)

(declare-fun e!2678174 () Bool)

(assert (=> b!4306994 (=> (not res!1765325) (not e!2678174))))

(declare-fun valid!3611 (MutableMap!4529) Bool)

(assert (=> b!4306994 (= res!1765325 (valid!3611 thiss!42308))))

(declare-fun b!4306995 () Bool)

(declare-fun e!2678177 () Bool)

(assert (=> b!4306995 (= e!2678174 e!2678177)))

(declare-fun res!1765327 () Bool)

(assert (=> b!4306995 (=> (not res!1765327) (not e!2678177))))

(declare-fun key!2048 () K!9304)

(declare-fun contains!10078 (MutableMap!4529 K!9304) Bool)

(assert (=> b!4306995 (= res!1765327 (not (contains!10078 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46400 0))(
  ( (tuple2!46401 (_1!26479 (_ BitVec 64)) (_2!26479 List!48247)) )
))
(declare-datatypes ((List!48248 0))(
  ( (Nil!48124) (Cons!48124 (h!53554 tuple2!46400) (t!355039 List!48248)) )
))
(declare-datatypes ((ListLongMap!951 0))(
  ( (ListLongMap!952 (toList!2340 List!48248)) )
))
(declare-fun lt!1527756 () ListLongMap!951)

(declare-fun map!10101 (MutLongMap!4623) ListLongMap!951)

(assert (=> b!4306995 (= lt!1527756 (map!10101 (v!42204 (underlying!9476 thiss!42308))))))

(declare-datatypes ((ListMap!1623 0))(
  ( (ListMap!1624 (toList!2341 List!48247)) )
))
(declare-fun lt!1527746 () ListMap!1623)

(declare-fun map!10102 (MutableMap!4529) ListMap!1623)

(assert (=> b!4306995 (= lt!1527746 (map!10102 thiss!42308))))

(declare-fun b!4306996 () Bool)

(declare-fun e!2678172 () Bool)

(assert (=> b!4306996 (= e!2678177 e!2678172)))

(declare-fun res!1765328 () Bool)

(assert (=> b!4306996 (=> (not res!1765328) (not e!2678172))))

(declare-datatypes ((tuple2!46402 0))(
  ( (tuple2!46403 (_1!26480 Bool) (_2!26480 MutLongMap!4623)) )
))
(declare-fun lt!1527752 () tuple2!46402)

(assert (=> b!4306996 (= res!1765328 (_1!26480 lt!1527752))))

(declare-fun lt!1527745 () (_ BitVec 64))

(declare-fun lt!1527758 () List!48247)

(declare-fun update!403 (MutLongMap!4623 (_ BitVec 64) List!48247) tuple2!46402)

(assert (=> b!4306996 (= lt!1527752 (update!403 (v!42204 (underlying!9476 thiss!42308)) lt!1527745 lt!1527758))))

(declare-fun lt!1527754 () tuple2!46398)

(declare-fun lt!1527757 () List!48247)

(assert (=> b!4306996 (= lt!1527758 (Cons!48123 lt!1527754 lt!1527757))))

(declare-fun v!9179 () V!9506)

(assert (=> b!4306996 (= lt!1527754 (tuple2!46399 key!2048 v!9179))))

(declare-fun e!2678183 () List!48247)

(assert (=> b!4306996 (= lt!1527757 e!2678183)))

(declare-fun c!732266 () Bool)

(declare-fun contains!10079 (MutLongMap!4623 (_ BitVec 64)) Bool)

(assert (=> b!4306996 (= c!732266 (contains!10079 (v!42204 (underlying!9476 thiss!42308)) lt!1527745))))

(declare-fun hash!955 (Hashable!4539 K!9304) (_ BitVec 64))

(assert (=> b!4306996 (= lt!1527745 (hash!955 (hashF!6631 thiss!42308) key!2048))))

(declare-fun b!4306997 () Bool)

(declare-datatypes ((Unit!67154 0))(
  ( (Unit!67155) )
))
(declare-fun e!2678169 () Unit!67154)

(declare-fun Unit!67156 () Unit!67154)

(assert (=> b!4306997 (= e!2678169 Unit!67156)))

(declare-fun mapNonEmpty!20680 () Bool)

(declare-fun tp!1323583 () Bool)

(declare-fun tp!1323581 () Bool)

(assert (=> mapNonEmpty!20680 (= mapRes!20680 (and tp!1323583 tp!1323581))))

(declare-fun mapValue!20680 () List!48247)

(declare-fun mapKey!20680 () (_ BitVec 32))

(declare-fun mapRest!20680 () (Array (_ BitVec 32) List!48247))

(assert (=> mapNonEmpty!20680 (= (arr!7432 (_values!4904 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) (store mapRest!20680 mapKey!20680 mapValue!20680))))

(declare-fun e!2678181 () Bool)

(declare-fun tp!1323582 () Bool)

(declare-fun tp!1323586 () Bool)

(declare-fun array_inv!5329 (array!16640) Bool)

(declare-fun array_inv!5330 (array!16642) Bool)

(assert (=> b!4306998 (= e!2678181 (and tp!1323584 tp!1323586 tp!1323582 (array_inv!5329 (_keys!4923 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) (array_inv!5330 (_values!4904 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) e!2678171))))

(declare-fun b!4306999 () Bool)

(declare-fun e!2678180 () Bool)

(declare-fun lambda!132606 () Int)

(declare-fun forall!8707 (List!48248 Int) Bool)

(assert (=> b!4306999 (= e!2678180 (forall!8707 (toList!2340 (map!10101 (_2!26480 lt!1527752))) lambda!132606))))

(declare-fun b!4307000 () Bool)

(declare-fun e!2678178 () Bool)

(assert (=> b!4307000 (= e!2678178 e!2678181)))

(declare-fun e!2678175 () Bool)

(declare-fun e!2678182 () Bool)

(assert (=> b!4307001 (= e!2678175 (and e!2678182 tp!1323587))))

(declare-fun b!4307002 () Bool)

(assert (=> b!4307002 (= e!2678183 Nil!48123)))

(declare-fun b!4307003 () Bool)

(declare-fun apply!10977 (MutLongMap!4623 (_ BitVec 64)) List!48247)

(assert (=> b!4307003 (= e!2678183 (apply!10977 (v!42204 (underlying!9476 thiss!42308)) lt!1527745))))

(declare-fun mapIsEmpty!20680 () Bool)

(assert (=> mapIsEmpty!20680 mapRes!20680))

(declare-fun b!4307004 () Bool)

(declare-fun e!2678179 () Bool)

(declare-fun lt!1527749 () MutLongMap!4623)

(get-info :version)

(assert (=> b!4307004 (= e!2678182 (and e!2678179 ((_ is LongMap!4623) lt!1527749)))))

(assert (=> b!4307004 (= lt!1527749 (v!42204 (underlying!9476 thiss!42308)))))

(declare-fun b!4307005 () Bool)

(assert (=> b!4307005 (= e!2678179 e!2678178)))

(declare-fun b!4307006 () Bool)

(declare-fun e!2678176 () Bool)

(declare-fun valid!3612 (MutLongMap!4623) Bool)

(assert (=> b!4307006 (= e!2678176 (valid!3612 (_2!26480 lt!1527752)))))

(declare-fun b!4307007 () Bool)

(declare-fun lt!1527753 () Unit!67154)

(assert (=> b!4307007 (= e!2678169 lt!1527753)))

(declare-fun lt!1527751 () Unit!67154)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!156 (List!48248 (_ BitVec 64) List!48247 Hashable!4539) Unit!67154)

(assert (=> b!4307007 (= lt!1527751 (lemmaInLongMapAllKeySameHashThenForTuple!156 (toList!2340 lt!1527756) lt!1527745 lt!1527757 (hashF!6631 thiss!42308)))))

(declare-fun allKeysSameHash!166 (List!48247 (_ BitVec 64) Hashable!4539) Bool)

(assert (=> b!4307007 (allKeysSameHash!166 lt!1527757 lt!1527745 (hashF!6631 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!150 (List!48247 K!9304 (_ BitVec 64) Hashable!4539) Unit!67154)

(assert (=> b!4307007 (= lt!1527753 (lemmaRemovePairForKeyPreservesHash!150 lt!1527757 key!2048 lt!1527745 (hashF!6631 thiss!42308)))))

(declare-fun removePairForKey!190 (List!48247 K!9304) List!48247)

(assert (=> b!4307007 (allKeysSameHash!166 (removePairForKey!190 lt!1527757 key!2048) lt!1527745 (hashF!6631 thiss!42308))))

(declare-fun res!1765326 () Bool)

(assert (=> start!413816 (=> (not res!1765326) (not e!2678174))))

(assert (=> start!413816 (= res!1765326 ((_ is HashMap!4529) thiss!42308))))

(assert (=> start!413816 e!2678174))

(assert (=> start!413816 e!2678175))

(declare-fun tp_is_empty!23613 () Bool)

(assert (=> start!413816 tp_is_empty!23613))

(declare-fun tp_is_empty!23615 () Bool)

(assert (=> start!413816 tp_is_empty!23615))

(declare-fun b!4307008 () Bool)

(assert (=> b!4307008 (= e!2678172 (not e!2678176))))

(declare-fun res!1765323 () Bool)

(assert (=> b!4307008 (=> res!1765323 e!2678176)))

(assert (=> b!4307008 (= res!1765323 (not ((_ is LongMap!4623) (_2!26480 lt!1527752))))))

(assert (=> b!4307008 e!2678180))

(declare-fun res!1765329 () Bool)

(assert (=> b!4307008 (=> (not res!1765329) (not e!2678180))))

(declare-fun lt!1527750 () ListLongMap!951)

(declare-fun eq!127 (ListMap!1623 ListMap!1623) Bool)

(declare-fun extractMap!311 (List!48248) ListMap!1623)

(declare-fun +!235 (ListMap!1623 tuple2!46398) ListMap!1623)

(assert (=> b!4307008 (= res!1765329 (eq!127 (extractMap!311 (toList!2340 lt!1527750)) (+!235 (extractMap!311 (toList!2340 lt!1527756)) lt!1527754)))))

(declare-fun lt!1527747 () Unit!67154)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!45 (ListLongMap!951 (_ BitVec 64) List!48247 K!9304 V!9506 Hashable!4539) Unit!67154)

(assert (=> b!4307008 (= lt!1527747 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!45 lt!1527756 lt!1527745 lt!1527758 key!2048 v!9179 (hashF!6631 thiss!42308)))))

(declare-fun e!2678173 () Bool)

(assert (=> b!4307008 e!2678173))

(declare-fun res!1765324 () Bool)

(assert (=> b!4307008 (=> (not res!1765324) (not e!2678173))))

(assert (=> b!4307008 (= res!1765324 (forall!8707 (toList!2340 lt!1527750) lambda!132606))))

(declare-fun +!236 (ListLongMap!951 tuple2!46400) ListLongMap!951)

(assert (=> b!4307008 (= lt!1527750 (+!236 lt!1527756 (tuple2!46401 lt!1527745 lt!1527758)))))

(declare-fun lt!1527755 () Unit!67154)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!134 (ListLongMap!951 (_ BitVec 64) List!48247 Hashable!4539) Unit!67154)

(assert (=> b!4307008 (= lt!1527755 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!134 lt!1527756 lt!1527745 lt!1527758 (hashF!6631 thiss!42308)))))

(declare-fun lt!1527748 () Unit!67154)

(assert (=> b!4307008 (= lt!1527748 e!2678169)))

(declare-fun c!732265 () Bool)

(declare-fun isEmpty!28071 (List!48247) Bool)

(assert (=> b!4307008 (= c!732265 (not (isEmpty!28071 lt!1527757)))))

(declare-fun b!4307009 () Bool)

(declare-fun allKeysSameHashInMap!316 (ListLongMap!951 Hashable!4539) Bool)

(assert (=> b!4307009 (= e!2678173 (allKeysSameHashInMap!316 lt!1527750 (hashF!6631 thiss!42308)))))

(assert (= (and start!413816 res!1765326) b!4306994))

(assert (= (and b!4306994 res!1765325) b!4306995))

(assert (= (and b!4306995 res!1765327) b!4306996))

(assert (= (and b!4306996 c!732266) b!4307003))

(assert (= (and b!4306996 (not c!732266)) b!4307002))

(assert (= (and b!4306996 res!1765328) b!4307008))

(assert (= (and b!4307008 c!732265) b!4307007))

(assert (= (and b!4307008 (not c!732265)) b!4306997))

(assert (= (and b!4307008 res!1765324) b!4307009))

(assert (= (and b!4307008 res!1765329) b!4306999))

(assert (= (and b!4307008 (not res!1765323)) b!4307006))

(assert (= (and b!4306993 condMapEmpty!20680) mapIsEmpty!20680))

(assert (= (and b!4306993 (not condMapEmpty!20680)) mapNonEmpty!20680))

(assert (= b!4306998 b!4306993))

(assert (= b!4307000 b!4306998))

(assert (= b!4307005 b!4307000))

(assert (= (and b!4307004 ((_ is LongMap!4623) (v!42204 (underlying!9476 thiss!42308)))) b!4307005))

(assert (= b!4307001 b!4307004))

(assert (= (and start!413816 ((_ is HashMap!4529) thiss!42308)) b!4307001))

(declare-fun m!4899741 () Bool)

(assert (=> b!4307003 m!4899741))

(declare-fun m!4899743 () Bool)

(assert (=> b!4307006 m!4899743))

(declare-fun m!4899745 () Bool)

(assert (=> b!4307008 m!4899745))

(declare-fun m!4899747 () Bool)

(assert (=> b!4307008 m!4899747))

(declare-fun m!4899749 () Bool)

(assert (=> b!4307008 m!4899749))

(declare-fun m!4899751 () Bool)

(assert (=> b!4307008 m!4899751))

(declare-fun m!4899753 () Bool)

(assert (=> b!4307008 m!4899753))

(assert (=> b!4307008 m!4899747))

(declare-fun m!4899755 () Bool)

(assert (=> b!4307008 m!4899755))

(declare-fun m!4899757 () Bool)

(assert (=> b!4307008 m!4899757))

(declare-fun m!4899759 () Bool)

(assert (=> b!4307008 m!4899759))

(assert (=> b!4307008 m!4899749))

(assert (=> b!4307008 m!4899755))

(declare-fun m!4899761 () Bool)

(assert (=> b!4307008 m!4899761))

(declare-fun m!4899763 () Bool)

(assert (=> b!4307009 m!4899763))

(declare-fun m!4899765 () Bool)

(assert (=> b!4306996 m!4899765))

(declare-fun m!4899767 () Bool)

(assert (=> b!4306996 m!4899767))

(declare-fun m!4899769 () Bool)

(assert (=> b!4306996 m!4899769))

(declare-fun m!4899771 () Bool)

(assert (=> b!4307007 m!4899771))

(declare-fun m!4899773 () Bool)

(assert (=> b!4307007 m!4899773))

(declare-fun m!4899775 () Bool)

(assert (=> b!4307007 m!4899775))

(declare-fun m!4899777 () Bool)

(assert (=> b!4307007 m!4899777))

(assert (=> b!4307007 m!4899773))

(declare-fun m!4899779 () Bool)

(assert (=> b!4307007 m!4899779))

(declare-fun m!4899781 () Bool)

(assert (=> b!4306995 m!4899781))

(declare-fun m!4899783 () Bool)

(assert (=> b!4306995 m!4899783))

(declare-fun m!4899785 () Bool)

(assert (=> b!4306995 m!4899785))

(declare-fun m!4899787 () Bool)

(assert (=> b!4306998 m!4899787))

(declare-fun m!4899789 () Bool)

(assert (=> b!4306998 m!4899789))

(declare-fun m!4899791 () Bool)

(assert (=> b!4306994 m!4899791))

(declare-fun m!4899793 () Bool)

(assert (=> mapNonEmpty!20680 m!4899793))

(declare-fun m!4899795 () Bool)

(assert (=> b!4306999 m!4899795))

(declare-fun m!4899797 () Bool)

(assert (=> b!4306999 m!4899797))

(check-sat (not b!4307009) (not b!4306998) (not b!4306993) b_and!339859 (not b!4306995) (not b!4307007) (not b!4306996) (not b!4306994) tp_is_empty!23615 b_and!339857 (not b_next!129155) tp_is_empty!23613 (not b!4306999) (not b!4307008) (not b_next!129157) (not b!4307003) (not b!4307006) (not mapNonEmpty!20680))
(check-sat b_and!339857 b_and!339859 (not b_next!129157) (not b_next!129155))
(get-model)

(declare-fun d!1267574 () Bool)

(declare-fun e!2678186 () Bool)

(assert (=> d!1267574 e!2678186))

(declare-fun c!732269 () Bool)

(assert (=> d!1267574 (= c!732269 (contains!10079 (v!42204 (underlying!9476 thiss!42308)) lt!1527745))))

(declare-fun lt!1527761 () List!48247)

(declare-fun apply!10978 (LongMapFixedSize!9246 (_ BitVec 64)) List!48247)

(assert (=> d!1267574 (= lt!1527761 (apply!10978 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))) lt!1527745))))

(assert (=> d!1267574 (valid!3612 (v!42204 (underlying!9476 thiss!42308)))))

(assert (=> d!1267574 (= (apply!10977 (v!42204 (underlying!9476 thiss!42308)) lt!1527745) lt!1527761)))

(declare-fun b!4307014 () Bool)

(declare-datatypes ((Option!10210 0))(
  ( (None!10209) (Some!10209 (v!42209 List!48247)) )
))
(declare-fun get!15567 (Option!10210) List!48247)

(declare-fun getValueByKey!243 (List!48248 (_ BitVec 64)) Option!10210)

(assert (=> b!4307014 (= e!2678186 (= lt!1527761 (get!15567 (getValueByKey!243 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308)))) lt!1527745))))))

(declare-fun b!4307015 () Bool)

(declare-fun dynLambda!20413 (Int (_ BitVec 64)) List!48247)

(assert (=> b!4307015 (= e!2678186 (= lt!1527761 (dynLambda!20413 (defaultEntry!5008 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308))))) lt!1527745)))))

(assert (=> b!4307015 ((_ is LongMap!4623) (v!42204 (underlying!9476 thiss!42308)))))

(assert (= (and d!1267574 c!732269) b!4307014))

(assert (= (and d!1267574 (not c!732269)) b!4307015))

(declare-fun b_lambda!126535 () Bool)

(assert (=> (not b_lambda!126535) (not b!4307015)))

(declare-fun t!355041 () Bool)

(declare-fun tb!257277 () Bool)

(assert (=> (and b!4306998 (= (defaultEntry!5008 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308))))) (defaultEntry!5008 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) t!355041) tb!257277))

(assert (=> b!4307015 t!355041))

(declare-fun result!314646 () Bool)

(declare-fun b_and!339861 () Bool)

(assert (= b_and!339857 (and (=> t!355041 result!314646) b_and!339861)))

(assert (=> d!1267574 m!4899767))

(declare-fun m!4899799 () Bool)

(assert (=> d!1267574 m!4899799))

(declare-fun m!4899801 () Bool)

(assert (=> d!1267574 m!4899801))

(assert (=> b!4307014 m!4899783))

(declare-fun m!4899803 () Bool)

(assert (=> b!4307014 m!4899803))

(assert (=> b!4307014 m!4899803))

(declare-fun m!4899805 () Bool)

(assert (=> b!4307014 m!4899805))

(declare-fun m!4899807 () Bool)

(assert (=> b!4307015 m!4899807))

(assert (=> b!4307003 d!1267574))

(declare-fun d!1267576 () Bool)

(assert (=> d!1267576 (= (array_inv!5329 (_keys!4923 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) (bvsge (size!35470 (_keys!4923 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306998 d!1267576))

(declare-fun d!1267578 () Bool)

(assert (=> d!1267578 (= (array_inv!5330 (_values!4904 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) (bvsge (size!35471 (_values!4904 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306998 d!1267578))

(declare-fun d!1267580 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7550 (List!48247) (InoxSet tuple2!46398))

(assert (=> d!1267580 (= (eq!127 (extractMap!311 (toList!2340 lt!1527750)) (+!235 (extractMap!311 (toList!2340 lt!1527756)) lt!1527754)) (= (content!7550 (toList!2341 (extractMap!311 (toList!2340 lt!1527750)))) (content!7550 (toList!2341 (+!235 (extractMap!311 (toList!2340 lt!1527756)) lt!1527754)))))))

(declare-fun bs!604672 () Bool)

(assert (= bs!604672 d!1267580))

(declare-fun m!4899809 () Bool)

(assert (=> bs!604672 m!4899809))

(declare-fun m!4899811 () Bool)

(assert (=> bs!604672 m!4899811))

(assert (=> b!4307008 d!1267580))

(declare-fun bs!604673 () Bool)

(declare-fun d!1267582 () Bool)

(assert (= bs!604673 (and d!1267582 b!4307008)))

(declare-fun lambda!132609 () Int)

(assert (=> bs!604673 (= lambda!132609 lambda!132606)))

(assert (=> d!1267582 (eq!127 (extractMap!311 (toList!2340 (+!236 lt!1527756 (tuple2!46401 lt!1527745 lt!1527758)))) (+!235 (extractMap!311 (toList!2340 lt!1527756)) (tuple2!46399 key!2048 v!9179)))))

(declare-fun lt!1527764 () Unit!67154)

(declare-fun choose!26231 (ListLongMap!951 (_ BitVec 64) List!48247 K!9304 V!9506 Hashable!4539) Unit!67154)

(assert (=> d!1267582 (= lt!1527764 (choose!26231 lt!1527756 lt!1527745 lt!1527758 key!2048 v!9179 (hashF!6631 thiss!42308)))))

(assert (=> d!1267582 (forall!8707 (toList!2340 lt!1527756) lambda!132609)))

(assert (=> d!1267582 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!45 lt!1527756 lt!1527745 lt!1527758 key!2048 v!9179 (hashF!6631 thiss!42308)) lt!1527764)))

(declare-fun bs!604674 () Bool)

(assert (= bs!604674 d!1267582))

(declare-fun m!4899813 () Bool)

(assert (=> bs!604674 m!4899813))

(declare-fun m!4899815 () Bool)

(assert (=> bs!604674 m!4899815))

(declare-fun m!4899817 () Bool)

(assert (=> bs!604674 m!4899817))

(assert (=> bs!604674 m!4899813))

(declare-fun m!4899819 () Bool)

(assert (=> bs!604674 m!4899819))

(assert (=> bs!604674 m!4899759))

(declare-fun m!4899821 () Bool)

(assert (=> bs!604674 m!4899821))

(assert (=> bs!604674 m!4899747))

(assert (=> bs!604674 m!4899815))

(assert (=> bs!604674 m!4899747))

(assert (=> b!4307008 d!1267582))

(declare-fun d!1267584 () Bool)

(declare-fun res!1765334 () Bool)

(declare-fun e!2678191 () Bool)

(assert (=> d!1267584 (=> res!1765334 e!2678191)))

(assert (=> d!1267584 (= res!1765334 ((_ is Nil!48124) (toList!2340 lt!1527750)))))

(assert (=> d!1267584 (= (forall!8707 (toList!2340 lt!1527750) lambda!132606) e!2678191)))

(declare-fun b!4307020 () Bool)

(declare-fun e!2678192 () Bool)

(assert (=> b!4307020 (= e!2678191 e!2678192)))

(declare-fun res!1765335 () Bool)

(assert (=> b!4307020 (=> (not res!1765335) (not e!2678192))))

(declare-fun dynLambda!20414 (Int tuple2!46400) Bool)

(assert (=> b!4307020 (= res!1765335 (dynLambda!20414 lambda!132606 (h!53554 (toList!2340 lt!1527750))))))

(declare-fun b!4307021 () Bool)

(assert (=> b!4307021 (= e!2678192 (forall!8707 (t!355039 (toList!2340 lt!1527750)) lambda!132606))))

(assert (= (and d!1267584 (not res!1765334)) b!4307020))

(assert (= (and b!4307020 res!1765335) b!4307021))

(declare-fun b_lambda!126537 () Bool)

(assert (=> (not b_lambda!126537) (not b!4307020)))

(declare-fun m!4899823 () Bool)

(assert (=> b!4307020 m!4899823))

(declare-fun m!4899825 () Bool)

(assert (=> b!4307021 m!4899825))

(assert (=> b!4307008 d!1267584))

(declare-fun bs!604675 () Bool)

(declare-fun d!1267586 () Bool)

(assert (= bs!604675 (and d!1267586 b!4307008)))

(declare-fun lambda!132614 () Int)

(assert (=> bs!604675 (= lambda!132614 lambda!132606)))

(declare-fun bs!604676 () Bool)

(assert (= bs!604676 (and d!1267586 d!1267582)))

(assert (=> bs!604676 (= lambda!132614 lambda!132609)))

(declare-fun e!2678195 () Bool)

(assert (=> d!1267586 e!2678195))

(declare-fun res!1765338 () Bool)

(assert (=> d!1267586 (=> (not res!1765338) (not e!2678195))))

(declare-fun lt!1527770 () ListLongMap!951)

(assert (=> d!1267586 (= res!1765338 (forall!8707 (toList!2340 lt!1527770) lambda!132614))))

(assert (=> d!1267586 (= lt!1527770 (+!236 lt!1527756 (tuple2!46401 lt!1527745 lt!1527758)))))

(declare-fun lt!1527769 () Unit!67154)

(declare-fun choose!26232 (ListLongMap!951 (_ BitVec 64) List!48247 Hashable!4539) Unit!67154)

(assert (=> d!1267586 (= lt!1527769 (choose!26232 lt!1527756 lt!1527745 lt!1527758 (hashF!6631 thiss!42308)))))

(assert (=> d!1267586 (forall!8707 (toList!2340 lt!1527756) lambda!132614)))

(assert (=> d!1267586 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!134 lt!1527756 lt!1527745 lt!1527758 (hashF!6631 thiss!42308)) lt!1527769)))

(declare-fun b!4307024 () Bool)

(assert (=> b!4307024 (= e!2678195 (allKeysSameHashInMap!316 lt!1527770 (hashF!6631 thiss!42308)))))

(assert (= (and d!1267586 res!1765338) b!4307024))

(declare-fun m!4899827 () Bool)

(assert (=> d!1267586 m!4899827))

(assert (=> d!1267586 m!4899759))

(declare-fun m!4899829 () Bool)

(assert (=> d!1267586 m!4899829))

(declare-fun m!4899831 () Bool)

(assert (=> d!1267586 m!4899831))

(declare-fun m!4899833 () Bool)

(assert (=> b!4307024 m!4899833))

(assert (=> b!4307008 d!1267586))

(declare-fun d!1267588 () Bool)

(declare-fun e!2678198 () Bool)

(assert (=> d!1267588 e!2678198))

(declare-fun res!1765343 () Bool)

(assert (=> d!1267588 (=> (not res!1765343) (not e!2678198))))

(declare-fun lt!1527779 () ListMap!1623)

(declare-fun contains!10080 (ListMap!1623 K!9304) Bool)

(assert (=> d!1267588 (= res!1765343 (contains!10080 lt!1527779 (_1!26478 lt!1527754)))))

(declare-fun lt!1527781 () List!48247)

(assert (=> d!1267588 (= lt!1527779 (ListMap!1624 lt!1527781))))

(declare-fun lt!1527782 () Unit!67154)

(declare-fun lt!1527780 () Unit!67154)

(assert (=> d!1267588 (= lt!1527782 lt!1527780)))

(declare-datatypes ((Option!10211 0))(
  ( (None!10210) (Some!10210 (v!42210 V!9506)) )
))
(declare-fun getValueByKey!244 (List!48247 K!9304) Option!10211)

(assert (=> d!1267588 (= (getValueByKey!244 lt!1527781 (_1!26478 lt!1527754)) (Some!10210 (_2!26478 lt!1527754)))))

(declare-fun lemmaContainsTupThenGetReturnValue!66 (List!48247 K!9304 V!9506) Unit!67154)

(assert (=> d!1267588 (= lt!1527780 (lemmaContainsTupThenGetReturnValue!66 lt!1527781 (_1!26478 lt!1527754) (_2!26478 lt!1527754)))))

(declare-fun insertNoDuplicatedKeys!41 (List!48247 K!9304 V!9506) List!48247)

(assert (=> d!1267588 (= lt!1527781 (insertNoDuplicatedKeys!41 (toList!2341 (extractMap!311 (toList!2340 lt!1527756))) (_1!26478 lt!1527754) (_2!26478 lt!1527754)))))

(assert (=> d!1267588 (= (+!235 (extractMap!311 (toList!2340 lt!1527756)) lt!1527754) lt!1527779)))

(declare-fun b!4307029 () Bool)

(declare-fun res!1765344 () Bool)

(assert (=> b!4307029 (=> (not res!1765344) (not e!2678198))))

(assert (=> b!4307029 (= res!1765344 (= (getValueByKey!244 (toList!2341 lt!1527779) (_1!26478 lt!1527754)) (Some!10210 (_2!26478 lt!1527754))))))

(declare-fun b!4307030 () Bool)

(declare-fun contains!10081 (List!48247 tuple2!46398) Bool)

(assert (=> b!4307030 (= e!2678198 (contains!10081 (toList!2341 lt!1527779) lt!1527754))))

(assert (= (and d!1267588 res!1765343) b!4307029))

(assert (= (and b!4307029 res!1765344) b!4307030))

(declare-fun m!4899835 () Bool)

(assert (=> d!1267588 m!4899835))

(declare-fun m!4899837 () Bool)

(assert (=> d!1267588 m!4899837))

(declare-fun m!4899839 () Bool)

(assert (=> d!1267588 m!4899839))

(declare-fun m!4899841 () Bool)

(assert (=> d!1267588 m!4899841))

(declare-fun m!4899843 () Bool)

(assert (=> b!4307029 m!4899843))

(declare-fun m!4899845 () Bool)

(assert (=> b!4307030 m!4899845))

(assert (=> b!4307008 d!1267588))

(declare-fun bs!604677 () Bool)

(declare-fun d!1267590 () Bool)

(assert (= bs!604677 (and d!1267590 b!4307008)))

(declare-fun lambda!132617 () Int)

(assert (=> bs!604677 (= lambda!132617 lambda!132606)))

(declare-fun bs!604678 () Bool)

(assert (= bs!604678 (and d!1267590 d!1267582)))

(assert (=> bs!604678 (= lambda!132617 lambda!132609)))

(declare-fun bs!604679 () Bool)

(assert (= bs!604679 (and d!1267590 d!1267586)))

(assert (=> bs!604679 (= lambda!132617 lambda!132614)))

(declare-fun lt!1527785 () ListMap!1623)

(declare-fun invariantList!565 (List!48247) Bool)

(assert (=> d!1267590 (invariantList!565 (toList!2341 lt!1527785))))

(declare-fun e!2678201 () ListMap!1623)

(assert (=> d!1267590 (= lt!1527785 e!2678201)))

(declare-fun c!732272 () Bool)

(assert (=> d!1267590 (= c!732272 ((_ is Cons!48124) (toList!2340 lt!1527756)))))

(assert (=> d!1267590 (forall!8707 (toList!2340 lt!1527756) lambda!132617)))

(assert (=> d!1267590 (= (extractMap!311 (toList!2340 lt!1527756)) lt!1527785)))

(declare-fun b!4307035 () Bool)

(declare-fun addToMapMapFromBucket!33 (List!48247 ListMap!1623) ListMap!1623)

(assert (=> b!4307035 (= e!2678201 (addToMapMapFromBucket!33 (_2!26479 (h!53554 (toList!2340 lt!1527756))) (extractMap!311 (t!355039 (toList!2340 lt!1527756)))))))

(declare-fun b!4307036 () Bool)

(assert (=> b!4307036 (= e!2678201 (ListMap!1624 Nil!48123))))

(assert (= (and d!1267590 c!732272) b!4307035))

(assert (= (and d!1267590 (not c!732272)) b!4307036))

(declare-fun m!4899847 () Bool)

(assert (=> d!1267590 m!4899847))

(declare-fun m!4899849 () Bool)

(assert (=> d!1267590 m!4899849))

(declare-fun m!4899851 () Bool)

(assert (=> b!4307035 m!4899851))

(assert (=> b!4307035 m!4899851))

(declare-fun m!4899853 () Bool)

(assert (=> b!4307035 m!4899853))

(assert (=> b!4307008 d!1267590))

(declare-fun d!1267592 () Bool)

(assert (=> d!1267592 (= (isEmpty!28071 lt!1527757) ((_ is Nil!48123) lt!1527757))))

(assert (=> b!4307008 d!1267592))

(declare-fun d!1267594 () Bool)

(declare-fun e!2678204 () Bool)

(assert (=> d!1267594 e!2678204))

(declare-fun res!1765349 () Bool)

(assert (=> d!1267594 (=> (not res!1765349) (not e!2678204))))

(declare-fun lt!1527795 () ListLongMap!951)

(declare-fun contains!10082 (ListLongMap!951 (_ BitVec 64)) Bool)

(assert (=> d!1267594 (= res!1765349 (contains!10082 lt!1527795 (_1!26479 (tuple2!46401 lt!1527745 lt!1527758))))))

(declare-fun lt!1527794 () List!48248)

(assert (=> d!1267594 (= lt!1527795 (ListLongMap!952 lt!1527794))))

(declare-fun lt!1527797 () Unit!67154)

(declare-fun lt!1527796 () Unit!67154)

(assert (=> d!1267594 (= lt!1527797 lt!1527796)))

(assert (=> d!1267594 (= (getValueByKey!243 lt!1527794 (_1!26479 (tuple2!46401 lt!1527745 lt!1527758))) (Some!10209 (_2!26479 (tuple2!46401 lt!1527745 lt!1527758))))))

(declare-fun lemmaContainsTupThenGetReturnValue!67 (List!48248 (_ BitVec 64) List!48247) Unit!67154)

(assert (=> d!1267594 (= lt!1527796 (lemmaContainsTupThenGetReturnValue!67 lt!1527794 (_1!26479 (tuple2!46401 lt!1527745 lt!1527758)) (_2!26479 (tuple2!46401 lt!1527745 lt!1527758))))))

(declare-fun insertStrictlySorted!34 (List!48248 (_ BitVec 64) List!48247) List!48248)

(assert (=> d!1267594 (= lt!1527794 (insertStrictlySorted!34 (toList!2340 lt!1527756) (_1!26479 (tuple2!46401 lt!1527745 lt!1527758)) (_2!26479 (tuple2!46401 lt!1527745 lt!1527758))))))

(assert (=> d!1267594 (= (+!236 lt!1527756 (tuple2!46401 lt!1527745 lt!1527758)) lt!1527795)))

(declare-fun b!4307041 () Bool)

(declare-fun res!1765350 () Bool)

(assert (=> b!4307041 (=> (not res!1765350) (not e!2678204))))

(assert (=> b!4307041 (= res!1765350 (= (getValueByKey!243 (toList!2340 lt!1527795) (_1!26479 (tuple2!46401 lt!1527745 lt!1527758))) (Some!10209 (_2!26479 (tuple2!46401 lt!1527745 lt!1527758)))))))

(declare-fun b!4307042 () Bool)

(declare-fun contains!10083 (List!48248 tuple2!46400) Bool)

(assert (=> b!4307042 (= e!2678204 (contains!10083 (toList!2340 lt!1527795) (tuple2!46401 lt!1527745 lt!1527758)))))

(assert (= (and d!1267594 res!1765349) b!4307041))

(assert (= (and b!4307041 res!1765350) b!4307042))

(declare-fun m!4899855 () Bool)

(assert (=> d!1267594 m!4899855))

(declare-fun m!4899857 () Bool)

(assert (=> d!1267594 m!4899857))

(declare-fun m!4899859 () Bool)

(assert (=> d!1267594 m!4899859))

(declare-fun m!4899861 () Bool)

(assert (=> d!1267594 m!4899861))

(declare-fun m!4899863 () Bool)

(assert (=> b!4307041 m!4899863))

(declare-fun m!4899865 () Bool)

(assert (=> b!4307042 m!4899865))

(assert (=> b!4307008 d!1267594))

(declare-fun bs!604680 () Bool)

(declare-fun d!1267596 () Bool)

(assert (= bs!604680 (and d!1267596 b!4307008)))

(declare-fun lambda!132618 () Int)

(assert (=> bs!604680 (= lambda!132618 lambda!132606)))

(declare-fun bs!604681 () Bool)

(assert (= bs!604681 (and d!1267596 d!1267582)))

(assert (=> bs!604681 (= lambda!132618 lambda!132609)))

(declare-fun bs!604682 () Bool)

(assert (= bs!604682 (and d!1267596 d!1267586)))

(assert (=> bs!604682 (= lambda!132618 lambda!132614)))

(declare-fun bs!604683 () Bool)

(assert (= bs!604683 (and d!1267596 d!1267590)))

(assert (=> bs!604683 (= lambda!132618 lambda!132617)))

(declare-fun lt!1527798 () ListMap!1623)

(assert (=> d!1267596 (invariantList!565 (toList!2341 lt!1527798))))

(declare-fun e!2678205 () ListMap!1623)

(assert (=> d!1267596 (= lt!1527798 e!2678205)))

(declare-fun c!732273 () Bool)

(assert (=> d!1267596 (= c!732273 ((_ is Cons!48124) (toList!2340 lt!1527750)))))

(assert (=> d!1267596 (forall!8707 (toList!2340 lt!1527750) lambda!132618)))

(assert (=> d!1267596 (= (extractMap!311 (toList!2340 lt!1527750)) lt!1527798)))

(declare-fun b!4307043 () Bool)

(assert (=> b!4307043 (= e!2678205 (addToMapMapFromBucket!33 (_2!26479 (h!53554 (toList!2340 lt!1527750))) (extractMap!311 (t!355039 (toList!2340 lt!1527750)))))))

(declare-fun b!4307044 () Bool)

(assert (=> b!4307044 (= e!2678205 (ListMap!1624 Nil!48123))))

(assert (= (and d!1267596 c!732273) b!4307043))

(assert (= (and d!1267596 (not c!732273)) b!4307044))

(declare-fun m!4899867 () Bool)

(assert (=> d!1267596 m!4899867))

(declare-fun m!4899869 () Bool)

(assert (=> d!1267596 m!4899869))

(declare-fun m!4899871 () Bool)

(assert (=> b!4307043 m!4899871))

(assert (=> b!4307043 m!4899871))

(declare-fun m!4899873 () Bool)

(assert (=> b!4307043 m!4899873))

(assert (=> b!4307008 d!1267596))

(declare-fun bs!604684 () Bool)

(declare-fun b!4307049 () Bool)

(assert (= bs!604684 (and b!4307049 d!1267586)))

(declare-fun lambda!132621 () Int)

(assert (=> bs!604684 (= lambda!132621 lambda!132614)))

(declare-fun bs!604685 () Bool)

(assert (= bs!604685 (and b!4307049 d!1267582)))

(assert (=> bs!604685 (= lambda!132621 lambda!132609)))

(declare-fun bs!604686 () Bool)

(assert (= bs!604686 (and b!4307049 b!4307008)))

(assert (=> bs!604686 (= lambda!132621 lambda!132606)))

(declare-fun bs!604687 () Bool)

(assert (= bs!604687 (and b!4307049 d!1267590)))

(assert (=> bs!604687 (= lambda!132621 lambda!132617)))

(declare-fun bs!604688 () Bool)

(assert (= bs!604688 (and b!4307049 d!1267596)))

(assert (=> bs!604688 (= lambda!132621 lambda!132618)))

(declare-fun d!1267598 () Bool)

(declare-fun res!1765355 () Bool)

(declare-fun e!2678208 () Bool)

(assert (=> d!1267598 (=> (not res!1765355) (not e!2678208))))

(assert (=> d!1267598 (= res!1765355 (valid!3612 (v!42204 (underlying!9476 thiss!42308))))))

(assert (=> d!1267598 (= (valid!3611 thiss!42308) e!2678208)))

(declare-fun res!1765356 () Bool)

(assert (=> b!4307049 (=> (not res!1765356) (not e!2678208))))

(assert (=> b!4307049 (= res!1765356 (forall!8707 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308)))) lambda!132621))))

(declare-fun b!4307050 () Bool)

(assert (=> b!4307050 (= e!2678208 (allKeysSameHashInMap!316 (map!10101 (v!42204 (underlying!9476 thiss!42308))) (hashF!6631 thiss!42308)))))

(assert (= (and d!1267598 res!1765355) b!4307049))

(assert (= (and b!4307049 res!1765356) b!4307050))

(assert (=> d!1267598 m!4899801))

(assert (=> b!4307049 m!4899783))

(declare-fun m!4899875 () Bool)

(assert (=> b!4307049 m!4899875))

(assert (=> b!4307050 m!4899783))

(assert (=> b!4307050 m!4899783))

(declare-fun m!4899877 () Bool)

(assert (=> b!4307050 m!4899877))

(assert (=> b!4306994 d!1267598))

(declare-fun d!1267600 () Bool)

(declare-fun valid!3613 (LongMapFixedSize!9246) Bool)

(assert (=> d!1267600 (= (valid!3612 (_2!26480 lt!1527752)) (valid!3613 (v!42203 (underlying!9475 (_2!26480 lt!1527752)))))))

(declare-fun bs!604689 () Bool)

(assert (= bs!604689 d!1267600))

(declare-fun m!4899879 () Bool)

(assert (=> bs!604689 m!4899879))

(assert (=> b!4307006 d!1267600))

(declare-fun d!1267602 () Bool)

(assert (=> d!1267602 (allKeysSameHash!166 (removePairForKey!190 lt!1527757 key!2048) lt!1527745 (hashF!6631 thiss!42308))))

(declare-fun lt!1527801 () Unit!67154)

(declare-fun choose!26233 (List!48247 K!9304 (_ BitVec 64) Hashable!4539) Unit!67154)

(assert (=> d!1267602 (= lt!1527801 (choose!26233 lt!1527757 key!2048 lt!1527745 (hashF!6631 thiss!42308)))))

(declare-fun noDuplicateKeys!196 (List!48247) Bool)

(assert (=> d!1267602 (noDuplicateKeys!196 lt!1527757)))

(assert (=> d!1267602 (= (lemmaRemovePairForKeyPreservesHash!150 lt!1527757 key!2048 lt!1527745 (hashF!6631 thiss!42308)) lt!1527801)))

(declare-fun bs!604690 () Bool)

(assert (= bs!604690 d!1267602))

(assert (=> bs!604690 m!4899773))

(assert (=> bs!604690 m!4899773))

(assert (=> bs!604690 m!4899779))

(declare-fun m!4899881 () Bool)

(assert (=> bs!604690 m!4899881))

(declare-fun m!4899883 () Bool)

(assert (=> bs!604690 m!4899883))

(assert (=> b!4307007 d!1267602))

(declare-fun d!1267604 () Bool)

(assert (=> d!1267604 true))

(assert (=> d!1267604 true))

(declare-fun lambda!132624 () Int)

(declare-fun forall!8708 (List!48247 Int) Bool)

(assert (=> d!1267604 (= (allKeysSameHash!166 (removePairForKey!190 lt!1527757 key!2048) lt!1527745 (hashF!6631 thiss!42308)) (forall!8708 (removePairForKey!190 lt!1527757 key!2048) lambda!132624))))

(declare-fun bs!604691 () Bool)

(assert (= bs!604691 d!1267604))

(assert (=> bs!604691 m!4899773))

(declare-fun m!4899885 () Bool)

(assert (=> bs!604691 m!4899885))

(assert (=> b!4307007 d!1267604))

(declare-fun bs!604692 () Bool)

(declare-fun d!1267606 () Bool)

(assert (= bs!604692 (and d!1267606 d!1267604)))

(declare-fun lambda!132625 () Int)

(assert (=> bs!604692 (= lambda!132625 lambda!132624)))

(assert (=> d!1267606 true))

(assert (=> d!1267606 true))

(assert (=> d!1267606 (= (allKeysSameHash!166 lt!1527757 lt!1527745 (hashF!6631 thiss!42308)) (forall!8708 lt!1527757 lambda!132625))))

(declare-fun bs!604693 () Bool)

(assert (= bs!604693 d!1267606))

(declare-fun m!4899887 () Bool)

(assert (=> bs!604693 m!4899887))

(assert (=> b!4307007 d!1267606))

(declare-fun b!4307066 () Bool)

(declare-fun e!2678213 () List!48247)

(assert (=> b!4307066 (= e!2678213 Nil!48123)))

(declare-fun b!4307065 () Bool)

(assert (=> b!4307065 (= e!2678213 (Cons!48123 (h!53553 lt!1527757) (removePairForKey!190 (t!355038 lt!1527757) key!2048)))))

(declare-fun b!4307064 () Bool)

(declare-fun e!2678214 () List!48247)

(assert (=> b!4307064 (= e!2678214 e!2678213)))

(declare-fun c!732279 () Bool)

(assert (=> b!4307064 (= c!732279 ((_ is Cons!48123) lt!1527757))))

(declare-fun b!4307063 () Bool)

(assert (=> b!4307063 (= e!2678214 (t!355038 lt!1527757))))

(declare-fun d!1267608 () Bool)

(declare-fun lt!1527804 () List!48247)

(declare-fun containsKey!290 (List!48247 K!9304) Bool)

(assert (=> d!1267608 (not (containsKey!290 lt!1527804 key!2048))))

(assert (=> d!1267608 (= lt!1527804 e!2678214)))

(declare-fun c!732278 () Bool)

(assert (=> d!1267608 (= c!732278 (and ((_ is Cons!48123) lt!1527757) (= (_1!26478 (h!53553 lt!1527757)) key!2048)))))

(assert (=> d!1267608 (noDuplicateKeys!196 lt!1527757)))

(assert (=> d!1267608 (= (removePairForKey!190 lt!1527757 key!2048) lt!1527804)))

(assert (= (and d!1267608 c!732278) b!4307063))

(assert (= (and d!1267608 (not c!732278)) b!4307064))

(assert (= (and b!4307064 c!732279) b!4307065))

(assert (= (and b!4307064 (not c!732279)) b!4307066))

(declare-fun m!4899889 () Bool)

(assert (=> b!4307065 m!4899889))

(declare-fun m!4899891 () Bool)

(assert (=> d!1267608 m!4899891))

(assert (=> d!1267608 m!4899883))

(assert (=> b!4307007 d!1267608))

(declare-fun bs!604694 () Bool)

(declare-fun d!1267610 () Bool)

(assert (= bs!604694 (and d!1267610 d!1267586)))

(declare-fun lambda!132628 () Int)

(assert (=> bs!604694 (not (= lambda!132628 lambda!132614))))

(declare-fun bs!604695 () Bool)

(assert (= bs!604695 (and d!1267610 d!1267582)))

(assert (=> bs!604695 (not (= lambda!132628 lambda!132609))))

(declare-fun bs!604696 () Bool)

(assert (= bs!604696 (and d!1267610 b!4307008)))

(assert (=> bs!604696 (not (= lambda!132628 lambda!132606))))

(declare-fun bs!604697 () Bool)

(assert (= bs!604697 (and d!1267610 b!4307049)))

(assert (=> bs!604697 (not (= lambda!132628 lambda!132621))))

(declare-fun bs!604698 () Bool)

(assert (= bs!604698 (and d!1267610 d!1267590)))

(assert (=> bs!604698 (not (= lambda!132628 lambda!132617))))

(declare-fun bs!604699 () Bool)

(assert (= bs!604699 (and d!1267610 d!1267596)))

(assert (=> bs!604699 (not (= lambda!132628 lambda!132618))))

(assert (=> d!1267610 true))

(assert (=> d!1267610 (allKeysSameHash!166 lt!1527757 lt!1527745 (hashF!6631 thiss!42308))))

(declare-fun lt!1527807 () Unit!67154)

(declare-fun choose!26234 (List!48248 (_ BitVec 64) List!48247 Hashable!4539) Unit!67154)

(assert (=> d!1267610 (= lt!1527807 (choose!26234 (toList!2340 lt!1527756) lt!1527745 lt!1527757 (hashF!6631 thiss!42308)))))

(assert (=> d!1267610 (forall!8707 (toList!2340 lt!1527756) lambda!132628)))

(assert (=> d!1267610 (= (lemmaInLongMapAllKeySameHashThenForTuple!156 (toList!2340 lt!1527756) lt!1527745 lt!1527757 (hashF!6631 thiss!42308)) lt!1527807)))

(declare-fun bs!604700 () Bool)

(assert (= bs!604700 d!1267610))

(assert (=> bs!604700 m!4899775))

(declare-fun m!4899893 () Bool)

(assert (=> bs!604700 m!4899893))

(declare-fun m!4899895 () Bool)

(assert (=> bs!604700 m!4899895))

(assert (=> b!4307007 d!1267610))

(declare-fun d!1267612 () Bool)

(declare-fun e!2678227 () Bool)

(assert (=> d!1267612 e!2678227))

(declare-fun res!1765364 () Bool)

(assert (=> d!1267612 (=> (not res!1765364) (not e!2678227))))

(declare-fun lt!1527817 () tuple2!46402)

(assert (=> d!1267612 (= res!1765364 ((_ is LongMap!4623) (_2!26480 lt!1527817)))))

(declare-fun e!2678225 () tuple2!46402)

(assert (=> d!1267612 (= lt!1527817 e!2678225)))

(declare-fun c!732288 () Bool)

(declare-fun lt!1527818 () tuple2!46402)

(assert (=> d!1267612 (= c!732288 (_1!26480 lt!1527818))))

(declare-fun e!2678226 () tuple2!46402)

(assert (=> d!1267612 (= lt!1527818 e!2678226)))

(declare-fun c!732286 () Bool)

(declare-fun imbalanced!44 (MutLongMap!4623) Bool)

(assert (=> d!1267612 (= c!732286 (imbalanced!44 (v!42204 (underlying!9476 thiss!42308))))))

(assert (=> d!1267612 (valid!3612 (v!42204 (underlying!9476 thiss!42308)))))

(assert (=> d!1267612 (= (update!403 (v!42204 (underlying!9476 thiss!42308)) lt!1527745 lt!1527758) lt!1527817)))

(declare-fun b!4307087 () Bool)

(assert (=> b!4307087 (= e!2678226 (tuple2!46403 true (v!42204 (underlying!9476 thiss!42308))))))

(declare-fun b!4307088 () Bool)

(declare-fun e!2678229 () Bool)

(declare-fun e!2678228 () Bool)

(assert (=> b!4307088 (= e!2678229 e!2678228)))

(declare-fun res!1765363 () Bool)

(declare-fun call!296983 () ListLongMap!951)

(assert (=> b!4307088 (= res!1765363 (contains!10082 call!296983 lt!1527745))))

(assert (=> b!4307088 (=> (not res!1765363) (not e!2678228))))

(declare-fun b!4307089 () Bool)

(declare-datatypes ((tuple2!46404 0))(
  ( (tuple2!46405 (_1!26481 Bool) (_2!26481 LongMapFixedSize!9246)) )
))
(declare-fun lt!1527819 () tuple2!46404)

(assert (=> b!4307089 (= e!2678225 (tuple2!46403 (_1!26481 lt!1527819) (LongMap!4623 (Cell!18302 (_2!26481 lt!1527819)))))))

(declare-fun update!404 (LongMapFixedSize!9246 (_ BitVec 64) List!48247) tuple2!46404)

(assert (=> b!4307089 (= lt!1527819 (update!404 (v!42203 (underlying!9475 (_2!26480 lt!1527818))) lt!1527745 lt!1527758))))

(declare-fun b!4307090 () Bool)

(declare-fun lt!1527816 () tuple2!46402)

(assert (=> b!4307090 (= e!2678226 (tuple2!46403 (_1!26480 lt!1527816) (_2!26480 lt!1527816)))))

(declare-fun repack!48 (MutLongMap!4623) tuple2!46402)

(assert (=> b!4307090 (= lt!1527816 (repack!48 (v!42204 (underlying!9476 thiss!42308))))))

(declare-fun bm!296977 () Bool)

(assert (=> bm!296977 (= call!296983 (map!10101 (_2!26480 lt!1527817)))))

(declare-fun call!296982 () ListLongMap!951)

(declare-fun b!4307091 () Bool)

(assert (=> b!4307091 (= e!2678228 (= call!296983 (+!236 call!296982 (tuple2!46401 lt!1527745 lt!1527758))))))

(declare-fun b!4307092 () Bool)

(declare-fun res!1765365 () Bool)

(assert (=> b!4307092 (=> (not res!1765365) (not e!2678227))))

(assert (=> b!4307092 (= res!1765365 (valid!3612 (_2!26480 lt!1527817)))))

(declare-fun b!4307093 () Bool)

(assert (=> b!4307093 (= e!2678225 (tuple2!46403 false (_2!26480 lt!1527818)))))

(declare-fun b!4307094 () Bool)

(assert (=> b!4307094 (= e!2678227 e!2678229)))

(declare-fun c!732287 () Bool)

(assert (=> b!4307094 (= c!732287 (_1!26480 lt!1527817))))

(declare-fun b!4307095 () Bool)

(assert (=> b!4307095 (= e!2678229 (= call!296983 call!296982))))

(declare-fun bm!296978 () Bool)

(assert (=> bm!296978 (= call!296982 (map!10101 (v!42204 (underlying!9476 thiss!42308))))))

(assert (= (and d!1267612 c!732286) b!4307090))

(assert (= (and d!1267612 (not c!732286)) b!4307087))

(assert (= (and d!1267612 c!732288) b!4307089))

(assert (= (and d!1267612 (not c!732288)) b!4307093))

(assert (= (and d!1267612 res!1765364) b!4307092))

(assert (= (and b!4307092 res!1765365) b!4307094))

(assert (= (and b!4307094 c!732287) b!4307088))

(assert (= (and b!4307094 (not c!732287)) b!4307095))

(assert (= (and b!4307088 res!1765363) b!4307091))

(assert (= (or b!4307088 b!4307091 b!4307095) bm!296977))

(assert (= (or b!4307091 b!4307095) bm!296978))

(declare-fun m!4899897 () Bool)

(assert (=> b!4307088 m!4899897))

(declare-fun m!4899899 () Bool)

(assert (=> b!4307090 m!4899899))

(declare-fun m!4899901 () Bool)

(assert (=> b!4307092 m!4899901))

(declare-fun m!4899903 () Bool)

(assert (=> d!1267612 m!4899903))

(assert (=> d!1267612 m!4899801))

(declare-fun m!4899905 () Bool)

(assert (=> b!4307089 m!4899905))

(assert (=> bm!296978 m!4899783))

(declare-fun m!4899907 () Bool)

(assert (=> b!4307091 m!4899907))

(declare-fun m!4899909 () Bool)

(assert (=> bm!296977 m!4899909))

(assert (=> b!4306996 d!1267612))

(declare-fun d!1267614 () Bool)

(declare-fun lt!1527822 () Bool)

(assert (=> d!1267614 (= lt!1527822 (contains!10082 (map!10101 (v!42204 (underlying!9476 thiss!42308))) lt!1527745))))

(declare-fun contains!10084 (LongMapFixedSize!9246 (_ BitVec 64)) Bool)

(assert (=> d!1267614 (= lt!1527822 (contains!10084 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308)))) lt!1527745))))

(assert (=> d!1267614 (valid!3612 (v!42204 (underlying!9476 thiss!42308)))))

(assert (=> d!1267614 (= (contains!10079 (v!42204 (underlying!9476 thiss!42308)) lt!1527745) lt!1527822)))

(declare-fun bs!604701 () Bool)

(assert (= bs!604701 d!1267614))

(assert (=> bs!604701 m!4899783))

(assert (=> bs!604701 m!4899783))

(declare-fun m!4899911 () Bool)

(assert (=> bs!604701 m!4899911))

(declare-fun m!4899913 () Bool)

(assert (=> bs!604701 m!4899913))

(assert (=> bs!604701 m!4899801))

(assert (=> b!4306996 d!1267614))

(declare-fun d!1267616 () Bool)

(declare-fun hash!960 (Hashable!4539 K!9304) (_ BitVec 64))

(assert (=> d!1267616 (= (hash!955 (hashF!6631 thiss!42308) key!2048) (hash!960 (hashF!6631 thiss!42308) key!2048))))

(declare-fun bs!604702 () Bool)

(assert (= bs!604702 d!1267616))

(declare-fun m!4899915 () Bool)

(assert (=> bs!604702 m!4899915))

(assert (=> b!4306996 d!1267616))

(declare-fun d!1267618 () Bool)

(declare-fun res!1765366 () Bool)

(declare-fun e!2678230 () Bool)

(assert (=> d!1267618 (=> res!1765366 e!2678230)))

(assert (=> d!1267618 (= res!1765366 ((_ is Nil!48124) (toList!2340 (map!10101 (_2!26480 lt!1527752)))))))

(assert (=> d!1267618 (= (forall!8707 (toList!2340 (map!10101 (_2!26480 lt!1527752))) lambda!132606) e!2678230)))

(declare-fun b!4307096 () Bool)

(declare-fun e!2678231 () Bool)

(assert (=> b!4307096 (= e!2678230 e!2678231)))

(declare-fun res!1765367 () Bool)

(assert (=> b!4307096 (=> (not res!1765367) (not e!2678231))))

(assert (=> b!4307096 (= res!1765367 (dynLambda!20414 lambda!132606 (h!53554 (toList!2340 (map!10101 (_2!26480 lt!1527752))))))))

(declare-fun b!4307097 () Bool)

(assert (=> b!4307097 (= e!2678231 (forall!8707 (t!355039 (toList!2340 (map!10101 (_2!26480 lt!1527752)))) lambda!132606))))

(assert (= (and d!1267618 (not res!1765366)) b!4307096))

(assert (= (and b!4307096 res!1765367) b!4307097))

(declare-fun b_lambda!126539 () Bool)

(assert (=> (not b_lambda!126539) (not b!4307096)))

(declare-fun m!4899917 () Bool)

(assert (=> b!4307096 m!4899917))

(declare-fun m!4899919 () Bool)

(assert (=> b!4307097 m!4899919))

(assert (=> b!4306999 d!1267618))

(declare-fun d!1267620 () Bool)

(declare-fun map!10103 (LongMapFixedSize!9246) ListLongMap!951)

(assert (=> d!1267620 (= (map!10101 (_2!26480 lt!1527752)) (map!10103 (v!42203 (underlying!9475 (_2!26480 lt!1527752)))))))

(declare-fun bs!604703 () Bool)

(assert (= bs!604703 d!1267620))

(declare-fun m!4899921 () Bool)

(assert (=> bs!604703 m!4899921))

(assert (=> b!4306999 d!1267620))

(declare-fun bs!604704 () Bool)

(declare-fun d!1267622 () Bool)

(assert (= bs!604704 (and d!1267622 d!1267586)))

(declare-fun lambda!132631 () Int)

(assert (=> bs!604704 (not (= lambda!132631 lambda!132614))))

(declare-fun bs!604705 () Bool)

(assert (= bs!604705 (and d!1267622 d!1267582)))

(assert (=> bs!604705 (not (= lambda!132631 lambda!132609))))

(declare-fun bs!604706 () Bool)

(assert (= bs!604706 (and d!1267622 b!4307008)))

(assert (=> bs!604706 (not (= lambda!132631 lambda!132606))))

(declare-fun bs!604707 () Bool)

(assert (= bs!604707 (and d!1267622 d!1267610)))

(assert (=> bs!604707 (= lambda!132631 lambda!132628)))

(declare-fun bs!604708 () Bool)

(assert (= bs!604708 (and d!1267622 b!4307049)))

(assert (=> bs!604708 (not (= lambda!132631 lambda!132621))))

(declare-fun bs!604709 () Bool)

(assert (= bs!604709 (and d!1267622 d!1267590)))

(assert (=> bs!604709 (not (= lambda!132631 lambda!132617))))

(declare-fun bs!604710 () Bool)

(assert (= bs!604710 (and d!1267622 d!1267596)))

(assert (=> bs!604710 (not (= lambda!132631 lambda!132618))))

(assert (=> d!1267622 true))

(assert (=> d!1267622 (= (allKeysSameHashInMap!316 lt!1527750 (hashF!6631 thiss!42308)) (forall!8707 (toList!2340 lt!1527750) lambda!132631))))

(declare-fun bs!604711 () Bool)

(assert (= bs!604711 d!1267622))

(declare-fun m!4899923 () Bool)

(assert (=> bs!604711 m!4899923))

(assert (=> b!4307009 d!1267622))

(declare-fun bs!604712 () Bool)

(declare-fun b!4307125 () Bool)

(assert (= bs!604712 (and b!4307125 d!1267586)))

(declare-fun lambda!132634 () Int)

(assert (=> bs!604712 (= lambda!132634 lambda!132614)))

(declare-fun bs!604713 () Bool)

(assert (= bs!604713 (and b!4307125 d!1267582)))

(assert (=> bs!604713 (= lambda!132634 lambda!132609)))

(declare-fun bs!604714 () Bool)

(assert (= bs!604714 (and b!4307125 b!4307008)))

(assert (=> bs!604714 (= lambda!132634 lambda!132606)))

(declare-fun bs!604715 () Bool)

(assert (= bs!604715 (and b!4307125 b!4307049)))

(assert (=> bs!604715 (= lambda!132634 lambda!132621)))

(declare-fun bs!604716 () Bool)

(assert (= bs!604716 (and b!4307125 d!1267590)))

(assert (=> bs!604716 (= lambda!132634 lambda!132617)))

(declare-fun bs!604717 () Bool)

(assert (= bs!604717 (and b!4307125 d!1267596)))

(assert (=> bs!604717 (= lambda!132634 lambda!132618)))

(declare-fun bs!604718 () Bool)

(assert (= bs!604718 (and b!4307125 d!1267622)))

(assert (=> bs!604718 (not (= lambda!132634 lambda!132631))))

(declare-fun bs!604719 () Bool)

(assert (= bs!604719 (and b!4307125 d!1267610)))

(assert (=> bs!604719 (not (= lambda!132634 lambda!132628))))

(declare-fun bm!296991 () Bool)

(declare-fun call!297000 () Bool)

(declare-datatypes ((Option!10212 0))(
  ( (None!10211) (Some!10211 (v!42211 tuple2!46398)) )
))
(declare-fun call!296998 () Option!10212)

(declare-fun isDefined!7515 (Option!10212) Bool)

(assert (=> bm!296991 (= call!297000 (isDefined!7515 call!296998))))

(declare-fun lt!1527865 () ListLongMap!951)

(declare-fun bm!296992 () Bool)

(declare-fun call!296999 () (_ BitVec 64))

(declare-fun call!297001 () ListLongMap!951)

(declare-fun c!732298 () Bool)

(declare-fun call!296996 () List!48247)

(declare-fun apply!10979 (ListLongMap!951 (_ BitVec 64)) List!48247)

(assert (=> bm!296992 (= call!296996 (apply!10979 (ite c!732298 lt!1527865 call!297001) call!296999))))

(declare-fun b!4307120 () Bool)

(declare-fun e!2678246 () Unit!67154)

(declare-fun e!2678247 () Unit!67154)

(assert (=> b!4307120 (= e!2678246 e!2678247)))

(declare-fun res!1765376 () Bool)

(declare-fun call!296997 () Bool)

(assert (=> b!4307120 (= res!1765376 call!296997)))

(declare-fun e!2678249 () Bool)

(assert (=> b!4307120 (=> (not res!1765376) (not e!2678249))))

(declare-fun c!732300 () Bool)

(assert (=> b!4307120 (= c!732300 e!2678249)))

(declare-fun b!4307121 () Bool)

(declare-fun lt!1527867 () Unit!67154)

(assert (=> b!4307121 (= e!2678246 lt!1527867)))

(assert (=> b!4307121 (= lt!1527865 call!297001)))

(declare-fun lemmaInGenericMapThenInLongMap!126 (ListLongMap!951 K!9304 Hashable!4539) Unit!67154)

(assert (=> b!4307121 (= lt!1527867 (lemmaInGenericMapThenInLongMap!126 lt!1527865 key!2048 (hashF!6631 thiss!42308)))))

(declare-fun res!1765374 () Bool)

(assert (=> b!4307121 (= res!1765374 call!296997)))

(declare-fun e!2678252 () Bool)

(assert (=> b!4307121 (=> (not res!1765374) (not e!2678252))))

(assert (=> b!4307121 e!2678252))

(declare-fun b!4307122 () Bool)

(assert (=> b!4307122 (= e!2678252 call!297000)))

(declare-fun b!4307123 () Bool)

(assert (=> b!4307123 false))

(declare-fun lt!1527879 () Unit!67154)

(declare-fun lt!1527872 () Unit!67154)

(assert (=> b!4307123 (= lt!1527879 lt!1527872)))

(declare-fun lt!1527877 () ListLongMap!951)

(assert (=> b!4307123 (contains!10080 (extractMap!311 (toList!2340 lt!1527877)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!126 (ListLongMap!951 K!9304 Hashable!4539) Unit!67154)

(assert (=> b!4307123 (= lt!1527872 (lemmaInLongMapThenInGenericMap!126 lt!1527877 key!2048 (hashF!6631 thiss!42308)))))

(assert (=> b!4307123 (= lt!1527877 call!297001)))

(declare-fun Unit!67157 () Unit!67154)

(assert (=> b!4307123 (= e!2678247 Unit!67157)))

(declare-fun e!2678251 () Bool)

(declare-fun lt!1527864 () (_ BitVec 64))

(declare-fun b!4307124 () Bool)

(declare-fun getPair!126 (List!48247 K!9304) Option!10212)

(assert (=> b!4307124 (= e!2678251 (isDefined!7515 (getPair!126 (apply!10977 (v!42204 (underlying!9476 thiss!42308)) lt!1527864) key!2048)))))

(declare-fun e!2678248 () Unit!67154)

(declare-fun forallContained!1493 (List!48248 Int tuple2!46400) Unit!67154)

(assert (=> b!4307125 (= e!2678248 (forallContained!1493 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308)))) lambda!132634 (tuple2!46401 lt!1527864 (apply!10977 (v!42204 (underlying!9476 thiss!42308)) lt!1527864))))))

(declare-fun c!732297 () Bool)

(assert (=> b!4307125 (= c!732297 (not (contains!10083 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308)))) (tuple2!46401 lt!1527864 (apply!10977 (v!42204 (underlying!9476 thiss!42308)) lt!1527864)))))))

(declare-fun lt!1527871 () Unit!67154)

(declare-fun e!2678250 () Unit!67154)

(assert (=> b!4307125 (= lt!1527871 e!2678250)))

(declare-fun b!4307126 () Bool)

(assert (=> b!4307126 (= e!2678249 call!297000)))

(declare-fun b!4307127 () Bool)

(assert (=> b!4307127 false))

(declare-fun lt!1527868 () Unit!67154)

(declare-fun lt!1527874 () Unit!67154)

(assert (=> b!4307127 (= lt!1527868 lt!1527874)))

(declare-fun lt!1527866 () List!48248)

(declare-fun lt!1527873 () List!48247)

(assert (=> b!4307127 (contains!10083 lt!1527866 (tuple2!46401 lt!1527864 lt!1527873))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!137 (List!48248 (_ BitVec 64) List!48247) Unit!67154)

(assert (=> b!4307127 (= lt!1527874 (lemmaGetValueByKeyImpliesContainsTuple!137 lt!1527866 lt!1527864 lt!1527873))))

(assert (=> b!4307127 (= lt!1527873 (apply!10977 (v!42204 (underlying!9476 thiss!42308)) lt!1527864))))

(assert (=> b!4307127 (= lt!1527866 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308)))))))

(declare-fun lt!1527870 () Unit!67154)

(declare-fun lt!1527863 () Unit!67154)

(assert (=> b!4307127 (= lt!1527870 lt!1527863)))

(declare-fun lt!1527882 () List!48248)

(declare-fun isDefined!7516 (Option!10210) Bool)

(assert (=> b!4307127 (isDefined!7516 (getValueByKey!243 lt!1527882 lt!1527864))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!166 (List!48248 (_ BitVec 64)) Unit!67154)

(assert (=> b!4307127 (= lt!1527863 (lemmaContainsKeyImpliesGetValueByKeyDefined!166 lt!1527882 lt!1527864))))

(assert (=> b!4307127 (= lt!1527882 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308)))))))

(declare-fun lt!1527876 () Unit!67154)

(declare-fun lt!1527880 () Unit!67154)

(assert (=> b!4307127 (= lt!1527876 lt!1527880)))

(declare-fun lt!1527869 () List!48248)

(declare-fun containsKey!291 (List!48248 (_ BitVec 64)) Bool)

(assert (=> b!4307127 (containsKey!291 lt!1527869 lt!1527864)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!127 (List!48248 (_ BitVec 64)) Unit!67154)

(assert (=> b!4307127 (= lt!1527880 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!127 lt!1527869 lt!1527864))))

(assert (=> b!4307127 (= lt!1527869 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308)))))))

(declare-fun Unit!67158 () Unit!67154)

(assert (=> b!4307127 (= e!2678250 Unit!67158)))

(declare-fun b!4307128 () Bool)

(declare-fun Unit!67159 () Unit!67154)

(assert (=> b!4307128 (= e!2678248 Unit!67159)))

(declare-fun bm!296993 () Bool)

(assert (=> bm!296993 (= call!296998 (getPair!126 call!296996 key!2048))))

(declare-fun bm!296994 () Bool)

(assert (=> bm!296994 (= call!297001 (map!10101 (v!42204 (underlying!9476 thiss!42308))))))

(declare-fun d!1267624 () Bool)

(declare-fun lt!1527881 () Bool)

(assert (=> d!1267624 (= lt!1527881 (contains!10080 (map!10102 thiss!42308) key!2048))))

(assert (=> d!1267624 (= lt!1527881 e!2678251)))

(declare-fun res!1765375 () Bool)

(assert (=> d!1267624 (=> (not res!1765375) (not e!2678251))))

(assert (=> d!1267624 (= res!1765375 (contains!10079 (v!42204 (underlying!9476 thiss!42308)) lt!1527864))))

(declare-fun lt!1527878 () Unit!67154)

(assert (=> d!1267624 (= lt!1527878 e!2678246)))

(assert (=> d!1267624 (= c!732298 (contains!10080 (extractMap!311 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308))))) key!2048))))

(declare-fun lt!1527875 () Unit!67154)

(assert (=> d!1267624 (= lt!1527875 e!2678248)))

(declare-fun c!732299 () Bool)

(assert (=> d!1267624 (= c!732299 (contains!10079 (v!42204 (underlying!9476 thiss!42308)) lt!1527864))))

(assert (=> d!1267624 (= lt!1527864 (hash!955 (hashF!6631 thiss!42308) key!2048))))

(assert (=> d!1267624 (valid!3611 thiss!42308)))

(assert (=> d!1267624 (= (contains!10078 thiss!42308 key!2048) lt!1527881)))

(declare-fun b!4307129 () Bool)

(declare-fun Unit!67160 () Unit!67154)

(assert (=> b!4307129 (= e!2678250 Unit!67160)))

(declare-fun bm!296995 () Bool)

(assert (=> bm!296995 (= call!296999 (hash!955 (hashF!6631 thiss!42308) key!2048))))

(declare-fun b!4307130 () Bool)

(declare-fun Unit!67161 () Unit!67154)

(assert (=> b!4307130 (= e!2678247 Unit!67161)))

(declare-fun bm!296996 () Bool)

(assert (=> bm!296996 (= call!296997 (contains!10082 (ite c!732298 lt!1527865 call!297001) call!296999))))

(assert (= (and d!1267624 c!732299) b!4307125))

(assert (= (and d!1267624 (not c!732299)) b!4307128))

(assert (= (and b!4307125 c!732297) b!4307127))

(assert (= (and b!4307125 (not c!732297)) b!4307129))

(assert (= (and d!1267624 c!732298) b!4307121))

(assert (= (and d!1267624 (not c!732298)) b!4307120))

(assert (= (and b!4307121 res!1765374) b!4307122))

(assert (= (and b!4307120 res!1765376) b!4307126))

(assert (= (and b!4307120 c!732300) b!4307123))

(assert (= (and b!4307120 (not c!732300)) b!4307130))

(assert (= (or b!4307121 b!4307122 b!4307120 b!4307126) bm!296995))

(assert (= (or b!4307121 b!4307120 b!4307126 b!4307123) bm!296994))

(assert (= (or b!4307122 b!4307126) bm!296992))

(assert (= (or b!4307121 b!4307120) bm!296996))

(assert (= (or b!4307122 b!4307126) bm!296993))

(assert (= (or b!4307122 b!4307126) bm!296991))

(assert (= (and d!1267624 res!1765375) b!4307124))

(declare-fun m!4899925 () Bool)

(assert (=> bm!296992 m!4899925))

(declare-fun m!4899927 () Bool)

(assert (=> b!4307124 m!4899927))

(assert (=> b!4307124 m!4899927))

(declare-fun m!4899929 () Bool)

(assert (=> b!4307124 m!4899929))

(assert (=> b!4307124 m!4899929))

(declare-fun m!4899931 () Bool)

(assert (=> b!4307124 m!4899931))

(assert (=> bm!296995 m!4899769))

(assert (=> bm!296994 m!4899783))

(declare-fun m!4899933 () Bool)

(assert (=> bm!296991 m!4899933))

(declare-fun m!4899935 () Bool)

(assert (=> b!4307121 m!4899935))

(declare-fun m!4899937 () Bool)

(assert (=> b!4307127 m!4899937))

(assert (=> b!4307127 m!4899927))

(declare-fun m!4899939 () Bool)

(assert (=> b!4307127 m!4899939))

(declare-fun m!4899941 () Bool)

(assert (=> b!4307127 m!4899941))

(declare-fun m!4899943 () Bool)

(assert (=> b!4307127 m!4899943))

(assert (=> b!4307127 m!4899783))

(assert (=> b!4307127 m!4899941))

(declare-fun m!4899945 () Bool)

(assert (=> b!4307127 m!4899945))

(declare-fun m!4899947 () Bool)

(assert (=> b!4307127 m!4899947))

(declare-fun m!4899949 () Bool)

(assert (=> b!4307127 m!4899949))

(declare-fun m!4899951 () Bool)

(assert (=> bm!296996 m!4899951))

(declare-fun m!4899953 () Bool)

(assert (=> bm!296993 m!4899953))

(assert (=> b!4307125 m!4899783))

(assert (=> b!4307125 m!4899927))

(declare-fun m!4899955 () Bool)

(assert (=> b!4307125 m!4899955))

(declare-fun m!4899957 () Bool)

(assert (=> b!4307125 m!4899957))

(declare-fun m!4899959 () Bool)

(assert (=> b!4307123 m!4899959))

(assert (=> b!4307123 m!4899959))

(declare-fun m!4899961 () Bool)

(assert (=> b!4307123 m!4899961))

(declare-fun m!4899963 () Bool)

(assert (=> b!4307123 m!4899963))

(declare-fun m!4899965 () Bool)

(assert (=> d!1267624 m!4899965))

(declare-fun m!4899967 () Bool)

(assert (=> d!1267624 m!4899967))

(assert (=> d!1267624 m!4899785))

(assert (=> d!1267624 m!4899791))

(assert (=> d!1267624 m!4899965))

(assert (=> d!1267624 m!4899769))

(declare-fun m!4899969 () Bool)

(assert (=> d!1267624 m!4899969))

(assert (=> d!1267624 m!4899785))

(declare-fun m!4899971 () Bool)

(assert (=> d!1267624 m!4899971))

(assert (=> d!1267624 m!4899783))

(assert (=> b!4306995 d!1267624))

(declare-fun d!1267626 () Bool)

(assert (=> d!1267626 (= (map!10101 (v!42204 (underlying!9476 thiss!42308))) (map!10103 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308))))))))

(declare-fun bs!604720 () Bool)

(assert (= bs!604720 d!1267626))

(declare-fun m!4899973 () Bool)

(assert (=> bs!604720 m!4899973))

(assert (=> b!4306995 d!1267626))

(declare-fun d!1267628 () Bool)

(declare-fun lt!1527885 () ListMap!1623)

(assert (=> d!1267628 (invariantList!565 (toList!2341 lt!1527885))))

(assert (=> d!1267628 (= lt!1527885 (extractMap!311 (toList!2340 (map!10101 (v!42204 (underlying!9476 thiss!42308))))))))

(assert (=> d!1267628 (valid!3611 thiss!42308)))

(assert (=> d!1267628 (= (map!10102 thiss!42308) lt!1527885)))

(declare-fun bs!604721 () Bool)

(assert (= bs!604721 d!1267628))

(declare-fun m!4899975 () Bool)

(assert (=> bs!604721 m!4899975))

(assert (=> bs!604721 m!4899783))

(assert (=> bs!604721 m!4899965))

(assert (=> bs!604721 m!4899791))

(assert (=> b!4306995 d!1267628))

(declare-fun e!2678255 () Bool)

(declare-fun b!4307135 () Bool)

(declare-fun tp!1323590 () Bool)

(assert (=> b!4307135 (= e!2678255 (and tp_is_empty!23613 tp_is_empty!23615 tp!1323590))))

(assert (=> b!4306998 (= tp!1323586 e!2678255)))

(assert (= (and b!4306998 ((_ is Cons!48123) (zeroValue!4882 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308))))))) b!4307135))

(declare-fun b!4307136 () Bool)

(declare-fun tp!1323591 () Bool)

(declare-fun e!2678256 () Bool)

(assert (=> b!4307136 (= e!2678256 (and tp_is_empty!23613 tp_is_empty!23615 tp!1323591))))

(assert (=> b!4306998 (= tp!1323582 e!2678256)))

(assert (= (and b!4306998 ((_ is Cons!48123) (minValue!4882 (v!42203 (underlying!9475 (v!42204 (underlying!9476 thiss!42308))))))) b!4307136))

(declare-fun tp!1323599 () Bool)

(declare-fun e!2678262 () Bool)

(declare-fun b!4307144 () Bool)

(assert (=> b!4307144 (= e!2678262 (and tp_is_empty!23613 tp_is_empty!23615 tp!1323599))))

(declare-fun mapNonEmpty!20683 () Bool)

(declare-fun mapRes!20683 () Bool)

(declare-fun tp!1323600 () Bool)

(declare-fun e!2678261 () Bool)

(assert (=> mapNonEmpty!20683 (= mapRes!20683 (and tp!1323600 e!2678261))))

(declare-fun mapKey!20683 () (_ BitVec 32))

(declare-fun mapRest!20683 () (Array (_ BitVec 32) List!48247))

(declare-fun mapValue!20683 () List!48247)

(assert (=> mapNonEmpty!20683 (= mapRest!20680 (store mapRest!20683 mapKey!20683 mapValue!20683))))

(declare-fun tp!1323598 () Bool)

(declare-fun b!4307143 () Bool)

(assert (=> b!4307143 (= e!2678261 (and tp_is_empty!23613 tp_is_empty!23615 tp!1323598))))

(declare-fun condMapEmpty!20683 () Bool)

(declare-fun mapDefault!20683 () List!48247)

(assert (=> mapNonEmpty!20680 (= condMapEmpty!20683 (= mapRest!20680 ((as const (Array (_ BitVec 32) List!48247)) mapDefault!20683)))))

(assert (=> mapNonEmpty!20680 (= tp!1323583 (and e!2678262 mapRes!20683))))

(declare-fun mapIsEmpty!20683 () Bool)

(assert (=> mapIsEmpty!20683 mapRes!20683))

(assert (= (and mapNonEmpty!20680 condMapEmpty!20683) mapIsEmpty!20683))

(assert (= (and mapNonEmpty!20680 (not condMapEmpty!20683)) mapNonEmpty!20683))

(assert (= (and mapNonEmpty!20683 ((_ is Cons!48123) mapValue!20683)) b!4307143))

(assert (= (and mapNonEmpty!20680 ((_ is Cons!48123) mapDefault!20683)) b!4307144))

(declare-fun m!4899977 () Bool)

(assert (=> mapNonEmpty!20683 m!4899977))

(declare-fun tp!1323601 () Bool)

(declare-fun b!4307145 () Bool)

(declare-fun e!2678263 () Bool)

(assert (=> b!4307145 (= e!2678263 (and tp_is_empty!23613 tp_is_empty!23615 tp!1323601))))

(assert (=> mapNonEmpty!20680 (= tp!1323581 e!2678263)))

(assert (= (and mapNonEmpty!20680 ((_ is Cons!48123) mapValue!20680)) b!4307145))

(declare-fun e!2678264 () Bool)

(declare-fun tp!1323602 () Bool)

(declare-fun b!4307146 () Bool)

(assert (=> b!4307146 (= e!2678264 (and tp_is_empty!23613 tp_is_empty!23615 tp!1323602))))

(assert (=> b!4306993 (= tp!1323585 e!2678264)))

(assert (= (and b!4306993 ((_ is Cons!48123) mapDefault!20680)) b!4307146))

(declare-fun b_lambda!126541 () Bool)

(assert (= b_lambda!126535 (or (and b!4306998 b_free!128451) b_lambda!126541)))

(declare-fun b_lambda!126543 () Bool)

(assert (= b_lambda!126539 (or b!4307008 b_lambda!126543)))

(declare-fun bs!604722 () Bool)

(declare-fun d!1267630 () Bool)

(assert (= bs!604722 (and d!1267630 b!4307008)))

(assert (=> bs!604722 (= (dynLambda!20414 lambda!132606 (h!53554 (toList!2340 (map!10101 (_2!26480 lt!1527752))))) (noDuplicateKeys!196 (_2!26479 (h!53554 (toList!2340 (map!10101 (_2!26480 lt!1527752)))))))))

(declare-fun m!4899979 () Bool)

(assert (=> bs!604722 m!4899979))

(assert (=> b!4307096 d!1267630))

(declare-fun b_lambda!126545 () Bool)

(assert (= b_lambda!126537 (or b!4307008 b_lambda!126545)))

(declare-fun bs!604723 () Bool)

(declare-fun d!1267632 () Bool)

(assert (= bs!604723 (and d!1267632 b!4307008)))

(assert (=> bs!604723 (= (dynLambda!20414 lambda!132606 (h!53554 (toList!2340 lt!1527750))) (noDuplicateKeys!196 (_2!26479 (h!53554 (toList!2340 lt!1527750)))))))

(declare-fun m!4899981 () Bool)

(assert (=> bs!604723 m!4899981))

(assert (=> b!4307020 d!1267632))

(check-sat (not b!4307065) (not bm!296994) (not bm!296991) (not b!4307146) b_and!339859 (not b_next!129157) (not b!4307014) (not bm!296995) (not b!4307090) (not b_lambda!126541) (not mapNonEmpty!20683) (not b!4307121) (not b!4307088) (not b!4307097) (not b!4307127) (not d!1267590) (not bs!604723) (not d!1267586) (not b_lambda!126545) (not b!4307123) (not b!4307041) (not b!4307136) (not d!1267610) (not tb!257277) (not b!4307144) (not d!1267624) (not b!4307125) (not d!1267628) (not d!1267588) tp_is_empty!23615 (not b!4307143) b_and!339861 (not b!4307135) (not b!4307145) (not d!1267620) (not d!1267616) (not b!4307021) (not b!4307030) (not d!1267574) (not bm!296977) (not d!1267612) (not d!1267580) (not b!4307091) (not b!4307050) (not b!4307035) (not bm!296992) (not b_next!129155) (not d!1267608) (not bm!296993) (not d!1267622) (not d!1267598) (not d!1267606) tp_is_empty!23613 (not b_lambda!126543) (not d!1267604) (not b!4307024) (not b!4307089) (not bs!604722) (not d!1267594) (not d!1267596) (not b!4307043) (not d!1267582) (not b!4307029) (not d!1267600) (not b!4307092) (not bm!296996) (not bm!296978) (not d!1267626) (not b!4307042) (not d!1267614) (not d!1267602) (not b!4307124) (not b!4307049))
(check-sat b_and!339861 b_and!339859 (not b_next!129157) (not b_next!129155))

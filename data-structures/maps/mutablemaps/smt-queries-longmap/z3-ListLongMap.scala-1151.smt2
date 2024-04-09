; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24194 () Bool)

(assert start!24194)

(declare-fun b!252856 () Bool)

(declare-fun b_free!6657 () Bool)

(declare-fun b_next!6657 () Bool)

(assert (=> b!252856 (= b_free!6657 (not b_next!6657))))

(declare-fun tp!23252 () Bool)

(declare-fun b_and!13713 () Bool)

(assert (=> b!252856 (= tp!23252 b_and!13713)))

(declare-fun bm!23833 () Bool)

(declare-datatypes ((V!8339 0))(
  ( (V!8340 (val!3304 Int)) )
))
(declare-datatypes ((ValueCell!2916 0))(
  ( (ValueCellFull!2916 (v!5372 V!8339)) (EmptyCell!2916) )
))
(declare-datatypes ((array!12364 0))(
  ( (array!12365 (arr!5859 (Array (_ BitVec 32) ValueCell!2916)) (size!6206 (_ BitVec 32))) )
))
(declare-datatypes ((array!12366 0))(
  ( (array!12367 (arr!5860 (Array (_ BitVec 32) (_ BitVec 64))) (size!6207 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3732 0))(
  ( (LongMapFixedSize!3733 (defaultEntry!4671 Int) (mask!10897 (_ BitVec 32)) (extraKeys!4408 (_ BitVec 32)) (zeroValue!4512 V!8339) (minValue!4512 V!8339) (_size!1915 (_ BitVec 32)) (_keys!6821 array!12366) (_values!4654 array!12364) (_vacant!1915 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3732)

(declare-fun c!42610 () Bool)

(declare-datatypes ((SeekEntryResult!1146 0))(
  ( (MissingZero!1146 (index!6754 (_ BitVec 32))) (Found!1146 (index!6755 (_ BitVec 32))) (Intermediate!1146 (undefined!1958 Bool) (index!6756 (_ BitVec 32)) (x!24802 (_ BitVec 32))) (Undefined!1146) (MissingVacant!1146 (index!6757 (_ BitVec 32))) )
))
(declare-fun lt!126784 () SeekEntryResult!1146)

(declare-fun call!23837 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23833 (= call!23837 (inRange!0 (ite c!42610 (index!6754 lt!126784) (index!6757 lt!126784)) (mask!10897 thiss!1504)))))

(declare-fun b!252847 () Bool)

(declare-fun res!123787 () Bool)

(declare-fun e!163967 () Bool)

(assert (=> b!252847 (=> res!123787 e!163967)))

(declare-datatypes ((List!3768 0))(
  ( (Nil!3765) (Cons!3764 (h!4426 (_ BitVec 64)) (t!8819 List!3768)) )
))
(declare-fun arrayNoDuplicates!0 (array!12366 (_ BitVec 32) List!3768) Bool)

(assert (=> b!252847 (= res!123787 (not (arrayNoDuplicates!0 (_keys!6821 thiss!1504) #b00000000000000000000000000000000 Nil!3765)))))

(declare-fun b!252848 () Bool)

(declare-datatypes ((Unit!7827 0))(
  ( (Unit!7828) )
))
(declare-fun e!163972 () Unit!7827)

(declare-fun Unit!7829 () Unit!7827)

(assert (=> b!252848 (= e!163972 Unit!7829)))

(declare-fun lt!126792 () Unit!7827)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!409 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 64) Int) Unit!7827)

(assert (=> b!252848 (= lt!126792 (lemmaInListMapThenSeekEntryOrOpenFindsIt!409 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 (defaultEntry!4671 thiss!1504)))))

(assert (=> b!252848 false))

(declare-fun b!252849 () Bool)

(declare-fun res!123784 () Bool)

(declare-fun e!163973 () Bool)

(assert (=> b!252849 (=> (not res!123784) (not e!163973))))

(assert (=> b!252849 (= res!123784 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!252850 () Bool)

(declare-fun e!163970 () Bool)

(assert (=> b!252850 (= e!163970 (not e!163967))))

(declare-fun res!123782 () Bool)

(assert (=> b!252850 (=> res!123782 e!163967)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!252850 (= res!123782 (not (validMask!0 (mask!10897 thiss!1504))))))

(declare-fun lt!126789 () array!12366)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12366 (_ BitVec 32)) Bool)

(assert (=> b!252850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126789 (mask!10897 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!126787 () Unit!7827)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12366 (_ BitVec 32) (_ BitVec 32)) Unit!7827)

(assert (=> b!252850 (= lt!126787 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6821 thiss!1504) index!297 (mask!10897 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12366 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!252850 (= (arrayCountValidKeys!0 lt!126789 #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6821 thiss!1504) #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504)))))))

(declare-fun lt!126788 () Unit!7827)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12366 (_ BitVec 32) (_ BitVec 64)) Unit!7827)

(assert (=> b!252850 (= lt!126788 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6821 thiss!1504) index!297 key!932))))

(assert (=> b!252850 (arrayNoDuplicates!0 lt!126789 #b00000000000000000000000000000000 Nil!3765)))

(assert (=> b!252850 (= lt!126789 (array!12367 (store (arr!5860 (_keys!6821 thiss!1504)) index!297 key!932) (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun lt!126790 () Unit!7827)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12366 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3768) Unit!7827)

(assert (=> b!252850 (= lt!126790 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6821 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3765))))

(declare-fun lt!126786 () Unit!7827)

(declare-fun e!163974 () Unit!7827)

(assert (=> b!252850 (= lt!126786 e!163974)))

(declare-fun c!42611 () Bool)

(declare-fun arrayContainsKey!0 (array!12366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!252850 (= c!42611 (arrayContainsKey!0 (_keys!6821 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252852 () Bool)

(declare-fun e!163962 () Bool)

(declare-fun call!23836 () Bool)

(assert (=> b!252852 (= e!163962 (not call!23836))))

(declare-fun b!252853 () Bool)

(declare-fun res!123783 () Bool)

(declare-fun e!163963 () Bool)

(assert (=> b!252853 (=> (not res!123783) (not e!163963))))

(assert (=> b!252853 (= res!123783 call!23837)))

(declare-fun e!163968 () Bool)

(assert (=> b!252853 (= e!163968 e!163963)))

(declare-fun b!252854 () Bool)

(declare-fun res!123779 () Bool)

(assert (=> b!252854 (= res!123779 (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6757 lt!126784)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252854 (=> (not res!123779) (not e!163962))))

(declare-fun b!252855 () Bool)

(declare-fun e!163964 () Bool)

(assert (=> b!252855 (= e!163973 e!163964)))

(declare-fun res!123785 () Bool)

(assert (=> b!252855 (=> (not res!123785) (not e!163964))))

(assert (=> b!252855 (= res!123785 (or (= lt!126784 (MissingZero!1146 index!297)) (= lt!126784 (MissingVacant!1146 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12366 (_ BitVec 32)) SeekEntryResult!1146)

(assert (=> b!252855 (= lt!126784 (seekEntryOrOpen!0 key!932 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)))))

(declare-fun e!163961 () Bool)

(declare-fun tp_is_empty!6519 () Bool)

(declare-fun e!163966 () Bool)

(declare-fun array_inv!3865 (array!12366) Bool)

(declare-fun array_inv!3866 (array!12364) Bool)

(assert (=> b!252856 (= e!163966 (and tp!23252 tp_is_empty!6519 (array_inv!3865 (_keys!6821 thiss!1504)) (array_inv!3866 (_values!4654 thiss!1504)) e!163961))))

(declare-fun mapIsEmpty!11088 () Bool)

(declare-fun mapRes!11088 () Bool)

(assert (=> mapIsEmpty!11088 mapRes!11088))

(declare-fun mapNonEmpty!11088 () Bool)

(declare-fun tp!23253 () Bool)

(declare-fun e!163960 () Bool)

(assert (=> mapNonEmpty!11088 (= mapRes!11088 (and tp!23253 e!163960))))

(declare-fun mapRest!11088 () (Array (_ BitVec 32) ValueCell!2916))

(declare-fun mapValue!11088 () ValueCell!2916)

(declare-fun mapKey!11088 () (_ BitVec 32))

(assert (=> mapNonEmpty!11088 (= (arr!5859 (_values!4654 thiss!1504)) (store mapRest!11088 mapKey!11088 mapValue!11088))))

(declare-fun b!252857 () Bool)

(declare-fun res!123777 () Bool)

(assert (=> b!252857 (=> (not res!123777) (not e!163963))))

(assert (=> b!252857 (= res!123777 (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6754 lt!126784)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!252858 () Bool)

(declare-fun e!163969 () Bool)

(assert (=> b!252858 (= e!163969 tp_is_empty!6519)))

(declare-fun b!252859 () Bool)

(assert (=> b!252859 (= e!163967 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6207 (_keys!6821 thiss!1504)))))))

(declare-fun b!252860 () Bool)

(declare-fun e!163965 () Bool)

(get-info :version)

(assert (=> b!252860 (= e!163965 ((_ is Undefined!1146) lt!126784))))

(declare-fun b!252861 () Bool)

(declare-fun Unit!7830 () Unit!7827)

(assert (=> b!252861 (= e!163974 Unit!7830)))

(declare-fun b!252862 () Bool)

(assert (=> b!252862 (= e!163963 (not call!23836))))

(declare-fun b!252863 () Bool)

(declare-fun lt!126791 () Unit!7827)

(assert (=> b!252863 (= e!163972 lt!126791)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!410 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 64) Int) Unit!7827)

(assert (=> b!252863 (= lt!126791 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!410 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 (defaultEntry!4671 thiss!1504)))))

(assert (=> b!252863 (= c!42610 ((_ is MissingZero!1146) lt!126784))))

(assert (=> b!252863 e!163968))

(declare-fun b!252864 () Bool)

(assert (=> b!252864 (= e!163964 e!163970)))

(declare-fun res!123778 () Bool)

(assert (=> b!252864 (=> (not res!123778) (not e!163970))))

(assert (=> b!252864 (= res!123778 (inRange!0 index!297 (mask!10897 thiss!1504)))))

(declare-fun lt!126785 () Unit!7827)

(assert (=> b!252864 (= lt!126785 e!163972)))

(declare-fun c!42608 () Bool)

(declare-datatypes ((tuple2!4864 0))(
  ( (tuple2!4865 (_1!2442 (_ BitVec 64)) (_2!2442 V!8339)) )
))
(declare-datatypes ((List!3769 0))(
  ( (Nil!3766) (Cons!3765 (h!4427 tuple2!4864) (t!8820 List!3769)) )
))
(declare-datatypes ((ListLongMap!3791 0))(
  ( (ListLongMap!3792 (toList!1911 List!3769)) )
))
(declare-fun contains!1833 (ListLongMap!3791 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1434 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 32) Int) ListLongMap!3791)

(assert (=> b!252864 (= c!42608 (contains!1833 (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)) key!932))))

(declare-fun b!252865 () Bool)

(declare-fun res!123786 () Bool)

(assert (=> b!252865 (=> res!123786 e!163967)))

(assert (=> b!252865 (= res!123786 (or (not (= (size!6206 (_values!4654 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10897 thiss!1504)))) (not (= (size!6207 (_keys!6821 thiss!1504)) (size!6206 (_values!4654 thiss!1504)))) (bvslt (mask!10897 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4408 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4408 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!252866 () Bool)

(declare-fun c!42609 () Bool)

(assert (=> b!252866 (= c!42609 ((_ is MissingVacant!1146) lt!126784))))

(assert (=> b!252866 (= e!163968 e!163965)))

(declare-fun b!252867 () Bool)

(assert (=> b!252867 (= e!163965 e!163962)))

(declare-fun res!123788 () Bool)

(assert (=> b!252867 (= res!123788 call!23837)))

(assert (=> b!252867 (=> (not res!123788) (not e!163962))))

(declare-fun b!252851 () Bool)

(declare-fun res!123780 () Bool)

(assert (=> b!252851 (=> res!123780 e!163967)))

(assert (=> b!252851 (= res!123780 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6821 thiss!1504) (mask!10897 thiss!1504))))))

(declare-fun res!123781 () Bool)

(assert (=> start!24194 (=> (not res!123781) (not e!163973))))

(declare-fun valid!1453 (LongMapFixedSize!3732) Bool)

(assert (=> start!24194 (= res!123781 (valid!1453 thiss!1504))))

(assert (=> start!24194 e!163973))

(assert (=> start!24194 e!163966))

(assert (=> start!24194 true))

(declare-fun b!252868 () Bool)

(assert (=> b!252868 (= e!163961 (and e!163969 mapRes!11088))))

(declare-fun condMapEmpty!11088 () Bool)

(declare-fun mapDefault!11088 () ValueCell!2916)

(assert (=> b!252868 (= condMapEmpty!11088 (= (arr!5859 (_values!4654 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2916)) mapDefault!11088)))))

(declare-fun bm!23834 () Bool)

(assert (=> bm!23834 (= call!23836 (arrayContainsKey!0 (_keys!6821 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252869 () Bool)

(assert (=> b!252869 (= e!163960 tp_is_empty!6519)))

(declare-fun b!252870 () Bool)

(declare-fun Unit!7831 () Unit!7827)

(assert (=> b!252870 (= e!163974 Unit!7831)))

(declare-fun lt!126793 () Unit!7827)

(declare-fun lemmaArrayContainsKeyThenInListMap!213 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 64) (_ BitVec 32) Int) Unit!7827)

(assert (=> b!252870 (= lt!126793 (lemmaArrayContainsKeyThenInListMap!213 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)))))

(assert (=> b!252870 false))

(assert (= (and start!24194 res!123781) b!252849))

(assert (= (and b!252849 res!123784) b!252855))

(assert (= (and b!252855 res!123785) b!252864))

(assert (= (and b!252864 c!42608) b!252848))

(assert (= (and b!252864 (not c!42608)) b!252863))

(assert (= (and b!252863 c!42610) b!252853))

(assert (= (and b!252863 (not c!42610)) b!252866))

(assert (= (and b!252853 res!123783) b!252857))

(assert (= (and b!252857 res!123777) b!252862))

(assert (= (and b!252866 c!42609) b!252867))

(assert (= (and b!252866 (not c!42609)) b!252860))

(assert (= (and b!252867 res!123788) b!252854))

(assert (= (and b!252854 res!123779) b!252852))

(assert (= (or b!252853 b!252867) bm!23833))

(assert (= (or b!252862 b!252852) bm!23834))

(assert (= (and b!252864 res!123778) b!252850))

(assert (= (and b!252850 c!42611) b!252870))

(assert (= (and b!252850 (not c!42611)) b!252861))

(assert (= (and b!252850 (not res!123782)) b!252865))

(assert (= (and b!252865 (not res!123786)) b!252851))

(assert (= (and b!252851 (not res!123780)) b!252847))

(assert (= (and b!252847 (not res!123787)) b!252859))

(assert (= (and b!252868 condMapEmpty!11088) mapIsEmpty!11088))

(assert (= (and b!252868 (not condMapEmpty!11088)) mapNonEmpty!11088))

(assert (= (and mapNonEmpty!11088 ((_ is ValueCellFull!2916) mapValue!11088)) b!252869))

(assert (= (and b!252868 ((_ is ValueCellFull!2916) mapDefault!11088)) b!252858))

(assert (= b!252856 b!252868))

(assert (= start!24194 b!252856))

(declare-fun m!268867 () Bool)

(assert (=> b!252854 m!268867))

(declare-fun m!268869 () Bool)

(assert (=> b!252851 m!268869))

(declare-fun m!268871 () Bool)

(assert (=> b!252863 m!268871))

(declare-fun m!268873 () Bool)

(assert (=> b!252850 m!268873))

(declare-fun m!268875 () Bool)

(assert (=> b!252850 m!268875))

(declare-fun m!268877 () Bool)

(assert (=> b!252850 m!268877))

(declare-fun m!268879 () Bool)

(assert (=> b!252850 m!268879))

(declare-fun m!268881 () Bool)

(assert (=> b!252850 m!268881))

(declare-fun m!268883 () Bool)

(assert (=> b!252850 m!268883))

(declare-fun m!268885 () Bool)

(assert (=> b!252850 m!268885))

(declare-fun m!268887 () Bool)

(assert (=> b!252850 m!268887))

(declare-fun m!268889 () Bool)

(assert (=> b!252850 m!268889))

(declare-fun m!268891 () Bool)

(assert (=> b!252850 m!268891))

(declare-fun m!268893 () Bool)

(assert (=> b!252847 m!268893))

(declare-fun m!268895 () Bool)

(assert (=> b!252848 m!268895))

(declare-fun m!268897 () Bool)

(assert (=> mapNonEmpty!11088 m!268897))

(declare-fun m!268899 () Bool)

(assert (=> b!252856 m!268899))

(declare-fun m!268901 () Bool)

(assert (=> b!252856 m!268901))

(declare-fun m!268903 () Bool)

(assert (=> b!252870 m!268903))

(declare-fun m!268905 () Bool)

(assert (=> b!252857 m!268905))

(declare-fun m!268907 () Bool)

(assert (=> bm!23833 m!268907))

(declare-fun m!268909 () Bool)

(assert (=> b!252864 m!268909))

(declare-fun m!268911 () Bool)

(assert (=> b!252864 m!268911))

(assert (=> b!252864 m!268911))

(declare-fun m!268913 () Bool)

(assert (=> b!252864 m!268913))

(declare-fun m!268915 () Bool)

(assert (=> b!252855 m!268915))

(assert (=> bm!23834 m!268875))

(declare-fun m!268917 () Bool)

(assert (=> start!24194 m!268917))

(check-sat (not start!24194) (not bm!23834) (not b!252847) (not b!252863) (not b!252851) (not b!252855) (not b!252850) (not b!252870) (not b!252856) (not b_next!6657) b_and!13713 (not bm!23833) (not mapNonEmpty!11088) (not b!252848) (not b!252864) tp_is_empty!6519)
(check-sat b_and!13713 (not b_next!6657))
(get-model)

(declare-fun d!61299 () Bool)

(assert (=> d!61299 (= (array_inv!3865 (_keys!6821 thiss!1504)) (bvsge (size!6207 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252856 d!61299))

(declare-fun d!61301 () Bool)

(assert (=> d!61301 (= (array_inv!3866 (_values!4654 thiss!1504)) (bvsge (size!6206 (_values!4654 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252856 d!61301))

(declare-fun d!61303 () Bool)

(assert (=> d!61303 (= (inRange!0 (ite c!42610 (index!6754 lt!126784) (index!6757 lt!126784)) (mask!10897 thiss!1504)) (and (bvsge (ite c!42610 (index!6754 lt!126784) (index!6757 lt!126784)) #b00000000000000000000000000000000) (bvslt (ite c!42610 (index!6754 lt!126784) (index!6757 lt!126784)) (bvadd (mask!10897 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23833 d!61303))

(declare-fun d!61305 () Bool)

(declare-fun res!123831 () Bool)

(declare-fun e!164022 () Bool)

(assert (=> d!61305 (=> (not res!123831) (not e!164022))))

(declare-fun simpleValid!267 (LongMapFixedSize!3732) Bool)

(assert (=> d!61305 (= res!123831 (simpleValid!267 thiss!1504))))

(assert (=> d!61305 (= (valid!1453 thiss!1504) e!164022)))

(declare-fun b!252949 () Bool)

(declare-fun res!123832 () Bool)

(assert (=> b!252949 (=> (not res!123832) (not e!164022))))

(assert (=> b!252949 (= res!123832 (= (arrayCountValidKeys!0 (_keys!6821 thiss!1504) #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) (_size!1915 thiss!1504)))))

(declare-fun b!252950 () Bool)

(declare-fun res!123833 () Bool)

(assert (=> b!252950 (=> (not res!123833) (not e!164022))))

(assert (=> b!252950 (= res!123833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)))))

(declare-fun b!252951 () Bool)

(assert (=> b!252951 (= e!164022 (arrayNoDuplicates!0 (_keys!6821 thiss!1504) #b00000000000000000000000000000000 Nil!3765))))

(assert (= (and d!61305 res!123831) b!252949))

(assert (= (and b!252949 res!123832) b!252950))

(assert (= (and b!252950 res!123833) b!252951))

(declare-fun m!268971 () Bool)

(assert (=> d!61305 m!268971))

(assert (=> b!252949 m!268887))

(assert (=> b!252950 m!268869))

(assert (=> b!252951 m!268893))

(assert (=> start!24194 d!61305))

(declare-fun b!252962 () Bool)

(declare-fun e!164032 () Bool)

(declare-fun e!164031 () Bool)

(assert (=> b!252962 (= e!164032 e!164031)))

(declare-fun res!123841 () Bool)

(assert (=> b!252962 (=> (not res!123841) (not e!164031))))

(declare-fun e!164034 () Bool)

(assert (=> b!252962 (= res!123841 (not e!164034))))

(declare-fun res!123842 () Bool)

(assert (=> b!252962 (=> (not res!123842) (not e!164034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!252962 (= res!123842 (validKeyInArray!0 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61307 () Bool)

(declare-fun res!123840 () Bool)

(assert (=> d!61307 (=> res!123840 e!164032)))

(assert (=> d!61307 (= res!123840 (bvsge #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(assert (=> d!61307 (= (arrayNoDuplicates!0 (_keys!6821 thiss!1504) #b00000000000000000000000000000000 Nil!3765) e!164032)))

(declare-fun b!252963 () Bool)

(declare-fun e!164033 () Bool)

(declare-fun call!23846 () Bool)

(assert (=> b!252963 (= e!164033 call!23846)))

(declare-fun b!252964 () Bool)

(declare-fun contains!1834 (List!3768 (_ BitVec 64)) Bool)

(assert (=> b!252964 (= e!164034 (contains!1834 Nil!3765 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252965 () Bool)

(assert (=> b!252965 (= e!164031 e!164033)))

(declare-fun c!42626 () Bool)

(assert (=> b!252965 (= c!42626 (validKeyInArray!0 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252966 () Bool)

(assert (=> b!252966 (= e!164033 call!23846)))

(declare-fun bm!23843 () Bool)

(assert (=> bm!23843 (= call!23846 (arrayNoDuplicates!0 (_keys!6821 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42626 (Cons!3764 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000) Nil!3765) Nil!3765)))))

(assert (= (and d!61307 (not res!123840)) b!252962))

(assert (= (and b!252962 res!123842) b!252964))

(assert (= (and b!252962 res!123841) b!252965))

(assert (= (and b!252965 c!42626) b!252966))

(assert (= (and b!252965 (not c!42626)) b!252963))

(assert (= (or b!252966 b!252963) bm!23843))

(declare-fun m!268973 () Bool)

(assert (=> b!252962 m!268973))

(assert (=> b!252962 m!268973))

(declare-fun m!268975 () Bool)

(assert (=> b!252962 m!268975))

(assert (=> b!252964 m!268973))

(assert (=> b!252964 m!268973))

(declare-fun m!268977 () Bool)

(assert (=> b!252964 m!268977))

(assert (=> b!252965 m!268973))

(assert (=> b!252965 m!268973))

(assert (=> b!252965 m!268975))

(assert (=> bm!23843 m!268973))

(declare-fun m!268979 () Bool)

(assert (=> bm!23843 m!268979))

(assert (=> b!252847 d!61307))

(declare-fun b!252983 () Bool)

(declare-fun res!123854 () Bool)

(declare-fun e!164046 () Bool)

(assert (=> b!252983 (=> (not res!123854) (not e!164046))))

(declare-fun call!23851 () Bool)

(assert (=> b!252983 (= res!123854 call!23851)))

(declare-fun e!164044 () Bool)

(assert (=> b!252983 (= e!164044 e!164046)))

(declare-fun lt!126829 () SeekEntryResult!1146)

(declare-fun bm!23848 () Bool)

(declare-fun c!42631 () Bool)

(assert (=> bm!23848 (= call!23851 (inRange!0 (ite c!42631 (index!6754 lt!126829) (index!6757 lt!126829)) (mask!10897 thiss!1504)))))

(declare-fun b!252984 () Bool)

(assert (=> b!252984 (= e!164044 ((_ is Undefined!1146) lt!126829))))

(declare-fun b!252985 () Bool)

(declare-fun call!23852 () Bool)

(assert (=> b!252985 (= e!164046 (not call!23852))))

(declare-fun b!252986 () Bool)

(declare-fun e!164045 () Bool)

(assert (=> b!252986 (= e!164045 e!164044)))

(declare-fun c!42632 () Bool)

(assert (=> b!252986 (= c!42632 ((_ is MissingVacant!1146) lt!126829))))

(declare-fun b!252987 () Bool)

(declare-fun e!164043 () Bool)

(assert (=> b!252987 (= e!164043 (not call!23852))))

(declare-fun b!252988 () Bool)

(assert (=> b!252988 (and (bvsge (index!6754 lt!126829) #b00000000000000000000000000000000) (bvslt (index!6754 lt!126829) (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun res!123852 () Bool)

(assert (=> b!252988 (= res!123852 (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6754 lt!126829)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252988 (=> (not res!123852) (not e!164043))))

(declare-fun bm!23849 () Bool)

(assert (=> bm!23849 (= call!23852 (arrayContainsKey!0 (_keys!6821 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun d!61309 () Bool)

(assert (=> d!61309 e!164045))

(assert (=> d!61309 (= c!42631 ((_ is MissingZero!1146) lt!126829))))

(assert (=> d!61309 (= lt!126829 (seekEntryOrOpen!0 key!932 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)))))

(declare-fun lt!126828 () Unit!7827)

(declare-fun choose!1214 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 64) Int) Unit!7827)

(assert (=> d!61309 (= lt!126828 (choose!1214 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 (defaultEntry!4671 thiss!1504)))))

(assert (=> d!61309 (validMask!0 (mask!10897 thiss!1504))))

(assert (=> d!61309 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!410 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 (defaultEntry!4671 thiss!1504)) lt!126828)))

(declare-fun b!252989 () Bool)

(assert (=> b!252989 (= e!164045 e!164043)))

(declare-fun res!123851 () Bool)

(assert (=> b!252989 (= res!123851 call!23851)))

(assert (=> b!252989 (=> (not res!123851) (not e!164043))))

(declare-fun b!252990 () Bool)

(declare-fun res!123853 () Bool)

(assert (=> b!252990 (=> (not res!123853) (not e!164046))))

(assert (=> b!252990 (= res!123853 (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6757 lt!126829)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252990 (and (bvsge (index!6757 lt!126829) #b00000000000000000000000000000000) (bvslt (index!6757 lt!126829) (size!6207 (_keys!6821 thiss!1504))))))

(assert (= (and d!61309 c!42631) b!252989))

(assert (= (and d!61309 (not c!42631)) b!252986))

(assert (= (and b!252989 res!123851) b!252988))

(assert (= (and b!252988 res!123852) b!252987))

(assert (= (and b!252986 c!42632) b!252983))

(assert (= (and b!252986 (not c!42632)) b!252984))

(assert (= (and b!252983 res!123854) b!252990))

(assert (= (and b!252990 res!123853) b!252985))

(assert (= (or b!252989 b!252983) bm!23848))

(assert (= (or b!252987 b!252985) bm!23849))

(assert (=> d!61309 m!268915))

(declare-fun m!268981 () Bool)

(assert (=> d!61309 m!268981))

(assert (=> d!61309 m!268873))

(declare-fun m!268983 () Bool)

(assert (=> b!252988 m!268983))

(declare-fun m!268985 () Bool)

(assert (=> b!252990 m!268985))

(assert (=> bm!23849 m!268875))

(declare-fun m!268987 () Bool)

(assert (=> bm!23848 m!268987))

(assert (=> b!252863 d!61309))

(declare-fun d!61311 () Bool)

(assert (=> d!61311 (= (inRange!0 index!297 (mask!10897 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10897 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!252864 d!61311))

(declare-fun d!61313 () Bool)

(declare-fun e!164051 () Bool)

(assert (=> d!61313 e!164051))

(declare-fun res!123857 () Bool)

(assert (=> d!61313 (=> res!123857 e!164051)))

(declare-fun lt!126838 () Bool)

(assert (=> d!61313 (= res!123857 (not lt!126838))))

(declare-fun lt!126841 () Bool)

(assert (=> d!61313 (= lt!126838 lt!126841)))

(declare-fun lt!126840 () Unit!7827)

(declare-fun e!164052 () Unit!7827)

(assert (=> d!61313 (= lt!126840 e!164052)))

(declare-fun c!42635 () Bool)

(assert (=> d!61313 (= c!42635 lt!126841)))

(declare-fun containsKey!294 (List!3769 (_ BitVec 64)) Bool)

(assert (=> d!61313 (= lt!126841 (containsKey!294 (toList!1911 (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504))) key!932))))

(assert (=> d!61313 (= (contains!1833 (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)) key!932) lt!126838)))

(declare-fun b!252997 () Bool)

(declare-fun lt!126839 () Unit!7827)

(assert (=> b!252997 (= e!164052 lt!126839)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!243 (List!3769 (_ BitVec 64)) Unit!7827)

(assert (=> b!252997 (= lt!126839 (lemmaContainsKeyImpliesGetValueByKeyDefined!243 (toList!1911 (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504))) key!932))))

(declare-datatypes ((Option!308 0))(
  ( (Some!307 (v!5374 V!8339)) (None!306) )
))
(declare-fun isDefined!244 (Option!308) Bool)

(declare-fun getValueByKey!302 (List!3769 (_ BitVec 64)) Option!308)

(assert (=> b!252997 (isDefined!244 (getValueByKey!302 (toList!1911 (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504))) key!932))))

(declare-fun b!252998 () Bool)

(declare-fun Unit!7836 () Unit!7827)

(assert (=> b!252998 (= e!164052 Unit!7836)))

(declare-fun b!252999 () Bool)

(assert (=> b!252999 (= e!164051 (isDefined!244 (getValueByKey!302 (toList!1911 (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504))) key!932)))))

(assert (= (and d!61313 c!42635) b!252997))

(assert (= (and d!61313 (not c!42635)) b!252998))

(assert (= (and d!61313 (not res!123857)) b!252999))

(declare-fun m!268989 () Bool)

(assert (=> d!61313 m!268989))

(declare-fun m!268991 () Bool)

(assert (=> b!252997 m!268991))

(declare-fun m!268993 () Bool)

(assert (=> b!252997 m!268993))

(assert (=> b!252997 m!268993))

(declare-fun m!268995 () Bool)

(assert (=> b!252997 m!268995))

(assert (=> b!252999 m!268993))

(assert (=> b!252999 m!268993))

(assert (=> b!252999 m!268995))

(assert (=> b!252864 d!61313))

(declare-fun b!253042 () Bool)

(declare-fun res!123881 () Bool)

(declare-fun e!164085 () Bool)

(assert (=> b!253042 (=> (not res!123881) (not e!164085))))

(declare-fun e!164089 () Bool)

(assert (=> b!253042 (= res!123881 e!164089)))

(declare-fun res!123880 () Bool)

(assert (=> b!253042 (=> res!123880 e!164089)))

(declare-fun e!164087 () Bool)

(assert (=> b!253042 (= res!123880 (not e!164087))))

(declare-fun res!123876 () Bool)

(assert (=> b!253042 (=> (not res!123876) (not e!164087))))

(assert (=> b!253042 (= res!123876 (bvslt #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun b!253043 () Bool)

(assert (=> b!253043 (= e!164087 (validKeyInArray!0 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61315 () Bool)

(assert (=> d!61315 e!164085))

(declare-fun res!123879 () Bool)

(assert (=> d!61315 (=> (not res!123879) (not e!164085))))

(assert (=> d!61315 (= res!123879 (or (bvsge #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))))

(declare-fun lt!126904 () ListLongMap!3791)

(declare-fun lt!126898 () ListLongMap!3791)

(assert (=> d!61315 (= lt!126904 lt!126898)))

(declare-fun lt!126888 () Unit!7827)

(declare-fun e!164084 () Unit!7827)

(assert (=> d!61315 (= lt!126888 e!164084)))

(declare-fun c!42653 () Bool)

(declare-fun e!164082 () Bool)

(assert (=> d!61315 (= c!42653 e!164082)))

(declare-fun res!123883 () Bool)

(assert (=> d!61315 (=> (not res!123883) (not e!164082))))

(assert (=> d!61315 (= res!123883 (bvslt #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun e!164080 () ListLongMap!3791)

(assert (=> d!61315 (= lt!126898 e!164080)))

(declare-fun c!42650 () Bool)

(assert (=> d!61315 (= c!42650 (and (not (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61315 (validMask!0 (mask!10897 thiss!1504))))

(assert (=> d!61315 (= (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)) lt!126904)))

(declare-fun b!253044 () Bool)

(declare-fun c!42648 () Bool)

(assert (=> b!253044 (= c!42648 (and (not (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!164079 () ListLongMap!3791)

(declare-fun e!164090 () ListLongMap!3791)

(assert (=> b!253044 (= e!164079 e!164090)))

(declare-fun b!253045 () Bool)

(declare-fun e!164091 () Bool)

(assert (=> b!253045 (= e!164089 e!164091)))

(declare-fun res!123877 () Bool)

(assert (=> b!253045 (=> (not res!123877) (not e!164091))))

(assert (=> b!253045 (= res!123877 (contains!1833 lt!126904 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!253045 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun b!253046 () Bool)

(declare-fun e!164088 () Bool)

(declare-fun call!23868 () Bool)

(assert (=> b!253046 (= e!164088 (not call!23868))))

(declare-fun b!253047 () Bool)

(declare-fun e!164086 () Bool)

(declare-fun e!164083 () Bool)

(assert (=> b!253047 (= e!164086 e!164083)))

(declare-fun res!123882 () Bool)

(declare-fun call!23872 () Bool)

(assert (=> b!253047 (= res!123882 call!23872)))

(assert (=> b!253047 (=> (not res!123882) (not e!164083))))

(declare-fun b!253048 () Bool)

(assert (=> b!253048 (= e!164082 (validKeyInArray!0 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!253049 () Bool)

(assert (=> b!253049 (= e!164085 e!164088)))

(declare-fun c!42652 () Bool)

(assert (=> b!253049 (= c!42652 (not (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!253050 () Bool)

(declare-fun lt!126901 () Unit!7827)

(assert (=> b!253050 (= e!164084 lt!126901)))

(declare-fun lt!126907 () ListLongMap!3791)

(declare-fun getCurrentListMapNoExtraKeys!564 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 32) Int) ListLongMap!3791)

(assert (=> b!253050 (= lt!126907 (getCurrentListMapNoExtraKeys!564 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)))))

(declare-fun lt!126903 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126903 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126887 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126887 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126889 () Unit!7827)

(declare-fun addStillContains!221 (ListLongMap!3791 (_ BitVec 64) V!8339 (_ BitVec 64)) Unit!7827)

(assert (=> b!253050 (= lt!126889 (addStillContains!221 lt!126907 lt!126903 (zeroValue!4512 thiss!1504) lt!126887))))

(declare-fun +!667 (ListLongMap!3791 tuple2!4864) ListLongMap!3791)

(assert (=> b!253050 (contains!1833 (+!667 lt!126907 (tuple2!4865 lt!126903 (zeroValue!4512 thiss!1504))) lt!126887)))

(declare-fun lt!126900 () Unit!7827)

(assert (=> b!253050 (= lt!126900 lt!126889)))

(declare-fun lt!126886 () ListLongMap!3791)

(assert (=> b!253050 (= lt!126886 (getCurrentListMapNoExtraKeys!564 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)))))

(declare-fun lt!126894 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126894 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126890 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126890 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126895 () Unit!7827)

(declare-fun addApplyDifferent!221 (ListLongMap!3791 (_ BitVec 64) V!8339 (_ BitVec 64)) Unit!7827)

(assert (=> b!253050 (= lt!126895 (addApplyDifferent!221 lt!126886 lt!126894 (minValue!4512 thiss!1504) lt!126890))))

(declare-fun apply!245 (ListLongMap!3791 (_ BitVec 64)) V!8339)

(assert (=> b!253050 (= (apply!245 (+!667 lt!126886 (tuple2!4865 lt!126894 (minValue!4512 thiss!1504))) lt!126890) (apply!245 lt!126886 lt!126890))))

(declare-fun lt!126893 () Unit!7827)

(assert (=> b!253050 (= lt!126893 lt!126895)))

(declare-fun lt!126896 () ListLongMap!3791)

(assert (=> b!253050 (= lt!126896 (getCurrentListMapNoExtraKeys!564 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)))))

(declare-fun lt!126902 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126902 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126892 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126892 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126897 () Unit!7827)

(assert (=> b!253050 (= lt!126897 (addApplyDifferent!221 lt!126896 lt!126902 (zeroValue!4512 thiss!1504) lt!126892))))

(assert (=> b!253050 (= (apply!245 (+!667 lt!126896 (tuple2!4865 lt!126902 (zeroValue!4512 thiss!1504))) lt!126892) (apply!245 lt!126896 lt!126892))))

(declare-fun lt!126891 () Unit!7827)

(assert (=> b!253050 (= lt!126891 lt!126897)))

(declare-fun lt!126899 () ListLongMap!3791)

(assert (=> b!253050 (= lt!126899 (getCurrentListMapNoExtraKeys!564 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)))))

(declare-fun lt!126905 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126905 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126906 () (_ BitVec 64))

(assert (=> b!253050 (= lt!126906 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!253050 (= lt!126901 (addApplyDifferent!221 lt!126899 lt!126905 (minValue!4512 thiss!1504) lt!126906))))

(assert (=> b!253050 (= (apply!245 (+!667 lt!126899 (tuple2!4865 lt!126905 (minValue!4512 thiss!1504))) lt!126906) (apply!245 lt!126899 lt!126906))))

(declare-fun b!253051 () Bool)

(declare-fun get!3019 (ValueCell!2916 V!8339) V!8339)

(declare-fun dynLambda!583 (Int (_ BitVec 64)) V!8339)

(assert (=> b!253051 (= e!164091 (= (apply!245 lt!126904 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)) (get!3019 (select (arr!5859 (_values!4654 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!583 (defaultEntry!4671 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!253051 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6206 (_values!4654 thiss!1504))))))

(assert (=> b!253051 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun b!253052 () Bool)

(assert (=> b!253052 (= e!164086 (not call!23872))))

(declare-fun bm!23864 () Bool)

(assert (=> bm!23864 (= call!23868 (contains!1833 lt!126904 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!253053 () Bool)

(declare-fun e!164081 () Bool)

(assert (=> b!253053 (= e!164088 e!164081)))

(declare-fun res!123878 () Bool)

(assert (=> b!253053 (= res!123878 call!23868)))

(assert (=> b!253053 (=> (not res!123878) (not e!164081))))

(declare-fun b!253054 () Bool)

(declare-fun call!23869 () ListLongMap!3791)

(assert (=> b!253054 (= e!164090 call!23869)))

(declare-fun bm!23865 () Bool)

(declare-fun call!23870 () ListLongMap!3791)

(declare-fun call!23873 () ListLongMap!3791)

(assert (=> bm!23865 (= call!23870 call!23873)))

(declare-fun b!253055 () Bool)

(assert (=> b!253055 (= e!164083 (= (apply!245 lt!126904 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4512 thiss!1504)))))

(declare-fun b!253056 () Bool)

(assert (=> b!253056 (= e!164090 call!23870)))

(declare-fun bm!23866 () Bool)

(declare-fun call!23867 () ListLongMap!3791)

(assert (=> bm!23866 (= call!23867 (getCurrentListMapNoExtraKeys!564 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)))))

(declare-fun b!253057 () Bool)

(assert (=> b!253057 (= e!164080 e!164079)))

(declare-fun c!42651 () Bool)

(assert (=> b!253057 (= c!42651 (and (not (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!23867 () Bool)

(assert (=> bm!23867 (= call!23872 (contains!1833 lt!126904 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!253058 () Bool)

(declare-fun Unit!7837 () Unit!7827)

(assert (=> b!253058 (= e!164084 Unit!7837)))

(declare-fun bm!23868 () Bool)

(declare-fun call!23871 () ListLongMap!3791)

(assert (=> bm!23868 (= call!23873 (+!667 (ite c!42650 call!23867 (ite c!42651 call!23871 call!23869)) (ite (or c!42650 c!42651) (tuple2!4865 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4512 thiss!1504)) (tuple2!4865 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4512 thiss!1504)))))))

(declare-fun b!253059 () Bool)

(assert (=> b!253059 (= e!164080 (+!667 call!23873 (tuple2!4865 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4512 thiss!1504))))))

(declare-fun bm!23869 () Bool)

(assert (=> bm!23869 (= call!23869 call!23871)))

(declare-fun b!253060 () Bool)

(assert (=> b!253060 (= e!164079 call!23870)))

(declare-fun b!253061 () Bool)

(assert (=> b!253061 (= e!164081 (= (apply!245 lt!126904 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4512 thiss!1504)))))

(declare-fun b!253062 () Bool)

(declare-fun res!123884 () Bool)

(assert (=> b!253062 (=> (not res!123884) (not e!164085))))

(assert (=> b!253062 (= res!123884 e!164086)))

(declare-fun c!42649 () Bool)

(assert (=> b!253062 (= c!42649 (not (= (bvand (extraKeys!4408 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!23870 () Bool)

(assert (=> bm!23870 (= call!23871 call!23867)))

(assert (= (and d!61315 c!42650) b!253059))

(assert (= (and d!61315 (not c!42650)) b!253057))

(assert (= (and b!253057 c!42651) b!253060))

(assert (= (and b!253057 (not c!42651)) b!253044))

(assert (= (and b!253044 c!42648) b!253056))

(assert (= (and b!253044 (not c!42648)) b!253054))

(assert (= (or b!253056 b!253054) bm!23869))

(assert (= (or b!253060 bm!23869) bm!23870))

(assert (= (or b!253060 b!253056) bm!23865))

(assert (= (or b!253059 bm!23870) bm!23866))

(assert (= (or b!253059 bm!23865) bm!23868))

(assert (= (and d!61315 res!123883) b!253048))

(assert (= (and d!61315 c!42653) b!253050))

(assert (= (and d!61315 (not c!42653)) b!253058))

(assert (= (and d!61315 res!123879) b!253042))

(assert (= (and b!253042 res!123876) b!253043))

(assert (= (and b!253042 (not res!123880)) b!253045))

(assert (= (and b!253045 res!123877) b!253051))

(assert (= (and b!253042 res!123881) b!253062))

(assert (= (and b!253062 c!42649) b!253047))

(assert (= (and b!253062 (not c!42649)) b!253052))

(assert (= (and b!253047 res!123882) b!253055))

(assert (= (or b!253047 b!253052) bm!23867))

(assert (= (and b!253062 res!123884) b!253049))

(assert (= (and b!253049 c!42652) b!253053))

(assert (= (and b!253049 (not c!42652)) b!253046))

(assert (= (and b!253053 res!123878) b!253061))

(assert (= (or b!253053 b!253046) bm!23864))

(declare-fun b_lambda!8153 () Bool)

(assert (=> (not b_lambda!8153) (not b!253051)))

(declare-fun t!8822 () Bool)

(declare-fun tb!3011 () Bool)

(assert (=> (and b!252856 (= (defaultEntry!4671 thiss!1504) (defaultEntry!4671 thiss!1504)) t!8822) tb!3011))

(declare-fun result!5339 () Bool)

(assert (=> tb!3011 (= result!5339 tp_is_empty!6519)))

(assert (=> b!253051 t!8822))

(declare-fun b_and!13717 () Bool)

(assert (= b_and!13713 (and (=> t!8822 result!5339) b_and!13717)))

(assert (=> d!61315 m!268873))

(declare-fun m!268997 () Bool)

(assert (=> b!253059 m!268997))

(assert (=> b!253051 m!268973))

(declare-fun m!268999 () Bool)

(assert (=> b!253051 m!268999))

(declare-fun m!269001 () Bool)

(assert (=> b!253051 m!269001))

(declare-fun m!269003 () Bool)

(assert (=> b!253051 m!269003))

(assert (=> b!253051 m!269003))

(assert (=> b!253051 m!269001))

(declare-fun m!269005 () Bool)

(assert (=> b!253051 m!269005))

(assert (=> b!253051 m!268973))

(assert (=> b!253048 m!268973))

(assert (=> b!253048 m!268973))

(assert (=> b!253048 m!268975))

(declare-fun m!269007 () Bool)

(assert (=> b!253061 m!269007))

(declare-fun m!269009 () Bool)

(assert (=> bm!23867 m!269009))

(assert (=> b!253045 m!268973))

(assert (=> b!253045 m!268973))

(declare-fun m!269011 () Bool)

(assert (=> b!253045 m!269011))

(declare-fun m!269013 () Bool)

(assert (=> bm!23864 m!269013))

(declare-fun m!269015 () Bool)

(assert (=> b!253050 m!269015))

(declare-fun m!269017 () Bool)

(assert (=> b!253050 m!269017))

(assert (=> b!253050 m!268973))

(declare-fun m!269019 () Bool)

(assert (=> b!253050 m!269019))

(declare-fun m!269021 () Bool)

(assert (=> b!253050 m!269021))

(declare-fun m!269023 () Bool)

(assert (=> b!253050 m!269023))

(declare-fun m!269025 () Bool)

(assert (=> b!253050 m!269025))

(declare-fun m!269027 () Bool)

(assert (=> b!253050 m!269027))

(declare-fun m!269029 () Bool)

(assert (=> b!253050 m!269029))

(declare-fun m!269031 () Bool)

(assert (=> b!253050 m!269031))

(declare-fun m!269033 () Bool)

(assert (=> b!253050 m!269033))

(declare-fun m!269035 () Bool)

(assert (=> b!253050 m!269035))

(declare-fun m!269037 () Bool)

(assert (=> b!253050 m!269037))

(assert (=> b!253050 m!269035))

(assert (=> b!253050 m!269029))

(assert (=> b!253050 m!269017))

(declare-fun m!269039 () Bool)

(assert (=> b!253050 m!269039))

(declare-fun m!269041 () Bool)

(assert (=> b!253050 m!269041))

(assert (=> b!253050 m!269041))

(declare-fun m!269043 () Bool)

(assert (=> b!253050 m!269043))

(declare-fun m!269045 () Bool)

(assert (=> b!253050 m!269045))

(assert (=> bm!23866 m!269027))

(assert (=> b!253043 m!268973))

(assert (=> b!253043 m!268973))

(assert (=> b!253043 m!268975))

(declare-fun m!269047 () Bool)

(assert (=> b!253055 m!269047))

(declare-fun m!269049 () Bool)

(assert (=> bm!23868 m!269049))

(assert (=> b!252864 d!61315))

(declare-fun b!253077 () Bool)

(declare-fun e!164100 () SeekEntryResult!1146)

(declare-fun lt!126916 () SeekEntryResult!1146)

(assert (=> b!253077 (= e!164100 (MissingZero!1146 (index!6756 lt!126916)))))

(declare-fun b!253078 () Bool)

(declare-fun e!164099 () SeekEntryResult!1146)

(assert (=> b!253078 (= e!164099 (Found!1146 (index!6756 lt!126916)))))

(declare-fun b!253079 () Bool)

(declare-fun e!164098 () SeekEntryResult!1146)

(assert (=> b!253079 (= e!164098 e!164099)))

(declare-fun lt!126915 () (_ BitVec 64))

(assert (=> b!253079 (= lt!126915 (select (arr!5860 (_keys!6821 thiss!1504)) (index!6756 lt!126916)))))

(declare-fun c!42660 () Bool)

(assert (=> b!253079 (= c!42660 (= lt!126915 key!932))))

(declare-fun b!253080 () Bool)

(declare-fun c!42662 () Bool)

(assert (=> b!253080 (= c!42662 (= lt!126915 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253080 (= e!164099 e!164100)))

(declare-fun d!61317 () Bool)

(declare-fun lt!126914 () SeekEntryResult!1146)

(assert (=> d!61317 (and (or ((_ is Undefined!1146) lt!126914) (not ((_ is Found!1146) lt!126914)) (and (bvsge (index!6755 lt!126914) #b00000000000000000000000000000000) (bvslt (index!6755 lt!126914) (size!6207 (_keys!6821 thiss!1504))))) (or ((_ is Undefined!1146) lt!126914) ((_ is Found!1146) lt!126914) (not ((_ is MissingZero!1146) lt!126914)) (and (bvsge (index!6754 lt!126914) #b00000000000000000000000000000000) (bvslt (index!6754 lt!126914) (size!6207 (_keys!6821 thiss!1504))))) (or ((_ is Undefined!1146) lt!126914) ((_ is Found!1146) lt!126914) ((_ is MissingZero!1146) lt!126914) (not ((_ is MissingVacant!1146) lt!126914)) (and (bvsge (index!6757 lt!126914) #b00000000000000000000000000000000) (bvslt (index!6757 lt!126914) (size!6207 (_keys!6821 thiss!1504))))) (or ((_ is Undefined!1146) lt!126914) (ite ((_ is Found!1146) lt!126914) (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6755 lt!126914)) key!932) (ite ((_ is MissingZero!1146) lt!126914) (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6754 lt!126914)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1146) lt!126914) (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6757 lt!126914)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61317 (= lt!126914 e!164098)))

(declare-fun c!42661 () Bool)

(assert (=> d!61317 (= c!42661 (and ((_ is Intermediate!1146) lt!126916) (undefined!1958 lt!126916)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12366 (_ BitVec 32)) SeekEntryResult!1146)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61317 (= lt!126916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10897 thiss!1504)) key!932 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)))))

(assert (=> d!61317 (validMask!0 (mask!10897 thiss!1504))))

(assert (=> d!61317 (= (seekEntryOrOpen!0 key!932 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)) lt!126914)))

(declare-fun b!253081 () Bool)

(assert (=> b!253081 (= e!164098 Undefined!1146)))

(declare-fun b!253082 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12366 (_ BitVec 32)) SeekEntryResult!1146)

(assert (=> b!253082 (= e!164100 (seekKeyOrZeroReturnVacant!0 (x!24802 lt!126916) (index!6756 lt!126916) (index!6756 lt!126916) key!932 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)))))

(assert (= (and d!61317 c!42661) b!253081))

(assert (= (and d!61317 (not c!42661)) b!253079))

(assert (= (and b!253079 c!42660) b!253078))

(assert (= (and b!253079 (not c!42660)) b!253080))

(assert (= (and b!253080 c!42662) b!253077))

(assert (= (and b!253080 (not c!42662)) b!253082))

(declare-fun m!269051 () Bool)

(assert (=> b!253079 m!269051))

(declare-fun m!269053 () Bool)

(assert (=> d!61317 m!269053))

(declare-fun m!269055 () Bool)

(assert (=> d!61317 m!269055))

(declare-fun m!269057 () Bool)

(assert (=> d!61317 m!269057))

(declare-fun m!269059 () Bool)

(assert (=> d!61317 m!269059))

(assert (=> d!61317 m!268873))

(assert (=> d!61317 m!269053))

(declare-fun m!269061 () Bool)

(assert (=> d!61317 m!269061))

(declare-fun m!269063 () Bool)

(assert (=> b!253082 m!269063))

(assert (=> b!252855 d!61317))

(declare-fun bm!23873 () Bool)

(declare-fun call!23876 () Bool)

(assert (=> bm!23873 (= call!23876 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6821 thiss!1504) (mask!10897 thiss!1504)))))

(declare-fun b!253092 () Bool)

(declare-fun e!164109 () Bool)

(declare-fun e!164108 () Bool)

(assert (=> b!253092 (= e!164109 e!164108)))

(declare-fun lt!126923 () (_ BitVec 64))

(assert (=> b!253092 (= lt!126923 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126925 () Unit!7827)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12366 (_ BitVec 64) (_ BitVec 32)) Unit!7827)

(assert (=> b!253092 (= lt!126925 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6821 thiss!1504) lt!126923 #b00000000000000000000000000000000))))

(assert (=> b!253092 (arrayContainsKey!0 (_keys!6821 thiss!1504) lt!126923 #b00000000000000000000000000000000)))

(declare-fun lt!126924 () Unit!7827)

(assert (=> b!253092 (= lt!126924 lt!126925)))

(declare-fun res!123889 () Bool)

(assert (=> b!253092 (= res!123889 (= (seekEntryOrOpen!0 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000) (_keys!6821 thiss!1504) (mask!10897 thiss!1504)) (Found!1146 #b00000000000000000000000000000000)))))

(assert (=> b!253092 (=> (not res!123889) (not e!164108))))

(declare-fun b!253093 () Bool)

(assert (=> b!253093 (= e!164109 call!23876)))

(declare-fun b!253094 () Bool)

(assert (=> b!253094 (= e!164108 call!23876)))

(declare-fun d!61319 () Bool)

(declare-fun res!123890 () Bool)

(declare-fun e!164107 () Bool)

(assert (=> d!61319 (=> res!123890 e!164107)))

(assert (=> d!61319 (= res!123890 (bvsge #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(assert (=> d!61319 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)) e!164107)))

(declare-fun b!253091 () Bool)

(assert (=> b!253091 (= e!164107 e!164109)))

(declare-fun c!42665 () Bool)

(assert (=> b!253091 (= c!42665 (validKeyInArray!0 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61319 (not res!123890)) b!253091))

(assert (= (and b!253091 c!42665) b!253092))

(assert (= (and b!253091 (not c!42665)) b!253093))

(assert (= (and b!253092 res!123889) b!253094))

(assert (= (or b!253094 b!253093) bm!23873))

(declare-fun m!269065 () Bool)

(assert (=> bm!23873 m!269065))

(assert (=> b!253092 m!268973))

(declare-fun m!269067 () Bool)

(assert (=> b!253092 m!269067))

(declare-fun m!269069 () Bool)

(assert (=> b!253092 m!269069))

(assert (=> b!253092 m!268973))

(declare-fun m!269071 () Bool)

(assert (=> b!253092 m!269071))

(assert (=> b!253091 m!268973))

(assert (=> b!253091 m!268973))

(assert (=> b!253091 m!268975))

(assert (=> b!252851 d!61319))

(declare-fun d!61321 () Bool)

(assert (=> d!61321 (contains!1833 (getCurrentListMap!1434 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)) key!932)))

(declare-fun lt!126928 () Unit!7827)

(declare-fun choose!1215 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 64) (_ BitVec 32) Int) Unit!7827)

(assert (=> d!61321 (= lt!126928 (choose!1215 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)))))

(assert (=> d!61321 (validMask!0 (mask!10897 thiss!1504))))

(assert (=> d!61321 (= (lemmaArrayContainsKeyThenInListMap!213 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4671 thiss!1504)) lt!126928)))

(declare-fun bs!9036 () Bool)

(assert (= bs!9036 d!61321))

(assert (=> bs!9036 m!268911))

(assert (=> bs!9036 m!268911))

(assert (=> bs!9036 m!268913))

(declare-fun m!269073 () Bool)

(assert (=> bs!9036 m!269073))

(assert (=> bs!9036 m!268873))

(assert (=> b!252870 d!61321))

(declare-fun d!61323 () Bool)

(declare-fun e!164112 () Bool)

(assert (=> d!61323 e!164112))

(declare-fun res!123895 () Bool)

(assert (=> d!61323 (=> (not res!123895) (not e!164112))))

(declare-fun lt!126934 () SeekEntryResult!1146)

(assert (=> d!61323 (= res!123895 ((_ is Found!1146) lt!126934))))

(assert (=> d!61323 (= lt!126934 (seekEntryOrOpen!0 key!932 (_keys!6821 thiss!1504) (mask!10897 thiss!1504)))))

(declare-fun lt!126933 () Unit!7827)

(declare-fun choose!1216 (array!12366 array!12364 (_ BitVec 32) (_ BitVec 32) V!8339 V!8339 (_ BitVec 64) Int) Unit!7827)

(assert (=> d!61323 (= lt!126933 (choose!1216 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 (defaultEntry!4671 thiss!1504)))))

(assert (=> d!61323 (validMask!0 (mask!10897 thiss!1504))))

(assert (=> d!61323 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!409 (_keys!6821 thiss!1504) (_values!4654 thiss!1504) (mask!10897 thiss!1504) (extraKeys!4408 thiss!1504) (zeroValue!4512 thiss!1504) (minValue!4512 thiss!1504) key!932 (defaultEntry!4671 thiss!1504)) lt!126933)))

(declare-fun b!253099 () Bool)

(declare-fun res!123896 () Bool)

(assert (=> b!253099 (=> (not res!123896) (not e!164112))))

(assert (=> b!253099 (= res!123896 (inRange!0 (index!6755 lt!126934) (mask!10897 thiss!1504)))))

(declare-fun b!253100 () Bool)

(assert (=> b!253100 (= e!164112 (= (select (arr!5860 (_keys!6821 thiss!1504)) (index!6755 lt!126934)) key!932))))

(assert (=> b!253100 (and (bvsge (index!6755 lt!126934) #b00000000000000000000000000000000) (bvslt (index!6755 lt!126934) (size!6207 (_keys!6821 thiss!1504))))))

(assert (= (and d!61323 res!123895) b!253099))

(assert (= (and b!253099 res!123896) b!253100))

(assert (=> d!61323 m!268915))

(declare-fun m!269075 () Bool)

(assert (=> d!61323 m!269075))

(assert (=> d!61323 m!268873))

(declare-fun m!269077 () Bool)

(assert (=> b!253099 m!269077))

(declare-fun m!269079 () Bool)

(assert (=> b!253100 m!269079))

(assert (=> b!252848 d!61323))

(declare-fun d!61325 () Bool)

(declare-fun e!164118 () Bool)

(assert (=> d!61325 e!164118))

(declare-fun res!123908 () Bool)

(assert (=> d!61325 (=> (not res!123908) (not e!164118))))

(assert (=> d!61325 (= res!123908 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6207 (_keys!6821 thiss!1504)))))))

(declare-fun lt!126937 () Unit!7827)

(declare-fun choose!1 (array!12366 (_ BitVec 32) (_ BitVec 64)) Unit!7827)

(assert (=> d!61325 (= lt!126937 (choose!1 (_keys!6821 thiss!1504) index!297 key!932))))

(declare-fun e!164117 () Bool)

(assert (=> d!61325 e!164117))

(declare-fun res!123907 () Bool)

(assert (=> d!61325 (=> (not res!123907) (not e!164117))))

(assert (=> d!61325 (= res!123907 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6207 (_keys!6821 thiss!1504)))))))

(assert (=> d!61325 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6821 thiss!1504) index!297 key!932) lt!126937)))

(declare-fun b!253109 () Bool)

(declare-fun res!123906 () Bool)

(assert (=> b!253109 (=> (not res!123906) (not e!164117))))

(assert (=> b!253109 (= res!123906 (not (validKeyInArray!0 (select (arr!5860 (_keys!6821 thiss!1504)) index!297))))))

(declare-fun b!253110 () Bool)

(declare-fun res!123905 () Bool)

(assert (=> b!253110 (=> (not res!123905) (not e!164117))))

(assert (=> b!253110 (= res!123905 (validKeyInArray!0 key!932))))

(declare-fun b!253111 () Bool)

(assert (=> b!253111 (= e!164117 (bvslt (size!6207 (_keys!6821 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!253112 () Bool)

(assert (=> b!253112 (= e!164118 (= (arrayCountValidKeys!0 (array!12367 (store (arr!5860 (_keys!6821 thiss!1504)) index!297 key!932) (size!6207 (_keys!6821 thiss!1504))) #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6821 thiss!1504) #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) #b00000000000000000000000000000001)))))

(assert (= (and d!61325 res!123907) b!253109))

(assert (= (and b!253109 res!123906) b!253110))

(assert (= (and b!253110 res!123905) b!253111))

(assert (= (and d!61325 res!123908) b!253112))

(declare-fun m!269081 () Bool)

(assert (=> d!61325 m!269081))

(declare-fun m!269083 () Bool)

(assert (=> b!253109 m!269083))

(assert (=> b!253109 m!269083))

(declare-fun m!269085 () Bool)

(assert (=> b!253109 m!269085))

(declare-fun m!269087 () Bool)

(assert (=> b!253110 m!269087))

(assert (=> b!253112 m!268885))

(declare-fun m!269089 () Bool)

(assert (=> b!253112 m!269089))

(assert (=> b!253112 m!268887))

(assert (=> b!252850 d!61325))

(declare-fun d!61327 () Bool)

(declare-fun lt!126940 () (_ BitVec 32))

(assert (=> d!61327 (and (bvsge lt!126940 #b00000000000000000000000000000000) (bvsle lt!126940 (bvsub (size!6207 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!164123 () (_ BitVec 32))

(assert (=> d!61327 (= lt!126940 e!164123)))

(declare-fun c!42671 () Bool)

(assert (=> d!61327 (= c!42671 (bvsge #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(assert (=> d!61327 (and (bvsle #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6207 (_keys!6821 thiss!1504)) (size!6207 (_keys!6821 thiss!1504))))))

(assert (=> d!61327 (= (arrayCountValidKeys!0 (_keys!6821 thiss!1504) #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) lt!126940)))

(declare-fun bm!23876 () Bool)

(declare-fun call!23879 () (_ BitVec 32))

(assert (=> bm!23876 (= call!23879 (arrayCountValidKeys!0 (_keys!6821 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun b!253121 () Bool)

(assert (=> b!253121 (= e!164123 #b00000000000000000000000000000000)))

(declare-fun b!253122 () Bool)

(declare-fun e!164124 () (_ BitVec 32))

(assert (=> b!253122 (= e!164124 (bvadd #b00000000000000000000000000000001 call!23879))))

(declare-fun b!253123 () Bool)

(assert (=> b!253123 (= e!164124 call!23879)))

(declare-fun b!253124 () Bool)

(assert (=> b!253124 (= e!164123 e!164124)))

(declare-fun c!42670 () Bool)

(assert (=> b!253124 (= c!42670 (validKeyInArray!0 (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61327 c!42671) b!253121))

(assert (= (and d!61327 (not c!42671)) b!253124))

(assert (= (and b!253124 c!42670) b!253122))

(assert (= (and b!253124 (not c!42670)) b!253123))

(assert (= (or b!253122 b!253123) bm!23876))

(declare-fun m!269091 () Bool)

(assert (=> bm!23876 m!269091))

(assert (=> b!253124 m!268973))

(assert (=> b!253124 m!268973))

(assert (=> b!253124 m!268975))

(assert (=> b!252850 d!61327))

(declare-fun bm!23877 () Bool)

(declare-fun call!23880 () Bool)

(assert (=> bm!23877 (= call!23880 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!126789 (mask!10897 thiss!1504)))))

(declare-fun b!253126 () Bool)

(declare-fun e!164127 () Bool)

(declare-fun e!164126 () Bool)

(assert (=> b!253126 (= e!164127 e!164126)))

(declare-fun lt!126941 () (_ BitVec 64))

(assert (=> b!253126 (= lt!126941 (select (arr!5860 lt!126789) #b00000000000000000000000000000000))))

(declare-fun lt!126943 () Unit!7827)

(assert (=> b!253126 (= lt!126943 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!126789 lt!126941 #b00000000000000000000000000000000))))

(assert (=> b!253126 (arrayContainsKey!0 lt!126789 lt!126941 #b00000000000000000000000000000000)))

(declare-fun lt!126942 () Unit!7827)

(assert (=> b!253126 (= lt!126942 lt!126943)))

(declare-fun res!123909 () Bool)

(assert (=> b!253126 (= res!123909 (= (seekEntryOrOpen!0 (select (arr!5860 lt!126789) #b00000000000000000000000000000000) lt!126789 (mask!10897 thiss!1504)) (Found!1146 #b00000000000000000000000000000000)))))

(assert (=> b!253126 (=> (not res!123909) (not e!164126))))

(declare-fun b!253127 () Bool)

(assert (=> b!253127 (= e!164127 call!23880)))

(declare-fun b!253128 () Bool)

(assert (=> b!253128 (= e!164126 call!23880)))

(declare-fun d!61329 () Bool)

(declare-fun res!123910 () Bool)

(declare-fun e!164125 () Bool)

(assert (=> d!61329 (=> res!123910 e!164125)))

(assert (=> d!61329 (= res!123910 (bvsge #b00000000000000000000000000000000 (size!6207 lt!126789)))))

(assert (=> d!61329 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126789 (mask!10897 thiss!1504)) e!164125)))

(declare-fun b!253125 () Bool)

(assert (=> b!253125 (= e!164125 e!164127)))

(declare-fun c!42672 () Bool)

(assert (=> b!253125 (= c!42672 (validKeyInArray!0 (select (arr!5860 lt!126789) #b00000000000000000000000000000000)))))

(assert (= (and d!61329 (not res!123910)) b!253125))

(assert (= (and b!253125 c!42672) b!253126))

(assert (= (and b!253125 (not c!42672)) b!253127))

(assert (= (and b!253126 res!123909) b!253128))

(assert (= (or b!253128 b!253127) bm!23877))

(declare-fun m!269093 () Bool)

(assert (=> bm!23877 m!269093))

(declare-fun m!269095 () Bool)

(assert (=> b!253126 m!269095))

(declare-fun m!269097 () Bool)

(assert (=> b!253126 m!269097))

(declare-fun m!269099 () Bool)

(assert (=> b!253126 m!269099))

(assert (=> b!253126 m!269095))

(declare-fun m!269101 () Bool)

(assert (=> b!253126 m!269101))

(assert (=> b!253125 m!269095))

(assert (=> b!253125 m!269095))

(declare-fun m!269103 () Bool)

(assert (=> b!253125 m!269103))

(assert (=> b!252850 d!61329))

(declare-fun d!61331 () Bool)

(declare-fun e!164130 () Bool)

(assert (=> d!61331 e!164130))

(declare-fun res!123913 () Bool)

(assert (=> d!61331 (=> (not res!123913) (not e!164130))))

(assert (=> d!61331 (= res!123913 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6207 (_keys!6821 thiss!1504)))))))

(declare-fun lt!126946 () Unit!7827)

(declare-fun choose!41 (array!12366 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3768) Unit!7827)

(assert (=> d!61331 (= lt!126946 (choose!41 (_keys!6821 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3765))))

(assert (=> d!61331 (bvslt (size!6207 (_keys!6821 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61331 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6821 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3765) lt!126946)))

(declare-fun b!253131 () Bool)

(assert (=> b!253131 (= e!164130 (arrayNoDuplicates!0 (array!12367 (store (arr!5860 (_keys!6821 thiss!1504)) index!297 key!932) (size!6207 (_keys!6821 thiss!1504))) #b00000000000000000000000000000000 Nil!3765))))

(assert (= (and d!61331 res!123913) b!253131))

(declare-fun m!269105 () Bool)

(assert (=> d!61331 m!269105))

(assert (=> b!253131 m!268885))

(declare-fun m!269107 () Bool)

(assert (=> b!253131 m!269107))

(assert (=> b!252850 d!61331))

(declare-fun d!61333 () Bool)

(declare-fun res!123918 () Bool)

(declare-fun e!164135 () Bool)

(assert (=> d!61333 (=> res!123918 e!164135)))

(assert (=> d!61333 (= res!123918 (= (select (arr!5860 (_keys!6821 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61333 (= (arrayContainsKey!0 (_keys!6821 thiss!1504) key!932 #b00000000000000000000000000000000) e!164135)))

(declare-fun b!253136 () Bool)

(declare-fun e!164136 () Bool)

(assert (=> b!253136 (= e!164135 e!164136)))

(declare-fun res!123919 () Bool)

(assert (=> b!253136 (=> (not res!123919) (not e!164136))))

(assert (=> b!253136 (= res!123919 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun b!253137 () Bool)

(assert (=> b!253137 (= e!164136 (arrayContainsKey!0 (_keys!6821 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61333 (not res!123918)) b!253136))

(assert (= (and b!253136 res!123919) b!253137))

(assert (=> d!61333 m!268973))

(declare-fun m!269109 () Bool)

(assert (=> b!253137 m!269109))

(assert (=> b!252850 d!61333))

(declare-fun d!61335 () Bool)

(declare-fun e!164139 () Bool)

(assert (=> d!61335 e!164139))

(declare-fun res!123922 () Bool)

(assert (=> d!61335 (=> (not res!123922) (not e!164139))))

(assert (=> d!61335 (= res!123922 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6207 (_keys!6821 thiss!1504)))))))

(declare-fun lt!126949 () Unit!7827)

(declare-fun choose!102 ((_ BitVec 64) array!12366 (_ BitVec 32) (_ BitVec 32)) Unit!7827)

(assert (=> d!61335 (= lt!126949 (choose!102 key!932 (_keys!6821 thiss!1504) index!297 (mask!10897 thiss!1504)))))

(assert (=> d!61335 (validMask!0 (mask!10897 thiss!1504))))

(assert (=> d!61335 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6821 thiss!1504) index!297 (mask!10897 thiss!1504)) lt!126949)))

(declare-fun b!253140 () Bool)

(assert (=> b!253140 (= e!164139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12367 (store (arr!5860 (_keys!6821 thiss!1504)) index!297 key!932) (size!6207 (_keys!6821 thiss!1504))) (mask!10897 thiss!1504)))))

(assert (= (and d!61335 res!123922) b!253140))

(declare-fun m!269111 () Bool)

(assert (=> d!61335 m!269111))

(assert (=> d!61335 m!268873))

(assert (=> b!253140 m!268885))

(declare-fun m!269113 () Bool)

(assert (=> b!253140 m!269113))

(assert (=> b!252850 d!61335))

(declare-fun d!61337 () Bool)

(declare-fun lt!126950 () (_ BitVec 32))

(assert (=> d!61337 (and (bvsge lt!126950 #b00000000000000000000000000000000) (bvsle lt!126950 (bvsub (size!6207 lt!126789) #b00000000000000000000000000000000)))))

(declare-fun e!164140 () (_ BitVec 32))

(assert (=> d!61337 (= lt!126950 e!164140)))

(declare-fun c!42674 () Bool)

(assert (=> d!61337 (= c!42674 (bvsge #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))))))

(assert (=> d!61337 (and (bvsle #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6207 (_keys!6821 thiss!1504)) (size!6207 lt!126789)))))

(assert (=> d!61337 (= (arrayCountValidKeys!0 lt!126789 #b00000000000000000000000000000000 (size!6207 (_keys!6821 thiss!1504))) lt!126950)))

(declare-fun bm!23878 () Bool)

(declare-fun call!23881 () (_ BitVec 32))

(assert (=> bm!23878 (= call!23881 (arrayCountValidKeys!0 lt!126789 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6207 (_keys!6821 thiss!1504))))))

(declare-fun b!253141 () Bool)

(assert (=> b!253141 (= e!164140 #b00000000000000000000000000000000)))

(declare-fun b!253142 () Bool)

(declare-fun e!164141 () (_ BitVec 32))

(assert (=> b!253142 (= e!164141 (bvadd #b00000000000000000000000000000001 call!23881))))

(declare-fun b!253143 () Bool)

(assert (=> b!253143 (= e!164141 call!23881)))

(declare-fun b!253144 () Bool)

(assert (=> b!253144 (= e!164140 e!164141)))

(declare-fun c!42673 () Bool)

(assert (=> b!253144 (= c!42673 (validKeyInArray!0 (select (arr!5860 lt!126789) #b00000000000000000000000000000000)))))

(assert (= (and d!61337 c!42674) b!253141))

(assert (= (and d!61337 (not c!42674)) b!253144))

(assert (= (and b!253144 c!42673) b!253142))

(assert (= (and b!253144 (not c!42673)) b!253143))

(assert (= (or b!253142 b!253143) bm!23878))

(declare-fun m!269115 () Bool)

(assert (=> bm!23878 m!269115))

(assert (=> b!253144 m!269095))

(assert (=> b!253144 m!269095))

(assert (=> b!253144 m!269103))

(assert (=> b!252850 d!61337))

(declare-fun b!253145 () Bool)

(declare-fun e!164143 () Bool)

(declare-fun e!164142 () Bool)

(assert (=> b!253145 (= e!164143 e!164142)))

(declare-fun res!123924 () Bool)

(assert (=> b!253145 (=> (not res!123924) (not e!164142))))

(declare-fun e!164145 () Bool)

(assert (=> b!253145 (= res!123924 (not e!164145))))

(declare-fun res!123925 () Bool)

(assert (=> b!253145 (=> (not res!123925) (not e!164145))))

(assert (=> b!253145 (= res!123925 (validKeyInArray!0 (select (arr!5860 lt!126789) #b00000000000000000000000000000000)))))

(declare-fun d!61339 () Bool)

(declare-fun res!123923 () Bool)

(assert (=> d!61339 (=> res!123923 e!164143)))

(assert (=> d!61339 (= res!123923 (bvsge #b00000000000000000000000000000000 (size!6207 lt!126789)))))

(assert (=> d!61339 (= (arrayNoDuplicates!0 lt!126789 #b00000000000000000000000000000000 Nil!3765) e!164143)))

(declare-fun b!253146 () Bool)

(declare-fun e!164144 () Bool)

(declare-fun call!23882 () Bool)

(assert (=> b!253146 (= e!164144 call!23882)))

(declare-fun b!253147 () Bool)

(assert (=> b!253147 (= e!164145 (contains!1834 Nil!3765 (select (arr!5860 lt!126789) #b00000000000000000000000000000000)))))

(declare-fun b!253148 () Bool)

(assert (=> b!253148 (= e!164142 e!164144)))

(declare-fun c!42675 () Bool)

(assert (=> b!253148 (= c!42675 (validKeyInArray!0 (select (arr!5860 lt!126789) #b00000000000000000000000000000000)))))

(declare-fun b!253149 () Bool)

(assert (=> b!253149 (= e!164144 call!23882)))

(declare-fun bm!23879 () Bool)

(assert (=> bm!23879 (= call!23882 (arrayNoDuplicates!0 lt!126789 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42675 (Cons!3764 (select (arr!5860 lt!126789) #b00000000000000000000000000000000) Nil!3765) Nil!3765)))))

(assert (= (and d!61339 (not res!123923)) b!253145))

(assert (= (and b!253145 res!123925) b!253147))

(assert (= (and b!253145 res!123924) b!253148))

(assert (= (and b!253148 c!42675) b!253149))

(assert (= (and b!253148 (not c!42675)) b!253146))

(assert (= (or b!253149 b!253146) bm!23879))

(assert (=> b!253145 m!269095))

(assert (=> b!253145 m!269095))

(assert (=> b!253145 m!269103))

(assert (=> b!253147 m!269095))

(assert (=> b!253147 m!269095))

(declare-fun m!269117 () Bool)

(assert (=> b!253147 m!269117))

(assert (=> b!253148 m!269095))

(assert (=> b!253148 m!269095))

(assert (=> b!253148 m!269103))

(assert (=> bm!23879 m!269095))

(declare-fun m!269119 () Bool)

(assert (=> bm!23879 m!269119))

(assert (=> b!252850 d!61339))

(declare-fun d!61341 () Bool)

(assert (=> d!61341 (= (validMask!0 (mask!10897 thiss!1504)) (and (or (= (mask!10897 thiss!1504) #b00000000000000000000000000000111) (= (mask!10897 thiss!1504) #b00000000000000000000000000001111) (= (mask!10897 thiss!1504) #b00000000000000000000000000011111) (= (mask!10897 thiss!1504) #b00000000000000000000000000111111) (= (mask!10897 thiss!1504) #b00000000000000000000000001111111) (= (mask!10897 thiss!1504) #b00000000000000000000000011111111) (= (mask!10897 thiss!1504) #b00000000000000000000000111111111) (= (mask!10897 thiss!1504) #b00000000000000000000001111111111) (= (mask!10897 thiss!1504) #b00000000000000000000011111111111) (= (mask!10897 thiss!1504) #b00000000000000000000111111111111) (= (mask!10897 thiss!1504) #b00000000000000000001111111111111) (= (mask!10897 thiss!1504) #b00000000000000000011111111111111) (= (mask!10897 thiss!1504) #b00000000000000000111111111111111) (= (mask!10897 thiss!1504) #b00000000000000001111111111111111) (= (mask!10897 thiss!1504) #b00000000000000011111111111111111) (= (mask!10897 thiss!1504) #b00000000000000111111111111111111) (= (mask!10897 thiss!1504) #b00000000000001111111111111111111) (= (mask!10897 thiss!1504) #b00000000000011111111111111111111) (= (mask!10897 thiss!1504) #b00000000000111111111111111111111) (= (mask!10897 thiss!1504) #b00000000001111111111111111111111) (= (mask!10897 thiss!1504) #b00000000011111111111111111111111) (= (mask!10897 thiss!1504) #b00000000111111111111111111111111) (= (mask!10897 thiss!1504) #b00000001111111111111111111111111) (= (mask!10897 thiss!1504) #b00000011111111111111111111111111) (= (mask!10897 thiss!1504) #b00000111111111111111111111111111) (= (mask!10897 thiss!1504) #b00001111111111111111111111111111) (= (mask!10897 thiss!1504) #b00011111111111111111111111111111) (= (mask!10897 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10897 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!252850 d!61341))

(assert (=> bm!23834 d!61333))

(declare-fun mapNonEmpty!11094 () Bool)

(declare-fun mapRes!11094 () Bool)

(declare-fun tp!23262 () Bool)

(declare-fun e!164151 () Bool)

(assert (=> mapNonEmpty!11094 (= mapRes!11094 (and tp!23262 e!164151))))

(declare-fun mapKey!11094 () (_ BitVec 32))

(declare-fun mapValue!11094 () ValueCell!2916)

(declare-fun mapRest!11094 () (Array (_ BitVec 32) ValueCell!2916))

(assert (=> mapNonEmpty!11094 (= mapRest!11088 (store mapRest!11094 mapKey!11094 mapValue!11094))))

(declare-fun mapIsEmpty!11094 () Bool)

(assert (=> mapIsEmpty!11094 mapRes!11094))

(declare-fun b!253156 () Bool)

(assert (=> b!253156 (= e!164151 tp_is_empty!6519)))

(declare-fun b!253157 () Bool)

(declare-fun e!164150 () Bool)

(assert (=> b!253157 (= e!164150 tp_is_empty!6519)))

(declare-fun condMapEmpty!11094 () Bool)

(declare-fun mapDefault!11094 () ValueCell!2916)

(assert (=> mapNonEmpty!11088 (= condMapEmpty!11094 (= mapRest!11088 ((as const (Array (_ BitVec 32) ValueCell!2916)) mapDefault!11094)))))

(assert (=> mapNonEmpty!11088 (= tp!23253 (and e!164150 mapRes!11094))))

(assert (= (and mapNonEmpty!11088 condMapEmpty!11094) mapIsEmpty!11094))

(assert (= (and mapNonEmpty!11088 (not condMapEmpty!11094)) mapNonEmpty!11094))

(assert (= (and mapNonEmpty!11094 ((_ is ValueCellFull!2916) mapValue!11094)) b!253156))

(assert (= (and mapNonEmpty!11088 ((_ is ValueCellFull!2916) mapDefault!11094)) b!253157))

(declare-fun m!269121 () Bool)

(assert (=> mapNonEmpty!11094 m!269121))

(declare-fun b_lambda!8155 () Bool)

(assert (= b_lambda!8153 (or (and b!252856 b_free!6657) b_lambda!8155)))

(check-sat (not bm!23876) (not b!253059) (not d!61323) (not b!253144) (not b!252997) (not d!61325) (not b!253140) (not b!253125) (not b!253110) b_and!13717 (not bm!23873) (not b_next!6657) (not b!253051) (not mapNonEmpty!11094) (not bm!23843) (not b!253045) (not b!252951) (not d!61317) (not b!252965) (not b!253099) (not b!252949) (not d!61313) (not b!253109) (not d!61309) (not bm!23868) (not bm!23848) (not b!253055) (not b!253061) (not d!61305) (not b!253131) (not b!253043) (not b!253145) (not b!253091) (not b!252999) (not d!61331) (not bm!23849) (not b!253148) (not b!252950) (not d!61321) (not b!252964) (not b!252962) (not b!253124) tp_is_empty!6519 (not d!61335) (not b!253126) (not bm!23879) (not b!253147) (not bm!23867) (not b_lambda!8155) (not bm!23864) (not bm!23877) (not b!253092) (not b!253082) (not b!253112) (not bm!23878) (not b!253137) (not b!253048) (not d!61315) (not b!253050) (not bm!23866))
(check-sat b_and!13717 (not b_next!6657))

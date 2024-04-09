; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24292 () Bool)

(assert start!24292)

(declare-fun b!254188 () Bool)

(declare-fun b_free!6681 () Bool)

(declare-fun b_next!6681 () Bool)

(assert (=> b!254188 (= b_free!6681 (not b_next!6681))))

(declare-fun tp!23330 () Bool)

(declare-fun b_and!13741 () Bool)

(assert (=> b!254188 (= tp!23330 b_and!13741)))

(declare-fun b!254181 () Bool)

(declare-datatypes ((Unit!7870 0))(
  ( (Unit!7871) )
))
(declare-fun e!164772 () Unit!7870)

(declare-fun Unit!7872 () Unit!7870)

(assert (=> b!254181 (= e!164772 Unit!7872)))

(declare-fun lt!127414 () Unit!7870)

(declare-datatypes ((V!8371 0))(
  ( (V!8372 (val!3316 Int)) )
))
(declare-datatypes ((ValueCell!2928 0))(
  ( (ValueCellFull!2928 (v!5386 V!8371)) (EmptyCell!2928) )
))
(declare-datatypes ((array!12416 0))(
  ( (array!12417 (arr!5883 (Array (_ BitVec 32) ValueCell!2928)) (size!6230 (_ BitVec 32))) )
))
(declare-datatypes ((array!12418 0))(
  ( (array!12419 (arr!5884 (Array (_ BitVec 32) (_ BitVec 64))) (size!6231 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3756 0))(
  ( (LongMapFixedSize!3757 (defaultEntry!4691 Int) (mask!10935 (_ BitVec 32)) (extraKeys!4428 (_ BitVec 32)) (zeroValue!4532 V!8371) (minValue!4532 V!8371) (_size!1927 (_ BitVec 32)) (_keys!6845 array!12418) (_values!4674 array!12416) (_vacant!1927 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3756)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!416 (array!12418 array!12416 (_ BitVec 32) (_ BitVec 32) V!8371 V!8371 (_ BitVec 64) Int) Unit!7870)

(assert (=> b!254181 (= lt!127414 (lemmaInListMapThenSeekEntryOrOpenFindsIt!416 (_keys!6845 thiss!1504) (_values!4674 thiss!1504) (mask!10935 thiss!1504) (extraKeys!4428 thiss!1504) (zeroValue!4532 thiss!1504) (minValue!4532 thiss!1504) key!932 (defaultEntry!4691 thiss!1504)))))

(assert (=> b!254181 false))

(declare-fun b!254182 () Bool)

(declare-fun e!164777 () Bool)

(declare-fun call!23987 () Bool)

(assert (=> b!254182 (= e!164777 (not call!23987))))

(declare-fun mapIsEmpty!11130 () Bool)

(declare-fun mapRes!11130 () Bool)

(assert (=> mapIsEmpty!11130 mapRes!11130))

(declare-fun b!254183 () Bool)

(declare-fun e!164771 () Bool)

(assert (=> b!254183 (= e!164771 e!164777)))

(declare-fun res!124456 () Bool)

(declare-fun call!23986 () Bool)

(assert (=> b!254183 (= res!124456 call!23986)))

(assert (=> b!254183 (=> (not res!124456) (not e!164777))))

(declare-fun b!254184 () Bool)

(declare-fun res!124453 () Bool)

(declare-fun e!164774 () Bool)

(assert (=> b!254184 (=> res!124453 e!164774)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12418 (_ BitVec 32)) Bool)

(assert (=> b!254184 (= res!124453 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6845 thiss!1504) (mask!10935 thiss!1504))))))

(declare-fun mapNonEmpty!11130 () Bool)

(declare-fun tp!23331 () Bool)

(declare-fun e!164773 () Bool)

(assert (=> mapNonEmpty!11130 (= mapRes!11130 (and tp!23331 e!164773))))

(declare-fun mapKey!11130 () (_ BitVec 32))

(declare-fun mapRest!11130 () (Array (_ BitVec 32) ValueCell!2928))

(declare-fun mapValue!11130 () ValueCell!2928)

(assert (=> mapNonEmpty!11130 (= (arr!5883 (_values!4674 thiss!1504)) (store mapRest!11130 mapKey!11130 mapValue!11130))))

(declare-fun b!254185 () Bool)

(declare-fun e!164768 () Unit!7870)

(declare-fun Unit!7873 () Unit!7870)

(assert (=> b!254185 (= e!164768 Unit!7873)))

(declare-fun res!124457 () Bool)

(declare-fun e!164778 () Bool)

(assert (=> start!24292 (=> (not res!124457) (not e!164778))))

(declare-fun valid!1461 (LongMapFixedSize!3756) Bool)

(assert (=> start!24292 (= res!124457 (valid!1461 thiss!1504))))

(assert (=> start!24292 e!164778))

(declare-fun e!164770 () Bool)

(assert (=> start!24292 e!164770))

(assert (=> start!24292 true))

(declare-fun b!254186 () Bool)

(declare-fun e!164767 () Bool)

(declare-fun e!164776 () Bool)

(assert (=> b!254186 (= e!164767 e!164776)))

(declare-fun res!124455 () Bool)

(assert (=> b!254186 (=> (not res!124455) (not e!164776))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!254186 (= res!124455 (inRange!0 index!297 (mask!10935 thiss!1504)))))

(declare-fun lt!127412 () Unit!7870)

(assert (=> b!254186 (= lt!127412 e!164772)))

(declare-fun c!42857 () Bool)

(declare-datatypes ((tuple2!4878 0))(
  ( (tuple2!4879 (_1!2449 (_ BitVec 64)) (_2!2449 V!8371)) )
))
(declare-datatypes ((List!3783 0))(
  ( (Nil!3780) (Cons!3779 (h!4441 tuple2!4878) (t!8838 List!3783)) )
))
(declare-datatypes ((ListLongMap!3805 0))(
  ( (ListLongMap!3806 (toList!1918 List!3783)) )
))
(declare-fun contains!1842 (ListLongMap!3805 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1441 (array!12418 array!12416 (_ BitVec 32) (_ BitVec 32) V!8371 V!8371 (_ BitVec 32) Int) ListLongMap!3805)

(assert (=> b!254186 (= c!42857 (contains!1842 (getCurrentListMap!1441 (_keys!6845 thiss!1504) (_values!4674 thiss!1504) (mask!10935 thiss!1504) (extraKeys!4428 thiss!1504) (zeroValue!4532 thiss!1504) (minValue!4532 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4691 thiss!1504)) key!932))))

(declare-fun b!254187 () Bool)

(declare-fun e!164775 () Bool)

(assert (=> b!254187 (= e!164775 (not call!23987))))

(declare-fun e!164764 () Bool)

(declare-fun tp_is_empty!6543 () Bool)

(declare-fun array_inv!3881 (array!12418) Bool)

(declare-fun array_inv!3882 (array!12416) Bool)

(assert (=> b!254188 (= e!164770 (and tp!23330 tp_is_empty!6543 (array_inv!3881 (_keys!6845 thiss!1504)) (array_inv!3882 (_values!4674 thiss!1504)) e!164764))))

(declare-fun b!254189 () Bool)

(declare-fun res!124454 () Bool)

(assert (=> b!254189 (=> (not res!124454) (not e!164775))))

(assert (=> b!254189 (= res!124454 call!23986)))

(declare-fun e!164769 () Bool)

(assert (=> b!254189 (= e!164769 e!164775)))

(declare-fun bm!23983 () Bool)

(declare-fun arrayContainsKey!0 (array!12418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23983 (= call!23987 (arrayContainsKey!0 (_keys!6845 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254190 () Bool)

(assert (=> b!254190 (= e!164778 e!164767)))

(declare-fun res!124459 () Bool)

(assert (=> b!254190 (=> (not res!124459) (not e!164767))))

(declare-datatypes ((SeekEntryResult!1157 0))(
  ( (MissingZero!1157 (index!6798 (_ BitVec 32))) (Found!1157 (index!6799 (_ BitVec 32))) (Intermediate!1157 (undefined!1969 Bool) (index!6800 (_ BitVec 32)) (x!24865 (_ BitVec 32))) (Undefined!1157) (MissingVacant!1157 (index!6801 (_ BitVec 32))) )
))
(declare-fun lt!127419 () SeekEntryResult!1157)

(assert (=> b!254190 (= res!124459 (or (= lt!127419 (MissingZero!1157 index!297)) (= lt!127419 (MissingVacant!1157 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12418 (_ BitVec 32)) SeekEntryResult!1157)

(assert (=> b!254190 (= lt!127419 (seekEntryOrOpen!0 key!932 (_keys!6845 thiss!1504) (mask!10935 thiss!1504)))))

(declare-fun b!254191 () Bool)

(declare-fun e!164766 () Bool)

(assert (=> b!254191 (= e!164764 (and e!164766 mapRes!11130))))

(declare-fun condMapEmpty!11130 () Bool)

(declare-fun mapDefault!11130 () ValueCell!2928)

(assert (=> b!254191 (= condMapEmpty!11130 (= (arr!5883 (_values!4674 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2928)) mapDefault!11130)))))

(declare-fun b!254192 () Bool)

(assert (=> b!254192 (= e!164766 tp_is_empty!6543)))

(declare-fun b!254193 () Bool)

(get-info :version)

(assert (=> b!254193 (= e!164771 ((_ is Undefined!1157) lt!127419))))

(declare-fun b!254194 () Bool)

(declare-fun lt!127422 () Unit!7870)

(assert (=> b!254194 (= e!164772 lt!127422)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!416 (array!12418 array!12416 (_ BitVec 32) (_ BitVec 32) V!8371 V!8371 (_ BitVec 64) Int) Unit!7870)

(assert (=> b!254194 (= lt!127422 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!416 (_keys!6845 thiss!1504) (_values!4674 thiss!1504) (mask!10935 thiss!1504) (extraKeys!4428 thiss!1504) (zeroValue!4532 thiss!1504) (minValue!4532 thiss!1504) key!932 (defaultEntry!4691 thiss!1504)))))

(declare-fun c!42858 () Bool)

(assert (=> b!254194 (= c!42858 ((_ is MissingZero!1157) lt!127419))))

(assert (=> b!254194 e!164769))

(declare-fun b!254195 () Bool)

(declare-fun c!42856 () Bool)

(assert (=> b!254195 (= c!42856 ((_ is MissingVacant!1157) lt!127419))))

(assert (=> b!254195 (= e!164769 e!164771)))

(declare-fun b!254196 () Bool)

(assert (=> b!254196 (= e!164776 (not e!164774))))

(declare-fun res!124461 () Bool)

(assert (=> b!254196 (=> res!124461 e!164774)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!254196 (= res!124461 (not (validMask!0 (mask!10935 thiss!1504))))))

(declare-fun lt!127421 () array!12418)

(assert (=> b!254196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127421 (mask!10935 thiss!1504))))

(declare-fun lt!127420 () Unit!7870)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12418 (_ BitVec 32) (_ BitVec 32)) Unit!7870)

(assert (=> b!254196 (= lt!127420 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6845 thiss!1504) index!297 (mask!10935 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12418 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!254196 (= (arrayCountValidKeys!0 lt!127421 #b00000000000000000000000000000000 (size!6231 (_keys!6845 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6845 thiss!1504) #b00000000000000000000000000000000 (size!6231 (_keys!6845 thiss!1504)))))))

(declare-fun lt!127416 () Unit!7870)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12418 (_ BitVec 32) (_ BitVec 64)) Unit!7870)

(assert (=> b!254196 (= lt!127416 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6845 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3784 0))(
  ( (Nil!3781) (Cons!3780 (h!4442 (_ BitVec 64)) (t!8839 List!3784)) )
))
(declare-fun arrayNoDuplicates!0 (array!12418 (_ BitVec 32) List!3784) Bool)

(assert (=> b!254196 (arrayNoDuplicates!0 lt!127421 #b00000000000000000000000000000000 Nil!3781)))

(assert (=> b!254196 (= lt!127421 (array!12419 (store (arr!5884 (_keys!6845 thiss!1504)) index!297 key!932) (size!6231 (_keys!6845 thiss!1504))))))

(declare-fun lt!127418 () Unit!7870)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12418 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3784) Unit!7870)

(assert (=> b!254196 (= lt!127418 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6845 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3781))))

(declare-fun lt!127413 () Unit!7870)

(assert (=> b!254196 (= lt!127413 e!164768)))

(declare-fun c!42859 () Bool)

(assert (=> b!254196 (= c!42859 (arrayContainsKey!0 (_keys!6845 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254197 () Bool)

(declare-fun res!124451 () Bool)

(assert (=> b!254197 (=> res!124451 e!164774)))

(assert (=> b!254197 (= res!124451 (or (not (= (size!6230 (_values!4674 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10935 thiss!1504)))) (not (= (size!6231 (_keys!6845 thiss!1504)) (size!6230 (_values!4674 thiss!1504)))) (bvslt (mask!10935 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4428 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4428 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!254198 () Bool)

(declare-fun res!124458 () Bool)

(assert (=> b!254198 (=> (not res!124458) (not e!164778))))

(assert (=> b!254198 (= res!124458 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!254199 () Bool)

(declare-fun Unit!7874 () Unit!7870)

(assert (=> b!254199 (= e!164768 Unit!7874)))

(declare-fun lt!127417 () Unit!7870)

(declare-fun lemmaArrayContainsKeyThenInListMap!221 (array!12418 array!12416 (_ BitVec 32) (_ BitVec 32) V!8371 V!8371 (_ BitVec 64) (_ BitVec 32) Int) Unit!7870)

(assert (=> b!254199 (= lt!127417 (lemmaArrayContainsKeyThenInListMap!221 (_keys!6845 thiss!1504) (_values!4674 thiss!1504) (mask!10935 thiss!1504) (extraKeys!4428 thiss!1504) (zeroValue!4532 thiss!1504) (minValue!4532 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4691 thiss!1504)))))

(assert (=> b!254199 false))

(declare-fun bm!23984 () Bool)

(assert (=> bm!23984 (= call!23986 (inRange!0 (ite c!42858 (index!6798 lt!127419) (index!6801 lt!127419)) (mask!10935 thiss!1504)))))

(declare-fun b!254200 () Bool)

(assert (=> b!254200 (= e!164774 true)))

(declare-fun lt!127415 () Bool)

(assert (=> b!254200 (= lt!127415 (arrayNoDuplicates!0 (_keys!6845 thiss!1504) #b00000000000000000000000000000000 Nil!3781))))

(declare-fun b!254201 () Bool)

(assert (=> b!254201 (= e!164773 tp_is_empty!6543)))

(declare-fun b!254202 () Bool)

(declare-fun res!124460 () Bool)

(assert (=> b!254202 (= res!124460 (= (select (arr!5884 (_keys!6845 thiss!1504)) (index!6801 lt!127419)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254202 (=> (not res!124460) (not e!164777))))

(declare-fun b!254203 () Bool)

(declare-fun res!124452 () Bool)

(assert (=> b!254203 (=> (not res!124452) (not e!164775))))

(assert (=> b!254203 (= res!124452 (= (select (arr!5884 (_keys!6845 thiss!1504)) (index!6798 lt!127419)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!24292 res!124457) b!254198))

(assert (= (and b!254198 res!124458) b!254190))

(assert (= (and b!254190 res!124459) b!254186))

(assert (= (and b!254186 c!42857) b!254181))

(assert (= (and b!254186 (not c!42857)) b!254194))

(assert (= (and b!254194 c!42858) b!254189))

(assert (= (and b!254194 (not c!42858)) b!254195))

(assert (= (and b!254189 res!124454) b!254203))

(assert (= (and b!254203 res!124452) b!254187))

(assert (= (and b!254195 c!42856) b!254183))

(assert (= (and b!254195 (not c!42856)) b!254193))

(assert (= (and b!254183 res!124456) b!254202))

(assert (= (and b!254202 res!124460) b!254182))

(assert (= (or b!254189 b!254183) bm!23984))

(assert (= (or b!254187 b!254182) bm!23983))

(assert (= (and b!254186 res!124455) b!254196))

(assert (= (and b!254196 c!42859) b!254199))

(assert (= (and b!254196 (not c!42859)) b!254185))

(assert (= (and b!254196 (not res!124461)) b!254197))

(assert (= (and b!254197 (not res!124451)) b!254184))

(assert (= (and b!254184 (not res!124453)) b!254200))

(assert (= (and b!254191 condMapEmpty!11130) mapIsEmpty!11130))

(assert (= (and b!254191 (not condMapEmpty!11130)) mapNonEmpty!11130))

(assert (= (and mapNonEmpty!11130 ((_ is ValueCellFull!2928) mapValue!11130)) b!254201))

(assert (= (and b!254191 ((_ is ValueCellFull!2928) mapDefault!11130)) b!254192))

(assert (= b!254188 b!254191))

(assert (= start!24292 b!254188))

(declare-fun m!269823 () Bool)

(assert (=> b!254202 m!269823))

(declare-fun m!269825 () Bool)

(assert (=> b!254196 m!269825))

(declare-fun m!269827 () Bool)

(assert (=> b!254196 m!269827))

(declare-fun m!269829 () Bool)

(assert (=> b!254196 m!269829))

(declare-fun m!269831 () Bool)

(assert (=> b!254196 m!269831))

(declare-fun m!269833 () Bool)

(assert (=> b!254196 m!269833))

(declare-fun m!269835 () Bool)

(assert (=> b!254196 m!269835))

(declare-fun m!269837 () Bool)

(assert (=> b!254196 m!269837))

(declare-fun m!269839 () Bool)

(assert (=> b!254196 m!269839))

(declare-fun m!269841 () Bool)

(assert (=> b!254196 m!269841))

(declare-fun m!269843 () Bool)

(assert (=> b!254196 m!269843))

(declare-fun m!269845 () Bool)

(assert (=> bm!23984 m!269845))

(declare-fun m!269847 () Bool)

(assert (=> b!254194 m!269847))

(declare-fun m!269849 () Bool)

(assert (=> b!254203 m!269849))

(declare-fun m!269851 () Bool)

(assert (=> mapNonEmpty!11130 m!269851))

(declare-fun m!269853 () Bool)

(assert (=> b!254181 m!269853))

(declare-fun m!269855 () Bool)

(assert (=> b!254188 m!269855))

(declare-fun m!269857 () Bool)

(assert (=> b!254188 m!269857))

(declare-fun m!269859 () Bool)

(assert (=> b!254200 m!269859))

(declare-fun m!269861 () Bool)

(assert (=> start!24292 m!269861))

(assert (=> bm!23983 m!269827))

(declare-fun m!269863 () Bool)

(assert (=> b!254199 m!269863))

(declare-fun m!269865 () Bool)

(assert (=> b!254190 m!269865))

(declare-fun m!269867 () Bool)

(assert (=> b!254184 m!269867))

(declare-fun m!269869 () Bool)

(assert (=> b!254186 m!269869))

(declare-fun m!269871 () Bool)

(assert (=> b!254186 m!269871))

(assert (=> b!254186 m!269871))

(declare-fun m!269873 () Bool)

(assert (=> b!254186 m!269873))

(check-sat (not b!254181) (not b!254194) (not b!254196) (not b!254186) (not bm!23984) (not b!254184) tp_is_empty!6543 (not b!254188) (not bm!23983) (not mapNonEmpty!11130) (not b!254199) (not b!254200) b_and!13741 (not b_next!6681) (not start!24292) (not b!254190))
(check-sat b_and!13741 (not b_next!6681))
